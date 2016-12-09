
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f87a 	bl	8001284 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f8fb 	bl	8001398 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 f9d0 	bl	8000554 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001c4:	f000 fc8c 	bl	8000ae0 <_ZN6CMotor10motor_initEv>
 80001c8:	2800      	cmp	r0, #0
 80001ca:	da03      	bge.n	80001d4 <_ZN7CKodama5init_Ev+0x4c>
 80001cc:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001d0:	3850      	subs	r0, #80	; 0x50
 80001d2:	bd10      	pop	{r4, pc}
 80001d4:	4620      	mov	r0, r4
 80001d6:	f000 fc93 	bl	8000b00 <_ZN8CSensors12sensors_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 401c 	sublt.w	r0, r0, #39936	; 0x9c00
 80001e2:	3840      	sublt	r0, #64	; 0x40
 80001e4:	bd10      	pop	{r4, pc}
 80001e6:	bf00      	nop
 80001e8:	2000013c 	.word	0x2000013c

080001ec <_ZN7CKodama4initEv>:
 80001ec:	b570      	push	{r4, r5, r6, lr}
 80001ee:	4605      	mov	r5, r0
 80001f0:	2400      	movs	r4, #0
 80001f2:	4628      	mov	r0, r5
 80001f4:	f7ff ffc8 	bl	8000188 <_ZN7CKodama5init_Ev>
 80001f8:	4606      	mov	r6, r0
 80001fa:	490a      	ldr	r1, [pc, #40]	; (8000224 <_ZN7CKodama4initEv+0x38>)
 80001fc:	4628      	mov	r0, r5
 80001fe:	4622      	mov	r2, r4
 8000200:	4633      	mov	r3, r6
 8000202:	f001 f9ef 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f001 f9ea 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f001 f9e5 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002770 	.word	0x08002770
 8000228:	08002785 	.word	0x08002785
 800022c:	0800278c 	.word	0x0800278c

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	b510      	push	{r4, lr}
 8000232:	2108      	movs	r1, #8
 8000234:	4604      	mov	r4, r0
 8000236:	f001 f885 	bl	8001344 <_ZN5CGPIO8gpio_offEm>
 800023a:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000242:	f000 bbb1 	b.w	80009a8 <_ZN6CMotor11motor_sleepEv>

08000246 <_ZN7CKodama6wakeupEv>:
 8000246:	b510      	push	{r4, lr}
 8000248:	2108      	movs	r1, #8
 800024a:	4604      	mov	r4, r0
 800024c:	34c4      	adds	r4, #196	; 0xc4
 800024e:	f001 f86b 	bl	8001328 <_ZN5CGPIO7gpio_onEm>
 8000252:	2100      	movs	r1, #0
 8000254:	4620      	mov	r0, r4
 8000256:	460a      	mov	r2, r1
 8000258:	f000 fc3c 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 800025c:	4620      	mov	r0, r4
 800025e:	2101      	movs	r1, #1
 8000260:	2200      	movs	r2, #0
 8000262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000266:	f000 bc35 	b.w	8000ad4 <_ZN6CMotor9set_motorEml>

0800026a <_ZN7CKodama6set_dtEl>:
 800026a:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
 800026e:	4770      	bx	lr

08000270 <_ZN13CLinePositionC1Ev>:
 8000270:	2200      	movs	r2, #0
 8000272:	6082      	str	r2, [r0, #8]
 8000274:	60c2      	str	r2, [r0, #12]
 8000276:	6102      	str	r2, [r0, #16]
 8000278:	6142      	str	r2, [r0, #20]
 800027a:	6042      	str	r2, [r0, #4]
 800027c:	2200      	movs	r2, #0
 800027e:	7002      	strb	r2, [r0, #0]
 8000280:	4770      	bx	lr
	...

08000284 <_ZN13CLinePosition7processEP10sRGBResult>:
 8000284:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000288:	2300      	movs	r3, #0
 800028a:	f101 0816 	add.w	r8, r1, #22
 800028e:	ed2d 8b02 	vpush	{d8}
 8000292:	460d      	mov	r5, r1
 8000294:	4604      	mov	r4, r0
 8000296:	7003      	strb	r3, [r0, #0]
 8000298:	4641      	mov	r1, r8
 800029a:	461a      	mov	r2, r3
 800029c:	f103 000c 	add.w	r0, r3, #12
 80002a0:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 80002a4:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 80002a8:	4286      	cmp	r6, r0
 80002aa:	bfb8      	it	lt
 80002ac:	4613      	movlt	r3, r2
 80002ae:	3201      	adds	r2, #1
 80002b0:	2a04      	cmp	r2, #4
 80002b2:	d1f3      	bne.n	800029c <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 80002b4:	330c      	adds	r3, #12
 80002b6:	eddf 7a3b 	vldr	s15, [pc, #236]	; 80003a4 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 80002ba:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 80002be:	ee07 3a10 	vmov	s14, r3
 80002c2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80002c6:	eeb0 8a67 	vmov.f32	s16, s15
 80002ca:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80002ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002d2:	d563      	bpl.n	800039c <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 80002d4:	f104 0608 	add.w	r6, r4, #8
 80002d8:	eddf 8a33 	vldr	s17, [pc, #204]	; 80003a8 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 80002dc:	f104 0918 	add.w	r9, r4, #24
 80002e0:	4637      	mov	r7, r6
 80002e2:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 80002e6:	4831      	ldr	r0, [pc, #196]	; (80003ac <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 80002e8:	425b      	negs	r3, r3
 80002ea:	ee00 3a10 	vmov	s0, r3
 80002ee:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 80002f2:	eca7 0a01 	vstmia	r7!, {s0}
 80002f6:	f000 f8ba 	bl	800046e <_ZN5CMath3absEf>
 80002fa:	eef4 8ac0 	vcmpe.f32	s17, s0
 80002fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000302:	d506      	bpl.n	8000312 <_ZN13CLinePosition7processEP10sRGBResult+0x8e>
 8000304:	4829      	ldr	r0, [pc, #164]	; (80003ac <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 8000306:	ed17 0a01 	vldr	s0, [r7, #-4]
 800030a:	f000 f8b0 	bl	800046e <_ZN5CMath3absEf>
 800030e:	eef0 8a40 	vmov.f32	s17, s0
 8000312:	454f      	cmp	r7, r9
 8000314:	d1e5      	bne.n	80002e2 <_ZN13CLinePosition7processEP10sRGBResult+0x5e>
 8000316:	edd6 7a00 	vldr	s15, [r6]
 800031a:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 800031e:	ece6 7a01 	vstmia	r6!, {s15}
 8000322:	454e      	cmp	r6, r9
 8000324:	d1f7      	bne.n	8000316 <_ZN13CLinePosition7processEP10sRGBResult+0x92>
 8000326:	2301      	movs	r3, #1
 8000328:	7023      	strb	r3, [r4, #0]
 800032a:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 800032e:	eddf 7a1d 	vldr	s15, [pc, #116]	; 80003a4 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 8000332:	ee07 3a10 	vmov	s14, r3
 8000336:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800033a:	eeb4 7ac8 	vcmpe.f32	s14, s16
 800033e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000342:	d501      	bpl.n	8000348 <_ZN13CLinePosition7processEP10sRGBResult+0xc4>
 8000344:	4b1a      	ldr	r3, [pc, #104]	; (80003b0 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 8000346:	e028      	b.n	800039a <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8000348:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 800034c:	ee07 3a10 	vmov	s14, r3
 8000350:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000354:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000358:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800035c:	d502      	bpl.n	8000364 <_ZN13CLinePosition7processEP10sRGBResult+0xe0>
 800035e:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000362:	e01a      	b.n	800039a <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8000364:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 8000368:	ee07 3a10 	vmov	s14, r3
 800036c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000370:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000374:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000378:	d502      	bpl.n	8000380 <_ZN13CLinePosition7processEP10sRGBResult+0xfc>
 800037a:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 800037e:	e00c      	b.n	800039a <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8000380:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 8000384:	ee07 3a10 	vmov	s14, r3
 8000388:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800038c:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000390:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000394:	d502      	bpl.n	800039c <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 8000396:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 800039a:	6063      	str	r3, [r4, #4]
 800039c:	ecbd 8b02 	vpop	{d8}
 80003a0:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80003a4:	c2a00000 	.word	0xc2a00000
 80003a8:	38d1b717 	.word	0x38d1b717
 80003ac:	20000108 	.word	0x20000108
 80003b0:	bf800000 	.word	0xbf800000

080003b4 <_ZN13CLinePosition7on_lineEv>:
 80003b4:	7800      	ldrb	r0, [r0, #0]
 80003b6:	4770      	bx	lr

080003b8 <_ZN13CLinePosition17get_line_positionEv>:
 80003b8:	ed90 0a01 	vldr	s0, [r0, #4]
 80003bc:	4770      	bx	lr

080003be <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>:
 80003be:	6883      	ldr	r3, [r0, #8]
 80003c0:	600b      	str	r3, [r1, #0]
 80003c2:	68c3      	ldr	r3, [r0, #12]
 80003c4:	604b      	str	r3, [r1, #4]
 80003c6:	6903      	ldr	r3, [r0, #16]
 80003c8:	608b      	str	r3, [r1, #8]
 80003ca:	6943      	ldr	r3, [r0, #20]
 80003cc:	60cb      	str	r3, [r1, #12]
 80003ce:	4770      	bx	lr

080003d0 <_ZN4CPID4initEffff>:
 80003d0:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
 80003d4:	ee70 0a20 	vadd.f32	s1, s0, s1
 80003d8:	ee91 0a67 	vfnma.f32	s0, s2, s15
 80003dc:	2300      	movs	r3, #0
 80003de:	6003      	str	r3, [r0, #0]
 80003e0:	ee70 0a81 	vadd.f32	s1, s1, s2
 80003e4:	6043      	str	r3, [r0, #4]
 80003e6:	6083      	str	r3, [r0, #8]
 80003e8:	edc0 0a03 	vstr	s1, [r0, #12]
 80003ec:	ed80 0a04 	vstr	s0, [r0, #16]
 80003f0:	ed80 1a05 	vstr	s2, [r0, #20]
 80003f4:	6183      	str	r3, [r0, #24]
 80003f6:	edc0 1a07 	vstr	s3, [r0, #28]
 80003fa:	4770      	bx	lr

080003fc <_ZN4CPIDC1Effff>:
 80003fc:	b510      	push	{r4, lr}
 80003fe:	4604      	mov	r4, r0
 8000400:	f7ff ffe6 	bl	80003d0 <_ZN4CPID4initEffff>
 8000404:	4620      	mov	r0, r4
 8000406:	bd10      	pop	{r4, pc}

08000408 <_ZN4CPID7processEf>:
 8000408:	edd0 7a00 	vldr	s15, [r0]
 800040c:	edd0 6a04 	vldr	s13, [r0, #16]
 8000410:	ed90 7a01 	vldr	s14, [r0, #4]
 8000414:	edc0 7a01 	vstr	s15, [r0, #4]
 8000418:	ee67 7aa6 	vmul.f32	s15, s15, s13
 800041c:	edd0 6a03 	vldr	s13, [r0, #12]
 8000420:	ed80 7a02 	vstr	s14, [r0, #8]
 8000424:	eee6 7a80 	vfma.f32	s15, s13, s0
 8000428:	edd0 6a05 	vldr	s13, [r0, #20]
 800042c:	ed80 0a00 	vstr	s0, [r0]
 8000430:	eee6 7a87 	vfma.f32	s15, s13, s14
 8000434:	ed90 7a06 	vldr	s14, [r0, #24]
 8000438:	ee77 7a87 	vadd.f32	s15, s15, s14
 800043c:	ed90 7a07 	vldr	s14, [r0, #28]
 8000440:	edc0 7a06 	vstr	s15, [r0, #24]
 8000444:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000448:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800044c:	bfc8      	it	gt
 800044e:	ed80 7a06 	vstrgt	s14, [r0, #24]
 8000452:	edd0 7a06 	vldr	s15, [r0, #24]
 8000456:	eeb1 7a47 	vneg.f32	s14, s14
 800045a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800045e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000462:	bf48      	it	mi
 8000464:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000468:	ed90 0a06 	vldr	s0, [r0, #24]
 800046c:	4770      	bx	lr

0800046e <_ZN5CMath3absEf>:
 800046e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8000472:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000476:	bf48      	it	mi
 8000478:	eeb1 0a40 	vnegmi.f32	s0, s0
 800047c:	4770      	bx	lr
	...

08000480 <_ZN5CMath4randEv>:
 8000480:	6803      	ldr	r3, [r0, #0]
 8000482:	490b      	ldr	r1, [pc, #44]	; (80004b0 <_ZN5CMath4randEv+0x30>)
 8000484:	f243 0239 	movw	r2, #12345	; 0x3039
 8000488:	fb01 2203 	mla	r2, r1, r3, r2
 800048c:	6841      	ldr	r1, [r0, #4]
 800048e:	6002      	str	r2, [r0, #0]
 8000490:	f341 0300 	sbfx	r3, r1, #0, #1
 8000494:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 8000498:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 800049c:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 80004a0:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 80004a4:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 80004a8:	6043      	str	r3, [r0, #4]
 80004aa:	ea83 0002 	eor.w	r0, r3, r2
 80004ae:	4770      	bx	lr
 80004b0:	41c64e6d 	.word	0x41c64e6d

080004b4 <_ZN5CMath3rndEv>:
 80004b4:	b508      	push	{r3, lr}
 80004b6:	f7ff ffe3 	bl	8000480 <_ZN5CMath4randEv>
 80004ba:	4b09      	ldr	r3, [pc, #36]	; (80004e0 <_ZN5CMath3rndEv+0x2c>)
 80004bc:	fbb0 f2f3 	udiv	r2, r0, r3
 80004c0:	fb02 0013 	mls	r0, r2, r3, r0
 80004c4:	ee07 0a90 	vmov	s15, r0
 80004c8:	ed9f 0a06 	vldr	s0, [pc, #24]	; 80004e4 <_ZN5CMath3rndEv+0x30>
 80004cc:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80004d0:	eec7 7a80 	vdiv.f32	s15, s15, s0
 80004d4:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80004d8:	ee37 0ac0 	vsub.f32	s0, s15, s0
 80004dc:	bd08      	pop	{r3, pc}
 80004de:	bf00      	nop
 80004e0:	001e8480 	.word	0x001e8480
 80004e4:	49742400 	.word	0x49742400

080004e8 <TIM3_IRQHandler>:
 80004e8:	2300      	movs	r3, #0
 80004ea:	4a15      	ldr	r2, [pc, #84]	; (8000540 <TIM3_IRQHandler+0x58>)
 80004ec:	5cd1      	ldrb	r1, [r2, r3]
 80004ee:	b111      	cbz	r1, 80004f6 <TIM3_IRQHandler+0xe>
 80004f0:	5cd1      	ldrb	r1, [r2, r3]
 80004f2:	29ff      	cmp	r1, #255	; 0xff
 80004f4:	d11e      	bne.n	8000534 <TIM3_IRQHandler+0x4c>
 80004f6:	4913      	ldr	r1, [pc, #76]	; (8000544 <TIM3_IRQHandler+0x5c>)
 80004f8:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 80004fc:	b128      	cbz	r0, 800050a <TIM3_IRQHandler+0x22>
 80004fe:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000502:	3a01      	subs	r2, #1
 8000504:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000508:	e009      	b.n	800051e <TIM3_IRQHandler+0x36>
 800050a:	480f      	ldr	r0, [pc, #60]	; (8000548 <TIM3_IRQHandler+0x60>)
 800050c:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000510:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000514:	5cd2      	ldrb	r2, [r2, r3]
 8000516:	b912      	cbnz	r2, 800051e <TIM3_IRQHandler+0x36>
 8000518:	4a09      	ldr	r2, [pc, #36]	; (8000540 <TIM3_IRQHandler+0x58>)
 800051a:	2101      	movs	r1, #1
 800051c:	54d1      	strb	r1, [r2, r3]
 800051e:	3301      	adds	r3, #1
 8000520:	2b08      	cmp	r3, #8
 8000522:	d1e2      	bne.n	80004ea <TIM3_IRQHandler+0x2>
 8000524:	4a09      	ldr	r2, [pc, #36]	; (800054c <TIM3_IRQHandler+0x64>)
 8000526:	480a      	ldr	r0, [pc, #40]	; (8000550 <TIM3_IRQHandler+0x68>)
 8000528:	6813      	ldr	r3, [r2, #0]
 800052a:	2101      	movs	r1, #1
 800052c:	3301      	adds	r3, #1
 800052e:	6013      	str	r3, [r2, #0]
 8000530:	f001 be5e 	b.w	80021f0 <TIM_ClearITPendingBit>
 8000534:	5cd1      	ldrb	r1, [r2, r3]
 8000536:	3101      	adds	r1, #1
 8000538:	b2c9      	uxtb	r1, r1
 800053a:	54d1      	strb	r1, [r2, r3]
 800053c:	e7db      	b.n	80004f6 <TIM3_IRQHandler+0xe>
 800053e:	bf00      	nop
 8000540:	20000130 	.word	0x20000130
 8000544:	20000110 	.word	0x20000110
 8000548:	20000140 	.word	0x20000140
 800054c:	20000138 	.word	0x20000138
 8000550:	40000400 	.word	0x40000400

08000554 <_ZN6CTimer10timer_initEv>:
 8000554:	b530      	push	{r4, r5, lr}
 8000556:	4a1f      	ldr	r2, [pc, #124]	; (80005d4 <_ZN6CTimer10timer_initEv+0x80>)
 8000558:	2300      	movs	r3, #0
 800055a:	b085      	sub	sp, #20
 800055c:	6013      	str	r3, [r2, #0]
 800055e:	491e      	ldr	r1, [pc, #120]	; (80005d8 <_ZN6CTimer10timer_initEv+0x84>)
 8000560:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000564:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000568:	491c      	ldr	r1, [pc, #112]	; (80005dc <_ZN6CTimer10timer_initEv+0x88>)
 800056a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800056e:	4a1c      	ldr	r2, [pc, #112]	; (80005e0 <_ZN6CTimer10timer_initEv+0x8c>)
 8000570:	2400      	movs	r4, #0
 8000572:	54d4      	strb	r4, [r2, r3]
 8000574:	3301      	adds	r3, #1
 8000576:	2b08      	cmp	r3, #8
 8000578:	d1f1      	bne.n	800055e <_ZN6CTimer10timer_initEv+0xa>
 800057a:	4d1a      	ldr	r5, [pc, #104]	; (80005e4 <_ZN6CTimer10timer_initEv+0x90>)
 800057c:	2002      	movs	r0, #2
 800057e:	2101      	movs	r1, #1
 8000580:	f001 fdca 	bl	8002118 <RCC_APB1PeriphClockCmd>
 8000584:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000588:	f8ad 3004 	strh.w	r3, [sp, #4]
 800058c:	4628      	mov	r0, r5
 800058e:	2331      	movs	r3, #49	; 0x31
 8000590:	a901      	add	r1, sp, #4
 8000592:	9302      	str	r3, [sp, #8]
 8000594:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000598:	f8ad 400c 	strh.w	r4, [sp, #12]
 800059c:	f8ad 400e 	strh.w	r4, [sp, #14]
 80005a0:	f001 fdc8 	bl	8002134 <TIM_TimeBaseInit>
 80005a4:	4628      	mov	r0, r5
 80005a6:	2101      	movs	r1, #1
 80005a8:	f001 fe14 	bl	80021d4 <TIM_Cmd>
 80005ac:	68eb      	ldr	r3, [r5, #12]
 80005ae:	f043 0301 	orr.w	r3, r3, #1
 80005b2:	60eb      	str	r3, [r5, #12]
 80005b4:	231d      	movs	r3, #29
 80005b6:	f88d 3000 	strb.w	r3, [sp]
 80005ba:	4668      	mov	r0, sp
 80005bc:	2301      	movs	r3, #1
 80005be:	f88d 4001 	strb.w	r4, [sp, #1]
 80005c2:	f88d 3002 	strb.w	r3, [sp, #2]
 80005c6:	f88d 3003 	strb.w	r3, [sp, #3]
 80005ca:	f001 ff4b 	bl	8002464 <NVIC_Init>
 80005ce:	4620      	mov	r0, r4
 80005d0:	b005      	add	sp, #20
 80005d2:	bd30      	pop	{r4, r5, pc}
 80005d4:	20000138 	.word	0x20000138
 80005d8:	20000110 	.word	0x20000110
 80005dc:	20000140 	.word	0x20000140
 80005e0:	20000130 	.word	0x20000130
 80005e4:	40000400 	.word	0x40000400

080005e8 <_ZN6CTimer8get_timeEv>:
 80005e8:	b082      	sub	sp, #8
 80005ea:	b672      	cpsid	i
 80005ec:	4b04      	ldr	r3, [pc, #16]	; (8000600 <_ZN6CTimer8get_timeEv+0x18>)
 80005ee:	681b      	ldr	r3, [r3, #0]
 80005f0:	9301      	str	r3, [sp, #4]
 80005f2:	b662      	cpsie	i
 80005f4:	230a      	movs	r3, #10
 80005f6:	9801      	ldr	r0, [sp, #4]
 80005f8:	fbb0 f0f3 	udiv	r0, r0, r3
 80005fc:	b002      	add	sp, #8
 80005fe:	4770      	bx	lr
 8000600:	20000138 	.word	0x20000138

08000604 <_ZN6CTimer8delay_msEm>:
 8000604:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000606:	460c      	mov	r4, r1
 8000608:	4605      	mov	r5, r0
 800060a:	f7ff ffed 	bl	80005e8 <_ZN6CTimer8get_timeEv>
 800060e:	4420      	add	r0, r4
 8000610:	9001      	str	r0, [sp, #4]
 8000612:	4628      	mov	r0, r5
 8000614:	9c01      	ldr	r4, [sp, #4]
 8000616:	f7ff ffe7 	bl	80005e8 <_ZN6CTimer8get_timeEv>
 800061a:	4284      	cmp	r4, r0
 800061c:	d902      	bls.n	8000624 <_ZN6CTimer8delay_msEm+0x20>
 800061e:	f001 ff1d 	bl	800245c <core_yield>
 8000622:	e7f6      	b.n	8000612 <_ZN6CTimer8delay_msEm+0xe>
 8000624:	b003      	add	sp, #12
 8000626:	bd30      	pop	{r4, r5, pc}

08000628 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000628:	b672      	cpsid	i
 800062a:	230a      	movs	r3, #10
 800062c:	435a      	muls	r2, r3
 800062e:	4b05      	ldr	r3, [pc, #20]	; (8000644 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000630:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000634:	4b04      	ldr	r3, [pc, #16]	; (8000648 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000636:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 800063a:	4b04      	ldr	r3, [pc, #16]	; (800064c <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 800063c:	2200      	movs	r2, #0
 800063e:	545a      	strb	r2, [r3, r1]
 8000640:	b662      	cpsie	i
 8000642:	4770      	bx	lr
 8000644:	20000110 	.word	0x20000110
 8000648:	20000140 	.word	0x20000140
 800064c:	20000130 	.word	0x20000130

08000650 <_ZN6CTimer17event_timer_checkEh>:
 8000650:	4b05      	ldr	r3, [pc, #20]	; (8000668 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000652:	5c5a      	ldrb	r2, [r3, r1]
 8000654:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000658:	b12a      	cbz	r2, 8000666 <_ZN6CTimer17event_timer_checkEh+0x16>
 800065a:	b672      	cpsid	i
 800065c:	5c58      	ldrb	r0, [r3, r1]
 800065e:	2200      	movs	r2, #0
 8000660:	b2c0      	uxtb	r0, r0
 8000662:	545a      	strb	r2, [r3, r1]
 8000664:	b662      	cpsie	i
 8000666:	4770      	bx	lr
 8000668:	20000130 	.word	0x20000130

0800066c <_ZN4CRGB8rgb_readEh>:
 800066c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000670:	4604      	mov	r4, r0
 8000672:	4688      	mov	r8, r1
 8000674:	f000 fae0 	bl	8000c38 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000678:	4620      	mov	r0, r4
 800067a:	2172      	movs	r1, #114	; 0x72
 800067c:	f000 fb06 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000680:	21b4      	movs	r1, #180	; 0xb4
 8000682:	4620      	mov	r0, r4
 8000684:	f000 fb02 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000688:	4620      	mov	r0, r4
 800068a:	f000 fad5 	bl	8000c38 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800068e:	4620      	mov	r0, r4
 8000690:	2173      	movs	r1, #115	; 0x73
 8000692:	f000 fafb 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000696:	4620      	mov	r0, r4
 8000698:	2101      	movs	r1, #1
 800069a:	4622      	mov	r2, r4
 800069c:	f000 fb37 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006a0:	7823      	ldrb	r3, [r4, #0]
 80006a2:	83a3      	strh	r3, [r4, #28]
 80006a4:	7863      	ldrb	r3, [r4, #1]
 80006a6:	83e3      	strh	r3, [r4, #30]
 80006a8:	78a3      	ldrb	r3, [r4, #2]
 80006aa:	8423      	strh	r3, [r4, #32]
 80006ac:	78e3      	ldrb	r3, [r4, #3]
 80006ae:	8463      	strh	r3, [r4, #34]	; 0x22
 80006b0:	2101      	movs	r1, #1
 80006b2:	4620      	mov	r0, r4
 80006b4:	4622      	mov	r2, r4
 80006b6:	f104 091a 	add.w	r9, r4, #26
 80006ba:	1e65      	subs	r5, r4, #1
 80006bc:	f000 fb27 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006c0:	1ca6      	adds	r6, r4, #2
 80006c2:	f104 0722 	add.w	r7, r4, #34	; 0x22
 80006c6:	4629      	mov	r1, r5
 80006c8:	464b      	mov	r3, r9
 80006ca:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80006ce:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80006d2:	42bb      	cmp	r3, r7
 80006d4:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 80006d8:	801a      	strh	r2, [r3, #0]
 80006da:	d1f6      	bne.n	80006ca <_ZN4CRGB8rgb_readEh+0x5e>
 80006dc:	4620      	mov	r0, r4
 80006de:	2101      	movs	r1, #1
 80006e0:	4622      	mov	r2, r4
 80006e2:	f000 fb14 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006e6:	7823      	ldrb	r3, [r4, #0]
 80006e8:	80a3      	strh	r3, [r4, #4]
 80006ea:	7863      	ldrb	r3, [r4, #1]
 80006ec:	80e3      	strh	r3, [r4, #6]
 80006ee:	78a3      	ldrb	r3, [r4, #2]
 80006f0:	8123      	strh	r3, [r4, #8]
 80006f2:	78e3      	ldrb	r3, [r4, #3]
 80006f4:	8163      	strh	r3, [r4, #10]
 80006f6:	2101      	movs	r1, #1
 80006f8:	4620      	mov	r0, r4
 80006fa:	4622      	mov	r2, r4
 80006fc:	f000 fb07 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000700:	f104 0a0a 	add.w	sl, r4, #10
 8000704:	4633      	mov	r3, r6
 8000706:	4629      	mov	r1, r5
 8000708:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 800070c:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000710:	4553      	cmp	r3, sl
 8000712:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000716:	801a      	strh	r2, [r3, #0]
 8000718:	d1f6      	bne.n	8000708 <_ZN4CRGB8rgb_readEh+0x9c>
 800071a:	4620      	mov	r0, r4
 800071c:	2101      	movs	r1, #1
 800071e:	4622      	mov	r2, r4
 8000720:	f000 faf5 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000724:	7823      	ldrb	r3, [r4, #0]
 8000726:	81a3      	strh	r3, [r4, #12]
 8000728:	7863      	ldrb	r3, [r4, #1]
 800072a:	81e3      	strh	r3, [r4, #14]
 800072c:	78a3      	ldrb	r3, [r4, #2]
 800072e:	8223      	strh	r3, [r4, #16]
 8000730:	78e3      	ldrb	r3, [r4, #3]
 8000732:	8263      	strh	r3, [r4, #18]
 8000734:	4622      	mov	r2, r4
 8000736:	4620      	mov	r0, r4
 8000738:	2101      	movs	r1, #1
 800073a:	f000 fae8 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800073e:	f104 0612 	add.w	r6, r4, #18
 8000742:	462a      	mov	r2, r5
 8000744:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 8000748:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800074c:	45b2      	cmp	sl, r6
 800074e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000752:	f8aa 3000 	strh.w	r3, [sl]
 8000756:	d1f5      	bne.n	8000744 <_ZN4CRGB8rgb_readEh+0xd8>
 8000758:	4620      	mov	r0, r4
 800075a:	2101      	movs	r1, #1
 800075c:	4622      	mov	r2, r4
 800075e:	f000 fad6 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000762:	7823      	ldrb	r3, [r4, #0]
 8000764:	82a3      	strh	r3, [r4, #20]
 8000766:	7863      	ldrb	r3, [r4, #1]
 8000768:	82e3      	strh	r3, [r4, #22]
 800076a:	78a3      	ldrb	r3, [r4, #2]
 800076c:	8323      	strh	r3, [r4, #24]
 800076e:	78e3      	ldrb	r3, [r4, #3]
 8000770:	8363      	strh	r3, [r4, #26]
 8000772:	4622      	mov	r2, r4
 8000774:	4620      	mov	r0, r4
 8000776:	2101      	movs	r1, #1
 8000778:	f000 fac9 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800077c:	462a      	mov	r2, r5
 800077e:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 8000782:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000786:	454e      	cmp	r6, r9
 8000788:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800078c:	8033      	strh	r3, [r6, #0]
 800078e:	d1f6      	bne.n	800077e <_ZN4CRGB8rgb_readEh+0x112>
 8000790:	4620      	mov	r0, r4
 8000792:	2101      	movs	r1, #1
 8000794:	4622      	mov	r2, r4
 8000796:	f000 faba 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800079a:	7823      	ldrb	r3, [r4, #0]
 800079c:	84a3      	strh	r3, [r4, #36]	; 0x24
 800079e:	7863      	ldrb	r3, [r4, #1]
 80007a0:	84e3      	strh	r3, [r4, #38]	; 0x26
 80007a2:	78a3      	ldrb	r3, [r4, #2]
 80007a4:	8523      	strh	r3, [r4, #40]	; 0x28
 80007a6:	78e3      	ldrb	r3, [r4, #3]
 80007a8:	8563      	strh	r3, [r4, #42]	; 0x2a
 80007aa:	4622      	mov	r2, r4
 80007ac:	4620      	mov	r0, r4
 80007ae:	2100      	movs	r1, #0
 80007b0:	f000 faad 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007b4:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 80007b8:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 80007bc:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 80007c0:	4297      	cmp	r7, r2
 80007c2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80007c6:	803b      	strh	r3, [r7, #0]
 80007c8:	d1f6      	bne.n	80007b8 <_ZN4CRGB8rgb_readEh+0x14c>
 80007ca:	4620      	mov	r0, r4
 80007cc:	f000 fa49 	bl	8000c62 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 80007d0:	f1b8 0f00 	cmp.w	r8, #0
 80007d4:	d025      	beq.n	8000822 <_ZN4CRGB8rgb_readEh+0x1b6>
 80007d6:	2300      	movs	r3, #0
 80007d8:	88a1      	ldrh	r1, [r4, #4]
 80007da:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 80007de:	440a      	add	r2, r1
 80007e0:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 80007e4:	89a1      	ldrh	r1, [r4, #12]
 80007e6:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 80007ea:	440a      	add	r2, r1
 80007ec:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 80007f0:	8aa1      	ldrh	r1, [r4, #20]
 80007f2:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 80007f6:	440a      	add	r2, r1
 80007f8:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 80007fc:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 80007fe:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 8000802:	440a      	add	r2, r1
 8000804:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8000808:	8ba1      	ldrh	r1, [r4, #28]
 800080a:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 800080e:	3301      	adds	r3, #1
 8000810:	440a      	add	r2, r1
 8000812:	2b04      	cmp	r3, #4
 8000814:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8000818:	f104 0402 	add.w	r4, r4, #2
 800081c:	d1dc      	bne.n	80007d8 <_ZN4CRGB8rgb_readEh+0x16c>
 800081e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000822:	4641      	mov	r1, r8
 8000824:	b672      	cpsid	i
 8000826:	88a3      	ldrh	r3, [r4, #4]
 8000828:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 800082c:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000830:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 8000834:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 8000838:	1a18      	subs	r0, r3, r0
 800083a:	89a3      	ldrh	r3, [r4, #12]
 800083c:	1a9a      	subs	r2, r3, r2
 800083e:	8aa3      	ldrh	r3, [r4, #20]
 8000840:	1b5b      	subs	r3, r3, r5
 8000842:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 8000844:	1bad      	subs	r5, r5, r6
 8000846:	84a5      	strh	r5, [r4, #36]	; 0x24
 8000848:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 800084c:	8ba5      	ldrh	r5, [r4, #28]
 800084e:	b280      	uxth	r0, r0
 8000850:	b292      	uxth	r2, r2
 8000852:	b29b      	uxth	r3, r3
 8000854:	1bad      	subs	r5, r5, r6
 8000856:	80a0      	strh	r0, [r4, #4]
 8000858:	81a2      	strh	r2, [r4, #12]
 800085a:	82a3      	strh	r3, [r4, #20]
 800085c:	83a5      	strh	r5, [r4, #28]
 800085e:	b662      	cpsie	i
 8000860:	b200      	sxth	r0, r0
 8000862:	b212      	sxth	r2, r2
 8000864:	1885      	adds	r5, r0, r2
 8000866:	b21b      	sxth	r3, r3
 8000868:	18ed      	adds	r5, r5, r3
 800086a:	d00e      	beq.n	800088a <_ZN4CRGB8rgb_readEh+0x21e>
 800086c:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000870:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8000874:	fb90 f0f5 	sdiv	r0, r0, r5
 8000878:	fb92 f2f5 	sdiv	r2, r2, r5
 800087c:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8000880:	85a0      	strh	r0, [r4, #44]	; 0x2c
 8000882:	fb93 f3f5 	sdiv	r3, r3, r5
 8000886:	86a2      	strh	r2, [r4, #52]	; 0x34
 8000888:	87a3      	strh	r3, [r4, #60]	; 0x3c
 800088a:	3101      	adds	r1, #1
 800088c:	2904      	cmp	r1, #4
 800088e:	f104 0402 	add.w	r4, r4, #2
 8000892:	d1c7      	bne.n	8000824 <_ZN4CRGB8rgb_readEh+0x1b8>
 8000894:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08000898 <_ZN4CRGB8rgb_initEv>:
 8000898:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800089a:	4606      	mov	r6, r0
 800089c:	4635      	mov	r5, r6
 800089e:	f000 f991 	bl	8000bc4 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80008a2:	4633      	mov	r3, r6
 80008a4:	2200      	movs	r2, #0
 80008a6:	3201      	adds	r2, #1
 80008a8:	2400      	movs	r4, #0
 80008aa:	2a04      	cmp	r2, #4
 80008ac:	809c      	strh	r4, [r3, #4]
 80008ae:	819c      	strh	r4, [r3, #12]
 80008b0:	829c      	strh	r4, [r3, #20]
 80008b2:	849c      	strh	r4, [r3, #36]	; 0x24
 80008b4:	839c      	strh	r4, [r3, #28]
 80008b6:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 80008ba:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 80008be:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 80008c2:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 80008c6:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 80008ca:	859c      	strh	r4, [r3, #44]	; 0x2c
 80008cc:	869c      	strh	r4, [r3, #52]	; 0x34
 80008ce:	879c      	strh	r4, [r3, #60]	; 0x3c
 80008d0:	f103 0302 	add.w	r3, r3, #2
 80008d4:	d1e7      	bne.n	80008a6 <_ZN4CRGB8rgb_initEv+0xe>
 80008d6:	4630      	mov	r0, r6
 80008d8:	2172      	movs	r1, #114	; 0x72
 80008da:	2281      	movs	r2, #129	; 0x81
 80008dc:	23ff      	movs	r3, #255	; 0xff
 80008de:	f000 f9fe 	bl	8000cde <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80008e2:	4630      	mov	r0, r6
 80008e4:	2172      	movs	r1, #114	; 0x72
 80008e6:	2283      	movs	r2, #131	; 0x83
 80008e8:	23ff      	movs	r3, #255	; 0xff
 80008ea:	f000 f9f8 	bl	8000cde <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80008ee:	4630      	mov	r0, r6
 80008f0:	2172      	movs	r1, #114	; 0x72
 80008f2:	228d      	movs	r2, #141	; 0x8d
 80008f4:	4623      	mov	r3, r4
 80008f6:	f000 f9f2 	bl	8000cde <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80008fa:	4630      	mov	r0, r6
 80008fc:	2172      	movs	r1, #114	; 0x72
 80008fe:	2280      	movs	r2, #128	; 0x80
 8000900:	2303      	movs	r3, #3
 8000902:	f000 f9ec 	bl	8000cde <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000906:	228f      	movs	r2, #143	; 0x8f
 8000908:	2323      	movs	r3, #35	; 0x23
 800090a:	4630      	mov	r0, r6
 800090c:	2172      	movs	r1, #114	; 0x72
 800090e:	f000 f9e6 	bl	8000cde <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000912:	af01      	add	r7, sp, #4
 8000914:	4630      	mov	r0, r6
 8000916:	4621      	mov	r1, r4
 8000918:	f7ff fea8 	bl	800066c <_ZN4CRGB8rgb_readEh>
 800091c:	463b      	mov	r3, r7
 800091e:	4630      	mov	r0, r6
 8000920:	2172      	movs	r1, #114	; 0x72
 8000922:	2292      	movs	r2, #146	; 0x92
 8000924:	f000 fa40 	bl	8000da8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000928:	4623      	mov	r3, r4
 800092a:	5cfa      	ldrb	r2, [r7, r3]
 800092c:	2a69      	cmp	r2, #105	; 0x69
 800092e:	bf1c      	itt	ne
 8000930:	2201      	movne	r2, #1
 8000932:	409a      	lslne	r2, r3
 8000934:	f103 0301 	add.w	r3, r3, #1
 8000938:	bf18      	it	ne
 800093a:	4314      	orrne	r4, r2
 800093c:	2b04      	cmp	r3, #4
 800093e:	d1f4      	bne.n	800092a <_ZN4CRGB8rgb_initEv+0x92>
 8000940:	461f      	mov	r7, r3
 8000942:	4630      	mov	r0, r6
 8000944:	2101      	movs	r1, #1
 8000946:	f7ff fe91 	bl	800066c <_ZN4CRGB8rgb_readEh>
 800094a:	3f01      	subs	r7, #1
 800094c:	d1f9      	bne.n	8000942 <_ZN4CRGB8rgb_initEv+0xaa>
 800094e:	2104      	movs	r1, #4
 8000950:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8000954:	089b      	lsrs	r3, r3, #2
 8000956:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 800095a:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 800095e:	089b      	lsrs	r3, r3, #2
 8000960:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000964:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000968:	089b      	lsrs	r3, r3, #2
 800096a:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 800096e:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8000972:	089b      	lsrs	r3, r3, #2
 8000974:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8000978:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 800097c:	3901      	subs	r1, #1
 800097e:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000982:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8000986:	f105 0502 	add.w	r5, r5, #2
 800098a:	d1e1      	bne.n	8000950 <_ZN4CRGB8rgb_initEv+0xb8>
 800098c:	4630      	mov	r0, r6
 800098e:	f7ff fe6d 	bl	800066c <_ZN4CRGB8rgb_readEh>
 8000992:	b114      	cbz	r4, 800099a <_ZN4CRGB8rgb_initEv+0x102>
 8000994:	4802      	ldr	r0, [pc, #8]	; (80009a0 <_ZN4CRGB8rgb_initEv+0x108>)
 8000996:	1b00      	subs	r0, r0, r4
 8000998:	e000      	b.n	800099c <_ZN4CRGB8rgb_initEv+0x104>
 800099a:	4620      	mov	r0, r4
 800099c:	b003      	add	sp, #12
 800099e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80009a0:	fffffc18 	.word	0xfffffc18

080009a4 <_ZN4CRGB14get_rgb_resultEv>:
 80009a4:	3004      	adds	r0, #4
 80009a6:	4770      	bx	lr

080009a8 <_ZN6CMotor11motor_sleepEv>:
 80009a8:	b510      	push	{r4, lr}
 80009aa:	4c07      	ldr	r4, [pc, #28]	; (80009c8 <_ZN6CMotor11motor_sleepEv+0x20>)
 80009ac:	21c0      	movs	r1, #192	; 0xc0
 80009ae:	4620      	mov	r0, r4
 80009b0:	2200      	movs	r2, #0
 80009b2:	2318      	movs	r3, #24
 80009b4:	f000 fadc 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 80009b8:	4620      	mov	r0, r4
 80009ba:	21c2      	movs	r1, #194	; 0xc2
 80009bc:	2200      	movs	r2, #0
 80009be:	2318      	movs	r3, #24
 80009c0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80009c4:	f000 bad4 	b.w	8000f70 <_ZN4CI2C9write_regEhhh>
 80009c8:	20000160 	.word	0x20000160

080009cc <_ZN6CMotor13motor_refreshEv>:
 80009cc:	b570      	push	{r4, r5, r6, lr}
 80009ce:	e890 0030 	ldmia.w	r0, {r4, r5}
 80009d2:	2c2c      	cmp	r4, #44	; 0x2c
 80009d4:	dc74      	bgt.n	8000ac0 <_ZN6CMotor13motor_refreshEv+0xf4>
 80009d6:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 80009da:	db11      	blt.n	8000a00 <_ZN6CMotor13motor_refreshEv+0x34>
 80009dc:	2d2c      	cmp	r5, #44	; 0x2c
 80009de:	dc5e      	bgt.n	8000a9e <_ZN6CMotor13motor_refreshEv+0xd2>
 80009e0:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 80009e4:	db33      	blt.n	8000a4e <_ZN6CMotor13motor_refreshEv+0x82>
 80009e6:	b1dc      	cbz	r4, 8000a20 <_ZN6CMotor13motor_refreshEv+0x54>
 80009e8:	e001      	b.n	80009ee <_ZN6CMotor13motor_refreshEv+0x22>
 80009ea:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 80009ee:	2c00      	cmp	r4, #0
 80009f0:	dd0d      	ble.n	8000a0e <_ZN6CMotor13motor_refreshEv+0x42>
 80009f2:	2c06      	cmp	r4, #6
 80009f4:	bfb8      	it	lt
 80009f6:	2406      	movlt	r4, #6
 80009f8:	00a4      	lsls	r4, r4, #2
 80009fa:	f044 0402 	orr.w	r4, r4, #2
 80009fe:	e00d      	b.n	8000a1c <_ZN6CMotor13motor_refreshEv+0x50>
 8000a00:	2d2c      	cmp	r5, #44	; 0x2c
 8000a02:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000a06:	dc60      	bgt.n	8000aca <_ZN6CMotor13motor_refreshEv+0xfe>
 8000a08:	42a5      	cmp	r5, r4
 8000a0a:	bfb8      	it	lt
 8000a0c:	4625      	movlt	r5, r4
 8000a0e:	4264      	negs	r4, r4
 8000a10:	2c06      	cmp	r4, #6
 8000a12:	bfb8      	it	lt
 8000a14:	2406      	movlt	r4, #6
 8000a16:	00a4      	lsls	r4, r4, #2
 8000a18:	f044 0401 	orr.w	r4, r4, #1
 8000a1c:	b2e4      	uxtb	r4, r4
 8000a1e:	e000      	b.n	8000a22 <_ZN6CMotor13motor_refreshEv+0x56>
 8000a20:	241b      	movs	r4, #27
 8000a22:	2200      	movs	r2, #0
 8000a24:	4613      	mov	r3, r2
 8000a26:	482a      	ldr	r0, [pc, #168]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a28:	21c0      	movs	r1, #192	; 0xc0
 8000a2a:	f000 faa1 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8000a2e:	4828      	ldr	r0, [pc, #160]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a30:	21c0      	movs	r1, #192	; 0xc0
 8000a32:	2200      	movs	r2, #0
 8000a34:	4623      	mov	r3, r4
 8000a36:	f000 fa9b 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8000a3a:	2d00      	cmp	r5, #0
 8000a3c:	d020      	beq.n	8000a80 <_ZN6CMotor13motor_refreshEv+0xb4>
 8000a3e:	dd16      	ble.n	8000a6e <_ZN6CMotor13motor_refreshEv+0xa2>
 8000a40:	2d06      	cmp	r5, #6
 8000a42:	bfb8      	it	lt
 8000a44:	2506      	movlt	r5, #6
 8000a46:	00ad      	lsls	r5, r5, #2
 8000a48:	f045 0501 	orr.w	r5, r5, #1
 8000a4c:	e016      	b.n	8000a7c <_ZN6CMotor13motor_refreshEv+0xb0>
 8000a4e:	2c00      	cmp	r4, #0
 8000a50:	d1cb      	bne.n	80009ea <_ZN6CMotor13motor_refreshEv+0x1e>
 8000a52:	481f      	ldr	r0, [pc, #124]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a54:	21c0      	movs	r1, #192	; 0xc0
 8000a56:	4622      	mov	r2, r4
 8000a58:	4623      	mov	r3, r4
 8000a5a:	f000 fa89 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8000a5e:	481c      	ldr	r0, [pc, #112]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a60:	21c0      	movs	r1, #192	; 0xc0
 8000a62:	4622      	mov	r2, r4
 8000a64:	231b      	movs	r3, #27
 8000a66:	f000 fa83 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8000a6a:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000a6e:	426d      	negs	r5, r5
 8000a70:	2d06      	cmp	r5, #6
 8000a72:	bfb8      	it	lt
 8000a74:	2506      	movlt	r5, #6
 8000a76:	00ad      	lsls	r5, r5, #2
 8000a78:	f045 0502 	orr.w	r5, r5, #2
 8000a7c:	b2ed      	uxtb	r5, r5
 8000a7e:	e000      	b.n	8000a82 <_ZN6CMotor13motor_refreshEv+0xb6>
 8000a80:	251b      	movs	r5, #27
 8000a82:	2200      	movs	r2, #0
 8000a84:	4613      	mov	r3, r2
 8000a86:	4812      	ldr	r0, [pc, #72]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a88:	21c2      	movs	r1, #194	; 0xc2
 8000a8a:	f000 fa71 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8000a8e:	462b      	mov	r3, r5
 8000a90:	480f      	ldr	r0, [pc, #60]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a92:	21c2      	movs	r1, #194	; 0xc2
 8000a94:	2200      	movs	r2, #0
 8000a96:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000a9a:	f000 ba69 	b.w	8000f70 <_ZN4CI2C9write_regEhhh>
 8000a9e:	b96c      	cbnz	r4, 8000abc <_ZN6CMotor13motor_refreshEv+0xf0>
 8000aa0:	480b      	ldr	r0, [pc, #44]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000aa2:	21c0      	movs	r1, #192	; 0xc0
 8000aa4:	4622      	mov	r2, r4
 8000aa6:	4623      	mov	r3, r4
 8000aa8:	f000 fa62 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8000aac:	4808      	ldr	r0, [pc, #32]	; (8000ad0 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000aae:	21c0      	movs	r1, #192	; 0xc0
 8000ab0:	4622      	mov	r2, r4
 8000ab2:	231b      	movs	r3, #27
 8000ab4:	f000 fa5c 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8000ab8:	252c      	movs	r5, #44	; 0x2c
 8000aba:	e7c4      	b.n	8000a46 <_ZN6CMotor13motor_refreshEv+0x7a>
 8000abc:	252c      	movs	r5, #44	; 0x2c
 8000abe:	e796      	b.n	80009ee <_ZN6CMotor13motor_refreshEv+0x22>
 8000ac0:	242c      	movs	r4, #44	; 0x2c
 8000ac2:	42a5      	cmp	r5, r4
 8000ac4:	dd8c      	ble.n	80009e0 <_ZN6CMotor13motor_refreshEv+0x14>
 8000ac6:	4625      	mov	r5, r4
 8000ac8:	e796      	b.n	80009f8 <_ZN6CMotor13motor_refreshEv+0x2c>
 8000aca:	252c      	movs	r5, #44	; 0x2c
 8000acc:	e79f      	b.n	8000a0e <_ZN6CMotor13motor_refreshEv+0x42>
 8000ace:	bf00      	nop
 8000ad0:	20000160 	.word	0x20000160

08000ad4 <_ZN6CMotor9set_motorEml>:
 8000ad4:	2901      	cmp	r1, #1
 8000ad6:	bf98      	it	ls
 8000ad8:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000adc:	f7ff bf76 	b.w	80009cc <_ZN6CMotor13motor_refreshEv>

08000ae0 <_ZN6CMotor10motor_initEv>:
 8000ae0:	b510      	push	{r4, lr}
 8000ae2:	2100      	movs	r1, #0
 8000ae4:	4604      	mov	r4, r0
 8000ae6:	460a      	mov	r2, r1
 8000ae8:	f7ff fff4 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8000aec:	4620      	mov	r0, r4
 8000aee:	2101      	movs	r1, #1
 8000af0:	2200      	movs	r2, #0
 8000af2:	f7ff ffef 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8000af6:	4620      	mov	r0, r4
 8000af8:	f7ff ff68 	bl	80009cc <_ZN6CMotor13motor_refreshEv>
 8000afc:	2000      	movs	r0, #0
 8000afe:	bd10      	pop	{r4, pc}

08000b00 <_ZN8CSensors12sensors_initEv>:
 8000b00:	b510      	push	{r4, lr}
 8000b02:	4604      	mov	r4, r0
 8000b04:	4808      	ldr	r0, [pc, #32]	; (8000b28 <_ZN8CSensors12sensors_initEv+0x28>)
 8000b06:	f000 f9b1 	bl	8000e6c <_ZN4CI2C4initEv>
 8000b0a:	4620      	mov	r0, r4
 8000b0c:	f7ff fec4 	bl	8000898 <_ZN4CRGB8rgb_initEv>
 8000b10:	b110      	cbz	r0, 8000b18 <_ZN8CSensors12sensors_initEv+0x18>
 8000b12:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000b16:	bd10      	pop	{r4, pc}
 8000b18:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8000b1c:	f000 fb36 	bl	800118c <_ZN4CIMU8imu_initEv>
 8000b20:	b108      	cbz	r0, 8000b26 <_ZN8CSensors12sensors_initEv+0x26>
 8000b22:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000b26:	bd10      	pop	{r4, pc}
 8000b28:	20000160 	.word	0x20000160

08000b2c <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000b2c:	2365      	movs	r3, #101	; 0x65
 8000b2e:	3b01      	subs	r3, #1
 8000b30:	d001      	beq.n	8000b36 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000b32:	bf00      	nop
 8000b34:	e7fb      	b.n	8000b2e <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000b36:	4770      	bx	lr

08000b38 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000b38:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000b3a:	2301      	movs	r3, #1
 8000b3c:	2203      	movs	r2, #3
 8000b3e:	4605      	mov	r5, r0
 8000b40:	24f0      	movs	r4, #240	; 0xf0
 8000b42:	f88d 3004 	strb.w	r3, [sp, #4]
 8000b46:	f88d 3006 	strb.w	r3, [sp, #6]
 8000b4a:	4669      	mov	r1, sp
 8000b4c:	2300      	movs	r3, #0
 8000b4e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b52:	f88d 2005 	strb.w	r2, [sp, #5]
 8000b56:	f88d 3007 	strb.w	r3, [sp, #7]
 8000b5a:	9400      	str	r4, [sp, #0]
 8000b5c:	f001 fcc8 	bl	80024f0 <GPIO_Init>
 8000b60:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000b64:	4628      	mov	r0, r5
 8000b66:	851c      	strh	r4, [r3, #40]	; 0x28
 8000b68:	f7ff ffe0 	bl	8000b2c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000b6c:	b003      	add	sp, #12
 8000b6e:	bd30      	pop	{r4, r5, pc}

08000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000b70:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000b72:	2300      	movs	r3, #0
 8000b74:	2203      	movs	r2, #3
 8000b76:	4605      	mov	r5, r0
 8000b78:	24f0      	movs	r4, #240	; 0xf0
 8000b7a:	4669      	mov	r1, sp
 8000b7c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b80:	f88d 3004 	strb.w	r3, [sp, #4]
 8000b84:	f88d 2005 	strb.w	r2, [sp, #5]
 8000b88:	f88d 3007 	strb.w	r3, [sp, #7]
 8000b8c:	9400      	str	r4, [sp, #0]
 8000b8e:	f001 fcaf 	bl	80024f0 <GPIO_Init>
 8000b92:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000b96:	4628      	mov	r0, r5
 8000b98:	619c      	str	r4, [r3, #24]
 8000b9a:	f7ff ffc7 	bl	8000b2c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000b9e:	b003      	add	sp, #12
 8000ba0:	bd30      	pop	{r4, r5, pc}
	...

08000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000ba4:	4b02      	ldr	r3, [pc, #8]	; (8000bb0 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000ba6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000baa:	851a      	strh	r2, [r3, #40]	; 0x28
 8000bac:	f7ff bfbe 	b.w	8000b2c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000bb0:	48000800 	.word	0x48000800

08000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000bb4:	4b02      	ldr	r3, [pc, #8]	; (8000bc0 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000bb6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000bba:	619a      	str	r2, [r3, #24]
 8000bbc:	f7ff bfb6 	b.w	8000b2c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000bc0:	48000800 	.word	0x48000800

08000bc4 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000bc4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000bc6:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000bca:	4605      	mov	r5, r0
 8000bcc:	2400      	movs	r4, #0
 8000bce:	9300      	str	r3, [sp, #0]
 8000bd0:	2703      	movs	r7, #3
 8000bd2:	2301      	movs	r3, #1
 8000bd4:	4817      	ldr	r0, [pc, #92]	; (8000c34 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8000bd6:	f88d 3004 	strb.w	r3, [sp, #4]
 8000bda:	4669      	mov	r1, sp
 8000bdc:	26f0      	movs	r6, #240	; 0xf0
 8000bde:	f88d 7005 	strb.w	r7, [sp, #5]
 8000be2:	f88d 4006 	strb.w	r4, [sp, #6]
 8000be6:	f88d 4007 	strb.w	r4, [sp, #7]
 8000bea:	f001 fc81 	bl	80024f0 <GPIO_Init>
 8000bee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000bf2:	4669      	mov	r1, sp
 8000bf4:	9600      	str	r6, [sp, #0]
 8000bf6:	f88d 4004 	strb.w	r4, [sp, #4]
 8000bfa:	f88d 7005 	strb.w	r7, [sp, #5]
 8000bfe:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c02:	f001 fc75 	bl	80024f0 <GPIO_Init>
 8000c06:	4631      	mov	r1, r6
 8000c08:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c0c:	f001 fcb2 	bl	8002574 <GPIO_SetBits>
 8000c10:	4628      	mov	r0, r5
 8000c12:	f7ff ffcf 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c16:	4628      	mov	r0, r5
 8000c18:	f7ff ff8e 	bl	8000b38 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c1c:	4628      	mov	r0, r5
 8000c1e:	f7ff ffa7 	bl	8000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000c22:	f242 7311 	movw	r3, #10001	; 0x2711
 8000c26:	3b01      	subs	r3, #1
 8000c28:	d001      	beq.n	8000c2e <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 8000c2a:	bf00      	nop
 8000c2c:	e7fb      	b.n	8000c26 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 8000c2e:	b003      	add	sp, #12
 8000c30:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c32:	bf00      	nop
 8000c34:	48000800 	.word	0x48000800

08000c38 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000c38:	b510      	push	{r4, lr}
 8000c3a:	4604      	mov	r4, r0
 8000c3c:	f7ff ffba 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c40:	4620      	mov	r0, r4
 8000c42:	f7ff ff95 	bl	8000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000c46:	4620      	mov	r0, r4
 8000c48:	f7ff ffb4 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c4c:	4620      	mov	r0, r4
 8000c4e:	f7ff ff73 	bl	8000b38 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c52:	4620      	mov	r0, r4
 8000c54:	f7ff ffa6 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c58:	4620      	mov	r0, r4
 8000c5a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000c5e:	f7ff bf87 	b.w	8000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000c62 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000c62:	b510      	push	{r4, lr}
 8000c64:	4604      	mov	r4, r0
 8000c66:	f7ff ff9d 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c6a:	4620      	mov	r0, r4
 8000c6c:	f7ff ff64 	bl	8000b38 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c70:	4620      	mov	r0, r4
 8000c72:	f7ff ff9f 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c76:	4620      	mov	r0, r4
 8000c78:	f7ff ff5e 	bl	8000b38 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c7c:	4620      	mov	r0, r4
 8000c7e:	f7ff ff99 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c82:	4620      	mov	r0, r4
 8000c84:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000c88:	f7ff bf72 	b.w	8000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000c8c:	b570      	push	{r4, r5, r6, lr}
 8000c8e:	4604      	mov	r4, r0
 8000c90:	460e      	mov	r6, r1
 8000c92:	2508      	movs	r5, #8
 8000c94:	4620      	mov	r0, r4
 8000c96:	f7ff ff85 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c9a:	0633      	lsls	r3, r6, #24
 8000c9c:	4620      	mov	r0, r4
 8000c9e:	d502      	bpl.n	8000ca6 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000ca0:	f7ff ff66 	bl	8000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ca4:	e001      	b.n	8000caa <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000ca6:	f7ff ff47 	bl	8000b38 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000caa:	4620      	mov	r0, r4
 8000cac:	3d01      	subs	r5, #1
 8000cae:	f7ff ff81 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cb2:	0076      	lsls	r6, r6, #1
 8000cb4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000cb8:	b2f6      	uxtb	r6, r6
 8000cba:	d1eb      	bne.n	8000c94 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000cbc:	4620      	mov	r0, r4
 8000cbe:	f7ff ff71 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000cc2:	4620      	mov	r0, r4
 8000cc4:	f7ff ff54 	bl	8000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000cc8:	4620      	mov	r0, r4
 8000cca:	f7ff ff73 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cce:	4620      	mov	r0, r4
 8000cd0:	f7ff ff68 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000cd4:	4620      	mov	r0, r4
 8000cd6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000cda:	f7ff bf27 	b.w	8000b2c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000cde <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000cde:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000ce0:	4604      	mov	r4, r0
 8000ce2:	460f      	mov	r7, r1
 8000ce4:	4616      	mov	r6, r2
 8000ce6:	461d      	mov	r5, r3
 8000ce8:	f7ff ffa6 	bl	8000c38 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000cec:	4620      	mov	r0, r4
 8000cee:	4639      	mov	r1, r7
 8000cf0:	f7ff ffcc 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000cf4:	4620      	mov	r0, r4
 8000cf6:	4631      	mov	r1, r6
 8000cf8:	f7ff ffc8 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000cfc:	4620      	mov	r0, r4
 8000cfe:	4629      	mov	r1, r5
 8000d00:	f7ff ffc4 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000d04:	4620      	mov	r0, r4
 8000d06:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000d0a:	f7ff bfaa 	b.w	8000c62 <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000d0e:	2300      	movs	r3, #0
 8000d10:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000d14:	4605      	mov	r5, r0
 8000d16:	7013      	strb	r3, [r2, #0]
 8000d18:	7053      	strb	r3, [r2, #1]
 8000d1a:	7093      	strb	r3, [r2, #2]
 8000d1c:	70d3      	strb	r3, [r2, #3]
 8000d1e:	460e      	mov	r6, r1
 8000d20:	4614      	mov	r4, r2
 8000d22:	1cd7      	adds	r7, r2, #3
 8000d24:	f7ff ff3e 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d28:	4628      	mov	r0, r5
 8000d2a:	f7ff ff21 	bl	8000b70 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d2e:	f04f 0808 	mov.w	r8, #8
 8000d32:	1e63      	subs	r3, r4, #1
 8000d34:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000d38:	0052      	lsls	r2, r2, #1
 8000d3a:	42bb      	cmp	r3, r7
 8000d3c:	701a      	strb	r2, [r3, #0]
 8000d3e:	d1f9      	bne.n	8000d34 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000d40:	4628      	mov	r0, r5
 8000d42:	f7ff ff37 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d46:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000d4a:	8a1b      	ldrh	r3, [r3, #16]
 8000d4c:	b29b      	uxth	r3, r3
 8000d4e:	06d8      	lsls	r0, r3, #27
 8000d50:	bf42      	ittt	mi
 8000d52:	7822      	ldrbmi	r2, [r4, #0]
 8000d54:	f042 0201 	orrmi.w	r2, r2, #1
 8000d58:	7022      	strbmi	r2, [r4, #0]
 8000d5a:	0699      	lsls	r1, r3, #26
 8000d5c:	bf42      	ittt	mi
 8000d5e:	7862      	ldrbmi	r2, [r4, #1]
 8000d60:	f042 0201 	orrmi.w	r2, r2, #1
 8000d64:	7062      	strbmi	r2, [r4, #1]
 8000d66:	065a      	lsls	r2, r3, #25
 8000d68:	bf42      	ittt	mi
 8000d6a:	78a2      	ldrbmi	r2, [r4, #2]
 8000d6c:	f042 0201 	orrmi.w	r2, r2, #1
 8000d70:	70a2      	strbmi	r2, [r4, #2]
 8000d72:	061b      	lsls	r3, r3, #24
 8000d74:	bf42      	ittt	mi
 8000d76:	78e3      	ldrbmi	r3, [r4, #3]
 8000d78:	f043 0301 	orrmi.w	r3, r3, #1
 8000d7c:	70e3      	strbmi	r3, [r4, #3]
 8000d7e:	4628      	mov	r0, r5
 8000d80:	f7ff ff10 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d84:	f1b8 0801 	subs.w	r8, r8, #1
 8000d88:	d1d3      	bne.n	8000d32 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000d8a:	b116      	cbz	r6, 8000d92 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000d8c:	4628      	mov	r0, r5
 8000d8e:	f7ff fed3 	bl	8000b38 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d92:	4628      	mov	r0, r5
 8000d94:	f7ff ff0e 	bl	8000bb4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d98:	4628      	mov	r0, r5
 8000d9a:	f7ff ff03 	bl	8000ba4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d9e:	4628      	mov	r0, r5
 8000da0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000da4:	f7ff bec2 	b.w	8000b2c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000da8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000da8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000daa:	4604      	mov	r4, r0
 8000dac:	460d      	mov	r5, r1
 8000dae:	4617      	mov	r7, r2
 8000db0:	461e      	mov	r6, r3
 8000db2:	f7ff ff41 	bl	8000c38 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000db6:	4620      	mov	r0, r4
 8000db8:	4629      	mov	r1, r5
 8000dba:	f7ff ff67 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000dbe:	4639      	mov	r1, r7
 8000dc0:	4620      	mov	r0, r4
 8000dc2:	f7ff ff63 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000dc6:	4620      	mov	r0, r4
 8000dc8:	f7ff ff36 	bl	8000c38 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000dcc:	4620      	mov	r0, r4
 8000dce:	f045 0101 	orr.w	r1, r5, #1
 8000dd2:	f7ff ff5b 	bl	8000c8c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000dd6:	4620      	mov	r0, r4
 8000dd8:	4632      	mov	r2, r6
 8000dda:	2100      	movs	r1, #0
 8000ddc:	f7ff ff97 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000de0:	4620      	mov	r0, r4
 8000de2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000de6:	f7ff bf3c 	b.w	8000c62 <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000dea <_ZN4CI2C5delayEv>:
 8000dea:	230b      	movs	r3, #11
 8000dec:	3b01      	subs	r3, #1
 8000dee:	d001      	beq.n	8000df4 <_ZN4CI2C5delayEv+0xa>
 8000df0:	bf00      	nop
 8000df2:	e7fb      	b.n	8000dec <_ZN4CI2C5delayEv+0x2>
 8000df4:	4770      	bx	lr
	...

08000df8 <_ZN4CI2C9SetLowSDAEv>:
 8000df8:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000dfa:	4c0c      	ldr	r4, [pc, #48]	; (8000e2c <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000dfc:	2301      	movs	r3, #1
 8000dfe:	2203      	movs	r2, #3
 8000e00:	4606      	mov	r6, r0
 8000e02:	2580      	movs	r5, #128	; 0x80
 8000e04:	f88d 3004 	strb.w	r3, [sp, #4]
 8000e08:	f88d 3006 	strb.w	r3, [sp, #6]
 8000e0c:	4620      	mov	r0, r4
 8000e0e:	2300      	movs	r3, #0
 8000e10:	4669      	mov	r1, sp
 8000e12:	f88d 2005 	strb.w	r2, [sp, #5]
 8000e16:	f88d 3007 	strb.w	r3, [sp, #7]
 8000e1a:	9500      	str	r5, [sp, #0]
 8000e1c:	f001 fb68 	bl	80024f0 <GPIO_Init>
 8000e20:	8525      	strh	r5, [r4, #40]	; 0x28
 8000e22:	4630      	mov	r0, r6
 8000e24:	f7ff ffe1 	bl	8000dea <_ZN4CI2C5delayEv>
 8000e28:	b002      	add	sp, #8
 8000e2a:	bd70      	pop	{r4, r5, r6, pc}
 8000e2c:	48000400 	.word	0x48000400

08000e30 <_ZN4CI2C10SetHighSDAEv>:
 8000e30:	4b05      	ldr	r3, [pc, #20]	; (8000e48 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000e32:	681a      	ldr	r2, [r3, #0]
 8000e34:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000e38:	601a      	str	r2, [r3, #0]
 8000e3a:	681a      	ldr	r2, [r3, #0]
 8000e3c:	601a      	str	r2, [r3, #0]
 8000e3e:	2280      	movs	r2, #128	; 0x80
 8000e40:	619a      	str	r2, [r3, #24]
 8000e42:	f7ff bfd2 	b.w	8000dea <_ZN4CI2C5delayEv>
 8000e46:	bf00      	nop
 8000e48:	48000400 	.word	0x48000400

08000e4c <_ZN4CI2C9SetLowSCLEv>:
 8000e4c:	4b02      	ldr	r3, [pc, #8]	; (8000e58 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000e4e:	2240      	movs	r2, #64	; 0x40
 8000e50:	851a      	strh	r2, [r3, #40]	; 0x28
 8000e52:	f7ff bfca 	b.w	8000dea <_ZN4CI2C5delayEv>
 8000e56:	bf00      	nop
 8000e58:	48000400 	.word	0x48000400

08000e5c <_ZN4CI2C10SetHighSCLEv>:
 8000e5c:	4b02      	ldr	r3, [pc, #8]	; (8000e68 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000e5e:	2240      	movs	r2, #64	; 0x40
 8000e60:	619a      	str	r2, [r3, #24]
 8000e62:	f7ff bfc2 	b.w	8000dea <_ZN4CI2C5delayEv>
 8000e66:	bf00      	nop
 8000e68:	48000400 	.word	0x48000400

08000e6c <_ZN4CI2C4initEv>:
 8000e6c:	b513      	push	{r0, r1, r4, lr}
 8000e6e:	4604      	mov	r4, r0
 8000e70:	2101      	movs	r1, #1
 8000e72:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000e76:	f001 f933 	bl	80020e0 <RCC_AHBPeriphClockCmd>
 8000e7a:	23c0      	movs	r3, #192	; 0xc0
 8000e7c:	9300      	str	r3, [sp, #0]
 8000e7e:	2301      	movs	r3, #1
 8000e80:	2203      	movs	r2, #3
 8000e82:	4669      	mov	r1, sp
 8000e84:	f88d 3004 	strb.w	r3, [sp, #4]
 8000e88:	f88d 3006 	strb.w	r3, [sp, #6]
 8000e8c:	4809      	ldr	r0, [pc, #36]	; (8000eb4 <_ZN4CI2C4initEv+0x48>)
 8000e8e:	f88d 2005 	strb.w	r2, [sp, #5]
 8000e92:	2300      	movs	r3, #0
 8000e94:	f88d 3007 	strb.w	r3, [sp, #7]
 8000e98:	f001 fb2a 	bl	80024f0 <GPIO_Init>
 8000e9c:	4620      	mov	r0, r4
 8000e9e:	f7ff ffdd 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000ea2:	4620      	mov	r0, r4
 8000ea4:	f7ff ffa8 	bl	8000df8 <_ZN4CI2C9SetLowSDAEv>
 8000ea8:	4620      	mov	r0, r4
 8000eaa:	f7ff ffc1 	bl	8000e30 <_ZN4CI2C10SetHighSDAEv>
 8000eae:	b002      	add	sp, #8
 8000eb0:	bd10      	pop	{r4, pc}
 8000eb2:	bf00      	nop
 8000eb4:	48000400 	.word	0x48000400

08000eb8 <_ZN4CI2C5StartEv>:
 8000eb8:	b510      	push	{r4, lr}
 8000eba:	4604      	mov	r4, r0
 8000ebc:	f7ff ffce 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000ec0:	4620      	mov	r0, r4
 8000ec2:	f7ff ffb5 	bl	8000e30 <_ZN4CI2C10SetHighSDAEv>
 8000ec6:	4620      	mov	r0, r4
 8000ec8:	f7ff ffc8 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000ecc:	4620      	mov	r0, r4
 8000ece:	f7ff ff93 	bl	8000df8 <_ZN4CI2C9SetLowSDAEv>
 8000ed2:	4620      	mov	r0, r4
 8000ed4:	f7ff ffba 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000ed8:	4620      	mov	r0, r4
 8000eda:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000ede:	f7ff bfa7 	b.w	8000e30 <_ZN4CI2C10SetHighSDAEv>

08000ee2 <_ZN4CI2C4StopEv>:
 8000ee2:	b510      	push	{r4, lr}
 8000ee4:	4604      	mov	r4, r0
 8000ee6:	f7ff ffb1 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000eea:	4620      	mov	r0, r4
 8000eec:	f7ff ff84 	bl	8000df8 <_ZN4CI2C9SetLowSDAEv>
 8000ef0:	4620      	mov	r0, r4
 8000ef2:	f7ff ffb3 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000ef6:	4620      	mov	r0, r4
 8000ef8:	f7ff ff7e 	bl	8000df8 <_ZN4CI2C9SetLowSDAEv>
 8000efc:	4620      	mov	r0, r4
 8000efe:	f7ff ffad 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000f02:	4620      	mov	r0, r4
 8000f04:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f08:	f7ff bf92 	b.w	8000e30 <_ZN4CI2C10SetHighSDAEv>

08000f0c <_ZN4CI2C5WriteEh>:
 8000f0c:	b570      	push	{r4, r5, r6, lr}
 8000f0e:	4604      	mov	r4, r0
 8000f10:	460e      	mov	r6, r1
 8000f12:	2508      	movs	r5, #8
 8000f14:	4620      	mov	r0, r4
 8000f16:	f7ff ff99 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000f1a:	0633      	lsls	r3, r6, #24
 8000f1c:	4620      	mov	r0, r4
 8000f1e:	d502      	bpl.n	8000f26 <_ZN4CI2C5WriteEh+0x1a>
 8000f20:	f7ff ff86 	bl	8000e30 <_ZN4CI2C10SetHighSDAEv>
 8000f24:	e001      	b.n	8000f2a <_ZN4CI2C5WriteEh+0x1e>
 8000f26:	f7ff ff67 	bl	8000df8 <_ZN4CI2C9SetLowSDAEv>
 8000f2a:	4620      	mov	r0, r4
 8000f2c:	3d01      	subs	r5, #1
 8000f2e:	f7ff ff95 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000f32:	0076      	lsls	r6, r6, #1
 8000f34:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000f38:	b2f6      	uxtb	r6, r6
 8000f3a:	d1eb      	bne.n	8000f14 <_ZN4CI2C5WriteEh+0x8>
 8000f3c:	4620      	mov	r0, r4
 8000f3e:	f7ff ff85 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000f42:	4620      	mov	r0, r4
 8000f44:	f7ff ff74 	bl	8000e30 <_ZN4CI2C10SetHighSDAEv>
 8000f48:	4620      	mov	r0, r4
 8000f4a:	f7ff ff87 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000f4e:	4b07      	ldr	r3, [pc, #28]	; (8000f6c <_ZN4CI2C5WriteEh+0x60>)
 8000f50:	8a1d      	ldrh	r5, [r3, #16]
 8000f52:	4620      	mov	r0, r4
 8000f54:	f7ff ff7a 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000f58:	b2ad      	uxth	r5, r5
 8000f5a:	4620      	mov	r0, r4
 8000f5c:	f7ff ff45 	bl	8000dea <_ZN4CI2C5delayEv>
 8000f60:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8000f64:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000f68:	bd70      	pop	{r4, r5, r6, pc}
 8000f6a:	bf00      	nop
 8000f6c:	48000400 	.word	0x48000400

08000f70 <_ZN4CI2C9write_regEhhh>:
 8000f70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000f72:	4604      	mov	r4, r0
 8000f74:	460f      	mov	r7, r1
 8000f76:	4616      	mov	r6, r2
 8000f78:	461d      	mov	r5, r3
 8000f7a:	f7ff ff9d 	bl	8000eb8 <_ZN4CI2C5StartEv>
 8000f7e:	4639      	mov	r1, r7
 8000f80:	4620      	mov	r0, r4
 8000f82:	f7ff ffc3 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8000f86:	4631      	mov	r1, r6
 8000f88:	4620      	mov	r0, r4
 8000f8a:	f7ff ffbf 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8000f8e:	4620      	mov	r0, r4
 8000f90:	4629      	mov	r1, r5
 8000f92:	f7ff ffbb 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8000f96:	4620      	mov	r0, r4
 8000f98:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000f9c:	f7ff bfa1 	b.w	8000ee2 <_ZN4CI2C4StopEv>

08000fa0 <_ZN4CI2C4ReadEh>:
 8000fa0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000fa2:	4605      	mov	r5, r0
 8000fa4:	460f      	mov	r7, r1
 8000fa6:	f7ff ff51 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000faa:	2608      	movs	r6, #8
 8000fac:	2400      	movs	r4, #0
 8000fae:	4628      	mov	r0, r5
 8000fb0:	f7ff ff54 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000fb4:	4b10      	ldr	r3, [pc, #64]	; (8000ff8 <_ZN4CI2C4ReadEh+0x58>)
 8000fb6:	8a1b      	ldrh	r3, [r3, #16]
 8000fb8:	0064      	lsls	r4, r4, #1
 8000fba:	061b      	lsls	r3, r3, #24
 8000fbc:	b2e4      	uxtb	r4, r4
 8000fbe:	4628      	mov	r0, r5
 8000fc0:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000fc4:	bf48      	it	mi
 8000fc6:	f044 0401 	orrmi.w	r4, r4, #1
 8000fca:	f7ff ff3f 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000fce:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000fd2:	d1ec      	bne.n	8000fae <_ZN4CI2C4ReadEh+0xe>
 8000fd4:	4628      	mov	r0, r5
 8000fd6:	b117      	cbz	r7, 8000fde <_ZN4CI2C4ReadEh+0x3e>
 8000fd8:	f7ff ff0e 	bl	8000df8 <_ZN4CI2C9SetLowSDAEv>
 8000fdc:	e001      	b.n	8000fe2 <_ZN4CI2C4ReadEh+0x42>
 8000fde:	f7ff ff27 	bl	8000e30 <_ZN4CI2C10SetHighSDAEv>
 8000fe2:	4628      	mov	r0, r5
 8000fe4:	f7ff ff3a 	bl	8000e5c <_ZN4CI2C10SetHighSCLEv>
 8000fe8:	4628      	mov	r0, r5
 8000fea:	f7ff ff2f 	bl	8000e4c <_ZN4CI2C9SetLowSCLEv>
 8000fee:	4628      	mov	r0, r5
 8000ff0:	f7ff ff1e 	bl	8000e30 <_ZN4CI2C10SetHighSDAEv>
 8000ff4:	4620      	mov	r0, r4
 8000ff6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000ff8:	48000400 	.word	0x48000400

08000ffc <_ZN4CI2C8read_regEhh>:
 8000ffc:	b570      	push	{r4, r5, r6, lr}
 8000ffe:	4604      	mov	r4, r0
 8001000:	460d      	mov	r5, r1
 8001002:	4616      	mov	r6, r2
 8001004:	f7ff ff58 	bl	8000eb8 <_ZN4CI2C5StartEv>
 8001008:	4629      	mov	r1, r5
 800100a:	4620      	mov	r0, r4
 800100c:	f7ff ff7e 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8001010:	4631      	mov	r1, r6
 8001012:	4620      	mov	r0, r4
 8001014:	f7ff ff7a 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8001018:	4620      	mov	r0, r4
 800101a:	f7ff ff4d 	bl	8000eb8 <_ZN4CI2C5StartEv>
 800101e:	f045 0101 	orr.w	r1, r5, #1
 8001022:	4620      	mov	r0, r4
 8001024:	f7ff ff72 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8001028:	2100      	movs	r1, #0
 800102a:	4620      	mov	r0, r4
 800102c:	f7ff ffb8 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 8001030:	4605      	mov	r5, r0
 8001032:	4620      	mov	r0, r4
 8001034:	f7ff ff55 	bl	8000ee2 <_ZN4CI2C4StopEv>
 8001038:	4628      	mov	r0, r5
 800103a:	bd70      	pop	{r4, r5, r6, pc}

0800103c <_ZN4CIMU8imu_readEv>:
 800103c:	b570      	push	{r4, r5, r6, lr}
 800103e:	4c52      	ldr	r4, [pc, #328]	; (8001188 <_ZN4CIMU8imu_readEv+0x14c>)
 8001040:	4605      	mov	r5, r0
 8001042:	4620      	mov	r0, r4
 8001044:	f7ff ff38 	bl	8000eb8 <_ZN4CI2C5StartEv>
 8001048:	4620      	mov	r0, r4
 800104a:	21d4      	movs	r1, #212	; 0xd4
 800104c:	f7ff ff5e 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8001050:	21a8      	movs	r1, #168	; 0xa8
 8001052:	4620      	mov	r0, r4
 8001054:	f7ff ff5a 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8001058:	4620      	mov	r0, r4
 800105a:	f7ff ff2d 	bl	8000eb8 <_ZN4CI2C5StartEv>
 800105e:	4620      	mov	r0, r4
 8001060:	21d5      	movs	r1, #213	; 0xd5
 8001062:	f7ff ff53 	bl	8000f0c <_ZN4CI2C5WriteEh>
 8001066:	4620      	mov	r0, r4
 8001068:	2101      	movs	r1, #1
 800106a:	f7ff ff99 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 800106e:	2101      	movs	r1, #1
 8001070:	b286      	uxth	r6, r0
 8001072:	4620      	mov	r0, r4
 8001074:	f7ff ff94 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 8001078:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800107c:	b200      	sxth	r0, r0
 800107e:	6268      	str	r0, [r5, #36]	; 0x24
 8001080:	2101      	movs	r1, #1
 8001082:	4620      	mov	r0, r4
 8001084:	f7ff ff8c 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 8001088:	2101      	movs	r1, #1
 800108a:	b286      	uxth	r6, r0
 800108c:	4620      	mov	r0, r4
 800108e:	f7ff ff87 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 8001092:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001096:	b200      	sxth	r0, r0
 8001098:	62a8      	str	r0, [r5, #40]	; 0x28
 800109a:	2101      	movs	r1, #1
 800109c:	4620      	mov	r0, r4
 800109e:	f7ff ff7f 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 80010a2:	2100      	movs	r1, #0
 80010a4:	b286      	uxth	r6, r0
 80010a6:	4620      	mov	r0, r4
 80010a8:	f7ff ff7a 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 80010ac:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80010b0:	b200      	sxth	r0, r0
 80010b2:	62e8      	str	r0, [r5, #44]	; 0x2c
 80010b4:	4620      	mov	r0, r4
 80010b6:	f7ff ff14 	bl	8000ee2 <_ZN4CI2C4StopEv>
 80010ba:	4620      	mov	r0, r4
 80010bc:	f7ff fefc 	bl	8000eb8 <_ZN4CI2C5StartEv>
 80010c0:	4620      	mov	r0, r4
 80010c2:	213c      	movs	r1, #60	; 0x3c
 80010c4:	f7ff ff22 	bl	8000f0c <_ZN4CI2C5WriteEh>
 80010c8:	21a8      	movs	r1, #168	; 0xa8
 80010ca:	4620      	mov	r0, r4
 80010cc:	f7ff ff1e 	bl	8000f0c <_ZN4CI2C5WriteEh>
 80010d0:	4620      	mov	r0, r4
 80010d2:	f7ff fef1 	bl	8000eb8 <_ZN4CI2C5StartEv>
 80010d6:	4620      	mov	r0, r4
 80010d8:	213d      	movs	r1, #61	; 0x3d
 80010da:	f7ff ff17 	bl	8000f0c <_ZN4CI2C5WriteEh>
 80010de:	4620      	mov	r0, r4
 80010e0:	2101      	movs	r1, #1
 80010e2:	f7ff ff5d 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 80010e6:	2101      	movs	r1, #1
 80010e8:	b286      	uxth	r6, r0
 80010ea:	4620      	mov	r0, r4
 80010ec:	f7ff ff58 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 80010f0:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80010f4:	b200      	sxth	r0, r0
 80010f6:	6328      	str	r0, [r5, #48]	; 0x30
 80010f8:	2101      	movs	r1, #1
 80010fa:	4620      	mov	r0, r4
 80010fc:	f7ff ff50 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 8001100:	2101      	movs	r1, #1
 8001102:	b286      	uxth	r6, r0
 8001104:	4620      	mov	r0, r4
 8001106:	f7ff ff4b 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 800110a:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800110e:	b200      	sxth	r0, r0
 8001110:	6368      	str	r0, [r5, #52]	; 0x34
 8001112:	2101      	movs	r1, #1
 8001114:	4620      	mov	r0, r4
 8001116:	f7ff ff43 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 800111a:	2100      	movs	r1, #0
 800111c:	b286      	uxth	r6, r0
 800111e:	4620      	mov	r0, r4
 8001120:	f7ff ff3e 	bl	8000fa0 <_ZN4CI2C4ReadEh>
 8001124:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001128:	b200      	sxth	r0, r0
 800112a:	63a8      	str	r0, [r5, #56]	; 0x38
 800112c:	4620      	mov	r0, r4
 800112e:	f7ff fed8 	bl	8000ee2 <_ZN4CI2C4StopEv>
 8001132:	686a      	ldr	r2, [r5, #4]
 8001134:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001136:	68a8      	ldr	r0, [r5, #8]
 8001138:	1a9b      	subs	r3, r3, r2
 800113a:	68ea      	ldr	r2, [r5, #12]
 800113c:	26c8      	movs	r6, #200	; 0xc8
 800113e:	fb93 f3f6 	sdiv	r3, r3, r6
 8001142:	441a      	add	r2, r3
 8001144:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8001146:	60ea      	str	r2, [r5, #12]
 8001148:	2155      	movs	r1, #85	; 0x55
 800114a:	4359      	muls	r1, r3
 800114c:	f640 14e2 	movw	r4, #2530	; 0x9e2
 8001150:	434a      	muls	r2, r1
 8001152:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 8001154:	fb92 f2f4 	sdiv	r2, r2, r4
 8001158:	61aa      	str	r2, [r5, #24]
 800115a:	682a      	ldr	r2, [r5, #0]
 800115c:	1a9b      	subs	r3, r3, r2
 800115e:	692a      	ldr	r2, [r5, #16]
 8001160:	fb93 f3f6 	sdiv	r3, r3, r6
 8001164:	441a      	add	r2, r3
 8001166:	612a      	str	r2, [r5, #16]
 8001168:	434a      	muls	r2, r1
 800116a:	fb92 f2f4 	sdiv	r2, r2, r4
 800116e:	61ea      	str	r2, [r5, #28]
 8001170:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 8001172:	1a12      	subs	r2, r2, r0
 8001174:	fb92 f0f6 	sdiv	r0, r2, r6
 8001178:	696a      	ldr	r2, [r5, #20]
 800117a:	1883      	adds	r3, r0, r2
 800117c:	616b      	str	r3, [r5, #20]
 800117e:	434b      	muls	r3, r1
 8001180:	fb93 f3f4 	sdiv	r3, r3, r4
 8001184:	622b      	str	r3, [r5, #32]
 8001186:	bd70      	pop	{r4, r5, r6, pc}
 8001188:	20000160 	.word	0x20000160

0800118c <_ZN4CIMU8imu_initEv>:
 800118c:	230a      	movs	r3, #10
 800118e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001192:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001194:	2300      	movs	r3, #0
 8001196:	4604      	mov	r4, r0
 8001198:	6003      	str	r3, [r0, #0]
 800119a:	6043      	str	r3, [r0, #4]
 800119c:	6083      	str	r3, [r0, #8]
 800119e:	60c3      	str	r3, [r0, #12]
 80011a0:	6103      	str	r3, [r0, #16]
 80011a2:	6143      	str	r3, [r0, #20]
 80011a4:	f242 7511 	movw	r5, #10001	; 0x2711
 80011a8:	3d01      	subs	r5, #1
 80011aa:	d001      	beq.n	80011b0 <_ZN4CIMU8imu_initEv+0x24>
 80011ac:	bf00      	nop
 80011ae:	e7fb      	b.n	80011a8 <_ZN4CIMU8imu_initEv+0x1c>
 80011b0:	4832      	ldr	r0, [pc, #200]	; (800127c <_ZN4CIMU8imu_initEv+0xf0>)
 80011b2:	21d4      	movs	r1, #212	; 0xd4
 80011b4:	220f      	movs	r2, #15
 80011b6:	f7ff ff21 	bl	8000ffc <_ZN4CI2C8read_regEhh>
 80011ba:	28d4      	cmp	r0, #212	; 0xd4
 80011bc:	4606      	mov	r6, r0
 80011be:	d155      	bne.n	800126c <_ZN4CIMU8imu_initEv+0xe0>
 80011c0:	482e      	ldr	r0, [pc, #184]	; (800127c <_ZN4CIMU8imu_initEv+0xf0>)
 80011c2:	213c      	movs	r1, #60	; 0x3c
 80011c4:	220f      	movs	r2, #15
 80011c6:	f7ff ff19 	bl	8000ffc <_ZN4CI2C8read_regEhh>
 80011ca:	2849      	cmp	r0, #73	; 0x49
 80011cc:	d152      	bne.n	8001274 <_ZN4CIMU8imu_initEv+0xe8>
 80011ce:	4631      	mov	r1, r6
 80011d0:	482a      	ldr	r0, [pc, #168]	; (800127c <_ZN4CIMU8imu_initEv+0xf0>)
 80011d2:	2220      	movs	r2, #32
 80011d4:	23ff      	movs	r3, #255	; 0xff
 80011d6:	f7ff fecb 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 80011da:	4631      	mov	r1, r6
 80011dc:	4827      	ldr	r0, [pc, #156]	; (800127c <_ZN4CIMU8imu_initEv+0xf0>)
 80011de:	4e28      	ldr	r6, [pc, #160]	; (8001280 <_ZN4CIMU8imu_initEv+0xf4>)
 80011e0:	2223      	movs	r2, #35	; 0x23
 80011e2:	2310      	movs	r3, #16
 80011e4:	f7ff fec4 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 80011e8:	4824      	ldr	r0, [pc, #144]	; (800127c <_ZN4CIMU8imu_initEv+0xf0>)
 80011ea:	213c      	movs	r1, #60	; 0x3c
 80011ec:	221f      	movs	r2, #31
 80011ee:	462b      	mov	r3, r5
 80011f0:	f7ff febe 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 80011f4:	4821      	ldr	r0, [pc, #132]	; (800127c <_ZN4CIMU8imu_initEv+0xf0>)
 80011f6:	213c      	movs	r1, #60	; 0x3c
 80011f8:	2220      	movs	r2, #32
 80011fa:	2367      	movs	r3, #103	; 0x67
 80011fc:	f7ff feb8 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 8001200:	481e      	ldr	r0, [pc, #120]	; (800127c <_ZN4CIMU8imu_initEv+0xf0>)
 8001202:	213c      	movs	r1, #60	; 0x3c
 8001204:	2221      	movs	r2, #33	; 0x21
 8001206:	462b      	mov	r3, r5
 8001208:	f7ff feb2 	bl	8000f70 <_ZN4CI2C9write_regEhhh>
 800120c:	3e01      	subs	r6, #1
 800120e:	d001      	beq.n	8001214 <_ZN4CIMU8imu_initEv+0x88>
 8001210:	bf00      	nop
 8001212:	e7fb      	b.n	800120c <_ZN4CIMU8imu_initEv+0x80>
 8001214:	4620      	mov	r0, r4
 8001216:	f7ff ff11 	bl	800103c <_ZN4CIMU8imu_readEv>
 800121a:	2564      	movs	r5, #100	; 0x64
 800121c:	4637      	mov	r7, r6
 800121e:	46b0      	mov	r8, r6
 8001220:	2365      	movs	r3, #101	; 0x65
 8001222:	3b01      	subs	r3, #1
 8001224:	d001      	beq.n	800122a <_ZN4CIMU8imu_initEv+0x9e>
 8001226:	bf00      	nop
 8001228:	e7fb      	b.n	8001222 <_ZN4CIMU8imu_initEv+0x96>
 800122a:	4620      	mov	r0, r4
 800122c:	f7ff ff06 	bl	800103c <_ZN4CIMU8imu_readEv>
 8001230:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8001232:	4498      	add	r8, r3
 8001234:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8001236:	441f      	add	r7, r3
 8001238:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800123a:	3d01      	subs	r5, #1
 800123c:	441e      	add	r6, r3
 800123e:	d1ef      	bne.n	8001220 <_ZN4CIMU8imu_initEv+0x94>
 8001240:	2264      	movs	r2, #100	; 0x64
 8001242:	6325      	str	r5, [r4, #48]	; 0x30
 8001244:	fb98 f3f2 	sdiv	r3, r8, r2
 8001248:	fb97 f7f2 	sdiv	r7, r7, r2
 800124c:	fb96 f6f2 	sdiv	r6, r6, r2
 8001250:	6023      	str	r3, [r4, #0]
 8001252:	6067      	str	r7, [r4, #4]
 8001254:	60a6      	str	r6, [r4, #8]
 8001256:	6365      	str	r5, [r4, #52]	; 0x34
 8001258:	63a5      	str	r5, [r4, #56]	; 0x38
 800125a:	6265      	str	r5, [r4, #36]	; 0x24
 800125c:	62a5      	str	r5, [r4, #40]	; 0x28
 800125e:	62e5      	str	r5, [r4, #44]	; 0x2c
 8001260:	61a5      	str	r5, [r4, #24]
 8001262:	61e5      	str	r5, [r4, #28]
 8001264:	6225      	str	r5, [r4, #32]
 8001266:	4628      	mov	r0, r5
 8001268:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800126c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001270:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001274:	f06f 0001 	mvn.w	r0, #1
 8001278:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800127c:	20000160 	.word	0x20000160
 8001280:	000186a1 	.word	0x000186a1

08001284 <_ZN5CGPIO9gpio_initEv>:
 8001284:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8001288:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800128c:	2101      	movs	r1, #1
 800128e:	f000 ff27 	bl	80020e0 <RCC_AHBPeriphClockCmd>
 8001292:	4f22      	ldr	r7, [pc, #136]	; (800131c <_ZN5CGPIO9gpio_initEv+0x98>)
 8001294:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001298:	2101      	movs	r1, #1
 800129a:	f000 ff21 	bl	80020e0 <RCC_AHBPeriphClockCmd>
 800129e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80012a2:	2101      	movs	r1, #1
 80012a4:	f000 ff1c 	bl	80020e0 <RCC_AHBPeriphClockCmd>
 80012a8:	2400      	movs	r4, #0
 80012aa:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80012ae:	2503      	movs	r5, #3
 80012b0:	f04f 0801 	mov.w	r8, #1
 80012b4:	4638      	mov	r0, r7
 80012b6:	4669      	mov	r1, sp
 80012b8:	9300      	str	r3, [sp, #0]
 80012ba:	2608      	movs	r6, #8
 80012bc:	f88d 8004 	strb.w	r8, [sp, #4]
 80012c0:	f88d 4006 	strb.w	r4, [sp, #6]
 80012c4:	f88d 5005 	strb.w	r5, [sp, #5]
 80012c8:	f88d 4007 	strb.w	r4, [sp, #7]
 80012cc:	f001 f910 	bl	80024f0 <GPIO_Init>
 80012d0:	4669      	mov	r1, sp
 80012d2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80012d6:	9600      	str	r6, [sp, #0]
 80012d8:	f88d 8004 	strb.w	r8, [sp, #4]
 80012dc:	f88d 4006 	strb.w	r4, [sp, #6]
 80012e0:	f88d 5005 	strb.w	r5, [sp, #5]
 80012e4:	f88d 4007 	strb.w	r4, [sp, #7]
 80012e8:	f001 f902 	bl	80024f0 <GPIO_Init>
 80012ec:	f44f 7300 	mov.w	r3, #512	; 0x200
 80012f0:	4638      	mov	r0, r7
 80012f2:	4669      	mov	r1, sp
 80012f4:	9300      	str	r3, [sp, #0]
 80012f6:	f88d 4004 	strb.w	r4, [sp, #4]
 80012fa:	f88d 5005 	strb.w	r5, [sp, #5]
 80012fe:	f88d 4007 	strb.w	r4, [sp, #7]
 8001302:	f001 f8f5 	bl	80024f0 <GPIO_Init>
 8001306:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800130a:	4620      	mov	r0, r4
 800130c:	851e      	strh	r6, [r3, #40]	; 0x28
 800130e:	4b04      	ldr	r3, [pc, #16]	; (8001320 <_ZN5CGPIO9gpio_initEv+0x9c>)
 8001310:	601c      	str	r4, [r3, #0]
 8001312:	4b04      	ldr	r3, [pc, #16]	; (8001324 <_ZN5CGPIO9gpio_initEv+0xa0>)
 8001314:	601c      	str	r4, [r3, #0]
 8001316:	b002      	add	sp, #8
 8001318:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800131c:	48000400 	.word	0x48000400
 8001320:	20000164 	.word	0x20000164
 8001324:	20000168 	.word	0x20000168

08001328 <_ZN5CGPIO7gpio_onEm>:
 8001328:	2908      	cmp	r1, #8
 800132a:	d005      	beq.n	8001338 <_ZN5CGPIO7gpio_onEm+0x10>
 800132c:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8001330:	d105      	bne.n	800133e <_ZN5CGPIO7gpio_onEm+0x16>
 8001332:	4b03      	ldr	r3, [pc, #12]	; (8001340 <_ZN5CGPIO7gpio_onEm+0x18>)
 8001334:	6199      	str	r1, [r3, #24]
 8001336:	4770      	bx	lr
 8001338:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800133c:	8519      	strh	r1, [r3, #40]	; 0x28
 800133e:	4770      	bx	lr
 8001340:	48000400 	.word	0x48000400

08001344 <_ZN5CGPIO8gpio_offEm>:
 8001344:	2908      	cmp	r1, #8
 8001346:	d005      	beq.n	8001354 <_ZN5CGPIO8gpio_offEm+0x10>
 8001348:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 800134c:	d105      	bne.n	800135a <_ZN5CGPIO8gpio_offEm+0x16>
 800134e:	4b03      	ldr	r3, [pc, #12]	; (800135c <_ZN5CGPIO8gpio_offEm+0x18>)
 8001350:	8519      	strh	r1, [r3, #40]	; 0x28
 8001352:	4770      	bx	lr
 8001354:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001358:	6199      	str	r1, [r3, #24]
 800135a:	4770      	bx	lr
 800135c:	48000400 	.word	0x48000400

08001360 <_ZN5CGPIO7gpio_inEm>:
 8001360:	4b02      	ldr	r3, [pc, #8]	; (800136c <_ZN5CGPIO7gpio_inEm+0xc>)
 8001362:	8a18      	ldrh	r0, [r3, #16]
 8001364:	b280      	uxth	r0, r0
 8001366:	ea21 0000 	bic.w	r0, r1, r0
 800136a:	4770      	bx	lr
 800136c:	48000400 	.word	0x48000400

08001370 <EXTI9_5_IRQHandler>:
 8001370:	4a03      	ldr	r2, [pc, #12]	; (8001380 <EXTI9_5_IRQHandler+0x10>)
 8001372:	6813      	ldr	r3, [r2, #0]
 8001374:	2006      	movs	r0, #6
 8001376:	3301      	adds	r3, #1
 8001378:	6013      	str	r3, [r2, #0]
 800137a:	f001 b8ad 	b.w	80024d8 <EXTI_ClearITPendingBit>
 800137e:	bf00      	nop
 8001380:	20000164 	.word	0x20000164

08001384 <EXTI15_10_IRQHandler>:
 8001384:	4a03      	ldr	r2, [pc, #12]	; (8001394 <EXTI15_10_IRQHandler+0x10>)
 8001386:	6813      	ldr	r3, [r2, #0]
 8001388:	200c      	movs	r0, #12
 800138a:	3301      	adds	r3, #1
 800138c:	6013      	str	r3, [r2, #0]
 800138e:	f001 b8a3 	b.w	80024d8 <EXTI_ClearITPendingBit>
 8001392:	bf00      	nop
 8001394:	20000168 	.word	0x20000168

08001398 <_ZN9CTerminal13terminal_initEv>:
 8001398:	b530      	push	{r4, r5, lr}
 800139a:	4a2f      	ldr	r2, [pc, #188]	; (8001458 <_ZN9CTerminal13terminal_initEv+0xc0>)
 800139c:	2300      	movs	r3, #0
 800139e:	6013      	str	r3, [r2, #0]
 80013a0:	4a2e      	ldr	r2, [pc, #184]	; (800145c <_ZN9CTerminal13terminal_initEv+0xc4>)
 80013a2:	b08b      	sub	sp, #44	; 0x2c
 80013a4:	6013      	str	r3, [r2, #0]
 80013a6:	4a2e      	ldr	r2, [pc, #184]	; (8001460 <_ZN9CTerminal13terminal_initEv+0xc8>)
 80013a8:	2400      	movs	r4, #0
 80013aa:	54d4      	strb	r4, [r2, r3]
 80013ac:	3301      	adds	r3, #1
 80013ae:	2b10      	cmp	r3, #16
 80013b0:	d1f9      	bne.n	80013a6 <_ZN9CTerminal13terminal_initEv+0xe>
 80013b2:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80013b6:	2101      	movs	r1, #1
 80013b8:	f000 fe92 	bl	80020e0 <RCC_AHBPeriphClockCmd>
 80013bc:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80013c0:	2101      	movs	r1, #1
 80013c2:	f000 fe9b 	bl	80020fc <RCC_APB2PeriphClockCmd>
 80013c6:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80013ca:	9302      	str	r3, [sp, #8]
 80013cc:	2302      	movs	r3, #2
 80013ce:	f88d 300c 	strb.w	r3, [sp, #12]
 80013d2:	a902      	add	r1, sp, #8
 80013d4:	2303      	movs	r3, #3
 80013d6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80013da:	f88d 300d 	strb.w	r3, [sp, #13]
 80013de:	f88d 400e 	strb.w	r4, [sp, #14]
 80013e2:	f88d 400f 	strb.w	r4, [sp, #15]
 80013e6:	f001 f883 	bl	80024f0 <GPIO_Init>
 80013ea:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80013ee:	2109      	movs	r1, #9
 80013f0:	2207      	movs	r2, #7
 80013f2:	f001 f8c3 	bl	800257c <GPIO_PinAFConfig>
 80013f6:	2207      	movs	r2, #7
 80013f8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80013fc:	210a      	movs	r1, #10
 80013fe:	f001 f8bd 	bl	800257c <GPIO_PinAFConfig>
 8001402:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001406:	9304      	str	r3, [sp, #16]
 8001408:	a904      	add	r1, sp, #16
 800140a:	230c      	movs	r3, #12
 800140c:	4815      	ldr	r0, [pc, #84]	; (8001464 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800140e:	9308      	str	r3, [sp, #32]
 8001410:	9405      	str	r4, [sp, #20]
 8001412:	9406      	str	r4, [sp, #24]
 8001414:	9407      	str	r4, [sp, #28]
 8001416:	9409      	str	r4, [sp, #36]	; 0x24
 8001418:	f000 fef0 	bl	80021fc <USART_Init>
 800141c:	4811      	ldr	r0, [pc, #68]	; (8001464 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800141e:	2101      	movs	r1, #1
 8001420:	f000 ff4e 	bl	80022c0 <USART_Cmd>
 8001424:	2201      	movs	r2, #1
 8001426:	4910      	ldr	r1, [pc, #64]	; (8001468 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8001428:	480e      	ldr	r0, [pc, #56]	; (8001464 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800142a:	f000 ff59 	bl	80022e0 <USART_ITConfig>
 800142e:	2501      	movs	r5, #1
 8001430:	2325      	movs	r3, #37	; 0x25
 8001432:	a801      	add	r0, sp, #4
 8001434:	f88d 3004 	strb.w	r3, [sp, #4]
 8001438:	f88d 4005 	strb.w	r4, [sp, #5]
 800143c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001440:	f88d 5007 	strb.w	r5, [sp, #7]
 8001444:	f001 f80e 	bl	8002464 <NVIC_Init>
 8001448:	4806      	ldr	r0, [pc, #24]	; (8001464 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800144a:	4629      	mov	r1, r5
 800144c:	f000 ff38 	bl	80022c0 <USART_Cmd>
 8001450:	4620      	mov	r0, r4
 8001452:	b00b      	add	sp, #44	; 0x2c
 8001454:	bd30      	pop	{r4, r5, pc}
 8001456:	bf00      	nop
 8001458:	2000016c 	.word	0x2000016c
 800145c:	20000180 	.word	0x20000180
 8001460:	20000170 	.word	0x20000170
 8001464:	40013800 	.word	0x40013800
 8001468:	00050105 	.word	0x00050105

0800146c <USART1_IRQHandler>:
 800146c:	b508      	push	{r3, lr}
 800146e:	480d      	ldr	r0, [pc, #52]	; (80014a4 <USART1_IRQHandler+0x38>)
 8001470:	490d      	ldr	r1, [pc, #52]	; (80014a8 <USART1_IRQHandler+0x3c>)
 8001472:	f000 ff4f 	bl	8002314 <USART_GetITStatus>
 8001476:	b178      	cbz	r0, 8001498 <USART1_IRQHandler+0x2c>
 8001478:	480a      	ldr	r0, [pc, #40]	; (80014a4 <USART1_IRQHandler+0x38>)
 800147a:	f000 ff2c 	bl	80022d6 <USART_ReceiveData>
 800147e:	4b0b      	ldr	r3, [pc, #44]	; (80014ac <USART1_IRQHandler+0x40>)
 8001480:	490b      	ldr	r1, [pc, #44]	; (80014b0 <USART1_IRQHandler+0x44>)
 8001482:	681a      	ldr	r2, [r3, #0]
 8001484:	b2c0      	uxtb	r0, r0
 8001486:	5488      	strb	r0, [r1, r2]
 8001488:	681a      	ldr	r2, [r3, #0]
 800148a:	3201      	adds	r2, #1
 800148c:	601a      	str	r2, [r3, #0]
 800148e:	681a      	ldr	r2, [r3, #0]
 8001490:	2a0f      	cmp	r2, #15
 8001492:	bf84      	itt	hi
 8001494:	2200      	movhi	r2, #0
 8001496:	601a      	strhi	r2, [r3, #0]
 8001498:	4802      	ldr	r0, [pc, #8]	; (80014a4 <USART1_IRQHandler+0x38>)
 800149a:	4903      	ldr	r1, [pc, #12]	; (80014a8 <USART1_IRQHandler+0x3c>)
 800149c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80014a0:	f000 bf56 	b.w	8002350 <USART_ClearITPendingBit>
 80014a4:	40013800 	.word	0x40013800
 80014a8:	00050105 	.word	0x00050105
 80014ac:	2000016c 	.word	0x2000016c
 80014b0:	20000170 	.word	0x20000170

080014b4 <_ZN9CTerminal7putcharEc>:
 80014b4:	4b04      	ldr	r3, [pc, #16]	; (80014c8 <_ZN9CTerminal7putcharEc+0x14>)
 80014b6:	69da      	ldr	r2, [r3, #28]
 80014b8:	0612      	lsls	r2, r2, #24
 80014ba:	d401      	bmi.n	80014c0 <_ZN9CTerminal7putcharEc+0xc>
 80014bc:	bf00      	nop
 80014be:	e7f9      	b.n	80014b4 <_ZN9CTerminal7putcharEc>
 80014c0:	b289      	uxth	r1, r1
 80014c2:	8519      	strh	r1, [r3, #40]	; 0x28
 80014c4:	4770      	bx	lr
 80014c6:	bf00      	nop
 80014c8:	40013800 	.word	0x40013800

080014cc <_ZN9CTerminal4putsEPc>:
 80014cc:	b538      	push	{r3, r4, r5, lr}
 80014ce:	4605      	mov	r5, r0
 80014d0:	1e4c      	subs	r4, r1, #1
 80014d2:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 80014d6:	b119      	cbz	r1, 80014e0 <_ZN9CTerminal4putsEPc+0x14>
 80014d8:	4628      	mov	r0, r5
 80014da:	f7ff ffeb 	bl	80014b4 <_ZN9CTerminal7putcharEc>
 80014de:	e7f8      	b.n	80014d2 <_ZN9CTerminal4putsEPc+0x6>
 80014e0:	2001      	movs	r0, #1
 80014e2:	bd38      	pop	{r3, r4, r5, pc}

080014e4 <_ZN9CTerminal4putiEl>:
 80014e4:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 80014e6:	1e0b      	subs	r3, r1, #0
 80014e8:	f04f 0200 	mov.w	r2, #0
 80014ec:	bfba      	itte	lt
 80014ee:	425b      	neglt	r3, r3
 80014f0:	2501      	movlt	r5, #1
 80014f2:	4615      	movge	r5, r2
 80014f4:	f88d 200f 	strb.w	r2, [sp, #15]
 80014f8:	210a      	movs	r1, #10
 80014fa:	220a      	movs	r2, #10
 80014fc:	ac01      	add	r4, sp, #4
 80014fe:	fb93 f6f2 	sdiv	r6, r3, r2
 8001502:	fb02 3316 	mls	r3, r2, r6, r3
 8001506:	3330      	adds	r3, #48	; 0x30
 8001508:	550b      	strb	r3, [r1, r4]
 800150a:	1e4a      	subs	r2, r1, #1
 800150c:	4633      	mov	r3, r6
 800150e:	b10e      	cbz	r6, 8001514 <_ZN9CTerminal4putiEl+0x30>
 8001510:	4611      	mov	r1, r2
 8001512:	e7f2      	b.n	80014fa <_ZN9CTerminal4putiEl+0x16>
 8001514:	b12d      	cbz	r5, 8001522 <_ZN9CTerminal4putiEl+0x3e>
 8001516:	ab04      	add	r3, sp, #16
 8001518:	4413      	add	r3, r2
 800151a:	212d      	movs	r1, #45	; 0x2d
 800151c:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001520:	4611      	mov	r1, r2
 8001522:	4421      	add	r1, r4
 8001524:	f7ff ffd2 	bl	80014cc <_ZN9CTerminal4putsEPc>
 8001528:	b004      	add	sp, #16
 800152a:	bd70      	pop	{r4, r5, r6, pc}

0800152c <_ZN9CTerminal5putuiEm>:
 800152c:	b530      	push	{r4, r5, lr}
 800152e:	b085      	sub	sp, #20
 8001530:	2300      	movs	r3, #0
 8001532:	f88d 300f 	strb.w	r3, [sp, #15]
 8001536:	220a      	movs	r2, #10
 8001538:	230a      	movs	r3, #10
 800153a:	ac01      	add	r4, sp, #4
 800153c:	fbb1 f5f3 	udiv	r5, r1, r3
 8001540:	fb03 1315 	mls	r3, r3, r5, r1
 8001544:	3330      	adds	r3, #48	; 0x30
 8001546:	5513      	strb	r3, [r2, r4]
 8001548:	4629      	mov	r1, r5
 800154a:	1e53      	subs	r3, r2, #1
 800154c:	b10d      	cbz	r5, 8001552 <_ZN9CTerminal5putuiEm+0x26>
 800154e:	461a      	mov	r2, r3
 8001550:	e7f2      	b.n	8001538 <_ZN9CTerminal5putuiEm+0xc>
 8001552:	18a1      	adds	r1, r4, r2
 8001554:	f7ff ffba 	bl	80014cc <_ZN9CTerminal4putsEPc>
 8001558:	b005      	add	sp, #20
 800155a:	bd30      	pop	{r4, r5, pc}

0800155c <_ZN9CTerminal4putxEm>:
 800155c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800155e:	2300      	movs	r3, #0
 8001560:	f88d 300f 	strb.w	r3, [sp, #15]
 8001564:	220a      	movs	r2, #10
 8001566:	f001 030f 	and.w	r3, r1, #15
 800156a:	2b09      	cmp	r3, #9
 800156c:	ac01      	add	r4, sp, #4
 800156e:	bfd4      	ite	le
 8001570:	3330      	addle	r3, #48	; 0x30
 8001572:	3357      	addgt	r3, #87	; 0x57
 8001574:	0909      	lsrs	r1, r1, #4
 8001576:	54a3      	strb	r3, [r4, r2]
 8001578:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 800157c:	d001      	beq.n	8001582 <_ZN9CTerminal4putxEm+0x26>
 800157e:	461a      	mov	r2, r3
 8001580:	e7f1      	b.n	8001566 <_ZN9CTerminal4putxEm+0xa>
 8001582:	18a1      	adds	r1, r4, r2
 8001584:	f7ff ffa2 	bl	80014cc <_ZN9CTerminal4putsEPc>
 8001588:	b004      	add	sp, #16
 800158a:	bd10      	pop	{r4, pc}

0800158c <_ZN9CTerminal4putfEfj>:
 800158c:	b538      	push	{r3, r4, r5, lr}
 800158e:	2200      	movs	r2, #0
 8001590:	4605      	mov	r5, r0
 8001592:	2301      	movs	r3, #1
 8001594:	428a      	cmp	r2, r1
 8001596:	d003      	beq.n	80015a0 <_ZN9CTerminal4putfEfj+0x14>
 8001598:	200a      	movs	r0, #10
 800159a:	4343      	muls	r3, r0
 800159c:	3201      	adds	r2, #1
 800159e:	e7f9      	b.n	8001594 <_ZN9CTerminal4putfEfj+0x8>
 80015a0:	eebd 7ac0 	vcvt.s32.f32	s14, s0
 80015a4:	4628      	mov	r0, r5
 80015a6:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 80015aa:	ee17 1a10 	vmov	r1, s14
 80015ae:	ee30 0a67 	vsub.f32	s0, s0, s15
 80015b2:	ee07 3a90 	vmov	s15, r3
 80015b6:	eef8 7a67 	vcvt.f32.u32	s15, s15
 80015ba:	ee20 0a27 	vmul.f32	s0, s0, s15
 80015be:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 80015c2:	ee17 4a90 	vmov	r4, s15
 80015c6:	f7ff ff8d 	bl	80014e4 <_ZN9CTerminal4putiEl>
 80015ca:	4628      	mov	r0, r5
 80015cc:	212e      	movs	r1, #46	; 0x2e
 80015ce:	f7ff ff71 	bl	80014b4 <_ZN9CTerminal7putcharEc>
 80015d2:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 80015d6:	4628      	mov	r0, r5
 80015d8:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 80015dc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80015e0:	f7ff bf80 	b.w	80014e4 <_ZN9CTerminal4putiEl>

080015e4 <_ZN9CTerminal6printfEPKcz>:
 80015e4:	b40e      	push	{r1, r2, r3}
 80015e6:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 80015e8:	ab07      	add	r3, sp, #28
 80015ea:	4604      	mov	r4, r0
 80015ec:	f853 6b04 	ldr.w	r6, [r3], #4
 80015f0:	9301      	str	r3, [sp, #4]
 80015f2:	2500      	movs	r5, #0
 80015f4:	5d71      	ldrb	r1, [r6, r5]
 80015f6:	2900      	cmp	r1, #0
 80015f8:	d054      	beq.n	80016a4 <_ZN9CTerminal6printfEPKcz+0xc0>
 80015fa:	2925      	cmp	r1, #37	; 0x25
 80015fc:	d004      	beq.n	8001608 <_ZN9CTerminal6printfEPKcz+0x24>
 80015fe:	4620      	mov	r0, r4
 8001600:	f7ff ff58 	bl	80014b4 <_ZN9CTerminal7putcharEc>
 8001604:	3501      	adds	r5, #1
 8001606:	e7f5      	b.n	80015f4 <_ZN9CTerminal6printfEPKcz+0x10>
 8001608:	1973      	adds	r3, r6, r5
 800160a:	7859      	ldrb	r1, [r3, #1]
 800160c:	2969      	cmp	r1, #105	; 0x69
 800160e:	d016      	beq.n	800163e <_ZN9CTerminal6printfEPKcz+0x5a>
 8001610:	d807      	bhi.n	8001622 <_ZN9CTerminal6printfEPKcz+0x3e>
 8001612:	2963      	cmp	r1, #99	; 0x63
 8001614:	d02b      	beq.n	800166e <_ZN9CTerminal6printfEPKcz+0x8a>
 8001616:	2966      	cmp	r1, #102	; 0x66
 8001618:	d031      	beq.n	800167e <_ZN9CTerminal6printfEPKcz+0x9a>
 800161a:	2925      	cmp	r1, #37	; 0x25
 800161c:	d140      	bne.n	80016a0 <_ZN9CTerminal6printfEPKcz+0xbc>
 800161e:	4620      	mov	r0, r4
 8001620:	e02a      	b.n	8001678 <_ZN9CTerminal6printfEPKcz+0x94>
 8001622:	2975      	cmp	r1, #117	; 0x75
 8001624:	d013      	beq.n	800164e <_ZN9CTerminal6printfEPKcz+0x6a>
 8001626:	2978      	cmp	r1, #120	; 0x78
 8001628:	d019      	beq.n	800165e <_ZN9CTerminal6printfEPKcz+0x7a>
 800162a:	2973      	cmp	r1, #115	; 0x73
 800162c:	d138      	bne.n	80016a0 <_ZN9CTerminal6printfEPKcz+0xbc>
 800162e:	9b01      	ldr	r3, [sp, #4]
 8001630:	4620      	mov	r0, r4
 8001632:	1d1a      	adds	r2, r3, #4
 8001634:	6819      	ldr	r1, [r3, #0]
 8001636:	9201      	str	r2, [sp, #4]
 8001638:	f7ff ff48 	bl	80014cc <_ZN9CTerminal4putsEPc>
 800163c:	e030      	b.n	80016a0 <_ZN9CTerminal6printfEPKcz+0xbc>
 800163e:	9b01      	ldr	r3, [sp, #4]
 8001640:	4620      	mov	r0, r4
 8001642:	1d1a      	adds	r2, r3, #4
 8001644:	6819      	ldr	r1, [r3, #0]
 8001646:	9201      	str	r2, [sp, #4]
 8001648:	f7ff ff4c 	bl	80014e4 <_ZN9CTerminal4putiEl>
 800164c:	e028      	b.n	80016a0 <_ZN9CTerminal6printfEPKcz+0xbc>
 800164e:	9b01      	ldr	r3, [sp, #4]
 8001650:	4620      	mov	r0, r4
 8001652:	1d1a      	adds	r2, r3, #4
 8001654:	6819      	ldr	r1, [r3, #0]
 8001656:	9201      	str	r2, [sp, #4]
 8001658:	f7ff ff68 	bl	800152c <_ZN9CTerminal5putuiEm>
 800165c:	e020      	b.n	80016a0 <_ZN9CTerminal6printfEPKcz+0xbc>
 800165e:	9b01      	ldr	r3, [sp, #4]
 8001660:	4620      	mov	r0, r4
 8001662:	1d1a      	adds	r2, r3, #4
 8001664:	6819      	ldr	r1, [r3, #0]
 8001666:	9201      	str	r2, [sp, #4]
 8001668:	f7ff ff78 	bl	800155c <_ZN9CTerminal4putxEm>
 800166c:	e018      	b.n	80016a0 <_ZN9CTerminal6printfEPKcz+0xbc>
 800166e:	9b01      	ldr	r3, [sp, #4]
 8001670:	1d1a      	adds	r2, r3, #4
 8001672:	7819      	ldrb	r1, [r3, #0]
 8001674:	9201      	str	r2, [sp, #4]
 8001676:	4620      	mov	r0, r4
 8001678:	f7ff ff1c 	bl	80014b4 <_ZN9CTerminal7putcharEc>
 800167c:	e010      	b.n	80016a0 <_ZN9CTerminal6printfEPKcz+0xbc>
 800167e:	9b01      	ldr	r3, [sp, #4]
 8001680:	3307      	adds	r3, #7
 8001682:	f023 0307 	bic.w	r3, r3, #7
 8001686:	f103 0208 	add.w	r2, r3, #8
 800168a:	e9d3 0100 	ldrd	r0, r1, [r3]
 800168e:	9201      	str	r2, [sp, #4]
 8001690:	f001 f812 	bl	80026b8 <__aeabi_d2f>
 8001694:	2103      	movs	r1, #3
 8001696:	ee00 0a10 	vmov	s0, r0
 800169a:	4620      	mov	r0, r4
 800169c:	f7ff ff76 	bl	800158c <_ZN9CTerminal4putfEfj>
 80016a0:	3502      	adds	r5, #2
 80016a2:	e7a7      	b.n	80015f4 <_ZN9CTerminal6printfEPKcz+0x10>
 80016a4:	b003      	add	sp, #12
 80016a6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80016aa:	b003      	add	sp, #12
 80016ac:	4770      	bx	lr

080016ae <_ZN10MathVectorILj4EE4initEv>:
 80016ae:	2300      	movs	r3, #0
 80016b0:	6003      	str	r3, [r0, #0]
 80016b2:	6043      	str	r3, [r0, #4]
 80016b4:	6083      	str	r3, [r0, #8]
 80016b6:	60c3      	str	r3, [r0, #12]
 80016b8:	4770      	bx	lr

080016ba <_ZN10MathVectorILj3EE3mixERS0_f>:
 80016ba:	f100 030c 	add.w	r3, r0, #12
 80016be:	ecf1 7a01 	vldmia	r1!, {s15}
 80016c2:	edd0 6a00 	vldr	s13, [r0]
 80016c6:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 80016ca:	ee37 7a40 	vsub.f32	s14, s14, s0
 80016ce:	ee60 7a27 	vmul.f32	s15, s0, s15
 80016d2:	eee7 7a26 	vfma.f32	s15, s14, s13
 80016d6:	ece0 7a01 	vstmia	r0!, {s15}
 80016da:	4298      	cmp	r0, r3
 80016dc:	d1ef      	bne.n	80016be <_ZN10MathVectorILj3EE3mixERS0_f+0x4>
 80016de:	4770      	bx	lr

080016e0 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>:
 80016e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80016e2:	eddf 6a17 	vldr	s13, [pc, #92]	; 8001740 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x60>
 80016e6:	4603      	mov	r3, r0
 80016e8:	2600      	movs	r6, #0
 80016ea:	f8d0 0380 	ldr.w	r0, [r0, #896]	; 0x380
 80016ee:	461c      	mov	r4, r3
 80016f0:	4635      	mov	r5, r6
 80016f2:	4285      	cmp	r5, r0
 80016f4:	d019      	beq.n	800172a <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x4a>
 80016f6:	eddf 7a13 	vldr	s15, [pc, #76]	; 8001744 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x64>
 80016fa:	468e      	mov	lr, r1
 80016fc:	f104 0710 	add.w	r7, r4, #16
 8001700:	ecb4 6a01 	vldmia	r4!, {s12}
 8001704:	ecbe 7a01 	vldmia	lr!, {s14}
 8001708:	ee37 7a46 	vsub.f32	s14, s14, s12
 800170c:	42bc      	cmp	r4, r7
 800170e:	eee7 7a07 	vfma.f32	s15, s14, s14
 8001712:	d1f5      	bne.n	8001700 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x20>
 8001714:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001718:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800171c:	bf44      	itt	mi
 800171e:	462e      	movmi	r6, r5
 8001720:	eef0 6a67 	vmovmi.f32	s13, s15
 8001724:	3501      	adds	r5, #1
 8001726:	463c      	mov	r4, r7
 8001728:	e7e3      	b.n	80016f2 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x12>
 800172a:	f503 7300 	add.w	r3, r3, #512	; 0x200
 800172e:	210c      	movs	r1, #12
 8001730:	4610      	mov	r0, r2
 8001732:	fb01 3106 	mla	r1, r1, r6, r3
 8001736:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 800173a:	f7ff ffbe 	bl	80016ba <_ZN10MathVectorILj3EE3mixERS0_f>
 800173e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001740:	4cbebc20 	.word	0x4cbebc20
 8001744:	00000000 	.word	0x00000000

08001748 <_ZN21CLearningLineFollower3runEv>:
 8001748:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800174c:	2310      	movs	r3, #16
 800174e:	ed2d 8b06 	vpush	{d8-d10}
 8001752:	f100 0650 	add.w	r6, r0, #80	; 0x50
 8001756:	f8c0 33d0 	str.w	r3, [r0, #976]	; 0x3d0
 800175a:	4bc9      	ldr	r3, [pc, #804]	; (8001a80 <_ZN21CLearningLineFollower3runEv+0x338>)
 800175c:	f8c0 33d4 	str.w	r3, [r0, #980]	; 0x3d4
 8001760:	4604      	mov	r4, r0
 8001762:	f500 7814 	add.w	r8, r0, #592	; 0x250
 8001766:	4635      	mov	r5, r6
 8001768:	f105 0710 	add.w	r7, r5, #16
 800176c:	48c5      	ldr	r0, [pc, #788]	; (8001a84 <_ZN21CLearningLineFollower3runEv+0x33c>)
 800176e:	f7fe fea1 	bl	80004b4 <_ZN5CMath3rndEv>
 8001772:	eca5 0a01 	vstmia	r5!, {s0}
 8001776:	42bd      	cmp	r5, r7
 8001778:	d1f8      	bne.n	800176c <_ZN21CLearningLineFollower3runEv+0x24>
 800177a:	4545      	cmp	r5, r8
 800177c:	d1f4      	bne.n	8001768 <_ZN21CLearningLineFollower3runEv+0x20>
 800177e:	4623      	mov	r3, r4
 8001780:	f504 72c0 	add.w	r2, r4, #384	; 0x180
 8001784:	eddf 8ac0 	vldr	s17, [pc, #768]	; 8001a88 <_ZN21CLearningLineFollower3runEv+0x340>
 8001788:	330c      	adds	r3, #12
 800178a:	edc3 8a91 	vstr	s17, [r3, #580]	; 0x244
 800178e:	edc3 8a92 	vstr	s17, [r3, #584]	; 0x248
 8001792:	edc3 8a93 	vstr	s17, [r3, #588]	; 0x24c
 8001796:	4293      	cmp	r3, r2
 8001798:	d1f4      	bne.n	8001784 <_ZN21CLearningLineFollower3runEv+0x3c>
 800179a:	2300      	movs	r3, #0
 800179c:	f104 0530 	add.w	r5, r4, #48	; 0x30
 80017a0:	62a3      	str	r3, [r4, #40]	; 0x28
 80017a2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80017a4:	4628      	mov	r0, r5
 80017a6:	f104 0940 	add.w	r9, r4, #64	; 0x40
 80017aa:	f7ff ff80 	bl	80016ae <_ZN10MathVectorILj4EE4initEv>
 80017ae:	4648      	mov	r0, r9
 80017b0:	f7ff ff7d 	bl	80016ae <_ZN10MathVectorILj4EE4initEv>
 80017b4:	eebf aa00 	vmov.f32	s20, #240	; 0xbf800000 -1.0
 80017b8:	edc4 8af6 	vstr	s17, [r4, #984]	; 0x3d8
 80017bc:	edc4 8af7 	vstr	s17, [r4, #988]	; 0x3dc
 80017c0:	edc4 8af8 	vstr	s17, [r4, #992]	; 0x3e0
 80017c4:	2100      	movs	r1, #0
 80017c6:	48b1      	ldr	r0, [pc, #708]	; (8001a8c <_ZN21CLearningLineFollower3runEv+0x344>)
 80017c8:	f7fe ff50 	bl	800066c <_ZN4CRGB8rgb_readEh>
 80017cc:	48af      	ldr	r0, [pc, #700]	; (8001a8c <_ZN21CLearningLineFollower3runEv+0x344>)
 80017ce:	f7ff f8e9 	bl	80009a4 <_ZN4CRGB14get_rgb_resultEv>
 80017d2:	f104 0718 	add.w	r7, r4, #24
 80017d6:	4601      	mov	r1, r0
 80017d8:	4620      	mov	r0, r4
 80017da:	f7fe fd53 	bl	8000284 <_ZN13CLinePosition7processEP10sRGBResult>
 80017de:	4639      	mov	r1, r7
 80017e0:	4620      	mov	r0, r4
 80017e2:	f7fe fdec 	bl	80003be <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>
 80017e6:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 80017ea:	f104 0e40 	add.w	lr, r4, #64	; 0x40
 80017ee:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 80017f2:	e897 000f 	ldmia.w	r7, {r0, r1, r2, r3}
 80017f6:	f504 7776 	add.w	r7, r4, #984	; 0x3d8
 80017fa:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 80017fe:	463a      	mov	r2, r7
 8001800:	4630      	mov	r0, r6
 8001802:	4629      	mov	r1, r5
 8001804:	f7ff ff6c 	bl	80016e0 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001808:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800180a:	62a3      	str	r3, [r4, #40]	; 0x28
 800180c:	489d      	ldr	r0, [pc, #628]	; (8001a84 <_ZN21CLearningLineFollower3runEv+0x33c>)
 800180e:	f7fe fe37 	bl	8000480 <_ZN5CMath4randEv>
 8001812:	2364      	movs	r3, #100	; 0x64
 8001814:	fbb0 f2f3 	udiv	r2, r0, r3
 8001818:	fb02 0013 	mls	r0, r2, r3, r0
 800181c:	2813      	cmp	r0, #19
 800181e:	d80b      	bhi.n	8001838 <_ZN21CLearningLineFollower3runEv+0xf0>
 8001820:	4898      	ldr	r0, [pc, #608]	; (8001a84 <_ZN21CLearningLineFollower3runEv+0x33c>)
 8001822:	f7fe fe2d 	bl	8000480 <_ZN5CMath4randEv>
 8001826:	f04f 0a03 	mov.w	sl, #3
 800182a:	fbb0 fafa 	udiv	sl, r0, sl
 800182e:	eb0a 0a4a 	add.w	sl, sl, sl, lsl #1
 8001832:	ebca 0a00 	rsb	sl, sl, r0
 8001836:	e012      	b.n	800185e <_ZN21CLearningLineFollower3runEv+0x116>
 8001838:	f04f 0a00 	mov.w	sl, #0
 800183c:	463a      	mov	r2, r7
 800183e:	4653      	mov	r3, sl
 8001840:	eb04 018a 	add.w	r1, r4, sl, lsl #2
 8001844:	ecb2 7a01 	vldmia	r2!, {s14}
 8001848:	edd1 7af6 	vldr	s15, [r1, #984]	; 0x3d8
 800184c:	eeb4 7a67 	vcmp.f32	s14, s15
 8001850:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001854:	bfc8      	it	gt
 8001856:	469a      	movgt	sl, r3
 8001858:	3301      	adds	r3, #1
 800185a:	2b03      	cmp	r3, #3
 800185c:	d1f0      	bne.n	8001840 <_ZN21CLearningLineFollower3runEv+0xf8>
 800185e:	f1ba 0f01 	cmp.w	sl, #1
 8001862:	f8c4 a02c 	str.w	sl, [r4, #44]	; 0x2c
 8001866:	d015      	beq.n	8001894 <_ZN21CLearningLineFollower3runEv+0x14c>
 8001868:	d30c      	bcc.n	8001884 <_ZN21CLearningLineFollower3runEv+0x13c>
 800186a:	f1ba 0f02 	cmp.w	sl, #2
 800186e:	d11c      	bne.n	80018aa <_ZN21CLearningLineFollower3runEv+0x162>
 8001870:	4887      	ldr	r0, [pc, #540]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001872:	2100      	movs	r1, #0
 8001874:	220e      	movs	r2, #14
 8001876:	f7ff f92d 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 800187a:	4885      	ldr	r0, [pc, #532]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 800187c:	2101      	movs	r1, #1
 800187e:	f06f 0204 	mvn.w	r2, #4
 8001882:	e010      	b.n	80018a6 <_ZN21CLearningLineFollower3runEv+0x15e>
 8001884:	4882      	ldr	r0, [pc, #520]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001886:	2100      	movs	r1, #0
 8001888:	220e      	movs	r2, #14
 800188a:	f7ff f923 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 800188e:	4880      	ldr	r0, [pc, #512]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001890:	2101      	movs	r1, #1
 8001892:	e007      	b.n	80018a4 <_ZN21CLearningLineFollower3runEv+0x15c>
 8001894:	487e      	ldr	r0, [pc, #504]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001896:	2100      	movs	r1, #0
 8001898:	f06f 0204 	mvn.w	r2, #4
 800189c:	f7ff f91a 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 80018a0:	487b      	ldr	r0, [pc, #492]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 80018a2:	4651      	mov	r1, sl
 80018a4:	220e      	movs	r2, #14
 80018a6:	f7ff f915 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 80018aa:	487a      	ldr	r0, [pc, #488]	; (8001a94 <_ZN21CLearningLineFollower3runEv+0x34c>)
 80018ac:	2132      	movs	r1, #50	; 0x32
 80018ae:	f7fe fea9 	bl	8000604 <_ZN6CTimer8delay_msEm>
 80018b2:	2100      	movs	r1, #0
 80018b4:	4875      	ldr	r0, [pc, #468]	; (8001a8c <_ZN21CLearningLineFollower3runEv+0x344>)
 80018b6:	f7fe fed9 	bl	800066c <_ZN4CRGB8rgb_readEh>
 80018ba:	4874      	ldr	r0, [pc, #464]	; (8001a8c <_ZN21CLearningLineFollower3runEv+0x344>)
 80018bc:	f7ff f872 	bl	80009a4 <_ZN4CRGB14get_rgb_resultEv>
 80018c0:	4601      	mov	r1, r0
 80018c2:	4620      	mov	r0, r4
 80018c4:	f7fe fcde 	bl	8000284 <_ZN13CLinePosition7processEP10sRGBResult>
 80018c8:	4620      	mov	r0, r4
 80018ca:	f7fe fd75 	bl	80003b8 <_ZN13CLinePosition17get_line_positionEv>
 80018ce:	486d      	ldr	r0, [pc, #436]	; (8001a84 <_ZN21CLearningLineFollower3runEv+0x33c>)
 80018d0:	f7fe fdcd 	bl	800046e <_ZN5CMath3absEf>
 80018d4:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
 80018d8:	f8d4 b02c 	ldr.w	fp, [r4, #44]	; 0x2c
 80018dc:	f8d4 a028 	ldr.w	sl, [r4, #40]	; 0x28
 80018e0:	ee39 0ac0 	vsub.f32	s0, s19, s0
 80018e4:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 80018e8:	4630      	mov	r0, r6
 80018ea:	4629      	mov	r1, r5
 80018ec:	463a      	mov	r2, r7
 80018ee:	eb04 0b8b 	add.w	fp, r4, fp, lsl #2
 80018f2:	ee30 9a67 	vsub.f32	s18, s0, s15
 80018f6:	f7ff fef3 	bl	80016e0 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 80018fa:	edd4 7af6 	vldr	s15, [r4, #984]	; 0x3d8
 80018fe:	ed9b 8af6 	vldr	s16, [fp, #984]	; 0x3d8
 8001902:	eeb4 8a67 	vcmp.f32	s16, s15
 8001906:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800190a:	bf48      	it	mi
 800190c:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001910:	edd4 7af7 	vldr	s15, [r4, #988]	; 0x3dc
 8001914:	eeb4 8a67 	vcmp.f32	s16, s15
 8001918:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800191c:	bf48      	it	mi
 800191e:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001922:	edd4 7af8 	vldr	s15, [r4, #992]	; 0x3e0
 8001926:	eeb4 8a67 	vcmp.f32	s16, s15
 800192a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800192e:	4630      	mov	r0, r6
 8001930:	4649      	mov	r1, r9
 8001932:	463a      	mov	r2, r7
 8001934:	bf48      	it	mi
 8001936:	eeb0 8a67 	vmovmi.f32	s16, s15
 800193a:	f7ff fed1 	bl	80016e0 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 800193e:	eddf 7a56 	vldr	s15, [pc, #344]	; 8001a98 <_ZN21CLearningLineFollower3runEv+0x350>
 8001942:	f8d4 03d0 	ldr.w	r0, [r4, #976]	; 0x3d0
 8001946:	eddf 6a55 	vldr	s13, [pc, #340]	; 8001a9c <_ZN21CLearningLineFollower3runEv+0x354>
 800194a:	eeb0 7a49 	vmov.f32	s14, s18
 800194e:	eea8 7a27 	vfma.f32	s14, s16, s15
 8001952:	eb04 0a8a 	add.w	sl, r4, sl, lsl #2
 8001956:	2100      	movs	r1, #0
 8001958:	46b6      	mov	lr, r6
 800195a:	ed8a 7af6 	vstr	s14, [sl, #984]	; 0x3d8
 800195e:	460a      	mov	r2, r1
 8001960:	4282      	cmp	r2, r0
 8001962:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8001966:	d018      	beq.n	800199a <_ZN21CLearningLineFollower3runEv+0x252>
 8001968:	eddf 7a47 	vldr	s15, [pc, #284]	; 8001a88 <_ZN21CLearningLineFollower3runEv+0x340>
 800196c:	46f4      	mov	ip, lr
 800196e:	ecb3 7a01 	vldmia	r3!, {s14}
 8001972:	ecbc 6a01 	vldmia	ip!, {s12}
 8001976:	ee37 7a46 	vsub.f32	s14, s14, s12
 800197a:	42b3      	cmp	r3, r6
 800197c:	eee7 7a07 	vfma.f32	s15, s14, s14
 8001980:	d1f5      	bne.n	800196e <_ZN21CLearningLineFollower3runEv+0x226>
 8001982:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001986:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800198a:	bf44      	itt	mi
 800198c:	4611      	movmi	r1, r2
 800198e:	eef0 6a67 	vmovmi.f32	s13, s15
 8001992:	3201      	adds	r2, #1
 8001994:	f10e 0e10 	add.w	lr, lr, #16
 8001998:	e7e2      	b.n	8001960 <_ZN21CLearningLineFollower3runEv+0x218>
 800199a:	281f      	cmp	r0, #31
 800199c:	d81a      	bhi.n	80019d4 <_ZN21CLearningLineFollower3runEv+0x28c>
 800199e:	1d42      	adds	r2, r0, #5
 80019a0:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 80019a4:	ecf3 7a01 	vldmia	r3!, {s15}
 80019a8:	ed92 7a00 	vldr	s14, [r2]
 80019ac:	eee7 7a28 	vfma.f32	s15, s14, s17
 80019b0:	42b3      	cmp	r3, r6
 80019b2:	ece2 7a01 	vstmia	r2!, {s15}
 80019b6:	d1f5      	bne.n	80019a4 <_ZN21CLearningLineFollower3runEv+0x25c>
 80019b8:	230c      	movs	r3, #12
 80019ba:	fb03 8000 	mla	r0, r3, r0, r8
 80019be:	4639      	mov	r1, r7
 80019c0:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80019c4:	f7ff fe79 	bl	80016ba <_ZN10MathVectorILj3EE3mixERS0_f>
 80019c8:	f8d4 33d0 	ldr.w	r3, [r4, #976]	; 0x3d0
 80019cc:	3301      	adds	r3, #1
 80019ce:	f8c4 33d0 	str.w	r3, [r4, #976]	; 0x3d0
 80019d2:	e01a      	b.n	8001a0a <_ZN21CLearningLineFollower3runEv+0x2c2>
 80019d4:	1d4a      	adds	r2, r1, #5
 80019d6:	edd4 6af5 	vldr	s13, [r4, #980]	; 0x3d4
 80019da:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 80019de:	ecf3 7a01 	vldmia	r3!, {s15}
 80019e2:	ed92 6a00 	vldr	s12, [r2]
 80019e6:	ee39 7ae6 	vsub.f32	s14, s19, s13
 80019ea:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80019ee:	42b3      	cmp	r3, r6
 80019f0:	eee7 7a06 	vfma.f32	s15, s14, s12
 80019f4:	ece2 7a01 	vstmia	r2!, {s15}
 80019f8:	d1f1      	bne.n	80019de <_ZN21CLearningLineFollower3runEv+0x296>
 80019fa:	200c      	movs	r0, #12
 80019fc:	fb00 8001 	mla	r0, r0, r1, r8
 8001a00:	ed94 0af5 	vldr	s0, [r4, #980]	; 0x3d4
 8001a04:	4639      	mov	r1, r7
 8001a06:	f7ff fe58 	bl	80016ba <_ZN10MathVectorILj3EE3mixERS0_f>
 8001a0a:	4620      	mov	r0, r4
 8001a0c:	f7fe fcd2 	bl	80003b4 <_ZN13CLinePosition7on_lineEv>
 8001a10:	4607      	mov	r7, r0
 8001a12:	b9f0      	cbnz	r0, 8001a52 <_ZN21CLearningLineFollower3runEv+0x30a>
 8001a14:	481e      	ldr	r0, [pc, #120]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001a16:	4639      	mov	r1, r7
 8001a18:	f06f 020d 	mvn.w	r2, #13
 8001a1c:	f7ff f85a 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001a20:	f06f 020d 	mvn.w	r2, #13
 8001a24:	481a      	ldr	r0, [pc, #104]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001a26:	2101      	movs	r1, #1
 8001a28:	f7ff f854 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001a2c:	4819      	ldr	r0, [pc, #100]	; (8001a94 <_ZN21CLearningLineFollower3runEv+0x34c>)
 8001a2e:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 8001a32:	f7fe fde7 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001a36:	4816      	ldr	r0, [pc, #88]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001a38:	4639      	mov	r1, r7
 8001a3a:	463a      	mov	r2, r7
 8001a3c:	f7ff f84a 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001a40:	4813      	ldr	r0, [pc, #76]	; (8001a90 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001a42:	2101      	movs	r1, #1
 8001a44:	463a      	mov	r2, r7
 8001a46:	f7ff f845 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001a4a:	4812      	ldr	r0, [pc, #72]	; (8001a94 <_ZN21CLearningLineFollower3runEv+0x34c>)
 8001a4c:	2164      	movs	r1, #100	; 0x64
 8001a4e:	f7fe fdd9 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001a52:	ed9f 0a13 	vldr	s0, [pc, #76]	; 8001aa0 <_ZN21CLearningLineFollower3runEv+0x358>
 8001a56:	eddf 7a13 	vldr	s15, [pc, #76]	; 8001aa4 <_ZN21CLearningLineFollower3runEv+0x35c>
 8001a5a:	480c      	ldr	r0, [pc, #48]	; (8001a8c <_ZN21CLearningLineFollower3runEv+0x344>)
 8001a5c:	4912      	ldr	r1, [pc, #72]	; (8001aa8 <_ZN21CLearningLineFollower3runEv+0x360>)
 8001a5e:	ee29 9a00 	vmul.f32	s18, s18, s0
 8001a62:	eeaa 9a27 	vfma.f32	s18, s20, s15
 8001a66:	eddf 7a11 	vldr	s15, [pc, #68]	; 8001aac <_ZN21CLearningLineFollower3runEv+0x364>
 8001a6a:	ee69 7a27 	vmul.f32	s15, s18, s15
 8001a6e:	eeb0 aa49 	vmov.f32	s20, s18
 8001a72:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001a76:	ee17 2a90 	vmov	r2, s15
 8001a7a:	f7ff fdb3 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001a7e:	e6a1      	b.n	80017c4 <_ZN21CLearningLineFollower3runEv+0x7c>
 8001a80:	3dcccccd 	.word	0x3dcccccd
 8001a84:	20000108 	.word	0x20000108
 8001a88:	00000000 	.word	0x00000000
 8001a8c:	20000030 	.word	0x20000030
 8001a90:	200000f4 	.word	0x200000f4
 8001a94:	2000013c 	.word	0x2000013c
 8001a98:	3f666666 	.word	0x3f666666
 8001a9c:	4cbebc20 	.word	0x4cbebc20
 8001aa0:	3c23d70a 	.word	0x3c23d70a
 8001aa4:	3f7d70a4 	.word	0x3f7d70a4
 8001aa8:	080027b0 	.word	0x080027b0
 8001aac:	447a0000 	.word	0x447a0000

08001ab0 <_ZN5CDemo4initEv>:
 8001ab0:	4770      	bx	lr
	...

08001ab4 <_ZN5CDemo10blink_taskEv>:
 8001ab4:	b508      	push	{r3, lr}
 8001ab6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001aba:	480d      	ldr	r0, [pc, #52]	; (8001af0 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001abc:	f7ff fc34 	bl	8001328 <_ZN5CGPIO7gpio_onEm>
 8001ac0:	480c      	ldr	r0, [pc, #48]	; (8001af4 <_ZN5CDemo10blink_taskEv+0x40>)
 8001ac2:	f7fe fd91 	bl	80005e8 <_ZN6CTimer8get_timeEv>
 8001ac6:	490c      	ldr	r1, [pc, #48]	; (8001af8 <_ZN5CDemo10blink_taskEv+0x44>)
 8001ac8:	4602      	mov	r2, r0
 8001aca:	4809      	ldr	r0, [pc, #36]	; (8001af0 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001acc:	f7ff fd8a 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001ad0:	4808      	ldr	r0, [pc, #32]	; (8001af4 <_ZN5CDemo10blink_taskEv+0x40>)
 8001ad2:	210a      	movs	r1, #10
 8001ad4:	f7fe fd96 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001ad8:	4805      	ldr	r0, [pc, #20]	; (8001af0 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001ada:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ade:	f7ff fc31 	bl	8001344 <_ZN5CGPIO8gpio_offEm>
 8001ae2:	4804      	ldr	r0, [pc, #16]	; (8001af4 <_ZN5CDemo10blink_taskEv+0x40>)
 8001ae4:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001ae8:	f7fe fd8c 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001aec:	e7e3      	b.n	8001ab6 <_ZN5CDemo10blink_taskEv+0x2>
 8001aee:	bf00      	nop
 8001af0:	20000030 	.word	0x20000030
 8001af4:	2000013c 	.word	0x2000013c
 8001af8:	08002798 	.word	0x08002798

08001afc <_ZN5CDemo24basic_line_follower_taskEv>:
 8001afc:	b510      	push	{r4, lr}
 8001afe:	b08e      	sub	sp, #56	; 0x38
 8001b00:	4668      	mov	r0, sp
 8001b02:	f7fe fbb5 	bl	8000270 <_ZN13CLinePositionC1Ev>
 8001b06:	a806      	add	r0, sp, #24
 8001b08:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8001b0c:	eddf 0a38 	vldr	s1, [pc, #224]	; 8001bf0 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001b10:	eddf 1a38 	vldr	s3, [pc, #224]	; 8001bf4 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8001b14:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 8001b18:	f7fe fc70 	bl	80003fc <_ZN4CPIDC1Effff>
 8001b1c:	4836      	ldr	r0, [pc, #216]	; (8001bf8 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001b1e:	2100      	movs	r1, #0
 8001b20:	220a      	movs	r2, #10
 8001b22:	f7fe fd81 	bl	8000628 <_ZN6CTimer22event_timer_set_periodEhm>
 8001b26:	4834      	ldr	r0, [pc, #208]	; (8001bf8 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001b28:	2100      	movs	r1, #0
 8001b2a:	f7fe fd91 	bl	8000650 <_ZN6CTimer17event_timer_checkEh>
 8001b2e:	2800      	cmp	r0, #0
 8001b30:	d0f9      	beq.n	8001b26 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001b32:	2100      	movs	r1, #0
 8001b34:	4831      	ldr	r0, [pc, #196]	; (8001bfc <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001b36:	f7fe fd99 	bl	800066c <_ZN4CRGB8rgb_readEh>
 8001b3a:	4830      	ldr	r0, [pc, #192]	; (8001bfc <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001b3c:	f7fe ff32 	bl	80009a4 <_ZN4CRGB14get_rgb_resultEv>
 8001b40:	4601      	mov	r1, r0
 8001b42:	4668      	mov	r0, sp
 8001b44:	f7fe fb9e 	bl	8000284 <_ZN13CLinePosition7processEP10sRGBResult>
 8001b48:	4668      	mov	r0, sp
 8001b4a:	f7fe fc33 	bl	80003b4 <_ZN13CLinePosition7on_lineEv>
 8001b4e:	4604      	mov	r4, r0
 8001b50:	4668      	mov	r0, sp
 8001b52:	f7fe fc31 	bl	80003b8 <_ZN13CLinePosition17get_line_positionEv>
 8001b56:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8001c00 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 8001b5a:	4828      	ldr	r0, [pc, #160]	; (8001bfc <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001b5c:	4929      	ldr	r1, [pc, #164]	; (8001c04 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001b5e:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001b62:	4622      	mov	r2, r4
 8001b64:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001b68:	ee17 3a90 	vmov	r3, s15
 8001b6c:	f7ff fd3a 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001b70:	4668      	mov	r0, sp
 8001b72:	f7fe fc1f 	bl	80003b4 <_ZN13CLinePosition7on_lineEv>
 8001b76:	4604      	mov	r4, r0
 8001b78:	b1d0      	cbz	r0, 8001bb0 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 8001b7a:	4668      	mov	r0, sp
 8001b7c:	f7fe fc1c 	bl	80003b8 <_ZN13CLinePosition17get_line_positionEv>
 8001b80:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8001bf0 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001b84:	a806      	add	r0, sp, #24
 8001b86:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8001b8a:	f7fe fc3d 	bl	8000408 <_ZN4CPID7processEf>
 8001b8e:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001b92:	481d      	ldr	r0, [pc, #116]	; (8001c08 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001b94:	ee17 4a90 	vmov	r4, s15
 8001b98:	2100      	movs	r1, #0
 8001b9a:	f104 020b 	add.w	r2, r4, #11
 8001b9e:	f7fe ff99 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001ba2:	4819      	ldr	r0, [pc, #100]	; (8001c08 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001ba4:	2101      	movs	r1, #1
 8001ba6:	f1c4 020b 	rsb	r2, r4, #11
 8001baa:	f7fe ff93 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001bae:	e7ba      	b.n	8001b26 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001bb0:	4621      	mov	r1, r4
 8001bb2:	4815      	ldr	r0, [pc, #84]	; (8001c08 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001bb4:	f06f 020a 	mvn.w	r2, #10
 8001bb8:	f7fe ff8c 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001bbc:	f06f 020a 	mvn.w	r2, #10
 8001bc0:	4811      	ldr	r0, [pc, #68]	; (8001c08 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001bc2:	2101      	movs	r1, #1
 8001bc4:	f7fe ff86 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001bc8:	480b      	ldr	r0, [pc, #44]	; (8001bf8 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001bca:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001bce:	f7fe fd19 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001bd2:	4621      	mov	r1, r4
 8001bd4:	4622      	mov	r2, r4
 8001bd6:	480c      	ldr	r0, [pc, #48]	; (8001c08 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001bd8:	f7fe ff7c 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001bdc:	480a      	ldr	r0, [pc, #40]	; (8001c08 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001bde:	2101      	movs	r1, #1
 8001be0:	4622      	mov	r2, r4
 8001be2:	f7fe ff77 	bl	8000ad4 <_ZN6CMotor9set_motorEml>
 8001be6:	4804      	ldr	r0, [pc, #16]	; (8001bf8 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001be8:	2164      	movs	r1, #100	; 0x64
 8001bea:	f7fe fd0b 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001bee:	e79a      	b.n	8001b26 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001bf0:	00000000 	.word	0x00000000
 8001bf4:	42300000 	.word	0x42300000
 8001bf8:	2000013c 	.word	0x2000013c
 8001bfc:	20000030 	.word	0x20000030
 8001c00:	447a0000 	.word	0x447a0000
 8001c04:	080027ad 	.word	0x080027ad
 8001c08:	200000f4 	.word	0x200000f4

08001c0c <_ZN5CDemo3runEj>:
 8001c0c:	2902      	cmp	r1, #2
 8001c0e:	b508      	push	{r3, lr}
 8001c10:	d005      	beq.n	8001c1e <_ZN5CDemo3runEj+0x12>
 8001c12:	2903      	cmp	r1, #3
 8001c14:	d005      	beq.n	8001c22 <_ZN5CDemo3runEj+0x16>
 8001c16:	2901      	cmp	r1, #1
 8001c18:	d108      	bne.n	8001c2c <_ZN5CDemo3runEj+0x20>
 8001c1a:	f7ff ff4b 	bl	8001ab4 <_ZN5CDemo10blink_taskEv>
 8001c1e:	f7ff ff6d 	bl	8001afc <_ZN5CDemo24basic_line_follower_taskEv>
 8001c22:	4803      	ldr	r0, [pc, #12]	; (8001c30 <_ZN5CDemo3runEj+0x24>)
 8001c24:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001c28:	f7ff bd8e 	b.w	8001748 <_ZN21CLearningLineFollower3runEv>
 8001c2c:	bd08      	pop	{r3, pc}
 8001c2e:	bf00      	nop
 8001c30:	20000184 	.word	0x20000184
 8001c34:	00000000 	.word	0x00000000

08001c38 <main>:
 8001c38:	b530      	push	{r4, r5, lr}
 8001c3a:	b08f      	sub	sp, #60	; 0x3c
 8001c3c:	f000 fc10 	bl	8002460 <sytem_clock_init>
 8001c40:	4863      	ldr	r0, [pc, #396]	; (8001dd0 <main+0x198>)
 8001c42:	f7fe fad3 	bl	80001ec <_ZN7CKodama4initEv>
 8001c46:	210a      	movs	r1, #10
 8001c48:	4861      	ldr	r0, [pc, #388]	; (8001dd0 <main+0x198>)
 8001c4a:	f7fe fb0e 	bl	800026a <_ZN7CKodama6set_dtEl>
 8001c4e:	a548      	add	r5, pc, #288	; (adr r5, 8001d70 <main+0x138>)
 8001c50:	e9d5 4500 	ldrd	r4, r5, [r5]
 8001c54:	485e      	ldr	r0, [pc, #376]	; (8001dd0 <main+0x198>)
 8001c56:	f7fe faeb 	bl	8000230 <_ZN7CKodama5sleepEv>
 8001c5a:	2204      	movs	r2, #4
 8001c5c:	2308      	movs	r3, #8
 8001c5e:	9300      	str	r3, [sp, #0]
 8001c60:	485b      	ldr	r0, [pc, #364]	; (8001dd0 <main+0x198>)
 8001c62:	495c      	ldr	r1, [pc, #368]	; (8001dd4 <main+0x19c>)
 8001c64:	4613      	mov	r3, r2
 8001c66:	f7ff fcbd 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001c6a:	4859      	ldr	r0, [pc, #356]	; (8001dd0 <main+0x198>)
 8001c6c:	495a      	ldr	r1, [pc, #360]	; (8001dd8 <main+0x1a0>)
 8001c6e:	4622      	mov	r2, r4
 8001c70:	462b      	mov	r3, r5
 8001c72:	f7ff fcb7 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001c76:	4b59      	ldr	r3, [pc, #356]	; (8001ddc <main+0x1a4>)
 8001c78:	4855      	ldr	r0, [pc, #340]	; (8001dd0 <main+0x198>)
 8001c7a:	4959      	ldr	r1, [pc, #356]	; (8001de0 <main+0x1a8>)
 8001c7c:	2200      	movs	r2, #0
 8001c7e:	e9cd 2300 	strd	r2, r3, [sp]
 8001c82:	a33d      	add	r3, pc, #244	; (adr r3, 8001d78 <main+0x140>)
 8001c84:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001c88:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8001c8c:	a33c      	add	r3, pc, #240	; (adr r3, 8001d80 <main+0x148>)
 8001c8e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001c92:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001c96:	a33c      	add	r3, pc, #240	; (adr r3, 8001d88 <main+0x150>)
 8001c98:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001c9c:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8001ca0:	a33b      	add	r3, pc, #236	; (adr r3, 8001d90 <main+0x158>)
 8001ca2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001ca6:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8001caa:	a33b      	add	r3, pc, #236	; (adr r3, 8001d98 <main+0x160>)
 8001cac:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001cb0:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8001cb4:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8001cb8:	2200      	movs	r2, #0
 8001cba:	2300      	movs	r3, #0
 8001cbc:	f7ff fc92 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001cc0:	4b48      	ldr	r3, [pc, #288]	; (8001de4 <main+0x1ac>)
 8001cc2:	4843      	ldr	r0, [pc, #268]	; (8001dd0 <main+0x198>)
 8001cc4:	4946      	ldr	r1, [pc, #280]	; (8001de0 <main+0x1a8>)
 8001cc6:	2200      	movs	r2, #0
 8001cc8:	e9cd 2300 	strd	r2, r3, [sp]
 8001ccc:	a334      	add	r3, pc, #208	; (adr r3, 8001da0 <main+0x168>)
 8001cce:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001cd2:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8001cd6:	a334      	add	r3, pc, #208	; (adr r3, 8001da8 <main+0x170>)
 8001cd8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001cdc:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8001ce0:	a333      	add	r3, pc, #204	; (adr r3, 8001db0 <main+0x178>)
 8001ce2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001ce6:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001cea:	a333      	add	r3, pc, #204	; (adr r3, 8001db8 <main+0x180>)
 8001cec:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001cf0:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8001cf4:	a332      	add	r3, pc, #200	; (adr r3, 8001dc0 <main+0x188>)
 8001cf6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001cfa:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8001cfe:	a332      	add	r3, pc, #200	; (adr r3, 8001dc8 <main+0x190>)
 8001d00:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001d04:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8001d08:	2200      	movs	r2, #0
 8001d0a:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
 8001d0e:	f7ff fc69 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001d12:	482f      	ldr	r0, [pc, #188]	; (8001dd0 <main+0x198>)
 8001d14:	f44f 7100 	mov.w	r1, #512	; 0x200
 8001d18:	f7ff fb22 	bl	8001360 <_ZN5CGPIO7gpio_inEm>
 8001d1c:	b148      	cbz	r0, 8001d32 <main+0xfa>
 8001d1e:	482c      	ldr	r0, [pc, #176]	; (8001dd0 <main+0x198>)
 8001d20:	f7fe fa91 	bl	8000246 <_ZN7CKodama6wakeupEv>
 8001d24:	4830      	ldr	r0, [pc, #192]	; (8001de8 <main+0x1b0>)
 8001d26:	f7ff fec3 	bl	8001ab0 <_ZN5CDemo4initEv>
 8001d2a:	482f      	ldr	r0, [pc, #188]	; (8001de8 <main+0x1b0>)
 8001d2c:	2102      	movs	r1, #2
 8001d2e:	f7ff ff6d 	bl	8001c0c <_ZN5CDemo3runEj>
 8001d32:	4827      	ldr	r0, [pc, #156]	; (8001dd0 <main+0x198>)
 8001d34:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d38:	f7ff faf6 	bl	8001328 <_ZN5CGPIO7gpio_onEm>
 8001d3c:	482b      	ldr	r0, [pc, #172]	; (8001dec <main+0x1b4>)
 8001d3e:	210a      	movs	r1, #10
 8001d40:	f7fe fc60 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001d44:	4822      	ldr	r0, [pc, #136]	; (8001dd0 <main+0x198>)
 8001d46:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d4a:	f7ff fafb 	bl	8001344 <_ZN5CGPIO8gpio_offEm>
 8001d4e:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001d52:	4826      	ldr	r0, [pc, #152]	; (8001dec <main+0x1b4>)
 8001d54:	f7fe fc56 	bl	8000604 <_ZN6CTimer8delay_msEm>
 8001d58:	4824      	ldr	r0, [pc, #144]	; (8001dec <main+0x1b4>)
 8001d5a:	f7fe fc45 	bl	80005e8 <_ZN6CTimer8get_timeEv>
 8001d5e:	4924      	ldr	r1, [pc, #144]	; (8001df0 <main+0x1b8>)
 8001d60:	4602      	mov	r2, r0
 8001d62:	481b      	ldr	r0, [pc, #108]	; (8001dd0 <main+0x198>)
 8001d64:	f7ff fc3e 	bl	80015e4 <_ZN9CTerminal6printfEPKcz>
 8001d68:	e7d3      	b.n	8001d12 <main+0xda>
 8001d6a:	bf00      	nop
 8001d6c:	f3af 8000 	nop.w
 8001d70:	60000000 	.word	0x60000000
 8001d74:	400921fb 	.word	0x400921fb
 8001d78:	00000000 	.word	0x00000000
 8001d7c:	3fbf9ad0 	.word	0x3fbf9ad0
 8001d80:	20000000 	.word	0x20000000
 8001d84:	40406251 	.word	0x40406251
 8001d88:	60000000 	.word	0x60000000
 8001d8c:	40934a45 	.word	0x40934a45
 8001d90:	c0000000 	.word	0xc0000000
 8001d94:	4016cccc 	.word	0x4016cccc
 8001d98:	a0000000 	.word	0xa0000000
 8001d9c:	4016e147 	.word	0x4016e147
 8001da0:	00000000 	.word	0x00000000
 8001da4:	bfbf9ad0 	.word	0xbfbf9ad0
 8001da8:	60000000 	.word	0x60000000
 8001dac:	c00921fb 	.word	0xc00921fb
 8001db0:	20000000 	.word	0x20000000
 8001db4:	c0406251 	.word	0xc0406251
 8001db8:	60000000 	.word	0x60000000
 8001dbc:	c0934a45 	.word	0xc0934a45
 8001dc0:	c0000000 	.word	0xc0000000
 8001dc4:	c016cccc 	.word	0xc016cccc
 8001dc8:	a0000000 	.word	0xa0000000
 8001dcc:	c016e147 	.word	0xc016e147
 8001dd0:	20000030 	.word	0x20000030
 8001dd4:	080027b5 	.word	0x080027b5
 8001dd8:	080027d5 	.word	0x080027d5
 8001ddc:	3ff00000 	.word	0x3ff00000
 8001de0:	080027e7 	.word	0x080027e7
 8001de4:	bff00000 	.word	0xbff00000
 8001de8:	20000568 	.word	0x20000568
 8001dec:	2000013c 	.word	0x2000013c
 8001df0:	08002800 	.word	0x08002800

08001df4 <RCC_GetClocksFreq>:
 8001df4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001df8:	4f9b      	ldr	r7, [pc, #620]	; (8002068 <RCC_GetClocksFreq+0x274>)
 8001dfa:	687b      	ldr	r3, [r7, #4]
 8001dfc:	f003 030c 	and.w	r3, r3, #12
 8001e00:	2b04      	cmp	r3, #4
 8001e02:	d005      	beq.n	8001e10 <RCC_GetClocksFreq+0x1c>
 8001e04:	2b08      	cmp	r3, #8
 8001e06:	d006      	beq.n	8001e16 <RCC_GetClocksFreq+0x22>
 8001e08:	4a98      	ldr	r2, [pc, #608]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001e0a:	6002      	str	r2, [r0, #0]
 8001e0c:	b9b3      	cbnz	r3, 8001e3c <RCC_GetClocksFreq+0x48>
 8001e0e:	e016      	b.n	8001e3e <RCC_GetClocksFreq+0x4a>
 8001e10:	4b96      	ldr	r3, [pc, #600]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001e12:	6003      	str	r3, [r0, #0]
 8001e14:	e012      	b.n	8001e3c <RCC_GetClocksFreq+0x48>
 8001e16:	687b      	ldr	r3, [r7, #4]
 8001e18:	6879      	ldr	r1, [r7, #4]
 8001e1a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001e1e:	1c9a      	adds	r2, r3, #2
 8001e20:	03cb      	lsls	r3, r1, #15
 8001e22:	bf49      	itett	mi
 8001e24:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001e26:	4b92      	ldrpl	r3, [pc, #584]	; (8002070 <RCC_GetClocksFreq+0x27c>)
 8001e28:	4990      	ldrmi	r1, [pc, #576]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001e2a:	f003 030f 	andmi.w	r3, r3, #15
 8001e2e:	bf44      	itt	mi
 8001e30:	3301      	addmi	r3, #1
 8001e32:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001e36:	4353      	muls	r3, r2
 8001e38:	6003      	str	r3, [r0, #0]
 8001e3a:	e000      	b.n	8001e3e <RCC_GetClocksFreq+0x4a>
 8001e3c:	2300      	movs	r3, #0
 8001e3e:	687a      	ldr	r2, [r7, #4]
 8001e40:	4e8c      	ldr	r6, [pc, #560]	; (8002074 <RCC_GetClocksFreq+0x280>)
 8001e42:	f8df c234 	ldr.w	ip, [pc, #564]	; 8002078 <RCC_GetClocksFreq+0x284>
 8001e46:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001e4a:	5cb4      	ldrb	r4, [r6, r2]
 8001e4c:	6802      	ldr	r2, [r0, #0]
 8001e4e:	b2e4      	uxtb	r4, r4
 8001e50:	fa22 f104 	lsr.w	r1, r2, r4
 8001e54:	6041      	str	r1, [r0, #4]
 8001e56:	687d      	ldr	r5, [r7, #4]
 8001e58:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001e5c:	5d75      	ldrb	r5, [r6, r5]
 8001e5e:	fa21 fe05 	lsr.w	lr, r1, r5
 8001e62:	f8c0 e008 	str.w	lr, [r0, #8]
 8001e66:	687d      	ldr	r5, [r7, #4]
 8001e68:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001e6c:	5d75      	ldrb	r5, [r6, r5]
 8001e6e:	b2ed      	uxtb	r5, r5
 8001e70:	40e9      	lsrs	r1, r5
 8001e72:	60c1      	str	r1, [r0, #12]
 8001e74:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001e76:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001e7a:	f008 060f 	and.w	r6, r8, #15
 8001e7e:	f018 0f10 	tst.w	r8, #16
 8001e82:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001e86:	46e0      	mov	r8, ip
 8001e88:	b2b6      	uxth	r6, r6
 8001e8a:	d004      	beq.n	8001e96 <RCC_GetClocksFreq+0xa2>
 8001e8c:	b11e      	cbz	r6, 8001e96 <RCC_GetClocksFreq+0xa2>
 8001e8e:	fbb3 f6f6 	udiv	r6, r3, r6
 8001e92:	6106      	str	r6, [r0, #16]
 8001e94:	e000      	b.n	8001e98 <RCC_GetClocksFreq+0xa4>
 8001e96:	6102      	str	r2, [r0, #16]
 8001e98:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001e9a:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001e9e:	f00c 060f 	and.w	r6, ip, #15
 8001ea2:	f01c 0f10 	tst.w	ip, #16
 8001ea6:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001eaa:	b2b6      	uxth	r6, r6
 8001eac:	d004      	beq.n	8001eb8 <RCC_GetClocksFreq+0xc4>
 8001eae:	b11e      	cbz	r6, 8001eb8 <RCC_GetClocksFreq+0xc4>
 8001eb0:	fbb3 f6f6 	udiv	r6, r3, r6
 8001eb4:	6146      	str	r6, [r0, #20]
 8001eb6:	e000      	b.n	8001eba <RCC_GetClocksFreq+0xc6>
 8001eb8:	6142      	str	r2, [r0, #20]
 8001eba:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ebc:	06f6      	lsls	r6, r6, #27
 8001ebe:	bf5a      	itte	pl
 8001ec0:	4e6a      	ldrpl	r6, [pc, #424]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001ec2:	6186      	strpl	r6, [r0, #24]
 8001ec4:	6182      	strmi	r2, [r0, #24]
 8001ec6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ec8:	06b6      	lsls	r6, r6, #26
 8001eca:	bf5a      	itte	pl
 8001ecc:	4e67      	ldrpl	r6, [pc, #412]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001ece:	61c6      	strpl	r6, [r0, #28]
 8001ed0:	61c2      	strmi	r2, [r0, #28]
 8001ed2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ed4:	0676      	lsls	r6, r6, #25
 8001ed6:	bf5a      	itte	pl
 8001ed8:	4e64      	ldrpl	r6, [pc, #400]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001eda:	6206      	strpl	r6, [r0, #32]
 8001edc:	6202      	strmi	r2, [r0, #32]
 8001ede:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ee0:	05f6      	lsls	r6, r6, #23
 8001ee2:	d506      	bpl.n	8001ef2 <RCC_GetClocksFreq+0xfe>
 8001ee4:	429a      	cmp	r2, r3
 8001ee6:	d104      	bne.n	8001ef2 <RCC_GetClocksFreq+0xfe>
 8001ee8:	42a5      	cmp	r5, r4
 8001eea:	d102      	bne.n	8001ef2 <RCC_GetClocksFreq+0xfe>
 8001eec:	0056      	lsls	r6, r2, #1
 8001eee:	6246      	str	r6, [r0, #36]	; 0x24
 8001ef0:	e000      	b.n	8001ef4 <RCC_GetClocksFreq+0x100>
 8001ef2:	6241      	str	r1, [r0, #36]	; 0x24
 8001ef4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ef6:	04f6      	lsls	r6, r6, #19
 8001ef8:	d506      	bpl.n	8001f08 <RCC_GetClocksFreq+0x114>
 8001efa:	429a      	cmp	r2, r3
 8001efc:	d104      	bne.n	8001f08 <RCC_GetClocksFreq+0x114>
 8001efe:	42a5      	cmp	r5, r4
 8001f00:	d102      	bne.n	8001f08 <RCC_GetClocksFreq+0x114>
 8001f02:	0056      	lsls	r6, r2, #1
 8001f04:	6286      	str	r6, [r0, #40]	; 0x28
 8001f06:	e000      	b.n	8001f0a <RCC_GetClocksFreq+0x116>
 8001f08:	6281      	str	r1, [r0, #40]	; 0x28
 8001f0a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f0c:	05b6      	lsls	r6, r6, #22
 8001f0e:	d506      	bpl.n	8001f1e <RCC_GetClocksFreq+0x12a>
 8001f10:	429a      	cmp	r2, r3
 8001f12:	d104      	bne.n	8001f1e <RCC_GetClocksFreq+0x12a>
 8001f14:	42a5      	cmp	r5, r4
 8001f16:	d102      	bne.n	8001f1e <RCC_GetClocksFreq+0x12a>
 8001f18:	0056      	lsls	r6, r2, #1
 8001f1a:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001f1c:	e000      	b.n	8001f20 <RCC_GetClocksFreq+0x12c>
 8001f1e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001f20:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f22:	0576      	lsls	r6, r6, #21
 8001f24:	d506      	bpl.n	8001f34 <RCC_GetClocksFreq+0x140>
 8001f26:	429a      	cmp	r2, r3
 8001f28:	d104      	bne.n	8001f34 <RCC_GetClocksFreq+0x140>
 8001f2a:	42a5      	cmp	r5, r4
 8001f2c:	d102      	bne.n	8001f34 <RCC_GetClocksFreq+0x140>
 8001f2e:	0056      	lsls	r6, r2, #1
 8001f30:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001f32:	e000      	b.n	8001f36 <RCC_GetClocksFreq+0x142>
 8001f34:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001f36:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f38:	0536      	lsls	r6, r6, #20
 8001f3a:	d506      	bpl.n	8001f4a <RCC_GetClocksFreq+0x156>
 8001f3c:	429a      	cmp	r2, r3
 8001f3e:	d104      	bne.n	8001f4a <RCC_GetClocksFreq+0x156>
 8001f40:	42a5      	cmp	r5, r4
 8001f42:	d102      	bne.n	8001f4a <RCC_GetClocksFreq+0x156>
 8001f44:	0056      	lsls	r6, r2, #1
 8001f46:	6506      	str	r6, [r0, #80]	; 0x50
 8001f48:	e000      	b.n	8001f4c <RCC_GetClocksFreq+0x158>
 8001f4a:	6501      	str	r1, [r0, #80]	; 0x50
 8001f4c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f4e:	04b6      	lsls	r6, r6, #18
 8001f50:	d506      	bpl.n	8001f60 <RCC_GetClocksFreq+0x16c>
 8001f52:	429a      	cmp	r2, r3
 8001f54:	d104      	bne.n	8001f60 <RCC_GetClocksFreq+0x16c>
 8001f56:	42a5      	cmp	r5, r4
 8001f58:	d102      	bne.n	8001f60 <RCC_GetClocksFreq+0x16c>
 8001f5a:	0056      	lsls	r6, r2, #1
 8001f5c:	6546      	str	r6, [r0, #84]	; 0x54
 8001f5e:	e000      	b.n	8001f62 <RCC_GetClocksFreq+0x16e>
 8001f60:	6501      	str	r1, [r0, #80]	; 0x50
 8001f62:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001f64:	0436      	lsls	r6, r6, #16
 8001f66:	d506      	bpl.n	8001f76 <RCC_GetClocksFreq+0x182>
 8001f68:	429a      	cmp	r2, r3
 8001f6a:	d104      	bne.n	8001f76 <RCC_GetClocksFreq+0x182>
 8001f6c:	42a5      	cmp	r5, r4
 8001f6e:	d102      	bne.n	8001f76 <RCC_GetClocksFreq+0x182>
 8001f70:	0053      	lsls	r3, r2, #1
 8001f72:	6583      	str	r3, [r0, #88]	; 0x58
 8001f74:	e000      	b.n	8001f78 <RCC_GetClocksFreq+0x184>
 8001f76:	6581      	str	r1, [r0, #88]	; 0x58
 8001f78:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001f7a:	4b3b      	ldr	r3, [pc, #236]	; (8002068 <RCC_GetClocksFreq+0x274>)
 8001f7c:	07a4      	lsls	r4, r4, #30
 8001f7e:	d101      	bne.n	8001f84 <RCC_GetClocksFreq+0x190>
 8001f80:	6381      	str	r1, [r0, #56]	; 0x38
 8001f82:	e015      	b.n	8001fb0 <RCC_GetClocksFreq+0x1bc>
 8001f84:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f86:	f001 0103 	and.w	r1, r1, #3
 8001f8a:	2901      	cmp	r1, #1
 8001f8c:	d101      	bne.n	8001f92 <RCC_GetClocksFreq+0x19e>
 8001f8e:	6382      	str	r2, [r0, #56]	; 0x38
 8001f90:	e00e      	b.n	8001fb0 <RCC_GetClocksFreq+0x1bc>
 8001f92:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f94:	f001 0103 	and.w	r1, r1, #3
 8001f98:	2902      	cmp	r1, #2
 8001f9a:	d102      	bne.n	8001fa2 <RCC_GetClocksFreq+0x1ae>
 8001f9c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001fa0:	e005      	b.n	8001fae <RCC_GetClocksFreq+0x1ba>
 8001fa2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fa4:	f003 0303 	and.w	r3, r3, #3
 8001fa8:	2b03      	cmp	r3, #3
 8001faa:	d101      	bne.n	8001fb0 <RCC_GetClocksFreq+0x1bc>
 8001fac:	4b2f      	ldr	r3, [pc, #188]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001fae:	6383      	str	r3, [r0, #56]	; 0x38
 8001fb0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001fb2:	4b2d      	ldr	r3, [pc, #180]	; (8002068 <RCC_GetClocksFreq+0x274>)
 8001fb4:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001fb8:	d102      	bne.n	8001fc0 <RCC_GetClocksFreq+0x1cc>
 8001fba:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001fbe:	e018      	b.n	8001ff2 <RCC_GetClocksFreq+0x1fe>
 8001fc0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fc2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001fc6:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001fca:	d101      	bne.n	8001fd0 <RCC_GetClocksFreq+0x1dc>
 8001fcc:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001fce:	e010      	b.n	8001ff2 <RCC_GetClocksFreq+0x1fe>
 8001fd0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fd2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001fd6:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001fda:	d102      	bne.n	8001fe2 <RCC_GetClocksFreq+0x1ee>
 8001fdc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001fe0:	e006      	b.n	8001ff0 <RCC_GetClocksFreq+0x1fc>
 8001fe2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fe4:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001fe8:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001fec:	d101      	bne.n	8001ff2 <RCC_GetClocksFreq+0x1fe>
 8001fee:	4b1f      	ldr	r3, [pc, #124]	; (800206c <RCC_GetClocksFreq+0x278>)
 8001ff0:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001ff2:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001ff4:	4b1c      	ldr	r3, [pc, #112]	; (8002068 <RCC_GetClocksFreq+0x274>)
 8001ff6:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001ffa:	d102      	bne.n	8002002 <RCC_GetClocksFreq+0x20e>
 8001ffc:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8002000:	e018      	b.n	8002034 <RCC_GetClocksFreq+0x240>
 8002002:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002004:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002008:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 800200c:	d101      	bne.n	8002012 <RCC_GetClocksFreq+0x21e>
 800200e:	6402      	str	r2, [r0, #64]	; 0x40
 8002010:	e010      	b.n	8002034 <RCC_GetClocksFreq+0x240>
 8002012:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002014:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002018:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 800201c:	d102      	bne.n	8002024 <RCC_GetClocksFreq+0x230>
 800201e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002022:	e006      	b.n	8002032 <RCC_GetClocksFreq+0x23e>
 8002024:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002026:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800202a:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 800202e:	d101      	bne.n	8002034 <RCC_GetClocksFreq+0x240>
 8002030:	4b0e      	ldr	r3, [pc, #56]	; (800206c <RCC_GetClocksFreq+0x278>)
 8002032:	6403      	str	r3, [r0, #64]	; 0x40
 8002034:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002036:	4b0c      	ldr	r3, [pc, #48]	; (8002068 <RCC_GetClocksFreq+0x274>)
 8002038:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 800203c:	d102      	bne.n	8002044 <RCC_GetClocksFreq+0x250>
 800203e:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8002042:	e023      	b.n	800208c <RCC_GetClocksFreq+0x298>
 8002044:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002046:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800204a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800204e:	d101      	bne.n	8002054 <RCC_GetClocksFreq+0x260>
 8002050:	6442      	str	r2, [r0, #68]	; 0x44
 8002052:	e01b      	b.n	800208c <RCC_GetClocksFreq+0x298>
 8002054:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002056:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800205a:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800205e:	d10d      	bne.n	800207c <RCC_GetClocksFreq+0x288>
 8002060:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002064:	e011      	b.n	800208a <RCC_GetClocksFreq+0x296>
 8002066:	bf00      	nop
 8002068:	40021000 	.word	0x40021000
 800206c:	007a1200 	.word	0x007a1200
 8002070:	003d0900 	.word	0x003d0900
 8002074:	20000020 	.word	0x20000020
 8002078:	20000000 	.word	0x20000000
 800207c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800207e:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8002082:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8002086:	d101      	bne.n	800208c <RCC_GetClocksFreq+0x298>
 8002088:	4b13      	ldr	r3, [pc, #76]	; (80020d8 <RCC_GetClocksFreq+0x2e4>)
 800208a:	6443      	str	r3, [r0, #68]	; 0x44
 800208c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800208e:	4b13      	ldr	r3, [pc, #76]	; (80020dc <RCC_GetClocksFreq+0x2e8>)
 8002090:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8002094:	d103      	bne.n	800209e <RCC_GetClocksFreq+0x2aa>
 8002096:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 800209a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800209e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80020a0:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80020a4:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80020a8:	d102      	bne.n	80020b0 <RCC_GetClocksFreq+0x2bc>
 80020aa:	6482      	str	r2, [r0, #72]	; 0x48
 80020ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80020b0:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80020b2:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80020b6:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80020ba:	d102      	bne.n	80020c2 <RCC_GetClocksFreq+0x2ce>
 80020bc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80020c0:	e006      	b.n	80020d0 <RCC_GetClocksFreq+0x2dc>
 80020c2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80020c4:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80020c8:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80020cc:	d101      	bne.n	80020d2 <RCC_GetClocksFreq+0x2de>
 80020ce:	4b02      	ldr	r3, [pc, #8]	; (80020d8 <RCC_GetClocksFreq+0x2e4>)
 80020d0:	6483      	str	r3, [r0, #72]	; 0x48
 80020d2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80020d6:	bf00      	nop
 80020d8:	007a1200 	.word	0x007a1200
 80020dc:	40021000 	.word	0x40021000

080020e0 <RCC_AHBPeriphClockCmd>:
 80020e0:	bf00      	nop
 80020e2:	bf00      	nop
 80020e4:	4b04      	ldr	r3, [pc, #16]	; (80020f8 <RCC_AHBPeriphClockCmd+0x18>)
 80020e6:	695a      	ldr	r2, [r3, #20]
 80020e8:	b109      	cbz	r1, 80020ee <RCC_AHBPeriphClockCmd+0xe>
 80020ea:	4310      	orrs	r0, r2
 80020ec:	e001      	b.n	80020f2 <RCC_AHBPeriphClockCmd+0x12>
 80020ee:	ea22 0000 	bic.w	r0, r2, r0
 80020f2:	6158      	str	r0, [r3, #20]
 80020f4:	4770      	bx	lr
 80020f6:	bf00      	nop
 80020f8:	40021000 	.word	0x40021000

080020fc <RCC_APB2PeriphClockCmd>:
 80020fc:	bf00      	nop
 80020fe:	bf00      	nop
 8002100:	4b04      	ldr	r3, [pc, #16]	; (8002114 <RCC_APB2PeriphClockCmd+0x18>)
 8002102:	699a      	ldr	r2, [r3, #24]
 8002104:	b109      	cbz	r1, 800210a <RCC_APB2PeriphClockCmd+0xe>
 8002106:	4310      	orrs	r0, r2
 8002108:	e001      	b.n	800210e <RCC_APB2PeriphClockCmd+0x12>
 800210a:	ea22 0000 	bic.w	r0, r2, r0
 800210e:	6198      	str	r0, [r3, #24]
 8002110:	4770      	bx	lr
 8002112:	bf00      	nop
 8002114:	40021000 	.word	0x40021000

08002118 <RCC_APB1PeriphClockCmd>:
 8002118:	bf00      	nop
 800211a:	bf00      	nop
 800211c:	4b04      	ldr	r3, [pc, #16]	; (8002130 <RCC_APB1PeriphClockCmd+0x18>)
 800211e:	69da      	ldr	r2, [r3, #28]
 8002120:	b109      	cbz	r1, 8002126 <RCC_APB1PeriphClockCmd+0xe>
 8002122:	4310      	orrs	r0, r2
 8002124:	e001      	b.n	800212a <RCC_APB1PeriphClockCmd+0x12>
 8002126:	ea22 0000 	bic.w	r0, r2, r0
 800212a:	61d8      	str	r0, [r3, #28]
 800212c:	4770      	bx	lr
 800212e:	bf00      	nop
 8002130:	40021000 	.word	0x40021000

08002134 <TIM_TimeBaseInit>:
 8002134:	bf00      	nop
 8002136:	bf00      	nop
 8002138:	bf00      	nop
 800213a:	4a24      	ldr	r2, [pc, #144]	; (80021cc <TIM_TimeBaseInit+0x98>)
 800213c:	8803      	ldrh	r3, [r0, #0]
 800213e:	4290      	cmp	r0, r2
 8002140:	b29b      	uxth	r3, r3
 8002142:	d012      	beq.n	800216a <TIM_TimeBaseInit+0x36>
 8002144:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002148:	4290      	cmp	r0, r2
 800214a:	d00e      	beq.n	800216a <TIM_TimeBaseInit+0x36>
 800214c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002150:	d00b      	beq.n	800216a <TIM_TimeBaseInit+0x36>
 8002152:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002156:	4290      	cmp	r0, r2
 8002158:	d007      	beq.n	800216a <TIM_TimeBaseInit+0x36>
 800215a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800215e:	4290      	cmp	r0, r2
 8002160:	d003      	beq.n	800216a <TIM_TimeBaseInit+0x36>
 8002162:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002166:	4290      	cmp	r0, r2
 8002168:	d103      	bne.n	8002172 <TIM_TimeBaseInit+0x3e>
 800216a:	884a      	ldrh	r2, [r1, #2]
 800216c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002170:	4313      	orrs	r3, r2
 8002172:	4a17      	ldr	r2, [pc, #92]	; (80021d0 <TIM_TimeBaseInit+0x9c>)
 8002174:	4290      	cmp	r0, r2
 8002176:	d008      	beq.n	800218a <TIM_TimeBaseInit+0x56>
 8002178:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800217c:	4290      	cmp	r0, r2
 800217e:	bf1f      	itttt	ne
 8002180:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002184:	890a      	ldrhne	r2, [r1, #8]
 8002186:	b29b      	uxthne	r3, r3
 8002188:	4313      	orrne	r3, r2
 800218a:	8003      	strh	r3, [r0, #0]
 800218c:	684b      	ldr	r3, [r1, #4]
 800218e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002190:	880b      	ldrh	r3, [r1, #0]
 8002192:	8503      	strh	r3, [r0, #40]	; 0x28
 8002194:	4b0d      	ldr	r3, [pc, #52]	; (80021cc <TIM_TimeBaseInit+0x98>)
 8002196:	4298      	cmp	r0, r3
 8002198:	d013      	beq.n	80021c2 <TIM_TimeBaseInit+0x8e>
 800219a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 800219e:	4298      	cmp	r0, r3
 80021a0:	d00f      	beq.n	80021c2 <TIM_TimeBaseInit+0x8e>
 80021a2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80021a6:	4298      	cmp	r0, r3
 80021a8:	d00b      	beq.n	80021c2 <TIM_TimeBaseInit+0x8e>
 80021aa:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80021ae:	4298      	cmp	r0, r3
 80021b0:	d007      	beq.n	80021c2 <TIM_TimeBaseInit+0x8e>
 80021b2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80021b6:	4298      	cmp	r0, r3
 80021b8:	d003      	beq.n	80021c2 <TIM_TimeBaseInit+0x8e>
 80021ba:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80021be:	4298      	cmp	r0, r3
 80021c0:	d101      	bne.n	80021c6 <TIM_TimeBaseInit+0x92>
 80021c2:	894b      	ldrh	r3, [r1, #10]
 80021c4:	8603      	strh	r3, [r0, #48]	; 0x30
 80021c6:	2301      	movs	r3, #1
 80021c8:	6143      	str	r3, [r0, #20]
 80021ca:	4770      	bx	lr
 80021cc:	40012c00 	.word	0x40012c00
 80021d0:	40001000 	.word	0x40001000

080021d4 <TIM_Cmd>:
 80021d4:	bf00      	nop
 80021d6:	bf00      	nop
 80021d8:	8803      	ldrh	r3, [r0, #0]
 80021da:	b119      	cbz	r1, 80021e4 <TIM_Cmd+0x10>
 80021dc:	b29b      	uxth	r3, r3
 80021de:	f043 0301 	orr.w	r3, r3, #1
 80021e2:	e003      	b.n	80021ec <TIM_Cmd+0x18>
 80021e4:	f023 0301 	bic.w	r3, r3, #1
 80021e8:	041b      	lsls	r3, r3, #16
 80021ea:	0c1b      	lsrs	r3, r3, #16
 80021ec:	8003      	strh	r3, [r0, #0]
 80021ee:	4770      	bx	lr

080021f0 <TIM_ClearITPendingBit>:
 80021f0:	bf00      	nop
 80021f2:	43c9      	mvns	r1, r1
 80021f4:	b289      	uxth	r1, r1
 80021f6:	6101      	str	r1, [r0, #16]
 80021f8:	4770      	bx	lr
	...

080021fc <USART_Init>:
 80021fc:	b530      	push	{r4, r5, lr}
 80021fe:	4604      	mov	r4, r0
 8002200:	b099      	sub	sp, #100	; 0x64
 8002202:	460d      	mov	r5, r1
 8002204:	bf00      	nop
 8002206:	bf00      	nop
 8002208:	bf00      	nop
 800220a:	bf00      	nop
 800220c:	bf00      	nop
 800220e:	bf00      	nop
 8002210:	bf00      	nop
 8002212:	6803      	ldr	r3, [r0, #0]
 8002214:	f023 0301 	bic.w	r3, r3, #1
 8002218:	6003      	str	r3, [r0, #0]
 800221a:	6843      	ldr	r3, [r0, #4]
 800221c:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002220:	688b      	ldr	r3, [r1, #8]
 8002222:	68c9      	ldr	r1, [r1, #12]
 8002224:	4313      	orrs	r3, r2
 8002226:	6043      	str	r3, [r0, #4]
 8002228:	686a      	ldr	r2, [r5, #4]
 800222a:	6803      	ldr	r3, [r0, #0]
 800222c:	4311      	orrs	r1, r2
 800222e:	692a      	ldr	r2, [r5, #16]
 8002230:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002234:	430a      	orrs	r2, r1
 8002236:	f023 030c 	bic.w	r3, r3, #12
 800223a:	4313      	orrs	r3, r2
 800223c:	6003      	str	r3, [r0, #0]
 800223e:	6883      	ldr	r3, [r0, #8]
 8002240:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002244:	696b      	ldr	r3, [r5, #20]
 8002246:	4313      	orrs	r3, r2
 8002248:	6083      	str	r3, [r0, #8]
 800224a:	a801      	add	r0, sp, #4
 800224c:	f7ff fdd2 	bl	8001df4 <RCC_GetClocksFreq>
 8002250:	4b17      	ldr	r3, [pc, #92]	; (80022b0 <USART_Init+0xb4>)
 8002252:	429c      	cmp	r4, r3
 8002254:	d101      	bne.n	800225a <USART_Init+0x5e>
 8002256:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002258:	e00e      	b.n	8002278 <USART_Init+0x7c>
 800225a:	4b16      	ldr	r3, [pc, #88]	; (80022b4 <USART_Init+0xb8>)
 800225c:	429c      	cmp	r4, r3
 800225e:	d101      	bne.n	8002264 <USART_Init+0x68>
 8002260:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002262:	e009      	b.n	8002278 <USART_Init+0x7c>
 8002264:	4b14      	ldr	r3, [pc, #80]	; (80022b8 <USART_Init+0xbc>)
 8002266:	429c      	cmp	r4, r3
 8002268:	d101      	bne.n	800226e <USART_Init+0x72>
 800226a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800226c:	e004      	b.n	8002278 <USART_Init+0x7c>
 800226e:	4b13      	ldr	r3, [pc, #76]	; (80022bc <USART_Init+0xc0>)
 8002270:	429c      	cmp	r4, r3
 8002272:	bf0c      	ite	eq
 8002274:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002276:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002278:	6822      	ldr	r2, [r4, #0]
 800227a:	6829      	ldr	r1, [r5, #0]
 800227c:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002280:	bf18      	it	ne
 8002282:	005b      	lslne	r3, r3, #1
 8002284:	fbb3 f2f1 	udiv	r2, r3, r1
 8002288:	fb01 3312 	mls	r3, r1, r2, r3
 800228c:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002290:	6823      	ldr	r3, [r4, #0]
 8002292:	bf28      	it	cs
 8002294:	3201      	addcs	r2, #1
 8002296:	041b      	lsls	r3, r3, #16
 8002298:	bf41      	itttt	mi
 800229a:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 800229e:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80022a2:	4013      	andmi	r3, r2
 80022a4:	ea41 0203 	orrmi.w	r2, r1, r3
 80022a8:	b292      	uxth	r2, r2
 80022aa:	81a2      	strh	r2, [r4, #12]
 80022ac:	b019      	add	sp, #100	; 0x64
 80022ae:	bd30      	pop	{r4, r5, pc}
 80022b0:	40013800 	.word	0x40013800
 80022b4:	40004400 	.word	0x40004400
 80022b8:	40004800 	.word	0x40004800
 80022bc:	40004c00 	.word	0x40004c00

080022c0 <USART_Cmd>:
 80022c0:	bf00      	nop
 80022c2:	bf00      	nop
 80022c4:	6803      	ldr	r3, [r0, #0]
 80022c6:	b111      	cbz	r1, 80022ce <USART_Cmd+0xe>
 80022c8:	f043 0301 	orr.w	r3, r3, #1
 80022cc:	e001      	b.n	80022d2 <USART_Cmd+0x12>
 80022ce:	f023 0301 	bic.w	r3, r3, #1
 80022d2:	6003      	str	r3, [r0, #0]
 80022d4:	4770      	bx	lr

080022d6 <USART_ReceiveData>:
 80022d6:	bf00      	nop
 80022d8:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80022da:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80022de:	4770      	bx	lr

080022e0 <USART_ITConfig>:
 80022e0:	b510      	push	{r4, lr}
 80022e2:	bf00      	nop
 80022e4:	bf00      	nop
 80022e6:	bf00      	nop
 80022e8:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80022ec:	2301      	movs	r3, #1
 80022ee:	b2c9      	uxtb	r1, r1
 80022f0:	2c02      	cmp	r4, #2
 80022f2:	fa03 f301 	lsl.w	r3, r3, r1
 80022f6:	d101      	bne.n	80022fc <USART_ITConfig+0x1c>
 80022f8:	3004      	adds	r0, #4
 80022fa:	e002      	b.n	8002302 <USART_ITConfig+0x22>
 80022fc:	2c03      	cmp	r4, #3
 80022fe:	bf08      	it	eq
 8002300:	3008      	addeq	r0, #8
 8002302:	b112      	cbz	r2, 800230a <USART_ITConfig+0x2a>
 8002304:	6802      	ldr	r2, [r0, #0]
 8002306:	4313      	orrs	r3, r2
 8002308:	e002      	b.n	8002310 <USART_ITConfig+0x30>
 800230a:	6802      	ldr	r2, [r0, #0]
 800230c:	ea22 0303 	bic.w	r3, r2, r3
 8002310:	6003      	str	r3, [r0, #0]
 8002312:	bd10      	pop	{r4, pc}

08002314 <USART_GetITStatus>:
 8002314:	b510      	push	{r4, lr}
 8002316:	bf00      	nop
 8002318:	bf00      	nop
 800231a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800231e:	b2cc      	uxtb	r4, r1
 8002320:	2301      	movs	r3, #1
 8002322:	2a01      	cmp	r2, #1
 8002324:	fa03 f304 	lsl.w	r3, r3, r4
 8002328:	d101      	bne.n	800232e <USART_GetITStatus+0x1a>
 800232a:	6802      	ldr	r2, [r0, #0]
 800232c:	e003      	b.n	8002336 <USART_GetITStatus+0x22>
 800232e:	2a02      	cmp	r2, #2
 8002330:	bf0c      	ite	eq
 8002332:	6842      	ldreq	r2, [r0, #4]
 8002334:	6882      	ldrne	r2, [r0, #8]
 8002336:	4013      	ands	r3, r2
 8002338:	69c2      	ldr	r2, [r0, #28]
 800233a:	b13b      	cbz	r3, 800234c <USART_GetITStatus+0x38>
 800233c:	0c09      	lsrs	r1, r1, #16
 800233e:	2301      	movs	r3, #1
 8002340:	408b      	lsls	r3, r1
 8002342:	4213      	tst	r3, r2
 8002344:	bf14      	ite	ne
 8002346:	2001      	movne	r0, #1
 8002348:	2000      	moveq	r0, #0
 800234a:	bd10      	pop	{r4, pc}
 800234c:	4618      	mov	r0, r3
 800234e:	bd10      	pop	{r4, pc}

08002350 <USART_ClearITPendingBit>:
 8002350:	bf00      	nop
 8002352:	bf00      	nop
 8002354:	2301      	movs	r3, #1
 8002356:	0c09      	lsrs	r1, r1, #16
 8002358:	408b      	lsls	r3, r1
 800235a:	6203      	str	r3, [r0, #32]
 800235c:	4770      	bx	lr
	...

08002360 <SystemInit>:
 8002360:	4a39      	ldr	r2, [pc, #228]	; (8002448 <SystemInit+0xe8>)
 8002362:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002366:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800236a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800236e:	4b37      	ldr	r3, [pc, #220]	; (800244c <SystemInit+0xec>)
 8002370:	681a      	ldr	r2, [r3, #0]
 8002372:	f042 0201 	orr.w	r2, r2, #1
 8002376:	601a      	str	r2, [r3, #0]
 8002378:	6859      	ldr	r1, [r3, #4]
 800237a:	4a35      	ldr	r2, [pc, #212]	; (8002450 <SystemInit+0xf0>)
 800237c:	400a      	ands	r2, r1
 800237e:	605a      	str	r2, [r3, #4]
 8002380:	681a      	ldr	r2, [r3, #0]
 8002382:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002386:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800238a:	601a      	str	r2, [r3, #0]
 800238c:	681a      	ldr	r2, [r3, #0]
 800238e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002392:	601a      	str	r2, [r3, #0]
 8002394:	685a      	ldr	r2, [r3, #4]
 8002396:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800239a:	605a      	str	r2, [r3, #4]
 800239c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800239e:	f022 020f 	bic.w	r2, r2, #15
 80023a2:	62da      	str	r2, [r3, #44]	; 0x2c
 80023a4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023a6:	4a2b      	ldr	r2, [pc, #172]	; (8002454 <SystemInit+0xf4>)
 80023a8:	b082      	sub	sp, #8
 80023aa:	400a      	ands	r2, r1
 80023ac:	631a      	str	r2, [r3, #48]	; 0x30
 80023ae:	2200      	movs	r2, #0
 80023b0:	609a      	str	r2, [r3, #8]
 80023b2:	9200      	str	r2, [sp, #0]
 80023b4:	9201      	str	r2, [sp, #4]
 80023b6:	681a      	ldr	r2, [r3, #0]
 80023b8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80023bc:	601a      	str	r2, [r3, #0]
 80023be:	681a      	ldr	r2, [r3, #0]
 80023c0:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80023c4:	9201      	str	r2, [sp, #4]
 80023c6:	9a00      	ldr	r2, [sp, #0]
 80023c8:	3201      	adds	r2, #1
 80023ca:	9200      	str	r2, [sp, #0]
 80023cc:	9a01      	ldr	r2, [sp, #4]
 80023ce:	b91a      	cbnz	r2, 80023d8 <SystemInit+0x78>
 80023d0:	9a00      	ldr	r2, [sp, #0]
 80023d2:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80023d6:	d1f2      	bne.n	80023be <SystemInit+0x5e>
 80023d8:	681a      	ldr	r2, [r3, #0]
 80023da:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 80023de:	bf18      	it	ne
 80023e0:	2201      	movne	r2, #1
 80023e2:	9201      	str	r2, [sp, #4]
 80023e4:	9a01      	ldr	r2, [sp, #4]
 80023e6:	2a01      	cmp	r2, #1
 80023e8:	d005      	beq.n	80023f6 <SystemInit+0x96>
 80023ea:	4b17      	ldr	r3, [pc, #92]	; (8002448 <SystemInit+0xe8>)
 80023ec:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80023f0:	609a      	str	r2, [r3, #8]
 80023f2:	b002      	add	sp, #8
 80023f4:	4770      	bx	lr
 80023f6:	4a18      	ldr	r2, [pc, #96]	; (8002458 <SystemInit+0xf8>)
 80023f8:	2112      	movs	r1, #18
 80023fa:	6011      	str	r1, [r2, #0]
 80023fc:	685a      	ldr	r2, [r3, #4]
 80023fe:	605a      	str	r2, [r3, #4]
 8002400:	685a      	ldr	r2, [r3, #4]
 8002402:	605a      	str	r2, [r3, #4]
 8002404:	685a      	ldr	r2, [r3, #4]
 8002406:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800240a:	605a      	str	r2, [r3, #4]
 800240c:	685a      	ldr	r2, [r3, #4]
 800240e:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002412:	605a      	str	r2, [r3, #4]
 8002414:	685a      	ldr	r2, [r3, #4]
 8002416:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800241a:	605a      	str	r2, [r3, #4]
 800241c:	681a      	ldr	r2, [r3, #0]
 800241e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002422:	601a      	str	r2, [r3, #0]
 8002424:	6819      	ldr	r1, [r3, #0]
 8002426:	4a09      	ldr	r2, [pc, #36]	; (800244c <SystemInit+0xec>)
 8002428:	0189      	lsls	r1, r1, #6
 800242a:	d5fb      	bpl.n	8002424 <SystemInit+0xc4>
 800242c:	6851      	ldr	r1, [r2, #4]
 800242e:	f021 0103 	bic.w	r1, r1, #3
 8002432:	6051      	str	r1, [r2, #4]
 8002434:	6851      	ldr	r1, [r2, #4]
 8002436:	f041 0102 	orr.w	r1, r1, #2
 800243a:	6051      	str	r1, [r2, #4]
 800243c:	685a      	ldr	r2, [r3, #4]
 800243e:	f002 020c 	and.w	r2, r2, #12
 8002442:	2a08      	cmp	r2, #8
 8002444:	d1fa      	bne.n	800243c <SystemInit+0xdc>
 8002446:	e7d0      	b.n	80023ea <SystemInit+0x8a>
 8002448:	e000ed00 	.word	0xe000ed00
 800244c:	40021000 	.word	0x40021000
 8002450:	f87fc00c 	.word	0xf87fc00c
 8002454:	ff00fccc 	.word	0xff00fccc
 8002458:	40022000 	.word	0x40022000

0800245c <core_yield>:
 800245c:	bf00      	nop
 800245e:	4770      	bx	lr

08002460 <sytem_clock_init>:
 8002460:	f7ff bf7e 	b.w	8002360 <SystemInit>

08002464 <NVIC_Init>:
 8002464:	b510      	push	{r4, lr}
 8002466:	bf00      	nop
 8002468:	bf00      	nop
 800246a:	bf00      	nop
 800246c:	78c2      	ldrb	r2, [r0, #3]
 800246e:	7803      	ldrb	r3, [r0, #0]
 8002470:	b312      	cbz	r2, 80024b8 <NVIC_Init+0x54>
 8002472:	4a17      	ldr	r2, [pc, #92]	; (80024d0 <NVIC_Init+0x6c>)
 8002474:	68d1      	ldr	r1, [r2, #12]
 8002476:	7842      	ldrb	r2, [r0, #1]
 8002478:	43c9      	mvns	r1, r1
 800247a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800247e:	f1c1 0404 	rsb	r4, r1, #4
 8002482:	b2e4      	uxtb	r4, r4
 8002484:	40a2      	lsls	r2, r4
 8002486:	b2d4      	uxtb	r4, r2
 8002488:	220f      	movs	r2, #15
 800248a:	410a      	asrs	r2, r1
 800248c:	7881      	ldrb	r1, [r0, #2]
 800248e:	400a      	ands	r2, r1
 8002490:	4322      	orrs	r2, r4
 8002492:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002496:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800249a:	0112      	lsls	r2, r2, #4
 800249c:	b2d2      	uxtb	r2, r2
 800249e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80024a2:	7803      	ldrb	r3, [r0, #0]
 80024a4:	2201      	movs	r2, #1
 80024a6:	0959      	lsrs	r1, r3, #5
 80024a8:	f003 031f 	and.w	r3, r3, #31
 80024ac:	fa02 f303 	lsl.w	r3, r2, r3
 80024b0:	4a08      	ldr	r2, [pc, #32]	; (80024d4 <NVIC_Init+0x70>)
 80024b2:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80024b6:	bd10      	pop	{r4, pc}
 80024b8:	095a      	lsrs	r2, r3, #5
 80024ba:	2101      	movs	r1, #1
 80024bc:	f003 031f 	and.w	r3, r3, #31
 80024c0:	4099      	lsls	r1, r3
 80024c2:	f102 0320 	add.w	r3, r2, #32
 80024c6:	4a03      	ldr	r2, [pc, #12]	; (80024d4 <NVIC_Init+0x70>)
 80024c8:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80024cc:	bd10      	pop	{r4, pc}
 80024ce:	bf00      	nop
 80024d0:	e000ed00 	.word	0xe000ed00
 80024d4:	e000e100 	.word	0xe000e100

080024d8 <EXTI_ClearITPendingBit>:
 80024d8:	f020 011f 	bic.w	r1, r0, #31
 80024dc:	2301      	movs	r3, #1
 80024de:	f000 001f 	and.w	r0, r0, #31
 80024e2:	4a02      	ldr	r2, [pc, #8]	; (80024ec <EXTI_ClearITPendingBit+0x14>)
 80024e4:	4083      	lsls	r3, r0
 80024e6:	508b      	str	r3, [r1, r2]
 80024e8:	4770      	bx	lr
 80024ea:	bf00      	nop
 80024ec:	40010414 	.word	0x40010414

080024f0 <GPIO_Init>:
 80024f0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80024f2:	bf00      	nop
 80024f4:	bf00      	nop
 80024f6:	bf00      	nop
 80024f8:	bf00      	nop
 80024fa:	2300      	movs	r3, #0
 80024fc:	680e      	ldr	r6, [r1, #0]
 80024fe:	461c      	mov	r4, r3
 8002500:	2501      	movs	r5, #1
 8002502:	40a5      	lsls	r5, r4
 8002504:	ea05 0e06 	and.w	lr, r5, r6
 8002508:	45ae      	cmp	lr, r5
 800250a:	d12d      	bne.n	8002568 <GPIO_Init+0x78>
 800250c:	790f      	ldrb	r7, [r1, #4]
 800250e:	1e7a      	subs	r2, r7, #1
 8002510:	2a01      	cmp	r2, #1
 8002512:	d817      	bhi.n	8002544 <GPIO_Init+0x54>
 8002514:	bf00      	nop
 8002516:	2203      	movs	r2, #3
 8002518:	6885      	ldr	r5, [r0, #8]
 800251a:	409a      	lsls	r2, r3
 800251c:	ea25 0202 	bic.w	r2, r5, r2
 8002520:	6082      	str	r2, [r0, #8]
 8002522:	794d      	ldrb	r5, [r1, #5]
 8002524:	6882      	ldr	r2, [r0, #8]
 8002526:	409d      	lsls	r5, r3
 8002528:	4315      	orrs	r5, r2
 800252a:	6085      	str	r5, [r0, #8]
 800252c:	bf00      	nop
 800252e:	8882      	ldrh	r2, [r0, #4]
 8002530:	b292      	uxth	r2, r2
 8002532:	ea22 020e 	bic.w	r2, r2, lr
 8002536:	8082      	strh	r2, [r0, #4]
 8002538:	798a      	ldrb	r2, [r1, #6]
 800253a:	8885      	ldrh	r5, [r0, #4]
 800253c:	40a2      	lsls	r2, r4
 800253e:	432a      	orrs	r2, r5
 8002540:	b292      	uxth	r2, r2
 8002542:	8082      	strh	r2, [r0, #4]
 8002544:	2203      	movs	r2, #3
 8002546:	6805      	ldr	r5, [r0, #0]
 8002548:	409a      	lsls	r2, r3
 800254a:	43d2      	mvns	r2, r2
 800254c:	4015      	ands	r5, r2
 800254e:	6005      	str	r5, [r0, #0]
 8002550:	6805      	ldr	r5, [r0, #0]
 8002552:	409f      	lsls	r7, r3
 8002554:	432f      	orrs	r7, r5
 8002556:	6007      	str	r7, [r0, #0]
 8002558:	68c7      	ldr	r7, [r0, #12]
 800255a:	4017      	ands	r7, r2
 800255c:	79ca      	ldrb	r2, [r1, #7]
 800255e:	fa02 f503 	lsl.w	r5, r2, r3
 8002562:	ea47 0205 	orr.w	r2, r7, r5
 8002566:	60c2      	str	r2, [r0, #12]
 8002568:	3401      	adds	r4, #1
 800256a:	2c10      	cmp	r4, #16
 800256c:	f103 0302 	add.w	r3, r3, #2
 8002570:	d1c6      	bne.n	8002500 <GPIO_Init+0x10>
 8002572:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002574 <GPIO_SetBits>:
 8002574:	bf00      	nop
 8002576:	bf00      	nop
 8002578:	6181      	str	r1, [r0, #24]
 800257a:	4770      	bx	lr

0800257c <GPIO_PinAFConfig>:
 800257c:	b510      	push	{r4, lr}
 800257e:	bf00      	nop
 8002580:	bf00      	nop
 8002582:	bf00      	nop
 8002584:	f001 0307 	and.w	r3, r1, #7
 8002588:	08c9      	lsrs	r1, r1, #3
 800258a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 800258e:	009b      	lsls	r3, r3, #2
 8002590:	6a04      	ldr	r4, [r0, #32]
 8002592:	210f      	movs	r1, #15
 8002594:	4099      	lsls	r1, r3
 8002596:	ea24 0101 	bic.w	r1, r4, r1
 800259a:	6201      	str	r1, [r0, #32]
 800259c:	6a01      	ldr	r1, [r0, #32]
 800259e:	409a      	lsls	r2, r3
 80025a0:	430a      	orrs	r2, r1
 80025a2:	6202      	str	r2, [r0, #32]
 80025a4:	bd10      	pop	{r4, pc}

080025a6 <Default_Handler>:
 80025a6:	4668      	mov	r0, sp
 80025a8:	f020 0107 	bic.w	r1, r0, #7
 80025ac:	468d      	mov	sp, r1
 80025ae:	b501      	push	{r0, lr}
 80025b0:	bf00      	nop
 80025b2:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80025b6:	4685      	mov	sp, r0
 80025b8:	4770      	bx	lr

080025ba <HardFault_Handler>:
 80025ba:	bf00      	nop
 80025bc:	e7fd      	b.n	80025ba <HardFault_Handler>
	...

080025c0 <_reset_init>:
 80025c0:	490e      	ldr	r1, [pc, #56]	; (80025fc <_reset_init+0x3c>)
 80025c2:	4b0f      	ldr	r3, [pc, #60]	; (8002600 <_reset_init+0x40>)
 80025c4:	1a5b      	subs	r3, r3, r1
 80025c6:	109b      	asrs	r3, r3, #2
 80025c8:	2200      	movs	r2, #0
 80025ca:	429a      	cmp	r2, r3
 80025cc:	d006      	beq.n	80025dc <_reset_init+0x1c>
 80025ce:	480d      	ldr	r0, [pc, #52]	; (8002604 <_reset_init+0x44>)
 80025d0:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 80025d4:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 80025d8:	3201      	adds	r2, #1
 80025da:	e7f6      	b.n	80025ca <_reset_init+0xa>
 80025dc:	4a0a      	ldr	r2, [pc, #40]	; (8002608 <_reset_init+0x48>)
 80025de:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80025e2:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80025e6:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80025ea:	f502 720c 	add.w	r2, r2, #560	; 0x230
 80025ee:	6853      	ldr	r3, [r2, #4]
 80025f0:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 80025f4:	6053      	str	r3, [r2, #4]
 80025f6:	f7ff bb1f 	b.w	8001c38 <main>
 80025fa:	bf00      	nop
 80025fc:	20000000 	.word	0x20000000
 8002600:	20000030 	.word	0x20000030
 8002604:	08002810 	.word	0x08002810
 8002608:	e000ed00 	.word	0xe000ed00

0800260c <scheduler>:
 800260c:	b570      	push	{r4, r5, r6, lr}
 800260e:	2200      	movs	r2, #0
 8002610:	4611      	mov	r1, r2
 8002612:	4b15      	ldr	r3, [pc, #84]	; (8002668 <scheduler+0x5c>)
 8002614:	200c      	movs	r0, #12
 8002616:	fb00 f401 	mul.w	r4, r0, r1
 800261a:	191e      	adds	r6, r3, r4
 800261c:	6875      	ldr	r5, [r6, #4]
 800261e:	f015 0f02 	tst.w	r5, #2
 8002622:	461d      	mov	r5, r3
 8002624:	d10a      	bne.n	800263c <scheduler+0x30>
 8002626:	6876      	ldr	r6, [r6, #4]
 8002628:	07f6      	lsls	r6, r6, #31
 800262a:	d507      	bpl.n	800263c <scheduler+0x30>
 800262c:	4350      	muls	r0, r2
 800262e:	5b1c      	ldrh	r4, [r3, r4]
 8002630:	5a18      	ldrh	r0, [r3, r0]
 8002632:	b2a4      	uxth	r4, r4
 8002634:	b280      	uxth	r0, r0
 8002636:	4284      	cmp	r4, r0
 8002638:	bf38      	it	cc
 800263a:	460a      	movcc	r2, r1
 800263c:	200c      	movs	r0, #12
 800263e:	4348      	muls	r0, r1
 8002640:	5a1c      	ldrh	r4, [r3, r0]
 8002642:	b2a4      	uxth	r4, r4
 8002644:	b11c      	cbz	r4, 800264e <scheduler+0x42>
 8002646:	5a1c      	ldrh	r4, [r3, r0]
 8002648:	3c01      	subs	r4, #1
 800264a:	b2a4      	uxth	r4, r4
 800264c:	521c      	strh	r4, [r3, r0]
 800264e:	3101      	adds	r1, #1
 8002650:	2906      	cmp	r1, #6
 8002652:	d1de      	bne.n	8002612 <scheduler+0x6>
 8002654:	230c      	movs	r3, #12
 8002656:	4353      	muls	r3, r2
 8002658:	18e9      	adds	r1, r5, r3
 800265a:	8849      	ldrh	r1, [r1, #2]
 800265c:	b289      	uxth	r1, r1
 800265e:	52e9      	strh	r1, [r5, r3]
 8002660:	4b02      	ldr	r3, [pc, #8]	; (800266c <scheduler+0x60>)
 8002662:	601a      	str	r2, [r3, #0]
 8002664:	bd70      	pop	{r4, r5, r6, pc}
 8002666:	bf00      	nop
 8002668:	20000628 	.word	0x20000628
 800266c:	20000670 	.word	0x20000670

08002670 <SysTick_Handler>:
 8002670:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002674:	f3ef 8308 	mrs	r3, MSP
 8002678:	4c0d      	ldr	r4, [pc, #52]	; (80026b0 <SysTick_Handler+0x40>)
 800267a:	4d0e      	ldr	r5, [pc, #56]	; (80026b4 <SysTick_Handler+0x44>)
 800267c:	6822      	ldr	r2, [r4, #0]
 800267e:	3201      	adds	r2, #1
 8002680:	bf1d      	ittte	ne
 8002682:	6822      	ldrne	r2, [r4, #0]
 8002684:	210c      	movne	r1, #12
 8002686:	fb01 5202 	mlane	r2, r1, r2, r5
 800268a:	2300      	moveq	r3, #0
 800268c:	bf14      	ite	ne
 800268e:	6093      	strne	r3, [r2, #8]
 8002690:	6023      	streq	r3, [r4, #0]
 8002692:	f7ff ffbb 	bl	800260c <scheduler>
 8002696:	6822      	ldr	r2, [r4, #0]
 8002698:	230c      	movs	r3, #12
 800269a:	fb03 5302 	mla	r3, r3, r2, r5
 800269e:	689a      	ldr	r2, [r3, #8]
 80026a0:	f06f 0306 	mvn.w	r3, #6
 80026a4:	469e      	mov	lr, r3
 80026a6:	f382 8808 	msr	MSP, r2
 80026aa:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80026ae:	4770      	bx	lr
 80026b0:	20000670 	.word	0x20000670
 80026b4:	20000628 	.word	0x20000628

080026b8 <__aeabi_d2f>:
 80026b8:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80026bc:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 80026c0:	bf24      	itt	cs
 80026c2:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 80026c6:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 80026ca:	d90d      	bls.n	80026e8 <__aeabi_d2f+0x30>
 80026cc:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 80026d0:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 80026d4:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 80026d8:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 80026dc:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 80026e0:	bf08      	it	eq
 80026e2:	f020 0001 	biceq.w	r0, r0, #1
 80026e6:	4770      	bx	lr
 80026e8:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 80026ec:	d121      	bne.n	8002732 <__aeabi_d2f+0x7a>
 80026ee:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 80026f2:	bfbc      	itt	lt
 80026f4:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 80026f8:	4770      	bxlt	lr
 80026fa:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80026fe:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002702:	f1c2 0218 	rsb	r2, r2, #24
 8002706:	f1c2 0c20 	rsb	ip, r2, #32
 800270a:	fa10 f30c 	lsls.w	r3, r0, ip
 800270e:	fa20 f002 	lsr.w	r0, r0, r2
 8002712:	bf18      	it	ne
 8002714:	f040 0001 	orrne.w	r0, r0, #1
 8002718:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 800271c:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002720:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002724:	ea40 000c 	orr.w	r0, r0, ip
 8002728:	fa23 f302 	lsr.w	r3, r3, r2
 800272c:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002730:	e7cc      	b.n	80026cc <__aeabi_d2f+0x14>
 8002732:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002736:	d107      	bne.n	8002748 <__aeabi_d2f+0x90>
 8002738:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 800273c:	bf1e      	ittt	ne
 800273e:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002742:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002746:	4770      	bxne	lr
 8002748:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 800274c:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002750:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002754:	4770      	bx	lr
 8002756:	bf00      	nop

08002758 <_init>:
 8002758:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800275a:	bf00      	nop
 800275c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800275e:	bc08      	pop	{r3}
 8002760:	469e      	mov	lr, r3
 8002762:	4770      	bx	lr

08002764 <_fini>:
 8002764:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002766:	bf00      	nop
 8002768:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800276a:	bc08      	pop	{r3}
 800276c:	469e      	mov	lr, r3
 800276e:	4770      	bx	lr
 8002770:	61646f6b 	.word	0x61646f6b
 8002774:	6920616d 	.word	0x6920616d
 8002778:	2074696e 	.word	0x2074696e
 800277c:	25206925 	.word	0x25206925
 8002780:	203a2069 	.word	0x203a2069
 8002784:	4f5b2000 	.word	0x4f5b2000
 8002788:	000a5d4b 	.word	0x000a5d4b
 800278c:	41465b20 	.word	0x41465b20
 8002790:	44454c49 	.word	0x44454c49
 8002794:	000a0a5d 	.word	0x000a0a5d
 8002798:	74737973 	.word	0x74737973
 800279c:	74206d65 	.word	0x74206d65
 80027a0:	20656d69 	.word	0x20656d69
 80027a4:	5b207525 	.word	0x5b207525
 80027a8:	0a5d736d 	.word	0x0a5d736d
 80027ac:	20692500 	.word	0x20692500
 80027b0:	0a206925 	.word	0x0a206925
 80027b4:	00          	.byte	0x00
 80027b5:	74          	.byte	0x74
 80027b6:	7365      	.short	0x7365
 80027b8:	676e6974 	.word	0x676e6974
 80027bc:	6d756e20 	.word	0x6d756e20
 80027c0:	20726562 	.word	0x20726562
 80027c4:	6e697270 	.word	0x6e697270
 80027c8:	75252074 	.word	0x75252074
 80027cc:	20752520 	.word	0x20752520
 80027d0:	0a3a7525 	.word	0x0a3a7525
 80027d4:	6f6c6600 	.word	0x6f6c6600
 80027d8:	6e207461 	.word	0x6e207461
 80027dc:	65626d75 	.word	0x65626d75
 80027e0:	66252072 	.word	0x66252072
 80027e4:	25000a20 	.word	0x25000a20
 80027e8:	66252066 	.word	0x66252066
 80027ec:	20662520 	.word	0x20662520
 80027f0:	25206625 	.word	0x25206625
 80027f4:	66252066 	.word	0x66252066
 80027f8:	20662520 	.word	0x20662520
 80027fc:	000a6625 	.word	0x000a6625
 8002800:	656c6469 	.word	0x656c6469
 8002804:	0a752520 	.word	0x0a752520
 8002808:	00000000 	.word	0x00000000

0800280c <__EH_FRAME_BEGIN__>:
 800280c:	00000000                                ....
