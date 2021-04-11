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

const bool kDebug = false;
int gDebugRpmDirection = 1;
int kDebugRpmSlope = 200;
int gLastDebugRpm = kActivationRpm - gDebugRpmDirection;

const bool kEnableSerial = false;
uint64_t gNumCycles = 0;

void setupSerial() {
  if (!kEnableSerial) {
    return;
  }
  Serial.begin(9600);
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

int generateDebugRpm() {
  int rpm = gLastDebugRpm;
  gLastDebugRpm += (kDebugRpmSlope * gDebugRpmDirection);
  if (gLastDebugRpm > (kMaxRpm + kDebugRpmSlope) ||
      gLastDebugRpm < (kActivationRpm - kDebugRpmSlope)) {
    gDebugRpmDirection = -1 * gDebugRpmDirection;
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
  setupSerial();

  setupShiftRegisterPins();

  setupRpmCalculation();
}

// the loop routine runs over and over again forever:
void loop() {
  int rpm = kDebug ? generateDebugRpm() : readRpm();
  if (kEnableSerial) {
    if (gNumCycles % 5 == 0) {
      Serial.print("Current RPM: ");
      Serial.print(rpm);
      Serial.println();
    }
  }
  int numLights = calculateNumLights(rpm, kActivationRpm, kMaxRpm, kNumLeds);
  if (kEnableSerial) {
    if (gNumCycles % 5 == 0) {
      Serial.print("LEDs to light: ");
      Serial.print(numLights);
      Serial.println();
    }
  }
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
  if (kEnableSerial) {
    gNumCycles++;
  }
}
