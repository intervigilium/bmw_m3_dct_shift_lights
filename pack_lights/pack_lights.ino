#include <Adafruit_DotStar.h>
#include <Adafruit_NeoPixel.h>
#include <Adafruit_ZeroFFT.h>

//#define ENABLE_SERIAL 1

#define DOTSTAR_DATA_PIN 3
#define DOTSTAR_CLK_PIN 4
Adafruit_DotStar led(1, DOTSTAR_DATA_PIN, DOTSTAR_CLK_PIN, DOTSTAR_BRG);

#define LED_PIN 13

#define NUM_RINGS 3
#define PIXELS_PER_RING 12
#define NUMPIXELS (NUM_RINGS * PIXELS_PER_RING)

Adafruit_NeoPixel pixels(NUMPIXELS, A1, NEO_GRB + NEO_KHZ800);

void setup() {
#if ENABLE_SERIAL
  Serial.begin(9600);
#endif

  led.begin();
  pixels.begin();
}

// rough estimate that this is 4K sampling rate due to analogRead on Gemma M0
#define DATA_SIZE 4096
int16_t data[DATA_SIZE];

#define HUE_MAX 65535

#define BRIGHTNESS_VAL 32

#define MOVING_MAX_SIZE 192
int32_t movingMax[MOVING_MAX_SIZE];
uint16_t movingMaxIdx = 0;

#define RING_OFFSET 8192

uint32_t currentIter = 0;
#define MAX_ITER 4096
#define DECIMATION_FACTOR 2

void loop() {
  led.clear();

  int32_t avg = 0;
  for (uint32_t i = 0; i < DATA_SIZE; i++) {
    int16_t val = analogRead(A2);
    avg += val;
    data[i] = val;
  }

  // remove DC offset and gain up to 16 bits
  avg = avg / DATA_SIZE;
  for (uint32_t i = 0; i < DATA_SIZE; i++) {
    data[i] = (data[i] - avg) * 64;
  }

  // run the FFT
  ZeroFFT(data, DATA_SIZE);

  // get the max index found (strongest freq response)
  int16_t maxVal = 0;
  int32_t maxIdx = 0;

  // data is only meaningful up to sample rate/2, discard the other half
  for (uint32_t i = 0; i < DATA_SIZE / 2; i++) {
    if (data[i] > maxVal) {
      maxVal = data[i];
      maxIdx = i;
    }
  }

  // store max index found
  movingMax[movingMaxIdx] = maxIdx;
  movingMaxIdx = ((movingMaxIdx + 1) % MOVING_MAX_SIZE);

  uint32_t movingMaxVal = 0;
  for (uint32_t i = 0; i < MOVING_MAX_SIZE; i++) {
    movingMaxVal = max(movingMaxVal, movingMax[i]);
  }

  // scale hue based on current strongest freq response scaled to all freq
  // responses seen so far
  const uint32_t hue = maxIdx * HUE_MAX / movingMaxVal;

  // slow down animation speed by decimation factor
  currentIter = ((currentIter + 1) % MAX_ITER);
  if ((currentIter % DECIMATION_FACTOR)) {
    led.show();
    pixels.show();
    return;
  }

  // add slight offset for each ring
  for (uint32_t j = 0; j < NUM_RINGS; j++) {
    uint32_t currHue = min(hue + (j * RING_OFFSET), HUE_MAX);
    const uint32_t color =
        pixels.gamma32(pixels.ColorHSV(currHue, 255, BRIGHTNESS_VAL));
    pixels.fill(color, j * PIXELS_PER_RING, PIXELS_PER_RING);
  }
  led.show();
  pixels.show();

#if ENABLE_SERIAL
  Serial.print(maxIdx);
  Serial.print(" ");
  Serial.print(movingMaxVal);
  Serial.print(" ");
  Serial.print(hue);
  Serial.print("\n");
#endif
}
