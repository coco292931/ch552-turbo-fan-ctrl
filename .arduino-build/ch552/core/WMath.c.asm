;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13407 (MINGW32)
;--------------------------------------------------------
	.module WMath
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _map
	.globl _random_minmax
	.globl _random
	.globl _randomSeed
	.globl _srand
	.globl _rand
	.globl _map_PARM_5
	.globl _map_PARM_4
	.globl _map_PARM_3
	.globl _map_PARM_2
	.globl _random_minmax_PARM_2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_map_sloc0_1_0:
	.ds 4
_map_sloc1_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_random_minmax_PARM_2:
	.ds 4
_map_PARM_2:
	.ds 4
_map_PARM_3:
	.ds 4
_map_PARM_4:
	.ds 4
_map_PARM_5:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'randomSeed'
;------------------------------------------------------------
;seed                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:32: void randomSeed(__data unsigned long seed) {
;	-----------------------------------------
;	 function randomSeed
;	-----------------------------------------
_randomSeed:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:33: if (seed != 0) {
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jz	00103$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:34: srand(seed);
	mov	dpl,r4
	mov	dph,r5
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:36: }
	ljmp	_srand
00103$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'random'
;------------------------------------------------------------
;howbig                    Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:38: long random(__data long howbig) {
;	-----------------------------------------
;	 function random
;	-----------------------------------------
_random:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:39: if (howbig == 0) {
	mov	a,r4
	orl	a,r5
	orl	a,r6
	orl	a,r7
	jnz	00102$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:40: return 0;
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	ret
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:42: return rand() % howbig;
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_rand
	mov	r2,dpl
	mov	r3,dph
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	ar0,r2
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r3
	lcall	__modslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:43: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'random_minmax'
;------------------------------------------------------------
;howsmall                  Allocated to registers r4 r5 r6 r7 
;diff                      Allocated to registers r0 r1 r2 r3 
;howbig                    Allocated with name '_random_minmax_PARM_2'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:45: long random_minmax(__data long howsmall, __xdata long howbig) {
;	-----------------------------------------
;	 function random_minmax
;	-----------------------------------------
_random_minmax:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:48: if (howsmall >= howbig) {
	mov	dptr,#_random_minmax_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	mov	a,r6
	subb	a,r2
	mov	a,r7
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jc	00102$
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:49: return howsmall;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
00102$:
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:51: diff = howbig - howsmall;
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r0,a
	mov	a,r1
	subb	a,r5
	mov	r1,a
	mov	a,r2
	subb	a,r6
	mov	r2,a
	mov	a,r3
	subb	a,r7
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:52: return random(diff) + howsmall;
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_random
	mov	r0,dpl
	mov	r1,dph
	mov	r2,b
	mov	r3,a
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r4
	add	a,r0
	mov	r4,a
	mov	a,r5
	addc	a,r1
	mov	r5,a
	mov	a,r6
	addc	a,r2
	mov	r6,a
	mov	a,r7
	addc	a,r3
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:53: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'map'
;------------------------------------------------------------
;x                         Allocated to registers r4 r5 r6 r7 
;sloc0                     Allocated with name '_map_sloc0_1_0'
;sloc1                     Allocated with name '_map_sloc1_1_0'
;in_min                    Allocated with name '_map_PARM_2'
;in_max                    Allocated with name '_map_PARM_3'
;out_min                   Allocated with name '_map_PARM_4'
;out_max                   Allocated with name '_map_PARM_5'
;------------------------------------------------------------
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:55: long map(__data long x, __xdata long in_min, __xdata long in_max,
;	-----------------------------------------
;	 function map
;	-----------------------------------------
_map:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:57: return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
	mov	dptr,#_map_PARM_2
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	_map_sloc0_1_0,a
	mov	a,r5
	subb	a,r1
	mov	(_map_sloc0_1_0 + 1),a
	mov	a,r6
	subb	a,r2
	mov	(_map_sloc0_1_0 + 2),a
	mov	a,r7
	subb	a,r3
	mov	(_map_sloc0_1_0 + 3),a
	mov	dptr,#_map_PARM_4
	movx	a,@dptr
	mov	_map_sloc1_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_map_sloc1_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_map_sloc1_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_map_sloc1_1_0 + 3),a
	mov	dptr,#_map_PARM_5
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	clr	c
	subb	a,_map_sloc1_1_0
	mov	r4,a
	mov	a,r5
	subb	a,(_map_sloc1_1_0 + 1)
	mov	r5,a
	mov	a,r6
	subb	a,(_map_sloc1_1_0 + 2)
	mov	r6,a
	mov	a,r7
	subb	a,(_map_sloc1_1_0 + 3)
	mov	r7,a
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,_map_sloc0_1_0
	mov	dph,(_map_sloc0_1_0 + 1)
	mov	b,(_map_sloc0_1_0 + 2)
	mov	a,(_map_sloc0_1_0 + 3)
	lcall	__mullong
	mov	_map_sloc0_1_0,dpl
	mov	(_map_sloc0_1_0 + 1),dph
	mov	(_map_sloc0_1_0 + 2),b
	mov	(_map_sloc0_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	mov	dptr,#_map_PARM_3
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r0,a
	mov	a,r5
	subb	a,r1
	mov	r1,a
	mov	a,r6
	subb	a,r2
	mov	r2,a
	mov	a,r7
	subb	a,r3
	mov	r3,a
	push	ar0
	push	ar1
	push	ar2
	push	ar3
	mov	dpl,_map_sloc0_1_0
	mov	dph,(_map_sloc0_1_0 + 1)
	mov	b,(_map_sloc0_1_0 + 2)
	mov	a,(_map_sloc0_1_0 + 3)
	lcall	__divslong
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,_map_sloc1_1_0
	add	a,r4
	mov	r4,a
	mov	a,(_map_sloc1_1_0 + 1)
	addc	a,r5
	mov	r5,a
	mov	a,(_map_sloc1_1_0 + 2)
	addc	a,r6
	mov	r6,a
	mov	a,(_map_sloc1_1_0 + 3)
	addc	a,r7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
;	C:\Users\tonyp\AppData\Local\Arduino15\packages\CH55xDuino\hardware\mcs51\0.0.23\cores\ch55xduino\WMath.c:58: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
