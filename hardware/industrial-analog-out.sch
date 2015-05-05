EESchema Schematic File Version 2
LIBS:tinkerforge
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
LIBS:special
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
LIBS:industrial-analog-out-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Industrial Analog Out"
Date "Mi 01 Apr 2015"
Rev "1.0"
Comp "Tinkerforge GmbH"
Comment1 "Licensed under CERN OHL v.1.1"
Comment2 "Copyright (©) 2015, B.Nordmeyer <bastian@tinkerforge.com>"
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 7550 6500 0    60   ~ 0
Copyright Tinkerforge GmbH 2015.\nThis documentation describes Open Hardware and is licensed under the\nCERN OHL v. 1.1.\nYou may redistribute and modify this documentation under the terms of the\nCERN OHL v.1.1. (http://ohwr.org/cernohl). This documentation is distributed\nWITHOUT ANY EXPRESS OR IMPLIED WARRANTY, INCLUDING OF\nMERCHANTABILITY, SATISFACTORY QUALITY AND FITNESS FOR A\nPARTICULAR PURPOSE. Please see the CERN OHL v.1.1 for applicable\nconditions\n
$Comp
L GND #PWR1
U 1 1 50066B39
P 1050 2500
F 0 "#PWR1" H 1050 2500 30  0001 C CNN
F 1 "GND" H 1050 2430 30  0001 C CNN
F 2 "" H 1050 2500 60  0001 C CNN
F 3 "" H 1050 2500 60  0001 C CNN
	1    1050 2500
	1    0    0    -1  
$EndComp
$Comp
L DRILL U5
U 1 1 5006691C
P 10650 7000
F 0 "U5" H 10700 7050 60  0001 C CNN
F 1 "DRILL" H 10650 7000 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 7000 60  0001 C CNN
F 3 "" H 10650 7000 60  0001 C CNN
	1    10650 7000
	1    0    0    -1  
$EndComp
$Comp
L DRILL U4
U 1 1 5006691A
P 10650 6750
F 0 "U4" H 10700 6800 60  0001 C CNN
F 1 "DRILL" H 10650 6750 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 10650 6750 60  0001 C CNN
F 3 "" H 10650 6750 60  0001 C CNN
	1    10650 6750
	1    0    0    -1  
$EndComp
$Comp
L DRILL U6
U 1 1 50066918
P 11000 6750
F 0 "U6" H 11050 6800 60  0001 C CNN
F 1 "DRILL" H 11000 6750 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 6750 60  0001 C CNN
F 3 "" H 11000 6750 60  0001 C CNN
	1    11000 6750
	1    0    0    -1  
$EndComp
$Comp
L DRILL U7
U 1 1 50066905
P 11000 7000
F 0 "U7" H 11050 7050 60  0001 C CNN
F 1 "DRILL" H 11000 7000 60  0000 C CNN
F 2 "kicad-libraries:DRILL_NP" H 11000 7000 60  0001 C CNN
F 3 "" H 11000 7000 60  0001 C CNN
	1    11000 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 500657B2
P 1800 1550
F 0 "#PWR6" H 1800 1550 30  0001 C CNN
F 1 "GND" H 1800 1480 30  0001 C CNN
F 2 "" H 1800 1550 60  0001 C CNN
F 3 "" H 1800 1550 60  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 50065789
P 3000 1100
F 0 "C3" H 3050 1200 50  0000 L CNN
F 1 "100nF" H 3050 1000 50  0000 L CNN
F 2 "kicad-libraries:0603" H 3000 1100 60  0001 C CNN
F 3 "" H 3000 1100 60  0001 C CNN
	1    3000 1100
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR10
U 1 1 50065776
P 3200 1150
F 0 "#PWR10" H 3200 1150 30  0001 C CNN
F 1 "GND" H 3200 1080 30  0001 C CNN
F 2 "" H 3200 1150 60  0001 C CNN
F 3 "" H 3200 1150 60  0001 C CNN
	1    3200 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 5006576B
P 3600 1750
F 0 "#PWR11" H 3600 1750 30  0001 C CNN
F 1 "GND" H 3600 1680 30  0001 C CNN
F 2 "" H 3600 1750 60  0001 C CNN
F 3 "" H 3600 1750 60  0001 C CNN
	1    3600 1750
	1    0    0    -1  
$EndComp
NoConn ~ 2750 1450
$Comp
L 3V3 #PWR8
U 1 1 5004F89B
P 2750 1100
F 0 "#PWR8" H 2750 1200 40  0001 C CNN
F 1 "3V3" H 2750 1225 40  0000 C CNN
F 2 "" H 2750 1100 60  0001 C CNN
F 3 "" H 2750 1100 60  0001 C CNN
	1    2750 1100
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR5
U 1 1 5004F895
P 1650 1200
F 0 "#PWR5" H 1650 1300 40  0001 C CNN
F 1 "3V3" H 1650 1325 40  0000 C CNN
F 2 "" H 1650 1200 60  0001 C CNN
F 3 "" H 1650 1200 60  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
$Comp
L CON-SENSOR P1
U 1 1 5004F5E5
P 1050 1850
F 0 "P1" H 1250 2400 60  0000 C CNN
F 1 "CON-SENSOR" V 1250 1850 60  0000 C CNN
F 2 "kicad-libraries:CON-SENSOR" H 1050 1850 60  0001 C CNN
F 3 "" H 1050 1850 60  0001 C CNN
	1    1050 1850
	-1   0    0    -1  
$EndComp
$Comp
L CAT24C U2
U 1 1 5004F5DC
P 3150 1750
F 0 "U2" H 3000 2250 60  0000 C CNN
F 1 "M24C64" H 3150 1750 60  0000 C CNN
F 2 "kicad-libraries:SOIC8" H 3150 1750 60  0001 C CNN
F 3 "" H 3150 1750 60  0001 C CNN
	1    3150 1750
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR4
U 1 1 5326F89A
P 1500 1200
F 0 "#PWR4" H 1500 1290 20  0001 C CNN
F 1 "+5V" H 1500 1290 30  0000 C CNN
F 2 "" H 1500 1200 60  0000 C CNN
F 3 "" H 1500 1200 60  0000 C CNN
	1    1500 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_8 P2
U 1 1 5429473E
P 10350 3050
F 0 "P2" V 10300 3050 60  0000 C CNN
F 1 "CONN_8" V 10400 3050 60  0000 C CNN
F 2 "kicad-libraries:OQ_8P" H 10350 3050 60  0001 C CNN
F 3 "" H 10350 3050 60  0000 C CNN
	1    10350 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 2500 1050 2450
Connection ~ 2750 1100
Wire Wire Line
	2800 1100 2750 1100
Connection ~ 3600 1450
Wire Wire Line
	3600 1350 3600 1750
Wire Wire Line
	3600 1350 3550 1350
Wire Wire Line
	3600 1650 3550 1650
Wire Wire Line
	3550 1550 3700 1550
Wire Wire Line
	3700 1550 3700 1900
Wire Wire Line
	3700 1900 1500 1900
Wire Wire Line
	2750 1550 2000 1550
Wire Wire Line
	2000 1550 2000 1700
Wire Wire Line
	2000 1700 1500 1700
Wire Wire Line
	1500 1600 1650 1600
Wire Wire Line
	1650 1600 1650 1200
Wire Wire Line
	1500 1800 2100 1800
Wire Wire Line
	2100 1800 2100 1650
Wire Wire Line
	2100 1650 2750 1650
Wire Wire Line
	2750 1100 2750 1350
Wire Wire Line
	3600 1450 3550 1450
Connection ~ 3600 1650
Wire Wire Line
	3200 1150 3200 1100
Wire Wire Line
	1500 1500 1800 1500
Wire Wire Line
	1800 1500 1800 1550
Wire Wire Line
	1500 1400 1500 1200
$Comp
L DACX760 U3
U 1 1 551BE46E
P 5200 2900
F 0 "U3" H 5100 3850 60  0000 C CNN
F 1 "DACX760" H 5200 2900 60  0000 C CNN
F 2 "kicad-libraries:TSSOP24-44-PWR" H 5200 2900 60  0001 C CNN
F 3 "" H 5200 2900 60  0000 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 551BF5C3
P 4350 2300
F 0 "R4" V 4430 2300 50  0000 C CNN
F 1 "10k" V 4350 2300 50  0000 C CNN
F 2 "kicad-libraries:0603" H 4350 2300 60  0001 C CNN
F 3 "" H 4350 2300 60  0000 C CNN
	1    4350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2600 4350 2600
Wire Wire Line
	4350 2600 4350 2550
$Comp
L 3V3 #PWR13
U 1 1 551C00BE
P 4350 850
F 0 "#PWR13" H 4350 950 40  0001 C CNN
F 1 "3V3" H 4350 975 40  0000 C CNN
F 2 "" H 4350 850 60  0001 C CNN
F 3 "" H 4350 850 60  0001 C CNN
	1    4350 850 
	1    0    0    -1  
$EndComp
$Comp
L 3V3 #PWR19
U 1 1 551C059C
P 4950 850
F 0 "#PWR19" H 4950 950 40  0001 C CNN
F 1 "3V3" H 4950 975 40  0000 C CNN
F 2 "" H 4950 850 60  0001 C CNN
F 3 "" H 4950 850 60  0001 C CNN
	1    4950 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2000 3100 2000
Wire Wire Line
	3100 2000 3100 2800
Wire Wire Line
	3100 2800 4500 2800
Wire Wire Line
	3000 2100 1500 2100
Wire Wire Line
	1500 2200 2900 2200
Wire Wire Line
	2900 2200 2900 3250
Wire Wire Line
	2800 2300 1500 2300
$Comp
L GND #PWR14
U 1 1 551C1520
P 4400 3000
F 0 "#PWR14" H 4400 3000 30  0001 C CNN
F 1 "GND" H 4400 2930 30  0001 C CNN
F 2 "" H 4400 3000 60  0001 C CNN
F 3 "" H 4400 3000 60  0001 C CNN
	1    4400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2900 4400 2900
Wire Wire Line
	4400 2700 4400 3000
Wire Wire Line
	4500 2700 4400 2700
Connection ~ 4400 2900
$Comp
L GND #PWR20
U 1 1 551C19D5
P 5050 4550
F 0 "#PWR20" H 5050 4550 30  0001 C CNN
F 1 "GND" H 5050 4480 30  0001 C CNN
F 2 "" H 5050 4550 60  0001 C CNN
F 3 "" H 5050 4550 60  0001 C CNN
	1    5050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3850 5050 4550
Wire Wire Line
	4950 3850 4950 3950
Wire Wire Line
	4950 3950 5150 3950
Connection ~ 5050 3950
Wire Wire Line
	5150 3950 5150 3850
$Comp
L C C8
U 1 1 551C1FBA
P 5400 4150
F 0 "C8" H 5450 4250 50  0000 L CNN
F 1 "100nF" H 5450 4050 50  0000 L CNN
F 2 "kicad-libraries:0603" H 5400 4150 60  0001 C CNN
F 3 "" H 5400 4150 60  0001 C CNN
	1    5400 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR24
U 1 1 551C21F4
P 5400 4550
F 0 "#PWR24" H 5400 4550 30  0001 C CNN
F 1 "GND" H 5400 4480 30  0001 C CNN
F 2 "" H 5400 4550 60  0001 C CNN
F 3 "" H 5400 4550 60  0001 C CNN
	1    5400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3850 5400 3950
Wire Wire Line
	5400 3950 5650 3950
Wire Wire Line
	5650 3950 5650 3850
Wire Wire Line
	5400 4350 5400 4550
Connection ~ 5400 3950
$Comp
L C C6
U 1 1 551C2D5B
P 4750 1000
F 0 "C6" V 4600 950 50  0000 L CNN
F 1 "100nF" V 4900 900 50  0000 L CNN
F 2 "kicad-libraries:0603" H 4750 1000 60  0001 C CNN
F 3 "" H 4750 1000 60  0001 C CNN
	1    4750 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 1900 4950 850 
Connection ~ 4950 1000
$Comp
L GND #PWR17
U 1 1 551C36E3
P 4550 1100
F 0 "#PWR17" H 4550 1100 30  0001 C CNN
F 1 "GND" H 4550 1030 30  0001 C CNN
F 2 "" H 4550 1100 60  0001 C CNN
F 3 "" H 4550 1100 60  0001 C CNN
	1    4550 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1100 4550 1000
Wire Wire Line
	4350 2050 4350 850 
$Comp
L C C9
U 1 1 551C3C0C
P 6000 900
F 0 "C9" V 5850 850 50  0000 L CNN
F 1 "100nF" V 5950 950 50  0000 L CNN
F 2 "kicad-libraries:0603" H 6000 900 60  0001 C CNN
F 3 "" H 6000 900 60  0001 C CNN
	1    6000 900 
	0    1    1    0   
$EndComp
$Comp
L C C10
U 1 1 551C3E2A
P 6000 1200
F 0 "C10" V 5850 1150 50  0000 L CNN
F 1 "100pF" V 5950 1250 50  0000 L CNN
F 2 "kicad-libraries:0603" H 6000 1200 60  0001 C CNN
F 3 "" H 6000 1200 60  0001 C CNN
	1    6000 1200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR27
U 1 1 551C4EED
P 6400 1350
F 0 "#PWR27" H 6400 1350 30  0001 C CNN
F 1 "GND" H 6400 1280 30  0001 C CNN
F 2 "" H 6400 1350 60  0001 C CNN
F 3 "" H 6400 1350 60  0001 C CNN
	1    6400 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1200 6400 1200
Wire Wire Line
	6200 900  6400 900 
$Comp
L +12V #PWR25
U 1 1 551C5937
P 5600 850
F 0 "#PWR25" H 5600 800 20  0001 C CNN
F 1 "+12V" H 5600 950 30  0000 C CNN
F 2 "" H 5600 850 60  0000 C CNN
F 3 "" H 5600 850 60  0000 C CNN
	1    5600 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 850  5600 1900
Wire Wire Line
	5800 900  5600 900 
Connection ~ 5600 900 
Wire Wire Line
	5800 1200 5600 1200
Connection ~ 5600 1200
$Comp
L GND #PWR16
U 1 1 551C82C6
P 4500 1950
F 0 "#PWR16" H 4500 1950 30  0001 C CNN
F 1 "GND" H 4500 1880 30  0001 C CNN
F 2 "" H 4500 1950 60  0001 C CNN
F 3 "" H 4500 1950 60  0001 C CNN
	1    4500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1900 4700 1800
Wire Wire Line
	4700 1800 4500 1800
Wire Wire Line
	4500 1800 4500 1950
NoConn ~ 4700 3850
$Comp
L R R5
U 1 1 551C9533
P 4800 4150
F 0 "R5" V 4880 4150 50  0000 C CNN
F 1 "DNP" V 4800 4150 50  0000 C CNN
F 2 "kicad-libraries:0603" H 4800 4150 60  0001 C CNN
F 3 "" H 4800 4150 60  0000 C CNN
	1    4800 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 551C98A9
P 4800 4550
F 0 "#PWR18" H 4800 4550 30  0001 C CNN
F 1 "GND" H 4800 4480 30  0001 C CNN
F 2 "" H 4800 4550 60  0001 C CNN
F 3 "" H 4800 4550 60  0001 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3900 4800 3850
Wire Wire Line
	4800 4400 4800 4550
$Comp
L GND #PWR35
U 1 1 551CAC96
P 9850 3000
F 0 "#PWR35" H 9850 3000 30  0001 C CNN
F 1 "GND" H 9850 2930 30  0001 C CNN
F 2 "" H 9850 3000 60  0001 C CNN
F 3 "" H 9850 3000 60  0001 C CNN
	1    9850 3000
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 551CB2BD
P 6800 2500
F 0 "R6" V 6750 2700 50  0000 C CNN
F 1 "15" V 6800 2500 50  0000 C CNN
F 2 "kicad-libraries:0603" H 6800 2500 60  0001 C CNN
F 3 "" H 6800 2500 60  0000 C CNN
	1    6800 2500
	0    1    1    0   
$EndComp
$Comp
L R R7
U 1 1 551CB792
P 6800 2700
F 0 "R7" V 6750 2900 50  0000 C CNN
F 1 "15" V 6800 2700 50  0000 C CNN
F 2 "kicad-libraries:0603" H 6800 2700 60  0001 C CNN
F 3 "" H 6800 2700 60  0000 C CNN
	1    6800 2700
	0    1    1    0   
$EndComp
$Comp
L C C11
U 1 1 551CB92A
P 6200 2600
F 0 "C11" V 6150 2650 50  0000 L CNN
F 1 "1nF" V 6250 2650 50  0000 L CNN
F 2 "kicad-libraries:0603" H 6200 2600 60  0001 C CNN
F 3 "" H 6200 2600 60  0001 C CNN
	1    6200 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 2600 6000 2600
Wire Wire Line
	6400 2600 6500 2600
Wire Wire Line
	6500 2600 6500 2700
Wire Wire Line
	5850 2700 6550 2700
Connection ~ 6500 2700
Wire Wire Line
	5850 2500 6550 2500
Wire Wire Line
	7050 2500 7150 2500
Wire Wire Line
	7150 2500 7150 2700
Wire Wire Line
	7050 2700 7500 2700
Connection ~ 7150 2700
NoConn ~ 5850 3250
$Comp
L GND #PWR26
U 1 1 551CD234
P 6150 4550
F 0 "#PWR26" H 6150 4550 30  0001 C CNN
F 1 "GND" H 6150 4480 30  0001 C CNN
F 2 "" H 6150 4550 60  0001 C CNN
F 3 "" H 6150 4550 60  0001 C CNN
	1    6150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3150 6150 3150
Wire Wire Line
	6150 3150 6150 4550
Wire Wire Line
	5850 3350 7500 3350
Wire Wire Line
	6400 900  6400 1350
Connection ~ 6400 1200
$Comp
L GND #PWR23
U 1 1 551DD56C
P 5200 1800
F 0 "#PWR23" H 5200 1800 30  0001 C CNN
F 1 "GND" H 5200 1730 30  0001 C CNN
F 2 "" H 5200 1800 60  0001 C CNN
F 3 "" H 5200 1800 60  0001 C CNN
	1    5200 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1800 5200 1750
Wire Wire Line
	5200 1750 5350 1750
Wire Wire Line
	5350 1750 5350 1900
$Comp
L +12V #PWR33
U 1 1 551DF6B5
P 9750 1450
F 0 "#PWR33" H 9750 1400 20  0001 C CNN
F 1 "+12V" H 9750 1550 30  0000 C CNN
F 2 "" H 9750 1450 60  0000 C CNN
F 3 "" H 9750 1450 60  0000 C CNN
	1    9750 1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR34
U 1 1 551DF6BB
P 9850 2800
F 0 "#PWR34" H 9850 2800 30  0001 C CNN
F 1 "GND" H 9850 2730 30  0001 C CNN
F 2 "" H 9850 2800 60  0001 C CNN
F 3 "" H 9850 2800 60  0001 C CNN
	1    9850 2800
	0    1    1    0   
$EndComp
$Comp
L FUSE F1
U 1 1 551E30D0
P 9750 1800
F 0 "F1" H 9850 1850 40  0000 C CNN
F 1 "OZCJ0035FF2G" H 9650 1750 40  0000 C CNN
F 2 "kicad-libraries:1206" H 9750 1800 60  0001 C CNN
F 3 "" H 9750 1800 60  0000 C CNN
	1    9750 1800
	0    1    1    0   
$EndComp
$Comp
L INDUCT L4
U 1 1 551E36C5
P 7750 2700
F 0 "L4" V 7830 2700 50  0000 C CNN
F 1 "FB" V 7650 2700 50  0000 C CNN
F 2 "kicad-libraries:0603" H 7750 2700 60  0001 C CNN
F 3 "" H 7750 2700 60  0000 C CNN
	1    7750 2700
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 551E3D7C
P 7750 3350
F 0 "R8" V 7700 3550 50  0000 C CNN
F 1 "10" V 7750 3350 50  0000 C CNN
F 2 "kicad-libraries:0603" H 7750 3350 60  0001 C CNN
F 3 "" H 7750 3350 60  0000 C CNN
	1    7750 3350
	0    1    1    0   
$EndComp
$Comp
L TVS2 D3
U 1 1 551E4211
P 8150 3350
F 0 "D3" H 8195 3510 40  0000 C CNN
F 1 "DESD1P0RFW" H 8245 3190 40  0000 C CNN
F 2 "kicad-libraries:SOT23-3" V 8150 3425 60  0001 C CNN
F 3 "" V 8150 3425 60  0000 C CNN
	1    8150 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3350 9100 3350
Wire Wire Line
	10000 2800 9850 2800
$Comp
L GND #PWR36
U 1 1 551E5FCA
P 9850 3200
F 0 "#PWR36" H 9850 3200 30  0001 C CNN
F 1 "GND" H 9850 3130 30  0001 C CNN
F 2 "" H 9850 3200 60  0001 C CNN
F 3 "" H 9850 3200 60  0001 C CNN
	1    9850 3200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR37
U 1 1 551E607B
P 9850 3400
F 0 "#PWR37" H 9850 3400 30  0001 C CNN
F 1 "GND" H 9850 3330 30  0001 C CNN
F 2 "" H 9850 3400 60  0001 C CNN
F 3 "" H 9850 3400 60  0001 C CNN
	1    9850 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	9850 3400 10000 3400
Wire Wire Line
	10000 3200 9850 3200
Wire Wire Line
	9850 3000 10000 3000
Wire Wire Line
	9750 2900 10000 2900
Wire Wire Line
	9750 2700 10000 2700
Wire Wire Line
	9750 2050 9750 2900
$Comp
L TVS D4
U 1 1 551E7E53
P 9500 2350
F 0 "D4" H 9450 2450 40  0000 C CNN
F 1 "CDSOD323-T15SC" H 9500 2250 40  0000 C CNN
F 2 "kicad-libraries:SOD-323" H 9500 2350 60  0001 C CNN
F 3 "" H 9500 2350 60  0000 C CNN
	1    9500 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9750 1450 9750 1550
Connection ~ 9750 2350
Connection ~ 9750 2700
$Comp
L GND #PWR32
U 1 1 551E8C85
P 9250 2450
F 0 "#PWR32" H 9250 2450 30  0001 C CNN
F 1 "GND" H 9250 2380 30  0001 C CNN
F 2 "" H 9250 2450 60  0001 C CNN
F 3 "" H 9250 2450 60  0001 C CNN
	1    9250 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2450 9250 2350
$Comp
L TVS2 D2
U 1 1 551E9268
P 8150 2700
F 0 "D2" H 8195 2860 40  0000 C CNN
F 1 "DESD1P0RFW" H 8245 2540 40  0000 C CNN
F 2 "kicad-libraries:SOT23-3" V 8150 2775 60  0001 C CNN
F 3 "" V 8150 2775 60  0000 C CNN
	1    8150 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2700 9100 2700
Wire Wire Line
	9100 2700 9100 3100
Wire Wire Line
	9100 3100 10000 3100
Connection ~ 8250 2700
Wire Wire Line
	9100 3350 9100 3300
Wire Wire Line
	9100 3300 10000 3300
Connection ~ 8250 3350
$Comp
L +12V #PWR28
U 1 1 551E9F9B
P 8150 2450
F 0 "#PWR28" H 8150 2400 20  0001 C CNN
F 1 "+12V" H 8150 2550 30  0000 C CNN
F 2 "" H 8150 2450 60  0000 C CNN
F 3 "" H 8150 2450 60  0000 C CNN
	1    8150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2450 8150 2500
$Comp
L +12V #PWR30
U 1 1 551EB129
P 8150 3100
F 0 "#PWR30" H 8150 3050 20  0001 C CNN
F 1 "+12V" H 8150 3200 30  0000 C CNN
F 2 "" H 8150 3100 60  0000 C CNN
F 3 "" H 8150 3100 60  0000 C CNN
	1    8150 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3150 8150 3100
$Comp
L GND #PWR29
U 1 1 551EBBA4
P 8150 2950
F 0 "#PWR29" H 8150 2950 30  0001 C CNN
F 1 "GND" H 8150 2880 30  0001 C CNN
F 2 "" H 8150 2950 60  0001 C CNN
F 3 "" H 8150 2950 60  0001 C CNN
	1    8150 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 2950 8150 2900
$Comp
L GND #PWR31
U 1 1 551EC1E8
P 8150 3600
F 0 "#PWR31" H 8150 3600 30  0001 C CNN
F 1 "GND" H 8150 3530 30  0001 C CNN
F 2 "" H 8150 3600 60  0001 C CNN
F 3 "" H 8150 3600 60  0001 C CNN
	1    8150 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 3600 8150 3550
Wire Wire Line
	2900 3250 4500 3250
Wire Wire Line
	4500 3150 2800 3150
Wire Wire Line
	2800 3150 2800 2300
Wire Wire Line
	3000 2100 3000 3350
Wire Wire Line
	3000 3350 4500 3350
Wire Wire Line
	2050 7000 2050 6550
$Comp
L GND #PWR7
U 1 1 5547B17C
P 2050 7000
F 0 "#PWR7" H 2050 7000 30  0001 C CNN
F 1 "GND" H 2050 6930 30  0001 C CNN
F 2 "" H 2050 7000 60  0001 C CNN
F 3 "" H 2050 7000 60  0001 C CNN
	1    2050 7000
	1    0    0    -1  
$EndComp
Connection ~ 2400 5850
Connection ~ 2600 5850
Wire Wire Line
	2400 6400 2400 6350
Wire Wire Line
	2550 6400 2400 6400
$Comp
L R R1
U 1 1 5547AACC
P 2400 6100
F 0 "R1" V 2480 6100 50  0000 C CNN
F 1 "1M" V 2400 6100 50  0000 C CNN
F 2 "kicad-libraries:0603" H 2400 6100 60  0001 C CNN
F 3 "" H 2400 6100 60  0000 C CNN
	1    2400 6100
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5547AA0C
P 2050 6350
F 0 "C2" V 1900 6300 50  0000 L CNN
F 1 "4.7µF" V 2000 6400 50  0000 L CNN
F 2 "kicad-libraries:0805" H 2050 6350 60  0001 C CNN
F 3 "" H 2050 6350 60  0001 C CNN
	1    2050 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 5850 2650 5850
Wire Wire Line
	2600 6050 2600 5850
Wire Wire Line
	2750 6050 2600 6050
Connection ~ 3300 5850
Wire Wire Line
	3300 6050 3150 6050
Wire Wire Line
	3300 5850 3300 6050
Wire Wire Line
	3250 5850 3400 5850
Wire Wire Line
	3700 6150 3700 6400
Connection ~ 4200 5850
Connection ~ 4200 6150
Wire Wire Line
	4200 5850 4200 6400
Wire Wire Line
	4200 6400 4150 6400
Connection ~ 3700 6400
Wire Wire Line
	3350 6400 3750 6400
Wire Wire Line
	3700 7000 3700 6900
Wire Wire Line
	4450 6550 4450 7000
Wire Wire Line
	3800 5850 4550 5850
$Comp
L GND #PWR15
U 1 1 55479F2B
P 4450 7000
F 0 "#PWR15" H 4450 7000 30  0001 C CNN
F 1 "GND" H 4450 6930 30  0001 C CNN
F 2 "" H 4450 7000 60  0001 C CNN
F 3 "" H 4450 7000 60  0001 C CNN
	1    4450 7000
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 55479DC6
P 3950 6150
F 0 "R3" V 4030 6150 50  0000 C CNN
F 1 "118k" V 3950 6150 50  0000 C CNN
F 2 "kicad-libraries:0603" H 3950 6150 60  0001 C CNN
F 3 "" H 3950 6150 60  0000 C CNN
	1    3950 6150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR12
U 1 1 55479999
P 3700 7000
F 0 "#PWR12" H 3700 7000 30  0001 C CNN
F 1 "GND" H 3700 6930 30  0001 C CNN
F 2 "" H 3700 7000 60  0001 C CNN
F 3 "" H 3700 7000 60  0001 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 7000 2950 6750
$Comp
L C C4
U 1 1 554795FF
P 3950 6400
F 0 "C4" V 3900 6450 50  0000 L CNN
F 1 "270pF" V 4050 6450 50  0000 L CNN
F 2 "kicad-libraries:0603" H 3950 6400 60  0001 C CNN
F 3 "" H 3950 6400 60  0001 C CNN
	1    3950 6400
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 5547946F
P 3700 6650
F 0 "R2" V 3780 6650 50  0000 C CNN
F 1 "13.3k" V 3700 6650 50  0000 C CNN
F 2 "kicad-libraries:0603" H 3700 6650 60  0001 C CNN
F 3 "" H 3700 6650 60  0000 C CNN
	1    3700 6650
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 55479137
P 4450 6350
F 0 "C5" V 4300 6300 50  0000 L CNN
F 1 "4.7µF" V 4400 6400 50  0000 L CNN
F 2 "kicad-libraries:0805" H 4450 6350 60  0001 C CNN
F 3 "" H 4450 6350 60  0001 C CNN
	1    4450 6350
	-1   0    0    1   
$EndComp
$Comp
L DIODESCH D1
U 1 1 55478E56
P 3600 5850
F 0 "D1" H 3600 5950 40  0000 C CNN
F 1 "B0520LW" H 3600 5750 40  0000 C CNN
F 2 "kicad-libraries:SOD-123" H 3600 5850 60  0001 C CNN
F 3 "" H 3600 5850 60  0000 C CNN
	1    3600 5850
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L2
U 1 1 55478A9A
P 2950 5850
F 0 "L2" V 2900 5850 40  0000 C CNN
F 1 "10µH" V 3050 5850 40  0000 C CNN
F 2 "kicad-libraries:NR3030" H 2950 5850 60  0001 C CNN
F 3 "" H 2950 5850 60  0000 C CNN
	1    2950 5850
	0    1    -1   0   
$EndComp
$Comp
L GND #PWR9
U 1 1 554785D5
P 2950 7000
F 0 "#PWR9" H 2950 7000 30  0001 C CNN
F 1 "GND" H 2950 6930 30  0001 C CNN
F 2 "" H 2950 7000 60  0001 C CNN
F 3 "" H 2950 7000 60  0001 C CNN
	1    2950 7000
	1    0    0    -1  
$EndComp
$Comp
L LMR62014X U1
U 1 1 554783D5
P 2950 6400
F 0 "U1" H 2650 6100 60  0000 C CNN
F 1 "LMR62014X" H 3250 6100 60  0000 C CNN
F 2 "kicad-libraries:SOT23-5" H 2950 6400 60  0001 C CNN
F 3 "" H 2950 6400 60  0000 C CNN
	1    2950 6400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR2
U 1 1 551D9F61
P 1250 5750
F 0 "#PWR2" H 1250 5840 20  0001 C CNN
F 1 "+5V" H 1250 5840 30  0000 C CNN
F 2 "" H 1250 5750 60  0000 C CNN
F 3 "" H 1250 5750 60  0000 C CNN
	1    1250 5750
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR22
U 1 1 551D7236
P 5150 5800
F 0 "#PWR22" H 5150 5750 20  0001 C CNN
F 1 "+12V" H 5150 5900 30  0000 C CNN
F 2 "" H 5150 5800 60  0000 C CNN
F 3 "" H 5150 5800 60  0000 C CNN
	1    5150 5800
	1    0    0    -1  
$EndComp
Connection ~ 2050 5850
Connection ~ 4450 5850
$Comp
L INDUCT L3
U 1 1 5547E852
P 4800 5850
F 0 "L3" V 4880 5850 50  0000 C CNN
F 1 "FB" V 4700 5850 50  0000 C CNN
F 2 "kicad-libraries:0603" H 4800 5850 60  0001 C CNN
F 3 "" H 4800 5850 60  0000 C CNN
	1    4800 5850
	0    1    1    0   
$EndComp
$Comp
L C C7
U 1 1 5547EBDA
P 5050 6350
F 0 "C7" V 4900 6300 50  0000 L CNN
F 1 "4.7µF" V 5000 6400 50  0000 L CNN
F 2 "kicad-libraries:0805" H 5050 6350 60  0001 C CNN
F 3 "" H 5050 6350 60  0001 C CNN
	1    5050 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR21
U 1 1 5547EC52
P 5050 7000
F 0 "#PWR21" H 5050 7000 30  0001 C CNN
F 1 "GND" H 5050 6930 30  0001 C CNN
F 2 "" H 5050 7000 60  0001 C CNN
F 3 "" H 5050 7000 60  0001 C CNN
	1    5050 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 5850 4450 6150
Wire Wire Line
	5050 6150 5050 5850
Wire Wire Line
	5150 5800 5150 5850
Wire Wire Line
	5150 5850 5050 5850
Wire Wire Line
	5050 7000 5050 6550
Connection ~ 5050 5850
$Comp
L INDUCT L1
U 1 1 55480197
P 1700 5850
F 0 "L1" V 1780 5850 50  0000 C CNN
F 1 "FB" V 1600 5850 50  0000 C CNN
F 2 "kicad-libraries:0603" H 1700 5850 60  0001 C CNN
F 3 "" H 1700 5850 60  0000 C CNN
	1    1700 5850
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 55480353
P 1250 6350
F 0 "C1" V 1100 6300 50  0000 L CNN
F 1 "4.7µF" V 1200 6400 50  0000 L CNN
F 2 "kicad-libraries:0805" H 1250 6350 60  0001 C CNN
F 3 "" H 1250 6350 60  0001 C CNN
	1    1250 6350
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR3
U 1 1 55480405
P 1250 7000
F 0 "#PWR3" H 1250 7000 30  0001 C CNN
F 1 "GND" H 1250 6930 30  0001 C CNN
F 2 "" H 1250 7000 60  0001 C CNN
F 3 "" H 1250 7000 60  0001 C CNN
	1    1250 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7000 1250 6550
Wire Wire Line
	1450 5850 1250 5850
Wire Wire Line
	1250 5750 1250 6150
Connection ~ 1250 5850
Wire Wire Line
	2050 5850 2050 6150
$EndSCHEMATC
