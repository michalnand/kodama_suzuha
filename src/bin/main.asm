
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f826 	bl	80011dc <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f8c9 	bl	8001334 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	4620      	mov	r0, r4
 80001b0:	f000 f954 	bl	800045c <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fc49 	bl	8000a58 <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001d6:	f000 fc2f 	bl	8000a38 <_ZN6CMotor10motor_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 4043 	sublt.w	r0, r0, #49920	; 0xc300
 80001e2:	3850      	sublt	r0, #80	; 0x50
 80001e4:	bd10      	pop	{r4, pc}
	...

080001e8 <_ZN7CKodama4initEv>:
 80001e8:	b570      	push	{r4, r5, r6, lr}
 80001ea:	4605      	mov	r5, r0
 80001ec:	2400      	movs	r4, #0
 80001ee:	4628      	mov	r0, r5
 80001f0:	f7ff ffca 	bl	8000188 <_ZN7CKodama5init_Ev>
 80001f4:	4606      	mov	r6, r0
 80001f6:	490a      	ldr	r1, [pc, #40]	; (8000220 <_ZN7CKodama4initEv+0x38>)
 80001f8:	4628      	mov	r0, r5
 80001fa:	4622      	mov	r2, r4
 80001fc:	4633      	mov	r3, r6
 80001fe:	f001 f993 	bl	8001528 <_ZN9CTerminal6printfEPKcz>
 8000202:	4628      	mov	r0, r5
 8000204:	b91e      	cbnz	r6, 800020e <_ZN7CKodama4initEv+0x26>
 8000206:	4907      	ldr	r1, [pc, #28]	; (8000224 <_ZN7CKodama4initEv+0x3c>)
 8000208:	f001 f98e 	bl	8001528 <_ZN9CTerminal6printfEPKcz>
 800020c:	e005      	b.n	800021a <_ZN7CKodama4initEv+0x32>
 800020e:	4906      	ldr	r1, [pc, #24]	; (8000228 <_ZN7CKodama4initEv+0x40>)
 8000210:	3401      	adds	r4, #1
 8000212:	f001 f989 	bl	8001528 <_ZN9CTerminal6printfEPKcz>
 8000216:	2c08      	cmp	r4, #8
 8000218:	d1e9      	bne.n	80001ee <_ZN7CKodama4initEv+0x6>
 800021a:	4630      	mov	r0, r6
 800021c:	bd70      	pop	{r4, r5, r6, pc}
 800021e:	bf00      	nop
 8000220:	0800229c 	.word	0x0800229c
 8000224:	080022b1 	.word	0x080022b1
 8000228:	080022b8 	.word	0x080022b8

0800022c <_ZN7CKodama5sleepEv>:
 800022c:	b510      	push	{r4, lr}
 800022e:	2108      	movs	r1, #8
 8000230:	4604      	mov	r4, r0
 8000232:	f001 f833 	bl	800129c <_ZN5CGPIO8gpio_offEm>
 8000236:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800023e:	f000 bb5f 	b.w	8000900 <_ZN6CMotor11motor_sleepEv>

08000242 <_ZN7CKodama6wakeupEv>:
 8000242:	b510      	push	{r4, lr}
 8000244:	2108      	movs	r1, #8
 8000246:	4604      	mov	r4, r0
 8000248:	34c4      	adds	r4, #196	; 0xc4
 800024a:	f001 f819 	bl	8001280 <_ZN5CGPIO7gpio_onEm>
 800024e:	2100      	movs	r1, #0
 8000250:	4620      	mov	r0, r4
 8000252:	460a      	mov	r2, r1
 8000254:	f000 fbea 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 8000258:	4620      	mov	r0, r4
 800025a:	2101      	movs	r1, #1
 800025c:	2200      	movs	r2, #0
 800025e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000262:	f000 bbe3 	b.w	8000a2c <_ZN6CMotor9set_motorEml>

08000266 <_ZN7CKodama6set_dtEl>:
 8000266:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
 800026a:	4770      	bx	lr

0800026c <_ZN13CLinePositionC1Ev>:
 800026c:	2200      	movs	r2, #0
 800026e:	6082      	str	r2, [r0, #8]
 8000270:	60c2      	str	r2, [r0, #12]
 8000272:	6102      	str	r2, [r0, #16]
 8000274:	6142      	str	r2, [r0, #20]
 8000276:	6042      	str	r2, [r0, #4]
 8000278:	2200      	movs	r2, #0
 800027a:	7002      	strb	r2, [r0, #0]
 800027c:	4770      	bx	lr
	...

08000280 <_ZN13CLinePosition7processEP10sRGBResult>:
 8000280:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000284:	2300      	movs	r3, #0
 8000286:	f101 0816 	add.w	r8, r1, #22
 800028a:	ed2d 8b02 	vpush	{d8}
 800028e:	460d      	mov	r5, r1
 8000290:	4604      	mov	r4, r0
 8000292:	7003      	strb	r3, [r0, #0]
 8000294:	4641      	mov	r1, r8
 8000296:	461a      	mov	r2, r3
 8000298:	f103 000c 	add.w	r0, r3, #12
 800029c:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 80002a0:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 80002a4:	4286      	cmp	r6, r0
 80002a6:	bfb8      	it	lt
 80002a8:	4613      	movlt	r3, r2
 80002aa:	3201      	adds	r2, #1
 80002ac:	2a04      	cmp	r2, #4
 80002ae:	d1f3      	bne.n	8000298 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 80002b0:	330c      	adds	r3, #12
 80002b2:	eddf 7a3d 	vldr	s15, [pc, #244]	; 80003a8 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 80002b6:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 80002ba:	ee07 3a10 	vmov	s14, r3
 80002be:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80002c2:	eeb0 8a67 	vmov.f32	s16, s15
 80002c6:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80002ca:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002ce:	d567      	bpl.n	80003a0 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 80002d0:	f104 0608 	add.w	r6, r4, #8
 80002d4:	eddf 8a35 	vldr	s17, [pc, #212]	; 80003ac <_ZN13CLinePosition7processEP10sRGBResult+0x12c>
 80002d8:	f104 0918 	add.w	r9, r4, #24
 80002dc:	4637      	mov	r7, r6
 80002de:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 80002e2:	4833      	ldr	r0, [pc, #204]	; (80003b0 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 80002e4:	425b      	negs	r3, r3
 80002e6:	ee07 3a90 	vmov	s15, r3
 80002ea:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80002ee:	ece7 7a01 	vstmia	r7!, {s15}
 80002f2:	ee17 1a90 	vmov	r1, s15
 80002f6:	f000 f86c 	bl	80003d2 <_ZN5CMath3absEf>
 80002fa:	ee07 0a90 	vmov	s15, r0
 80002fe:	eef4 8ae7 	vcmpe.f32	s17, s15
 8000302:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000306:	d506      	bpl.n	8000316 <_ZN13CLinePosition7processEP10sRGBResult+0x96>
 8000308:	4829      	ldr	r0, [pc, #164]	; (80003b0 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 800030a:	f857 1c04 	ldr.w	r1, [r7, #-4]
 800030e:	f000 f860 	bl	80003d2 <_ZN5CMath3absEf>
 8000312:	ee08 0a90 	vmov	s17, r0
 8000316:	454f      	cmp	r7, r9
 8000318:	d1e1      	bne.n	80002de <_ZN13CLinePosition7processEP10sRGBResult+0x5e>
 800031a:	edd6 7a00 	vldr	s15, [r6]
 800031e:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 8000322:	ece6 7a01 	vstmia	r6!, {s15}
 8000326:	454e      	cmp	r6, r9
 8000328:	d1f7      	bne.n	800031a <_ZN13CLinePosition7processEP10sRGBResult+0x9a>
 800032a:	2301      	movs	r3, #1
 800032c:	7023      	strb	r3, [r4, #0]
 800032e:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 8000332:	eddf 7a1d 	vldr	s15, [pc, #116]	; 80003a8 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 8000336:	ee07 3a10 	vmov	s14, r3
 800033a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800033e:	eeb4 7ac8 	vcmpe.f32	s14, s16
 8000342:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000346:	d501      	bpl.n	800034c <_ZN13CLinePosition7processEP10sRGBResult+0xcc>
 8000348:	4b1a      	ldr	r3, [pc, #104]	; (80003b4 <_ZN13CLinePosition7processEP10sRGBResult+0x134>)
 800034a:	e028      	b.n	800039e <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 800034c:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 8000350:	ee07 3a10 	vmov	s14, r3
 8000354:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000358:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800035c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000360:	d502      	bpl.n	8000368 <_ZN13CLinePosition7processEP10sRGBResult+0xe8>
 8000362:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000366:	e01a      	b.n	800039e <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 8000368:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 800036c:	ee07 3a10 	vmov	s14, r3
 8000370:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000374:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000378:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800037c:	d502      	bpl.n	8000384 <_ZN13CLinePosition7processEP10sRGBResult+0x104>
 800037e:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8000382:	e00c      	b.n	800039e <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 8000384:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 8000388:	ee07 3a10 	vmov	s14, r3
 800038c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000390:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000394:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000398:	d502      	bpl.n	80003a0 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 800039a:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 800039e:	6063      	str	r3, [r4, #4]
 80003a0:	ecbd 8b02 	vpop	{d8}
 80003a4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80003a8:	c2a00000 	.word	0xc2a00000
 80003ac:	38d1b717 	.word	0x38d1b717
 80003b0:	20000108 	.word	0x20000108
 80003b4:	bf800000 	.word	0xbf800000

080003b8 <_ZN13CLinePosition7on_lineEv>:
 80003b8:	7800      	ldrb	r0, [r0, #0]
 80003ba:	4770      	bx	lr

080003bc <_ZN13CLinePosition17get_line_positionEv>:
 80003bc:	6840      	ldr	r0, [r0, #4]
 80003be:	4770      	bx	lr

080003c0 <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>:
 80003c0:	6883      	ldr	r3, [r0, #8]
 80003c2:	600b      	str	r3, [r1, #0]
 80003c4:	68c3      	ldr	r3, [r0, #12]
 80003c6:	604b      	str	r3, [r1, #4]
 80003c8:	6903      	ldr	r3, [r0, #16]
 80003ca:	608b      	str	r3, [r1, #8]
 80003cc:	6943      	ldr	r3, [r0, #20]
 80003ce:	60cb      	str	r3, [r1, #12]
 80003d0:	4770      	bx	lr

080003d2 <_ZN5CMath3absEf>:
 80003d2:	ee07 1a90 	vmov	s15, r1
 80003d6:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 80003da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003de:	bf48      	it	mi
 80003e0:	eef1 7a67 	vnegmi.f32	s15, s15
 80003e4:	ee17 0a90 	vmov	r0, s15
 80003e8:	4770      	bx	lr
	...

080003ec <_ZN5CMath4randEv>:
 80003ec:	6803      	ldr	r3, [r0, #0]
 80003ee:	490b      	ldr	r1, [pc, #44]	; (800041c <_ZN5CMath4randEv+0x30>)
 80003f0:	f243 0239 	movw	r2, #12345	; 0x3039
 80003f4:	fb01 2203 	mla	r2, r1, r3, r2
 80003f8:	6841      	ldr	r1, [r0, #4]
 80003fa:	6002      	str	r2, [r0, #0]
 80003fc:	f341 0300 	sbfx	r3, r1, #0, #1
 8000400:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 8000404:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 8000408:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 800040c:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 8000410:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 8000414:	6043      	str	r3, [r0, #4]
 8000416:	ea83 0002 	eor.w	r0, r3, r2
 800041a:	4770      	bx	lr
 800041c:	41c64e6d 	.word	0x41c64e6d

08000420 <_ZN5CMath3rndEv>:
 8000420:	b508      	push	{r3, lr}
 8000422:	f7ff ffe3 	bl	80003ec <_ZN5CMath4randEv>
 8000426:	4b0a      	ldr	r3, [pc, #40]	; (8000450 <_ZN5CMath3rndEv+0x30>)
 8000428:	fbb0 f2f3 	udiv	r2, r0, r3
 800042c:	fb02 0013 	mls	r0, r2, r3, r0
 8000430:	ee07 0a90 	vmov	s15, r0
 8000434:	ed9f 7a07 	vldr	s14, [pc, #28]	; 8000454 <_ZN5CMath3rndEv+0x34>
 8000438:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800043c:	eec7 7a87 	vdiv.f32	s15, s15, s14
 8000440:	ed9f 7a05 	vldr	s14, [pc, #20]	; 8000458 <_ZN5CMath3rndEv+0x38>
 8000444:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8000448:	ee17 0a90 	vmov	r0, s15
 800044c:	bd08      	pop	{r3, pc}
 800044e:	bf00      	nop
 8000450:	001e8480 	.word	0x001e8480
 8000454:	49742400 	.word	0x49742400
 8000458:	3f800000 	.word	0x3f800000

0800045c <_ZN6CTimer10timer_initEv>:
 800045c:	b530      	push	{r4, r5, lr}
 800045e:	2300      	movs	r3, #0
 8000460:	b085      	sub	sp, #20
 8000462:	491e      	ldr	r1, [pc, #120]	; (80004dc <_ZN6CTimer10timer_initEv+0x80>)
 8000464:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000468:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800046c:	491c      	ldr	r1, [pc, #112]	; (80004e0 <_ZN6CTimer10timer_initEv+0x84>)
 800046e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000472:	4a1c      	ldr	r2, [pc, #112]	; (80004e4 <_ZN6CTimer10timer_initEv+0x88>)
 8000474:	2400      	movs	r4, #0
 8000476:	54d4      	strb	r4, [r2, r3]
 8000478:	3301      	adds	r3, #1
 800047a:	2b08      	cmp	r3, #8
 800047c:	d1f1      	bne.n	8000462 <_ZN6CTimer10timer_initEv+0x6>
 800047e:	4b1a      	ldr	r3, [pc, #104]	; (80004e8 <_ZN6CTimer10timer_initEv+0x8c>)
 8000480:	4d1a      	ldr	r5, [pc, #104]	; (80004ec <_ZN6CTimer10timer_initEv+0x90>)
 8000482:	601c      	str	r4, [r3, #0]
 8000484:	2002      	movs	r0, #2
 8000486:	2101      	movs	r1, #1
 8000488:	f001 fc20 	bl	8001ccc <RCC_APB1PeriphClockCmd>
 800048c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000490:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000494:	4628      	mov	r0, r5
 8000496:	2331      	movs	r3, #49	; 0x31
 8000498:	a901      	add	r1, sp, #4
 800049a:	9302      	str	r3, [sp, #8]
 800049c:	f8ad 4006 	strh.w	r4, [sp, #6]
 80004a0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80004a4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80004a8:	f001 fc1e 	bl	8001ce8 <TIM_TimeBaseInit>
 80004ac:	4628      	mov	r0, r5
 80004ae:	2101      	movs	r1, #1
 80004b0:	f001 fc6a 	bl	8001d88 <TIM_Cmd>
 80004b4:	68eb      	ldr	r3, [r5, #12]
 80004b6:	f043 0301 	orr.w	r3, r3, #1
 80004ba:	60eb      	str	r3, [r5, #12]
 80004bc:	231d      	movs	r3, #29
 80004be:	f88d 3000 	strb.w	r3, [sp]
 80004c2:	4668      	mov	r0, sp
 80004c4:	2301      	movs	r3, #1
 80004c6:	f88d 4001 	strb.w	r4, [sp, #1]
 80004ca:	f88d 3002 	strb.w	r3, [sp, #2]
 80004ce:	f88d 3003 	strb.w	r3, [sp, #3]
 80004d2:	f001 fda1 	bl	8002018 <NVIC_Init>
 80004d6:	4620      	mov	r0, r4
 80004d8:	b005      	add	sp, #20
 80004da:	bd30      	pop	{r4, r5, pc}
 80004dc:	20000110 	.word	0x20000110
 80004e0:	2000013c 	.word	0x2000013c
 80004e4:	20000130 	.word	0x20000130
 80004e8:	20000138 	.word	0x20000138
 80004ec:	40000400 	.word	0x40000400

080004f0 <TIM3_IRQHandler>:
 80004f0:	2300      	movs	r3, #0
 80004f2:	4a15      	ldr	r2, [pc, #84]	; (8000548 <TIM3_IRQHandler+0x58>)
 80004f4:	5cd1      	ldrb	r1, [r2, r3]
 80004f6:	b111      	cbz	r1, 80004fe <TIM3_IRQHandler+0xe>
 80004f8:	5cd1      	ldrb	r1, [r2, r3]
 80004fa:	29ff      	cmp	r1, #255	; 0xff
 80004fc:	d11e      	bne.n	800053c <TIM3_IRQHandler+0x4c>
 80004fe:	4913      	ldr	r1, [pc, #76]	; (800054c <TIM3_IRQHandler+0x5c>)
 8000500:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000504:	b128      	cbz	r0, 8000512 <TIM3_IRQHandler+0x22>
 8000506:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 800050a:	3a01      	subs	r2, #1
 800050c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000510:	e009      	b.n	8000526 <TIM3_IRQHandler+0x36>
 8000512:	480f      	ldr	r0, [pc, #60]	; (8000550 <TIM3_IRQHandler+0x60>)
 8000514:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000518:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 800051c:	5cd2      	ldrb	r2, [r2, r3]
 800051e:	b912      	cbnz	r2, 8000526 <TIM3_IRQHandler+0x36>
 8000520:	4a09      	ldr	r2, [pc, #36]	; (8000548 <TIM3_IRQHandler+0x58>)
 8000522:	2101      	movs	r1, #1
 8000524:	54d1      	strb	r1, [r2, r3]
 8000526:	3301      	adds	r3, #1
 8000528:	2b08      	cmp	r3, #8
 800052a:	d1e2      	bne.n	80004f2 <TIM3_IRQHandler+0x2>
 800052c:	4a09      	ldr	r2, [pc, #36]	; (8000554 <TIM3_IRQHandler+0x64>)
 800052e:	480a      	ldr	r0, [pc, #40]	; (8000558 <TIM3_IRQHandler+0x68>)
 8000530:	6813      	ldr	r3, [r2, #0]
 8000532:	2101      	movs	r1, #1
 8000534:	3301      	adds	r3, #1
 8000536:	6013      	str	r3, [r2, #0]
 8000538:	f001 bc34 	b.w	8001da4 <TIM_ClearITPendingBit>
 800053c:	5cd1      	ldrb	r1, [r2, r3]
 800053e:	3101      	adds	r1, #1
 8000540:	b2c9      	uxtb	r1, r1
 8000542:	54d1      	strb	r1, [r2, r3]
 8000544:	e7db      	b.n	80004fe <TIM3_IRQHandler+0xe>
 8000546:	bf00      	nop
 8000548:	20000130 	.word	0x20000130
 800054c:	20000110 	.word	0x20000110
 8000550:	2000013c 	.word	0x2000013c
 8000554:	20000138 	.word	0x20000138
 8000558:	40000400 	.word	0x40000400

0800055c <_ZN6CTimer8get_timeEv>:
 800055c:	b082      	sub	sp, #8
 800055e:	b672      	cpsid	i
 8000560:	4b04      	ldr	r3, [pc, #16]	; (8000574 <_ZN6CTimer8get_timeEv+0x18>)
 8000562:	681b      	ldr	r3, [r3, #0]
 8000564:	9301      	str	r3, [sp, #4]
 8000566:	b662      	cpsie	i
 8000568:	230a      	movs	r3, #10
 800056a:	9801      	ldr	r0, [sp, #4]
 800056c:	fbb0 f0f3 	udiv	r0, r0, r3
 8000570:	b002      	add	sp, #8
 8000572:	4770      	bx	lr
 8000574:	20000138 	.word	0x20000138

08000578 <_ZN6CTimer8delay_msEm>:
 8000578:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800057a:	460c      	mov	r4, r1
 800057c:	4605      	mov	r5, r0
 800057e:	f7ff ffed 	bl	800055c <_ZN6CTimer8get_timeEv>
 8000582:	4420      	add	r0, r4
 8000584:	9001      	str	r0, [sp, #4]
 8000586:	4628      	mov	r0, r5
 8000588:	9c01      	ldr	r4, [sp, #4]
 800058a:	f7ff ffe7 	bl	800055c <_ZN6CTimer8get_timeEv>
 800058e:	4284      	cmp	r4, r0
 8000590:	d902      	bls.n	8000598 <_ZN6CTimer8delay_msEm+0x20>
 8000592:	f001 fd3d 	bl	8002010 <core_yield>
 8000596:	e7f6      	b.n	8000586 <_ZN6CTimer8delay_msEm+0xe>
 8000598:	b003      	add	sp, #12
 800059a:	bd30      	pop	{r4, r5, pc}

0800059c <_ZN6CTimer22event_timer_set_periodEhm>:
 800059c:	b672      	cpsid	i
 800059e:	230a      	movs	r3, #10
 80005a0:	435a      	muls	r2, r3
 80005a2:	4b05      	ldr	r3, [pc, #20]	; (80005b8 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 80005a4:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80005a8:	4b04      	ldr	r3, [pc, #16]	; (80005bc <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 80005aa:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80005ae:	4b04      	ldr	r3, [pc, #16]	; (80005c0 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 80005b0:	2200      	movs	r2, #0
 80005b2:	545a      	strb	r2, [r3, r1]
 80005b4:	b662      	cpsie	i
 80005b6:	4770      	bx	lr
 80005b8:	20000110 	.word	0x20000110
 80005bc:	2000013c 	.word	0x2000013c
 80005c0:	20000130 	.word	0x20000130

080005c4 <_ZN4CRGB8rgb_readEh>:
 80005c4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80005c8:	4604      	mov	r4, r0
 80005ca:	4688      	mov	r8, r1
 80005cc:	f000 fae0 	bl	8000b90 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80005d0:	4620      	mov	r0, r4
 80005d2:	2172      	movs	r1, #114	; 0x72
 80005d4:	f000 fb06 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80005d8:	21b4      	movs	r1, #180	; 0xb4
 80005da:	4620      	mov	r0, r4
 80005dc:	f000 fb02 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80005e0:	4620      	mov	r0, r4
 80005e2:	f000 fad5 	bl	8000b90 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80005e6:	4620      	mov	r0, r4
 80005e8:	2173      	movs	r1, #115	; 0x73
 80005ea:	f000 fafb 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80005ee:	4620      	mov	r0, r4
 80005f0:	2101      	movs	r1, #1
 80005f2:	4622      	mov	r2, r4
 80005f4:	f000 fb37 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005f8:	7823      	ldrb	r3, [r4, #0]
 80005fa:	83a3      	strh	r3, [r4, #28]
 80005fc:	7863      	ldrb	r3, [r4, #1]
 80005fe:	83e3      	strh	r3, [r4, #30]
 8000600:	78a3      	ldrb	r3, [r4, #2]
 8000602:	8423      	strh	r3, [r4, #32]
 8000604:	78e3      	ldrb	r3, [r4, #3]
 8000606:	8463      	strh	r3, [r4, #34]	; 0x22
 8000608:	2101      	movs	r1, #1
 800060a:	4620      	mov	r0, r4
 800060c:	4622      	mov	r2, r4
 800060e:	f104 091a 	add.w	r9, r4, #26
 8000612:	1e65      	subs	r5, r4, #1
 8000614:	f000 fb27 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000618:	1ca6      	adds	r6, r4, #2
 800061a:	f104 0722 	add.w	r7, r4, #34	; 0x22
 800061e:	4629      	mov	r1, r5
 8000620:	464b      	mov	r3, r9
 8000622:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000626:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 800062a:	42bb      	cmp	r3, r7
 800062c:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000630:	801a      	strh	r2, [r3, #0]
 8000632:	d1f6      	bne.n	8000622 <_ZN4CRGB8rgb_readEh+0x5e>
 8000634:	4620      	mov	r0, r4
 8000636:	2101      	movs	r1, #1
 8000638:	4622      	mov	r2, r4
 800063a:	f000 fb14 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800063e:	7823      	ldrb	r3, [r4, #0]
 8000640:	80a3      	strh	r3, [r4, #4]
 8000642:	7863      	ldrb	r3, [r4, #1]
 8000644:	80e3      	strh	r3, [r4, #6]
 8000646:	78a3      	ldrb	r3, [r4, #2]
 8000648:	8123      	strh	r3, [r4, #8]
 800064a:	78e3      	ldrb	r3, [r4, #3]
 800064c:	8163      	strh	r3, [r4, #10]
 800064e:	2101      	movs	r1, #1
 8000650:	4620      	mov	r0, r4
 8000652:	4622      	mov	r2, r4
 8000654:	f000 fb07 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000658:	f104 0a0a 	add.w	sl, r4, #10
 800065c:	4633      	mov	r3, r6
 800065e:	4629      	mov	r1, r5
 8000660:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000664:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000668:	4553      	cmp	r3, sl
 800066a:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 800066e:	801a      	strh	r2, [r3, #0]
 8000670:	d1f6      	bne.n	8000660 <_ZN4CRGB8rgb_readEh+0x9c>
 8000672:	4620      	mov	r0, r4
 8000674:	2101      	movs	r1, #1
 8000676:	4622      	mov	r2, r4
 8000678:	f000 faf5 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800067c:	7823      	ldrb	r3, [r4, #0]
 800067e:	81a3      	strh	r3, [r4, #12]
 8000680:	7863      	ldrb	r3, [r4, #1]
 8000682:	81e3      	strh	r3, [r4, #14]
 8000684:	78a3      	ldrb	r3, [r4, #2]
 8000686:	8223      	strh	r3, [r4, #16]
 8000688:	78e3      	ldrb	r3, [r4, #3]
 800068a:	8263      	strh	r3, [r4, #18]
 800068c:	4622      	mov	r2, r4
 800068e:	4620      	mov	r0, r4
 8000690:	2101      	movs	r1, #1
 8000692:	f000 fae8 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000696:	f104 0612 	add.w	r6, r4, #18
 800069a:	462a      	mov	r2, r5
 800069c:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 80006a0:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80006a4:	45b2      	cmp	sl, r6
 80006a6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80006aa:	f8aa 3000 	strh.w	r3, [sl]
 80006ae:	d1f5      	bne.n	800069c <_ZN4CRGB8rgb_readEh+0xd8>
 80006b0:	4620      	mov	r0, r4
 80006b2:	2101      	movs	r1, #1
 80006b4:	4622      	mov	r2, r4
 80006b6:	f000 fad6 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006ba:	7823      	ldrb	r3, [r4, #0]
 80006bc:	82a3      	strh	r3, [r4, #20]
 80006be:	7863      	ldrb	r3, [r4, #1]
 80006c0:	82e3      	strh	r3, [r4, #22]
 80006c2:	78a3      	ldrb	r3, [r4, #2]
 80006c4:	8323      	strh	r3, [r4, #24]
 80006c6:	78e3      	ldrb	r3, [r4, #3]
 80006c8:	8363      	strh	r3, [r4, #26]
 80006ca:	4622      	mov	r2, r4
 80006cc:	4620      	mov	r0, r4
 80006ce:	2101      	movs	r1, #1
 80006d0:	f000 fac9 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006d4:	462a      	mov	r2, r5
 80006d6:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 80006da:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80006de:	454e      	cmp	r6, r9
 80006e0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80006e4:	8033      	strh	r3, [r6, #0]
 80006e6:	d1f6      	bne.n	80006d6 <_ZN4CRGB8rgb_readEh+0x112>
 80006e8:	4620      	mov	r0, r4
 80006ea:	2101      	movs	r1, #1
 80006ec:	4622      	mov	r2, r4
 80006ee:	f000 faba 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006f2:	7823      	ldrb	r3, [r4, #0]
 80006f4:	84a3      	strh	r3, [r4, #36]	; 0x24
 80006f6:	7863      	ldrb	r3, [r4, #1]
 80006f8:	84e3      	strh	r3, [r4, #38]	; 0x26
 80006fa:	78a3      	ldrb	r3, [r4, #2]
 80006fc:	8523      	strh	r3, [r4, #40]	; 0x28
 80006fe:	78e3      	ldrb	r3, [r4, #3]
 8000700:	8563      	strh	r3, [r4, #42]	; 0x2a
 8000702:	4622      	mov	r2, r4
 8000704:	4620      	mov	r0, r4
 8000706:	2100      	movs	r1, #0
 8000708:	f000 faad 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800070c:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 8000710:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000714:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 8000718:	4297      	cmp	r7, r2
 800071a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800071e:	803b      	strh	r3, [r7, #0]
 8000720:	d1f6      	bne.n	8000710 <_ZN4CRGB8rgb_readEh+0x14c>
 8000722:	4620      	mov	r0, r4
 8000724:	f000 fa49 	bl	8000bba <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000728:	f1b8 0f00 	cmp.w	r8, #0
 800072c:	d025      	beq.n	800077a <_ZN4CRGB8rgb_readEh+0x1b6>
 800072e:	2300      	movs	r3, #0
 8000730:	88a1      	ldrh	r1, [r4, #4]
 8000732:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 8000736:	440a      	add	r2, r1
 8000738:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 800073c:	89a1      	ldrh	r1, [r4, #12]
 800073e:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000742:	440a      	add	r2, r1
 8000744:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 8000748:	8aa1      	ldrh	r1, [r4, #20]
 800074a:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 800074e:	440a      	add	r2, r1
 8000750:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 8000754:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 8000756:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 800075a:	440a      	add	r2, r1
 800075c:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8000760:	8ba1      	ldrh	r1, [r4, #28]
 8000762:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 8000766:	3301      	adds	r3, #1
 8000768:	440a      	add	r2, r1
 800076a:	2b04      	cmp	r3, #4
 800076c:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8000770:	f104 0402 	add.w	r4, r4, #2
 8000774:	d1dc      	bne.n	8000730 <_ZN4CRGB8rgb_readEh+0x16c>
 8000776:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800077a:	4641      	mov	r1, r8
 800077c:	b672      	cpsid	i
 800077e:	88a3      	ldrh	r3, [r4, #4]
 8000780:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 8000784:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000788:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 800078c:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 8000790:	1a18      	subs	r0, r3, r0
 8000792:	89a3      	ldrh	r3, [r4, #12]
 8000794:	1a9a      	subs	r2, r3, r2
 8000796:	8aa3      	ldrh	r3, [r4, #20]
 8000798:	1b5b      	subs	r3, r3, r5
 800079a:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 800079c:	1bad      	subs	r5, r5, r6
 800079e:	84a5      	strh	r5, [r4, #36]	; 0x24
 80007a0:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 80007a4:	8ba5      	ldrh	r5, [r4, #28]
 80007a6:	b280      	uxth	r0, r0
 80007a8:	b292      	uxth	r2, r2
 80007aa:	b29b      	uxth	r3, r3
 80007ac:	1bad      	subs	r5, r5, r6
 80007ae:	80a0      	strh	r0, [r4, #4]
 80007b0:	81a2      	strh	r2, [r4, #12]
 80007b2:	82a3      	strh	r3, [r4, #20]
 80007b4:	83a5      	strh	r5, [r4, #28]
 80007b6:	b662      	cpsie	i
 80007b8:	b200      	sxth	r0, r0
 80007ba:	b212      	sxth	r2, r2
 80007bc:	1885      	adds	r5, r0, r2
 80007be:	b21b      	sxth	r3, r3
 80007c0:	18ed      	adds	r5, r5, r3
 80007c2:	d00e      	beq.n	80007e2 <_ZN4CRGB8rgb_readEh+0x21e>
 80007c4:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 80007c8:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 80007cc:	fb90 f0f5 	sdiv	r0, r0, r5
 80007d0:	fb92 f2f5 	sdiv	r2, r2, r5
 80007d4:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 80007d8:	85a0      	strh	r0, [r4, #44]	; 0x2c
 80007da:	fb93 f3f5 	sdiv	r3, r3, r5
 80007de:	86a2      	strh	r2, [r4, #52]	; 0x34
 80007e0:	87a3      	strh	r3, [r4, #60]	; 0x3c
 80007e2:	3101      	adds	r1, #1
 80007e4:	2904      	cmp	r1, #4
 80007e6:	f104 0402 	add.w	r4, r4, #2
 80007ea:	d1c7      	bne.n	800077c <_ZN4CRGB8rgb_readEh+0x1b8>
 80007ec:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080007f0 <_ZN4CRGB8rgb_initEv>:
 80007f0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007f2:	4606      	mov	r6, r0
 80007f4:	4635      	mov	r5, r6
 80007f6:	f000 f991 	bl	8000b1c <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80007fa:	4633      	mov	r3, r6
 80007fc:	2200      	movs	r2, #0
 80007fe:	3201      	adds	r2, #1
 8000800:	2400      	movs	r4, #0
 8000802:	2a04      	cmp	r2, #4
 8000804:	809c      	strh	r4, [r3, #4]
 8000806:	819c      	strh	r4, [r3, #12]
 8000808:	829c      	strh	r4, [r3, #20]
 800080a:	849c      	strh	r4, [r3, #36]	; 0x24
 800080c:	839c      	strh	r4, [r3, #28]
 800080e:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 8000812:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 8000816:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 800081a:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 800081e:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 8000822:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000824:	869c      	strh	r4, [r3, #52]	; 0x34
 8000826:	879c      	strh	r4, [r3, #60]	; 0x3c
 8000828:	f103 0302 	add.w	r3, r3, #2
 800082c:	d1e7      	bne.n	80007fe <_ZN4CRGB8rgb_initEv+0xe>
 800082e:	4630      	mov	r0, r6
 8000830:	2172      	movs	r1, #114	; 0x72
 8000832:	2281      	movs	r2, #129	; 0x81
 8000834:	23ff      	movs	r3, #255	; 0xff
 8000836:	f000 f9fe 	bl	8000c36 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800083a:	4630      	mov	r0, r6
 800083c:	2172      	movs	r1, #114	; 0x72
 800083e:	2283      	movs	r2, #131	; 0x83
 8000840:	23ff      	movs	r3, #255	; 0xff
 8000842:	f000 f9f8 	bl	8000c36 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000846:	4630      	mov	r0, r6
 8000848:	2172      	movs	r1, #114	; 0x72
 800084a:	228d      	movs	r2, #141	; 0x8d
 800084c:	4623      	mov	r3, r4
 800084e:	f000 f9f2 	bl	8000c36 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000852:	4630      	mov	r0, r6
 8000854:	2172      	movs	r1, #114	; 0x72
 8000856:	2280      	movs	r2, #128	; 0x80
 8000858:	2303      	movs	r3, #3
 800085a:	f000 f9ec 	bl	8000c36 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800085e:	228f      	movs	r2, #143	; 0x8f
 8000860:	2323      	movs	r3, #35	; 0x23
 8000862:	4630      	mov	r0, r6
 8000864:	2172      	movs	r1, #114	; 0x72
 8000866:	f000 f9e6 	bl	8000c36 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800086a:	af01      	add	r7, sp, #4
 800086c:	4630      	mov	r0, r6
 800086e:	4621      	mov	r1, r4
 8000870:	f7ff fea8 	bl	80005c4 <_ZN4CRGB8rgb_readEh>
 8000874:	463b      	mov	r3, r7
 8000876:	4630      	mov	r0, r6
 8000878:	2172      	movs	r1, #114	; 0x72
 800087a:	2292      	movs	r2, #146	; 0x92
 800087c:	f000 fa40 	bl	8000d00 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000880:	4623      	mov	r3, r4
 8000882:	5cfa      	ldrb	r2, [r7, r3]
 8000884:	2a69      	cmp	r2, #105	; 0x69
 8000886:	bf1c      	itt	ne
 8000888:	2201      	movne	r2, #1
 800088a:	409a      	lslne	r2, r3
 800088c:	f103 0301 	add.w	r3, r3, #1
 8000890:	bf18      	it	ne
 8000892:	4314      	orrne	r4, r2
 8000894:	2b04      	cmp	r3, #4
 8000896:	d1f4      	bne.n	8000882 <_ZN4CRGB8rgb_initEv+0x92>
 8000898:	461f      	mov	r7, r3
 800089a:	4630      	mov	r0, r6
 800089c:	2101      	movs	r1, #1
 800089e:	f7ff fe91 	bl	80005c4 <_ZN4CRGB8rgb_readEh>
 80008a2:	3f01      	subs	r7, #1
 80008a4:	d1f9      	bne.n	800089a <_ZN4CRGB8rgb_initEv+0xaa>
 80008a6:	2104      	movs	r1, #4
 80008a8:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 80008ac:	089b      	lsrs	r3, r3, #2
 80008ae:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 80008b2:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 80008b6:	089b      	lsrs	r3, r3, #2
 80008b8:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 80008bc:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 80008c0:	089b      	lsrs	r3, r3, #2
 80008c2:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 80008c6:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 80008ca:	089b      	lsrs	r3, r3, #2
 80008cc:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 80008d0:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 80008d4:	3901      	subs	r1, #1
 80008d6:	ea4f 0393 	mov.w	r3, r3, lsr #2
 80008da:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 80008de:	f105 0502 	add.w	r5, r5, #2
 80008e2:	d1e1      	bne.n	80008a8 <_ZN4CRGB8rgb_initEv+0xb8>
 80008e4:	4630      	mov	r0, r6
 80008e6:	f7ff fe6d 	bl	80005c4 <_ZN4CRGB8rgb_readEh>
 80008ea:	b114      	cbz	r4, 80008f2 <_ZN4CRGB8rgb_initEv+0x102>
 80008ec:	4802      	ldr	r0, [pc, #8]	; (80008f8 <_ZN4CRGB8rgb_initEv+0x108>)
 80008ee:	1b00      	subs	r0, r0, r4
 80008f0:	e000      	b.n	80008f4 <_ZN4CRGB8rgb_initEv+0x104>
 80008f2:	4620      	mov	r0, r4
 80008f4:	b003      	add	sp, #12
 80008f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80008f8:	fffffc18 	.word	0xfffffc18

080008fc <_ZN4CRGB14get_rgb_resultEv>:
 80008fc:	3004      	adds	r0, #4
 80008fe:	4770      	bx	lr

08000900 <_ZN6CMotor11motor_sleepEv>:
 8000900:	b510      	push	{r4, lr}
 8000902:	4c07      	ldr	r4, [pc, #28]	; (8000920 <_ZN6CMotor11motor_sleepEv+0x20>)
 8000904:	21c0      	movs	r1, #192	; 0xc0
 8000906:	4620      	mov	r0, r4
 8000908:	2200      	movs	r2, #0
 800090a:	2318      	movs	r3, #24
 800090c:	f000 fadc 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8000910:	4620      	mov	r0, r4
 8000912:	21c2      	movs	r1, #194	; 0xc2
 8000914:	2200      	movs	r2, #0
 8000916:	2318      	movs	r3, #24
 8000918:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800091c:	f000 bad4 	b.w	8000ec8 <_ZN4CI2C9write_regEhhh>
 8000920:	2000015c 	.word	0x2000015c

08000924 <_ZN6CMotor13motor_refreshEv>:
 8000924:	b570      	push	{r4, r5, r6, lr}
 8000926:	e890 0030 	ldmia.w	r0, {r4, r5}
 800092a:	2c2c      	cmp	r4, #44	; 0x2c
 800092c:	dc74      	bgt.n	8000a18 <_ZN6CMotor13motor_refreshEv+0xf4>
 800092e:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000932:	db11      	blt.n	8000958 <_ZN6CMotor13motor_refreshEv+0x34>
 8000934:	2d2c      	cmp	r5, #44	; 0x2c
 8000936:	dc5e      	bgt.n	80009f6 <_ZN6CMotor13motor_refreshEv+0xd2>
 8000938:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 800093c:	db33      	blt.n	80009a6 <_ZN6CMotor13motor_refreshEv+0x82>
 800093e:	b1dc      	cbz	r4, 8000978 <_ZN6CMotor13motor_refreshEv+0x54>
 8000940:	e001      	b.n	8000946 <_ZN6CMotor13motor_refreshEv+0x22>
 8000942:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000946:	2c00      	cmp	r4, #0
 8000948:	dd0d      	ble.n	8000966 <_ZN6CMotor13motor_refreshEv+0x42>
 800094a:	2c06      	cmp	r4, #6
 800094c:	bfb8      	it	lt
 800094e:	2406      	movlt	r4, #6
 8000950:	00a4      	lsls	r4, r4, #2
 8000952:	f044 0402 	orr.w	r4, r4, #2
 8000956:	e00d      	b.n	8000974 <_ZN6CMotor13motor_refreshEv+0x50>
 8000958:	2d2c      	cmp	r5, #44	; 0x2c
 800095a:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 800095e:	dc60      	bgt.n	8000a22 <_ZN6CMotor13motor_refreshEv+0xfe>
 8000960:	42a5      	cmp	r5, r4
 8000962:	bfb8      	it	lt
 8000964:	4625      	movlt	r5, r4
 8000966:	4264      	negs	r4, r4
 8000968:	2c06      	cmp	r4, #6
 800096a:	bfb8      	it	lt
 800096c:	2406      	movlt	r4, #6
 800096e:	00a4      	lsls	r4, r4, #2
 8000970:	f044 0401 	orr.w	r4, r4, #1
 8000974:	b2e4      	uxtb	r4, r4
 8000976:	e000      	b.n	800097a <_ZN6CMotor13motor_refreshEv+0x56>
 8000978:	241b      	movs	r4, #27
 800097a:	2200      	movs	r2, #0
 800097c:	4613      	mov	r3, r2
 800097e:	482a      	ldr	r0, [pc, #168]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000980:	21c0      	movs	r1, #192	; 0xc0
 8000982:	f000 faa1 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8000986:	4828      	ldr	r0, [pc, #160]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000988:	21c0      	movs	r1, #192	; 0xc0
 800098a:	2200      	movs	r2, #0
 800098c:	4623      	mov	r3, r4
 800098e:	f000 fa9b 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8000992:	2d00      	cmp	r5, #0
 8000994:	d020      	beq.n	80009d8 <_ZN6CMotor13motor_refreshEv+0xb4>
 8000996:	dd16      	ble.n	80009c6 <_ZN6CMotor13motor_refreshEv+0xa2>
 8000998:	2d06      	cmp	r5, #6
 800099a:	bfb8      	it	lt
 800099c:	2506      	movlt	r5, #6
 800099e:	00ad      	lsls	r5, r5, #2
 80009a0:	f045 0501 	orr.w	r5, r5, #1
 80009a4:	e016      	b.n	80009d4 <_ZN6CMotor13motor_refreshEv+0xb0>
 80009a6:	2c00      	cmp	r4, #0
 80009a8:	d1cb      	bne.n	8000942 <_ZN6CMotor13motor_refreshEv+0x1e>
 80009aa:	481f      	ldr	r0, [pc, #124]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009ac:	21c0      	movs	r1, #192	; 0xc0
 80009ae:	4622      	mov	r2, r4
 80009b0:	4623      	mov	r3, r4
 80009b2:	f000 fa89 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 80009b6:	481c      	ldr	r0, [pc, #112]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009b8:	21c0      	movs	r1, #192	; 0xc0
 80009ba:	4622      	mov	r2, r4
 80009bc:	231b      	movs	r3, #27
 80009be:	f000 fa83 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 80009c2:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 80009c6:	426d      	negs	r5, r5
 80009c8:	2d06      	cmp	r5, #6
 80009ca:	bfb8      	it	lt
 80009cc:	2506      	movlt	r5, #6
 80009ce:	00ad      	lsls	r5, r5, #2
 80009d0:	f045 0502 	orr.w	r5, r5, #2
 80009d4:	b2ed      	uxtb	r5, r5
 80009d6:	e000      	b.n	80009da <_ZN6CMotor13motor_refreshEv+0xb6>
 80009d8:	251b      	movs	r5, #27
 80009da:	2200      	movs	r2, #0
 80009dc:	4613      	mov	r3, r2
 80009de:	4812      	ldr	r0, [pc, #72]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009e0:	21c2      	movs	r1, #194	; 0xc2
 80009e2:	f000 fa71 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 80009e6:	462b      	mov	r3, r5
 80009e8:	480f      	ldr	r0, [pc, #60]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009ea:	21c2      	movs	r1, #194	; 0xc2
 80009ec:	2200      	movs	r2, #0
 80009ee:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009f2:	f000 ba69 	b.w	8000ec8 <_ZN4CI2C9write_regEhhh>
 80009f6:	b96c      	cbnz	r4, 8000a14 <_ZN6CMotor13motor_refreshEv+0xf0>
 80009f8:	480b      	ldr	r0, [pc, #44]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009fa:	21c0      	movs	r1, #192	; 0xc0
 80009fc:	4622      	mov	r2, r4
 80009fe:	4623      	mov	r3, r4
 8000a00:	f000 fa62 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8000a04:	4808      	ldr	r0, [pc, #32]	; (8000a28 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000a06:	21c0      	movs	r1, #192	; 0xc0
 8000a08:	4622      	mov	r2, r4
 8000a0a:	231b      	movs	r3, #27
 8000a0c:	f000 fa5c 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8000a10:	252c      	movs	r5, #44	; 0x2c
 8000a12:	e7c4      	b.n	800099e <_ZN6CMotor13motor_refreshEv+0x7a>
 8000a14:	252c      	movs	r5, #44	; 0x2c
 8000a16:	e796      	b.n	8000946 <_ZN6CMotor13motor_refreshEv+0x22>
 8000a18:	242c      	movs	r4, #44	; 0x2c
 8000a1a:	42a5      	cmp	r5, r4
 8000a1c:	dd8c      	ble.n	8000938 <_ZN6CMotor13motor_refreshEv+0x14>
 8000a1e:	4625      	mov	r5, r4
 8000a20:	e796      	b.n	8000950 <_ZN6CMotor13motor_refreshEv+0x2c>
 8000a22:	252c      	movs	r5, #44	; 0x2c
 8000a24:	e79f      	b.n	8000966 <_ZN6CMotor13motor_refreshEv+0x42>
 8000a26:	bf00      	nop
 8000a28:	2000015c 	.word	0x2000015c

08000a2c <_ZN6CMotor9set_motorEml>:
 8000a2c:	2901      	cmp	r1, #1
 8000a2e:	bf98      	it	ls
 8000a30:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000a34:	f7ff bf76 	b.w	8000924 <_ZN6CMotor13motor_refreshEv>

08000a38 <_ZN6CMotor10motor_initEv>:
 8000a38:	b510      	push	{r4, lr}
 8000a3a:	2100      	movs	r1, #0
 8000a3c:	4604      	mov	r4, r0
 8000a3e:	460a      	mov	r2, r1
 8000a40:	f7ff fff4 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 8000a44:	4620      	mov	r0, r4
 8000a46:	2101      	movs	r1, #1
 8000a48:	2200      	movs	r2, #0
 8000a4a:	f7ff ffef 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 8000a4e:	4620      	mov	r0, r4
 8000a50:	f7ff ff68 	bl	8000924 <_ZN6CMotor13motor_refreshEv>
 8000a54:	2000      	movs	r0, #0
 8000a56:	bd10      	pop	{r4, pc}

08000a58 <_ZN8CSensors12sensors_initEv>:
 8000a58:	b510      	push	{r4, lr}
 8000a5a:	4604      	mov	r4, r0
 8000a5c:	4808      	ldr	r0, [pc, #32]	; (8000a80 <_ZN8CSensors12sensors_initEv+0x28>)
 8000a5e:	f000 f9b1 	bl	8000dc4 <_ZN4CI2C4initEv>
 8000a62:	4620      	mov	r0, r4
 8000a64:	f7ff fec4 	bl	80007f0 <_ZN4CRGB8rgb_initEv>
 8000a68:	b110      	cbz	r0, 8000a70 <_ZN8CSensors12sensors_initEv+0x18>
 8000a6a:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000a6e:	bd10      	pop	{r4, pc}
 8000a70:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8000a74:	f000 fb36 	bl	80010e4 <_ZN4CIMU8imu_initEv>
 8000a78:	b108      	cbz	r0, 8000a7e <_ZN8CSensors12sensors_initEv+0x26>
 8000a7a:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000a7e:	bd10      	pop	{r4, pc}
 8000a80:	2000015c 	.word	0x2000015c

08000a84 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000a84:	2365      	movs	r3, #101	; 0x65
 8000a86:	3b01      	subs	r3, #1
 8000a88:	d001      	beq.n	8000a8e <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000a8a:	bf00      	nop
 8000a8c:	e7fb      	b.n	8000a86 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000a8e:	4770      	bx	lr

08000a90 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000a90:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000a92:	2301      	movs	r3, #1
 8000a94:	2203      	movs	r2, #3
 8000a96:	4605      	mov	r5, r0
 8000a98:	24f0      	movs	r4, #240	; 0xf0
 8000a9a:	f88d 3004 	strb.w	r3, [sp, #4]
 8000a9e:	f88d 3006 	strb.w	r3, [sp, #6]
 8000aa2:	4669      	mov	r1, sp
 8000aa4:	2300      	movs	r3, #0
 8000aa6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000aaa:	f88d 2005 	strb.w	r2, [sp, #5]
 8000aae:	f88d 3007 	strb.w	r3, [sp, #7]
 8000ab2:	9400      	str	r4, [sp, #0]
 8000ab4:	f001 faf6 	bl	80020a4 <GPIO_Init>
 8000ab8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000abc:	4628      	mov	r0, r5
 8000abe:	851c      	strh	r4, [r3, #40]	; 0x28
 8000ac0:	f7ff ffe0 	bl	8000a84 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000ac4:	b003      	add	sp, #12
 8000ac6:	bd30      	pop	{r4, r5, pc}

08000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000ac8:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000aca:	2300      	movs	r3, #0
 8000acc:	2203      	movs	r2, #3
 8000ace:	4605      	mov	r5, r0
 8000ad0:	24f0      	movs	r4, #240	; 0xf0
 8000ad2:	4669      	mov	r1, sp
 8000ad4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ad8:	f88d 3004 	strb.w	r3, [sp, #4]
 8000adc:	f88d 2005 	strb.w	r2, [sp, #5]
 8000ae0:	f88d 3007 	strb.w	r3, [sp, #7]
 8000ae4:	9400      	str	r4, [sp, #0]
 8000ae6:	f001 fadd 	bl	80020a4 <GPIO_Init>
 8000aea:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000aee:	4628      	mov	r0, r5
 8000af0:	619c      	str	r4, [r3, #24]
 8000af2:	f7ff ffc7 	bl	8000a84 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000af6:	b003      	add	sp, #12
 8000af8:	bd30      	pop	{r4, r5, pc}
	...

08000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000afc:	4b02      	ldr	r3, [pc, #8]	; (8000b08 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000afe:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000b02:	851a      	strh	r2, [r3, #40]	; 0x28
 8000b04:	f7ff bfbe 	b.w	8000a84 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000b08:	48000800 	.word	0x48000800

08000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000b0c:	4b02      	ldr	r3, [pc, #8]	; (8000b18 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000b0e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000b12:	619a      	str	r2, [r3, #24]
 8000b14:	f7ff bfb6 	b.w	8000a84 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000b18:	48000800 	.word	0x48000800

08000b1c <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000b1c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000b1e:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000b22:	4605      	mov	r5, r0
 8000b24:	2400      	movs	r4, #0
 8000b26:	9300      	str	r3, [sp, #0]
 8000b28:	2703      	movs	r7, #3
 8000b2a:	2301      	movs	r3, #1
 8000b2c:	4817      	ldr	r0, [pc, #92]	; (8000b8c <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8000b2e:	f88d 3004 	strb.w	r3, [sp, #4]
 8000b32:	4669      	mov	r1, sp
 8000b34:	26f0      	movs	r6, #240	; 0xf0
 8000b36:	f88d 7005 	strb.w	r7, [sp, #5]
 8000b3a:	f88d 4006 	strb.w	r4, [sp, #6]
 8000b3e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b42:	f001 faaf 	bl	80020a4 <GPIO_Init>
 8000b46:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b4a:	4669      	mov	r1, sp
 8000b4c:	9600      	str	r6, [sp, #0]
 8000b4e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b52:	f88d 7005 	strb.w	r7, [sp, #5]
 8000b56:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b5a:	f001 faa3 	bl	80020a4 <GPIO_Init>
 8000b5e:	4631      	mov	r1, r6
 8000b60:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b64:	f001 fae0 	bl	8002128 <GPIO_SetBits>
 8000b68:	4628      	mov	r0, r5
 8000b6a:	f7ff ffcf 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b6e:	4628      	mov	r0, r5
 8000b70:	f7ff ff8e 	bl	8000a90 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b74:	4628      	mov	r0, r5
 8000b76:	f7ff ffa7 	bl	8000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b7a:	f242 7311 	movw	r3, #10001	; 0x2711
 8000b7e:	3b01      	subs	r3, #1
 8000b80:	d001      	beq.n	8000b86 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 8000b82:	bf00      	nop
 8000b84:	e7fb      	b.n	8000b7e <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 8000b86:	b003      	add	sp, #12
 8000b88:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b8a:	bf00      	nop
 8000b8c:	48000800 	.word	0x48000800

08000b90 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000b90:	b510      	push	{r4, lr}
 8000b92:	4604      	mov	r4, r0
 8000b94:	f7ff ffba 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b98:	4620      	mov	r0, r4
 8000b9a:	f7ff ff95 	bl	8000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b9e:	4620      	mov	r0, r4
 8000ba0:	f7ff ffb4 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000ba4:	4620      	mov	r0, r4
 8000ba6:	f7ff ff73 	bl	8000a90 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000baa:	4620      	mov	r0, r4
 8000bac:	f7ff ffa6 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000bb0:	4620      	mov	r0, r4
 8000bb2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000bb6:	f7ff bf87 	b.w	8000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000bba <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000bba:	b510      	push	{r4, lr}
 8000bbc:	4604      	mov	r4, r0
 8000bbe:	f7ff ff9d 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000bc2:	4620      	mov	r0, r4
 8000bc4:	f7ff ff64 	bl	8000a90 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000bc8:	4620      	mov	r0, r4
 8000bca:	f7ff ff9f 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000bce:	4620      	mov	r0, r4
 8000bd0:	f7ff ff5e 	bl	8000a90 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000bd4:	4620      	mov	r0, r4
 8000bd6:	f7ff ff99 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000bda:	4620      	mov	r0, r4
 8000bdc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000be0:	f7ff bf72 	b.w	8000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000be4:	b570      	push	{r4, r5, r6, lr}
 8000be6:	4604      	mov	r4, r0
 8000be8:	460e      	mov	r6, r1
 8000bea:	2508      	movs	r5, #8
 8000bec:	4620      	mov	r0, r4
 8000bee:	f7ff ff85 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000bf2:	0633      	lsls	r3, r6, #24
 8000bf4:	4620      	mov	r0, r4
 8000bf6:	d502      	bpl.n	8000bfe <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000bf8:	f7ff ff66 	bl	8000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000bfc:	e001      	b.n	8000c02 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000bfe:	f7ff ff47 	bl	8000a90 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c02:	4620      	mov	r0, r4
 8000c04:	3d01      	subs	r5, #1
 8000c06:	f7ff ff81 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c0a:	0076      	lsls	r6, r6, #1
 8000c0c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000c10:	b2f6      	uxtb	r6, r6
 8000c12:	d1eb      	bne.n	8000bec <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000c14:	4620      	mov	r0, r4
 8000c16:	f7ff ff71 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c1a:	4620      	mov	r0, r4
 8000c1c:	f7ff ff54 	bl	8000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000c20:	4620      	mov	r0, r4
 8000c22:	f7ff ff73 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c26:	4620      	mov	r0, r4
 8000c28:	f7ff ff68 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c2c:	4620      	mov	r0, r4
 8000c2e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c32:	f7ff bf27 	b.w	8000a84 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000c36 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000c36:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000c38:	4604      	mov	r4, r0
 8000c3a:	460f      	mov	r7, r1
 8000c3c:	4616      	mov	r6, r2
 8000c3e:	461d      	mov	r5, r3
 8000c40:	f7ff ffa6 	bl	8000b90 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000c44:	4620      	mov	r0, r4
 8000c46:	4639      	mov	r1, r7
 8000c48:	f7ff ffcc 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c4c:	4620      	mov	r0, r4
 8000c4e:	4631      	mov	r1, r6
 8000c50:	f7ff ffc8 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c54:	4620      	mov	r0, r4
 8000c56:	4629      	mov	r1, r5
 8000c58:	f7ff ffc4 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c5c:	4620      	mov	r0, r4
 8000c5e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000c62:	f7ff bfaa 	b.w	8000bba <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000c66:	2300      	movs	r3, #0
 8000c68:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000c6c:	4605      	mov	r5, r0
 8000c6e:	7013      	strb	r3, [r2, #0]
 8000c70:	7053      	strb	r3, [r2, #1]
 8000c72:	7093      	strb	r3, [r2, #2]
 8000c74:	70d3      	strb	r3, [r2, #3]
 8000c76:	460e      	mov	r6, r1
 8000c78:	4614      	mov	r4, r2
 8000c7a:	1cd7      	adds	r7, r2, #3
 8000c7c:	f7ff ff3e 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c80:	4628      	mov	r0, r5
 8000c82:	f7ff ff21 	bl	8000ac8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000c86:	f04f 0808 	mov.w	r8, #8
 8000c8a:	1e63      	subs	r3, r4, #1
 8000c8c:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000c90:	0052      	lsls	r2, r2, #1
 8000c92:	42bb      	cmp	r3, r7
 8000c94:	701a      	strb	r2, [r3, #0]
 8000c96:	d1f9      	bne.n	8000c8c <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000c98:	4628      	mov	r0, r5
 8000c9a:	f7ff ff37 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c9e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ca2:	8a1b      	ldrh	r3, [r3, #16]
 8000ca4:	b29b      	uxth	r3, r3
 8000ca6:	06d8      	lsls	r0, r3, #27
 8000ca8:	bf42      	ittt	mi
 8000caa:	7822      	ldrbmi	r2, [r4, #0]
 8000cac:	f042 0201 	orrmi.w	r2, r2, #1
 8000cb0:	7022      	strbmi	r2, [r4, #0]
 8000cb2:	0699      	lsls	r1, r3, #26
 8000cb4:	bf42      	ittt	mi
 8000cb6:	7862      	ldrbmi	r2, [r4, #1]
 8000cb8:	f042 0201 	orrmi.w	r2, r2, #1
 8000cbc:	7062      	strbmi	r2, [r4, #1]
 8000cbe:	065a      	lsls	r2, r3, #25
 8000cc0:	bf42      	ittt	mi
 8000cc2:	78a2      	ldrbmi	r2, [r4, #2]
 8000cc4:	f042 0201 	orrmi.w	r2, r2, #1
 8000cc8:	70a2      	strbmi	r2, [r4, #2]
 8000cca:	061b      	lsls	r3, r3, #24
 8000ccc:	bf42      	ittt	mi
 8000cce:	78e3      	ldrbmi	r3, [r4, #3]
 8000cd0:	f043 0301 	orrmi.w	r3, r3, #1
 8000cd4:	70e3      	strbmi	r3, [r4, #3]
 8000cd6:	4628      	mov	r0, r5
 8000cd8:	f7ff ff10 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000cdc:	f1b8 0801 	subs.w	r8, r8, #1
 8000ce0:	d1d3      	bne.n	8000c8a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000ce2:	b116      	cbz	r6, 8000cea <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000ce4:	4628      	mov	r0, r5
 8000ce6:	f7ff fed3 	bl	8000a90 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000cea:	4628      	mov	r0, r5
 8000cec:	f7ff ff0e 	bl	8000b0c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cf0:	4628      	mov	r0, r5
 8000cf2:	f7ff ff03 	bl	8000afc <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000cf6:	4628      	mov	r0, r5
 8000cf8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000cfc:	f7ff bec2 	b.w	8000a84 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000d00 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000d00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d02:	4604      	mov	r4, r0
 8000d04:	460d      	mov	r5, r1
 8000d06:	4617      	mov	r7, r2
 8000d08:	461e      	mov	r6, r3
 8000d0a:	f7ff ff41 	bl	8000b90 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000d0e:	4620      	mov	r0, r4
 8000d10:	4629      	mov	r1, r5
 8000d12:	f7ff ff67 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000d16:	4639      	mov	r1, r7
 8000d18:	4620      	mov	r0, r4
 8000d1a:	f7ff ff63 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000d1e:	4620      	mov	r0, r4
 8000d20:	f7ff ff36 	bl	8000b90 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000d24:	4620      	mov	r0, r4
 8000d26:	f045 0101 	orr.w	r1, r5, #1
 8000d2a:	f7ff ff5b 	bl	8000be4 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000d2e:	4620      	mov	r0, r4
 8000d30:	4632      	mov	r2, r6
 8000d32:	2100      	movs	r1, #0
 8000d34:	f7ff ff97 	bl	8000c66 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000d38:	4620      	mov	r0, r4
 8000d3a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000d3e:	f7ff bf3c 	b.w	8000bba <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000d42 <_ZN4CI2C5delayEv>:
 8000d42:	230b      	movs	r3, #11
 8000d44:	3b01      	subs	r3, #1
 8000d46:	d001      	beq.n	8000d4c <_ZN4CI2C5delayEv+0xa>
 8000d48:	bf00      	nop
 8000d4a:	e7fb      	b.n	8000d44 <_ZN4CI2C5delayEv+0x2>
 8000d4c:	4770      	bx	lr
	...

08000d50 <_ZN4CI2C9SetLowSDAEv>:
 8000d50:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000d52:	4c0c      	ldr	r4, [pc, #48]	; (8000d84 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000d54:	2301      	movs	r3, #1
 8000d56:	2203      	movs	r2, #3
 8000d58:	4606      	mov	r6, r0
 8000d5a:	2580      	movs	r5, #128	; 0x80
 8000d5c:	f88d 3004 	strb.w	r3, [sp, #4]
 8000d60:	f88d 3006 	strb.w	r3, [sp, #6]
 8000d64:	4620      	mov	r0, r4
 8000d66:	2300      	movs	r3, #0
 8000d68:	4669      	mov	r1, sp
 8000d6a:	f88d 2005 	strb.w	r2, [sp, #5]
 8000d6e:	f88d 3007 	strb.w	r3, [sp, #7]
 8000d72:	9500      	str	r5, [sp, #0]
 8000d74:	f001 f996 	bl	80020a4 <GPIO_Init>
 8000d78:	8525      	strh	r5, [r4, #40]	; 0x28
 8000d7a:	4630      	mov	r0, r6
 8000d7c:	f7ff ffe1 	bl	8000d42 <_ZN4CI2C5delayEv>
 8000d80:	b002      	add	sp, #8
 8000d82:	bd70      	pop	{r4, r5, r6, pc}
 8000d84:	48000400 	.word	0x48000400

08000d88 <_ZN4CI2C10SetHighSDAEv>:
 8000d88:	4b05      	ldr	r3, [pc, #20]	; (8000da0 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000d8a:	681a      	ldr	r2, [r3, #0]
 8000d8c:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000d90:	601a      	str	r2, [r3, #0]
 8000d92:	681a      	ldr	r2, [r3, #0]
 8000d94:	601a      	str	r2, [r3, #0]
 8000d96:	2280      	movs	r2, #128	; 0x80
 8000d98:	619a      	str	r2, [r3, #24]
 8000d9a:	f7ff bfd2 	b.w	8000d42 <_ZN4CI2C5delayEv>
 8000d9e:	bf00      	nop
 8000da0:	48000400 	.word	0x48000400

08000da4 <_ZN4CI2C9SetLowSCLEv>:
 8000da4:	4b02      	ldr	r3, [pc, #8]	; (8000db0 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000da6:	2240      	movs	r2, #64	; 0x40
 8000da8:	851a      	strh	r2, [r3, #40]	; 0x28
 8000daa:	f7ff bfca 	b.w	8000d42 <_ZN4CI2C5delayEv>
 8000dae:	bf00      	nop
 8000db0:	48000400 	.word	0x48000400

08000db4 <_ZN4CI2C10SetHighSCLEv>:
 8000db4:	4b02      	ldr	r3, [pc, #8]	; (8000dc0 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000db6:	2240      	movs	r2, #64	; 0x40
 8000db8:	619a      	str	r2, [r3, #24]
 8000dba:	f7ff bfc2 	b.w	8000d42 <_ZN4CI2C5delayEv>
 8000dbe:	bf00      	nop
 8000dc0:	48000400 	.word	0x48000400

08000dc4 <_ZN4CI2C4initEv>:
 8000dc4:	b513      	push	{r0, r1, r4, lr}
 8000dc6:	4604      	mov	r4, r0
 8000dc8:	2101      	movs	r1, #1
 8000dca:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000dce:	f000 ff61 	bl	8001c94 <RCC_AHBPeriphClockCmd>
 8000dd2:	23c0      	movs	r3, #192	; 0xc0
 8000dd4:	9300      	str	r3, [sp, #0]
 8000dd6:	2301      	movs	r3, #1
 8000dd8:	2203      	movs	r2, #3
 8000dda:	4669      	mov	r1, sp
 8000ddc:	f88d 3004 	strb.w	r3, [sp, #4]
 8000de0:	f88d 3006 	strb.w	r3, [sp, #6]
 8000de4:	4809      	ldr	r0, [pc, #36]	; (8000e0c <_ZN4CI2C4initEv+0x48>)
 8000de6:	f88d 2005 	strb.w	r2, [sp, #5]
 8000dea:	2300      	movs	r3, #0
 8000dec:	f88d 3007 	strb.w	r3, [sp, #7]
 8000df0:	f001 f958 	bl	80020a4 <GPIO_Init>
 8000df4:	4620      	mov	r0, r4
 8000df6:	f7ff ffdd 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000dfa:	4620      	mov	r0, r4
 8000dfc:	f7ff ffa8 	bl	8000d50 <_ZN4CI2C9SetLowSDAEv>
 8000e00:	4620      	mov	r0, r4
 8000e02:	f7ff ffc1 	bl	8000d88 <_ZN4CI2C10SetHighSDAEv>
 8000e06:	b002      	add	sp, #8
 8000e08:	bd10      	pop	{r4, pc}
 8000e0a:	bf00      	nop
 8000e0c:	48000400 	.word	0x48000400

08000e10 <_ZN4CI2C5StartEv>:
 8000e10:	b510      	push	{r4, lr}
 8000e12:	4604      	mov	r4, r0
 8000e14:	f7ff ffce 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000e18:	4620      	mov	r0, r4
 8000e1a:	f7ff ffb5 	bl	8000d88 <_ZN4CI2C10SetHighSDAEv>
 8000e1e:	4620      	mov	r0, r4
 8000e20:	f7ff ffc8 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000e24:	4620      	mov	r0, r4
 8000e26:	f7ff ff93 	bl	8000d50 <_ZN4CI2C9SetLowSDAEv>
 8000e2a:	4620      	mov	r0, r4
 8000e2c:	f7ff ffba 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000e30:	4620      	mov	r0, r4
 8000e32:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e36:	f7ff bfa7 	b.w	8000d88 <_ZN4CI2C10SetHighSDAEv>

08000e3a <_ZN4CI2C4StopEv>:
 8000e3a:	b510      	push	{r4, lr}
 8000e3c:	4604      	mov	r4, r0
 8000e3e:	f7ff ffb1 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000e42:	4620      	mov	r0, r4
 8000e44:	f7ff ff84 	bl	8000d50 <_ZN4CI2C9SetLowSDAEv>
 8000e48:	4620      	mov	r0, r4
 8000e4a:	f7ff ffb3 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000e4e:	4620      	mov	r0, r4
 8000e50:	f7ff ff7e 	bl	8000d50 <_ZN4CI2C9SetLowSDAEv>
 8000e54:	4620      	mov	r0, r4
 8000e56:	f7ff ffad 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000e5a:	4620      	mov	r0, r4
 8000e5c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e60:	f7ff bf92 	b.w	8000d88 <_ZN4CI2C10SetHighSDAEv>

08000e64 <_ZN4CI2C5WriteEh>:
 8000e64:	b570      	push	{r4, r5, r6, lr}
 8000e66:	4604      	mov	r4, r0
 8000e68:	460e      	mov	r6, r1
 8000e6a:	2508      	movs	r5, #8
 8000e6c:	4620      	mov	r0, r4
 8000e6e:	f7ff ff99 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000e72:	0633      	lsls	r3, r6, #24
 8000e74:	4620      	mov	r0, r4
 8000e76:	d502      	bpl.n	8000e7e <_ZN4CI2C5WriteEh+0x1a>
 8000e78:	f7ff ff86 	bl	8000d88 <_ZN4CI2C10SetHighSDAEv>
 8000e7c:	e001      	b.n	8000e82 <_ZN4CI2C5WriteEh+0x1e>
 8000e7e:	f7ff ff67 	bl	8000d50 <_ZN4CI2C9SetLowSDAEv>
 8000e82:	4620      	mov	r0, r4
 8000e84:	3d01      	subs	r5, #1
 8000e86:	f7ff ff95 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000e8a:	0076      	lsls	r6, r6, #1
 8000e8c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000e90:	b2f6      	uxtb	r6, r6
 8000e92:	d1eb      	bne.n	8000e6c <_ZN4CI2C5WriteEh+0x8>
 8000e94:	4620      	mov	r0, r4
 8000e96:	f7ff ff85 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000e9a:	4620      	mov	r0, r4
 8000e9c:	f7ff ff74 	bl	8000d88 <_ZN4CI2C10SetHighSDAEv>
 8000ea0:	4620      	mov	r0, r4
 8000ea2:	f7ff ff87 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000ea6:	4b07      	ldr	r3, [pc, #28]	; (8000ec4 <_ZN4CI2C5WriteEh+0x60>)
 8000ea8:	8a1d      	ldrh	r5, [r3, #16]
 8000eaa:	4620      	mov	r0, r4
 8000eac:	f7ff ff7a 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000eb0:	b2ad      	uxth	r5, r5
 8000eb2:	4620      	mov	r0, r4
 8000eb4:	f7ff ff45 	bl	8000d42 <_ZN4CI2C5delayEv>
 8000eb8:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8000ebc:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000ec0:	bd70      	pop	{r4, r5, r6, pc}
 8000ec2:	bf00      	nop
 8000ec4:	48000400 	.word	0x48000400

08000ec8 <_ZN4CI2C9write_regEhhh>:
 8000ec8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000eca:	4604      	mov	r4, r0
 8000ecc:	460f      	mov	r7, r1
 8000ece:	4616      	mov	r6, r2
 8000ed0:	461d      	mov	r5, r3
 8000ed2:	f7ff ff9d 	bl	8000e10 <_ZN4CI2C5StartEv>
 8000ed6:	4639      	mov	r1, r7
 8000ed8:	4620      	mov	r0, r4
 8000eda:	f7ff ffc3 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000ede:	4631      	mov	r1, r6
 8000ee0:	4620      	mov	r0, r4
 8000ee2:	f7ff ffbf 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000ee6:	4620      	mov	r0, r4
 8000ee8:	4629      	mov	r1, r5
 8000eea:	f7ff ffbb 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000eee:	4620      	mov	r0, r4
 8000ef0:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000ef4:	f7ff bfa1 	b.w	8000e3a <_ZN4CI2C4StopEv>

08000ef8 <_ZN4CI2C4ReadEh>:
 8000ef8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000efa:	4605      	mov	r5, r0
 8000efc:	460f      	mov	r7, r1
 8000efe:	f7ff ff51 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000f02:	2608      	movs	r6, #8
 8000f04:	2400      	movs	r4, #0
 8000f06:	4628      	mov	r0, r5
 8000f08:	f7ff ff54 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000f0c:	4b10      	ldr	r3, [pc, #64]	; (8000f50 <_ZN4CI2C4ReadEh+0x58>)
 8000f0e:	8a1b      	ldrh	r3, [r3, #16]
 8000f10:	0064      	lsls	r4, r4, #1
 8000f12:	061b      	lsls	r3, r3, #24
 8000f14:	b2e4      	uxtb	r4, r4
 8000f16:	4628      	mov	r0, r5
 8000f18:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000f1c:	bf48      	it	mi
 8000f1e:	f044 0401 	orrmi.w	r4, r4, #1
 8000f22:	f7ff ff3f 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000f26:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000f2a:	d1ec      	bne.n	8000f06 <_ZN4CI2C4ReadEh+0xe>
 8000f2c:	4628      	mov	r0, r5
 8000f2e:	b117      	cbz	r7, 8000f36 <_ZN4CI2C4ReadEh+0x3e>
 8000f30:	f7ff ff0e 	bl	8000d50 <_ZN4CI2C9SetLowSDAEv>
 8000f34:	e001      	b.n	8000f3a <_ZN4CI2C4ReadEh+0x42>
 8000f36:	f7ff ff27 	bl	8000d88 <_ZN4CI2C10SetHighSDAEv>
 8000f3a:	4628      	mov	r0, r5
 8000f3c:	f7ff ff3a 	bl	8000db4 <_ZN4CI2C10SetHighSCLEv>
 8000f40:	4628      	mov	r0, r5
 8000f42:	f7ff ff2f 	bl	8000da4 <_ZN4CI2C9SetLowSCLEv>
 8000f46:	4628      	mov	r0, r5
 8000f48:	f7ff ff1e 	bl	8000d88 <_ZN4CI2C10SetHighSDAEv>
 8000f4c:	4620      	mov	r0, r4
 8000f4e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000f50:	48000400 	.word	0x48000400

08000f54 <_ZN4CI2C8read_regEhh>:
 8000f54:	b570      	push	{r4, r5, r6, lr}
 8000f56:	4604      	mov	r4, r0
 8000f58:	460d      	mov	r5, r1
 8000f5a:	4616      	mov	r6, r2
 8000f5c:	f7ff ff58 	bl	8000e10 <_ZN4CI2C5StartEv>
 8000f60:	4629      	mov	r1, r5
 8000f62:	4620      	mov	r0, r4
 8000f64:	f7ff ff7e 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000f68:	4631      	mov	r1, r6
 8000f6a:	4620      	mov	r0, r4
 8000f6c:	f7ff ff7a 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000f70:	4620      	mov	r0, r4
 8000f72:	f7ff ff4d 	bl	8000e10 <_ZN4CI2C5StartEv>
 8000f76:	f045 0101 	orr.w	r1, r5, #1
 8000f7a:	4620      	mov	r0, r4
 8000f7c:	f7ff ff72 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000f80:	2100      	movs	r1, #0
 8000f82:	4620      	mov	r0, r4
 8000f84:	f7ff ffb8 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8000f88:	4605      	mov	r5, r0
 8000f8a:	4620      	mov	r0, r4
 8000f8c:	f7ff ff55 	bl	8000e3a <_ZN4CI2C4StopEv>
 8000f90:	4628      	mov	r0, r5
 8000f92:	bd70      	pop	{r4, r5, r6, pc}

08000f94 <_ZN4CIMU8imu_readEv>:
 8000f94:	b570      	push	{r4, r5, r6, lr}
 8000f96:	4c52      	ldr	r4, [pc, #328]	; (80010e0 <_ZN4CIMU8imu_readEv+0x14c>)
 8000f98:	4605      	mov	r5, r0
 8000f9a:	4620      	mov	r0, r4
 8000f9c:	f7ff ff38 	bl	8000e10 <_ZN4CI2C5StartEv>
 8000fa0:	4620      	mov	r0, r4
 8000fa2:	21d4      	movs	r1, #212	; 0xd4
 8000fa4:	f7ff ff5e 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000fa8:	21a8      	movs	r1, #168	; 0xa8
 8000faa:	4620      	mov	r0, r4
 8000fac:	f7ff ff5a 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000fb0:	4620      	mov	r0, r4
 8000fb2:	f7ff ff2d 	bl	8000e10 <_ZN4CI2C5StartEv>
 8000fb6:	4620      	mov	r0, r4
 8000fb8:	21d5      	movs	r1, #213	; 0xd5
 8000fba:	f7ff ff53 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8000fbe:	4620      	mov	r0, r4
 8000fc0:	2101      	movs	r1, #1
 8000fc2:	f7ff ff99 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8000fc6:	2101      	movs	r1, #1
 8000fc8:	b286      	uxth	r6, r0
 8000fca:	4620      	mov	r0, r4
 8000fcc:	f7ff ff94 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8000fd0:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fd4:	b200      	sxth	r0, r0
 8000fd6:	6268      	str	r0, [r5, #36]	; 0x24
 8000fd8:	2101      	movs	r1, #1
 8000fda:	4620      	mov	r0, r4
 8000fdc:	f7ff ff8c 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8000fe0:	2101      	movs	r1, #1
 8000fe2:	b286      	uxth	r6, r0
 8000fe4:	4620      	mov	r0, r4
 8000fe6:	f7ff ff87 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8000fea:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fee:	b200      	sxth	r0, r0
 8000ff0:	62a8      	str	r0, [r5, #40]	; 0x28
 8000ff2:	2101      	movs	r1, #1
 8000ff4:	4620      	mov	r0, r4
 8000ff6:	f7ff ff7f 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8000ffa:	2100      	movs	r1, #0
 8000ffc:	b286      	uxth	r6, r0
 8000ffe:	4620      	mov	r0, r4
 8001000:	f7ff ff7a 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8001004:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001008:	b200      	sxth	r0, r0
 800100a:	62e8      	str	r0, [r5, #44]	; 0x2c
 800100c:	4620      	mov	r0, r4
 800100e:	f7ff ff14 	bl	8000e3a <_ZN4CI2C4StopEv>
 8001012:	4620      	mov	r0, r4
 8001014:	f7ff fefc 	bl	8000e10 <_ZN4CI2C5StartEv>
 8001018:	4620      	mov	r0, r4
 800101a:	213c      	movs	r1, #60	; 0x3c
 800101c:	f7ff ff22 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8001020:	21a8      	movs	r1, #168	; 0xa8
 8001022:	4620      	mov	r0, r4
 8001024:	f7ff ff1e 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8001028:	4620      	mov	r0, r4
 800102a:	f7ff fef1 	bl	8000e10 <_ZN4CI2C5StartEv>
 800102e:	4620      	mov	r0, r4
 8001030:	213d      	movs	r1, #61	; 0x3d
 8001032:	f7ff ff17 	bl	8000e64 <_ZN4CI2C5WriteEh>
 8001036:	4620      	mov	r0, r4
 8001038:	2101      	movs	r1, #1
 800103a:	f7ff ff5d 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 800103e:	2101      	movs	r1, #1
 8001040:	b286      	uxth	r6, r0
 8001042:	4620      	mov	r0, r4
 8001044:	f7ff ff58 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8001048:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800104c:	b200      	sxth	r0, r0
 800104e:	6328      	str	r0, [r5, #48]	; 0x30
 8001050:	2101      	movs	r1, #1
 8001052:	4620      	mov	r0, r4
 8001054:	f7ff ff50 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8001058:	2101      	movs	r1, #1
 800105a:	b286      	uxth	r6, r0
 800105c:	4620      	mov	r0, r4
 800105e:	f7ff ff4b 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8001062:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001066:	b200      	sxth	r0, r0
 8001068:	6368      	str	r0, [r5, #52]	; 0x34
 800106a:	2101      	movs	r1, #1
 800106c:	4620      	mov	r0, r4
 800106e:	f7ff ff43 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 8001072:	2100      	movs	r1, #0
 8001074:	b286      	uxth	r6, r0
 8001076:	4620      	mov	r0, r4
 8001078:	f7ff ff3e 	bl	8000ef8 <_ZN4CI2C4ReadEh>
 800107c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001080:	b200      	sxth	r0, r0
 8001082:	63a8      	str	r0, [r5, #56]	; 0x38
 8001084:	4620      	mov	r0, r4
 8001086:	f7ff fed8 	bl	8000e3a <_ZN4CI2C4StopEv>
 800108a:	686a      	ldr	r2, [r5, #4]
 800108c:	6aab      	ldr	r3, [r5, #40]	; 0x28
 800108e:	68a8      	ldr	r0, [r5, #8]
 8001090:	1a9b      	subs	r3, r3, r2
 8001092:	68ea      	ldr	r2, [r5, #12]
 8001094:	26c8      	movs	r6, #200	; 0xc8
 8001096:	fb93 f3f6 	sdiv	r3, r3, r6
 800109a:	441a      	add	r2, r3
 800109c:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 800109e:	60ea      	str	r2, [r5, #12]
 80010a0:	2155      	movs	r1, #85	; 0x55
 80010a2:	4359      	muls	r1, r3
 80010a4:	f640 14e2 	movw	r4, #2530	; 0x9e2
 80010a8:	434a      	muls	r2, r1
 80010aa:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 80010ac:	fb92 f2f4 	sdiv	r2, r2, r4
 80010b0:	61aa      	str	r2, [r5, #24]
 80010b2:	682a      	ldr	r2, [r5, #0]
 80010b4:	1a9b      	subs	r3, r3, r2
 80010b6:	692a      	ldr	r2, [r5, #16]
 80010b8:	fb93 f3f6 	sdiv	r3, r3, r6
 80010bc:	441a      	add	r2, r3
 80010be:	612a      	str	r2, [r5, #16]
 80010c0:	434a      	muls	r2, r1
 80010c2:	fb92 f2f4 	sdiv	r2, r2, r4
 80010c6:	61ea      	str	r2, [r5, #28]
 80010c8:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 80010ca:	1a12      	subs	r2, r2, r0
 80010cc:	fb92 f0f6 	sdiv	r0, r2, r6
 80010d0:	696a      	ldr	r2, [r5, #20]
 80010d2:	1883      	adds	r3, r0, r2
 80010d4:	616b      	str	r3, [r5, #20]
 80010d6:	434b      	muls	r3, r1
 80010d8:	fb93 f3f4 	sdiv	r3, r3, r4
 80010dc:	622b      	str	r3, [r5, #32]
 80010de:	bd70      	pop	{r4, r5, r6, pc}
 80010e0:	2000015c 	.word	0x2000015c

080010e4 <_ZN4CIMU8imu_initEv>:
 80010e4:	230a      	movs	r3, #10
 80010e6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010ea:	63c3      	str	r3, [r0, #60]	; 0x3c
 80010ec:	2300      	movs	r3, #0
 80010ee:	4604      	mov	r4, r0
 80010f0:	6003      	str	r3, [r0, #0]
 80010f2:	6043      	str	r3, [r0, #4]
 80010f4:	6083      	str	r3, [r0, #8]
 80010f6:	60c3      	str	r3, [r0, #12]
 80010f8:	6103      	str	r3, [r0, #16]
 80010fa:	6143      	str	r3, [r0, #20]
 80010fc:	f242 7511 	movw	r5, #10001	; 0x2711
 8001100:	3d01      	subs	r5, #1
 8001102:	d001      	beq.n	8001108 <_ZN4CIMU8imu_initEv+0x24>
 8001104:	bf00      	nop
 8001106:	e7fb      	b.n	8001100 <_ZN4CIMU8imu_initEv+0x1c>
 8001108:	4832      	ldr	r0, [pc, #200]	; (80011d4 <_ZN4CIMU8imu_initEv+0xf0>)
 800110a:	21d4      	movs	r1, #212	; 0xd4
 800110c:	220f      	movs	r2, #15
 800110e:	f7ff ff21 	bl	8000f54 <_ZN4CI2C8read_regEhh>
 8001112:	28d4      	cmp	r0, #212	; 0xd4
 8001114:	4606      	mov	r6, r0
 8001116:	d155      	bne.n	80011c4 <_ZN4CIMU8imu_initEv+0xe0>
 8001118:	482e      	ldr	r0, [pc, #184]	; (80011d4 <_ZN4CIMU8imu_initEv+0xf0>)
 800111a:	213c      	movs	r1, #60	; 0x3c
 800111c:	220f      	movs	r2, #15
 800111e:	f7ff ff19 	bl	8000f54 <_ZN4CI2C8read_regEhh>
 8001122:	2849      	cmp	r0, #73	; 0x49
 8001124:	d152      	bne.n	80011cc <_ZN4CIMU8imu_initEv+0xe8>
 8001126:	4631      	mov	r1, r6
 8001128:	482a      	ldr	r0, [pc, #168]	; (80011d4 <_ZN4CIMU8imu_initEv+0xf0>)
 800112a:	2220      	movs	r2, #32
 800112c:	23ff      	movs	r3, #255	; 0xff
 800112e:	f7ff fecb 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8001132:	4631      	mov	r1, r6
 8001134:	4827      	ldr	r0, [pc, #156]	; (80011d4 <_ZN4CIMU8imu_initEv+0xf0>)
 8001136:	4e28      	ldr	r6, [pc, #160]	; (80011d8 <_ZN4CIMU8imu_initEv+0xf4>)
 8001138:	2223      	movs	r2, #35	; 0x23
 800113a:	2310      	movs	r3, #16
 800113c:	f7ff fec4 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8001140:	4824      	ldr	r0, [pc, #144]	; (80011d4 <_ZN4CIMU8imu_initEv+0xf0>)
 8001142:	213c      	movs	r1, #60	; 0x3c
 8001144:	221f      	movs	r2, #31
 8001146:	462b      	mov	r3, r5
 8001148:	f7ff febe 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 800114c:	4821      	ldr	r0, [pc, #132]	; (80011d4 <_ZN4CIMU8imu_initEv+0xf0>)
 800114e:	213c      	movs	r1, #60	; 0x3c
 8001150:	2220      	movs	r2, #32
 8001152:	2367      	movs	r3, #103	; 0x67
 8001154:	f7ff feb8 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8001158:	481e      	ldr	r0, [pc, #120]	; (80011d4 <_ZN4CIMU8imu_initEv+0xf0>)
 800115a:	213c      	movs	r1, #60	; 0x3c
 800115c:	2221      	movs	r2, #33	; 0x21
 800115e:	462b      	mov	r3, r5
 8001160:	f7ff feb2 	bl	8000ec8 <_ZN4CI2C9write_regEhhh>
 8001164:	3e01      	subs	r6, #1
 8001166:	d001      	beq.n	800116c <_ZN4CIMU8imu_initEv+0x88>
 8001168:	bf00      	nop
 800116a:	e7fb      	b.n	8001164 <_ZN4CIMU8imu_initEv+0x80>
 800116c:	4620      	mov	r0, r4
 800116e:	f7ff ff11 	bl	8000f94 <_ZN4CIMU8imu_readEv>
 8001172:	2564      	movs	r5, #100	; 0x64
 8001174:	4637      	mov	r7, r6
 8001176:	46b0      	mov	r8, r6
 8001178:	2365      	movs	r3, #101	; 0x65
 800117a:	3b01      	subs	r3, #1
 800117c:	d001      	beq.n	8001182 <_ZN4CIMU8imu_initEv+0x9e>
 800117e:	bf00      	nop
 8001180:	e7fb      	b.n	800117a <_ZN4CIMU8imu_initEv+0x96>
 8001182:	4620      	mov	r0, r4
 8001184:	f7ff ff06 	bl	8000f94 <_ZN4CIMU8imu_readEv>
 8001188:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800118a:	4498      	add	r8, r3
 800118c:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 800118e:	441f      	add	r7, r3
 8001190:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8001192:	3d01      	subs	r5, #1
 8001194:	441e      	add	r6, r3
 8001196:	d1ef      	bne.n	8001178 <_ZN4CIMU8imu_initEv+0x94>
 8001198:	2264      	movs	r2, #100	; 0x64
 800119a:	6325      	str	r5, [r4, #48]	; 0x30
 800119c:	fb98 f3f2 	sdiv	r3, r8, r2
 80011a0:	fb97 f7f2 	sdiv	r7, r7, r2
 80011a4:	fb96 f6f2 	sdiv	r6, r6, r2
 80011a8:	6023      	str	r3, [r4, #0]
 80011aa:	6067      	str	r7, [r4, #4]
 80011ac:	60a6      	str	r6, [r4, #8]
 80011ae:	6365      	str	r5, [r4, #52]	; 0x34
 80011b0:	63a5      	str	r5, [r4, #56]	; 0x38
 80011b2:	6265      	str	r5, [r4, #36]	; 0x24
 80011b4:	62a5      	str	r5, [r4, #40]	; 0x28
 80011b6:	62e5      	str	r5, [r4, #44]	; 0x2c
 80011b8:	61a5      	str	r5, [r4, #24]
 80011ba:	61e5      	str	r5, [r4, #28]
 80011bc:	6225      	str	r5, [r4, #32]
 80011be:	4628      	mov	r0, r5
 80011c0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80011c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011cc:	f06f 0001 	mvn.w	r0, #1
 80011d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011d4:	2000015c 	.word	0x2000015c
 80011d8:	000186a1 	.word	0x000186a1

080011dc <_ZN5CGPIO9gpio_initEv>:
 80011dc:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80011e0:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80011e4:	2101      	movs	r1, #1
 80011e6:	f000 fd55 	bl	8001c94 <RCC_AHBPeriphClockCmd>
 80011ea:	4f22      	ldr	r7, [pc, #136]	; (8001274 <_ZN5CGPIO9gpio_initEv+0x98>)
 80011ec:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80011f0:	2101      	movs	r1, #1
 80011f2:	f000 fd4f 	bl	8001c94 <RCC_AHBPeriphClockCmd>
 80011f6:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80011fa:	2101      	movs	r1, #1
 80011fc:	f000 fd4a 	bl	8001c94 <RCC_AHBPeriphClockCmd>
 8001200:	2400      	movs	r4, #0
 8001202:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001206:	2503      	movs	r5, #3
 8001208:	f04f 0801 	mov.w	r8, #1
 800120c:	4638      	mov	r0, r7
 800120e:	4669      	mov	r1, sp
 8001210:	9300      	str	r3, [sp, #0]
 8001212:	2608      	movs	r6, #8
 8001214:	f88d 8004 	strb.w	r8, [sp, #4]
 8001218:	f88d 4006 	strb.w	r4, [sp, #6]
 800121c:	f88d 5005 	strb.w	r5, [sp, #5]
 8001220:	f88d 4007 	strb.w	r4, [sp, #7]
 8001224:	f000 ff3e 	bl	80020a4 <GPIO_Init>
 8001228:	4669      	mov	r1, sp
 800122a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800122e:	9600      	str	r6, [sp, #0]
 8001230:	f88d 8004 	strb.w	r8, [sp, #4]
 8001234:	f88d 4006 	strb.w	r4, [sp, #6]
 8001238:	f88d 5005 	strb.w	r5, [sp, #5]
 800123c:	f88d 4007 	strb.w	r4, [sp, #7]
 8001240:	f000 ff30 	bl	80020a4 <GPIO_Init>
 8001244:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001248:	4638      	mov	r0, r7
 800124a:	4669      	mov	r1, sp
 800124c:	9300      	str	r3, [sp, #0]
 800124e:	f88d 4004 	strb.w	r4, [sp, #4]
 8001252:	f88d 5005 	strb.w	r5, [sp, #5]
 8001256:	f88d 4007 	strb.w	r4, [sp, #7]
 800125a:	f000 ff23 	bl	80020a4 <GPIO_Init>
 800125e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001262:	4620      	mov	r0, r4
 8001264:	851e      	strh	r6, [r3, #40]	; 0x28
 8001266:	4b04      	ldr	r3, [pc, #16]	; (8001278 <_ZN5CGPIO9gpio_initEv+0x9c>)
 8001268:	601c      	str	r4, [r3, #0]
 800126a:	4b04      	ldr	r3, [pc, #16]	; (800127c <_ZN5CGPIO9gpio_initEv+0xa0>)
 800126c:	601c      	str	r4, [r3, #0]
 800126e:	b002      	add	sp, #8
 8001270:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001274:	48000400 	.word	0x48000400
 8001278:	20000160 	.word	0x20000160
 800127c:	20000164 	.word	0x20000164

08001280 <_ZN5CGPIO7gpio_onEm>:
 8001280:	2908      	cmp	r1, #8
 8001282:	d005      	beq.n	8001290 <_ZN5CGPIO7gpio_onEm+0x10>
 8001284:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8001288:	d105      	bne.n	8001296 <_ZN5CGPIO7gpio_onEm+0x16>
 800128a:	4b03      	ldr	r3, [pc, #12]	; (8001298 <_ZN5CGPIO7gpio_onEm+0x18>)
 800128c:	6199      	str	r1, [r3, #24]
 800128e:	4770      	bx	lr
 8001290:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001294:	8519      	strh	r1, [r3, #40]	; 0x28
 8001296:	4770      	bx	lr
 8001298:	48000400 	.word	0x48000400

0800129c <_ZN5CGPIO8gpio_offEm>:
 800129c:	2908      	cmp	r1, #8
 800129e:	d005      	beq.n	80012ac <_ZN5CGPIO8gpio_offEm+0x10>
 80012a0:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80012a4:	d105      	bne.n	80012b2 <_ZN5CGPIO8gpio_offEm+0x16>
 80012a6:	4b03      	ldr	r3, [pc, #12]	; (80012b4 <_ZN5CGPIO8gpio_offEm+0x18>)
 80012a8:	8519      	strh	r1, [r3, #40]	; 0x28
 80012aa:	4770      	bx	lr
 80012ac:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80012b0:	6199      	str	r1, [r3, #24]
 80012b2:	4770      	bx	lr
 80012b4:	48000400 	.word	0x48000400

080012b8 <_ZN5CGPIO7gpio_inEm>:
 80012b8:	4b02      	ldr	r3, [pc, #8]	; (80012c4 <_ZN5CGPIO7gpio_inEm+0xc>)
 80012ba:	8a18      	ldrh	r0, [r3, #16]
 80012bc:	b280      	uxth	r0, r0
 80012be:	ea21 0000 	bic.w	r0, r1, r0
 80012c2:	4770      	bx	lr
 80012c4:	48000400 	.word	0x48000400

080012c8 <EXTI9_5_IRQHandler>:
 80012c8:	4a03      	ldr	r2, [pc, #12]	; (80012d8 <EXTI9_5_IRQHandler+0x10>)
 80012ca:	6813      	ldr	r3, [r2, #0]
 80012cc:	2006      	movs	r0, #6
 80012ce:	3301      	adds	r3, #1
 80012d0:	6013      	str	r3, [r2, #0]
 80012d2:	f000 bedb 	b.w	800208c <EXTI_ClearITPendingBit>
 80012d6:	bf00      	nop
 80012d8:	20000160 	.word	0x20000160

080012dc <EXTI15_10_IRQHandler>:
 80012dc:	4a03      	ldr	r2, [pc, #12]	; (80012ec <EXTI15_10_IRQHandler+0x10>)
 80012de:	6813      	ldr	r3, [r2, #0]
 80012e0:	200c      	movs	r0, #12
 80012e2:	3301      	adds	r3, #1
 80012e4:	6013      	str	r3, [r2, #0]
 80012e6:	f000 bed1 	b.w	800208c <EXTI_ClearITPendingBit>
 80012ea:	bf00      	nop
 80012ec:	20000164 	.word	0x20000164

080012f0 <_ZN6CError10error_funcEi>:
 80012f0:	230a      	movs	r3, #10
 80012f2:	490c      	ldr	r1, [pc, #48]	; (8001324 <_ZN6CError10error_funcEi+0x34>)
 80012f4:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80012f8:	618a      	str	r2, [r1, #24]
 80012fa:	4a0b      	ldr	r2, [pc, #44]	; (8001328 <_ZN6CError10error_funcEi+0x38>)
 80012fc:	3a01      	subs	r2, #1
 80012fe:	d001      	beq.n	8001304 <_ZN6CError10error_funcEi+0x14>
 8001300:	bf00      	nop
 8001302:	e7fb      	b.n	80012fc <_ZN6CError10error_funcEi+0xc>
 8001304:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001308:	850a      	strh	r2, [r1, #40]	; 0x28
 800130a:	4a08      	ldr	r2, [pc, #32]	; (800132c <_ZN6CError10error_funcEi+0x3c>)
 800130c:	3a01      	subs	r2, #1
 800130e:	d001      	beq.n	8001314 <_ZN6CError10error_funcEi+0x24>
 8001310:	bf00      	nop
 8001312:	e7fb      	b.n	800130c <_ZN6CError10error_funcEi+0x1c>
 8001314:	3b01      	subs	r3, #1
 8001316:	d1ec      	bne.n	80012f2 <_ZN6CError10error_funcEi+0x2>
 8001318:	4b05      	ldr	r3, [pc, #20]	; (8001330 <_ZN6CError10error_funcEi+0x40>)
 800131a:	3b01      	subs	r3, #1
 800131c:	d0e8      	beq.n	80012f0 <_ZN6CError10error_funcEi>
 800131e:	bf00      	nop
 8001320:	e7fb      	b.n	800131a <_ZN6CError10error_funcEi+0x2a>
 8001322:	bf00      	nop
 8001324:	48000400 	.word	0x48000400
 8001328:	000186a1 	.word	0x000186a1
 800132c:	000f4241 	.word	0x000f4241
 8001330:	002dc6c1 	.word	0x002dc6c1

08001334 <_ZN9CTerminal13terminal_initEv>:
 8001334:	b530      	push	{r4, r5, lr}
 8001336:	4a2f      	ldr	r2, [pc, #188]	; (80013f4 <_ZN9CTerminal13terminal_initEv+0xc0>)
 8001338:	2300      	movs	r3, #0
 800133a:	6013      	str	r3, [r2, #0]
 800133c:	4a2e      	ldr	r2, [pc, #184]	; (80013f8 <_ZN9CTerminal13terminal_initEv+0xc4>)
 800133e:	b08b      	sub	sp, #44	; 0x2c
 8001340:	6013      	str	r3, [r2, #0]
 8001342:	4a2e      	ldr	r2, [pc, #184]	; (80013fc <_ZN9CTerminal13terminal_initEv+0xc8>)
 8001344:	2400      	movs	r4, #0
 8001346:	54d4      	strb	r4, [r2, r3]
 8001348:	3301      	adds	r3, #1
 800134a:	2b10      	cmp	r3, #16
 800134c:	d1f9      	bne.n	8001342 <_ZN9CTerminal13terminal_initEv+0xe>
 800134e:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001352:	2101      	movs	r1, #1
 8001354:	f000 fc9e 	bl	8001c94 <RCC_AHBPeriphClockCmd>
 8001358:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800135c:	2101      	movs	r1, #1
 800135e:	f000 fca7 	bl	8001cb0 <RCC_APB2PeriphClockCmd>
 8001362:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001366:	9302      	str	r3, [sp, #8]
 8001368:	2302      	movs	r3, #2
 800136a:	f88d 300c 	strb.w	r3, [sp, #12]
 800136e:	a902      	add	r1, sp, #8
 8001370:	2303      	movs	r3, #3
 8001372:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001376:	f88d 300d 	strb.w	r3, [sp, #13]
 800137a:	f88d 400e 	strb.w	r4, [sp, #14]
 800137e:	f88d 400f 	strb.w	r4, [sp, #15]
 8001382:	f000 fe8f 	bl	80020a4 <GPIO_Init>
 8001386:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800138a:	2109      	movs	r1, #9
 800138c:	2207      	movs	r2, #7
 800138e:	f000 fecf 	bl	8002130 <GPIO_PinAFConfig>
 8001392:	2207      	movs	r2, #7
 8001394:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001398:	210a      	movs	r1, #10
 800139a:	f000 fec9 	bl	8002130 <GPIO_PinAFConfig>
 800139e:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80013a2:	9304      	str	r3, [sp, #16]
 80013a4:	a904      	add	r1, sp, #16
 80013a6:	230c      	movs	r3, #12
 80013a8:	4815      	ldr	r0, [pc, #84]	; (8001400 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80013aa:	9308      	str	r3, [sp, #32]
 80013ac:	9405      	str	r4, [sp, #20]
 80013ae:	9406      	str	r4, [sp, #24]
 80013b0:	9407      	str	r4, [sp, #28]
 80013b2:	9409      	str	r4, [sp, #36]	; 0x24
 80013b4:	f000 fcfc 	bl	8001db0 <USART_Init>
 80013b8:	4811      	ldr	r0, [pc, #68]	; (8001400 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80013ba:	2101      	movs	r1, #1
 80013bc:	f000 fd5a 	bl	8001e74 <USART_Cmd>
 80013c0:	2201      	movs	r2, #1
 80013c2:	4910      	ldr	r1, [pc, #64]	; (8001404 <_ZN9CTerminal13terminal_initEv+0xd0>)
 80013c4:	480e      	ldr	r0, [pc, #56]	; (8001400 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80013c6:	f000 fd65 	bl	8001e94 <USART_ITConfig>
 80013ca:	2501      	movs	r5, #1
 80013cc:	2325      	movs	r3, #37	; 0x25
 80013ce:	a801      	add	r0, sp, #4
 80013d0:	f88d 3004 	strb.w	r3, [sp, #4]
 80013d4:	f88d 4005 	strb.w	r4, [sp, #5]
 80013d8:	f88d 4006 	strb.w	r4, [sp, #6]
 80013dc:	f88d 5007 	strb.w	r5, [sp, #7]
 80013e0:	f000 fe1a 	bl	8002018 <NVIC_Init>
 80013e4:	4806      	ldr	r0, [pc, #24]	; (8001400 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80013e6:	4629      	mov	r1, r5
 80013e8:	f000 fd44 	bl	8001e74 <USART_Cmd>
 80013ec:	4620      	mov	r0, r4
 80013ee:	b00b      	add	sp, #44	; 0x2c
 80013f0:	bd30      	pop	{r4, r5, pc}
 80013f2:	bf00      	nop
 80013f4:	20000168 	.word	0x20000168
 80013f8:	2000017c 	.word	0x2000017c
 80013fc:	2000016c 	.word	0x2000016c
 8001400:	40013800 	.word	0x40013800
 8001404:	00050105 	.word	0x00050105

08001408 <USART1_IRQHandler>:
 8001408:	b508      	push	{r3, lr}
 800140a:	480d      	ldr	r0, [pc, #52]	; (8001440 <USART1_IRQHandler+0x38>)
 800140c:	490d      	ldr	r1, [pc, #52]	; (8001444 <USART1_IRQHandler+0x3c>)
 800140e:	f000 fd5b 	bl	8001ec8 <USART_GetITStatus>
 8001412:	b178      	cbz	r0, 8001434 <USART1_IRQHandler+0x2c>
 8001414:	480a      	ldr	r0, [pc, #40]	; (8001440 <USART1_IRQHandler+0x38>)
 8001416:	f000 fd38 	bl	8001e8a <USART_ReceiveData>
 800141a:	4b0b      	ldr	r3, [pc, #44]	; (8001448 <USART1_IRQHandler+0x40>)
 800141c:	490b      	ldr	r1, [pc, #44]	; (800144c <USART1_IRQHandler+0x44>)
 800141e:	681a      	ldr	r2, [r3, #0]
 8001420:	b2c0      	uxtb	r0, r0
 8001422:	5488      	strb	r0, [r1, r2]
 8001424:	681a      	ldr	r2, [r3, #0]
 8001426:	3201      	adds	r2, #1
 8001428:	601a      	str	r2, [r3, #0]
 800142a:	681a      	ldr	r2, [r3, #0]
 800142c:	2a0f      	cmp	r2, #15
 800142e:	bf84      	itt	hi
 8001430:	2200      	movhi	r2, #0
 8001432:	601a      	strhi	r2, [r3, #0]
 8001434:	4802      	ldr	r0, [pc, #8]	; (8001440 <USART1_IRQHandler+0x38>)
 8001436:	4903      	ldr	r1, [pc, #12]	; (8001444 <USART1_IRQHandler+0x3c>)
 8001438:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800143c:	f000 bd62 	b.w	8001f04 <USART_ClearITPendingBit>
 8001440:	40013800 	.word	0x40013800
 8001444:	00050105 	.word	0x00050105
 8001448:	20000168 	.word	0x20000168
 800144c:	2000016c 	.word	0x2000016c

08001450 <_ZN9CTerminal7putcharEc>:
 8001450:	4b04      	ldr	r3, [pc, #16]	; (8001464 <_ZN9CTerminal7putcharEc+0x14>)
 8001452:	69da      	ldr	r2, [r3, #28]
 8001454:	0612      	lsls	r2, r2, #24
 8001456:	d401      	bmi.n	800145c <_ZN9CTerminal7putcharEc+0xc>
 8001458:	bf00      	nop
 800145a:	e7f9      	b.n	8001450 <_ZN9CTerminal7putcharEc>
 800145c:	b289      	uxth	r1, r1
 800145e:	8519      	strh	r1, [r3, #40]	; 0x28
 8001460:	4770      	bx	lr
 8001462:	bf00      	nop
 8001464:	40013800 	.word	0x40013800

08001468 <_ZN9CTerminal4putsEPc>:
 8001468:	b538      	push	{r3, r4, r5, lr}
 800146a:	4605      	mov	r5, r0
 800146c:	1e4c      	subs	r4, r1, #1
 800146e:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001472:	b119      	cbz	r1, 800147c <_ZN9CTerminal4putsEPc+0x14>
 8001474:	4628      	mov	r0, r5
 8001476:	f7ff ffeb 	bl	8001450 <_ZN9CTerminal7putcharEc>
 800147a:	e7f8      	b.n	800146e <_ZN9CTerminal4putsEPc+0x6>
 800147c:	2001      	movs	r0, #1
 800147e:	bd38      	pop	{r3, r4, r5, pc}

08001480 <_ZN9CTerminal4putiEl>:
 8001480:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001482:	1e0b      	subs	r3, r1, #0
 8001484:	f04f 0200 	mov.w	r2, #0
 8001488:	bfba      	itte	lt
 800148a:	425b      	neglt	r3, r3
 800148c:	2501      	movlt	r5, #1
 800148e:	4615      	movge	r5, r2
 8001490:	f88d 200f 	strb.w	r2, [sp, #15]
 8001494:	210a      	movs	r1, #10
 8001496:	220a      	movs	r2, #10
 8001498:	ac01      	add	r4, sp, #4
 800149a:	fb93 f6f2 	sdiv	r6, r3, r2
 800149e:	fb02 3316 	mls	r3, r2, r6, r3
 80014a2:	3330      	adds	r3, #48	; 0x30
 80014a4:	550b      	strb	r3, [r1, r4]
 80014a6:	1e4a      	subs	r2, r1, #1
 80014a8:	4633      	mov	r3, r6
 80014aa:	b10e      	cbz	r6, 80014b0 <_ZN9CTerminal4putiEl+0x30>
 80014ac:	4611      	mov	r1, r2
 80014ae:	e7f2      	b.n	8001496 <_ZN9CTerminal4putiEl+0x16>
 80014b0:	b12d      	cbz	r5, 80014be <_ZN9CTerminal4putiEl+0x3e>
 80014b2:	ab04      	add	r3, sp, #16
 80014b4:	4413      	add	r3, r2
 80014b6:	212d      	movs	r1, #45	; 0x2d
 80014b8:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80014bc:	4611      	mov	r1, r2
 80014be:	4421      	add	r1, r4
 80014c0:	f7ff ffd2 	bl	8001468 <_ZN9CTerminal4putsEPc>
 80014c4:	b004      	add	sp, #16
 80014c6:	bd70      	pop	{r4, r5, r6, pc}

080014c8 <_ZN9CTerminal5putuiEm>:
 80014c8:	b530      	push	{r4, r5, lr}
 80014ca:	b085      	sub	sp, #20
 80014cc:	2300      	movs	r3, #0
 80014ce:	f88d 300f 	strb.w	r3, [sp, #15]
 80014d2:	220a      	movs	r2, #10
 80014d4:	230a      	movs	r3, #10
 80014d6:	ac01      	add	r4, sp, #4
 80014d8:	fbb1 f5f3 	udiv	r5, r1, r3
 80014dc:	fb03 1315 	mls	r3, r3, r5, r1
 80014e0:	3330      	adds	r3, #48	; 0x30
 80014e2:	5513      	strb	r3, [r2, r4]
 80014e4:	4629      	mov	r1, r5
 80014e6:	1e53      	subs	r3, r2, #1
 80014e8:	b10d      	cbz	r5, 80014ee <_ZN9CTerminal5putuiEm+0x26>
 80014ea:	461a      	mov	r2, r3
 80014ec:	e7f2      	b.n	80014d4 <_ZN9CTerminal5putuiEm+0xc>
 80014ee:	18a1      	adds	r1, r4, r2
 80014f0:	f7ff ffba 	bl	8001468 <_ZN9CTerminal4putsEPc>
 80014f4:	b005      	add	sp, #20
 80014f6:	bd30      	pop	{r4, r5, pc}

080014f8 <_ZN9CTerminal4putxEm>:
 80014f8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80014fa:	2300      	movs	r3, #0
 80014fc:	f88d 300f 	strb.w	r3, [sp, #15]
 8001500:	220a      	movs	r2, #10
 8001502:	f001 030f 	and.w	r3, r1, #15
 8001506:	2b09      	cmp	r3, #9
 8001508:	ac01      	add	r4, sp, #4
 800150a:	bfd4      	ite	le
 800150c:	3330      	addle	r3, #48	; 0x30
 800150e:	3357      	addgt	r3, #87	; 0x57
 8001510:	0909      	lsrs	r1, r1, #4
 8001512:	54a3      	strb	r3, [r4, r2]
 8001514:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001518:	d001      	beq.n	800151e <_ZN9CTerminal4putxEm+0x26>
 800151a:	461a      	mov	r2, r3
 800151c:	e7f1      	b.n	8001502 <_ZN9CTerminal4putxEm+0xa>
 800151e:	18a1      	adds	r1, r4, r2
 8001520:	f7ff ffa2 	bl	8001468 <_ZN9CTerminal4putsEPc>
 8001524:	b004      	add	sp, #16
 8001526:	bd10      	pop	{r4, pc}

08001528 <_ZN9CTerminal6printfEPKcz>:
 8001528:	b40e      	push	{r1, r2, r3}
 800152a:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 800152c:	ab07      	add	r3, sp, #28
 800152e:	4604      	mov	r4, r0
 8001530:	f853 6b04 	ldr.w	r6, [r3], #4
 8001534:	9301      	str	r3, [sp, #4]
 8001536:	2500      	movs	r5, #0
 8001538:	5d71      	ldrb	r1, [r6, r5]
 800153a:	2900      	cmp	r1, #0
 800153c:	d040      	beq.n	80015c0 <_ZN9CTerminal6printfEPKcz+0x98>
 800153e:	2925      	cmp	r1, #37	; 0x25
 8001540:	d004      	beq.n	800154c <_ZN9CTerminal6printfEPKcz+0x24>
 8001542:	4620      	mov	r0, r4
 8001544:	f7ff ff84 	bl	8001450 <_ZN9CTerminal7putcharEc>
 8001548:	3501      	adds	r5, #1
 800154a:	e7f5      	b.n	8001538 <_ZN9CTerminal6printfEPKcz+0x10>
 800154c:	1973      	adds	r3, r6, r5
 800154e:	7859      	ldrb	r1, [r3, #1]
 8001550:	2969      	cmp	r1, #105	; 0x69
 8001552:	d018      	beq.n	8001586 <_ZN9CTerminal6printfEPKcz+0x5e>
 8001554:	d809      	bhi.n	800156a <_ZN9CTerminal6printfEPKcz+0x42>
 8001556:	2925      	cmp	r1, #37	; 0x25
 8001558:	d02d      	beq.n	80015b6 <_ZN9CTerminal6printfEPKcz+0x8e>
 800155a:	2963      	cmp	r1, #99	; 0x63
 800155c:	d12e      	bne.n	80015bc <_ZN9CTerminal6printfEPKcz+0x94>
 800155e:	9b01      	ldr	r3, [sp, #4]
 8001560:	1d1a      	adds	r2, r3, #4
 8001562:	9201      	str	r2, [sp, #4]
 8001564:	4620      	mov	r0, r4
 8001566:	7819      	ldrb	r1, [r3, #0]
 8001568:	e026      	b.n	80015b8 <_ZN9CTerminal6printfEPKcz+0x90>
 800156a:	2975      	cmp	r1, #117	; 0x75
 800156c:	d013      	beq.n	8001596 <_ZN9CTerminal6printfEPKcz+0x6e>
 800156e:	2978      	cmp	r1, #120	; 0x78
 8001570:	d019      	beq.n	80015a6 <_ZN9CTerminal6printfEPKcz+0x7e>
 8001572:	2973      	cmp	r1, #115	; 0x73
 8001574:	d122      	bne.n	80015bc <_ZN9CTerminal6printfEPKcz+0x94>
 8001576:	9b01      	ldr	r3, [sp, #4]
 8001578:	4620      	mov	r0, r4
 800157a:	1d1a      	adds	r2, r3, #4
 800157c:	6819      	ldr	r1, [r3, #0]
 800157e:	9201      	str	r2, [sp, #4]
 8001580:	f7ff ff72 	bl	8001468 <_ZN9CTerminal4putsEPc>
 8001584:	e01a      	b.n	80015bc <_ZN9CTerminal6printfEPKcz+0x94>
 8001586:	9b01      	ldr	r3, [sp, #4]
 8001588:	4620      	mov	r0, r4
 800158a:	1d1a      	adds	r2, r3, #4
 800158c:	6819      	ldr	r1, [r3, #0]
 800158e:	9201      	str	r2, [sp, #4]
 8001590:	f7ff ff76 	bl	8001480 <_ZN9CTerminal4putiEl>
 8001594:	e012      	b.n	80015bc <_ZN9CTerminal6printfEPKcz+0x94>
 8001596:	9b01      	ldr	r3, [sp, #4]
 8001598:	4620      	mov	r0, r4
 800159a:	1d1a      	adds	r2, r3, #4
 800159c:	6819      	ldr	r1, [r3, #0]
 800159e:	9201      	str	r2, [sp, #4]
 80015a0:	f7ff ff92 	bl	80014c8 <_ZN9CTerminal5putuiEm>
 80015a4:	e00a      	b.n	80015bc <_ZN9CTerminal6printfEPKcz+0x94>
 80015a6:	9b01      	ldr	r3, [sp, #4]
 80015a8:	4620      	mov	r0, r4
 80015aa:	1d1a      	adds	r2, r3, #4
 80015ac:	6819      	ldr	r1, [r3, #0]
 80015ae:	9201      	str	r2, [sp, #4]
 80015b0:	f7ff ffa2 	bl	80014f8 <_ZN9CTerminal4putxEm>
 80015b4:	e002      	b.n	80015bc <_ZN9CTerminal6printfEPKcz+0x94>
 80015b6:	4620      	mov	r0, r4
 80015b8:	f7ff ff4a 	bl	8001450 <_ZN9CTerminal7putcharEc>
 80015bc:	3502      	adds	r5, #2
 80015be:	e7bb      	b.n	8001538 <_ZN9CTerminal6printfEPKcz+0x10>
 80015c0:	b003      	add	sp, #12
 80015c2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80015c6:	b003      	add	sp, #12
 80015c8:	4770      	bx	lr
	...

080015cc <_ZN10MathVectorILj3EE3mixERS0_f>:
 80015cc:	ee06 2a90 	vmov	s13, r2
 80015d0:	f100 030c 	add.w	r3, r0, #12
 80015d4:	ed9f 7a08 	vldr	s14, [pc, #32]	; 80015f8 <_ZN10MathVectorILj3EE3mixERS0_f+0x2c>
 80015d8:	ecf1 7a01 	vldmia	r1!, {s15}
 80015dc:	ed90 6a00 	vldr	s12, [r0]
 80015e0:	ee37 7a66 	vsub.f32	s14, s14, s13
 80015e4:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80015e8:	ee47 7a06 	vmla.f32	s15, s14, s12
 80015ec:	ece0 7a01 	vstmia	r0!, {s15}
 80015f0:	4298      	cmp	r0, r3
 80015f2:	d1ef      	bne.n	80015d4 <_ZN10MathVectorILj3EE3mixERS0_f+0x8>
 80015f4:	4770      	bx	lr
 80015f6:	bf00      	nop
 80015f8:	3f800000 	.word	0x3f800000

080015fc <_Z36reinforcement_learning_line_followerv>:
 80015fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80015fe:	ed2d 8b02 	vpush	{d8}
 8001602:	b0c9      	sub	sp, #292	; 0x124
 8001604:	ae08      	add	r6, sp, #32
 8001606:	ed9f 8ac0 	vldr	s16, [pc, #768]	; 8001908 <_Z36reinforcement_learning_line_followerv+0x30c>
 800160a:	4630      	mov	r0, r6
 800160c:	f7fe fe2e 	bl	800026c <_ZN13CLinePositionC1Ev>
 8001610:	220a      	movs	r2, #10
 8001612:	48be      	ldr	r0, [pc, #760]	; (800190c <_Z36reinforcement_learning_line_followerv+0x310>)
 8001614:	2100      	movs	r1, #0
 8001616:	f7fe ffc1 	bl	800059c <_ZN6CTimer22event_timer_set_periodEhm>
 800161a:	ed8d 8a04 	vstr	s16, [sp, #16]
 800161e:	ed8d 8a05 	vstr	s16, [sp, #20]
 8001622:	ed8d 8a06 	vstr	s16, [sp, #24]
 8001626:	ed8d 8a07 	vstr	s16, [sp, #28]
 800162a:	ed8d 8a01 	vstr	s16, [sp, #4]
 800162e:	ed8d 8a02 	vstr	s16, [sp, #8]
 8001632:	ed8d 8a03 	vstr	s16, [sp, #12]
 8001636:	ab12      	add	r3, sp, #72	; 0x48
 8001638:	aa32      	add	r2, sp, #200	; 0xc8
 800163a:	ed03 8a04 	vstr	s16, [r3, #-16]
 800163e:	ed03 8a03 	vstr	s16, [r3, #-12]
 8001642:	ed03 8a02 	vstr	s16, [r3, #-8]
 8001646:	ed03 8a01 	vstr	s16, [r3, #-4]
 800164a:	3310      	adds	r3, #16
 800164c:	4293      	cmp	r3, r2
 800164e:	d1f4      	bne.n	800163a <_Z36reinforcement_learning_line_followerv+0x3e>
 8001650:	ab31      	add	r3, sp, #196	; 0xc4
 8001652:	aa49      	add	r2, sp, #292	; 0x124
 8001654:	ed03 8a03 	vstr	s16, [r3, #-12]
 8001658:	ed03 8a02 	vstr	s16, [r3, #-8]
 800165c:	ed03 8a01 	vstr	s16, [r3, #-4]
 8001660:	330c      	adds	r3, #12
 8001662:	4293      	cmp	r3, r2
 8001664:	d1f6      	bne.n	8001654 <_Z36reinforcement_learning_line_followerv+0x58>
 8001666:	2304      	movs	r3, #4
 8001668:	9346      	str	r3, [sp, #280]	; 0x118
 800166a:	4ba9      	ldr	r3, [pc, #676]	; (8001910 <_Z36reinforcement_learning_line_followerv+0x314>)
 800166c:	9347      	str	r3, [sp, #284]	; 0x11c
 800166e:	2500      	movs	r5, #0
 8001670:	2400      	movs	r4, #0
 8001672:	48a8      	ldr	r0, [pc, #672]	; (8001914 <_Z36reinforcement_learning_line_followerv+0x318>)
 8001674:	f7fe fed4 	bl	8000420 <_ZN5CMath3rndEv>
 8001678:	1963      	adds	r3, r4, r5
 800167a:	aa0e      	add	r2, sp, #56	; 0x38
 800167c:	4413      	add	r3, r2
 800167e:	3404      	adds	r4, #4
 8001680:	2c10      	cmp	r4, #16
 8001682:	6018      	str	r0, [r3, #0]
 8001684:	d1f5      	bne.n	8001672 <_Z36reinforcement_learning_line_followerv+0x76>
 8001686:	3510      	adds	r5, #16
 8001688:	2d80      	cmp	r5, #128	; 0x80
 800168a:	d1f1      	bne.n	8001670 <_Z36reinforcement_learning_line_followerv+0x74>
 800168c:	ab0e      	add	r3, sp, #56	; 0x38
 800168e:	aa26      	add	r2, sp, #152	; 0x98
 8001690:	ed83 8a20 	vstr	s16, [r3, #128]	; 0x80
 8001694:	ed83 8a21 	vstr	s16, [r3, #132]	; 0x84
 8001698:	ed83 8a22 	vstr	s16, [r3, #136]	; 0x88
 800169c:	330c      	adds	r3, #12
 800169e:	4293      	cmp	r3, r2
 80016a0:	d1f6      	bne.n	8001690 <_Z36reinforcement_learning_line_followerv+0x94>
 80016a2:	2100      	movs	r1, #0
 80016a4:	4899      	ldr	r0, [pc, #612]	; (800190c <_Z36reinforcement_learning_line_followerv+0x310>)
 80016a6:	f7fe ff8d 	bl	80005c4 <_ZN4CRGB8rgb_readEh>
 80016aa:	4898      	ldr	r0, [pc, #608]	; (800190c <_Z36reinforcement_learning_line_followerv+0x310>)
 80016ac:	f7ff f926 	bl	80008fc <_ZN4CRGB14get_rgb_resultEv>
 80016b0:	4601      	mov	r1, r0
 80016b2:	4630      	mov	r0, r6
 80016b4:	f7fe fde4 	bl	8000280 <_ZN13CLinePosition7processEP10sRGBResult>
 80016b8:	a904      	add	r1, sp, #16
 80016ba:	4630      	mov	r0, r6
 80016bc:	f7fe fe80 	bl	80003c0 <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>
 80016c0:	2300      	movs	r3, #0
 80016c2:	9d46      	ldr	r5, [sp, #280]	; 0x118
 80016c4:	eddf 6a94 	vldr	s13, [pc, #592]	; 8001918 <_Z36reinforcement_learning_line_followerv+0x31c>
 80016c8:	4619      	mov	r1, r3
 80016ca:	42a9      	cmp	r1, r5
 80016cc:	d01e      	beq.n	800170c <_Z36reinforcement_learning_line_followerv+0x110>
 80016ce:	eddf 7a8e 	vldr	s15, [pc, #568]	; 8001908 <_Z36reinforcement_learning_line_followerv+0x30c>
 80016d2:	010c      	lsls	r4, r1, #4
 80016d4:	2200      	movs	r2, #0
 80016d6:	a804      	add	r0, sp, #16
 80016d8:	1887      	adds	r7, r0, r2
 80016da:	f10d 0e38 	add.w	lr, sp, #56	; 0x38
 80016de:	1910      	adds	r0, r2, r4
 80016e0:	4470      	add	r0, lr
 80016e2:	ed97 7a00 	vldr	s14, [r7]
 80016e6:	ed90 6a00 	vldr	s12, [r0]
 80016ea:	3204      	adds	r2, #4
 80016ec:	ee37 7a46 	vsub.f32	s14, s14, s12
 80016f0:	2a10      	cmp	r2, #16
 80016f2:	ee47 7a07 	vmla.f32	s15, s14, s14
 80016f6:	d1ee      	bne.n	80016d6 <_Z36reinforcement_learning_line_followerv+0xda>
 80016f8:	eef4 7ae6 	vcmpe.f32	s15, s13
 80016fc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001700:	bf44      	itt	mi
 8001702:	460b      	movmi	r3, r1
 8001704:	eef0 6a67 	vmovmi.f32	s13, s15
 8001708:	3101      	adds	r1, #1
 800170a:	e7de      	b.n	80016ca <_Z36reinforcement_learning_line_followerv+0xce>
 800170c:	aa0e      	add	r2, sp, #56	; 0x38
 800170e:	210c      	movs	r1, #12
 8001710:	fb01 2103 	mla	r1, r1, r3, r2
 8001714:	a801      	add	r0, sp, #4
 8001716:	3180      	adds	r1, #128	; 0x80
 8001718:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 800171c:	2400      	movs	r4, #0
 800171e:	f7ff ff55 	bl	80015cc <_ZN10MathVectorILj3EE3mixERS0_f>
 8001722:	4625      	mov	r5, r4
 8001724:	ab01      	add	r3, sp, #4
 8001726:	aa01      	add	r2, sp, #4
 8001728:	eb02 0284 	add.w	r2, r2, r4, lsl #2
 800172c:	ecb3 7a01 	vldmia	r3!, {s14}
 8001730:	edd2 7a00 	vldr	s15, [r2]
 8001734:	eeb4 7a67 	vcmp.f32	s14, s15
 8001738:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800173c:	bfc8      	it	gt
 800173e:	462c      	movgt	r4, r5
 8001740:	3501      	adds	r5, #1
 8001742:	2d03      	cmp	r5, #3
 8001744:	d1ef      	bne.n	8001726 <_Z36reinforcement_learning_line_followerv+0x12a>
 8001746:	4873      	ldr	r0, [pc, #460]	; (8001914 <_Z36reinforcement_learning_line_followerv+0x318>)
 8001748:	f7fe fe50 	bl	80003ec <_ZN5CMath4randEv>
 800174c:	2364      	movs	r3, #100	; 0x64
 800174e:	fbb0 f2f3 	udiv	r2, r0, r3
 8001752:	fb02 0013 	mls	r0, r2, r3, r0
 8001756:	2813      	cmp	r0, #19
 8001758:	d807      	bhi.n	800176a <_Z36reinforcement_learning_line_followerv+0x16e>
 800175a:	486e      	ldr	r0, [pc, #440]	; (8001914 <_Z36reinforcement_learning_line_followerv+0x318>)
 800175c:	f7fe fe46 	bl	80003ec <_ZN5CMath4randEv>
 8001760:	fbb0 f5f5 	udiv	r5, r0, r5
 8001764:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 8001768:	1b44      	subs	r4, r0, r5
 800176a:	2c01      	cmp	r4, #1
 800176c:	d013      	beq.n	8001796 <_Z36reinforcement_learning_line_followerv+0x19a>
 800176e:	d30a      	bcc.n	8001786 <_Z36reinforcement_learning_line_followerv+0x18a>
 8001770:	2c02      	cmp	r4, #2
 8001772:	d11a      	bne.n	80017aa <_Z36reinforcement_learning_line_followerv+0x1ae>
 8001774:	4869      	ldr	r0, [pc, #420]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 8001776:	2100      	movs	r1, #0
 8001778:	220e      	movs	r2, #14
 800177a:	f7ff f957 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 800177e:	4867      	ldr	r0, [pc, #412]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 8001780:	2101      	movs	r1, #1
 8001782:	2200      	movs	r2, #0
 8001784:	e00f      	b.n	80017a6 <_Z36reinforcement_learning_line_followerv+0x1aa>
 8001786:	4865      	ldr	r0, [pc, #404]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 8001788:	2100      	movs	r1, #0
 800178a:	220e      	movs	r2, #14
 800178c:	f7ff f94e 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 8001790:	4862      	ldr	r0, [pc, #392]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 8001792:	2101      	movs	r1, #1
 8001794:	e006      	b.n	80017a4 <_Z36reinforcement_learning_line_followerv+0x1a8>
 8001796:	2100      	movs	r1, #0
 8001798:	4860      	ldr	r0, [pc, #384]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 800179a:	460a      	mov	r2, r1
 800179c:	f7ff f946 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 80017a0:	485e      	ldr	r0, [pc, #376]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 80017a2:	4621      	mov	r1, r4
 80017a4:	220e      	movs	r2, #14
 80017a6:	f7ff f941 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 80017aa:	4858      	ldr	r0, [pc, #352]	; (800190c <_Z36reinforcement_learning_line_followerv+0x310>)
 80017ac:	2132      	movs	r1, #50	; 0x32
 80017ae:	f7fe fee3 	bl	8000578 <_ZN6CTimer8delay_msEm>
 80017b2:	2100      	movs	r1, #0
 80017b4:	4855      	ldr	r0, [pc, #340]	; (800190c <_Z36reinforcement_learning_line_followerv+0x310>)
 80017b6:	f7fe ff05 	bl	80005c4 <_ZN4CRGB8rgb_readEh>
 80017ba:	4854      	ldr	r0, [pc, #336]	; (800190c <_Z36reinforcement_learning_line_followerv+0x310>)
 80017bc:	f7ff f89e 	bl	80008fc <_ZN4CRGB14get_rgb_resultEv>
 80017c0:	4601      	mov	r1, r0
 80017c2:	4630      	mov	r0, r6
 80017c4:	f7fe fd5c 	bl	8000280 <_ZN13CLinePosition7processEP10sRGBResult>
 80017c8:	4630      	mov	r0, r6
 80017ca:	f7fe fdf7 	bl	80003bc <_ZN13CLinePosition17get_line_positionEv>
 80017ce:	4601      	mov	r1, r0
 80017d0:	4850      	ldr	r0, [pc, #320]	; (8001914 <_Z36reinforcement_learning_line_followerv+0x318>)
 80017d2:	f7fe fdfe 	bl	80003d2 <_ZN5CMath3absEf>
 80017d6:	eddf 7a52 	vldr	s15, [pc, #328]	; 8001920 <_Z36reinforcement_learning_line_followerv+0x324>
 80017da:	eddf 6a52 	vldr	s13, [pc, #328]	; 8001924 <_Z36reinforcement_learning_line_followerv+0x328>
 80017de:	9a46      	ldr	r2, [sp, #280]	; 0x118
 80017e0:	ed9f 6a4d 	vldr	s12, [pc, #308]	; 8001918 <_Z36reinforcement_learning_line_followerv+0x31c>
 80017e4:	ee07 0a10 	vmov	s14, r0
 80017e8:	ee37 7ac7 	vsub.f32	s14, s15, s14
 80017ec:	ab01      	add	r3, sp, #4
 80017ee:	ee37 7a66 	vsub.f32	s14, s14, s13
 80017f2:	eb03 0484 	add.w	r4, r3, r4, lsl #2
 80017f6:	2300      	movs	r3, #0
 80017f8:	ed84 7a00 	vstr	s14, [r4]
 80017fc:	4618      	mov	r0, r3
 80017fe:	eeb0 7a67 	vmov.f32	s14, s15
 8001802:	4290      	cmp	r0, r2
 8001804:	d01e      	beq.n	8001844 <_Z36reinforcement_learning_line_followerv+0x248>
 8001806:	eddf 7a40 	vldr	s15, [pc, #256]	; 8001908 <_Z36reinforcement_learning_line_followerv+0x30c>
 800180a:	0105      	lsls	r5, r0, #4
 800180c:	2100      	movs	r1, #0
 800180e:	ac04      	add	r4, sp, #16
 8001810:	1867      	adds	r7, r4, r1
 8001812:	f10d 0e38 	add.w	lr, sp, #56	; 0x38
 8001816:	194c      	adds	r4, r1, r5
 8001818:	4474      	add	r4, lr
 800181a:	edd7 6a00 	vldr	s13, [r7]
 800181e:	edd4 5a00 	vldr	s11, [r4]
 8001822:	3104      	adds	r1, #4
 8001824:	ee76 6ae5 	vsub.f32	s13, s13, s11
 8001828:	2910      	cmp	r1, #16
 800182a:	ee46 7aa6 	vmla.f32	s15, s13, s13
 800182e:	d1ee      	bne.n	800180e <_Z36reinforcement_learning_line_followerv+0x212>
 8001830:	eef4 7ac6 	vcmpe.f32	s15, s12
 8001834:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001838:	bf44      	itt	mi
 800183a:	4603      	movmi	r3, r0
 800183c:	eeb0 6a67 	vmovmi.f32	s12, s15
 8001840:	3001      	adds	r0, #1
 8001842:	e7de      	b.n	8001802 <_Z36reinforcement_learning_line_followerv+0x206>
 8001844:	2a07      	cmp	r2, #7
 8001846:	d81b      	bhi.n	8001880 <_Z36reinforcement_learning_line_followerv+0x284>
 8001848:	a90e      	add	r1, sp, #56	; 0x38
 800184a:	ab04      	add	r3, sp, #16
 800184c:	eb01 1102 	add.w	r1, r1, r2, lsl #4
 8001850:	ecf3 7a01 	vldmia	r3!, {s15}
 8001854:	ed91 7a00 	vldr	s14, [r1]
 8001858:	ee47 7a08 	vmla.f32	s15, s14, s16
 800185c:	42b3      	cmp	r3, r6
 800185e:	ece1 7a01 	vstmia	r1!, {s15}
 8001862:	d1f5      	bne.n	8001850 <_Z36reinforcement_learning_line_followerv+0x254>
 8001864:	ab0e      	add	r3, sp, #56	; 0x38
 8001866:	200c      	movs	r0, #12
 8001868:	fb00 3002 	mla	r0, r0, r2, r3
 800186c:	3080      	adds	r0, #128	; 0x80
 800186e:	a901      	add	r1, sp, #4
 8001870:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 8001874:	f7ff feaa 	bl	80015cc <_ZN10MathVectorILj3EE3mixERS0_f>
 8001878:	9b46      	ldr	r3, [sp, #280]	; 0x118
 800187a:	3301      	adds	r3, #1
 800187c:	9346      	str	r3, [sp, #280]	; 0x118
 800187e:	e01c      	b.n	80018ba <_Z36reinforcement_learning_line_followerv+0x2be>
 8001880:	a90e      	add	r1, sp, #56	; 0x38
 8001882:	ed9d 6a47 	vldr	s12, [sp, #284]	; 0x11c
 8001886:	aa04      	add	r2, sp, #16
 8001888:	eb01 1103 	add.w	r1, r1, r3, lsl #4
 800188c:	ecf2 7a01 	vldmia	r2!, {s15}
 8001890:	edd1 5a00 	vldr	s11, [r1]
 8001894:	ee77 6a46 	vsub.f32	s13, s14, s12
 8001898:	ee66 7a27 	vmul.f32	s15, s12, s15
 800189c:	ee46 7aa5 	vmla.f32	s15, s13, s11
 80018a0:	42b2      	cmp	r2, r6
 80018a2:	ece1 7a01 	vstmia	r1!, {s15}
 80018a6:	d1f1      	bne.n	800188c <_Z36reinforcement_learning_line_followerv+0x290>
 80018a8:	aa0e      	add	r2, sp, #56	; 0x38
 80018aa:	200c      	movs	r0, #12
 80018ac:	fb00 2003 	mla	r0, r0, r3, r2
 80018b0:	3080      	adds	r0, #128	; 0x80
 80018b2:	a901      	add	r1, sp, #4
 80018b4:	9a47      	ldr	r2, [sp, #284]	; 0x11c
 80018b6:	f7ff fe89 	bl	80015cc <_ZN10MathVectorILj3EE3mixERS0_f>
 80018ba:	4630      	mov	r0, r6
 80018bc:	f7fe fd7c 	bl	80003b8 <_ZN13CLinePosition7on_lineEv>
 80018c0:	4604      	mov	r4, r0
 80018c2:	2800      	cmp	r0, #0
 80018c4:	f47f aeed 	bne.w	80016a2 <_Z36reinforcement_learning_line_followerv+0xa6>
 80018c8:	4621      	mov	r1, r4
 80018ca:	4814      	ldr	r0, [pc, #80]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 80018cc:	f06f 020d 	mvn.w	r2, #13
 80018d0:	f7ff f8ac 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 80018d4:	f06f 020d 	mvn.w	r2, #13
 80018d8:	4810      	ldr	r0, [pc, #64]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 80018da:	2101      	movs	r1, #1
 80018dc:	f7ff f8a6 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 80018e0:	4811      	ldr	r0, [pc, #68]	; (8001928 <_Z36reinforcement_learning_line_followerv+0x32c>)
 80018e2:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80018e6:	f7fe fe47 	bl	8000578 <_ZN6CTimer8delay_msEm>
 80018ea:	4621      	mov	r1, r4
 80018ec:	4622      	mov	r2, r4
 80018ee:	480b      	ldr	r0, [pc, #44]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 80018f0:	f7ff f89c 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 80018f4:	4809      	ldr	r0, [pc, #36]	; (800191c <_Z36reinforcement_learning_line_followerv+0x320>)
 80018f6:	2101      	movs	r1, #1
 80018f8:	4622      	mov	r2, r4
 80018fa:	f7ff f897 	bl	8000a2c <_ZN6CMotor9set_motorEml>
 80018fe:	4803      	ldr	r0, [pc, #12]	; (800190c <_Z36reinforcement_learning_line_followerv+0x310>)
 8001900:	2164      	movs	r1, #100	; 0x64
 8001902:	f7fe fe39 	bl	8000578 <_ZN6CTimer8delay_msEm>
 8001906:	e6cc      	b.n	80016a2 <_Z36reinforcement_learning_line_followerv+0xa6>
 8001908:	00000000 	.word	0x00000000
 800190c:	20000030 	.word	0x20000030
 8001910:	3dcccccd 	.word	0x3dcccccd
 8001914:	20000108 	.word	0x20000108
 8001918:	4cbebc20 	.word	0x4cbebc20
 800191c:	200000f4 	.word	0x200000f4
 8001920:	3f800000 	.word	0x3f800000
 8001924:	3f000000 	.word	0x3f000000
 8001928:	20000030 	.word	0x20000030

0800192c <main>:
 800192c:	b508      	push	{r3, lr}
 800192e:	f000 fb71 	bl	8002014 <sytem_clock_init>
 8001932:	481b      	ldr	r0, [pc, #108]	; (80019a0 <main+0x74>)
 8001934:	f7fe fc58 	bl	80001e8 <_ZN7CKodama4initEv>
 8001938:	b118      	cbz	r0, 8001942 <main+0x16>
 800193a:	4819      	ldr	r0, [pc, #100]	; (80019a0 <main+0x74>)
 800193c:	2100      	movs	r1, #0
 800193e:	f7ff fcd7 	bl	80012f0 <_ZN6CError10error_funcEi>
 8001942:	4817      	ldr	r0, [pc, #92]	; (80019a0 <main+0x74>)
 8001944:	210a      	movs	r1, #10
 8001946:	f7fe fc8e 	bl	8000266 <_ZN7CKodama6set_dtEl>
 800194a:	4815      	ldr	r0, [pc, #84]	; (80019a0 <main+0x74>)
 800194c:	f7fe fc6e 	bl	800022c <_ZN7CKodama5sleepEv>
 8001950:	4813      	ldr	r0, [pc, #76]	; (80019a0 <main+0x74>)
 8001952:	f44f 7100 	mov.w	r1, #512	; 0x200
 8001956:	f7ff fcaf 	bl	80012b8 <_ZN5CGPIO7gpio_inEm>
 800195a:	b120      	cbz	r0, 8001966 <main+0x3a>
 800195c:	4810      	ldr	r0, [pc, #64]	; (80019a0 <main+0x74>)
 800195e:	f7fe fc70 	bl	8000242 <_ZN7CKodama6wakeupEv>
 8001962:	f7ff fe4b 	bl	80015fc <_Z36reinforcement_learning_line_followerv>
 8001966:	480e      	ldr	r0, [pc, #56]	; (80019a0 <main+0x74>)
 8001968:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800196c:	f7ff fc88 	bl	8001280 <_ZN5CGPIO7gpio_onEm>
 8001970:	480b      	ldr	r0, [pc, #44]	; (80019a0 <main+0x74>)
 8001972:	210a      	movs	r1, #10
 8001974:	f7fe fe00 	bl	8000578 <_ZN6CTimer8delay_msEm>
 8001978:	4809      	ldr	r0, [pc, #36]	; (80019a0 <main+0x74>)
 800197a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800197e:	f7ff fc8d 	bl	800129c <_ZN5CGPIO8gpio_offEm>
 8001982:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001986:	4806      	ldr	r0, [pc, #24]	; (80019a0 <main+0x74>)
 8001988:	f7fe fdf6 	bl	8000578 <_ZN6CTimer8delay_msEm>
 800198c:	4804      	ldr	r0, [pc, #16]	; (80019a0 <main+0x74>)
 800198e:	f7fe fde5 	bl	800055c <_ZN6CTimer8get_timeEv>
 8001992:	4904      	ldr	r1, [pc, #16]	; (80019a4 <main+0x78>)
 8001994:	4602      	mov	r2, r0
 8001996:	4802      	ldr	r0, [pc, #8]	; (80019a0 <main+0x74>)
 8001998:	f7ff fdc6 	bl	8001528 <_ZN9CTerminal6printfEPKcz>
 800199c:	e7d8      	b.n	8001950 <main+0x24>
 800199e:	bf00      	nop
 80019a0:	20000030 	.word	0x20000030
 80019a4:	080022c4 	.word	0x080022c4

080019a8 <RCC_GetClocksFreq>:
 80019a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80019ac:	4f9b      	ldr	r7, [pc, #620]	; (8001c1c <RCC_GetClocksFreq+0x274>)
 80019ae:	687b      	ldr	r3, [r7, #4]
 80019b0:	f003 030c 	and.w	r3, r3, #12
 80019b4:	2b04      	cmp	r3, #4
 80019b6:	d005      	beq.n	80019c4 <RCC_GetClocksFreq+0x1c>
 80019b8:	2b08      	cmp	r3, #8
 80019ba:	d006      	beq.n	80019ca <RCC_GetClocksFreq+0x22>
 80019bc:	4a98      	ldr	r2, [pc, #608]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 80019be:	6002      	str	r2, [r0, #0]
 80019c0:	b9b3      	cbnz	r3, 80019f0 <RCC_GetClocksFreq+0x48>
 80019c2:	e016      	b.n	80019f2 <RCC_GetClocksFreq+0x4a>
 80019c4:	4b96      	ldr	r3, [pc, #600]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 80019c6:	6003      	str	r3, [r0, #0]
 80019c8:	e012      	b.n	80019f0 <RCC_GetClocksFreq+0x48>
 80019ca:	687b      	ldr	r3, [r7, #4]
 80019cc:	6879      	ldr	r1, [r7, #4]
 80019ce:	f3c3 4383 	ubfx	r3, r3, #18, #4
 80019d2:	1c9a      	adds	r2, r3, #2
 80019d4:	03cb      	lsls	r3, r1, #15
 80019d6:	bf49      	itett	mi
 80019d8:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 80019da:	4b92      	ldrpl	r3, [pc, #584]	; (8001c24 <RCC_GetClocksFreq+0x27c>)
 80019dc:	4990      	ldrmi	r1, [pc, #576]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 80019de:	f003 030f 	andmi.w	r3, r3, #15
 80019e2:	bf44      	itt	mi
 80019e4:	3301      	addmi	r3, #1
 80019e6:	fbb1 f3f3 	udivmi	r3, r1, r3
 80019ea:	4353      	muls	r3, r2
 80019ec:	6003      	str	r3, [r0, #0]
 80019ee:	e000      	b.n	80019f2 <RCC_GetClocksFreq+0x4a>
 80019f0:	2300      	movs	r3, #0
 80019f2:	687a      	ldr	r2, [r7, #4]
 80019f4:	4e8c      	ldr	r6, [pc, #560]	; (8001c28 <RCC_GetClocksFreq+0x280>)
 80019f6:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001c2c <RCC_GetClocksFreq+0x284>
 80019fa:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80019fe:	5cb4      	ldrb	r4, [r6, r2]
 8001a00:	6802      	ldr	r2, [r0, #0]
 8001a02:	b2e4      	uxtb	r4, r4
 8001a04:	fa22 f104 	lsr.w	r1, r2, r4
 8001a08:	6041      	str	r1, [r0, #4]
 8001a0a:	687d      	ldr	r5, [r7, #4]
 8001a0c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001a10:	5d75      	ldrb	r5, [r6, r5]
 8001a12:	fa21 fe05 	lsr.w	lr, r1, r5
 8001a16:	f8c0 e008 	str.w	lr, [r0, #8]
 8001a1a:	687d      	ldr	r5, [r7, #4]
 8001a1c:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001a20:	5d75      	ldrb	r5, [r6, r5]
 8001a22:	b2ed      	uxtb	r5, r5
 8001a24:	40e9      	lsrs	r1, r5
 8001a26:	60c1      	str	r1, [r0, #12]
 8001a28:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001a2a:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001a2e:	f008 060f 	and.w	r6, r8, #15
 8001a32:	f018 0f10 	tst.w	r8, #16
 8001a36:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001a3a:	46e0      	mov	r8, ip
 8001a3c:	b2b6      	uxth	r6, r6
 8001a3e:	d004      	beq.n	8001a4a <RCC_GetClocksFreq+0xa2>
 8001a40:	b11e      	cbz	r6, 8001a4a <RCC_GetClocksFreq+0xa2>
 8001a42:	fbb3 f6f6 	udiv	r6, r3, r6
 8001a46:	6106      	str	r6, [r0, #16]
 8001a48:	e000      	b.n	8001a4c <RCC_GetClocksFreq+0xa4>
 8001a4a:	6102      	str	r2, [r0, #16]
 8001a4c:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001a4e:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001a52:	f00c 060f 	and.w	r6, ip, #15
 8001a56:	f01c 0f10 	tst.w	ip, #16
 8001a5a:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001a5e:	b2b6      	uxth	r6, r6
 8001a60:	d004      	beq.n	8001a6c <RCC_GetClocksFreq+0xc4>
 8001a62:	b11e      	cbz	r6, 8001a6c <RCC_GetClocksFreq+0xc4>
 8001a64:	fbb3 f6f6 	udiv	r6, r3, r6
 8001a68:	6146      	str	r6, [r0, #20]
 8001a6a:	e000      	b.n	8001a6e <RCC_GetClocksFreq+0xc6>
 8001a6c:	6142      	str	r2, [r0, #20]
 8001a6e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a70:	06f6      	lsls	r6, r6, #27
 8001a72:	bf5a      	itte	pl
 8001a74:	4e6a      	ldrpl	r6, [pc, #424]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 8001a76:	6186      	strpl	r6, [r0, #24]
 8001a78:	6182      	strmi	r2, [r0, #24]
 8001a7a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a7c:	06b6      	lsls	r6, r6, #26
 8001a7e:	bf5a      	itte	pl
 8001a80:	4e67      	ldrpl	r6, [pc, #412]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 8001a82:	61c6      	strpl	r6, [r0, #28]
 8001a84:	61c2      	strmi	r2, [r0, #28]
 8001a86:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a88:	0676      	lsls	r6, r6, #25
 8001a8a:	bf5a      	itte	pl
 8001a8c:	4e64      	ldrpl	r6, [pc, #400]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 8001a8e:	6206      	strpl	r6, [r0, #32]
 8001a90:	6202      	strmi	r2, [r0, #32]
 8001a92:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a94:	05f6      	lsls	r6, r6, #23
 8001a96:	d506      	bpl.n	8001aa6 <RCC_GetClocksFreq+0xfe>
 8001a98:	429a      	cmp	r2, r3
 8001a9a:	d104      	bne.n	8001aa6 <RCC_GetClocksFreq+0xfe>
 8001a9c:	42a5      	cmp	r5, r4
 8001a9e:	d102      	bne.n	8001aa6 <RCC_GetClocksFreq+0xfe>
 8001aa0:	0056      	lsls	r6, r2, #1
 8001aa2:	6246      	str	r6, [r0, #36]	; 0x24
 8001aa4:	e000      	b.n	8001aa8 <RCC_GetClocksFreq+0x100>
 8001aa6:	6241      	str	r1, [r0, #36]	; 0x24
 8001aa8:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001aaa:	04f6      	lsls	r6, r6, #19
 8001aac:	d506      	bpl.n	8001abc <RCC_GetClocksFreq+0x114>
 8001aae:	429a      	cmp	r2, r3
 8001ab0:	d104      	bne.n	8001abc <RCC_GetClocksFreq+0x114>
 8001ab2:	42a5      	cmp	r5, r4
 8001ab4:	d102      	bne.n	8001abc <RCC_GetClocksFreq+0x114>
 8001ab6:	0056      	lsls	r6, r2, #1
 8001ab8:	6286      	str	r6, [r0, #40]	; 0x28
 8001aba:	e000      	b.n	8001abe <RCC_GetClocksFreq+0x116>
 8001abc:	6281      	str	r1, [r0, #40]	; 0x28
 8001abe:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ac0:	05b6      	lsls	r6, r6, #22
 8001ac2:	d506      	bpl.n	8001ad2 <RCC_GetClocksFreq+0x12a>
 8001ac4:	429a      	cmp	r2, r3
 8001ac6:	d104      	bne.n	8001ad2 <RCC_GetClocksFreq+0x12a>
 8001ac8:	42a5      	cmp	r5, r4
 8001aca:	d102      	bne.n	8001ad2 <RCC_GetClocksFreq+0x12a>
 8001acc:	0056      	lsls	r6, r2, #1
 8001ace:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001ad0:	e000      	b.n	8001ad4 <RCC_GetClocksFreq+0x12c>
 8001ad2:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001ad4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ad6:	0576      	lsls	r6, r6, #21
 8001ad8:	d506      	bpl.n	8001ae8 <RCC_GetClocksFreq+0x140>
 8001ada:	429a      	cmp	r2, r3
 8001adc:	d104      	bne.n	8001ae8 <RCC_GetClocksFreq+0x140>
 8001ade:	42a5      	cmp	r5, r4
 8001ae0:	d102      	bne.n	8001ae8 <RCC_GetClocksFreq+0x140>
 8001ae2:	0056      	lsls	r6, r2, #1
 8001ae4:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001ae6:	e000      	b.n	8001aea <RCC_GetClocksFreq+0x142>
 8001ae8:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001aea:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001aec:	0536      	lsls	r6, r6, #20
 8001aee:	d506      	bpl.n	8001afe <RCC_GetClocksFreq+0x156>
 8001af0:	429a      	cmp	r2, r3
 8001af2:	d104      	bne.n	8001afe <RCC_GetClocksFreq+0x156>
 8001af4:	42a5      	cmp	r5, r4
 8001af6:	d102      	bne.n	8001afe <RCC_GetClocksFreq+0x156>
 8001af8:	0056      	lsls	r6, r2, #1
 8001afa:	6506      	str	r6, [r0, #80]	; 0x50
 8001afc:	e000      	b.n	8001b00 <RCC_GetClocksFreq+0x158>
 8001afe:	6501      	str	r1, [r0, #80]	; 0x50
 8001b00:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b02:	04b6      	lsls	r6, r6, #18
 8001b04:	d506      	bpl.n	8001b14 <RCC_GetClocksFreq+0x16c>
 8001b06:	429a      	cmp	r2, r3
 8001b08:	d104      	bne.n	8001b14 <RCC_GetClocksFreq+0x16c>
 8001b0a:	42a5      	cmp	r5, r4
 8001b0c:	d102      	bne.n	8001b14 <RCC_GetClocksFreq+0x16c>
 8001b0e:	0056      	lsls	r6, r2, #1
 8001b10:	6546      	str	r6, [r0, #84]	; 0x54
 8001b12:	e000      	b.n	8001b16 <RCC_GetClocksFreq+0x16e>
 8001b14:	6501      	str	r1, [r0, #80]	; 0x50
 8001b16:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b18:	0436      	lsls	r6, r6, #16
 8001b1a:	d506      	bpl.n	8001b2a <RCC_GetClocksFreq+0x182>
 8001b1c:	429a      	cmp	r2, r3
 8001b1e:	d104      	bne.n	8001b2a <RCC_GetClocksFreq+0x182>
 8001b20:	42a5      	cmp	r5, r4
 8001b22:	d102      	bne.n	8001b2a <RCC_GetClocksFreq+0x182>
 8001b24:	0053      	lsls	r3, r2, #1
 8001b26:	6583      	str	r3, [r0, #88]	; 0x58
 8001b28:	e000      	b.n	8001b2c <RCC_GetClocksFreq+0x184>
 8001b2a:	6581      	str	r1, [r0, #88]	; 0x58
 8001b2c:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001b2e:	4b3b      	ldr	r3, [pc, #236]	; (8001c1c <RCC_GetClocksFreq+0x274>)
 8001b30:	07a4      	lsls	r4, r4, #30
 8001b32:	d101      	bne.n	8001b38 <RCC_GetClocksFreq+0x190>
 8001b34:	6381      	str	r1, [r0, #56]	; 0x38
 8001b36:	e015      	b.n	8001b64 <RCC_GetClocksFreq+0x1bc>
 8001b38:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b3a:	f001 0103 	and.w	r1, r1, #3
 8001b3e:	2901      	cmp	r1, #1
 8001b40:	d101      	bne.n	8001b46 <RCC_GetClocksFreq+0x19e>
 8001b42:	6382      	str	r2, [r0, #56]	; 0x38
 8001b44:	e00e      	b.n	8001b64 <RCC_GetClocksFreq+0x1bc>
 8001b46:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b48:	f001 0103 	and.w	r1, r1, #3
 8001b4c:	2902      	cmp	r1, #2
 8001b4e:	d102      	bne.n	8001b56 <RCC_GetClocksFreq+0x1ae>
 8001b50:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b54:	e005      	b.n	8001b62 <RCC_GetClocksFreq+0x1ba>
 8001b56:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b58:	f003 0303 	and.w	r3, r3, #3
 8001b5c:	2b03      	cmp	r3, #3
 8001b5e:	d101      	bne.n	8001b64 <RCC_GetClocksFreq+0x1bc>
 8001b60:	4b2f      	ldr	r3, [pc, #188]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 8001b62:	6383      	str	r3, [r0, #56]	; 0x38
 8001b64:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b66:	4b2d      	ldr	r3, [pc, #180]	; (8001c1c <RCC_GetClocksFreq+0x274>)
 8001b68:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001b6c:	d102      	bne.n	8001b74 <RCC_GetClocksFreq+0x1cc>
 8001b6e:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001b72:	e018      	b.n	8001ba6 <RCC_GetClocksFreq+0x1fe>
 8001b74:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b76:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b7a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001b7e:	d101      	bne.n	8001b84 <RCC_GetClocksFreq+0x1dc>
 8001b80:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001b82:	e010      	b.n	8001ba6 <RCC_GetClocksFreq+0x1fe>
 8001b84:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b86:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b8a:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001b8e:	d102      	bne.n	8001b96 <RCC_GetClocksFreq+0x1ee>
 8001b90:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b94:	e006      	b.n	8001ba4 <RCC_GetClocksFreq+0x1fc>
 8001b96:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b98:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001b9c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001ba0:	d101      	bne.n	8001ba6 <RCC_GetClocksFreq+0x1fe>
 8001ba2:	4b1f      	ldr	r3, [pc, #124]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 8001ba4:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001ba6:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001ba8:	4b1c      	ldr	r3, [pc, #112]	; (8001c1c <RCC_GetClocksFreq+0x274>)
 8001baa:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001bae:	d102      	bne.n	8001bb6 <RCC_GetClocksFreq+0x20e>
 8001bb0:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001bb4:	e018      	b.n	8001be8 <RCC_GetClocksFreq+0x240>
 8001bb6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bb8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001bbc:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001bc0:	d101      	bne.n	8001bc6 <RCC_GetClocksFreq+0x21e>
 8001bc2:	6402      	str	r2, [r0, #64]	; 0x40
 8001bc4:	e010      	b.n	8001be8 <RCC_GetClocksFreq+0x240>
 8001bc6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bc8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001bcc:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001bd0:	d102      	bne.n	8001bd8 <RCC_GetClocksFreq+0x230>
 8001bd2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001bd6:	e006      	b.n	8001be6 <RCC_GetClocksFreq+0x23e>
 8001bd8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001bda:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001bde:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001be2:	d101      	bne.n	8001be8 <RCC_GetClocksFreq+0x240>
 8001be4:	4b0e      	ldr	r3, [pc, #56]	; (8001c20 <RCC_GetClocksFreq+0x278>)
 8001be6:	6403      	str	r3, [r0, #64]	; 0x40
 8001be8:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001bea:	4b0c      	ldr	r3, [pc, #48]	; (8001c1c <RCC_GetClocksFreq+0x274>)
 8001bec:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001bf0:	d102      	bne.n	8001bf8 <RCC_GetClocksFreq+0x250>
 8001bf2:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001bf6:	e023      	b.n	8001c40 <RCC_GetClocksFreq+0x298>
 8001bf8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bfa:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001bfe:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001c02:	d101      	bne.n	8001c08 <RCC_GetClocksFreq+0x260>
 8001c04:	6442      	str	r2, [r0, #68]	; 0x44
 8001c06:	e01b      	b.n	8001c40 <RCC_GetClocksFreq+0x298>
 8001c08:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c0a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001c0e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001c12:	d10d      	bne.n	8001c30 <RCC_GetClocksFreq+0x288>
 8001c14:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c18:	e011      	b.n	8001c3e <RCC_GetClocksFreq+0x296>
 8001c1a:	bf00      	nop
 8001c1c:	40021000 	.word	0x40021000
 8001c20:	007a1200 	.word	0x007a1200
 8001c24:	003d0900 	.word	0x003d0900
 8001c28:	20000020 	.word	0x20000020
 8001c2c:	20000000 	.word	0x20000000
 8001c30:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c32:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001c36:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001c3a:	d101      	bne.n	8001c40 <RCC_GetClocksFreq+0x298>
 8001c3c:	4b13      	ldr	r3, [pc, #76]	; (8001c8c <RCC_GetClocksFreq+0x2e4>)
 8001c3e:	6443      	str	r3, [r0, #68]	; 0x44
 8001c40:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c42:	4b13      	ldr	r3, [pc, #76]	; (8001c90 <RCC_GetClocksFreq+0x2e8>)
 8001c44:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001c48:	d103      	bne.n	8001c52 <RCC_GetClocksFreq+0x2aa>
 8001c4a:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001c4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c52:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c54:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001c58:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001c5c:	d102      	bne.n	8001c64 <RCC_GetClocksFreq+0x2bc>
 8001c5e:	6482      	str	r2, [r0, #72]	; 0x48
 8001c60:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c64:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001c66:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001c6a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001c6e:	d102      	bne.n	8001c76 <RCC_GetClocksFreq+0x2ce>
 8001c70:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c74:	e006      	b.n	8001c84 <RCC_GetClocksFreq+0x2dc>
 8001c76:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c78:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001c7c:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001c80:	d101      	bne.n	8001c86 <RCC_GetClocksFreq+0x2de>
 8001c82:	4b02      	ldr	r3, [pc, #8]	; (8001c8c <RCC_GetClocksFreq+0x2e4>)
 8001c84:	6483      	str	r3, [r0, #72]	; 0x48
 8001c86:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c8a:	bf00      	nop
 8001c8c:	007a1200 	.word	0x007a1200
 8001c90:	40021000 	.word	0x40021000

08001c94 <RCC_AHBPeriphClockCmd>:
 8001c94:	bf00      	nop
 8001c96:	bf00      	nop
 8001c98:	4b04      	ldr	r3, [pc, #16]	; (8001cac <RCC_AHBPeriphClockCmd+0x18>)
 8001c9a:	695a      	ldr	r2, [r3, #20]
 8001c9c:	b109      	cbz	r1, 8001ca2 <RCC_AHBPeriphClockCmd+0xe>
 8001c9e:	4310      	orrs	r0, r2
 8001ca0:	e001      	b.n	8001ca6 <RCC_AHBPeriphClockCmd+0x12>
 8001ca2:	ea22 0000 	bic.w	r0, r2, r0
 8001ca6:	6158      	str	r0, [r3, #20]
 8001ca8:	4770      	bx	lr
 8001caa:	bf00      	nop
 8001cac:	40021000 	.word	0x40021000

08001cb0 <RCC_APB2PeriphClockCmd>:
 8001cb0:	bf00      	nop
 8001cb2:	bf00      	nop
 8001cb4:	4b04      	ldr	r3, [pc, #16]	; (8001cc8 <RCC_APB2PeriphClockCmd+0x18>)
 8001cb6:	699a      	ldr	r2, [r3, #24]
 8001cb8:	b109      	cbz	r1, 8001cbe <RCC_APB2PeriphClockCmd+0xe>
 8001cba:	4310      	orrs	r0, r2
 8001cbc:	e001      	b.n	8001cc2 <RCC_APB2PeriphClockCmd+0x12>
 8001cbe:	ea22 0000 	bic.w	r0, r2, r0
 8001cc2:	6198      	str	r0, [r3, #24]
 8001cc4:	4770      	bx	lr
 8001cc6:	bf00      	nop
 8001cc8:	40021000 	.word	0x40021000

08001ccc <RCC_APB1PeriphClockCmd>:
 8001ccc:	bf00      	nop
 8001cce:	bf00      	nop
 8001cd0:	4b04      	ldr	r3, [pc, #16]	; (8001ce4 <RCC_APB1PeriphClockCmd+0x18>)
 8001cd2:	69da      	ldr	r2, [r3, #28]
 8001cd4:	b109      	cbz	r1, 8001cda <RCC_APB1PeriphClockCmd+0xe>
 8001cd6:	4310      	orrs	r0, r2
 8001cd8:	e001      	b.n	8001cde <RCC_APB1PeriphClockCmd+0x12>
 8001cda:	ea22 0000 	bic.w	r0, r2, r0
 8001cde:	61d8      	str	r0, [r3, #28]
 8001ce0:	4770      	bx	lr
 8001ce2:	bf00      	nop
 8001ce4:	40021000 	.word	0x40021000

08001ce8 <TIM_TimeBaseInit>:
 8001ce8:	bf00      	nop
 8001cea:	bf00      	nop
 8001cec:	bf00      	nop
 8001cee:	4a24      	ldr	r2, [pc, #144]	; (8001d80 <TIM_TimeBaseInit+0x98>)
 8001cf0:	8803      	ldrh	r3, [r0, #0]
 8001cf2:	4290      	cmp	r0, r2
 8001cf4:	b29b      	uxth	r3, r3
 8001cf6:	d012      	beq.n	8001d1e <TIM_TimeBaseInit+0x36>
 8001cf8:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001cfc:	4290      	cmp	r0, r2
 8001cfe:	d00e      	beq.n	8001d1e <TIM_TimeBaseInit+0x36>
 8001d00:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001d04:	d00b      	beq.n	8001d1e <TIM_TimeBaseInit+0x36>
 8001d06:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001d0a:	4290      	cmp	r0, r2
 8001d0c:	d007      	beq.n	8001d1e <TIM_TimeBaseInit+0x36>
 8001d0e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001d12:	4290      	cmp	r0, r2
 8001d14:	d003      	beq.n	8001d1e <TIM_TimeBaseInit+0x36>
 8001d16:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001d1a:	4290      	cmp	r0, r2
 8001d1c:	d103      	bne.n	8001d26 <TIM_TimeBaseInit+0x3e>
 8001d1e:	884a      	ldrh	r2, [r1, #2]
 8001d20:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001d24:	4313      	orrs	r3, r2
 8001d26:	4a17      	ldr	r2, [pc, #92]	; (8001d84 <TIM_TimeBaseInit+0x9c>)
 8001d28:	4290      	cmp	r0, r2
 8001d2a:	d008      	beq.n	8001d3e <TIM_TimeBaseInit+0x56>
 8001d2c:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001d30:	4290      	cmp	r0, r2
 8001d32:	bf1f      	itttt	ne
 8001d34:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001d38:	890a      	ldrhne	r2, [r1, #8]
 8001d3a:	b29b      	uxthne	r3, r3
 8001d3c:	4313      	orrne	r3, r2
 8001d3e:	8003      	strh	r3, [r0, #0]
 8001d40:	684b      	ldr	r3, [r1, #4]
 8001d42:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001d44:	880b      	ldrh	r3, [r1, #0]
 8001d46:	8503      	strh	r3, [r0, #40]	; 0x28
 8001d48:	4b0d      	ldr	r3, [pc, #52]	; (8001d80 <TIM_TimeBaseInit+0x98>)
 8001d4a:	4298      	cmp	r0, r3
 8001d4c:	d013      	beq.n	8001d76 <TIM_TimeBaseInit+0x8e>
 8001d4e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d52:	4298      	cmp	r0, r3
 8001d54:	d00f      	beq.n	8001d76 <TIM_TimeBaseInit+0x8e>
 8001d56:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001d5a:	4298      	cmp	r0, r3
 8001d5c:	d00b      	beq.n	8001d76 <TIM_TimeBaseInit+0x8e>
 8001d5e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001d62:	4298      	cmp	r0, r3
 8001d64:	d007      	beq.n	8001d76 <TIM_TimeBaseInit+0x8e>
 8001d66:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001d6a:	4298      	cmp	r0, r3
 8001d6c:	d003      	beq.n	8001d76 <TIM_TimeBaseInit+0x8e>
 8001d6e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d72:	4298      	cmp	r0, r3
 8001d74:	d101      	bne.n	8001d7a <TIM_TimeBaseInit+0x92>
 8001d76:	894b      	ldrh	r3, [r1, #10]
 8001d78:	8603      	strh	r3, [r0, #48]	; 0x30
 8001d7a:	2301      	movs	r3, #1
 8001d7c:	6143      	str	r3, [r0, #20]
 8001d7e:	4770      	bx	lr
 8001d80:	40012c00 	.word	0x40012c00
 8001d84:	40001000 	.word	0x40001000

08001d88 <TIM_Cmd>:
 8001d88:	bf00      	nop
 8001d8a:	bf00      	nop
 8001d8c:	8803      	ldrh	r3, [r0, #0]
 8001d8e:	b119      	cbz	r1, 8001d98 <TIM_Cmd+0x10>
 8001d90:	b29b      	uxth	r3, r3
 8001d92:	f043 0301 	orr.w	r3, r3, #1
 8001d96:	e003      	b.n	8001da0 <TIM_Cmd+0x18>
 8001d98:	f023 0301 	bic.w	r3, r3, #1
 8001d9c:	041b      	lsls	r3, r3, #16
 8001d9e:	0c1b      	lsrs	r3, r3, #16
 8001da0:	8003      	strh	r3, [r0, #0]
 8001da2:	4770      	bx	lr

08001da4 <TIM_ClearITPendingBit>:
 8001da4:	bf00      	nop
 8001da6:	43c9      	mvns	r1, r1
 8001da8:	b289      	uxth	r1, r1
 8001daa:	6101      	str	r1, [r0, #16]
 8001dac:	4770      	bx	lr
	...

08001db0 <USART_Init>:
 8001db0:	b530      	push	{r4, r5, lr}
 8001db2:	4604      	mov	r4, r0
 8001db4:	b099      	sub	sp, #100	; 0x64
 8001db6:	460d      	mov	r5, r1
 8001db8:	bf00      	nop
 8001dba:	bf00      	nop
 8001dbc:	bf00      	nop
 8001dbe:	bf00      	nop
 8001dc0:	bf00      	nop
 8001dc2:	bf00      	nop
 8001dc4:	bf00      	nop
 8001dc6:	6803      	ldr	r3, [r0, #0]
 8001dc8:	f023 0301 	bic.w	r3, r3, #1
 8001dcc:	6003      	str	r3, [r0, #0]
 8001dce:	6843      	ldr	r3, [r0, #4]
 8001dd0:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001dd4:	688b      	ldr	r3, [r1, #8]
 8001dd6:	68c9      	ldr	r1, [r1, #12]
 8001dd8:	4313      	orrs	r3, r2
 8001dda:	6043      	str	r3, [r0, #4]
 8001ddc:	686a      	ldr	r2, [r5, #4]
 8001dde:	6803      	ldr	r3, [r0, #0]
 8001de0:	4311      	orrs	r1, r2
 8001de2:	692a      	ldr	r2, [r5, #16]
 8001de4:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001de8:	430a      	orrs	r2, r1
 8001dea:	f023 030c 	bic.w	r3, r3, #12
 8001dee:	4313      	orrs	r3, r2
 8001df0:	6003      	str	r3, [r0, #0]
 8001df2:	6883      	ldr	r3, [r0, #8]
 8001df4:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001df8:	696b      	ldr	r3, [r5, #20]
 8001dfa:	4313      	orrs	r3, r2
 8001dfc:	6083      	str	r3, [r0, #8]
 8001dfe:	a801      	add	r0, sp, #4
 8001e00:	f7ff fdd2 	bl	80019a8 <RCC_GetClocksFreq>
 8001e04:	4b17      	ldr	r3, [pc, #92]	; (8001e64 <USART_Init+0xb4>)
 8001e06:	429c      	cmp	r4, r3
 8001e08:	d101      	bne.n	8001e0e <USART_Init+0x5e>
 8001e0a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001e0c:	e00e      	b.n	8001e2c <USART_Init+0x7c>
 8001e0e:	4b16      	ldr	r3, [pc, #88]	; (8001e68 <USART_Init+0xb8>)
 8001e10:	429c      	cmp	r4, r3
 8001e12:	d101      	bne.n	8001e18 <USART_Init+0x68>
 8001e14:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001e16:	e009      	b.n	8001e2c <USART_Init+0x7c>
 8001e18:	4b14      	ldr	r3, [pc, #80]	; (8001e6c <USART_Init+0xbc>)
 8001e1a:	429c      	cmp	r4, r3
 8001e1c:	d101      	bne.n	8001e22 <USART_Init+0x72>
 8001e1e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001e20:	e004      	b.n	8001e2c <USART_Init+0x7c>
 8001e22:	4b13      	ldr	r3, [pc, #76]	; (8001e70 <USART_Init+0xc0>)
 8001e24:	429c      	cmp	r4, r3
 8001e26:	bf0c      	ite	eq
 8001e28:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001e2a:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001e2c:	6822      	ldr	r2, [r4, #0]
 8001e2e:	6829      	ldr	r1, [r5, #0]
 8001e30:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001e34:	bf18      	it	ne
 8001e36:	005b      	lslne	r3, r3, #1
 8001e38:	fbb3 f2f1 	udiv	r2, r3, r1
 8001e3c:	fb01 3312 	mls	r3, r1, r2, r3
 8001e40:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001e44:	6823      	ldr	r3, [r4, #0]
 8001e46:	bf28      	it	cs
 8001e48:	3201      	addcs	r2, #1
 8001e4a:	041b      	lsls	r3, r3, #16
 8001e4c:	bf41      	itttt	mi
 8001e4e:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001e52:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001e56:	4013      	andmi	r3, r2
 8001e58:	ea41 0203 	orrmi.w	r2, r1, r3
 8001e5c:	b292      	uxth	r2, r2
 8001e5e:	81a2      	strh	r2, [r4, #12]
 8001e60:	b019      	add	sp, #100	; 0x64
 8001e62:	bd30      	pop	{r4, r5, pc}
 8001e64:	40013800 	.word	0x40013800
 8001e68:	40004400 	.word	0x40004400
 8001e6c:	40004800 	.word	0x40004800
 8001e70:	40004c00 	.word	0x40004c00

08001e74 <USART_Cmd>:
 8001e74:	bf00      	nop
 8001e76:	bf00      	nop
 8001e78:	6803      	ldr	r3, [r0, #0]
 8001e7a:	b111      	cbz	r1, 8001e82 <USART_Cmd+0xe>
 8001e7c:	f043 0301 	orr.w	r3, r3, #1
 8001e80:	e001      	b.n	8001e86 <USART_Cmd+0x12>
 8001e82:	f023 0301 	bic.w	r3, r3, #1
 8001e86:	6003      	str	r3, [r0, #0]
 8001e88:	4770      	bx	lr

08001e8a <USART_ReceiveData>:
 8001e8a:	bf00      	nop
 8001e8c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001e8e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001e92:	4770      	bx	lr

08001e94 <USART_ITConfig>:
 8001e94:	b510      	push	{r4, lr}
 8001e96:	bf00      	nop
 8001e98:	bf00      	nop
 8001e9a:	bf00      	nop
 8001e9c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001ea0:	2301      	movs	r3, #1
 8001ea2:	b2c9      	uxtb	r1, r1
 8001ea4:	2c02      	cmp	r4, #2
 8001ea6:	fa03 f301 	lsl.w	r3, r3, r1
 8001eaa:	d101      	bne.n	8001eb0 <USART_ITConfig+0x1c>
 8001eac:	3004      	adds	r0, #4
 8001eae:	e002      	b.n	8001eb6 <USART_ITConfig+0x22>
 8001eb0:	2c03      	cmp	r4, #3
 8001eb2:	bf08      	it	eq
 8001eb4:	3008      	addeq	r0, #8
 8001eb6:	b112      	cbz	r2, 8001ebe <USART_ITConfig+0x2a>
 8001eb8:	6802      	ldr	r2, [r0, #0]
 8001eba:	4313      	orrs	r3, r2
 8001ebc:	e002      	b.n	8001ec4 <USART_ITConfig+0x30>
 8001ebe:	6802      	ldr	r2, [r0, #0]
 8001ec0:	ea22 0303 	bic.w	r3, r2, r3
 8001ec4:	6003      	str	r3, [r0, #0]
 8001ec6:	bd10      	pop	{r4, pc}

08001ec8 <USART_GetITStatus>:
 8001ec8:	b510      	push	{r4, lr}
 8001eca:	bf00      	nop
 8001ecc:	bf00      	nop
 8001ece:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001ed2:	b2cc      	uxtb	r4, r1
 8001ed4:	2301      	movs	r3, #1
 8001ed6:	2a01      	cmp	r2, #1
 8001ed8:	fa03 f304 	lsl.w	r3, r3, r4
 8001edc:	d101      	bne.n	8001ee2 <USART_GetITStatus+0x1a>
 8001ede:	6802      	ldr	r2, [r0, #0]
 8001ee0:	e003      	b.n	8001eea <USART_GetITStatus+0x22>
 8001ee2:	2a02      	cmp	r2, #2
 8001ee4:	bf0c      	ite	eq
 8001ee6:	6842      	ldreq	r2, [r0, #4]
 8001ee8:	6882      	ldrne	r2, [r0, #8]
 8001eea:	4013      	ands	r3, r2
 8001eec:	69c2      	ldr	r2, [r0, #28]
 8001eee:	b13b      	cbz	r3, 8001f00 <USART_GetITStatus+0x38>
 8001ef0:	0c09      	lsrs	r1, r1, #16
 8001ef2:	2301      	movs	r3, #1
 8001ef4:	408b      	lsls	r3, r1
 8001ef6:	4213      	tst	r3, r2
 8001ef8:	bf14      	ite	ne
 8001efa:	2001      	movne	r0, #1
 8001efc:	2000      	moveq	r0, #0
 8001efe:	bd10      	pop	{r4, pc}
 8001f00:	4618      	mov	r0, r3
 8001f02:	bd10      	pop	{r4, pc}

08001f04 <USART_ClearITPendingBit>:
 8001f04:	bf00      	nop
 8001f06:	bf00      	nop
 8001f08:	2301      	movs	r3, #1
 8001f0a:	0c09      	lsrs	r1, r1, #16
 8001f0c:	408b      	lsls	r3, r1
 8001f0e:	6203      	str	r3, [r0, #32]
 8001f10:	4770      	bx	lr
	...

08001f14 <SystemInit>:
 8001f14:	4a39      	ldr	r2, [pc, #228]	; (8001ffc <SystemInit+0xe8>)
 8001f16:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001f1a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001f1e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001f22:	4b37      	ldr	r3, [pc, #220]	; (8002000 <SystemInit+0xec>)
 8001f24:	681a      	ldr	r2, [r3, #0]
 8001f26:	f042 0201 	orr.w	r2, r2, #1
 8001f2a:	601a      	str	r2, [r3, #0]
 8001f2c:	6859      	ldr	r1, [r3, #4]
 8001f2e:	4a35      	ldr	r2, [pc, #212]	; (8002004 <SystemInit+0xf0>)
 8001f30:	400a      	ands	r2, r1
 8001f32:	605a      	str	r2, [r3, #4]
 8001f34:	681a      	ldr	r2, [r3, #0]
 8001f36:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001f3a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001f3e:	601a      	str	r2, [r3, #0]
 8001f40:	681a      	ldr	r2, [r3, #0]
 8001f42:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001f46:	601a      	str	r2, [r3, #0]
 8001f48:	685a      	ldr	r2, [r3, #4]
 8001f4a:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001f4e:	605a      	str	r2, [r3, #4]
 8001f50:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001f52:	f022 020f 	bic.w	r2, r2, #15
 8001f56:	62da      	str	r2, [r3, #44]	; 0x2c
 8001f58:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f5a:	4a2b      	ldr	r2, [pc, #172]	; (8002008 <SystemInit+0xf4>)
 8001f5c:	b082      	sub	sp, #8
 8001f5e:	400a      	ands	r2, r1
 8001f60:	631a      	str	r2, [r3, #48]	; 0x30
 8001f62:	2200      	movs	r2, #0
 8001f64:	609a      	str	r2, [r3, #8]
 8001f66:	9200      	str	r2, [sp, #0]
 8001f68:	9201      	str	r2, [sp, #4]
 8001f6a:	681a      	ldr	r2, [r3, #0]
 8001f6c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001f70:	601a      	str	r2, [r3, #0]
 8001f72:	681a      	ldr	r2, [r3, #0]
 8001f74:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001f78:	9201      	str	r2, [sp, #4]
 8001f7a:	9a00      	ldr	r2, [sp, #0]
 8001f7c:	3201      	adds	r2, #1
 8001f7e:	9200      	str	r2, [sp, #0]
 8001f80:	9a01      	ldr	r2, [sp, #4]
 8001f82:	b91a      	cbnz	r2, 8001f8c <SystemInit+0x78>
 8001f84:	9a00      	ldr	r2, [sp, #0]
 8001f86:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001f8a:	d1f2      	bne.n	8001f72 <SystemInit+0x5e>
 8001f8c:	681a      	ldr	r2, [r3, #0]
 8001f8e:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8001f92:	bf18      	it	ne
 8001f94:	2201      	movne	r2, #1
 8001f96:	9201      	str	r2, [sp, #4]
 8001f98:	9a01      	ldr	r2, [sp, #4]
 8001f9a:	2a01      	cmp	r2, #1
 8001f9c:	d005      	beq.n	8001faa <SystemInit+0x96>
 8001f9e:	4b17      	ldr	r3, [pc, #92]	; (8001ffc <SystemInit+0xe8>)
 8001fa0:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001fa4:	609a      	str	r2, [r3, #8]
 8001fa6:	b002      	add	sp, #8
 8001fa8:	4770      	bx	lr
 8001faa:	4a18      	ldr	r2, [pc, #96]	; (800200c <SystemInit+0xf8>)
 8001fac:	2112      	movs	r1, #18
 8001fae:	6011      	str	r1, [r2, #0]
 8001fb0:	685a      	ldr	r2, [r3, #4]
 8001fb2:	605a      	str	r2, [r3, #4]
 8001fb4:	685a      	ldr	r2, [r3, #4]
 8001fb6:	605a      	str	r2, [r3, #4]
 8001fb8:	685a      	ldr	r2, [r3, #4]
 8001fba:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001fbe:	605a      	str	r2, [r3, #4]
 8001fc0:	685a      	ldr	r2, [r3, #4]
 8001fc2:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001fc6:	605a      	str	r2, [r3, #4]
 8001fc8:	685a      	ldr	r2, [r3, #4]
 8001fca:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001fce:	605a      	str	r2, [r3, #4]
 8001fd0:	681a      	ldr	r2, [r3, #0]
 8001fd2:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001fd6:	601a      	str	r2, [r3, #0]
 8001fd8:	6819      	ldr	r1, [r3, #0]
 8001fda:	4a09      	ldr	r2, [pc, #36]	; (8002000 <SystemInit+0xec>)
 8001fdc:	0189      	lsls	r1, r1, #6
 8001fde:	d5fb      	bpl.n	8001fd8 <SystemInit+0xc4>
 8001fe0:	6851      	ldr	r1, [r2, #4]
 8001fe2:	f021 0103 	bic.w	r1, r1, #3
 8001fe6:	6051      	str	r1, [r2, #4]
 8001fe8:	6851      	ldr	r1, [r2, #4]
 8001fea:	f041 0102 	orr.w	r1, r1, #2
 8001fee:	6051      	str	r1, [r2, #4]
 8001ff0:	685a      	ldr	r2, [r3, #4]
 8001ff2:	f002 020c 	and.w	r2, r2, #12
 8001ff6:	2a08      	cmp	r2, #8
 8001ff8:	d1fa      	bne.n	8001ff0 <SystemInit+0xdc>
 8001ffa:	e7d0      	b.n	8001f9e <SystemInit+0x8a>
 8001ffc:	e000ed00 	.word	0xe000ed00
 8002000:	40021000 	.word	0x40021000
 8002004:	f87fc00c 	.word	0xf87fc00c
 8002008:	ff00fccc 	.word	0xff00fccc
 800200c:	40022000 	.word	0x40022000

08002010 <core_yield>:
 8002010:	bf00      	nop
 8002012:	4770      	bx	lr

08002014 <sytem_clock_init>:
 8002014:	f7ff bf7e 	b.w	8001f14 <SystemInit>

08002018 <NVIC_Init>:
 8002018:	b510      	push	{r4, lr}
 800201a:	bf00      	nop
 800201c:	bf00      	nop
 800201e:	bf00      	nop
 8002020:	78c2      	ldrb	r2, [r0, #3]
 8002022:	7803      	ldrb	r3, [r0, #0]
 8002024:	b312      	cbz	r2, 800206c <NVIC_Init+0x54>
 8002026:	4a17      	ldr	r2, [pc, #92]	; (8002084 <NVIC_Init+0x6c>)
 8002028:	68d1      	ldr	r1, [r2, #12]
 800202a:	7842      	ldrb	r2, [r0, #1]
 800202c:	43c9      	mvns	r1, r1
 800202e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002032:	f1c1 0404 	rsb	r4, r1, #4
 8002036:	b2e4      	uxtb	r4, r4
 8002038:	40a2      	lsls	r2, r4
 800203a:	b2d4      	uxtb	r4, r2
 800203c:	220f      	movs	r2, #15
 800203e:	410a      	asrs	r2, r1
 8002040:	7881      	ldrb	r1, [r0, #2]
 8002042:	400a      	ands	r2, r1
 8002044:	4322      	orrs	r2, r4
 8002046:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800204a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800204e:	0112      	lsls	r2, r2, #4
 8002050:	b2d2      	uxtb	r2, r2
 8002052:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002056:	7803      	ldrb	r3, [r0, #0]
 8002058:	2201      	movs	r2, #1
 800205a:	0959      	lsrs	r1, r3, #5
 800205c:	f003 031f 	and.w	r3, r3, #31
 8002060:	fa02 f303 	lsl.w	r3, r2, r3
 8002064:	4a08      	ldr	r2, [pc, #32]	; (8002088 <NVIC_Init+0x70>)
 8002066:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800206a:	bd10      	pop	{r4, pc}
 800206c:	095a      	lsrs	r2, r3, #5
 800206e:	2101      	movs	r1, #1
 8002070:	f003 031f 	and.w	r3, r3, #31
 8002074:	4099      	lsls	r1, r3
 8002076:	f102 0320 	add.w	r3, r2, #32
 800207a:	4a03      	ldr	r2, [pc, #12]	; (8002088 <NVIC_Init+0x70>)
 800207c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002080:	bd10      	pop	{r4, pc}
 8002082:	bf00      	nop
 8002084:	e000ed00 	.word	0xe000ed00
 8002088:	e000e100 	.word	0xe000e100

0800208c <EXTI_ClearITPendingBit>:
 800208c:	f020 011f 	bic.w	r1, r0, #31
 8002090:	2301      	movs	r3, #1
 8002092:	f000 001f 	and.w	r0, r0, #31
 8002096:	4a02      	ldr	r2, [pc, #8]	; (80020a0 <EXTI_ClearITPendingBit+0x14>)
 8002098:	4083      	lsls	r3, r0
 800209a:	508b      	str	r3, [r1, r2]
 800209c:	4770      	bx	lr
 800209e:	bf00      	nop
 80020a0:	40010414 	.word	0x40010414

080020a4 <GPIO_Init>:
 80020a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020a6:	bf00      	nop
 80020a8:	bf00      	nop
 80020aa:	bf00      	nop
 80020ac:	bf00      	nop
 80020ae:	2300      	movs	r3, #0
 80020b0:	680e      	ldr	r6, [r1, #0]
 80020b2:	461c      	mov	r4, r3
 80020b4:	2501      	movs	r5, #1
 80020b6:	40a5      	lsls	r5, r4
 80020b8:	ea05 0e06 	and.w	lr, r5, r6
 80020bc:	45ae      	cmp	lr, r5
 80020be:	d12d      	bne.n	800211c <GPIO_Init+0x78>
 80020c0:	790f      	ldrb	r7, [r1, #4]
 80020c2:	1e7a      	subs	r2, r7, #1
 80020c4:	2a01      	cmp	r2, #1
 80020c6:	d817      	bhi.n	80020f8 <GPIO_Init+0x54>
 80020c8:	bf00      	nop
 80020ca:	2203      	movs	r2, #3
 80020cc:	6885      	ldr	r5, [r0, #8]
 80020ce:	409a      	lsls	r2, r3
 80020d0:	ea25 0202 	bic.w	r2, r5, r2
 80020d4:	6082      	str	r2, [r0, #8]
 80020d6:	794d      	ldrb	r5, [r1, #5]
 80020d8:	6882      	ldr	r2, [r0, #8]
 80020da:	409d      	lsls	r5, r3
 80020dc:	4315      	orrs	r5, r2
 80020de:	6085      	str	r5, [r0, #8]
 80020e0:	bf00      	nop
 80020e2:	8882      	ldrh	r2, [r0, #4]
 80020e4:	b292      	uxth	r2, r2
 80020e6:	ea22 020e 	bic.w	r2, r2, lr
 80020ea:	8082      	strh	r2, [r0, #4]
 80020ec:	798a      	ldrb	r2, [r1, #6]
 80020ee:	8885      	ldrh	r5, [r0, #4]
 80020f0:	40a2      	lsls	r2, r4
 80020f2:	432a      	orrs	r2, r5
 80020f4:	b292      	uxth	r2, r2
 80020f6:	8082      	strh	r2, [r0, #4]
 80020f8:	2203      	movs	r2, #3
 80020fa:	6805      	ldr	r5, [r0, #0]
 80020fc:	409a      	lsls	r2, r3
 80020fe:	43d2      	mvns	r2, r2
 8002100:	4015      	ands	r5, r2
 8002102:	6005      	str	r5, [r0, #0]
 8002104:	6805      	ldr	r5, [r0, #0]
 8002106:	409f      	lsls	r7, r3
 8002108:	432f      	orrs	r7, r5
 800210a:	6007      	str	r7, [r0, #0]
 800210c:	68c7      	ldr	r7, [r0, #12]
 800210e:	4017      	ands	r7, r2
 8002110:	79ca      	ldrb	r2, [r1, #7]
 8002112:	fa02 f503 	lsl.w	r5, r2, r3
 8002116:	ea47 0205 	orr.w	r2, r7, r5
 800211a:	60c2      	str	r2, [r0, #12]
 800211c:	3401      	adds	r4, #1
 800211e:	2c10      	cmp	r4, #16
 8002120:	f103 0302 	add.w	r3, r3, #2
 8002124:	d1c6      	bne.n	80020b4 <GPIO_Init+0x10>
 8002126:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002128 <GPIO_SetBits>:
 8002128:	bf00      	nop
 800212a:	bf00      	nop
 800212c:	6181      	str	r1, [r0, #24]
 800212e:	4770      	bx	lr

08002130 <GPIO_PinAFConfig>:
 8002130:	b510      	push	{r4, lr}
 8002132:	bf00      	nop
 8002134:	bf00      	nop
 8002136:	bf00      	nop
 8002138:	f001 0307 	and.w	r3, r1, #7
 800213c:	08c9      	lsrs	r1, r1, #3
 800213e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002142:	009b      	lsls	r3, r3, #2
 8002144:	6a04      	ldr	r4, [r0, #32]
 8002146:	210f      	movs	r1, #15
 8002148:	4099      	lsls	r1, r3
 800214a:	ea24 0101 	bic.w	r1, r4, r1
 800214e:	6201      	str	r1, [r0, #32]
 8002150:	6a01      	ldr	r1, [r0, #32]
 8002152:	409a      	lsls	r2, r3
 8002154:	430a      	orrs	r2, r1
 8002156:	6202      	str	r2, [r0, #32]
 8002158:	bd10      	pop	{r4, pc}

0800215a <Default_Handler>:
 800215a:	4668      	mov	r0, sp
 800215c:	f020 0107 	bic.w	r1, r0, #7
 8002160:	468d      	mov	sp, r1
 8002162:	b501      	push	{r0, lr}
 8002164:	bf00      	nop
 8002166:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 800216a:	4685      	mov	sp, r0
 800216c:	4770      	bx	lr

0800216e <HardFault_Handler>:
 800216e:	bf00      	nop
 8002170:	e7fd      	b.n	800216e <HardFault_Handler>
	...

08002174 <_reset_init>:
 8002174:	490e      	ldr	r1, [pc, #56]	; (80021b0 <_reset_init+0x3c>)
 8002176:	4b0f      	ldr	r3, [pc, #60]	; (80021b4 <_reset_init+0x40>)
 8002178:	1a5b      	subs	r3, r3, r1
 800217a:	109b      	asrs	r3, r3, #2
 800217c:	2200      	movs	r2, #0
 800217e:	429a      	cmp	r2, r3
 8002180:	d006      	beq.n	8002190 <_reset_init+0x1c>
 8002182:	480d      	ldr	r0, [pc, #52]	; (80021b8 <_reset_init+0x44>)
 8002184:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002188:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 800218c:	3201      	adds	r2, #1
 800218e:	e7f6      	b.n	800217e <_reset_init+0xa>
 8002190:	4a0a      	ldr	r2, [pc, #40]	; (80021bc <_reset_init+0x48>)
 8002192:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002196:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800219a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800219e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 80021a2:	6853      	ldr	r3, [r2, #4]
 80021a4:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 80021a8:	6053      	str	r3, [r2, #4]
 80021aa:	f7ff bbbf 	b.w	800192c <main>
 80021ae:	bf00      	nop
 80021b0:	20000000 	.word	0x20000000
 80021b4:	20000030 	.word	0x20000030
 80021b8:	080022d4 	.word	0x080022d4
 80021bc:	e000ed00 	.word	0xe000ed00

080021c0 <scheduler>:
 80021c0:	b570      	push	{r4, r5, r6, lr}
 80021c2:	2200      	movs	r2, #0
 80021c4:	4611      	mov	r1, r2
 80021c6:	4b15      	ldr	r3, [pc, #84]	; (800221c <scheduler+0x5c>)
 80021c8:	200c      	movs	r0, #12
 80021ca:	fb00 f401 	mul.w	r4, r0, r1
 80021ce:	191e      	adds	r6, r3, r4
 80021d0:	6875      	ldr	r5, [r6, #4]
 80021d2:	f015 0f02 	tst.w	r5, #2
 80021d6:	461d      	mov	r5, r3
 80021d8:	d10a      	bne.n	80021f0 <scheduler+0x30>
 80021da:	6876      	ldr	r6, [r6, #4]
 80021dc:	07f6      	lsls	r6, r6, #31
 80021de:	d507      	bpl.n	80021f0 <scheduler+0x30>
 80021e0:	4350      	muls	r0, r2
 80021e2:	5b1c      	ldrh	r4, [r3, r4]
 80021e4:	5a18      	ldrh	r0, [r3, r0]
 80021e6:	b2a4      	uxth	r4, r4
 80021e8:	b280      	uxth	r0, r0
 80021ea:	4284      	cmp	r4, r0
 80021ec:	bf38      	it	cc
 80021ee:	460a      	movcc	r2, r1
 80021f0:	200c      	movs	r0, #12
 80021f2:	4348      	muls	r0, r1
 80021f4:	5a1c      	ldrh	r4, [r3, r0]
 80021f6:	b2a4      	uxth	r4, r4
 80021f8:	b11c      	cbz	r4, 8002202 <scheduler+0x42>
 80021fa:	5a1c      	ldrh	r4, [r3, r0]
 80021fc:	3c01      	subs	r4, #1
 80021fe:	b2a4      	uxth	r4, r4
 8002200:	521c      	strh	r4, [r3, r0]
 8002202:	3101      	adds	r1, #1
 8002204:	2906      	cmp	r1, #6
 8002206:	d1de      	bne.n	80021c6 <scheduler+0x6>
 8002208:	230c      	movs	r3, #12
 800220a:	4353      	muls	r3, r2
 800220c:	18e9      	adds	r1, r5, r3
 800220e:	8849      	ldrh	r1, [r1, #2]
 8002210:	b289      	uxth	r1, r1
 8002212:	52e9      	strh	r1, [r5, r3]
 8002214:	4b02      	ldr	r3, [pc, #8]	; (8002220 <scheduler+0x60>)
 8002216:	601a      	str	r2, [r3, #0]
 8002218:	bd70      	pop	{r4, r5, r6, pc}
 800221a:	bf00      	nop
 800221c:	20000180 	.word	0x20000180
 8002220:	200001c8 	.word	0x200001c8

08002224 <SysTick_Handler>:
 8002224:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002228:	f3ef 8308 	mrs	r3, MSP
 800222c:	4c0d      	ldr	r4, [pc, #52]	; (8002264 <SysTick_Handler+0x40>)
 800222e:	4d0e      	ldr	r5, [pc, #56]	; (8002268 <SysTick_Handler+0x44>)
 8002230:	6822      	ldr	r2, [r4, #0]
 8002232:	3201      	adds	r2, #1
 8002234:	bf1d      	ittte	ne
 8002236:	6822      	ldrne	r2, [r4, #0]
 8002238:	210c      	movne	r1, #12
 800223a:	fb01 5202 	mlane	r2, r1, r2, r5
 800223e:	2300      	moveq	r3, #0
 8002240:	bf14      	ite	ne
 8002242:	6093      	strne	r3, [r2, #8]
 8002244:	6023      	streq	r3, [r4, #0]
 8002246:	f7ff ffbb 	bl	80021c0 <scheduler>
 800224a:	6822      	ldr	r2, [r4, #0]
 800224c:	230c      	movs	r3, #12
 800224e:	fb03 5302 	mla	r3, r3, r2, r5
 8002252:	689a      	ldr	r2, [r3, #8]
 8002254:	f06f 0306 	mvn.w	r3, #6
 8002258:	469e      	mov	lr, r3
 800225a:	f382 8808 	msr	MSP, r2
 800225e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002262:	4770      	bx	lr
 8002264:	200001c8 	.word	0x200001c8
 8002268:	20000180 	.word	0x20000180

0800226c <_init>:
 800226c:	e1a0c00d 	mov	ip, sp
 8002270:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002274:	e24cb004 	sub	fp, ip, #4
 8002278:	e24bd028 	sub	sp, fp, #40	; 0x28
 800227c:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002280:	e12fff1e 	bx	lr

08002284 <_fini>:
 8002284:	e1a0c00d 	mov	ip, sp
 8002288:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 800228c:	e24cb004 	sub	fp, ip, #4
 8002290:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002294:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002298:	e12fff1e 	bx	lr
 800229c:	61646f6b 	.word	0x61646f6b
 80022a0:	6920616d 	.word	0x6920616d
 80022a4:	2074696e 	.word	0x2074696e
 80022a8:	25206925 	.word	0x25206925
 80022ac:	203a2069 	.word	0x203a2069
 80022b0:	4f5b2000 	.word	0x4f5b2000
 80022b4:	000a5d4b 	.word	0x000a5d4b
 80022b8:	41465b20 	.word	0x41465b20
 80022bc:	44454c49 	.word	0x44454c49
 80022c0:	000a0a5d 	.word	0x000a0a5d
 80022c4:	656c6469 	.word	0x656c6469
 80022c8:	0a752520 	.word	0x0a752520
 80022cc:	00000000 	.word	0x00000000

080022d0 <__EH_FRAME_BEGIN__>:
 80022d0:	00000000                                ....
