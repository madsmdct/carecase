EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
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
L 74xx:CD74HC4067M U1
U 1 1 5E3BAB57
P 5950 3150
F 0 "U1" H 5950 4331 50  0000 C CNN
F 1 "CD74HC4067M" H 5950 4240 50  0000 C CNN
F 2 "Package_SO:SOIC-24W_7.5x15.4mm_P1.27mm" H 6850 2150 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/cd74hc4067.pdf" H 5600 4000 50  0001 C CNN
	1    5950 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5E3BC014
P 6150 1925
F 0 "#PWR04" H 6150 1775 50  0001 C CNN
F 1 "+5V" H 6165 2098 50  0000 C CNN
F 2 "" H 6150 1925 50  0001 C CNN
F 3 "" H 6150 1925 50  0001 C CNN
	1    6150 1925
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2150 6150 2150
Wire Wire Line
	6150 2150 6150 1925
$Comp
L power:GND #PWR03
U 1 1 5E3BC6FC
P 5950 4400
F 0 "#PWR03" H 5950 4150 50  0001 C CNN
F 1 "GND" H 5955 4227 50  0000 C CNN
F 2 "" H 5950 4400 50  0001 C CNN
F 3 "" H 5950 4400 50  0001 C CNN
	1    5950 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4400 5950 4375
Text HLabel 4775 2650 0    50   Input ~ 0
A0(Vref)
Wire Wire Line
	5450 2650 5250 2650
Text HLabel 4750 3050 0    50   Input ~ 0
D2
Text HLabel 4750 3150 0    50   Input ~ 0
D3
Text HLabel 4750 3250 0    50   Input ~ 0
D4
Text HLabel 4750 3350 0    50   Input ~ 0
D5
Wire Wire Line
	4750 3350 5450 3350
Wire Wire Line
	4750 3250 5450 3250
Wire Wire Line
	4750 3150 5450 3150
Wire Wire Line
	4750 3050 5450 3050
$Comp
L Connector:Conn_01x01_Male J4-TP16
U 1 1 5E3BE096
P 9975 1925
F 0 "J4-TP16" H 9947 1857 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 1948 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 1925 50  0001 C CNN
F 3 "~" H 9975 1925 50  0001 C CNN
	1    9975 1925
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J5-TP8
U 1 1 5E3BF3CE
P 9975 2125
F 0 "J5-TP8" H 9947 2057 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 2148 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 2125 50  0001 C CNN
F 3 "~" H 9975 2125 50  0001 C CNN
	1    9975 2125
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J6-TP21
U 1 1 5E3BF5A5
P 9975 2325
F 0 "J6-TP21" H 9947 2257 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 2348 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 2325 50  0001 C CNN
F 3 "~" H 9975 2325 50  0001 C CNN
	1    9975 2325
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J7-TP27
U 1 1 5E3C0F4E
P 9975 2550
F 0 "J7-TP27" H 9947 2482 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 2573 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 2550 50  0001 C CNN
F 3 "~" H 9975 2550 50  0001 C CNN
	1    9975 2550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J8-TP13
U 1 1 5E3C0F54
P 9975 2750
F 0 "J8-TP13" H 9947 2682 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 2773 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 2750 50  0001 C CNN
F 3 "~" H 9975 2750 50  0001 C CNN
	1    9975 2750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J9-TP19
U 1 1 5E3C0F5A
P 9975 2950
F 0 "J9-TP19" H 9947 2882 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 2973 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 2950 50  0001 C CNN
F 3 "~" H 9975 2950 50  0001 C CNN
	1    9975 2950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J10-TP22
U 1 1 5E3C3E4A
P 9975 3175
F 0 "J10-TP22" H 9947 3107 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 3198 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 3175 50  0001 C CNN
F 3 "~" H 9975 3175 50  0001 C CNN
	1    9975 3175
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J11-TP7
U 1 1 5E3C3E50
P 9975 3375
F 0 "J11-TP7" H 9947 3307 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 3398 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 3375 50  0001 C CNN
F 3 "~" H 9975 3375 50  0001 C CNN
	1    9975 3375
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J12-TP14
U 1 1 5E3C3E56
P 9975 3575
F 0 "J12-TP14" H 9947 3507 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 3598 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 3575 50  0001 C CNN
F 3 "~" H 9975 3575 50  0001 C CNN
	1    9975 3575
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J13-TP23
U 1 1 5E3C3E5C
P 9975 3825
F 0 "J13-TP23" H 9947 3757 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 3848 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 3825 50  0001 C CNN
F 3 "~" H 9975 3825 50  0001 C CNN
	1    9975 3825
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J14-TP17
U 1 1 5E3C3E62
P 9975 4025
F 0 "J14-TP17" H 9947 3957 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 4048 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 4025 50  0001 C CNN
F 3 "~" H 9975 4025 50  0001 C CNN
	1    9975 4025
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J15-TP20
U 1 1 5E3C3E68
P 9975 4225
F 0 "J15-TP20" H 9947 4157 50  0000 R CNN
F 1 "Conn_01x01_Male" H 9947 4248 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 9975 4225 50  0001 C CNN
F 3 "~" H 9975 4225 50  0001 C CNN
	1    9975 4225
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Male J16-TP24
U 1 1 5E3C66C3
P 6275 4325
F 0 "J16-TP24" H 6247 4257 50  0000 R CNN
F 1 "Conn_01x01_Male" H 6247 4348 50  0000 R CNN
F 2 "MM:P50-E-120-G(Pogo)_0.7mmHole_1.5mmPad" H 6275 4325 50  0001 C CNN
F 3 "~" H 6275 4325 50  0001 C CNN
	1    6275 4325
	-1   0    0    1   
$EndComp
Wire Wire Line
	6075 4325 5950 4325
Connection ~ 5950 4325
Wire Wire Line
	5950 4325 5950 4250
Wire Wire Line
	6450 2450 6450 1925
Wire Wire Line
	6450 1925 6500 1925
Wire Wire Line
	6450 2550 6525 2550
Wire Wire Line
	6525 2550 6525 2125
Wire Wire Line
	6450 2650 6625 2650
Wire Wire Line
	6625 2650 6625 2325
Wire Wire Line
	6625 2325 7025 2325
Wire Wire Line
	6450 2750 6700 2750
Wire Wire Line
	6700 2750 6700 2550
Wire Wire Line
	6700 2550 7275 2550
Wire Wire Line
	6450 2850 6800 2850
Wire Wire Line
	6800 2850 6800 2750
Wire Wire Line
	9275 3050 9275 3175
Wire Wire Line
	6450 3150 8275 3150
Wire Wire Line
	9175 3150 9175 3375
Wire Wire Line
	9175 3375 9275 3375
Wire Wire Line
	9050 3250 9050 3575
Wire Wire Line
	9050 3575 9275 3575
Wire Wire Line
	6450 3250 8525 3250
Wire Wire Line
	6450 3350 8775 3350
Wire Wire Line
	8950 3350 8950 3825
Wire Wire Line
	8950 3825 9275 3825
Wire Wire Line
	6450 3450 8850 3450
Wire Wire Line
	8850 3450 8850 4025
Wire Wire Line
	8850 4025 9025 4025
Wire Wire Line
	8750 3550 8750 4225
Wire Wire Line
	8750 4225 9275 4225
Wire Wire Line
	6450 3550 8750 3550
NoConn ~ 6450 3650
NoConn ~ 6450 3750
NoConn ~ 6450 3850
NoConn ~ 6450 3950
$Comp
L Connector:Conn_01x02_Male J5-~E1
U 1 1 5E3CA34F
P 4950 3775
F 0 "J5-~E1" H 5058 3961 50  0000 C CNN
F 1 "Conn_01x02_Male" H 5058 3864 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 4950 3775 50  0001 C CNN
F 3 "~" H 4950 3775 50  0001 C CNN
	1    4950 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3750 5150 3750
Wire Wire Line
	5150 3750 5150 3775
Wire Wire Line
	5950 4325 5425 4325
Wire Wire Line
	5425 4325 5425 3875
Wire Wire Line
	5425 3875 5150 3875
$Comp
L Device:R_Small R2
U 1 1 5E3C4A74
P 6525 4650
F 0 "R2" H 6584 4696 50  0000 L CNN
F 1 "7k6" H 6584 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6525 4650 50  0001 C CNN
F 3 "~" H 6525 4650 50  0001 C CNN
	1    6525 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5E3C6815
P 6775 4650
F 0 "R3" H 6834 4696 50  0000 L CNN
F 1 "7k6" H 6834 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6775 4650 50  0001 C CNN
F 3 "~" H 6775 4650 50  0001 C CNN
	1    6775 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5E3C8471
P 7025 4650
F 0 "R4" H 7084 4696 50  0000 L CNN
F 1 "7k6" H 7084 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7025 4650 50  0001 C CNN
F 3 "~" H 7025 4650 50  0001 C CNN
	1    7025 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5E3C8477
P 7275 4650
F 0 "R5" H 7334 4696 50  0000 L CNN
F 1 "7k6" H 7334 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7275 4650 50  0001 C CNN
F 3 "~" H 7275 4650 50  0001 C CNN
	1    7275 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5E3CA8F3
P 7525 4650
F 0 "R6" H 7584 4696 50  0000 L CNN
F 1 "7k6" H 7584 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7525 4650 50  0001 C CNN
F 3 "~" H 7525 4650 50  0001 C CNN
	1    7525 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5E3CA8F9
P 7775 4650
F 0 "R7" H 7834 4696 50  0000 L CNN
F 1 "7k6" H 7834 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7775 4650 50  0001 C CNN
F 3 "~" H 7775 4650 50  0001 C CNN
	1    7775 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5E3CA8FF
P 8025 4650
F 0 "R8" H 8084 4696 50  0000 L CNN
F 1 "7k6" H 8084 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8025 4650 50  0001 C CNN
F 3 "~" H 8025 4650 50  0001 C CNN
	1    8025 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5E3CA905
P 8275 4650
F 0 "R9" H 8334 4696 50  0000 L CNN
F 1 "7k6" H 8334 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8275 4650 50  0001 C CNN
F 3 "~" H 8275 4650 50  0001 C CNN
	1    8275 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5E3CB8D1
P 8525 4650
F 0 "R10" H 8584 4696 50  0000 L CNN
F 1 "7k6" H 8584 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8525 4650 50  0001 C CNN
F 3 "~" H 8525 4650 50  0001 C CNN
	1    8525 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R11
U 1 1 5E3CB8D7
P 8775 4650
F 0 "R11" H 8834 4696 50  0000 L CNN
F 1 "7k6" H 8834 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8775 4650 50  0001 C CNN
F 3 "~" H 8775 4650 50  0001 C CNN
	1    8775 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R12
U 1 1 5E3CB8DD
P 9025 4650
F 0 "R12" H 9084 4696 50  0000 L CNN
F 1 "7k6" H 9084 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9025 4650 50  0001 C CNN
F 3 "~" H 9025 4650 50  0001 C CNN
	1    9025 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R13
U 1 1 5E3CB8E3
P 9275 4650
F 0 "R13" H 9334 4696 50  0000 L CNN
F 1 "7k6" H 9334 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9275 4650 50  0001 C CNN
F 3 "~" H 9275 4650 50  0001 C CNN
	1    9275 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4375 6150 4375
Wire Wire Line
	6150 4375 6150 4750
Wire Wire Line
	6150 4750 6525 4750
Connection ~ 5950 4375
Wire Wire Line
	5950 4375 5950 4325
Connection ~ 6525 4750
Wire Wire Line
	6525 4750 6775 4750
Connection ~ 6775 4750
Wire Wire Line
	6775 4750 7025 4750
Connection ~ 7025 4750
Wire Wire Line
	7025 4750 7275 4750
Connection ~ 7275 4750
Wire Wire Line
	7275 4750 7525 4750
Connection ~ 7525 4750
Wire Wire Line
	7525 4750 7775 4750
Connection ~ 7775 4750
Wire Wire Line
	7775 4750 8025 4750
Connection ~ 8025 4750
Wire Wire Line
	8025 4750 8275 4750
Connection ~ 8275 4750
Wire Wire Line
	8275 4750 8525 4750
Connection ~ 8525 4750
Wire Wire Line
	8525 4750 8775 4750
Connection ~ 8775 4750
Wire Wire Line
	8775 4750 9025 4750
Connection ~ 9025 4750
Wire Wire Line
	9025 4750 9275 4750
Wire Wire Line
	6525 4100 6500 4100
Wire Wire Line
	6525 4100 6525 4550
Wire Wire Line
	6500 4100 6500 1925
Connection ~ 6500 1925
Wire Wire Line
	6500 1925 9275 1925
Wire Wire Line
	6775 4550 6775 2125
Wire Wire Line
	6525 2125 6775 2125
Connection ~ 6775 2125
Wire Wire Line
	6775 2125 9275 2125
Wire Wire Line
	7025 4550 7025 2325
Connection ~ 7025 2325
Wire Wire Line
	7025 2325 9275 2325
Wire Wire Line
	7275 4550 7275 2550
Connection ~ 7275 2550
Wire Wire Line
	7275 2550 9275 2550
Wire Wire Line
	7525 4550 7525 2750
Wire Wire Line
	6800 2750 7525 2750
Connection ~ 7525 2750
Wire Wire Line
	7525 2750 9275 2750
Wire Wire Line
	7775 4550 7775 2950
Wire Wire Line
	6450 2950 7775 2950
Connection ~ 7775 2950
Wire Wire Line
	7775 2950 9275 2950
Wire Wire Line
	8025 4550 8025 3050
Wire Wire Line
	6450 3050 8025 3050
Connection ~ 8025 3050
Wire Wire Line
	8025 3050 9275 3050
Wire Wire Line
	8275 4550 8275 3150
Connection ~ 8275 3150
Wire Wire Line
	8275 3150 9175 3150
Wire Wire Line
	8525 4550 8525 3250
Connection ~ 8525 3250
Wire Wire Line
	8525 3250 9050 3250
Wire Wire Line
	8775 4550 8775 3350
Connection ~ 8775 3350
Wire Wire Line
	8775 3350 8950 3350
Wire Wire Line
	9025 4550 9025 4025
Connection ~ 9025 4025
Wire Wire Line
	9025 4025 9275 4025
$Comp
L Device:R_Small R14
U 1 1 5E3FA7A6
P 9375 1925
F 0 "R14" V 9375 1925 50  0000 C CNN
F 1 "20k" V 9270 1925 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 1925 50  0001 C CNN
F 3 "~" H 9375 1925 50  0001 C CNN
	1    9375 1925
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R15
U 1 1 5E3FDAE8
P 9375 2125
F 0 "R15" V 9375 2125 50  0000 C CNN
F 1 "20k" V 9270 2125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 2125 50  0001 C CNN
F 3 "~" H 9375 2125 50  0001 C CNN
	1    9375 2125
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R21
U 1 1 5E4001F7
P 9375 3375
F 0 "R21" V 9375 3375 50  0000 C CNN
F 1 "20k" V 9270 3375 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 3375 50  0001 C CNN
F 3 "~" H 9375 3375 50  0001 C CNN
	1    9375 3375
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R22
U 1 1 5E4024B5
P 9375 3575
F 0 "R22" V 9375 3575 50  0000 C CNN
F 1 "20k" V 9270 3575 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 3575 50  0001 C CNN
F 3 "~" H 9375 3575 50  0001 C CNN
	1    9375 3575
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R23
U 1 1 5E40476F
P 9375 3825
F 0 "R23" V 9375 3825 50  0000 C CNN
F 1 "20k" V 9270 3825 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 3825 50  0001 C CNN
F 3 "~" H 9375 3825 50  0001 C CNN
	1    9375 3825
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R16
U 1 1 5E4093E5
P 9375 2325
F 0 "R16" V 9375 2325 50  0000 C CNN
F 1 "3k9" V 9270 2325 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 2325 50  0001 C CNN
F 3 "~" H 9375 2325 50  0001 C CNN
	1    9375 2325
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R19
U 1 1 5E40BCCE
P 9375 2950
F 0 "R19" V 9375 2950 50  0000 C CNN
F 1 "3k9" V 9270 2950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 2950 50  0001 C CNN
F 3 "~" H 9375 2950 50  0001 C CNN
	1    9375 2950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R20
U 1 1 5E40DFDC
P 9375 3175
F 0 "R20" V 9375 3175 50  0000 C CNN
F 1 "3k9" V 9270 3175 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 3175 50  0001 C CNN
F 3 "~" H 9375 3175 50  0001 C CNN
	1    9375 3175
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5E4102A8
P 9375 2550
F 0 "R17" V 9375 2550 50  0000 C CNN
F 1 "2k9" V 9270 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 2550 50  0001 C CNN
F 3 "~" H 9375 2550 50  0001 C CNN
	1    9375 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5E413318
P 9375 2750
F 0 "R18" V 9375 2750 50  0000 C CNN
F 1 "2k9" V 9270 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 2750 50  0001 C CNN
F 3 "~" H 9375 2750 50  0001 C CNN
	1    9375 2750
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R24
U 1 1 5E4155FA
P 9375 4025
F 0 "R24" V 9375 4025 50  0000 C CNN
F 1 "2k9" V 9270 4025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 4025 50  0001 C CNN
F 3 "~" H 9375 4025 50  0001 C CNN
	1    9375 4025
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R25
U 1 1 5E4177D5
P 9375 4225
F 0 "R25" V 9375 4225 50  0000 C CNN
F 1 "100" V 9270 4225 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9375 4225 50  0001 C CNN
F 3 "~" H 9375 4225 50  0001 C CNN
	1    9375 4225
	0    1    1    0   
$EndComp
Wire Wire Line
	9475 4225 9775 4225
Wire Wire Line
	9475 4025 9775 4025
Wire Wire Line
	9475 3825 9775 3825
Wire Wire Line
	9475 3575 9775 3575
Wire Wire Line
	9475 3375 9775 3375
Wire Wire Line
	9775 3175 9475 3175
Wire Wire Line
	9475 2950 9775 2950
Wire Wire Line
	9775 2750 9475 2750
Wire Wire Line
	9475 2325 9775 2325
Wire Wire Line
	9775 2125 9475 2125
Wire Wire Line
	9475 2550 9675 2550
$Comp
L Diode:1N4001 D1
U 1 1 5E455992
P 10775 2650
F 0 "D1" H 10925 2700 50  0000 C CNN
F 1 "1N4001-B" H 11000 2600 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 10775 2475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10775 2650 50  0001 C CNN
	1    10775 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10625 2650 9675 2650
Wire Wire Line
	9675 2650 9675 2550
Connection ~ 9675 2550
Wire Wire Line
	9675 2550 9775 2550
Wire Wire Line
	10925 2650 11025 2650
Wire Wire Line
	11025 2650 11025 2625
Connection ~ 9275 4225
Wire Wire Line
	9275 4225 9275 4550
$Comp
L Device:R_Small R26
U 1 1 5E3CC792
P 5150 2650
F 0 "R26" V 4954 2650 50  0000 C CNN
F 1 "100k" V 5045 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5150 2650 50  0001 C CNN
F 3 "~" H 5150 2650 50  0001 C CNN
	1    5150 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2650 4775 2650
Wire Wire Line
	9475 1925 9600 1925
Text HLabel 9600 1600 1    50   Input ~ 0
RELAY12V
Wire Wire Line
	9600 1600 9600 1925
Connection ~ 9600 1925
Wire Wire Line
	9600 1925 9775 1925
Text HLabel 11025 2625 1    50   Input ~ 0
RELAYBAT
$EndSCHEMATC