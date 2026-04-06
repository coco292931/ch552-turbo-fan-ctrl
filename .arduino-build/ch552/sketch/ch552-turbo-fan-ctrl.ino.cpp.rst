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
                                     20 	.globl _ADC_CHAN0
                                     21 	.globl _ADC_CHAN1
                                     22 	.globl _CMP_CHAN
                                     23 	.globl _ADC_START
                                     24 	.globl _ADC_IF
                                     25 	.globl _CMP_IF
                                     26 	.globl _CMPO
                                     27 	.globl _U1RI
                                     28 	.globl _U1TI
                                     29 	.globl _U1RB8
                                     30 	.globl _U1TB8
                                     31 	.globl _U1REN
                                     32 	.globl _U1SMOD
                                     33 	.globl _U1SM0
                                     34 	.globl _S0_R_FIFO
                                     35 	.globl _S0_T_FIFO
                                     36 	.globl _S0_FREE
                                     37 	.globl _S0_IF_BYTE
                                     38 	.globl _S0_IF_FIRST
                                     39 	.globl _S0_IF_OV
                                     40 	.globl _S0_FST_ACT
                                     41 	.globl _CP_RL2
                                     42 	.globl _C_T2
                                     43 	.globl _TR2
                                     44 	.globl _EXEN2
                                     45 	.globl _TCLK
                                     46 	.globl _RCLK
                                     47 	.globl _EXF2
                                     48 	.globl _CAP1F
                                     49 	.globl _TF2
                                     50 	.globl _RI
                                     51 	.globl _TI
                                     52 	.globl _RB8
                                     53 	.globl _TB8
                                     54 	.globl _REN
                                     55 	.globl _SM2
                                     56 	.globl _SM1
                                     57 	.globl _SM0
                                     58 	.globl _IT0
                                     59 	.globl _IE0
                                     60 	.globl _IT1
                                     61 	.globl _IE1
                                     62 	.globl _TR0
                                     63 	.globl _TF0
                                     64 	.globl _TR1
                                     65 	.globl _TF1
                                     66 	.globl _P3_0
                                     67 	.globl _P3_1
                                     68 	.globl _P3_2
                                     69 	.globl _P3_3
                                     70 	.globl _P3_4
                                     71 	.globl _P3_5
                                     72 	.globl _P3_6
                                     73 	.globl _P3_7
                                     74 	.globl _RXD
                                     75 	.globl _PWM1_
                                     76 	.globl _TXD
                                     77 	.globl _PWM2_
                                     78 	.globl _AIN3
                                     79 	.globl _VBUS1
                                     80 	.globl _INT0
                                     81 	.globl _TXD1_
                                     82 	.globl _INT1
                                     83 	.globl _T0
                                     84 	.globl _RXD1_
                                     85 	.globl _PWM2
                                     86 	.globl _T1
                                     87 	.globl _UDP
                                     88 	.globl _UDM
                                     89 	.globl _P1_0
                                     90 	.globl _P1_1
                                     91 	.globl _P1_2
                                     92 	.globl _P1_3
                                     93 	.globl _P1_4
                                     94 	.globl _P1_5
                                     95 	.globl _P1_6
                                     96 	.globl _P1_7
                                     97 	.globl _TIN0
                                     98 	.globl _CAP1
                                     99 	.globl _T2
                                    100 	.globl _AIN0
                                    101 	.globl _VBUS2
                                    102 	.globl _TIN1
                                    103 	.globl _CAP2
                                    104 	.globl _T2EX
                                    105 	.globl _RXD_
                                    106 	.globl _TXD_
                                    107 	.globl _AIN1
                                    108 	.globl _UCC1
                                    109 	.globl _TIN2
                                    110 	.globl _SCS
                                    111 	.globl _CAP1_
                                    112 	.globl _T2_
                                    113 	.globl _AIN2
                                    114 	.globl _UCC2
                                    115 	.globl _TIN3
                                    116 	.globl _PWM1
                                    117 	.globl _MOSI
                                    118 	.globl _TIN4
                                    119 	.globl _RXD1
                                    120 	.globl _MISO
                                    121 	.globl _TIN5
                                    122 	.globl _TXD1
                                    123 	.globl _SCK
                                    124 	.globl _IE_SPI0
                                    125 	.globl _IE_TKEY
                                    126 	.globl _IE_USB
                                    127 	.globl _IE_ADC
                                    128 	.globl _IE_UART1
                                    129 	.globl _IE_PWMX
                                    130 	.globl _IE_GPIO
                                    131 	.globl _IE_WDOG
                                    132 	.globl _PX0
                                    133 	.globl _PT0
                                    134 	.globl _PX1
                                    135 	.globl _PT1
                                    136 	.globl _PS
                                    137 	.globl _PT2
                                    138 	.globl _PL_FLAG
                                    139 	.globl _PH_FLAG
                                    140 	.globl _EX0
                                    141 	.globl _ET0
                                    142 	.globl _EX1
                                    143 	.globl _ET1
                                    144 	.globl _ES
                                    145 	.globl _ET2
                                    146 	.globl _E_DIS
                                    147 	.globl _EA
                                    148 	.globl _P
                                    149 	.globl _F1
                                    150 	.globl _OV
                                    151 	.globl _RS0
                                    152 	.globl _RS1
                                    153 	.globl _F0
                                    154 	.globl _AC
                                    155 	.globl _CY
                                    156 	.globl _UEP1_DMA_H
                                    157 	.globl _UEP1_DMA_L
                                    158 	.globl _UEP1_DMA
                                    159 	.globl _UEP0_DMA_H
                                    160 	.globl _UEP0_DMA_L
                                    161 	.globl _UEP0_DMA
                                    162 	.globl _UEP2_3_MOD
                                    163 	.globl _UEP4_1_MOD
                                    164 	.globl _UEP3_DMA_H
                                    165 	.globl _UEP3_DMA_L
                                    166 	.globl _UEP3_DMA
                                    167 	.globl _UEP2_DMA_H
                                    168 	.globl _UEP2_DMA_L
                                    169 	.globl _UEP2_DMA
                                    170 	.globl _USB_DEV_AD
                                    171 	.globl _USB_CTRL
                                    172 	.globl _USB_INT_EN
                                    173 	.globl _UEP4_T_LEN
                                    174 	.globl _UEP4_CTRL
                                    175 	.globl _UEP0_T_LEN
                                    176 	.globl _UEP0_CTRL
                                    177 	.globl _USB_RX_LEN
                                    178 	.globl _USB_MIS_ST
                                    179 	.globl _USB_INT_ST
                                    180 	.globl _USB_INT_FG
                                    181 	.globl _UEP3_T_LEN
                                    182 	.globl _UEP3_CTRL
                                    183 	.globl _UEP2_T_LEN
                                    184 	.globl _UEP2_CTRL
                                    185 	.globl _UEP1_T_LEN
                                    186 	.globl _UEP1_CTRL
                                    187 	.globl _UDEV_CTRL
                                    188 	.globl _USB_C_CTRL
                                    189 	.globl _TKEY_DATH
                                    190 	.globl _TKEY_DATL
                                    191 	.globl _TKEY_DAT
                                    192 	.globl _TKEY_CTRL
                                    193 	.globl _ADC_DATA
                                    194 	.globl _ADC_CFG
                                    195 	.globl _ADC_CTRL
                                    196 	.globl _SBAUD1
                                    197 	.globl _SBUF1
                                    198 	.globl _SCON1
                                    199 	.globl _SPI0_SETUP
                                    200 	.globl _SPI0_CK_SE
                                    201 	.globl _SPI0_CTRL
                                    202 	.globl _SPI0_DATA
                                    203 	.globl _SPI0_STAT
                                    204 	.globl _PWM_CK_SE
                                    205 	.globl _PWM_CTRL
                                    206 	.globl _PWM_DATA1
                                    207 	.globl _PWM_DATA2
                                    208 	.globl _T2CAP1H
                                    209 	.globl _T2CAP1L
                                    210 	.globl _T2CAP1
                                    211 	.globl _TH2
                                    212 	.globl _TL2
                                    213 	.globl _T2COUNT
                                    214 	.globl _RCAP2H
                                    215 	.globl _RCAP2L
                                    216 	.globl _RCAP2
                                    217 	.globl _T2MOD
                                    218 	.globl _T2CON
                                    219 	.globl _SBUF
                                    220 	.globl _SCON
                                    221 	.globl _TH1
                                    222 	.globl _TH0
                                    223 	.globl _TL1
                                    224 	.globl _TL0
                                    225 	.globl _TMOD
                                    226 	.globl _TCON
                                    227 	.globl _XBUS_AUX
                                    228 	.globl _PIN_FUNC
                                    229 	.globl _P3_DIR_PU
                                    230 	.globl _P3_MOD_OC
                                    231 	.globl _P3
                                    232 	.globl _P2
                                    233 	.globl _P1_DIR_PU
                                    234 	.globl _P1_MOD_OC
                                    235 	.globl _P1
                                    236 	.globl _ROM_CTRL
                                    237 	.globl _ROM_DATA_H
                                    238 	.globl _ROM_DATA_L
                                    239 	.globl _ROM_DATA
                                    240 	.globl _ROM_ADDR_H
                                    241 	.globl _ROM_ADDR_L
                                    242 	.globl _ROM_ADDR
                                    243 	.globl _GPIO_IE
                                    244 	.globl _IP_EX
                                    245 	.globl _IE_EX
                                    246 	.globl _IP
                                    247 	.globl _IE
                                    248 	.globl _WDOG_COUNT
                                    249 	.globl _RESET_KEEP
                                    250 	.globl _WAKE_CTRL
                                    251 	.globl _CLOCK_CFG
                                    252 	.globl _PCON
                                    253 	.globl _GLOBAL_CFG
                                    254 	.globl _SAFE_MOD
                                    255 	.globl _DPH
                                    256 	.globl _DPL
                                    257 	.globl _SP
                                    258 	.globl _B
                                    259 	.globl _ACC
                                    260 	.globl _PSW
                                    261 	.globl _dummy_variable
                                    262 ;--------------------------------------------------------
                                    263 ; special function registers
                                    264 ;--------------------------------------------------------
                                    265 	.area RSEG    (ABS,DATA)
      000000                        266 	.org 0x0000
                           0000D0   267 _PSW	=	0x00d0
                           0000E0   268 _ACC	=	0x00e0
                           0000F0   269 _B	=	0x00f0
                           000081   270 _SP	=	0x0081
                           000082   271 _DPL	=	0x0082
                           000083   272 _DPH	=	0x0083
                           0000A1   273 _SAFE_MOD	=	0x00a1
                           0000B1   274 _GLOBAL_CFG	=	0x00b1
                           000087   275 _PCON	=	0x0087
                           0000B9   276 _CLOCK_CFG	=	0x00b9
                           0000A9   277 _WAKE_CTRL	=	0x00a9
                           0000FE   278 _RESET_KEEP	=	0x00fe
                           0000FF   279 _WDOG_COUNT	=	0x00ff
                           0000A8   280 _IE	=	0x00a8
                           0000B8   281 _IP	=	0x00b8
                           0000E8   282 _IE_EX	=	0x00e8
                           0000E9   283 _IP_EX	=	0x00e9
                           0000C7   284 _GPIO_IE	=	0x00c7
                           008584   285 _ROM_ADDR	=	0x8584
                           000084   286 _ROM_ADDR_L	=	0x0084
                           000085   287 _ROM_ADDR_H	=	0x0085
                           008F8E   288 _ROM_DATA	=	0x8f8e
                           00008E   289 _ROM_DATA_L	=	0x008e
                           00008F   290 _ROM_DATA_H	=	0x008f
                           000086   291 _ROM_CTRL	=	0x0086
                           000090   292 _P1	=	0x0090
                           000092   293 _P1_MOD_OC	=	0x0092
                           000093   294 _P1_DIR_PU	=	0x0093
                           0000A0   295 _P2	=	0x00a0
                           0000B0   296 _P3	=	0x00b0
                           000096   297 _P3_MOD_OC	=	0x0096
                           000097   298 _P3_DIR_PU	=	0x0097
                           0000C6   299 _PIN_FUNC	=	0x00c6
                           0000A2   300 _XBUS_AUX	=	0x00a2
                           000088   301 _TCON	=	0x0088
                           000089   302 _TMOD	=	0x0089
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           000098   307 _SCON	=	0x0098
                           000099   308 _SBUF	=	0x0099
                           0000C8   309 _T2CON	=	0x00c8
                           0000C9   310 _T2MOD	=	0x00c9
                           00CBCA   311 _RCAP2	=	0xcbca
                           0000CA   312 _RCAP2L	=	0x00ca
                           0000CB   313 _RCAP2H	=	0x00cb
                           00CDCC   314 _T2COUNT	=	0xcdcc
                           0000CC   315 _TL2	=	0x00cc
                           0000CD   316 _TH2	=	0x00cd
                           00CFCE   317 _T2CAP1	=	0xcfce
                           0000CE   318 _T2CAP1L	=	0x00ce
                           0000CF   319 _T2CAP1H	=	0x00cf
                           00009B   320 _PWM_DATA2	=	0x009b
                           00009C   321 _PWM_DATA1	=	0x009c
                           00009D   322 _PWM_CTRL	=	0x009d
                           00009E   323 _PWM_CK_SE	=	0x009e
                           0000F8   324 _SPI0_STAT	=	0x00f8
                           0000F9   325 _SPI0_DATA	=	0x00f9
                           0000FA   326 _SPI0_CTRL	=	0x00fa
                           0000FB   327 _SPI0_CK_SE	=	0x00fb
                           0000FC   328 _SPI0_SETUP	=	0x00fc
                           0000C0   329 _SCON1	=	0x00c0
                           0000C1   330 _SBUF1	=	0x00c1
                           0000C2   331 _SBAUD1	=	0x00c2
                           000080   332 _ADC_CTRL	=	0x0080
                           00009A   333 _ADC_CFG	=	0x009a
                           00009F   334 _ADC_DATA	=	0x009f
                           0000C3   335 _TKEY_CTRL	=	0x00c3
                           00C5C4   336 _TKEY_DAT	=	0xc5c4
                           0000C4   337 _TKEY_DATL	=	0x00c4
                           0000C5   338 _TKEY_DATH	=	0x00c5
                           000091   339 _USB_C_CTRL	=	0x0091
                           0000D1   340 _UDEV_CTRL	=	0x00d1
                           0000D2   341 _UEP1_CTRL	=	0x00d2
                           0000D3   342 _UEP1_T_LEN	=	0x00d3
                           0000D4   343 _UEP2_CTRL	=	0x00d4
                           0000D5   344 _UEP2_T_LEN	=	0x00d5
                           0000D6   345 _UEP3_CTRL	=	0x00d6
                           0000D7   346 _UEP3_T_LEN	=	0x00d7
                           0000D8   347 _USB_INT_FG	=	0x00d8
                           0000D9   348 _USB_INT_ST	=	0x00d9
                           0000DA   349 _USB_MIS_ST	=	0x00da
                           0000DB   350 _USB_RX_LEN	=	0x00db
                           0000DC   351 _UEP0_CTRL	=	0x00dc
                           0000DD   352 _UEP0_T_LEN	=	0x00dd
                           0000DE   353 _UEP4_CTRL	=	0x00de
                           0000DF   354 _UEP4_T_LEN	=	0x00df
                           0000E1   355 _USB_INT_EN	=	0x00e1
                           0000E2   356 _USB_CTRL	=	0x00e2
                           0000E3   357 _USB_DEV_AD	=	0x00e3
                           00E5E4   358 _UEP2_DMA	=	0xe5e4
                           0000E4   359 _UEP2_DMA_L	=	0x00e4
                           0000E5   360 _UEP2_DMA_H	=	0x00e5
                           00E7E6   361 _UEP3_DMA	=	0xe7e6
                           0000E6   362 _UEP3_DMA_L	=	0x00e6
                           0000E7   363 _UEP3_DMA_H	=	0x00e7
                           0000EA   364 _UEP4_1_MOD	=	0x00ea
                           0000EB   365 _UEP2_3_MOD	=	0x00eb
                           00EDEC   366 _UEP0_DMA	=	0xedec
                           0000EC   367 _UEP0_DMA_L	=	0x00ec
                           0000ED   368 _UEP0_DMA_H	=	0x00ed
                           00EFEE   369 _UEP1_DMA	=	0xefee
                           0000EE   370 _UEP1_DMA_L	=	0x00ee
                           0000EF   371 _UEP1_DMA_H	=	0x00ef
                                    372 ;--------------------------------------------------------
                                    373 ; special function bits
                                    374 ;--------------------------------------------------------
                                    375 	.area RSEG    (ABS,DATA)
      000000                        376 	.org 0x0000
                           0000D7   377 _CY	=	0x00d7
                           0000D6   378 _AC	=	0x00d6
                           0000D5   379 _F0	=	0x00d5
                           0000D4   380 _RS1	=	0x00d4
                           0000D3   381 _RS0	=	0x00d3
                           0000D2   382 _OV	=	0x00d2
                           0000D1   383 _F1	=	0x00d1
                           0000D0   384 _P	=	0x00d0
                           0000AF   385 _EA	=	0x00af
                           0000AE   386 _E_DIS	=	0x00ae
                           0000AD   387 _ET2	=	0x00ad
                           0000AC   388 _ES	=	0x00ac
                           0000AB   389 _ET1	=	0x00ab
                           0000AA   390 _EX1	=	0x00aa
                           0000A9   391 _ET0	=	0x00a9
                           0000A8   392 _EX0	=	0x00a8
                           0000BF   393 _PH_FLAG	=	0x00bf
                           0000BE   394 _PL_FLAG	=	0x00be
                           0000BD   395 _PT2	=	0x00bd
                           0000BC   396 _PS	=	0x00bc
                           0000BB   397 _PT1	=	0x00bb
                           0000BA   398 _PX1	=	0x00ba
                           0000B9   399 _PT0	=	0x00b9
                           0000B8   400 _PX0	=	0x00b8
                           0000EF   401 _IE_WDOG	=	0x00ef
                           0000EE   402 _IE_GPIO	=	0x00ee
                           0000ED   403 _IE_PWMX	=	0x00ed
                           0000EC   404 _IE_UART1	=	0x00ec
                           0000EB   405 _IE_ADC	=	0x00eb
                           0000EA   406 _IE_USB	=	0x00ea
                           0000E9   407 _IE_TKEY	=	0x00e9
                           0000E8   408 _IE_SPI0	=	0x00e8
                           000097   409 _SCK	=	0x0097
                           000097   410 _TXD1	=	0x0097
                           000097   411 _TIN5	=	0x0097
                           000096   412 _MISO	=	0x0096
                           000096   413 _RXD1	=	0x0096
                           000096   414 _TIN4	=	0x0096
                           000095   415 _MOSI	=	0x0095
                           000095   416 _PWM1	=	0x0095
                           000095   417 _TIN3	=	0x0095
                           000095   418 _UCC2	=	0x0095
                           000095   419 _AIN2	=	0x0095
                           000094   420 _T2_	=	0x0094
                           000094   421 _CAP1_	=	0x0094
                           000094   422 _SCS	=	0x0094
                           000094   423 _TIN2	=	0x0094
                           000094   424 _UCC1	=	0x0094
                           000094   425 _AIN1	=	0x0094
                           000093   426 _TXD_	=	0x0093
                           000092   427 _RXD_	=	0x0092
                           000091   428 _T2EX	=	0x0091
                           000091   429 _CAP2	=	0x0091
                           000091   430 _TIN1	=	0x0091
                           000091   431 _VBUS2	=	0x0091
                           000091   432 _AIN0	=	0x0091
                           000090   433 _T2	=	0x0090
                           000090   434 _CAP1	=	0x0090
                           000090   435 _TIN0	=	0x0090
                           000097   436 _P1_7	=	0x0097
                           000096   437 _P1_6	=	0x0096
                           000095   438 _P1_5	=	0x0095
                           000094   439 _P1_4	=	0x0094
                           000093   440 _P1_3	=	0x0093
                           000092   441 _P1_2	=	0x0092
                           000091   442 _P1_1	=	0x0091
                           000090   443 _P1_0	=	0x0090
                           0000B7   444 _UDM	=	0x00b7
                           0000B6   445 _UDP	=	0x00b6
                           0000B5   446 _T1	=	0x00b5
                           0000B4   447 _PWM2	=	0x00b4
                           0000B4   448 _RXD1_	=	0x00b4
                           0000B4   449 _T0	=	0x00b4
                           0000B3   450 _INT1	=	0x00b3
                           0000B2   451 _TXD1_	=	0x00b2
                           0000B2   452 _INT0	=	0x00b2
                           0000B2   453 _VBUS1	=	0x00b2
                           0000B2   454 _AIN3	=	0x00b2
                           0000B1   455 _PWM2_	=	0x00b1
                           0000B1   456 _TXD	=	0x00b1
                           0000B0   457 _PWM1_	=	0x00b0
                           0000B0   458 _RXD	=	0x00b0
                           0000B7   459 _P3_7	=	0x00b7
                           0000B6   460 _P3_6	=	0x00b6
                           0000B5   461 _P3_5	=	0x00b5
                           0000B4   462 _P3_4	=	0x00b4
                           0000B3   463 _P3_3	=	0x00b3
                           0000B2   464 _P3_2	=	0x00b2
                           0000B1   465 _P3_1	=	0x00b1
                           0000B0   466 _P3_0	=	0x00b0
                           00008F   467 _TF1	=	0x008f
                           00008E   468 _TR1	=	0x008e
                           00008D   469 _TF0	=	0x008d
                           00008C   470 _TR0	=	0x008c
                           00008B   471 _IE1	=	0x008b
                           00008A   472 _IT1	=	0x008a
                           000089   473 _IE0	=	0x0089
                           000088   474 _IT0	=	0x0088
                           00009F   475 _SM0	=	0x009f
                           00009E   476 _SM1	=	0x009e
                           00009D   477 _SM2	=	0x009d
                           00009C   478 _REN	=	0x009c
                           00009B   479 _TB8	=	0x009b
                           00009A   480 _RB8	=	0x009a
                           000099   481 _TI	=	0x0099
                           000098   482 _RI	=	0x0098
                           0000CF   483 _TF2	=	0x00cf
                           0000CF   484 _CAP1F	=	0x00cf
                           0000CE   485 _EXF2	=	0x00ce
                           0000CD   486 _RCLK	=	0x00cd
                           0000CC   487 _TCLK	=	0x00cc
                           0000CB   488 _EXEN2	=	0x00cb
                           0000CA   489 _TR2	=	0x00ca
                           0000C9   490 _C_T2	=	0x00c9
                           0000C8   491 _CP_RL2	=	0x00c8
                           0000FF   492 _S0_FST_ACT	=	0x00ff
                           0000FE   493 _S0_IF_OV	=	0x00fe
                           0000FD   494 _S0_IF_FIRST	=	0x00fd
                           0000FC   495 _S0_IF_BYTE	=	0x00fc
                           0000FB   496 _S0_FREE	=	0x00fb
                           0000FA   497 _S0_T_FIFO	=	0x00fa
                           0000F8   498 _S0_R_FIFO	=	0x00f8
                           0000C7   499 _U1SM0	=	0x00c7
                           0000C5   500 _U1SMOD	=	0x00c5
                           0000C4   501 _U1REN	=	0x00c4
                           0000C3   502 _U1TB8	=	0x00c3
                           0000C2   503 _U1RB8	=	0x00c2
                           0000C1   504 _U1TI	=	0x00c1
                           0000C0   505 _U1RI	=	0x00c0
                           000087   506 _CMPO	=	0x0087
                           000086   507 _CMP_IF	=	0x0086
                           000085   508 _ADC_IF	=	0x0085
                           000084   509 _ADC_START	=	0x0084
                           000083   510 _CMP_CHAN	=	0x0083
                           000081   511 _ADC_CHAN1	=	0x0081
                           000080   512 _ADC_CHAN0	=	0x0080
                           0000DF   513 _U_IS_NAK	=	0x00df
                           0000DE   514 _U_TOG_OK	=	0x00de
                           0000DD   515 _U_SIE_FREE	=	0x00dd
                           0000DC   516 _UIF_FIFO_OV	=	0x00dc
                           0000DB   517 _UIF_HST_SOF	=	0x00db
                           0000DA   518 _UIF_SUSPEND	=	0x00da
                           0000D9   519 _UIF_TRANSFER	=	0x00d9
                           0000D8   520 _UIF_DETECT	=	0x00d8
                           0000D8   521 _UIF_BUS_RST	=	0x00d8
                                    522 ;--------------------------------------------------------
                                    523 ; overlayable register banks
                                    524 ;--------------------------------------------------------
                                    525 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        526 	.ds 8
                                    527 ;--------------------------------------------------------
                                    528 ; internal ram data
                                    529 ;--------------------------------------------------------
                                    530 	.area DSEG    (DATA)
                                    531 ;--------------------------------------------------------
                                    532 ; overlayable items in internal ram
                                    533 ;--------------------------------------------------------
                                    534 ;--------------------------------------------------------
                                    535 ; indirectly addressable internal ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area ISEG    (DATA)
                                    538 ;--------------------------------------------------------
                                    539 ; absolute internal ram data
                                    540 ;--------------------------------------------------------
                                    541 	.area IABS    (ABS,DATA)
                                    542 	.area IABS    (ABS,DATA)
                                    543 ;--------------------------------------------------------
                                    544 ; bit data
                                    545 ;--------------------------------------------------------
                                    546 	.area BSEG    (BIT)
                                    547 ;--------------------------------------------------------
                                    548 ; paged external ram data
                                    549 ;--------------------------------------------------------
                                    550 	.area PSEG    (PAG,XDATA)
                                    551 ;--------------------------------------------------------
                                    552 ; uninitialized external ram data
                                    553 ;--------------------------------------------------------
                                    554 	.area XSEG    (XDATA)
                                    555 ;--------------------------------------------------------
                                    556 ; absolute external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area XABS    (ABS,XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; initialized external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XISEG   (XDATA)
      000248                        563 _dummy_variable::
      000248                        564 	.ds 2
                                    565 	.area HOME    (CODE)
                                    566 	.area GSINIT0 (CODE)
                                    567 	.area GSINIT1 (CODE)
                                    568 	.area GSINIT2 (CODE)
                                    569 	.area GSINIT3 (CODE)
                                    570 	.area GSINIT4 (CODE)
                                    571 	.area GSINIT5 (CODE)
                                    572 	.area GSINIT  (CODE)
                                    573 	.area GSFINAL (CODE)
                                    574 	.area CSEG    (CODE)
                                    575 ;--------------------------------------------------------
                                    576 ; global & static initialisations
                                    577 ;--------------------------------------------------------
                                    578 	.area HOME    (CODE)
                                    579 	.area GSINIT  (CODE)
                                    580 	.area GSFINAL (CODE)
                                    581 	.area GSINIT  (CODE)
                                    582 ;--------------------------------------------------------
                                    583 ; Home
                                    584 ;--------------------------------------------------------
                                    585 	.area HOME    (CODE)
                                    586 	.area HOME    (CODE)
                                    587 ;--------------------------------------------------------
                                    588 ; code
                                    589 ;--------------------------------------------------------
                                    590 	.area CSEG    (CODE)
                                    591 	.area CSEG    (CODE)
                                    592 	.area CONST   (CODE)
                                    593 	.area XINIT   (CODE)
      0036DE                        594 __xinit__dummy_variable:
      0036DE 3D 21                  595 	.byte _main, (_main >> 8)
                                    596 	.area CABS    (ABS,CODE)
