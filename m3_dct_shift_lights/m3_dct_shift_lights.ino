#include <avr/sleep.h>

const int kNumLeds = 8;
const int kIlluminationTimeMs = 200;

const int kShiftClockPin = 3;
const int kShiftRegClockPin = 6;
const int kShiftSerialInPin = 5;
const int kShiftClearPin = A3;
const int kShiftOutputEnablePin = A2;

const int kActivationRpm = 4000;
const int kMaxRpm = 6500;

struct Tach {
  volatile unsigned long interval;
  volatile unsigned long lastPulseTime;
  volatile int timeoutCounter;
  long currentRpm;
  int timeoutValue;
  int rpmPerPulse;
  int rpmPin;
};
struct Tach gTach;

struct Debug {
  bool enabled;
  int rpmDirection;
  int rpmSlope;
  int lastDebugRpm;
};
struct Debug gDebug;

struct Serial {
  bool enabled;
  uint64_t numCycles;
};
struct Serial gSerial;

void setupDebugMode(struct Debug& d) {
  const bool kDebug = false;
  const int kDebugRpmSlope = 200;

  d.enabled = kDebug;
  d.rpmDirection = 1;
  d.rpmSlope = kDebugRpmSlope;
  d.lastDebugRpm = kActivationRpm - d.rpmSlope;
}

void setupSerial(struct Serial& s) {
  const bool kEnableSerial = false;
  if (!kEnableSerial) {
    return;
  }

  s.enabled = kEnableSerial;
  s.numCycles = 0;

  Serial.begin(9600);
}

void printRpm(const struct Serial s, const int rpm) {
  if (!s.enabled) {
    return;
  }
  if (s.numCycles % 5 == 0) {
    Serial.print("Current RPM: ");
    Serial.print(rpm);
    Serial.println();
  }
}

void printLights(const struct Serial s, const int numLights) {
  if (!s.enabled) {
    return;
  }
  if (s.numCycles % 5 == 0) {
    Serial.print("LEDs to light: ");
    Serial.print(numLights);
    Serial.println();
  }
}

void updateCycles(struct Serial& s) {
  if (!s.enabled) {
    return;
  }
  s.numCycles++;
}

void enableLightOutput(bool enable) {
  // This pin is active-low
  digitalWrite(kShiftOutputEnablePin, enable ? LOW : HIGH);
}

void enableLightsUpTo(int idx) {
  if (idx < 0 || idx > kNumLeds) {
    return;
  }
  digitalWrite(kShiftRegClockPin, LOW);
  shiftOut(kShiftSerialInPin, kShiftClockPin, MSBFIRST, (1 << idx) - 1);
  digitalWrite(kShiftRegClockPin, HIGH);
}

void blinkLights(int interval) {
  digitalWrite(kShiftOutputEnablePin, HIGH);
  delay(interval / 2);
  digitalWrite(kShiftOutputEnablePin, LOW);
  delay(interval / 2);
}

int calculateNumLights(int currentRpm, int activationRpm, int maxRpm, int numLeds) {
  if (currentRpm < activationRpm) {
    return 0;
  }
  // 1 LED at activation RPM, all 8 LEDs at just under max RPM
  return 1 + ((numLeds * (currentRpm - activationRpm)) / (maxRpm - activationRpm));
}

int generateDebugRpm(struct Debug& d) {
  int rpm = d.lastDebugRpm;
  d.lastDebugRpm += (d.rpmSlope * d.rpmDirection);
  if (d.lastDebugRpm > (kMaxRpm + d.rpmSlope) ||
      d.lastDebugRpm < (kActivationRpm - d.rpmSlope)) {
    d.rpmDirection = -1 * d.rpmDirection;
  }
  return rpm;
}

int readRpm(struct Tach& t) {
  if (t.timeoutCounter > 0) {
    // Check for RPM signal shutting down
    t.timeoutCounter--;
  }
  if (t.timeoutCounter <= 0) {
    t.currentRpm = 0;
    return t.currentRpm;
  }

  // Calculate effective pulse interval in Hz
  float pulseRate = 1 / (t.interval * 1e-6);
  t.currentRpm = pulseRate * t.rpmPerPulse;
  return t.currentRpm;
}

void doSleep(const struct Tach t, const struct Serial s) {
  if (t.timeoutCounter > 0) {
    return;
  }
  sleep_enable();
  set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    if (s.enabled) {
    Serial.println("Suspending due to no RPM input");
  }
  // Add delay to allow LED shutdown
  digitalWrite(LED_BUILTIN, LOW);
  delay(200);
  sleep_cpu();
}

void exitSleep(const struct Tach t) {
  // Sleep occurs if timeout counter drops below 1
  if (t.timeoutCounter > 0) {
    return;
  }
  digitalWrite(LED_BUILTIN, HIGH);
  sleep_disable();
}

void rpmIsr() {
  // Disable sleep mode if RPM ISR occurs while sleeping
  exitSleep(gTach);
  unsigned long now = micros();
  gTach.interval = now - gTach.lastPulseTime;
  gTach.lastPulseTime = now;
  gTach.timeoutCounter = gTach.timeoutValue;
}

void setupBuiltInLed() {
  pinMode(LED_BUILTIN, OUTPUT);
  digitalWrite(LED_BUILTIN, HIGH);
}

void setupShiftRegisterPins() {
  pinMode(kShiftSerialInPin, OUTPUT);
  pinMode(kShiftClockPin, OUTPUT);
  pinMode(kShiftRegClockPin, OUTPUT);
  pinMode(kShiftClearPin, OUTPUT);
  pinMode(kShiftOutputEnablePin, OUTPUT);

  // clear registers (active-low)
  digitalWrite(kShiftClearPin, LOW);
  delay(100);
  digitalWrite(kShiftClearPin, HIGH);
}

void setupRpmCalculation(struct Tach& t) {
  // number of cycles until until idle once RPM signal stops coming
  const int kTimeoutValue = 20;
  // BMW N51/N52 is 50Hz == 1000 RPM, 100Hz = 2000 RPM, or 20 RPM per pulse
  const int kRpmPerPulse = 20;
  // Pins 2/3 are the only external interrupt pins available on nano
  const int kRpmPin = 2;

  t.interval = 0;
  t.lastPulseTime = 0;
  t.timeoutCounter = 0;
  t.currentRpm = 0;
  t.timeoutValue = kTimeoutValue;
  t.rpmPerPulse = kRpmPerPulse;
  t.rpmPin = kRpmPin;

  pinMode(t.rpmPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(t.rpmPin), rpmIsr, RISING);
}

// the setup routine runs once when you press reset:
void setup() {
  setupBuiltInLed();

  setupDebugMode(gDebug);

  setupSerial(gSerial);

  setupShiftRegisterPins();

  setupRpmCalculation(gTach);
}

// the loop routine runs over and over again forever:
void loop() {
  int rpm = gDebug.enabled ? generateDebugRpm(gDebug) : readRpm(gTach);
  printRpm(gSerial, rpm);
  int numLights = calculateNumLights(rpm, kActivationRpm, kMaxRpm, kNumLeds);
  printLights(gSerial, numLights);
  if (numLights > kNumLeds) {
    enableLightOutput(true);
    enableLightsUpTo(kNumLeds);
    blinkLights(kIlluminationTimeMs);
  } else if (numLights > 0) {
    enableLightOutput(true);
    enableLightsUpTo(numLights);
    delay(kIlluminationTimeMs);
  } else {
    // No lights enabled
    enableLightOutput(false);
    delay(kIlluminationTimeMs);
  }
  updateCycles(gSerial);
  doSleep(gTach, gSerial);
}
