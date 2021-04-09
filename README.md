# BMW M3 DCT Cluster Shift Lights Retrofit

## BMW M3 DCT Cluster
The M3 DCT instrument cluster has a series of 8 shift lights above the
tachometer. These shift lights are normally not active, and do not appear to
be possible to activate without having the DCT itself. Fortunately, the
cluster's LEDs can be driven by attaching leads to the test points on the
ground side, as the LEDs are connected to an onboard 5V rail for power, and
a TI 6C596G4 8-bit shift register which acts as a current sink to ground.
Grounding each of these LED pairs will light up the corresponding pair.

## Retrofit circuit
Instead of attempting to drive the LEDs using the onboard TI 6C596 shift
register, we can just connect the LEDs to a shift register of our own and
connect that to an Arduino. The sketch here assumes that the shift register
is a TI 6C596 as well, and is configured using pins D3-D5, D18-D19. Engine
RPM for the BMW E9X series appears to be present on OBD2 port pin 9 as a 12V
square wave. This circuit utilizes the 12V RPM signal input circuit from
the Chippernut digital shift light project to read the signal, as well as
the 5V buck regulator input circuit to provide power.
