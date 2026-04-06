                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _serial_println_str
                                     12 	.globl _serial_print_float
                                     13 	.globl _serial_print_uint
                                     14 	.globl _serial_print_int
                                     15 	.globl _serial_print_str
                                     16 	.globl _USBController_isOverrideActive
                                     17 	.globl _USBController_getTargetVoltage
                                     18 	.globl _USBController_isConnected
                                     19 	.globl _USBController_sendStatus
                                     20 	.globl _USBController_update
                                     21 	.globl _USBController_begin
                                     22 	.globl _FanMonitor_resetStall
                                     23 	.globl _FanMonitor_isStalled
                                     24 	.globl _FanMonitor_getRPM
                                     25 	.globl _FanMonitor_updateRPM
                                     26 	.globl _FanMonitor_begin
                                     27 	.globl _TempController_isOverheat
                                     28 	.globl _TempController_isReady
                                     29 	.globl _TempController_getTargetRPM
                                     30 	.globl _TempController_getTemperature
                                     31 	.globl _TempController_update
                                     32 	.globl _TempController_begin
                                     33 	.globl _DS18B20_init
                                     34 	.globl _VoltageController_unlockOutput
                                     35 	.globl _VoltageController_lockOutput
                                     36 	.globl _VoltageController_isVoltageAbnormal
                                     37 	.globl _VoltageController_getPWMDuty
                                     38 	.globl _VoltageController_getCurrentVoltage
                                     39 	.globl _VoltageController_getTargetVoltage
                                     40 	.globl _VoltageController_updateVoltage
                                     41 	.globl _VoltageController_readVoltage
                                     42 	.globl _VoltageController_setVoltage
                                     43 	.globl _VoltageController_begin
                                     44 	.globl _delay
                                     45 	.globl _millis
                                     46 	.globl _UIF_BUS_RST
                                     47 	.globl _UIF_DETECT
                                     48 	.globl _UIF_TRANSFER
                                     49 	.globl _UIF_SUSPEND
                                     50 	.globl _UIF_HST_SOF
                                     51 	.globl _UIF_FIFO_OV
                                     52 	.globl _U_SIE_FREE
                                     53 	.globl _U_TOG_OK
                                     54 	.globl _U_IS_NAK
                                     55 	.globl _S0_R_FIFO0
                                     56 	.globl _S0_R_FIFO1
                                     57 	.globl _S0_T_FIFO
                                     58 	.globl _S0_FREE
                                     59 	.globl _S0_IF_BYTE
                                     60 	.globl _S0_IF_FIRST
                                     61 	.globl _S0_IF_OV
                                     62 	.globl _S0_FST_ACT
                                     63 	.globl _CP_RL2
                                     64 	.globl _C_T2
                                     65 	.globl _TR2
                                     66 	.globl _EXEN2
                                     67 	.globl _TCLK
                                     68 	.globl _RCLK
                                     69 	.globl _EXF2
                                     70 	.globl _CAP1F
                                     71 	.globl _TF2
                                     72 	.globl _RI
                                     73 	.globl _TI
                                     74 	.globl _RB8
                                     75 	.globl _TB8
                                     76 	.globl _REN
                                     77 	.globl _SM2
                                     78 	.globl _SM1
                                     79 	.globl _SM0
                                     80 	.globl _IT0
                                     81 	.globl _IE0
                                     82 	.globl _IT1
                                     83 	.globl _IE1
                                     84 	.globl _TR0
                                     85 	.globl _TF0
                                     86 	.globl _TR1
                                     87 	.globl _TF1
                                     88 	.globl _P4_OUT_0
                                     89 	.globl _P4_OUT_1
                                     90 	.globl _P4_OUT_2
                                     91 	.globl _P4_OUT_3
                                     92 	.globl _P4_OUT_4
                                     93 	.globl _P4_OUT_5
                                     94 	.globl _P4_OUT_6
                                     95 	.globl _P4_OUT_7
                                     96 	.globl _RXD1_
                                     97 	.globl _LED2
                                     98 	.globl _CAP3_
                                     99 	.globl _PWM3_
                                    100 	.globl _PWM1_
                                    101 	.globl _TXD1_
                                    102 	.globl _TNOW_
                                    103 	.globl _LED3
                                    104 	.globl _PWM2_
                                    105 	.globl _SCS_
                                    106 	.globl _SCK_
                                    107 	.globl _P3_0
                                    108 	.globl _P3_1
                                    109 	.globl _P3_2
                                    110 	.globl _P3_3
                                    111 	.globl _P3_4
                                    112 	.globl _P3_5
                                    113 	.globl _P3_6
                                    114 	.globl _P3_7
                                    115 	.globl _RXD
                                    116 	.globl _TXD
                                    117 	.globl _INT0
                                    118 	.globl _LED0
                                    119 	.globl _INT1
                                    120 	.globl _LED1
                                    121 	.globl _T0
                                    122 	.globl _XCS0
                                    123 	.globl _LEDC
                                    124 	.globl _T1
                                    125 	.globl _DA6
                                    126 	.globl _WR
                                    127 	.globl _RD
                                    128 	.globl _P2_0
                                    129 	.globl _P2_1
                                    130 	.globl _P2_2
                                    131 	.globl _P2_3
                                    132 	.globl _P2_4
                                    133 	.globl _P2_5
                                    134 	.globl _P2_6
                                    135 	.globl _P2_7
                                    136 	.globl _MOSI1
                                    137 	.globl _MISO1
                                    138 	.globl _SCK1
                                    139 	.globl _PWM1
                                    140 	.globl _CAP2_
                                    141 	.globl _T2EX_
                                    142 	.globl _PWM2
                                    143 	.globl _TNOW
                                    144 	.globl _RXD1
                                    145 	.globl _DA7
                                    146 	.globl _TXD1
                                    147 	.globl _P1_0
                                    148 	.globl _P1_1
                                    149 	.globl _P1_2
                                    150 	.globl _P1_3
                                    151 	.globl _P1_4
                                    152 	.globl _P1_5
                                    153 	.globl _P1_6
                                    154 	.globl _P1_7
                                    155 	.globl _CAP1
                                    156 	.globl _T2
                                    157 	.globl _CAP2
                                    158 	.globl _T2EX
                                    159 	.globl _CAP3
                                    160 	.globl _PWM3
                                    161 	.globl _SCS
                                    162 	.globl _MOSI
                                    163 	.globl _MISO
                                    164 	.globl _SCK
                                    165 	.globl _AIN0
                                    166 	.globl _AIN1
                                    167 	.globl _AIN2
                                    168 	.globl _AIN3
                                    169 	.globl _AIN4
                                    170 	.globl _AIN5
                                    171 	.globl _AIN6
                                    172 	.globl _AIN7
                                    173 	.globl _P0_0
                                    174 	.globl _P0_1
                                    175 	.globl _P0_2
                                    176 	.globl _P0_3
                                    177 	.globl _P0_4
                                    178 	.globl _P0_5
                                    179 	.globl _P0_6
                                    180 	.globl _P0_7
                                    181 	.globl _UDTR
                                    182 	.globl _URTS
                                    183 	.globl _RXD_
                                    184 	.globl _TXD_
                                    185 	.globl _UCTS
                                    186 	.globl _UDSR
                                    187 	.globl _URI
                                    188 	.globl _UDCD
                                    189 	.globl _IE_SPI0
                                    190 	.globl _IE_TMR3
                                    191 	.globl _IE_USB
                                    192 	.globl _IE_ADC
                                    193 	.globl _IE_UART1
                                    194 	.globl _IE_PWM1
                                    195 	.globl _IE_GPIO
                                    196 	.globl _IE_WDOG
                                    197 	.globl _PX0
                                    198 	.globl _PT0
                                    199 	.globl _PX1
                                    200 	.globl _PT1
                                    201 	.globl _PS
                                    202 	.globl _PT2
                                    203 	.globl _PL_FLAG
                                    204 	.globl _PH_FLAG
                                    205 	.globl _EX0
                                    206 	.globl _ET0
                                    207 	.globl _EX1
                                    208 	.globl _ET1
                                    209 	.globl _ES
                                    210 	.globl _ET2
                                    211 	.globl _E_DIS
                                    212 	.globl _EA
                                    213 	.globl _P
                                    214 	.globl _F1
                                    215 	.globl _OV
                                    216 	.globl _RS0
                                    217 	.globl _RS1
                                    218 	.globl _F0
                                    219 	.globl _AC
                                    220 	.globl _CY
                                    221 	.globl _USB_DMA_AH
                                    222 	.globl _USB_DMA_AL
                                    223 	.globl _USB_DMA
                                    224 	.globl _UHUB1_CTRL
                                    225 	.globl _UDEV_CTRL
                                    226 	.globl _USB_DEV_AD
                                    227 	.globl _USB_CTRL
                                    228 	.globl _USB_INT_EN
                                    229 	.globl _UEP4_T_LEN
                                    230 	.globl _UEP4_CTRL
                                    231 	.globl _UEP0_T_LEN
                                    232 	.globl _UEP0_CTRL
                                    233 	.globl _USB_HUB_ST
                                    234 	.globl _USB_MIS_ST
                                    235 	.globl _USB_INT_ST
                                    236 	.globl _USB_INT_FG
                                    237 	.globl _UEP3_T_LEN
                                    238 	.globl _UEP3_CTRL
                                    239 	.globl _UEP2_T_LEN
                                    240 	.globl _UEP2_CTRL
                                    241 	.globl _UEP1_T_LEN
                                    242 	.globl _UEP1_CTRL
                                    243 	.globl _USB_RX_LEN
                                    244 	.globl _ADC_EX_SW
                                    245 	.globl _ADC_SETUP
                                    246 	.globl _ADC_FIFO_H
                                    247 	.globl _ADC_FIFO_L
                                    248 	.globl _ADC_FIFO
                                    249 	.globl _ADC_CHANN
                                    250 	.globl _ADC_CTRL
                                    251 	.globl _ADC_STAT
                                    252 	.globl _ADC_CK_SE
                                    253 	.globl _ADC_DMA_CN
                                    254 	.globl _ADC_DMA_AH
                                    255 	.globl _ADC_DMA_AL
                                    256 	.globl _ADC_DMA
                                    257 	.globl _SER1_ADDR
                                    258 	.globl _SER1_MSR
                                    259 	.globl _SER1_LSR
                                    260 	.globl _SER1_MCR
                                    261 	.globl _SER1_LCR
                                    262 	.globl _SER1_IIR
                                    263 	.globl _SER1_IER
                                    264 	.globl _SER1_FIFO
                                    265 	.globl _SPI1_CK_SE
                                    266 	.globl _SPI1_CTRL
                                    267 	.globl _SPI1_DATA
                                    268 	.globl _SPI1_STAT
                                    269 	.globl _SPI0_SETUP
                                    270 	.globl _SPI0_CK_SE
                                    271 	.globl _SPI0_CTRL
                                    272 	.globl _SPI0_DATA
                                    273 	.globl _SPI0_STAT
                                    274 	.globl _PWM_CYCLE
                                    275 	.globl _PWM_CK_SE
                                    276 	.globl _PWM_CTRL
                                    277 	.globl _PWM_DATA
                                    278 	.globl _PWM_DATA2
                                    279 	.globl _T3_FIFO_H
                                    280 	.globl _T3_FIFO_L
                                    281 	.globl _T3_FIFO
                                    282 	.globl _T3_DMA_AH
                                    283 	.globl _T3_DMA_AL
                                    284 	.globl _T3_DMA
                                    285 	.globl _T3_DMA_CN
                                    286 	.globl _T3_CTRL
                                    287 	.globl _T3_STAT
                                    288 	.globl _T3_END_H
                                    289 	.globl _T3_END_L
                                    290 	.globl _T3_END
                                    291 	.globl _T3_COUNT_H
                                    292 	.globl _T3_COUNT_L
                                    293 	.globl _T3_COUNT
                                    294 	.globl _T3_SETUP
                                    295 	.globl _TH2
                                    296 	.globl _TL2
                                    297 	.globl _T2COUNT
                                    298 	.globl _RCAP2H
                                    299 	.globl _RCAP2L
                                    300 	.globl _RCAP2
                                    301 	.globl _T2MOD
                                    302 	.globl _T2CON
                                    303 	.globl _SBUF
                                    304 	.globl _SCON
                                    305 	.globl _TH1
                                    306 	.globl _TH0
                                    307 	.globl _TL1
                                    308 	.globl _TL0
                                    309 	.globl _TMOD
                                    310 	.globl _TCON
                                    311 	.globl _XBUS_SPEED
                                    312 	.globl _XBUS_AUX
                                    313 	.globl _PIN_FUNC
                                    314 	.globl _PORT_CFG
                                    315 	.globl _P5_IN
                                    316 	.globl _P4_PU
                                    317 	.globl _P4_DIR
                                    318 	.globl _P4_IN
                                    319 	.globl _P4_OUT
                                    320 	.globl _P3_PU
                                    321 	.globl _P3_DIR
                                    322 	.globl _P3
                                    323 	.globl _P2_PU
                                    324 	.globl _P2_DIR
                                    325 	.globl _P2
                                    326 	.globl _P1_PU
                                    327 	.globl _P1_DIR
                                    328 	.globl _P1_IE
                                    329 	.globl _P1
                                    330 	.globl _P0_PU
                                    331 	.globl _P0_DIR
                                    332 	.globl _P0
                                    333 	.globl _ROM_CTRL
                                    334 	.globl _ROM_DATA_H
                                    335 	.globl _ROM_DATA_L
                                    336 	.globl _ROM_DATA
                                    337 	.globl _ROM_ADDR_H
                                    338 	.globl _ROM_ADDR_L
                                    339 	.globl _ROM_ADDR
                                    340 	.globl _GPIO_IE
                                    341 	.globl _IP_EX
                                    342 	.globl _IE_EX
                                    343 	.globl _IP
                                    344 	.globl _IE
                                    345 	.globl _WDOG_COUNT
                                    346 	.globl _RESET_KEEP
                                    347 	.globl _WAKE_CTRL
                                    348 	.globl _SLEEP_CTRL
                                    349 	.globl _CLOCK_CFG
                                    350 	.globl _PLL_CFG
                                    351 	.globl _PCON
                                    352 	.globl _GLOBAL_CFG
                                    353 	.globl _SAFE_MOD
                                    354 	.globl _DPH
                                    355 	.globl _DPL
                                    356 	.globl _SP
                                    357 	.globl _B
                                    358 	.globl _ACC
                                    359 	.globl _PSW
                                    360 	.globl _usb_was_connected
                                    361 	.globl _stall_retry_count
                                    362 	.globl _stall_detect_time
                                    363 	.globl _last_voltage_check
                                    364 	.globl _last_status_send
                                    365 	.globl _last_temp_update
                                    366 	.globl _sysStatus
                                    367 	.globl _usbCtrl
                                    368 	.globl _fanMonitor
                                    369 	.globl _tempCtrl
                                    370 	.globl _voltageCtrl
                                    371 	.globl _tempSensor
                                    372 	.globl _LED_DMA_XL
                                    373 	.globl _LED_DMA_XH
                                    374 	.globl _LED_DMA_CN
                                    375 	.globl _LED_DMA_AL
                                    376 	.globl _LED_DMA_AH
                                    377 	.globl _LED_CK_SE
                                    378 	.globl _LED_DATA
                                    379 	.globl _LED_CTRL
                                    380 	.globl _LED_STAT
                                    381 	.globl _UEP3_DMA_L
                                    382 	.globl _UEP3_DMA_H
                                    383 	.globl _UEP2_DMA_L
                                    384 	.globl _UEP2_DMA_H
                                    385 	.globl _UEP1_DMA_L
                                    386 	.globl _UEP1_DMA_H
                                    387 	.globl _UEP0_DMA_L
                                    388 	.globl _UEP0_DMA_H
                                    389 	.globl _UEP2_3_MOD
                                    390 	.globl _UEP4_1_MOD
                                    391 	.globl _pLED_DMA_XL
                                    392 	.globl _pLED_DMA_XH
                                    393 	.globl _pLED_DMA_CN
                                    394 	.globl _pLED_DMA_AL
                                    395 	.globl _pLED_DMA_AH
                                    396 	.globl _pLED_CK_SE
                                    397 	.globl _pLED_DATA
                                    398 	.globl _pLED_CTRL
                                    399 	.globl _pLED_STAT
                                    400 	.globl _pUEP3_DMA_L
                                    401 	.globl _pUEP3_DMA_H
                                    402 	.globl _pUEP2_DMA_L
                                    403 	.globl _pUEP2_DMA_H
                                    404 	.globl _pUEP1_DMA_L
                                    405 	.globl _pUEP1_DMA_H
                                    406 	.globl _pUEP0_DMA_L
                                    407 	.globl _pUEP0_DMA_H
                                    408 	.globl _pUEP2_3_MOD
                                    409 	.globl _pUEP4_1_MOD
                                    410 	.globl _setup
                                    411 	.globl _loop
                                    412 ;--------------------------------------------------------
                                    413 ; special function registers
                                    414 ;--------------------------------------------------------
                                    415 	.area RSEG    (ABS,DATA)
      000000                        416 	.org 0x0000
                           0000D0   417 _PSW	=	0x00d0
                           0000E0   418 _ACC	=	0x00e0
                           0000F0   419 _B	=	0x00f0
                           000081   420 _SP	=	0x0081
                           000082   421 _DPL	=	0x0082
                           000083   422 _DPH	=	0x0083
                           0000A1   423 _SAFE_MOD	=	0x00a1
                           0000B1   424 _GLOBAL_CFG	=	0x00b1
                           000087   425 _PCON	=	0x0087
                           0000B2   426 _PLL_CFG	=	0x00b2
                           0000B3   427 _CLOCK_CFG	=	0x00b3
                           0000EA   428 _SLEEP_CTRL	=	0x00ea
                           0000EB   429 _WAKE_CTRL	=	0x00eb
                           0000FE   430 _RESET_KEEP	=	0x00fe
                           0000FF   431 _WDOG_COUNT	=	0x00ff
                           0000A8   432 _IE	=	0x00a8
                           0000B8   433 _IP	=	0x00b8
                           0000E8   434 _IE_EX	=	0x00e8
                           0000E9   435 _IP_EX	=	0x00e9
                           0000CF   436 _GPIO_IE	=	0x00cf
                           008584   437 _ROM_ADDR	=	0x8584
                           000084   438 _ROM_ADDR_L	=	0x0084
                           000085   439 _ROM_ADDR_H	=	0x0085
                           008F8E   440 _ROM_DATA	=	0x8f8e
                           00008E   441 _ROM_DATA_L	=	0x008e
                           00008F   442 _ROM_DATA_H	=	0x008f
                           000086   443 _ROM_CTRL	=	0x0086
                           000080   444 _P0	=	0x0080
                           0000C4   445 _P0_DIR	=	0x00c4
                           0000C5   446 _P0_PU	=	0x00c5
                           000090   447 _P1	=	0x0090
                           0000B9   448 _P1_IE	=	0x00b9
                           0000BA   449 _P1_DIR	=	0x00ba
                           0000BB   450 _P1_PU	=	0x00bb
                           0000A0   451 _P2	=	0x00a0
                           0000BC   452 _P2_DIR	=	0x00bc
                           0000BD   453 _P2_PU	=	0x00bd
                           0000B0   454 _P3	=	0x00b0
                           0000BE   455 _P3_DIR	=	0x00be
                           0000BF   456 _P3_PU	=	0x00bf
                           0000C0   457 _P4_OUT	=	0x00c0
                           0000C1   458 _P4_IN	=	0x00c1
                           0000C2   459 _P4_DIR	=	0x00c2
                           0000C3   460 _P4_PU	=	0x00c3
                           0000C7   461 _P5_IN	=	0x00c7
                           0000C6   462 _PORT_CFG	=	0x00c6
                           0000CE   463 _PIN_FUNC	=	0x00ce
                           0000A2   464 _XBUS_AUX	=	0x00a2
                           0000FD   465 _XBUS_SPEED	=	0x00fd
                           000088   466 _TCON	=	0x0088
                           000089   467 _TMOD	=	0x0089
                           00008A   468 _TL0	=	0x008a
                           00008B   469 _TL1	=	0x008b
                           00008C   470 _TH0	=	0x008c
                           00008D   471 _TH1	=	0x008d
                           000098   472 _SCON	=	0x0098
                           000099   473 _SBUF	=	0x0099
                           0000C8   474 _T2CON	=	0x00c8
                           0000C9   475 _T2MOD	=	0x00c9
                           00CBCA   476 _RCAP2	=	0xcbca
                           0000CA   477 _RCAP2L	=	0x00ca
                           0000CB   478 _RCAP2H	=	0x00cb
                           00CDCC   479 _T2COUNT	=	0xcdcc
                           0000CC   480 _TL2	=	0x00cc
                           0000CD   481 _TH2	=	0x00cd
                           0000A3   482 _T3_SETUP	=	0x00a3
                           00A5A4   483 _T3_COUNT	=	0xa5a4
                           0000A4   484 _T3_COUNT_L	=	0x00a4
                           0000A5   485 _T3_COUNT_H	=	0x00a5
                           00A7A6   486 _T3_END	=	0xa7a6
                           0000A6   487 _T3_END_L	=	0x00a6
                           0000A7   488 _T3_END_H	=	0x00a7
                           0000A9   489 _T3_STAT	=	0x00a9
                           0000AA   490 _T3_CTRL	=	0x00aa
                           0000AB   491 _T3_DMA_CN	=	0x00ab
                           00ADAC   492 _T3_DMA	=	0xadac
                           0000AC   493 _T3_DMA_AL	=	0x00ac
                           0000AD   494 _T3_DMA_AH	=	0x00ad
                           00AFAE   495 _T3_FIFO	=	0xafae
                           0000AE   496 _T3_FIFO_L	=	0x00ae
                           0000AF   497 _T3_FIFO_H	=	0x00af
                           00009B   498 _PWM_DATA2	=	0x009b
                           00009C   499 _PWM_DATA	=	0x009c
                           00009D   500 _PWM_CTRL	=	0x009d
                           00009E   501 _PWM_CK_SE	=	0x009e
                           00009F   502 _PWM_CYCLE	=	0x009f
                           0000F8   503 _SPI0_STAT	=	0x00f8
                           0000F9   504 _SPI0_DATA	=	0x00f9
                           0000FA   505 _SPI0_CTRL	=	0x00fa
                           0000FB   506 _SPI0_CK_SE	=	0x00fb
                           0000FC   507 _SPI0_SETUP	=	0x00fc
                           0000B4   508 _SPI1_STAT	=	0x00b4
                           0000B5   509 _SPI1_DATA	=	0x00b5
                           0000B6   510 _SPI1_CTRL	=	0x00b6
                           0000B7   511 _SPI1_CK_SE	=	0x00b7
                           00009A   512 _SER1_FIFO	=	0x009a
                           000091   513 _SER1_IER	=	0x0091
                           000092   514 _SER1_IIR	=	0x0092
                           000093   515 _SER1_LCR	=	0x0093
                           000094   516 _SER1_MCR	=	0x0094
                           000095   517 _SER1_LSR	=	0x0095
                           000096   518 _SER1_MSR	=	0x0096
                           000097   519 _SER1_ADDR	=	0x0097
                           00EDEC   520 _ADC_DMA	=	0xedec
                           0000EC   521 _ADC_DMA_AL	=	0x00ec
                           0000ED   522 _ADC_DMA_AH	=	0x00ed
                           0000EE   523 _ADC_DMA_CN	=	0x00ee
                           0000EF   524 _ADC_CK_SE	=	0x00ef
                           0000F1   525 _ADC_STAT	=	0x00f1
                           0000F2   526 _ADC_CTRL	=	0x00f2
                           0000F3   527 _ADC_CHANN	=	0x00f3
                           00F5F4   528 _ADC_FIFO	=	0xf5f4
                           0000F4   529 _ADC_FIFO_L	=	0x00f4
                           0000F5   530 _ADC_FIFO_H	=	0x00f5
                           0000F6   531 _ADC_SETUP	=	0x00f6
                           0000F7   532 _ADC_EX_SW	=	0x00f7
                           0000D1   533 _USB_RX_LEN	=	0x00d1
                           0000D2   534 _UEP1_CTRL	=	0x00d2
                           0000D3   535 _UEP1_T_LEN	=	0x00d3
                           0000D4   536 _UEP2_CTRL	=	0x00d4
                           0000D5   537 _UEP2_T_LEN	=	0x00d5
                           0000D6   538 _UEP3_CTRL	=	0x00d6
                           0000D7   539 _UEP3_T_LEN	=	0x00d7
                           0000D8   540 _USB_INT_FG	=	0x00d8
                           0000D9   541 _USB_INT_ST	=	0x00d9
                           0000DA   542 _USB_MIS_ST	=	0x00da
                           0000DB   543 _USB_HUB_ST	=	0x00db
                           0000DC   544 _UEP0_CTRL	=	0x00dc
                           0000DD   545 _UEP0_T_LEN	=	0x00dd
                           0000DE   546 _UEP4_CTRL	=	0x00de
                           0000DF   547 _UEP4_T_LEN	=	0x00df
                           0000E1   548 _USB_INT_EN	=	0x00e1
                           0000E2   549 _USB_CTRL	=	0x00e2
                           0000E3   550 _USB_DEV_AD	=	0x00e3
                           0000E4   551 _UDEV_CTRL	=	0x00e4
                           0000E5   552 _UHUB1_CTRL	=	0x00e5
                           00E7E6   553 _USB_DMA	=	0xe7e6
                           0000E6   554 _USB_DMA_AL	=	0x00e6
                           0000E7   555 _USB_DMA_AH	=	0x00e7
                                    556 ;--------------------------------------------------------
                                    557 ; special function bits
                                    558 ;--------------------------------------------------------
                                    559 	.area RSEG    (ABS,DATA)
      000000                        560 	.org 0x0000
                           0000D7   561 _CY	=	0x00d7
                           0000D6   562 _AC	=	0x00d6
                           0000D5   563 _F0	=	0x00d5
                           0000D4   564 _RS1	=	0x00d4
                           0000D3   565 _RS0	=	0x00d3
                           0000D2   566 _OV	=	0x00d2
                           0000D1   567 _F1	=	0x00d1
                           0000D0   568 _P	=	0x00d0
                           0000AF   569 _EA	=	0x00af
                           0000AE   570 _E_DIS	=	0x00ae
                           0000AD   571 _ET2	=	0x00ad
                           0000AC   572 _ES	=	0x00ac
                           0000AB   573 _ET1	=	0x00ab
                           0000AA   574 _EX1	=	0x00aa
                           0000A9   575 _ET0	=	0x00a9
                           0000A8   576 _EX0	=	0x00a8
                           0000BF   577 _PH_FLAG	=	0x00bf
                           0000BE   578 _PL_FLAG	=	0x00be
                           0000BD   579 _PT2	=	0x00bd
                           0000BC   580 _PS	=	0x00bc
                           0000BB   581 _PT1	=	0x00bb
                           0000BA   582 _PX1	=	0x00ba
                           0000B9   583 _PT0	=	0x00b9
                           0000B8   584 _PX0	=	0x00b8
                           0000EF   585 _IE_WDOG	=	0x00ef
                           0000EE   586 _IE_GPIO	=	0x00ee
                           0000ED   587 _IE_PWM1	=	0x00ed
                           0000EC   588 _IE_UART1	=	0x00ec
                           0000EB   589 _IE_ADC	=	0x00eb
                           0000EA   590 _IE_USB	=	0x00ea
                           0000E9   591 _IE_TMR3	=	0x00e9
                           0000E8   592 _IE_SPI0	=	0x00e8
                           000087   593 _UDCD	=	0x0087
                           000086   594 _URI	=	0x0086
                           000085   595 _UDSR	=	0x0085
                           000084   596 _UCTS	=	0x0084
                           000083   597 _TXD_	=	0x0083
                           000082   598 _RXD_	=	0x0082
                           000081   599 _URTS	=	0x0081
                           000080   600 _UDTR	=	0x0080
                           000087   601 _P0_7	=	0x0087
                           000086   602 _P0_6	=	0x0086
                           000085   603 _P0_5	=	0x0085
                           000084   604 _P0_4	=	0x0084
                           000083   605 _P0_3	=	0x0083
                           000082   606 _P0_2	=	0x0082
                           000081   607 _P0_1	=	0x0081
                           000080   608 _P0_0	=	0x0080
                           000097   609 _AIN7	=	0x0097
                           000096   610 _AIN6	=	0x0096
                           000095   611 _AIN5	=	0x0095
                           000094   612 _AIN4	=	0x0094
                           000093   613 _AIN3	=	0x0093
                           000092   614 _AIN2	=	0x0092
                           000091   615 _AIN1	=	0x0091
                           000090   616 _AIN0	=	0x0090
                           000097   617 _SCK	=	0x0097
                           000096   618 _MISO	=	0x0096
                           000095   619 _MOSI	=	0x0095
                           000094   620 _SCS	=	0x0094
                           000092   621 _PWM3	=	0x0092
                           000092   622 _CAP3	=	0x0092
                           000091   623 _T2EX	=	0x0091
                           000091   624 _CAP2	=	0x0091
                           000090   625 _T2	=	0x0090
                           000090   626 _CAP1	=	0x0090
                           000097   627 _P1_7	=	0x0097
                           000096   628 _P1_6	=	0x0096
                           000095   629 _P1_5	=	0x0095
                           000094   630 _P1_4	=	0x0094
                           000093   631 _P1_3	=	0x0093
                           000092   632 _P1_2	=	0x0092
                           000091   633 _P1_1	=	0x0091
                           000090   634 _P1_0	=	0x0090
                           0000A7   635 _TXD1	=	0x00a7
                           0000A7   636 _DA7	=	0x00a7
                           0000A6   637 _RXD1	=	0x00a6
                           0000A5   638 _TNOW	=	0x00a5
                           0000A5   639 _PWM2	=	0x00a5
                           0000A5   640 _T2EX_	=	0x00a5
                           0000A5   641 _CAP2_	=	0x00a5
                           0000A4   642 _PWM1	=	0x00a4
                           0000A3   643 _SCK1	=	0x00a3
                           0000A2   644 _MISO1	=	0x00a2
                           0000A1   645 _MOSI1	=	0x00a1
                           0000A7   646 _P2_7	=	0x00a7
                           0000A6   647 _P2_6	=	0x00a6
                           0000A5   648 _P2_5	=	0x00a5
                           0000A4   649 _P2_4	=	0x00a4
                           0000A3   650 _P2_3	=	0x00a3
                           0000A2   651 _P2_2	=	0x00a2
                           0000A1   652 _P2_1	=	0x00a1
                           0000A0   653 _P2_0	=	0x00a0
                           0000B7   654 _RD	=	0x00b7
                           0000B6   655 _WR	=	0x00b6
                           0000B5   656 _DA6	=	0x00b5
                           0000B5   657 _T1	=	0x00b5
                           0000B4   658 _LEDC	=	0x00b4
                           0000B4   659 _XCS0	=	0x00b4
                           0000B4   660 _T0	=	0x00b4
                           0000B3   661 _LED1	=	0x00b3
                           0000B3   662 _INT1	=	0x00b3
                           0000B2   663 _LED0	=	0x00b2
                           0000B2   664 _INT0	=	0x00b2
                           0000B1   665 _TXD	=	0x00b1
                           0000B0   666 _RXD	=	0x00b0
                           0000B7   667 _P3_7	=	0x00b7
                           0000B6   668 _P3_6	=	0x00b6
                           0000B5   669 _P3_5	=	0x00b5
                           0000B4   670 _P3_4	=	0x00b4
                           0000B3   671 _P3_3	=	0x00b3
                           0000B2   672 _P3_2	=	0x00b2
                           0000B1   673 _P3_1	=	0x00b1
                           0000B0   674 _P3_0	=	0x00b0
                           0000C7   675 _SCK_	=	0x00c7
                           0000C6   676 _SCS_	=	0x00c6
                           0000C5   677 _PWM2_	=	0x00c5
                           0000C4   678 _LED3	=	0x00c4
                           0000C4   679 _TNOW_	=	0x00c4
                           0000C4   680 _TXD1_	=	0x00c4
                           0000C3   681 _PWM1_	=	0x00c3
                           0000C2   682 _PWM3_	=	0x00c2
                           0000C2   683 _CAP3_	=	0x00c2
                           0000C0   684 _LED2	=	0x00c0
                           0000C0   685 _RXD1_	=	0x00c0
                           0000C7   686 _P4_OUT_7	=	0x00c7
                           0000C6   687 _P4_OUT_6	=	0x00c6
                           0000C5   688 _P4_OUT_5	=	0x00c5
                           0000C4   689 _P4_OUT_4	=	0x00c4
                           0000C3   690 _P4_OUT_3	=	0x00c3
                           0000C2   691 _P4_OUT_2	=	0x00c2
                           0000C1   692 _P4_OUT_1	=	0x00c1
                           0000C0   693 _P4_OUT_0	=	0x00c0
                           00008F   694 _TF1	=	0x008f
                           00008E   695 _TR1	=	0x008e
                           00008D   696 _TF0	=	0x008d
                           00008C   697 _TR0	=	0x008c
                           00008B   698 _IE1	=	0x008b
                           00008A   699 _IT1	=	0x008a
                           000089   700 _IE0	=	0x0089
                           000088   701 _IT0	=	0x0088
                           00009F   702 _SM0	=	0x009f
                           00009E   703 _SM1	=	0x009e
                           00009D   704 _SM2	=	0x009d
                           00009C   705 _REN	=	0x009c
                           00009B   706 _TB8	=	0x009b
                           00009A   707 _RB8	=	0x009a
                           000099   708 _TI	=	0x0099
                           000098   709 _RI	=	0x0098
                           0000CF   710 _TF2	=	0x00cf
                           0000CF   711 _CAP1F	=	0x00cf
                           0000CE   712 _EXF2	=	0x00ce
                           0000CD   713 _RCLK	=	0x00cd
                           0000CC   714 _TCLK	=	0x00cc
                           0000CB   715 _EXEN2	=	0x00cb
                           0000CA   716 _TR2	=	0x00ca
                           0000C9   717 _C_T2	=	0x00c9
                           0000C8   718 _CP_RL2	=	0x00c8
                           0000FF   719 _S0_FST_ACT	=	0x00ff
                           0000FE   720 _S0_IF_OV	=	0x00fe
                           0000FD   721 _S0_IF_FIRST	=	0x00fd
                           0000FC   722 _S0_IF_BYTE	=	0x00fc
                           0000FB   723 _S0_FREE	=	0x00fb
                           0000FA   724 _S0_T_FIFO	=	0x00fa
                           0000F9   725 _S0_R_FIFO1	=	0x00f9
                           0000F8   726 _S0_R_FIFO0	=	0x00f8
                           0000DF   727 _U_IS_NAK	=	0x00df
                           0000DE   728 _U_TOG_OK	=	0x00de
                           0000DD   729 _U_SIE_FREE	=	0x00dd
                           0000DC   730 _UIF_FIFO_OV	=	0x00dc
                           0000DB   731 _UIF_HST_SOF	=	0x00db
                           0000DA   732 _UIF_SUSPEND	=	0x00da
                           0000D9   733 _UIF_TRANSFER	=	0x00d9
                           0000D8   734 _UIF_DETECT	=	0x00d8
                           0000D8   735 _UIF_BUS_RST	=	0x00d8
                                    736 ;--------------------------------------------------------
                                    737 ; overlayable register banks
                                    738 ;--------------------------------------------------------
                                    739 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        740 	.ds 8
                                    741 ;--------------------------------------------------------
                                    742 ; internal ram data
                                    743 ;--------------------------------------------------------
                                    744 	.area DSEG    (DATA)
                                    745 ;--------------------------------------------------------
                                    746 ; overlayable items in internal ram
                                    747 ;--------------------------------------------------------
                                    748 ;--------------------------------------------------------
                                    749 ; indirectly addressable internal ram data
                                    750 ;--------------------------------------------------------
                                    751 	.area ISEG    (DATA)
                                    752 ;--------------------------------------------------------
                                    753 ; absolute internal ram data
                                    754 ;--------------------------------------------------------
                                    755 	.area IABS    (ABS,DATA)
                                    756 	.area IABS    (ABS,DATA)
                                    757 ;--------------------------------------------------------
                                    758 ; bit data
                                    759 ;--------------------------------------------------------
                                    760 	.area BSEG    (BIT)
      000000                        761 _loop_sloc0_1_0:
      000000                        762 	.ds 1
                                    763 ;--------------------------------------------------------
                                    764 ; paged external ram data
                                    765 ;--------------------------------------------------------
                                    766 	.area PSEG    (PAG,XDATA)
                           002546   767 _pUEP4_1_MOD	=	0x2546
                           002547   768 _pUEP2_3_MOD	=	0x2547
                           002548   769 _pUEP0_DMA_H	=	0x2548
                           002549   770 _pUEP0_DMA_L	=	0x2549
                           00254A   771 _pUEP1_DMA_H	=	0x254a
                           00254B   772 _pUEP1_DMA_L	=	0x254b
                           00254C   773 _pUEP2_DMA_H	=	0x254c
                           00254D   774 _pUEP2_DMA_L	=	0x254d
                           00254E   775 _pUEP3_DMA_H	=	0x254e
                           00254F   776 _pUEP3_DMA_L	=	0x254f
                           002980   777 _pLED_STAT	=	0x2980
                           002981   778 _pLED_CTRL	=	0x2981
                           002982   779 _pLED_DATA	=	0x2982
                           002983   780 _pLED_CK_SE	=	0x2983
                           002984   781 _pLED_DMA_AH	=	0x2984
                           002985   782 _pLED_DMA_AL	=	0x2985
                           002986   783 _pLED_DMA_CN	=	0x2986
                           002988   784 _pLED_DMA_XH	=	0x2988
                           002989   785 _pLED_DMA_XL	=	0x2989
                                    786 ;--------------------------------------------------------
                                    787 ; uninitialized external ram data
                                    788 ;--------------------------------------------------------
                                    789 	.area XSEG    (XDATA)
                           002446   790 _UEP4_1_MOD	=	0x2446
                           002447   791 _UEP2_3_MOD	=	0x2447
                           002448   792 _UEP0_DMA_H	=	0x2448
                           002449   793 _UEP0_DMA_L	=	0x2449
                           00244A   794 _UEP1_DMA_H	=	0x244a
                           00244B   795 _UEP1_DMA_L	=	0x244b
                           00244C   796 _UEP2_DMA_H	=	0x244c
                           00244D   797 _UEP2_DMA_L	=	0x244d
                           00244E   798 _UEP3_DMA_H	=	0x244e
                           00244F   799 _UEP3_DMA_L	=	0x244f
                           002880   800 _LED_STAT	=	0x2880
                           002881   801 _LED_CTRL	=	0x2881
                           002882   802 _LED_DATA	=	0x2882
                           002883   803 _LED_CK_SE	=	0x2883
                           002884   804 _LED_DMA_AH	=	0x2884
                           002885   805 _LED_DMA_AL	=	0x2885
                           002886   806 _LED_DMA_CN	=	0x2886
                           002888   807 _LED_DMA_XH	=	0x2888
                           002889   808 _LED_DMA_XL	=	0x2889
      0000FE                        809 _tempSensor::
      0000FE                        810 	.ds 1
      0000FF                        811 _voltageCtrl::
      0000FF                        812 	.ds 12
      00010B                        813 _tempCtrl::
      00010B                        814 	.ds 15
      00011A                        815 _fanMonitor::
      00011A                        816 	.ds 15
      000129                        817 _usbCtrl::
      000129                        818 	.ds 99
      00018C                        819 _sysStatus::
      00018C                        820 	.ds 23
      0001A3                        821 _loop_usb_control_mode_65538_225:
      0001A3                        822 	.ds 1
                                    823 ;--------------------------------------------------------
                                    824 ; absolute external ram data
                                    825 ;--------------------------------------------------------
                                    826 	.area XABS    (ABS,XDATA)
                                    827 ;--------------------------------------------------------
                                    828 ; initialized external ram data
                                    829 ;--------------------------------------------------------
                                    830 	.area XISEG   (XDATA)
      0002BD                        831 _last_temp_update::
      0002BD                        832 	.ds 4
      0002C1                        833 _last_status_send::
      0002C1                        834 	.ds 4
      0002C5                        835 _last_voltage_check::
      0002C5                        836 	.ds 4
      0002C9                        837 _stall_detect_time::
      0002C9                        838 	.ds 4
      0002CD                        839 _stall_retry_count::
      0002CD                        840 	.ds 1
      0002CE                        841 _usb_was_connected::
      0002CE                        842 	.ds 1
                                    843 	.area HOME    (CODE)
                                    844 	.area GSINIT0 (CODE)
                                    845 	.area GSINIT1 (CODE)
                                    846 	.area GSINIT2 (CODE)
                                    847 	.area GSINIT3 (CODE)
                                    848 	.area GSINIT4 (CODE)
                                    849 	.area GSINIT5 (CODE)
                                    850 	.area GSINIT  (CODE)
                                    851 	.area GSFINAL (CODE)
                                    852 	.area CSEG    (CODE)
                                    853 ;--------------------------------------------------------
                                    854 ; global & static initialisations
                                    855 ;--------------------------------------------------------
                                    856 	.area HOME    (CODE)
                                    857 	.area GSINIT  (CODE)
                                    858 	.area GSFINAL (CODE)
                                    859 	.area GSINIT  (CODE)
                                    860 ;--------------------------------------------------------
                                    861 ; Home
                                    862 ;--------------------------------------------------------
                                    863 	.area HOME    (CODE)
                                    864 	.area HOME    (CODE)
                                    865 ;--------------------------------------------------------
                                    866 ; code
                                    867 ;--------------------------------------------------------
                                    868 	.area CSEG    (CODE)
                                    869 ;------------------------------------------------------------
                                    870 ;Allocation info for local variables in function 'setup'
                                    871 ;------------------------------------------------------------
                                    872 ;init_voltage              Allocated with name '_setup_init_voltage_65537_221'
                                    873 ;------------------------------------------------------------
                                    874 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:50: void setup() {
                                    875 ;	-----------------------------------------
                                    876 ;	 function setup
                                    877 ;	-----------------------------------------
      000EAE                        878 _setup:
                           000007   879 	ar7 = 0x07
                           000006   880 	ar6 = 0x06
                           000005   881 	ar5 = 0x05
                           000004   882 	ar4 = 0x04
                           000003   883 	ar3 = 0x03
                           000002   884 	ar2 = 0x02
                           000001   885 	ar1 = 0x01
                           000000   886 	ar0 = 0x00
                                    887 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:52: DS18B20_init(&tempSensor, PIN_TEMP_SENSOR);
      000EAE 90 00 B6         [24]  888 	mov	dptr,#_DS18B20_init_PARM_2
      000EB1 74 0F            [12]  889 	mov	a,#0x0f
      000EB3 F0               [24]  890 	movx	@dptr,a
      000EB4 90 00 FE         [24]  891 	mov	dptr,#_tempSensor
      000EB7 75 F0 00         [24]  892 	mov	b,#0x00
      000EBA 12 04 A1         [24]  893 	lcall	_DS18B20_init
                                    894 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:56: USBController_begin(&usbCtrl);
      000EBD 90 01 29         [24]  895 	mov	dptr,#_usbCtrl
      000EC0 75 F0 00         [24]  896 	mov	b,#0x00
      000EC3 12 39 F5         [24]  897 	lcall	_USBController_begin
                                    898 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:57: delay(500);
      000EC6 90 01 F4         [24]  899 	mov	dptr,#0x01f4
      000EC9 E4               [12]  900 	clr	a
      000ECA F5 F0            [12]  901 	mov	b,a
      000ECC 12 4F BF         [24]  902 	lcall	_delay
                                    903 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:59: LOG_LINE("=================================");
      000ECF 90 61 C8         [24]  904 	mov	dptr,#___str_0
      000ED2 75 F0 80         [24]  905 	mov	b,#0x80
      000ED5 12 1E 6A         [24]  906 	lcall	_serial_println_str
                                    907 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:60: LOG_LINE("CH552G Fan Control System v1.0");
      000ED8 90 61 EA         [24]  908 	mov	dptr,#___str_1
      000EDB 75 F0 80         [24]  909 	mov	b,#0x80
      000EDE 12 1E 6A         [24]  910 	lcall	_serial_println_str
                                    911 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:61: LOG_LINE("=================================");
      000EE1 90 61 C8         [24]  912 	mov	dptr,#___str_0
      000EE4 75 F0 80         [24]  913 	mov	b,#0x80
      000EE7 12 1E 6A         [24]  914 	lcall	_serial_println_str
                                    915 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:64: LOG_LINE("[INIT] Voltage controller...");
      000EEA 90 62 09         [24]  916 	mov	dptr,#___str_2
      000EED 75 F0 80         [24]  917 	mov	b,#0x80
      000EF0 12 1E 6A         [24]  918 	lcall	_serial_println_str
                                    919 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:65: VoltageController_begin(&voltageCtrl, PIN_PWM_OUTPUT, PIN_VOLTAGE_ADC);
      000EF3 90 02 43         [24]  920 	mov	dptr,#_VoltageController_begin_PARM_2
      000EF6 74 22            [12]  921 	mov	a,#0x22
      000EF8 F0               [24]  922 	movx	@dptr,a
      000EF9 90 02 44         [24]  923 	mov	dptr,#_VoltageController_begin_PARM_3
      000EFC 74 0B            [12]  924 	mov	a,#0x0b
      000EFE F0               [24]  925 	movx	@dptr,a
      000EFF 90 00 FF         [24]  926 	mov	dptr,#_voltageCtrl
      000F02 75 F0 00         [24]  927 	mov	b,#0x00
      000F05 12 42 32         [24]  928 	lcall	_VoltageController_begin
                                    929 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:66: delay(100);
      000F08 90 00 64         [24]  930 	mov	dptr,#(0x64&0x00ff)
      000F0B E4               [12]  931 	clr	a
      000F0C F5 F0            [12]  932 	mov	b,a
      000F0E 12 4F BF         [24]  933 	lcall	_delay
                                    934 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:70: LOG_LINE("[INIT] Temperature sensor...");
      000F11 90 62 26         [24]  935 	mov	dptr,#___str_3
      000F14 75 F0 80         [24]  936 	mov	b,#0x80
      000F17 12 1E 6A         [24]  937 	lcall	_serial_println_str
                                    938 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:71: TempController_begin(&tempCtrl, &tempSensor, &voltageCtrl);
      000F1A 90 01 E9         [24]  939 	mov	dptr,#_TempController_begin_PARM_2
      000F1D 74 FE            [12]  940 	mov	a,#_tempSensor
      000F1F F0               [24]  941 	movx	@dptr,a
      000F20 74 00            [12]  942 	mov	a,#(_tempSensor >> 8)
      000F22 A3               [24]  943 	inc	dptr
      000F23 F0               [24]  944 	movx	@dptr,a
      000F24 E4               [12]  945 	clr	a
      000F25 A3               [24]  946 	inc	dptr
      000F26 F0               [24]  947 	movx	@dptr,a
      000F27 90 01 EC         [24]  948 	mov	dptr,#_TempController_begin_PARM_3
      000F2A 74 FF            [12]  949 	mov	a,#_voltageCtrl
      000F2C F0               [24]  950 	movx	@dptr,a
      000F2D 74 00            [12]  951 	mov	a,#(_voltageCtrl >> 8)
      000F2F A3               [24]  952 	inc	dptr
      000F30 F0               [24]  953 	movx	@dptr,a
      000F31 E4               [12]  954 	clr	a
      000F32 A3               [24]  955 	inc	dptr
      000F33 F0               [24]  956 	movx	@dptr,a
      000F34 90 01 0B         [24]  957 	mov	dptr,#_tempCtrl
      000F37 75 F0 00         [24]  958 	mov	b,#0x00
      000F3A 12 23 0C         [24]  959 	lcall	_TempController_begin
                                    960 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:72: delay(200);
      000F3D 90 00 C8         [24]  961 	mov	dptr,#(0xc8&0x00ff)
      000F40 E4               [12]  962 	clr	a
      000F41 F5 F0            [12]  963 	mov	b,a
      000F43 12 4F BF         [24]  964 	lcall	_delay
                                    965 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:74: if (TempController_isReady(&tempCtrl)) {
      000F46 90 01 0B         [24]  966 	mov	dptr,#_tempCtrl
      000F49 75 F0 00         [24]  967 	mov	b,#0x00
      000F4C 12 27 2F         [24]  968 	lcall	_TempController_isReady
      000F4F E5 82            [12]  969 	mov	a,dpl
      000F51 60 37            [24]  970 	jz	00102$
                                    971 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:76: serial_print_str("[OK] Temp sensor ready: ");
      000F53 90 62 43         [24]  972 	mov	dptr,#___str_4
      000F56 75 F0 80         [24]  973 	mov	b,#0x80
      000F59 12 19 E7         [24]  974 	lcall	_serial_print_str
                                    975 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:77: serial_print_float(TempController_getTemperature(&tempCtrl), 2);
      000F5C 90 01 0B         [24]  976 	mov	dptr,#_tempCtrl
      000F5F 75 F0 00         [24]  977 	mov	b,#0x00
      000F62 12 26 AD         [24]  978 	lcall	_TempController_getTemperature
      000F65 AC 82            [24]  979 	mov	r4,dpl
      000F67 AD 83            [24]  980 	mov	r5,dph
      000F69 AE F0            [24]  981 	mov	r6,b
      000F6B FF               [12]  982 	mov	r7,a
      000F6C 90 01 B4         [24]  983 	mov	dptr,#_serial_print_float_PARM_2
      000F6F 74 02            [12]  984 	mov	a,#0x02
      000F71 F0               [24]  985 	movx	@dptr,a
      000F72 E4               [12]  986 	clr	a
      000F73 A3               [24]  987 	inc	dptr
      000F74 F0               [24]  988 	movx	@dptr,a
      000F75 8C 82            [24]  989 	mov	dpl,r4
      000F77 8D 83            [24]  990 	mov	dph,r5
      000F79 8E F0            [24]  991 	mov	b,r6
      000F7B EF               [12]  992 	mov	a,r7
      000F7C 12 1B 21         [24]  993 	lcall	_serial_print_float
                                    994 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:78: serial_println_str(" C");
      000F7F 90 62 5C         [24]  995 	mov	dptr,#___str_5
      000F82 75 F0 80         [24]  996 	mov	b,#0x80
      000F85 12 1E 6A         [24]  997 	lcall	_serial_println_str
      000F88 80 09            [24]  998 	sjmp	00103$
      000F8A                        999 00102$:
                                   1000 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:81: LOG_LINE("[WARN] Temp sensor not ready!");
      000F8A 90 62 5F         [24] 1001 	mov	dptr,#___str_6
      000F8D 75 F0 80         [24] 1002 	mov	b,#0x80
      000F90 12 1E 6A         [24] 1003 	lcall	_serial_println_str
      000F93                       1004 00103$:
                                   1005 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:90: LOG_LINE("[INIT] Fan monitor...");
      000F93 90 62 7D         [24] 1006 	mov	dptr,#___str_7
      000F96 75 F0 80         [24] 1007 	mov	b,#0x80
      000F99 12 1E 6A         [24] 1008 	lcall	_serial_println_str
                                   1009 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:91: FanMonitor_begin(&fanMonitor, PIN_FAN_TACH);
      000F9C 90 00 EB         [24] 1010 	mov	dptr,#_FanMonitor_begin_PARM_2
      000F9F 74 20            [12] 1011 	mov	a,#0x20
      000FA1 F0               [24] 1012 	movx	@dptr,a
      000FA2 90 01 1A         [24] 1013 	mov	dptr,#_fanMonitor
      000FA5 75 F0 00         [24] 1014 	mov	b,#0x00
      000FA8 12 0A B2         [24] 1015 	lcall	_FanMonitor_begin
                                   1016 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:92: delay(100);
      000FAB 90 00 64         [24] 1017 	mov	dptr,#(0x64&0x00ff)
      000FAE E4               [12] 1018 	clr	a
      000FAF F5 F0            [12] 1019 	mov	b,a
      000FB1 12 4F BF         [24] 1020 	lcall	_delay
                                   1021 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:95: float init_voltage = VoltageController_readVoltage(&voltageCtrl);
      000FB4 90 00 FF         [24] 1022 	mov	dptr,#_voltageCtrl
      000FB7 75 F0 00         [24] 1023 	mov	b,#0x00
      000FBA 12 44 AD         [24] 1024 	lcall	_VoltageController_readVoltage
      000FBD AC 82            [24] 1025 	mov	r4,dpl
      000FBF AD 83            [24] 1026 	mov	r5,dph
      000FC1 AE F0            [24] 1027 	mov	r6,b
      000FC3 FF               [12] 1028 	mov	r7,a
                                   1029 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:97: serial_print_str("[INFO] Initial voltage: ");
      000FC4 90 62 93         [24] 1030 	mov	dptr,#___str_8
      000FC7 75 F0 80         [24] 1031 	mov	b,#0x80
      000FCA C0 07            [24] 1032 	push	ar7
      000FCC C0 06            [24] 1033 	push	ar6
      000FCE C0 05            [24] 1034 	push	ar5
      000FD0 C0 04            [24] 1035 	push	ar4
      000FD2 12 19 E7         [24] 1036 	lcall	_serial_print_str
      000FD5 D0 04            [24] 1037 	pop	ar4
      000FD7 D0 05            [24] 1038 	pop	ar5
      000FD9 D0 06            [24] 1039 	pop	ar6
      000FDB D0 07            [24] 1040 	pop	ar7
                                   1041 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:98: serial_print_float(init_voltage, 2);
      000FDD 90 01 B4         [24] 1042 	mov	dptr,#_serial_print_float_PARM_2
      000FE0 74 02            [12] 1043 	mov	a,#0x02
      000FE2 F0               [24] 1044 	movx	@dptr,a
      000FE3 E4               [12] 1045 	clr	a
      000FE4 A3               [24] 1046 	inc	dptr
      000FE5 F0               [24] 1047 	movx	@dptr,a
      000FE6 8C 82            [24] 1048 	mov	dpl,r4
      000FE8 8D 83            [24] 1049 	mov	dph,r5
      000FEA 8E F0            [24] 1050 	mov	b,r6
      000FEC EF               [12] 1051 	mov	a,r7
      000FED C0 07            [24] 1052 	push	ar7
      000FEF C0 06            [24] 1053 	push	ar6
      000FF1 C0 05            [24] 1054 	push	ar5
      000FF3 C0 04            [24] 1055 	push	ar4
      000FF5 12 1B 21         [24] 1056 	lcall	_serial_print_float
                                   1057 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:99: serial_println_str(" V");
      000FF8 90 62 AC         [24] 1058 	mov	dptr,#___str_9
      000FFB 75 F0 80         [24] 1059 	mov	b,#0x80
      000FFE 12 1E 6A         [24] 1060 	lcall	_serial_println_str
                                   1061 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:103: sysStatus.temperature = TempController_getTemperature(&tempCtrl);
      001001 90 01 0B         [24] 1062 	mov	dptr,#_tempCtrl
      001004 75 F0 00         [24] 1063 	mov	b,#0x00
      001007 12 26 AD         [24] 1064 	lcall	_TempController_getTemperature
      00100A A8 82            [24] 1065 	mov	r0,dpl
      00100C A9 83            [24] 1066 	mov	r1,dph
      00100E AA F0            [24] 1067 	mov	r2,b
      001010 FB               [12] 1068 	mov	r3,a
      001011 D0 04            [24] 1069 	pop	ar4
      001013 D0 05            [24] 1070 	pop	ar5
      001015 D0 06            [24] 1071 	pop	ar6
      001017 D0 07            [24] 1072 	pop	ar7
      001019 90 01 8C         [24] 1073 	mov	dptr,#_sysStatus
      00101C E8               [12] 1074 	mov	a,r0
      00101D F0               [24] 1075 	movx	@dptr,a
      00101E E9               [12] 1076 	mov	a,r1
      00101F A3               [24] 1077 	inc	dptr
      001020 F0               [24] 1078 	movx	@dptr,a
      001021 EA               [12] 1079 	mov	a,r2
      001022 A3               [24] 1080 	inc	dptr
      001023 F0               [24] 1081 	movx	@dptr,a
      001024 EB               [12] 1082 	mov	a,r3
      001025 A3               [24] 1083 	inc	dptr
      001026 F0               [24] 1084 	movx	@dptr,a
                                   1085 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:104: sysStatus.voltage = init_voltage;
      001027 90 01 90         [24] 1086 	mov	dptr,#(_sysStatus + 0x0004)
      00102A EC               [12] 1087 	mov	a,r4
      00102B F0               [24] 1088 	movx	@dptr,a
      00102C ED               [12] 1089 	mov	a,r5
      00102D A3               [24] 1090 	inc	dptr
      00102E F0               [24] 1091 	movx	@dptr,a
      00102F EE               [12] 1092 	mov	a,r6
      001030 A3               [24] 1093 	inc	dptr
      001031 F0               [24] 1094 	movx	@dptr,a
      001032 EF               [12] 1095 	mov	a,r7
      001033 A3               [24] 1096 	inc	dptr
      001034 F0               [24] 1097 	movx	@dptr,a
                                   1098 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:105: sysStatus.target_voltage = VOUT_DEFAULT;
      001035 90 01 94         [24] 1099 	mov	dptr,#(_sysStatus + 0x0008)
      001038 E4               [12] 1100 	clr	a
      001039 F0               [24] 1101 	movx	@dptr,a
      00103A A3               [24] 1102 	inc	dptr
      00103B F0               [24] 1103 	movx	@dptr,a
      00103C 74 40            [12] 1104 	mov	a,#0x40
      00103E A3               [24] 1105 	inc	dptr
      00103F F0               [24] 1106 	movx	@dptr,a
      001040 04               [12] 1107 	inc	a
      001041 A3               [24] 1108 	inc	dptr
      001042 F0               [24] 1109 	movx	@dptr,a
                                   1110 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:106: sysStatus.rpm = 0;
      001043 90 01 98         [24] 1111 	mov	dptr,#(_sysStatus + 0x000c)
      001046 E4               [12] 1112 	clr	a
      001047 F0               [24] 1113 	movx	@dptr,a
      001048 A3               [24] 1114 	inc	dptr
      001049 F0               [24] 1115 	movx	@dptr,a
      00104A A3               [24] 1116 	inc	dptr
      00104B F0               [24] 1117 	movx	@dptr,a
      00104C A3               [24] 1118 	inc	dptr
      00104D F0               [24] 1119 	movx	@dptr,a
                                   1120 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:107: sysStatus.target_rpm = RPM_TARGET_MIN;
      00104E 90 01 9C         [24] 1121 	mov	dptr,#(_sysStatus + 0x0010)
      001051 74 58            [12] 1122 	mov	a,#0x58
      001053 F0               [24] 1123 	movx	@dptr,a
      001054 74 02            [12] 1124 	mov	a,#0x02
      001056 A3               [24] 1125 	inc	dptr
      001057 F0               [24] 1126 	movx	@dptr,a
      001058 E4               [12] 1127 	clr	a
      001059 A3               [24] 1128 	inc	dptr
      00105A F0               [24] 1129 	movx	@dptr,a
      00105B A3               [24] 1130 	inc	dptr
      00105C F0               [24] 1131 	movx	@dptr,a
                                   1132 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:108: sysStatus.pwm_duty = 0;
      00105D 90 01 A0         [24] 1133 	mov	dptr,#(_sysStatus + 0x0014)
      001060 F0               [24] 1134 	movx	@dptr,a
                                   1135 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:109: sysStatus.error_flags = ERROR_NONE;
      001061 90 01 A1         [24] 1136 	mov	dptr,#(_sysStatus + 0x0015)
      001064 F0               [24] 1137 	movx	@dptr,a
                                   1138 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:110: sysStatus.auto_mode = true;
      001065 90 01 A2         [24] 1139 	mov	dptr,#(_sysStatus + 0x0016)
      001068 04               [12] 1140 	inc	a
      001069 F0               [24] 1141 	movx	@dptr,a
                                   1142 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:112: LOG_LINE("[READY] System started!");
      00106A 90 62 AF         [24] 1143 	mov	dptr,#___str_10
      00106D 75 F0 80         [24] 1144 	mov	b,#0x80
      001070 12 1E 6A         [24] 1145 	lcall	_serial_println_str
                                   1146 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:113: LOG_LINE("=================================");
      001073 90 61 C8         [24] 1147 	mov	dptr,#___str_0
      001076 75 F0 80         [24] 1148 	mov	b,#0x80
                                   1149 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:114: }
      001079 02 1E 6A         [24] 1150 	ljmp	_serial_println_str
                                   1151 ;------------------------------------------------------------
                                   1152 ;Allocation info for local variables in function 'loop'
                                   1153 ;------------------------------------------------------------
                                   1154 ;now                       Allocated with name '_loop_now_65536_222'
                                   1155 ;usb_connected             Allocated with name '_loop_usb_connected_65537_223'
                                   1156 ;usb_control_mode          Allocated with name '_loop_usb_control_mode_65538_225'
                                   1157 ;target_v                  Allocated with name '_loop_target_v_196610_231'
                                   1158 ;------------------------------------------------------------
                                   1159 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:118: void loop() {
                                   1160 ;	-----------------------------------------
                                   1161 ;	 function loop
                                   1162 ;	-----------------------------------------
      00107C                       1163 _loop:
                                   1164 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:119: unsigned long now = millis();
      00107C 12 4F 82         [24] 1165 	lcall	_millis
      00107F AC 82            [24] 1166 	mov	r4,dpl
      001081 AD 83            [24] 1167 	mov	r5,dph
      001083 AE F0            [24] 1168 	mov	r6,b
      001085 FF               [12] 1169 	mov	r7,a
                                   1170 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:123: USBController_update(&usbCtrl);
      001086 90 01 29         [24] 1171 	mov	dptr,#_usbCtrl
      001089 75 F0 00         [24] 1172 	mov	b,#0x00
      00108C C0 07            [24] 1173 	push	ar7
      00108E C0 06            [24] 1174 	push	ar6
      001090 C0 05            [24] 1175 	push	ar5
      001092 C0 04            [24] 1176 	push	ar4
      001094 12 3B AC         [24] 1177 	lcall	_USBController_update
                                   1178 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:126: bool usb_connected = USBController_isConnected(&usbCtrl);
      001097 90 01 29         [24] 1179 	mov	dptr,#_usbCtrl
      00109A 75 F0 00         [24] 1180 	mov	b,#0x00
      00109D 12 40 20         [24] 1181 	lcall	_USBController_isConnected
      0010A0 AB 82            [24] 1182 	mov	r3,dpl
      0010A2 D0 04            [24] 1183 	pop	ar4
      0010A4 D0 05            [24] 1184 	pop	ar5
      0010A6 D0 06            [24] 1185 	pop	ar6
      0010A8 D0 07            [24] 1186 	pop	ar7
                                   1187 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:127: if (usb_was_connected && !usb_connected) {
      0010AA 90 02 CE         [24] 1188 	mov	dptr,#_usb_was_connected
      0010AD E0               [24] 1189 	movx	a,@dptr
      0010AE 60 28            [24] 1190 	jz	00102$
      0010B0 EB               [12] 1191 	mov	a,r3
      0010B1 70 25            [24] 1192 	jnz	00102$
                                   1193 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:129: serial_println_str("[WARN] USB disconnected! Switching to AUTO mode");
      0010B3 90 62 C7         [24] 1194 	mov	dptr,#___str_11
      0010B6 75 F0 80         [24] 1195 	mov	b,#0x80
      0010B9 C0 07            [24] 1196 	push	ar7
      0010BB C0 06            [24] 1197 	push	ar6
      0010BD C0 05            [24] 1198 	push	ar5
      0010BF C0 04            [24] 1199 	push	ar4
      0010C1 C0 03            [24] 1200 	push	ar3
      0010C3 12 1E 6A         [24] 1201 	lcall	_serial_println_str
      0010C6 D0 03            [24] 1202 	pop	ar3
      0010C8 D0 04            [24] 1203 	pop	ar4
      0010CA D0 05            [24] 1204 	pop	ar5
      0010CC D0 06            [24] 1205 	pop	ar6
      0010CE D0 07            [24] 1206 	pop	ar7
                                   1207 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:130: sysStatus.error_flags |= ERROR_USB_TIMEOUT;
      0010D0 90 01 A1         [24] 1208 	mov	dptr,#(_sysStatus + 0x0015)
      0010D3 E0               [24] 1209 	movx	a,@dptr
      0010D4 44 10            [12] 1210 	orl	a,#0x10
      0010D6 FA               [12] 1211 	mov	r2,a
      0010D7 F0               [24] 1212 	movx	@dptr,a
      0010D8                       1213 00102$:
                                   1214 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:133: usb_was_connected = usb_connected;
      0010D8 90 02 CE         [24] 1215 	mov	dptr,#_usb_was_connected
      0010DB EB               [12] 1216 	mov	a,r3
      0010DC F0               [24] 1217 	movx	@dptr,a
                                   1218 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:136: bool usb_control_mode = usb_connected && USBController_isOverrideActive(&usbCtrl);
      0010DD EB               [12] 1219 	mov	a,r3
      0010DE 60 1D            [24] 1220 	jz	00147$
      0010E0 90 01 29         [24] 1221 	mov	dptr,#_usbCtrl
      0010E3 75 F0 00         [24] 1222 	mov	b,#0x00
      0010E6 C0 07            [24] 1223 	push	ar7
      0010E8 C0 06            [24] 1224 	push	ar6
      0010EA C0 05            [24] 1225 	push	ar5
      0010EC C0 04            [24] 1226 	push	ar4
      0010EE 12 40 88         [24] 1227 	lcall	_USBController_isOverrideActive
      0010F1 E5 82            [12] 1228 	mov	a,dpl
      0010F3 D0 04            [24] 1229 	pop	ar4
      0010F5 D0 05            [24] 1230 	pop	ar5
      0010F7 D0 06            [24] 1231 	pop	ar6
      0010F9 D0 07            [24] 1232 	pop	ar7
      0010FB 70 04            [24] 1233 	jnz	00148$
      0010FD                       1234 00147$:
                                   1235 ;	assignBit
      0010FD C2 00            [12] 1236 	clr	_loop_sloc0_1_0
      0010FF 80 02            [24] 1237 	sjmp	00149$
      001101                       1238 00148$:
                                   1239 ;	assignBit
      001101 D2 00            [12] 1240 	setb	_loop_sloc0_1_0
      001103                       1241 00149$:
      001103 90 01 A3         [24] 1242 	mov	dptr,#_loop_usb_control_mode_65538_225
      001106 A2 00            [12] 1243 	mov	c,_loop_sloc0_1_0
      001108 E4               [12] 1244 	clr	a
      001109 33               [12] 1245 	rlc	a
      00110A F0               [24] 1246 	movx	@dptr,a
                                   1247 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:137: sysStatus.auto_mode = !usb_control_mode;
      00110B 90 01 A3         [24] 1248 	mov	dptr,#_loop_usb_control_mode_65538_225
      00110E E0               [24] 1249 	movx	a,@dptr
      00110F B4 01 00         [24] 1250 	cjne	a,#0x01,00240$
      001112                       1251 00240$:
      001112 92 00            [24] 1252 	mov	_loop_sloc0_1_0,c
      001114 90 01 A2         [24] 1253 	mov	dptr,#(_sysStatus + 0x0016)
      001117 E4               [12] 1254 	clr	a
      001118 33               [12] 1255 	rlc	a
      001119 F0               [24] 1256 	movx	@dptr,a
                                   1257 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:140: if (usbCtrl.reset_requested) {
      00111A 90 01 8A         [24] 1258 	mov	dptr,#(_usbCtrl + 0x0061)
      00111D E0               [24] 1259 	movx	a,@dptr
      00111E 60 39            [24] 1260 	jz	00105$
                                   1261 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:141: LOG_LINE("[INFO] Reset command received, unlocking output");
      001120 90 62 F7         [24] 1262 	mov	dptr,#___str_12
      001123 75 F0 80         [24] 1263 	mov	b,#0x80
      001126 C0 07            [24] 1264 	push	ar7
      001128 C0 06            [24] 1265 	push	ar6
      00112A C0 05            [24] 1266 	push	ar5
      00112C C0 04            [24] 1267 	push	ar4
      00112E 12 1E 6A         [24] 1268 	lcall	_serial_println_str
                                   1269 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:142: VoltageController_unlockOutput(&voltageCtrl);
      001131 90 00 FF         [24] 1270 	mov	dptr,#_voltageCtrl
      001134 75 F0 00         [24] 1271 	mov	b,#0x00
      001137 12 47 07         [24] 1272 	lcall	_VoltageController_unlockOutput
      00113A D0 04            [24] 1273 	pop	ar4
      00113C D0 05            [24] 1274 	pop	ar5
      00113E D0 06            [24] 1275 	pop	ar6
      001140 D0 07            [24] 1276 	pop	ar7
                                   1277 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:143: sysStatus.error_flags = ERROR_NONE;  // 清除所有错误标志
      001142 90 01 A1         [24] 1278 	mov	dptr,#(_sysStatus + 0x0015)
      001145 E4               [12] 1279 	clr	a
      001146 F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:144: stall_retry_count = 0;
      001147 90 02 CD         [24] 1282 	mov	dptr,#_stall_retry_count
      00114A F0               [24] 1283 	movx	@dptr,a
                                   1284 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:145: stall_detect_time = 0;
      00114B 90 02 C9         [24] 1285 	mov	dptr,#_stall_detect_time
      00114E F0               [24] 1286 	movx	@dptr,a
      00114F A3               [24] 1287 	inc	dptr
      001150 F0               [24] 1288 	movx	@dptr,a
      001151 A3               [24] 1289 	inc	dptr
      001152 F0               [24] 1290 	movx	@dptr,a
      001153 A3               [24] 1291 	inc	dptr
      001154 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:146: usbCtrl.reset_requested = false;
      001155 90 01 8A         [24] 1294 	mov	dptr,#(_usbCtrl + 0x0061)
      001158 F0               [24] 1295 	movx	@dptr,a
      001159                       1296 00105$:
                                   1297 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:153: if (now - last_temp_update >= TEMP_UPDATE_INTERVAL) {
      001159 90 02 BD         [24] 1298 	mov	dptr,#_last_temp_update
      00115C E0               [24] 1299 	movx	a,@dptr
      00115D F8               [12] 1300 	mov	r0,a
      00115E A3               [24] 1301 	inc	dptr
      00115F E0               [24] 1302 	movx	a,@dptr
      001160 F9               [12] 1303 	mov	r1,a
      001161 A3               [24] 1304 	inc	dptr
      001162 E0               [24] 1305 	movx	a,@dptr
      001163 FA               [12] 1306 	mov	r2,a
      001164 A3               [24] 1307 	inc	dptr
      001165 E0               [24] 1308 	movx	a,@dptr
      001166 FB               [12] 1309 	mov	r3,a
      001167 EC               [12] 1310 	mov	a,r4
      001168 C3               [12] 1311 	clr	c
      001169 98               [12] 1312 	subb	a,r0
      00116A F8               [12] 1313 	mov	r0,a
      00116B ED               [12] 1314 	mov	a,r5
      00116C 99               [12] 1315 	subb	a,r1
      00116D F9               [12] 1316 	mov	r1,a
      00116E EE               [12] 1317 	mov	a,r6
      00116F 9A               [12] 1318 	subb	a,r2
      001170 FA               [12] 1319 	mov	r2,a
      001171 EF               [12] 1320 	mov	a,r7
      001172 9B               [12] 1321 	subb	a,r3
      001173 FB               [12] 1322 	mov	r3,a
      001174 C3               [12] 1323 	clr	c
      001175 E8               [12] 1324 	mov	a,r0
      001176 94 D0            [12] 1325 	subb	a,#0xd0
      001178 E9               [12] 1326 	mov	a,r1
      001179 94 07            [12] 1327 	subb	a,#0x07
      00117B EA               [12] 1328 	mov	a,r2
      00117C 94 00            [12] 1329 	subb	a,#0x00
      00117E EB               [12] 1330 	mov	a,r3
      00117F 94 00            [12] 1331 	subb	a,#0x00
      001181 50 03            [24] 1332 	jnc	00242$
      001183 02 12 20         [24] 1333 	ljmp	00113$
      001186                       1334 00242$:
                                   1335 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:156: if (sysStatus.auto_mode) {
      001186 90 01 A2         [24] 1336 	mov	dptr,#(_sysStatus + 0x0016)
      001189 E0               [24] 1337 	movx	a,@dptr
      00118A 60 31            [24] 1338 	jz	00110$
                                   1339 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:158: if (!TempController_update(&tempCtrl)) {
      00118C 90 01 0B         [24] 1340 	mov	dptr,#_tempCtrl
      00118F 75 F0 00         [24] 1341 	mov	b,#0x00
      001192 C0 07            [24] 1342 	push	ar7
      001194 C0 06            [24] 1343 	push	ar6
      001196 C0 05            [24] 1344 	push	ar5
      001198 C0 04            [24] 1345 	push	ar4
      00119A 12 24 E7         [24] 1346 	lcall	_TempController_update
      00119D E5 82            [12] 1347 	mov	a,dpl
      00119F D0 04            [24] 1348 	pop	ar4
      0011A1 D0 05            [24] 1349 	pop	ar5
      0011A3 D0 06            [24] 1350 	pop	ar6
      0011A5 D0 07            [24] 1351 	pop	ar7
      0011A7 70 0A            [24] 1352 	jnz	00107$
                                   1353 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:159: sysStatus.error_flags |= ERROR_TEMP_SENSOR;
      0011A9 90 01 A1         [24] 1354 	mov	dptr,#(_sysStatus + 0x0015)
      0011AC E0               [24] 1355 	movx	a,@dptr
      0011AD 44 01            [12] 1356 	orl	a,#0x01
      0011AF FB               [12] 1357 	mov	r3,a
      0011B0 F0               [24] 1358 	movx	@dptr,a
      0011B1 80 5F            [24] 1359 	sjmp	00111$
      0011B3                       1360 00107$:
                                   1361 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:161: sysStatus.error_flags &= ~ERROR_TEMP_SENSOR;
      0011B3 90 01 A1         [24] 1362 	mov	dptr,#(_sysStatus + 0x0015)
      0011B6 E0               [24] 1363 	movx	a,@dptr
      0011B7 54 FE            [12] 1364 	anl	a,#0xfe
      0011B9 FB               [12] 1365 	mov	r3,a
      0011BA F0               [24] 1366 	movx	@dptr,a
      0011BB 80 55            [24] 1367 	sjmp	00111$
      0011BD                       1368 00110$:
                                   1369 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:165: float target_v = USBController_getTargetVoltage(&usbCtrl);
      0011BD 90 01 29         [24] 1370 	mov	dptr,#_usbCtrl
      0011C0 75 F0 00         [24] 1371 	mov	b,#0x00
      0011C3 C0 07            [24] 1372 	push	ar7
      0011C5 C0 06            [24] 1373 	push	ar6
      0011C7 C0 05            [24] 1374 	push	ar5
      0011C9 C0 04            [24] 1375 	push	ar4
      0011CB 12 40 47         [24] 1376 	lcall	_USBController_getTargetVoltage
      0011CE A8 82            [24] 1377 	mov	r0,dpl
      0011D0 A9 83            [24] 1378 	mov	r1,dph
      0011D2 AA F0            [24] 1379 	mov	r2,b
      0011D4 FB               [12] 1380 	mov	r3,a
                                   1381 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:166: VoltageController_setVoltage(&voltageCtrl, target_v);
      0011D5 90 02 48         [24] 1382 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      0011D8 E8               [12] 1383 	mov	a,r0
      0011D9 F0               [24] 1384 	movx	@dptr,a
      0011DA E9               [12] 1385 	mov	a,r1
      0011DB A3               [24] 1386 	inc	dptr
      0011DC F0               [24] 1387 	movx	@dptr,a
      0011DD EA               [12] 1388 	mov	a,r2
      0011DE A3               [24] 1389 	inc	dptr
      0011DF F0               [24] 1390 	movx	@dptr,a
      0011E0 EB               [12] 1391 	mov	a,r3
      0011E1 A3               [24] 1392 	inc	dptr
      0011E2 F0               [24] 1393 	movx	@dptr,a
      0011E3 90 00 FF         [24] 1394 	mov	dptr,#_voltageCtrl
      0011E6 75 F0 00         [24] 1395 	mov	b,#0x00
      0011E9 C0 03            [24] 1396 	push	ar3
      0011EB C0 02            [24] 1397 	push	ar2
      0011ED C0 01            [24] 1398 	push	ar1
      0011EF C0 00            [24] 1399 	push	ar0
      0011F1 12 43 61         [24] 1400 	lcall	_VoltageController_setVoltage
      0011F4 D0 00            [24] 1401 	pop	ar0
      0011F6 D0 01            [24] 1402 	pop	ar1
      0011F8 D0 02            [24] 1403 	pop	ar2
      0011FA D0 03            [24] 1404 	pop	ar3
      0011FC D0 04            [24] 1405 	pop	ar4
      0011FE D0 05            [24] 1406 	pop	ar5
      001200 D0 06            [24] 1407 	pop	ar6
      001202 D0 07            [24] 1408 	pop	ar7
                                   1409 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:167: sysStatus.target_voltage = target_v;
      001204 90 01 94         [24] 1410 	mov	dptr,#(_sysStatus + 0x0008)
      001207 E8               [12] 1411 	mov	a,r0
      001208 F0               [24] 1412 	movx	@dptr,a
      001209 E9               [12] 1413 	mov	a,r1
      00120A A3               [24] 1414 	inc	dptr
      00120B F0               [24] 1415 	movx	@dptr,a
      00120C EA               [12] 1416 	mov	a,r2
      00120D A3               [24] 1417 	inc	dptr
      00120E F0               [24] 1418 	movx	@dptr,a
      00120F EB               [12] 1419 	mov	a,r3
      001210 A3               [24] 1420 	inc	dptr
      001211 F0               [24] 1421 	movx	@dptr,a
      001212                       1422 00111$:
                                   1423 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:180: last_temp_update = now;
      001212 90 02 BD         [24] 1424 	mov	dptr,#_last_temp_update
      001215 EC               [12] 1425 	mov	a,r4
      001216 F0               [24] 1426 	movx	@dptr,a
      001217 ED               [12] 1427 	mov	a,r5
      001218 A3               [24] 1428 	inc	dptr
      001219 F0               [24] 1429 	movx	@dptr,a
      00121A EE               [12] 1430 	mov	a,r6
      00121B A3               [24] 1431 	inc	dptr
      00121C F0               [24] 1432 	movx	@dptr,a
      00121D EF               [12] 1433 	mov	a,r7
      00121E A3               [24] 1434 	inc	dptr
      00121F F0               [24] 1435 	movx	@dptr,a
      001220                       1436 00113$:
                                   1437 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:184: if (now - last_voltage_check >= VOLTAGE_CHECK_INTERVAL) {
      001220 90 02 C5         [24] 1438 	mov	dptr,#_last_voltage_check
      001223 E0               [24] 1439 	movx	a,@dptr
      001224 F8               [12] 1440 	mov	r0,a
      001225 A3               [24] 1441 	inc	dptr
      001226 E0               [24] 1442 	movx	a,@dptr
      001227 F9               [12] 1443 	mov	r1,a
      001228 A3               [24] 1444 	inc	dptr
      001229 E0               [24] 1445 	movx	a,@dptr
      00122A FA               [12] 1446 	mov	r2,a
      00122B A3               [24] 1447 	inc	dptr
      00122C E0               [24] 1448 	movx	a,@dptr
      00122D FB               [12] 1449 	mov	r3,a
      00122E EC               [12] 1450 	mov	a,r4
      00122F C3               [12] 1451 	clr	c
      001230 98               [12] 1452 	subb	a,r0
      001231 F8               [12] 1453 	mov	r0,a
      001232 ED               [12] 1454 	mov	a,r5
      001233 99               [12] 1455 	subb	a,r1
      001234 F9               [12] 1456 	mov	r1,a
      001235 EE               [12] 1457 	mov	a,r6
      001236 9A               [12] 1458 	subb	a,r2
      001237 FA               [12] 1459 	mov	r2,a
      001238 EF               [12] 1460 	mov	a,r7
      001239 9B               [12] 1461 	subb	a,r3
      00123A FB               [12] 1462 	mov	r3,a
      00123B C3               [12] 1463 	clr	c
      00123C E8               [12] 1464 	mov	a,r0
      00123D 94 F4            [12] 1465 	subb	a,#0xf4
      00123F E9               [12] 1466 	mov	a,r1
      001240 94 01            [12] 1467 	subb	a,#0x01
      001242 EA               [12] 1468 	mov	a,r2
      001243 94 00            [12] 1469 	subb	a,#0x00
      001245 EB               [12] 1470 	mov	a,r3
      001246 94 00            [12] 1471 	subb	a,#0x00
      001248 40 70            [24] 1472 	jc	00118$
                                   1473 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:185: VoltageController_updateVoltage(&voltageCtrl);
      00124A 90 00 FF         [24] 1474 	mov	dptr,#_voltageCtrl
      00124D 75 F0 00         [24] 1475 	mov	b,#0x00
      001250 C0 07            [24] 1476 	push	ar7
      001252 C0 06            [24] 1477 	push	ar6
      001254 C0 05            [24] 1478 	push	ar5
      001256 C0 04            [24] 1479 	push	ar4
      001258 12 45 51         [24] 1480 	lcall	_VoltageController_updateVoltage
                                   1481 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:188: if (VoltageController_isVoltageAbnormal(&voltageCtrl)) {
      00125B 90 00 FF         [24] 1482 	mov	dptr,#_voltageCtrl
      00125E 75 F0 00         [24] 1483 	mov	b,#0x00
      001261 12 45 DB         [24] 1484 	lcall	_VoltageController_isVoltageAbnormal
      001264 E5 82            [12] 1485 	mov	a,dpl
      001266 D0 04            [24] 1486 	pop	ar4
      001268 D0 05            [24] 1487 	pop	ar5
      00126A D0 06            [24] 1488 	pop	ar6
      00126C D0 07            [24] 1489 	pop	ar7
      00126E 60 34            [24] 1490 	jz	00115$
                                   1491 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:189: sysStatus.error_flags |= ERROR_VOLTAGE_ABNORMAL;
      001270 90 01 A1         [24] 1492 	mov	dptr,#(_sysStatus + 0x0015)
      001273 E0               [24] 1493 	movx	a,@dptr
      001274 44 08            [12] 1494 	orl	a,#0x08
      001276 F0               [24] 1495 	movx	@dptr,a
                                   1496 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:191: VoltageController_lockOutput(&voltageCtrl);
      001277 90 00 FF         [24] 1497 	mov	dptr,#_voltageCtrl
      00127A 75 F0 00         [24] 1498 	mov	b,#0x00
      00127D C0 07            [24] 1499 	push	ar7
      00127F C0 06            [24] 1500 	push	ar6
      001281 C0 05            [24] 1501 	push	ar5
      001283 C0 04            [24] 1502 	push	ar4
      001285 12 46 A5         [24] 1503 	lcall	_VoltageController_lockOutput
                                   1504 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:192: LOG_LINE("[ERROR] Voltage abnormal! Output locked!");
      001288 90 63 27         [24] 1505 	mov	dptr,#___str_13
      00128B 75 F0 80         [24] 1506 	mov	b,#0x80
      00128E 12 1E 6A         [24] 1507 	lcall	_serial_println_str
                                   1508 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:193: LOG_LINE("[ERROR] Please power cycle or send reset command");
      001291 90 63 50         [24] 1509 	mov	dptr,#___str_14
      001294 75 F0 80         [24] 1510 	mov	b,#0x80
      001297 12 1E 6A         [24] 1511 	lcall	_serial_println_str
      00129A D0 04            [24] 1512 	pop	ar4
      00129C D0 05            [24] 1513 	pop	ar5
      00129E D0 06            [24] 1514 	pop	ar6
      0012A0 D0 07            [24] 1515 	pop	ar7
      0012A2 80 08            [24] 1516 	sjmp	00116$
      0012A4                       1517 00115$:
                                   1518 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:195: sysStatus.error_flags &= ~ERROR_VOLTAGE_ABNORMAL;
      0012A4 90 01 A1         [24] 1519 	mov	dptr,#(_sysStatus + 0x0015)
      0012A7 E0               [24] 1520 	movx	a,@dptr
      0012A8 54 F7            [12] 1521 	anl	a,#0xf7
      0012AA FB               [12] 1522 	mov	r3,a
      0012AB F0               [24] 1523 	movx	@dptr,a
      0012AC                       1524 00116$:
                                   1525 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:198: last_voltage_check = now;
      0012AC 90 02 C5         [24] 1526 	mov	dptr,#_last_voltage_check
      0012AF EC               [12] 1527 	mov	a,r4
      0012B0 F0               [24] 1528 	movx	@dptr,a
      0012B1 ED               [12] 1529 	mov	a,r5
      0012B2 A3               [24] 1530 	inc	dptr
      0012B3 F0               [24] 1531 	movx	@dptr,a
      0012B4 EE               [12] 1532 	mov	a,r6
      0012B5 A3               [24] 1533 	inc	dptr
      0012B6 F0               [24] 1534 	movx	@dptr,a
      0012B7 EF               [12] 1535 	mov	a,r7
      0012B8 A3               [24] 1536 	inc	dptr
      0012B9 F0               [24] 1537 	movx	@dptr,a
      0012BA                       1538 00118$:
                                   1539 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:202: FanMonitor_updateRPM(&fanMonitor);
      0012BA 90 01 1A         [24] 1540 	mov	dptr,#_fanMonitor
      0012BD 75 F0 00         [24] 1541 	mov	b,#0x00
      0012C0 C0 07            [24] 1542 	push	ar7
      0012C2 C0 06            [24] 1543 	push	ar6
      0012C4 C0 05            [24] 1544 	push	ar5
      0012C6 C0 04            [24] 1545 	push	ar4
      0012C8 12 0B BD         [24] 1546 	lcall	_FanMonitor_updateRPM
                                   1547 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:205: if (FanMonitor_isStalled(&fanMonitor)) {
      0012CB 90 01 1A         [24] 1548 	mov	dptr,#_fanMonitor
      0012CE 75 F0 00         [24] 1549 	mov	b,#0x00
      0012D1 12 0E 13         [24] 1550 	lcall	_FanMonitor_isStalled
      0012D4 E5 82            [12] 1551 	mov	a,dpl
      0012D6 D0 04            [24] 1552 	pop	ar4
      0012D8 D0 05            [24] 1553 	pop	ar5
      0012DA D0 06            [24] 1554 	pop	ar6
      0012DC D0 07            [24] 1555 	pop	ar7
      0012DE 70 03            [24] 1556 	jnz	00247$
      0012E0 02 13 E3         [24] 1557 	ljmp	00129$
      0012E3                       1558 00247$:
                                   1559 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:206: sysStatus.error_flags |= ERROR_FAN_STALLED;
      0012E3 90 01 A1         [24] 1560 	mov	dptr,#(_sysStatus + 0x0015)
      0012E6 E0               [24] 1561 	movx	a,@dptr
      0012E7 44 02            [12] 1562 	orl	a,#0x02
      0012E9 F0               [24] 1563 	movx	@dptr,a
                                   1564 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:209: if (stall_detect_time == 0) {
      0012EA 90 02 C9         [24] 1565 	mov	dptr,#_stall_detect_time
      0012ED E0               [24] 1566 	movx	a,@dptr
      0012EE F5 F0            [12] 1567 	mov	b,a
      0012F0 A3               [24] 1568 	inc	dptr
      0012F1 E0               [24] 1569 	movx	a,@dptr
      0012F2 42 F0            [12] 1570 	orl	b,a
      0012F4 A3               [24] 1571 	inc	dptr
      0012F5 E0               [24] 1572 	movx	a,@dptr
      0012F6 42 F0            [12] 1573 	orl	b,a
      0012F8 A3               [24] 1574 	inc	dptr
      0012F9 E0               [24] 1575 	movx	a,@dptr
      0012FA 45 F0            [12] 1576 	orl	a,b
      0012FC 70 3F            [24] 1577 	jnz	00120$
                                   1578 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:210: stall_detect_time = now;
      0012FE 90 02 C9         [24] 1579 	mov	dptr,#_stall_detect_time
      001301 EC               [12] 1580 	mov	a,r4
      001302 F0               [24] 1581 	movx	@dptr,a
      001303 ED               [12] 1582 	mov	a,r5
      001304 A3               [24] 1583 	inc	dptr
      001305 F0               [24] 1584 	movx	@dptr,a
      001306 EE               [12] 1585 	mov	a,r6
      001307 A3               [24] 1586 	inc	dptr
      001308 F0               [24] 1587 	movx	@dptr,a
      001309 EF               [12] 1588 	mov	a,r7
      00130A A3               [24] 1589 	inc	dptr
      00130B F0               [24] 1590 	movx	@dptr,a
                                   1591 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:211: LOG_LINE("[WARN] Fan stalled detected!");
      00130C 90 63 81         [24] 1592 	mov	dptr,#___str_15
      00130F 75 F0 80         [24] 1593 	mov	b,#0x80
      001312 C0 07            [24] 1594 	push	ar7
      001314 C0 06            [24] 1595 	push	ar6
      001316 C0 05            [24] 1596 	push	ar5
      001318 C0 04            [24] 1597 	push	ar4
      00131A 12 1E 6A         [24] 1598 	lcall	_serial_println_str
                                   1599 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:214: VoltageController_setVoltage(&voltageCtrl, VOUT_MIN);
      00131D 90 02 48         [24] 1600 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      001320 E4               [12] 1601 	clr	a
      001321 F0               [24] 1602 	movx	@dptr,a
      001322 A3               [24] 1603 	inc	dptr
      001323 F0               [24] 1604 	movx	@dptr,a
      001324 74 A0            [12] 1605 	mov	a,#0xa0
      001326 A3               [24] 1606 	inc	dptr
      001327 F0               [24] 1607 	movx	@dptr,a
      001328 74 40            [12] 1608 	mov	a,#0x40
      00132A A3               [24] 1609 	inc	dptr
      00132B F0               [24] 1610 	movx	@dptr,a
      00132C 90 00 FF         [24] 1611 	mov	dptr,#_voltageCtrl
      00132F 75 F0 00         [24] 1612 	mov	b,#0x00
      001332 12 43 61         [24] 1613 	lcall	_VoltageController_setVoltage
      001335 D0 04            [24] 1614 	pop	ar4
      001337 D0 05            [24] 1615 	pop	ar5
      001339 D0 06            [24] 1616 	pop	ar6
      00133B D0 07            [24] 1617 	pop	ar7
      00133D                       1618 00120$:
                                   1619 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:218: if (now - stall_detect_time >= STALL_RETRY_DELAY) {
      00133D 90 02 C9         [24] 1620 	mov	dptr,#_stall_detect_time
      001340 E0               [24] 1621 	movx	a,@dptr
      001341 F8               [12] 1622 	mov	r0,a
      001342 A3               [24] 1623 	inc	dptr
      001343 E0               [24] 1624 	movx	a,@dptr
      001344 F9               [12] 1625 	mov	r1,a
      001345 A3               [24] 1626 	inc	dptr
      001346 E0               [24] 1627 	movx	a,@dptr
      001347 FA               [12] 1628 	mov	r2,a
      001348 A3               [24] 1629 	inc	dptr
      001349 E0               [24] 1630 	movx	a,@dptr
      00134A FB               [12] 1631 	mov	r3,a
      00134B EC               [12] 1632 	mov	a,r4
      00134C C3               [12] 1633 	clr	c
      00134D 98               [12] 1634 	subb	a,r0
      00134E F8               [12] 1635 	mov	r0,a
      00134F ED               [12] 1636 	mov	a,r5
      001350 99               [12] 1637 	subb	a,r1
      001351 F9               [12] 1638 	mov	r1,a
      001352 EE               [12] 1639 	mov	a,r6
      001353 9A               [12] 1640 	subb	a,r2
      001354 FA               [12] 1641 	mov	r2,a
      001355 EF               [12] 1642 	mov	a,r7
      001356 9B               [12] 1643 	subb	a,r3
      001357 FB               [12] 1644 	mov	r3,a
      001358 C3               [12] 1645 	clr	c
      001359 E8               [12] 1646 	mov	a,r0
      00135A 94 B8            [12] 1647 	subb	a,#0xb8
      00135C E9               [12] 1648 	mov	a,r1
      00135D 94 0B            [12] 1649 	subb	a,#0x0b
      00135F EA               [12] 1650 	mov	a,r2
      001360 94 00            [12] 1651 	subb	a,#0x00
      001362 EB               [12] 1652 	mov	a,r3
      001363 94 00            [12] 1653 	subb	a,#0x00
      001365 50 03            [24] 1654 	jnc	00249$
      001367 02 14 27         [24] 1655 	ljmp	00130$
      00136A                       1656 00249$:
                                   1657 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:219: stall_retry_count++;
      00136A 90 02 CD         [24] 1658 	mov	dptr,#_stall_retry_count
      00136D E0               [24] 1659 	movx	a,@dptr
      00136E 24 01            [12] 1660 	add	a,#0x01
      001370 F0               [24] 1661 	movx	@dptr,a
                                   1662 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:221: if (stall_retry_count >= STALL_MAX_RETRIES) {
      001371 E0               [24] 1663 	movx	a,@dptr
      001372 FB               [12] 1664 	mov	r3,a
      001373 BB 02 00         [24] 1665 	cjne	r3,#0x02,00250$
      001376                       1666 00250$:
      001376 40 25            [24] 1667 	jc	00122$
                                   1668 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:223: LOG_LINE("[ERROR] Fan stall retry limit reached! Output locked.");
      001378 90 63 9E         [24] 1669 	mov	dptr,#___str_16
      00137B 75 F0 80         [24] 1670 	mov	b,#0x80
      00137E C0 07            [24] 1671 	push	ar7
      001380 C0 06            [24] 1672 	push	ar6
      001382 C0 05            [24] 1673 	push	ar5
      001384 C0 04            [24] 1674 	push	ar4
      001386 12 1E 6A         [24] 1675 	lcall	_serial_println_str
                                   1676 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:224: VoltageController_lockOutput(&voltageCtrl);
      001389 90 00 FF         [24] 1677 	mov	dptr,#_voltageCtrl
      00138C 75 F0 00         [24] 1678 	mov	b,#0x00
      00138F 12 46 A5         [24] 1679 	lcall	_VoltageController_lockOutput
      001392 D0 04            [24] 1680 	pop	ar4
      001394 D0 05            [24] 1681 	pop	ar5
      001396 D0 06            [24] 1682 	pop	ar6
      001398 D0 07            [24] 1683 	pop	ar7
      00139A 02 14 27         [24] 1684 	ljmp	00130$
      00139D                       1685 00122$:
                                   1686 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:228: serial_print_str("[INFO] Fan stall retry ");
      00139D 90 63 D4         [24] 1687 	mov	dptr,#___str_17
      0013A0 75 F0 80         [24] 1688 	mov	b,#0x80
      0013A3 C0 07            [24] 1689 	push	ar7
      0013A5 C0 06            [24] 1690 	push	ar6
      0013A7 C0 05            [24] 1691 	push	ar5
      0013A9 C0 04            [24] 1692 	push	ar4
      0013AB 12 19 E7         [24] 1693 	lcall	_serial_print_str
                                   1694 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:229: serial_print_int(stall_retry_count);
      0013AE 90 02 CD         [24] 1695 	mov	dptr,#_stall_retry_count
      0013B1 E0               [24] 1696 	movx	a,@dptr
      0013B2 FB               [12] 1697 	mov	r3,a
      0013B3 7A 00            [12] 1698 	mov	r2,#0x00
      0013B5 8B 82            [24] 1699 	mov	dpl,r3
      0013B7 8A 83            [24] 1700 	mov	dph,r2
      0013B9 12 1A 4A         [24] 1701 	lcall	_serial_print_int
                                   1702 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:230: serial_println_str("...");
      0013BC 90 63 EC         [24] 1703 	mov	dptr,#___str_18
      0013BF 75 F0 80         [24] 1704 	mov	b,#0x80
      0013C2 12 1E 6A         [24] 1705 	lcall	_serial_println_str
                                   1706 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:232: FanMonitor_resetStall(&fanMonitor);
      0013C5 90 01 1A         [24] 1707 	mov	dptr,#_fanMonitor
      0013C8 75 F0 00         [24] 1708 	mov	b,#0x00
      0013CB 12 0E 41         [24] 1709 	lcall	_FanMonitor_resetStall
      0013CE D0 04            [24] 1710 	pop	ar4
      0013D0 D0 05            [24] 1711 	pop	ar5
      0013D2 D0 06            [24] 1712 	pop	ar6
      0013D4 D0 07            [24] 1713 	pop	ar7
                                   1714 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:233: stall_detect_time = 0;
      0013D6 90 02 C9         [24] 1715 	mov	dptr,#_stall_detect_time
      0013D9 E4               [12] 1716 	clr	a
      0013DA F0               [24] 1717 	movx	@dptr,a
      0013DB A3               [24] 1718 	inc	dptr
      0013DC F0               [24] 1719 	movx	@dptr,a
      0013DD A3               [24] 1720 	inc	dptr
      0013DE F0               [24] 1721 	movx	@dptr,a
      0013DF A3               [24] 1722 	inc	dptr
      0013E0 F0               [24] 1723 	movx	@dptr,a
      0013E1 80 44            [24] 1724 	sjmp	00130$
      0013E3                       1725 00129$:
                                   1726 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:238: if (stall_detect_time != 0) {
      0013E3 90 02 C9         [24] 1727 	mov	dptr,#_stall_detect_time
      0013E6 E0               [24] 1728 	movx	a,@dptr
      0013E7 F5 F0            [12] 1729 	mov	b,a
      0013E9 A3               [24] 1730 	inc	dptr
      0013EA E0               [24] 1731 	movx	a,@dptr
      0013EB 42 F0            [12] 1732 	orl	b,a
      0013ED A3               [24] 1733 	inc	dptr
      0013EE E0               [24] 1734 	movx	a,@dptr
      0013EF 42 F0            [12] 1735 	orl	b,a
      0013F1 A3               [24] 1736 	inc	dptr
      0013F2 E0               [24] 1737 	movx	a,@dptr
      0013F3 45 F0            [12] 1738 	orl	a,b
      0013F5 60 30            [24] 1739 	jz	00130$
                                   1740 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:239: LOG_LINE("[OK] Fan recovered!");
      0013F7 90 63 F0         [24] 1741 	mov	dptr,#___str_19
      0013FA 75 F0 80         [24] 1742 	mov	b,#0x80
      0013FD C0 07            [24] 1743 	push	ar7
      0013FF C0 06            [24] 1744 	push	ar6
      001401 C0 05            [24] 1745 	push	ar5
      001403 C0 04            [24] 1746 	push	ar4
      001405 12 1E 6A         [24] 1747 	lcall	_serial_println_str
      001408 D0 04            [24] 1748 	pop	ar4
      00140A D0 05            [24] 1749 	pop	ar5
      00140C D0 06            [24] 1750 	pop	ar6
      00140E D0 07            [24] 1751 	pop	ar7
                                   1752 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:240: sysStatus.error_flags &= ~ERROR_FAN_STALLED;
      001410 90 01 A1         [24] 1753 	mov	dptr,#(_sysStatus + 0x0015)
      001413 E0               [24] 1754 	movx	a,@dptr
      001414 54 FD            [12] 1755 	anl	a,#0xfd
      001416 FB               [12] 1756 	mov	r3,a
      001417 F0               [24] 1757 	movx	@dptr,a
                                   1758 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:241: stall_detect_time = 0;
      001418 90 02 C9         [24] 1759 	mov	dptr,#_stall_detect_time
      00141B E4               [12] 1760 	clr	a
      00141C F0               [24] 1761 	movx	@dptr,a
      00141D A3               [24] 1762 	inc	dptr
      00141E F0               [24] 1763 	movx	@dptr,a
      00141F A3               [24] 1764 	inc	dptr
      001420 F0               [24] 1765 	movx	@dptr,a
      001421 A3               [24] 1766 	inc	dptr
      001422 F0               [24] 1767 	movx	@dptr,a
                                   1768 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:242: stall_retry_count = 0;
      001423 90 02 CD         [24] 1769 	mov	dptr,#_stall_retry_count
      001426 F0               [24] 1770 	movx	@dptr,a
      001427                       1771 00130$:
                                   1772 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:248: if (TempController_isOverheat(&tempCtrl)) {
      001427 90 01 0B         [24] 1773 	mov	dptr,#_tempCtrl
      00142A 75 F0 00         [24] 1774 	mov	b,#0x00
      00142D C0 07            [24] 1775 	push	ar7
      00142F C0 06            [24] 1776 	push	ar6
      001431 C0 05            [24] 1777 	push	ar5
      001433 C0 04            [24] 1778 	push	ar4
      001435 12 26 49         [24] 1779 	lcall	_TempController_isOverheat
      001438 E5 82            [12] 1780 	mov	a,dpl
      00143A D0 04            [24] 1781 	pop	ar4
      00143C D0 05            [24] 1782 	pop	ar5
      00143E D0 06            [24] 1783 	pop	ar6
      001440 D0 07            [24] 1784 	pop	ar7
      001442 60 46            [24] 1785 	jz	00136$
                                   1786 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:249: sysStatus.error_flags |= ERROR_OVERHEAT;
      001444 90 01 A1         [24] 1787 	mov	dptr,#(_sysStatus + 0x0015)
      001447 E0               [24] 1788 	movx	a,@dptr
      001448 44 04            [12] 1789 	orl	a,#0x04
      00144A F0               [24] 1790 	movx	@dptr,a
                                   1791 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:250: LOG_LINE("[WARN] Overheating detected!");
      00144B 90 64 04         [24] 1792 	mov	dptr,#___str_20
      00144E 75 F0 80         [24] 1793 	mov	b,#0x80
      001451 C0 07            [24] 1794 	push	ar7
      001453 C0 06            [24] 1795 	push	ar6
      001455 C0 05            [24] 1796 	push	ar5
      001457 C0 04            [24] 1797 	push	ar4
      001459 12 1E 6A         [24] 1798 	lcall	_serial_println_str
      00145C D0 04            [24] 1799 	pop	ar4
      00145E D0 05            [24] 1800 	pop	ar5
      001460 D0 06            [24] 1801 	pop	ar6
      001462 D0 07            [24] 1802 	pop	ar7
                                   1803 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:255: if (usb_control_mode) {
      001464 90 01 A3         [24] 1804 	mov	dptr,#_loop_usb_control_mode_65538_225
      001467 E0               [24] 1805 	movx	a,@dptr
      001468 60 49            [24] 1806 	jz	00137$
                                   1807 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:256: usbCtrl.override_active = false;
      00146A 90 01 86         [24] 1808 	mov	dptr,#(_usbCtrl + 0x005d)
      00146D E4               [12] 1809 	clr	a
      00146E F0               [24] 1810 	movx	@dptr,a
                                   1811 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:257: LOG_LINE("[INFO] Overheat: forced AUTO mode");
      00146F 90 64 21         [24] 1812 	mov	dptr,#___str_21
      001472 75 F0 80         [24] 1813 	mov	b,#0x80
      001475 C0 07            [24] 1814 	push	ar7
      001477 C0 06            [24] 1815 	push	ar6
      001479 C0 05            [24] 1816 	push	ar5
      00147B C0 04            [24] 1817 	push	ar4
      00147D 12 1E 6A         [24] 1818 	lcall	_serial_println_str
      001480 D0 04            [24] 1819 	pop	ar4
      001482 D0 05            [24] 1820 	pop	ar5
      001484 D0 06            [24] 1821 	pop	ar6
      001486 D0 07            [24] 1822 	pop	ar7
      001488 80 29            [24] 1823 	sjmp	00137$
      00148A                       1824 00136$:
                                   1825 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:262: if (sysStatus.error_flags & ERROR_OVERHEAT) {
      00148A 90 01 A1         [24] 1826 	mov	dptr,#(_sysStatus + 0x0015)
      00148D E0               [24] 1827 	movx	a,@dptr
      00148E FB               [12] 1828 	mov	r3,a
      00148F 30 E2 21         [24] 1829 	jnb	acc.2,00137$
                                   1830 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:263: sysStatus.error_flags &= ~ERROR_OVERHEAT;
      001492 53 03 FB         [24] 1831 	anl	ar3,#0xfb
      001495 90 01 A1         [24] 1832 	mov	dptr,#(_sysStatus + 0x0015)
      001498 EB               [12] 1833 	mov	a,r3
      001499 F0               [24] 1834 	movx	@dptr,a
                                   1835 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:264: LOG_LINE("[OK] Temperature recovered, external control allowed again");
      00149A 90 64 43         [24] 1836 	mov	dptr,#___str_22
      00149D 75 F0 80         [24] 1837 	mov	b,#0x80
      0014A0 C0 07            [24] 1838 	push	ar7
      0014A2 C0 06            [24] 1839 	push	ar6
      0014A4 C0 05            [24] 1840 	push	ar5
      0014A6 C0 04            [24] 1841 	push	ar4
      0014A8 12 1E 6A         [24] 1842 	lcall	_serial_println_str
      0014AB D0 04            [24] 1843 	pop	ar4
      0014AD D0 05            [24] 1844 	pop	ar5
      0014AF D0 06            [24] 1845 	pop	ar6
      0014B1 D0 07            [24] 1846 	pop	ar7
      0014B3                       1847 00137$:
                                   1848 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:270: sysStatus.temperature = TempController_getTemperature(&tempCtrl);
      0014B3 90 01 0B         [24] 1849 	mov	dptr,#_tempCtrl
      0014B6 75 F0 00         [24] 1850 	mov	b,#0x00
      0014B9 C0 07            [24] 1851 	push	ar7
      0014BB C0 06            [24] 1852 	push	ar6
      0014BD C0 05            [24] 1853 	push	ar5
      0014BF C0 04            [24] 1854 	push	ar4
      0014C1 12 26 AD         [24] 1855 	lcall	_TempController_getTemperature
      0014C4 A8 82            [24] 1856 	mov	r0,dpl
      0014C6 A9 83            [24] 1857 	mov	r1,dph
      0014C8 AA F0            [24] 1858 	mov	r2,b
      0014CA FB               [12] 1859 	mov	r3,a
      0014CB 90 01 8C         [24] 1860 	mov	dptr,#_sysStatus
      0014CE E8               [12] 1861 	mov	a,r0
      0014CF F0               [24] 1862 	movx	@dptr,a
      0014D0 E9               [12] 1863 	mov	a,r1
      0014D1 A3               [24] 1864 	inc	dptr
      0014D2 F0               [24] 1865 	movx	@dptr,a
      0014D3 EA               [12] 1866 	mov	a,r2
      0014D4 A3               [24] 1867 	inc	dptr
      0014D5 F0               [24] 1868 	movx	@dptr,a
      0014D6 EB               [12] 1869 	mov	a,r3
      0014D7 A3               [24] 1870 	inc	dptr
      0014D8 F0               [24] 1871 	movx	@dptr,a
                                   1872 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:271: sysStatus.voltage = VoltageController_getCurrentVoltage(&voltageCtrl);
      0014D9 90 00 FF         [24] 1873 	mov	dptr,#_voltageCtrl
      0014DC 75 F0 00         [24] 1874 	mov	b,#0x00
      0014DF 12 47 74         [24] 1875 	lcall	_VoltageController_getCurrentVoltage
      0014E2 A8 82            [24] 1876 	mov	r0,dpl
      0014E4 A9 83            [24] 1877 	mov	r1,dph
      0014E6 AA F0            [24] 1878 	mov	r2,b
      0014E8 FB               [12] 1879 	mov	r3,a
      0014E9 90 01 90         [24] 1880 	mov	dptr,#(_sysStatus + 0x0004)
      0014EC E8               [12] 1881 	mov	a,r0
      0014ED F0               [24] 1882 	movx	@dptr,a
      0014EE E9               [12] 1883 	mov	a,r1
      0014EF A3               [24] 1884 	inc	dptr
      0014F0 F0               [24] 1885 	movx	@dptr,a
      0014F1 EA               [12] 1886 	mov	a,r2
      0014F2 A3               [24] 1887 	inc	dptr
      0014F3 F0               [24] 1888 	movx	@dptr,a
      0014F4 EB               [12] 1889 	mov	a,r3
      0014F5 A3               [24] 1890 	inc	dptr
      0014F6 F0               [24] 1891 	movx	@dptr,a
                                   1892 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:272: sysStatus.target_voltage = VoltageController_getTargetVoltage(&voltageCtrl);
      0014F7 90 00 FF         [24] 1893 	mov	dptr,#_voltageCtrl
      0014FA 75 F0 00         [24] 1894 	mov	b,#0x00
      0014FD 12 47 33         [24] 1895 	lcall	_VoltageController_getTargetVoltage
      001500 A8 82            [24] 1896 	mov	r0,dpl
      001502 A9 83            [24] 1897 	mov	r1,dph
      001504 AA F0            [24] 1898 	mov	r2,b
      001506 FB               [12] 1899 	mov	r3,a
      001507 90 01 94         [24] 1900 	mov	dptr,#(_sysStatus + 0x0008)
      00150A E8               [12] 1901 	mov	a,r0
      00150B F0               [24] 1902 	movx	@dptr,a
      00150C E9               [12] 1903 	mov	a,r1
      00150D A3               [24] 1904 	inc	dptr
      00150E F0               [24] 1905 	movx	@dptr,a
      00150F EA               [12] 1906 	mov	a,r2
      001510 A3               [24] 1907 	inc	dptr
      001511 F0               [24] 1908 	movx	@dptr,a
      001512 EB               [12] 1909 	mov	a,r3
      001513 A3               [24] 1910 	inc	dptr
      001514 F0               [24] 1911 	movx	@dptr,a
                                   1912 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:273: sysStatus.rpm = FanMonitor_getRPM(&fanMonitor);
      001515 90 01 1A         [24] 1913 	mov	dptr,#_fanMonitor
      001518 75 F0 00         [24] 1914 	mov	b,#0x00
      00151B 12 0D D2         [24] 1915 	lcall	_FanMonitor_getRPM
      00151E A8 82            [24] 1916 	mov	r0,dpl
      001520 A9 83            [24] 1917 	mov	r1,dph
      001522 AA F0            [24] 1918 	mov	r2,b
      001524 FB               [12] 1919 	mov	r3,a
      001525 90 01 98         [24] 1920 	mov	dptr,#(_sysStatus + 0x000c)
      001528 E8               [12] 1921 	mov	a,r0
      001529 F0               [24] 1922 	movx	@dptr,a
      00152A E9               [12] 1923 	mov	a,r1
      00152B A3               [24] 1924 	inc	dptr
      00152C F0               [24] 1925 	movx	@dptr,a
      00152D EA               [12] 1926 	mov	a,r2
      00152E A3               [24] 1927 	inc	dptr
      00152F F0               [24] 1928 	movx	@dptr,a
      001530 EB               [12] 1929 	mov	a,r3
      001531 A3               [24] 1930 	inc	dptr
      001532 F0               [24] 1931 	movx	@dptr,a
                                   1932 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:274: sysStatus.target_rpm = TempController_getTargetRPM(&tempCtrl);
      001533 90 01 0B         [24] 1933 	mov	dptr,#_tempCtrl
      001536 75 F0 00         [24] 1934 	mov	b,#0x00
      001539 12 26 EE         [24] 1935 	lcall	_TempController_getTargetRPM
      00153C A8 82            [24] 1936 	mov	r0,dpl
      00153E A9 83            [24] 1937 	mov	r1,dph
      001540 AA F0            [24] 1938 	mov	r2,b
      001542 FB               [12] 1939 	mov	r3,a
      001543 90 01 9C         [24] 1940 	mov	dptr,#(_sysStatus + 0x0010)
      001546 E8               [12] 1941 	mov	a,r0
      001547 F0               [24] 1942 	movx	@dptr,a
      001548 E9               [12] 1943 	mov	a,r1
      001549 A3               [24] 1944 	inc	dptr
      00154A F0               [24] 1945 	movx	@dptr,a
      00154B EA               [12] 1946 	mov	a,r2
      00154C A3               [24] 1947 	inc	dptr
      00154D F0               [24] 1948 	movx	@dptr,a
      00154E EB               [12] 1949 	mov	a,r3
      00154F A3               [24] 1950 	inc	dptr
      001550 F0               [24] 1951 	movx	@dptr,a
                                   1952 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:275: sysStatus.pwm_duty = VoltageController_getPWMDuty(&voltageCtrl);
      001551 90 00 FF         [24] 1953 	mov	dptr,#_voltageCtrl
      001554 75 F0 00         [24] 1954 	mov	b,#0x00
      001557 12 47 B5         [24] 1955 	lcall	_VoltageController_getPWMDuty
      00155A AB 82            [24] 1956 	mov	r3,dpl
      00155C D0 04            [24] 1957 	pop	ar4
      00155E D0 05            [24] 1958 	pop	ar5
      001560 D0 06            [24] 1959 	pop	ar6
      001562 D0 07            [24] 1960 	pop	ar7
      001564 90 01 A0         [24] 1961 	mov	dptr,#(_sysStatus + 0x0014)
      001567 EB               [12] 1962 	mov	a,r3
      001568 F0               [24] 1963 	movx	@dptr,a
                                   1964 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:280: if (usbCtrl.status_requested) {
      001569 90 01 8B         [24] 1965 	mov	dptr,#(_usbCtrl + 0x0062)
      00156C E0               [24] 1966 	movx	a,@dptr
      00156D 60 2B            [24] 1967 	jz	00139$
                                   1968 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:281: USBController_sendStatus(&usbCtrl, &sysStatus);
      00156F 90 02 2F         [24] 1969 	mov	dptr,#_USBController_sendStatus_PARM_2
      001572 74 8C            [12] 1970 	mov	a,#_sysStatus
      001574 F0               [24] 1971 	movx	@dptr,a
      001575 74 01            [12] 1972 	mov	a,#(_sysStatus >> 8)
      001577 A3               [24] 1973 	inc	dptr
      001578 F0               [24] 1974 	movx	@dptr,a
      001579 E4               [12] 1975 	clr	a
      00157A A3               [24] 1976 	inc	dptr
      00157B F0               [24] 1977 	movx	@dptr,a
      00157C 90 01 29         [24] 1978 	mov	dptr,#_usbCtrl
      00157F 75 F0 00         [24] 1979 	mov	b,#0x00
      001582 C0 07            [24] 1980 	push	ar7
      001584 C0 06            [24] 1981 	push	ar6
      001586 C0 05            [24] 1982 	push	ar5
      001588 C0 04            [24] 1983 	push	ar4
      00158A 12 3E 07         [24] 1984 	lcall	_USBController_sendStatus
      00158D D0 04            [24] 1985 	pop	ar4
      00158F D0 05            [24] 1986 	pop	ar5
      001591 D0 06            [24] 1987 	pop	ar6
      001593 D0 07            [24] 1988 	pop	ar7
                                   1989 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:282: usbCtrl.status_requested = false;
      001595 90 01 8B         [24] 1990 	mov	dptr,#(_usbCtrl + 0x0062)
      001598 E4               [12] 1991 	clr	a
      001599 F0               [24] 1992 	movx	@dptr,a
      00159A                       1993 00139$:
                                   1994 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:285: if (now - last_status_send >= STATUS_SEND_INTERVAL) {
      00159A 90 02 C1         [24] 1995 	mov	dptr,#_last_status_send
      00159D E0               [24] 1996 	movx	a,@dptr
      00159E F8               [12] 1997 	mov	r0,a
      00159F A3               [24] 1998 	inc	dptr
      0015A0 E0               [24] 1999 	movx	a,@dptr
      0015A1 F9               [12] 2000 	mov	r1,a
      0015A2 A3               [24] 2001 	inc	dptr
      0015A3 E0               [24] 2002 	movx	a,@dptr
      0015A4 FA               [12] 2003 	mov	r2,a
      0015A5 A3               [24] 2004 	inc	dptr
      0015A6 E0               [24] 2005 	movx	a,@dptr
      0015A7 FB               [12] 2006 	mov	r3,a
      0015A8 EC               [12] 2007 	mov	a,r4
      0015A9 C3               [12] 2008 	clr	c
      0015AA 98               [12] 2009 	subb	a,r0
      0015AB F8               [12] 2010 	mov	r0,a
      0015AC ED               [12] 2011 	mov	a,r5
      0015AD 99               [12] 2012 	subb	a,r1
      0015AE F9               [12] 2013 	mov	r1,a
      0015AF EE               [12] 2014 	mov	a,r6
      0015B0 9A               [12] 2015 	subb	a,r2
      0015B1 FA               [12] 2016 	mov	r2,a
      0015B2 EF               [12] 2017 	mov	a,r7
      0015B3 9B               [12] 2018 	subb	a,r3
      0015B4 FB               [12] 2019 	mov	r3,a
      0015B5 C3               [12] 2020 	clr	c
      0015B6 E8               [12] 2021 	mov	a,r0
      0015B7 94 E8            [12] 2022 	subb	a,#0xe8
      0015B9 E9               [12] 2023 	mov	a,r1
      0015BA 94 03            [12] 2024 	subb	a,#0x03
      0015BC EA               [12] 2025 	mov	a,r2
      0015BD 94 00            [12] 2026 	subb	a,#0x00
      0015BF EB               [12] 2027 	mov	a,r3
      0015C0 94 00            [12] 2028 	subb	a,#0x00
      0015C2 50 03            [24] 2029 	jnc	00257$
      0015C4 02 16 D4         [24] 2030 	ljmp	00144$
      0015C7                       2031 00257$:
                                   2032 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:286: if (USBController_isConnected(&usbCtrl)) {
      0015C7 90 01 29         [24] 2033 	mov	dptr,#_usbCtrl
      0015CA 75 F0 00         [24] 2034 	mov	b,#0x00
      0015CD C0 07            [24] 2035 	push	ar7
      0015CF C0 06            [24] 2036 	push	ar6
      0015D1 C0 05            [24] 2037 	push	ar5
      0015D3 C0 04            [24] 2038 	push	ar4
      0015D5 12 40 20         [24] 2039 	lcall	_USBController_isConnected
      0015D8 E5 82            [12] 2040 	mov	a,dpl
      0015DA D0 04            [24] 2041 	pop	ar4
      0015DC D0 05            [24] 2042 	pop	ar5
      0015DE D0 06            [24] 2043 	pop	ar6
      0015E0 D0 07            [24] 2044 	pop	ar7
      0015E2 60 29            [24] 2045 	jz	00141$
                                   2046 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:287: USBController_sendStatus(&usbCtrl, &sysStatus);
      0015E4 90 02 2F         [24] 2047 	mov	dptr,#_USBController_sendStatus_PARM_2
      0015E7 74 8C            [12] 2048 	mov	a,#_sysStatus
      0015E9 F0               [24] 2049 	movx	@dptr,a
      0015EA 74 01            [12] 2050 	mov	a,#(_sysStatus >> 8)
      0015EC A3               [24] 2051 	inc	dptr
      0015ED F0               [24] 2052 	movx	@dptr,a
      0015EE E4               [12] 2053 	clr	a
      0015EF A3               [24] 2054 	inc	dptr
      0015F0 F0               [24] 2055 	movx	@dptr,a
      0015F1 90 01 29         [24] 2056 	mov	dptr,#_usbCtrl
      0015F4 75 F0 00         [24] 2057 	mov	b,#0x00
      0015F7 C0 07            [24] 2058 	push	ar7
      0015F9 C0 06            [24] 2059 	push	ar6
      0015FB C0 05            [24] 2060 	push	ar5
      0015FD C0 04            [24] 2061 	push	ar4
      0015FF 12 3E 07         [24] 2062 	lcall	_USBController_sendStatus
      001602 D0 04            [24] 2063 	pop	ar4
      001604 D0 05            [24] 2064 	pop	ar5
      001606 D0 06            [24] 2065 	pop	ar6
      001608 D0 07            [24] 2066 	pop	ar7
      00160A 02 16 C6         [24] 2067 	ljmp	00142$
      00160D                       2068 00141$:
                                   2069 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:291: serial_print_str("Temp:");
      00160D 90 64 7E         [24] 2070 	mov	dptr,#___str_23
      001610 75 F0 80         [24] 2071 	mov	b,#0x80
      001613 C0 07            [24] 2072 	push	ar7
      001615 C0 06            [24] 2073 	push	ar6
      001617 C0 05            [24] 2074 	push	ar5
      001619 C0 04            [24] 2075 	push	ar4
      00161B 12 19 E7         [24] 2076 	lcall	_serial_print_str
                                   2077 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:292: serial_print_float(sysStatus.temperature, 2);
      00161E 90 01 8C         [24] 2078 	mov	dptr,#_sysStatus
      001621 E0               [24] 2079 	movx	a,@dptr
      001622 F8               [12] 2080 	mov	r0,a
      001623 A3               [24] 2081 	inc	dptr
      001624 E0               [24] 2082 	movx	a,@dptr
      001625 F9               [12] 2083 	mov	r1,a
      001626 A3               [24] 2084 	inc	dptr
      001627 E0               [24] 2085 	movx	a,@dptr
      001628 FA               [12] 2086 	mov	r2,a
      001629 A3               [24] 2087 	inc	dptr
      00162A E0               [24] 2088 	movx	a,@dptr
      00162B FB               [12] 2089 	mov	r3,a
      00162C 90 01 B4         [24] 2090 	mov	dptr,#_serial_print_float_PARM_2
      00162F 74 02            [12] 2091 	mov	a,#0x02
      001631 F0               [24] 2092 	movx	@dptr,a
      001632 E4               [12] 2093 	clr	a
      001633 A3               [24] 2094 	inc	dptr
      001634 F0               [24] 2095 	movx	@dptr,a
      001635 88 82            [24] 2096 	mov	dpl,r0
      001637 89 83            [24] 2097 	mov	dph,r1
      001639 8A F0            [24] 2098 	mov	b,r2
      00163B EB               [12] 2099 	mov	a,r3
      00163C 12 1B 21         [24] 2100 	lcall	_serial_print_float
                                   2101 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:293: serial_print_str("C | Volt:");
      00163F 90 64 84         [24] 2102 	mov	dptr,#___str_24
      001642 75 F0 80         [24] 2103 	mov	b,#0x80
      001645 12 19 E7         [24] 2104 	lcall	_serial_print_str
                                   2105 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:294: serial_print_float(sysStatus.voltage, 2);
      001648 90 01 90         [24] 2106 	mov	dptr,#(_sysStatus + 0x0004)
      00164B E0               [24] 2107 	movx	a,@dptr
      00164C F8               [12] 2108 	mov	r0,a
      00164D A3               [24] 2109 	inc	dptr
      00164E E0               [24] 2110 	movx	a,@dptr
      00164F F9               [12] 2111 	mov	r1,a
      001650 A3               [24] 2112 	inc	dptr
      001651 E0               [24] 2113 	movx	a,@dptr
      001652 FA               [12] 2114 	mov	r2,a
      001653 A3               [24] 2115 	inc	dptr
      001654 E0               [24] 2116 	movx	a,@dptr
      001655 FB               [12] 2117 	mov	r3,a
      001656 90 01 B4         [24] 2118 	mov	dptr,#_serial_print_float_PARM_2
      001659 74 02            [12] 2119 	mov	a,#0x02
      00165B F0               [24] 2120 	movx	@dptr,a
      00165C E4               [12] 2121 	clr	a
      00165D A3               [24] 2122 	inc	dptr
      00165E F0               [24] 2123 	movx	@dptr,a
      00165F 88 82            [24] 2124 	mov	dpl,r0
      001661 89 83            [24] 2125 	mov	dph,r1
      001663 8A F0            [24] 2126 	mov	b,r2
      001665 EB               [12] 2127 	mov	a,r3
      001666 12 1B 21         [24] 2128 	lcall	_serial_print_float
                                   2129 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:295: serial_print_str("V | RPM:");
      001669 90 64 8E         [24] 2130 	mov	dptr,#___str_25
      00166C 75 F0 80         [24] 2131 	mov	b,#0x80
      00166F 12 19 E7         [24] 2132 	lcall	_serial_print_str
                                   2133 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:296: serial_print_uint(sysStatus.rpm);
      001672 90 01 98         [24] 2134 	mov	dptr,#(_sysStatus + 0x000c)
      001675 E0               [24] 2135 	movx	a,@dptr
      001676 F8               [12] 2136 	mov	r0,a
      001677 A3               [24] 2137 	inc	dptr
      001678 E0               [24] 2138 	movx	a,@dptr
      001679 F9               [12] 2139 	mov	r1,a
      00167A A3               [24] 2140 	inc	dptr
      00167B E0               [24] 2141 	movx	a,@dptr
      00167C FA               [12] 2142 	mov	r2,a
      00167D A3               [24] 2143 	inc	dptr
      00167E E0               [24] 2144 	movx	a,@dptr
      00167F 88 82            [24] 2145 	mov	dpl,r0
      001681 89 83            [24] 2146 	mov	dph,r1
      001683 8A F0            [24] 2147 	mov	b,r2
      001685 12 1A AC         [24] 2148 	lcall	_serial_print_uint
                                   2149 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:297: serial_print_str(" | Mode:");
      001688 90 64 97         [24] 2150 	mov	dptr,#___str_26
      00168B 75 F0 80         [24] 2151 	mov	b,#0x80
      00168E 12 19 E7         [24] 2152 	lcall	_serial_print_str
      001691 D0 04            [24] 2153 	pop	ar4
      001693 D0 05            [24] 2154 	pop	ar5
      001695 D0 06            [24] 2155 	pop	ar6
      001697 D0 07            [24] 2156 	pop	ar7
                                   2157 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:298: serial_println_str(sysStatus.auto_mode ? "AUTO" : "USB");
      001699 90 01 A2         [24] 2158 	mov	dptr,#(_sysStatus + 0x0016)
      00169C E0               [24] 2159 	movx	a,@dptr
      00169D 60 06            [24] 2160 	jz	00150$
      00169F 7A A0            [12] 2161 	mov	r2,#___str_27
      0016A1 7B 64            [12] 2162 	mov	r3,#(___str_27 >> 8)
      0016A3 80 04            [24] 2163 	sjmp	00151$
      0016A5                       2164 00150$:
      0016A5 7A A5            [12] 2165 	mov	r2,#___str_28
      0016A7 7B 64            [12] 2166 	mov	r3,#(___str_28 >> 8)
      0016A9                       2167 00151$:
      0016A9 8B 01            [24] 2168 	mov	ar1,r3
      0016AB 7B 80            [12] 2169 	mov	r3,#0x80
      0016AD 8A 82            [24] 2170 	mov	dpl,r2
      0016AF 89 83            [24] 2171 	mov	dph,r1
      0016B1 8B F0            [24] 2172 	mov	b,r3
      0016B3 C0 07            [24] 2173 	push	ar7
      0016B5 C0 06            [24] 2174 	push	ar6
      0016B7 C0 05            [24] 2175 	push	ar5
      0016B9 C0 04            [24] 2176 	push	ar4
      0016BB 12 1E 6A         [24] 2177 	lcall	_serial_println_str
      0016BE D0 04            [24] 2178 	pop	ar4
      0016C0 D0 05            [24] 2179 	pop	ar5
      0016C2 D0 06            [24] 2180 	pop	ar6
      0016C4 D0 07            [24] 2181 	pop	ar7
      0016C6                       2182 00142$:
                                   2183 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:302: last_status_send = now;
      0016C6 90 02 C1         [24] 2184 	mov	dptr,#_last_status_send
      0016C9 EC               [12] 2185 	mov	a,r4
      0016CA F0               [24] 2186 	movx	@dptr,a
      0016CB ED               [12] 2187 	mov	a,r5
      0016CC A3               [24] 2188 	inc	dptr
      0016CD F0               [24] 2189 	movx	@dptr,a
      0016CE EE               [12] 2190 	mov	a,r6
      0016CF A3               [24] 2191 	inc	dptr
      0016D0 F0               [24] 2192 	movx	@dptr,a
      0016D1 EF               [12] 2193 	mov	a,r7
      0016D2 A3               [24] 2194 	inc	dptr
      0016D3 F0               [24] 2195 	movx	@dptr,a
      0016D4                       2196 00144$:
                                   2197 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:307: delay(50);
      0016D4 90 00 32         [24] 2198 	mov	dptr,#(0x32&0x00ff)
      0016D7 E4               [12] 2199 	clr	a
      0016D8 F5 F0            [12] 2200 	mov	b,a
                                   2201 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\main.c:308: }
      0016DA 02 4F BF         [24] 2202 	ljmp	_delay
                                   2203 	.area CSEG    (CODE)
                                   2204 	.area CONST   (CODE)
                                   2205 	.area CONST   (CODE)
      0061C8                       2206 ___str_0:
      0061C8 3D 3D 3D 3D 3D 3D 3D  2207 	.ascii "================================="
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D 3D 3D
             3D 3D 3D 3D 3D
      0061E9 00                    2208 	.db 0x00
                                   2209 	.area CSEG    (CODE)
                                   2210 	.area CONST   (CODE)
      0061EA                       2211 ___str_1:
      0061EA 43 48 35 35 32 47 20  2212 	.ascii "CH552G Fan Control System v1.0"
             46 61 6E 20 43 6F 6E
             74 72 6F 6C 20 53 79
             73 74 65 6D 20 76 31
             2E 30
      006208 00                    2213 	.db 0x00
                                   2214 	.area CSEG    (CODE)
                                   2215 	.area CONST   (CODE)
      006209                       2216 ___str_2:
      006209 5B 49 4E 49 54 5D 20  2217 	.ascii "[INIT] Voltage controller..."
             56 6F 6C 74 61 67 65
             20 63 6F 6E 74 72 6F
             6C 6C 65 72 2E 2E 2E
      006225 00                    2218 	.db 0x00
                                   2219 	.area CSEG    (CODE)
                                   2220 	.area CONST   (CODE)
      006226                       2221 ___str_3:
      006226 5B 49 4E 49 54 5D 20  2222 	.ascii "[INIT] Temperature sensor..."
             54 65 6D 70 65 72 61
             74 75 72 65 20 73 65
             6E 73 6F 72 2E 2E 2E
      006242 00                    2223 	.db 0x00
                                   2224 	.area CSEG    (CODE)
                                   2225 	.area CONST   (CODE)
      006243                       2226 ___str_4:
      006243 5B 4F 4B 5D 20 54 65  2227 	.ascii "[OK] Temp sensor ready: "
             6D 70 20 73 65 6E 73
             6F 72 20 72 65 61 64
             79 3A 20
      00625B 00                    2228 	.db 0x00
                                   2229 	.area CSEG    (CODE)
                                   2230 	.area CONST   (CODE)
      00625C                       2231 ___str_5:
      00625C 20 43                 2232 	.ascii " C"
      00625E 00                    2233 	.db 0x00
                                   2234 	.area CSEG    (CODE)
                                   2235 	.area CONST   (CODE)
      00625F                       2236 ___str_6:
      00625F 5B 57 41 52 4E 5D 20  2237 	.ascii "[WARN] Temp sensor not ready!"
             54 65 6D 70 20 73 65
             6E 73 6F 72 20 6E 6F
             74 20 72 65 61 64 79
             21
      00627C 00                    2238 	.db 0x00
                                   2239 	.area CSEG    (CODE)
                                   2240 	.area CONST   (CODE)
      00627D                       2241 ___str_7:
      00627D 5B 49 4E 49 54 5D 20  2242 	.ascii "[INIT] Fan monitor..."
             46 61 6E 20 6D 6F 6E
             69 74 6F 72 2E 2E 2E
      006292 00                    2243 	.db 0x00
                                   2244 	.area CSEG    (CODE)
                                   2245 	.area CONST   (CODE)
      006293                       2246 ___str_8:
      006293 5B 49 4E 46 4F 5D 20  2247 	.ascii "[INFO] Initial voltage: "
             49 6E 69 74 69 61 6C
             20 76 6F 6C 74 61 67
             65 3A 20
      0062AB 00                    2248 	.db 0x00
                                   2249 	.area CSEG    (CODE)
                                   2250 	.area CONST   (CODE)
      0062AC                       2251 ___str_9:
      0062AC 20 56                 2252 	.ascii " V"
      0062AE 00                    2253 	.db 0x00
                                   2254 	.area CSEG    (CODE)
                                   2255 	.area CONST   (CODE)
      0062AF                       2256 ___str_10:
      0062AF 5B 52 45 41 44 59 5D  2257 	.ascii "[READY] System started!"
             20 53 79 73 74 65 6D
             20 73 74 61 72 74 65
             64 21
      0062C6 00                    2258 	.db 0x00
                                   2259 	.area CSEG    (CODE)
                                   2260 	.area CONST   (CODE)
      0062C7                       2261 ___str_11:
      0062C7 5B 57 41 52 4E 5D 20  2262 	.ascii "[WARN] USB disconnected! Switching to AUTO mode"
             55 53 42 20 64 69 73
             63 6F 6E 6E 65 63 74
             65 64 21 20 53 77 69
             74 63 68 69 6E 67 20
             74 6F 20 41 55 54 4F
             20 6D 6F 64 65
      0062F6 00                    2263 	.db 0x00
                                   2264 	.area CSEG    (CODE)
                                   2265 	.area CONST   (CODE)
      0062F7                       2266 ___str_12:
      0062F7 5B 49 4E 46 4F 5D 20  2267 	.ascii "[INFO] Reset command received, unlocking output"
             52 65 73 65 74 20 63
             6F 6D 6D 61 6E 64 20
             72 65 63 65 69 76 65
             64 2C 20 75 6E 6C 6F
             63 6B 69 6E 67 20 6F
             75 74 70 75 74
      006326 00                    2268 	.db 0x00
                                   2269 	.area CSEG    (CODE)
                                   2270 	.area CONST   (CODE)
      006327                       2271 ___str_13:
      006327 5B 45 52 52 4F 52 5D  2272 	.ascii "[ERROR] Voltage abnormal! Output locked!"
             20 56 6F 6C 74 61 67
             65 20 61 62 6E 6F 72
             6D 61 6C 21 20 4F 75
             74 70 75 74 20 6C 6F
             63 6B 65 64 21
      00634F 00                    2273 	.db 0x00
                                   2274 	.area CSEG    (CODE)
                                   2275 	.area CONST   (CODE)
      006350                       2276 ___str_14:
      006350 5B 45 52 52 4F 52 5D  2277 	.ascii "[ERROR] Please power cycle or send reset command"
             20 50 6C 65 61 73 65
             20 70 6F 77 65 72 20
             63 79 63 6C 65 20 6F
             72 20 73 65 6E 64 20
             72 65 73 65 74 20 63
             6F 6D 6D 61 6E 64
      006380 00                    2278 	.db 0x00
                                   2279 	.area CSEG    (CODE)
                                   2280 	.area CONST   (CODE)
      006381                       2281 ___str_15:
      006381 5B 57 41 52 4E 5D 20  2282 	.ascii "[WARN] Fan stalled detected!"
             46 61 6E 20 73 74 61
             6C 6C 65 64 20 64 65
             74 65 63 74 65 64 21
      00639D 00                    2283 	.db 0x00
                                   2284 	.area CSEG    (CODE)
                                   2285 	.area CONST   (CODE)
      00639E                       2286 ___str_16:
      00639E 5B 45 52 52 4F 52 5D  2287 	.ascii "[ERROR] Fan stall retry limit reached! Output locked."
             20 46 61 6E 20 73 74
             61 6C 6C 20 72 65 74
             72 79 20 6C 69 6D 69
             74 20 72 65 61 63 68
             65 64 21 20 4F 75 74
             70 75 74 20 6C 6F 63
             6B 65 64 2E
      0063D3 00                    2288 	.db 0x00
                                   2289 	.area CSEG    (CODE)
                                   2290 	.area CONST   (CODE)
      0063D4                       2291 ___str_17:
      0063D4 5B 49 4E 46 4F 5D 20  2292 	.ascii "[INFO] Fan stall retry "
             46 61 6E 20 73 74 61
             6C 6C 20 72 65 74 72
             79 20
      0063EB 00                    2293 	.db 0x00
                                   2294 	.area CSEG    (CODE)
                                   2295 	.area CONST   (CODE)
      0063EC                       2296 ___str_18:
      0063EC 2E 2E 2E              2297 	.ascii "..."
      0063EF 00                    2298 	.db 0x00
                                   2299 	.area CSEG    (CODE)
                                   2300 	.area CONST   (CODE)
      0063F0                       2301 ___str_19:
      0063F0 5B 4F 4B 5D 20 46 61  2302 	.ascii "[OK] Fan recovered!"
             6E 20 72 65 63 6F 76
             65 72 65 64 21
      006403 00                    2303 	.db 0x00
                                   2304 	.area CSEG    (CODE)
                                   2305 	.area CONST   (CODE)
      006404                       2306 ___str_20:
      006404 5B 57 41 52 4E 5D 20  2307 	.ascii "[WARN] Overheating detected!"
             4F 76 65 72 68 65 61
             74 69 6E 67 20 64 65
             74 65 63 74 65 64 21
      006420 00                    2308 	.db 0x00
                                   2309 	.area CSEG    (CODE)
                                   2310 	.area CONST   (CODE)
      006421                       2311 ___str_21:
      006421 5B 49 4E 46 4F 5D 20  2312 	.ascii "[INFO] Overheat: forced AUTO mode"
             4F 76 65 72 68 65 61
             74 3A 20 66 6F 72 63
             65 64 20 41 55 54 4F
             20 6D 6F 64 65
      006442 00                    2313 	.db 0x00
                                   2314 	.area CSEG    (CODE)
                                   2315 	.area CONST   (CODE)
      006443                       2316 ___str_22:
      006443 5B 4F 4B 5D 20 54 65  2317 	.ascii "[OK] Temperature recovered, external control allowed again"
             6D 70 65 72 61 74 75
             72 65 20 72 65 63 6F
             76 65 72 65 64 2C 20
             65 78 74 65 72 6E 61
             6C 20 63 6F 6E 74 72
             6F 6C 20 61 6C 6C 6F
             77 65 64 20 61 67 61
             69 6E
      00647D 00                    2318 	.db 0x00
                                   2319 	.area CSEG    (CODE)
                                   2320 	.area CONST   (CODE)
      00647E                       2321 ___str_23:
      00647E 54 65 6D 70 3A        2322 	.ascii "Temp:"
      006483 00                    2323 	.db 0x00
                                   2324 	.area CSEG    (CODE)
                                   2325 	.area CONST   (CODE)
      006484                       2326 ___str_24:
      006484 43 20 7C 20 56 6F 6C  2327 	.ascii "C | Volt:"
             74 3A
      00648D 00                    2328 	.db 0x00
                                   2329 	.area CSEG    (CODE)
                                   2330 	.area CONST   (CODE)
      00648E                       2331 ___str_25:
      00648E 56 20 7C 20 52 50 4D  2332 	.ascii "V | RPM:"
             3A
      006496 00                    2333 	.db 0x00
                                   2334 	.area CSEG    (CODE)
                                   2335 	.area CONST   (CODE)
      006497                       2336 ___str_26:
      006497 20 7C 20 4D 6F 64 65  2337 	.ascii " | Mode:"
             3A
      00649F 00                    2338 	.db 0x00
                                   2339 	.area CSEG    (CODE)
                                   2340 	.area CONST   (CODE)
      0064A0                       2341 ___str_27:
      0064A0 41 55 54 4F           2342 	.ascii "AUTO"
      0064A4 00                    2343 	.db 0x00
                                   2344 	.area CSEG    (CODE)
                                   2345 	.area CONST   (CODE)
      0064A5                       2346 ___str_28:
      0064A5 55 53 42              2347 	.ascii "USB"
      0064A8 00                    2348 	.db 0x00
                                   2349 	.area CSEG    (CODE)
                                   2350 	.area XINIT   (CODE)
      0067CE                       2351 __xinit__last_temp_update:
      0067CE 00 00 00 00           2352 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0067D2                       2353 __xinit__last_status_send:
      0067D2 00 00 00 00           2354 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0067D6                       2355 __xinit__last_voltage_check:
      0067D6 00 00 00 00           2356 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0067DA                       2357 __xinit__stall_detect_time:
      0067DA 00 00 00 00           2358 	.byte #0x00, #0x00, #0x00, #0x00	; 0
      0067DE                       2359 __xinit__stall_retry_count:
      0067DE 00                    2360 	.db #0x00	; 0
      0067DF                       2361 __xinit__usb_was_connected:
      0067DF 00                    2362 	.db #0x00	;  0
                                   2363 	.area CABS    (ABS,CODE)
