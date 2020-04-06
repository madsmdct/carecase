EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Transistor_BJT:BC847W Q1
U 1 1 5E853643
P 5350 3475
F 0 "Q1" H 5540 3521 50  0000 L CNN
F 1 "BC847W" H 5540 3430 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5550 3400 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 5350 3475 50  0001 L CNN
	1    5350 3475
	1    0    0    -1  
$EndComp
$Comp
L carecasetester-rescue:AZ952-athir K1
U 1 1 5E85B068
P 4625 2550
AR Path="/5E85B068" Ref="K1"  Part="1" 
AR Path="/5E3E43C1/5E85B068" Ref="K1"  Part="1" 
F 0 "K1" V 5129 2550 45  0000 C CNN
F 1 "AZ952" V 5045 2550 45  0000 C CNN
F 2 "athir:AZ952" H 4625 2500 60  0001 C CNN
F 3 "" H 4625 2500 60  0001 C CNN
F 4 "315030000" H 4655 2650 20  0001 C CNN "SKU"
	1    4625 2550
	0    -1   -1   0   
$EndComp
NoConn ~ 4175 2800
Wire Wire Line
	5075 2300 5075 1925
Wire Wire Line
	5075 1925 4175 1925
Wire Wire Line
	4175 1925 4175 2300
Wire Wire Line
	4175 2650 4175 2300
Connection ~ 4175 2300
$Comp
L power:+12V #PWR01
U 1 1 5E85C22D
P 4175 1925
F 0 "#PWR01" H 4175 1775 50  0001 C CNN
F 1 "+12V" H 4190 2098 50  0000 C CNN
F 2 "" H 4175 1925 50  0001 C CNN
F 3 "" H 4175 1925 50  0001 C CNN
	1    4175 1925
	1    0    0    -1  
$EndComp
Connection ~ 4175 1925
Wire Wire Line
	5075 2650 5450 2650
Wire Wire Line
	5450 2650 5450 3125
$Comp
L power:GND #PWR06
U 1 1 5E85E92E
P 5450 3925
F 0 "#PWR06" H 5450 3675 50  0001 C CNN
F 1 "GND" H 5455 3752 50  0000 C CNN
F 2 "" H 5450 3925 50  0001 C CNN
F 3 "" H 5450 3925 50  0001 C CNN
	1    5450 3925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3675 5450 3925
$Comp
L Device:R_Small R27
U 1 1 5E85EFB5
P 4625 3475
F 0 "R27" V 4429 3475 50  0000 C CNN
F 1 "4k7" V 4520 3475 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4625 3475 50  0001 C CNN
F 3 "~" H 4625 3475 50  0001 C CNN
	1    4625 3475
	0    1    1    0   
$EndComp
Wire Wire Line
	4725 3475 5150 3475
Text HLabel 4175 3475 0    50   Input ~ 0
Relay_driver1
Wire Wire Line
	4175 3475 4525 3475
Text HLabel 5150 2925 3    50   Output ~ 0
RELAY12V
Wire Wire Line
	5075 2800 5150 2800
Wire Wire Line
	5150 2800 5150 2925
$Comp
L Device:D_Small D2
U 1 1 5E867CA9
P 4625 3125
F 0 "D2" H 4625 3300 50  0000 C CNN
F 1 "1N4148W" H 4625 3239 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" V 4625 3125 50  0001 C CNN
F 3 "~" V 4625 3125 50  0001 C CNN
	1    4625 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4525 3125 4025 3125
Wire Wire Line
	4025 3125 4025 2650
Wire Wire Line
	4025 2650 4175 2650
Connection ~ 4175 2650
Wire Wire Line
	4725 3125 5450 3125
Connection ~ 5450 3125
Wire Wire Line
	5450 3125 5450 3275
$Comp
L Transistor_BJT:BC847W Q2
U 1 1 5E8BC0FC
P 8075 3500
F 0 "Q2" H 8265 3546 50  0000 L CNN
F 1 "BC847W" H 8265 3455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8275 3425 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 8075 3500 50  0001 L CNN
	1    8075 3500
	1    0    0    -1  
$EndComp
$Comp
L carecasetester-rescue:AZ952-athir K?
U 1 1 5E8BC103
P 7350 2575
AR Path="/5E8BC103" Ref="K?"  Part="1" 
AR Path="/5E3E43C1/5E8BC103" Ref="K2"  Part="1" 
F 0 "K2" V 7854 2575 45  0000 C CNN
F 1 "AZ952" V 7770 2575 45  0000 C CNN
F 2 "athir:AZ952" H 7350 2525 60  0001 C CNN
F 3 "" H 7350 2525 60  0001 C CNN
F 4 "315030000" H 7380 2675 20  0001 C CNN "SKU"
	1    7350 2575
	0    -1   -1   0   
$EndComp
NoConn ~ 6900 2825
Wire Wire Line
	7800 2325 7800 1950
Wire Wire Line
	7800 1950 6900 1950
Wire Wire Line
	6900 1950 6900 2325
Wire Wire Line
	6900 2675 6900 2325
Connection ~ 6900 2325
Wire Wire Line
	7800 2675 8175 2675
Wire Wire Line
	8175 2675 8175 3150
$Comp
L power:GND #PWR09
U 1 1 5E8BC118
P 8175 3950
F 0 "#PWR09" H 8175 3700 50  0001 C CNN
F 1 "GND" H 8180 3777 50  0000 C CNN
F 2 "" H 8175 3950 50  0001 C CNN
F 3 "" H 8175 3950 50  0001 C CNN
	1    8175 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8175 3700 8175 3950
$Comp
L Device:R_Small R29
U 1 1 5E8BC11F
P 7350 3500
F 0 "R29" V 7154 3500 50  0000 C CNN
F 1 "4k7" V 7245 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7350 3500 50  0001 C CNN
F 3 "~" H 7350 3500 50  0001 C CNN
	1    7350 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	7450 3500 7875 3500
Text HLabel 6900 3500 0    50   Input ~ 0
Relay_driver2
Wire Wire Line
	6900 3500 7250 3500
Text HLabel 7875 2950 3    50   Output ~ 0
RELAYBAT
Wire Wire Line
	7800 2825 7875 2825
Wire Wire Line
	7875 2825 7875 2950
$Comp
L Device:D_Small D3
U 1 1 5E8BC12B
P 7350 3150
F 0 "D3" H 7350 3325 50  0000 C CNN
F 1 "1N4148W" H 7350 3264 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P10.16mm_Horizontal" V 7350 3150 50  0001 C CNN
F 3 "~" V 7350 3150 50  0001 C CNN
	1    7350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 3150 6750 3150
Wire Wire Line
	6750 3150 6750 2675
Wire Wire Line
	6750 2675 6900 2675
Connection ~ 6900 2675
Wire Wire Line
	7450 3150 8175 3150
Connection ~ 8175 3150
Wire Wire Line
	8175 3150 8175 3300
$Comp
L power:+5V #PWR?
U 1 1 5E8CEDFA
P 6900 1950
F 0 "#PWR?" H 6900 1800 50  0001 C CNN
F 1 "+5V" H 6915 2123 50  0000 C CNN
F 2 "" H 6900 1950 50  0001 C CNN
F 3 "" H 6900 1950 50  0001 C CNN
	1    6900 1950
	1    0    0    -1  
$EndComp
Connection ~ 6900 1950
$EndSCHEMATC
