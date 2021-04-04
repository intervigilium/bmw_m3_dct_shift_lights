int internalLed = 13;

const int kNumLeds = 8;

const int kShiftClockPin = 3;
const int kShiftRegClockPin = 4;
const int kShiftSerialInPin = 5;
const int kShiftClearPin = 19;
const int kShiftOutputEnablePin = 18;

void enableLightsUpTo(int idx) {
  if (idx < 0 || idx > kNumLeds) {
    return;
  }
  digitalWrite(kShiftRegClockPin, LOW);
  shiftOut(kShiftSerialInPin, kShiftClockPin, MSBFIRST, (1 << idx) - 1);
  digitalWrite(kShiftRegClockPin, HIGH);
}

// the setup routine runs once when you press reset:
void setup() {
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

// the loop routine runs over and over again forever:
void loop() {
  for (int i = 0; i <= kNumLeds; i++) {
    enableLightsUpTo(i);
    delay(500);
  }
}
