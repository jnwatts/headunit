EESchema Schematic File Version 4
LIBS:HeadUnitProto-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L rn52:RN-52-BREAKOUT U?
U 1 1 5C9F9F7F
P 7800 1300
AR Path="/5C9F9F7F" Ref="U?"  Part="1" 
AR Path="/5C9F9B71/5C9F9F7F" Ref="U?"  Part="1" 
F 0 "U?" H 7800 1350 50  0000 L CNN
F 1 "RN-52-BREAKOUT" H 7800 600 50  0000 L CNN
F 2 "" H 7950 1750 50  0001 C CNN
F 3 "" H 7950 1750 50  0001 C CNN
	1    7800 1300
	1    0    0    -1  
$EndComp
$Comp
L rn52:RN-52-BREAKOUT U?
U 2 1 5C9F9F86
P 2600 3500
AR Path="/5C9F9F86" Ref="U?"  Part="2" 
AR Path="/5C9F9B71/5C9F9F86" Ref="U?"  Part="2" 
F 0 "U?" H 2700 3550 50  0000 C CNN
F 1 "RN-52-BREAKOUT" H 2950 2100 50  0000 C CNN
F 2 "" H 2750 3950 50  0001 C CNN
F 3 "" H 2750 3950 50  0001 C CNN
	2    2600 3500
	1    0    0    -1  
$EndComp
$Comp
L rn52:RN-52-BREAKOUT U?
U 3 1 5C9F9F8D
P 5150 3550
AR Path="/5C9F9F8D" Ref="U?"  Part="3" 
AR Path="/5C9F9B71/5C9F9F8D" Ref="U?"  Part="3" 
F 0 "U?" H 5250 3600 50  0000 C CNN
F 1 "RN-52-BREAKOUT" H 5500 2450 50  0000 C CNN
F 2 "" H 5300 4000 50  0001 C CNN
F 3 "" H 5300 4000 50  0001 C CNN
	3    5150 3550
	1    0    0    -1  
$EndComp
$Comp
L rn52:RN-52-BREAKOUT U?
U 4 1 5C9F9F94
P 7900 3550
AR Path="/5C9F9F94" Ref="U?"  Part="4" 
AR Path="/5C9F9B71/5C9F9F94" Ref="U?"  Part="4" 
F 0 "U?" H 7900 3600 50  0000 L CNN
F 1 "RN-52-BREAKOUT" H 7900 2300 50  0000 L CNN
F 2 "" H 8050 4000 50  0001 C CNN
F 3 "" H 8050 4000 50  0001 C CNN
	4    7900 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0104
U 1 1 5C9FB46D
P 8000 950
F 0 "#PWR0104" H 8000 800 50  0001 C CNN
F 1 "+3.3V" H 8015 1123 50  0000 C CNN
F 2 "" H 8000 950 50  0001 C CNN
F 3 "" H 8000 950 50  0001 C CNN
	1    8000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 950  8000 1100
$Comp
L power:GND #PWR0106
U 1 1 5C9FB5A9
P 8000 2350
F 0 "#PWR0106" H 8000 2100 50  0001 C CNN
F 1 "GND" H 8005 2177 50  0000 C CNN
F 2 "" H 8000 2350 50  0001 C CNN
F 3 "" H 8000 2350 50  0001 C CNN
	1    8000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2150 8000 2350
NoConn ~ 6200 3850
NoConn ~ 6200 3950
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5C9FC6CE
P 5250 1250
F 0 "J?" H 5330 1292 50  0000 L CNN
F 1 "Conn_01x03" H 5330 1201 50  0000 L CNN
F 2 "" H 5250 1250 50  0001 C CNN
F 3 "~" H 5250 1250 50  0001 C CNN
	1    5250 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1150 5050 1150
Wire Wire Line
	4850 1250 5050 1250
Wire Wire Line
	5050 1350 4950 1350
Wire Wire Line
	4950 1350 4950 1500
$Comp
L power:GND #PWR0109
U 1 1 5C9FCA60
P 4950 1500
F 0 "#PWR0109" H 4950 1250 50  0001 C CNN
F 1 "GND" H 4955 1327 50  0000 C CNN
F 2 "" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
Text Label 4850 1150 2    50   ~ 0
SPKR_L
Text Label 4850 1250 2    50   ~ 0
SPKR_R
NoConn ~ 4950 3650
NoConn ~ 4950 3750
NoConn ~ 4950 3850
NoConn ~ 4950 3950
NoConn ~ 4950 4050
NoConn ~ 7700 3650
NoConn ~ 7700 3750
NoConn ~ 7700 4350
NoConn ~ 7700 4450
NoConn ~ 7700 4550
NoConn ~ 7700 4650
Text Label 7600 4100 2    50   ~ 0
UART_TX
Text Label 7600 4200 2    50   ~ 0
UART_RX
Text GLabel 1400 1500 0    50   Output ~ 0
RPI_UART_TX
Text GLabel 1400 1150 0    50   Input ~ 0
RPI_UART_RX
Wire Wire Line
	7600 4100 7700 4100
Wire Wire Line
	7600 4200 7700 4200
Wire Wire Line
	1500 1500 1400 1500
Wire Wire Line
	1400 1150 1500 1150
Text Label 2050 1150 0    50   ~ 0
UART_TX
Text Label 2050 1500 0    50   ~ 0
UART_RX
Wire Wire Line
	2050 1500 1900 1500
Wire Wire Line
	2050 1150 1900 1150
Wire Wire Line
	7450 1650 7600 1650
$Comp
L Jumper:Jumper_2_Open JP?
U 1 1 5CA0E4AA
P 1700 1150
F 0 "JP?" H 1700 1385 50  0000 C CNN
F 1 "Jumper_2_Open" H 1700 1294 50  0000 C CNN
F 2 "" H 1700 1150 50  0001 C CNN
F 3 "~" H 1700 1150 50  0001 C CNN
	1    1700 1150
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_2_Open JP?
U 1 1 5CA0EB4A
P 1700 1500
F 0 "JP?" H 1700 1735 50  0000 C CNN
F 1 "Jumper_2_Open" H 1700 1644 50  0000 C CNN
F 2 "" H 1700 1500 50  0001 C CNN
F 3 "~" H 1700 1500 50  0001 C CNN
	1    1700 1500
	1    0    0    -1  
$EndComp
NoConn ~ 7700 4000
$Comp
L power:+3.3V #PWR0110
U 1 1 5CA16017
P 2900 1250
F 0 "#PWR0110" H 2900 1100 50  0001 C CNN
F 1 "+3.3V" H 2915 1423 50  0000 C CNN
F 2 "" H 2900 1250 50  0001 C CNN
F 3 "" H 2900 1250 50  0001 C CNN
	1    2900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CA160DB
P 2900 1500
F 0 "R?" H 2970 1546 50  0000 L CNN
F 1 "10k" H 2970 1455 50  0000 L CNN
F 2 "" V 2830 1500 50  0001 C CNN
F 3 "~" H 2900 1500 50  0001 C CNN
	1    2900 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3900 7600 3900
Text Label 7600 3900 2    50   ~ 0
UART_RTS
Text Label 3000 1800 0    50   ~ 0
UART_RTS
Wire Wire Line
	2900 1650 2900 1800
Wire Wire Line
	2900 1800 3000 1800
Wire Wire Line
	2900 1250 2900 1350
Wire Wire Line
	6300 3650 6200 3650
Wire Wire Line
	6300 3750 6200 3750
Text Label 6300 3650 0    50   ~ 0
SPKR_L
Text Label 6300 3750 0    50   ~ 0
SPKR_R
Wire Wire Line
	2400 3750 2250 3750
Text GLabel 2250 3750 0    50   Output ~ 0
RN52_INT
Text GLabel 7450 1650 0    50   Input ~ 0
RN52_PWREN
Text GLabel 2250 3950 0    50   Input ~ 0
RN52_FRST
Wire Wire Line
	2250 3950 2400 3950
Text GLabel 2250 4350 0    50   Input ~ 0
~RN52_CMD
Wire Wire Line
	2250 4350 2400 4350
NoConn ~ 4950 4200
NoConn ~ 4950 4300
NoConn ~ 4950 4400
NoConn ~ 4950 4500
Text Notes 7350 7500 0    50   ~ 0
RN52
NoConn ~ 2400 3600
NoConn ~ 2400 3850
NoConn ~ 2400 4050
NoConn ~ 2400 4150
NoConn ~ 2400 4250
NoConn ~ 2400 4450
NoConn ~ 2400 4550
NoConn ~ 2400 4650
NoConn ~ 2400 4750
NoConn ~ 3700 3600
NoConn ~ 3700 3700
$EndSCHEMATC