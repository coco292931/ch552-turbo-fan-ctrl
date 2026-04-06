                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module temp_sensor
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _DS18B20_setAlarmTemperature
                                     12 	.globl _DS18B20_setResolution
                                     13 	.globl _DS18B20_readTemperatureFast
                                     14 	.globl _DS18B20_begin
                                     15 	.globl _VoltageController_setVoltage
                                     16 	.globl _delay
                                     17 	.globl _UIF_BUS_RST
                                     18 	.globl _UIF_DETECT
                                     19 	.globl _UIF_TRANSFER
                                     20 	.globl _UIF_SUSPEND
                                     21 	.globl _UIF_HST_SOF
                                     22 	.globl _UIF_FIFO_OV
                                     23 	.globl _U_SIE_FREE
                                     24 	.globl _U_TOG_OK
                                     25 	.globl _U_IS_NAK
                                     26 	.globl _S0_R_FIFO0
                                     27 	.globl _S0_R_FIFO1
                                     28 	.globl _S0_T_FIFO
                                     29 	.globl _S0_FREE
                                     30 	.globl _S0_IF_BYTE
                                     31 	.globl _S0_IF_FIRST
                                     32 	.globl _S0_IF_OV
                                     33 	.globl _S0_FST_ACT
                                     34 	.globl _CP_RL2
                                     35 	.globl _C_T2
                                     36 	.globl _TR2
                                     37 	.globl _EXEN2
                                     38 	.globl _TCLK
                                     39 	.globl _RCLK
                                     40 	.globl _EXF2
                                     41 	.globl _CAP1F
                                     42 	.globl _TF2
                                     43 	.globl _RI
                                     44 	.globl _TI
                                     45 	.globl _RB8
                                     46 	.globl _TB8
                                     47 	.globl _REN
                                     48 	.globl _SM2
                                     49 	.globl _SM1
                                     50 	.globl _SM0
                                     51 	.globl _IT0
                                     52 	.globl _IE0
                                     53 	.globl _IT1
                                     54 	.globl _IE1
                                     55 	.globl _TR0
                                     56 	.globl _TF0
                                     57 	.globl _TR1
                                     58 	.globl _TF1
                                     59 	.globl _P4_OUT_0
                                     60 	.globl _P4_OUT_1
                                     61 	.globl _P4_OUT_2
                                     62 	.globl _P4_OUT_3
                                     63 	.globl _P4_OUT_4
                                     64 	.globl _P4_OUT_5
                                     65 	.globl _P4_OUT_6
                                     66 	.globl _P4_OUT_7
                                     67 	.globl _RXD1_
                                     68 	.globl _LED2
                                     69 	.globl _CAP3_
                                     70 	.globl _PWM3_
                                     71 	.globl _PWM1_
                                     72 	.globl _TXD1_
                                     73 	.globl _TNOW_
                                     74 	.globl _LED3
                                     75 	.globl _PWM2_
                                     76 	.globl _SCS_
                                     77 	.globl _SCK_
                                     78 	.globl _P3_0
                                     79 	.globl _P3_1
                                     80 	.globl _P3_2
                                     81 	.globl _P3_3
                                     82 	.globl _P3_4
                                     83 	.globl _P3_5
                                     84 	.globl _P3_6
                                     85 	.globl _P3_7
                                     86 	.globl _RXD
                                     87 	.globl _TXD
                                     88 	.globl _INT0
                                     89 	.globl _LED0
                                     90 	.globl _INT1
                                     91 	.globl _LED1
                                     92 	.globl _T0
                                     93 	.globl _XCS0
                                     94 	.globl _LEDC
                                     95 	.globl _T1
                                     96 	.globl _DA6
                                     97 	.globl _WR
                                     98 	.globl _RD
                                     99 	.globl _P2_0
                                    100 	.globl _P2_1
                                    101 	.globl _P2_2
                                    102 	.globl _P2_3
                                    103 	.globl _P2_4
                                    104 	.globl _P2_5
                                    105 	.globl _P2_6
                                    106 	.globl _P2_7
                                    107 	.globl _MOSI1
                                    108 	.globl _MISO1
                                    109 	.globl _SCK1
                                    110 	.globl _PWM1
                                    111 	.globl _CAP2_
                                    112 	.globl _T2EX_
                                    113 	.globl _PWM2
                                    114 	.globl _TNOW
                                    115 	.globl _RXD1
                                    116 	.globl _DA7
                                    117 	.globl _TXD1
                                    118 	.globl _P1_0
                                    119 	.globl _P1_1
                                    120 	.globl _P1_2
                                    121 	.globl _P1_3
                                    122 	.globl _P1_4
                                    123 	.globl _P1_5
                                    124 	.globl _P1_6
                                    125 	.globl _P1_7
                                    126 	.globl _CAP1
                                    127 	.globl _T2
                                    128 	.globl _CAP2
                                    129 	.globl _T2EX
                                    130 	.globl _CAP3
                                    131 	.globl _PWM3
                                    132 	.globl _SCS
                                    133 	.globl _MOSI
                                    134 	.globl _MISO
                                    135 	.globl _SCK
                                    136 	.globl _AIN0
                                    137 	.globl _AIN1
                                    138 	.globl _AIN2
                                    139 	.globl _AIN3
                                    140 	.globl _AIN4
                                    141 	.globl _AIN5
                                    142 	.globl _AIN6
                                    143 	.globl _AIN7
                                    144 	.globl _P0_0
                                    145 	.globl _P0_1
                                    146 	.globl _P0_2
                                    147 	.globl _P0_3
                                    148 	.globl _P0_4
                                    149 	.globl _P0_5
                                    150 	.globl _P0_6
                                    151 	.globl _P0_7
                                    152 	.globl _UDTR
                                    153 	.globl _URTS
                                    154 	.globl _RXD_
                                    155 	.globl _TXD_
                                    156 	.globl _UCTS
                                    157 	.globl _UDSR
                                    158 	.globl _URI
                                    159 	.globl _UDCD
                                    160 	.globl _IE_SPI0
                                    161 	.globl _IE_TMR3
                                    162 	.globl _IE_USB
                                    163 	.globl _IE_ADC
                                    164 	.globl _IE_UART1
                                    165 	.globl _IE_PWM1
                                    166 	.globl _IE_GPIO
                                    167 	.globl _IE_WDOG
                                    168 	.globl _PX0
                                    169 	.globl _PT0
                                    170 	.globl _PX1
                                    171 	.globl _PT1
                                    172 	.globl _PS
                                    173 	.globl _PT2
                                    174 	.globl _PL_FLAG
                                    175 	.globl _PH_FLAG
                                    176 	.globl _EX0
                                    177 	.globl _ET0
                                    178 	.globl _EX1
                                    179 	.globl _ET1
                                    180 	.globl _ES
                                    181 	.globl _ET2
                                    182 	.globl _E_DIS
                                    183 	.globl _EA
                                    184 	.globl _P
                                    185 	.globl _F1
                                    186 	.globl _OV
                                    187 	.globl _RS0
                                    188 	.globl _RS1
                                    189 	.globl _F0
                                    190 	.globl _AC
                                    191 	.globl _CY
                                    192 	.globl _USB_DMA_AH
                                    193 	.globl _USB_DMA_AL
                                    194 	.globl _USB_DMA
                                    195 	.globl _UHUB1_CTRL
                                    196 	.globl _UDEV_CTRL
                                    197 	.globl _USB_DEV_AD
                                    198 	.globl _USB_CTRL
                                    199 	.globl _USB_INT_EN
                                    200 	.globl _UEP4_T_LEN
                                    201 	.globl _UEP4_CTRL
                                    202 	.globl _UEP0_T_LEN
                                    203 	.globl _UEP0_CTRL
                                    204 	.globl _USB_HUB_ST
                                    205 	.globl _USB_MIS_ST
                                    206 	.globl _USB_INT_ST
                                    207 	.globl _USB_INT_FG
                                    208 	.globl _UEP3_T_LEN
                                    209 	.globl _UEP3_CTRL
                                    210 	.globl _UEP2_T_LEN
                                    211 	.globl _UEP2_CTRL
                                    212 	.globl _UEP1_T_LEN
                                    213 	.globl _UEP1_CTRL
                                    214 	.globl _USB_RX_LEN
                                    215 	.globl _ADC_EX_SW
                                    216 	.globl _ADC_SETUP
                                    217 	.globl _ADC_FIFO_H
                                    218 	.globl _ADC_FIFO_L
                                    219 	.globl _ADC_FIFO
                                    220 	.globl _ADC_CHANN
                                    221 	.globl _ADC_CTRL
                                    222 	.globl _ADC_STAT
                                    223 	.globl _ADC_CK_SE
                                    224 	.globl _ADC_DMA_CN
                                    225 	.globl _ADC_DMA_AH
                                    226 	.globl _ADC_DMA_AL
                                    227 	.globl _ADC_DMA
                                    228 	.globl _SER1_ADDR
                                    229 	.globl _SER1_MSR
                                    230 	.globl _SER1_LSR
                                    231 	.globl _SER1_MCR
                                    232 	.globl _SER1_LCR
                                    233 	.globl _SER1_IIR
                                    234 	.globl _SER1_IER
                                    235 	.globl _SER1_FIFO
                                    236 	.globl _SPI1_CK_SE
                                    237 	.globl _SPI1_CTRL
                                    238 	.globl _SPI1_DATA
                                    239 	.globl _SPI1_STAT
                                    240 	.globl _SPI0_SETUP
                                    241 	.globl _SPI0_CK_SE
                                    242 	.globl _SPI0_CTRL
                                    243 	.globl _SPI0_DATA
                                    244 	.globl _SPI0_STAT
                                    245 	.globl _PWM_CYCLE
                                    246 	.globl _PWM_CK_SE
                                    247 	.globl _PWM_CTRL
                                    248 	.globl _PWM_DATA
                                    249 	.globl _PWM_DATA2
                                    250 	.globl _T3_FIFO_H
                                    251 	.globl _T3_FIFO_L
                                    252 	.globl _T3_FIFO
                                    253 	.globl _T3_DMA_AH
                                    254 	.globl _T3_DMA_AL
                                    255 	.globl _T3_DMA
                                    256 	.globl _T3_DMA_CN
                                    257 	.globl _T3_CTRL
                                    258 	.globl _T3_STAT
                                    259 	.globl _T3_END_H
                                    260 	.globl _T3_END_L
                                    261 	.globl _T3_END
                                    262 	.globl _T3_COUNT_H
                                    263 	.globl _T3_COUNT_L
                                    264 	.globl _T3_COUNT
                                    265 	.globl _T3_SETUP
                                    266 	.globl _TH2
                                    267 	.globl _TL2
                                    268 	.globl _T2COUNT
                                    269 	.globl _RCAP2H
                                    270 	.globl _RCAP2L
                                    271 	.globl _RCAP2
                                    272 	.globl _T2MOD
                                    273 	.globl _T2CON
                                    274 	.globl _SBUF
                                    275 	.globl _SCON
                                    276 	.globl _TH1
                                    277 	.globl _TH0
                                    278 	.globl _TL1
                                    279 	.globl _TL0
                                    280 	.globl _TMOD
                                    281 	.globl _TCON
                                    282 	.globl _XBUS_SPEED
                                    283 	.globl _XBUS_AUX
                                    284 	.globl _PIN_FUNC
                                    285 	.globl _PORT_CFG
                                    286 	.globl _P5_IN
                                    287 	.globl _P4_PU
                                    288 	.globl _P4_DIR
                                    289 	.globl _P4_IN
                                    290 	.globl _P4_OUT
                                    291 	.globl _P3_PU
                                    292 	.globl _P3_DIR
                                    293 	.globl _P3
                                    294 	.globl _P2_PU
                                    295 	.globl _P2_DIR
                                    296 	.globl _P2
                                    297 	.globl _P1_PU
                                    298 	.globl _P1_DIR
                                    299 	.globl _P1_IE
                                    300 	.globl _P1
                                    301 	.globl _P0_PU
                                    302 	.globl _P0_DIR
                                    303 	.globl _P0
                                    304 	.globl _ROM_CTRL
                                    305 	.globl _ROM_DATA_H
                                    306 	.globl _ROM_DATA_L
                                    307 	.globl _ROM_DATA
                                    308 	.globl _ROM_ADDR_H
                                    309 	.globl _ROM_ADDR_L
                                    310 	.globl _ROM_ADDR
                                    311 	.globl _GPIO_IE
                                    312 	.globl _IP_EX
                                    313 	.globl _IE_EX
                                    314 	.globl _IP
                                    315 	.globl _IE
                                    316 	.globl _WDOG_COUNT
                                    317 	.globl _RESET_KEEP
                                    318 	.globl _WAKE_CTRL
                                    319 	.globl _SLEEP_CTRL
                                    320 	.globl _CLOCK_CFG
                                    321 	.globl _PLL_CFG
                                    322 	.globl _PCON
                                    323 	.globl _GLOBAL_CFG
                                    324 	.globl _SAFE_MOD
                                    325 	.globl _DPH
                                    326 	.globl _DPL
                                    327 	.globl _SP
                                    328 	.globl _B
                                    329 	.globl _ACC
                                    330 	.globl _PSW
                                    331 	.globl _TempController_begin_PARM_3
                                    332 	.globl _TempController_begin_PARM_2
                                    333 	.globl _LED_DMA_XL
                                    334 	.globl _LED_DMA_XH
                                    335 	.globl _LED_DMA_CN
                                    336 	.globl _LED_DMA_AL
                                    337 	.globl _LED_DMA_AH
                                    338 	.globl _LED_CK_SE
                                    339 	.globl _LED_DATA
                                    340 	.globl _LED_CTRL
                                    341 	.globl _LED_STAT
                                    342 	.globl _UEP3_DMA_L
                                    343 	.globl _UEP3_DMA_H
                                    344 	.globl _UEP2_DMA_L
                                    345 	.globl _UEP2_DMA_H
                                    346 	.globl _UEP1_DMA_L
                                    347 	.globl _UEP1_DMA_H
                                    348 	.globl _UEP0_DMA_L
                                    349 	.globl _UEP0_DMA_H
                                    350 	.globl _UEP2_3_MOD
                                    351 	.globl _UEP4_1_MOD
                                    352 	.globl _pLED_DMA_XL
                                    353 	.globl _pLED_DMA_XH
                                    354 	.globl _pLED_DMA_CN
                                    355 	.globl _pLED_DMA_AL
                                    356 	.globl _pLED_DMA_AH
                                    357 	.globl _pLED_CK_SE
                                    358 	.globl _pLED_DATA
                                    359 	.globl _pLED_CTRL
                                    360 	.globl _pLED_STAT
                                    361 	.globl _pUEP3_DMA_L
                                    362 	.globl _pUEP3_DMA_H
                                    363 	.globl _pUEP2_DMA_L
                                    364 	.globl _pUEP2_DMA_H
                                    365 	.globl _pUEP1_DMA_L
                                    366 	.globl _pUEP1_DMA_H
                                    367 	.globl _pUEP0_DMA_L
                                    368 	.globl _pUEP0_DMA_H
                                    369 	.globl _pUEP2_3_MOD
                                    370 	.globl _pUEP4_1_MOD
                                    371 	.globl _TempController_begin
                                    372 	.globl _TempController_update
                                    373 	.globl _TempController_isOverheat
                                    374 	.globl _TempController_getTemperature
                                    375 	.globl _TempController_getTargetRPM
                                    376 	.globl _TempController_isReady
                                    377 ;--------------------------------------------------------
                                    378 ; special function registers
                                    379 ;--------------------------------------------------------
                                    380 	.area RSEG    (ABS,DATA)
      000000                        381 	.org 0x0000
                           0000D0   382 _PSW	=	0x00d0
                           0000E0   383 _ACC	=	0x00e0
                           0000F0   384 _B	=	0x00f0
                           000081   385 _SP	=	0x0081
                           000082   386 _DPL	=	0x0082
                           000083   387 _DPH	=	0x0083
                           0000A1   388 _SAFE_MOD	=	0x00a1
                           0000B1   389 _GLOBAL_CFG	=	0x00b1
                           000087   390 _PCON	=	0x0087
                           0000B2   391 _PLL_CFG	=	0x00b2
                           0000B3   392 _CLOCK_CFG	=	0x00b3
                           0000EA   393 _SLEEP_CTRL	=	0x00ea
                           0000EB   394 _WAKE_CTRL	=	0x00eb
                           0000FE   395 _RESET_KEEP	=	0x00fe
                           0000FF   396 _WDOG_COUNT	=	0x00ff
                           0000A8   397 _IE	=	0x00a8
                           0000B8   398 _IP	=	0x00b8
                           0000E8   399 _IE_EX	=	0x00e8
                           0000E9   400 _IP_EX	=	0x00e9
                           0000CF   401 _GPIO_IE	=	0x00cf
                           008584   402 _ROM_ADDR	=	0x8584
                           000084   403 _ROM_ADDR_L	=	0x0084
                           000085   404 _ROM_ADDR_H	=	0x0085
                           008F8E   405 _ROM_DATA	=	0x8f8e
                           00008E   406 _ROM_DATA_L	=	0x008e
                           00008F   407 _ROM_DATA_H	=	0x008f
                           000086   408 _ROM_CTRL	=	0x0086
                           000080   409 _P0	=	0x0080
                           0000C4   410 _P0_DIR	=	0x00c4
                           0000C5   411 _P0_PU	=	0x00c5
                           000090   412 _P1	=	0x0090
                           0000B9   413 _P1_IE	=	0x00b9
                           0000BA   414 _P1_DIR	=	0x00ba
                           0000BB   415 _P1_PU	=	0x00bb
                           0000A0   416 _P2	=	0x00a0
                           0000BC   417 _P2_DIR	=	0x00bc
                           0000BD   418 _P2_PU	=	0x00bd
                           0000B0   419 _P3	=	0x00b0
                           0000BE   420 _P3_DIR	=	0x00be
                           0000BF   421 _P3_PU	=	0x00bf
                           0000C0   422 _P4_OUT	=	0x00c0
                           0000C1   423 _P4_IN	=	0x00c1
                           0000C2   424 _P4_DIR	=	0x00c2
                           0000C3   425 _P4_PU	=	0x00c3
                           0000C7   426 _P5_IN	=	0x00c7
                           0000C6   427 _PORT_CFG	=	0x00c6
                           0000CE   428 _PIN_FUNC	=	0x00ce
                           0000A2   429 _XBUS_AUX	=	0x00a2
                           0000FD   430 _XBUS_SPEED	=	0x00fd
                           000088   431 _TCON	=	0x0088
                           000089   432 _TMOD	=	0x0089
                           00008A   433 _TL0	=	0x008a
                           00008B   434 _TL1	=	0x008b
                           00008C   435 _TH0	=	0x008c
                           00008D   436 _TH1	=	0x008d
                           000098   437 _SCON	=	0x0098
                           000099   438 _SBUF	=	0x0099
                           0000C8   439 _T2CON	=	0x00c8
                           0000C9   440 _T2MOD	=	0x00c9
                           00CBCA   441 _RCAP2	=	0xcbca
                           0000CA   442 _RCAP2L	=	0x00ca
                           0000CB   443 _RCAP2H	=	0x00cb
                           00CDCC   444 _T2COUNT	=	0xcdcc
                           0000CC   445 _TL2	=	0x00cc
                           0000CD   446 _TH2	=	0x00cd
                           0000A3   447 _T3_SETUP	=	0x00a3
                           00A5A4   448 _T3_COUNT	=	0xa5a4
                           0000A4   449 _T3_COUNT_L	=	0x00a4
                           0000A5   450 _T3_COUNT_H	=	0x00a5
                           00A7A6   451 _T3_END	=	0xa7a6
                           0000A6   452 _T3_END_L	=	0x00a6
                           0000A7   453 _T3_END_H	=	0x00a7
                           0000A9   454 _T3_STAT	=	0x00a9
                           0000AA   455 _T3_CTRL	=	0x00aa
                           0000AB   456 _T3_DMA_CN	=	0x00ab
                           00ADAC   457 _T3_DMA	=	0xadac
                           0000AC   458 _T3_DMA_AL	=	0x00ac
                           0000AD   459 _T3_DMA_AH	=	0x00ad
                           00AFAE   460 _T3_FIFO	=	0xafae
                           0000AE   461 _T3_FIFO_L	=	0x00ae
                           0000AF   462 _T3_FIFO_H	=	0x00af
                           00009B   463 _PWM_DATA2	=	0x009b
                           00009C   464 _PWM_DATA	=	0x009c
                           00009D   465 _PWM_CTRL	=	0x009d
                           00009E   466 _PWM_CK_SE	=	0x009e
                           00009F   467 _PWM_CYCLE	=	0x009f
                           0000F8   468 _SPI0_STAT	=	0x00f8
                           0000F9   469 _SPI0_DATA	=	0x00f9
                           0000FA   470 _SPI0_CTRL	=	0x00fa
                           0000FB   471 _SPI0_CK_SE	=	0x00fb
                           0000FC   472 _SPI0_SETUP	=	0x00fc
                           0000B4   473 _SPI1_STAT	=	0x00b4
                           0000B5   474 _SPI1_DATA	=	0x00b5
                           0000B6   475 _SPI1_CTRL	=	0x00b6
                           0000B7   476 _SPI1_CK_SE	=	0x00b7
                           00009A   477 _SER1_FIFO	=	0x009a
                           000091   478 _SER1_IER	=	0x0091
                           000092   479 _SER1_IIR	=	0x0092
                           000093   480 _SER1_LCR	=	0x0093
                           000094   481 _SER1_MCR	=	0x0094
                           000095   482 _SER1_LSR	=	0x0095
                           000096   483 _SER1_MSR	=	0x0096
                           000097   484 _SER1_ADDR	=	0x0097
                           00EDEC   485 _ADC_DMA	=	0xedec
                           0000EC   486 _ADC_DMA_AL	=	0x00ec
                           0000ED   487 _ADC_DMA_AH	=	0x00ed
                           0000EE   488 _ADC_DMA_CN	=	0x00ee
                           0000EF   489 _ADC_CK_SE	=	0x00ef
                           0000F1   490 _ADC_STAT	=	0x00f1
                           0000F2   491 _ADC_CTRL	=	0x00f2
                           0000F3   492 _ADC_CHANN	=	0x00f3
                           00F5F4   493 _ADC_FIFO	=	0xf5f4
                           0000F4   494 _ADC_FIFO_L	=	0x00f4
                           0000F5   495 _ADC_FIFO_H	=	0x00f5
                           0000F6   496 _ADC_SETUP	=	0x00f6
                           0000F7   497 _ADC_EX_SW	=	0x00f7
                           0000D1   498 _USB_RX_LEN	=	0x00d1
                           0000D2   499 _UEP1_CTRL	=	0x00d2
                           0000D3   500 _UEP1_T_LEN	=	0x00d3
                           0000D4   501 _UEP2_CTRL	=	0x00d4
                           0000D5   502 _UEP2_T_LEN	=	0x00d5
                           0000D6   503 _UEP3_CTRL	=	0x00d6
                           0000D7   504 _UEP3_T_LEN	=	0x00d7
                           0000D8   505 _USB_INT_FG	=	0x00d8
                           0000D9   506 _USB_INT_ST	=	0x00d9
                           0000DA   507 _USB_MIS_ST	=	0x00da
                           0000DB   508 _USB_HUB_ST	=	0x00db
                           0000DC   509 _UEP0_CTRL	=	0x00dc
                           0000DD   510 _UEP0_T_LEN	=	0x00dd
                           0000DE   511 _UEP4_CTRL	=	0x00de
                           0000DF   512 _UEP4_T_LEN	=	0x00df
                           0000E1   513 _USB_INT_EN	=	0x00e1
                           0000E2   514 _USB_CTRL	=	0x00e2
                           0000E3   515 _USB_DEV_AD	=	0x00e3
                           0000E4   516 _UDEV_CTRL	=	0x00e4
                           0000E5   517 _UHUB1_CTRL	=	0x00e5
                           00E7E6   518 _USB_DMA	=	0xe7e6
                           0000E6   519 _USB_DMA_AL	=	0x00e6
                           0000E7   520 _USB_DMA_AH	=	0x00e7
                                    521 ;--------------------------------------------------------
                                    522 ; special function bits
                                    523 ;--------------------------------------------------------
                                    524 	.area RSEG    (ABS,DATA)
      000000                        525 	.org 0x0000
                           0000D7   526 _CY	=	0x00d7
                           0000D6   527 _AC	=	0x00d6
                           0000D5   528 _F0	=	0x00d5
                           0000D4   529 _RS1	=	0x00d4
                           0000D3   530 _RS0	=	0x00d3
                           0000D2   531 _OV	=	0x00d2
                           0000D1   532 _F1	=	0x00d1
                           0000D0   533 _P	=	0x00d0
                           0000AF   534 _EA	=	0x00af
                           0000AE   535 _E_DIS	=	0x00ae
                           0000AD   536 _ET2	=	0x00ad
                           0000AC   537 _ES	=	0x00ac
                           0000AB   538 _ET1	=	0x00ab
                           0000AA   539 _EX1	=	0x00aa
                           0000A9   540 _ET0	=	0x00a9
                           0000A8   541 _EX0	=	0x00a8
                           0000BF   542 _PH_FLAG	=	0x00bf
                           0000BE   543 _PL_FLAG	=	0x00be
                           0000BD   544 _PT2	=	0x00bd
                           0000BC   545 _PS	=	0x00bc
                           0000BB   546 _PT1	=	0x00bb
                           0000BA   547 _PX1	=	0x00ba
                           0000B9   548 _PT0	=	0x00b9
                           0000B8   549 _PX0	=	0x00b8
                           0000EF   550 _IE_WDOG	=	0x00ef
                           0000EE   551 _IE_GPIO	=	0x00ee
                           0000ED   552 _IE_PWM1	=	0x00ed
                           0000EC   553 _IE_UART1	=	0x00ec
                           0000EB   554 _IE_ADC	=	0x00eb
                           0000EA   555 _IE_USB	=	0x00ea
                           0000E9   556 _IE_TMR3	=	0x00e9
                           0000E8   557 _IE_SPI0	=	0x00e8
                           000087   558 _UDCD	=	0x0087
                           000086   559 _URI	=	0x0086
                           000085   560 _UDSR	=	0x0085
                           000084   561 _UCTS	=	0x0084
                           000083   562 _TXD_	=	0x0083
                           000082   563 _RXD_	=	0x0082
                           000081   564 _URTS	=	0x0081
                           000080   565 _UDTR	=	0x0080
                           000087   566 _P0_7	=	0x0087
                           000086   567 _P0_6	=	0x0086
                           000085   568 _P0_5	=	0x0085
                           000084   569 _P0_4	=	0x0084
                           000083   570 _P0_3	=	0x0083
                           000082   571 _P0_2	=	0x0082
                           000081   572 _P0_1	=	0x0081
                           000080   573 _P0_0	=	0x0080
                           000097   574 _AIN7	=	0x0097
                           000096   575 _AIN6	=	0x0096
                           000095   576 _AIN5	=	0x0095
                           000094   577 _AIN4	=	0x0094
                           000093   578 _AIN3	=	0x0093
                           000092   579 _AIN2	=	0x0092
                           000091   580 _AIN1	=	0x0091
                           000090   581 _AIN0	=	0x0090
                           000097   582 _SCK	=	0x0097
                           000096   583 _MISO	=	0x0096
                           000095   584 _MOSI	=	0x0095
                           000094   585 _SCS	=	0x0094
                           000092   586 _PWM3	=	0x0092
                           000092   587 _CAP3	=	0x0092
                           000091   588 _T2EX	=	0x0091
                           000091   589 _CAP2	=	0x0091
                           000090   590 _T2	=	0x0090
                           000090   591 _CAP1	=	0x0090
                           000097   592 _P1_7	=	0x0097
                           000096   593 _P1_6	=	0x0096
                           000095   594 _P1_5	=	0x0095
                           000094   595 _P1_4	=	0x0094
                           000093   596 _P1_3	=	0x0093
                           000092   597 _P1_2	=	0x0092
                           000091   598 _P1_1	=	0x0091
                           000090   599 _P1_0	=	0x0090
                           0000A7   600 _TXD1	=	0x00a7
                           0000A7   601 _DA7	=	0x00a7
                           0000A6   602 _RXD1	=	0x00a6
                           0000A5   603 _TNOW	=	0x00a5
                           0000A5   604 _PWM2	=	0x00a5
                           0000A5   605 _T2EX_	=	0x00a5
                           0000A5   606 _CAP2_	=	0x00a5
                           0000A4   607 _PWM1	=	0x00a4
                           0000A3   608 _SCK1	=	0x00a3
                           0000A2   609 _MISO1	=	0x00a2
                           0000A1   610 _MOSI1	=	0x00a1
                           0000A7   611 _P2_7	=	0x00a7
                           0000A6   612 _P2_6	=	0x00a6
                           0000A5   613 _P2_5	=	0x00a5
                           0000A4   614 _P2_4	=	0x00a4
                           0000A3   615 _P2_3	=	0x00a3
                           0000A2   616 _P2_2	=	0x00a2
                           0000A1   617 _P2_1	=	0x00a1
                           0000A0   618 _P2_0	=	0x00a0
                           0000B7   619 _RD	=	0x00b7
                           0000B6   620 _WR	=	0x00b6
                           0000B5   621 _DA6	=	0x00b5
                           0000B5   622 _T1	=	0x00b5
                           0000B4   623 _LEDC	=	0x00b4
                           0000B4   624 _XCS0	=	0x00b4
                           0000B4   625 _T0	=	0x00b4
                           0000B3   626 _LED1	=	0x00b3
                           0000B3   627 _INT1	=	0x00b3
                           0000B2   628 _LED0	=	0x00b2
                           0000B2   629 _INT0	=	0x00b2
                           0000B1   630 _TXD	=	0x00b1
                           0000B0   631 _RXD	=	0x00b0
                           0000B7   632 _P3_7	=	0x00b7
                           0000B6   633 _P3_6	=	0x00b6
                           0000B5   634 _P3_5	=	0x00b5
                           0000B4   635 _P3_4	=	0x00b4
                           0000B3   636 _P3_3	=	0x00b3
                           0000B2   637 _P3_2	=	0x00b2
                           0000B1   638 _P3_1	=	0x00b1
                           0000B0   639 _P3_0	=	0x00b0
                           0000C7   640 _SCK_	=	0x00c7
                           0000C6   641 _SCS_	=	0x00c6
                           0000C5   642 _PWM2_	=	0x00c5
                           0000C4   643 _LED3	=	0x00c4
                           0000C4   644 _TNOW_	=	0x00c4
                           0000C4   645 _TXD1_	=	0x00c4
                           0000C3   646 _PWM1_	=	0x00c3
                           0000C2   647 _PWM3_	=	0x00c2
                           0000C2   648 _CAP3_	=	0x00c2
                           0000C0   649 _LED2	=	0x00c0
                           0000C0   650 _RXD1_	=	0x00c0
                           0000C7   651 _P4_OUT_7	=	0x00c7
                           0000C6   652 _P4_OUT_6	=	0x00c6
                           0000C5   653 _P4_OUT_5	=	0x00c5
                           0000C4   654 _P4_OUT_4	=	0x00c4
                           0000C3   655 _P4_OUT_3	=	0x00c3
                           0000C2   656 _P4_OUT_2	=	0x00c2
                           0000C1   657 _P4_OUT_1	=	0x00c1
                           0000C0   658 _P4_OUT_0	=	0x00c0
                           00008F   659 _TF1	=	0x008f
                           00008E   660 _TR1	=	0x008e
                           00008D   661 _TF0	=	0x008d
                           00008C   662 _TR0	=	0x008c
                           00008B   663 _IE1	=	0x008b
                           00008A   664 _IT1	=	0x008a
                           000089   665 _IE0	=	0x0089
                           000088   666 _IT0	=	0x0088
                           00009F   667 _SM0	=	0x009f
                           00009E   668 _SM1	=	0x009e
                           00009D   669 _SM2	=	0x009d
                           00009C   670 _REN	=	0x009c
                           00009B   671 _TB8	=	0x009b
                           00009A   672 _RB8	=	0x009a
                           000099   673 _TI	=	0x0099
                           000098   674 _RI	=	0x0098
                           0000CF   675 _TF2	=	0x00cf
                           0000CF   676 _CAP1F	=	0x00cf
                           0000CE   677 _EXF2	=	0x00ce
                           0000CD   678 _RCLK	=	0x00cd
                           0000CC   679 _TCLK	=	0x00cc
                           0000CB   680 _EXEN2	=	0x00cb
                           0000CA   681 _TR2	=	0x00ca
                           0000C9   682 _C_T2	=	0x00c9
                           0000C8   683 _CP_RL2	=	0x00c8
                           0000FF   684 _S0_FST_ACT	=	0x00ff
                           0000FE   685 _S0_IF_OV	=	0x00fe
                           0000FD   686 _S0_IF_FIRST	=	0x00fd
                           0000FC   687 _S0_IF_BYTE	=	0x00fc
                           0000FB   688 _S0_FREE	=	0x00fb
                           0000FA   689 _S0_T_FIFO	=	0x00fa
                           0000F9   690 _S0_R_FIFO1	=	0x00f9
                           0000F8   691 _S0_R_FIFO0	=	0x00f8
                           0000DF   692 _U_IS_NAK	=	0x00df
                           0000DE   693 _U_TOG_OK	=	0x00de
                           0000DD   694 _U_SIE_FREE	=	0x00dd
                           0000DC   695 _UIF_FIFO_OV	=	0x00dc
                           0000DB   696 _UIF_HST_SOF	=	0x00db
                           0000DA   697 _UIF_SUSPEND	=	0x00da
                           0000D9   698 _UIF_TRANSFER	=	0x00d9
                           0000D8   699 _UIF_DETECT	=	0x00d8
                           0000D8   700 _UIF_BUS_RST	=	0x00d8
                                    701 ;--------------------------------------------------------
                                    702 ; overlayable register banks
                                    703 ;--------------------------------------------------------
                                    704 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        705 	.ds 8
                                    706 ;--------------------------------------------------------
                                    707 ; internal ram data
                                    708 ;--------------------------------------------------------
                                    709 	.area DSEG    (DATA)
      000038                        710 _TempController_mapTempToRPM_sloc0_1_0:
      000038                        711 	.ds 4
      00003C                        712 _TempController_begin_sloc0_1_0:
      00003C                        713 	.ds 3
      00003F                        714 _TempController_begin_sloc1_1_0:
      00003F                        715 	.ds 3
      000042                        716 _TempController_begin_sloc2_1_0:
      000042                        717 	.ds 3
      000045                        718 _TempController_update_sloc0_1_0:
      000045                        719 	.ds 4
      000049                        720 _TempController_update_sloc1_1_0:
      000049                        721 	.ds 4
                                    722 ;--------------------------------------------------------
                                    723 ; overlayable items in internal ram
                                    724 ;--------------------------------------------------------
                                    725 ;--------------------------------------------------------
                                    726 ; indirectly addressable internal ram data
                                    727 ;--------------------------------------------------------
                                    728 	.area ISEG    (DATA)
                                    729 ;--------------------------------------------------------
                                    730 ; absolute internal ram data
                                    731 ;--------------------------------------------------------
                                    732 	.area IABS    (ABS,DATA)
                                    733 	.area IABS    (ABS,DATA)
                                    734 ;--------------------------------------------------------
                                    735 ; bit data
                                    736 ;--------------------------------------------------------
                                    737 	.area BSEG    (BIT)
      000001                        738 _TempController_begin_sloc3_1_0:
      000001                        739 	.ds 1
      000002                        740 _TempController_isOverheat_sloc0_1_0:
      000002                        741 	.ds 1
                                    742 ;--------------------------------------------------------
                                    743 ; paged external ram data
                                    744 ;--------------------------------------------------------
                                    745 	.area PSEG    (PAG,XDATA)
                           002546   746 _pUEP4_1_MOD	=	0x2546
                           002547   747 _pUEP2_3_MOD	=	0x2547
                           002548   748 _pUEP0_DMA_H	=	0x2548
                           002549   749 _pUEP0_DMA_L	=	0x2549
                           00254A   750 _pUEP1_DMA_H	=	0x254a
                           00254B   751 _pUEP1_DMA_L	=	0x254b
                           00254C   752 _pUEP2_DMA_H	=	0x254c
                           00254D   753 _pUEP2_DMA_L	=	0x254d
                           00254E   754 _pUEP3_DMA_H	=	0x254e
                           00254F   755 _pUEP3_DMA_L	=	0x254f
                           002980   756 _pLED_STAT	=	0x2980
                           002981   757 _pLED_CTRL	=	0x2981
                           002982   758 _pLED_DATA	=	0x2982
                           002983   759 _pLED_CK_SE	=	0x2983
                           002984   760 _pLED_DMA_AH	=	0x2984
                           002985   761 _pLED_DMA_AL	=	0x2985
                           002986   762 _pLED_DMA_CN	=	0x2986
                           002988   763 _pLED_DMA_XH	=	0x2988
                           002989   764 _pLED_DMA_XL	=	0x2989
                                    765 ;--------------------------------------------------------
                                    766 ; uninitialized external ram data
                                    767 ;--------------------------------------------------------
                                    768 	.area XSEG    (XDATA)
                           002446   769 _UEP4_1_MOD	=	0x2446
                           002447   770 _UEP2_3_MOD	=	0x2447
                           002448   771 _UEP0_DMA_H	=	0x2448
                           002449   772 _UEP0_DMA_L	=	0x2449
                           00244A   773 _UEP1_DMA_H	=	0x244a
                           00244B   774 _UEP1_DMA_L	=	0x244b
                           00244C   775 _UEP2_DMA_H	=	0x244c
                           00244D   776 _UEP2_DMA_L	=	0x244d
                           00244E   777 _UEP3_DMA_H	=	0x244e
                           00244F   778 _UEP3_DMA_L	=	0x244f
                           002880   779 _LED_STAT	=	0x2880
                           002881   780 _LED_CTRL	=	0x2881
                           002882   781 _LED_DATA	=	0x2882
                           002883   782 _LED_CK_SE	=	0x2883
                           002884   783 _LED_DMA_AH	=	0x2884
                           002885   784 _LED_DMA_AL	=	0x2885
                           002886   785 _LED_DMA_CN	=	0x2886
                           002888   786 _LED_DMA_XH	=	0x2888
                           002889   787 _LED_DMA_XL	=	0x2889
      0001D1                        788 _TempController_mapTempToVoltageLinear_temp_65536_192:
      0001D1                        789 	.ds 4
      0001D5                        790 _TempController_mapTempToVoltageLinear_voltage_65536_193:
      0001D5                        791 	.ds 4
      0001D9                        792 _TempController_mapTempToVoltageQuadratic_temp_65536_194:
      0001D9                        793 	.ds 4
      0001DD                        794 _TempController_mapTempToVoltageQuadratic_norm_temp_65536_195:
      0001DD                        795 	.ds 4
      0001E1                        796 _TempController_mapTempToVoltageQuadratic_voltage_65536_195:
      0001E1                        797 	.ds 4
      0001E5                        798 _TempController_mapTempToRPM_temp_65536_196:
      0001E5                        799 	.ds 4
      0001E9                        800 _TempController_begin_PARM_2:
      0001E9                        801 	.ds 3
      0001EC                        802 _TempController_begin_PARM_3:
      0001EC                        803 	.ds 3
      0001EF                        804 _TempController_begin_tc_65536_198:
      0001EF                        805 	.ds 3
      0001F2                        806 _TempController_update_tc_65536_202:
      0001F2                        807 	.ds 3
      0001F5                        808 _TempController_isOverheat_tc_65536_208:
      0001F5                        809 	.ds 3
      0001F8                        810 _TempController_getTemperature_tc_65536_210:
      0001F8                        811 	.ds 3
      0001FB                        812 _TempController_getTargetRPM_tc_65536_212:
      0001FB                        813 	.ds 3
      0001FE                        814 _TempController_isReady_tc_65536_214:
      0001FE                        815 	.ds 3
                                    816 ;--------------------------------------------------------
                                    817 ; absolute external ram data
                                    818 ;--------------------------------------------------------
                                    819 	.area XABS    (ABS,XDATA)
                                    820 ;--------------------------------------------------------
                                    821 ; initialized external ram data
                                    822 ;--------------------------------------------------------
                                    823 	.area XISEG   (XDATA)
                                    824 	.area HOME    (CODE)
                                    825 	.area GSINIT0 (CODE)
                                    826 	.area GSINIT1 (CODE)
                                    827 	.area GSINIT2 (CODE)
                                    828 	.area GSINIT3 (CODE)
                                    829 	.area GSINIT4 (CODE)
                                    830 	.area GSINIT5 (CODE)
                                    831 	.area GSINIT  (CODE)
                                    832 	.area GSFINAL (CODE)
                                    833 	.area CSEG    (CODE)
                                    834 ;--------------------------------------------------------
                                    835 ; global & static initialisations
                                    836 ;--------------------------------------------------------
                                    837 	.area HOME    (CODE)
                                    838 	.area GSINIT  (CODE)
                                    839 	.area GSFINAL (CODE)
                                    840 	.area GSINIT  (CODE)
                                    841 ;--------------------------------------------------------
                                    842 ; Home
                                    843 ;--------------------------------------------------------
                                    844 	.area HOME    (CODE)
                                    845 	.area HOME    (CODE)
                                    846 ;--------------------------------------------------------
                                    847 ; code
                                    848 ;--------------------------------------------------------
                                    849 	.area CSEG    (CODE)
                                    850 ;------------------------------------------------------------
                                    851 ;Allocation info for local variables in function 'TempController_mapTempToVoltageLinear'
                                    852 ;------------------------------------------------------------
                                    853 ;temp                      Allocated with name '_TempController_mapTempToVoltageLinear_temp_65536_192'
                                    854 ;voltage                   Allocated with name '_TempController_mapTempToVoltageLinear_voltage_65536_193'
                                    855 ;------------------------------------------------------------
                                    856 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:10: static float TempController_mapTempToVoltageLinear(float temp) {
                                    857 ;	-----------------------------------------
                                    858 ;	 function TempController_mapTempToVoltageLinear
                                    859 ;	-----------------------------------------
      001F1C                        860 _TempController_mapTempToVoltageLinear:
                           000007   861 	ar7 = 0x07
                           000006   862 	ar6 = 0x06
                           000005   863 	ar5 = 0x05
                           000004   864 	ar4 = 0x04
                           000003   865 	ar3 = 0x03
                           000002   866 	ar2 = 0x02
                           000001   867 	ar1 = 0x01
                           000000   868 	ar0 = 0x00
      001F1C AF 82            [24]  869 	mov	r7,dpl
      001F1E AE 83            [24]  870 	mov	r6,dph
      001F20 AD F0            [24]  871 	mov	r5,b
      001F22 FC               [12]  872 	mov	r4,a
      001F23 90 01 D1         [24]  873 	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
      001F26 EF               [12]  874 	mov	a,r7
      001F27 F0               [24]  875 	movx	@dptr,a
      001F28 EE               [12]  876 	mov	a,r6
      001F29 A3               [24]  877 	inc	dptr
      001F2A F0               [24]  878 	movx	@dptr,a
      001F2B ED               [12]  879 	mov	a,r5
      001F2C A3               [24]  880 	inc	dptr
      001F2D F0               [24]  881 	movx	@dptr,a
      001F2E EC               [12]  882 	mov	a,r4
      001F2F A3               [24]  883 	inc	dptr
      001F30 F0               [24]  884 	movx	@dptr,a
                                    885 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:11: float voltage = TEMP_VOLTAGE_K * temp + TEMP_VOLTAGE_B;
      001F31 90 01 D1         [24]  886 	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
      001F34 E0               [24]  887 	movx	a,@dptr
      001F35 C0 E0            [24]  888 	push	acc
      001F37 A3               [24]  889 	inc	dptr
      001F38 E0               [24]  890 	movx	a,@dptr
      001F39 C0 E0            [24]  891 	push	acc
      001F3B A3               [24]  892 	inc	dptr
      001F3C E0               [24]  893 	movx	a,@dptr
      001F3D C0 E0            [24]  894 	push	acc
      001F3F A3               [24]  895 	inc	dptr
      001F40 E0               [24]  896 	movx	a,@dptr
      001F41 C0 E0            [24]  897 	push	acc
      001F43 90 00 00         [24]  898 	mov	dptr,#(0x00&0x00ff)
      001F46 E4               [12]  899 	clr	a
      001F47 F5 F0            [12]  900 	mov	b,a
      001F49 74 3F            [12]  901 	mov	a,#0x3f
      001F4B 12 48 95         [24]  902 	lcall	___fsmul
      001F4E AC 82            [24]  903 	mov	r4,dpl
      001F50 AD 83            [24]  904 	mov	r5,dph
      001F52 AE F0            [24]  905 	mov	r6,b
      001F54 FF               [12]  906 	mov	r7,a
      001F55 E5 81            [12]  907 	mov	a,sp
      001F57 24 FC            [12]  908 	add	a,#0xfc
      001F59 F5 81            [12]  909 	mov	sp,a
      001F5B E4               [12]  910 	clr	a
      001F5C C0 E0            [24]  911 	push	acc
      001F5E C0 E0            [24]  912 	push	acc
      001F60 74 20            [12]  913 	mov	a,#0x20
      001F62 C0 E0            [24]  914 	push	acc
      001F64 74 41            [12]  915 	mov	a,#0x41
      001F66 C0 E0            [24]  916 	push	acc
      001F68 8C 82            [24]  917 	mov	dpl,r4
      001F6A 8D 83            [24]  918 	mov	dph,r5
      001F6C 8E F0            [24]  919 	mov	b,r6
      001F6E EF               [12]  920 	mov	a,r7
      001F6F 12 57 A7         [24]  921 	lcall	___fsadd
      001F72 AC 82            [24]  922 	mov	r4,dpl
      001F74 AD 83            [24]  923 	mov	r5,dph
      001F76 AE F0            [24]  924 	mov	r6,b
      001F78 FF               [12]  925 	mov	r7,a
      001F79 E5 81            [12]  926 	mov	a,sp
      001F7B 24 FC            [12]  927 	add	a,#0xfc
      001F7D F5 81            [12]  928 	mov	sp,a
      001F7F 90 01 D5         [24]  929 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      001F82 EC               [12]  930 	mov	a,r4
      001F83 F0               [24]  931 	movx	@dptr,a
      001F84 ED               [12]  932 	mov	a,r5
      001F85 A3               [24]  933 	inc	dptr
      001F86 F0               [24]  934 	movx	@dptr,a
      001F87 EE               [12]  935 	mov	a,r6
      001F88 A3               [24]  936 	inc	dptr
      001F89 F0               [24]  937 	movx	@dptr,a
      001F8A EF               [12]  938 	mov	a,r7
      001F8B A3               [24]  939 	inc	dptr
      001F8C F0               [24]  940 	movx	@dptr,a
                                    941 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:12: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      001F8D E4               [12]  942 	clr	a
      001F8E C0 E0            [24]  943 	push	acc
      001F90 C0 E0            [24]  944 	push	acc
      001F92 74 A0            [12]  945 	mov	a,#0xa0
      001F94 C0 E0            [24]  946 	push	acc
      001F96 74 40            [12]  947 	mov	a,#0x40
      001F98 C0 E0            [24]  948 	push	acc
      001F9A 8C 82            [24]  949 	mov	dpl,r4
      001F9C 8D 83            [24]  950 	mov	dph,r5
      001F9E 8E F0            [24]  951 	mov	b,r6
      001FA0 EF               [12]  952 	mov	a,r7
      001FA1 12 56 D5         [24]  953 	lcall	___fslt
      001FA4 AF 82            [24]  954 	mov	r7,dpl
      001FA6 E5 81            [12]  955 	mov	a,sp
      001FA8 24 FC            [12]  956 	add	a,#0xfc
      001FAA F5 81            [12]  957 	mov	sp,a
      001FAC EF               [12]  958 	mov	a,r7
      001FAD 60 0F            [24]  959 	jz	00102$
      001FAF 90 01 D5         [24]  960 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      001FB2 E4               [12]  961 	clr	a
      001FB3 F0               [24]  962 	movx	@dptr,a
      001FB4 A3               [24]  963 	inc	dptr
      001FB5 F0               [24]  964 	movx	@dptr,a
      001FB6 74 A0            [12]  965 	mov	a,#0xa0
      001FB8 A3               [24]  966 	inc	dptr
      001FB9 F0               [24]  967 	movx	@dptr,a
      001FBA 74 40            [12]  968 	mov	a,#0x40
      001FBC A3               [24]  969 	inc	dptr
      001FBD F0               [24]  970 	movx	@dptr,a
      001FBE                        971 00102$:
                                    972 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:13: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      001FBE 90 01 D5         [24]  973 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      001FC1 E0               [24]  974 	movx	a,@dptr
      001FC2 C0 E0            [24]  975 	push	acc
      001FC4 A3               [24]  976 	inc	dptr
      001FC5 E0               [24]  977 	movx	a,@dptr
      001FC6 C0 E0            [24]  978 	push	acc
      001FC8 A3               [24]  979 	inc	dptr
      001FC9 E0               [24]  980 	movx	a,@dptr
      001FCA C0 E0            [24]  981 	push	acc
      001FCC A3               [24]  982 	inc	dptr
      001FCD E0               [24]  983 	movx	a,@dptr
      001FCE C0 E0            [24]  984 	push	acc
      001FD0 90 00 00         [24]  985 	mov	dptr,#0x0000
      001FD3 75 F0 40         [24]  986 	mov	b,#0x40
      001FD6 74 41            [12]  987 	mov	a,#0x41
      001FD8 12 56 D5         [24]  988 	lcall	___fslt
      001FDB AF 82            [24]  989 	mov	r7,dpl
      001FDD E5 81            [12]  990 	mov	a,sp
      001FDF 24 FC            [12]  991 	add	a,#0xfc
      001FE1 F5 81            [12]  992 	mov	sp,a
      001FE3 EF               [12]  993 	mov	a,r7
      001FE4 60 0E            [24]  994 	jz	00104$
      001FE6 90 01 D5         [24]  995 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      001FE9 E4               [12]  996 	clr	a
      001FEA F0               [24]  997 	movx	@dptr,a
      001FEB A3               [24]  998 	inc	dptr
      001FEC F0               [24]  999 	movx	@dptr,a
      001FED 74 40            [12] 1000 	mov	a,#0x40
      001FEF A3               [24] 1001 	inc	dptr
      001FF0 F0               [24] 1002 	movx	@dptr,a
      001FF1 04               [12] 1003 	inc	a
      001FF2 A3               [24] 1004 	inc	dptr
      001FF3 F0               [24] 1005 	movx	@dptr,a
      001FF4                       1006 00104$:
                                   1007 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:14: return voltage;
      001FF4 90 01 D5         [24] 1008 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      001FF7 E0               [24] 1009 	movx	a,@dptr
      001FF8 FC               [12] 1010 	mov	r4,a
      001FF9 A3               [24] 1011 	inc	dptr
      001FFA E0               [24] 1012 	movx	a,@dptr
      001FFB FD               [12] 1013 	mov	r5,a
      001FFC A3               [24] 1014 	inc	dptr
      001FFD E0               [24] 1015 	movx	a,@dptr
      001FFE FE               [12] 1016 	mov	r6,a
      001FFF A3               [24] 1017 	inc	dptr
      002000 E0               [24] 1018 	movx	a,@dptr
      002001 8C 82            [24] 1019 	mov	dpl,r4
      002003 8D 83            [24] 1020 	mov	dph,r5
      002005 8E F0            [24] 1021 	mov	b,r6
                                   1022 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:15: }
      002007 22               [24] 1023 	ret
                                   1024 ;------------------------------------------------------------
                                   1025 ;Allocation info for local variables in function 'TempController_mapTempToVoltageQuadratic'
                                   1026 ;------------------------------------------------------------
                                   1027 ;temp                      Allocated with name '_TempController_mapTempToVoltageQuadratic_temp_65536_194'
                                   1028 ;norm_temp                 Allocated with name '_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195'
                                   1029 ;voltage                   Allocated with name '_TempController_mapTempToVoltageQuadratic_voltage_65536_195'
                                   1030 ;------------------------------------------------------------
                                   1031 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:17: static float TempController_mapTempToVoltageQuadratic(float temp) {
                                   1032 ;	-----------------------------------------
                                   1033 ;	 function TempController_mapTempToVoltageQuadratic
                                   1034 ;	-----------------------------------------
      002008                       1035 _TempController_mapTempToVoltageQuadratic:
      002008 AF 82            [24] 1036 	mov	r7,dpl
      00200A AE 83            [24] 1037 	mov	r6,dph
      00200C AD F0            [24] 1038 	mov	r5,b
      00200E FC               [12] 1039 	mov	r4,a
      00200F 90 01 D9         [24] 1040 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
      002012 EF               [12] 1041 	mov	a,r7
      002013 F0               [24] 1042 	movx	@dptr,a
      002014 EE               [12] 1043 	mov	a,r6
      002015 A3               [24] 1044 	inc	dptr
      002016 F0               [24] 1045 	movx	@dptr,a
      002017 ED               [12] 1046 	mov	a,r5
      002018 A3               [24] 1047 	inc	dptr
      002019 F0               [24] 1048 	movx	@dptr,a
      00201A EC               [12] 1049 	mov	a,r4
      00201B A3               [24] 1050 	inc	dptr
      00201C F0               [24] 1051 	movx	@dptr,a
                                   1052 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:18: float norm_temp = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
      00201D 90 01 D9         [24] 1053 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
      002020 E0               [24] 1054 	movx	a,@dptr
      002021 FC               [12] 1055 	mov	r4,a
      002022 A3               [24] 1056 	inc	dptr
      002023 E0               [24] 1057 	movx	a,@dptr
      002024 FD               [12] 1058 	mov	r5,a
      002025 A3               [24] 1059 	inc	dptr
      002026 E0               [24] 1060 	movx	a,@dptr
      002027 FE               [12] 1061 	mov	r6,a
      002028 A3               [24] 1062 	inc	dptr
      002029 E0               [24] 1063 	movx	a,@dptr
      00202A FF               [12] 1064 	mov	r7,a
      00202B E4               [12] 1065 	clr	a
      00202C C0 E0            [24] 1066 	push	acc
      00202E C0 E0            [24] 1067 	push	acc
      002030 74 F0            [12] 1068 	mov	a,#0xf0
      002032 C0 E0            [24] 1069 	push	acc
      002034 74 41            [12] 1070 	mov	a,#0x41
      002036 C0 E0            [24] 1071 	push	acc
      002038 8C 82            [24] 1072 	mov	dpl,r4
      00203A 8D 83            [24] 1073 	mov	dph,r5
      00203C 8E F0            [24] 1074 	mov	b,r6
      00203E EF               [12] 1075 	mov	a,r7
      00203F 12 48 12         [24] 1076 	lcall	___fssub
      002042 AC 82            [24] 1077 	mov	r4,dpl
      002044 AD 83            [24] 1078 	mov	r5,dph
      002046 AE F0            [24] 1079 	mov	r6,b
      002048 FF               [12] 1080 	mov	r7,a
      002049 E5 81            [12] 1081 	mov	a,sp
      00204B 24 FC            [12] 1082 	add	a,#0xfc
      00204D F5 81            [12] 1083 	mov	sp,a
      00204F E4               [12] 1084 	clr	a
      002050 C0 E0            [24] 1085 	push	acc
      002052 C0 E0            [24] 1086 	push	acc
      002054 74 70            [12] 1087 	mov	a,#0x70
      002056 C0 E0            [24] 1088 	push	acc
      002058 74 41            [12] 1089 	mov	a,#0x41
      00205A C0 E0            [24] 1090 	push	acc
      00205C 8C 82            [24] 1091 	mov	dpl,r4
      00205E 8D 83            [24] 1092 	mov	dph,r5
      002060 8E F0            [24] 1093 	mov	b,r6
      002062 EF               [12] 1094 	mov	a,r7
      002063 12 5C 8F         [24] 1095 	lcall	___fsdiv
      002066 AC 82            [24] 1096 	mov	r4,dpl
      002068 AD 83            [24] 1097 	mov	r5,dph
      00206A AE F0            [24] 1098 	mov	r6,b
      00206C FF               [12] 1099 	mov	r7,a
      00206D E5 81            [12] 1100 	mov	a,sp
      00206F 24 FC            [12] 1101 	add	a,#0xfc
      002071 F5 81            [12] 1102 	mov	sp,a
      002073 90 01 DD         [24] 1103 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      002076 EC               [12] 1104 	mov	a,r4
      002077 F0               [24] 1105 	movx	@dptr,a
      002078 ED               [12] 1106 	mov	a,r5
      002079 A3               [24] 1107 	inc	dptr
      00207A F0               [24] 1108 	movx	@dptr,a
      00207B EE               [12] 1109 	mov	a,r6
      00207C A3               [24] 1110 	inc	dptr
      00207D F0               [24] 1111 	movx	@dptr,a
      00207E EF               [12] 1112 	mov	a,r7
      00207F A3               [24] 1113 	inc	dptr
      002080 F0               [24] 1114 	movx	@dptr,a
                                   1115 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:21: if (norm_temp < 0.0f) norm_temp = 0.0f;
      002081 E4               [12] 1116 	clr	a
      002082 C0 E0            [24] 1117 	push	acc
      002084 C0 E0            [24] 1118 	push	acc
      002086 C0 E0            [24] 1119 	push	acc
      002088 C0 E0            [24] 1120 	push	acc
      00208A 8C 82            [24] 1121 	mov	dpl,r4
      00208C 8D 83            [24] 1122 	mov	dph,r5
      00208E 8E F0            [24] 1123 	mov	b,r6
      002090 EF               [12] 1124 	mov	a,r7
      002091 12 56 D5         [24] 1125 	lcall	___fslt
      002094 AF 82            [24] 1126 	mov	r7,dpl
      002096 E5 81            [12] 1127 	mov	a,sp
      002098 24 FC            [12] 1128 	add	a,#0xfc
      00209A F5 81            [12] 1129 	mov	sp,a
      00209C EF               [12] 1130 	mov	a,r7
      00209D 60 0B            [24] 1131 	jz	00102$
      00209F 90 01 DD         [24] 1132 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      0020A2 E4               [12] 1133 	clr	a
      0020A3 F0               [24] 1134 	movx	@dptr,a
      0020A4 A3               [24] 1135 	inc	dptr
      0020A5 F0               [24] 1136 	movx	@dptr,a
      0020A6 A3               [24] 1137 	inc	dptr
      0020A7 F0               [24] 1138 	movx	@dptr,a
      0020A8 A3               [24] 1139 	inc	dptr
      0020A9 F0               [24] 1140 	movx	@dptr,a
      0020AA                       1141 00102$:
                                   1142 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:22: if (norm_temp > 1.0f) norm_temp = 1.0f;
      0020AA 90 01 DD         [24] 1143 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      0020AD E0               [24] 1144 	movx	a,@dptr
      0020AE C0 E0            [24] 1145 	push	acc
      0020B0 A3               [24] 1146 	inc	dptr
      0020B1 E0               [24] 1147 	movx	a,@dptr
      0020B2 C0 E0            [24] 1148 	push	acc
      0020B4 A3               [24] 1149 	inc	dptr
      0020B5 E0               [24] 1150 	movx	a,@dptr
      0020B6 C0 E0            [24] 1151 	push	acc
      0020B8 A3               [24] 1152 	inc	dptr
      0020B9 E0               [24] 1153 	movx	a,@dptr
      0020BA C0 E0            [24] 1154 	push	acc
      0020BC 90 00 00         [24] 1155 	mov	dptr,#0x0000
      0020BF 75 F0 80         [24] 1156 	mov	b,#0x80
      0020C2 74 3F            [12] 1157 	mov	a,#0x3f
      0020C4 12 56 D5         [24] 1158 	lcall	___fslt
      0020C7 AF 82            [24] 1159 	mov	r7,dpl
      0020C9 E5 81            [12] 1160 	mov	a,sp
      0020CB 24 FC            [12] 1161 	add	a,#0xfc
      0020CD F5 81            [12] 1162 	mov	sp,a
      0020CF EF               [12] 1163 	mov	a,r7
      0020D0 60 0F            [24] 1164 	jz	00104$
      0020D2 90 01 DD         [24] 1165 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      0020D5 E4               [12] 1166 	clr	a
      0020D6 F0               [24] 1167 	movx	@dptr,a
      0020D7 A3               [24] 1168 	inc	dptr
      0020D8 F0               [24] 1169 	movx	@dptr,a
      0020D9 74 80            [12] 1170 	mov	a,#0x80
      0020DB A3               [24] 1171 	inc	dptr
      0020DC F0               [24] 1172 	movx	@dptr,a
      0020DD 74 3F            [12] 1173 	mov	a,#0x3f
      0020DF A3               [24] 1174 	inc	dptr
      0020E0 F0               [24] 1175 	movx	@dptr,a
      0020E1                       1176 00104$:
                                   1177 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:24: voltage = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * norm_temp * norm_temp;
      0020E1 90 01 DD         [24] 1178 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      0020E4 E0               [24] 1179 	movx	a,@dptr
      0020E5 FC               [12] 1180 	mov	r4,a
      0020E6 A3               [24] 1181 	inc	dptr
      0020E7 E0               [24] 1182 	movx	a,@dptr
      0020E8 FD               [12] 1183 	mov	r5,a
      0020E9 A3               [24] 1184 	inc	dptr
      0020EA E0               [24] 1185 	movx	a,@dptr
      0020EB FE               [12] 1186 	mov	r6,a
      0020EC A3               [24] 1187 	inc	dptr
      0020ED E0               [24] 1188 	movx	a,@dptr
      0020EE FF               [12] 1189 	mov	r7,a
      0020EF C0 07            [24] 1190 	push	ar7
      0020F1 C0 06            [24] 1191 	push	ar6
      0020F3 C0 05            [24] 1192 	push	ar5
      0020F5 C0 04            [24] 1193 	push	ar4
      0020F7 C0 04            [24] 1194 	push	ar4
      0020F9 C0 05            [24] 1195 	push	ar5
      0020FB C0 06            [24] 1196 	push	ar6
      0020FD C0 07            [24] 1197 	push	ar7
      0020FF 90 00 00         [24] 1198 	mov	dptr,#0x0000
      002102 75 F0 E0         [24] 1199 	mov	b,#0xe0
      002105 74 40            [12] 1200 	mov	a,#0x40
      002107 12 48 95         [24] 1201 	lcall	___fsmul
      00210A A8 82            [24] 1202 	mov	r0,dpl
      00210C A9 83            [24] 1203 	mov	r1,dph
      00210E AA F0            [24] 1204 	mov	r2,b
      002110 FB               [12] 1205 	mov	r3,a
      002111 E5 81            [12] 1206 	mov	a,sp
      002113 24 FC            [12] 1207 	add	a,#0xfc
      002115 F5 81            [12] 1208 	mov	sp,a
      002117 D0 04            [24] 1209 	pop	ar4
      002119 D0 05            [24] 1210 	pop	ar5
      00211B D0 06            [24] 1211 	pop	ar6
      00211D D0 07            [24] 1212 	pop	ar7
      00211F C0 04            [24] 1213 	push	ar4
      002121 C0 05            [24] 1214 	push	ar5
      002123 C0 06            [24] 1215 	push	ar6
      002125 C0 07            [24] 1216 	push	ar7
      002127 88 82            [24] 1217 	mov	dpl,r0
      002129 89 83            [24] 1218 	mov	dph,r1
      00212B 8A F0            [24] 1219 	mov	b,r2
      00212D EB               [12] 1220 	mov	a,r3
      00212E 12 48 95         [24] 1221 	lcall	___fsmul
      002131 AC 82            [24] 1222 	mov	r4,dpl
      002133 AD 83            [24] 1223 	mov	r5,dph
      002135 AE F0            [24] 1224 	mov	r6,b
      002137 FF               [12] 1225 	mov	r7,a
      002138 E5 81            [12] 1226 	mov	a,sp
      00213A 24 FC            [12] 1227 	add	a,#0xfc
      00213C F5 81            [12] 1228 	mov	sp,a
      00213E E4               [12] 1229 	clr	a
      00213F C0 E0            [24] 1230 	push	acc
      002141 C0 E0            [24] 1231 	push	acc
      002143 74 A0            [12] 1232 	mov	a,#0xa0
      002145 C0 E0            [24] 1233 	push	acc
      002147 74 40            [12] 1234 	mov	a,#0x40
      002149 C0 E0            [24] 1235 	push	acc
      00214B 8C 82            [24] 1236 	mov	dpl,r4
      00214D 8D 83            [24] 1237 	mov	dph,r5
      00214F 8E F0            [24] 1238 	mov	b,r6
      002151 EF               [12] 1239 	mov	a,r7
      002152 12 57 A7         [24] 1240 	lcall	___fsadd
      002155 AC 82            [24] 1241 	mov	r4,dpl
      002157 AD 83            [24] 1242 	mov	r5,dph
      002159 AE F0            [24] 1243 	mov	r6,b
      00215B FF               [12] 1244 	mov	r7,a
      00215C E5 81            [12] 1245 	mov	a,sp
      00215E 24 FC            [12] 1246 	add	a,#0xfc
      002160 F5 81            [12] 1247 	mov	sp,a
      002162 90 01 E1         [24] 1248 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      002165 EC               [12] 1249 	mov	a,r4
      002166 F0               [24] 1250 	movx	@dptr,a
      002167 ED               [12] 1251 	mov	a,r5
      002168 A3               [24] 1252 	inc	dptr
      002169 F0               [24] 1253 	movx	@dptr,a
      00216A EE               [12] 1254 	mov	a,r6
      00216B A3               [24] 1255 	inc	dptr
      00216C F0               [24] 1256 	movx	@dptr,a
      00216D EF               [12] 1257 	mov	a,r7
      00216E A3               [24] 1258 	inc	dptr
      00216F F0               [24] 1259 	movx	@dptr,a
                                   1260 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:25: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      002170 E4               [12] 1261 	clr	a
      002171 C0 E0            [24] 1262 	push	acc
      002173 C0 E0            [24] 1263 	push	acc
      002175 74 A0            [12] 1264 	mov	a,#0xa0
      002177 C0 E0            [24] 1265 	push	acc
      002179 74 40            [12] 1266 	mov	a,#0x40
      00217B C0 E0            [24] 1267 	push	acc
      00217D 8C 82            [24] 1268 	mov	dpl,r4
      00217F 8D 83            [24] 1269 	mov	dph,r5
      002181 8E F0            [24] 1270 	mov	b,r6
      002183 EF               [12] 1271 	mov	a,r7
      002184 12 56 D5         [24] 1272 	lcall	___fslt
      002187 AF 82            [24] 1273 	mov	r7,dpl
      002189 E5 81            [12] 1274 	mov	a,sp
      00218B 24 FC            [12] 1275 	add	a,#0xfc
      00218D F5 81            [12] 1276 	mov	sp,a
      00218F EF               [12] 1277 	mov	a,r7
      002190 60 0F            [24] 1278 	jz	00106$
      002192 90 01 E1         [24] 1279 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      002195 E4               [12] 1280 	clr	a
      002196 F0               [24] 1281 	movx	@dptr,a
      002197 A3               [24] 1282 	inc	dptr
      002198 F0               [24] 1283 	movx	@dptr,a
      002199 74 A0            [12] 1284 	mov	a,#0xa0
      00219B A3               [24] 1285 	inc	dptr
      00219C F0               [24] 1286 	movx	@dptr,a
      00219D 74 40            [12] 1287 	mov	a,#0x40
      00219F A3               [24] 1288 	inc	dptr
      0021A0 F0               [24] 1289 	movx	@dptr,a
      0021A1                       1290 00106$:
                                   1291 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:26: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      0021A1 90 01 E1         [24] 1292 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      0021A4 E0               [24] 1293 	movx	a,@dptr
      0021A5 C0 E0            [24] 1294 	push	acc
      0021A7 A3               [24] 1295 	inc	dptr
      0021A8 E0               [24] 1296 	movx	a,@dptr
      0021A9 C0 E0            [24] 1297 	push	acc
      0021AB A3               [24] 1298 	inc	dptr
      0021AC E0               [24] 1299 	movx	a,@dptr
      0021AD C0 E0            [24] 1300 	push	acc
      0021AF A3               [24] 1301 	inc	dptr
      0021B0 E0               [24] 1302 	movx	a,@dptr
      0021B1 C0 E0            [24] 1303 	push	acc
      0021B3 90 00 00         [24] 1304 	mov	dptr,#0x0000
      0021B6 75 F0 40         [24] 1305 	mov	b,#0x40
      0021B9 74 41            [12] 1306 	mov	a,#0x41
      0021BB 12 56 D5         [24] 1307 	lcall	___fslt
      0021BE AF 82            [24] 1308 	mov	r7,dpl
      0021C0 E5 81            [12] 1309 	mov	a,sp
      0021C2 24 FC            [12] 1310 	add	a,#0xfc
      0021C4 F5 81            [12] 1311 	mov	sp,a
      0021C6 EF               [12] 1312 	mov	a,r7
      0021C7 60 0E            [24] 1313 	jz	00108$
      0021C9 90 01 E1         [24] 1314 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      0021CC E4               [12] 1315 	clr	a
      0021CD F0               [24] 1316 	movx	@dptr,a
      0021CE A3               [24] 1317 	inc	dptr
      0021CF F0               [24] 1318 	movx	@dptr,a
      0021D0 74 40            [12] 1319 	mov	a,#0x40
      0021D2 A3               [24] 1320 	inc	dptr
      0021D3 F0               [24] 1321 	movx	@dptr,a
      0021D4 04               [12] 1322 	inc	a
      0021D5 A3               [24] 1323 	inc	dptr
      0021D6 F0               [24] 1324 	movx	@dptr,a
      0021D7                       1325 00108$:
                                   1326 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:27: return voltage;
      0021D7 90 01 E1         [24] 1327 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      0021DA E0               [24] 1328 	movx	a,@dptr
      0021DB FC               [12] 1329 	mov	r4,a
      0021DC A3               [24] 1330 	inc	dptr
      0021DD E0               [24] 1331 	movx	a,@dptr
      0021DE FD               [12] 1332 	mov	r5,a
      0021DF A3               [24] 1333 	inc	dptr
      0021E0 E0               [24] 1334 	movx	a,@dptr
      0021E1 FE               [12] 1335 	mov	r6,a
      0021E2 A3               [24] 1336 	inc	dptr
      0021E3 E0               [24] 1337 	movx	a,@dptr
      0021E4 8C 82            [24] 1338 	mov	dpl,r4
      0021E6 8D 83            [24] 1339 	mov	dph,r5
      0021E8 8E F0            [24] 1340 	mov	b,r6
                                   1341 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:28: }
      0021EA 22               [24] 1342 	ret
                                   1343 ;------------------------------------------------------------
                                   1344 ;Allocation info for local variables in function 'TempController_mapTempToRPM'
                                   1345 ;------------------------------------------------------------
                                   1346 ;sloc0                     Allocated with name '_TempController_mapTempToRPM_sloc0_1_0'
                                   1347 ;temp                      Allocated with name '_TempController_mapTempToRPM_temp_65536_196'
                                   1348 ;norm                      Allocated with name '_TempController_mapTempToRPM_norm_65536_197'
                                   1349 ;------------------------------------------------------------
                                   1350 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:30: static uint32_t TempController_mapTempToRPM(float temp) {
                                   1351 ;	-----------------------------------------
                                   1352 ;	 function TempController_mapTempToRPM
                                   1353 ;	-----------------------------------------
      0021EB                       1354 _TempController_mapTempToRPM:
      0021EB AF 82            [24] 1355 	mov	r7,dpl
      0021ED AE 83            [24] 1356 	mov	r6,dph
      0021EF AD F0            [24] 1357 	mov	r5,b
      0021F1 FC               [12] 1358 	mov	r4,a
      0021F2 90 01 E5         [24] 1359 	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
      0021F5 EF               [12] 1360 	mov	a,r7
      0021F6 F0               [24] 1361 	movx	@dptr,a
      0021F7 EE               [12] 1362 	mov	a,r6
      0021F8 A3               [24] 1363 	inc	dptr
      0021F9 F0               [24] 1364 	movx	@dptr,a
      0021FA ED               [12] 1365 	mov	a,r5
      0021FB A3               [24] 1366 	inc	dptr
      0021FC F0               [24] 1367 	movx	@dptr,a
      0021FD EC               [12] 1368 	mov	a,r4
      0021FE A3               [24] 1369 	inc	dptr
      0021FF F0               [24] 1370 	movx	@dptr,a
                                   1371 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:31: float norm = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
      002200 90 01 E5         [24] 1372 	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
      002203 E0               [24] 1373 	movx	a,@dptr
      002204 FC               [12] 1374 	mov	r4,a
      002205 A3               [24] 1375 	inc	dptr
      002206 E0               [24] 1376 	movx	a,@dptr
      002207 FD               [12] 1377 	mov	r5,a
      002208 A3               [24] 1378 	inc	dptr
      002209 E0               [24] 1379 	movx	a,@dptr
      00220A FE               [12] 1380 	mov	r6,a
      00220B A3               [24] 1381 	inc	dptr
      00220C E0               [24] 1382 	movx	a,@dptr
      00220D FF               [12] 1383 	mov	r7,a
      00220E E4               [12] 1384 	clr	a
      00220F C0 E0            [24] 1385 	push	acc
      002211 C0 E0            [24] 1386 	push	acc
      002213 74 F0            [12] 1387 	mov	a,#0xf0
      002215 C0 E0            [24] 1388 	push	acc
      002217 74 41            [12] 1389 	mov	a,#0x41
      002219 C0 E0            [24] 1390 	push	acc
      00221B 8C 82            [24] 1391 	mov	dpl,r4
      00221D 8D 83            [24] 1392 	mov	dph,r5
      00221F 8E F0            [24] 1393 	mov	b,r6
      002221 EF               [12] 1394 	mov	a,r7
      002222 12 48 12         [24] 1395 	lcall	___fssub
      002225 AC 82            [24] 1396 	mov	r4,dpl
      002227 AD 83            [24] 1397 	mov	r5,dph
      002229 AE F0            [24] 1398 	mov	r6,b
      00222B FF               [12] 1399 	mov	r7,a
      00222C E5 81            [12] 1400 	mov	a,sp
      00222E 24 FC            [12] 1401 	add	a,#0xfc
      002230 F5 81            [12] 1402 	mov	sp,a
      002232 E4               [12] 1403 	clr	a
      002233 C0 E0            [24] 1404 	push	acc
      002235 C0 E0            [24] 1405 	push	acc
      002237 74 70            [12] 1406 	mov	a,#0x70
      002239 C0 E0            [24] 1407 	push	acc
      00223B 74 41            [12] 1408 	mov	a,#0x41
      00223D C0 E0            [24] 1409 	push	acc
                                   1410 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:32: norm = (norm < 0.0f) ? 0.0f : (norm > 1.0f) ? 1.0f : norm;
      00223F 8C 82            [24] 1411 	mov	dpl,r4
      002241 8D 83            [24] 1412 	mov	dph,r5
      002243 8E F0            [24] 1413 	mov	b,r6
      002245 EF               [12] 1414 	mov	a,r7
      002246 12 5C 8F         [24] 1415 	lcall	___fsdiv
      002249 85 82 38         [24] 1416 	mov	_TempController_mapTempToRPM_sloc0_1_0,dpl
      00224C 85 83 39         [24] 1417 	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 1),dph
      00224F 85 F0 3A         [24] 1418 	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 2),b
      002252 F5 3B            [12] 1419 	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 3),a
      002254 E5 81            [12] 1420 	mov	a,sp
      002256 24 FC            [12] 1421 	add	a,#0xfc
      002258 F5 81            [12] 1422 	mov	sp,a
      00225A E4               [12] 1423 	clr	a
      00225B C0 E0            [24] 1424 	push	acc
      00225D C0 E0            [24] 1425 	push	acc
      00225F C0 E0            [24] 1426 	push	acc
      002261 C0 E0            [24] 1427 	push	acc
      002263 85 38 82         [24] 1428 	mov	dpl,_TempController_mapTempToRPM_sloc0_1_0
      002266 85 39 83         [24] 1429 	mov	dph,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
      002269 85 3A F0         [24] 1430 	mov	b,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
      00226C E5 3B            [12] 1431 	mov	a,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
      00226E 12 56 D5         [24] 1432 	lcall	___fslt
      002271 AB 82            [24] 1433 	mov	r3,dpl
      002273 E5 81            [12] 1434 	mov	a,sp
      002275 24 FC            [12] 1435 	add	a,#0xfc
      002277 F5 81            [12] 1436 	mov	sp,a
      002279 EB               [12] 1437 	mov	a,r3
      00227A 60 0A            [24] 1438 	jz	00103$
      00227C 78 00            [12] 1439 	mov	r0,#0x00
      00227E 79 00            [12] 1440 	mov	r1,#0x00
      002280 7A 00            [12] 1441 	mov	r2,#0x00
      002282 7B 00            [12] 1442 	mov	r3,#0x00
      002284 80 38            [24] 1443 	sjmp	00104$
      002286                       1444 00103$:
      002286 C0 38            [24] 1445 	push	_TempController_mapTempToRPM_sloc0_1_0
      002288 C0 39            [24] 1446 	push	(_TempController_mapTempToRPM_sloc0_1_0 + 1)
      00228A C0 3A            [24] 1447 	push	(_TempController_mapTempToRPM_sloc0_1_0 + 2)
      00228C C0 3B            [24] 1448 	push	(_TempController_mapTempToRPM_sloc0_1_0 + 3)
      00228E 90 00 00         [24] 1449 	mov	dptr,#0x0000
      002291 75 F0 80         [24] 1450 	mov	b,#0x80
      002294 74 3F            [12] 1451 	mov	a,#0x3f
      002296 12 56 D5         [24] 1452 	lcall	___fslt
      002299 AF 82            [24] 1453 	mov	r7,dpl
      00229B E5 81            [12] 1454 	mov	a,sp
      00229D 24 FC            [12] 1455 	add	a,#0xfc
      00229F F5 81            [12] 1456 	mov	sp,a
      0022A1 EF               [12] 1457 	mov	a,r7
      0022A2 60 0A            [24] 1458 	jz	00105$
      0022A4 7C 00            [12] 1459 	mov	r4,#0x00
      0022A6 7D 00            [12] 1460 	mov	r5,#0x00
      0022A8 7E 80            [12] 1461 	mov	r6,#0x80
      0022AA 7F 3F            [12] 1462 	mov	r7,#0x3f
      0022AC 80 08            [24] 1463 	sjmp	00106$
      0022AE                       1464 00105$:
      0022AE AC 38            [24] 1465 	mov	r4,_TempController_mapTempToRPM_sloc0_1_0
      0022B0 AD 39            [24] 1466 	mov	r5,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
      0022B2 AE 3A            [24] 1467 	mov	r6,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
      0022B4 AF 3B            [24] 1468 	mov	r7,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
      0022B6                       1469 00106$:
      0022B6 8C 00            [24] 1470 	mov	ar0,r4
      0022B8 8D 01            [24] 1471 	mov	ar1,r5
      0022BA 8E 02            [24] 1472 	mov	ar2,r6
      0022BC 8F 03            [24] 1473 	mov	ar3,r7
      0022BE                       1474 00104$:
                                   1475 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:33: return (uint32_t)(RPM_TARGET_MIN + (RPM_TARGET_MAX - RPM_TARGET_MIN) * norm);
      0022BE C0 00            [24] 1476 	push	ar0
      0022C0 C0 01            [24] 1477 	push	ar1
      0022C2 C0 02            [24] 1478 	push	ar2
      0022C4 C0 03            [24] 1479 	push	ar3
      0022C6 90 00 00         [24] 1480 	mov	dptr,#0x0000
      0022C9 75 F0 16         [24] 1481 	mov	b,#0x16
      0022CC 74 45            [12] 1482 	mov	a,#0x45
      0022CE 12 48 95         [24] 1483 	lcall	___fsmul
      0022D1 AC 82            [24] 1484 	mov	r4,dpl
      0022D3 AD 83            [24] 1485 	mov	r5,dph
      0022D5 AE F0            [24] 1486 	mov	r6,b
      0022D7 FF               [12] 1487 	mov	r7,a
      0022D8 E5 81            [12] 1488 	mov	a,sp
      0022DA 24 FC            [12] 1489 	add	a,#0xfc
      0022DC F5 81            [12] 1490 	mov	sp,a
      0022DE E4               [12] 1491 	clr	a
      0022DF C0 E0            [24] 1492 	push	acc
      0022E1 C0 E0            [24] 1493 	push	acc
      0022E3 74 16            [12] 1494 	mov	a,#0x16
      0022E5 C0 E0            [24] 1495 	push	acc
      0022E7 74 44            [12] 1496 	mov	a,#0x44
      0022E9 C0 E0            [24] 1497 	push	acc
      0022EB 8C 82            [24] 1498 	mov	dpl,r4
      0022ED 8D 83            [24] 1499 	mov	dph,r5
      0022EF 8E F0            [24] 1500 	mov	b,r6
      0022F1 EF               [12] 1501 	mov	a,r7
      0022F2 12 57 A7         [24] 1502 	lcall	___fsadd
      0022F5 AC 82            [24] 1503 	mov	r4,dpl
      0022F7 AD 83            [24] 1504 	mov	r5,dph
      0022F9 AE F0            [24] 1505 	mov	r6,b
      0022FB FF               [12] 1506 	mov	r7,a
      0022FC E5 81            [12] 1507 	mov	a,sp
      0022FE 24 FC            [12] 1508 	add	a,#0xfc
      002300 F5 81            [12] 1509 	mov	sp,a
      002302 8C 82            [24] 1510 	mov	dpl,r4
      002304 8D 83            [24] 1511 	mov	dph,r5
      002306 8E F0            [24] 1512 	mov	b,r6
      002308 EF               [12] 1513 	mov	a,r7
                                   1514 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:34: }
      002309 02 4E C9         [24] 1515 	ljmp	___fs2ulong
                                   1516 ;------------------------------------------------------------
                                   1517 ;Allocation info for local variables in function 'TempController_begin'
                                   1518 ;------------------------------------------------------------
                                   1519 ;sloc0                     Allocated with name '_TempController_begin_sloc0_1_0'
                                   1520 ;sloc1                     Allocated with name '_TempController_begin_sloc1_1_0'
                                   1521 ;sloc2                     Allocated with name '_TempController_begin_sloc2_1_0'
                                   1522 ;sensor                    Allocated with name '_TempController_begin_PARM_2'
                                   1523 ;vc                        Allocated with name '_TempController_begin_PARM_3'
                                   1524 ;tc                        Allocated with name '_TempController_begin_tc_65536_198'
                                   1525 ;test_temp                 Allocated with name '_TempController_begin_test_temp_65537_200'
                                   1526 ;------------------------------------------------------------
                                   1527 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:36: void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc) {
                                   1528 ;	-----------------------------------------
                                   1529 ;	 function TempController_begin
                                   1530 ;	-----------------------------------------
      00230C                       1531 _TempController_begin:
      00230C AF F0            [24] 1532 	mov	r7,b
      00230E AE 83            [24] 1533 	mov	r6,dph
      002310 E5 82            [12] 1534 	mov	a,dpl
      002312 90 01 EF         [24] 1535 	mov	dptr,#_TempController_begin_tc_65536_198
      002315 F0               [24] 1536 	movx	@dptr,a
      002316 EE               [12] 1537 	mov	a,r6
      002317 A3               [24] 1538 	inc	dptr
      002318 F0               [24] 1539 	movx	@dptr,a
      002319 EF               [12] 1540 	mov	a,r7
      00231A A3               [24] 1541 	inc	dptr
      00231B F0               [24] 1542 	movx	@dptr,a
                                   1543 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:37: tc->tempSensor = sensor;
      00231C 90 01 EF         [24] 1544 	mov	dptr,#_TempController_begin_tc_65536_198
      00231F E0               [24] 1545 	movx	a,@dptr
      002320 FD               [12] 1546 	mov	r5,a
      002321 A3               [24] 1547 	inc	dptr
      002322 E0               [24] 1548 	movx	a,@dptr
      002323 FE               [12] 1549 	mov	r6,a
      002324 A3               [24] 1550 	inc	dptr
      002325 E0               [24] 1551 	movx	a,@dptr
      002326 FF               [12] 1552 	mov	r7,a
      002327 90 01 E9         [24] 1553 	mov	dptr,#_TempController_begin_PARM_2
      00232A E0               [24] 1554 	movx	a,@dptr
      00232B F5 3C            [12] 1555 	mov	_TempController_begin_sloc0_1_0,a
      00232D A3               [24] 1556 	inc	dptr
      00232E E0               [24] 1557 	movx	a,@dptr
      00232F F5 3D            [12] 1558 	mov	(_TempController_begin_sloc0_1_0 + 1),a
      002331 A3               [24] 1559 	inc	dptr
      002332 E0               [24] 1560 	movx	a,@dptr
      002333 F5 3E            [12] 1561 	mov	(_TempController_begin_sloc0_1_0 + 2),a
      002335 8D 82            [24] 1562 	mov	dpl,r5
      002337 8E 83            [24] 1563 	mov	dph,r6
      002339 8F F0            [24] 1564 	mov	b,r7
      00233B E5 3C            [12] 1565 	mov	a,_TempController_begin_sloc0_1_0
      00233D 12 56 BA         [24] 1566 	lcall	__gptrput
      002340 A3               [24] 1567 	inc	dptr
      002341 E5 3D            [12] 1568 	mov	a,(_TempController_begin_sloc0_1_0 + 1)
      002343 12 56 BA         [24] 1569 	lcall	__gptrput
      002346 A3               [24] 1570 	inc	dptr
      002347 E5 3E            [12] 1571 	mov	a,(_TempController_begin_sloc0_1_0 + 2)
      002349 12 56 BA         [24] 1572 	lcall	__gptrput
                                   1573 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:38: tc->voltCtrl = vc;
      00234C 74 03            [12] 1574 	mov	a,#0x03
      00234E 2D               [12] 1575 	add	a,r5
      00234F F5 3F            [12] 1576 	mov	_TempController_begin_sloc1_1_0,a
      002351 E4               [12] 1577 	clr	a
      002352 3E               [12] 1578 	addc	a,r6
      002353 F5 40            [12] 1579 	mov	(_TempController_begin_sloc1_1_0 + 1),a
      002355 8F 41            [24] 1580 	mov	(_TempController_begin_sloc1_1_0 + 2),r7
      002357 90 01 EC         [24] 1581 	mov	dptr,#_TempController_begin_PARM_3
      00235A E0               [24] 1582 	movx	a,@dptr
      00235B FA               [12] 1583 	mov	r2,a
      00235C A3               [24] 1584 	inc	dptr
      00235D E0               [24] 1585 	movx	a,@dptr
      00235E FB               [12] 1586 	mov	r3,a
      00235F A3               [24] 1587 	inc	dptr
      002360 E0               [24] 1588 	movx	a,@dptr
      002361 FC               [12] 1589 	mov	r4,a
      002362 85 3F 82         [24] 1590 	mov	dpl,_TempController_begin_sloc1_1_0
      002365 85 40 83         [24] 1591 	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
      002368 85 41 F0         [24] 1592 	mov	b,(_TempController_begin_sloc1_1_0 + 2)
      00236B EA               [12] 1593 	mov	a,r2
      00236C 12 56 BA         [24] 1594 	lcall	__gptrput
      00236F A3               [24] 1595 	inc	dptr
      002370 EB               [12] 1596 	mov	a,r3
      002371 12 56 BA         [24] 1597 	lcall	__gptrput
      002374 A3               [24] 1598 	inc	dptr
      002375 EC               [12] 1599 	mov	a,r4
      002376 12 56 BA         [24] 1600 	lcall	__gptrput
                                   1601 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:39: tc->current_temp = 25.0f;
      002379 74 06            [12] 1602 	mov	a,#0x06
      00237B 2D               [12] 1603 	add	a,r5
      00237C F5 3F            [12] 1604 	mov	_TempController_begin_sloc1_1_0,a
      00237E E4               [12] 1605 	clr	a
      00237F 3E               [12] 1606 	addc	a,r6
      002380 F5 40            [12] 1607 	mov	(_TempController_begin_sloc1_1_0 + 1),a
      002382 8F 41            [24] 1608 	mov	(_TempController_begin_sloc1_1_0 + 2),r7
      002384 85 3F 82         [24] 1609 	mov	dpl,_TempController_begin_sloc1_1_0
      002387 85 40 83         [24] 1610 	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
      00238A 85 41 F0         [24] 1611 	mov	b,(_TempController_begin_sloc1_1_0 + 2)
      00238D E4               [12] 1612 	clr	a
      00238E 12 56 BA         [24] 1613 	lcall	__gptrput
      002391 A3               [24] 1614 	inc	dptr
      002392 12 56 BA         [24] 1615 	lcall	__gptrput
      002395 A3               [24] 1616 	inc	dptr
      002396 74 C8            [12] 1617 	mov	a,#0xc8
      002398 12 56 BA         [24] 1618 	lcall	__gptrput
      00239B A3               [24] 1619 	inc	dptr
      00239C 74 41            [12] 1620 	mov	a,#0x41
      00239E 12 56 BA         [24] 1621 	lcall	__gptrput
                                   1622 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:40: tc->target_rpm = RPM_TARGET_MIN;
      0023A1 74 0A            [12] 1623 	mov	a,#0x0a
      0023A3 2D               [12] 1624 	add	a,r5
      0023A4 F8               [12] 1625 	mov	r0,a
      0023A5 E4               [12] 1626 	clr	a
      0023A6 3E               [12] 1627 	addc	a,r6
      0023A7 F9               [12] 1628 	mov	r1,a
      0023A8 8F 04            [24] 1629 	mov	ar4,r7
      0023AA 88 82            [24] 1630 	mov	dpl,r0
      0023AC 89 83            [24] 1631 	mov	dph,r1
      0023AE 8C F0            [24] 1632 	mov	b,r4
      0023B0 74 58            [12] 1633 	mov	a,#0x58
      0023B2 12 56 BA         [24] 1634 	lcall	__gptrput
      0023B5 A3               [24] 1635 	inc	dptr
      0023B6 74 02            [12] 1636 	mov	a,#0x02
      0023B8 12 56 BA         [24] 1637 	lcall	__gptrput
      0023BB A3               [24] 1638 	inc	dptr
      0023BC E4               [12] 1639 	clr	a
      0023BD 12 56 BA         [24] 1640 	lcall	__gptrput
      0023C0 A3               [24] 1641 	inc	dptr
      0023C1 12 56 BA         [24] 1642 	lcall	__gptrput
                                   1643 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:41: tc->sensor_ready = false;
      0023C4 74 0E            [12] 1644 	mov	a,#0x0e
      0023C6 2D               [12] 1645 	add	a,r5
      0023C7 F5 42            [12] 1646 	mov	_TempController_begin_sloc2_1_0,a
      0023C9 E4               [12] 1647 	clr	a
      0023CA 3E               [12] 1648 	addc	a,r6
      0023CB F5 43            [12] 1649 	mov	(_TempController_begin_sloc2_1_0 + 1),a
      0023CD 8F 44            [24] 1650 	mov	(_TempController_begin_sloc2_1_0 + 2),r7
      0023CF 85 42 82         [24] 1651 	mov	dpl,_TempController_begin_sloc2_1_0
      0023D2 85 43 83         [24] 1652 	mov	dph,(_TempController_begin_sloc2_1_0 + 1)
      0023D5 85 44 F0         [24] 1653 	mov	b,(_TempController_begin_sloc2_1_0 + 2)
      0023D8 E4               [12] 1654 	clr	a
      0023D9 12 56 BA         [24] 1655 	lcall	__gptrput
                                   1656 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:44: DS18B20_begin(tc->tempSensor);
      0023DC 85 3C 82         [24] 1657 	mov	dpl,_TempController_begin_sloc0_1_0
      0023DF 85 3D 83         [24] 1658 	mov	dph,(_TempController_begin_sloc0_1_0 + 1)
      0023E2 85 3E F0         [24] 1659 	mov	b,(_TempController_begin_sloc0_1_0 + 2)
      0023E5 C0 07            [24] 1660 	push	ar7
      0023E7 C0 06            [24] 1661 	push	ar6
      0023E9 C0 05            [24] 1662 	push	ar5
      0023EB 12 04 C9         [24] 1663 	lcall	_DS18B20_begin
      0023EE D0 05            [24] 1664 	pop	ar5
      0023F0 D0 06            [24] 1665 	pop	ar6
      0023F2 D0 07            [24] 1666 	pop	ar7
                                   1667 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:47: DS18B20_setResolution(tc->tempSensor, DS18B20_RESOLUTION_10BIT);
      0023F4 8D 82            [24] 1668 	mov	dpl,r5
      0023F6 8E 83            [24] 1669 	mov	dph,r6
      0023F8 8F F0            [24] 1670 	mov	b,r7
      0023FA 12 5D 5A         [24] 1671 	lcall	__gptrget
      0023FD F8               [12] 1672 	mov	r0,a
      0023FE A3               [24] 1673 	inc	dptr
      0023FF 12 5D 5A         [24] 1674 	lcall	__gptrget
      002402 F9               [12] 1675 	mov	r1,a
      002403 A3               [24] 1676 	inc	dptr
      002404 12 5D 5A         [24] 1677 	lcall	__gptrget
      002407 FC               [12] 1678 	mov	r4,a
      002408 90 00 D0         [24] 1679 	mov	dptr,#_DS18B20_setResolution_PARM_2
      00240B 74 3F            [12] 1680 	mov	a,#0x3f
      00240D F0               [24] 1681 	movx	@dptr,a
      00240E 88 82            [24] 1682 	mov	dpl,r0
      002410 89 83            [24] 1683 	mov	dph,r1
      002412 8C F0            [24] 1684 	mov	b,r4
      002414 C0 07            [24] 1685 	push	ar7
      002416 C0 06            [24] 1686 	push	ar6
      002418 C0 05            [24] 1687 	push	ar5
      00241A 12 08 0F         [24] 1688 	lcall	_DS18B20_setResolution
      00241D D0 05            [24] 1689 	pop	ar5
      00241F D0 06            [24] 1690 	pop	ar6
      002421 D0 07            [24] 1691 	pop	ar7
                                   1692 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:50: DS18B20_setAlarmTemperature(tc->tempSensor, TEMP_MAX, TEMP_MIN);
      002423 8D 82            [24] 1693 	mov	dpl,r5
      002425 8E 83            [24] 1694 	mov	dph,r6
      002427 8F F0            [24] 1695 	mov	b,r7
      002429 12 5D 5A         [24] 1696 	lcall	__gptrget
      00242C FA               [12] 1697 	mov	r2,a
      00242D A3               [24] 1698 	inc	dptr
      00242E 12 5D 5A         [24] 1699 	lcall	__gptrget
      002431 FB               [12] 1700 	mov	r3,a
      002432 A3               [24] 1701 	inc	dptr
      002433 12 5D 5A         [24] 1702 	lcall	__gptrget
      002436 FC               [12] 1703 	mov	r4,a
      002437 90 00 DD         [24] 1704 	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_2
      00243A 74 2D            [12] 1705 	mov	a,#0x2d
      00243C F0               [24] 1706 	movx	@dptr,a
      00243D 90 00 DE         [24] 1707 	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_3
      002440 74 1E            [12] 1708 	mov	a,#0x1e
      002442 F0               [24] 1709 	movx	@dptr,a
      002443 8A 82            [24] 1710 	mov	dpl,r2
      002445 8B 83            [24] 1711 	mov	dph,r3
      002447 8C F0            [24] 1712 	mov	b,r4
      002449 C0 07            [24] 1713 	push	ar7
      00244B C0 06            [24] 1714 	push	ar6
      00244D C0 05            [24] 1715 	push	ar5
      00244F 12 09 32         [24] 1716 	lcall	_DS18B20_setAlarmTemperature
                                   1717 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:53: delay(200);
      002452 90 00 C8         [24] 1718 	mov	dptr,#(0xc8&0x00ff)
      002455 E4               [12] 1719 	clr	a
      002456 F5 F0            [12] 1720 	mov	b,a
      002458 12 4F BF         [24] 1721 	lcall	_delay
      00245B D0 05            [24] 1722 	pop	ar5
      00245D D0 06            [24] 1723 	pop	ar6
      00245F D0 07            [24] 1724 	pop	ar7
                                   1725 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:54: float test_temp = DS18B20_readTemperatureFast(tc->tempSensor);
      002461 8D 82            [24] 1726 	mov	dpl,r5
      002463 8E 83            [24] 1727 	mov	dph,r6
      002465 8F F0            [24] 1728 	mov	b,r7
      002467 12 5D 5A         [24] 1729 	lcall	__gptrget
      00246A FD               [12] 1730 	mov	r5,a
      00246B A3               [24] 1731 	inc	dptr
      00246C 12 5D 5A         [24] 1732 	lcall	__gptrget
      00246F FE               [12] 1733 	mov	r6,a
      002470 A3               [24] 1734 	inc	dptr
      002471 12 5D 5A         [24] 1735 	lcall	__gptrget
      002474 FF               [12] 1736 	mov	r7,a
      002475 8D 82            [24] 1737 	mov	dpl,r5
      002477 8E 83            [24] 1738 	mov	dph,r6
      002479 8F F0            [24] 1739 	mov	b,r7
      00247B 12 06 4E         [24] 1740 	lcall	_DS18B20_readTemperatureFast
      00247E AE 82            [24] 1741 	mov	r6,dpl
      002480 AD 83            [24] 1742 	mov	r5,dph
      002482 AC F0            [24] 1743 	mov	r4,b
      002484 FF               [12] 1744 	mov	r7,a
                                   1745 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:55: if (test_temp != -999.0) {
      002485 C0 07            [24] 1746 	push	ar7
      002487 C0 06            [24] 1747 	push	ar6
      002489 C0 05            [24] 1748 	push	ar5
      00248B C0 04            [24] 1749 	push	ar4
      00248D E4               [12] 1750 	clr	a
      00248E C0 E0            [24] 1751 	push	acc
      002490 74 C0            [12] 1752 	mov	a,#0xc0
      002492 C0 E0            [24] 1753 	push	acc
      002494 74 79            [12] 1754 	mov	a,#0x79
      002496 C0 E0            [24] 1755 	push	acc
      002498 74 C4            [12] 1756 	mov	a,#0xc4
      00249A C0 E0            [24] 1757 	push	acc
      00249C 8E 82            [24] 1758 	mov	dpl,r6
      00249E 8D 83            [24] 1759 	mov	dph,r5
      0024A0 8C F0            [24] 1760 	mov	b,r4
      0024A2 EF               [12] 1761 	mov	a,r7
      0024A3 12 4D 6F         [24] 1762 	lcall	___fseq
      0024A6 E5 81            [12] 1763 	mov	a,sp
      0024A8 24 FC            [12] 1764 	add	a,#0xfc
      0024AA F5 81            [12] 1765 	mov	sp,a
      0024AC D0 04            [24] 1766 	pop	ar4
      0024AE D0 05            [24] 1767 	pop	ar5
      0024B0 D0 06            [24] 1768 	pop	ar6
      0024B2 D0 07            [24] 1769 	pop	ar7
      0024B4 E5 82            [12] 1770 	mov	a,dpl
      0024B6 24 FF            [12] 1771 	add	a,#0xff
      0024B8 92 01            [24] 1772 	mov	_TempController_begin_sloc3_1_0,c
      0024BA 40 2A            [24] 1773 	jc	00103$
                                   1774 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:56: tc->sensor_ready = true;
      0024BC 85 42 82         [24] 1775 	mov	dpl,_TempController_begin_sloc2_1_0
      0024BF 85 43 83         [24] 1776 	mov	dph,(_TempController_begin_sloc2_1_0 + 1)
      0024C2 85 44 F0         [24] 1777 	mov	b,(_TempController_begin_sloc2_1_0 + 2)
      0024C5 74 01            [12] 1778 	mov	a,#0x01
      0024C7 12 56 BA         [24] 1779 	lcall	__gptrput
                                   1780 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:57: tc->current_temp = test_temp;
      0024CA 85 3F 82         [24] 1781 	mov	dpl,_TempController_begin_sloc1_1_0
      0024CD 85 40 83         [24] 1782 	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
      0024D0 85 41 F0         [24] 1783 	mov	b,(_TempController_begin_sloc1_1_0 + 2)
      0024D3 EE               [12] 1784 	mov	a,r6
      0024D4 12 56 BA         [24] 1785 	lcall	__gptrput
      0024D7 A3               [24] 1786 	inc	dptr
      0024D8 ED               [12] 1787 	mov	a,r5
      0024D9 12 56 BA         [24] 1788 	lcall	__gptrput
      0024DC A3               [24] 1789 	inc	dptr
      0024DD EC               [12] 1790 	mov	a,r4
      0024DE 12 56 BA         [24] 1791 	lcall	__gptrput
      0024E1 A3               [24] 1792 	inc	dptr
      0024E2 EF               [12] 1793 	mov	a,r7
                                   1794 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:59: }
      0024E3 02 56 BA         [24] 1795 	ljmp	__gptrput
      0024E6                       1796 00103$:
      0024E6 22               [24] 1797 	ret
                                   1798 ;------------------------------------------------------------
                                   1799 ;Allocation info for local variables in function 'TempController_update'
                                   1800 ;------------------------------------------------------------
                                   1801 ;sloc0                     Allocated with name '_TempController_update_sloc0_1_0'
                                   1802 ;sloc1                     Allocated with name '_TempController_update_sloc1_1_0'
                                   1803 ;tc                        Allocated with name '_TempController_update_tc_65536_202'
                                   1804 ;temp                      Allocated with name '_TempController_update_temp_65537_205'
                                   1805 ;target_voltage            Allocated with name '_TempController_update_target_voltage_65538_207'
                                   1806 ;------------------------------------------------------------
                                   1807 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:61: bool TempController_update(TempController* tc) {
                                   1808 ;	-----------------------------------------
                                   1809 ;	 function TempController_update
                                   1810 ;	-----------------------------------------
      0024E7                       1811 _TempController_update:
      0024E7 AF F0            [24] 1812 	mov	r7,b
      0024E9 AE 83            [24] 1813 	mov	r6,dph
      0024EB E5 82            [12] 1814 	mov	a,dpl
      0024ED 90 01 F2         [24] 1815 	mov	dptr,#_TempController_update_tc_65536_202
      0024F0 F0               [24] 1816 	movx	@dptr,a
      0024F1 EE               [12] 1817 	mov	a,r6
      0024F2 A3               [24] 1818 	inc	dptr
      0024F3 F0               [24] 1819 	movx	@dptr,a
      0024F4 EF               [12] 1820 	mov	a,r7
      0024F5 A3               [24] 1821 	inc	dptr
      0024F6 F0               [24] 1822 	movx	@dptr,a
                                   1823 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:62: if (!tc->sensor_ready) {
      0024F7 90 01 F2         [24] 1824 	mov	dptr,#_TempController_update_tc_65536_202
      0024FA E0               [24] 1825 	movx	a,@dptr
      0024FB FD               [12] 1826 	mov	r5,a
      0024FC A3               [24] 1827 	inc	dptr
      0024FD E0               [24] 1828 	movx	a,@dptr
      0024FE FE               [12] 1829 	mov	r6,a
      0024FF A3               [24] 1830 	inc	dptr
      002500 E0               [24] 1831 	movx	a,@dptr
      002501 FF               [12] 1832 	mov	r7,a
      002502 74 0E            [12] 1833 	mov	a,#0x0e
      002504 2D               [12] 1834 	add	a,r5
      002505 FA               [12] 1835 	mov	r2,a
      002506 E4               [12] 1836 	clr	a
      002507 3E               [12] 1837 	addc	a,r6
      002508 FB               [12] 1838 	mov	r3,a
      002509 8F 04            [24] 1839 	mov	ar4,r7
      00250B 8A 82            [24] 1840 	mov	dpl,r2
      00250D 8B 83            [24] 1841 	mov	dph,r3
      00250F 8C F0            [24] 1842 	mov	b,r4
      002511 12 5D 5A         [24] 1843 	lcall	__gptrget
                                   1844 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:63: return false;
      002514 70 03            [24] 1845 	jnz	00102$
      002516 F5 82            [12] 1846 	mov	dpl,a
      002518 22               [24] 1847 	ret
      002519                       1848 00102$:
                                   1849 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:66: float temp = DS18B20_readTemperatureFast(tc->tempSensor);
      002519 8D 82            [24] 1850 	mov	dpl,r5
      00251B 8E 83            [24] 1851 	mov	dph,r6
      00251D 8F F0            [24] 1852 	mov	b,r7
      00251F 12 5D 5A         [24] 1853 	lcall	__gptrget
      002522 FA               [12] 1854 	mov	r2,a
      002523 A3               [24] 1855 	inc	dptr
      002524 12 5D 5A         [24] 1856 	lcall	__gptrget
      002527 FB               [12] 1857 	mov	r3,a
      002528 A3               [24] 1858 	inc	dptr
      002529 12 5D 5A         [24] 1859 	lcall	__gptrget
      00252C FC               [12] 1860 	mov	r4,a
      00252D 8A 82            [24] 1861 	mov	dpl,r2
      00252F 8B 83            [24] 1862 	mov	dph,r3
      002531 8C F0            [24] 1863 	mov	b,r4
      002533 C0 07            [24] 1864 	push	ar7
      002535 C0 06            [24] 1865 	push	ar6
      002537 C0 05            [24] 1866 	push	ar5
      002539 12 06 4E         [24] 1867 	lcall	_DS18B20_readTemperatureFast
      00253C 85 82 45         [24] 1868 	mov	_TempController_update_sloc0_1_0,dpl
      00253F 85 83 46         [24] 1869 	mov	(_TempController_update_sloc0_1_0 + 1),dph
      002542 85 F0 47         [24] 1870 	mov	(_TempController_update_sloc0_1_0 + 2),b
      002545 F5 48            [12] 1871 	mov	(_TempController_update_sloc0_1_0 + 3),a
                                   1872 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:68: if (temp == -999.0) {
      002547 E4               [12] 1873 	clr	a
      002548 C0 E0            [24] 1874 	push	acc
      00254A 74 C0            [12] 1875 	mov	a,#0xc0
      00254C C0 E0            [24] 1876 	push	acc
      00254E 74 79            [12] 1877 	mov	a,#0x79
      002550 C0 E0            [24] 1878 	push	acc
      002552 74 C4            [12] 1879 	mov	a,#0xc4
      002554 C0 E0            [24] 1880 	push	acc
      002556 85 45 82         [24] 1881 	mov	dpl,_TempController_update_sloc0_1_0
      002559 85 46 83         [24] 1882 	mov	dph,(_TempController_update_sloc0_1_0 + 1)
      00255C 85 47 F0         [24] 1883 	mov	b,(_TempController_update_sloc0_1_0 + 2)
      00255F E5 48            [12] 1884 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      002561 12 4D 6F         [24] 1885 	lcall	___fseq
      002564 A8 82            [24] 1886 	mov	r0,dpl
      002566 E5 81            [12] 1887 	mov	a,sp
      002568 24 FC            [12] 1888 	add	a,#0xfc
      00256A F5 81            [12] 1889 	mov	sp,a
      00256C D0 05            [24] 1890 	pop	ar5
      00256E D0 06            [24] 1891 	pop	ar6
      002570 D0 07            [24] 1892 	pop	ar7
      002572 E8               [12] 1893 	mov	a,r0
      002573 60 04            [24] 1894 	jz	00104$
                                   1895 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:69: return false;
      002575 75 82 00         [24] 1896 	mov	dpl,#0x00
      002578 22               [24] 1897 	ret
      002579                       1898 00104$:
                                   1899 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:72: tc->current_temp = temp;
      002579 74 06            [12] 1900 	mov	a,#0x06
      00257B 2D               [12] 1901 	add	a,r5
      00257C F8               [12] 1902 	mov	r0,a
      00257D E4               [12] 1903 	clr	a
      00257E 3E               [12] 1904 	addc	a,r6
      00257F FB               [12] 1905 	mov	r3,a
      002580 8F 04            [24] 1906 	mov	ar4,r7
      002582 88 82            [24] 1907 	mov	dpl,r0
      002584 8B 83            [24] 1908 	mov	dph,r3
      002586 8C F0            [24] 1909 	mov	b,r4
      002588 E5 45            [12] 1910 	mov	a,_TempController_update_sloc0_1_0
      00258A 12 56 BA         [24] 1911 	lcall	__gptrput
      00258D A3               [24] 1912 	inc	dptr
      00258E E5 46            [12] 1913 	mov	a,(_TempController_update_sloc0_1_0 + 1)
      002590 12 56 BA         [24] 1914 	lcall	__gptrput
      002593 A3               [24] 1915 	inc	dptr
      002594 E5 47            [12] 1916 	mov	a,(_TempController_update_sloc0_1_0 + 2)
      002596 12 56 BA         [24] 1917 	lcall	__gptrput
      002599 A3               [24] 1918 	inc	dptr
      00259A E5 48            [12] 1919 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      00259C 12 56 BA         [24] 1920 	lcall	__gptrput
                                   1921 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:77: target_voltage = TempController_mapTempToVoltageLinear(temp);
      00259F 85 45 82         [24] 1922 	mov	dpl,_TempController_update_sloc0_1_0
      0025A2 85 46 83         [24] 1923 	mov	dph,(_TempController_update_sloc0_1_0 + 1)
      0025A5 85 47 F0         [24] 1924 	mov	b,(_TempController_update_sloc0_1_0 + 2)
      0025A8 E5 48            [12] 1925 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      0025AA C0 07            [24] 1926 	push	ar7
      0025AC C0 06            [24] 1927 	push	ar6
      0025AE C0 05            [24] 1928 	push	ar5
      0025B0 12 1F 1C         [24] 1929 	lcall	_TempController_mapTempToVoltageLinear
      0025B3 85 82 49         [24] 1930 	mov	_TempController_update_sloc1_1_0,dpl
      0025B6 85 83 4A         [24] 1931 	mov	(_TempController_update_sloc1_1_0 + 1),dph
      0025B9 85 F0 4B         [24] 1932 	mov	(_TempController_update_sloc1_1_0 + 2),b
      0025BC F5 4C            [12] 1933 	mov	(_TempController_update_sloc1_1_0 + 3),a
      0025BE D0 05            [24] 1934 	pop	ar5
      0025C0 D0 06            [24] 1935 	pop	ar6
      0025C2 D0 07            [24] 1936 	pop	ar7
                                   1937 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:82: VoltageController_setVoltage(tc->voltCtrl, target_voltage);
      0025C4 74 03            [12] 1938 	mov	a,#0x03
      0025C6 2D               [12] 1939 	add	a,r5
      0025C7 F8               [12] 1940 	mov	r0,a
      0025C8 E4               [12] 1941 	clr	a
      0025C9 3E               [12] 1942 	addc	a,r6
      0025CA FB               [12] 1943 	mov	r3,a
      0025CB 8F 04            [24] 1944 	mov	ar4,r7
      0025CD 88 82            [24] 1945 	mov	dpl,r0
      0025CF 8B 83            [24] 1946 	mov	dph,r3
      0025D1 8C F0            [24] 1947 	mov	b,r4
      0025D3 12 5D 5A         [24] 1948 	lcall	__gptrget
      0025D6 F8               [12] 1949 	mov	r0,a
      0025D7 A3               [24] 1950 	inc	dptr
      0025D8 12 5D 5A         [24] 1951 	lcall	__gptrget
      0025DB FB               [12] 1952 	mov	r3,a
      0025DC A3               [24] 1953 	inc	dptr
      0025DD 12 5D 5A         [24] 1954 	lcall	__gptrget
      0025E0 FC               [12] 1955 	mov	r4,a
      0025E1 90 02 48         [24] 1956 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      0025E4 E5 49            [12] 1957 	mov	a,_TempController_update_sloc1_1_0
      0025E6 F0               [24] 1958 	movx	@dptr,a
      0025E7 E5 4A            [12] 1959 	mov	a,(_TempController_update_sloc1_1_0 + 1)
      0025E9 A3               [24] 1960 	inc	dptr
      0025EA F0               [24] 1961 	movx	@dptr,a
      0025EB E5 4B            [12] 1962 	mov	a,(_TempController_update_sloc1_1_0 + 2)
      0025ED A3               [24] 1963 	inc	dptr
      0025EE F0               [24] 1964 	movx	@dptr,a
      0025EF E5 4C            [12] 1965 	mov	a,(_TempController_update_sloc1_1_0 + 3)
      0025F1 A3               [24] 1966 	inc	dptr
      0025F2 F0               [24] 1967 	movx	@dptr,a
      0025F3 88 82            [24] 1968 	mov	dpl,r0
      0025F5 8B 83            [24] 1969 	mov	dph,r3
      0025F7 8C F0            [24] 1970 	mov	b,r4
      0025F9 C0 07            [24] 1971 	push	ar7
      0025FB C0 06            [24] 1972 	push	ar6
      0025FD C0 05            [24] 1973 	push	ar5
      0025FF 12 43 61         [24] 1974 	lcall	_VoltageController_setVoltage
      002602 D0 05            [24] 1975 	pop	ar5
      002604 D0 06            [24] 1976 	pop	ar6
                                   1977 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:84: tc->target_rpm = TempController_mapTempToRPM(temp);
      002606 74 0A            [12] 1978 	mov	a,#0x0a
      002608 2D               [12] 1979 	add	a,r5
      002609 FD               [12] 1980 	mov	r5,a
      00260A E4               [12] 1981 	clr	a
      00260B 3E               [12] 1982 	addc	a,r6
      00260C FE               [12] 1983 	mov	r6,a
      00260D 85 45 82         [24] 1984 	mov	dpl,_TempController_update_sloc0_1_0
      002610 85 46 83         [24] 1985 	mov	dph,(_TempController_update_sloc0_1_0 + 1)
      002613 85 47 F0         [24] 1986 	mov	b,(_TempController_update_sloc0_1_0 + 2)
      002616 E5 48            [12] 1987 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      002618 C0 06            [24] 1988 	push	ar6
      00261A C0 05            [24] 1989 	push	ar5
      00261C 12 21 EB         [24] 1990 	lcall	_TempController_mapTempToRPM
      00261F A9 82            [24] 1991 	mov	r1,dpl
      002621 AA 83            [24] 1992 	mov	r2,dph
      002623 AB F0            [24] 1993 	mov	r3,b
      002625 FC               [12] 1994 	mov	r4,a
      002626 D0 05            [24] 1995 	pop	ar5
      002628 D0 06            [24] 1996 	pop	ar6
      00262A D0 07            [24] 1997 	pop	ar7
      00262C 8D 82            [24] 1998 	mov	dpl,r5
      00262E 8E 83            [24] 1999 	mov	dph,r6
      002630 8F F0            [24] 2000 	mov	b,r7
      002632 E9               [12] 2001 	mov	a,r1
      002633 12 56 BA         [24] 2002 	lcall	__gptrput
      002636 A3               [24] 2003 	inc	dptr
      002637 EA               [12] 2004 	mov	a,r2
      002638 12 56 BA         [24] 2005 	lcall	__gptrput
      00263B A3               [24] 2006 	inc	dptr
      00263C EB               [12] 2007 	mov	a,r3
      00263D 12 56 BA         [24] 2008 	lcall	__gptrput
      002640 A3               [24] 2009 	inc	dptr
      002641 EC               [12] 2010 	mov	a,r4
      002642 12 56 BA         [24] 2011 	lcall	__gptrput
                                   2012 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:86: return true;
      002645 75 82 01         [24] 2013 	mov	dpl,#0x01
                                   2014 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:87: }
      002648 22               [24] 2015 	ret
                                   2016 ;------------------------------------------------------------
                                   2017 ;Allocation info for local variables in function 'TempController_isOverheat'
                                   2018 ;------------------------------------------------------------
                                   2019 ;tc                        Allocated with name '_TempController_isOverheat_tc_65536_208'
                                   2020 ;------------------------------------------------------------
                                   2021 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:89: bool TempController_isOverheat(const TempController* tc) {
                                   2022 ;	-----------------------------------------
                                   2023 ;	 function TempController_isOverheat
                                   2024 ;	-----------------------------------------
      002649                       2025 _TempController_isOverheat:
      002649 AF F0            [24] 2026 	mov	r7,b
      00264B AE 83            [24] 2027 	mov	r6,dph
      00264D E5 82            [12] 2028 	mov	a,dpl
      00264F 90 01 F5         [24] 2029 	mov	dptr,#_TempController_isOverheat_tc_65536_208
      002652 F0               [24] 2030 	movx	@dptr,a
      002653 EE               [12] 2031 	mov	a,r6
      002654 A3               [24] 2032 	inc	dptr
      002655 F0               [24] 2033 	movx	@dptr,a
      002656 EF               [12] 2034 	mov	a,r7
      002657 A3               [24] 2035 	inc	dptr
      002658 F0               [24] 2036 	movx	@dptr,a
                                   2037 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:90: return (tc->current_temp >= TEMP_OVERHEAT);
      002659 90 01 F5         [24] 2038 	mov	dptr,#_TempController_isOverheat_tc_65536_208
      00265C E0               [24] 2039 	movx	a,@dptr
      00265D FD               [12] 2040 	mov	r5,a
      00265E A3               [24] 2041 	inc	dptr
      00265F E0               [24] 2042 	movx	a,@dptr
      002660 FE               [12] 2043 	mov	r6,a
      002661 A3               [24] 2044 	inc	dptr
      002662 E0               [24] 2045 	movx	a,@dptr
      002663 FF               [12] 2046 	mov	r7,a
      002664 74 06            [12] 2047 	mov	a,#0x06
      002666 2D               [12] 2048 	add	a,r5
      002667 FD               [12] 2049 	mov	r5,a
      002668 E4               [12] 2050 	clr	a
      002669 3E               [12] 2051 	addc	a,r6
      00266A FE               [12] 2052 	mov	r6,a
      00266B 8D 82            [24] 2053 	mov	dpl,r5
      00266D 8E 83            [24] 2054 	mov	dph,r6
      00266F 8F F0            [24] 2055 	mov	b,r7
      002671 12 5D 5A         [24] 2056 	lcall	__gptrget
      002674 FD               [12] 2057 	mov	r5,a
      002675 A3               [24] 2058 	inc	dptr
      002676 12 5D 5A         [24] 2059 	lcall	__gptrget
      002679 FE               [12] 2060 	mov	r6,a
      00267A A3               [24] 2061 	inc	dptr
      00267B 12 5D 5A         [24] 2062 	lcall	__gptrget
      00267E FF               [12] 2063 	mov	r7,a
      00267F A3               [24] 2064 	inc	dptr
      002680 12 5D 5A         [24] 2065 	lcall	__gptrget
      002683 FC               [12] 2066 	mov	r4,a
      002684 E4               [12] 2067 	clr	a
      002685 C0 E0            [24] 2068 	push	acc
      002687 C0 E0            [24] 2069 	push	acc
      002689 74 48            [12] 2070 	mov	a,#0x48
      00268B C0 E0            [24] 2071 	push	acc
      00268D 74 42            [12] 2072 	mov	a,#0x42
      00268F C0 E0            [24] 2073 	push	acc
      002691 8D 82            [24] 2074 	mov	dpl,r5
      002693 8E 83            [24] 2075 	mov	dph,r6
      002695 8F F0            [24] 2076 	mov	b,r7
      002697 EC               [12] 2077 	mov	a,r4
      002698 12 56 D5         [24] 2078 	lcall	___fslt
      00269B E5 81            [12] 2079 	mov	a,sp
      00269D 24 FC            [12] 2080 	add	a,#0xfc
      00269F F5 81            [12] 2081 	mov	sp,a
      0026A1 E5 82            [12] 2082 	mov	a,dpl
      0026A3 24 FF            [12] 2083 	add	a,#0xff
      0026A5 B3               [12] 2084 	cpl	c
      0026A6 92 02            [24] 2085 	mov	_TempController_isOverheat_sloc0_1_0,c
      0026A8 E4               [12] 2086 	clr	a
      0026A9 33               [12] 2087 	rlc	a
      0026AA F5 82            [12] 2088 	mov	dpl,a
                                   2089 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:91: }
      0026AC 22               [24] 2090 	ret
                                   2091 ;------------------------------------------------------------
                                   2092 ;Allocation info for local variables in function 'TempController_getTemperature'
                                   2093 ;------------------------------------------------------------
                                   2094 ;tc                        Allocated with name '_TempController_getTemperature_tc_65536_210'
                                   2095 ;------------------------------------------------------------
                                   2096 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:93: float TempController_getTemperature(const TempController* tc) {
                                   2097 ;	-----------------------------------------
                                   2098 ;	 function TempController_getTemperature
                                   2099 ;	-----------------------------------------
      0026AD                       2100 _TempController_getTemperature:
      0026AD AF F0            [24] 2101 	mov	r7,b
      0026AF AE 83            [24] 2102 	mov	r6,dph
      0026B1 E5 82            [12] 2103 	mov	a,dpl
      0026B3 90 01 F8         [24] 2104 	mov	dptr,#_TempController_getTemperature_tc_65536_210
      0026B6 F0               [24] 2105 	movx	@dptr,a
      0026B7 EE               [12] 2106 	mov	a,r6
      0026B8 A3               [24] 2107 	inc	dptr
      0026B9 F0               [24] 2108 	movx	@dptr,a
      0026BA EF               [12] 2109 	mov	a,r7
      0026BB A3               [24] 2110 	inc	dptr
      0026BC F0               [24] 2111 	movx	@dptr,a
                                   2112 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:94: return tc->current_temp;
      0026BD 90 01 F8         [24] 2113 	mov	dptr,#_TempController_getTemperature_tc_65536_210
      0026C0 E0               [24] 2114 	movx	a,@dptr
      0026C1 FD               [12] 2115 	mov	r5,a
      0026C2 A3               [24] 2116 	inc	dptr
      0026C3 E0               [24] 2117 	movx	a,@dptr
      0026C4 FE               [12] 2118 	mov	r6,a
      0026C5 A3               [24] 2119 	inc	dptr
      0026C6 E0               [24] 2120 	movx	a,@dptr
      0026C7 FF               [12] 2121 	mov	r7,a
      0026C8 74 06            [12] 2122 	mov	a,#0x06
      0026CA 2D               [12] 2123 	add	a,r5
      0026CB FD               [12] 2124 	mov	r5,a
      0026CC E4               [12] 2125 	clr	a
      0026CD 3E               [12] 2126 	addc	a,r6
      0026CE FE               [12] 2127 	mov	r6,a
      0026CF 8D 82            [24] 2128 	mov	dpl,r5
      0026D1 8E 83            [24] 2129 	mov	dph,r6
      0026D3 8F F0            [24] 2130 	mov	b,r7
      0026D5 12 5D 5A         [24] 2131 	lcall	__gptrget
      0026D8 FD               [12] 2132 	mov	r5,a
      0026D9 A3               [24] 2133 	inc	dptr
      0026DA 12 5D 5A         [24] 2134 	lcall	__gptrget
      0026DD FE               [12] 2135 	mov	r6,a
      0026DE A3               [24] 2136 	inc	dptr
      0026DF 12 5D 5A         [24] 2137 	lcall	__gptrget
      0026E2 FF               [12] 2138 	mov	r7,a
      0026E3 A3               [24] 2139 	inc	dptr
      0026E4 12 5D 5A         [24] 2140 	lcall	__gptrget
      0026E7 8D 82            [24] 2141 	mov	dpl,r5
      0026E9 8E 83            [24] 2142 	mov	dph,r6
      0026EB 8F F0            [24] 2143 	mov	b,r7
                                   2144 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:95: }
      0026ED 22               [24] 2145 	ret
                                   2146 ;------------------------------------------------------------
                                   2147 ;Allocation info for local variables in function 'TempController_getTargetRPM'
                                   2148 ;------------------------------------------------------------
                                   2149 ;tc                        Allocated with name '_TempController_getTargetRPM_tc_65536_212'
                                   2150 ;------------------------------------------------------------
                                   2151 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:97: uint32_t TempController_getTargetRPM(const TempController* tc) {
                                   2152 ;	-----------------------------------------
                                   2153 ;	 function TempController_getTargetRPM
                                   2154 ;	-----------------------------------------
      0026EE                       2155 _TempController_getTargetRPM:
      0026EE AF F0            [24] 2156 	mov	r7,b
      0026F0 AE 83            [24] 2157 	mov	r6,dph
      0026F2 E5 82            [12] 2158 	mov	a,dpl
      0026F4 90 01 FB         [24] 2159 	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
      0026F7 F0               [24] 2160 	movx	@dptr,a
      0026F8 EE               [12] 2161 	mov	a,r6
      0026F9 A3               [24] 2162 	inc	dptr
      0026FA F0               [24] 2163 	movx	@dptr,a
      0026FB EF               [12] 2164 	mov	a,r7
      0026FC A3               [24] 2165 	inc	dptr
      0026FD F0               [24] 2166 	movx	@dptr,a
                                   2167 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:98: return tc->target_rpm;
      0026FE 90 01 FB         [24] 2168 	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
      002701 E0               [24] 2169 	movx	a,@dptr
      002702 FD               [12] 2170 	mov	r5,a
      002703 A3               [24] 2171 	inc	dptr
      002704 E0               [24] 2172 	movx	a,@dptr
      002705 FE               [12] 2173 	mov	r6,a
      002706 A3               [24] 2174 	inc	dptr
      002707 E0               [24] 2175 	movx	a,@dptr
      002708 FF               [12] 2176 	mov	r7,a
      002709 74 0A            [12] 2177 	mov	a,#0x0a
      00270B 2D               [12] 2178 	add	a,r5
      00270C FD               [12] 2179 	mov	r5,a
      00270D E4               [12] 2180 	clr	a
      00270E 3E               [12] 2181 	addc	a,r6
      00270F FE               [12] 2182 	mov	r6,a
      002710 8D 82            [24] 2183 	mov	dpl,r5
      002712 8E 83            [24] 2184 	mov	dph,r6
      002714 8F F0            [24] 2185 	mov	b,r7
      002716 12 5D 5A         [24] 2186 	lcall	__gptrget
      002719 FD               [12] 2187 	mov	r5,a
      00271A A3               [24] 2188 	inc	dptr
      00271B 12 5D 5A         [24] 2189 	lcall	__gptrget
      00271E FE               [12] 2190 	mov	r6,a
      00271F A3               [24] 2191 	inc	dptr
      002720 12 5D 5A         [24] 2192 	lcall	__gptrget
      002723 FF               [12] 2193 	mov	r7,a
      002724 A3               [24] 2194 	inc	dptr
      002725 12 5D 5A         [24] 2195 	lcall	__gptrget
      002728 8D 82            [24] 2196 	mov	dpl,r5
      00272A 8E 83            [24] 2197 	mov	dph,r6
      00272C 8F F0            [24] 2198 	mov	b,r7
                                   2199 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:99: }
      00272E 22               [24] 2200 	ret
                                   2201 ;------------------------------------------------------------
                                   2202 ;Allocation info for local variables in function 'TempController_isReady'
                                   2203 ;------------------------------------------------------------
                                   2204 ;tc                        Allocated with name '_TempController_isReady_tc_65536_214'
                                   2205 ;------------------------------------------------------------
                                   2206 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:101: bool TempController_isReady(const TempController* tc) {
                                   2207 ;	-----------------------------------------
                                   2208 ;	 function TempController_isReady
                                   2209 ;	-----------------------------------------
      00272F                       2210 _TempController_isReady:
      00272F AF F0            [24] 2211 	mov	r7,b
      002731 AE 83            [24] 2212 	mov	r6,dph
      002733 E5 82            [12] 2213 	mov	a,dpl
      002735 90 01 FE         [24] 2214 	mov	dptr,#_TempController_isReady_tc_65536_214
      002738 F0               [24] 2215 	movx	@dptr,a
      002739 EE               [12] 2216 	mov	a,r6
      00273A A3               [24] 2217 	inc	dptr
      00273B F0               [24] 2218 	movx	@dptr,a
      00273C EF               [12] 2219 	mov	a,r7
      00273D A3               [24] 2220 	inc	dptr
      00273E F0               [24] 2221 	movx	@dptr,a
                                   2222 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:102: return tc->sensor_ready;
      00273F 90 01 FE         [24] 2223 	mov	dptr,#_TempController_isReady_tc_65536_214
      002742 E0               [24] 2224 	movx	a,@dptr
      002743 FD               [12] 2225 	mov	r5,a
      002744 A3               [24] 2226 	inc	dptr
      002745 E0               [24] 2227 	movx	a,@dptr
      002746 FE               [12] 2228 	mov	r6,a
      002747 A3               [24] 2229 	inc	dptr
      002748 E0               [24] 2230 	movx	a,@dptr
      002749 FF               [12] 2231 	mov	r7,a
      00274A 74 0E            [12] 2232 	mov	a,#0x0e
      00274C 2D               [12] 2233 	add	a,r5
      00274D FD               [12] 2234 	mov	r5,a
      00274E E4               [12] 2235 	clr	a
      00274F 3E               [12] 2236 	addc	a,r6
      002750 FE               [12] 2237 	mov	r6,a
      002751 8D 82            [24] 2238 	mov	dpl,r5
      002753 8E 83            [24] 2239 	mov	dph,r6
      002755 8F F0            [24] 2240 	mov	b,r7
      002757 12 5D 5A         [24] 2241 	lcall	__gptrget
                                   2242 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:103: }
      00275A F5 82            [12] 2243 	mov	dpl,a
      00275C 22               [24] 2244 	ret
                                   2245 	.area CSEG    (CODE)
                                   2246 	.area CONST   (CODE)
                                   2247 	.area XINIT   (CODE)
                                   2248 	.area CABS    (ABS,CODE)
