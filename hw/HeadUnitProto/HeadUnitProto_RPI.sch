EESchema Schematic File Version 4
LIBS:HeadUnitProto-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L Connector:Raspberry_Pi_2_3 J?
U 1 1 5C9F9B13
P 3400 3350
AR Path="/5C9F9B13" Ref="J?"  Part="1" 
AR Path="/5C9F995E/5C9F9B13" Ref="J?"  Part="1" 
F 0 "J?" H 2750 4600 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 3400 2450 50  0000 C CNN
F 2 "" H 3400 3350 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 3400 3350 50  0001 C CNN
	1    3400 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5C9F9B1A
P 3500 1800
AR Path="/5C9F9B1A" Ref="#PWR?"  Part="1" 
AR Path="/5C9F995E/5C9F9B1A" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 3500 1650 50  0001 C CNN
F 1 "+3.3V" H 3515 1973 50  0000 C CNN
F 2 "" H 3500 1800 50  0001 C CNN
F 3 "" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C9F9B27
P 3000 4800
AR Path="/5C9F9B27" Ref="#PWR?"  Part="1" 
AR Path="/5C9F995E/5C9F9B27" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 3000 4550 50  0001 C CNN
F 1 "GND" H 3005 4627 50  0000 C CNN
F 2 "" H 3000 4800 50  0001 C CNN
F 3 "" H 3000 4800 50  0001 C CNN
	1    3000 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1800 3500 2050
NoConn ~ 3300 2050
NoConn ~ 3600 2050
NoConn ~ 3100 4650
NoConn ~ 3200 4650
NoConn ~ 3300 4650
NoConn ~ 3400 4650
NoConn ~ 3500 4650
NoConn ~ 3600 4650
NoConn ~ 3700 4650
Wire Wire Line
	3000 4650 3000 4800
Wire Wire Line
	4200 2750 4400 2750
Wire Wire Line
	4200 2850 4400 2850
NoConn ~ 4200 2450
NoConn ~ 4200 2550
NoConn ~ 4200 3150
NoConn ~ 4200 3250
NoConn ~ 4200 4050
NoConn ~ 4200 4150
NoConn ~ 2600 4050
NoConn ~ 2600 3950
NoConn ~ 2600 3850
NoConn ~ 2600 3650
NoConn ~ 2600 3550
NoConn ~ 2600 2850
NoConn ~ 2600 2750
Wire Wire Line
	4200 3050 4400 3050
NoConn ~ 2600 3750
Wire Wire Line
	2600 2450 2350 2450
Wire Wire Line
	2350 2550 2600 2550
Text GLabel 2350 2450 0    50   Output ~ 0
RPI_UART_TX
Text GLabel 2350 2550 0    50   Input ~ 0
RPI_UART_RXD
$Comp
L pcal9535a:PCAL9535A U?
U 1 1 5CA21B4C
P 7150 3150
AR Path="/5CA21B4C" Ref="U?"  Part="1" 
AR Path="/5C9F9B71/5CA21B4C" Ref="U?"  Part="1" 
AR Path="/5C9F995E/5CA21B4C" Ref="U?"  Part="1" 
F 0 "U?" H 6700 4100 50  0000 C CNN
F 1 "PCAL9535A" H 7150 3150 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 8200 2150 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/data-sheet/PCAL9535A.pdf" H 6650 4050 50  0001 C CNN
	1    7150 3150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5CA21B53
P 7150 1850
AR Path="/5C9F9B71/5CA21B53" Ref="#PWR?"  Part="1" 
AR Path="/5C9F995E/5CA21B53" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 1700 50  0001 C CNN
F 1 "+3.3V" H 7165 2023 50  0000 C CNN
F 2 "" H 7150 1850 50  0001 C CNN
F 3 "" H 7150 1850 50  0001 C CNN
	1    7150 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1850 7150 2050
$Comp
L power:GND #PWR?
U 1 1 5CA21B5A
P 7150 4450
AR Path="/5C9F9B71/5CA21B5A" Ref="#PWR?"  Part="1" 
AR Path="/5C9F995E/5CA21B5A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 4200 50  0001 C CNN
F 1 "GND" H 7155 4277 50  0000 C CNN
F 2 "" H 7150 4450 50  0001 C CNN
F 3 "" H 7150 4450 50  0001 C CNN
	1    7150 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4250 7150 4450
Wire Wire Line
	6450 2350 6250 2350
Wire Wire Line
	6450 2450 6250 2450
$Comp
L power:GND #PWR?
U 1 1 5CA21B67
P 6350 4100
AR Path="/5C9F9B71/5CA21B67" Ref="#PWR?"  Part="1" 
AR Path="/5C9F995E/5CA21B67" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 3850 50  0001 C CNN
F 1 "GND" H 6355 3927 50  0000 C CNN
F 2 "" H 6350 4100 50  0001 C CNN
F 3 "" H 6350 4100 50  0001 C CNN
	1    6350 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3950 6350 3950
Wire Wire Line
	6350 3950 6350 4100
Wire Wire Line
	6450 3850 6350 3850
Wire Wire Line
	6350 3850 6350 3950
Connection ~ 6350 3950
Wire Wire Line
	6450 3750 6350 3750
Wire Wire Line
	6350 3750 6350 3850
Connection ~ 6350 3850
Text Label 6250 2450 2    50   ~ 0
I2C_SCL
Text Label 6250 2350 2    50   ~ 0
I2C_SDA
Text Label 4400 3050 0    50   ~ 0
~EXT_INT
Text Label 6250 2550 2    50   ~ 0
~EXT_INT
Wire Wire Line
	6250 2550 6450 2550
Text GLabel 8000 2350 2    50   Input ~ 0
RN52_INT
Wire Wire Line
	7850 2350 8000 2350
NoConn ~ 2600 2950
NoConn ~ 2600 3150
NoConn ~ 2600 3250
NoConn ~ 2600 3350
Text GLabel 8000 2450 2    50   Output ~ 0
RN52_FRST
Text GLabel 8000 2600 2    50   Output ~ 0
~RN52_CMD
Wire Wire Line
	7850 2550 7900 2550
Wire Wire Line
	7900 2550 7900 2600
Wire Wire Line
	7900 2600 8000 2600
Wire Wire Line
	8000 2450 7850 2450
NoConn ~ 3200 2050
Text Label 4400 2850 0    50   ~ 0
I2C_SCL
Text Label 4400 2750 0    50   ~ 0
I2C_SDA
NoConn ~ 4200 3450
NoConn ~ 4200 3550
NoConn ~ 4200 3650
NoConn ~ 4200 3750
NoConn ~ 4200 3850
NoConn ~ 7850 2650
NoConn ~ 7850 2750
NoConn ~ 7850 2850
NoConn ~ 7850 2950
NoConn ~ 7850 3050
NoConn ~ 7850 3250
NoConn ~ 7850 3350
NoConn ~ 7850 3450
NoConn ~ 7850 3550
NoConn ~ 7850 3650
NoConn ~ 7850 3750
NoConn ~ 7850 3850
NoConn ~ 7850 3950
$EndSCHEMATC
