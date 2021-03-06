EESchema Schematic File Version 4
LIBS:hexagon-cache
EELAYER 26 0
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
L ESP:ESP-12E U4
U 1 1 5DC2FDAD
P 4950 1650
F 0 "U4" H 4950 2415 50  0000 C CNN
F 1 "ESP-12E" H 4950 2324 50  0000 C CNN
F 2 "ESP8266:ESP-12E_SMD" H 4950 1650 50  0001 C CNN
F 3 "http://l0l.org.uk/2014/12/esp8266-modules-hardware-guide-gotta-catch-em-all/" H 4950 1650 50  0001 C CNN
	1    4950 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5DC2FF25
P 3250 1350
F 0 "SW1" H 3250 1635 50  0000 C CNN
F 1 "Reset" H 3250 1544 50  0000 C CNN
F 2 "kicad-libraries-master:3.3x3.3 push button" H 3250 1550 50  0001 C CNN
F 3 "" H 3250 1550 50  0001 C CNN
	1    3250 1350
	1    0    0    -1  
$EndComp
$Comp
L device:JUMPER JP1
U 1 1 5DC3005B
P 7150 1750
F 0 "JP1" H 7150 2014 50  0000 C CNN
F 1 "Program" H 7150 1923 50  0000 C CNN
F 2 "kicad-libraries-master:Pin_Header_Straight_1x02_Pitch2.54mm_SMD_Pin1Left" H 7150 1750 50  0001 C CNN
F 3 "" H 7150 1750 50  0000 C CNN
	1    7150 1750
	-1   0    0    -1  
$EndComp
$Comp
L device:R_Small R3
U 1 1 5DC30982
P 3600 1150
F 0 "R3" H 3659 1196 50  0000 L CNN
F 1 "4k7" H 3659 1105 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 3600 1150 50  0001 C CNN
F 3 "" H 3600 1150 50  0000 C CNN
	1    3600 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1350 3600 1250
$Comp
L device:C_Small C1
U 1 1 5DC30B44
P 900 1200
F 0 "C1" H 992 1246 50  0000 L CNN
F 1 "100n" H 992 1155 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 900 1200 50  0001 C CNN
F 3 "" H 900 1200 50  0000 C CNN
	1    900  1200
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C3
U 1 1 5DC30BB0
P 1900 1200
F 0 "C3" H 1992 1246 50  0000 L CNN
F 1 "10u" H 1992 1155 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1900 1200 50  0001 C CNN
F 3 "" H 1900 1200 50  0000 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C6
U 1 1 5DC30E54
P 3850 2400
F 0 "C6" H 3942 2446 50  0000 L CNN
F 1 "100n" H 3942 2355 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 3850 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0000 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR019
U 1 1 5DC31016
P 2950 1450
F 0 "#PWR019" H 2950 1200 50  0001 C CNN
F 1 "GNDD" H 2954 1295 50  0000 C CNN
F 2 "" H 2950 1450 50  0001 C CNN
F 3 "" H 2950 1450 50  0001 C CNN
	1    2950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR026
U 1 1 5DC31052
P 7550 1800
F 0 "#PWR026" H 7550 1550 50  0001 C CNN
F 1 "GNDD" H 7554 1645 50  0000 C CNN
F 2 "" H 7550 1800 50  0001 C CNN
F 3 "" H 7550 1800 50  0001 C CNN
	1    7550 1800
	-1   0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR024
U 1 1 5DC3107E
P 3850 2550
F 0 "#PWR024" H 3850 2300 50  0001 C CNN
F 1 "GNDD" H 3854 2395 50  0000 C CNN
F 2 "" H 3850 2550 50  0001 C CNN
F 3 "" H 3850 2550 50  0001 C CNN
	1    3850 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR025
U 1 1 5DC310A3
P 6050 2300
F 0 "#PWR025" H 6050 2050 50  0001 C CNN
F 1 "GNDD" H 6054 2145 50  0000 C CNN
F 2 "" H 6050 2300 50  0001 C CNN
F 3 "" H 6050 2300 50  0001 C CNN
	1    6050 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR09
U 1 1 5DC310C8
P 1400 1450
F 0 "#PWR09" H 1400 1200 50  0001 C CNN
F 1 "GNDD" H 1404 1295 50  0000 C CNN
F 2 "" H 1400 1450 50  0001 C CNN
F 3 "" H 1400 1450 50  0001 C CNN
	1    1400 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 5DC311C1
P 900 950
F 0 "#PWR01" H 900 800 50  0001 C CNN
F 1 "+5V" H 915 1123 50  0000 C CNN
F 2 "" H 900 950 50  0001 C CNN
F 3 "" H 900 950 50  0001 C CNN
	1    900  950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR012
U 1 1 5DC31204
P 1900 1000
F 0 "#PWR012" H 1900 850 50  0001 C CNN
F 1 "+3.3V" H 1915 1173 50  0000 C CNN
F 2 "" H 1900 1000 50  0001 C CNN
F 3 "" H 1900 1000 50  0001 C CNN
	1    1900 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 1050 1900 1100
Wire Wire Line
	1900 1050 1900 1000
Connection ~ 1900 1050
Wire Wire Line
	1400 1350 1400 1400
Wire Wire Line
	1900 1400 1900 1300
Connection ~ 1400 1400
Wire Wire Line
	900  1400 900  1300
Wire Wire Line
	900  1100 900  1050
Wire Wire Line
	900  1050 1100 1050
Connection ~ 900  1050
Wire Wire Line
	900  1050 900  950 
Wire Wire Line
	1700 1050 1900 1050
Wire Wire Line
	1400 1400 1900 1400
Wire Wire Line
	900  1400 1400 1400
Wire Wire Line
	1400 1400 1400 1450
Wire Wire Line
	2950 1450 2950 1350
Wire Wire Line
	2950 1350 3050 1350
$Comp
L power:+3.3V #PWR022
U 1 1 5DC321BE
P 3750 950
F 0 "#PWR022" H 3750 800 50  0001 C CNN
F 1 "+3.3V" H 3765 1123 50  0000 C CNN
F 2 "" H 3750 950 50  0001 C CNN
F 3 "" H 3750 950 50  0001 C CNN
	1    3750 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1000 3750 950 
$Comp
L power:+3.3V #PWR023
U 1 1 5DC325F7
P 3850 2200
F 0 "#PWR023" H 3850 2050 50  0001 C CNN
F 1 "+3.3V" H 3865 2373 50  0000 C CNN
F 2 "" H 3850 2200 50  0001 C CNN
F 3 "" H 3850 2200 50  0001 C CNN
	1    3850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2550 3850 2500
Wire Wire Line
	5850 1650 6000 1650
Wire Wire Line
	5950 2050 5850 2050
$Comp
L power:+5V #PWR03
U 1 1 5DC3369C
P 1250 2200
F 0 "#PWR03" H 1250 2050 50  0001 C CNN
F 1 "+5V" H 1265 2373 50  0000 C CNN
F 2 "" H 1250 2200 50  0001 C CNN
F 3 "" H 1250 2200 50  0001 C CNN
	1    1250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 2250 1250 2250
Wire Wire Line
	1250 2250 1250 2200
Wire Wire Line
	1150 2350 1250 2350
Wire Wire Line
	1250 2350 1250 2250
Connection ~ 1250 2250
Wire Wire Line
	1250 2450 1250 2350
Wire Wire Line
	1150 2450 1250 2450
Connection ~ 1250 2350
$Comp
L power:GNDD #PWR04
U 1 1 5DC34C23
P 1250 3650
F 0 "#PWR04" H 1250 3400 50  0001 C CNN
F 1 "GNDD" H 1254 3495 50  0000 C CNN
F 2 "" H 1250 3650 50  0001 C CNN
F 3 "" H 1250 3650 50  0001 C CNN
	1    1250 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3500 1250 3500
Wire Wire Line
	1150 3400 1250 3400
Wire Wire Line
	1250 3400 1250 3500
Connection ~ 1250 3500
Wire Wire Line
	1150 3300 1250 3300
Wire Wire Line
	1250 3300 1250 3400
Connection ~ 1250 3400
$Comp
L power:GNDD #PWR011
U 1 1 5DC361FF
P 1600 3650
F 0 "#PWR011" H 1600 3400 50  0001 C CNN
F 1 "GNDD" H 1604 3495 50  0000 C CNN
F 2 "" H 1600 3650 50  0001 C CNN
F 3 "" H 1600 3650 50  0001 C CNN
	1    1600 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3650 1600 3600
Wire Wire Line
	1600 3600 1700 3600
Wire Wire Line
	1600 3600 1600 3500
Wire Wire Line
	1600 3500 1700 3500
Connection ~ 1600 3600
Wire Wire Line
	1600 3500 1600 3400
Wire Wire Line
	1600 3400 1700 3400
Connection ~ 1600 3500
Wire Wire Line
	1600 3400 1600 3300
Wire Wire Line
	1600 3300 1700 3300
Connection ~ 1600 3400
Connection ~ 1600 3300
$Comp
L power:+5V #PWR010
U 1 1 5DC38DC7
P 1600 2150
F 0 "#PWR010" H 1600 2000 50  0001 C CNN
F 1 "+5V" H 1615 2323 50  0000 C CNN
F 2 "" H 1600 2150 50  0001 C CNN
F 3 "" H 1600 2150 50  0001 C CNN
	1    1600 2150
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  700  2200 700 
Wire Notes Line
	2200 700  2200 1700
Wire Notes Line
	2200 1700 750  1700
Wire Notes Line
	750  700  750  1700
Text Notes 750  1700 0    50   ~ 0
ESP power
Wire Notes Line
	750  1800 2350 1800
Wire Notes Line
	2350 3900 750  3900
Text Notes 750  3900 0    50   ~ 0
LED power
$Comp
L device:R_Small R5
U 1 1 5DC4165E
P 6150 2100
F 0 "R5" H 6209 2146 50  0000 L CNN
F 1 "4k7" H 6209 2055 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 6150 2100 50  0001 C CNN
F 3 "" H 6150 2100 50  0000 C CNN
	1    6150 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2300 6050 2250
Wire Wire Line
	6050 2250 6150 2250
Wire Wire Line
	6150 2250 6150 2200
Wire Wire Line
	6050 2250 5950 2250
Wire Wire Line
	5950 2050 5950 2250
Connection ~ 6050 2250
Wire Wire Line
	5850 1950 6150 1950
Wire Wire Line
	6150 1950 6150 2000
Wire Wire Line
	6850 1750 5850 1750
Wire Wire Line
	7450 1750 7550 1750
Wire Wire Line
	7550 1750 7550 1800
Connection ~ 3600 1350
Wire Wire Line
	3600 1350 3450 1350
Wire Wire Line
	3600 1350 4050 1350
$Comp
L device:R_Small R4
U 1 1 5DC4A9B0
P 3850 1150
F 0 "R4" H 3909 1196 50  0000 L CNN
F 1 "4k7" H 3909 1105 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 3850 1150 50  0001 C CNN
F 3 "" H 3850 1150 50  0000 C CNN
	1    3850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1050 3600 1000
Wire Wire Line
	3600 1000 3750 1000
Wire Wire Line
	3750 1000 3850 1000
Wire Wire Line
	3850 1000 3850 1050
Connection ~ 3750 1000
Wire Wire Line
	3850 1250 3850 1550
Wire Wire Line
	3850 1550 4050 1550
$Comp
L Regulator_Linear:LD1117S33TR_SOT223 U3
U 1 1 5DCC60D0
P 1400 1050
F 0 "U3" H 1400 1292 50  0000 C CNN
F 1 "LD1117-3.3" H 1400 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 1400 1250 50  0001 C CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00000544.pdf" H 1500 800 50  0001 C CNN
	1    1400 1050
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Optical:APDS-9301 U2
U 1 1 5DCC7DC8
P 1350 4850
F 0 "U2" H 1100 5200 50  0000 C CNN
F 1 "APDS-9301" H 1600 4500 50  0000 C CNN
F 2 "OptoDevice:Broadcom_APDS-9301" H 1350 5300 50  0001 C CNN
F 3 "https://docs.broadcom.com/docs/AV02-2315EN" H 1050 5200 50  0001 C CNN
	1    1350 4850
	1    0    0    -1  
$EndComp
$Comp
L Sensor:BME280 U1
U 1 1 5DCC7E9D
P 1250 6500
F 0 "U1" H 950 6950 50  0000 R CNN
F 1 "BME280" H 1650 6050 50  0000 R CNN
F 2 "Package_LGA:Bosch_LGA-8_2.5x2.5mm_P0.65mm_ClockwisePinNumbering" H 1250 6300 50  0001 C CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS001-11.pdf" H 1250 6300 50  0001 C CNN
	1    1250 6500
	1    0    0    -1  
$EndComp
Text Notes 700  7600 0    50   ~ 0
Sensors
$Comp
L device:R_Small R1
U 1 1 5DCEF7E9
P 1850 4500
F 0 "R1" H 1909 4546 50  0000 L CNN
F 1 "4k7" H 1909 4455 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1850 4500 50  0001 C CNN
F 3 "" H 1850 4500 50  0000 C CNN
	1    1850 4500
	1    0    0    -1  
$EndComp
$Comp
L device:R_Small R2
U 1 1 5DCEF8B5
P 2150 4500
F 0 "R2" H 2209 4546 50  0000 L CNN
F 1 "4k7" H 2209 4455 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 2150 4500 50  0001 C CNN
F 3 "" H 2150 4500 50  0000 C CNN
	1    2150 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 5DCEFA4B
P 1350 5350
F 0 "#PWR08" H 1350 5100 50  0001 C CNN
F 1 "GNDD" H 1354 5195 50  0000 C CNN
F 2 "" H 1350 5350 50  0001 C CNN
F 3 "" H 1350 5350 50  0001 C CNN
	1    1350 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR06
U 1 1 5DCEFB27
P 1250 7200
F 0 "#PWR06" H 1250 6950 50  0001 C CNN
F 1 "GNDD" H 1254 7045 50  0000 C CNN
F 2 "" H 1250 7200 50  0001 C CNN
F 3 "" H 1250 7200 50  0001 C CNN
	1    1250 7200
	1    0    0    -1  
$EndComp
Wire Notes Line
	700  4050 2750 4050
Wire Wire Line
	1150 7100 1150 7150
Wire Wire Line
	1150 7150 1250 7150
Wire Wire Line
	1250 7150 1250 7200
Wire Wire Line
	1250 7150 1350 7150
Wire Wire Line
	1350 7150 1350 7100
Connection ~ 1250 7150
Wire Wire Line
	1350 5350 1350 5250
$Comp
L power:+3.3V #PWR07
U 1 1 5DCF6E12
P 1350 4400
F 0 "#PWR07" H 1350 4250 50  0001 C CNN
F 1 "+3.3V" H 1365 4573 50  0000 C CNN
F 2 "" H 1350 4400 50  0001 C CNN
F 3 "" H 1350 4400 50  0001 C CNN
	1    1350 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5DCF6EA2
P 1250 5800
F 0 "#PWR05" H 1250 5650 50  0001 C CNN
F 1 "+3.3V" H 1265 5973 50  0000 C CNN
F 2 "" H 1250 5800 50  0001 C CNN
F 3 "" H 1250 5800 50  0001 C CNN
	1    1250 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 5900 1150 5850
Wire Wire Line
	1150 5850 1250 5850
Wire Wire Line
	1250 5850 1250 5800
Wire Wire Line
	1350 5900 1350 5850
Wire Wire Line
	1350 5850 1250 5850
Connection ~ 1250 5850
Wire Wire Line
	1350 4450 1350 4400
Wire Wire Line
	1750 4850 1850 4850
$Comp
L power:+3.3V #PWR013
U 1 1 5DD0B3A4
P 1900 5800
F 0 "#PWR013" H 1900 5650 50  0001 C CNN
F 1 "+3.3V" H 1915 5973 50  0000 C CNN
F 2 "" H 1900 5800 50  0001 C CNN
F 3 "" H 1900 5800 50  0001 C CNN
	1    1900 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6200 1900 6200
Wire Wire Line
	1900 6200 1900 5800
Wire Wire Line
	1850 6800 1900 6800
Wire Wire Line
	1900 6800 1900 6200
$Comp
L device:C_Small C2
U 1 1 5DD12AFC
P 1850 7150
F 0 "C2" H 1942 7196 50  0000 L CNN
F 1 "100n" H 1942 7105 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 1850 7150 50  0001 C CNN
F 3 "" H 1850 7150 50  0000 C CNN
	1    1850 7150
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C5
U 1 1 5DD12D0C
P 2450 7150
F 0 "C5" H 2542 7196 50  0000 L CNN
F 1 "100n" H 2542 7105 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 2450 7150 50  0001 C CNN
F 3 "" H 2450 7150 50  0000 C CNN
	1    2450 7150
	1    0    0    -1  
$EndComp
$Comp
L device:C_Small C4
U 1 1 5DD12D5E
P 2150 7150
F 0 "C4" H 2242 7196 50  0000 L CNN
F 1 "100n" H 2242 7105 50  0000 L CNN
F 2 "kicad-libraries-master:0805" H 2150 7150 50  0001 C CNN
F 3 "" H 2150 7150 50  0000 C CNN
	1    2150 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR02
U 1 1 5DD1A8B5
P 900 4900
F 0 "#PWR02" H 900 4650 50  0001 C CNN
F 1 "GNDD" H 904 4745 50  0000 C CNN
F 2 "" H 900 4900 50  0001 C CNN
F 3 "" H 900 4900 50  0001 C CNN
	1    900  4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  4900 900  4850
Wire Wire Line
	900  4850 950  4850
$Comp
L power:+3.3V #PWR014
U 1 1 5DD1D2F5
P 2000 4300
F 0 "#PWR014" H 2000 4150 50  0001 C CNN
F 1 "+3.3V" H 2015 4473 50  0000 C CNN
F 2 "" H 2000 4300 50  0001 C CNN
F 3 "" H 2000 4300 50  0001 C CNN
	1    2000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4350 2000 4300
Connection ~ 2000 4350
Wire Wire Line
	1850 4400 1850 4350
Wire Wire Line
	1850 4350 2000 4350
Wire Wire Line
	2150 4350 2150 4400
Wire Wire Line
	2000 4350 2150 4350
$Comp
L power:GNDD #PWR016
U 1 1 5DD34A53
P 2150 7350
F 0 "#PWR016" H 2150 7100 50  0001 C CNN
F 1 "GNDD" H 2154 7195 50  0000 C CNN
F 2 "" H 2150 7350 50  0001 C CNN
F 3 "" H 2150 7350 50  0001 C CNN
	1    2150 7350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 5DD34AB6
P 2150 6950
F 0 "#PWR015" H 2150 6800 50  0001 C CNN
F 1 "+3.3V" H 2165 7123 50  0000 C CNN
F 2 "" H 2150 6950 50  0001 C CNN
F 3 "" H 2150 6950 50  0001 C CNN
	1    2150 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7050 1850 7000
Wire Wire Line
	1850 7000 2150 7000
Wire Wire Line
	2150 7000 2150 6950
Wire Wire Line
	2150 7050 2150 7000
Connection ~ 2150 7000
Wire Wire Line
	2150 7000 2450 7000
Wire Wire Line
	2450 7000 2450 7050
Wire Wire Line
	2150 7350 2150 7300
Wire Wire Line
	2150 7300 1850 7300
Wire Wire Line
	1850 7300 1850 7250
Connection ~ 2150 7300
Wire Wire Line
	2150 7300 2150 7250
Wire Wire Line
	2150 7300 2450 7300
Wire Wire Line
	2450 7300 2450 7250
Wire Notes Line
	2750 7600 700  7600
Wire Notes Line
	2750 4050 2750 7600
Wire Notes Line
	700  4050 700  7600
Connection ~ 1900 6200
Wire Wire Line
	1850 6400 2050 6400
Wire Wire Line
	1850 6600 2150 6600
$Comp
L Connector:Screw_Terminal_01x04 J1
U 1 1 5DD03B5D
P 950 2450
F 0 "J1" H 870 2025 50  0000 C CNN
F 1 "5V _in" H 870 2116 50  0000 C CNN
F 2 "w_conn_pt-1,5:pt_1,5-4-3,5-h" H 950 2450 50  0001 C CNN
F 3 "~" H 950 2450 50  0001 C CNN
	1    950  2450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 2550 1250 2550
Wire Wire Line
	1250 2550 1250 2450
Connection ~ 1250 2450
$Comp
L Connector:Screw_Terminal_01x04 J2
U 1 1 5DD07BEA
P 950 3500
F 0 "J2" H 870 3075 50  0000 C CNN
F 1 "GND_in" H 870 3166 50  0000 C CNN
F 2 "w_conn_pt-1,5:pt_1,5-4-3,5-h" H 950 3500 50  0001 C CNN
F 3 "~" H 950 3500 50  0001 C CNN
	1    950  3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 3600 1250 3600
Wire Wire Line
	1250 3500 1250 3600
Wire Wire Line
	1250 3650 1250 3600
Connection ~ 1250 3600
$Comp
L Connector:Screw_Terminal_01x06 J3
U 1 1 5DD14160
P 1900 2450
F 0 "J3" H 1979 2442 50  0000 L CNN
F 1 "5V_out" H 1979 2351 50  0000 L CNN
F 2 "w_conn_pt-1,5:pt_1,5-6-3,5-h" H 1900 2450 50  0001 C CNN
F 3 "~" H 1900 2450 50  0001 C CNN
	1    1900 2450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 J4
U 1 1 5DD1436E
P 1900 3300
F 0 "J4" H 1979 3292 50  0000 L CNN
F 1 "GND_out" H 1979 3201 50  0000 L CNN
F 2 "w_conn_pt-1,5:pt_1,5-6-3,5-h" H 1900 3300 50  0001 C CNN
F 3 "~" H 1900 3300 50  0001 C CNN
	1    1900 3300
	1    0    0    -1  
$EndComp
Wire Notes Line
	750  1800 750  3900
Wire Notes Line
	2350 1800 2350 3900
Wire Wire Line
	1700 2750 1600 2750
Wire Wire Line
	1600 2750 1600 2650
Wire Wire Line
	1700 2250 1600 2250
Connection ~ 1600 2250
Wire Wire Line
	1600 2250 1600 2150
Wire Wire Line
	1700 2350 1600 2350
Connection ~ 1600 2350
Wire Wire Line
	1600 2350 1600 2250
Wire Wire Line
	1700 2450 1600 2450
Connection ~ 1600 2450
Wire Wire Line
	1600 2450 1600 2350
Wire Wire Line
	1700 2550 1600 2550
Connection ~ 1600 2550
Wire Wire Line
	1600 2550 1600 2450
Wire Wire Line
	1700 2650 1600 2650
Connection ~ 1600 2650
Wire Wire Line
	1600 2650 1600 2550
Wire Wire Line
	1600 3100 1700 3100
Wire Wire Line
	1600 3100 1600 3200
Wire Wire Line
	1700 3200 1600 3200
Connection ~ 1600 3200
Wire Wire Line
	1600 3200 1600 3300
$Comp
L Connector:Screw_Terminal_01x04 J5
U 1 1 5DDB0098
P 2500 5450
F 0 "J5" H 2450 5650 50  0000 L CNN
F 1 "GND SDA SCL VCC" V 2600 5100 50  0000 L CNN
F 2 "w_conn_pt-1,5:pt_1,5-4-3,5-h" H 2500 5450 50  0001 C CNN
F 3 "~" H 2500 5450 50  0001 C CNN
	1    2500 5450
	1    0    0    -1  
$EndComp
Connection ~ 2150 4750
Wire Wire Line
	2150 4750 2150 4600
Wire Wire Line
	1750 4750 2150 4750
Wire Wire Line
	1850 4600 1850 4850
Connection ~ 1850 4850
Wire Wire Line
	1850 4850 2050 4850
$Comp
L power:+3.3V #PWR017
U 1 1 5DDC6E14
P 2250 5300
F 0 "#PWR017" H 2250 5150 50  0001 C CNN
F 1 "+3.3V" H 2265 5473 50  0000 C CNN
F 2 "" H 2250 5300 50  0001 C CNN
F 3 "" H 2250 5300 50  0001 C CNN
	1    2250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5350 2250 5350
Wire Wire Line
	2250 5350 2250 5300
$Comp
L power:GNDD #PWR018
U 1 1 5DDCBBD1
P 2250 5700
F 0 "#PWR018" H 2250 5450 50  0001 C CNN
F 1 "GNDD" H 2254 5545 50  0000 C CNN
F 2 "" H 2250 5700 50  0001 C CNN
F 3 "" H 2250 5700 50  0001 C CNN
	1    2250 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5700 2250 5650
Wire Wire Line
	2250 5650 2300 5650
$Comp
L Connector:Screw_Terminal_01x04 J6
U 1 1 5DDD0D00
P 3450 1950
F 0 "J6" H 3370 1525 50  0000 C CNN
F 1 "GND SDA SCL VCC" V 3550 1900 50  0000 C CNN
F 2 "w_conn_pt-1,5:pt_1,5-4-3,5-h" H 3450 1950 50  0001 C CNN
F 3 "~" H 3450 1950 50  0001 C CNN
	1    3450 1950
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR020
U 1 1 5DDD5F82
P 3700 1700
F 0 "#PWR020" H 3700 1550 50  0001 C CNN
F 1 "+3.3V" H 3715 1873 50  0000 C CNN
F 2 "" H 3700 1700 50  0001 C CNN
F 3 "" H 3700 1700 50  0001 C CNN
	1    3700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1750 3700 1750
Wire Wire Line
	3700 1750 3700 1700
Wire Wire Line
	3650 1850 4050 1850
Wire Wire Line
	3650 1950 4050 1950
$Comp
L power:GNDD #PWR021
U 1 1 5DDE9B9E
P 3700 2100
F 0 "#PWR021" H 3700 1850 50  0001 C CNN
F 1 "GNDD" H 3704 1945 50  0000 C CNN
F 2 "" H 3700 2100 50  0001 C CNN
F 3 "" H 3700 2100 50  0001 C CNN
	1    3700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2050 3700 2050
Wire Wire Line
	3700 2050 3700 2100
Wire Wire Line
	3850 2200 3850 2250
Wire Wire Line
	3850 2250 4000 2250
Wire Wire Line
	4000 2250 4000 2050
Connection ~ 3850 2250
Wire Wire Line
	3850 2250 3850 2300
Wire Wire Line
	4000 2050 4050 2050
$Comp
L Connector:Screw_Terminal_01x02 J7
U 1 1 5DE0443B
P 6250 1550
F 0 "J7" H 6330 1542 50  0000 L CNN
F 1 "led_control" H 6330 1451 50  0000 L CNN
F 2 "w_conn_pt-1,5:pt_1,5-2-3,5-h" H 6250 1550 50  0001 C CNN
F 3 "~" H 6250 1550 50  0001 C CNN
	1    6250 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 1550 6000 1550
Wire Wire Line
	6000 1550 6000 1650
Connection ~ 6000 1650
Wire Wire Line
	6000 1650 6050 1650
Wire Notes Line
	2800 2800 7700 2800
Wire Notes Line
	7700 2800 7700 650 
Wire Notes Line
	7700 650  2800 650 
Wire Notes Line
	2800 650  2800 2800
Text Notes 2800 2800 0    50   ~ 0
Main board\n
Text Label 3650 1950 0    50   ~ 0
SDA
Text Label 3650 1850 0    50   ~ 0
SCL
Wire Wire Line
	2050 4850 2050 5450
Wire Wire Line
	2150 4750 2150 5550
Wire Wire Line
	2300 5450 2050 5450
Connection ~ 2050 5450
Wire Wire Line
	2050 5450 2050 6400
Wire Wire Line
	2300 5550 2150 5550
Connection ~ 2150 5550
Wire Wire Line
	2150 5550 2150 6600
Text Label 2300 5550 2    50   ~ 0
SDA
Text Label 2300 5450 2    50   ~ 0
SCL
$Comp
L Connector_Generic:Conn_01x03 J8
U 1 1 5DDD2193
P 6000 950
F 0 "J8" V 5966 762 50  0000 R CNN
F 1 "Tx Rx GND" V 6100 1150 50  0000 R CNN
F 2 "kicad-libraries-master:Pin_Header_Straight_1x03_Pitch2.54mm_SMD_Pin1Left" H 6000 950 50  0001 C CNN
F 3 "~" H 6000 950 50  0001 C CNN
	1    6000 950 
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDD #PWR027
U 1 1 5DDDD2B0
P 6100 1250
F 0 "#PWR027" H 6100 1000 50  0001 C CNN
F 1 "GNDD" H 6104 1095 50  0000 C CNN
F 2 "" H 6100 1250 50  0001 C CNN
F 3 "" H 6100 1250 50  0001 C CNN
	1    6100 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 1450 6000 1450
Wire Wire Line
	6100 1250 6100 1150
Wire Wire Line
	5850 1350 5900 1350
Wire Wire Line
	5900 1150 5900 1350
Wire Wire Line
	6000 1150 6000 1450
$EndSCHEMATC
