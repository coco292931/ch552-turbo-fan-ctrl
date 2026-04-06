                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module voltage_control
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay
                                     12 	.globl _analogWrite
                                     13 	.globl _analogRead
                                     14 	.globl _pinMode
                                     15 	.globl _UIF_BUS_RST
                                     16 	.globl _UIF_DETECT
                                     17 	.globl _UIF_TRANSFER
                                     18 	.globl _UIF_SUSPEND
                                     19 	.globl _UIF_HST_SOF
                                     20 	.globl _UIF_FIFO_OV
                                     21 	.globl _U_SIE_FREE
                                     22 	.globl _U_TOG_OK
                                     23 	.globl _U_IS_NAK
                                     24 	.globl _S0_R_FIFO0
                                     25 	.globl _S0_R_FIFO1
                                     26 	.globl _S0_T_FIFO
                                     27 	.globl _S0_FREE
                                     28 	.globl _S0_IF_BYTE
                                     29 	.globl _S0_IF_FIRST
                                     30 	.globl _S0_IF_OV
                                     31 	.globl _S0_FST_ACT
                                     32 	.globl _CP_RL2
                                     33 	.globl _C_T2
                                     34 	.globl _TR2
                                     35 	.globl _EXEN2
                                     36 	.globl _TCLK
                                     37 	.globl _RCLK
                                     38 	.globl _EXF2
                                     39 	.globl _CAP1F
                                     40 	.globl _TF2
                                     41 	.globl _RI
                                     42 	.globl _TI
                                     43 	.globl _RB8
                                     44 	.globl _TB8
                                     45 	.globl _REN
                                     46 	.globl _SM2
                                     47 	.globl _SM1
                                     48 	.globl _SM0
                                     49 	.globl _IT0
                                     50 	.globl _IE0
                                     51 	.globl _IT1
                                     52 	.globl _IE1
                                     53 	.globl _TR0
                                     54 	.globl _TF0
                                     55 	.globl _TR1
                                     56 	.globl _TF1
                                     57 	.globl _P4_OUT_0
                                     58 	.globl _P4_OUT_1
                                     59 	.globl _P4_OUT_2
                                     60 	.globl _P4_OUT_3
                                     61 	.globl _P4_OUT_4
                                     62 	.globl _P4_OUT_5
                                     63 	.globl _P4_OUT_6
                                     64 	.globl _P4_OUT_7
                                     65 	.globl _RXD1_
                                     66 	.globl _LED2
                                     67 	.globl _CAP3_
                                     68 	.globl _PWM3_
                                     69 	.globl _PWM1_
                                     70 	.globl _TXD1_
                                     71 	.globl _TNOW_
                                     72 	.globl _LED3
                                     73 	.globl _PWM2_
                                     74 	.globl _SCS_
                                     75 	.globl _SCK_
                                     76 	.globl _P3_0
                                     77 	.globl _P3_1
                                     78 	.globl _P3_2
                                     79 	.globl _P3_3
                                     80 	.globl _P3_4
                                     81 	.globl _P3_5
                                     82 	.globl _P3_6
                                     83 	.globl _P3_7
                                     84 	.globl _RXD
                                     85 	.globl _TXD
                                     86 	.globl _INT0
                                     87 	.globl _LED0
                                     88 	.globl _INT1
                                     89 	.globl _LED1
                                     90 	.globl _T0
                                     91 	.globl _XCS0
                                     92 	.globl _LEDC
                                     93 	.globl _T1
                                     94 	.globl _DA6
                                     95 	.globl _WR
                                     96 	.globl _RD
                                     97 	.globl _P2_0
                                     98 	.globl _P2_1
                                     99 	.globl _P2_2
                                    100 	.globl _P2_3
                                    101 	.globl _P2_4
                                    102 	.globl _P2_5
                                    103 	.globl _P2_6
                                    104 	.globl _P2_7
                                    105 	.globl _MOSI1
                                    106 	.globl _MISO1
                                    107 	.globl _SCK1
                                    108 	.globl _PWM1
                                    109 	.globl _CAP2_
                                    110 	.globl _T2EX_
                                    111 	.globl _PWM2
                                    112 	.globl _TNOW
                                    113 	.globl _RXD1
                                    114 	.globl _DA7
                                    115 	.globl _TXD1
                                    116 	.globl _P1_0
                                    117 	.globl _P1_1
                                    118 	.globl _P1_2
                                    119 	.globl _P1_3
                                    120 	.globl _P1_4
                                    121 	.globl _P1_5
                                    122 	.globl _P1_6
                                    123 	.globl _P1_7
                                    124 	.globl _CAP1
                                    125 	.globl _T2
                                    126 	.globl _CAP2
                                    127 	.globl _T2EX
                                    128 	.globl _CAP3
                                    129 	.globl _PWM3
                                    130 	.globl _SCS
                                    131 	.globl _MOSI
                                    132 	.globl _MISO
                                    133 	.globl _SCK
                                    134 	.globl _AIN0
                                    135 	.globl _AIN1
                                    136 	.globl _AIN2
                                    137 	.globl _AIN3
                                    138 	.globl _AIN4
                                    139 	.globl _AIN5
                                    140 	.globl _AIN6
                                    141 	.globl _AIN7
                                    142 	.globl _P0_0
                                    143 	.globl _P0_1
                                    144 	.globl _P0_2
                                    145 	.globl _P0_3
                                    146 	.globl _P0_4
                                    147 	.globl _P0_5
                                    148 	.globl _P0_6
                                    149 	.globl _P0_7
                                    150 	.globl _UDTR
                                    151 	.globl _URTS
                                    152 	.globl _RXD_
                                    153 	.globl _TXD_
                                    154 	.globl _UCTS
                                    155 	.globl _UDSR
                                    156 	.globl _URI
                                    157 	.globl _UDCD
                                    158 	.globl _IE_SPI0
                                    159 	.globl _IE_TMR3
                                    160 	.globl _IE_USB
                                    161 	.globl _IE_ADC
                                    162 	.globl _IE_UART1
                                    163 	.globl _IE_PWM1
                                    164 	.globl _IE_GPIO
                                    165 	.globl _IE_WDOG
                                    166 	.globl _PX0
                                    167 	.globl _PT0
                                    168 	.globl _PX1
                                    169 	.globl _PT1
                                    170 	.globl _PS
                                    171 	.globl _PT2
                                    172 	.globl _PL_FLAG
                                    173 	.globl _PH_FLAG
                                    174 	.globl _EX0
                                    175 	.globl _ET0
                                    176 	.globl _EX1
                                    177 	.globl _ET1
                                    178 	.globl _ES
                                    179 	.globl _ET2
                                    180 	.globl _E_DIS
                                    181 	.globl _EA
                                    182 	.globl _P
                                    183 	.globl _F1
                                    184 	.globl _OV
                                    185 	.globl _RS0
                                    186 	.globl _RS1
                                    187 	.globl _F0
                                    188 	.globl _AC
                                    189 	.globl _CY
                                    190 	.globl _USB_DMA_AH
                                    191 	.globl _USB_DMA_AL
                                    192 	.globl _USB_DMA
                                    193 	.globl _UHUB1_CTRL
                                    194 	.globl _UDEV_CTRL
                                    195 	.globl _USB_DEV_AD
                                    196 	.globl _USB_CTRL
                                    197 	.globl _USB_INT_EN
                                    198 	.globl _UEP4_T_LEN
                                    199 	.globl _UEP4_CTRL
                                    200 	.globl _UEP0_T_LEN
                                    201 	.globl _UEP0_CTRL
                                    202 	.globl _USB_HUB_ST
                                    203 	.globl _USB_MIS_ST
                                    204 	.globl _USB_INT_ST
                                    205 	.globl _USB_INT_FG
                                    206 	.globl _UEP3_T_LEN
                                    207 	.globl _UEP3_CTRL
                                    208 	.globl _UEP2_T_LEN
                                    209 	.globl _UEP2_CTRL
                                    210 	.globl _UEP1_T_LEN
                                    211 	.globl _UEP1_CTRL
                                    212 	.globl _USB_RX_LEN
                                    213 	.globl _ADC_EX_SW
                                    214 	.globl _ADC_SETUP
                                    215 	.globl _ADC_FIFO_H
                                    216 	.globl _ADC_FIFO_L
                                    217 	.globl _ADC_FIFO
                                    218 	.globl _ADC_CHANN
                                    219 	.globl _ADC_CTRL
                                    220 	.globl _ADC_STAT
                                    221 	.globl _ADC_CK_SE
                                    222 	.globl _ADC_DMA_CN
                                    223 	.globl _ADC_DMA_AH
                                    224 	.globl _ADC_DMA_AL
                                    225 	.globl _ADC_DMA
                                    226 	.globl _SER1_ADDR
                                    227 	.globl _SER1_MSR
                                    228 	.globl _SER1_LSR
                                    229 	.globl _SER1_MCR
                                    230 	.globl _SER1_LCR
                                    231 	.globl _SER1_IIR
                                    232 	.globl _SER1_IER
                                    233 	.globl _SER1_FIFO
                                    234 	.globl _SPI1_CK_SE
                                    235 	.globl _SPI1_CTRL
                                    236 	.globl _SPI1_DATA
                                    237 	.globl _SPI1_STAT
                                    238 	.globl _SPI0_SETUP
                                    239 	.globl _SPI0_CK_SE
                                    240 	.globl _SPI0_CTRL
                                    241 	.globl _SPI0_DATA
                                    242 	.globl _SPI0_STAT
                                    243 	.globl _PWM_CYCLE
                                    244 	.globl _PWM_CK_SE
                                    245 	.globl _PWM_CTRL
                                    246 	.globl _PWM_DATA
                                    247 	.globl _PWM_DATA2
                                    248 	.globl _T3_FIFO_H
                                    249 	.globl _T3_FIFO_L
                                    250 	.globl _T3_FIFO
                                    251 	.globl _T3_DMA_AH
                                    252 	.globl _T3_DMA_AL
                                    253 	.globl _T3_DMA
                                    254 	.globl _T3_DMA_CN
                                    255 	.globl _T3_CTRL
                                    256 	.globl _T3_STAT
                                    257 	.globl _T3_END_H
                                    258 	.globl _T3_END_L
                                    259 	.globl _T3_END
                                    260 	.globl _T3_COUNT_H
                                    261 	.globl _T3_COUNT_L
                                    262 	.globl _T3_COUNT
                                    263 	.globl _T3_SETUP
                                    264 	.globl _TH2
                                    265 	.globl _TL2
                                    266 	.globl _T2COUNT
                                    267 	.globl _RCAP2H
                                    268 	.globl _RCAP2L
                                    269 	.globl _RCAP2
                                    270 	.globl _T2MOD
                                    271 	.globl _T2CON
                                    272 	.globl _SBUF
                                    273 	.globl _SCON
                                    274 	.globl _TH1
                                    275 	.globl _TH0
                                    276 	.globl _TL1
                                    277 	.globl _TL0
                                    278 	.globl _TMOD
                                    279 	.globl _TCON
                                    280 	.globl _XBUS_SPEED
                                    281 	.globl _XBUS_AUX
                                    282 	.globl _PIN_FUNC
                                    283 	.globl _PORT_CFG
                                    284 	.globl _P5_IN
                                    285 	.globl _P4_PU
                                    286 	.globl _P4_DIR
                                    287 	.globl _P4_IN
                                    288 	.globl _P4_OUT
                                    289 	.globl _P3_PU
                                    290 	.globl _P3_DIR
                                    291 	.globl _P3
                                    292 	.globl _P2_PU
                                    293 	.globl _P2_DIR
                                    294 	.globl _P2
                                    295 	.globl _P1_PU
                                    296 	.globl _P1_DIR
                                    297 	.globl _P1_IE
                                    298 	.globl _P1
                                    299 	.globl _P0_PU
                                    300 	.globl _P0_DIR
                                    301 	.globl _P0
                                    302 	.globl _ROM_CTRL
                                    303 	.globl _ROM_DATA_H
                                    304 	.globl _ROM_DATA_L
                                    305 	.globl _ROM_DATA
                                    306 	.globl _ROM_ADDR_H
                                    307 	.globl _ROM_ADDR_L
                                    308 	.globl _ROM_ADDR
                                    309 	.globl _GPIO_IE
                                    310 	.globl _IP_EX
                                    311 	.globl _IE_EX
                                    312 	.globl _IP
                                    313 	.globl _IE
                                    314 	.globl _WDOG_COUNT
                                    315 	.globl _RESET_KEEP
                                    316 	.globl _WAKE_CTRL
                                    317 	.globl _SLEEP_CTRL
                                    318 	.globl _CLOCK_CFG
                                    319 	.globl _PLL_CFG
                                    320 	.globl _PCON
                                    321 	.globl _GLOBAL_CFG
                                    322 	.globl _SAFE_MOD
                                    323 	.globl _DPH
                                    324 	.globl _DPL
                                    325 	.globl _SP
                                    326 	.globl _B
                                    327 	.globl _ACC
                                    328 	.globl _PSW
                                    329 	.globl _VoltageController_setVoltage_PARM_2
                                    330 	.globl _VoltageController_begin_PARM_3
                                    331 	.globl _VoltageController_begin_PARM_2
                                    332 	.globl _LED_DMA_XL
                                    333 	.globl _LED_DMA_XH
                                    334 	.globl _LED_DMA_CN
                                    335 	.globl _LED_DMA_AL
                                    336 	.globl _LED_DMA_AH
                                    337 	.globl _LED_CK_SE
                                    338 	.globl _LED_DATA
                                    339 	.globl _LED_CTRL
                                    340 	.globl _LED_STAT
                                    341 	.globl _UEP3_DMA_L
                                    342 	.globl _UEP3_DMA_H
                                    343 	.globl _UEP2_DMA_L
                                    344 	.globl _UEP2_DMA_H
                                    345 	.globl _UEP1_DMA_L
                                    346 	.globl _UEP1_DMA_H
                                    347 	.globl _UEP0_DMA_L
                                    348 	.globl _UEP0_DMA_H
                                    349 	.globl _UEP2_3_MOD
                                    350 	.globl _UEP4_1_MOD
                                    351 	.globl _pLED_DMA_XL
                                    352 	.globl _pLED_DMA_XH
                                    353 	.globl _pLED_DMA_CN
                                    354 	.globl _pLED_DMA_AL
                                    355 	.globl _pLED_DMA_AH
                                    356 	.globl _pLED_CK_SE
                                    357 	.globl _pLED_DATA
                                    358 	.globl _pLED_CTRL
                                    359 	.globl _pLED_STAT
                                    360 	.globl _pUEP3_DMA_L
                                    361 	.globl _pUEP3_DMA_H
                                    362 	.globl _pUEP2_DMA_L
                                    363 	.globl _pUEP2_DMA_H
                                    364 	.globl _pUEP1_DMA_L
                                    365 	.globl _pUEP1_DMA_H
                                    366 	.globl _pUEP0_DMA_L
                                    367 	.globl _pUEP0_DMA_H
                                    368 	.globl _pUEP2_3_MOD
                                    369 	.globl _pUEP4_1_MOD
                                    370 	.globl _VoltageController_begin
                                    371 	.globl _VoltageController_setVoltage
                                    372 	.globl _VoltageController_readVoltage
                                    373 	.globl _VoltageController_updateVoltage
                                    374 	.globl _VoltageController_isVoltageAbnormal
                                    375 	.globl _VoltageController_lockOutput
                                    376 	.globl _VoltageController_unlockOutput
                                    377 	.globl _VoltageController_getTargetVoltage
                                    378 	.globl _VoltageController_getCurrentVoltage
                                    379 	.globl _VoltageController_getPWMDuty
                                    380 	.globl _VoltageController_isLocked
                                    381 ;--------------------------------------------------------
                                    382 ; special function registers
                                    383 ;--------------------------------------------------------
                                    384 	.area RSEG    (ABS,DATA)
      000000                        385 	.org 0x0000
                           0000D0   386 _PSW	=	0x00d0
                           0000E0   387 _ACC	=	0x00e0
                           0000F0   388 _B	=	0x00f0
                           000081   389 _SP	=	0x0081
                           000082   390 _DPL	=	0x0082
                           000083   391 _DPH	=	0x0083
                           0000A1   392 _SAFE_MOD	=	0x00a1
                           0000B1   393 _GLOBAL_CFG	=	0x00b1
                           000087   394 _PCON	=	0x0087
                           0000B2   395 _PLL_CFG	=	0x00b2
                           0000B3   396 _CLOCK_CFG	=	0x00b3
                           0000EA   397 _SLEEP_CTRL	=	0x00ea
                           0000EB   398 _WAKE_CTRL	=	0x00eb
                           0000FE   399 _RESET_KEEP	=	0x00fe
                           0000FF   400 _WDOG_COUNT	=	0x00ff
                           0000A8   401 _IE	=	0x00a8
                           0000B8   402 _IP	=	0x00b8
                           0000E8   403 _IE_EX	=	0x00e8
                           0000E9   404 _IP_EX	=	0x00e9
                           0000CF   405 _GPIO_IE	=	0x00cf
                           008584   406 _ROM_ADDR	=	0x8584
                           000084   407 _ROM_ADDR_L	=	0x0084
                           000085   408 _ROM_ADDR_H	=	0x0085
                           008F8E   409 _ROM_DATA	=	0x8f8e
                           00008E   410 _ROM_DATA_L	=	0x008e
                           00008F   411 _ROM_DATA_H	=	0x008f
                           000086   412 _ROM_CTRL	=	0x0086
                           000080   413 _P0	=	0x0080
                           0000C4   414 _P0_DIR	=	0x00c4
                           0000C5   415 _P0_PU	=	0x00c5
                           000090   416 _P1	=	0x0090
                           0000B9   417 _P1_IE	=	0x00b9
                           0000BA   418 _P1_DIR	=	0x00ba
                           0000BB   419 _P1_PU	=	0x00bb
                           0000A0   420 _P2	=	0x00a0
                           0000BC   421 _P2_DIR	=	0x00bc
                           0000BD   422 _P2_PU	=	0x00bd
                           0000B0   423 _P3	=	0x00b0
                           0000BE   424 _P3_DIR	=	0x00be
                           0000BF   425 _P3_PU	=	0x00bf
                           0000C0   426 _P4_OUT	=	0x00c0
                           0000C1   427 _P4_IN	=	0x00c1
                           0000C2   428 _P4_DIR	=	0x00c2
                           0000C3   429 _P4_PU	=	0x00c3
                           0000C7   430 _P5_IN	=	0x00c7
                           0000C6   431 _PORT_CFG	=	0x00c6
                           0000CE   432 _PIN_FUNC	=	0x00ce
                           0000A2   433 _XBUS_AUX	=	0x00a2
                           0000FD   434 _XBUS_SPEED	=	0x00fd
                           000088   435 _TCON	=	0x0088
                           000089   436 _TMOD	=	0x0089
                           00008A   437 _TL0	=	0x008a
                           00008B   438 _TL1	=	0x008b
                           00008C   439 _TH0	=	0x008c
                           00008D   440 _TH1	=	0x008d
                           000098   441 _SCON	=	0x0098
                           000099   442 _SBUF	=	0x0099
                           0000C8   443 _T2CON	=	0x00c8
                           0000C9   444 _T2MOD	=	0x00c9
                           00CBCA   445 _RCAP2	=	0xcbca
                           0000CA   446 _RCAP2L	=	0x00ca
                           0000CB   447 _RCAP2H	=	0x00cb
                           00CDCC   448 _T2COUNT	=	0xcdcc
                           0000CC   449 _TL2	=	0x00cc
                           0000CD   450 _TH2	=	0x00cd
                           0000A3   451 _T3_SETUP	=	0x00a3
                           00A5A4   452 _T3_COUNT	=	0xa5a4
                           0000A4   453 _T3_COUNT_L	=	0x00a4
                           0000A5   454 _T3_COUNT_H	=	0x00a5
                           00A7A6   455 _T3_END	=	0xa7a6
                           0000A6   456 _T3_END_L	=	0x00a6
                           0000A7   457 _T3_END_H	=	0x00a7
                           0000A9   458 _T3_STAT	=	0x00a9
                           0000AA   459 _T3_CTRL	=	0x00aa
                           0000AB   460 _T3_DMA_CN	=	0x00ab
                           00ADAC   461 _T3_DMA	=	0xadac
                           0000AC   462 _T3_DMA_AL	=	0x00ac
                           0000AD   463 _T3_DMA_AH	=	0x00ad
                           00AFAE   464 _T3_FIFO	=	0xafae
                           0000AE   465 _T3_FIFO_L	=	0x00ae
                           0000AF   466 _T3_FIFO_H	=	0x00af
                           00009B   467 _PWM_DATA2	=	0x009b
                           00009C   468 _PWM_DATA	=	0x009c
                           00009D   469 _PWM_CTRL	=	0x009d
                           00009E   470 _PWM_CK_SE	=	0x009e
                           00009F   471 _PWM_CYCLE	=	0x009f
                           0000F8   472 _SPI0_STAT	=	0x00f8
                           0000F9   473 _SPI0_DATA	=	0x00f9
                           0000FA   474 _SPI0_CTRL	=	0x00fa
                           0000FB   475 _SPI0_CK_SE	=	0x00fb
                           0000FC   476 _SPI0_SETUP	=	0x00fc
                           0000B4   477 _SPI1_STAT	=	0x00b4
                           0000B5   478 _SPI1_DATA	=	0x00b5
                           0000B6   479 _SPI1_CTRL	=	0x00b6
                           0000B7   480 _SPI1_CK_SE	=	0x00b7
                           00009A   481 _SER1_FIFO	=	0x009a
                           000091   482 _SER1_IER	=	0x0091
                           000092   483 _SER1_IIR	=	0x0092
                           000093   484 _SER1_LCR	=	0x0093
                           000094   485 _SER1_MCR	=	0x0094
                           000095   486 _SER1_LSR	=	0x0095
                           000096   487 _SER1_MSR	=	0x0096
                           000097   488 _SER1_ADDR	=	0x0097
                           00EDEC   489 _ADC_DMA	=	0xedec
                           0000EC   490 _ADC_DMA_AL	=	0x00ec
                           0000ED   491 _ADC_DMA_AH	=	0x00ed
                           0000EE   492 _ADC_DMA_CN	=	0x00ee
                           0000EF   493 _ADC_CK_SE	=	0x00ef
                           0000F1   494 _ADC_STAT	=	0x00f1
                           0000F2   495 _ADC_CTRL	=	0x00f2
                           0000F3   496 _ADC_CHANN	=	0x00f3
                           00F5F4   497 _ADC_FIFO	=	0xf5f4
                           0000F4   498 _ADC_FIFO_L	=	0x00f4
                           0000F5   499 _ADC_FIFO_H	=	0x00f5
                           0000F6   500 _ADC_SETUP	=	0x00f6
                           0000F7   501 _ADC_EX_SW	=	0x00f7
                           0000D1   502 _USB_RX_LEN	=	0x00d1
                           0000D2   503 _UEP1_CTRL	=	0x00d2
                           0000D3   504 _UEP1_T_LEN	=	0x00d3
                           0000D4   505 _UEP2_CTRL	=	0x00d4
                           0000D5   506 _UEP2_T_LEN	=	0x00d5
                           0000D6   507 _UEP3_CTRL	=	0x00d6
                           0000D7   508 _UEP3_T_LEN	=	0x00d7
                           0000D8   509 _USB_INT_FG	=	0x00d8
                           0000D9   510 _USB_INT_ST	=	0x00d9
                           0000DA   511 _USB_MIS_ST	=	0x00da
                           0000DB   512 _USB_HUB_ST	=	0x00db
                           0000DC   513 _UEP0_CTRL	=	0x00dc
                           0000DD   514 _UEP0_T_LEN	=	0x00dd
                           0000DE   515 _UEP4_CTRL	=	0x00de
                           0000DF   516 _UEP4_T_LEN	=	0x00df
                           0000E1   517 _USB_INT_EN	=	0x00e1
                           0000E2   518 _USB_CTRL	=	0x00e2
                           0000E3   519 _USB_DEV_AD	=	0x00e3
                           0000E4   520 _UDEV_CTRL	=	0x00e4
                           0000E5   521 _UHUB1_CTRL	=	0x00e5
                           00E7E6   522 _USB_DMA	=	0xe7e6
                           0000E6   523 _USB_DMA_AL	=	0x00e6
                           0000E7   524 _USB_DMA_AH	=	0x00e7
                                    525 ;--------------------------------------------------------
                                    526 ; special function bits
                                    527 ;--------------------------------------------------------
                                    528 	.area RSEG    (ABS,DATA)
      000000                        529 	.org 0x0000
                           0000D7   530 _CY	=	0x00d7
                           0000D6   531 _AC	=	0x00d6
                           0000D5   532 _F0	=	0x00d5
                           0000D4   533 _RS1	=	0x00d4
                           0000D3   534 _RS0	=	0x00d3
                           0000D2   535 _OV	=	0x00d2
                           0000D1   536 _F1	=	0x00d1
                           0000D0   537 _P	=	0x00d0
                           0000AF   538 _EA	=	0x00af
                           0000AE   539 _E_DIS	=	0x00ae
                           0000AD   540 _ET2	=	0x00ad
                           0000AC   541 _ES	=	0x00ac
                           0000AB   542 _ET1	=	0x00ab
                           0000AA   543 _EX1	=	0x00aa
                           0000A9   544 _ET0	=	0x00a9
                           0000A8   545 _EX0	=	0x00a8
                           0000BF   546 _PH_FLAG	=	0x00bf
                           0000BE   547 _PL_FLAG	=	0x00be
                           0000BD   548 _PT2	=	0x00bd
                           0000BC   549 _PS	=	0x00bc
                           0000BB   550 _PT1	=	0x00bb
                           0000BA   551 _PX1	=	0x00ba
                           0000B9   552 _PT0	=	0x00b9
                           0000B8   553 _PX0	=	0x00b8
                           0000EF   554 _IE_WDOG	=	0x00ef
                           0000EE   555 _IE_GPIO	=	0x00ee
                           0000ED   556 _IE_PWM1	=	0x00ed
                           0000EC   557 _IE_UART1	=	0x00ec
                           0000EB   558 _IE_ADC	=	0x00eb
                           0000EA   559 _IE_USB	=	0x00ea
                           0000E9   560 _IE_TMR3	=	0x00e9
                           0000E8   561 _IE_SPI0	=	0x00e8
                           000087   562 _UDCD	=	0x0087
                           000086   563 _URI	=	0x0086
                           000085   564 _UDSR	=	0x0085
                           000084   565 _UCTS	=	0x0084
                           000083   566 _TXD_	=	0x0083
                           000082   567 _RXD_	=	0x0082
                           000081   568 _URTS	=	0x0081
                           000080   569 _UDTR	=	0x0080
                           000087   570 _P0_7	=	0x0087
                           000086   571 _P0_6	=	0x0086
                           000085   572 _P0_5	=	0x0085
                           000084   573 _P0_4	=	0x0084
                           000083   574 _P0_3	=	0x0083
                           000082   575 _P0_2	=	0x0082
                           000081   576 _P0_1	=	0x0081
                           000080   577 _P0_0	=	0x0080
                           000097   578 _AIN7	=	0x0097
                           000096   579 _AIN6	=	0x0096
                           000095   580 _AIN5	=	0x0095
                           000094   581 _AIN4	=	0x0094
                           000093   582 _AIN3	=	0x0093
                           000092   583 _AIN2	=	0x0092
                           000091   584 _AIN1	=	0x0091
                           000090   585 _AIN0	=	0x0090
                           000097   586 _SCK	=	0x0097
                           000096   587 _MISO	=	0x0096
                           000095   588 _MOSI	=	0x0095
                           000094   589 _SCS	=	0x0094
                           000092   590 _PWM3	=	0x0092
                           000092   591 _CAP3	=	0x0092
                           000091   592 _T2EX	=	0x0091
                           000091   593 _CAP2	=	0x0091
                           000090   594 _T2	=	0x0090
                           000090   595 _CAP1	=	0x0090
                           000097   596 _P1_7	=	0x0097
                           000096   597 _P1_6	=	0x0096
                           000095   598 _P1_5	=	0x0095
                           000094   599 _P1_4	=	0x0094
                           000093   600 _P1_3	=	0x0093
                           000092   601 _P1_2	=	0x0092
                           000091   602 _P1_1	=	0x0091
                           000090   603 _P1_0	=	0x0090
                           0000A7   604 _TXD1	=	0x00a7
                           0000A7   605 _DA7	=	0x00a7
                           0000A6   606 _RXD1	=	0x00a6
                           0000A5   607 _TNOW	=	0x00a5
                           0000A5   608 _PWM2	=	0x00a5
                           0000A5   609 _T2EX_	=	0x00a5
                           0000A5   610 _CAP2_	=	0x00a5
                           0000A4   611 _PWM1	=	0x00a4
                           0000A3   612 _SCK1	=	0x00a3
                           0000A2   613 _MISO1	=	0x00a2
                           0000A1   614 _MOSI1	=	0x00a1
                           0000A7   615 _P2_7	=	0x00a7
                           0000A6   616 _P2_6	=	0x00a6
                           0000A5   617 _P2_5	=	0x00a5
                           0000A4   618 _P2_4	=	0x00a4
                           0000A3   619 _P2_3	=	0x00a3
                           0000A2   620 _P2_2	=	0x00a2
                           0000A1   621 _P2_1	=	0x00a1
                           0000A0   622 _P2_0	=	0x00a0
                           0000B7   623 _RD	=	0x00b7
                           0000B6   624 _WR	=	0x00b6
                           0000B5   625 _DA6	=	0x00b5
                           0000B5   626 _T1	=	0x00b5
                           0000B4   627 _LEDC	=	0x00b4
                           0000B4   628 _XCS0	=	0x00b4
                           0000B4   629 _T0	=	0x00b4
                           0000B3   630 _LED1	=	0x00b3
                           0000B3   631 _INT1	=	0x00b3
                           0000B2   632 _LED0	=	0x00b2
                           0000B2   633 _INT0	=	0x00b2
                           0000B1   634 _TXD	=	0x00b1
                           0000B0   635 _RXD	=	0x00b0
                           0000B7   636 _P3_7	=	0x00b7
                           0000B6   637 _P3_6	=	0x00b6
                           0000B5   638 _P3_5	=	0x00b5
                           0000B4   639 _P3_4	=	0x00b4
                           0000B3   640 _P3_3	=	0x00b3
                           0000B2   641 _P3_2	=	0x00b2
                           0000B1   642 _P3_1	=	0x00b1
                           0000B0   643 _P3_0	=	0x00b0
                           0000C7   644 _SCK_	=	0x00c7
                           0000C6   645 _SCS_	=	0x00c6
                           0000C5   646 _PWM2_	=	0x00c5
                           0000C4   647 _LED3	=	0x00c4
                           0000C4   648 _TNOW_	=	0x00c4
                           0000C4   649 _TXD1_	=	0x00c4
                           0000C3   650 _PWM1_	=	0x00c3
                           0000C2   651 _PWM3_	=	0x00c2
                           0000C2   652 _CAP3_	=	0x00c2
                           0000C0   653 _LED2	=	0x00c0
                           0000C0   654 _RXD1_	=	0x00c0
                           0000C7   655 _P4_OUT_7	=	0x00c7
                           0000C6   656 _P4_OUT_6	=	0x00c6
                           0000C5   657 _P4_OUT_5	=	0x00c5
                           0000C4   658 _P4_OUT_4	=	0x00c4
                           0000C3   659 _P4_OUT_3	=	0x00c3
                           0000C2   660 _P4_OUT_2	=	0x00c2
                           0000C1   661 _P4_OUT_1	=	0x00c1
                           0000C0   662 _P4_OUT_0	=	0x00c0
                           00008F   663 _TF1	=	0x008f
                           00008E   664 _TR1	=	0x008e
                           00008D   665 _TF0	=	0x008d
                           00008C   666 _TR0	=	0x008c
                           00008B   667 _IE1	=	0x008b
                           00008A   668 _IT1	=	0x008a
                           000089   669 _IE0	=	0x0089
                           000088   670 _IT0	=	0x0088
                           00009F   671 _SM0	=	0x009f
                           00009E   672 _SM1	=	0x009e
                           00009D   673 _SM2	=	0x009d
                           00009C   674 _REN	=	0x009c
                           00009B   675 _TB8	=	0x009b
                           00009A   676 _RB8	=	0x009a
                           000099   677 _TI	=	0x0099
                           000098   678 _RI	=	0x0098
                           0000CF   679 _TF2	=	0x00cf
                           0000CF   680 _CAP1F	=	0x00cf
                           0000CE   681 _EXF2	=	0x00ce
                           0000CD   682 _RCLK	=	0x00cd
                           0000CC   683 _TCLK	=	0x00cc
                           0000CB   684 _EXEN2	=	0x00cb
                           0000CA   685 _TR2	=	0x00ca
                           0000C9   686 _C_T2	=	0x00c9
                           0000C8   687 _CP_RL2	=	0x00c8
                           0000FF   688 _S0_FST_ACT	=	0x00ff
                           0000FE   689 _S0_IF_OV	=	0x00fe
                           0000FD   690 _S0_IF_FIRST	=	0x00fd
                           0000FC   691 _S0_IF_BYTE	=	0x00fc
                           0000FB   692 _S0_FREE	=	0x00fb
                           0000FA   693 _S0_T_FIFO	=	0x00fa
                           0000F9   694 _S0_R_FIFO1	=	0x00f9
                           0000F8   695 _S0_R_FIFO0	=	0x00f8
                           0000DF   696 _U_IS_NAK	=	0x00df
                           0000DE   697 _U_TOG_OK	=	0x00de
                           0000DD   698 _U_SIE_FREE	=	0x00dd
                           0000DC   699 _UIF_FIFO_OV	=	0x00dc
                           0000DB   700 _UIF_HST_SOF	=	0x00db
                           0000DA   701 _UIF_SUSPEND	=	0x00da
                           0000D9   702 _UIF_TRANSFER	=	0x00d9
                           0000D8   703 _UIF_DETECT	=	0x00d8
                           0000D8   704 _UIF_BUS_RST	=	0x00d8
                                    705 ;--------------------------------------------------------
                                    706 ; overlayable register banks
                                    707 ;--------------------------------------------------------
                                    708 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        709 	.ds 8
                                    710 ;--------------------------------------------------------
                                    711 ; internal ram data
                                    712 ;--------------------------------------------------------
                                    713 	.area DSEG    (DATA)
      000060                        714 _VoltageController_begin_sloc0_1_0:
      000060                        715 	.ds 3
      000063                        716 _VoltageController_setVoltage_sloc0_1_0:
      000063                        717 	.ds 3
      000066                        718 _VoltageController_setVoltage_sloc1_1_0:
      000066                        719 	.ds 4
                                    720 ;--------------------------------------------------------
                                    721 ; overlayable items in internal ram
                                    722 ;--------------------------------------------------------
                                    723 ;--------------------------------------------------------
                                    724 ; indirectly addressable internal ram data
                                    725 ;--------------------------------------------------------
                                    726 	.area ISEG    (DATA)
                                    727 ;--------------------------------------------------------
                                    728 ; absolute internal ram data
                                    729 ;--------------------------------------------------------
                                    730 	.area IABS    (ABS,DATA)
                                    731 	.area IABS    (ABS,DATA)
                                    732 ;--------------------------------------------------------
                                    733 ; bit data
                                    734 ;--------------------------------------------------------
                                    735 	.area BSEG    (BIT)
                                    736 ;--------------------------------------------------------
                                    737 ; paged external ram data
                                    738 ;--------------------------------------------------------
                                    739 	.area PSEG    (PAG,XDATA)
                           002546   740 _pUEP4_1_MOD	=	0x2546
                           002547   741 _pUEP2_3_MOD	=	0x2547
                           002548   742 _pUEP0_DMA_H	=	0x2548
                           002549   743 _pUEP0_DMA_L	=	0x2549
                           00254A   744 _pUEP1_DMA_H	=	0x254a
                           00254B   745 _pUEP1_DMA_L	=	0x254b
                           00254C   746 _pUEP2_DMA_H	=	0x254c
                           00254D   747 _pUEP2_DMA_L	=	0x254d
                           00254E   748 _pUEP3_DMA_H	=	0x254e
                           00254F   749 _pUEP3_DMA_L	=	0x254f
                           002980   750 _pLED_STAT	=	0x2980
                           002981   751 _pLED_CTRL	=	0x2981
                           002982   752 _pLED_DATA	=	0x2982
                           002983   753 _pLED_CK_SE	=	0x2983
                           002984   754 _pLED_DMA_AH	=	0x2984
                           002985   755 _pLED_DMA_AL	=	0x2985
                           002986   756 _pLED_DMA_CN	=	0x2986
                           002988   757 _pLED_DMA_XH	=	0x2988
                           002989   758 _pLED_DMA_XL	=	0x2989
                                    759 ;--------------------------------------------------------
                                    760 ; uninitialized external ram data
                                    761 ;--------------------------------------------------------
                                    762 	.area XSEG    (XDATA)
                           002446   763 _UEP4_1_MOD	=	0x2446
                           002447   764 _UEP2_3_MOD	=	0x2447
                           002448   765 _UEP0_DMA_H	=	0x2448
                           002449   766 _UEP0_DMA_L	=	0x2449
                           00244A   767 _UEP1_DMA_H	=	0x244a
                           00244B   768 _UEP1_DMA_L	=	0x244b
                           00244C   769 _UEP2_DMA_H	=	0x244c
                           00244D   770 _UEP2_DMA_L	=	0x244d
                           00244E   771 _UEP3_DMA_H	=	0x244e
                           00244F   772 _UEP3_DMA_L	=	0x244f
                           002880   773 _LED_STAT	=	0x2880
                           002881   774 _LED_CTRL	=	0x2881
                           002882   775 _LED_DATA	=	0x2882
                           002883   776 _LED_CK_SE	=	0x2883
                           002884   777 _LED_DMA_AH	=	0x2884
                           002885   778 _LED_DMA_AL	=	0x2885
                           002886   779 _LED_DMA_CN	=	0x2886
                           002888   780 _LED_DMA_XH	=	0x2888
                           002889   781 _LED_DMA_XL	=	0x2889
      00023B                        782 _VoltageController_voltageToPWM_voltage_65536_180:
      00023B                        783 	.ds 4
      00023F                        784 _VoltageController_voltageToPWM_pwm_float_65536_181:
      00023F                        785 	.ds 4
      000243                        786 _VoltageController_begin_PARM_2:
      000243                        787 	.ds 1
      000244                        788 _VoltageController_begin_PARM_3:
      000244                        789 	.ds 1
      000245                        790 _VoltageController_begin_vc_65536_182:
      000245                        791 	.ds 3
      000248                        792 _VoltageController_setVoltage_PARM_2:
      000248                        793 	.ds 4
      00024C                        794 _VoltageController_setVoltage_vc_65536_184:
      00024C                        795 	.ds 3
      00024F                        796 _VoltageController_readVoltage_vc_65536_187:
      00024F                        797 	.ds 3
      000252                        798 _VoltageController_updateVoltage_vc_65536_189:
      000252                        799 	.ds 3
      000255                        800 _VoltageController_isVoltageAbnormal_vc_65536_191:
      000255                        801 	.ds 3
      000258                        802 _VoltageController_lockOutput_vc_65536_194:
      000258                        803 	.ds 3
      00025B                        804 _VoltageController_unlockOutput_vc_65536_196:
      00025B                        805 	.ds 3
      00025E                        806 _VoltageController_getTargetVoltage_vc_65536_198:
      00025E                        807 	.ds 3
      000261                        808 _VoltageController_getCurrentVoltage_vc_65536_200:
      000261                        809 	.ds 3
      000264                        810 _VoltageController_getPWMDuty_vc_65536_202:
      000264                        811 	.ds 3
      000267                        812 _VoltageController_isLocked_vc_65536_204:
      000267                        813 	.ds 3
                                    814 ;--------------------------------------------------------
                                    815 ; absolute external ram data
                                    816 ;--------------------------------------------------------
                                    817 	.area XABS    (ABS,XDATA)
                                    818 ;--------------------------------------------------------
                                    819 ; initialized external ram data
                                    820 ;--------------------------------------------------------
                                    821 	.area XISEG   (XDATA)
                                    822 	.area HOME    (CODE)
                                    823 	.area GSINIT0 (CODE)
                                    824 	.area GSINIT1 (CODE)
                                    825 	.area GSINIT2 (CODE)
                                    826 	.area GSINIT3 (CODE)
                                    827 	.area GSINIT4 (CODE)
                                    828 	.area GSINIT5 (CODE)
                                    829 	.area GSINIT  (CODE)
                                    830 	.area GSFINAL (CODE)
                                    831 	.area CSEG    (CODE)
                                    832 ;--------------------------------------------------------
                                    833 ; global & static initialisations
                                    834 ;--------------------------------------------------------
                                    835 	.area HOME    (CODE)
                                    836 	.area GSINIT  (CODE)
                                    837 	.area GSFINAL (CODE)
                                    838 	.area GSINIT  (CODE)
                                    839 ;--------------------------------------------------------
                                    840 ; Home
                                    841 ;--------------------------------------------------------
                                    842 	.area HOME    (CODE)
                                    843 	.area HOME    (CODE)
                                    844 ;--------------------------------------------------------
                                    845 ; code
                                    846 ;--------------------------------------------------------
                                    847 	.area CSEG    (CODE)
                                    848 ;------------------------------------------------------------
                                    849 ;Allocation info for local variables in function 'VoltageController_voltageToPWM'
                                    850 ;------------------------------------------------------------
                                    851 ;voltage                   Allocated with name '_VoltageController_voltageToPWM_voltage_65536_180'
                                    852 ;pwm_float                 Allocated with name '_VoltageController_voltageToPWM_pwm_float_65536_181'
                                    853 ;------------------------------------------------------------
                                    854 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:8: static uint8_t VoltageController_voltageToPWM(float voltage) {
                                    855 ;	-----------------------------------------
                                    856 ;	 function VoltageController_voltageToPWM
                                    857 ;	-----------------------------------------
      0040B6                        858 _VoltageController_voltageToPWM:
                           000007   859 	ar7 = 0x07
                           000006   860 	ar6 = 0x06
                           000005   861 	ar5 = 0x05
                           000004   862 	ar4 = 0x04
                           000003   863 	ar3 = 0x03
                           000002   864 	ar2 = 0x02
                           000001   865 	ar1 = 0x01
                           000000   866 	ar0 = 0x00
      0040B6 AF 82            [24]  867 	mov	r7,dpl
      0040B8 AE 83            [24]  868 	mov	r6,dph
      0040BA AD F0            [24]  869 	mov	r5,b
      0040BC FC               [12]  870 	mov	r4,a
      0040BD 90 02 3B         [24]  871 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      0040C0 EF               [12]  872 	mov	a,r7
      0040C1 F0               [24]  873 	movx	@dptr,a
      0040C2 EE               [12]  874 	mov	a,r6
      0040C3 A3               [24]  875 	inc	dptr
      0040C4 F0               [24]  876 	movx	@dptr,a
      0040C5 ED               [12]  877 	mov	a,r5
      0040C6 A3               [24]  878 	inc	dptr
      0040C7 F0               [24]  879 	movx	@dptr,a
      0040C8 EC               [12]  880 	mov	a,r4
      0040C9 A3               [24]  881 	inc	dptr
      0040CA F0               [24]  882 	movx	@dptr,a
                                    883 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:11: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      0040CB 90 02 3B         [24]  884 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      0040CE E0               [24]  885 	movx	a,@dptr
      0040CF FC               [12]  886 	mov	r4,a
      0040D0 A3               [24]  887 	inc	dptr
      0040D1 E0               [24]  888 	movx	a,@dptr
      0040D2 FD               [12]  889 	mov	r5,a
      0040D3 A3               [24]  890 	inc	dptr
      0040D4 E0               [24]  891 	movx	a,@dptr
      0040D5 FE               [12]  892 	mov	r6,a
      0040D6 A3               [24]  893 	inc	dptr
      0040D7 E0               [24]  894 	movx	a,@dptr
      0040D8 FF               [12]  895 	mov	r7,a
      0040D9 E4               [12]  896 	clr	a
      0040DA C0 E0            [24]  897 	push	acc
      0040DC C0 E0            [24]  898 	push	acc
      0040DE 74 A0            [12]  899 	mov	a,#0xa0
      0040E0 C0 E0            [24]  900 	push	acc
      0040E2 74 40            [12]  901 	mov	a,#0x40
      0040E4 C0 E0            [24]  902 	push	acc
      0040E6 8C 82            [24]  903 	mov	dpl,r4
      0040E8 8D 83            [24]  904 	mov	dph,r5
      0040EA 8E F0            [24]  905 	mov	b,r6
      0040EC EF               [12]  906 	mov	a,r7
      0040ED 12 56 D5         [24]  907 	lcall	___fslt
      0040F0 AF 82            [24]  908 	mov	r7,dpl
      0040F2 E5 81            [12]  909 	mov	a,sp
      0040F4 24 FC            [12]  910 	add	a,#0xfc
      0040F6 F5 81            [12]  911 	mov	sp,a
      0040F8 EF               [12]  912 	mov	a,r7
      0040F9 60 0F            [24]  913 	jz	00102$
      0040FB 90 02 3B         [24]  914 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      0040FE E4               [12]  915 	clr	a
      0040FF F0               [24]  916 	movx	@dptr,a
      004100 A3               [24]  917 	inc	dptr
      004101 F0               [24]  918 	movx	@dptr,a
      004102 74 A0            [12]  919 	mov	a,#0xa0
      004104 A3               [24]  920 	inc	dptr
      004105 F0               [24]  921 	movx	@dptr,a
      004106 74 40            [12]  922 	mov	a,#0x40
      004108 A3               [24]  923 	inc	dptr
      004109 F0               [24]  924 	movx	@dptr,a
      00410A                        925 00102$:
                                    926 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:12: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      00410A 90 02 3B         [24]  927 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      00410D E0               [24]  928 	movx	a,@dptr
      00410E C0 E0            [24]  929 	push	acc
      004110 A3               [24]  930 	inc	dptr
      004111 E0               [24]  931 	movx	a,@dptr
      004112 C0 E0            [24]  932 	push	acc
      004114 A3               [24]  933 	inc	dptr
      004115 E0               [24]  934 	movx	a,@dptr
      004116 C0 E0            [24]  935 	push	acc
      004118 A3               [24]  936 	inc	dptr
      004119 E0               [24]  937 	movx	a,@dptr
      00411A C0 E0            [24]  938 	push	acc
      00411C 90 00 00         [24]  939 	mov	dptr,#0x0000
      00411F 75 F0 40         [24]  940 	mov	b,#0x40
      004122 74 41            [12]  941 	mov	a,#0x41
      004124 12 56 D5         [24]  942 	lcall	___fslt
      004127 AF 82            [24]  943 	mov	r7,dpl
      004129 E5 81            [12]  944 	mov	a,sp
      00412B 24 FC            [12]  945 	add	a,#0xfc
      00412D F5 81            [12]  946 	mov	sp,a
      00412F EF               [12]  947 	mov	a,r7
      004130 60 0E            [24]  948 	jz	00104$
      004132 90 02 3B         [24]  949 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      004135 E4               [12]  950 	clr	a
      004136 F0               [24]  951 	movx	@dptr,a
      004137 A3               [24]  952 	inc	dptr
      004138 F0               [24]  953 	movx	@dptr,a
      004139 74 40            [12]  954 	mov	a,#0x40
      00413B A3               [24]  955 	inc	dptr
      00413C F0               [24]  956 	movx	@dptr,a
      00413D 04               [12]  957 	inc	a
      00413E A3               [24]  958 	inc	dptr
      00413F F0               [24]  959 	movx	@dptr,a
      004140                        960 00104$:
                                    961 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:13: pwm_float = (VOUT_MAX - voltage) / (VOUT_MAX - VOUT_MIN) * PWM_RESOLUTION;
      004140 90 02 3B         [24]  962 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      004143 E0               [24]  963 	movx	a,@dptr
      004144 C0 E0            [24]  964 	push	acc
      004146 A3               [24]  965 	inc	dptr
      004147 E0               [24]  966 	movx	a,@dptr
      004148 C0 E0            [24]  967 	push	acc
      00414A A3               [24]  968 	inc	dptr
      00414B E0               [24]  969 	movx	a,@dptr
      00414C C0 E0            [24]  970 	push	acc
      00414E A3               [24]  971 	inc	dptr
      00414F E0               [24]  972 	movx	a,@dptr
      004150 C0 E0            [24]  973 	push	acc
      004152 90 00 00         [24]  974 	mov	dptr,#0x0000
      004155 75 F0 40         [24]  975 	mov	b,#0x40
      004158 74 41            [12]  976 	mov	a,#0x41
      00415A 12 48 12         [24]  977 	lcall	___fssub
      00415D AC 82            [24]  978 	mov	r4,dpl
      00415F AD 83            [24]  979 	mov	r5,dph
      004161 AE F0            [24]  980 	mov	r6,b
      004163 FF               [12]  981 	mov	r7,a
      004164 E5 81            [12]  982 	mov	a,sp
      004166 24 FC            [12]  983 	add	a,#0xfc
      004168 F5 81            [12]  984 	mov	sp,a
      00416A E4               [12]  985 	clr	a
      00416B C0 E0            [24]  986 	push	acc
      00416D C0 E0            [24]  987 	push	acc
      00416F 74 E0            [12]  988 	mov	a,#0xe0
      004171 C0 E0            [24]  989 	push	acc
      004173 74 40            [12]  990 	mov	a,#0x40
      004175 C0 E0            [24]  991 	push	acc
      004177 8C 82            [24]  992 	mov	dpl,r4
      004179 8D 83            [24]  993 	mov	dph,r5
      00417B 8E F0            [24]  994 	mov	b,r6
      00417D EF               [12]  995 	mov	a,r7
      00417E 12 5C 8F         [24]  996 	lcall	___fsdiv
      004181 AC 82            [24]  997 	mov	r4,dpl
      004183 AD 83            [24]  998 	mov	r5,dph
      004185 AE F0            [24]  999 	mov	r6,b
      004187 FF               [12] 1000 	mov	r7,a
      004188 E5 81            [12] 1001 	mov	a,sp
      00418A 24 FC            [12] 1002 	add	a,#0xfc
      00418C F5 81            [12] 1003 	mov	sp,a
      00418E C0 04            [24] 1004 	push	ar4
      004190 C0 05            [24] 1005 	push	ar5
      004192 C0 06            [24] 1006 	push	ar6
      004194 C0 07            [24] 1007 	push	ar7
      004196 90 00 00         [24] 1008 	mov	dptr,#0x0000
      004199 75 F0 7F         [24] 1009 	mov	b,#0x7f
      00419C 74 43            [12] 1010 	mov	a,#0x43
      00419E 12 48 95         [24] 1011 	lcall	___fsmul
      0041A1 AC 82            [24] 1012 	mov	r4,dpl
      0041A3 AD 83            [24] 1013 	mov	r5,dph
      0041A5 AE F0            [24] 1014 	mov	r6,b
      0041A7 FF               [12] 1015 	mov	r7,a
      0041A8 E5 81            [12] 1016 	mov	a,sp
      0041AA 24 FC            [12] 1017 	add	a,#0xfc
      0041AC F5 81            [12] 1018 	mov	sp,a
      0041AE 90 02 3F         [24] 1019 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      0041B1 EC               [12] 1020 	mov	a,r4
      0041B2 F0               [24] 1021 	movx	@dptr,a
      0041B3 ED               [12] 1022 	mov	a,r5
      0041B4 A3               [24] 1023 	inc	dptr
      0041B5 F0               [24] 1024 	movx	@dptr,a
      0041B6 EE               [12] 1025 	mov	a,r6
      0041B7 A3               [24] 1026 	inc	dptr
      0041B8 F0               [24] 1027 	movx	@dptr,a
      0041B9 EF               [12] 1028 	mov	a,r7
      0041BA A3               [24] 1029 	inc	dptr
      0041BB F0               [24] 1030 	movx	@dptr,a
                                   1031 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:14: if (pwm_float < 0.0f) pwm_float = 0.0f;
      0041BC E4               [12] 1032 	clr	a
      0041BD C0 E0            [24] 1033 	push	acc
      0041BF C0 E0            [24] 1034 	push	acc
      0041C1 C0 E0            [24] 1035 	push	acc
      0041C3 C0 E0            [24] 1036 	push	acc
      0041C5 8C 82            [24] 1037 	mov	dpl,r4
      0041C7 8D 83            [24] 1038 	mov	dph,r5
      0041C9 8E F0            [24] 1039 	mov	b,r6
      0041CB EF               [12] 1040 	mov	a,r7
      0041CC 12 56 D5         [24] 1041 	lcall	___fslt
      0041CF AF 82            [24] 1042 	mov	r7,dpl
      0041D1 E5 81            [12] 1043 	mov	a,sp
      0041D3 24 FC            [12] 1044 	add	a,#0xfc
      0041D5 F5 81            [12] 1045 	mov	sp,a
      0041D7 EF               [12] 1046 	mov	a,r7
      0041D8 60 0B            [24] 1047 	jz	00106$
      0041DA 90 02 3F         [24] 1048 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      0041DD E4               [12] 1049 	clr	a
      0041DE F0               [24] 1050 	movx	@dptr,a
      0041DF A3               [24] 1051 	inc	dptr
      0041E0 F0               [24] 1052 	movx	@dptr,a
      0041E1 A3               [24] 1053 	inc	dptr
      0041E2 F0               [24] 1054 	movx	@dptr,a
      0041E3 A3               [24] 1055 	inc	dptr
      0041E4 F0               [24] 1056 	movx	@dptr,a
      0041E5                       1057 00106$:
                                   1058 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:15: if (pwm_float > (float)PWM_RESOLUTION) pwm_float = (float)PWM_RESOLUTION;
      0041E5 90 02 3F         [24] 1059 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      0041E8 E0               [24] 1060 	movx	a,@dptr
      0041E9 C0 E0            [24] 1061 	push	acc
      0041EB A3               [24] 1062 	inc	dptr
      0041EC E0               [24] 1063 	movx	a,@dptr
      0041ED C0 E0            [24] 1064 	push	acc
      0041EF A3               [24] 1065 	inc	dptr
      0041F0 E0               [24] 1066 	movx	a,@dptr
      0041F1 C0 E0            [24] 1067 	push	acc
      0041F3 A3               [24] 1068 	inc	dptr
      0041F4 E0               [24] 1069 	movx	a,@dptr
      0041F5 C0 E0            [24] 1070 	push	acc
      0041F7 90 00 00         [24] 1071 	mov	dptr,#0x0000
      0041FA 75 F0 7F         [24] 1072 	mov	b,#0x7f
      0041FD 74 43            [12] 1073 	mov	a,#0x43
      0041FF 12 56 D5         [24] 1074 	lcall	___fslt
      004202 AF 82            [24] 1075 	mov	r7,dpl
      004204 E5 81            [12] 1076 	mov	a,sp
      004206 24 FC            [12] 1077 	add	a,#0xfc
      004208 F5 81            [12] 1078 	mov	sp,a
      00420A EF               [12] 1079 	mov	a,r7
      00420B 60 0F            [24] 1080 	jz	00108$
      00420D 90 02 3F         [24] 1081 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      004210 E4               [12] 1082 	clr	a
      004211 F0               [24] 1083 	movx	@dptr,a
      004212 A3               [24] 1084 	inc	dptr
      004213 F0               [24] 1085 	movx	@dptr,a
      004214 74 7F            [12] 1086 	mov	a,#0x7f
      004216 A3               [24] 1087 	inc	dptr
      004217 F0               [24] 1088 	movx	@dptr,a
      004218 74 43            [12] 1089 	mov	a,#0x43
      00421A A3               [24] 1090 	inc	dptr
      00421B F0               [24] 1091 	movx	@dptr,a
      00421C                       1092 00108$:
                                   1093 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:16: return (uint8_t)pwm_float;
      00421C 90 02 3F         [24] 1094 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      00421F E0               [24] 1095 	movx	a,@dptr
      004220 FC               [12] 1096 	mov	r4,a
      004221 A3               [24] 1097 	inc	dptr
      004222 E0               [24] 1098 	movx	a,@dptr
      004223 FD               [12] 1099 	mov	r5,a
      004224 A3               [24] 1100 	inc	dptr
      004225 E0               [24] 1101 	movx	a,@dptr
      004226 FE               [12] 1102 	mov	r6,a
      004227 A3               [24] 1103 	inc	dptr
      004228 E0               [24] 1104 	movx	a,@dptr
      004229 8C 82            [24] 1105 	mov	dpl,r4
      00422B 8D 83            [24] 1106 	mov	dph,r5
      00422D 8E F0            [24] 1107 	mov	b,r6
                                   1108 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:17: }
      00422F 02 5D 52         [24] 1109 	ljmp	___fs2uchar
                                   1110 ;------------------------------------------------------------
                                   1111 ;Allocation info for local variables in function 'VoltageController_begin'
                                   1112 ;------------------------------------------------------------
                                   1113 ;sloc0                     Allocated with name '_VoltageController_begin_sloc0_1_0'
                                   1114 ;pwm_out                   Allocated with name '_VoltageController_begin_PARM_2'
                                   1115 ;adc_in                    Allocated with name '_VoltageController_begin_PARM_3'
                                   1116 ;vc                        Allocated with name '_VoltageController_begin_vc_65536_182'
                                   1117 ;------------------------------------------------------------
                                   1118 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:19: void VoltageController_begin(VoltageController* vc, uint8_t pwm_out, uint8_t adc_in) {
                                   1119 ;	-----------------------------------------
                                   1120 ;	 function VoltageController_begin
                                   1121 ;	-----------------------------------------
      004232                       1122 _VoltageController_begin:
      004232 AF F0            [24] 1123 	mov	r7,b
      004234 AE 83            [24] 1124 	mov	r6,dph
      004236 E5 82            [12] 1125 	mov	a,dpl
      004238 90 02 45         [24] 1126 	mov	dptr,#_VoltageController_begin_vc_65536_182
      00423B F0               [24] 1127 	movx	@dptr,a
      00423C EE               [12] 1128 	mov	a,r6
      00423D A3               [24] 1129 	inc	dptr
      00423E F0               [24] 1130 	movx	@dptr,a
      00423F EF               [12] 1131 	mov	a,r7
      004240 A3               [24] 1132 	inc	dptr
      004241 F0               [24] 1133 	movx	@dptr,a
                                   1134 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:20: vc->pwm_pin = pwm_out;
      004242 90 02 45         [24] 1135 	mov	dptr,#_VoltageController_begin_vc_65536_182
      004245 E0               [24] 1136 	movx	a,@dptr
      004246 FD               [12] 1137 	mov	r5,a
      004247 A3               [24] 1138 	inc	dptr
      004248 E0               [24] 1139 	movx	a,@dptr
      004249 FE               [12] 1140 	mov	r6,a
      00424A A3               [24] 1141 	inc	dptr
      00424B E0               [24] 1142 	movx	a,@dptr
      00424C FF               [12] 1143 	mov	r7,a
      00424D 90 02 43         [24] 1144 	mov	dptr,#_VoltageController_begin_PARM_2
      004250 E0               [24] 1145 	movx	a,@dptr
      004251 FC               [12] 1146 	mov	r4,a
      004252 8D 82            [24] 1147 	mov	dpl,r5
      004254 8E 83            [24] 1148 	mov	dph,r6
      004256 8F F0            [24] 1149 	mov	b,r7
      004258 12 56 BA         [24] 1150 	lcall	__gptrput
                                   1151 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:21: vc->adc_pin = adc_in;
      00425B 74 01            [12] 1152 	mov	a,#0x01
      00425D 2D               [12] 1153 	add	a,r5
      00425E F5 60            [12] 1154 	mov	_VoltageController_begin_sloc0_1_0,a
      004260 E4               [12] 1155 	clr	a
      004261 3E               [12] 1156 	addc	a,r6
      004262 F5 61            [12] 1157 	mov	(_VoltageController_begin_sloc0_1_0 + 1),a
      004264 8F 62            [24] 1158 	mov	(_VoltageController_begin_sloc0_1_0 + 2),r7
      004266 90 02 44         [24] 1159 	mov	dptr,#_VoltageController_begin_PARM_3
      004269 E0               [24] 1160 	movx	a,@dptr
      00426A 85 60 82         [24] 1161 	mov	dpl,_VoltageController_begin_sloc0_1_0
      00426D 85 61 83         [24] 1162 	mov	dph,(_VoltageController_begin_sloc0_1_0 + 1)
      004270 85 62 F0         [24] 1163 	mov	b,(_VoltageController_begin_sloc0_1_0 + 2)
      004273 12 56 BA         [24] 1164 	lcall	__gptrput
                                   1165 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:24: pinMode(vc->pwm_pin, OUTPUT);
      004276 90 02 6D         [24] 1166 	mov	dptr,#_pinMode_PARM_2
      004279 74 01            [12] 1167 	mov	a,#0x01
      00427B F0               [24] 1168 	movx	@dptr,a
      00427C 8C 82            [24] 1169 	mov	dpl,r4
      00427E C0 07            [24] 1170 	push	ar7
      004280 C0 06            [24] 1171 	push	ar6
      004282 C0 05            [24] 1172 	push	ar5
      004284 12 4A FA         [24] 1173 	lcall	_pinMode
      004287 D0 05            [24] 1174 	pop	ar5
      004289 D0 06            [24] 1175 	pop	ar6
      00428B D0 07            [24] 1176 	pop	ar7
                                   1177 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:27: analogWrite(vc->pwm_pin, 0);
      00428D 8D 82            [24] 1178 	mov	dpl,r5
      00428F 8E 83            [24] 1179 	mov	dph,r6
      004291 8F F0            [24] 1180 	mov	b,r7
      004293 12 5D 5A         [24] 1181 	lcall	__gptrget
      004296 FC               [12] 1182 	mov	r4,a
      004297 90 02 6F         [24] 1183 	mov	dptr,#_analogWrite_PARM_2
      00429A E4               [12] 1184 	clr	a
      00429B F0               [24] 1185 	movx	@dptr,a
      00429C A3               [24] 1186 	inc	dptr
      00429D F0               [24] 1187 	movx	@dptr,a
      00429E 8C 82            [24] 1188 	mov	dpl,r4
      0042A0 C0 07            [24] 1189 	push	ar7
      0042A2 C0 06            [24] 1190 	push	ar6
      0042A4 C0 05            [24] 1191 	push	ar5
      0042A6 12 4D D3         [24] 1192 	lcall	_analogWrite
      0042A9 D0 05            [24] 1193 	pop	ar5
      0042AB D0 06            [24] 1194 	pop	ar6
      0042AD D0 07            [24] 1195 	pop	ar7
                                   1196 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:28: vc->current_pwm_duty = 0;
      0042AF 74 0A            [12] 1197 	mov	a,#0x0a
      0042B1 2D               [12] 1198 	add	a,r5
      0042B2 F8               [12] 1199 	mov	r0,a
      0042B3 E4               [12] 1200 	clr	a
      0042B4 3E               [12] 1201 	addc	a,r6
      0042B5 FB               [12] 1202 	mov	r3,a
      0042B6 8F 04            [24] 1203 	mov	ar4,r7
      0042B8 88 82            [24] 1204 	mov	dpl,r0
      0042BA 8B 83            [24] 1205 	mov	dph,r3
      0042BC 8C F0            [24] 1206 	mov	b,r4
      0042BE E4               [12] 1207 	clr	a
      0042BF 12 56 BA         [24] 1208 	lcall	__gptrput
                                   1209 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:29: vc->target_voltage = VOUT_DEFAULT;
      0042C2 74 02            [12] 1210 	mov	a,#0x02
      0042C4 2D               [12] 1211 	add	a,r5
      0042C5 FA               [12] 1212 	mov	r2,a
      0042C6 E4               [12] 1213 	clr	a
      0042C7 3E               [12] 1214 	addc	a,r6
      0042C8 FB               [12] 1215 	mov	r3,a
      0042C9 8F 04            [24] 1216 	mov	ar4,r7
      0042CB 8A 82            [24] 1217 	mov	dpl,r2
      0042CD 8B 83            [24] 1218 	mov	dph,r3
      0042CF 8C F0            [24] 1219 	mov	b,r4
      0042D1 E4               [12] 1220 	clr	a
      0042D2 12 56 BA         [24] 1221 	lcall	__gptrput
      0042D5 A3               [24] 1222 	inc	dptr
      0042D6 12 56 BA         [24] 1223 	lcall	__gptrput
      0042D9 A3               [24] 1224 	inc	dptr
      0042DA 74 40            [12] 1225 	mov	a,#0x40
      0042DC 12 56 BA         [24] 1226 	lcall	__gptrput
      0042DF A3               [24] 1227 	inc	dptr
      0042E0 04               [12] 1228 	inc	a
      0042E1 12 56 BA         [24] 1229 	lcall	__gptrput
                                   1230 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:30: vc->is_locked = false;
      0042E4 74 0B            [12] 1231 	mov	a,#0x0b
      0042E6 2D               [12] 1232 	add	a,r5
      0042E7 FA               [12] 1233 	mov	r2,a
      0042E8 E4               [12] 1234 	clr	a
      0042E9 3E               [12] 1235 	addc	a,r6
      0042EA FB               [12] 1236 	mov	r3,a
      0042EB 8F 04            [24] 1237 	mov	ar4,r7
      0042ED 8A 82            [24] 1238 	mov	dpl,r2
      0042EF 8B 83            [24] 1239 	mov	dph,r3
      0042F1 8C F0            [24] 1240 	mov	b,r4
      0042F3 E4               [12] 1241 	clr	a
      0042F4 12 56 BA         [24] 1242 	lcall	__gptrput
                                   1243 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:33: pinMode(vc->adc_pin, INPUT);
      0042F7 85 60 82         [24] 1244 	mov	dpl,_VoltageController_begin_sloc0_1_0
      0042FA 85 61 83         [24] 1245 	mov	dph,(_VoltageController_begin_sloc0_1_0 + 1)
      0042FD 85 62 F0         [24] 1246 	mov	b,(_VoltageController_begin_sloc0_1_0 + 2)
      004300 12 5D 5A         [24] 1247 	lcall	__gptrget
      004303 FC               [12] 1248 	mov	r4,a
      004304 90 02 6D         [24] 1249 	mov	dptr,#_pinMode_PARM_2
      004307 E4               [12] 1250 	clr	a
      004308 F0               [24] 1251 	movx	@dptr,a
      004309 8C 82            [24] 1252 	mov	dpl,r4
      00430B C0 07            [24] 1253 	push	ar7
      00430D C0 06            [24] 1254 	push	ar6
      00430F C0 05            [24] 1255 	push	ar5
      004311 12 4A FA         [24] 1256 	lcall	_pinMode
                                   1257 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:36: delay(100);
      004314 90 00 64         [24] 1258 	mov	dptr,#(0x64&0x00ff)
      004317 E4               [12] 1259 	clr	a
      004318 F5 F0            [12] 1260 	mov	b,a
      00431A 12 4F BF         [24] 1261 	lcall	_delay
      00431D D0 05            [24] 1262 	pop	ar5
      00431F D0 06            [24] 1263 	pop	ar6
      004321 D0 07            [24] 1264 	pop	ar7
                                   1265 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:37: vc->current_voltage = VoltageController_readVoltage(vc);
      004323 74 06            [12] 1266 	mov	a,#0x06
      004325 2D               [12] 1267 	add	a,r5
      004326 FA               [12] 1268 	mov	r2,a
      004327 E4               [12] 1269 	clr	a
      004328 3E               [12] 1270 	addc	a,r6
      004329 FB               [12] 1271 	mov	r3,a
      00432A 8F 04            [24] 1272 	mov	ar4,r7
      00432C 8D 82            [24] 1273 	mov	dpl,r5
      00432E 8E 83            [24] 1274 	mov	dph,r6
      004330 8F F0            [24] 1275 	mov	b,r7
      004332 C0 04            [24] 1276 	push	ar4
      004334 C0 03            [24] 1277 	push	ar3
      004336 C0 02            [24] 1278 	push	ar2
      004338 12 44 AD         [24] 1279 	lcall	_VoltageController_readVoltage
      00433B A9 82            [24] 1280 	mov	r1,dpl
      00433D AD 83            [24] 1281 	mov	r5,dph
      00433F AE F0            [24] 1282 	mov	r6,b
      004341 FF               [12] 1283 	mov	r7,a
      004342 D0 02            [24] 1284 	pop	ar2
      004344 D0 03            [24] 1285 	pop	ar3
      004346 D0 04            [24] 1286 	pop	ar4
      004348 8A 82            [24] 1287 	mov	dpl,r2
      00434A 8B 83            [24] 1288 	mov	dph,r3
      00434C 8C F0            [24] 1289 	mov	b,r4
      00434E E9               [12] 1290 	mov	a,r1
      00434F 12 56 BA         [24] 1291 	lcall	__gptrput
      004352 A3               [24] 1292 	inc	dptr
      004353 ED               [12] 1293 	mov	a,r5
      004354 12 56 BA         [24] 1294 	lcall	__gptrput
      004357 A3               [24] 1295 	inc	dptr
      004358 EE               [12] 1296 	mov	a,r6
      004359 12 56 BA         [24] 1297 	lcall	__gptrput
      00435C A3               [24] 1298 	inc	dptr
      00435D EF               [12] 1299 	mov	a,r7
                                   1300 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:38: }
      00435E 02 56 BA         [24] 1301 	ljmp	__gptrput
                                   1302 ;------------------------------------------------------------
                                   1303 ;Allocation info for local variables in function 'VoltageController_setVoltage'
                                   1304 ;------------------------------------------------------------
                                   1305 ;sloc0                     Allocated with name '_VoltageController_setVoltage_sloc0_1_0'
                                   1306 ;sloc1                     Allocated with name '_VoltageController_setVoltage_sloc1_1_0'
                                   1307 ;voltage                   Allocated with name '_VoltageController_setVoltage_PARM_2'
                                   1308 ;vc                        Allocated with name '_VoltageController_setVoltage_vc_65536_184'
                                   1309 ;------------------------------------------------------------
                                   1310 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:40: void VoltageController_setVoltage(VoltageController* vc, float voltage) {
                                   1311 ;	-----------------------------------------
                                   1312 ;	 function VoltageController_setVoltage
                                   1313 ;	-----------------------------------------
      004361                       1314 _VoltageController_setVoltage:
      004361 AF F0            [24] 1315 	mov	r7,b
      004363 AE 83            [24] 1316 	mov	r6,dph
      004365 E5 82            [12] 1317 	mov	a,dpl
      004367 90 02 4C         [24] 1318 	mov	dptr,#_VoltageController_setVoltage_vc_65536_184
      00436A F0               [24] 1319 	movx	@dptr,a
      00436B EE               [12] 1320 	mov	a,r6
      00436C A3               [24] 1321 	inc	dptr
      00436D F0               [24] 1322 	movx	@dptr,a
      00436E EF               [12] 1323 	mov	a,r7
      00436F A3               [24] 1324 	inc	dptr
      004370 F0               [24] 1325 	movx	@dptr,a
                                   1326 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:41: if (vc->is_locked) {
      004371 90 02 4C         [24] 1327 	mov	dptr,#_VoltageController_setVoltage_vc_65536_184
      004374 E0               [24] 1328 	movx	a,@dptr
      004375 FD               [12] 1329 	mov	r5,a
      004376 A3               [24] 1330 	inc	dptr
      004377 E0               [24] 1331 	movx	a,@dptr
      004378 FE               [12] 1332 	mov	r6,a
      004379 A3               [24] 1333 	inc	dptr
      00437A E0               [24] 1334 	movx	a,@dptr
      00437B FF               [12] 1335 	mov	r7,a
      00437C 74 0B            [12] 1336 	mov	a,#0x0b
      00437E 2D               [12] 1337 	add	a,r5
      00437F FA               [12] 1338 	mov	r2,a
      004380 E4               [12] 1339 	clr	a
      004381 3E               [12] 1340 	addc	a,r6
      004382 FB               [12] 1341 	mov	r3,a
      004383 8F 04            [24] 1342 	mov	ar4,r7
      004385 8A 82            [24] 1343 	mov	dpl,r2
      004387 8B 83            [24] 1344 	mov	dph,r3
      004389 8C F0            [24] 1345 	mov	b,r4
      00438B 12 5D 5A         [24] 1346 	lcall	__gptrget
      00438E 60 01            [24] 1347 	jz	00102$
                                   1348 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:42: return;
      004390 22               [24] 1349 	ret
      004391                       1350 00102$:
                                   1351 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:45: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      004391 90 02 48         [24] 1352 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      004394 E0               [24] 1353 	movx	a,@dptr
      004395 F9               [12] 1354 	mov	r1,a
      004396 A3               [24] 1355 	inc	dptr
      004397 E0               [24] 1356 	movx	a,@dptr
      004398 FA               [12] 1357 	mov	r2,a
      004399 A3               [24] 1358 	inc	dptr
      00439A E0               [24] 1359 	movx	a,@dptr
      00439B FB               [12] 1360 	mov	r3,a
      00439C A3               [24] 1361 	inc	dptr
      00439D E0               [24] 1362 	movx	a,@dptr
      00439E FC               [12] 1363 	mov	r4,a
      00439F C0 07            [24] 1364 	push	ar7
      0043A1 C0 06            [24] 1365 	push	ar6
      0043A3 C0 05            [24] 1366 	push	ar5
      0043A5 E4               [12] 1367 	clr	a
      0043A6 C0 E0            [24] 1368 	push	acc
      0043A8 C0 E0            [24] 1369 	push	acc
      0043AA 74 A0            [12] 1370 	mov	a,#0xa0
      0043AC C0 E0            [24] 1371 	push	acc
      0043AE 74 40            [12] 1372 	mov	a,#0x40
      0043B0 C0 E0            [24] 1373 	push	acc
      0043B2 89 82            [24] 1374 	mov	dpl,r1
      0043B4 8A 83            [24] 1375 	mov	dph,r2
      0043B6 8B F0            [24] 1376 	mov	b,r3
      0043B8 EC               [12] 1377 	mov	a,r4
      0043B9 12 56 D5         [24] 1378 	lcall	___fslt
      0043BC AC 82            [24] 1379 	mov	r4,dpl
      0043BE E5 81            [12] 1380 	mov	a,sp
      0043C0 24 FC            [12] 1381 	add	a,#0xfc
      0043C2 F5 81            [12] 1382 	mov	sp,a
      0043C4 D0 05            [24] 1383 	pop	ar5
      0043C6 D0 06            [24] 1384 	pop	ar6
      0043C8 D0 07            [24] 1385 	pop	ar7
      0043CA EC               [12] 1386 	mov	a,r4
      0043CB 60 0F            [24] 1387 	jz	00104$
      0043CD 90 02 48         [24] 1388 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      0043D0 E4               [12] 1389 	clr	a
      0043D1 F0               [24] 1390 	movx	@dptr,a
      0043D2 A3               [24] 1391 	inc	dptr
      0043D3 F0               [24] 1392 	movx	@dptr,a
      0043D4 74 A0            [12] 1393 	mov	a,#0xa0
      0043D6 A3               [24] 1394 	inc	dptr
      0043D7 F0               [24] 1395 	movx	@dptr,a
      0043D8 74 40            [12] 1396 	mov	a,#0x40
      0043DA A3               [24] 1397 	inc	dptr
      0043DB F0               [24] 1398 	movx	@dptr,a
      0043DC                       1399 00104$:
                                   1400 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:46: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      0043DC C0 07            [24] 1401 	push	ar7
      0043DE C0 06            [24] 1402 	push	ar6
      0043E0 C0 05            [24] 1403 	push	ar5
      0043E2 90 02 48         [24] 1404 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      0043E5 E0               [24] 1405 	movx	a,@dptr
      0043E6 C0 E0            [24] 1406 	push	acc
      0043E8 A3               [24] 1407 	inc	dptr
      0043E9 E0               [24] 1408 	movx	a,@dptr
      0043EA C0 E0            [24] 1409 	push	acc
      0043EC A3               [24] 1410 	inc	dptr
      0043ED E0               [24] 1411 	movx	a,@dptr
      0043EE C0 E0            [24] 1412 	push	acc
      0043F0 A3               [24] 1413 	inc	dptr
      0043F1 E0               [24] 1414 	movx	a,@dptr
      0043F2 C0 E0            [24] 1415 	push	acc
      0043F4 90 00 00         [24] 1416 	mov	dptr,#0x0000
      0043F7 75 F0 40         [24] 1417 	mov	b,#0x40
      0043FA 74 41            [12] 1418 	mov	a,#0x41
      0043FC 12 56 D5         [24] 1419 	lcall	___fslt
      0043FF AC 82            [24] 1420 	mov	r4,dpl
      004401 E5 81            [12] 1421 	mov	a,sp
      004403 24 FC            [12] 1422 	add	a,#0xfc
      004405 F5 81            [12] 1423 	mov	sp,a
      004407 D0 05            [24] 1424 	pop	ar5
      004409 D0 06            [24] 1425 	pop	ar6
      00440B D0 07            [24] 1426 	pop	ar7
      00440D EC               [12] 1427 	mov	a,r4
      00440E 60 0E            [24] 1428 	jz	00106$
      004410 90 02 48         [24] 1429 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      004413 E4               [12] 1430 	clr	a
      004414 F0               [24] 1431 	movx	@dptr,a
      004415 A3               [24] 1432 	inc	dptr
      004416 F0               [24] 1433 	movx	@dptr,a
      004417 74 40            [12] 1434 	mov	a,#0x40
      004419 A3               [24] 1435 	inc	dptr
      00441A F0               [24] 1436 	movx	@dptr,a
      00441B 04               [12] 1437 	inc	a
      00441C A3               [24] 1438 	inc	dptr
      00441D F0               [24] 1439 	movx	@dptr,a
      00441E                       1440 00106$:
                                   1441 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:47: vc->target_voltage = voltage;
      00441E 74 02            [12] 1442 	mov	a,#0x02
      004420 2D               [12] 1443 	add	a,r5
      004421 F5 63            [12] 1444 	mov	_VoltageController_setVoltage_sloc0_1_0,a
      004423 E4               [12] 1445 	clr	a
      004424 3E               [12] 1446 	addc	a,r6
      004425 F5 64            [12] 1447 	mov	(_VoltageController_setVoltage_sloc0_1_0 + 1),a
      004427 8F 65            [24] 1448 	mov	(_VoltageController_setVoltage_sloc0_1_0 + 2),r7
      004429 90 02 48         [24] 1449 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      00442C E0               [24] 1450 	movx	a,@dptr
      00442D F5 66            [12] 1451 	mov	_VoltageController_setVoltage_sloc1_1_0,a
      00442F A3               [24] 1452 	inc	dptr
      004430 E0               [24] 1453 	movx	a,@dptr
      004431 F5 67            [12] 1454 	mov	(_VoltageController_setVoltage_sloc1_1_0 + 1),a
      004433 A3               [24] 1455 	inc	dptr
      004434 E0               [24] 1456 	movx	a,@dptr
      004435 F5 68            [12] 1457 	mov	(_VoltageController_setVoltage_sloc1_1_0 + 2),a
      004437 A3               [24] 1458 	inc	dptr
      004438 E0               [24] 1459 	movx	a,@dptr
      004439 F5 69            [12] 1460 	mov	(_VoltageController_setVoltage_sloc1_1_0 + 3),a
      00443B 85 63 82         [24] 1461 	mov	dpl,_VoltageController_setVoltage_sloc0_1_0
      00443E 85 64 83         [24] 1462 	mov	dph,(_VoltageController_setVoltage_sloc0_1_0 + 1)
      004441 85 65 F0         [24] 1463 	mov	b,(_VoltageController_setVoltage_sloc0_1_0 + 2)
      004444 E5 66            [12] 1464 	mov	a,_VoltageController_setVoltage_sloc1_1_0
      004446 12 56 BA         [24] 1465 	lcall	__gptrput
      004449 A3               [24] 1466 	inc	dptr
      00444A E5 67            [12] 1467 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 1)
      00444C 12 56 BA         [24] 1468 	lcall	__gptrput
      00444F A3               [24] 1469 	inc	dptr
      004450 E5 68            [12] 1470 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 2)
      004452 12 56 BA         [24] 1471 	lcall	__gptrput
      004455 A3               [24] 1472 	inc	dptr
      004456 E5 69            [12] 1473 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 3)
      004458 12 56 BA         [24] 1474 	lcall	__gptrput
                                   1475 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:48: vc->current_pwm_duty = VoltageController_voltageToPWM(vc->target_voltage);
      00445B 74 0A            [12] 1476 	mov	a,#0x0a
      00445D 2D               [12] 1477 	add	a,r5
      00445E FA               [12] 1478 	mov	r2,a
      00445F E4               [12] 1479 	clr	a
      004460 3E               [12] 1480 	addc	a,r6
      004461 FB               [12] 1481 	mov	r3,a
      004462 8F 04            [24] 1482 	mov	ar4,r7
      004464 85 66 82         [24] 1483 	mov	dpl,_VoltageController_setVoltage_sloc1_1_0
      004467 85 67 83         [24] 1484 	mov	dph,(_VoltageController_setVoltage_sloc1_1_0 + 1)
      00446A 85 68 F0         [24] 1485 	mov	b,(_VoltageController_setVoltage_sloc1_1_0 + 2)
      00446D E5 69            [12] 1486 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 3)
      00446F C0 07            [24] 1487 	push	ar7
      004471 C0 06            [24] 1488 	push	ar6
      004473 C0 05            [24] 1489 	push	ar5
      004475 C0 04            [24] 1490 	push	ar4
      004477 C0 03            [24] 1491 	push	ar3
      004479 C0 02            [24] 1492 	push	ar2
      00447B 12 40 B6         [24] 1493 	lcall	_VoltageController_voltageToPWM
      00447E A9 82            [24] 1494 	mov	r1,dpl
      004480 D0 02            [24] 1495 	pop	ar2
      004482 D0 03            [24] 1496 	pop	ar3
      004484 D0 04            [24] 1497 	pop	ar4
      004486 D0 05            [24] 1498 	pop	ar5
      004488 D0 06            [24] 1499 	pop	ar6
      00448A D0 07            [24] 1500 	pop	ar7
      00448C 8A 82            [24] 1501 	mov	dpl,r2
      00448E 8B 83            [24] 1502 	mov	dph,r3
      004490 8C F0            [24] 1503 	mov	b,r4
      004492 E9               [12] 1504 	mov	a,r1
      004493 12 56 BA         [24] 1505 	lcall	__gptrput
                                   1506 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:49: analogWrite(vc->pwm_pin, vc->current_pwm_duty);
      004496 8D 82            [24] 1507 	mov	dpl,r5
      004498 8E 83            [24] 1508 	mov	dph,r6
      00449A 8F F0            [24] 1509 	mov	b,r7
      00449C 12 5D 5A         [24] 1510 	lcall	__gptrget
      00449F FD               [12] 1511 	mov	r5,a
      0044A0 90 02 6F         [24] 1512 	mov	dptr,#_analogWrite_PARM_2
      0044A3 E9               [12] 1513 	mov	a,r1
      0044A4 F0               [24] 1514 	movx	@dptr,a
      0044A5 E4               [12] 1515 	clr	a
      0044A6 A3               [24] 1516 	inc	dptr
      0044A7 F0               [24] 1517 	movx	@dptr,a
      0044A8 8D 82            [24] 1518 	mov	dpl,r5
                                   1519 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:50: }
      0044AA 02 4D D3         [24] 1520 	ljmp	_analogWrite
                                   1521 ;------------------------------------------------------------
                                   1522 ;Allocation info for local variables in function 'VoltageController_readVoltage'
                                   1523 ;------------------------------------------------------------
                                   1524 ;vc                        Allocated with name '_VoltageController_readVoltage_vc_65536_187'
                                   1525 ;adc_value                 Allocated with name '_VoltageController_readVoltage_adc_value_65536_188'
                                   1526 ;adc_voltage               Allocated with name '_VoltageController_readVoltage_adc_voltage_65536_188'
                                   1527 ;output_voltage            Allocated with name '_VoltageController_readVoltage_output_voltage_65536_188'
                                   1528 ;------------------------------------------------------------
                                   1529 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:52: float VoltageController_readVoltage(VoltageController* vc) {
                                   1530 ;	-----------------------------------------
                                   1531 ;	 function VoltageController_readVoltage
                                   1532 ;	-----------------------------------------
      0044AD                       1533 _VoltageController_readVoltage:
      0044AD AF F0            [24] 1534 	mov	r7,b
      0044AF AE 83            [24] 1535 	mov	r6,dph
      0044B1 E5 82            [12] 1536 	mov	a,dpl
      0044B3 90 02 4F         [24] 1537 	mov	dptr,#_VoltageController_readVoltage_vc_65536_187
      0044B6 F0               [24] 1538 	movx	@dptr,a
      0044B7 EE               [12] 1539 	mov	a,r6
      0044B8 A3               [24] 1540 	inc	dptr
      0044B9 F0               [24] 1541 	movx	@dptr,a
      0044BA EF               [12] 1542 	mov	a,r7
      0044BB A3               [24] 1543 	inc	dptr
      0044BC F0               [24] 1544 	movx	@dptr,a
                                   1545 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:53: int adc_value = analogRead(vc->adc_pin);
      0044BD 90 02 4F         [24] 1546 	mov	dptr,#_VoltageController_readVoltage_vc_65536_187
      0044C0 E0               [24] 1547 	movx	a,@dptr
      0044C1 FD               [12] 1548 	mov	r5,a
      0044C2 A3               [24] 1549 	inc	dptr
      0044C3 E0               [24] 1550 	movx	a,@dptr
      0044C4 FE               [12] 1551 	mov	r6,a
      0044C5 A3               [24] 1552 	inc	dptr
      0044C6 E0               [24] 1553 	movx	a,@dptr
      0044C7 FF               [12] 1554 	mov	r7,a
      0044C8 0D               [12] 1555 	inc	r5
      0044C9 BD 00 01         [24] 1556 	cjne	r5,#0x00,00103$
      0044CC 0E               [12] 1557 	inc	r6
      0044CD                       1558 00103$:
      0044CD 8D 82            [24] 1559 	mov	dpl,r5
      0044CF 8E 83            [24] 1560 	mov	dph,r6
      0044D1 8F F0            [24] 1561 	mov	b,r7
      0044D3 12 5D 5A         [24] 1562 	lcall	__gptrget
      0044D6 F5 82            [12] 1563 	mov	dpl,a
      0044D8 12 4D 80         [24] 1564 	lcall	_analogRead
                                   1565 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:55: float adc_voltage = (float)adc_value / (ADC_RESOLUTION - 1) * ADC_REF_VOLTAGE;
      0044DB 12 5C 19         [24] 1566 	lcall	___sint2fs
      0044DE AC 82            [24] 1567 	mov	r4,dpl
      0044E0 AD 83            [24] 1568 	mov	r5,dph
      0044E2 AE F0            [24] 1569 	mov	r6,b
      0044E4 FF               [12] 1570 	mov	r7,a
      0044E5 E4               [12] 1571 	clr	a
      0044E6 C0 E0            [24] 1572 	push	acc
      0044E8 C0 E0            [24] 1573 	push	acc
      0044EA 74 7E            [12] 1574 	mov	a,#0x7e
      0044EC C0 E0            [24] 1575 	push	acc
      0044EE 74 43            [12] 1576 	mov	a,#0x43
      0044F0 C0 E0            [24] 1577 	push	acc
      0044F2 8C 82            [24] 1578 	mov	dpl,r4
      0044F4 8D 83            [24] 1579 	mov	dph,r5
      0044F6 8E F0            [24] 1580 	mov	b,r6
      0044F8 EF               [12] 1581 	mov	a,r7
      0044F9 12 5C 8F         [24] 1582 	lcall	___fsdiv
      0044FC AC 82            [24] 1583 	mov	r4,dpl
      0044FE AD 83            [24] 1584 	mov	r5,dph
      004500 AE F0            [24] 1585 	mov	r6,b
      004502 FF               [12] 1586 	mov	r7,a
      004503 E5 81            [12] 1587 	mov	a,sp
      004505 24 FC            [12] 1588 	add	a,#0xfc
      004507 F5 81            [12] 1589 	mov	sp,a
      004509 C0 04            [24] 1590 	push	ar4
      00450B C0 05            [24] 1591 	push	ar5
      00450D C0 06            [24] 1592 	push	ar6
      00450F C0 07            [24] 1593 	push	ar7
                                   1594 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:56: float output_voltage = adc_voltage * ADC_VOLTAGE_RATIO;
      004511 90 00 00         [24] 1595 	mov	dptr,#0x0000
      004514 75 F0 A0         [24] 1596 	mov	b,#0xa0
      004517 74 40            [12] 1597 	mov	a,#0x40
      004519 12 48 95         [24] 1598 	lcall	___fsmul
      00451C AC 82            [24] 1599 	mov	r4,dpl
      00451E AD 83            [24] 1600 	mov	r5,dph
      004520 AE F0            [24] 1601 	mov	r6,b
      004522 FF               [12] 1602 	mov	r7,a
      004523 E5 81            [12] 1603 	mov	a,sp
      004525 24 FC            [12] 1604 	add	a,#0xfc
      004527 F5 81            [12] 1605 	mov	sp,a
      004529 C0 04            [24] 1606 	push	ar4
      00452B C0 05            [24] 1607 	push	ar5
      00452D C0 06            [24] 1608 	push	ar6
      00452F C0 07            [24] 1609 	push	ar7
                                   1610 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:58: return output_voltage;
      004531 90 70 A4         [24] 1611 	mov	dptr,#0x70a4
      004534 75 F0 3D         [24] 1612 	mov	b,#0x3d
      004537 74 40            [12] 1613 	mov	a,#0x40
      004539 12 48 95         [24] 1614 	lcall	___fsmul
      00453C AC 82            [24] 1615 	mov	r4,dpl
      00453E AD 83            [24] 1616 	mov	r5,dph
      004540 AE F0            [24] 1617 	mov	r6,b
      004542 FF               [12] 1618 	mov	r7,a
      004543 E5 81            [12] 1619 	mov	a,sp
      004545 24 FC            [12] 1620 	add	a,#0xfc
      004547 F5 81            [12] 1621 	mov	sp,a
      004549 8C 82            [24] 1622 	mov	dpl,r4
      00454B 8D 83            [24] 1623 	mov	dph,r5
      00454D 8E F0            [24] 1624 	mov	b,r6
      00454F EF               [12] 1625 	mov	a,r7
                                   1626 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:59: }
      004550 22               [24] 1627 	ret
                                   1628 ;------------------------------------------------------------
                                   1629 ;Allocation info for local variables in function 'VoltageController_updateVoltage'
                                   1630 ;------------------------------------------------------------
                                   1631 ;vc                        Allocated with name '_VoltageController_updateVoltage_vc_65536_189'
                                   1632 ;------------------------------------------------------------
                                   1633 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:61: float VoltageController_updateVoltage(VoltageController* vc) {
                                   1634 ;	-----------------------------------------
                                   1635 ;	 function VoltageController_updateVoltage
                                   1636 ;	-----------------------------------------
      004551                       1637 _VoltageController_updateVoltage:
      004551 AF F0            [24] 1638 	mov	r7,b
      004553 AE 83            [24] 1639 	mov	r6,dph
      004555 E5 82            [12] 1640 	mov	a,dpl
      004557 90 02 52         [24] 1641 	mov	dptr,#_VoltageController_updateVoltage_vc_65536_189
      00455A F0               [24] 1642 	movx	@dptr,a
      00455B EE               [12] 1643 	mov	a,r6
      00455C A3               [24] 1644 	inc	dptr
      00455D F0               [24] 1645 	movx	@dptr,a
      00455E EF               [12] 1646 	mov	a,r7
      00455F A3               [24] 1647 	inc	dptr
      004560 F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:62: vc->current_voltage = VoltageController_readVoltage(vc);
      004561 90 02 52         [24] 1650 	mov	dptr,#_VoltageController_updateVoltage_vc_65536_189
      004564 E0               [24] 1651 	movx	a,@dptr
      004565 FD               [12] 1652 	mov	r5,a
      004566 A3               [24] 1653 	inc	dptr
      004567 E0               [24] 1654 	movx	a,@dptr
      004568 FE               [12] 1655 	mov	r6,a
      004569 A3               [24] 1656 	inc	dptr
      00456A E0               [24] 1657 	movx	a,@dptr
      00456B FF               [12] 1658 	mov	r7,a
      00456C 74 06            [12] 1659 	mov	a,#0x06
      00456E 2D               [12] 1660 	add	a,r5
      00456F FA               [12] 1661 	mov	r2,a
      004570 E4               [12] 1662 	clr	a
      004571 3E               [12] 1663 	addc	a,r6
      004572 FB               [12] 1664 	mov	r3,a
      004573 8F 04            [24] 1665 	mov	ar4,r7
      004575 8D 82            [24] 1666 	mov	dpl,r5
      004577 8E 83            [24] 1667 	mov	dph,r6
      004579 8F F0            [24] 1668 	mov	b,r7
      00457B C0 04            [24] 1669 	push	ar4
      00457D C0 03            [24] 1670 	push	ar3
      00457F C0 02            [24] 1671 	push	ar2
      004581 12 44 AD         [24] 1672 	lcall	_VoltageController_readVoltage
      004584 A9 82            [24] 1673 	mov	r1,dpl
      004586 AD 83            [24] 1674 	mov	r5,dph
      004588 AE F0            [24] 1675 	mov	r6,b
      00458A FF               [12] 1676 	mov	r7,a
      00458B D0 02            [24] 1677 	pop	ar2
      00458D D0 03            [24] 1678 	pop	ar3
      00458F D0 04            [24] 1679 	pop	ar4
      004591 8A 82            [24] 1680 	mov	dpl,r2
      004593 8B 83            [24] 1681 	mov	dph,r3
      004595 8C F0            [24] 1682 	mov	b,r4
      004597 E9               [12] 1683 	mov	a,r1
      004598 12 56 BA         [24] 1684 	lcall	__gptrput
      00459B A3               [24] 1685 	inc	dptr
      00459C ED               [12] 1686 	mov	a,r5
      00459D 12 56 BA         [24] 1687 	lcall	__gptrput
      0045A0 A3               [24] 1688 	inc	dptr
      0045A1 EE               [12] 1689 	mov	a,r6
      0045A2 12 56 BA         [24] 1690 	lcall	__gptrput
      0045A5 A3               [24] 1691 	inc	dptr
      0045A6 EF               [12] 1692 	mov	a,r7
      0045A7 12 56 BA         [24] 1693 	lcall	__gptrput
                                   1694 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:63: return vc->current_voltage;
      0045AA 90 02 52         [24] 1695 	mov	dptr,#_VoltageController_updateVoltage_vc_65536_189
      0045AD E0               [24] 1696 	movx	a,@dptr
      0045AE FD               [12] 1697 	mov	r5,a
      0045AF A3               [24] 1698 	inc	dptr
      0045B0 E0               [24] 1699 	movx	a,@dptr
      0045B1 FE               [12] 1700 	mov	r6,a
      0045B2 A3               [24] 1701 	inc	dptr
      0045B3 E0               [24] 1702 	movx	a,@dptr
      0045B4 FF               [12] 1703 	mov	r7,a
      0045B5 74 06            [12] 1704 	mov	a,#0x06
      0045B7 2D               [12] 1705 	add	a,r5
      0045B8 FD               [12] 1706 	mov	r5,a
      0045B9 E4               [12] 1707 	clr	a
      0045BA 3E               [12] 1708 	addc	a,r6
      0045BB FE               [12] 1709 	mov	r6,a
      0045BC 8D 82            [24] 1710 	mov	dpl,r5
      0045BE 8E 83            [24] 1711 	mov	dph,r6
      0045C0 8F F0            [24] 1712 	mov	b,r7
      0045C2 12 5D 5A         [24] 1713 	lcall	__gptrget
      0045C5 FD               [12] 1714 	mov	r5,a
      0045C6 A3               [24] 1715 	inc	dptr
      0045C7 12 5D 5A         [24] 1716 	lcall	__gptrget
      0045CA FE               [12] 1717 	mov	r6,a
      0045CB A3               [24] 1718 	inc	dptr
      0045CC 12 5D 5A         [24] 1719 	lcall	__gptrget
      0045CF FF               [12] 1720 	mov	r7,a
      0045D0 A3               [24] 1721 	inc	dptr
      0045D1 12 5D 5A         [24] 1722 	lcall	__gptrget
      0045D4 8D 82            [24] 1723 	mov	dpl,r5
      0045D6 8E 83            [24] 1724 	mov	dph,r6
      0045D8 8F F0            [24] 1725 	mov	b,r7
                                   1726 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:64: }
      0045DA 22               [24] 1727 	ret
                                   1728 ;------------------------------------------------------------
                                   1729 ;Allocation info for local variables in function 'VoltageController_isVoltageAbnormal'
                                   1730 ;------------------------------------------------------------
                                   1731 ;vc                        Allocated with name '_VoltageController_isVoltageAbnormal_vc_65536_191'
                                   1732 ;------------------------------------------------------------
                                   1733 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:66: bool VoltageController_isVoltageAbnormal(VoltageController* vc) {
                                   1734 ;	-----------------------------------------
                                   1735 ;	 function VoltageController_isVoltageAbnormal
                                   1736 ;	-----------------------------------------
      0045DB                       1737 _VoltageController_isVoltageAbnormal:
      0045DB AF F0            [24] 1738 	mov	r7,b
      0045DD AE 83            [24] 1739 	mov	r6,dph
      0045DF E5 82            [12] 1740 	mov	a,dpl
      0045E1 90 02 55         [24] 1741 	mov	dptr,#_VoltageController_isVoltageAbnormal_vc_65536_191
      0045E4 F0               [24] 1742 	movx	@dptr,a
      0045E5 EE               [12] 1743 	mov	a,r6
      0045E6 A3               [24] 1744 	inc	dptr
      0045E7 F0               [24] 1745 	movx	@dptr,a
      0045E8 EF               [12] 1746 	mov	a,r7
      0045E9 A3               [24] 1747 	inc	dptr
      0045EA F0               [24] 1748 	movx	@dptr,a
                                   1749 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:67: VoltageController_updateVoltage(vc);
      0045EB 90 02 55         [24] 1750 	mov	dptr,#_VoltageController_isVoltageAbnormal_vc_65536_191
      0045EE E0               [24] 1751 	movx	a,@dptr
      0045EF FD               [12] 1752 	mov	r5,a
      0045F0 A3               [24] 1753 	inc	dptr
      0045F1 E0               [24] 1754 	movx	a,@dptr
      0045F2 FE               [12] 1755 	mov	r6,a
      0045F3 A3               [24] 1756 	inc	dptr
      0045F4 E0               [24] 1757 	movx	a,@dptr
      0045F5 FF               [12] 1758 	mov	r7,a
      0045F6 8D 82            [24] 1759 	mov	dpl,r5
      0045F8 8E 83            [24] 1760 	mov	dph,r6
      0045FA 8F F0            [24] 1761 	mov	b,r7
      0045FC 12 45 51         [24] 1762 	lcall	_VoltageController_updateVoltage
                                   1763 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:69: if (vc->current_voltage < vc->target_voltage - 1.0f) {
      0045FF 90 02 55         [24] 1764 	mov	dptr,#_VoltageController_isVoltageAbnormal_vc_65536_191
      004602 E0               [24] 1765 	movx	a,@dptr
      004603 FF               [12] 1766 	mov	r7,a
      004604 A3               [24] 1767 	inc	dptr
      004605 E0               [24] 1768 	movx	a,@dptr
      004606 FD               [12] 1769 	mov	r5,a
      004607 A3               [24] 1770 	inc	dptr
      004608 E0               [24] 1771 	movx	a,@dptr
      004609 FE               [12] 1772 	mov	r6,a
      00460A 74 06            [12] 1773 	mov	a,#0x06
      00460C 2F               [12] 1774 	add	a,r7
      00460D FC               [12] 1775 	mov	r4,a
      00460E E4               [12] 1776 	clr	a
      00460F 3D               [12] 1777 	addc	a,r5
      004610 FA               [12] 1778 	mov	r2,a
      004611 8E 03            [24] 1779 	mov	ar3,r6
      004613 8C 82            [24] 1780 	mov	dpl,r4
      004615 8A 83            [24] 1781 	mov	dph,r2
      004617 8B F0            [24] 1782 	mov	b,r3
      004619 12 5D 5A         [24] 1783 	lcall	__gptrget
      00461C F9               [12] 1784 	mov	r1,a
      00461D A3               [24] 1785 	inc	dptr
      00461E 12 5D 5A         [24] 1786 	lcall	__gptrget
      004621 FA               [12] 1787 	mov	r2,a
      004622 A3               [24] 1788 	inc	dptr
      004623 12 5D 5A         [24] 1789 	lcall	__gptrget
      004626 FB               [12] 1790 	mov	r3,a
      004627 A3               [24] 1791 	inc	dptr
      004628 12 5D 5A         [24] 1792 	lcall	__gptrget
      00462B FC               [12] 1793 	mov	r4,a
      00462C 74 02            [12] 1794 	mov	a,#0x02
      00462E 2F               [12] 1795 	add	a,r7
      00462F FF               [12] 1796 	mov	r7,a
      004630 E4               [12] 1797 	clr	a
      004631 3D               [12] 1798 	addc	a,r5
      004632 FD               [12] 1799 	mov	r5,a
      004633 8F 82            [24] 1800 	mov	dpl,r7
      004635 8D 83            [24] 1801 	mov	dph,r5
      004637 8E F0            [24] 1802 	mov	b,r6
      004639 12 5D 5A         [24] 1803 	lcall	__gptrget
      00463C F8               [12] 1804 	mov	r0,a
      00463D A3               [24] 1805 	inc	dptr
      00463E 12 5D 5A         [24] 1806 	lcall	__gptrget
      004641 FD               [12] 1807 	mov	r5,a
      004642 A3               [24] 1808 	inc	dptr
      004643 12 5D 5A         [24] 1809 	lcall	__gptrget
      004646 FE               [12] 1810 	mov	r6,a
      004647 A3               [24] 1811 	inc	dptr
      004648 12 5D 5A         [24] 1812 	lcall	__gptrget
      00464B FF               [12] 1813 	mov	r7,a
      00464C C0 04            [24] 1814 	push	ar4
      00464E C0 03            [24] 1815 	push	ar3
      004650 C0 02            [24] 1816 	push	ar2
      004652 C0 01            [24] 1817 	push	ar1
      004654 E4               [12] 1818 	clr	a
      004655 C0 E0            [24] 1819 	push	acc
      004657 C0 E0            [24] 1820 	push	acc
      004659 74 80            [12] 1821 	mov	a,#0x80
      00465B C0 E0            [24] 1822 	push	acc
      00465D 74 3F            [12] 1823 	mov	a,#0x3f
      00465F C0 E0            [24] 1824 	push	acc
      004661 88 82            [24] 1825 	mov	dpl,r0
      004663 8D 83            [24] 1826 	mov	dph,r5
      004665 8E F0            [24] 1827 	mov	b,r6
      004667 EF               [12] 1828 	mov	a,r7
      004668 12 48 12         [24] 1829 	lcall	___fssub
      00466B A8 82            [24] 1830 	mov	r0,dpl
      00466D AD 83            [24] 1831 	mov	r5,dph
      00466F AE F0            [24] 1832 	mov	r6,b
      004671 FF               [12] 1833 	mov	r7,a
      004672 E5 81            [12] 1834 	mov	a,sp
      004674 24 FC            [12] 1835 	add	a,#0xfc
      004676 F5 81            [12] 1836 	mov	sp,a
      004678 D0 01            [24] 1837 	pop	ar1
      00467A D0 02            [24] 1838 	pop	ar2
      00467C D0 03            [24] 1839 	pop	ar3
      00467E D0 04            [24] 1840 	pop	ar4
      004680 C0 00            [24] 1841 	push	ar0
      004682 C0 05            [24] 1842 	push	ar5
      004684 C0 06            [24] 1843 	push	ar6
      004686 C0 07            [24] 1844 	push	ar7
      004688 89 82            [24] 1845 	mov	dpl,r1
      00468A 8A 83            [24] 1846 	mov	dph,r2
      00468C 8B F0            [24] 1847 	mov	b,r3
      00468E EC               [12] 1848 	mov	a,r4
      00468F 12 56 D5         [24] 1849 	lcall	___fslt
      004692 AF 82            [24] 1850 	mov	r7,dpl
      004694 E5 81            [12] 1851 	mov	a,sp
      004696 24 FC            [12] 1852 	add	a,#0xfc
      004698 F5 81            [12] 1853 	mov	sp,a
      00469A EF               [12] 1854 	mov	a,r7
      00469B 60 04            [24] 1855 	jz	00102$
                                   1856 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:70: return true;
      00469D 75 82 01         [24] 1857 	mov	dpl,#0x01
      0046A0 22               [24] 1858 	ret
      0046A1                       1859 00102$:
                                   1860 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:73: return false;
      0046A1 75 82 00         [24] 1861 	mov	dpl,#0x00
                                   1862 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:74: }
      0046A4 22               [24] 1863 	ret
                                   1864 ;------------------------------------------------------------
                                   1865 ;Allocation info for local variables in function 'VoltageController_lockOutput'
                                   1866 ;------------------------------------------------------------
                                   1867 ;vc                        Allocated with name '_VoltageController_lockOutput_vc_65536_194'
                                   1868 ;------------------------------------------------------------
                                   1869 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:76: void VoltageController_lockOutput(VoltageController* vc) {
                                   1870 ;	-----------------------------------------
                                   1871 ;	 function VoltageController_lockOutput
                                   1872 ;	-----------------------------------------
      0046A5                       1873 _VoltageController_lockOutput:
      0046A5 AF F0            [24] 1874 	mov	r7,b
      0046A7 AE 83            [24] 1875 	mov	r6,dph
      0046A9 E5 82            [12] 1876 	mov	a,dpl
      0046AB 90 02 58         [24] 1877 	mov	dptr,#_VoltageController_lockOutput_vc_65536_194
      0046AE F0               [24] 1878 	movx	@dptr,a
      0046AF EE               [12] 1879 	mov	a,r6
      0046B0 A3               [24] 1880 	inc	dptr
      0046B1 F0               [24] 1881 	movx	@dptr,a
      0046B2 EF               [12] 1882 	mov	a,r7
      0046B3 A3               [24] 1883 	inc	dptr
      0046B4 F0               [24] 1884 	movx	@dptr,a
                                   1885 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:77: vc->is_locked = true;
      0046B5 90 02 58         [24] 1886 	mov	dptr,#_VoltageController_lockOutput_vc_65536_194
      0046B8 E0               [24] 1887 	movx	a,@dptr
      0046B9 FD               [12] 1888 	mov	r5,a
      0046BA A3               [24] 1889 	inc	dptr
      0046BB E0               [24] 1890 	movx	a,@dptr
      0046BC FE               [12] 1891 	mov	r6,a
      0046BD A3               [24] 1892 	inc	dptr
      0046BE E0               [24] 1893 	movx	a,@dptr
      0046BF FF               [12] 1894 	mov	r7,a
      0046C0 74 0B            [12] 1895 	mov	a,#0x0b
      0046C2 2D               [12] 1896 	add	a,r5
      0046C3 FA               [12] 1897 	mov	r2,a
      0046C4 E4               [12] 1898 	clr	a
      0046C5 3E               [12] 1899 	addc	a,r6
      0046C6 FB               [12] 1900 	mov	r3,a
      0046C7 8F 04            [24] 1901 	mov	ar4,r7
      0046C9 8A 82            [24] 1902 	mov	dpl,r2
      0046CB 8B 83            [24] 1903 	mov	dph,r3
      0046CD 8C F0            [24] 1904 	mov	b,r4
      0046CF 74 01            [12] 1905 	mov	a,#0x01
      0046D1 12 56 BA         [24] 1906 	lcall	__gptrput
                                   1907 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:78: vc->current_pwm_duty = PWM_RESOLUTION;
      0046D4 74 0A            [12] 1908 	mov	a,#0x0a
      0046D6 2D               [12] 1909 	add	a,r5
      0046D7 FA               [12] 1910 	mov	r2,a
      0046D8 E4               [12] 1911 	clr	a
      0046D9 3E               [12] 1912 	addc	a,r6
      0046DA FB               [12] 1913 	mov	r3,a
      0046DB 8F 04            [24] 1914 	mov	ar4,r7
      0046DD 8A 82            [24] 1915 	mov	dpl,r2
      0046DF 8B 83            [24] 1916 	mov	dph,r3
      0046E1 8C F0            [24] 1917 	mov	b,r4
      0046E3 74 FF            [12] 1918 	mov	a,#0xff
      0046E5 12 56 BA         [24] 1919 	lcall	__gptrput
                                   1920 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:79: analogWrite(vc->pwm_pin, vc->current_pwm_duty);
      0046E8 8D 82            [24] 1921 	mov	dpl,r5
      0046EA 8E 83            [24] 1922 	mov	dph,r6
      0046EC 8F F0            [24] 1923 	mov	b,r7
      0046EE 12 5D 5A         [24] 1924 	lcall	__gptrget
      0046F1 FD               [12] 1925 	mov	r5,a
      0046F2 8A 82            [24] 1926 	mov	dpl,r2
      0046F4 8B 83            [24] 1927 	mov	dph,r3
      0046F6 8C F0            [24] 1928 	mov	b,r4
      0046F8 12 5D 5A         [24] 1929 	lcall	__gptrget
      0046FB 90 02 6F         [24] 1930 	mov	dptr,#_analogWrite_PARM_2
      0046FE F0               [24] 1931 	movx	@dptr,a
      0046FF E4               [12] 1932 	clr	a
      004700 A3               [24] 1933 	inc	dptr
      004701 F0               [24] 1934 	movx	@dptr,a
      004702 8D 82            [24] 1935 	mov	dpl,r5
                                   1936 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:80: }
      004704 02 4D D3         [24] 1937 	ljmp	_analogWrite
                                   1938 ;------------------------------------------------------------
                                   1939 ;Allocation info for local variables in function 'VoltageController_unlockOutput'
                                   1940 ;------------------------------------------------------------
                                   1941 ;vc                        Allocated with name '_VoltageController_unlockOutput_vc_65536_196'
                                   1942 ;------------------------------------------------------------
                                   1943 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:82: void VoltageController_unlockOutput(VoltageController* vc) {
                                   1944 ;	-----------------------------------------
                                   1945 ;	 function VoltageController_unlockOutput
                                   1946 ;	-----------------------------------------
      004707                       1947 _VoltageController_unlockOutput:
      004707 AF F0            [24] 1948 	mov	r7,b
      004709 AE 83            [24] 1949 	mov	r6,dph
      00470B E5 82            [12] 1950 	mov	a,dpl
      00470D 90 02 5B         [24] 1951 	mov	dptr,#_VoltageController_unlockOutput_vc_65536_196
      004710 F0               [24] 1952 	movx	@dptr,a
      004711 EE               [12] 1953 	mov	a,r6
      004712 A3               [24] 1954 	inc	dptr
      004713 F0               [24] 1955 	movx	@dptr,a
      004714 EF               [12] 1956 	mov	a,r7
      004715 A3               [24] 1957 	inc	dptr
      004716 F0               [24] 1958 	movx	@dptr,a
                                   1959 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:83: vc->is_locked = false;
      004717 90 02 5B         [24] 1960 	mov	dptr,#_VoltageController_unlockOutput_vc_65536_196
      00471A E0               [24] 1961 	movx	a,@dptr
      00471B FD               [12] 1962 	mov	r5,a
      00471C A3               [24] 1963 	inc	dptr
      00471D E0               [24] 1964 	movx	a,@dptr
      00471E FE               [12] 1965 	mov	r6,a
      00471F A3               [24] 1966 	inc	dptr
      004720 E0               [24] 1967 	movx	a,@dptr
      004721 FF               [12] 1968 	mov	r7,a
      004722 74 0B            [12] 1969 	mov	a,#0x0b
      004724 2D               [12] 1970 	add	a,r5
      004725 FD               [12] 1971 	mov	r5,a
      004726 E4               [12] 1972 	clr	a
      004727 3E               [12] 1973 	addc	a,r6
      004728 FE               [12] 1974 	mov	r6,a
      004729 8D 82            [24] 1975 	mov	dpl,r5
      00472B 8E 83            [24] 1976 	mov	dph,r6
      00472D 8F F0            [24] 1977 	mov	b,r7
      00472F E4               [12] 1978 	clr	a
                                   1979 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:84: }
      004730 02 56 BA         [24] 1980 	ljmp	__gptrput
                                   1981 ;------------------------------------------------------------
                                   1982 ;Allocation info for local variables in function 'VoltageController_getTargetVoltage'
                                   1983 ;------------------------------------------------------------
                                   1984 ;vc                        Allocated with name '_VoltageController_getTargetVoltage_vc_65536_198'
                                   1985 ;------------------------------------------------------------
                                   1986 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:86: float VoltageController_getTargetVoltage(const VoltageController* vc) {
                                   1987 ;	-----------------------------------------
                                   1988 ;	 function VoltageController_getTargetVoltage
                                   1989 ;	-----------------------------------------
      004733                       1990 _VoltageController_getTargetVoltage:
      004733 AF F0            [24] 1991 	mov	r7,b
      004735 AE 83            [24] 1992 	mov	r6,dph
      004737 E5 82            [12] 1993 	mov	a,dpl
      004739 90 02 5E         [24] 1994 	mov	dptr,#_VoltageController_getTargetVoltage_vc_65536_198
      00473C F0               [24] 1995 	movx	@dptr,a
      00473D EE               [12] 1996 	mov	a,r6
      00473E A3               [24] 1997 	inc	dptr
      00473F F0               [24] 1998 	movx	@dptr,a
      004740 EF               [12] 1999 	mov	a,r7
      004741 A3               [24] 2000 	inc	dptr
      004742 F0               [24] 2001 	movx	@dptr,a
                                   2002 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:87: return vc->target_voltage;
      004743 90 02 5E         [24] 2003 	mov	dptr,#_VoltageController_getTargetVoltage_vc_65536_198
      004746 E0               [24] 2004 	movx	a,@dptr
      004747 FD               [12] 2005 	mov	r5,a
      004748 A3               [24] 2006 	inc	dptr
      004749 E0               [24] 2007 	movx	a,@dptr
      00474A FE               [12] 2008 	mov	r6,a
      00474B A3               [24] 2009 	inc	dptr
      00474C E0               [24] 2010 	movx	a,@dptr
      00474D FF               [12] 2011 	mov	r7,a
      00474E 74 02            [12] 2012 	mov	a,#0x02
      004750 2D               [12] 2013 	add	a,r5
      004751 FD               [12] 2014 	mov	r5,a
      004752 E4               [12] 2015 	clr	a
      004753 3E               [12] 2016 	addc	a,r6
      004754 FE               [12] 2017 	mov	r6,a
      004755 8D 82            [24] 2018 	mov	dpl,r5
      004757 8E 83            [24] 2019 	mov	dph,r6
      004759 8F F0            [24] 2020 	mov	b,r7
      00475B 12 5D 5A         [24] 2021 	lcall	__gptrget
      00475E FD               [12] 2022 	mov	r5,a
      00475F A3               [24] 2023 	inc	dptr
      004760 12 5D 5A         [24] 2024 	lcall	__gptrget
      004763 FE               [12] 2025 	mov	r6,a
      004764 A3               [24] 2026 	inc	dptr
      004765 12 5D 5A         [24] 2027 	lcall	__gptrget
      004768 FF               [12] 2028 	mov	r7,a
      004769 A3               [24] 2029 	inc	dptr
      00476A 12 5D 5A         [24] 2030 	lcall	__gptrget
      00476D 8D 82            [24] 2031 	mov	dpl,r5
      00476F 8E 83            [24] 2032 	mov	dph,r6
      004771 8F F0            [24] 2033 	mov	b,r7
                                   2034 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:88: }
      004773 22               [24] 2035 	ret
                                   2036 ;------------------------------------------------------------
                                   2037 ;Allocation info for local variables in function 'VoltageController_getCurrentVoltage'
                                   2038 ;------------------------------------------------------------
                                   2039 ;vc                        Allocated with name '_VoltageController_getCurrentVoltage_vc_65536_200'
                                   2040 ;------------------------------------------------------------
                                   2041 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:90: float VoltageController_getCurrentVoltage(const VoltageController* vc) {
                                   2042 ;	-----------------------------------------
                                   2043 ;	 function VoltageController_getCurrentVoltage
                                   2044 ;	-----------------------------------------
      004774                       2045 _VoltageController_getCurrentVoltage:
      004774 AF F0            [24] 2046 	mov	r7,b
      004776 AE 83            [24] 2047 	mov	r6,dph
      004778 E5 82            [12] 2048 	mov	a,dpl
      00477A 90 02 61         [24] 2049 	mov	dptr,#_VoltageController_getCurrentVoltage_vc_65536_200
      00477D F0               [24] 2050 	movx	@dptr,a
      00477E EE               [12] 2051 	mov	a,r6
      00477F A3               [24] 2052 	inc	dptr
      004780 F0               [24] 2053 	movx	@dptr,a
      004781 EF               [12] 2054 	mov	a,r7
      004782 A3               [24] 2055 	inc	dptr
      004783 F0               [24] 2056 	movx	@dptr,a
                                   2057 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:91: return vc->current_voltage;
      004784 90 02 61         [24] 2058 	mov	dptr,#_VoltageController_getCurrentVoltage_vc_65536_200
      004787 E0               [24] 2059 	movx	a,@dptr
      004788 FD               [12] 2060 	mov	r5,a
      004789 A3               [24] 2061 	inc	dptr
      00478A E0               [24] 2062 	movx	a,@dptr
      00478B FE               [12] 2063 	mov	r6,a
      00478C A3               [24] 2064 	inc	dptr
      00478D E0               [24] 2065 	movx	a,@dptr
      00478E FF               [12] 2066 	mov	r7,a
      00478F 74 06            [12] 2067 	mov	a,#0x06
      004791 2D               [12] 2068 	add	a,r5
      004792 FD               [12] 2069 	mov	r5,a
      004793 E4               [12] 2070 	clr	a
      004794 3E               [12] 2071 	addc	a,r6
      004795 FE               [12] 2072 	mov	r6,a
      004796 8D 82            [24] 2073 	mov	dpl,r5
      004798 8E 83            [24] 2074 	mov	dph,r6
      00479A 8F F0            [24] 2075 	mov	b,r7
      00479C 12 5D 5A         [24] 2076 	lcall	__gptrget
      00479F FD               [12] 2077 	mov	r5,a
      0047A0 A3               [24] 2078 	inc	dptr
      0047A1 12 5D 5A         [24] 2079 	lcall	__gptrget
      0047A4 FE               [12] 2080 	mov	r6,a
      0047A5 A3               [24] 2081 	inc	dptr
      0047A6 12 5D 5A         [24] 2082 	lcall	__gptrget
      0047A9 FF               [12] 2083 	mov	r7,a
      0047AA A3               [24] 2084 	inc	dptr
      0047AB 12 5D 5A         [24] 2085 	lcall	__gptrget
      0047AE 8D 82            [24] 2086 	mov	dpl,r5
      0047B0 8E 83            [24] 2087 	mov	dph,r6
      0047B2 8F F0            [24] 2088 	mov	b,r7
                                   2089 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:92: }
      0047B4 22               [24] 2090 	ret
                                   2091 ;------------------------------------------------------------
                                   2092 ;Allocation info for local variables in function 'VoltageController_getPWMDuty'
                                   2093 ;------------------------------------------------------------
                                   2094 ;vc                        Allocated with name '_VoltageController_getPWMDuty_vc_65536_202'
                                   2095 ;------------------------------------------------------------
                                   2096 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:94: uint8_t VoltageController_getPWMDuty(const VoltageController* vc) {
                                   2097 ;	-----------------------------------------
                                   2098 ;	 function VoltageController_getPWMDuty
                                   2099 ;	-----------------------------------------
      0047B5                       2100 _VoltageController_getPWMDuty:
      0047B5 AF F0            [24] 2101 	mov	r7,b
      0047B7 AE 83            [24] 2102 	mov	r6,dph
      0047B9 E5 82            [12] 2103 	mov	a,dpl
      0047BB 90 02 64         [24] 2104 	mov	dptr,#_VoltageController_getPWMDuty_vc_65536_202
      0047BE F0               [24] 2105 	movx	@dptr,a
      0047BF EE               [12] 2106 	mov	a,r6
      0047C0 A3               [24] 2107 	inc	dptr
      0047C1 F0               [24] 2108 	movx	@dptr,a
      0047C2 EF               [12] 2109 	mov	a,r7
      0047C3 A3               [24] 2110 	inc	dptr
      0047C4 F0               [24] 2111 	movx	@dptr,a
                                   2112 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:95: return vc->current_pwm_duty;
      0047C5 90 02 64         [24] 2113 	mov	dptr,#_VoltageController_getPWMDuty_vc_65536_202
      0047C8 E0               [24] 2114 	movx	a,@dptr
      0047C9 FD               [12] 2115 	mov	r5,a
      0047CA A3               [24] 2116 	inc	dptr
      0047CB E0               [24] 2117 	movx	a,@dptr
      0047CC FE               [12] 2118 	mov	r6,a
      0047CD A3               [24] 2119 	inc	dptr
      0047CE E0               [24] 2120 	movx	a,@dptr
      0047CF FF               [12] 2121 	mov	r7,a
      0047D0 74 0A            [12] 2122 	mov	a,#0x0a
      0047D2 2D               [12] 2123 	add	a,r5
      0047D3 FD               [12] 2124 	mov	r5,a
      0047D4 E4               [12] 2125 	clr	a
      0047D5 3E               [12] 2126 	addc	a,r6
      0047D6 FE               [12] 2127 	mov	r6,a
      0047D7 8D 82            [24] 2128 	mov	dpl,r5
      0047D9 8E 83            [24] 2129 	mov	dph,r6
      0047DB 8F F0            [24] 2130 	mov	b,r7
      0047DD 12 5D 5A         [24] 2131 	lcall	__gptrget
                                   2132 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:96: }
      0047E0 F5 82            [12] 2133 	mov	dpl,a
      0047E2 22               [24] 2134 	ret
                                   2135 ;------------------------------------------------------------
                                   2136 ;Allocation info for local variables in function 'VoltageController_isLocked'
                                   2137 ;------------------------------------------------------------
                                   2138 ;vc                        Allocated with name '_VoltageController_isLocked_vc_65536_204'
                                   2139 ;------------------------------------------------------------
                                   2140 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:98: bool VoltageController_isLocked(const VoltageController* vc) {
                                   2141 ;	-----------------------------------------
                                   2142 ;	 function VoltageController_isLocked
                                   2143 ;	-----------------------------------------
      0047E3                       2144 _VoltageController_isLocked:
      0047E3 AF F0            [24] 2145 	mov	r7,b
      0047E5 AE 83            [24] 2146 	mov	r6,dph
      0047E7 E5 82            [12] 2147 	mov	a,dpl
      0047E9 90 02 67         [24] 2148 	mov	dptr,#_VoltageController_isLocked_vc_65536_204
      0047EC F0               [24] 2149 	movx	@dptr,a
      0047ED EE               [12] 2150 	mov	a,r6
      0047EE A3               [24] 2151 	inc	dptr
      0047EF F0               [24] 2152 	movx	@dptr,a
      0047F0 EF               [12] 2153 	mov	a,r7
      0047F1 A3               [24] 2154 	inc	dptr
      0047F2 F0               [24] 2155 	movx	@dptr,a
                                   2156 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:99: return vc->is_locked;
      0047F3 90 02 67         [24] 2157 	mov	dptr,#_VoltageController_isLocked_vc_65536_204
      0047F6 E0               [24] 2158 	movx	a,@dptr
      0047F7 FD               [12] 2159 	mov	r5,a
      0047F8 A3               [24] 2160 	inc	dptr
      0047F9 E0               [24] 2161 	movx	a,@dptr
      0047FA FE               [12] 2162 	mov	r6,a
      0047FB A3               [24] 2163 	inc	dptr
      0047FC E0               [24] 2164 	movx	a,@dptr
      0047FD FF               [12] 2165 	mov	r7,a
      0047FE 74 0B            [12] 2166 	mov	a,#0x0b
      004800 2D               [12] 2167 	add	a,r5
      004801 FD               [12] 2168 	mov	r5,a
      004802 E4               [12] 2169 	clr	a
      004803 3E               [12] 2170 	addc	a,r6
      004804 FE               [12] 2171 	mov	r6,a
      004805 8D 82            [24] 2172 	mov	dpl,r5
      004807 8E 83            [24] 2173 	mov	dph,r6
      004809 8F F0            [24] 2174 	mov	b,r7
      00480B 12 5D 5A         [24] 2175 	lcall	__gptrget
                                   2176 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:100: }
      00480E F5 82            [12] 2177 	mov	dpl,a
      004810 22               [24] 2178 	ret
                                   2179 	.area CSEG    (CODE)
                                   2180 	.area CONST   (CODE)
                                   2181 	.area XINIT   (CODE)
                                   2182 	.area CABS    (ABS,CODE)
