int internalLed = 13;

const int kNumLeds = 8;

int shiftSerialIn = 2;
int shiftClock = 3;
int shiftRegClock = 4;
int shiftClear = 19;
int shiftOutputEnable = 18;

void enableLightsUpTo(int idx) {
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
