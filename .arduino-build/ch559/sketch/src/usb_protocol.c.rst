                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module usb_protocol
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _serial_println_float
                                     12 	.globl _serial_println_uint
                                     13 	.globl _serial_println_int
                                     14 	.globl _serial_println_str
                                     15 	.globl _serial_println
                                     16 	.globl _serial_print_float
                                     17 	.globl _serial_print_uint_base
                                     18 	.globl _serial_print_uint
                                     19 	.globl _serial_print_str
                                     20 	.globl _serial_write
                                     21 	.globl _serial_read
                                     22 	.globl _serial_available
                                     23 	.globl _serial_begin
                                     24 	.globl _millis
                                     25 	.globl _UIF_BUS_RST
                                     26 	.globl _UIF_DETECT
                                     27 	.globl _UIF_TRANSFER
                                     28 	.globl _UIF_SUSPEND
                                     29 	.globl _UIF_HST_SOF
                                     30 	.globl _UIF_FIFO_OV
                                     31 	.globl _U_SIE_FREE
                                     32 	.globl _U_TOG_OK
                                     33 	.globl _U_IS_NAK
                                     34 	.globl _S0_R_FIFO0
                                     35 	.globl _S0_R_FIFO1
                                     36 	.globl _S0_T_FIFO
                                     37 	.globl _S0_FREE
                                     38 	.globl _S0_IF_BYTE
                                     39 	.globl _S0_IF_FIRST
                                     40 	.globl _S0_IF_OV
                                     41 	.globl _S0_FST_ACT
                                     42 	.globl _CP_RL2
                                     43 	.globl _C_T2
                                     44 	.globl _TR2
                                     45 	.globl _EXEN2
                                     46 	.globl _TCLK
                                     47 	.globl _RCLK
                                     48 	.globl _EXF2
                                     49 	.globl _CAP1F
                                     50 	.globl _TF2
                                     51 	.globl _RI
                                     52 	.globl _TI
                                     53 	.globl _RB8
                                     54 	.globl _TB8
                                     55 	.globl _REN
                                     56 	.globl _SM2
                                     57 	.globl _SM1
                                     58 	.globl _SM0
                                     59 	.globl _IT0
                                     60 	.globl _IE0
                                     61 	.globl _IT1
                                     62 	.globl _IE1
                                     63 	.globl _TR0
                                     64 	.globl _TF0
                                     65 	.globl _TR1
                                     66 	.globl _TF1
                                     67 	.globl _P4_OUT_0
                                     68 	.globl _P4_OUT_1
                                     69 	.globl _P4_OUT_2
                                     70 	.globl _P4_OUT_3
                                     71 	.globl _P4_OUT_4
                                     72 	.globl _P4_OUT_5
                                     73 	.globl _P4_OUT_6
                                     74 	.globl _P4_OUT_7
                                     75 	.globl _RXD1_
                                     76 	.globl _LED2
                                     77 	.globl _CAP3_
                                     78 	.globl _PWM3_
                                     79 	.globl _PWM1_
                                     80 	.globl _TXD1_
                                     81 	.globl _TNOW_
                                     82 	.globl _LED3
                                     83 	.globl _PWM2_
                                     84 	.globl _SCS_
                                     85 	.globl _SCK_
                                     86 	.globl _P3_0
                                     87 	.globl _P3_1
                                     88 	.globl _P3_2
                                     89 	.globl _P3_3
                                     90 	.globl _P3_4
                                     91 	.globl _P3_5
                                     92 	.globl _P3_6
                                     93 	.globl _P3_7
                                     94 	.globl _RXD
                                     95 	.globl _TXD
                                     96 	.globl _INT0
                                     97 	.globl _LED0
                                     98 	.globl _INT1
                                     99 	.globl _LED1
                                    100 	.globl _T0
                                    101 	.globl _XCS0
                                    102 	.globl _LEDC
                                    103 	.globl _T1
                                    104 	.globl _DA6
                                    105 	.globl _WR
                                    106 	.globl _RD
                                    107 	.globl _P2_0
                                    108 	.globl _P2_1
                                    109 	.globl _P2_2
                                    110 	.globl _P2_3
                                    111 	.globl _P2_4
                                    112 	.globl _P2_5
                                    113 	.globl _P2_6
                                    114 	.globl _P2_7
                                    115 	.globl _MOSI1
                                    116 	.globl _MISO1
                                    117 	.globl _SCK1
                                    118 	.globl _PWM1
                                    119 	.globl _CAP2_
                                    120 	.globl _T2EX_
                                    121 	.globl _PWM2
                                    122 	.globl _TNOW
                                    123 	.globl _RXD1
                                    124 	.globl _DA7
                                    125 	.globl _TXD1
                                    126 	.globl _P1_0
                                    127 	.globl _P1_1
                                    128 	.globl _P1_2
                                    129 	.globl _P1_3
                                    130 	.globl _P1_4
                                    131 	.globl _P1_5
                                    132 	.globl _P1_6
                                    133 	.globl _P1_7
                                    134 	.globl _CAP1
                                    135 	.globl _T2
                                    136 	.globl _CAP2
                                    137 	.globl _T2EX
                                    138 	.globl _CAP3
                                    139 	.globl _PWM3
                                    140 	.globl _SCS
                                    141 	.globl _MOSI
                                    142 	.globl _MISO
                                    143 	.globl _SCK
                                    144 	.globl _AIN0
                                    145 	.globl _AIN1
                                    146 	.globl _AIN2
                                    147 	.globl _AIN3
                                    148 	.globl _AIN4
                                    149 	.globl _AIN5
                                    150 	.globl _AIN6
                                    151 	.globl _AIN7
                                    152 	.globl _P0_0
                                    153 	.globl _P0_1
                                    154 	.globl _P0_2
                                    155 	.globl _P0_3
                                    156 	.globl _P0_4
                                    157 	.globl _P0_5
                                    158 	.globl _P0_6
                                    159 	.globl _P0_7
                                    160 	.globl _UDTR
                                    161 	.globl _URTS
                                    162 	.globl _RXD_
                                    163 	.globl _TXD_
                                    164 	.globl _UCTS
                                    165 	.globl _UDSR
                                    166 	.globl _URI
                                    167 	.globl _UDCD
                                    168 	.globl _IE_SPI0
                                    169 	.globl _IE_TMR3
                                    170 	.globl _IE_USB
                                    171 	.globl _IE_ADC
                                    172 	.globl _IE_UART1
                                    173 	.globl _IE_PWM1
                                    174 	.globl _IE_GPIO
                                    175 	.globl _IE_WDOG
                                    176 	.globl _PX0
                                    177 	.globl _PT0
                                    178 	.globl _PX1
                                    179 	.globl _PT1
                                    180 	.globl _PS
                                    181 	.globl _PT2
                                    182 	.globl _PL_FLAG
                                    183 	.globl _PH_FLAG
                                    184 	.globl _EX0
                                    185 	.globl _ET0
                                    186 	.globl _EX1
                                    187 	.globl _ET1
                                    188 	.globl _ES
                                    189 	.globl _ET2
                                    190 	.globl _E_DIS
                                    191 	.globl _EA
                                    192 	.globl _P
                                    193 	.globl _F1
                                    194 	.globl _OV
                                    195 	.globl _RS0
                                    196 	.globl _RS1
                                    197 	.globl _F0
                                    198 	.globl _AC
                                    199 	.globl _CY
                                    200 	.globl _USB_DMA_AH
                                    201 	.globl _USB_DMA_AL
                                    202 	.globl _USB_DMA
                                    203 	.globl _UHUB1_CTRL
                                    204 	.globl _UDEV_CTRL
                                    205 	.globl _USB_DEV_AD
                                    206 	.globl _USB_CTRL
                                    207 	.globl _USB_INT_EN
                                    208 	.globl _UEP4_T_LEN
                                    209 	.globl _UEP4_CTRL
                                    210 	.globl _UEP0_T_LEN
                                    211 	.globl _UEP0_CTRL
                                    212 	.globl _USB_HUB_ST
                                    213 	.globl _USB_MIS_ST
                                    214 	.globl _USB_INT_ST
                                    215 	.globl _USB_INT_FG
                                    216 	.globl _UEP3_T_LEN
                                    217 	.globl _UEP3_CTRL
                                    218 	.globl _UEP2_T_LEN
                                    219 	.globl _UEP2_CTRL
                                    220 	.globl _UEP1_T_LEN
                                    221 	.globl _UEP1_CTRL
                                    222 	.globl _USB_RX_LEN
                                    223 	.globl _ADC_EX_SW
                                    224 	.globl _ADC_SETUP
                                    225 	.globl _ADC_FIFO_H
                                    226 	.globl _ADC_FIFO_L
                                    227 	.globl _ADC_FIFO
                                    228 	.globl _ADC_CHANN
                                    229 	.globl _ADC_CTRL
                                    230 	.globl _ADC_STAT
                                    231 	.globl _ADC_CK_SE
                                    232 	.globl _ADC_DMA_CN
                                    233 	.globl _ADC_DMA_AH
                                    234 	.globl _ADC_DMA_AL
                                    235 	.globl _ADC_DMA
                                    236 	.globl _SER1_ADDR
                                    237 	.globl _SER1_MSR
                                    238 	.globl _SER1_LSR
                                    239 	.globl _SER1_MCR
                                    240 	.globl _SER1_LCR
                                    241 	.globl _SER1_IIR
                                    242 	.globl _SER1_IER
                                    243 	.globl _SER1_FIFO
                                    244 	.globl _SPI1_CK_SE
                                    245 	.globl _SPI1_CTRL
                                    246 	.globl _SPI1_DATA
                                    247 	.globl _SPI1_STAT
                                    248 	.globl _SPI0_SETUP
                                    249 	.globl _SPI0_CK_SE
                                    250 	.globl _SPI0_CTRL
                                    251 	.globl _SPI0_DATA
                                    252 	.globl _SPI0_STAT
                                    253 	.globl _PWM_CYCLE
                                    254 	.globl _PWM_CK_SE
                                    255 	.globl _PWM_CTRL
                                    256 	.globl _PWM_DATA
                                    257 	.globl _PWM_DATA2
                                    258 	.globl _T3_FIFO_H
                                    259 	.globl _T3_FIFO_L
                                    260 	.globl _T3_FIFO
                                    261 	.globl _T3_DMA_AH
                                    262 	.globl _T3_DMA_AL
                                    263 	.globl _T3_DMA
                                    264 	.globl _T3_DMA_CN
                                    265 	.globl _T3_CTRL
                                    266 	.globl _T3_STAT
                                    267 	.globl _T3_END_H
                                    268 	.globl _T3_END_L
                                    269 	.globl _T3_END
                                    270 	.globl _T3_COUNT_H
                                    271 	.globl _T3_COUNT_L
                                    272 	.globl _T3_COUNT
                                    273 	.globl _T3_SETUP
                                    274 	.globl _TH2
                                    275 	.globl _TL2
                                    276 	.globl _T2COUNT
                                    277 	.globl _RCAP2H
                                    278 	.globl _RCAP2L
                                    279 	.globl _RCAP2
                                    280 	.globl _T2MOD
                                    281 	.globl _T2CON
                                    282 	.globl _SBUF
                                    283 	.globl _SCON
                                    284 	.globl _TH1
                                    285 	.globl _TH0
                                    286 	.globl _TL1
                                    287 	.globl _TL0
                                    288 	.globl _TMOD
                                    289 	.globl _TCON
                                    290 	.globl _XBUS_SPEED
                                    291 	.globl _XBUS_AUX
                                    292 	.globl _PIN_FUNC
                                    293 	.globl _PORT_CFG
                                    294 	.globl _P5_IN
                                    295 	.globl _P4_PU
                                    296 	.globl _P4_DIR
                                    297 	.globl _P4_IN
                                    298 	.globl _P4_OUT
                                    299 	.globl _P3_PU
                                    300 	.globl _P3_DIR
                                    301 	.globl _P3
                                    302 	.globl _P2_PU
                                    303 	.globl _P2_DIR
                                    304 	.globl _P2
                                    305 	.globl _P1_PU
                                    306 	.globl _P1_DIR
                                    307 	.globl _P1_IE
                                    308 	.globl _P1
                                    309 	.globl _P0_PU
                                    310 	.globl _P0_DIR
                                    311 	.globl _P0
                                    312 	.globl _ROM_CTRL
                                    313 	.globl _ROM_DATA_H
                                    314 	.globl _ROM_DATA_L
                                    315 	.globl _ROM_DATA
                                    316 	.globl _ROM_ADDR_H
                                    317 	.globl _ROM_ADDR_L
                                    318 	.globl _ROM_ADDR
                                    319 	.globl _GPIO_IE
                                    320 	.globl _IP_EX
                                    321 	.globl _IE_EX
                                    322 	.globl _IP
                                    323 	.globl _IE
                                    324 	.globl _WDOG_COUNT
                                    325 	.globl _RESET_KEEP
                                    326 	.globl _WAKE_CTRL
                                    327 	.globl _SLEEP_CTRL
                                    328 	.globl _CLOCK_CFG
                                    329 	.globl _PLL_CFG
                                    330 	.globl _PCON
                                    331 	.globl _GLOBAL_CFG
                                    332 	.globl _SAFE_MOD
                                    333 	.globl _DPH
                                    334 	.globl _DPL
                                    335 	.globl _SP
                                    336 	.globl _B
                                    337 	.globl _ACC
                                    338 	.globl _PSW
                                    339 	.globl _USBController_sendStatus_PARM_2
                                    340 	.globl _LED_DMA_XL
                                    341 	.globl _LED_DMA_XH
                                    342 	.globl _LED_DMA_CN
                                    343 	.globl _LED_DMA_AL
                                    344 	.globl _LED_DMA_AH
                                    345 	.globl _LED_CK_SE
                                    346 	.globl _LED_DATA
                                    347 	.globl _LED_CTRL
                                    348 	.globl _LED_STAT
                                    349 	.globl _UEP3_DMA_L
                                    350 	.globl _UEP3_DMA_H
                                    351 	.globl _UEP2_DMA_L
                                    352 	.globl _UEP2_DMA_H
                                    353 	.globl _UEP1_DMA_L
                                    354 	.globl _UEP1_DMA_H
                                    355 	.globl _UEP0_DMA_L
                                    356 	.globl _UEP0_DMA_H
                                    357 	.globl _UEP2_3_MOD
                                    358 	.globl _UEP4_1_MOD
                                    359 	.globl _pLED_DMA_XL
                                    360 	.globl _pLED_DMA_XH
                                    361 	.globl _pLED_DMA_CN
                                    362 	.globl _pLED_DMA_AL
                                    363 	.globl _pLED_DMA_AH
                                    364 	.globl _pLED_CK_SE
                                    365 	.globl _pLED_DATA
                                    366 	.globl _pLED_CTRL
                                    367 	.globl _pLED_STAT
                                    368 	.globl _pUEP3_DMA_L
                                    369 	.globl _pUEP3_DMA_H
                                    370 	.globl _pUEP2_DMA_L
                                    371 	.globl _pUEP2_DMA_H
                                    372 	.globl _pUEP1_DMA_L
                                    373 	.globl _pUEP1_DMA_H
                                    374 	.globl _pUEP0_DMA_L
                                    375 	.globl _pUEP0_DMA_H
                                    376 	.globl _pUEP2_3_MOD
                                    377 	.globl _pUEP4_1_MOD
                                    378 	.globl _USBController_begin
                                    379 	.globl _USBController_update
                                    380 	.globl _USBController_sendStatus
                                    381 	.globl _USBController_isConnected
                                    382 	.globl _USBController_getTargetVoltage
                                    383 	.globl _USBController_isOverrideActive
                                    384 ;--------------------------------------------------------
                                    385 ; special function registers
                                    386 ;--------------------------------------------------------
                                    387 	.area RSEG    (ABS,DATA)
      000000                        388 	.org 0x0000
                           0000D0   389 _PSW	=	0x00d0
                           0000E0   390 _ACC	=	0x00e0
                           0000F0   391 _B	=	0x00f0
                           000081   392 _SP	=	0x0081
                           000082   393 _DPL	=	0x0082
                           000083   394 _DPH	=	0x0083
                           0000A1   395 _SAFE_MOD	=	0x00a1
                           0000B1   396 _GLOBAL_CFG	=	0x00b1
                           000087   397 _PCON	=	0x0087
                           0000B2   398 _PLL_CFG	=	0x00b2
                           0000B3   399 _CLOCK_CFG	=	0x00b3
                           0000EA   400 _SLEEP_CTRL	=	0x00ea
                           0000EB   401 _WAKE_CTRL	=	0x00eb
                           0000FE   402 _RESET_KEEP	=	0x00fe
                           0000FF   403 _WDOG_COUNT	=	0x00ff
                           0000A8   404 _IE	=	0x00a8
                           0000B8   405 _IP	=	0x00b8
                           0000E8   406 _IE_EX	=	0x00e8
                           0000E9   407 _IP_EX	=	0x00e9
                           0000CF   408 _GPIO_IE	=	0x00cf
                           008584   409 _ROM_ADDR	=	0x8584
                           000084   410 _ROM_ADDR_L	=	0x0084
                           000085   411 _ROM_ADDR_H	=	0x0085
                           008F8E   412 _ROM_DATA	=	0x8f8e
                           00008E   413 _ROM_DATA_L	=	0x008e
                           00008F   414 _ROM_DATA_H	=	0x008f
                           000086   415 _ROM_CTRL	=	0x0086
                           000080   416 _P0	=	0x0080
                           0000C4   417 _P0_DIR	=	0x00c4
                           0000C5   418 _P0_PU	=	0x00c5
                           000090   419 _P1	=	0x0090
                           0000B9   420 _P1_IE	=	0x00b9
                           0000BA   421 _P1_DIR	=	0x00ba
                           0000BB   422 _P1_PU	=	0x00bb
                           0000A0   423 _P2	=	0x00a0
                           0000BC   424 _P2_DIR	=	0x00bc
                           0000BD   425 _P2_PU	=	0x00bd
                           0000B0   426 _P3	=	0x00b0
                           0000BE   427 _P3_DIR	=	0x00be
                           0000BF   428 _P3_PU	=	0x00bf
                           0000C0   429 _P4_OUT	=	0x00c0
                           0000C1   430 _P4_IN	=	0x00c1
                           0000C2   431 _P4_DIR	=	0x00c2
                           0000C3   432 _P4_PU	=	0x00c3
                           0000C7   433 _P5_IN	=	0x00c7
                           0000C6   434 _PORT_CFG	=	0x00c6
                           0000CE   435 _PIN_FUNC	=	0x00ce
                           0000A2   436 _XBUS_AUX	=	0x00a2
                           0000FD   437 _XBUS_SPEED	=	0x00fd
                           000088   438 _TCON	=	0x0088
                           000089   439 _TMOD	=	0x0089
                           00008A   440 _TL0	=	0x008a
                           00008B   441 _TL1	=	0x008b
                           00008C   442 _TH0	=	0x008c
                           00008D   443 _TH1	=	0x008d
                           000098   444 _SCON	=	0x0098
                           000099   445 _SBUF	=	0x0099
                           0000C8   446 _T2CON	=	0x00c8
                           0000C9   447 _T2MOD	=	0x00c9
                           00CBCA   448 _RCAP2	=	0xcbca
                           0000CA   449 _RCAP2L	=	0x00ca
                           0000CB   450 _RCAP2H	=	0x00cb
                           00CDCC   451 _T2COUNT	=	0xcdcc
                           0000CC   452 _TL2	=	0x00cc
                           0000CD   453 _TH2	=	0x00cd
                           0000A3   454 _T3_SETUP	=	0x00a3
                           00A5A4   455 _T3_COUNT	=	0xa5a4
                           0000A4   456 _T3_COUNT_L	=	0x00a4
                           0000A5   457 _T3_COUNT_H	=	0x00a5
                           00A7A6   458 _T3_END	=	0xa7a6
                           0000A6   459 _T3_END_L	=	0x00a6
                           0000A7   460 _T3_END_H	=	0x00a7
                           0000A9   461 _T3_STAT	=	0x00a9
                           0000AA   462 _T3_CTRL	=	0x00aa
                           0000AB   463 _T3_DMA_CN	=	0x00ab
                           00ADAC   464 _T3_DMA	=	0xadac
                           0000AC   465 _T3_DMA_AL	=	0x00ac
                           0000AD   466 _T3_DMA_AH	=	0x00ad
                           00AFAE   467 _T3_FIFO	=	0xafae
                           0000AE   468 _T3_FIFO_L	=	0x00ae
                           0000AF   469 _T3_FIFO_H	=	0x00af
                           00009B   470 _PWM_DATA2	=	0x009b
                           00009C   471 _PWM_DATA	=	0x009c
                           00009D   472 _PWM_CTRL	=	0x009d
                           00009E   473 _PWM_CK_SE	=	0x009e
                           00009F   474 _PWM_CYCLE	=	0x009f
                           0000F8   475 _SPI0_STAT	=	0x00f8
                           0000F9   476 _SPI0_DATA	=	0x00f9
                           0000FA   477 _SPI0_CTRL	=	0x00fa
                           0000FB   478 _SPI0_CK_SE	=	0x00fb
                           0000FC   479 _SPI0_SETUP	=	0x00fc
                           0000B4   480 _SPI1_STAT	=	0x00b4
                           0000B5   481 _SPI1_DATA	=	0x00b5
                           0000B6   482 _SPI1_CTRL	=	0x00b6
                           0000B7   483 _SPI1_CK_SE	=	0x00b7
                           00009A   484 _SER1_FIFO	=	0x009a
                           000091   485 _SER1_IER	=	0x0091
                           000092   486 _SER1_IIR	=	0x0092
                           000093   487 _SER1_LCR	=	0x0093
                           000094   488 _SER1_MCR	=	0x0094
                           000095   489 _SER1_LSR	=	0x0095
                           000096   490 _SER1_MSR	=	0x0096
                           000097   491 _SER1_ADDR	=	0x0097
                           00EDEC   492 _ADC_DMA	=	0xedec
                           0000EC   493 _ADC_DMA_AL	=	0x00ec
                           0000ED   494 _ADC_DMA_AH	=	0x00ed
                           0000EE   495 _ADC_DMA_CN	=	0x00ee
                           0000EF   496 _ADC_CK_SE	=	0x00ef
                           0000F1   497 _ADC_STAT	=	0x00f1
                           0000F2   498 _ADC_CTRL	=	0x00f2
                           0000F3   499 _ADC_CHANN	=	0x00f3
                           00F5F4   500 _ADC_FIFO	=	0xf5f4
                           0000F4   501 _ADC_FIFO_L	=	0x00f4
                           0000F5   502 _ADC_FIFO_H	=	0x00f5
                           0000F6   503 _ADC_SETUP	=	0x00f6
                           0000F7   504 _ADC_EX_SW	=	0x00f7
                           0000D1   505 _USB_RX_LEN	=	0x00d1
                           0000D2   506 _UEP1_CTRL	=	0x00d2
                           0000D3   507 _UEP1_T_LEN	=	0x00d3
                           0000D4   508 _UEP2_CTRL	=	0x00d4
                           0000D5   509 _UEP2_T_LEN	=	0x00d5
                           0000D6   510 _UEP3_CTRL	=	0x00d6
                           0000D7   511 _UEP3_T_LEN	=	0x00d7
                           0000D8   512 _USB_INT_FG	=	0x00d8
                           0000D9   513 _USB_INT_ST	=	0x00d9
                           0000DA   514 _USB_MIS_ST	=	0x00da
                           0000DB   515 _USB_HUB_ST	=	0x00db
                           0000DC   516 _UEP0_CTRL	=	0x00dc
                           0000DD   517 _UEP0_T_LEN	=	0x00dd
                           0000DE   518 _UEP4_CTRL	=	0x00de
                           0000DF   519 _UEP4_T_LEN	=	0x00df
                           0000E1   520 _USB_INT_EN	=	0x00e1
                           0000E2   521 _USB_CTRL	=	0x00e2
                           0000E3   522 _USB_DEV_AD	=	0x00e3
                           0000E4   523 _UDEV_CTRL	=	0x00e4
                           0000E5   524 _UHUB1_CTRL	=	0x00e5
                           00E7E6   525 _USB_DMA	=	0xe7e6
                           0000E6   526 _USB_DMA_AL	=	0x00e6
                           0000E7   527 _USB_DMA_AH	=	0x00e7
                                    528 ;--------------------------------------------------------
                                    529 ; special function bits
                                    530 ;--------------------------------------------------------
                                    531 	.area RSEG    (ABS,DATA)
      000000                        532 	.org 0x0000
                           0000D7   533 _CY	=	0x00d7
                           0000D6   534 _AC	=	0x00d6
                           0000D5   535 _F0	=	0x00d5
                           0000D4   536 _RS1	=	0x00d4
                           0000D3   537 _RS0	=	0x00d3
                           0000D2   538 _OV	=	0x00d2
                           0000D1   539 _F1	=	0x00d1
                           0000D0   540 _P	=	0x00d0
                           0000AF   541 _EA	=	0x00af
                           0000AE   542 _E_DIS	=	0x00ae
                           0000AD   543 _ET2	=	0x00ad
                           0000AC   544 _ES	=	0x00ac
                           0000AB   545 _ET1	=	0x00ab
                           0000AA   546 _EX1	=	0x00aa
                           0000A9   547 _ET0	=	0x00a9
                           0000A8   548 _EX0	=	0x00a8
                           0000BF   549 _PH_FLAG	=	0x00bf
                           0000BE   550 _PL_FLAG	=	0x00be
                           0000BD   551 _PT2	=	0x00bd
                           0000BC   552 _PS	=	0x00bc
                           0000BB   553 _PT1	=	0x00bb
                           0000BA   554 _PX1	=	0x00ba
                           0000B9   555 _PT0	=	0x00b9
                           0000B8   556 _PX0	=	0x00b8
                           0000EF   557 _IE_WDOG	=	0x00ef
                           0000EE   558 _IE_GPIO	=	0x00ee
                           0000ED   559 _IE_PWM1	=	0x00ed
                           0000EC   560 _IE_UART1	=	0x00ec
                           0000EB   561 _IE_ADC	=	0x00eb
                           0000EA   562 _IE_USB	=	0x00ea
                           0000E9   563 _IE_TMR3	=	0x00e9
                           0000E8   564 _IE_SPI0	=	0x00e8
                           000087   565 _UDCD	=	0x0087
                           000086   566 _URI	=	0x0086
                           000085   567 _UDSR	=	0x0085
                           000084   568 _UCTS	=	0x0084
                           000083   569 _TXD_	=	0x0083
                           000082   570 _RXD_	=	0x0082
                           000081   571 _URTS	=	0x0081
                           000080   572 _UDTR	=	0x0080
                           000087   573 _P0_7	=	0x0087
                           000086   574 _P0_6	=	0x0086
                           000085   575 _P0_5	=	0x0085
                           000084   576 _P0_4	=	0x0084
                           000083   577 _P0_3	=	0x0083
                           000082   578 _P0_2	=	0x0082
                           000081   579 _P0_1	=	0x0081
                           000080   580 _P0_0	=	0x0080
                           000097   581 _AIN7	=	0x0097
                           000096   582 _AIN6	=	0x0096
                           000095   583 _AIN5	=	0x0095
                           000094   584 _AIN4	=	0x0094
                           000093   585 _AIN3	=	0x0093
                           000092   586 _AIN2	=	0x0092
                           000091   587 _AIN1	=	0x0091
                           000090   588 _AIN0	=	0x0090
                           000097   589 _SCK	=	0x0097
                           000096   590 _MISO	=	0x0096
                           000095   591 _MOSI	=	0x0095
                           000094   592 _SCS	=	0x0094
                           000092   593 _PWM3	=	0x0092
                           000092   594 _CAP3	=	0x0092
                           000091   595 _T2EX	=	0x0091
                           000091   596 _CAP2	=	0x0091
                           000090   597 _T2	=	0x0090
                           000090   598 _CAP1	=	0x0090
                           000097   599 _P1_7	=	0x0097
                           000096   600 _P1_6	=	0x0096
                           000095   601 _P1_5	=	0x0095
                           000094   602 _P1_4	=	0x0094
                           000093   603 _P1_3	=	0x0093
                           000092   604 _P1_2	=	0x0092
                           000091   605 _P1_1	=	0x0091
                           000090   606 _P1_0	=	0x0090
                           0000A7   607 _TXD1	=	0x00a7
                           0000A7   608 _DA7	=	0x00a7
                           0000A6   609 _RXD1	=	0x00a6
                           0000A5   610 _TNOW	=	0x00a5
                           0000A5   611 _PWM2	=	0x00a5
                           0000A5   612 _T2EX_	=	0x00a5
                           0000A5   613 _CAP2_	=	0x00a5
                           0000A4   614 _PWM1	=	0x00a4
                           0000A3   615 _SCK1	=	0x00a3
                           0000A2   616 _MISO1	=	0x00a2
                           0000A1   617 _MOSI1	=	0x00a1
                           0000A7   618 _P2_7	=	0x00a7
                           0000A6   619 _P2_6	=	0x00a6
                           0000A5   620 _P2_5	=	0x00a5
                           0000A4   621 _P2_4	=	0x00a4
                           0000A3   622 _P2_3	=	0x00a3
                           0000A2   623 _P2_2	=	0x00a2
                           0000A1   624 _P2_1	=	0x00a1
                           0000A0   625 _P2_0	=	0x00a0
                           0000B7   626 _RD	=	0x00b7
                           0000B6   627 _WR	=	0x00b6
                           0000B5   628 _DA6	=	0x00b5
                           0000B5   629 _T1	=	0x00b5
                           0000B4   630 _LEDC	=	0x00b4
                           0000B4   631 _XCS0	=	0x00b4
                           0000B4   632 _T0	=	0x00b4
                           0000B3   633 _LED1	=	0x00b3
                           0000B3   634 _INT1	=	0x00b3
                           0000B2   635 _LED0	=	0x00b2
                           0000B2   636 _INT0	=	0x00b2
                           0000B1   637 _TXD	=	0x00b1
                           0000B0   638 _RXD	=	0x00b0
                           0000B7   639 _P3_7	=	0x00b7
                           0000B6   640 _P3_6	=	0x00b6
                           0000B5   641 _P3_5	=	0x00b5
                           0000B4   642 _P3_4	=	0x00b4
                           0000B3   643 _P3_3	=	0x00b3
                           0000B2   644 _P3_2	=	0x00b2
                           0000B1   645 _P3_1	=	0x00b1
                           0000B0   646 _P3_0	=	0x00b0
                           0000C7   647 _SCK_	=	0x00c7
                           0000C6   648 _SCS_	=	0x00c6
                           0000C5   649 _PWM2_	=	0x00c5
                           0000C4   650 _LED3	=	0x00c4
                           0000C4   651 _TNOW_	=	0x00c4
                           0000C4   652 _TXD1_	=	0x00c4
                           0000C3   653 _PWM1_	=	0x00c3
                           0000C2   654 _PWM3_	=	0x00c2
                           0000C2   655 _CAP3_	=	0x00c2
                           0000C0   656 _LED2	=	0x00c0
                           0000C0   657 _RXD1_	=	0x00c0
                           0000C7   658 _P4_OUT_7	=	0x00c7
                           0000C6   659 _P4_OUT_6	=	0x00c6
                           0000C5   660 _P4_OUT_5	=	0x00c5
                           0000C4   661 _P4_OUT_4	=	0x00c4
                           0000C3   662 _P4_OUT_3	=	0x00c3
                           0000C2   663 _P4_OUT_2	=	0x00c2
                           0000C1   664 _P4_OUT_1	=	0x00c1
                           0000C0   665 _P4_OUT_0	=	0x00c0
                           00008F   666 _TF1	=	0x008f
                           00008E   667 _TR1	=	0x008e
                           00008D   668 _TF0	=	0x008d
                           00008C   669 _TR0	=	0x008c
                           00008B   670 _IE1	=	0x008b
                           00008A   671 _IT1	=	0x008a
                           000089   672 _IE0	=	0x0089
                           000088   673 _IT0	=	0x0088
                           00009F   674 _SM0	=	0x009f
                           00009E   675 _SM1	=	0x009e
                           00009D   676 _SM2	=	0x009d
                           00009C   677 _REN	=	0x009c
                           00009B   678 _TB8	=	0x009b
                           00009A   679 _RB8	=	0x009a
                           000099   680 _TI	=	0x0099
                           000098   681 _RI	=	0x0098
                           0000CF   682 _TF2	=	0x00cf
                           0000CF   683 _CAP1F	=	0x00cf
                           0000CE   684 _EXF2	=	0x00ce
                           0000CD   685 _RCLK	=	0x00cd
                           0000CC   686 _TCLK	=	0x00cc
                           0000CB   687 _EXEN2	=	0x00cb
                           0000CA   688 _TR2	=	0x00ca
                           0000C9   689 _C_T2	=	0x00c9
                           0000C8   690 _CP_RL2	=	0x00c8
                           0000FF   691 _S0_FST_ACT	=	0x00ff
                           0000FE   692 _S0_IF_OV	=	0x00fe
                           0000FD   693 _S0_IF_FIRST	=	0x00fd
                           0000FC   694 _S0_IF_BYTE	=	0x00fc
                           0000FB   695 _S0_FREE	=	0x00fb
                           0000FA   696 _S0_T_FIFO	=	0x00fa
                           0000F9   697 _S0_R_FIFO1	=	0x00f9
                           0000F8   698 _S0_R_FIFO0	=	0x00f8
                           0000DF   699 _U_IS_NAK	=	0x00df
                           0000DE   700 _U_TOG_OK	=	0x00de
                           0000DD   701 _U_SIE_FREE	=	0x00dd
                           0000DC   702 _UIF_FIFO_OV	=	0x00dc
                           0000DB   703 _UIF_HST_SOF	=	0x00db
                           0000DA   704 _UIF_SUSPEND	=	0x00da
                           0000D9   705 _UIF_TRANSFER	=	0x00d9
                           0000D8   706 _UIF_DETECT	=	0x00d8
                           0000D8   707 _UIF_BUS_RST	=	0x00d8
                                    708 ;--------------------------------------------------------
                                    709 ; overlayable register banks
                                    710 ;--------------------------------------------------------
                                    711 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        712 	.ds 8
                                    713 ;--------------------------------------------------------
                                    714 ; overlayable bit register bank
                                    715 ;--------------------------------------------------------
                                    716 	.area BIT_BANK	(REL,OVR,DATA)
      000022                        717 bits:
      000022                        718 	.ds 1
                           008000   719 	b0 = bits[0]
                           008100   720 	b1 = bits[1]
                           008200   721 	b2 = bits[2]
                           008300   722 	b3 = bits[3]
                           008400   723 	b4 = bits[4]
                           008500   724 	b5 = bits[5]
                           008600   725 	b6 = bits[6]
                           008700   726 	b7 = bits[7]
                                    727 ;--------------------------------------------------------
                                    728 ; internal ram data
                                    729 ;--------------------------------------------------------
                                    730 	.area DSEG    (DATA)
      00004D                        731 _usb_handleCommand_sloc0_1_0:
      00004D                        732 	.ds 3
      000050                        733 _USBController_update_sloc0_1_0:
      000050                        734 	.ds 3
      000053                        735 _USBController_update_sloc1_1_0:
      000053                        736 	.ds 3
      000056                        737 _USBController_update_sloc2_1_0:
      000056                        738 	.ds 3
      000059                        739 _USBController_update_sloc3_1_0:
      000059                        740 	.ds 3
      00005C                        741 _USBController_update_sloc4_1_0:
      00005C                        742 	.ds 4
                                    743 ;--------------------------------------------------------
                                    744 ; overlayable items in internal ram
                                    745 ;--------------------------------------------------------
                                    746 ;--------------------------------------------------------
                                    747 ; indirectly addressable internal ram data
                                    748 ;--------------------------------------------------------
                                    749 	.area ISEG    (DATA)
                                    750 ;--------------------------------------------------------
                                    751 ; absolute internal ram data
                                    752 ;--------------------------------------------------------
                                    753 	.area IABS    (ABS,DATA)
                                    754 	.area IABS    (ABS,DATA)
                                    755 ;--------------------------------------------------------
                                    756 ; bit data
                                    757 ;--------------------------------------------------------
                                    758 	.area BSEG    (BIT)
                                    759 ;--------------------------------------------------------
                                    760 ; paged external ram data
                                    761 ;--------------------------------------------------------
                                    762 	.area PSEG    (PAG,XDATA)
                           002546   763 _pUEP4_1_MOD	=	0x2546
                           002547   764 _pUEP2_3_MOD	=	0x2547
                           002548   765 _pUEP0_DMA_H	=	0x2548
                           002549   766 _pUEP0_DMA_L	=	0x2549
                           00254A   767 _pUEP1_DMA_H	=	0x254a
                           00254B   768 _pUEP1_DMA_L	=	0x254b
                           00254C   769 _pUEP2_DMA_H	=	0x254c
                           00254D   770 _pUEP2_DMA_L	=	0x254d
                           00254E   771 _pUEP3_DMA_H	=	0x254e
                           00254F   772 _pUEP3_DMA_L	=	0x254f
                           002980   773 _pLED_STAT	=	0x2980
                           002981   774 _pLED_CTRL	=	0x2981
                           002982   775 _pLED_DATA	=	0x2982
                           002983   776 _pLED_CK_SE	=	0x2983
                           002984   777 _pLED_DMA_AH	=	0x2984
                           002985   778 _pLED_DMA_AL	=	0x2985
                           002986   779 _pLED_DMA_CN	=	0x2986
                           002988   780 _pLED_DMA_XH	=	0x2988
                           002989   781 _pLED_DMA_XL	=	0x2989
                                    782 ;--------------------------------------------------------
                                    783 ; uninitialized external ram data
                                    784 ;--------------------------------------------------------
                                    785 	.area XSEG    (XDATA)
                           002446   786 _UEP4_1_MOD	=	0x2446
                           002447   787 _UEP2_3_MOD	=	0x2447
                           002448   788 _UEP0_DMA_H	=	0x2448
                           002449   789 _UEP0_DMA_L	=	0x2449
                           00244A   790 _UEP1_DMA_H	=	0x244a
                           00244B   791 _UEP1_DMA_L	=	0x244b
                           00244C   792 _UEP2_DMA_H	=	0x244c
                           00244D   793 _UEP2_DMA_L	=	0x244d
                           00244E   794 _UEP3_DMA_H	=	0x244e
                           00244F   795 _UEP3_DMA_L	=	0x244f
                           002880   796 _LED_STAT	=	0x2880
                           002881   797 _LED_CTRL	=	0x2881
                           002882   798 _LED_DATA	=	0x2882
                           002883   799 _LED_CK_SE	=	0x2883
                           002884   800 _LED_DMA_AH	=	0x2884
                           002885   801 _LED_DMA_AL	=	0x2885
                           002886   802 _LED_DMA_CN	=	0x2886
                           002888   803 _LED_DMA_XH	=	0x2888
                           002889   804 _LED_DMA_XL	=	0x2889
      000201                        805 _usb_set_connected_uc_65536_216:
      000201                        806 	.ds 3
      000204                        807 _usb_reply_ok_key_value_PARM_2:
      000204                        808 	.ds 3
      000207                        809 _usb_reply_ok_key_value_key_65536_218:
      000207                        810 	.ds 3
      00020A                        811 _usb_reply_ok_key_uint_PARM_2:
      00020A                        812 	.ds 4
      00020E                        813 _usb_reply_ok_key_uint_key_65536_221:
      00020E                        814 	.ds 3
      000211                        815 _usb_reply_ok_key_float1_PARM_2:
      000211                        816 	.ds 4
      000215                        817 _usb_reply_ok_key_float1_key_65536_223:
      000215                        818 	.ds 3
      000218                        819 _usb_reply_ok_key_float2_PARM_2:
      000218                        820 	.ds 4
      00021C                        821 _usb_reply_ok_key_float2_key_65536_225:
      00021C                        822 	.ds 3
      00021F                        823 _usb_print_key_segment_PARM_2:
      00021F                        824 	.ds 1
      000220                        825 _usb_print_key_segment_key_65536_232:
      000220                        826 	.ds 3
      000223                        827 _usb_handleCommand_PARM_2:
      000223                        828 	.ds 3
      000226                        829 _usb_handleCommand_uc_65536_253:
      000226                        830 	.ds 3
      000229                        831 _USBController_begin_uc_65536_265:
      000229                        832 	.ds 3
      00022C                        833 _USBController_update_uc_65536_267:
      00022C                        834 	.ds 3
      00022F                        835 _USBController_sendStatus_PARM_2:
      00022F                        836 	.ds 3
      000232                        837 _USBController_isConnected_uc_65536_278:
      000232                        838 	.ds 3
      000235                        839 _USBController_getTargetVoltage_uc_65536_280:
      000235                        840 	.ds 3
      000238                        841 _USBController_isOverrideActive_uc_65536_282:
      000238                        842 	.ds 3
                                    843 ;--------------------------------------------------------
                                    844 ; absolute external ram data
                                    845 ;--------------------------------------------------------
                                    846 	.area XABS    (ABS,XDATA)
                                    847 ;--------------------------------------------------------
                                    848 ; initialized external ram data
                                    849 ;--------------------------------------------------------
                                    850 	.area XISEG   (XDATA)
                                    851 	.area HOME    (CODE)
                                    852 	.area GSINIT0 (CODE)
                                    853 	.area GSINIT1 (CODE)
                                    854 	.area GSINIT2 (CODE)
                                    855 	.area GSINIT3 (CODE)
                                    856 	.area GSINIT4 (CODE)
                                    857 	.area GSINIT5 (CODE)
                                    858 	.area GSINIT  (CODE)
                                    859 	.area GSFINAL (CODE)
                                    860 	.area CSEG    (CODE)
                                    861 ;--------------------------------------------------------
                                    862 ; global & static initialisations
                                    863 ;--------------------------------------------------------
                                    864 	.area HOME    (CODE)
                                    865 	.area GSINIT  (CODE)
                                    866 	.area GSFINAL (CODE)
                                    867 	.area GSINIT  (CODE)
                                    868 ;--------------------------------------------------------
                                    869 ; Home
                                    870 ;--------------------------------------------------------
                                    871 	.area HOME    (CODE)
                                    872 	.area HOME    (CODE)
                                    873 ;--------------------------------------------------------
                                    874 ; code
                                    875 ;--------------------------------------------------------
                                    876 	.area CSEG    (CODE)
                                    877 ;------------------------------------------------------------
                                    878 ;Allocation info for local variables in function 'usb_str_eq'
                                    879 ;------------------------------------------------------------
                                    880 ;b                         Allocated to stack - _bp -5
                                    881 ;a                         Allocated to registers r5 r6 r7 
                                    882 ;sloc0                     Allocated to stack - _bp +1
                                    883 ;sloc1                     Allocated to stack - _bp +4
                                    884 ;sloc2                     Allocated to stack - _bp +5
                                    885 ;------------------------------------------------------------
                                    886 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:17: static bool usb_str_eq(const char* a, const char* b) SDCC_REENTRANT {
                                    887 ;	-----------------------------------------
                                    888 ;	 function usb_str_eq
                                    889 ;	-----------------------------------------
      00275E                        890 _usb_str_eq:
                           000007   891 	ar7 = 0x07
                           000006   892 	ar6 = 0x06
                           000005   893 	ar5 = 0x05
                           000004   894 	ar4 = 0x04
                           000003   895 	ar3 = 0x03
                           000002   896 	ar2 = 0x02
                           000001   897 	ar1 = 0x01
                           000000   898 	ar0 = 0x00
      00275E C0 1F            [24]  899 	push	_bp
      002760 E5 81            [12]  900 	mov	a,sp
      002762 F5 1F            [12]  901 	mov	_bp,a
      002764 24 05            [12]  902 	add	a,#0x05
      002766 F5 81            [12]  903 	mov	sp,a
      002768 AD 82            [24]  904 	mov	r5,dpl
      00276A AE 83            [24]  905 	mov	r6,dph
      00276C AF F0            [24]  906 	mov	r7,b
                                    907 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:18: while (*a && *b) {
      00276E 8D 02            [24]  908 	mov	ar2,r5
      002770 8E 03            [24]  909 	mov	ar3,r6
      002772 8F 04            [24]  910 	mov	ar4,r7
      002774 E5 1F            [12]  911 	mov	a,_bp
      002776 24 FB            [12]  912 	add	a,#0xfb
      002778 F8               [12]  913 	mov	r0,a
      002779 A9 1F            [24]  914 	mov	r1,_bp
      00277B 09               [12]  915 	inc	r1
      00277C E6               [12]  916 	mov	a,@r0
      00277D F7               [12]  917 	mov	@r1,a
      00277E 08               [12]  918 	inc	r0
      00277F E6               [12]  919 	mov	a,@r0
      002780 09               [12]  920 	inc	r1
      002781 F7               [12]  921 	mov	@r1,a
      002782 08               [12]  922 	inc	r0
      002783 E6               [12]  923 	mov	a,@r0
      002784 09               [12]  924 	inc	r1
      002785 F7               [12]  925 	mov	@r1,a
      002786                        926 00104$:
      002786 8A 82            [24]  927 	mov	dpl,r2
      002788 8B 83            [24]  928 	mov	dph,r3
      00278A 8C F0            [24]  929 	mov	b,r4
      00278C E5 1F            [12]  930 	mov	a,_bp
      00278E 24 04            [12]  931 	add	a,#0x04
      002790 F8               [12]  932 	mov	r0,a
      002791 12 5D 5A         [24]  933 	lcall	__gptrget
      002794 F6               [12]  934 	mov	@r0,a
      002795 E5 1F            [12]  935 	mov	a,_bp
      002797 24 04            [12]  936 	add	a,#0x04
      002799 F8               [12]  937 	mov	r0,a
      00279A E6               [12]  938 	mov	a,@r0
      00279B 60 5B            [24]  939 	jz	00106$
      00279D A8 1F            [24]  940 	mov	r0,_bp
      00279F 08               [12]  941 	inc	r0
      0027A0 86 82            [24]  942 	mov	dpl,@r0
      0027A2 08               [12]  943 	inc	r0
      0027A3 86 83            [24]  944 	mov	dph,@r0
      0027A5 08               [12]  945 	inc	r0
      0027A6 86 F0            [24]  946 	mov	b,@r0
      0027A8 E5 1F            [12]  947 	mov	a,_bp
      0027AA 24 05            [12]  948 	add	a,#0x05
      0027AC F9               [12]  949 	mov	r1,a
      0027AD 12 5D 5A         [24]  950 	lcall	__gptrget
      0027B0 F7               [12]  951 	mov	@r1,a
      0027B1 E5 1F            [12]  952 	mov	a,_bp
      0027B3 24 05            [12]  953 	add	a,#0x05
      0027B5 F8               [12]  954 	mov	r0,a
      0027B6 E6               [12]  955 	mov	a,@r0
      0027B7 60 3F            [24]  956 	jz	00106$
                                    957 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:19: if (*a != *b) {
      0027B9 E5 1F            [12]  958 	mov	a,_bp
      0027BB 24 04            [12]  959 	add	a,#0x04
      0027BD F8               [12]  960 	mov	r0,a
      0027BE E5 1F            [12]  961 	mov	a,_bp
      0027C0 24 05            [12]  962 	add	a,#0x05
      0027C2 F9               [12]  963 	mov	r1,a
      0027C3 86 F0            [24]  964 	mov	b,@r0
      0027C5 E7               [12]  965 	mov	a,@r1
      0027C6 B5 F0 02         [24]  966 	cjne	a,b,00134$
      0027C9 80 05            [24]  967 	sjmp	00102$
      0027CB                        968 00134$:
                                    969 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:20: return false;
      0027CB 75 82 00         [24]  970 	mov	dpl,#0x00
      0027CE 80 57            [24]  971 	sjmp	00107$
      0027D0                        972 00102$:
                                    973 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:22: a++;
      0027D0 0A               [12]  974 	inc	r2
      0027D1 BA 00 01         [24]  975 	cjne	r2,#0x00,00135$
      0027D4 0B               [12]  976 	inc	r3
      0027D5                        977 00135$:
      0027D5 8A 05            [24]  978 	mov	ar5,r2
      0027D7 8B 06            [24]  979 	mov	ar6,r3
      0027D9 8C 07            [24]  980 	mov	ar7,r4
                                    981 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:23: b++;
      0027DB A8 1F            [24]  982 	mov	r0,_bp
      0027DD 08               [12]  983 	inc	r0
      0027DE 06               [12]  984 	inc	@r0
      0027DF B6 00 02         [24]  985 	cjne	@r0,#0x00,00136$
      0027E2 08               [12]  986 	inc	r0
      0027E3 06               [12]  987 	inc	@r0
      0027E4                        988 00136$:
      0027E4 A8 1F            [24]  989 	mov	r0,_bp
      0027E6 08               [12]  990 	inc	r0
      0027E7 E5 1F            [12]  991 	mov	a,_bp
      0027E9 24 FB            [12]  992 	add	a,#0xfb
      0027EB F9               [12]  993 	mov	r1,a
      0027EC E6               [12]  994 	mov	a,@r0
      0027ED F7               [12]  995 	mov	@r1,a
      0027EE 08               [12]  996 	inc	r0
      0027EF E6               [12]  997 	mov	a,@r0
      0027F0 09               [12]  998 	inc	r1
      0027F1 F7               [12]  999 	mov	@r1,a
      0027F2 08               [12] 1000 	inc	r0
      0027F3 E6               [12] 1001 	mov	a,@r0
      0027F4 09               [12] 1002 	inc	r1
      0027F5 F7               [12] 1003 	mov	@r1,a
      0027F6 80 8E            [24] 1004 	sjmp	00104$
      0027F8                       1005 00106$:
                                   1006 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:25: return (*a == '\0') && (*b == '\0');
      0027F8 8D 82            [24] 1007 	mov	dpl,r5
      0027FA 8E 83            [24] 1008 	mov	dph,r6
      0027FC 8F F0            [24] 1009 	mov	b,r7
      0027FE 12 5D 5A         [24] 1010 	lcall	__gptrget
      002801 70 18            [24] 1011 	jnz	00109$
      002803 E5 1F            [12] 1012 	mov	a,_bp
      002805 24 FB            [12] 1013 	add	a,#0xfb
      002807 F8               [12] 1014 	mov	r0,a
      002808 86 05            [24] 1015 	mov	ar5,@r0
      00280A 08               [12] 1016 	inc	r0
      00280B 86 06            [24] 1017 	mov	ar6,@r0
      00280D 08               [12] 1018 	inc	r0
      00280E 86 07            [24] 1019 	mov	ar7,@r0
      002810 8D 82            [24] 1020 	mov	dpl,r5
      002812 8E 83            [24] 1021 	mov	dph,r6
      002814 8F F0            [24] 1022 	mov	b,r7
      002816 12 5D 5A         [24] 1023 	lcall	__gptrget
      002819 60 04            [24] 1024 	jz	00110$
      00281B                       1025 00109$:
                                   1026 ;	assignBit
      00281B C2 10            [12] 1027 	clr	b0
      00281D 80 02            [24] 1028 	sjmp	00111$
      00281F                       1029 00110$:
                                   1030 ;	assignBit
      00281F D2 10            [12] 1031 	setb	b0
      002821                       1032 00111$:
      002821 A2 10            [12] 1033 	mov	c,b0
      002823 E4               [12] 1034 	clr	a
      002824 33               [12] 1035 	rlc	a
      002825 F5 82            [12] 1036 	mov	dpl,a
      002827                       1037 00107$:
                                   1038 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:26: }
      002827 85 1F 81         [24] 1039 	mov	sp,_bp
      00282A D0 1F            [24] 1040 	pop	_bp
      00282C 22               [24] 1041 	ret
                                   1042 ;------------------------------------------------------------
                                   1043 ;Allocation info for local variables in function 'usb_starts_with'
                                   1044 ;------------------------------------------------------------
                                   1045 ;prefix                    Allocated to stack - _bp -5
                                   1046 ;s                         Allocated to registers 
                                   1047 ;sloc0                     Allocated to stack - _bp +1
                                   1048 ;------------------------------------------------------------
                                   1049 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:28: static bool usb_starts_with(const char* s, const char* prefix) SDCC_REENTRANT {
                                   1050 ;	-----------------------------------------
                                   1051 ;	 function usb_starts_with
                                   1052 ;	-----------------------------------------
      00282D                       1053 _usb_starts_with:
      00282D C0 1F            [24] 1054 	push	_bp
      00282F 85 81 1F         [24] 1055 	mov	_bp,sp
      002832 05 81            [12] 1056 	inc	sp
      002834 AD 82            [24] 1057 	mov	r5,dpl
      002836 AE 83            [24] 1058 	mov	r6,dph
      002838 AF F0            [24] 1059 	mov	r7,b
                                   1060 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:29: while (*prefix) {
      00283A E5 1F            [12] 1061 	mov	a,_bp
      00283C 24 FB            [12] 1062 	add	a,#0xfb
      00283E F8               [12] 1063 	mov	r0,a
      00283F 86 02            [24] 1064 	mov	ar2,@r0
      002841 08               [12] 1065 	inc	r0
      002842 86 03            [24] 1066 	mov	ar3,@r0
      002844 08               [12] 1067 	inc	r0
      002845 86 04            [24] 1068 	mov	ar4,@r0
      002847                       1069 00103$:
      002847 8A 82            [24] 1070 	mov	dpl,r2
      002849 8B 83            [24] 1071 	mov	dph,r3
      00284B 8C F0            [24] 1072 	mov	b,r4
      00284D A8 1F            [24] 1073 	mov	r0,_bp
      00284F 08               [12] 1074 	inc	r0
      002850 12 5D 5A         [24] 1075 	lcall	__gptrget
      002853 F6               [12] 1076 	mov	@r0,a
      002854 A8 1F            [24] 1077 	mov	r0,_bp
      002856 08               [12] 1078 	inc	r0
      002857 E6               [12] 1079 	mov	a,@r0
      002858 60 36            [24] 1080 	jz	00105$
                                   1081 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:30: if (*s != *prefix) {
      00285A C0 02            [24] 1082 	push	ar2
      00285C C0 03            [24] 1083 	push	ar3
      00285E C0 04            [24] 1084 	push	ar4
      002860 8D 82            [24] 1085 	mov	dpl,r5
      002862 8E 83            [24] 1086 	mov	dph,r6
      002864 8F F0            [24] 1087 	mov	b,r7
      002866 12 5D 5A         [24] 1088 	lcall	__gptrget
      002869 FC               [12] 1089 	mov	r4,a
      00286A A8 1F            [24] 1090 	mov	r0,_bp
      00286C 08               [12] 1091 	inc	r0
      00286D E6               [12] 1092 	mov	a,@r0
      00286E B5 04 08         [24] 1093 	cjne	a,ar4,00121$
      002871 D0 04            [24] 1094 	pop	ar4
      002873 D0 03            [24] 1095 	pop	ar3
      002875 D0 02            [24] 1096 	pop	ar2
      002877 80 0B            [24] 1097 	sjmp	00102$
      002879                       1098 00121$:
      002879 D0 04            [24] 1099 	pop	ar4
      00287B D0 03            [24] 1100 	pop	ar3
      00287D D0 02            [24] 1101 	pop	ar2
                                   1102 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:31: return false;
      00287F 75 82 00         [24] 1103 	mov	dpl,#0x00
      002882 80 0F            [24] 1104 	sjmp	00106$
      002884                       1105 00102$:
                                   1106 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:33: s++;
      002884 0D               [12] 1107 	inc	r5
      002885 BD 00 01         [24] 1108 	cjne	r5,#0x00,00122$
      002888 0E               [12] 1109 	inc	r6
      002889                       1110 00122$:
                                   1111 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:34: prefix++;
      002889 0A               [12] 1112 	inc	r2
      00288A BA 00 BA         [24] 1113 	cjne	r2,#0x00,00103$
      00288D 0B               [12] 1114 	inc	r3
      00288E 80 B7            [24] 1115 	sjmp	00103$
      002890                       1116 00105$:
                                   1117 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:36: return true;
      002890 75 82 01         [24] 1118 	mov	dpl,#0x01
      002893                       1119 00106$:
                                   1120 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:37: }
      002893 15 81            [12] 1121 	dec	sp
      002895 D0 1F            [24] 1122 	pop	_bp
      002897 22               [24] 1123 	ret
                                   1124 ;------------------------------------------------------------
                                   1125 ;Allocation info for local variables in function 'usb_find_char'
                                   1126 ;------------------------------------------------------------
                                   1127 ;c                         Allocated to stack - _bp -3
                                   1128 ;s                         Allocated to registers r5 r6 r7 
                                   1129 ;sloc0                     Allocated to stack - _bp +1
                                   1130 ;------------------------------------------------------------
                                   1131 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:39: static const char* usb_find_char(const char* s, char c) SDCC_REENTRANT {
                                   1132 ;	-----------------------------------------
                                   1133 ;	 function usb_find_char
                                   1134 ;	-----------------------------------------
      002898                       1135 _usb_find_char:
      002898 C0 1F            [24] 1136 	push	_bp
      00289A 85 81 1F         [24] 1137 	mov	_bp,sp
      00289D 05 81            [12] 1138 	inc	sp
      00289F AD 82            [24] 1139 	mov	r5,dpl
      0028A1 AE 83            [24] 1140 	mov	r6,dph
      0028A3 AF F0            [24] 1141 	mov	r7,b
                                   1142 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:40: while (*s) {
      0028A5 8D 02            [24] 1143 	mov	ar2,r5
      0028A7 8E 03            [24] 1144 	mov	ar3,r6
      0028A9 8F 04            [24] 1145 	mov	ar4,r7
      0028AB                       1146 00103$:
      0028AB 8A 82            [24] 1147 	mov	dpl,r2
      0028AD 8B 83            [24] 1148 	mov	dph,r3
      0028AF 8C F0            [24] 1149 	mov	b,r4
      0028B1 A8 1F            [24] 1150 	mov	r0,_bp
      0028B3 08               [12] 1151 	inc	r0
      0028B4 12 5D 5A         [24] 1152 	lcall	__gptrget
      0028B7 F6               [12] 1153 	mov	@r0,a
      0028B8 A8 1F            [24] 1154 	mov	r0,_bp
      0028BA 08               [12] 1155 	inc	r0
      0028BB E6               [12] 1156 	mov	a,@r0
      0028BC 60 23            [24] 1157 	jz	00105$
                                   1158 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:41: if (*s == c) {
      0028BE A8 1F            [24] 1159 	mov	r0,_bp
      0028C0 08               [12] 1160 	inc	r0
      0028C1 E5 1F            [12] 1161 	mov	a,_bp
      0028C3 24 FD            [12] 1162 	add	a,#0xfd
      0028C5 F9               [12] 1163 	mov	r1,a
      0028C6 86 F0            [24] 1164 	mov	b,@r0
      0028C8 E7               [12] 1165 	mov	a,@r1
      0028C9 B5 F0 08         [24] 1166 	cjne	a,b,00102$
                                   1167 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:42: return s;
      0028CC 8D 82            [24] 1168 	mov	dpl,r5
      0028CE 8E 83            [24] 1169 	mov	dph,r6
      0028D0 8F F0            [24] 1170 	mov	b,r7
      0028D2 80 13            [24] 1171 	sjmp	00106$
      0028D4                       1172 00102$:
                                   1173 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:44: s++;
      0028D4 0A               [12] 1174 	inc	r2
      0028D5 BA 00 01         [24] 1175 	cjne	r2,#0x00,00123$
      0028D8 0B               [12] 1176 	inc	r3
      0028D9                       1177 00123$:
      0028D9 8A 05            [24] 1178 	mov	ar5,r2
      0028DB 8B 06            [24] 1179 	mov	ar6,r3
      0028DD 8C 07            [24] 1180 	mov	ar7,r4
      0028DF 80 CA            [24] 1181 	sjmp	00103$
      0028E1                       1182 00105$:
                                   1183 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:46: return (const char*)0;
      0028E1 90 00 00         [24] 1184 	mov	dptr,#0x0000
      0028E4 75 F0 00         [24] 1185 	mov	b,#0x00
      0028E7                       1186 00106$:
                                   1187 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:47: }
      0028E7 15 81            [12] 1188 	dec	sp
      0028E9 D0 1F            [24] 1189 	pop	_bp
      0028EB 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'usb_parse_u32'
                                   1193 ;------------------------------------------------------------
                                   1194 ;s                         Allocated to registers 
                                   1195 ;v                         Allocated to stack - _bp +8
                                   1196 ;sloc0                     Allocated to stack - _bp +5
                                   1197 ;sloc1                     Allocated to stack - _bp +1
                                   1198 ;------------------------------------------------------------
                                   1199 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:49: static uint32_t usb_parse_u32(const char* s) SDCC_REENTRANT {
                                   1200 ;	-----------------------------------------
                                   1201 ;	 function usb_parse_u32
                                   1202 ;	-----------------------------------------
      0028EC                       1203 _usb_parse_u32:
      0028EC C0 1F            [24] 1204 	push	_bp
      0028EE E5 81            [12] 1205 	mov	a,sp
      0028F0 F5 1F            [12] 1206 	mov	_bp,a
      0028F2 24 0B            [12] 1207 	add	a,#0x0b
      0028F4 F5 81            [12] 1208 	mov	sp,a
      0028F6 C8               [12] 1209 	xch	a,r0
      0028F7 E5 1F            [12] 1210 	mov	a,_bp
      0028F9 24 05            [12] 1211 	add	a,#0x05
      0028FB C8               [12] 1212 	xch	a,r0
      0028FC A6 82            [24] 1213 	mov	@r0,dpl
      0028FE 08               [12] 1214 	inc	r0
      0028FF A6 83            [24] 1215 	mov	@r0,dph
      002901 08               [12] 1216 	inc	r0
      002902 A6 F0            [24] 1217 	mov	@r0,b
                                   1218 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:50: uint32_t v = 0;
      002904 E5 1F            [12] 1219 	mov	a,_bp
      002906 24 08            [12] 1220 	add	a,#0x08
      002908 F8               [12] 1221 	mov	r0,a
      002909 E4               [12] 1222 	clr	a
      00290A F6               [12] 1223 	mov	@r0,a
      00290B 08               [12] 1224 	inc	r0
      00290C F6               [12] 1225 	mov	@r0,a
      00290D 08               [12] 1226 	inc	r0
      00290E F6               [12] 1227 	mov	@r0,a
      00290F 08               [12] 1228 	inc	r0
      002910 F6               [12] 1229 	mov	@r0,a
                                   1230 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:51: while (*s >= '0' && *s <= '9') {
      002911                       1231 00102$:
      002911 E5 1F            [12] 1232 	mov	a,_bp
      002913 24 05            [12] 1233 	add	a,#0x05
      002915 F8               [12] 1234 	mov	r0,a
      002916 86 82            [24] 1235 	mov	dpl,@r0
      002918 08               [12] 1236 	inc	r0
      002919 86 83            [24] 1237 	mov	dph,@r0
      00291B 08               [12] 1238 	inc	r0
      00291C 86 F0            [24] 1239 	mov	b,@r0
      00291E 12 5D 5A         [24] 1240 	lcall	__gptrget
      002921 FC               [12] 1241 	mov	r4,a
      002922 BC 30 00         [24] 1242 	cjne	r4,#0x30,00120$
      002925                       1243 00120$:
      002925 40 78            [24] 1244 	jc	00104$
      002927 EC               [12] 1245 	mov	a,r4
      002928 24 C6            [12] 1246 	add	a,#0xff - 0x39
      00292A 40 73            [24] 1247 	jc	00104$
                                   1248 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:52: v = v * 10u + (uint32_t)(*s - '0');
      00292C C0 04            [24] 1249 	push	ar4
      00292E E5 1F            [12] 1250 	mov	a,_bp
      002930 24 08            [12] 1251 	add	a,#0x08
      002932 F8               [12] 1252 	mov	r0,a
      002933 E6               [12] 1253 	mov	a,@r0
      002934 C0 E0            [24] 1254 	push	acc
      002936 08               [12] 1255 	inc	r0
      002937 E6               [12] 1256 	mov	a,@r0
      002938 C0 E0            [24] 1257 	push	acc
      00293A 08               [12] 1258 	inc	r0
      00293B E6               [12] 1259 	mov	a,@r0
      00293C C0 E0            [24] 1260 	push	acc
      00293E 08               [12] 1261 	inc	r0
      00293F E6               [12] 1262 	mov	a,@r0
      002940 C0 E0            [24] 1263 	push	acc
      002942 90 00 0A         [24] 1264 	mov	dptr,#(0x0a&0x00ff)
      002945 E4               [12] 1265 	clr	a
      002946 F5 F0            [12] 1266 	mov	b,a
      002948 12 5D 76         [24] 1267 	lcall	__mullong
      00294B A8 1F            [24] 1268 	mov	r0,_bp
      00294D 08               [12] 1269 	inc	r0
      00294E A6 82            [24] 1270 	mov	@r0,dpl
      002950 08               [12] 1271 	inc	r0
      002951 A6 83            [24] 1272 	mov	@r0,dph
      002953 08               [12] 1273 	inc	r0
      002954 A6 F0            [24] 1274 	mov	@r0,b
      002956 08               [12] 1275 	inc	r0
      002957 F6               [12] 1276 	mov	@r0,a
      002958 E5 81            [12] 1277 	mov	a,sp
      00295A 24 FC            [12] 1278 	add	a,#0xfc
      00295C F5 81            [12] 1279 	mov	sp,a
      00295E D0 04            [24] 1280 	pop	ar4
      002960 7D 00            [12] 1281 	mov	r5,#0x00
      002962 EC               [12] 1282 	mov	a,r4
      002963 24 D0            [12] 1283 	add	a,#0xd0
      002965 FC               [12] 1284 	mov	r4,a
      002966 ED               [12] 1285 	mov	a,r5
      002967 34 FF            [12] 1286 	addc	a,#0xff
      002969 FD               [12] 1287 	mov	r5,a
      00296A 33               [12] 1288 	rlc	a
      00296B 95 E0            [12] 1289 	subb	a,acc
      00296D FE               [12] 1290 	mov	r6,a
      00296E FF               [12] 1291 	mov	r7,a
      00296F A8 1F            [24] 1292 	mov	r0,_bp
      002971 08               [12] 1293 	inc	r0
      002972 EC               [12] 1294 	mov	a,r4
      002973 26               [12] 1295 	add	a,@r0
      002974 FC               [12] 1296 	mov	r4,a
      002975 ED               [12] 1297 	mov	a,r5
      002976 08               [12] 1298 	inc	r0
      002977 36               [12] 1299 	addc	a,@r0
      002978 FD               [12] 1300 	mov	r5,a
      002979 EE               [12] 1301 	mov	a,r6
      00297A 08               [12] 1302 	inc	r0
      00297B 36               [12] 1303 	addc	a,@r0
      00297C FE               [12] 1304 	mov	r6,a
      00297D EF               [12] 1305 	mov	a,r7
      00297E 08               [12] 1306 	inc	r0
      00297F 36               [12] 1307 	addc	a,@r0
      002980 FF               [12] 1308 	mov	r7,a
      002981 E5 1F            [12] 1309 	mov	a,_bp
      002983 24 08            [12] 1310 	add	a,#0x08
      002985 F8               [12] 1311 	mov	r0,a
      002986 A6 04            [24] 1312 	mov	@r0,ar4
      002988 08               [12] 1313 	inc	r0
      002989 A6 05            [24] 1314 	mov	@r0,ar5
      00298B 08               [12] 1315 	inc	r0
      00298C A6 06            [24] 1316 	mov	@r0,ar6
      00298E 08               [12] 1317 	inc	r0
      00298F A6 07            [24] 1318 	mov	@r0,ar7
                                   1319 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:53: s++;
      002991 E5 1F            [12] 1320 	mov	a,_bp
      002993 24 05            [12] 1321 	add	a,#0x05
      002995 F8               [12] 1322 	mov	r0,a
      002996 06               [12] 1323 	inc	@r0
      002997 B6 00 02         [24] 1324 	cjne	@r0,#0x00,00123$
      00299A 08               [12] 1325 	inc	r0
      00299B 06               [12] 1326 	inc	@r0
      00299C                       1327 00123$:
      00299C 02 29 11         [24] 1328 	ljmp	00102$
      00299F                       1329 00104$:
                                   1330 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:55: return v;
      00299F E5 1F            [12] 1331 	mov	a,_bp
      0029A1 24 08            [12] 1332 	add	a,#0x08
      0029A3 F8               [12] 1333 	mov	r0,a
      0029A4 86 82            [24] 1334 	mov	dpl,@r0
      0029A6 08               [12] 1335 	inc	r0
      0029A7 86 83            [24] 1336 	mov	dph,@r0
      0029A9 08               [12] 1337 	inc	r0
      0029AA 86 F0            [24] 1338 	mov	b,@r0
      0029AC 08               [12] 1339 	inc	r0
      0029AD E6               [12] 1340 	mov	a,@r0
                                   1341 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:56: }
      0029AE 85 1F 81         [24] 1342 	mov	sp,_bp
      0029B1 D0 1F            [24] 1343 	pop	_bp
      0029B3 22               [24] 1344 	ret
                                   1345 ;------------------------------------------------------------
                                   1346 ;Allocation info for local variables in function 'usb_parse_i32'
                                   1347 ;------------------------------------------------------------
                                   1348 ;s                         Allocated to registers r5 r6 r7 
                                   1349 ;sign                      Allocated to stack - _bp +4
                                   1350 ;v                         Allocated to registers r2 r4 
                                   1351 ;sloc0                     Allocated to stack - _bp +1
                                   1352 ;------------------------------------------------------------
                                   1353 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:58: static int usb_parse_i32(const char* s) SDCC_REENTRANT {
                                   1354 ;	-----------------------------------------
                                   1355 ;	 function usb_parse_i32
                                   1356 ;	-----------------------------------------
      0029B4                       1357 _usb_parse_i32:
      0029B4 C0 1F            [24] 1358 	push	_bp
      0029B6 E5 81            [12] 1359 	mov	a,sp
      0029B8 F5 1F            [12] 1360 	mov	_bp,a
      0029BA 24 05            [12] 1361 	add	a,#0x05
      0029BC F5 81            [12] 1362 	mov	sp,a
      0029BE AD 82            [24] 1363 	mov	r5,dpl
      0029C0 AE 83            [24] 1364 	mov	r6,dph
      0029C2 AF F0            [24] 1365 	mov	r7,b
                                   1366 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:59: int sign = 1;
      0029C4 E5 1F            [12] 1367 	mov	a,_bp
      0029C6 24 04            [12] 1368 	add	a,#0x04
      0029C8 F8               [12] 1369 	mov	r0,a
      0029C9 76 01            [12] 1370 	mov	@r0,#0x01
      0029CB 08               [12] 1371 	inc	r0
      0029CC 76 00            [12] 1372 	mov	@r0,#0x00
                                   1373 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:60: int v = 0;
      0029CE 7A 00            [12] 1374 	mov	r2,#0x00
      0029D0 7C 00            [12] 1375 	mov	r4,#0x00
                                   1376 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:61: if (*s == '-') {
      0029D2 8D 82            [24] 1377 	mov	dpl,r5
      0029D4 8E 83            [24] 1378 	mov	dph,r6
      0029D6 8F F0            [24] 1379 	mov	b,r7
      0029D8 12 5D 5A         [24] 1380 	lcall	__gptrget
      0029DB FB               [12] 1381 	mov	r3,a
      0029DC BB 2D 11         [24] 1382 	cjne	r3,#0x2d,00104$
                                   1383 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:62: sign = -1;
      0029DF E5 1F            [12] 1384 	mov	a,_bp
      0029E1 24 04            [12] 1385 	add	a,#0x04
      0029E3 F8               [12] 1386 	mov	r0,a
      0029E4 76 FF            [12] 1387 	mov	@r0,#0xff
      0029E6 08               [12] 1388 	inc	r0
      0029E7 76 FF            [12] 1389 	mov	@r0,#0xff
                                   1390 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:63: s++;
      0029E9 0D               [12] 1391 	inc	r5
      0029EA BD 00 0B         [24] 1392 	cjne	r5,#0x00,00116$
      0029ED 0E               [12] 1393 	inc	r6
      0029EE 80 08            [24] 1394 	sjmp	00116$
      0029F0                       1395 00104$:
                                   1396 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:64: } else if (*s == '+') {
      0029F0 BB 2B 05         [24] 1397 	cjne	r3,#0x2b,00116$
                                   1398 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:65: s++;
      0029F3 0D               [12] 1399 	inc	r5
      0029F4 BD 00 01         [24] 1400 	cjne	r5,#0x00,00138$
      0029F7 0E               [12] 1401 	inc	r6
      0029F8                       1402 00138$:
                                   1403 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:67: while (*s >= '0' && *s <= '9') {
      0029F8                       1404 00116$:
      0029F8 A8 1F            [24] 1405 	mov	r0,_bp
      0029FA 08               [12] 1406 	inc	r0
      0029FB A6 05            [24] 1407 	mov	@r0,ar5
      0029FD 08               [12] 1408 	inc	r0
      0029FE A6 06            [24] 1409 	mov	@r0,ar6
      002A00 08               [12] 1410 	inc	r0
      002A01 A6 07            [24] 1411 	mov	@r0,ar7
      002A03                       1412 00107$:
      002A03 A8 1F            [24] 1413 	mov	r0,_bp
      002A05 08               [12] 1414 	inc	r0
      002A06 86 82            [24] 1415 	mov	dpl,@r0
      002A08 08               [12] 1416 	inc	r0
      002A09 86 83            [24] 1417 	mov	dph,@r0
      002A0B 08               [12] 1418 	inc	r0
      002A0C 86 F0            [24] 1419 	mov	b,@r0
      002A0E 12 5D 5A         [24] 1420 	lcall	__gptrget
      002A11 FB               [12] 1421 	mov	r3,a
      002A12 BB 30 00         [24] 1422 	cjne	r3,#0x30,00139$
      002A15                       1423 00139$:
      002A15 40 3A            [24] 1424 	jc	00109$
      002A17 EB               [12] 1425 	mov	a,r3
      002A18 24 C6            [12] 1426 	add	a,#0xff - 0x39
      002A1A 40 35            [24] 1427 	jc	00109$
                                   1428 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:68: v = v * 10 + (*s - '0');
      002A1C C0 03            [24] 1429 	push	ar3
      002A1E C0 02            [24] 1430 	push	ar2
      002A20 C0 04            [24] 1431 	push	ar4
      002A22 90 00 0A         [24] 1432 	mov	dptr,#0x000a
      002A25 12 57 05         [24] 1433 	lcall	__mulint
      002A28 AE 82            [24] 1434 	mov	r6,dpl
      002A2A AF 83            [24] 1435 	mov	r7,dph
      002A2C 15 81            [12] 1436 	dec	sp
      002A2E 15 81            [12] 1437 	dec	sp
      002A30 D0 03            [24] 1438 	pop	ar3
      002A32 7D 00            [12] 1439 	mov	r5,#0x00
      002A34 EB               [12] 1440 	mov	a,r3
      002A35 24 D0            [12] 1441 	add	a,#0xd0
      002A37 FB               [12] 1442 	mov	r3,a
      002A38 ED               [12] 1443 	mov	a,r5
      002A39 34 FF            [12] 1444 	addc	a,#0xff
      002A3B FD               [12] 1445 	mov	r5,a
      002A3C EB               [12] 1446 	mov	a,r3
      002A3D 2E               [12] 1447 	add	a,r6
      002A3E FE               [12] 1448 	mov	r6,a
      002A3F ED               [12] 1449 	mov	a,r5
      002A40 3F               [12] 1450 	addc	a,r7
      002A41 FF               [12] 1451 	mov	r7,a
      002A42 8E 02            [24] 1452 	mov	ar2,r6
      002A44 8F 04            [24] 1453 	mov	ar4,r7
                                   1454 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:69: s++;
      002A46 A8 1F            [24] 1455 	mov	r0,_bp
      002A48 08               [12] 1456 	inc	r0
      002A49 06               [12] 1457 	inc	@r0
      002A4A B6 00 02         [24] 1458 	cjne	@r0,#0x00,00142$
      002A4D 08               [12] 1459 	inc	r0
      002A4E 06               [12] 1460 	inc	@r0
      002A4F                       1461 00142$:
      002A4F 80 B2            [24] 1462 	sjmp	00107$
      002A51                       1463 00109$:
                                   1464 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:71: return sign * v;
      002A51 C0 02            [24] 1465 	push	ar2
      002A53 C0 04            [24] 1466 	push	ar4
      002A55 E5 1F            [12] 1467 	mov	a,_bp
      002A57 24 04            [12] 1468 	add	a,#0x04
      002A59 F8               [12] 1469 	mov	r0,a
      002A5A 86 82            [24] 1470 	mov	dpl,@r0
      002A5C 08               [12] 1471 	inc	r0
      002A5D 86 83            [24] 1472 	mov	dph,@r0
      002A5F 12 57 05         [24] 1473 	lcall	__mulint
      002A62 AE 82            [24] 1474 	mov	r6,dpl
      002A64 AF 83            [24] 1475 	mov	r7,dph
      002A66 15 81            [12] 1476 	dec	sp
      002A68 15 81            [12] 1477 	dec	sp
      002A6A 8E 82            [24] 1478 	mov	dpl,r6
      002A6C 8F 83            [24] 1479 	mov	dph,r7
                                   1480 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:72: }
      002A6E 85 1F 81         [24] 1481 	mov	sp,_bp
      002A71 D0 1F            [24] 1482 	pop	_bp
      002A73 22               [24] 1483 	ret
                                   1484 ;------------------------------------------------------------
                                   1485 ;Allocation info for local variables in function 'usb_parse_float'
                                   1486 ;------------------------------------------------------------
                                   1487 ;s                         Allocated to registers 
                                   1488 ;sign                      Allocated to registers r3 r2 
                                   1489 ;int_part                  Allocated to stack - _bp +12
                                   1490 ;frac_part                 Allocated to stack - _bp +16
                                   1491 ;frac_scale                Allocated to stack - _bp +20
                                   1492 ;sloc0                     Allocated to stack - _bp +5
                                   1493 ;sloc1                     Allocated to stack - _bp +8
                                   1494 ;sloc2                     Allocated to stack - _bp +1
                                   1495 ;------------------------------------------------------------
                                   1496 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:74: static float usb_parse_float(const char* s) SDCC_REENTRANT {
                                   1497 ;	-----------------------------------------
                                   1498 ;	 function usb_parse_float
                                   1499 ;	-----------------------------------------
      002A74                       1500 _usb_parse_float:
      002A74 C0 1F            [24] 1501 	push	_bp
      002A76 E5 81            [12] 1502 	mov	a,sp
      002A78 F5 1F            [12] 1503 	mov	_bp,a
      002A7A 24 17            [12] 1504 	add	a,#0x17
      002A7C F5 81            [12] 1505 	mov	sp,a
      002A7E AC 82            [24] 1506 	mov	r4,dpl
      002A80 AE 83            [24] 1507 	mov	r6,dph
      002A82 AF F0            [24] 1508 	mov	r7,b
                                   1509 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:75: int sign = 1;
      002A84 7B 01            [12] 1510 	mov	r3,#0x01
      002A86 7A 00            [12] 1511 	mov	r2,#0x00
                                   1512 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:76: float int_part = 0.0f;
      002A88 E5 1F            [12] 1513 	mov	a,_bp
      002A8A 24 0C            [12] 1514 	add	a,#0x0c
      002A8C F8               [12] 1515 	mov	r0,a
      002A8D E4               [12] 1516 	clr	a
      002A8E F6               [12] 1517 	mov	@r0,a
      002A8F 08               [12] 1518 	inc	r0
      002A90 F6               [12] 1519 	mov	@r0,a
      002A91 08               [12] 1520 	inc	r0
      002A92 F6               [12] 1521 	mov	@r0,a
      002A93 08               [12] 1522 	inc	r0
      002A94 F6               [12] 1523 	mov	@r0,a
                                   1524 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:77: float frac_part = 0.0f;
      002A95 E5 1F            [12] 1525 	mov	a,_bp
      002A97 24 10            [12] 1526 	add	a,#0x10
      002A99 F8               [12] 1527 	mov	r0,a
      002A9A E4               [12] 1528 	clr	a
      002A9B F6               [12] 1529 	mov	@r0,a
      002A9C 08               [12] 1530 	inc	r0
      002A9D F6               [12] 1531 	mov	@r0,a
      002A9E 08               [12] 1532 	inc	r0
      002A9F F6               [12] 1533 	mov	@r0,a
      002AA0 08               [12] 1534 	inc	r0
      002AA1 F6               [12] 1535 	mov	@r0,a
                                   1536 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:78: float frac_scale = 1.0f;
      002AA2 E5 1F            [12] 1537 	mov	a,_bp
      002AA4 24 14            [12] 1538 	add	a,#0x14
      002AA6 F8               [12] 1539 	mov	r0,a
      002AA7 E4               [12] 1540 	clr	a
      002AA8 F6               [12] 1541 	mov	@r0,a
      002AA9 08               [12] 1542 	inc	r0
      002AAA F6               [12] 1543 	mov	@r0,a
      002AAB 08               [12] 1544 	inc	r0
      002AAC 76 80            [12] 1545 	mov	@r0,#0x80
      002AAE 08               [12] 1546 	inc	r0
      002AAF 76 3F            [12] 1547 	mov	@r0,#0x3f
                                   1548 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:80: if (*s == '-') {
      002AB1 8C 82            [24] 1549 	mov	dpl,r4
      002AB3 8E 83            [24] 1550 	mov	dph,r6
      002AB5 8F F0            [24] 1551 	mov	b,r7
      002AB7 12 5D 5A         [24] 1552 	lcall	__gptrget
      002ABA FD               [12] 1553 	mov	r5,a
      002ABB BD 2D 0B         [24] 1554 	cjne	r5,#0x2d,00104$
                                   1555 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:81: sign = -1;
      002ABE 7B FF            [12] 1556 	mov	r3,#0xff
      002AC0 7A FF            [12] 1557 	mov	r2,#0xff
                                   1558 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:82: s++;
      002AC2 0C               [12] 1559 	inc	r4
      002AC3 BC 00 0B         [24] 1560 	cjne	r4,#0x00,00122$
      002AC6 0E               [12] 1561 	inc	r6
      002AC7 80 08            [24] 1562 	sjmp	00122$
      002AC9                       1563 00104$:
                                   1564 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:83: } else if (*s == '+') {
      002AC9 BD 2B 05         [24] 1565 	cjne	r5,#0x2b,00122$
                                   1566 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:84: s++;
      002ACC 0C               [12] 1567 	inc	r4
      002ACD BC 00 01         [24] 1568 	cjne	r4,#0x00,00170$
      002AD0 0E               [12] 1569 	inc	r6
      002AD1                       1570 00170$:
                                   1571 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:87: while (*s >= '0' && *s <= '9') {
      002AD1                       1572 00122$:
      002AD1 E5 1F            [12] 1573 	mov	a,_bp
      002AD3 24 05            [12] 1574 	add	a,#0x05
      002AD5 F8               [12] 1575 	mov	r0,a
      002AD6 A6 04            [24] 1576 	mov	@r0,ar4
      002AD8 08               [12] 1577 	inc	r0
      002AD9 A6 06            [24] 1578 	mov	@r0,ar6
      002ADB 08               [12] 1579 	inc	r0
      002ADC A6 07            [24] 1580 	mov	@r0,ar7
      002ADE                       1581 00107$:
      002ADE E5 1F            [12] 1582 	mov	a,_bp
      002AE0 24 05            [12] 1583 	add	a,#0x05
      002AE2 F8               [12] 1584 	mov	r0,a
      002AE3 86 82            [24] 1585 	mov	dpl,@r0
      002AE5 08               [12] 1586 	inc	r0
      002AE6 86 83            [24] 1587 	mov	dph,@r0
      002AE8 08               [12] 1588 	inc	r0
      002AE9 86 F0            [24] 1589 	mov	b,@r0
      002AEB 12 5D 5A         [24] 1590 	lcall	__gptrget
      002AEE FE               [12] 1591 	mov	r6,a
      002AEF BE 30 00         [24] 1592 	cjne	r6,#0x30,00171$
      002AF2                       1593 00171$:
      002AF2 50 03            [24] 1594 	jnc	00172$
      002AF4 02 2B A5         [24] 1595 	ljmp	00109$
      002AF7                       1596 00172$:
      002AF7 EE               [12] 1597 	mov	a,r6
      002AF8 24 C6            [12] 1598 	add	a,#0xff - 0x39
      002AFA 50 03            [24] 1599 	jnc	00173$
      002AFC 02 2B A5         [24] 1600 	ljmp	00109$
      002AFF                       1601 00173$:
                                   1602 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:88: int_part = int_part * 10.0f + (float)(*s - '0');
      002AFF C0 06            [24] 1603 	push	ar6
      002B01 C0 03            [24] 1604 	push	ar3
      002B03 C0 02            [24] 1605 	push	ar2
      002B05 E5 1F            [12] 1606 	mov	a,_bp
      002B07 24 0C            [12] 1607 	add	a,#0x0c
      002B09 F8               [12] 1608 	mov	r0,a
      002B0A E6               [12] 1609 	mov	a,@r0
      002B0B C0 E0            [24] 1610 	push	acc
      002B0D 08               [12] 1611 	inc	r0
      002B0E E6               [12] 1612 	mov	a,@r0
      002B0F C0 E0            [24] 1613 	push	acc
      002B11 08               [12] 1614 	inc	r0
      002B12 E6               [12] 1615 	mov	a,@r0
      002B13 C0 E0            [24] 1616 	push	acc
      002B15 08               [12] 1617 	inc	r0
      002B16 E6               [12] 1618 	mov	a,@r0
      002B17 C0 E0            [24] 1619 	push	acc
      002B19 90 00 00         [24] 1620 	mov	dptr,#0x0000
      002B1C 75 F0 20         [24] 1621 	mov	b,#0x20
      002B1F 74 41            [12] 1622 	mov	a,#0x41
      002B21 12 48 95         [24] 1623 	lcall	___fsmul
      002B24 C8               [12] 1624 	xch	a,r0
      002B25 E5 1F            [12] 1625 	mov	a,_bp
      002B27 24 08            [12] 1626 	add	a,#0x08
      002B29 C8               [12] 1627 	xch	a,r0
      002B2A A6 82            [24] 1628 	mov	@r0,dpl
      002B2C 08               [12] 1629 	inc	r0
      002B2D A6 83            [24] 1630 	mov	@r0,dph
      002B2F 08               [12] 1631 	inc	r0
      002B30 A6 F0            [24] 1632 	mov	@r0,b
      002B32 08               [12] 1633 	inc	r0
      002B33 F6               [12] 1634 	mov	@r0,a
      002B34 E5 81            [12] 1635 	mov	a,sp
      002B36 24 FC            [12] 1636 	add	a,#0xfc
      002B38 F5 81            [12] 1637 	mov	sp,a
      002B3A D0 02            [24] 1638 	pop	ar2
      002B3C D0 03            [24] 1639 	pop	ar3
      002B3E D0 06            [24] 1640 	pop	ar6
      002B40 7C 00            [12] 1641 	mov	r4,#0x00
      002B42 EE               [12] 1642 	mov	a,r6
      002B43 24 D0            [12] 1643 	add	a,#0xd0
      002B45 FE               [12] 1644 	mov	r6,a
      002B46 EC               [12] 1645 	mov	a,r4
      002B47 34 FF            [12] 1646 	addc	a,#0xff
      002B49 FC               [12] 1647 	mov	r4,a
      002B4A 8E 82            [24] 1648 	mov	dpl,r6
      002B4C 8C 83            [24] 1649 	mov	dph,r4
      002B4E C0 03            [24] 1650 	push	ar3
      002B50 C0 02            [24] 1651 	push	ar2
      002B52 12 5C 19         [24] 1652 	lcall	___sint2fs
      002B55 AC 82            [24] 1653 	mov	r4,dpl
      002B57 AD 83            [24] 1654 	mov	r5,dph
      002B59 AE F0            [24] 1655 	mov	r6,b
      002B5B FF               [12] 1656 	mov	r7,a
      002B5C C0 04            [24] 1657 	push	ar4
      002B5E C0 05            [24] 1658 	push	ar5
      002B60 C0 06            [24] 1659 	push	ar6
      002B62 C0 07            [24] 1660 	push	ar7
      002B64 E5 1F            [12] 1661 	mov	a,_bp
      002B66 24 08            [12] 1662 	add	a,#0x08
      002B68 F8               [12] 1663 	mov	r0,a
      002B69 86 82            [24] 1664 	mov	dpl,@r0
      002B6B 08               [12] 1665 	inc	r0
      002B6C 86 83            [24] 1666 	mov	dph,@r0
      002B6E 08               [12] 1667 	inc	r0
      002B6F 86 F0            [24] 1668 	mov	b,@r0
      002B71 08               [12] 1669 	inc	r0
      002B72 E6               [12] 1670 	mov	a,@r0
      002B73 12 57 A7         [24] 1671 	lcall	___fsadd
      002B76 AE 82            [24] 1672 	mov	r6,dpl
      002B78 AD 83            [24] 1673 	mov	r5,dph
      002B7A AC F0            [24] 1674 	mov	r4,b
      002B7C FF               [12] 1675 	mov	r7,a
      002B7D E5 81            [12] 1676 	mov	a,sp
      002B7F 24 FC            [12] 1677 	add	a,#0xfc
      002B81 F5 81            [12] 1678 	mov	sp,a
      002B83 D0 02            [24] 1679 	pop	ar2
      002B85 D0 03            [24] 1680 	pop	ar3
      002B87 E5 1F            [12] 1681 	mov	a,_bp
      002B89 24 0C            [12] 1682 	add	a,#0x0c
      002B8B F8               [12] 1683 	mov	r0,a
      002B8C A6 06            [24] 1684 	mov	@r0,ar6
      002B8E 08               [12] 1685 	inc	r0
      002B8F A6 05            [24] 1686 	mov	@r0,ar5
      002B91 08               [12] 1687 	inc	r0
      002B92 A6 04            [24] 1688 	mov	@r0,ar4
      002B94 08               [12] 1689 	inc	r0
      002B95 A6 07            [24] 1690 	mov	@r0,ar7
                                   1691 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:89: s++;
      002B97 E5 1F            [12] 1692 	mov	a,_bp
      002B99 24 05            [12] 1693 	add	a,#0x05
      002B9B F8               [12] 1694 	mov	r0,a
      002B9C 06               [12] 1695 	inc	@r0
      002B9D B6 00 02         [24] 1696 	cjne	@r0,#0x00,00174$
      002BA0 08               [12] 1697 	inc	r0
      002BA1 06               [12] 1698 	inc	@r0
      002BA2                       1699 00174$:
      002BA2 02 2A DE         [24] 1700 	ljmp	00107$
      002BA5                       1701 00109$:
                                   1702 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:92: if (*s == '.') {
      002BA5 E5 1F            [12] 1703 	mov	a,_bp
      002BA7 24 05            [12] 1704 	add	a,#0x05
      002BA9 F8               [12] 1705 	mov	r0,a
      002BAA 86 82            [24] 1706 	mov	dpl,@r0
      002BAC 08               [12] 1707 	inc	r0
      002BAD 86 83            [24] 1708 	mov	dph,@r0
      002BAF 08               [12] 1709 	inc	r0
      002BB0 86 F0            [24] 1710 	mov	b,@r0
      002BB2 12 5D 5A         [24] 1711 	lcall	__gptrget
      002BB5 FF               [12] 1712 	mov	r7,a
      002BB6 BF 2E 02         [24] 1713 	cjne	r7,#0x2e,00175$
      002BB9 80 03            [24] 1714 	sjmp	00176$
      002BBB                       1715 00175$:
      002BBB 02 2C D3         [24] 1716 	ljmp	00115$
      002BBE                       1717 00176$:
                                   1718 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:93: s++;
      002BBE E5 1F            [12] 1719 	mov	a,_bp
      002BC0 24 05            [12] 1720 	add	a,#0x05
      002BC2 F8               [12] 1721 	mov	r0,a
      002BC3 E5 1F            [12] 1722 	mov	a,_bp
      002BC5 24 08            [12] 1723 	add	a,#0x08
      002BC7 F9               [12] 1724 	mov	r1,a
      002BC8 74 01            [12] 1725 	mov	a,#0x01
      002BCA 26               [12] 1726 	add	a,@r0
      002BCB F7               [12] 1727 	mov	@r1,a
      002BCC E4               [12] 1728 	clr	a
      002BCD 08               [12] 1729 	inc	r0
      002BCE 36               [12] 1730 	addc	a,@r0
      002BCF 09               [12] 1731 	inc	r1
      002BD0 F7               [12] 1732 	mov	@r1,a
      002BD1 08               [12] 1733 	inc	r0
      002BD2 E6               [12] 1734 	mov	a,@r0
      002BD3 09               [12] 1735 	inc	r1
      002BD4 F7               [12] 1736 	mov	@r1,a
                                   1737 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:94: while (*s >= '0' && *s <= '9') {
      002BD5                       1738 00111$:
      002BD5 E5 1F            [12] 1739 	mov	a,_bp
      002BD7 24 08            [12] 1740 	add	a,#0x08
      002BD9 F8               [12] 1741 	mov	r0,a
      002BDA 86 82            [24] 1742 	mov	dpl,@r0
      002BDC 08               [12] 1743 	inc	r0
      002BDD 86 83            [24] 1744 	mov	dph,@r0
      002BDF 08               [12] 1745 	inc	r0
      002BE0 86 F0            [24] 1746 	mov	b,@r0
      002BE2 12 5D 5A         [24] 1747 	lcall	__gptrget
      002BE5 FC               [12] 1748 	mov	r4,a
      002BE6 BC 30 00         [24] 1749 	cjne	r4,#0x30,00177$
      002BE9                       1750 00177$:
      002BE9 50 03            [24] 1751 	jnc	00178$
      002BEB 02 2C D3         [24] 1752 	ljmp	00115$
      002BEE                       1753 00178$:
      002BEE EC               [12] 1754 	mov	a,r4
      002BEF 24 C6            [12] 1755 	add	a,#0xff - 0x39
      002BF1 50 03            [24] 1756 	jnc	00179$
      002BF3 02 2C D3         [24] 1757 	ljmp	00115$
      002BF6                       1758 00179$:
                                   1759 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:95: frac_part = frac_part * 10.0f + (float)(*s - '0');
      002BF6 C0 04            [24] 1760 	push	ar4
      002BF8 C0 03            [24] 1761 	push	ar3
      002BFA C0 02            [24] 1762 	push	ar2
      002BFC E5 1F            [12] 1763 	mov	a,_bp
      002BFE 24 10            [12] 1764 	add	a,#0x10
      002C00 F8               [12] 1765 	mov	r0,a
      002C01 E6               [12] 1766 	mov	a,@r0
      002C02 C0 E0            [24] 1767 	push	acc
      002C04 08               [12] 1768 	inc	r0
      002C05 E6               [12] 1769 	mov	a,@r0
      002C06 C0 E0            [24] 1770 	push	acc
      002C08 08               [12] 1771 	inc	r0
      002C09 E6               [12] 1772 	mov	a,@r0
      002C0A C0 E0            [24] 1773 	push	acc
      002C0C 08               [12] 1774 	inc	r0
      002C0D E6               [12] 1775 	mov	a,@r0
      002C0E C0 E0            [24] 1776 	push	acc
      002C10 90 00 00         [24] 1777 	mov	dptr,#0x0000
      002C13 75 F0 20         [24] 1778 	mov	b,#0x20
      002C16 74 41            [12] 1779 	mov	a,#0x41
      002C18 12 48 95         [24] 1780 	lcall	___fsmul
      002C1B A8 1F            [24] 1781 	mov	r0,_bp
      002C1D 08               [12] 1782 	inc	r0
      002C1E A6 82            [24] 1783 	mov	@r0,dpl
      002C20 08               [12] 1784 	inc	r0
      002C21 A6 83            [24] 1785 	mov	@r0,dph
      002C23 08               [12] 1786 	inc	r0
      002C24 A6 F0            [24] 1787 	mov	@r0,b
      002C26 08               [12] 1788 	inc	r0
      002C27 F6               [12] 1789 	mov	@r0,a
      002C28 E5 81            [12] 1790 	mov	a,sp
      002C2A 24 FC            [12] 1791 	add	a,#0xfc
      002C2C F5 81            [12] 1792 	mov	sp,a
      002C2E D0 02            [24] 1793 	pop	ar2
      002C30 D0 03            [24] 1794 	pop	ar3
      002C32 D0 04            [24] 1795 	pop	ar4
      002C34 7D 00            [12] 1796 	mov	r5,#0x00
      002C36 EC               [12] 1797 	mov	a,r4
      002C37 24 D0            [12] 1798 	add	a,#0xd0
      002C39 FC               [12] 1799 	mov	r4,a
      002C3A ED               [12] 1800 	mov	a,r5
      002C3B 34 FF            [12] 1801 	addc	a,#0xff
      002C3D FD               [12] 1802 	mov	r5,a
      002C3E 8C 82            [24] 1803 	mov	dpl,r4
      002C40 8D 83            [24] 1804 	mov	dph,r5
      002C42 C0 03            [24] 1805 	push	ar3
      002C44 C0 02            [24] 1806 	push	ar2
      002C46 12 5C 19         [24] 1807 	lcall	___sint2fs
      002C49 AC 82            [24] 1808 	mov	r4,dpl
      002C4B AD 83            [24] 1809 	mov	r5,dph
      002C4D AE F0            [24] 1810 	mov	r6,b
      002C4F FF               [12] 1811 	mov	r7,a
      002C50 C0 04            [24] 1812 	push	ar4
      002C52 C0 05            [24] 1813 	push	ar5
      002C54 C0 06            [24] 1814 	push	ar6
      002C56 C0 07            [24] 1815 	push	ar7
      002C58 A8 1F            [24] 1816 	mov	r0,_bp
      002C5A 08               [12] 1817 	inc	r0
      002C5B 86 82            [24] 1818 	mov	dpl,@r0
      002C5D 08               [12] 1819 	inc	r0
      002C5E 86 83            [24] 1820 	mov	dph,@r0
      002C60 08               [12] 1821 	inc	r0
      002C61 86 F0            [24] 1822 	mov	b,@r0
      002C63 08               [12] 1823 	inc	r0
      002C64 E6               [12] 1824 	mov	a,@r0
      002C65 12 57 A7         [24] 1825 	lcall	___fsadd
      002C68 AC 82            [24] 1826 	mov	r4,dpl
      002C6A AD 83            [24] 1827 	mov	r5,dph
      002C6C AE F0            [24] 1828 	mov	r6,b
      002C6E FF               [12] 1829 	mov	r7,a
      002C6F E5 81            [12] 1830 	mov	a,sp
      002C71 24 FC            [12] 1831 	add	a,#0xfc
      002C73 F5 81            [12] 1832 	mov	sp,a
      002C75 E5 1F            [12] 1833 	mov	a,_bp
      002C77 24 10            [12] 1834 	add	a,#0x10
      002C79 F8               [12] 1835 	mov	r0,a
      002C7A A6 04            [24] 1836 	mov	@r0,ar4
      002C7C 08               [12] 1837 	inc	r0
      002C7D A6 05            [24] 1838 	mov	@r0,ar5
      002C7F 08               [12] 1839 	inc	r0
      002C80 A6 06            [24] 1840 	mov	@r0,ar6
      002C82 08               [12] 1841 	inc	r0
      002C83 A6 07            [24] 1842 	mov	@r0,ar7
                                   1843 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:96: frac_scale *= 10.0f;
      002C85 E5 1F            [12] 1844 	mov	a,_bp
      002C87 24 14            [12] 1845 	add	a,#0x14
      002C89 F8               [12] 1846 	mov	r0,a
      002C8A E6               [12] 1847 	mov	a,@r0
      002C8B C0 E0            [24] 1848 	push	acc
      002C8D 08               [12] 1849 	inc	r0
      002C8E E6               [12] 1850 	mov	a,@r0
      002C8F C0 E0            [24] 1851 	push	acc
      002C91 08               [12] 1852 	inc	r0
      002C92 E6               [12] 1853 	mov	a,@r0
      002C93 C0 E0            [24] 1854 	push	acc
      002C95 08               [12] 1855 	inc	r0
      002C96 E6               [12] 1856 	mov	a,@r0
      002C97 C0 E0            [24] 1857 	push	acc
      002C99 90 00 00         [24] 1858 	mov	dptr,#0x0000
      002C9C 75 F0 20         [24] 1859 	mov	b,#0x20
      002C9F 74 41            [12] 1860 	mov	a,#0x41
      002CA1 12 48 95         [24] 1861 	lcall	___fsmul
      002CA4 AC 82            [24] 1862 	mov	r4,dpl
      002CA6 AD 83            [24] 1863 	mov	r5,dph
      002CA8 AE F0            [24] 1864 	mov	r6,b
      002CAA FF               [12] 1865 	mov	r7,a
      002CAB E5 81            [12] 1866 	mov	a,sp
      002CAD 24 FC            [12] 1867 	add	a,#0xfc
      002CAF F5 81            [12] 1868 	mov	sp,a
      002CB1 D0 02            [24] 1869 	pop	ar2
      002CB3 D0 03            [24] 1870 	pop	ar3
      002CB5 E5 1F            [12] 1871 	mov	a,_bp
      002CB7 24 14            [12] 1872 	add	a,#0x14
      002CB9 F8               [12] 1873 	mov	r0,a
      002CBA A6 04            [24] 1874 	mov	@r0,ar4
      002CBC 08               [12] 1875 	inc	r0
      002CBD A6 05            [24] 1876 	mov	@r0,ar5
      002CBF 08               [12] 1877 	inc	r0
      002CC0 A6 06            [24] 1878 	mov	@r0,ar6
      002CC2 08               [12] 1879 	inc	r0
      002CC3 A6 07            [24] 1880 	mov	@r0,ar7
                                   1881 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:97: s++;
      002CC5 E5 1F            [12] 1882 	mov	a,_bp
      002CC7 24 08            [12] 1883 	add	a,#0x08
      002CC9 F8               [12] 1884 	mov	r0,a
      002CCA 06               [12] 1885 	inc	@r0
      002CCB B6 00 02         [24] 1886 	cjne	@r0,#0x00,00180$
      002CCE 08               [12] 1887 	inc	r0
      002CCF 06               [12] 1888 	inc	@r0
      002CD0                       1889 00180$:
      002CD0 02 2B D5         [24] 1890 	ljmp	00111$
      002CD3                       1891 00115$:
                                   1892 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:101: return (float)sign * (int_part + frac_part / frac_scale);
      002CD3 8B 82            [24] 1893 	mov	dpl,r3
      002CD5 8A 83            [24] 1894 	mov	dph,r2
      002CD7 12 5C 19         [24] 1895 	lcall	___sint2fs
      002CDA A8 1F            [24] 1896 	mov	r0,_bp
      002CDC 08               [12] 1897 	inc	r0
      002CDD A6 82            [24] 1898 	mov	@r0,dpl
      002CDF 08               [12] 1899 	inc	r0
      002CE0 A6 83            [24] 1900 	mov	@r0,dph
      002CE2 08               [12] 1901 	inc	r0
      002CE3 A6 F0            [24] 1902 	mov	@r0,b
      002CE5 08               [12] 1903 	inc	r0
      002CE6 F6               [12] 1904 	mov	@r0,a
      002CE7 E5 1F            [12] 1905 	mov	a,_bp
      002CE9 24 14            [12] 1906 	add	a,#0x14
      002CEB F8               [12] 1907 	mov	r0,a
      002CEC E6               [12] 1908 	mov	a,@r0
      002CED C0 E0            [24] 1909 	push	acc
      002CEF 08               [12] 1910 	inc	r0
      002CF0 E6               [12] 1911 	mov	a,@r0
      002CF1 C0 E0            [24] 1912 	push	acc
      002CF3 08               [12] 1913 	inc	r0
      002CF4 E6               [12] 1914 	mov	a,@r0
      002CF5 C0 E0            [24] 1915 	push	acc
      002CF7 08               [12] 1916 	inc	r0
      002CF8 E6               [12] 1917 	mov	a,@r0
      002CF9 C0 E0            [24] 1918 	push	acc
      002CFB E5 1F            [12] 1919 	mov	a,_bp
      002CFD 24 10            [12] 1920 	add	a,#0x10
      002CFF F8               [12] 1921 	mov	r0,a
      002D00 86 82            [24] 1922 	mov	dpl,@r0
      002D02 08               [12] 1923 	inc	r0
      002D03 86 83            [24] 1924 	mov	dph,@r0
      002D05 08               [12] 1925 	inc	r0
      002D06 86 F0            [24] 1926 	mov	b,@r0
      002D08 08               [12] 1927 	inc	r0
      002D09 E6               [12] 1928 	mov	a,@r0
      002D0A 12 5C 8F         [24] 1929 	lcall	___fsdiv
      002D0D AA 82            [24] 1930 	mov	r2,dpl
      002D0F AB 83            [24] 1931 	mov	r3,dph
      002D11 AE F0            [24] 1932 	mov	r6,b
      002D13 FF               [12] 1933 	mov	r7,a
      002D14 E5 81            [12] 1934 	mov	a,sp
      002D16 24 FC            [12] 1935 	add	a,#0xfc
      002D18 F5 81            [12] 1936 	mov	sp,a
      002D1A C0 02            [24] 1937 	push	ar2
      002D1C C0 03            [24] 1938 	push	ar3
      002D1E C0 06            [24] 1939 	push	ar6
      002D20 C0 07            [24] 1940 	push	ar7
      002D22 E5 1F            [12] 1941 	mov	a,_bp
      002D24 24 0C            [12] 1942 	add	a,#0x0c
      002D26 F8               [12] 1943 	mov	r0,a
      002D27 86 82            [24] 1944 	mov	dpl,@r0
      002D29 08               [12] 1945 	inc	r0
      002D2A 86 83            [24] 1946 	mov	dph,@r0
      002D2C 08               [12] 1947 	inc	r0
      002D2D 86 F0            [24] 1948 	mov	b,@r0
      002D2F 08               [12] 1949 	inc	r0
      002D30 E6               [12] 1950 	mov	a,@r0
      002D31 12 57 A7         [24] 1951 	lcall	___fsadd
      002D34 AC 82            [24] 1952 	mov	r4,dpl
      002D36 AD 83            [24] 1953 	mov	r5,dph
      002D38 AE F0            [24] 1954 	mov	r6,b
      002D3A FF               [12] 1955 	mov	r7,a
      002D3B E5 81            [12] 1956 	mov	a,sp
      002D3D 24 FC            [12] 1957 	add	a,#0xfc
      002D3F F5 81            [12] 1958 	mov	sp,a
      002D41 C0 04            [24] 1959 	push	ar4
      002D43 C0 05            [24] 1960 	push	ar5
      002D45 C0 06            [24] 1961 	push	ar6
      002D47 C0 07            [24] 1962 	push	ar7
      002D49 A8 1F            [24] 1963 	mov	r0,_bp
      002D4B 08               [12] 1964 	inc	r0
      002D4C 86 82            [24] 1965 	mov	dpl,@r0
      002D4E 08               [12] 1966 	inc	r0
      002D4F 86 83            [24] 1967 	mov	dph,@r0
      002D51 08               [12] 1968 	inc	r0
      002D52 86 F0            [24] 1969 	mov	b,@r0
      002D54 08               [12] 1970 	inc	r0
      002D55 E6               [12] 1971 	mov	a,@r0
      002D56 12 48 95         [24] 1972 	lcall	___fsmul
      002D59 AC 82            [24] 1973 	mov	r4,dpl
      002D5B AD 83            [24] 1974 	mov	r5,dph
      002D5D AE F0            [24] 1975 	mov	r6,b
      002D5F FF               [12] 1976 	mov	r7,a
      002D60 E5 81            [12] 1977 	mov	a,sp
      002D62 24 FC            [12] 1978 	add	a,#0xfc
      002D64 F5 81            [12] 1979 	mov	sp,a
      002D66 8C 82            [24] 1980 	mov	dpl,r4
      002D68 8D 83            [24] 1981 	mov	dph,r5
      002D6A 8E F0            [24] 1982 	mov	b,r6
      002D6C EF               [12] 1983 	mov	a,r7
                                   1984 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:102: }
      002D6D 85 1F 81         [24] 1985 	mov	sp,_bp
      002D70 D0 1F            [24] 1986 	pop	_bp
      002D72 22               [24] 1987 	ret
                                   1988 ;------------------------------------------------------------
                                   1989 ;Allocation info for local variables in function 'usb_set_connected'
                                   1990 ;------------------------------------------------------------
                                   1991 ;uc                        Allocated with name '_usb_set_connected_uc_65536_216'
                                   1992 ;------------------------------------------------------------
                                   1993 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:104: static void usb_set_connected(USBController* uc) {
                                   1994 ;	-----------------------------------------
                                   1995 ;	 function usb_set_connected
                                   1996 ;	-----------------------------------------
      002D73                       1997 _usb_set_connected:
      002D73 AF F0            [24] 1998 	mov	r7,b
      002D75 AE 83            [24] 1999 	mov	r6,dph
      002D77 E5 82            [12] 2000 	mov	a,dpl
      002D79 90 02 01         [24] 2001 	mov	dptr,#_usb_set_connected_uc_65536_216
      002D7C F0               [24] 2002 	movx	@dptr,a
      002D7D EE               [12] 2003 	mov	a,r6
      002D7E A3               [24] 2004 	inc	dptr
      002D7F F0               [24] 2005 	movx	@dptr,a
      002D80 EF               [12] 2006 	mov	a,r7
      002D81 A3               [24] 2007 	inc	dptr
      002D82 F0               [24] 2008 	movx	@dptr,a
                                   2009 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:105: uc->is_connected = true;
      002D83 90 02 01         [24] 2010 	mov	dptr,#_usb_set_connected_uc_65536_216
      002D86 E0               [24] 2011 	movx	a,@dptr
      002D87 FD               [12] 2012 	mov	r5,a
      002D88 A3               [24] 2013 	inc	dptr
      002D89 E0               [24] 2014 	movx	a,@dptr
      002D8A FE               [12] 2015 	mov	r6,a
      002D8B A3               [24] 2016 	inc	dptr
      002D8C E0               [24] 2017 	movx	a,@dptr
      002D8D FF               [12] 2018 	mov	r7,a
      002D8E 8D 82            [24] 2019 	mov	dpl,r5
      002D90 8E 83            [24] 2020 	mov	dph,r6
      002D92 8F F0            [24] 2021 	mov	b,r7
      002D94 74 01            [12] 2022 	mov	a,#0x01
      002D96 12 56 BA         [24] 2023 	lcall	__gptrput
                                   2024 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:106: uc->pairing_state = PAIRING_DONE;
      002D99 2D               [12] 2025 	add	a,r5
      002D9A FA               [12] 2026 	mov	r2,a
      002D9B E4               [12] 2027 	clr	a
      002D9C 3E               [12] 2028 	addc	a,r6
      002D9D FB               [12] 2029 	mov	r3,a
      002D9E 8F 04            [24] 2030 	mov	ar4,r7
      002DA0 8A 82            [24] 2031 	mov	dpl,r2
      002DA2 8B 83            [24] 2032 	mov	dph,r3
      002DA4 8C F0            [24] 2033 	mov	b,r4
      002DA6 74 02            [12] 2034 	mov	a,#0x02
      002DA8 12 56 BA         [24] 2035 	lcall	__gptrput
                                   2036 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:107: uc->last_heartbeat = millis();
      002DAB 2D               [12] 2037 	add	a,r5
      002DAC FD               [12] 2038 	mov	r5,a
      002DAD E4               [12] 2039 	clr	a
      002DAE 3E               [12] 2040 	addc	a,r6
      002DAF FE               [12] 2041 	mov	r6,a
      002DB0 C0 07            [24] 2042 	push	ar7
      002DB2 C0 06            [24] 2043 	push	ar6
      002DB4 C0 05            [24] 2044 	push	ar5
      002DB6 12 4F 82         [24] 2045 	lcall	_millis
      002DB9 A9 82            [24] 2046 	mov	r1,dpl
      002DBB AA 83            [24] 2047 	mov	r2,dph
      002DBD AB F0            [24] 2048 	mov	r3,b
      002DBF FC               [12] 2049 	mov	r4,a
      002DC0 D0 05            [24] 2050 	pop	ar5
      002DC2 D0 06            [24] 2051 	pop	ar6
      002DC4 D0 07            [24] 2052 	pop	ar7
      002DC6 8D 82            [24] 2053 	mov	dpl,r5
      002DC8 8E 83            [24] 2054 	mov	dph,r6
      002DCA 8F F0            [24] 2055 	mov	b,r7
      002DCC E9               [12] 2056 	mov	a,r1
      002DCD 12 56 BA         [24] 2057 	lcall	__gptrput
      002DD0 A3               [24] 2058 	inc	dptr
      002DD1 EA               [12] 2059 	mov	a,r2
      002DD2 12 56 BA         [24] 2060 	lcall	__gptrput
      002DD5 A3               [24] 2061 	inc	dptr
      002DD6 EB               [12] 2062 	mov	a,r3
      002DD7 12 56 BA         [24] 2063 	lcall	__gptrput
      002DDA A3               [24] 2064 	inc	dptr
      002DDB EC               [12] 2065 	mov	a,r4
                                   2066 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:108: }
      002DDC 02 56 BA         [24] 2067 	ljmp	__gptrput
                                   2068 ;------------------------------------------------------------
                                   2069 ;Allocation info for local variables in function 'usb_reply_ok_key_value'
                                   2070 ;------------------------------------------------------------
                                   2071 ;value                     Allocated with name '_usb_reply_ok_key_value_PARM_2'
                                   2072 ;key                       Allocated with name '_usb_reply_ok_key_value_key_65536_218'
                                   2073 ;------------------------------------------------------------
                                   2074 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:110: static void usb_reply_ok_key_value(const char* key, const char* value) {
                                   2075 ;	-----------------------------------------
                                   2076 ;	 function usb_reply_ok_key_value
                                   2077 ;	-----------------------------------------
      002DDF                       2078 _usb_reply_ok_key_value:
      002DDF AF F0            [24] 2079 	mov	r7,b
      002DE1 AE 83            [24] 2080 	mov	r6,dph
      002DE3 E5 82            [12] 2081 	mov	a,dpl
      002DE5 90 02 07         [24] 2082 	mov	dptr,#_usb_reply_ok_key_value_key_65536_218
      002DE8 F0               [24] 2083 	movx	@dptr,a
      002DE9 EE               [12] 2084 	mov	a,r6
      002DEA A3               [24] 2085 	inc	dptr
      002DEB F0               [24] 2086 	movx	@dptr,a
      002DEC EF               [12] 2087 	mov	a,r7
      002DED A3               [24] 2088 	inc	dptr
      002DEE F0               [24] 2089 	movx	@dptr,a
                                   2090 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:111: serial_print_str("OK:");
      002DEF 90 64 A9         [24] 2091 	mov	dptr,#___str_0
      002DF2 75 F0 80         [24] 2092 	mov	b,#0x80
      002DF5 12 19 E7         [24] 2093 	lcall	_serial_print_str
                                   2094 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:112: serial_print_str(key);
      002DF8 90 02 07         [24] 2095 	mov	dptr,#_usb_reply_ok_key_value_key_65536_218
      002DFB E0               [24] 2096 	movx	a,@dptr
      002DFC FD               [12] 2097 	mov	r5,a
      002DFD A3               [24] 2098 	inc	dptr
      002DFE E0               [24] 2099 	movx	a,@dptr
      002DFF FE               [12] 2100 	mov	r6,a
      002E00 A3               [24] 2101 	inc	dptr
      002E01 E0               [24] 2102 	movx	a,@dptr
      002E02 FF               [12] 2103 	mov	r7,a
      002E03 8D 82            [24] 2104 	mov	dpl,r5
      002E05 8E 83            [24] 2105 	mov	dph,r6
      002E07 8F F0            [24] 2106 	mov	b,r7
      002E09 12 19 E7         [24] 2107 	lcall	_serial_print_str
                                   2108 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:113: if (value) {
      002E0C 90 02 04         [24] 2109 	mov	dptr,#_usb_reply_ok_key_value_PARM_2
      002E0F E0               [24] 2110 	movx	a,@dptr
      002E10 FD               [12] 2111 	mov	r5,a
      002E11 A3               [24] 2112 	inc	dptr
      002E12 E0               [24] 2113 	movx	a,@dptr
      002E13 FE               [12] 2114 	mov	r6,a
      002E14 A3               [24] 2115 	inc	dptr
      002E15 E0               [24] 2116 	movx	a,@dptr
      002E16 FF               [12] 2117 	mov	r7,a
      002E17 90 02 04         [24] 2118 	mov	dptr,#_usb_reply_ok_key_value_PARM_2
      002E1A E0               [24] 2119 	movx	a,@dptr
      002E1B F5 F0            [12] 2120 	mov	b,a
      002E1D A3               [24] 2121 	inc	dptr
      002E1E E0               [24] 2122 	movx	a,@dptr
      002E1F 45 F0            [12] 2123 	orl	a,b
      002E21 60 1E            [24] 2124 	jz	00102$
                                   2125 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:114: serial_print_str("=");
      002E23 90 64 AD         [24] 2126 	mov	dptr,#___str_1
      002E26 75 F0 80         [24] 2127 	mov	b,#0x80
      002E29 C0 07            [24] 2128 	push	ar7
      002E2B C0 06            [24] 2129 	push	ar6
      002E2D C0 05            [24] 2130 	push	ar5
      002E2F 12 19 E7         [24] 2131 	lcall	_serial_print_str
      002E32 D0 05            [24] 2132 	pop	ar5
      002E34 D0 06            [24] 2133 	pop	ar6
      002E36 D0 07            [24] 2134 	pop	ar7
                                   2135 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:115: serial_print_str(value);
      002E38 8D 82            [24] 2136 	mov	dpl,r5
      002E3A 8E 83            [24] 2137 	mov	dph,r6
      002E3C 8F F0            [24] 2138 	mov	b,r7
      002E3E 12 19 E7         [24] 2139 	lcall	_serial_print_str
      002E41                       2140 00102$:
                                   2141 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:117: serial_println();
                                   2142 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:118: }
      002E41 02 1E 5E         [24] 2143 	ljmp	_serial_println
                                   2144 ;------------------------------------------------------------
                                   2145 ;Allocation info for local variables in function 'usb_reply_ok_key_uint'
                                   2146 ;------------------------------------------------------------
                                   2147 ;value                     Allocated with name '_usb_reply_ok_key_uint_PARM_2'
                                   2148 ;key                       Allocated with name '_usb_reply_ok_key_uint_key_65536_221'
                                   2149 ;------------------------------------------------------------
                                   2150 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:120: static void usb_reply_ok_key_uint(const char* key, uint32_t value) {
                                   2151 ;	-----------------------------------------
                                   2152 ;	 function usb_reply_ok_key_uint
                                   2153 ;	-----------------------------------------
      002E44                       2154 _usb_reply_ok_key_uint:
      002E44 AF F0            [24] 2155 	mov	r7,b
      002E46 AE 83            [24] 2156 	mov	r6,dph
      002E48 E5 82            [12] 2157 	mov	a,dpl
      002E4A 90 02 0E         [24] 2158 	mov	dptr,#_usb_reply_ok_key_uint_key_65536_221
      002E4D F0               [24] 2159 	movx	@dptr,a
      002E4E EE               [12] 2160 	mov	a,r6
      002E4F A3               [24] 2161 	inc	dptr
      002E50 F0               [24] 2162 	movx	@dptr,a
      002E51 EF               [12] 2163 	mov	a,r7
      002E52 A3               [24] 2164 	inc	dptr
      002E53 F0               [24] 2165 	movx	@dptr,a
                                   2166 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:121: serial_print_str("OK:");
      002E54 90 64 A9         [24] 2167 	mov	dptr,#___str_0
      002E57 75 F0 80         [24] 2168 	mov	b,#0x80
      002E5A 12 19 E7         [24] 2169 	lcall	_serial_print_str
                                   2170 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:122: serial_print_str(key);
      002E5D 90 02 0E         [24] 2171 	mov	dptr,#_usb_reply_ok_key_uint_key_65536_221
      002E60 E0               [24] 2172 	movx	a,@dptr
      002E61 FD               [12] 2173 	mov	r5,a
      002E62 A3               [24] 2174 	inc	dptr
      002E63 E0               [24] 2175 	movx	a,@dptr
      002E64 FE               [12] 2176 	mov	r6,a
      002E65 A3               [24] 2177 	inc	dptr
      002E66 E0               [24] 2178 	movx	a,@dptr
      002E67 FF               [12] 2179 	mov	r7,a
      002E68 8D 82            [24] 2180 	mov	dpl,r5
      002E6A 8E 83            [24] 2181 	mov	dph,r6
      002E6C 8F F0            [24] 2182 	mov	b,r7
      002E6E 12 19 E7         [24] 2183 	lcall	_serial_print_str
                                   2184 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:123: serial_print_str("=");
      002E71 90 64 AD         [24] 2185 	mov	dptr,#___str_1
      002E74 75 F0 80         [24] 2186 	mov	b,#0x80
      002E77 12 19 E7         [24] 2187 	lcall	_serial_print_str
                                   2188 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:124: serial_println_uint(value);
      002E7A 90 02 0A         [24] 2189 	mov	dptr,#_usb_reply_ok_key_uint_PARM_2
      002E7D E0               [24] 2190 	movx	a,@dptr
      002E7E FC               [12] 2191 	mov	r4,a
      002E7F A3               [24] 2192 	inc	dptr
      002E80 E0               [24] 2193 	movx	a,@dptr
      002E81 FD               [12] 2194 	mov	r5,a
      002E82 A3               [24] 2195 	inc	dptr
      002E83 E0               [24] 2196 	movx	a,@dptr
      002E84 FE               [12] 2197 	mov	r6,a
      002E85 A3               [24] 2198 	inc	dptr
      002E86 E0               [24] 2199 	movx	a,@dptr
      002E87 8C 82            [24] 2200 	mov	dpl,r4
      002E89 8D 83            [24] 2201 	mov	dph,r5
      002E8B 8E F0            [24] 2202 	mov	b,r6
                                   2203 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:125: }
      002E8D 02 1E AE         [24] 2204 	ljmp	_serial_println_uint
                                   2205 ;------------------------------------------------------------
                                   2206 ;Allocation info for local variables in function 'usb_reply_ok_key_float1'
                                   2207 ;------------------------------------------------------------
                                   2208 ;value                     Allocated with name '_usb_reply_ok_key_float1_PARM_2'
                                   2209 ;key                       Allocated with name '_usb_reply_ok_key_float1_key_65536_223'
                                   2210 ;------------------------------------------------------------
                                   2211 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:127: static void usb_reply_ok_key_float1(const char* key, float value) {
                                   2212 ;	-----------------------------------------
                                   2213 ;	 function usb_reply_ok_key_float1
                                   2214 ;	-----------------------------------------
      002E90                       2215 _usb_reply_ok_key_float1:
      002E90 AF F0            [24] 2216 	mov	r7,b
      002E92 AE 83            [24] 2217 	mov	r6,dph
      002E94 E5 82            [12] 2218 	mov	a,dpl
      002E96 90 02 15         [24] 2219 	mov	dptr,#_usb_reply_ok_key_float1_key_65536_223
      002E99 F0               [24] 2220 	movx	@dptr,a
      002E9A EE               [12] 2221 	mov	a,r6
      002E9B A3               [24] 2222 	inc	dptr
      002E9C F0               [24] 2223 	movx	@dptr,a
      002E9D EF               [12] 2224 	mov	a,r7
      002E9E A3               [24] 2225 	inc	dptr
      002E9F F0               [24] 2226 	movx	@dptr,a
                                   2227 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:128: serial_print_str("OK:");
      002EA0 90 64 A9         [24] 2228 	mov	dptr,#___str_0
      002EA3 75 F0 80         [24] 2229 	mov	b,#0x80
      002EA6 12 19 E7         [24] 2230 	lcall	_serial_print_str
                                   2231 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:129: serial_print_str(key);
      002EA9 90 02 15         [24] 2232 	mov	dptr,#_usb_reply_ok_key_float1_key_65536_223
      002EAC E0               [24] 2233 	movx	a,@dptr
      002EAD FD               [12] 2234 	mov	r5,a
      002EAE A3               [24] 2235 	inc	dptr
      002EAF E0               [24] 2236 	movx	a,@dptr
      002EB0 FE               [12] 2237 	mov	r6,a
      002EB1 A3               [24] 2238 	inc	dptr
      002EB2 E0               [24] 2239 	movx	a,@dptr
      002EB3 FF               [12] 2240 	mov	r7,a
      002EB4 8D 82            [24] 2241 	mov	dpl,r5
      002EB6 8E 83            [24] 2242 	mov	dph,r6
      002EB8 8F F0            [24] 2243 	mov	b,r7
      002EBA 12 19 E7         [24] 2244 	lcall	_serial_print_str
                                   2245 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:130: serial_print_str("=");
      002EBD 90 64 AD         [24] 2246 	mov	dptr,#___str_1
      002EC0 75 F0 80         [24] 2247 	mov	b,#0x80
      002EC3 12 19 E7         [24] 2248 	lcall	_serial_print_str
                                   2249 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:131: serial_println_float(value, 1);
      002EC6 90 02 11         [24] 2250 	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
      002EC9 E0               [24] 2251 	movx	a,@dptr
      002ECA FC               [12] 2252 	mov	r4,a
      002ECB A3               [24] 2253 	inc	dptr
      002ECC E0               [24] 2254 	movx	a,@dptr
      002ECD FD               [12] 2255 	mov	r5,a
      002ECE A3               [24] 2256 	inc	dptr
      002ECF E0               [24] 2257 	movx	a,@dptr
      002ED0 FE               [12] 2258 	mov	r6,a
      002ED1 A3               [24] 2259 	inc	dptr
      002ED2 E0               [24] 2260 	movx	a,@dptr
      002ED3 FF               [12] 2261 	mov	r7,a
      002ED4 90 01 CB         [24] 2262 	mov	dptr,#_serial_println_float_PARM_2
      002ED7 74 01            [12] 2263 	mov	a,#0x01
      002ED9 F0               [24] 2264 	movx	@dptr,a
      002EDA E4               [12] 2265 	clr	a
      002EDB A3               [24] 2266 	inc	dptr
      002EDC F0               [24] 2267 	movx	@dptr,a
      002EDD 8C 82            [24] 2268 	mov	dpl,r4
      002EDF 8D 83            [24] 2269 	mov	dph,r5
      002EE1 8E F0            [24] 2270 	mov	b,r6
      002EE3 EF               [12] 2271 	mov	a,r7
                                   2272 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:132: }
      002EE4 02 1E DC         [24] 2273 	ljmp	_serial_println_float
                                   2274 ;------------------------------------------------------------
                                   2275 ;Allocation info for local variables in function 'usb_reply_ok_key_float2'
                                   2276 ;------------------------------------------------------------
                                   2277 ;value                     Allocated with name '_usb_reply_ok_key_float2_PARM_2'
                                   2278 ;key                       Allocated with name '_usb_reply_ok_key_float2_key_65536_225'
                                   2279 ;------------------------------------------------------------
                                   2280 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:134: static void usb_reply_ok_key_float2(const char* key, float value) {
                                   2281 ;	-----------------------------------------
                                   2282 ;	 function usb_reply_ok_key_float2
                                   2283 ;	-----------------------------------------
      002EE7                       2284 _usb_reply_ok_key_float2:
      002EE7 AF F0            [24] 2285 	mov	r7,b
      002EE9 AE 83            [24] 2286 	mov	r6,dph
      002EEB E5 82            [12] 2287 	mov	a,dpl
      002EED 90 02 1C         [24] 2288 	mov	dptr,#_usb_reply_ok_key_float2_key_65536_225
      002EF0 F0               [24] 2289 	movx	@dptr,a
      002EF1 EE               [12] 2290 	mov	a,r6
      002EF2 A3               [24] 2291 	inc	dptr
      002EF3 F0               [24] 2292 	movx	@dptr,a
      002EF4 EF               [12] 2293 	mov	a,r7
      002EF5 A3               [24] 2294 	inc	dptr
      002EF6 F0               [24] 2295 	movx	@dptr,a
                                   2296 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:135: serial_print_str("OK:");
      002EF7 90 64 A9         [24] 2297 	mov	dptr,#___str_0
      002EFA 75 F0 80         [24] 2298 	mov	b,#0x80
      002EFD 12 19 E7         [24] 2299 	lcall	_serial_print_str
                                   2300 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:136: serial_print_str(key);
      002F00 90 02 1C         [24] 2301 	mov	dptr,#_usb_reply_ok_key_float2_key_65536_225
      002F03 E0               [24] 2302 	movx	a,@dptr
      002F04 FD               [12] 2303 	mov	r5,a
      002F05 A3               [24] 2304 	inc	dptr
      002F06 E0               [24] 2305 	movx	a,@dptr
      002F07 FE               [12] 2306 	mov	r6,a
      002F08 A3               [24] 2307 	inc	dptr
      002F09 E0               [24] 2308 	movx	a,@dptr
      002F0A FF               [12] 2309 	mov	r7,a
      002F0B 8D 82            [24] 2310 	mov	dpl,r5
      002F0D 8E 83            [24] 2311 	mov	dph,r6
      002F0F 8F F0            [24] 2312 	mov	b,r7
      002F11 12 19 E7         [24] 2313 	lcall	_serial_print_str
                                   2314 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:137: serial_print_str("=");
      002F14 90 64 AD         [24] 2315 	mov	dptr,#___str_1
      002F17 75 F0 80         [24] 2316 	mov	b,#0x80
      002F1A 12 19 E7         [24] 2317 	lcall	_serial_print_str
                                   2318 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:138: serial_println_float(value, 2);
      002F1D 90 02 18         [24] 2319 	mov	dptr,#_usb_reply_ok_key_float2_PARM_2
      002F20 E0               [24] 2320 	movx	a,@dptr
      002F21 FC               [12] 2321 	mov	r4,a
      002F22 A3               [24] 2322 	inc	dptr
      002F23 E0               [24] 2323 	movx	a,@dptr
      002F24 FD               [12] 2324 	mov	r5,a
      002F25 A3               [24] 2325 	inc	dptr
      002F26 E0               [24] 2326 	movx	a,@dptr
      002F27 FE               [12] 2327 	mov	r6,a
      002F28 A3               [24] 2328 	inc	dptr
      002F29 E0               [24] 2329 	movx	a,@dptr
      002F2A FF               [12] 2330 	mov	r7,a
      002F2B 90 01 CB         [24] 2331 	mov	dptr,#_serial_println_float_PARM_2
      002F2E 74 02            [12] 2332 	mov	a,#0x02
      002F30 F0               [24] 2333 	movx	@dptr,a
      002F31 E4               [12] 2334 	clr	a
      002F32 A3               [24] 2335 	inc	dptr
      002F33 F0               [24] 2336 	movx	@dptr,a
      002F34 8C 82            [24] 2337 	mov	dpl,r4
      002F36 8D 83            [24] 2338 	mov	dph,r5
      002F38 8E F0            [24] 2339 	mov	b,r6
      002F3A EF               [12] 2340 	mov	a,r7
                                   2341 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:139: }
      002F3B 02 1E DC         [24] 2342 	ljmp	_serial_println_float
                                   2343 ;------------------------------------------------------------
                                   2344 ;Allocation info for local variables in function 'usb_key_equals'
                                   2345 ;------------------------------------------------------------
                                   2346 ;key_len                   Allocated to stack - _bp -3
                                   2347 ;literal                   Allocated to stack - _bp -6
                                   2348 ;key                       Allocated to stack - _bp +1
                                   2349 ;i                         Allocated to registers r4 
                                   2350 ;sloc0                     Allocated to stack - _bp +5
                                   2351 ;------------------------------------------------------------
                                   2352 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:141: static bool usb_key_equals(const char* key, uint8_t key_len, const char* literal) SDCC_REENTRANT {
                                   2353 ;	-----------------------------------------
                                   2354 ;	 function usb_key_equals
                                   2355 ;	-----------------------------------------
      002F3E                       2356 _usb_key_equals:
      002F3E C0 1F            [24] 2357 	push	_bp
      002F40 85 81 1F         [24] 2358 	mov	_bp,sp
      002F43 C0 82            [24] 2359 	push	dpl
      002F45 C0 83            [24] 2360 	push	dph
      002F47 C0 F0            [24] 2361 	push	b
                                   2362 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:143: for (i = 0; i < key_len; i++) {
      002F49 7C 00            [12] 2363 	mov	r4,#0x00
      002F4B                       2364 00106$:
      002F4B E5 1F            [12] 2365 	mov	a,_bp
      002F4D 24 FD            [12] 2366 	add	a,#0xfd
      002F4F F8               [12] 2367 	mov	r0,a
      002F50 C3               [12] 2368 	clr	c
      002F51 EC               [12] 2369 	mov	a,r4
      002F52 96               [12] 2370 	subb	a,@r0
      002F53 50 3F            [24] 2371 	jnc	00104$
                                   2372 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:144: if (literal[i] == '\0' || key[i] != literal[i]) {
      002F55 E5 1F            [12] 2373 	mov	a,_bp
      002F57 24 FA            [12] 2374 	add	a,#0xfa
      002F59 F8               [12] 2375 	mov	r0,a
      002F5A EC               [12] 2376 	mov	a,r4
      002F5B 26               [12] 2377 	add	a,@r0
      002F5C FA               [12] 2378 	mov	r2,a
      002F5D E4               [12] 2379 	clr	a
      002F5E 08               [12] 2380 	inc	r0
      002F5F 36               [12] 2381 	addc	a,@r0
      002F60 FB               [12] 2382 	mov	r3,a
      002F61 08               [12] 2383 	inc	r0
      002F62 86 07            [24] 2384 	mov	ar7,@r0
      002F64 8A 82            [24] 2385 	mov	dpl,r2
      002F66 8B 83            [24] 2386 	mov	dph,r3
      002F68 8F F0            [24] 2387 	mov	b,r7
      002F6A 12 5D 5A         [24] 2388 	lcall	__gptrget
      002F6D FE               [12] 2389 	mov	r6,a
      002F6E 60 1C            [24] 2390 	jz	00101$
      002F70 A8 1F            [24] 2391 	mov	r0,_bp
      002F72 08               [12] 2392 	inc	r0
      002F73 EC               [12] 2393 	mov	a,r4
      002F74 26               [12] 2394 	add	a,@r0
      002F75 FA               [12] 2395 	mov	r2,a
      002F76 E4               [12] 2396 	clr	a
      002F77 08               [12] 2397 	inc	r0
      002F78 36               [12] 2398 	addc	a,@r0
      002F79 FB               [12] 2399 	mov	r3,a
      002F7A 08               [12] 2400 	inc	r0
      002F7B 86 07            [24] 2401 	mov	ar7,@r0
      002F7D 8A 82            [24] 2402 	mov	dpl,r2
      002F7F 8B 83            [24] 2403 	mov	dph,r3
      002F81 8F F0            [24] 2404 	mov	b,r7
      002F83 12 5D 5A         [24] 2405 	lcall	__gptrget
      002F86 FA               [12] 2406 	mov	r2,a
      002F87 B5 06 02         [24] 2407 	cjne	a,ar6,00124$
      002F8A 80 05            [24] 2408 	sjmp	00107$
      002F8C                       2409 00124$:
      002F8C                       2410 00101$:
                                   2411 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:145: return false;
      002F8C 75 82 00         [24] 2412 	mov	dpl,#0x00
      002F8F 80 2A            [24] 2413 	sjmp	00108$
      002F91                       2414 00107$:
                                   2415 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:143: for (i = 0; i < key_len; i++) {
      002F91 0C               [12] 2416 	inc	r4
      002F92 80 B7            [24] 2417 	sjmp	00106$
      002F94                       2418 00104$:
                                   2419 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:148: return literal[key_len] == '\0';
      002F94 E5 1F            [12] 2420 	mov	a,_bp
      002F96 24 FA            [12] 2421 	add	a,#0xfa
      002F98 F8               [12] 2422 	mov	r0,a
      002F99 E5 1F            [12] 2423 	mov	a,_bp
      002F9B 24 FD            [12] 2424 	add	a,#0xfd
      002F9D F9               [12] 2425 	mov	r1,a
      002F9E E7               [12] 2426 	mov	a,@r1
      002F9F 26               [12] 2427 	add	a,@r0
      002FA0 FD               [12] 2428 	mov	r5,a
      002FA1 E4               [12] 2429 	clr	a
      002FA2 08               [12] 2430 	inc	r0
      002FA3 36               [12] 2431 	addc	a,@r0
      002FA4 FE               [12] 2432 	mov	r6,a
      002FA5 08               [12] 2433 	inc	r0
      002FA6 86 07            [24] 2434 	mov	ar7,@r0
      002FA8 8D 82            [24] 2435 	mov	dpl,r5
      002FAA 8E 83            [24] 2436 	mov	dph,r6
      002FAC 8F F0            [24] 2437 	mov	b,r7
      002FAE 12 5D 5A         [24] 2438 	lcall	__gptrget
      002FB1 FD               [12] 2439 	mov	r5,a
      002FB2 B4 01 00         [24] 2440 	cjne	a,#0x01,00125$
      002FB5                       2441 00125$:
      002FB5 92 10            [24] 2442 	mov  b0,c
      002FB7 E4               [12] 2443 	clr	a
      002FB8 33               [12] 2444 	rlc	a
      002FB9 F5 82            [12] 2445 	mov	dpl,a
      002FBB                       2446 00108$:
                                   2447 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:149: }
      002FBB 85 1F 81         [24] 2448 	mov	sp,_bp
      002FBE D0 1F            [24] 2449 	pop	_bp
      002FC0 22               [24] 2450 	ret
                                   2451 ;------------------------------------------------------------
                                   2452 ;Allocation info for local variables in function 'usb_print_key_segment'
                                   2453 ;------------------------------------------------------------
                                   2454 ;key_len                   Allocated with name '_usb_print_key_segment_PARM_2'
                                   2455 ;key                       Allocated with name '_usb_print_key_segment_key_65536_232'
                                   2456 ;i                         Allocated with name '_usb_print_key_segment_i_65536_233'
                                   2457 ;------------------------------------------------------------
                                   2458 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:151: static void usb_print_key_segment(const char* key, uint8_t key_len) {
                                   2459 ;	-----------------------------------------
                                   2460 ;	 function usb_print_key_segment
                                   2461 ;	-----------------------------------------
      002FC1                       2462 _usb_print_key_segment:
      002FC1 AF F0            [24] 2463 	mov	r7,b
      002FC3 AE 83            [24] 2464 	mov	r6,dph
      002FC5 E5 82            [12] 2465 	mov	a,dpl
      002FC7 90 02 20         [24] 2466 	mov	dptr,#_usb_print_key_segment_key_65536_232
      002FCA F0               [24] 2467 	movx	@dptr,a
      002FCB EE               [12] 2468 	mov	a,r6
      002FCC A3               [24] 2469 	inc	dptr
      002FCD F0               [24] 2470 	movx	@dptr,a
      002FCE EF               [12] 2471 	mov	a,r7
      002FCF A3               [24] 2472 	inc	dptr
      002FD0 F0               [24] 2473 	movx	@dptr,a
                                   2474 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:153: for (i = 0; i < key_len; i++) {
      002FD1 90 02 20         [24] 2475 	mov	dptr,#_usb_print_key_segment_key_65536_232
      002FD4 E0               [24] 2476 	movx	a,@dptr
      002FD5 FD               [12] 2477 	mov	r5,a
      002FD6 A3               [24] 2478 	inc	dptr
      002FD7 E0               [24] 2479 	movx	a,@dptr
      002FD8 FE               [12] 2480 	mov	r6,a
      002FD9 A3               [24] 2481 	inc	dptr
      002FDA E0               [24] 2482 	movx	a,@dptr
      002FDB FF               [12] 2483 	mov	r7,a
      002FDC 90 02 1F         [24] 2484 	mov	dptr,#_usb_print_key_segment_PARM_2
      002FDF E0               [24] 2485 	movx	a,@dptr
      002FE0 FC               [12] 2486 	mov	r4,a
      002FE1 7B 00            [12] 2487 	mov	r3,#0x00
      002FE3                       2488 00103$:
      002FE3 C3               [12] 2489 	clr	c
      002FE4 EB               [12] 2490 	mov	a,r3
      002FE5 9C               [12] 2491 	subb	a,r4
      002FE6 50 2D            [24] 2492 	jnc	00105$
                                   2493 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:154: serial_write(key[i]);
      002FE8 EB               [12] 2494 	mov	a,r3
      002FE9 2D               [12] 2495 	add	a,r5
      002FEA F8               [12] 2496 	mov	r0,a
      002FEB E4               [12] 2497 	clr	a
      002FEC 3E               [12] 2498 	addc	a,r6
      002FED F9               [12] 2499 	mov	r1,a
      002FEE 8F 02            [24] 2500 	mov	ar2,r7
      002FF0 88 82            [24] 2501 	mov	dpl,r0
      002FF2 89 83            [24] 2502 	mov	dph,r1
      002FF4 8A F0            [24] 2503 	mov	b,r2
      002FF6 12 5D 5A         [24] 2504 	lcall	__gptrget
      002FF9 F5 82            [12] 2505 	mov	dpl,a
      002FFB C0 07            [24] 2506 	push	ar7
      002FFD C0 06            [24] 2507 	push	ar6
      002FFF C0 05            [24] 2508 	push	ar5
      003001 C0 04            [24] 2509 	push	ar4
      003003 C0 03            [24] 2510 	push	ar3
      003005 12 16 EF         [24] 2511 	lcall	_serial_write
      003008 D0 03            [24] 2512 	pop	ar3
      00300A D0 04            [24] 2513 	pop	ar4
      00300C D0 05            [24] 2514 	pop	ar5
      00300E D0 06            [24] 2515 	pop	ar6
      003010 D0 07            [24] 2516 	pop	ar7
                                   2517 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:153: for (i = 0; i < key_len; i++) {
      003012 0B               [12] 2518 	inc	r3
      003013 80 CE            [24] 2519 	sjmp	00103$
      003015                       2520 00105$:
                                   2521 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:156: }
      003015 22               [24] 2522 	ret
                                   2523 ;------------------------------------------------------------
                                   2524 ;Allocation info for local variables in function 'usb_handle_get'
                                   2525 ;------------------------------------------------------------
                                   2526 ;key                       Allocated to stack - _bp -5
                                   2527 ;uc                        Allocated to registers r5 r6 r7 
                                   2528 ;------------------------------------------------------------
                                   2529 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:158: static bool usb_handle_get(USBController* uc, const char* key) SDCC_REENTRANT {
                                   2530 ;	-----------------------------------------
                                   2531 ;	 function usb_handle_get
                                   2532 ;	-----------------------------------------
      003016                       2533 _usb_handle_get:
      003016 C0 1F            [24] 2534 	push	_bp
      003018 85 81 1F         [24] 2535 	mov	_bp,sp
      00301B AD 82            [24] 2536 	mov	r5,dpl
      00301D AE 83            [24] 2537 	mov	r6,dph
      00301F AF F0            [24] 2538 	mov	r7,b
                                   2539 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:159: if (usb_str_eq(key, "STATUS")) {
      003021 C0 07            [24] 2540 	push	ar7
      003023 C0 06            [24] 2541 	push	ar6
      003025 C0 05            [24] 2542 	push	ar5
      003027 74 AF            [12] 2543 	mov	a,#___str_2
      003029 C0 E0            [24] 2544 	push	acc
      00302B 74 64            [12] 2545 	mov	a,#(___str_2 >> 8)
      00302D C0 E0            [24] 2546 	push	acc
      00302F 74 80            [12] 2547 	mov	a,#0x80
      003031 C0 E0            [24] 2548 	push	acc
      003033 E5 1F            [12] 2549 	mov	a,_bp
      003035 24 FB            [12] 2550 	add	a,#0xfb
      003037 F8               [12] 2551 	mov	r0,a
      003038 86 82            [24] 2552 	mov	dpl,@r0
      00303A 08               [12] 2553 	inc	r0
      00303B 86 83            [24] 2554 	mov	dph,@r0
      00303D 08               [12] 2555 	inc	r0
      00303E 86 F0            [24] 2556 	mov	b,@r0
      003040 12 27 5E         [24] 2557 	lcall	_usb_str_eq
      003043 AC 82            [24] 2558 	mov	r4,dpl
      003045 15 81            [12] 2559 	dec	sp
      003047 15 81            [12] 2560 	dec	sp
      003049 15 81            [12] 2561 	dec	sp
      00304B D0 05            [24] 2562 	pop	ar5
      00304D D0 06            [24] 2563 	pop	ar6
      00304F D0 07            [24] 2564 	pop	ar7
      003051 EC               [12] 2565 	mov	a,r4
      003052 60 17            [24] 2566 	jz	00102$
                                   2567 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:160: uc->status_requested = true;
      003054 74 62            [12] 2568 	mov	a,#0x62
      003056 2D               [12] 2569 	add	a,r5
      003057 FD               [12] 2570 	mov	r5,a
      003058 E4               [12] 2571 	clr	a
      003059 3E               [12] 2572 	addc	a,r6
      00305A FE               [12] 2573 	mov	r6,a
      00305B 8D 82            [24] 2574 	mov	dpl,r5
      00305D 8E 83            [24] 2575 	mov	dph,r6
      00305F 8F F0            [24] 2576 	mov	b,r7
      003061 74 01            [12] 2577 	mov	a,#0x01
      003063 12 56 BA         [24] 2578 	lcall	__gptrput
                                   2579 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:161: return true;
      003066 75 82 01         [24] 2580 	mov	dpl,#0x01
      003069 80 03            [24] 2581 	sjmp	00103$
      00306B                       2582 00102$:
                                   2583 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:163: return false;
      00306B 75 82 00         [24] 2584 	mov	dpl,#0x00
      00306E                       2585 00103$:
                                   2586 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:164: }
      00306E D0 1F            [24] 2587 	pop	_bp
      003070 22               [24] 2588 	ret
                                   2589 ;------------------------------------------------------------
                                   2590 ;Allocation info for local variables in function 'usb_handle_set'
                                   2591 ;------------------------------------------------------------
                                   2592 ;key                       Allocated to stack - _bp -5
                                   2593 ;key_len                   Allocated to stack - _bp -6
                                   2594 ;value                     Allocated to stack - _bp -9
                                   2595 ;uc                        Allocated to stack - _bp +1
                                   2596 ;v                         Allocated to stack - _bp +12
                                   2597 ;rpm                       Allocated to stack - _bp +12
                                   2598 ;duty                      Allocated to stack - _bp +12
                                   2599 ;sloc0                     Allocated to stack - _bp +14
                                   2600 ;sloc1                     Allocated to stack - _bp +4
                                   2601 ;sloc2                     Allocated to stack - _bp +8
                                   2602 ;------------------------------------------------------------
                                   2603 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:166: static bool usb_handle_set(USBController* uc, const char* key, uint8_t key_len, const char* value) SDCC_REENTRANT {
                                   2604 ;	-----------------------------------------
                                   2605 ;	 function usb_handle_set
                                   2606 ;	-----------------------------------------
      003071                       2607 _usb_handle_set:
      003071 C0 1F            [24] 2608 	push	_bp
      003073 85 81 1F         [24] 2609 	mov	_bp,sp
      003076 C0 82            [24] 2610 	push	dpl
      003078 C0 83            [24] 2611 	push	dph
      00307A C0 F0            [24] 2612 	push	b
      00307C E5 81            [12] 2613 	mov	a,sp
      00307E 24 0C            [12] 2614 	add	a,#0x0c
      003080 F5 81            [12] 2615 	mov	sp,a
                                   2616 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:167: if (usb_key_equals(key, key_len, "MODE")) {
      003082 74 B6            [12] 2617 	mov	a,#___str_3
      003084 C0 E0            [24] 2618 	push	acc
      003086 74 64            [12] 2619 	mov	a,#(___str_3 >> 8)
      003088 C0 E0            [24] 2620 	push	acc
      00308A 74 80            [12] 2621 	mov	a,#0x80
      00308C C0 E0            [24] 2622 	push	acc
      00308E E5 1F            [12] 2623 	mov	a,_bp
      003090 24 FA            [12] 2624 	add	a,#0xfa
      003092 F8               [12] 2625 	mov	r0,a
      003093 E6               [12] 2626 	mov	a,@r0
      003094 C0 E0            [24] 2627 	push	acc
      003096 E5 1F            [12] 2628 	mov	a,_bp
      003098 24 FB            [12] 2629 	add	a,#0xfb
      00309A F8               [12] 2630 	mov	r0,a
      00309B 86 82            [24] 2631 	mov	dpl,@r0
      00309D 08               [12] 2632 	inc	r0
      00309E 86 83            [24] 2633 	mov	dph,@r0
      0030A0 08               [12] 2634 	inc	r0
      0030A1 86 F0            [24] 2635 	mov	b,@r0
      0030A3 12 2F 3E         [24] 2636 	lcall	_usb_key_equals
      0030A6 AC 82            [24] 2637 	mov	r4,dpl
      0030A8 E5 81            [12] 2638 	mov	a,sp
      0030AA 24 FC            [12] 2639 	add	a,#0xfc
      0030AC F5 81            [12] 2640 	mov	sp,a
      0030AE EC               [12] 2641 	mov	a,r4
      0030AF 70 03            [24] 2642 	jnz	00178$
      0030B1 02 31 8B         [24] 2643 	ljmp	00106$
      0030B4                       2644 00178$:
                                   2645 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:168: if (usb_str_eq(value, "AUTO")) {
      0030B4 74 BB            [12] 2646 	mov	a,#___str_4
      0030B6 C0 E0            [24] 2647 	push	acc
      0030B8 74 64            [12] 2648 	mov	a,#(___str_4 >> 8)
      0030BA C0 E0            [24] 2649 	push	acc
      0030BC 74 80            [12] 2650 	mov	a,#0x80
      0030BE C0 E0            [24] 2651 	push	acc
      0030C0 E5 1F            [12] 2652 	mov	a,_bp
      0030C2 24 F7            [12] 2653 	add	a,#0xf7
      0030C4 F8               [12] 2654 	mov	r0,a
      0030C5 86 82            [24] 2655 	mov	dpl,@r0
      0030C7 08               [12] 2656 	inc	r0
      0030C8 86 83            [24] 2657 	mov	dph,@r0
      0030CA 08               [12] 2658 	inc	r0
      0030CB 86 F0            [24] 2659 	mov	b,@r0
      0030CD 12 27 5E         [24] 2660 	lcall	_usb_str_eq
      0030D0 AC 82            [24] 2661 	mov	r4,dpl
      0030D2 15 81            [12] 2662 	dec	sp
      0030D4 15 81            [12] 2663 	dec	sp
      0030D6 15 81            [12] 2664 	dec	sp
      0030D8 EC               [12] 2665 	mov	a,r4
      0030D9 60 4D            [24] 2666 	jz	00102$
                                   2667 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:169: uc->override_active = false;
      0030DB A8 1F            [24] 2668 	mov	r0,_bp
      0030DD 08               [12] 2669 	inc	r0
      0030DE 74 5D            [12] 2670 	mov	a,#0x5d
      0030E0 26               [12] 2671 	add	a,@r0
      0030E1 FA               [12] 2672 	mov	r2,a
      0030E2 E4               [12] 2673 	clr	a
      0030E3 08               [12] 2674 	inc	r0
      0030E4 36               [12] 2675 	addc	a,@r0
      0030E5 FB               [12] 2676 	mov	r3,a
      0030E6 08               [12] 2677 	inc	r0
      0030E7 86 04            [24] 2678 	mov	ar4,@r0
      0030E9 8A 82            [24] 2679 	mov	dpl,r2
      0030EB 8B 83            [24] 2680 	mov	dph,r3
      0030ED 8C F0            [24] 2681 	mov	b,r4
      0030EF E4               [12] 2682 	clr	a
      0030F0 12 56 BA         [24] 2683 	lcall	__gptrput
                                   2684 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:170: uc->rpm_override_active = false;
      0030F3 A8 1F            [24] 2685 	mov	r0,_bp
      0030F5 08               [12] 2686 	inc	r0
      0030F6 74 5E            [12] 2687 	mov	a,#0x5e
      0030F8 26               [12] 2688 	add	a,@r0
      0030F9 FA               [12] 2689 	mov	r2,a
      0030FA E4               [12] 2690 	clr	a
      0030FB 08               [12] 2691 	inc	r0
      0030FC 36               [12] 2692 	addc	a,@r0
      0030FD FB               [12] 2693 	mov	r3,a
      0030FE 08               [12] 2694 	inc	r0
      0030FF 86 04            [24] 2695 	mov	ar4,@r0
      003101 8A 82            [24] 2696 	mov	dpl,r2
      003103 8B 83            [24] 2697 	mov	dph,r3
      003105 8C F0            [24] 2698 	mov	b,r4
      003107 E4               [12] 2699 	clr	a
      003108 12 56 BA         [24] 2700 	lcall	__gptrput
                                   2701 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:171: usb_reply_ok_key_value("MODE", "AUTO");
      00310B 90 02 04         [24] 2702 	mov	dptr,#_usb_reply_ok_key_value_PARM_2
      00310E 74 BB            [12] 2703 	mov	a,#___str_4
      003110 F0               [24] 2704 	movx	@dptr,a
      003111 74 64            [12] 2705 	mov	a,#(___str_4 >> 8)
      003113 A3               [24] 2706 	inc	dptr
      003114 F0               [24] 2707 	movx	@dptr,a
      003115 74 80            [12] 2708 	mov	a,#0x80
      003117 A3               [24] 2709 	inc	dptr
      003118 F0               [24] 2710 	movx	@dptr,a
      003119 90 64 B6         [24] 2711 	mov	dptr,#___str_3
      00311C 75 F0 80         [24] 2712 	mov	b,#0x80
      00311F 12 2D DF         [24] 2713 	lcall	_usb_reply_ok_key_value
                                   2714 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:172: return true;
      003122 75 82 01         [24] 2715 	mov	dpl,#0x01
      003125 02 37 03         [24] 2716 	ljmp	00128$
      003128                       2717 00102$:
                                   2718 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:174: if (usb_str_eq(value, "MANUAL")) {
      003128 74 C0            [12] 2719 	mov	a,#___str_5
      00312A C0 E0            [24] 2720 	push	acc
      00312C 74 64            [12] 2721 	mov	a,#(___str_5 >> 8)
      00312E C0 E0            [24] 2722 	push	acc
      003130 74 80            [12] 2723 	mov	a,#0x80
      003132 C0 E0            [24] 2724 	push	acc
      003134 E5 1F            [12] 2725 	mov	a,_bp
      003136 24 F7            [12] 2726 	add	a,#0xf7
      003138 F8               [12] 2727 	mov	r0,a
      003139 86 82            [24] 2728 	mov	dpl,@r0
      00313B 08               [12] 2729 	inc	r0
      00313C 86 83            [24] 2730 	mov	dph,@r0
      00313E 08               [12] 2731 	inc	r0
      00313F 86 F0            [24] 2732 	mov	b,@r0
      003141 12 27 5E         [24] 2733 	lcall	_usb_str_eq
      003144 AC 82            [24] 2734 	mov	r4,dpl
      003146 15 81            [12] 2735 	dec	sp
      003148 15 81            [12] 2736 	dec	sp
      00314A 15 81            [12] 2737 	dec	sp
      00314C EC               [12] 2738 	mov	a,r4
      00314D 60 36            [24] 2739 	jz	00104$
                                   2740 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:175: uc->override_active = true;
      00314F A8 1F            [24] 2741 	mov	r0,_bp
      003151 08               [12] 2742 	inc	r0
      003152 74 5D            [12] 2743 	mov	a,#0x5d
      003154 26               [12] 2744 	add	a,@r0
      003155 FA               [12] 2745 	mov	r2,a
      003156 E4               [12] 2746 	clr	a
      003157 08               [12] 2747 	inc	r0
      003158 36               [12] 2748 	addc	a,@r0
      003159 FB               [12] 2749 	mov	r3,a
      00315A 08               [12] 2750 	inc	r0
      00315B 86 04            [24] 2751 	mov	ar4,@r0
      00315D 8A 82            [24] 2752 	mov	dpl,r2
      00315F 8B 83            [24] 2753 	mov	dph,r3
      003161 8C F0            [24] 2754 	mov	b,r4
      003163 74 01            [12] 2755 	mov	a,#0x01
      003165 12 56 BA         [24] 2756 	lcall	__gptrput
                                   2757 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:176: usb_reply_ok_key_value("MODE", "MANUAL");
      003168 90 02 04         [24] 2758 	mov	dptr,#_usb_reply_ok_key_value_PARM_2
      00316B 74 C0            [12] 2759 	mov	a,#___str_5
      00316D F0               [24] 2760 	movx	@dptr,a
      00316E 74 64            [12] 2761 	mov	a,#(___str_5 >> 8)
      003170 A3               [24] 2762 	inc	dptr
      003171 F0               [24] 2763 	movx	@dptr,a
      003172 74 80            [12] 2764 	mov	a,#0x80
      003174 A3               [24] 2765 	inc	dptr
      003175 F0               [24] 2766 	movx	@dptr,a
      003176 90 64 B6         [24] 2767 	mov	dptr,#___str_3
      003179 75 F0 80         [24] 2768 	mov	b,#0x80
      00317C 12 2D DF         [24] 2769 	lcall	_usb_reply_ok_key_value
                                   2770 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:177: return true;
      00317F 75 82 01         [24] 2771 	mov	dpl,#0x01
      003182 02 37 03         [24] 2772 	ljmp	00128$
      003185                       2773 00104$:
                                   2774 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:179: return false;
      003185 75 82 00         [24] 2775 	mov	dpl,#0x00
      003188 02 37 03         [24] 2776 	ljmp	00128$
      00318B                       2777 00106$:
                                   2778 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:182: if (usb_key_equals(key, key_len, "VOLTAGE")) {
      00318B 74 C7            [12] 2779 	mov	a,#___str_6
      00318D C0 E0            [24] 2780 	push	acc
      00318F 74 64            [12] 2781 	mov	a,#(___str_6 >> 8)
      003191 C0 E0            [24] 2782 	push	acc
      003193 74 80            [12] 2783 	mov	a,#0x80
      003195 C0 E0            [24] 2784 	push	acc
      003197 E5 1F            [12] 2785 	mov	a,_bp
      003199 24 FA            [12] 2786 	add	a,#0xfa
      00319B F8               [12] 2787 	mov	r0,a
      00319C E6               [12] 2788 	mov	a,@r0
      00319D C0 E0            [24] 2789 	push	acc
      00319F E5 1F            [12] 2790 	mov	a,_bp
      0031A1 24 FB            [12] 2791 	add	a,#0xfb
      0031A3 F8               [12] 2792 	mov	r0,a
      0031A4 86 82            [24] 2793 	mov	dpl,@r0
      0031A6 08               [12] 2794 	inc	r0
      0031A7 86 83            [24] 2795 	mov	dph,@r0
      0031A9 08               [12] 2796 	inc	r0
      0031AA 86 F0            [24] 2797 	mov	b,@r0
      0031AC 12 2F 3E         [24] 2798 	lcall	_usb_key_equals
      0031AF AC 82            [24] 2799 	mov	r4,dpl
      0031B1 E5 81            [12] 2800 	mov	a,sp
      0031B3 24 FC            [12] 2801 	add	a,#0xfc
      0031B5 F5 81            [12] 2802 	mov	sp,a
      0031B7 EC               [12] 2803 	mov	a,r4
      0031B8 70 03            [24] 2804 	jnz	00181$
      0031BA 02 32 B4         [24] 2805 	ljmp	00111$
      0031BD                       2806 00181$:
                                   2807 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:183: float v = usb_parse_float(value);
      0031BD E5 1F            [12] 2808 	mov	a,_bp
      0031BF 24 F7            [12] 2809 	add	a,#0xf7
      0031C1 F8               [12] 2810 	mov	r0,a
      0031C2 86 82            [24] 2811 	mov	dpl,@r0
      0031C4 08               [12] 2812 	inc	r0
      0031C5 86 83            [24] 2813 	mov	dph,@r0
      0031C7 08               [12] 2814 	inc	r0
      0031C8 86 F0            [24] 2815 	mov	b,@r0
      0031CA 12 2A 74         [24] 2816 	lcall	_usb_parse_float
      0031CD AF 82            [24] 2817 	mov	r7,dpl
      0031CF AE 83            [24] 2818 	mov	r6,dph
      0031D1 AD F0            [24] 2819 	mov	r5,b
      0031D3 FC               [12] 2820 	mov	r4,a
      0031D4 E5 1F            [12] 2821 	mov	a,_bp
      0031D6 24 0C            [12] 2822 	add	a,#0x0c
      0031D8 F8               [12] 2823 	mov	r0,a
      0031D9 A6 07            [24] 2824 	mov	@r0,ar7
      0031DB 08               [12] 2825 	inc	r0
      0031DC A6 06            [24] 2826 	mov	@r0,ar6
      0031DE 08               [12] 2827 	inc	r0
      0031DF A6 05            [24] 2828 	mov	@r0,ar5
      0031E1 08               [12] 2829 	inc	r0
      0031E2 A6 04            [24] 2830 	mov	@r0,ar4
                                   2831 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:184: if (v < VOUT_MIN || v > VOUT_MAX) {
      0031E4 E4               [12] 2832 	clr	a
      0031E5 C0 E0            [24] 2833 	push	acc
      0031E7 C0 E0            [24] 2834 	push	acc
      0031E9 74 A0            [12] 2835 	mov	a,#0xa0
      0031EB C0 E0            [24] 2836 	push	acc
      0031ED 74 40            [12] 2837 	mov	a,#0x40
      0031EF C0 E0            [24] 2838 	push	acc
      0031F1 E5 1F            [12] 2839 	mov	a,_bp
      0031F3 24 0C            [12] 2840 	add	a,#0x0c
      0031F5 F8               [12] 2841 	mov	r0,a
      0031F6 86 82            [24] 2842 	mov	dpl,@r0
      0031F8 08               [12] 2843 	inc	r0
      0031F9 86 83            [24] 2844 	mov	dph,@r0
      0031FB 08               [12] 2845 	inc	r0
      0031FC 86 F0            [24] 2846 	mov	b,@r0
      0031FE 08               [12] 2847 	inc	r0
      0031FF E6               [12] 2848 	mov	a,@r0
      003200 12 56 D5         [24] 2849 	lcall	___fslt
      003203 AC 82            [24] 2850 	mov	r4,dpl
      003205 E5 81            [12] 2851 	mov	a,sp
      003207 24 FC            [12] 2852 	add	a,#0xfc
      003209 F5 81            [12] 2853 	mov	sp,a
      00320B EC               [12] 2854 	mov	a,r4
      00320C 70 2A            [24] 2855 	jnz	00107$
      00320E E5 1F            [12] 2856 	mov	a,_bp
      003210 24 0C            [12] 2857 	add	a,#0x0c
      003212 F8               [12] 2858 	mov	r0,a
      003213 E6               [12] 2859 	mov	a,@r0
      003214 C0 E0            [24] 2860 	push	acc
      003216 08               [12] 2861 	inc	r0
      003217 E6               [12] 2862 	mov	a,@r0
      003218 C0 E0            [24] 2863 	push	acc
      00321A 08               [12] 2864 	inc	r0
      00321B E6               [12] 2865 	mov	a,@r0
      00321C C0 E0            [24] 2866 	push	acc
      00321E 08               [12] 2867 	inc	r0
      00321F E6               [12] 2868 	mov	a,@r0
      003220 C0 E0            [24] 2869 	push	acc
      003222 90 00 00         [24] 2870 	mov	dptr,#0x0000
      003225 75 F0 40         [24] 2871 	mov	b,#0x40
      003228 74 41            [12] 2872 	mov	a,#0x41
      00322A 12 56 D5         [24] 2873 	lcall	___fslt
      00322D AC 82            [24] 2874 	mov	r4,dpl
      00322F E5 81            [12] 2875 	mov	a,sp
      003231 24 FC            [12] 2876 	add	a,#0xfc
      003233 F5 81            [12] 2877 	mov	sp,a
      003235 EC               [12] 2878 	mov	a,r4
      003236 60 0F            [24] 2879 	jz	00108$
      003238                       2880 00107$:
                                   2881 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:185: serial_println_str("ERR:VOLTAGE_OUT_OF_RANGE");
      003238 90 64 CF         [24] 2882 	mov	dptr,#___str_7
      00323B 75 F0 80         [24] 2883 	mov	b,#0x80
      00323E 12 1E 6A         [24] 2884 	lcall	_serial_println_str
                                   2885 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:186: return true;
      003241 75 82 01         [24] 2886 	mov	dpl,#0x01
      003244 02 37 03         [24] 2887 	ljmp	00128$
      003247                       2888 00108$:
                                   2889 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:188: uc->target_voltage_override = v;
      003247 A8 1F            [24] 2890 	mov	r0,_bp
      003249 08               [12] 2891 	inc	r0
      00324A 74 48            [12] 2892 	mov	a,#0x48
      00324C 26               [12] 2893 	add	a,@r0
      00324D FA               [12] 2894 	mov	r2,a
      00324E E4               [12] 2895 	clr	a
      00324F 08               [12] 2896 	inc	r0
      003250 36               [12] 2897 	addc	a,@r0
      003251 FB               [12] 2898 	mov	r3,a
      003252 08               [12] 2899 	inc	r0
      003253 86 04            [24] 2900 	mov	ar4,@r0
      003255 8A 82            [24] 2901 	mov	dpl,r2
      003257 8B 83            [24] 2902 	mov	dph,r3
      003259 8C F0            [24] 2903 	mov	b,r4
      00325B E5 1F            [12] 2904 	mov	a,_bp
      00325D 24 0C            [12] 2905 	add	a,#0x0c
      00325F F8               [12] 2906 	mov	r0,a
      003260 E6               [12] 2907 	mov	a,@r0
      003261 12 56 BA         [24] 2908 	lcall	__gptrput
      003264 A3               [24] 2909 	inc	dptr
      003265 08               [12] 2910 	inc	r0
      003266 E6               [12] 2911 	mov	a,@r0
      003267 12 56 BA         [24] 2912 	lcall	__gptrput
      00326A A3               [24] 2913 	inc	dptr
      00326B 08               [12] 2914 	inc	r0
      00326C E6               [12] 2915 	mov	a,@r0
      00326D 12 56 BA         [24] 2916 	lcall	__gptrput
      003270 A3               [24] 2917 	inc	dptr
      003271 08               [12] 2918 	inc	r0
      003272 E6               [12] 2919 	mov	a,@r0
      003273 12 56 BA         [24] 2920 	lcall	__gptrput
                                   2921 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:189: uc->override_active = true;
      003276 A8 1F            [24] 2922 	mov	r0,_bp
      003278 08               [12] 2923 	inc	r0
      003279 74 5D            [12] 2924 	mov	a,#0x5d
      00327B 26               [12] 2925 	add	a,@r0
      00327C FA               [12] 2926 	mov	r2,a
      00327D E4               [12] 2927 	clr	a
      00327E 08               [12] 2928 	inc	r0
      00327F 36               [12] 2929 	addc	a,@r0
      003280 FB               [12] 2930 	mov	r3,a
      003281 08               [12] 2931 	inc	r0
      003282 86 04            [24] 2932 	mov	ar4,@r0
      003284 8A 82            [24] 2933 	mov	dpl,r2
      003286 8B 83            [24] 2934 	mov	dph,r3
      003288 8C F0            [24] 2935 	mov	b,r4
      00328A 74 01            [12] 2936 	mov	a,#0x01
      00328C 12 56 BA         [24] 2937 	lcall	__gptrput
                                   2938 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:190: usb_reply_ok_key_float2("VOLTAGE", v);
      00328F E5 1F            [12] 2939 	mov	a,_bp
      003291 24 0C            [12] 2940 	add	a,#0x0c
      003293 F8               [12] 2941 	mov	r0,a
      003294 90 02 18         [24] 2942 	mov	dptr,#_usb_reply_ok_key_float2_PARM_2
      003297 E6               [12] 2943 	mov	a,@r0
      003298 F0               [24] 2944 	movx	@dptr,a
      003299 08               [12] 2945 	inc	r0
      00329A E6               [12] 2946 	mov	a,@r0
      00329B A3               [24] 2947 	inc	dptr
      00329C F0               [24] 2948 	movx	@dptr,a
      00329D 08               [12] 2949 	inc	r0
      00329E E6               [12] 2950 	mov	a,@r0
      00329F A3               [24] 2951 	inc	dptr
      0032A0 F0               [24] 2952 	movx	@dptr,a
      0032A1 08               [12] 2953 	inc	r0
      0032A2 E6               [12] 2954 	mov	a,@r0
      0032A3 A3               [24] 2955 	inc	dptr
      0032A4 F0               [24] 2956 	movx	@dptr,a
      0032A5 90 64 C7         [24] 2957 	mov	dptr,#___str_6
      0032A8 75 F0 80         [24] 2958 	mov	b,#0x80
      0032AB 12 2E E7         [24] 2959 	lcall	_usb_reply_ok_key_float2
                                   2960 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:191: return true;
      0032AE 75 82 01         [24] 2961 	mov	dpl,#0x01
      0032B1 02 37 03         [24] 2962 	ljmp	00128$
      0032B4                       2963 00111$:
                                   2964 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:194: if (usb_key_equals(key, key_len, "RPM")) {
      0032B4 74 E8            [12] 2965 	mov	a,#___str_8
      0032B6 C0 E0            [24] 2966 	push	acc
      0032B8 74 64            [12] 2967 	mov	a,#(___str_8 >> 8)
      0032BA C0 E0            [24] 2968 	push	acc
      0032BC 74 80            [12] 2969 	mov	a,#0x80
      0032BE C0 E0            [24] 2970 	push	acc
      0032C0 E5 1F            [12] 2971 	mov	a,_bp
      0032C2 24 FA            [12] 2972 	add	a,#0xfa
      0032C4 F8               [12] 2973 	mov	r0,a
      0032C5 E6               [12] 2974 	mov	a,@r0
      0032C6 C0 E0            [24] 2975 	push	acc
      0032C8 E5 1F            [12] 2976 	mov	a,_bp
      0032CA 24 FB            [12] 2977 	add	a,#0xfb
      0032CC F8               [12] 2978 	mov	r0,a
      0032CD 86 82            [24] 2979 	mov	dpl,@r0
      0032CF 08               [12] 2980 	inc	r0
      0032D0 86 83            [24] 2981 	mov	dph,@r0
      0032D2 08               [12] 2982 	inc	r0
      0032D3 86 F0            [24] 2983 	mov	b,@r0
      0032D5 12 2F 3E         [24] 2984 	lcall	_usb_key_equals
      0032D8 AC 82            [24] 2985 	mov	r4,dpl
      0032DA E5 81            [12] 2986 	mov	a,sp
      0032DC 24 FC            [12] 2987 	add	a,#0xfc
      0032DE F5 81            [12] 2988 	mov	sp,a
      0032E0 EC               [12] 2989 	mov	a,r4
      0032E1 70 03            [24] 2990 	jnz	00184$
      0032E3 02 33 B5         [24] 2991 	ljmp	00116$
      0032E6                       2992 00184$:
                                   2993 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:195: uint32_t rpm = usb_parse_u32(value);
      0032E6 E5 1F            [12] 2994 	mov	a,_bp
      0032E8 24 F7            [12] 2995 	add	a,#0xf7
      0032EA F8               [12] 2996 	mov	r0,a
      0032EB 86 82            [24] 2997 	mov	dpl,@r0
      0032ED 08               [12] 2998 	inc	r0
      0032EE 86 83            [24] 2999 	mov	dph,@r0
      0032F0 08               [12] 3000 	inc	r0
      0032F1 86 F0            [24] 3001 	mov	b,@r0
      0032F3 12 28 EC         [24] 3002 	lcall	_usb_parse_u32
      0032F6 AF 82            [24] 3003 	mov	r7,dpl
      0032F8 AE 83            [24] 3004 	mov	r6,dph
      0032FA AD F0            [24] 3005 	mov	r5,b
      0032FC FC               [12] 3006 	mov	r4,a
      0032FD E5 1F            [12] 3007 	mov	a,_bp
      0032FF 24 0C            [12] 3008 	add	a,#0x0c
      003301 F8               [12] 3009 	mov	r0,a
      003302 A6 07            [24] 3010 	mov	@r0,ar7
      003304 08               [12] 3011 	inc	r0
      003305 A6 06            [24] 3012 	mov	@r0,ar6
      003307 08               [12] 3013 	inc	r0
      003308 A6 05            [24] 3014 	mov	@r0,ar5
      00330A 08               [12] 3015 	inc	r0
      00330B A6 04            [24] 3016 	mov	@r0,ar4
                                   3017 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:196: if (rpm < RPM_TARGET_MIN || rpm > RPM_TARGET_MAX) {
      00330D E5 1F            [12] 3018 	mov	a,_bp
      00330F 24 0C            [12] 3019 	add	a,#0x0c
      003311 F8               [12] 3020 	mov	r0,a
      003312 C3               [12] 3021 	clr	c
      003313 E6               [12] 3022 	mov	a,@r0
      003314 94 58            [12] 3023 	subb	a,#0x58
      003316 08               [12] 3024 	inc	r0
      003317 E6               [12] 3025 	mov	a,@r0
      003318 94 02            [12] 3026 	subb	a,#0x02
      00331A 08               [12] 3027 	inc	r0
      00331B E6               [12] 3028 	mov	a,@r0
      00331C 94 00            [12] 3029 	subb	a,#0x00
      00331E 08               [12] 3030 	inc	r0
      00331F E6               [12] 3031 	mov	a,@r0
      003320 94 00            [12] 3032 	subb	a,#0x00
      003322 40 15            [24] 3033 	jc	00112$
      003324 E5 1F            [12] 3034 	mov	a,_bp
      003326 24 0C            [12] 3035 	add	a,#0x0c
      003328 F8               [12] 3036 	mov	r0,a
      003329 C3               [12] 3037 	clr	c
      00332A 74 B8            [12] 3038 	mov	a,#0xb8
      00332C 96               [12] 3039 	subb	a,@r0
      00332D 74 0B            [12] 3040 	mov	a,#0x0b
      00332F 08               [12] 3041 	inc	r0
      003330 96               [12] 3042 	subb	a,@r0
      003331 E4               [12] 3043 	clr	a
      003332 08               [12] 3044 	inc	r0
      003333 96               [12] 3045 	subb	a,@r0
      003334 E4               [12] 3046 	clr	a
      003335 08               [12] 3047 	inc	r0
      003336 96               [12] 3048 	subb	a,@r0
      003337 50 0F            [24] 3049 	jnc	00113$
      003339                       3050 00112$:
                                   3051 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:197: serial_println_str("ERR:RPM_OUT_OF_RANGE");
      003339 90 64 EC         [24] 3052 	mov	dptr,#___str_9
      00333C 75 F0 80         [24] 3053 	mov	b,#0x80
      00333F 12 1E 6A         [24] 3054 	lcall	_serial_println_str
                                   3055 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:198: return true;
      003342 75 82 01         [24] 3056 	mov	dpl,#0x01
      003345 02 37 03         [24] 3057 	ljmp	00128$
      003348                       3058 00113$:
                                   3059 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:200: uc->target_rpm_override = rpm;
      003348 A8 1F            [24] 3060 	mov	r0,_bp
      00334A 08               [12] 3061 	inc	r0
      00334B 74 4C            [12] 3062 	mov	a,#0x4c
      00334D 26               [12] 3063 	add	a,@r0
      00334E FA               [12] 3064 	mov	r2,a
      00334F E4               [12] 3065 	clr	a
      003350 08               [12] 3066 	inc	r0
      003351 36               [12] 3067 	addc	a,@r0
      003352 FB               [12] 3068 	mov	r3,a
      003353 08               [12] 3069 	inc	r0
      003354 86 04            [24] 3070 	mov	ar4,@r0
      003356 8A 82            [24] 3071 	mov	dpl,r2
      003358 8B 83            [24] 3072 	mov	dph,r3
      00335A 8C F0            [24] 3073 	mov	b,r4
      00335C E5 1F            [12] 3074 	mov	a,_bp
      00335E 24 0C            [12] 3075 	add	a,#0x0c
      003360 F8               [12] 3076 	mov	r0,a
      003361 E6               [12] 3077 	mov	a,@r0
      003362 12 56 BA         [24] 3078 	lcall	__gptrput
      003365 A3               [24] 3079 	inc	dptr
      003366 08               [12] 3080 	inc	r0
      003367 E6               [12] 3081 	mov	a,@r0
      003368 12 56 BA         [24] 3082 	lcall	__gptrput
      00336B A3               [24] 3083 	inc	dptr
      00336C 08               [12] 3084 	inc	r0
      00336D E6               [12] 3085 	mov	a,@r0
      00336E 12 56 BA         [24] 3086 	lcall	__gptrput
      003371 A3               [24] 3087 	inc	dptr
      003372 08               [12] 3088 	inc	r0
      003373 E6               [12] 3089 	mov	a,@r0
      003374 12 56 BA         [24] 3090 	lcall	__gptrput
                                   3091 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:201: uc->rpm_override_active = true;
      003377 A8 1F            [24] 3092 	mov	r0,_bp
      003379 08               [12] 3093 	inc	r0
      00337A 74 5E            [12] 3094 	mov	a,#0x5e
      00337C 26               [12] 3095 	add	a,@r0
      00337D FA               [12] 3096 	mov	r2,a
      00337E E4               [12] 3097 	clr	a
      00337F 08               [12] 3098 	inc	r0
      003380 36               [12] 3099 	addc	a,@r0
      003381 FB               [12] 3100 	mov	r3,a
      003382 08               [12] 3101 	inc	r0
      003383 86 04            [24] 3102 	mov	ar4,@r0
      003385 8A 82            [24] 3103 	mov	dpl,r2
      003387 8B 83            [24] 3104 	mov	dph,r3
      003389 8C F0            [24] 3105 	mov	b,r4
      00338B 74 01            [12] 3106 	mov	a,#0x01
      00338D 12 56 BA         [24] 3107 	lcall	__gptrput
                                   3108 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:202: usb_reply_ok_key_uint("RPM", rpm);
      003390 E5 1F            [12] 3109 	mov	a,_bp
      003392 24 0C            [12] 3110 	add	a,#0x0c
      003394 F8               [12] 3111 	mov	r0,a
      003395 90 02 0A         [24] 3112 	mov	dptr,#_usb_reply_ok_key_uint_PARM_2
      003398 E6               [12] 3113 	mov	a,@r0
      003399 F0               [24] 3114 	movx	@dptr,a
      00339A 08               [12] 3115 	inc	r0
      00339B E6               [12] 3116 	mov	a,@r0
      00339C A3               [24] 3117 	inc	dptr
      00339D F0               [24] 3118 	movx	@dptr,a
      00339E 08               [12] 3119 	inc	r0
      00339F E6               [12] 3120 	mov	a,@r0
      0033A0 A3               [24] 3121 	inc	dptr
      0033A1 F0               [24] 3122 	movx	@dptr,a
      0033A2 08               [12] 3123 	inc	r0
      0033A3 E6               [12] 3124 	mov	a,@r0
      0033A4 A3               [24] 3125 	inc	dptr
      0033A5 F0               [24] 3126 	movx	@dptr,a
      0033A6 90 64 E8         [24] 3127 	mov	dptr,#___str_8
      0033A9 75 F0 80         [24] 3128 	mov	b,#0x80
      0033AC 12 2E 44         [24] 3129 	lcall	_usb_reply_ok_key_uint
                                   3130 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:203: return true;
      0033AF 75 82 01         [24] 3131 	mov	dpl,#0x01
      0033B2 02 37 03         [24] 3132 	ljmp	00128$
      0033B5                       3133 00116$:
                                   3134 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:206: if (usb_key_equals(key, key_len, "PWM")) {
      0033B5 74 01            [12] 3135 	mov	a,#___str_10
      0033B7 C0 E0            [24] 3136 	push	acc
      0033B9 74 65            [12] 3137 	mov	a,#(___str_10 >> 8)
      0033BB C0 E0            [24] 3138 	push	acc
      0033BD 74 80            [12] 3139 	mov	a,#0x80
      0033BF C0 E0            [24] 3140 	push	acc
      0033C1 E5 1F            [12] 3141 	mov	a,_bp
      0033C3 24 FA            [12] 3142 	add	a,#0xfa
      0033C5 F8               [12] 3143 	mov	r0,a
      0033C6 E6               [12] 3144 	mov	a,@r0
      0033C7 C0 E0            [24] 3145 	push	acc
      0033C9 E5 1F            [12] 3146 	mov	a,_bp
      0033CB 24 FB            [12] 3147 	add	a,#0xfb
      0033CD F8               [12] 3148 	mov	r0,a
      0033CE 86 82            [24] 3149 	mov	dpl,@r0
      0033D0 08               [12] 3150 	inc	r0
      0033D1 86 83            [24] 3151 	mov	dph,@r0
      0033D3 08               [12] 3152 	inc	r0
      0033D4 86 F0            [24] 3153 	mov	b,@r0
      0033D6 12 2F 3E         [24] 3154 	lcall	_usb_key_equals
      0033D9 AC 82            [24] 3155 	mov	r4,dpl
      0033DB E5 81            [12] 3156 	mov	a,sp
      0033DD 24 FC            [12] 3157 	add	a,#0xfc
      0033DF F5 81            [12] 3158 	mov	sp,a
      0033E1 EC               [12] 3159 	mov	a,r4
      0033E2 70 03            [24] 3160 	jnz	00187$
      0033E4 02 34 A0         [24] 3161 	ljmp	00121$
      0033E7                       3162 00187$:
                                   3163 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:207: int duty = usb_parse_i32(value);
      0033E7 E5 1F            [12] 3164 	mov	a,_bp
      0033E9 24 F7            [12] 3165 	add	a,#0xf7
      0033EB F8               [12] 3166 	mov	r0,a
      0033EC 86 82            [24] 3167 	mov	dpl,@r0
      0033EE 08               [12] 3168 	inc	r0
      0033EF 86 83            [24] 3169 	mov	dph,@r0
      0033F1 08               [12] 3170 	inc	r0
      0033F2 86 F0            [24] 3171 	mov	b,@r0
      0033F4 12 29 B4         [24] 3172 	lcall	_usb_parse_i32
      0033F7 AB 82            [24] 3173 	mov	r3,dpl
      0033F9 AC 83            [24] 3174 	mov	r4,dph
      0033FB E5 1F            [12] 3175 	mov	a,_bp
      0033FD 24 0C            [12] 3176 	add	a,#0x0c
      0033FF F8               [12] 3177 	mov	r0,a
      003400 A6 03            [24] 3178 	mov	@r0,ar3
      003402 08               [12] 3179 	inc	r0
      003403 A6 04            [24] 3180 	mov	@r0,ar4
                                   3181 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:208: if (duty < 0 || duty > 255) {
      003405 E5 1F            [12] 3182 	mov	a,_bp
      003407 24 0C            [12] 3183 	add	a,#0x0c
      003409 F8               [12] 3184 	mov	r0,a
      00340A 08               [12] 3185 	inc	r0
      00340B E6               [12] 3186 	mov	a,@r0
      00340C 20 E7 15         [24] 3187 	jb	acc.7,00117$
      00340F E5 1F            [12] 3188 	mov	a,_bp
      003411 24 0C            [12] 3189 	add	a,#0x0c
      003413 F8               [12] 3190 	mov	r0,a
      003414 C3               [12] 3191 	clr	c
      003415 74 FF            [12] 3192 	mov	a,#0xff
      003417 96               [12] 3193 	subb	a,@r0
      003418 74 80            [12] 3194 	mov	a,#(0x00 ^ 0x80)
      00341A 08               [12] 3195 	inc	r0
      00341B 86 F0            [24] 3196 	mov	b,@r0
      00341D 63 F0 80         [24] 3197 	xrl	b,#0x80
      003420 95 F0            [12] 3198 	subb	a,b
      003422 50 0F            [24] 3199 	jnc	00118$
      003424                       3200 00117$:
                                   3201 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:209: serial_println_str("ERR:PWM_OUT_OF_RANGE");
      003424 90 65 05         [24] 3202 	mov	dptr,#___str_11
      003427 75 F0 80         [24] 3203 	mov	b,#0x80
      00342A 12 1E 6A         [24] 3204 	lcall	_serial_println_str
                                   3205 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:210: return true;
      00342D 75 82 01         [24] 3206 	mov	dpl,#0x01
      003430 02 37 03         [24] 3207 	ljmp	00128$
      003433                       3208 00118$:
                                   3209 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:212: uc->override_pwm_duty = (uint8_t)duty;
      003433 A8 1F            [24] 3210 	mov	r0,_bp
      003435 08               [12] 3211 	inc	r0
      003436 74 5C            [12] 3212 	mov	a,#0x5c
      003438 26               [12] 3213 	add	a,@r0
      003439 FA               [12] 3214 	mov	r2,a
      00343A E4               [12] 3215 	clr	a
      00343B 08               [12] 3216 	inc	r0
      00343C 36               [12] 3217 	addc	a,@r0
      00343D FB               [12] 3218 	mov	r3,a
      00343E 08               [12] 3219 	inc	r0
      00343F 86 04            [24] 3220 	mov	ar4,@r0
      003441 E5 1F            [12] 3221 	mov	a,_bp
      003443 24 0C            [12] 3222 	add	a,#0x0c
      003445 F8               [12] 3223 	mov	r0,a
      003446 86 07            [24] 3224 	mov	ar7,@r0
      003448 8A 82            [24] 3225 	mov	dpl,r2
      00344A 8B 83            [24] 3226 	mov	dph,r3
      00344C 8C F0            [24] 3227 	mov	b,r4
      00344E EF               [12] 3228 	mov	a,r7
      00344F 12 56 BA         [24] 3229 	lcall	__gptrput
                                   3230 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:213: uc->pwm_duty_overridden = true;
      003452 A8 1F            [24] 3231 	mov	r0,_bp
      003454 08               [12] 3232 	inc	r0
      003455 74 60            [12] 3233 	mov	a,#0x60
      003457 26               [12] 3234 	add	a,@r0
      003458 FD               [12] 3235 	mov	r5,a
      003459 E4               [12] 3236 	clr	a
      00345A 08               [12] 3237 	inc	r0
      00345B 36               [12] 3238 	addc	a,@r0
      00345C FE               [12] 3239 	mov	r6,a
      00345D 08               [12] 3240 	inc	r0
      00345E 86 07            [24] 3241 	mov	ar7,@r0
      003460 8D 82            [24] 3242 	mov	dpl,r5
      003462 8E 83            [24] 3243 	mov	dph,r6
      003464 8F F0            [24] 3244 	mov	b,r7
      003466 74 01            [12] 3245 	mov	a,#0x01
      003468 12 56 BA         [24] 3246 	lcall	__gptrput
                                   3247 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:214: uc->override_active = true;
      00346B A8 1F            [24] 3248 	mov	r0,_bp
      00346D 08               [12] 3249 	inc	r0
      00346E 74 5D            [12] 3250 	mov	a,#0x5d
      003470 26               [12] 3251 	add	a,@r0
      003471 FD               [12] 3252 	mov	r5,a
      003472 E4               [12] 3253 	clr	a
      003473 08               [12] 3254 	inc	r0
      003474 36               [12] 3255 	addc	a,@r0
      003475 FE               [12] 3256 	mov	r6,a
      003476 08               [12] 3257 	inc	r0
      003477 86 07            [24] 3258 	mov	ar7,@r0
      003479 8D 82            [24] 3259 	mov	dpl,r5
      00347B 8E 83            [24] 3260 	mov	dph,r6
      00347D 8F F0            [24] 3261 	mov	b,r7
      00347F 74 01            [12] 3262 	mov	a,#0x01
      003481 12 56 BA         [24] 3263 	lcall	__gptrput
                                   3264 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:215: serial_print_str("OK:PWM=");
      003484 90 65 1A         [24] 3265 	mov	dptr,#___str_12
      003487 75 F0 80         [24] 3266 	mov	b,#0x80
      00348A 12 19 E7         [24] 3267 	lcall	_serial_print_str
                                   3268 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:216: serial_println_int(duty);
      00348D E5 1F            [12] 3269 	mov	a,_bp
      00348F 24 0C            [12] 3270 	add	a,#0x0c
      003491 F8               [12] 3271 	mov	r0,a
      003492 86 82            [24] 3272 	mov	dpl,@r0
      003494 08               [12] 3273 	inc	r0
      003495 86 83            [24] 3274 	mov	dph,@r0
      003497 12 1E 91         [24] 3275 	lcall	_serial_println_int
                                   3276 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:217: return true;
      00349A 75 82 01         [24] 3277 	mov	dpl,#0x01
      00349D 02 37 03         [24] 3278 	ljmp	00128$
      0034A0                       3279 00121$:
                                   3280 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:220: if (usb_key_equals(key, key_len, "TEMP_MIN")) {
      0034A0 74 22            [12] 3281 	mov	a,#___str_13
      0034A2 C0 E0            [24] 3282 	push	acc
      0034A4 74 65            [12] 3283 	mov	a,#(___str_13 >> 8)
      0034A6 C0 E0            [24] 3284 	push	acc
      0034A8 74 80            [12] 3285 	mov	a,#0x80
      0034AA C0 E0            [24] 3286 	push	acc
      0034AC E5 1F            [12] 3287 	mov	a,_bp
      0034AE 24 FA            [12] 3288 	add	a,#0xfa
      0034B0 F8               [12] 3289 	mov	r0,a
      0034B1 E6               [12] 3290 	mov	a,@r0
      0034B2 C0 E0            [24] 3291 	push	acc
      0034B4 E5 1F            [12] 3292 	mov	a,_bp
      0034B6 24 FB            [12] 3293 	add	a,#0xfb
      0034B8 F8               [12] 3294 	mov	r0,a
      0034B9 86 82            [24] 3295 	mov	dpl,@r0
      0034BB 08               [12] 3296 	inc	r0
      0034BC 86 83            [24] 3297 	mov	dph,@r0
      0034BE 08               [12] 3298 	inc	r0
      0034BF 86 F0            [24] 3299 	mov	b,@r0
      0034C1 12 2F 3E         [24] 3300 	lcall	_usb_key_equals
      0034C4 AF 82            [24] 3301 	mov	r7,dpl
      0034C6 E5 81            [12] 3302 	mov	a,sp
      0034C8 24 FC            [12] 3303 	add	a,#0xfc
      0034CA F5 81            [12] 3304 	mov	sp,a
      0034CC EF               [12] 3305 	mov	a,r7
      0034CD 70 03            [24] 3306 	jnz	00190$
      0034CF 02 35 6B         [24] 3307 	ljmp	00123$
      0034D2                       3308 00190$:
                                   3309 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:221: uc->override_temp_min = usb_parse_float(value);
      0034D2 A8 1F            [24] 3310 	mov	r0,_bp
      0034D4 08               [12] 3311 	inc	r0
      0034D5 74 50            [12] 3312 	mov	a,#0x50
      0034D7 26               [12] 3313 	add	a,@r0
      0034D8 FF               [12] 3314 	mov	r7,a
      0034D9 E4               [12] 3315 	clr	a
      0034DA 08               [12] 3316 	inc	r0
      0034DB 36               [12] 3317 	addc	a,@r0
      0034DC FE               [12] 3318 	mov	r6,a
      0034DD 08               [12] 3319 	inc	r0
      0034DE 86 05            [24] 3320 	mov	ar5,@r0
      0034E0 E5 1F            [12] 3321 	mov	a,_bp
      0034E2 24 F7            [12] 3322 	add	a,#0xf7
      0034E4 F8               [12] 3323 	mov	r0,a
      0034E5 86 82            [24] 3324 	mov	dpl,@r0
      0034E7 08               [12] 3325 	inc	r0
      0034E8 86 83            [24] 3326 	mov	dph,@r0
      0034EA 08               [12] 3327 	inc	r0
      0034EB 86 F0            [24] 3328 	mov	b,@r0
      0034ED C0 07            [24] 3329 	push	ar7
      0034EF C0 06            [24] 3330 	push	ar6
      0034F1 C0 05            [24] 3331 	push	ar5
      0034F3 12 2A 74         [24] 3332 	lcall	_usb_parse_float
      0034F6 C8               [12] 3333 	xch	a,r0
      0034F7 E5 1F            [12] 3334 	mov	a,_bp
      0034F9 24 04            [12] 3335 	add	a,#0x04
      0034FB C8               [12] 3336 	xch	a,r0
      0034FC A6 82            [24] 3337 	mov	@r0,dpl
      0034FE 08               [12] 3338 	inc	r0
      0034FF A6 83            [24] 3339 	mov	@r0,dph
      003501 08               [12] 3340 	inc	r0
      003502 A6 F0            [24] 3341 	mov	@r0,b
      003504 08               [12] 3342 	inc	r0
      003505 F6               [12] 3343 	mov	@r0,a
      003506 D0 05            [24] 3344 	pop	ar5
      003508 D0 06            [24] 3345 	pop	ar6
      00350A D0 07            [24] 3346 	pop	ar7
      00350C 8F 82            [24] 3347 	mov	dpl,r7
      00350E 8E 83            [24] 3348 	mov	dph,r6
      003510 8D F0            [24] 3349 	mov	b,r5
      003512 E5 1F            [12] 3350 	mov	a,_bp
      003514 24 04            [12] 3351 	add	a,#0x04
      003516 F8               [12] 3352 	mov	r0,a
      003517 E6               [12] 3353 	mov	a,@r0
      003518 12 56 BA         [24] 3354 	lcall	__gptrput
      00351B A3               [24] 3355 	inc	dptr
      00351C 08               [12] 3356 	inc	r0
      00351D E6               [12] 3357 	mov	a,@r0
      00351E 12 56 BA         [24] 3358 	lcall	__gptrput
      003521 A3               [24] 3359 	inc	dptr
      003522 08               [12] 3360 	inc	r0
      003523 E6               [12] 3361 	mov	a,@r0
      003524 12 56 BA         [24] 3362 	lcall	__gptrput
      003527 A3               [24] 3363 	inc	dptr
      003528 08               [12] 3364 	inc	r0
      003529 E6               [12] 3365 	mov	a,@r0
      00352A 12 56 BA         [24] 3366 	lcall	__gptrput
                                   3367 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:222: uc->temp_params_overridden = true;
      00352D A8 1F            [24] 3368 	mov	r0,_bp
      00352F 08               [12] 3369 	inc	r0
      003530 74 5F            [12] 3370 	mov	a,#0x5f
      003532 26               [12] 3371 	add	a,@r0
      003533 FD               [12] 3372 	mov	r5,a
      003534 E4               [12] 3373 	clr	a
      003535 08               [12] 3374 	inc	r0
      003536 36               [12] 3375 	addc	a,@r0
      003537 FE               [12] 3376 	mov	r6,a
      003538 08               [12] 3377 	inc	r0
      003539 86 07            [24] 3378 	mov	ar7,@r0
      00353B 8D 82            [24] 3379 	mov	dpl,r5
      00353D 8E 83            [24] 3380 	mov	dph,r6
      00353F 8F F0            [24] 3381 	mov	b,r7
      003541 74 01            [12] 3382 	mov	a,#0x01
      003543 12 56 BA         [24] 3383 	lcall	__gptrput
                                   3384 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:223: usb_reply_ok_key_float1("TEMP_MIN", uc->override_temp_min);
      003546 E5 1F            [12] 3385 	mov	a,_bp
      003548 24 04            [12] 3386 	add	a,#0x04
      00354A F8               [12] 3387 	mov	r0,a
      00354B 90 02 11         [24] 3388 	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
      00354E E6               [12] 3389 	mov	a,@r0
      00354F F0               [24] 3390 	movx	@dptr,a
      003550 08               [12] 3391 	inc	r0
      003551 E6               [12] 3392 	mov	a,@r0
      003552 A3               [24] 3393 	inc	dptr
      003553 F0               [24] 3394 	movx	@dptr,a
      003554 08               [12] 3395 	inc	r0
      003555 E6               [12] 3396 	mov	a,@r0
      003556 A3               [24] 3397 	inc	dptr
      003557 F0               [24] 3398 	movx	@dptr,a
      003558 08               [12] 3399 	inc	r0
      003559 E6               [12] 3400 	mov	a,@r0
      00355A A3               [24] 3401 	inc	dptr
      00355B F0               [24] 3402 	movx	@dptr,a
      00355C 90 65 22         [24] 3403 	mov	dptr,#___str_13
      00355F 75 F0 80         [24] 3404 	mov	b,#0x80
      003562 12 2E 90         [24] 3405 	lcall	_usb_reply_ok_key_float1
                                   3406 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:224: return true;
      003565 75 82 01         [24] 3407 	mov	dpl,#0x01
      003568 02 37 03         [24] 3408 	ljmp	00128$
      00356B                       3409 00123$:
                                   3410 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:227: if (usb_key_equals(key, key_len, "TEMP_MAX")) {
      00356B 74 2B            [12] 3411 	mov	a,#___str_14
      00356D C0 E0            [24] 3412 	push	acc
      00356F 74 65            [12] 3413 	mov	a,#(___str_14 >> 8)
      003571 C0 E0            [24] 3414 	push	acc
      003573 74 80            [12] 3415 	mov	a,#0x80
      003575 C0 E0            [24] 3416 	push	acc
      003577 E5 1F            [12] 3417 	mov	a,_bp
      003579 24 FA            [12] 3418 	add	a,#0xfa
      00357B F8               [12] 3419 	mov	r0,a
      00357C E6               [12] 3420 	mov	a,@r0
      00357D C0 E0            [24] 3421 	push	acc
      00357F E5 1F            [12] 3422 	mov	a,_bp
      003581 24 FB            [12] 3423 	add	a,#0xfb
      003583 F8               [12] 3424 	mov	r0,a
      003584 86 82            [24] 3425 	mov	dpl,@r0
      003586 08               [12] 3426 	inc	r0
      003587 86 83            [24] 3427 	mov	dph,@r0
      003589 08               [12] 3428 	inc	r0
      00358A 86 F0            [24] 3429 	mov	b,@r0
      00358C 12 2F 3E         [24] 3430 	lcall	_usb_key_equals
      00358F AF 82            [24] 3431 	mov	r7,dpl
      003591 E5 81            [12] 3432 	mov	a,sp
      003593 24 FC            [12] 3433 	add	a,#0xfc
      003595 F5 81            [12] 3434 	mov	sp,a
      003597 EF               [12] 3435 	mov	a,r7
      003598 70 03            [24] 3436 	jnz	00191$
      00359A 02 36 36         [24] 3437 	ljmp	00125$
      00359D                       3438 00191$:
                                   3439 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:228: uc->override_temp_max = usb_parse_float(value);
      00359D A8 1F            [24] 3440 	mov	r0,_bp
      00359F 08               [12] 3441 	inc	r0
      0035A0 74 54            [12] 3442 	mov	a,#0x54
      0035A2 26               [12] 3443 	add	a,@r0
      0035A3 FF               [12] 3444 	mov	r7,a
      0035A4 E4               [12] 3445 	clr	a
      0035A5 08               [12] 3446 	inc	r0
      0035A6 36               [12] 3447 	addc	a,@r0
      0035A7 FE               [12] 3448 	mov	r6,a
      0035A8 08               [12] 3449 	inc	r0
      0035A9 86 05            [24] 3450 	mov	ar5,@r0
      0035AB E5 1F            [12] 3451 	mov	a,_bp
      0035AD 24 F7            [12] 3452 	add	a,#0xf7
      0035AF F8               [12] 3453 	mov	r0,a
      0035B0 86 82            [24] 3454 	mov	dpl,@r0
      0035B2 08               [12] 3455 	inc	r0
      0035B3 86 83            [24] 3456 	mov	dph,@r0
      0035B5 08               [12] 3457 	inc	r0
      0035B6 86 F0            [24] 3458 	mov	b,@r0
      0035B8 C0 07            [24] 3459 	push	ar7
      0035BA C0 06            [24] 3460 	push	ar6
      0035BC C0 05            [24] 3461 	push	ar5
      0035BE 12 2A 74         [24] 3462 	lcall	_usb_parse_float
      0035C1 C8               [12] 3463 	xch	a,r0
      0035C2 E5 1F            [12] 3464 	mov	a,_bp
      0035C4 24 08            [12] 3465 	add	a,#0x08
      0035C6 C8               [12] 3466 	xch	a,r0
      0035C7 A6 82            [24] 3467 	mov	@r0,dpl
      0035C9 08               [12] 3468 	inc	r0
      0035CA A6 83            [24] 3469 	mov	@r0,dph
      0035CC 08               [12] 3470 	inc	r0
      0035CD A6 F0            [24] 3471 	mov	@r0,b
      0035CF 08               [12] 3472 	inc	r0
      0035D0 F6               [12] 3473 	mov	@r0,a
      0035D1 D0 05            [24] 3474 	pop	ar5
      0035D3 D0 06            [24] 3475 	pop	ar6
      0035D5 D0 07            [24] 3476 	pop	ar7
      0035D7 8F 82            [24] 3477 	mov	dpl,r7
      0035D9 8E 83            [24] 3478 	mov	dph,r6
      0035DB 8D F0            [24] 3479 	mov	b,r5
      0035DD E5 1F            [12] 3480 	mov	a,_bp
      0035DF 24 08            [12] 3481 	add	a,#0x08
      0035E1 F8               [12] 3482 	mov	r0,a
      0035E2 E6               [12] 3483 	mov	a,@r0
      0035E3 12 56 BA         [24] 3484 	lcall	__gptrput
      0035E6 A3               [24] 3485 	inc	dptr
      0035E7 08               [12] 3486 	inc	r0
      0035E8 E6               [12] 3487 	mov	a,@r0
      0035E9 12 56 BA         [24] 3488 	lcall	__gptrput
      0035EC A3               [24] 3489 	inc	dptr
      0035ED 08               [12] 3490 	inc	r0
      0035EE E6               [12] 3491 	mov	a,@r0
      0035EF 12 56 BA         [24] 3492 	lcall	__gptrput
      0035F2 A3               [24] 3493 	inc	dptr
      0035F3 08               [12] 3494 	inc	r0
      0035F4 E6               [12] 3495 	mov	a,@r0
      0035F5 12 56 BA         [24] 3496 	lcall	__gptrput
                                   3497 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:229: uc->temp_params_overridden = true;
      0035F8 A8 1F            [24] 3498 	mov	r0,_bp
      0035FA 08               [12] 3499 	inc	r0
      0035FB 74 5F            [12] 3500 	mov	a,#0x5f
      0035FD 26               [12] 3501 	add	a,@r0
      0035FE FD               [12] 3502 	mov	r5,a
      0035FF E4               [12] 3503 	clr	a
      003600 08               [12] 3504 	inc	r0
      003601 36               [12] 3505 	addc	a,@r0
      003602 FE               [12] 3506 	mov	r6,a
      003603 08               [12] 3507 	inc	r0
      003604 86 07            [24] 3508 	mov	ar7,@r0
      003606 8D 82            [24] 3509 	mov	dpl,r5
      003608 8E 83            [24] 3510 	mov	dph,r6
      00360A 8F F0            [24] 3511 	mov	b,r7
      00360C 74 01            [12] 3512 	mov	a,#0x01
      00360E 12 56 BA         [24] 3513 	lcall	__gptrput
                                   3514 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:230: usb_reply_ok_key_float1("TEMP_MAX", uc->override_temp_max);
      003611 E5 1F            [12] 3515 	mov	a,_bp
      003613 24 08            [12] 3516 	add	a,#0x08
      003615 F8               [12] 3517 	mov	r0,a
      003616 90 02 11         [24] 3518 	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
      003619 E6               [12] 3519 	mov	a,@r0
      00361A F0               [24] 3520 	movx	@dptr,a
      00361B 08               [12] 3521 	inc	r0
      00361C E6               [12] 3522 	mov	a,@r0
      00361D A3               [24] 3523 	inc	dptr
      00361E F0               [24] 3524 	movx	@dptr,a
      00361F 08               [12] 3525 	inc	r0
      003620 E6               [12] 3526 	mov	a,@r0
      003621 A3               [24] 3527 	inc	dptr
      003622 F0               [24] 3528 	movx	@dptr,a
      003623 08               [12] 3529 	inc	r0
      003624 E6               [12] 3530 	mov	a,@r0
      003625 A3               [24] 3531 	inc	dptr
      003626 F0               [24] 3532 	movx	@dptr,a
      003627 90 65 2B         [24] 3533 	mov	dptr,#___str_14
      00362A 75 F0 80         [24] 3534 	mov	b,#0x80
      00362D 12 2E 90         [24] 3535 	lcall	_usb_reply_ok_key_float1
                                   3536 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:231: return true;
      003630 75 82 01         [24] 3537 	mov	dpl,#0x01
      003633 02 37 03         [24] 3538 	ljmp	00128$
      003636                       3539 00125$:
                                   3540 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:234: if (usb_key_equals(key, key_len, "TEMP_OVERHEAT")) {
      003636 74 34            [12] 3541 	mov	a,#___str_15
      003638 C0 E0            [24] 3542 	push	acc
      00363A 74 65            [12] 3543 	mov	a,#(___str_15 >> 8)
      00363C C0 E0            [24] 3544 	push	acc
      00363E 74 80            [12] 3545 	mov	a,#0x80
      003640 C0 E0            [24] 3546 	push	acc
      003642 E5 1F            [12] 3547 	mov	a,_bp
      003644 24 FA            [12] 3548 	add	a,#0xfa
      003646 F8               [12] 3549 	mov	r0,a
      003647 E6               [12] 3550 	mov	a,@r0
      003648 C0 E0            [24] 3551 	push	acc
      00364A E5 1F            [12] 3552 	mov	a,_bp
      00364C 24 FB            [12] 3553 	add	a,#0xfb
      00364E F8               [12] 3554 	mov	r0,a
      00364F 86 82            [24] 3555 	mov	dpl,@r0
      003651 08               [12] 3556 	inc	r0
      003652 86 83            [24] 3557 	mov	dph,@r0
      003654 08               [12] 3558 	inc	r0
      003655 86 F0            [24] 3559 	mov	b,@r0
      003657 12 2F 3E         [24] 3560 	lcall	_usb_key_equals
      00365A AF 82            [24] 3561 	mov	r7,dpl
      00365C E5 81            [12] 3562 	mov	a,sp
      00365E 24 FC            [12] 3563 	add	a,#0xfc
      003660 F5 81            [12] 3564 	mov	sp,a
      003662 EF               [12] 3565 	mov	a,r7
      003663 70 03            [24] 3566 	jnz	00192$
      003665 02 37 00         [24] 3567 	ljmp	00127$
      003668                       3568 00192$:
                                   3569 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:235: uc->override_temp_overheat = usb_parse_float(value);
      003668 A8 1F            [24] 3570 	mov	r0,_bp
      00366A 08               [12] 3571 	inc	r0
      00366B 74 58            [12] 3572 	mov	a,#0x58
      00366D 26               [12] 3573 	add	a,@r0
      00366E FF               [12] 3574 	mov	r7,a
      00366F E4               [12] 3575 	clr	a
      003670 08               [12] 3576 	inc	r0
      003671 36               [12] 3577 	addc	a,@r0
      003672 FE               [12] 3578 	mov	r6,a
      003673 08               [12] 3579 	inc	r0
      003674 86 05            [24] 3580 	mov	ar5,@r0
      003676 E5 1F            [12] 3581 	mov	a,_bp
      003678 24 F7            [12] 3582 	add	a,#0xf7
      00367A F8               [12] 3583 	mov	r0,a
      00367B 86 82            [24] 3584 	mov	dpl,@r0
      00367D 08               [12] 3585 	inc	r0
      00367E 86 83            [24] 3586 	mov	dph,@r0
      003680 08               [12] 3587 	inc	r0
      003681 86 F0            [24] 3588 	mov	b,@r0
      003683 C0 07            [24] 3589 	push	ar7
      003685 C0 06            [24] 3590 	push	ar6
      003687 C0 05            [24] 3591 	push	ar5
      003689 12 2A 74         [24] 3592 	lcall	_usb_parse_float
      00368C C8               [12] 3593 	xch	a,r0
      00368D E5 1F            [12] 3594 	mov	a,_bp
      00368F 24 04            [12] 3595 	add	a,#0x04
      003691 C8               [12] 3596 	xch	a,r0
      003692 A6 82            [24] 3597 	mov	@r0,dpl
      003694 08               [12] 3598 	inc	r0
      003695 A6 83            [24] 3599 	mov	@r0,dph
      003697 08               [12] 3600 	inc	r0
      003698 A6 F0            [24] 3601 	mov	@r0,b
      00369A 08               [12] 3602 	inc	r0
      00369B F6               [12] 3603 	mov	@r0,a
      00369C D0 05            [24] 3604 	pop	ar5
      00369E D0 06            [24] 3605 	pop	ar6
      0036A0 D0 07            [24] 3606 	pop	ar7
      0036A2 8F 82            [24] 3607 	mov	dpl,r7
      0036A4 8E 83            [24] 3608 	mov	dph,r6
      0036A6 8D F0            [24] 3609 	mov	b,r5
      0036A8 E5 1F            [12] 3610 	mov	a,_bp
      0036AA 24 04            [12] 3611 	add	a,#0x04
      0036AC F8               [12] 3612 	mov	r0,a
      0036AD E6               [12] 3613 	mov	a,@r0
      0036AE 12 56 BA         [24] 3614 	lcall	__gptrput
      0036B1 A3               [24] 3615 	inc	dptr
      0036B2 08               [12] 3616 	inc	r0
      0036B3 E6               [12] 3617 	mov	a,@r0
      0036B4 12 56 BA         [24] 3618 	lcall	__gptrput
      0036B7 A3               [24] 3619 	inc	dptr
      0036B8 08               [12] 3620 	inc	r0
      0036B9 E6               [12] 3621 	mov	a,@r0
      0036BA 12 56 BA         [24] 3622 	lcall	__gptrput
      0036BD A3               [24] 3623 	inc	dptr
      0036BE 08               [12] 3624 	inc	r0
      0036BF E6               [12] 3625 	mov	a,@r0
      0036C0 12 56 BA         [24] 3626 	lcall	__gptrput
                                   3627 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:236: uc->temp_params_overridden = true;
      0036C3 A8 1F            [24] 3628 	mov	r0,_bp
      0036C5 08               [12] 3629 	inc	r0
      0036C6 74 5F            [12] 3630 	mov	a,#0x5f
      0036C8 26               [12] 3631 	add	a,@r0
      0036C9 FD               [12] 3632 	mov	r5,a
      0036CA E4               [12] 3633 	clr	a
      0036CB 08               [12] 3634 	inc	r0
      0036CC 36               [12] 3635 	addc	a,@r0
      0036CD FE               [12] 3636 	mov	r6,a
      0036CE 08               [12] 3637 	inc	r0
      0036CF 86 07            [24] 3638 	mov	ar7,@r0
      0036D1 8D 82            [24] 3639 	mov	dpl,r5
      0036D3 8E 83            [24] 3640 	mov	dph,r6
      0036D5 8F F0            [24] 3641 	mov	b,r7
      0036D7 74 01            [12] 3642 	mov	a,#0x01
      0036D9 12 56 BA         [24] 3643 	lcall	__gptrput
                                   3644 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:237: usb_reply_ok_key_float1("TEMP_OVERHEAT", uc->override_temp_overheat);
      0036DC E5 1F            [12] 3645 	mov	a,_bp
      0036DE 24 04            [12] 3646 	add	a,#0x04
      0036E0 F8               [12] 3647 	mov	r0,a
      0036E1 90 02 11         [24] 3648 	mov	dptr,#_usb_reply_ok_key_float1_PARM_2
      0036E4 E6               [12] 3649 	mov	a,@r0
      0036E5 F0               [24] 3650 	movx	@dptr,a
      0036E6 08               [12] 3651 	inc	r0
      0036E7 E6               [12] 3652 	mov	a,@r0
      0036E8 A3               [24] 3653 	inc	dptr
      0036E9 F0               [24] 3654 	movx	@dptr,a
      0036EA 08               [12] 3655 	inc	r0
      0036EB E6               [12] 3656 	mov	a,@r0
      0036EC A3               [24] 3657 	inc	dptr
      0036ED F0               [24] 3658 	movx	@dptr,a
      0036EE 08               [12] 3659 	inc	r0
      0036EF E6               [12] 3660 	mov	a,@r0
      0036F0 A3               [24] 3661 	inc	dptr
      0036F1 F0               [24] 3662 	movx	@dptr,a
      0036F2 90 65 34         [24] 3663 	mov	dptr,#___str_15
      0036F5 75 F0 80         [24] 3664 	mov	b,#0x80
      0036F8 12 2E 90         [24] 3665 	lcall	_usb_reply_ok_key_float1
                                   3666 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:238: return true;
      0036FB 75 82 01         [24] 3667 	mov	dpl,#0x01
      0036FE 80 03            [24] 3668 	sjmp	00128$
      003700                       3669 00127$:
                                   3670 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:241: return false;
      003700 75 82 00         [24] 3671 	mov	dpl,#0x00
      003703                       3672 00128$:
                                   3673 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:242: }
      003703 85 1F 81         [24] 3674 	mov	sp,_bp
      003706 D0 1F            [24] 3675 	pop	_bp
      003708 22               [24] 3676 	ret
                                   3677 ;------------------------------------------------------------
                                   3678 ;Allocation info for local variables in function 'usb_handleCommand'
                                   3679 ;------------------------------------------------------------
                                   3680 ;sloc0                     Allocated with name '_usb_handleCommand_sloc0_1_0'
                                   3681 ;cmd                       Allocated with name '_usb_handleCommand_PARM_2'
                                   3682 ;uc                        Allocated with name '_usb_handleCommand_uc_65536_253'
                                   3683 ;key                       Allocated with name '_usb_handleCommand_key_131072_259'
                                   3684 ;body                      Allocated with name '_usb_handleCommand_body_131072_261'
                                   3685 ;equal                     Allocated with name '_usb_handleCommand_equal_131072_261'
                                   3686 ;key_len                   Allocated with name '_usb_handleCommand_key_len_131072_261'
                                   3687 ;------------------------------------------------------------
                                   3688 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:244: static void usb_handleCommand(USBController* uc, const char* cmd) {
                                   3689 ;	-----------------------------------------
                                   3690 ;	 function usb_handleCommand
                                   3691 ;	-----------------------------------------
      003709                       3692 _usb_handleCommand:
      003709 AF F0            [24] 3693 	mov	r7,b
      00370B AE 83            [24] 3694 	mov	r6,dph
      00370D E5 82            [12] 3695 	mov	a,dpl
      00370F 90 02 26         [24] 3696 	mov	dptr,#_usb_handleCommand_uc_65536_253
      003712 F0               [24] 3697 	movx	@dptr,a
      003713 EE               [12] 3698 	mov	a,r6
      003714 A3               [24] 3699 	inc	dptr
      003715 F0               [24] 3700 	movx	@dptr,a
      003716 EF               [12] 3701 	mov	a,r7
      003717 A3               [24] 3702 	inc	dptr
      003718 F0               [24] 3703 	movx	@dptr,a
                                   3704 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:245: if (usb_str_eq(cmd, "HELLO")) {
      003719 90 02 23         [24] 3705 	mov	dptr,#_usb_handleCommand_PARM_2
      00371C E0               [24] 3706 	movx	a,@dptr
      00371D FD               [12] 3707 	mov	r5,a
      00371E A3               [24] 3708 	inc	dptr
      00371F E0               [24] 3709 	movx	a,@dptr
      003720 FE               [12] 3710 	mov	r6,a
      003721 A3               [24] 3711 	inc	dptr
      003722 E0               [24] 3712 	movx	a,@dptr
      003723 FF               [12] 3713 	mov	r7,a
      003724 74 42            [12] 3714 	mov	a,#___str_16
      003726 C0 E0            [24] 3715 	push	acc
      003728 74 65            [12] 3716 	mov	a,#(___str_16 >> 8)
      00372A C0 E0            [24] 3717 	push	acc
      00372C 74 80            [12] 3718 	mov	a,#0x80
      00372E C0 E0            [24] 3719 	push	acc
      003730 8D 82            [24] 3720 	mov	dpl,r5
      003732 8E 83            [24] 3721 	mov	dph,r6
      003734 8F F0            [24] 3722 	mov	b,r7
      003736 12 27 5E         [24] 3723 	lcall	_usb_str_eq
      003739 AF 82            [24] 3724 	mov	r7,dpl
      00373B 15 81            [12] 3725 	dec	sp
      00373D 15 81            [12] 3726 	dec	sp
      00373F 15 81            [12] 3727 	dec	sp
      003741 EF               [12] 3728 	mov	a,r7
      003742 60 1D            [24] 3729 	jz	00102$
                                   3730 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:246: usb_set_connected(uc);
      003744 90 02 26         [24] 3731 	mov	dptr,#_usb_handleCommand_uc_65536_253
      003747 E0               [24] 3732 	movx	a,@dptr
      003748 FD               [12] 3733 	mov	r5,a
      003749 A3               [24] 3734 	inc	dptr
      00374A E0               [24] 3735 	movx	a,@dptr
      00374B FE               [12] 3736 	mov	r6,a
      00374C A3               [24] 3737 	inc	dptr
      00374D E0               [24] 3738 	movx	a,@dptr
      00374E FF               [12] 3739 	mov	r7,a
      00374F 8D 82            [24] 3740 	mov	dpl,r5
      003751 8E 83            [24] 3741 	mov	dph,r6
      003753 8F F0            [24] 3742 	mov	b,r7
      003755 12 2D 73         [24] 3743 	lcall	_usb_set_connected
                                   3744 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:247: serial_println_str("DEVICE:CH552G_FAN_CTRL_V1.0");
      003758 90 65 48         [24] 3745 	mov	dptr,#___str_17
      00375B 75 F0 80         [24] 3746 	mov	b,#0x80
                                   3747 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:248: return;
      00375E 02 1E 6A         [24] 3748 	ljmp	_serial_println_str
      003761                       3749 00102$:
                                   3750 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:251: if (usb_str_eq(cmd, "CONNECT")) {
      003761 90 02 23         [24] 3751 	mov	dptr,#_usb_handleCommand_PARM_2
      003764 E0               [24] 3752 	movx	a,@dptr
      003765 FD               [12] 3753 	mov	r5,a
      003766 A3               [24] 3754 	inc	dptr
      003767 E0               [24] 3755 	movx	a,@dptr
      003768 FE               [12] 3756 	mov	r6,a
      003769 A3               [24] 3757 	inc	dptr
      00376A E0               [24] 3758 	movx	a,@dptr
      00376B FF               [12] 3759 	mov	r7,a
      00376C 74 64            [12] 3760 	mov	a,#___str_18
      00376E C0 E0            [24] 3761 	push	acc
      003770 74 65            [12] 3762 	mov	a,#(___str_18 >> 8)
      003772 C0 E0            [24] 3763 	push	acc
      003774 74 80            [12] 3764 	mov	a,#0x80
      003776 C0 E0            [24] 3765 	push	acc
      003778 8D 82            [24] 3766 	mov	dpl,r5
      00377A 8E 83            [24] 3767 	mov	dph,r6
      00377C 8F F0            [24] 3768 	mov	b,r7
      00377E 12 27 5E         [24] 3769 	lcall	_usb_str_eq
      003781 AF 82            [24] 3770 	mov	r7,dpl
      003783 15 81            [12] 3771 	dec	sp
      003785 15 81            [12] 3772 	dec	sp
      003787 15 81            [12] 3773 	dec	sp
      003789 EF               [12] 3774 	mov	a,r7
      00378A 60 1D            [24] 3775 	jz	00104$
                                   3776 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:252: usb_set_connected(uc);
      00378C 90 02 26         [24] 3777 	mov	dptr,#_usb_handleCommand_uc_65536_253
      00378F E0               [24] 3778 	movx	a,@dptr
      003790 FD               [12] 3779 	mov	r5,a
      003791 A3               [24] 3780 	inc	dptr
      003792 E0               [24] 3781 	movx	a,@dptr
      003793 FE               [12] 3782 	mov	r6,a
      003794 A3               [24] 3783 	inc	dptr
      003795 E0               [24] 3784 	movx	a,@dptr
      003796 FF               [12] 3785 	mov	r7,a
      003797 8D 82            [24] 3786 	mov	dpl,r5
      003799 8E 83            [24] 3787 	mov	dph,r6
      00379B 8F F0            [24] 3788 	mov	b,r7
      00379D 12 2D 73         [24] 3789 	lcall	_usb_set_connected
                                   3790 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:253: serial_println_str("OK:CONNECTED");
      0037A0 90 65 6C         [24] 3791 	mov	dptr,#___str_19
      0037A3 75 F0 80         [24] 3792 	mov	b,#0x80
                                   3793 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:254: return;
      0037A6 02 1E 6A         [24] 3794 	ljmp	_serial_println_str
      0037A9                       3795 00104$:
                                   3796 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:257: usb_set_connected(uc);
      0037A9 90 02 26         [24] 3797 	mov	dptr,#_usb_handleCommand_uc_65536_253
      0037AC E0               [24] 3798 	movx	a,@dptr
      0037AD FD               [12] 3799 	mov	r5,a
      0037AE A3               [24] 3800 	inc	dptr
      0037AF E0               [24] 3801 	movx	a,@dptr
      0037B0 FE               [12] 3802 	mov	r6,a
      0037B1 A3               [24] 3803 	inc	dptr
      0037B2 E0               [24] 3804 	movx	a,@dptr
      0037B3 FF               [12] 3805 	mov	r7,a
      0037B4 8D 82            [24] 3806 	mov	dpl,r5
      0037B6 8E 83            [24] 3807 	mov	dph,r6
      0037B8 8F F0            [24] 3808 	mov	b,r7
      0037BA 12 2D 73         [24] 3809 	lcall	_usb_set_connected
                                   3810 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:259: if (usb_str_eq(cmd, "PING")) {
      0037BD 90 02 23         [24] 3811 	mov	dptr,#_usb_handleCommand_PARM_2
      0037C0 E0               [24] 3812 	movx	a,@dptr
      0037C1 FD               [12] 3813 	mov	r5,a
      0037C2 A3               [24] 3814 	inc	dptr
      0037C3 E0               [24] 3815 	movx	a,@dptr
      0037C4 FE               [12] 3816 	mov	r6,a
      0037C5 A3               [24] 3817 	inc	dptr
      0037C6 E0               [24] 3818 	movx	a,@dptr
      0037C7 FF               [12] 3819 	mov	r7,a
      0037C8 74 79            [12] 3820 	mov	a,#___str_20
      0037CA C0 E0            [24] 3821 	push	acc
      0037CC 74 65            [12] 3822 	mov	a,#(___str_20 >> 8)
      0037CE C0 E0            [24] 3823 	push	acc
      0037D0 74 80            [12] 3824 	mov	a,#0x80
      0037D2 C0 E0            [24] 3825 	push	acc
      0037D4 8D 82            [24] 3826 	mov	dpl,r5
      0037D6 8E 83            [24] 3827 	mov	dph,r6
      0037D8 8F F0            [24] 3828 	mov	b,r7
      0037DA 12 27 5E         [24] 3829 	lcall	_usb_str_eq
      0037DD AF 82            [24] 3830 	mov	r7,dpl
      0037DF 15 81            [12] 3831 	dec	sp
      0037E1 15 81            [12] 3832 	dec	sp
      0037E3 15 81            [12] 3833 	dec	sp
      0037E5 EF               [12] 3834 	mov	a,r7
      0037E6 60 09            [24] 3835 	jz	00106$
                                   3836 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:260: serial_println_str("PONG");
      0037E8 90 65 7E         [24] 3837 	mov	dptr,#___str_21
      0037EB 75 F0 80         [24] 3838 	mov	b,#0x80
                                   3839 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:261: return;
      0037EE 02 1E 6A         [24] 3840 	ljmp	_serial_println_str
      0037F1                       3841 00106$:
                                   3842 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:264: if (usb_str_eq(cmd, "RESET")) {
      0037F1 90 02 23         [24] 3843 	mov	dptr,#_usb_handleCommand_PARM_2
      0037F4 E0               [24] 3844 	movx	a,@dptr
      0037F5 FD               [12] 3845 	mov	r5,a
      0037F6 A3               [24] 3846 	inc	dptr
      0037F7 E0               [24] 3847 	movx	a,@dptr
      0037F8 FE               [12] 3848 	mov	r6,a
      0037F9 A3               [24] 3849 	inc	dptr
      0037FA E0               [24] 3850 	movx	a,@dptr
      0037FB FF               [12] 3851 	mov	r7,a
      0037FC 74 83            [12] 3852 	mov	a,#___str_22
      0037FE C0 E0            [24] 3853 	push	acc
      003800 74 65            [12] 3854 	mov	a,#(___str_22 >> 8)
      003802 C0 E0            [24] 3855 	push	acc
      003804 74 80            [12] 3856 	mov	a,#0x80
      003806 C0 E0            [24] 3857 	push	acc
      003808 8D 82            [24] 3858 	mov	dpl,r5
      00380A 8E 83            [24] 3859 	mov	dph,r6
      00380C 8F F0            [24] 3860 	mov	b,r7
      00380E 12 27 5E         [24] 3861 	lcall	_usb_str_eq
      003811 AF 82            [24] 3862 	mov	r7,dpl
      003813 15 81            [12] 3863 	dec	sp
      003815 15 81            [12] 3864 	dec	sp
      003817 15 81            [12] 3865 	dec	sp
      003819 EF               [12] 3866 	mov	a,r7
      00381A 60 26            [24] 3867 	jz	00108$
                                   3868 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:265: uc->reset_requested = true;
      00381C 90 02 26         [24] 3869 	mov	dptr,#_usb_handleCommand_uc_65536_253
      00381F E0               [24] 3870 	movx	a,@dptr
      003820 FD               [12] 3871 	mov	r5,a
      003821 A3               [24] 3872 	inc	dptr
      003822 E0               [24] 3873 	movx	a,@dptr
      003823 FE               [12] 3874 	mov	r6,a
      003824 A3               [24] 3875 	inc	dptr
      003825 E0               [24] 3876 	movx	a,@dptr
      003826 FF               [12] 3877 	mov	r7,a
      003827 74 61            [12] 3878 	mov	a,#0x61
      003829 2D               [12] 3879 	add	a,r5
      00382A FD               [12] 3880 	mov	r5,a
      00382B E4               [12] 3881 	clr	a
      00382C 3E               [12] 3882 	addc	a,r6
      00382D FE               [12] 3883 	mov	r6,a
      00382E 8D 82            [24] 3884 	mov	dpl,r5
      003830 8E 83            [24] 3885 	mov	dph,r6
      003832 8F F0            [24] 3886 	mov	b,r7
      003834 74 01            [12] 3887 	mov	a,#0x01
      003836 12 56 BA         [24] 3888 	lcall	__gptrput
                                   3889 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:266: serial_println_str("OK:RESET");
      003839 90 65 89         [24] 3890 	mov	dptr,#___str_23
      00383C 75 F0 80         [24] 3891 	mov	b,#0x80
                                   3892 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:267: return;
      00383F 02 1E 6A         [24] 3893 	ljmp	_serial_println_str
      003842                       3894 00108$:
                                   3895 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:270: if (usb_starts_with(cmd, "GET:")) {
      003842 90 02 23         [24] 3896 	mov	dptr,#_usb_handleCommand_PARM_2
      003845 E0               [24] 3897 	movx	a,@dptr
      003846 FD               [12] 3898 	mov	r5,a
      003847 A3               [24] 3899 	inc	dptr
      003848 E0               [24] 3900 	movx	a,@dptr
      003849 FE               [12] 3901 	mov	r6,a
      00384A A3               [24] 3902 	inc	dptr
      00384B E0               [24] 3903 	movx	a,@dptr
      00384C FF               [12] 3904 	mov	r7,a
      00384D 74 92            [12] 3905 	mov	a,#___str_24
      00384F C0 E0            [24] 3906 	push	acc
      003851 74 65            [12] 3907 	mov	a,#(___str_24 >> 8)
      003853 C0 E0            [24] 3908 	push	acc
      003855 74 80            [12] 3909 	mov	a,#0x80
      003857 C0 E0            [24] 3910 	push	acc
      003859 8D 82            [24] 3911 	mov	dpl,r5
      00385B 8E 83            [24] 3912 	mov	dph,r6
      00385D 8F F0            [24] 3913 	mov	b,r7
      00385F 12 28 2D         [24] 3914 	lcall	_usb_starts_with
      003862 AF 82            [24] 3915 	mov	r7,dpl
      003864 15 81            [12] 3916 	dec	sp
      003866 15 81            [12] 3917 	dec	sp
      003868 15 81            [12] 3918 	dec	sp
      00386A EF               [12] 3919 	mov	a,r7
      00386B 60 62            [24] 3920 	jz	00112$
                                   3921 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:271: const char* key = cmd + 4;
      00386D 90 02 23         [24] 3922 	mov	dptr,#_usb_handleCommand_PARM_2
      003870 E0               [24] 3923 	movx	a,@dptr
      003871 FD               [12] 3924 	mov	r5,a
      003872 A3               [24] 3925 	inc	dptr
      003873 E0               [24] 3926 	movx	a,@dptr
      003874 FE               [12] 3927 	mov	r6,a
      003875 A3               [24] 3928 	inc	dptr
      003876 E0               [24] 3929 	movx	a,@dptr
      003877 FF               [12] 3930 	mov	r7,a
      003878 74 04            [12] 3931 	mov	a,#0x04
      00387A 2D               [12] 3932 	add	a,r5
      00387B FD               [12] 3933 	mov	r5,a
      00387C E4               [12] 3934 	clr	a
      00387D 3E               [12] 3935 	addc	a,r6
      00387E FE               [12] 3936 	mov	r6,a
                                   3937 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:272: if (!usb_handle_get(uc, key)) {
      00387F 90 02 26         [24] 3938 	mov	dptr,#_usb_handleCommand_uc_65536_253
      003882 E0               [24] 3939 	movx	a,@dptr
      003883 FA               [12] 3940 	mov	r2,a
      003884 A3               [24] 3941 	inc	dptr
      003885 E0               [24] 3942 	movx	a,@dptr
      003886 FB               [12] 3943 	mov	r3,a
      003887 A3               [24] 3944 	inc	dptr
      003888 E0               [24] 3945 	movx	a,@dptr
      003889 FC               [12] 3946 	mov	r4,a
      00388A C0 07            [24] 3947 	push	ar7
      00388C C0 06            [24] 3948 	push	ar6
      00388E C0 05            [24] 3949 	push	ar5
      003890 C0 05            [24] 3950 	push	ar5
      003892 C0 06            [24] 3951 	push	ar6
      003894 C0 07            [24] 3952 	push	ar7
      003896 8A 82            [24] 3953 	mov	dpl,r2
      003898 8B 83            [24] 3954 	mov	dph,r3
      00389A 8C F0            [24] 3955 	mov	b,r4
      00389C 12 30 16         [24] 3956 	lcall	_usb_handle_get
      00389F AC 82            [24] 3957 	mov	r4,dpl
      0038A1 15 81            [12] 3958 	dec	sp
      0038A3 15 81            [12] 3959 	dec	sp
      0038A5 15 81            [12] 3960 	dec	sp
      0038A7 D0 05            [24] 3961 	pop	ar5
      0038A9 D0 06            [24] 3962 	pop	ar6
      0038AB D0 07            [24] 3963 	pop	ar7
      0038AD EC               [12] 3964 	mov	a,r4
      0038AE 70 1E            [24] 3965 	jnz	00110$
                                   3966 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:273: serial_print_str("ERR:UNKNOWN_GET:");
      0038B0 90 65 97         [24] 3967 	mov	dptr,#___str_25
      0038B3 75 F0 80         [24] 3968 	mov	b,#0x80
      0038B6 C0 07            [24] 3969 	push	ar7
      0038B8 C0 06            [24] 3970 	push	ar6
      0038BA C0 05            [24] 3971 	push	ar5
      0038BC 12 19 E7         [24] 3972 	lcall	_serial_print_str
      0038BF D0 05            [24] 3973 	pop	ar5
      0038C1 D0 06            [24] 3974 	pop	ar6
      0038C3 D0 07            [24] 3975 	pop	ar7
                                   3976 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:274: serial_println_str(key);
      0038C5 8D 82            [24] 3977 	mov	dpl,r5
      0038C7 8E 83            [24] 3978 	mov	dph,r6
      0038C9 8F F0            [24] 3979 	mov	b,r7
                                   3980 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:276: return;
      0038CB 02 1E 6A         [24] 3981 	ljmp	_serial_println_str
      0038CE                       3982 00110$:
      0038CE 22               [24] 3983 	ret
      0038CF                       3984 00112$:
                                   3985 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:279: if (usb_starts_with(cmd, "SET:")) {
      0038CF 90 02 23         [24] 3986 	mov	dptr,#_usb_handleCommand_PARM_2
      0038D2 E0               [24] 3987 	movx	a,@dptr
      0038D3 FD               [12] 3988 	mov	r5,a
      0038D4 A3               [24] 3989 	inc	dptr
      0038D5 E0               [24] 3990 	movx	a,@dptr
      0038D6 FE               [12] 3991 	mov	r6,a
      0038D7 A3               [24] 3992 	inc	dptr
      0038D8 E0               [24] 3993 	movx	a,@dptr
      0038D9 FF               [12] 3994 	mov	r7,a
      0038DA 74 A8            [12] 3995 	mov	a,#___str_26
      0038DC C0 E0            [24] 3996 	push	acc
      0038DE 74 65            [12] 3997 	mov	a,#(___str_26 >> 8)
      0038E0 C0 E0            [24] 3998 	push	acc
      0038E2 74 80            [12] 3999 	mov	a,#0x80
      0038E4 C0 E0            [24] 4000 	push	acc
      0038E6 8D 82            [24] 4001 	mov	dpl,r5
      0038E8 8E 83            [24] 4002 	mov	dph,r6
      0038EA 8F F0            [24] 4003 	mov	b,r7
      0038EC 12 28 2D         [24] 4004 	lcall	_usb_starts_with
      0038EF AF 82            [24] 4005 	mov	r7,dpl
      0038F1 15 81            [12] 4006 	dec	sp
      0038F3 15 81            [12] 4007 	dec	sp
      0038F5 15 81            [12] 4008 	dec	sp
      0038F7 EF               [12] 4009 	mov	a,r7
      0038F8 70 03            [24] 4010 	jnz	00169$
      0038FA 02 39 D8         [24] 4011 	ljmp	00120$
      0038FD                       4012 00169$:
                                   4013 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:280: const char* body = cmd + 4;
      0038FD 90 02 23         [24] 4014 	mov	dptr,#_usb_handleCommand_PARM_2
      003900 E0               [24] 4015 	movx	a,@dptr
      003901 FD               [12] 4016 	mov	r5,a
      003902 A3               [24] 4017 	inc	dptr
      003903 E0               [24] 4018 	movx	a,@dptr
      003904 FE               [12] 4019 	mov	r6,a
      003905 A3               [24] 4020 	inc	dptr
      003906 E0               [24] 4021 	movx	a,@dptr
      003907 FF               [12] 4022 	mov	r7,a
      003908 74 04            [12] 4023 	mov	a,#0x04
      00390A 2D               [12] 4024 	add	a,r5
      00390B FD               [12] 4025 	mov	r5,a
      00390C E4               [12] 4026 	clr	a
      00390D 3E               [12] 4027 	addc	a,r6
      00390E FE               [12] 4028 	mov	r6,a
                                   4029 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:281: const char* equal = usb_find_char(body, '=');
      00390F C0 07            [24] 4030 	push	ar7
      003911 C0 06            [24] 4031 	push	ar6
      003913 C0 05            [24] 4032 	push	ar5
      003915 74 3D            [12] 4033 	mov	a,#0x3d
      003917 C0 E0            [24] 4034 	push	acc
      003919 8D 82            [24] 4035 	mov	dpl,r5
      00391B 8E 83            [24] 4036 	mov	dph,r6
      00391D 8F F0            [24] 4037 	mov	b,r7
      00391F 12 28 98         [24] 4038 	lcall	_usb_find_char
      003922 AA 82            [24] 4039 	mov	r2,dpl
      003924 AB 83            [24] 4040 	mov	r3,dph
      003926 AC F0            [24] 4041 	mov	r4,b
      003928 15 81            [12] 4042 	dec	sp
      00392A D0 05            [24] 4043 	pop	ar5
      00392C D0 06            [24] 4044 	pop	ar6
      00392E D0 07            [24] 4045 	pop	ar7
                                   4046 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:284: if (!equal) {
      003930 EA               [12] 4047 	mov	a,r2
      003931 4B               [12] 4048 	orl	a,r3
      003932 70 1E            [24] 4049 	jnz	00114$
                                   4050 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:285: serial_print_str("ERR:UNKNOWN_SET:");
      003934 90 65 AD         [24] 4051 	mov	dptr,#___str_27
      003937 75 F0 80         [24] 4052 	mov	b,#0x80
      00393A C0 07            [24] 4053 	push	ar7
      00393C C0 06            [24] 4054 	push	ar6
      00393E C0 05            [24] 4055 	push	ar5
      003940 12 19 E7         [24] 4056 	lcall	_serial_print_str
      003943 D0 05            [24] 4057 	pop	ar5
      003945 D0 06            [24] 4058 	pop	ar6
      003947 D0 07            [24] 4059 	pop	ar7
                                   4060 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:286: serial_println_str(body);
      003949 8D 82            [24] 4061 	mov	dpl,r5
      00394B 8E 83            [24] 4062 	mov	dph,r6
      00394D 8F F0            [24] 4063 	mov	b,r7
                                   4064 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:287: return;
      00394F 02 1E 6A         [24] 4065 	ljmp	_serial_println_str
      003952                       4066 00114$:
                                   4067 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:290: key_len = (uint8_t)(equal - body);
      003952 8A 01            [24] 4068 	mov	ar1,r2
      003954 8D 00            [24] 4069 	mov	ar0,r5
      003956 E9               [12] 4070 	mov	a,r1
      003957 C3               [12] 4071 	clr	c
      003958 98               [12] 4072 	subb	a,r0
                                   4073 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:291: if (key_len == 0) {
      003959 F9               [12] 4074 	mov	r1,a
      00395A 70 09            [24] 4075 	jnz	00116$
                                   4076 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:292: serial_println_str("ERR:BAD_SET_KEY");
      00395C 90 65 BE         [24] 4077 	mov	dptr,#___str_28
      00395F 75 F0 80         [24] 4078 	mov	b,#0x80
                                   4079 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:293: return;
      003962 02 1E 6A         [24] 4080 	ljmp	_serial_println_str
      003965                       4081 00116$:
                                   4082 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:296: if (!usb_handle_set(uc, body, key_len, equal + 1)) {
      003965 74 01            [12] 4083 	mov	a,#0x01
      003967 2A               [12] 4084 	add	a,r2
      003968 F5 4D            [12] 4085 	mov	_usb_handleCommand_sloc0_1_0,a
      00396A E4               [12] 4086 	clr	a
      00396B 3B               [12] 4087 	addc	a,r3
      00396C F5 4E            [12] 4088 	mov	(_usb_handleCommand_sloc0_1_0 + 1),a
      00396E 8C 4F            [24] 4089 	mov	(_usb_handleCommand_sloc0_1_0 + 2),r4
      003970 90 02 26         [24] 4090 	mov	dptr,#_usb_handleCommand_uc_65536_253
      003973 E0               [24] 4091 	movx	a,@dptr
      003974 F8               [12] 4092 	mov	r0,a
      003975 A3               [24] 4093 	inc	dptr
      003976 E0               [24] 4094 	movx	a,@dptr
      003977 FB               [12] 4095 	mov	r3,a
      003978 A3               [24] 4096 	inc	dptr
      003979 E0               [24] 4097 	movx	a,@dptr
      00397A FC               [12] 4098 	mov	r4,a
      00397B C0 07            [24] 4099 	push	ar7
      00397D C0 06            [24] 4100 	push	ar6
      00397F C0 05            [24] 4101 	push	ar5
      003981 C0 01            [24] 4102 	push	ar1
      003983 C0 4D            [24] 4103 	push	_usb_handleCommand_sloc0_1_0
      003985 C0 4E            [24] 4104 	push	(_usb_handleCommand_sloc0_1_0 + 1)
      003987 C0 4F            [24] 4105 	push	(_usb_handleCommand_sloc0_1_0 + 2)
      003989 C0 01            [24] 4106 	push	ar1
      00398B C0 05            [24] 4107 	push	ar5
      00398D C0 06            [24] 4108 	push	ar6
      00398F C0 07            [24] 4109 	push	ar7
      003991 88 82            [24] 4110 	mov	dpl,r0
      003993 8B 83            [24] 4111 	mov	dph,r3
      003995 8C F0            [24] 4112 	mov	b,r4
      003997 12 30 71         [24] 4113 	lcall	_usb_handle_set
      00399A AC 82            [24] 4114 	mov	r4,dpl
      00399C E5 81            [12] 4115 	mov	a,sp
      00399E 24 F9            [12] 4116 	add	a,#0xf9
      0039A0 F5 81            [12] 4117 	mov	sp,a
      0039A2 D0 01            [24] 4118 	pop	ar1
      0039A4 D0 05            [24] 4119 	pop	ar5
      0039A6 D0 06            [24] 4120 	pop	ar6
      0039A8 D0 07            [24] 4121 	pop	ar7
      0039AA EC               [12] 4122 	mov	a,r4
      0039AB 70 2A            [24] 4123 	jnz	00118$
                                   4124 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:297: serial_print_str("ERR:UNKNOWN_SET:");
      0039AD 90 65 AD         [24] 4125 	mov	dptr,#___str_27
      0039B0 75 F0 80         [24] 4126 	mov	b,#0x80
      0039B3 C0 07            [24] 4127 	push	ar7
      0039B5 C0 06            [24] 4128 	push	ar6
      0039B7 C0 05            [24] 4129 	push	ar5
      0039B9 C0 01            [24] 4130 	push	ar1
      0039BB 12 19 E7         [24] 4131 	lcall	_serial_print_str
      0039BE D0 01            [24] 4132 	pop	ar1
      0039C0 D0 05            [24] 4133 	pop	ar5
      0039C2 D0 06            [24] 4134 	pop	ar6
      0039C4 D0 07            [24] 4135 	pop	ar7
                                   4136 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:298: usb_print_key_segment(body, key_len);
      0039C6 90 02 1F         [24] 4137 	mov	dptr,#_usb_print_key_segment_PARM_2
      0039C9 E9               [12] 4138 	mov	a,r1
      0039CA F0               [24] 4139 	movx	@dptr,a
      0039CB 8D 82            [24] 4140 	mov	dpl,r5
      0039CD 8E 83            [24] 4141 	mov	dph,r6
      0039CF 8F F0            [24] 4142 	mov	b,r7
      0039D1 12 2F C1         [24] 4143 	lcall	_usb_print_key_segment
                                   4144 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:299: serial_println();
                                   4145 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:301: return;
      0039D4 02 1E 5E         [24] 4146 	ljmp	_serial_println
      0039D7                       4147 00118$:
      0039D7 22               [24] 4148 	ret
      0039D8                       4149 00120$:
                                   4150 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:304: serial_print_str("ERR:UNKNOWN_CMD:");
      0039D8 90 65 CE         [24] 4151 	mov	dptr,#___str_29
      0039DB 75 F0 80         [24] 4152 	mov	b,#0x80
      0039DE 12 19 E7         [24] 4153 	lcall	_serial_print_str
                                   4154 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:305: serial_println_str(cmd);
      0039E1 90 02 23         [24] 4155 	mov	dptr,#_usb_handleCommand_PARM_2
      0039E4 E0               [24] 4156 	movx	a,@dptr
      0039E5 FD               [12] 4157 	mov	r5,a
      0039E6 A3               [24] 4158 	inc	dptr
      0039E7 E0               [24] 4159 	movx	a,@dptr
      0039E8 FE               [12] 4160 	mov	r6,a
      0039E9 A3               [24] 4161 	inc	dptr
      0039EA E0               [24] 4162 	movx	a,@dptr
      0039EB FF               [12] 4163 	mov	r7,a
      0039EC 8D 82            [24] 4164 	mov	dpl,r5
      0039EE 8E 83            [24] 4165 	mov	dph,r6
      0039F0 8F F0            [24] 4166 	mov	b,r7
                                   4167 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:306: }
      0039F2 02 1E 6A         [24] 4168 	ljmp	_serial_println_str
                                   4169 ;------------------------------------------------------------
                                   4170 ;Allocation info for local variables in function 'USBController_begin'
                                   4171 ;------------------------------------------------------------
                                   4172 ;uc                        Allocated with name '_USBController_begin_uc_65536_265'
                                   4173 ;------------------------------------------------------------
                                   4174 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:308: void USBController_begin(USBController* uc) {
                                   4175 ;	-----------------------------------------
                                   4176 ;	 function USBController_begin
                                   4177 ;	-----------------------------------------
      0039F5                       4178 _USBController_begin:
      0039F5 AF F0            [24] 4179 	mov	r7,b
      0039F7 AE 83            [24] 4180 	mov	r6,dph
      0039F9 E5 82            [12] 4181 	mov	a,dpl
      0039FB 90 02 29         [24] 4182 	mov	dptr,#_USBController_begin_uc_65536_265
      0039FE F0               [24] 4183 	movx	@dptr,a
      0039FF EE               [12] 4184 	mov	a,r6
      003A00 A3               [24] 4185 	inc	dptr
      003A01 F0               [24] 4186 	movx	@dptr,a
      003A02 EF               [12] 4187 	mov	a,r7
      003A03 A3               [24] 4188 	inc	dptr
      003A04 F0               [24] 4189 	movx	@dptr,a
                                   4190 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:309: serial_begin(USB_BAUD_RATE);
      003A05 90 C2 00         [24] 4191 	mov	dptr,#0xc200
      003A08 75 F0 01         [24] 4192 	mov	b,#0x01
      003A0B E4               [12] 4193 	clr	a
      003A0C 12 16 DE         [24] 4194 	lcall	_serial_begin
                                   4195 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:311: uc->is_connected = false;
      003A0F 90 02 29         [24] 4196 	mov	dptr,#_USBController_begin_uc_65536_265
      003A12 E0               [24] 4197 	movx	a,@dptr
      003A13 FD               [12] 4198 	mov	r5,a
      003A14 A3               [24] 4199 	inc	dptr
      003A15 E0               [24] 4200 	movx	a,@dptr
      003A16 FE               [12] 4201 	mov	r6,a
      003A17 A3               [24] 4202 	inc	dptr
      003A18 E0               [24] 4203 	movx	a,@dptr
      003A19 FF               [12] 4204 	mov	r7,a
      003A1A 8D 82            [24] 4205 	mov	dpl,r5
      003A1C 8E 83            [24] 4206 	mov	dph,r6
      003A1E 8F F0            [24] 4207 	mov	b,r7
      003A20 E4               [12] 4208 	clr	a
      003A21 12 56 BA         [24] 4209 	lcall	__gptrput
                                   4210 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:312: uc->pairing_state = PAIRING_IDLE;
      003A24 04               [12] 4211 	inc	a
      003A25 2D               [12] 4212 	add	a,r5
      003A26 FA               [12] 4213 	mov	r2,a
      003A27 E4               [12] 4214 	clr	a
      003A28 3E               [12] 4215 	addc	a,r6
      003A29 FB               [12] 4216 	mov	r3,a
      003A2A 8F 04            [24] 4217 	mov	ar4,r7
      003A2C 8A 82            [24] 4218 	mov	dpl,r2
      003A2E 8B 83            [24] 4219 	mov	dph,r3
      003A30 8C F0            [24] 4220 	mov	b,r4
      003A32 E4               [12] 4221 	clr	a
      003A33 12 56 BA         [24] 4222 	lcall	__gptrput
                                   4223 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:313: uc->last_heartbeat = 0;
      003A36 74 02            [12] 4224 	mov	a,#0x02
      003A38 2D               [12] 4225 	add	a,r5
      003A39 FA               [12] 4226 	mov	r2,a
      003A3A E4               [12] 4227 	clr	a
      003A3B 3E               [12] 4228 	addc	a,r6
      003A3C FB               [12] 4229 	mov	r3,a
      003A3D 8F 04            [24] 4230 	mov	ar4,r7
      003A3F 8A 82            [24] 4231 	mov	dpl,r2
      003A41 8B 83            [24] 4232 	mov	dph,r3
      003A43 8C F0            [24] 4233 	mov	b,r4
      003A45 E4               [12] 4234 	clr	a
      003A46 12 56 BA         [24] 4235 	lcall	__gptrput
      003A49 A3               [24] 4236 	inc	dptr
      003A4A 12 56 BA         [24] 4237 	lcall	__gptrput
      003A4D A3               [24] 4238 	inc	dptr
      003A4E 12 56 BA         [24] 4239 	lcall	__gptrput
      003A51 A3               [24] 4240 	inc	dptr
      003A52 12 56 BA         [24] 4241 	lcall	__gptrput
                                   4242 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:314: uc->rx_len = 0;
      003A55 74 47            [12] 4243 	mov	a,#0x47
      003A57 2D               [12] 4244 	add	a,r5
      003A58 FA               [12] 4245 	mov	r2,a
      003A59 E4               [12] 4246 	clr	a
      003A5A 3E               [12] 4247 	addc	a,r6
      003A5B FB               [12] 4248 	mov	r3,a
      003A5C 8F 04            [24] 4249 	mov	ar4,r7
      003A5E 8A 82            [24] 4250 	mov	dpl,r2
      003A60 8B 83            [24] 4251 	mov	dph,r3
      003A62 8C F0            [24] 4252 	mov	b,r4
      003A64 E4               [12] 4253 	clr	a
      003A65 12 56 BA         [24] 4254 	lcall	__gptrput
                                   4255 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:315: uc->rx_buffer[0] = '\0';
      003A68 74 06            [12] 4256 	mov	a,#0x06
      003A6A 2D               [12] 4257 	add	a,r5
      003A6B FA               [12] 4258 	mov	r2,a
      003A6C E4               [12] 4259 	clr	a
      003A6D 3E               [12] 4260 	addc	a,r6
      003A6E FB               [12] 4261 	mov	r3,a
      003A6F 8F 04            [24] 4262 	mov	ar4,r7
      003A71 8A 82            [24] 4263 	mov	dpl,r2
      003A73 8B 83            [24] 4264 	mov	dph,r3
      003A75 8C F0            [24] 4265 	mov	b,r4
      003A77 E4               [12] 4266 	clr	a
      003A78 12 56 BA         [24] 4267 	lcall	__gptrput
                                   4268 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:317: uc->override_active = false;
      003A7B 74 5D            [12] 4269 	mov	a,#0x5d
      003A7D 2D               [12] 4270 	add	a,r5
      003A7E FA               [12] 4271 	mov	r2,a
      003A7F E4               [12] 4272 	clr	a
      003A80 3E               [12] 4273 	addc	a,r6
      003A81 FB               [12] 4274 	mov	r3,a
      003A82 8F 04            [24] 4275 	mov	ar4,r7
      003A84 8A 82            [24] 4276 	mov	dpl,r2
      003A86 8B 83            [24] 4277 	mov	dph,r3
      003A88 8C F0            [24] 4278 	mov	b,r4
      003A8A E4               [12] 4279 	clr	a
      003A8B 12 56 BA         [24] 4280 	lcall	__gptrput
                                   4281 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:318: uc->rpm_override_active = false;
      003A8E 74 5E            [12] 4282 	mov	a,#0x5e
      003A90 2D               [12] 4283 	add	a,r5
      003A91 FA               [12] 4284 	mov	r2,a
      003A92 E4               [12] 4285 	clr	a
      003A93 3E               [12] 4286 	addc	a,r6
      003A94 FB               [12] 4287 	mov	r3,a
      003A95 8F 04            [24] 4288 	mov	ar4,r7
      003A97 8A 82            [24] 4289 	mov	dpl,r2
      003A99 8B 83            [24] 4290 	mov	dph,r3
      003A9B 8C F0            [24] 4291 	mov	b,r4
      003A9D E4               [12] 4292 	clr	a
      003A9E 12 56 BA         [24] 4293 	lcall	__gptrput
                                   4294 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:319: uc->temp_params_overridden = false;
      003AA1 74 5F            [12] 4295 	mov	a,#0x5f
      003AA3 2D               [12] 4296 	add	a,r5
      003AA4 FA               [12] 4297 	mov	r2,a
      003AA5 E4               [12] 4298 	clr	a
      003AA6 3E               [12] 4299 	addc	a,r6
      003AA7 FB               [12] 4300 	mov	r3,a
      003AA8 8F 04            [24] 4301 	mov	ar4,r7
      003AAA 8A 82            [24] 4302 	mov	dpl,r2
      003AAC 8B 83            [24] 4303 	mov	dph,r3
      003AAE 8C F0            [24] 4304 	mov	b,r4
      003AB0 E4               [12] 4305 	clr	a
      003AB1 12 56 BA         [24] 4306 	lcall	__gptrput
                                   4307 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:320: uc->pwm_duty_overridden = false;
      003AB4 74 60            [12] 4308 	mov	a,#0x60
      003AB6 2D               [12] 4309 	add	a,r5
      003AB7 FA               [12] 4310 	mov	r2,a
      003AB8 E4               [12] 4311 	clr	a
      003AB9 3E               [12] 4312 	addc	a,r6
      003ABA FB               [12] 4313 	mov	r3,a
      003ABB 8F 04            [24] 4314 	mov	ar4,r7
      003ABD 8A 82            [24] 4315 	mov	dpl,r2
      003ABF 8B 83            [24] 4316 	mov	dph,r3
      003AC1 8C F0            [24] 4317 	mov	b,r4
      003AC3 E4               [12] 4318 	clr	a
      003AC4 12 56 BA         [24] 4319 	lcall	__gptrput
                                   4320 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:321: uc->reset_requested = false;
      003AC7 74 61            [12] 4321 	mov	a,#0x61
      003AC9 2D               [12] 4322 	add	a,r5
      003ACA FA               [12] 4323 	mov	r2,a
      003ACB E4               [12] 4324 	clr	a
      003ACC 3E               [12] 4325 	addc	a,r6
      003ACD FB               [12] 4326 	mov	r3,a
      003ACE 8F 04            [24] 4327 	mov	ar4,r7
      003AD0 8A 82            [24] 4328 	mov	dpl,r2
      003AD2 8B 83            [24] 4329 	mov	dph,r3
      003AD4 8C F0            [24] 4330 	mov	b,r4
      003AD6 E4               [12] 4331 	clr	a
      003AD7 12 56 BA         [24] 4332 	lcall	__gptrput
                                   4333 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:322: uc->status_requested = false;
      003ADA 74 62            [12] 4334 	mov	a,#0x62
      003ADC 2D               [12] 4335 	add	a,r5
      003ADD FA               [12] 4336 	mov	r2,a
      003ADE E4               [12] 4337 	clr	a
      003ADF 3E               [12] 4338 	addc	a,r6
      003AE0 FB               [12] 4339 	mov	r3,a
      003AE1 8F 04            [24] 4340 	mov	ar4,r7
      003AE3 8A 82            [24] 4341 	mov	dpl,r2
      003AE5 8B 83            [24] 4342 	mov	dph,r3
      003AE7 8C F0            [24] 4343 	mov	b,r4
      003AE9 E4               [12] 4344 	clr	a
      003AEA 12 56 BA         [24] 4345 	lcall	__gptrput
                                   4346 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:324: uc->target_voltage_override = VOUT_DEFAULT;
      003AED 74 48            [12] 4347 	mov	a,#0x48
      003AEF 2D               [12] 4348 	add	a,r5
      003AF0 FA               [12] 4349 	mov	r2,a
      003AF1 E4               [12] 4350 	clr	a
      003AF2 3E               [12] 4351 	addc	a,r6
      003AF3 FB               [12] 4352 	mov	r3,a
      003AF4 8F 04            [24] 4353 	mov	ar4,r7
      003AF6 8A 82            [24] 4354 	mov	dpl,r2
      003AF8 8B 83            [24] 4355 	mov	dph,r3
      003AFA 8C F0            [24] 4356 	mov	b,r4
      003AFC E4               [12] 4357 	clr	a
      003AFD 12 56 BA         [24] 4358 	lcall	__gptrput
      003B00 A3               [24] 4359 	inc	dptr
      003B01 12 56 BA         [24] 4360 	lcall	__gptrput
      003B04 A3               [24] 4361 	inc	dptr
      003B05 74 40            [12] 4362 	mov	a,#0x40
      003B07 12 56 BA         [24] 4363 	lcall	__gptrput
      003B0A A3               [24] 4364 	inc	dptr
      003B0B 04               [12] 4365 	inc	a
      003B0C 12 56 BA         [24] 4366 	lcall	__gptrput
                                   4367 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:325: uc->target_rpm_override = RPM_TARGET_MIN;
      003B0F 74 4C            [12] 4368 	mov	a,#0x4c
      003B11 2D               [12] 4369 	add	a,r5
      003B12 FA               [12] 4370 	mov	r2,a
      003B13 E4               [12] 4371 	clr	a
      003B14 3E               [12] 4372 	addc	a,r6
      003B15 FB               [12] 4373 	mov	r3,a
      003B16 8F 04            [24] 4374 	mov	ar4,r7
      003B18 8A 82            [24] 4375 	mov	dpl,r2
      003B1A 8B 83            [24] 4376 	mov	dph,r3
      003B1C 8C F0            [24] 4377 	mov	b,r4
      003B1E 74 58            [12] 4378 	mov	a,#0x58
      003B20 12 56 BA         [24] 4379 	lcall	__gptrput
      003B23 A3               [24] 4380 	inc	dptr
      003B24 74 02            [12] 4381 	mov	a,#0x02
      003B26 12 56 BA         [24] 4382 	lcall	__gptrput
      003B29 A3               [24] 4383 	inc	dptr
      003B2A E4               [12] 4384 	clr	a
      003B2B 12 56 BA         [24] 4385 	lcall	__gptrput
      003B2E A3               [24] 4386 	inc	dptr
      003B2F 12 56 BA         [24] 4387 	lcall	__gptrput
                                   4388 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:326: uc->override_temp_min = TEMP_MIN;
      003B32 74 50            [12] 4389 	mov	a,#0x50
      003B34 2D               [12] 4390 	add	a,r5
      003B35 FA               [12] 4391 	mov	r2,a
      003B36 E4               [12] 4392 	clr	a
      003B37 3E               [12] 4393 	addc	a,r6
      003B38 FB               [12] 4394 	mov	r3,a
      003B39 8F 04            [24] 4395 	mov	ar4,r7
      003B3B 8A 82            [24] 4396 	mov	dpl,r2
      003B3D 8B 83            [24] 4397 	mov	dph,r3
      003B3F 8C F0            [24] 4398 	mov	b,r4
      003B41 E4               [12] 4399 	clr	a
      003B42 12 56 BA         [24] 4400 	lcall	__gptrput
      003B45 A3               [24] 4401 	inc	dptr
      003B46 12 56 BA         [24] 4402 	lcall	__gptrput
      003B49 A3               [24] 4403 	inc	dptr
      003B4A 74 F0            [12] 4404 	mov	a,#0xf0
      003B4C 12 56 BA         [24] 4405 	lcall	__gptrput
      003B4F A3               [24] 4406 	inc	dptr
      003B50 74 41            [12] 4407 	mov	a,#0x41
      003B52 12 56 BA         [24] 4408 	lcall	__gptrput
                                   4409 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:327: uc->override_temp_max = TEMP_MAX;
      003B55 74 54            [12] 4410 	mov	a,#0x54
      003B57 2D               [12] 4411 	add	a,r5
      003B58 FA               [12] 4412 	mov	r2,a
      003B59 E4               [12] 4413 	clr	a
      003B5A 3E               [12] 4414 	addc	a,r6
      003B5B FB               [12] 4415 	mov	r3,a
      003B5C 8F 04            [24] 4416 	mov	ar4,r7
      003B5E 8A 82            [24] 4417 	mov	dpl,r2
      003B60 8B 83            [24] 4418 	mov	dph,r3
      003B62 8C F0            [24] 4419 	mov	b,r4
      003B64 E4               [12] 4420 	clr	a
      003B65 12 56 BA         [24] 4421 	lcall	__gptrput
      003B68 A3               [24] 4422 	inc	dptr
      003B69 12 56 BA         [24] 4423 	lcall	__gptrput
      003B6C A3               [24] 4424 	inc	dptr
      003B6D 74 34            [12] 4425 	mov	a,#0x34
      003B6F 12 56 BA         [24] 4426 	lcall	__gptrput
      003B72 A3               [24] 4427 	inc	dptr
      003B73 74 42            [12] 4428 	mov	a,#0x42
      003B75 12 56 BA         [24] 4429 	lcall	__gptrput
                                   4430 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:328: uc->override_temp_overheat = TEMP_OVERHEAT;
      003B78 74 58            [12] 4431 	mov	a,#0x58
      003B7A 2D               [12] 4432 	add	a,r5
      003B7B FA               [12] 4433 	mov	r2,a
      003B7C E4               [12] 4434 	clr	a
      003B7D 3E               [12] 4435 	addc	a,r6
      003B7E FB               [12] 4436 	mov	r3,a
      003B7F 8F 04            [24] 4437 	mov	ar4,r7
      003B81 8A 82            [24] 4438 	mov	dpl,r2
      003B83 8B 83            [24] 4439 	mov	dph,r3
      003B85 8C F0            [24] 4440 	mov	b,r4
      003B87 E4               [12] 4441 	clr	a
      003B88 12 56 BA         [24] 4442 	lcall	__gptrput
      003B8B A3               [24] 4443 	inc	dptr
      003B8C 12 56 BA         [24] 4444 	lcall	__gptrput
      003B8F A3               [24] 4445 	inc	dptr
      003B90 74 48            [12] 4446 	mov	a,#0x48
      003B92 12 56 BA         [24] 4447 	lcall	__gptrput
      003B95 A3               [24] 4448 	inc	dptr
      003B96 74 42            [12] 4449 	mov	a,#0x42
      003B98 12 56 BA         [24] 4450 	lcall	__gptrput
                                   4451 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:329: uc->override_pwm_duty = 0;
      003B9B 74 5C            [12] 4452 	mov	a,#0x5c
      003B9D 2D               [12] 4453 	add	a,r5
      003B9E FD               [12] 4454 	mov	r5,a
      003B9F E4               [12] 4455 	clr	a
      003BA0 3E               [12] 4456 	addc	a,r6
      003BA1 FE               [12] 4457 	mov	r6,a
      003BA2 8D 82            [24] 4458 	mov	dpl,r5
      003BA4 8E 83            [24] 4459 	mov	dph,r6
      003BA6 8F F0            [24] 4460 	mov	b,r7
      003BA8 E4               [12] 4461 	clr	a
                                   4462 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:330: }
      003BA9 02 56 BA         [24] 4463 	ljmp	__gptrput
                                   4464 ;------------------------------------------------------------
                                   4465 ;Allocation info for local variables in function 'USBController_update'
                                   4466 ;------------------------------------------------------------
                                   4467 ;sloc0                     Allocated with name '_USBController_update_sloc0_1_0'
                                   4468 ;sloc1                     Allocated with name '_USBController_update_sloc1_1_0'
                                   4469 ;sloc2                     Allocated with name '_USBController_update_sloc2_1_0'
                                   4470 ;sloc3                     Allocated with name '_USBController_update_sloc3_1_0'
                                   4471 ;sloc4                     Allocated with name '_USBController_update_sloc4_1_0'
                                   4472 ;uc                        Allocated with name '_USBController_update_uc_65536_267'
                                   4473 ;c                         Allocated with name '_USBController_update_c_131072_269'
                                   4474 ;------------------------------------------------------------
                                   4475 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:332: void USBController_update(USBController* uc) {
                                   4476 ;	-----------------------------------------
                                   4477 ;	 function USBController_update
                                   4478 ;	-----------------------------------------
      003BAC                       4479 _USBController_update:
      003BAC AF F0            [24] 4480 	mov	r7,b
      003BAE AE 83            [24] 4481 	mov	r6,dph
      003BB0 E5 82            [12] 4482 	mov	a,dpl
      003BB2 90 02 2C         [24] 4483 	mov	dptr,#_USBController_update_uc_65536_267
      003BB5 F0               [24] 4484 	movx	@dptr,a
      003BB6 EE               [12] 4485 	mov	a,r6
      003BB7 A3               [24] 4486 	inc	dptr
      003BB8 F0               [24] 4487 	movx	@dptr,a
      003BB9 EF               [12] 4488 	mov	a,r7
      003BBA A3               [24] 4489 	inc	dptr
      003BBB F0               [24] 4490 	movx	@dptr,a
                                   4491 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:333: while (serial_available()) {
      003BBC 90 02 2C         [24] 4492 	mov	dptr,#_USBController_update_uc_65536_267
      003BBF E0               [24] 4493 	movx	a,@dptr
      003BC0 FD               [12] 4494 	mov	r5,a
      003BC1 A3               [24] 4495 	inc	dptr
      003BC2 E0               [24] 4496 	movx	a,@dptr
      003BC3 FE               [12] 4497 	mov	r6,a
      003BC4 A3               [24] 4498 	inc	dptr
      003BC5 E0               [24] 4499 	movx	a,@dptr
      003BC6 FF               [12] 4500 	mov	r7,a
      003BC7 74 47            [12] 4501 	mov	a,#0x47
      003BC9 2D               [12] 4502 	add	a,r5
      003BCA FA               [12] 4503 	mov	r2,a
      003BCB E4               [12] 4504 	clr	a
      003BCC 3E               [12] 4505 	addc	a,r6
      003BCD FB               [12] 4506 	mov	r3,a
      003BCE 8F 04            [24] 4507 	mov	ar4,r7
      003BD0 8D 50            [24] 4508 	mov	_USBController_update_sloc0_1_0,r5
      003BD2 8E 51            [24] 4509 	mov	(_USBController_update_sloc0_1_0 + 1),r6
      003BD4 8F 52            [24] 4510 	mov	(_USBController_update_sloc0_1_0 + 2),r7
      003BD6 8D 53            [24] 4511 	mov	_USBController_update_sloc1_1_0,r5
      003BD8 8E 54            [24] 4512 	mov	(_USBController_update_sloc1_1_0 + 1),r6
      003BDA 8F 55            [24] 4513 	mov	(_USBController_update_sloc1_1_0 + 2),r7
      003BDC 74 06            [12] 4514 	mov	a,#0x06
      003BDE 2D               [12] 4515 	add	a,r5
      003BDF F5 56            [12] 4516 	mov	_USBController_update_sloc2_1_0,a
      003BE1 E4               [12] 4517 	clr	a
      003BE2 3E               [12] 4518 	addc	a,r6
      003BE3 F5 57            [12] 4519 	mov	(_USBController_update_sloc2_1_0 + 1),a
      003BE5 8F 58            [24] 4520 	mov	(_USBController_update_sloc2_1_0 + 2),r7
      003BE7                       4521 00110$:
      003BE7 C0 07            [24] 4522 	push	ar7
      003BE9 C0 06            [24] 4523 	push	ar6
      003BEB C0 05            [24] 4524 	push	ar5
      003BED C0 04            [24] 4525 	push	ar4
      003BEF C0 03            [24] 4526 	push	ar3
      003BF1 C0 02            [24] 4527 	push	ar2
      003BF3 12 16 DF         [24] 4528 	lcall	_serial_available
      003BF6 E5 82            [12] 4529 	mov	a,dpl
      003BF8 85 83 F0         [24] 4530 	mov	b,dph
      003BFB D0 02            [24] 4531 	pop	ar2
      003BFD D0 03            [24] 4532 	pop	ar3
      003BFF D0 04            [24] 4533 	pop	ar4
      003C01 D0 05            [24] 4534 	pop	ar5
      003C03 D0 06            [24] 4535 	pop	ar6
      003C05 D0 07            [24] 4536 	pop	ar7
      003C07 45 F0            [12] 4537 	orl	a,b
      003C09 70 03            [24] 4538 	jnz	00146$
      003C0B 02 3D 55         [24] 4539 	ljmp	00112$
      003C0E                       4540 00146$:
                                   4541 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:334: char c = (char)serial_read();
      003C0E C0 07            [24] 4542 	push	ar7
      003C10 C0 06            [24] 4543 	push	ar6
      003C12 C0 05            [24] 4544 	push	ar5
      003C14 C0 04            [24] 4545 	push	ar4
      003C16 C0 03            [24] 4546 	push	ar3
      003C18 C0 02            [24] 4547 	push	ar2
      003C1A 12 16 E7         [24] 4548 	lcall	_serial_read
      003C1D A8 82            [24] 4549 	mov	r0,dpl
      003C1F A9 83            [24] 4550 	mov	r1,dph
      003C21 D0 02            [24] 4551 	pop	ar2
      003C23 D0 03            [24] 4552 	pop	ar3
      003C25 D0 04            [24] 4553 	pop	ar4
      003C27 D0 05            [24] 4554 	pop	ar5
      003C29 D0 06            [24] 4555 	pop	ar6
      003C2B D0 07            [24] 4556 	pop	ar7
                                   4557 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:336: if (c == '\n' || c == '\r') {
      003C2D B8 0A 02         [24] 4558 	cjne	r0,#0x0a,00147$
      003C30 80 08            [24] 4559 	sjmp	00106$
      003C32                       4560 00147$:
      003C32 B8 0D 02         [24] 4561 	cjne	r0,#0x0d,00148$
      003C35 80 03            [24] 4562 	sjmp	00149$
      003C37                       4563 00148$:
      003C37 02 3C C7         [24] 4564 	ljmp	00107$
      003C3A                       4565 00149$:
      003C3A                       4566 00106$:
                                   4567 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:337: if (uc->rx_len > 0) {
      003C3A 8A 82            [24] 4568 	mov	dpl,r2
      003C3C 8B 83            [24] 4569 	mov	dph,r3
      003C3E 8C F0            [24] 4570 	mov	b,r4
      003C40 12 5D 5A         [24] 4571 	lcall	__gptrget
      003C43 F9               [12] 4572 	mov	r1,a
      003C44 60 A1            [24] 4573 	jz	00110$
                                   4574 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:338: uc->rx_buffer[uc->rx_len] = '\0';
      003C46 C0 02            [24] 4575 	push	ar2
      003C48 C0 03            [24] 4576 	push	ar3
      003C4A C0 04            [24] 4577 	push	ar4
      003C4C 74 06            [12] 4578 	mov	a,#0x06
      003C4E 2D               [12] 4579 	add	a,r5
      003C4F FA               [12] 4580 	mov	r2,a
      003C50 E4               [12] 4581 	clr	a
      003C51 3E               [12] 4582 	addc	a,r6
      003C52 FB               [12] 4583 	mov	r3,a
      003C53 8F 04            [24] 4584 	mov	ar4,r7
      003C55 E9               [12] 4585 	mov	a,r1
      003C56 2A               [12] 4586 	add	a,r2
      003C57 FA               [12] 4587 	mov	r2,a
      003C58 E4               [12] 4588 	clr	a
      003C59 3B               [12] 4589 	addc	a,r3
      003C5A FB               [12] 4590 	mov	r3,a
      003C5B 8A 82            [24] 4591 	mov	dpl,r2
      003C5D 8B 83            [24] 4592 	mov	dph,r3
      003C5F 8C F0            [24] 4593 	mov	b,r4
      003C61 E4               [12] 4594 	clr	a
      003C62 12 56 BA         [24] 4595 	lcall	__gptrput
                                   4596 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:339: usb_handleCommand(uc, uc->rx_buffer);
      003C65 90 02 23         [24] 4597 	mov	dptr,#_usb_handleCommand_PARM_2
      003C68 74 06            [12] 4598 	mov	a,#0x06
      003C6A 2D               [12] 4599 	add	a,r5
      003C6B F0               [24] 4600 	movx	@dptr,a
      003C6C E4               [12] 4601 	clr	a
      003C6D 3E               [12] 4602 	addc	a,r6
      003C6E A3               [24] 4603 	inc	dptr
      003C6F F0               [24] 4604 	movx	@dptr,a
      003C70 EF               [12] 4605 	mov	a,r7
      003C71 A3               [24] 4606 	inc	dptr
      003C72 F0               [24] 4607 	movx	@dptr,a
      003C73 8D 82            [24] 4608 	mov	dpl,r5
      003C75 8E 83            [24] 4609 	mov	dph,r6
      003C77 8F F0            [24] 4610 	mov	b,r7
      003C79 C0 07            [24] 4611 	push	ar7
      003C7B C0 06            [24] 4612 	push	ar6
      003C7D C0 05            [24] 4613 	push	ar5
      003C7F C0 04            [24] 4614 	push	ar4
      003C81 C0 03            [24] 4615 	push	ar3
      003C83 C0 02            [24] 4616 	push	ar2
      003C85 12 37 09         [24] 4617 	lcall	_usb_handleCommand
      003C88 D0 02            [24] 4618 	pop	ar2
      003C8A D0 03            [24] 4619 	pop	ar3
      003C8C D0 04            [24] 4620 	pop	ar4
      003C8E D0 05            [24] 4621 	pop	ar5
      003C90 D0 06            [24] 4622 	pop	ar6
      003C92 D0 07            [24] 4623 	pop	ar7
                                   4624 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:340: uc->rx_len = 0;
      003C94 74 47            [12] 4625 	mov	a,#0x47
      003C96 25 50            [12] 4626 	add	a,_USBController_update_sloc0_1_0
      003C98 FA               [12] 4627 	mov	r2,a
      003C99 E4               [12] 4628 	clr	a
      003C9A 35 51            [12] 4629 	addc	a,(_USBController_update_sloc0_1_0 + 1)
      003C9C FB               [12] 4630 	mov	r3,a
      003C9D AC 52            [24] 4631 	mov	r4,(_USBController_update_sloc0_1_0 + 2)
      003C9F 8A 82            [24] 4632 	mov	dpl,r2
      003CA1 8B 83            [24] 4633 	mov	dph,r3
      003CA3 8C F0            [24] 4634 	mov	b,r4
      003CA5 E4               [12] 4635 	clr	a
      003CA6 12 56 BA         [24] 4636 	lcall	__gptrput
                                   4637 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:341: uc->rx_buffer[0] = '\0';
      003CA9 74 06            [12] 4638 	mov	a,#0x06
      003CAB 25 50            [12] 4639 	add	a,_USBController_update_sloc0_1_0
      003CAD FA               [12] 4640 	mov	r2,a
      003CAE E4               [12] 4641 	clr	a
      003CAF 35 51            [12] 4642 	addc	a,(_USBController_update_sloc0_1_0 + 1)
      003CB1 FB               [12] 4643 	mov	r3,a
      003CB2 AC 52            [24] 4644 	mov	r4,(_USBController_update_sloc0_1_0 + 2)
      003CB4 8A 82            [24] 4645 	mov	dpl,r2
      003CB6 8B 83            [24] 4646 	mov	dph,r3
      003CB8 8C F0            [24] 4647 	mov	b,r4
      003CBA E4               [12] 4648 	clr	a
      003CBB 12 56 BA         [24] 4649 	lcall	__gptrput
      003CBE D0 04            [24] 4650 	pop	ar4
      003CC0 D0 03            [24] 4651 	pop	ar3
      003CC2 D0 02            [24] 4652 	pop	ar2
      003CC4 02 3B E7         [24] 4653 	ljmp	00110$
      003CC7                       4654 00107$:
                                   4655 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:344: if (uc->rx_len < USB_CMD_MAX_LEN) {
      003CC7 74 47            [12] 4656 	mov	a,#0x47
      003CC9 25 53            [12] 4657 	add	a,_USBController_update_sloc1_1_0
      003CCB F5 59            [12] 4658 	mov	_USBController_update_sloc3_1_0,a
      003CCD E4               [12] 4659 	clr	a
      003CCE 35 54            [12] 4660 	addc	a,(_USBController_update_sloc1_1_0 + 1)
      003CD0 F5 5A            [12] 4661 	mov	(_USBController_update_sloc3_1_0 + 1),a
      003CD2 85 55 5B         [24] 4662 	mov	(_USBController_update_sloc3_1_0 + 2),(_USBController_update_sloc1_1_0 + 2)
      003CD5 85 59 82         [24] 4663 	mov	dpl,_USBController_update_sloc3_1_0
      003CD8 85 5A 83         [24] 4664 	mov	dph,(_USBController_update_sloc3_1_0 + 1)
      003CDB 85 5B F0         [24] 4665 	mov	b,(_USBController_update_sloc3_1_0 + 2)
      003CDE 12 5D 5A         [24] 4666 	lcall	__gptrget
      003CE1 F9               [12] 4667 	mov	r1,a
      003CE2 B9 40 00         [24] 4668 	cjne	r1,#0x40,00151$
      003CE5                       4669 00151$:
      003CE5 50 3D            [24] 4670 	jnc	00104$
                                   4671 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:345: uc->rx_buffer[uc->rx_len++] = c;
      003CE7 C0 02            [24] 4672 	push	ar2
      003CE9 C0 03            [24] 4673 	push	ar3
      003CEB C0 04            [24] 4674 	push	ar4
      003CED 85 59 82         [24] 4675 	mov	dpl,_USBController_update_sloc3_1_0
      003CF0 85 5A 83         [24] 4676 	mov	dph,(_USBController_update_sloc3_1_0 + 1)
      003CF3 85 5B F0         [24] 4677 	mov	b,(_USBController_update_sloc3_1_0 + 2)
      003CF6 12 5D 5A         [24] 4678 	lcall	__gptrget
      003CF9 F9               [12] 4679 	mov	r1,a
      003CFA 04               [12] 4680 	inc	a
      003CFB 85 59 82         [24] 4681 	mov	dpl,_USBController_update_sloc3_1_0
      003CFE 85 5A 83         [24] 4682 	mov	dph,(_USBController_update_sloc3_1_0 + 1)
      003D01 85 5B F0         [24] 4683 	mov	b,(_USBController_update_sloc3_1_0 + 2)
      003D04 12 56 BA         [24] 4684 	lcall	__gptrput
      003D07 E9               [12] 4685 	mov	a,r1
      003D08 25 56            [12] 4686 	add	a,_USBController_update_sloc2_1_0
      003D0A F9               [12] 4687 	mov	r1,a
      003D0B E4               [12] 4688 	clr	a
      003D0C 35 57            [12] 4689 	addc	a,(_USBController_update_sloc2_1_0 + 1)
      003D0E FC               [12] 4690 	mov	r4,a
      003D0F AB 58            [24] 4691 	mov	r3,(_USBController_update_sloc2_1_0 + 2)
      003D11 89 82            [24] 4692 	mov	dpl,r1
      003D13 8C 83            [24] 4693 	mov	dph,r4
      003D15 8B F0            [24] 4694 	mov	b,r3
      003D17 E8               [12] 4695 	mov	a,r0
      003D18 12 56 BA         [24] 4696 	lcall	__gptrput
      003D1B D0 04            [24] 4697 	pop	ar4
      003D1D D0 03            [24] 4698 	pop	ar3
      003D1F D0 02            [24] 4699 	pop	ar2
      003D21 02 3B E7         [24] 4700 	ljmp	00110$
      003D24                       4701 00104$:
                                   4702 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:347: uc->rx_len = 0;
      003D24 C0 02            [24] 4703 	push	ar2
      003D26 C0 03            [24] 4704 	push	ar3
      003D28 C0 04            [24] 4705 	push	ar4
      003D2A 85 59 82         [24] 4706 	mov	dpl,_USBController_update_sloc3_1_0
      003D2D 85 5A 83         [24] 4707 	mov	dph,(_USBController_update_sloc3_1_0 + 1)
      003D30 85 5B F0         [24] 4708 	mov	b,(_USBController_update_sloc3_1_0 + 2)
      003D33 E4               [12] 4709 	clr	a
      003D34 12 56 BA         [24] 4710 	lcall	__gptrput
                                   4711 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:348: uc->rx_buffer[0] = '\0';
      003D37 74 06            [12] 4712 	mov	a,#0x06
      003D39 25 53            [12] 4713 	add	a,_USBController_update_sloc1_1_0
      003D3B F8               [12] 4714 	mov	r0,a
      003D3C E4               [12] 4715 	clr	a
      003D3D 35 54            [12] 4716 	addc	a,(_USBController_update_sloc1_1_0 + 1)
      003D3F F9               [12] 4717 	mov	r1,a
      003D40 AC 55            [24] 4718 	mov	r4,(_USBController_update_sloc1_1_0 + 2)
      003D42 88 82            [24] 4719 	mov	dpl,r0
      003D44 89 83            [24] 4720 	mov	dph,r1
      003D46 8C F0            [24] 4721 	mov	b,r4
      003D48 E4               [12] 4722 	clr	a
      003D49 12 56 BA         [24] 4723 	lcall	__gptrput
      003D4C D0 04            [24] 4724 	pop	ar4
      003D4E D0 03            [24] 4725 	pop	ar3
      003D50 D0 02            [24] 4726 	pop	ar2
      003D52 02 3B E7         [24] 4727 	ljmp	00110$
      003D55                       4728 00112$:
                                   4729 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:353: if (uc->is_connected && (millis() - uc->last_heartbeat > USB_HEARTBEAT_TIMEOUT)) {
      003D55 90 02 2C         [24] 4730 	mov	dptr,#_USBController_update_uc_65536_267
      003D58 E0               [24] 4731 	movx	a,@dptr
      003D59 FD               [12] 4732 	mov	r5,a
      003D5A A3               [24] 4733 	inc	dptr
      003D5B E0               [24] 4734 	movx	a,@dptr
      003D5C FE               [12] 4735 	mov	r6,a
      003D5D A3               [24] 4736 	inc	dptr
      003D5E E0               [24] 4737 	movx	a,@dptr
      003D5F FF               [12] 4738 	mov	r7,a
      003D60 8D 82            [24] 4739 	mov	dpl,r5
      003D62 8E 83            [24] 4740 	mov	dph,r6
      003D64 8F F0            [24] 4741 	mov	b,r7
      003D66 12 5D 5A         [24] 4742 	lcall	__gptrget
      003D69 70 01            [24] 4743 	jnz	00153$
      003D6B 22               [24] 4744 	ret
      003D6C                       4745 00153$:
      003D6C C0 07            [24] 4746 	push	ar7
      003D6E C0 06            [24] 4747 	push	ar6
      003D70 C0 05            [24] 4748 	push	ar5
      003D72 12 4F 82         [24] 4749 	lcall	_millis
      003D75 85 82 5C         [24] 4750 	mov	_USBController_update_sloc4_1_0,dpl
      003D78 85 83 5D         [24] 4751 	mov	(_USBController_update_sloc4_1_0 + 1),dph
      003D7B 85 F0 5E         [24] 4752 	mov	(_USBController_update_sloc4_1_0 + 2),b
      003D7E F5 5F            [12] 4753 	mov	(_USBController_update_sloc4_1_0 + 3),a
      003D80 D0 05            [24] 4754 	pop	ar5
      003D82 D0 06            [24] 4755 	pop	ar6
      003D84 D0 07            [24] 4756 	pop	ar7
      003D86 74 02            [12] 4757 	mov	a,#0x02
      003D88 2D               [12] 4758 	add	a,r5
      003D89 F8               [12] 4759 	mov	r0,a
      003D8A E4               [12] 4760 	clr	a
      003D8B 3E               [12] 4761 	addc	a,r6
      003D8C FB               [12] 4762 	mov	r3,a
      003D8D 8F 04            [24] 4763 	mov	ar4,r7
      003D8F 88 82            [24] 4764 	mov	dpl,r0
      003D91 8B 83            [24] 4765 	mov	dph,r3
      003D93 8C F0            [24] 4766 	mov	b,r4
      003D95 12 5D 5A         [24] 4767 	lcall	__gptrget
      003D98 F8               [12] 4768 	mov	r0,a
      003D99 A3               [24] 4769 	inc	dptr
      003D9A 12 5D 5A         [24] 4770 	lcall	__gptrget
      003D9D FB               [12] 4771 	mov	r3,a
      003D9E A3               [24] 4772 	inc	dptr
      003D9F 12 5D 5A         [24] 4773 	lcall	__gptrget
      003DA2 FC               [12] 4774 	mov	r4,a
      003DA3 A3               [24] 4775 	inc	dptr
      003DA4 12 5D 5A         [24] 4776 	lcall	__gptrget
      003DA7 FA               [12] 4777 	mov	r2,a
      003DA8 E5 5C            [12] 4778 	mov	a,_USBController_update_sloc4_1_0
      003DAA C3               [12] 4779 	clr	c
      003DAB 98               [12] 4780 	subb	a,r0
      003DAC F8               [12] 4781 	mov	r0,a
      003DAD E5 5D            [12] 4782 	mov	a,(_USBController_update_sloc4_1_0 + 1)
      003DAF 9B               [12] 4783 	subb	a,r3
      003DB0 FB               [12] 4784 	mov	r3,a
      003DB1 E5 5E            [12] 4785 	mov	a,(_USBController_update_sloc4_1_0 + 2)
      003DB3 9C               [12] 4786 	subb	a,r4
      003DB4 FC               [12] 4787 	mov	r4,a
      003DB5 E5 5F            [12] 4788 	mov	a,(_USBController_update_sloc4_1_0 + 3)
      003DB7 9A               [12] 4789 	subb	a,r2
      003DB8 FA               [12] 4790 	mov	r2,a
      003DB9 C3               [12] 4791 	clr	c
      003DBA 74 88            [12] 4792 	mov	a,#0x88
      003DBC 98               [12] 4793 	subb	a,r0
      003DBD 74 13            [12] 4794 	mov	a,#0x13
      003DBF 9B               [12] 4795 	subb	a,r3
      003DC0 E4               [12] 4796 	clr	a
      003DC1 9C               [12] 4797 	subb	a,r4
      003DC2 E4               [12] 4798 	clr	a
      003DC3 9A               [12] 4799 	subb	a,r2
      003DC4 50 40            [24] 4800 	jnc	00116$
                                   4801 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:354: uc->is_connected = false;
      003DC6 8D 82            [24] 4802 	mov	dpl,r5
      003DC8 8E 83            [24] 4803 	mov	dph,r6
      003DCA 8F F0            [24] 4804 	mov	b,r7
      003DCC E4               [12] 4805 	clr	a
      003DCD 12 56 BA         [24] 4806 	lcall	__gptrput
                                   4807 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:355: uc->pairing_state = PAIRING_IDLE;
      003DD0 04               [12] 4808 	inc	a
      003DD1 2D               [12] 4809 	add	a,r5
      003DD2 FA               [12] 4810 	mov	r2,a
      003DD3 E4               [12] 4811 	clr	a
      003DD4 3E               [12] 4812 	addc	a,r6
      003DD5 FB               [12] 4813 	mov	r3,a
      003DD6 8F 04            [24] 4814 	mov	ar4,r7
      003DD8 8A 82            [24] 4815 	mov	dpl,r2
      003DDA 8B 83            [24] 4816 	mov	dph,r3
      003DDC 8C F0            [24] 4817 	mov	b,r4
      003DDE E4               [12] 4818 	clr	a
      003DDF 12 56 BA         [24] 4819 	lcall	__gptrput
                                   4820 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:356: uc->override_active = false;
      003DE2 74 5D            [12] 4821 	mov	a,#0x5d
      003DE4 2D               [12] 4822 	add	a,r5
      003DE5 FA               [12] 4823 	mov	r2,a
      003DE6 E4               [12] 4824 	clr	a
      003DE7 3E               [12] 4825 	addc	a,r6
      003DE8 FB               [12] 4826 	mov	r3,a
      003DE9 8F 04            [24] 4827 	mov	ar4,r7
      003DEB 8A 82            [24] 4828 	mov	dpl,r2
      003DED 8B 83            [24] 4829 	mov	dph,r3
      003DEF 8C F0            [24] 4830 	mov	b,r4
      003DF1 E4               [12] 4831 	clr	a
      003DF2 12 56 BA         [24] 4832 	lcall	__gptrput
                                   4833 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:357: uc->rpm_override_active = false;
      003DF5 74 5E            [12] 4834 	mov	a,#0x5e
      003DF7 2D               [12] 4835 	add	a,r5
      003DF8 FD               [12] 4836 	mov	r5,a
      003DF9 E4               [12] 4837 	clr	a
      003DFA 3E               [12] 4838 	addc	a,r6
      003DFB FE               [12] 4839 	mov	r6,a
      003DFC 8D 82            [24] 4840 	mov	dpl,r5
      003DFE 8E 83            [24] 4841 	mov	dph,r6
      003E00 8F F0            [24] 4842 	mov	b,r7
      003E02 E4               [12] 4843 	clr	a
                                   4844 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:359: }
      003E03 02 56 BA         [24] 4845 	ljmp	__gptrput
      003E06                       4846 00116$:
      003E06 22               [24] 4847 	ret
                                   4848 ;------------------------------------------------------------
                                   4849 ;Allocation info for local variables in function 'USBController_sendStatus'
                                   4850 ;------------------------------------------------------------
                                   4851 ;status                    Allocated with name '_USBController_sendStatus_PARM_2'
                                   4852 ;uc                        Allocated with name '_USBController_sendStatus_uc_65536_276'
                                   4853 ;------------------------------------------------------------
                                   4854 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:361: void USBController_sendStatus(USBController* uc, const SystemStatus* status) {
                                   4855 ;	-----------------------------------------
                                   4856 ;	 function USBController_sendStatus
                                   4857 ;	-----------------------------------------
      003E07                       4858 _USBController_sendStatus:
                                   4859 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:364: serial_print_str("{");
      003E07 90 65 DF         [24] 4860 	mov	dptr,#___str_30
      003E0A 75 F0 80         [24] 4861 	mov	b,#0x80
      003E0D 12 19 E7         [24] 4862 	lcall	_serial_print_str
                                   4863 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:365: serial_print_str("\"temp\":");
      003E10 90 65 E1         [24] 4864 	mov	dptr,#___str_31
      003E13 75 F0 80         [24] 4865 	mov	b,#0x80
      003E16 12 19 E7         [24] 4866 	lcall	_serial_print_str
                                   4867 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:366: serial_print_float(status->temperature, 2);
      003E19 90 02 2F         [24] 4868 	mov	dptr,#_USBController_sendStatus_PARM_2
      003E1C E0               [24] 4869 	movx	a,@dptr
      003E1D FD               [12] 4870 	mov	r5,a
      003E1E A3               [24] 4871 	inc	dptr
      003E1F E0               [24] 4872 	movx	a,@dptr
      003E20 FE               [12] 4873 	mov	r6,a
      003E21 A3               [24] 4874 	inc	dptr
      003E22 E0               [24] 4875 	movx	a,@dptr
      003E23 FF               [12] 4876 	mov	r7,a
      003E24 8D 82            [24] 4877 	mov	dpl,r5
      003E26 8E 83            [24] 4878 	mov	dph,r6
      003E28 8F F0            [24] 4879 	mov	b,r7
      003E2A 12 5D 5A         [24] 4880 	lcall	__gptrget
      003E2D F9               [12] 4881 	mov	r1,a
      003E2E A3               [24] 4882 	inc	dptr
      003E2F 12 5D 5A         [24] 4883 	lcall	__gptrget
      003E32 FA               [12] 4884 	mov	r2,a
      003E33 A3               [24] 4885 	inc	dptr
      003E34 12 5D 5A         [24] 4886 	lcall	__gptrget
      003E37 FB               [12] 4887 	mov	r3,a
      003E38 A3               [24] 4888 	inc	dptr
      003E39 12 5D 5A         [24] 4889 	lcall	__gptrget
      003E3C FC               [12] 4890 	mov	r4,a
      003E3D 90 01 B4         [24] 4891 	mov	dptr,#_serial_print_float_PARM_2
      003E40 74 02            [12] 4892 	mov	a,#0x02
      003E42 F0               [24] 4893 	movx	@dptr,a
      003E43 E4               [12] 4894 	clr	a
      003E44 A3               [24] 4895 	inc	dptr
      003E45 F0               [24] 4896 	movx	@dptr,a
      003E46 89 82            [24] 4897 	mov	dpl,r1
      003E48 8A 83            [24] 4898 	mov	dph,r2
      003E4A 8B F0            [24] 4899 	mov	b,r3
      003E4C EC               [12] 4900 	mov	a,r4
      003E4D C0 07            [24] 4901 	push	ar7
      003E4F C0 06            [24] 4902 	push	ar6
      003E51 C0 05            [24] 4903 	push	ar5
      003E53 12 1B 21         [24] 4904 	lcall	_serial_print_float
                                   4905 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:367: serial_print_str(",\"volt\":");
      003E56 90 65 E9         [24] 4906 	mov	dptr,#___str_32
      003E59 75 F0 80         [24] 4907 	mov	b,#0x80
      003E5C 12 19 E7         [24] 4908 	lcall	_serial_print_str
      003E5F D0 05            [24] 4909 	pop	ar5
      003E61 D0 06            [24] 4910 	pop	ar6
      003E63 D0 07            [24] 4911 	pop	ar7
                                   4912 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:368: serial_print_float(status->voltage, 2);
      003E65 74 04            [12] 4913 	mov	a,#0x04
      003E67 2D               [12] 4914 	add	a,r5
      003E68 FC               [12] 4915 	mov	r4,a
      003E69 E4               [12] 4916 	clr	a
      003E6A 3E               [12] 4917 	addc	a,r6
      003E6B FA               [12] 4918 	mov	r2,a
      003E6C 8F 03            [24] 4919 	mov	ar3,r7
      003E6E 8C 82            [24] 4920 	mov	dpl,r4
      003E70 8A 83            [24] 4921 	mov	dph,r2
      003E72 8B F0            [24] 4922 	mov	b,r3
      003E74 12 5D 5A         [24] 4923 	lcall	__gptrget
      003E77 F9               [12] 4924 	mov	r1,a
      003E78 A3               [24] 4925 	inc	dptr
      003E79 12 5D 5A         [24] 4926 	lcall	__gptrget
      003E7C FA               [12] 4927 	mov	r2,a
      003E7D A3               [24] 4928 	inc	dptr
      003E7E 12 5D 5A         [24] 4929 	lcall	__gptrget
      003E81 FB               [12] 4930 	mov	r3,a
      003E82 A3               [24] 4931 	inc	dptr
      003E83 12 5D 5A         [24] 4932 	lcall	__gptrget
      003E86 FC               [12] 4933 	mov	r4,a
      003E87 90 01 B4         [24] 4934 	mov	dptr,#_serial_print_float_PARM_2
      003E8A 74 02            [12] 4935 	mov	a,#0x02
      003E8C F0               [24] 4936 	movx	@dptr,a
      003E8D E4               [12] 4937 	clr	a
      003E8E A3               [24] 4938 	inc	dptr
      003E8F F0               [24] 4939 	movx	@dptr,a
      003E90 89 82            [24] 4940 	mov	dpl,r1
      003E92 8A 83            [24] 4941 	mov	dph,r2
      003E94 8B F0            [24] 4942 	mov	b,r3
      003E96 EC               [12] 4943 	mov	a,r4
      003E97 C0 07            [24] 4944 	push	ar7
      003E99 C0 06            [24] 4945 	push	ar6
      003E9B C0 05            [24] 4946 	push	ar5
      003E9D 12 1B 21         [24] 4947 	lcall	_serial_print_float
                                   4948 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:369: serial_print_str(",\"target\":");
      003EA0 90 65 F2         [24] 4949 	mov	dptr,#___str_33
      003EA3 75 F0 80         [24] 4950 	mov	b,#0x80
      003EA6 12 19 E7         [24] 4951 	lcall	_serial_print_str
      003EA9 D0 05            [24] 4952 	pop	ar5
      003EAB D0 06            [24] 4953 	pop	ar6
      003EAD D0 07            [24] 4954 	pop	ar7
                                   4955 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:370: serial_print_float(status->target_voltage, 2);
      003EAF 74 08            [12] 4956 	mov	a,#0x08
      003EB1 2D               [12] 4957 	add	a,r5
      003EB2 FC               [12] 4958 	mov	r4,a
      003EB3 E4               [12] 4959 	clr	a
      003EB4 3E               [12] 4960 	addc	a,r6
      003EB5 FA               [12] 4961 	mov	r2,a
      003EB6 8F 03            [24] 4962 	mov	ar3,r7
      003EB8 8C 82            [24] 4963 	mov	dpl,r4
      003EBA 8A 83            [24] 4964 	mov	dph,r2
      003EBC 8B F0            [24] 4965 	mov	b,r3
      003EBE 12 5D 5A         [24] 4966 	lcall	__gptrget
      003EC1 F9               [12] 4967 	mov	r1,a
      003EC2 A3               [24] 4968 	inc	dptr
      003EC3 12 5D 5A         [24] 4969 	lcall	__gptrget
      003EC6 FA               [12] 4970 	mov	r2,a
      003EC7 A3               [24] 4971 	inc	dptr
      003EC8 12 5D 5A         [24] 4972 	lcall	__gptrget
      003ECB FB               [12] 4973 	mov	r3,a
      003ECC A3               [24] 4974 	inc	dptr
      003ECD 12 5D 5A         [24] 4975 	lcall	__gptrget
      003ED0 FC               [12] 4976 	mov	r4,a
      003ED1 90 01 B4         [24] 4977 	mov	dptr,#_serial_print_float_PARM_2
      003ED4 74 02            [12] 4978 	mov	a,#0x02
      003ED6 F0               [24] 4979 	movx	@dptr,a
      003ED7 E4               [12] 4980 	clr	a
      003ED8 A3               [24] 4981 	inc	dptr
      003ED9 F0               [24] 4982 	movx	@dptr,a
      003EDA 89 82            [24] 4983 	mov	dpl,r1
      003EDC 8A 83            [24] 4984 	mov	dph,r2
      003EDE 8B F0            [24] 4985 	mov	b,r3
      003EE0 EC               [12] 4986 	mov	a,r4
      003EE1 C0 07            [24] 4987 	push	ar7
      003EE3 C0 06            [24] 4988 	push	ar6
      003EE5 C0 05            [24] 4989 	push	ar5
      003EE7 12 1B 21         [24] 4990 	lcall	_serial_print_float
                                   4991 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:371: serial_print_str(",\"rpm\":");
      003EEA 90 65 FD         [24] 4992 	mov	dptr,#___str_34
      003EED 75 F0 80         [24] 4993 	mov	b,#0x80
      003EF0 12 19 E7         [24] 4994 	lcall	_serial_print_str
      003EF3 D0 05            [24] 4995 	pop	ar5
      003EF5 D0 06            [24] 4996 	pop	ar6
      003EF7 D0 07            [24] 4997 	pop	ar7
                                   4998 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:372: serial_print_uint(status->rpm);
      003EF9 74 0C            [12] 4999 	mov	a,#0x0c
      003EFB 2D               [12] 5000 	add	a,r5
      003EFC FC               [12] 5001 	mov	r4,a
      003EFD E4               [12] 5002 	clr	a
      003EFE 3E               [12] 5003 	addc	a,r6
      003EFF FA               [12] 5004 	mov	r2,a
      003F00 8F 03            [24] 5005 	mov	ar3,r7
      003F02 8C 82            [24] 5006 	mov	dpl,r4
      003F04 8A 83            [24] 5007 	mov	dph,r2
      003F06 8B F0            [24] 5008 	mov	b,r3
      003F08 12 5D 5A         [24] 5009 	lcall	__gptrget
      003F0B F9               [12] 5010 	mov	r1,a
      003F0C A3               [24] 5011 	inc	dptr
      003F0D 12 5D 5A         [24] 5012 	lcall	__gptrget
      003F10 FA               [12] 5013 	mov	r2,a
      003F11 A3               [24] 5014 	inc	dptr
      003F12 12 5D 5A         [24] 5015 	lcall	__gptrget
      003F15 FB               [12] 5016 	mov	r3,a
      003F16 A3               [24] 5017 	inc	dptr
      003F17 12 5D 5A         [24] 5018 	lcall	__gptrget
      003F1A 89 82            [24] 5019 	mov	dpl,r1
      003F1C 8A 83            [24] 5020 	mov	dph,r2
      003F1E 8B F0            [24] 5021 	mov	b,r3
      003F20 C0 07            [24] 5022 	push	ar7
      003F22 C0 06            [24] 5023 	push	ar6
      003F24 C0 05            [24] 5024 	push	ar5
      003F26 12 1A AC         [24] 5025 	lcall	_serial_print_uint
                                   5026 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:373: serial_print_str(",\"target_rpm\":");
      003F29 90 66 05         [24] 5027 	mov	dptr,#___str_35
      003F2C 75 F0 80         [24] 5028 	mov	b,#0x80
      003F2F 12 19 E7         [24] 5029 	lcall	_serial_print_str
      003F32 D0 05            [24] 5030 	pop	ar5
      003F34 D0 06            [24] 5031 	pop	ar6
      003F36 D0 07            [24] 5032 	pop	ar7
                                   5033 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:374: serial_print_uint(status->target_rpm);
      003F38 74 10            [12] 5034 	mov	a,#0x10
      003F3A 2D               [12] 5035 	add	a,r5
      003F3B FC               [12] 5036 	mov	r4,a
      003F3C E4               [12] 5037 	clr	a
      003F3D 3E               [12] 5038 	addc	a,r6
      003F3E FA               [12] 5039 	mov	r2,a
      003F3F 8F 03            [24] 5040 	mov	ar3,r7
      003F41 8C 82            [24] 5041 	mov	dpl,r4
      003F43 8A 83            [24] 5042 	mov	dph,r2
      003F45 8B F0            [24] 5043 	mov	b,r3
      003F47 12 5D 5A         [24] 5044 	lcall	__gptrget
      003F4A F9               [12] 5045 	mov	r1,a
      003F4B A3               [24] 5046 	inc	dptr
      003F4C 12 5D 5A         [24] 5047 	lcall	__gptrget
      003F4F FA               [12] 5048 	mov	r2,a
      003F50 A3               [24] 5049 	inc	dptr
      003F51 12 5D 5A         [24] 5050 	lcall	__gptrget
      003F54 FB               [12] 5051 	mov	r3,a
      003F55 A3               [24] 5052 	inc	dptr
      003F56 12 5D 5A         [24] 5053 	lcall	__gptrget
      003F59 89 82            [24] 5054 	mov	dpl,r1
      003F5B 8A 83            [24] 5055 	mov	dph,r2
      003F5D 8B F0            [24] 5056 	mov	b,r3
      003F5F C0 07            [24] 5057 	push	ar7
      003F61 C0 06            [24] 5058 	push	ar6
      003F63 C0 05            [24] 5059 	push	ar5
      003F65 12 1A AC         [24] 5060 	lcall	_serial_print_uint
                                   5061 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:375: serial_print_str(",\"pwm\":");
      003F68 90 66 14         [24] 5062 	mov	dptr,#___str_36
      003F6B 75 F0 80         [24] 5063 	mov	b,#0x80
      003F6E 12 19 E7         [24] 5064 	lcall	_serial_print_str
      003F71 D0 05            [24] 5065 	pop	ar5
      003F73 D0 06            [24] 5066 	pop	ar6
      003F75 D0 07            [24] 5067 	pop	ar7
                                   5068 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:376: serial_print_uint(status->pwm_duty);
      003F77 74 14            [12] 5069 	mov	a,#0x14
      003F79 2D               [12] 5070 	add	a,r5
      003F7A FA               [12] 5071 	mov	r2,a
      003F7B E4               [12] 5072 	clr	a
      003F7C 3E               [12] 5073 	addc	a,r6
      003F7D FB               [12] 5074 	mov	r3,a
      003F7E 8F 04            [24] 5075 	mov	ar4,r7
      003F80 8A 82            [24] 5076 	mov	dpl,r2
      003F82 8B 83            [24] 5077 	mov	dph,r3
      003F84 8C F0            [24] 5078 	mov	b,r4
      003F86 12 5D 5A         [24] 5079 	lcall	__gptrget
      003F89 F9               [12] 5080 	mov	r1,a
      003F8A 7A 00            [12] 5081 	mov	r2,#0x00
      003F8C 7B 00            [12] 5082 	mov	r3,#0x00
      003F8E 7C 00            [12] 5083 	mov	r4,#0x00
      003F90 89 82            [24] 5084 	mov	dpl,r1
      003F92 8A 83            [24] 5085 	mov	dph,r2
      003F94 8B F0            [24] 5086 	mov	b,r3
      003F96 EC               [12] 5087 	mov	a,r4
      003F97 C0 07            [24] 5088 	push	ar7
      003F99 C0 06            [24] 5089 	push	ar6
      003F9B C0 05            [24] 5090 	push	ar5
      003F9D 12 1A AC         [24] 5091 	lcall	_serial_print_uint
                                   5092 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:377: serial_print_str(",\"error\":\"0x");
      003FA0 90 66 1C         [24] 5093 	mov	dptr,#___str_37
      003FA3 75 F0 80         [24] 5094 	mov	b,#0x80
      003FA6 12 19 E7         [24] 5095 	lcall	_serial_print_str
      003FA9 D0 05            [24] 5096 	pop	ar5
      003FAB D0 06            [24] 5097 	pop	ar6
      003FAD D0 07            [24] 5098 	pop	ar7
                                   5099 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:378: serial_print_uint_base(status->error_flags, HEX);
      003FAF 74 15            [12] 5100 	mov	a,#0x15
      003FB1 2D               [12] 5101 	add	a,r5
      003FB2 FA               [12] 5102 	mov	r2,a
      003FB3 E4               [12] 5103 	clr	a
      003FB4 3E               [12] 5104 	addc	a,r6
      003FB5 FB               [12] 5105 	mov	r3,a
      003FB6 8F 04            [24] 5106 	mov	ar4,r7
      003FB8 8A 82            [24] 5107 	mov	dpl,r2
      003FBA 8B 83            [24] 5108 	mov	dph,r3
      003FBC 8C F0            [24] 5109 	mov	b,r4
      003FBE 12 5D 5A         [24] 5110 	lcall	__gptrget
      003FC1 F9               [12] 5111 	mov	r1,a
      003FC2 7A 00            [12] 5112 	mov	r2,#0x00
      003FC4 7B 00            [12] 5113 	mov	r3,#0x00
      003FC6 7C 00            [12] 5114 	mov	r4,#0x00
      003FC8 90 01 AE         [24] 5115 	mov	dptr,#_serial_print_uint_base_PARM_2
      003FCB 74 10            [12] 5116 	mov	a,#0x10
      003FCD F0               [24] 5117 	movx	@dptr,a
      003FCE E4               [12] 5118 	clr	a
      003FCF A3               [24] 5119 	inc	dptr
      003FD0 F0               [24] 5120 	movx	@dptr,a
      003FD1 89 82            [24] 5121 	mov	dpl,r1
      003FD3 8A 83            [24] 5122 	mov	dph,r2
      003FD5 8B F0            [24] 5123 	mov	b,r3
      003FD7 EC               [12] 5124 	mov	a,r4
      003FD8 C0 07            [24] 5125 	push	ar7
      003FDA C0 06            [24] 5126 	push	ar6
      003FDC C0 05            [24] 5127 	push	ar5
      003FDE 12 1A E5         [24] 5128 	lcall	_serial_print_uint_base
                                   5129 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:379: serial_print_str("\",\"mode\":\"");
      003FE1 90 66 29         [24] 5130 	mov	dptr,#___str_38
      003FE4 75 F0 80         [24] 5131 	mov	b,#0x80
      003FE7 12 19 E7         [24] 5132 	lcall	_serial_print_str
      003FEA D0 05            [24] 5133 	pop	ar5
      003FEC D0 06            [24] 5134 	pop	ar6
      003FEE D0 07            [24] 5135 	pop	ar7
                                   5136 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:380: serial_print_str(status->auto_mode ? "AUTO" : "MANUAL");
      003FF0 74 16            [12] 5137 	mov	a,#0x16
      003FF2 2D               [12] 5138 	add	a,r5
      003FF3 FD               [12] 5139 	mov	r5,a
      003FF4 E4               [12] 5140 	clr	a
      003FF5 3E               [12] 5141 	addc	a,r6
      003FF6 FE               [12] 5142 	mov	r6,a
      003FF7 8D 82            [24] 5143 	mov	dpl,r5
      003FF9 8E 83            [24] 5144 	mov	dph,r6
      003FFB 8F F0            [24] 5145 	mov	b,r7
      003FFD 12 5D 5A         [24] 5146 	lcall	__gptrget
      004000 60 06            [24] 5147 	jz	00103$
      004002 7E BB            [12] 5148 	mov	r6,#___str_4
      004004 7F 64            [12] 5149 	mov	r7,#(___str_4 >> 8)
      004006 80 04            [24] 5150 	sjmp	00104$
      004008                       5151 00103$:
      004008 7E C0            [12] 5152 	mov	r6,#___str_5
      00400A 7F 64            [12] 5153 	mov	r7,#(___str_5 >> 8)
      00400C                       5154 00104$:
      00400C 7D 80            [12] 5155 	mov	r5,#0x80
      00400E 8E 82            [24] 5156 	mov	dpl,r6
      004010 8F 83            [24] 5157 	mov	dph,r7
      004012 8D F0            [24] 5158 	mov	b,r5
      004014 12 19 E7         [24] 5159 	lcall	_serial_print_str
                                   5160 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:381: serial_println_str("\"}");
      004017 90 66 34         [24] 5161 	mov	dptr,#___str_39
      00401A 75 F0 80         [24] 5162 	mov	b,#0x80
                                   5163 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:382: }
      00401D 02 1E 6A         [24] 5164 	ljmp	_serial_println_str
                                   5165 ;------------------------------------------------------------
                                   5166 ;Allocation info for local variables in function 'USBController_isConnected'
                                   5167 ;------------------------------------------------------------
                                   5168 ;uc                        Allocated with name '_USBController_isConnected_uc_65536_278'
                                   5169 ;------------------------------------------------------------
                                   5170 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:384: bool USBController_isConnected(const USBController* uc) {
                                   5171 ;	-----------------------------------------
                                   5172 ;	 function USBController_isConnected
                                   5173 ;	-----------------------------------------
      004020                       5174 _USBController_isConnected:
      004020 AF F0            [24] 5175 	mov	r7,b
      004022 AE 83            [24] 5176 	mov	r6,dph
      004024 E5 82            [12] 5177 	mov	a,dpl
      004026 90 02 32         [24] 5178 	mov	dptr,#_USBController_isConnected_uc_65536_278
      004029 F0               [24] 5179 	movx	@dptr,a
      00402A EE               [12] 5180 	mov	a,r6
      00402B A3               [24] 5181 	inc	dptr
      00402C F0               [24] 5182 	movx	@dptr,a
      00402D EF               [12] 5183 	mov	a,r7
      00402E A3               [24] 5184 	inc	dptr
      00402F F0               [24] 5185 	movx	@dptr,a
                                   5186 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:385: return uc->is_connected;
      004030 90 02 32         [24] 5187 	mov	dptr,#_USBController_isConnected_uc_65536_278
      004033 E0               [24] 5188 	movx	a,@dptr
      004034 FD               [12] 5189 	mov	r5,a
      004035 A3               [24] 5190 	inc	dptr
      004036 E0               [24] 5191 	movx	a,@dptr
      004037 FE               [12] 5192 	mov	r6,a
      004038 A3               [24] 5193 	inc	dptr
      004039 E0               [24] 5194 	movx	a,@dptr
      00403A FF               [12] 5195 	mov	r7,a
      00403B 8D 82            [24] 5196 	mov	dpl,r5
      00403D 8E 83            [24] 5197 	mov	dph,r6
      00403F 8F F0            [24] 5198 	mov	b,r7
      004041 12 5D 5A         [24] 5199 	lcall	__gptrget
                                   5200 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:386: }
      004044 F5 82            [12] 5201 	mov	dpl,a
      004046 22               [24] 5202 	ret
                                   5203 ;------------------------------------------------------------
                                   5204 ;Allocation info for local variables in function 'USBController_getTargetVoltage'
                                   5205 ;------------------------------------------------------------
                                   5206 ;uc                        Allocated with name '_USBController_getTargetVoltage_uc_65536_280'
                                   5207 ;------------------------------------------------------------
                                   5208 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:388: float USBController_getTargetVoltage(const USBController* uc) {
                                   5209 ;	-----------------------------------------
                                   5210 ;	 function USBController_getTargetVoltage
                                   5211 ;	-----------------------------------------
      004047                       5212 _USBController_getTargetVoltage:
      004047 AF F0            [24] 5213 	mov	r7,b
      004049 AE 83            [24] 5214 	mov	r6,dph
      00404B E5 82            [12] 5215 	mov	a,dpl
      00404D 90 02 35         [24] 5216 	mov	dptr,#_USBController_getTargetVoltage_uc_65536_280
      004050 F0               [24] 5217 	movx	@dptr,a
      004051 EE               [12] 5218 	mov	a,r6
      004052 A3               [24] 5219 	inc	dptr
      004053 F0               [24] 5220 	movx	@dptr,a
      004054 EF               [12] 5221 	mov	a,r7
      004055 A3               [24] 5222 	inc	dptr
      004056 F0               [24] 5223 	movx	@dptr,a
                                   5224 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:389: return uc->target_voltage_override;
      004057 90 02 35         [24] 5225 	mov	dptr,#_USBController_getTargetVoltage_uc_65536_280
      00405A E0               [24] 5226 	movx	a,@dptr
      00405B FD               [12] 5227 	mov	r5,a
      00405C A3               [24] 5228 	inc	dptr
      00405D E0               [24] 5229 	movx	a,@dptr
      00405E FE               [12] 5230 	mov	r6,a
      00405F A3               [24] 5231 	inc	dptr
      004060 E0               [24] 5232 	movx	a,@dptr
      004061 FF               [12] 5233 	mov	r7,a
      004062 74 48            [12] 5234 	mov	a,#0x48
      004064 2D               [12] 5235 	add	a,r5
      004065 FD               [12] 5236 	mov	r5,a
      004066 E4               [12] 5237 	clr	a
      004067 3E               [12] 5238 	addc	a,r6
      004068 FE               [12] 5239 	mov	r6,a
      004069 8D 82            [24] 5240 	mov	dpl,r5
      00406B 8E 83            [24] 5241 	mov	dph,r6
      00406D 8F F0            [24] 5242 	mov	b,r7
      00406F 12 5D 5A         [24] 5243 	lcall	__gptrget
      004072 FD               [12] 5244 	mov	r5,a
      004073 A3               [24] 5245 	inc	dptr
      004074 12 5D 5A         [24] 5246 	lcall	__gptrget
      004077 FE               [12] 5247 	mov	r6,a
      004078 A3               [24] 5248 	inc	dptr
      004079 12 5D 5A         [24] 5249 	lcall	__gptrget
      00407C FF               [12] 5250 	mov	r7,a
      00407D A3               [24] 5251 	inc	dptr
      00407E 12 5D 5A         [24] 5252 	lcall	__gptrget
      004081 8D 82            [24] 5253 	mov	dpl,r5
      004083 8E 83            [24] 5254 	mov	dph,r6
      004085 8F F0            [24] 5255 	mov	b,r7
                                   5256 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:390: }
      004087 22               [24] 5257 	ret
                                   5258 ;------------------------------------------------------------
                                   5259 ;Allocation info for local variables in function 'USBController_isOverrideActive'
                                   5260 ;------------------------------------------------------------
                                   5261 ;uc                        Allocated with name '_USBController_isOverrideActive_uc_65536_282'
                                   5262 ;------------------------------------------------------------
                                   5263 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:392: bool USBController_isOverrideActive(const USBController* uc) {
                                   5264 ;	-----------------------------------------
                                   5265 ;	 function USBController_isOverrideActive
                                   5266 ;	-----------------------------------------
      004088                       5267 _USBController_isOverrideActive:
      004088 AF F0            [24] 5268 	mov	r7,b
      00408A AE 83            [24] 5269 	mov	r6,dph
      00408C E5 82            [12] 5270 	mov	a,dpl
      00408E 90 02 38         [24] 5271 	mov	dptr,#_USBController_isOverrideActive_uc_65536_282
      004091 F0               [24] 5272 	movx	@dptr,a
      004092 EE               [12] 5273 	mov	a,r6
      004093 A3               [24] 5274 	inc	dptr
      004094 F0               [24] 5275 	movx	@dptr,a
      004095 EF               [12] 5276 	mov	a,r7
      004096 A3               [24] 5277 	inc	dptr
      004097 F0               [24] 5278 	movx	@dptr,a
                                   5279 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:393: return uc->override_active;
      004098 90 02 38         [24] 5280 	mov	dptr,#_USBController_isOverrideActive_uc_65536_282
      00409B E0               [24] 5281 	movx	a,@dptr
      00409C FD               [12] 5282 	mov	r5,a
      00409D A3               [24] 5283 	inc	dptr
      00409E E0               [24] 5284 	movx	a,@dptr
      00409F FE               [12] 5285 	mov	r6,a
      0040A0 A3               [24] 5286 	inc	dptr
      0040A1 E0               [24] 5287 	movx	a,@dptr
      0040A2 FF               [12] 5288 	mov	r7,a
      0040A3 74 5D            [12] 5289 	mov	a,#0x5d
      0040A5 2D               [12] 5290 	add	a,r5
      0040A6 FD               [12] 5291 	mov	r5,a
      0040A7 E4               [12] 5292 	clr	a
      0040A8 3E               [12] 5293 	addc	a,r6
      0040A9 FE               [12] 5294 	mov	r6,a
      0040AA 8D 82            [24] 5295 	mov	dpl,r5
      0040AC 8E 83            [24] 5296 	mov	dph,r6
      0040AE 8F F0            [24] 5297 	mov	b,r7
      0040B0 12 5D 5A         [24] 5298 	lcall	__gptrget
                                   5299 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:394: }
      0040B3 F5 82            [12] 5300 	mov	dpl,a
      0040B5 22               [24] 5301 	ret
                                   5302 	.area CSEG    (CODE)
                                   5303 	.area CONST   (CODE)
                                   5304 	.area CONST   (CODE)
      0064A9                       5305 ___str_0:
      0064A9 4F 4B 3A              5306 	.ascii "OK:"
      0064AC 00                    5307 	.db 0x00
                                   5308 	.area CSEG    (CODE)
                                   5309 	.area CONST   (CODE)
      0064AD                       5310 ___str_1:
      0064AD 3D                    5311 	.ascii "="
      0064AE 00                    5312 	.db 0x00
                                   5313 	.area CSEG    (CODE)
                                   5314 	.area CONST   (CODE)
      0064AF                       5315 ___str_2:
      0064AF 53 54 41 54 55 53     5316 	.ascii "STATUS"
      0064B5 00                    5317 	.db 0x00
                                   5318 	.area CSEG    (CODE)
                                   5319 	.area CONST   (CODE)
      0064B6                       5320 ___str_3:
      0064B6 4D 4F 44 45           5321 	.ascii "MODE"
      0064BA 00                    5322 	.db 0x00
                                   5323 	.area CSEG    (CODE)
                                   5324 	.area CONST   (CODE)
      0064BB                       5325 ___str_4:
      0064BB 41 55 54 4F           5326 	.ascii "AUTO"
      0064BF 00                    5327 	.db 0x00
                                   5328 	.area CSEG    (CODE)
                                   5329 	.area CONST   (CODE)
      0064C0                       5330 ___str_5:
      0064C0 4D 41 4E 55 41 4C     5331 	.ascii "MANUAL"
      0064C6 00                    5332 	.db 0x00
                                   5333 	.area CSEG    (CODE)
                                   5334 	.area CONST   (CODE)
      0064C7                       5335 ___str_6:
      0064C7 56 4F 4C 54 41 47 45  5336 	.ascii "VOLTAGE"
      0064CE 00                    5337 	.db 0x00
                                   5338 	.area CSEG    (CODE)
                                   5339 	.area CONST   (CODE)
      0064CF                       5340 ___str_7:
      0064CF 45 52 52 3A 56 4F 4C  5341 	.ascii "ERR:VOLTAGE_OUT_OF_RANGE"
             54 41 47 45 5F 4F 55
             54 5F 4F 46 5F 52 41
             4E 47 45
      0064E7 00                    5342 	.db 0x00
                                   5343 	.area CSEG    (CODE)
                                   5344 	.area CONST   (CODE)
      0064E8                       5345 ___str_8:
      0064E8 52 50 4D              5346 	.ascii "RPM"
      0064EB 00                    5347 	.db 0x00
                                   5348 	.area CSEG    (CODE)
                                   5349 	.area CONST   (CODE)
      0064EC                       5350 ___str_9:
      0064EC 45 52 52 3A 52 50 4D  5351 	.ascii "ERR:RPM_OUT_OF_RANGE"
             5F 4F 55 54 5F 4F 46
             5F 52 41 4E 47 45
      006500 00                    5352 	.db 0x00
                                   5353 	.area CSEG    (CODE)
                                   5354 	.area CONST   (CODE)
      006501                       5355 ___str_10:
      006501 50 57 4D              5356 	.ascii "PWM"
      006504 00                    5357 	.db 0x00
                                   5358 	.area CSEG    (CODE)
                                   5359 	.area CONST   (CODE)
      006505                       5360 ___str_11:
      006505 45 52 52 3A 50 57 4D  5361 	.ascii "ERR:PWM_OUT_OF_RANGE"
             5F 4F 55 54 5F 4F 46
             5F 52 41 4E 47 45
      006519 00                    5362 	.db 0x00
                                   5363 	.area CSEG    (CODE)
                                   5364 	.area CONST   (CODE)
      00651A                       5365 ___str_12:
      00651A 4F 4B 3A 50 57 4D 3D  5366 	.ascii "OK:PWM="
      006521 00                    5367 	.db 0x00
                                   5368 	.area CSEG    (CODE)
                                   5369 	.area CONST   (CODE)
      006522                       5370 ___str_13:
      006522 54 45 4D 50 5F 4D 49  5371 	.ascii "TEMP_MIN"
             4E
      00652A 00                    5372 	.db 0x00
                                   5373 	.area CSEG    (CODE)
                                   5374 	.area CONST   (CODE)
      00652B                       5375 ___str_14:
      00652B 54 45 4D 50 5F 4D 41  5376 	.ascii "TEMP_MAX"
             58
      006533 00                    5377 	.db 0x00
                                   5378 	.area CSEG    (CODE)
                                   5379 	.area CONST   (CODE)
      006534                       5380 ___str_15:
      006534 54 45 4D 50 5F 4F 56  5381 	.ascii "TEMP_OVERHEAT"
             45 52 48 45 41 54
      006541 00                    5382 	.db 0x00
                                   5383 	.area CSEG    (CODE)
                                   5384 	.area CONST   (CODE)
      006542                       5385 ___str_16:
      006542 48 45 4C 4C 4F        5386 	.ascii "HELLO"
      006547 00                    5387 	.db 0x00
                                   5388 	.area CSEG    (CODE)
                                   5389 	.area CONST   (CODE)
      006548                       5390 ___str_17:
      006548 44 45 56 49 43 45 3A  5391 	.ascii "DEVICE:CH552G_FAN_CTRL_V1.0"
             43 48 35 35 32 47 5F
             46 41 4E 5F 43 54 52
             4C 5F 56 31 2E 30
      006563 00                    5392 	.db 0x00
                                   5393 	.area CSEG    (CODE)
                                   5394 	.area CONST   (CODE)
      006564                       5395 ___str_18:
      006564 43 4F 4E 4E 45 43 54  5396 	.ascii "CONNECT"
      00656B 00                    5397 	.db 0x00
                                   5398 	.area CSEG    (CODE)
                                   5399 	.area CONST   (CODE)
      00656C                       5400 ___str_19:
      00656C 4F 4B 3A 43 4F 4E 4E  5401 	.ascii "OK:CONNECTED"
             45 43 54 45 44
      006578 00                    5402 	.db 0x00
                                   5403 	.area CSEG    (CODE)
                                   5404 	.area CONST   (CODE)
      006579                       5405 ___str_20:
      006579 50 49 4E 47           5406 	.ascii "PING"
      00657D 00                    5407 	.db 0x00
                                   5408 	.area CSEG    (CODE)
                                   5409 	.area CONST   (CODE)
      00657E                       5410 ___str_21:
      00657E 50 4F 4E 47           5411 	.ascii "PONG"
      006582 00                    5412 	.db 0x00
                                   5413 	.area CSEG    (CODE)
                                   5414 	.area CONST   (CODE)
      006583                       5415 ___str_22:
      006583 52 45 53 45 54        5416 	.ascii "RESET"
      006588 00                    5417 	.db 0x00
                                   5418 	.area CSEG    (CODE)
                                   5419 	.area CONST   (CODE)
      006589                       5420 ___str_23:
      006589 4F 4B 3A 52 45 53 45  5421 	.ascii "OK:RESET"
             54
      006591 00                    5422 	.db 0x00
                                   5423 	.area CSEG    (CODE)
                                   5424 	.area CONST   (CODE)
      006592                       5425 ___str_24:
      006592 47 45 54 3A           5426 	.ascii "GET:"
      006596 00                    5427 	.db 0x00
                                   5428 	.area CSEG    (CODE)
                                   5429 	.area CONST   (CODE)
      006597                       5430 ___str_25:
      006597 45 52 52 3A 55 4E 4B  5431 	.ascii "ERR:UNKNOWN_GET:"
             4E 4F 57 4E 5F 47 45
             54 3A
      0065A7 00                    5432 	.db 0x00
                                   5433 	.area CSEG    (CODE)
                                   5434 	.area CONST   (CODE)
      0065A8                       5435 ___str_26:
      0065A8 53 45 54 3A           5436 	.ascii "SET:"
      0065AC 00                    5437 	.db 0x00
                                   5438 	.area CSEG    (CODE)
                                   5439 	.area CONST   (CODE)
      0065AD                       5440 ___str_27:
      0065AD 45 52 52 3A 55 4E 4B  5441 	.ascii "ERR:UNKNOWN_SET:"
             4E 4F 57 4E 5F 53 45
             54 3A
      0065BD 00                    5442 	.db 0x00
                                   5443 	.area CSEG    (CODE)
                                   5444 	.area CONST   (CODE)
      0065BE                       5445 ___str_28:
      0065BE 45 52 52 3A 42 41 44  5446 	.ascii "ERR:BAD_SET_KEY"
             5F 53 45 54 5F 4B 45
             59
      0065CD 00                    5447 	.db 0x00
                                   5448 	.area CSEG    (CODE)
                                   5449 	.area CONST   (CODE)
      0065CE                       5450 ___str_29:
      0065CE 45 52 52 3A 55 4E 4B  5451 	.ascii "ERR:UNKNOWN_CMD:"
             4E 4F 57 4E 5F 43 4D
             44 3A
      0065DE 00                    5452 	.db 0x00
                                   5453 	.area CSEG    (CODE)
                                   5454 	.area CONST   (CODE)
      0065DF                       5455 ___str_30:
      0065DF 7B                    5456 	.ascii "{"
      0065E0 00                    5457 	.db 0x00
                                   5458 	.area CSEG    (CODE)
                                   5459 	.area CONST   (CODE)
      0065E1                       5460 ___str_31:
      0065E1 22                    5461 	.db 0x22
      0065E2 74 65 6D 70           5462 	.ascii "temp"
      0065E6 22                    5463 	.db 0x22
      0065E7 3A                    5464 	.ascii ":"
      0065E8 00                    5465 	.db 0x00
                                   5466 	.area CSEG    (CODE)
                                   5467 	.area CONST   (CODE)
      0065E9                       5468 ___str_32:
      0065E9 2C                    5469 	.ascii ","
      0065EA 22                    5470 	.db 0x22
      0065EB 76 6F 6C 74           5471 	.ascii "volt"
      0065EF 22                    5472 	.db 0x22
      0065F0 3A                    5473 	.ascii ":"
      0065F1 00                    5474 	.db 0x00
                                   5475 	.area CSEG    (CODE)
                                   5476 	.area CONST   (CODE)
      0065F2                       5477 ___str_33:
      0065F2 2C                    5478 	.ascii ","
      0065F3 22                    5479 	.db 0x22
      0065F4 74 61 72 67 65 74     5480 	.ascii "target"
      0065FA 22                    5481 	.db 0x22
      0065FB 3A                    5482 	.ascii ":"
      0065FC 00                    5483 	.db 0x00
                                   5484 	.area CSEG    (CODE)
                                   5485 	.area CONST   (CODE)
      0065FD                       5486 ___str_34:
      0065FD 2C                    5487 	.ascii ","
      0065FE 22                    5488 	.db 0x22
      0065FF 72 70 6D              5489 	.ascii "rpm"
      006602 22                    5490 	.db 0x22
      006603 3A                    5491 	.ascii ":"
      006604 00                    5492 	.db 0x00
                                   5493 	.area CSEG    (CODE)
                                   5494 	.area CONST   (CODE)
      006605                       5495 ___str_35:
      006605 2C                    5496 	.ascii ","
      006606 22                    5497 	.db 0x22
      006607 74 61 72 67 65 74 5F  5498 	.ascii "target_rpm"
             72 70 6D
      006611 22                    5499 	.db 0x22
      006612 3A                    5500 	.ascii ":"
      006613 00                    5501 	.db 0x00
                                   5502 	.area CSEG    (CODE)
                                   5503 	.area CONST   (CODE)
      006614                       5504 ___str_36:
      006614 2C                    5505 	.ascii ","
      006615 22                    5506 	.db 0x22
      006616 70 77 6D              5507 	.ascii "pwm"
      006619 22                    5508 	.db 0x22
      00661A 3A                    5509 	.ascii ":"
      00661B 00                    5510 	.db 0x00
                                   5511 	.area CSEG    (CODE)
                                   5512 	.area CONST   (CODE)
      00661C                       5513 ___str_37:
      00661C 2C                    5514 	.ascii ","
      00661D 22                    5515 	.db 0x22
      00661E 65 72 72 6F 72        5516 	.ascii "error"
      006623 22                    5517 	.db 0x22
      006624 3A                    5518 	.ascii ":"
      006625 22                    5519 	.db 0x22
      006626 30 78                 5520 	.ascii "0x"
      006628 00                    5521 	.db 0x00
                                   5522 	.area CSEG    (CODE)
                                   5523 	.area CONST   (CODE)
      006629                       5524 ___str_38:
      006629 22                    5525 	.db 0x22
      00662A 2C                    5526 	.ascii ","
      00662B 22                    5527 	.db 0x22
      00662C 6D 6F 64 65           5528 	.ascii "mode"
      006630 22                    5529 	.db 0x22
      006631 3A                    5530 	.ascii ":"
      006632 22                    5531 	.db 0x22
      006633 00                    5532 	.db 0x00
                                   5533 	.area CSEG    (CODE)
                                   5534 	.area CONST   (CODE)
      006634                       5535 ___str_39:
      006634 22                    5536 	.db 0x22
      006635 7D                    5537 	.ascii "}"
      006636 00                    5538 	.db 0x00
                                   5539 	.area CSEG    (CODE)
                                   5540 	.area XINIT   (CODE)
                                   5541 	.area CABS    (ABS,CODE)
