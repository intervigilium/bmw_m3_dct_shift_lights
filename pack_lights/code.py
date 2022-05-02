import neopixel
import board
import time

numpix = 12  # Number of NeoPixels
pixpin = board.A1  # Pin where NeoPixels are connected
strip = neopixel.NeoPixel(pixpin, numpix, brightness=0.05)
color = [75, 250, 100]  # RGB color - teal

sine = [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ]

idx = 0
while True:  # Loop forever...
    print("iteration: ", idx)
    for i in range(len(sine)):
        # Set 'head' pixel to color:
        strip[sine[i]] = color
        # Erase 'tail,' 8 pixels back:
        strip[sine[(i + len(sine) - 8) % len(sine)]] = [0, 0, 0]
        strip.write()  # Refresh LED states
        time.sleep(0.032)  # 16 millisecond delay
    idx += 1
