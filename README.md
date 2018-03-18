# Overview

This is some basic firmware for a board inspired by the 'Arduboy' project. I'm aiming for the same 'credit card' form-factor, but I've made a few tweaks to make this a potential platform for education about a wider variety of topics. I would like to emulate games written for the Arduboy project, but I'd also like to make the platform viable for other topics by breaking out the various unused pins. Ideally, people will be able to use this as both a standalone game platform and a general development board for interfacing with sensors, other forms of input/output, etc. I call it the 'STEAMGal', after the acronym for Science, Technology, Engineering, Art, and Math. Some people don't like including the 'Art' part and it doesn't make sense in every context, but this is based off of a game platform and electronics can be used in plenty of creative pursuits.

The files under 'lib/' are probably not necessary, I just keep having GCC get confused about which 'libc's to use with armv6m for some reason.

# Current Status

Barely functional. The firmware simply initializes the system clock to 48MHz driven by the HSE crystal, then draws a test pattern to the OLED screen. It also sets up hardware interrupts to toggle the on-board LED on or off whenever any of the 6 buttons except for 'B' is pressed. When the 'B' button is pressed, the buzzer plays a few tones.

Well, at least it verifies that everything works.

# Connections

The 128x64 monochrome SSD1306 OLED display uses the I2C1 bus on pins B6 and B7. A 4-pin header near the top of the board makes the I2C1 peripheral available for other devices which use that protocol for communication. For now, the display's I2C address is 0x78 and cannot be changed, but I might add a jumper for changing it to 0x7A in future revisions of the board.

There is a piezo buzzer on pin B0.

There is an LED on pin A12.

The 6 buttons are on pins A2-A7. (And a 'reset' button connected to the NRST pin):

* A2: Left
* A3: Up
* A4: Down
* A5: Right
* A6: 'B' button.
* A7: 'A' button.

I forgot to add an EEPROM module on the first revision of the board. Oops. Future revisions will probably have a 24LC16BT chip on the I2C1 bus, which will occupy addresses 0b1010xyzR, where 'x', 'y', and 'z' are used to select which of eight 2KB blocks to address.

Pins A0, A1, and B1 are available on a 'GPIO1' 5-pin 0.1" header. +3V3 and GND occupy the other two pins.

Pins B3, B4, B5, and A15 are available on a 'GPIO2' 6-pin 0.1" header. +3V3 and GND occupy the other two pins. Pins B3-B5 are connected to the SPI1 peripheral on QFP32 STM32 chips, and some SPI protocols have a separate 'Data/Command' line.

Pins A8 and A9 are available on a 4-pin 0.2mm JST connector, with +3V3 and GND occupying the other two pins.

Pins A10 and A11 are also available on a 4-pin 0.2mm JST connector, with +3V3 and GND occupying the other two pins.

Pins A13 and A14 are connected to a 4-pin programming header with GND and input voltage (~3.5 - 13.2V). They aren't intended to be re-assigned, as the board is intended to be easy to reprogram.

# Core processor

Right now, only the STM32F051K8 core is supported. But I think that the same board design should work with 32-pin F030, F303, and L051 chips. The L-series would just use a 32.768KHz LSE crystal with ~5pf capacitors instead of an 8MHz HSE crystal with ~20pf ones.

The F303 would allow more complex applications, as it has hardware instructions for floating-point calculations and DSP functions.

The L051 would be more optimized for low-power applications, have a more accurate realtime clock peripheral, and come with built-in EEPROM.

# Board Design

The board design is available under the 'board\_design\_v0' directory. It includes a circuit for 30-pin 128x64 SSD1306 monochrome OLED screens which seems to work, although I did crib that from the cheap 4-pin screen modules you can get off of ebay/aliexpress/etc for a few bucks. I've gotten several slightly different boards like that, and they all seem to use roughly the same design. Some of them omit the diode in the reset circuit, but since the screen has an onboard charge pump to generate a display bias voltage higher than 3.3V, I figure better safe than sorry.

Here's the first version of the board as rendered by OshPark. It seems to work as expected, but the ribbon connection is just barely close enough to the cutout to fold the screen over; I'll be moving that a bit in the next revision, along with adding an EEPROM chip. Also, the buzzer is sort of loud; I should probably add a potentiometer for volume control.

![STEAMGal\_V0](https://raw.githubusercontent.com/WRansohoff/STEAMGal_Firmware_test/master/board_design_v0/board_v0_render.png)
