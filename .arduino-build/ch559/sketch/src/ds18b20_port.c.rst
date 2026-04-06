                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module ds18b20_port
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delayMicroseconds
                                     12 	.globl _delay
                                     13 	.globl _digitalRead
                                     14 	.globl _digitalWrite
                                     15 	.globl _pinMode
                                     16 	.globl _UIF_BUS_RST
                                     17 	.globl _UIF_DETECT
                                     18 	.globl _UIF_TRANSFER
                                     19 	.globl _UIF_SUSPEND
                                     20 	.globl _UIF_HST_SOF
                                     21 	.globl _UIF_FIFO_OV
                                     22 	.globl _U_SIE_FREE
                                     23 	.globl _U_TOG_OK
                                     24 	.globl _U_IS_NAK
                                     25 	.globl _S0_R_FIFO0
                                     26 	.globl _S0_R_FIFO1
                                     27 	.globl _S0_T_FIFO
                                     28 	.globl _S0_FREE
                                     29 	.globl _S0_IF_BYTE
                                     30 	.globl _S0_IF_FIRST
                                     31 	.globl _S0_IF_OV
                                     32 	.globl _S0_FST_ACT
                                     33 	.globl _CP_RL2
                                     34 	.globl _C_T2
                                     35 	.globl _TR2
                                     36 	.globl _EXEN2
                                     37 	.globl _TCLK
                                     38 	.globl _RCLK
                                     39 	.globl _EXF2
                                     40 	.globl _CAP1F
                                     41 	.globl _TF2
                                     42 	.globl _RI
                                     43 	.globl _TI
                                     44 	.globl _RB8
                                     45 	.globl _TB8
                                     46 	.globl _REN
                                     47 	.globl _SM2
                                     48 	.globl _SM1
                                     49 	.globl _SM0
                                     50 	.globl _IT0
                                     51 	.globl _IE0
                                     52 	.globl _IT1
                                     53 	.globl _IE1
                                     54 	.globl _TR0
                                     55 	.globl _TF0
                                     56 	.globl _TR1
                                     57 	.globl _TF1
                                     58 	.globl _P4_OUT_0
                                     59 	.globl _P4_OUT_1
                                     60 	.globl _P4_OUT_2
                                     61 	.globl _P4_OUT_3
                                     62 	.globl _P4_OUT_4
                                     63 	.globl _P4_OUT_5
                                     64 	.globl _P4_OUT_6
                                     65 	.globl _P4_OUT_7
                                     66 	.globl _RXD1_
                                     67 	.globl _LED2
                                     68 	.globl _CAP3_
                                     69 	.globl _PWM3_
                                     70 	.globl _PWM1_
                                     71 	.globl _TXD1_
                                     72 	.globl _TNOW_
                                     73 	.globl _LED3
                                     74 	.globl _PWM2_
                                     75 	.globl _SCS_
                                     76 	.globl _SCK_
                                     77 	.globl _P3_0
                                     78 	.globl _P3_1
                                     79 	.globl _P3_2
                                     80 	.globl _P3_3
                                     81 	.globl _P3_4
                                     82 	.globl _P3_5
                                     83 	.globl _P3_6
                                     84 	.globl _P3_7
                                     85 	.globl _RXD
                                     86 	.globl _TXD
                                     87 	.globl _INT0
                                     88 	.globl _LED0
                                     89 	.globl _INT1
                                     90 	.globl _LED1
                                     91 	.globl _T0
                                     92 	.globl _XCS0
                                     93 	.globl _LEDC
                                     94 	.globl _T1
                                     95 	.globl _DA6
                                     96 	.globl _WR
                                     97 	.globl _RD
                                     98 	.globl _P2_0
                                     99 	.globl _P2_1
                                    100 	.globl _P2_2
                                    101 	.globl _P2_3
                                    102 	.globl _P2_4
                                    103 	.globl _P2_5
                                    104 	.globl _P2_6
                                    105 	.globl _P2_7
                                    106 	.globl _MOSI1
                                    107 	.globl _MISO1
                                    108 	.globl _SCK1
                                    109 	.globl _PWM1
                                    110 	.globl _CAP2_
                                    111 	.globl _T2EX_
                                    112 	.globl _PWM2
                                    113 	.globl _TNOW
                                    114 	.globl _RXD1
                                    115 	.globl _DA7
                                    116 	.globl _TXD1
                                    117 	.globl _P1_0
                                    118 	.globl _P1_1
                                    119 	.globl _P1_2
                                    120 	.globl _P1_3
                                    121 	.globl _P1_4
                                    122 	.globl _P1_5
                                    123 	.globl _P1_6
                                    124 	.globl _P1_7
                                    125 	.globl _CAP1
                                    126 	.globl _T2
                                    127 	.globl _CAP2
                                    128 	.globl _T2EX
                                    129 	.globl _CAP3
                                    130 	.globl _PWM3
                                    131 	.globl _SCS
                                    132 	.globl _MOSI
                                    133 	.globl _MISO
                                    134 	.globl _SCK
                                    135 	.globl _AIN0
                                    136 	.globl _AIN1
                                    137 	.globl _AIN2
                                    138 	.globl _AIN3
                                    139 	.globl _AIN4
                                    140 	.globl _AIN5
                                    141 	.globl _AIN6
                                    142 	.globl _AIN7
                                    143 	.globl _P0_0
                                    144 	.globl _P0_1
                                    145 	.globl _P0_2
                                    146 	.globl _P0_3
                                    147 	.globl _P0_4
                                    148 	.globl _P0_5
                                    149 	.globl _P0_6
                                    150 	.globl _P0_7
                                    151 	.globl _UDTR
                                    152 	.globl _URTS
                                    153 	.globl _RXD_
                                    154 	.globl _TXD_
                                    155 	.globl _UCTS
                                    156 	.globl _UDSR
                                    157 	.globl _URI
                                    158 	.globl _UDCD
                                    159 	.globl _IE_SPI0
                                    160 	.globl _IE_TMR3
                                    161 	.globl _IE_USB
                                    162 	.globl _IE_ADC
                                    163 	.globl _IE_UART1
                                    164 	.globl _IE_PWM1
                                    165 	.globl _IE_GPIO
                                    166 	.globl _IE_WDOG
                                    167 	.globl _PX0
                                    168 	.globl _PT0
                                    169 	.globl _PX1
                                    170 	.globl _PT1
                                    171 	.globl _PS
                                    172 	.globl _PT2
                                    173 	.globl _PL_FLAG
                                    174 	.globl _PH_FLAG
                                    175 	.globl _EX0
                                    176 	.globl _ET0
                                    177 	.globl _EX1
                                    178 	.globl _ET1
                                    179 	.globl _ES
                                    180 	.globl _ET2
                                    181 	.globl _E_DIS
                                    182 	.globl _EA
                                    183 	.globl _P
                                    184 	.globl _F1
                                    185 	.globl _OV
                                    186 	.globl _RS0
                                    187 	.globl _RS1
                                    188 	.globl _F0
                                    189 	.globl _AC
                                    190 	.globl _CY
                                    191 	.globl _USB_DMA_AH
                                    192 	.globl _USB_DMA_AL
                                    193 	.globl _USB_DMA
                                    194 	.globl _UHUB1_CTRL
                                    195 	.globl _UDEV_CTRL
                                    196 	.globl _USB_DEV_AD
                                    197 	.globl _USB_CTRL
                                    198 	.globl _USB_INT_EN
                                    199 	.globl _UEP4_T_LEN
                                    200 	.globl _UEP4_CTRL
                                    201 	.globl _UEP0_T_LEN
                                    202 	.globl _UEP0_CTRL
                                    203 	.globl _USB_HUB_ST
                                    204 	.globl _USB_MIS_ST
                                    205 	.globl _USB_INT_ST
                                    206 	.globl _USB_INT_FG
                                    207 	.globl _UEP3_T_LEN
                                    208 	.globl _UEP3_CTRL
                                    209 	.globl _UEP2_T_LEN
                                    210 	.globl _UEP2_CTRL
                                    211 	.globl _UEP1_T_LEN
                                    212 	.globl _UEP1_CTRL
                                    213 	.globl _USB_RX_LEN
                                    214 	.globl _ADC_EX_SW
                                    215 	.globl _ADC_SETUP
                                    216 	.globl _ADC_FIFO_H
                                    217 	.globl _ADC_FIFO_L
                                    218 	.globl _ADC_FIFO
                                    219 	.globl _ADC_CHANN
                                    220 	.globl _ADC_CTRL
                                    221 	.globl _ADC_STAT
                                    222 	.globl _ADC_CK_SE
                                    223 	.globl _ADC_DMA_CN
                                    224 	.globl _ADC_DMA_AH
                                    225 	.globl _ADC_DMA_AL
                                    226 	.globl _ADC_DMA
                                    227 	.globl _SER1_ADDR
                                    228 	.globl _SER1_MSR
                                    229 	.globl _SER1_LSR
                                    230 	.globl _SER1_MCR
                                    231 	.globl _SER1_LCR
                                    232 	.globl _SER1_IIR
                                    233 	.globl _SER1_IER
                                    234 	.globl _SER1_FIFO
                                    235 	.globl _SPI1_CK_SE
                                    236 	.globl _SPI1_CTRL
                                    237 	.globl _SPI1_DATA
                                    238 	.globl _SPI1_STAT
                                    239 	.globl _SPI0_SETUP
                                    240 	.globl _SPI0_CK_SE
                                    241 	.globl _SPI0_CTRL
                                    242 	.globl _SPI0_DATA
                                    243 	.globl _SPI0_STAT
                                    244 	.globl _PWM_CYCLE
                                    245 	.globl _PWM_CK_SE
                                    246 	.globl _PWM_CTRL
                                    247 	.globl _PWM_DATA
                                    248 	.globl _PWM_DATA2
                                    249 	.globl _T3_FIFO_H
                                    250 	.globl _T3_FIFO_L
                                    251 	.globl _T3_FIFO
                                    252 	.globl _T3_DMA_AH
                                    253 	.globl _T3_DMA_AL
                                    254 	.globl _T3_DMA
                                    255 	.globl _T3_DMA_CN
                                    256 	.globl _T3_CTRL
                                    257 	.globl _T3_STAT
                                    258 	.globl _T3_END_H
                                    259 	.globl _T3_END_L
                                    260 	.globl _T3_END
                                    261 	.globl _T3_COUNT_H
                                    262 	.globl _T3_COUNT_L
                                    263 	.globl _T3_COUNT
                                    264 	.globl _T3_SETUP
                                    265 	.globl _TH2
                                    266 	.globl _TL2
                                    267 	.globl _T2COUNT
                                    268 	.globl _RCAP2H
                                    269 	.globl _RCAP2L
                                    270 	.globl _RCAP2
                                    271 	.globl _T2MOD
                                    272 	.globl _T2CON
                                    273 	.globl _SBUF
                                    274 	.globl _SCON
                                    275 	.globl _TH1
                                    276 	.globl _TH0
                                    277 	.globl _TL1
                                    278 	.globl _TL0
                                    279 	.globl _TMOD
                                    280 	.globl _TCON
                                    281 	.globl _XBUS_SPEED
                                    282 	.globl _XBUS_AUX
                                    283 	.globl _PIN_FUNC
                                    284 	.globl _PORT_CFG
                                    285 	.globl _P5_IN
                                    286 	.globl _P4_PU
                                    287 	.globl _P4_DIR
                                    288 	.globl _P4_IN
                                    289 	.globl _P4_OUT
                                    290 	.globl _P3_PU
                                    291 	.globl _P3_DIR
                                    292 	.globl _P3
                                    293 	.globl _P2_PU
                                    294 	.globl _P2_DIR
                                    295 	.globl _P2
                                    296 	.globl _P1_PU
                                    297 	.globl _P1_DIR
                                    298 	.globl _P1_IE
                                    299 	.globl _P1
                                    300 	.globl _P0_PU
                                    301 	.globl _P0_DIR
                                    302 	.globl _P0
                                    303 	.globl _ROM_CTRL
                                    304 	.globl _ROM_DATA_H
                                    305 	.globl _ROM_DATA_L
                                    306 	.globl _ROM_DATA
                                    307 	.globl _ROM_ADDR_H
                                    308 	.globl _ROM_ADDR_L
                                    309 	.globl _ROM_ADDR
                                    310 	.globl _GPIO_IE
                                    311 	.globl _IP_EX
                                    312 	.globl _IE_EX
                                    313 	.globl _IP
                                    314 	.globl _IE
                                    315 	.globl _WDOG_COUNT
                                    316 	.globl _RESET_KEEP
                                    317 	.globl _WAKE_CTRL
                                    318 	.globl _SLEEP_CTRL
                                    319 	.globl _CLOCK_CFG
                                    320 	.globl _PLL_CFG
                                    321 	.globl _PCON
                                    322 	.globl _GLOBAL_CFG
                                    323 	.globl _SAFE_MOD
                                    324 	.globl _DPH
                                    325 	.globl _DPL
                                    326 	.globl _SP
                                    327 	.globl _B
                                    328 	.globl _ACC
                                    329 	.globl _PSW
                                    330 	.globl _DS18B20_setAlarmTemperature_PARM_3
                                    331 	.globl _DS18B20_setAlarmTemperature_PARM_2
                                    332 	.globl _DS18B20_setResolution_PARM_2
                                    333 	.globl _DS18B20_init_PARM_2
                                    334 	.globl _LED_DMA_XL
                                    335 	.globl _LED_DMA_XH
                                    336 	.globl _LED_DMA_CN
                                    337 	.globl _LED_DMA_AL
                                    338 	.globl _LED_DMA_AH
                                    339 	.globl _LED_CK_SE
                                    340 	.globl _LED_DATA
                                    341 	.globl _LED_CTRL
                                    342 	.globl _LED_STAT
                                    343 	.globl _UEP3_DMA_L
                                    344 	.globl _UEP3_DMA_H
                                    345 	.globl _UEP2_DMA_L
                                    346 	.globl _UEP2_DMA_H
                                    347 	.globl _UEP1_DMA_L
                                    348 	.globl _UEP1_DMA_H
                                    349 	.globl _UEP0_DMA_L
                                    350 	.globl _UEP0_DMA_H
                                    351 	.globl _UEP2_3_MOD
                                    352 	.globl _UEP4_1_MOD
                                    353 	.globl _pLED_DMA_XL
                                    354 	.globl _pLED_DMA_XH
                                    355 	.globl _pLED_DMA_CN
                                    356 	.globl _pLED_DMA_AL
                                    357 	.globl _pLED_DMA_AH
                                    358 	.globl _pLED_CK_SE
                                    359 	.globl _pLED_DATA
                                    360 	.globl _pLED_CTRL
                                    361 	.globl _pLED_STAT
                                    362 	.globl _pUEP3_DMA_L
                                    363 	.globl _pUEP3_DMA_H
                                    364 	.globl _pUEP2_DMA_L
                                    365 	.globl _pUEP2_DMA_H
                                    366 	.globl _pUEP1_DMA_L
                                    367 	.globl _pUEP1_DMA_H
                                    368 	.globl _pUEP0_DMA_L
                                    369 	.globl _pUEP0_DMA_H
                                    370 	.globl _pUEP2_3_MOD
                                    371 	.globl _pUEP4_1_MOD
                                    372 	.globl _DS18B20_init
                                    373 	.globl _DS18B20_begin
                                    374 	.globl _DS18B20_readTemperature
                                    375 	.globl _DS18B20_readTemperatureFast
                                    376 	.globl _DS18B20_setResolution
                                    377 	.globl _DS18B20_setAlarmTemperature
                                    378 ;--------------------------------------------------------
                                    379 ; special function registers
                                    380 ;--------------------------------------------------------
                                    381 	.area RSEG    (ABS,DATA)
      000000                        382 	.org 0x0000
                           0000D0   383 _PSW	=	0x00d0
                           0000E0   384 _ACC	=	0x00e0
                           0000F0   385 _B	=	0x00f0
                           000081   386 _SP	=	0x0081
                           000082   387 _DPL	=	0x0082
                           000083   388 _DPH	=	0x0083
                           0000A1   389 _SAFE_MOD	=	0x00a1
                           0000B1   390 _GLOBAL_CFG	=	0x00b1
                           000087   391 _PCON	=	0x0087
                           0000B2   392 _PLL_CFG	=	0x00b2
                           0000B3   393 _CLOCK_CFG	=	0x00b3
                           0000EA   394 _SLEEP_CTRL	=	0x00ea
                           0000EB   395 _WAKE_CTRL	=	0x00eb
                           0000FE   396 _RESET_KEEP	=	0x00fe
                           0000FF   397 _WDOG_COUNT	=	0x00ff
                           0000A8   398 _IE	=	0x00a8
                           0000B8   399 _IP	=	0x00b8
                           0000E8   400 _IE_EX	=	0x00e8
                           0000E9   401 _IP_EX	=	0x00e9
                           0000CF   402 _GPIO_IE	=	0x00cf
                           008584   403 _ROM_ADDR	=	0x8584
                           000084   404 _ROM_ADDR_L	=	0x0084
                           000085   405 _ROM_ADDR_H	=	0x0085
                           008F8E   406 _ROM_DATA	=	0x8f8e
                           00008E   407 _ROM_DATA_L	=	0x008e
                           00008F   408 _ROM_DATA_H	=	0x008f
                           000086   409 _ROM_CTRL	=	0x0086
                           000080   410 _P0	=	0x0080
                           0000C4   411 _P0_DIR	=	0x00c4
                           0000C5   412 _P0_PU	=	0x00c5
                           000090   413 _P1	=	0x0090
                           0000B9   414 _P1_IE	=	0x00b9
                           0000BA   415 _P1_DIR	=	0x00ba
                           0000BB   416 _P1_PU	=	0x00bb
                           0000A0   417 _P2	=	0x00a0
                           0000BC   418 _P2_DIR	=	0x00bc
                           0000BD   419 _P2_PU	=	0x00bd
                           0000B0   420 _P3	=	0x00b0
                           0000BE   421 _P3_DIR	=	0x00be
                           0000BF   422 _P3_PU	=	0x00bf
                           0000C0   423 _P4_OUT	=	0x00c0
                           0000C1   424 _P4_IN	=	0x00c1
                           0000C2   425 _P4_DIR	=	0x00c2
                           0000C3   426 _P4_PU	=	0x00c3
                           0000C7   427 _P5_IN	=	0x00c7
                           0000C6   428 _PORT_CFG	=	0x00c6
                           0000CE   429 _PIN_FUNC	=	0x00ce
                           0000A2   430 _XBUS_AUX	=	0x00a2
                           0000FD   431 _XBUS_SPEED	=	0x00fd
                           000088   432 _TCON	=	0x0088
                           000089   433 _TMOD	=	0x0089
                           00008A   434 _TL0	=	0x008a
                           00008B   435 _TL1	=	0x008b
                           00008C   436 _TH0	=	0x008c
                           00008D   437 _TH1	=	0x008d
                           000098   438 _SCON	=	0x0098
                           000099   439 _SBUF	=	0x0099
                           0000C8   440 _T2CON	=	0x00c8
                           0000C9   441 _T2MOD	=	0x00c9
                           00CBCA   442 _RCAP2	=	0xcbca
                           0000CA   443 _RCAP2L	=	0x00ca
                           0000CB   444 _RCAP2H	=	0x00cb
                           00CDCC   445 _T2COUNT	=	0xcdcc
                           0000CC   446 _TL2	=	0x00cc
                           0000CD   447 _TH2	=	0x00cd
                           0000A3   448 _T3_SETUP	=	0x00a3
                           00A5A4   449 _T3_COUNT	=	0xa5a4
                           0000A4   450 _T3_COUNT_L	=	0x00a4
                           0000A5   451 _T3_COUNT_H	=	0x00a5
                           00A7A6   452 _T3_END	=	0xa7a6
                           0000A6   453 _T3_END_L	=	0x00a6
                           0000A7   454 _T3_END_H	=	0x00a7
                           0000A9   455 _T3_STAT	=	0x00a9
                           0000AA   456 _T3_CTRL	=	0x00aa
                           0000AB   457 _T3_DMA_CN	=	0x00ab
                           00ADAC   458 _T3_DMA	=	0xadac
                           0000AC   459 _T3_DMA_AL	=	0x00ac
                           0000AD   460 _T3_DMA_AH	=	0x00ad
                           00AFAE   461 _T3_FIFO	=	0xafae
                           0000AE   462 _T3_FIFO_L	=	0x00ae
                           0000AF   463 _T3_FIFO_H	=	0x00af
                           00009B   464 _PWM_DATA2	=	0x009b
                           00009C   465 _PWM_DATA	=	0x009c
                           00009D   466 _PWM_CTRL	=	0x009d
                           00009E   467 _PWM_CK_SE	=	0x009e
                           00009F   468 _PWM_CYCLE	=	0x009f
                           0000F8   469 _SPI0_STAT	=	0x00f8
                           0000F9   470 _SPI0_DATA	=	0x00f9
                           0000FA   471 _SPI0_CTRL	=	0x00fa
                           0000FB   472 _SPI0_CK_SE	=	0x00fb
                           0000FC   473 _SPI0_SETUP	=	0x00fc
                           0000B4   474 _SPI1_STAT	=	0x00b4
                           0000B5   475 _SPI1_DATA	=	0x00b5
                           0000B6   476 _SPI1_CTRL	=	0x00b6
                           0000B7   477 _SPI1_CK_SE	=	0x00b7
                           00009A   478 _SER1_FIFO	=	0x009a
                           000091   479 _SER1_IER	=	0x0091
                           000092   480 _SER1_IIR	=	0x0092
                           000093   481 _SER1_LCR	=	0x0093
                           000094   482 _SER1_MCR	=	0x0094
                           000095   483 _SER1_LSR	=	0x0095
                           000096   484 _SER1_MSR	=	0x0096
                           000097   485 _SER1_ADDR	=	0x0097
                           00EDEC   486 _ADC_DMA	=	0xedec
                           0000EC   487 _ADC_DMA_AL	=	0x00ec
                           0000ED   488 _ADC_DMA_AH	=	0x00ed
                           0000EE   489 _ADC_DMA_CN	=	0x00ee
                           0000EF   490 _ADC_CK_SE	=	0x00ef
                           0000F1   491 _ADC_STAT	=	0x00f1
                           0000F2   492 _ADC_CTRL	=	0x00f2
                           0000F3   493 _ADC_CHANN	=	0x00f3
                           00F5F4   494 _ADC_FIFO	=	0xf5f4
                           0000F4   495 _ADC_FIFO_L	=	0x00f4
                           0000F5   496 _ADC_FIFO_H	=	0x00f5
                           0000F6   497 _ADC_SETUP	=	0x00f6
                           0000F7   498 _ADC_EX_SW	=	0x00f7
                           0000D1   499 _USB_RX_LEN	=	0x00d1
                           0000D2   500 _UEP1_CTRL	=	0x00d2
                           0000D3   501 _UEP1_T_LEN	=	0x00d3
                           0000D4   502 _UEP2_CTRL	=	0x00d4
                           0000D5   503 _UEP2_T_LEN	=	0x00d5
                           0000D6   504 _UEP3_CTRL	=	0x00d6
                           0000D7   505 _UEP3_T_LEN	=	0x00d7
                           0000D8   506 _USB_INT_FG	=	0x00d8
                           0000D9   507 _USB_INT_ST	=	0x00d9
                           0000DA   508 _USB_MIS_ST	=	0x00da
                           0000DB   509 _USB_HUB_ST	=	0x00db
                           0000DC   510 _UEP0_CTRL	=	0x00dc
                           0000DD   511 _UEP0_T_LEN	=	0x00dd
                           0000DE   512 _UEP4_CTRL	=	0x00de
                           0000DF   513 _UEP4_T_LEN	=	0x00df
                           0000E1   514 _USB_INT_EN	=	0x00e1
                           0000E2   515 _USB_CTRL	=	0x00e2
                           0000E3   516 _USB_DEV_AD	=	0x00e3
                           0000E4   517 _UDEV_CTRL	=	0x00e4
                           0000E5   518 _UHUB1_CTRL	=	0x00e5
                           00E7E6   519 _USB_DMA	=	0xe7e6
                           0000E6   520 _USB_DMA_AL	=	0x00e6
                           0000E7   521 _USB_DMA_AH	=	0x00e7
                                    522 ;--------------------------------------------------------
                                    523 ; special function bits
                                    524 ;--------------------------------------------------------
                                    525 	.area RSEG    (ABS,DATA)
      000000                        526 	.org 0x0000
                           0000D7   527 _CY	=	0x00d7
                           0000D6   528 _AC	=	0x00d6
                           0000D5   529 _F0	=	0x00d5
                           0000D4   530 _RS1	=	0x00d4
                           0000D3   531 _RS0	=	0x00d3
                           0000D2   532 _OV	=	0x00d2
                           0000D1   533 _F1	=	0x00d1
                           0000D0   534 _P	=	0x00d0
                           0000AF   535 _EA	=	0x00af
                           0000AE   536 _E_DIS	=	0x00ae
                           0000AD   537 _ET2	=	0x00ad
                           0000AC   538 _ES	=	0x00ac
                           0000AB   539 _ET1	=	0x00ab
                           0000AA   540 _EX1	=	0x00aa
                           0000A9   541 _ET0	=	0x00a9
                           0000A8   542 _EX0	=	0x00a8
                           0000BF   543 _PH_FLAG	=	0x00bf
                           0000BE   544 _PL_FLAG	=	0x00be
                           0000BD   545 _PT2	=	0x00bd
                           0000BC   546 _PS	=	0x00bc
                           0000BB   547 _PT1	=	0x00bb
                           0000BA   548 _PX1	=	0x00ba
                           0000B9   549 _PT0	=	0x00b9
                           0000B8   550 _PX0	=	0x00b8
                           0000EF   551 _IE_WDOG	=	0x00ef
                           0000EE   552 _IE_GPIO	=	0x00ee
                           0000ED   553 _IE_PWM1	=	0x00ed
                           0000EC   554 _IE_UART1	=	0x00ec
                           0000EB   555 _IE_ADC	=	0x00eb
                           0000EA   556 _IE_USB	=	0x00ea
                           0000E9   557 _IE_TMR3	=	0x00e9
                           0000E8   558 _IE_SPI0	=	0x00e8
                           000087   559 _UDCD	=	0x0087
                           000086   560 _URI	=	0x0086
                           000085   561 _UDSR	=	0x0085
                           000084   562 _UCTS	=	0x0084
                           000083   563 _TXD_	=	0x0083
                           000082   564 _RXD_	=	0x0082
                           000081   565 _URTS	=	0x0081
                           000080   566 _UDTR	=	0x0080
                           000087   567 _P0_7	=	0x0087
                           000086   568 _P0_6	=	0x0086
                           000085   569 _P0_5	=	0x0085
                           000084   570 _P0_4	=	0x0084
                           000083   571 _P0_3	=	0x0083
                           000082   572 _P0_2	=	0x0082
                           000081   573 _P0_1	=	0x0081
                           000080   574 _P0_0	=	0x0080
                           000097   575 _AIN7	=	0x0097
                           000096   576 _AIN6	=	0x0096
                           000095   577 _AIN5	=	0x0095
                           000094   578 _AIN4	=	0x0094
                           000093   579 _AIN3	=	0x0093
                           000092   580 _AIN2	=	0x0092
                           000091   581 _AIN1	=	0x0091
                           000090   582 _AIN0	=	0x0090
                           000097   583 _SCK	=	0x0097
                           000096   584 _MISO	=	0x0096
                           000095   585 _MOSI	=	0x0095
                           000094   586 _SCS	=	0x0094
                           000092   587 _PWM3	=	0x0092
                           000092   588 _CAP3	=	0x0092
                           000091   589 _T2EX	=	0x0091
                           000091   590 _CAP2	=	0x0091
                           000090   591 _T2	=	0x0090
                           000090   592 _CAP1	=	0x0090
                           000097   593 _P1_7	=	0x0097
                           000096   594 _P1_6	=	0x0096
                           000095   595 _P1_5	=	0x0095
                           000094   596 _P1_4	=	0x0094
                           000093   597 _P1_3	=	0x0093
                           000092   598 _P1_2	=	0x0092
                           000091   599 _P1_1	=	0x0091
                           000090   600 _P1_0	=	0x0090
                           0000A7   601 _TXD1	=	0x00a7
                           0000A7   602 _DA7	=	0x00a7
                           0000A6   603 _RXD1	=	0x00a6
                           0000A5   604 _TNOW	=	0x00a5
                           0000A5   605 _PWM2	=	0x00a5
                           0000A5   606 _T2EX_	=	0x00a5
                           0000A5   607 _CAP2_	=	0x00a5
                           0000A4   608 _PWM1	=	0x00a4
                           0000A3   609 _SCK1	=	0x00a3
                           0000A2   610 _MISO1	=	0x00a2
                           0000A1   611 _MOSI1	=	0x00a1
                           0000A7   612 _P2_7	=	0x00a7
                           0000A6   613 _P2_6	=	0x00a6
                           0000A5   614 _P2_5	=	0x00a5
                           0000A4   615 _P2_4	=	0x00a4
                           0000A3   616 _P2_3	=	0x00a3
                           0000A2   617 _P2_2	=	0x00a2
                           0000A1   618 _P2_1	=	0x00a1
                           0000A0   619 _P2_0	=	0x00a0
                           0000B7   620 _RD	=	0x00b7
                           0000B6   621 _WR	=	0x00b6
                           0000B5   622 _DA6	=	0x00b5
                           0000B5   623 _T1	=	0x00b5
                           0000B4   624 _LEDC	=	0x00b4
                           0000B4   625 _XCS0	=	0x00b4
                           0000B4   626 _T0	=	0x00b4
                           0000B3   627 _LED1	=	0x00b3
                           0000B3   628 _INT1	=	0x00b3
                           0000B2   629 _LED0	=	0x00b2
                           0000B2   630 _INT0	=	0x00b2
                           0000B1   631 _TXD	=	0x00b1
                           0000B0   632 _RXD	=	0x00b0
                           0000B7   633 _P3_7	=	0x00b7
                           0000B6   634 _P3_6	=	0x00b6
                           0000B5   635 _P3_5	=	0x00b5
                           0000B4   636 _P3_4	=	0x00b4
                           0000B3   637 _P3_3	=	0x00b3
                           0000B2   638 _P3_2	=	0x00b2
                           0000B1   639 _P3_1	=	0x00b1
                           0000B0   640 _P3_0	=	0x00b0
                           0000C7   641 _SCK_	=	0x00c7
                           0000C6   642 _SCS_	=	0x00c6
                           0000C5   643 _PWM2_	=	0x00c5
                           0000C4   644 _LED3	=	0x00c4
                           0000C4   645 _TNOW_	=	0x00c4
                           0000C4   646 _TXD1_	=	0x00c4
                           0000C3   647 _PWM1_	=	0x00c3
                           0000C2   648 _PWM3_	=	0x00c2
                           0000C2   649 _CAP3_	=	0x00c2
                           0000C0   650 _LED2	=	0x00c0
                           0000C0   651 _RXD1_	=	0x00c0
                           0000C7   652 _P4_OUT_7	=	0x00c7
                           0000C6   653 _P4_OUT_6	=	0x00c6
                           0000C5   654 _P4_OUT_5	=	0x00c5
                           0000C4   655 _P4_OUT_4	=	0x00c4
                           0000C3   656 _P4_OUT_3	=	0x00c3
                           0000C2   657 _P4_OUT_2	=	0x00c2
                           0000C1   658 _P4_OUT_1	=	0x00c1
                           0000C0   659 _P4_OUT_0	=	0x00c0
                           00008F   660 _TF1	=	0x008f
                           00008E   661 _TR1	=	0x008e
                           00008D   662 _TF0	=	0x008d
                           00008C   663 _TR0	=	0x008c
                           00008B   664 _IE1	=	0x008b
                           00008A   665 _IT1	=	0x008a
                           000089   666 _IE0	=	0x0089
                           000088   667 _IT0	=	0x0088
                           00009F   668 _SM0	=	0x009f
                           00009E   669 _SM1	=	0x009e
                           00009D   670 _SM2	=	0x009d
                           00009C   671 _REN	=	0x009c
                           00009B   672 _TB8	=	0x009b
                           00009A   673 _RB8	=	0x009a
                           000099   674 _TI	=	0x0099
                           000098   675 _RI	=	0x0098
                           0000CF   676 _TF2	=	0x00cf
                           0000CF   677 _CAP1F	=	0x00cf
                           0000CE   678 _EXF2	=	0x00ce
                           0000CD   679 _RCLK	=	0x00cd
                           0000CC   680 _TCLK	=	0x00cc
                           0000CB   681 _EXEN2	=	0x00cb
                           0000CA   682 _TR2	=	0x00ca
                           0000C9   683 _C_T2	=	0x00c9
                           0000C8   684 _CP_RL2	=	0x00c8
                           0000FF   685 _S0_FST_ACT	=	0x00ff
                           0000FE   686 _S0_IF_OV	=	0x00fe
                           0000FD   687 _S0_IF_FIRST	=	0x00fd
                           0000FC   688 _S0_IF_BYTE	=	0x00fc
                           0000FB   689 _S0_FREE	=	0x00fb
                           0000FA   690 _S0_T_FIFO	=	0x00fa
                           0000F9   691 _S0_R_FIFO1	=	0x00f9
                           0000F8   692 _S0_R_FIFO0	=	0x00f8
                           0000DF   693 _U_IS_NAK	=	0x00df
                           0000DE   694 _U_TOG_OK	=	0x00de
                           0000DD   695 _U_SIE_FREE	=	0x00dd
                           0000DC   696 _UIF_FIFO_OV	=	0x00dc
                           0000DB   697 _UIF_HST_SOF	=	0x00db
                           0000DA   698 _UIF_SUSPEND	=	0x00da
                           0000D9   699 _UIF_TRANSFER	=	0x00d9
                           0000D8   700 _UIF_DETECT	=	0x00d8
                           0000D8   701 _UIF_BUS_RST	=	0x00d8
                                    702 ;--------------------------------------------------------
                                    703 ; overlayable register banks
                                    704 ;--------------------------------------------------------
                                    705 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        706 	.ds 8
                                    707 ;--------------------------------------------------------
                                    708 ; internal ram data
                                    709 ;--------------------------------------------------------
                                    710 	.area DSEG    (DATA)
                                    711 ;--------------------------------------------------------
                                    712 ; overlayable items in internal ram
                                    713 ;--------------------------------------------------------
                                    714 ;--------------------------------------------------------
                                    715 ; indirectly addressable internal ram data
                                    716 ;--------------------------------------------------------
                                    717 	.area ISEG    (DATA)
                                    718 ;--------------------------------------------------------
                                    719 ; absolute internal ram data
                                    720 ;--------------------------------------------------------
                                    721 	.area IABS    (ABS,DATA)
                                    722 	.area IABS    (ABS,DATA)
                                    723 ;--------------------------------------------------------
                                    724 ; bit data
                                    725 ;--------------------------------------------------------
                                    726 	.area BSEG    (BIT)
                                    727 ;--------------------------------------------------------
                                    728 ; paged external ram data
                                    729 ;--------------------------------------------------------
                                    730 	.area PSEG    (PAG,XDATA)
                           002546   731 _pUEP4_1_MOD	=	0x2546
                           002547   732 _pUEP2_3_MOD	=	0x2547
                           002548   733 _pUEP0_DMA_H	=	0x2548
                           002549   734 _pUEP0_DMA_L	=	0x2549
                           00254A   735 _pUEP1_DMA_H	=	0x254a
                           00254B   736 _pUEP1_DMA_L	=	0x254b
                           00254C   737 _pUEP2_DMA_H	=	0x254c
                           00254D   738 _pUEP2_DMA_L	=	0x254d
                           00254E   739 _pUEP3_DMA_H	=	0x254e
                           00254F   740 _pUEP3_DMA_L	=	0x254f
                           002980   741 _pLED_STAT	=	0x2980
                           002981   742 _pLED_CTRL	=	0x2981
                           002982   743 _pLED_DATA	=	0x2982
                           002983   744 _pLED_CK_SE	=	0x2983
                           002984   745 _pLED_DMA_AH	=	0x2984
                           002985   746 _pLED_DMA_AL	=	0x2985
                           002986   747 _pLED_DMA_CN	=	0x2986
                           002988   748 _pLED_DMA_XH	=	0x2988
                           002989   749 _pLED_DMA_XL	=	0x2989
                                    750 ;--------------------------------------------------------
                                    751 ; uninitialized external ram data
                                    752 ;--------------------------------------------------------
                                    753 	.area XSEG    (XDATA)
                           002446   754 _UEP4_1_MOD	=	0x2446
                           002447   755 _UEP2_3_MOD	=	0x2447
                           002448   756 _UEP0_DMA_H	=	0x2448
                           002449   757 _UEP0_DMA_L	=	0x2449
                           00244A   758 _UEP1_DMA_H	=	0x244a
                           00244B   759 _UEP1_DMA_L	=	0x244b
                           00244C   760 _UEP2_DMA_H	=	0x244c
                           00244D   761 _UEP2_DMA_L	=	0x244d
                           00244E   762 _UEP3_DMA_H	=	0x244e
                           00244F   763 _UEP3_DMA_L	=	0x244f
                           002880   764 _LED_STAT	=	0x2880
                           002881   765 _LED_CTRL	=	0x2881
                           002882   766 _LED_DATA	=	0x2882
                           002883   767 _LED_CK_SE	=	0x2883
                           002884   768 _LED_DMA_AH	=	0x2884
                           002885   769 _LED_DMA_AL	=	0x2885
                           002886   770 _LED_DMA_CN	=	0x2886
                           002888   771 _LED_DMA_XH	=	0x2888
                           002889   772 _LED_DMA_XL	=	0x2889
      000094                        773 _ds18b20_pinOutput_dev_65536_175:
      000094                        774 	.ds 3
      000097                        775 _ds18b20_pinInput_dev_65536_177:
      000097                        776 	.ds 3
      00009A                        777 _ds18b20_pinHigh_dev_65536_179:
      00009A                        778 	.ds 3
      00009D                        779 _ds18b20_pinLow_dev_65536_181:
      00009D                        780 	.ds 3
      0000A0                        781 _ds18b20_pinRead_dev_65536_183:
      0000A0                        782 	.ds 3
      0000A3                        783 _ds18b20_delayUs_us_65536_185:
      0000A3                        784 	.ds 2
      0000A5                        785 _ds18b20_reset_dev_65536_187:
      0000A5                        786 	.ds 3
      0000A8                        787 _ds18b20_writeByte_PARM_2:
      0000A8                        788 	.ds 1
      0000A9                        789 _ds18b20_writeByte_dev_65536_189:
      0000A9                        790 	.ds 3
      0000AC                        791 _ds18b20_readByte_dev_65536_195:
      0000AC                        792 	.ds 3
      0000AF                        793 _ds18b20_readByte_byte_65536_196:
      0000AF                        794 	.ds 1
      0000B0                        795 _ds18b20_readScratchpad_PARM_2:
      0000B0                        796 	.ds 3
      0000B3                        797 _ds18b20_readScratchpad_dev_65536_200:
      0000B3                        798 	.ds 3
      0000B6                        799 _DS18B20_init_PARM_2:
      0000B6                        800 	.ds 1
      0000B7                        801 _DS18B20_init_dev_65536_205:
      0000B7                        802 	.ds 3
      0000BA                        803 _DS18B20_begin_dev_65536_207:
      0000BA                        804 	.ds 3
      0000BD                        805 _DS18B20_readTemperature_dev_65536_209:
      0000BD                        806 	.ds 3
      0000C0                        807 _DS18B20_readTemperatureFast_dev_65536_213:
      0000C0                        808 	.ds 3
      0000C3                        809 _DS18B20_readTemperatureFast_scratchpad_65536_214:
      0000C3                        810 	.ds 9
      0000CC                        811 _DS18B20_readTemperatureFast_wait_time_65536_214:
      0000CC                        812 	.ds 4
      0000D0                        813 _DS18B20_setResolution_PARM_2:
      0000D0                        814 	.ds 1
      0000D1                        815 _DS18B20_setResolution_dev_65536_219:
      0000D1                        816 	.ds 3
      0000D4                        817 _DS18B20_setResolution_scratchpad_65536_220:
      0000D4                        818 	.ds 9
      0000DD                        819 _DS18B20_setAlarmTemperature_PARM_2:
      0000DD                        820 	.ds 1
      0000DE                        821 _DS18B20_setAlarmTemperature_PARM_3:
      0000DE                        822 	.ds 1
      0000DF                        823 _DS18B20_setAlarmTemperature_dev_65536_222:
      0000DF                        824 	.ds 3
      0000E2                        825 _DS18B20_setAlarmTemperature_scratchpad_65536_223:
      0000E2                        826 	.ds 9
                                    827 ;--------------------------------------------------------
                                    828 ; absolute external ram data
                                    829 ;--------------------------------------------------------
                                    830 	.area XABS    (ABS,XDATA)
                                    831 ;--------------------------------------------------------
                                    832 ; initialized external ram data
                                    833 ;--------------------------------------------------------
                                    834 	.area XISEG   (XDATA)
                                    835 	.area HOME    (CODE)
                                    836 	.area GSINIT0 (CODE)
                                    837 	.area GSINIT1 (CODE)
                                    838 	.area GSINIT2 (CODE)
                                    839 	.area GSINIT3 (CODE)
                                    840 	.area GSINIT4 (CODE)
                                    841 	.area GSINIT5 (CODE)
                                    842 	.area GSINIT  (CODE)
                                    843 	.area GSFINAL (CODE)
                                    844 	.area CSEG    (CODE)
                                    845 ;--------------------------------------------------------
                                    846 ; global & static initialisations
                                    847 ;--------------------------------------------------------
                                    848 	.area HOME    (CODE)
                                    849 	.area GSINIT  (CODE)
                                    850 	.area GSFINAL (CODE)
                                    851 	.area GSINIT  (CODE)
                                    852 ;--------------------------------------------------------
                                    853 ; Home
                                    854 ;--------------------------------------------------------
                                    855 	.area HOME    (CODE)
                                    856 	.area HOME    (CODE)
                                    857 ;--------------------------------------------------------
                                    858 ; code
                                    859 ;--------------------------------------------------------
                                    860 	.area CSEG    (CODE)
                                    861 ;------------------------------------------------------------
                                    862 ;Allocation info for local variables in function 'ds18b20_pinOutput'
                                    863 ;------------------------------------------------------------
                                    864 ;dev                       Allocated with name '_ds18b20_pinOutput_dev_65536_175'
                                    865 ;------------------------------------------------------------
                                    866 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:8: static void ds18b20_pinOutput(DS18B20* dev) {
                                    867 ;	-----------------------------------------
                                    868 ;	 function ds18b20_pinOutput
                                    869 ;	-----------------------------------------
      0000DC                        870 _ds18b20_pinOutput:
                           000007   871 	ar7 = 0x07
                           000006   872 	ar6 = 0x06
                           000005   873 	ar5 = 0x05
                           000004   874 	ar4 = 0x04
                           000003   875 	ar3 = 0x03
                           000002   876 	ar2 = 0x02
                           000001   877 	ar1 = 0x01
                           000000   878 	ar0 = 0x00
      0000DC AF F0            [24]  879 	mov	r7,b
      0000DE AE 83            [24]  880 	mov	r6,dph
      0000E0 E5 82            [12]  881 	mov	a,dpl
      0000E2 90 00 94         [24]  882 	mov	dptr,#_ds18b20_pinOutput_dev_65536_175
      0000E5 F0               [24]  883 	movx	@dptr,a
      0000E6 EE               [12]  884 	mov	a,r6
      0000E7 A3               [24]  885 	inc	dptr
      0000E8 F0               [24]  886 	movx	@dptr,a
      0000E9 EF               [12]  887 	mov	a,r7
      0000EA A3               [24]  888 	inc	dptr
      0000EB F0               [24]  889 	movx	@dptr,a
                                    890 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:9: pinMode(dev->pin, OUTPUT);
      0000EC 90 00 94         [24]  891 	mov	dptr,#_ds18b20_pinOutput_dev_65536_175
      0000EF E0               [24]  892 	movx	a,@dptr
      0000F0 FD               [12]  893 	mov	r5,a
      0000F1 A3               [24]  894 	inc	dptr
      0000F2 E0               [24]  895 	movx	a,@dptr
      0000F3 FE               [12]  896 	mov	r6,a
      0000F4 A3               [24]  897 	inc	dptr
      0000F5 E0               [24]  898 	movx	a,@dptr
      0000F6 FF               [12]  899 	mov	r7,a
      0000F7 8D 82            [24]  900 	mov	dpl,r5
      0000F9 8E 83            [24]  901 	mov	dph,r6
      0000FB 8F F0            [24]  902 	mov	b,r7
      0000FD 12 5D 5A         [24]  903 	lcall	__gptrget
      000100 FD               [12]  904 	mov	r5,a
      000101 90 02 6D         [24]  905 	mov	dptr,#_pinMode_PARM_2
      000104 74 01            [12]  906 	mov	a,#0x01
      000106 F0               [24]  907 	movx	@dptr,a
      000107 8D 82            [24]  908 	mov	dpl,r5
                                    909 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:10: }
      000109 02 4A FA         [24]  910 	ljmp	_pinMode
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'ds18b20_pinInput'
                                    913 ;------------------------------------------------------------
                                    914 ;dev                       Allocated with name '_ds18b20_pinInput_dev_65536_177'
                                    915 ;------------------------------------------------------------
                                    916 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:12: static void ds18b20_pinInput(DS18B20* dev) {
                                    917 ;	-----------------------------------------
                                    918 ;	 function ds18b20_pinInput
                                    919 ;	-----------------------------------------
      00010C                        920 _ds18b20_pinInput:
      00010C AF F0            [24]  921 	mov	r7,b
      00010E AE 83            [24]  922 	mov	r6,dph
      000110 E5 82            [12]  923 	mov	a,dpl
      000112 90 00 97         [24]  924 	mov	dptr,#_ds18b20_pinInput_dev_65536_177
      000115 F0               [24]  925 	movx	@dptr,a
      000116 EE               [12]  926 	mov	a,r6
      000117 A3               [24]  927 	inc	dptr
      000118 F0               [24]  928 	movx	@dptr,a
      000119 EF               [12]  929 	mov	a,r7
      00011A A3               [24]  930 	inc	dptr
      00011B F0               [24]  931 	movx	@dptr,a
                                    932 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:13: pinMode(dev->pin, INPUT);
      00011C 90 00 97         [24]  933 	mov	dptr,#_ds18b20_pinInput_dev_65536_177
      00011F E0               [24]  934 	movx	a,@dptr
      000120 FD               [12]  935 	mov	r5,a
      000121 A3               [24]  936 	inc	dptr
      000122 E0               [24]  937 	movx	a,@dptr
      000123 FE               [12]  938 	mov	r6,a
      000124 A3               [24]  939 	inc	dptr
      000125 E0               [24]  940 	movx	a,@dptr
      000126 FF               [12]  941 	mov	r7,a
      000127 8D 82            [24]  942 	mov	dpl,r5
      000129 8E 83            [24]  943 	mov	dph,r6
      00012B 8F F0            [24]  944 	mov	b,r7
      00012D 12 5D 5A         [24]  945 	lcall	__gptrget
      000130 FD               [12]  946 	mov	r5,a
      000131 90 02 6D         [24]  947 	mov	dptr,#_pinMode_PARM_2
      000134 E4               [12]  948 	clr	a
      000135 F0               [24]  949 	movx	@dptr,a
      000136 8D 82            [24]  950 	mov	dpl,r5
                                    951 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:14: }
      000138 02 4A FA         [24]  952 	ljmp	_pinMode
                                    953 ;------------------------------------------------------------
                                    954 ;Allocation info for local variables in function 'ds18b20_pinHigh'
                                    955 ;------------------------------------------------------------
                                    956 ;dev                       Allocated with name '_ds18b20_pinHigh_dev_65536_179'
                                    957 ;------------------------------------------------------------
                                    958 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:16: static void ds18b20_pinHigh(DS18B20* dev) {
                                    959 ;	-----------------------------------------
                                    960 ;	 function ds18b20_pinHigh
                                    961 ;	-----------------------------------------
      00013B                        962 _ds18b20_pinHigh:
      00013B AF F0            [24]  963 	mov	r7,b
      00013D AE 83            [24]  964 	mov	r6,dph
      00013F E5 82            [12]  965 	mov	a,dpl
      000141 90 00 9A         [24]  966 	mov	dptr,#_ds18b20_pinHigh_dev_65536_179
      000144 F0               [24]  967 	movx	@dptr,a
      000145 EE               [12]  968 	mov	a,r6
      000146 A3               [24]  969 	inc	dptr
      000147 F0               [24]  970 	movx	@dptr,a
      000148 EF               [12]  971 	mov	a,r7
      000149 A3               [24]  972 	inc	dptr
      00014A F0               [24]  973 	movx	@dptr,a
                                    974 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:17: digitalWrite(dev->pin, HIGH);
      00014B 90 00 9A         [24]  975 	mov	dptr,#_ds18b20_pinHigh_dev_65536_179
      00014E E0               [24]  976 	movx	a,@dptr
      00014F FD               [12]  977 	mov	r5,a
      000150 A3               [24]  978 	inc	dptr
      000151 E0               [24]  979 	movx	a,@dptr
      000152 FE               [12]  980 	mov	r6,a
      000153 A3               [24]  981 	inc	dptr
      000154 E0               [24]  982 	movx	a,@dptr
      000155 FF               [12]  983 	mov	r7,a
      000156 8D 82            [24]  984 	mov	dpl,r5
      000158 8E 83            [24]  985 	mov	dph,r6
      00015A 8F F0            [24]  986 	mov	b,r7
      00015C 12 5D 5A         [24]  987 	lcall	__gptrget
      00015F FD               [12]  988 	mov	r5,a
      000160 90 02 6E         [24]  989 	mov	dptr,#_digitalWrite_PARM_2
      000163 74 01            [12]  990 	mov	a,#0x01
      000165 F0               [24]  991 	movx	@dptr,a
      000166 8D 82            [24]  992 	mov	dpl,r5
                                    993 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:18: }
      000168 02 4C 9C         [24]  994 	ljmp	_digitalWrite
                                    995 ;------------------------------------------------------------
                                    996 ;Allocation info for local variables in function 'ds18b20_pinLow'
                                    997 ;------------------------------------------------------------
                                    998 ;dev                       Allocated with name '_ds18b20_pinLow_dev_65536_181'
                                    999 ;------------------------------------------------------------
                                   1000 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:20: static void ds18b20_pinLow(DS18B20* dev) {
                                   1001 ;	-----------------------------------------
                                   1002 ;	 function ds18b20_pinLow
                                   1003 ;	-----------------------------------------
      00016B                       1004 _ds18b20_pinLow:
      00016B AF F0            [24] 1005 	mov	r7,b
      00016D AE 83            [24] 1006 	mov	r6,dph
      00016F E5 82            [12] 1007 	mov	a,dpl
      000171 90 00 9D         [24] 1008 	mov	dptr,#_ds18b20_pinLow_dev_65536_181
      000174 F0               [24] 1009 	movx	@dptr,a
      000175 EE               [12] 1010 	mov	a,r6
      000176 A3               [24] 1011 	inc	dptr
      000177 F0               [24] 1012 	movx	@dptr,a
      000178 EF               [12] 1013 	mov	a,r7
      000179 A3               [24] 1014 	inc	dptr
      00017A F0               [24] 1015 	movx	@dptr,a
                                   1016 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:21: digitalWrite(dev->pin, LOW);
      00017B 90 00 9D         [24] 1017 	mov	dptr,#_ds18b20_pinLow_dev_65536_181
      00017E E0               [24] 1018 	movx	a,@dptr
      00017F FD               [12] 1019 	mov	r5,a
      000180 A3               [24] 1020 	inc	dptr
      000181 E0               [24] 1021 	movx	a,@dptr
      000182 FE               [12] 1022 	mov	r6,a
      000183 A3               [24] 1023 	inc	dptr
      000184 E0               [24] 1024 	movx	a,@dptr
      000185 FF               [12] 1025 	mov	r7,a
      000186 8D 82            [24] 1026 	mov	dpl,r5
      000188 8E 83            [24] 1027 	mov	dph,r6
      00018A 8F F0            [24] 1028 	mov	b,r7
      00018C 12 5D 5A         [24] 1029 	lcall	__gptrget
      00018F FD               [12] 1030 	mov	r5,a
      000190 90 02 6E         [24] 1031 	mov	dptr,#_digitalWrite_PARM_2
      000193 E4               [12] 1032 	clr	a
      000194 F0               [24] 1033 	movx	@dptr,a
      000195 8D 82            [24] 1034 	mov	dpl,r5
                                   1035 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:22: }
      000197 02 4C 9C         [24] 1036 	ljmp	_digitalWrite
                                   1037 ;------------------------------------------------------------
                                   1038 ;Allocation info for local variables in function 'ds18b20_pinRead'
                                   1039 ;------------------------------------------------------------
                                   1040 ;dev                       Allocated with name '_ds18b20_pinRead_dev_65536_183'
                                   1041 ;------------------------------------------------------------
                                   1042 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:24: static uint8_t ds18b20_pinRead(DS18B20* dev) {
                                   1043 ;	-----------------------------------------
                                   1044 ;	 function ds18b20_pinRead
                                   1045 ;	-----------------------------------------
      00019A                       1046 _ds18b20_pinRead:
      00019A AF F0            [24] 1047 	mov	r7,b
      00019C AE 83            [24] 1048 	mov	r6,dph
      00019E E5 82            [12] 1049 	mov	a,dpl
      0001A0 90 00 A0         [24] 1050 	mov	dptr,#_ds18b20_pinRead_dev_65536_183
      0001A3 F0               [24] 1051 	movx	@dptr,a
      0001A4 EE               [12] 1052 	mov	a,r6
      0001A5 A3               [24] 1053 	inc	dptr
      0001A6 F0               [24] 1054 	movx	@dptr,a
      0001A7 EF               [12] 1055 	mov	a,r7
      0001A8 A3               [24] 1056 	inc	dptr
      0001A9 F0               [24] 1057 	movx	@dptr,a
                                   1058 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:25: return digitalRead(dev->pin);
      0001AA 90 00 A0         [24] 1059 	mov	dptr,#_ds18b20_pinRead_dev_65536_183
      0001AD E0               [24] 1060 	movx	a,@dptr
      0001AE FD               [12] 1061 	mov	r5,a
      0001AF A3               [24] 1062 	inc	dptr
      0001B0 E0               [24] 1063 	movx	a,@dptr
      0001B1 FE               [12] 1064 	mov	r6,a
      0001B2 A3               [24] 1065 	inc	dptr
      0001B3 E0               [24] 1066 	movx	a,@dptr
      0001B4 FF               [12] 1067 	mov	r7,a
      0001B5 8D 82            [24] 1068 	mov	dpl,r5
      0001B7 8E 83            [24] 1069 	mov	dph,r6
      0001B9 8F F0            [24] 1070 	mov	b,r7
      0001BB 12 5D 5A         [24] 1071 	lcall	__gptrget
      0001BE F5 82            [12] 1072 	mov	dpl,a
                                   1073 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:26: }
      0001C0 02 4C 36         [24] 1074 	ljmp	_digitalRead
                                   1075 ;------------------------------------------------------------
                                   1076 ;Allocation info for local variables in function 'ds18b20_delayUs'
                                   1077 ;------------------------------------------------------------
                                   1078 ;us                        Allocated with name '_ds18b20_delayUs_us_65536_185'
                                   1079 ;------------------------------------------------------------
                                   1080 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:28: static void ds18b20_delayUs(uint16_t us) {
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function ds18b20_delayUs
                                   1083 ;	-----------------------------------------
      0001C3                       1084 _ds18b20_delayUs:
      0001C3 AF 83            [24] 1085 	mov	r7,dph
      0001C5 E5 82            [12] 1086 	mov	a,dpl
      0001C7 90 00 A3         [24] 1087 	mov	dptr,#_ds18b20_delayUs_us_65536_185
      0001CA F0               [24] 1088 	movx	@dptr,a
      0001CB EF               [12] 1089 	mov	a,r7
      0001CC A3               [24] 1090 	inc	dptr
      0001CD F0               [24] 1091 	movx	@dptr,a
                                   1092 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:29: delayMicroseconds(us);
      0001CE 90 00 A3         [24] 1093 	mov	dptr,#_ds18b20_delayUs_us_65536_185
      0001D1 E0               [24] 1094 	movx	a,@dptr
      0001D2 FE               [12] 1095 	mov	r6,a
      0001D3 A3               [24] 1096 	inc	dptr
      0001D4 E0               [24] 1097 	movx	a,@dptr
      0001D5 FF               [12] 1098 	mov	r7,a
      0001D6 8E 82            [24] 1099 	mov	dpl,r6
      0001D8 8F 83            [24] 1100 	mov	dph,r7
                                   1101 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:30: }
      0001DA 02 50 70         [24] 1102 	ljmp	_delayMicroseconds
                                   1103 ;------------------------------------------------------------
                                   1104 ;Allocation info for local variables in function 'ds18b20_reset'
                                   1105 ;------------------------------------------------------------
                                   1106 ;dev                       Allocated with name '_ds18b20_reset_dev_65536_187'
                                   1107 ;response                  Allocated with name '_ds18b20_reset_response_65536_188'
                                   1108 ;------------------------------------------------------------
                                   1109 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:32: static uint8_t ds18b20_reset(DS18B20* dev) {
                                   1110 ;	-----------------------------------------
                                   1111 ;	 function ds18b20_reset
                                   1112 ;	-----------------------------------------
      0001DD                       1113 _ds18b20_reset:
      0001DD AF F0            [24] 1114 	mov	r7,b
      0001DF AE 83            [24] 1115 	mov	r6,dph
      0001E1 E5 82            [12] 1116 	mov	a,dpl
      0001E3 90 00 A5         [24] 1117 	mov	dptr,#_ds18b20_reset_dev_65536_187
      0001E6 F0               [24] 1118 	movx	@dptr,a
      0001E7 EE               [12] 1119 	mov	a,r6
      0001E8 A3               [24] 1120 	inc	dptr
      0001E9 F0               [24] 1121 	movx	@dptr,a
      0001EA EF               [12] 1122 	mov	a,r7
      0001EB A3               [24] 1123 	inc	dptr
      0001EC F0               [24] 1124 	movx	@dptr,a
                                   1125 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:35: ds18b20_pinOutput(dev);
      0001ED 90 00 A5         [24] 1126 	mov	dptr,#_ds18b20_reset_dev_65536_187
      0001F0 E0               [24] 1127 	movx	a,@dptr
      0001F1 FD               [12] 1128 	mov	r5,a
      0001F2 A3               [24] 1129 	inc	dptr
      0001F3 E0               [24] 1130 	movx	a,@dptr
      0001F4 FE               [12] 1131 	mov	r6,a
      0001F5 A3               [24] 1132 	inc	dptr
      0001F6 E0               [24] 1133 	movx	a,@dptr
      0001F7 FF               [12] 1134 	mov	r7,a
      0001F8 8D 82            [24] 1135 	mov	dpl,r5
      0001FA 8E 83            [24] 1136 	mov	dph,r6
      0001FC 8F F0            [24] 1137 	mov	b,r7
      0001FE 12 00 DC         [24] 1138 	lcall	_ds18b20_pinOutput
                                   1139 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:36: ds18b20_pinLow(dev);
      000201 90 00 A5         [24] 1140 	mov	dptr,#_ds18b20_reset_dev_65536_187
      000204 E0               [24] 1141 	movx	a,@dptr
      000205 FD               [12] 1142 	mov	r5,a
      000206 A3               [24] 1143 	inc	dptr
      000207 E0               [24] 1144 	movx	a,@dptr
      000208 FE               [12] 1145 	mov	r6,a
      000209 A3               [24] 1146 	inc	dptr
      00020A E0               [24] 1147 	movx	a,@dptr
      00020B FF               [12] 1148 	mov	r7,a
      00020C 8D 82            [24] 1149 	mov	dpl,r5
      00020E 8E 83            [24] 1150 	mov	dph,r6
      000210 8F F0            [24] 1151 	mov	b,r7
      000212 12 01 6B         [24] 1152 	lcall	_ds18b20_pinLow
                                   1153 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:37: ds18b20_delayUs(480);
      000215 90 01 E0         [24] 1154 	mov	dptr,#0x01e0
      000218 12 01 C3         [24] 1155 	lcall	_ds18b20_delayUs
                                   1156 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:39: ds18b20_pinHigh(dev);
      00021B 90 00 A5         [24] 1157 	mov	dptr,#_ds18b20_reset_dev_65536_187
      00021E E0               [24] 1158 	movx	a,@dptr
      00021F FD               [12] 1159 	mov	r5,a
      000220 A3               [24] 1160 	inc	dptr
      000221 E0               [24] 1161 	movx	a,@dptr
      000222 FE               [12] 1162 	mov	r6,a
      000223 A3               [24] 1163 	inc	dptr
      000224 E0               [24] 1164 	movx	a,@dptr
      000225 FF               [12] 1165 	mov	r7,a
      000226 8D 82            [24] 1166 	mov	dpl,r5
      000228 8E 83            [24] 1167 	mov	dph,r6
      00022A 8F F0            [24] 1168 	mov	b,r7
      00022C 12 01 3B         [24] 1169 	lcall	_ds18b20_pinHigh
                                   1170 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:40: ds18b20_pinInput(dev);
      00022F 90 00 A5         [24] 1171 	mov	dptr,#_ds18b20_reset_dev_65536_187
      000232 E0               [24] 1172 	movx	a,@dptr
      000233 FD               [12] 1173 	mov	r5,a
      000234 A3               [24] 1174 	inc	dptr
      000235 E0               [24] 1175 	movx	a,@dptr
      000236 FE               [12] 1176 	mov	r6,a
      000237 A3               [24] 1177 	inc	dptr
      000238 E0               [24] 1178 	movx	a,@dptr
      000239 FF               [12] 1179 	mov	r7,a
      00023A 8D 82            [24] 1180 	mov	dpl,r5
      00023C 8E 83            [24] 1181 	mov	dph,r6
      00023E 8F F0            [24] 1182 	mov	b,r7
      000240 12 01 0C         [24] 1183 	lcall	_ds18b20_pinInput
                                   1184 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:41: ds18b20_delayUs(70);
      000243 90 00 46         [24] 1185 	mov	dptr,#0x0046
      000246 12 01 C3         [24] 1186 	lcall	_ds18b20_delayUs
                                   1187 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:43: response = ds18b20_pinRead(dev);
      000249 90 00 A5         [24] 1188 	mov	dptr,#_ds18b20_reset_dev_65536_187
      00024C E0               [24] 1189 	movx	a,@dptr
      00024D FD               [12] 1190 	mov	r5,a
      00024E A3               [24] 1191 	inc	dptr
      00024F E0               [24] 1192 	movx	a,@dptr
      000250 FE               [12] 1193 	mov	r6,a
      000251 A3               [24] 1194 	inc	dptr
      000252 E0               [24] 1195 	movx	a,@dptr
      000253 FF               [12] 1196 	mov	r7,a
      000254 8D 82            [24] 1197 	mov	dpl,r5
      000256 8E 83            [24] 1198 	mov	dph,r6
      000258 8F F0            [24] 1199 	mov	b,r7
      00025A 12 01 9A         [24] 1200 	lcall	_ds18b20_pinRead
      00025D AF 82            [24] 1201 	mov	r7,dpl
                                   1202 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:44: ds18b20_delayUs(410);
      00025F 90 01 9A         [24] 1203 	mov	dptr,#0x019a
      000262 C0 07            [24] 1204 	push	ar7
      000264 12 01 C3         [24] 1205 	lcall	_ds18b20_delayUs
      000267 D0 07            [24] 1206 	pop	ar7
                                   1207 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:46: return response;
      000269 8F 82            [24] 1208 	mov	dpl,r7
                                   1209 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:47: }
      00026B 22               [24] 1210 	ret
                                   1211 ;------------------------------------------------------------
                                   1212 ;Allocation info for local variables in function 'ds18b20_writeByte'
                                   1213 ;------------------------------------------------------------
                                   1214 ;byte                      Allocated with name '_ds18b20_writeByte_PARM_2'
                                   1215 ;dev                       Allocated with name '_ds18b20_writeByte_dev_65536_189'
                                   1216 ;i                         Allocated with name '_ds18b20_writeByte_i_65536_190'
                                   1217 ;------------------------------------------------------------
                                   1218 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:49: static void ds18b20_writeByte(DS18B20* dev, uint8_t byte) {
                                   1219 ;	-----------------------------------------
                                   1220 ;	 function ds18b20_writeByte
                                   1221 ;	-----------------------------------------
      00026C                       1222 _ds18b20_writeByte:
      00026C AF F0            [24] 1223 	mov	r7,b
      00026E AE 83            [24] 1224 	mov	r6,dph
      000270 E5 82            [12] 1225 	mov	a,dpl
      000272 90 00 A9         [24] 1226 	mov	dptr,#_ds18b20_writeByte_dev_65536_189
      000275 F0               [24] 1227 	movx	@dptr,a
      000276 EE               [12] 1228 	mov	a,r6
      000277 A3               [24] 1229 	inc	dptr
      000278 F0               [24] 1230 	movx	@dptr,a
      000279 EF               [12] 1231 	mov	a,r7
      00027A A3               [24] 1232 	inc	dptr
      00027B F0               [24] 1233 	movx	@dptr,a
                                   1234 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:52: for (i = 0; i < 8; i++) {
      00027C 7F 00            [12] 1235 	mov	r7,#0x00
      00027E                       1236 00105$:
                                   1237 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:53: ds18b20_pinOutput(dev);
      00027E 90 00 A9         [24] 1238 	mov	dptr,#_ds18b20_writeByte_dev_65536_189
      000281 E0               [24] 1239 	movx	a,@dptr
      000282 FC               [12] 1240 	mov	r4,a
      000283 A3               [24] 1241 	inc	dptr
      000284 E0               [24] 1242 	movx	a,@dptr
      000285 FD               [12] 1243 	mov	r5,a
      000286 A3               [24] 1244 	inc	dptr
      000287 E0               [24] 1245 	movx	a,@dptr
      000288 FE               [12] 1246 	mov	r6,a
      000289 8C 82            [24] 1247 	mov	dpl,r4
      00028B 8D 83            [24] 1248 	mov	dph,r5
      00028D 8E F0            [24] 1249 	mov	b,r6
      00028F C0 07            [24] 1250 	push	ar7
      000291 12 00 DC         [24] 1251 	lcall	_ds18b20_pinOutput
                                   1252 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:54: ds18b20_pinLow(dev);
      000294 90 00 A9         [24] 1253 	mov	dptr,#_ds18b20_writeByte_dev_65536_189
      000297 E0               [24] 1254 	movx	a,@dptr
      000298 FC               [12] 1255 	mov	r4,a
      000299 A3               [24] 1256 	inc	dptr
      00029A E0               [24] 1257 	movx	a,@dptr
      00029B FD               [12] 1258 	mov	r5,a
      00029C A3               [24] 1259 	inc	dptr
      00029D E0               [24] 1260 	movx	a,@dptr
      00029E FE               [12] 1261 	mov	r6,a
      00029F 8C 82            [24] 1262 	mov	dpl,r4
      0002A1 8D 83            [24] 1263 	mov	dph,r5
      0002A3 8E F0            [24] 1264 	mov	b,r6
      0002A5 12 01 6B         [24] 1265 	lcall	_ds18b20_pinLow
                                   1266 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:55: ds18b20_delayUs(2);
      0002A8 90 00 02         [24] 1267 	mov	dptr,#0x0002
      0002AB 12 01 C3         [24] 1268 	lcall	_ds18b20_delayUs
      0002AE D0 07            [24] 1269 	pop	ar7
                                   1270 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:57: if (byte & 0x01) {
      0002B0 90 00 A8         [24] 1271 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0002B3 E0               [24] 1272 	movx	a,@dptr
      0002B4 30 E0 1A         [24] 1273 	jnb	acc.0,00102$
                                   1274 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:58: ds18b20_pinHigh(dev);
      0002B7 90 00 A9         [24] 1275 	mov	dptr,#_ds18b20_writeByte_dev_65536_189
      0002BA E0               [24] 1276 	movx	a,@dptr
      0002BB FC               [12] 1277 	mov	r4,a
      0002BC A3               [24] 1278 	inc	dptr
      0002BD E0               [24] 1279 	movx	a,@dptr
      0002BE FD               [12] 1280 	mov	r5,a
      0002BF A3               [24] 1281 	inc	dptr
      0002C0 E0               [24] 1282 	movx	a,@dptr
      0002C1 FE               [12] 1283 	mov	r6,a
      0002C2 8C 82            [24] 1284 	mov	dpl,r4
      0002C4 8D 83            [24] 1285 	mov	dph,r5
      0002C6 8E F0            [24] 1286 	mov	b,r6
      0002C8 C0 07            [24] 1287 	push	ar7
      0002CA 12 01 3B         [24] 1288 	lcall	_ds18b20_pinHigh
      0002CD D0 07            [24] 1289 	pop	ar7
      0002CF 80 18            [24] 1290 	sjmp	00103$
      0002D1                       1291 00102$:
                                   1292 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:60: ds18b20_pinLow(dev);
      0002D1 90 00 A9         [24] 1293 	mov	dptr,#_ds18b20_writeByte_dev_65536_189
      0002D4 E0               [24] 1294 	movx	a,@dptr
      0002D5 FC               [12] 1295 	mov	r4,a
      0002D6 A3               [24] 1296 	inc	dptr
      0002D7 E0               [24] 1297 	movx	a,@dptr
      0002D8 FD               [12] 1298 	mov	r5,a
      0002D9 A3               [24] 1299 	inc	dptr
      0002DA E0               [24] 1300 	movx	a,@dptr
      0002DB FE               [12] 1301 	mov	r6,a
      0002DC 8C 82            [24] 1302 	mov	dpl,r4
      0002DE 8D 83            [24] 1303 	mov	dph,r5
      0002E0 8E F0            [24] 1304 	mov	b,r6
      0002E2 C0 07            [24] 1305 	push	ar7
      0002E4 12 01 6B         [24] 1306 	lcall	_ds18b20_pinLow
      0002E7 D0 07            [24] 1307 	pop	ar7
      0002E9                       1308 00103$:
                                   1309 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:63: ds18b20_delayUs(60);
      0002E9 90 00 3C         [24] 1310 	mov	dptr,#0x003c
      0002EC C0 07            [24] 1311 	push	ar7
      0002EE 12 01 C3         [24] 1312 	lcall	_ds18b20_delayUs
                                   1313 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:64: ds18b20_pinHigh(dev);
      0002F1 90 00 A9         [24] 1314 	mov	dptr,#_ds18b20_writeByte_dev_65536_189
      0002F4 E0               [24] 1315 	movx	a,@dptr
      0002F5 FC               [12] 1316 	mov	r4,a
      0002F6 A3               [24] 1317 	inc	dptr
      0002F7 E0               [24] 1318 	movx	a,@dptr
      0002F8 FD               [12] 1319 	mov	r5,a
      0002F9 A3               [24] 1320 	inc	dptr
      0002FA E0               [24] 1321 	movx	a,@dptr
      0002FB FE               [12] 1322 	mov	r6,a
      0002FC 8C 82            [24] 1323 	mov	dpl,r4
      0002FE 8D 83            [24] 1324 	mov	dph,r5
      000300 8E F0            [24] 1325 	mov	b,r6
      000302 12 01 3B         [24] 1326 	lcall	_ds18b20_pinHigh
                                   1327 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:65: ds18b20_delayUs(2);
      000305 90 00 02         [24] 1328 	mov	dptr,#0x0002
      000308 12 01 C3         [24] 1329 	lcall	_ds18b20_delayUs
      00030B D0 07            [24] 1330 	pop	ar7
                                   1331 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:67: byte >>= 1;
      00030D 90 00 A8         [24] 1332 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000310 E0               [24] 1333 	movx	a,@dptr
      000311 C3               [12] 1334 	clr	c
      000312 13               [12] 1335 	rrc	a
      000313 FE               [12] 1336 	mov	r6,a
      000314 F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:52: for (i = 0; i < 8; i++) {
      000315 0F               [12] 1339 	inc	r7
      000316 BF 08 00         [24] 1340 	cjne	r7,#0x08,00119$
      000319                       1341 00119$:
      000319 50 03            [24] 1342 	jnc	00120$
      00031B 02 02 7E         [24] 1343 	ljmp	00105$
      00031E                       1344 00120$:
                                   1345 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:69: }
      00031E 22               [24] 1346 	ret
                                   1347 ;------------------------------------------------------------
                                   1348 ;Allocation info for local variables in function 'ds18b20_readByte'
                                   1349 ;------------------------------------------------------------
                                   1350 ;dev                       Allocated with name '_ds18b20_readByte_dev_65536_195'
                                   1351 ;i                         Allocated with name '_ds18b20_readByte_i_65536_196'
                                   1352 ;byte                      Allocated with name '_ds18b20_readByte_byte_65536_196'
                                   1353 ;------------------------------------------------------------
                                   1354 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:71: static uint8_t ds18b20_readByte(DS18B20* dev) {
                                   1355 ;	-----------------------------------------
                                   1356 ;	 function ds18b20_readByte
                                   1357 ;	-----------------------------------------
      00031F                       1358 _ds18b20_readByte:
      00031F AF F0            [24] 1359 	mov	r7,b
      000321 AE 83            [24] 1360 	mov	r6,dph
      000323 E5 82            [12] 1361 	mov	a,dpl
      000325 90 00 AC         [24] 1362 	mov	dptr,#_ds18b20_readByte_dev_65536_195
      000328 F0               [24] 1363 	movx	@dptr,a
      000329 EE               [12] 1364 	mov	a,r6
      00032A A3               [24] 1365 	inc	dptr
      00032B F0               [24] 1366 	movx	@dptr,a
      00032C EF               [12] 1367 	mov	a,r7
      00032D A3               [24] 1368 	inc	dptr
      00032E F0               [24] 1369 	movx	@dptr,a
                                   1370 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:72: uint8_t i, byte = 0;
      00032F 90 00 AF         [24] 1371 	mov	dptr,#_ds18b20_readByte_byte_65536_196
      000332 E4               [12] 1372 	clr	a
      000333 F0               [24] 1373 	movx	@dptr,a
                                   1374 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:74: for (i = 0; i < 8; i++) {
      000334 7F 00            [12] 1375 	mov	r7,#0x00
      000336                       1376 00104$:
                                   1377 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:75: ds18b20_pinOutput(dev);
      000336 90 00 AC         [24] 1378 	mov	dptr,#_ds18b20_readByte_dev_65536_195
      000339 E0               [24] 1379 	movx	a,@dptr
      00033A FC               [12] 1380 	mov	r4,a
      00033B A3               [24] 1381 	inc	dptr
      00033C E0               [24] 1382 	movx	a,@dptr
      00033D FD               [12] 1383 	mov	r5,a
      00033E A3               [24] 1384 	inc	dptr
      00033F E0               [24] 1385 	movx	a,@dptr
      000340 FE               [12] 1386 	mov	r6,a
      000341 8C 82            [24] 1387 	mov	dpl,r4
      000343 8D 83            [24] 1388 	mov	dph,r5
      000345 8E F0            [24] 1389 	mov	b,r6
      000347 C0 07            [24] 1390 	push	ar7
      000349 12 00 DC         [24] 1391 	lcall	_ds18b20_pinOutput
                                   1392 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:76: ds18b20_pinLow(dev);
      00034C 90 00 AC         [24] 1393 	mov	dptr,#_ds18b20_readByte_dev_65536_195
      00034F E0               [24] 1394 	movx	a,@dptr
      000350 FC               [12] 1395 	mov	r4,a
      000351 A3               [24] 1396 	inc	dptr
      000352 E0               [24] 1397 	movx	a,@dptr
      000353 FD               [12] 1398 	mov	r5,a
      000354 A3               [24] 1399 	inc	dptr
      000355 E0               [24] 1400 	movx	a,@dptr
      000356 FE               [12] 1401 	mov	r6,a
      000357 8C 82            [24] 1402 	mov	dpl,r4
      000359 8D 83            [24] 1403 	mov	dph,r5
      00035B 8E F0            [24] 1404 	mov	b,r6
      00035D 12 01 6B         [24] 1405 	lcall	_ds18b20_pinLow
                                   1406 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:77: ds18b20_delayUs(2);
      000360 90 00 02         [24] 1407 	mov	dptr,#0x0002
      000363 12 01 C3         [24] 1408 	lcall	_ds18b20_delayUs
                                   1409 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:79: ds18b20_pinHigh(dev);
      000366 90 00 AC         [24] 1410 	mov	dptr,#_ds18b20_readByte_dev_65536_195
      000369 E0               [24] 1411 	movx	a,@dptr
      00036A FC               [12] 1412 	mov	r4,a
      00036B A3               [24] 1413 	inc	dptr
      00036C E0               [24] 1414 	movx	a,@dptr
      00036D FD               [12] 1415 	mov	r5,a
      00036E A3               [24] 1416 	inc	dptr
      00036F E0               [24] 1417 	movx	a,@dptr
      000370 FE               [12] 1418 	mov	r6,a
      000371 8C 82            [24] 1419 	mov	dpl,r4
      000373 8D 83            [24] 1420 	mov	dph,r5
      000375 8E F0            [24] 1421 	mov	b,r6
      000377 12 01 3B         [24] 1422 	lcall	_ds18b20_pinHigh
                                   1423 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:80: ds18b20_pinInput(dev);
      00037A 90 00 AC         [24] 1424 	mov	dptr,#_ds18b20_readByte_dev_65536_195
      00037D E0               [24] 1425 	movx	a,@dptr
      00037E FC               [12] 1426 	mov	r4,a
      00037F A3               [24] 1427 	inc	dptr
      000380 E0               [24] 1428 	movx	a,@dptr
      000381 FD               [12] 1429 	mov	r5,a
      000382 A3               [24] 1430 	inc	dptr
      000383 E0               [24] 1431 	movx	a,@dptr
      000384 FE               [12] 1432 	mov	r6,a
      000385 8C 82            [24] 1433 	mov	dpl,r4
      000387 8D 83            [24] 1434 	mov	dph,r5
      000389 8E F0            [24] 1435 	mov	b,r6
      00038B 12 01 0C         [24] 1436 	lcall	_ds18b20_pinInput
                                   1437 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:81: ds18b20_delayUs(12);
      00038E 90 00 0C         [24] 1438 	mov	dptr,#0x000c
      000391 12 01 C3         [24] 1439 	lcall	_ds18b20_delayUs
                                   1440 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:83: if (ds18b20_pinRead(dev)) {
      000394 90 00 AC         [24] 1441 	mov	dptr,#_ds18b20_readByte_dev_65536_195
      000397 E0               [24] 1442 	movx	a,@dptr
      000398 FC               [12] 1443 	mov	r4,a
      000399 A3               [24] 1444 	inc	dptr
      00039A E0               [24] 1445 	movx	a,@dptr
      00039B FD               [12] 1446 	mov	r5,a
      00039C A3               [24] 1447 	inc	dptr
      00039D E0               [24] 1448 	movx	a,@dptr
      00039E FE               [12] 1449 	mov	r6,a
      00039F 8C 82            [24] 1450 	mov	dpl,r4
      0003A1 8D 83            [24] 1451 	mov	dph,r5
      0003A3 8E F0            [24] 1452 	mov	b,r6
      0003A5 12 01 9A         [24] 1453 	lcall	_ds18b20_pinRead
      0003A8 E5 82            [12] 1454 	mov	a,dpl
      0003AA D0 07            [24] 1455 	pop	ar7
      0003AC 60 16            [24] 1456 	jz	00102$
                                   1457 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:84: byte |= (1 << i);
      0003AE 8F 06            [24] 1458 	mov	ar6,r7
      0003B0 8E F0            [24] 1459 	mov	b,r6
      0003B2 05 F0            [12] 1460 	inc	b
      0003B4 74 01            [12] 1461 	mov	a,#0x01
      0003B6 80 02            [24] 1462 	sjmp	00124$
      0003B8                       1463 00122$:
      0003B8 25 E0            [12] 1464 	add	a,acc
      0003BA                       1465 00124$:
      0003BA D5 F0 FB         [24] 1466 	djnz	b,00122$
      0003BD FE               [12] 1467 	mov	r6,a
      0003BE 90 00 AF         [24] 1468 	mov	dptr,#_ds18b20_readByte_byte_65536_196
      0003C1 E0               [24] 1469 	movx	a,@dptr
      0003C2 4E               [12] 1470 	orl	a,r6
      0003C3 F0               [24] 1471 	movx	@dptr,a
      0003C4                       1472 00102$:
                                   1473 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:87: ds18b20_delayUs(50);
      0003C4 90 00 32         [24] 1474 	mov	dptr,#0x0032
      0003C7 C0 07            [24] 1475 	push	ar7
      0003C9 12 01 C3         [24] 1476 	lcall	_ds18b20_delayUs
      0003CC D0 07            [24] 1477 	pop	ar7
                                   1478 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:74: for (i = 0; i < 8; i++) {
      0003CE 0F               [12] 1479 	inc	r7
      0003CF BF 08 00         [24] 1480 	cjne	r7,#0x08,00125$
      0003D2                       1481 00125$:
      0003D2 50 03            [24] 1482 	jnc	00126$
      0003D4 02 03 36         [24] 1483 	ljmp	00104$
      0003D7                       1484 00126$:
                                   1485 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:90: return byte;
      0003D7 90 00 AF         [24] 1486 	mov	dptr,#_ds18b20_readByte_byte_65536_196
      0003DA E0               [24] 1487 	movx	a,@dptr
                                   1488 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:91: }
      0003DB F5 82            [12] 1489 	mov	dpl,a
      0003DD 22               [24] 1490 	ret
                                   1491 ;------------------------------------------------------------
                                   1492 ;Allocation info for local variables in function 'ds18b20_readScratchpad'
                                   1493 ;------------------------------------------------------------
                                   1494 ;data                      Allocated with name '_ds18b20_readScratchpad_PARM_2'
                                   1495 ;dev                       Allocated with name '_ds18b20_readScratchpad_dev_65536_200'
                                   1496 ;i                         Allocated with name '_ds18b20_readScratchpad_i_65536_201'
                                   1497 ;------------------------------------------------------------
                                   1498 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:93: static uint8_t ds18b20_readScratchpad(DS18B20* dev, uint8_t *data) {
                                   1499 ;	-----------------------------------------
                                   1500 ;	 function ds18b20_readScratchpad
                                   1501 ;	-----------------------------------------
      0003DE                       1502 _ds18b20_readScratchpad:
      0003DE AF F0            [24] 1503 	mov	r7,b
      0003E0 AE 83            [24] 1504 	mov	r6,dph
      0003E2 E5 82            [12] 1505 	mov	a,dpl
      0003E4 90 00 B3         [24] 1506 	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
      0003E7 F0               [24] 1507 	movx	@dptr,a
      0003E8 EE               [12] 1508 	mov	a,r6
      0003E9 A3               [24] 1509 	inc	dptr
      0003EA F0               [24] 1510 	movx	@dptr,a
      0003EB EF               [12] 1511 	mov	a,r7
      0003EC A3               [24] 1512 	inc	dptr
      0003ED F0               [24] 1513 	movx	@dptr,a
                                   1514 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:96: if (ds18b20_reset(dev)) {
      0003EE 90 00 B3         [24] 1515 	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
      0003F1 E0               [24] 1516 	movx	a,@dptr
      0003F2 FD               [12] 1517 	mov	r5,a
      0003F3 A3               [24] 1518 	inc	dptr
      0003F4 E0               [24] 1519 	movx	a,@dptr
      0003F5 FE               [12] 1520 	mov	r6,a
      0003F6 A3               [24] 1521 	inc	dptr
      0003F7 E0               [24] 1522 	movx	a,@dptr
      0003F8 FF               [12] 1523 	mov	r7,a
      0003F9 8D 82            [24] 1524 	mov	dpl,r5
      0003FB 8E 83            [24] 1525 	mov	dph,r6
      0003FD 8F F0            [24] 1526 	mov	b,r7
      0003FF 12 01 DD         [24] 1527 	lcall	_ds18b20_reset
      000402 E5 82            [12] 1528 	mov	a,dpl
      000404 60 04            [24] 1529 	jz	00102$
                                   1530 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:97: return 1;
      000406 75 82 01         [24] 1531 	mov	dpl,#0x01
      000409 22               [24] 1532 	ret
      00040A                       1533 00102$:
                                   1534 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:100: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      00040A 90 00 B3         [24] 1535 	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
      00040D E0               [24] 1536 	movx	a,@dptr
      00040E FD               [12] 1537 	mov	r5,a
      00040F A3               [24] 1538 	inc	dptr
      000410 E0               [24] 1539 	movx	a,@dptr
      000411 FE               [12] 1540 	mov	r6,a
      000412 A3               [24] 1541 	inc	dptr
      000413 E0               [24] 1542 	movx	a,@dptr
      000414 FF               [12] 1543 	mov	r7,a
      000415 90 00 A8         [24] 1544 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000418 74 CC            [12] 1545 	mov	a,#0xcc
      00041A F0               [24] 1546 	movx	@dptr,a
      00041B 8D 82            [24] 1547 	mov	dpl,r5
      00041D 8E 83            [24] 1548 	mov	dph,r6
      00041F 8F F0            [24] 1549 	mov	b,r7
      000421 12 02 6C         [24] 1550 	lcall	_ds18b20_writeByte
                                   1551 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:101: ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);
      000424 90 00 B3         [24] 1552 	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
      000427 E0               [24] 1553 	movx	a,@dptr
      000428 FD               [12] 1554 	mov	r5,a
      000429 A3               [24] 1555 	inc	dptr
      00042A E0               [24] 1556 	movx	a,@dptr
      00042B FE               [12] 1557 	mov	r6,a
      00042C A3               [24] 1558 	inc	dptr
      00042D E0               [24] 1559 	movx	a,@dptr
      00042E FF               [12] 1560 	mov	r7,a
      00042F 90 00 A8         [24] 1561 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000432 74 BE            [12] 1562 	mov	a,#0xbe
      000434 F0               [24] 1563 	movx	@dptr,a
      000435 8D 82            [24] 1564 	mov	dpl,r5
      000437 8E 83            [24] 1565 	mov	dph,r6
      000439 8F F0            [24] 1566 	mov	b,r7
      00043B 12 02 6C         [24] 1567 	lcall	_ds18b20_writeByte
                                   1568 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:103: for (i = 0; i < 9; i++) {
      00043E 90 00 B0         [24] 1569 	mov	dptr,#_ds18b20_readScratchpad_PARM_2
      000441 E0               [24] 1570 	movx	a,@dptr
      000442 FD               [12] 1571 	mov	r5,a
      000443 A3               [24] 1572 	inc	dptr
      000444 E0               [24] 1573 	movx	a,@dptr
      000445 FE               [12] 1574 	mov	r6,a
      000446 A3               [24] 1575 	inc	dptr
      000447 E0               [24] 1576 	movx	a,@dptr
      000448 FF               [12] 1577 	mov	r7,a
      000449 7C 00            [12] 1578 	mov	r4,#0x00
      00044B                       1579 00104$:
                                   1580 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:104: data[i] = ds18b20_readByte(dev);
      00044B EC               [12] 1581 	mov	a,r4
      00044C 2D               [12] 1582 	add	a,r5
      00044D F9               [12] 1583 	mov	r1,a
      00044E E4               [12] 1584 	clr	a
      00044F 3E               [12] 1585 	addc	a,r6
      000450 FA               [12] 1586 	mov	r2,a
      000451 8F 03            [24] 1587 	mov	ar3,r7
      000453 C0 05            [24] 1588 	push	ar5
      000455 C0 06            [24] 1589 	push	ar6
      000457 C0 07            [24] 1590 	push	ar7
      000459 90 00 B3         [24] 1591 	mov	dptr,#_ds18b20_readScratchpad_dev_65536_200
      00045C E0               [24] 1592 	movx	a,@dptr
      00045D F8               [12] 1593 	mov	r0,a
      00045E A3               [24] 1594 	inc	dptr
      00045F E0               [24] 1595 	movx	a,@dptr
      000460 FE               [12] 1596 	mov	r6,a
      000461 A3               [24] 1597 	inc	dptr
      000462 E0               [24] 1598 	movx	a,@dptr
      000463 FF               [12] 1599 	mov	r7,a
      000464 88 82            [24] 1600 	mov	dpl,r0
      000466 8E 83            [24] 1601 	mov	dph,r6
      000468 8F F0            [24] 1602 	mov	b,r7
      00046A C0 06            [24] 1603 	push	ar6
      00046C C0 05            [24] 1604 	push	ar5
      00046E C0 04            [24] 1605 	push	ar4
      000470 C0 03            [24] 1606 	push	ar3
      000472 C0 02            [24] 1607 	push	ar2
      000474 C0 01            [24] 1608 	push	ar1
      000476 12 03 1F         [24] 1609 	lcall	_ds18b20_readByte
      000479 AF 82            [24] 1610 	mov	r7,dpl
      00047B D0 01            [24] 1611 	pop	ar1
      00047D D0 02            [24] 1612 	pop	ar2
      00047F D0 03            [24] 1613 	pop	ar3
      000481 D0 04            [24] 1614 	pop	ar4
      000483 D0 05            [24] 1615 	pop	ar5
      000485 D0 06            [24] 1616 	pop	ar6
      000487 89 82            [24] 1617 	mov	dpl,r1
      000489 8A 83            [24] 1618 	mov	dph,r2
      00048B 8B F0            [24] 1619 	mov	b,r3
      00048D EF               [12] 1620 	mov	a,r7
      00048E 12 56 BA         [24] 1621 	lcall	__gptrput
                                   1622 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:103: for (i = 0; i < 9; i++) {
      000491 0C               [12] 1623 	inc	r4
      000492 BC 09 00         [24] 1624 	cjne	r4,#0x09,00122$
      000495                       1625 00122$:
      000495 D0 07            [24] 1626 	pop	ar7
      000497 D0 06            [24] 1627 	pop	ar6
      000499 D0 05            [24] 1628 	pop	ar5
      00049B 40 AE            [24] 1629 	jc	00104$
                                   1630 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:107: return 0;
      00049D 75 82 00         [24] 1631 	mov	dpl,#0x00
                                   1632 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:108: }
      0004A0 22               [24] 1633 	ret
                                   1634 ;------------------------------------------------------------
                                   1635 ;Allocation info for local variables in function 'DS18B20_init'
                                   1636 ;------------------------------------------------------------
                                   1637 ;data_pin                  Allocated with name '_DS18B20_init_PARM_2'
                                   1638 ;dev                       Allocated with name '_DS18B20_init_dev_65536_205'
                                   1639 ;------------------------------------------------------------
                                   1640 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:110: void DS18B20_init(DS18B20* dev, uint8_t data_pin) {
                                   1641 ;	-----------------------------------------
                                   1642 ;	 function DS18B20_init
                                   1643 ;	-----------------------------------------
      0004A1                       1644 _DS18B20_init:
      0004A1 AF F0            [24] 1645 	mov	r7,b
      0004A3 AE 83            [24] 1646 	mov	r6,dph
      0004A5 E5 82            [12] 1647 	mov	a,dpl
      0004A7 90 00 B7         [24] 1648 	mov	dptr,#_DS18B20_init_dev_65536_205
      0004AA F0               [24] 1649 	movx	@dptr,a
      0004AB EE               [12] 1650 	mov	a,r6
      0004AC A3               [24] 1651 	inc	dptr
      0004AD F0               [24] 1652 	movx	@dptr,a
      0004AE EF               [12] 1653 	mov	a,r7
      0004AF A3               [24] 1654 	inc	dptr
      0004B0 F0               [24] 1655 	movx	@dptr,a
                                   1656 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:111: dev->pin = data_pin;
      0004B1 90 00 B7         [24] 1657 	mov	dptr,#_DS18B20_init_dev_65536_205
      0004B4 E0               [24] 1658 	movx	a,@dptr
      0004B5 FD               [12] 1659 	mov	r5,a
      0004B6 A3               [24] 1660 	inc	dptr
      0004B7 E0               [24] 1661 	movx	a,@dptr
      0004B8 FE               [12] 1662 	mov	r6,a
      0004B9 A3               [24] 1663 	inc	dptr
      0004BA E0               [24] 1664 	movx	a,@dptr
      0004BB FF               [12] 1665 	mov	r7,a
      0004BC 90 00 B6         [24] 1666 	mov	dptr,#_DS18B20_init_PARM_2
      0004BF E0               [24] 1667 	movx	a,@dptr
      0004C0 8D 82            [24] 1668 	mov	dpl,r5
      0004C2 8E 83            [24] 1669 	mov	dph,r6
      0004C4 8F F0            [24] 1670 	mov	b,r7
                                   1671 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:112: }
      0004C6 02 56 BA         [24] 1672 	ljmp	__gptrput
                                   1673 ;------------------------------------------------------------
                                   1674 ;Allocation info for local variables in function 'DS18B20_begin'
                                   1675 ;------------------------------------------------------------
                                   1676 ;dev                       Allocated with name '_DS18B20_begin_dev_65536_207'
                                   1677 ;------------------------------------------------------------
                                   1678 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:114: void DS18B20_begin(DS18B20* dev) {
                                   1679 ;	-----------------------------------------
                                   1680 ;	 function DS18B20_begin
                                   1681 ;	-----------------------------------------
      0004C9                       1682 _DS18B20_begin:
      0004C9 AF F0            [24] 1683 	mov	r7,b
      0004CB AE 83            [24] 1684 	mov	r6,dph
      0004CD E5 82            [12] 1685 	mov	a,dpl
      0004CF 90 00 BA         [24] 1686 	mov	dptr,#_DS18B20_begin_dev_65536_207
      0004D2 F0               [24] 1687 	movx	@dptr,a
      0004D3 EE               [12] 1688 	mov	a,r6
      0004D4 A3               [24] 1689 	inc	dptr
      0004D5 F0               [24] 1690 	movx	@dptr,a
      0004D6 EF               [12] 1691 	mov	a,r7
      0004D7 A3               [24] 1692 	inc	dptr
      0004D8 F0               [24] 1693 	movx	@dptr,a
                                   1694 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:115: pinMode(dev->pin, OUTPUT);
      0004D9 90 00 BA         [24] 1695 	mov	dptr,#_DS18B20_begin_dev_65536_207
      0004DC E0               [24] 1696 	movx	a,@dptr
      0004DD FD               [12] 1697 	mov	r5,a
      0004DE A3               [24] 1698 	inc	dptr
      0004DF E0               [24] 1699 	movx	a,@dptr
      0004E0 FE               [12] 1700 	mov	r6,a
      0004E1 A3               [24] 1701 	inc	dptr
      0004E2 E0               [24] 1702 	movx	a,@dptr
      0004E3 FF               [12] 1703 	mov	r7,a
      0004E4 8D 82            [24] 1704 	mov	dpl,r5
      0004E6 8E 83            [24] 1705 	mov	dph,r6
      0004E8 8F F0            [24] 1706 	mov	b,r7
      0004EA 12 5D 5A         [24] 1707 	lcall	__gptrget
      0004ED FC               [12] 1708 	mov	r4,a
      0004EE 90 02 6D         [24] 1709 	mov	dptr,#_pinMode_PARM_2
      0004F1 74 01            [12] 1710 	mov	a,#0x01
      0004F3 F0               [24] 1711 	movx	@dptr,a
      0004F4 8C 82            [24] 1712 	mov	dpl,r4
      0004F6 C0 07            [24] 1713 	push	ar7
      0004F8 C0 06            [24] 1714 	push	ar6
      0004FA C0 05            [24] 1715 	push	ar5
      0004FC 12 4A FA         [24] 1716 	lcall	_pinMode
      0004FF D0 05            [24] 1717 	pop	ar5
      000501 D0 06            [24] 1718 	pop	ar6
      000503 D0 07            [24] 1719 	pop	ar7
                                   1720 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:116: digitalWrite(dev->pin, HIGH);
      000505 8D 82            [24] 1721 	mov	dpl,r5
      000507 8E 83            [24] 1722 	mov	dph,r6
      000509 8F F0            [24] 1723 	mov	b,r7
      00050B 12 5D 5A         [24] 1724 	lcall	__gptrget
      00050E FD               [12] 1725 	mov	r5,a
      00050F 90 02 6E         [24] 1726 	mov	dptr,#_digitalWrite_PARM_2
      000512 74 01            [12] 1727 	mov	a,#0x01
      000514 F0               [24] 1728 	movx	@dptr,a
      000515 8D 82            [24] 1729 	mov	dpl,r5
                                   1730 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:117: }
      000517 02 4C 9C         [24] 1731 	ljmp	_digitalWrite
                                   1732 ;------------------------------------------------------------
                                   1733 ;Allocation info for local variables in function 'DS18B20_readTemperature'
                                   1734 ;------------------------------------------------------------
                                   1735 ;dev                       Allocated with name '_DS18B20_readTemperature_dev_65536_209'
                                   1736 ;temp_low                  Allocated with name '_DS18B20_readTemperature_temp_low_65536_210'
                                   1737 ;temp_high                 Allocated with name '_DS18B20_readTemperature_temp_high_65536_210'
                                   1738 ;temp_raw                  Allocated with name '_DS18B20_readTemperature_temp_raw_65536_210'
                                   1739 ;temperature               Allocated with name '_DS18B20_readTemperature_temperature_65536_210'
                                   1740 ;------------------------------------------------------------
                                   1741 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:119: float DS18B20_readTemperature(DS18B20* dev) {
                                   1742 ;	-----------------------------------------
                                   1743 ;	 function DS18B20_readTemperature
                                   1744 ;	-----------------------------------------
      00051A                       1745 _DS18B20_readTemperature:
      00051A AF F0            [24] 1746 	mov	r7,b
      00051C AE 83            [24] 1747 	mov	r6,dph
      00051E E5 82            [12] 1748 	mov	a,dpl
      000520 90 00 BD         [24] 1749 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      000523 F0               [24] 1750 	movx	@dptr,a
      000524 EE               [12] 1751 	mov	a,r6
      000525 A3               [24] 1752 	inc	dptr
      000526 F0               [24] 1753 	movx	@dptr,a
      000527 EF               [12] 1754 	mov	a,r7
      000528 A3               [24] 1755 	inc	dptr
      000529 F0               [24] 1756 	movx	@dptr,a
                                   1757 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:124: if (ds18b20_reset(dev)) {
      00052A 90 00 BD         [24] 1758 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      00052D E0               [24] 1759 	movx	a,@dptr
      00052E FD               [12] 1760 	mov	r5,a
      00052F A3               [24] 1761 	inc	dptr
      000530 E0               [24] 1762 	movx	a,@dptr
      000531 FE               [12] 1763 	mov	r6,a
      000532 A3               [24] 1764 	inc	dptr
      000533 E0               [24] 1765 	movx	a,@dptr
      000534 FF               [12] 1766 	mov	r7,a
      000535 8D 82            [24] 1767 	mov	dpl,r5
      000537 8E 83            [24] 1768 	mov	dph,r6
      000539 8F F0            [24] 1769 	mov	b,r7
      00053B 12 01 DD         [24] 1770 	lcall	_ds18b20_reset
      00053E E5 82            [12] 1771 	mov	a,dpl
      000540 60 09            [24] 1772 	jz	00102$
                                   1773 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:125: return -999.0;
      000542 90 C0 00         [24] 1774 	mov	dptr,#0xc000
      000545 75 F0 79         [24] 1775 	mov	b,#0x79
      000548 74 C4            [12] 1776 	mov	a,#0xc4
      00054A 22               [24] 1777 	ret
      00054B                       1778 00102$:
                                   1779 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:128: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      00054B 90 00 BD         [24] 1780 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      00054E E0               [24] 1781 	movx	a,@dptr
      00054F FD               [12] 1782 	mov	r5,a
      000550 A3               [24] 1783 	inc	dptr
      000551 E0               [24] 1784 	movx	a,@dptr
      000552 FE               [12] 1785 	mov	r6,a
      000553 A3               [24] 1786 	inc	dptr
      000554 E0               [24] 1787 	movx	a,@dptr
      000555 FF               [12] 1788 	mov	r7,a
      000556 90 00 A8         [24] 1789 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000559 74 CC            [12] 1790 	mov	a,#0xcc
      00055B F0               [24] 1791 	movx	@dptr,a
      00055C 8D 82            [24] 1792 	mov	dpl,r5
      00055E 8E 83            [24] 1793 	mov	dph,r6
      000560 8F F0            [24] 1794 	mov	b,r7
      000562 12 02 6C         [24] 1795 	lcall	_ds18b20_writeByte
                                   1796 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:129: ds18b20_writeByte(dev, DS18B20_CMD_CONVERT);
      000565 90 00 BD         [24] 1797 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      000568 E0               [24] 1798 	movx	a,@dptr
      000569 FD               [12] 1799 	mov	r5,a
      00056A A3               [24] 1800 	inc	dptr
      00056B E0               [24] 1801 	movx	a,@dptr
      00056C FE               [12] 1802 	mov	r6,a
      00056D A3               [24] 1803 	inc	dptr
      00056E E0               [24] 1804 	movx	a,@dptr
      00056F FF               [12] 1805 	mov	r7,a
      000570 90 00 A8         [24] 1806 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000573 74 44            [12] 1807 	mov	a,#0x44
      000575 F0               [24] 1808 	movx	@dptr,a
      000576 8D 82            [24] 1809 	mov	dpl,r5
      000578 8E 83            [24] 1810 	mov	dph,r6
      00057A 8F F0            [24] 1811 	mov	b,r7
      00057C 12 02 6C         [24] 1812 	lcall	_ds18b20_writeByte
                                   1813 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:131: delay(750);
      00057F 90 02 EE         [24] 1814 	mov	dptr,#0x02ee
      000582 E4               [12] 1815 	clr	a
      000583 F5 F0            [12] 1816 	mov	b,a
      000585 12 4F BF         [24] 1817 	lcall	_delay
                                   1818 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:133: if (ds18b20_reset(dev)) {
      000588 90 00 BD         [24] 1819 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      00058B E0               [24] 1820 	movx	a,@dptr
      00058C FD               [12] 1821 	mov	r5,a
      00058D A3               [24] 1822 	inc	dptr
      00058E E0               [24] 1823 	movx	a,@dptr
      00058F FE               [12] 1824 	mov	r6,a
      000590 A3               [24] 1825 	inc	dptr
      000591 E0               [24] 1826 	movx	a,@dptr
      000592 FF               [12] 1827 	mov	r7,a
      000593 8D 82            [24] 1828 	mov	dpl,r5
      000595 8E 83            [24] 1829 	mov	dph,r6
      000597 8F F0            [24] 1830 	mov	b,r7
      000599 12 01 DD         [24] 1831 	lcall	_ds18b20_reset
      00059C E5 82            [12] 1832 	mov	a,dpl
      00059E 60 09            [24] 1833 	jz	00104$
                                   1834 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:134: return -999.0;
      0005A0 90 C0 00         [24] 1835 	mov	dptr,#0xc000
      0005A3 75 F0 79         [24] 1836 	mov	b,#0x79
      0005A6 74 C4            [12] 1837 	mov	a,#0xc4
      0005A8 22               [24] 1838 	ret
      0005A9                       1839 00104$:
                                   1840 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:137: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      0005A9 90 00 BD         [24] 1841 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      0005AC E0               [24] 1842 	movx	a,@dptr
      0005AD FD               [12] 1843 	mov	r5,a
      0005AE A3               [24] 1844 	inc	dptr
      0005AF E0               [24] 1845 	movx	a,@dptr
      0005B0 FE               [12] 1846 	mov	r6,a
      0005B1 A3               [24] 1847 	inc	dptr
      0005B2 E0               [24] 1848 	movx	a,@dptr
      0005B3 FF               [12] 1849 	mov	r7,a
      0005B4 90 00 A8         [24] 1850 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0005B7 74 CC            [12] 1851 	mov	a,#0xcc
      0005B9 F0               [24] 1852 	movx	@dptr,a
      0005BA 8D 82            [24] 1853 	mov	dpl,r5
      0005BC 8E 83            [24] 1854 	mov	dph,r6
      0005BE 8F F0            [24] 1855 	mov	b,r7
      0005C0 12 02 6C         [24] 1856 	lcall	_ds18b20_writeByte
                                   1857 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:138: ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);
      0005C3 90 00 BD         [24] 1858 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      0005C6 E0               [24] 1859 	movx	a,@dptr
      0005C7 FD               [12] 1860 	mov	r5,a
      0005C8 A3               [24] 1861 	inc	dptr
      0005C9 E0               [24] 1862 	movx	a,@dptr
      0005CA FE               [12] 1863 	mov	r6,a
      0005CB A3               [24] 1864 	inc	dptr
      0005CC E0               [24] 1865 	movx	a,@dptr
      0005CD FF               [12] 1866 	mov	r7,a
      0005CE 90 00 A8         [24] 1867 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0005D1 74 BE            [12] 1868 	mov	a,#0xbe
      0005D3 F0               [24] 1869 	movx	@dptr,a
      0005D4 8D 82            [24] 1870 	mov	dpl,r5
      0005D6 8E 83            [24] 1871 	mov	dph,r6
      0005D8 8F F0            [24] 1872 	mov	b,r7
      0005DA 12 02 6C         [24] 1873 	lcall	_ds18b20_writeByte
                                   1874 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:140: temp_low = ds18b20_readByte(dev);
      0005DD 90 00 BD         [24] 1875 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      0005E0 E0               [24] 1876 	movx	a,@dptr
      0005E1 FD               [12] 1877 	mov	r5,a
      0005E2 A3               [24] 1878 	inc	dptr
      0005E3 E0               [24] 1879 	movx	a,@dptr
      0005E4 FE               [12] 1880 	mov	r6,a
      0005E5 A3               [24] 1881 	inc	dptr
      0005E6 E0               [24] 1882 	movx	a,@dptr
      0005E7 FF               [12] 1883 	mov	r7,a
      0005E8 8D 82            [24] 1884 	mov	dpl,r5
      0005EA 8E 83            [24] 1885 	mov	dph,r6
      0005EC 8F F0            [24] 1886 	mov	b,r7
      0005EE 12 03 1F         [24] 1887 	lcall	_ds18b20_readByte
      0005F1 AF 82            [24] 1888 	mov	r7,dpl
                                   1889 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:141: temp_high = ds18b20_readByte(dev);
      0005F3 90 00 BD         [24] 1890 	mov	dptr,#_DS18B20_readTemperature_dev_65536_209
      0005F6 E0               [24] 1891 	movx	a,@dptr
      0005F7 FC               [12] 1892 	mov	r4,a
      0005F8 A3               [24] 1893 	inc	dptr
      0005F9 E0               [24] 1894 	movx	a,@dptr
      0005FA FD               [12] 1895 	mov	r5,a
      0005FB A3               [24] 1896 	inc	dptr
      0005FC E0               [24] 1897 	movx	a,@dptr
      0005FD FE               [12] 1898 	mov	r6,a
      0005FE 8C 82            [24] 1899 	mov	dpl,r4
      000600 8D 83            [24] 1900 	mov	dph,r5
      000602 8E F0            [24] 1901 	mov	b,r6
      000604 C0 07            [24] 1902 	push	ar7
      000606 12 03 1F         [24] 1903 	lcall	_ds18b20_readByte
      000609 AE 82            [24] 1904 	mov	r6,dpl
      00060B D0 07            [24] 1905 	pop	ar7
                                   1906 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:143: temp_raw = (temp_high << 8) | temp_low;
      00060D 8E 05            [24] 1907 	mov	ar5,r6
      00060F E4               [12] 1908 	clr	a
      000610 FE               [12] 1909 	mov	r6,a
      000611 FC               [12] 1910 	mov	r4,a
      000612 EF               [12] 1911 	mov	a,r7
      000613 42 06            [12] 1912 	orl	ar6,a
      000615 EC               [12] 1913 	mov	a,r4
      000616 42 05            [12] 1914 	orl	ar5,a
                                   1915 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:145: temperature = temp_raw * 0.0625;
      000618 8E 82            [24] 1916 	mov	dpl,r6
      00061A 8D 83            [24] 1917 	mov	dph,r5
      00061C 12 5C 19         [24] 1918 	lcall	___sint2fs
      00061F AC 82            [24] 1919 	mov	r4,dpl
      000621 AD 83            [24] 1920 	mov	r5,dph
      000623 AE F0            [24] 1921 	mov	r6,b
      000625 FF               [12] 1922 	mov	r7,a
      000626 C0 04            [24] 1923 	push	ar4
      000628 C0 05            [24] 1924 	push	ar5
      00062A C0 06            [24] 1925 	push	ar6
      00062C C0 07            [24] 1926 	push	ar7
                                   1927 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:147: return temperature;
      00062E 90 00 00         [24] 1928 	mov	dptr,#0x0000
      000631 75 F0 80         [24] 1929 	mov	b,#0x80
      000634 74 3D            [12] 1930 	mov	a,#0x3d
      000636 12 48 95         [24] 1931 	lcall	___fsmul
      000639 AC 82            [24] 1932 	mov	r4,dpl
      00063B AD 83            [24] 1933 	mov	r5,dph
      00063D AE F0            [24] 1934 	mov	r6,b
      00063F FF               [12] 1935 	mov	r7,a
      000640 E5 81            [12] 1936 	mov	a,sp
      000642 24 FC            [12] 1937 	add	a,#0xfc
      000644 F5 81            [12] 1938 	mov	sp,a
      000646 8C 82            [24] 1939 	mov	dpl,r4
      000648 8D 83            [24] 1940 	mov	dph,r5
      00064A 8E F0            [24] 1941 	mov	b,r6
      00064C EF               [12] 1942 	mov	a,r7
                                   1943 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:148: }
      00064D 22               [24] 1944 	ret
                                   1945 ;------------------------------------------------------------
                                   1946 ;Allocation info for local variables in function 'DS18B20_readTemperatureFast'
                                   1947 ;------------------------------------------------------------
                                   1948 ;dev                       Allocated with name '_DS18B20_readTemperatureFast_dev_65536_213'
                                   1949 ;temp_low                  Allocated with name '_DS18B20_readTemperatureFast_temp_low_65536_214'
                                   1950 ;temp_high                 Allocated with name '_DS18B20_readTemperatureFast_temp_high_65536_214'
                                   1951 ;config                    Allocated with name '_DS18B20_readTemperatureFast_config_65536_214'
                                   1952 ;scratchpad                Allocated with name '_DS18B20_readTemperatureFast_scratchpad_65536_214'
                                   1953 ;temp_raw                  Allocated with name '_DS18B20_readTemperatureFast_temp_raw_65536_214'
                                   1954 ;temperature               Allocated with name '_DS18B20_readTemperatureFast_temperature_65536_214'
                                   1955 ;wait_time                 Allocated with name '_DS18B20_readTemperatureFast_wait_time_65536_214'
                                   1956 ;------------------------------------------------------------
                                   1957 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:150: float DS18B20_readTemperatureFast(DS18B20* dev) {
                                   1958 ;	-----------------------------------------
                                   1959 ;	 function DS18B20_readTemperatureFast
                                   1960 ;	-----------------------------------------
      00064E                       1961 _DS18B20_readTemperatureFast:
      00064E AF F0            [24] 1962 	mov	r7,b
      000650 AE 83            [24] 1963 	mov	r6,dph
      000652 E5 82            [12] 1964 	mov	a,dpl
      000654 90 00 C0         [24] 1965 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      000657 F0               [24] 1966 	movx	@dptr,a
      000658 EE               [12] 1967 	mov	a,r6
      000659 A3               [24] 1968 	inc	dptr
      00065A F0               [24] 1969 	movx	@dptr,a
      00065B EF               [12] 1970 	mov	a,r7
      00065C A3               [24] 1971 	inc	dptr
      00065D F0               [24] 1972 	movx	@dptr,a
                                   1973 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:157: if (ds18b20_readScratchpad(dev, scratchpad)) {
      00065E 90 00 C0         [24] 1974 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      000661 E0               [24] 1975 	movx	a,@dptr
      000662 FD               [12] 1976 	mov	r5,a
      000663 A3               [24] 1977 	inc	dptr
      000664 E0               [24] 1978 	movx	a,@dptr
      000665 FE               [12] 1979 	mov	r6,a
      000666 A3               [24] 1980 	inc	dptr
      000667 E0               [24] 1981 	movx	a,@dptr
      000668 FF               [12] 1982 	mov	r7,a
      000669 90 00 B0         [24] 1983 	mov	dptr,#_ds18b20_readScratchpad_PARM_2
      00066C 74 C3            [12] 1984 	mov	a,#_DS18B20_readTemperatureFast_scratchpad_65536_214
      00066E F0               [24] 1985 	movx	@dptr,a
      00066F 74 00            [12] 1986 	mov	a,#(_DS18B20_readTemperatureFast_scratchpad_65536_214 >> 8)
      000671 A3               [24] 1987 	inc	dptr
      000672 F0               [24] 1988 	movx	@dptr,a
      000673 E4               [12] 1989 	clr	a
      000674 A3               [24] 1990 	inc	dptr
      000675 F0               [24] 1991 	movx	@dptr,a
      000676 8D 82            [24] 1992 	mov	dpl,r5
      000678 8E 83            [24] 1993 	mov	dph,r6
      00067A 8F F0            [24] 1994 	mov	b,r7
      00067C 12 03 DE         [24] 1995 	lcall	_ds18b20_readScratchpad
      00067F E5 82            [12] 1996 	mov	a,dpl
      000681 60 09            [24] 1997 	jz	00102$
                                   1998 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:158: return -999.0;
      000683 90 C0 00         [24] 1999 	mov	dptr,#0xc000
      000686 75 F0 79         [24] 2000 	mov	b,#0x79
      000689 74 C4            [12] 2001 	mov	a,#0xc4
      00068B 22               [24] 2002 	ret
      00068C                       2003 00102$:
                                   2004 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:160: config = scratchpad[4];
      00068C 90 00 C7         [24] 2005 	mov	dptr,#(_DS18B20_readTemperatureFast_scratchpad_65536_214 + 0x0004)
      00068F E0               [24] 2006 	movx	a,@dptr
      000690 FF               [12] 2007 	mov	r7,a
                                   2008 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:162: switch (config) {
      000691 BF 1F 02         [24] 2009 	cjne	r7,#0x1f,00140$
      000694 80 0A            [24] 2010 	sjmp	00103$
      000696                       2011 00140$:
      000696 BF 3F 02         [24] 2012 	cjne	r7,#0x3f,00141$
      000699 80 14            [24] 2013 	sjmp	00104$
      00069B                       2014 00141$:
                                   2015 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:163: case DS18B20_RESOLUTION_9BIT:
      00069B BF 5F 31         [24] 2016 	cjne	r7,#0x5f,00107$
      00069E 80 1E            [24] 2017 	sjmp	00105$
      0006A0                       2018 00103$:
                                   2019 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:164: wait_time = 94;
      0006A0 90 00 CC         [24] 2020 	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
      0006A3 74 5E            [12] 2021 	mov	a,#0x5e
      0006A5 F0               [24] 2022 	movx	@dptr,a
      0006A6 E4               [12] 2023 	clr	a
      0006A7 A3               [24] 2024 	inc	dptr
      0006A8 F0               [24] 2025 	movx	@dptr,a
      0006A9 A3               [24] 2026 	inc	dptr
      0006AA F0               [24] 2027 	movx	@dptr,a
      0006AB A3               [24] 2028 	inc	dptr
      0006AC F0               [24] 2029 	movx	@dptr,a
                                   2030 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:165: break;
                                   2031 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:166: case DS18B20_RESOLUTION_10BIT:
      0006AD 80 2F            [24] 2032 	sjmp	00108$
      0006AF                       2033 00104$:
                                   2034 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:167: wait_time = 188;
      0006AF 90 00 CC         [24] 2035 	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
      0006B2 74 BC            [12] 2036 	mov	a,#0xbc
      0006B4 F0               [24] 2037 	movx	@dptr,a
      0006B5 E4               [12] 2038 	clr	a
      0006B6 A3               [24] 2039 	inc	dptr
      0006B7 F0               [24] 2040 	movx	@dptr,a
      0006B8 A3               [24] 2041 	inc	dptr
      0006B9 F0               [24] 2042 	movx	@dptr,a
      0006BA A3               [24] 2043 	inc	dptr
      0006BB F0               [24] 2044 	movx	@dptr,a
                                   2045 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:168: break;
                                   2046 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:169: case DS18B20_RESOLUTION_11BIT:
      0006BC 80 20            [24] 2047 	sjmp	00108$
      0006BE                       2048 00105$:
                                   2049 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:170: wait_time = 375;
      0006BE 90 00 CC         [24] 2050 	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
      0006C1 74 77            [12] 2051 	mov	a,#0x77
      0006C3 F0               [24] 2052 	movx	@dptr,a
      0006C4 74 01            [12] 2053 	mov	a,#0x01
      0006C6 A3               [24] 2054 	inc	dptr
      0006C7 F0               [24] 2055 	movx	@dptr,a
      0006C8 E4               [12] 2056 	clr	a
      0006C9 A3               [24] 2057 	inc	dptr
      0006CA F0               [24] 2058 	movx	@dptr,a
      0006CB A3               [24] 2059 	inc	dptr
      0006CC F0               [24] 2060 	movx	@dptr,a
                                   2061 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:171: break;
                                   2062 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:173: default:
      0006CD 80 0F            [24] 2063 	sjmp	00108$
      0006CF                       2064 00107$:
                                   2065 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:174: wait_time = 750;
      0006CF 90 00 CC         [24] 2066 	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
      0006D2 74 EE            [12] 2067 	mov	a,#0xee
      0006D4 F0               [24] 2068 	movx	@dptr,a
      0006D5 74 02            [12] 2069 	mov	a,#0x02
      0006D7 A3               [24] 2070 	inc	dptr
      0006D8 F0               [24] 2071 	movx	@dptr,a
      0006D9 E4               [12] 2072 	clr	a
      0006DA A3               [24] 2073 	inc	dptr
      0006DB F0               [24] 2074 	movx	@dptr,a
      0006DC A3               [24] 2075 	inc	dptr
      0006DD F0               [24] 2076 	movx	@dptr,a
                                   2077 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:176: }
      0006DE                       2078 00108$:
                                   2079 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:178: if (ds18b20_reset(dev)) {
      0006DE 90 00 C0         [24] 2080 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      0006E1 E0               [24] 2081 	movx	a,@dptr
      0006E2 FD               [12] 2082 	mov	r5,a
      0006E3 A3               [24] 2083 	inc	dptr
      0006E4 E0               [24] 2084 	movx	a,@dptr
      0006E5 FE               [12] 2085 	mov	r6,a
      0006E6 A3               [24] 2086 	inc	dptr
      0006E7 E0               [24] 2087 	movx	a,@dptr
      0006E8 FF               [12] 2088 	mov	r7,a
      0006E9 8D 82            [24] 2089 	mov	dpl,r5
      0006EB 8E 83            [24] 2090 	mov	dph,r6
      0006ED 8F F0            [24] 2091 	mov	b,r7
      0006EF 12 01 DD         [24] 2092 	lcall	_ds18b20_reset
      0006F2 E5 82            [12] 2093 	mov	a,dpl
      0006F4 60 09            [24] 2094 	jz	00110$
                                   2095 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:179: return -999.0;
      0006F6 90 C0 00         [24] 2096 	mov	dptr,#0xc000
      0006F9 75 F0 79         [24] 2097 	mov	b,#0x79
      0006FC 74 C4            [12] 2098 	mov	a,#0xc4
      0006FE 22               [24] 2099 	ret
      0006FF                       2100 00110$:
                                   2101 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:182: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      0006FF 90 00 C0         [24] 2102 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      000702 E0               [24] 2103 	movx	a,@dptr
      000703 FD               [12] 2104 	mov	r5,a
      000704 A3               [24] 2105 	inc	dptr
      000705 E0               [24] 2106 	movx	a,@dptr
      000706 FE               [12] 2107 	mov	r6,a
      000707 A3               [24] 2108 	inc	dptr
      000708 E0               [24] 2109 	movx	a,@dptr
      000709 FF               [12] 2110 	mov	r7,a
      00070A 90 00 A8         [24] 2111 	mov	dptr,#_ds18b20_writeByte_PARM_2
      00070D 74 CC            [12] 2112 	mov	a,#0xcc
      00070F F0               [24] 2113 	movx	@dptr,a
      000710 8D 82            [24] 2114 	mov	dpl,r5
      000712 8E 83            [24] 2115 	mov	dph,r6
      000714 8F F0            [24] 2116 	mov	b,r7
      000716 12 02 6C         [24] 2117 	lcall	_ds18b20_writeByte
                                   2118 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:183: ds18b20_writeByte(dev, DS18B20_CMD_CONVERT);
      000719 90 00 C0         [24] 2119 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      00071C E0               [24] 2120 	movx	a,@dptr
      00071D FD               [12] 2121 	mov	r5,a
      00071E A3               [24] 2122 	inc	dptr
      00071F E0               [24] 2123 	movx	a,@dptr
      000720 FE               [12] 2124 	mov	r6,a
      000721 A3               [24] 2125 	inc	dptr
      000722 E0               [24] 2126 	movx	a,@dptr
      000723 FF               [12] 2127 	mov	r7,a
      000724 90 00 A8         [24] 2128 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000727 74 44            [12] 2129 	mov	a,#0x44
      000729 F0               [24] 2130 	movx	@dptr,a
      00072A 8D 82            [24] 2131 	mov	dpl,r5
      00072C 8E 83            [24] 2132 	mov	dph,r6
      00072E 8F F0            [24] 2133 	mov	b,r7
      000730 12 02 6C         [24] 2134 	lcall	_ds18b20_writeByte
                                   2135 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:185: delay(wait_time);
      000733 90 00 CC         [24] 2136 	mov	dptr,#_DS18B20_readTemperatureFast_wait_time_65536_214
      000736 E0               [24] 2137 	movx	a,@dptr
      000737 FC               [12] 2138 	mov	r4,a
      000738 A3               [24] 2139 	inc	dptr
      000739 E0               [24] 2140 	movx	a,@dptr
      00073A FD               [12] 2141 	mov	r5,a
      00073B A3               [24] 2142 	inc	dptr
      00073C E0               [24] 2143 	movx	a,@dptr
      00073D FE               [12] 2144 	mov	r6,a
      00073E A3               [24] 2145 	inc	dptr
      00073F E0               [24] 2146 	movx	a,@dptr
      000740 8C 82            [24] 2147 	mov	dpl,r4
      000742 8D 83            [24] 2148 	mov	dph,r5
      000744 8E F0            [24] 2149 	mov	b,r6
      000746 12 4F BF         [24] 2150 	lcall	_delay
                                   2151 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:187: if (ds18b20_reset(dev)) {
      000749 90 00 C0         [24] 2152 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      00074C E0               [24] 2153 	movx	a,@dptr
      00074D FD               [12] 2154 	mov	r5,a
      00074E A3               [24] 2155 	inc	dptr
      00074F E0               [24] 2156 	movx	a,@dptr
      000750 FE               [12] 2157 	mov	r6,a
      000751 A3               [24] 2158 	inc	dptr
      000752 E0               [24] 2159 	movx	a,@dptr
      000753 FF               [12] 2160 	mov	r7,a
      000754 8D 82            [24] 2161 	mov	dpl,r5
      000756 8E 83            [24] 2162 	mov	dph,r6
      000758 8F F0            [24] 2163 	mov	b,r7
      00075A 12 01 DD         [24] 2164 	lcall	_ds18b20_reset
      00075D E5 82            [12] 2165 	mov	a,dpl
      00075F 60 09            [24] 2166 	jz	00112$
                                   2167 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:188: return -999.0;
      000761 90 C0 00         [24] 2168 	mov	dptr,#0xc000
      000764 75 F0 79         [24] 2169 	mov	b,#0x79
      000767 74 C4            [12] 2170 	mov	a,#0xc4
      000769 22               [24] 2171 	ret
      00076A                       2172 00112$:
                                   2173 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:191: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      00076A 90 00 C0         [24] 2174 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      00076D E0               [24] 2175 	movx	a,@dptr
      00076E FD               [12] 2176 	mov	r5,a
      00076F A3               [24] 2177 	inc	dptr
      000770 E0               [24] 2178 	movx	a,@dptr
      000771 FE               [12] 2179 	mov	r6,a
      000772 A3               [24] 2180 	inc	dptr
      000773 E0               [24] 2181 	movx	a,@dptr
      000774 FF               [12] 2182 	mov	r7,a
      000775 90 00 A8         [24] 2183 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000778 74 CC            [12] 2184 	mov	a,#0xcc
      00077A F0               [24] 2185 	movx	@dptr,a
      00077B 8D 82            [24] 2186 	mov	dpl,r5
      00077D 8E 83            [24] 2187 	mov	dph,r6
      00077F 8F F0            [24] 2188 	mov	b,r7
      000781 12 02 6C         [24] 2189 	lcall	_ds18b20_writeByte
                                   2190 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:192: ds18b20_writeByte(dev, DS18B20_CMD_READ_SCRATCHPAD);
      000784 90 00 C0         [24] 2191 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      000787 E0               [24] 2192 	movx	a,@dptr
      000788 FD               [12] 2193 	mov	r5,a
      000789 A3               [24] 2194 	inc	dptr
      00078A E0               [24] 2195 	movx	a,@dptr
      00078B FE               [12] 2196 	mov	r6,a
      00078C A3               [24] 2197 	inc	dptr
      00078D E0               [24] 2198 	movx	a,@dptr
      00078E FF               [12] 2199 	mov	r7,a
      00078F 90 00 A8         [24] 2200 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000792 74 BE            [12] 2201 	mov	a,#0xbe
      000794 F0               [24] 2202 	movx	@dptr,a
      000795 8D 82            [24] 2203 	mov	dpl,r5
      000797 8E 83            [24] 2204 	mov	dph,r6
      000799 8F F0            [24] 2205 	mov	b,r7
      00079B 12 02 6C         [24] 2206 	lcall	_ds18b20_writeByte
                                   2207 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:194: temp_low = ds18b20_readByte(dev);
      00079E 90 00 C0         [24] 2208 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      0007A1 E0               [24] 2209 	movx	a,@dptr
      0007A2 FD               [12] 2210 	mov	r5,a
      0007A3 A3               [24] 2211 	inc	dptr
      0007A4 E0               [24] 2212 	movx	a,@dptr
      0007A5 FE               [12] 2213 	mov	r6,a
      0007A6 A3               [24] 2214 	inc	dptr
      0007A7 E0               [24] 2215 	movx	a,@dptr
      0007A8 FF               [12] 2216 	mov	r7,a
      0007A9 8D 82            [24] 2217 	mov	dpl,r5
      0007AB 8E 83            [24] 2218 	mov	dph,r6
      0007AD 8F F0            [24] 2219 	mov	b,r7
      0007AF 12 03 1F         [24] 2220 	lcall	_ds18b20_readByte
      0007B2 AF 82            [24] 2221 	mov	r7,dpl
                                   2222 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:195: temp_high = ds18b20_readByte(dev);
      0007B4 90 00 C0         [24] 2223 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_213
      0007B7 E0               [24] 2224 	movx	a,@dptr
      0007B8 FC               [12] 2225 	mov	r4,a
      0007B9 A3               [24] 2226 	inc	dptr
      0007BA E0               [24] 2227 	movx	a,@dptr
      0007BB FD               [12] 2228 	mov	r5,a
      0007BC A3               [24] 2229 	inc	dptr
      0007BD E0               [24] 2230 	movx	a,@dptr
      0007BE FE               [12] 2231 	mov	r6,a
      0007BF 8C 82            [24] 2232 	mov	dpl,r4
      0007C1 8D 83            [24] 2233 	mov	dph,r5
      0007C3 8E F0            [24] 2234 	mov	b,r6
      0007C5 C0 07            [24] 2235 	push	ar7
      0007C7 12 03 1F         [24] 2236 	lcall	_ds18b20_readByte
      0007CA AE 82            [24] 2237 	mov	r6,dpl
      0007CC D0 07            [24] 2238 	pop	ar7
                                   2239 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:197: temp_raw = (temp_high << 8) | temp_low;
      0007CE 8E 05            [24] 2240 	mov	ar5,r6
      0007D0 E4               [12] 2241 	clr	a
      0007D1 FE               [12] 2242 	mov	r6,a
      0007D2 FC               [12] 2243 	mov	r4,a
      0007D3 EF               [12] 2244 	mov	a,r7
      0007D4 42 06            [12] 2245 	orl	ar6,a
      0007D6 EC               [12] 2246 	mov	a,r4
      0007D7 42 05            [12] 2247 	orl	ar5,a
                                   2248 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:199: temperature = temp_raw * 0.0625;
      0007D9 8E 82            [24] 2249 	mov	dpl,r6
      0007DB 8D 83            [24] 2250 	mov	dph,r5
      0007DD 12 5C 19         [24] 2251 	lcall	___sint2fs
      0007E0 AC 82            [24] 2252 	mov	r4,dpl
      0007E2 AD 83            [24] 2253 	mov	r5,dph
      0007E4 AE F0            [24] 2254 	mov	r6,b
      0007E6 FF               [12] 2255 	mov	r7,a
      0007E7 C0 04            [24] 2256 	push	ar4
      0007E9 C0 05            [24] 2257 	push	ar5
      0007EB C0 06            [24] 2258 	push	ar6
      0007ED C0 07            [24] 2259 	push	ar7
                                   2260 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:201: return temperature;
      0007EF 90 00 00         [24] 2261 	mov	dptr,#0x0000
      0007F2 75 F0 80         [24] 2262 	mov	b,#0x80
      0007F5 74 3D            [12] 2263 	mov	a,#0x3d
      0007F7 12 48 95         [24] 2264 	lcall	___fsmul
      0007FA AC 82            [24] 2265 	mov	r4,dpl
      0007FC AD 83            [24] 2266 	mov	r5,dph
      0007FE AE F0            [24] 2267 	mov	r6,b
      000800 FF               [12] 2268 	mov	r7,a
      000801 E5 81            [12] 2269 	mov	a,sp
      000803 24 FC            [12] 2270 	add	a,#0xfc
      000805 F5 81            [12] 2271 	mov	sp,a
      000807 8C 82            [24] 2272 	mov	dpl,r4
      000809 8D 83            [24] 2273 	mov	dph,r5
      00080B 8E F0            [24] 2274 	mov	b,r6
      00080D EF               [12] 2275 	mov	a,r7
                                   2276 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:202: }
      00080E 22               [24] 2277 	ret
                                   2278 ;------------------------------------------------------------
                                   2279 ;Allocation info for local variables in function 'DS18B20_setResolution'
                                   2280 ;------------------------------------------------------------
                                   2281 ;resolution                Allocated with name '_DS18B20_setResolution_PARM_2'
                                   2282 ;dev                       Allocated with name '_DS18B20_setResolution_dev_65536_219'
                                   2283 ;scratchpad                Allocated with name '_DS18B20_setResolution_scratchpad_65536_220'
                                   2284 ;------------------------------------------------------------
                                   2285 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:204: void DS18B20_setResolution(DS18B20* dev, ds18b20_resolution_t resolution) {
                                   2286 ;	-----------------------------------------
                                   2287 ;	 function DS18B20_setResolution
                                   2288 ;	-----------------------------------------
      00080F                       2289 _DS18B20_setResolution:
      00080F AF F0            [24] 2290 	mov	r7,b
      000811 AE 83            [24] 2291 	mov	r6,dph
      000813 E5 82            [12] 2292 	mov	a,dpl
      000815 90 00 D1         [24] 2293 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      000818 F0               [24] 2294 	movx	@dptr,a
      000819 EE               [12] 2295 	mov	a,r6
      00081A A3               [24] 2296 	inc	dptr
      00081B F0               [24] 2297 	movx	@dptr,a
      00081C EF               [12] 2298 	mov	a,r7
      00081D A3               [24] 2299 	inc	dptr
      00081E F0               [24] 2300 	movx	@dptr,a
                                   2301 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:207: if (ds18b20_readScratchpad(dev, scratchpad)) {
      00081F 90 00 D1         [24] 2302 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      000822 E0               [24] 2303 	movx	a,@dptr
      000823 FD               [12] 2304 	mov	r5,a
      000824 A3               [24] 2305 	inc	dptr
      000825 E0               [24] 2306 	movx	a,@dptr
      000826 FE               [12] 2307 	mov	r6,a
      000827 A3               [24] 2308 	inc	dptr
      000828 E0               [24] 2309 	movx	a,@dptr
      000829 FF               [12] 2310 	mov	r7,a
      00082A 90 00 B0         [24] 2311 	mov	dptr,#_ds18b20_readScratchpad_PARM_2
      00082D 74 D4            [12] 2312 	mov	a,#_DS18B20_setResolution_scratchpad_65536_220
      00082F F0               [24] 2313 	movx	@dptr,a
      000830 74 00            [12] 2314 	mov	a,#(_DS18B20_setResolution_scratchpad_65536_220 >> 8)
      000832 A3               [24] 2315 	inc	dptr
      000833 F0               [24] 2316 	movx	@dptr,a
      000834 E4               [12] 2317 	clr	a
      000835 A3               [24] 2318 	inc	dptr
      000836 F0               [24] 2319 	movx	@dptr,a
      000837 8D 82            [24] 2320 	mov	dpl,r5
      000839 8E 83            [24] 2321 	mov	dph,r6
      00083B 8F F0            [24] 2322 	mov	b,r7
      00083D 12 03 DE         [24] 2323 	lcall	_ds18b20_readScratchpad
      000840 E5 82            [12] 2324 	mov	a,dpl
      000842 60 01            [24] 2325 	jz	00102$
                                   2326 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:208: return;
      000844 22               [24] 2327 	ret
      000845                       2328 00102$:
                                   2329 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:211: ds18b20_reset(dev);
      000845 90 00 D1         [24] 2330 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      000848 E0               [24] 2331 	movx	a,@dptr
      000849 FD               [12] 2332 	mov	r5,a
      00084A A3               [24] 2333 	inc	dptr
      00084B E0               [24] 2334 	movx	a,@dptr
      00084C FE               [12] 2335 	mov	r6,a
      00084D A3               [24] 2336 	inc	dptr
      00084E E0               [24] 2337 	movx	a,@dptr
      00084F FF               [12] 2338 	mov	r7,a
      000850 8D 82            [24] 2339 	mov	dpl,r5
      000852 8E 83            [24] 2340 	mov	dph,r6
      000854 8F F0            [24] 2341 	mov	b,r7
      000856 12 01 DD         [24] 2342 	lcall	_ds18b20_reset
                                   2343 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:212: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      000859 90 00 D1         [24] 2344 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      00085C E0               [24] 2345 	movx	a,@dptr
      00085D FD               [12] 2346 	mov	r5,a
      00085E A3               [24] 2347 	inc	dptr
      00085F E0               [24] 2348 	movx	a,@dptr
      000860 FE               [12] 2349 	mov	r6,a
      000861 A3               [24] 2350 	inc	dptr
      000862 E0               [24] 2351 	movx	a,@dptr
      000863 FF               [12] 2352 	mov	r7,a
      000864 90 00 A8         [24] 2353 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000867 74 CC            [12] 2354 	mov	a,#0xcc
      000869 F0               [24] 2355 	movx	@dptr,a
      00086A 8D 82            [24] 2356 	mov	dpl,r5
      00086C 8E 83            [24] 2357 	mov	dph,r6
      00086E 8F F0            [24] 2358 	mov	b,r7
      000870 12 02 6C         [24] 2359 	lcall	_ds18b20_writeByte
                                   2360 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:213: ds18b20_writeByte(dev, DS18B20_CMD_WRITE_SCRATCHPAD);
      000873 90 00 D1         [24] 2361 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      000876 E0               [24] 2362 	movx	a,@dptr
      000877 FD               [12] 2363 	mov	r5,a
      000878 A3               [24] 2364 	inc	dptr
      000879 E0               [24] 2365 	movx	a,@dptr
      00087A FE               [12] 2366 	mov	r6,a
      00087B A3               [24] 2367 	inc	dptr
      00087C E0               [24] 2368 	movx	a,@dptr
      00087D FF               [12] 2369 	mov	r7,a
      00087E 90 00 A8         [24] 2370 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000881 74 4E            [12] 2371 	mov	a,#0x4e
      000883 F0               [24] 2372 	movx	@dptr,a
      000884 8D 82            [24] 2373 	mov	dpl,r5
      000886 8E 83            [24] 2374 	mov	dph,r6
      000888 8F F0            [24] 2375 	mov	b,r7
      00088A 12 02 6C         [24] 2376 	lcall	_ds18b20_writeByte
                                   2377 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:214: ds18b20_writeByte(dev, scratchpad[2]);
      00088D 90 00 D1         [24] 2378 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      000890 E0               [24] 2379 	movx	a,@dptr
      000891 FD               [12] 2380 	mov	r5,a
      000892 A3               [24] 2381 	inc	dptr
      000893 E0               [24] 2382 	movx	a,@dptr
      000894 FE               [12] 2383 	mov	r6,a
      000895 A3               [24] 2384 	inc	dptr
      000896 E0               [24] 2385 	movx	a,@dptr
      000897 FF               [12] 2386 	mov	r7,a
      000898 90 00 D6         [24] 2387 	mov	dptr,#(_DS18B20_setResolution_scratchpad_65536_220 + 0x0002)
      00089B E0               [24] 2388 	movx	a,@dptr
      00089C 90 00 A8         [24] 2389 	mov	dptr,#_ds18b20_writeByte_PARM_2
      00089F F0               [24] 2390 	movx	@dptr,a
      0008A0 8D 82            [24] 2391 	mov	dpl,r5
      0008A2 8E 83            [24] 2392 	mov	dph,r6
      0008A4 8F F0            [24] 2393 	mov	b,r7
      0008A6 12 02 6C         [24] 2394 	lcall	_ds18b20_writeByte
                                   2395 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:215: ds18b20_writeByte(dev, scratchpad[3]);
      0008A9 90 00 D1         [24] 2396 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      0008AC E0               [24] 2397 	movx	a,@dptr
      0008AD FD               [12] 2398 	mov	r5,a
      0008AE A3               [24] 2399 	inc	dptr
      0008AF E0               [24] 2400 	movx	a,@dptr
      0008B0 FE               [12] 2401 	mov	r6,a
      0008B1 A3               [24] 2402 	inc	dptr
      0008B2 E0               [24] 2403 	movx	a,@dptr
      0008B3 FF               [12] 2404 	mov	r7,a
      0008B4 90 00 D7         [24] 2405 	mov	dptr,#(_DS18B20_setResolution_scratchpad_65536_220 + 0x0003)
      0008B7 E0               [24] 2406 	movx	a,@dptr
      0008B8 90 00 A8         [24] 2407 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0008BB F0               [24] 2408 	movx	@dptr,a
      0008BC 8D 82            [24] 2409 	mov	dpl,r5
      0008BE 8E 83            [24] 2410 	mov	dph,r6
      0008C0 8F F0            [24] 2411 	mov	b,r7
      0008C2 12 02 6C         [24] 2412 	lcall	_ds18b20_writeByte
                                   2413 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:216: ds18b20_writeByte(dev, resolution);
      0008C5 90 00 D1         [24] 2414 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      0008C8 E0               [24] 2415 	movx	a,@dptr
      0008C9 FD               [12] 2416 	mov	r5,a
      0008CA A3               [24] 2417 	inc	dptr
      0008CB E0               [24] 2418 	movx	a,@dptr
      0008CC FE               [12] 2419 	mov	r6,a
      0008CD A3               [24] 2420 	inc	dptr
      0008CE E0               [24] 2421 	movx	a,@dptr
      0008CF FF               [12] 2422 	mov	r7,a
      0008D0 90 00 D0         [24] 2423 	mov	dptr,#_DS18B20_setResolution_PARM_2
      0008D3 E0               [24] 2424 	movx	a,@dptr
      0008D4 90 00 A8         [24] 2425 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0008D7 F0               [24] 2426 	movx	@dptr,a
      0008D8 8D 82            [24] 2427 	mov	dpl,r5
      0008DA 8E 83            [24] 2428 	mov	dph,r6
      0008DC 8F F0            [24] 2429 	mov	b,r7
      0008DE 12 02 6C         [24] 2430 	lcall	_ds18b20_writeByte
                                   2431 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:218: ds18b20_reset(dev);
      0008E1 90 00 D1         [24] 2432 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      0008E4 E0               [24] 2433 	movx	a,@dptr
      0008E5 FD               [12] 2434 	mov	r5,a
      0008E6 A3               [24] 2435 	inc	dptr
      0008E7 E0               [24] 2436 	movx	a,@dptr
      0008E8 FE               [12] 2437 	mov	r6,a
      0008E9 A3               [24] 2438 	inc	dptr
      0008EA E0               [24] 2439 	movx	a,@dptr
      0008EB FF               [12] 2440 	mov	r7,a
      0008EC 8D 82            [24] 2441 	mov	dpl,r5
      0008EE 8E 83            [24] 2442 	mov	dph,r6
      0008F0 8F F0            [24] 2443 	mov	b,r7
      0008F2 12 01 DD         [24] 2444 	lcall	_ds18b20_reset
                                   2445 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:219: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      0008F5 90 00 D1         [24] 2446 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      0008F8 E0               [24] 2447 	movx	a,@dptr
      0008F9 FD               [12] 2448 	mov	r5,a
      0008FA A3               [24] 2449 	inc	dptr
      0008FB E0               [24] 2450 	movx	a,@dptr
      0008FC FE               [12] 2451 	mov	r6,a
      0008FD A3               [24] 2452 	inc	dptr
      0008FE E0               [24] 2453 	movx	a,@dptr
      0008FF FF               [12] 2454 	mov	r7,a
      000900 90 00 A8         [24] 2455 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000903 74 CC            [12] 2456 	mov	a,#0xcc
      000905 F0               [24] 2457 	movx	@dptr,a
      000906 8D 82            [24] 2458 	mov	dpl,r5
      000908 8E 83            [24] 2459 	mov	dph,r6
      00090A 8F F0            [24] 2460 	mov	b,r7
      00090C 12 02 6C         [24] 2461 	lcall	_ds18b20_writeByte
                                   2462 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:220: ds18b20_writeByte(dev, DS18B20_CMD_COPY_SCRATCHPAD);
      00090F 90 00 D1         [24] 2463 	mov	dptr,#_DS18B20_setResolution_dev_65536_219
      000912 E0               [24] 2464 	movx	a,@dptr
      000913 FD               [12] 2465 	mov	r5,a
      000914 A3               [24] 2466 	inc	dptr
      000915 E0               [24] 2467 	movx	a,@dptr
      000916 FE               [12] 2468 	mov	r6,a
      000917 A3               [24] 2469 	inc	dptr
      000918 E0               [24] 2470 	movx	a,@dptr
      000919 FF               [12] 2471 	mov	r7,a
      00091A 90 00 A8         [24] 2472 	mov	dptr,#_ds18b20_writeByte_PARM_2
      00091D 74 48            [12] 2473 	mov	a,#0x48
      00091F F0               [24] 2474 	movx	@dptr,a
      000920 8D 82            [24] 2475 	mov	dpl,r5
      000922 8E 83            [24] 2476 	mov	dph,r6
      000924 8F F0            [24] 2477 	mov	b,r7
      000926 12 02 6C         [24] 2478 	lcall	_ds18b20_writeByte
                                   2479 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:221: delay(10);
      000929 90 00 0A         [24] 2480 	mov	dptr,#(0x0a&0x00ff)
      00092C E4               [12] 2481 	clr	a
      00092D F5 F0            [12] 2482 	mov	b,a
                                   2483 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:222: }
      00092F 02 4F BF         [24] 2484 	ljmp	_delay
                                   2485 ;------------------------------------------------------------
                                   2486 ;Allocation info for local variables in function 'DS18B20_setAlarmTemperature'
                                   2487 ;------------------------------------------------------------
                                   2488 ;temp_high                 Allocated with name '_DS18B20_setAlarmTemperature_PARM_2'
                                   2489 ;temp_low                  Allocated with name '_DS18B20_setAlarmTemperature_PARM_3'
                                   2490 ;dev                       Allocated with name '_DS18B20_setAlarmTemperature_dev_65536_222'
                                   2491 ;scratchpad                Allocated with name '_DS18B20_setAlarmTemperature_scratchpad_65536_223'
                                   2492 ;------------------------------------------------------------
                                   2493 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:224: void DS18B20_setAlarmTemperature(DS18B20* dev, int8_t temp_high, int8_t temp_low) {
                                   2494 ;	-----------------------------------------
                                   2495 ;	 function DS18B20_setAlarmTemperature
                                   2496 ;	-----------------------------------------
      000932                       2497 _DS18B20_setAlarmTemperature:
      000932 AF F0            [24] 2498 	mov	r7,b
      000934 AE 83            [24] 2499 	mov	r6,dph
      000936 E5 82            [12] 2500 	mov	a,dpl
      000938 90 00 DF         [24] 2501 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      00093B F0               [24] 2502 	movx	@dptr,a
      00093C EE               [12] 2503 	mov	a,r6
      00093D A3               [24] 2504 	inc	dptr
      00093E F0               [24] 2505 	movx	@dptr,a
      00093F EF               [12] 2506 	mov	a,r7
      000940 A3               [24] 2507 	inc	dptr
      000941 F0               [24] 2508 	movx	@dptr,a
                                   2509 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:227: if (ds18b20_readScratchpad(dev, scratchpad)) {
      000942 90 00 DF         [24] 2510 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      000945 E0               [24] 2511 	movx	a,@dptr
      000946 FD               [12] 2512 	mov	r5,a
      000947 A3               [24] 2513 	inc	dptr
      000948 E0               [24] 2514 	movx	a,@dptr
      000949 FE               [12] 2515 	mov	r6,a
      00094A A3               [24] 2516 	inc	dptr
      00094B E0               [24] 2517 	movx	a,@dptr
      00094C FF               [12] 2518 	mov	r7,a
      00094D 90 00 B0         [24] 2519 	mov	dptr,#_ds18b20_readScratchpad_PARM_2
      000950 74 E2            [12] 2520 	mov	a,#_DS18B20_setAlarmTemperature_scratchpad_65536_223
      000952 F0               [24] 2521 	movx	@dptr,a
      000953 74 00            [12] 2522 	mov	a,#(_DS18B20_setAlarmTemperature_scratchpad_65536_223 >> 8)
      000955 A3               [24] 2523 	inc	dptr
      000956 F0               [24] 2524 	movx	@dptr,a
      000957 E4               [12] 2525 	clr	a
      000958 A3               [24] 2526 	inc	dptr
      000959 F0               [24] 2527 	movx	@dptr,a
      00095A 8D 82            [24] 2528 	mov	dpl,r5
      00095C 8E 83            [24] 2529 	mov	dph,r6
      00095E 8F F0            [24] 2530 	mov	b,r7
      000960 12 03 DE         [24] 2531 	lcall	_ds18b20_readScratchpad
      000963 E5 82            [12] 2532 	mov	a,dpl
      000965 60 01            [24] 2533 	jz	00102$
                                   2534 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:228: return;
      000967 22               [24] 2535 	ret
      000968                       2536 00102$:
                                   2537 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:231: ds18b20_reset(dev);
      000968 90 00 DF         [24] 2538 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      00096B E0               [24] 2539 	movx	a,@dptr
      00096C FD               [12] 2540 	mov	r5,a
      00096D A3               [24] 2541 	inc	dptr
      00096E E0               [24] 2542 	movx	a,@dptr
      00096F FE               [12] 2543 	mov	r6,a
      000970 A3               [24] 2544 	inc	dptr
      000971 E0               [24] 2545 	movx	a,@dptr
      000972 FF               [12] 2546 	mov	r7,a
      000973 8D 82            [24] 2547 	mov	dpl,r5
      000975 8E 83            [24] 2548 	mov	dph,r6
      000977 8F F0            [24] 2549 	mov	b,r7
      000979 12 01 DD         [24] 2550 	lcall	_ds18b20_reset
                                   2551 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:232: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      00097C 90 00 DF         [24] 2552 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      00097F E0               [24] 2553 	movx	a,@dptr
      000980 FD               [12] 2554 	mov	r5,a
      000981 A3               [24] 2555 	inc	dptr
      000982 E0               [24] 2556 	movx	a,@dptr
      000983 FE               [12] 2557 	mov	r6,a
      000984 A3               [24] 2558 	inc	dptr
      000985 E0               [24] 2559 	movx	a,@dptr
      000986 FF               [12] 2560 	mov	r7,a
      000987 90 00 A8         [24] 2561 	mov	dptr,#_ds18b20_writeByte_PARM_2
      00098A 74 CC            [12] 2562 	mov	a,#0xcc
      00098C F0               [24] 2563 	movx	@dptr,a
      00098D 8D 82            [24] 2564 	mov	dpl,r5
      00098F 8E 83            [24] 2565 	mov	dph,r6
      000991 8F F0            [24] 2566 	mov	b,r7
      000993 12 02 6C         [24] 2567 	lcall	_ds18b20_writeByte
                                   2568 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:233: ds18b20_writeByte(dev, DS18B20_CMD_WRITE_SCRATCHPAD);
      000996 90 00 DF         [24] 2569 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      000999 E0               [24] 2570 	movx	a,@dptr
      00099A FD               [12] 2571 	mov	r5,a
      00099B A3               [24] 2572 	inc	dptr
      00099C E0               [24] 2573 	movx	a,@dptr
      00099D FE               [12] 2574 	mov	r6,a
      00099E A3               [24] 2575 	inc	dptr
      00099F E0               [24] 2576 	movx	a,@dptr
      0009A0 FF               [12] 2577 	mov	r7,a
      0009A1 90 00 A8         [24] 2578 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0009A4 74 4E            [12] 2579 	mov	a,#0x4e
      0009A6 F0               [24] 2580 	movx	@dptr,a
      0009A7 8D 82            [24] 2581 	mov	dpl,r5
      0009A9 8E 83            [24] 2582 	mov	dph,r6
      0009AB 8F F0            [24] 2583 	mov	b,r7
      0009AD 12 02 6C         [24] 2584 	lcall	_ds18b20_writeByte
                                   2585 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:234: ds18b20_writeByte(dev, (uint8_t)temp_high);
      0009B0 90 00 DF         [24] 2586 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      0009B3 E0               [24] 2587 	movx	a,@dptr
      0009B4 FD               [12] 2588 	mov	r5,a
      0009B5 A3               [24] 2589 	inc	dptr
      0009B6 E0               [24] 2590 	movx	a,@dptr
      0009B7 FE               [12] 2591 	mov	r6,a
      0009B8 A3               [24] 2592 	inc	dptr
      0009B9 E0               [24] 2593 	movx	a,@dptr
      0009BA FF               [12] 2594 	mov	r7,a
      0009BB 90 00 DD         [24] 2595 	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_2
      0009BE E0               [24] 2596 	movx	a,@dptr
      0009BF 90 00 A8         [24] 2597 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0009C2 F0               [24] 2598 	movx	@dptr,a
      0009C3 8D 82            [24] 2599 	mov	dpl,r5
      0009C5 8E 83            [24] 2600 	mov	dph,r6
      0009C7 8F F0            [24] 2601 	mov	b,r7
      0009C9 12 02 6C         [24] 2602 	lcall	_ds18b20_writeByte
                                   2603 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:235: ds18b20_writeByte(dev, (uint8_t)temp_low);
      0009CC 90 00 DF         [24] 2604 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      0009CF E0               [24] 2605 	movx	a,@dptr
      0009D0 FD               [12] 2606 	mov	r5,a
      0009D1 A3               [24] 2607 	inc	dptr
      0009D2 E0               [24] 2608 	movx	a,@dptr
      0009D3 FE               [12] 2609 	mov	r6,a
      0009D4 A3               [24] 2610 	inc	dptr
      0009D5 E0               [24] 2611 	movx	a,@dptr
      0009D6 FF               [12] 2612 	mov	r7,a
      0009D7 90 00 DE         [24] 2613 	mov	dptr,#_DS18B20_setAlarmTemperature_PARM_3
      0009DA E0               [24] 2614 	movx	a,@dptr
      0009DB 90 00 A8         [24] 2615 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0009DE F0               [24] 2616 	movx	@dptr,a
      0009DF 8D 82            [24] 2617 	mov	dpl,r5
      0009E1 8E 83            [24] 2618 	mov	dph,r6
      0009E3 8F F0            [24] 2619 	mov	b,r7
      0009E5 12 02 6C         [24] 2620 	lcall	_ds18b20_writeByte
                                   2621 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:236: ds18b20_writeByte(dev, scratchpad[4]);
      0009E8 90 00 DF         [24] 2622 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      0009EB E0               [24] 2623 	movx	a,@dptr
      0009EC FD               [12] 2624 	mov	r5,a
      0009ED A3               [24] 2625 	inc	dptr
      0009EE E0               [24] 2626 	movx	a,@dptr
      0009EF FE               [12] 2627 	mov	r6,a
      0009F0 A3               [24] 2628 	inc	dptr
      0009F1 E0               [24] 2629 	movx	a,@dptr
      0009F2 FF               [12] 2630 	mov	r7,a
      0009F3 90 00 E6         [24] 2631 	mov	dptr,#(_DS18B20_setAlarmTemperature_scratchpad_65536_223 + 0x0004)
      0009F6 E0               [24] 2632 	movx	a,@dptr
      0009F7 90 00 A8         [24] 2633 	mov	dptr,#_ds18b20_writeByte_PARM_2
      0009FA F0               [24] 2634 	movx	@dptr,a
      0009FB 8D 82            [24] 2635 	mov	dpl,r5
      0009FD 8E 83            [24] 2636 	mov	dph,r6
      0009FF 8F F0            [24] 2637 	mov	b,r7
      000A01 12 02 6C         [24] 2638 	lcall	_ds18b20_writeByte
                                   2639 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:238: ds18b20_reset(dev);
      000A04 90 00 DF         [24] 2640 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      000A07 E0               [24] 2641 	movx	a,@dptr
      000A08 FD               [12] 2642 	mov	r5,a
      000A09 A3               [24] 2643 	inc	dptr
      000A0A E0               [24] 2644 	movx	a,@dptr
      000A0B FE               [12] 2645 	mov	r6,a
      000A0C A3               [24] 2646 	inc	dptr
      000A0D E0               [24] 2647 	movx	a,@dptr
      000A0E FF               [12] 2648 	mov	r7,a
      000A0F 8D 82            [24] 2649 	mov	dpl,r5
      000A11 8E 83            [24] 2650 	mov	dph,r6
      000A13 8F F0            [24] 2651 	mov	b,r7
      000A15 12 01 DD         [24] 2652 	lcall	_ds18b20_reset
                                   2653 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:239: ds18b20_writeByte(dev, DS18B20_CMD_SKIP_ROM);
      000A18 90 00 DF         [24] 2654 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      000A1B E0               [24] 2655 	movx	a,@dptr
      000A1C FD               [12] 2656 	mov	r5,a
      000A1D A3               [24] 2657 	inc	dptr
      000A1E E0               [24] 2658 	movx	a,@dptr
      000A1F FE               [12] 2659 	mov	r6,a
      000A20 A3               [24] 2660 	inc	dptr
      000A21 E0               [24] 2661 	movx	a,@dptr
      000A22 FF               [12] 2662 	mov	r7,a
      000A23 90 00 A8         [24] 2663 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000A26 74 CC            [12] 2664 	mov	a,#0xcc
      000A28 F0               [24] 2665 	movx	@dptr,a
      000A29 8D 82            [24] 2666 	mov	dpl,r5
      000A2B 8E 83            [24] 2667 	mov	dph,r6
      000A2D 8F F0            [24] 2668 	mov	b,r7
      000A2F 12 02 6C         [24] 2669 	lcall	_ds18b20_writeByte
                                   2670 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:240: ds18b20_writeByte(dev, DS18B20_CMD_COPY_SCRATCHPAD);
      000A32 90 00 DF         [24] 2671 	mov	dptr,#_DS18B20_setAlarmTemperature_dev_65536_222
      000A35 E0               [24] 2672 	movx	a,@dptr
      000A36 FD               [12] 2673 	mov	r5,a
      000A37 A3               [24] 2674 	inc	dptr
      000A38 E0               [24] 2675 	movx	a,@dptr
      000A39 FE               [12] 2676 	mov	r6,a
      000A3A A3               [24] 2677 	inc	dptr
      000A3B E0               [24] 2678 	movx	a,@dptr
      000A3C FF               [12] 2679 	mov	r7,a
      000A3D 90 00 A8         [24] 2680 	mov	dptr,#_ds18b20_writeByte_PARM_2
      000A40 74 48            [12] 2681 	mov	a,#0x48
      000A42 F0               [24] 2682 	movx	@dptr,a
      000A43 8D 82            [24] 2683 	mov	dpl,r5
      000A45 8E 83            [24] 2684 	mov	dph,r6
      000A47 8F F0            [24] 2685 	mov	b,r7
      000A49 12 02 6C         [24] 2686 	lcall	_ds18b20_writeByte
                                   2687 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:241: delay(10);
      000A4C 90 00 0A         [24] 2688 	mov	dptr,#(0x0a&0x00ff)
      000A4F E4               [12] 2689 	clr	a
      000A50 F5 F0            [12] 2690 	mov	b,a
                                   2691 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\lib\DS18B20\DS18B20.c:242: }
      000A52 02 4F BF         [24] 2692 	ljmp	_delay
                                   2693 	.area CSEG    (CODE)
                                   2694 	.area CONST   (CODE)
                                   2695 	.area XINIT   (CODE)
                                   2696 	.area CABS    (ABS,CODE)
