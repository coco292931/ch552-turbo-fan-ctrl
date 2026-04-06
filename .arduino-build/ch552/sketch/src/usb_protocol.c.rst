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
                                     11 	.globl _serial_begin
                                     12 	.globl _UIF_BUS_RST
                                     13 	.globl _UIF_DETECT
                                     14 	.globl _UIF_TRANSFER
                                     15 	.globl _UIF_SUSPEND
                                     16 	.globl _UIF_HST_SOF
                                     17 	.globl _UIF_FIFO_OV
                                     18 	.globl _U_SIE_FREE
                                     19 	.globl _U_TOG_OK
                                     20 	.globl _U_IS_NAK
                                     21 	.globl _ADC_CHAN0
                                     22 	.globl _ADC_CHAN1
                                     23 	.globl _CMP_CHAN
                                     24 	.globl _ADC_START
                                     25 	.globl _ADC_IF
                                     26 	.globl _CMP_IF
                                     27 	.globl _CMPO
                                     28 	.globl _U1RI
                                     29 	.globl _U1TI
                                     30 	.globl _U1RB8
                                     31 	.globl _U1TB8
                                     32 	.globl _U1REN
                                     33 	.globl _U1SMOD
                                     34 	.globl _U1SM0
                                     35 	.globl _S0_R_FIFO
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
                                     67 	.globl _P3_0
                                     68 	.globl _P3_1
                                     69 	.globl _P3_2
                                     70 	.globl _P3_3
                                     71 	.globl _P3_4
                                     72 	.globl _P3_5
                                     73 	.globl _P3_6
                                     74 	.globl _P3_7
                                     75 	.globl _RXD
                                     76 	.globl _PWM1_
                                     77 	.globl _TXD
                                     78 	.globl _PWM2_
                                     79 	.globl _AIN3
                                     80 	.globl _VBUS1
                                     81 	.globl _INT0
                                     82 	.globl _TXD1_
                                     83 	.globl _INT1
                                     84 	.globl _T0
                                     85 	.globl _RXD1_
                                     86 	.globl _PWM2
                                     87 	.globl _T1
                                     88 	.globl _UDP
                                     89 	.globl _UDM
                                     90 	.globl _P1_0
                                     91 	.globl _P1_1
                                     92 	.globl _P1_2
                                     93 	.globl _P1_3
                                     94 	.globl _P1_4
                                     95 	.globl _P1_5
                                     96 	.globl _P1_6
                                     97 	.globl _P1_7
                                     98 	.globl _TIN0
                                     99 	.globl _CAP1
                                    100 	.globl _T2
                                    101 	.globl _AIN0
                                    102 	.globl _VBUS2
                                    103 	.globl _TIN1
                                    104 	.globl _CAP2
                                    105 	.globl _T2EX
                                    106 	.globl _RXD_
                                    107 	.globl _TXD_
                                    108 	.globl _AIN1
                                    109 	.globl _UCC1
                                    110 	.globl _TIN2
                                    111 	.globl _SCS
                                    112 	.globl _CAP1_
                                    113 	.globl _T2_
                                    114 	.globl _AIN2
                                    115 	.globl _UCC2
                                    116 	.globl _TIN3
                                    117 	.globl _PWM1
                                    118 	.globl _MOSI
                                    119 	.globl _TIN4
                                    120 	.globl _RXD1
                                    121 	.globl _MISO
                                    122 	.globl _TIN5
                                    123 	.globl _TXD1
                                    124 	.globl _SCK
                                    125 	.globl _IE_SPI0
                                    126 	.globl _IE_TKEY
                                    127 	.globl _IE_USB
                                    128 	.globl _IE_ADC
                                    129 	.globl _IE_UART1
                                    130 	.globl _IE_PWMX
                                    131 	.globl _IE_GPIO
                                    132 	.globl _IE_WDOG
                                    133 	.globl _PX0
                                    134 	.globl _PT0
                                    135 	.globl _PX1
                                    136 	.globl _PT1
                                    137 	.globl _PS
                                    138 	.globl _PT2
                                    139 	.globl _PL_FLAG
                                    140 	.globl _PH_FLAG
                                    141 	.globl _EX0
                                    142 	.globl _ET0
                                    143 	.globl _EX1
                                    144 	.globl _ET1
                                    145 	.globl _ES
                                    146 	.globl _ET2
                                    147 	.globl _E_DIS
                                    148 	.globl _EA
                                    149 	.globl _P
                                    150 	.globl _F1
                                    151 	.globl _OV
                                    152 	.globl _RS0
                                    153 	.globl _RS1
                                    154 	.globl _F0
                                    155 	.globl _AC
                                    156 	.globl _CY
                                    157 	.globl _UEP1_DMA_H
                                    158 	.globl _UEP1_DMA_L
                                    159 	.globl _UEP1_DMA
                                    160 	.globl _UEP0_DMA_H
                                    161 	.globl _UEP0_DMA_L
                                    162 	.globl _UEP0_DMA
                                    163 	.globl _UEP2_3_MOD
                                    164 	.globl _UEP4_1_MOD
                                    165 	.globl _UEP3_DMA_H
                                    166 	.globl _UEP3_DMA_L
                                    167 	.globl _UEP3_DMA
                                    168 	.globl _UEP2_DMA_H
                                    169 	.globl _UEP2_DMA_L
                                    170 	.globl _UEP2_DMA
                                    171 	.globl _USB_DEV_AD
                                    172 	.globl _USB_CTRL
                                    173 	.globl _USB_INT_EN
                                    174 	.globl _UEP4_T_LEN
                                    175 	.globl _UEP4_CTRL
                                    176 	.globl _UEP0_T_LEN
                                    177 	.globl _UEP0_CTRL
                                    178 	.globl _USB_RX_LEN
                                    179 	.globl _USB_MIS_ST
                                    180 	.globl _USB_INT_ST
                                    181 	.globl _USB_INT_FG
                                    182 	.globl _UEP3_T_LEN
                                    183 	.globl _UEP3_CTRL
                                    184 	.globl _UEP2_T_LEN
                                    185 	.globl _UEP2_CTRL
                                    186 	.globl _UEP1_T_LEN
                                    187 	.globl _UEP1_CTRL
                                    188 	.globl _UDEV_CTRL
                                    189 	.globl _USB_C_CTRL
                                    190 	.globl _TKEY_DATH
                                    191 	.globl _TKEY_DATL
                                    192 	.globl _TKEY_DAT
                                    193 	.globl _TKEY_CTRL
                                    194 	.globl _ADC_DATA
                                    195 	.globl _ADC_CFG
                                    196 	.globl _ADC_CTRL
                                    197 	.globl _SBAUD1
                                    198 	.globl _SBUF1
                                    199 	.globl _SCON1
                                    200 	.globl _SPI0_SETUP
                                    201 	.globl _SPI0_CK_SE
                                    202 	.globl _SPI0_CTRL
                                    203 	.globl _SPI0_DATA
                                    204 	.globl _SPI0_STAT
                                    205 	.globl _PWM_CK_SE
                                    206 	.globl _PWM_CTRL
                                    207 	.globl _PWM_DATA1
                                    208 	.globl _PWM_DATA2
                                    209 	.globl _T2CAP1H
                                    210 	.globl _T2CAP1L
                                    211 	.globl _T2CAP1
                                    212 	.globl _TH2
                                    213 	.globl _TL2
                                    214 	.globl _T2COUNT
                                    215 	.globl _RCAP2H
                                    216 	.globl _RCAP2L
                                    217 	.globl _RCAP2
                                    218 	.globl _T2MOD
                                    219 	.globl _T2CON
                                    220 	.globl _SBUF
                                    221 	.globl _SCON
                                    222 	.globl _TH1
                                    223 	.globl _TH0
                                    224 	.globl _TL1
                                    225 	.globl _TL0
                                    226 	.globl _TMOD
                                    227 	.globl _TCON
                                    228 	.globl _XBUS_AUX
                                    229 	.globl _PIN_FUNC
                                    230 	.globl _P3_DIR_PU
                                    231 	.globl _P3_MOD_OC
                                    232 	.globl _P3
                                    233 	.globl _P2
                                    234 	.globl _P1_DIR_PU
                                    235 	.globl _P1_MOD_OC
                                    236 	.globl _P1
                                    237 	.globl _ROM_CTRL
                                    238 	.globl _ROM_DATA_H
                                    239 	.globl _ROM_DATA_L
                                    240 	.globl _ROM_DATA
                                    241 	.globl _ROM_ADDR_H
                                    242 	.globl _ROM_ADDR_L
                                    243 	.globl _ROM_ADDR
                                    244 	.globl _GPIO_IE
                                    245 	.globl _IP_EX
                                    246 	.globl _IE_EX
                                    247 	.globl _IP
                                    248 	.globl _IE
                                    249 	.globl _WDOG_COUNT
                                    250 	.globl _RESET_KEEP
                                    251 	.globl _WAKE_CTRL
                                    252 	.globl _CLOCK_CFG
                                    253 	.globl _PCON
                                    254 	.globl _GLOBAL_CFG
                                    255 	.globl _SAFE_MOD
                                    256 	.globl _DPH
                                    257 	.globl _DPL
                                    258 	.globl _SP
                                    259 	.globl _B
                                    260 	.globl _ACC
                                    261 	.globl _PSW
                                    262 	.globl _USBController_sendStatus_PARM_2
                                    263 	.globl _USBController_begin
                                    264 	.globl _USBController_update
                                    265 	.globl _USBController_sendStatus
                                    266 	.globl _USBController_isConnected
                                    267 	.globl _USBController_getTargetVoltage
                                    268 	.globl _USBController_isOverrideActive
                                    269 ;--------------------------------------------------------
                                    270 ; special function registers
                                    271 ;--------------------------------------------------------
                                    272 	.area RSEG    (ABS,DATA)
      000000                        273 	.org 0x0000
                           0000D0   274 _PSW	=	0x00d0
                           0000E0   275 _ACC	=	0x00e0
                           0000F0   276 _B	=	0x00f0
                           000081   277 _SP	=	0x0081
                           000082   278 _DPL	=	0x0082
                           000083   279 _DPH	=	0x0083
                           0000A1   280 _SAFE_MOD	=	0x00a1
                           0000B1   281 _GLOBAL_CFG	=	0x00b1
                           000087   282 _PCON	=	0x0087
                           0000B9   283 _CLOCK_CFG	=	0x00b9
                           0000A9   284 _WAKE_CTRL	=	0x00a9
                           0000FE   285 _RESET_KEEP	=	0x00fe
                           0000FF   286 _WDOG_COUNT	=	0x00ff
                           0000A8   287 _IE	=	0x00a8
                           0000B8   288 _IP	=	0x00b8
                           0000E8   289 _IE_EX	=	0x00e8
                           0000E9   290 _IP_EX	=	0x00e9
                           0000C7   291 _GPIO_IE	=	0x00c7
                           008584   292 _ROM_ADDR	=	0x8584
                           000084   293 _ROM_ADDR_L	=	0x0084
                           000085   294 _ROM_ADDR_H	=	0x0085
                           008F8E   295 _ROM_DATA	=	0x8f8e
                           00008E   296 _ROM_DATA_L	=	0x008e
                           00008F   297 _ROM_DATA_H	=	0x008f
                           000086   298 _ROM_CTRL	=	0x0086
                           000090   299 _P1	=	0x0090
                           000092   300 _P1_MOD_OC	=	0x0092
                           000093   301 _P1_DIR_PU	=	0x0093
                           0000A0   302 _P2	=	0x00a0
                           0000B0   303 _P3	=	0x00b0
                           000096   304 _P3_MOD_OC	=	0x0096
                           000097   305 _P3_DIR_PU	=	0x0097
                           0000C6   306 _PIN_FUNC	=	0x00c6
                           0000A2   307 _XBUS_AUX	=	0x00a2
                           000088   308 _TCON	=	0x0088
                           000089   309 _TMOD	=	0x0089
                           00008A   310 _TL0	=	0x008a
                           00008B   311 _TL1	=	0x008b
                           00008C   312 _TH0	=	0x008c
                           00008D   313 _TH1	=	0x008d
                           000098   314 _SCON	=	0x0098
                           000099   315 _SBUF	=	0x0099
                           0000C8   316 _T2CON	=	0x00c8
                           0000C9   317 _T2MOD	=	0x00c9
                           00CBCA   318 _RCAP2	=	0xcbca
                           0000CA   319 _RCAP2L	=	0x00ca
                           0000CB   320 _RCAP2H	=	0x00cb
                           00CDCC   321 _T2COUNT	=	0xcdcc
                           0000CC   322 _TL2	=	0x00cc
                           0000CD   323 _TH2	=	0x00cd
                           00CFCE   324 _T2CAP1	=	0xcfce
                           0000CE   325 _T2CAP1L	=	0x00ce
                           0000CF   326 _T2CAP1H	=	0x00cf
                           00009B   327 _PWM_DATA2	=	0x009b
                           00009C   328 _PWM_DATA1	=	0x009c
                           00009D   329 _PWM_CTRL	=	0x009d
                           00009E   330 _PWM_CK_SE	=	0x009e
                           0000F8   331 _SPI0_STAT	=	0x00f8
                           0000F9   332 _SPI0_DATA	=	0x00f9
                           0000FA   333 _SPI0_CTRL	=	0x00fa
                           0000FB   334 _SPI0_CK_SE	=	0x00fb
                           0000FC   335 _SPI0_SETUP	=	0x00fc
                           0000C0   336 _SCON1	=	0x00c0
                           0000C1   337 _SBUF1	=	0x00c1
                           0000C2   338 _SBAUD1	=	0x00c2
                           000080   339 _ADC_CTRL	=	0x0080
                           00009A   340 _ADC_CFG	=	0x009a
                           00009F   341 _ADC_DATA	=	0x009f
                           0000C3   342 _TKEY_CTRL	=	0x00c3
                           00C5C4   343 _TKEY_DAT	=	0xc5c4
                           0000C4   344 _TKEY_DATL	=	0x00c4
                           0000C5   345 _TKEY_DATH	=	0x00c5
                           000091   346 _USB_C_CTRL	=	0x0091
                           0000D1   347 _UDEV_CTRL	=	0x00d1
                           0000D2   348 _UEP1_CTRL	=	0x00d2
                           0000D3   349 _UEP1_T_LEN	=	0x00d3
                           0000D4   350 _UEP2_CTRL	=	0x00d4
                           0000D5   351 _UEP2_T_LEN	=	0x00d5
                           0000D6   352 _UEP3_CTRL	=	0x00d6
                           0000D7   353 _UEP3_T_LEN	=	0x00d7
                           0000D8   354 _USB_INT_FG	=	0x00d8
                           0000D9   355 _USB_INT_ST	=	0x00d9
                           0000DA   356 _USB_MIS_ST	=	0x00da
                           0000DB   357 _USB_RX_LEN	=	0x00db
                           0000DC   358 _UEP0_CTRL	=	0x00dc
                           0000DD   359 _UEP0_T_LEN	=	0x00dd
                           0000DE   360 _UEP4_CTRL	=	0x00de
                           0000DF   361 _UEP4_T_LEN	=	0x00df
                           0000E1   362 _USB_INT_EN	=	0x00e1
                           0000E2   363 _USB_CTRL	=	0x00e2
                           0000E3   364 _USB_DEV_AD	=	0x00e3
                           00E5E4   365 _UEP2_DMA	=	0xe5e4
                           0000E4   366 _UEP2_DMA_L	=	0x00e4
                           0000E5   367 _UEP2_DMA_H	=	0x00e5
                           00E7E6   368 _UEP3_DMA	=	0xe7e6
                           0000E6   369 _UEP3_DMA_L	=	0x00e6
                           0000E7   370 _UEP3_DMA_H	=	0x00e7
                           0000EA   371 _UEP4_1_MOD	=	0x00ea
                           0000EB   372 _UEP2_3_MOD	=	0x00eb
                           00EDEC   373 _UEP0_DMA	=	0xedec
                           0000EC   374 _UEP0_DMA_L	=	0x00ec
                           0000ED   375 _UEP0_DMA_H	=	0x00ed
                           00EFEE   376 _UEP1_DMA	=	0xefee
                           0000EE   377 _UEP1_DMA_L	=	0x00ee
                           0000EF   378 _UEP1_DMA_H	=	0x00ef
                                    379 ;--------------------------------------------------------
                                    380 ; special function bits
                                    381 ;--------------------------------------------------------
                                    382 	.area RSEG    (ABS,DATA)
      000000                        383 	.org 0x0000
                           0000D7   384 _CY	=	0x00d7
                           0000D6   385 _AC	=	0x00d6
                           0000D5   386 _F0	=	0x00d5
                           0000D4   387 _RS1	=	0x00d4
                           0000D3   388 _RS0	=	0x00d3
                           0000D2   389 _OV	=	0x00d2
                           0000D1   390 _F1	=	0x00d1
                           0000D0   391 _P	=	0x00d0
                           0000AF   392 _EA	=	0x00af
                           0000AE   393 _E_DIS	=	0x00ae
                           0000AD   394 _ET2	=	0x00ad
                           0000AC   395 _ES	=	0x00ac
                           0000AB   396 _ET1	=	0x00ab
                           0000AA   397 _EX1	=	0x00aa
                           0000A9   398 _ET0	=	0x00a9
                           0000A8   399 _EX0	=	0x00a8
                           0000BF   400 _PH_FLAG	=	0x00bf
                           0000BE   401 _PL_FLAG	=	0x00be
                           0000BD   402 _PT2	=	0x00bd
                           0000BC   403 _PS	=	0x00bc
                           0000BB   404 _PT1	=	0x00bb
                           0000BA   405 _PX1	=	0x00ba
                           0000B9   406 _PT0	=	0x00b9
                           0000B8   407 _PX0	=	0x00b8
                           0000EF   408 _IE_WDOG	=	0x00ef
                           0000EE   409 _IE_GPIO	=	0x00ee
                           0000ED   410 _IE_PWMX	=	0x00ed
                           0000EC   411 _IE_UART1	=	0x00ec
                           0000EB   412 _IE_ADC	=	0x00eb
                           0000EA   413 _IE_USB	=	0x00ea
                           0000E9   414 _IE_TKEY	=	0x00e9
                           0000E8   415 _IE_SPI0	=	0x00e8
                           000097   416 _SCK	=	0x0097
                           000097   417 _TXD1	=	0x0097
                           000097   418 _TIN5	=	0x0097
                           000096   419 _MISO	=	0x0096
                           000096   420 _RXD1	=	0x0096
                           000096   421 _TIN4	=	0x0096
                           000095   422 _MOSI	=	0x0095
                           000095   423 _PWM1	=	0x0095
                           000095   424 _TIN3	=	0x0095
                           000095   425 _UCC2	=	0x0095
                           000095   426 _AIN2	=	0x0095
                           000094   427 _T2_	=	0x0094
                           000094   428 _CAP1_	=	0x0094
                           000094   429 _SCS	=	0x0094
                           000094   430 _TIN2	=	0x0094
                           000094   431 _UCC1	=	0x0094
                           000094   432 _AIN1	=	0x0094
                           000093   433 _TXD_	=	0x0093
                           000092   434 _RXD_	=	0x0092
                           000091   435 _T2EX	=	0x0091
                           000091   436 _CAP2	=	0x0091
                           000091   437 _TIN1	=	0x0091
                           000091   438 _VBUS2	=	0x0091
                           000091   439 _AIN0	=	0x0091
                           000090   440 _T2	=	0x0090
                           000090   441 _CAP1	=	0x0090
                           000090   442 _TIN0	=	0x0090
                           000097   443 _P1_7	=	0x0097
                           000096   444 _P1_6	=	0x0096
                           000095   445 _P1_5	=	0x0095
                           000094   446 _P1_4	=	0x0094
                           000093   447 _P1_3	=	0x0093
                           000092   448 _P1_2	=	0x0092
                           000091   449 _P1_1	=	0x0091
                           000090   450 _P1_0	=	0x0090
                           0000B7   451 _UDM	=	0x00b7
                           0000B6   452 _UDP	=	0x00b6
                           0000B5   453 _T1	=	0x00b5
                           0000B4   454 _PWM2	=	0x00b4
                           0000B4   455 _RXD1_	=	0x00b4
                           0000B4   456 _T0	=	0x00b4
                           0000B3   457 _INT1	=	0x00b3
                           0000B2   458 _TXD1_	=	0x00b2
                           0000B2   459 _INT0	=	0x00b2
                           0000B2   460 _VBUS1	=	0x00b2
                           0000B2   461 _AIN3	=	0x00b2
                           0000B1   462 _PWM2_	=	0x00b1
                           0000B1   463 _TXD	=	0x00b1
                           0000B0   464 _PWM1_	=	0x00b0
                           0000B0   465 _RXD	=	0x00b0
                           0000B7   466 _P3_7	=	0x00b7
                           0000B6   467 _P3_6	=	0x00b6
                           0000B5   468 _P3_5	=	0x00b5
                           0000B4   469 _P3_4	=	0x00b4
                           0000B3   470 _P3_3	=	0x00b3
                           0000B2   471 _P3_2	=	0x00b2
                           0000B1   472 _P3_1	=	0x00b1
                           0000B0   473 _P3_0	=	0x00b0
                           00008F   474 _TF1	=	0x008f
                           00008E   475 _TR1	=	0x008e
                           00008D   476 _TF0	=	0x008d
                           00008C   477 _TR0	=	0x008c
                           00008B   478 _IE1	=	0x008b
                           00008A   479 _IT1	=	0x008a
                           000089   480 _IE0	=	0x0089
                           000088   481 _IT0	=	0x0088
                           00009F   482 _SM0	=	0x009f
                           00009E   483 _SM1	=	0x009e
                           00009D   484 _SM2	=	0x009d
                           00009C   485 _REN	=	0x009c
                           00009B   486 _TB8	=	0x009b
                           00009A   487 _RB8	=	0x009a
                           000099   488 _TI	=	0x0099
                           000098   489 _RI	=	0x0098
                           0000CF   490 _TF2	=	0x00cf
                           0000CF   491 _CAP1F	=	0x00cf
                           0000CE   492 _EXF2	=	0x00ce
                           0000CD   493 _RCLK	=	0x00cd
                           0000CC   494 _TCLK	=	0x00cc
                           0000CB   495 _EXEN2	=	0x00cb
                           0000CA   496 _TR2	=	0x00ca
                           0000C9   497 _C_T2	=	0x00c9
                           0000C8   498 _CP_RL2	=	0x00c8
                           0000FF   499 _S0_FST_ACT	=	0x00ff
                           0000FE   500 _S0_IF_OV	=	0x00fe
                           0000FD   501 _S0_IF_FIRST	=	0x00fd
                           0000FC   502 _S0_IF_BYTE	=	0x00fc
                           0000FB   503 _S0_FREE	=	0x00fb
                           0000FA   504 _S0_T_FIFO	=	0x00fa
                           0000F8   505 _S0_R_FIFO	=	0x00f8
                           0000C7   506 _U1SM0	=	0x00c7
                           0000C5   507 _U1SMOD	=	0x00c5
                           0000C4   508 _U1REN	=	0x00c4
                           0000C3   509 _U1TB8	=	0x00c3
                           0000C2   510 _U1RB8	=	0x00c2
                           0000C1   511 _U1TI	=	0x00c1
                           0000C0   512 _U1RI	=	0x00c0
                           000087   513 _CMPO	=	0x0087
                           000086   514 _CMP_IF	=	0x0086
                           000085   515 _ADC_IF	=	0x0085
                           000084   516 _ADC_START	=	0x0084
                           000083   517 _CMP_CHAN	=	0x0083
                           000081   518 _ADC_CHAN1	=	0x0081
                           000080   519 _ADC_CHAN0	=	0x0080
                           0000DF   520 _U_IS_NAK	=	0x00df
                           0000DE   521 _U_TOG_OK	=	0x00de
                           0000DD   522 _U_SIE_FREE	=	0x00dd
                           0000DC   523 _UIF_FIFO_OV	=	0x00dc
                           0000DB   524 _UIF_HST_SOF	=	0x00db
                           0000DA   525 _UIF_SUSPEND	=	0x00da
                           0000D9   526 _UIF_TRANSFER	=	0x00d9
                           0000D8   527 _UIF_DETECT	=	0x00d8
                           0000D8   528 _UIF_BUS_RST	=	0x00d8
                                    529 ;--------------------------------------------------------
                                    530 ; overlayable register banks
                                    531 ;--------------------------------------------------------
                                    532 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        533 	.ds 8
                                    534 ;--------------------------------------------------------
                                    535 ; internal ram data
                                    536 ;--------------------------------------------------------
                                    537 	.area DSEG    (DATA)
                                    538 ;--------------------------------------------------------
                                    539 ; overlayable items in internal ram
                                    540 ;--------------------------------------------------------
                                    541 ;--------------------------------------------------------
                                    542 ; indirectly addressable internal ram data
                                    543 ;--------------------------------------------------------
                                    544 	.area ISEG    (DATA)
                                    545 ;--------------------------------------------------------
                                    546 ; absolute internal ram data
                                    547 ;--------------------------------------------------------
                                    548 	.area IABS    (ABS,DATA)
                                    549 	.area IABS    (ABS,DATA)
                                    550 ;--------------------------------------------------------
                                    551 ; bit data
                                    552 ;--------------------------------------------------------
                                    553 	.area BSEG    (BIT)
                                    554 ;--------------------------------------------------------
                                    555 ; paged external ram data
                                    556 ;--------------------------------------------------------
                                    557 	.area PSEG    (PAG,XDATA)
                                    558 ;--------------------------------------------------------
                                    559 ; uninitialized external ram data
                                    560 ;--------------------------------------------------------
                                    561 	.area XSEG    (XDATA)
      0001C5                        562 _USBController_begin_uc_65536_189:
      0001C5                        563 	.ds 3
      0001C8                        564 _USBController_sendStatus_PARM_2:
      0001C8                        565 	.ds 3
                                    566 ;--------------------------------------------------------
                                    567 ; absolute external ram data
                                    568 ;--------------------------------------------------------
                                    569 	.area XABS    (ABS,XDATA)
                                    570 ;--------------------------------------------------------
                                    571 ; initialized external ram data
                                    572 ;--------------------------------------------------------
                                    573 	.area XISEG   (XDATA)
                                    574 	.area HOME    (CODE)
                                    575 	.area GSINIT0 (CODE)
                                    576 	.area GSINIT1 (CODE)
                                    577 	.area GSINIT2 (CODE)
                                    578 	.area GSINIT3 (CODE)
                                    579 	.area GSINIT4 (CODE)
                                    580 	.area GSINIT5 (CODE)
                                    581 	.area GSINIT  (CODE)
                                    582 	.area GSFINAL (CODE)
                                    583 	.area CSEG    (CODE)
                                    584 ;--------------------------------------------------------
                                    585 ; global & static initialisations
                                    586 ;--------------------------------------------------------
                                    587 	.area HOME    (CODE)
                                    588 	.area GSINIT  (CODE)
                                    589 	.area GSFINAL (CODE)
                                    590 	.area GSINIT  (CODE)
                                    591 ;--------------------------------------------------------
                                    592 ; Home
                                    593 ;--------------------------------------------------------
                                    594 	.area HOME    (CODE)
                                    595 	.area HOME    (CODE)
                                    596 ;--------------------------------------------------------
                                    597 ; code
                                    598 ;--------------------------------------------------------
                                    599 	.area CSEG    (CODE)
                                    600 ;------------------------------------------------------------
                                    601 ;Allocation info for local variables in function 'USBController_begin'
                                    602 ;------------------------------------------------------------
                                    603 ;uc                        Allocated with name '_USBController_begin_uc_65536_189'
                                    604 ;------------------------------------------------------------
                                    605 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:398: void USBController_begin(USBController* uc) {
                                    606 ;	-----------------------------------------
                                    607 ;	 function USBController_begin
                                    608 ;	-----------------------------------------
      00157E                        609 _USBController_begin:
                           000007   610 	ar7 = 0x07
                           000006   611 	ar6 = 0x06
                           000005   612 	ar5 = 0x05
                           000004   613 	ar4 = 0x04
                           000003   614 	ar3 = 0x03
                           000002   615 	ar2 = 0x02
                           000001   616 	ar1 = 0x01
                           000000   617 	ar0 = 0x00
      00157E AF F0            [24]  618 	mov	r7,b
      001580 AE 83            [24]  619 	mov	r6,dph
      001582 E5 82            [12]  620 	mov	a,dpl
      001584 90 01 C5         [24]  621 	mov	dptr,#_USBController_begin_uc_65536_189
      001587 F0               [24]  622 	movx	@dptr,a
      001588 EE               [12]  623 	mov	a,r6
      001589 A3               [24]  624 	inc	dptr
      00158A F0               [24]  625 	movx	@dptr,a
      00158B EF               [12]  626 	mov	a,r7
      00158C A3               [24]  627 	inc	dptr
      00158D F0               [24]  628 	movx	@dptr,a
                                    629 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:399: serial_begin(USB_BAUD_RATE);
      00158E 90 C2 00         [24]  630 	mov	dptr,#0xc200
      001591 75 F0 01         [24]  631 	mov	b,#0x01
      001594 E4               [12]  632 	clr	a
      001595 12 0D 4C         [24]  633 	lcall	_serial_begin
                                    634 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:400: uc->is_connected = false;
      001598 90 01 C5         [24]  635 	mov	dptr,#_USBController_begin_uc_65536_189
      00159B E0               [24]  636 	movx	a,@dptr
      00159C FD               [12]  637 	mov	r5,a
      00159D A3               [24]  638 	inc	dptr
      00159E E0               [24]  639 	movx	a,@dptr
      00159F FE               [12]  640 	mov	r6,a
      0015A0 A3               [24]  641 	inc	dptr
      0015A1 E0               [24]  642 	movx	a,@dptr
      0015A2 FF               [12]  643 	mov	r7,a
      0015A3 8D 82            [24]  644 	mov	dpl,r5
      0015A5 8E 83            [24]  645 	mov	dph,r6
      0015A7 8F F0            [24]  646 	mov	b,r7
      0015A9 E4               [12]  647 	clr	a
      0015AA 12 2B 0B         [24]  648 	lcall	__gptrput
                                    649 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:401: uc->pairing_state = PAIRING_IDLE;
      0015AD 04               [12]  650 	inc	a
      0015AE 2D               [12]  651 	add	a,r5
      0015AF FA               [12]  652 	mov	r2,a
      0015B0 E4               [12]  653 	clr	a
      0015B1 3E               [12]  654 	addc	a,r6
      0015B2 FB               [12]  655 	mov	r3,a
      0015B3 8F 04            [24]  656 	mov	ar4,r7
      0015B5 8A 82            [24]  657 	mov	dpl,r2
      0015B7 8B 83            [24]  658 	mov	dph,r3
      0015B9 8C F0            [24]  659 	mov	b,r4
      0015BB E4               [12]  660 	clr	a
      0015BC 12 2B 0B         [24]  661 	lcall	__gptrput
                                    662 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:402: uc->last_heartbeat = 0;
      0015BF 74 02            [12]  663 	mov	a,#0x02
      0015C1 2D               [12]  664 	add	a,r5
      0015C2 FA               [12]  665 	mov	r2,a
      0015C3 E4               [12]  666 	clr	a
      0015C4 3E               [12]  667 	addc	a,r6
      0015C5 FB               [12]  668 	mov	r3,a
      0015C6 8F 04            [24]  669 	mov	ar4,r7
      0015C8 8A 82            [24]  670 	mov	dpl,r2
      0015CA 8B 83            [24]  671 	mov	dph,r3
      0015CC 8C F0            [24]  672 	mov	b,r4
      0015CE E4               [12]  673 	clr	a
      0015CF 12 2B 0B         [24]  674 	lcall	__gptrput
      0015D2 A3               [24]  675 	inc	dptr
      0015D3 12 2B 0B         [24]  676 	lcall	__gptrput
      0015D6 A3               [24]  677 	inc	dptr
      0015D7 12 2B 0B         [24]  678 	lcall	__gptrput
      0015DA A3               [24]  679 	inc	dptr
      0015DB 12 2B 0B         [24]  680 	lcall	__gptrput
                                    681 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:403: uc->rx_len = 0;
      0015DE 74 47            [12]  682 	mov	a,#0x47
      0015E0 2D               [12]  683 	add	a,r5
      0015E1 FA               [12]  684 	mov	r2,a
      0015E2 E4               [12]  685 	clr	a
      0015E3 3E               [12]  686 	addc	a,r6
      0015E4 FB               [12]  687 	mov	r3,a
      0015E5 8F 04            [24]  688 	mov	ar4,r7
      0015E7 8A 82            [24]  689 	mov	dpl,r2
      0015E9 8B 83            [24]  690 	mov	dph,r3
      0015EB 8C F0            [24]  691 	mov	b,r4
      0015ED E4               [12]  692 	clr	a
      0015EE 12 2B 0B         [24]  693 	lcall	__gptrput
                                    694 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:404: uc->rx_buffer[0] = '\0';
      0015F1 74 06            [12]  695 	mov	a,#0x06
      0015F3 2D               [12]  696 	add	a,r5
      0015F4 FA               [12]  697 	mov	r2,a
      0015F5 E4               [12]  698 	clr	a
      0015F6 3E               [12]  699 	addc	a,r6
      0015F7 FB               [12]  700 	mov	r3,a
      0015F8 8F 04            [24]  701 	mov	ar4,r7
      0015FA 8A 82            [24]  702 	mov	dpl,r2
      0015FC 8B 83            [24]  703 	mov	dph,r3
      0015FE 8C F0            [24]  704 	mov	b,r4
      001600 E4               [12]  705 	clr	a
      001601 12 2B 0B         [24]  706 	lcall	__gptrput
                                    707 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:406: uc->target_voltage_override = VOUT_DEFAULT;
      001604 74 48            [12]  708 	mov	a,#0x48
      001606 2D               [12]  709 	add	a,r5
      001607 FA               [12]  710 	mov	r2,a
      001608 E4               [12]  711 	clr	a
      001609 3E               [12]  712 	addc	a,r6
      00160A FB               [12]  713 	mov	r3,a
      00160B 8F 04            [24]  714 	mov	ar4,r7
      00160D 8A 82            [24]  715 	mov	dpl,r2
      00160F 8B 83            [24]  716 	mov	dph,r3
      001611 8C F0            [24]  717 	mov	b,r4
      001613 E4               [12]  718 	clr	a
      001614 12 2B 0B         [24]  719 	lcall	__gptrput
      001617 A3               [24]  720 	inc	dptr
      001618 12 2B 0B         [24]  721 	lcall	__gptrput
      00161B A3               [24]  722 	inc	dptr
      00161C 74 40            [12]  723 	mov	a,#0x40
      00161E 12 2B 0B         [24]  724 	lcall	__gptrput
      001621 A3               [24]  725 	inc	dptr
      001622 04               [12]  726 	inc	a
      001623 12 2B 0B         [24]  727 	lcall	__gptrput
                                    728 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:407: uc->target_rpm_override = RPM_TARGET_MIN;
      001626 74 4C            [12]  729 	mov	a,#0x4c
      001628 2D               [12]  730 	add	a,r5
      001629 FA               [12]  731 	mov	r2,a
      00162A E4               [12]  732 	clr	a
      00162B 3E               [12]  733 	addc	a,r6
      00162C FB               [12]  734 	mov	r3,a
      00162D 8F 04            [24]  735 	mov	ar4,r7
      00162F 8A 82            [24]  736 	mov	dpl,r2
      001631 8B 83            [24]  737 	mov	dph,r3
      001633 8C F0            [24]  738 	mov	b,r4
      001635 74 20            [12]  739 	mov	a,#0x20
      001637 12 2B 0B         [24]  740 	lcall	__gptrput
      00163A A3               [24]  741 	inc	dptr
      00163B 74 03            [12]  742 	mov	a,#0x03
      00163D 12 2B 0B         [24]  743 	lcall	__gptrput
      001640 A3               [24]  744 	inc	dptr
      001641 E4               [12]  745 	clr	a
      001642 12 2B 0B         [24]  746 	lcall	__gptrput
      001645 A3               [24]  747 	inc	dptr
      001646 12 2B 0B         [24]  748 	lcall	__gptrput
                                    749 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:408: uc->override_temp_min = TEMP_MIN;
      001649 74 50            [12]  750 	mov	a,#0x50
      00164B 2D               [12]  751 	add	a,r5
      00164C FA               [12]  752 	mov	r2,a
      00164D E4               [12]  753 	clr	a
      00164E 3E               [12]  754 	addc	a,r6
      00164F FB               [12]  755 	mov	r3,a
      001650 8F 04            [24]  756 	mov	ar4,r7
      001652 8A 82            [24]  757 	mov	dpl,r2
      001654 8B 83            [24]  758 	mov	dph,r3
      001656 8C F0            [24]  759 	mov	b,r4
      001658 E4               [12]  760 	clr	a
      001659 12 2B 0B         [24]  761 	lcall	__gptrput
      00165C A3               [24]  762 	inc	dptr
      00165D 12 2B 0B         [24]  763 	lcall	__gptrput
      001660 A3               [24]  764 	inc	dptr
      001661 74 F0            [12]  765 	mov	a,#0xf0
      001663 12 2B 0B         [24]  766 	lcall	__gptrput
      001666 A3               [24]  767 	inc	dptr
      001667 74 41            [12]  768 	mov	a,#0x41
      001669 12 2B 0B         [24]  769 	lcall	__gptrput
                                    770 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:409: uc->override_temp_max = TEMP_MAX;
      00166C 74 54            [12]  771 	mov	a,#0x54
      00166E 2D               [12]  772 	add	a,r5
      00166F FA               [12]  773 	mov	r2,a
      001670 E4               [12]  774 	clr	a
      001671 3E               [12]  775 	addc	a,r6
      001672 FB               [12]  776 	mov	r3,a
      001673 8F 04            [24]  777 	mov	ar4,r7
      001675 8A 82            [24]  778 	mov	dpl,r2
      001677 8B 83            [24]  779 	mov	dph,r3
      001679 8C F0            [24]  780 	mov	b,r4
      00167B E4               [12]  781 	clr	a
      00167C 12 2B 0B         [24]  782 	lcall	__gptrput
      00167F A3               [24]  783 	inc	dptr
      001680 12 2B 0B         [24]  784 	lcall	__gptrput
      001683 A3               [24]  785 	inc	dptr
      001684 74 34            [12]  786 	mov	a,#0x34
      001686 12 2B 0B         [24]  787 	lcall	__gptrput
      001689 A3               [24]  788 	inc	dptr
      00168A 74 42            [12]  789 	mov	a,#0x42
      00168C 12 2B 0B         [24]  790 	lcall	__gptrput
                                    791 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:410: uc->override_temp_overheat = TEMP_OVERHEAT;
      00168F 74 58            [12]  792 	mov	a,#0x58
      001691 2D               [12]  793 	add	a,r5
      001692 FA               [12]  794 	mov	r2,a
      001693 E4               [12]  795 	clr	a
      001694 3E               [12]  796 	addc	a,r6
      001695 FB               [12]  797 	mov	r3,a
      001696 8F 04            [24]  798 	mov	ar4,r7
      001698 8A 82            [24]  799 	mov	dpl,r2
      00169A 8B 83            [24]  800 	mov	dph,r3
      00169C 8C F0            [24]  801 	mov	b,r4
      00169E E4               [12]  802 	clr	a
      00169F 12 2B 0B         [24]  803 	lcall	__gptrput
      0016A2 A3               [24]  804 	inc	dptr
      0016A3 12 2B 0B         [24]  805 	lcall	__gptrput
      0016A6 A3               [24]  806 	inc	dptr
      0016A7 74 48            [12]  807 	mov	a,#0x48
      0016A9 12 2B 0B         [24]  808 	lcall	__gptrput
      0016AC A3               [24]  809 	inc	dptr
      0016AD 74 42            [12]  810 	mov	a,#0x42
      0016AF 12 2B 0B         [24]  811 	lcall	__gptrput
                                    812 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:411: uc->override_pwm_duty = 0;
      0016B2 74 5C            [12]  813 	mov	a,#0x5c
      0016B4 2D               [12]  814 	add	a,r5
      0016B5 FA               [12]  815 	mov	r2,a
      0016B6 E4               [12]  816 	clr	a
      0016B7 3E               [12]  817 	addc	a,r6
      0016B8 FB               [12]  818 	mov	r3,a
      0016B9 8F 04            [24]  819 	mov	ar4,r7
      0016BB 8A 82            [24]  820 	mov	dpl,r2
      0016BD 8B 83            [24]  821 	mov	dph,r3
      0016BF 8C F0            [24]  822 	mov	b,r4
      0016C1 E4               [12]  823 	clr	a
      0016C2 12 2B 0B         [24]  824 	lcall	__gptrput
                                    825 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:413: uc->override_active = false;
      0016C5 74 5D            [12]  826 	mov	a,#0x5d
      0016C7 2D               [12]  827 	add	a,r5
      0016C8 FA               [12]  828 	mov	r2,a
      0016C9 E4               [12]  829 	clr	a
      0016CA 3E               [12]  830 	addc	a,r6
      0016CB FB               [12]  831 	mov	r3,a
      0016CC 8F 04            [24]  832 	mov	ar4,r7
      0016CE 8A 82            [24]  833 	mov	dpl,r2
      0016D0 8B 83            [24]  834 	mov	dph,r3
      0016D2 8C F0            [24]  835 	mov	b,r4
      0016D4 E4               [12]  836 	clr	a
      0016D5 12 2B 0B         [24]  837 	lcall	__gptrput
                                    838 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:414: uc->rpm_override_active = false;
      0016D8 74 5E            [12]  839 	mov	a,#0x5e
      0016DA 2D               [12]  840 	add	a,r5
      0016DB FA               [12]  841 	mov	r2,a
      0016DC E4               [12]  842 	clr	a
      0016DD 3E               [12]  843 	addc	a,r6
      0016DE FB               [12]  844 	mov	r3,a
      0016DF 8F 04            [24]  845 	mov	ar4,r7
      0016E1 8A 82            [24]  846 	mov	dpl,r2
      0016E3 8B 83            [24]  847 	mov	dph,r3
      0016E5 8C F0            [24]  848 	mov	b,r4
      0016E7 E4               [12]  849 	clr	a
      0016E8 12 2B 0B         [24]  850 	lcall	__gptrput
                                    851 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:415: uc->temp_params_overridden = false;
      0016EB 74 5F            [12]  852 	mov	a,#0x5f
      0016ED 2D               [12]  853 	add	a,r5
      0016EE FA               [12]  854 	mov	r2,a
      0016EF E4               [12]  855 	clr	a
      0016F0 3E               [12]  856 	addc	a,r6
      0016F1 FB               [12]  857 	mov	r3,a
      0016F2 8F 04            [24]  858 	mov	ar4,r7
      0016F4 8A 82            [24]  859 	mov	dpl,r2
      0016F6 8B 83            [24]  860 	mov	dph,r3
      0016F8 8C F0            [24]  861 	mov	b,r4
      0016FA E4               [12]  862 	clr	a
      0016FB 12 2B 0B         [24]  863 	lcall	__gptrput
                                    864 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:416: uc->pwm_duty_overridden = false;
      0016FE 74 60            [12]  865 	mov	a,#0x60
      001700 2D               [12]  866 	add	a,r5
      001701 FA               [12]  867 	mov	r2,a
      001702 E4               [12]  868 	clr	a
      001703 3E               [12]  869 	addc	a,r6
      001704 FB               [12]  870 	mov	r3,a
      001705 8F 04            [24]  871 	mov	ar4,r7
      001707 8A 82            [24]  872 	mov	dpl,r2
      001709 8B 83            [24]  873 	mov	dph,r3
      00170B 8C F0            [24]  874 	mov	b,r4
      00170D E4               [12]  875 	clr	a
      00170E 12 2B 0B         [24]  876 	lcall	__gptrput
                                    877 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:417: uc->reset_requested = false;
      001711 74 61            [12]  878 	mov	a,#0x61
      001713 2D               [12]  879 	add	a,r5
      001714 FA               [12]  880 	mov	r2,a
      001715 E4               [12]  881 	clr	a
      001716 3E               [12]  882 	addc	a,r6
      001717 FB               [12]  883 	mov	r3,a
      001718 8F 04            [24]  884 	mov	ar4,r7
      00171A 8A 82            [24]  885 	mov	dpl,r2
      00171C 8B 83            [24]  886 	mov	dph,r3
      00171E 8C F0            [24]  887 	mov	b,r4
      001720 E4               [12]  888 	clr	a
      001721 12 2B 0B         [24]  889 	lcall	__gptrput
                                    890 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:418: uc->status_requested = false;
      001724 74 62            [12]  891 	mov	a,#0x62
      001726 2D               [12]  892 	add	a,r5
      001727 FD               [12]  893 	mov	r5,a
      001728 E4               [12]  894 	clr	a
      001729 3E               [12]  895 	addc	a,r6
      00172A FE               [12]  896 	mov	r6,a
      00172B 8D 82            [24]  897 	mov	dpl,r5
      00172D 8E 83            [24]  898 	mov	dph,r6
      00172F 8F F0            [24]  899 	mov	b,r7
      001731 E4               [12]  900 	clr	a
                                    901 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:419: }
      001732 02 2B 0B         [24]  902 	ljmp	__gptrput
                                    903 ;------------------------------------------------------------
                                    904 ;Allocation info for local variables in function 'USBController_update'
                                    905 ;------------------------------------------------------------
                                    906 ;uc                        Allocated with name '_USBController_update_uc_65536_191'
                                    907 ;------------------------------------------------------------
                                    908 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:421: void USBController_update(USBController* uc) {
                                    909 ;	-----------------------------------------
                                    910 ;	 function USBController_update
                                    911 ;	-----------------------------------------
      001735                        912 _USBController_update:
                                    913 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:422: (void)uc;
                                    914 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:423: }
      001735 22               [24]  915 	ret
                                    916 ;------------------------------------------------------------
                                    917 ;Allocation info for local variables in function 'USBController_sendStatus'
                                    918 ;------------------------------------------------------------
                                    919 ;status                    Allocated with name '_USBController_sendStatus_PARM_2'
                                    920 ;uc                        Allocated with name '_USBController_sendStatus_uc_65536_193'
                                    921 ;------------------------------------------------------------
                                    922 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:425: void USBController_sendStatus(USBController* uc, const SystemStatus* status) {
                                    923 ;	-----------------------------------------
                                    924 ;	 function USBController_sendStatus
                                    925 ;	-----------------------------------------
      001736                        926 _USBController_sendStatus:
                                    927 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:427: (void)status;
                                    928 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:428: }
      001736 22               [24]  929 	ret
                                    930 ;------------------------------------------------------------
                                    931 ;Allocation info for local variables in function 'USBController_isConnected'
                                    932 ;------------------------------------------------------------
                                    933 ;uc                        Allocated with name '_USBController_isConnected_uc_65536_195'
                                    934 ;------------------------------------------------------------
                                    935 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:430: bool USBController_isConnected(const USBController* uc) {
                                    936 ;	-----------------------------------------
                                    937 ;	 function USBController_isConnected
                                    938 ;	-----------------------------------------
      001737                        939 _USBController_isConnected:
                                    940 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:432: return false;
      001737 75 82 00         [24]  941 	mov	dpl,#0x00
                                    942 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:433: }
      00173A 22               [24]  943 	ret
                                    944 ;------------------------------------------------------------
                                    945 ;Allocation info for local variables in function 'USBController_getTargetVoltage'
                                    946 ;------------------------------------------------------------
                                    947 ;uc                        Allocated with name '_USBController_getTargetVoltage_uc_65536_197'
                                    948 ;------------------------------------------------------------
                                    949 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:435: float USBController_getTargetVoltage(const USBController* uc) {
                                    950 ;	-----------------------------------------
                                    951 ;	 function USBController_getTargetVoltage
                                    952 ;	-----------------------------------------
      00173B                        953 _USBController_getTargetVoltage:
                                    954 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:437: return VOUT_DEFAULT;
      00173B 90 00 00         [24]  955 	mov	dptr,#0x0000
      00173E 75 F0 40         [24]  956 	mov	b,#0x40
      001741 74 41            [12]  957 	mov	a,#0x41
                                    958 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:438: }
      001743 22               [24]  959 	ret
                                    960 ;------------------------------------------------------------
                                    961 ;Allocation info for local variables in function 'USBController_isOverrideActive'
                                    962 ;------------------------------------------------------------
                                    963 ;uc                        Allocated with name '_USBController_isOverrideActive_uc_65536_199'
                                    964 ;------------------------------------------------------------
                                    965 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:440: bool USBController_isOverrideActive(const USBController* uc) {
                                    966 ;	-----------------------------------------
                                    967 ;	 function USBController_isOverrideActive
                                    968 ;	-----------------------------------------
      001744                        969 _USBController_isOverrideActive:
                                    970 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:442: return false;
      001744 75 82 00         [24]  971 	mov	dpl,#0x00
                                    972 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\usb_protocol.c:443: }
      001747 22               [24]  973 	ret
                                    974 	.area CSEG    (CODE)
                                    975 	.area CONST   (CODE)
                                    976 	.area XINIT   (CODE)
                                    977 	.area CABS    (ABS,CODE)
