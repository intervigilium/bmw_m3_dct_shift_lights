#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
#include <avr/power.h>
#endif
#define PIN        6
#define NUMPIXELS 60

#define LED_BRIGHTNESS 200

Adafruit_NeoPixel pixels(NUMPIXELS, PIN, NEO_GRB + NEO_KHZ800);

void setup() {
#if defined(__AVR_ATtiny85__) && (F_CPU == 16000000)
  clock_prescale_set(clock_div_1);
#endif

  pixels.begin();
}

void rainbow() {
  // Use 16 bits of color
  // Display the entire color gamut across the length of the strip.
  const int hueStep = 4096;
  for (uint64_t firstPixelHue = 0; firstPixelHue < 5 * 65536; firstPixelHue += hueStep) {
    for (int i = 0; i < pixels.numPixels(); i++) {
      // ColorHSV takes a hue from 0-65536
      const uint16_t hue = firstPixelHue + (i * 65536 / pixels.numPixels());
      const uint32_t color = pixels.gamma32(pixels.ColorHSV(hue));
      pixels.setPixelColor(i, color);
    }
    pixels.show();
    delay(50);
  }
}

void rainbowStreak() {
  // Use 16 bits of color
  // Display the entire color gamut across the length of the strip.
  const int startPixel = 24;
  const int length = pixels.numPixels() - startPixel;
  const int hueStep = 4096;
  const int streakLength = 20;
  for (uint64_t firstPixelHue = 0; firstPixelHue < 5 * 65536; firstPixelHue += hueStep) {
    for (int offset = startPixel - streakLength; offset < pixels.numPixels(); offset++) {
      pixels.clear();
      for (int i = 0; i < streakLength; i++) {
        // start at next offset
        const int pixel = i + offset;
        if (pixel < startPixel || pixel >= pixels.numPixels()) {
          continue;
        };
        // ColorHSV takes a hue (0-65536), saturation (0-255), brightness (0-255)
        const uint16_t hue = firstPixelHue + (pixel * 65536 / length);
        const uint32_t color = pixels.gamma32(pixels.ColorHSV(hue, 255, LED_BRIGHTNESS));
        pixels.setPixelColor(pixel, color);
      }
      pixels.show();
      delay(25);
    }
  }
}

void rainbowMarquee() {
  // Use 16 bits of color
  // Display the entire color gamut across the length of the strip.
  // Move the first hue by 4096
  const int iterations = 30;
  const int frames = 90;
  const int hueStep = 65536 / frames;
  uint16_t firstPixelHue = 0;
  for (int a = 0; a < iterations; a++) {
    for (int b = 0; b < frames / iterations; b++) {
      pixels.clear();
      for (int c = b; c < pixels.numPixels(); c += 3) {
        // ColorHSV takes a hue (0-65536), saturation (0-255), brightness (0-255)
        const uint16_t hue = firstPixelHue + (c * 65536 / pixels.numPixels());
        const uint32_t color = pixels.gamma32(pixels.ColorHSV(hue, 255, LED_BRIGHTNESS));
        pixels.setPixelColor(c, color);
      }
      pixels.show();
      delay(50);
      firstPixelHue += hueStep;
    }
  }
}

void colorPulse() {
  // Use 16 bits of color
  // Display a single color, vary the brightness to full, then dim before
  // cycling the color
  for (uint64_t hue = 0; hue < 5 * 65536; hue += 4096) {
    for (int brightnessCount = 0; brightnessCount < 256 * 2; brightnessCount += 31) {
      int brightness = brightnessCount;
      if (brightness > 256) {
        // Cause brightness value to decrease gradually
        brightness = 256 - (brightnessCount - 256);
      }
      for (int i = 0; i < pixels.numPixels(); i++) {
        // ColorHSV takes a hue (0-65536), saturation (0-255), brightness (0-255)
        const uint32_t color = pixels.gamma32(pixels.ColorHSV(hue, 255, brightness));
        pixels.setPixelColor(i, color);
      }
      pixels.show();
      delay(50);
    }
  }
}

void loop() {
  rainbowStreak();
}