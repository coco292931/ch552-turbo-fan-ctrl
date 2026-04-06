                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module ch552_turbo_fan_ctrl_ino
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _UIF_BUS_RST
                                     12 	.globl _UIF_DETECT
                                     13 	.globl _UIF_TRANSFER
                                     14 	.globl _UIF_SUSPEND
                                     15 	.globl _UIF_HST_SOF
                                     16 	.globl _UIF_FIFO_OV
                                     17 	.globl _U_SIE_FREE
                                     18 	.globl _U_TOG_OK
                                     19 	.globl _U_IS_NAK
                                     20 	.globl _S0_R_FIFO0
                                     21 	.globl _S0_R_FIFO1
                                     22 	.globl _S0_T_FIFO
                                     23 	.globl _S0_FREE
                                     24 	.globl _S0_IF_BYTE
                                     25 	.globl _S0_IF_FIRST
                                     26 	.globl _S0_IF_OV
                                     27 	.globl _S0_FST_ACT
                                     28 	.globl _CP_RL2
                                     29 	.globl _C_T2
                                     30 	.globl _TR2
                                     31 	.globl _EXEN2
                                     32 	.globl _TCLK
                                     33 	.globl _RCLK
                                     34 	.globl _EXF2
                                     35 	.globl _CAP1F
                                     36 	.globl _TF2
                                     37 	.globl _RI
                                     38 	.globl _TI
                                     39 	.globl _RB8
                                     40 	.globl _TB8
                                     41 	.globl _REN
                                     42 	.globl _SM2
                                     43 	.globl _SM1
                                     44 	.globl _SM0
                                     45 	.globl _IT0
                                     46 	.globl _IE0
                                     47 	.globl _IT1
                                     48 	.globl _IE1
                                     49 	.globl _TR0
                                     50 	.globl _TF0
                                     51 	.globl _TR1
                                     52 	.globl _TF1
                                     53 	.globl _P4_OUT_0
                                     54 	.globl _P4_OUT_1
                                     55 	.globl _P4_OUT_2
                                     56 	.globl _P4_OUT_3
                                     57 	.globl _P4_OUT_4
                                     58 	.globl _P4_OUT_5
                                     59 	.globl _P4_OUT_6
                                     60 	.globl _P4_OUT_7
                                     61 	.globl _RXD1_
                                     62 	.globl _LED2
                                     63 	.globl _CAP3_
                                     64 	.globl _PWM3_
                                     65 	.globl _PWM1_
                                     66 	.globl _TXD1_
                                     67 	.globl _TNOW_
                                     68 	.globl _LED3
                                     69 	.globl _PWM2_
                                     70 	.globl _SCS_
                                     71 	.globl _SCK_
                                     72 	.globl _P3_0
                                     73 	.globl _P3_1
                                     74 	.globl _P3_2
                                     75 	.globl _P3_3
                                     76 	.globl _P3_4
                                     77 	.globl _P3_5
                                     78 	.globl _P3_6
                                     79 	.globl _P3_7
                                     80 	.globl _RXD
                                     81 	.globl _TXD
                                     82 	.globl _INT0
                                     83 	.globl _LED0
                                     84 	.globl _INT1
                                     85 	.globl _LED1
                                     86 	.globl _T0
                                     87 	.globl _XCS0
                                     88 	.globl _LEDC
                                     89 	.globl _T1
                                     90 	.globl _DA6
                                     91 	.globl _WR
                                     92 	.globl _RD
                                     93 	.globl _P2_0
                                     94 	.globl _P2_1
                                     95 	.globl _P2_2
                                     96 	.globl _P2_3
                                     97 	.globl _P2_4
                                     98 	.globl _P2_5
                                     99 	.globl _P2_6
                                    100 	.globl _P2_7
                                    101 	.globl _MOSI1
                                    102 	.globl _MISO1
                                    103 	.globl _SCK1
                                    104 	.globl _PWM1
                                    105 	.globl _CAP2_
                                    106 	.globl _T2EX_
                                    107 	.globl _PWM2
                                    108 	.globl _TNOW
                                    109 	.globl _RXD1
                                    110 	.globl _DA7
                                    111 	.globl _TXD1
                                    112 	.globl _P1_0
                                    113 	.globl _P1_1
                                    114 	.globl _P1_2
                                    115 	.globl _P1_3
                                    116 	.globl _P1_4
                                    117 	.globl _P1_5
                                    118 	.globl _P1_6
                                    119 	.globl _P1_7
                                    120 	.globl _CAP1
                                    121 	.globl _T2
                                    122 	.globl _CAP2
                                    123 	.globl _T2EX
                                    124 	.globl _CAP3
                                    125 	.globl _PWM3
                                    126 	.globl _SCS
                                    127 	.globl _MOSI
                                    128 	.globl _MISO
                                    129 	.globl _SCK
                                    130 	.globl _AIN0
                                    131 	.globl _AIN1
                                    132 	.globl _AIN2
                                    133 	.globl _AIN3
                                    134 	.globl _AIN4
                                    135 	.globl _AIN5
                                    136 	.globl _AIN6
                                    137 	.globl _AIN7
                                    138 	.globl _P0_0
                                    139 	.globl _P0_1
                                    140 	.globl _P0_2
                                    141 	.globl _P0_3
                                    142 	.globl _P0_4
                                    143 	.globl _P0_5
                                    144 	.globl _P0_6
                                    145 	.globl _P0_7
                                    146 	.globl _UDTR
                                    147 	.globl _URTS
                                    148 	.globl _RXD_
                                    149 	.globl _TXD_
                                    150 	.globl _UCTS
                                    151 	.globl _UDSR
                                    152 	.globl _URI
                                    153 	.globl _UDCD
                                    154 	.globl _IE_SPI0
                                    155 	.globl _IE_TMR3
                                    156 	.globl _IE_USB
                                    157 	.globl _IE_ADC
                                    158 	.globl _IE_UART1
                                    159 	.globl _IE_PWM1
                                    160 	.globl _IE_GPIO
                                    161 	.globl _IE_WDOG
                                    162 	.globl _PX0
                                    163 	.globl _PT0
                                    164 	.globl _PX1
                                    165 	.globl _PT1
                                    166 	.globl _PS
                                    167 	.globl _PT2
                                    168 	.globl _PL_FLAG
                                    169 	.globl _PH_FLAG
                                    170 	.globl _EX0
                                    171 	.globl _ET0
                                    172 	.globl _EX1
                                    173 	.globl _ET1
                                    174 	.globl _ES
                                    175 	.globl _ET2
                                    176 	.globl _E_DIS
                                    177 	.globl _EA
                                    178 	.globl _P
                                    179 	.globl _F1
                                    180 	.globl _OV
                                    181 	.globl _RS0
                                    182 	.globl _RS1
                                    183 	.globl _F0
                                    184 	.globl _AC
                                    185 	.globl _CY
                                    186 	.globl _USB_DMA_AH
                                    187 	.globl _USB_DMA_AL
                                    188 	.globl _USB_DMA
                                    189 	.globl _UHUB1_CTRL
                                    190 	.globl _UDEV_CTRL
                                    191 	.globl _USB_DEV_AD
                                    192 	.globl _USB_CTRL
                                    193 	.globl _USB_INT_EN
                                    194 	.globl _UEP4_T_LEN
                                    195 	.globl _UEP4_CTRL
                                    196 	.globl _UEP0_T_LEN
                                    197 	.globl _UEP0_CTRL
                                    198 	.globl _USB_HUB_ST
                                    199 	.globl _USB_MIS_ST
                                    200 	.globl _USB_INT_ST
                                    201 	.globl _USB_INT_FG
                                    202 	.globl _UEP3_T_LEN
                                    203 	.globl _UEP3_CTRL
                                    204 	.globl _UEP2_T_LEN
                                    205 	.globl _UEP2_CTRL
                                    206 	.globl _UEP1_T_LEN
                                    207 	.globl _UEP1_CTRL
                                    208 	.globl _USB_RX_LEN
                                    209 	.globl _ADC_EX_SW
                                    210 	.globl _ADC_SETUP
                                    211 	.globl _ADC_FIFO_H
                                    212 	.globl _ADC_FIFO_L
                                    213 	.globl _ADC_FIFO
                                    214 	.globl _ADC_CHANN
                                    215 	.globl _ADC_CTRL
                                    216 	.globl _ADC_STAT
                                    217 	.globl _ADC_CK_SE
                                    218 	.globl _ADC_DMA_CN
                                    219 	.globl _ADC_DMA_AH
                                    220 	.globl _ADC_DMA_AL
                                    221 	.globl _ADC_DMA
                                    222 	.globl _SER1_ADDR
                                    223 	.globl _SER1_MSR
                                    224 	.globl _SER1_LSR
                                    225 	.globl _SER1_MCR
                                    226 	.globl _SER1_LCR
                                    227 	.globl _SER1_IIR
                                    228 	.globl _SER1_IER
                                    229 	.globl _SER1_FIFO
                                    230 	.globl _SPI1_CK_SE
                                    231 	.globl _SPI1_CTRL
                                    232 	.globl _SPI1_DATA
                                    233 	.globl _SPI1_STAT
                                    234 	.globl _SPI0_SETUP
                                    235 	.globl _SPI0_CK_SE
                                    236 	.globl _SPI0_CTRL
                                    237 	.globl _SPI0_DATA
                                    238 	.globl _SPI0_STAT
                                    239 	.globl _PWM_CYCLE
                                    240 	.globl _PWM_CK_SE
                                    241 	.globl _PWM_CTRL
                                    242 	.globl _PWM_DATA
                                    243 	.globl _PWM_DATA2
                                    244 	.globl _T3_FIFO_H
                                    245 	.globl _T3_FIFO_L
                                    246 	.globl _T3_FIFO
                                    247 	.globl _T3_DMA_AH
                                    248 	.globl _T3_DMA_AL
                                    249 	.globl _T3_DMA
                                    250 	.globl _T3_DMA_CN
                                    251 	.globl _T3_CTRL
                                    252 	.globl _T3_STAT
                                    253 	.globl _T3_END_H
                                    254 	.globl _T3_END_L
                                    255 	.globl _T3_END
                                    256 	.globl _T3_COUNT_H
                                    257 	.globl _T3_COUNT_L
                                    258 	.globl _T3_COUNT
                                    259 	.globl _T3_SETUP
                                    260 	.globl _TH2
                                    261 	.globl _TL2
                                    262 	.globl _T2COUNT
                                    263 	.globl _RCAP2H
                                    264 	.globl _RCAP2L
                                    265 	.globl _RCAP2
                                    266 	.globl _T2MOD
                                    267 	.globl _T2CON
                                    268 	.globl _SBUF
                                    269 	.globl _SCON
                                    270 	.globl _TH1
                                    271 	.globl _TH0
                                    272 	.globl _TL1
                                    273 	.globl _TL0
                                    274 	.globl _TMOD
                                    275 	.globl _TCON
                                    276 	.globl _XBUS_SPEED
                                    277 	.globl _XBUS_AUX
                                    278 	.globl _PIN_FUNC
                                    279 	.globl _PORT_CFG
                                    280 	.globl _P5_IN
                                    281 	.globl _P4_PU
                                    282 	.globl _P4_DIR
                                    283 	.globl _P4_IN
                                    284 	.globl _P4_OUT
                                    285 	.globl _P3_PU
                                    286 	.globl _P3_DIR
                                    287 	.globl _P3
                                    288 	.globl _P2_PU
                                    289 	.globl _P2_DIR
                                    290 	.globl _P2
                                    291 	.globl _P1_PU
                                    292 	.globl _P1_DIR
                                    293 	.globl _P1_IE
                                    294 	.globl _P1
                                    295 	.globl _P0_PU
                                    296 	.globl _P0_DIR
                                    297 	.globl _P0
                                    298 	.globl _ROM_CTRL
                                    299 	.globl _ROM_DATA_H
                                    300 	.globl _ROM_DATA_L
                                    301 	.globl _ROM_DATA
                                    302 	.globl _ROM_ADDR_H
                                    303 	.globl _ROM_ADDR_L
                                    304 	.globl _ROM_ADDR
                                    305 	.globl _GPIO_IE
                                    306 	.globl _IP_EX
                                    307 	.globl _IE_EX
                                    308 	.globl _IP
                                    309 	.globl _IE
                                    310 	.globl _WDOG_COUNT
                                    311 	.globl _RESET_KEEP
                                    312 	.globl _WAKE_CTRL
                                    313 	.globl _SLEEP_CTRL
                                    314 	.globl _CLOCK_CFG
                                    315 	.globl _PLL_CFG
                                    316 	.globl _PCON
                                    317 	.globl _GLOBAL_CFG
                                    318 	.globl _SAFE_MOD
                                    319 	.globl _DPH
                                    320 	.globl _DPL
                                    321 	.globl _SP
                                    322 	.globl _B
                                    323 	.globl _ACC
                                    324 	.globl _PSW
                                    325 	.globl _dummy_variable
                                    326 	.globl _LED_DMA_XL
                                    327 	.globl _LED_DMA_XH
                                    328 	.globl _LED_DMA_CN
                                    329 	.globl _LED_DMA_AL
                                    330 	.globl _LED_DMA_AH
                                    331 	.globl _LED_CK_SE
                                    332 	.globl _LED_DATA
                                    333 	.globl _LED_CTRL
                                    334 	.globl _LED_STAT
                                    335 	.globl _UEP3_DMA_L
                                    336 	.globl _UEP3_DMA_H
                                    337 	.globl _UEP2_DMA_L
                                    338 	.globl _UEP2_DMA_H
                                    339 	.globl _UEP1_DMA_L
                                    340 	.globl _UEP1_DMA_H
                                    341 	.globl _UEP0_DMA_L
                                    342 	.globl _UEP0_DMA_H
                                    343 	.globl _UEP2_3_MOD
                                    344 	.globl _UEP4_1_MOD
                                    345 	.globl _pLED_DMA_XL
                                    346 	.globl _pLED_DMA_XH
                                    347 	.globl _pLED_DMA_CN
                                    348 	.globl _pLED_DMA_AL
                                    349 	.globl _pLED_DMA_AH
                                    350 	.globl _pLED_CK_SE
                                    351 	.globl _pLED_DATA
                                    352 	.globl _pLED_CTRL
                                    353 	.globl _pLED_STAT
                                    354 	.globl _pUEP3_DMA_L
                                    355 	.globl _pUEP3_DMA_H
                                    356 	.globl _pUEP2_DMA_L
                                    357 	.globl _pUEP2_DMA_H
                                    358 	.globl _pUEP1_DMA_L
                                    359 	.globl _pUEP1_DMA_H
                                    360 	.globl _pUEP0_DMA_L
                                    361 	.globl _pUEP0_DMA_H
                                    362 	.globl _pUEP2_3_MOD
                                    363 	.globl _pUEP4_1_MOD
                                    364 ;--------------------------------------------------------
                                    365 ; special function registers
                                    366 ;--------------------------------------------------------
                                    367 	.area RSEG    (ABS,DATA)
      000000                        368 	.org 0x0000
                           0000D0   369 _PSW	=	0x00d0
                           0000E0   370 _ACC	=	0x00e0
                           0000F0   371 _B	=	0x00f0
                           000081   372 _SP	=	0x0081
                           000082   373 _DPL	=	0x0082
                           000083   374 _DPH	=	0x0083
                           0000A1   375 _SAFE_MOD	=	0x00a1
                           0000B1   376 _GLOBAL_CFG	=	0x00b1
                           000087   377 _PCON	=	0x0087
                           0000B2   378 _PLL_CFG	=	0x00b2
                           0000B3   379 _CLOCK_CFG	=	0x00b3
                           0000EA   380 _SLEEP_CTRL	=	0x00ea
                           0000EB   381 _WAKE_CTRL	=	0x00eb
                           0000FE   382 _RESET_KEEP	=	0x00fe
                           0000FF   383 _WDOG_COUNT	=	0x00ff
                           0000A8   384 _IE	=	0x00a8
                           0000B8   385 _IP	=	0x00b8
                           0000E8   386 _IE_EX	=	0x00e8
                           0000E9   387 _IP_EX	=	0x00e9
                           0000CF   388 _GPIO_IE	=	0x00cf
                           008584   389 _ROM_ADDR	=	0x8584
                           000084   390 _ROM_ADDR_L	=	0x0084
                           000085   391 _ROM_ADDR_H	=	0x0085
                           008F8E   392 _ROM_DATA	=	0x8f8e
                           00008E   393 _ROM_DATA_L	=	0x008e
                           00008F   394 _ROM_DATA_H	=	0x008f
                           000086   395 _ROM_CTRL	=	0x0086
                           000080   396 _P0	=	0x0080
                           0000C4   397 _P0_DIR	=	0x00c4
                           0000C5   398 _P0_PU	=	0x00c5
                           000090   399 _P1	=	0x0090
                           0000B9   400 _P1_IE	=	0x00b9
                           0000BA   401 _P1_DIR	=	0x00ba
                           0000BB   402 _P1_PU	=	0x00bb
                           0000A0   403 _P2	=	0x00a0
                           0000BC   404 _P2_DIR	=	0x00bc
                           0000BD   405 _P2_PU	=	0x00bd
                           0000B0   406 _P3	=	0x00b0
                           0000BE   407 _P3_DIR	=	0x00be
                           0000BF   408 _P3_PU	=	0x00bf
                           0000C0   409 _P4_OUT	=	0x00c0
                           0000C1   410 _P4_IN	=	0x00c1
                           0000C2   411 _P4_DIR	=	0x00c2
                           0000C3   412 _P4_PU	=	0x00c3
                           0000C7   413 _P5_IN	=	0x00c7
                           0000C6   414 _PORT_CFG	=	0x00c6
                           0000CE   415 _PIN_FUNC	=	0x00ce
                           0000A2   416 _XBUS_AUX	=	0x00a2
                           0000FD   417 _XBUS_SPEED	=	0x00fd
                           000088   418 _TCON	=	0x0088
                           000089   419 _TMOD	=	0x0089
                           00008A   420 _TL0	=	0x008a
                           00008B   421 _TL1	=	0x008b
                           00008C   422 _TH0	=	0x008c
                           00008D   423 _TH1	=	0x008d
                           000098   424 _SCON	=	0x0098
                           000099   425 _SBUF	=	0x0099
                           0000C8   426 _T2CON	=	0x00c8
                           0000C9   427 _T2MOD	=	0x00c9
                           00CBCA   428 _RCAP2	=	0xcbca
                           0000CA   429 _RCAP2L	=	0x00ca
                           0000CB   430 _RCAP2H	=	0x00cb
                           00CDCC   431 _T2COUNT	=	0xcdcc
                           0000CC   432 _TL2	=	0x00cc
                           0000CD   433 _TH2	=	0x00cd
                           0000A3   434 _T3_SETUP	=	0x00a3
                           00A5A4   435 _T3_COUNT	=	0xa5a4
                           0000A4   436 _T3_COUNT_L	=	0x00a4
                           0000A5   437 _T3_COUNT_H	=	0x00a5
                           00A7A6   438 _T3_END	=	0xa7a6
                           0000A6   439 _T3_END_L	=	0x00a6
                           0000A7   440 _T3_END_H	=	0x00a7
                           0000A9   441 _T3_STAT	=	0x00a9
                           0000AA   442 _T3_CTRL	=	0x00aa
                           0000AB   443 _T3_DMA_CN	=	0x00ab
                           00ADAC   444 _T3_DMA	=	0xadac
                           0000AC   445 _T3_DMA_AL	=	0x00ac
                           0000AD   446 _T3_DMA_AH	=	0x00ad
                           00AFAE   447 _T3_FIFO	=	0xafae
                           0000AE   448 _T3_FIFO_L	=	0x00ae
                           0000AF   449 _T3_FIFO_H	=	0x00af
                           00009B   450 _PWM_DATA2	=	0x009b
                           00009C   451 _PWM_DATA	=	0x009c
                           00009D   452 _PWM_CTRL	=	0x009d
                           00009E   453 _PWM_CK_SE	=	0x009e
                           00009F   454 _PWM_CYCLE	=	0x009f
                           0000F8   455 _SPI0_STAT	=	0x00f8
                           0000F9   456 _SPI0_DATA	=	0x00f9
                           0000FA   457 _SPI0_CTRL	=	0x00fa
                           0000FB   458 _SPI0_CK_SE	=	0x00fb
                           0000FC   459 _SPI0_SETUP	=	0x00fc
                           0000B4   460 _SPI1_STAT	=	0x00b4
                           0000B5   461 _SPI1_DATA	=	0x00b5
                           0000B6   462 _SPI1_CTRL	=	0x00b6
                           0000B7   463 _SPI1_CK_SE	=	0x00b7
                           00009A   464 _SER1_FIFO	=	0x009a
                           000091   465 _SER1_IER	=	0x0091
                           000092   466 _SER1_IIR	=	0x0092
                           000093   467 _SER1_LCR	=	0x0093
                           000094   468 _SER1_MCR	=	0x0094
                           000095   469 _SER1_LSR	=	0x0095
                           000096   470 _SER1_MSR	=	0x0096
                           000097   471 _SER1_ADDR	=	0x0097
                           00EDEC   472 _ADC_DMA	=	0xedec
                           0000EC   473 _ADC_DMA_AL	=	0x00ec
                           0000ED   474 _ADC_DMA_AH	=	0x00ed
                           0000EE   475 _ADC_DMA_CN	=	0x00ee
                           0000EF   476 _ADC_CK_SE	=	0x00ef
                           0000F1   477 _ADC_STAT	=	0x00f1
                           0000F2   478 _ADC_CTRL	=	0x00f2
                           0000F3   479 _ADC_CHANN	=	0x00f3
                           00F5F4   480 _ADC_FIFO	=	0xf5f4
                           0000F4   481 _ADC_FIFO_L	=	0x00f4
                           0000F5   482 _ADC_FIFO_H	=	0x00f5
                           0000F6   483 _ADC_SETUP	=	0x00f6
                           0000F7   484 _ADC_EX_SW	=	0x00f7
                           0000D1   485 _USB_RX_LEN	=	0x00d1
                           0000D2   486 _UEP1_CTRL	=	0x00d2
                           0000D3   487 _UEP1_T_LEN	=	0x00d3
                           0000D4   488 _UEP2_CTRL	=	0x00d4
                           0000D5   489 _UEP2_T_LEN	=	0x00d5
                           0000D6   490 _UEP3_CTRL	=	0x00d6
                           0000D7   491 _UEP3_T_LEN	=	0x00d7
                           0000D8   492 _USB_INT_FG	=	0x00d8
                           0000D9   493 _USB_INT_ST	=	0x00d9
                           0000DA   494 _USB_MIS_ST	=	0x00da
                           0000DB   495 _USB_HUB_ST	=	0x00db
                           0000DC   496 _UEP0_CTRL	=	0x00dc
                           0000DD   497 _UEP0_T_LEN	=	0x00dd
                           0000DE   498 _UEP4_CTRL	=	0x00de
                           0000DF   499 _UEP4_T_LEN	=	0x00df
                           0000E1   500 _USB_INT_EN	=	0x00e1
                           0000E2   501 _USB_CTRL	=	0x00e2
                           0000E3   502 _USB_DEV_AD	=	0x00e3
                           0000E4   503 _UDEV_CTRL	=	0x00e4
                           0000E5   504 _UHUB1_CTRL	=	0x00e5
                           00E7E6   505 _USB_DMA	=	0xe7e6
                           0000E6   506 _USB_DMA_AL	=	0x00e6
                           0000E7   507 _USB_DMA_AH	=	0x00e7
                                    508 ;--------------------------------------------------------
                                    509 ; special function bits
                                    510 ;--------------------------------------------------------
                                    511 	.area RSEG    (ABS,DATA)
      000000                        512 	.org 0x0000
                           0000D7   513 _CY	=	0x00d7
                           0000D6   514 _AC	=	0x00d6
                           0000D5   515 _F0	=	0x00d5
                           0000D4   516 _RS1	=	0x00d4
                           0000D3   517 _RS0	=	0x00d3
                           0000D2   518 _OV	=	0x00d2
                           0000D1   519 _F1	=	0x00d1
                           0000D0   520 _P	=	0x00d0
                           0000AF   521 _EA	=	0x00af
                           0000AE   522 _E_DIS	=	0x00ae
                           0000AD   523 _ET2	=	0x00ad
                           0000AC   524 _ES	=	0x00ac
                           0000AB   525 _ET1	=	0x00ab
                           0000AA   526 _EX1	=	0x00aa
                           0000A9   527 _ET0	=	0x00a9
                           0000A8   528 _EX0	=	0x00a8
                           0000BF   529 _PH_FLAG	=	0x00bf
                           0000BE   530 _PL_FLAG	=	0x00be
                           0000BD   531 _PT2	=	0x00bd
                           0000BC   532 _PS	=	0x00bc
                           0000BB   533 _PT1	=	0x00bb
                           0000BA   534 _PX1	=	0x00ba
                           0000B9   535 _PT0	=	0x00b9
                           0000B8   536 _PX0	=	0x00b8
                           0000EF   537 _IE_WDOG	=	0x00ef
                           0000EE   538 _IE_GPIO	=	0x00ee
                           0000ED   539 _IE_PWM1	=	0x00ed
                           0000EC   540 _IE_UART1	=	0x00ec
                           0000EB   541 _IE_ADC	=	0x00eb
                           0000EA   542 _IE_USB	=	0x00ea
                           0000E9   543 _IE_TMR3	=	0x00e9
                           0000E8   544 _IE_SPI0	=	0x00e8
                           000087   545 _UDCD	=	0x0087
                           000086   546 _URI	=	0x0086
                           000085   547 _UDSR	=	0x0085
                           000084   548 _UCTS	=	0x0084
                           000083   549 _TXD_	=	0x0083
                           000082   550 _RXD_	=	0x0082
                           000081   551 _URTS	=	0x0081
                           000080   552 _UDTR	=	0x0080
                           000087   553 _P0_7	=	0x0087
                           000086   554 _P0_6	=	0x0086
                           000085   555 _P0_5	=	0x0085
                           000084   556 _P0_4	=	0x0084
                           000083   557 _P0_3	=	0x0083
                           000082   558 _P0_2	=	0x0082
                           000081   559 _P0_1	=	0x0081
                           000080   560 _P0_0	=	0x0080
                           000097   561 _AIN7	=	0x0097
                           000096   562 _AIN6	=	0x0096
                           000095   563 _AIN5	=	0x0095
                           000094   564 _AIN4	=	0x0094
                           000093   565 _AIN3	=	0x0093
                           000092   566 _AIN2	=	0x0092
                           000091   567 _AIN1	=	0x0091
                           000090   568 _AIN0	=	0x0090
                           000097   569 _SCK	=	0x0097
                           000096   570 _MISO	=	0x0096
                           000095   571 _MOSI	=	0x0095
                           000094   572 _SCS	=	0x0094
                           000092   573 _PWM3	=	0x0092
                           000092   574 _CAP3	=	0x0092
                           000091   575 _T2EX	=	0x0091
                           000091   576 _CAP2	=	0x0091
                           000090   577 _T2	=	0x0090
                           000090   578 _CAP1	=	0x0090
                           000097   579 _P1_7	=	0x0097
                           000096   580 _P1_6	=	0x0096
                           000095   581 _P1_5	=	0x0095
                           000094   582 _P1_4	=	0x0094
                           000093   583 _P1_3	=	0x0093
                           000092   584 _P1_2	=	0x0092
                           000091   585 _P1_1	=	0x0091
                           000090   586 _P1_0	=	0x0090
                           0000A7   587 _TXD1	=	0x00a7
                           0000A7   588 _DA7	=	0x00a7
                           0000A6   589 _RXD1	=	0x00a6
                           0000A5   590 _TNOW	=	0x00a5
                           0000A5   591 _PWM2	=	0x00a5
                           0000A5   592 _T2EX_	=	0x00a5
                           0000A5   593 _CAP2_	=	0x00a5
                           0000A4   594 _PWM1	=	0x00a4
                           0000A3   595 _SCK1	=	0x00a3
                           0000A2   596 _MISO1	=	0x00a2
                           0000A1   597 _MOSI1	=	0x00a1
                           0000A7   598 _P2_7	=	0x00a7
                           0000A6   599 _P2_6	=	0x00a6
                           0000A5   600 _P2_5	=	0x00a5
                           0000A4   601 _P2_4	=	0x00a4
                           0000A3   602 _P2_3	=	0x00a3
                           0000A2   603 _P2_2	=	0x00a2
                           0000A1   604 _P2_1	=	0x00a1
                           0000A0   605 _P2_0	=	0x00a0
                           0000B7   606 _RD	=	0x00b7
                           0000B6   607 _WR	=	0x00b6
                           0000B5   608 _DA6	=	0x00b5
                           0000B5   609 _T1	=	0x00b5
                           0000B4   610 _LEDC	=	0x00b4
                           0000B4   611 _XCS0	=	0x00b4
                           0000B4   612 _T0	=	0x00b4
                           0000B3   613 _LED1	=	0x00b3
                           0000B3   614 _INT1	=	0x00b3
                           0000B2   615 _LED0	=	0x00b2
                           0000B2   616 _INT0	=	0x00b2
                           0000B1   617 _TXD	=	0x00b1
                           0000B0   618 _RXD	=	0x00b0
                           0000B7   619 _P3_7	=	0x00b7
                           0000B6   620 _P3_6	=	0x00b6
                           0000B5   621 _P3_5	=	0x00b5
                           0000B4   622 _P3_4	=	0x00b4
                           0000B3   623 _P3_3	=	0x00b3
                           0000B2   624 _P3_2	=	0x00b2
                           0000B1   625 _P3_1	=	0x00b1
                           0000B0   626 _P3_0	=	0x00b0
                           0000C7   627 _SCK_	=	0x00c7
                           0000C6   628 _SCS_	=	0x00c6
                           0000C5   629 _PWM2_	=	0x00c5
                           0000C4   630 _LED3	=	0x00c4
                           0000C4   631 _TNOW_	=	0x00c4
                           0000C4   632 _TXD1_	=	0x00c4
                           0000C3   633 _PWM1_	=	0x00c3
                           0000C2   634 _PWM3_	=	0x00c2
                           0000C2   635 _CAP3_	=	0x00c2
                           0000C0   636 _LED2	=	0x00c0
                           0000C0   637 _RXD1_	=	0x00c0
                           0000C7   638 _P4_OUT_7	=	0x00c7
                           0000C6   639 _P4_OUT_6	=	0x00c6
                           0000C5   640 _P4_OUT_5	=	0x00c5
                           0000C4   641 _P4_OUT_4	=	0x00c4
                           0000C3   642 _P4_OUT_3	=	0x00c3
                           0000C2   643 _P4_OUT_2	=	0x00c2
                           0000C1   644 _P4_OUT_1	=	0x00c1
                           0000C0   645 _P4_OUT_0	=	0x00c0
                           00008F   646 _TF1	=	0x008f
                           00008E   647 _TR1	=	0x008e
                           00008D   648 _TF0	=	0x008d
                           00008C   649 _TR0	=	0x008c
                           00008B   650 _IE1	=	0x008b
                           00008A   651 _IT1	=	0x008a
                           000089   652 _IE0	=	0x0089
                           000088   653 _IT0	=	0x0088
                           00009F   654 _SM0	=	0x009f
                           00009E   655 _SM1	=	0x009e
                           00009D   656 _SM2	=	0x009d
                           00009C   657 _REN	=	0x009c
                           00009B   658 _TB8	=	0x009b
                           00009A   659 _RB8	=	0x009a
                           000099   660 _TI	=	0x0099
                           000098   661 _RI	=	0x0098
                           0000CF   662 _TF2	=	0x00cf
                           0000CF   663 _CAP1F	=	0x00cf
                           0000CE   664 _EXF2	=	0x00ce
                           0000CD   665 _RCLK	=	0x00cd
                           0000CC   666 _TCLK	=	0x00cc
                           0000CB   667 _EXEN2	=	0x00cb
                           0000CA   668 _TR2	=	0x00ca
                           0000C9   669 _C_T2	=	0x00c9
                           0000C8   670 _CP_RL2	=	0x00c8
                           0000FF   671 _S0_FST_ACT	=	0x00ff
                           0000FE   672 _S0_IF_OV	=	0x00fe
                           0000FD   673 _S0_IF_FIRST	=	0x00fd
                           0000FC   674 _S0_IF_BYTE	=	0x00fc
                           0000FB   675 _S0_FREE	=	0x00fb
                           0000FA   676 _S0_T_FIFO	=	0x00fa
                           0000F9   677 _S0_R_FIFO1	=	0x00f9
                           0000F8   678 _S0_R_FIFO0	=	0x00f8
                           0000DF   679 _U_IS_NAK	=	0x00df
                           0000DE   680 _U_TOG_OK	=	0x00de
                           0000DD   681 _U_SIE_FREE	=	0x00dd
                           0000DC   682 _UIF_FIFO_OV	=	0x00dc
                           0000DB   683 _UIF_HST_SOF	=	0x00db
                           0000DA   684 _UIF_SUSPEND	=	0x00da
                           0000D9   685 _UIF_TRANSFER	=	0x00d9
                           0000D8   686 _UIF_DETECT	=	0x00d8
                           0000D8   687 _UIF_BUS_RST	=	0x00d8
                                    688 ;--------------------------------------------------------
                                    689 ; overlayable register banks
                                    690 ;--------------------------------------------------------
                                    691 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        692 	.ds 8
                                    693 ;--------------------------------------------------------
                                    694 ; internal ram data
                                    695 ;--------------------------------------------------------
                                    696 	.area DSEG    (DATA)
                                    697 ;--------------------------------------------------------
                                    698 ; overlayable items in internal ram
                                    699 ;--------------------------------------------------------
                                    700 ;--------------------------------------------------------
                                    701 ; indirectly addressable internal ram data
                                    702 ;--------------------------------------------------------
                                    703 	.area ISEG    (DATA)
                                    704 ;--------------------------------------------------------
                                    705 ; absolute internal ram data
                                    706 ;--------------------------------------------------------
                                    707 	.area IABS    (ABS,DATA)
                                    708 	.area IABS    (ABS,DATA)
                                    709 ;--------------------------------------------------------
                                    710 ; bit data
                                    711 ;--------------------------------------------------------
                                    712 	.area BSEG    (BIT)
                                    713 ;--------------------------------------------------------
                                    714 ; paged external ram data
                                    715 ;--------------------------------------------------------
                                    716 	.area PSEG    (PAG,XDATA)
                           002546   717 _pUEP4_1_MOD	=	0x2546
                           002547   718 _pUEP2_3_MOD	=	0x2547
                           002548   719 _pUEP0_DMA_H	=	0x2548
                           002549   720 _pUEP0_DMA_L	=	0x2549
                           00254A   721 _pUEP1_DMA_H	=	0x254a
                           00254B   722 _pUEP1_DMA_L	=	0x254b
                           00254C   723 _pUEP2_DMA_H	=	0x254c
                           00254D   724 _pUEP2_DMA_L	=	0x254d
                           00254E   725 _pUEP3_DMA_H	=	0x254e
                           00254F   726 _pUEP3_DMA_L	=	0x254f
                           002980   727 _pLED_STAT	=	0x2980
                           002981   728 _pLED_CTRL	=	0x2981
                           002982   729 _pLED_DATA	=	0x2982
                           002983   730 _pLED_CK_SE	=	0x2983
                           002984   731 _pLED_DMA_AH	=	0x2984
                           002985   732 _pLED_DMA_AL	=	0x2985
                           002986   733 _pLED_DMA_CN	=	0x2986
                           002988   734 _pLED_DMA_XH	=	0x2988
                           002989   735 _pLED_DMA_XL	=	0x2989
                                    736 ;--------------------------------------------------------
                                    737 ; uninitialized external ram data
                                    738 ;--------------------------------------------------------
                                    739 	.area XSEG    (XDATA)
                           002446   740 _UEP4_1_MOD	=	0x2446
                           002447   741 _UEP2_3_MOD	=	0x2447
                           002448   742 _UEP0_DMA_H	=	0x2448
                           002449   743 _UEP0_DMA_L	=	0x2449
                           00244A   744 _UEP1_DMA_H	=	0x244a
                           00244B   745 _UEP1_DMA_L	=	0x244b
                           00244C   746 _UEP2_DMA_H	=	0x244c
                           00244D   747 _UEP2_DMA_L	=	0x244d
                           00244E   748 _UEP3_DMA_H	=	0x244e
                           00244F   749 _UEP3_DMA_L	=	0x244f
                           002880   750 _LED_STAT	=	0x2880
                           002881   751 _LED_CTRL	=	0x2881
                           002882   752 _LED_DATA	=	0x2882
                           002883   753 _LED_CK_SE	=	0x2883
                           002884   754 _LED_DMA_AH	=	0x2884
                           002885   755 _LED_DMA_AL	=	0x2885
                           002886   756 _LED_DMA_CN	=	0x2886
                           002888   757 _LED_DMA_XH	=	0x2888
                           002889   758 _LED_DMA_XL	=	0x2889
                                    759 ;--------------------------------------------------------
                                    760 ; absolute external ram data
                                    761 ;--------------------------------------------------------
                                    762 	.area XABS    (ABS,XDATA)
                                    763 ;--------------------------------------------------------
                                    764 ; initialized external ram data
                                    765 ;--------------------------------------------------------
                                    766 	.area XISEG   (XDATA)
      0002B8                        767 _dummy_variable::
      0002B8                        768 	.ds 2
                                    769 	.area HOME    (CODE)
                                    770 	.area GSINIT0 (CODE)
                                    771 	.area GSINIT1 (CODE)
                                    772 	.area GSINIT2 (CODE)
                                    773 	.area GSINIT3 (CODE)
                                    774 	.area GSINIT4 (CODE)
                                    775 	.area GSINIT5 (CODE)
                                    776 	.area GSINIT  (CODE)
                                    777 	.area GSFINAL (CODE)
                                    778 	.area CSEG    (CODE)
                                    779 ;--------------------------------------------------------
                                    780 ; global & static initialisations
                                    781 ;--------------------------------------------------------
                                    782 	.area HOME    (CODE)
                                    783 	.area GSINIT  (CODE)
                                    784 	.area GSFINAL (CODE)
                                    785 	.area GSINIT  (CODE)
                                    786 ;--------------------------------------------------------
                                    787 ; Home
                                    788 ;--------------------------------------------------------
                                    789 	.area HOME    (CODE)
                                    790 	.area HOME    (CODE)
                                    791 ;--------------------------------------------------------
                                    792 ; code
                                    793 ;--------------------------------------------------------
                                    794 	.area CSEG    (CODE)
                                    795 	.area CSEG    (CODE)
                                    796 	.area CONST   (CODE)
                                    797 	.area XINIT   (CODE)
      0067C9                        798 __xinit__dummy_variable:
      0067C9 BA 4A                  799 	.byte _main, (_main >> 8)
                                    800 	.area CABS    (ABS,CODE)
