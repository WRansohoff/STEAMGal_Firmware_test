EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:custom_ICs
LIBS:STEAMGal_STM32F051Kx-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L AP2210 U2
U 1 1 5A9870ED
P 1900 1600
F 0 "U2" H 1900 1400 60  0000 C CNN
F 1 "AP2210" H 1900 1300 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 2600 1200 60  0001 C CNN
F 3 "" H 2600 1200 60  0000 C CNN
	1    1900 1600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P1
U 1 1 5A987130
P 1050 1150
F 0 "P1" H 1050 1300 50  0000 C CNN
F 1 "Power_In" V 1150 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02" H 1050 1150 50  0001 C CNN
F 3 "" H 1050 1150 50  0000 C CNN
	1    1050 1150
	-1   0    0    1   
$EndComp
$Comp
L VAA #PWR01
U 1 1 5A987164
P 1350 1000
F 0 "#PWR01" H 1350 850 50  0001 C CNN
F 1 "VAA" H 1350 1150 50  0000 C CNN
F 2 "" H 1350 1000 50  0000 C CNN
F 3 "" H 1350 1000 50  0000 C CNN
	1    1350 1000
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky_Small D1
U 1 1 5A987184
P 1550 1100
F 0 "D1" H 1550 900 50  0000 C CNN
F 1 "<0.5Vf" H 1550 1000 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" V 1550 1100 50  0001 C CNN
F 3 "" V 1550 1100 50  0000 C CNN
	1    1550 1100
	-1   0    0    1   
$EndComp
$Comp
L SPDT SW1
U 1 1 5A987211
P 1900 950
F 0 "SW1" H 1900 1350 60  0000 C CNN
F 1 "On?" H 1950 1250 60  0000 C CNN
F 2 "custom_footprints:SPDT_Slide_SMD_RA" H 2450 700 60  0001 C CNN
F 3 "" H 2450 700 60  0000 C CNN
	1    1900 950 
	1    0    0    -1  
$EndComp
NoConn ~ 2050 1000
$Comp
L CP1_Small C1
U 1 1 5A987341
P 1550 1600
F 0 "C1" H 1560 1670 50  0000 L CNN
F 1 "10u" H 1560 1520 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:TantalC_SizeA_EIA-3216_HandSoldering" H 1550 1600 50  0001 C CNN
F 3 "" H 1550 1600 50  0000 C CNN
	1    1550 1600
	-1   0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 5A98741A
P 2000 1200
F 0 "#PWR02" H 2000 1050 50  0001 C CNN
F 1 "VDD" H 2000 1350 50  0000 C CNN
F 2 "" H 2000 1200 50  0000 C CNN
F 3 "" H 2000 1200 50  0000 C CNN
	1    2000 1200
	0    1    1    0   
$EndComp
$Comp
L VPP #PWR03
U 1 1 5A9874AB
P 2200 2000
F 0 "#PWR03" H 2200 1850 50  0001 C CNN
F 1 "VPP" H 2200 2150 50  0000 C CNN
F 2 "" H 2200 2000 50  0000 C CNN
F 3 "" H 2200 2000 50  0000 C CNN
	1    2200 2000
	0    1    1    0   
$EndComp
$Comp
L C_Small C2
U 1 1 5A9874DD
P 1900 2000
F 0 "C2" H 1910 2070 50  0000 L CNN
F 1 "4.7u" H 1910 1920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1900 2000 50  0001 C CNN
F 3 "" H 1900 2000 50  0000 C CNN
	1    1900 2000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A987554
P 1150 2000
F 0 "#PWR04" H 1150 1750 50  0001 C CNN
F 1 "GND" H 1150 1850 50  0000 C CNN
F 2 "" H 1150 2000 50  0000 C CNN
F 3 "" H 1150 2000 50  0000 C CNN
	1    1150 2000
	0    1    1    0   
$EndComp
$Comp
L Led_Small D2
U 1 1 5A987647
P 1900 2300
F 0 "D2" H 1900 2100 50  0000 C CNN
F 1 "On?" H 1900 2200 50  0000 C CNN
F 2 "LEDs:LED_0805" V 1900 2300 50  0001 C CNN
F 3 "" V 1900 2300 50  0000 C CNN
	1    1900 2300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A987676
P 1550 2300
F 0 "R1" V 1550 2300 50  0000 C CNN
F 1 "RLED" V 1650 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1480 2300 50  0001 C CNN
F 3 "" H 1550 2300 50  0000 C CNN
	1    1550 2300
	0    1    1    0   
$EndComp
$Comp
L STM32F051K8 U1
U 1 1 5A987A33
P 6550 4250
F 0 "U1" H 6550 4350 60  0000 C CNN
F 1 "STM32F051K8" H 6550 4150 60  0000 C CNN
F 2 "custom_footprints:LQFP-32_7x7mm_Pitch0.8mm_HandSoldering" H 6550 4250 60  0001 C CNN
F 3 "" H 6550 4250 60  0000 C CNN
	1    6550 4250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C8
U 1 1 5A987B13
P 5650 3550
F 0 "C8" H 5660 3620 50  0000 L CNN
F 1 "100n" H 5660 3470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5650 3550 50  0001 C CNN
F 3 "" H 5650 3550 50  0000 C CNN
	1    5650 3550
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR05
U 1 1 5A987C0B
P 4700 3350
F 0 "#PWR05" H 4700 3100 50  0001 C CNN
F 1 "GND" H 4700 3200 50  0000 C CNN
F 2 "" H 4700 3350 50  0000 C CNN
F 3 "" H 4700 3350 50  0000 C CNN
	1    4700 3350
	0    1    1    0   
$EndComp
$Comp
L VPP #PWR06
U 1 1 5A987C33
P 5800 3600
F 0 "#PWR06" H 5800 3450 50  0001 C CNN
F 1 "VPP" H 5800 3750 50  0000 C CNN
F 2 "" H 5800 3600 50  0000 C CNN
F 3 "" H 5800 3600 50  0000 C CNN
	1    5800 3600
	1    0    0    -1  
$EndComp
Text GLabel 6400 3350 1    60   Input ~ 0
B7
Text GLabel 6500 3350 1    60   Input ~ 0
B6
Text GLabel 6600 3350 1    60   Input ~ 0
B5
Text GLabel 6700 3350 1    60   Input ~ 0
B4
Text GLabel 6800 3350 1    60   Input ~ 0
B3
Text GLabel 6900 3350 1    60   Input ~ 0
A15
Text GLabel 7450 3900 2    60   Input ~ 0
SWCLK
Text GLabel 7450 4000 2    60   Input ~ 0
SWDIO
$Comp
L Crystal_Small Y1
U 1 1 5A9884DB
P 5350 3950
F 0 "Y1" H 5350 4050 50  0000 C CNN
F 1 "HSE" H 5350 3850 50  0000 C CNN
F 2 "custom_footprints:XTAL_HF_2SMD_1" H 5350 3950 50  0001 C CNN
F 3 "" H 5350 3950 50  0000 C CNN
	1    5350 3950
	1    0    0    -1  
$EndComp
$Comp
L C_Small C3
U 1 1 5A9886A0
P 5200 3800
F 0 "C3" H 5210 3870 50  0000 L CNN
F 1 "20p" H 5210 3720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5200 3800 50  0001 C CNN
F 3 "" H 5200 3800 50  0000 C CNN
	1    5200 3800
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5A9886EB
P 5500 3800
F 0 "C4" H 5510 3870 50  0000 L CNN
F 1 "20p" H 5510 3720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0000 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 5A988E6E
P 5100 4200
F 0 "SW2" H 5150 4400 50  0000 C CNN
F 1 "Reset" H 5150 4350 50  0000 C CNN
F 2 "custom_footprints:Button_SMD_2L_3x6x2.5mm" H 5100 4200 50  0001 C CNN
F 3 "" H 5100 4200 50  0000 C CNN
	1    5100 4200
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C7
U 1 1 5A9891DE
P 5450 4450
F 0 "C7" H 5460 4520 50  0000 L CNN
F 1 "1u" H 5460 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5450 4450 50  0001 C CNN
F 3 "" H 5450 4450 50  0000 C CNN
	1    5450 4450
	1    0    0    1   
$EndComp
$Comp
L C_Small C6
U 1 1 5A98921B
P 5300 4450
F 0 "C6" H 5310 4520 50  0000 L CNN
F 1 "10n" H 5310 4370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5300 4450 50  0001 C CNN
F 3 "" H 5300 4450 50  0000 C CNN
	1    5300 4450
	-1   0    0    1   
$EndComp
$Comp
L VPP #PWR07
U 1 1 5A989360
P 5100 4400
F 0 "#PWR07" H 5100 4250 50  0001 C CNN
F 1 "VPP" H 5100 4550 50  0000 C CNN
F 2 "" H 5100 4400 50  0000 C CNN
F 3 "" H 5100 4400 50  0000 C CNN
	1    5100 4400
	-1   0    0    1   
$EndComp
$Comp
L C_Small C5
U 1 1 5A9894B4
P 4900 4300
F 0 "C5" H 4910 4370 50  0000 L CNN
F 1 "100n" H 4910 4220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4900 4300 50  0001 C CNN
F 3 "" H 4900 4300 50  0000 C CNN
	1    4900 4300
	0    1    1    0   
$EndComp
Text GLabel 5600 4650 3    60   Input ~ 0
A0
Text GLabel 5650 4850 3    60   Input ~ 0
A1
Text GLabel 5700 4650 3    60   Input ~ 0
A2
Text GLabel 6200 5150 3    60   Input ~ 0
A3
Text GLabel 6300 5150 3    60   Input ~ 0
A4
Text GLabel 6400 5150 3    60   Input ~ 0
A5
Text GLabel 6500 5150 3    60   Input ~ 0
A6
Text GLabel 6600 5150 3    60   Input ~ 0
A7
Text GLabel 6700 5150 3    60   Input ~ 0
B0
Text GLabel 6800 5150 3    60   Input ~ 0
B1
$Comp
L C_Small C9
U 1 1 5A98A04D
P 7450 4950
F 0 "C9" H 7460 5020 50  0000 L CNN
F 1 "100n" H 7460 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7450 4950 50  0001 C CNN
F 3 "" H 7450 4950 50  0000 C CNN
	1    7450 4950
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR08
U 1 1 5A98A399
P 7300 4900
F 0 "#PWR08" H 7300 4750 50  0001 C CNN
F 1 "VPP" H 7300 5050 50  0000 C CNN
F 2 "" H 7300 4900 50  0000 C CNN
F 3 "" H 7300 4900 50  0000 C CNN
	1    7300 4900
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR09
U 1 1 5A98A516
P 7450 5250
F 0 "#PWR09" H 7450 5000 50  0001 C CNN
F 1 "GND" H 7450 5100 50  0000 C CNN
F 2 "" H 7450 5250 50  0000 C CNN
F 3 "" H 7450 5250 50  0000 C CNN
	1    7450 5250
	1    0    0    -1  
$EndComp
Text GLabel 7450 4500 2    60   Input ~ 0
A8
Text GLabel 7450 4400 2    60   Input ~ 0
A9
Text GLabel 7450 4300 2    60   Input ~ 0
A10
Text GLabel 7450 4200 2    60   Input ~ 0
A11
Text GLabel 7450 4100 2    60   Input ~ 0
A12
$Comp
L CONN_01X04 P2
U 1 1 5A98B1AC
P 8000 2850
F 0 "P2" H 8000 3100 50  0000 C CNN
F 1 "Prog" V 8100 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x04" H 8000 2850 50  0001 C CNN
F 3 "" H 8000 2850 50  0000 C CNN
	1    8000 2850
	0    1    -1   0   
$EndComp
$Comp
L VAA #PWR010
U 1 1 5A98B2C0
P 7750 3150
F 0 "#PWR010" H 7750 3000 50  0001 C CNN
F 1 "VAA" H 7750 3300 50  0000 C CNN
F 2 "" H 7750 3150 50  0000 C CNN
F 3 "" H 7750 3150 50  0000 C CNN
	1    7750 3150
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5A98B34C
P 7750 3350
F 0 "#PWR011" H 7750 3100 50  0001 C CNN
F 1 "GND" H 7750 3200 50  0000 C CNN
F 2 "" H 7750 3350 50  0000 C CNN
F 3 "" H 7750 3350 50  0000 C CNN
	1    7750 3350
	0    1    1    0   
$EndComp
Text GLabel 8050 3150 3    60   Input ~ 0
SWCLK
Text GLabel 8150 3150 3    60   Input ~ 0
SWDIO
$Comp
L SSD1306_raw P3
U 1 1 5A98BF1F
P 3250 7100
F 0 "P3" H 3250 6950 60  0000 C CNN
F 1 "SSD1306_ribbon" H 3250 6850 60  0000 C CNN
F 2 "custom_footprints:SSD1306_Raw" H 2850 7400 60  0001 C CNN
F 3 "" H 2850 7400 60  0000 C CNN
	1    3250 7100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5A98BF78
P 4800 6700
F 0 "#PWR012" H 4800 6450 50  0001 C CNN
F 1 "GND" H 4800 6550 50  0000 C CNN
F 2 "" H 4800 6700 50  0000 C CNN
F 3 "" H 4800 6700 50  0000 C CNN
	1    4800 6700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR013
U 1 1 5A98C1E0
P 1700 6250
F 0 "#PWR013" H 1700 6000 50  0001 C CNN
F 1 "GND" H 1700 6100 50  0000 C CNN
F 2 "" H 1700 6250 50  0000 C CNN
F 3 "" H 1700 6250 50  0000 C CNN
	1    1700 6250
	0    1    1    0   
$EndComp
$Comp
L C_Small C10
U 1 1 5A98C3C4
P 1900 6650
F 0 "C10" H 1910 6720 50  0000 L CNN
F 1 "Pump2" H 1910 6570 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1900 6650 50  0001 C CNN
F 3 "" H 1900 6650 50  0000 C CNN
	1    1900 6650
	-1   0    0    1   
$EndComp
$Comp
L C_Small C11
U 1 1 5A98C44B
P 2100 6550
F 0 "C11" H 2110 6620 50  0000 L CNN
F 1 "Pump1" H 2110 6470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2100 6550 50  0001 C CNN
F 3 "" H 2100 6550 50  0000 C CNN
	1    2100 6550
	-1   0    0    1   
$EndComp
NoConn ~ 2400 6800
$Comp
L VPP #PWR014
U 1 1 5A98CCC2
P 1700 6050
F 0 "#PWR014" H 1700 5900 50  0001 C CNN
F 1 "VPP" H 1700 6200 50  0000 C CNN
F 2 "" H 1700 6050 50  0000 C CNN
F 3 "" H 1700 6050 50  0000 C CNN
	1    1700 6050
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5A98DB3D
P 4300 6450
F 0 "R4" V 4380 6450 50  0000 C CNN
F 1 "IREF" V 4300 6450 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 6450 50  0001 C CNN
F 3 "" H 4300 6450 50  0000 C CNN
	1    4300 6450
	1    0    0    -1  
$EndComp
Text Notes 1700 6800 2    60   ~ 0
Pump caps:\n1uF?
$Comp
L R R2
U 1 1 5A9EFF01
P 2800 6500
F 0 "R2" V 2880 6500 50  0000 C CNN
F 1 "4K7" V 2800 6500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2730 6500 50  0001 C CNN
F 3 "" H 2800 6500 50  0000 C CNN
	1    2800 6500
	1    0    0    -1  
$EndComp
Text Notes 4750 6500 0    60   ~ 0
IREF: 910K
$Comp
L R R3
U 1 1 5A9F09DA
P 2900 5850
F 0 "R3" V 2980 5850 50  0000 C CNN
F 1 "4K7" V 2900 5850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2830 5850 50  0001 C CNN
F 3 "" H 2900 5850 50  0000 C CNN
	1    2900 5850
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C14
U 1 1 5A9F0A80
P 3250 5850
F 0 "C14" H 3260 5920 50  0000 L CNN
F 1 "4.7u" H 3260 5770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3250 5850 50  0001 C CNN
F 3 "" H 3250 5850 50  0000 C CNN
	1    3250 5850
	0    -1   -1   0   
$EndComp
$Comp
L D_Small D3
U 1 1 5A9F0B03
P 2900 5600
F 0 "D3" H 2900 5700 50  0000 C CNN
F 1 "ESD" H 2900 5500 50  0000 C CNN
F 2 "Diodes_SMD:SOD-123" V 2900 5600 50  0001 C CNN
F 3 "" V 2900 5600 50  0000 C CNN
	1    2900 5600
	1    0    0    -1  
$EndComp
Text GLabel 3500 6700 1    60   Input ~ 0
SCL
Text GLabel 3650 6700 1    60   Input ~ 0
SDA
$Comp
L C_Small C13
U 1 1 5A9F21BB
P 2450 6050
F 0 "C13" H 2460 6120 50  0000 L CNN
F 1 "1u" H 2460 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2450 6050 50  0001 C CNN
F 3 "" H 2450 6050 50  0000 C CNN
	1    2450 6050
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C12
U 1 1 5A9F2DC2
P 2200 6050
F 0 "C12" H 2210 6120 50  0000 L CNN
F 1 "1u" H 2210 5970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2200 6050 50  0001 C CNN
F 3 "" H 2200 6050 50  0000 C CNN
	1    2200 6050
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C16
U 1 1 5A9F32D1
P 4650 6150
F 0 "C16" H 4660 6220 50  0000 L CNN
F 1 "2.2u" H 4660 6070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4650 6150 50  0001 C CNN
F 3 "" H 4650 6150 50  0000 C CNN
	1    4650 6150
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C15
U 1 1 5A9F3395
P 4250 6150
F 0 "C15" H 4260 6220 50  0000 L CNN
F 1 "4.7u" H 4260 6070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4250 6150 50  0001 C CNN
F 3 "" H 4250 6150 50  0000 C CNN
	1    4250 6150
	0    1    -1   0   
$EndComp
Text GLabel 5850 2450 1    60   Input ~ 0
SCL
Text GLabel 5750 2450 1    60   Input ~ 0
SDA
Text GLabel 5750 2650 3    60   Input ~ 0
B7
Text GLabel 5850 2650 3    60   Input ~ 0
B6
$Comp
L R R6
U 1 1 5A9F51B4
P 6100 2550
F 0 "R6" V 6200 2550 50  0000 C CNN
F 1 "I2C_PU" V 6000 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6030 2550 50  0001 C CNN
F 3 "" H 6100 2550 50  0000 C CNN
	1    6100 2550
	0    1    -1   0   
$EndComp
$Comp
L R R5
U 1 1 5A9F5229
P 5500 2550
F 0 "R5" V 5600 2550 50  0000 C CNN
F 1 "I2C_PU" V 5400 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5430 2550 50  0001 C CNN
F 3 "" H 5500 2550 50  0000 C CNN
	1    5500 2550
	0    1    -1   0   
$EndComp
$Comp
L VPP #PWR015
U 1 1 5A9F5366
P 6350 2550
F 0 "#PWR015" H 6350 2400 50  0001 C CNN
F 1 "VPP" H 6350 2700 50  0000 C CNN
F 2 "" H 6350 2550 50  0000 C CNN
F 3 "" H 6350 2550 50  0000 C CNN
	1    6350 2550
	0    1    -1   0   
$EndComp
$Comp
L VPP #PWR016
U 1 1 5A9F53BC
P 5250 2550
F 0 "#PWR016" H 5250 2400 50  0001 C CNN
F 1 "VPP" H 5250 2700 50  0000 C CNN
F 2 "" H 5250 2550 50  0000 C CNN
F 3 "" H 5250 2550 50  0000 C CNN
	1    5250 2550
	0    -1   1    0   
$EndComp
$Comp
L Q_NPN_BEC Q2
U 1 1 5A9F6084
P 10650 5950
F 0 "Q2" V 11000 5950 50  0000 C CNN
F 1 "PZ_NPN" V 10900 5950 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 10850 6050 50  0001 C CNN
F 3 "" H 10650 5950 50  0000 C CNN
	1    10650 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 5A9F60E9
P 10750 6250
F 0 "#PWR017" H 10750 6000 50  0001 C CNN
F 1 "GND" H 10750 6100 50  0000 C CNN
F 2 "" H 10750 6250 50  0000 C CNN
F 3 "" H 10750 6250 50  0000 C CNN
	1    10750 6250
	1    0    0    -1  
$EndComp
$Comp
L R S1
U 1 1 5A9F62CB
P 10750 5500
F 0 "S1" V 10850 5500 50  0000 C CNN
F 1 "PIEZO" V 10650 5500 50  0000 C CNN
F 2 "custom_footprints:Piezo_Buzzer_Mini" V 10680 5500 50  0001 C CNN
F 3 "" H 10750 5500 50  0000 C CNN
	1    10750 5500
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR018
U 1 1 5A9F6594
P 10750 5250
F 0 "#PWR018" H 10750 5100 50  0001 C CNN
F 1 "VPP" H 10750 5400 50  0000 C CNN
F 2 "" H 10750 5250 50  0000 C CNN
F 3 "" H 10750 5250 50  0000 C CNN
	1    10750 5250
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5A9F65EE
P 10200 5950
F 0 "R9" V 10300 5950 50  0000 C CNN
F 1 "RB_Pz" V 10100 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10130 5950 50  0001 C CNN
F 3 "" H 10200 5950 50  0000 C CNN
	1    10200 5950
	0    1    1    0   
$EndComp
Text GLabel 9950 5950 0    60   Input ~ 0
Piezo_Pin
$Comp
L Q_NPN_BEC Q1
U 1 1 5A9F77D7
P 10650 4500
F 0 "Q1" V 11000 4500 50  0000 C CNN
F 1 "ULED_NPN" V 10900 4500 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 10850 4600 50  0001 C CNN
F 3 "" H 10650 4500 50  0000 C CNN
	1    10650 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 5A9F7850
P 10750 4800
F 0 "#PWR019" H 10750 4550 50  0001 C CNN
F 1 "GND" H 10750 4650 50  0000 C CNN
F 2 "" H 10750 4800 50  0000 C CNN
F 3 "" H 10750 4800 50  0000 C CNN
	1    10750 4800
	1    0    0    -1  
$EndComp
$Comp
L Led_Small D4
U 1 1 5A9F79C5
P 10750 3700
F 0 "D4" H 10750 3800 50  0000 C CNN
F 1 "User_LED" H 10750 3600 50  0000 C CNN
F 2 "LEDs:LED_0805" V 10750 3700 50  0001 C CNN
F 3 "" V 10750 3700 50  0000 C CNN
	1    10750 3700
	0    -1   -1   0   
$EndComp
$Comp
L R R8
U 1 1 5A9F7A44
P 10750 4050
F 0 "R8" V 10850 4050 50  0000 C CNN
F 1 "ULEDR" V 10650 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10680 4050 50  0001 C CNN
F 3 "" H 10750 4050 50  0000 C CNN
	1    10750 4050
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR020
U 1 1 5A9F7AB3
P 10750 3500
F 0 "#PWR020" H 10750 3350 50  0001 C CNN
F 1 "VPP" H 10750 3650 50  0000 C CNN
F 2 "" H 10750 3500 50  0000 C CNN
F 3 "" H 10750 3500 50  0000 C CNN
	1    10750 3500
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5A9F7D34
P 10200 4500
F 0 "R7" V 10300 4500 50  0000 C CNN
F 1 "RB_UL" V 10100 4500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 10130 4500 50  0001 C CNN
F 3 "" H 10200 4500 50  0000 C CNN
	1    10200 4500
	0    1    1    0   
$EndComp
Text GLabel 9950 4500 0    60   Input ~ 0
ULED_Pin
Text Notes 9250 5150 0    60   ~ 0
Piezo buzzer and user led
Text Notes 4850 3250 0    60   ~ 0
Core Processor:\nSTM32F051K8
Text Notes 2300 1450 0    60   ~ 0
Power supply:\n3.3V Nominal
Text Notes 2300 1600 0    60   ~ 0
13.2Vin MAX
$Comp
L SW_PUSH_SMALL SW6
U 1 1 5A9FAF01
P 8350 1400
F 0 "SW6" H 8300 1300 50  0000 C CNN
F 1 "Right" H 8350 1550 50  0000 C CNN
F 2 "custom_footprints:Button_SMD_2L_3x6x2.5mm" H 8350 1400 50  0001 C CNN
F 3 "" H 8350 1400 50  0000 C CNN
	1    8350 1400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW4
U 1 1 5A9FAF9F
P 7950 1000
F 0 "SW4" H 7900 900 50  0000 C CNN
F 1 "Up" H 7900 1150 50  0000 C CNN
F 2 "custom_footprints:Button_SMD_2L_3x6x2.5mm" H 7950 1000 50  0001 C CNN
F 3 "" H 7950 1000 50  0000 C CNN
	1    7950 1000
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW3
U 1 1 5A9FB105
P 7550 1400
F 0 "SW3" H 7500 1300 50  0000 C CNN
F 1 "Left" H 7550 1550 50  0000 C CNN
F 2 "custom_footprints:Button_SMD_2L_3x6x2.5mm" H 7550 1400 50  0001 C CNN
F 3 "" H 7550 1400 50  0000 C CNN
	1    7550 1400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW5
U 1 1 5A9FB1B2
P 7950 1800
F 0 "SW5" H 7900 1700 50  0000 C CNN
F 1 "Down" H 7950 1950 50  0000 C CNN
F 2 "custom_footprints:Button_SMD_2L_3x6x2.5mm" H 7950 1800 50  0001 C CNN
F 3 "" H 7950 1800 50  0000 C CNN
	1    7950 1800
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW7
U 1 1 5A9FB272
P 9150 1400
F 0 "SW7" H 9300 1510 50  0000 C CNN
F 1 "A" H 9100 1550 50  0000 C CNN
F 2 "custom_footprints:Button_SMD_2L_3x6x2.5mm" H 9150 1400 50  0001 C CNN
F 3 "" H 9150 1400 50  0000 C CNN
	1    9150 1400
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH_SMALL SW8
U 1 1 5A9FB335
P 9550 1800
F 0 "SW8" H 9700 1910 50  0000 C CNN
F 1 "B" H 9500 1950 50  0000 C CNN
F 2 "custom_footprints:Button_SMD_2L_3x6x2.5mm" H 9550 1800 50  0001 C CNN
F 3 "" H 9550 1800 50  0000 C CNN
	1    9550 1800
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 5A9FC650
P 7400 1400
F 0 "C17" H 7410 1470 50  0000 L CNN
F 1 "10n" H 7410 1320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7400 1400 50  0001 C CNN
F 3 "" H 7400 1400 50  0000 C CNN
	1    7400 1400
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C18
U 1 1 5A9FC845
P 7800 1000
F 0 "C18" H 7810 1070 50  0000 L CNN
F 1 "10n" H 7810 920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7800 1000 50  0001 C CNN
F 3 "" H 7800 1000 50  0000 C CNN
	1    7800 1000
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C19
U 1 1 5A9FC8F1
P 7800 1800
F 0 "C19" H 7810 1870 50  0000 L CNN
F 1 "10n" H 7810 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7800 1800 50  0001 C CNN
F 3 "" H 7800 1800 50  0000 C CNN
	1    7800 1800
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C20
U 1 1 5A9FC9A6
P 8200 1400
F 0 "C20" H 8210 1470 50  0000 L CNN
F 1 "10n" H 8210 1320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8200 1400 50  0001 C CNN
F 3 "" H 8200 1400 50  0000 C CNN
	1    8200 1400
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C21
U 1 1 5A9FCA5C
P 9000 1400
F 0 "C21" H 9010 1470 50  0000 L CNN
F 1 "10n" H 9010 1320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9000 1400 50  0001 C CNN
F 3 "" H 9000 1400 50  0000 C CNN
	1    9000 1400
	-1   0    0    -1  
$EndComp
$Comp
L C_Small C22
U 1 1 5A9FCB13
P 9400 1800
F 0 "C22" H 9410 1870 50  0000 L CNN
F 1 "10n" H 9410 1720 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9400 1800 50  0001 C CNN
F 3 "" H 9400 1800 50  0000 C CNN
	1    9400 1800
	-1   0    0    -1  
$EndComp
$Comp
L R R10
U 1 1 5A9FCCE3
P 7200 1250
F 0 "R10" V 7300 1200 50  0000 C CNN
F 1 "DB" V 7200 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7130 1250 50  0001 C CNN
F 3 "" H 7200 1250 50  0000 C CNN
	1    7200 1250
	0    1    1    0   
$EndComp
$Comp
L R R11
U 1 1 5A9FD031
P 7600 850
F 0 "R11" V 7700 800 50  0000 C CNN
F 1 "DB" V 7600 850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 850 50  0001 C CNN
F 3 "" H 7600 850 50  0000 C CNN
	1    7600 850 
	0    1    1    0   
$EndComp
$Comp
L R R12
U 1 1 5A9FD0EB
P 7600 1650
F 0 "R12" V 7700 1600 50  0000 C CNN
F 1 "DB" V 7600 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 1650 50  0001 C CNN
F 3 "" H 7600 1650 50  0000 C CNN
	1    7600 1650
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5A9FD1B0
P 8000 1250
F 0 "R13" V 8100 1200 50  0000 C CNN
F 1 "DB" V 8000 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7930 1250 50  0001 C CNN
F 3 "" H 8000 1250 50  0000 C CNN
	1    8000 1250
	0    1    1    0   
$EndComp
$Comp
L R R14
U 1 1 5A9FD278
P 8800 1250
F 0 "R14" V 8900 1200 50  0000 C CNN
F 1 "DB" V 8800 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8730 1250 50  0001 C CNN
F 3 "" H 8800 1250 50  0000 C CNN
	1    8800 1250
	0    1    1    0   
$EndComp
$Comp
L R R15
U 1 1 5A9FD33F
P 9200 1650
F 0 "R15" V 9300 1600 50  0000 C CNN
F 1 "DB" V 9200 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9130 1650 50  0001 C CNN
F 3 "" H 9200 1650 50  0000 C CNN
	1    9200 1650
	0    1    1    0   
$EndComp
Text GLabel 7400 900  3    60   Input ~ 0
BU
Text GLabel 7000 1300 3    60   Input ~ 0
BL
Text GLabel 7400 1700 3    60   Input ~ 0
BD
Text GLabel 7800 1300 3    60   Input ~ 0
BR
Text GLabel 8600 1300 3    60   Input ~ 0
BB
Text GLabel 9000 1700 3    60   Input ~ 0
BA
$Comp
L GND #PWR021
U 1 1 5A9FF941
P 8450 2150
F 0 "#PWR021" H 8450 1900 50  0001 C CNN
F 1 "GND" H 8450 2000 50  0000 C CNN
F 2 "" H 8450 2150 50  0000 C CNN
F 3 "" H 8450 2150 50  0000 C CNN
	1    8450 2150
	1    0    0    -1  
$EndComp
Text GLabel 8250 4100 2    60   Input ~ 0
ULED_Pin
Text GLabel 8250 4200 2    60   Input ~ 0
Piezo_Pin
Text GLabel 8150 4100 0    60   Input ~ 0
A12
Text GLabel 8150 4200 0    60   Input ~ 0
B0
Text GLabel 6100 5600 1    60   Input ~ 0
A2
Text GLabel 6200 5600 1    60   Input ~ 0
A3
Text GLabel 6300 5600 1    60   Input ~ 0
A4
Text GLabel 6400 5600 1    60   Input ~ 0
A5
Text GLabel 6500 5600 1    60   Input ~ 0
A6
Text GLabel 6600 5600 1    60   Input ~ 0
A7
Text GLabel 6600 5700 3    60   Input ~ 0
BB
Text GLabel 6500 5700 3    60   Input ~ 0
BA
Text GLabel 6400 5700 3    60   Input ~ 0
BR
Text GLabel 6300 5700 3    60   Input ~ 0
BD
Text GLabel 6200 5700 3    60   Input ~ 0
BU
Text GLabel 6100 5700 3    60   Input ~ 0
BL
Text GLabel 8600 6200 0    60   Input ~ 0
A8
Text GLabel 8600 6100 0    60   Input ~ 0
A9
Text GLabel 8600 5400 0    60   Input ~ 0
A10
Text GLabel 8600 5300 0    60   Input ~ 0
A11
Text GLabel 7350 6250 0    60   Input ~ 0
A0
Text GLabel 7350 6150 0    60   Input ~ 0
A1
Text GLabel 7350 6050 0    60   Input ~ 0
B1
Text GLabel 8300 4750 0    60   Input ~ 0
A15
Text GLabel 8300 4650 0    60   Input ~ 0
B3
Text GLabel 8300 4550 0    60   Input ~ 0
B4
Text GLabel 8300 4450 0    60   Input ~ 0
B5
$Comp
L CONN_01X04 P7
U 1 1 5AA09B7E
P 5800 2000
F 0 "P7" H 5800 2250 50  0000 C CNN
F 1 "I2C_Bus" V 5900 2000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 5800 2000 50  0001 C CNN
F 3 "" H 5800 2000 50  0000 C CNN
	1    5800 2000
	0    1    1    0   
$EndComp
$Comp
L VPP #PWR022
U 1 1 5AA09DE0
P 6050 1700
F 0 "#PWR022" H 6050 1550 50  0001 C CNN
F 1 "VPP" H 6050 1850 50  0000 C CNN
F 2 "" H 6050 1700 50  0000 C CNN
F 3 "" H 6050 1700 50  0000 C CNN
	1    6050 1700
	0    1    1    0   
$EndComp
$Comp
L GND #PWR023
U 1 1 5AA09E70
P 6050 1500
F 0 "#PWR023" H 6050 1250 50  0001 C CNN
F 1 "GND" H 6050 1350 50  0000 C CNN
F 2 "" H 6050 1500 50  0000 C CNN
F 3 "" H 6050 1500 50  0000 C CNN
	1    6050 1500
	0    -1   -1   0   
$EndComp
Text GLabel 5750 1700 1    60   Input ~ 0
SCL
Text GLabel 5650 1700 1    60   Input ~ 0
SDA
$Comp
L GND #PWR024
U 1 1 5A9FB8BC
P 8100 4850
F 0 "#PWR024" H 8100 4600 50  0001 C CNN
F 1 "GND" H 8100 4700 50  0000 C CNN
F 2 "" H 8100 4850 50  0000 C CNN
F 3 "" H 8100 4850 50  0000 C CNN
	1    8100 4850
	0    1    1    0   
$EndComp
$Comp
L VPP #PWR025
U 1 1 5A9FB94A
P 8100 4350
F 0 "#PWR025" H 8100 4200 50  0001 C CNN
F 1 "VPP" H 8100 4500 50  0000 C CNN
F 2 "" H 8100 4350 50  0000 C CNN
F 3 "" H 8100 4350 50  0000 C CNN
	1    8100 4350
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X06 P5
U 1 1 5A9FB9D8
P 8800 4600
F 0 "P5" H 8800 4950 50  0000 C CNN
F 1 "GPIO2" V 8900 4600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 8800 4600 50  0001 C CNN
F 3 "" H 8800 4600 50  0000 C CNN
	1    8800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1650 7400 1700
Wire Wire Line
	7450 1650 7400 1650
Connection ~ 7800 1650
Wire Wire Line
	7800 1700 7800 1650
Wire Wire Line
	7850 1650 7850 1700
Wire Wire Line
	7750 1650 7850 1650
Connection ~ 8200 1250
Wire Wire Line
	8200 1300 8200 1250
Wire Wire Line
	8250 1250 8250 1300
Wire Wire Line
	8150 1250 8250 1250
Wire Wire Line
	7800 1250 7850 1250
Wire Wire Line
	7800 1300 7800 1250
Connection ~ 7400 1250
Wire Wire Line
	7400 1250 7400 1300
Wire Wire Line
	7450 1250 7450 1300
Wire Wire Line
	7350 1250 7450 1250
Wire Wire Line
	7000 1250 7000 1300
Wire Wire Line
	7050 1250 7000 1250
Wire Wire Line
	7400 850  7400 900 
Wire Wire Line
	7450 850  7400 850 
Connection ~ 7800 850 
Wire Wire Line
	7800 900  7800 850 
Wire Wire Line
	7850 850  7850 900 
Wire Wire Line
	7750 850  7850 850 
Connection ~ 9000 1250
Wire Wire Line
	9000 1300 9000 1250
Wire Wire Line
	9050 1250 9050 1300
Wire Wire Line
	8950 1250 9050 1250
Wire Wire Line
	8600 1250 8600 1300
Wire Wire Line
	8650 1250 8600 1250
Connection ~ 9400 1650
Wire Wire Line
	9450 1650 9450 1700
Wire Wire Line
	9400 1650 9400 1700
Wire Wire Line
	9350 1650 9450 1650
Wire Wire Line
	9000 1650 9050 1650
Wire Wire Line
	9000 1700 9000 1650
Wire Wire Line
	9950 4500 10050 4500
Wire Wire Line
	10450 4500 10350 4500
Wire Wire Line
	10750 3500 10750 3600
Wire Wire Line
	10750 3800 10750 3900
Wire Wire Line
	10750 4300 10750 4200
Wire Wire Line
	10750 4800 10750 4700
Wire Wire Line
	9950 5950 10050 5950
Wire Wire Line
	10750 5250 10750 5350
Wire Wire Line
	10750 5750 10750 5650
Wire Wire Line
	10350 5950 10450 5950
Wire Wire Line
	10750 6250 10750 6150
Wire Wire Line
	6250 2550 6350 2550
Connection ~ 5850 2550
Wire Wire Line
	5850 2550 5950 2550
Wire Wire Line
	5850 2450 5850 2650
Connection ~ 5750 2550
Wire Wire Line
	5750 2450 5750 2650
Wire Wire Line
	5650 2550 5750 2550
Wire Wire Line
	5250 2550 5350 2550
Connection ~ 4400 6150
Connection ~ 4500 6150
Connection ~ 4700 6250
Wire Wire Line
	4800 6250 4800 6150
Wire Wire Line
	4800 6150 4750 6150
Wire Wire Line
	4150 6150 4000 6150
Wire Wire Line
	4400 6150 4350 6150
Wire Wire Line
	4400 6150 4400 6800
Wire Wire Line
	4500 6150 4500 6800
Wire Wire Line
	4550 6150 4500 6150
Connection ~ 2450 5850
Wire Wire Line
	2200 5950 2200 5850
Connection ~ 2200 6250
Wire Wire Line
	2200 6250 2200 6150
Wire Wire Line
	2450 5950 2450 5850
Connection ~ 2450 6250
Wire Wire Line
	2450 6250 2450 6150
Connection ~ 2800 6050
Connection ~ 4000 6250
Connection ~ 3900 6750
Wire Wire Line
	3900 6800 3900 6750
Connection ~ 4000 6750
Wire Wire Line
	4000 6150 4000 6800
Connection ~ 4100 6750
Wire Wire Line
	4100 6750 4100 6800
Wire Wire Line
	4200 6750 4200 6800
Wire Wire Line
	3800 6750 4200 6750
Wire Wire Line
	3800 6800 3800 6750
Wire Wire Line
	1250 1100 1450 1100
Wire Wire Line
	1350 1100 1350 1000
Connection ~ 1350 1100
Wire Wire Line
	1750 1000 1750 1100
Wire Wire Line
	1750 1100 1650 1100
Wire Wire Line
	1550 2000 1550 1700
Wire Wire Line
	1150 2000 1800 2000
Wire Wire Line
	1700 2000 1700 1900
Wire Wire Line
	1550 1500 1550 1200
Wire Wire Line
	1550 1200 2000 1200
Wire Wire Line
	1900 1000 1900 1300
Connection ~ 1900 1200
Wire Wire Line
	2000 2000 2200 2000
Wire Wire Line
	2100 1900 2100 2300
Connection ~ 1700 2000
Connection ~ 2100 2000
Connection ~ 1550 2000
Wire Wire Line
	1250 1200 1350 1200
Wire Wire Line
	1350 1200 1350 2300
Connection ~ 1350 2000
Wire Wire Line
	1350 2300 1400 2300
Wire Wire Line
	1800 2300 1700 2300
Wire Wire Line
	2100 2300 2000 2300
Wire Wire Line
	5650 3650 5650 3900
Wire Wire Line
	5650 3900 5750 3900
Wire Wire Line
	6200 3350 6200 3450
Wire Wire Line
	4700 3350 6300 3350
Wire Wire Line
	5650 3350 5650 3450
Wire Wire Line
	6300 3350 6300 3450
Connection ~ 6200 3350
Wire Wire Line
	5800 3600 5800 3750
Wire Wire Line
	5800 3750 5650 3750
Connection ~ 5650 3750
Connection ~ 5650 3350
Wire Wire Line
	7450 4000 7350 4000
Wire Wire Line
	7350 3900 7450 3900
Wire Wire Line
	6400 3350 6400 3450
Wire Wire Line
	6500 3450 6500 3350
Wire Wire Line
	6600 3350 6600 3450
Wire Wire Line
	6700 3450 6700 3350
Wire Wire Line
	6800 3350 6800 3450
Wire Wire Line
	6900 3450 6900 3350
Wire Wire Line
	5500 3650 5500 3700
Wire Wire Line
	5200 3650 5500 3650
Wire Wire Line
	5200 3650 5200 3700
Wire Wire Line
	5350 3350 5350 3650
Connection ~ 5350 3350
Connection ~ 5350 3650
Wire Wire Line
	5200 3900 5200 4100
Wire Wire Line
	5200 3950 5250 3950
Wire Wire Line
	5500 3900 5500 4000
Wire Wire Line
	5500 3950 5450 3950
Wire Wire Line
	5500 4000 5750 4000
Connection ~ 5500 3950
Wire Wire Line
	5200 4100 5750 4100
Connection ~ 5200 3950
Wire Wire Line
	5400 4200 5750 4200
Wire Wire Line
	5100 4300 5750 4300
Wire Wire Line
	5300 4350 5300 4300
Connection ~ 5300 4300
Wire Wire Line
	5450 4300 5450 4350
Connection ~ 5450 4300
Wire Wire Line
	5450 4200 5450 4250
Wire Wire Line
	5450 4250 5050 4250
Wire Wire Line
	5050 4250 5050 4300
Wire Wire Line
	5050 4300 5000 4300
Connection ~ 5450 4200
Wire Wire Line
	4750 4300 4800 4300
Wire Wire Line
	4750 3350 4750 4600
Wire Wire Line
	4750 4200 4800 4200
Connection ~ 4750 3350
Connection ~ 4750 4200
Wire Wire Line
	5450 4600 5450 4550
Wire Wire Line
	4750 4600 5450 4600
Wire Wire Line
	5300 4600 5300 4550
Connection ~ 4750 4300
Connection ~ 5300 4600
Wire Wire Line
	5100 4400 5100 4300
Wire Wire Line
	5700 4650 5700 4600
Wire Wire Line
	5700 4600 5750 4600
Wire Wire Line
	5650 4850 5650 4500
Wire Wire Line
	5650 4500 5750 4500
Wire Wire Line
	5750 4400 5600 4400
Wire Wire Line
	5600 4400 5600 4650
Wire Wire Line
	7300 4900 7300 4750
Wire Wire Line
	7300 4750 7450 4750
Wire Wire Line
	7450 4600 7450 4850
Wire Wire Line
	7450 4600 7350 4600
Connection ~ 7450 4750
Wire Wire Line
	7450 5050 7450 5250
Wire Wire Line
	7450 5150 6900 5150
Wire Wire Line
	6900 5150 6900 5050
Connection ~ 7450 5150
Wire Wire Line
	6200 5050 6200 5150
Wire Wire Line
	6300 5150 6300 5050
Wire Wire Line
	6400 5050 6400 5150
Wire Wire Line
	6500 5150 6500 5050
Wire Wire Line
	6600 5050 6600 5150
Wire Wire Line
	6700 5150 6700 5050
Wire Wire Line
	6800 5050 6800 5150
Wire Wire Line
	7450 4100 7350 4100
Wire Wire Line
	7350 4200 7450 4200
Wire Wire Line
	7450 4300 7350 4300
Wire Wire Line
	7350 4400 7450 4400
Wire Wire Line
	7350 4500 7450 4500
Wire Wire Line
	7750 3350 7950 3350
Wire Wire Line
	7950 3350 7950 3050
Wire Wire Line
	7850 3050 7850 3150
Wire Wire Line
	7850 3150 7750 3150
Wire Wire Line
	8150 3150 8150 3050
Wire Wire Line
	8050 3050 8050 3150
Wire Wire Line
	4600 6700 4800 6700
Wire Wire Line
	4700 6250 4700 6800
Wire Wire Line
	4600 6700 4600 6800
Connection ~ 4700 6700
Wire Wire Line
	1900 6550 1900 6500
Wire Wire Line
	1900 6500 2000 6500
Wire Wire Line
	2000 6500 2000 6800
Wire Wire Line
	1900 6800 1900 6750
Wire Wire Line
	2100 6650 2100 6800
Wire Wire Line
	2100 6450 2100 6400
Wire Wire Line
	2100 6400 2200 6400
Wire Wire Line
	2200 6400 2200 6800
Wire Wire Line
	1700 6250 4800 6250
Wire Wire Line
	1800 6250 1800 6800
Wire Wire Line
	2500 6250 2500 6800
Connection ~ 1800 6250
Wire Wire Line
	1700 6050 2800 6050
Wire Wire Line
	2300 6050 2300 6800
Wire Wire Line
	2600 5600 2600 6800
Connection ~ 2300 6050
Connection ~ 2500 6250
Wire Wire Line
	4300 6250 4300 6300
Connection ~ 4300 6250
Wire Wire Line
	4300 6600 4300 6800
Wire Wire Line
	2800 6650 2800 6800
Wire Wire Line
	2800 6050 2800 6350
Connection ~ 2600 6050
Wire Wire Line
	2700 6250 2700 6800
Connection ~ 2700 6250
Wire Wire Line
	2900 6250 2900 6800
Connection ~ 2900 6250
Wire Wire Line
	3000 6250 3000 6800
Connection ~ 3000 6250
Wire Wire Line
	3200 6250 3200 6800
Connection ~ 3200 6250
Wire Wire Line
	3350 5850 3400 5850
Wire Wire Line
	3400 5850 3400 6800
Connection ~ 3400 6250
Wire Wire Line
	2200 5850 2750 5850
Wire Wire Line
	2800 5600 2600 5600
Connection ~ 2600 5850
Wire Wire Line
	3000 5600 3100 5600
Wire Wire Line
	3100 5600 3100 6800
Wire Wire Line
	3050 5850 3150 5850
Connection ~ 3100 5850
Wire Wire Line
	3300 6250 3300 6800
Connection ~ 3300 6250
Wire Wire Line
	3700 6750 3700 6800
Wire Wire Line
	3600 6750 3700 6750
Wire Wire Line
	3600 6750 3600 6800
Wire Wire Line
	3500 6800 3500 6700
Wire Wire Line
	3650 6700 3650 6750
Connection ~ 3650 6750
Wire Wire Line
	7250 1950 9650 1950
Wire Wire Line
	8050 1950 8050 1900
Wire Wire Line
	7800 1950 7800 1900
Wire Wire Line
	7650 1550 7650 1500
Wire Wire Line
	7250 1550 7700 1550
Wire Wire Line
	7400 1550 7400 1500
Wire Wire Line
	7250 1950 7250 1550
Connection ~ 7800 1950
Connection ~ 7400 1550
Wire Wire Line
	8200 1500 8200 1550
Wire Wire Line
	8200 1550 8450 1550
Wire Wire Line
	8450 1500 8450 2150
Connection ~ 8450 1550
Connection ~ 8050 1950
Wire Wire Line
	7800 1100 7800 1150
Wire Wire Line
	7700 1150 8050 1150
Wire Wire Line
	8050 1150 8050 1100
Wire Wire Line
	7700 1550 7700 1150
Connection ~ 7650 1550
Connection ~ 7800 1150
Wire Wire Line
	9650 1950 9650 1900
Connection ~ 8450 1950
Wire Wire Line
	9400 1900 9400 1950
Connection ~ 9400 1950
Wire Wire Line
	9250 1550 9250 1500
Wire Wire Line
	8750 1550 9250 1550
Wire Wire Line
	9000 1550 9000 1500
Wire Wire Line
	8750 1550 8750 1950
Connection ~ 8750 1950
Connection ~ 9000 1550
Wire Wire Line
	8250 4100 8150 4100
Wire Wire Line
	8150 4200 8250 4200
Wire Wire Line
	6100 5600 6100 5700
Wire Wire Line
	6200 5700 6200 5600
Wire Wire Line
	6300 5600 6300 5700
Wire Wire Line
	6400 5700 6400 5600
Wire Wire Line
	6500 5600 6500 5700
Wire Wire Line
	6600 5700 6600 5600
Wire Wire Line
	5950 1800 5950 1700
Wire Wire Line
	5950 1700 6050 1700
Wire Wire Line
	6050 1500 5850 1500
Wire Wire Line
	5850 1500 5850 1800
Wire Wire Line
	5650 1700 5650 1800
Wire Wire Line
	5750 1800 5750 1700
Wire Wire Line
	8100 4850 8600 4850
Wire Wire Line
	8100 4350 8600 4350
Wire Wire Line
	8600 4450 8300 4450
Wire Wire Line
	8300 4550 8600 4550
Wire Wire Line
	8600 4650 8300 4650
Wire Wire Line
	8300 4750 8600 4750
$Comp
L CONN_01X04 P8
U 1 1 5A9FD9FB
P 8900 6150
F 0 "P8" H 8900 6400 50  0000 C CNN
F 1 "JSTIO1" V 9000 6150 50  0000 C CNN
F 2 "custom_footprints:JST_PH_2.0-4" H 8900 6150 50  0001 C CNN
F 3 "" H 8900 6150 50  0000 C CNN
	1    8900 6150
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR026
U 1 1 5A9FDC9F
P 8700 5950
F 0 "#PWR026" H 8700 5800 50  0001 C CNN
F 1 "VPP" H 8700 6100 50  0000 C CNN
F 2 "" H 8700 5950 50  0000 C CNN
F 3 "" H 8700 5950 50  0000 C CNN
	1    8700 5950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR027
U 1 1 5A9FDD2D
P 8700 6350
F 0 "#PWR027" H 8700 6100 50  0001 C CNN
F 1 "GND" H 8700 6200 50  0000 C CNN
F 2 "" H 8700 6350 50  0000 C CNN
F 3 "" H 8700 6350 50  0000 C CNN
	1    8700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5950 8700 6000
Wire Wire Line
	8700 6300 8700 6350
$Comp
L CONN_01X04 P6
U 1 1 5A9FE1F6
P 8900 5350
F 0 "P6" H 8900 5600 50  0000 C CNN
F 1 "JSTIO2" V 9000 5350 50  0000 C CNN
F 2 "custom_footprints:JST_PH_2.0-4" H 8900 5350 50  0001 C CNN
F 3 "" H 8900 5350 50  0000 C CNN
	1    8900 5350
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR028
U 1 1 5A9FE1FC
P 8700 5150
F 0 "#PWR028" H 8700 5000 50  0001 C CNN
F 1 "VPP" H 8700 5300 50  0000 C CNN
F 2 "" H 8700 5150 50  0000 C CNN
F 3 "" H 8700 5150 50  0000 C CNN
	1    8700 5150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5A9FE202
P 8700 5550
F 0 "#PWR029" H 8700 5300 50  0001 C CNN
F 1 "GND" H 8700 5400 50  0000 C CNN
F 2 "" H 8700 5550 50  0000 C CNN
F 3 "" H 8700 5550 50  0000 C CNN
	1    8700 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5150 8700 5200
Wire Wire Line
	8700 5500 8700 5550
Wire Wire Line
	8600 5400 8700 5400
Wire Wire Line
	8600 5300 8700 5300
Wire Wire Line
	8600 6200 8700 6200
Wire Wire Line
	8700 6100 8600 6100
$Comp
L CONN_01X05 P4
U 1 1 5A9FF7BC
P 7650 6150
F 0 "P4" H 7650 6450 50  0000 C CNN
F 1 "GPIO1" V 7750 6150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 7650 6150 50  0001 C CNN
F 3 "" H 7650 6150 50  0000 C CNN
	1    7650 6150
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR030
U 1 1 5A9FFB67
P 7200 5950
F 0 "#PWR030" H 7200 5800 50  0001 C CNN
F 1 "VPP" H 7200 6100 50  0000 C CNN
F 2 "" H 7200 5950 50  0000 C CNN
F 3 "" H 7200 5950 50  0000 C CNN
	1    7200 5950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR031
U 1 1 5A9FFBF9
P 7200 6350
F 0 "#PWR031" H 7200 6100 50  0001 C CNN
F 1 "GND" H 7200 6200 50  0000 C CNN
F 2 "" H 7200 6350 50  0000 C CNN
F 3 "" H 7200 6350 50  0000 C CNN
	1    7200 6350
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 6350 7450 6350
Wire Wire Line
	7450 6250 7350 6250
Wire Wire Line
	7350 6150 7450 6150
Wire Wire Line
	7450 6050 7350 6050
Wire Wire Line
	7200 5950 7450 5950
$EndSCHEMATC