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
                                     25 	.globl _ADC_CHAN0
                                     26 	.globl _ADC_CHAN1
                                     27 	.globl _CMP_CHAN
                                     28 	.globl _ADC_START
                                     29 	.globl _ADC_IF
                                     30 	.globl _CMP_IF
                                     31 	.globl _CMPO
                                     32 	.globl _U1RI
                                     33 	.globl _U1TI
                                     34 	.globl _U1RB8
                                     35 	.globl _U1TB8
                                     36 	.globl _U1REN
                                     37 	.globl _U1SMOD
                                     38 	.globl _U1SM0
                                     39 	.globl _S0_R_FIFO
                                     40 	.globl _S0_T_FIFO
                                     41 	.globl _S0_FREE
                                     42 	.globl _S0_IF_BYTE
                                     43 	.globl _S0_IF_FIRST
                                     44 	.globl _S0_IF_OV
                                     45 	.globl _S0_FST_ACT
                                     46 	.globl _CP_RL2
                                     47 	.globl _C_T2
                                     48 	.globl _TR2
                                     49 	.globl _EXEN2
                                     50 	.globl _TCLK
                                     51 	.globl _RCLK
                                     52 	.globl _EXF2
                                     53 	.globl _CAP1F
                                     54 	.globl _TF2
                                     55 	.globl _RI
                                     56 	.globl _TI
                                     57 	.globl _RB8
                                     58 	.globl _TB8
                                     59 	.globl _REN
                                     60 	.globl _SM2
                                     61 	.globl _SM1
                                     62 	.globl _SM0
                                     63 	.globl _IT0
                                     64 	.globl _IE0
                                     65 	.globl _IT1
                                     66 	.globl _IE1
                                     67 	.globl _TR0
                                     68 	.globl _TF0
                                     69 	.globl _TR1
                                     70 	.globl _TF1
                                     71 	.globl _P3_0
                                     72 	.globl _P3_1
                                     73 	.globl _P3_2
                                     74 	.globl _P3_3
                                     75 	.globl _P3_4
                                     76 	.globl _P3_5
                                     77 	.globl _P3_6
                                     78 	.globl _P3_7
                                     79 	.globl _RXD
                                     80 	.globl _PWM1_
                                     81 	.globl _TXD
                                     82 	.globl _PWM2_
                                     83 	.globl _AIN3
                                     84 	.globl _VBUS1
                                     85 	.globl _INT0
                                     86 	.globl _TXD1_
                                     87 	.globl _INT1
                                     88 	.globl _T0
                                     89 	.globl _RXD1_
                                     90 	.globl _PWM2
                                     91 	.globl _T1
                                     92 	.globl _UDP
                                     93 	.globl _UDM
                                     94 	.globl _P1_0
                                     95 	.globl _P1_1
                                     96 	.globl _P1_2
                                     97 	.globl _P1_3
                                     98 	.globl _P1_4
                                     99 	.globl _P1_5
                                    100 	.globl _P1_6
                                    101 	.globl _P1_7
                                    102 	.globl _TIN0
                                    103 	.globl _CAP1
                                    104 	.globl _T2
                                    105 	.globl _AIN0
                                    106 	.globl _VBUS2
                                    107 	.globl _TIN1
                                    108 	.globl _CAP2
                                    109 	.globl _T2EX
                                    110 	.globl _RXD_
                                    111 	.globl _TXD_
                                    112 	.globl _AIN1
                                    113 	.globl _UCC1
                                    114 	.globl _TIN2
                                    115 	.globl _SCS
                                    116 	.globl _CAP1_
                                    117 	.globl _T2_
                                    118 	.globl _AIN2
                                    119 	.globl _UCC2
                                    120 	.globl _TIN3
                                    121 	.globl _PWM1
                                    122 	.globl _MOSI
                                    123 	.globl _TIN4
                                    124 	.globl _RXD1
                                    125 	.globl _MISO
                                    126 	.globl _TIN5
                                    127 	.globl _TXD1
                                    128 	.globl _SCK
                                    129 	.globl _IE_SPI0
                                    130 	.globl _IE_TKEY
                                    131 	.globl _IE_USB
                                    132 	.globl _IE_ADC
                                    133 	.globl _IE_UART1
                                    134 	.globl _IE_PWMX
                                    135 	.globl _IE_GPIO
                                    136 	.globl _IE_WDOG
                                    137 	.globl _PX0
                                    138 	.globl _PT0
                                    139 	.globl _PX1
                                    140 	.globl _PT1
                                    141 	.globl _PS
                                    142 	.globl _PT2
                                    143 	.globl _PL_FLAG
                                    144 	.globl _PH_FLAG
                                    145 	.globl _EX0
                                    146 	.globl _ET0
                                    147 	.globl _EX1
                                    148 	.globl _ET1
                                    149 	.globl _ES
                                    150 	.globl _ET2
                                    151 	.globl _E_DIS
                                    152 	.globl _EA
                                    153 	.globl _P
                                    154 	.globl _F1
                                    155 	.globl _OV
                                    156 	.globl _RS0
                                    157 	.globl _RS1
                                    158 	.globl _F0
                                    159 	.globl _AC
                                    160 	.globl _CY
                                    161 	.globl _UEP1_DMA_H
                                    162 	.globl _UEP1_DMA_L
                                    163 	.globl _UEP1_DMA
                                    164 	.globl _UEP0_DMA_H
                                    165 	.globl _UEP0_DMA_L
                                    166 	.globl _UEP0_DMA
                                    167 	.globl _UEP2_3_MOD
                                    168 	.globl _UEP4_1_MOD
                                    169 	.globl _UEP3_DMA_H
                                    170 	.globl _UEP3_DMA_L
                                    171 	.globl _UEP3_DMA
                                    172 	.globl _UEP2_DMA_H
                                    173 	.globl _UEP2_DMA_L
                                    174 	.globl _UEP2_DMA
                                    175 	.globl _USB_DEV_AD
                                    176 	.globl _USB_CTRL
                                    177 	.globl _USB_INT_EN
                                    178 	.globl _UEP4_T_LEN
                                    179 	.globl _UEP4_CTRL
                                    180 	.globl _UEP0_T_LEN
                                    181 	.globl _UEP0_CTRL
                                    182 	.globl _USB_RX_LEN
                                    183 	.globl _USB_MIS_ST
                                    184 	.globl _USB_INT_ST
                                    185 	.globl _USB_INT_FG
                                    186 	.globl _UEP3_T_LEN
                                    187 	.globl _UEP3_CTRL
                                    188 	.globl _UEP2_T_LEN
                                    189 	.globl _UEP2_CTRL
                                    190 	.globl _UEP1_T_LEN
                                    191 	.globl _UEP1_CTRL
                                    192 	.globl _UDEV_CTRL
                                    193 	.globl _USB_C_CTRL
                                    194 	.globl _TKEY_DATH
                                    195 	.globl _TKEY_DATL
                                    196 	.globl _TKEY_DAT
                                    197 	.globl _TKEY_CTRL
                                    198 	.globl _ADC_DATA
                                    199 	.globl _ADC_CFG
                                    200 	.globl _ADC_CTRL
                                    201 	.globl _SBAUD1
                                    202 	.globl _SBUF1
                                    203 	.globl _SCON1
                                    204 	.globl _SPI0_SETUP
                                    205 	.globl _SPI0_CK_SE
                                    206 	.globl _SPI0_CTRL
                                    207 	.globl _SPI0_DATA
                                    208 	.globl _SPI0_STAT
                                    209 	.globl _PWM_CK_SE
                                    210 	.globl _PWM_CTRL
                                    211 	.globl _PWM_DATA1
                                    212 	.globl _PWM_DATA2
                                    213 	.globl _T2CAP1H
                                    214 	.globl _T2CAP1L
                                    215 	.globl _T2CAP1
                                    216 	.globl _TH2
                                    217 	.globl _TL2
                                    218 	.globl _T2COUNT
                                    219 	.globl _RCAP2H
                                    220 	.globl _RCAP2L
                                    221 	.globl _RCAP2
                                    222 	.globl _T2MOD
                                    223 	.globl _T2CON
                                    224 	.globl _SBUF
                                    225 	.globl _SCON
                                    226 	.globl _TH1
                                    227 	.globl _TH0
                                    228 	.globl _TL1
                                    229 	.globl _TL0
                                    230 	.globl _TMOD
                                    231 	.globl _TCON
                                    232 	.globl _XBUS_AUX
                                    233 	.globl _PIN_FUNC
                                    234 	.globl _P3_DIR_PU
                                    235 	.globl _P3_MOD_OC
                                    236 	.globl _P3
                                    237 	.globl _P2
                                    238 	.globl _P1_DIR_PU
                                    239 	.globl _P1_MOD_OC
                                    240 	.globl _P1
                                    241 	.globl _ROM_CTRL
                                    242 	.globl _ROM_DATA_H
                                    243 	.globl _ROM_DATA_L
                                    244 	.globl _ROM_DATA
                                    245 	.globl _ROM_ADDR_H
                                    246 	.globl _ROM_ADDR_L
                                    247 	.globl _ROM_ADDR
                                    248 	.globl _GPIO_IE
                                    249 	.globl _IP_EX
                                    250 	.globl _IE_EX
                                    251 	.globl _IP
                                    252 	.globl _IE
                                    253 	.globl _WDOG_COUNT
                                    254 	.globl _RESET_KEEP
                                    255 	.globl _WAKE_CTRL
                                    256 	.globl _CLOCK_CFG
                                    257 	.globl _PCON
                                    258 	.globl _GLOBAL_CFG
                                    259 	.globl _SAFE_MOD
                                    260 	.globl _DPH
                                    261 	.globl _DPL
                                    262 	.globl _SP
                                    263 	.globl _B
                                    264 	.globl _ACC
                                    265 	.globl _PSW
                                    266 	.globl _DS18B20_init_PARM_2
                                    267 	.globl _DS18B20_init
                                    268 	.globl _DS18B20_begin
                                    269 	.globl _DS18B20_readTemperatureFast
                                    270 ;--------------------------------------------------------
                                    271 ; special function registers
                                    272 ;--------------------------------------------------------
                                    273 	.area RSEG    (ABS,DATA)
      000000                        274 	.org 0x0000
                           0000D0   275 _PSW	=	0x00d0
                           0000E0   276 _ACC	=	0x00e0
                           0000F0   277 _B	=	0x00f0
                           000081   278 _SP	=	0x0081
                           000082   279 _DPL	=	0x0082
                           000083   280 _DPH	=	0x0083
                           0000A1   281 _SAFE_MOD	=	0x00a1
                           0000B1   282 _GLOBAL_CFG	=	0x00b1
                           000087   283 _PCON	=	0x0087
                           0000B9   284 _CLOCK_CFG	=	0x00b9
                           0000A9   285 _WAKE_CTRL	=	0x00a9
                           0000FE   286 _RESET_KEEP	=	0x00fe
                           0000FF   287 _WDOG_COUNT	=	0x00ff
                           0000A8   288 _IE	=	0x00a8
                           0000B8   289 _IP	=	0x00b8
                           0000E8   290 _IE_EX	=	0x00e8
                           0000E9   291 _IP_EX	=	0x00e9
                           0000C7   292 _GPIO_IE	=	0x00c7
                           008584   293 _ROM_ADDR	=	0x8584
                           000084   294 _ROM_ADDR_L	=	0x0084
                           000085   295 _ROM_ADDR_H	=	0x0085
                           008F8E   296 _ROM_DATA	=	0x8f8e
                           00008E   297 _ROM_DATA_L	=	0x008e
                           00008F   298 _ROM_DATA_H	=	0x008f
                           000086   299 _ROM_CTRL	=	0x0086
                           000090   300 _P1	=	0x0090
                           000092   301 _P1_MOD_OC	=	0x0092
                           000093   302 _P1_DIR_PU	=	0x0093
                           0000A0   303 _P2	=	0x00a0
                           0000B0   304 _P3	=	0x00b0
                           000096   305 _P3_MOD_OC	=	0x0096
                           000097   306 _P3_DIR_PU	=	0x0097
                           0000C6   307 _PIN_FUNC	=	0x00c6
                           0000A2   308 _XBUS_AUX	=	0x00a2
                           000088   309 _TCON	=	0x0088
                           000089   310 _TMOD	=	0x0089
                           00008A   311 _TL0	=	0x008a
                           00008B   312 _TL1	=	0x008b
                           00008C   313 _TH0	=	0x008c
                           00008D   314 _TH1	=	0x008d
                           000098   315 _SCON	=	0x0098
                           000099   316 _SBUF	=	0x0099
                           0000C8   317 _T2CON	=	0x00c8
                           0000C9   318 _T2MOD	=	0x00c9
                           00CBCA   319 _RCAP2	=	0xcbca
                           0000CA   320 _RCAP2L	=	0x00ca
                           0000CB   321 _RCAP2H	=	0x00cb
                           00CDCC   322 _T2COUNT	=	0xcdcc
                           0000CC   323 _TL2	=	0x00cc
                           0000CD   324 _TH2	=	0x00cd
                           00CFCE   325 _T2CAP1	=	0xcfce
                           0000CE   326 _T2CAP1L	=	0x00ce
                           0000CF   327 _T2CAP1H	=	0x00cf
                           00009B   328 _PWM_DATA2	=	0x009b
                           00009C   329 _PWM_DATA1	=	0x009c
                           00009D   330 _PWM_CTRL	=	0x009d
                           00009E   331 _PWM_CK_SE	=	0x009e
                           0000F8   332 _SPI0_STAT	=	0x00f8
                           0000F9   333 _SPI0_DATA	=	0x00f9
                           0000FA   334 _SPI0_CTRL	=	0x00fa
                           0000FB   335 _SPI0_CK_SE	=	0x00fb
                           0000FC   336 _SPI0_SETUP	=	0x00fc
                           0000C0   337 _SCON1	=	0x00c0
                           0000C1   338 _SBUF1	=	0x00c1
                           0000C2   339 _SBAUD1	=	0x00c2
                           000080   340 _ADC_CTRL	=	0x0080
                           00009A   341 _ADC_CFG	=	0x009a
                           00009F   342 _ADC_DATA	=	0x009f
                           0000C3   343 _TKEY_CTRL	=	0x00c3
                           00C5C4   344 _TKEY_DAT	=	0xc5c4
                           0000C4   345 _TKEY_DATL	=	0x00c4
                           0000C5   346 _TKEY_DATH	=	0x00c5
                           000091   347 _USB_C_CTRL	=	0x0091
                           0000D1   348 _UDEV_CTRL	=	0x00d1
                           0000D2   349 _UEP1_CTRL	=	0x00d2
                           0000D3   350 _UEP1_T_LEN	=	0x00d3
                           0000D4   351 _UEP2_CTRL	=	0x00d4
                           0000D5   352 _UEP2_T_LEN	=	0x00d5
                           0000D6   353 _UEP3_CTRL	=	0x00d6
                           0000D7   354 _UEP3_T_LEN	=	0x00d7
                           0000D8   355 _USB_INT_FG	=	0x00d8
                           0000D9   356 _USB_INT_ST	=	0x00d9
                           0000DA   357 _USB_MIS_ST	=	0x00da
                           0000DB   358 _USB_RX_LEN	=	0x00db
                           0000DC   359 _UEP0_CTRL	=	0x00dc
                           0000DD   360 _UEP0_T_LEN	=	0x00dd
                           0000DE   361 _UEP4_CTRL	=	0x00de
                           0000DF   362 _UEP4_T_LEN	=	0x00df
                           0000E1   363 _USB_INT_EN	=	0x00e1
                           0000E2   364 _USB_CTRL	=	0x00e2
                           0000E3   365 _USB_DEV_AD	=	0x00e3
                           00E5E4   366 _UEP2_DMA	=	0xe5e4
                           0000E4   367 _UEP2_DMA_L	=	0x00e4
                           0000E5   368 _UEP2_DMA_H	=	0x00e5
                           00E7E6   369 _UEP3_DMA	=	0xe7e6
                           0000E6   370 _UEP3_DMA_L	=	0x00e6
                           0000E7   371 _UEP3_DMA_H	=	0x00e7
                           0000EA   372 _UEP4_1_MOD	=	0x00ea
                           0000EB   373 _UEP2_3_MOD	=	0x00eb
                           00EDEC   374 _UEP0_DMA	=	0xedec
                           0000EC   375 _UEP0_DMA_L	=	0x00ec
                           0000ED   376 _UEP0_DMA_H	=	0x00ed
                           00EFEE   377 _UEP1_DMA	=	0xefee
                           0000EE   378 _UEP1_DMA_L	=	0x00ee
                           0000EF   379 _UEP1_DMA_H	=	0x00ef
                                    380 ;--------------------------------------------------------
                                    381 ; special function bits
                                    382 ;--------------------------------------------------------
                                    383 	.area RSEG    (ABS,DATA)
      000000                        384 	.org 0x0000
                           0000D7   385 _CY	=	0x00d7
                           0000D6   386 _AC	=	0x00d6
                           0000D5   387 _F0	=	0x00d5
                           0000D4   388 _RS1	=	0x00d4
                           0000D3   389 _RS0	=	0x00d3
                           0000D2   390 _OV	=	0x00d2
                           0000D1   391 _F1	=	0x00d1
                           0000D0   392 _P	=	0x00d0
                           0000AF   393 _EA	=	0x00af
                           0000AE   394 _E_DIS	=	0x00ae
                           0000AD   395 _ET2	=	0x00ad
                           0000AC   396 _ES	=	0x00ac
                           0000AB   397 _ET1	=	0x00ab
                           0000AA   398 _EX1	=	0x00aa
                           0000A9   399 _ET0	=	0x00a9
                           0000A8   400 _EX0	=	0x00a8
                           0000BF   401 _PH_FLAG	=	0x00bf
                           0000BE   402 _PL_FLAG	=	0x00be
                           0000BD   403 _PT2	=	0x00bd
                           0000BC   404 _PS	=	0x00bc
                           0000BB   405 _PT1	=	0x00bb
                           0000BA   406 _PX1	=	0x00ba
                           0000B9   407 _PT0	=	0x00b9
                           0000B8   408 _PX0	=	0x00b8
                           0000EF   409 _IE_WDOG	=	0x00ef
                           0000EE   410 _IE_GPIO	=	0x00ee
                           0000ED   411 _IE_PWMX	=	0x00ed
                           0000EC   412 _IE_UART1	=	0x00ec
                           0000EB   413 _IE_ADC	=	0x00eb
                           0000EA   414 _IE_USB	=	0x00ea
                           0000E9   415 _IE_TKEY	=	0x00e9
                           0000E8   416 _IE_SPI0	=	0x00e8
                           000097   417 _SCK	=	0x0097
                           000097   418 _TXD1	=	0x0097
                           000097   419 _TIN5	=	0x0097
                           000096   420 _MISO	=	0x0096
                           000096   421 _RXD1	=	0x0096
                           000096   422 _TIN4	=	0x0096
                           000095   423 _MOSI	=	0x0095
                           000095   424 _PWM1	=	0x0095
                           000095   425 _TIN3	=	0x0095
                           000095   426 _UCC2	=	0x0095
                           000095   427 _AIN2	=	0x0095
                           000094   428 _T2_	=	0x0094
                           000094   429 _CAP1_	=	0x0094
                           000094   430 _SCS	=	0x0094
                           000094   431 _TIN2	=	0x0094
                           000094   432 _UCC1	=	0x0094
                           000094   433 _AIN1	=	0x0094
                           000093   434 _TXD_	=	0x0093
                           000092   435 _RXD_	=	0x0092
                           000091   436 _T2EX	=	0x0091
                           000091   437 _CAP2	=	0x0091
                           000091   438 _TIN1	=	0x0091
                           000091   439 _VBUS2	=	0x0091
                           000091   440 _AIN0	=	0x0091
                           000090   441 _T2	=	0x0090
                           000090   442 _CAP1	=	0x0090
                           000090   443 _TIN0	=	0x0090
                           000097   444 _P1_7	=	0x0097
                           000096   445 _P1_6	=	0x0096
                           000095   446 _P1_5	=	0x0095
                           000094   447 _P1_4	=	0x0094
                           000093   448 _P1_3	=	0x0093
                           000092   449 _P1_2	=	0x0092
                           000091   450 _P1_1	=	0x0091
                           000090   451 _P1_0	=	0x0090
                           0000B7   452 _UDM	=	0x00b7
                           0000B6   453 _UDP	=	0x00b6
                           0000B5   454 _T1	=	0x00b5
                           0000B4   455 _PWM2	=	0x00b4
                           0000B4   456 _RXD1_	=	0x00b4
                           0000B4   457 _T0	=	0x00b4
                           0000B3   458 _INT1	=	0x00b3
                           0000B2   459 _TXD1_	=	0x00b2
                           0000B2   460 _INT0	=	0x00b2
                           0000B2   461 _VBUS1	=	0x00b2
                           0000B2   462 _AIN3	=	0x00b2
                           0000B1   463 _PWM2_	=	0x00b1
                           0000B1   464 _TXD	=	0x00b1
                           0000B0   465 _PWM1_	=	0x00b0
                           0000B0   466 _RXD	=	0x00b0
                           0000B7   467 _P3_7	=	0x00b7
                           0000B6   468 _P3_6	=	0x00b6
                           0000B5   469 _P3_5	=	0x00b5
                           0000B4   470 _P3_4	=	0x00b4
                           0000B3   471 _P3_3	=	0x00b3
                           0000B2   472 _P3_2	=	0x00b2
                           0000B1   473 _P3_1	=	0x00b1
                           0000B0   474 _P3_0	=	0x00b0
                           00008F   475 _TF1	=	0x008f
                           00008E   476 _TR1	=	0x008e
                           00008D   477 _TF0	=	0x008d
                           00008C   478 _TR0	=	0x008c
                           00008B   479 _IE1	=	0x008b
                           00008A   480 _IT1	=	0x008a
                           000089   481 _IE0	=	0x0089
                           000088   482 _IT0	=	0x0088
                           00009F   483 _SM0	=	0x009f
                           00009E   484 _SM1	=	0x009e
                           00009D   485 _SM2	=	0x009d
                           00009C   486 _REN	=	0x009c
                           00009B   487 _TB8	=	0x009b
                           00009A   488 _RB8	=	0x009a
                           000099   489 _TI	=	0x0099
                           000098   490 _RI	=	0x0098
                           0000CF   491 _TF2	=	0x00cf
                           0000CF   492 _CAP1F	=	0x00cf
                           0000CE   493 _EXF2	=	0x00ce
                           0000CD   494 _RCLK	=	0x00cd
                           0000CC   495 _TCLK	=	0x00cc
                           0000CB   496 _EXEN2	=	0x00cb
                           0000CA   497 _TR2	=	0x00ca
                           0000C9   498 _C_T2	=	0x00c9
                           0000C8   499 _CP_RL2	=	0x00c8
                           0000FF   500 _S0_FST_ACT	=	0x00ff
                           0000FE   501 _S0_IF_OV	=	0x00fe
                           0000FD   502 _S0_IF_FIRST	=	0x00fd
                           0000FC   503 _S0_IF_BYTE	=	0x00fc
                           0000FB   504 _S0_FREE	=	0x00fb
                           0000FA   505 _S0_T_FIFO	=	0x00fa
                           0000F8   506 _S0_R_FIFO	=	0x00f8
                           0000C7   507 _U1SM0	=	0x00c7
                           0000C5   508 _U1SMOD	=	0x00c5
                           0000C4   509 _U1REN	=	0x00c4
                           0000C3   510 _U1TB8	=	0x00c3
                           0000C2   511 _U1RB8	=	0x00c2
                           0000C1   512 _U1TI	=	0x00c1
                           0000C0   513 _U1RI	=	0x00c0
                           000087   514 _CMPO	=	0x0087
                           000086   515 _CMP_IF	=	0x0086
                           000085   516 _ADC_IF	=	0x0085
                           000084   517 _ADC_START	=	0x0084
                           000083   518 _CMP_CHAN	=	0x0083
                           000081   519 _ADC_CHAN1	=	0x0081
                           000080   520 _ADC_CHAN0	=	0x0080
                           0000DF   521 _U_IS_NAK	=	0x00df
                           0000DE   522 _U_TOG_OK	=	0x00de
                           0000DD   523 _U_SIE_FREE	=	0x00dd
                           0000DC   524 _UIF_FIFO_OV	=	0x00dc
                           0000DB   525 _UIF_HST_SOF	=	0x00db
                           0000DA   526 _UIF_SUSPEND	=	0x00da
                           0000D9   527 _UIF_TRANSFER	=	0x00d9
                           0000D8   528 _UIF_DETECT	=	0x00d8
                           0000D8   529 _UIF_BUS_RST	=	0x00d8
                                    530 ;--------------------------------------------------------
                                    531 ; overlayable register banks
                                    532 ;--------------------------------------------------------
                                    533 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        534 	.ds 8
                                    535 ;--------------------------------------------------------
                                    536 ; internal ram data
                                    537 ;--------------------------------------------------------
                                    538 	.area DSEG    (DATA)
                                    539 ;--------------------------------------------------------
                                    540 ; overlayable items in internal ram
                                    541 ;--------------------------------------------------------
                                    542 ;--------------------------------------------------------
                                    543 ; indirectly addressable internal ram data
                                    544 ;--------------------------------------------------------
                                    545 	.area ISEG    (DATA)
                                    546 ;--------------------------------------------------------
                                    547 ; absolute internal ram data
                                    548 ;--------------------------------------------------------
                                    549 	.area IABS    (ABS,DATA)
                                    550 	.area IABS    (ABS,DATA)
                                    551 ;--------------------------------------------------------
                                    552 ; bit data
                                    553 ;--------------------------------------------------------
                                    554 	.area BSEG    (BIT)
                                    555 ;--------------------------------------------------------
                                    556 ; paged external ram data
                                    557 ;--------------------------------------------------------
                                    558 	.area PSEG    (PAG,XDATA)
                                    559 ;--------------------------------------------------------
                                    560 ; uninitialized external ram data
                                    561 ;--------------------------------------------------------
                                    562 	.area XSEG    (XDATA)
      000094                        563 _ow_drive_low_dev_65536_175:
      000094                        564 	.ds 3
      000097                        565 _ow_release_bus_dev_65536_177:
      000097                        566 	.ds 3
      00009A                        567 _ow_read_bus_dev_65536_179:
      00009A                        568 	.ds 3
      00009D                        569 _ow_reset_dev_65536_181:
      00009D                        570 	.ds 3
      0000A0                        571 _ow_write_bit_PARM_2:
      0000A0                        572 	.ds 1
      0000A1                        573 _ow_write_bit_dev_65536_183:
      0000A1                        574 	.ds 3
      0000A4                        575 _ow_read_bit_dev_65536_187:
      0000A4                        576 	.ds 3
      0000A7                        577 _ow_write_byte_PARM_2:
      0000A7                        578 	.ds 1
      0000A8                        579 _ow_write_byte_dev_65536_189:
      0000A8                        580 	.ds 3
      0000AB                        581 _ow_read_byte_dev_65536_193:
      0000AB                        582 	.ds 3
      0000AE                        583 _ow_read_byte_v_65536_194:
      0000AE                        584 	.ds 1
      0000AF                        585 _DS18B20_init_PARM_2:
      0000AF                        586 	.ds 1
      0000B0                        587 _DS18B20_init_dev_65536_198:
      0000B0                        588 	.ds 3
      0000B3                        589 _DS18B20_begin_dev_65536_200:
      0000B3                        590 	.ds 3
      0000B6                        591 _DS18B20_readTemperatureFast_dev_65536_202:
      0000B6                        592 	.ds 3
                                    593 ;--------------------------------------------------------
                                    594 ; absolute external ram data
                                    595 ;--------------------------------------------------------
                                    596 	.area XABS    (ABS,XDATA)
                                    597 ;--------------------------------------------------------
                                    598 ; initialized external ram data
                                    599 ;--------------------------------------------------------
                                    600 	.area XISEG   (XDATA)
                                    601 	.area HOME    (CODE)
                                    602 	.area GSINIT0 (CODE)
                                    603 	.area GSINIT1 (CODE)
                                    604 	.area GSINIT2 (CODE)
                                    605 	.area GSINIT3 (CODE)
                                    606 	.area GSINIT4 (CODE)
                                    607 	.area GSINIT5 (CODE)
                                    608 	.area GSINIT  (CODE)
                                    609 	.area GSFINAL (CODE)
                                    610 	.area CSEG    (CODE)
                                    611 ;--------------------------------------------------------
                                    612 ; global & static initialisations
                                    613 ;--------------------------------------------------------
                                    614 	.area HOME    (CODE)
                                    615 	.area GSINIT  (CODE)
                                    616 	.area GSFINAL (CODE)
                                    617 	.area GSINIT  (CODE)
                                    618 ;--------------------------------------------------------
                                    619 ; Home
                                    620 ;--------------------------------------------------------
                                    621 	.area HOME    (CODE)
                                    622 	.area HOME    (CODE)
                                    623 ;--------------------------------------------------------
                                    624 ; code
                                    625 ;--------------------------------------------------------
                                    626 	.area CSEG    (CODE)
                                    627 ;------------------------------------------------------------
                                    628 ;Allocation info for local variables in function 'ow_drive_low'
                                    629 ;------------------------------------------------------------
                                    630 ;dev                       Allocated with name '_ow_drive_low_dev_65536_175'
                                    631 ;------------------------------------------------------------
                                    632 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:7: static void ow_drive_low(DS18B20* dev) {
                                    633 ;	-----------------------------------------
                                    634 ;	 function ow_drive_low
                                    635 ;	-----------------------------------------
      0000E8                        636 _ow_drive_low:
                           000007   637 	ar7 = 0x07
                           000006   638 	ar6 = 0x06
                           000005   639 	ar5 = 0x05
                           000004   640 	ar4 = 0x04
                           000003   641 	ar3 = 0x03
                           000002   642 	ar2 = 0x02
                           000001   643 	ar1 = 0x01
                           000000   644 	ar0 = 0x00
      0000E8 AF F0            [24]  645 	mov	r7,b
      0000EA AE 83            [24]  646 	mov	r6,dph
      0000EC E5 82            [12]  647 	mov	a,dpl
      0000EE 90 00 94         [24]  648 	mov	dptr,#_ow_drive_low_dev_65536_175
      0000F1 F0               [24]  649 	movx	@dptr,a
      0000F2 EE               [12]  650 	mov	a,r6
      0000F3 A3               [24]  651 	inc	dptr
      0000F4 F0               [24]  652 	movx	@dptr,a
      0000F5 EF               [12]  653 	mov	a,r7
      0000F6 A3               [24]  654 	inc	dptr
      0000F7 F0               [24]  655 	movx	@dptr,a
                                    656 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:8: digitalWrite(dev->pin, LOW);
      0000F8 90 00 94         [24]  657 	mov	dptr,#_ow_drive_low_dev_65536_175
      0000FB E0               [24]  658 	movx	a,@dptr
      0000FC FD               [12]  659 	mov	r5,a
      0000FD A3               [24]  660 	inc	dptr
      0000FE E0               [24]  661 	movx	a,@dptr
      0000FF FE               [12]  662 	mov	r6,a
      000100 A3               [24]  663 	inc	dptr
      000101 E0               [24]  664 	movx	a,@dptr
      000102 FF               [12]  665 	mov	r7,a
      000103 8D 82            [24]  666 	mov	dpl,r5
      000105 8E 83            [24]  667 	mov	dph,r6
      000107 8F F0            [24]  668 	mov	b,r7
      000109 12 31 2B         [24]  669 	lcall	__gptrget
      00010C FD               [12]  670 	mov	r5,a
      00010D 90 01 FE         [24]  671 	mov	dptr,#_digitalWrite_PARM_2
      000110 E4               [12]  672 	clr	a
      000111 F0               [24]  673 	movx	@dptr,a
      000112 8D 82            [24]  674 	mov	dpl,r5
                                    675 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:9: }
      000114 02 22 85         [24]  676 	ljmp	_digitalWrite
                                    677 ;------------------------------------------------------------
                                    678 ;Allocation info for local variables in function 'ow_release_bus'
                                    679 ;------------------------------------------------------------
                                    680 ;dev                       Allocated with name '_ow_release_bus_dev_65536_177'
                                    681 ;------------------------------------------------------------
                                    682 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:11: static void ow_release_bus(DS18B20* dev) {
                                    683 ;	-----------------------------------------
                                    684 ;	 function ow_release_bus
                                    685 ;	-----------------------------------------
      000117                        686 _ow_release_bus:
      000117 AF F0            [24]  687 	mov	r7,b
      000119 AE 83            [24]  688 	mov	r6,dph
      00011B E5 82            [12]  689 	mov	a,dpl
      00011D 90 00 97         [24]  690 	mov	dptr,#_ow_release_bus_dev_65536_177
      000120 F0               [24]  691 	movx	@dptr,a
      000121 EE               [12]  692 	mov	a,r6
      000122 A3               [24]  693 	inc	dptr
      000123 F0               [24]  694 	movx	@dptr,a
      000124 EF               [12]  695 	mov	a,r7
      000125 A3               [24]  696 	inc	dptr
      000126 F0               [24]  697 	movx	@dptr,a
                                    698 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:12: digitalWrite(dev->pin, HIGH);
      000127 90 00 97         [24]  699 	mov	dptr,#_ow_release_bus_dev_65536_177
      00012A E0               [24]  700 	movx	a,@dptr
      00012B FD               [12]  701 	mov	r5,a
      00012C A3               [24]  702 	inc	dptr
      00012D E0               [24]  703 	movx	a,@dptr
      00012E FE               [12]  704 	mov	r6,a
      00012F A3               [24]  705 	inc	dptr
      000130 E0               [24]  706 	movx	a,@dptr
      000131 FF               [12]  707 	mov	r7,a
      000132 8D 82            [24]  708 	mov	dpl,r5
      000134 8E 83            [24]  709 	mov	dph,r6
      000136 8F F0            [24]  710 	mov	b,r7
      000138 12 31 2B         [24]  711 	lcall	__gptrget
      00013B FD               [12]  712 	mov	r5,a
      00013C 90 01 FE         [24]  713 	mov	dptr,#_digitalWrite_PARM_2
      00013F 74 01            [12]  714 	mov	a,#0x01
      000141 F0               [24]  715 	movx	@dptr,a
      000142 8D 82            [24]  716 	mov	dpl,r5
                                    717 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:13: }
      000144 02 22 85         [24]  718 	ljmp	_digitalWrite
                                    719 ;------------------------------------------------------------
                                    720 ;Allocation info for local variables in function 'ow_read_bus'
                                    721 ;------------------------------------------------------------
                                    722 ;dev                       Allocated with name '_ow_read_bus_dev_65536_179'
                                    723 ;------------------------------------------------------------
                                    724 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:15: static uint8_t ow_read_bus(DS18B20* dev) {
                                    725 ;	-----------------------------------------
                                    726 ;	 function ow_read_bus
                                    727 ;	-----------------------------------------
      000147                        728 _ow_read_bus:
      000147 AF F0            [24]  729 	mov	r7,b
      000149 AE 83            [24]  730 	mov	r6,dph
      00014B E5 82            [12]  731 	mov	a,dpl
      00014D 90 00 9A         [24]  732 	mov	dptr,#_ow_read_bus_dev_65536_179
      000150 F0               [24]  733 	movx	@dptr,a
      000151 EE               [12]  734 	mov	a,r6
      000152 A3               [24]  735 	inc	dptr
      000153 F0               [24]  736 	movx	@dptr,a
      000154 EF               [12]  737 	mov	a,r7
      000155 A3               [24]  738 	inc	dptr
      000156 F0               [24]  739 	movx	@dptr,a
                                    740 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:16: return digitalRead(dev->pin);
      000157 90 00 9A         [24]  741 	mov	dptr,#_ow_read_bus_dev_65536_179
      00015A E0               [24]  742 	movx	a,@dptr
      00015B FD               [12]  743 	mov	r5,a
      00015C A3               [24]  744 	inc	dptr
      00015D E0               [24]  745 	movx	a,@dptr
      00015E FE               [12]  746 	mov	r6,a
      00015F A3               [24]  747 	inc	dptr
      000160 E0               [24]  748 	movx	a,@dptr
      000161 FF               [12]  749 	mov	r7,a
      000162 8D 82            [24]  750 	mov	dpl,r5
      000164 8E 83            [24]  751 	mov	dph,r6
      000166 8F F0            [24]  752 	mov	b,r7
      000168 12 31 2B         [24]  753 	lcall	__gptrget
      00016B F5 82            [12]  754 	mov	dpl,a
                                    755 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:17: }
      00016D 02 22 35         [24]  756 	ljmp	_digitalRead
                                    757 ;------------------------------------------------------------
                                    758 ;Allocation info for local variables in function 'ow_reset'
                                    759 ;------------------------------------------------------------
                                    760 ;dev                       Allocated with name '_ow_reset_dev_65536_181'
                                    761 ;present                   Allocated with name '_ow_reset_present_65536_182'
                                    762 ;------------------------------------------------------------
                                    763 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:19: static uint8_t ow_reset(DS18B20* dev) {
                                    764 ;	-----------------------------------------
                                    765 ;	 function ow_reset
                                    766 ;	-----------------------------------------
      000170                        767 _ow_reset:
      000170 AF F0            [24]  768 	mov	r7,b
      000172 AE 83            [24]  769 	mov	r6,dph
      000174 E5 82            [12]  770 	mov	a,dpl
      000176 90 00 9D         [24]  771 	mov	dptr,#_ow_reset_dev_65536_181
      000179 F0               [24]  772 	movx	@dptr,a
      00017A EE               [12]  773 	mov	a,r6
      00017B A3               [24]  774 	inc	dptr
      00017C F0               [24]  775 	movx	@dptr,a
      00017D EF               [12]  776 	mov	a,r7
      00017E A3               [24]  777 	inc	dptr
      00017F F0               [24]  778 	movx	@dptr,a
                                    779 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:23: EA = 0;
                                    780 ;	assignBit
      000180 C2 AF            [12]  781 	clr	_EA
                                    782 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:25: ow_drive_low(dev);
      000182 90 00 9D         [24]  783 	mov	dptr,#_ow_reset_dev_65536_181
      000185 E0               [24]  784 	movx	a,@dptr
      000186 FD               [12]  785 	mov	r5,a
      000187 A3               [24]  786 	inc	dptr
      000188 E0               [24]  787 	movx	a,@dptr
      000189 FE               [12]  788 	mov	r6,a
      00018A A3               [24]  789 	inc	dptr
      00018B E0               [24]  790 	movx	a,@dptr
      00018C FF               [12]  791 	mov	r7,a
      00018D 8D 82            [24]  792 	mov	dpl,r5
      00018F 8E 83            [24]  793 	mov	dph,r6
      000191 8F F0            [24]  794 	mov	b,r7
      000193 12 00 E8         [24]  795 	lcall	_ow_drive_low
                                    796 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:26: delayMicroseconds(480);
      000196 90 01 E0         [24]  797 	mov	dptr,#0x01e0
      000199 12 24 E5         [24]  798 	lcall	_delayMicroseconds
                                    799 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:28: ow_release_bus(dev);
      00019C 90 00 9D         [24]  800 	mov	dptr,#_ow_reset_dev_65536_181
      00019F E0               [24]  801 	movx	a,@dptr
      0001A0 FD               [12]  802 	mov	r5,a
      0001A1 A3               [24]  803 	inc	dptr
      0001A2 E0               [24]  804 	movx	a,@dptr
      0001A3 FE               [12]  805 	mov	r6,a
      0001A4 A3               [24]  806 	inc	dptr
      0001A5 E0               [24]  807 	movx	a,@dptr
      0001A6 FF               [12]  808 	mov	r7,a
      0001A7 8D 82            [24]  809 	mov	dpl,r5
      0001A9 8E 83            [24]  810 	mov	dph,r6
      0001AB 8F F0            [24]  811 	mov	b,r7
      0001AD 12 01 17         [24]  812 	lcall	_ow_release_bus
                                    813 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:29: delayMicroseconds(70);
      0001B0 90 00 46         [24]  814 	mov	dptr,#0x0046
      0001B3 12 24 E5         [24]  815 	lcall	_delayMicroseconds
                                    816 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:31: present = (ow_read_bus(dev) == 0) ? 1 : 0;
      0001B6 90 00 9D         [24]  817 	mov	dptr,#_ow_reset_dev_65536_181
      0001B9 E0               [24]  818 	movx	a,@dptr
      0001BA FD               [12]  819 	mov	r5,a
      0001BB A3               [24]  820 	inc	dptr
      0001BC E0               [24]  821 	movx	a,@dptr
      0001BD FE               [12]  822 	mov	r6,a
      0001BE A3               [24]  823 	inc	dptr
      0001BF E0               [24]  824 	movx	a,@dptr
      0001C0 FF               [12]  825 	mov	r7,a
      0001C1 8D 82            [24]  826 	mov	dpl,r5
      0001C3 8E 83            [24]  827 	mov	dph,r6
      0001C5 8F F0            [24]  828 	mov	b,r7
      0001C7 12 01 47         [24]  829 	lcall	_ow_read_bus
      0001CA E5 82            [12]  830 	mov	a,dpl
      0001CC 70 05            [24]  831 	jnz	00103$
      0001CE 7E 01            [12]  832 	mov	r6,#0x01
      0001D0 FF               [12]  833 	mov	r7,a
      0001D1 80 04            [24]  834 	sjmp	00104$
      0001D3                        835 00103$:
      0001D3 7E 00            [12]  836 	mov	r6,#0x00
      0001D5 7F 00            [12]  837 	mov	r7,#0x00
      0001D7                        838 00104$:
                                    839 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:33: EA = 1;
                                    840 ;	assignBit
      0001D7 D2 AF            [12]  841 	setb	_EA
                                    842 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:35: delayMicroseconds(410);
      0001D9 90 01 9A         [24]  843 	mov	dptr,#0x019a
      0001DC C0 06            [24]  844 	push	ar6
      0001DE 12 24 E5         [24]  845 	lcall	_delayMicroseconds
      0001E1 D0 06            [24]  846 	pop	ar6
                                    847 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:37: return present;
      0001E3 8E 82            [24]  848 	mov	dpl,r6
                                    849 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:38: }
      0001E5 22               [24]  850 	ret
                                    851 ;------------------------------------------------------------
                                    852 ;Allocation info for local variables in function 'ow_write_bit'
                                    853 ;------------------------------------------------------------
                                    854 ;bitv                      Allocated with name '_ow_write_bit_PARM_2'
                                    855 ;dev                       Allocated with name '_ow_write_bit_dev_65536_183'
                                    856 ;------------------------------------------------------------
                                    857 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:40: static void ow_write_bit(DS18B20* dev, uint8_t bitv) {
                                    858 ;	-----------------------------------------
                                    859 ;	 function ow_write_bit
                                    860 ;	-----------------------------------------
      0001E6                        861 _ow_write_bit:
      0001E6 AF F0            [24]  862 	mov	r7,b
      0001E8 AE 83            [24]  863 	mov	r6,dph
      0001EA E5 82            [12]  864 	mov	a,dpl
      0001EC 90 00 A1         [24]  865 	mov	dptr,#_ow_write_bit_dev_65536_183
      0001EF F0               [24]  866 	movx	@dptr,a
      0001F0 EE               [12]  867 	mov	a,r6
      0001F1 A3               [24]  868 	inc	dptr
      0001F2 F0               [24]  869 	movx	@dptr,a
      0001F3 EF               [12]  870 	mov	a,r7
      0001F4 A3               [24]  871 	inc	dptr
      0001F5 F0               [24]  872 	movx	@dptr,a
                                    873 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:42: EA = 0;
                                    874 ;	assignBit
      0001F6 C2 AF            [12]  875 	clr	_EA
                                    876 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:44: ow_drive_low(dev);
      0001F8 90 00 A1         [24]  877 	mov	dptr,#_ow_write_bit_dev_65536_183
      0001FB E0               [24]  878 	movx	a,@dptr
      0001FC FD               [12]  879 	mov	r5,a
      0001FD A3               [24]  880 	inc	dptr
      0001FE E0               [24]  881 	movx	a,@dptr
      0001FF FE               [12]  882 	mov	r6,a
      000200 A3               [24]  883 	inc	dptr
      000201 E0               [24]  884 	movx	a,@dptr
      000202 FF               [12]  885 	mov	r7,a
      000203 8D 82            [24]  886 	mov	dpl,r5
      000205 8E 83            [24]  887 	mov	dph,r6
      000207 8F F0            [24]  888 	mov	b,r7
      000209 12 00 E8         [24]  889 	lcall	_ow_drive_low
                                    890 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:45: delayMicroseconds(2);
      00020C 90 00 02         [24]  891 	mov	dptr,#0x0002
      00020F 12 24 E5         [24]  892 	lcall	_delayMicroseconds
                                    893 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:46: if (bitv) {
      000212 90 00 A0         [24]  894 	mov	dptr,#_ow_write_bit_PARM_2
      000215 E0               [24]  895 	movx	a,@dptr
      000216 60 16            [24]  896 	jz	00102$
                                    897 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:47: ow_release_bus(dev);
      000218 90 00 A1         [24]  898 	mov	dptr,#_ow_write_bit_dev_65536_183
      00021B E0               [24]  899 	movx	a,@dptr
      00021C FD               [12]  900 	mov	r5,a
      00021D A3               [24]  901 	inc	dptr
      00021E E0               [24]  902 	movx	a,@dptr
      00021F FE               [12]  903 	mov	r6,a
      000220 A3               [24]  904 	inc	dptr
      000221 E0               [24]  905 	movx	a,@dptr
      000222 FF               [12]  906 	mov	r7,a
      000223 8D 82            [24]  907 	mov	dpl,r5
      000225 8E 83            [24]  908 	mov	dph,r6
      000227 8F F0            [24]  909 	mov	b,r7
      000229 12 01 17         [24]  910 	lcall	_ow_release_bus
      00022C 80 14            [24]  911 	sjmp	00103$
      00022E                        912 00102$:
                                    913 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:49: ow_drive_low(dev);
      00022E 90 00 A1         [24]  914 	mov	dptr,#_ow_write_bit_dev_65536_183
      000231 E0               [24]  915 	movx	a,@dptr
      000232 FD               [12]  916 	mov	r5,a
      000233 A3               [24]  917 	inc	dptr
      000234 E0               [24]  918 	movx	a,@dptr
      000235 FE               [12]  919 	mov	r6,a
      000236 A3               [24]  920 	inc	dptr
      000237 E0               [24]  921 	movx	a,@dptr
      000238 FF               [12]  922 	mov	r7,a
      000239 8D 82            [24]  923 	mov	dpl,r5
      00023B 8E 83            [24]  924 	mov	dph,r6
      00023D 8F F0            [24]  925 	mov	b,r7
      00023F 12 00 E8         [24]  926 	lcall	_ow_drive_low
      000242                        927 00103$:
                                    928 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:51: delayMicroseconds(60);
      000242 90 00 3C         [24]  929 	mov	dptr,#0x003c
      000245 12 24 E5         [24]  930 	lcall	_delayMicroseconds
                                    931 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:52: ow_release_bus(dev);
      000248 90 00 A1         [24]  932 	mov	dptr,#_ow_write_bit_dev_65536_183
      00024B E0               [24]  933 	movx	a,@dptr
      00024C FD               [12]  934 	mov	r5,a
      00024D A3               [24]  935 	inc	dptr
      00024E E0               [24]  936 	movx	a,@dptr
      00024F FE               [12]  937 	mov	r6,a
      000250 A3               [24]  938 	inc	dptr
      000251 E0               [24]  939 	movx	a,@dptr
      000252 FF               [12]  940 	mov	r7,a
      000253 8D 82            [24]  941 	mov	dpl,r5
      000255 8E 83            [24]  942 	mov	dph,r6
      000257 8F F0            [24]  943 	mov	b,r7
      000259 12 01 17         [24]  944 	lcall	_ow_release_bus
                                    945 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:54: EA = 1;
                                    946 ;	assignBit
      00025C D2 AF            [12]  947 	setb	_EA
                                    948 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:56: delayMicroseconds(2);
      00025E 90 00 02         [24]  949 	mov	dptr,#0x0002
                                    950 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:57: }
      000261 02 24 E5         [24]  951 	ljmp	_delayMicroseconds
                                    952 ;------------------------------------------------------------
                                    953 ;Allocation info for local variables in function 'ow_read_bit'
                                    954 ;------------------------------------------------------------
                                    955 ;dev                       Allocated with name '_ow_read_bit_dev_65536_187'
                                    956 ;bitv                      Allocated with name '_ow_read_bit_bitv_65536_188'
                                    957 ;------------------------------------------------------------
                                    958 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:59: static uint8_t ow_read_bit(DS18B20* dev) {
                                    959 ;	-----------------------------------------
                                    960 ;	 function ow_read_bit
                                    961 ;	-----------------------------------------
      000264                        962 _ow_read_bit:
      000264 AF F0            [24]  963 	mov	r7,b
      000266 AE 83            [24]  964 	mov	r6,dph
      000268 E5 82            [12]  965 	mov	a,dpl
      00026A 90 00 A4         [24]  966 	mov	dptr,#_ow_read_bit_dev_65536_187
      00026D F0               [24]  967 	movx	@dptr,a
      00026E EE               [12]  968 	mov	a,r6
      00026F A3               [24]  969 	inc	dptr
      000270 F0               [24]  970 	movx	@dptr,a
      000271 EF               [12]  971 	mov	a,r7
      000272 A3               [24]  972 	inc	dptr
      000273 F0               [24]  973 	movx	@dptr,a
                                    974 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:63: EA = 0;
                                    975 ;	assignBit
      000274 C2 AF            [12]  976 	clr	_EA
                                    977 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:65: ow_drive_low(dev);
      000276 90 00 A4         [24]  978 	mov	dptr,#_ow_read_bit_dev_65536_187
      000279 E0               [24]  979 	movx	a,@dptr
      00027A FD               [12]  980 	mov	r5,a
      00027B A3               [24]  981 	inc	dptr
      00027C E0               [24]  982 	movx	a,@dptr
      00027D FE               [12]  983 	mov	r6,a
      00027E A3               [24]  984 	inc	dptr
      00027F E0               [24]  985 	movx	a,@dptr
      000280 FF               [12]  986 	mov	r7,a
      000281 8D 82            [24]  987 	mov	dpl,r5
      000283 8E 83            [24]  988 	mov	dph,r6
      000285 8F F0            [24]  989 	mov	b,r7
      000287 12 00 E8         [24]  990 	lcall	_ow_drive_low
                                    991 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:66: delayMicroseconds(2);
      00028A 90 00 02         [24]  992 	mov	dptr,#0x0002
      00028D 12 24 E5         [24]  993 	lcall	_delayMicroseconds
                                    994 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:67: ow_release_bus(dev);
      000290 90 00 A4         [24]  995 	mov	dptr,#_ow_read_bit_dev_65536_187
      000293 E0               [24]  996 	movx	a,@dptr
      000294 FD               [12]  997 	mov	r5,a
      000295 A3               [24]  998 	inc	dptr
      000296 E0               [24]  999 	movx	a,@dptr
      000297 FE               [12] 1000 	mov	r6,a
      000298 A3               [24] 1001 	inc	dptr
      000299 E0               [24] 1002 	movx	a,@dptr
      00029A FF               [12] 1003 	mov	r7,a
      00029B 8D 82            [24] 1004 	mov	dpl,r5
      00029D 8E 83            [24] 1005 	mov	dph,r6
      00029F 8F F0            [24] 1006 	mov	b,r7
      0002A1 12 01 17         [24] 1007 	lcall	_ow_release_bus
                                   1008 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:68: delayMicroseconds(12);
      0002A4 90 00 0C         [24] 1009 	mov	dptr,#0x000c
      0002A7 12 24 E5         [24] 1010 	lcall	_delayMicroseconds
                                   1011 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:70: bitv = ow_read_bus(dev) ? 1 : 0;
      0002AA 90 00 A4         [24] 1012 	mov	dptr,#_ow_read_bit_dev_65536_187
      0002AD E0               [24] 1013 	movx	a,@dptr
      0002AE FD               [12] 1014 	mov	r5,a
      0002AF A3               [24] 1015 	inc	dptr
      0002B0 E0               [24] 1016 	movx	a,@dptr
      0002B1 FE               [12] 1017 	mov	r6,a
      0002B2 A3               [24] 1018 	inc	dptr
      0002B3 E0               [24] 1019 	movx	a,@dptr
      0002B4 FF               [12] 1020 	mov	r7,a
      0002B5 8D 82            [24] 1021 	mov	dpl,r5
      0002B7 8E 83            [24] 1022 	mov	dph,r6
      0002B9 8F F0            [24] 1023 	mov	b,r7
      0002BB 12 01 47         [24] 1024 	lcall	_ow_read_bus
      0002BE E5 82            [12] 1025 	mov	a,dpl
      0002C0 60 06            [24] 1026 	jz	00103$
      0002C2 7E 01            [12] 1027 	mov	r6,#0x01
      0002C4 7F 00            [12] 1028 	mov	r7,#0x00
      0002C6 80 04            [24] 1029 	sjmp	00104$
      0002C8                       1030 00103$:
      0002C8 7E 00            [12] 1031 	mov	r6,#0x00
      0002CA 7F 00            [12] 1032 	mov	r7,#0x00
      0002CC                       1033 00104$:
                                   1034 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:72: EA = 1;
                                   1035 ;	assignBit
      0002CC D2 AF            [12] 1036 	setb	_EA
                                   1037 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:74: delayMicroseconds(50);
      0002CE 90 00 32         [24] 1038 	mov	dptr,#0x0032
      0002D1 C0 06            [24] 1039 	push	ar6
      0002D3 12 24 E5         [24] 1040 	lcall	_delayMicroseconds
      0002D6 D0 06            [24] 1041 	pop	ar6
                                   1042 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:75: return bitv;
      0002D8 8E 82            [24] 1043 	mov	dpl,r6
                                   1044 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:76: }
      0002DA 22               [24] 1045 	ret
                                   1046 ;------------------------------------------------------------
                                   1047 ;Allocation info for local variables in function 'ow_write_byte'
                                   1048 ;------------------------------------------------------------
                                   1049 ;v                         Allocated with name '_ow_write_byte_PARM_2'
                                   1050 ;dev                       Allocated with name '_ow_write_byte_dev_65536_189'
                                   1051 ;i                         Allocated with name '_ow_write_byte_i_65536_190'
                                   1052 ;------------------------------------------------------------
                                   1053 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:78: static void ow_write_byte(DS18B20* dev, uint8_t v) {
                                   1054 ;	-----------------------------------------
                                   1055 ;	 function ow_write_byte
                                   1056 ;	-----------------------------------------
      0002DB                       1057 _ow_write_byte:
      0002DB AF F0            [24] 1058 	mov	r7,b
      0002DD AE 83            [24] 1059 	mov	r6,dph
      0002DF E5 82            [12] 1060 	mov	a,dpl
      0002E1 90 00 A8         [24] 1061 	mov	dptr,#_ow_write_byte_dev_65536_189
      0002E4 F0               [24] 1062 	movx	@dptr,a
      0002E5 EE               [12] 1063 	mov	a,r6
      0002E6 A3               [24] 1064 	inc	dptr
      0002E7 F0               [24] 1065 	movx	@dptr,a
      0002E8 EF               [12] 1066 	mov	a,r7
      0002E9 A3               [24] 1067 	inc	dptr
      0002EA F0               [24] 1068 	movx	@dptr,a
                                   1069 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:80: for (i = 0; i < 8; i++) {
      0002EB 7F 00            [12] 1070 	mov	r7,#0x00
      0002ED                       1071 00102$:
                                   1072 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:81: ow_write_bit(dev, v & 0x01);
      0002ED 90 00 A8         [24] 1073 	mov	dptr,#_ow_write_byte_dev_65536_189
      0002F0 E0               [24] 1074 	movx	a,@dptr
      0002F1 FC               [12] 1075 	mov	r4,a
      0002F2 A3               [24] 1076 	inc	dptr
      0002F3 E0               [24] 1077 	movx	a,@dptr
      0002F4 FD               [12] 1078 	mov	r5,a
      0002F5 A3               [24] 1079 	inc	dptr
      0002F6 E0               [24] 1080 	movx	a,@dptr
      0002F7 FE               [12] 1081 	mov	r6,a
      0002F8 90 00 A7         [24] 1082 	mov	dptr,#_ow_write_byte_PARM_2
      0002FB E0               [24] 1083 	movx	a,@dptr
      0002FC FB               [12] 1084 	mov	r3,a
      0002FD 90 00 A0         [24] 1085 	mov	dptr,#_ow_write_bit_PARM_2
      000300 74 01            [12] 1086 	mov	a,#0x01
      000302 5B               [12] 1087 	anl	a,r3
      000303 F0               [24] 1088 	movx	@dptr,a
      000304 8C 82            [24] 1089 	mov	dpl,r4
      000306 8D 83            [24] 1090 	mov	dph,r5
      000308 8E F0            [24] 1091 	mov	b,r6
      00030A C0 07            [24] 1092 	push	ar7
      00030C C0 03            [24] 1093 	push	ar3
      00030E 12 01 E6         [24] 1094 	lcall	_ow_write_bit
      000311 D0 03            [24] 1095 	pop	ar3
      000313 D0 07            [24] 1096 	pop	ar7
                                   1097 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:82: v >>= 1;
      000315 EB               [12] 1098 	mov	a,r3
      000316 C3               [12] 1099 	clr	c
      000317 13               [12] 1100 	rrc	a
      000318 90 00 A7         [24] 1101 	mov	dptr,#_ow_write_byte_PARM_2
      00031B F0               [24] 1102 	movx	@dptr,a
                                   1103 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:80: for (i = 0; i < 8; i++) {
      00031C 0F               [12] 1104 	inc	r7
      00031D BF 08 00         [24] 1105 	cjne	r7,#0x08,00111$
      000320                       1106 00111$:
      000320 40 CB            [24] 1107 	jc	00102$
                                   1108 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:84: }
      000322 22               [24] 1109 	ret
                                   1110 ;------------------------------------------------------------
                                   1111 ;Allocation info for local variables in function 'ow_read_byte'
                                   1112 ;------------------------------------------------------------
                                   1113 ;dev                       Allocated with name '_ow_read_byte_dev_65536_193'
                                   1114 ;i                         Allocated with name '_ow_read_byte_i_65536_194'
                                   1115 ;v                         Allocated with name '_ow_read_byte_v_65536_194'
                                   1116 ;------------------------------------------------------------
                                   1117 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:86: static uint8_t ow_read_byte(DS18B20* dev) {
                                   1118 ;	-----------------------------------------
                                   1119 ;	 function ow_read_byte
                                   1120 ;	-----------------------------------------
      000323                       1121 _ow_read_byte:
      000323 AF F0            [24] 1122 	mov	r7,b
      000325 AE 83            [24] 1123 	mov	r6,dph
      000327 E5 82            [12] 1124 	mov	a,dpl
      000329 90 00 AB         [24] 1125 	mov	dptr,#_ow_read_byte_dev_65536_193
      00032C F0               [24] 1126 	movx	@dptr,a
      00032D EE               [12] 1127 	mov	a,r6
      00032E A3               [24] 1128 	inc	dptr
      00032F F0               [24] 1129 	movx	@dptr,a
      000330 EF               [12] 1130 	mov	a,r7
      000331 A3               [24] 1131 	inc	dptr
      000332 F0               [24] 1132 	movx	@dptr,a
                                   1133 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:88: uint8_t v = 0;
      000333 90 00 AE         [24] 1134 	mov	dptr,#_ow_read_byte_v_65536_194
      000336 E4               [12] 1135 	clr	a
      000337 F0               [24] 1136 	movx	@dptr,a
                                   1137 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:89: for (i = 0; i < 8; i++) {
      000338 7F 00            [12] 1138 	mov	r7,#0x00
      00033A                       1139 00104$:
                                   1140 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:90: if (ow_read_bit(dev)) {
      00033A 90 00 AB         [24] 1141 	mov	dptr,#_ow_read_byte_dev_65536_193
      00033D E0               [24] 1142 	movx	a,@dptr
      00033E FC               [12] 1143 	mov	r4,a
      00033F A3               [24] 1144 	inc	dptr
      000340 E0               [24] 1145 	movx	a,@dptr
      000341 FD               [12] 1146 	mov	r5,a
      000342 A3               [24] 1147 	inc	dptr
      000343 E0               [24] 1148 	movx	a,@dptr
      000344 FE               [12] 1149 	mov	r6,a
      000345 8C 82            [24] 1150 	mov	dpl,r4
      000347 8D 83            [24] 1151 	mov	dph,r5
      000349 8E F0            [24] 1152 	mov	b,r6
      00034B C0 07            [24] 1153 	push	ar7
      00034D 12 02 64         [24] 1154 	lcall	_ow_read_bit
      000350 E5 82            [12] 1155 	mov	a,dpl
      000352 D0 07            [24] 1156 	pop	ar7
      000354 60 14            [24] 1157 	jz	00105$
                                   1158 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:91: v |= (uint8_t)(1u << i);
      000356 8F F0            [24] 1159 	mov	b,r7
      000358 05 F0            [12] 1160 	inc	b
      00035A 74 01            [12] 1161 	mov	a,#0x01
      00035C 80 02            [24] 1162 	sjmp	00124$
      00035E                       1163 00122$:
      00035E 25 E0            [12] 1164 	add	a,acc
      000360                       1165 00124$:
      000360 D5 F0 FB         [24] 1166 	djnz	b,00122$
      000363 FE               [12] 1167 	mov	r6,a
      000364 90 00 AE         [24] 1168 	mov	dptr,#_ow_read_byte_v_65536_194
      000367 E0               [24] 1169 	movx	a,@dptr
      000368 4E               [12] 1170 	orl	a,r6
      000369 F0               [24] 1171 	movx	@dptr,a
      00036A                       1172 00105$:
                                   1173 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:89: for (i = 0; i < 8; i++) {
      00036A 0F               [12] 1174 	inc	r7
      00036B BF 08 00         [24] 1175 	cjne	r7,#0x08,00125$
      00036E                       1176 00125$:
      00036E 40 CA            [24] 1177 	jc	00104$
                                   1178 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:94: return v;
      000370 90 00 AE         [24] 1179 	mov	dptr,#_ow_read_byte_v_65536_194
      000373 E0               [24] 1180 	movx	a,@dptr
                                   1181 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:95: }
      000374 F5 82            [12] 1182 	mov	dpl,a
      000376 22               [24] 1183 	ret
                                   1184 ;------------------------------------------------------------
                                   1185 ;Allocation info for local variables in function 'DS18B20_init'
                                   1186 ;------------------------------------------------------------
                                   1187 ;data_pin                  Allocated with name '_DS18B20_init_PARM_2'
                                   1188 ;dev                       Allocated with name '_DS18B20_init_dev_65536_198'
                                   1189 ;------------------------------------------------------------
                                   1190 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:97: void DS18B20_init(DS18B20* dev, uint8_t data_pin) {
                                   1191 ;	-----------------------------------------
                                   1192 ;	 function DS18B20_init
                                   1193 ;	-----------------------------------------
      000377                       1194 _DS18B20_init:
      000377 AF F0            [24] 1195 	mov	r7,b
      000379 AE 83            [24] 1196 	mov	r6,dph
      00037B E5 82            [12] 1197 	mov	a,dpl
      00037D 90 00 B0         [24] 1198 	mov	dptr,#_DS18B20_init_dev_65536_198
      000380 F0               [24] 1199 	movx	@dptr,a
      000381 EE               [12] 1200 	mov	a,r6
      000382 A3               [24] 1201 	inc	dptr
      000383 F0               [24] 1202 	movx	@dptr,a
      000384 EF               [12] 1203 	mov	a,r7
      000385 A3               [24] 1204 	inc	dptr
      000386 F0               [24] 1205 	movx	@dptr,a
                                   1206 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:98: dev->pin = data_pin;
      000387 90 00 B0         [24] 1207 	mov	dptr,#_DS18B20_init_dev_65536_198
      00038A E0               [24] 1208 	movx	a,@dptr
      00038B FD               [12] 1209 	mov	r5,a
      00038C A3               [24] 1210 	inc	dptr
      00038D E0               [24] 1211 	movx	a,@dptr
      00038E FE               [12] 1212 	mov	r6,a
      00038F A3               [24] 1213 	inc	dptr
      000390 E0               [24] 1214 	movx	a,@dptr
      000391 FF               [12] 1215 	mov	r7,a
      000392 90 00 AF         [24] 1216 	mov	dptr,#_DS18B20_init_PARM_2
      000395 E0               [24] 1217 	movx	a,@dptr
      000396 8D 82            [24] 1218 	mov	dpl,r5
      000398 8E 83            [24] 1219 	mov	dph,r6
      00039A 8F F0            [24] 1220 	mov	b,r7
                                   1221 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:99: }
      00039C 02 2B 0B         [24] 1222 	ljmp	__gptrput
                                   1223 ;------------------------------------------------------------
                                   1224 ;Allocation info for local variables in function 'DS18B20_begin'
                                   1225 ;------------------------------------------------------------
                                   1226 ;dev                       Allocated with name '_DS18B20_begin_dev_65536_200'
                                   1227 ;------------------------------------------------------------
                                   1228 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:101: void DS18B20_begin(DS18B20* dev) {
                                   1229 ;	-----------------------------------------
                                   1230 ;	 function DS18B20_begin
                                   1231 ;	-----------------------------------------
      00039F                       1232 _DS18B20_begin:
      00039F AF F0            [24] 1233 	mov	r7,b
      0003A1 AE 83            [24] 1234 	mov	r6,dph
      0003A3 E5 82            [12] 1235 	mov	a,dpl
      0003A5 90 00 B3         [24] 1236 	mov	dptr,#_DS18B20_begin_dev_65536_200
      0003A8 F0               [24] 1237 	movx	@dptr,a
      0003A9 EE               [12] 1238 	mov	a,r6
      0003AA A3               [24] 1239 	inc	dptr
      0003AB F0               [24] 1240 	movx	@dptr,a
      0003AC EF               [12] 1241 	mov	a,r7
      0003AD A3               [24] 1242 	inc	dptr
      0003AE F0               [24] 1243 	movx	@dptr,a
                                   1244 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:102: pinMode(dev->pin, OUTPUT_OD);
      0003AF 90 00 B3         [24] 1245 	mov	dptr,#_DS18B20_begin_dev_65536_200
      0003B2 E0               [24] 1246 	movx	a,@dptr
      0003B3 FD               [12] 1247 	mov	r5,a
      0003B4 A3               [24] 1248 	inc	dptr
      0003B5 E0               [24] 1249 	movx	a,@dptr
      0003B6 FE               [12] 1250 	mov	r6,a
      0003B7 A3               [24] 1251 	inc	dptr
      0003B8 E0               [24] 1252 	movx	a,@dptr
      0003B9 FF               [12] 1253 	mov	r7,a
      0003BA 8D 82            [24] 1254 	mov	dpl,r5
      0003BC 8E 83            [24] 1255 	mov	dph,r6
      0003BE 8F F0            [24] 1256 	mov	b,r7
      0003C0 12 31 2B         [24] 1257 	lcall	__gptrget
      0003C3 FC               [12] 1258 	mov	r4,a
      0003C4 90 01 FD         [24] 1259 	mov	dptr,#_pinMode_PARM_2
      0003C7 74 03            [12] 1260 	mov	a,#0x03
      0003C9 F0               [24] 1261 	movx	@dptr,a
      0003CA 8C 82            [24] 1262 	mov	dpl,r4
      0003CC C0 07            [24] 1263 	push	ar7
      0003CE C0 06            [24] 1264 	push	ar6
      0003D0 C0 05            [24] 1265 	push	ar5
      0003D2 12 21 7E         [24] 1266 	lcall	_pinMode
      0003D5 D0 05            [24] 1267 	pop	ar5
      0003D7 D0 06            [24] 1268 	pop	ar6
      0003D9 D0 07            [24] 1269 	pop	ar7
                                   1270 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:103: ow_release_bus(dev);
      0003DB 8D 82            [24] 1271 	mov	dpl,r5
      0003DD 8E 83            [24] 1272 	mov	dph,r6
      0003DF 8F F0            [24] 1273 	mov	b,r7
                                   1274 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:104: }
      0003E1 02 01 17         [24] 1275 	ljmp	_ow_release_bus
                                   1276 ;------------------------------------------------------------
                                   1277 ;Allocation info for local variables in function 'DS18B20_readTemperatureFast'
                                   1278 ;------------------------------------------------------------
                                   1279 ;dev                       Allocated with name '_DS18B20_readTemperatureFast_dev_65536_202'
                                   1280 ;raw                       Allocated with name '_DS18B20_readTemperatureFast_raw_65536_203'
                                   1281 ;temp_low                  Allocated with name '_DS18B20_readTemperatureFast_temp_low_65536_203'
                                   1282 ;temp_high                 Allocated with name '_DS18B20_readTemperatureFast_temp_high_65536_203'
                                   1283 ;------------------------------------------------------------
                                   1284 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:106: float DS18B20_readTemperatureFast(DS18B20* dev) {
                                   1285 ;	-----------------------------------------
                                   1286 ;	 function DS18B20_readTemperatureFast
                                   1287 ;	-----------------------------------------
      0003E4                       1288 _DS18B20_readTemperatureFast:
      0003E4 AF F0            [24] 1289 	mov	r7,b
      0003E6 AE 83            [24] 1290 	mov	r6,dph
      0003E8 E5 82            [12] 1291 	mov	a,dpl
      0003EA 90 00 B6         [24] 1292 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      0003ED F0               [24] 1293 	movx	@dptr,a
      0003EE EE               [12] 1294 	mov	a,r6
      0003EF A3               [24] 1295 	inc	dptr
      0003F0 F0               [24] 1296 	movx	@dptr,a
      0003F1 EF               [12] 1297 	mov	a,r7
      0003F2 A3               [24] 1298 	inc	dptr
      0003F3 F0               [24] 1299 	movx	@dptr,a
                                   1300 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:111: if (!ow_reset(dev)) {
      0003F4 90 00 B6         [24] 1301 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      0003F7 E0               [24] 1302 	movx	a,@dptr
      0003F8 FD               [12] 1303 	mov	r5,a
      0003F9 A3               [24] 1304 	inc	dptr
      0003FA E0               [24] 1305 	movx	a,@dptr
      0003FB FE               [12] 1306 	mov	r6,a
      0003FC A3               [24] 1307 	inc	dptr
      0003FD E0               [24] 1308 	movx	a,@dptr
      0003FE FF               [12] 1309 	mov	r7,a
      0003FF 8D 82            [24] 1310 	mov	dpl,r5
      000401 8E 83            [24] 1311 	mov	dph,r6
      000403 8F F0            [24] 1312 	mov	b,r7
      000405 12 01 70         [24] 1313 	lcall	_ow_reset
      000408 E5 82            [12] 1314 	mov	a,dpl
      00040A 70 09            [24] 1315 	jnz	00102$
                                   1316 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:112: return -999.0f;
      00040C 90 C0 00         [24] 1317 	mov	dptr,#0xc000
      00040F 75 F0 79         [24] 1318 	mov	b,#0x79
      000412 74 C4            [12] 1319 	mov	a,#0xc4
      000414 22               [24] 1320 	ret
      000415                       1321 00102$:
                                   1322 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:115: ow_write_byte(dev, DS18B20_CMD_SKIP_ROM);
      000415 90 00 B6         [24] 1323 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      000418 E0               [24] 1324 	movx	a,@dptr
      000419 FD               [12] 1325 	mov	r5,a
      00041A A3               [24] 1326 	inc	dptr
      00041B E0               [24] 1327 	movx	a,@dptr
      00041C FE               [12] 1328 	mov	r6,a
      00041D A3               [24] 1329 	inc	dptr
      00041E E0               [24] 1330 	movx	a,@dptr
      00041F FF               [12] 1331 	mov	r7,a
      000420 90 00 A7         [24] 1332 	mov	dptr,#_ow_write_byte_PARM_2
      000423 74 CC            [12] 1333 	mov	a,#0xcc
      000425 F0               [24] 1334 	movx	@dptr,a
      000426 8D 82            [24] 1335 	mov	dpl,r5
      000428 8E 83            [24] 1336 	mov	dph,r6
      00042A 8F F0            [24] 1337 	mov	b,r7
      00042C 12 02 DB         [24] 1338 	lcall	_ow_write_byte
                                   1339 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:116: ow_write_byte(dev, DS18B20_CMD_CONVERT);
      00042F 90 00 B6         [24] 1340 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      000432 E0               [24] 1341 	movx	a,@dptr
      000433 FD               [12] 1342 	mov	r5,a
      000434 A3               [24] 1343 	inc	dptr
      000435 E0               [24] 1344 	movx	a,@dptr
      000436 FE               [12] 1345 	mov	r6,a
      000437 A3               [24] 1346 	inc	dptr
      000438 E0               [24] 1347 	movx	a,@dptr
      000439 FF               [12] 1348 	mov	r7,a
      00043A 90 00 A7         [24] 1349 	mov	dptr,#_ow_write_byte_PARM_2
      00043D 74 44            [12] 1350 	mov	a,#0x44
      00043F F0               [24] 1351 	movx	@dptr,a
      000440 8D 82            [24] 1352 	mov	dpl,r5
      000442 8E 83            [24] 1353 	mov	dph,r6
      000444 8F F0            [24] 1354 	mov	b,r7
      000446 12 02 DB         [24] 1355 	lcall	_ow_write_byte
                                   1356 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:117: delay(750);
      000449 90 02 EE         [24] 1357 	mov	dptr,#0x02ee
      00044C E4               [12] 1358 	clr	a
      00044D F5 F0            [12] 1359 	mov	b,a
      00044F 12 24 34         [24] 1360 	lcall	_delay
                                   1361 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:119: if (!ow_reset(dev)) {
      000452 90 00 B6         [24] 1362 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      000455 E0               [24] 1363 	movx	a,@dptr
      000456 FD               [12] 1364 	mov	r5,a
      000457 A3               [24] 1365 	inc	dptr
      000458 E0               [24] 1366 	movx	a,@dptr
      000459 FE               [12] 1367 	mov	r6,a
      00045A A3               [24] 1368 	inc	dptr
      00045B E0               [24] 1369 	movx	a,@dptr
      00045C FF               [12] 1370 	mov	r7,a
      00045D 8D 82            [24] 1371 	mov	dpl,r5
      00045F 8E 83            [24] 1372 	mov	dph,r6
      000461 8F F0            [24] 1373 	mov	b,r7
      000463 12 01 70         [24] 1374 	lcall	_ow_reset
      000466 E5 82            [12] 1375 	mov	a,dpl
      000468 70 09            [24] 1376 	jnz	00104$
                                   1377 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:120: return -999.0f;
      00046A 90 C0 00         [24] 1378 	mov	dptr,#0xc000
      00046D 75 F0 79         [24] 1379 	mov	b,#0x79
      000470 74 C4            [12] 1380 	mov	a,#0xc4
      000472 22               [24] 1381 	ret
      000473                       1382 00104$:
                                   1383 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:123: ow_write_byte(dev, DS18B20_CMD_SKIP_ROM);
      000473 90 00 B6         [24] 1384 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      000476 E0               [24] 1385 	movx	a,@dptr
      000477 FD               [12] 1386 	mov	r5,a
      000478 A3               [24] 1387 	inc	dptr
      000479 E0               [24] 1388 	movx	a,@dptr
      00047A FE               [12] 1389 	mov	r6,a
      00047B A3               [24] 1390 	inc	dptr
      00047C E0               [24] 1391 	movx	a,@dptr
      00047D FF               [12] 1392 	mov	r7,a
      00047E 90 00 A7         [24] 1393 	mov	dptr,#_ow_write_byte_PARM_2
      000481 74 CC            [12] 1394 	mov	a,#0xcc
      000483 F0               [24] 1395 	movx	@dptr,a
      000484 8D 82            [24] 1396 	mov	dpl,r5
      000486 8E 83            [24] 1397 	mov	dph,r6
      000488 8F F0            [24] 1398 	mov	b,r7
      00048A 12 02 DB         [24] 1399 	lcall	_ow_write_byte
                                   1400 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:124: ow_write_byte(dev, DS18B20_CMD_READ_SCRATCHPAD);
      00048D 90 00 B6         [24] 1401 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      000490 E0               [24] 1402 	movx	a,@dptr
      000491 FD               [12] 1403 	mov	r5,a
      000492 A3               [24] 1404 	inc	dptr
      000493 E0               [24] 1405 	movx	a,@dptr
      000494 FE               [12] 1406 	mov	r6,a
      000495 A3               [24] 1407 	inc	dptr
      000496 E0               [24] 1408 	movx	a,@dptr
      000497 FF               [12] 1409 	mov	r7,a
      000498 90 00 A7         [24] 1410 	mov	dptr,#_ow_write_byte_PARM_2
      00049B 74 BE            [12] 1411 	mov	a,#0xbe
      00049D F0               [24] 1412 	movx	@dptr,a
      00049E 8D 82            [24] 1413 	mov	dpl,r5
      0004A0 8E 83            [24] 1414 	mov	dph,r6
      0004A2 8F F0            [24] 1415 	mov	b,r7
      0004A4 12 02 DB         [24] 1416 	lcall	_ow_write_byte
                                   1417 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:125: temp_low = ow_read_byte(dev);
      0004A7 90 00 B6         [24] 1418 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      0004AA E0               [24] 1419 	movx	a,@dptr
      0004AB FD               [12] 1420 	mov	r5,a
      0004AC A3               [24] 1421 	inc	dptr
      0004AD E0               [24] 1422 	movx	a,@dptr
      0004AE FE               [12] 1423 	mov	r6,a
      0004AF A3               [24] 1424 	inc	dptr
      0004B0 E0               [24] 1425 	movx	a,@dptr
      0004B1 FF               [12] 1426 	mov	r7,a
      0004B2 8D 82            [24] 1427 	mov	dpl,r5
      0004B4 8E 83            [24] 1428 	mov	dph,r6
      0004B6 8F F0            [24] 1429 	mov	b,r7
      0004B8 12 03 23         [24] 1430 	lcall	_ow_read_byte
      0004BB AF 82            [24] 1431 	mov	r7,dpl
                                   1432 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:126: temp_high = ow_read_byte(dev);
      0004BD 90 00 B6         [24] 1433 	mov	dptr,#_DS18B20_readTemperatureFast_dev_65536_202
      0004C0 E0               [24] 1434 	movx	a,@dptr
      0004C1 FC               [12] 1435 	mov	r4,a
      0004C2 A3               [24] 1436 	inc	dptr
      0004C3 E0               [24] 1437 	movx	a,@dptr
      0004C4 FD               [12] 1438 	mov	r5,a
      0004C5 A3               [24] 1439 	inc	dptr
      0004C6 E0               [24] 1440 	movx	a,@dptr
      0004C7 FE               [12] 1441 	mov	r6,a
      0004C8 8C 82            [24] 1442 	mov	dpl,r4
      0004CA 8D 83            [24] 1443 	mov	dph,r5
      0004CC 8E F0            [24] 1444 	mov	b,r6
      0004CE C0 07            [24] 1445 	push	ar7
      0004D0 12 03 23         [24] 1446 	lcall	_ow_read_byte
      0004D3 AE 82            [24] 1447 	mov	r6,dpl
      0004D5 D0 07            [24] 1448 	pop	ar7
                                   1449 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:127: raw = (int16_t)(((uint16_t)temp_high << 8) | temp_low);
      0004D7 8E 05            [24] 1450 	mov	ar5,r6
      0004D9 E4               [12] 1451 	clr	a
      0004DA FE               [12] 1452 	mov	r6,a
      0004DB FC               [12] 1453 	mov	r4,a
      0004DC EF               [12] 1454 	mov	a,r7
      0004DD 42 06            [12] 1455 	orl	ar6,a
      0004DF EC               [12] 1456 	mov	a,r4
      0004E0 42 05            [12] 1457 	orl	ar5,a
                                   1458 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:129: if (raw == (int16_t)0xFFFF || raw == (int16_t)0x0550 || raw == (int16_t)0x0000) {
      0004E2 BE FF 05         [24] 1459 	cjne	r6,#0xff,00129$
      0004E5 BD FF 02         [24] 1460 	cjne	r5,#0xff,00129$
      0004E8 80 0C            [24] 1461 	sjmp	00105$
      0004EA                       1462 00129$:
      0004EA BE 50 05         [24] 1463 	cjne	r6,#0x50,00130$
      0004ED BD 05 02         [24] 1464 	cjne	r5,#0x05,00130$
      0004F0 80 04            [24] 1465 	sjmp	00105$
      0004F2                       1466 00130$:
      0004F2 EE               [12] 1467 	mov	a,r6
      0004F3 4D               [12] 1468 	orl	a,r5
      0004F4 70 09            [24] 1469 	jnz	00106$
      0004F6                       1470 00105$:
                                   1471 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:130: return -999.0f;
      0004F6 90 C0 00         [24] 1472 	mov	dptr,#0xc000
      0004F9 75 F0 79         [24] 1473 	mov	b,#0x79
      0004FC 74 C4            [12] 1474 	mov	a,#0xc4
      0004FE 22               [24] 1475 	ret
      0004FF                       1476 00106$:
                                   1477 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:133: return (float)raw * 0.0625f;
      0004FF 8E 82            [24] 1478 	mov	dpl,r6
      000501 8D 83            [24] 1479 	mov	dph,r5
      000503 12 2F EA         [24] 1480 	lcall	___sint2fs
      000506 AC 82            [24] 1481 	mov	r4,dpl
      000508 AD 83            [24] 1482 	mov	r5,dph
      00050A AE F0            [24] 1483 	mov	r6,b
      00050C FF               [12] 1484 	mov	r7,a
      00050D C0 04            [24] 1485 	push	ar4
      00050F C0 05            [24] 1486 	push	ar5
      000511 C0 06            [24] 1487 	push	ar6
      000513 C0 07            [24] 1488 	push	ar7
      000515 90 00 00         [24] 1489 	mov	dptr,#0x0000
      000518 75 F0 80         [24] 1490 	mov	b,#0x80
      00051B 74 3D            [12] 1491 	mov	a,#0x3d
      00051D 12 1E C9         [24] 1492 	lcall	___fsmul
      000520 AC 82            [24] 1493 	mov	r4,dpl
      000522 AD 83            [24] 1494 	mov	r5,dph
      000524 AE F0            [24] 1495 	mov	r6,b
      000526 FF               [12] 1496 	mov	r7,a
      000527 E5 81            [12] 1497 	mov	a,sp
      000529 24 FC            [12] 1498 	add	a,#0xfc
      00052B F5 81            [12] 1499 	mov	sp,a
      00052D 8C 82            [24] 1500 	mov	dpl,r4
      00052F 8D 83            [24] 1501 	mov	dph,r5
      000531 8E F0            [24] 1502 	mov	b,r6
      000533 EF               [12] 1503 	mov	a,r7
                                   1504 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\ds18b20_port.c:134: }
      000534 22               [24] 1505 	ret
                                   1506 	.area CSEG    (CODE)
                                   1507 	.area CONST   (CODE)
                                   1508 	.area XINIT   (CODE)
                                   1509 	.area CABS    (ABS,CODE)
