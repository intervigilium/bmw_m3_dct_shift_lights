int internalLed = 13;

const int kNumLeds = 8;

const int kRpmPin = 2;

const int kShiftClockPin = 3;
const int kShiftRegClockPin = 4;
const int kShiftSerialInPin = 5;
const int kShiftClearPin = 19;
const int kShiftOutputEnablePin = 18;

volatile unsigned long gInterval = 0;
volatile unsigned long gLastPulseTime = 0;
volatile int gTimeoutCounter = 0;
long gCurrentRpm = 0;
const int kTimeoutValue = 10;
// BMW N51/N52 is 50Hz == 1000 RPM, 100Hz = 2000 RPM, or 20 RPM per pulse
int kRpmPerPulse = 20;

void enableLightsUpTo(int idx) {
  if (idx < 0 || idx > kNumLeds) {
    return;
  }
  digitalWrite(kShiftRegClockPin, LOW);
  shiftOut(kShiftSerialInPin, kShiftClockPin, MSBFIRST, (1 << idx) - 1);
  digitalWrite(kShiftRegClockPin, HIGH);
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

  // enable all outputs (active-low)
  digitalWrite(kShiftOutputEnablePin, LOW);

  // clear registers (active-low)
  digitalWrite(kShiftClearPin, LOW);
  delay(250);
  digitalWrite(kShiftClearPin, HIGH);
}

void setupRpmCalculation() {
  gTimeoutCounter = kTimeoutValue;
  pinMode(kRpmPin, INPUT);
  attachInterrupt(digitalPinToInterrupt(kRpmPin), rpmIsr, RISING);
}

// the setup routine runs once when you press reset:
void setup() {
  setupShiftRegisterPins();

  setupRpmCalculation();
}

// the loop routine runs over and over again forever:
void loop() {
  int rpm = readRpm();

  for (int i = 0; i <= kNumLeds; i++) {
    enableLightsUpTo(i);
    delay(500);
  }
}
