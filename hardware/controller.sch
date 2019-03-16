EESchema Schematic File Version 4
LIBS:controller-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L MCU_ST_STM32F0:STM32F091CBTx U1
U 1 1 5C8D4DEB
P 2550 3000
F 0 "U1" H 2800 1500 50  0000 C CNN
F 1 "STM32F091CBTx" H 3050 1400 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 2050 1600 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115237.pdf" H 2550 3000 50  0001 C CNN
F 4 "497-17364-ND" H 3050 1300 50  0000 C CNN "DigiKey PN"
F 5 "STM32F091CBT6" H 2550 3000 50  0001 C CNN "Manufacturer PN"
	1    2550 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C8D4E8A
P 1350 1800
F 0 "R1" V 1053 1800 50  0000 C CNN
F 1 "10k" V 1144 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1280 1800 50  0001 C CNN
F 3 "~" H 1350 1800 50  0001 C CNN
F 4 "RMCF0805FT10K0CT-ND" V 1235 1800 50  0000 C CNN "DigiKey PN"
F 5 "RMCF0805FT10K0" H 1350 1800 50  0001 C CNN "Manufacturer PN"
	1    1350 1800
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5C8D4ECD
P 2350 1250
F 0 "C1" H 2236 1159 50  0000 R CNN
F 1 "10uF / 6.3V" H 2236 1250 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2388 1100 50  0001 C CNN
F 3 "~" H 2350 1250 50  0001 C CNN
F 4 "1276-6457-1-ND" H 2236 1341 50  0000 R CNN "DigiKey PN"
F 5 "CL21A106KQFNNNG" H 2350 1250 50  0001 C CNN "Manufacturer PN"
	1    2350 1250
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5C8D53EE
P 10250 1000
F 0 "J2" H 10330 992 50  0000 L CNN
F 1 "Conn_01x02" H 10330 901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10250 1000 50  0001 C CNN
F 3 "~" H 10250 1000 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "DigiKey PN"
F 5 "~" H 0   0   50  0001 C CNN "Manufacturer PN"
	1    10250 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5C8D5515
P 10300 3200
F 0 "J3" H 10380 3192 50  0000 L CNN
F 1 "Conn_01x04" H 10380 3101 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10300 3200 50  0001 C CNN
F 3 "~" H 10300 3200 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "DigiKey PN"
F 5 "~" H 0   0   50  0001 C CNN "Manufacturer PN"
	1    10300 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5C8D572C
P 2500 4600
F 0 "#PWR04" H 2500 4350 50  0001 C CNN
F 1 "GND" H 2505 4427 50  0000 C CNN
F 2 "" H 2500 4600 50  0001 C CNN
F 3 "" H 2500 4600 50  0001 C CNN
	1    2500 4600
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U3
U 1 1 5C8D58CE
P 10000 1900
F 0 "U3" H 10000 2232 50  0000 C CNN
F 1 "AZ1117-3.3" H 10000 2141 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 10000 2150 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 10000 1900 50  0001 C CNN
F 4 "AZ1117CH-3.3TRG1DICT-ND" H 10000 2050 50  0000 C CNN "DigiKey PN"
F 5 "AZ1117CH-3.3TRG1" H 10000 1900 50  0001 C CNN "Manufacturer PN"
	1    10000 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C8D5983
P 10000 1150
F 0 "#PWR017" H 10000 900 50  0001 C CNN
F 1 "GND" H 10005 977 50  0000 C CNN
F 2 "" H 10000 1150 50  0001 C CNN
F 3 "" H 10000 1150 50  0001 C CNN
	1    10000 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5C8D5BA3
P 10000 950
F 0 "#PWR016" H 10000 800 50  0001 C CNN
F 1 "+5V" H 10015 1123 50  0000 C CNN
F 2 "" H 10000 950 50  0001 C CNN
F 3 "" H 10000 950 50  0001 C CNN
	1    10000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1000 10000 1000
Wire Wire Line
	10000 1000 10000 950 
Wire Wire Line
	10050 1100 10000 1100
Wire Wire Line
	10000 1100 10000 1150
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C8D5CD2
P 9700 950
F 0 "#FLG01" H 9700 1025 50  0001 C CNN
F 1 "PWR_FLAG" H 9700 1124 50  0000 C CNN
F 2 "" H 9700 950 50  0001 C CNN
F 3 "~" H 9700 950 50  0001 C CNN
	1    9700 950 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C8D5D0C
P 9700 1150
F 0 "#FLG02" H 9700 1225 50  0001 C CNN
F 1 "PWR_FLAG" H 9700 1323 50  0000 C CNN
F 2 "" H 9700 1150 50  0001 C CNN
F 3 "~" H 9700 1150 50  0001 C CNN
	1    9700 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	10000 1100 9700 1100
Wire Wire Line
	9700 1100 9700 1150
Connection ~ 10000 1100
Wire Wire Line
	10000 1000 9700 1000
Wire Wire Line
	9700 1000 9700 950 
Connection ~ 10000 1000
$Comp
L Device:C C3
U 1 1 5C8D60D0
P 9650 2150
F 0 "C3" H 9536 2059 50  0000 R CNN
F 1 "10uF / 6.3V" H 9536 2150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9688 2000 50  0001 C CNN
F 3 "~" H 9650 2150 50  0001 C CNN
F 4 "1276-6457-1-ND" H 9536 2241 50  0000 R CNN "DigiKey PN"
F 5 "CL21A106KQFNNNG" H 9650 2150 50  0001 C CNN "Manufacturer PN"
	1    9650 2150
	1    0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 5C8D6452
P 10350 2150
F 0 "C4" H 10235 2059 50  0000 R CNN
F 1 "10uF / 6.3V" H 10235 2150 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10388 2000 50  0001 C CNN
F 3 "~" H 10350 2150 50  0001 C CNN
F 4 "1276-6457-1-ND" H 10235 2241 50  0000 R CNN "DigiKey PN"
F 5 "CL21A106KQFNNNG" H 10350 2150 50  0001 C CNN "Manufacturer PN"
	1    10350 2150
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5C8D65B3
P 9400 1800
F 0 "#PWR014" H 9400 1650 50  0001 C CNN
F 1 "+5V" H 9415 1973 50  0000 C CNN
F 2 "" H 9400 1800 50  0001 C CNN
F 3 "" H 9400 1800 50  0001 C CNN
	1    9400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 1800 9400 1900
Wire Wire Line
	9400 1900 9650 1900
Wire Wire Line
	9650 2000 9650 1900
Connection ~ 9650 1900
Wire Wire Line
	9650 1900 9700 1900
Wire Wire Line
	10300 1900 10350 1900
Wire Wire Line
	10600 1900 10600 1800
Wire Wire Line
	10350 2000 10350 1900
Connection ~ 10350 1900
Wire Wire Line
	10350 1900 10600 1900
$Comp
L power:GND #PWR015
U 1 1 5C8D68E3
P 9650 2300
F 0 "#PWR015" H 9650 2050 50  0001 C CNN
F 1 "GND" H 9655 2127 50  0000 C CNN
F 2 "" H 9650 2300 50  0001 C CNN
F 3 "" H 9650 2300 50  0001 C CNN
	1    9650 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C8D6902
P 10000 2200
F 0 "#PWR018" H 10000 1950 50  0001 C CNN
F 1 "GND" H 10005 2027 50  0000 C CNN
F 2 "" H 10000 2200 50  0001 C CNN
F 3 "" H 10000 2200 50  0001 C CNN
	1    10000 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5C8D6921
P 10350 2300
F 0 "#PWR021" H 10350 2050 50  0001 C CNN
F 1 "GND" H 10355 2127 50  0000 C CNN
F 2 "" H 10350 2300 50  0001 C CNN
F 3 "" H 10350 2300 50  0001 C CNN
	1    10350 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR022
U 1 1 5C8D6A9E
P 10600 1800
F 0 "#PWR022" H 10600 1650 50  0001 C CNN
F 1 "+3.3V" H 10615 1973 50  0000 C CNN
F 2 "" H 10600 1800 50  0001 C CNN
F 3 "" H 10600 1800 50  0001 C CNN
	1    10600 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C8D7340
P 1350 2200
F 0 "R2" V 1053 2200 50  0000 C CNN
F 1 "10k" V 1144 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1280 2200 50  0001 C CNN
F 3 "~" H 1350 2200 50  0001 C CNN
F 4 "RMCF0805FT10K0CT-ND" V 1235 2200 50  0000 C CNN "DigiKey PN"
F 5 "RMCF0805FT10K0" H 1350 2200 50  0001 C CNN "Manufacturer PN"
	1    1350 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5C8D7403
P 1150 2250
F 0 "#PWR02" H 1150 2000 50  0001 C CNN
F 1 "GND" H 1155 2077 50  0000 C CNN
F 2 "" H 1150 2250 50  0001 C CNN
F 3 "" H 1150 2250 50  0001 C CNN
	1    1150 2250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 5C8D74C9
P 800 1750
F 0 "#PWR01" H 800 1600 50  0001 C CNN
F 1 "+3.3V" H 815 1923 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1800 800  1800
Wire Wire Line
	800  1800 800  1750
Wire Wire Line
	1150 2250 1150 2200
Wire Wire Line
	1150 2200 1200 2200
Wire Wire Line
	1500 2200 1950 2200
NoConn ~ 1950 2000
NoConn ~ 1950 2100
$Comp
L power:+3.3V #PWR05
U 1 1 5C8D81B7
P 2550 1000
F 0 "#PWR05" H 2550 850 50  0001 C CNN
F 1 "+3.3V" H 2565 1173 50  0000 C CNN
F 2 "" H 2550 1000 50  0001 C CNN
F 3 "" H 2550 1000 50  0001 C CNN
	1    2550 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1600 2350 1550
Wire Wire Line
	2350 1550 2450 1550
Wire Wire Line
	2550 1550 2550 1600
Connection ~ 2550 1550
Wire Wire Line
	2450 1550 2450 1600
Connection ~ 2450 1550
Wire Wire Line
	2450 1550 2550 1550
Wire Wire Line
	2550 1550 2650 1550
Wire Wire Line
	2650 1550 2650 1600
Wire Wire Line
	2650 1550 2750 1550
Wire Wire Line
	2750 1550 2750 1600
Connection ~ 2650 1550
Wire Wire Line
	2350 4500 2350 4550
Wire Wire Line
	2350 4550 2450 4550
Wire Wire Line
	2500 4550 2500 4600
Wire Wire Line
	2450 4550 2450 4500
Connection ~ 2450 4550
Wire Wire Line
	2450 4550 2500 4550
Wire Wire Line
	2500 4550 2550 4550
Wire Wire Line
	2550 4550 2550 4500
Connection ~ 2500 4550
Wire Wire Line
	2550 4550 2650 4550
Wire Wire Line
	2650 4550 2650 4500
Connection ~ 2550 4550
$Comp
L Device:C C2
U 1 1 5C8DBBB5
P 2750 1250
F 0 "C2" H 2865 1341 50  0000 L CNN
F 1 "10uF / 6.3V" H 2865 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2788 1100 50  0001 C CNN
F 3 "~" H 2750 1250 50  0001 C CNN
F 4 "1276-6457-1-ND" H 2865 1159 50  0000 L CNN "DigiKey PN"
F 5 "CL21A106KQFNNNG" H 2750 1250 50  0001 C CNN "Manufacturer PN"
	1    2750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 1100 2350 1050
Wire Wire Line
	2350 1050 2550 1050
Wire Wire Line
	2550 1050 2550 1000
Wire Wire Line
	2550 1050 2750 1050
Wire Wire Line
	2750 1050 2750 1100
Connection ~ 2550 1050
Wire Wire Line
	2550 1050 2550 1550
$Comp
L power:GND #PWR03
U 1 1 5C8DF5BB
P 2350 1400
F 0 "#PWR03" H 2350 1150 50  0001 C CNN
F 1 "GND" H 2355 1227 50  0000 C CNN
F 2 "" H 2350 1400 50  0001 C CNN
F 3 "" H 2350 1400 50  0001 C CNN
	1    2350 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C8DF6AA
P 2750 1400
F 0 "#PWR06" H 2750 1150 50  0001 C CNN
F 1 "GND" H 2755 1227 50  0000 C CNN
F 2 "" H 2750 1400 50  0001 C CNN
F 3 "" H 2750 1400 50  0001 C CNN
	1    2750 1400
	1    0    0    -1  
$EndComp
NoConn ~ 1950 2400
NoConn ~ 1950 2500
NoConn ~ 1950 2600
Wire Wire Line
	10100 3100 10050 3100
Wire Wire Line
	10050 3100 10050 3050
Wire Wire Line
	10100 3400 10050 3400
Wire Wire Line
	10050 3400 10050 3450
$Comp
L power:GND #PWR020
U 1 1 5C8E4E51
P 10050 3450
F 0 "#PWR020" H 10050 3200 50  0001 C CNN
F 1 "GND" H 10055 3277 50  0000 C CNN
F 2 "" H 10050 3450 50  0001 C CNN
F 3 "" H 10050 3450 50  0001 C CNN
	1    10050 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR019
U 1 1 5C8E4F34
P 10050 3050
F 0 "#PWR019" H 10050 2900 50  0001 C CNN
F 1 "+3.3V" H 10065 3223 50  0000 C CNN
F 2 "" H 10050 3050 50  0001 C CNN
F 3 "" H 10050 3050 50  0001 C CNN
	1    10050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3200 9600 3200
Wire Wire Line
	10100 3300 9600 3300
Text Label 9650 3300 0    50   ~ 0
USART1_TX
Text Label 9650 3200 0    50   ~ 0
USART1_RX
$Sheet
S 7350 1150 750  350 
U 5C8E6DC0
F0 "Sheet5C8E6DBF" 50
F1 "can_output.sch" 50
F2 "CAN_H" B L 7350 1250 50 
F3 "CAN_L" B L 7350 1400 50 
$EndSheet
$Sheet
S 7350 1800 750  350 
U 5C8ECB55
F0 "sheet5C8ECB51" 50
F1 "can_output.sch" 50
F2 "CAN_H" B L 7350 1900 50 
F3 "CAN_L" B L 7350 2050 50 
$EndSheet
Wire Wire Line
	3150 3700 3650 3700
Text Label 3200 3800 0    50   ~ 0
USART1_RX
Text Label 3200 3700 0    50   ~ 0
USART1_TX
Wire Wire Line
	3150 3800 3650 3800
Wire Wire Line
	3150 4100 3650 4100
Wire Wire Line
	3150 4200 3650 4200
Text Label 3200 4100 0    50   ~ 0
SWDIO
Text Label 3200 4200 0    50   ~ 0
SWDCLK
Wire Wire Line
	1500 1800 1950 1800
Text Label 1650 1800 0    50   ~ 0
~RESET
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J1
U 1 1 5C8F32B8
P 3200 6500
F 0 "J1" H 2760 6546 50  0000 R CNN
F 1 "Conn_ARM_JTAG_SWD_10" H 2760 6455 50  0000 R CNN
F 2 "Connector_TagConnect:Tag-Connect_TC2050-IDC-NL_2x05_P1.27mm_Vertical" H 3250 5950 50  0001 L TNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.faqs/attached/13634/cortex_debug_connectors.pdf" V 2850 5250 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "DigiKey PN"
F 5 "~" H 0   0   50  0001 C CNN "Manufacturer PN"
	1    3200 6500
	1    0    0    -1  
$EndComp
Text Label 3800 6500 0    50   ~ 0
SWDIO
Text Label 3800 6400 0    50   ~ 0
SWDCLK
Wire Wire Line
	3700 6200 4200 6200
Text Label 3800 6200 0    50   ~ 0
~RESET
NoConn ~ 3700 6600
NoConn ~ 3700 6700
$Comp
L power:GND #PWR08
U 1 1 5C8F9D4B
P 3200 7200
F 0 "#PWR08" H 3200 6950 50  0001 C CNN
F 1 "GND" H 3205 7027 50  0000 C CNN
F 2 "" H 3200 7200 50  0001 C CNN
F 3 "" H 3200 7200 50  0001 C CNN
	1    3200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 7100 3200 7150
Wire Wire Line
	3200 7150 3100 7150
Wire Wire Line
	3100 7150 3100 7100
Connection ~ 3200 7150
Wire Wire Line
	3200 7150 3200 7200
$Comp
L power:+3.3V #PWR07
U 1 1 5C8FBECC
P 3200 5900
F 0 "#PWR07" H 3200 5750 50  0001 C CNN
F 1 "+3.3V" H 3215 6073 50  0000 C CNN
F 2 "" H 3200 5900 50  0001 C CNN
F 3 "" H 3200 5900 50  0001 C CNN
	1    3200 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C8FC029
P 4450 5950
F 0 "R3" H 4380 5859 50  0000 R CNN
F 1 "10k" H 4380 5950 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 5950 50  0001 C CNN
F 3 "~" H 4450 5950 50  0001 C CNN
F 4 "RMCF0805FT10K0CT-ND" H 4380 6041 50  0000 R CNN "DigiKey PN"
F 5 "RMCF0805FT10K0" H 4450 5950 50  0001 C CNN "Manufacturer PN"
	1    4450 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R R4
U 1 1 5C8FC102
P 4600 6450
F 0 "R4" H 4530 6359 50  0000 R CNN
F 1 "10k" H 4530 6450 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4530 6450 50  0001 C CNN
F 3 "~" H 4600 6450 50  0001 C CNN
F 4 "RMCF0805FT10K0CT-ND" H 4530 6541 50  0000 R CNN "DigiKey PN"
F 5 "RMCF0805FT10K0" H 4600 6450 50  0001 C CNN "Manufacturer PN"
	1    4600 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 6650 4600 6600
Wire Wire Line
	4450 6400 4450 6100
Wire Wire Line
	3700 6400 4450 6400
$Comp
L power:+3.3V #PWR09
U 1 1 5C8FF939
P 4450 5800
F 0 "#PWR09" H 4450 5650 50  0001 C CNN
F 1 "+3.3V" H 4465 5973 50  0000 C CNN
F 2 "" H 4450 5800 50  0001 C CNN
F 3 "" H 4450 5800 50  0001 C CNN
	1    4450 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR010
U 1 1 5C8FFAE4
P 4600 6300
F 0 "#PWR010" H 4600 6150 50  0001 C CNN
F 1 "+3.3V" H 4615 6473 50  0000 C CNN
F 2 "" H 4600 6300 50  0001 C CNN
F 3 "" H 4600 6300 50  0001 C CNN
	1    4600 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6500 4450 6500
Wire Wire Line
	4450 6500 4450 6650
Wire Wire Line
	4450 6650 4600 6650
Wire Wire Line
	3150 3900 3650 3900
Wire Wire Line
	3150 4000 3650 4000
Text Label 3200 3900 0    50   ~ 0
CAN_RX
Text Label 3200 4000 0    50   ~ 0
CAN_TX
NoConn ~ 3150 4300
$Comp
L Interface_UART:MAX3051 U2
U 1 1 5C9093E5
P 5850 1650
F 0 "U2" H 5850 2450 50  0000 C CNN
F 1 "MAX3051" H 5850 2350 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 5850 1650 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX3051.pdf" H 5850 1650 50  0001 C CNN
F 4 "MAX3051ESA+CT-ND" H 5850 2250 50  0000 C CNN "DigiKey PN"
F 5 "MAX3051ESA+T" H 5850 1650 50  0001 C CNN "Manufacturer PN"
	1    5850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 1550 6750 1550
Wire Wire Line
	6350 1750 6750 1750
Wire Wire Line
	6950 1250 7350 1250
Wire Wire Line
	7350 1400 6950 1400
Text Label 7000 1250 0    50   ~ 0
CAN_H
Text Label 6400 1550 0    50   ~ 0
CAN_H
Text Label 7000 1400 0    50   ~ 0
CAN_L
Text Label 6400 1750 0    50   ~ 0
CAN_L
Wire Wire Line
	6950 1900 7350 1900
Wire Wire Line
	7350 2050 6950 2050
Text Label 7000 1900 0    50   ~ 0
CAN_H
Text Label 7000 2050 0    50   ~ 0
CAN_L
$Comp
L power:+3.3V #PWR012
U 1 1 5C911AE5
P 5850 1250
F 0 "#PWR012" H 5850 1100 50  0001 C CNN
F 1 "+3.3V" H 6050 1300 50  0000 C CNN
F 2 "" H 5850 1250 50  0001 C CNN
F 3 "" H 5850 1250 50  0001 C CNN
	1    5850 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5C911C40
P 5850 2050
F 0 "#PWR013" H 5850 1800 50  0001 C CNN
F 1 "GND" H 5855 1877 50  0000 C CNN
F 2 "" H 5850 2050 50  0001 C CNN
F 3 "" H 5850 2050 50  0001 C CNN
	1    5850 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5C911DFD
P 5300 1900
F 0 "#PWR011" H 5300 1650 50  0001 C CNN
F 1 "GND" H 5305 1727 50  0000 C CNN
F 2 "" H 5300 1900 50  0001 C CNN
F 3 "" H 5300 1900 50  0001 C CNN
	1    5300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1750 5300 1750
Wire Wire Line
	5300 1750 5300 1850
Wire Wire Line
	5300 1850 5350 1850
Connection ~ 5300 1850
Wire Wire Line
	5300 1850 5300 1900
Wire Wire Line
	5350 1450 4950 1450
Wire Wire Line
	4950 1550 5350 1550
Text Label 5000 1450 0    50   ~ 0
CAN_TX
Text Label 5000 1550 0    50   ~ 0
CAN_RX
NoConn ~ 1950 2800
NoConn ~ 1950 2900
NoConn ~ 1950 3000
NoConn ~ 1950 3100
NoConn ~ 1950 3200
NoConn ~ 1950 3300
NoConn ~ 1950 3400
NoConn ~ 1950 3500
NoConn ~ 1950 3600
NoConn ~ 1950 3700
NoConn ~ 1950 3800
NoConn ~ 1950 3900
NoConn ~ 1950 4200
NoConn ~ 1950 4300
NoConn ~ 3150 2800
NoConn ~ 3150 2900
NoConn ~ 3150 3000
NoConn ~ 3150 3100
NoConn ~ 3150 3200
NoConn ~ 3150 3300
NoConn ~ 3150 3400
NoConn ~ 3150 3500
NoConn ~ 3150 3600
$Comp
L Mechanical:MountingHole H3
U 1 1 5C8D7798
P 7850 5950
F 0 "H3" H 7950 5996 50  0000 L CNN
F 1 "MountingHole" H 7950 5905 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7850 5950 50  0001 C CNN
F 3 "~" H 7850 5950 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "DigiKey PN"
F 5 "~" H 0   0   50  0001 C CNN "Manufacturer PN"
	1    7850 5950
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C8D7956
P 7850 6150
F 0 "H4" H 7950 6196 50  0000 L CNN
F 1 "MountingHole" H 7950 6105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7850 6150 50  0001 C CNN
F 3 "~" H 7850 6150 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "DigiKey PN"
F 5 "~" H 0   0   50  0001 C CNN "Manufacturer PN"
	1    7850 6150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5C8D79CC
P 7650 5950
F 0 "H1" H 7550 5904 50  0000 R CNN
F 1 "MountingHole" H 7550 5995 50  0000 R CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7650 5950 50  0001 C CNN
F 3 "~" H 7650 5950 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "DigiKey PN"
F 5 "~" H 0   0   50  0001 C CNN "Manufacturer PN"
	1    7650 5950
	1    0    0    1   
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C8ECB34
P 7650 6150
F 0 "H2" H 7550 6104 50  0000 R CNN
F 1 "MountingHole" H 7550 6195 50  0000 R CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7650 6150 50  0001 C CNN
F 3 "~" H 7650 6150 50  0001 C CNN
F 4 "~" H 0   0   50  0001 C CNN "DigiKey PN"
F 5 "~" H 0   0   50  0001 C CNN "Manufacturer PN"
	1    7650 6150
	1    0    0    1   
$EndComp
$Comp
L Device:C C7
U 1 1 5C8F15B4
P 5150 1050
F 0 "C7" H 5265 1141 50  0000 L CNN
F 1 "10uF / 6.3V" H 5265 1050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5188 900 50  0001 C CNN
F 3 "~" H 5150 1050 50  0001 C CNN
F 4 "1276-6457-1-ND" H 5265 959 50  0000 L CNN "DigiKey PN"
F 5 "CL21A106KQFNNNG" H 5150 1050 50  0001 C CNN "Manufacturer PN"
	1    5150 1050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5C8F1998
P 5150 900
F 0 "#PWR0101" H 5150 750 50  0001 C CNN
F 1 "+3.3V" H 5350 950 50  0000 C CNN
F 2 "" H 5150 900 50  0001 C CNN
F 3 "" H 5150 900 50  0001 C CNN
	1    5150 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5C8F19C9
P 5150 1200
F 0 "#PWR0102" H 5150 950 50  0001 C CNN
F 1 "GND" H 5155 1027 50  0000 C CNN
F 2 "" H 5150 1200 50  0001 C CNN
F 3 "" H 5150 1200 50  0001 C CNN
	1    5150 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5C8F2176
P 5850 3400
F 0 "D1" H 5841 3707 50  0000 C CNN
F 1 "LED" H 5841 3616 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5850 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
F 4 "160-1423-1-ND" H 5841 3525 50  0000 C CNN "DigiKey PN"
F 5 "LTST-C171GKT" H 5850 3400 50  0001 C CNN "Manufacturer PN"
	1    5850 3400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5C8F244B
P 6700 3400
F 0 "R9" V 6403 3400 50  0000 C CNN
F 1 "330R" V 6494 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 3400 50  0001 C CNN
F 3 "~" H 6700 3400 50  0001 C CNN
F 4 "RMCF0805FT330RCT-ND" V 6585 3400 50  0000 C CNN "DigiKey PN"
F 5 "RMCF0805FT330R" H 6700 3400 50  0001 C CNN "Manufacturer PN"
	1    6700 3400
	0    -1   1    0   
$EndComp
Wire Wire Line
	6550 3400 6000 3400
Wire Wire Line
	6850 3400 6900 3400
Wire Wire Line
	6900 3400 6900 3500
$Comp
L power:GND #PWR0103
U 1 1 5C8F6664
P 6900 3500
F 0 "#PWR0103" H 6900 3250 50  0001 C CNN
F 1 "GND" H 6905 3327 50  0000 C CNN
F 2 "" H 6900 3500 50  0001 C CNN
F 3 "" H 6900 3500 50  0001 C CNN
	1    6900 3500
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5C8F66F2
P 5850 3900
F 0 "D2" H 5841 4207 50  0000 C CNN
F 1 "LED" H 5841 4116 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5850 3900 50  0001 C CNN
F 3 "~" H 5850 3900 50  0001 C CNN
F 4 "160-1423-1-ND" H 5841 4025 50  0000 C CNN "DigiKey PN"
F 5 "LTST-C171GKT" H 5850 3900 50  0001 C CNN "Manufacturer PN"
	1    5850 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C8F66FB
P 6700 3900
F 0 "R10" V 6403 3900 50  0000 C CNN
F 1 "330R" V 6494 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6630 3900 50  0001 C CNN
F 3 "~" H 6700 3900 50  0001 C CNN
F 4 "RMCF0805FT330RCT-ND" V 6585 3900 50  0000 C CNN "DigiKey PN"
F 5 "RMCF0805FT330R" H 6700 3900 50  0001 C CNN "Manufacturer PN"
	1    6700 3900
	0    -1   1    0   
$EndComp
Wire Wire Line
	6550 3900 6000 3900
Wire Wire Line
	6850 3900 6900 3900
Wire Wire Line
	6900 3900 6900 4000
$Comp
L power:GND #PWR0104
U 1 1 5C8F6705
P 6900 4000
F 0 "#PWR0104" H 6900 3750 50  0001 C CNN
F 1 "GND" H 6905 3827 50  0000 C CNN
F 2 "" H 6900 4000 50  0001 C CNN
F 3 "" H 6900 4000 50  0001 C CNN
	1    6900 4000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5700 3400 5200 3400
Wire Wire Line
	5700 3900 5200 3900
Text Label 5250 3400 0    50   ~ 0
LED_1
Text Label 5250 3900 0    50   ~ 0
LED_2
Text Label 1650 4000 0    50   ~ 0
LED_1
Text Label 1650 4100 0    50   ~ 0
LED_2
Wire Wire Line
	1550 4000 1950 4000
Wire Wire Line
	1550 4100 1950 4100
$EndSCHEMATC