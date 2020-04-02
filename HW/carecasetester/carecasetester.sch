EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5575 4975 975  475 
U 5E396556
F0 "display" 50
F1 "display.sch" 50
F2 "SDA" B L 5575 5125 50 
F3 "SCL" I L 5575 5025 50 
$EndSheet
Wire Wire Line
	5425 4300 5425 5125
Wire Wire Line
	5425 5125 5575 5125
Wire Wire Line
	5525 4300 5525 5025
Wire Wire Line
	5525 5025 5575 5025
$Sheet
S 2600 2350 800  550 
U 5E3BA6A3
F0 "4067" 50
F1 "4067.sch" 50
F2 "A0(Vref)" I R 3400 2425 50 
F3 "D2" I R 3400 2550 50 
F4 "D3" I R 3400 2625 50 
F5 "D4" I R 3400 2700 50 
F6 "D5" I R 3400 2775 50 
F7 "RELAY" I R 3400 2850 50 
$EndSheet
$Sheet
S 4150 3800 700  375 
U 5E3DBE35
F0 "testpoints" 50
F1 "testpoints.sch" 50
F2 "TP4" I R 4850 3900 50 
F3 "TP5" I R 4850 4000 50 
$EndSheet
Wire Wire Line
	5275 3100 3975 3100
Wire Wire Line
	3975 3100 3975 2550
Wire Wire Line
	3975 2550 3400 2550
Wire Wire Line
	5275 3200 3900 3200
Wire Wire Line
	3900 3200 3900 2625
Wire Wire Line
	3900 2625 3400 2625
Wire Wire Line
	5275 3300 3825 3300
Wire Wire Line
	3825 3300 3825 2700
Wire Wire Line
	3825 2700 3400 2700
Wire Wire Line
	5275 3400 3750 3400
Wire Wire Line
	3750 3400 3750 2775
Wire Wire Line
	3750 2775 3400 2775
Wire Wire Line
	3400 2425 4000 2425
Wire Wire Line
	4000 2425 4000 1925
Wire Wire Line
	7525 1925 7525 3400
Wire Wire Line
	7525 3400 6475 3400
$Comp
L Switch:SW_DIP_x02 SW1
U 1 1 5E3AB41F
P 7350 2825
F 0 "SW1" H 7350 3192 50  0000 C CNN
F 1 "SW_DIP_x02" H 7350 3101 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 7350 2825 50  0001 C CNN
F 3 "~" H 7350 2825 50  0001 C CNN
	1    7350 2825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 3125 7300 3125
Wire Wire Line
	7250 2525 7300 2525
Wire Wire Line
	6725 3100 6725 3225
Wire Wire Line
	6725 3225 7300 3225
Wire Wire Line
	7300 3225 7300 3125
Connection ~ 7300 3125
Wire Wire Line
	7300 3125 7350 3125
Wire Wire Line
	7300 2525 7300 2450
Wire Wire Line
	6725 2450 6725 3000
Wire Wire Line
	6725 3000 6475 3000
Connection ~ 7300 2525
Wire Wire Line
	7300 2525 7350 2525
Wire Wire Line
	6475 3100 6725 3100
Wire Wire Line
	4000 1925 7525 1925
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5E3C03D2
P 5925 1525
F 0 "J4" V 5987 1769 50  0000 L CNN
F 1 "Conn_01x06_Male" V 6078 1769 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 5925 1525 50  0001 C CNN
F 3 "~" H 5925 1525 50  0001 C CNN
	1    5925 1525
	0    1    1    0   
$EndComp
Wire Wire Line
	5525 2300 5525 1725
Wire Wire Line
	5525 1725 5625 1725
Wire Wire Line
	5625 1800 5725 1800
Wire Wire Line
	5725 1800 5725 1725
Wire Wire Line
	5625 1800 5625 2300
Wire Wire Line
	5725 2300 5725 1875
Wire Wire Line
	5725 1875 5825 1875
Wire Wire Line
	5825 1875 5825 1725
Wire Wire Line
	6025 2300 6025 2075
Wire Wire Line
	6025 1875 5925 1875
Wire Wire Line
	5925 1875 5925 1725
Wire Wire Line
	6125 2300 6125 2275
Wire Wire Line
	6125 1800 6025 1800
Wire Wire Line
	6025 1800 6025 1725
Wire Wire Line
	6225 1725 6125 1725
Connection ~ 6025 2075
NoConn ~ 5625 4300
NoConn ~ 5725 4300
NoConn ~ 5925 4300
NoConn ~ 6125 4300
NoConn ~ 6225 4300
NoConn ~ 6325 4300
NoConn ~ 6475 3800
NoConn ~ 6475 3700
NoConn ~ 6475 3600
NoConn ~ 6475 3500
NoConn ~ 6475 3300
NoConn ~ 6475 3200
NoConn ~ 6475 2900
NoConn ~ 6475 2700
NoConn ~ 5275 2700
NoConn ~ 5275 2800
NoConn ~ 5275 2900
NoConn ~ 5275 3800
Wire Wire Line
	6725 2450 6975 2450
Wire Wire Line
	6025 4425 6025 4300
$Comp
L power:+5V #PWR0103
U 1 1 5E40D392
P 6975 2450
F 0 "#PWR0103" H 6975 2300 50  0001 C CNN
F 1 "+5V" H 6990 2623 50  0000 C CNN
F 2 "" H 6975 2450 50  0001 C CNN
F 3 "" H 6975 2450 50  0001 C CNN
	1    6975 2450
	1    0    0    -1  
$EndComp
Connection ~ 6975 2450
Wire Wire Line
	6975 2450 7300 2450
$Comp
L power:GND #PWR0104
U 1 1 5E40DB1C
P 6625 2775
F 0 "#PWR0104" H 6625 2525 50  0001 C CNN
F 1 "GND" H 6630 2602 50  0000 C CNN
F 2 "" H 6625 2775 50  0001 C CNN
F 3 "" H 6625 2775 50  0001 C CNN
	1    6625 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 2800 6550 2800
Wire Wire Line
	6550 2800 6550 2775
Wire Wire Line
	6550 2775 6625 2775
$Comp
L power:GND #PWR0105
U 1 1 5E40F82B
P 5050 2825
F 0 "#PWR0105" H 5050 2575 50  0001 C CNN
F 1 "GND" H 5055 2652 50  0000 C CNN
F 2 "" H 5050 2825 50  0001 C CNN
F 3 "" H 5050 2825 50  0001 C CNN
	1    5050 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2825 5200 2825
Wire Wire Line
	5200 2825 5200 3000
Wire Wire Line
	5200 3000 5275 3000
$Comp
L power:GND #PWR0106
U 1 1 5E4115C3
P 6025 4425
F 0 "#PWR0106" H 6025 4175 50  0001 C CNN
F 1 "GND" H 6030 4252 50  0000 C CNN
F 2 "" H 6025 4425 50  0001 C CNN
F 3 "" H 6025 4425 50  0001 C CNN
	1    6025 4425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 1875 6025 2075
$Comp
L power:+5V #PWR0110
U 1 1 5E42FF3A
P 5825 4400
F 0 "#PWR0110" H 5825 4250 50  0001 C CNN
F 1 "+5V" H 5840 4573 50  0000 C CNN
F 2 "" H 5825 4400 50  0001 C CNN
F 3 "" H 5825 4400 50  0001 C CNN
	1    5825 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	5825 4300 5825 4400
$Comp
L MM_svendeprojekt:Arduino_Pro_Mini A1
U 1 1 5E436A6E
P 5875 3500
F 0 "A1" H 5875 4881 50  0000 C CNN
F 1 "Arduino_Pro_Mini" H 5875 4790 50  0000 C CNN
F 2 "MM:Arduino_Pro_Micro" H 5825 4300 50  0001 C CNN
F 3 "" H 5825 4300 50  0001 C CNN
	1    5875 3500
	1    0    0    -1  
$EndComp
$Sheet
S 7700 1925 900  775 
U 5E43D98F
F0 "pwr" 50
F1 "pwr.sch" 50
$EndSheet
Wire Wire Line
	6225 1725 6225 2175
Wire Wire Line
	6225 2300 6225 2175
Connection ~ 6225 2175
Wire Wire Line
	6025 2075 7050 2075
Wire Wire Line
	7050 2075 7050 1775
Wire Wire Line
	6225 2175 7150 2175
$Comp
L power:+5V #PWR0101
U 1 1 5E44A0EC
P 7050 1775
F 0 "#PWR0101" H 7050 1625 50  0001 C CNN
F 1 "+5V" H 7065 1948 50  0000 C CNN
F 2 "" H 7050 1775 50  0001 C CNN
F 3 "" H 7050 1775 50  0001 C CNN
	1    7050 1775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E44A4FA
P 7275 1700
F 0 "#PWR0102" H 7275 1450 50  0001 C CNN
F 1 "GND" H 7280 1527 50  0000 C CNN
F 2 "" H 7275 1700 50  0001 C CNN
F 3 "" H 7275 1700 50  0001 C CNN
	1    7275 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1700 7275 1700
Wire Wire Line
	7150 1700 7150 2175
$Comp
L power:GND #PWR0108
U 1 1 5E44DF96
P 6500 2275
F 0 "#PWR0108" H 6500 2025 50  0001 C CNN
F 1 "GND" H 6505 2102 50  0000 C CNN
F 2 "" H 6500 2275 50  0001 C CNN
F 3 "" H 6500 2275 50  0001 C CNN
	1    6500 2275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 2275 6125 2275
Connection ~ 6125 2275
Wire Wire Line
	6125 2275 6125 1800
$Sheet
S 2575 3450 825  600 
U 5E3E43C1
F0 "RELAY" 50
F1 "relay.sch" 50
F2 "Relay_driver" I R 3400 3750 50 
F3 "RELAY" O R 3400 3575 50 
$EndSheet
Wire Wire Line
	3400 3575 3575 3575
Wire Wire Line
	3575 3575 3575 2850
Wire Wire Line
	3575 2850 3400 2850
Wire Wire Line
	3400 3750 3750 3750
Wire Wire Line
	3750 3750 3750 3500
Wire Wire Line
	3750 3500 5275 3500
Wire Wire Line
	4850 3900 4950 3900
Wire Wire Line
	4950 3900 4950 3600
Wire Wire Line
	4950 3600 5275 3600
Wire Wire Line
	4850 4000 5075 4000
Wire Wire Line
	5075 4000 5075 3700
Wire Wire Line
	5075 3700 5275 3700
$EndSCHEMATC
