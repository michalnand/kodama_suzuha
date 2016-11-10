
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f812 	bl	80011b4 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f8b5 	bl	800130c <_ZN9CTerminal13terminal_initEv>
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
 80001c2:	f000 fc35 	bl	8000a30 <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001d6:	f000 fc1b 	bl	8000a10 <_ZN6CMotor10motor_initEv>
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
 80001fe:	f001 f97f 	bl	8001500 <_ZN9CTerminal6printfEPKcz>
 8000202:	4628      	mov	r0, r5
 8000204:	b91e      	cbnz	r6, 800020e <_ZN7CKodama4initEv+0x26>
 8000206:	4907      	ldr	r1, [pc, #28]	; (8000224 <_ZN7CKodama4initEv+0x3c>)
 8000208:	f001 f97a 	bl	8001500 <_ZN9CTerminal6printfEPKcz>
 800020c:	e005      	b.n	800021a <_ZN7CKodama4initEv+0x32>
 800020e:	4906      	ldr	r1, [pc, #24]	; (8000228 <_ZN7CKodama4initEv+0x40>)
 8000210:	3401      	adds	r4, #1
 8000212:	f001 f975 	bl	8001500 <_ZN9CTerminal6printfEPKcz>
 8000216:	2c08      	cmp	r4, #8
 8000218:	d1e9      	bne.n	80001ee <_ZN7CKodama4initEv+0x6>
 800021a:	4630      	mov	r0, r6
 800021c:	bd70      	pop	{r4, r5, r6, pc}
 800021e:	bf00      	nop
 8000220:	08002318 	.word	0x08002318
 8000224:	0800232d 	.word	0x0800232d
 8000228:	08002334 	.word	0x08002334

0800022c <_ZN7CKodama5sleepEv>:
 800022c:	b510      	push	{r4, lr}
 800022e:	2108      	movs	r1, #8
 8000230:	4604      	mov	r4, r0
 8000232:	f001 f81f 	bl	8001274 <_ZN5CGPIO8gpio_offEm>
 8000236:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800023e:	f000 bb4b 	b.w	80008d8 <_ZN6CMotor11motor_sleepEv>

08000242 <_ZN7CKodama6wakeupEv>:
 8000242:	b510      	push	{r4, lr}
 8000244:	2108      	movs	r1, #8
 8000246:	4604      	mov	r4, r0
 8000248:	34c4      	adds	r4, #196	; 0xc4
 800024a:	f001 f805 	bl	8001258 <_ZN5CGPIO7gpio_onEm>
 800024e:	2100      	movs	r1, #0
 8000250:	4620      	mov	r0, r4
 8000252:	460a      	mov	r2, r1
 8000254:	f000 fbd6 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 8000258:	4620      	mov	r0, r4
 800025a:	2101      	movs	r1, #1
 800025c:	2200      	movs	r2, #0
 800025e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000262:	f000 bbcf 	b.w	8000a04 <_ZN6CMotor9set_motorEml>

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
 8000488:	f001 fc5e 	bl	8001d48 <RCC_APB1PeriphClockCmd>
 800048c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000490:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000494:	4628      	mov	r0, r5
 8000496:	2331      	movs	r3, #49	; 0x31
 8000498:	a901      	add	r1, sp, #4
 800049a:	9302      	str	r3, [sp, #8]
 800049c:	f8ad 4006 	strh.w	r4, [sp, #6]
 80004a0:	f8ad 400c 	strh.w	r4, [sp, #12]
 80004a4:	f8ad 400e 	strh.w	r4, [sp, #14]
 80004a8:	f001 fc5c 	bl	8001d64 <TIM_TimeBaseInit>
 80004ac:	4628      	mov	r0, r5
 80004ae:	2101      	movs	r1, #1
 80004b0:	f001 fca8 	bl	8001e04 <TIM_Cmd>
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
 80004d2:	f001 fddf 	bl	8002094 <NVIC_Init>
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
 8000538:	f001 bc72 	b.w	8001e20 <TIM_ClearITPendingBit>
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
 8000592:	f001 fd7b 	bl	800208c <core_yield>
 8000596:	e7f6      	b.n	8000586 <_ZN6CTimer8delay_msEm+0xe>
 8000598:	b003      	add	sp, #12
 800059a:	bd30      	pop	{r4, r5, pc}

0800059c <_ZN4CRGB8rgb_readEh>:
 800059c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80005a0:	4604      	mov	r4, r0
 80005a2:	4688      	mov	r8, r1
 80005a4:	f000 fae0 	bl	8000b68 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80005a8:	4620      	mov	r0, r4
 80005aa:	2172      	movs	r1, #114	; 0x72
 80005ac:	f000 fb06 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80005b0:	21b4      	movs	r1, #180	; 0xb4
 80005b2:	4620      	mov	r0, r4
 80005b4:	f000 fb02 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80005b8:	4620      	mov	r0, r4
 80005ba:	f000 fad5 	bl	8000b68 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80005be:	4620      	mov	r0, r4
 80005c0:	2173      	movs	r1, #115	; 0x73
 80005c2:	f000 fafb 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80005c6:	4620      	mov	r0, r4
 80005c8:	2101      	movs	r1, #1
 80005ca:	4622      	mov	r2, r4
 80005cc:	f000 fb37 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005d0:	7823      	ldrb	r3, [r4, #0]
 80005d2:	83a3      	strh	r3, [r4, #28]
 80005d4:	7863      	ldrb	r3, [r4, #1]
 80005d6:	83e3      	strh	r3, [r4, #30]
 80005d8:	78a3      	ldrb	r3, [r4, #2]
 80005da:	8423      	strh	r3, [r4, #32]
 80005dc:	78e3      	ldrb	r3, [r4, #3]
 80005de:	8463      	strh	r3, [r4, #34]	; 0x22
 80005e0:	2101      	movs	r1, #1
 80005e2:	4620      	mov	r0, r4
 80005e4:	4622      	mov	r2, r4
 80005e6:	f104 091a 	add.w	r9, r4, #26
 80005ea:	1e65      	subs	r5, r4, #1
 80005ec:	f000 fb27 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005f0:	1ca6      	adds	r6, r4, #2
 80005f2:	f104 0722 	add.w	r7, r4, #34	; 0x22
 80005f6:	4629      	mov	r1, r5
 80005f8:	464b      	mov	r3, r9
 80005fa:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80005fe:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000602:	42bb      	cmp	r3, r7
 8000604:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000608:	801a      	strh	r2, [r3, #0]
 800060a:	d1f6      	bne.n	80005fa <_ZN4CRGB8rgb_readEh+0x5e>
 800060c:	4620      	mov	r0, r4
 800060e:	2101      	movs	r1, #1
 8000610:	4622      	mov	r2, r4
 8000612:	f000 fb14 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000616:	7823      	ldrb	r3, [r4, #0]
 8000618:	80a3      	strh	r3, [r4, #4]
 800061a:	7863      	ldrb	r3, [r4, #1]
 800061c:	80e3      	strh	r3, [r4, #6]
 800061e:	78a3      	ldrb	r3, [r4, #2]
 8000620:	8123      	strh	r3, [r4, #8]
 8000622:	78e3      	ldrb	r3, [r4, #3]
 8000624:	8163      	strh	r3, [r4, #10]
 8000626:	2101      	movs	r1, #1
 8000628:	4620      	mov	r0, r4
 800062a:	4622      	mov	r2, r4
 800062c:	f000 fb07 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000630:	f104 0a0a 	add.w	sl, r4, #10
 8000634:	4633      	mov	r3, r6
 8000636:	4629      	mov	r1, r5
 8000638:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 800063c:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000640:	4553      	cmp	r3, sl
 8000642:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000646:	801a      	strh	r2, [r3, #0]
 8000648:	d1f6      	bne.n	8000638 <_ZN4CRGB8rgb_readEh+0x9c>
 800064a:	4620      	mov	r0, r4
 800064c:	2101      	movs	r1, #1
 800064e:	4622      	mov	r2, r4
 8000650:	f000 faf5 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000654:	7823      	ldrb	r3, [r4, #0]
 8000656:	81a3      	strh	r3, [r4, #12]
 8000658:	7863      	ldrb	r3, [r4, #1]
 800065a:	81e3      	strh	r3, [r4, #14]
 800065c:	78a3      	ldrb	r3, [r4, #2]
 800065e:	8223      	strh	r3, [r4, #16]
 8000660:	78e3      	ldrb	r3, [r4, #3]
 8000662:	8263      	strh	r3, [r4, #18]
 8000664:	4622      	mov	r2, r4
 8000666:	4620      	mov	r0, r4
 8000668:	2101      	movs	r1, #1
 800066a:	f000 fae8 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800066e:	f104 0612 	add.w	r6, r4, #18
 8000672:	462a      	mov	r2, r5
 8000674:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 8000678:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800067c:	45b2      	cmp	sl, r6
 800067e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000682:	f8aa 3000 	strh.w	r3, [sl]
 8000686:	d1f5      	bne.n	8000674 <_ZN4CRGB8rgb_readEh+0xd8>
 8000688:	4620      	mov	r0, r4
 800068a:	2101      	movs	r1, #1
 800068c:	4622      	mov	r2, r4
 800068e:	f000 fad6 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000692:	7823      	ldrb	r3, [r4, #0]
 8000694:	82a3      	strh	r3, [r4, #20]
 8000696:	7863      	ldrb	r3, [r4, #1]
 8000698:	82e3      	strh	r3, [r4, #22]
 800069a:	78a3      	ldrb	r3, [r4, #2]
 800069c:	8323      	strh	r3, [r4, #24]
 800069e:	78e3      	ldrb	r3, [r4, #3]
 80006a0:	8363      	strh	r3, [r4, #26]
 80006a2:	4622      	mov	r2, r4
 80006a4:	4620      	mov	r0, r4
 80006a6:	2101      	movs	r1, #1
 80006a8:	f000 fac9 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006ac:	462a      	mov	r2, r5
 80006ae:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 80006b2:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80006b6:	454e      	cmp	r6, r9
 80006b8:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80006bc:	8033      	strh	r3, [r6, #0]
 80006be:	d1f6      	bne.n	80006ae <_ZN4CRGB8rgb_readEh+0x112>
 80006c0:	4620      	mov	r0, r4
 80006c2:	2101      	movs	r1, #1
 80006c4:	4622      	mov	r2, r4
 80006c6:	f000 faba 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006ca:	7823      	ldrb	r3, [r4, #0]
 80006cc:	84a3      	strh	r3, [r4, #36]	; 0x24
 80006ce:	7863      	ldrb	r3, [r4, #1]
 80006d0:	84e3      	strh	r3, [r4, #38]	; 0x26
 80006d2:	78a3      	ldrb	r3, [r4, #2]
 80006d4:	8523      	strh	r3, [r4, #40]	; 0x28
 80006d6:	78e3      	ldrb	r3, [r4, #3]
 80006d8:	8563      	strh	r3, [r4, #42]	; 0x2a
 80006da:	4622      	mov	r2, r4
 80006dc:	4620      	mov	r0, r4
 80006de:	2100      	movs	r1, #0
 80006e0:	f000 faad 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006e4:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 80006e8:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 80006ec:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 80006f0:	4297      	cmp	r7, r2
 80006f2:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80006f6:	803b      	strh	r3, [r7, #0]
 80006f8:	d1f6      	bne.n	80006e8 <_ZN4CRGB8rgb_readEh+0x14c>
 80006fa:	4620      	mov	r0, r4
 80006fc:	f000 fa49 	bl	8000b92 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000700:	f1b8 0f00 	cmp.w	r8, #0
 8000704:	d025      	beq.n	8000752 <_ZN4CRGB8rgb_readEh+0x1b6>
 8000706:	2300      	movs	r3, #0
 8000708:	88a1      	ldrh	r1, [r4, #4]
 800070a:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 800070e:	440a      	add	r2, r1
 8000710:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8000714:	89a1      	ldrh	r1, [r4, #12]
 8000716:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 800071a:	440a      	add	r2, r1
 800071c:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 8000720:	8aa1      	ldrh	r1, [r4, #20]
 8000722:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 8000726:	440a      	add	r2, r1
 8000728:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 800072c:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 800072e:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 8000732:	440a      	add	r2, r1
 8000734:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8000738:	8ba1      	ldrh	r1, [r4, #28]
 800073a:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 800073e:	3301      	adds	r3, #1
 8000740:	440a      	add	r2, r1
 8000742:	2b04      	cmp	r3, #4
 8000744:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8000748:	f104 0402 	add.w	r4, r4, #2
 800074c:	d1dc      	bne.n	8000708 <_ZN4CRGB8rgb_readEh+0x16c>
 800074e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000752:	4641      	mov	r1, r8
 8000754:	b672      	cpsid	i
 8000756:	88a3      	ldrh	r3, [r4, #4]
 8000758:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 800075c:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000760:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 8000764:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 8000768:	1a18      	subs	r0, r3, r0
 800076a:	89a3      	ldrh	r3, [r4, #12]
 800076c:	1a9a      	subs	r2, r3, r2
 800076e:	8aa3      	ldrh	r3, [r4, #20]
 8000770:	1b5b      	subs	r3, r3, r5
 8000772:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 8000774:	1bad      	subs	r5, r5, r6
 8000776:	84a5      	strh	r5, [r4, #36]	; 0x24
 8000778:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 800077c:	8ba5      	ldrh	r5, [r4, #28]
 800077e:	b280      	uxth	r0, r0
 8000780:	b292      	uxth	r2, r2
 8000782:	b29b      	uxth	r3, r3
 8000784:	1bad      	subs	r5, r5, r6
 8000786:	80a0      	strh	r0, [r4, #4]
 8000788:	81a2      	strh	r2, [r4, #12]
 800078a:	82a3      	strh	r3, [r4, #20]
 800078c:	83a5      	strh	r5, [r4, #28]
 800078e:	b662      	cpsie	i
 8000790:	b200      	sxth	r0, r0
 8000792:	b212      	sxth	r2, r2
 8000794:	1885      	adds	r5, r0, r2
 8000796:	b21b      	sxth	r3, r3
 8000798:	18ed      	adds	r5, r5, r3
 800079a:	d00e      	beq.n	80007ba <_ZN4CRGB8rgb_readEh+0x21e>
 800079c:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 80007a0:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 80007a4:	fb90 f0f5 	sdiv	r0, r0, r5
 80007a8:	fb92 f2f5 	sdiv	r2, r2, r5
 80007ac:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 80007b0:	85a0      	strh	r0, [r4, #44]	; 0x2c
 80007b2:	fb93 f3f5 	sdiv	r3, r3, r5
 80007b6:	86a2      	strh	r2, [r4, #52]	; 0x34
 80007b8:	87a3      	strh	r3, [r4, #60]	; 0x3c
 80007ba:	3101      	adds	r1, #1
 80007bc:	2904      	cmp	r1, #4
 80007be:	f104 0402 	add.w	r4, r4, #2
 80007c2:	d1c7      	bne.n	8000754 <_ZN4CRGB8rgb_readEh+0x1b8>
 80007c4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

080007c8 <_ZN4CRGB8rgb_initEv>:
 80007c8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007ca:	4606      	mov	r6, r0
 80007cc:	4635      	mov	r5, r6
 80007ce:	f000 f991 	bl	8000af4 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80007d2:	4633      	mov	r3, r6
 80007d4:	2200      	movs	r2, #0
 80007d6:	3201      	adds	r2, #1
 80007d8:	2400      	movs	r4, #0
 80007da:	2a04      	cmp	r2, #4
 80007dc:	809c      	strh	r4, [r3, #4]
 80007de:	819c      	strh	r4, [r3, #12]
 80007e0:	829c      	strh	r4, [r3, #20]
 80007e2:	849c      	strh	r4, [r3, #36]	; 0x24
 80007e4:	839c      	strh	r4, [r3, #28]
 80007e6:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 80007ea:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 80007ee:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 80007f2:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 80007f6:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 80007fa:	859c      	strh	r4, [r3, #44]	; 0x2c
 80007fc:	869c      	strh	r4, [r3, #52]	; 0x34
 80007fe:	879c      	strh	r4, [r3, #60]	; 0x3c
 8000800:	f103 0302 	add.w	r3, r3, #2
 8000804:	d1e7      	bne.n	80007d6 <_ZN4CRGB8rgb_initEv+0xe>
 8000806:	4630      	mov	r0, r6
 8000808:	2172      	movs	r1, #114	; 0x72
 800080a:	2281      	movs	r2, #129	; 0x81
 800080c:	23ff      	movs	r3, #255	; 0xff
 800080e:	f000 f9fe 	bl	8000c0e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000812:	4630      	mov	r0, r6
 8000814:	2172      	movs	r1, #114	; 0x72
 8000816:	2283      	movs	r2, #131	; 0x83
 8000818:	23ff      	movs	r3, #255	; 0xff
 800081a:	f000 f9f8 	bl	8000c0e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800081e:	4630      	mov	r0, r6
 8000820:	2172      	movs	r1, #114	; 0x72
 8000822:	228d      	movs	r2, #141	; 0x8d
 8000824:	4623      	mov	r3, r4
 8000826:	f000 f9f2 	bl	8000c0e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800082a:	4630      	mov	r0, r6
 800082c:	2172      	movs	r1, #114	; 0x72
 800082e:	2280      	movs	r2, #128	; 0x80
 8000830:	2303      	movs	r3, #3
 8000832:	f000 f9ec 	bl	8000c0e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000836:	228f      	movs	r2, #143	; 0x8f
 8000838:	2323      	movs	r3, #35	; 0x23
 800083a:	4630      	mov	r0, r6
 800083c:	2172      	movs	r1, #114	; 0x72
 800083e:	f000 f9e6 	bl	8000c0e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000842:	af01      	add	r7, sp, #4
 8000844:	4630      	mov	r0, r6
 8000846:	4621      	mov	r1, r4
 8000848:	f7ff fea8 	bl	800059c <_ZN4CRGB8rgb_readEh>
 800084c:	463b      	mov	r3, r7
 800084e:	4630      	mov	r0, r6
 8000850:	2172      	movs	r1, #114	; 0x72
 8000852:	2292      	movs	r2, #146	; 0x92
 8000854:	f000 fa40 	bl	8000cd8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000858:	4623      	mov	r3, r4
 800085a:	5cfa      	ldrb	r2, [r7, r3]
 800085c:	2a69      	cmp	r2, #105	; 0x69
 800085e:	bf1c      	itt	ne
 8000860:	2201      	movne	r2, #1
 8000862:	409a      	lslne	r2, r3
 8000864:	f103 0301 	add.w	r3, r3, #1
 8000868:	bf18      	it	ne
 800086a:	4314      	orrne	r4, r2
 800086c:	2b04      	cmp	r3, #4
 800086e:	d1f4      	bne.n	800085a <_ZN4CRGB8rgb_initEv+0x92>
 8000870:	461f      	mov	r7, r3
 8000872:	4630      	mov	r0, r6
 8000874:	2101      	movs	r1, #1
 8000876:	f7ff fe91 	bl	800059c <_ZN4CRGB8rgb_readEh>
 800087a:	3f01      	subs	r7, #1
 800087c:	d1f9      	bne.n	8000872 <_ZN4CRGB8rgb_initEv+0xaa>
 800087e:	2104      	movs	r1, #4
 8000880:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8000884:	089b      	lsrs	r3, r3, #2
 8000886:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 800088a:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 800088e:	089b      	lsrs	r3, r3, #2
 8000890:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000894:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000898:	089b      	lsrs	r3, r3, #2
 800089a:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 800089e:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 80008a2:	089b      	lsrs	r3, r3, #2
 80008a4:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 80008a8:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 80008ac:	3901      	subs	r1, #1
 80008ae:	ea4f 0393 	mov.w	r3, r3, lsr #2
 80008b2:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 80008b6:	f105 0502 	add.w	r5, r5, #2
 80008ba:	d1e1      	bne.n	8000880 <_ZN4CRGB8rgb_initEv+0xb8>
 80008bc:	4630      	mov	r0, r6
 80008be:	f7ff fe6d 	bl	800059c <_ZN4CRGB8rgb_readEh>
 80008c2:	b114      	cbz	r4, 80008ca <_ZN4CRGB8rgb_initEv+0x102>
 80008c4:	4802      	ldr	r0, [pc, #8]	; (80008d0 <_ZN4CRGB8rgb_initEv+0x108>)
 80008c6:	1b00      	subs	r0, r0, r4
 80008c8:	e000      	b.n	80008cc <_ZN4CRGB8rgb_initEv+0x104>
 80008ca:	4620      	mov	r0, r4
 80008cc:	b003      	add	sp, #12
 80008ce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80008d0:	fffffc18 	.word	0xfffffc18

080008d4 <_ZN4CRGB14get_rgb_resultEv>:
 80008d4:	3004      	adds	r0, #4
 80008d6:	4770      	bx	lr

080008d8 <_ZN6CMotor11motor_sleepEv>:
 80008d8:	b510      	push	{r4, lr}
 80008da:	4c07      	ldr	r4, [pc, #28]	; (80008f8 <_ZN6CMotor11motor_sleepEv+0x20>)
 80008dc:	21c0      	movs	r1, #192	; 0xc0
 80008de:	4620      	mov	r0, r4
 80008e0:	2200      	movs	r2, #0
 80008e2:	2318      	movs	r3, #24
 80008e4:	f000 fadc 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 80008e8:	4620      	mov	r0, r4
 80008ea:	21c2      	movs	r1, #194	; 0xc2
 80008ec:	2200      	movs	r2, #0
 80008ee:	2318      	movs	r3, #24
 80008f0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80008f4:	f000 bad4 	b.w	8000ea0 <_ZN4CI2C9write_regEhhh>
 80008f8:	2000015c 	.word	0x2000015c

080008fc <_ZN6CMotor13motor_refreshEv>:
 80008fc:	b570      	push	{r4, r5, r6, lr}
 80008fe:	e890 0030 	ldmia.w	r0, {r4, r5}
 8000902:	2c2c      	cmp	r4, #44	; 0x2c
 8000904:	dc74      	bgt.n	80009f0 <_ZN6CMotor13motor_refreshEv+0xf4>
 8000906:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 800090a:	db11      	blt.n	8000930 <_ZN6CMotor13motor_refreshEv+0x34>
 800090c:	2d2c      	cmp	r5, #44	; 0x2c
 800090e:	dc5e      	bgt.n	80009ce <_ZN6CMotor13motor_refreshEv+0xd2>
 8000910:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 8000914:	db33      	blt.n	800097e <_ZN6CMotor13motor_refreshEv+0x82>
 8000916:	b1dc      	cbz	r4, 8000950 <_ZN6CMotor13motor_refreshEv+0x54>
 8000918:	e001      	b.n	800091e <_ZN6CMotor13motor_refreshEv+0x22>
 800091a:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 800091e:	2c00      	cmp	r4, #0
 8000920:	dd0d      	ble.n	800093e <_ZN6CMotor13motor_refreshEv+0x42>
 8000922:	2c06      	cmp	r4, #6
 8000924:	bfb8      	it	lt
 8000926:	2406      	movlt	r4, #6
 8000928:	00a4      	lsls	r4, r4, #2
 800092a:	f044 0402 	orr.w	r4, r4, #2
 800092e:	e00d      	b.n	800094c <_ZN6CMotor13motor_refreshEv+0x50>
 8000930:	2d2c      	cmp	r5, #44	; 0x2c
 8000932:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000936:	dc60      	bgt.n	80009fa <_ZN6CMotor13motor_refreshEv+0xfe>
 8000938:	42a5      	cmp	r5, r4
 800093a:	bfb8      	it	lt
 800093c:	4625      	movlt	r5, r4
 800093e:	4264      	negs	r4, r4
 8000940:	2c06      	cmp	r4, #6
 8000942:	bfb8      	it	lt
 8000944:	2406      	movlt	r4, #6
 8000946:	00a4      	lsls	r4, r4, #2
 8000948:	f044 0401 	orr.w	r4, r4, #1
 800094c:	b2e4      	uxtb	r4, r4
 800094e:	e000      	b.n	8000952 <_ZN6CMotor13motor_refreshEv+0x56>
 8000950:	241b      	movs	r4, #27
 8000952:	2200      	movs	r2, #0
 8000954:	4613      	mov	r3, r2
 8000956:	482a      	ldr	r0, [pc, #168]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000958:	21c0      	movs	r1, #192	; 0xc0
 800095a:	f000 faa1 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 800095e:	4828      	ldr	r0, [pc, #160]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000960:	21c0      	movs	r1, #192	; 0xc0
 8000962:	2200      	movs	r2, #0
 8000964:	4623      	mov	r3, r4
 8000966:	f000 fa9b 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 800096a:	2d00      	cmp	r5, #0
 800096c:	d020      	beq.n	80009b0 <_ZN6CMotor13motor_refreshEv+0xb4>
 800096e:	dd16      	ble.n	800099e <_ZN6CMotor13motor_refreshEv+0xa2>
 8000970:	2d06      	cmp	r5, #6
 8000972:	bfb8      	it	lt
 8000974:	2506      	movlt	r5, #6
 8000976:	00ad      	lsls	r5, r5, #2
 8000978:	f045 0501 	orr.w	r5, r5, #1
 800097c:	e016      	b.n	80009ac <_ZN6CMotor13motor_refreshEv+0xb0>
 800097e:	2c00      	cmp	r4, #0
 8000980:	d1cb      	bne.n	800091a <_ZN6CMotor13motor_refreshEv+0x1e>
 8000982:	481f      	ldr	r0, [pc, #124]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000984:	21c0      	movs	r1, #192	; 0xc0
 8000986:	4622      	mov	r2, r4
 8000988:	4623      	mov	r3, r4
 800098a:	f000 fa89 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 800098e:	481c      	ldr	r0, [pc, #112]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000990:	21c0      	movs	r1, #192	; 0xc0
 8000992:	4622      	mov	r2, r4
 8000994:	231b      	movs	r3, #27
 8000996:	f000 fa83 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 800099a:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 800099e:	426d      	negs	r5, r5
 80009a0:	2d06      	cmp	r5, #6
 80009a2:	bfb8      	it	lt
 80009a4:	2506      	movlt	r5, #6
 80009a6:	00ad      	lsls	r5, r5, #2
 80009a8:	f045 0502 	orr.w	r5, r5, #2
 80009ac:	b2ed      	uxtb	r5, r5
 80009ae:	e000      	b.n	80009b2 <_ZN6CMotor13motor_refreshEv+0xb6>
 80009b0:	251b      	movs	r5, #27
 80009b2:	2200      	movs	r2, #0
 80009b4:	4613      	mov	r3, r2
 80009b6:	4812      	ldr	r0, [pc, #72]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009b8:	21c2      	movs	r1, #194	; 0xc2
 80009ba:	f000 fa71 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 80009be:	462b      	mov	r3, r5
 80009c0:	480f      	ldr	r0, [pc, #60]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009c2:	21c2      	movs	r1, #194	; 0xc2
 80009c4:	2200      	movs	r2, #0
 80009c6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009ca:	f000 ba69 	b.w	8000ea0 <_ZN4CI2C9write_regEhhh>
 80009ce:	b96c      	cbnz	r4, 80009ec <_ZN6CMotor13motor_refreshEv+0xf0>
 80009d0:	480b      	ldr	r0, [pc, #44]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009d2:	21c0      	movs	r1, #192	; 0xc0
 80009d4:	4622      	mov	r2, r4
 80009d6:	4623      	mov	r3, r4
 80009d8:	f000 fa62 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 80009dc:	4808      	ldr	r0, [pc, #32]	; (8000a00 <_ZN6CMotor13motor_refreshEv+0x104>)
 80009de:	21c0      	movs	r1, #192	; 0xc0
 80009e0:	4622      	mov	r2, r4
 80009e2:	231b      	movs	r3, #27
 80009e4:	f000 fa5c 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 80009e8:	252c      	movs	r5, #44	; 0x2c
 80009ea:	e7c4      	b.n	8000976 <_ZN6CMotor13motor_refreshEv+0x7a>
 80009ec:	252c      	movs	r5, #44	; 0x2c
 80009ee:	e796      	b.n	800091e <_ZN6CMotor13motor_refreshEv+0x22>
 80009f0:	242c      	movs	r4, #44	; 0x2c
 80009f2:	42a5      	cmp	r5, r4
 80009f4:	dd8c      	ble.n	8000910 <_ZN6CMotor13motor_refreshEv+0x14>
 80009f6:	4625      	mov	r5, r4
 80009f8:	e796      	b.n	8000928 <_ZN6CMotor13motor_refreshEv+0x2c>
 80009fa:	252c      	movs	r5, #44	; 0x2c
 80009fc:	e79f      	b.n	800093e <_ZN6CMotor13motor_refreshEv+0x42>
 80009fe:	bf00      	nop
 8000a00:	2000015c 	.word	0x2000015c

08000a04 <_ZN6CMotor9set_motorEml>:
 8000a04:	2901      	cmp	r1, #1
 8000a06:	bf98      	it	ls
 8000a08:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000a0c:	f7ff bf76 	b.w	80008fc <_ZN6CMotor13motor_refreshEv>

08000a10 <_ZN6CMotor10motor_initEv>:
 8000a10:	b510      	push	{r4, lr}
 8000a12:	2100      	movs	r1, #0
 8000a14:	4604      	mov	r4, r0
 8000a16:	460a      	mov	r2, r1
 8000a18:	f7ff fff4 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 8000a1c:	4620      	mov	r0, r4
 8000a1e:	2101      	movs	r1, #1
 8000a20:	2200      	movs	r2, #0
 8000a22:	f7ff ffef 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 8000a26:	4620      	mov	r0, r4
 8000a28:	f7ff ff68 	bl	80008fc <_ZN6CMotor13motor_refreshEv>
 8000a2c:	2000      	movs	r0, #0
 8000a2e:	bd10      	pop	{r4, pc}

08000a30 <_ZN8CSensors12sensors_initEv>:
 8000a30:	b510      	push	{r4, lr}
 8000a32:	4604      	mov	r4, r0
 8000a34:	4808      	ldr	r0, [pc, #32]	; (8000a58 <_ZN8CSensors12sensors_initEv+0x28>)
 8000a36:	f000 f9b1 	bl	8000d9c <_ZN4CI2C4initEv>
 8000a3a:	4620      	mov	r0, r4
 8000a3c:	f7ff fec4 	bl	80007c8 <_ZN4CRGB8rgb_initEv>
 8000a40:	b110      	cbz	r0, 8000a48 <_ZN8CSensors12sensors_initEv+0x18>
 8000a42:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000a46:	bd10      	pop	{r4, pc}
 8000a48:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8000a4c:	f000 fb36 	bl	80010bc <_ZN4CIMU8imu_initEv>
 8000a50:	b108      	cbz	r0, 8000a56 <_ZN8CSensors12sensors_initEv+0x26>
 8000a52:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000a56:	bd10      	pop	{r4, pc}
 8000a58:	2000015c 	.word	0x2000015c

08000a5c <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000a5c:	2365      	movs	r3, #101	; 0x65
 8000a5e:	3b01      	subs	r3, #1
 8000a60:	d001      	beq.n	8000a66 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000a62:	bf00      	nop
 8000a64:	e7fb      	b.n	8000a5e <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000a66:	4770      	bx	lr

08000a68 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000a68:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000a6a:	2301      	movs	r3, #1
 8000a6c:	2203      	movs	r2, #3
 8000a6e:	4605      	mov	r5, r0
 8000a70:	24f0      	movs	r4, #240	; 0xf0
 8000a72:	f88d 3004 	strb.w	r3, [sp, #4]
 8000a76:	f88d 3006 	strb.w	r3, [sp, #6]
 8000a7a:	4669      	mov	r1, sp
 8000a7c:	2300      	movs	r3, #0
 8000a7e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a82:	f88d 2005 	strb.w	r2, [sp, #5]
 8000a86:	f88d 3007 	strb.w	r3, [sp, #7]
 8000a8a:	9400      	str	r4, [sp, #0]
 8000a8c:	f001 fb48 	bl	8002120 <GPIO_Init>
 8000a90:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a94:	4628      	mov	r0, r5
 8000a96:	851c      	strh	r4, [r3, #40]	; 0x28
 8000a98:	f7ff ffe0 	bl	8000a5c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000a9c:	b003      	add	sp, #12
 8000a9e:	bd30      	pop	{r4, r5, pc}

08000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000aa0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000aa2:	2300      	movs	r3, #0
 8000aa4:	2203      	movs	r2, #3
 8000aa6:	4605      	mov	r5, r0
 8000aa8:	24f0      	movs	r4, #240	; 0xf0
 8000aaa:	4669      	mov	r1, sp
 8000aac:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ab0:	f88d 3004 	strb.w	r3, [sp, #4]
 8000ab4:	f88d 2005 	strb.w	r2, [sp, #5]
 8000ab8:	f88d 3007 	strb.w	r3, [sp, #7]
 8000abc:	9400      	str	r4, [sp, #0]
 8000abe:	f001 fb2f 	bl	8002120 <GPIO_Init>
 8000ac2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ac6:	4628      	mov	r0, r5
 8000ac8:	619c      	str	r4, [r3, #24]
 8000aca:	f7ff ffc7 	bl	8000a5c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000ace:	b003      	add	sp, #12
 8000ad0:	bd30      	pop	{r4, r5, pc}
	...

08000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000ad4:	4b02      	ldr	r3, [pc, #8]	; (8000ae0 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000ad6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000ada:	851a      	strh	r2, [r3, #40]	; 0x28
 8000adc:	f7ff bfbe 	b.w	8000a5c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000ae0:	48000800 	.word	0x48000800

08000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000ae4:	4b02      	ldr	r3, [pc, #8]	; (8000af0 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000ae6:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000aea:	619a      	str	r2, [r3, #24]
 8000aec:	f7ff bfb6 	b.w	8000a5c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000af0:	48000800 	.word	0x48000800

08000af4 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000af4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000af6:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000afa:	4605      	mov	r5, r0
 8000afc:	2400      	movs	r4, #0
 8000afe:	9300      	str	r3, [sp, #0]
 8000b00:	2703      	movs	r7, #3
 8000b02:	2301      	movs	r3, #1
 8000b04:	4817      	ldr	r0, [pc, #92]	; (8000b64 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8000b06:	f88d 3004 	strb.w	r3, [sp, #4]
 8000b0a:	4669      	mov	r1, sp
 8000b0c:	26f0      	movs	r6, #240	; 0xf0
 8000b0e:	f88d 7005 	strb.w	r7, [sp, #5]
 8000b12:	f88d 4006 	strb.w	r4, [sp, #6]
 8000b16:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b1a:	f001 fb01 	bl	8002120 <GPIO_Init>
 8000b1e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b22:	4669      	mov	r1, sp
 8000b24:	9600      	str	r6, [sp, #0]
 8000b26:	f88d 4004 	strb.w	r4, [sp, #4]
 8000b2a:	f88d 7005 	strb.w	r7, [sp, #5]
 8000b2e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000b32:	f001 faf5 	bl	8002120 <GPIO_Init>
 8000b36:	4631      	mov	r1, r6
 8000b38:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000b3c:	f001 fb32 	bl	80021a4 <GPIO_SetBits>
 8000b40:	4628      	mov	r0, r5
 8000b42:	f7ff ffcf 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b46:	4628      	mov	r0, r5
 8000b48:	f7ff ff8e 	bl	8000a68 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b4c:	4628      	mov	r0, r5
 8000b4e:	f7ff ffa7 	bl	8000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b52:	f242 7311 	movw	r3, #10001	; 0x2711
 8000b56:	3b01      	subs	r3, #1
 8000b58:	d001      	beq.n	8000b5e <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 8000b5a:	bf00      	nop
 8000b5c:	e7fb      	b.n	8000b56 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 8000b5e:	b003      	add	sp, #12
 8000b60:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b62:	bf00      	nop
 8000b64:	48000800 	.word	0x48000800

08000b68 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000b68:	b510      	push	{r4, lr}
 8000b6a:	4604      	mov	r4, r0
 8000b6c:	f7ff ffba 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b70:	4620      	mov	r0, r4
 8000b72:	f7ff ff95 	bl	8000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b76:	4620      	mov	r0, r4
 8000b78:	f7ff ffb4 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b7c:	4620      	mov	r0, r4
 8000b7e:	f7ff ff73 	bl	8000a68 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b82:	4620      	mov	r0, r4
 8000b84:	f7ff ffa6 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b88:	4620      	mov	r0, r4
 8000b8a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000b8e:	f7ff bf87 	b.w	8000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000b92 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000b92:	b510      	push	{r4, lr}
 8000b94:	4604      	mov	r4, r0
 8000b96:	f7ff ff9d 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b9a:	4620      	mov	r0, r4
 8000b9c:	f7ff ff64 	bl	8000a68 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000ba0:	4620      	mov	r0, r4
 8000ba2:	f7ff ff9f 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000ba6:	4620      	mov	r0, r4
 8000ba8:	f7ff ff5e 	bl	8000a68 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000bac:	4620      	mov	r0, r4
 8000bae:	f7ff ff99 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000bb2:	4620      	mov	r0, r4
 8000bb4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000bb8:	f7ff bf72 	b.w	8000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000bbc:	b570      	push	{r4, r5, r6, lr}
 8000bbe:	4604      	mov	r4, r0
 8000bc0:	460e      	mov	r6, r1
 8000bc2:	2508      	movs	r5, #8
 8000bc4:	4620      	mov	r0, r4
 8000bc6:	f7ff ff85 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000bca:	0633      	lsls	r3, r6, #24
 8000bcc:	4620      	mov	r0, r4
 8000bce:	d502      	bpl.n	8000bd6 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000bd0:	f7ff ff66 	bl	8000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000bd4:	e001      	b.n	8000bda <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000bd6:	f7ff ff47 	bl	8000a68 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000bda:	4620      	mov	r0, r4
 8000bdc:	3d01      	subs	r5, #1
 8000bde:	f7ff ff81 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000be2:	0076      	lsls	r6, r6, #1
 8000be4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000be8:	b2f6      	uxtb	r6, r6
 8000bea:	d1eb      	bne.n	8000bc4 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000bec:	4620      	mov	r0, r4
 8000bee:	f7ff ff71 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000bf2:	4620      	mov	r0, r4
 8000bf4:	f7ff ff54 	bl	8000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000bf8:	4620      	mov	r0, r4
 8000bfa:	f7ff ff73 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000bfe:	4620      	mov	r0, r4
 8000c00:	f7ff ff68 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c04:	4620      	mov	r0, r4
 8000c06:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c0a:	f7ff bf27 	b.w	8000a5c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000c0e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000c0e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000c10:	4604      	mov	r4, r0
 8000c12:	460f      	mov	r7, r1
 8000c14:	4616      	mov	r6, r2
 8000c16:	461d      	mov	r5, r3
 8000c18:	f7ff ffa6 	bl	8000b68 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000c1c:	4620      	mov	r0, r4
 8000c1e:	4639      	mov	r1, r7
 8000c20:	f7ff ffcc 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c24:	4620      	mov	r0, r4
 8000c26:	4631      	mov	r1, r6
 8000c28:	f7ff ffc8 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c2c:	4620      	mov	r0, r4
 8000c2e:	4629      	mov	r1, r5
 8000c30:	f7ff ffc4 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c34:	4620      	mov	r0, r4
 8000c36:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000c3a:	f7ff bfaa 	b.w	8000b92 <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000c3e:	2300      	movs	r3, #0
 8000c40:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000c44:	4605      	mov	r5, r0
 8000c46:	7013      	strb	r3, [r2, #0]
 8000c48:	7053      	strb	r3, [r2, #1]
 8000c4a:	7093      	strb	r3, [r2, #2]
 8000c4c:	70d3      	strb	r3, [r2, #3]
 8000c4e:	460e      	mov	r6, r1
 8000c50:	4614      	mov	r4, r2
 8000c52:	1cd7      	adds	r7, r2, #3
 8000c54:	f7ff ff3e 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c58:	4628      	mov	r0, r5
 8000c5a:	f7ff ff21 	bl	8000aa0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000c5e:	f04f 0808 	mov.w	r8, #8
 8000c62:	1e63      	subs	r3, r4, #1
 8000c64:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000c68:	0052      	lsls	r2, r2, #1
 8000c6a:	42bb      	cmp	r3, r7
 8000c6c:	701a      	strb	r2, [r3, #0]
 8000c6e:	d1f9      	bne.n	8000c64 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000c70:	4628      	mov	r0, r5
 8000c72:	f7ff ff37 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c76:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c7a:	8a1b      	ldrh	r3, [r3, #16]
 8000c7c:	b29b      	uxth	r3, r3
 8000c7e:	06d8      	lsls	r0, r3, #27
 8000c80:	bf42      	ittt	mi
 8000c82:	7822      	ldrbmi	r2, [r4, #0]
 8000c84:	f042 0201 	orrmi.w	r2, r2, #1
 8000c88:	7022      	strbmi	r2, [r4, #0]
 8000c8a:	0699      	lsls	r1, r3, #26
 8000c8c:	bf42      	ittt	mi
 8000c8e:	7862      	ldrbmi	r2, [r4, #1]
 8000c90:	f042 0201 	orrmi.w	r2, r2, #1
 8000c94:	7062      	strbmi	r2, [r4, #1]
 8000c96:	065a      	lsls	r2, r3, #25
 8000c98:	bf42      	ittt	mi
 8000c9a:	78a2      	ldrbmi	r2, [r4, #2]
 8000c9c:	f042 0201 	orrmi.w	r2, r2, #1
 8000ca0:	70a2      	strbmi	r2, [r4, #2]
 8000ca2:	061b      	lsls	r3, r3, #24
 8000ca4:	bf42      	ittt	mi
 8000ca6:	78e3      	ldrbmi	r3, [r4, #3]
 8000ca8:	f043 0301 	orrmi.w	r3, r3, #1
 8000cac:	70e3      	strbmi	r3, [r4, #3]
 8000cae:	4628      	mov	r0, r5
 8000cb0:	f7ff ff10 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000cb4:	f1b8 0801 	subs.w	r8, r8, #1
 8000cb8:	d1d3      	bne.n	8000c62 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000cba:	b116      	cbz	r6, 8000cc2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000cbc:	4628      	mov	r0, r5
 8000cbe:	f7ff fed3 	bl	8000a68 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000cc2:	4628      	mov	r0, r5
 8000cc4:	f7ff ff0e 	bl	8000ae4 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cc8:	4628      	mov	r0, r5
 8000cca:	f7ff ff03 	bl	8000ad4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000cce:	4628      	mov	r0, r5
 8000cd0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000cd4:	f7ff bec2 	b.w	8000a5c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000cd8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000cd8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000cda:	4604      	mov	r4, r0
 8000cdc:	460d      	mov	r5, r1
 8000cde:	4617      	mov	r7, r2
 8000ce0:	461e      	mov	r6, r3
 8000ce2:	f7ff ff41 	bl	8000b68 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000ce6:	4620      	mov	r0, r4
 8000ce8:	4629      	mov	r1, r5
 8000cea:	f7ff ff67 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000cee:	4639      	mov	r1, r7
 8000cf0:	4620      	mov	r0, r4
 8000cf2:	f7ff ff63 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000cf6:	4620      	mov	r0, r4
 8000cf8:	f7ff ff36 	bl	8000b68 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000cfc:	4620      	mov	r0, r4
 8000cfe:	f045 0101 	orr.w	r1, r5, #1
 8000d02:	f7ff ff5b 	bl	8000bbc <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000d06:	4620      	mov	r0, r4
 8000d08:	4632      	mov	r2, r6
 8000d0a:	2100      	movs	r1, #0
 8000d0c:	f7ff ff97 	bl	8000c3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000d10:	4620      	mov	r0, r4
 8000d12:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000d16:	f7ff bf3c 	b.w	8000b92 <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000d1a <_ZN4CI2C5delayEv>:
 8000d1a:	230b      	movs	r3, #11
 8000d1c:	3b01      	subs	r3, #1
 8000d1e:	d001      	beq.n	8000d24 <_ZN4CI2C5delayEv+0xa>
 8000d20:	bf00      	nop
 8000d22:	e7fb      	b.n	8000d1c <_ZN4CI2C5delayEv+0x2>
 8000d24:	4770      	bx	lr
	...

08000d28 <_ZN4CI2C9SetLowSDAEv>:
 8000d28:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000d2a:	4c0c      	ldr	r4, [pc, #48]	; (8000d5c <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000d2c:	2301      	movs	r3, #1
 8000d2e:	2203      	movs	r2, #3
 8000d30:	4606      	mov	r6, r0
 8000d32:	2580      	movs	r5, #128	; 0x80
 8000d34:	f88d 3004 	strb.w	r3, [sp, #4]
 8000d38:	f88d 3006 	strb.w	r3, [sp, #6]
 8000d3c:	4620      	mov	r0, r4
 8000d3e:	2300      	movs	r3, #0
 8000d40:	4669      	mov	r1, sp
 8000d42:	f88d 2005 	strb.w	r2, [sp, #5]
 8000d46:	f88d 3007 	strb.w	r3, [sp, #7]
 8000d4a:	9500      	str	r5, [sp, #0]
 8000d4c:	f001 f9e8 	bl	8002120 <GPIO_Init>
 8000d50:	8525      	strh	r5, [r4, #40]	; 0x28
 8000d52:	4630      	mov	r0, r6
 8000d54:	f7ff ffe1 	bl	8000d1a <_ZN4CI2C5delayEv>
 8000d58:	b002      	add	sp, #8
 8000d5a:	bd70      	pop	{r4, r5, r6, pc}
 8000d5c:	48000400 	.word	0x48000400

08000d60 <_ZN4CI2C10SetHighSDAEv>:
 8000d60:	4b05      	ldr	r3, [pc, #20]	; (8000d78 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000d62:	681a      	ldr	r2, [r3, #0]
 8000d64:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000d68:	601a      	str	r2, [r3, #0]
 8000d6a:	681a      	ldr	r2, [r3, #0]
 8000d6c:	601a      	str	r2, [r3, #0]
 8000d6e:	2280      	movs	r2, #128	; 0x80
 8000d70:	619a      	str	r2, [r3, #24]
 8000d72:	f7ff bfd2 	b.w	8000d1a <_ZN4CI2C5delayEv>
 8000d76:	bf00      	nop
 8000d78:	48000400 	.word	0x48000400

08000d7c <_ZN4CI2C9SetLowSCLEv>:
 8000d7c:	4b02      	ldr	r3, [pc, #8]	; (8000d88 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000d7e:	2240      	movs	r2, #64	; 0x40
 8000d80:	851a      	strh	r2, [r3, #40]	; 0x28
 8000d82:	f7ff bfca 	b.w	8000d1a <_ZN4CI2C5delayEv>
 8000d86:	bf00      	nop
 8000d88:	48000400 	.word	0x48000400

08000d8c <_ZN4CI2C10SetHighSCLEv>:
 8000d8c:	4b02      	ldr	r3, [pc, #8]	; (8000d98 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000d8e:	2240      	movs	r2, #64	; 0x40
 8000d90:	619a      	str	r2, [r3, #24]
 8000d92:	f7ff bfc2 	b.w	8000d1a <_ZN4CI2C5delayEv>
 8000d96:	bf00      	nop
 8000d98:	48000400 	.word	0x48000400

08000d9c <_ZN4CI2C4initEv>:
 8000d9c:	b513      	push	{r0, r1, r4, lr}
 8000d9e:	4604      	mov	r4, r0
 8000da0:	2101      	movs	r1, #1
 8000da2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000da6:	f000 ffb3 	bl	8001d10 <RCC_AHBPeriphClockCmd>
 8000daa:	23c0      	movs	r3, #192	; 0xc0
 8000dac:	9300      	str	r3, [sp, #0]
 8000dae:	2301      	movs	r3, #1
 8000db0:	2203      	movs	r2, #3
 8000db2:	4669      	mov	r1, sp
 8000db4:	f88d 3004 	strb.w	r3, [sp, #4]
 8000db8:	f88d 3006 	strb.w	r3, [sp, #6]
 8000dbc:	4809      	ldr	r0, [pc, #36]	; (8000de4 <_ZN4CI2C4initEv+0x48>)
 8000dbe:	f88d 2005 	strb.w	r2, [sp, #5]
 8000dc2:	2300      	movs	r3, #0
 8000dc4:	f88d 3007 	strb.w	r3, [sp, #7]
 8000dc8:	f001 f9aa 	bl	8002120 <GPIO_Init>
 8000dcc:	4620      	mov	r0, r4
 8000dce:	f7ff ffdd 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000dd2:	4620      	mov	r0, r4
 8000dd4:	f7ff ffa8 	bl	8000d28 <_ZN4CI2C9SetLowSDAEv>
 8000dd8:	4620      	mov	r0, r4
 8000dda:	f7ff ffc1 	bl	8000d60 <_ZN4CI2C10SetHighSDAEv>
 8000dde:	b002      	add	sp, #8
 8000de0:	bd10      	pop	{r4, pc}
 8000de2:	bf00      	nop
 8000de4:	48000400 	.word	0x48000400

08000de8 <_ZN4CI2C5StartEv>:
 8000de8:	b510      	push	{r4, lr}
 8000dea:	4604      	mov	r4, r0
 8000dec:	f7ff ffce 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000df0:	4620      	mov	r0, r4
 8000df2:	f7ff ffb5 	bl	8000d60 <_ZN4CI2C10SetHighSDAEv>
 8000df6:	4620      	mov	r0, r4
 8000df8:	f7ff ffc8 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000dfc:	4620      	mov	r0, r4
 8000dfe:	f7ff ff93 	bl	8000d28 <_ZN4CI2C9SetLowSDAEv>
 8000e02:	4620      	mov	r0, r4
 8000e04:	f7ff ffba 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000e08:	4620      	mov	r0, r4
 8000e0a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e0e:	f7ff bfa7 	b.w	8000d60 <_ZN4CI2C10SetHighSDAEv>

08000e12 <_ZN4CI2C4StopEv>:
 8000e12:	b510      	push	{r4, lr}
 8000e14:	4604      	mov	r4, r0
 8000e16:	f7ff ffb1 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000e1a:	4620      	mov	r0, r4
 8000e1c:	f7ff ff84 	bl	8000d28 <_ZN4CI2C9SetLowSDAEv>
 8000e20:	4620      	mov	r0, r4
 8000e22:	f7ff ffb3 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000e26:	4620      	mov	r0, r4
 8000e28:	f7ff ff7e 	bl	8000d28 <_ZN4CI2C9SetLowSDAEv>
 8000e2c:	4620      	mov	r0, r4
 8000e2e:	f7ff ffad 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000e32:	4620      	mov	r0, r4
 8000e34:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e38:	f7ff bf92 	b.w	8000d60 <_ZN4CI2C10SetHighSDAEv>

08000e3c <_ZN4CI2C5WriteEh>:
 8000e3c:	b570      	push	{r4, r5, r6, lr}
 8000e3e:	4604      	mov	r4, r0
 8000e40:	460e      	mov	r6, r1
 8000e42:	2508      	movs	r5, #8
 8000e44:	4620      	mov	r0, r4
 8000e46:	f7ff ff99 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000e4a:	0633      	lsls	r3, r6, #24
 8000e4c:	4620      	mov	r0, r4
 8000e4e:	d502      	bpl.n	8000e56 <_ZN4CI2C5WriteEh+0x1a>
 8000e50:	f7ff ff86 	bl	8000d60 <_ZN4CI2C10SetHighSDAEv>
 8000e54:	e001      	b.n	8000e5a <_ZN4CI2C5WriteEh+0x1e>
 8000e56:	f7ff ff67 	bl	8000d28 <_ZN4CI2C9SetLowSDAEv>
 8000e5a:	4620      	mov	r0, r4
 8000e5c:	3d01      	subs	r5, #1
 8000e5e:	f7ff ff95 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000e62:	0076      	lsls	r6, r6, #1
 8000e64:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000e68:	b2f6      	uxtb	r6, r6
 8000e6a:	d1eb      	bne.n	8000e44 <_ZN4CI2C5WriteEh+0x8>
 8000e6c:	4620      	mov	r0, r4
 8000e6e:	f7ff ff85 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000e72:	4620      	mov	r0, r4
 8000e74:	f7ff ff74 	bl	8000d60 <_ZN4CI2C10SetHighSDAEv>
 8000e78:	4620      	mov	r0, r4
 8000e7a:	f7ff ff87 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000e7e:	4b07      	ldr	r3, [pc, #28]	; (8000e9c <_ZN4CI2C5WriteEh+0x60>)
 8000e80:	8a1d      	ldrh	r5, [r3, #16]
 8000e82:	4620      	mov	r0, r4
 8000e84:	f7ff ff7a 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000e88:	b2ad      	uxth	r5, r5
 8000e8a:	4620      	mov	r0, r4
 8000e8c:	f7ff ff45 	bl	8000d1a <_ZN4CI2C5delayEv>
 8000e90:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8000e94:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000e98:	bd70      	pop	{r4, r5, r6, pc}
 8000e9a:	bf00      	nop
 8000e9c:	48000400 	.word	0x48000400

08000ea0 <_ZN4CI2C9write_regEhhh>:
 8000ea0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000ea2:	4604      	mov	r4, r0
 8000ea4:	460f      	mov	r7, r1
 8000ea6:	4616      	mov	r6, r2
 8000ea8:	461d      	mov	r5, r3
 8000eaa:	f7ff ff9d 	bl	8000de8 <_ZN4CI2C5StartEv>
 8000eae:	4639      	mov	r1, r7
 8000eb0:	4620      	mov	r0, r4
 8000eb2:	f7ff ffc3 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000eb6:	4631      	mov	r1, r6
 8000eb8:	4620      	mov	r0, r4
 8000eba:	f7ff ffbf 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000ebe:	4620      	mov	r0, r4
 8000ec0:	4629      	mov	r1, r5
 8000ec2:	f7ff ffbb 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000ec6:	4620      	mov	r0, r4
 8000ec8:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000ecc:	f7ff bfa1 	b.w	8000e12 <_ZN4CI2C4StopEv>

08000ed0 <_ZN4CI2C4ReadEh>:
 8000ed0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000ed2:	4605      	mov	r5, r0
 8000ed4:	460f      	mov	r7, r1
 8000ed6:	f7ff ff51 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000eda:	2608      	movs	r6, #8
 8000edc:	2400      	movs	r4, #0
 8000ede:	4628      	mov	r0, r5
 8000ee0:	f7ff ff54 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000ee4:	4b10      	ldr	r3, [pc, #64]	; (8000f28 <_ZN4CI2C4ReadEh+0x58>)
 8000ee6:	8a1b      	ldrh	r3, [r3, #16]
 8000ee8:	0064      	lsls	r4, r4, #1
 8000eea:	061b      	lsls	r3, r3, #24
 8000eec:	b2e4      	uxtb	r4, r4
 8000eee:	4628      	mov	r0, r5
 8000ef0:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000ef4:	bf48      	it	mi
 8000ef6:	f044 0401 	orrmi.w	r4, r4, #1
 8000efa:	f7ff ff3f 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000efe:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000f02:	d1ec      	bne.n	8000ede <_ZN4CI2C4ReadEh+0xe>
 8000f04:	4628      	mov	r0, r5
 8000f06:	b117      	cbz	r7, 8000f0e <_ZN4CI2C4ReadEh+0x3e>
 8000f08:	f7ff ff0e 	bl	8000d28 <_ZN4CI2C9SetLowSDAEv>
 8000f0c:	e001      	b.n	8000f12 <_ZN4CI2C4ReadEh+0x42>
 8000f0e:	f7ff ff27 	bl	8000d60 <_ZN4CI2C10SetHighSDAEv>
 8000f12:	4628      	mov	r0, r5
 8000f14:	f7ff ff3a 	bl	8000d8c <_ZN4CI2C10SetHighSCLEv>
 8000f18:	4628      	mov	r0, r5
 8000f1a:	f7ff ff2f 	bl	8000d7c <_ZN4CI2C9SetLowSCLEv>
 8000f1e:	4628      	mov	r0, r5
 8000f20:	f7ff ff1e 	bl	8000d60 <_ZN4CI2C10SetHighSDAEv>
 8000f24:	4620      	mov	r0, r4
 8000f26:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000f28:	48000400 	.word	0x48000400

08000f2c <_ZN4CI2C8read_regEhh>:
 8000f2c:	b570      	push	{r4, r5, r6, lr}
 8000f2e:	4604      	mov	r4, r0
 8000f30:	460d      	mov	r5, r1
 8000f32:	4616      	mov	r6, r2
 8000f34:	f7ff ff58 	bl	8000de8 <_ZN4CI2C5StartEv>
 8000f38:	4629      	mov	r1, r5
 8000f3a:	4620      	mov	r0, r4
 8000f3c:	f7ff ff7e 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000f40:	4631      	mov	r1, r6
 8000f42:	4620      	mov	r0, r4
 8000f44:	f7ff ff7a 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000f48:	4620      	mov	r0, r4
 8000f4a:	f7ff ff4d 	bl	8000de8 <_ZN4CI2C5StartEv>
 8000f4e:	f045 0101 	orr.w	r1, r5, #1
 8000f52:	4620      	mov	r0, r4
 8000f54:	f7ff ff72 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000f58:	2100      	movs	r1, #0
 8000f5a:	4620      	mov	r0, r4
 8000f5c:	f7ff ffb8 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8000f60:	4605      	mov	r5, r0
 8000f62:	4620      	mov	r0, r4
 8000f64:	f7ff ff55 	bl	8000e12 <_ZN4CI2C4StopEv>
 8000f68:	4628      	mov	r0, r5
 8000f6a:	bd70      	pop	{r4, r5, r6, pc}

08000f6c <_ZN4CIMU8imu_readEv>:
 8000f6c:	b570      	push	{r4, r5, r6, lr}
 8000f6e:	4c52      	ldr	r4, [pc, #328]	; (80010b8 <_ZN4CIMU8imu_readEv+0x14c>)
 8000f70:	4605      	mov	r5, r0
 8000f72:	4620      	mov	r0, r4
 8000f74:	f7ff ff38 	bl	8000de8 <_ZN4CI2C5StartEv>
 8000f78:	4620      	mov	r0, r4
 8000f7a:	21d4      	movs	r1, #212	; 0xd4
 8000f7c:	f7ff ff5e 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000f80:	21a8      	movs	r1, #168	; 0xa8
 8000f82:	4620      	mov	r0, r4
 8000f84:	f7ff ff5a 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000f88:	4620      	mov	r0, r4
 8000f8a:	f7ff ff2d 	bl	8000de8 <_ZN4CI2C5StartEv>
 8000f8e:	4620      	mov	r0, r4
 8000f90:	21d5      	movs	r1, #213	; 0xd5
 8000f92:	f7ff ff53 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000f96:	4620      	mov	r0, r4
 8000f98:	2101      	movs	r1, #1
 8000f9a:	f7ff ff99 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8000f9e:	2101      	movs	r1, #1
 8000fa0:	b286      	uxth	r6, r0
 8000fa2:	4620      	mov	r0, r4
 8000fa4:	f7ff ff94 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8000fa8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fac:	b200      	sxth	r0, r0
 8000fae:	6268      	str	r0, [r5, #36]	; 0x24
 8000fb0:	2101      	movs	r1, #1
 8000fb2:	4620      	mov	r0, r4
 8000fb4:	f7ff ff8c 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8000fb8:	2101      	movs	r1, #1
 8000fba:	b286      	uxth	r6, r0
 8000fbc:	4620      	mov	r0, r4
 8000fbe:	f7ff ff87 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8000fc2:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fc6:	b200      	sxth	r0, r0
 8000fc8:	62a8      	str	r0, [r5, #40]	; 0x28
 8000fca:	2101      	movs	r1, #1
 8000fcc:	4620      	mov	r0, r4
 8000fce:	f7ff ff7f 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8000fd2:	2100      	movs	r1, #0
 8000fd4:	b286      	uxth	r6, r0
 8000fd6:	4620      	mov	r0, r4
 8000fd8:	f7ff ff7a 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8000fdc:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fe0:	b200      	sxth	r0, r0
 8000fe2:	62e8      	str	r0, [r5, #44]	; 0x2c
 8000fe4:	4620      	mov	r0, r4
 8000fe6:	f7ff ff14 	bl	8000e12 <_ZN4CI2C4StopEv>
 8000fea:	4620      	mov	r0, r4
 8000fec:	f7ff fefc 	bl	8000de8 <_ZN4CI2C5StartEv>
 8000ff0:	4620      	mov	r0, r4
 8000ff2:	213c      	movs	r1, #60	; 0x3c
 8000ff4:	f7ff ff22 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8000ff8:	21a8      	movs	r1, #168	; 0xa8
 8000ffa:	4620      	mov	r0, r4
 8000ffc:	f7ff ff1e 	bl	8000e3c <_ZN4CI2C5WriteEh>
 8001000:	4620      	mov	r0, r4
 8001002:	f7ff fef1 	bl	8000de8 <_ZN4CI2C5StartEv>
 8001006:	4620      	mov	r0, r4
 8001008:	213d      	movs	r1, #61	; 0x3d
 800100a:	f7ff ff17 	bl	8000e3c <_ZN4CI2C5WriteEh>
 800100e:	4620      	mov	r0, r4
 8001010:	2101      	movs	r1, #1
 8001012:	f7ff ff5d 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8001016:	2101      	movs	r1, #1
 8001018:	b286      	uxth	r6, r0
 800101a:	4620      	mov	r0, r4
 800101c:	f7ff ff58 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8001020:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001024:	b200      	sxth	r0, r0
 8001026:	6328      	str	r0, [r5, #48]	; 0x30
 8001028:	2101      	movs	r1, #1
 800102a:	4620      	mov	r0, r4
 800102c:	f7ff ff50 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8001030:	2101      	movs	r1, #1
 8001032:	b286      	uxth	r6, r0
 8001034:	4620      	mov	r0, r4
 8001036:	f7ff ff4b 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 800103a:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800103e:	b200      	sxth	r0, r0
 8001040:	6368      	str	r0, [r5, #52]	; 0x34
 8001042:	2101      	movs	r1, #1
 8001044:	4620      	mov	r0, r4
 8001046:	f7ff ff43 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 800104a:	2100      	movs	r1, #0
 800104c:	b286      	uxth	r6, r0
 800104e:	4620      	mov	r0, r4
 8001050:	f7ff ff3e 	bl	8000ed0 <_ZN4CI2C4ReadEh>
 8001054:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001058:	b200      	sxth	r0, r0
 800105a:	63a8      	str	r0, [r5, #56]	; 0x38
 800105c:	4620      	mov	r0, r4
 800105e:	f7ff fed8 	bl	8000e12 <_ZN4CI2C4StopEv>
 8001062:	686a      	ldr	r2, [r5, #4]
 8001064:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001066:	68a8      	ldr	r0, [r5, #8]
 8001068:	1a9b      	subs	r3, r3, r2
 800106a:	68ea      	ldr	r2, [r5, #12]
 800106c:	26c8      	movs	r6, #200	; 0xc8
 800106e:	fb93 f3f6 	sdiv	r3, r3, r6
 8001072:	441a      	add	r2, r3
 8001074:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8001076:	60ea      	str	r2, [r5, #12]
 8001078:	2155      	movs	r1, #85	; 0x55
 800107a:	4359      	muls	r1, r3
 800107c:	f640 14e2 	movw	r4, #2530	; 0x9e2
 8001080:	434a      	muls	r2, r1
 8001082:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 8001084:	fb92 f2f4 	sdiv	r2, r2, r4
 8001088:	61aa      	str	r2, [r5, #24]
 800108a:	682a      	ldr	r2, [r5, #0]
 800108c:	1a9b      	subs	r3, r3, r2
 800108e:	692a      	ldr	r2, [r5, #16]
 8001090:	fb93 f3f6 	sdiv	r3, r3, r6
 8001094:	441a      	add	r2, r3
 8001096:	612a      	str	r2, [r5, #16]
 8001098:	434a      	muls	r2, r1
 800109a:	fb92 f2f4 	sdiv	r2, r2, r4
 800109e:	61ea      	str	r2, [r5, #28]
 80010a0:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 80010a2:	1a12      	subs	r2, r2, r0
 80010a4:	fb92 f0f6 	sdiv	r0, r2, r6
 80010a8:	696a      	ldr	r2, [r5, #20]
 80010aa:	1883      	adds	r3, r0, r2
 80010ac:	616b      	str	r3, [r5, #20]
 80010ae:	434b      	muls	r3, r1
 80010b0:	fb93 f3f4 	sdiv	r3, r3, r4
 80010b4:	622b      	str	r3, [r5, #32]
 80010b6:	bd70      	pop	{r4, r5, r6, pc}
 80010b8:	2000015c 	.word	0x2000015c

080010bc <_ZN4CIMU8imu_initEv>:
 80010bc:	230a      	movs	r3, #10
 80010be:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010c2:	63c3      	str	r3, [r0, #60]	; 0x3c
 80010c4:	2300      	movs	r3, #0
 80010c6:	4604      	mov	r4, r0
 80010c8:	6003      	str	r3, [r0, #0]
 80010ca:	6043      	str	r3, [r0, #4]
 80010cc:	6083      	str	r3, [r0, #8]
 80010ce:	60c3      	str	r3, [r0, #12]
 80010d0:	6103      	str	r3, [r0, #16]
 80010d2:	6143      	str	r3, [r0, #20]
 80010d4:	f242 7511 	movw	r5, #10001	; 0x2711
 80010d8:	3d01      	subs	r5, #1
 80010da:	d001      	beq.n	80010e0 <_ZN4CIMU8imu_initEv+0x24>
 80010dc:	bf00      	nop
 80010de:	e7fb      	b.n	80010d8 <_ZN4CIMU8imu_initEv+0x1c>
 80010e0:	4832      	ldr	r0, [pc, #200]	; (80011ac <_ZN4CIMU8imu_initEv+0xf0>)
 80010e2:	21d4      	movs	r1, #212	; 0xd4
 80010e4:	220f      	movs	r2, #15
 80010e6:	f7ff ff21 	bl	8000f2c <_ZN4CI2C8read_regEhh>
 80010ea:	28d4      	cmp	r0, #212	; 0xd4
 80010ec:	4606      	mov	r6, r0
 80010ee:	d155      	bne.n	800119c <_ZN4CIMU8imu_initEv+0xe0>
 80010f0:	482e      	ldr	r0, [pc, #184]	; (80011ac <_ZN4CIMU8imu_initEv+0xf0>)
 80010f2:	213c      	movs	r1, #60	; 0x3c
 80010f4:	220f      	movs	r2, #15
 80010f6:	f7ff ff19 	bl	8000f2c <_ZN4CI2C8read_regEhh>
 80010fa:	2849      	cmp	r0, #73	; 0x49
 80010fc:	d152      	bne.n	80011a4 <_ZN4CIMU8imu_initEv+0xe8>
 80010fe:	4631      	mov	r1, r6
 8001100:	482a      	ldr	r0, [pc, #168]	; (80011ac <_ZN4CIMU8imu_initEv+0xf0>)
 8001102:	2220      	movs	r2, #32
 8001104:	23ff      	movs	r3, #255	; 0xff
 8001106:	f7ff fecb 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 800110a:	4631      	mov	r1, r6
 800110c:	4827      	ldr	r0, [pc, #156]	; (80011ac <_ZN4CIMU8imu_initEv+0xf0>)
 800110e:	4e28      	ldr	r6, [pc, #160]	; (80011b0 <_ZN4CIMU8imu_initEv+0xf4>)
 8001110:	2223      	movs	r2, #35	; 0x23
 8001112:	2310      	movs	r3, #16
 8001114:	f7ff fec4 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 8001118:	4824      	ldr	r0, [pc, #144]	; (80011ac <_ZN4CIMU8imu_initEv+0xf0>)
 800111a:	213c      	movs	r1, #60	; 0x3c
 800111c:	221f      	movs	r2, #31
 800111e:	462b      	mov	r3, r5
 8001120:	f7ff febe 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 8001124:	4821      	ldr	r0, [pc, #132]	; (80011ac <_ZN4CIMU8imu_initEv+0xf0>)
 8001126:	213c      	movs	r1, #60	; 0x3c
 8001128:	2220      	movs	r2, #32
 800112a:	2367      	movs	r3, #103	; 0x67
 800112c:	f7ff feb8 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 8001130:	481e      	ldr	r0, [pc, #120]	; (80011ac <_ZN4CIMU8imu_initEv+0xf0>)
 8001132:	213c      	movs	r1, #60	; 0x3c
 8001134:	2221      	movs	r2, #33	; 0x21
 8001136:	462b      	mov	r3, r5
 8001138:	f7ff feb2 	bl	8000ea0 <_ZN4CI2C9write_regEhhh>
 800113c:	3e01      	subs	r6, #1
 800113e:	d001      	beq.n	8001144 <_ZN4CIMU8imu_initEv+0x88>
 8001140:	bf00      	nop
 8001142:	e7fb      	b.n	800113c <_ZN4CIMU8imu_initEv+0x80>
 8001144:	4620      	mov	r0, r4
 8001146:	f7ff ff11 	bl	8000f6c <_ZN4CIMU8imu_readEv>
 800114a:	2564      	movs	r5, #100	; 0x64
 800114c:	4637      	mov	r7, r6
 800114e:	46b0      	mov	r8, r6
 8001150:	2365      	movs	r3, #101	; 0x65
 8001152:	3b01      	subs	r3, #1
 8001154:	d001      	beq.n	800115a <_ZN4CIMU8imu_initEv+0x9e>
 8001156:	bf00      	nop
 8001158:	e7fb      	b.n	8001152 <_ZN4CIMU8imu_initEv+0x96>
 800115a:	4620      	mov	r0, r4
 800115c:	f7ff ff06 	bl	8000f6c <_ZN4CIMU8imu_readEv>
 8001160:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8001162:	4498      	add	r8, r3
 8001164:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8001166:	441f      	add	r7, r3
 8001168:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800116a:	3d01      	subs	r5, #1
 800116c:	441e      	add	r6, r3
 800116e:	d1ef      	bne.n	8001150 <_ZN4CIMU8imu_initEv+0x94>
 8001170:	2264      	movs	r2, #100	; 0x64
 8001172:	6325      	str	r5, [r4, #48]	; 0x30
 8001174:	fb98 f3f2 	sdiv	r3, r8, r2
 8001178:	fb97 f7f2 	sdiv	r7, r7, r2
 800117c:	fb96 f6f2 	sdiv	r6, r6, r2
 8001180:	6023      	str	r3, [r4, #0]
 8001182:	6067      	str	r7, [r4, #4]
 8001184:	60a6      	str	r6, [r4, #8]
 8001186:	6365      	str	r5, [r4, #52]	; 0x34
 8001188:	63a5      	str	r5, [r4, #56]	; 0x38
 800118a:	6265      	str	r5, [r4, #36]	; 0x24
 800118c:	62a5      	str	r5, [r4, #40]	; 0x28
 800118e:	62e5      	str	r5, [r4, #44]	; 0x2c
 8001190:	61a5      	str	r5, [r4, #24]
 8001192:	61e5      	str	r5, [r4, #28]
 8001194:	6225      	str	r5, [r4, #32]
 8001196:	4628      	mov	r0, r5
 8001198:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800119c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80011a0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011a4:	f06f 0001 	mvn.w	r0, #1
 80011a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011ac:	2000015c 	.word	0x2000015c
 80011b0:	000186a1 	.word	0x000186a1

080011b4 <_ZN5CGPIO9gpio_initEv>:
 80011b4:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80011b8:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80011bc:	2101      	movs	r1, #1
 80011be:	f000 fda7 	bl	8001d10 <RCC_AHBPeriphClockCmd>
 80011c2:	4f22      	ldr	r7, [pc, #136]	; (800124c <_ZN5CGPIO9gpio_initEv+0x98>)
 80011c4:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80011c8:	2101      	movs	r1, #1
 80011ca:	f000 fda1 	bl	8001d10 <RCC_AHBPeriphClockCmd>
 80011ce:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80011d2:	2101      	movs	r1, #1
 80011d4:	f000 fd9c 	bl	8001d10 <RCC_AHBPeriphClockCmd>
 80011d8:	2400      	movs	r4, #0
 80011da:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80011de:	2503      	movs	r5, #3
 80011e0:	f04f 0801 	mov.w	r8, #1
 80011e4:	4638      	mov	r0, r7
 80011e6:	4669      	mov	r1, sp
 80011e8:	9300      	str	r3, [sp, #0]
 80011ea:	2608      	movs	r6, #8
 80011ec:	f88d 8004 	strb.w	r8, [sp, #4]
 80011f0:	f88d 4006 	strb.w	r4, [sp, #6]
 80011f4:	f88d 5005 	strb.w	r5, [sp, #5]
 80011f8:	f88d 4007 	strb.w	r4, [sp, #7]
 80011fc:	f000 ff90 	bl	8002120 <GPIO_Init>
 8001200:	4669      	mov	r1, sp
 8001202:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001206:	9600      	str	r6, [sp, #0]
 8001208:	f88d 8004 	strb.w	r8, [sp, #4]
 800120c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001210:	f88d 5005 	strb.w	r5, [sp, #5]
 8001214:	f88d 4007 	strb.w	r4, [sp, #7]
 8001218:	f000 ff82 	bl	8002120 <GPIO_Init>
 800121c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001220:	4638      	mov	r0, r7
 8001222:	4669      	mov	r1, sp
 8001224:	9300      	str	r3, [sp, #0]
 8001226:	f88d 4004 	strb.w	r4, [sp, #4]
 800122a:	f88d 5005 	strb.w	r5, [sp, #5]
 800122e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001232:	f000 ff75 	bl	8002120 <GPIO_Init>
 8001236:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800123a:	4620      	mov	r0, r4
 800123c:	851e      	strh	r6, [r3, #40]	; 0x28
 800123e:	4b04      	ldr	r3, [pc, #16]	; (8001250 <_ZN5CGPIO9gpio_initEv+0x9c>)
 8001240:	601c      	str	r4, [r3, #0]
 8001242:	4b04      	ldr	r3, [pc, #16]	; (8001254 <_ZN5CGPIO9gpio_initEv+0xa0>)
 8001244:	601c      	str	r4, [r3, #0]
 8001246:	b002      	add	sp, #8
 8001248:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800124c:	48000400 	.word	0x48000400
 8001250:	20000160 	.word	0x20000160
 8001254:	20000164 	.word	0x20000164

08001258 <_ZN5CGPIO7gpio_onEm>:
 8001258:	2908      	cmp	r1, #8
 800125a:	d005      	beq.n	8001268 <_ZN5CGPIO7gpio_onEm+0x10>
 800125c:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8001260:	d105      	bne.n	800126e <_ZN5CGPIO7gpio_onEm+0x16>
 8001262:	4b03      	ldr	r3, [pc, #12]	; (8001270 <_ZN5CGPIO7gpio_onEm+0x18>)
 8001264:	6199      	str	r1, [r3, #24]
 8001266:	4770      	bx	lr
 8001268:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800126c:	8519      	strh	r1, [r3, #40]	; 0x28
 800126e:	4770      	bx	lr
 8001270:	48000400 	.word	0x48000400

08001274 <_ZN5CGPIO8gpio_offEm>:
 8001274:	2908      	cmp	r1, #8
 8001276:	d005      	beq.n	8001284 <_ZN5CGPIO8gpio_offEm+0x10>
 8001278:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 800127c:	d105      	bne.n	800128a <_ZN5CGPIO8gpio_offEm+0x16>
 800127e:	4b03      	ldr	r3, [pc, #12]	; (800128c <_ZN5CGPIO8gpio_offEm+0x18>)
 8001280:	8519      	strh	r1, [r3, #40]	; 0x28
 8001282:	4770      	bx	lr
 8001284:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001288:	6199      	str	r1, [r3, #24]
 800128a:	4770      	bx	lr
 800128c:	48000400 	.word	0x48000400

08001290 <_ZN5CGPIO7gpio_inEm>:
 8001290:	4b02      	ldr	r3, [pc, #8]	; (800129c <_ZN5CGPIO7gpio_inEm+0xc>)
 8001292:	8a18      	ldrh	r0, [r3, #16]
 8001294:	b280      	uxth	r0, r0
 8001296:	ea21 0000 	bic.w	r0, r1, r0
 800129a:	4770      	bx	lr
 800129c:	48000400 	.word	0x48000400

080012a0 <EXTI9_5_IRQHandler>:
 80012a0:	4a03      	ldr	r2, [pc, #12]	; (80012b0 <EXTI9_5_IRQHandler+0x10>)
 80012a2:	6813      	ldr	r3, [r2, #0]
 80012a4:	2006      	movs	r0, #6
 80012a6:	3301      	adds	r3, #1
 80012a8:	6013      	str	r3, [r2, #0]
 80012aa:	f000 bf2d 	b.w	8002108 <EXTI_ClearITPendingBit>
 80012ae:	bf00      	nop
 80012b0:	20000160 	.word	0x20000160

080012b4 <EXTI15_10_IRQHandler>:
 80012b4:	4a03      	ldr	r2, [pc, #12]	; (80012c4 <EXTI15_10_IRQHandler+0x10>)
 80012b6:	6813      	ldr	r3, [r2, #0]
 80012b8:	200c      	movs	r0, #12
 80012ba:	3301      	adds	r3, #1
 80012bc:	6013      	str	r3, [r2, #0]
 80012be:	f000 bf23 	b.w	8002108 <EXTI_ClearITPendingBit>
 80012c2:	bf00      	nop
 80012c4:	20000164 	.word	0x20000164

080012c8 <_ZN6CError10error_funcEi>:
 80012c8:	230a      	movs	r3, #10
 80012ca:	490c      	ldr	r1, [pc, #48]	; (80012fc <_ZN6CError10error_funcEi+0x34>)
 80012cc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80012d0:	618a      	str	r2, [r1, #24]
 80012d2:	4a0b      	ldr	r2, [pc, #44]	; (8001300 <_ZN6CError10error_funcEi+0x38>)
 80012d4:	3a01      	subs	r2, #1
 80012d6:	d001      	beq.n	80012dc <_ZN6CError10error_funcEi+0x14>
 80012d8:	bf00      	nop
 80012da:	e7fb      	b.n	80012d4 <_ZN6CError10error_funcEi+0xc>
 80012dc:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80012e0:	850a      	strh	r2, [r1, #40]	; 0x28
 80012e2:	4a08      	ldr	r2, [pc, #32]	; (8001304 <_ZN6CError10error_funcEi+0x3c>)
 80012e4:	3a01      	subs	r2, #1
 80012e6:	d001      	beq.n	80012ec <_ZN6CError10error_funcEi+0x24>
 80012e8:	bf00      	nop
 80012ea:	e7fb      	b.n	80012e4 <_ZN6CError10error_funcEi+0x1c>
 80012ec:	3b01      	subs	r3, #1
 80012ee:	d1ec      	bne.n	80012ca <_ZN6CError10error_funcEi+0x2>
 80012f0:	4b05      	ldr	r3, [pc, #20]	; (8001308 <_ZN6CError10error_funcEi+0x40>)
 80012f2:	3b01      	subs	r3, #1
 80012f4:	d0e8      	beq.n	80012c8 <_ZN6CError10error_funcEi>
 80012f6:	bf00      	nop
 80012f8:	e7fb      	b.n	80012f2 <_ZN6CError10error_funcEi+0x2a>
 80012fa:	bf00      	nop
 80012fc:	48000400 	.word	0x48000400
 8001300:	000186a1 	.word	0x000186a1
 8001304:	000f4241 	.word	0x000f4241
 8001308:	002dc6c1 	.word	0x002dc6c1

0800130c <_ZN9CTerminal13terminal_initEv>:
 800130c:	b530      	push	{r4, r5, lr}
 800130e:	4a2f      	ldr	r2, [pc, #188]	; (80013cc <_ZN9CTerminal13terminal_initEv+0xc0>)
 8001310:	2300      	movs	r3, #0
 8001312:	6013      	str	r3, [r2, #0]
 8001314:	4a2e      	ldr	r2, [pc, #184]	; (80013d0 <_ZN9CTerminal13terminal_initEv+0xc4>)
 8001316:	b08b      	sub	sp, #44	; 0x2c
 8001318:	6013      	str	r3, [r2, #0]
 800131a:	4a2e      	ldr	r2, [pc, #184]	; (80013d4 <_ZN9CTerminal13terminal_initEv+0xc8>)
 800131c:	2400      	movs	r4, #0
 800131e:	54d4      	strb	r4, [r2, r3]
 8001320:	3301      	adds	r3, #1
 8001322:	2b10      	cmp	r3, #16
 8001324:	d1f9      	bne.n	800131a <_ZN9CTerminal13terminal_initEv+0xe>
 8001326:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800132a:	2101      	movs	r1, #1
 800132c:	f000 fcf0 	bl	8001d10 <RCC_AHBPeriphClockCmd>
 8001330:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001334:	2101      	movs	r1, #1
 8001336:	f000 fcf9 	bl	8001d2c <RCC_APB2PeriphClockCmd>
 800133a:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800133e:	9302      	str	r3, [sp, #8]
 8001340:	2302      	movs	r3, #2
 8001342:	f88d 300c 	strb.w	r3, [sp, #12]
 8001346:	a902      	add	r1, sp, #8
 8001348:	2303      	movs	r3, #3
 800134a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800134e:	f88d 300d 	strb.w	r3, [sp, #13]
 8001352:	f88d 400e 	strb.w	r4, [sp, #14]
 8001356:	f88d 400f 	strb.w	r4, [sp, #15]
 800135a:	f000 fee1 	bl	8002120 <GPIO_Init>
 800135e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001362:	2109      	movs	r1, #9
 8001364:	2207      	movs	r2, #7
 8001366:	f000 ff21 	bl	80021ac <GPIO_PinAFConfig>
 800136a:	2207      	movs	r2, #7
 800136c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001370:	210a      	movs	r1, #10
 8001372:	f000 ff1b 	bl	80021ac <GPIO_PinAFConfig>
 8001376:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 800137a:	9304      	str	r3, [sp, #16]
 800137c:	a904      	add	r1, sp, #16
 800137e:	230c      	movs	r3, #12
 8001380:	4815      	ldr	r0, [pc, #84]	; (80013d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001382:	9308      	str	r3, [sp, #32]
 8001384:	9405      	str	r4, [sp, #20]
 8001386:	9406      	str	r4, [sp, #24]
 8001388:	9407      	str	r4, [sp, #28]
 800138a:	9409      	str	r4, [sp, #36]	; 0x24
 800138c:	f000 fd4e 	bl	8001e2c <USART_Init>
 8001390:	4811      	ldr	r0, [pc, #68]	; (80013d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001392:	2101      	movs	r1, #1
 8001394:	f000 fdac 	bl	8001ef0 <USART_Cmd>
 8001398:	2201      	movs	r2, #1
 800139a:	4910      	ldr	r1, [pc, #64]	; (80013dc <_ZN9CTerminal13terminal_initEv+0xd0>)
 800139c:	480e      	ldr	r0, [pc, #56]	; (80013d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800139e:	f000 fdb7 	bl	8001f10 <USART_ITConfig>
 80013a2:	2501      	movs	r5, #1
 80013a4:	2325      	movs	r3, #37	; 0x25
 80013a6:	a801      	add	r0, sp, #4
 80013a8:	f88d 3004 	strb.w	r3, [sp, #4]
 80013ac:	f88d 4005 	strb.w	r4, [sp, #5]
 80013b0:	f88d 4006 	strb.w	r4, [sp, #6]
 80013b4:	f88d 5007 	strb.w	r5, [sp, #7]
 80013b8:	f000 fe6c 	bl	8002094 <NVIC_Init>
 80013bc:	4806      	ldr	r0, [pc, #24]	; (80013d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80013be:	4629      	mov	r1, r5
 80013c0:	f000 fd96 	bl	8001ef0 <USART_Cmd>
 80013c4:	4620      	mov	r0, r4
 80013c6:	b00b      	add	sp, #44	; 0x2c
 80013c8:	bd30      	pop	{r4, r5, pc}
 80013ca:	bf00      	nop
 80013cc:	20000168 	.word	0x20000168
 80013d0:	2000017c 	.word	0x2000017c
 80013d4:	2000016c 	.word	0x2000016c
 80013d8:	40013800 	.word	0x40013800
 80013dc:	00050105 	.word	0x00050105

080013e0 <USART1_IRQHandler>:
 80013e0:	b508      	push	{r3, lr}
 80013e2:	480d      	ldr	r0, [pc, #52]	; (8001418 <USART1_IRQHandler+0x38>)
 80013e4:	490d      	ldr	r1, [pc, #52]	; (800141c <USART1_IRQHandler+0x3c>)
 80013e6:	f000 fdad 	bl	8001f44 <USART_GetITStatus>
 80013ea:	b178      	cbz	r0, 800140c <USART1_IRQHandler+0x2c>
 80013ec:	480a      	ldr	r0, [pc, #40]	; (8001418 <USART1_IRQHandler+0x38>)
 80013ee:	f000 fd8a 	bl	8001f06 <USART_ReceiveData>
 80013f2:	4b0b      	ldr	r3, [pc, #44]	; (8001420 <USART1_IRQHandler+0x40>)
 80013f4:	490b      	ldr	r1, [pc, #44]	; (8001424 <USART1_IRQHandler+0x44>)
 80013f6:	681a      	ldr	r2, [r3, #0]
 80013f8:	b2c0      	uxtb	r0, r0
 80013fa:	5488      	strb	r0, [r1, r2]
 80013fc:	681a      	ldr	r2, [r3, #0]
 80013fe:	3201      	adds	r2, #1
 8001400:	601a      	str	r2, [r3, #0]
 8001402:	681a      	ldr	r2, [r3, #0]
 8001404:	2a0f      	cmp	r2, #15
 8001406:	bf84      	itt	hi
 8001408:	2200      	movhi	r2, #0
 800140a:	601a      	strhi	r2, [r3, #0]
 800140c:	4802      	ldr	r0, [pc, #8]	; (8001418 <USART1_IRQHandler+0x38>)
 800140e:	4903      	ldr	r1, [pc, #12]	; (800141c <USART1_IRQHandler+0x3c>)
 8001410:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001414:	f000 bdb4 	b.w	8001f80 <USART_ClearITPendingBit>
 8001418:	40013800 	.word	0x40013800
 800141c:	00050105 	.word	0x00050105
 8001420:	20000168 	.word	0x20000168
 8001424:	2000016c 	.word	0x2000016c

08001428 <_ZN9CTerminal7putcharEc>:
 8001428:	4b04      	ldr	r3, [pc, #16]	; (800143c <_ZN9CTerminal7putcharEc+0x14>)
 800142a:	69da      	ldr	r2, [r3, #28]
 800142c:	0612      	lsls	r2, r2, #24
 800142e:	d401      	bmi.n	8001434 <_ZN9CTerminal7putcharEc+0xc>
 8001430:	bf00      	nop
 8001432:	e7f9      	b.n	8001428 <_ZN9CTerminal7putcharEc>
 8001434:	b289      	uxth	r1, r1
 8001436:	8519      	strh	r1, [r3, #40]	; 0x28
 8001438:	4770      	bx	lr
 800143a:	bf00      	nop
 800143c:	40013800 	.word	0x40013800

08001440 <_ZN9CTerminal4putsEPc>:
 8001440:	b538      	push	{r3, r4, r5, lr}
 8001442:	4605      	mov	r5, r0
 8001444:	1e4c      	subs	r4, r1, #1
 8001446:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 800144a:	b119      	cbz	r1, 8001454 <_ZN9CTerminal4putsEPc+0x14>
 800144c:	4628      	mov	r0, r5
 800144e:	f7ff ffeb 	bl	8001428 <_ZN9CTerminal7putcharEc>
 8001452:	e7f8      	b.n	8001446 <_ZN9CTerminal4putsEPc+0x6>
 8001454:	2001      	movs	r0, #1
 8001456:	bd38      	pop	{r3, r4, r5, pc}

08001458 <_ZN9CTerminal4putiEl>:
 8001458:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 800145a:	1e0b      	subs	r3, r1, #0
 800145c:	f04f 0200 	mov.w	r2, #0
 8001460:	bfba      	itte	lt
 8001462:	425b      	neglt	r3, r3
 8001464:	2501      	movlt	r5, #1
 8001466:	4615      	movge	r5, r2
 8001468:	f88d 200f 	strb.w	r2, [sp, #15]
 800146c:	210a      	movs	r1, #10
 800146e:	220a      	movs	r2, #10
 8001470:	ac01      	add	r4, sp, #4
 8001472:	fb93 f6f2 	sdiv	r6, r3, r2
 8001476:	fb02 3316 	mls	r3, r2, r6, r3
 800147a:	3330      	adds	r3, #48	; 0x30
 800147c:	550b      	strb	r3, [r1, r4]
 800147e:	1e4a      	subs	r2, r1, #1
 8001480:	4633      	mov	r3, r6
 8001482:	b10e      	cbz	r6, 8001488 <_ZN9CTerminal4putiEl+0x30>
 8001484:	4611      	mov	r1, r2
 8001486:	e7f2      	b.n	800146e <_ZN9CTerminal4putiEl+0x16>
 8001488:	b12d      	cbz	r5, 8001496 <_ZN9CTerminal4putiEl+0x3e>
 800148a:	ab04      	add	r3, sp, #16
 800148c:	4413      	add	r3, r2
 800148e:	212d      	movs	r1, #45	; 0x2d
 8001490:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001494:	4611      	mov	r1, r2
 8001496:	4421      	add	r1, r4
 8001498:	f7ff ffd2 	bl	8001440 <_ZN9CTerminal4putsEPc>
 800149c:	b004      	add	sp, #16
 800149e:	bd70      	pop	{r4, r5, r6, pc}

080014a0 <_ZN9CTerminal5putuiEm>:
 80014a0:	b530      	push	{r4, r5, lr}
 80014a2:	b085      	sub	sp, #20
 80014a4:	2300      	movs	r3, #0
 80014a6:	f88d 300f 	strb.w	r3, [sp, #15]
 80014aa:	220a      	movs	r2, #10
 80014ac:	230a      	movs	r3, #10
 80014ae:	ac01      	add	r4, sp, #4
 80014b0:	fbb1 f5f3 	udiv	r5, r1, r3
 80014b4:	fb03 1315 	mls	r3, r3, r5, r1
 80014b8:	3330      	adds	r3, #48	; 0x30
 80014ba:	5513      	strb	r3, [r2, r4]
 80014bc:	4629      	mov	r1, r5
 80014be:	1e53      	subs	r3, r2, #1
 80014c0:	b10d      	cbz	r5, 80014c6 <_ZN9CTerminal5putuiEm+0x26>
 80014c2:	461a      	mov	r2, r3
 80014c4:	e7f2      	b.n	80014ac <_ZN9CTerminal5putuiEm+0xc>
 80014c6:	18a1      	adds	r1, r4, r2
 80014c8:	f7ff ffba 	bl	8001440 <_ZN9CTerminal4putsEPc>
 80014cc:	b005      	add	sp, #20
 80014ce:	bd30      	pop	{r4, r5, pc}

080014d0 <_ZN9CTerminal4putxEm>:
 80014d0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80014d2:	2300      	movs	r3, #0
 80014d4:	f88d 300f 	strb.w	r3, [sp, #15]
 80014d8:	220a      	movs	r2, #10
 80014da:	f001 030f 	and.w	r3, r1, #15
 80014de:	2b09      	cmp	r3, #9
 80014e0:	ac01      	add	r4, sp, #4
 80014e2:	bfd4      	ite	le
 80014e4:	3330      	addle	r3, #48	; 0x30
 80014e6:	3357      	addgt	r3, #87	; 0x57
 80014e8:	0909      	lsrs	r1, r1, #4
 80014ea:	54a3      	strb	r3, [r4, r2]
 80014ec:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80014f0:	d001      	beq.n	80014f6 <_ZN9CTerminal4putxEm+0x26>
 80014f2:	461a      	mov	r2, r3
 80014f4:	e7f1      	b.n	80014da <_ZN9CTerminal4putxEm+0xa>
 80014f6:	18a1      	adds	r1, r4, r2
 80014f8:	f7ff ffa2 	bl	8001440 <_ZN9CTerminal4putsEPc>
 80014fc:	b004      	add	sp, #16
 80014fe:	bd10      	pop	{r4, pc}

08001500 <_ZN9CTerminal6printfEPKcz>:
 8001500:	b40e      	push	{r1, r2, r3}
 8001502:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001504:	ab07      	add	r3, sp, #28
 8001506:	4604      	mov	r4, r0
 8001508:	f853 6b04 	ldr.w	r6, [r3], #4
 800150c:	9301      	str	r3, [sp, #4]
 800150e:	2500      	movs	r5, #0
 8001510:	5d71      	ldrb	r1, [r6, r5]
 8001512:	2900      	cmp	r1, #0
 8001514:	d040      	beq.n	8001598 <_ZN9CTerminal6printfEPKcz+0x98>
 8001516:	2925      	cmp	r1, #37	; 0x25
 8001518:	d004      	beq.n	8001524 <_ZN9CTerminal6printfEPKcz+0x24>
 800151a:	4620      	mov	r0, r4
 800151c:	f7ff ff84 	bl	8001428 <_ZN9CTerminal7putcharEc>
 8001520:	3501      	adds	r5, #1
 8001522:	e7f5      	b.n	8001510 <_ZN9CTerminal6printfEPKcz+0x10>
 8001524:	1973      	adds	r3, r6, r5
 8001526:	7859      	ldrb	r1, [r3, #1]
 8001528:	2969      	cmp	r1, #105	; 0x69
 800152a:	d018      	beq.n	800155e <_ZN9CTerminal6printfEPKcz+0x5e>
 800152c:	d809      	bhi.n	8001542 <_ZN9CTerminal6printfEPKcz+0x42>
 800152e:	2925      	cmp	r1, #37	; 0x25
 8001530:	d02d      	beq.n	800158e <_ZN9CTerminal6printfEPKcz+0x8e>
 8001532:	2963      	cmp	r1, #99	; 0x63
 8001534:	d12e      	bne.n	8001594 <_ZN9CTerminal6printfEPKcz+0x94>
 8001536:	9b01      	ldr	r3, [sp, #4]
 8001538:	1d1a      	adds	r2, r3, #4
 800153a:	9201      	str	r2, [sp, #4]
 800153c:	4620      	mov	r0, r4
 800153e:	7819      	ldrb	r1, [r3, #0]
 8001540:	e026      	b.n	8001590 <_ZN9CTerminal6printfEPKcz+0x90>
 8001542:	2975      	cmp	r1, #117	; 0x75
 8001544:	d013      	beq.n	800156e <_ZN9CTerminal6printfEPKcz+0x6e>
 8001546:	2978      	cmp	r1, #120	; 0x78
 8001548:	d019      	beq.n	800157e <_ZN9CTerminal6printfEPKcz+0x7e>
 800154a:	2973      	cmp	r1, #115	; 0x73
 800154c:	d122      	bne.n	8001594 <_ZN9CTerminal6printfEPKcz+0x94>
 800154e:	9b01      	ldr	r3, [sp, #4]
 8001550:	4620      	mov	r0, r4
 8001552:	1d1a      	adds	r2, r3, #4
 8001554:	6819      	ldr	r1, [r3, #0]
 8001556:	9201      	str	r2, [sp, #4]
 8001558:	f7ff ff72 	bl	8001440 <_ZN9CTerminal4putsEPc>
 800155c:	e01a      	b.n	8001594 <_ZN9CTerminal6printfEPKcz+0x94>
 800155e:	9b01      	ldr	r3, [sp, #4]
 8001560:	4620      	mov	r0, r4
 8001562:	1d1a      	adds	r2, r3, #4
 8001564:	6819      	ldr	r1, [r3, #0]
 8001566:	9201      	str	r2, [sp, #4]
 8001568:	f7ff ff76 	bl	8001458 <_ZN9CTerminal4putiEl>
 800156c:	e012      	b.n	8001594 <_ZN9CTerminal6printfEPKcz+0x94>
 800156e:	9b01      	ldr	r3, [sp, #4]
 8001570:	4620      	mov	r0, r4
 8001572:	1d1a      	adds	r2, r3, #4
 8001574:	6819      	ldr	r1, [r3, #0]
 8001576:	9201      	str	r2, [sp, #4]
 8001578:	f7ff ff92 	bl	80014a0 <_ZN9CTerminal5putuiEm>
 800157c:	e00a      	b.n	8001594 <_ZN9CTerminal6printfEPKcz+0x94>
 800157e:	9b01      	ldr	r3, [sp, #4]
 8001580:	4620      	mov	r0, r4
 8001582:	1d1a      	adds	r2, r3, #4
 8001584:	6819      	ldr	r1, [r3, #0]
 8001586:	9201      	str	r2, [sp, #4]
 8001588:	f7ff ffa2 	bl	80014d0 <_ZN9CTerminal4putxEm>
 800158c:	e002      	b.n	8001594 <_ZN9CTerminal6printfEPKcz+0x94>
 800158e:	4620      	mov	r0, r4
 8001590:	f7ff ff4a 	bl	8001428 <_ZN9CTerminal7putcharEc>
 8001594:	3502      	adds	r5, #2
 8001596:	e7bb      	b.n	8001510 <_ZN9CTerminal6printfEPKcz+0x10>
 8001598:	b003      	add	sp, #12
 800159a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800159e:	b003      	add	sp, #12
 80015a0:	4770      	bx	lr

080015a2 <_ZN10MathVectorILj4EE4initEv>:
 80015a2:	2300      	movs	r3, #0
 80015a4:	6003      	str	r3, [r0, #0]
 80015a6:	6043      	str	r3, [r0, #4]
 80015a8:	6083      	str	r3, [r0, #8]
 80015aa:	60c3      	str	r3, [r0, #12]
 80015ac:	4770      	bx	lr
	...

080015b0 <_ZN21ReinforcementLearningILj4ELj3ELj16EE4initEv>:
 80015b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80015b2:	2308      	movs	r3, #8
 80015b4:	f8c0 31e8 	str.w	r3, [r0, #488]	; 0x1e8
 80015b8:	4b18      	ldr	r3, [pc, #96]	; (800161c <_ZN21ReinforcementLearningILj4ELj3ELj16EE4initEv+0x6c>)
 80015ba:	f8c0 31ec 	str.w	r3, [r0, #492]	; 0x1ec
 80015be:	4604      	mov	r4, r0
 80015c0:	f100 0528 	add.w	r5, r0, #40	; 0x28
 80015c4:	f500 7794 	add.w	r7, r0, #296	; 0x128
 80015c8:	f105 0610 	add.w	r6, r5, #16
 80015cc:	4814      	ldr	r0, [pc, #80]	; (8001620 <_ZN21ReinforcementLearningILj4ELj3ELj16EE4initEv+0x70>)
 80015ce:	f7fe ff27 	bl	8000420 <_ZN5CMath3rndEv>
 80015d2:	f845 0b04 	str.w	r0, [r5], #4
 80015d6:	42b5      	cmp	r5, r6
 80015d8:	d1f8      	bne.n	80015cc <_ZN21ReinforcementLearningILj4ELj3ELj16EE4initEv+0x1c>
 80015da:	42bd      	cmp	r5, r7
 80015dc:	d1f4      	bne.n	80015c8 <_ZN21ReinforcementLearningILj4ELj3ELj16EE4initEv+0x18>
 80015de:	4623      	mov	r3, r4
 80015e0:	f104 02c0 	add.w	r2, r4, #192	; 0xc0
 80015e4:	2500      	movs	r5, #0
 80015e6:	f8c3 5128 	str.w	r5, [r3, #296]	; 0x128
 80015ea:	f8c3 512c 	str.w	r5, [r3, #300]	; 0x12c
 80015ee:	f8c3 5130 	str.w	r5, [r3, #304]	; 0x130
 80015f2:	330c      	adds	r3, #12
 80015f4:	4293      	cmp	r3, r2
 80015f6:	d1f5      	bne.n	80015e4 <_ZN21ReinforcementLearningILj4ELj3ELj16EE4initEv+0x34>
 80015f8:	2300      	movs	r3, #0
 80015fa:	6023      	str	r3, [r4, #0]
 80015fc:	6063      	str	r3, [r4, #4]
 80015fe:	f104 0008 	add.w	r0, r4, #8
 8001602:	f7ff ffce 	bl	80015a2 <_ZN10MathVectorILj4EE4initEv>
 8001606:	f104 0018 	add.w	r0, r4, #24
 800160a:	f7ff ffca 	bl	80015a2 <_ZN10MathVectorILj4EE4initEv>
 800160e:	f8c4 51f0 	str.w	r5, [r4, #496]	; 0x1f0
 8001612:	f8c4 51f4 	str.w	r5, [r4, #500]	; 0x1f4
 8001616:	f8c4 51f8 	str.w	r5, [r4, #504]	; 0x1f8
 800161a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800161c:	3dcccccd 	.word	0x3dcccccd
 8001620:	20000108 	.word	0x20000108

08001624 <_ZN21CLearningLineFollower4initEv>:
 8001624:	b508      	push	{r3, lr}
 8001626:	f7ff ffc3 	bl	80015b0 <_ZN21ReinforcementLearningILj4ELj3ELj16EE4initEv>
 800162a:	bd08      	pop	{r3, pc}

0800162c <_ZN10MathVectorILj3EE3mixERS0_f>:
 800162c:	ee06 2a90 	vmov	s13, r2
 8001630:	f100 030c 	add.w	r3, r0, #12
 8001634:	ed9f 7a08 	vldr	s14, [pc, #32]	; 8001658 <_ZN10MathVectorILj3EE3mixERS0_f+0x2c>
 8001638:	ecf1 7a01 	vldmia	r1!, {s15}
 800163c:	ed90 6a00 	vldr	s12, [r0]
 8001640:	ee37 7a66 	vsub.f32	s14, s14, s13
 8001644:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8001648:	ee47 7a06 	vmla.f32	s15, s14, s12
 800164c:	ece0 7a01 	vstmia	r0!, {s15}
 8001650:	4298      	cmp	r0, r3
 8001652:	d1ef      	bne.n	8001634 <_ZN10MathVectorILj3EE3mixERS0_f+0x8>
 8001654:	4770      	bx	lr
 8001656:	bf00      	nop
 8001658:	3f800000 	.word	0x3f800000

0800165c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>:
 800165c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800165e:	eddf 6a17 	vldr	s13, [pc, #92]	; 80016bc <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x60>
 8001662:	4603      	mov	r3, r0
 8001664:	2600      	movs	r6, #0
 8001666:	f8d0 01c0 	ldr.w	r0, [r0, #448]	; 0x1c0
 800166a:	461c      	mov	r4, r3
 800166c:	4635      	mov	r5, r6
 800166e:	4285      	cmp	r5, r0
 8001670:	d019      	beq.n	80016a6 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x4a>
 8001672:	eddf 7a13 	vldr	s15, [pc, #76]	; 80016c0 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x64>
 8001676:	468e      	mov	lr, r1
 8001678:	f104 0710 	add.w	r7, r4, #16
 800167c:	ecb4 6a01 	vldmia	r4!, {s12}
 8001680:	ecbe 7a01 	vldmia	lr!, {s14}
 8001684:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001688:	42bc      	cmp	r4, r7
 800168a:	ee47 7a07 	vmla.f32	s15, s14, s14
 800168e:	d1f5      	bne.n	800167c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x20>
 8001690:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001694:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001698:	bf44      	itt	mi
 800169a:	462e      	movmi	r6, r5
 800169c:	eef0 6a67 	vmovmi.f32	s13, s15
 80016a0:	3501      	adds	r5, #1
 80016a2:	463c      	mov	r4, r7
 80016a4:	e7e3      	b.n	800166e <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x12>
 80016a6:	f503 7380 	add.w	r3, r3, #256	; 0x100
 80016aa:	210c      	movs	r1, #12
 80016ac:	4610      	mov	r0, r2
 80016ae:	fb01 3106 	mla	r1, r1, r6, r3
 80016b2:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 80016b6:	f7ff ffb9 	bl	800162c <_ZN10MathVectorILj3EE3mixERS0_f>
 80016ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80016bc:	4cbebc20 	.word	0x4cbebc20
 80016c0:	00000000 	.word	0x00000000

080016c4 <_ZN21CLearningLineFollower4mainEv>:
 80016c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80016c8:	ed2d 8b04 	vpush	{d8-d9}
 80016cc:	b08b      	sub	sp, #44	; 0x2c
 80016ce:	4604      	mov	r4, r0
 80016d0:	a804      	add	r0, sp, #16
 80016d2:	f7fe fdcb 	bl	800026c <_ZN13CLinePositionC1Ev>
 80016d6:	4668      	mov	r0, sp
 80016d8:	46e8      	mov	r8, sp
 80016da:	f7ff ff62 	bl	80015a2 <_ZN10MathVectorILj4EE4initEv>
 80016de:	2100      	movs	r1, #0
 80016e0:	48a2      	ldr	r0, [pc, #648]	; (800196c <_ZN21CLearningLineFollower4mainEv+0x2a8>)
 80016e2:	f7fe ff5b 	bl	800059c <_ZN4CRGB8rgb_readEh>
 80016e6:	48a1      	ldr	r0, [pc, #644]	; (800196c <_ZN21CLearningLineFollower4mainEv+0x2a8>)
 80016e8:	f7ff f8f4 	bl	80008d4 <_ZN4CRGB14get_rgb_resultEv>
 80016ec:	4601      	mov	r1, r0
 80016ee:	a804      	add	r0, sp, #16
 80016f0:	f7fe fdc6 	bl	8000280 <_ZN13CLinePosition7processEP10sRGBResult>
 80016f4:	f104 0a08 	add.w	sl, r4, #8
 80016f8:	a804      	add	r0, sp, #16
 80016fa:	4641      	mov	r1, r8
 80016fc:	f7fe fe60 	bl	80003c0 <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>
 8001700:	e89a 000f 	ldmia.w	sl, {r0, r1, r2, r3}
 8001704:	f104 0518 	add.w	r5, r4, #24
 8001708:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 800170c:	e898 000f 	ldmia.w	r8, {r0, r1, r2, r3}
 8001710:	f104 0728 	add.w	r7, r4, #40	; 0x28
 8001714:	f504 79f8 	add.w	r9, r4, #496	; 0x1f0
 8001718:	e88a 000f 	stmia.w	sl, {r0, r1, r2, r3}
 800171c:	464a      	mov	r2, r9
 800171e:	4638      	mov	r0, r7
 8001720:	4651      	mov	r1, sl
 8001722:	f7ff ff9b 	bl	800165c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001726:	6863      	ldr	r3, [r4, #4]
 8001728:	6023      	str	r3, [r4, #0]
 800172a:	4891      	ldr	r0, [pc, #580]	; (8001970 <_ZN21CLearningLineFollower4mainEv+0x2ac>)
 800172c:	f7fe fe5e 	bl	80003ec <_ZN5CMath4randEv>
 8001730:	2364      	movs	r3, #100	; 0x64
 8001732:	fbb0 f2f3 	udiv	r2, r0, r3
 8001736:	fb02 0013 	mls	r0, r2, r3, r0
 800173a:	2813      	cmp	r0, #19
 800173c:	d809      	bhi.n	8001752 <_ZN21CLearningLineFollower4mainEv+0x8e>
 800173e:	488c      	ldr	r0, [pc, #560]	; (8001970 <_ZN21CLearningLineFollower4mainEv+0x2ac>)
 8001740:	f7fe fe54 	bl	80003ec <_ZN5CMath4randEv>
 8001744:	2603      	movs	r6, #3
 8001746:	fbb0 f6f6 	udiv	r6, r0, r6
 800174a:	eb06 0646 	add.w	r6, r6, r6, lsl #1
 800174e:	1b86      	subs	r6, r0, r6
 8001750:	e011      	b.n	8001776 <_ZN21CLearningLineFollower4mainEv+0xb2>
 8001752:	2600      	movs	r6, #0
 8001754:	464a      	mov	r2, r9
 8001756:	4633      	mov	r3, r6
 8001758:	eb04 0186 	add.w	r1, r4, r6, lsl #2
 800175c:	ecb2 7a01 	vldmia	r2!, {s14}
 8001760:	edd1 7a7c 	vldr	s15, [r1, #496]	; 0x1f0
 8001764:	eeb4 7a67 	vcmp.f32	s14, s15
 8001768:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800176c:	bfc8      	it	gt
 800176e:	461e      	movgt	r6, r3
 8001770:	3301      	adds	r3, #1
 8001772:	2b03      	cmp	r3, #3
 8001774:	d1f0      	bne.n	8001758 <_ZN21CLearningLineFollower4mainEv+0x94>
 8001776:	2e01      	cmp	r6, #1
 8001778:	6066      	str	r6, [r4, #4]
 800177a:	d013      	beq.n	80017a4 <_ZN21CLearningLineFollower4mainEv+0xe0>
 800177c:	d30a      	bcc.n	8001794 <_ZN21CLearningLineFollower4mainEv+0xd0>
 800177e:	2e02      	cmp	r6, #2
 8001780:	d11a      	bne.n	80017b8 <_ZN21CLearningLineFollower4mainEv+0xf4>
 8001782:	487c      	ldr	r0, [pc, #496]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 8001784:	2100      	movs	r1, #0
 8001786:	220e      	movs	r2, #14
 8001788:	f7ff f93c 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 800178c:	4879      	ldr	r0, [pc, #484]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 800178e:	2101      	movs	r1, #1
 8001790:	2200      	movs	r2, #0
 8001792:	e00f      	b.n	80017b4 <_ZN21CLearningLineFollower4mainEv+0xf0>
 8001794:	4877      	ldr	r0, [pc, #476]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 8001796:	2100      	movs	r1, #0
 8001798:	220e      	movs	r2, #14
 800179a:	f7ff f933 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 800179e:	4875      	ldr	r0, [pc, #468]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 80017a0:	2101      	movs	r1, #1
 80017a2:	e006      	b.n	80017b2 <_ZN21CLearningLineFollower4mainEv+0xee>
 80017a4:	2100      	movs	r1, #0
 80017a6:	4873      	ldr	r0, [pc, #460]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 80017a8:	460a      	mov	r2, r1
 80017aa:	f7ff f92b 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 80017ae:	4871      	ldr	r0, [pc, #452]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 80017b0:	4631      	mov	r1, r6
 80017b2:	220e      	movs	r2, #14
 80017b4:	f7ff f926 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 80017b8:	486c      	ldr	r0, [pc, #432]	; (800196c <_ZN21CLearningLineFollower4mainEv+0x2a8>)
 80017ba:	ed9f 9a6f 	vldr	s18, [pc, #444]	; 8001978 <_ZN21CLearningLineFollower4mainEv+0x2b4>
 80017be:	eddf 8a6f 	vldr	s17, [pc, #444]	; 800197c <_ZN21CLearningLineFollower4mainEv+0x2b8>
 80017c2:	2132      	movs	r1, #50	; 0x32
 80017c4:	f7fe fed8 	bl	8000578 <_ZN6CTimer8delay_msEm>
 80017c8:	2100      	movs	r1, #0
 80017ca:	4868      	ldr	r0, [pc, #416]	; (800196c <_ZN21CLearningLineFollower4mainEv+0x2a8>)
 80017cc:	f7fe fee6 	bl	800059c <_ZN4CRGB8rgb_readEh>
 80017d0:	4866      	ldr	r0, [pc, #408]	; (800196c <_ZN21CLearningLineFollower4mainEv+0x2a8>)
 80017d2:	f7ff f87f 	bl	80008d4 <_ZN4CRGB14get_rgb_resultEv>
 80017d6:	4601      	mov	r1, r0
 80017d8:	a804      	add	r0, sp, #16
 80017da:	f7fe fd51 	bl	8000280 <_ZN13CLinePosition7processEP10sRGBResult>
 80017de:	a804      	add	r0, sp, #16
 80017e0:	f7fe fdec 	bl	80003bc <_ZN13CLinePosition17get_line_positionEv>
 80017e4:	4601      	mov	r1, r0
 80017e6:	4862      	ldr	r0, [pc, #392]	; (8001970 <_ZN21CLearningLineFollower4mainEv+0x2ac>)
 80017e8:	f7fe fdf3 	bl	80003d2 <_ZN5CMath3absEf>
 80017ec:	e894 0840 	ldmia.w	r4, {r6, fp}
 80017f0:	ee07 0a90 	vmov	s15, r0
 80017f4:	ee79 7a67 	vsub.f32	s15, s18, s15
 80017f8:	4638      	mov	r0, r7
 80017fa:	4651      	mov	r1, sl
 80017fc:	464a      	mov	r2, r9
 80017fe:	eb04 0b8b 	add.w	fp, r4, fp, lsl #2
 8001802:	ee77 8ae8 	vsub.f32	s17, s15, s17
 8001806:	f7ff ff29 	bl	800165c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 800180a:	edd4 7a7c 	vldr	s15, [r4, #496]	; 0x1f0
 800180e:	ed9b 8a7c 	vldr	s16, [fp, #496]	; 0x1f0
 8001812:	eeb4 8a67 	vcmp.f32	s16, s15
 8001816:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800181a:	bf48      	it	mi
 800181c:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001820:	edd4 7a7d 	vldr	s15, [r4, #500]	; 0x1f4
 8001824:	eeb4 8a67 	vcmp.f32	s16, s15
 8001828:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800182c:	bf48      	it	mi
 800182e:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001832:	edd4 7a7e 	vldr	s15, [r4, #504]	; 0x1f8
 8001836:	eeb4 8a67 	vcmp.f32	s16, s15
 800183a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800183e:	4638      	mov	r0, r7
 8001840:	4629      	mov	r1, r5
 8001842:	464a      	mov	r2, r9
 8001844:	bf48      	it	mi
 8001846:	eeb0 8a67 	vmovmi.f32	s16, s15
 800184a:	f7ff ff07 	bl	800165c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 800184e:	eddf 7a4c 	vldr	s15, [pc, #304]	; 8001980 <_ZN21CLearningLineFollower4mainEv+0x2bc>
 8001852:	f8d4 11e8 	ldr.w	r1, [r4, #488]	; 0x1e8
 8001856:	eddf 6a4b 	vldr	s13, [pc, #300]	; 8001984 <_ZN21CLearningLineFollower4mainEv+0x2c0>
 800185a:	ee48 8a27 	vmla.f32	s17, s16, s15
 800185e:	eb04 0686 	add.w	r6, r4, r6, lsl #2
 8001862:	2200      	movs	r2, #0
 8001864:	4638      	mov	r0, r7
 8001866:	edc6 8a7c 	vstr	s17, [r6, #496]	; 0x1f0
 800186a:	4613      	mov	r3, r2
 800186c:	428b      	cmp	r3, r1
 800186e:	d018      	beq.n	80018a2 <_ZN21CLearningLineFollower4mainEv+0x1de>
 8001870:	eddf 7a45 	vldr	s15, [pc, #276]	; 8001988 <_ZN21CLearningLineFollower4mainEv+0x2c4>
 8001874:	462e      	mov	r6, r5
 8001876:	4686      	mov	lr, r0
 8001878:	ecb6 7a01 	vldmia	r6!, {s14}
 800187c:	ecbe 6a01 	vldmia	lr!, {s12}
 8001880:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001884:	42be      	cmp	r6, r7
 8001886:	ee47 7a07 	vmla.f32	s15, s14, s14
 800188a:	d1f5      	bne.n	8001878 <_ZN21CLearningLineFollower4mainEv+0x1b4>
 800188c:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001890:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001894:	bf44      	itt	mi
 8001896:	461a      	movmi	r2, r3
 8001898:	eef0 6a67 	vmovmi.f32	s13, s15
 800189c:	3301      	adds	r3, #1
 800189e:	3010      	adds	r0, #16
 80018a0:	e7e4      	b.n	800186c <_ZN21CLearningLineFollower4mainEv+0x1a8>
 80018a2:	290f      	cmp	r1, #15
 80018a4:	d81e      	bhi.n	80018e4 <_ZN21CLearningLineFollower4mainEv+0x220>
 80018a6:	eb04 1301 	add.w	r3, r4, r1, lsl #4
 80018aa:	3328      	adds	r3, #40	; 0x28
 80018ac:	ecf5 7a01 	vldmia	r5!, {s15}
 80018b0:	edd3 6a00 	vldr	s13, [r3]
 80018b4:	ed9f 7a34 	vldr	s14, [pc, #208]	; 8001988 <_ZN21CLearningLineFollower4mainEv+0x2c4>
 80018b8:	ee46 7a87 	vmla.f32	s15, s13, s14
 80018bc:	42bd      	cmp	r5, r7
 80018be:	ece3 7a01 	vstmia	r3!, {s15}
 80018c2:	d1f3      	bne.n	80018ac <_ZN21CLearningLineFollower4mainEv+0x1e8>
 80018c4:	230c      	movs	r3, #12
 80018c6:	f504 7094 	add.w	r0, r4, #296	; 0x128
 80018ca:	fb03 0001 	mla	r0, r3, r1, r0
 80018ce:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 80018d2:	4649      	mov	r1, r9
 80018d4:	f7ff feaa 	bl	800162c <_ZN10MathVectorILj3EE3mixERS0_f>
 80018d8:	f8d4 31e8 	ldr.w	r3, [r4, #488]	; 0x1e8
 80018dc:	3301      	adds	r3, #1
 80018de:	f8c4 31e8 	str.w	r3, [r4, #488]	; 0x1e8
 80018e2:	e01c      	b.n	800191e <_ZN21CLearningLineFollower4mainEv+0x25a>
 80018e4:	eb04 1302 	add.w	r3, r4, r2, lsl #4
 80018e8:	edd4 6a7b 	vldr	s13, [r4, #492]	; 0x1ec
 80018ec:	3328      	adds	r3, #40	; 0x28
 80018ee:	ecf5 7a01 	vldmia	r5!, {s15}
 80018f2:	ed93 6a00 	vldr	s12, [r3]
 80018f6:	ee39 7a66 	vsub.f32	s14, s18, s13
 80018fa:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80018fe:	ee47 7a06 	vmla.f32	s15, s14, s12
 8001902:	42bd      	cmp	r5, r7
 8001904:	ece3 7a01 	vstmia	r3!, {s15}
 8001908:	d1f1      	bne.n	80018ee <_ZN21CLearningLineFollower4mainEv+0x22a>
 800190a:	f504 7094 	add.w	r0, r4, #296	; 0x128
 800190e:	230c      	movs	r3, #12
 8001910:	fb03 0002 	mla	r0, r3, r2, r0
 8001914:	4649      	mov	r1, r9
 8001916:	f8d4 21ec 	ldr.w	r2, [r4, #492]	; 0x1ec
 800191a:	f7ff fe87 	bl	800162c <_ZN10MathVectorILj3EE3mixERS0_f>
 800191e:	a804      	add	r0, sp, #16
 8001920:	f7fe fd4a 	bl	80003b8 <_ZN13CLinePosition7on_lineEv>
 8001924:	4605      	mov	r5, r0
 8001926:	2800      	cmp	r0, #0
 8001928:	f47f aed9 	bne.w	80016de <_ZN21CLearningLineFollower4mainEv+0x1a>
 800192c:	4629      	mov	r1, r5
 800192e:	4811      	ldr	r0, [pc, #68]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 8001930:	f06f 020d 	mvn.w	r2, #13
 8001934:	f7ff f866 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 8001938:	f06f 020d 	mvn.w	r2, #13
 800193c:	480d      	ldr	r0, [pc, #52]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 800193e:	2101      	movs	r1, #1
 8001940:	f7ff f860 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 8001944:	4811      	ldr	r0, [pc, #68]	; (800198c <_ZN21CLearningLineFollower4mainEv+0x2c8>)
 8001946:	f44f 7196 	mov.w	r1, #300	; 0x12c
 800194a:	f7fe fe15 	bl	8000578 <_ZN6CTimer8delay_msEm>
 800194e:	4629      	mov	r1, r5
 8001950:	462a      	mov	r2, r5
 8001952:	4808      	ldr	r0, [pc, #32]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 8001954:	f7ff f856 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 8001958:	4806      	ldr	r0, [pc, #24]	; (8001974 <_ZN21CLearningLineFollower4mainEv+0x2b0>)
 800195a:	2101      	movs	r1, #1
 800195c:	462a      	mov	r2, r5
 800195e:	f7ff f851 	bl	8000a04 <_ZN6CMotor9set_motorEml>
 8001962:	4802      	ldr	r0, [pc, #8]	; (800196c <_ZN21CLearningLineFollower4mainEv+0x2a8>)
 8001964:	2164      	movs	r1, #100	; 0x64
 8001966:	f7fe fe07 	bl	8000578 <_ZN6CTimer8delay_msEm>
 800196a:	e6b8      	b.n	80016de <_ZN21CLearningLineFollower4mainEv+0x1a>
 800196c:	20000030 	.word	0x20000030
 8001970:	20000108 	.word	0x20000108
 8001974:	200000f4 	.word	0x200000f4
 8001978:	3f800000 	.word	0x3f800000
 800197c:	3f000000 	.word	0x3f000000
 8001980:	3f666666 	.word	0x3f666666
 8001984:	4cbebc20 	.word	0x4cbebc20
 8001988:	00000000 	.word	0x00000000
 800198c:	20000030 	.word	0x20000030

08001990 <_Z36reinforcement_learning_line_followerv>:
 8001990:	b510      	push	{r4, lr}
 8001992:	4c04      	ldr	r4, [pc, #16]	; (80019a4 <_Z36reinforcement_learning_line_followerv+0x14>)
 8001994:	4620      	mov	r0, r4
 8001996:	f7ff fe45 	bl	8001624 <_ZN21CLearningLineFollower4initEv>
 800199a:	4620      	mov	r0, r4
 800199c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80019a0:	f7ff be90 	b.w	80016c4 <_ZN21CLearningLineFollower4mainEv>
 80019a4:	20000180 	.word	0x20000180

080019a8 <main>:
 80019a8:	b508      	push	{r3, lr}
 80019aa:	f000 fb71 	bl	8002090 <sytem_clock_init>
 80019ae:	481b      	ldr	r0, [pc, #108]	; (8001a1c <main+0x74>)
 80019b0:	f7fe fc1a 	bl	80001e8 <_ZN7CKodama4initEv>
 80019b4:	b118      	cbz	r0, 80019be <main+0x16>
 80019b6:	4819      	ldr	r0, [pc, #100]	; (8001a1c <main+0x74>)
 80019b8:	2100      	movs	r1, #0
 80019ba:	f7ff fc85 	bl	80012c8 <_ZN6CError10error_funcEi>
 80019be:	4817      	ldr	r0, [pc, #92]	; (8001a1c <main+0x74>)
 80019c0:	210a      	movs	r1, #10
 80019c2:	f7fe fc50 	bl	8000266 <_ZN7CKodama6set_dtEl>
 80019c6:	4815      	ldr	r0, [pc, #84]	; (8001a1c <main+0x74>)
 80019c8:	f7fe fc30 	bl	800022c <_ZN7CKodama5sleepEv>
 80019cc:	4813      	ldr	r0, [pc, #76]	; (8001a1c <main+0x74>)
 80019ce:	f44f 7100 	mov.w	r1, #512	; 0x200
 80019d2:	f7ff fc5d 	bl	8001290 <_ZN5CGPIO7gpio_inEm>
 80019d6:	b120      	cbz	r0, 80019e2 <main+0x3a>
 80019d8:	4810      	ldr	r0, [pc, #64]	; (8001a1c <main+0x74>)
 80019da:	f7fe fc32 	bl	8000242 <_ZN7CKodama6wakeupEv>
 80019de:	f7ff ffd7 	bl	8001990 <_Z36reinforcement_learning_line_followerv>
 80019e2:	480e      	ldr	r0, [pc, #56]	; (8001a1c <main+0x74>)
 80019e4:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80019e8:	f7ff fc36 	bl	8001258 <_ZN5CGPIO7gpio_onEm>
 80019ec:	480b      	ldr	r0, [pc, #44]	; (8001a1c <main+0x74>)
 80019ee:	210a      	movs	r1, #10
 80019f0:	f7fe fdc2 	bl	8000578 <_ZN6CTimer8delay_msEm>
 80019f4:	4809      	ldr	r0, [pc, #36]	; (8001a1c <main+0x74>)
 80019f6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80019fa:	f7ff fc3b 	bl	8001274 <_ZN5CGPIO8gpio_offEm>
 80019fe:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001a02:	4806      	ldr	r0, [pc, #24]	; (8001a1c <main+0x74>)
 8001a04:	f7fe fdb8 	bl	8000578 <_ZN6CTimer8delay_msEm>
 8001a08:	4804      	ldr	r0, [pc, #16]	; (8001a1c <main+0x74>)
 8001a0a:	f7fe fda7 	bl	800055c <_ZN6CTimer8get_timeEv>
 8001a0e:	4904      	ldr	r1, [pc, #16]	; (8001a20 <main+0x78>)
 8001a10:	4602      	mov	r2, r0
 8001a12:	4802      	ldr	r0, [pc, #8]	; (8001a1c <main+0x74>)
 8001a14:	f7ff fd74 	bl	8001500 <_ZN9CTerminal6printfEPKcz>
 8001a18:	e7d8      	b.n	80019cc <main+0x24>
 8001a1a:	bf00      	nop
 8001a1c:	20000030 	.word	0x20000030
 8001a20:	08002340 	.word	0x08002340

08001a24 <RCC_GetClocksFreq>:
 8001a24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001a28:	4f9b      	ldr	r7, [pc, #620]	; (8001c98 <RCC_GetClocksFreq+0x274>)
 8001a2a:	687b      	ldr	r3, [r7, #4]
 8001a2c:	f003 030c 	and.w	r3, r3, #12
 8001a30:	2b04      	cmp	r3, #4
 8001a32:	d005      	beq.n	8001a40 <RCC_GetClocksFreq+0x1c>
 8001a34:	2b08      	cmp	r3, #8
 8001a36:	d006      	beq.n	8001a46 <RCC_GetClocksFreq+0x22>
 8001a38:	4a98      	ldr	r2, [pc, #608]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001a3a:	6002      	str	r2, [r0, #0]
 8001a3c:	b9b3      	cbnz	r3, 8001a6c <RCC_GetClocksFreq+0x48>
 8001a3e:	e016      	b.n	8001a6e <RCC_GetClocksFreq+0x4a>
 8001a40:	4b96      	ldr	r3, [pc, #600]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001a42:	6003      	str	r3, [r0, #0]
 8001a44:	e012      	b.n	8001a6c <RCC_GetClocksFreq+0x48>
 8001a46:	687b      	ldr	r3, [r7, #4]
 8001a48:	6879      	ldr	r1, [r7, #4]
 8001a4a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001a4e:	1c9a      	adds	r2, r3, #2
 8001a50:	03cb      	lsls	r3, r1, #15
 8001a52:	bf49      	itett	mi
 8001a54:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001a56:	4b92      	ldrpl	r3, [pc, #584]	; (8001ca0 <RCC_GetClocksFreq+0x27c>)
 8001a58:	4990      	ldrmi	r1, [pc, #576]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001a5a:	f003 030f 	andmi.w	r3, r3, #15
 8001a5e:	bf44      	itt	mi
 8001a60:	3301      	addmi	r3, #1
 8001a62:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001a66:	4353      	muls	r3, r2
 8001a68:	6003      	str	r3, [r0, #0]
 8001a6a:	e000      	b.n	8001a6e <RCC_GetClocksFreq+0x4a>
 8001a6c:	2300      	movs	r3, #0
 8001a6e:	687a      	ldr	r2, [r7, #4]
 8001a70:	4e8c      	ldr	r6, [pc, #560]	; (8001ca4 <RCC_GetClocksFreq+0x280>)
 8001a72:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001ca8 <RCC_GetClocksFreq+0x284>
 8001a76:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001a7a:	5cb4      	ldrb	r4, [r6, r2]
 8001a7c:	6802      	ldr	r2, [r0, #0]
 8001a7e:	b2e4      	uxtb	r4, r4
 8001a80:	fa22 f104 	lsr.w	r1, r2, r4
 8001a84:	6041      	str	r1, [r0, #4]
 8001a86:	687d      	ldr	r5, [r7, #4]
 8001a88:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001a8c:	5d75      	ldrb	r5, [r6, r5]
 8001a8e:	fa21 fe05 	lsr.w	lr, r1, r5
 8001a92:	f8c0 e008 	str.w	lr, [r0, #8]
 8001a96:	687d      	ldr	r5, [r7, #4]
 8001a98:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001a9c:	5d75      	ldrb	r5, [r6, r5]
 8001a9e:	b2ed      	uxtb	r5, r5
 8001aa0:	40e9      	lsrs	r1, r5
 8001aa2:	60c1      	str	r1, [r0, #12]
 8001aa4:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001aa6:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001aaa:	f008 060f 	and.w	r6, r8, #15
 8001aae:	f018 0f10 	tst.w	r8, #16
 8001ab2:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001ab6:	46e0      	mov	r8, ip
 8001ab8:	b2b6      	uxth	r6, r6
 8001aba:	d004      	beq.n	8001ac6 <RCC_GetClocksFreq+0xa2>
 8001abc:	b11e      	cbz	r6, 8001ac6 <RCC_GetClocksFreq+0xa2>
 8001abe:	fbb3 f6f6 	udiv	r6, r3, r6
 8001ac2:	6106      	str	r6, [r0, #16]
 8001ac4:	e000      	b.n	8001ac8 <RCC_GetClocksFreq+0xa4>
 8001ac6:	6102      	str	r2, [r0, #16]
 8001ac8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001aca:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001ace:	f00c 060f 	and.w	r6, ip, #15
 8001ad2:	f01c 0f10 	tst.w	ip, #16
 8001ad6:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001ada:	b2b6      	uxth	r6, r6
 8001adc:	d004      	beq.n	8001ae8 <RCC_GetClocksFreq+0xc4>
 8001ade:	b11e      	cbz	r6, 8001ae8 <RCC_GetClocksFreq+0xc4>
 8001ae0:	fbb3 f6f6 	udiv	r6, r3, r6
 8001ae4:	6146      	str	r6, [r0, #20]
 8001ae6:	e000      	b.n	8001aea <RCC_GetClocksFreq+0xc6>
 8001ae8:	6142      	str	r2, [r0, #20]
 8001aea:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001aec:	06f6      	lsls	r6, r6, #27
 8001aee:	bf5a      	itte	pl
 8001af0:	4e6a      	ldrpl	r6, [pc, #424]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001af2:	6186      	strpl	r6, [r0, #24]
 8001af4:	6182      	strmi	r2, [r0, #24]
 8001af6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001af8:	06b6      	lsls	r6, r6, #26
 8001afa:	bf5a      	itte	pl
 8001afc:	4e67      	ldrpl	r6, [pc, #412]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001afe:	61c6      	strpl	r6, [r0, #28]
 8001b00:	61c2      	strmi	r2, [r0, #28]
 8001b02:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b04:	0676      	lsls	r6, r6, #25
 8001b06:	bf5a      	itte	pl
 8001b08:	4e64      	ldrpl	r6, [pc, #400]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001b0a:	6206      	strpl	r6, [r0, #32]
 8001b0c:	6202      	strmi	r2, [r0, #32]
 8001b0e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b10:	05f6      	lsls	r6, r6, #23
 8001b12:	d506      	bpl.n	8001b22 <RCC_GetClocksFreq+0xfe>
 8001b14:	429a      	cmp	r2, r3
 8001b16:	d104      	bne.n	8001b22 <RCC_GetClocksFreq+0xfe>
 8001b18:	42a5      	cmp	r5, r4
 8001b1a:	d102      	bne.n	8001b22 <RCC_GetClocksFreq+0xfe>
 8001b1c:	0056      	lsls	r6, r2, #1
 8001b1e:	6246      	str	r6, [r0, #36]	; 0x24
 8001b20:	e000      	b.n	8001b24 <RCC_GetClocksFreq+0x100>
 8001b22:	6241      	str	r1, [r0, #36]	; 0x24
 8001b24:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b26:	04f6      	lsls	r6, r6, #19
 8001b28:	d506      	bpl.n	8001b38 <RCC_GetClocksFreq+0x114>
 8001b2a:	429a      	cmp	r2, r3
 8001b2c:	d104      	bne.n	8001b38 <RCC_GetClocksFreq+0x114>
 8001b2e:	42a5      	cmp	r5, r4
 8001b30:	d102      	bne.n	8001b38 <RCC_GetClocksFreq+0x114>
 8001b32:	0056      	lsls	r6, r2, #1
 8001b34:	6286      	str	r6, [r0, #40]	; 0x28
 8001b36:	e000      	b.n	8001b3a <RCC_GetClocksFreq+0x116>
 8001b38:	6281      	str	r1, [r0, #40]	; 0x28
 8001b3a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b3c:	05b6      	lsls	r6, r6, #22
 8001b3e:	d506      	bpl.n	8001b4e <RCC_GetClocksFreq+0x12a>
 8001b40:	429a      	cmp	r2, r3
 8001b42:	d104      	bne.n	8001b4e <RCC_GetClocksFreq+0x12a>
 8001b44:	42a5      	cmp	r5, r4
 8001b46:	d102      	bne.n	8001b4e <RCC_GetClocksFreq+0x12a>
 8001b48:	0056      	lsls	r6, r2, #1
 8001b4a:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001b4c:	e000      	b.n	8001b50 <RCC_GetClocksFreq+0x12c>
 8001b4e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001b50:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b52:	0576      	lsls	r6, r6, #21
 8001b54:	d506      	bpl.n	8001b64 <RCC_GetClocksFreq+0x140>
 8001b56:	429a      	cmp	r2, r3
 8001b58:	d104      	bne.n	8001b64 <RCC_GetClocksFreq+0x140>
 8001b5a:	42a5      	cmp	r5, r4
 8001b5c:	d102      	bne.n	8001b64 <RCC_GetClocksFreq+0x140>
 8001b5e:	0056      	lsls	r6, r2, #1
 8001b60:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001b62:	e000      	b.n	8001b66 <RCC_GetClocksFreq+0x142>
 8001b64:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001b66:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b68:	0536      	lsls	r6, r6, #20
 8001b6a:	d506      	bpl.n	8001b7a <RCC_GetClocksFreq+0x156>
 8001b6c:	429a      	cmp	r2, r3
 8001b6e:	d104      	bne.n	8001b7a <RCC_GetClocksFreq+0x156>
 8001b70:	42a5      	cmp	r5, r4
 8001b72:	d102      	bne.n	8001b7a <RCC_GetClocksFreq+0x156>
 8001b74:	0056      	lsls	r6, r2, #1
 8001b76:	6506      	str	r6, [r0, #80]	; 0x50
 8001b78:	e000      	b.n	8001b7c <RCC_GetClocksFreq+0x158>
 8001b7a:	6501      	str	r1, [r0, #80]	; 0x50
 8001b7c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b7e:	04b6      	lsls	r6, r6, #18
 8001b80:	d506      	bpl.n	8001b90 <RCC_GetClocksFreq+0x16c>
 8001b82:	429a      	cmp	r2, r3
 8001b84:	d104      	bne.n	8001b90 <RCC_GetClocksFreq+0x16c>
 8001b86:	42a5      	cmp	r5, r4
 8001b88:	d102      	bne.n	8001b90 <RCC_GetClocksFreq+0x16c>
 8001b8a:	0056      	lsls	r6, r2, #1
 8001b8c:	6546      	str	r6, [r0, #84]	; 0x54
 8001b8e:	e000      	b.n	8001b92 <RCC_GetClocksFreq+0x16e>
 8001b90:	6501      	str	r1, [r0, #80]	; 0x50
 8001b92:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001b94:	0436      	lsls	r6, r6, #16
 8001b96:	d506      	bpl.n	8001ba6 <RCC_GetClocksFreq+0x182>
 8001b98:	429a      	cmp	r2, r3
 8001b9a:	d104      	bne.n	8001ba6 <RCC_GetClocksFreq+0x182>
 8001b9c:	42a5      	cmp	r5, r4
 8001b9e:	d102      	bne.n	8001ba6 <RCC_GetClocksFreq+0x182>
 8001ba0:	0053      	lsls	r3, r2, #1
 8001ba2:	6583      	str	r3, [r0, #88]	; 0x58
 8001ba4:	e000      	b.n	8001ba8 <RCC_GetClocksFreq+0x184>
 8001ba6:	6581      	str	r1, [r0, #88]	; 0x58
 8001ba8:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001baa:	4b3b      	ldr	r3, [pc, #236]	; (8001c98 <RCC_GetClocksFreq+0x274>)
 8001bac:	07a4      	lsls	r4, r4, #30
 8001bae:	d101      	bne.n	8001bb4 <RCC_GetClocksFreq+0x190>
 8001bb0:	6381      	str	r1, [r0, #56]	; 0x38
 8001bb2:	e015      	b.n	8001be0 <RCC_GetClocksFreq+0x1bc>
 8001bb4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bb6:	f001 0103 	and.w	r1, r1, #3
 8001bba:	2901      	cmp	r1, #1
 8001bbc:	d101      	bne.n	8001bc2 <RCC_GetClocksFreq+0x19e>
 8001bbe:	6382      	str	r2, [r0, #56]	; 0x38
 8001bc0:	e00e      	b.n	8001be0 <RCC_GetClocksFreq+0x1bc>
 8001bc2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bc4:	f001 0103 	and.w	r1, r1, #3
 8001bc8:	2902      	cmp	r1, #2
 8001bca:	d102      	bne.n	8001bd2 <RCC_GetClocksFreq+0x1ae>
 8001bcc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001bd0:	e005      	b.n	8001bde <RCC_GetClocksFreq+0x1ba>
 8001bd2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001bd4:	f003 0303 	and.w	r3, r3, #3
 8001bd8:	2b03      	cmp	r3, #3
 8001bda:	d101      	bne.n	8001be0 <RCC_GetClocksFreq+0x1bc>
 8001bdc:	4b2f      	ldr	r3, [pc, #188]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001bde:	6383      	str	r3, [r0, #56]	; 0x38
 8001be0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001be2:	4b2d      	ldr	r3, [pc, #180]	; (8001c98 <RCC_GetClocksFreq+0x274>)
 8001be4:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001be8:	d102      	bne.n	8001bf0 <RCC_GetClocksFreq+0x1cc>
 8001bea:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001bee:	e018      	b.n	8001c22 <RCC_GetClocksFreq+0x1fe>
 8001bf0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bf2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001bf6:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001bfa:	d101      	bne.n	8001c00 <RCC_GetClocksFreq+0x1dc>
 8001bfc:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001bfe:	e010      	b.n	8001c22 <RCC_GetClocksFreq+0x1fe>
 8001c00:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c02:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001c06:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001c0a:	d102      	bne.n	8001c12 <RCC_GetClocksFreq+0x1ee>
 8001c0c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c10:	e006      	b.n	8001c20 <RCC_GetClocksFreq+0x1fc>
 8001c12:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c14:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001c18:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001c1c:	d101      	bne.n	8001c22 <RCC_GetClocksFreq+0x1fe>
 8001c1e:	4b1f      	ldr	r3, [pc, #124]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001c20:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001c22:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c24:	4b1c      	ldr	r3, [pc, #112]	; (8001c98 <RCC_GetClocksFreq+0x274>)
 8001c26:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001c2a:	d102      	bne.n	8001c32 <RCC_GetClocksFreq+0x20e>
 8001c2c:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001c30:	e018      	b.n	8001c64 <RCC_GetClocksFreq+0x240>
 8001c32:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c34:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c38:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001c3c:	d101      	bne.n	8001c42 <RCC_GetClocksFreq+0x21e>
 8001c3e:	6402      	str	r2, [r0, #64]	; 0x40
 8001c40:	e010      	b.n	8001c64 <RCC_GetClocksFreq+0x240>
 8001c42:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c44:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001c48:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001c4c:	d102      	bne.n	8001c54 <RCC_GetClocksFreq+0x230>
 8001c4e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c52:	e006      	b.n	8001c62 <RCC_GetClocksFreq+0x23e>
 8001c54:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c56:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001c5a:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001c5e:	d101      	bne.n	8001c64 <RCC_GetClocksFreq+0x240>
 8001c60:	4b0e      	ldr	r3, [pc, #56]	; (8001c9c <RCC_GetClocksFreq+0x278>)
 8001c62:	6403      	str	r3, [r0, #64]	; 0x40
 8001c64:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001c66:	4b0c      	ldr	r3, [pc, #48]	; (8001c98 <RCC_GetClocksFreq+0x274>)
 8001c68:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001c6c:	d102      	bne.n	8001c74 <RCC_GetClocksFreq+0x250>
 8001c6e:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001c72:	e023      	b.n	8001cbc <RCC_GetClocksFreq+0x298>
 8001c74:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c76:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001c7a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001c7e:	d101      	bne.n	8001c84 <RCC_GetClocksFreq+0x260>
 8001c80:	6442      	str	r2, [r0, #68]	; 0x44
 8001c82:	e01b      	b.n	8001cbc <RCC_GetClocksFreq+0x298>
 8001c84:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c86:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001c8a:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001c8e:	d10d      	bne.n	8001cac <RCC_GetClocksFreq+0x288>
 8001c90:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c94:	e011      	b.n	8001cba <RCC_GetClocksFreq+0x296>
 8001c96:	bf00      	nop
 8001c98:	40021000 	.word	0x40021000
 8001c9c:	007a1200 	.word	0x007a1200
 8001ca0:	003d0900 	.word	0x003d0900
 8001ca4:	20000020 	.word	0x20000020
 8001ca8:	20000000 	.word	0x20000000
 8001cac:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001cae:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001cb2:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001cb6:	d101      	bne.n	8001cbc <RCC_GetClocksFreq+0x298>
 8001cb8:	4b13      	ldr	r3, [pc, #76]	; (8001d08 <RCC_GetClocksFreq+0x2e4>)
 8001cba:	6443      	str	r3, [r0, #68]	; 0x44
 8001cbc:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001cbe:	4b13      	ldr	r3, [pc, #76]	; (8001d0c <RCC_GetClocksFreq+0x2e8>)
 8001cc0:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001cc4:	d103      	bne.n	8001cce <RCC_GetClocksFreq+0x2aa>
 8001cc6:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001cca:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001cce:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001cd0:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001cd4:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001cd8:	d102      	bne.n	8001ce0 <RCC_GetClocksFreq+0x2bc>
 8001cda:	6482      	str	r2, [r0, #72]	; 0x48
 8001cdc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001ce0:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001ce2:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001ce6:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001cea:	d102      	bne.n	8001cf2 <RCC_GetClocksFreq+0x2ce>
 8001cec:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001cf0:	e006      	b.n	8001d00 <RCC_GetClocksFreq+0x2dc>
 8001cf2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001cf4:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001cf8:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001cfc:	d101      	bne.n	8001d02 <RCC_GetClocksFreq+0x2de>
 8001cfe:	4b02      	ldr	r3, [pc, #8]	; (8001d08 <RCC_GetClocksFreq+0x2e4>)
 8001d00:	6483      	str	r3, [r0, #72]	; 0x48
 8001d02:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001d06:	bf00      	nop
 8001d08:	007a1200 	.word	0x007a1200
 8001d0c:	40021000 	.word	0x40021000

08001d10 <RCC_AHBPeriphClockCmd>:
 8001d10:	bf00      	nop
 8001d12:	bf00      	nop
 8001d14:	4b04      	ldr	r3, [pc, #16]	; (8001d28 <RCC_AHBPeriphClockCmd+0x18>)
 8001d16:	695a      	ldr	r2, [r3, #20]
 8001d18:	b109      	cbz	r1, 8001d1e <RCC_AHBPeriphClockCmd+0xe>
 8001d1a:	4310      	orrs	r0, r2
 8001d1c:	e001      	b.n	8001d22 <RCC_AHBPeriphClockCmd+0x12>
 8001d1e:	ea22 0000 	bic.w	r0, r2, r0
 8001d22:	6158      	str	r0, [r3, #20]
 8001d24:	4770      	bx	lr
 8001d26:	bf00      	nop
 8001d28:	40021000 	.word	0x40021000

08001d2c <RCC_APB2PeriphClockCmd>:
 8001d2c:	bf00      	nop
 8001d2e:	bf00      	nop
 8001d30:	4b04      	ldr	r3, [pc, #16]	; (8001d44 <RCC_APB2PeriphClockCmd+0x18>)
 8001d32:	699a      	ldr	r2, [r3, #24]
 8001d34:	b109      	cbz	r1, 8001d3a <RCC_APB2PeriphClockCmd+0xe>
 8001d36:	4310      	orrs	r0, r2
 8001d38:	e001      	b.n	8001d3e <RCC_APB2PeriphClockCmd+0x12>
 8001d3a:	ea22 0000 	bic.w	r0, r2, r0
 8001d3e:	6198      	str	r0, [r3, #24]
 8001d40:	4770      	bx	lr
 8001d42:	bf00      	nop
 8001d44:	40021000 	.word	0x40021000

08001d48 <RCC_APB1PeriphClockCmd>:
 8001d48:	bf00      	nop
 8001d4a:	bf00      	nop
 8001d4c:	4b04      	ldr	r3, [pc, #16]	; (8001d60 <RCC_APB1PeriphClockCmd+0x18>)
 8001d4e:	69da      	ldr	r2, [r3, #28]
 8001d50:	b109      	cbz	r1, 8001d56 <RCC_APB1PeriphClockCmd+0xe>
 8001d52:	4310      	orrs	r0, r2
 8001d54:	e001      	b.n	8001d5a <RCC_APB1PeriphClockCmd+0x12>
 8001d56:	ea22 0000 	bic.w	r0, r2, r0
 8001d5a:	61d8      	str	r0, [r3, #28]
 8001d5c:	4770      	bx	lr
 8001d5e:	bf00      	nop
 8001d60:	40021000 	.word	0x40021000

08001d64 <TIM_TimeBaseInit>:
 8001d64:	bf00      	nop
 8001d66:	bf00      	nop
 8001d68:	bf00      	nop
 8001d6a:	4a24      	ldr	r2, [pc, #144]	; (8001dfc <TIM_TimeBaseInit+0x98>)
 8001d6c:	8803      	ldrh	r3, [r0, #0]
 8001d6e:	4290      	cmp	r0, r2
 8001d70:	b29b      	uxth	r3, r3
 8001d72:	d012      	beq.n	8001d9a <TIM_TimeBaseInit+0x36>
 8001d74:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001d78:	4290      	cmp	r0, r2
 8001d7a:	d00e      	beq.n	8001d9a <TIM_TimeBaseInit+0x36>
 8001d7c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001d80:	d00b      	beq.n	8001d9a <TIM_TimeBaseInit+0x36>
 8001d82:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001d86:	4290      	cmp	r0, r2
 8001d88:	d007      	beq.n	8001d9a <TIM_TimeBaseInit+0x36>
 8001d8a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001d8e:	4290      	cmp	r0, r2
 8001d90:	d003      	beq.n	8001d9a <TIM_TimeBaseInit+0x36>
 8001d92:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001d96:	4290      	cmp	r0, r2
 8001d98:	d103      	bne.n	8001da2 <TIM_TimeBaseInit+0x3e>
 8001d9a:	884a      	ldrh	r2, [r1, #2]
 8001d9c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001da0:	4313      	orrs	r3, r2
 8001da2:	4a17      	ldr	r2, [pc, #92]	; (8001e00 <TIM_TimeBaseInit+0x9c>)
 8001da4:	4290      	cmp	r0, r2
 8001da6:	d008      	beq.n	8001dba <TIM_TimeBaseInit+0x56>
 8001da8:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001dac:	4290      	cmp	r0, r2
 8001dae:	bf1f      	itttt	ne
 8001db0:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001db4:	890a      	ldrhne	r2, [r1, #8]
 8001db6:	b29b      	uxthne	r3, r3
 8001db8:	4313      	orrne	r3, r2
 8001dba:	8003      	strh	r3, [r0, #0]
 8001dbc:	684b      	ldr	r3, [r1, #4]
 8001dbe:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001dc0:	880b      	ldrh	r3, [r1, #0]
 8001dc2:	8503      	strh	r3, [r0, #40]	; 0x28
 8001dc4:	4b0d      	ldr	r3, [pc, #52]	; (8001dfc <TIM_TimeBaseInit+0x98>)
 8001dc6:	4298      	cmp	r0, r3
 8001dc8:	d013      	beq.n	8001df2 <TIM_TimeBaseInit+0x8e>
 8001dca:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001dce:	4298      	cmp	r0, r3
 8001dd0:	d00f      	beq.n	8001df2 <TIM_TimeBaseInit+0x8e>
 8001dd2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001dd6:	4298      	cmp	r0, r3
 8001dd8:	d00b      	beq.n	8001df2 <TIM_TimeBaseInit+0x8e>
 8001dda:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001dde:	4298      	cmp	r0, r3
 8001de0:	d007      	beq.n	8001df2 <TIM_TimeBaseInit+0x8e>
 8001de2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001de6:	4298      	cmp	r0, r3
 8001de8:	d003      	beq.n	8001df2 <TIM_TimeBaseInit+0x8e>
 8001dea:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001dee:	4298      	cmp	r0, r3
 8001df0:	d101      	bne.n	8001df6 <TIM_TimeBaseInit+0x92>
 8001df2:	894b      	ldrh	r3, [r1, #10]
 8001df4:	8603      	strh	r3, [r0, #48]	; 0x30
 8001df6:	2301      	movs	r3, #1
 8001df8:	6143      	str	r3, [r0, #20]
 8001dfa:	4770      	bx	lr
 8001dfc:	40012c00 	.word	0x40012c00
 8001e00:	40001000 	.word	0x40001000

08001e04 <TIM_Cmd>:
 8001e04:	bf00      	nop
 8001e06:	bf00      	nop
 8001e08:	8803      	ldrh	r3, [r0, #0]
 8001e0a:	b119      	cbz	r1, 8001e14 <TIM_Cmd+0x10>
 8001e0c:	b29b      	uxth	r3, r3
 8001e0e:	f043 0301 	orr.w	r3, r3, #1
 8001e12:	e003      	b.n	8001e1c <TIM_Cmd+0x18>
 8001e14:	f023 0301 	bic.w	r3, r3, #1
 8001e18:	041b      	lsls	r3, r3, #16
 8001e1a:	0c1b      	lsrs	r3, r3, #16
 8001e1c:	8003      	strh	r3, [r0, #0]
 8001e1e:	4770      	bx	lr

08001e20 <TIM_ClearITPendingBit>:
 8001e20:	bf00      	nop
 8001e22:	43c9      	mvns	r1, r1
 8001e24:	b289      	uxth	r1, r1
 8001e26:	6101      	str	r1, [r0, #16]
 8001e28:	4770      	bx	lr
	...

08001e2c <USART_Init>:
 8001e2c:	b530      	push	{r4, r5, lr}
 8001e2e:	4604      	mov	r4, r0
 8001e30:	b099      	sub	sp, #100	; 0x64
 8001e32:	460d      	mov	r5, r1
 8001e34:	bf00      	nop
 8001e36:	bf00      	nop
 8001e38:	bf00      	nop
 8001e3a:	bf00      	nop
 8001e3c:	bf00      	nop
 8001e3e:	bf00      	nop
 8001e40:	bf00      	nop
 8001e42:	6803      	ldr	r3, [r0, #0]
 8001e44:	f023 0301 	bic.w	r3, r3, #1
 8001e48:	6003      	str	r3, [r0, #0]
 8001e4a:	6843      	ldr	r3, [r0, #4]
 8001e4c:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001e50:	688b      	ldr	r3, [r1, #8]
 8001e52:	68c9      	ldr	r1, [r1, #12]
 8001e54:	4313      	orrs	r3, r2
 8001e56:	6043      	str	r3, [r0, #4]
 8001e58:	686a      	ldr	r2, [r5, #4]
 8001e5a:	6803      	ldr	r3, [r0, #0]
 8001e5c:	4311      	orrs	r1, r2
 8001e5e:	692a      	ldr	r2, [r5, #16]
 8001e60:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001e64:	430a      	orrs	r2, r1
 8001e66:	f023 030c 	bic.w	r3, r3, #12
 8001e6a:	4313      	orrs	r3, r2
 8001e6c:	6003      	str	r3, [r0, #0]
 8001e6e:	6883      	ldr	r3, [r0, #8]
 8001e70:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001e74:	696b      	ldr	r3, [r5, #20]
 8001e76:	4313      	orrs	r3, r2
 8001e78:	6083      	str	r3, [r0, #8]
 8001e7a:	a801      	add	r0, sp, #4
 8001e7c:	f7ff fdd2 	bl	8001a24 <RCC_GetClocksFreq>
 8001e80:	4b17      	ldr	r3, [pc, #92]	; (8001ee0 <USART_Init+0xb4>)
 8001e82:	429c      	cmp	r4, r3
 8001e84:	d101      	bne.n	8001e8a <USART_Init+0x5e>
 8001e86:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001e88:	e00e      	b.n	8001ea8 <USART_Init+0x7c>
 8001e8a:	4b16      	ldr	r3, [pc, #88]	; (8001ee4 <USART_Init+0xb8>)
 8001e8c:	429c      	cmp	r4, r3
 8001e8e:	d101      	bne.n	8001e94 <USART_Init+0x68>
 8001e90:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001e92:	e009      	b.n	8001ea8 <USART_Init+0x7c>
 8001e94:	4b14      	ldr	r3, [pc, #80]	; (8001ee8 <USART_Init+0xbc>)
 8001e96:	429c      	cmp	r4, r3
 8001e98:	d101      	bne.n	8001e9e <USART_Init+0x72>
 8001e9a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001e9c:	e004      	b.n	8001ea8 <USART_Init+0x7c>
 8001e9e:	4b13      	ldr	r3, [pc, #76]	; (8001eec <USART_Init+0xc0>)
 8001ea0:	429c      	cmp	r4, r3
 8001ea2:	bf0c      	ite	eq
 8001ea4:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001ea6:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001ea8:	6822      	ldr	r2, [r4, #0]
 8001eaa:	6829      	ldr	r1, [r5, #0]
 8001eac:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001eb0:	bf18      	it	ne
 8001eb2:	005b      	lslne	r3, r3, #1
 8001eb4:	fbb3 f2f1 	udiv	r2, r3, r1
 8001eb8:	fb01 3312 	mls	r3, r1, r2, r3
 8001ebc:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001ec0:	6823      	ldr	r3, [r4, #0]
 8001ec2:	bf28      	it	cs
 8001ec4:	3201      	addcs	r2, #1
 8001ec6:	041b      	lsls	r3, r3, #16
 8001ec8:	bf41      	itttt	mi
 8001eca:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001ece:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001ed2:	4013      	andmi	r3, r2
 8001ed4:	ea41 0203 	orrmi.w	r2, r1, r3
 8001ed8:	b292      	uxth	r2, r2
 8001eda:	81a2      	strh	r2, [r4, #12]
 8001edc:	b019      	add	sp, #100	; 0x64
 8001ede:	bd30      	pop	{r4, r5, pc}
 8001ee0:	40013800 	.word	0x40013800
 8001ee4:	40004400 	.word	0x40004400
 8001ee8:	40004800 	.word	0x40004800
 8001eec:	40004c00 	.word	0x40004c00

08001ef0 <USART_Cmd>:
 8001ef0:	bf00      	nop
 8001ef2:	bf00      	nop
 8001ef4:	6803      	ldr	r3, [r0, #0]
 8001ef6:	b111      	cbz	r1, 8001efe <USART_Cmd+0xe>
 8001ef8:	f043 0301 	orr.w	r3, r3, #1
 8001efc:	e001      	b.n	8001f02 <USART_Cmd+0x12>
 8001efe:	f023 0301 	bic.w	r3, r3, #1
 8001f02:	6003      	str	r3, [r0, #0]
 8001f04:	4770      	bx	lr

08001f06 <USART_ReceiveData>:
 8001f06:	bf00      	nop
 8001f08:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001f0a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001f0e:	4770      	bx	lr

08001f10 <USART_ITConfig>:
 8001f10:	b510      	push	{r4, lr}
 8001f12:	bf00      	nop
 8001f14:	bf00      	nop
 8001f16:	bf00      	nop
 8001f18:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001f1c:	2301      	movs	r3, #1
 8001f1e:	b2c9      	uxtb	r1, r1
 8001f20:	2c02      	cmp	r4, #2
 8001f22:	fa03 f301 	lsl.w	r3, r3, r1
 8001f26:	d101      	bne.n	8001f2c <USART_ITConfig+0x1c>
 8001f28:	3004      	adds	r0, #4
 8001f2a:	e002      	b.n	8001f32 <USART_ITConfig+0x22>
 8001f2c:	2c03      	cmp	r4, #3
 8001f2e:	bf08      	it	eq
 8001f30:	3008      	addeq	r0, #8
 8001f32:	b112      	cbz	r2, 8001f3a <USART_ITConfig+0x2a>
 8001f34:	6802      	ldr	r2, [r0, #0]
 8001f36:	4313      	orrs	r3, r2
 8001f38:	e002      	b.n	8001f40 <USART_ITConfig+0x30>
 8001f3a:	6802      	ldr	r2, [r0, #0]
 8001f3c:	ea22 0303 	bic.w	r3, r2, r3
 8001f40:	6003      	str	r3, [r0, #0]
 8001f42:	bd10      	pop	{r4, pc}

08001f44 <USART_GetITStatus>:
 8001f44:	b510      	push	{r4, lr}
 8001f46:	bf00      	nop
 8001f48:	bf00      	nop
 8001f4a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001f4e:	b2cc      	uxtb	r4, r1
 8001f50:	2301      	movs	r3, #1
 8001f52:	2a01      	cmp	r2, #1
 8001f54:	fa03 f304 	lsl.w	r3, r3, r4
 8001f58:	d101      	bne.n	8001f5e <USART_GetITStatus+0x1a>
 8001f5a:	6802      	ldr	r2, [r0, #0]
 8001f5c:	e003      	b.n	8001f66 <USART_GetITStatus+0x22>
 8001f5e:	2a02      	cmp	r2, #2
 8001f60:	bf0c      	ite	eq
 8001f62:	6842      	ldreq	r2, [r0, #4]
 8001f64:	6882      	ldrne	r2, [r0, #8]
 8001f66:	4013      	ands	r3, r2
 8001f68:	69c2      	ldr	r2, [r0, #28]
 8001f6a:	b13b      	cbz	r3, 8001f7c <USART_GetITStatus+0x38>
 8001f6c:	0c09      	lsrs	r1, r1, #16
 8001f6e:	2301      	movs	r3, #1
 8001f70:	408b      	lsls	r3, r1
 8001f72:	4213      	tst	r3, r2
 8001f74:	bf14      	ite	ne
 8001f76:	2001      	movne	r0, #1
 8001f78:	2000      	moveq	r0, #0
 8001f7a:	bd10      	pop	{r4, pc}
 8001f7c:	4618      	mov	r0, r3
 8001f7e:	bd10      	pop	{r4, pc}

08001f80 <USART_ClearITPendingBit>:
 8001f80:	bf00      	nop
 8001f82:	bf00      	nop
 8001f84:	2301      	movs	r3, #1
 8001f86:	0c09      	lsrs	r1, r1, #16
 8001f88:	408b      	lsls	r3, r1
 8001f8a:	6203      	str	r3, [r0, #32]
 8001f8c:	4770      	bx	lr
	...

08001f90 <SystemInit>:
 8001f90:	4a39      	ldr	r2, [pc, #228]	; (8002078 <SystemInit+0xe8>)
 8001f92:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001f96:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001f9a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001f9e:	4b37      	ldr	r3, [pc, #220]	; (800207c <SystemInit+0xec>)
 8001fa0:	681a      	ldr	r2, [r3, #0]
 8001fa2:	f042 0201 	orr.w	r2, r2, #1
 8001fa6:	601a      	str	r2, [r3, #0]
 8001fa8:	6859      	ldr	r1, [r3, #4]
 8001faa:	4a35      	ldr	r2, [pc, #212]	; (8002080 <SystemInit+0xf0>)
 8001fac:	400a      	ands	r2, r1
 8001fae:	605a      	str	r2, [r3, #4]
 8001fb0:	681a      	ldr	r2, [r3, #0]
 8001fb2:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001fb6:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001fba:	601a      	str	r2, [r3, #0]
 8001fbc:	681a      	ldr	r2, [r3, #0]
 8001fbe:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001fc2:	601a      	str	r2, [r3, #0]
 8001fc4:	685a      	ldr	r2, [r3, #4]
 8001fc6:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001fca:	605a      	str	r2, [r3, #4]
 8001fcc:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001fce:	f022 020f 	bic.w	r2, r2, #15
 8001fd2:	62da      	str	r2, [r3, #44]	; 0x2c
 8001fd4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fd6:	4a2b      	ldr	r2, [pc, #172]	; (8002084 <SystemInit+0xf4>)
 8001fd8:	b082      	sub	sp, #8
 8001fda:	400a      	ands	r2, r1
 8001fdc:	631a      	str	r2, [r3, #48]	; 0x30
 8001fde:	2200      	movs	r2, #0
 8001fe0:	609a      	str	r2, [r3, #8]
 8001fe2:	9200      	str	r2, [sp, #0]
 8001fe4:	9201      	str	r2, [sp, #4]
 8001fe6:	681a      	ldr	r2, [r3, #0]
 8001fe8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001fec:	601a      	str	r2, [r3, #0]
 8001fee:	681a      	ldr	r2, [r3, #0]
 8001ff0:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001ff4:	9201      	str	r2, [sp, #4]
 8001ff6:	9a00      	ldr	r2, [sp, #0]
 8001ff8:	3201      	adds	r2, #1
 8001ffa:	9200      	str	r2, [sp, #0]
 8001ffc:	9a01      	ldr	r2, [sp, #4]
 8001ffe:	b91a      	cbnz	r2, 8002008 <SystemInit+0x78>
 8002000:	9a00      	ldr	r2, [sp, #0]
 8002002:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002006:	d1f2      	bne.n	8001fee <SystemInit+0x5e>
 8002008:	681a      	ldr	r2, [r3, #0]
 800200a:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800200e:	bf18      	it	ne
 8002010:	2201      	movne	r2, #1
 8002012:	9201      	str	r2, [sp, #4]
 8002014:	9a01      	ldr	r2, [sp, #4]
 8002016:	2a01      	cmp	r2, #1
 8002018:	d005      	beq.n	8002026 <SystemInit+0x96>
 800201a:	4b17      	ldr	r3, [pc, #92]	; (8002078 <SystemInit+0xe8>)
 800201c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002020:	609a      	str	r2, [r3, #8]
 8002022:	b002      	add	sp, #8
 8002024:	4770      	bx	lr
 8002026:	4a18      	ldr	r2, [pc, #96]	; (8002088 <SystemInit+0xf8>)
 8002028:	2112      	movs	r1, #18
 800202a:	6011      	str	r1, [r2, #0]
 800202c:	685a      	ldr	r2, [r3, #4]
 800202e:	605a      	str	r2, [r3, #4]
 8002030:	685a      	ldr	r2, [r3, #4]
 8002032:	605a      	str	r2, [r3, #4]
 8002034:	685a      	ldr	r2, [r3, #4]
 8002036:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800203a:	605a      	str	r2, [r3, #4]
 800203c:	685a      	ldr	r2, [r3, #4]
 800203e:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002042:	605a      	str	r2, [r3, #4]
 8002044:	685a      	ldr	r2, [r3, #4]
 8002046:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800204a:	605a      	str	r2, [r3, #4]
 800204c:	681a      	ldr	r2, [r3, #0]
 800204e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002052:	601a      	str	r2, [r3, #0]
 8002054:	6819      	ldr	r1, [r3, #0]
 8002056:	4a09      	ldr	r2, [pc, #36]	; (800207c <SystemInit+0xec>)
 8002058:	0189      	lsls	r1, r1, #6
 800205a:	d5fb      	bpl.n	8002054 <SystemInit+0xc4>
 800205c:	6851      	ldr	r1, [r2, #4]
 800205e:	f021 0103 	bic.w	r1, r1, #3
 8002062:	6051      	str	r1, [r2, #4]
 8002064:	6851      	ldr	r1, [r2, #4]
 8002066:	f041 0102 	orr.w	r1, r1, #2
 800206a:	6051      	str	r1, [r2, #4]
 800206c:	685a      	ldr	r2, [r3, #4]
 800206e:	f002 020c 	and.w	r2, r2, #12
 8002072:	2a08      	cmp	r2, #8
 8002074:	d1fa      	bne.n	800206c <SystemInit+0xdc>
 8002076:	e7d0      	b.n	800201a <SystemInit+0x8a>
 8002078:	e000ed00 	.word	0xe000ed00
 800207c:	40021000 	.word	0x40021000
 8002080:	f87fc00c 	.word	0xf87fc00c
 8002084:	ff00fccc 	.word	0xff00fccc
 8002088:	40022000 	.word	0x40022000

0800208c <core_yield>:
 800208c:	bf00      	nop
 800208e:	4770      	bx	lr

08002090 <sytem_clock_init>:
 8002090:	f7ff bf7e 	b.w	8001f90 <SystemInit>

08002094 <NVIC_Init>:
 8002094:	b510      	push	{r4, lr}
 8002096:	bf00      	nop
 8002098:	bf00      	nop
 800209a:	bf00      	nop
 800209c:	78c2      	ldrb	r2, [r0, #3]
 800209e:	7803      	ldrb	r3, [r0, #0]
 80020a0:	b312      	cbz	r2, 80020e8 <NVIC_Init+0x54>
 80020a2:	4a17      	ldr	r2, [pc, #92]	; (8002100 <NVIC_Init+0x6c>)
 80020a4:	68d1      	ldr	r1, [r2, #12]
 80020a6:	7842      	ldrb	r2, [r0, #1]
 80020a8:	43c9      	mvns	r1, r1
 80020aa:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80020ae:	f1c1 0404 	rsb	r4, r1, #4
 80020b2:	b2e4      	uxtb	r4, r4
 80020b4:	40a2      	lsls	r2, r4
 80020b6:	b2d4      	uxtb	r4, r2
 80020b8:	220f      	movs	r2, #15
 80020ba:	410a      	asrs	r2, r1
 80020bc:	7881      	ldrb	r1, [r0, #2]
 80020be:	400a      	ands	r2, r1
 80020c0:	4322      	orrs	r2, r4
 80020c2:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80020c6:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80020ca:	0112      	lsls	r2, r2, #4
 80020cc:	b2d2      	uxtb	r2, r2
 80020ce:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80020d2:	7803      	ldrb	r3, [r0, #0]
 80020d4:	2201      	movs	r2, #1
 80020d6:	0959      	lsrs	r1, r3, #5
 80020d8:	f003 031f 	and.w	r3, r3, #31
 80020dc:	fa02 f303 	lsl.w	r3, r2, r3
 80020e0:	4a08      	ldr	r2, [pc, #32]	; (8002104 <NVIC_Init+0x70>)
 80020e2:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80020e6:	bd10      	pop	{r4, pc}
 80020e8:	095a      	lsrs	r2, r3, #5
 80020ea:	2101      	movs	r1, #1
 80020ec:	f003 031f 	and.w	r3, r3, #31
 80020f0:	4099      	lsls	r1, r3
 80020f2:	f102 0320 	add.w	r3, r2, #32
 80020f6:	4a03      	ldr	r2, [pc, #12]	; (8002104 <NVIC_Init+0x70>)
 80020f8:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80020fc:	bd10      	pop	{r4, pc}
 80020fe:	bf00      	nop
 8002100:	e000ed00 	.word	0xe000ed00
 8002104:	e000e100 	.word	0xe000e100

08002108 <EXTI_ClearITPendingBit>:
 8002108:	f020 011f 	bic.w	r1, r0, #31
 800210c:	2301      	movs	r3, #1
 800210e:	f000 001f 	and.w	r0, r0, #31
 8002112:	4a02      	ldr	r2, [pc, #8]	; (800211c <EXTI_ClearITPendingBit+0x14>)
 8002114:	4083      	lsls	r3, r0
 8002116:	508b      	str	r3, [r1, r2]
 8002118:	4770      	bx	lr
 800211a:	bf00      	nop
 800211c:	40010414 	.word	0x40010414

08002120 <GPIO_Init>:
 8002120:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002122:	bf00      	nop
 8002124:	bf00      	nop
 8002126:	bf00      	nop
 8002128:	bf00      	nop
 800212a:	2300      	movs	r3, #0
 800212c:	680e      	ldr	r6, [r1, #0]
 800212e:	461c      	mov	r4, r3
 8002130:	2501      	movs	r5, #1
 8002132:	40a5      	lsls	r5, r4
 8002134:	ea05 0e06 	and.w	lr, r5, r6
 8002138:	45ae      	cmp	lr, r5
 800213a:	d12d      	bne.n	8002198 <GPIO_Init+0x78>
 800213c:	790f      	ldrb	r7, [r1, #4]
 800213e:	1e7a      	subs	r2, r7, #1
 8002140:	2a01      	cmp	r2, #1
 8002142:	d817      	bhi.n	8002174 <GPIO_Init+0x54>
 8002144:	bf00      	nop
 8002146:	2203      	movs	r2, #3
 8002148:	6885      	ldr	r5, [r0, #8]
 800214a:	409a      	lsls	r2, r3
 800214c:	ea25 0202 	bic.w	r2, r5, r2
 8002150:	6082      	str	r2, [r0, #8]
 8002152:	794d      	ldrb	r5, [r1, #5]
 8002154:	6882      	ldr	r2, [r0, #8]
 8002156:	409d      	lsls	r5, r3
 8002158:	4315      	orrs	r5, r2
 800215a:	6085      	str	r5, [r0, #8]
 800215c:	bf00      	nop
 800215e:	8882      	ldrh	r2, [r0, #4]
 8002160:	b292      	uxth	r2, r2
 8002162:	ea22 020e 	bic.w	r2, r2, lr
 8002166:	8082      	strh	r2, [r0, #4]
 8002168:	798a      	ldrb	r2, [r1, #6]
 800216a:	8885      	ldrh	r5, [r0, #4]
 800216c:	40a2      	lsls	r2, r4
 800216e:	432a      	orrs	r2, r5
 8002170:	b292      	uxth	r2, r2
 8002172:	8082      	strh	r2, [r0, #4]
 8002174:	2203      	movs	r2, #3
 8002176:	6805      	ldr	r5, [r0, #0]
 8002178:	409a      	lsls	r2, r3
 800217a:	43d2      	mvns	r2, r2
 800217c:	4015      	ands	r5, r2
 800217e:	6005      	str	r5, [r0, #0]
 8002180:	6805      	ldr	r5, [r0, #0]
 8002182:	409f      	lsls	r7, r3
 8002184:	432f      	orrs	r7, r5
 8002186:	6007      	str	r7, [r0, #0]
 8002188:	68c7      	ldr	r7, [r0, #12]
 800218a:	4017      	ands	r7, r2
 800218c:	79ca      	ldrb	r2, [r1, #7]
 800218e:	fa02 f503 	lsl.w	r5, r2, r3
 8002192:	ea47 0205 	orr.w	r2, r7, r5
 8002196:	60c2      	str	r2, [r0, #12]
 8002198:	3401      	adds	r4, #1
 800219a:	2c10      	cmp	r4, #16
 800219c:	f103 0302 	add.w	r3, r3, #2
 80021a0:	d1c6      	bne.n	8002130 <GPIO_Init+0x10>
 80021a2:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021a4 <GPIO_SetBits>:
 80021a4:	bf00      	nop
 80021a6:	bf00      	nop
 80021a8:	6181      	str	r1, [r0, #24]
 80021aa:	4770      	bx	lr

080021ac <GPIO_PinAFConfig>:
 80021ac:	b510      	push	{r4, lr}
 80021ae:	bf00      	nop
 80021b0:	bf00      	nop
 80021b2:	bf00      	nop
 80021b4:	f001 0307 	and.w	r3, r1, #7
 80021b8:	08c9      	lsrs	r1, r1, #3
 80021ba:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80021be:	009b      	lsls	r3, r3, #2
 80021c0:	6a04      	ldr	r4, [r0, #32]
 80021c2:	210f      	movs	r1, #15
 80021c4:	4099      	lsls	r1, r3
 80021c6:	ea24 0101 	bic.w	r1, r4, r1
 80021ca:	6201      	str	r1, [r0, #32]
 80021cc:	6a01      	ldr	r1, [r0, #32]
 80021ce:	409a      	lsls	r2, r3
 80021d0:	430a      	orrs	r2, r1
 80021d2:	6202      	str	r2, [r0, #32]
 80021d4:	bd10      	pop	{r4, pc}

080021d6 <Default_Handler>:
 80021d6:	4668      	mov	r0, sp
 80021d8:	f020 0107 	bic.w	r1, r0, #7
 80021dc:	468d      	mov	sp, r1
 80021de:	b501      	push	{r0, lr}
 80021e0:	bf00      	nop
 80021e2:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80021e6:	4685      	mov	sp, r0
 80021e8:	4770      	bx	lr

080021ea <HardFault_Handler>:
 80021ea:	bf00      	nop
 80021ec:	e7fd      	b.n	80021ea <HardFault_Handler>
	...

080021f0 <_reset_init>:
 80021f0:	490e      	ldr	r1, [pc, #56]	; (800222c <_reset_init+0x3c>)
 80021f2:	4b0f      	ldr	r3, [pc, #60]	; (8002230 <_reset_init+0x40>)
 80021f4:	1a5b      	subs	r3, r3, r1
 80021f6:	109b      	asrs	r3, r3, #2
 80021f8:	2200      	movs	r2, #0
 80021fa:	429a      	cmp	r2, r3
 80021fc:	d006      	beq.n	800220c <_reset_init+0x1c>
 80021fe:	480d      	ldr	r0, [pc, #52]	; (8002234 <_reset_init+0x44>)
 8002200:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002204:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002208:	3201      	adds	r2, #1
 800220a:	e7f6      	b.n	80021fa <_reset_init+0xa>
 800220c:	4a0a      	ldr	r2, [pc, #40]	; (8002238 <_reset_init+0x48>)
 800220e:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002212:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002216:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800221a:	f502 720c 	add.w	r2, r2, #560	; 0x230
 800221e:	6853      	ldr	r3, [r2, #4]
 8002220:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002224:	6053      	str	r3, [r2, #4]
 8002226:	f7ff bbbf 	b.w	80019a8 <main>
 800222a:	bf00      	nop
 800222c:	20000000 	.word	0x20000000
 8002230:	20000030 	.word	0x20000030
 8002234:	08002350 	.word	0x08002350
 8002238:	e000ed00 	.word	0xe000ed00

0800223c <scheduler>:
 800223c:	b570      	push	{r4, r5, r6, lr}
 800223e:	2200      	movs	r2, #0
 8002240:	4611      	mov	r1, r2
 8002242:	4b15      	ldr	r3, [pc, #84]	; (8002298 <scheduler+0x5c>)
 8002244:	200c      	movs	r0, #12
 8002246:	fb00 f401 	mul.w	r4, r0, r1
 800224a:	191e      	adds	r6, r3, r4
 800224c:	6875      	ldr	r5, [r6, #4]
 800224e:	f015 0f02 	tst.w	r5, #2
 8002252:	461d      	mov	r5, r3
 8002254:	d10a      	bne.n	800226c <scheduler+0x30>
 8002256:	6876      	ldr	r6, [r6, #4]
 8002258:	07f6      	lsls	r6, r6, #31
 800225a:	d507      	bpl.n	800226c <scheduler+0x30>
 800225c:	4350      	muls	r0, r2
 800225e:	5b1c      	ldrh	r4, [r3, r4]
 8002260:	5a18      	ldrh	r0, [r3, r0]
 8002262:	b2a4      	uxth	r4, r4
 8002264:	b280      	uxth	r0, r0
 8002266:	4284      	cmp	r4, r0
 8002268:	bf38      	it	cc
 800226a:	460a      	movcc	r2, r1
 800226c:	200c      	movs	r0, #12
 800226e:	4348      	muls	r0, r1
 8002270:	5a1c      	ldrh	r4, [r3, r0]
 8002272:	b2a4      	uxth	r4, r4
 8002274:	b11c      	cbz	r4, 800227e <scheduler+0x42>
 8002276:	5a1c      	ldrh	r4, [r3, r0]
 8002278:	3c01      	subs	r4, #1
 800227a:	b2a4      	uxth	r4, r4
 800227c:	521c      	strh	r4, [r3, r0]
 800227e:	3101      	adds	r1, #1
 8002280:	2906      	cmp	r1, #6
 8002282:	d1de      	bne.n	8002242 <scheduler+0x6>
 8002284:	230c      	movs	r3, #12
 8002286:	4353      	muls	r3, r2
 8002288:	18e9      	adds	r1, r5, r3
 800228a:	8849      	ldrh	r1, [r1, #2]
 800228c:	b289      	uxth	r1, r1
 800228e:	52e9      	strh	r1, [r5, r3]
 8002290:	4b02      	ldr	r3, [pc, #8]	; (800229c <scheduler+0x60>)
 8002292:	601a      	str	r2, [r3, #0]
 8002294:	bd70      	pop	{r4, r5, r6, pc}
 8002296:	bf00      	nop
 8002298:	2000037c 	.word	0x2000037c
 800229c:	200003c4 	.word	0x200003c4

080022a0 <SysTick_Handler>:
 80022a0:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80022a4:	f3ef 8308 	mrs	r3, MSP
 80022a8:	4c0d      	ldr	r4, [pc, #52]	; (80022e0 <SysTick_Handler+0x40>)
 80022aa:	4d0e      	ldr	r5, [pc, #56]	; (80022e4 <SysTick_Handler+0x44>)
 80022ac:	6822      	ldr	r2, [r4, #0]
 80022ae:	3201      	adds	r2, #1
 80022b0:	bf1d      	ittte	ne
 80022b2:	6822      	ldrne	r2, [r4, #0]
 80022b4:	210c      	movne	r1, #12
 80022b6:	fb01 5202 	mlane	r2, r1, r2, r5
 80022ba:	2300      	moveq	r3, #0
 80022bc:	bf14      	ite	ne
 80022be:	6093      	strne	r3, [r2, #8]
 80022c0:	6023      	streq	r3, [r4, #0]
 80022c2:	f7ff ffbb 	bl	800223c <scheduler>
 80022c6:	6822      	ldr	r2, [r4, #0]
 80022c8:	230c      	movs	r3, #12
 80022ca:	fb03 5302 	mla	r3, r3, r2, r5
 80022ce:	689a      	ldr	r2, [r3, #8]
 80022d0:	f06f 0306 	mvn.w	r3, #6
 80022d4:	469e      	mov	lr, r3
 80022d6:	f382 8808 	msr	MSP, r2
 80022da:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80022de:	4770      	bx	lr
 80022e0:	200003c4 	.word	0x200003c4
 80022e4:	2000037c 	.word	0x2000037c

080022e8 <_init>:
 80022e8:	e1a0c00d 	mov	ip, sp
 80022ec:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80022f0:	e24cb004 	sub	fp, ip, #4
 80022f4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80022f8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80022fc:	e12fff1e 	bx	lr

08002300 <_fini>:
 8002300:	e1a0c00d 	mov	ip, sp
 8002304:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002308:	e24cb004 	sub	fp, ip, #4
 800230c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002310:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002314:	e12fff1e 	bx	lr
 8002318:	61646f6b 	.word	0x61646f6b
 800231c:	6920616d 	.word	0x6920616d
 8002320:	2074696e 	.word	0x2074696e
 8002324:	25206925 	.word	0x25206925
 8002328:	203a2069 	.word	0x203a2069
 800232c:	4f5b2000 	.word	0x4f5b2000
 8002330:	000a5d4b 	.word	0x000a5d4b
 8002334:	41465b20 	.word	0x41465b20
 8002338:	44454c49 	.word	0x44454c49
 800233c:	000a0a5d 	.word	0x000a0a5d
 8002340:	656c6469 	.word	0x656c6469
 8002344:	0a752520 	.word	0x0a752520
 8002348:	00000000 	.word	0x00000000

0800234c <__EH_FRAME_BEGIN__>:
 800234c:	00000000                                ....
