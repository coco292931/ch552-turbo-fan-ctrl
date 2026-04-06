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
                                    264 	.globl _VoltageController_setVoltage_PARM_2
                                    265 	.globl _VoltageController_begin_PARM_3
                                    266 	.globl _VoltageController_begin_PARM_2
                                    267 	.globl _VoltageController_begin
                                    268 	.globl _VoltageController_setVoltage
                                    269 	.globl _VoltageController_readVoltage
                                    270 	.globl _VoltageController_updateVoltage
                                    271 	.globl _VoltageController_isVoltageAbnormal
                                    272 	.globl _VoltageController_lockOutput
                                    273 	.globl _VoltageController_unlockOutput
                                    274 	.globl _VoltageController_getTargetVoltage
                                    275 	.globl _VoltageController_getCurrentVoltage
                                    276 	.globl _VoltageController_getPWMDuty
                                    277 	.globl _VoltageController_isLocked
                                    278 ;--------------------------------------------------------
                                    279 ; special function registers
                                    280 ;--------------------------------------------------------
                                    281 	.area RSEG    (ABS,DATA)
      000000                        282 	.org 0x0000
                           0000D0   283 _PSW	=	0x00d0
                           0000E0   284 _ACC	=	0x00e0
                           0000F0   285 _B	=	0x00f0
                           000081   286 _SP	=	0x0081
                           000082   287 _DPL	=	0x0082
                           000083   288 _DPH	=	0x0083
                           0000A1   289 _SAFE_MOD	=	0x00a1
                           0000B1   290 _GLOBAL_CFG	=	0x00b1
                           000087   291 _PCON	=	0x0087
                           0000B9   292 _CLOCK_CFG	=	0x00b9
                           0000A9   293 _WAKE_CTRL	=	0x00a9
                           0000FE   294 _RESET_KEEP	=	0x00fe
                           0000FF   295 _WDOG_COUNT	=	0x00ff
                           0000A8   296 _IE	=	0x00a8
                           0000B8   297 _IP	=	0x00b8
                           0000E8   298 _IE_EX	=	0x00e8
                           0000E9   299 _IP_EX	=	0x00e9
                           0000C7   300 _GPIO_IE	=	0x00c7
                           008584   301 _ROM_ADDR	=	0x8584
                           000084   302 _ROM_ADDR_L	=	0x0084
                           000085   303 _ROM_ADDR_H	=	0x0085
                           008F8E   304 _ROM_DATA	=	0x8f8e
                           00008E   305 _ROM_DATA_L	=	0x008e
                           00008F   306 _ROM_DATA_H	=	0x008f
                           000086   307 _ROM_CTRL	=	0x0086
                           000090   308 _P1	=	0x0090
                           000092   309 _P1_MOD_OC	=	0x0092
                           000093   310 _P1_DIR_PU	=	0x0093
                           0000A0   311 _P2	=	0x00a0
                           0000B0   312 _P3	=	0x00b0
                           000096   313 _P3_MOD_OC	=	0x0096
                           000097   314 _P3_DIR_PU	=	0x0097
                           0000C6   315 _PIN_FUNC	=	0x00c6
                           0000A2   316 _XBUS_AUX	=	0x00a2
                           000088   317 _TCON	=	0x0088
                           000089   318 _TMOD	=	0x0089
                           00008A   319 _TL0	=	0x008a
                           00008B   320 _TL1	=	0x008b
                           00008C   321 _TH0	=	0x008c
                           00008D   322 _TH1	=	0x008d
                           000098   323 _SCON	=	0x0098
                           000099   324 _SBUF	=	0x0099
                           0000C8   325 _T2CON	=	0x00c8
                           0000C9   326 _T2MOD	=	0x00c9
                           00CBCA   327 _RCAP2	=	0xcbca
                           0000CA   328 _RCAP2L	=	0x00ca
                           0000CB   329 _RCAP2H	=	0x00cb
                           00CDCC   330 _T2COUNT	=	0xcdcc
                           0000CC   331 _TL2	=	0x00cc
                           0000CD   332 _TH2	=	0x00cd
                           00CFCE   333 _T2CAP1	=	0xcfce
                           0000CE   334 _T2CAP1L	=	0x00ce
                           0000CF   335 _T2CAP1H	=	0x00cf
                           00009B   336 _PWM_DATA2	=	0x009b
                           00009C   337 _PWM_DATA1	=	0x009c
                           00009D   338 _PWM_CTRL	=	0x009d
                           00009E   339 _PWM_CK_SE	=	0x009e
                           0000F8   340 _SPI0_STAT	=	0x00f8
                           0000F9   341 _SPI0_DATA	=	0x00f9
                           0000FA   342 _SPI0_CTRL	=	0x00fa
                           0000FB   343 _SPI0_CK_SE	=	0x00fb
                           0000FC   344 _SPI0_SETUP	=	0x00fc
                           0000C0   345 _SCON1	=	0x00c0
                           0000C1   346 _SBUF1	=	0x00c1
                           0000C2   347 _SBAUD1	=	0x00c2
                           000080   348 _ADC_CTRL	=	0x0080
                           00009A   349 _ADC_CFG	=	0x009a
                           00009F   350 _ADC_DATA	=	0x009f
                           0000C3   351 _TKEY_CTRL	=	0x00c3
                           00C5C4   352 _TKEY_DAT	=	0xc5c4
                           0000C4   353 _TKEY_DATL	=	0x00c4
                           0000C5   354 _TKEY_DATH	=	0x00c5
                           000091   355 _USB_C_CTRL	=	0x0091
                           0000D1   356 _UDEV_CTRL	=	0x00d1
                           0000D2   357 _UEP1_CTRL	=	0x00d2
                           0000D3   358 _UEP1_T_LEN	=	0x00d3
                           0000D4   359 _UEP2_CTRL	=	0x00d4
                           0000D5   360 _UEP2_T_LEN	=	0x00d5
                           0000D6   361 _UEP3_CTRL	=	0x00d6
                           0000D7   362 _UEP3_T_LEN	=	0x00d7
                           0000D8   363 _USB_INT_FG	=	0x00d8
                           0000D9   364 _USB_INT_ST	=	0x00d9
                           0000DA   365 _USB_MIS_ST	=	0x00da
                           0000DB   366 _USB_RX_LEN	=	0x00db
                           0000DC   367 _UEP0_CTRL	=	0x00dc
                           0000DD   368 _UEP0_T_LEN	=	0x00dd
                           0000DE   369 _UEP4_CTRL	=	0x00de
                           0000DF   370 _UEP4_T_LEN	=	0x00df
                           0000E1   371 _USB_INT_EN	=	0x00e1
                           0000E2   372 _USB_CTRL	=	0x00e2
                           0000E3   373 _USB_DEV_AD	=	0x00e3
                           00E5E4   374 _UEP2_DMA	=	0xe5e4
                           0000E4   375 _UEP2_DMA_L	=	0x00e4
                           0000E5   376 _UEP2_DMA_H	=	0x00e5
                           00E7E6   377 _UEP3_DMA	=	0xe7e6
                           0000E6   378 _UEP3_DMA_L	=	0x00e6
                           0000E7   379 _UEP3_DMA_H	=	0x00e7
                           0000EA   380 _UEP4_1_MOD	=	0x00ea
                           0000EB   381 _UEP2_3_MOD	=	0x00eb
                           00EDEC   382 _UEP0_DMA	=	0xedec
                           0000EC   383 _UEP0_DMA_L	=	0x00ec
                           0000ED   384 _UEP0_DMA_H	=	0x00ed
                           00EFEE   385 _UEP1_DMA	=	0xefee
                           0000EE   386 _UEP1_DMA_L	=	0x00ee
                           0000EF   387 _UEP1_DMA_H	=	0x00ef
                                    388 ;--------------------------------------------------------
                                    389 ; special function bits
                                    390 ;--------------------------------------------------------
                                    391 	.area RSEG    (ABS,DATA)
      000000                        392 	.org 0x0000
                           0000D7   393 _CY	=	0x00d7
                           0000D6   394 _AC	=	0x00d6
                           0000D5   395 _F0	=	0x00d5
                           0000D4   396 _RS1	=	0x00d4
                           0000D3   397 _RS0	=	0x00d3
                           0000D2   398 _OV	=	0x00d2
                           0000D1   399 _F1	=	0x00d1
                           0000D0   400 _P	=	0x00d0
                           0000AF   401 _EA	=	0x00af
                           0000AE   402 _E_DIS	=	0x00ae
                           0000AD   403 _ET2	=	0x00ad
                           0000AC   404 _ES	=	0x00ac
                           0000AB   405 _ET1	=	0x00ab
                           0000AA   406 _EX1	=	0x00aa
                           0000A9   407 _ET0	=	0x00a9
                           0000A8   408 _EX0	=	0x00a8
                           0000BF   409 _PH_FLAG	=	0x00bf
                           0000BE   410 _PL_FLAG	=	0x00be
                           0000BD   411 _PT2	=	0x00bd
                           0000BC   412 _PS	=	0x00bc
                           0000BB   413 _PT1	=	0x00bb
                           0000BA   414 _PX1	=	0x00ba
                           0000B9   415 _PT0	=	0x00b9
                           0000B8   416 _PX0	=	0x00b8
                           0000EF   417 _IE_WDOG	=	0x00ef
                           0000EE   418 _IE_GPIO	=	0x00ee
                           0000ED   419 _IE_PWMX	=	0x00ed
                           0000EC   420 _IE_UART1	=	0x00ec
                           0000EB   421 _IE_ADC	=	0x00eb
                           0000EA   422 _IE_USB	=	0x00ea
                           0000E9   423 _IE_TKEY	=	0x00e9
                           0000E8   424 _IE_SPI0	=	0x00e8
                           000097   425 _SCK	=	0x0097
                           000097   426 _TXD1	=	0x0097
                           000097   427 _TIN5	=	0x0097
                           000096   428 _MISO	=	0x0096
                           000096   429 _RXD1	=	0x0096
                           000096   430 _TIN4	=	0x0096
                           000095   431 _MOSI	=	0x0095
                           000095   432 _PWM1	=	0x0095
                           000095   433 _TIN3	=	0x0095
                           000095   434 _UCC2	=	0x0095
                           000095   435 _AIN2	=	0x0095
                           000094   436 _T2_	=	0x0094
                           000094   437 _CAP1_	=	0x0094
                           000094   438 _SCS	=	0x0094
                           000094   439 _TIN2	=	0x0094
                           000094   440 _UCC1	=	0x0094
                           000094   441 _AIN1	=	0x0094
                           000093   442 _TXD_	=	0x0093
                           000092   443 _RXD_	=	0x0092
                           000091   444 _T2EX	=	0x0091
                           000091   445 _CAP2	=	0x0091
                           000091   446 _TIN1	=	0x0091
                           000091   447 _VBUS2	=	0x0091
                           000091   448 _AIN0	=	0x0091
                           000090   449 _T2	=	0x0090
                           000090   450 _CAP1	=	0x0090
                           000090   451 _TIN0	=	0x0090
                           000097   452 _P1_7	=	0x0097
                           000096   453 _P1_6	=	0x0096
                           000095   454 _P1_5	=	0x0095
                           000094   455 _P1_4	=	0x0094
                           000093   456 _P1_3	=	0x0093
                           000092   457 _P1_2	=	0x0092
                           000091   458 _P1_1	=	0x0091
                           000090   459 _P1_0	=	0x0090
                           0000B7   460 _UDM	=	0x00b7
                           0000B6   461 _UDP	=	0x00b6
                           0000B5   462 _T1	=	0x00b5
                           0000B4   463 _PWM2	=	0x00b4
                           0000B4   464 _RXD1_	=	0x00b4
                           0000B4   465 _T0	=	0x00b4
                           0000B3   466 _INT1	=	0x00b3
                           0000B2   467 _TXD1_	=	0x00b2
                           0000B2   468 _INT0	=	0x00b2
                           0000B2   469 _VBUS1	=	0x00b2
                           0000B2   470 _AIN3	=	0x00b2
                           0000B1   471 _PWM2_	=	0x00b1
                           0000B1   472 _TXD	=	0x00b1
                           0000B0   473 _PWM1_	=	0x00b0
                           0000B0   474 _RXD	=	0x00b0
                           0000B7   475 _P3_7	=	0x00b7
                           0000B6   476 _P3_6	=	0x00b6
                           0000B5   477 _P3_5	=	0x00b5
                           0000B4   478 _P3_4	=	0x00b4
                           0000B3   479 _P3_3	=	0x00b3
                           0000B2   480 _P3_2	=	0x00b2
                           0000B1   481 _P3_1	=	0x00b1
                           0000B0   482 _P3_0	=	0x00b0
                           00008F   483 _TF1	=	0x008f
                           00008E   484 _TR1	=	0x008e
                           00008D   485 _TF0	=	0x008d
                           00008C   486 _TR0	=	0x008c
                           00008B   487 _IE1	=	0x008b
                           00008A   488 _IT1	=	0x008a
                           000089   489 _IE0	=	0x0089
                           000088   490 _IT0	=	0x0088
                           00009F   491 _SM0	=	0x009f
                           00009E   492 _SM1	=	0x009e
                           00009D   493 _SM2	=	0x009d
                           00009C   494 _REN	=	0x009c
                           00009B   495 _TB8	=	0x009b
                           00009A   496 _RB8	=	0x009a
                           000099   497 _TI	=	0x0099
                           000098   498 _RI	=	0x0098
                           0000CF   499 _TF2	=	0x00cf
                           0000CF   500 _CAP1F	=	0x00cf
                           0000CE   501 _EXF2	=	0x00ce
                           0000CD   502 _RCLK	=	0x00cd
                           0000CC   503 _TCLK	=	0x00cc
                           0000CB   504 _EXEN2	=	0x00cb
                           0000CA   505 _TR2	=	0x00ca
                           0000C9   506 _C_T2	=	0x00c9
                           0000C8   507 _CP_RL2	=	0x00c8
                           0000FF   508 _S0_FST_ACT	=	0x00ff
                           0000FE   509 _S0_IF_OV	=	0x00fe
                           0000FD   510 _S0_IF_FIRST	=	0x00fd
                           0000FC   511 _S0_IF_BYTE	=	0x00fc
                           0000FB   512 _S0_FREE	=	0x00fb
                           0000FA   513 _S0_T_FIFO	=	0x00fa
                           0000F8   514 _S0_R_FIFO	=	0x00f8
                           0000C7   515 _U1SM0	=	0x00c7
                           0000C5   516 _U1SMOD	=	0x00c5
                           0000C4   517 _U1REN	=	0x00c4
                           0000C3   518 _U1TB8	=	0x00c3
                           0000C2   519 _U1RB8	=	0x00c2
                           0000C1   520 _U1TI	=	0x00c1
                           0000C0   521 _U1RI	=	0x00c0
                           000087   522 _CMPO	=	0x0087
                           000086   523 _CMP_IF	=	0x0086
                           000085   524 _ADC_IF	=	0x0085
                           000084   525 _ADC_START	=	0x0084
                           000083   526 _CMP_CHAN	=	0x0083
                           000081   527 _ADC_CHAN1	=	0x0081
                           000080   528 _ADC_CHAN0	=	0x0080
                           0000DF   529 _U_IS_NAK	=	0x00df
                           0000DE   530 _U_TOG_OK	=	0x00de
                           0000DD   531 _U_SIE_FREE	=	0x00dd
                           0000DC   532 _UIF_FIFO_OV	=	0x00dc
                           0000DB   533 _UIF_HST_SOF	=	0x00db
                           0000DA   534 _UIF_SUSPEND	=	0x00da
                           0000D9   535 _UIF_TRANSFER	=	0x00d9
                           0000D8   536 _UIF_DETECT	=	0x00d8
                           0000D8   537 _UIF_BUS_RST	=	0x00d8
                                    538 ;--------------------------------------------------------
                                    539 ; overlayable register banks
                                    540 ;--------------------------------------------------------
                                    541 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        542 	.ds 8
                                    543 ;--------------------------------------------------------
                                    544 ; internal ram data
                                    545 ;--------------------------------------------------------
                                    546 	.area DSEG    (DATA)
      000048                        547 _VoltageController_begin_sloc0_1_0:
      000048                        548 	.ds 3
      00004B                        549 _VoltageController_setVoltage_sloc0_1_0:
      00004B                        550 	.ds 3
      00004E                        551 _VoltageController_setVoltage_sloc1_1_0:
      00004E                        552 	.ds 4
                                    553 ;--------------------------------------------------------
                                    554 ; overlayable items in internal ram
                                    555 ;--------------------------------------------------------
                                    556 ;--------------------------------------------------------
                                    557 ; indirectly addressable internal ram data
                                    558 ;--------------------------------------------------------
                                    559 	.area ISEG    (DATA)
                                    560 ;--------------------------------------------------------
                                    561 ; absolute internal ram data
                                    562 ;--------------------------------------------------------
                                    563 	.area IABS    (ABS,DATA)
                                    564 	.area IABS    (ABS,DATA)
                                    565 ;--------------------------------------------------------
                                    566 ; bit data
                                    567 ;--------------------------------------------------------
                                    568 	.area BSEG    (BIT)
                                    569 ;--------------------------------------------------------
                                    570 ; paged external ram data
                                    571 ;--------------------------------------------------------
                                    572 	.area PSEG    (PAG,XDATA)
                                    573 ;--------------------------------------------------------
                                    574 ; uninitialized external ram data
                                    575 ;--------------------------------------------------------
                                    576 	.area XSEG    (XDATA)
      0001CB                        577 _VoltageController_voltageToPWM_voltage_65536_180:
      0001CB                        578 	.ds 4
      0001CF                        579 _VoltageController_voltageToPWM_pwm_float_65536_181:
      0001CF                        580 	.ds 4
      0001D3                        581 _VoltageController_begin_PARM_2:
      0001D3                        582 	.ds 1
      0001D4                        583 _VoltageController_begin_PARM_3:
      0001D4                        584 	.ds 1
      0001D5                        585 _VoltageController_begin_vc_65536_182:
      0001D5                        586 	.ds 3
      0001D8                        587 _VoltageController_setVoltage_PARM_2:
      0001D8                        588 	.ds 4
      0001DC                        589 _VoltageController_setVoltage_vc_65536_184:
      0001DC                        590 	.ds 3
      0001DF                        591 _VoltageController_readVoltage_vc_65536_187:
      0001DF                        592 	.ds 3
      0001E2                        593 _VoltageController_updateVoltage_vc_65536_189:
      0001E2                        594 	.ds 3
      0001E5                        595 _VoltageController_isVoltageAbnormal_vc_65536_191:
      0001E5                        596 	.ds 3
      0001E8                        597 _VoltageController_lockOutput_vc_65536_194:
      0001E8                        598 	.ds 3
      0001EB                        599 _VoltageController_unlockOutput_vc_65536_196:
      0001EB                        600 	.ds 3
      0001EE                        601 _VoltageController_getTargetVoltage_vc_65536_198:
      0001EE                        602 	.ds 3
      0001F1                        603 _VoltageController_getCurrentVoltage_vc_65536_200:
      0001F1                        604 	.ds 3
      0001F4                        605 _VoltageController_getPWMDuty_vc_65536_202:
      0001F4                        606 	.ds 3
      0001F7                        607 _VoltageController_isLocked_vc_65536_204:
      0001F7                        608 	.ds 3
                                    609 ;--------------------------------------------------------
                                    610 ; absolute external ram data
                                    611 ;--------------------------------------------------------
                                    612 	.area XABS    (ABS,XDATA)
                                    613 ;--------------------------------------------------------
                                    614 ; initialized external ram data
                                    615 ;--------------------------------------------------------
                                    616 	.area XISEG   (XDATA)
                                    617 	.area HOME    (CODE)
                                    618 	.area GSINIT0 (CODE)
                                    619 	.area GSINIT1 (CODE)
                                    620 	.area GSINIT2 (CODE)
                                    621 	.area GSINIT3 (CODE)
                                    622 	.area GSINIT4 (CODE)
                                    623 	.area GSINIT5 (CODE)
                                    624 	.area GSINIT  (CODE)
                                    625 	.area GSFINAL (CODE)
                                    626 	.area CSEG    (CODE)
                                    627 ;--------------------------------------------------------
                                    628 ; global & static initialisations
                                    629 ;--------------------------------------------------------
                                    630 	.area HOME    (CODE)
                                    631 	.area GSINIT  (CODE)
                                    632 	.area GSFINAL (CODE)
                                    633 	.area GSINIT  (CODE)
                                    634 ;--------------------------------------------------------
                                    635 ; Home
                                    636 ;--------------------------------------------------------
                                    637 	.area HOME    (CODE)
                                    638 	.area HOME    (CODE)
                                    639 ;--------------------------------------------------------
                                    640 ; code
                                    641 ;--------------------------------------------------------
                                    642 	.area CSEG    (CODE)
                                    643 ;------------------------------------------------------------
                                    644 ;Allocation info for local variables in function 'VoltageController_voltageToPWM'
                                    645 ;------------------------------------------------------------
                                    646 ;voltage                   Allocated with name '_VoltageController_voltageToPWM_voltage_65536_180'
                                    647 ;pwm_float                 Allocated with name '_VoltageController_voltageToPWM_pwm_float_65536_181'
                                    648 ;------------------------------------------------------------
                                    649 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:8: static uint8_t VoltageController_voltageToPWM(float voltage) {
                                    650 ;	-----------------------------------------
                                    651 ;	 function VoltageController_voltageToPWM
                                    652 ;	-----------------------------------------
      001748                        653 _VoltageController_voltageToPWM:
                           000007   654 	ar7 = 0x07
                           000006   655 	ar6 = 0x06
                           000005   656 	ar5 = 0x05
                           000004   657 	ar4 = 0x04
                           000003   658 	ar3 = 0x03
                           000002   659 	ar2 = 0x02
                           000001   660 	ar1 = 0x01
                           000000   661 	ar0 = 0x00
      001748 AF 82            [24]  662 	mov	r7,dpl
      00174A AE 83            [24]  663 	mov	r6,dph
      00174C AD F0            [24]  664 	mov	r5,b
      00174E FC               [12]  665 	mov	r4,a
      00174F 90 01 CB         [24]  666 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      001752 EF               [12]  667 	mov	a,r7
      001753 F0               [24]  668 	movx	@dptr,a
      001754 EE               [12]  669 	mov	a,r6
      001755 A3               [24]  670 	inc	dptr
      001756 F0               [24]  671 	movx	@dptr,a
      001757 ED               [12]  672 	mov	a,r5
      001758 A3               [24]  673 	inc	dptr
      001759 F0               [24]  674 	movx	@dptr,a
      00175A EC               [12]  675 	mov	a,r4
      00175B A3               [24]  676 	inc	dptr
      00175C F0               [24]  677 	movx	@dptr,a
                                    678 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:11: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      00175D 90 01 CB         [24]  679 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      001760 E0               [24]  680 	movx	a,@dptr
      001761 FC               [12]  681 	mov	r4,a
      001762 A3               [24]  682 	inc	dptr
      001763 E0               [24]  683 	movx	a,@dptr
      001764 FD               [12]  684 	mov	r5,a
      001765 A3               [24]  685 	inc	dptr
      001766 E0               [24]  686 	movx	a,@dptr
      001767 FE               [12]  687 	mov	r6,a
      001768 A3               [24]  688 	inc	dptr
      001769 E0               [24]  689 	movx	a,@dptr
      00176A FF               [12]  690 	mov	r7,a
      00176B 74 66            [12]  691 	mov	a,#0x66
      00176D C0 E0            [24]  692 	push	acc
      00176F C0 E0            [24]  693 	push	acc
      001771 74 A6            [12]  694 	mov	a,#0xa6
      001773 C0 E0            [24]  695 	push	acc
      001775 74 40            [12]  696 	mov	a,#0x40
      001777 C0 E0            [24]  697 	push	acc
      001779 8C 82            [24]  698 	mov	dpl,r4
      00177B 8D 83            [24]  699 	mov	dph,r5
      00177D 8E F0            [24]  700 	mov	b,r6
      00177F EF               [12]  701 	mov	a,r7
      001780 12 2B 26         [24]  702 	lcall	___fslt
      001783 AF 82            [24]  703 	mov	r7,dpl
      001785 E5 81            [12]  704 	mov	a,sp
      001787 24 FC            [12]  705 	add	a,#0xfc
      001789 F5 81            [12]  706 	mov	sp,a
      00178B EF               [12]  707 	mov	a,r7
      00178C 60 10            [24]  708 	jz	00102$
      00178E 90 01 CB         [24]  709 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      001791 74 66            [12]  710 	mov	a,#0x66
      001793 F0               [24]  711 	movx	@dptr,a
      001794 A3               [24]  712 	inc	dptr
      001795 F0               [24]  713 	movx	@dptr,a
      001796 74 A6            [12]  714 	mov	a,#0xa6
      001798 A3               [24]  715 	inc	dptr
      001799 F0               [24]  716 	movx	@dptr,a
      00179A 74 40            [12]  717 	mov	a,#0x40
      00179C A3               [24]  718 	inc	dptr
      00179D F0               [24]  719 	movx	@dptr,a
      00179E                        720 00102$:
                                    721 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:12: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      00179E 90 01 CB         [24]  722 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      0017A1 E0               [24]  723 	movx	a,@dptr
      0017A2 C0 E0            [24]  724 	push	acc
      0017A4 A3               [24]  725 	inc	dptr
      0017A5 E0               [24]  726 	movx	a,@dptr
      0017A6 C0 E0            [24]  727 	push	acc
      0017A8 A3               [24]  728 	inc	dptr
      0017A9 E0               [24]  729 	movx	a,@dptr
      0017AA C0 E0            [24]  730 	push	acc
      0017AC A3               [24]  731 	inc	dptr
      0017AD E0               [24]  732 	movx	a,@dptr
      0017AE C0 E0            [24]  733 	push	acc
      0017B0 90 00 00         [24]  734 	mov	dptr,#0x0000
      0017B3 75 F0 40         [24]  735 	mov	b,#0x40
      0017B6 74 41            [12]  736 	mov	a,#0x41
      0017B8 12 2B 26         [24]  737 	lcall	___fslt
      0017BB AF 82            [24]  738 	mov	r7,dpl
      0017BD E5 81            [12]  739 	mov	a,sp
      0017BF 24 FC            [12]  740 	add	a,#0xfc
      0017C1 F5 81            [12]  741 	mov	sp,a
      0017C3 EF               [12]  742 	mov	a,r7
      0017C4 60 0E            [24]  743 	jz	00104$
      0017C6 90 01 CB         [24]  744 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      0017C9 E4               [12]  745 	clr	a
      0017CA F0               [24]  746 	movx	@dptr,a
      0017CB A3               [24]  747 	inc	dptr
      0017CC F0               [24]  748 	movx	@dptr,a
      0017CD 74 40            [12]  749 	mov	a,#0x40
      0017CF A3               [24]  750 	inc	dptr
      0017D0 F0               [24]  751 	movx	@dptr,a
      0017D1 04               [12]  752 	inc	a
      0017D2 A3               [24]  753 	inc	dptr
      0017D3 F0               [24]  754 	movx	@dptr,a
      0017D4                        755 00104$:
                                    756 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:13: pwm_float = (VOUT_MAX - voltage) / (VOUT_MAX - VOUT_MIN) * PWM_RESOLUTION;
      0017D4 90 01 CB         [24]  757 	mov	dptr,#_VoltageController_voltageToPWM_voltage_65536_180
      0017D7 E0               [24]  758 	movx	a,@dptr
      0017D8 C0 E0            [24]  759 	push	acc
      0017DA A3               [24]  760 	inc	dptr
      0017DB E0               [24]  761 	movx	a,@dptr
      0017DC C0 E0            [24]  762 	push	acc
      0017DE A3               [24]  763 	inc	dptr
      0017DF E0               [24]  764 	movx	a,@dptr
      0017E0 C0 E0            [24]  765 	push	acc
      0017E2 A3               [24]  766 	inc	dptr
      0017E3 E0               [24]  767 	movx	a,@dptr
      0017E4 C0 E0            [24]  768 	push	acc
      0017E6 90 00 00         [24]  769 	mov	dptr,#0x0000
      0017E9 75 F0 40         [24]  770 	mov	b,#0x40
      0017EC 74 41            [12]  771 	mov	a,#0x41
      0017EE 12 1E 46         [24]  772 	lcall	___fssub
      0017F1 AC 82            [24]  773 	mov	r4,dpl
      0017F3 AD 83            [24]  774 	mov	r5,dph
      0017F5 AE F0            [24]  775 	mov	r6,b
      0017F7 FF               [12]  776 	mov	r7,a
      0017F8 E5 81            [12]  777 	mov	a,sp
      0017FA 24 FC            [12]  778 	add	a,#0xfc
      0017FC F5 81            [12]  779 	mov	sp,a
      0017FE 74 9A            [12]  780 	mov	a,#0x9a
      001800 C0 E0            [24]  781 	push	acc
      001802 14               [12]  782 	dec	a
      001803 C0 E0            [24]  783 	push	acc
      001805 74 D9            [12]  784 	mov	a,#0xd9
      001807 C0 E0            [24]  785 	push	acc
      001809 74 40            [12]  786 	mov	a,#0x40
      00180B C0 E0            [24]  787 	push	acc
      00180D 8C 82            [24]  788 	mov	dpl,r4
      00180F 8D 83            [24]  789 	mov	dph,r5
      001811 8E F0            [24]  790 	mov	b,r6
      001813 EF               [12]  791 	mov	a,r7
      001814 12 30 60         [24]  792 	lcall	___fsdiv
      001817 AC 82            [24]  793 	mov	r4,dpl
      001819 AD 83            [24]  794 	mov	r5,dph
      00181B AE F0            [24]  795 	mov	r6,b
      00181D FF               [12]  796 	mov	r7,a
      00181E E5 81            [12]  797 	mov	a,sp
      001820 24 FC            [12]  798 	add	a,#0xfc
      001822 F5 81            [12]  799 	mov	sp,a
      001824 C0 04            [24]  800 	push	ar4
      001826 C0 05            [24]  801 	push	ar5
      001828 C0 06            [24]  802 	push	ar6
      00182A C0 07            [24]  803 	push	ar7
      00182C 90 00 00         [24]  804 	mov	dptr,#0x0000
      00182F 75 F0 7F         [24]  805 	mov	b,#0x7f
      001832 74 43            [12]  806 	mov	a,#0x43
      001834 12 1E C9         [24]  807 	lcall	___fsmul
      001837 AC 82            [24]  808 	mov	r4,dpl
      001839 AD 83            [24]  809 	mov	r5,dph
      00183B AE F0            [24]  810 	mov	r6,b
      00183D FF               [12]  811 	mov	r7,a
      00183E E5 81            [12]  812 	mov	a,sp
      001840 24 FC            [12]  813 	add	a,#0xfc
      001842 F5 81            [12]  814 	mov	sp,a
      001844 90 01 CF         [24]  815 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      001847 EC               [12]  816 	mov	a,r4
      001848 F0               [24]  817 	movx	@dptr,a
      001849 ED               [12]  818 	mov	a,r5
      00184A A3               [24]  819 	inc	dptr
      00184B F0               [24]  820 	movx	@dptr,a
      00184C EE               [12]  821 	mov	a,r6
      00184D A3               [24]  822 	inc	dptr
      00184E F0               [24]  823 	movx	@dptr,a
      00184F EF               [12]  824 	mov	a,r7
      001850 A3               [24]  825 	inc	dptr
      001851 F0               [24]  826 	movx	@dptr,a
                                    827 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:14: if (pwm_float < 0.0f) pwm_float = 0.0f;
      001852 E4               [12]  828 	clr	a
      001853 C0 E0            [24]  829 	push	acc
      001855 C0 E0            [24]  830 	push	acc
      001857 C0 E0            [24]  831 	push	acc
      001859 C0 E0            [24]  832 	push	acc
      00185B 8C 82            [24]  833 	mov	dpl,r4
      00185D 8D 83            [24]  834 	mov	dph,r5
      00185F 8E F0            [24]  835 	mov	b,r6
      001861 EF               [12]  836 	mov	a,r7
      001862 12 2B 26         [24]  837 	lcall	___fslt
      001865 AF 82            [24]  838 	mov	r7,dpl
      001867 E5 81            [12]  839 	mov	a,sp
      001869 24 FC            [12]  840 	add	a,#0xfc
      00186B F5 81            [12]  841 	mov	sp,a
      00186D EF               [12]  842 	mov	a,r7
      00186E 60 0B            [24]  843 	jz	00106$
      001870 90 01 CF         [24]  844 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      001873 E4               [12]  845 	clr	a
      001874 F0               [24]  846 	movx	@dptr,a
      001875 A3               [24]  847 	inc	dptr
      001876 F0               [24]  848 	movx	@dptr,a
      001877 A3               [24]  849 	inc	dptr
      001878 F0               [24]  850 	movx	@dptr,a
      001879 A3               [24]  851 	inc	dptr
      00187A F0               [24]  852 	movx	@dptr,a
      00187B                        853 00106$:
                                    854 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:15: if (pwm_float > (float)PWM_RESOLUTION) pwm_float = (float)PWM_RESOLUTION;
      00187B 90 01 CF         [24]  855 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      00187E E0               [24]  856 	movx	a,@dptr
      00187F C0 E0            [24]  857 	push	acc
      001881 A3               [24]  858 	inc	dptr
      001882 E0               [24]  859 	movx	a,@dptr
      001883 C0 E0            [24]  860 	push	acc
      001885 A3               [24]  861 	inc	dptr
      001886 E0               [24]  862 	movx	a,@dptr
      001887 C0 E0            [24]  863 	push	acc
      001889 A3               [24]  864 	inc	dptr
      00188A E0               [24]  865 	movx	a,@dptr
      00188B C0 E0            [24]  866 	push	acc
      00188D 90 00 00         [24]  867 	mov	dptr,#0x0000
      001890 75 F0 7F         [24]  868 	mov	b,#0x7f
      001893 74 43            [12]  869 	mov	a,#0x43
      001895 12 2B 26         [24]  870 	lcall	___fslt
      001898 AF 82            [24]  871 	mov	r7,dpl
      00189A E5 81            [12]  872 	mov	a,sp
      00189C 24 FC            [12]  873 	add	a,#0xfc
      00189E F5 81            [12]  874 	mov	sp,a
      0018A0 EF               [12]  875 	mov	a,r7
      0018A1 60 0F            [24]  876 	jz	00108$
      0018A3 90 01 CF         [24]  877 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      0018A6 E4               [12]  878 	clr	a
      0018A7 F0               [24]  879 	movx	@dptr,a
      0018A8 A3               [24]  880 	inc	dptr
      0018A9 F0               [24]  881 	movx	@dptr,a
      0018AA 74 7F            [12]  882 	mov	a,#0x7f
      0018AC A3               [24]  883 	inc	dptr
      0018AD F0               [24]  884 	movx	@dptr,a
      0018AE 74 43            [12]  885 	mov	a,#0x43
      0018B0 A3               [24]  886 	inc	dptr
      0018B1 F0               [24]  887 	movx	@dptr,a
      0018B2                        888 00108$:
                                    889 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:16: return (uint8_t)pwm_float;
      0018B2 90 01 CF         [24]  890 	mov	dptr,#_VoltageController_voltageToPWM_pwm_float_65536_181
      0018B5 E0               [24]  891 	movx	a,@dptr
      0018B6 FC               [12]  892 	mov	r4,a
      0018B7 A3               [24]  893 	inc	dptr
      0018B8 E0               [24]  894 	movx	a,@dptr
      0018B9 FD               [12]  895 	mov	r5,a
      0018BA A3               [24]  896 	inc	dptr
      0018BB E0               [24]  897 	movx	a,@dptr
      0018BC FE               [12]  898 	mov	r6,a
      0018BD A3               [24]  899 	inc	dptr
      0018BE E0               [24]  900 	movx	a,@dptr
      0018BF 8C 82            [24]  901 	mov	dpl,r4
      0018C1 8D 83            [24]  902 	mov	dph,r5
      0018C3 8E F0            [24]  903 	mov	b,r6
                                    904 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:17: }
      0018C5 02 31 23         [24]  905 	ljmp	___fs2uchar
                                    906 ;------------------------------------------------------------
                                    907 ;Allocation info for local variables in function 'VoltageController_begin'
                                    908 ;------------------------------------------------------------
                                    909 ;sloc0                     Allocated with name '_VoltageController_begin_sloc0_1_0'
                                    910 ;pwm_out                   Allocated with name '_VoltageController_begin_PARM_2'
                                    911 ;adc_in                    Allocated with name '_VoltageController_begin_PARM_3'
                                    912 ;vc                        Allocated with name '_VoltageController_begin_vc_65536_182'
                                    913 ;------------------------------------------------------------
                                    914 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:19: void VoltageController_begin(VoltageController* vc, uint8_t pwm_out, uint8_t adc_in) {
                                    915 ;	-----------------------------------------
                                    916 ;	 function VoltageController_begin
                                    917 ;	-----------------------------------------
      0018C8                        918 _VoltageController_begin:
      0018C8 AF F0            [24]  919 	mov	r7,b
      0018CA AE 83            [24]  920 	mov	r6,dph
      0018CC E5 82            [12]  921 	mov	a,dpl
      0018CE 90 01 D5         [24]  922 	mov	dptr,#_VoltageController_begin_vc_65536_182
      0018D1 F0               [24]  923 	movx	@dptr,a
      0018D2 EE               [12]  924 	mov	a,r6
      0018D3 A3               [24]  925 	inc	dptr
      0018D4 F0               [24]  926 	movx	@dptr,a
      0018D5 EF               [12]  927 	mov	a,r7
      0018D6 A3               [24]  928 	inc	dptr
      0018D7 F0               [24]  929 	movx	@dptr,a
                                    930 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:20: vc->pwm_pin = pwm_out;
      0018D8 90 01 D5         [24]  931 	mov	dptr,#_VoltageController_begin_vc_65536_182
      0018DB E0               [24]  932 	movx	a,@dptr
      0018DC FD               [12]  933 	mov	r5,a
      0018DD A3               [24]  934 	inc	dptr
      0018DE E0               [24]  935 	movx	a,@dptr
      0018DF FE               [12]  936 	mov	r6,a
      0018E0 A3               [24]  937 	inc	dptr
      0018E1 E0               [24]  938 	movx	a,@dptr
      0018E2 FF               [12]  939 	mov	r7,a
      0018E3 90 01 D3         [24]  940 	mov	dptr,#_VoltageController_begin_PARM_2
      0018E6 E0               [24]  941 	movx	a,@dptr
      0018E7 FC               [12]  942 	mov	r4,a
      0018E8 8D 82            [24]  943 	mov	dpl,r5
      0018EA 8E 83            [24]  944 	mov	dph,r6
      0018EC 8F F0            [24]  945 	mov	b,r7
      0018EE 12 2B 0B         [24]  946 	lcall	__gptrput
                                    947 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:21: vc->adc_pin = adc_in;
      0018F1 74 01            [12]  948 	mov	a,#0x01
      0018F3 2D               [12]  949 	add	a,r5
      0018F4 F5 48            [12]  950 	mov	_VoltageController_begin_sloc0_1_0,a
      0018F6 E4               [12]  951 	clr	a
      0018F7 3E               [12]  952 	addc	a,r6
      0018F8 F5 49            [12]  953 	mov	(_VoltageController_begin_sloc0_1_0 + 1),a
      0018FA 8F 4A            [24]  954 	mov	(_VoltageController_begin_sloc0_1_0 + 2),r7
      0018FC 90 01 D4         [24]  955 	mov	dptr,#_VoltageController_begin_PARM_3
      0018FF E0               [24]  956 	movx	a,@dptr
      001900 85 48 82         [24]  957 	mov	dpl,_VoltageController_begin_sloc0_1_0
      001903 85 49 83         [24]  958 	mov	dph,(_VoltageController_begin_sloc0_1_0 + 1)
      001906 85 4A F0         [24]  959 	mov	b,(_VoltageController_begin_sloc0_1_0 + 2)
      001909 12 2B 0B         [24]  960 	lcall	__gptrput
                                    961 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:24: pinMode(vc->pwm_pin, OUTPUT);
      00190C 90 01 FD         [24]  962 	mov	dptr,#_pinMode_PARM_2
      00190F 74 01            [12]  963 	mov	a,#0x01
      001911 F0               [24]  964 	movx	@dptr,a
      001912 8C 82            [24]  965 	mov	dpl,r4
      001914 C0 07            [24]  966 	push	ar7
      001916 C0 06            [24]  967 	push	ar6
      001918 C0 05            [24]  968 	push	ar5
      00191A 12 21 7E         [24]  969 	lcall	_pinMode
      00191D D0 05            [24]  970 	pop	ar5
      00191F D0 06            [24]  971 	pop	ar6
      001921 D0 07            [24]  972 	pop	ar7
                                    973 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:27: analogWrite(vc->pwm_pin, 0);
      001923 8D 82            [24]  974 	mov	dpl,r5
      001925 8E 83            [24]  975 	mov	dph,r6
      001927 8F F0            [24]  976 	mov	b,r7
      001929 12 31 2B         [24]  977 	lcall	__gptrget
      00192C FC               [12]  978 	mov	r4,a
      00192D 90 02 01         [24]  979 	mov	dptr,#_analogWrite_PARM_2
      001930 E4               [12]  980 	clr	a
      001931 F0               [24]  981 	movx	@dptr,a
      001932 A3               [24]  982 	inc	dptr
      001933 F0               [24]  983 	movx	@dptr,a
      001934 8C 82            [24]  984 	mov	dpl,r4
      001936 C0 07            [24]  985 	push	ar7
      001938 C0 06            [24]  986 	push	ar6
      00193A C0 05            [24]  987 	push	ar5
      00193C 12 2B 7D         [24]  988 	lcall	_analogWrite
      00193F D0 05            [24]  989 	pop	ar5
      001941 D0 06            [24]  990 	pop	ar6
      001943 D0 07            [24]  991 	pop	ar7
                                    992 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:28: vc->current_pwm_duty = 0;
      001945 74 0A            [12]  993 	mov	a,#0x0a
      001947 2D               [12]  994 	add	a,r5
      001948 F8               [12]  995 	mov	r0,a
      001949 E4               [12]  996 	clr	a
      00194A 3E               [12]  997 	addc	a,r6
      00194B FB               [12]  998 	mov	r3,a
      00194C 8F 04            [24]  999 	mov	ar4,r7
      00194E 88 82            [24] 1000 	mov	dpl,r0
      001950 8B 83            [24] 1001 	mov	dph,r3
      001952 8C F0            [24] 1002 	mov	b,r4
      001954 E4               [12] 1003 	clr	a
      001955 12 2B 0B         [24] 1004 	lcall	__gptrput
                                   1005 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:29: vc->target_voltage = VOUT_DEFAULT;
      001958 74 02            [12] 1006 	mov	a,#0x02
      00195A 2D               [12] 1007 	add	a,r5
      00195B FA               [12] 1008 	mov	r2,a
      00195C E4               [12] 1009 	clr	a
      00195D 3E               [12] 1010 	addc	a,r6
      00195E FB               [12] 1011 	mov	r3,a
      00195F 8F 04            [24] 1012 	mov	ar4,r7
      001961 8A 82            [24] 1013 	mov	dpl,r2
      001963 8B 83            [24] 1014 	mov	dph,r3
      001965 8C F0            [24] 1015 	mov	b,r4
      001967 E4               [12] 1016 	clr	a
      001968 12 2B 0B         [24] 1017 	lcall	__gptrput
      00196B A3               [24] 1018 	inc	dptr
      00196C 12 2B 0B         [24] 1019 	lcall	__gptrput
      00196F A3               [24] 1020 	inc	dptr
      001970 74 40            [12] 1021 	mov	a,#0x40
      001972 12 2B 0B         [24] 1022 	lcall	__gptrput
      001975 A3               [24] 1023 	inc	dptr
      001976 04               [12] 1024 	inc	a
      001977 12 2B 0B         [24] 1025 	lcall	__gptrput
                                   1026 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:30: vc->is_locked = false;
      00197A 74 0B            [12] 1027 	mov	a,#0x0b
      00197C 2D               [12] 1028 	add	a,r5
      00197D FA               [12] 1029 	mov	r2,a
      00197E E4               [12] 1030 	clr	a
      00197F 3E               [12] 1031 	addc	a,r6
      001980 FB               [12] 1032 	mov	r3,a
      001981 8F 04            [24] 1033 	mov	ar4,r7
      001983 8A 82            [24] 1034 	mov	dpl,r2
      001985 8B 83            [24] 1035 	mov	dph,r3
      001987 8C F0            [24] 1036 	mov	b,r4
      001989 E4               [12] 1037 	clr	a
      00198A 12 2B 0B         [24] 1038 	lcall	__gptrput
                                   1039 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:33: pinMode(vc->adc_pin, INPUT);
      00198D 85 48 82         [24] 1040 	mov	dpl,_VoltageController_begin_sloc0_1_0
      001990 85 49 83         [24] 1041 	mov	dph,(_VoltageController_begin_sloc0_1_0 + 1)
      001993 85 4A F0         [24] 1042 	mov	b,(_VoltageController_begin_sloc0_1_0 + 2)
      001996 12 31 2B         [24] 1043 	lcall	__gptrget
      001999 FC               [12] 1044 	mov	r4,a
      00199A 90 01 FD         [24] 1045 	mov	dptr,#_pinMode_PARM_2
      00199D E4               [12] 1046 	clr	a
      00199E F0               [24] 1047 	movx	@dptr,a
      00199F 8C 82            [24] 1048 	mov	dpl,r4
      0019A1 C0 07            [24] 1049 	push	ar7
      0019A3 C0 06            [24] 1050 	push	ar6
      0019A5 C0 05            [24] 1051 	push	ar5
      0019A7 12 21 7E         [24] 1052 	lcall	_pinMode
                                   1053 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:36: delay(100);
      0019AA 90 00 64         [24] 1054 	mov	dptr,#(0x64&0x00ff)
      0019AD E4               [12] 1055 	clr	a
      0019AE F5 F0            [12] 1056 	mov	b,a
      0019B0 12 24 34         [24] 1057 	lcall	_delay
      0019B3 D0 05            [24] 1058 	pop	ar5
      0019B5 D0 06            [24] 1059 	pop	ar6
      0019B7 D0 07            [24] 1060 	pop	ar7
                                   1061 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:37: vc->current_voltage = VoltageController_readVoltage(vc);
      0019B9 74 06            [12] 1062 	mov	a,#0x06
      0019BB 2D               [12] 1063 	add	a,r5
      0019BC FA               [12] 1064 	mov	r2,a
      0019BD E4               [12] 1065 	clr	a
      0019BE 3E               [12] 1066 	addc	a,r6
      0019BF FB               [12] 1067 	mov	r3,a
      0019C0 8F 04            [24] 1068 	mov	ar4,r7
      0019C2 8D 82            [24] 1069 	mov	dpl,r5
      0019C4 8E 83            [24] 1070 	mov	dph,r6
      0019C6 8F F0            [24] 1071 	mov	b,r7
      0019C8 C0 04            [24] 1072 	push	ar4
      0019CA C0 03            [24] 1073 	push	ar3
      0019CC C0 02            [24] 1074 	push	ar2
      0019CE 12 1B 45         [24] 1075 	lcall	_VoltageController_readVoltage
      0019D1 A9 82            [24] 1076 	mov	r1,dpl
      0019D3 AD 83            [24] 1077 	mov	r5,dph
      0019D5 AE F0            [24] 1078 	mov	r6,b
      0019D7 FF               [12] 1079 	mov	r7,a
      0019D8 D0 02            [24] 1080 	pop	ar2
      0019DA D0 03            [24] 1081 	pop	ar3
      0019DC D0 04            [24] 1082 	pop	ar4
      0019DE 8A 82            [24] 1083 	mov	dpl,r2
      0019E0 8B 83            [24] 1084 	mov	dph,r3
      0019E2 8C F0            [24] 1085 	mov	b,r4
      0019E4 E9               [12] 1086 	mov	a,r1
      0019E5 12 2B 0B         [24] 1087 	lcall	__gptrput
      0019E8 A3               [24] 1088 	inc	dptr
      0019E9 ED               [12] 1089 	mov	a,r5
      0019EA 12 2B 0B         [24] 1090 	lcall	__gptrput
      0019ED A3               [24] 1091 	inc	dptr
      0019EE EE               [12] 1092 	mov	a,r6
      0019EF 12 2B 0B         [24] 1093 	lcall	__gptrput
      0019F2 A3               [24] 1094 	inc	dptr
      0019F3 EF               [12] 1095 	mov	a,r7
                                   1096 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:38: }
      0019F4 02 2B 0B         [24] 1097 	ljmp	__gptrput
                                   1098 ;------------------------------------------------------------
                                   1099 ;Allocation info for local variables in function 'VoltageController_setVoltage'
                                   1100 ;------------------------------------------------------------
                                   1101 ;sloc0                     Allocated with name '_VoltageController_setVoltage_sloc0_1_0'
                                   1102 ;sloc1                     Allocated with name '_VoltageController_setVoltage_sloc1_1_0'
                                   1103 ;voltage                   Allocated with name '_VoltageController_setVoltage_PARM_2'
                                   1104 ;vc                        Allocated with name '_VoltageController_setVoltage_vc_65536_184'
                                   1105 ;------------------------------------------------------------
                                   1106 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:40: void VoltageController_setVoltage(VoltageController* vc, float voltage) {
                                   1107 ;	-----------------------------------------
                                   1108 ;	 function VoltageController_setVoltage
                                   1109 ;	-----------------------------------------
      0019F7                       1110 _VoltageController_setVoltage:
      0019F7 AF F0            [24] 1111 	mov	r7,b
      0019F9 AE 83            [24] 1112 	mov	r6,dph
      0019FB E5 82            [12] 1113 	mov	a,dpl
      0019FD 90 01 DC         [24] 1114 	mov	dptr,#_VoltageController_setVoltage_vc_65536_184
      001A00 F0               [24] 1115 	movx	@dptr,a
      001A01 EE               [12] 1116 	mov	a,r6
      001A02 A3               [24] 1117 	inc	dptr
      001A03 F0               [24] 1118 	movx	@dptr,a
      001A04 EF               [12] 1119 	mov	a,r7
      001A05 A3               [24] 1120 	inc	dptr
      001A06 F0               [24] 1121 	movx	@dptr,a
                                   1122 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:41: if (vc->is_locked) {
      001A07 90 01 DC         [24] 1123 	mov	dptr,#_VoltageController_setVoltage_vc_65536_184
      001A0A E0               [24] 1124 	movx	a,@dptr
      001A0B FD               [12] 1125 	mov	r5,a
      001A0C A3               [24] 1126 	inc	dptr
      001A0D E0               [24] 1127 	movx	a,@dptr
      001A0E FE               [12] 1128 	mov	r6,a
      001A0F A3               [24] 1129 	inc	dptr
      001A10 E0               [24] 1130 	movx	a,@dptr
      001A11 FF               [12] 1131 	mov	r7,a
      001A12 74 0B            [12] 1132 	mov	a,#0x0b
      001A14 2D               [12] 1133 	add	a,r5
      001A15 FA               [12] 1134 	mov	r2,a
      001A16 E4               [12] 1135 	clr	a
      001A17 3E               [12] 1136 	addc	a,r6
      001A18 FB               [12] 1137 	mov	r3,a
      001A19 8F 04            [24] 1138 	mov	ar4,r7
      001A1B 8A 82            [24] 1139 	mov	dpl,r2
      001A1D 8B 83            [24] 1140 	mov	dph,r3
      001A1F 8C F0            [24] 1141 	mov	b,r4
      001A21 12 31 2B         [24] 1142 	lcall	__gptrget
      001A24 60 01            [24] 1143 	jz	00102$
                                   1144 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:42: return;
      001A26 22               [24] 1145 	ret
      001A27                       1146 00102$:
                                   1147 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:45: if (voltage < VOUT_MIN) voltage = VOUT_MIN;
      001A27 90 01 D8         [24] 1148 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      001A2A E0               [24] 1149 	movx	a,@dptr
      001A2B F9               [12] 1150 	mov	r1,a
      001A2C A3               [24] 1151 	inc	dptr
      001A2D E0               [24] 1152 	movx	a,@dptr
      001A2E FA               [12] 1153 	mov	r2,a
      001A2F A3               [24] 1154 	inc	dptr
      001A30 E0               [24] 1155 	movx	a,@dptr
      001A31 FB               [12] 1156 	mov	r3,a
      001A32 A3               [24] 1157 	inc	dptr
      001A33 E0               [24] 1158 	movx	a,@dptr
      001A34 FC               [12] 1159 	mov	r4,a
      001A35 C0 07            [24] 1160 	push	ar7
      001A37 C0 06            [24] 1161 	push	ar6
      001A39 C0 05            [24] 1162 	push	ar5
      001A3B 74 66            [12] 1163 	mov	a,#0x66
      001A3D C0 E0            [24] 1164 	push	acc
      001A3F C0 E0            [24] 1165 	push	acc
      001A41 74 A6            [12] 1166 	mov	a,#0xa6
      001A43 C0 E0            [24] 1167 	push	acc
      001A45 74 40            [12] 1168 	mov	a,#0x40
      001A47 C0 E0            [24] 1169 	push	acc
      001A49 89 82            [24] 1170 	mov	dpl,r1
      001A4B 8A 83            [24] 1171 	mov	dph,r2
      001A4D 8B F0            [24] 1172 	mov	b,r3
      001A4F EC               [12] 1173 	mov	a,r4
      001A50 12 2B 26         [24] 1174 	lcall	___fslt
      001A53 AC 82            [24] 1175 	mov	r4,dpl
      001A55 E5 81            [12] 1176 	mov	a,sp
      001A57 24 FC            [12] 1177 	add	a,#0xfc
      001A59 F5 81            [12] 1178 	mov	sp,a
      001A5B D0 05            [24] 1179 	pop	ar5
      001A5D D0 06            [24] 1180 	pop	ar6
      001A5F D0 07            [24] 1181 	pop	ar7
      001A61 EC               [12] 1182 	mov	a,r4
      001A62 60 10            [24] 1183 	jz	00104$
      001A64 90 01 D8         [24] 1184 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      001A67 74 66            [12] 1185 	mov	a,#0x66
      001A69 F0               [24] 1186 	movx	@dptr,a
      001A6A A3               [24] 1187 	inc	dptr
      001A6B F0               [24] 1188 	movx	@dptr,a
      001A6C 74 A6            [12] 1189 	mov	a,#0xa6
      001A6E A3               [24] 1190 	inc	dptr
      001A6F F0               [24] 1191 	movx	@dptr,a
      001A70 74 40            [12] 1192 	mov	a,#0x40
      001A72 A3               [24] 1193 	inc	dptr
      001A73 F0               [24] 1194 	movx	@dptr,a
      001A74                       1195 00104$:
                                   1196 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:46: if (voltage > VOUT_MAX) voltage = VOUT_MAX;
      001A74 C0 07            [24] 1197 	push	ar7
      001A76 C0 06            [24] 1198 	push	ar6
      001A78 C0 05            [24] 1199 	push	ar5
      001A7A 90 01 D8         [24] 1200 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      001A7D E0               [24] 1201 	movx	a,@dptr
      001A7E C0 E0            [24] 1202 	push	acc
      001A80 A3               [24] 1203 	inc	dptr
      001A81 E0               [24] 1204 	movx	a,@dptr
      001A82 C0 E0            [24] 1205 	push	acc
      001A84 A3               [24] 1206 	inc	dptr
      001A85 E0               [24] 1207 	movx	a,@dptr
      001A86 C0 E0            [24] 1208 	push	acc
      001A88 A3               [24] 1209 	inc	dptr
      001A89 E0               [24] 1210 	movx	a,@dptr
      001A8A C0 E0            [24] 1211 	push	acc
      001A8C 90 00 00         [24] 1212 	mov	dptr,#0x0000
      001A8F 75 F0 40         [24] 1213 	mov	b,#0x40
      001A92 74 41            [12] 1214 	mov	a,#0x41
      001A94 12 2B 26         [24] 1215 	lcall	___fslt
      001A97 AC 82            [24] 1216 	mov	r4,dpl
      001A99 E5 81            [12] 1217 	mov	a,sp
      001A9B 24 FC            [12] 1218 	add	a,#0xfc
      001A9D F5 81            [12] 1219 	mov	sp,a
      001A9F D0 05            [24] 1220 	pop	ar5
      001AA1 D0 06            [24] 1221 	pop	ar6
      001AA3 D0 07            [24] 1222 	pop	ar7
      001AA5 EC               [12] 1223 	mov	a,r4
      001AA6 60 0E            [24] 1224 	jz	00106$
      001AA8 90 01 D8         [24] 1225 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      001AAB E4               [12] 1226 	clr	a
      001AAC F0               [24] 1227 	movx	@dptr,a
      001AAD A3               [24] 1228 	inc	dptr
      001AAE F0               [24] 1229 	movx	@dptr,a
      001AAF 74 40            [12] 1230 	mov	a,#0x40
      001AB1 A3               [24] 1231 	inc	dptr
      001AB2 F0               [24] 1232 	movx	@dptr,a
      001AB3 04               [12] 1233 	inc	a
      001AB4 A3               [24] 1234 	inc	dptr
      001AB5 F0               [24] 1235 	movx	@dptr,a
      001AB6                       1236 00106$:
                                   1237 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:47: vc->target_voltage = voltage;
      001AB6 74 02            [12] 1238 	mov	a,#0x02
      001AB8 2D               [12] 1239 	add	a,r5
      001AB9 F5 4B            [12] 1240 	mov	_VoltageController_setVoltage_sloc0_1_0,a
      001ABB E4               [12] 1241 	clr	a
      001ABC 3E               [12] 1242 	addc	a,r6
      001ABD F5 4C            [12] 1243 	mov	(_VoltageController_setVoltage_sloc0_1_0 + 1),a
      001ABF 8F 4D            [24] 1244 	mov	(_VoltageController_setVoltage_sloc0_1_0 + 2),r7
      001AC1 90 01 D8         [24] 1245 	mov	dptr,#_VoltageController_setVoltage_PARM_2
      001AC4 E0               [24] 1246 	movx	a,@dptr
      001AC5 F5 4E            [12] 1247 	mov	_VoltageController_setVoltage_sloc1_1_0,a
      001AC7 A3               [24] 1248 	inc	dptr
      001AC8 E0               [24] 1249 	movx	a,@dptr
      001AC9 F5 4F            [12] 1250 	mov	(_VoltageController_setVoltage_sloc1_1_0 + 1),a
      001ACB A3               [24] 1251 	inc	dptr
      001ACC E0               [24] 1252 	movx	a,@dptr
      001ACD F5 50            [12] 1253 	mov	(_VoltageController_setVoltage_sloc1_1_0 + 2),a
      001ACF A3               [24] 1254 	inc	dptr
      001AD0 E0               [24] 1255 	movx	a,@dptr
      001AD1 F5 51            [12] 1256 	mov	(_VoltageController_setVoltage_sloc1_1_0 + 3),a
      001AD3 85 4B 82         [24] 1257 	mov	dpl,_VoltageController_setVoltage_sloc0_1_0
      001AD6 85 4C 83         [24] 1258 	mov	dph,(_VoltageController_setVoltage_sloc0_1_0 + 1)
      001AD9 85 4D F0         [24] 1259 	mov	b,(_VoltageController_setVoltage_sloc0_1_0 + 2)
      001ADC E5 4E            [12] 1260 	mov	a,_VoltageController_setVoltage_sloc1_1_0
      001ADE 12 2B 0B         [24] 1261 	lcall	__gptrput
      001AE1 A3               [24] 1262 	inc	dptr
      001AE2 E5 4F            [12] 1263 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 1)
      001AE4 12 2B 0B         [24] 1264 	lcall	__gptrput
      001AE7 A3               [24] 1265 	inc	dptr
      001AE8 E5 50            [12] 1266 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 2)
      001AEA 12 2B 0B         [24] 1267 	lcall	__gptrput
      001AED A3               [24] 1268 	inc	dptr
      001AEE E5 51            [12] 1269 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 3)
      001AF0 12 2B 0B         [24] 1270 	lcall	__gptrput
                                   1271 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:48: vc->current_pwm_duty = VoltageController_voltageToPWM(vc->target_voltage);
      001AF3 74 0A            [12] 1272 	mov	a,#0x0a
      001AF5 2D               [12] 1273 	add	a,r5
      001AF6 FA               [12] 1274 	mov	r2,a
      001AF7 E4               [12] 1275 	clr	a
      001AF8 3E               [12] 1276 	addc	a,r6
      001AF9 FB               [12] 1277 	mov	r3,a
      001AFA 8F 04            [24] 1278 	mov	ar4,r7
      001AFC 85 4E 82         [24] 1279 	mov	dpl,_VoltageController_setVoltage_sloc1_1_0
      001AFF 85 4F 83         [24] 1280 	mov	dph,(_VoltageController_setVoltage_sloc1_1_0 + 1)
      001B02 85 50 F0         [24] 1281 	mov	b,(_VoltageController_setVoltage_sloc1_1_0 + 2)
      001B05 E5 51            [12] 1282 	mov	a,(_VoltageController_setVoltage_sloc1_1_0 + 3)
      001B07 C0 07            [24] 1283 	push	ar7
      001B09 C0 06            [24] 1284 	push	ar6
      001B0B C0 05            [24] 1285 	push	ar5
      001B0D C0 04            [24] 1286 	push	ar4
      001B0F C0 03            [24] 1287 	push	ar3
      001B11 C0 02            [24] 1288 	push	ar2
      001B13 12 17 48         [24] 1289 	lcall	_VoltageController_voltageToPWM
      001B16 A9 82            [24] 1290 	mov	r1,dpl
      001B18 D0 02            [24] 1291 	pop	ar2
      001B1A D0 03            [24] 1292 	pop	ar3
      001B1C D0 04            [24] 1293 	pop	ar4
      001B1E D0 05            [24] 1294 	pop	ar5
      001B20 D0 06            [24] 1295 	pop	ar6
      001B22 D0 07            [24] 1296 	pop	ar7
      001B24 8A 82            [24] 1297 	mov	dpl,r2
      001B26 8B 83            [24] 1298 	mov	dph,r3
      001B28 8C F0            [24] 1299 	mov	b,r4
      001B2A E9               [12] 1300 	mov	a,r1
      001B2B 12 2B 0B         [24] 1301 	lcall	__gptrput
                                   1302 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:49: analogWrite(vc->pwm_pin, vc->current_pwm_duty);
      001B2E 8D 82            [24] 1303 	mov	dpl,r5
      001B30 8E 83            [24] 1304 	mov	dph,r6
      001B32 8F F0            [24] 1305 	mov	b,r7
      001B34 12 31 2B         [24] 1306 	lcall	__gptrget
      001B37 FD               [12] 1307 	mov	r5,a
      001B38 90 02 01         [24] 1308 	mov	dptr,#_analogWrite_PARM_2
      001B3B E9               [12] 1309 	mov	a,r1
      001B3C F0               [24] 1310 	movx	@dptr,a
      001B3D E4               [12] 1311 	clr	a
      001B3E A3               [24] 1312 	inc	dptr
      001B3F F0               [24] 1313 	movx	@dptr,a
      001B40 8D 82            [24] 1314 	mov	dpl,r5
                                   1315 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:50: }
      001B42 02 2B 7D         [24] 1316 	ljmp	_analogWrite
                                   1317 ;------------------------------------------------------------
                                   1318 ;Allocation info for local variables in function 'VoltageController_readVoltage'
                                   1319 ;------------------------------------------------------------
                                   1320 ;vc                        Allocated with name '_VoltageController_readVoltage_vc_65536_187'
                                   1321 ;------------------------------------------------------------
                                   1322 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:52: float VoltageController_readVoltage(VoltageController* vc) {
                                   1323 ;	-----------------------------------------
                                   1324 ;	 function VoltageController_readVoltage
                                   1325 ;	-----------------------------------------
      001B45                       1326 _VoltageController_readVoltage:
      001B45 AF F0            [24] 1327 	mov	r7,b
      001B47 AE 83            [24] 1328 	mov	r6,dph
      001B49 E5 82            [12] 1329 	mov	a,dpl
      001B4B 90 01 DF         [24] 1330 	mov	dptr,#_VoltageController_readVoltage_vc_65536_187
      001B4E F0               [24] 1331 	movx	@dptr,a
      001B4F EE               [12] 1332 	mov	a,r6
      001B50 A3               [24] 1333 	inc	dptr
      001B51 F0               [24] 1334 	movx	@dptr,a
      001B52 EF               [12] 1335 	mov	a,r7
      001B53 A3               [24] 1336 	inc	dptr
      001B54 F0               [24] 1337 	movx	@dptr,a
                                   1338 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:54: return vc->target_voltage;
      001B55 90 01 DF         [24] 1339 	mov	dptr,#_VoltageController_readVoltage_vc_65536_187
      001B58 E0               [24] 1340 	movx	a,@dptr
      001B59 FD               [12] 1341 	mov	r5,a
      001B5A A3               [24] 1342 	inc	dptr
      001B5B E0               [24] 1343 	movx	a,@dptr
      001B5C FE               [12] 1344 	mov	r6,a
      001B5D A3               [24] 1345 	inc	dptr
      001B5E E0               [24] 1346 	movx	a,@dptr
      001B5F FF               [12] 1347 	mov	r7,a
      001B60 74 02            [12] 1348 	mov	a,#0x02
      001B62 2D               [12] 1349 	add	a,r5
      001B63 FD               [12] 1350 	mov	r5,a
      001B64 E4               [12] 1351 	clr	a
      001B65 3E               [12] 1352 	addc	a,r6
      001B66 FE               [12] 1353 	mov	r6,a
      001B67 8D 82            [24] 1354 	mov	dpl,r5
      001B69 8E 83            [24] 1355 	mov	dph,r6
      001B6B 8F F0            [24] 1356 	mov	b,r7
      001B6D 12 31 2B         [24] 1357 	lcall	__gptrget
      001B70 FD               [12] 1358 	mov	r5,a
      001B71 A3               [24] 1359 	inc	dptr
      001B72 12 31 2B         [24] 1360 	lcall	__gptrget
      001B75 FE               [12] 1361 	mov	r6,a
      001B76 A3               [24] 1362 	inc	dptr
      001B77 12 31 2B         [24] 1363 	lcall	__gptrget
      001B7A FF               [12] 1364 	mov	r7,a
      001B7B A3               [24] 1365 	inc	dptr
      001B7C 12 31 2B         [24] 1366 	lcall	__gptrget
      001B7F 8D 82            [24] 1367 	mov	dpl,r5
      001B81 8E 83            [24] 1368 	mov	dph,r6
      001B83 8F F0            [24] 1369 	mov	b,r7
                                   1370 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:72: }
      001B85 22               [24] 1371 	ret
                                   1372 ;------------------------------------------------------------
                                   1373 ;Allocation info for local variables in function 'VoltageController_updateVoltage'
                                   1374 ;------------------------------------------------------------
                                   1375 ;vc                        Allocated with name '_VoltageController_updateVoltage_vc_65536_189'
                                   1376 ;------------------------------------------------------------
                                   1377 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:74: float VoltageController_updateVoltage(VoltageController* vc) {
                                   1378 ;	-----------------------------------------
                                   1379 ;	 function VoltageController_updateVoltage
                                   1380 ;	-----------------------------------------
      001B86                       1381 _VoltageController_updateVoltage:
      001B86 AF F0            [24] 1382 	mov	r7,b
      001B88 AE 83            [24] 1383 	mov	r6,dph
      001B8A E5 82            [12] 1384 	mov	a,dpl
      001B8C 90 01 E2         [24] 1385 	mov	dptr,#_VoltageController_updateVoltage_vc_65536_189
      001B8F F0               [24] 1386 	movx	@dptr,a
      001B90 EE               [12] 1387 	mov	a,r6
      001B91 A3               [24] 1388 	inc	dptr
      001B92 F0               [24] 1389 	movx	@dptr,a
      001B93 EF               [12] 1390 	mov	a,r7
      001B94 A3               [24] 1391 	inc	dptr
      001B95 F0               [24] 1392 	movx	@dptr,a
                                   1393 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:75: vc->current_voltage = VoltageController_readVoltage(vc);
      001B96 90 01 E2         [24] 1394 	mov	dptr,#_VoltageController_updateVoltage_vc_65536_189
      001B99 E0               [24] 1395 	movx	a,@dptr
      001B9A FD               [12] 1396 	mov	r5,a
      001B9B A3               [24] 1397 	inc	dptr
      001B9C E0               [24] 1398 	movx	a,@dptr
      001B9D FE               [12] 1399 	mov	r6,a
      001B9E A3               [24] 1400 	inc	dptr
      001B9F E0               [24] 1401 	movx	a,@dptr
      001BA0 FF               [12] 1402 	mov	r7,a
      001BA1 74 06            [12] 1403 	mov	a,#0x06
      001BA3 2D               [12] 1404 	add	a,r5
      001BA4 FA               [12] 1405 	mov	r2,a
      001BA5 E4               [12] 1406 	clr	a
      001BA6 3E               [12] 1407 	addc	a,r6
      001BA7 FB               [12] 1408 	mov	r3,a
      001BA8 8F 04            [24] 1409 	mov	ar4,r7
      001BAA 8D 82            [24] 1410 	mov	dpl,r5
      001BAC 8E 83            [24] 1411 	mov	dph,r6
      001BAE 8F F0            [24] 1412 	mov	b,r7
      001BB0 C0 04            [24] 1413 	push	ar4
      001BB2 C0 03            [24] 1414 	push	ar3
      001BB4 C0 02            [24] 1415 	push	ar2
      001BB6 12 1B 45         [24] 1416 	lcall	_VoltageController_readVoltage
      001BB9 A9 82            [24] 1417 	mov	r1,dpl
      001BBB AD 83            [24] 1418 	mov	r5,dph
      001BBD AE F0            [24] 1419 	mov	r6,b
      001BBF FF               [12] 1420 	mov	r7,a
      001BC0 D0 02            [24] 1421 	pop	ar2
      001BC2 D0 03            [24] 1422 	pop	ar3
      001BC4 D0 04            [24] 1423 	pop	ar4
      001BC6 8A 82            [24] 1424 	mov	dpl,r2
      001BC8 8B 83            [24] 1425 	mov	dph,r3
      001BCA 8C F0            [24] 1426 	mov	b,r4
      001BCC E9               [12] 1427 	mov	a,r1
      001BCD 12 2B 0B         [24] 1428 	lcall	__gptrput
      001BD0 A3               [24] 1429 	inc	dptr
      001BD1 ED               [12] 1430 	mov	a,r5
      001BD2 12 2B 0B         [24] 1431 	lcall	__gptrput
      001BD5 A3               [24] 1432 	inc	dptr
      001BD6 EE               [12] 1433 	mov	a,r6
      001BD7 12 2B 0B         [24] 1434 	lcall	__gptrput
      001BDA A3               [24] 1435 	inc	dptr
      001BDB EF               [12] 1436 	mov	a,r7
      001BDC 12 2B 0B         [24] 1437 	lcall	__gptrput
                                   1438 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:76: return vc->current_voltage;
      001BDF 90 01 E2         [24] 1439 	mov	dptr,#_VoltageController_updateVoltage_vc_65536_189
      001BE2 E0               [24] 1440 	movx	a,@dptr
      001BE3 FD               [12] 1441 	mov	r5,a
      001BE4 A3               [24] 1442 	inc	dptr
      001BE5 E0               [24] 1443 	movx	a,@dptr
      001BE6 FE               [12] 1444 	mov	r6,a
      001BE7 A3               [24] 1445 	inc	dptr
      001BE8 E0               [24] 1446 	movx	a,@dptr
      001BE9 FF               [12] 1447 	mov	r7,a
      001BEA 74 06            [12] 1448 	mov	a,#0x06
      001BEC 2D               [12] 1449 	add	a,r5
      001BED FD               [12] 1450 	mov	r5,a
      001BEE E4               [12] 1451 	clr	a
      001BEF 3E               [12] 1452 	addc	a,r6
      001BF0 FE               [12] 1453 	mov	r6,a
      001BF1 8D 82            [24] 1454 	mov	dpl,r5
      001BF3 8E 83            [24] 1455 	mov	dph,r6
      001BF5 8F F0            [24] 1456 	mov	b,r7
      001BF7 12 31 2B         [24] 1457 	lcall	__gptrget
      001BFA FD               [12] 1458 	mov	r5,a
      001BFB A3               [24] 1459 	inc	dptr
      001BFC 12 31 2B         [24] 1460 	lcall	__gptrget
      001BFF FE               [12] 1461 	mov	r6,a
      001C00 A3               [24] 1462 	inc	dptr
      001C01 12 31 2B         [24] 1463 	lcall	__gptrget
      001C04 FF               [12] 1464 	mov	r7,a
      001C05 A3               [24] 1465 	inc	dptr
      001C06 12 31 2B         [24] 1466 	lcall	__gptrget
      001C09 8D 82            [24] 1467 	mov	dpl,r5
      001C0B 8E 83            [24] 1468 	mov	dph,r6
      001C0D 8F F0            [24] 1469 	mov	b,r7
                                   1470 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:77: }
      001C0F 22               [24] 1471 	ret
                                   1472 ;------------------------------------------------------------
                                   1473 ;Allocation info for local variables in function 'VoltageController_isVoltageAbnormal'
                                   1474 ;------------------------------------------------------------
                                   1475 ;vc                        Allocated with name '_VoltageController_isVoltageAbnormal_vc_65536_191'
                                   1476 ;------------------------------------------------------------
                                   1477 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:79: bool VoltageController_isVoltageAbnormal(VoltageController* vc) {
                                   1478 ;	-----------------------------------------
                                   1479 ;	 function VoltageController_isVoltageAbnormal
                                   1480 ;	-----------------------------------------
      001C10                       1481 _VoltageController_isVoltageAbnormal:
      001C10 AF F0            [24] 1482 	mov	r7,b
      001C12 AE 83            [24] 1483 	mov	r6,dph
      001C14 E5 82            [12] 1484 	mov	a,dpl
      001C16 90 01 E5         [24] 1485 	mov	dptr,#_VoltageController_isVoltageAbnormal_vc_65536_191
      001C19 F0               [24] 1486 	movx	@dptr,a
      001C1A EE               [12] 1487 	mov	a,r6
      001C1B A3               [24] 1488 	inc	dptr
      001C1C F0               [24] 1489 	movx	@dptr,a
      001C1D EF               [12] 1490 	mov	a,r7
      001C1E A3               [24] 1491 	inc	dptr
      001C1F F0               [24] 1492 	movx	@dptr,a
                                   1493 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:80: VoltageController_updateVoltage(vc);
      001C20 90 01 E5         [24] 1494 	mov	dptr,#_VoltageController_isVoltageAbnormal_vc_65536_191
      001C23 E0               [24] 1495 	movx	a,@dptr
      001C24 FD               [12] 1496 	mov	r5,a
      001C25 A3               [24] 1497 	inc	dptr
      001C26 E0               [24] 1498 	movx	a,@dptr
      001C27 FE               [12] 1499 	mov	r6,a
      001C28 A3               [24] 1500 	inc	dptr
      001C29 E0               [24] 1501 	movx	a,@dptr
      001C2A FF               [12] 1502 	mov	r7,a
      001C2B 8D 82            [24] 1503 	mov	dpl,r5
      001C2D 8E 83            [24] 1504 	mov	dph,r6
      001C2F 8F F0            [24] 1505 	mov	b,r7
      001C31 12 1B 86         [24] 1506 	lcall	_VoltageController_updateVoltage
                                   1507 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:82: if (vc->current_voltage < vc->target_voltage - 1.0f) {
      001C34 90 01 E5         [24] 1508 	mov	dptr,#_VoltageController_isVoltageAbnormal_vc_65536_191
      001C37 E0               [24] 1509 	movx	a,@dptr
      001C38 FF               [12] 1510 	mov	r7,a
      001C39 A3               [24] 1511 	inc	dptr
      001C3A E0               [24] 1512 	movx	a,@dptr
      001C3B FD               [12] 1513 	mov	r5,a
      001C3C A3               [24] 1514 	inc	dptr
      001C3D E0               [24] 1515 	movx	a,@dptr
      001C3E FE               [12] 1516 	mov	r6,a
      001C3F 74 06            [12] 1517 	mov	a,#0x06
      001C41 2F               [12] 1518 	add	a,r7
      001C42 FC               [12] 1519 	mov	r4,a
      001C43 E4               [12] 1520 	clr	a
      001C44 3D               [12] 1521 	addc	a,r5
      001C45 FA               [12] 1522 	mov	r2,a
      001C46 8E 03            [24] 1523 	mov	ar3,r6
      001C48 8C 82            [24] 1524 	mov	dpl,r4
      001C4A 8A 83            [24] 1525 	mov	dph,r2
      001C4C 8B F0            [24] 1526 	mov	b,r3
      001C4E 12 31 2B         [24] 1527 	lcall	__gptrget
      001C51 F9               [12] 1528 	mov	r1,a
      001C52 A3               [24] 1529 	inc	dptr
      001C53 12 31 2B         [24] 1530 	lcall	__gptrget
      001C56 FA               [12] 1531 	mov	r2,a
      001C57 A3               [24] 1532 	inc	dptr
      001C58 12 31 2B         [24] 1533 	lcall	__gptrget
      001C5B FB               [12] 1534 	mov	r3,a
      001C5C A3               [24] 1535 	inc	dptr
      001C5D 12 31 2B         [24] 1536 	lcall	__gptrget
      001C60 FC               [12] 1537 	mov	r4,a
      001C61 74 02            [12] 1538 	mov	a,#0x02
      001C63 2F               [12] 1539 	add	a,r7
      001C64 FF               [12] 1540 	mov	r7,a
      001C65 E4               [12] 1541 	clr	a
      001C66 3D               [12] 1542 	addc	a,r5
      001C67 FD               [12] 1543 	mov	r5,a
      001C68 8F 82            [24] 1544 	mov	dpl,r7
      001C6A 8D 83            [24] 1545 	mov	dph,r5
      001C6C 8E F0            [24] 1546 	mov	b,r6
      001C6E 12 31 2B         [24] 1547 	lcall	__gptrget
      001C71 F8               [12] 1548 	mov	r0,a
      001C72 A3               [24] 1549 	inc	dptr
      001C73 12 31 2B         [24] 1550 	lcall	__gptrget
      001C76 FD               [12] 1551 	mov	r5,a
      001C77 A3               [24] 1552 	inc	dptr
      001C78 12 31 2B         [24] 1553 	lcall	__gptrget
      001C7B FE               [12] 1554 	mov	r6,a
      001C7C A3               [24] 1555 	inc	dptr
      001C7D 12 31 2B         [24] 1556 	lcall	__gptrget
      001C80 FF               [12] 1557 	mov	r7,a
      001C81 C0 04            [24] 1558 	push	ar4
      001C83 C0 03            [24] 1559 	push	ar3
      001C85 C0 02            [24] 1560 	push	ar2
      001C87 C0 01            [24] 1561 	push	ar1
      001C89 E4               [12] 1562 	clr	a
      001C8A C0 E0            [24] 1563 	push	acc
      001C8C C0 E0            [24] 1564 	push	acc
      001C8E 74 80            [12] 1565 	mov	a,#0x80
      001C90 C0 E0            [24] 1566 	push	acc
      001C92 74 3F            [12] 1567 	mov	a,#0x3f
      001C94 C0 E0            [24] 1568 	push	acc
      001C96 88 82            [24] 1569 	mov	dpl,r0
      001C98 8D 83            [24] 1570 	mov	dph,r5
      001C9A 8E F0            [24] 1571 	mov	b,r6
      001C9C EF               [12] 1572 	mov	a,r7
      001C9D 12 1E 46         [24] 1573 	lcall	___fssub
      001CA0 A8 82            [24] 1574 	mov	r0,dpl
      001CA2 AD 83            [24] 1575 	mov	r5,dph
      001CA4 AE F0            [24] 1576 	mov	r6,b
      001CA6 FF               [12] 1577 	mov	r7,a
      001CA7 E5 81            [12] 1578 	mov	a,sp
      001CA9 24 FC            [12] 1579 	add	a,#0xfc
      001CAB F5 81            [12] 1580 	mov	sp,a
      001CAD D0 01            [24] 1581 	pop	ar1
      001CAF D0 02            [24] 1582 	pop	ar2
      001CB1 D0 03            [24] 1583 	pop	ar3
      001CB3 D0 04            [24] 1584 	pop	ar4
      001CB5 C0 00            [24] 1585 	push	ar0
      001CB7 C0 05            [24] 1586 	push	ar5
      001CB9 C0 06            [24] 1587 	push	ar6
      001CBB C0 07            [24] 1588 	push	ar7
      001CBD 89 82            [24] 1589 	mov	dpl,r1
      001CBF 8A 83            [24] 1590 	mov	dph,r2
      001CC1 8B F0            [24] 1591 	mov	b,r3
      001CC3 EC               [12] 1592 	mov	a,r4
      001CC4 12 2B 26         [24] 1593 	lcall	___fslt
      001CC7 AF 82            [24] 1594 	mov	r7,dpl
      001CC9 E5 81            [12] 1595 	mov	a,sp
      001CCB 24 FC            [12] 1596 	add	a,#0xfc
      001CCD F5 81            [12] 1597 	mov	sp,a
      001CCF EF               [12] 1598 	mov	a,r7
      001CD0 60 04            [24] 1599 	jz	00102$
                                   1600 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:83: return true;
      001CD2 75 82 01         [24] 1601 	mov	dpl,#0x01
      001CD5 22               [24] 1602 	ret
      001CD6                       1603 00102$:
                                   1604 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:86: return false;
      001CD6 75 82 00         [24] 1605 	mov	dpl,#0x00
                                   1606 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:87: }
      001CD9 22               [24] 1607 	ret
                                   1608 ;------------------------------------------------------------
                                   1609 ;Allocation info for local variables in function 'VoltageController_lockOutput'
                                   1610 ;------------------------------------------------------------
                                   1611 ;vc                        Allocated with name '_VoltageController_lockOutput_vc_65536_194'
                                   1612 ;------------------------------------------------------------
                                   1613 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:89: void VoltageController_lockOutput(VoltageController* vc) {
                                   1614 ;	-----------------------------------------
                                   1615 ;	 function VoltageController_lockOutput
                                   1616 ;	-----------------------------------------
      001CDA                       1617 _VoltageController_lockOutput:
      001CDA AF F0            [24] 1618 	mov	r7,b
      001CDC AE 83            [24] 1619 	mov	r6,dph
      001CDE E5 82            [12] 1620 	mov	a,dpl
      001CE0 90 01 E8         [24] 1621 	mov	dptr,#_VoltageController_lockOutput_vc_65536_194
      001CE3 F0               [24] 1622 	movx	@dptr,a
      001CE4 EE               [12] 1623 	mov	a,r6
      001CE5 A3               [24] 1624 	inc	dptr
      001CE6 F0               [24] 1625 	movx	@dptr,a
      001CE7 EF               [12] 1626 	mov	a,r7
      001CE8 A3               [24] 1627 	inc	dptr
      001CE9 F0               [24] 1628 	movx	@dptr,a
                                   1629 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:90: vc->is_locked = true;
      001CEA 90 01 E8         [24] 1630 	mov	dptr,#_VoltageController_lockOutput_vc_65536_194
      001CED E0               [24] 1631 	movx	a,@dptr
      001CEE FD               [12] 1632 	mov	r5,a
      001CEF A3               [24] 1633 	inc	dptr
      001CF0 E0               [24] 1634 	movx	a,@dptr
      001CF1 FE               [12] 1635 	mov	r6,a
      001CF2 A3               [24] 1636 	inc	dptr
      001CF3 E0               [24] 1637 	movx	a,@dptr
      001CF4 FF               [12] 1638 	mov	r7,a
      001CF5 74 0B            [12] 1639 	mov	a,#0x0b
      001CF7 2D               [12] 1640 	add	a,r5
      001CF8 FA               [12] 1641 	mov	r2,a
      001CF9 E4               [12] 1642 	clr	a
      001CFA 3E               [12] 1643 	addc	a,r6
      001CFB FB               [12] 1644 	mov	r3,a
      001CFC 8F 04            [24] 1645 	mov	ar4,r7
      001CFE 8A 82            [24] 1646 	mov	dpl,r2
      001D00 8B 83            [24] 1647 	mov	dph,r3
      001D02 8C F0            [24] 1648 	mov	b,r4
      001D04 74 01            [12] 1649 	mov	a,#0x01
      001D06 12 2B 0B         [24] 1650 	lcall	__gptrput
                                   1651 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:91: vc->current_pwm_duty = PWM_RESOLUTION;
      001D09 74 0A            [12] 1652 	mov	a,#0x0a
      001D0B 2D               [12] 1653 	add	a,r5
      001D0C FA               [12] 1654 	mov	r2,a
      001D0D E4               [12] 1655 	clr	a
      001D0E 3E               [12] 1656 	addc	a,r6
      001D0F FB               [12] 1657 	mov	r3,a
      001D10 8F 04            [24] 1658 	mov	ar4,r7
      001D12 8A 82            [24] 1659 	mov	dpl,r2
      001D14 8B 83            [24] 1660 	mov	dph,r3
      001D16 8C F0            [24] 1661 	mov	b,r4
      001D18 74 FF            [12] 1662 	mov	a,#0xff
      001D1A 12 2B 0B         [24] 1663 	lcall	__gptrput
                                   1664 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:92: analogWrite(vc->pwm_pin, vc->current_pwm_duty);
      001D1D 8D 82            [24] 1665 	mov	dpl,r5
      001D1F 8E 83            [24] 1666 	mov	dph,r6
      001D21 8F F0            [24] 1667 	mov	b,r7
      001D23 12 31 2B         [24] 1668 	lcall	__gptrget
      001D26 FD               [12] 1669 	mov	r5,a
      001D27 8A 82            [24] 1670 	mov	dpl,r2
      001D29 8B 83            [24] 1671 	mov	dph,r3
      001D2B 8C F0            [24] 1672 	mov	b,r4
      001D2D 12 31 2B         [24] 1673 	lcall	__gptrget
      001D30 90 02 01         [24] 1674 	mov	dptr,#_analogWrite_PARM_2
      001D33 F0               [24] 1675 	movx	@dptr,a
      001D34 E4               [12] 1676 	clr	a
      001D35 A3               [24] 1677 	inc	dptr
      001D36 F0               [24] 1678 	movx	@dptr,a
      001D37 8D 82            [24] 1679 	mov	dpl,r5
                                   1680 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:93: }
      001D39 02 2B 7D         [24] 1681 	ljmp	_analogWrite
                                   1682 ;------------------------------------------------------------
                                   1683 ;Allocation info for local variables in function 'VoltageController_unlockOutput'
                                   1684 ;------------------------------------------------------------
                                   1685 ;vc                        Allocated with name '_VoltageController_unlockOutput_vc_65536_196'
                                   1686 ;------------------------------------------------------------
                                   1687 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:95: void VoltageController_unlockOutput(VoltageController* vc) {
                                   1688 ;	-----------------------------------------
                                   1689 ;	 function VoltageController_unlockOutput
                                   1690 ;	-----------------------------------------
      001D3C                       1691 _VoltageController_unlockOutput:
      001D3C AF F0            [24] 1692 	mov	r7,b
      001D3E AE 83            [24] 1693 	mov	r6,dph
      001D40 E5 82            [12] 1694 	mov	a,dpl
      001D42 90 01 EB         [24] 1695 	mov	dptr,#_VoltageController_unlockOutput_vc_65536_196
      001D45 F0               [24] 1696 	movx	@dptr,a
      001D46 EE               [12] 1697 	mov	a,r6
      001D47 A3               [24] 1698 	inc	dptr
      001D48 F0               [24] 1699 	movx	@dptr,a
      001D49 EF               [12] 1700 	mov	a,r7
      001D4A A3               [24] 1701 	inc	dptr
      001D4B F0               [24] 1702 	movx	@dptr,a
                                   1703 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:96: vc->is_locked = false;
      001D4C 90 01 EB         [24] 1704 	mov	dptr,#_VoltageController_unlockOutput_vc_65536_196
      001D4F E0               [24] 1705 	movx	a,@dptr
      001D50 FD               [12] 1706 	mov	r5,a
      001D51 A3               [24] 1707 	inc	dptr
      001D52 E0               [24] 1708 	movx	a,@dptr
      001D53 FE               [12] 1709 	mov	r6,a
      001D54 A3               [24] 1710 	inc	dptr
      001D55 E0               [24] 1711 	movx	a,@dptr
      001D56 FF               [12] 1712 	mov	r7,a
      001D57 74 0B            [12] 1713 	mov	a,#0x0b
      001D59 2D               [12] 1714 	add	a,r5
      001D5A FD               [12] 1715 	mov	r5,a
      001D5B E4               [12] 1716 	clr	a
      001D5C 3E               [12] 1717 	addc	a,r6
      001D5D FE               [12] 1718 	mov	r6,a
      001D5E 8D 82            [24] 1719 	mov	dpl,r5
      001D60 8E 83            [24] 1720 	mov	dph,r6
      001D62 8F F0            [24] 1721 	mov	b,r7
      001D64 E4               [12] 1722 	clr	a
                                   1723 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:97: }
      001D65 02 2B 0B         [24] 1724 	ljmp	__gptrput
                                   1725 ;------------------------------------------------------------
                                   1726 ;Allocation info for local variables in function 'VoltageController_getTargetVoltage'
                                   1727 ;------------------------------------------------------------
                                   1728 ;vc                        Allocated with name '_VoltageController_getTargetVoltage_vc_65536_198'
                                   1729 ;------------------------------------------------------------
                                   1730 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:99: float VoltageController_getTargetVoltage(const VoltageController* vc) {
                                   1731 ;	-----------------------------------------
                                   1732 ;	 function VoltageController_getTargetVoltage
                                   1733 ;	-----------------------------------------
      001D68                       1734 _VoltageController_getTargetVoltage:
      001D68 AF F0            [24] 1735 	mov	r7,b
      001D6A AE 83            [24] 1736 	mov	r6,dph
      001D6C E5 82            [12] 1737 	mov	a,dpl
      001D6E 90 01 EE         [24] 1738 	mov	dptr,#_VoltageController_getTargetVoltage_vc_65536_198
      001D71 F0               [24] 1739 	movx	@dptr,a
      001D72 EE               [12] 1740 	mov	a,r6
      001D73 A3               [24] 1741 	inc	dptr
      001D74 F0               [24] 1742 	movx	@dptr,a
      001D75 EF               [12] 1743 	mov	a,r7
      001D76 A3               [24] 1744 	inc	dptr
      001D77 F0               [24] 1745 	movx	@dptr,a
                                   1746 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:100: return vc->target_voltage;
      001D78 90 01 EE         [24] 1747 	mov	dptr,#_VoltageController_getTargetVoltage_vc_65536_198
      001D7B E0               [24] 1748 	movx	a,@dptr
      001D7C FD               [12] 1749 	mov	r5,a
      001D7D A3               [24] 1750 	inc	dptr
      001D7E E0               [24] 1751 	movx	a,@dptr
      001D7F FE               [12] 1752 	mov	r6,a
      001D80 A3               [24] 1753 	inc	dptr
      001D81 E0               [24] 1754 	movx	a,@dptr
      001D82 FF               [12] 1755 	mov	r7,a
      001D83 74 02            [12] 1756 	mov	a,#0x02
      001D85 2D               [12] 1757 	add	a,r5
      001D86 FD               [12] 1758 	mov	r5,a
      001D87 E4               [12] 1759 	clr	a
      001D88 3E               [12] 1760 	addc	a,r6
      001D89 FE               [12] 1761 	mov	r6,a
      001D8A 8D 82            [24] 1762 	mov	dpl,r5
      001D8C 8E 83            [24] 1763 	mov	dph,r6
      001D8E 8F F0            [24] 1764 	mov	b,r7
      001D90 12 31 2B         [24] 1765 	lcall	__gptrget
      001D93 FD               [12] 1766 	mov	r5,a
      001D94 A3               [24] 1767 	inc	dptr
      001D95 12 31 2B         [24] 1768 	lcall	__gptrget
      001D98 FE               [12] 1769 	mov	r6,a
      001D99 A3               [24] 1770 	inc	dptr
      001D9A 12 31 2B         [24] 1771 	lcall	__gptrget
      001D9D FF               [12] 1772 	mov	r7,a
      001D9E A3               [24] 1773 	inc	dptr
      001D9F 12 31 2B         [24] 1774 	lcall	__gptrget
      001DA2 8D 82            [24] 1775 	mov	dpl,r5
      001DA4 8E 83            [24] 1776 	mov	dph,r6
      001DA6 8F F0            [24] 1777 	mov	b,r7
                                   1778 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:101: }
      001DA8 22               [24] 1779 	ret
                                   1780 ;------------------------------------------------------------
                                   1781 ;Allocation info for local variables in function 'VoltageController_getCurrentVoltage'
                                   1782 ;------------------------------------------------------------
                                   1783 ;vc                        Allocated with name '_VoltageController_getCurrentVoltage_vc_65536_200'
                                   1784 ;------------------------------------------------------------
                                   1785 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:103: float VoltageController_getCurrentVoltage(const VoltageController* vc) {
                                   1786 ;	-----------------------------------------
                                   1787 ;	 function VoltageController_getCurrentVoltage
                                   1788 ;	-----------------------------------------
      001DA9                       1789 _VoltageController_getCurrentVoltage:
      001DA9 AF F0            [24] 1790 	mov	r7,b
      001DAB AE 83            [24] 1791 	mov	r6,dph
      001DAD E5 82            [12] 1792 	mov	a,dpl
      001DAF 90 01 F1         [24] 1793 	mov	dptr,#_VoltageController_getCurrentVoltage_vc_65536_200
      001DB2 F0               [24] 1794 	movx	@dptr,a
      001DB3 EE               [12] 1795 	mov	a,r6
      001DB4 A3               [24] 1796 	inc	dptr
      001DB5 F0               [24] 1797 	movx	@dptr,a
      001DB6 EF               [12] 1798 	mov	a,r7
      001DB7 A3               [24] 1799 	inc	dptr
      001DB8 F0               [24] 1800 	movx	@dptr,a
                                   1801 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:104: return vc->current_voltage;
      001DB9 90 01 F1         [24] 1802 	mov	dptr,#_VoltageController_getCurrentVoltage_vc_65536_200
      001DBC E0               [24] 1803 	movx	a,@dptr
      001DBD FD               [12] 1804 	mov	r5,a
      001DBE A3               [24] 1805 	inc	dptr
      001DBF E0               [24] 1806 	movx	a,@dptr
      001DC0 FE               [12] 1807 	mov	r6,a
      001DC1 A3               [24] 1808 	inc	dptr
      001DC2 E0               [24] 1809 	movx	a,@dptr
      001DC3 FF               [12] 1810 	mov	r7,a
      001DC4 74 06            [12] 1811 	mov	a,#0x06
      001DC6 2D               [12] 1812 	add	a,r5
      001DC7 FD               [12] 1813 	mov	r5,a
      001DC8 E4               [12] 1814 	clr	a
      001DC9 3E               [12] 1815 	addc	a,r6
      001DCA FE               [12] 1816 	mov	r6,a
      001DCB 8D 82            [24] 1817 	mov	dpl,r5
      001DCD 8E 83            [24] 1818 	mov	dph,r6
      001DCF 8F F0            [24] 1819 	mov	b,r7
      001DD1 12 31 2B         [24] 1820 	lcall	__gptrget
      001DD4 FD               [12] 1821 	mov	r5,a
      001DD5 A3               [24] 1822 	inc	dptr
      001DD6 12 31 2B         [24] 1823 	lcall	__gptrget
      001DD9 FE               [12] 1824 	mov	r6,a
      001DDA A3               [24] 1825 	inc	dptr
      001DDB 12 31 2B         [24] 1826 	lcall	__gptrget
      001DDE FF               [12] 1827 	mov	r7,a
      001DDF A3               [24] 1828 	inc	dptr
      001DE0 12 31 2B         [24] 1829 	lcall	__gptrget
      001DE3 8D 82            [24] 1830 	mov	dpl,r5
      001DE5 8E 83            [24] 1831 	mov	dph,r6
      001DE7 8F F0            [24] 1832 	mov	b,r7
                                   1833 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:105: }
      001DE9 22               [24] 1834 	ret
                                   1835 ;------------------------------------------------------------
                                   1836 ;Allocation info for local variables in function 'VoltageController_getPWMDuty'
                                   1837 ;------------------------------------------------------------
                                   1838 ;vc                        Allocated with name '_VoltageController_getPWMDuty_vc_65536_202'
                                   1839 ;------------------------------------------------------------
                                   1840 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:107: uint8_t VoltageController_getPWMDuty(const VoltageController* vc) {
                                   1841 ;	-----------------------------------------
                                   1842 ;	 function VoltageController_getPWMDuty
                                   1843 ;	-----------------------------------------
      001DEA                       1844 _VoltageController_getPWMDuty:
      001DEA AF F0            [24] 1845 	mov	r7,b
      001DEC AE 83            [24] 1846 	mov	r6,dph
      001DEE E5 82            [12] 1847 	mov	a,dpl
      001DF0 90 01 F4         [24] 1848 	mov	dptr,#_VoltageController_getPWMDuty_vc_65536_202
      001DF3 F0               [24] 1849 	movx	@dptr,a
      001DF4 EE               [12] 1850 	mov	a,r6
      001DF5 A3               [24] 1851 	inc	dptr
      001DF6 F0               [24] 1852 	movx	@dptr,a
      001DF7 EF               [12] 1853 	mov	a,r7
      001DF8 A3               [24] 1854 	inc	dptr
      001DF9 F0               [24] 1855 	movx	@dptr,a
                                   1856 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:108: return vc->current_pwm_duty;
      001DFA 90 01 F4         [24] 1857 	mov	dptr,#_VoltageController_getPWMDuty_vc_65536_202
      001DFD E0               [24] 1858 	movx	a,@dptr
      001DFE FD               [12] 1859 	mov	r5,a
      001DFF A3               [24] 1860 	inc	dptr
      001E00 E0               [24] 1861 	movx	a,@dptr
      001E01 FE               [12] 1862 	mov	r6,a
      001E02 A3               [24] 1863 	inc	dptr
      001E03 E0               [24] 1864 	movx	a,@dptr
      001E04 FF               [12] 1865 	mov	r7,a
      001E05 74 0A            [12] 1866 	mov	a,#0x0a
      001E07 2D               [12] 1867 	add	a,r5
      001E08 FD               [12] 1868 	mov	r5,a
      001E09 E4               [12] 1869 	clr	a
      001E0A 3E               [12] 1870 	addc	a,r6
      001E0B FE               [12] 1871 	mov	r6,a
      001E0C 8D 82            [24] 1872 	mov	dpl,r5
      001E0E 8E 83            [24] 1873 	mov	dph,r6
      001E10 8F F0            [24] 1874 	mov	b,r7
      001E12 12 31 2B         [24] 1875 	lcall	__gptrget
                                   1876 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:109: }
      001E15 F5 82            [12] 1877 	mov	dpl,a
      001E17 22               [24] 1878 	ret
                                   1879 ;------------------------------------------------------------
                                   1880 ;Allocation info for local variables in function 'VoltageController_isLocked'
                                   1881 ;------------------------------------------------------------
                                   1882 ;vc                        Allocated with name '_VoltageController_isLocked_vc_65536_204'
                                   1883 ;------------------------------------------------------------
                                   1884 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:111: bool VoltageController_isLocked(const VoltageController* vc) {
                                   1885 ;	-----------------------------------------
                                   1886 ;	 function VoltageController_isLocked
                                   1887 ;	-----------------------------------------
      001E18                       1888 _VoltageController_isLocked:
      001E18 AF F0            [24] 1889 	mov	r7,b
      001E1A AE 83            [24] 1890 	mov	r6,dph
      001E1C E5 82            [12] 1891 	mov	a,dpl
      001E1E 90 01 F7         [24] 1892 	mov	dptr,#_VoltageController_isLocked_vc_65536_204
      001E21 F0               [24] 1893 	movx	@dptr,a
      001E22 EE               [12] 1894 	mov	a,r6
      001E23 A3               [24] 1895 	inc	dptr
      001E24 F0               [24] 1896 	movx	@dptr,a
      001E25 EF               [12] 1897 	mov	a,r7
      001E26 A3               [24] 1898 	inc	dptr
      001E27 F0               [24] 1899 	movx	@dptr,a
                                   1900 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:112: return vc->is_locked;
      001E28 90 01 F7         [24] 1901 	mov	dptr,#_VoltageController_isLocked_vc_65536_204
      001E2B E0               [24] 1902 	movx	a,@dptr
      001E2C FD               [12] 1903 	mov	r5,a
      001E2D A3               [24] 1904 	inc	dptr
      001E2E E0               [24] 1905 	movx	a,@dptr
      001E2F FE               [12] 1906 	mov	r6,a
      001E30 A3               [24] 1907 	inc	dptr
      001E31 E0               [24] 1908 	movx	a,@dptr
      001E32 FF               [12] 1909 	mov	r7,a
      001E33 74 0B            [12] 1910 	mov	a,#0x0b
      001E35 2D               [12] 1911 	add	a,r5
      001E36 FD               [12] 1912 	mov	r5,a
      001E37 E4               [12] 1913 	clr	a
      001E38 3E               [12] 1914 	addc	a,r6
      001E39 FE               [12] 1915 	mov	r6,a
      001E3A 8D 82            [24] 1916 	mov	dpl,r5
      001E3C 8E 83            [24] 1917 	mov	dph,r6
      001E3E 8F F0            [24] 1918 	mov	b,r7
      001E40 12 31 2B         [24] 1919 	lcall	__gptrget
                                   1920 ;	C:\Users\tonyp\Downloads\ch552-turbo-fan-ctrl\src\voltage_control.c:113: }
      001E43 F5 82            [12] 1921 	mov	dpl,a
      001E45 22               [24] 1922 	ret
                                   1923 	.area CSEG    (CODE)
                                   1924 	.area CONST   (CODE)
                                   1925 	.area XINIT   (CODE)
                                   1926 	.area CABS    (ABS,CODE)
