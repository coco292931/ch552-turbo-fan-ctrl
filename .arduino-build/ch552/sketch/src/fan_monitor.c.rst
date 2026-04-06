                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.2.2 #13407 (MINGW32)
                                      4 ;--------------------------------------------------------
                                      5 	.module fan_monitor
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _attachInterrupt
                                     12 	.globl _millis
                                     13 	.globl _pinMode
                                     14 	.globl _UIF_BUS_RST
                                     15 	.globl _UIF_DETECT
                                     16 	.globl _UIF_TRANSFER
                                     17 	.globl _UIF_SUSPEND
                                     18 	.globl _UIF_HST_SOF
                                     19 	.globl _UIF_FIFO_OV
                                     20 	.globl _U_SIE_FREE
                                     21 	.globl _U_TOG_OK
                                     22 	.globl _U_IS_NAK
                                     23 	.globl _ADC_CHAN0
                                     24 	.globl _ADC_CHAN1
                                     25 	.globl _CMP_CHAN
                                     26 	.globl _ADC_START
                                     27 	.globl _ADC_IF
                                     28 	.globl _CMP_IF
                                     29 	.globl _CMPO
                                     30 	.globl _U1RI
                                     31 	.globl _U1TI
                                     32 	.globl _U1RB8
                                     33 	.globl _U1TB8
                                     34 	.globl _U1REN
                                     35 	.globl _U1SMOD
                                     36 	.globl _U1SM0
                                     37 	.globl _S0_R_FIFO
                                     38 	.globl _S0_T_FIFO
                                     39 	.globl _S0_FREE
                                     40 	.globl _S0_IF_BYTE
                                     41 	.globl _S0_IF_FIRST
                                     42 	.globl _S0_IF_OV
                                     43 	.globl _S0_FST_ACT
                                     44 	.globl _CP_RL2
                                     45 	.globl _C_T2
                                     46 	.globl _TR2
                                     47 	.globl _EXEN2
                                     48 	.globl _TCLK
                                     49 	.globl _RCLK
                                     50 	.globl _EXF2
                                     51 	.globl _CAP1F
                                     52 	.globl _TF2
                                     53 	.globl _RI
                                     54 	.globl _TI
                                     55 	.globl _RB8
                                     56 	.globl _TB8
                                     57 	.globl _REN
                                     58 	.globl _SM2
                                     59 	.globl _SM1
                                     60 	.globl _SM0
                                     61 	.globl _IT0
                                     62 	.globl _IE0
                                     63 	.globl _IT1
                                     64 	.globl _IE1
                                     65 	.globl _TR0
                                     66 	.globl _TF0
                                     67 	.globl _TR1
                                     68 	.globl _TF1
                                     69 	.globl _P3_0
                                     70 	.globl _P3_1
                                     71 	.globl _P3_2
                                     72 	.globl _P3_3
                                     73 	.globl _P3_4
                                     74 	.globl _P3_5
                                     75 	.globl _P3_6
                                     76 	.globl _P3_7
                                     77 	.globl _RXD
                                     78 	.globl _PWM1_
                                     79 	.globl _TXD
                                     80 	.globl _PWM2_
                                     81 	.globl _AIN3
                                     82 	.globl _VBUS1
                                     83 	.globl _INT0
                                     84 	.globl _TXD1_
                                     85 	.globl _INT1
                                     86 	.globl _T0
                                     87 	.globl _RXD1_
                                     88 	.globl _PWM2
                                     89 	.globl _T1
                                     90 	.globl _UDP
                                     91 	.globl _UDM
                                     92 	.globl _P1_0
                                     93 	.globl _P1_1
                                     94 	.globl _P1_2
                                     95 	.globl _P1_3
                                     96 	.globl _P1_4
                                     97 	.globl _P1_5
                                     98 	.globl _P1_6
                                     99 	.globl _P1_7
                                    100 	.globl _TIN0
                                    101 	.globl _CAP1
                                    102 	.globl _T2
                                    103 	.globl _AIN0
                                    104 	.globl _VBUS2
                                    105 	.globl _TIN1
                                    106 	.globl _CAP2
                                    107 	.globl _T2EX
                                    108 	.globl _RXD_
                                    109 	.globl _TXD_
                                    110 	.globl _AIN1
                                    111 	.globl _UCC1
                                    112 	.globl _TIN2
                                    113 	.globl _SCS
                                    114 	.globl _CAP1_
                                    115 	.globl _T2_
                                    116 	.globl _AIN2
                                    117 	.globl _UCC2
                                    118 	.globl _TIN3
                                    119 	.globl _PWM1
                                    120 	.globl _MOSI
                                    121 	.globl _TIN4
                                    122 	.globl _RXD1
                                    123 	.globl _MISO
                                    124 	.globl _TIN5
                                    125 	.globl _TXD1
                                    126 	.globl _SCK
                                    127 	.globl _IE_SPI0
                                    128 	.globl _IE_TKEY
                                    129 	.globl _IE_USB
                                    130 	.globl _IE_ADC
                                    131 	.globl _IE_UART1
                                    132 	.globl _IE_PWMX
                                    133 	.globl _IE_GPIO
                                    134 	.globl _IE_WDOG
                                    135 	.globl _PX0
                                    136 	.globl _PT0
                                    137 	.globl _PX1
                                    138 	.globl _PT1
                                    139 	.globl _PS
                                    140 	.globl _PT2
                                    141 	.globl _PL_FLAG
                                    142 	.globl _PH_FLAG
                                    143 	.globl _EX0
                                    144 	.globl _ET0
                                    145 	.globl _EX1
                                    146 	.globl _ET1
                                    147 	.globl _ES
                                    148 	.globl _ET2
                                    149 	.globl _E_DIS
                                    150 	.globl _EA
                                    151 	.globl _P
                                    152 	.globl _F1
                                    153 	.globl _OV
                                    154 	.globl _RS0
                                    155 	.globl _RS1
                                    156 	.globl _F0
                                    157 	.globl _AC
                                    158 	.globl _CY
                                    159 	.globl _UEP1_DMA_H
                                    160 	.globl _UEP1_DMA_L
                                    161 	.globl _UEP1_DMA
                                    162 	.globl _UEP0_DMA_H
                                    163 	.globl _UEP0_DMA_L
                                    164 	.globl _UEP0_DMA
                                    165 	.globl _UEP2_3_MOD
                                    166 	.globl _UEP4_1_MOD
                                    167 	.globl _UEP3_DMA_H
                                    168 	.globl _UEP3_DMA_L
                                    169 	.globl _UEP3_DMA
                                    170 	.globl _UEP2_DMA_H
                                    171 	.globl _UEP2_DMA_L
                                    172 	.globl _UEP2_DMA
                                    173 	.globl _USB_DEV_AD
                                    174 	.globl _USB_CTRL
                                    175 	.globl _USB_INT_EN
                                    176 	.globl _UEP4_T_LEN
                                    177 	.globl _UEP4_CTRL
                                    178 	.globl _UEP0_T_LEN
                                    179 	.globl _UEP0_CTRL
                                    180 	.globl _USB_RX_LEN
                                    181 	.globl _USB_MIS_ST
                                    182 	.globl _USB_INT_ST
                                    183 	.globl _USB_INT_FG
                                    184 	.globl _UEP3_T_LEN
                                    185 	.globl _UEP3_CTRL
                                    186 	.globl _UEP2_T_LEN
                                    187 	.globl _UEP2_CTRL
                                    188 	.globl _UEP1_T_LEN
                                    189 	.globl _UEP1_CTRL
                                    190 	.globl _UDEV_CTRL
                                    191 	.globl _USB_C_CTRL
                                    192 	.globl _TKEY_DATH
                                    193 	.globl _TKEY_DATL
                                    194 	.globl _TKEY_DAT
                                    195 	.globl _TKEY_CTRL
                                    196 	.globl _ADC_DATA
                                    197 	.globl _ADC_CFG
                                    198 	.globl _ADC_CTRL
                                    199 	.globl _SBAUD1
                                    200 	.globl _SBUF1
                                    201 	.globl _SCON1
                                    202 	.globl _SPI0_SETUP
                                    203 	.globl _SPI0_CK_SE
                                    204 	.globl _SPI0_CTRL
                                    205 	.globl _SPI0_DATA
                                    206 	.globl _SPI0_STAT
                                    207 	.globl _PWM_CK_SE
                                    208 	.globl _PWM_CTRL
                                    209 	.globl _PWM_DATA1
                                    210 	.globl _PWM_DATA2
                                    211 	.globl _T2CAP1H
                                    212 	.globl _T2CAP1L
                                    213 	.globl _T2CAP1
                                    214 	.globl _TH2
                                    215 	.globl _TL2
                                    216 	.globl _T2COUNT
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _RCAP2
                                    220 	.globl _T2MOD
                                    221 	.globl _T2CON
                                    222 	.globl _SBUF
                                    223 	.globl _SCON
                                    224 	.globl _TH1
                                    225 	.globl _TH0
                                    226 	.globl _TL1
                                    227 	.globl _TL0
                                    228 	.globl _TMOD
                                    229 	.globl _TCON
                                    230 	.globl _XBUS_AUX
                                    231 	.globl _PIN_FUNC
                                    232 	.globl _P3_DIR_PU
                                    233 	.globl _P3_MOD_OC
                                    234 	.globl _P3
                                    235 	.globl _P2
                                    236 	.globl _P1_DIR_PU
                                    237 	.globl _P1_MOD_OC
                                    238 	.globl _P1
                                    239 	.globl _ROM_CTRL
                                    240 	.globl _ROM_DATA_H
                                    241 	.globl _ROM_DATA_L
                                    242 	.globl _ROM_DATA
                                    243 	.globl _ROM_ADDR_H
                                    244 	.globl _ROM_ADDR_L
                                    245 	.globl _ROM_ADDR
                                    246 	.globl _GPIO_IE
                                    247 	.globl _IP_EX
                                    248 	.globl _IE_EX
                                    249 	.globl _IP
                                    250 	.globl _IE
                                    251 	.globl _WDOG_COUNT
                                    252 	.globl _RESET_KEEP
                                    253 	.globl _WAKE_CTRL
                                    254 	.globl _CLOCK_CFG
                                    255 	.globl _PCON
                                    256 	.globl _GLOBAL_CFG
                                    257 	.globl _SAFE_MOD
                                    258 	.globl _DPH
                                    259 	.globl _DPL
                                    260 	.globl _SP
                                    261 	.globl _B
                                    262 	.globl _ACC
                                    263 	.globl _PSW
                                    264 	.globl _FanMonitor_begin_PARM_2
                                    265 	.globl _FanMonitor_begin
                                    266 	.globl _FanMonitor_updateRPM
                                    267 	.globl _FanMonitor_getRPM
                                    268 	.globl _FanMonitor_isStalled
                                    269 	.globl _FanMonitor_resetStall
                                    270 	.globl _FanMonitor_getStallCount
                                    271 ;--------------------------------------------------------
                                    272 ; special function registers
                                    273 ;--------------------------------------------------------
                                    274 	.area RSEG    (ABS,DATA)
      000000                        275 	.org 0x0000
                           0000D0   276 _PSW	=	0x00d0
                           0000E0   277 _ACC	=	0x00e0
                           0000F0   278 _B	=	0x00f0
                           000081   279 _SP	=	0x0081
                           000082   280 _DPL	=	0x0082
                           000083   281 _DPH	=	0x0083
                           0000A1   282 _SAFE_MOD	=	0x00a1
                           0000B1   283 _GLOBAL_CFG	=	0x00b1
                           000087   284 _PCON	=	0x0087
                           0000B9   285 _CLOCK_CFG	=	0x00b9
                           0000A9   286 _WAKE_CTRL	=	0x00a9
                           0000FE   287 _RESET_KEEP	=	0x00fe
                           0000FF   288 _WDOG_COUNT	=	0x00ff
                           0000A8   289 _IE	=	0x00a8
                           0000B8   290 _IP	=	0x00b8
                           0000E8   291 _IE_EX	=	0x00e8
                           0000E9   292 _IP_EX	=	0x00e9
                           0000C7   293 _GPIO_IE	=	0x00c7
                           008584   294 _ROM_ADDR	=	0x8584
                           000084   295 _ROM_ADDR_L	=	0x0084
                           000085   296 _ROM_ADDR_H	=	0x0085
                           008F8E   297 _ROM_DATA	=	0x8f8e
                           00008E   298 _ROM_DATA_L	=	0x008e
                           00008F   299 _ROM_DATA_H	=	0x008f
                           000086   300 _ROM_CTRL	=	0x0086
                           000090   301 _P1	=	0x0090
                           000092   302 _P1_MOD_OC	=	0x0092
                           000093   303 _P1_DIR_PU	=	0x0093
                           0000A0   304 _P2	=	0x00a0
                           0000B0   305 _P3	=	0x00b0
                           000096   306 _P3_MOD_OC	=	0x0096
                           000097   307 _P3_DIR_PU	=	0x0097
                           0000C6   308 _PIN_FUNC	=	0x00c6
                           0000A2   309 _XBUS_AUX	=	0x00a2
                           000088   310 _TCON	=	0x0088
                           000089   311 _TMOD	=	0x0089
                           00008A   312 _TL0	=	0x008a
                           00008B   313 _TL1	=	0x008b
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           000098   316 _SCON	=	0x0098
                           000099   317 _SBUF	=	0x0099
                           0000C8   318 _T2CON	=	0x00c8
                           0000C9   319 _T2MOD	=	0x00c9
                           00CBCA   320 _RCAP2	=	0xcbca
                           0000CA   321 _RCAP2L	=	0x00ca
                           0000CB   322 _RCAP2H	=	0x00cb
                           00CDCC   323 _T2COUNT	=	0xcdcc
                           0000CC   324 _TL2	=	0x00cc
                           0000CD   325 _TH2	=	0x00cd
                           00CFCE   326 _T2CAP1	=	0xcfce
                           0000CE   327 _T2CAP1L	=	0x00ce
                           0000CF   328 _T2CAP1H	=	0x00cf
                           00009B   329 _PWM_DATA2	=	0x009b
                           00009C   330 _PWM_DATA1	=	0x009c
                           00009D   331 _PWM_CTRL	=	0x009d
                           00009E   332 _PWM_CK_SE	=	0x009e
                           0000F8   333 _SPI0_STAT	=	0x00f8
                           0000F9   334 _SPI0_DATA	=	0x00f9
                           0000FA   335 _SPI0_CTRL	=	0x00fa
                           0000FB   336 _SPI0_CK_SE	=	0x00fb
                           0000FC   337 _SPI0_SETUP	=	0x00fc
                           0000C0   338 _SCON1	=	0x00c0
                           0000C1   339 _SBUF1	=	0x00c1
                           0000C2   340 _SBAUD1	=	0x00c2
                           000080   341 _ADC_CTRL	=	0x0080
                           00009A   342 _ADC_CFG	=	0x009a
                           00009F   343 _ADC_DATA	=	0x009f
                           0000C3   344 _TKEY_CTRL	=	0x00c3
                           00C5C4   345 _TKEY_DAT	=	0xc5c4
                           0000C4   346 _TKEY_DATL	=	0x00c4
                           0000C5   347 _TKEY_DATH	=	0x00c5
                           000091   348 _USB_C_CTRL	=	0x0091
                           0000D1   349 _UDEV_CTRL	=	0x00d1
                           0000D2   350 _UEP1_CTRL	=	0x00d2
                           0000D3   351 _UEP1_T_LEN	=	0x00d3
                           0000D4   352 _UEP2_CTRL	=	0x00d4
                           0000D5   353 _UEP2_T_LEN	=	0x00d5
                           0000D6   354 _UEP3_CTRL	=	0x00d6
                           0000D7   355 _UEP3_T_LEN	=	0x00d7
                           0000D8   356 _USB_INT_FG	=	0x00d8
                           0000D9   357 _USB_INT_ST	=	0x00d9
                           0000DA   358 _USB_MIS_ST	=	0x00da
                           0000DB   359 _USB_RX_LEN	=	0x00db
                           0000DC   360 _UEP0_CTRL	=	0x00dc
                           0000DD   361 _UEP0_T_LEN	=	0x00dd
                           0000DE   362 _UEP4_CTRL	=	0x00de
                           0000DF   363 _UEP4_T_LEN	=	0x00df
                           0000E1   364 _USB_INT_EN	=	0x00e1
                           0000E2   365 _USB_CTRL	=	0x00e2
                           0000E3   366 _USB_DEV_AD	=	0x00e3
                           00E5E4   367 _UEP2_DMA	=	0xe5e4
                           0000E4   368 _UEP2_DMA_L	=	0x00e4
                           0000E5   369 _UEP2_DMA_H	=	0x00e5
                           00E7E6   370 _UEP3_DMA	=	0xe7e6
                           0000E6   371 _UEP3_DMA_L	=	0x00e6
                           0000E7   372 _UEP3_DMA_H	=	0x00e7
                           0000EA   373 _UEP4_1_MOD	=	0x00ea
                           0000EB   374 _UEP2_3_MOD	=	0x00eb
                           00EDEC   375 _UEP0_DMA	=	0xedec
                           0000EC   376 _UEP0_DMA_L	=	0x00ec
                           0000ED   377 _UEP0_DMA_H	=	0x00ed
                           00EFEE   378 _UEP1_DMA	=	0xefee
                           0000EE   379 _UEP1_DMA_L	=	0x00ee
                           0000EF   380 _UEP1_DMA_H	=	0x00ef
                                    381 ;--------------------------------------------------------
                                    382 ; special function bits
                                    383 ;--------------------------------------------------------
                                    384 	.area RSEG    (ABS,DATA)
      000000                        385 	.org 0x0000
                           0000D7   386 _CY	=	0x00d7
                           0000D6   387 _AC	=	0x00d6
                           0000D5   388 _F0	=	0x00d5
                           0000D4   389 _RS1	=	0x00d4
                           0000D3   390 _RS0	=	0x00d3
                           0000D2   391 _OV	=	0x00d2
                           0000D1   392 _F1	=	0x00d1
                           0000D0   393 _P	=	0x00d0
                           0000AF   394 _EA	=	0x00af
                           0000AE   395 _E_DIS	=	0x00ae
                           0000AD   396 _ET2	=	0x00ad
                           0000AC   397 _ES	=	0x00ac
                           0000AB   398 _ET1	=	0x00ab
                           0000AA   399 _EX1	=	0x00aa
                           0000A9   400 _ET0	=	0x00a9
                           0000A8   401 _EX0	=	0x00a8
                           0000BF   402 _PH_FLAG	=	0x00bf
                           0000BE   403 _PL_FLAG	=	0x00be
                           0000BD   404 _PT2	=	0x00bd
                           0000BC   405 _PS	=	0x00bc
                           0000BB   406 _PT1	=	0x00bb
                           0000BA   407 _PX1	=	0x00ba
                           0000B9   408 _PT0	=	0x00b9
                           0000B8   409 _PX0	=	0x00b8
                           0000EF   410 _IE_WDOG	=	0x00ef
                           0000EE   411 _IE_GPIO	=	0x00ee
                           0000ED   412 _IE_PWMX	=	0x00ed
                           0000EC   413 _IE_UART1	=	0x00ec
                           0000EB   414 _IE_ADC	=	0x00eb
                           0000EA   415 _IE_USB	=	0x00ea
                           0000E9   416 _IE_TKEY	=	0x00e9
                           0000E8   417 _IE_SPI0	=	0x00e8
                           000097   418 _SCK	=	0x0097
                           000097   419 _TXD1	=	0x0097
                           000097   420 _TIN5	=	0x0097
                           000096   421 _MISO	=	0x0096
                           000096   422 _RXD1	=	0x0096
                           000096   423 _TIN4	=	0x0096
                           000095   424 _MOSI	=	0x0095
                           000095   425 _PWM1	=	0x0095
                           000095   426 _TIN3	=	0x0095
                           000095   427 _UCC2	=	0x0095
                           000095   428 _AIN2	=	0x0095
                           000094   429 _T2_	=	0x0094
                           000094   430 _CAP1_	=	0x0094
                           000094   431 _SCS	=	0x0094
                           000094   432 _TIN2	=	0x0094
                           000094   433 _UCC1	=	0x0094
                           000094   434 _AIN1	=	0x0094
                           000093   435 _TXD_	=	0x0093
                           000092   436 _RXD_	=	0x0092
                           000091   437 _T2EX	=	0x0091
                           000091   438 _CAP2	=	0x0091
                           000091   439 _TIN1	=	0x0091
                           000091   440 _VBUS2	=	0x0091
                           000091   441 _AIN0	=	0x0091
                           000090   442 _T2	=	0x0090
                           000090   443 _CAP1	=	0x0090
                           000090   444 _TIN0	=	0x0090
                           000097   445 _P1_7	=	0x0097
                           000096   446 _P1_6	=	0x0096
                           000095   447 _P1_5	=	0x0095
                           000094   448 _P1_4	=	0x0094
                           000093   449 _P1_3	=	0x0093
                           000092   450 _P1_2	=	0x0092
                           000091   451 _P1_1	=	0x0091
                           000090   452 _P1_0	=	0x0090
                           0000B7   453 _UDM	=	0x00b7
                           0000B6   454 _UDP	=	0x00b6
                           0000B5   455 _T1	=	0x00b5
                           0000B4   456 _PWM2	=	0x00b4
                           0000B4   457 _RXD1_	=	0x00b4
                           0000B4   458 _T0	=	0x00b4
                           0000B3   459 _INT1	=	0x00b3
                           0000B2   460 _TXD1_	=	0x00b2
                           0000B2   461 _INT0	=	0x00b2
                           0000B2   462 _VBUS1	=	0x00b2
                           0000B2   463 _AIN3	=	0x00b2
                           0000B1   464 _PWM2_	=	0x00b1
                           0000B1   465 _TXD	=	0x00b1
                           0000B0   466 _PWM1_	=	0x00b0
                           0000B0   467 _RXD	=	0x00b0
                           0000B7   468 _P3_7	=	0x00b7
                           0000B6   469 _P3_6	=	0x00b6
                           0000B5   470 _P3_5	=	0x00b5
                           0000B4   471 _P3_4	=	0x00b4
                           0000B3   472 _P3_3	=	0x00b3
                           0000B2   473 _P3_2	=	0x00b2
                           0000B1   474 _P3_1	=	0x00b1
                           0000B0   475 _P3_0	=	0x00b0
                           00008F   476 _TF1	=	0x008f
                           00008E   477 _TR1	=	0x008e
                           00008D   478 _TF0	=	0x008d
                           00008C   479 _TR0	=	0x008c
                           00008B   480 _IE1	=	0x008b
                           00008A   481 _IT1	=	0x008a
                           000089   482 _IE0	=	0x0089
                           000088   483 _IT0	=	0x0088
                           00009F   484 _SM0	=	0x009f
                           00009E   485 _SM1	=	0x009e
                           00009D   486 _SM2	=	0x009d
                           00009C   487 _REN	=	0x009c
                           00009B   488 _TB8	=	0x009b
                           00009A   489 _RB8	=	0x009a
                           000099   490 _TI	=	0x0099
                           000098   491 _RI	=	0x0098
                           0000CF   492 _TF2	=	0x00cf
                           0000CF   493 _CAP1F	=	0x00cf
                           0000CE   494 _EXF2	=	0x00ce
                           0000CD   495 _RCLK	=	0x00cd
                           0000CC   496 _TCLK	=	0x00cc
                           0000CB   497 _EXEN2	=	0x00cb
                           0000CA   498 _TR2	=	0x00ca
                           0000C9   499 _C_T2	=	0x00c9
                           0000C8   500 _CP_RL2	=	0x00c8
                           0000FF   501 _S0_FST_ACT	=	0x00ff
                           0000FE   502 _S0_IF_OV	=	0x00fe
                           0000FD   503 _S0_IF_FIRST	=	0x00fd
                           0000FC   504 _S0_IF_BYTE	=	0x00fc
                           0000FB   505 _S0_FREE	=	0x00fb
                           0000FA   506 _S0_T_FIFO	=	0x00fa
                           0000F8   507 _S0_R_FIFO	=	0x00f8
                           0000C7   508 _U1SM0	=	0x00c7
                           0000C5   509 _U1SMOD	=	0x00c5
                           0000C4   510 _U1REN	=	0x00c4
                           0000C3   511 _U1TB8	=	0x00c3
                           0000C2   512 _U1RB8	=	0x00c2
                           0000C1   513 _U1TI	=	0x00c1
                           0000C0   514 _U1RI	=	0x00c0
                           000087   515 _CMPO	=	0x0087
                           000086   516 _CMP_IF	=	0x0086
                           000085   517 _ADC_IF	=	0x0085
                           000084   518 _ADC_START	=	0x0084
                           000083   519 _CMP_CHAN	=	0x0083
                           000081   520 _ADC_CHAN1	=	0x0081
                           000080   521 _ADC_CHAN0	=	0x0080
                           0000DF   522 _U_IS_NAK	=	0x00df
                           0000DE   523 _U_TOG_OK	=	0x00de
                           0000DD   524 _U_SIE_FREE	=	0x00dd
                           0000DC   525 _UIF_FIFO_OV	=	0x00dc
                           0000DB   526 _UIF_HST_SOF	=	0x00db
                           0000DA   527 _UIF_SUSPEND	=	0x00da
                           0000D9   528 _UIF_TRANSFER	=	0x00d9
                           0000D8   529 _UIF_DETECT	=	0x00d8
                           0000D8   530 _UIF_BUS_RST	=	0x00d8
                                    531 ;--------------------------------------------------------
                                    532 ; overlayable register banks
                                    533 ;--------------------------------------------------------
                                    534 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        535 	.ds 8
                                    536 ;--------------------------------------------------------
                                    537 ; internal ram data
                                    538 ;--------------------------------------------------------
                                    539 	.area DSEG    (DATA)
      000022                        540 _FanMonitor_begin_sloc0_1_0:
      000022                        541 	.ds 3
      000025                        542 _FanMonitor_updateRPM_sloc0_1_0:
      000025                        543 	.ds 3
      000028                        544 _FanMonitor_updateRPM_sloc1_1_0:
      000028                        545 	.ds 4
      00002C                        546 _FanMonitor_updateRPM_sloc2_1_0:
      00002C                        547 	.ds 4
      000030                        548 _FanMonitor_updateRPM_sloc3_1_0:
      000030                        549 	.ds 3
      000033                        550 _FanMonitor_updateRPM_sloc4_1_0:
      000033                        551 	.ds 4
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
                                    568 ;--------------------------------------------------------
                                    569 ; paged external ram data
                                    570 ;--------------------------------------------------------
                                    571 	.area PSEG    (PAG,XDATA)
                                    572 ;--------------------------------------------------------
                                    573 ; uninitialized external ram data
                                    574 ;--------------------------------------------------------
                                    575 	.area XSEG    (XDATA)
      0000B9                        576 _FanMonitor_begin_PARM_2:
      0000B9                        577 	.ds 1
      0000BA                        578 _FanMonitor_begin_fm_65536_178:
      0000BA                        579 	.ds 3
      0000BD                        580 _FanMonitor_updateRPM_fm_65536_180:
      0000BD                        581 	.ds 3
      0000C0                        582 _FanMonitor_getRPM_fm_65536_186:
      0000C0                        583 	.ds 3
      0000C3                        584 _FanMonitor_isStalled_fm_65536_188:
      0000C3                        585 	.ds 3
      0000C6                        586 _FanMonitor_resetStall_fm_65536_190:
      0000C6                        587 	.ds 3
      0000C9                        588 _FanMonitor_getStallCount_fm_65536_192:
      0000C9                        589 	.ds 3
                                    590 ;--------------------------------------------------------
                                    591 ; absolute external ram data
                                    592 ;--------------------------------------------------------
                                    593 	.area XABS    (ABS,XDATA)
                                    594 ;--------------------------------------------------------
                                    595 ; initialized external ram data
                                    596 ;--------------------------------------------------------
                                    597 	.area XISEG   (XDATA)
      00024A                        598 _g_fan_monitor_instance:
      00024A                        599 	.ds 3
                                    600 	.area HOME    (CODE)
                                    601 	.area GSINIT0 (CODE)
                                    602 	.area GSINIT1 (CODE)
                                    603 	.area GSINIT2 (CODE)
                                    604 	.area GSINIT3 (CODE)
                                    605 	.area GSINIT4 (CODE)
                                    606 	.area GSINIT5 (CODE)
                                    607 	.area GSINIT  (CODE)
                                    608 	.area GSFINAL (CODE)
                                    609 	.area CSEG    (CODE)
                                    610 ;--------------------------------------------------------
                                    611 ; global & static initialisations
                                    612 ;--------------------------------------------------------
                                    613 	.area HOME    (CODE)
                                    614 	.area GSINIT  (CODE)
                                    615 	.area GSFINAL (CODE)
                                    616 	.area GSINIT  (CODE)
                                    617 ;--------------------------------------------------------
                                    618 ; Home
                                    619 ;--------------------------------------------------------
                                    620 	.area HOME    (CODE)
                                    621 	.area HOME    (CODE)
                                    622 ;--------------------------------------------------------
                                    623 ; code
                                    624 ;--------------------------------------------------------
                                    625 	.area CSEG    (CODE)
                                    626 ;------------------------------------------------------------
                                    627 ;Allocation info for local variables in function 'fan_monitor_tachISR'
                                    628 ;------------------------------------------------------------
                                    629 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:11: static void fan_monitor_tachISR(void) {
                                    630 ;	-----------------------------------------
                                    631 ;	 function fan_monitor_tachISR
                                    632 ;	-----------------------------------------
      000536                        633 _fan_monitor_tachISR:
                           000007   634 	ar7 = 0x07
                           000006   635 	ar6 = 0x06
                           000005   636 	ar5 = 0x05
                           000004   637 	ar4 = 0x04
                           000003   638 	ar3 = 0x03
                           000002   639 	ar2 = 0x02
                           000001   640 	ar1 = 0x01
                           000000   641 	ar0 = 0x00
                                    642 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:12: if (g_fan_monitor_instance != 0) {
      000536 90 02 4A         [24]  643 	mov	dptr,#_g_fan_monitor_instance
      000539 E0               [24]  644 	movx	a,@dptr
      00053A FD               [12]  645 	mov	r5,a
      00053B A3               [24]  646 	inc	dptr
      00053C E0               [24]  647 	movx	a,@dptr
      00053D FE               [12]  648 	mov	r6,a
      00053E A3               [24]  649 	inc	dptr
      00053F E0               [24]  650 	movx	a,@dptr
      000540 FF               [12]  651 	mov	r7,a
      000541 90 02 4A         [24]  652 	mov	dptr,#_g_fan_monitor_instance
      000544 E0               [24]  653 	movx	a,@dptr
      000545 F5 F0            [12]  654 	mov	b,a
      000547 A3               [24]  655 	inc	dptr
      000548 E0               [24]  656 	movx	a,@dptr
      000549 45 F0            [12]  657 	orl	a,b
      00054B 60 44            [24]  658 	jz	00103$
                                    659 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:13: g_fan_monitor_instance->pulse_count++;
      00054D 0D               [12]  660 	inc	r5
      00054E BD 00 01         [24]  661 	cjne	r5,#0x00,00110$
      000551 0E               [12]  662 	inc	r6
      000552                        663 00110$:
      000552 8D 82            [24]  664 	mov	dpl,r5
      000554 8E 83            [24]  665 	mov	dph,r6
      000556 8F F0            [24]  666 	mov	b,r7
      000558 12 31 2B         [24]  667 	lcall	__gptrget
      00055B F9               [12]  668 	mov	r1,a
      00055C A3               [24]  669 	inc	dptr
      00055D 12 31 2B         [24]  670 	lcall	__gptrget
      000560 FA               [12]  671 	mov	r2,a
      000561 A3               [24]  672 	inc	dptr
      000562 12 31 2B         [24]  673 	lcall	__gptrget
      000565 FB               [12]  674 	mov	r3,a
      000566 A3               [24]  675 	inc	dptr
      000567 12 31 2B         [24]  676 	lcall	__gptrget
      00056A FC               [12]  677 	mov	r4,a
      00056B 09               [12]  678 	inc	r1
      00056C B9 00 09         [24]  679 	cjne	r1,#0x00,00111$
      00056F 0A               [12]  680 	inc	r2
      000570 BA 00 05         [24]  681 	cjne	r2,#0x00,00111$
      000573 0B               [12]  682 	inc	r3
      000574 BB 00 01         [24]  683 	cjne	r3,#0x00,00111$
      000577 0C               [12]  684 	inc	r4
      000578                        685 00111$:
      000578 8D 82            [24]  686 	mov	dpl,r5
      00057A 8E 83            [24]  687 	mov	dph,r6
      00057C 8F F0            [24]  688 	mov	b,r7
      00057E E9               [12]  689 	mov	a,r1
      00057F 12 2B 0B         [24]  690 	lcall	__gptrput
      000582 A3               [24]  691 	inc	dptr
      000583 EA               [12]  692 	mov	a,r2
      000584 12 2B 0B         [24]  693 	lcall	__gptrput
      000587 A3               [24]  694 	inc	dptr
      000588 EB               [12]  695 	mov	a,r3
      000589 12 2B 0B         [24]  696 	lcall	__gptrput
      00058C A3               [24]  697 	inc	dptr
      00058D EC               [12]  698 	mov	a,r4
                                    699 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:15: }
      00058E 02 2B 0B         [24]  700 	ljmp	__gptrput
      000591                        701 00103$:
      000591 22               [24]  702 	ret
                                    703 ;------------------------------------------------------------
                                    704 ;Allocation info for local variables in function 'FanMonitor_begin'
                                    705 ;------------------------------------------------------------
                                    706 ;sloc0                     Allocated with name '_FanMonitor_begin_sloc0_1_0'
                                    707 ;pin                       Allocated with name '_FanMonitor_begin_PARM_2'
                                    708 ;fm                        Allocated with name '_FanMonitor_begin_fm_65536_178'
                                    709 ;------------------------------------------------------------
                                    710 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:17: void FanMonitor_begin(FanMonitor* fm, uint8_t pin) {
                                    711 ;	-----------------------------------------
                                    712 ;	 function FanMonitor_begin
                                    713 ;	-----------------------------------------
      000592                        714 _FanMonitor_begin:
      000592 AF F0            [24]  715 	mov	r7,b
      000594 AE 83            [24]  716 	mov	r6,dph
      000596 E5 82            [12]  717 	mov	a,dpl
      000598 90 00 BA         [24]  718 	mov	dptr,#_FanMonitor_begin_fm_65536_178
      00059B F0               [24]  719 	movx	@dptr,a
      00059C EE               [12]  720 	mov	a,r6
      00059D A3               [24]  721 	inc	dptr
      00059E F0               [24]  722 	movx	@dptr,a
      00059F EF               [12]  723 	mov	a,r7
      0005A0 A3               [24]  724 	inc	dptr
      0005A1 F0               [24]  725 	movx	@dptr,a
                                    726 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:18: fm->tach_pin = pin;
      0005A2 90 00 BA         [24]  727 	mov	dptr,#_FanMonitor_begin_fm_65536_178
      0005A5 E0               [24]  728 	movx	a,@dptr
      0005A6 FD               [12]  729 	mov	r5,a
      0005A7 A3               [24]  730 	inc	dptr
      0005A8 E0               [24]  731 	movx	a,@dptr
      0005A9 FE               [12]  732 	mov	r6,a
      0005AA A3               [24]  733 	inc	dptr
      0005AB E0               [24]  734 	movx	a,@dptr
      0005AC FF               [12]  735 	mov	r7,a
      0005AD 90 00 B9         [24]  736 	mov	dptr,#_FanMonitor_begin_PARM_2
      0005B0 E0               [24]  737 	movx	a,@dptr
      0005B1 8D 82            [24]  738 	mov	dpl,r5
      0005B3 8E 83            [24]  739 	mov	dph,r6
      0005B5 8F F0            [24]  740 	mov	b,r7
      0005B7 12 2B 0B         [24]  741 	lcall	__gptrput
                                    742 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:19: fm->pulse_count = 0;
      0005BA 74 01            [12]  743 	mov	a,#0x01
      0005BC 2D               [12]  744 	add	a,r5
      0005BD FA               [12]  745 	mov	r2,a
      0005BE E4               [12]  746 	clr	a
      0005BF 3E               [12]  747 	addc	a,r6
      0005C0 FB               [12]  748 	mov	r3,a
      0005C1 8F 04            [24]  749 	mov	ar4,r7
      0005C3 8A 82            [24]  750 	mov	dpl,r2
      0005C5 8B 83            [24]  751 	mov	dph,r3
      0005C7 8C F0            [24]  752 	mov	b,r4
      0005C9 E4               [12]  753 	clr	a
      0005CA 12 2B 0B         [24]  754 	lcall	__gptrput
      0005CD A3               [24]  755 	inc	dptr
      0005CE 12 2B 0B         [24]  756 	lcall	__gptrput
      0005D1 A3               [24]  757 	inc	dptr
      0005D2 12 2B 0B         [24]  758 	lcall	__gptrput
      0005D5 A3               [24]  759 	inc	dptr
      0005D6 12 2B 0B         [24]  760 	lcall	__gptrput
                                    761 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:20: fm->last_rpm = 0;
      0005D9 74 05            [12]  762 	mov	a,#0x05
      0005DB 2D               [12]  763 	add	a,r5
      0005DC FA               [12]  764 	mov	r2,a
      0005DD E4               [12]  765 	clr	a
      0005DE 3E               [12]  766 	addc	a,r6
      0005DF FB               [12]  767 	mov	r3,a
      0005E0 8F 04            [24]  768 	mov	ar4,r7
      0005E2 8A 82            [24]  769 	mov	dpl,r2
      0005E4 8B 83            [24]  770 	mov	dph,r3
      0005E6 8C F0            [24]  771 	mov	b,r4
      0005E8 E4               [12]  772 	clr	a
      0005E9 12 2B 0B         [24]  773 	lcall	__gptrput
      0005EC A3               [24]  774 	inc	dptr
      0005ED 12 2B 0B         [24]  775 	lcall	__gptrput
      0005F0 A3               [24]  776 	inc	dptr
      0005F1 12 2B 0B         [24]  777 	lcall	__gptrput
      0005F4 A3               [24]  778 	inc	dptr
      0005F5 12 2B 0B         [24]  779 	lcall	__gptrput
                                    780 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:21: fm->last_calc_time = millis();
      0005F8 74 09            [12]  781 	mov	a,#0x09
      0005FA 2D               [12]  782 	add	a,r5
      0005FB F5 22            [12]  783 	mov	_FanMonitor_begin_sloc0_1_0,a
      0005FD E4               [12]  784 	clr	a
      0005FE 3E               [12]  785 	addc	a,r6
      0005FF F5 23            [12]  786 	mov	(_FanMonitor_begin_sloc0_1_0 + 1),a
      000601 8F 24            [24]  787 	mov	(_FanMonitor_begin_sloc0_1_0 + 2),r7
      000603 C0 07            [24]  788 	push	ar7
      000605 C0 06            [24]  789 	push	ar6
      000607 C0 05            [24]  790 	push	ar5
      000609 12 23 F7         [24]  791 	lcall	_millis
      00060C A8 82            [24]  792 	mov	r0,dpl
      00060E AB 83            [24]  793 	mov	r3,dph
      000610 A9 F0            [24]  794 	mov	r1,b
      000612 FC               [12]  795 	mov	r4,a
      000613 D0 05            [24]  796 	pop	ar5
      000615 D0 06            [24]  797 	pop	ar6
      000617 D0 07            [24]  798 	pop	ar7
      000619 85 22 82         [24]  799 	mov	dpl,_FanMonitor_begin_sloc0_1_0
      00061C 85 23 83         [24]  800 	mov	dph,(_FanMonitor_begin_sloc0_1_0 + 1)
      00061F 85 24 F0         [24]  801 	mov	b,(_FanMonitor_begin_sloc0_1_0 + 2)
      000622 E8               [12]  802 	mov	a,r0
      000623 12 2B 0B         [24]  803 	lcall	__gptrput
      000626 A3               [24]  804 	inc	dptr
      000627 EB               [12]  805 	mov	a,r3
      000628 12 2B 0B         [24]  806 	lcall	__gptrput
      00062B A3               [24]  807 	inc	dptr
      00062C E9               [12]  808 	mov	a,r1
      00062D 12 2B 0B         [24]  809 	lcall	__gptrput
      000630 A3               [24]  810 	inc	dptr
      000631 EC               [12]  811 	mov	a,r4
      000632 12 2B 0B         [24]  812 	lcall	__gptrput
                                    813 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:22: fm->stall_count = 0;
      000635 74 0D            [12]  814 	mov	a,#0x0d
      000637 2D               [12]  815 	add	a,r5
      000638 FA               [12]  816 	mov	r2,a
      000639 E4               [12]  817 	clr	a
      00063A 3E               [12]  818 	addc	a,r6
      00063B FB               [12]  819 	mov	r3,a
      00063C 8F 04            [24]  820 	mov	ar4,r7
      00063E 8A 82            [24]  821 	mov	dpl,r2
      000640 8B 83            [24]  822 	mov	dph,r3
      000642 8C F0            [24]  823 	mov	b,r4
      000644 E4               [12]  824 	clr	a
      000645 12 2B 0B         [24]  825 	lcall	__gptrput
                                    826 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:23: fm->is_stalled = false;
      000648 74 0E            [12]  827 	mov	a,#0x0e
      00064A 2D               [12]  828 	add	a,r5
      00064B FA               [12]  829 	mov	r2,a
      00064C E4               [12]  830 	clr	a
      00064D 3E               [12]  831 	addc	a,r6
      00064E FB               [12]  832 	mov	r3,a
      00064F 8F 04            [24]  833 	mov	ar4,r7
      000651 8A 82            [24]  834 	mov	dpl,r2
      000653 8B 83            [24]  835 	mov	dph,r3
      000655 8C F0            [24]  836 	mov	b,r4
      000657 E4               [12]  837 	clr	a
      000658 12 2B 0B         [24]  838 	lcall	__gptrput
                                    839 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:26: pinMode(fm->tach_pin, INPUT_PULLUP);
      00065B 8D 82            [24]  840 	mov	dpl,r5
      00065D 8E 83            [24]  841 	mov	dph,r6
      00065F 8F F0            [24]  842 	mov	b,r7
      000661 12 31 2B         [24]  843 	lcall	__gptrget
      000664 FC               [12]  844 	mov	r4,a
      000665 90 01 FD         [24]  845 	mov	dptr,#_pinMode_PARM_2
      000668 74 02            [12]  846 	mov	a,#0x02
      00066A F0               [24]  847 	movx	@dptr,a
      00066B 8C 82            [24]  848 	mov	dpl,r4
      00066D C0 07            [24]  849 	push	ar7
      00066F C0 06            [24]  850 	push	ar6
      000671 C0 05            [24]  851 	push	ar5
      000673 12 21 7E         [24]  852 	lcall	_pinMode
      000676 D0 05            [24]  853 	pop	ar5
      000678 D0 06            [24]  854 	pop	ar6
      00067A D0 07            [24]  855 	pop	ar7
                                    856 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:29: g_fan_monitor_instance = fm;
      00067C 90 02 4A         [24]  857 	mov	dptr,#_g_fan_monitor_instance
      00067F ED               [12]  858 	mov	a,r5
      000680 F0               [24]  859 	movx	@dptr,a
      000681 EE               [12]  860 	mov	a,r6
      000682 A3               [24]  861 	inc	dptr
      000683 F0               [24]  862 	movx	@dptr,a
      000684 EF               [12]  863 	mov	a,r7
      000685 A3               [24]  864 	inc	dptr
      000686 F0               [24]  865 	movx	@dptr,a
                                    866 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:31: attachInterrupt(0, fan_monitor_tachISR, FALLING);
      000687 90 01 FA         [24]  867 	mov	dptr,#_attachInterrupt_PARM_2
      00068A 74 36            [12]  868 	mov	a,#_fan_monitor_tachISR
      00068C F0               [24]  869 	movx	@dptr,a
      00068D 74 05            [12]  870 	mov	a,#(_fan_monitor_tachISR >> 8)
      00068F A3               [24]  871 	inc	dptr
      000690 F0               [24]  872 	movx	@dptr,a
      000691 90 01 FC         [24]  873 	mov	dptr,#_attachInterrupt_PARM_3
      000694 74 01            [12]  874 	mov	a,#0x01
      000696 F0               [24]  875 	movx	@dptr,a
      000697 75 82 00         [24]  876 	mov	dpl,#0x00
                                    877 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:32: }
      00069A 02 1E 52         [24]  878 	ljmp	_attachInterrupt
                                    879 ;------------------------------------------------------------
                                    880 ;Allocation info for local variables in function 'FanMonitor_updateRPM'
                                    881 ;------------------------------------------------------------
                                    882 ;sloc0                     Allocated with name '_FanMonitor_updateRPM_sloc0_1_0'
                                    883 ;sloc1                     Allocated with name '_FanMonitor_updateRPM_sloc1_1_0'
                                    884 ;sloc2                     Allocated with name '_FanMonitor_updateRPM_sloc2_1_0'
                                    885 ;sloc3                     Allocated with name '_FanMonitor_updateRPM_sloc3_1_0'
                                    886 ;sloc4                     Allocated with name '_FanMonitor_updateRPM_sloc4_1_0'
                                    887 ;fm                        Allocated with name '_FanMonitor_updateRPM_fm_65536_180'
                                    888 ;now                       Allocated with name '_FanMonitor_updateRPM_now_65536_181'
                                    889 ;elapsed                   Allocated with name '_FanMonitor_updateRPM_elapsed_65536_181'
                                    890 ;pulses                    Allocated with name '_FanMonitor_updateRPM_pulses_131072_182'
                                    891 ;------------------------------------------------------------
                                    892 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:34: uint32_t FanMonitor_updateRPM(FanMonitor* fm) {
                                    893 ;	-----------------------------------------
                                    894 ;	 function FanMonitor_updateRPM
                                    895 ;	-----------------------------------------
      00069D                        896 _FanMonitor_updateRPM:
      00069D AF F0            [24]  897 	mov	r7,b
      00069F AE 83            [24]  898 	mov	r6,dph
      0006A1 E5 82            [12]  899 	mov	a,dpl
      0006A3 90 00 BD         [24]  900 	mov	dptr,#_FanMonitor_updateRPM_fm_65536_180
      0006A6 F0               [24]  901 	movx	@dptr,a
      0006A7 EE               [12]  902 	mov	a,r6
      0006A8 A3               [24]  903 	inc	dptr
      0006A9 F0               [24]  904 	movx	@dptr,a
      0006AA EF               [12]  905 	mov	a,r7
      0006AB A3               [24]  906 	inc	dptr
      0006AC F0               [24]  907 	movx	@dptr,a
                                    908 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:35: unsigned long now = millis();
      0006AD 12 23 F7         [24]  909 	lcall	_millis
      0006B0 85 82 28         [24]  910 	mov	_FanMonitor_updateRPM_sloc1_1_0,dpl
      0006B3 85 83 29         [24]  911 	mov	(_FanMonitor_updateRPM_sloc1_1_0 + 1),dph
      0006B6 85 F0 2A         [24]  912 	mov	(_FanMonitor_updateRPM_sloc1_1_0 + 2),b
      0006B9 F5 2B            [12]  913 	mov	(_FanMonitor_updateRPM_sloc1_1_0 + 3),a
                                    914 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:36: unsigned long elapsed = now - fm->last_calc_time;
      0006BB 90 00 BD         [24]  915 	mov	dptr,#_FanMonitor_updateRPM_fm_65536_180
      0006BE E0               [24]  916 	movx	a,@dptr
      0006BF F9               [12]  917 	mov	r1,a
      0006C0 A3               [24]  918 	inc	dptr
      0006C1 E0               [24]  919 	movx	a,@dptr
      0006C2 FA               [12]  920 	mov	r2,a
      0006C3 A3               [24]  921 	inc	dptr
      0006C4 E0               [24]  922 	movx	a,@dptr
      0006C5 FB               [12]  923 	mov	r3,a
      0006C6 74 09            [12]  924 	mov	a,#0x09
      0006C8 29               [12]  925 	add	a,r1
      0006C9 F5 25            [12]  926 	mov	_FanMonitor_updateRPM_sloc0_1_0,a
      0006CB E4               [12]  927 	clr	a
      0006CC 3A               [12]  928 	addc	a,r2
      0006CD F5 26            [12]  929 	mov	(_FanMonitor_updateRPM_sloc0_1_0 + 1),a
      0006CF 8B 27            [24]  930 	mov	(_FanMonitor_updateRPM_sloc0_1_0 + 2),r3
      0006D1 85 25 82         [24]  931 	mov	dpl,_FanMonitor_updateRPM_sloc0_1_0
      0006D4 85 26 83         [24]  932 	mov	dph,(_FanMonitor_updateRPM_sloc0_1_0 + 1)
      0006D7 85 27 F0         [24]  933 	mov	b,(_FanMonitor_updateRPM_sloc0_1_0 + 2)
      0006DA 12 31 2B         [24]  934 	lcall	__gptrget
      0006DD F8               [12]  935 	mov	r0,a
      0006DE A3               [24]  936 	inc	dptr
      0006DF 12 31 2B         [24]  937 	lcall	__gptrget
      0006E2 FD               [12]  938 	mov	r5,a
      0006E3 A3               [24]  939 	inc	dptr
      0006E4 12 31 2B         [24]  940 	lcall	__gptrget
      0006E7 FE               [12]  941 	mov	r6,a
      0006E8 A3               [24]  942 	inc	dptr
      0006E9 12 31 2B         [24]  943 	lcall	__gptrget
      0006EC FF               [12]  944 	mov	r7,a
      0006ED E5 28            [12]  945 	mov	a,_FanMonitor_updateRPM_sloc1_1_0
      0006EF C3               [12]  946 	clr	c
      0006F0 98               [12]  947 	subb	a,r0
      0006F1 F5 2C            [12]  948 	mov	_FanMonitor_updateRPM_sloc2_1_0,a
      0006F3 E5 29            [12]  949 	mov	a,(_FanMonitor_updateRPM_sloc1_1_0 + 1)
      0006F5 9D               [12]  950 	subb	a,r5
      0006F6 F5 2D            [12]  951 	mov	(_FanMonitor_updateRPM_sloc2_1_0 + 1),a
      0006F8 E5 2A            [12]  952 	mov	a,(_FanMonitor_updateRPM_sloc1_1_0 + 2)
      0006FA 9E               [12]  953 	subb	a,r6
      0006FB F5 2E            [12]  954 	mov	(_FanMonitor_updateRPM_sloc2_1_0 + 2),a
      0006FD E5 2B            [12]  955 	mov	a,(_FanMonitor_updateRPM_sloc1_1_0 + 3)
      0006FF 9F               [12]  956 	subb	a,r7
      000700 F5 2F            [12]  957 	mov	(_FanMonitor_updateRPM_sloc2_1_0 + 3),a
                                    958 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:39: if (elapsed >= 1000) {
      000702 C3               [12]  959 	clr	c
      000703 E5 2C            [12]  960 	mov	a,_FanMonitor_updateRPM_sloc2_1_0
      000705 94 E8            [12]  961 	subb	a,#0xe8
      000707 E5 2D            [12]  962 	mov	a,(_FanMonitor_updateRPM_sloc2_1_0 + 1)
      000709 94 03            [12]  963 	subb	a,#0x03
      00070B E5 2E            [12]  964 	mov	a,(_FanMonitor_updateRPM_sloc2_1_0 + 2)
      00070D 94 00            [12]  965 	subb	a,#0x00
      00070F E5 2F            [12]  966 	mov	a,(_FanMonitor_updateRPM_sloc2_1_0 + 3)
      000711 94 00            [12]  967 	subb	a,#0x00
      000713 50 03            [24]  968 	jnc	00122$
      000715 02 08 81         [24]  969 	ljmp	00107$
      000718                        970 00122$:
                                    971 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:40: uint32_t pulses = fm->pulse_count;
      000718 74 01            [12]  972 	mov	a,#0x01
      00071A 29               [12]  973 	add	a,r1
      00071B F5 30            [12]  974 	mov	_FanMonitor_updateRPM_sloc3_1_0,a
      00071D E4               [12]  975 	clr	a
      00071E 3A               [12]  976 	addc	a,r2
      00071F F5 31            [12]  977 	mov	(_FanMonitor_updateRPM_sloc3_1_0 + 1),a
      000721 8B 32            [24]  978 	mov	(_FanMonitor_updateRPM_sloc3_1_0 + 2),r3
      000723 85 30 82         [24]  979 	mov	dpl,_FanMonitor_updateRPM_sloc3_1_0
      000726 85 31 83         [24]  980 	mov	dph,(_FanMonitor_updateRPM_sloc3_1_0 + 1)
      000729 85 32 F0         [24]  981 	mov	b,(_FanMonitor_updateRPM_sloc3_1_0 + 2)
      00072C 12 31 2B         [24]  982 	lcall	__gptrget
      00072F F5 33            [12]  983 	mov	_FanMonitor_updateRPM_sloc4_1_0,a
      000731 A3               [24]  984 	inc	dptr
      000732 12 31 2B         [24]  985 	lcall	__gptrget
      000735 F5 34            [12]  986 	mov	(_FanMonitor_updateRPM_sloc4_1_0 + 1),a
      000737 A3               [24]  987 	inc	dptr
      000738 12 31 2B         [24]  988 	lcall	__gptrget
      00073B F5 35            [12]  989 	mov	(_FanMonitor_updateRPM_sloc4_1_0 + 2),a
      00073D A3               [24]  990 	inc	dptr
      00073E 12 31 2B         [24]  991 	lcall	__gptrget
      000741 F5 36            [12]  992 	mov	(_FanMonitor_updateRPM_sloc4_1_0 + 3),a
                                    993 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:41: fm->pulse_count = 0;
      000743 85 30 82         [24]  994 	mov	dpl,_FanMonitor_updateRPM_sloc3_1_0
      000746 85 31 83         [24]  995 	mov	dph,(_FanMonitor_updateRPM_sloc3_1_0 + 1)
      000749 85 32 F0         [24]  996 	mov	b,(_FanMonitor_updateRPM_sloc3_1_0 + 2)
      00074C E4               [12]  997 	clr	a
      00074D 12 2B 0B         [24]  998 	lcall	__gptrput
      000750 A3               [24]  999 	inc	dptr
      000751 12 2B 0B         [24] 1000 	lcall	__gptrput
      000754 A3               [24] 1001 	inc	dptr
      000755 12 2B 0B         [24] 1002 	lcall	__gptrput
      000758 A3               [24] 1003 	inc	dptr
      000759 12 2B 0B         [24] 1004 	lcall	__gptrput
                                   1005 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:46: fm->last_rpm = (pulses * 60000) / (elapsed * 2);
      00075C 74 05            [12] 1006 	mov	a,#0x05
      00075E 29               [12] 1007 	add	a,r1
      00075F F5 30            [12] 1008 	mov	_FanMonitor_updateRPM_sloc3_1_0,a
      000761 E4               [12] 1009 	clr	a
      000762 3A               [12] 1010 	addc	a,r2
      000763 F5 31            [12] 1011 	mov	(_FanMonitor_updateRPM_sloc3_1_0 + 1),a
      000765 8B 32            [24] 1012 	mov	(_FanMonitor_updateRPM_sloc3_1_0 + 2),r3
      000767 C0 03            [24] 1013 	push	ar3
      000769 C0 02            [24] 1014 	push	ar2
      00076B C0 01            [24] 1015 	push	ar1
      00076D C0 33            [24] 1016 	push	_FanMonitor_updateRPM_sloc4_1_0
      00076F C0 34            [24] 1017 	push	(_FanMonitor_updateRPM_sloc4_1_0 + 1)
      000771 C0 35            [24] 1018 	push	(_FanMonitor_updateRPM_sloc4_1_0 + 2)
      000773 C0 36            [24] 1019 	push	(_FanMonitor_updateRPM_sloc4_1_0 + 3)
      000775 90 EA 60         [24] 1020 	mov	dptr,#0xea60
      000778 E4               [12] 1021 	clr	a
      000779 F5 F0            [12] 1022 	mov	b,a
      00077B 12 31 47         [24] 1023 	lcall	__mullong
      00077E AC 82            [24] 1024 	mov	r4,dpl
      000780 AD 83            [24] 1025 	mov	r5,dph
      000782 AE F0            [24] 1026 	mov	r6,b
      000784 FF               [12] 1027 	mov	r7,a
      000785 E5 81            [12] 1028 	mov	a,sp
      000787 24 FC            [12] 1029 	add	a,#0xfc
      000789 F5 81            [12] 1030 	mov	sp,a
      00078B D0 01            [24] 1031 	pop	ar1
      00078D D0 02            [24] 1032 	pop	ar2
      00078F D0 03            [24] 1033 	pop	ar3
      000791 C0 01            [24] 1034 	push	ar1
      000793 C0 02            [24] 1035 	push	ar2
      000795 C0 03            [24] 1036 	push	ar3
      000797 E5 2C            [12] 1037 	mov	a,_FanMonitor_updateRPM_sloc2_1_0
      000799 25 2C            [12] 1038 	add	a,_FanMonitor_updateRPM_sloc2_1_0
      00079B F8               [12] 1039 	mov	r0,a
      00079C E5 2D            [12] 1040 	mov	a,(_FanMonitor_updateRPM_sloc2_1_0 + 1)
      00079E 33               [12] 1041 	rlc	a
      00079F F9               [12] 1042 	mov	r1,a
      0007A0 E5 2E            [12] 1043 	mov	a,(_FanMonitor_updateRPM_sloc2_1_0 + 2)
      0007A2 33               [12] 1044 	rlc	a
      0007A3 FA               [12] 1045 	mov	r2,a
      0007A4 E5 2F            [12] 1046 	mov	a,(_FanMonitor_updateRPM_sloc2_1_0 + 3)
      0007A6 33               [12] 1047 	rlc	a
      0007A7 FB               [12] 1048 	mov	r3,a
      0007A8 C0 03            [24] 1049 	push	ar3
      0007AA C0 02            [24] 1050 	push	ar2
      0007AC C0 01            [24] 1051 	push	ar1
      0007AE C0 00            [24] 1052 	push	ar0
      0007B0 C0 01            [24] 1053 	push	ar1
      0007B2 C0 02            [24] 1054 	push	ar2
      0007B4 C0 03            [24] 1055 	push	ar3
      0007B6 8C 82            [24] 1056 	mov	dpl,r4
      0007B8 8D 83            [24] 1057 	mov	dph,r5
      0007BA 8E F0            [24] 1058 	mov	b,r6
      0007BC EF               [12] 1059 	mov	a,r7
      0007BD 12 2F 60         [24] 1060 	lcall	__divulong
      0007C0 AC 82            [24] 1061 	mov	r4,dpl
      0007C2 AE 83            [24] 1062 	mov	r6,dph
      0007C4 AD F0            [24] 1063 	mov	r5,b
      0007C6 FF               [12] 1064 	mov	r7,a
      0007C7 E5 81            [12] 1065 	mov	a,sp
      0007C9 24 FC            [12] 1066 	add	a,#0xfc
      0007CB F5 81            [12] 1067 	mov	sp,a
      0007CD D0 01            [24] 1068 	pop	ar1
      0007CF D0 02            [24] 1069 	pop	ar2
      0007D1 D0 03            [24] 1070 	pop	ar3
      0007D3 85 30 82         [24] 1071 	mov	dpl,_FanMonitor_updateRPM_sloc3_1_0
      0007D6 85 31 83         [24] 1072 	mov	dph,(_FanMonitor_updateRPM_sloc3_1_0 + 1)
      0007D9 85 32 F0         [24] 1073 	mov	b,(_FanMonitor_updateRPM_sloc3_1_0 + 2)
      0007DC EC               [12] 1074 	mov	a,r4
      0007DD 12 2B 0B         [24] 1075 	lcall	__gptrput
      0007E0 A3               [24] 1076 	inc	dptr
      0007E1 EE               [12] 1077 	mov	a,r6
      0007E2 12 2B 0B         [24] 1078 	lcall	__gptrput
      0007E5 A3               [24] 1079 	inc	dptr
      0007E6 ED               [12] 1080 	mov	a,r5
      0007E7 12 2B 0B         [24] 1081 	lcall	__gptrput
      0007EA A3               [24] 1082 	inc	dptr
      0007EB EF               [12] 1083 	mov	a,r7
      0007EC 12 2B 0B         [24] 1084 	lcall	__gptrput
                                   1085 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:47: fm->last_calc_time = now;
      0007EF 85 25 82         [24] 1086 	mov	dpl,_FanMonitor_updateRPM_sloc0_1_0
      0007F2 85 26 83         [24] 1087 	mov	dph,(_FanMonitor_updateRPM_sloc0_1_0 + 1)
      0007F5 85 27 F0         [24] 1088 	mov	b,(_FanMonitor_updateRPM_sloc0_1_0 + 2)
      0007F8 E5 28            [12] 1089 	mov	a,_FanMonitor_updateRPM_sloc1_1_0
      0007FA 12 2B 0B         [24] 1090 	lcall	__gptrput
      0007FD A3               [24] 1091 	inc	dptr
      0007FE E5 29            [12] 1092 	mov	a,(_FanMonitor_updateRPM_sloc1_1_0 + 1)
      000800 12 2B 0B         [24] 1093 	lcall	__gptrput
      000803 A3               [24] 1094 	inc	dptr
      000804 E5 2A            [12] 1095 	mov	a,(_FanMonitor_updateRPM_sloc1_1_0 + 2)
      000806 12 2B 0B         [24] 1096 	lcall	__gptrput
      000809 A3               [24] 1097 	inc	dptr
      00080A E5 2B            [12] 1098 	mov	a,(_FanMonitor_updateRPM_sloc1_1_0 + 3)
      00080C 12 2B 0B         [24] 1099 	lcall	__gptrput
                                   1100 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:50: if (fm->last_rpm < RPM_STALL_THRESH) {
      00080F C3               [12] 1101 	clr	c
      000810 EC               [12] 1102 	mov	a,r4
      000811 94 C8            [12] 1103 	subb	a,#0xc8
      000813 EE               [12] 1104 	mov	a,r6
      000814 94 00            [12] 1105 	subb	a,#0x00
      000816 ED               [12] 1106 	mov	a,r5
      000817 94 00            [12] 1107 	subb	a,#0x00
      000819 EF               [12] 1108 	mov	a,r7
      00081A 94 00            [12] 1109 	subb	a,#0x00
      00081C D0 03            [24] 1110 	pop	ar3
      00081E D0 02            [24] 1111 	pop	ar2
      000820 D0 01            [24] 1112 	pop	ar1
      000822 50 39            [24] 1113 	jnc	00104$
                                   1114 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:51: fm->stall_count++;
      000824 74 0D            [12] 1115 	mov	a,#0x0d
      000826 29               [12] 1116 	add	a,r1
      000827 FD               [12] 1117 	mov	r5,a
      000828 E4               [12] 1118 	clr	a
      000829 3A               [12] 1119 	addc	a,r2
      00082A FE               [12] 1120 	mov	r6,a
      00082B 8B 07            [24] 1121 	mov	ar7,r3
      00082D 8D 82            [24] 1122 	mov	dpl,r5
      00082F 8E 83            [24] 1123 	mov	dph,r6
      000831 8F F0            [24] 1124 	mov	b,r7
      000833 12 31 2B         [24] 1125 	lcall	__gptrget
      000836 FC               [12] 1126 	mov	r4,a
      000837 0C               [12] 1127 	inc	r4
      000838 8D 82            [24] 1128 	mov	dpl,r5
      00083A 8E 83            [24] 1129 	mov	dph,r6
      00083C 8F F0            [24] 1130 	mov	b,r7
      00083E EC               [12] 1131 	mov	a,r4
      00083F 12 2B 0B         [24] 1132 	lcall	__gptrput
                                   1133 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:52: if (fm->stall_count >= 2) {
      000842 BC 02 00         [24] 1134 	cjne	r4,#0x02,00124$
      000845                       1135 00124$:
      000845 40 3A            [24] 1136 	jc	00107$
                                   1137 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:53: fm->is_stalled = true;
      000847 74 0E            [12] 1138 	mov	a,#0x0e
      000849 29               [12] 1139 	add	a,r1
      00084A FD               [12] 1140 	mov	r5,a
      00084B E4               [12] 1141 	clr	a
      00084C 3A               [12] 1142 	addc	a,r2
      00084D FE               [12] 1143 	mov	r6,a
      00084E 8B 07            [24] 1144 	mov	ar7,r3
      000850 8D 82            [24] 1145 	mov	dpl,r5
      000852 8E 83            [24] 1146 	mov	dph,r6
      000854 8F F0            [24] 1147 	mov	b,r7
      000856 74 01            [12] 1148 	mov	a,#0x01
      000858 12 2B 0B         [24] 1149 	lcall	__gptrput
      00085B 80 24            [24] 1150 	sjmp	00107$
      00085D                       1151 00104$:
                                   1152 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:56: fm->stall_count = 0;
      00085D 74 0D            [12] 1153 	mov	a,#0x0d
      00085F 29               [12] 1154 	add	a,r1
      000860 FD               [12] 1155 	mov	r5,a
      000861 E4               [12] 1156 	clr	a
      000862 3A               [12] 1157 	addc	a,r2
      000863 FE               [12] 1158 	mov	r6,a
      000864 8B 07            [24] 1159 	mov	ar7,r3
      000866 8D 82            [24] 1160 	mov	dpl,r5
      000868 8E 83            [24] 1161 	mov	dph,r6
      00086A 8F F0            [24] 1162 	mov	b,r7
      00086C E4               [12] 1163 	clr	a
      00086D 12 2B 0B         [24] 1164 	lcall	__gptrput
                                   1165 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:57: fm->is_stalled = false;
      000870 74 0E            [12] 1166 	mov	a,#0x0e
      000872 29               [12] 1167 	add	a,r1
      000873 F9               [12] 1168 	mov	r1,a
      000874 E4               [12] 1169 	clr	a
      000875 3A               [12] 1170 	addc	a,r2
      000876 FA               [12] 1171 	mov	r2,a
      000877 89 82            [24] 1172 	mov	dpl,r1
      000879 8A 83            [24] 1173 	mov	dph,r2
      00087B 8B F0            [24] 1174 	mov	b,r3
      00087D E4               [12] 1175 	clr	a
      00087E 12 2B 0B         [24] 1176 	lcall	__gptrput
      000881                       1177 00107$:
                                   1178 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:61: return fm->last_rpm;
      000881 90 00 BD         [24] 1179 	mov	dptr,#_FanMonitor_updateRPM_fm_65536_180
      000884 E0               [24] 1180 	movx	a,@dptr
      000885 FD               [12] 1181 	mov	r5,a
      000886 A3               [24] 1182 	inc	dptr
      000887 E0               [24] 1183 	movx	a,@dptr
      000888 FE               [12] 1184 	mov	r6,a
      000889 A3               [24] 1185 	inc	dptr
      00088A E0               [24] 1186 	movx	a,@dptr
      00088B FF               [12] 1187 	mov	r7,a
      00088C 74 05            [12] 1188 	mov	a,#0x05
      00088E 2D               [12] 1189 	add	a,r5
      00088F FD               [12] 1190 	mov	r5,a
      000890 E4               [12] 1191 	clr	a
      000891 3E               [12] 1192 	addc	a,r6
      000892 FE               [12] 1193 	mov	r6,a
      000893 8D 82            [24] 1194 	mov	dpl,r5
      000895 8E 83            [24] 1195 	mov	dph,r6
      000897 8F F0            [24] 1196 	mov	b,r7
      000899 12 31 2B         [24] 1197 	lcall	__gptrget
      00089C FD               [12] 1198 	mov	r5,a
      00089D A3               [24] 1199 	inc	dptr
      00089E 12 31 2B         [24] 1200 	lcall	__gptrget
      0008A1 FE               [12] 1201 	mov	r6,a
      0008A2 A3               [24] 1202 	inc	dptr
      0008A3 12 31 2B         [24] 1203 	lcall	__gptrget
      0008A6 FF               [12] 1204 	mov	r7,a
      0008A7 A3               [24] 1205 	inc	dptr
      0008A8 12 31 2B         [24] 1206 	lcall	__gptrget
      0008AB 8D 82            [24] 1207 	mov	dpl,r5
      0008AD 8E 83            [24] 1208 	mov	dph,r6
      0008AF 8F F0            [24] 1209 	mov	b,r7
                                   1210 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:62: }
      0008B1 22               [24] 1211 	ret
                                   1212 ;------------------------------------------------------------
                                   1213 ;Allocation info for local variables in function 'FanMonitor_getRPM'
                                   1214 ;------------------------------------------------------------
                                   1215 ;fm                        Allocated with name '_FanMonitor_getRPM_fm_65536_186'
                                   1216 ;------------------------------------------------------------
                                   1217 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:64: uint32_t FanMonitor_getRPM(const FanMonitor* fm) {
                                   1218 ;	-----------------------------------------
                                   1219 ;	 function FanMonitor_getRPM
                                   1220 ;	-----------------------------------------
      0008B2                       1221 _FanMonitor_getRPM:
      0008B2 AF F0            [24] 1222 	mov	r7,b
      0008B4 AE 83            [24] 1223 	mov	r6,dph
      0008B6 E5 82            [12] 1224 	mov	a,dpl
      0008B8 90 00 C0         [24] 1225 	mov	dptr,#_FanMonitor_getRPM_fm_65536_186
      0008BB F0               [24] 1226 	movx	@dptr,a
      0008BC EE               [12] 1227 	mov	a,r6
      0008BD A3               [24] 1228 	inc	dptr
      0008BE F0               [24] 1229 	movx	@dptr,a
      0008BF EF               [12] 1230 	mov	a,r7
      0008C0 A3               [24] 1231 	inc	dptr
      0008C1 F0               [24] 1232 	movx	@dptr,a
                                   1233 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:65: return fm->last_rpm;
      0008C2 90 00 C0         [24] 1234 	mov	dptr,#_FanMonitor_getRPM_fm_65536_186
      0008C5 E0               [24] 1235 	movx	a,@dptr
      0008C6 FD               [12] 1236 	mov	r5,a
      0008C7 A3               [24] 1237 	inc	dptr
      0008C8 E0               [24] 1238 	movx	a,@dptr
      0008C9 FE               [12] 1239 	mov	r6,a
      0008CA A3               [24] 1240 	inc	dptr
      0008CB E0               [24] 1241 	movx	a,@dptr
      0008CC FF               [12] 1242 	mov	r7,a
      0008CD 74 05            [12] 1243 	mov	a,#0x05
      0008CF 2D               [12] 1244 	add	a,r5
      0008D0 FD               [12] 1245 	mov	r5,a
      0008D1 E4               [12] 1246 	clr	a
      0008D2 3E               [12] 1247 	addc	a,r6
      0008D3 FE               [12] 1248 	mov	r6,a
      0008D4 8D 82            [24] 1249 	mov	dpl,r5
      0008D6 8E 83            [24] 1250 	mov	dph,r6
      0008D8 8F F0            [24] 1251 	mov	b,r7
      0008DA 12 31 2B         [24] 1252 	lcall	__gptrget
      0008DD FD               [12] 1253 	mov	r5,a
      0008DE A3               [24] 1254 	inc	dptr
      0008DF 12 31 2B         [24] 1255 	lcall	__gptrget
      0008E2 FE               [12] 1256 	mov	r6,a
      0008E3 A3               [24] 1257 	inc	dptr
      0008E4 12 31 2B         [24] 1258 	lcall	__gptrget
      0008E7 FF               [12] 1259 	mov	r7,a
      0008E8 A3               [24] 1260 	inc	dptr
      0008E9 12 31 2B         [24] 1261 	lcall	__gptrget
      0008EC 8D 82            [24] 1262 	mov	dpl,r5
      0008EE 8E 83            [24] 1263 	mov	dph,r6
      0008F0 8F F0            [24] 1264 	mov	b,r7
                                   1265 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:66: }
      0008F2 22               [24] 1266 	ret
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'FanMonitor_isStalled'
                                   1269 ;------------------------------------------------------------
                                   1270 ;fm                        Allocated with name '_FanMonitor_isStalled_fm_65536_188'
                                   1271 ;------------------------------------------------------------
                                   1272 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:68: bool FanMonitor_isStalled(const FanMonitor* fm) {
                                   1273 ;	-----------------------------------------
                                   1274 ;	 function FanMonitor_isStalled
                                   1275 ;	-----------------------------------------
      0008F3                       1276 _FanMonitor_isStalled:
      0008F3 AF F0            [24] 1277 	mov	r7,b
      0008F5 AE 83            [24] 1278 	mov	r6,dph
      0008F7 E5 82            [12] 1279 	mov	a,dpl
      0008F9 90 00 C3         [24] 1280 	mov	dptr,#_FanMonitor_isStalled_fm_65536_188
      0008FC F0               [24] 1281 	movx	@dptr,a
      0008FD EE               [12] 1282 	mov	a,r6
      0008FE A3               [24] 1283 	inc	dptr
      0008FF F0               [24] 1284 	movx	@dptr,a
      000900 EF               [12] 1285 	mov	a,r7
      000901 A3               [24] 1286 	inc	dptr
      000902 F0               [24] 1287 	movx	@dptr,a
                                   1288 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:69: return fm->is_stalled;
      000903 90 00 C3         [24] 1289 	mov	dptr,#_FanMonitor_isStalled_fm_65536_188
      000906 E0               [24] 1290 	movx	a,@dptr
      000907 FD               [12] 1291 	mov	r5,a
      000908 A3               [24] 1292 	inc	dptr
      000909 E0               [24] 1293 	movx	a,@dptr
      00090A FE               [12] 1294 	mov	r6,a
      00090B A3               [24] 1295 	inc	dptr
      00090C E0               [24] 1296 	movx	a,@dptr
      00090D FF               [12] 1297 	mov	r7,a
      00090E 74 0E            [12] 1298 	mov	a,#0x0e
      000910 2D               [12] 1299 	add	a,r5
      000911 FD               [12] 1300 	mov	r5,a
      000912 E4               [12] 1301 	clr	a
      000913 3E               [12] 1302 	addc	a,r6
      000914 FE               [12] 1303 	mov	r6,a
      000915 8D 82            [24] 1304 	mov	dpl,r5
      000917 8E 83            [24] 1305 	mov	dph,r6
      000919 8F F0            [24] 1306 	mov	b,r7
      00091B 12 31 2B         [24] 1307 	lcall	__gptrget
                                   1308 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:70: }
      00091E F5 82            [12] 1309 	mov	dpl,a
      000920 22               [24] 1310 	ret
                                   1311 ;------------------------------------------------------------
                                   1312 ;Allocation info for local variables in function 'FanMonitor_resetStall'
                                   1313 ;------------------------------------------------------------
                                   1314 ;fm                        Allocated with name '_FanMonitor_resetStall_fm_65536_190'
                                   1315 ;------------------------------------------------------------
                                   1316 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:72: void FanMonitor_resetStall(FanMonitor* fm) {
                                   1317 ;	-----------------------------------------
                                   1318 ;	 function FanMonitor_resetStall
                                   1319 ;	-----------------------------------------
      000921                       1320 _FanMonitor_resetStall:
      000921 AF F0            [24] 1321 	mov	r7,b
      000923 AE 83            [24] 1322 	mov	r6,dph
      000925 E5 82            [12] 1323 	mov	a,dpl
      000927 90 00 C6         [24] 1324 	mov	dptr,#_FanMonitor_resetStall_fm_65536_190
      00092A F0               [24] 1325 	movx	@dptr,a
      00092B EE               [12] 1326 	mov	a,r6
      00092C A3               [24] 1327 	inc	dptr
      00092D F0               [24] 1328 	movx	@dptr,a
      00092E EF               [12] 1329 	mov	a,r7
      00092F A3               [24] 1330 	inc	dptr
      000930 F0               [24] 1331 	movx	@dptr,a
                                   1332 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:73: fm->is_stalled = false;
      000931 90 00 C6         [24] 1333 	mov	dptr,#_FanMonitor_resetStall_fm_65536_190
      000934 E0               [24] 1334 	movx	a,@dptr
      000935 FD               [12] 1335 	mov	r5,a
      000936 A3               [24] 1336 	inc	dptr
      000937 E0               [24] 1337 	movx	a,@dptr
      000938 FE               [12] 1338 	mov	r6,a
      000939 A3               [24] 1339 	inc	dptr
      00093A E0               [24] 1340 	movx	a,@dptr
      00093B FF               [12] 1341 	mov	r7,a
      00093C 74 0E            [12] 1342 	mov	a,#0x0e
      00093E 2D               [12] 1343 	add	a,r5
      00093F FA               [12] 1344 	mov	r2,a
      000940 E4               [12] 1345 	clr	a
      000941 3E               [12] 1346 	addc	a,r6
      000942 FB               [12] 1347 	mov	r3,a
      000943 8F 04            [24] 1348 	mov	ar4,r7
      000945 8A 82            [24] 1349 	mov	dpl,r2
      000947 8B 83            [24] 1350 	mov	dph,r3
      000949 8C F0            [24] 1351 	mov	b,r4
      00094B E4               [12] 1352 	clr	a
      00094C 12 2B 0B         [24] 1353 	lcall	__gptrput
                                   1354 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:74: fm->stall_count = 0;
      00094F 74 0D            [12] 1355 	mov	a,#0x0d
      000951 2D               [12] 1356 	add	a,r5
      000952 FD               [12] 1357 	mov	r5,a
      000953 E4               [12] 1358 	clr	a
      000954 3E               [12] 1359 	addc	a,r6
      000955 FE               [12] 1360 	mov	r6,a
      000956 8D 82            [24] 1361 	mov	dpl,r5
      000958 8E 83            [24] 1362 	mov	dph,r6
      00095A 8F F0            [24] 1363 	mov	b,r7
      00095C E4               [12] 1364 	clr	a
                                   1365 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:75: }
      00095D 02 2B 0B         [24] 1366 	ljmp	__gptrput
                                   1367 ;------------------------------------------------------------
                                   1368 ;Allocation info for local variables in function 'FanMonitor_getStallCount'
                                   1369 ;------------------------------------------------------------
                                   1370 ;fm                        Allocated with name '_FanMonitor_getStallCount_fm_65536_192'
                                   1371 ;------------------------------------------------------------
                                   1372 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:77: uint8_t FanMonitor_getStallCount(const FanMonitor* fm) {
                                   1373 ;	-----------------------------------------
                                   1374 ;	 function FanMonitor_getStallCount
                                   1375 ;	-----------------------------------------
      000960                       1376 _FanMonitor_getStallCount:
      000960 AF F0            [24] 1377 	mov	r7,b
      000962 AE 83            [24] 1378 	mov	r6,dph
      000964 E5 82            [12] 1379 	mov	a,dpl
      000966 90 00 C9         [24] 1380 	mov	dptr,#_FanMonitor_getStallCount_fm_65536_192
      000969 F0               [24] 1381 	movx	@dptr,a
      00096A EE               [12] 1382 	mov	a,r6
      00096B A3               [24] 1383 	inc	dptr
      00096C F0               [24] 1384 	movx	@dptr,a
      00096D EF               [12] 1385 	mov	a,r7
      00096E A3               [24] 1386 	inc	dptr
      00096F F0               [24] 1387 	movx	@dptr,a
                                   1388 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:78: return fm->stall_count;
      000970 90 00 C9         [24] 1389 	mov	dptr,#_FanMonitor_getStallCount_fm_65536_192
      000973 E0               [24] 1390 	movx	a,@dptr
      000974 FD               [12] 1391 	mov	r5,a
      000975 A3               [24] 1392 	inc	dptr
      000976 E0               [24] 1393 	movx	a,@dptr
      000977 FE               [12] 1394 	mov	r6,a
      000978 A3               [24] 1395 	inc	dptr
      000979 E0               [24] 1396 	movx	a,@dptr
      00097A FF               [12] 1397 	mov	r7,a
      00097B 74 0D            [12] 1398 	mov	a,#0x0d
      00097D 2D               [12] 1399 	add	a,r5
      00097E FD               [12] 1400 	mov	r5,a
      00097F E4               [12] 1401 	clr	a
      000980 3E               [12] 1402 	addc	a,r6
      000981 FE               [12] 1403 	mov	r6,a
      000982 8D 82            [24] 1404 	mov	dpl,r5
      000984 8E 83            [24] 1405 	mov	dph,r6
      000986 8F F0            [24] 1406 	mov	b,r7
      000988 12 31 2B         [24] 1407 	lcall	__gptrget
                                   1408 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\fan_monitor.c:79: }
      00098B F5 82            [12] 1409 	mov	dpl,a
      00098D 22               [24] 1410 	ret
                                   1411 	.area CSEG    (CODE)
                                   1412 	.area CONST   (CODE)
                                   1413 	.area XINIT   (CODE)
      0036E0                       1414 __xinit__g_fan_monitor_instance:
                                   1415 ; generic printIvalPtr
      0036E0 00 00 00              1416 	.byte #0x00,#0x00,#0x00
                                   1417 	.area CABS    (ABS,CODE)
