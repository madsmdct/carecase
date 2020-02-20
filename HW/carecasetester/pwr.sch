EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L Connector:Conn_01x02_Male J5
U 1 1 5E43E40C
P 3700 1275
F 0 "J5" V 3762 1319 50  0000 L CNN
F 1 "12V_Psu" V 3853 1319 50  0000 L CNN
F 2 "athir:Friwo_Texas_2-pin_Plug(1321609)" H 3700 1275 50  0001 C CNN
F 3 "~" H 3700 1275 50  0001 C CNN
	1    3700 1275
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E43EAF3
P 3400 1550
F 0 "#PWR0107" H 3400 1300 50  0001 C CNN
F 1 "GND" H 3405 1377 50  0000 C CNN
F 2 "" H 3400 1550 50  0001 C CNN
F 3 "" H 3400 1550 50  0001 C CNN
	1    3400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1550 3400 1475
Wire Wire Line
	3400 1475 3600 1475
$Comp
L Regulator_Linear:L7805 U2
U 1 1 5E43F2F8
P 6350 1825
F 0 "U2" H 6350 2067 50  0000 C CNN
F 1 "L7805" H 6350 1976 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6375 1675 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 6350 1775 50  0001 C CNN
	1    6350 1825
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0113
U 1 1 5E4412C4
P 4175 1525
F 0 "#PWR0113" H 4175 1375 50  0001 C CNN
F 1 "+12V" H 4190 1698 50  0000 C CNN
F 2 "" H 4175 1525 50  0001 C CNN
F 3 "" H 4175 1525 50  0001 C CNN
	1    4175 1525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1475 3700 1525
Wire Wire Line
	3700 1525 3800 1525
$Comp
L power:+12V #PWR0114
U 1 1 5E441865
P 5825 1700
F 0 "#PWR0114" H 5825 1550 50  0001 C CNN
F 1 "+12V" H 5840 1873 50  0000 C CNN
F 2 "" H 5825 1700 50  0001 C CNN
F 3 "" H 5825 1700 50  0001 C CNN
	1    5825 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5825 1700 5825 1825
Wire Wire Line
	5825 1825 5950 1825
$Comp
L power:GND #PWR0115
U 1 1 5E442584
P 6350 2225
F 0 "#PWR0115" H 6350 1975 50  0001 C CNN
F 1 "GND" H 6355 2052 50  0000 C CNN
F 2 "" H 6350 2225 50  0001 C CNN
F 3 "" H 6350 2225 50  0001 C CNN
	1    6350 2225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2225 6350 2200
$Comp
L power:+5V #PWR0116
U 1 1 5E442CB4
P 6900 1725
F 0 "#PWR0116" H 6900 1575 50  0001 C CNN
F 1 "+5V" H 6915 1898 50  0000 C CNN
F 2 "" H 6900 1725 50  0001 C CNN
F 3 "" H 6900 1725 50  0001 C CNN
	1    6900 1725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1825 6675 1825
Wire Wire Line
	6900 1825 6900 1725
$Comp
L Device:C_Small C3
U 1 1 5E4433EB
P 6900 1925
F 0 "C3" V 6850 1800 50  0000 L CNN
F 1 "100µf" V 7000 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6900 1925 50  0001 C CNN
F 3 "~" H 6900 1925 50  0001 C CNN
	1    6900 1925
	1    0    0    -1  
$EndComp
Connection ~ 6900 1825
$Comp
L Device:C_Small C2
U 1 1 5E443BBB
P 6675 1925
F 0 "C2" V 6600 1800 50  0000 L CNN
F 1 "100nf" V 6775 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6675 1925 50  0001 C CNN
F 3 "~" H 6675 1925 50  0001 C CNN
	1    6675 1925
	1    0    0    -1  
$EndComp
Connection ~ 6675 1825
Wire Wire Line
	6675 1825 6900 1825
$Comp
L Device:C_Small C1
U 1 1 5E443F52
P 5950 1925
F 0 "C1" V 5875 1775 50  0000 L CNN
F 1 "100µf" V 6050 1775 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5950 1925 50  0001 C CNN
F 3 "~" H 5950 1925 50  0001 C CNN
	1    5950 1925
	1    0    0    -1  
$EndComp
Connection ~ 5950 1825
Wire Wire Line
	5950 1825 6050 1825
Wire Wire Line
	5950 2025 5950 2200
Wire Wire Line
	5950 2200 6350 2200
Connection ~ 6350 2200
Wire Wire Line
	6350 2200 6350 2125
Wire Wire Line
	6350 2200 6675 2200
Wire Wire Line
	6675 2200 6675 2025
Wire Wire Line
	6675 2200 6900 2200
Wire Wire Line
	6900 2200 6900 2025
Connection ~ 6675 2200
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E4462F1
P 3800 1525
F 0 "#FLG0102" H 3800 1600 50  0001 C CNN
F 1 "PWR_FLAG" H 3800 1698 50  0000 C CNN
F 2 "" H 3800 1525 50  0001 C CNN
F 3 "~" H 3800 1525 50  0001 C CNN
	1    3800 1525
	-1   0    0    1   
$EndComp
Connection ~ 3800 1525
Wire Wire Line
	3800 1525 4175 1525
$EndSCHEMATC
