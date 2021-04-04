int internalLed = 13;

const int kNumLeds = 8;

const int shiftSerialIn = 2;
const int shiftClock = 3;
const int shiftRegClock = 4;
const int shiftClear = 19;
const int shiftOutputEnable = 18;

void enableLightsUpTo(int idx) {
  if (idx < 0 || idx > kNumLeds) {
    return;
  }
  digitalWrite(shiftRegClock, LOW);
  shiftOut(shiftSerialIn, shiftClock, MSBFIRST, (1 << idx) - 1);
  digitalWrite(shiftRegClock, HIGH);
}

// the setup routine runs once when you press reset:
void setup() {
  pinMode(shiftSerialIn, OUTPUT);
  pinMode(shiftClock, OUTPUT);
  pinMode(shiftRegClock, OUTPUT);
  pinMode(shiftClear, OUTPUT);
  pinMode(shiftOutputEnable, OUTPUT);

  // enable all outputs (active-low)
  digitalWrite(shiftOutputEnable, LOW);
  
  // clear registers (active-low)
  digitalWrite(shiftClear, LOW);
  delay(250);
  digitalWrite(shiftClear, HIGH);
}

// the loop routine runs over and over again forever:
void loop() {
  for (int i = 0; i <= kNumLeds; i++) {
    enableLightsUpTo(i);
    delay(500);
  }
}
