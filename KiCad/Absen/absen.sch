EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:hub75
LIBS:absen-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Absen led module hub75 adapter"
Date "2018-02-22"
Rev "A"
Comp "Helsinki Hacklab"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 5A8E64E6
P 2150 1350
F 0 "#PWR01" H 2150 1100 50  0001 C CNN
F 1 "GND" H 2150 1200 50  0000 C CNN
F 2 "" H 2150 1350 50  0001 C CNN
F 3 "" H 2150 1350 50  0001 C CNN
	1    2150 1350
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x02 J6
U 1 1 5A8E7552
P 1700 1250
F 0 "J6" H 1700 1350 50  0000 C CNN
F 1 "PWR IN" H 1700 1050 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1700 1250 50  0001 C CNN
F 3 "" H 1700 1250 50  0001 C CNN
	1    1700 1250
	-1   0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG02
U 1 1 5A8E8F48
P 2150 1250
F 0 "#FLG02" H 2150 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 1400 50  0001 C CNN
F 2 "" H 2150 1250 50  0001 C CNN
F 3 "" H 2150 1250 50  0001 C CNN
	1    2150 1250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 5A8E8F4E
P 2150 1250
F 0 "#PWR03" H 2150 1100 50  0001 C CNN
F 1 "+5V" H 2150 1390 50  0000 C CNN
F 2 "" H 2150 1250 50  0001 C CNN
F 3 "" H 2150 1250 50  0001 C CNN
	1    2150 1250
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG04
U 1 1 5A8E917B
P 2150 1350
F 0 "#FLG04" H 2150 1425 50  0001 C CNN
F 1 "PWR_FLAG" H 2150 1500 50  0001 C CNN
F 2 "" H 2150 1350 50  0001 C CNN
F 3 "" H 2150 1350 50  0001 C CNN
	1    2150 1350
	0    1    1    0   
$EndComp
Text Label 1950 1250 0    60   ~ 0
VCC
Text Label 1950 1350 0    60   ~ 0
GND
$Comp
L HUB75_IN J1
U 1 1 5A8EC972
P 1500 2650
F 0 "J1" H 1800 3550 50  0000 C CNN
F 1 "HUB75_IN" H 1800 1250 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x08_Pitch2.54mm" H 450 2650 50  0001 C CNN
F 3 "" H 450 2650 50  0001 C CNN
	1    1500 2650
	1    0    0    -1  
$EndComp
$Comp
L ABSEN_OUT ABSEN_TOP1
U 1 1 5A8EF60A
P 8500 3250
F 0 "ABSEN_TOP1" H 9400 5600 50  0000 C CNN
F 1 "ABSEN_OUT" H 9400 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 8400 3500 50  0001 C CNN
F 3 "" H 8400 3500 50  0001 C CNN
	1    8500 3250
	1    0    0    -1  
$EndComp
$Comp
L ABSEN_OUT ABSEN_BOTTOM1
U 1 1 5A8EF822
P 9700 3250
F 0 "ABSEN_BOTTOM1" H 10600 5600 50  0000 C CNN
F 1 "ABSEN_OUT" H 10600 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 9600 3500 50  0001 C CNN
F 3 "" H 9600 3500 50  0001 C CNN
	1    9700 3250
	1    0    0    -1  
$EndComp
$Comp
L ABSEN_OUT ABSEN_TOP2
U 1 1 5A8EFB27
P 8500 5850
F 0 "ABSEN_TOP2" H 9400 8200 50  0000 C CNN
F 1 "ABSEN_OUT" H 9400 6250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 8400 6100 50  0001 C CNN
F 3 "https://www.flickr.com/photos/helsinkihacklab/40242725421/in/dateposted-public/" H 8400 6100 50  0001 C CNN
	1    8500 5850
	1    0    0    -1  
$EndComp
Text Label 2400 2700 0    60   ~ 0
A
Text Label 2400 2800 0    60   ~ 0
B
Text Label 2400 2900 0    60   ~ 0
C
Text Label 2400 3200 0    60   ~ 0
OE
Text Label 2400 3300 0    60   ~ 0
CLK
Text Label 2400 3400 0    60   ~ 0
LATCH
Text Label 2400 1950 0    60   ~ 0
R1
Text Label 2400 2050 0    60   ~ 0
G1
Text Label 2400 2150 0    60   ~ 0
B1
Text Label 2400 2350 0    60   ~ 0
R2
Text Label 2400 2450 0    60   ~ 0
G2
Text Label 2400 2550 0    60   ~ 0
B2
Text Label 8900 1050 0    60   ~ 0
R1
Text Label 8900 1150 0    60   ~ 0
G1
Text Label 8900 1250 0    60   ~ 0
B1
Text Label 8900 1400 0    60   ~ 0
A
Text Label 8900 1500 0    60   ~ 0
B
Text Label 10100 1050 0    60   ~ 0
R1
Text Label 10100 1150 0    60   ~ 0
G1
Text Label 10100 1250 0    60   ~ 0
B1
Text Label 10100 1400 0    60   ~ 0
A
Text Label 10100 1500 0    60   ~ 0
B
NoConn ~ 2150 3000
Text Label 8850 3650 0    60   ~ 0
R2
Text Label 8850 3750 0    60   ~ 0
G2
Text Label 8850 3850 0    60   ~ 0
B2
Text Label 8850 4000 0    60   ~ 0
A
Text Label 8850 4100 0    60   ~ 0
B
Text Label 10100 3650 0    60   ~ 0
R2
Text Label 10100 3750 0    60   ~ 0
G2
Text Label 10100 3850 0    60   ~ 0
B2
Text Label 10100 4000 0    60   ~ 0
A
Text Label 10100 4100 0    60   ~ 0
B
Text Label 8850 1750 0    60   ~ 0
CLK
Text Label 8850 1850 0    60   ~ 0
LATCH
Text Label 8850 1950 0    60   ~ 0
OE1
Text Label 8850 4350 0    60   ~ 0
CLK
Text Label 8850 4450 0    60   ~ 0
LATCH
Text Label 8850 4550 0    60   ~ 0
OE1
Text Label 10100 1750 0    60   ~ 0
CLK
Text Label 10100 1850 0    60   ~ 0
LATCH
Text Label 10100 1950 0    60   ~ 0
OE2
Text Label 10100 4350 0    60   ~ 0
CLK
Text Label 10100 4450 0    60   ~ 0
LATCH
Text Label 10100 4550 0    60   ~ 0
OE2
$Comp
L ABSEN_OUT ABSEN_BOTTOM2
U 1 1 5A8EFBE2
P 9700 5850
F 0 "ABSEN_BOTTOM2" H 10600 8200 50  0000 C CNN
F 1 "ABSEN_OUT" H 10600 6250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 9600 6100 50  0001 C CNN
F 3 "" H 9600 6100 50  0001 C CNN
	1    9700 5850
	1    0    0    -1  
$EndComp
NoConn ~ 10300 4200
NoConn ~ 9100 4200
NoConn ~ 9100 1600
NoConn ~ 10300 1600
$Comp
L 7402 U1
U 1 1 5A91F414
P 2750 5550
F 0 "U1" H 2750 5600 50  0000 C CNN
F 1 "7402" H 2800 5500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 2750 5550 50  0001 C CNN
F 3 "https://www.mouser.com/ds/2/308/MC74VHCT02A-D-110052.pdf" H 2750 5550 50  0001 C CNN
F 4 "MC74VHCT02ADR2G" H 2750 5550 60  0001 C CNN "Mfg code"
	1    2750 5550
	1    0    0    -1  
$EndComp
$Comp
L 7402 U1
U 4 1 5A91F688
P 3950 5550
F 0 "U1" H 3950 5600 50  0000 C CNN
F 1 "7402" H 4000 5500 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3950 5550 50  0001 C CNN
F 3 "" H 3950 5550 50  0001 C CNN
	4    3950 5550
	1    0    0    -1  
$EndComp
$Comp
L 7402 U1
U 3 1 5A91F721
P 3950 6000
F 0 "U1" H 3950 6050 50  0000 C CNN
F 1 "7402" H 4000 5950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 3950 6000 50  0001 C CNN
F 3 "" H 3950 6000 50  0001 C CNN
	3    3950 6000
	1    0    0    -1  
$EndComp
Text Label 700  5700 0    60   ~ 0
OE
Text Label 700  5900 0    60   ~ 0
C
Text Label 4850 6000 0    60   ~ 0
OE1
Text Label 4850 5550 0    60   ~ 0
OE2
Text Label 2650 6000 0    60   ~ 0
!OE1
Text Label 3350 5550 0    60   ~ 0
!OE2
Text Notes 1550 6450 0    60   ~ 0
OE\n
Text Notes 1750 6450 0    60   ~ 0
C
Text Notes 1900 6450 0    60   ~ 0
!OE1
Text Notes 2200 6450 0    60   ~ 0
!OE2
Text Notes 2500 6450 0    60   ~ 0
OE1
Text Notes 2800 6450 0    60   ~ 0
OE2
Text Notes 1600 6850 0    60   ~ 0
0\n0\n1\n1
Text Notes 1750 6850 0    60   ~ 0
0\n1\n0\n1
Text Notes 1950 6850 0    60   ~ 0
1\n0\n0\n0
Text Notes 2250 6850 0    60   ~ 0
0\n1\n0\n0
Text Notes 2550 6850 0    60   ~ 0
0\n1\n1\n1
Text Notes 2850 6850 0    60   ~ 0
1\n0\n0\n0
$Comp
L 7402 U1
U 2 1 5A91F381
P 1550 5800
F 0 "U1" H 1550 5850 50  0000 C CNN
F 1 "7402" H 1600 5750 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-14_3.9x8.7mm_Pitch1.27mm" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	2    1550 5800
	1    0    0    -1  
$EndComp
Connection ~ 2150 1250
Connection ~ 2150 1350
Wire Wire Line
	1900 1250 2150 1250
Wire Wire Line
	1900 1350 2150 1350
Wire Wire Line
	2150 2700 2400 2700
Wire Wire Line
	2150 2800 2400 2800
Wire Wire Line
	2150 2900 2400 2900
Wire Wire Line
	2150 3200 2400 3200
Wire Wire Line
	2150 3300 2400 3300
Wire Wire Line
	2150 3400 2400 3400
Wire Wire Line
	2150 2550 2400 2550
Wire Wire Line
	2150 2450 2400 2450
Wire Wire Line
	2150 2350 2400 2350
Wire Wire Line
	2150 2150 2400 2150
Wire Wire Line
	2150 2050 2400 2050
Wire Wire Line
	2150 1950 2400 1950
Wire Wire Line
	9100 1050 8900 1050
Wire Wire Line
	9100 1150 8900 1150
Wire Wire Line
	9100 1250 8900 1250
Wire Wire Line
	9100 1400 8900 1400
Wire Wire Line
	9100 1500 8900 1500
Wire Wire Line
	10300 1050 10100 1050
Wire Wire Line
	10300 1150 10100 1150
Wire Wire Line
	10300 1250 10100 1250
Wire Wire Line
	10300 1400 10100 1400
Wire Wire Line
	10300 1500 10100 1500
Wire Wire Line
	10300 1750 10100 1750
Wire Wire Line
	10300 1850 10100 1850
Wire Wire Line
	10300 1950 10100 1950
Wire Wire Line
	9100 3650 8850 3650
Wire Wire Line
	9100 3750 8850 3750
Wire Wire Line
	9100 3850 8850 3850
Wire Wire Line
	9100 4000 8850 4000
Wire Wire Line
	9100 4100 8850 4100
Wire Wire Line
	9100 4350 8850 4350
Wire Wire Line
	9100 4450 8850 4450
Wire Wire Line
	9100 4550 8850 4550
Wire Wire Line
	8850 1750 9100 1750
Wire Wire Line
	9100 1850 8850 1850
Wire Wire Line
	8850 1950 9100 1950
Wire Wire Line
	10300 3650 10100 3650
Wire Wire Line
	10300 3750 10100 3750
Wire Wire Line
	10300 4000 10100 4000
Wire Wire Line
	10300 4100 10100 4100
Wire Wire Line
	10300 4350 10100 4350
Wire Wire Line
	10300 4450 10100 4450
Wire Wire Line
	10300 4550 10100 4550
Wire Wire Line
	10300 3850 10100 3850
Wire Wire Line
	900  5550 2150 5550
Wire Wire Line
	2150 5550 2150 5450
Wire Wire Line
	2150 5650 2150 6000
Wire Wire Line
	2150 6000 3350 6000
Wire Wire Line
	3350 5900 3350 6100
Connection ~ 2150 5800
Connection ~ 3350 6000
Wire Wire Line
	3350 5450 3350 5650
Connection ~ 3350 5550
Wire Wire Line
	950  5700 700  5700
Wire Wire Line
	950  5900 700  5900
Wire Wire Line
	4550 6000 4850 6000
Wire Wire Line
	4550 5550 4850 5550
Wire Notes Line
	1700 6350 1700 7000
Wire Notes Line
	1850 6350 1850 7000
Wire Notes Line
	2150 6350 2150 7000
Wire Notes Line
	2450 6350 2450 7000
Wire Notes Line
	2750 6350 2750 7000
Wire Notes Line
	1550 6450 3000 6450
Wire Wire Line
	900  5550 900  5700
Connection ~ 900  5700
$Comp
L C C1
U 1 1 5A9304BD
P 5750 1500
F 0 "C1" H 5775 1600 50  0000 L CNN
F 1 "100n" H 5775 1400 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 5788 1350 50  0001 C CNN
F 3 "" H 5750 1500 50  0001 C CNN
	1    5750 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 1500 5400 1500
Wire Wire Line
	5900 1500 6150 1500
Text Label 5400 1500 0    60   ~ 0
GND
Text Label 6150 1500 0    60   ~ 0
VCC
$Comp
L CP C2
U 1 1 5A9DC4C3
P 5750 2000
F 0 "C2" H 5775 2100 50  0000 L CNN
F 1 "220uF" H 5775 1900 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 5788 1850 50  0001 C CNN
F 3 "" H 5750 2000 50  0001 C CNN
	1    5750 2000
	0    1    1    0   
$EndComp
$Comp
L CP C3
U 1 1 5A9DC536
P 5750 2300
F 0 "C3" H 5775 2400 50  0000 L CNN
F 1 "220uF " H 5775 2200 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 5788 2150 50  0001 C CNN
F 3 "" H 5750 2300 50  0001 C CNN
	1    5750 2300
	0    1    1    0   
$EndComp
$Comp
L CP C4
U 1 1 5A9DC5AB
P 5750 2600
F 0 "C4" H 5775 2700 50  0000 L CNN
F 1 "220uF " H 5775 2500 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 5788 2450 50  0001 C CNN
F 3 "" H 5750 2600 50  0001 C CNN
	1    5750 2600
	0    1    1    0   
$EndComp
$Comp
L CP C5
U 1 1 5A9DC5FA
P 5750 2900
F 0 "C5" H 5775 3000 50  0000 L CNN
F 1 "220uF " H 5775 2800 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P2.50mm" H 5788 2750 50  0001 C CNN
F 3 "" H 5750 2900 50  0001 C CNN
	1    5750 2900
	0    1    1    0   
$EndComp
Text Label 6200 2000 0    60   ~ 0
VCC
Text Label 5400 2000 0    60   ~ 0
GND
Wire Wire Line
	5400 2000 5600 2000
Wire Wire Line
	5600 2000 5600 2900
Connection ~ 5600 2300
Connection ~ 5600 2600
Wire Wire Line
	6200 2000 5900 2000
Wire Wire Line
	5900 2000 5900 2900
Connection ~ 5900 2300
Connection ~ 5900 2600
Connection ~ 5900 2000
Connection ~ 5600 2000
$EndSCHEMATC
