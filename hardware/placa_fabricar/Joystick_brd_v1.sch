EESchema Schematic File Version 2
LIBS:Joystick_brd_v1-rescue
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
LIBS:teensy
LIBS:promicro
LIBS:Joystick_brd_v1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "4 players arcade joystick board"
Date "2017-04-18"
Rev "1"
Comp "Hackerspace Valencia"
Comment1 "Made for our own arcade machine"
Comment2 "You are free to distribute or use all files as long as you reference the source."
Comment3 "https://github.com/HackerspaceVLC/Joystick-expansion-board"
Comment4 ""
$EndDescr
$Comp
L R_Pack04 RN1
U 1 1 58F689DB
P 6250 1150
F 0 "RN1" V 5900 1150 50  0000 C CNN
F 1 "100K" V 5950 1150 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 6525 1150 50  0001 C CNN
F 3 "" H 6250 1150 50  0001 C CNN
	1    6250 1150
	0    1    1    0   
$EndComp
$Comp
L R_Pack04 RN2
U 1 1 58F689FC
P 6250 1550
F 0 "RN2" V 6500 1550 50  0000 C CNN
F 1 "100K" V 6450 1550 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 6525 1550 50  0001 C CNN
F 3 "" H 6250 1550 50  0001 C CNN
	1    6250 1550
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR01
U 1 1 58F68CD4
P 5900 750
F 0 "#PWR01" H 5900 600 50  0001 C CNN
F 1 "+5V" H 5900 890 50  0000 C CNN
F 2 "" H 5900 750 50  0001 C CNN
F 3 "" H 5900 750 50  0001 C CNN
	1    5900 750 
	1    0    0    -1  
$EndComp
$Comp
L 74LS166 U2
U 1 1 58F68E41
P 7400 1500
F 0 "U2" H 7400 1750 50  0000 C CNN
F 1 "74LS166" H 7400 1550 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 7400 1500 50  0001 C CNN
F 3 "" H 7400 1500 50  0001 C CNN
	1    7400 1500
	1    0    0    -1  
$EndComp
Text GLabel 6700 1800 0    39   Input ~ 0
sh/!ld
Text GLabel 6700 1900 0    39   Input ~ 0
CLK
Text GLabel 6700 2000 0    39   Input ~ 0
!EN
$Comp
L +5V #PWR02
U 1 1 58F6B4E7
P 6700 2150
F 0 "#PWR02" H 6700 2000 50  0001 C CNN
F 1 "+5V" H 6700 2290 50  0000 C CNN
F 2 "" H 6700 2150 50  0001 C CNN
F 3 "" H 6700 2150 50  0001 C CNN
	1    6700 2150
	0    -1   -1   0   
$EndComp
$Comp
L R_Pack04 RN3
U 1 1 58F6B5B5
P 6250 2850
F 0 "RN3" V 5900 2850 50  0000 C CNN
F 1 "100K" V 5950 2850 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 6525 2850 50  0001 C CNN
F 3 "" H 6250 2850 50  0001 C CNN
	1    6250 2850
	0    1    1    0   
$EndComp
$Comp
L R_Pack04 RN4
U 1 1 58F6B5BB
P 6250 3250
F 0 "RN4" V 6500 3250 50  0000 C CNN
F 1 "100K" V 6450 3250 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 6525 3250 50  0001 C CNN
F 3 "" H 6250 3250 50  0001 C CNN
	1    6250 3250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR03
U 1 1 58F6B5C1
P 5900 2450
F 0 "#PWR03" H 5900 2300 50  0001 C CNN
F 1 "+5V" H 5900 2590 50  0000 C CNN
F 2 "" H 5900 2450 50  0001 C CNN
F 3 "" H 5900 2450 50  0001 C CNN
	1    5900 2450
	1    0    0    -1  
$EndComp
Text GLabel 6700 3500 0    39   Input ~ 0
sh/!ld
Text GLabel 6700 3600 0    39   Input ~ 0
CLK
Text GLabel 6700 3700 0    39   Input ~ 0
!EN
$Comp
L +5V #PWR04
U 1 1 58F6B5E8
P 6700 3850
F 0 "#PWR04" H 6700 3700 50  0001 C CNN
F 1 "+5V" H 6700 3990 50  0000 C CNN
F 2 "" H 6700 3850 50  0001 C CNN
F 3 "" H 6700 3850 50  0001 C CNN
	1    6700 3850
	0    -1   -1   0   
$EndComp
$Comp
L R_Pack04 RN7
U 1 1 58F6B8AC
P 8950 1150
F 0 "RN7" V 8600 1150 50  0000 C CNN
F 1 "100K" V 8650 1150 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 9225 1150 50  0001 C CNN
F 3 "" H 8950 1150 50  0001 C CNN
	1    8950 1150
	0    1    1    0   
$EndComp
$Comp
L R_Pack04 RN8
U 1 1 58F6B8B2
P 8950 1550
F 0 "RN8" V 9200 1550 50  0000 C CNN
F 1 "100K" V 9150 1550 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 9225 1550 50  0001 C CNN
F 3 "" H 8950 1550 50  0001 C CNN
	1    8950 1550
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR05
U 1 1 58F6B8B8
P 8600 750
F 0 "#PWR05" H 8600 600 50  0001 C CNN
F 1 "+5V" H 8600 890 50  0000 C CNN
F 2 "" H 8600 750 50  0001 C CNN
F 3 "" H 8600 750 50  0001 C CNN
	1    8600 750 
	1    0    0    -1  
$EndComp
$Comp
L 74LS166 U5
U 1 1 58F6B8BE
P 10100 1500
F 0 "U5" H 10100 1750 50  0000 C CNN
F 1 "74LS166" H 10100 1550 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 10100 1500 50  0001 C CNN
F 3 "" H 10100 1500 50  0001 C CNN
	1    10100 1500
	1    0    0    -1  
$EndComp
Text GLabel 9400 1800 0    39   Input ~ 0
sh/!ld
Text GLabel 9400 1900 0    39   Input ~ 0
CLK
Text GLabel 9400 2000 0    39   Input ~ 0
!EN
$Comp
L +5V #PWR06
U 1 1 58F6B8DF
P 9400 2150
F 0 "#PWR06" H 9400 2000 50  0001 C CNN
F 1 "+5V" H 9400 2290 50  0000 C CNN
F 2 "" H 9400 2150 50  0001 C CNN
F 3 "" H 9400 2150 50  0001 C CNN
	1    9400 2150
	0    -1   -1   0   
$EndComp
$Comp
L R_Pack04 RN9
U 1 1 58F6B8E5
P 8950 2850
F 0 "RN9" V 8600 2850 50  0000 C CNN
F 1 "100K" V 8650 2850 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 9225 2850 50  0001 C CNN
F 3 "" H 8950 2850 50  0001 C CNN
	1    8950 2850
	0    1    1    0   
$EndComp
$Comp
L R_Pack04 RN10
U 1 1 58F6B8EB
P 8950 3250
F 0 "RN10" V 9200 3250 50  0000 C CNN
F 1 "100K" V 9150 3250 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 9225 3250 50  0001 C CNN
F 3 "" H 8950 3250 50  0001 C CNN
	1    8950 3250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR07
U 1 1 58F6B8F1
P 8600 2450
F 0 "#PWR07" H 8600 2300 50  0001 C CNN
F 1 "+5V" H 8600 2590 50  0000 C CNN
F 2 "" H 8600 2450 50  0001 C CNN
F 3 "" H 8600 2450 50  0001 C CNN
	1    8600 2450
	1    0    0    -1  
$EndComp
Text GLabel 9400 3500 0    39   Input ~ 0
sh/!ld
Text GLabel 9400 3600 0    39   Input ~ 0
CLK
Text GLabel 9400 3700 0    39   Input ~ 0
!EN
$Comp
L +5V #PWR08
U 1 1 58F6B918
P 9400 3850
F 0 "#PWR08" H 9400 3700 50  0001 C CNN
F 1 "+5V" H 9400 3990 50  0000 C CNN
F 2 "" H 9400 3850 50  0001 C CNN
F 3 "" H 9400 3850 50  0001 C CNN
	1    9400 3850
	0    -1   -1   0   
$EndComp
$Comp
L R_Pack04 RN5
U 1 1 58F6BB46
P 6250 4550
F 0 "RN5" V 5900 4550 50  0000 C CNN
F 1 "100K" V 5950 4550 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 6525 4550 50  0001 C CNN
F 3 "" H 6250 4550 50  0001 C CNN
	1    6250 4550
	0    1    1    0   
$EndComp
$Comp
L R_Pack04 RN6
U 1 1 58F6BB4C
P 6250 4950
F 0 "RN6" V 6500 4950 50  0000 C CNN
F 1 "100K" V 6450 4950 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 6525 4950 50  0001 C CNN
F 3 "" H 6250 4950 50  0001 C CNN
	1    6250 4950
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR09
U 1 1 58F6BB52
P 5900 4150
F 0 "#PWR09" H 5900 4000 50  0001 C CNN
F 1 "+5V" H 5900 4290 50  0000 C CNN
F 2 "" H 5900 4150 50  0001 C CNN
F 3 "" H 5900 4150 50  0001 C CNN
	1    5900 4150
	1    0    0    -1  
$EndComp
Text GLabel 6700 5200 0    39   Input ~ 0
sh/!ld
Text GLabel 6700 5300 0    39   Input ~ 0
CLK
Text GLabel 6700 5400 0    39   Input ~ 0
!EN
$Comp
L +5V #PWR010
U 1 1 58F6BB79
P 6700 5550
F 0 "#PWR010" H 6700 5400 50  0001 C CNN
F 1 "+5V" H 6700 5690 50  0000 C CNN
F 2 "" H 6700 5550 50  0001 C CNN
F 3 "" H 6700 5550 50  0001 C CNN
	1    6700 5550
	0    -1   -1   0   
$EndComp
$Comp
L R_Pack04 RN11
U 1 1 58F6BB7F
P 8950 4550
F 0 "RN11" V 8600 4550 50  0000 C CNN
F 1 "100K" V 8650 4550 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 9225 4550 50  0001 C CNN
F 3 "" H 8950 4550 50  0001 C CNN
	1    8950 4550
	0    1    1    0   
$EndComp
$Comp
L R_Pack04 RN12
U 1 1 58F6BB85
P 8950 4950
F 0 "RN12" V 9200 4950 50  0000 C CNN
F 1 "100K" V 9150 4950 39  0000 C CNN
F 2 "Resistors_SMD:R_Array_Convex_4x1206" V 9225 4950 50  0001 C CNN
F 3 "" H 8950 4950 50  0001 C CNN
	1    8950 4950
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR011
U 1 1 58F6BB8B
P 8600 4150
F 0 "#PWR011" H 8600 4000 50  0001 C CNN
F 1 "+5V" H 8600 4290 50  0000 C CNN
F 2 "" H 8600 4150 50  0001 C CNN
F 3 "" H 8600 4150 50  0001 C CNN
	1    8600 4150
	1    0    0    -1  
$EndComp
Text GLabel 9400 5200 0    39   Input ~ 0
sh/!ld
Text GLabel 9400 5400 0    39   Input ~ 0
!EN
$Comp
L +5V #PWR012
U 1 1 58F6BBB2
P 9400 5550
F 0 "#PWR012" H 9400 5400 50  0001 C CNN
F 1 "+5V" H 9400 5690 50  0000 C CNN
F 2 "" H 9400 5550 50  0001 C CNN
F 3 "" H 9400 5550 50  0001 C CNN
	1    9400 5550
	0    -1   -1   0   
$EndComp
Text GLabel 10800 5050 2    39   Output ~ 0
Datos
$Comp
L ProMicro-RESCUE-Joystick_brd_v1 U1
U 1 1 58F6CB2A
P 1750 1850
F 0 "U1" H 1750 2800 60  0000 C CNN
F 1 "ProMicro" H 1750 1300 60  0000 C CNN
F 2 "Teensy:promicro" H 1850 800 60  0001 C CNN
F 3 "" H 1850 800 60  0000 C CNN
	1    1750 1850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 58F6CC4A
P 2800 1200
F 0 "#PWR013" H 2800 1050 50  0001 C CNN
F 1 "+5V" H 2800 1340 50  0000 C CNN
F 2 "" H 2800 1200 50  0001 C CNN
F 3 "" H 2800 1200 50  0001 C CNN
	1    2800 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 58F6CC7D
P 700 1450
F 0 "#PWR014" H 700 1200 50  0001 C CNN
F 1 "GND" H 700 1300 50  0000 C CNN
F 2 "" H 700 1450 50  0001 C CNN
F 3 "" H 700 1450 50  0001 C CNN
	1    700  1450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 58F6CCB7
P 2650 1200
F 0 "#PWR015" H 2650 950 50  0001 C CNN
F 1 "GND" H 2650 1050 50  0000 C CNN
F 2 "" H 2650 1200 50  0001 C CNN
F 3 "" H 2650 1200 50  0001 C CNN
	1    2650 1200
	1    0    0    -1  
$EndComp
Text Notes 800  750  0    39   ~ 0
cambiamos datos a 14, y reloj al 15, que son del spi. ACTUALIZAR SKETCH.\n
Text GLabel 2450 2000 2    39   Input ~ 0
Datos
Text GLabel 2450 1900 2    39   Output ~ 0
CLK
Text GLabel 1050 2200 0    39   Output ~ 0
!EN
Text GLabel 1050 2100 0    39   Output ~ 0
sh/!ld
$Comp
L PWR_FLAG #FLG016
U 1 1 58F6E187
P 4600 1300
F 0 "#FLG016" H 4600 1375 50  0001 C CNN
F 1 "PWR_FLAG" H 4600 1450 50  0000 C CNN
F 2 "" H 4600 1300 50  0001 C CNN
F 3 "" H 4600 1300 50  0001 C CNN
	1    4600 1300
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR017
U 1 1 58F6E26A
P 4600 1100
F 0 "#PWR017" H 4600 950 50  0001 C CNN
F 1 "+5V" H 4600 1240 50  0000 C CNN
F 2 "" H 4600 1100 50  0001 C CNN
F 3 "" H 4600 1100 50  0001 C CNN
	1    4600 1100
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG018
U 1 1 58F6E42A
P 4150 1100
F 0 "#FLG018" H 4150 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 4150 1250 50  0000 C CNN
F 2 "" H 4150 1100 50  0001 C CNN
F 3 "" H 4150 1100 50  0001 C CNN
	1    4150 1100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR019
U 1 1 58F6E46E
P 4150 1250
F 0 "#PWR019" H 4150 1000 50  0001 C CNN
F 1 "GND" H 4150 1100 50  0000 C CNN
F 2 "" H 4150 1250 50  0001 C CNN
F 3 "" H 4150 1250 50  0001 C CNN
	1    4150 1250
	1    0    0    -1  
$EndComp
NoConn ~ 2450 1100
NoConn ~ 2450 1300
NoConn ~ 2450 1500
NoConn ~ 2450 1600
NoConn ~ 2450 1700
NoConn ~ 2450 1800
NoConn ~ 2450 2100
NoConn ~ 2450 2200
NoConn ~ 1050 2000
NoConn ~ 1050 1900
NoConn ~ 1050 1800
NoConn ~ 1050 1700
NoConn ~ 1050 1600
NoConn ~ 1050 1500
NoConn ~ 1050 1200
NoConn ~ 1050 1100
NoConn ~ 6700 850 
Text Notes 2550 1650 0    39   ~ 0
Do we need analog inputs for joysticks?
$Comp
L Screw_Terminal_1x08 J3
U 1 1 58F9292E
P 700 6850
F 0 "J3" H 700 7700 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 550 6850 50  0000 C TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 700 6025 50  0001 C CNN
F 3 "" H 675 7450 50  0001 C CNN
	1    700  6850
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 J9
U 1 1 58F9297F
P 2850 7200
F 0 "J9" H 2850 7650 50  0000 C CNN
F 1 "CONN_02X08" V 2850 7200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 2850 6000 50  0001 C CNN
F 3 "" H 2850 6000 50  0001 C CNN
	1    2850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 950  6700 950 
Wire Wire Line
	6450 1050 6700 1050
Wire Wire Line
	6450 1150 6700 1150
Wire Wire Line
	6450 1250 6700 1250
Wire Wire Line
	6450 1350 6700 1350
Wire Wire Line
	6450 1450 6700 1450
Wire Wire Line
	6450 1550 6700 1550
Wire Wire Line
	6450 1650 6700 1650
Wire Wire Line
	5900 1650 6050 1650
Wire Wire Line
	5900 750  5900 1650
Wire Wire Line
	6050 1550 5900 1550
Connection ~ 5900 1550
Wire Wire Line
	6050 1450 5900 1450
Connection ~ 5900 1450
Wire Wire Line
	6050 1350 5900 1350
Connection ~ 5900 1350
Wire Wire Line
	6050 1250 5900 1250
Connection ~ 5900 1250
Wire Wire Line
	6050 1150 5900 1150
Connection ~ 5900 1150
Wire Wire Line
	6050 1050 5900 1050
Connection ~ 5900 1050
Wire Wire Line
	6050 950  5900 950 
Connection ~ 5900 950 
Wire Wire Line
	6450 2650 6700 2650
Wire Wire Line
	6450 2750 6700 2750
Wire Wire Line
	6450 2850 6700 2850
Wire Wire Line
	6450 2950 6700 2950
Wire Wire Line
	6450 3050 6700 3050
Wire Wire Line
	6450 3150 6700 3150
Wire Wire Line
	6450 3250 6700 3250
Wire Wire Line
	6450 3350 6700 3350
Wire Wire Line
	5900 3350 6050 3350
Wire Wire Line
	5900 2450 5900 3350
Wire Wire Line
	6050 3250 5900 3250
Connection ~ 5900 3250
Wire Wire Line
	6050 3150 5900 3150
Connection ~ 5900 3150
Wire Wire Line
	6050 3050 5900 3050
Connection ~ 5900 3050
Wire Wire Line
	6050 2950 5900 2950
Connection ~ 5900 2950
Wire Wire Line
	6050 2850 5900 2850
Connection ~ 5900 2850
Wire Wire Line
	6050 2750 5900 2750
Connection ~ 5900 2750
Wire Wire Line
	6050 2650 5900 2650
Connection ~ 5900 2650
Wire Wire Line
	9150 950  9400 950 
Wire Wire Line
	9150 1050 9400 1050
Wire Wire Line
	9150 1150 9400 1150
Wire Wire Line
	9150 1250 9400 1250
Wire Wire Line
	9150 1350 9400 1350
Wire Wire Line
	9150 1450 9400 1450
Wire Wire Line
	9150 1550 9400 1550
Wire Wire Line
	9150 1650 9400 1650
Wire Wire Line
	8600 1650 8750 1650
Wire Wire Line
	8600 750  8600 1650
Wire Wire Line
	8750 1550 8600 1550
Connection ~ 8600 1550
Wire Wire Line
	8750 1450 8600 1450
Connection ~ 8600 1450
Wire Wire Line
	8750 1350 8600 1350
Connection ~ 8600 1350
Wire Wire Line
	8750 1250 8600 1250
Connection ~ 8600 1250
Wire Wire Line
	8750 1150 8600 1150
Connection ~ 8600 1150
Wire Wire Line
	8750 1050 8600 1050
Connection ~ 8600 1050
Wire Wire Line
	8750 950  8600 950 
Connection ~ 8600 950 
Wire Wire Line
	9150 2650 9400 2650
Wire Wire Line
	9150 2750 9400 2750
Wire Wire Line
	9150 2850 9400 2850
Wire Wire Line
	9150 2950 9400 2950
Wire Wire Line
	9150 3050 9400 3050
Wire Wire Line
	9150 3150 9400 3150
Wire Wire Line
	9150 3250 9400 3250
Wire Wire Line
	9150 3350 9400 3350
Wire Wire Line
	8600 3350 8750 3350
Wire Wire Line
	8600 2450 8600 3350
Wire Wire Line
	8750 3250 8600 3250
Connection ~ 8600 3250
Wire Wire Line
	8750 3150 8600 3150
Connection ~ 8600 3150
Wire Wire Line
	8750 3050 8600 3050
Connection ~ 8600 3050
Wire Wire Line
	8750 2950 8600 2950
Connection ~ 8600 2950
Wire Wire Line
	8750 2850 8600 2850
Connection ~ 8600 2850
Wire Wire Line
	8750 2750 8600 2750
Connection ~ 8600 2750
Wire Wire Line
	8750 2650 8600 2650
Connection ~ 8600 2650
Wire Wire Line
	6450 4350 6700 4350
Wire Wire Line
	6450 4450 6700 4450
Wire Wire Line
	6450 4550 6700 4550
Wire Wire Line
	6450 4650 6700 4650
Wire Wire Line
	6450 4750 6700 4750
Wire Wire Line
	6450 4850 6700 4850
Wire Wire Line
	6450 4950 6700 4950
Wire Wire Line
	6450 5050 6700 5050
Wire Wire Line
	5900 5050 6050 5050
Wire Wire Line
	5900 4150 5900 5050
Wire Wire Line
	6050 4950 5900 4950
Connection ~ 5900 4950
Wire Wire Line
	6050 4850 5900 4850
Connection ~ 5900 4850
Wire Wire Line
	6050 4750 5900 4750
Connection ~ 5900 4750
Wire Wire Line
	6050 4650 5900 4650
Connection ~ 5900 4650
Wire Wire Line
	6050 4550 5900 4550
Connection ~ 5900 4550
Wire Wire Line
	6050 4450 5900 4450
Connection ~ 5900 4450
Wire Wire Line
	6050 4350 5900 4350
Connection ~ 5900 4350
Wire Wire Line
	9150 4650 9400 4650
Wire Wire Line
	9150 4750 9400 4750
Wire Wire Line
	9150 4850 9400 4850
Wire Wire Line
	9150 4950 9400 4950
Wire Wire Line
	9150 5050 9400 5050
Wire Wire Line
	8600 5050 8750 5050
Wire Wire Line
	8600 4150 8600 5050
Wire Wire Line
	8750 4950 8600 4950
Connection ~ 8600 4950
Wire Wire Line
	8750 4850 8600 4850
Connection ~ 8600 4850
Wire Wire Line
	8750 4750 8600 4750
Connection ~ 8600 4750
Wire Wire Line
	8750 4650 8600 4650
Connection ~ 8600 4650
Wire Wire Line
	8750 4550 8600 4550
Connection ~ 8600 4550
Wire Wire Line
	8750 4450 8600 4450
Connection ~ 8600 4450
Wire Wire Line
	8750 4350 8600 4350
Connection ~ 8600 4350
Wire Wire Line
	8100 1650 8100 2350
Wire Wire Line
	8100 2350 6700 2350
Wire Wire Line
	6700 2350 6700 2550
Wire Wire Line
	8100 3350 8100 4050
Wire Wire Line
	8100 4050 6700 4050
Wire Wire Line
	6700 4050 6700 4250
Wire Wire Line
	8200 5050 8100 5050
Wire Wire Line
	8200 500  8200 5050
Wire Wire Line
	10800 1650 10800 2350
Wire Wire Line
	10800 2350 9400 2350
Wire Wire Line
	9400 2350 9400 2550
Wire Wire Line
	10800 3350 10800 4050
Wire Wire Line
	10800 4050 9400 4050
Wire Wire Line
	9400 4050 9400 4250
Wire Wire Line
	1050 1300 700  1300
Wire Wire Line
	700  1300 700  1450
Wire Wire Line
	1050 1400 700  1400
Connection ~ 700  1400
Wire Wire Line
	2450 1200 2650 1200
Wire Wire Line
	2450 1400 2800 1400
Wire Wire Line
	2800 1400 2800 1200
Wire Wire Line
	4150 1100 4150 1250
Wire Wire Line
	4600 1100 4600 1300
Wire Wire Line
	9150 4550 9400 4550
Wire Wire Line
	9150 4450 9400 4450
Wire Wire Line
	9150 4350 9400 4350
Text Label 9150 4350 0    60   ~ 0
P1_UP
Text Label 9150 4450 0    60   ~ 0
P1_DW
Text Label 9150 4550 0    60   ~ 0
P1_LF
Text Label 9150 4650 0    60   ~ 0
P1_RG
Text Label 9150 4750 0    60   ~ 0
P1_B1
Text Label 9150 4850 0    60   ~ 0
P1_B2
Text Label 9150 4950 0    60   ~ 0
P1_B3
Text Label 9150 5050 0    60   ~ 0
P1_B4
Text Label 9150 2650 0    60   ~ 0
P1_B5
Text Label 9150 2750 0    60   ~ 0
P1_B6
Text Label 9150 2850 0    60   ~ 0
P1_COIN
Text Label 9150 2950 0    60   ~ 0
P1_START
Text Label 9150 3050 0    60   ~ 0
P2_UP
Text Label 9150 3150 0    60   ~ 0
P2_DW
Text Label 9150 3250 0    60   ~ 0
P2_LF
Text Label 9150 3350 0    60   ~ 0
P2_RG
Wire Wire Line
	9400 850  9400 500 
Wire Wire Line
	9400 500  8200 500 
Text Label 9150 950  0    60   ~ 0
P2_B1
Text Label 9150 1050 0    60   ~ 0
P2_B2
Text Label 9150 1150 0    60   ~ 0
P2_B3
Text Label 9150 1250 0    60   ~ 0
P2_B4
Text Label 9150 1350 0    60   ~ 0
P2_B5
Text Label 9150 1450 0    60   ~ 0
P2_B6
Text Label 9150 1550 0    60   ~ 0
P2_COIN
Text Label 9150 1650 0    60   ~ 0
P2_START
Text Label 6450 4350 0    60   ~ 0
P3_UP
Text Label 6450 4450 0    60   ~ 0
P3_DW
Text Label 6450 4550 0    60   ~ 0
P3_LF
Text Label 6450 4650 0    60   ~ 0
P3_RG
Text Label 6450 4750 0    60   ~ 0
P3_B1
Text Label 6450 4850 0    60   ~ 0
P3_B2
Text Label 6450 4950 0    60   ~ 0
P3_B3
Text Label 6450 5050 0    60   ~ 0
P3_B4
Text Label 6450 2650 0    60   ~ 0
P3_B5
Text Label 6450 2750 0    60   ~ 0
P3_B6
Text Label 6450 2850 0    60   ~ 0
P3_COIN
Text Label 6450 2950 0    60   ~ 0
P3_START
Text Label 6450 3050 0    60   ~ 0
P4_UP
Text Label 6450 3150 0    60   ~ 0
P4_DW
Text Label 6450 3250 0    60   ~ 0
P4_LF
Text Label 6450 3350 0    60   ~ 0
P4_RG
Text Label 6450 950  0    60   ~ 0
P4_B1
Text Label 6450 1050 0    60   ~ 0
P4_B2
Text Label 6450 1150 0    60   ~ 0
P4_B3
Text Label 6450 1250 0    60   ~ 0
P4_B4
Text Label 6450 1350 0    60   ~ 0
P4_B5
Text Label 6450 1450 0    60   ~ 0
P4_B6
Text Label 6450 1550 0    60   ~ 0
P4_COIN
Text Label 6450 1650 0    60   ~ 0
P4_START
$Comp
L Screw_Terminal_1x08 J2
U 1 1 58F9704B
P 700 5200
F 0 "J2" H 700 6050 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 550 5200 50  0000 C TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 700 4375 50  0001 C CNN
F 3 "" H 675 5800 50  0001 C CNN
	1    700  5200
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x08 J1
U 1 1 58F970B9
P 700 3600
F 0 "J1" H 700 4450 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 550 3600 50  0000 C TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 700 2775 50  0001 C CNN
F 3 "" H 675 4200 50  0001 C CNN
	1    700  3600
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x08 J6
U 1 1 58F97205
P 1550 6900
F 0 "J6" H 1550 7750 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 1400 6900 50  0000 C TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 1550 6075 50  0001 C CNN
F 3 "" H 1525 7500 50  0001 C CNN
	1    1550 6900
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x08 J5
U 1 1 58F9720B
P 1550 5250
F 0 "J5" H 1550 6100 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 1400 5250 50  0000 C TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 1550 4425 50  0001 C CNN
F 3 "" H 1525 5850 50  0001 C CNN
	1    1550 5250
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x08 J4
U 1 1 58F97211
P 1550 3650
F 0 "J4" H 1550 4500 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 1400 3650 50  0000 C TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 1550 2825 50  0001 C CNN
F 3 "" H 1525 4250 50  0001 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 J8
U 1 1 58F9724B
P 2850 6000
F 0 "J8" H 2850 6450 50  0000 C CNN
F 1 "CONN_02X08" V 2850 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 2850 4800 50  0001 C CNN
F 3 "" H 2850 4800 50  0001 C CNN
	1    2850 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 J7
U 1 1 58F972CC
P 2850 4750
F 0 "J7" H 2850 5200 50  0000 C CNN
F 1 "CONN_02X08" V 2850 4750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 2850 3550 50  0001 C CNN
F 3 "" H 2850 3550 50  0001 C CNN
	1    2850 4750
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 J12
U 1 1 58F973C2
P 3950 7200
F 0 "J12" H 3950 7650 50  0000 C CNN
F 1 "CONN_02X08" V 3950 7200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 3950 6000 50  0001 C CNN
F 3 "" H 3950 6000 50  0001 C CNN
	1    3950 7200
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 J11
U 1 1 58F973C8
P 3950 6000
F 0 "J11" H 3950 6450 50  0000 C CNN
F 1 "CONN_02X08" V 3950 6000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 3950 4800 50  0001 C CNN
F 3 "" H 3950 4800 50  0001 C CNN
	1    3950 6000
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 J10
U 1 1 58F973CE
P 3950 4750
F 0 "J10" H 3950 5200 50  0000 C CNN
F 1 "CONN_02X08" V 3950 4750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x08_Pitch2.54mm" H 3950 3550 50  0001 C CNN
F 3 "" H 3950 3550 50  0001 C CNN
	1    3950 4750
	1    0    0    -1  
$EndComp
Text Label 4200 4400 0    60   ~ 0
P4_B1
Text Label 4200 4500 0    60   ~ 0
P4_B2
Text Label 4200 4600 0    60   ~ 0
P4_B3
Text Label 4200 4700 0    60   ~ 0
P4_B4
Text Label 4200 4800 0    60   ~ 0
P4_B5
Text Label 4200 4900 0    60   ~ 0
P4_B6
Text Label 4200 5000 0    60   ~ 0
P4_COIN
Text Label 4200 5100 0    60   ~ 0
P4_START
Text Label 4200 5650 0    60   ~ 0
P3_B5
Text Label 4200 5750 0    60   ~ 0
P3_B6
Text Label 4200 5850 0    60   ~ 0
P3_COIN
Text Label 4200 5950 0    60   ~ 0
P3_START
Text Label 4200 6050 0    60   ~ 0
P4_UP
Text Label 4200 6150 0    60   ~ 0
P4_DW
Text Label 4200 6250 0    60   ~ 0
P4_LF
Text Label 4200 6350 0    60   ~ 0
P4_RG
Text Label 4200 6850 0    60   ~ 0
P3_UP
Text Label 4200 6950 0    60   ~ 0
P3_DW
Text Label 4200 7050 0    60   ~ 0
P3_LF
Text Label 4200 7150 0    60   ~ 0
P3_RG
Text Label 4200 7250 0    60   ~ 0
P3_B1
Text Label 4200 7350 0    60   ~ 0
P3_B2
Text Label 4200 7450 0    60   ~ 0
P3_B3
Text Label 4200 7550 0    60   ~ 0
P3_B4
Text Label 3100 4400 0    60   ~ 0
P2_B1
Text Label 3100 4500 0    60   ~ 0
P2_B2
Text Label 3100 4600 0    60   ~ 0
P2_B3
Text Label 3100 4800 0    60   ~ 0
P2_B5
Text Label 3100 4900 0    60   ~ 0
P2_B6
Text Label 3100 5000 0    60   ~ 0
P2_COIN
Text Label 3100 5100 0    60   ~ 0
P2_START
Text Label 3100 5650 0    60   ~ 0
P1_B5
Text Label 3100 5750 0    60   ~ 0
P1_B6
Text Label 3100 5850 0    60   ~ 0
P1_COIN
Text Label 3100 5950 0    60   ~ 0
P1_START
Text Label 3100 6050 0    60   ~ 0
P2_UP
Text Label 3100 6150 0    60   ~ 0
P2_DW
Text Label 3100 6250 0    60   ~ 0
P2_LF
Text Label 3100 6350 0    60   ~ 0
P2_RG
Text Label 3100 6850 0    60   ~ 0
P1_UP
Text Label 3100 6950 0    60   ~ 0
P1_DW
Text Label 3100 7050 0    60   ~ 0
P1_LF
Text Label 3100 7150 0    60   ~ 0
P1_RG
Text Label 3100 7250 0    60   ~ 0
P1_B1
Text Label 3100 7350 0    60   ~ 0
P1_B2
Text Label 3100 7450 0    60   ~ 0
P1_B3
Text Label 3100 7550 0    60   ~ 0
P1_B4
Text Label 3100 4700 0    60   ~ 0
P2_B4
Text Label 1750 2950 0    60   ~ 0
P4_B1
Text Label 1750 3150 0    60   ~ 0
P4_B2
Text Label 1750 3350 0    60   ~ 0
P4_B3
Text Label 1750 3550 0    60   ~ 0
P4_B4
Text Label 1750 3750 0    60   ~ 0
P4_B5
Text Label 1750 3950 0    60   ~ 0
P4_B6
Text Label 1750 4150 0    60   ~ 0
P4_COIN
Text Label 1750 4350 0    60   ~ 0
P4_START
Text Label 1750 4550 0    60   ~ 0
P3_B5
Text Label 1750 4750 0    60   ~ 0
P3_B6
Text Label 1750 4950 0    60   ~ 0
P3_COIN
Text Label 1750 5150 0    60   ~ 0
P3_START
Text Label 1750 5350 0    60   ~ 0
P4_UP
Text Label 1750 5550 0    60   ~ 0
P4_DW
Text Label 1750 5750 0    60   ~ 0
P4_LF
Text Label 1750 5950 0    60   ~ 0
P4_RG
Text Label 1750 6200 0    60   ~ 0
P3_UP
Text Label 1750 6400 0    60   ~ 0
P3_DW
Text Label 1750 6600 0    60   ~ 0
P3_LF
Text Label 1750 6800 0    60   ~ 0
P3_RG
Text Label 1750 7000 0    60   ~ 0
P3_B1
Text Label 1750 7200 0    60   ~ 0
P3_B2
Text Label 1750 7400 0    60   ~ 0
P3_B3
Text Label 1750 7600 0    60   ~ 0
P3_B4
Text Label 900  2900 0    60   ~ 0
P2_B1
Text Label 900  3100 0    60   ~ 0
P2_B2
Text Label 900  3300 0    60   ~ 0
P2_B3
Text Label 900  3700 0    60   ~ 0
P2_B5
Text Label 900  3900 0    60   ~ 0
P2_B6
Text Label 900  4100 0    60   ~ 0
P2_COIN
Text Label 900  4300 0    60   ~ 0
P2_START
Text Label 900  4500 0    60   ~ 0
P1_B5
Text Label 900  4700 0    60   ~ 0
P1_B6
Text Label 900  4900 0    60   ~ 0
P1_COIN
Text Label 900  5100 0    60   ~ 0
P1_START
Text Label 900  5300 0    60   ~ 0
P2_UP
Text Label 900  5500 0    60   ~ 0
P2_DW
Text Label 900  5700 0    60   ~ 0
P2_LF
Text Label 900  5900 0    60   ~ 0
P2_RG
Text Label 900  6150 0    60   ~ 0
P1_UP
Text Label 900  6350 0    60   ~ 0
P1_DW
Text Label 900  6550 0    60   ~ 0
P1_LF
Text Label 900  6750 0    60   ~ 0
P1_RG
Text Label 900  6950 0    60   ~ 0
P1_B1
Text Label 900  7150 0    60   ~ 0
P1_B2
Text Label 900  7350 0    60   ~ 0
P1_B3
Text Label 900  7550 0    60   ~ 0
P1_B4
Text Label 900  3500 0    60   ~ 0
P2_B4
$Comp
L GND #PWR020
U 1 1 58F9AF44
P 2550 5200
F 0 "#PWR020" H 2550 4950 50  0001 C CNN
F 1 "GND" H 2550 5050 50  0000 C CNN
F 2 "" H 2550 5200 50  0001 C CNN
F 3 "" H 2550 5200 50  0001 C CNN
	1    2550 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5200 2550 4400
Wire Wire Line
	2550 4400 2600 4400
Wire Wire Line
	2600 4500 2550 4500
Connection ~ 2550 4500
Wire Wire Line
	2600 4600 2550 4600
Connection ~ 2550 4600
Wire Wire Line
	2600 4700 2550 4700
Connection ~ 2550 4700
Wire Wire Line
	2600 4800 2550 4800
Connection ~ 2550 4800
Wire Wire Line
	2600 4900 2550 4900
Connection ~ 2550 4900
Wire Wire Line
	2600 5000 2550 5000
Connection ~ 2550 5000
Wire Wire Line
	2600 5100 2550 5100
Connection ~ 2550 5100
$Comp
L GND #PWR021
U 1 1 58F9BBF5
P 2550 6450
F 0 "#PWR021" H 2550 6200 50  0001 C CNN
F 1 "GND" H 2550 6300 50  0000 C CNN
F 2 "" H 2550 6450 50  0001 C CNN
F 3 "" H 2550 6450 50  0001 C CNN
	1    2550 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6450 2550 5650
Wire Wire Line
	2550 5650 2600 5650
Wire Wire Line
	2600 5750 2550 5750
Connection ~ 2550 5750
Wire Wire Line
	2600 5850 2550 5850
Connection ~ 2550 5850
Wire Wire Line
	2600 5950 2550 5950
Connection ~ 2550 5950
Wire Wire Line
	2600 6050 2550 6050
Connection ~ 2550 6050
Wire Wire Line
	2600 6150 2550 6150
Connection ~ 2550 6150
Wire Wire Line
	2600 6250 2550 6250
Connection ~ 2550 6250
Wire Wire Line
	2600 6350 2550 6350
Connection ~ 2550 6350
$Comp
L GND #PWR022
U 1 1 58F9BD81
P 2550 7600
F 0 "#PWR022" H 2550 7350 50  0001 C CNN
F 1 "GND" H 2550 7450 50  0000 C CNN
F 2 "" H 2550 7600 50  0001 C CNN
F 3 "" H 2550 7600 50  0001 C CNN
	1    2550 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6850 2600 6850
Wire Wire Line
	2600 6950 2550 6950
Connection ~ 2550 6950
Wire Wire Line
	2600 7050 2550 7050
Connection ~ 2550 7050
Wire Wire Line
	2600 7150 2550 7150
Connection ~ 2550 7150
Wire Wire Line
	2600 7250 2550 7250
Connection ~ 2550 7250
Wire Wire Line
	2600 7350 2550 7350
Connection ~ 2550 7350
Wire Wire Line
	2600 7450 2550 7450
Connection ~ 2550 7450
Wire Wire Line
	2600 7550 2550 7550
Connection ~ 2550 7550
Wire Wire Line
	2550 7600 2550 6850
$Comp
L GND #PWR023
U 1 1 58F9C098
P 3650 7600
F 0 "#PWR023" H 3650 7350 50  0001 C CNN
F 1 "GND" H 3650 7450 50  0000 C CNN
F 2 "" H 3650 7600 50  0001 C CNN
F 3 "" H 3650 7600 50  0001 C CNN
	1    3650 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6850 3700 6850
Wire Wire Line
	3700 6950 3650 6950
Connection ~ 3650 6950
Wire Wire Line
	3700 7050 3650 7050
Connection ~ 3650 7050
Wire Wire Line
	3700 7150 3650 7150
Connection ~ 3650 7150
Wire Wire Line
	3700 7250 3650 7250
Connection ~ 3650 7250
Wire Wire Line
	3700 7350 3650 7350
Connection ~ 3650 7350
Wire Wire Line
	3700 7450 3650 7450
Connection ~ 3650 7450
Wire Wire Line
	3700 7550 3650 7550
Connection ~ 3650 7550
Wire Wire Line
	3650 7600 3650 6850
$Comp
L GND #PWR024
U 1 1 58F9C1A8
P 3650 6450
F 0 "#PWR024" H 3650 6200 50  0001 C CNN
F 1 "GND" H 3650 6300 50  0000 C CNN
F 2 "" H 3650 6450 50  0001 C CNN
F 3 "" H 3650 6450 50  0001 C CNN
	1    3650 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6450 3650 5650
Wire Wire Line
	3650 5650 3700 5650
Wire Wire Line
	3700 5750 3650 5750
Connection ~ 3650 5750
Wire Wire Line
	3700 5850 3650 5850
Connection ~ 3650 5850
Wire Wire Line
	3700 5950 3650 5950
Connection ~ 3650 5950
Wire Wire Line
	3700 6050 3650 6050
Connection ~ 3650 6050
Wire Wire Line
	3700 6150 3650 6150
Connection ~ 3650 6150
Wire Wire Line
	3700 6250 3650 6250
Connection ~ 3650 6250
Wire Wire Line
	3700 6350 3650 6350
Connection ~ 3650 6350
$Comp
L GND #PWR025
U 1 1 58F9C372
P 3650 5200
F 0 "#PWR025" H 3650 4950 50  0001 C CNN
F 1 "GND" H 3650 5050 50  0000 C CNN
F 2 "" H 3650 5200 50  0001 C CNN
F 3 "" H 3650 5200 50  0001 C CNN
	1    3650 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 5200 3650 4400
Wire Wire Line
	3650 4400 3700 4400
Wire Wire Line
	3700 4500 3650 4500
Connection ~ 3650 4500
Wire Wire Line
	3700 4600 3650 4600
Connection ~ 3650 4600
Wire Wire Line
	3700 4700 3650 4700
Connection ~ 3650 4700
Wire Wire Line
	3700 4800 3650 4800
Connection ~ 3650 4800
Wire Wire Line
	3700 4900 3650 4900
Connection ~ 3650 4900
Wire Wire Line
	3700 5000 3650 5000
Connection ~ 3650 5000
Wire Wire Line
	3700 5100 3650 5100
Connection ~ 3650 5100
Wire Notes Line
	2400 4200 4750 4200
Wire Notes Line
	4750 4200 4750 7800
Wire Notes Line
	4750 7800 2400 7800
Wire Notes Line
	2400 7800 2400 4200
Text Notes 3200 4150 0    60   ~ 0
JST terminals
Text GLabel 9400 5300 0    39   Input ~ 0
CLK
$Comp
L 74LS166 U3
U 1 1 58F9D871
P 7400 3200
F 0 "U3" H 7400 3450 50  0000 C CNN
F 1 "74LS166" H 7400 3250 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 7400 3200 50  0001 C CNN
F 3 "" H 7400 3200 50  0001 C CNN
	1    7400 3200
	1    0    0    -1  
$EndComp
$Comp
L 74LS166 U7
U 1 1 58F9D936
P 10100 4900
F 0 "U7" H 10100 5150 50  0000 C CNN
F 1 "74LS166" H 10100 4950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 10100 4900 50  0001 C CNN
F 3 "" H 10100 4900 50  0001 C CNN
	1    10100 4900
	1    0    0    -1  
$EndComp
$Comp
L 74LS166 U4
U 1 1 58F9DB86
P 7400 4900
F 0 "U4" H 7400 5150 50  0000 C CNN
F 1 "74LS166" H 7400 4950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 7400 4900 50  0001 C CNN
F 3 "" H 7400 4900 50  0001 C CNN
	1    7400 4900
	1    0    0    -1  
$EndComp
$Comp
L 74LS166 U6
U 1 1 58FA1717
P 10100 3200
F 0 "U6" H 10100 3450 50  0000 C CNN
F 1 "74LS166" H 10100 3250 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 10100 3200 50  0001 C CNN
F 3 "" H 10100 3200 50  0001 C CNN
	1    10100 3200
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x08 J?
U 1 1 58FA2578
P 2600 3300
F 0 "J?" H 2600 4150 50  0000 C TNN
F 1 "Screw_Terminal_1x08" V 2450 3300 50  0000 C TNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 2600 2475 50  0001 C CNN
F 3 "" H 2575 3900 50  0001 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 58FA25FC
P 3000 4050
F 0 "#PWR?" H 3000 3800 50  0001 C CNN
F 1 "GND" H 3000 3900 50  0000 C CNN
F 2 "" H 3000 4050 50  0001 C CNN
F 3 "" H 3000 4050 50  0001 C CNN
	1    3000 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2600 3000 2600
Wire Wire Line
	3000 2600 3000 4050
Wire Wire Line
	2800 2800 3000 2800
Connection ~ 3000 2800
Wire Wire Line
	2800 3000 3000 3000
Connection ~ 3000 3000
Wire Wire Line
	2800 3200 3000 3200
Connection ~ 3000 3200
Wire Wire Line
	2800 3400 3000 3400
Connection ~ 3000 3400
Wire Wire Line
	2800 3600 3000 3600
Connection ~ 3000 3600
Wire Wire Line
	2800 3800 3000 3800
Connection ~ 3000 3800
Wire Wire Line
	2800 4000 3000 4000
Connection ~ 3000 4000
$EndSCHEMATC
