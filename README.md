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

## Cluster modifications
The M3 DCT cluster modifications necessary are detailed in the
`m3_dct_cluster_gnd_points.jpeg` file. Ignore the leads from the LEDs
themselves. The important points are circled in black, and correspond to the
ground points for the LED pairs. It is necessary to attach leads to these
ground points ONLY. You MUST attach leads to the test points AFTER the 127 Ohm
resistor (the highlighted points ONLY), not before. Failure to follow this
instruction will result in burning out the LEDs due to overcurrent.
You will also need to cut a small hole in the cluster enclosure to allow the LED
ground lines to connect to the Arduino.

## Schematic
The included `m3_dct_shift_lights.sch` file can be opened with any Eagle
schematic compatible program. The schematic only includes the circuit necessary
to read the RPM and control the LEDs. It does NOT include the necessary circuit
to independently power the Arduino from the car's +12V power sources. The
Chippernut development board
(<https://www.chippernut.com/store/p31/Chipperkit.html>) comes with a power
pack consisting of a 5V buck converter that can be used for this purpose.

## Components
The included `bom_m3_dct_shift_lights.csv` file contains the list of parts
necessary to build the circuit. The BOM list can easily purchased on Digikey.
It does not include the Arduino or a board to mount all the components. I
highly suggest using the above linked Chippernut development board pack, as it
comes with the 5V buck converter as well as a development board, Arduino nano,
and enclosure for installation.

## Installation
You will need to tap pin 9 of the OBD2 port for the tachometer signal. This
needs to be connected where the schematic says "To OBD2 Pin 9". You will also
need to provide power and ground, as well as connecting the 8 LED ground lines
from the M3 DCT cluster to the shift register (Refer to schematic where it
details the LED pairs with the notes that these are on board). I suggest
tapping +12V power and ground from the cluster connector pins 9 (+12V) and
18 (ground). I suspect the circuit must be connected to the cluster's ground
in order for the LEDs to function. The Arduino and wires can be tucked into
the driver's footwell under the panel. I chose to zip tie it near the firewall.

## Software Notes
The Arduino sketch has a few constants that can be customized to suit your
needs. The activation RPM and the maximum RPM values can be found at the top
of the file with the names `kActivationRpm` and `kMaxRpm`, respectively. The
`kActivationRpm` variable sets the RPM value at which the first LED will light.
The `kMaxRpm` variable sets the RPM value at which the all the LEDs will start
to flash. Any RPM value above the `kMaxRpm` value will mean the LEDs continue
to flash until the RPM drops below the threshold.
