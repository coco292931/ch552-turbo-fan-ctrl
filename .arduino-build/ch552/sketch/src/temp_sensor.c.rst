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
                                     11 	.globl _DS18B20_readTemperatureFast
                                     12 	.globl _DS18B20_begin
                                     13 	.globl _VoltageController_setVoltage
                                     14 	.globl _delay
                                     15 	.globl _UIF_BUS_RST
                                     16 	.globl _UIF_DETECT
                                     17 	.globl _UIF_TRANSFER
                                     18 	.globl _UIF_SUSPEND
                                     19 	.globl _UIF_HST_SOF
                                     20 	.globl _UIF_FIFO_OV
                                     21 	.globl _U_SIE_FREE
                                     22 	.globl _U_TOG_OK
                                     23 	.globl _U_IS_NAK
                                     24 	.globl _ADC_CHAN0
                                     25 	.globl _ADC_CHAN1
                                     26 	.globl _CMP_CHAN
                                     27 	.globl _ADC_START
                                     28 	.globl _ADC_IF
                                     29 	.globl _CMP_IF
                                     30 	.globl _CMPO
                                     31 	.globl _U1RI
                                     32 	.globl _U1TI
                                     33 	.globl _U1RB8
                                     34 	.globl _U1TB8
                                     35 	.globl _U1REN
                                     36 	.globl _U1SMOD
                                     37 	.globl _U1SM0
                                     38 	.globl _S0_R_FIFO
                                     39 	.globl _S0_T_FIFO
                                     40 	.globl _S0_FREE
                                     41 	.globl _S0_IF_BYTE
                                     42 	.globl _S0_IF_FIRST
                                     43 	.globl _S0_IF_OV
                                     44 	.globl _S0_FST_ACT
                                     45 	.globl _CP_RL2
                                     46 	.globl _C_T2
                                     47 	.globl _TR2
                                     48 	.globl _EXEN2
                                     49 	.globl _TCLK
                                     50 	.globl _RCLK
                                     51 	.globl _EXF2
                                     52 	.globl _CAP1F
                                     53 	.globl _TF2
                                     54 	.globl _RI
                                     55 	.globl _TI
                                     56 	.globl _RB8
                                     57 	.globl _TB8
                                     58 	.globl _REN
                                     59 	.globl _SM2
                                     60 	.globl _SM1
                                     61 	.globl _SM0
                                     62 	.globl _IT0
                                     63 	.globl _IE0
                                     64 	.globl _IT1
                                     65 	.globl _IE1
                                     66 	.globl _TR0
                                     67 	.globl _TF0
                                     68 	.globl _TR1
                                     69 	.globl _TF1
                                     70 	.globl _P3_0
                                     71 	.globl _P3_1
                                     72 	.globl _P3_2
                                     73 	.globl _P3_3
                                     74 	.globl _P3_4
                                     75 	.globl _P3_5
                                     76 	.globl _P3_6
                                     77 	.globl _P3_7
                                     78 	.globl _RXD
                                     79 	.globl _PWM1_
                                     80 	.globl _TXD
                                     81 	.globl _PWM2_
                                     82 	.globl _AIN3
                                     83 	.globl _VBUS1
                                     84 	.globl _INT0
                                     85 	.globl _TXD1_
                                     86 	.globl _INT1
                                     87 	.globl _T0
                                     88 	.globl _RXD1_
                                     89 	.globl _PWM2
                                     90 	.globl _T1
                                     91 	.globl _UDP
                                     92 	.globl _UDM
                                     93 	.globl _P1_0
                                     94 	.globl _P1_1
                                     95 	.globl _P1_2
                                     96 	.globl _P1_3
                                     97 	.globl _P1_4
                                     98 	.globl _P1_5
                                     99 	.globl _P1_6
                                    100 	.globl _P1_7
                                    101 	.globl _TIN0
                                    102 	.globl _CAP1
                                    103 	.globl _T2
                                    104 	.globl _AIN0
                                    105 	.globl _VBUS2
                                    106 	.globl _TIN1
                                    107 	.globl _CAP2
                                    108 	.globl _T2EX
                                    109 	.globl _RXD_
                                    110 	.globl _TXD_
                                    111 	.globl _AIN1
                                    112 	.globl _UCC1
                                    113 	.globl _TIN2
                                    114 	.globl _SCS
                                    115 	.globl _CAP1_
                                    116 	.globl _T2_
                                    117 	.globl _AIN2
                                    118 	.globl _UCC2
                                    119 	.globl _TIN3
                                    120 	.globl _PWM1
                                    121 	.globl _MOSI
                                    122 	.globl _TIN4
                                    123 	.globl _RXD1
                                    124 	.globl _MISO
                                    125 	.globl _TIN5
                                    126 	.globl _TXD1
                                    127 	.globl _SCK
                                    128 	.globl _IE_SPI0
                                    129 	.globl _IE_TKEY
                                    130 	.globl _IE_USB
                                    131 	.globl _IE_ADC
                                    132 	.globl _IE_UART1
                                    133 	.globl _IE_PWMX
                                    134 	.globl _IE_GPIO
                                    135 	.globl _IE_WDOG
                                    136 	.globl _PX0
                                    137 	.globl _PT0
                                    138 	.globl _PX1
                                    139 	.globl _PT1
                                    140 	.globl _PS
                                    141 	.globl _PT2
                                    142 	.globl _PL_FLAG
                                    143 	.globl _PH_FLAG
                                    144 	.globl _EX0
                                    145 	.globl _ET0
                                    146 	.globl _EX1
                                    147 	.globl _ET1
                                    148 	.globl _ES
                                    149 	.globl _ET2
                                    150 	.globl _E_DIS
                                    151 	.globl _EA
                                    152 	.globl _P
                                    153 	.globl _F1
                                    154 	.globl _OV
                                    155 	.globl _RS0
                                    156 	.globl _RS1
                                    157 	.globl _F0
                                    158 	.globl _AC
                                    159 	.globl _CY
                                    160 	.globl _UEP1_DMA_H
                                    161 	.globl _UEP1_DMA_L
                                    162 	.globl _UEP1_DMA
                                    163 	.globl _UEP0_DMA_H
                                    164 	.globl _UEP0_DMA_L
                                    165 	.globl _UEP0_DMA
                                    166 	.globl _UEP2_3_MOD
                                    167 	.globl _UEP4_1_MOD
                                    168 	.globl _UEP3_DMA_H
                                    169 	.globl _UEP3_DMA_L
                                    170 	.globl _UEP3_DMA
                                    171 	.globl _UEP2_DMA_H
                                    172 	.globl _UEP2_DMA_L
                                    173 	.globl _UEP2_DMA
                                    174 	.globl _USB_DEV_AD
                                    175 	.globl _USB_CTRL
                                    176 	.globl _USB_INT_EN
                                    177 	.globl _UEP4_T_LEN
                                    178 	.globl _UEP4_CTRL
                                    179 	.globl _UEP0_T_LEN
                                    180 	.globl _UEP0_CTRL
                                    181 	.globl _USB_RX_LEN
                                    182 	.globl _USB_MIS_ST
                                    183 	.globl _USB_INT_ST
                                    184 	.globl _USB_INT_FG
                                    185 	.globl _UEP3_T_LEN
                                    186 	.globl _UEP3_CTRL
                                    187 	.globl _UEP2_T_LEN
                                    188 	.globl _UEP2_CTRL
                                    189 	.globl _UEP1_T_LEN
                                    190 	.globl _UEP1_CTRL
                                    191 	.globl _UDEV_CTRL
                                    192 	.globl _USB_C_CTRL
                                    193 	.globl _TKEY_DATH
                                    194 	.globl _TKEY_DATL
                                    195 	.globl _TKEY_DAT
                                    196 	.globl _TKEY_CTRL
                                    197 	.globl _ADC_DATA
                                    198 	.globl _ADC_CFG
                                    199 	.globl _ADC_CTRL
                                    200 	.globl _SBAUD1
                                    201 	.globl _SBUF1
                                    202 	.globl _SCON1
                                    203 	.globl _SPI0_SETUP
                                    204 	.globl _SPI0_CK_SE
                                    205 	.globl _SPI0_CTRL
                                    206 	.globl _SPI0_DATA
                                    207 	.globl _SPI0_STAT
                                    208 	.globl _PWM_CK_SE
                                    209 	.globl _PWM_CTRL
                                    210 	.globl _PWM_DATA1
                                    211 	.globl _PWM_DATA2
                                    212 	.globl _T2CAP1H
                                    213 	.globl _T2CAP1L
                                    214 	.globl _T2CAP1
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _T2COUNT
                                    218 	.globl _RCAP2H
                                    219 	.globl _RCAP2L
                                    220 	.globl _RCAP2
                                    221 	.globl _T2MOD
                                    222 	.globl _T2CON
                                    223 	.globl _SBUF
                                    224 	.globl _SCON
                                    225 	.globl _TH1
                                    226 	.globl _TH0
                                    227 	.globl _TL1
                                    228 	.globl _TL0
                                    229 	.globl _TMOD
                                    230 	.globl _TCON
                                    231 	.globl _XBUS_AUX
                                    232 	.globl _PIN_FUNC
                                    233 	.globl _P3_DIR_PU
                                    234 	.globl _P3_MOD_OC
                                    235 	.globl _P3
                                    236 	.globl _P2
                                    237 	.globl _P1_DIR_PU
                                    238 	.globl _P1_MOD_OC
                                    239 	.globl _P1
                                    240 	.globl _ROM_CTRL
                                    241 	.globl _ROM_DATA_H
                                    242 	.globl _ROM_DATA_L
                                    243 	.globl _ROM_DATA
                                    244 	.globl _ROM_ADDR_H
                                    245 	.globl _ROM_ADDR_L
                                    246 	.globl _ROM_ADDR
                                    247 	.globl _GPIO_IE
                                    248 	.globl _IP_EX
                                    249 	.globl _IE_EX
                                    250 	.globl _IP
                                    251 	.globl _IE
                                    252 	.globl _WDOG_COUNT
                                    253 	.globl _RESET_KEEP
                                    254 	.globl _WAKE_CTRL
                                    255 	.globl _CLOCK_CFG
                                    256 	.globl _PCON
                                    257 	.globl _GLOBAL_CFG
                                    258 	.globl _SAFE_MOD
                                    259 	.globl _DPH
                                    260 	.globl _DPL
                                    261 	.globl _SP
                                    262 	.globl _B
                                    263 	.globl _ACC
                                    264 	.globl _PSW
                                    265 	.globl _TempController_begin_PARM_3
                                    266 	.globl _TempController_begin_PARM_2
                                    267 	.globl _TempController_begin
                                    268 	.globl _TempController_update
                                    269 	.globl _TempController_isOverheat
                                    270 	.globl _TempController_getTemperature
                                    271 	.globl _TempController_getTargetRPM
                                    272 	.globl _TempController_isReady
                                    273 ;--------------------------------------------------------
                                    274 ; special function registers
                                    275 ;--------------------------------------------------------
                                    276 	.area RSEG    (ABS,DATA)
      000000                        277 	.org 0x0000
                           0000D0   278 _PSW	=	0x00d0
                           0000E0   279 _ACC	=	0x00e0
                           0000F0   280 _B	=	0x00f0
                           000081   281 _SP	=	0x0081
                           000082   282 _DPL	=	0x0082
                           000083   283 _DPH	=	0x0083
                           0000A1   284 _SAFE_MOD	=	0x00a1
                           0000B1   285 _GLOBAL_CFG	=	0x00b1
                           000087   286 _PCON	=	0x0087
                           0000B9   287 _CLOCK_CFG	=	0x00b9
                           0000A9   288 _WAKE_CTRL	=	0x00a9
                           0000FE   289 _RESET_KEEP	=	0x00fe
                           0000FF   290 _WDOG_COUNT	=	0x00ff
                           0000A8   291 _IE	=	0x00a8
                           0000B8   292 _IP	=	0x00b8
                           0000E8   293 _IE_EX	=	0x00e8
                           0000E9   294 _IP_EX	=	0x00e9
                           0000C7   295 _GPIO_IE	=	0x00c7
                           008584   296 _ROM_ADDR	=	0x8584
                           000084   297 _ROM_ADDR_L	=	0x0084
                           000085   298 _ROM_ADDR_H	=	0x0085
                           008F8E   299 _ROM_DATA	=	0x8f8e
                           00008E   300 _ROM_DATA_L	=	0x008e
                           00008F   301 _ROM_DATA_H	=	0x008f
                           000086   302 _ROM_CTRL	=	0x0086
                           000090   303 _P1	=	0x0090
                           000092   304 _P1_MOD_OC	=	0x0092
                           000093   305 _P1_DIR_PU	=	0x0093
                           0000A0   306 _P2	=	0x00a0
                           0000B0   307 _P3	=	0x00b0
                           000096   308 _P3_MOD_OC	=	0x0096
                           000097   309 _P3_DIR_PU	=	0x0097
                           0000C6   310 _PIN_FUNC	=	0x00c6
                           0000A2   311 _XBUS_AUX	=	0x00a2
                           000088   312 _TCON	=	0x0088
                           000089   313 _TMOD	=	0x0089
                           00008A   314 _TL0	=	0x008a
                           00008B   315 _TL1	=	0x008b
                           00008C   316 _TH0	=	0x008c
                           00008D   317 _TH1	=	0x008d
                           000098   318 _SCON	=	0x0098
                           000099   319 _SBUF	=	0x0099
                           0000C8   320 _T2CON	=	0x00c8
                           0000C9   321 _T2MOD	=	0x00c9
                           00CBCA   322 _RCAP2	=	0xcbca
                           0000CA   323 _RCAP2L	=	0x00ca
                           0000CB   324 _RCAP2H	=	0x00cb
                           00CDCC   325 _T2COUNT	=	0xcdcc
                           0000CC   326 _TL2	=	0x00cc
                           0000CD   327 _TH2	=	0x00cd
                           00CFCE   328 _T2CAP1	=	0xcfce
                           0000CE   329 _T2CAP1L	=	0x00ce
                           0000CF   330 _T2CAP1H	=	0x00cf
                           00009B   331 _PWM_DATA2	=	0x009b
                           00009C   332 _PWM_DATA1	=	0x009c
                           00009D   333 _PWM_CTRL	=	0x009d
                           00009E   334 _PWM_CK_SE	=	0x009e
                           0000F8   335 _SPI0_STAT	=	0x00f8
                           0000F9   336 _SPI0_DATA	=	0x00f9
                           0000FA   337 _SPI0_CTRL	=	0x00fa
                           0000FB   338 _SPI0_CK_SE	=	0x00fb
                           0000FC   339 _SPI0_SETUP	=	0x00fc
                           0000C0   340 _SCON1	=	0x00c0
                           0000C1   341 _SBUF1	=	0x00c1
                           0000C2   342 _SBAUD1	=	0x00c2
                           000080   343 _ADC_CTRL	=	0x0080
                           00009A   344 _ADC_CFG	=	0x009a
                           00009F   345 _ADC_DATA	=	0x009f
                           0000C3   346 _TKEY_CTRL	=	0x00c3
                           00C5C4   347 _TKEY_DAT	=	0xc5c4
                           0000C4   348 _TKEY_DATL	=	0x00c4
                           0000C5   349 _TKEY_DATH	=	0x00c5
                           000091   350 _USB_C_CTRL	=	0x0091
                           0000D1   351 _UDEV_CTRL	=	0x00d1
                           0000D2   352 _UEP1_CTRL	=	0x00d2
                           0000D3   353 _UEP1_T_LEN	=	0x00d3
                           0000D4   354 _UEP2_CTRL	=	0x00d4
                           0000D5   355 _UEP2_T_LEN	=	0x00d5
                           0000D6   356 _UEP3_CTRL	=	0x00d6
                           0000D7   357 _UEP3_T_LEN	=	0x00d7
                           0000D8   358 _USB_INT_FG	=	0x00d8
                           0000D9   359 _USB_INT_ST	=	0x00d9
                           0000DA   360 _USB_MIS_ST	=	0x00da
                           0000DB   361 _USB_RX_LEN	=	0x00db
                           0000DC   362 _UEP0_CTRL	=	0x00dc
                           0000DD   363 _UEP0_T_LEN	=	0x00dd
                           0000DE   364 _UEP4_CTRL	=	0x00de
                           0000DF   365 _UEP4_T_LEN	=	0x00df
                           0000E1   366 _USB_INT_EN	=	0x00e1
                           0000E2   367 _USB_CTRL	=	0x00e2
                           0000E3   368 _USB_DEV_AD	=	0x00e3
                           00E5E4   369 _UEP2_DMA	=	0xe5e4
                           0000E4   370 _UEP2_DMA_L	=	0x00e4
                           0000E5   371 _UEP2_DMA_H	=	0x00e5
                           00E7E6   372 _UEP3_DMA	=	0xe7e6
                           0000E6   373 _UEP3_DMA_L	=	0x00e6
                           0000E7   374 _UEP3_DMA_H	=	0x00e7
                           0000EA   375 _UEP4_1_MOD	=	0x00ea
                           0000EB   376 _UEP2_3_MOD	=	0x00eb
                           00EDEC   377 _UEP0_DMA	=	0xedec
                           0000EC   378 _UEP0_DMA_L	=	0x00ec
                           0000ED   379 _UEP0_DMA_H	=	0x00ed
                           00EFEE   380 _UEP1_DMA	=	0xefee
                           0000EE   381 _UEP1_DMA_L	=	0x00ee
                           0000EF   382 _UEP1_DMA_H	=	0x00ef
                                    383 ;--------------------------------------------------------
                                    384 ; special function bits
                                    385 ;--------------------------------------------------------
                                    386 	.area RSEG    (ABS,DATA)
      000000                        387 	.org 0x0000
                           0000D7   388 _CY	=	0x00d7
                           0000D6   389 _AC	=	0x00d6
                           0000D5   390 _F0	=	0x00d5
                           0000D4   391 _RS1	=	0x00d4
                           0000D3   392 _RS0	=	0x00d3
                           0000D2   393 _OV	=	0x00d2
                           0000D1   394 _F1	=	0x00d1
                           0000D0   395 _P	=	0x00d0
                           0000AF   396 _EA	=	0x00af
                           0000AE   397 _E_DIS	=	0x00ae
                           0000AD   398 _ET2	=	0x00ad
                           0000AC   399 _ES	=	0x00ac
                           0000AB   400 _ET1	=	0x00ab
                           0000AA   401 _EX1	=	0x00aa
                           0000A9   402 _ET0	=	0x00a9
                           0000A8   403 _EX0	=	0x00a8
                           0000BF   404 _PH_FLAG	=	0x00bf
                           0000BE   405 _PL_FLAG	=	0x00be
                           0000BD   406 _PT2	=	0x00bd
                           0000BC   407 _PS	=	0x00bc
                           0000BB   408 _PT1	=	0x00bb
                           0000BA   409 _PX1	=	0x00ba
                           0000B9   410 _PT0	=	0x00b9
                           0000B8   411 _PX0	=	0x00b8
                           0000EF   412 _IE_WDOG	=	0x00ef
                           0000EE   413 _IE_GPIO	=	0x00ee
                           0000ED   414 _IE_PWMX	=	0x00ed
                           0000EC   415 _IE_UART1	=	0x00ec
                           0000EB   416 _IE_ADC	=	0x00eb
                           0000EA   417 _IE_USB	=	0x00ea
                           0000E9   418 _IE_TKEY	=	0x00e9
                           0000E8   419 _IE_SPI0	=	0x00e8
                           000097   420 _SCK	=	0x0097
                           000097   421 _TXD1	=	0x0097
                           000097   422 _TIN5	=	0x0097
                           000096   423 _MISO	=	0x0096
                           000096   424 _RXD1	=	0x0096
                           000096   425 _TIN4	=	0x0096
                           000095   426 _MOSI	=	0x0095
                           000095   427 _PWM1	=	0x0095
                           000095   428 _TIN3	=	0x0095
                           000095   429 _UCC2	=	0x0095
                           000095   430 _AIN2	=	0x0095
                           000094   431 _T2_	=	0x0094
                           000094   432 _CAP1_	=	0x0094
                           000094   433 _SCS	=	0x0094
                           000094   434 _TIN2	=	0x0094
                           000094   435 _UCC1	=	0x0094
                           000094   436 _AIN1	=	0x0094
                           000093   437 _TXD_	=	0x0093
                           000092   438 _RXD_	=	0x0092
                           000091   439 _T2EX	=	0x0091
                           000091   440 _CAP2	=	0x0091
                           000091   441 _TIN1	=	0x0091
                           000091   442 _VBUS2	=	0x0091
                           000091   443 _AIN0	=	0x0091
                           000090   444 _T2	=	0x0090
                           000090   445 _CAP1	=	0x0090
                           000090   446 _TIN0	=	0x0090
                           000097   447 _P1_7	=	0x0097
                           000096   448 _P1_6	=	0x0096
                           000095   449 _P1_5	=	0x0095
                           000094   450 _P1_4	=	0x0094
                           000093   451 _P1_3	=	0x0093
                           000092   452 _P1_2	=	0x0092
                           000091   453 _P1_1	=	0x0091
                           000090   454 _P1_0	=	0x0090
                           0000B7   455 _UDM	=	0x00b7
                           0000B6   456 _UDP	=	0x00b6
                           0000B5   457 _T1	=	0x00b5
                           0000B4   458 _PWM2	=	0x00b4
                           0000B4   459 _RXD1_	=	0x00b4
                           0000B4   460 _T0	=	0x00b4
                           0000B3   461 _INT1	=	0x00b3
                           0000B2   462 _TXD1_	=	0x00b2
                           0000B2   463 _INT0	=	0x00b2
                           0000B2   464 _VBUS1	=	0x00b2
                           0000B2   465 _AIN3	=	0x00b2
                           0000B1   466 _PWM2_	=	0x00b1
                           0000B1   467 _TXD	=	0x00b1
                           0000B0   468 _PWM1_	=	0x00b0
                           0000B0   469 _RXD	=	0x00b0
                           0000B7   470 _P3_7	=	0x00b7
                           0000B6   471 _P3_6	=	0x00b6
                           0000B5   472 _P3_5	=	0x00b5
                           0000B4   473 _P3_4	=	0x00b4
                           0000B3   474 _P3_3	=	0x00b3
                           0000B2   475 _P3_2	=	0x00b2
                           0000B1   476 _P3_1	=	0x00b1
                           0000B0   477 _P3_0	=	0x00b0
                           00008F   478 _TF1	=	0x008f
                           00008E   479 _TR1	=	0x008e
                           00008D   480 _TF0	=	0x008d
                           00008C   481 _TR0	=	0x008c
                           00008B   482 _IE1	=	0x008b
                           00008A   483 _IT1	=	0x008a
                           000089   484 _IE0	=	0x0089
                           000088   485 _IT0	=	0x0088
                           00009F   486 _SM0	=	0x009f
                           00009E   487 _SM1	=	0x009e
                           00009D   488 _SM2	=	0x009d
                           00009C   489 _REN	=	0x009c
                           00009B   490 _TB8	=	0x009b
                           00009A   491 _RB8	=	0x009a
                           000099   492 _TI	=	0x0099
                           000098   493 _RI	=	0x0098
                           0000CF   494 _TF2	=	0x00cf
                           0000CF   495 _CAP1F	=	0x00cf
                           0000CE   496 _EXF2	=	0x00ce
                           0000CD   497 _RCLK	=	0x00cd
                           0000CC   498 _TCLK	=	0x00cc
                           0000CB   499 _EXEN2	=	0x00cb
                           0000CA   500 _TR2	=	0x00ca
                           0000C9   501 _C_T2	=	0x00c9
                           0000C8   502 _CP_RL2	=	0x00c8
                           0000FF   503 _S0_FST_ACT	=	0x00ff
                           0000FE   504 _S0_IF_OV	=	0x00fe
                           0000FD   505 _S0_IF_FIRST	=	0x00fd
                           0000FC   506 _S0_IF_BYTE	=	0x00fc
                           0000FB   507 _S0_FREE	=	0x00fb
                           0000FA   508 _S0_T_FIFO	=	0x00fa
                           0000F8   509 _S0_R_FIFO	=	0x00f8
                           0000C7   510 _U1SM0	=	0x00c7
                           0000C5   511 _U1SMOD	=	0x00c5
                           0000C4   512 _U1REN	=	0x00c4
                           0000C3   513 _U1TB8	=	0x00c3
                           0000C2   514 _U1RB8	=	0x00c2
                           0000C1   515 _U1TI	=	0x00c1
                           0000C0   516 _U1RI	=	0x00c0
                           000087   517 _CMPO	=	0x0087
                           000086   518 _CMP_IF	=	0x0086
                           000085   519 _ADC_IF	=	0x0085
                           000084   520 _ADC_START	=	0x0084
                           000083   521 _CMP_CHAN	=	0x0083
                           000081   522 _ADC_CHAN1	=	0x0081
                           000080   523 _ADC_CHAN0	=	0x0080
                           0000DF   524 _U_IS_NAK	=	0x00df
                           0000DE   525 _U_TOG_OK	=	0x00de
                           0000DD   526 _U_SIE_FREE	=	0x00dd
                           0000DC   527 _UIF_FIFO_OV	=	0x00dc
                           0000DB   528 _UIF_HST_SOF	=	0x00db
                           0000DA   529 _UIF_SUSPEND	=	0x00da
                           0000D9   530 _UIF_TRANSFER	=	0x00d9
                           0000D8   531 _UIF_DETECT	=	0x00d8
                           0000D8   532 _UIF_BUS_RST	=	0x00d8
                                    533 ;--------------------------------------------------------
                                    534 ; overlayable register banks
                                    535 ;--------------------------------------------------------
                                    536 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        537 	.ds 8
                                    538 ;--------------------------------------------------------
                                    539 ; internal ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area DSEG    (DATA)
      000037                        542 _TempController_mapTempToRPM_sloc0_1_0:
      000037                        543 	.ds 4
      00003B                        544 _TempController_begin_sloc0_1_0:
      00003B                        545 	.ds 3
      00003E                        546 _TempController_begin_sloc1_1_0:
      00003E                        547 	.ds 3
      000041                        548 _TempController_update_sloc0_1_0:
      000041                        549 	.ds 4
      000045                        550 _TempController_update_sloc1_1_0:
      000045                        551 	.ds 3
                                    552 ;--------------------------------------------------------
                                    553 ; overlayable items in internal ram
                                    554 ;--------------------------------------------------------
                                    555 ;--------------------------------------------------------
                                    556 ; indirectly addressable internal ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area ISEG    (DATA)
                                    559 ;--------------------------------------------------------
                                    560 ; absolute internal ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area IABS    (ABS,DATA)
                                    563 	.area IABS    (ABS,DATA)
                                    564 ;--------------------------------------------------------
                                    565 ; bit data
                                    566 ;--------------------------------------------------------
                                    567 	.area BSEG    (BIT)
      000000                        568 _TempController_begin_sloc2_1_0:
      000000                        569 	.ds 1
      000001                        570 _TempController_isOverheat_sloc0_1_0:
      000001                        571 	.ds 1
                                    572 ;--------------------------------------------------------
                                    573 ; paged external ram data
                                    574 ;--------------------------------------------------------
                                    575 	.area PSEG    (PAG,XDATA)
                                    576 ;--------------------------------------------------------
                                    577 ; uninitialized external ram data
                                    578 ;--------------------------------------------------------
                                    579 	.area XSEG    (XDATA)
      000195                        580 _TempController_mapTempToVoltageLinear_temp_65536_192:
      000195                        581 	.ds 4
      000199                        582 _TempController_mapTempToVoltageLinear_voltage_65536_193:
      000199                        583 	.ds 4
      00019D                        584 _TempController_mapTempToVoltageQuadratic_temp_65536_194:
      00019D                        585 	.ds 4
      0001A1                        586 _TempController_mapTempToVoltageQuadratic_norm_temp_65536_195:
      0001A1                        587 	.ds 4
      0001A5                        588 _TempController_mapTempToVoltageQuadratic_voltage_65536_195:
      0001A5                        589 	.ds 4
      0001A9                        590 _TempController_mapTempToRPM_temp_65536_196:
      0001A9                        591 	.ds 4
      0001AD                        592 _TempController_begin_PARM_2:
      0001AD                        593 	.ds 3
      0001B0                        594 _TempController_begin_PARM_3:
      0001B0                        595 	.ds 3
      0001B3                        596 _TempController_begin_tc_65536_198:
      0001B3                        597 	.ds 3
      0001B6                        598 _TempController_update_tc_65536_202:
      0001B6                        599 	.ds 3
      0001B9                        600 _TempController_isOverheat_tc_65536_208:
      0001B9                        601 	.ds 3
      0001BC                        602 _TempController_getTemperature_tc_65536_210:
      0001BC                        603 	.ds 3
      0001BF                        604 _TempController_getTargetRPM_tc_65536_212:
      0001BF                        605 	.ds 3
      0001C2                        606 _TempController_isReady_tc_65536_214:
      0001C2                        607 	.ds 3
                                    608 ;--------------------------------------------------------
                                    609 ; absolute external ram data
                                    610 ;--------------------------------------------------------
                                    611 	.area XABS    (ABS,XDATA)
                                    612 ;--------------------------------------------------------
                                    613 ; initialized external ram data
                                    614 ;--------------------------------------------------------
                                    615 	.area XISEG   (XDATA)
                                    616 	.area HOME    (CODE)
                                    617 	.area GSINIT0 (CODE)
                                    618 	.area GSINIT1 (CODE)
                                    619 	.area GSINIT2 (CODE)
                                    620 	.area GSINIT3 (CODE)
                                    621 	.area GSINIT4 (CODE)
                                    622 	.area GSINIT5 (CODE)
                                    623 	.area GSINIT  (CODE)
                                    624 	.area GSFINAL (CODE)
                                    625 	.area CSEG    (CODE)
                                    626 ;--------------------------------------------------------
                                    627 ; global & static initialisations
                                    628 ;--------------------------------------------------------
                                    629 	.area HOME    (CODE)
                                    630 	.area GSINIT  (CODE)
                                    631 	.area GSFINAL (CODE)
                                    632 	.area GSINIT  (CODE)
                                    633 ;--------------------------------------------------------
                                    634 ; Home
                                    635 ;--------------------------------------------------------
                                    636 	.area HOME    (CODE)
                                    637 	.area HOME    (CODE)
                                    638 ;--------------------------------------------------------
                                    639 ; code
                                    640 ;--------------------------------------------------------
                                    641 	.area CSEG    (CODE)
                                    642 ;------------------------------------------------------------
                                    643 ;Allocation info for local variables in function 'TempController_mapTempToVoltageLinear'
                                    644 ;------------------------------------------------------------
                                    645 ;temp                      Allocated with name '_TempController_mapTempToVoltageLinear_temp_65536_192'
                                    646 ;voltage                   Allocated with name '_TempController_mapTempToVoltageLinear_voltage_65536_193'
                                    647 ;------------------------------------------------------------
                                    648 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:10: static float TempController_mapTempToVoltageLinear(float temp) {
                                    649 ;	-----------------------------------------
                                    650 ;	 function TempController_mapTempToVoltageLinear
                                    651 ;	-----------------------------------------
      000D64                        652 _TempController_mapTempToVoltageLinear:
                           000007   653 	ar7 = 0x07
                           000006   654 	ar6 = 0x06
                           000005   655 	ar5 = 0x05
                           000004   656 	ar4 = 0x04
                           000003   657 	ar3 = 0x03
                           000002   658 	ar2 = 0x02
                           000001   659 	ar1 = 0x01
                           000000   660 	ar0 = 0x00
      000D64 AF 82            [24]  661 	mov	r7,dpl
      000D66 AE 83            [24]  662 	mov	r6,dph
      000D68 AD F0            [24]  663 	mov	r5,b
      000D6A FC               [12]  664 	mov	r4,a
      000D6B 90 01 95         [24]  665 	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
      000D6E EF               [12]  666 	mov	a,r7
      000D6F F0               [24]  667 	movx	@dptr,a
      000D70 EE               [12]  668 	mov	a,r6
      000D71 A3               [24]  669 	inc	dptr
      000D72 F0               [24]  670 	movx	@dptr,a
      000D73 ED               [12]  671 	mov	a,r5
      000D74 A3               [24]  672 	inc	dptr
      000D75 F0               [24]  673 	movx	@dptr,a
      000D76 EC               [12]  674 	mov	a,r4
      000D77 A3               [24]  675 	inc	dptr
      000D78 F0               [24]  676 	movx	@dptr,a
                                    677 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:11: float voltage = TEMP_VOLTAGE_K * temp + TEMP_VOLTAGE_B;
      000D79 90 01 95         [24]  678 	mov	dptr,#_TempController_mapTempToVoltageLinear_temp_65536_192
      000D7C E0               [24]  679 	movx	a,@dptr
      000D7D C0 E0            [24]  680 	push	acc
      000D7F A3               [24]  681 	inc	dptr
      000D80 E0               [24]  682 	movx	a,@dptr
      000D81 C0 E0            [24]  683 	push	acc
      000D83 A3               [24]  684 	inc	dptr
      000D84 E0               [24]  685 	movx	a,@dptr
      000D85 C0 E0            [24]  686 	push	acc
      000D87 A3               [24]  687 	inc	dptr
      000D88 E0               [24]  688 	movx	a,@dptr
      000D89 C0 E0            [24]  689 	push	acc
      000D8B 90 EE F0         [24]  690 	mov	dptr,#0xeef0
      000D8E 75 F0 EE         [24]  691 	mov	b,#0xee
      000D91 74 3E            [12]  692 	mov	a,#0x3e
      000D93 12 1E C9         [24]  693 	lcall	___fsmul
      000D96 AC 82            [24]  694 	mov	r4,dpl
      000D98 AD 83            [24]  695 	mov	r5,dph
      000D9A AE F0            [24]  696 	mov	r6,b
      000D9C FF               [12]  697 	mov	r7,a
      000D9D E5 81            [12]  698 	mov	a,sp
      000D9F 24 FC            [12]  699 	add	a,#0xfc
      000DA1 F5 81            [12]  700 	mov	sp,a
      000DA3 E4               [12]  701 	clr	a
      000DA4 C0 E0            [24]  702 	push	acc
      000DA6 C0 E0            [24]  703 	push	acc
      000DA8 74 10            [12]  704 	mov	a,#0x10
      000DAA C0 E0            [24]  705 	push	acc
      000DAC 74 C1            [12]  706 	mov	a,#0xc1
      000DAE C0 E0            [24]  707 	push	acc
      000DB0 8C 82            [24]  708 	mov	dpl,r4
      000DB2 8D 83            [24]  709 	mov	dph,r5
      000DB4 8E F0            [24]  710 	mov	b,r6
      000DB6 EF               [12]  711 	mov	a,r7
      000DB7 12 2C 36         [24]  712 	lcall	___fsadd
      000DBA AC 82            [24]  713 	mov	r4,dpl
      000DBC AD 83            [24]  714 	mov	r5,dph
      000DBE AE F0            [24]  715 	mov	r6,b
      000DC0 FF               [12]  716 	mov	r7,a
      000DC1 E5 81            [12]  717 	mov	a,sp
      000DC3 24 FC            [12]  718 	add	a,#0xfc
      000DC5 F5 81            [12]  719 	mov	sp,a
      000DC7 90 01 99         [24]  720 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      000DCA EC               [12]  721 	mov	a,r4
      000DCB F0               [24]  722 	movx	@dptr,a
      000DCC ED               [12]  723 	mov	a,r5
      000DCD A3               [24]  724 	inc	dptr
      000DCE F0               [24]  725 	movx	@dptr,a
      000DCF EE               [12]  726 	mov	a,r6
      000DD0 A3               [24]  727 	inc	dptr
      000DD1 F0               [24]  728 	movx	@dptr,a
      000DD2 EF               [12]  729 	mov	a,r7
      000DD3 A3               [24]  730 	inc	dptr
      000DD4 F0               [24]  731 	movx	@dptr,a
                                    732 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:12: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      000DD5 74 66            [12]  733 	mov	a,#0x66
      000DD7 C0 E0            [24]  734 	push	acc
      000DD9 C0 E0            [24]  735 	push	acc
      000DDB 74 A6            [12]  736 	mov	a,#0xa6
      000DDD C0 E0            [24]  737 	push	acc
      000DDF 74 40            [12]  738 	mov	a,#0x40
      000DE1 C0 E0            [24]  739 	push	acc
      000DE3 8C 82            [24]  740 	mov	dpl,r4
      000DE5 8D 83            [24]  741 	mov	dph,r5
      000DE7 8E F0            [24]  742 	mov	b,r6
      000DE9 EF               [12]  743 	mov	a,r7
      000DEA 12 2B 26         [24]  744 	lcall	___fslt
      000DED AF 82            [24]  745 	mov	r7,dpl
      000DEF E5 81            [12]  746 	mov	a,sp
      000DF1 24 FC            [12]  747 	add	a,#0xfc
      000DF3 F5 81            [12]  748 	mov	sp,a
      000DF5 EF               [12]  749 	mov	a,r7
      000DF6 60 10            [24]  750 	jz	00102$
      000DF8 90 01 99         [24]  751 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      000DFB 74 66            [12]  752 	mov	a,#0x66
      000DFD F0               [24]  753 	movx	@dptr,a
      000DFE A3               [24]  754 	inc	dptr
      000DFF F0               [24]  755 	movx	@dptr,a
      000E00 74 A6            [12]  756 	mov	a,#0xa6
      000E02 A3               [24]  757 	inc	dptr
      000E03 F0               [24]  758 	movx	@dptr,a
      000E04 74 40            [12]  759 	mov	a,#0x40
      000E06 A3               [24]  760 	inc	dptr
      000E07 F0               [24]  761 	movx	@dptr,a
      000E08                        762 00102$:
                                    763 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:13: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      000E08 90 01 99         [24]  764 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      000E0B E0               [24]  765 	movx	a,@dptr
      000E0C C0 E0            [24]  766 	push	acc
      000E0E A3               [24]  767 	inc	dptr
      000E0F E0               [24]  768 	movx	a,@dptr
      000E10 C0 E0            [24]  769 	push	acc
      000E12 A3               [24]  770 	inc	dptr
      000E13 E0               [24]  771 	movx	a,@dptr
      000E14 C0 E0            [24]  772 	push	acc
      000E16 A3               [24]  773 	inc	dptr
      000E17 E0               [24]  774 	movx	a,@dptr
      000E18 C0 E0            [24]  775 	push	acc
      000E1A 90 00 00         [24]  776 	mov	dptr,#0x0000
      000E1D 75 F0 40         [24]  777 	mov	b,#0x40
      000E20 74 41            [12]  778 	mov	a,#0x41
      000E22 12 2B 26         [24]  779 	lcall	___fslt
      000E25 AF 82            [24]  780 	mov	r7,dpl
      000E27 E5 81            [12]  781 	mov	a,sp
      000E29 24 FC            [12]  782 	add	a,#0xfc
      000E2B F5 81            [12]  783 	mov	sp,a
      000E2D EF               [12]  784 	mov	a,r7
      000E2E 60 0E            [24]  785 	jz	00104$
      000E30 90 01 99         [24]  786 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      000E33 E4               [12]  787 	clr	a
      000E34 F0               [24]  788 	movx	@dptr,a
      000E35 A3               [24]  789 	inc	dptr
      000E36 F0               [24]  790 	movx	@dptr,a
      000E37 74 40            [12]  791 	mov	a,#0x40
      000E39 A3               [24]  792 	inc	dptr
      000E3A F0               [24]  793 	movx	@dptr,a
      000E3B 04               [12]  794 	inc	a
      000E3C A3               [24]  795 	inc	dptr
      000E3D F0               [24]  796 	movx	@dptr,a
      000E3E                        797 00104$:
                                    798 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:14: return voltage;
      000E3E 90 01 99         [24]  799 	mov	dptr,#_TempController_mapTempToVoltageLinear_voltage_65536_193
      000E41 E0               [24]  800 	movx	a,@dptr
      000E42 FC               [12]  801 	mov	r4,a
      000E43 A3               [24]  802 	inc	dptr
      000E44 E0               [24]  803 	movx	a,@dptr
      000E45 FD               [12]  804 	mov	r5,a
      000E46 A3               [24]  805 	inc	dptr
      000E47 E0               [24]  806 	movx	a,@dptr
      000E48 FE               [12]  807 	mov	r6,a
      000E49 A3               [24]  808 	inc	dptr
      000E4A E0               [24]  809 	movx	a,@dptr
      000E4B 8C 82            [24]  810 	mov	dpl,r4
      000E4D 8D 83            [24]  811 	mov	dph,r5
      000E4F 8E F0            [24]  812 	mov	b,r6
                                    813 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:15: }
      000E51 22               [24]  814 	ret
                                    815 ;------------------------------------------------------------
                                    816 ;Allocation info for local variables in function 'TempController_mapTempToVoltageQuadratic'
                                    817 ;------------------------------------------------------------
                                    818 ;temp                      Allocated with name '_TempController_mapTempToVoltageQuadratic_temp_65536_194'
                                    819 ;norm_temp                 Allocated with name '_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195'
                                    820 ;voltage                   Allocated with name '_TempController_mapTempToVoltageQuadratic_voltage_65536_195'
                                    821 ;------------------------------------------------------------
                                    822 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:17: static float TempController_mapTempToVoltageQuadratic(float temp) {
                                    823 ;	-----------------------------------------
                                    824 ;	 function TempController_mapTempToVoltageQuadratic
                                    825 ;	-----------------------------------------
      000E52                        826 _TempController_mapTempToVoltageQuadratic:
      000E52 AF 82            [24]  827 	mov	r7,dpl
      000E54 AE 83            [24]  828 	mov	r6,dph
      000E56 AD F0            [24]  829 	mov	r5,b
      000E58 FC               [12]  830 	mov	r4,a
      000E59 90 01 9D         [24]  831 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
      000E5C EF               [12]  832 	mov	a,r7
      000E5D F0               [24]  833 	movx	@dptr,a
      000E5E EE               [12]  834 	mov	a,r6
      000E5F A3               [24]  835 	inc	dptr
      000E60 F0               [24]  836 	movx	@dptr,a
      000E61 ED               [12]  837 	mov	a,r5
      000E62 A3               [24]  838 	inc	dptr
      000E63 F0               [24]  839 	movx	@dptr,a
      000E64 EC               [12]  840 	mov	a,r4
      000E65 A3               [24]  841 	inc	dptr
      000E66 F0               [24]  842 	movx	@dptr,a
                                    843 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:18: float norm_temp = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
      000E67 90 01 9D         [24]  844 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_temp_65536_194
      000E6A E0               [24]  845 	movx	a,@dptr
      000E6B FC               [12]  846 	mov	r4,a
      000E6C A3               [24]  847 	inc	dptr
      000E6D E0               [24]  848 	movx	a,@dptr
      000E6E FD               [12]  849 	mov	r5,a
      000E6F A3               [24]  850 	inc	dptr
      000E70 E0               [24]  851 	movx	a,@dptr
      000E71 FE               [12]  852 	mov	r6,a
      000E72 A3               [24]  853 	inc	dptr
      000E73 E0               [24]  854 	movx	a,@dptr
      000E74 FF               [12]  855 	mov	r7,a
      000E75 E4               [12]  856 	clr	a
      000E76 C0 E0            [24]  857 	push	acc
      000E78 C0 E0            [24]  858 	push	acc
      000E7A 74 F0            [12]  859 	mov	a,#0xf0
      000E7C C0 E0            [24]  860 	push	acc
      000E7E 74 41            [12]  861 	mov	a,#0x41
      000E80 C0 E0            [24]  862 	push	acc
      000E82 8C 82            [24]  863 	mov	dpl,r4
      000E84 8D 83            [24]  864 	mov	dph,r5
      000E86 8E F0            [24]  865 	mov	b,r6
      000E88 EF               [12]  866 	mov	a,r7
      000E89 12 1E 46         [24]  867 	lcall	___fssub
      000E8C AC 82            [24]  868 	mov	r4,dpl
      000E8E AD 83            [24]  869 	mov	r5,dph
      000E90 AE F0            [24]  870 	mov	r6,b
      000E92 FF               [12]  871 	mov	r7,a
      000E93 E5 81            [12]  872 	mov	a,sp
      000E95 24 FC            [12]  873 	add	a,#0xfc
      000E97 F5 81            [12]  874 	mov	sp,a
      000E99 E4               [12]  875 	clr	a
      000E9A C0 E0            [24]  876 	push	acc
      000E9C C0 E0            [24]  877 	push	acc
      000E9E 74 70            [12]  878 	mov	a,#0x70
      000EA0 C0 E0            [24]  879 	push	acc
      000EA2 74 41            [12]  880 	mov	a,#0x41
      000EA4 C0 E0            [24]  881 	push	acc
      000EA6 8C 82            [24]  882 	mov	dpl,r4
      000EA8 8D 83            [24]  883 	mov	dph,r5
      000EAA 8E F0            [24]  884 	mov	b,r6
      000EAC EF               [12]  885 	mov	a,r7
      000EAD 12 30 60         [24]  886 	lcall	___fsdiv
      000EB0 AC 82            [24]  887 	mov	r4,dpl
      000EB2 AD 83            [24]  888 	mov	r5,dph
      000EB4 AE F0            [24]  889 	mov	r6,b
      000EB6 FF               [12]  890 	mov	r7,a
      000EB7 E5 81            [12]  891 	mov	a,sp
      000EB9 24 FC            [12]  892 	add	a,#0xfc
      000EBB F5 81            [12]  893 	mov	sp,a
      000EBD 90 01 A1         [24]  894 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      000EC0 EC               [12]  895 	mov	a,r4
      000EC1 F0               [24]  896 	movx	@dptr,a
      000EC2 ED               [12]  897 	mov	a,r5
      000EC3 A3               [24]  898 	inc	dptr
      000EC4 F0               [24]  899 	movx	@dptr,a
      000EC5 EE               [12]  900 	mov	a,r6
      000EC6 A3               [24]  901 	inc	dptr
      000EC7 F0               [24]  902 	movx	@dptr,a
      000EC8 EF               [12]  903 	mov	a,r7
      000EC9 A3               [24]  904 	inc	dptr
      000ECA F0               [24]  905 	movx	@dptr,a
                                    906 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:21: if (norm_temp < 0.0f) norm_temp = 0.0f;
      000ECB E4               [12]  907 	clr	a
      000ECC C0 E0            [24]  908 	push	acc
      000ECE C0 E0            [24]  909 	push	acc
      000ED0 C0 E0            [24]  910 	push	acc
      000ED2 C0 E0            [24]  911 	push	acc
      000ED4 8C 82            [24]  912 	mov	dpl,r4
      000ED6 8D 83            [24]  913 	mov	dph,r5
      000ED8 8E F0            [24]  914 	mov	b,r6
      000EDA EF               [12]  915 	mov	a,r7
      000EDB 12 2B 26         [24]  916 	lcall	___fslt
      000EDE AF 82            [24]  917 	mov	r7,dpl
      000EE0 E5 81            [12]  918 	mov	a,sp
      000EE2 24 FC            [12]  919 	add	a,#0xfc
      000EE4 F5 81            [12]  920 	mov	sp,a
      000EE6 EF               [12]  921 	mov	a,r7
      000EE7 60 0B            [24]  922 	jz	00102$
      000EE9 90 01 A1         [24]  923 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      000EEC E4               [12]  924 	clr	a
      000EED F0               [24]  925 	movx	@dptr,a
      000EEE A3               [24]  926 	inc	dptr
      000EEF F0               [24]  927 	movx	@dptr,a
      000EF0 A3               [24]  928 	inc	dptr
      000EF1 F0               [24]  929 	movx	@dptr,a
      000EF2 A3               [24]  930 	inc	dptr
      000EF3 F0               [24]  931 	movx	@dptr,a
      000EF4                        932 00102$:
                                    933 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:22: if (norm_temp > 1.0f) norm_temp = 1.0f;
      000EF4 90 01 A1         [24]  934 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      000EF7 E0               [24]  935 	movx	a,@dptr
      000EF8 C0 E0            [24]  936 	push	acc
      000EFA A3               [24]  937 	inc	dptr
      000EFB E0               [24]  938 	movx	a,@dptr
      000EFC C0 E0            [24]  939 	push	acc
      000EFE A3               [24]  940 	inc	dptr
      000EFF E0               [24]  941 	movx	a,@dptr
      000F00 C0 E0            [24]  942 	push	acc
      000F02 A3               [24]  943 	inc	dptr
      000F03 E0               [24]  944 	movx	a,@dptr
      000F04 C0 E0            [24]  945 	push	acc
      000F06 90 00 00         [24]  946 	mov	dptr,#0x0000
      000F09 75 F0 80         [24]  947 	mov	b,#0x80
      000F0C 74 3F            [12]  948 	mov	a,#0x3f
      000F0E 12 2B 26         [24]  949 	lcall	___fslt
      000F11 AF 82            [24]  950 	mov	r7,dpl
      000F13 E5 81            [12]  951 	mov	a,sp
      000F15 24 FC            [12]  952 	add	a,#0xfc
      000F17 F5 81            [12]  953 	mov	sp,a
      000F19 EF               [12]  954 	mov	a,r7
      000F1A 60 0F            [24]  955 	jz	00104$
      000F1C 90 01 A1         [24]  956 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      000F1F E4               [12]  957 	clr	a
      000F20 F0               [24]  958 	movx	@dptr,a
      000F21 A3               [24]  959 	inc	dptr
      000F22 F0               [24]  960 	movx	@dptr,a
      000F23 74 80            [12]  961 	mov	a,#0x80
      000F25 A3               [24]  962 	inc	dptr
      000F26 F0               [24]  963 	movx	@dptr,a
      000F27 74 3F            [12]  964 	mov	a,#0x3f
      000F29 A3               [24]  965 	inc	dptr
      000F2A F0               [24]  966 	movx	@dptr,a
      000F2B                        967 00104$:
                                    968 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:24: voltage = VOUT_MIN + (VOUT_MAX - VOUT_MIN) * norm_temp * norm_temp;
      000F2B 90 01 A1         [24]  969 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_norm_temp_65536_195
      000F2E E0               [24]  970 	movx	a,@dptr
      000F2F FC               [12]  971 	mov	r4,a
      000F30 A3               [24]  972 	inc	dptr
      000F31 E0               [24]  973 	movx	a,@dptr
      000F32 FD               [12]  974 	mov	r5,a
      000F33 A3               [24]  975 	inc	dptr
      000F34 E0               [24]  976 	movx	a,@dptr
      000F35 FE               [12]  977 	mov	r6,a
      000F36 A3               [24]  978 	inc	dptr
      000F37 E0               [24]  979 	movx	a,@dptr
      000F38 FF               [12]  980 	mov	r7,a
      000F39 C0 07            [24]  981 	push	ar7
      000F3B C0 06            [24]  982 	push	ar6
      000F3D C0 05            [24]  983 	push	ar5
      000F3F C0 04            [24]  984 	push	ar4
      000F41 C0 04            [24]  985 	push	ar4
      000F43 C0 05            [24]  986 	push	ar5
      000F45 C0 06            [24]  987 	push	ar6
      000F47 C0 07            [24]  988 	push	ar7
      000F49 90 99 9A         [24]  989 	mov	dptr,#0x999a
      000F4C 75 F0 D9         [24]  990 	mov	b,#0xd9
      000F4F 74 40            [12]  991 	mov	a,#0x40
      000F51 12 1E C9         [24]  992 	lcall	___fsmul
      000F54 A8 82            [24]  993 	mov	r0,dpl
      000F56 A9 83            [24]  994 	mov	r1,dph
      000F58 AA F0            [24]  995 	mov	r2,b
      000F5A FB               [12]  996 	mov	r3,a
      000F5B E5 81            [12]  997 	mov	a,sp
      000F5D 24 FC            [12]  998 	add	a,#0xfc
      000F5F F5 81            [12]  999 	mov	sp,a
      000F61 D0 04            [24] 1000 	pop	ar4
      000F63 D0 05            [24] 1001 	pop	ar5
      000F65 D0 06            [24] 1002 	pop	ar6
      000F67 D0 07            [24] 1003 	pop	ar7
      000F69 C0 04            [24] 1004 	push	ar4
      000F6B C0 05            [24] 1005 	push	ar5
      000F6D C0 06            [24] 1006 	push	ar6
      000F6F C0 07            [24] 1007 	push	ar7
      000F71 88 82            [24] 1008 	mov	dpl,r0
      000F73 89 83            [24] 1009 	mov	dph,r1
      000F75 8A F0            [24] 1010 	mov	b,r2
      000F77 EB               [12] 1011 	mov	a,r3
      000F78 12 1E C9         [24] 1012 	lcall	___fsmul
      000F7B AC 82            [24] 1013 	mov	r4,dpl
      000F7D AD 83            [24] 1014 	mov	r5,dph
      000F7F AE F0            [24] 1015 	mov	r6,b
      000F81 FF               [12] 1016 	mov	r7,a
      000F82 E5 81            [12] 1017 	mov	a,sp
      000F84 24 FC            [12] 1018 	add	a,#0xfc
      000F86 F5 81            [12] 1019 	mov	sp,a
      000F88 74 66            [12] 1020 	mov	a,#0x66
      000F8A C0 E0            [24] 1021 	push	acc
      000F8C C0 E0            [24] 1022 	push	acc
      000F8E 74 A6            [12] 1023 	mov	a,#0xa6
      000F90 C0 E0            [24] 1024 	push	acc
      000F92 74 40            [12] 1025 	mov	a,#0x40
      000F94 C0 E0            [24] 1026 	push	acc
      000F96 8C 82            [24] 1027 	mov	dpl,r4
      000F98 8D 83            [24] 1028 	mov	dph,r5
      000F9A 8E F0            [24] 1029 	mov	b,r6
      000F9C EF               [12] 1030 	mov	a,r7
      000F9D 12 2C 36         [24] 1031 	lcall	___fsadd
      000FA0 AC 82            [24] 1032 	mov	r4,dpl
      000FA2 AD 83            [24] 1033 	mov	r5,dph
      000FA4 AE F0            [24] 1034 	mov	r6,b
      000FA6 FF               [12] 1035 	mov	r7,a
      000FA7 E5 81            [12] 1036 	mov	a,sp
      000FA9 24 FC            [12] 1037 	add	a,#0xfc
      000FAB F5 81            [12] 1038 	mov	sp,a
      000FAD 90 01 A5         [24] 1039 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      000FB0 EC               [12] 1040 	mov	a,r4
      000FB1 F0               [24] 1041 	movx	@dptr,a
      000FB2 ED               [12] 1042 	mov	a,r5
      000FB3 A3               [24] 1043 	inc	dptr
      000FB4 F0               [24] 1044 	movx	@dptr,a
      000FB5 EE               [12] 1045 	mov	a,r6
      000FB6 A3               [24] 1046 	inc	dptr
      000FB7 F0               [24] 1047 	movx	@dptr,a
      000FB8 EF               [12] 1048 	mov	a,r7
      000FB9 A3               [24] 1049 	inc	dptr
      000FBA F0               [24] 1050 	movx	@dptr,a
                                   1051 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:25: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      000FBB 74 66            [12] 1052 	mov	a,#0x66
      000FBD C0 E0            [24] 1053 	push	acc
      000FBF C0 E0            [24] 1054 	push	acc
      000FC1 74 A6            [12] 1055 	mov	a,#0xa6
      000FC3 C0 E0            [24] 1056 	push	acc
      000FC5 74 40            [12] 1057 	mov	a,#0x40
      000FC7 C0 E0            [24] 1058 	push	acc
      000FC9 8C 82            [24] 1059 	mov	dpl,r4
      000FCB 8D 83            [24] 1060 	mov	dph,r5
      000FCD 8E F0            [24] 1061 	mov	b,r6
      000FCF EF               [12] 1062 	mov	a,r7
      000FD0 12 2B 26         [24] 1063 	lcall	___fslt
      000FD3 AF 82            [24] 1064 	mov	r7,dpl
      000FD5 E5 81            [12] 1065 	mov	a,sp
      000FD7 24 FC            [12] 1066 	add	a,#0xfc
      000FD9 F5 81            [12] 1067 	mov	sp,a
      000FDB EF               [12] 1068 	mov	a,r7
      000FDC 60 10            [24] 1069 	jz	00106$
      000FDE 90 01 A5         [24] 1070 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      000FE1 74 66            [12] 1071 	mov	a,#0x66
      000FE3 F0               [24] 1072 	movx	@dptr,a
      000FE4 A3               [24] 1073 	inc	dptr
      000FE5 F0               [24] 1074 	movx	@dptr,a
      000FE6 74 A6            [12] 1075 	mov	a,#0xa6
      000FE8 A3               [24] 1076 	inc	dptr
      000FE9 F0               [24] 1077 	movx	@dptr,a
      000FEA 74 40            [12] 1078 	mov	a,#0x40
      000FEC A3               [24] 1079 	inc	dptr
      000FED F0               [24] 1080 	movx	@dptr,a
      000FEE                       1081 00106$:
                                   1082 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:26: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      000FEE 90 01 A5         [24] 1083 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      000FF1 E0               [24] 1084 	movx	a,@dptr
      000FF2 C0 E0            [24] 1085 	push	acc
      000FF4 A3               [24] 1086 	inc	dptr
      000FF5 E0               [24] 1087 	movx	a,@dptr
      000FF6 C0 E0            [24] 1088 	push	acc
      000FF8 A3               [24] 1089 	inc	dptr
      000FF9 E0               [24] 1090 	movx	a,@dptr
      000FFA C0 E0            [24] 1091 	push	acc
      000FFC A3               [24] 1092 	inc	dptr
      000FFD E0               [24] 1093 	movx	a,@dptr
      000FFE C0 E0            [24] 1094 	push	acc
      001000 90 00 00         [24] 1095 	mov	dptr,#0x0000
      001003 75 F0 40         [24] 1096 	mov	b,#0x40
      001006 74 41            [12] 1097 	mov	a,#0x41
      001008 12 2B 26         [24] 1098 	lcall	___fslt
      00100B AF 82            [24] 1099 	mov	r7,dpl
      00100D E5 81            [12] 1100 	mov	a,sp
      00100F 24 FC            [12] 1101 	add	a,#0xfc
      001011 F5 81            [12] 1102 	mov	sp,a
      001013 EF               [12] 1103 	mov	a,r7
      001014 60 0E            [24] 1104 	jz	00108$
      001016 90 01 A5         [24] 1105 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      001019 E4               [12] 1106 	clr	a
      00101A F0               [24] 1107 	movx	@dptr,a
      00101B A3               [24] 1108 	inc	dptr
      00101C F0               [24] 1109 	movx	@dptr,a
      00101D 74 40            [12] 1110 	mov	a,#0x40
      00101F A3               [24] 1111 	inc	dptr
      001020 F0               [24] 1112 	movx	@dptr,a
      001021 04               [12] 1113 	inc	a
      001022 A3               [24] 1114 	inc	dptr
      001023 F0               [24] 1115 	movx	@dptr,a
      001024                       1116 00108$:
                                   1117 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:27: return voltage;
      001024 90 01 A5         [24] 1118 	mov	dptr,#_TempController_mapTempToVoltageQuadratic_voltage_65536_195
      001027 E0               [24] 1119 	movx	a,@dptr
      001028 FC               [12] 1120 	mov	r4,a
      001029 A3               [24] 1121 	inc	dptr
      00102A E0               [24] 1122 	movx	a,@dptr
      00102B FD               [12] 1123 	mov	r5,a
      00102C A3               [24] 1124 	inc	dptr
      00102D E0               [24] 1125 	movx	a,@dptr
      00102E FE               [12] 1126 	mov	r6,a
      00102F A3               [24] 1127 	inc	dptr
      001030 E0               [24] 1128 	movx	a,@dptr
      001031 8C 82            [24] 1129 	mov	dpl,r4
      001033 8D 83            [24] 1130 	mov	dph,r5
      001035 8E F0            [24] 1131 	mov	b,r6
                                   1132 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:28: }
      001037 22               [24] 1133 	ret
                                   1134 ;------------------------------------------------------------
                                   1135 ;Allocation info for local variables in function 'TempController_mapTempToRPM'
                                   1136 ;------------------------------------------------------------
                                   1137 ;sloc0                     Allocated with name '_TempController_mapTempToRPM_sloc0_1_0'
                                   1138 ;temp                      Allocated with name '_TempController_mapTempToRPM_temp_65536_196'
                                   1139 ;norm                      Allocated with name '_TempController_mapTempToRPM_norm_65536_197'
                                   1140 ;------------------------------------------------------------
                                   1141 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:30: static uint32_t TempController_mapTempToRPM(float temp) {
                                   1142 ;	-----------------------------------------
                                   1143 ;	 function TempController_mapTempToRPM
                                   1144 ;	-----------------------------------------
      001038                       1145 _TempController_mapTempToRPM:
      001038 AF 82            [24] 1146 	mov	r7,dpl
      00103A AE 83            [24] 1147 	mov	r6,dph
      00103C AD F0            [24] 1148 	mov	r5,b
      00103E FC               [12] 1149 	mov	r4,a
      00103F 90 01 A9         [24] 1150 	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
      001042 EF               [12] 1151 	mov	a,r7
      001043 F0               [24] 1152 	movx	@dptr,a
      001044 EE               [12] 1153 	mov	a,r6
      001045 A3               [24] 1154 	inc	dptr
      001046 F0               [24] 1155 	movx	@dptr,a
      001047 ED               [12] 1156 	mov	a,r5
      001048 A3               [24] 1157 	inc	dptr
      001049 F0               [24] 1158 	movx	@dptr,a
      00104A EC               [12] 1159 	mov	a,r4
      00104B A3               [24] 1160 	inc	dptr
      00104C F0               [24] 1161 	movx	@dptr,a
                                   1162 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:31: float norm = (temp - TEMP_MIN) / (TEMP_MAX - TEMP_MIN);
      00104D 90 01 A9         [24] 1163 	mov	dptr,#_TempController_mapTempToRPM_temp_65536_196
      001050 E0               [24] 1164 	movx	a,@dptr
      001051 FC               [12] 1165 	mov	r4,a
      001052 A3               [24] 1166 	inc	dptr
      001053 E0               [24] 1167 	movx	a,@dptr
      001054 FD               [12] 1168 	mov	r5,a
      001055 A3               [24] 1169 	inc	dptr
      001056 E0               [24] 1170 	movx	a,@dptr
      001057 FE               [12] 1171 	mov	r6,a
      001058 A3               [24] 1172 	inc	dptr
      001059 E0               [24] 1173 	movx	a,@dptr
      00105A FF               [12] 1174 	mov	r7,a
      00105B E4               [12] 1175 	clr	a
      00105C C0 E0            [24] 1176 	push	acc
      00105E C0 E0            [24] 1177 	push	acc
      001060 74 F0            [12] 1178 	mov	a,#0xf0
      001062 C0 E0            [24] 1179 	push	acc
      001064 74 41            [12] 1180 	mov	a,#0x41
      001066 C0 E0            [24] 1181 	push	acc
      001068 8C 82            [24] 1182 	mov	dpl,r4
      00106A 8D 83            [24] 1183 	mov	dph,r5
      00106C 8E F0            [24] 1184 	mov	b,r6
      00106E EF               [12] 1185 	mov	a,r7
      00106F 12 1E 46         [24] 1186 	lcall	___fssub
      001072 AC 82            [24] 1187 	mov	r4,dpl
      001074 AD 83            [24] 1188 	mov	r5,dph
      001076 AE F0            [24] 1189 	mov	r6,b
      001078 FF               [12] 1190 	mov	r7,a
      001079 E5 81            [12] 1191 	mov	a,sp
      00107B 24 FC            [12] 1192 	add	a,#0xfc
      00107D F5 81            [12] 1193 	mov	sp,a
      00107F E4               [12] 1194 	clr	a
      001080 C0 E0            [24] 1195 	push	acc
      001082 C0 E0            [24] 1196 	push	acc
      001084 74 70            [12] 1197 	mov	a,#0x70
      001086 C0 E0            [24] 1198 	push	acc
      001088 74 41            [12] 1199 	mov	a,#0x41
      00108A C0 E0            [24] 1200 	push	acc
                                   1201 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:32: norm = (norm < 0.0f) ? 0.0f : (norm > 1.0f) ? 1.0f : norm;
      00108C 8C 82            [24] 1202 	mov	dpl,r4
      00108E 8D 83            [24] 1203 	mov	dph,r5
      001090 8E F0            [24] 1204 	mov	b,r6
      001092 EF               [12] 1205 	mov	a,r7
      001093 12 30 60         [24] 1206 	lcall	___fsdiv
      001096 85 82 37         [24] 1207 	mov	_TempController_mapTempToRPM_sloc0_1_0,dpl
      001099 85 83 38         [24] 1208 	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 1),dph
      00109C 85 F0 39         [24] 1209 	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 2),b
      00109F F5 3A            [12] 1210 	mov	(_TempController_mapTempToRPM_sloc0_1_0 + 3),a
      0010A1 E5 81            [12] 1211 	mov	a,sp
      0010A3 24 FC            [12] 1212 	add	a,#0xfc
      0010A5 F5 81            [12] 1213 	mov	sp,a
      0010A7 E4               [12] 1214 	clr	a
      0010A8 C0 E0            [24] 1215 	push	acc
      0010AA C0 E0            [24] 1216 	push	acc
      0010AC C0 E0            [24] 1217 	push	acc
      0010AE C0 E0            [24] 1218 	push	acc
      0010B0 85 37 82         [24] 1219 	mov	dpl,_TempController_mapTempToRPM_sloc0_1_0
      0010B3 85 38 83         [24] 1220 	mov	dph,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
      0010B6 85 39 F0         [24] 1221 	mov	b,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
      0010B9 E5 3A            [12] 1222 	mov	a,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
      0010BB 12 2B 26         [24] 1223 	lcall	___fslt
      0010BE AB 82            [24] 1224 	mov	r3,dpl
      0010C0 E5 81            [12] 1225 	mov	a,sp
      0010C2 24 FC            [12] 1226 	add	a,#0xfc
      0010C4 F5 81            [12] 1227 	mov	sp,a
      0010C6 EB               [12] 1228 	mov	a,r3
      0010C7 60 0A            [24] 1229 	jz	00103$
      0010C9 78 00            [12] 1230 	mov	r0,#0x00
      0010CB 79 00            [12] 1231 	mov	r1,#0x00
      0010CD 7A 00            [12] 1232 	mov	r2,#0x00
      0010CF 7B 00            [12] 1233 	mov	r3,#0x00
      0010D1 80 38            [24] 1234 	sjmp	00104$
      0010D3                       1235 00103$:
      0010D3 C0 37            [24] 1236 	push	_TempController_mapTempToRPM_sloc0_1_0
      0010D5 C0 38            [24] 1237 	push	(_TempController_mapTempToRPM_sloc0_1_0 + 1)
      0010D7 C0 39            [24] 1238 	push	(_TempController_mapTempToRPM_sloc0_1_0 + 2)
      0010D9 C0 3A            [24] 1239 	push	(_TempController_mapTempToRPM_sloc0_1_0 + 3)
      0010DB 90 00 00         [24] 1240 	mov	dptr,#0x0000
      0010DE 75 F0 80         [24] 1241 	mov	b,#0x80
      0010E1 74 3F            [12] 1242 	mov	a,#0x3f
      0010E3 12 2B 26         [24] 1243 	lcall	___fslt
      0010E6 AF 82            [24] 1244 	mov	r7,dpl
      0010E8 E5 81            [12] 1245 	mov	a,sp
      0010EA 24 FC            [12] 1246 	add	a,#0xfc
      0010EC F5 81            [12] 1247 	mov	sp,a
      0010EE EF               [12] 1248 	mov	a,r7
      0010EF 60 0A            [24] 1249 	jz	00105$
      0010F1 7C 00            [12] 1250 	mov	r4,#0x00
      0010F3 7D 00            [12] 1251 	mov	r5,#0x00
      0010F5 7E 80            [12] 1252 	mov	r6,#0x80
      0010F7 7F 3F            [12] 1253 	mov	r7,#0x3f
      0010F9 80 08            [24] 1254 	sjmp	00106$
      0010FB                       1255 00105$:
      0010FB AC 37            [24] 1256 	mov	r4,_TempController_mapTempToRPM_sloc0_1_0
      0010FD AD 38            [24] 1257 	mov	r5,(_TempController_mapTempToRPM_sloc0_1_0 + 1)
      0010FF AE 39            [24] 1258 	mov	r6,(_TempController_mapTempToRPM_sloc0_1_0 + 2)
      001101 AF 3A            [24] 1259 	mov	r7,(_TempController_mapTempToRPM_sloc0_1_0 + 3)
      001103                       1260 00106$:
      001103 8C 00            [24] 1261 	mov	ar0,r4
      001105 8D 01            [24] 1262 	mov	ar1,r5
      001107 8E 02            [24] 1263 	mov	ar2,r6
      001109 8F 03            [24] 1264 	mov	ar3,r7
      00110B                       1265 00104$:
                                   1266 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:33: return (uint32_t)(RPM_TARGET_MIN + (RPM_TARGET_MAX - RPM_TARGET_MIN) * norm);
      00110B C0 00            [24] 1267 	push	ar0
      00110D C0 01            [24] 1268 	push	ar1
      00110F C0 02            [24] 1269 	push	ar2
      001111 C0 03            [24] 1270 	push	ar3
      001113 90 00 00         [24] 1271 	mov	dptr,#0x0000
      001116 75 F0 FA         [24] 1272 	mov	b,#0xfa
      001119 74 44            [12] 1273 	mov	a,#0x44
      00111B 12 1E C9         [24] 1274 	lcall	___fsmul
      00111E AC 82            [24] 1275 	mov	r4,dpl
      001120 AD 83            [24] 1276 	mov	r5,dph
      001122 AE F0            [24] 1277 	mov	r6,b
      001124 FF               [12] 1278 	mov	r7,a
      001125 E5 81            [12] 1279 	mov	a,sp
      001127 24 FC            [12] 1280 	add	a,#0xfc
      001129 F5 81            [12] 1281 	mov	sp,a
      00112B E4               [12] 1282 	clr	a
      00112C C0 E0            [24] 1283 	push	acc
      00112E C0 E0            [24] 1284 	push	acc
      001130 74 48            [12] 1285 	mov	a,#0x48
      001132 C0 E0            [24] 1286 	push	acc
      001134 74 44            [12] 1287 	mov	a,#0x44
      001136 C0 E0            [24] 1288 	push	acc
      001138 8C 82            [24] 1289 	mov	dpl,r4
      00113A 8D 83            [24] 1290 	mov	dph,r5
      00113C 8E F0            [24] 1291 	mov	b,r6
      00113E EF               [12] 1292 	mov	a,r7
      00113F 12 2C 36         [24] 1293 	lcall	___fsadd
      001142 AC 82            [24] 1294 	mov	r4,dpl
      001144 AD 83            [24] 1295 	mov	r5,dph
      001146 AE F0            [24] 1296 	mov	r6,b
      001148 FF               [12] 1297 	mov	r7,a
      001149 E5 81            [12] 1298 	mov	a,sp
      00114B 24 FC            [12] 1299 	add	a,#0xfc
      00114D F5 81            [12] 1300 	mov	sp,a
      00114F 8C 82            [24] 1301 	mov	dpl,r4
      001151 8D 83            [24] 1302 	mov	dph,r5
      001153 8E F0            [24] 1303 	mov	b,r6
      001155 EF               [12] 1304 	mov	a,r7
                                   1305 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:34: }
      001156 02 23 3E         [24] 1306 	ljmp	___fs2ulong
                                   1307 ;------------------------------------------------------------
                                   1308 ;Allocation info for local variables in function 'TempController_begin'
                                   1309 ;------------------------------------------------------------
                                   1310 ;sloc0                     Allocated with name '_TempController_begin_sloc0_1_0'
                                   1311 ;sloc1                     Allocated with name '_TempController_begin_sloc1_1_0'
                                   1312 ;sensor                    Allocated with name '_TempController_begin_PARM_2'
                                   1313 ;vc                        Allocated with name '_TempController_begin_PARM_3'
                                   1314 ;tc                        Allocated with name '_TempController_begin_tc_65536_198'
                                   1315 ;test_temp                 Allocated with name '_TempController_begin_test_temp_65537_200'
                                   1316 ;------------------------------------------------------------
                                   1317 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:57: void TempController_begin(TempController* tc, DS18B20* sensor, VoltageController* vc) {
                                   1318 ;	-----------------------------------------
                                   1319 ;	 function TempController_begin
                                   1320 ;	-----------------------------------------
      001159                       1321 _TempController_begin:
      001159 AF F0            [24] 1322 	mov	r7,b
      00115B AE 83            [24] 1323 	mov	r6,dph
      00115D E5 82            [12] 1324 	mov	a,dpl
      00115F 90 01 B3         [24] 1325 	mov	dptr,#_TempController_begin_tc_65536_198
      001162 F0               [24] 1326 	movx	@dptr,a
      001163 EE               [12] 1327 	mov	a,r6
      001164 A3               [24] 1328 	inc	dptr
      001165 F0               [24] 1329 	movx	@dptr,a
      001166 EF               [12] 1330 	mov	a,r7
      001167 A3               [24] 1331 	inc	dptr
      001168 F0               [24] 1332 	movx	@dptr,a
                                   1333 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:58: tc->tempSensor = sensor;
      001169 90 01 B3         [24] 1334 	mov	dptr,#_TempController_begin_tc_65536_198
      00116C E0               [24] 1335 	movx	a,@dptr
      00116D FD               [12] 1336 	mov	r5,a
      00116E A3               [24] 1337 	inc	dptr
      00116F E0               [24] 1338 	movx	a,@dptr
      001170 FE               [12] 1339 	mov	r6,a
      001171 A3               [24] 1340 	inc	dptr
      001172 E0               [24] 1341 	movx	a,@dptr
      001173 FF               [12] 1342 	mov	r7,a
      001174 90 01 AD         [24] 1343 	mov	dptr,#_TempController_begin_PARM_2
      001177 E0               [24] 1344 	movx	a,@dptr
      001178 F5 3B            [12] 1345 	mov	_TempController_begin_sloc0_1_0,a
      00117A A3               [24] 1346 	inc	dptr
      00117B E0               [24] 1347 	movx	a,@dptr
      00117C F5 3C            [12] 1348 	mov	(_TempController_begin_sloc0_1_0 + 1),a
      00117E A3               [24] 1349 	inc	dptr
      00117F E0               [24] 1350 	movx	a,@dptr
      001180 F5 3D            [12] 1351 	mov	(_TempController_begin_sloc0_1_0 + 2),a
      001182 8D 82            [24] 1352 	mov	dpl,r5
      001184 8E 83            [24] 1353 	mov	dph,r6
      001186 8F F0            [24] 1354 	mov	b,r7
      001188 E5 3B            [12] 1355 	mov	a,_TempController_begin_sloc0_1_0
      00118A 12 2B 0B         [24] 1356 	lcall	__gptrput
      00118D A3               [24] 1357 	inc	dptr
      00118E E5 3C            [12] 1358 	mov	a,(_TempController_begin_sloc0_1_0 + 1)
      001190 12 2B 0B         [24] 1359 	lcall	__gptrput
      001193 A3               [24] 1360 	inc	dptr
      001194 E5 3D            [12] 1361 	mov	a,(_TempController_begin_sloc0_1_0 + 2)
      001196 12 2B 0B         [24] 1362 	lcall	__gptrput
                                   1363 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:59: tc->voltCtrl = vc;
      001199 74 03            [12] 1364 	mov	a,#0x03
      00119B 2D               [12] 1365 	add	a,r5
      00119C F5 3E            [12] 1366 	mov	_TempController_begin_sloc1_1_0,a
      00119E E4               [12] 1367 	clr	a
      00119F 3E               [12] 1368 	addc	a,r6
      0011A0 F5 3F            [12] 1369 	mov	(_TempController_begin_sloc1_1_0 + 1),a
      0011A2 8F 40            [24] 1370 	mov	(_TempController_begin_sloc1_1_0 + 2),r7
      0011A4 90 01 B0         [24] 1371 	mov	dptr,#_TempController_begin_PARM_3
      0011A7 E0               [24] 1372 	movx	a,@dptr
      0011A8 FA               [12] 1373 	mov	r2,a
      0011A9 A3               [24] 1374 	inc	dptr
      0011AA E0               [24] 1375 	movx	a,@dptr
      0011AB FB               [12] 1376 	mov	r3,a
      0011AC A3               [24] 1377 	inc	dptr
      0011AD E0               [24] 1378 	movx	a,@dptr
      0011AE FC               [12] 1379 	mov	r4,a
      0011AF 85 3E 82         [24] 1380 	mov	dpl,_TempController_begin_sloc1_1_0
      0011B2 85 3F 83         [24] 1381 	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
      0011B5 85 40 F0         [24] 1382 	mov	b,(_TempController_begin_sloc1_1_0 + 2)
      0011B8 EA               [12] 1383 	mov	a,r2
      0011B9 12 2B 0B         [24] 1384 	lcall	__gptrput
      0011BC A3               [24] 1385 	inc	dptr
      0011BD EB               [12] 1386 	mov	a,r3
      0011BE 12 2B 0B         [24] 1387 	lcall	__gptrput
      0011C1 A3               [24] 1388 	inc	dptr
      0011C2 EC               [12] 1389 	mov	a,r4
      0011C3 12 2B 0B         [24] 1390 	lcall	__gptrput
                                   1391 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:60: tc->current_temp = 25.0f;
      0011C6 74 06            [12] 1392 	mov	a,#0x06
      0011C8 2D               [12] 1393 	add	a,r5
      0011C9 F5 3E            [12] 1394 	mov	_TempController_begin_sloc1_1_0,a
      0011CB E4               [12] 1395 	clr	a
      0011CC 3E               [12] 1396 	addc	a,r6
      0011CD F5 3F            [12] 1397 	mov	(_TempController_begin_sloc1_1_0 + 1),a
      0011CF 8F 40            [24] 1398 	mov	(_TempController_begin_sloc1_1_0 + 2),r7
      0011D1 85 3E 82         [24] 1399 	mov	dpl,_TempController_begin_sloc1_1_0
      0011D4 85 3F 83         [24] 1400 	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
      0011D7 85 40 F0         [24] 1401 	mov	b,(_TempController_begin_sloc1_1_0 + 2)
      0011DA E4               [12] 1402 	clr	a
      0011DB 12 2B 0B         [24] 1403 	lcall	__gptrput
      0011DE A3               [24] 1404 	inc	dptr
      0011DF 12 2B 0B         [24] 1405 	lcall	__gptrput
      0011E2 A3               [24] 1406 	inc	dptr
      0011E3 74 C8            [12] 1407 	mov	a,#0xc8
      0011E5 12 2B 0B         [24] 1408 	lcall	__gptrput
      0011E8 A3               [24] 1409 	inc	dptr
      0011E9 74 41            [12] 1410 	mov	a,#0x41
      0011EB 12 2B 0B         [24] 1411 	lcall	__gptrput
                                   1412 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:61: tc->target_rpm = RPM_TARGET_MIN;
      0011EE 74 0A            [12] 1413 	mov	a,#0x0a
      0011F0 2D               [12] 1414 	add	a,r5
      0011F1 F8               [12] 1415 	mov	r0,a
      0011F2 E4               [12] 1416 	clr	a
      0011F3 3E               [12] 1417 	addc	a,r6
      0011F4 F9               [12] 1418 	mov	r1,a
      0011F5 8F 04            [24] 1419 	mov	ar4,r7
      0011F7 88 82            [24] 1420 	mov	dpl,r0
      0011F9 89 83            [24] 1421 	mov	dph,r1
      0011FB 8C F0            [24] 1422 	mov	b,r4
      0011FD 74 20            [12] 1423 	mov	a,#0x20
      0011FF 12 2B 0B         [24] 1424 	lcall	__gptrput
      001202 A3               [24] 1425 	inc	dptr
      001203 74 03            [12] 1426 	mov	a,#0x03
      001205 12 2B 0B         [24] 1427 	lcall	__gptrput
      001208 A3               [24] 1428 	inc	dptr
      001209 E4               [12] 1429 	clr	a
      00120A 12 2B 0B         [24] 1430 	lcall	__gptrput
      00120D A3               [24] 1431 	inc	dptr
      00120E 12 2B 0B         [24] 1432 	lcall	__gptrput
                                   1433 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:62: tc->sensor_ready = false;
      001211 74 0E            [12] 1434 	mov	a,#0x0e
      001213 2D               [12] 1435 	add	a,r5
      001214 FA               [12] 1436 	mov	r2,a
      001215 E4               [12] 1437 	clr	a
      001216 3E               [12] 1438 	addc	a,r6
      001217 FB               [12] 1439 	mov	r3,a
      001218 8F 04            [24] 1440 	mov	ar4,r7
      00121A 8A 82            [24] 1441 	mov	dpl,r2
      00121C 8B 83            [24] 1442 	mov	dph,r3
      00121E 8C F0            [24] 1443 	mov	b,r4
      001220 E4               [12] 1444 	clr	a
      001221 12 2B 0B         [24] 1445 	lcall	__gptrput
                                   1446 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:69: DS18B20_begin(tc->tempSensor);
      001224 85 3B 82         [24] 1447 	mov	dpl,_TempController_begin_sloc0_1_0
      001227 85 3C 83         [24] 1448 	mov	dph,(_TempController_begin_sloc0_1_0 + 1)
      00122A 85 3D F0         [24] 1449 	mov	b,(_TempController_begin_sloc0_1_0 + 2)
      00122D C0 07            [24] 1450 	push	ar7
      00122F C0 06            [24] 1451 	push	ar6
      001231 C0 05            [24] 1452 	push	ar5
      001233 C0 04            [24] 1453 	push	ar4
      001235 C0 03            [24] 1454 	push	ar3
      001237 C0 02            [24] 1455 	push	ar2
      001239 12 03 9F         [24] 1456 	lcall	_DS18B20_begin
                                   1457 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:72: delay(200);
      00123C 90 00 C8         [24] 1458 	mov	dptr,#(0xc8&0x00ff)
      00123F E4               [12] 1459 	clr	a
      001240 F5 F0            [12] 1460 	mov	b,a
      001242 12 24 34         [24] 1461 	lcall	_delay
      001245 D0 02            [24] 1462 	pop	ar2
      001247 D0 03            [24] 1463 	pop	ar3
      001249 D0 04            [24] 1464 	pop	ar4
      00124B D0 05            [24] 1465 	pop	ar5
      00124D D0 06            [24] 1466 	pop	ar6
      00124F D0 07            [24] 1467 	pop	ar7
                                   1468 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:73: float test_temp = DS18B20_readTemperatureFast(tc->tempSensor);
      001251 8D 82            [24] 1469 	mov	dpl,r5
      001253 8E 83            [24] 1470 	mov	dph,r6
      001255 8F F0            [24] 1471 	mov	b,r7
      001257 12 31 2B         [24] 1472 	lcall	__gptrget
      00125A FD               [12] 1473 	mov	r5,a
      00125B A3               [24] 1474 	inc	dptr
      00125C 12 31 2B         [24] 1475 	lcall	__gptrget
      00125F FE               [12] 1476 	mov	r6,a
      001260 A3               [24] 1477 	inc	dptr
      001261 12 31 2B         [24] 1478 	lcall	__gptrget
      001264 FF               [12] 1479 	mov	r7,a
      001265 8D 82            [24] 1480 	mov	dpl,r5
      001267 8E 83            [24] 1481 	mov	dph,r6
      001269 8F F0            [24] 1482 	mov	b,r7
      00126B C0 04            [24] 1483 	push	ar4
      00126D C0 03            [24] 1484 	push	ar3
      00126F C0 02            [24] 1485 	push	ar2
      001271 12 03 E4         [24] 1486 	lcall	_DS18B20_readTemperatureFast
      001274 A9 82            [24] 1487 	mov	r1,dpl
      001276 AD 83            [24] 1488 	mov	r5,dph
      001278 AE F0            [24] 1489 	mov	r6,b
      00127A FF               [12] 1490 	mov	r7,a
      00127B D0 02            [24] 1491 	pop	ar2
      00127D D0 03            [24] 1492 	pop	ar3
      00127F D0 04            [24] 1493 	pop	ar4
                                   1494 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:74: if (test_temp != -999.0) {
      001281 C0 07            [24] 1495 	push	ar7
      001283 C0 06            [24] 1496 	push	ar6
      001285 C0 05            [24] 1497 	push	ar5
      001287 C0 04            [24] 1498 	push	ar4
      001289 C0 03            [24] 1499 	push	ar3
      00128B C0 02            [24] 1500 	push	ar2
      00128D C0 01            [24] 1501 	push	ar1
      00128F E4               [12] 1502 	clr	a
      001290 C0 E0            [24] 1503 	push	acc
      001292 74 C0            [12] 1504 	mov	a,#0xc0
      001294 C0 E0            [24] 1505 	push	acc
      001296 74 79            [12] 1506 	mov	a,#0x79
      001298 C0 E0            [24] 1507 	push	acc
      00129A 74 C4            [12] 1508 	mov	a,#0xc4
      00129C C0 E0            [24] 1509 	push	acc
      00129E 89 82            [24] 1510 	mov	dpl,r1
      0012A0 8D 83            [24] 1511 	mov	dph,r5
      0012A2 8E F0            [24] 1512 	mov	b,r6
      0012A4 EF               [12] 1513 	mov	a,r7
      0012A5 12 23 2D         [24] 1514 	lcall	___fseq
      0012A8 E5 81            [12] 1515 	mov	a,sp
      0012AA 24 FC            [12] 1516 	add	a,#0xfc
      0012AC F5 81            [12] 1517 	mov	sp,a
      0012AE D0 01            [24] 1518 	pop	ar1
      0012B0 D0 02            [24] 1519 	pop	ar2
      0012B2 D0 03            [24] 1520 	pop	ar3
      0012B4 D0 04            [24] 1521 	pop	ar4
      0012B6 D0 05            [24] 1522 	pop	ar5
      0012B8 D0 06            [24] 1523 	pop	ar6
      0012BA D0 07            [24] 1524 	pop	ar7
      0012BC E5 82            [12] 1525 	mov	a,dpl
      0012BE 24 FF            [12] 1526 	add	a,#0xff
      0012C0 92 00            [24] 1527 	mov	_TempController_begin_sloc2_1_0,c
      0012C2 40 27            [24] 1528 	jc	00103$
                                   1529 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:75: tc->sensor_ready = true;
      0012C4 8A 82            [24] 1530 	mov	dpl,r2
      0012C6 8B 83            [24] 1531 	mov	dph,r3
      0012C8 8C F0            [24] 1532 	mov	b,r4
      0012CA 74 01            [12] 1533 	mov	a,#0x01
      0012CC 12 2B 0B         [24] 1534 	lcall	__gptrput
                                   1535 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:76: tc->current_temp = test_temp;
      0012CF 85 3E 82         [24] 1536 	mov	dpl,_TempController_begin_sloc1_1_0
      0012D2 85 3F 83         [24] 1537 	mov	dph,(_TempController_begin_sloc1_1_0 + 1)
      0012D5 85 40 F0         [24] 1538 	mov	b,(_TempController_begin_sloc1_1_0 + 2)
      0012D8 E9               [12] 1539 	mov	a,r1
      0012D9 12 2B 0B         [24] 1540 	lcall	__gptrput
      0012DC A3               [24] 1541 	inc	dptr
      0012DD ED               [12] 1542 	mov	a,r5
      0012DE 12 2B 0B         [24] 1543 	lcall	__gptrput
      0012E1 A3               [24] 1544 	inc	dptr
      0012E2 EE               [12] 1545 	mov	a,r6
      0012E3 12 2B 0B         [24] 1546 	lcall	__gptrput
      0012E6 A3               [24] 1547 	inc	dptr
      0012E7 EF               [12] 1548 	mov	a,r7
                                   1549 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:79: }
      0012E8 02 2B 0B         [24] 1550 	ljmp	__gptrput
      0012EB                       1551 00103$:
      0012EB 22               [24] 1552 	ret
                                   1553 ;------------------------------------------------------------
                                   1554 ;Allocation info for local variables in function 'TempController_update'
                                   1555 ;------------------------------------------------------------
                                   1556 ;sloc0                     Allocated with name '_TempController_update_sloc0_1_0'
                                   1557 ;sloc1                     Allocated with name '_TempController_update_sloc1_1_0'
                                   1558 ;tc                        Allocated with name '_TempController_update_tc_65536_202'
                                   1559 ;temp                      Allocated with name '_TempController_update_temp_65537_205'
                                   1560 ;target_voltage            Allocated with name '_TempController_update_target_voltage_65538_207'
                                   1561 ;------------------------------------------------------------
                                   1562 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:81: bool TempController_update(TempController* tc) {
                                   1563 ;	-----------------------------------------
                                   1564 ;	 function TempController_update
                                   1565 ;	-----------------------------------------
      0012EC                       1566 _TempController_update:
      0012EC AF F0            [24] 1567 	mov	r7,b
      0012EE AE 83            [24] 1568 	mov	r6,dph
      0012F0 E5 82            [12] 1569 	mov	a,dpl
      0012F2 90 01 B6         [24] 1570 	mov	dptr,#_TempController_update_tc_65536_202
      0012F5 F0               [24] 1571 	movx	@dptr,a
      0012F6 EE               [12] 1572 	mov	a,r6
      0012F7 A3               [24] 1573 	inc	dptr
      0012F8 F0               [24] 1574 	movx	@dptr,a
      0012F9 EF               [12] 1575 	mov	a,r7
      0012FA A3               [24] 1576 	inc	dptr
      0012FB F0               [24] 1577 	movx	@dptr,a
                                   1578 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:82: if (!tc->sensor_ready) {
      0012FC 90 01 B6         [24] 1579 	mov	dptr,#_TempController_update_tc_65536_202
      0012FF E0               [24] 1580 	movx	a,@dptr
      001300 FD               [12] 1581 	mov	r5,a
      001301 A3               [24] 1582 	inc	dptr
      001302 E0               [24] 1583 	movx	a,@dptr
      001303 FE               [12] 1584 	mov	r6,a
      001304 A3               [24] 1585 	inc	dptr
      001305 E0               [24] 1586 	movx	a,@dptr
      001306 FF               [12] 1587 	mov	r7,a
      001307 74 0E            [12] 1588 	mov	a,#0x0e
      001309 2D               [12] 1589 	add	a,r5
      00130A FA               [12] 1590 	mov	r2,a
      00130B E4               [12] 1591 	clr	a
      00130C 3E               [12] 1592 	addc	a,r6
      00130D FB               [12] 1593 	mov	r3,a
      00130E 8F 04            [24] 1594 	mov	ar4,r7
      001310 8A 82            [24] 1595 	mov	dpl,r2
      001312 8B 83            [24] 1596 	mov	dph,r3
      001314 8C F0            [24] 1597 	mov	b,r4
      001316 12 31 2B         [24] 1598 	lcall	__gptrget
                                   1599 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:83: return false;
      001319 70 03            [24] 1600 	jnz	00102$
      00131B F5 82            [12] 1601 	mov	dpl,a
      00131D 22               [24] 1602 	ret
      00131E                       1603 00102$:
                                   1604 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:93: float temp = DS18B20_readTemperatureFast(tc->tempSensor);
      00131E 8D 82            [24] 1605 	mov	dpl,r5
      001320 8E 83            [24] 1606 	mov	dph,r6
      001322 8F F0            [24] 1607 	mov	b,r7
      001324 12 31 2B         [24] 1608 	lcall	__gptrget
      001327 FA               [12] 1609 	mov	r2,a
      001328 A3               [24] 1610 	inc	dptr
      001329 12 31 2B         [24] 1611 	lcall	__gptrget
      00132C FB               [12] 1612 	mov	r3,a
      00132D A3               [24] 1613 	inc	dptr
      00132E 12 31 2B         [24] 1614 	lcall	__gptrget
      001331 FC               [12] 1615 	mov	r4,a
      001332 8A 82            [24] 1616 	mov	dpl,r2
      001334 8B 83            [24] 1617 	mov	dph,r3
      001336 8C F0            [24] 1618 	mov	b,r4
      001338 C0 07            [24] 1619 	push	ar7
      00133A C0 06            [24] 1620 	push	ar6
      00133C C0 05            [24] 1621 	push	ar5
      00133E 12 03 E4         [24] 1622 	lcall	_DS18B20_readTemperatureFast
      001341 85 82 41         [24] 1623 	mov	_TempController_update_sloc0_1_0,dpl
      001344 85 83 42         [24] 1624 	mov	(_TempController_update_sloc0_1_0 + 1),dph
      001347 85 F0 43         [24] 1625 	mov	(_TempController_update_sloc0_1_0 + 2),b
      00134A F5 44            [12] 1626 	mov	(_TempController_update_sloc0_1_0 + 3),a
                                   1627 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:95: if (temp == -999.0) {
      00134C E4               [12] 1628 	clr	a
      00134D C0 E0            [24] 1629 	push	acc
      00134F 74 C0            [12] 1630 	mov	a,#0xc0
      001351 C0 E0            [24] 1631 	push	acc
      001353 74 79            [12] 1632 	mov	a,#0x79
      001355 C0 E0            [24] 1633 	push	acc
      001357 74 C4            [12] 1634 	mov	a,#0xc4
      001359 C0 E0            [24] 1635 	push	acc
      00135B 85 41 82         [24] 1636 	mov	dpl,_TempController_update_sloc0_1_0
      00135E 85 42 83         [24] 1637 	mov	dph,(_TempController_update_sloc0_1_0 + 1)
      001361 85 43 F0         [24] 1638 	mov	b,(_TempController_update_sloc0_1_0 + 2)
      001364 E5 44            [12] 1639 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      001366 12 23 2D         [24] 1640 	lcall	___fseq
      001369 A8 82            [24] 1641 	mov	r0,dpl
      00136B E5 81            [12] 1642 	mov	a,sp
      00136D 24 FC            [12] 1643 	add	a,#0xfc
      00136F F5 81            [12] 1644 	mov	sp,a
      001371 D0 05            [24] 1645 	pop	ar5
      001373 D0 06            [24] 1646 	pop	ar6
      001375 D0 07            [24] 1647 	pop	ar7
      001377 E8               [12] 1648 	mov	a,r0
      001378 60 04            [24] 1649 	jz	00104$
                                   1650 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:96: return false;
      00137A 75 82 00         [24] 1651 	mov	dpl,#0x00
      00137D 22               [24] 1652 	ret
      00137E                       1653 00104$:
                                   1654 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:99: tc->current_temp = temp;
      00137E 74 06            [12] 1655 	mov	a,#0x06
      001380 2D               [12] 1656 	add	a,r5
      001381 F5 45            [12] 1657 	mov	_TempController_update_sloc1_1_0,a
      001383 E4               [12] 1658 	clr	a
      001384 3E               [12] 1659 	addc	a,r6
      001385 F5 46            [12] 1660 	mov	(_TempController_update_sloc1_1_0 + 1),a
      001387 8F 47            [24] 1661 	mov	(_TempController_update_sloc1_1_0 + 2),r7
      001389 85 45 82         [24] 1662 	mov	dpl,_TempController_update_sloc1_1_0
      00138C 85 46 83         [24] 1663 	mov	dph,(_TempController_update_sloc1_1_0 + 1)
      00138F 85 47 F0         [24] 1664 	mov	b,(_TempController_update_sloc1_1_0 + 2)
      001392 E5 41            [12] 1665 	mov	a,_TempController_update_sloc0_1_0
      001394 12 2B 0B         [24] 1666 	lcall	__gptrput
      001397 A3               [24] 1667 	inc	dptr
      001398 E5 42            [12] 1668 	mov	a,(_TempController_update_sloc0_1_0 + 1)
      00139A 12 2B 0B         [24] 1669 	lcall	__gptrput
      00139D A3               [24] 1670 	inc	dptr
      00139E E5 43            [12] 1671 	mov	a,(_TempController_update_sloc0_1_0 + 2)
      0013A0 12 2B 0B         [24] 1672 	lcall	__gptrput
      0013A3 A3               [24] 1673 	inc	dptr
      0013A4 E5 44            [12] 1674 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      0013A6 12 2B 0B         [24] 1675 	lcall	__gptrput
                                   1676 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:105: target_voltage = TempController_mapTempToVoltageLinear(tc->current_temp);
      0013A9 85 41 82         [24] 1677 	mov	dpl,_TempController_update_sloc0_1_0
      0013AC 85 42 83         [24] 1678 	mov	dph,(_TempController_update_sloc0_1_0 + 1)
      0013AF 85 43 F0         [24] 1679 	mov	b,(_TempController_update_sloc0_1_0 + 2)
      0013B2 E5 44            [12] 1680 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      0013B4 C0 07            [24] 1681 	push	ar7
      0013B6 C0 06            [24] 1682 	push	ar6
      0013B8 C0 05            [24] 1683 	push	ar5
      0013BA 12 0D 64         [24] 1684 	lcall	_TempController_mapTempToVoltageLinear
      0013BD 85 82 41         [24] 1685 	mov	_TempController_update_sloc0_1_0,dpl
      0013C0 85 83 42         [24] 1686 	mov	(_TempController_update_sloc0_1_0 + 1),dph
      0013C3 85 F0 43         [24] 1687 	mov	(_TempController_update_sloc0_1_0 + 2),b
      0013C6 F5 44            [12] 1688 	mov	(_TempController_update_sloc0_1_0 + 3),a
      0013C8 D0 05            [24] 1689 	pop	ar5
      0013CA D0 06            [24] 1690 	pop	ar6
      0013CC D0 07            [24] 1691 	pop	ar7
                                   1692 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:110: VoltageController_setVoltage(tc->voltCtrl, target_voltage);
      0013CE 74 03            [12] 1693 	mov	a,#0x03
      0013D0 2D               [12] 1694 	add	a,r5
      0013D1 F8               [12] 1695 	mov	r0,a
      0013D2 E4               [12] 1696 	clr	a
      0013D3 3E               [12] 1697 	addc	a,r6
      0013D4 FB               [12] 1698 	mov	r3,a
      0013D5 8F 04            [24] 1699 	mov	ar4,r7
      0013D7 88 82            [24] 1700 	mov	dpl,r0
      0013D9 8B 83            [24] 1701 	mov	dph,r3
      0013DB 8C F0            [24] 1702 	mov	b,r4
      0013DD 12 31 2B         [24] 1703 	lcall	__gptrget
      0013E0 F8               [12] 1704 	mov	r0,a
      0013E1 A3               [24] 1705 	inc	dptr
      0013E2 12 31 2B         [24] 1706 	lcall	__gptrget
      0013E5 FB               [12] 1707 	mov	r3,a
      0013E6 A3               [24] 1708 	inc	dptr
      0013E7 12 31 2B         [24] 1709 	lcall	__gptrget
      0013EA FC               [12] 1710 	mov	r4,a
      0013EB 90 01 D8         [24] 1711 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      0013EE E5 41            [12] 1712 	mov	a,_TempController_update_sloc0_1_0
      0013F0 F0               [24] 1713 	movx	@dptr,a
      0013F1 E5 42            [12] 1714 	mov	a,(_TempController_update_sloc0_1_0 + 1)
      0013F3 A3               [24] 1715 	inc	dptr
      0013F4 F0               [24] 1716 	movx	@dptr,a
      0013F5 E5 43            [12] 1717 	mov	a,(_TempController_update_sloc0_1_0 + 2)
      0013F7 A3               [24] 1718 	inc	dptr
      0013F8 F0               [24] 1719 	movx	@dptr,a
      0013F9 E5 44            [12] 1720 	mov	a,(_TempController_update_sloc0_1_0 + 3)
      0013FB A3               [24] 1721 	inc	dptr
      0013FC F0               [24] 1722 	movx	@dptr,a
      0013FD 88 82            [24] 1723 	mov	dpl,r0
      0013FF 8B 83            [24] 1724 	mov	dph,r3
      001401 8C F0            [24] 1725 	mov	b,r4
      001403 C0 07            [24] 1726 	push	ar7
      001405 C0 06            [24] 1727 	push	ar6
      001407 C0 05            [24] 1728 	push	ar5
      001409 12 19 F7         [24] 1729 	lcall	_VoltageController_setVoltage
      00140C D0 05            [24] 1730 	pop	ar5
      00140E D0 06            [24] 1731 	pop	ar6
                                   1732 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:112: tc->target_rpm = TempController_mapTempToRPM(tc->current_temp);
      001410 74 0A            [12] 1733 	mov	a,#0x0a
      001412 2D               [12] 1734 	add	a,r5
      001413 FD               [12] 1735 	mov	r5,a
      001414 E4               [12] 1736 	clr	a
      001415 3E               [12] 1737 	addc	a,r6
      001416 FE               [12] 1738 	mov	r6,a
      001417 85 45 82         [24] 1739 	mov	dpl,_TempController_update_sloc1_1_0
      00141A 85 46 83         [24] 1740 	mov	dph,(_TempController_update_sloc1_1_0 + 1)
      00141D 85 47 F0         [24] 1741 	mov	b,(_TempController_update_sloc1_1_0 + 2)
      001420 12 31 2B         [24] 1742 	lcall	__gptrget
      001423 F9               [12] 1743 	mov	r1,a
      001424 A3               [24] 1744 	inc	dptr
      001425 12 31 2B         [24] 1745 	lcall	__gptrget
      001428 FA               [12] 1746 	mov	r2,a
      001429 A3               [24] 1747 	inc	dptr
      00142A 12 31 2B         [24] 1748 	lcall	__gptrget
      00142D FB               [12] 1749 	mov	r3,a
      00142E A3               [24] 1750 	inc	dptr
      00142F 12 31 2B         [24] 1751 	lcall	__gptrget
      001432 89 82            [24] 1752 	mov	dpl,r1
      001434 8A 83            [24] 1753 	mov	dph,r2
      001436 8B F0            [24] 1754 	mov	b,r3
      001438 C0 06            [24] 1755 	push	ar6
      00143A C0 05            [24] 1756 	push	ar5
      00143C 12 10 38         [24] 1757 	lcall	_TempController_mapTempToRPM
      00143F A9 82            [24] 1758 	mov	r1,dpl
      001441 AA 83            [24] 1759 	mov	r2,dph
      001443 AB F0            [24] 1760 	mov	r3,b
      001445 FC               [12] 1761 	mov	r4,a
      001446 D0 05            [24] 1762 	pop	ar5
      001448 D0 06            [24] 1763 	pop	ar6
      00144A D0 07            [24] 1764 	pop	ar7
      00144C 8D 82            [24] 1765 	mov	dpl,r5
      00144E 8E 83            [24] 1766 	mov	dph,r6
      001450 8F F0            [24] 1767 	mov	b,r7
      001452 E9               [12] 1768 	mov	a,r1
      001453 12 2B 0B         [24] 1769 	lcall	__gptrput
      001456 A3               [24] 1770 	inc	dptr
      001457 EA               [12] 1771 	mov	a,r2
      001458 12 2B 0B         [24] 1772 	lcall	__gptrput
      00145B A3               [24] 1773 	inc	dptr
      00145C EB               [12] 1774 	mov	a,r3
      00145D 12 2B 0B         [24] 1775 	lcall	__gptrput
      001460 A3               [24] 1776 	inc	dptr
      001461 EC               [12] 1777 	mov	a,r4
      001462 12 2B 0B         [24] 1778 	lcall	__gptrput
                                   1779 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:114: return true;
      001465 75 82 01         [24] 1780 	mov	dpl,#0x01
                                   1781 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:115: }
      001468 22               [24] 1782 	ret
                                   1783 ;------------------------------------------------------------
                                   1784 ;Allocation info for local variables in function 'TempController_isOverheat'
                                   1785 ;------------------------------------------------------------
                                   1786 ;tc                        Allocated with name '_TempController_isOverheat_tc_65536_208'
                                   1787 ;------------------------------------------------------------
                                   1788 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:117: bool TempController_isOverheat(const TempController* tc) {
                                   1789 ;	-----------------------------------------
                                   1790 ;	 function TempController_isOverheat
                                   1791 ;	-----------------------------------------
      001469                       1792 _TempController_isOverheat:
      001469 AF F0            [24] 1793 	mov	r7,b
      00146B AE 83            [24] 1794 	mov	r6,dph
      00146D E5 82            [12] 1795 	mov	a,dpl
      00146F 90 01 B9         [24] 1796 	mov	dptr,#_TempController_isOverheat_tc_65536_208
      001472 F0               [24] 1797 	movx	@dptr,a
      001473 EE               [12] 1798 	mov	a,r6
      001474 A3               [24] 1799 	inc	dptr
      001475 F0               [24] 1800 	movx	@dptr,a
      001476 EF               [12] 1801 	mov	a,r7
      001477 A3               [24] 1802 	inc	dptr
      001478 F0               [24] 1803 	movx	@dptr,a
                                   1804 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:118: return (tc->current_temp >= TEMP_OVERHEAT);
      001479 90 01 B9         [24] 1805 	mov	dptr,#_TempController_isOverheat_tc_65536_208
      00147C E0               [24] 1806 	movx	a,@dptr
      00147D FD               [12] 1807 	mov	r5,a
      00147E A3               [24] 1808 	inc	dptr
      00147F E0               [24] 1809 	movx	a,@dptr
      001480 FE               [12] 1810 	mov	r6,a
      001481 A3               [24] 1811 	inc	dptr
      001482 E0               [24] 1812 	movx	a,@dptr
      001483 FF               [12] 1813 	mov	r7,a
      001484 74 06            [12] 1814 	mov	a,#0x06
      001486 2D               [12] 1815 	add	a,r5
      001487 FD               [12] 1816 	mov	r5,a
      001488 E4               [12] 1817 	clr	a
      001489 3E               [12] 1818 	addc	a,r6
      00148A FE               [12] 1819 	mov	r6,a
      00148B 8D 82            [24] 1820 	mov	dpl,r5
      00148D 8E 83            [24] 1821 	mov	dph,r6
      00148F 8F F0            [24] 1822 	mov	b,r7
      001491 12 31 2B         [24] 1823 	lcall	__gptrget
      001494 FD               [12] 1824 	mov	r5,a
      001495 A3               [24] 1825 	inc	dptr
      001496 12 31 2B         [24] 1826 	lcall	__gptrget
      001499 FE               [12] 1827 	mov	r6,a
      00149A A3               [24] 1828 	inc	dptr
      00149B 12 31 2B         [24] 1829 	lcall	__gptrget
      00149E FF               [12] 1830 	mov	r7,a
      00149F A3               [24] 1831 	inc	dptr
      0014A0 12 31 2B         [24] 1832 	lcall	__gptrget
      0014A3 FC               [12] 1833 	mov	r4,a
      0014A4 E4               [12] 1834 	clr	a
      0014A5 C0 E0            [24] 1835 	push	acc
      0014A7 C0 E0            [24] 1836 	push	acc
      0014A9 74 48            [12] 1837 	mov	a,#0x48
      0014AB C0 E0            [24] 1838 	push	acc
      0014AD 74 42            [12] 1839 	mov	a,#0x42
      0014AF C0 E0            [24] 1840 	push	acc
      0014B1 8D 82            [24] 1841 	mov	dpl,r5
      0014B3 8E 83            [24] 1842 	mov	dph,r6
      0014B5 8F F0            [24] 1843 	mov	b,r7
      0014B7 EC               [12] 1844 	mov	a,r4
      0014B8 12 2B 26         [24] 1845 	lcall	___fslt
      0014BB E5 81            [12] 1846 	mov	a,sp
      0014BD 24 FC            [12] 1847 	add	a,#0xfc
      0014BF F5 81            [12] 1848 	mov	sp,a
      0014C1 E5 82            [12] 1849 	mov	a,dpl
      0014C3 24 FF            [12] 1850 	add	a,#0xff
      0014C5 B3               [12] 1851 	cpl	c
      0014C6 92 01            [24] 1852 	mov	_TempController_isOverheat_sloc0_1_0,c
      0014C8 E4               [12] 1853 	clr	a
      0014C9 33               [12] 1854 	rlc	a
      0014CA F5 82            [12] 1855 	mov	dpl,a
                                   1856 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:119: }
      0014CC 22               [24] 1857 	ret
                                   1858 ;------------------------------------------------------------
                                   1859 ;Allocation info for local variables in function 'TempController_getTemperature'
                                   1860 ;------------------------------------------------------------
                                   1861 ;tc                        Allocated with name '_TempController_getTemperature_tc_65536_210'
                                   1862 ;------------------------------------------------------------
                                   1863 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:121: float TempController_getTemperature(const TempController* tc) {
                                   1864 ;	-----------------------------------------
                                   1865 ;	 function TempController_getTemperature
                                   1866 ;	-----------------------------------------
      0014CD                       1867 _TempController_getTemperature:
      0014CD AF F0            [24] 1868 	mov	r7,b
      0014CF AE 83            [24] 1869 	mov	r6,dph
      0014D1 E5 82            [12] 1870 	mov	a,dpl
      0014D3 90 01 BC         [24] 1871 	mov	dptr,#_TempController_getTemperature_tc_65536_210
      0014D6 F0               [24] 1872 	movx	@dptr,a
      0014D7 EE               [12] 1873 	mov	a,r6
      0014D8 A3               [24] 1874 	inc	dptr
      0014D9 F0               [24] 1875 	movx	@dptr,a
      0014DA EF               [12] 1876 	mov	a,r7
      0014DB A3               [24] 1877 	inc	dptr
      0014DC F0               [24] 1878 	movx	@dptr,a
                                   1879 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:122: return tc->current_temp;
      0014DD 90 01 BC         [24] 1880 	mov	dptr,#_TempController_getTemperature_tc_65536_210
      0014E0 E0               [24] 1881 	movx	a,@dptr
      0014E1 FD               [12] 1882 	mov	r5,a
      0014E2 A3               [24] 1883 	inc	dptr
      0014E3 E0               [24] 1884 	movx	a,@dptr
      0014E4 FE               [12] 1885 	mov	r6,a
      0014E5 A3               [24] 1886 	inc	dptr
      0014E6 E0               [24] 1887 	movx	a,@dptr
      0014E7 FF               [12] 1888 	mov	r7,a
      0014E8 74 06            [12] 1889 	mov	a,#0x06
      0014EA 2D               [12] 1890 	add	a,r5
      0014EB FD               [12] 1891 	mov	r5,a
      0014EC E4               [12] 1892 	clr	a
      0014ED 3E               [12] 1893 	addc	a,r6
      0014EE FE               [12] 1894 	mov	r6,a
      0014EF 8D 82            [24] 1895 	mov	dpl,r5
      0014F1 8E 83            [24] 1896 	mov	dph,r6
      0014F3 8F F0            [24] 1897 	mov	b,r7
      0014F5 12 31 2B         [24] 1898 	lcall	__gptrget
      0014F8 FD               [12] 1899 	mov	r5,a
      0014F9 A3               [24] 1900 	inc	dptr
      0014FA 12 31 2B         [24] 1901 	lcall	__gptrget
      0014FD FE               [12] 1902 	mov	r6,a
      0014FE A3               [24] 1903 	inc	dptr
      0014FF 12 31 2B         [24] 1904 	lcall	__gptrget
      001502 FF               [12] 1905 	mov	r7,a
      001503 A3               [24] 1906 	inc	dptr
      001504 12 31 2B         [24] 1907 	lcall	__gptrget
      001507 8D 82            [24] 1908 	mov	dpl,r5
      001509 8E 83            [24] 1909 	mov	dph,r6
      00150B 8F F0            [24] 1910 	mov	b,r7
                                   1911 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:123: }
      00150D 22               [24] 1912 	ret
                                   1913 ;------------------------------------------------------------
                                   1914 ;Allocation info for local variables in function 'TempController_getTargetRPM'
                                   1915 ;------------------------------------------------------------
                                   1916 ;tc                        Allocated with name '_TempController_getTargetRPM_tc_65536_212'
                                   1917 ;------------------------------------------------------------
                                   1918 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:125: uint32_t TempController_getTargetRPM(const TempController* tc) {
                                   1919 ;	-----------------------------------------
                                   1920 ;	 function TempController_getTargetRPM
                                   1921 ;	-----------------------------------------
      00150E                       1922 _TempController_getTargetRPM:
      00150E AF F0            [24] 1923 	mov	r7,b
      001510 AE 83            [24] 1924 	mov	r6,dph
      001512 E5 82            [12] 1925 	mov	a,dpl
      001514 90 01 BF         [24] 1926 	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
      001517 F0               [24] 1927 	movx	@dptr,a
      001518 EE               [12] 1928 	mov	a,r6
      001519 A3               [24] 1929 	inc	dptr
      00151A F0               [24] 1930 	movx	@dptr,a
      00151B EF               [12] 1931 	mov	a,r7
      00151C A3               [24] 1932 	inc	dptr
      00151D F0               [24] 1933 	movx	@dptr,a
                                   1934 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:126: return tc->target_rpm;
      00151E 90 01 BF         [24] 1935 	mov	dptr,#_TempController_getTargetRPM_tc_65536_212
      001521 E0               [24] 1936 	movx	a,@dptr
      001522 FD               [12] 1937 	mov	r5,a
      001523 A3               [24] 1938 	inc	dptr
      001524 E0               [24] 1939 	movx	a,@dptr
      001525 FE               [12] 1940 	mov	r6,a
      001526 A3               [24] 1941 	inc	dptr
      001527 E0               [24] 1942 	movx	a,@dptr
      001528 FF               [12] 1943 	mov	r7,a
      001529 74 0A            [12] 1944 	mov	a,#0x0a
      00152B 2D               [12] 1945 	add	a,r5
      00152C FD               [12] 1946 	mov	r5,a
      00152D E4               [12] 1947 	clr	a
      00152E 3E               [12] 1948 	addc	a,r6
      00152F FE               [12] 1949 	mov	r6,a
      001530 8D 82            [24] 1950 	mov	dpl,r5
      001532 8E 83            [24] 1951 	mov	dph,r6
      001534 8F F0            [24] 1952 	mov	b,r7
      001536 12 31 2B         [24] 1953 	lcall	__gptrget
      001539 FD               [12] 1954 	mov	r5,a
      00153A A3               [24] 1955 	inc	dptr
      00153B 12 31 2B         [24] 1956 	lcall	__gptrget
      00153E FE               [12] 1957 	mov	r6,a
      00153F A3               [24] 1958 	inc	dptr
      001540 12 31 2B         [24] 1959 	lcall	__gptrget
      001543 FF               [12] 1960 	mov	r7,a
      001544 A3               [24] 1961 	inc	dptr
      001545 12 31 2B         [24] 1962 	lcall	__gptrget
      001548 8D 82            [24] 1963 	mov	dpl,r5
      00154A 8E 83            [24] 1964 	mov	dph,r6
      00154C 8F F0            [24] 1965 	mov	b,r7
                                   1966 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:127: }
      00154E 22               [24] 1967 	ret
                                   1968 ;------------------------------------------------------------
                                   1969 ;Allocation info for local variables in function 'TempController_isReady'
                                   1970 ;------------------------------------------------------------
                                   1971 ;tc                        Allocated with name '_TempController_isReady_tc_65536_214'
                                   1972 ;------------------------------------------------------------
                                   1973 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:129: bool TempController_isReady(const TempController* tc) {
                                   1974 ;	-----------------------------------------
                                   1975 ;	 function TempController_isReady
                                   1976 ;	-----------------------------------------
      00154F                       1977 _TempController_isReady:
      00154F AF F0            [24] 1978 	mov	r7,b
      001551 AE 83            [24] 1979 	mov	r6,dph
      001553 E5 82            [12] 1980 	mov	a,dpl
      001555 90 01 C2         [24] 1981 	mov	dptr,#_TempController_isReady_tc_65536_214
      001558 F0               [24] 1982 	movx	@dptr,a
      001559 EE               [12] 1983 	mov	a,r6
      00155A A3               [24] 1984 	inc	dptr
      00155B F0               [24] 1985 	movx	@dptr,a
      00155C EF               [12] 1986 	mov	a,r7
      00155D A3               [24] 1987 	inc	dptr
      00155E F0               [24] 1988 	movx	@dptr,a
                                   1989 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:130: return tc->sensor_ready;
      00155F 90 01 C2         [24] 1990 	mov	dptr,#_TempController_isReady_tc_65536_214
      001562 E0               [24] 1991 	movx	a,@dptr
      001563 FD               [12] 1992 	mov	r5,a
      001564 A3               [24] 1993 	inc	dptr
      001565 E0               [24] 1994 	movx	a,@dptr
      001566 FE               [12] 1995 	mov	r6,a
      001567 A3               [24] 1996 	inc	dptr
      001568 E0               [24] 1997 	movx	a,@dptr
      001569 FF               [12] 1998 	mov	r7,a
      00156A 74 0E            [12] 1999 	mov	a,#0x0e
      00156C 2D               [12] 2000 	add	a,r5
      00156D FD               [12] 2001 	mov	r5,a
      00156E E4               [12] 2002 	clr	a
      00156F 3E               [12] 2003 	addc	a,r6
      001570 FE               [12] 2004 	mov	r6,a
      001571 8D 82            [24] 2005 	mov	dpl,r5
      001573 8E 83            [24] 2006 	mov	dph,r6
      001575 8F F0            [24] 2007 	mov	b,r7
      001577 12 31 2B         [24] 2008 	lcall	__gptrget
                                   2009 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\temp_sensor.c:131: }
      00157A F5 82            [12] 2010 	mov	dpl,a
      00157C 22               [24] 2011 	ret
                                   2012 	.area CSEG    (CODE)
                                   2013 	.area CONST   (CODE)
                                   2014 	.area XINIT   (CODE)
                                   2015 	.area CABS    (ABS,CODE)
