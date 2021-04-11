const int kNumLeds = 8;
const int kIlluminationTimeMs = 200;

// Pins 2/3 are the only external interrupt pins available
const int kRpmPin = 2;

const int kShiftClockPin = 3;
const int kShiftRegClockPin = 6;
const int kShiftSerialInPin = 5;
const int kShiftClearPin = A3;
const int kShiftOutputEnablePin = A2;

volatile unsigned long gInterval = 0;
volatile unsigned long gLastPulseTime = 0;
volatile int gTimeoutCounter = 0;
long gCurrentRpm = 0;
const int kTimeoutValue = 10;
// BMW N51/N52 is 50Hz == 1000 RPM, 100Hz = 2000 RPM, or 20 RPM per pulse
const int kRpmPerPulse = 20;

const int kActivationRpm = 4000;
const int kMaxRpm = 6500;

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

int readRpm() {
  if (gTimeoutCounter > 0) {
    // Check for RPM signal shutting down
    gTimeoutCounter--;
  }
  if (gTimeoutCounter <= 0) {
    gCurrentRpm = 0;
    return gCurrentRpm;
  }

  // Calculate effective pulse interval in Hz
  float pulseRate = 1 / (gInterval * 1e-6);
  gCurrentRpm = pulseRate * kRpmPerPulse;
  return gCurrentRpm;
}

void rpmIsr() {
  unsigned long now = micros();
  gInterval = now - gLastPulseTime;
  gLastPulseTime = now;
  gTimeoutCounter = kTimeoutValue;
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

void setupRpmCalculation() {
  gTimeoutCounter = kTimeoutValue;
  pinMode(kRpmPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(kRpmPin), rpmIsr, RISING);
}

// the setup routine runs once when you press reset:
void setup() {
  setupDebugMode(gDebug);

  setupSerial(gSerial);

  setupShiftRegisterPins();

  setupRpmCalculation();
}

// the loop routine runs over and over again forever:
void loop() {
  int rpm = gDebug.enabled ? generateDebugRpm(gDebug) : readRpm();
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
}
