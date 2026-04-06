                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module serial_compat
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _USBSerial_read
                                     12 	.globl _USBSerial_available
                                     13 	.globl _USBSerial_write
                                     14 	.globl _UIF_BUS_RST
                                     15 	.globl _UIF_DETECT
                                     16 	.globl _UIF_TRANSFER
                                     17 	.globl _UIF_SUSPEND
                                     18 	.globl _UIF_HST_SOF
                                     19 	.globl _UIF_FIFO_OV
                                     20 	.globl _U_SIE_FREE
                                     21 	.globl _U_TOG_OK
                                     22 	.globl _U_IS_NAK
                                     23 	.globl _S0_R_FIFO0
                                     24 	.globl _S0_R_FIFO1
                                     25 	.globl _S0_T_FIFO
                                     26 	.globl _S0_FREE
                                     27 	.globl _S0_IF_BYTE
                                     28 	.globl _S0_IF_FIRST
                                     29 	.globl _S0_IF_OV
                                     30 	.globl _S0_FST_ACT
                                     31 	.globl _CP_RL2
                                     32 	.globl _C_T2
                                     33 	.globl _TR2
                                     34 	.globl _EXEN2
                                     35 	.globl _TCLK
                                     36 	.globl _RCLK
                                     37 	.globl _EXF2
                                     38 	.globl _CAP1F
                                     39 	.globl _TF2
                                     40 	.globl _RI
                                     41 	.globl _TI
                                     42 	.globl _RB8
                                     43 	.globl _TB8
                                     44 	.globl _REN
                                     45 	.globl _SM2
                                     46 	.globl _SM1
                                     47 	.globl _SM0
                                     48 	.globl _IT0
                                     49 	.globl _IE0
                                     50 	.globl _IT1
                                     51 	.globl _IE1
                                     52 	.globl _TR0
                                     53 	.globl _TF0
                                     54 	.globl _TR1
                                     55 	.globl _TF1
                                     56 	.globl _P4_OUT_0
                                     57 	.globl _P4_OUT_1
                                     58 	.globl _P4_OUT_2
                                     59 	.globl _P4_OUT_3
                                     60 	.globl _P4_OUT_4
                                     61 	.globl _P4_OUT_5
                                     62 	.globl _P4_OUT_6
                                     63 	.globl _P4_OUT_7
                                     64 	.globl _RXD1_
                                     65 	.globl _LED2
                                     66 	.globl _CAP3_
                                     67 	.globl _PWM3_
                                     68 	.globl _PWM1_
                                     69 	.globl _TXD1_
                                     70 	.globl _TNOW_
                                     71 	.globl _LED3
                                     72 	.globl _PWM2_
                                     73 	.globl _SCS_
                                     74 	.globl _SCK_
                                     75 	.globl _P3_0
                                     76 	.globl _P3_1
                                     77 	.globl _P3_2
                                     78 	.globl _P3_3
                                     79 	.globl _P3_4
                                     80 	.globl _P3_5
                                     81 	.globl _P3_6
                                     82 	.globl _P3_7
                                     83 	.globl _RXD
                                     84 	.globl _TXD
                                     85 	.globl _INT0
                                     86 	.globl _LED0
                                     87 	.globl _INT1
                                     88 	.globl _LED1
                                     89 	.globl _T0
                                     90 	.globl _XCS0
                                     91 	.globl _LEDC
                                     92 	.globl _T1
                                     93 	.globl _DA6
                                     94 	.globl _WR
                                     95 	.globl _RD
                                     96 	.globl _P2_0
                                     97 	.globl _P2_1
                                     98 	.globl _P2_2
                                     99 	.globl _P2_3
                                    100 	.globl _P2_4
                                    101 	.globl _P2_5
                                    102 	.globl _P2_6
                                    103 	.globl _P2_7
                                    104 	.globl _MOSI1
                                    105 	.globl _MISO1
                                    106 	.globl _SCK1
                                    107 	.globl _PWM1
                                    108 	.globl _CAP2_
                                    109 	.globl _T2EX_
                                    110 	.globl _PWM2
                                    111 	.globl _TNOW
                                    112 	.globl _RXD1
                                    113 	.globl _DA7
                                    114 	.globl _TXD1
                                    115 	.globl _P1_0
                                    116 	.globl _P1_1
                                    117 	.globl _P1_2
                                    118 	.globl _P1_3
                                    119 	.globl _P1_4
                                    120 	.globl _P1_5
                                    121 	.globl _P1_6
                                    122 	.globl _P1_7
                                    123 	.globl _CAP1
                                    124 	.globl _T2
                                    125 	.globl _CAP2
                                    126 	.globl _T2EX
                                    127 	.globl _CAP3
                                    128 	.globl _PWM3
                                    129 	.globl _SCS
                                    130 	.globl _MOSI
                                    131 	.globl _MISO
                                    132 	.globl _SCK
                                    133 	.globl _AIN0
                                    134 	.globl _AIN1
                                    135 	.globl _AIN2
                                    136 	.globl _AIN3
                                    137 	.globl _AIN4
                                    138 	.globl _AIN5
                                    139 	.globl _AIN6
                                    140 	.globl _AIN7
                                    141 	.globl _P0_0
                                    142 	.globl _P0_1
                                    143 	.globl _P0_2
                                    144 	.globl _P0_3
                                    145 	.globl _P0_4
                                    146 	.globl _P0_5
                                    147 	.globl _P0_6
                                    148 	.globl _P0_7
                                    149 	.globl _UDTR
                                    150 	.globl _URTS
                                    151 	.globl _RXD_
                                    152 	.globl _TXD_
                                    153 	.globl _UCTS
                                    154 	.globl _UDSR
                                    155 	.globl _URI
                                    156 	.globl _UDCD
                                    157 	.globl _IE_SPI0
                                    158 	.globl _IE_TMR3
                                    159 	.globl _IE_USB
                                    160 	.globl _IE_ADC
                                    161 	.globl _IE_UART1
                                    162 	.globl _IE_PWM1
                                    163 	.globl _IE_GPIO
                                    164 	.globl _IE_WDOG
                                    165 	.globl _PX0
                                    166 	.globl _PT0
                                    167 	.globl _PX1
                                    168 	.globl _PT1
                                    169 	.globl _PS
                                    170 	.globl _PT2
                                    171 	.globl _PL_FLAG
                                    172 	.globl _PH_FLAG
                                    173 	.globl _EX0
                                    174 	.globl _ET0
                                    175 	.globl _EX1
                                    176 	.globl _ET1
                                    177 	.globl _ES
                                    178 	.globl _ET2
                                    179 	.globl _E_DIS
                                    180 	.globl _EA
                                    181 	.globl _P
                                    182 	.globl _F1
                                    183 	.globl _OV
                                    184 	.globl _RS0
                                    185 	.globl _RS1
                                    186 	.globl _F0
                                    187 	.globl _AC
                                    188 	.globl _CY
                                    189 	.globl _USB_DMA_AH
                                    190 	.globl _USB_DMA_AL
                                    191 	.globl _USB_DMA
                                    192 	.globl _UHUB1_CTRL
                                    193 	.globl _UDEV_CTRL
                                    194 	.globl _USB_DEV_AD
                                    195 	.globl _USB_CTRL
                                    196 	.globl _USB_INT_EN
                                    197 	.globl _UEP4_T_LEN
                                    198 	.globl _UEP4_CTRL
                                    199 	.globl _UEP0_T_LEN
                                    200 	.globl _UEP0_CTRL
                                    201 	.globl _USB_HUB_ST
                                    202 	.globl _USB_MIS_ST
                                    203 	.globl _USB_INT_ST
                                    204 	.globl _USB_INT_FG
                                    205 	.globl _UEP3_T_LEN
                                    206 	.globl _UEP3_CTRL
                                    207 	.globl _UEP2_T_LEN
                                    208 	.globl _UEP2_CTRL
                                    209 	.globl _UEP1_T_LEN
                                    210 	.globl _UEP1_CTRL
                                    211 	.globl _USB_RX_LEN
                                    212 	.globl _ADC_EX_SW
                                    213 	.globl _ADC_SETUP
                                    214 	.globl _ADC_FIFO_H
                                    215 	.globl _ADC_FIFO_L
                                    216 	.globl _ADC_FIFO
                                    217 	.globl _ADC_CHANN
                                    218 	.globl _ADC_CTRL
                                    219 	.globl _ADC_STAT
                                    220 	.globl _ADC_CK_SE
                                    221 	.globl _ADC_DMA_CN
                                    222 	.globl _ADC_DMA_AH
                                    223 	.globl _ADC_DMA_AL
                                    224 	.globl _ADC_DMA
                                    225 	.globl _SER1_ADDR
                                    226 	.globl _SER1_MSR
                                    227 	.globl _SER1_LSR
                                    228 	.globl _SER1_MCR
                                    229 	.globl _SER1_LCR
                                    230 	.globl _SER1_IIR
                                    231 	.globl _SER1_IER
                                    232 	.globl _SER1_FIFO
                                    233 	.globl _SPI1_CK_SE
                                    234 	.globl _SPI1_CTRL
                                    235 	.globl _SPI1_DATA
                                    236 	.globl _SPI1_STAT
                                    237 	.globl _SPI0_SETUP
                                    238 	.globl _SPI0_CK_SE
                                    239 	.globl _SPI0_CTRL
                                    240 	.globl _SPI0_DATA
                                    241 	.globl _SPI0_STAT
                                    242 	.globl _PWM_CYCLE
                                    243 	.globl _PWM_CK_SE
                                    244 	.globl _PWM_CTRL
                                    245 	.globl _PWM_DATA
                                    246 	.globl _PWM_DATA2
                                    247 	.globl _T3_FIFO_H
                                    248 	.globl _T3_FIFO_L
                                    249 	.globl _T3_FIFO
                                    250 	.globl _T3_DMA_AH
                                    251 	.globl _T3_DMA_AL
                                    252 	.globl _T3_DMA
                                    253 	.globl _T3_DMA_CN
                                    254 	.globl _T3_CTRL
                                    255 	.globl _T3_STAT
                                    256 	.globl _T3_END_H
                                    257 	.globl _T3_END_L
                                    258 	.globl _T3_END
                                    259 	.globl _T3_COUNT_H
                                    260 	.globl _T3_COUNT_L
                                    261 	.globl _T3_COUNT
                                    262 	.globl _T3_SETUP
                                    263 	.globl _TH2
                                    264 	.globl _TL2
                                    265 	.globl _T2COUNT
                                    266 	.globl _RCAP2H
                                    267 	.globl _RCAP2L
                                    268 	.globl _RCAP2
                                    269 	.globl _T2MOD
                                    270 	.globl _T2CON
                                    271 	.globl _SBUF
                                    272 	.globl _SCON
                                    273 	.globl _TH1
                                    274 	.globl _TH0
                                    275 	.globl _TL1
                                    276 	.globl _TL0
                                    277 	.globl _TMOD
                                    278 	.globl _TCON
                                    279 	.globl _XBUS_SPEED
                                    280 	.globl _XBUS_AUX
                                    281 	.globl _PIN_FUNC
                                    282 	.globl _PORT_CFG
                                    283 	.globl _P5_IN
                                    284 	.globl _P4_PU
                                    285 	.globl _P4_DIR
                                    286 	.globl _P4_IN
                                    287 	.globl _P4_OUT
                                    288 	.globl _P3_PU
                                    289 	.globl _P3_DIR
                                    290 	.globl _P3
                                    291 	.globl _P2_PU
                                    292 	.globl _P2_DIR
                                    293 	.globl _P2
                                    294 	.globl _P1_PU
                                    295 	.globl _P1_DIR
                                    296 	.globl _P1_IE
                                    297 	.globl _P1
                                    298 	.globl _P0_PU
                                    299 	.globl _P0_DIR
                                    300 	.globl _P0
                                    301 	.globl _ROM_CTRL
                                    302 	.globl _ROM_DATA_H
                                    303 	.globl _ROM_DATA_L
                                    304 	.globl _ROM_DATA
                                    305 	.globl _ROM_ADDR_H
                                    306 	.globl _ROM_ADDR_L
                                    307 	.globl _ROM_ADDR
                                    308 	.globl _GPIO_IE
                                    309 	.globl _IP_EX
                                    310 	.globl _IE_EX
                                    311 	.globl _IP
                                    312 	.globl _IE
                                    313 	.globl _WDOG_COUNT
                                    314 	.globl _RESET_KEEP
                                    315 	.globl _WAKE_CTRL
                                    316 	.globl _SLEEP_CTRL
                                    317 	.globl _CLOCK_CFG
                                    318 	.globl _PLL_CFG
                                    319 	.globl _PCON
                                    320 	.globl _GLOBAL_CFG
                                    321 	.globl _SAFE_MOD
                                    322 	.globl _DPH
                                    323 	.globl _DPL
                                    324 	.globl _SP
                                    325 	.globl _B
                                    326 	.globl _ACC
                                    327 	.globl _PSW
                                    328 	.globl _serial_println_float_PARM_2
                                    329 	.globl _serial_print_float_PARM_2
                                    330 	.globl _serial_print_uint_base_PARM_2
                                    331 	.globl _LED_DMA_XL
                                    332 	.globl _LED_DMA_XH
                                    333 	.globl _LED_DMA_CN
                                    334 	.globl _LED_DMA_AL
                                    335 	.globl _LED_DMA_AH
                                    336 	.globl _LED_CK_SE
                                    337 	.globl _LED_DATA
                                    338 	.globl _LED_CTRL
                                    339 	.globl _LED_STAT
                                    340 	.globl _UEP3_DMA_L
                                    341 	.globl _UEP3_DMA_H
                                    342 	.globl _UEP2_DMA_L
                                    343 	.globl _UEP2_DMA_H
                                    344 	.globl _UEP1_DMA_L
                                    345 	.globl _UEP1_DMA_H
                                    346 	.globl _UEP0_DMA_L
                                    347 	.globl _UEP0_DMA_H
                                    348 	.globl _UEP2_3_MOD
                                    349 	.globl _UEP4_1_MOD
                                    350 	.globl _pLED_DMA_XL
                                    351 	.globl _pLED_DMA_XH
                                    352 	.globl _pLED_DMA_CN
                                    353 	.globl _pLED_DMA_AL
                                    354 	.globl _pLED_DMA_AH
                                    355 	.globl _pLED_CK_SE
                                    356 	.globl _pLED_DATA
                                    357 	.globl _pLED_CTRL
                                    358 	.globl _pLED_STAT
                                    359 	.globl _pUEP3_DMA_L
                                    360 	.globl _pUEP3_DMA_H
                                    361 	.globl _pUEP2_DMA_L
                                    362 	.globl _pUEP2_DMA_H
                                    363 	.globl _pUEP1_DMA_L
                                    364 	.globl _pUEP1_DMA_H
                                    365 	.globl _pUEP0_DMA_L
                                    366 	.globl _pUEP0_DMA_H
                                    367 	.globl _pUEP2_3_MOD
                                    368 	.globl _pUEP4_1_MOD
                                    369 	.globl _serial_begin
                                    370 	.globl _serial_available
                                    371 	.globl _serial_read
                                    372 	.globl _serial_write
                                    373 	.globl _serial_print_str
                                    374 	.globl _serial_print_int
                                    375 	.globl _serial_print_uint
                                    376 	.globl _serial_print_uint_base
                                    377 	.globl _serial_print_float
                                    378 	.globl _serial_println
                                    379 	.globl _serial_println_str
                                    380 	.globl _serial_println_int
                                    381 	.globl _serial_println_uint
                                    382 	.globl _serial_println_float
                                    383 ;--------------------------------------------------------
                                    384 ; special function registers
                                    385 ;--------------------------------------------------------
                                    386 	.area RSEG    (ABS,DATA)
      000000                        387 	.org 0x0000
                           0000D0   388 _PSW	=	0x00d0
                           0000E0   389 _ACC	=	0x00e0
                           0000F0   390 _B	=	0x00f0
                           000081   391 _SP	=	0x0081
                           000082   392 _DPL	=	0x0082
                           000083   393 _DPH	=	0x0083
                           0000A1   394 _SAFE_MOD	=	0x00a1
                           0000B1   395 _GLOBAL_CFG	=	0x00b1
                           000087   396 _PCON	=	0x0087
                           0000B2   397 _PLL_CFG	=	0x00b2
                           0000B3   398 _CLOCK_CFG	=	0x00b3
                           0000EA   399 _SLEEP_CTRL	=	0x00ea
                           0000EB   400 _WAKE_CTRL	=	0x00eb
                           0000FE   401 _RESET_KEEP	=	0x00fe
                           0000FF   402 _WDOG_COUNT	=	0x00ff
                           0000A8   403 _IE	=	0x00a8
                           0000B8   404 _IP	=	0x00b8
                           0000E8   405 _IE_EX	=	0x00e8
                           0000E9   406 _IP_EX	=	0x00e9
                           0000CF   407 _GPIO_IE	=	0x00cf
                           008584   408 _ROM_ADDR	=	0x8584
                           000084   409 _ROM_ADDR_L	=	0x0084
                           000085   410 _ROM_ADDR_H	=	0x0085
                           008F8E   411 _ROM_DATA	=	0x8f8e
                           00008E   412 _ROM_DATA_L	=	0x008e
                           00008F   413 _ROM_DATA_H	=	0x008f
                           000086   414 _ROM_CTRL	=	0x0086
                           000080   415 _P0	=	0x0080
                           0000C4   416 _P0_DIR	=	0x00c4
                           0000C5   417 _P0_PU	=	0x00c5
                           000090   418 _P1	=	0x0090
                           0000B9   419 _P1_IE	=	0x00b9
                           0000BA   420 _P1_DIR	=	0x00ba
                           0000BB   421 _P1_PU	=	0x00bb
                           0000A0   422 _P2	=	0x00a0
                           0000BC   423 _P2_DIR	=	0x00bc
                           0000BD   424 _P2_PU	=	0x00bd
                           0000B0   425 _P3	=	0x00b0
                           0000BE   426 _P3_DIR	=	0x00be
                           0000BF   427 _P3_PU	=	0x00bf
                           0000C0   428 _P4_OUT	=	0x00c0
                           0000C1   429 _P4_IN	=	0x00c1
                           0000C2   430 _P4_DIR	=	0x00c2
                           0000C3   431 _P4_PU	=	0x00c3
                           0000C7   432 _P5_IN	=	0x00c7
                           0000C6   433 _PORT_CFG	=	0x00c6
                           0000CE   434 _PIN_FUNC	=	0x00ce
                           0000A2   435 _XBUS_AUX	=	0x00a2
                           0000FD   436 _XBUS_SPEED	=	0x00fd
                           000088   437 _TCON	=	0x0088
                           000089   438 _TMOD	=	0x0089
                           00008A   439 _TL0	=	0x008a
                           00008B   440 _TL1	=	0x008b
                           00008C   441 _TH0	=	0x008c
                           00008D   442 _TH1	=	0x008d
                           000098   443 _SCON	=	0x0098
                           000099   444 _SBUF	=	0x0099
                           0000C8   445 _T2CON	=	0x00c8
                           0000C9   446 _T2MOD	=	0x00c9
                           00CBCA   447 _RCAP2	=	0xcbca
                           0000CA   448 _RCAP2L	=	0x00ca
                           0000CB   449 _RCAP2H	=	0x00cb
                           00CDCC   450 _T2COUNT	=	0xcdcc
                           0000CC   451 _TL2	=	0x00cc
                           0000CD   452 _TH2	=	0x00cd
                           0000A3   453 _T3_SETUP	=	0x00a3
                           00A5A4   454 _T3_COUNT	=	0xa5a4
                           0000A4   455 _T3_COUNT_L	=	0x00a4
                           0000A5   456 _T3_COUNT_H	=	0x00a5
                           00A7A6   457 _T3_END	=	0xa7a6
                           0000A6   458 _T3_END_L	=	0x00a6
                           0000A7   459 _T3_END_H	=	0x00a7
                           0000A9   460 _T3_STAT	=	0x00a9
                           0000AA   461 _T3_CTRL	=	0x00aa
                           0000AB   462 _T3_DMA_CN	=	0x00ab
                           00ADAC   463 _T3_DMA	=	0xadac
                           0000AC   464 _T3_DMA_AL	=	0x00ac
                           0000AD   465 _T3_DMA_AH	=	0x00ad
                           00AFAE   466 _T3_FIFO	=	0xafae
                           0000AE   467 _T3_FIFO_L	=	0x00ae
                           0000AF   468 _T3_FIFO_H	=	0x00af
                           00009B   469 _PWM_DATA2	=	0x009b
                           00009C   470 _PWM_DATA	=	0x009c
                           00009D   471 _PWM_CTRL	=	0x009d
                           00009E   472 _PWM_CK_SE	=	0x009e
                           00009F   473 _PWM_CYCLE	=	0x009f
                           0000F8   474 _SPI0_STAT	=	0x00f8
                           0000F9   475 _SPI0_DATA	=	0x00f9
                           0000FA   476 _SPI0_CTRL	=	0x00fa
                           0000FB   477 _SPI0_CK_SE	=	0x00fb
                           0000FC   478 _SPI0_SETUP	=	0x00fc
                           0000B4   479 _SPI1_STAT	=	0x00b4
                           0000B5   480 _SPI1_DATA	=	0x00b5
                           0000B6   481 _SPI1_CTRL	=	0x00b6
                           0000B7   482 _SPI1_CK_SE	=	0x00b7
                           00009A   483 _SER1_FIFO	=	0x009a
                           000091   484 _SER1_IER	=	0x0091
                           000092   485 _SER1_IIR	=	0x0092
                           000093   486 _SER1_LCR	=	0x0093
                           000094   487 _SER1_MCR	=	0x0094
                           000095   488 _SER1_LSR	=	0x0095
                           000096   489 _SER1_MSR	=	0x0096
                           000097   490 _SER1_ADDR	=	0x0097
                           00EDEC   491 _ADC_DMA	=	0xedec
                           0000EC   492 _ADC_DMA_AL	=	0x00ec
                           0000ED   493 _ADC_DMA_AH	=	0x00ed
                           0000EE   494 _ADC_DMA_CN	=	0x00ee
                           0000EF   495 _ADC_CK_SE	=	0x00ef
                           0000F1   496 _ADC_STAT	=	0x00f1
                           0000F2   497 _ADC_CTRL	=	0x00f2
                           0000F3   498 _ADC_CHANN	=	0x00f3
                           00F5F4   499 _ADC_FIFO	=	0xf5f4
                           0000F4   500 _ADC_FIFO_L	=	0x00f4
                           0000F5   501 _ADC_FIFO_H	=	0x00f5
                           0000F6   502 _ADC_SETUP	=	0x00f6
                           0000F7   503 _ADC_EX_SW	=	0x00f7
                           0000D1   504 _USB_RX_LEN	=	0x00d1
                           0000D2   505 _UEP1_CTRL	=	0x00d2
                           0000D3   506 _UEP1_T_LEN	=	0x00d3
                           0000D4   507 _UEP2_CTRL	=	0x00d4
                           0000D5   508 _UEP2_T_LEN	=	0x00d5
                           0000D6   509 _UEP3_CTRL	=	0x00d6
                           0000D7   510 _UEP3_T_LEN	=	0x00d7
                           0000D8   511 _USB_INT_FG	=	0x00d8
                           0000D9   512 _USB_INT_ST	=	0x00d9
                           0000DA   513 _USB_MIS_ST	=	0x00da
                           0000DB   514 _USB_HUB_ST	=	0x00db
                           0000DC   515 _UEP0_CTRL	=	0x00dc
                           0000DD   516 _UEP0_T_LEN	=	0x00dd
                           0000DE   517 _UEP4_CTRL	=	0x00de
                           0000DF   518 _UEP4_T_LEN	=	0x00df
                           0000E1   519 _USB_INT_EN	=	0x00e1
                           0000E2   520 _USB_CTRL	=	0x00e2
                           0000E3   521 _USB_DEV_AD	=	0x00e3
                           0000E4   522 _UDEV_CTRL	=	0x00e4
                           0000E5   523 _UHUB1_CTRL	=	0x00e5
                           00E7E6   524 _USB_DMA	=	0xe7e6
                           0000E6   525 _USB_DMA_AL	=	0x00e6
                           0000E7   526 _USB_DMA_AH	=	0x00e7
                                    527 ;--------------------------------------------------------
                                    528 ; special function bits
                                    529 ;--------------------------------------------------------
                                    530 	.area RSEG    (ABS,DATA)
      000000                        531 	.org 0x0000
                           0000D7   532 _CY	=	0x00d7
                           0000D6   533 _AC	=	0x00d6
                           0000D5   534 _F0	=	0x00d5
                           0000D4   535 _RS1	=	0x00d4
                           0000D3   536 _RS0	=	0x00d3
                           0000D2   537 _OV	=	0x00d2
                           0000D1   538 _F1	=	0x00d1
                           0000D0   539 _P	=	0x00d0
                           0000AF   540 _EA	=	0x00af
                           0000AE   541 _E_DIS	=	0x00ae
                           0000AD   542 _ET2	=	0x00ad
                           0000AC   543 _ES	=	0x00ac
                           0000AB   544 _ET1	=	0x00ab
                           0000AA   545 _EX1	=	0x00aa
                           0000A9   546 _ET0	=	0x00a9
                           0000A8   547 _EX0	=	0x00a8
                           0000BF   548 _PH_FLAG	=	0x00bf
                           0000BE   549 _PL_FLAG	=	0x00be
                           0000BD   550 _PT2	=	0x00bd
                           0000BC   551 _PS	=	0x00bc
                           0000BB   552 _PT1	=	0x00bb
                           0000BA   553 _PX1	=	0x00ba
                           0000B9   554 _PT0	=	0x00b9
                           0000B8   555 _PX0	=	0x00b8
                           0000EF   556 _IE_WDOG	=	0x00ef
                           0000EE   557 _IE_GPIO	=	0x00ee
                           0000ED   558 _IE_PWM1	=	0x00ed
                           0000EC   559 _IE_UART1	=	0x00ec
                           0000EB   560 _IE_ADC	=	0x00eb
                           0000EA   561 _IE_USB	=	0x00ea
                           0000E9   562 _IE_TMR3	=	0x00e9
                           0000E8   563 _IE_SPI0	=	0x00e8
                           000087   564 _UDCD	=	0x0087
                           000086   565 _URI	=	0x0086
                           000085   566 _UDSR	=	0x0085
                           000084   567 _UCTS	=	0x0084
                           000083   568 _TXD_	=	0x0083
                           000082   569 _RXD_	=	0x0082
                           000081   570 _URTS	=	0x0081
                           000080   571 _UDTR	=	0x0080
                           000087   572 _P0_7	=	0x0087
                           000086   573 _P0_6	=	0x0086
                           000085   574 _P0_5	=	0x0085
                           000084   575 _P0_4	=	0x0084
                           000083   576 _P0_3	=	0x0083
                           000082   577 _P0_2	=	0x0082
                           000081   578 _P0_1	=	0x0081
                           000080   579 _P0_0	=	0x0080
                           000097   580 _AIN7	=	0x0097
                           000096   581 _AIN6	=	0x0096
                           000095   582 _AIN5	=	0x0095
                           000094   583 _AIN4	=	0x0094
                           000093   584 _AIN3	=	0x0093
                           000092   585 _AIN2	=	0x0092
                           000091   586 _AIN1	=	0x0091
                           000090   587 _AIN0	=	0x0090
                           000097   588 _SCK	=	0x0097
                           000096   589 _MISO	=	0x0096
                           000095   590 _MOSI	=	0x0095
                           000094   591 _SCS	=	0x0094
                           000092   592 _PWM3	=	0x0092
                           000092   593 _CAP3	=	0x0092
                           000091   594 _T2EX	=	0x0091
                           000091   595 _CAP2	=	0x0091
                           000090   596 _T2	=	0x0090
                           000090   597 _CAP1	=	0x0090
                           000097   598 _P1_7	=	0x0097
                           000096   599 _P1_6	=	0x0096
                           000095   600 _P1_5	=	0x0095
                           000094   601 _P1_4	=	0x0094
                           000093   602 _P1_3	=	0x0093
                           000092   603 _P1_2	=	0x0092
                           000091   604 _P1_1	=	0x0091
                           000090   605 _P1_0	=	0x0090
                           0000A7   606 _TXD1	=	0x00a7
                           0000A7   607 _DA7	=	0x00a7
                           0000A6   608 _RXD1	=	0x00a6
                           0000A5   609 _TNOW	=	0x00a5
                           0000A5   610 _PWM2	=	0x00a5
                           0000A5   611 _T2EX_	=	0x00a5
                           0000A5   612 _CAP2_	=	0x00a5
                           0000A4   613 _PWM1	=	0x00a4
                           0000A3   614 _SCK1	=	0x00a3
                           0000A2   615 _MISO1	=	0x00a2
                           0000A1   616 _MOSI1	=	0x00a1
                           0000A7   617 _P2_7	=	0x00a7
                           0000A6   618 _P2_6	=	0x00a6
                           0000A5   619 _P2_5	=	0x00a5
                           0000A4   620 _P2_4	=	0x00a4
                           0000A3   621 _P2_3	=	0x00a3
                           0000A2   622 _P2_2	=	0x00a2
                           0000A1   623 _P2_1	=	0x00a1
                           0000A0   624 _P2_0	=	0x00a0
                           0000B7   625 _RD	=	0x00b7
                           0000B6   626 _WR	=	0x00b6
                           0000B5   627 _DA6	=	0x00b5
                           0000B5   628 _T1	=	0x00b5
                           0000B4   629 _LEDC	=	0x00b4
                           0000B4   630 _XCS0	=	0x00b4
                           0000B4   631 _T0	=	0x00b4
                           0000B3   632 _LED1	=	0x00b3
                           0000B3   633 _INT1	=	0x00b3
                           0000B2   634 _LED0	=	0x00b2
                           0000B2   635 _INT0	=	0x00b2
                           0000B1   636 _TXD	=	0x00b1
                           0000B0   637 _RXD	=	0x00b0
                           0000B7   638 _P3_7	=	0x00b7
                           0000B6   639 _P3_6	=	0x00b6
                           0000B5   640 _P3_5	=	0x00b5
                           0000B4   641 _P3_4	=	0x00b4
                           0000B3   642 _P3_3	=	0x00b3
                           0000B2   643 _P3_2	=	0x00b2
                           0000B1   644 _P3_1	=	0x00b1
                           0000B0   645 _P3_0	=	0x00b0
                           0000C7   646 _SCK_	=	0x00c7
                           0000C6   647 _SCS_	=	0x00c6
                           0000C5   648 _PWM2_	=	0x00c5
                           0000C4   649 _LED3	=	0x00c4
                           0000C4   650 _TNOW_	=	0x00c4
                           0000C4   651 _TXD1_	=	0x00c4
                           0000C3   652 _PWM1_	=	0x00c3
                           0000C2   653 _PWM3_	=	0x00c2
                           0000C2   654 _CAP3_	=	0x00c2
                           0000C0   655 _LED2	=	0x00c0
                           0000C0   656 _RXD1_	=	0x00c0
                           0000C7   657 _P4_OUT_7	=	0x00c7
                           0000C6   658 _P4_OUT_6	=	0x00c6
                           0000C5   659 _P4_OUT_5	=	0x00c5
                           0000C4   660 _P4_OUT_4	=	0x00c4
                           0000C3   661 _P4_OUT_3	=	0x00c3
                           0000C2   662 _P4_OUT_2	=	0x00c2
                           0000C1   663 _P4_OUT_1	=	0x00c1
                           0000C0   664 _P4_OUT_0	=	0x00c0
                           00008F   665 _TF1	=	0x008f
                           00008E   666 _TR1	=	0x008e
                           00008D   667 _TF0	=	0x008d
                           00008C   668 _TR0	=	0x008c
                           00008B   669 _IE1	=	0x008b
                           00008A   670 _IT1	=	0x008a
                           000089   671 _IE0	=	0x0089
                           000088   672 _IT0	=	0x0088
                           00009F   673 _SM0	=	0x009f
                           00009E   674 _SM1	=	0x009e
                           00009D   675 _SM2	=	0x009d
                           00009C   676 _REN	=	0x009c
                           00009B   677 _TB8	=	0x009b
                           00009A   678 _RB8	=	0x009a
                           000099   679 _TI	=	0x0099
                           000098   680 _RI	=	0x0098
                           0000CF   681 _TF2	=	0x00cf
                           0000CF   682 _CAP1F	=	0x00cf
                           0000CE   683 _EXF2	=	0x00ce
                           0000CD   684 _RCLK	=	0x00cd
                           0000CC   685 _TCLK	=	0x00cc
                           0000CB   686 _EXEN2	=	0x00cb
                           0000CA   687 _TR2	=	0x00ca
                           0000C9   688 _C_T2	=	0x00c9
                           0000C8   689 _CP_RL2	=	0x00c8
                           0000FF   690 _S0_FST_ACT	=	0x00ff
                           0000FE   691 _S0_IF_OV	=	0x00fe
                           0000FD   692 _S0_IF_FIRST	=	0x00fd
                           0000FC   693 _S0_IF_BYTE	=	0x00fc
                           0000FB   694 _S0_FREE	=	0x00fb
                           0000FA   695 _S0_T_FIFO	=	0x00fa
                           0000F9   696 _S0_R_FIFO1	=	0x00f9
                           0000F8   697 _S0_R_FIFO0	=	0x00f8
                           0000DF   698 _U_IS_NAK	=	0x00df
                           0000DE   699 _U_TOG_OK	=	0x00de
                           0000DD   700 _U_SIE_FREE	=	0x00dd
                           0000DC   701 _UIF_FIFO_OV	=	0x00dc
                           0000DB   702 _UIF_HST_SOF	=	0x00db
                           0000DA   703 _UIF_SUSPEND	=	0x00da
                           0000D9   704 _UIF_TRANSFER	=	0x00d9
                           0000D8   705 _UIF_DETECT	=	0x00d8
                           0000D8   706 _UIF_BUS_RST	=	0x00d8
                                    707 ;--------------------------------------------------------
                                    708 ; overlayable register banks
                                    709 ;--------------------------------------------------------
                                    710 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        711 	.ds 8
                                    712 ;--------------------------------------------------------
                                    713 ; overlayable bit register bank
                                    714 ;--------------------------------------------------------
                                    715 	.area BIT_BANK	(REL,OVR,DATA)
      000022                        716 bits:
      000022                        717 	.ds 1
                           008000   718 	b0 = bits[0]
                           008100   719 	b1 = bits[1]
                           008200   720 	b2 = bits[2]
                           008300   721 	b3 = bits[3]
                           008400   722 	b4 = bits[4]
                           008500   723 	b5 = bits[5]
                           008600   724 	b6 = bits[6]
                           008700   725 	b7 = bits[7]
                                    726 ;--------------------------------------------------------
                                    727 ; internal ram data
                                    728 ;--------------------------------------------------------
                                    729 	.area DSEG    (DATA)
      000010                        730 _serial_print_float_sloc0_1_0:
      000010                        731 	.ds 2
      000012                        732 _serial_print_float_sloc1_1_0:
      000012                        733 	.ds 4
      000016                        734 _serial_print_float_sloc2_1_0:
      000016                        735 	.ds 4
                                    736 ;--------------------------------------------------------
                                    737 ; overlayable items in internal ram
                                    738 ;--------------------------------------------------------
                                    739 ;--------------------------------------------------------
                                    740 ; indirectly addressable internal ram data
                                    741 ;--------------------------------------------------------
                                    742 	.area ISEG    (DATA)
                                    743 ;--------------------------------------------------------
                                    744 ; absolute internal ram data
                                    745 ;--------------------------------------------------------
                                    746 	.area IABS    (ABS,DATA)
                                    747 	.area IABS    (ABS,DATA)
                                    748 ;--------------------------------------------------------
                                    749 ; bit data
                                    750 ;--------------------------------------------------------
                                    751 	.area BSEG    (BIT)
                                    752 ;--------------------------------------------------------
                                    753 ; paged external ram data
                                    754 ;--------------------------------------------------------
                                    755 	.area PSEG    (PAG,XDATA)
                           002546   756 _pUEP4_1_MOD	=	0x2546
                           002547   757 _pUEP2_3_MOD	=	0x2547
                           002548   758 _pUEP0_DMA_H	=	0x2548
                           002549   759 _pUEP0_DMA_L	=	0x2549
                           00254A   760 _pUEP1_DMA_H	=	0x254a
                           00254B   761 _pUEP1_DMA_L	=	0x254b
                           00254C   762 _pUEP2_DMA_H	=	0x254c
                           00254D   763 _pUEP2_DMA_L	=	0x254d
                           00254E   764 _pUEP3_DMA_H	=	0x254e
                           00254F   765 _pUEP3_DMA_L	=	0x254f
                           002980   766 _pLED_STAT	=	0x2980
                           002981   767 _pLED_CTRL	=	0x2981
                           002982   768 _pLED_DATA	=	0x2982
                           002983   769 _pLED_CK_SE	=	0x2983
                           002984   770 _pLED_DMA_AH	=	0x2984
                           002985   771 _pLED_DMA_AL	=	0x2985
                           002986   772 _pLED_DMA_CN	=	0x2986
                           002988   773 _pLED_DMA_XH	=	0x2988
                           002989   774 _pLED_DMA_XL	=	0x2989
                                    775 ;--------------------------------------------------------
                                    776 ; uninitialized external ram data
                                    777 ;--------------------------------------------------------
                                    778 	.area XSEG    (XDATA)
                           002446   779 _UEP4_1_MOD	=	0x2446
                           002447   780 _UEP2_3_MOD	=	0x2447
                           002448   781 _UEP0_DMA_H	=	0x2448
                           002449   782 _UEP0_DMA_L	=	0x2449
                           00244A   783 _UEP1_DMA_H	=	0x244a
                           00244B   784 _UEP1_DMA_L	=	0x244b
                           00244C   785 _UEP2_DMA_H	=	0x244c
                           00244D   786 _UEP2_DMA_L	=	0x244d
                           00244E   787 _UEP3_DMA_H	=	0x244e
                           00244F   788 _UEP3_DMA_L	=	0x244f
                           002880   789 _LED_STAT	=	0x2880
                           002881   790 _LED_CTRL	=	0x2881
                           002882   791 _LED_DATA	=	0x2882
                           002883   792 _LED_CK_SE	=	0x2883
                           002884   793 _LED_DMA_AH	=	0x2884
                           002885   794 _LED_DMA_AL	=	0x2885
                           002886   795 _LED_DMA_CN	=	0x2886
                           002888   796 _LED_DMA_XH	=	0x2888
                           002889   797 _LED_DMA_XL	=	0x2889
      0001A4                        798 _serial_write_c_65536_189:
      0001A4                        799 	.ds 1
      0001A5                        800 _serial_print_str_text_65536_198:
      0001A5                        801 	.ds 3
      0001A8                        802 _serial_print_int_value_65536_201:
      0001A8                        803 	.ds 2
      0001AA                        804 _serial_print_uint_value_65536_205:
      0001AA                        805 	.ds 4
      0001AE                        806 _serial_print_uint_base_PARM_2:
      0001AE                        807 	.ds 2
      0001B0                        808 _serial_print_uint_base_value_65536_207:
      0001B0                        809 	.ds 4
      0001B4                        810 _serial_print_float_PARM_2:
      0001B4                        811 	.ds 2
      0001B6                        812 _serial_print_float_value_65536_209:
      0001B6                        813 	.ds 4
      0001BA                        814 _serial_print_float_scale_65536_210:
      0001BA                        815 	.ds 4
      0001BE                        816 _serial_print_float_frac_part_65536_210:
      0001BE                        817 	.ds 4
      0001C2                        818 _serial_println_str_text_65536_220:
      0001C2                        819 	.ds 3
      0001C5                        820 _serial_println_int_value_65536_222:
      0001C5                        821 	.ds 2
      0001C7                        822 _serial_println_uint_value_65536_224:
      0001C7                        823 	.ds 4
      0001CB                        824 _serial_println_float_PARM_2:
      0001CB                        825 	.ds 2
      0001CD                        826 _serial_println_float_value_65536_226:
      0001CD                        827 	.ds 4
                                    828 ;--------------------------------------------------------
                                    829 ; absolute external ram data
                                    830 ;--------------------------------------------------------
                                    831 	.area XABS    (ABS,XDATA)
                                    832 ;--------------------------------------------------------
                                    833 ; initialized external ram data
                                    834 ;--------------------------------------------------------
                                    835 	.area XISEG   (XDATA)
                                    836 	.area HOME    (CODE)
                                    837 	.area GSINIT0 (CODE)
                                    838 	.area GSINIT1 (CODE)
                                    839 	.area GSINIT2 (CODE)
                                    840 	.area GSINIT3 (CODE)
                                    841 	.area GSINIT4 (CODE)
                                    842 	.area GSINIT5 (CODE)
                                    843 	.area GSINIT  (CODE)
                                    844 	.area GSFINAL (CODE)
                                    845 	.area CSEG    (CODE)
                                    846 ;--------------------------------------------------------
                                    847 ; global & static initialisations
                                    848 ;--------------------------------------------------------
                                    849 	.area HOME    (CODE)
                                    850 	.area GSINIT  (CODE)
                                    851 	.area GSFINAL (CODE)
                                    852 	.area GSINIT  (CODE)
                                    853 ;--------------------------------------------------------
                                    854 ; Home
                                    855 ;--------------------------------------------------------
                                    856 	.area HOME    (CODE)
                                    857 	.area HOME    (CODE)
                                    858 ;--------------------------------------------------------
                                    859 ; code
                                    860 ;--------------------------------------------------------
                                    861 	.area CSEG    (CODE)
                                    862 ;------------------------------------------------------------
                                    863 ;Allocation info for local variables in function 'serial_begin'
                                    864 ;------------------------------------------------------------
                                    865 ;baud                      Allocated with name '_serial_begin_baud_65536_183'
                                    866 ;------------------------------------------------------------
                                    867 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:9: void serial_begin(unsigned long baud) {
                                    868 ;	-----------------------------------------
                                    869 ;	 function serial_begin
                                    870 ;	-----------------------------------------
      0016DE                        871 _serial_begin:
                           000007   872 	ar7 = 0x07
                           000006   873 	ar6 = 0x06
                           000005   874 	ar5 = 0x05
                           000004   875 	ar4 = 0x04
                           000003   876 	ar3 = 0x03
                           000002   877 	ar2 = 0x02
                           000001   878 	ar1 = 0x01
                           000000   879 	ar0 = 0x00
                                    880 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:10: (void)baud;
                                    881 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:11: }
      0016DE 22               [24]  882 	ret
                                    883 ;------------------------------------------------------------
                                    884 ;Allocation info for local variables in function 'serial_available'
                                    885 ;------------------------------------------------------------
                                    886 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:13: int serial_available(void) {
                                    887 ;	-----------------------------------------
                                    888 ;	 function serial_available
                                    889 ;	-----------------------------------------
      0016DF                        890 _serial_available:
                                    891 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:14: return (int)USBSerial_available();
      0016DF 12 5A 25         [24]  892 	lcall	_USBSerial_available
      0016E2 7E 00            [12]  893 	mov	r6,#0x00
      0016E4 8E 83            [24]  894 	mov	dph,r6
                                    895 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:15: }
      0016E6 22               [24]  896 	ret
                                    897 ;------------------------------------------------------------
                                    898 ;Allocation info for local variables in function 'serial_read'
                                    899 ;------------------------------------------------------------
                                    900 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:17: int serial_read(void) {
                                    901 ;	-----------------------------------------
                                    902 ;	 function serial_read
                                    903 ;	-----------------------------------------
      0016E7                        904 _serial_read:
                                    905 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:18: return (int)USBSerial_read();
      0016E7 12 5A 2C         [24]  906 	lcall	_USBSerial_read
      0016EA 7E 00            [12]  907 	mov	r6,#0x00
      0016EC 8E 83            [24]  908 	mov	dph,r6
                                    909 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:19: }
      0016EE 22               [24]  910 	ret
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'serial_write'
                                    913 ;------------------------------------------------------------
                                    914 ;c                         Allocated with name '_serial_write_c_65536_189'
                                    915 ;------------------------------------------------------------
                                    916 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:21: size_t serial_write(char c) {
                                    917 ;	-----------------------------------------
                                    918 ;	 function serial_write
                                    919 ;	-----------------------------------------
      0016EF                        920 _serial_write:
      0016EF E5 82            [12]  921 	mov	a,dpl
      0016F1 90 01 A4         [24]  922 	mov	dptr,#_serial_write_c_65536_189
      0016F4 F0               [24]  923 	movx	@dptr,a
                                    924 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:22: return (size_t)USBSerial_write(c);
      0016F5 E0               [24]  925 	movx	a,@dptr
      0016F6 F5 82            [12]  926 	mov	dpl,a
      0016F8 12 59 1E         [24]  927 	lcall	_USBSerial_write
      0016FB 7E 00            [12]  928 	mov	r6,#0x00
      0016FD 8E 83            [24]  929 	mov	dph,r6
                                    930 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:23: }
      0016FF 22               [24]  931 	ret
                                    932 ;------------------------------------------------------------
                                    933 ;Allocation info for local variables in function 'writeUnsigned'
                                    934 ;------------------------------------------------------------
                                    935 ;base                      Allocated to stack - _bp -4
                                    936 ;value                     Allocated to stack - _bp +1
                                    937 ;digits                    Allocated to stack - _bp +13
                                    938 ;divisor                   Allocated to stack - _bp +9
                                    939 ;digit                     Allocated to registers r4 r5 r6 r7 
                                    940 ;started                   Allocated to registers b0 
                                    941 ;sloc0                     Allocated to stack - _bp +5
                                    942 ;------------------------------------------------------------
                                    943 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:25: static void writeUnsigned(unsigned long value, int base) SDCC_REENTRANT {
                                    944 ;	-----------------------------------------
                                    945 ;	 function writeUnsigned
                                    946 ;	-----------------------------------------
      001700                        947 _writeUnsigned:
      001700 C0 1F            [24]  948 	push	_bp
      001702 85 81 1F         [24]  949 	mov	_bp,sp
      001705 C0 82            [24]  950 	push	dpl
      001707 C0 83            [24]  951 	push	dph
      001709 C0 F0            [24]  952 	push	b
      00170B C0 E0            [24]  953 	push	acc
      00170D E5 81            [12]  954 	mov	a,sp
      00170F 24 19            [12]  955 	add	a,#0x19
      001711 F5 81            [12]  956 	mov	sp,a
                                    957 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:26: const char digits[] = "0123456789ABCDEF";
      001713 E5 1F            [12]  958 	mov	a,_bp
      001715 24 0D            [12]  959 	add	a,#0x0d
      001717 F9               [12]  960 	mov	r1,a
      001718 77 30            [12]  961 	mov	@r1,#0x30
      00171A E9               [12]  962 	mov	a,r1
      00171B 04               [12]  963 	inc	a
      00171C F8               [12]  964 	mov	r0,a
      00171D 76 31            [12]  965 	mov	@r0,#0x31
      00171F 74 02            [12]  966 	mov	a,#0x02
      001721 29               [12]  967 	add	a,r1
      001722 F8               [12]  968 	mov	r0,a
      001723 76 32            [12]  969 	mov	@r0,#0x32
      001725 74 03            [12]  970 	mov	a,#0x03
      001727 29               [12]  971 	add	a,r1
      001728 F8               [12]  972 	mov	r0,a
      001729 76 33            [12]  973 	mov	@r0,#0x33
      00172B 74 04            [12]  974 	mov	a,#0x04
      00172D 29               [12]  975 	add	a,r1
      00172E F8               [12]  976 	mov	r0,a
      00172F 76 34            [12]  977 	mov	@r0,#0x34
      001731 74 05            [12]  978 	mov	a,#0x05
      001733 29               [12]  979 	add	a,r1
      001734 F8               [12]  980 	mov	r0,a
      001735 76 35            [12]  981 	mov	@r0,#0x35
      001737 74 06            [12]  982 	mov	a,#0x06
      001739 29               [12]  983 	add	a,r1
      00173A F8               [12]  984 	mov	r0,a
      00173B 76 36            [12]  985 	mov	@r0,#0x36
      00173D 74 07            [12]  986 	mov	a,#0x07
      00173F 29               [12]  987 	add	a,r1
      001740 F8               [12]  988 	mov	r0,a
      001741 76 37            [12]  989 	mov	@r0,#0x37
      001743 74 08            [12]  990 	mov	a,#0x08
      001745 29               [12]  991 	add	a,r1
      001746 F8               [12]  992 	mov	r0,a
      001747 76 38            [12]  993 	mov	@r0,#0x38
      001749 74 09            [12]  994 	mov	a,#0x09
      00174B 29               [12]  995 	add	a,r1
      00174C F8               [12]  996 	mov	r0,a
      00174D 76 39            [12]  997 	mov	@r0,#0x39
      00174F 74 0A            [12]  998 	mov	a,#0x0a
      001751 29               [12]  999 	add	a,r1
      001752 F8               [12] 1000 	mov	r0,a
      001753 76 41            [12] 1001 	mov	@r0,#0x41
      001755 74 0B            [12] 1002 	mov	a,#0x0b
      001757 29               [12] 1003 	add	a,r1
      001758 F8               [12] 1004 	mov	r0,a
      001759 76 42            [12] 1005 	mov	@r0,#0x42
      00175B 74 0C            [12] 1006 	mov	a,#0x0c
      00175D 29               [12] 1007 	add	a,r1
      00175E F8               [12] 1008 	mov	r0,a
      00175F 76 43            [12] 1009 	mov	@r0,#0x43
      001761 74 0D            [12] 1010 	mov	a,#0x0d
      001763 29               [12] 1011 	add	a,r1
      001764 F8               [12] 1012 	mov	r0,a
      001765 76 44            [12] 1013 	mov	@r0,#0x44
      001767 74 0E            [12] 1014 	mov	a,#0x0e
      001769 29               [12] 1015 	add	a,r1
      00176A F8               [12] 1016 	mov	r0,a
      00176B 76 45            [12] 1017 	mov	@r0,#0x45
      00176D 74 0F            [12] 1018 	mov	a,#0x0f
      00176F 29               [12] 1019 	add	a,r1
      001770 F8               [12] 1020 	mov	r0,a
      001771 76 46            [12] 1021 	mov	@r0,#0x46
      001773 74 10            [12] 1022 	mov	a,#0x10
      001775 29               [12] 1023 	add	a,r1
      001776 F8               [12] 1024 	mov	r0,a
      001777 76 00            [12] 1025 	mov	@r0,#0x00
                                   1026 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:27: unsigned long divisor = 1;
      001779 E5 1F            [12] 1027 	mov	a,_bp
      00177B 24 09            [12] 1028 	add	a,#0x09
      00177D F8               [12] 1029 	mov	r0,a
      00177E 76 01            [12] 1030 	mov	@r0,#0x01
      001780 E4               [12] 1031 	clr	a
      001781 08               [12] 1032 	inc	r0
      001782 F6               [12] 1033 	mov	@r0,a
      001783 08               [12] 1034 	inc	r0
      001784 F6               [12] 1035 	mov	@r0,a
      001785 08               [12] 1036 	inc	r0
      001786 F6               [12] 1037 	mov	@r0,a
                                   1038 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:29: bool started = false;
                                   1039 ;	assignBit
      001787 C2 10            [12] 1040 	clr	b0
                                   1041 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:31: if (base < 2 || base > 16) {
      001789 E5 1F            [12] 1042 	mov	a,_bp
      00178B 24 FC            [12] 1043 	add	a,#0xfc
      00178D F8               [12] 1044 	mov	r0,a
      00178E C3               [12] 1045 	clr	c
      00178F E6               [12] 1046 	mov	a,@r0
      001790 94 02            [12] 1047 	subb	a,#0x02
      001792 08               [12] 1048 	inc	r0
      001793 E6               [12] 1049 	mov	a,@r0
      001794 64 80            [12] 1050 	xrl	a,#0x80
      001796 94 80            [12] 1051 	subb	a,#0x80
      001798 40 15            [24] 1052 	jc	00101$
      00179A E5 1F            [12] 1053 	mov	a,_bp
      00179C 24 FC            [12] 1054 	add	a,#0xfc
      00179E F8               [12] 1055 	mov	r0,a
      00179F C3               [12] 1056 	clr	c
      0017A0 74 10            [12] 1057 	mov	a,#0x10
      0017A2 96               [12] 1058 	subb	a,@r0
      0017A3 74 80            [12] 1059 	mov	a,#(0x00 ^ 0x80)
      0017A5 08               [12] 1060 	inc	r0
      0017A6 86 F0            [24] 1061 	mov	b,@r0
      0017A8 63 F0 80         [24] 1062 	xrl	b,#0x80
      0017AB 95 F0            [12] 1063 	subb	a,b
      0017AD 50 0A            [24] 1064 	jnc	00102$
      0017AF                       1065 00101$:
                                   1066 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:32: base = 10;
      0017AF E5 1F            [12] 1067 	mov	a,_bp
      0017B1 24 FC            [12] 1068 	add	a,#0xfc
      0017B3 F8               [12] 1069 	mov	r0,a
      0017B4 76 0A            [12] 1070 	mov	@r0,#0x0a
      0017B6 08               [12] 1071 	inc	r0
      0017B7 76 00            [12] 1072 	mov	@r0,#0x00
      0017B9                       1073 00102$:
                                   1074 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:35: if (value == 0) {
      0017B9 A8 1F            [24] 1075 	mov	r0,_bp
      0017BB 08               [12] 1076 	inc	r0
      0017BC E6               [12] 1077 	mov	a,@r0
      0017BD 08               [12] 1078 	inc	r0
      0017BE 46               [12] 1079 	orl	a,@r0
      0017BF 08               [12] 1080 	inc	r0
      0017C0 46               [12] 1081 	orl	a,@r0
      0017C1 08               [12] 1082 	inc	r0
      0017C2 46               [12] 1083 	orl	a,@r0
      0017C3 70 09            [24] 1084 	jnz	00107$
                                   1085 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:36: USBSerial_write('0');
      0017C5 75 82 30         [24] 1086 	mov	dpl,#0x30
      0017C8 12 59 1E         [24] 1087 	lcall	_USBSerial_write
                                   1088 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:37: return;
      0017CB 02 19 E1         [24] 1089 	ljmp	00117$
                                   1090 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:40: while ((divisor <= (0xFFFFFFFFUL / (unsigned long)base)) &&
      0017CE                       1091 00107$:
      0017CE C0 01            [24] 1092 	push	ar1
      0017D0 E5 1F            [12] 1093 	mov	a,_bp
      0017D2 24 FC            [12] 1094 	add	a,#0xfc
      0017D4 F8               [12] 1095 	mov	r0,a
      0017D5 C0 01            [24] 1096 	push	ar1
      0017D7 E5 1F            [12] 1097 	mov	a,_bp
      0017D9 24 05            [12] 1098 	add	a,#0x05
      0017DB F9               [12] 1099 	mov	r1,a
      0017DC E6               [12] 1100 	mov	a,@r0
      0017DD F7               [12] 1101 	mov	@r1,a
      0017DE 08               [12] 1102 	inc	r0
      0017DF E6               [12] 1103 	mov	a,@r0
      0017E0 09               [12] 1104 	inc	r1
      0017E1 F7               [12] 1105 	mov	@r1,a
      0017E2 E6               [12] 1106 	mov	a,@r0
      0017E3 33               [12] 1107 	rlc	a
      0017E4 95 E0            [12] 1108 	subb	a,acc
      0017E6 09               [12] 1109 	inc	r1
      0017E7 F7               [12] 1110 	mov	@r1,a
      0017E8 09               [12] 1111 	inc	r1
      0017E9 F7               [12] 1112 	mov	@r1,a
      0017EA C0 22            [24] 1113 	push	bits
      0017EC E5 1F            [12] 1114 	mov	a,_bp
      0017EE 24 05            [12] 1115 	add	a,#0x05
      0017F0 F8               [12] 1116 	mov	r0,a
      0017F1 E6               [12] 1117 	mov	a,@r0
      0017F2 C0 E0            [24] 1118 	push	acc
      0017F4 08               [12] 1119 	inc	r0
      0017F5 E6               [12] 1120 	mov	a,@r0
      0017F6 C0 E0            [24] 1121 	push	acc
      0017F8 08               [12] 1122 	inc	r0
      0017F9 E6               [12] 1123 	mov	a,@r0
      0017FA C0 E0            [24] 1124 	push	acc
      0017FC 08               [12] 1125 	inc	r0
      0017FD E6               [12] 1126 	mov	a,@r0
      0017FE C0 E0            [24] 1127 	push	acc
      001800 90 FF FF         [24] 1128 	mov	dptr,#0xffff
      001803 74 FF            [12] 1129 	mov	a,#0xff
      001805 F5 F0            [12] 1130 	mov	b,a
      001807 12 5B 8F         [24] 1131 	lcall	__divulong
      00180A AC 82            [24] 1132 	mov	r4,dpl
      00180C AD 83            [24] 1133 	mov	r5,dph
      00180E AE F0            [24] 1134 	mov	r6,b
      001810 FF               [12] 1135 	mov	r7,a
      001811 E5 81            [12] 1136 	mov	a,sp
      001813 24 FC            [12] 1137 	add	a,#0xfc
      001815 F5 81            [12] 1138 	mov	sp,a
      001817 D0 22            [24] 1139 	pop	bits
      001819 D0 01            [24] 1140 	pop	ar1
      00181B E5 1F            [12] 1141 	mov	a,_bp
      00181D 24 09            [12] 1142 	add	a,#0x09
      00181F F8               [12] 1143 	mov	r0,a
      001820 C3               [12] 1144 	clr	c
      001821 EC               [12] 1145 	mov	a,r4
      001822 96               [12] 1146 	subb	a,@r0
      001823 ED               [12] 1147 	mov	a,r5
      001824 08               [12] 1148 	inc	r0
      001825 96               [12] 1149 	subb	a,@r0
      001826 EE               [12] 1150 	mov	a,r6
      001827 08               [12] 1151 	inc	r0
      001828 96               [12] 1152 	subb	a,@r0
      001829 EF               [12] 1153 	mov	a,r7
      00182A 08               [12] 1154 	inc	r0
      00182B 96               [12] 1155 	subb	a,@r0
      00182C D0 01            [24] 1156 	pop	ar1
      00182E 50 03            [24] 1157 	jnc	00158$
      001830 02 18 CD         [24] 1158 	ljmp	00114$
      001833                       1159 00158$:
                                   1160 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:41: ((value / divisor) >= (unsigned long)base)) {
      001833 C0 01            [24] 1161 	push	ar1
      001835 C0 22            [24] 1162 	push	bits
      001837 E5 1F            [12] 1163 	mov	a,_bp
      001839 24 09            [12] 1164 	add	a,#0x09
      00183B F8               [12] 1165 	mov	r0,a
      00183C E6               [12] 1166 	mov	a,@r0
      00183D C0 E0            [24] 1167 	push	acc
      00183F 08               [12] 1168 	inc	r0
      001840 E6               [12] 1169 	mov	a,@r0
      001841 C0 E0            [24] 1170 	push	acc
      001843 08               [12] 1171 	inc	r0
      001844 E6               [12] 1172 	mov	a,@r0
      001845 C0 E0            [24] 1173 	push	acc
      001847 08               [12] 1174 	inc	r0
      001848 E6               [12] 1175 	mov	a,@r0
      001849 C0 E0            [24] 1176 	push	acc
      00184B A8 1F            [24] 1177 	mov	r0,_bp
      00184D 08               [12] 1178 	inc	r0
      00184E 86 82            [24] 1179 	mov	dpl,@r0
      001850 08               [12] 1180 	inc	r0
      001851 86 83            [24] 1181 	mov	dph,@r0
      001853 08               [12] 1182 	inc	r0
      001854 86 F0            [24] 1183 	mov	b,@r0
      001856 08               [12] 1184 	inc	r0
      001857 E6               [12] 1185 	mov	a,@r0
      001858 12 5B 8F         [24] 1186 	lcall	__divulong
      00185B AC 82            [24] 1187 	mov	r4,dpl
      00185D AD 83            [24] 1188 	mov	r5,dph
      00185F AE F0            [24] 1189 	mov	r6,b
      001861 FF               [12] 1190 	mov	r7,a
      001862 E5 81            [12] 1191 	mov	a,sp
      001864 24 FC            [12] 1192 	add	a,#0xfc
      001866 F5 81            [12] 1193 	mov	sp,a
      001868 D0 22            [24] 1194 	pop	bits
      00186A D0 01            [24] 1195 	pop	ar1
      00186C E5 1F            [12] 1196 	mov	a,_bp
      00186E 24 05            [12] 1197 	add	a,#0x05
      001870 F8               [12] 1198 	mov	r0,a
      001871 C3               [12] 1199 	clr	c
      001872 EC               [12] 1200 	mov	a,r4
      001873 96               [12] 1201 	subb	a,@r0
      001874 ED               [12] 1202 	mov	a,r5
      001875 08               [12] 1203 	inc	r0
      001876 96               [12] 1204 	subb	a,@r0
      001877 EE               [12] 1205 	mov	a,r6
      001878 08               [12] 1206 	inc	r0
      001879 96               [12] 1207 	subb	a,@r0
      00187A EF               [12] 1208 	mov	a,r7
      00187B 08               [12] 1209 	inc	r0
      00187C 96               [12] 1210 	subb	a,@r0
      00187D 40 4E            [24] 1211 	jc	00114$
                                   1212 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:42: divisor *= (unsigned long)base;
      00187F C0 01            [24] 1213 	push	ar1
      001881 C0 22            [24] 1214 	push	bits
      001883 E5 1F            [12] 1215 	mov	a,_bp
      001885 24 05            [12] 1216 	add	a,#0x05
      001887 F8               [12] 1217 	mov	r0,a
      001888 E6               [12] 1218 	mov	a,@r0
      001889 C0 E0            [24] 1219 	push	acc
      00188B 08               [12] 1220 	inc	r0
      00188C E6               [12] 1221 	mov	a,@r0
      00188D C0 E0            [24] 1222 	push	acc
      00188F 08               [12] 1223 	inc	r0
      001890 E6               [12] 1224 	mov	a,@r0
      001891 C0 E0            [24] 1225 	push	acc
      001893 08               [12] 1226 	inc	r0
      001894 E6               [12] 1227 	mov	a,@r0
      001895 C0 E0            [24] 1228 	push	acc
      001897 E5 1F            [12] 1229 	mov	a,_bp
      001899 24 09            [12] 1230 	add	a,#0x09
      00189B F8               [12] 1231 	mov	r0,a
      00189C 86 82            [24] 1232 	mov	dpl,@r0
      00189E 08               [12] 1233 	inc	r0
      00189F 86 83            [24] 1234 	mov	dph,@r0
      0018A1 08               [12] 1235 	inc	r0
      0018A2 86 F0            [24] 1236 	mov	b,@r0
      0018A4 08               [12] 1237 	inc	r0
      0018A5 E6               [12] 1238 	mov	a,@r0
      0018A6 12 5D 76         [24] 1239 	lcall	__mullong
      0018A9 AC 82            [24] 1240 	mov	r4,dpl
      0018AB AD 83            [24] 1241 	mov	r5,dph
      0018AD AE F0            [24] 1242 	mov	r6,b
      0018AF FF               [12] 1243 	mov	r7,a
      0018B0 E5 81            [12] 1244 	mov	a,sp
      0018B2 24 FC            [12] 1245 	add	a,#0xfc
      0018B4 F5 81            [12] 1246 	mov	sp,a
      0018B6 D0 22            [24] 1247 	pop	bits
      0018B8 D0 01            [24] 1248 	pop	ar1
      0018BA E5 1F            [12] 1249 	mov	a,_bp
      0018BC 24 09            [12] 1250 	add	a,#0x09
      0018BE F8               [12] 1251 	mov	r0,a
      0018BF A6 04            [24] 1252 	mov	@r0,ar4
      0018C1 08               [12] 1253 	inc	r0
      0018C2 A6 05            [24] 1254 	mov	@r0,ar5
      0018C4 08               [12] 1255 	inc	r0
      0018C5 A6 06            [24] 1256 	mov	@r0,ar6
      0018C7 08               [12] 1257 	inc	r0
      0018C8 A6 07            [24] 1258 	mov	@r0,ar7
      0018CA 02 17 CE         [24] 1259 	ljmp	00107$
                                   1260 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:45: while (divisor > 0) {
      0018CD                       1261 00114$:
      0018CD E5 1F            [12] 1262 	mov	a,_bp
      0018CF 24 09            [12] 1263 	add	a,#0x09
      0018D1 F8               [12] 1264 	mov	r0,a
      0018D2 E6               [12] 1265 	mov	a,@r0
      0018D3 08               [12] 1266 	inc	r0
      0018D4 46               [12] 1267 	orl	a,@r0
      0018D5 08               [12] 1268 	inc	r0
      0018D6 46               [12] 1269 	orl	a,@r0
      0018D7 08               [12] 1270 	inc	r0
      0018D8 46               [12] 1271 	orl	a,@r0
      0018D9 70 03            [24] 1272 	jnz	00160$
      0018DB 02 19 E1         [24] 1273 	ljmp	00117$
      0018DE                       1274 00160$:
                                   1275 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:46: digit = value / divisor;
      0018DE C0 01            [24] 1276 	push	ar1
      0018E0 C0 22            [24] 1277 	push	bits
      0018E2 E5 1F            [12] 1278 	mov	a,_bp
      0018E4 24 09            [12] 1279 	add	a,#0x09
      0018E6 F8               [12] 1280 	mov	r0,a
      0018E7 E6               [12] 1281 	mov	a,@r0
      0018E8 C0 E0            [24] 1282 	push	acc
      0018EA 08               [12] 1283 	inc	r0
      0018EB E6               [12] 1284 	mov	a,@r0
      0018EC C0 E0            [24] 1285 	push	acc
      0018EE 08               [12] 1286 	inc	r0
      0018EF E6               [12] 1287 	mov	a,@r0
      0018F0 C0 E0            [24] 1288 	push	acc
      0018F2 08               [12] 1289 	inc	r0
      0018F3 E6               [12] 1290 	mov	a,@r0
      0018F4 C0 E0            [24] 1291 	push	acc
      0018F6 A8 1F            [24] 1292 	mov	r0,_bp
      0018F8 08               [12] 1293 	inc	r0
      0018F9 86 82            [24] 1294 	mov	dpl,@r0
      0018FB 08               [12] 1295 	inc	r0
      0018FC 86 83            [24] 1296 	mov	dph,@r0
      0018FE 08               [12] 1297 	inc	r0
      0018FF 86 F0            [24] 1298 	mov	b,@r0
      001901 08               [12] 1299 	inc	r0
      001902 E6               [12] 1300 	mov	a,@r0
      001903 12 5B 8F         [24] 1301 	lcall	__divulong
      001906 AC 82            [24] 1302 	mov	r4,dpl
      001908 AD 83            [24] 1303 	mov	r5,dph
      00190A AE F0            [24] 1304 	mov	r6,b
      00190C FF               [12] 1305 	mov	r7,a
      00190D E5 81            [12] 1306 	mov	a,sp
      00190F 24 FC            [12] 1307 	add	a,#0xfc
      001911 F5 81            [12] 1308 	mov	sp,a
      001913 D0 22            [24] 1309 	pop	bits
      001915 D0 01            [24] 1310 	pop	ar1
                                   1311 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:47: value %= divisor;
      001917 C0 07            [24] 1312 	push	ar7
      001919 C0 06            [24] 1313 	push	ar6
      00191B C0 05            [24] 1314 	push	ar5
      00191D C0 04            [24] 1315 	push	ar4
      00191F C0 01            [24] 1316 	push	ar1
      001921 C0 22            [24] 1317 	push	bits
      001923 E5 1F            [12] 1318 	mov	a,_bp
      001925 24 09            [12] 1319 	add	a,#0x09
      001927 F8               [12] 1320 	mov	r0,a
      001928 E6               [12] 1321 	mov	a,@r0
      001929 C0 E0            [24] 1322 	push	acc
      00192B 08               [12] 1323 	inc	r0
      00192C E6               [12] 1324 	mov	a,@r0
      00192D C0 E0            [24] 1325 	push	acc
      00192F 08               [12] 1326 	inc	r0
      001930 E6               [12] 1327 	mov	a,@r0
      001931 C0 E0            [24] 1328 	push	acc
      001933 08               [12] 1329 	inc	r0
      001934 E6               [12] 1330 	mov	a,@r0
      001935 C0 E0            [24] 1331 	push	acc
      001937 A8 1F            [24] 1332 	mov	r0,_bp
      001939 08               [12] 1333 	inc	r0
      00193A 86 82            [24] 1334 	mov	dpl,@r0
      00193C 08               [12] 1335 	inc	r0
      00193D 86 83            [24] 1336 	mov	dph,@r0
      00193F 08               [12] 1337 	inc	r0
      001940 86 F0            [24] 1338 	mov	b,@r0
      001942 08               [12] 1339 	inc	r0
      001943 E6               [12] 1340 	mov	a,@r0
      001944 12 5A CD         [24] 1341 	lcall	__modulong
      001947 A8 1F            [24] 1342 	mov	r0,_bp
      001949 08               [12] 1343 	inc	r0
      00194A A6 82            [24] 1344 	mov	@r0,dpl
      00194C 08               [12] 1345 	inc	r0
      00194D A6 83            [24] 1346 	mov	@r0,dph
      00194F 08               [12] 1347 	inc	r0
      001950 A6 F0            [24] 1348 	mov	@r0,b
      001952 08               [12] 1349 	inc	r0
      001953 F6               [12] 1350 	mov	@r0,a
      001954 E5 81            [12] 1351 	mov	a,sp
      001956 24 FC            [12] 1352 	add	a,#0xfc
      001958 F5 81            [12] 1353 	mov	sp,a
      00195A D0 22            [24] 1354 	pop	bits
      00195C D0 01            [24] 1355 	pop	ar1
      00195E D0 04            [24] 1356 	pop	ar4
      001960 D0 05            [24] 1357 	pop	ar5
      001962 D0 06            [24] 1358 	pop	ar6
      001964 D0 07            [24] 1359 	pop	ar7
                                   1360 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:49: if (digit != 0 || started || divisor == 1) {
      001966 EC               [12] 1361 	mov	a,r4
      001967 4D               [12] 1362 	orl	a,r5
      001968 4E               [12] 1363 	orl	a,r6
      001969 4F               [12] 1364 	orl	a,r7
      00196A 70 17            [24] 1365 	jnz	00110$
      00196C 20 10 14         [24] 1366 	jb	b0,00110$
      00196F E5 1F            [12] 1367 	mov	a,_bp
      001971 24 09            [12] 1368 	add	a,#0x09
      001973 F8               [12] 1369 	mov	r0,a
      001974 B6 01 1C         [24] 1370 	cjne	@r0,#0x01,00111$
      001977 08               [12] 1371 	inc	r0
      001978 B6 00 18         [24] 1372 	cjne	@r0,#0x00,00111$
      00197B 08               [12] 1373 	inc	r0
      00197C B6 00 14         [24] 1374 	cjne	@r0,#0x00,00111$
      00197F 08               [12] 1375 	inc	r0
      001980 B6 00 10         [24] 1376 	cjne	@r0,#0x00,00111$
      001983                       1377 00110$:
                                   1378 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:50: USBSerial_write(digits[digit]);
      001983 EC               [12] 1379 	mov	a,r4
      001984 29               [12] 1380 	add	a,r1
      001985 F8               [12] 1381 	mov	r0,a
      001986 86 07            [24] 1382 	mov	ar7,@r0
      001988 8F 82            [24] 1383 	mov	dpl,r7
      00198A C0 01            [24] 1384 	push	ar1
      00198C 12 59 1E         [24] 1385 	lcall	_USBSerial_write
      00198F D0 01            [24] 1386 	pop	ar1
                                   1387 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:51: started = true;
                                   1388 ;	assignBit
      001991 D2 10            [12] 1389 	setb	b0
      001993                       1390 00111$:
                                   1391 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:54: divisor /= (unsigned long)base;
      001993 C0 01            [24] 1392 	push	ar1
      001995 C0 22            [24] 1393 	push	bits
      001997 E5 1F            [12] 1394 	mov	a,_bp
      001999 24 05            [12] 1395 	add	a,#0x05
      00199B F8               [12] 1396 	mov	r0,a
      00199C E6               [12] 1397 	mov	a,@r0
      00199D C0 E0            [24] 1398 	push	acc
      00199F 08               [12] 1399 	inc	r0
      0019A0 E6               [12] 1400 	mov	a,@r0
      0019A1 C0 E0            [24] 1401 	push	acc
      0019A3 08               [12] 1402 	inc	r0
      0019A4 E6               [12] 1403 	mov	a,@r0
      0019A5 C0 E0            [24] 1404 	push	acc
      0019A7 08               [12] 1405 	inc	r0
      0019A8 E6               [12] 1406 	mov	a,@r0
      0019A9 C0 E0            [24] 1407 	push	acc
      0019AB E5 1F            [12] 1408 	mov	a,_bp
      0019AD 24 09            [12] 1409 	add	a,#0x09
      0019AF F8               [12] 1410 	mov	r0,a
      0019B0 86 82            [24] 1411 	mov	dpl,@r0
      0019B2 08               [12] 1412 	inc	r0
      0019B3 86 83            [24] 1413 	mov	dph,@r0
      0019B5 08               [12] 1414 	inc	r0
      0019B6 86 F0            [24] 1415 	mov	b,@r0
      0019B8 08               [12] 1416 	inc	r0
      0019B9 E6               [12] 1417 	mov	a,@r0
      0019BA 12 5B 8F         [24] 1418 	lcall	__divulong
      0019BD AC 82            [24] 1419 	mov	r4,dpl
      0019BF AD 83            [24] 1420 	mov	r5,dph
      0019C1 AE F0            [24] 1421 	mov	r6,b
      0019C3 FF               [12] 1422 	mov	r7,a
      0019C4 E5 81            [12] 1423 	mov	a,sp
      0019C6 24 FC            [12] 1424 	add	a,#0xfc
      0019C8 F5 81            [12] 1425 	mov	sp,a
      0019CA D0 22            [24] 1426 	pop	bits
      0019CC D0 01            [24] 1427 	pop	ar1
      0019CE E5 1F            [12] 1428 	mov	a,_bp
      0019D0 24 09            [12] 1429 	add	a,#0x09
      0019D2 F8               [12] 1430 	mov	r0,a
      0019D3 A6 04            [24] 1431 	mov	@r0,ar4
      0019D5 08               [12] 1432 	inc	r0
      0019D6 A6 05            [24] 1433 	mov	@r0,ar5
      0019D8 08               [12] 1434 	inc	r0
      0019D9 A6 06            [24] 1435 	mov	@r0,ar6
      0019DB 08               [12] 1436 	inc	r0
      0019DC A6 07            [24] 1437 	mov	@r0,ar7
      0019DE 02 18 CD         [24] 1438 	ljmp	00114$
      0019E1                       1439 00117$:
                                   1440 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:56: }
      0019E1 85 1F 81         [24] 1441 	mov	sp,_bp
      0019E4 D0 1F            [24] 1442 	pop	_bp
      0019E6 22               [24] 1443 	ret
                                   1444 ;------------------------------------------------------------
                                   1445 ;Allocation info for local variables in function 'serial_print_str'
                                   1446 ;------------------------------------------------------------
                                   1447 ;text                      Allocated with name '_serial_print_str_text_65536_198'
                                   1448 ;------------------------------------------------------------
                                   1449 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:58: void serial_print_str(const char* text) {
                                   1450 ;	-----------------------------------------
                                   1451 ;	 function serial_print_str
                                   1452 ;	-----------------------------------------
      0019E7                       1453 _serial_print_str:
      0019E7 AF F0            [24] 1454 	mov	r7,b
      0019E9 AE 83            [24] 1455 	mov	r6,dph
      0019EB E5 82            [12] 1456 	mov	a,dpl
      0019ED 90 01 A5         [24] 1457 	mov	dptr,#_serial_print_str_text_65536_198
      0019F0 F0               [24] 1458 	movx	@dptr,a
      0019F1 EE               [12] 1459 	mov	a,r6
      0019F2 A3               [24] 1460 	inc	dptr
      0019F3 F0               [24] 1461 	movx	@dptr,a
      0019F4 EF               [12] 1462 	mov	a,r7
      0019F5 A3               [24] 1463 	inc	dptr
      0019F6 F0               [24] 1464 	movx	@dptr,a
                                   1465 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:59: if (!text) return;
      0019F7 90 01 A5         [24] 1466 	mov	dptr,#_serial_print_str_text_65536_198
      0019FA E0               [24] 1467 	movx	a,@dptr
      0019FB FD               [12] 1468 	mov	r5,a
      0019FC A3               [24] 1469 	inc	dptr
      0019FD E0               [24] 1470 	movx	a,@dptr
      0019FE FE               [12] 1471 	mov	r6,a
      0019FF A3               [24] 1472 	inc	dptr
      001A00 E0               [24] 1473 	movx	a,@dptr
      001A01 FF               [12] 1474 	mov	r7,a
      001A02 90 01 A5         [24] 1475 	mov	dptr,#_serial_print_str_text_65536_198
      001A05 E0               [24] 1476 	movx	a,@dptr
      001A06 F5 F0            [12] 1477 	mov	b,a
      001A08 A3               [24] 1478 	inc	dptr
      001A09 E0               [24] 1479 	movx	a,@dptr
      001A0A 45 F0            [12] 1480 	orl	a,b
      001A0C 70 01            [24] 1481 	jnz	00110$
                                   1482 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:60: while (*text) {
      001A0E 22               [24] 1483 	ret
      001A0F                       1484 00110$:
      001A0F                       1485 00103$:
      001A0F 8D 82            [24] 1486 	mov	dpl,r5
      001A11 8E 83            [24] 1487 	mov	dph,r6
      001A13 8F F0            [24] 1488 	mov	b,r7
      001A15 12 5D 5A         [24] 1489 	lcall	__gptrget
      001A18 FC               [12] 1490 	mov	r4,a
      001A19 60 23            [24] 1491 	jz	00111$
                                   1492 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:61: USBSerial_write(*text++);
      001A1B 0D               [12] 1493 	inc	r5
      001A1C BD 00 01         [24] 1494 	cjne	r5,#0x00,00123$
      001A1F 0E               [12] 1495 	inc	r6
      001A20                       1496 00123$:
      001A20 90 01 A5         [24] 1497 	mov	dptr,#_serial_print_str_text_65536_198
      001A23 ED               [12] 1498 	mov	a,r5
      001A24 F0               [24] 1499 	movx	@dptr,a
      001A25 EE               [12] 1500 	mov	a,r6
      001A26 A3               [24] 1501 	inc	dptr
      001A27 F0               [24] 1502 	movx	@dptr,a
      001A28 EF               [12] 1503 	mov	a,r7
      001A29 A3               [24] 1504 	inc	dptr
      001A2A F0               [24] 1505 	movx	@dptr,a
      001A2B 8C 82            [24] 1506 	mov	dpl,r4
      001A2D C0 07            [24] 1507 	push	ar7
      001A2F C0 06            [24] 1508 	push	ar6
      001A31 C0 05            [24] 1509 	push	ar5
      001A33 12 59 1E         [24] 1510 	lcall	_USBSerial_write
      001A36 D0 05            [24] 1511 	pop	ar5
      001A38 D0 06            [24] 1512 	pop	ar6
      001A3A D0 07            [24] 1513 	pop	ar7
      001A3C 80 D1            [24] 1514 	sjmp	00103$
      001A3E                       1515 00111$:
      001A3E 90 01 A5         [24] 1516 	mov	dptr,#_serial_print_str_text_65536_198
      001A41 ED               [12] 1517 	mov	a,r5
      001A42 F0               [24] 1518 	movx	@dptr,a
      001A43 EE               [12] 1519 	mov	a,r6
      001A44 A3               [24] 1520 	inc	dptr
      001A45 F0               [24] 1521 	movx	@dptr,a
      001A46 EF               [12] 1522 	mov	a,r7
      001A47 A3               [24] 1523 	inc	dptr
      001A48 F0               [24] 1524 	movx	@dptr,a
                                   1525 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:63: }
      001A49 22               [24] 1526 	ret
                                   1527 ;------------------------------------------------------------
                                   1528 ;Allocation info for local variables in function 'serial_print_int'
                                   1529 ;------------------------------------------------------------
                                   1530 ;value                     Allocated with name '_serial_print_int_value_65536_201'
                                   1531 ;------------------------------------------------------------
                                   1532 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:65: void serial_print_int(int value) {
                                   1533 ;	-----------------------------------------
                                   1534 ;	 function serial_print_int
                                   1535 ;	-----------------------------------------
      001A4A                       1536 _serial_print_int:
      001A4A AF 83            [24] 1537 	mov	r7,dph
      001A4C E5 82            [12] 1538 	mov	a,dpl
      001A4E 90 01 A8         [24] 1539 	mov	dptr,#_serial_print_int_value_65536_201
      001A51 F0               [24] 1540 	movx	@dptr,a
      001A52 EF               [12] 1541 	mov	a,r7
      001A53 A3               [24] 1542 	inc	dptr
      001A54 F0               [24] 1543 	movx	@dptr,a
                                   1544 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:66: if (value < 0) {
      001A55 90 01 A8         [24] 1545 	mov	dptr,#_serial_print_int_value_65536_201
      001A58 E0               [24] 1546 	movx	a,@dptr
      001A59 FE               [12] 1547 	mov	r6,a
      001A5A A3               [24] 1548 	inc	dptr
      001A5B E0               [24] 1549 	movx	a,@dptr
      001A5C FF               [12] 1550 	mov	r7,a
      001A5D 30 E7 30         [24] 1551 	jnb	acc.7,00102$
                                   1552 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:67: USBSerial_write('-');
      001A60 75 82 2D         [24] 1553 	mov	dpl,#0x2d
      001A63 C0 07            [24] 1554 	push	ar7
      001A65 C0 06            [24] 1555 	push	ar6
      001A67 12 59 1E         [24] 1556 	lcall	_USBSerial_write
      001A6A D0 06            [24] 1557 	pop	ar6
      001A6C D0 07            [24] 1558 	pop	ar7
                                   1559 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:68: writeUnsigned((unsigned long)(-value), 10);
      001A6E C3               [12] 1560 	clr	c
      001A6F E4               [12] 1561 	clr	a
      001A70 9E               [12] 1562 	subb	a,r6
      001A71 FC               [12] 1563 	mov	r4,a
      001A72 E4               [12] 1564 	clr	a
      001A73 9F               [12] 1565 	subb	a,r7
      001A74 FD               [12] 1566 	mov	r5,a
      001A75 33               [12] 1567 	rlc	a
      001A76 95 E0            [12] 1568 	subb	a,acc
      001A78 FB               [12] 1569 	mov	r3,a
      001A79 FA               [12] 1570 	mov	r2,a
      001A7A 74 0A            [12] 1571 	mov	a,#0x0a
      001A7C C0 E0            [24] 1572 	push	acc
      001A7E E4               [12] 1573 	clr	a
      001A7F C0 E0            [24] 1574 	push	acc
      001A81 8C 82            [24] 1575 	mov	dpl,r4
      001A83 8D 83            [24] 1576 	mov	dph,r5
      001A85 8B F0            [24] 1577 	mov	b,r3
      001A87 EA               [12] 1578 	mov	a,r2
      001A88 12 17 00         [24] 1579 	lcall	_writeUnsigned
      001A8B 15 81            [12] 1580 	dec	sp
      001A8D 15 81            [12] 1581 	dec	sp
      001A8F 22               [24] 1582 	ret
      001A90                       1583 00102$:
                                   1584 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:70: writeUnsigned((unsigned long)value, 10);
      001A90 EF               [12] 1585 	mov	a,r7
      001A91 33               [12] 1586 	rlc	a
      001A92 95 E0            [12] 1587 	subb	a,acc
      001A94 FD               [12] 1588 	mov	r5,a
      001A95 FC               [12] 1589 	mov	r4,a
      001A96 74 0A            [12] 1590 	mov	a,#0x0a
      001A98 C0 E0            [24] 1591 	push	acc
      001A9A E4               [12] 1592 	clr	a
      001A9B C0 E0            [24] 1593 	push	acc
      001A9D 8E 82            [24] 1594 	mov	dpl,r6
      001A9F 8F 83            [24] 1595 	mov	dph,r7
      001AA1 8D F0            [24] 1596 	mov	b,r5
      001AA3 EC               [12] 1597 	mov	a,r4
      001AA4 12 17 00         [24] 1598 	lcall	_writeUnsigned
      001AA7 15 81            [12] 1599 	dec	sp
      001AA9 15 81            [12] 1600 	dec	sp
                                   1601 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:72: }
      001AAB 22               [24] 1602 	ret
                                   1603 ;------------------------------------------------------------
                                   1604 ;Allocation info for local variables in function 'serial_print_uint'
                                   1605 ;------------------------------------------------------------
                                   1606 ;value                     Allocated with name '_serial_print_uint_value_65536_205'
                                   1607 ;------------------------------------------------------------
                                   1608 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:74: void serial_print_uint(unsigned long value) {
                                   1609 ;	-----------------------------------------
                                   1610 ;	 function serial_print_uint
                                   1611 ;	-----------------------------------------
      001AAC                       1612 _serial_print_uint:
      001AAC AF 82            [24] 1613 	mov	r7,dpl
      001AAE AE 83            [24] 1614 	mov	r6,dph
      001AB0 AD F0            [24] 1615 	mov	r5,b
      001AB2 FC               [12] 1616 	mov	r4,a
      001AB3 90 01 AA         [24] 1617 	mov	dptr,#_serial_print_uint_value_65536_205
      001AB6 EF               [12] 1618 	mov	a,r7
      001AB7 F0               [24] 1619 	movx	@dptr,a
      001AB8 EE               [12] 1620 	mov	a,r6
      001AB9 A3               [24] 1621 	inc	dptr
      001ABA F0               [24] 1622 	movx	@dptr,a
      001ABB ED               [12] 1623 	mov	a,r5
      001ABC A3               [24] 1624 	inc	dptr
      001ABD F0               [24] 1625 	movx	@dptr,a
      001ABE EC               [12] 1626 	mov	a,r4
      001ABF A3               [24] 1627 	inc	dptr
      001AC0 F0               [24] 1628 	movx	@dptr,a
                                   1629 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:75: writeUnsigned(value, 10);
      001AC1 90 01 AA         [24] 1630 	mov	dptr,#_serial_print_uint_value_65536_205
      001AC4 E0               [24] 1631 	movx	a,@dptr
      001AC5 FC               [12] 1632 	mov	r4,a
      001AC6 A3               [24] 1633 	inc	dptr
      001AC7 E0               [24] 1634 	movx	a,@dptr
      001AC8 FD               [12] 1635 	mov	r5,a
      001AC9 A3               [24] 1636 	inc	dptr
      001ACA E0               [24] 1637 	movx	a,@dptr
      001ACB FE               [12] 1638 	mov	r6,a
      001ACC A3               [24] 1639 	inc	dptr
      001ACD E0               [24] 1640 	movx	a,@dptr
      001ACE FF               [12] 1641 	mov	r7,a
      001ACF 74 0A            [12] 1642 	mov	a,#0x0a
      001AD1 C0 E0            [24] 1643 	push	acc
      001AD3 E4               [12] 1644 	clr	a
      001AD4 C0 E0            [24] 1645 	push	acc
      001AD6 8C 82            [24] 1646 	mov	dpl,r4
      001AD8 8D 83            [24] 1647 	mov	dph,r5
      001ADA 8E F0            [24] 1648 	mov	b,r6
      001ADC EF               [12] 1649 	mov	a,r7
      001ADD 12 17 00         [24] 1650 	lcall	_writeUnsigned
      001AE0 15 81            [12] 1651 	dec	sp
      001AE2 15 81            [12] 1652 	dec	sp
                                   1653 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:76: }
      001AE4 22               [24] 1654 	ret
                                   1655 ;------------------------------------------------------------
                                   1656 ;Allocation info for local variables in function 'serial_print_uint_base'
                                   1657 ;------------------------------------------------------------
                                   1658 ;base                      Allocated with name '_serial_print_uint_base_PARM_2'
                                   1659 ;value                     Allocated with name '_serial_print_uint_base_value_65536_207'
                                   1660 ;------------------------------------------------------------
                                   1661 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:78: void serial_print_uint_base(unsigned long value, int base) {
                                   1662 ;	-----------------------------------------
                                   1663 ;	 function serial_print_uint_base
                                   1664 ;	-----------------------------------------
      001AE5                       1665 _serial_print_uint_base:
      001AE5 AF 82            [24] 1666 	mov	r7,dpl
      001AE7 AE 83            [24] 1667 	mov	r6,dph
      001AE9 AD F0            [24] 1668 	mov	r5,b
      001AEB FC               [12] 1669 	mov	r4,a
      001AEC 90 01 B0         [24] 1670 	mov	dptr,#_serial_print_uint_base_value_65536_207
      001AEF EF               [12] 1671 	mov	a,r7
      001AF0 F0               [24] 1672 	movx	@dptr,a
      001AF1 EE               [12] 1673 	mov	a,r6
      001AF2 A3               [24] 1674 	inc	dptr
      001AF3 F0               [24] 1675 	movx	@dptr,a
      001AF4 ED               [12] 1676 	mov	a,r5
      001AF5 A3               [24] 1677 	inc	dptr
      001AF6 F0               [24] 1678 	movx	@dptr,a
      001AF7 EC               [12] 1679 	mov	a,r4
      001AF8 A3               [24] 1680 	inc	dptr
      001AF9 F0               [24] 1681 	movx	@dptr,a
                                   1682 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:79: writeUnsigned(value, base);
      001AFA 90 01 B0         [24] 1683 	mov	dptr,#_serial_print_uint_base_value_65536_207
      001AFD E0               [24] 1684 	movx	a,@dptr
      001AFE FC               [12] 1685 	mov	r4,a
      001AFF A3               [24] 1686 	inc	dptr
      001B00 E0               [24] 1687 	movx	a,@dptr
      001B01 FD               [12] 1688 	mov	r5,a
      001B02 A3               [24] 1689 	inc	dptr
      001B03 E0               [24] 1690 	movx	a,@dptr
      001B04 FE               [12] 1691 	mov	r6,a
      001B05 A3               [24] 1692 	inc	dptr
      001B06 E0               [24] 1693 	movx	a,@dptr
      001B07 FF               [12] 1694 	mov	r7,a
      001B08 90 01 AE         [24] 1695 	mov	dptr,#_serial_print_uint_base_PARM_2
      001B0B E0               [24] 1696 	movx	a,@dptr
      001B0C C0 E0            [24] 1697 	push	acc
      001B0E A3               [24] 1698 	inc	dptr
      001B0F E0               [24] 1699 	movx	a,@dptr
      001B10 C0 E0            [24] 1700 	push	acc
      001B12 8C 82            [24] 1701 	mov	dpl,r4
      001B14 8D 83            [24] 1702 	mov	dph,r5
      001B16 8E F0            [24] 1703 	mov	b,r6
      001B18 EF               [12] 1704 	mov	a,r7
      001B19 12 17 00         [24] 1705 	lcall	_writeUnsigned
      001B1C 15 81            [12] 1706 	dec	sp
      001B1E 15 81            [12] 1707 	dec	sp
                                   1708 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:80: }
      001B20 22               [24] 1709 	ret
                                   1710 ;------------------------------------------------------------
                                   1711 ;Allocation info for local variables in function 'serial_print_float'
                                   1712 ;------------------------------------------------------------
                                   1713 ;sloc0                     Allocated with name '_serial_print_float_sloc0_1_0'
                                   1714 ;sloc1                     Allocated with name '_serial_print_float_sloc1_1_0'
                                   1715 ;sloc2                     Allocated with name '_serial_print_float_sloc2_1_0'
                                   1716 ;digits                    Allocated with name '_serial_print_float_PARM_2'
                                   1717 ;value                     Allocated with name '_serial_print_float_value_65536_209'
                                   1718 ;scale                     Allocated with name '_serial_print_float_scale_65536_210'
                                   1719 ;scaled                    Allocated with name '_serial_print_float_scaled_65536_210'
                                   1720 ;int_part                  Allocated with name '_serial_print_float_int_part_65536_210'
                                   1721 ;frac_part                 Allocated with name '_serial_print_float_frac_part_65536_210'
                                   1722 ;i                         Allocated with name '_serial_print_float_i_65536_210'
                                   1723 ;------------------------------------------------------------
                                   1724 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:82: void serial_print_float(float value, int digits) {
                                   1725 ;	-----------------------------------------
                                   1726 ;	 function serial_print_float
                                   1727 ;	-----------------------------------------
      001B21                       1728 _serial_print_float:
      001B21 AF 82            [24] 1729 	mov	r7,dpl
      001B23 AE 83            [24] 1730 	mov	r6,dph
      001B25 AD F0            [24] 1731 	mov	r5,b
      001B27 FC               [12] 1732 	mov	r4,a
      001B28 90 01 B6         [24] 1733 	mov	dptr,#_serial_print_float_value_65536_209
      001B2B EF               [12] 1734 	mov	a,r7
      001B2C F0               [24] 1735 	movx	@dptr,a
      001B2D EE               [12] 1736 	mov	a,r6
      001B2E A3               [24] 1737 	inc	dptr
      001B2F F0               [24] 1738 	movx	@dptr,a
      001B30 ED               [12] 1739 	mov	a,r5
      001B31 A3               [24] 1740 	inc	dptr
      001B32 F0               [24] 1741 	movx	@dptr,a
      001B33 EC               [12] 1742 	mov	a,r4
      001B34 A3               [24] 1743 	inc	dptr
      001B35 F0               [24] 1744 	movx	@dptr,a
                                   1745 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:83: unsigned long scale = 1;
      001B36 90 01 BA         [24] 1746 	mov	dptr,#_serial_print_float_scale_65536_210
      001B39 74 01            [12] 1747 	mov	a,#0x01
      001B3B F0               [24] 1748 	movx	@dptr,a
      001B3C E4               [12] 1749 	clr	a
      001B3D A3               [24] 1750 	inc	dptr
      001B3E F0               [24] 1751 	movx	@dptr,a
      001B3F A3               [24] 1752 	inc	dptr
      001B40 F0               [24] 1753 	movx	@dptr,a
      001B41 A3               [24] 1754 	inc	dptr
      001B42 F0               [24] 1755 	movx	@dptr,a
                                   1756 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:89: if (value < 0.0f) {
      001B43 90 01 B6         [24] 1757 	mov	dptr,#_serial_print_float_value_65536_209
      001B46 E0               [24] 1758 	movx	a,@dptr
      001B47 FC               [12] 1759 	mov	r4,a
      001B48 A3               [24] 1760 	inc	dptr
      001B49 E0               [24] 1761 	movx	a,@dptr
      001B4A FD               [12] 1762 	mov	r5,a
      001B4B A3               [24] 1763 	inc	dptr
      001B4C E0               [24] 1764 	movx	a,@dptr
      001B4D FE               [12] 1765 	mov	r6,a
      001B4E A3               [24] 1766 	inc	dptr
      001B4F E0               [24] 1767 	movx	a,@dptr
      001B50 FF               [12] 1768 	mov	r7,a
      001B51 C0 07            [24] 1769 	push	ar7
      001B53 C0 06            [24] 1770 	push	ar6
      001B55 C0 05            [24] 1771 	push	ar5
      001B57 C0 04            [24] 1772 	push	ar4
      001B59 E4               [12] 1773 	clr	a
      001B5A C0 E0            [24] 1774 	push	acc
      001B5C C0 E0            [24] 1775 	push	acc
      001B5E C0 E0            [24] 1776 	push	acc
      001B60 C0 E0            [24] 1777 	push	acc
      001B62 8C 82            [24] 1778 	mov	dpl,r4
      001B64 8D 83            [24] 1779 	mov	dph,r5
      001B66 8E F0            [24] 1780 	mov	b,r6
      001B68 EF               [12] 1781 	mov	a,r7
      001B69 12 56 D5         [24] 1782 	lcall	___fslt
      001B6C AB 82            [24] 1783 	mov	r3,dpl
      001B6E E5 81            [12] 1784 	mov	a,sp
      001B70 24 FC            [12] 1785 	add	a,#0xfc
      001B72 F5 81            [12] 1786 	mov	sp,a
      001B74 D0 04            [24] 1787 	pop	ar4
      001B76 D0 05            [24] 1788 	pop	ar5
      001B78 D0 06            [24] 1789 	pop	ar6
      001B7A D0 07            [24] 1790 	pop	ar7
      001B7C EB               [12] 1791 	mov	a,r3
      001B7D 60 26            [24] 1792 	jz	00102$
                                   1793 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:90: USBSerial_write('-');
      001B7F 75 82 2D         [24] 1794 	mov	dpl,#0x2d
      001B82 C0 07            [24] 1795 	push	ar7
      001B84 C0 06            [24] 1796 	push	ar6
      001B86 C0 05            [24] 1797 	push	ar5
      001B88 C0 04            [24] 1798 	push	ar4
      001B8A 12 59 1E         [24] 1799 	lcall	_USBSerial_write
      001B8D D0 04            [24] 1800 	pop	ar4
      001B8F D0 05            [24] 1801 	pop	ar5
      001B91 D0 06            [24] 1802 	pop	ar6
      001B93 D0 07            [24] 1803 	pop	ar7
                                   1804 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:91: value = -value;
      001B95 90 01 B6         [24] 1805 	mov	dptr,#_serial_print_float_value_65536_209
      001B98 EC               [12] 1806 	mov	a,r4
      001B99 F0               [24] 1807 	movx	@dptr,a
      001B9A ED               [12] 1808 	mov	a,r5
      001B9B A3               [24] 1809 	inc	dptr
      001B9C F0               [24] 1810 	movx	@dptr,a
      001B9D EE               [12] 1811 	mov	a,r6
      001B9E A3               [24] 1812 	inc	dptr
      001B9F F0               [24] 1813 	movx	@dptr,a
      001BA0 EF               [12] 1814 	mov	a,r7
      001BA1 B2 E7            [12] 1815 	cpl	acc.7
      001BA3 A3               [24] 1816 	inc	dptr
      001BA4 F0               [24] 1817 	movx	@dptr,a
      001BA5                       1818 00102$:
                                   1819 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:94: if (digits < 0) {
      001BA5 90 01 B4         [24] 1820 	mov	dptr,#_serial_print_float_PARM_2
      001BA8 E0               [24] 1821 	movx	a,@dptr
      001BA9 A3               [24] 1822 	inc	dptr
      001BAA E0               [24] 1823 	movx	a,@dptr
      001BAB 30 E7 07         [24] 1824 	jnb	acc.7,00104$
                                   1825 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:95: digits = 0;
      001BAE 90 01 B4         [24] 1826 	mov	dptr,#_serial_print_float_PARM_2
      001BB1 E4               [12] 1827 	clr	a
      001BB2 F0               [24] 1828 	movx	@dptr,a
      001BB3 A3               [24] 1829 	inc	dptr
      001BB4 F0               [24] 1830 	movx	@dptr,a
      001BB5                       1831 00104$:
                                   1832 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:97: if (digits > 3) {
      001BB5 90 01 B4         [24] 1833 	mov	dptr,#_serial_print_float_PARM_2
      001BB8 E0               [24] 1834 	movx	a,@dptr
      001BB9 FE               [12] 1835 	mov	r6,a
      001BBA A3               [24] 1836 	inc	dptr
      001BBB E0               [24] 1837 	movx	a,@dptr
      001BBC FF               [12] 1838 	mov	r7,a
      001BBD C3               [12] 1839 	clr	c
      001BBE 74 03            [12] 1840 	mov	a,#0x03
      001BC0 9E               [12] 1841 	subb	a,r6
      001BC1 74 80            [12] 1842 	mov	a,#(0x00 ^ 0x80)
      001BC3 8F F0            [24] 1843 	mov	b,r7
      001BC5 63 F0 80         [24] 1844 	xrl	b,#0x80
      001BC8 95 F0            [12] 1845 	subb	a,b
      001BCA 50 09            [24] 1846 	jnc	00122$
                                   1847 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:98: digits = 3;
      001BCC 90 01 B4         [24] 1848 	mov	dptr,#_serial_print_float_PARM_2
      001BCF 74 03            [12] 1849 	mov	a,#0x03
      001BD1 F0               [24] 1850 	movx	@dptr,a
      001BD2 E4               [12] 1851 	clr	a
      001BD3 A3               [24] 1852 	inc	dptr
      001BD4 F0               [24] 1853 	movx	@dptr,a
                                   1854 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:101: for (i = 0; i < digits; i++) {
      001BD5                       1855 00122$:
      001BD5 90 01 B4         [24] 1856 	mov	dptr,#_serial_print_float_PARM_2
      001BD8 E0               [24] 1857 	movx	a,@dptr
      001BD9 F5 10            [12] 1858 	mov	_serial_print_float_sloc0_1_0,a
      001BDB A3               [24] 1859 	inc	dptr
      001BDC E0               [24] 1860 	movx	a,@dptr
      001BDD F5 11            [12] 1861 	mov	(_serial_print_float_sloc0_1_0 + 1),a
      001BDF 7C 00            [12] 1862 	mov	r4,#0x00
      001BE1 7D 00            [12] 1863 	mov	r5,#0x00
      001BE3                       1864 00114$:
      001BE3 C3               [12] 1865 	clr	c
      001BE4 EC               [12] 1866 	mov	a,r4
      001BE5 95 10            [12] 1867 	subb	a,_serial_print_float_sloc0_1_0
      001BE7 ED               [12] 1868 	mov	a,r5
      001BE8 64 80            [12] 1869 	xrl	a,#0x80
      001BEA 85 11 F0         [24] 1870 	mov	b,(_serial_print_float_sloc0_1_0 + 1)
      001BED 63 F0 80         [24] 1871 	xrl	b,#0x80
      001BF0 95 F0            [12] 1872 	subb	a,b
      001BF2 50 45            [24] 1873 	jnc	00107$
                                   1874 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:102: scale *= 10UL;
      001BF4 C0 05            [24] 1875 	push	ar5
      001BF6 C0 04            [24] 1876 	push	ar4
      001BF8 90 01 BA         [24] 1877 	mov	dptr,#_serial_print_float_scale_65536_210
      001BFB E0               [24] 1878 	movx	a,@dptr
      001BFC C0 E0            [24] 1879 	push	acc
      001BFE A3               [24] 1880 	inc	dptr
      001BFF E0               [24] 1881 	movx	a,@dptr
      001C00 C0 E0            [24] 1882 	push	acc
      001C02 A3               [24] 1883 	inc	dptr
      001C03 E0               [24] 1884 	movx	a,@dptr
      001C04 C0 E0            [24] 1885 	push	acc
      001C06 A3               [24] 1886 	inc	dptr
      001C07 E0               [24] 1887 	movx	a,@dptr
      001C08 C0 E0            [24] 1888 	push	acc
      001C0A 90 00 0A         [24] 1889 	mov	dptr,#(0x0a&0x00ff)
      001C0D E4               [12] 1890 	clr	a
      001C0E F5 F0            [12] 1891 	mov	b,a
      001C10 12 5D 76         [24] 1892 	lcall	__mullong
      001C13 A8 82            [24] 1893 	mov	r0,dpl
      001C15 A9 83            [24] 1894 	mov	r1,dph
      001C17 AA F0            [24] 1895 	mov	r2,b
      001C19 FB               [12] 1896 	mov	r3,a
      001C1A E5 81            [12] 1897 	mov	a,sp
      001C1C 24 FC            [12] 1898 	add	a,#0xfc
      001C1E F5 81            [12] 1899 	mov	sp,a
      001C20 D0 04            [24] 1900 	pop	ar4
      001C22 D0 05            [24] 1901 	pop	ar5
      001C24 90 01 BA         [24] 1902 	mov	dptr,#_serial_print_float_scale_65536_210
      001C27 E8               [12] 1903 	mov	a,r0
      001C28 F0               [24] 1904 	movx	@dptr,a
      001C29 E9               [12] 1905 	mov	a,r1
      001C2A A3               [24] 1906 	inc	dptr
      001C2B F0               [24] 1907 	movx	@dptr,a
      001C2C EA               [12] 1908 	mov	a,r2
      001C2D A3               [24] 1909 	inc	dptr
      001C2E F0               [24] 1910 	movx	@dptr,a
      001C2F EB               [12] 1911 	mov	a,r3
      001C30 A3               [24] 1912 	inc	dptr
      001C31 F0               [24] 1913 	movx	@dptr,a
                                   1914 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:101: for (i = 0; i < digits; i++) {
      001C32 0C               [12] 1915 	inc	r4
      001C33 BC 00 AD         [24] 1916 	cjne	r4,#0x00,00114$
      001C36 0D               [12] 1917 	inc	r5
      001C37 80 AA            [24] 1918 	sjmp	00114$
      001C39                       1919 00107$:
                                   1920 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:105: scaled = (unsigned long)(value * (float)scale + 0.5f);
      001C39 90 01 BA         [24] 1921 	mov	dptr,#_serial_print_float_scale_65536_210
      001C3C E0               [24] 1922 	movx	a,@dptr
      001C3D FA               [12] 1923 	mov	r2,a
      001C3E A3               [24] 1924 	inc	dptr
      001C3F E0               [24] 1925 	movx	a,@dptr
      001C40 FB               [12] 1926 	mov	r3,a
      001C41 A3               [24] 1927 	inc	dptr
      001C42 E0               [24] 1928 	movx	a,@dptr
      001C43 FC               [12] 1929 	mov	r4,a
      001C44 A3               [24] 1930 	inc	dptr
      001C45 E0               [24] 1931 	movx	a,@dptr
      001C46 FD               [12] 1932 	mov	r5,a
      001C47 8A 82            [24] 1933 	mov	dpl,r2
      001C49 8B 83            [24] 1934 	mov	dph,r3
      001C4B 8C F0            [24] 1935 	mov	b,r4
      001C4D C0 05            [24] 1936 	push	ar5
      001C4F C0 04            [24] 1937 	push	ar4
      001C51 C0 03            [24] 1938 	push	ar3
      001C53 C0 02            [24] 1939 	push	ar2
      001C55 12 4E B6         [24] 1940 	lcall	___ulong2fs
      001C58 85 82 12         [24] 1941 	mov	_serial_print_float_sloc1_1_0,dpl
      001C5B 85 83 13         [24] 1942 	mov	(_serial_print_float_sloc1_1_0 + 1),dph
      001C5E 85 F0 14         [24] 1943 	mov	(_serial_print_float_sloc1_1_0 + 2),b
      001C61 F5 15            [12] 1944 	mov	(_serial_print_float_sloc1_1_0 + 3),a
      001C63 90 01 B6         [24] 1945 	mov	dptr,#_serial_print_float_value_65536_209
      001C66 E0               [24] 1946 	movx	a,@dptr
      001C67 F8               [12] 1947 	mov	r0,a
      001C68 A3               [24] 1948 	inc	dptr
      001C69 E0               [24] 1949 	movx	a,@dptr
      001C6A F9               [12] 1950 	mov	r1,a
      001C6B A3               [24] 1951 	inc	dptr
      001C6C E0               [24] 1952 	movx	a,@dptr
      001C6D FE               [12] 1953 	mov	r6,a
      001C6E A3               [24] 1954 	inc	dptr
      001C6F E0               [24] 1955 	movx	a,@dptr
      001C70 FF               [12] 1956 	mov	r7,a
      001C71 C0 12            [24] 1957 	push	_serial_print_float_sloc1_1_0
      001C73 C0 13            [24] 1958 	push	(_serial_print_float_sloc1_1_0 + 1)
      001C75 C0 14            [24] 1959 	push	(_serial_print_float_sloc1_1_0 + 2)
      001C77 C0 15            [24] 1960 	push	(_serial_print_float_sloc1_1_0 + 3)
      001C79 88 82            [24] 1961 	mov	dpl,r0
      001C7B 89 83            [24] 1962 	mov	dph,r1
      001C7D 8E F0            [24] 1963 	mov	b,r6
      001C7F EF               [12] 1964 	mov	a,r7
      001C80 12 48 95         [24] 1965 	lcall	___fsmul
      001C83 A8 82            [24] 1966 	mov	r0,dpl
      001C85 A9 83            [24] 1967 	mov	r1,dph
      001C87 AE F0            [24] 1968 	mov	r6,b
      001C89 FF               [12] 1969 	mov	r7,a
      001C8A E5 81            [12] 1970 	mov	a,sp
      001C8C 24 FC            [12] 1971 	add	a,#0xfc
      001C8E F5 81            [12] 1972 	mov	sp,a
      001C90 E4               [12] 1973 	clr	a
      001C91 C0 E0            [24] 1974 	push	acc
      001C93 C0 E0            [24] 1975 	push	acc
      001C95 C0 E0            [24] 1976 	push	acc
      001C97 74 3F            [12] 1977 	mov	a,#0x3f
      001C99 C0 E0            [24] 1978 	push	acc
      001C9B 88 82            [24] 1979 	mov	dpl,r0
      001C9D 89 83            [24] 1980 	mov	dph,r1
      001C9F 8E F0            [24] 1981 	mov	b,r6
      001CA1 EF               [12] 1982 	mov	a,r7
      001CA2 12 57 A7         [24] 1983 	lcall	___fsadd
      001CA5 A8 82            [24] 1984 	mov	r0,dpl
      001CA7 A9 83            [24] 1985 	mov	r1,dph
      001CA9 AE F0            [24] 1986 	mov	r6,b
      001CAB FF               [12] 1987 	mov	r7,a
      001CAC E5 81            [12] 1988 	mov	a,sp
      001CAE 24 FC            [12] 1989 	add	a,#0xfc
      001CB0 F5 81            [12] 1990 	mov	sp,a
      001CB2 88 82            [24] 1991 	mov	dpl,r0
      001CB4 89 83            [24] 1992 	mov	dph,r1
      001CB6 8E F0            [24] 1993 	mov	b,r6
      001CB8 EF               [12] 1994 	mov	a,r7
      001CB9 12 4E C9         [24] 1995 	lcall	___fs2ulong
      001CBC 85 82 12         [24] 1996 	mov	_serial_print_float_sloc1_1_0,dpl
      001CBF 85 83 13         [24] 1997 	mov	(_serial_print_float_sloc1_1_0 + 1),dph
      001CC2 85 F0 14         [24] 1998 	mov	(_serial_print_float_sloc1_1_0 + 2),b
      001CC5 F5 15            [12] 1999 	mov	(_serial_print_float_sloc1_1_0 + 3),a
      001CC7 D0 02            [24] 2000 	pop	ar2
      001CC9 D0 03            [24] 2001 	pop	ar3
      001CCB D0 04            [24] 2002 	pop	ar4
      001CCD D0 05            [24] 2003 	pop	ar5
                                   2004 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:106: int_part = scaled / scale;
      001CCF C0 05            [24] 2005 	push	ar5
      001CD1 C0 04            [24] 2006 	push	ar4
      001CD3 C0 03            [24] 2007 	push	ar3
      001CD5 C0 02            [24] 2008 	push	ar2
      001CD7 C0 02            [24] 2009 	push	ar2
      001CD9 C0 03            [24] 2010 	push	ar3
      001CDB C0 04            [24] 2011 	push	ar4
      001CDD C0 05            [24] 2012 	push	ar5
                                   2013 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:107: frac_part = scaled % scale;
      001CDF 85 12 82         [24] 2014 	mov	dpl,_serial_print_float_sloc1_1_0
      001CE2 85 13 83         [24] 2015 	mov	dph,(_serial_print_float_sloc1_1_0 + 1)
      001CE5 85 14 F0         [24] 2016 	mov	b,(_serial_print_float_sloc1_1_0 + 2)
      001CE8 E5 15            [12] 2017 	mov	a,(_serial_print_float_sloc1_1_0 + 3)
      001CEA 12 5B 8F         [24] 2018 	lcall	__divulong
      001CED 85 82 16         [24] 2019 	mov	_serial_print_float_sloc2_1_0,dpl
      001CF0 85 83 17         [24] 2020 	mov	(_serial_print_float_sloc2_1_0 + 1),dph
      001CF3 85 F0 18         [24] 2021 	mov	(_serial_print_float_sloc2_1_0 + 2),b
      001CF6 F5 19            [12] 2022 	mov	(_serial_print_float_sloc2_1_0 + 3),a
      001CF8 E5 81            [12] 2023 	mov	a,sp
      001CFA 24 FC            [12] 2024 	add	a,#0xfc
      001CFC F5 81            [12] 2025 	mov	sp,a
      001CFE D0 02            [24] 2026 	pop	ar2
      001D00 D0 03            [24] 2027 	pop	ar3
      001D02 D0 04            [24] 2028 	pop	ar4
      001D04 D0 05            [24] 2029 	pop	ar5
      001D06 C0 05            [24] 2030 	push	ar5
      001D08 C0 04            [24] 2031 	push	ar4
      001D0A C0 03            [24] 2032 	push	ar3
      001D0C C0 02            [24] 2033 	push	ar2
      001D0E C0 02            [24] 2034 	push	ar2
      001D10 C0 03            [24] 2035 	push	ar3
      001D12 C0 04            [24] 2036 	push	ar4
      001D14 C0 05            [24] 2037 	push	ar5
      001D16 85 12 82         [24] 2038 	mov	dpl,_serial_print_float_sloc1_1_0
      001D19 85 13 83         [24] 2039 	mov	dph,(_serial_print_float_sloc1_1_0 + 1)
      001D1C 85 14 F0         [24] 2040 	mov	b,(_serial_print_float_sloc1_1_0 + 2)
      001D1F E5 15            [12] 2041 	mov	a,(_serial_print_float_sloc1_1_0 + 3)
      001D21 12 5A CD         [24] 2042 	lcall	__modulong
      001D24 A8 82            [24] 2043 	mov	r0,dpl
      001D26 A9 83            [24] 2044 	mov	r1,dph
      001D28 AE F0            [24] 2045 	mov	r6,b
      001D2A FF               [12] 2046 	mov	r7,a
      001D2B E5 81            [12] 2047 	mov	a,sp
      001D2D 24 FC            [12] 2048 	add	a,#0xfc
      001D2F F5 81            [12] 2049 	mov	sp,a
      001D31 90 01 BE         [24] 2050 	mov	dptr,#_serial_print_float_frac_part_65536_210
      001D34 E8               [12] 2051 	mov	a,r0
      001D35 F0               [24] 2052 	movx	@dptr,a
      001D36 E9               [12] 2053 	mov	a,r1
      001D37 A3               [24] 2054 	inc	dptr
      001D38 F0               [24] 2055 	movx	@dptr,a
      001D39 EE               [12] 2056 	mov	a,r6
      001D3A A3               [24] 2057 	inc	dptr
      001D3B F0               [24] 2058 	movx	@dptr,a
      001D3C EF               [12] 2059 	mov	a,r7
      001D3D A3               [24] 2060 	inc	dptr
      001D3E F0               [24] 2061 	movx	@dptr,a
                                   2062 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:109: serial_print_uint(int_part);
      001D3F 85 16 82         [24] 2063 	mov	dpl,_serial_print_float_sloc2_1_0
      001D42 85 17 83         [24] 2064 	mov	dph,(_serial_print_float_sloc2_1_0 + 1)
      001D45 85 18 F0         [24] 2065 	mov	b,(_serial_print_float_sloc2_1_0 + 2)
      001D48 E5 19            [12] 2066 	mov	a,(_serial_print_float_sloc2_1_0 + 3)
      001D4A 12 1A AC         [24] 2067 	lcall	_serial_print_uint
      001D4D D0 02            [24] 2068 	pop	ar2
      001D4F D0 03            [24] 2069 	pop	ar3
      001D51 D0 04            [24] 2070 	pop	ar4
      001D53 D0 05            [24] 2071 	pop	ar5
                                   2072 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:111: if (digits > 0) {
      001D55 C3               [12] 2073 	clr	c
      001D56 E4               [12] 2074 	clr	a
      001D57 95 10            [12] 2075 	subb	a,_serial_print_float_sloc0_1_0
      001D59 74 80            [12] 2076 	mov	a,#(0x00 ^ 0x80)
      001D5B 85 11 F0         [24] 2077 	mov	b,(_serial_print_float_sloc0_1_0 + 1)
      001D5E 63 F0 80         [24] 2078 	xrl	b,#0x80
      001D61 95 F0            [12] 2079 	subb	a,b
      001D63 40 01            [24] 2080 	jc	00156$
      001D65 22               [24] 2081 	ret
      001D66                       2082 00156$:
                                   2083 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:112: USBSerial_write('.');
      001D66 75 82 2E         [24] 2084 	mov	dpl,#0x2e
      001D69 C0 05            [24] 2085 	push	ar5
      001D6B C0 04            [24] 2086 	push	ar4
      001D6D C0 03            [24] 2087 	push	ar3
      001D6F C0 02            [24] 2088 	push	ar2
      001D71 12 59 1E         [24] 2089 	lcall	_USBSerial_write
      001D74 D0 02            [24] 2090 	pop	ar2
      001D76 D0 03            [24] 2091 	pop	ar3
      001D78 D0 04            [24] 2092 	pop	ar4
      001D7A D0 05            [24] 2093 	pop	ar5
                                   2094 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:114: scale /= 10UL;
      001D7C 74 0A            [12] 2095 	mov	a,#0x0a
      001D7E C0 E0            [24] 2096 	push	acc
      001D80 E4               [12] 2097 	clr	a
      001D81 C0 E0            [24] 2098 	push	acc
      001D83 C0 E0            [24] 2099 	push	acc
      001D85 C0 E0            [24] 2100 	push	acc
      001D87 8A 82            [24] 2101 	mov	dpl,r2
      001D89 8B 83            [24] 2102 	mov	dph,r3
      001D8B 8C F0            [24] 2103 	mov	b,r4
      001D8D ED               [12] 2104 	mov	a,r5
      001D8E 12 5B 8F         [24] 2105 	lcall	__divulong
      001D91 AC 82            [24] 2106 	mov	r4,dpl
      001D93 AD 83            [24] 2107 	mov	r5,dph
      001D95 AE F0            [24] 2108 	mov	r6,b
      001D97 FF               [12] 2109 	mov	r7,a
      001D98 E5 81            [12] 2110 	mov	a,sp
      001D9A 24 FC            [12] 2111 	add	a,#0xfc
      001D9C F5 81            [12] 2112 	mov	sp,a
      001D9E 90 01 BA         [24] 2113 	mov	dptr,#_serial_print_float_scale_65536_210
      001DA1 EC               [12] 2114 	mov	a,r4
      001DA2 F0               [24] 2115 	movx	@dptr,a
      001DA3 ED               [12] 2116 	mov	a,r5
      001DA4 A3               [24] 2117 	inc	dptr
      001DA5 F0               [24] 2118 	movx	@dptr,a
      001DA6 EE               [12] 2119 	mov	a,r6
      001DA7 A3               [24] 2120 	inc	dptr
      001DA8 F0               [24] 2121 	movx	@dptr,a
      001DA9 EF               [12] 2122 	mov	a,r7
      001DAA A3               [24] 2123 	inc	dptr
      001DAB F0               [24] 2124 	movx	@dptr,a
                                   2125 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:115: while (scale > 0) {
      001DAC 90 01 BE         [24] 2126 	mov	dptr,#_serial_print_float_frac_part_65536_210
      001DAF E0               [24] 2127 	movx	a,@dptr
      001DB0 F5 16            [12] 2128 	mov	_serial_print_float_sloc2_1_0,a
      001DB2 A3               [24] 2129 	inc	dptr
      001DB3 E0               [24] 2130 	movx	a,@dptr
      001DB4 F5 17            [12] 2131 	mov	(_serial_print_float_sloc2_1_0 + 1),a
      001DB6 A3               [24] 2132 	inc	dptr
      001DB7 E0               [24] 2133 	movx	a,@dptr
      001DB8 F5 18            [12] 2134 	mov	(_serial_print_float_sloc2_1_0 + 2),a
      001DBA A3               [24] 2135 	inc	dptr
      001DBB E0               [24] 2136 	movx	a,@dptr
      001DBC F5 19            [12] 2137 	mov	(_serial_print_float_sloc2_1_0 + 3),a
      001DBE                       2138 00108$:
      001DBE 90 01 BA         [24] 2139 	mov	dptr,#_serial_print_float_scale_65536_210
      001DC1 E0               [24] 2140 	movx	a,@dptr
      001DC2 F8               [12] 2141 	mov	r0,a
      001DC3 A3               [24] 2142 	inc	dptr
      001DC4 E0               [24] 2143 	movx	a,@dptr
      001DC5 F9               [12] 2144 	mov	r1,a
      001DC6 A3               [24] 2145 	inc	dptr
      001DC7 E0               [24] 2146 	movx	a,@dptr
      001DC8 FA               [12] 2147 	mov	r2,a
      001DC9 A3               [24] 2148 	inc	dptr
      001DCA E0               [24] 2149 	movx	a,@dptr
      001DCB FB               [12] 2150 	mov	r3,a
      001DCC E8               [12] 2151 	mov	a,r0
      001DCD 49               [12] 2152 	orl	a,r1
      001DCE 4A               [12] 2153 	orl	a,r2
      001DCF 4B               [12] 2154 	orl	a,r3
      001DD0 70 01            [24] 2155 	jnz	00157$
      001DD2 22               [24] 2156 	ret
      001DD3                       2157 00157$:
                                   2158 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:116: USBSerial_write((char)('0' + (frac_part / scale) % 10UL));
      001DD3 C0 03            [24] 2159 	push	ar3
      001DD5 C0 02            [24] 2160 	push	ar2
      001DD7 C0 01            [24] 2161 	push	ar1
      001DD9 C0 00            [24] 2162 	push	ar0
      001DDB C0 00            [24] 2163 	push	ar0
      001DDD C0 01            [24] 2164 	push	ar1
      001DDF C0 02            [24] 2165 	push	ar2
      001DE1 C0 03            [24] 2166 	push	ar3
      001DE3 85 16 82         [24] 2167 	mov	dpl,_serial_print_float_sloc2_1_0
      001DE6 85 17 83         [24] 2168 	mov	dph,(_serial_print_float_sloc2_1_0 + 1)
      001DE9 85 18 F0         [24] 2169 	mov	b,(_serial_print_float_sloc2_1_0 + 2)
      001DEC E5 19            [12] 2170 	mov	a,(_serial_print_float_sloc2_1_0 + 3)
      001DEE 12 5B 8F         [24] 2171 	lcall	__divulong
      001DF1 AC 82            [24] 2172 	mov	r4,dpl
      001DF3 AD 83            [24] 2173 	mov	r5,dph
      001DF5 AE F0            [24] 2174 	mov	r6,b
      001DF7 FF               [12] 2175 	mov	r7,a
      001DF8 E5 81            [12] 2176 	mov	a,sp
      001DFA 24 FC            [12] 2177 	add	a,#0xfc
      001DFC F5 81            [12] 2178 	mov	sp,a
      001DFE 74 0A            [12] 2179 	mov	a,#0x0a
      001E00 C0 E0            [24] 2180 	push	acc
      001E02 E4               [12] 2181 	clr	a
      001E03 C0 E0            [24] 2182 	push	acc
      001E05 C0 E0            [24] 2183 	push	acc
      001E07 C0 E0            [24] 2184 	push	acc
      001E09 8C 82            [24] 2185 	mov	dpl,r4
      001E0B 8D 83            [24] 2186 	mov	dph,r5
      001E0D 8E F0            [24] 2187 	mov	b,r6
      001E0F EF               [12] 2188 	mov	a,r7
      001E10 12 5A CD         [24] 2189 	lcall	__modulong
      001E13 AC 82            [24] 2190 	mov	r4,dpl
      001E15 E5 81            [12] 2191 	mov	a,sp
      001E17 24 FC            [12] 2192 	add	a,#0xfc
      001E19 F5 81            [12] 2193 	mov	sp,a
      001E1B 74 30            [12] 2194 	mov	a,#0x30
      001E1D 2C               [12] 2195 	add	a,r4
      001E1E F5 82            [12] 2196 	mov	dpl,a
      001E20 12 59 1E         [24] 2197 	lcall	_USBSerial_write
      001E23 D0 00            [24] 2198 	pop	ar0
      001E25 D0 01            [24] 2199 	pop	ar1
      001E27 D0 02            [24] 2200 	pop	ar2
      001E29 D0 03            [24] 2201 	pop	ar3
                                   2202 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:117: scale /= 10UL;
      001E2B 74 0A            [12] 2203 	mov	a,#0x0a
      001E2D C0 E0            [24] 2204 	push	acc
      001E2F E4               [12] 2205 	clr	a
      001E30 C0 E0            [24] 2206 	push	acc
      001E32 C0 E0            [24] 2207 	push	acc
      001E34 C0 E0            [24] 2208 	push	acc
      001E36 88 82            [24] 2209 	mov	dpl,r0
      001E38 89 83            [24] 2210 	mov	dph,r1
      001E3A 8A F0            [24] 2211 	mov	b,r2
      001E3C EB               [12] 2212 	mov	a,r3
      001E3D 12 5B 8F         [24] 2213 	lcall	__divulong
      001E40 AC 82            [24] 2214 	mov	r4,dpl
      001E42 AD 83            [24] 2215 	mov	r5,dph
      001E44 AE F0            [24] 2216 	mov	r6,b
      001E46 FF               [12] 2217 	mov	r7,a
      001E47 E5 81            [12] 2218 	mov	a,sp
      001E49 24 FC            [12] 2219 	add	a,#0xfc
      001E4B F5 81            [12] 2220 	mov	sp,a
      001E4D 90 01 BA         [24] 2221 	mov	dptr,#_serial_print_float_scale_65536_210
      001E50 EC               [12] 2222 	mov	a,r4
      001E51 F0               [24] 2223 	movx	@dptr,a
      001E52 ED               [12] 2224 	mov	a,r5
      001E53 A3               [24] 2225 	inc	dptr
      001E54 F0               [24] 2226 	movx	@dptr,a
      001E55 EE               [12] 2227 	mov	a,r6
      001E56 A3               [24] 2228 	inc	dptr
      001E57 F0               [24] 2229 	movx	@dptr,a
      001E58 EF               [12] 2230 	mov	a,r7
      001E59 A3               [24] 2231 	inc	dptr
      001E5A F0               [24] 2232 	movx	@dptr,a
                                   2233 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:120: }
      001E5B 02 1D BE         [24] 2234 	ljmp	00108$
                                   2235 ;------------------------------------------------------------
                                   2236 ;Allocation info for local variables in function 'serial_println'
                                   2237 ;------------------------------------------------------------
                                   2238 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:122: void serial_println(void) {
                                   2239 ;	-----------------------------------------
                                   2240 ;	 function serial_println
                                   2241 ;	-----------------------------------------
      001E5E                       2242 _serial_println:
                                   2243 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:123: USBSerial_write('\r');
      001E5E 75 82 0D         [24] 2244 	mov	dpl,#0x0d
      001E61 12 59 1E         [24] 2245 	lcall	_USBSerial_write
                                   2246 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:124: USBSerial_write('\n');
      001E64 75 82 0A         [24] 2247 	mov	dpl,#0x0a
                                   2248 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:125: }
      001E67 02 59 1E         [24] 2249 	ljmp	_USBSerial_write
                                   2250 ;------------------------------------------------------------
                                   2251 ;Allocation info for local variables in function 'serial_println_str'
                                   2252 ;------------------------------------------------------------
                                   2253 ;text                      Allocated with name '_serial_println_str_text_65536_220'
                                   2254 ;------------------------------------------------------------
                                   2255 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:127: void serial_println_str(const char* text) {
                                   2256 ;	-----------------------------------------
                                   2257 ;	 function serial_println_str
                                   2258 ;	-----------------------------------------
      001E6A                       2259 _serial_println_str:
      001E6A AF F0            [24] 2260 	mov	r7,b
      001E6C AE 83            [24] 2261 	mov	r6,dph
      001E6E E5 82            [12] 2262 	mov	a,dpl
      001E70 90 01 C2         [24] 2263 	mov	dptr,#_serial_println_str_text_65536_220
      001E73 F0               [24] 2264 	movx	@dptr,a
      001E74 EE               [12] 2265 	mov	a,r6
      001E75 A3               [24] 2266 	inc	dptr
      001E76 F0               [24] 2267 	movx	@dptr,a
      001E77 EF               [12] 2268 	mov	a,r7
      001E78 A3               [24] 2269 	inc	dptr
      001E79 F0               [24] 2270 	movx	@dptr,a
                                   2271 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:128: serial_print_str(text);
      001E7A 90 01 C2         [24] 2272 	mov	dptr,#_serial_println_str_text_65536_220
      001E7D E0               [24] 2273 	movx	a,@dptr
      001E7E FD               [12] 2274 	mov	r5,a
      001E7F A3               [24] 2275 	inc	dptr
      001E80 E0               [24] 2276 	movx	a,@dptr
      001E81 FE               [12] 2277 	mov	r6,a
      001E82 A3               [24] 2278 	inc	dptr
      001E83 E0               [24] 2279 	movx	a,@dptr
      001E84 FF               [12] 2280 	mov	r7,a
      001E85 8D 82            [24] 2281 	mov	dpl,r5
      001E87 8E 83            [24] 2282 	mov	dph,r6
      001E89 8F F0            [24] 2283 	mov	b,r7
      001E8B 12 19 E7         [24] 2284 	lcall	_serial_print_str
                                   2285 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:129: serial_println();
                                   2286 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:130: }
      001E8E 02 1E 5E         [24] 2287 	ljmp	_serial_println
                                   2288 ;------------------------------------------------------------
                                   2289 ;Allocation info for local variables in function 'serial_println_int'
                                   2290 ;------------------------------------------------------------
                                   2291 ;value                     Allocated with name '_serial_println_int_value_65536_222'
                                   2292 ;------------------------------------------------------------
                                   2293 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:132: void serial_println_int(int value) {
                                   2294 ;	-----------------------------------------
                                   2295 ;	 function serial_println_int
                                   2296 ;	-----------------------------------------
      001E91                       2297 _serial_println_int:
      001E91 AF 83            [24] 2298 	mov	r7,dph
      001E93 E5 82            [12] 2299 	mov	a,dpl
      001E95 90 01 C5         [24] 2300 	mov	dptr,#_serial_println_int_value_65536_222
      001E98 F0               [24] 2301 	movx	@dptr,a
      001E99 EF               [12] 2302 	mov	a,r7
      001E9A A3               [24] 2303 	inc	dptr
      001E9B F0               [24] 2304 	movx	@dptr,a
                                   2305 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:133: serial_print_int(value);
      001E9C 90 01 C5         [24] 2306 	mov	dptr,#_serial_println_int_value_65536_222
      001E9F E0               [24] 2307 	movx	a,@dptr
      001EA0 FE               [12] 2308 	mov	r6,a
      001EA1 A3               [24] 2309 	inc	dptr
      001EA2 E0               [24] 2310 	movx	a,@dptr
      001EA3 FF               [12] 2311 	mov	r7,a
      001EA4 8E 82            [24] 2312 	mov	dpl,r6
      001EA6 8F 83            [24] 2313 	mov	dph,r7
      001EA8 12 1A 4A         [24] 2314 	lcall	_serial_print_int
                                   2315 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:134: serial_println();
                                   2316 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:135: }
      001EAB 02 1E 5E         [24] 2317 	ljmp	_serial_println
                                   2318 ;------------------------------------------------------------
                                   2319 ;Allocation info for local variables in function 'serial_println_uint'
                                   2320 ;------------------------------------------------------------
                                   2321 ;value                     Allocated with name '_serial_println_uint_value_65536_224'
                                   2322 ;------------------------------------------------------------
                                   2323 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:137: void serial_println_uint(unsigned long value) {
                                   2324 ;	-----------------------------------------
                                   2325 ;	 function serial_println_uint
                                   2326 ;	-----------------------------------------
      001EAE                       2327 _serial_println_uint:
      001EAE AF 82            [24] 2328 	mov	r7,dpl
      001EB0 AE 83            [24] 2329 	mov	r6,dph
      001EB2 AD F0            [24] 2330 	mov	r5,b
      001EB4 FC               [12] 2331 	mov	r4,a
      001EB5 90 01 C7         [24] 2332 	mov	dptr,#_serial_println_uint_value_65536_224
      001EB8 EF               [12] 2333 	mov	a,r7
      001EB9 F0               [24] 2334 	movx	@dptr,a
      001EBA EE               [12] 2335 	mov	a,r6
      001EBB A3               [24] 2336 	inc	dptr
      001EBC F0               [24] 2337 	movx	@dptr,a
      001EBD ED               [12] 2338 	mov	a,r5
      001EBE A3               [24] 2339 	inc	dptr
      001EBF F0               [24] 2340 	movx	@dptr,a
      001EC0 EC               [12] 2341 	mov	a,r4
      001EC1 A3               [24] 2342 	inc	dptr
      001EC2 F0               [24] 2343 	movx	@dptr,a
                                   2344 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:138: serial_print_uint(value);
      001EC3 90 01 C7         [24] 2345 	mov	dptr,#_serial_println_uint_value_65536_224
      001EC6 E0               [24] 2346 	movx	a,@dptr
      001EC7 FC               [12] 2347 	mov	r4,a
      001EC8 A3               [24] 2348 	inc	dptr
      001EC9 E0               [24] 2349 	movx	a,@dptr
      001ECA FD               [12] 2350 	mov	r5,a
      001ECB A3               [24] 2351 	inc	dptr
      001ECC E0               [24] 2352 	movx	a,@dptr
      001ECD FE               [12] 2353 	mov	r6,a
      001ECE A3               [24] 2354 	inc	dptr
      001ECF E0               [24] 2355 	movx	a,@dptr
      001ED0 8C 82            [24] 2356 	mov	dpl,r4
      001ED2 8D 83            [24] 2357 	mov	dph,r5
      001ED4 8E F0            [24] 2358 	mov	b,r6
      001ED6 12 1A AC         [24] 2359 	lcall	_serial_print_uint
                                   2360 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:139: serial_println();
                                   2361 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:140: }
      001ED9 02 1E 5E         [24] 2362 	ljmp	_serial_println
                                   2363 ;------------------------------------------------------------
                                   2364 ;Allocation info for local variables in function 'serial_println_float'
                                   2365 ;------------------------------------------------------------
                                   2366 ;digits                    Allocated with name '_serial_println_float_PARM_2'
                                   2367 ;value                     Allocated with name '_serial_println_float_value_65536_226'
                                   2368 ;------------------------------------------------------------
                                   2369 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:142: void serial_println_float(float value, int digits) {
                                   2370 ;	-----------------------------------------
                                   2371 ;	 function serial_println_float
                                   2372 ;	-----------------------------------------
      001EDC                       2373 _serial_println_float:
      001EDC AF 82            [24] 2374 	mov	r7,dpl
      001EDE AE 83            [24] 2375 	mov	r6,dph
      001EE0 AD F0            [24] 2376 	mov	r5,b
      001EE2 FC               [12] 2377 	mov	r4,a
      001EE3 90 01 CD         [24] 2378 	mov	dptr,#_serial_println_float_value_65536_226
      001EE6 EF               [12] 2379 	mov	a,r7
      001EE7 F0               [24] 2380 	movx	@dptr,a
      001EE8 EE               [12] 2381 	mov	a,r6
      001EE9 A3               [24] 2382 	inc	dptr
      001EEA F0               [24] 2383 	movx	@dptr,a
      001EEB ED               [12] 2384 	mov	a,r5
      001EEC A3               [24] 2385 	inc	dptr
      001EED F0               [24] 2386 	movx	@dptr,a
      001EEE EC               [12] 2387 	mov	a,r4
      001EEF A3               [24] 2388 	inc	dptr
      001EF0 F0               [24] 2389 	movx	@dptr,a
                                   2390 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:143: serial_print_float(value, digits);
      001EF1 90 01 CD         [24] 2391 	mov	dptr,#_serial_println_float_value_65536_226
      001EF4 E0               [24] 2392 	movx	a,@dptr
      001EF5 FC               [12] 2393 	mov	r4,a
      001EF6 A3               [24] 2394 	inc	dptr
      001EF7 E0               [24] 2395 	movx	a,@dptr
      001EF8 FD               [12] 2396 	mov	r5,a
      001EF9 A3               [24] 2397 	inc	dptr
      001EFA E0               [24] 2398 	movx	a,@dptr
      001EFB FE               [12] 2399 	mov	r6,a
      001EFC A3               [24] 2400 	inc	dptr
      001EFD E0               [24] 2401 	movx	a,@dptr
      001EFE FF               [12] 2402 	mov	r7,a
      001EFF 90 01 CB         [24] 2403 	mov	dptr,#_serial_println_float_PARM_2
      001F02 E0               [24] 2404 	movx	a,@dptr
      001F03 FA               [12] 2405 	mov	r2,a
      001F04 A3               [24] 2406 	inc	dptr
      001F05 E0               [24] 2407 	movx	a,@dptr
      001F06 FB               [12] 2408 	mov	r3,a
      001F07 90 01 B4         [24] 2409 	mov	dptr,#_serial_print_float_PARM_2
      001F0A EA               [12] 2410 	mov	a,r2
      001F0B F0               [24] 2411 	movx	@dptr,a
      001F0C EB               [12] 2412 	mov	a,r3
      001F0D A3               [24] 2413 	inc	dptr
      001F0E F0               [24] 2414 	movx	@dptr,a
      001F0F 8C 82            [24] 2415 	mov	dpl,r4
      001F11 8D 83            [24] 2416 	mov	dph,r5
      001F13 8E F0            [24] 2417 	mov	b,r6
      001F15 EF               [12] 2418 	mov	a,r7
      001F16 12 1B 21         [24] 2419 	lcall	_serial_print_float
                                   2420 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:144: serial_println();
                                   2421 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\serial_compat.c:145: }
      001F19 02 1E 5E         [24] 2422 	ljmp	_serial_println
                                   2423 	.area CSEG    (CODE)
                                   2424 	.area CONST   (CODE)
                                   2425 	.area XINIT   (CODE)
                                   2426 	.area CABS    (ABS,CODE)
