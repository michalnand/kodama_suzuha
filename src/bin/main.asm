
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f000 fce8 	bl	8000b60 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f000 fe63 	bl	8000e68 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 fdce 	bl	8000d50 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fcb7 	bl	8000b34 <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f504 70b8 	add.w	r0, r4, #368	; 0x170
 80001d6:	f000 fa59 	bl	800068c <_ZN6CMotor10motor_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 4043 	sublt.w	r0, r0, #49920	; 0xc300
 80001e2:	3850      	sublt	r0, #80	; 0x50
 80001e4:	bd10      	pop	{r4, pc}
 80001e6:	bf00      	nop
 80001e8:	200001f8 	.word	0x200001f8

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
 8000202:	f000 ff56 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f000 ff51 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f000 ff4c 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002dcc 	.word	0x08002dcc
 8000228:	08002de1 	.word	0x08002de1
 800022c:	08002de8 	.word	0x08002de8

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	f500 70b8 	add.w	r0, r0, #368	; 0x170
 8000234:	f000 b9b1 	b.w	800059a <_ZN6CMotor11motor_sleepEv>

08000238 <_ZN7CKodama6wakeupEv>:
 8000238:	b510      	push	{r4, lr}
 800023a:	2100      	movs	r1, #0
 800023c:	f500 74b8 	add.w	r4, r0, #368	; 0x170
 8000240:	4620      	mov	r0, r4
 8000242:	460a      	mov	r2, r1
 8000244:	f000 fa1c 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8000248:	4620      	mov	r0, r4
 800024a:	2101      	movs	r1, #1
 800024c:	2200      	movs	r2, #0
 800024e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000252:	f000 ba15 	b.w	8000680 <_ZN6CMotor9set_motorEml>

08000256 <_ZN7CKodama6set_dtEl>:
 8000256:	f8c0 1178 	str.w	r1, [r0, #376]	; 0x178
 800025a:	4770      	bx	lr

0800025c <_ZN7CKodama12rotate_robotEllPFlvE>:
 800025c:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000260:	f500 7698 	add.w	r6, r0, #304	; 0x130
 8000264:	4607      	mov	r7, r0
 8000266:	4630      	mov	r0, r6
 8000268:	460c      	mov	r4, r1
 800026a:	4698      	mov	r8, r3
 800026c:	4693      	mov	fp, r2
 800026e:	f000 ff85 	bl	800117c <_ZN4CIMU8imu_readEv>
 8000272:	4630      	mov	r0, r6
 8000274:	f001 f8a6 	bl	80013c4 <_ZN4CIMU14get_imu_resultEv>
 8000278:	6883      	ldr	r3, [r0, #8]
 800027a:	eb04 0a03 	add.w	sl, r4, r3
 800027e:	2400      	movs	r4, #0
 8000280:	4823      	ldr	r0, [pc, #140]	; (8000310 <_ZN7CKodama12rotate_robotEllPFlvE+0xb4>)
 8000282:	210a      	movs	r1, #10
 8000284:	f000 fdbc 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8000288:	f507 75b8 	add.w	r5, r7, #368	; 0x170
 800028c:	f1b8 0f00 	cmp.w	r8, #0
 8000290:	d112      	bne.n	80002b8 <_ZN7CKodama12rotate_robotEllPFlvE+0x5c>
 8000292:	4630      	mov	r0, r6
 8000294:	f000 ff72 	bl	800117c <_ZN4CIMU8imu_readEv>
 8000298:	4630      	mov	r0, r6
 800029a:	f001 f893 	bl	80013c4 <_ZN4CIMU14get_imu_resultEv>
 800029e:	6883      	ldr	r3, [r0, #8]
 80002a0:	ebc3 090a 	rsb	r9, r3, sl
 80002a4:	f1b9 0f00 	cmp.w	r9, #0
 80002a8:	bfd4      	ite	le
 80002aa:	f04f 33ff 	movle.w	r3, #4294967295
 80002ae:	2301      	movgt	r3, #1
 80002b0:	455c      	cmp	r4, fp
 80002b2:	da15      	bge.n	80002e0 <_ZN7CKodama12rotate_robotEllPFlvE+0x84>
 80002b4:	3401      	adds	r4, #1
 80002b6:	e013      	b.n	80002e0 <_ZN7CKodama12rotate_robotEllPFlvE+0x84>
 80002b8:	47c0      	blx	r8
 80002ba:	2800      	cmp	r0, #0
 80002bc:	d0e9      	beq.n	8000292 <_ZN7CKodama12rotate_robotEllPFlvE+0x36>
 80002be:	2100      	movs	r1, #0
 80002c0:	4628      	mov	r0, r5
 80002c2:	460a      	mov	r2, r1
 80002c4:	f000 f9dc 	bl	8000680 <_ZN6CMotor9set_motorEml>
 80002c8:	4628      	mov	r0, r5
 80002ca:	2101      	movs	r1, #1
 80002cc:	2200      	movs	r2, #0
 80002ce:	f000 f9d7 	bl	8000680 <_ZN6CMotor9set_motorEml>
 80002d2:	480f      	ldr	r0, [pc, #60]	; (8000310 <_ZN7CKodama12rotate_robotEllPFlvE+0xb4>)
 80002d4:	2114      	movs	r1, #20
 80002d6:	b003      	add	sp, #12
 80002d8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80002dc:	f000 bd90 	b.w	8000e00 <_ZN6CTimer8delay_msEm>
 80002e0:	fb03 f204 	mul.w	r2, r3, r4
 80002e4:	4628      	mov	r0, r5
 80002e6:	2100      	movs	r1, #0
 80002e8:	9301      	str	r3, [sp, #4]
 80002ea:	f000 f9c9 	bl	8000680 <_ZN6CMotor9set_motorEml>
 80002ee:	9b01      	ldr	r3, [sp, #4]
 80002f0:	4262      	negs	r2, r4
 80002f2:	4628      	mov	r0, r5
 80002f4:	2101      	movs	r1, #1
 80002f6:	435a      	muls	r2, r3
 80002f8:	f1b9 0f00 	cmp.w	r9, #0
 80002fc:	bfb8      	it	lt
 80002fe:	f1c9 0900 	rsblt	r9, r9, #0
 8000302:	f000 f9bd 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8000306:	f1b9 0f31 	cmp.w	r9, #49	; 0x31
 800030a:	dcb9      	bgt.n	8000280 <_ZN7CKodama12rotate_robotEllPFlvE+0x24>
 800030c:	e7d7      	b.n	80002be <_ZN7CKodama12rotate_robotEllPFlvE+0x62>
 800030e:	bf00      	nop
 8000310:	200001f8 	.word	0x200001f8

08000314 <_ZN4CPID4initEffff>:
 8000314:	eef0 7a00 	vmov.f32	s15, #0
 8000318:	ee70 0a20 	vadd.f32	s1, s0, s1
 800031c:	ee91 0a67 	vfnma.f32	s0, s2, s15
 8000320:	2300      	movs	r3, #0
 8000322:	6003      	str	r3, [r0, #0]
 8000324:	ee70 0a81 	vadd.f32	s1, s1, s2
 8000328:	6043      	str	r3, [r0, #4]
 800032a:	6083      	str	r3, [r0, #8]
 800032c:	edc0 0a03 	vstr	s1, [r0, #12]
 8000330:	ed80 0a04 	vstr	s0, [r0, #16]
 8000334:	ed80 1a05 	vstr	s2, [r0, #20]
 8000338:	6183      	str	r3, [r0, #24]
 800033a:	edc0 1a07 	vstr	s3, [r0, #28]
 800033e:	4770      	bx	lr

08000340 <_ZN4CPIDC1Effff>:
 8000340:	b510      	push	{r4, lr}
 8000342:	4604      	mov	r4, r0
 8000344:	f7ff ffe6 	bl	8000314 <_ZN4CPID4initEffff>
 8000348:	4620      	mov	r0, r4
 800034a:	bd10      	pop	{r4, pc}

0800034c <_ZN4CPID7processEf>:
 800034c:	edd0 7a00 	vldr	s15, [r0]
 8000350:	edd0 6a04 	vldr	s13, [r0, #16]
 8000354:	ed90 7a01 	vldr	s14, [r0, #4]
 8000358:	edc0 7a01 	vstr	s15, [r0, #4]
 800035c:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8000360:	edd0 6a03 	vldr	s13, [r0, #12]
 8000364:	ed80 7a02 	vstr	s14, [r0, #8]
 8000368:	eee6 7a80 	vfma.f32	s15, s13, s0
 800036c:	edd0 6a05 	vldr	s13, [r0, #20]
 8000370:	ed80 0a00 	vstr	s0, [r0]
 8000374:	eee6 7a87 	vfma.f32	s15, s13, s14
 8000378:	ed90 7a06 	vldr	s14, [r0, #24]
 800037c:	ee77 7a87 	vadd.f32	s15, s15, s14
 8000380:	ed90 7a07 	vldr	s14, [r0, #28]
 8000384:	edc0 7a06 	vstr	s15, [r0, #24]
 8000388:	eef4 7ac7 	vcmpe.f32	s15, s14
 800038c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000390:	bfc8      	it	gt
 8000392:	ed80 7a06 	vstrgt	s14, [r0, #24]
 8000396:	edd0 7a06 	vldr	s15, [r0, #24]
 800039a:	eeb1 7a47 	vneg.f32	s14, s14
 800039e:	eef4 7ac7 	vcmpe.f32	s15, s14
 80003a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003a6:	bf48      	it	mi
 80003a8:	ed80 7a06 	vstrmi	s14, [r0, #24]
 80003ac:	ed90 0a06 	vldr	s0, [r0, #24]
 80003b0:	4770      	bx	lr

080003b2 <_ZN5CMath3absEf>:
 80003b2:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 80003b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003ba:	bf48      	it	mi
 80003bc:	eeb1 0a40 	vnegmi.f32	s0, s0
 80003c0:	4770      	bx	lr
	...

080003c4 <_ZN5CMath4randEv>:
 80003c4:	6802      	ldr	r2, [r0, #0]
 80003c6:	490b      	ldr	r1, [pc, #44]	; (80003f4 <_ZN5CMath4randEv+0x30>)
 80003c8:	f243 0339 	movw	r3, #12345	; 0x3039
 80003cc:	fb01 3302 	mla	r3, r1, r2, r3
 80003d0:	6841      	ldr	r1, [r0, #4]
 80003d2:	6003      	str	r3, [r0, #0]
 80003d4:	f341 0200 	sbfx	r2, r1, #0, #1
 80003d8:	f022 523f 	bic.w	r2, r2, #801112064	; 0x2fc00000
 80003dc:	f422 127f 	bic.w	r2, r2, #4177920	; 0x3fc000
 80003e0:	f422 527f 	bic.w	r2, r2, #16320	; 0x3fc0
 80003e4:	f022 023e 	bic.w	r2, r2, #62	; 0x3e
 80003e8:	ea82 0251 	eor.w	r2, r2, r1, lsr #1
 80003ec:	6042      	str	r2, [r0, #4]
 80003ee:	ea82 0003 	eor.w	r0, r2, r3
 80003f2:	4770      	bx	lr
 80003f4:	41c64e6d 	.word	0x41c64e6d

080003f8 <_ZN5CMath3rndEv>:
 80003f8:	b508      	push	{r3, lr}
 80003fa:	f7ff ffe3 	bl	80003c4 <_ZN5CMath4randEv>
 80003fe:	4b09      	ldr	r3, [pc, #36]	; (8000424 <_ZN5CMath3rndEv+0x2c>)
 8000400:	fbb0 f2f3 	udiv	r2, r0, r3
 8000404:	fb02 0013 	mls	r0, r2, r3, r0
 8000408:	ee07 0a90 	vmov	s15, r0
 800040c:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
 8000410:	eddf 7a05 	vldr	s15, [pc, #20]	; 8000428 <_ZN5CMath3rndEv+0x30>
 8000414:	ee80 0a27 	vdiv.f32	s0, s0, s15
 8000418:	eef7 7a00 	vmov.f32	s15, #112	; 0x70
 800041c:	ee30 0a67 	vsub.f32	s0, s0, s15
 8000420:	bd08      	pop	{r3, pc}
 8000422:	bf00      	nop
 8000424:	001e8480 	.word	0x001e8480
 8000428:	49742400 	.word	0x49742400

0800042c <_ZN13CLinePositionC1Ev>:
 800042c:	2300      	movs	r3, #0
 800042e:	18c1      	adds	r1, r0, r3
 8000430:	3304      	adds	r3, #4
 8000432:	2200      	movs	r2, #0
 8000434:	2b24      	cmp	r3, #36	; 0x24
 8000436:	608a      	str	r2, [r1, #8]
 8000438:	d1f9      	bne.n	800042e <_ZN13CLinePositionC1Ev+0x2>
 800043a:	2300      	movs	r3, #0
 800043c:	6042      	str	r2, [r0, #4]
 800043e:	7003      	strb	r3, [r0, #0]
 8000440:	4770      	bx	lr
	...

08000444 <_ZN13CLinePosition7processEP10sRGBResult>:
 8000444:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000448:	2300      	movs	r3, #0
 800044a:	ed2d 8b02 	vpush	{d8}
 800044e:	4605      	mov	r5, r0
 8000450:	460c      	mov	r4, r1
 8000452:	7003      	strb	r3, [r0, #0]
 8000454:	461a      	mov	r2, r3
 8000456:	eb04 0042 	add.w	r0, r4, r2, lsl #1
 800045a:	eb04 0143 	add.w	r1, r4, r3, lsl #1
 800045e:	f9b0 0036 	ldrsh.w	r0, [r0, #54]	; 0x36
 8000462:	f9b1 1036 	ldrsh.w	r1, [r1, #54]	; 0x36
 8000466:	4288      	cmp	r0, r1
 8000468:	bfb8      	it	lt
 800046a:	4613      	movlt	r3, r2
 800046c:	3201      	adds	r2, #1
 800046e:	2a09      	cmp	r2, #9
 8000470:	d1f1      	bne.n	8000456 <_ZN13CLinePosition7processEP10sRGBResult+0x12>
 8000472:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 8000476:	eddf 7a3d 	vldr	s15, [pc, #244]	; 800056c <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 800047a:	f9b3 3036 	ldrsh.w	r3, [r3, #54]	; 0x36
 800047e:	ee07 3a10 	vmov	s14, r3
 8000482:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000486:	eef0 8a67 	vmov.f32	s17, s15
 800048a:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800048e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000492:	d566      	bpl.n	8000562 <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 8000494:	f105 0808 	add.w	r8, r5, #8
 8000498:	ed9f 8a35 	vldr	s16, [pc, #212]	; 8000570 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>
 800049c:	4647      	mov	r7, r8
 800049e:	2600      	movs	r6, #0
 80004a0:	19a3      	adds	r3, r4, r6
 80004a2:	4834      	ldr	r0, [pc, #208]	; (8000574 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 80004a4:	f9b3 3036 	ldrsh.w	r3, [r3, #54]	; 0x36
 80004a8:	425b      	negs	r3, r3
 80004aa:	ee07 3a90 	vmov	s15, r3
 80004ae:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
 80004b2:	eca7 0a01 	vstmia	r7!, {s0}
 80004b6:	f7ff ff7c 	bl	80003b2 <_ZN5CMath3absEf>
 80004ba:	eeb4 8ac0 	vcmpe.f32	s16, s0
 80004be:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80004c2:	d506      	bpl.n	80004d2 <_ZN13CLinePosition7processEP10sRGBResult+0x8e>
 80004c4:	482b      	ldr	r0, [pc, #172]	; (8000574 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 80004c6:	ed17 0a01 	vldr	s0, [r7, #-4]
 80004ca:	f7ff ff72 	bl	80003b2 <_ZN5CMath3absEf>
 80004ce:	eeb0 8a40 	vmov.f32	s16, s0
 80004d2:	3602      	adds	r6, #2
 80004d4:	2e12      	cmp	r6, #18
 80004d6:	d1e3      	bne.n	80004a0 <_ZN13CLinePosition7processEP10sRGBResult+0x5c>
 80004d8:	4642      	mov	r2, r8
 80004da:	2309      	movs	r3, #9
 80004dc:	edd2 7a00 	vldr	s15, [r2]
 80004e0:	eec7 7a88 	vdiv.f32	s15, s15, s16
 80004e4:	3b01      	subs	r3, #1
 80004e6:	ece2 7a01 	vstmia	r2!, {s15}
 80004ea:	d1f7      	bne.n	80004dc <_ZN13CLinePosition7processEP10sRGBResult+0x98>
 80004ec:	2301      	movs	r3, #1
 80004ee:	702b      	strb	r3, [r5, #0]
 80004f0:	f9b4 3036 	ldrsh.w	r3, [r4, #54]	; 0x36
 80004f4:	eddf 7a1d 	vldr	s15, [pc, #116]	; 800056c <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 80004f8:	ee07 3a10 	vmov	s14, r3
 80004fc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000500:	eeb4 7ae8 	vcmpe.f32	s14, s17
 8000504:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000508:	d501      	bpl.n	800050e <_ZN13CLinePosition7processEP10sRGBResult+0xca>
 800050a:	4b1b      	ldr	r3, [pc, #108]	; (8000578 <_ZN13CLinePosition7processEP10sRGBResult+0x134>)
 800050c:	e028      	b.n	8000560 <_ZN13CLinePosition7processEP10sRGBResult+0x11c>
 800050e:	f9b4 303c 	ldrsh.w	r3, [r4, #60]	; 0x3c
 8000512:	ee07 3a10 	vmov	s14, r3
 8000516:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800051a:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800051e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000522:	d502      	bpl.n	800052a <_ZN13CLinePosition7processEP10sRGBResult+0xe6>
 8000524:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000528:	e01a      	b.n	8000560 <_ZN13CLinePosition7processEP10sRGBResult+0x11c>
 800052a:	f9b4 3038 	ldrsh.w	r3, [r4, #56]	; 0x38
 800052e:	ee07 3a10 	vmov	s14, r3
 8000532:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000536:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800053a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800053e:	d502      	bpl.n	8000546 <_ZN13CLinePosition7processEP10sRGBResult+0x102>
 8000540:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8000544:	e00c      	b.n	8000560 <_ZN13CLinePosition7processEP10sRGBResult+0x11c>
 8000546:	f9b4 403a 	ldrsh.w	r4, [r4, #58]	; 0x3a
 800054a:	ee07 4a10 	vmov	s14, r4
 800054e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000552:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000556:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800055a:	d502      	bpl.n	8000562 <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 800055c:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8000560:	606b      	str	r3, [r5, #4]
 8000562:	ecbd 8b02 	vpop	{d8}
 8000566:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800056a:	bf00      	nop
 800056c:	c2a00000 	.word	0xc2a00000
 8000570:	38d1b717 	.word	0x38d1b717
 8000574:	200001bc 	.word	0x200001bc
 8000578:	bf800000 	.word	0xbf800000

0800057c <_ZN13CLinePosition7on_lineEv>:
 800057c:	7800      	ldrb	r0, [r0, #0]
 800057e:	4770      	bx	lr

08000580 <_ZN13CLinePosition17get_line_positionEv>:
 8000580:	ed90 0a01 	vldr	s0, [r0, #4]
 8000584:	4770      	bx	lr

08000586 <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE>:
 8000586:	b510      	push	{r4, lr}
 8000588:	2300      	movs	r3, #0
 800058a:	18c2      	adds	r2, r0, r3
 800058c:	6894      	ldr	r4, [r2, #8]
 800058e:	18ca      	adds	r2, r1, r3
 8000590:	3304      	adds	r3, #4
 8000592:	2b24      	cmp	r3, #36	; 0x24
 8000594:	6014      	str	r4, [r2, #0]
 8000596:	d1f8      	bne.n	800058a <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE+0x4>
 8000598:	bd10      	pop	{r4, pc}

0800059a <_ZN6CMotor11motor_sleepEv>:
 800059a:	4770      	bx	lr

0800059c <_ZN6CMotor7pwm_setEmm>:
 800059c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80005a0:	b086      	sub	sp, #24
 80005a2:	2370      	movs	r3, #112	; 0x70
 80005a4:	9301      	str	r3, [sp, #4]
 80005a6:	2301      	movs	r3, #1
 80005a8:	f8ad 3008 	strh.w	r3, [sp, #8]
 80005ac:	2304      	movs	r3, #4
 80005ae:	f8ad 300a 	strh.w	r3, [sp, #10]
 80005b2:	4f17      	ldr	r7, [pc, #92]	; (8000610 <_ZN6CMotor7pwm_setEmm+0x74>)
 80005b4:	4c17      	ldr	r4, [pc, #92]	; (8000614 <_ZN6CMotor7pwm_setEmm+0x78>)
 80005b6:	2302      	movs	r3, #2
 80005b8:	f8ad 3010 	strh.w	r3, [sp, #16]
 80005bc:	2300      	movs	r3, #0
 80005be:	f8ad 3012 	strh.w	r3, [sp, #18]
 80005c2:	f8ad 3016 	strh.w	r3, [sp, #22]
 80005c6:	683b      	ldr	r3, [r7, #0]
 80005c8:	f242 7610 	movw	r6, #10000	; 0x2710
 80005cc:	fbb3 f3f6 	udiv	r3, r3, r6
 80005d0:	3b02      	subs	r3, #2
 80005d2:	4359      	muls	r1, r3
 80005d4:	2564      	movs	r5, #100	; 0x64
 80005d6:	fbb1 f3f5 	udiv	r3, r1, r5
 80005da:	4620      	mov	r0, r4
 80005dc:	a901      	add	r1, sp, #4
 80005de:	4690      	mov	r8, r2
 80005e0:	f44f 7280 	mov.w	r2, #256	; 0x100
 80005e4:	f8ad 2014 	strh.w	r2, [sp, #20]
 80005e8:	9303      	str	r3, [sp, #12]
 80005ea:	f002 faa9 	bl	8002b40 <TIM_OC1Init>
 80005ee:	683b      	ldr	r3, [r7, #0]
 80005f0:	fbb3 f6f6 	udiv	r6, r3, r6
 80005f4:	3e02      	subs	r6, #2
 80005f6:	fb06 f808 	mul.w	r8, r6, r8
 80005fa:	fbb8 f5f5 	udiv	r5, r8, r5
 80005fe:	4620      	mov	r0, r4
 8000600:	a901      	add	r1, sp, #4
 8000602:	9503      	str	r5, [sp, #12]
 8000604:	f002 fae2 	bl	8002bcc <TIM_OC2Init>
 8000608:	b006      	add	sp, #24
 800060a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800060e:	bf00      	nop
 8000610:	20000000 	.word	0x20000000
 8000614:	40012c00 	.word	0x40012c00

08000618 <_ZN6CMotor13motor_refreshEv>:
 8000618:	6802      	ldr	r2, [r0, #0]
 800061a:	6841      	ldr	r1, [r0, #4]
 800061c:	4b17      	ldr	r3, [pc, #92]	; (800067c <_ZN6CMotor13motor_refreshEv+0x64>)
 800061e:	2a00      	cmp	r2, #0
 8000620:	b510      	push	{r4, lr}
 8000622:	f04f 0410 	mov.w	r4, #16
 8000626:	d103      	bne.n	8000630 <_ZN6CMotor13motor_refreshEv+0x18>
 8000628:	851c      	strh	r4, [r3, #40]	; 0x28
 800062a:	2264      	movs	r2, #100	; 0x64
 800062c:	851c      	strh	r4, [r3, #40]	; 0x28
 800062e:	e006      	b.n	800063e <_ZN6CMotor13motor_refreshEv+0x26>
 8000630:	dd02      	ble.n	8000638 <_ZN6CMotor13motor_refreshEv+0x20>
 8000632:	851c      	strh	r4, [r3, #40]	; 0x28
 8000634:	619c      	str	r4, [r3, #24]
 8000636:	e002      	b.n	800063e <_ZN6CMotor13motor_refreshEv+0x26>
 8000638:	619c      	str	r4, [r3, #24]
 800063a:	4252      	negs	r2, r2
 800063c:	851c      	strh	r4, [r3, #40]	; 0x28
 800063e:	2900      	cmp	r1, #0
 8000640:	f04f 0410 	mov.w	r4, #16
 8000644:	d103      	bne.n	800064e <_ZN6CMotor13motor_refreshEv+0x36>
 8000646:	851c      	strh	r4, [r3, #40]	; 0x28
 8000648:	2164      	movs	r1, #100	; 0x64
 800064a:	851c      	strh	r4, [r3, #40]	; 0x28
 800064c:	e007      	b.n	800065e <_ZN6CMotor13motor_refreshEv+0x46>
 800064e:	4b0b      	ldr	r3, [pc, #44]	; (800067c <_ZN6CMotor13motor_refreshEv+0x64>)
 8000650:	dd02      	ble.n	8000658 <_ZN6CMotor13motor_refreshEv+0x40>
 8000652:	851c      	strh	r4, [r3, #40]	; 0x28
 8000654:	619c      	str	r4, [r3, #24]
 8000656:	e002      	b.n	800065e <_ZN6CMotor13motor_refreshEv+0x46>
 8000658:	619c      	str	r4, [r3, #24]
 800065a:	4249      	negs	r1, r1
 800065c:	851c      	strh	r4, [r3, #40]	; 0x28
 800065e:	2964      	cmp	r1, #100	; 0x64
 8000660:	bfa8      	it	ge
 8000662:	2164      	movge	r1, #100	; 0x64
 8000664:	2a64      	cmp	r2, #100	; 0x64
 8000666:	bfa8      	it	ge
 8000668:	2264      	movge	r2, #100	; 0x64
 800066a:	f1c1 0164 	rsb	r1, r1, #100	; 0x64
 800066e:	f1c2 0264 	rsb	r2, r2, #100	; 0x64
 8000672:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000676:	f7ff bf91 	b.w	800059c <_ZN6CMotor7pwm_setEmm>
 800067a:	bf00      	nop
 800067c:	48000400 	.word	0x48000400

08000680 <_ZN6CMotor9set_motorEml>:
 8000680:	2901      	cmp	r1, #1
 8000682:	bf98      	it	ls
 8000684:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000688:	f7ff bfc6 	b.w	8000618 <_ZN6CMotor13motor_refreshEv>

0800068c <_ZN6CMotor10motor_initEv>:
 800068c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8000690:	4d47      	ldr	r5, [pc, #284]	; (80007b0 <_ZN6CMotor10motor_initEv+0x124>)
 8000692:	b087      	sub	sp, #28
 8000694:	2400      	movs	r4, #0
 8000696:	2601      	movs	r6, #1
 8000698:	2710      	movs	r7, #16
 800069a:	f04f 0803 	mov.w	r8, #3
 800069e:	4681      	mov	r9, r0
 80006a0:	a901      	add	r1, sp, #4
 80006a2:	4628      	mov	r0, r5
 80006a4:	9701      	str	r7, [sp, #4]
 80006a6:	f88d 6008 	strb.w	r6, [sp, #8]
 80006aa:	f88d 400a 	strb.w	r4, [sp, #10]
 80006ae:	f88d 8009 	strb.w	r8, [sp, #9]
 80006b2:	f88d 400b 	strb.w	r4, [sp, #11]
 80006b6:	f001 fda5 	bl	8002204 <GPIO_Init>
 80006ba:	61af      	str	r7, [r5, #24]
 80006bc:	4628      	mov	r0, r5
 80006be:	a901      	add	r1, sp, #4
 80006c0:	9701      	str	r7, [sp, #4]
 80006c2:	f88d 6008 	strb.w	r6, [sp, #8]
 80006c6:	f88d 400a 	strb.w	r4, [sp, #10]
 80006ca:	f88d 8009 	strb.w	r8, [sp, #9]
 80006ce:	f88d 400b 	strb.w	r4, [sp, #11]
 80006d2:	f001 fd97 	bl	8002204 <GPIO_Init>
 80006d6:	61af      	str	r7, [r5, #24]
 80006d8:	4628      	mov	r0, r5
 80006da:	a901      	add	r1, sp, #4
 80006dc:	9701      	str	r7, [sp, #4]
 80006de:	f88d 6008 	strb.w	r6, [sp, #8]
 80006e2:	f88d 400a 	strb.w	r4, [sp, #10]
 80006e6:	f88d 8009 	strb.w	r8, [sp, #9]
 80006ea:	f88d 400b 	strb.w	r4, [sp, #11]
 80006ee:	f001 fd89 	bl	8002204 <GPIO_Init>
 80006f2:	61af      	str	r7, [r5, #24]
 80006f4:	4628      	mov	r0, r5
 80006f6:	a901      	add	r1, sp, #4
 80006f8:	9701      	str	r7, [sp, #4]
 80006fa:	f88d 6008 	strb.w	r6, [sp, #8]
 80006fe:	f88d 400a 	strb.w	r4, [sp, #10]
 8000702:	f88d 8009 	strb.w	r8, [sp, #9]
 8000706:	f88d 400b 	strb.w	r4, [sp, #11]
 800070a:	f001 fd7b 	bl	8002204 <GPIO_Init>
 800070e:	61af      	str	r7, [r5, #24]
 8000710:	4631      	mov	r1, r6
 8000712:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8000716:	f002 f8af 	bl	8002878 <RCC_APB2PeriphClockCmd>
 800071a:	4631      	mov	r1, r6
 800071c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000720:	f002 f89c 	bl	800285c <RCC_AHBPeriphClockCmd>
 8000724:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8000728:	9301      	str	r3, [sp, #4]
 800072a:	4628      	mov	r0, r5
 800072c:	2302      	movs	r3, #2
 800072e:	a901      	add	r1, sp, #4
 8000730:	f88d 3008 	strb.w	r3, [sp, #8]
 8000734:	f88d 8009 	strb.w	r8, [sp, #9]
 8000738:	f001 fd64 	bl	8002204 <GPIO_Init>
 800073c:	4628      	mov	r0, r5
 800073e:	210d      	movs	r1, #13
 8000740:	2206      	movs	r2, #6
 8000742:	f001 fda8 	bl	8002296 <GPIO_PinAFConfig>
 8000746:	4628      	mov	r0, r5
 8000748:	210e      	movs	r1, #14
 800074a:	2206      	movs	r2, #6
 800074c:	f001 fda3 	bl	8002296 <GPIO_PinAFConfig>
 8000750:	4b18      	ldr	r3, [pc, #96]	; (80007b4 <_ZN6CMotor10motor_initEv+0x128>)
 8000752:	4d19      	ldr	r5, [pc, #100]	; (80007b8 <_ZN6CMotor10motor_initEv+0x12c>)
 8000754:	681a      	ldr	r2, [r3, #0]
 8000756:	f8ad 400c 	strh.w	r4, [sp, #12]
 800075a:	f242 7310 	movw	r3, #10000	; 0x2710
 800075e:	fbb2 f3f3 	udiv	r3, r2, r3
 8000762:	3b01      	subs	r3, #1
 8000764:	4628      	mov	r0, r5
 8000766:	a903      	add	r1, sp, #12
 8000768:	9304      	str	r3, [sp, #16]
 800076a:	f8ad 400e 	strh.w	r4, [sp, #14]
 800076e:	f8ad 4014 	strh.w	r4, [sp, #20]
 8000772:	f8ad 4016 	strh.w	r4, [sp, #22]
 8000776:	f002 f985 	bl	8002a84 <TIM_TimeBaseInit>
 800077a:	4622      	mov	r2, r4
 800077c:	4648      	mov	r0, r9
 800077e:	4621      	mov	r1, r4
 8000780:	f7ff ff0c 	bl	800059c <_ZN6CMotor7pwm_setEmm>
 8000784:	4628      	mov	r0, r5
 8000786:	4631      	mov	r1, r6
 8000788:	f002 f9cc 	bl	8002b24 <TIM_Cmd>
 800078c:	4628      	mov	r0, r5
 800078e:	4631      	mov	r1, r6
 8000790:	f002 fa5a 	bl	8002c48 <TIM_CtrlPWMOutputs>
 8000794:	4648      	mov	r0, r9
 8000796:	4621      	mov	r1, r4
 8000798:	4622      	mov	r2, r4
 800079a:	f7ff ff71 	bl	8000680 <_ZN6CMotor9set_motorEml>
 800079e:	4648      	mov	r0, r9
 80007a0:	4631      	mov	r1, r6
 80007a2:	4622      	mov	r2, r4
 80007a4:	f7ff ff6c 	bl	8000680 <_ZN6CMotor9set_motorEml>
 80007a8:	4620      	mov	r0, r4
 80007aa:	b007      	add	sp, #28
 80007ac:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80007b0:	48000400 	.word	0x48000400
 80007b4:	20000000 	.word	0x20000000
 80007b8:	40012c00 	.word	0x40012c00

080007bc <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 80007bc:	bf00      	nop
 80007be:	bf00      	nop
 80007c0:	bf00      	nop
 80007c2:	bf00      	nop
 80007c4:	4770      	bx	lr
	...

080007c8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 80007c8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007ca:	7803      	ldrb	r3, [r0, #0]
 80007cc:	9300      	str	r3, [sp, #0]
 80007ce:	2401      	movs	r4, #1
 80007d0:	4605      	mov	r5, r0
 80007d2:	2703      	movs	r7, #3
 80007d4:	2600      	movs	r6, #0
 80007d6:	4669      	mov	r1, sp
 80007d8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80007dc:	f88d 6007 	strb.w	r6, [sp, #7]
 80007e0:	f88d 4004 	strb.w	r4, [sp, #4]
 80007e4:	f88d 7005 	strb.w	r7, [sp, #5]
 80007e8:	f88d 4006 	strb.w	r4, [sp, #6]
 80007ec:	f001 fd0a 	bl	8002204 <GPIO_Init>
 80007f0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007f4:	782a      	ldrb	r2, [r5, #0]
 80007f6:	851a      	strh	r2, [r3, #40]	; 0x28
 80007f8:	f88d 6007 	strb.w	r6, [sp, #7]
 80007fc:	4e08      	ldr	r6, [pc, #32]	; (8000820 <_ZN8CRGB_I2C12RGBSetLowSDAEv+0x58>)
 80007fe:	9400      	str	r4, [sp, #0]
 8000800:	4630      	mov	r0, r6
 8000802:	4669      	mov	r1, sp
 8000804:	f88d 4004 	strb.w	r4, [sp, #4]
 8000808:	f88d 7005 	strb.w	r7, [sp, #5]
 800080c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000810:	f001 fcf8 	bl	8002204 <GPIO_Init>
 8000814:	8534      	strh	r4, [r6, #40]	; 0x28
 8000816:	4628      	mov	r0, r5
 8000818:	f7ff ffd0 	bl	80007bc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 800081c:	b003      	add	sp, #12
 800081e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000820:	48000400 	.word	0x48000400

08000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000824:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000826:	7803      	ldrb	r3, [r0, #0]
 8000828:	9300      	str	r3, [sp, #0]
 800082a:	2400      	movs	r4, #0
 800082c:	4605      	mov	r5, r0
 800082e:	2703      	movs	r7, #3
 8000830:	4669      	mov	r1, sp
 8000832:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000836:	f88d 4004 	strb.w	r4, [sp, #4]
 800083a:	f88d 4007 	strb.w	r4, [sp, #7]
 800083e:	f88d 7005 	strb.w	r7, [sp, #5]
 8000842:	f001 fcdf 	bl	8002204 <GPIO_Init>
 8000846:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800084a:	782a      	ldrb	r2, [r5, #0]
 800084c:	619a      	str	r2, [r3, #24]
 800084e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000852:	f88d 4007 	strb.w	r4, [sp, #7]
 8000856:	4c07      	ldr	r4, [pc, #28]	; (8000874 <_ZN8CRGB_I2C13RGBSetHighSDAEv+0x50>)
 8000858:	f88d 7005 	strb.w	r7, [sp, #5]
 800085c:	2601      	movs	r6, #1
 800085e:	4620      	mov	r0, r4
 8000860:	4669      	mov	r1, sp
 8000862:	9600      	str	r6, [sp, #0]
 8000864:	f001 fcce 	bl	8002204 <GPIO_Init>
 8000868:	61a6      	str	r6, [r4, #24]
 800086a:	4628      	mov	r0, r5
 800086c:	f7ff ffa6 	bl	80007bc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000870:	b003      	add	sp, #12
 8000872:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000874:	48000400 	.word	0x48000400

08000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000878:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800087c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000880:	851a      	strh	r2, [r3, #40]	; 0x28
 8000882:	f7ff bf9b 	b.w	80007bc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000886:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800088a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800088e:	619a      	str	r2, [r3, #24]
 8000890:	f7ff bf94 	b.w	80007bc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000894 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000894:	b510      	push	{r4, lr}
 8000896:	4604      	mov	r4, r0
 8000898:	f7ff fff5 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800089c:	4620      	mov	r0, r4
 800089e:	f7ff ffc1 	bl	8000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80008a2:	4620      	mov	r0, r4
 80008a4:	f7ff ffef 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008a8:	4620      	mov	r0, r4
 80008aa:	f7ff ff8d 	bl	80007c8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80008ae:	4620      	mov	r0, r4
 80008b0:	f7ff ffe2 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80008b4:	4620      	mov	r0, r4
 80008b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80008ba:	f7ff bfb3 	b.w	8000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

080008be <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 80008be:	b510      	push	{r4, lr}
 80008c0:	4604      	mov	r4, r0
 80008c2:	f7ff ffd9 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80008c6:	4620      	mov	r0, r4
 80008c8:	f7ff ff7e 	bl	80007c8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80008cc:	4620      	mov	r0, r4
 80008ce:	f7ff ffda 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008d2:	4620      	mov	r0, r4
 80008d4:	f7ff ff78 	bl	80007c8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80008d8:	4620      	mov	r0, r4
 80008da:	f7ff ffd4 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008de:	4620      	mov	r0, r4
 80008e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80008e4:	f7ff bf9e 	b.w	8000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

080008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 80008e8:	b570      	push	{r4, r5, r6, lr}
 80008ea:	4604      	mov	r4, r0
 80008ec:	460d      	mov	r5, r1
 80008ee:	2608      	movs	r6, #8
 80008f0:	4620      	mov	r0, r4
 80008f2:	f7ff ffc1 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80008f6:	062b      	lsls	r3, r5, #24
 80008f8:	4620      	mov	r0, r4
 80008fa:	d502      	bpl.n	8000902 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 80008fc:	f7ff ff92 	bl	8000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000900:	e001      	b.n	8000906 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000902:	f7ff ff61 	bl	80007c8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000906:	4620      	mov	r0, r4
 8000908:	3e01      	subs	r6, #1
 800090a:	f7ff ffbc 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800090e:	006d      	lsls	r5, r5, #1
 8000910:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000914:	b2ed      	uxtb	r5, r5
 8000916:	d1eb      	bne.n	80008f0 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000918:	4620      	mov	r0, r4
 800091a:	f7ff ffad 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800091e:	4620      	mov	r0, r4
 8000920:	f7ff ff80 	bl	8000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000924:	4620      	mov	r0, r4
 8000926:	f7ff ffae 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800092a:	4620      	mov	r0, r4
 800092c:	f7ff ffa4 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000930:	4620      	mov	r0, r4
 8000932:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000936:	f7ff bf41 	b.w	80007bc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

0800093a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 800093a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800093c:	4604      	mov	r4, r0
 800093e:	460e      	mov	r6, r1
 8000940:	4615      	mov	r5, r2
 8000942:	461f      	mov	r7, r3
 8000944:	f7ff ffa6 	bl	8000894 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000948:	4620      	mov	r0, r4
 800094a:	4631      	mov	r1, r6
 800094c:	f7ff ffcc 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000950:	4620      	mov	r0, r4
 8000952:	4629      	mov	r1, r5
 8000954:	f7ff ffc8 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000958:	4620      	mov	r0, r4
 800095a:	4639      	mov	r1, r7
 800095c:	f7ff ffc4 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000960:	4620      	mov	r0, r4
 8000962:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000966:	f7ff bfaa 	b.w	80008be <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

0800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 800096c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800096e:	4605      	mov	r5, r0
 8000970:	460f      	mov	r7, r1
 8000972:	4614      	mov	r4, r2
 8000974:	2300      	movs	r3, #0
 8000976:	2200      	movs	r2, #0
 8000978:	54e2      	strb	r2, [r4, r3]
 800097a:	3301      	adds	r3, #1
 800097c:	2b09      	cmp	r3, #9
 800097e:	d1fa      	bne.n	8000976 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xa>
 8000980:	4628      	mov	r0, r5
 8000982:	f7ff ff79 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000986:	4628      	mov	r0, r5
 8000988:	f7ff ff4c 	bl	8000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 800098c:	2608      	movs	r6, #8
 800098e:	2300      	movs	r3, #0
 8000990:	5ce2      	ldrb	r2, [r4, r3]
 8000992:	0052      	lsls	r2, r2, #1
 8000994:	54e2      	strb	r2, [r4, r3]
 8000996:	3301      	adds	r3, #1
 8000998:	2b09      	cmp	r3, #9
 800099a:	d1f9      	bne.n	8000990 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 800099c:	4628      	mov	r0, r5
 800099e:	f7ff ff72 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80009a2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80009a6:	8a1b      	ldrh	r3, [r3, #16]
 80009a8:	b29b      	uxth	r3, r3
 80009aa:	07d9      	lsls	r1, r3, #31
 80009ac:	d503      	bpl.n	80009b6 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x4a>
 80009ae:	7822      	ldrb	r2, [r4, #0]
 80009b0:	f042 0201 	orr.w	r2, r2, #1
 80009b4:	7022      	strb	r2, [r4, #0]
 80009b6:	079a      	lsls	r2, r3, #30
 80009b8:	d503      	bpl.n	80009c2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x56>
 80009ba:	7862      	ldrb	r2, [r4, #1]
 80009bc:	f042 0201 	orr.w	r2, r2, #1
 80009c0:	7062      	strb	r2, [r4, #1]
 80009c2:	0758      	lsls	r0, r3, #29
 80009c4:	d503      	bpl.n	80009ce <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x62>
 80009c6:	78a2      	ldrb	r2, [r4, #2]
 80009c8:	f042 0201 	orr.w	r2, r2, #1
 80009cc:	70a2      	strb	r2, [r4, #2]
 80009ce:	0719      	lsls	r1, r3, #28
 80009d0:	d503      	bpl.n	80009da <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x6e>
 80009d2:	78e2      	ldrb	r2, [r4, #3]
 80009d4:	f042 0201 	orr.w	r2, r2, #1
 80009d8:	70e2      	strb	r2, [r4, #3]
 80009da:	06da      	lsls	r2, r3, #27
 80009dc:	d503      	bpl.n	80009e6 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x7a>
 80009de:	7922      	ldrb	r2, [r4, #4]
 80009e0:	f042 0201 	orr.w	r2, r2, #1
 80009e4:	7122      	strb	r2, [r4, #4]
 80009e6:	0698      	lsls	r0, r3, #26
 80009e8:	d503      	bpl.n	80009f2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x86>
 80009ea:	7962      	ldrb	r2, [r4, #5]
 80009ec:	f042 0201 	orr.w	r2, r2, #1
 80009f0:	7162      	strb	r2, [r4, #5]
 80009f2:	0659      	lsls	r1, r3, #25
 80009f4:	d503      	bpl.n	80009fe <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x92>
 80009f6:	79a2      	ldrb	r2, [r4, #6]
 80009f8:	f042 0201 	orr.w	r2, r2, #1
 80009fc:	71a2      	strb	r2, [r4, #6]
 80009fe:	061a      	lsls	r2, r3, #24
 8000a00:	d503      	bpl.n	8000a0a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x9e>
 8000a02:	79e3      	ldrb	r3, [r4, #7]
 8000a04:	f043 0301 	orr.w	r3, r3, #1
 8000a08:	71e3      	strb	r3, [r4, #7]
 8000a0a:	4b0e      	ldr	r3, [pc, #56]	; (8000a44 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xd8>)
 8000a0c:	8a1b      	ldrh	r3, [r3, #16]
 8000a0e:	07db      	lsls	r3, r3, #31
 8000a10:	d503      	bpl.n	8000a1a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xae>
 8000a12:	7a23      	ldrb	r3, [r4, #8]
 8000a14:	f043 0301 	orr.w	r3, r3, #1
 8000a18:	7223      	strb	r3, [r4, #8]
 8000a1a:	4628      	mov	r0, r5
 8000a1c:	f7ff ff2c 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a20:	3e01      	subs	r6, #1
 8000a22:	d1b4      	bne.n	800098e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x22>
 8000a24:	b117      	cbz	r7, 8000a2c <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xc0>
 8000a26:	4628      	mov	r0, r5
 8000a28:	f7ff fece 	bl	80007c8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000a2c:	4628      	mov	r0, r5
 8000a2e:	f7ff ff2a 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a32:	4628      	mov	r0, r5
 8000a34:	f7ff ff20 	bl	8000878 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a38:	4628      	mov	r0, r5
 8000a3a:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000a3e:	f7ff bebd 	b.w	80007bc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000a42:	bf00      	nop
 8000a44:	48000400 	.word	0x48000400

08000a48 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000a48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000a4a:	4604      	mov	r4, r0
 8000a4c:	460d      	mov	r5, r1
 8000a4e:	4616      	mov	r6, r2
 8000a50:	461f      	mov	r7, r3
 8000a52:	f7ff ff1f 	bl	8000894 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000a56:	4620      	mov	r0, r4
 8000a58:	4629      	mov	r1, r5
 8000a5a:	f7ff ff45 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a5e:	4631      	mov	r1, r6
 8000a60:	4620      	mov	r0, r4
 8000a62:	f7ff ff41 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a66:	4620      	mov	r0, r4
 8000a68:	f7ff ff14 	bl	8000894 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000a6c:	4620      	mov	r0, r4
 8000a6e:	f045 0101 	orr.w	r1, r5, #1
 8000a72:	f7ff ff39 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a76:	4620      	mov	r0, r4
 8000a78:	463a      	mov	r2, r7
 8000a7a:	2100      	movs	r1, #0
 8000a7c:	f7ff ff76 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000a80:	4620      	mov	r0, r4
 8000a82:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000a86:	f7ff bf1a 	b.w	80008be <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000a8c <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000a8c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8000a90:	f04f 33ff 	mov.w	r3, #4294967295
 8000a94:	2400      	movs	r4, #0
 8000a96:	4605      	mov	r5, r0
 8000a98:	2601      	movs	r6, #1
 8000a9a:	2703      	movs	r7, #3
 8000a9c:	6003      	str	r3, [r0, #0]
 8000a9e:	4669      	mov	r1, sp
 8000aa0:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000aa4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000aa8:	9300      	str	r3, [sp, #0]
 8000aaa:	f88d 4006 	strb.w	r4, [sp, #6]
 8000aae:	f88d 4007 	strb.w	r4, [sp, #7]
 8000ab2:	f04f 08ff 	mov.w	r8, #255	; 0xff
 8000ab6:	f88d 6004 	strb.w	r6, [sp, #4]
 8000aba:	f88d 7005 	strb.w	r7, [sp, #5]
 8000abe:	f001 fba1 	bl	8002204 <GPIO_Init>
 8000ac2:	4669      	mov	r1, sp
 8000ac4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ac8:	f88d 4004 	strb.w	r4, [sp, #4]
 8000acc:	f88d 4007 	strb.w	r4, [sp, #7]
 8000ad0:	f8cd 8000 	str.w	r8, [sp]
 8000ad4:	f88d 7005 	strb.w	r7, [sp, #5]
 8000ad8:	f001 fb94 	bl	8002204 <GPIO_Init>
 8000adc:	4641      	mov	r1, r8
 8000ade:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ae2:	f001 fbd4 	bl	800228e <GPIO_SetBits>
 8000ae6:	f88d 4004 	strb.w	r4, [sp, #4]
 8000aea:	f88d 4007 	strb.w	r4, [sp, #7]
 8000aee:	4c0c      	ldr	r4, [pc, #48]	; (8000b20 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x94>)
 8000af0:	9600      	str	r6, [sp, #0]
 8000af2:	4620      	mov	r0, r4
 8000af4:	4669      	mov	r1, sp
 8000af6:	f88d 7005 	strb.w	r7, [sp, #5]
 8000afa:	f001 fb83 	bl	8002204 <GPIO_Init>
 8000afe:	4631      	mov	r1, r6
 8000b00:	4620      	mov	r0, r4
 8000b02:	f001 fbc4 	bl	800228e <GPIO_SetBits>
 8000b06:	4628      	mov	r0, r5
 8000b08:	f7ff febd 	bl	8000886 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b0c:	4628      	mov	r0, r5
 8000b0e:	f7ff fe5b 	bl	80007c8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b12:	4628      	mov	r0, r5
 8000b14:	f7ff fe86 	bl	8000824 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b18:	b002      	add	sp, #8
 8000b1a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000b1e:	bf00      	nop
 8000b20:	48000400 	.word	0x48000400

08000b24 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>:
 8000b24:	2300      	movs	r3, #0
 8000b26:	6003      	str	r3, [r0, #0]
 8000b28:	4770      	bx	lr

08000b2a <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>:
 8000b2a:	f04f 33ff 	mov.w	r3, #4294967295
 8000b2e:	6003      	str	r3, [r0, #0]
 8000b30:	4770      	bx	lr
	...

08000b34 <_ZN8CSensors12sensors_initEv>:
 8000b34:	b510      	push	{r4, lr}
 8000b36:	4604      	mov	r4, r0
 8000b38:	4808      	ldr	r0, [pc, #32]	; (8000b5c <_ZN8CSensors12sensors_initEv+0x28>)
 8000b3a:	f000 fc85 	bl	8001448 <_ZN4CI2C4initEv>
 8000b3e:	4620      	mov	r0, r4
 8000b40:	f000 fe8c 	bl	800185c <_ZN4CRGB8rgb_initEv>
 8000b44:	b110      	cbz	r0, 8000b4c <_ZN8CSensors12sensors_initEv+0x18>
 8000b46:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000b4a:	bd10      	pop	{r4, pc}
 8000b4c:	f504 7098 	add.w	r0, r4, #304	; 0x130
 8000b50:	f000 fbbc 	bl	80012cc <_ZN4CIMU8imu_initEv>
 8000b54:	b108      	cbz	r0, 8000b5a <_ZN8CSensors12sensors_initEv+0x26>
 8000b56:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000b5a:	bd10      	pop	{r4, pc}
 8000b5c:	20000234 	.word	0x20000234

08000b60 <_ZN5CGPIO9gpio_initEv>:
 8000b60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000b64:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000b68:	b087      	sub	sp, #28
 8000b6a:	2101      	movs	r1, #1
 8000b6c:	f001 fe76 	bl	800285c <RCC_AHBPeriphClockCmd>
 8000b70:	4f44      	ldr	r7, [pc, #272]	; (8000c84 <_ZN5CGPIO9gpio_initEv+0x124>)
 8000b72:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000b76:	2101      	movs	r1, #1
 8000b78:	f001 fe70 	bl	800285c <RCC_AHBPeriphClockCmd>
 8000b7c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000b80:	2101      	movs	r1, #1
 8000b82:	2400      	movs	r4, #0
 8000b84:	f001 fe6a 	bl	800285c <RCC_AHBPeriphClockCmd>
 8000b88:	2501      	movs	r5, #1
 8000b8a:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 8000b8e:	2603      	movs	r6, #3
 8000b90:	4638      	mov	r0, r7
 8000b92:	a902      	add	r1, sp, #8
 8000b94:	f88d 600d 	strb.w	r6, [sp, #13]
 8000b98:	f8cd 8008 	str.w	r8, [sp, #8]
 8000b9c:	f88d 500c 	strb.w	r5, [sp, #12]
 8000ba0:	f88d 400e 	strb.w	r4, [sp, #14]
 8000ba4:	f88d 400f 	strb.w	r4, [sp, #15]
 8000ba8:	f001 fb2c 	bl	8002204 <GPIO_Init>
 8000bac:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000bb0:	4638      	mov	r0, r7
 8000bb2:	a902      	add	r1, sp, #8
 8000bb4:	9302      	str	r3, [sp, #8]
 8000bb6:	f88d 600d 	strb.w	r6, [sp, #13]
 8000bba:	f88d 400c 	strb.w	r4, [sp, #12]
 8000bbe:	f88d 400f 	strb.w	r4, [sp, #15]
 8000bc2:	f001 fb1f 	bl	8002204 <GPIO_Init>
 8000bc6:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8000bca:	a902      	add	r1, sp, #8
 8000bcc:	482e      	ldr	r0, [pc, #184]	; (8000c88 <_ZN5CGPIO9gpio_initEv+0x128>)
 8000bce:	9302      	str	r3, [sp, #8]
 8000bd0:	f88d 400c 	strb.w	r4, [sp, #12]
 8000bd4:	f88d 500f 	strb.w	r5, [sp, #15]
 8000bd8:	f001 fb14 	bl	8002204 <GPIO_Init>
 8000bdc:	4628      	mov	r0, r5
 8000bde:	4629      	mov	r1, r5
 8000be0:	f001 fe4a 	bl	8002878 <RCC_APB2PeriphClockCmd>
 8000be4:	f04f 0a10 	mov.w	sl, #16
 8000be8:	2106      	movs	r1, #6
 8000bea:	2002      	movs	r0, #2
 8000bec:	f001 fc7e 	bl	80024ec <SYSCFG_EXTILineConfig>
 8000bf0:	f04f 0906 	mov.w	r9, #6
 8000bf4:	eb0d 000a 	add.w	r0, sp, sl
 8000bf8:	260f      	movs	r6, #15
 8000bfa:	f8cd 9010 	str.w	r9, [sp, #16]
 8000bfe:	f88d 4014 	strb.w	r4, [sp, #20]
 8000c02:	f88d a015 	strb.w	sl, [sp, #21]
 8000c06:	f88d 5016 	strb.w	r5, [sp, #22]
 8000c0a:	f001 fb5b 	bl	80022c4 <EXTI_Init>
 8000c0e:	2317      	movs	r3, #23
 8000c10:	a801      	add	r0, sp, #4
 8000c12:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c16:	f88d 6005 	strb.w	r6, [sp, #5]
 8000c1a:	f88d 6006 	strb.w	r6, [sp, #6]
 8000c1e:	f88d 5007 	strb.w	r5, [sp, #7]
 8000c22:	f001 fef7 	bl	8002a14 <NVIC_Init>
 8000c26:	210c      	movs	r1, #12
 8000c28:	2002      	movs	r0, #2
 8000c2a:	f001 fc5f 	bl	80024ec <SYSCFG_EXTILineConfig>
 8000c2e:	f04f 0b0c 	mov.w	fp, #12
 8000c32:	eb0d 000a 	add.w	r0, sp, sl
 8000c36:	f8cd b010 	str.w	fp, [sp, #16]
 8000c3a:	f88d 4014 	strb.w	r4, [sp, #20]
 8000c3e:	f88d a015 	strb.w	sl, [sp, #21]
 8000c42:	f88d 5016 	strb.w	r5, [sp, #22]
 8000c46:	f001 fb3d 	bl	80022c4 <EXTI_Init>
 8000c4a:	2328      	movs	r3, #40	; 0x28
 8000c4c:	a801      	add	r0, sp, #4
 8000c4e:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c52:	f88d 6005 	strb.w	r6, [sp, #5]
 8000c56:	f88d 6006 	strb.w	r6, [sp, #6]
 8000c5a:	f88d 5007 	strb.w	r5, [sp, #7]
 8000c5e:	f001 fed9 	bl	8002a14 <NVIC_Init>
 8000c62:	4648      	mov	r0, r9
 8000c64:	f001 fbb4 	bl	80023d0 <EXTI_ClearITPendingBit>
 8000c68:	4658      	mov	r0, fp
 8000c6a:	f001 fbb1 	bl	80023d0 <EXTI_ClearITPendingBit>
 8000c6e:	4b07      	ldr	r3, [pc, #28]	; (8000c8c <_ZN5CGPIO9gpio_initEv+0x12c>)
 8000c70:	601c      	str	r4, [r3, #0]
 8000c72:	4b07      	ldr	r3, [pc, #28]	; (8000c90 <_ZN5CGPIO9gpio_initEv+0x130>)
 8000c74:	4620      	mov	r0, r4
 8000c76:	601c      	str	r4, [r3, #0]
 8000c78:	f8c7 8018 	str.w	r8, [r7, #24]
 8000c7c:	b007      	add	sp, #28
 8000c7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000c82:	bf00      	nop
 8000c84:	48000400 	.word	0x48000400
 8000c88:	48000800 	.word	0x48000800
 8000c8c:	200001c4 	.word	0x200001c4
 8000c90:	200001c8 	.word	0x200001c8

08000c94 <_ZN5CGPIO7gpio_onEm>:
 8000c94:	4b01      	ldr	r3, [pc, #4]	; (8000c9c <_ZN5CGPIO7gpio_onEm+0x8>)
 8000c96:	6199      	str	r1, [r3, #24]
 8000c98:	4770      	bx	lr
 8000c9a:	bf00      	nop
 8000c9c:	48000400 	.word	0x48000400

08000ca0 <_ZN5CGPIO8gpio_offEm>:
 8000ca0:	4b01      	ldr	r3, [pc, #4]	; (8000ca8 <_ZN5CGPIO8gpio_offEm+0x8>)
 8000ca2:	b289      	uxth	r1, r1
 8000ca4:	8519      	strh	r1, [r3, #40]	; 0x28
 8000ca6:	4770      	bx	lr
 8000ca8:	48000400 	.word	0x48000400

08000cac <_ZN5CGPIO7gpio_inEm>:
 8000cac:	4b02      	ldr	r3, [pc, #8]	; (8000cb8 <_ZN5CGPIO7gpio_inEm+0xc>)
 8000cae:	8a18      	ldrh	r0, [r3, #16]
 8000cb0:	b280      	uxth	r0, r0
 8000cb2:	ea21 0000 	bic.w	r0, r1, r0
 8000cb6:	4770      	bx	lr
 8000cb8:	48000400 	.word	0x48000400

08000cbc <EXTI9_5_IRQHandler>:
 8000cbc:	4b03      	ldr	r3, [pc, #12]	; (8000ccc <EXTI9_5_IRQHandler+0x10>)
 8000cbe:	681a      	ldr	r2, [r3, #0]
 8000cc0:	2006      	movs	r0, #6
 8000cc2:	3201      	adds	r2, #1
 8000cc4:	601a      	str	r2, [r3, #0]
 8000cc6:	f001 bb83 	b.w	80023d0 <EXTI_ClearITPendingBit>
 8000cca:	bf00      	nop
 8000ccc:	200001c4 	.word	0x200001c4

08000cd0 <EXTI15_10_IRQHandler>:
 8000cd0:	4b03      	ldr	r3, [pc, #12]	; (8000ce0 <EXTI15_10_IRQHandler+0x10>)
 8000cd2:	681a      	ldr	r2, [r3, #0]
 8000cd4:	200c      	movs	r0, #12
 8000cd6:	3201      	adds	r2, #1
 8000cd8:	601a      	str	r2, [r3, #0]
 8000cda:	f001 bb79 	b.w	80023d0 <EXTI_ClearITPendingBit>
 8000cde:	bf00      	nop
 8000ce0:	200001c8 	.word	0x200001c8

08000ce4 <TIM3_IRQHandler>:
 8000ce4:	2300      	movs	r3, #0
 8000ce6:	4a15      	ldr	r2, [pc, #84]	; (8000d3c <TIM3_IRQHandler+0x58>)
 8000ce8:	5cd1      	ldrb	r1, [r2, r3]
 8000cea:	b111      	cbz	r1, 8000cf2 <TIM3_IRQHandler+0xe>
 8000cec:	5cd1      	ldrb	r1, [r2, r3]
 8000cee:	29ff      	cmp	r1, #255	; 0xff
 8000cf0:	d11e      	bne.n	8000d30 <TIM3_IRQHandler+0x4c>
 8000cf2:	4913      	ldr	r1, [pc, #76]	; (8000d40 <TIM3_IRQHandler+0x5c>)
 8000cf4:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000cf8:	b128      	cbz	r0, 8000d06 <TIM3_IRQHandler+0x22>
 8000cfa:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000cfe:	3a01      	subs	r2, #1
 8000d00:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000d04:	e009      	b.n	8000d1a <TIM3_IRQHandler+0x36>
 8000d06:	480f      	ldr	r0, [pc, #60]	; (8000d44 <TIM3_IRQHandler+0x60>)
 8000d08:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000d0c:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000d10:	5cd2      	ldrb	r2, [r2, r3]
 8000d12:	b912      	cbnz	r2, 8000d1a <TIM3_IRQHandler+0x36>
 8000d14:	4a09      	ldr	r2, [pc, #36]	; (8000d3c <TIM3_IRQHandler+0x58>)
 8000d16:	2101      	movs	r1, #1
 8000d18:	54d1      	strb	r1, [r2, r3]
 8000d1a:	3301      	adds	r3, #1
 8000d1c:	2b08      	cmp	r3, #8
 8000d1e:	d1e2      	bne.n	8000ce6 <TIM3_IRQHandler+0x2>
 8000d20:	4b09      	ldr	r3, [pc, #36]	; (8000d48 <TIM3_IRQHandler+0x64>)
 8000d22:	480a      	ldr	r0, [pc, #40]	; (8000d4c <TIM3_IRQHandler+0x68>)
 8000d24:	681a      	ldr	r2, [r3, #0]
 8000d26:	2101      	movs	r1, #1
 8000d28:	3201      	adds	r2, #1
 8000d2a:	601a      	str	r2, [r3, #0]
 8000d2c:	f001 bf97 	b.w	8002c5e <TIM_ClearITPendingBit>
 8000d30:	5cd1      	ldrb	r1, [r2, r3]
 8000d32:	3101      	adds	r1, #1
 8000d34:	b2c9      	uxtb	r1, r1
 8000d36:	54d1      	strb	r1, [r2, r3]
 8000d38:	e7db      	b.n	8000cf2 <TIM3_IRQHandler+0xe>
 8000d3a:	bf00      	nop
 8000d3c:	200001ec 	.word	0x200001ec
 8000d40:	200001cc 	.word	0x200001cc
 8000d44:	200001fc 	.word	0x200001fc
 8000d48:	200001f4 	.word	0x200001f4
 8000d4c:	40000400 	.word	0x40000400

08000d50 <_ZN6CTimer10timer_initEv>:
 8000d50:	b530      	push	{r4, r5, lr}
 8000d52:	4a1f      	ldr	r2, [pc, #124]	; (8000dd0 <_ZN6CTimer10timer_initEv+0x80>)
 8000d54:	2300      	movs	r3, #0
 8000d56:	b085      	sub	sp, #20
 8000d58:	6013      	str	r3, [r2, #0]
 8000d5a:	491e      	ldr	r1, [pc, #120]	; (8000dd4 <_ZN6CTimer10timer_initEv+0x84>)
 8000d5c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000d60:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000d64:	491c      	ldr	r1, [pc, #112]	; (8000dd8 <_ZN6CTimer10timer_initEv+0x88>)
 8000d66:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000d6a:	4a1c      	ldr	r2, [pc, #112]	; (8000ddc <_ZN6CTimer10timer_initEv+0x8c>)
 8000d6c:	2400      	movs	r4, #0
 8000d6e:	54d4      	strb	r4, [r2, r3]
 8000d70:	3301      	adds	r3, #1
 8000d72:	2b08      	cmp	r3, #8
 8000d74:	d1f1      	bne.n	8000d5a <_ZN6CTimer10timer_initEv+0xa>
 8000d76:	4d1a      	ldr	r5, [pc, #104]	; (8000de0 <_ZN6CTimer10timer_initEv+0x90>)
 8000d78:	2002      	movs	r0, #2
 8000d7a:	2101      	movs	r1, #1
 8000d7c:	f001 fd8a 	bl	8002894 <RCC_APB1PeriphClockCmd>
 8000d80:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000d84:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000d88:	4628      	mov	r0, r5
 8000d8a:	2331      	movs	r3, #49	; 0x31
 8000d8c:	a901      	add	r1, sp, #4
 8000d8e:	9302      	str	r3, [sp, #8]
 8000d90:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000d94:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000d98:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000d9c:	f001 fe72 	bl	8002a84 <TIM_TimeBaseInit>
 8000da0:	4628      	mov	r0, r5
 8000da2:	2101      	movs	r1, #1
 8000da4:	f001 febe 	bl	8002b24 <TIM_Cmd>
 8000da8:	68eb      	ldr	r3, [r5, #12]
 8000daa:	f043 0301 	orr.w	r3, r3, #1
 8000dae:	60eb      	str	r3, [r5, #12]
 8000db0:	231d      	movs	r3, #29
 8000db2:	f88d 3000 	strb.w	r3, [sp]
 8000db6:	4668      	mov	r0, sp
 8000db8:	2301      	movs	r3, #1
 8000dba:	f88d 4001 	strb.w	r4, [sp, #1]
 8000dbe:	f88d 3002 	strb.w	r3, [sp, #2]
 8000dc2:	f88d 3003 	strb.w	r3, [sp, #3]
 8000dc6:	f001 fe25 	bl	8002a14 <NVIC_Init>
 8000dca:	4620      	mov	r0, r4
 8000dcc:	b005      	add	sp, #20
 8000dce:	bd30      	pop	{r4, r5, pc}
 8000dd0:	200001f4 	.word	0x200001f4
 8000dd4:	200001cc 	.word	0x200001cc
 8000dd8:	200001fc 	.word	0x200001fc
 8000ddc:	200001ec 	.word	0x200001ec
 8000de0:	40000400 	.word	0x40000400

08000de4 <_ZN6CTimer8get_timeEv>:
 8000de4:	b082      	sub	sp, #8
 8000de6:	b672      	cpsid	i
 8000de8:	4b04      	ldr	r3, [pc, #16]	; (8000dfc <_ZN6CTimer8get_timeEv+0x18>)
 8000dea:	681b      	ldr	r3, [r3, #0]
 8000dec:	9301      	str	r3, [sp, #4]
 8000dee:	b662      	cpsie	i
 8000df0:	9801      	ldr	r0, [sp, #4]
 8000df2:	230a      	movs	r3, #10
 8000df4:	fbb0 f0f3 	udiv	r0, r0, r3
 8000df8:	b002      	add	sp, #8
 8000dfa:	4770      	bx	lr
 8000dfc:	200001f4 	.word	0x200001f4

08000e00 <_ZN6CTimer8delay_msEm>:
 8000e00:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000e02:	460d      	mov	r5, r1
 8000e04:	4604      	mov	r4, r0
 8000e06:	f7ff ffed 	bl	8000de4 <_ZN6CTimer8get_timeEv>
 8000e0a:	4428      	add	r0, r5
 8000e0c:	9001      	str	r0, [sp, #4]
 8000e0e:	4620      	mov	r0, r4
 8000e10:	9d01      	ldr	r5, [sp, #4]
 8000e12:	f7ff ffe7 	bl	8000de4 <_ZN6CTimer8get_timeEv>
 8000e16:	4285      	cmp	r5, r0
 8000e18:	d902      	bls.n	8000e20 <_ZN6CTimer8delay_msEm+0x20>
 8000e1a:	f001 fb63 	bl	80024e4 <core_yield>
 8000e1e:	e7f6      	b.n	8000e0e <_ZN6CTimer8delay_msEm+0xe>
 8000e20:	b003      	add	sp, #12
 8000e22:	bd30      	pop	{r4, r5, pc}

08000e24 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000e24:	b672      	cpsid	i
 8000e26:	230a      	movs	r3, #10
 8000e28:	435a      	muls	r2, r3
 8000e2a:	4b05      	ldr	r3, [pc, #20]	; (8000e40 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000e2c:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000e30:	4b04      	ldr	r3, [pc, #16]	; (8000e44 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000e32:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000e36:	4b04      	ldr	r3, [pc, #16]	; (8000e48 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000e38:	2200      	movs	r2, #0
 8000e3a:	545a      	strb	r2, [r3, r1]
 8000e3c:	b662      	cpsie	i
 8000e3e:	4770      	bx	lr
 8000e40:	200001cc 	.word	0x200001cc
 8000e44:	200001fc 	.word	0x200001fc
 8000e48:	200001ec 	.word	0x200001ec

08000e4c <_ZN6CTimer17event_timer_checkEh>:
 8000e4c:	4b05      	ldr	r3, [pc, #20]	; (8000e64 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000e4e:	5c5a      	ldrb	r2, [r3, r1]
 8000e50:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000e54:	b12a      	cbz	r2, 8000e62 <_ZN6CTimer17event_timer_checkEh+0x16>
 8000e56:	b672      	cpsid	i
 8000e58:	5c58      	ldrb	r0, [r3, r1]
 8000e5a:	2200      	movs	r2, #0
 8000e5c:	b2c0      	uxtb	r0, r0
 8000e5e:	545a      	strb	r2, [r3, r1]
 8000e60:	b662      	cpsie	i
 8000e62:	4770      	bx	lr
 8000e64:	200001ec 	.word	0x200001ec

08000e68 <_ZN9CTerminal13terminal_initEv>:
 8000e68:	b530      	push	{r4, r5, lr}
 8000e6a:	4a2f      	ldr	r2, [pc, #188]	; (8000f28 <_ZN9CTerminal13terminal_initEv+0xc0>)
 8000e6c:	2300      	movs	r3, #0
 8000e6e:	6013      	str	r3, [r2, #0]
 8000e70:	4a2e      	ldr	r2, [pc, #184]	; (8000f2c <_ZN9CTerminal13terminal_initEv+0xc4>)
 8000e72:	b08b      	sub	sp, #44	; 0x2c
 8000e74:	6013      	str	r3, [r2, #0]
 8000e76:	4a2e      	ldr	r2, [pc, #184]	; (8000f30 <_ZN9CTerminal13terminal_initEv+0xc8>)
 8000e78:	2400      	movs	r4, #0
 8000e7a:	54d4      	strb	r4, [r2, r3]
 8000e7c:	3301      	adds	r3, #1
 8000e7e:	2b10      	cmp	r3, #16
 8000e80:	d1f9      	bne.n	8000e76 <_ZN9CTerminal13terminal_initEv+0xe>
 8000e82:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000e86:	2101      	movs	r1, #1
 8000e88:	f001 fce8 	bl	800285c <RCC_AHBPeriphClockCmd>
 8000e8c:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000e90:	2101      	movs	r1, #1
 8000e92:	f001 fcf1 	bl	8002878 <RCC_APB2PeriphClockCmd>
 8000e96:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8000e9a:	9302      	str	r3, [sp, #8]
 8000e9c:	2302      	movs	r3, #2
 8000e9e:	f88d 300c 	strb.w	r3, [sp, #12]
 8000ea2:	a902      	add	r1, sp, #8
 8000ea4:	2303      	movs	r3, #3
 8000ea6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000eaa:	f88d 300d 	strb.w	r3, [sp, #13]
 8000eae:	f88d 400e 	strb.w	r4, [sp, #14]
 8000eb2:	f88d 400f 	strb.w	r4, [sp, #15]
 8000eb6:	f001 f9a5 	bl	8002204 <GPIO_Init>
 8000eba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ebe:	2109      	movs	r1, #9
 8000ec0:	2207      	movs	r2, #7
 8000ec2:	f001 f9e8 	bl	8002296 <GPIO_PinAFConfig>
 8000ec6:	2207      	movs	r2, #7
 8000ec8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ecc:	210a      	movs	r1, #10
 8000ece:	f001 f9e2 	bl	8002296 <GPIO_PinAFConfig>
 8000ed2:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000ed6:	9304      	str	r3, [sp, #16]
 8000ed8:	a904      	add	r1, sp, #16
 8000eda:	230c      	movs	r3, #12
 8000edc:	4815      	ldr	r0, [pc, #84]	; (8000f34 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000ede:	9308      	str	r3, [sp, #32]
 8000ee0:	9405      	str	r4, [sp, #20]
 8000ee2:	9406      	str	r4, [sp, #24]
 8000ee4:	9407      	str	r4, [sp, #28]
 8000ee6:	9409      	str	r4, [sp, #36]	; 0x24
 8000ee8:	f001 fce2 	bl	80028b0 <USART_Init>
 8000eec:	4811      	ldr	r0, [pc, #68]	; (8000f34 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000eee:	2101      	movs	r1, #1
 8000ef0:	f001 fd40 	bl	8002974 <USART_Cmd>
 8000ef4:	2201      	movs	r2, #1
 8000ef6:	4910      	ldr	r1, [pc, #64]	; (8000f38 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8000ef8:	480e      	ldr	r0, [pc, #56]	; (8000f34 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000efa:	f001 fd4b 	bl	8002994 <USART_ITConfig>
 8000efe:	2501      	movs	r5, #1
 8000f00:	2325      	movs	r3, #37	; 0x25
 8000f02:	a801      	add	r0, sp, #4
 8000f04:	f88d 3004 	strb.w	r3, [sp, #4]
 8000f08:	f88d 4005 	strb.w	r4, [sp, #5]
 8000f0c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000f10:	f88d 5007 	strb.w	r5, [sp, #7]
 8000f14:	f001 fd7e 	bl	8002a14 <NVIC_Init>
 8000f18:	4806      	ldr	r0, [pc, #24]	; (8000f34 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000f1a:	4629      	mov	r1, r5
 8000f1c:	f001 fd2a 	bl	8002974 <USART_Cmd>
 8000f20:	4620      	mov	r0, r4
 8000f22:	b00b      	add	sp, #44	; 0x2c
 8000f24:	bd30      	pop	{r4, r5, pc}
 8000f26:	bf00      	nop
 8000f28:	2000021c 	.word	0x2000021c
 8000f2c:	20000230 	.word	0x20000230
 8000f30:	20000220 	.word	0x20000220
 8000f34:	40013800 	.word	0x40013800
 8000f38:	00050105 	.word	0x00050105

08000f3c <USART1_IRQHandler>:
 8000f3c:	b508      	push	{r3, lr}
 8000f3e:	480d      	ldr	r0, [pc, #52]	; (8000f74 <USART1_IRQHandler+0x38>)
 8000f40:	490d      	ldr	r1, [pc, #52]	; (8000f78 <USART1_IRQHandler+0x3c>)
 8000f42:	f001 fd40 	bl	80029c6 <USART_GetITStatus>
 8000f46:	b178      	cbz	r0, 8000f68 <USART1_IRQHandler+0x2c>
 8000f48:	480a      	ldr	r0, [pc, #40]	; (8000f74 <USART1_IRQHandler+0x38>)
 8000f4a:	f001 fd1e 	bl	800298a <USART_ReceiveData>
 8000f4e:	4b0b      	ldr	r3, [pc, #44]	; (8000f7c <USART1_IRQHandler+0x40>)
 8000f50:	490b      	ldr	r1, [pc, #44]	; (8000f80 <USART1_IRQHandler+0x44>)
 8000f52:	681a      	ldr	r2, [r3, #0]
 8000f54:	b2c0      	uxtb	r0, r0
 8000f56:	5488      	strb	r0, [r1, r2]
 8000f58:	681a      	ldr	r2, [r3, #0]
 8000f5a:	3201      	adds	r2, #1
 8000f5c:	601a      	str	r2, [r3, #0]
 8000f5e:	681a      	ldr	r2, [r3, #0]
 8000f60:	2a0f      	cmp	r2, #15
 8000f62:	bf84      	itt	hi
 8000f64:	2200      	movhi	r2, #0
 8000f66:	601a      	strhi	r2, [r3, #0]
 8000f68:	4802      	ldr	r0, [pc, #8]	; (8000f74 <USART1_IRQHandler+0x38>)
 8000f6a:	4903      	ldr	r1, [pc, #12]	; (8000f78 <USART1_IRQHandler+0x3c>)
 8000f6c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000f70:	f001 bd48 	b.w	8002a04 <USART_ClearITPendingBit>
 8000f74:	40013800 	.word	0x40013800
 8000f78:	00050105 	.word	0x00050105
 8000f7c:	2000021c 	.word	0x2000021c
 8000f80:	20000220 	.word	0x20000220

08000f84 <_ZN9CTerminal7putcharEc>:
 8000f84:	4b03      	ldr	r3, [pc, #12]	; (8000f94 <_ZN9CTerminal7putcharEc+0x10>)
 8000f86:	69da      	ldr	r2, [r3, #28]
 8000f88:	0612      	lsls	r2, r2, #24
 8000f8a:	d401      	bmi.n	8000f90 <_ZN9CTerminal7putcharEc+0xc>
 8000f8c:	bf00      	nop
 8000f8e:	e7f9      	b.n	8000f84 <_ZN9CTerminal7putcharEc>
 8000f90:	8519      	strh	r1, [r3, #40]	; 0x28
 8000f92:	4770      	bx	lr
 8000f94:	40013800 	.word	0x40013800

08000f98 <_ZN9CTerminal4putsEPc>:
 8000f98:	b538      	push	{r3, r4, r5, lr}
 8000f9a:	4605      	mov	r5, r0
 8000f9c:	1e4c      	subs	r4, r1, #1
 8000f9e:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000fa2:	b119      	cbz	r1, 8000fac <_ZN9CTerminal4putsEPc+0x14>
 8000fa4:	4628      	mov	r0, r5
 8000fa6:	f7ff ffed 	bl	8000f84 <_ZN9CTerminal7putcharEc>
 8000faa:	e7f8      	b.n	8000f9e <_ZN9CTerminal4putsEPc+0x6>
 8000fac:	2001      	movs	r0, #1
 8000fae:	bd38      	pop	{r3, r4, r5, pc}

08000fb0 <_ZN9CTerminal4putiEl>:
 8000fb0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8000fb2:	1e0b      	subs	r3, r1, #0
 8000fb4:	f04f 0200 	mov.w	r2, #0
 8000fb8:	bfa8      	it	ge
 8000fba:	4615      	movge	r5, r2
 8000fbc:	f88d 200f 	strb.w	r2, [sp, #15]
 8000fc0:	bfbc      	itt	lt
 8000fc2:	425b      	neglt	r3, r3
 8000fc4:	2501      	movlt	r5, #1
 8000fc6:	220a      	movs	r2, #10
 8000fc8:	240a      	movs	r4, #10
 8000fca:	fb93 f6f4 	sdiv	r6, r3, r4
 8000fce:	fb04 3316 	mls	r3, r4, r6, r3
 8000fd2:	a901      	add	r1, sp, #4
 8000fd4:	3330      	adds	r3, #48	; 0x30
 8000fd6:	5453      	strb	r3, [r2, r1]
 8000fd8:	1e54      	subs	r4, r2, #1
 8000fda:	4633      	mov	r3, r6
 8000fdc:	b10e      	cbz	r6, 8000fe2 <_ZN9CTerminal4putiEl+0x32>
 8000fde:	4622      	mov	r2, r4
 8000fe0:	e7f2      	b.n	8000fc8 <_ZN9CTerminal4putiEl+0x18>
 8000fe2:	b12d      	cbz	r5, 8000ff0 <_ZN9CTerminal4putiEl+0x40>
 8000fe4:	ab04      	add	r3, sp, #16
 8000fe6:	4423      	add	r3, r4
 8000fe8:	222d      	movs	r2, #45	; 0x2d
 8000fea:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8000fee:	4622      	mov	r2, r4
 8000ff0:	4411      	add	r1, r2
 8000ff2:	f7ff ffd1 	bl	8000f98 <_ZN9CTerminal4putsEPc>
 8000ff6:	b004      	add	sp, #16
 8000ff8:	bd70      	pop	{r4, r5, r6, pc}

08000ffa <_ZN9CTerminal5putuiEm>:
 8000ffa:	b530      	push	{r4, r5, lr}
 8000ffc:	b085      	sub	sp, #20
 8000ffe:	2300      	movs	r3, #0
 8001000:	f88d 300f 	strb.w	r3, [sp, #15]
 8001004:	230a      	movs	r3, #10
 8001006:	250a      	movs	r5, #10
 8001008:	fbb1 f4f5 	udiv	r4, r1, r5
 800100c:	fb05 1114 	mls	r1, r5, r4, r1
 8001010:	aa01      	add	r2, sp, #4
 8001012:	3130      	adds	r1, #48	; 0x30
 8001014:	5499      	strb	r1, [r3, r2]
 8001016:	1e5d      	subs	r5, r3, #1
 8001018:	4621      	mov	r1, r4
 800101a:	b10c      	cbz	r4, 8001020 <_ZN9CTerminal5putuiEm+0x26>
 800101c:	462b      	mov	r3, r5
 800101e:	e7f2      	b.n	8001006 <_ZN9CTerminal5putuiEm+0xc>
 8001020:	18d1      	adds	r1, r2, r3
 8001022:	f7ff ffb9 	bl	8000f98 <_ZN9CTerminal4putsEPc>
 8001026:	b005      	add	sp, #20
 8001028:	bd30      	pop	{r4, r5, pc}

0800102a <_ZN9CTerminal4putxEm>:
 800102a:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800102c:	2300      	movs	r3, #0
 800102e:	f88d 300f 	strb.w	r3, [sp, #15]
 8001032:	230a      	movs	r3, #10
 8001034:	f001 040f 	and.w	r4, r1, #15
 8001038:	2c09      	cmp	r4, #9
 800103a:	aa01      	add	r2, sp, #4
 800103c:	bfd4      	ite	le
 800103e:	3430      	addle	r4, #48	; 0x30
 8001040:	3457      	addgt	r4, #87	; 0x57
 8001042:	0909      	lsrs	r1, r1, #4
 8001044:	54d4      	strb	r4, [r2, r3]
 8001046:	f103 34ff 	add.w	r4, r3, #4294967295
 800104a:	d001      	beq.n	8001050 <_ZN9CTerminal4putxEm+0x26>
 800104c:	4623      	mov	r3, r4
 800104e:	e7f1      	b.n	8001034 <_ZN9CTerminal4putxEm+0xa>
 8001050:	18d1      	adds	r1, r2, r3
 8001052:	f7ff ffa1 	bl	8000f98 <_ZN9CTerminal4putsEPc>
 8001056:	b004      	add	sp, #16
 8001058:	bd10      	pop	{r4, pc}

0800105a <_ZN9CTerminal4putfEfj>:
 800105a:	b538      	push	{r3, r4, r5, lr}
 800105c:	2200      	movs	r2, #0
 800105e:	4604      	mov	r4, r0
 8001060:	2301      	movs	r3, #1
 8001062:	428a      	cmp	r2, r1
 8001064:	d003      	beq.n	800106e <_ZN9CTerminal4putfEfj+0x14>
 8001066:	200a      	movs	r0, #10
 8001068:	4343      	muls	r3, r0
 800106a:	3201      	adds	r2, #1
 800106c:	e7f9      	b.n	8001062 <_ZN9CTerminal4putfEfj+0x8>
 800106e:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001072:	ee06 3a90 	vmov	s13, r3
 8001076:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 800107a:	4620      	mov	r0, r4
 800107c:	ee30 0a47 	vsub.f32	s0, s0, s14
 8001080:	eeb8 7a66 	vcvt.f32.u32	s14, s13
 8001084:	ee17 1a90 	vmov	r1, s15
 8001088:	ee20 0a07 	vmul.f32	s0, s0, s14
 800108c:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001090:	ee10 5a10 	vmov	r5, s0
 8001094:	f7ff ff8c 	bl	8000fb0 <_ZN9CTerminal4putiEl>
 8001098:	4620      	mov	r0, r4
 800109a:	212e      	movs	r1, #46	; 0x2e
 800109c:	f7ff ff72 	bl	8000f84 <_ZN9CTerminal7putcharEc>
 80010a0:	4620      	mov	r0, r4
 80010a2:	ea85 71e5 	eor.w	r1, r5, r5, asr #31
 80010a6:	eba1 71e5 	sub.w	r1, r1, r5, asr #31
 80010aa:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80010ae:	f7ff bf7f 	b.w	8000fb0 <_ZN9CTerminal4putiEl>

080010b2 <_ZN9CTerminal6printfEPKcz>:
 80010b2:	b40e      	push	{r1, r2, r3}
 80010b4:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 80010b6:	ab07      	add	r3, sp, #28
 80010b8:	4604      	mov	r4, r0
 80010ba:	f853 6b04 	ldr.w	r6, [r3], #4
 80010be:	9301      	str	r3, [sp, #4]
 80010c0:	2500      	movs	r5, #0
 80010c2:	5d71      	ldrb	r1, [r6, r5]
 80010c4:	2900      	cmp	r1, #0
 80010c6:	d054      	beq.n	8001172 <_ZN9CTerminal6printfEPKcz+0xc0>
 80010c8:	2925      	cmp	r1, #37	; 0x25
 80010ca:	d004      	beq.n	80010d6 <_ZN9CTerminal6printfEPKcz+0x24>
 80010cc:	4620      	mov	r0, r4
 80010ce:	f7ff ff59 	bl	8000f84 <_ZN9CTerminal7putcharEc>
 80010d2:	3501      	adds	r5, #1
 80010d4:	e7f5      	b.n	80010c2 <_ZN9CTerminal6printfEPKcz+0x10>
 80010d6:	1973      	adds	r3, r6, r5
 80010d8:	7859      	ldrb	r1, [r3, #1]
 80010da:	2969      	cmp	r1, #105	; 0x69
 80010dc:	d016      	beq.n	800110c <_ZN9CTerminal6printfEPKcz+0x5a>
 80010de:	d807      	bhi.n	80010f0 <_ZN9CTerminal6printfEPKcz+0x3e>
 80010e0:	2963      	cmp	r1, #99	; 0x63
 80010e2:	d02b      	beq.n	800113c <_ZN9CTerminal6printfEPKcz+0x8a>
 80010e4:	2966      	cmp	r1, #102	; 0x66
 80010e6:	d031      	beq.n	800114c <_ZN9CTerminal6printfEPKcz+0x9a>
 80010e8:	2925      	cmp	r1, #37	; 0x25
 80010ea:	d140      	bne.n	800116e <_ZN9CTerminal6printfEPKcz+0xbc>
 80010ec:	4620      	mov	r0, r4
 80010ee:	e02a      	b.n	8001146 <_ZN9CTerminal6printfEPKcz+0x94>
 80010f0:	2975      	cmp	r1, #117	; 0x75
 80010f2:	d013      	beq.n	800111c <_ZN9CTerminal6printfEPKcz+0x6a>
 80010f4:	2978      	cmp	r1, #120	; 0x78
 80010f6:	d019      	beq.n	800112c <_ZN9CTerminal6printfEPKcz+0x7a>
 80010f8:	2973      	cmp	r1, #115	; 0x73
 80010fa:	d138      	bne.n	800116e <_ZN9CTerminal6printfEPKcz+0xbc>
 80010fc:	9b01      	ldr	r3, [sp, #4]
 80010fe:	4620      	mov	r0, r4
 8001100:	1d1a      	adds	r2, r3, #4
 8001102:	6819      	ldr	r1, [r3, #0]
 8001104:	9201      	str	r2, [sp, #4]
 8001106:	f7ff ff47 	bl	8000f98 <_ZN9CTerminal4putsEPc>
 800110a:	e030      	b.n	800116e <_ZN9CTerminal6printfEPKcz+0xbc>
 800110c:	9b01      	ldr	r3, [sp, #4]
 800110e:	4620      	mov	r0, r4
 8001110:	1d1a      	adds	r2, r3, #4
 8001112:	6819      	ldr	r1, [r3, #0]
 8001114:	9201      	str	r2, [sp, #4]
 8001116:	f7ff ff4b 	bl	8000fb0 <_ZN9CTerminal4putiEl>
 800111a:	e028      	b.n	800116e <_ZN9CTerminal6printfEPKcz+0xbc>
 800111c:	9b01      	ldr	r3, [sp, #4]
 800111e:	4620      	mov	r0, r4
 8001120:	1d1a      	adds	r2, r3, #4
 8001122:	6819      	ldr	r1, [r3, #0]
 8001124:	9201      	str	r2, [sp, #4]
 8001126:	f7ff ff68 	bl	8000ffa <_ZN9CTerminal5putuiEm>
 800112a:	e020      	b.n	800116e <_ZN9CTerminal6printfEPKcz+0xbc>
 800112c:	9b01      	ldr	r3, [sp, #4]
 800112e:	4620      	mov	r0, r4
 8001130:	1d1a      	adds	r2, r3, #4
 8001132:	6819      	ldr	r1, [r3, #0]
 8001134:	9201      	str	r2, [sp, #4]
 8001136:	f7ff ff78 	bl	800102a <_ZN9CTerminal4putxEm>
 800113a:	e018      	b.n	800116e <_ZN9CTerminal6printfEPKcz+0xbc>
 800113c:	9b01      	ldr	r3, [sp, #4]
 800113e:	1d1a      	adds	r2, r3, #4
 8001140:	7819      	ldrb	r1, [r3, #0]
 8001142:	9201      	str	r2, [sp, #4]
 8001144:	4620      	mov	r0, r4
 8001146:	f7ff ff1d 	bl	8000f84 <_ZN9CTerminal7putcharEc>
 800114a:	e010      	b.n	800116e <_ZN9CTerminal6printfEPKcz+0xbc>
 800114c:	9b01      	ldr	r3, [sp, #4]
 800114e:	3307      	adds	r3, #7
 8001150:	f023 0307 	bic.w	r3, r3, #7
 8001154:	f103 0208 	add.w	r2, r3, #8
 8001158:	e9d3 0100 	ldrd	r0, r1, [r3]
 800115c:	9201      	str	r2, [sp, #4]
 800115e:	f001 fdd9 	bl	8002d14 <__aeabi_d2f>
 8001162:	2103      	movs	r1, #3
 8001164:	ee00 0a10 	vmov	s0, r0
 8001168:	4620      	mov	r0, r4
 800116a:	f7ff ff76 	bl	800105a <_ZN9CTerminal4putfEfj>
 800116e:	3502      	adds	r5, #2
 8001170:	e7a7      	b.n	80010c2 <_ZN9CTerminal6printfEPKcz+0x10>
 8001172:	b003      	add	sp, #12
 8001174:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001178:	b003      	add	sp, #12
 800117a:	4770      	bx	lr

0800117c <_ZN4CIMU8imu_readEv>:
 800117c:	b570      	push	{r4, r5, r6, lr}
 800117e:	4c52      	ldr	r4, [pc, #328]	; (80012c8 <_ZN4CIMU8imu_readEv+0x14c>)
 8001180:	4605      	mov	r5, r0
 8001182:	4620      	mov	r0, r4
 8001184:	f000 f986 	bl	8001494 <_ZN4CI2C5StartEv>
 8001188:	4620      	mov	r0, r4
 800118a:	21d4      	movs	r1, #212	; 0xd4
 800118c:	f000 f9ac 	bl	80014e8 <_ZN4CI2C5WriteEh>
 8001190:	21a8      	movs	r1, #168	; 0xa8
 8001192:	4620      	mov	r0, r4
 8001194:	f000 f9a8 	bl	80014e8 <_ZN4CI2C5WriteEh>
 8001198:	4620      	mov	r0, r4
 800119a:	f000 f97b 	bl	8001494 <_ZN4CI2C5StartEv>
 800119e:	4620      	mov	r0, r4
 80011a0:	21d5      	movs	r1, #213	; 0xd5
 80011a2:	f000 f9a1 	bl	80014e8 <_ZN4CI2C5WriteEh>
 80011a6:	4620      	mov	r0, r4
 80011a8:	2101      	movs	r1, #1
 80011aa:	f000 f9e7 	bl	800157c <_ZN4CI2C4ReadEh>
 80011ae:	2101      	movs	r1, #1
 80011b0:	4606      	mov	r6, r0
 80011b2:	4620      	mov	r0, r4
 80011b4:	f000 f9e2 	bl	800157c <_ZN4CI2C4ReadEh>
 80011b8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011bc:	b206      	sxth	r6, r0
 80011be:	626e      	str	r6, [r5, #36]	; 0x24
 80011c0:	4620      	mov	r0, r4
 80011c2:	2101      	movs	r1, #1
 80011c4:	f000 f9da 	bl	800157c <_ZN4CI2C4ReadEh>
 80011c8:	2101      	movs	r1, #1
 80011ca:	4606      	mov	r6, r0
 80011cc:	4620      	mov	r0, r4
 80011ce:	f000 f9d5 	bl	800157c <_ZN4CI2C4ReadEh>
 80011d2:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011d6:	b206      	sxth	r6, r0
 80011d8:	62ae      	str	r6, [r5, #40]	; 0x28
 80011da:	4620      	mov	r0, r4
 80011dc:	2101      	movs	r1, #1
 80011de:	f000 f9cd 	bl	800157c <_ZN4CI2C4ReadEh>
 80011e2:	2100      	movs	r1, #0
 80011e4:	4606      	mov	r6, r0
 80011e6:	4620      	mov	r0, r4
 80011e8:	f000 f9c8 	bl	800157c <_ZN4CI2C4ReadEh>
 80011ec:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011f0:	b206      	sxth	r6, r0
 80011f2:	62ee      	str	r6, [r5, #44]	; 0x2c
 80011f4:	4620      	mov	r0, r4
 80011f6:	f000 f962 	bl	80014be <_ZN4CI2C4StopEv>
 80011fa:	4620      	mov	r0, r4
 80011fc:	f000 f94a 	bl	8001494 <_ZN4CI2C5StartEv>
 8001200:	4620      	mov	r0, r4
 8001202:	213c      	movs	r1, #60	; 0x3c
 8001204:	f000 f970 	bl	80014e8 <_ZN4CI2C5WriteEh>
 8001208:	21a8      	movs	r1, #168	; 0xa8
 800120a:	4620      	mov	r0, r4
 800120c:	f000 f96c 	bl	80014e8 <_ZN4CI2C5WriteEh>
 8001210:	4620      	mov	r0, r4
 8001212:	f000 f93f 	bl	8001494 <_ZN4CI2C5StartEv>
 8001216:	4620      	mov	r0, r4
 8001218:	213d      	movs	r1, #61	; 0x3d
 800121a:	f000 f965 	bl	80014e8 <_ZN4CI2C5WriteEh>
 800121e:	4620      	mov	r0, r4
 8001220:	2101      	movs	r1, #1
 8001222:	f000 f9ab 	bl	800157c <_ZN4CI2C4ReadEh>
 8001226:	2101      	movs	r1, #1
 8001228:	4606      	mov	r6, r0
 800122a:	4620      	mov	r0, r4
 800122c:	f000 f9a6 	bl	800157c <_ZN4CI2C4ReadEh>
 8001230:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001234:	b206      	sxth	r6, r0
 8001236:	632e      	str	r6, [r5, #48]	; 0x30
 8001238:	4620      	mov	r0, r4
 800123a:	2101      	movs	r1, #1
 800123c:	f000 f99e 	bl	800157c <_ZN4CI2C4ReadEh>
 8001240:	2101      	movs	r1, #1
 8001242:	4606      	mov	r6, r0
 8001244:	4620      	mov	r0, r4
 8001246:	f000 f999 	bl	800157c <_ZN4CI2C4ReadEh>
 800124a:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800124e:	b206      	sxth	r6, r0
 8001250:	636e      	str	r6, [r5, #52]	; 0x34
 8001252:	4620      	mov	r0, r4
 8001254:	2101      	movs	r1, #1
 8001256:	f000 f991 	bl	800157c <_ZN4CI2C4ReadEh>
 800125a:	2100      	movs	r1, #0
 800125c:	4606      	mov	r6, r0
 800125e:	4620      	mov	r0, r4
 8001260:	f000 f98c 	bl	800157c <_ZN4CI2C4ReadEh>
 8001264:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001268:	b206      	sxth	r6, r0
 800126a:	63ae      	str	r6, [r5, #56]	; 0x38
 800126c:	4620      	mov	r0, r4
 800126e:	f000 f926 	bl	80014be <_ZN4CI2C4StopEv>
 8001272:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001274:	6868      	ldr	r0, [r5, #4]
 8001276:	682c      	ldr	r4, [r5, #0]
 8001278:	21c8      	movs	r1, #200	; 0xc8
 800127a:	1ac0      	subs	r0, r0, r3
 800127c:	68eb      	ldr	r3, [r5, #12]
 800127e:	fb90 f0f1 	sdiv	r0, r0, r1
 8001282:	4418      	add	r0, r3
 8001284:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8001286:	60e8      	str	r0, [r5, #12]
 8001288:	2264      	movs	r2, #100	; 0x64
 800128a:	435a      	muls	r2, r3
 800128c:	4350      	muls	r0, r2
 800128e:	f640 13e2 	movw	r3, #2530	; 0x9e2
 8001292:	fb90 f0f3 	sdiv	r0, r0, r3
 8001296:	61a8      	str	r0, [r5, #24]
 8001298:	6a68      	ldr	r0, [r5, #36]	; 0x24
 800129a:	1a20      	subs	r0, r4, r0
 800129c:	692c      	ldr	r4, [r5, #16]
 800129e:	fb90 f0f1 	sdiv	r0, r0, r1
 80012a2:	4420      	add	r0, r4
 80012a4:	6128      	str	r0, [r5, #16]
 80012a6:	4350      	muls	r0, r2
 80012a8:	fb90 f0f3 	sdiv	r0, r0, r3
 80012ac:	61e8      	str	r0, [r5, #28]
 80012ae:	68ac      	ldr	r4, [r5, #8]
 80012b0:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 80012b2:	1a20      	subs	r0, r4, r0
 80012b4:	fb90 f1f1 	sdiv	r1, r0, r1
 80012b8:	6968      	ldr	r0, [r5, #20]
 80012ba:	4401      	add	r1, r0
 80012bc:	434a      	muls	r2, r1
 80012be:	fb92 f3f3 	sdiv	r3, r2, r3
 80012c2:	6169      	str	r1, [r5, #20]
 80012c4:	622b      	str	r3, [r5, #32]
 80012c6:	bd70      	pop	{r4, r5, r6, pc}
 80012c8:	20000234 	.word	0x20000234

080012cc <_ZN4CIMU8imu_initEv>:
 80012cc:	230a      	movs	r3, #10
 80012ce:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80012d2:	63c3      	str	r3, [r0, #60]	; 0x3c
 80012d4:	2300      	movs	r3, #0
 80012d6:	4604      	mov	r4, r0
 80012d8:	6003      	str	r3, [r0, #0]
 80012da:	6043      	str	r3, [r0, #4]
 80012dc:	6083      	str	r3, [r0, #8]
 80012de:	60c3      	str	r3, [r0, #12]
 80012e0:	6103      	str	r3, [r0, #16]
 80012e2:	6143      	str	r3, [r0, #20]
 80012e4:	f242 7511 	movw	r5, #10001	; 0x2711
 80012e8:	3d01      	subs	r5, #1
 80012ea:	d001      	beq.n	80012f0 <_ZN4CIMU8imu_initEv+0x24>
 80012ec:	bf00      	nop
 80012ee:	e7fb      	b.n	80012e8 <_ZN4CIMU8imu_initEv+0x1c>
 80012f0:	4832      	ldr	r0, [pc, #200]	; (80013bc <_ZN4CIMU8imu_initEv+0xf0>)
 80012f2:	21d4      	movs	r1, #212	; 0xd4
 80012f4:	220f      	movs	r2, #15
 80012f6:	f000 f96f 	bl	80015d8 <_ZN4CI2C8read_regEhh>
 80012fa:	28d4      	cmp	r0, #212	; 0xd4
 80012fc:	4606      	mov	r6, r0
 80012fe:	d155      	bne.n	80013ac <_ZN4CIMU8imu_initEv+0xe0>
 8001300:	482e      	ldr	r0, [pc, #184]	; (80013bc <_ZN4CIMU8imu_initEv+0xf0>)
 8001302:	213c      	movs	r1, #60	; 0x3c
 8001304:	220f      	movs	r2, #15
 8001306:	f000 f967 	bl	80015d8 <_ZN4CI2C8read_regEhh>
 800130a:	2849      	cmp	r0, #73	; 0x49
 800130c:	d152      	bne.n	80013b4 <_ZN4CIMU8imu_initEv+0xe8>
 800130e:	4631      	mov	r1, r6
 8001310:	482a      	ldr	r0, [pc, #168]	; (80013bc <_ZN4CIMU8imu_initEv+0xf0>)
 8001312:	2220      	movs	r2, #32
 8001314:	23ff      	movs	r3, #255	; 0xff
 8001316:	f000 f919 	bl	800154c <_ZN4CI2C9write_regEhhh>
 800131a:	4631      	mov	r1, r6
 800131c:	4827      	ldr	r0, [pc, #156]	; (80013bc <_ZN4CIMU8imu_initEv+0xf0>)
 800131e:	4e28      	ldr	r6, [pc, #160]	; (80013c0 <_ZN4CIMU8imu_initEv+0xf4>)
 8001320:	2223      	movs	r2, #35	; 0x23
 8001322:	2310      	movs	r3, #16
 8001324:	f000 f912 	bl	800154c <_ZN4CI2C9write_regEhhh>
 8001328:	4824      	ldr	r0, [pc, #144]	; (80013bc <_ZN4CIMU8imu_initEv+0xf0>)
 800132a:	213c      	movs	r1, #60	; 0x3c
 800132c:	221f      	movs	r2, #31
 800132e:	462b      	mov	r3, r5
 8001330:	f000 f90c 	bl	800154c <_ZN4CI2C9write_regEhhh>
 8001334:	4821      	ldr	r0, [pc, #132]	; (80013bc <_ZN4CIMU8imu_initEv+0xf0>)
 8001336:	213c      	movs	r1, #60	; 0x3c
 8001338:	2220      	movs	r2, #32
 800133a:	2367      	movs	r3, #103	; 0x67
 800133c:	f000 f906 	bl	800154c <_ZN4CI2C9write_regEhhh>
 8001340:	481e      	ldr	r0, [pc, #120]	; (80013bc <_ZN4CIMU8imu_initEv+0xf0>)
 8001342:	213c      	movs	r1, #60	; 0x3c
 8001344:	2221      	movs	r2, #33	; 0x21
 8001346:	462b      	mov	r3, r5
 8001348:	f000 f900 	bl	800154c <_ZN4CI2C9write_regEhhh>
 800134c:	3e01      	subs	r6, #1
 800134e:	d001      	beq.n	8001354 <_ZN4CIMU8imu_initEv+0x88>
 8001350:	bf00      	nop
 8001352:	e7fb      	b.n	800134c <_ZN4CIMU8imu_initEv+0x80>
 8001354:	4620      	mov	r0, r4
 8001356:	f7ff ff11 	bl	800117c <_ZN4CIMU8imu_readEv>
 800135a:	2564      	movs	r5, #100	; 0x64
 800135c:	4637      	mov	r7, r6
 800135e:	46b0      	mov	r8, r6
 8001360:	2365      	movs	r3, #101	; 0x65
 8001362:	3b01      	subs	r3, #1
 8001364:	d001      	beq.n	800136a <_ZN4CIMU8imu_initEv+0x9e>
 8001366:	bf00      	nop
 8001368:	e7fb      	b.n	8001362 <_ZN4CIMU8imu_initEv+0x96>
 800136a:	4620      	mov	r0, r4
 800136c:	f7ff ff06 	bl	800117c <_ZN4CIMU8imu_readEv>
 8001370:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8001372:	4498      	add	r8, r3
 8001374:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8001376:	441f      	add	r7, r3
 8001378:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800137a:	3d01      	subs	r5, #1
 800137c:	441e      	add	r6, r3
 800137e:	d1ef      	bne.n	8001360 <_ZN4CIMU8imu_initEv+0x94>
 8001380:	2364      	movs	r3, #100	; 0x64
 8001382:	fb98 f2f3 	sdiv	r2, r8, r3
 8001386:	fb97 f7f3 	sdiv	r7, r7, r3
 800138a:	fb96 f6f3 	sdiv	r6, r6, r3
 800138e:	6022      	str	r2, [r4, #0]
 8001390:	6067      	str	r7, [r4, #4]
 8001392:	60a6      	str	r6, [r4, #8]
 8001394:	6325      	str	r5, [r4, #48]	; 0x30
 8001396:	6365      	str	r5, [r4, #52]	; 0x34
 8001398:	63a5      	str	r5, [r4, #56]	; 0x38
 800139a:	6265      	str	r5, [r4, #36]	; 0x24
 800139c:	62a5      	str	r5, [r4, #40]	; 0x28
 800139e:	62e5      	str	r5, [r4, #44]	; 0x2c
 80013a0:	61a5      	str	r5, [r4, #24]
 80013a2:	61e5      	str	r5, [r4, #28]
 80013a4:	6225      	str	r5, [r4, #32]
 80013a6:	4628      	mov	r0, r5
 80013a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80013ac:	f04f 30ff 	mov.w	r0, #4294967295
 80013b0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80013b4:	f06f 0001 	mvn.w	r0, #1
 80013b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80013bc:	20000234 	.word	0x20000234
 80013c0:	000186a1 	.word	0x000186a1

080013c4 <_ZN4CIMU14get_imu_resultEv>:
 80013c4:	3018      	adds	r0, #24
 80013c6:	4770      	bx	lr

080013c8 <_ZN4CI2C5delayEv>:
 80013c8:	230b      	movs	r3, #11
 80013ca:	3b01      	subs	r3, #1
 80013cc:	d001      	beq.n	80013d2 <_ZN4CI2C5delayEv+0xa>
 80013ce:	bf00      	nop
 80013d0:	e7fb      	b.n	80013ca <_ZN4CI2C5delayEv+0x2>
 80013d2:	4770      	bx	lr

080013d4 <_ZN4CI2C9SetLowSDAEv>:
 80013d4:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80013d6:	4c0c      	ldr	r4, [pc, #48]	; (8001408 <_ZN4CI2C9SetLowSDAEv+0x34>)
 80013d8:	2301      	movs	r3, #1
 80013da:	2203      	movs	r2, #3
 80013dc:	4606      	mov	r6, r0
 80013de:	2580      	movs	r5, #128	; 0x80
 80013e0:	f88d 3004 	strb.w	r3, [sp, #4]
 80013e4:	f88d 3006 	strb.w	r3, [sp, #6]
 80013e8:	4620      	mov	r0, r4
 80013ea:	2300      	movs	r3, #0
 80013ec:	4669      	mov	r1, sp
 80013ee:	f88d 2005 	strb.w	r2, [sp, #5]
 80013f2:	f88d 3007 	strb.w	r3, [sp, #7]
 80013f6:	9500      	str	r5, [sp, #0]
 80013f8:	f000 ff04 	bl	8002204 <GPIO_Init>
 80013fc:	8525      	strh	r5, [r4, #40]	; 0x28
 80013fe:	4630      	mov	r0, r6
 8001400:	f7ff ffe2 	bl	80013c8 <_ZN4CI2C5delayEv>
 8001404:	b002      	add	sp, #8
 8001406:	bd70      	pop	{r4, r5, r6, pc}
 8001408:	48000400 	.word	0x48000400

0800140c <_ZN4CI2C10SetHighSDAEv>:
 800140c:	4b05      	ldr	r3, [pc, #20]	; (8001424 <_ZN4CI2C10SetHighSDAEv+0x18>)
 800140e:	681a      	ldr	r2, [r3, #0]
 8001410:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8001414:	601a      	str	r2, [r3, #0]
 8001416:	681a      	ldr	r2, [r3, #0]
 8001418:	601a      	str	r2, [r3, #0]
 800141a:	2280      	movs	r2, #128	; 0x80
 800141c:	619a      	str	r2, [r3, #24]
 800141e:	f7ff bfd3 	b.w	80013c8 <_ZN4CI2C5delayEv>
 8001422:	bf00      	nop
 8001424:	48000400 	.word	0x48000400

08001428 <_ZN4CI2C9SetLowSCLEv>:
 8001428:	4b02      	ldr	r3, [pc, #8]	; (8001434 <_ZN4CI2C9SetLowSCLEv+0xc>)
 800142a:	2240      	movs	r2, #64	; 0x40
 800142c:	851a      	strh	r2, [r3, #40]	; 0x28
 800142e:	f7ff bfcb 	b.w	80013c8 <_ZN4CI2C5delayEv>
 8001432:	bf00      	nop
 8001434:	48000400 	.word	0x48000400

08001438 <_ZN4CI2C10SetHighSCLEv>:
 8001438:	4b02      	ldr	r3, [pc, #8]	; (8001444 <_ZN4CI2C10SetHighSCLEv+0xc>)
 800143a:	2240      	movs	r2, #64	; 0x40
 800143c:	619a      	str	r2, [r3, #24]
 800143e:	f7ff bfc3 	b.w	80013c8 <_ZN4CI2C5delayEv>
 8001442:	bf00      	nop
 8001444:	48000400 	.word	0x48000400

08001448 <_ZN4CI2C4initEv>:
 8001448:	b513      	push	{r0, r1, r4, lr}
 800144a:	4604      	mov	r4, r0
 800144c:	2101      	movs	r1, #1
 800144e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001452:	f001 fa03 	bl	800285c <RCC_AHBPeriphClockCmd>
 8001456:	23c0      	movs	r3, #192	; 0xc0
 8001458:	9300      	str	r3, [sp, #0]
 800145a:	2301      	movs	r3, #1
 800145c:	2203      	movs	r2, #3
 800145e:	4669      	mov	r1, sp
 8001460:	f88d 3004 	strb.w	r3, [sp, #4]
 8001464:	f88d 3006 	strb.w	r3, [sp, #6]
 8001468:	4809      	ldr	r0, [pc, #36]	; (8001490 <_ZN4CI2C4initEv+0x48>)
 800146a:	f88d 2005 	strb.w	r2, [sp, #5]
 800146e:	2300      	movs	r3, #0
 8001470:	f88d 3007 	strb.w	r3, [sp, #7]
 8001474:	f000 fec6 	bl	8002204 <GPIO_Init>
 8001478:	4620      	mov	r0, r4
 800147a:	f7ff ffdd 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 800147e:	4620      	mov	r0, r4
 8001480:	f7ff ffa8 	bl	80013d4 <_ZN4CI2C9SetLowSDAEv>
 8001484:	4620      	mov	r0, r4
 8001486:	f7ff ffc1 	bl	800140c <_ZN4CI2C10SetHighSDAEv>
 800148a:	b002      	add	sp, #8
 800148c:	bd10      	pop	{r4, pc}
 800148e:	bf00      	nop
 8001490:	48000400 	.word	0x48000400

08001494 <_ZN4CI2C5StartEv>:
 8001494:	b510      	push	{r4, lr}
 8001496:	4604      	mov	r4, r0
 8001498:	f7ff ffce 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 800149c:	4620      	mov	r0, r4
 800149e:	f7ff ffb5 	bl	800140c <_ZN4CI2C10SetHighSDAEv>
 80014a2:	4620      	mov	r0, r4
 80014a4:	f7ff ffc8 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 80014a8:	4620      	mov	r0, r4
 80014aa:	f7ff ff93 	bl	80013d4 <_ZN4CI2C9SetLowSDAEv>
 80014ae:	4620      	mov	r0, r4
 80014b0:	f7ff ffba 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 80014b4:	4620      	mov	r0, r4
 80014b6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80014ba:	f7ff bfa7 	b.w	800140c <_ZN4CI2C10SetHighSDAEv>

080014be <_ZN4CI2C4StopEv>:
 80014be:	b510      	push	{r4, lr}
 80014c0:	4604      	mov	r4, r0
 80014c2:	f7ff ffb1 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 80014c6:	4620      	mov	r0, r4
 80014c8:	f7ff ff84 	bl	80013d4 <_ZN4CI2C9SetLowSDAEv>
 80014cc:	4620      	mov	r0, r4
 80014ce:	f7ff ffb3 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 80014d2:	4620      	mov	r0, r4
 80014d4:	f7ff ff7e 	bl	80013d4 <_ZN4CI2C9SetLowSDAEv>
 80014d8:	4620      	mov	r0, r4
 80014da:	f7ff ffad 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 80014de:	4620      	mov	r0, r4
 80014e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80014e4:	f7ff bf92 	b.w	800140c <_ZN4CI2C10SetHighSDAEv>

080014e8 <_ZN4CI2C5WriteEh>:
 80014e8:	b570      	push	{r4, r5, r6, lr}
 80014ea:	4604      	mov	r4, r0
 80014ec:	460d      	mov	r5, r1
 80014ee:	2608      	movs	r6, #8
 80014f0:	4620      	mov	r0, r4
 80014f2:	f7ff ff99 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 80014f6:	062b      	lsls	r3, r5, #24
 80014f8:	4620      	mov	r0, r4
 80014fa:	d502      	bpl.n	8001502 <_ZN4CI2C5WriteEh+0x1a>
 80014fc:	f7ff ff86 	bl	800140c <_ZN4CI2C10SetHighSDAEv>
 8001500:	e001      	b.n	8001506 <_ZN4CI2C5WriteEh+0x1e>
 8001502:	f7ff ff67 	bl	80013d4 <_ZN4CI2C9SetLowSDAEv>
 8001506:	4620      	mov	r0, r4
 8001508:	3e01      	subs	r6, #1
 800150a:	f7ff ff95 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 800150e:	006d      	lsls	r5, r5, #1
 8001510:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8001514:	b2ed      	uxtb	r5, r5
 8001516:	d1eb      	bne.n	80014f0 <_ZN4CI2C5WriteEh+0x8>
 8001518:	4620      	mov	r0, r4
 800151a:	f7ff ff85 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 800151e:	4620      	mov	r0, r4
 8001520:	f7ff ff74 	bl	800140c <_ZN4CI2C10SetHighSDAEv>
 8001524:	4620      	mov	r0, r4
 8001526:	f7ff ff87 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 800152a:	4b07      	ldr	r3, [pc, #28]	; (8001548 <_ZN4CI2C5WriteEh+0x60>)
 800152c:	8a1d      	ldrh	r5, [r3, #16]
 800152e:	4620      	mov	r0, r4
 8001530:	f7ff ff7a 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 8001534:	b2ad      	uxth	r5, r5
 8001536:	4620      	mov	r0, r4
 8001538:	f7ff ff46 	bl	80013c8 <_ZN4CI2C5delayEv>
 800153c:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8001540:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001544:	bd70      	pop	{r4, r5, r6, pc}
 8001546:	bf00      	nop
 8001548:	48000400 	.word	0x48000400

0800154c <_ZN4CI2C9write_regEhhh>:
 800154c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800154e:	4604      	mov	r4, r0
 8001550:	460e      	mov	r6, r1
 8001552:	4615      	mov	r5, r2
 8001554:	461f      	mov	r7, r3
 8001556:	f7ff ff9d 	bl	8001494 <_ZN4CI2C5StartEv>
 800155a:	4631      	mov	r1, r6
 800155c:	4620      	mov	r0, r4
 800155e:	f7ff ffc3 	bl	80014e8 <_ZN4CI2C5WriteEh>
 8001562:	4629      	mov	r1, r5
 8001564:	4620      	mov	r0, r4
 8001566:	f7ff ffbf 	bl	80014e8 <_ZN4CI2C5WriteEh>
 800156a:	4620      	mov	r0, r4
 800156c:	4639      	mov	r1, r7
 800156e:	f7ff ffbb 	bl	80014e8 <_ZN4CI2C5WriteEh>
 8001572:	4620      	mov	r0, r4
 8001574:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001578:	f7ff bfa1 	b.w	80014be <_ZN4CI2C4StopEv>

0800157c <_ZN4CI2C4ReadEh>:
 800157c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800157e:	4604      	mov	r4, r0
 8001580:	460f      	mov	r7, r1
 8001582:	f7ff ff51 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 8001586:	2608      	movs	r6, #8
 8001588:	2500      	movs	r5, #0
 800158a:	4620      	mov	r0, r4
 800158c:	f7ff ff54 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 8001590:	4b10      	ldr	r3, [pc, #64]	; (80015d4 <_ZN4CI2C4ReadEh+0x58>)
 8001592:	8a1b      	ldrh	r3, [r3, #16]
 8001594:	006d      	lsls	r5, r5, #1
 8001596:	061b      	lsls	r3, r3, #24
 8001598:	b2ed      	uxtb	r5, r5
 800159a:	4620      	mov	r0, r4
 800159c:	f106 36ff 	add.w	r6, r6, #4294967295
 80015a0:	bf48      	it	mi
 80015a2:	f045 0501 	orrmi.w	r5, r5, #1
 80015a6:	f7ff ff3f 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 80015aa:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 80015ae:	d1ec      	bne.n	800158a <_ZN4CI2C4ReadEh+0xe>
 80015b0:	4620      	mov	r0, r4
 80015b2:	b117      	cbz	r7, 80015ba <_ZN4CI2C4ReadEh+0x3e>
 80015b4:	f7ff ff0e 	bl	80013d4 <_ZN4CI2C9SetLowSDAEv>
 80015b8:	e001      	b.n	80015be <_ZN4CI2C4ReadEh+0x42>
 80015ba:	f7ff ff27 	bl	800140c <_ZN4CI2C10SetHighSDAEv>
 80015be:	4620      	mov	r0, r4
 80015c0:	f7ff ff3a 	bl	8001438 <_ZN4CI2C10SetHighSCLEv>
 80015c4:	4620      	mov	r0, r4
 80015c6:	f7ff ff2f 	bl	8001428 <_ZN4CI2C9SetLowSCLEv>
 80015ca:	4620      	mov	r0, r4
 80015cc:	f7ff ff1e 	bl	800140c <_ZN4CI2C10SetHighSDAEv>
 80015d0:	4628      	mov	r0, r5
 80015d2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80015d4:	48000400 	.word	0x48000400

080015d8 <_ZN4CI2C8read_regEhh>:
 80015d8:	b570      	push	{r4, r5, r6, lr}
 80015da:	4604      	mov	r4, r0
 80015dc:	460d      	mov	r5, r1
 80015de:	4616      	mov	r6, r2
 80015e0:	f7ff ff58 	bl	8001494 <_ZN4CI2C5StartEv>
 80015e4:	4629      	mov	r1, r5
 80015e6:	4620      	mov	r0, r4
 80015e8:	f7ff ff7e 	bl	80014e8 <_ZN4CI2C5WriteEh>
 80015ec:	4631      	mov	r1, r6
 80015ee:	4620      	mov	r0, r4
 80015f0:	f7ff ff7a 	bl	80014e8 <_ZN4CI2C5WriteEh>
 80015f4:	4620      	mov	r0, r4
 80015f6:	f7ff ff4d 	bl	8001494 <_ZN4CI2C5StartEv>
 80015fa:	f045 0101 	orr.w	r1, r5, #1
 80015fe:	4620      	mov	r0, r4
 8001600:	f7ff ff72 	bl	80014e8 <_ZN4CI2C5WriteEh>
 8001604:	2100      	movs	r1, #0
 8001606:	4620      	mov	r0, r4
 8001608:	f7ff ffb8 	bl	800157c <_ZN4CI2C4ReadEh>
 800160c:	4605      	mov	r5, r0
 800160e:	4620      	mov	r0, r4
 8001610:	f7ff ff55 	bl	80014be <_ZN4CI2C4StopEv>
 8001614:	4628      	mov	r0, r5
 8001616:	bd70      	pop	{r4, r5, r6, pc}

08001618 <_ZN4CRGB8rgb_readEh>:
 8001618:	b570      	push	{r4, r5, r6, lr}
 800161a:	4604      	mov	r4, r0
 800161c:	460e      	mov	r6, r1
 800161e:	f7ff f939 	bl	8000894 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8001622:	4620      	mov	r0, r4
 8001624:	2172      	movs	r1, #114	; 0x72
 8001626:	f7ff f95f 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800162a:	21b4      	movs	r1, #180	; 0xb4
 800162c:	4620      	mov	r0, r4
 800162e:	f7ff f95b 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001632:	4620      	mov	r0, r4
 8001634:	f7ff f92e 	bl	8000894 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8001638:	1d25      	adds	r5, r4, #4
 800163a:	4620      	mov	r0, r4
 800163c:	2173      	movs	r1, #115	; 0x73
 800163e:	f7ff f953 	bl	80008e8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001642:	4620      	mov	r0, r4
 8001644:	2101      	movs	r1, #1
 8001646:	462a      	mov	r2, r5
 8001648:	f7ff f990 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800164c:	2300      	movs	r3, #0
 800164e:	18e2      	adds	r2, r4, r3
 8001650:	18d1      	adds	r1, r2, r3
 8001652:	3301      	adds	r3, #1
 8001654:	7912      	ldrb	r2, [r2, #4]
 8001656:	f8a1 2044 	strh.w	r2, [r1, #68]	; 0x44
 800165a:	2b09      	cmp	r3, #9
 800165c:	d1f7      	bne.n	800164e <_ZN4CRGB8rgb_readEh+0x36>
 800165e:	462a      	mov	r2, r5
 8001660:	4620      	mov	r0, r4
 8001662:	2101      	movs	r1, #1
 8001664:	f7ff f982 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001668:	4622      	mov	r2, r4
 800166a:	2300      	movs	r3, #0
 800166c:	18e1      	adds	r1, r4, r3
 800166e:	3301      	adds	r3, #1
 8001670:	7908      	ldrb	r0, [r1, #4]
 8001672:	f8b2 1044 	ldrh.w	r1, [r2, #68]	; 0x44
 8001676:	2b09      	cmp	r3, #9
 8001678:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 800167c:	f8a2 1044 	strh.w	r1, [r2, #68]	; 0x44
 8001680:	f102 0202 	add.w	r2, r2, #2
 8001684:	d1f2      	bne.n	800166c <_ZN4CRGB8rgb_readEh+0x54>
 8001686:	4620      	mov	r0, r4
 8001688:	2101      	movs	r1, #1
 800168a:	462a      	mov	r2, r5
 800168c:	f7ff f96e 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001690:	2300      	movs	r3, #0
 8001692:	18e2      	adds	r2, r4, r3
 8001694:	18d1      	adds	r1, r2, r3
 8001696:	3301      	adds	r3, #1
 8001698:	7912      	ldrb	r2, [r2, #4]
 800169a:	81ca      	strh	r2, [r1, #14]
 800169c:	2b09      	cmp	r3, #9
 800169e:	d1f8      	bne.n	8001692 <_ZN4CRGB8rgb_readEh+0x7a>
 80016a0:	462a      	mov	r2, r5
 80016a2:	4620      	mov	r0, r4
 80016a4:	2101      	movs	r1, #1
 80016a6:	f7ff f961 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016aa:	4622      	mov	r2, r4
 80016ac:	2300      	movs	r3, #0
 80016ae:	18e1      	adds	r1, r4, r3
 80016b0:	3301      	adds	r3, #1
 80016b2:	7908      	ldrb	r0, [r1, #4]
 80016b4:	89d1      	ldrh	r1, [r2, #14]
 80016b6:	2b09      	cmp	r3, #9
 80016b8:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 80016bc:	81d1      	strh	r1, [r2, #14]
 80016be:	f102 0202 	add.w	r2, r2, #2
 80016c2:	d1f4      	bne.n	80016ae <_ZN4CRGB8rgb_readEh+0x96>
 80016c4:	4620      	mov	r0, r4
 80016c6:	2101      	movs	r1, #1
 80016c8:	462a      	mov	r2, r5
 80016ca:	f7ff f94f 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016ce:	2300      	movs	r3, #0
 80016d0:	18e2      	adds	r2, r4, r3
 80016d2:	18d1      	adds	r1, r2, r3
 80016d4:	3301      	adds	r3, #1
 80016d6:	7912      	ldrb	r2, [r2, #4]
 80016d8:	840a      	strh	r2, [r1, #32]
 80016da:	2b09      	cmp	r3, #9
 80016dc:	d1f8      	bne.n	80016d0 <_ZN4CRGB8rgb_readEh+0xb8>
 80016de:	462a      	mov	r2, r5
 80016e0:	4620      	mov	r0, r4
 80016e2:	2101      	movs	r1, #1
 80016e4:	f7ff f942 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016e8:	4622      	mov	r2, r4
 80016ea:	2300      	movs	r3, #0
 80016ec:	18e1      	adds	r1, r4, r3
 80016ee:	3301      	adds	r3, #1
 80016f0:	7908      	ldrb	r0, [r1, #4]
 80016f2:	8c11      	ldrh	r1, [r2, #32]
 80016f4:	2b09      	cmp	r3, #9
 80016f6:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 80016fa:	8411      	strh	r1, [r2, #32]
 80016fc:	f102 0202 	add.w	r2, r2, #2
 8001700:	d1f4      	bne.n	80016ec <_ZN4CRGB8rgb_readEh+0xd4>
 8001702:	4620      	mov	r0, r4
 8001704:	2101      	movs	r1, #1
 8001706:	462a      	mov	r2, r5
 8001708:	f7ff f930 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800170c:	2300      	movs	r3, #0
 800170e:	18e2      	adds	r2, r4, r3
 8001710:	18d1      	adds	r1, r2, r3
 8001712:	3301      	adds	r3, #1
 8001714:	7912      	ldrb	r2, [r2, #4]
 8001716:	864a      	strh	r2, [r1, #50]	; 0x32
 8001718:	2b09      	cmp	r3, #9
 800171a:	d1f8      	bne.n	800170e <_ZN4CRGB8rgb_readEh+0xf6>
 800171c:	462a      	mov	r2, r5
 800171e:	4620      	mov	r0, r4
 8001720:	2101      	movs	r1, #1
 8001722:	f7ff f923 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001726:	4622      	mov	r2, r4
 8001728:	2300      	movs	r3, #0
 800172a:	18e1      	adds	r1, r4, r3
 800172c:	3301      	adds	r3, #1
 800172e:	7908      	ldrb	r0, [r1, #4]
 8001730:	8e51      	ldrh	r1, [r2, #50]	; 0x32
 8001732:	2b09      	cmp	r3, #9
 8001734:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001738:	8651      	strh	r1, [r2, #50]	; 0x32
 800173a:	f102 0202 	add.w	r2, r2, #2
 800173e:	d1f4      	bne.n	800172a <_ZN4CRGB8rgb_readEh+0x112>
 8001740:	4620      	mov	r0, r4
 8001742:	2101      	movs	r1, #1
 8001744:	462a      	mov	r2, r5
 8001746:	f7ff f911 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800174a:	2300      	movs	r3, #0
 800174c:	18e2      	adds	r2, r4, r3
 800174e:	18d1      	adds	r1, r2, r3
 8001750:	3301      	adds	r3, #1
 8001752:	7912      	ldrb	r2, [r2, #4]
 8001754:	f8a1 2056 	strh.w	r2, [r1, #86]	; 0x56
 8001758:	2b09      	cmp	r3, #9
 800175a:	d1f7      	bne.n	800174c <_ZN4CRGB8rgb_readEh+0x134>
 800175c:	462a      	mov	r2, r5
 800175e:	4620      	mov	r0, r4
 8001760:	2100      	movs	r1, #0
 8001762:	f7ff f903 	bl	800096c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001766:	4622      	mov	r2, r4
 8001768:	2300      	movs	r3, #0
 800176a:	18e1      	adds	r1, r4, r3
 800176c:	3301      	adds	r3, #1
 800176e:	7908      	ldrb	r0, [r1, #4]
 8001770:	f8b2 1056 	ldrh.w	r1, [r2, #86]	; 0x56
 8001774:	2b09      	cmp	r3, #9
 8001776:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 800177a:	f8a2 1056 	strh.w	r1, [r2, #86]	; 0x56
 800177e:	f102 0202 	add.w	r2, r2, #2
 8001782:	d1f2      	bne.n	800176a <_ZN4CRGB8rgb_readEh+0x152>
 8001784:	4620      	mov	r0, r4
 8001786:	f7ff f89a 	bl	80008be <_ZN8CRGB_I2C11rgb_i2cStopEv>
 800178a:	b336      	cbz	r6, 80017da <_ZN4CRGB8rgb_readEh+0x1c2>
 800178c:	2300      	movs	r3, #0
 800178e:	89e1      	ldrh	r1, [r4, #14]
 8001790:	f8b4 209e 	ldrh.w	r2, [r4, #158]	; 0x9e
 8001794:	440a      	add	r2, r1
 8001796:	f8a4 209e 	strh.w	r2, [r4, #158]	; 0x9e
 800179a:	8c21      	ldrh	r1, [r4, #32]
 800179c:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 80017a0:	440a      	add	r2, r1
 80017a2:	f8a4 20b0 	strh.w	r2, [r4, #176]	; 0xb0
 80017a6:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 80017a8:	f8b4 20c2 	ldrh.w	r2, [r4, #194]	; 0xc2
 80017ac:	440a      	add	r2, r1
 80017ae:	f8a4 20c2 	strh.w	r2, [r4, #194]	; 0xc2
 80017b2:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
 80017b6:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 80017ba:	440a      	add	r2, r1
 80017bc:	f8a4 20e6 	strh.w	r2, [r4, #230]	; 0xe6
 80017c0:	f8b4 1044 	ldrh.w	r1, [r4, #68]	; 0x44
 80017c4:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 80017c8:	3301      	adds	r3, #1
 80017ca:	440a      	add	r2, r1
 80017cc:	2b09      	cmp	r3, #9
 80017ce:	f8a4 20d4 	strh.w	r2, [r4, #212]	; 0xd4
 80017d2:	f104 0402 	add.w	r4, r4, #2
 80017d6:	d1da      	bne.n	800178e <_ZN4CRGB8rgb_readEh+0x176>
 80017d8:	bd70      	pop	{r4, r5, r6, pc}
 80017da:	b672      	cpsid	i
 80017dc:	89e0      	ldrh	r0, [r4, #14]
 80017de:	f8b4 309e 	ldrh.w	r3, [r4, #158]	; 0x9e
 80017e2:	8c21      	ldrh	r1, [r4, #32]
 80017e4:	8e62      	ldrh	r2, [r4, #50]	; 0x32
 80017e6:	f8b4 5056 	ldrh.w	r5, [r4, #86]	; 0x56
 80017ea:	1ac0      	subs	r0, r0, r3
 80017ec:	f8b4 30b0 	ldrh.w	r3, [r4, #176]	; 0xb0
 80017f0:	1ac9      	subs	r1, r1, r3
 80017f2:	f8b4 30c2 	ldrh.w	r3, [r4, #194]	; 0xc2
 80017f6:	1ad3      	subs	r3, r2, r3
 80017f8:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 80017fc:	1aaa      	subs	r2, r5, r2
 80017fe:	f8a4 2056 	strh.w	r2, [r4, #86]	; 0x56
 8001802:	f8b4 5044 	ldrh.w	r5, [r4, #68]	; 0x44
 8001806:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 800180a:	b280      	uxth	r0, r0
 800180c:	b289      	uxth	r1, r1
 800180e:	b29b      	uxth	r3, r3
 8001810:	1aaa      	subs	r2, r5, r2
 8001812:	81e0      	strh	r0, [r4, #14]
 8001814:	8421      	strh	r1, [r4, #32]
 8001816:	8663      	strh	r3, [r4, #50]	; 0x32
 8001818:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 800181c:	b662      	cpsie	i
 800181e:	b200      	sxth	r0, r0
 8001820:	b209      	sxth	r1, r1
 8001822:	1842      	adds	r2, r0, r1
 8001824:	b21b      	sxth	r3, r3
 8001826:	18d2      	adds	r2, r2, r3
 8001828:	d011      	beq.n	800184e <_ZN4CRGB8rgb_readEh+0x236>
 800182a:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 800182e:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
 8001832:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8001836:	fb90 f0f2 	sdiv	r0, r0, r2
 800183a:	fb91 f1f2 	sdiv	r1, r1, r2
 800183e:	fb93 f2f2 	sdiv	r2, r3, r2
 8001842:	f8a4 0068 	strh.w	r0, [r4, #104]	; 0x68
 8001846:	f8a4 107a 	strh.w	r1, [r4, #122]	; 0x7a
 800184a:	f8a4 208c 	strh.w	r2, [r4, #140]	; 0x8c
 800184e:	3601      	adds	r6, #1
 8001850:	2e09      	cmp	r6, #9
 8001852:	f104 0402 	add.w	r4, r4, #2
 8001856:	d1c0      	bne.n	80017da <_ZN4CRGB8rgb_readEh+0x1c2>
 8001858:	bd70      	pop	{r4, r5, r6, pc}
	...

0800185c <_ZN4CRGB8rgb_initEv>:
 800185c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 800185e:	4604      	mov	r4, r0
 8001860:	4602      	mov	r2, r0
 8001862:	2509      	movs	r5, #9
 8001864:	2000      	movs	r0, #0
 8001866:	3d01      	subs	r5, #1
 8001868:	81d0      	strh	r0, [r2, #14]
 800186a:	8410      	strh	r0, [r2, #32]
 800186c:	8650      	strh	r0, [r2, #50]	; 0x32
 800186e:	f8a2 0056 	strh.w	r0, [r2, #86]	; 0x56
 8001872:	f8a2 0044 	strh.w	r0, [r2, #68]	; 0x44
 8001876:	f8a2 009e 	strh.w	r0, [r2, #158]	; 0x9e
 800187a:	f8a2 00b0 	strh.w	r0, [r2, #176]	; 0xb0
 800187e:	f8a2 00c2 	strh.w	r0, [r2, #194]	; 0xc2
 8001882:	f8a2 00e6 	strh.w	r0, [r2, #230]	; 0xe6
 8001886:	f8a2 00d4 	strh.w	r0, [r2, #212]	; 0xd4
 800188a:	f8a2 0068 	strh.w	r0, [r2, #104]	; 0x68
 800188e:	f8a2 007a 	strh.w	r0, [r2, #122]	; 0x7a
 8001892:	f8a2 008c 	strh.w	r0, [r2, #140]	; 0x8c
 8001896:	f102 0202 	add.w	r2, r2, #2
 800189a:	d1e3      	bne.n	8001864 <_ZN4CRGB8rgb_initEv+0x8>
 800189c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80018a0:	2208      	movs	r2, #8
 80018a2:	851a      	strh	r2, [r3, #40]	; 0x28
 80018a4:	4620      	mov	r0, r4
 80018a6:	f7ff f8f1 	bl	8000a8c <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80018aa:	4620      	mov	r0, r4
 80018ac:	2172      	movs	r1, #114	; 0x72
 80018ae:	2281      	movs	r2, #129	; 0x81
 80018b0:	23ff      	movs	r3, #255	; 0xff
 80018b2:	f7ff f842 	bl	800093a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80018b6:	4620      	mov	r0, r4
 80018b8:	2172      	movs	r1, #114	; 0x72
 80018ba:	2283      	movs	r2, #131	; 0x83
 80018bc:	23ff      	movs	r3, #255	; 0xff
 80018be:	f7ff f83c 	bl	800093a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80018c2:	4620      	mov	r0, r4
 80018c4:	2172      	movs	r1, #114	; 0x72
 80018c6:	228d      	movs	r2, #141	; 0x8d
 80018c8:	462b      	mov	r3, r5
 80018ca:	f7ff f836 	bl	800093a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80018ce:	2172      	movs	r1, #114	; 0x72
 80018d0:	2280      	movs	r2, #128	; 0x80
 80018d2:	2303      	movs	r3, #3
 80018d4:	4620      	mov	r0, r4
 80018d6:	f7ff f830 	bl	800093a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80018da:	4620      	mov	r0, r4
 80018dc:	f7ff f922 	bl	8000b24 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>
 80018e0:	228f      	movs	r2, #143	; 0x8f
 80018e2:	2323      	movs	r3, #35	; 0x23
 80018e4:	2172      	movs	r1, #114	; 0x72
 80018e6:	4620      	mov	r0, r4
 80018e8:	f7ff f827 	bl	800093a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80018ec:	4620      	mov	r0, r4
 80018ee:	f7ff f91c 	bl	8000b2a <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>
 80018f2:	ae01      	add	r6, sp, #4
 80018f4:	4620      	mov	r0, r4
 80018f6:	4629      	mov	r1, r5
 80018f8:	f7ff fe8e 	bl	8001618 <_ZN4CRGB8rgb_readEh>
 80018fc:	2292      	movs	r2, #146	; 0x92
 80018fe:	4620      	mov	r0, r4
 8001900:	2172      	movs	r1, #114	; 0x72
 8001902:	4633      	mov	r3, r6
 8001904:	f7ff f8a0 	bl	8000a48 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8001908:	462a      	mov	r2, r5
 800190a:	5cb3      	ldrb	r3, [r6, r2]
 800190c:	2b69      	cmp	r3, #105	; 0x69
 800190e:	d002      	beq.n	8001916 <_ZN4CRGB8rgb_initEv+0xba>
 8001910:	2301      	movs	r3, #1
 8001912:	4093      	lsls	r3, r2
 8001914:	431d      	orrs	r5, r3
 8001916:	3201      	adds	r2, #1
 8001918:	2a09      	cmp	r2, #9
 800191a:	d1f6      	bne.n	800190a <_ZN4CRGB8rgb_initEv+0xae>
 800191c:	2604      	movs	r6, #4
 800191e:	4620      	mov	r0, r4
 8001920:	2101      	movs	r1, #1
 8001922:	f7ff fe79 	bl	8001618 <_ZN4CRGB8rgb_readEh>
 8001926:	3e01      	subs	r6, #1
 8001928:	d1f9      	bne.n	800191e <_ZN4CRGB8rgb_initEv+0xc2>
 800192a:	4622      	mov	r2, r4
 800192c:	2109      	movs	r1, #9
 800192e:	f9b2 309e 	ldrsh.w	r3, [r2, #158]	; 0x9e
 8001932:	089b      	lsrs	r3, r3, #2
 8001934:	f8a2 309e 	strh.w	r3, [r2, #158]	; 0x9e
 8001938:	f9b2 30b0 	ldrsh.w	r3, [r2, #176]	; 0xb0
 800193c:	089b      	lsrs	r3, r3, #2
 800193e:	f8a2 30b0 	strh.w	r3, [r2, #176]	; 0xb0
 8001942:	f9b2 30c2 	ldrsh.w	r3, [r2, #194]	; 0xc2
 8001946:	089b      	lsrs	r3, r3, #2
 8001948:	f8a2 30c2 	strh.w	r3, [r2, #194]	; 0xc2
 800194c:	f9b2 30e6 	ldrsh.w	r3, [r2, #230]	; 0xe6
 8001950:	089b      	lsrs	r3, r3, #2
 8001952:	f8a2 30e6 	strh.w	r3, [r2, #230]	; 0xe6
 8001956:	f9b2 30d4 	ldrsh.w	r3, [r2, #212]	; 0xd4
 800195a:	3901      	subs	r1, #1
 800195c:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8001960:	f8a2 30d4 	strh.w	r3, [r2, #212]	; 0xd4
 8001964:	f102 0202 	add.w	r2, r2, #2
 8001968:	d1e1      	bne.n	800192e <_ZN4CRGB8rgb_initEv+0xd2>
 800196a:	4620      	mov	r0, r4
 800196c:	f7ff fe54 	bl	8001618 <_ZN4CRGB8rgb_readEh>
 8001970:	b115      	cbz	r5, 8001978 <_ZN4CRGB8rgb_initEv+0x11c>
 8001972:	4803      	ldr	r0, [pc, #12]	; (8001980 <_ZN4CRGB8rgb_initEv+0x124>)
 8001974:	1b40      	subs	r0, r0, r5
 8001976:	e000      	b.n	800197a <_ZN4CRGB8rgb_initEv+0x11e>
 8001978:	4628      	mov	r0, r5
 800197a:	b004      	add	sp, #16
 800197c:	bd70      	pop	{r4, r5, r6, pc}
 800197e:	bf00      	nop
 8001980:	fffffc18 	.word	0xfffffc18

08001984 <_ZN4CRGB14get_rgb_resultEv>:
 8001984:	300e      	adds	r0, #14
 8001986:	4770      	bx	lr

08001988 <_ZN10MathVectorILj9EE4initEv>:
 8001988:	2300      	movs	r3, #0
 800198a:	18c2      	adds	r2, r0, r3
 800198c:	3304      	adds	r3, #4
 800198e:	2100      	movs	r1, #0
 8001990:	2b24      	cmp	r3, #36	; 0x24
 8001992:	6011      	str	r1, [r2, #0]
 8001994:	d1f9      	bne.n	800198a <_ZN10MathVectorILj9EE4initEv+0x2>
 8001996:	4770      	bx	lr

08001998 <_ZN10MathVectorILj3EE3mixERS0_f>:
 8001998:	2300      	movs	r3, #0
 800199a:	18ca      	adds	r2, r1, r3
 800199c:	edd2 7a00 	vldr	s15, [r2]
 80019a0:	ed90 7a00 	vldr	s14, [r0]
 80019a4:	eef7 6a00 	vmov.f32	s13, #112	; 0x70
 80019a8:	ee76 6ac0 	vsub.f32	s13, s13, s0
 80019ac:	ee60 7a27 	vmul.f32	s15, s0, s15
 80019b0:	3304      	adds	r3, #4
 80019b2:	eee6 7a87 	vfma.f32	s15, s13, s14
 80019b6:	2b0c      	cmp	r3, #12
 80019b8:	ece0 7a01 	vstmia	r0!, {s15}
 80019bc:	d1ed      	bne.n	800199a <_ZN10MathVectorILj3EE3mixERS0_f+0x2>
 80019be:	4770      	bx	lr

080019c0 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>:
 80019c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80019c2:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8001a2c <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x6c>
 80019c6:	f8d0 6600 	ldr.w	r6, [r0, #1536]	; 0x600
 80019ca:	2500      	movs	r5, #0
 80019cc:	462b      	mov	r3, r5
 80019ce:	42b3      	cmp	r3, r6
 80019d0:	d021      	beq.n	8001a16 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x56>
 80019d2:	f04f 0c24 	mov.w	ip, #36	; 0x24
 80019d6:	eddf 7a16 	vldr	s15, [pc, #88]	; 8001a30 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x70>
 80019da:	fb0c 0c03 	mla	ip, ip, r3, r0
 80019de:	2400      	movs	r4, #0
 80019e0:	eb01 0e04 	add.w	lr, r1, r4
 80019e4:	eb0c 0704 	add.w	r7, ip, r4
 80019e8:	ed9e 6a00 	vldr	s12, [lr]
 80019ec:	edd7 6a00 	vldr	s13, [r7]
 80019f0:	3404      	adds	r4, #4
 80019f2:	ee76 6a66 	vsub.f32	s13, s12, s13
 80019f6:	2c24      	cmp	r4, #36	; 0x24
 80019f8:	eee6 7aa6 	vfma.f32	s15, s13, s13
 80019fc:	d1f0      	bne.n	80019e0 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x20>
 80019fe:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001a02:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a06:	bf54      	ite	pl
 8001a08:	eef0 7a47 	vmovpl.f32	s15, s14
 8001a0c:	461d      	movmi	r5, r3
 8001a0e:	eeb0 7a67 	vmov.f32	s14, s15
 8001a12:	3301      	adds	r3, #1
 8001a14:	e7db      	b.n	80019ce <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0xe>
 8001a16:	f500 6390 	add.w	r3, r0, #1152	; 0x480
 8001a1a:	210c      	movs	r1, #12
 8001a1c:	4610      	mov	r0, r2
 8001a1e:	fb01 3105 	mla	r1, r1, r5, r3
 8001a22:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 8001a26:	f7ff ffb7 	bl	8001998 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001a2a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001a2c:	4cbebc20 	.word	0x4cbebc20
 8001a30:	00000000 	.word	0x00000000

08001a34 <_ZN21CLearningLineFollower3runEv>:
 8001a34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001a38:	ed2d 8b06 	vpush	{d8-d10}
 8001a3c:	2310      	movs	r3, #16
 8001a3e:	f200 6ba4 	addw	fp, r0, #1700	; 0x6a4
 8001a42:	f8c0 36a0 	str.w	r3, [r0, #1696]	; 0x6a0
 8001a46:	f100 07a0 	add.w	r7, r0, #160	; 0xa0
 8001a4a:	4bac      	ldr	r3, [pc, #688]	; (8001cfc <_ZN21CLearningLineFollower3runEv+0x2c8>)
 8001a4c:	f8cb 3000 	str.w	r3, [fp]
 8001a50:	b083      	sub	sp, #12
 8001a52:	4604      	mov	r4, r0
 8001a54:	f500 69a4 	add.w	r9, r0, #1312	; 0x520
 8001a58:	463d      	mov	r5, r7
 8001a5a:	f105 0624 	add.w	r6, r5, #36	; 0x24
 8001a5e:	48a8      	ldr	r0, [pc, #672]	; (8001d00 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001a60:	f7fe fcca 	bl	80003f8 <_ZN5CMath3rndEv>
 8001a64:	eca5 0a01 	vstmia	r5!, {s0}
 8001a68:	42b5      	cmp	r5, r6
 8001a6a:	d1f8      	bne.n	8001a5e <_ZN21CLearningLineFollower3runEv+0x2a>
 8001a6c:	454d      	cmp	r5, r9
 8001a6e:	d1f4      	bne.n	8001a5a <_ZN21CLearningLineFollower3runEv+0x26>
 8001a70:	f504 62a5 	add.w	r2, r4, #1320	; 0x528
 8001a74:	2320      	movs	r3, #32
 8001a76:	ed9f 8aa3 	vldr	s16, [pc, #652]	; 8001d04 <_ZN21CLearningLineFollower3runEv+0x2d0>
 8001a7a:	ee18 1a10 	vmov	r1, s16
 8001a7e:	3b01      	subs	r3, #1
 8001a80:	ed02 8a02 	vstr	s16, [r2, #-8]
 8001a84:	ed02 8a01 	vstr	s16, [r2, #-4]
 8001a88:	f842 1b0c 	str.w	r1, [r2], #12
 8001a8c:	d1f3      	bne.n	8001a76 <_ZN21CLearningLineFollower3runEv+0x42>
 8001a8e:	f104 0858 	add.w	r8, r4, #88	; 0x58
 8001a92:	6523      	str	r3, [r4, #80]	; 0x50
 8001a94:	6563      	str	r3, [r4, #84]	; 0x54
 8001a96:	4640      	mov	r0, r8
 8001a98:	f104 0a7c 	add.w	sl, r4, #124	; 0x7c
 8001a9c:	f7ff ff74 	bl	8001988 <_ZN10MathVectorILj9EE4initEv>
 8001aa0:	4650      	mov	r0, sl
 8001aa2:	f7ff ff71 	bl	8001988 <_ZN10MathVectorILj9EE4initEv>
 8001aa6:	f504 63d5 	add.w	r3, r4, #1704	; 0x6a8
 8001aaa:	ed83 8a00 	vstr	s16, [r3]
 8001aae:	ed83 8a01 	vstr	s16, [r3, #4]
 8001ab2:	ed83 8a02 	vstr	s16, [r3, #8]
 8001ab6:	eebf 9a00 	vmov.f32	s18, #240	; 0xf0
 8001aba:	2100      	movs	r1, #0
 8001abc:	4892      	ldr	r0, [pc, #584]	; (8001d08 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001abe:	f7ff fdab 	bl	8001618 <_ZN4CRGB8rgb_readEh>
 8001ac2:	4891      	ldr	r0, [pc, #580]	; (8001d08 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001ac4:	f7ff ff5e 	bl	8001984 <_ZN4CRGB14get_rgb_resultEv>
 8001ac8:	f104 062c 	add.w	r6, r4, #44	; 0x2c
 8001acc:	4601      	mov	r1, r0
 8001ace:	4620      	mov	r0, r4
 8001ad0:	f7fe fcb8 	bl	8000444 <_ZN13CLinePosition7processEP10sRGBResult>
 8001ad4:	f104 0558 	add.w	r5, r4, #88	; 0x58
 8001ad8:	4631      	mov	r1, r6
 8001ada:	4620      	mov	r0, r4
 8001adc:	f7fe fd53 	bl	8000586 <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE>
 8001ae0:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8001ae2:	f104 0e7c 	add.w	lr, r4, #124	; 0x7c
 8001ae6:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001aea:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8001aec:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001af0:	682b      	ldr	r3, [r5, #0]
 8001af2:	f8ce 3000 	str.w	r3, [lr]
 8001af6:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8001af8:	f104 0e58 	add.w	lr, r4, #88	; 0x58
 8001afc:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001b00:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8001b02:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001b06:	6833      	ldr	r3, [r6, #0]
 8001b08:	602b      	str	r3, [r5, #0]
 8001b0a:	f504 66d5 	add.w	r6, r4, #1704	; 0x6a8
 8001b0e:	4632      	mov	r2, r6
 8001b10:	4638      	mov	r0, r7
 8001b12:	4641      	mov	r1, r8
 8001b14:	f7ff ff54 	bl	80019c0 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001b18:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8001b1a:	6523      	str	r3, [r4, #80]	; 0x50
 8001b1c:	4878      	ldr	r0, [pc, #480]	; (8001d00 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001b1e:	f7fe fc51 	bl	80003c4 <_ZN5CMath4randEv>
 8001b22:	2364      	movs	r3, #100	; 0x64
 8001b24:	fbb0 f2f3 	udiv	r2, r0, r3
 8001b28:	fb02 0013 	mls	r0, r2, r3, r0
 8001b2c:	2813      	cmp	r0, #19
 8001b2e:	d809      	bhi.n	8001b44 <_ZN21CLearningLineFollower3runEv+0x110>
 8001b30:	4873      	ldr	r0, [pc, #460]	; (8001d00 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001b32:	f7fe fc47 	bl	80003c4 <_ZN5CMath4randEv>
 8001b36:	2503      	movs	r5, #3
 8001b38:	fbb0 f5f5 	udiv	r5, r0, r5
 8001b3c:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 8001b40:	1b45      	subs	r5, r0, r5
 8001b42:	e013      	b.n	8001b6c <_ZN21CLearningLineFollower3runEv+0x138>
 8001b44:	2500      	movs	r5, #0
 8001b46:	4632      	mov	r2, r6
 8001b48:	462b      	mov	r3, r5
 8001b4a:	f504 61d5 	add.w	r1, r4, #1704	; 0x6a8
 8001b4e:	eb01 0185 	add.w	r1, r1, r5, lsl #2
 8001b52:	ecb2 7a01 	vldmia	r2!, {s14}
 8001b56:	edd1 7a00 	vldr	s15, [r1]
 8001b5a:	eeb4 7a67 	vcmp.f32	s14, s15
 8001b5e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001b62:	bfc8      	it	gt
 8001b64:	461d      	movgt	r5, r3
 8001b66:	3301      	adds	r3, #1
 8001b68:	2b03      	cmp	r3, #3
 8001b6a:	d1ee      	bne.n	8001b4a <_ZN21CLearningLineFollower3runEv+0x116>
 8001b6c:	2d01      	cmp	r5, #1
 8001b6e:	6565      	str	r5, [r4, #84]	; 0x54
 8001b70:	d014      	beq.n	8001b9c <_ZN21CLearningLineFollower3runEv+0x168>
 8001b72:	d30b      	bcc.n	8001b8c <_ZN21CLearningLineFollower3runEv+0x158>
 8001b74:	2d02      	cmp	r5, #2
 8001b76:	d11c      	bne.n	8001bb2 <_ZN21CLearningLineFollower3runEv+0x17e>
 8001b78:	4864      	ldr	r0, [pc, #400]	; (8001d0c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b7a:	2100      	movs	r1, #0
 8001b7c:	2221      	movs	r2, #33	; 0x21
 8001b7e:	f7fe fd7f 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001b82:	4862      	ldr	r0, [pc, #392]	; (8001d0c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b84:	2101      	movs	r1, #1
 8001b86:	f06f 020b 	mvn.w	r2, #11
 8001b8a:	e010      	b.n	8001bae <_ZN21CLearningLineFollower3runEv+0x17a>
 8001b8c:	485f      	ldr	r0, [pc, #380]	; (8001d0c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b8e:	2100      	movs	r1, #0
 8001b90:	2221      	movs	r2, #33	; 0x21
 8001b92:	f7fe fd75 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001b96:	485d      	ldr	r0, [pc, #372]	; (8001d0c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b98:	2101      	movs	r1, #1
 8001b9a:	e007      	b.n	8001bac <_ZN21CLearningLineFollower3runEv+0x178>
 8001b9c:	485b      	ldr	r0, [pc, #364]	; (8001d0c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b9e:	2100      	movs	r1, #0
 8001ba0:	f06f 020b 	mvn.w	r2, #11
 8001ba4:	f7fe fd6c 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001ba8:	4858      	ldr	r0, [pc, #352]	; (8001d0c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001baa:	4629      	mov	r1, r5
 8001bac:	2221      	movs	r2, #33	; 0x21
 8001bae:	f7fe fd67 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001bb2:	4857      	ldr	r0, [pc, #348]	; (8001d10 <_ZN21CLearningLineFollower3runEv+0x2dc>)
 8001bb4:	2132      	movs	r1, #50	; 0x32
 8001bb6:	f7ff f923 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8001bba:	2100      	movs	r1, #0
 8001bbc:	4852      	ldr	r0, [pc, #328]	; (8001d08 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001bbe:	f7ff fd2b 	bl	8001618 <_ZN4CRGB8rgb_readEh>
 8001bc2:	4851      	ldr	r0, [pc, #324]	; (8001d08 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001bc4:	f7ff fede 	bl	8001984 <_ZN4CRGB14get_rgb_resultEv>
 8001bc8:	4601      	mov	r1, r0
 8001bca:	4620      	mov	r0, r4
 8001bcc:	f7fe fc3a 	bl	8000444 <_ZN13CLinePosition7processEP10sRGBResult>
 8001bd0:	4620      	mov	r0, r4
 8001bd2:	f7fe fcd5 	bl	8000580 <_ZN13CLinePosition17get_line_positionEv>
 8001bd6:	484a      	ldr	r0, [pc, #296]	; (8001d00 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001bd8:	f7fe fbeb 	bl	80003b2 <_ZN5CMath3absEf>
 8001bdc:	eef7 8a00 	vmov.f32	s17, #112	; 0x70
 8001be0:	ee38 0ac0 	vsub.f32	s0, s17, s0
 8001be4:	6d22      	ldr	r2, [r4, #80]	; 0x50
 8001be6:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8001be8:	9201      	str	r2, [sp, #4]
 8001bea:	eef6 7a00 	vmov.f32	s15, #96	; 0x60
 8001bee:	4638      	mov	r0, r7
 8001bf0:	4641      	mov	r1, r8
 8001bf2:	4632      	mov	r2, r6
 8001bf4:	ee70 9a67 	vsub.f32	s19, s0, s15
 8001bf8:	9300      	str	r3, [sp, #0]
 8001bfa:	f7ff fee1 	bl	80019c0 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001bfe:	9b00      	ldr	r3, [sp, #0]
 8001c00:	f504 65d5 	add.w	r5, r4, #1704	; 0x6a8
 8001c04:	eb05 0383 	add.w	r3, r5, r3, lsl #2
 8001c08:	edd3 7a00 	vldr	s15, [r3]
 8001c0c:	ed95 7a00 	vldr	s14, [r5]
 8001c10:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001c14:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c18:	bf58      	it	pl
 8001c1a:	eeb0 7a67 	vmovpl.f32	s14, s15
 8001c1e:	edd5 7a01 	vldr	s15, [r5, #4]
 8001c22:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001c26:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c2a:	eeb0 aa68 	vmov.f32	s20, s17
 8001c2e:	edd5 8a02 	vldr	s17, [r5, #8]
 8001c32:	bf58      	it	pl
 8001c34:	eef0 7a47 	vmovpl.f32	s15, s14
 8001c38:	eef4 7ae8 	vcmpe.f32	s15, s17
 8001c3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c40:	4638      	mov	r0, r7
 8001c42:	4651      	mov	r1, sl
 8001c44:	4632      	mov	r2, r6
 8001c46:	bf58      	it	pl
 8001c48:	eef0 8a67 	vmovpl.f32	s17, s15
 8001c4c:	f7ff feb8 	bl	80019c0 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001c50:	eddf 7a30 	vldr	s15, [pc, #192]	; 8001d14 <_ZN21CLearningLineFollower3runEv+0x2e0>
 8001c54:	9b01      	ldr	r3, [sp, #4]
 8001c56:	f8d4 16a0 	ldr.w	r1, [r4, #1696]	; 0x6a0
 8001c5a:	eeb0 7a69 	vmov.f32	s14, s19
 8001c5e:	eea8 7aa7 	vfma.f32	s14, s17, s15
 8001c62:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8001c66:	2200      	movs	r2, #0
 8001c68:	4610      	mov	r0, r2
 8001c6a:	ed85 7a00 	vstr	s14, [r5]
 8001c6e:	ed9f 7a2a 	vldr	s14, [pc, #168]	; 8001d18 <_ZN21CLearningLineFollower3runEv+0x2e4>
 8001c72:	463d      	mov	r5, r7
 8001c74:	4288      	cmp	r0, r1
 8001c76:	d01e      	beq.n	8001cb6 <_ZN21CLearningLineFollower3runEv+0x282>
 8001c78:	eddf 7a22 	vldr	s15, [pc, #136]	; 8001d04 <_ZN21CLearningLineFollower3runEv+0x2d0>
 8001c7c:	2300      	movs	r3, #0
 8001c7e:	eb04 0c03 	add.w	ip, r4, r3
 8001c82:	eb05 0e03 	add.w	lr, r5, r3
 8001c86:	ed9c 6a1f 	vldr	s12, [ip, #124]	; 0x7c
 8001c8a:	edde 6a00 	vldr	s13, [lr]
 8001c8e:	3304      	adds	r3, #4
 8001c90:	ee76 6a66 	vsub.f32	s13, s12, s13
 8001c94:	2b24      	cmp	r3, #36	; 0x24
 8001c96:	eee6 7aa6 	vfma.f32	s15, s13, s13
 8001c9a:	d1f0      	bne.n	8001c7e <_ZN21CLearningLineFollower3runEv+0x24a>
 8001c9c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001ca0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001ca4:	bf54      	ite	pl
 8001ca6:	eef0 7a47 	vmovpl.f32	s15, s14
 8001caa:	4602      	movmi	r2, r0
 8001cac:	3524      	adds	r5, #36	; 0x24
 8001cae:	3001      	adds	r0, #1
 8001cb0:	eeb0 7a67 	vmov.f32	s14, s15
 8001cb4:	e7de      	b.n	8001c74 <_ZN21CLearningLineFollower3runEv+0x240>
 8001cb6:	291f      	cmp	r1, #31
 8001cb8:	f104 007c 	add.w	r0, r4, #124	; 0x7c
 8001cbc:	f04f 0324 	mov.w	r3, #36	; 0x24
 8001cc0:	d82c      	bhi.n	8001d1c <_ZN21CLearningLineFollower3runEv+0x2e8>
 8001cc2:	fb03 7201 	mla	r2, r3, r1, r7
 8001cc6:	2300      	movs	r3, #0
 8001cc8:	18c5      	adds	r5, r0, r3
 8001cca:	ed92 7a00 	vldr	s14, [r2]
 8001cce:	edd5 7a00 	vldr	s15, [r5]
 8001cd2:	eee7 7a08 	vfma.f32	s15, s14, s16
 8001cd6:	3304      	adds	r3, #4
 8001cd8:	2b24      	cmp	r3, #36	; 0x24
 8001cda:	ece2 7a01 	vstmia	r2!, {s15}
 8001cde:	d1f3      	bne.n	8001cc8 <_ZN21CLearningLineFollower3runEv+0x294>
 8001ce0:	200c      	movs	r0, #12
 8001ce2:	fb00 9001 	mla	r0, r0, r1, r9
 8001ce6:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 8001cea:	4631      	mov	r1, r6
 8001cec:	f7ff fe54 	bl	8001998 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001cf0:	f8d4 36a0 	ldr.w	r3, [r4, #1696]	; 0x6a0
 8001cf4:	3301      	adds	r3, #1
 8001cf6:	f8c4 36a0 	str.w	r3, [r4, #1696]	; 0x6a0
 8001cfa:	e02a      	b.n	8001d52 <_ZN21CLearningLineFollower3runEv+0x31e>
 8001cfc:	3dcccccd 	.word	0x3dcccccd
 8001d00:	200001bc 	.word	0x200001bc
 8001d04:	00000000 	.word	0x00000000
 8001d08:	20000038 	.word	0x20000038
 8001d0c:	200001a8 	.word	0x200001a8
 8001d10:	200001f8 	.word	0x200001f8
 8001d14:	3f666666 	.word	0x3f666666
 8001d18:	4cbebc20 	.word	0x4cbebc20
 8001d1c:	ed9b 0a00 	vldr	s0, [fp]
 8001d20:	fb03 7102 	mla	r1, r3, r2, r7
 8001d24:	2300      	movs	r3, #0
 8001d26:	18c5      	adds	r5, r0, r3
 8001d28:	edd5 7a00 	vldr	s15, [r5]
 8001d2c:	ed91 7a00 	vldr	s14, [r1]
 8001d30:	ee7a 6a40 	vsub.f32	s13, s20, s0
 8001d34:	ee60 7a27 	vmul.f32	s15, s0, s15
 8001d38:	3304      	adds	r3, #4
 8001d3a:	eee6 7a87 	vfma.f32	s15, s13, s14
 8001d3e:	2b24      	cmp	r3, #36	; 0x24
 8001d40:	ece1 7a01 	vstmia	r1!, {s15}
 8001d44:	d1ef      	bne.n	8001d26 <_ZN21CLearningLineFollower3runEv+0x2f2>
 8001d46:	200c      	movs	r0, #12
 8001d48:	fb00 9002 	mla	r0, r0, r2, r9
 8001d4c:	4631      	mov	r1, r6
 8001d4e:	f7ff fe23 	bl	8001998 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001d52:	4620      	mov	r0, r4
 8001d54:	f7fe fc12 	bl	800057c <_ZN13CLinePosition7on_lineEv>
 8001d58:	4605      	mov	r5, r0
 8001d5a:	b9f0      	cbnz	r0, 8001d9a <_ZN21CLearningLineFollower3runEv+0x366>
 8001d5c:	481a      	ldr	r0, [pc, #104]	; (8001dc8 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d5e:	4629      	mov	r1, r5
 8001d60:	f06f 0220 	mvn.w	r2, #32
 8001d64:	f7fe fc8c 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001d68:	f06f 0220 	mvn.w	r2, #32
 8001d6c:	4816      	ldr	r0, [pc, #88]	; (8001dc8 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d6e:	2101      	movs	r1, #1
 8001d70:	f7fe fc86 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001d74:	4815      	ldr	r0, [pc, #84]	; (8001dcc <_ZN21CLearningLineFollower3runEv+0x398>)
 8001d76:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 8001d7a:	f7ff f841 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8001d7e:	4812      	ldr	r0, [pc, #72]	; (8001dc8 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d80:	4629      	mov	r1, r5
 8001d82:	462a      	mov	r2, r5
 8001d84:	f7fe fc7c 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001d88:	480f      	ldr	r0, [pc, #60]	; (8001dc8 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d8a:	2101      	movs	r1, #1
 8001d8c:	462a      	mov	r2, r5
 8001d8e:	f7fe fc77 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001d92:	480e      	ldr	r0, [pc, #56]	; (8001dcc <_ZN21CLearningLineFollower3runEv+0x398>)
 8001d94:	2164      	movs	r1, #100	; 0x64
 8001d96:	f7ff f833 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8001d9a:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8001dd0 <_ZN21CLearningLineFollower3runEv+0x39c>
 8001d9e:	480d      	ldr	r0, [pc, #52]	; (8001dd4 <_ZN21CLearningLineFollower3runEv+0x3a0>)
 8001da0:	490d      	ldr	r1, [pc, #52]	; (8001dd8 <_ZN21CLearningLineFollower3runEv+0x3a4>)
 8001da2:	ee69 9aa7 	vmul.f32	s19, s19, s15
 8001da6:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8001ddc <_ZN21CLearningLineFollower3runEv+0x3a8>
 8001daa:	eee9 9a27 	vfma.f32	s19, s18, s15
 8001dae:	eddf 7a0c 	vldr	s15, [pc, #48]	; 8001de0 <_ZN21CLearningLineFollower3runEv+0x3ac>
 8001db2:	ee69 7aa7 	vmul.f32	s15, s19, s15
 8001db6:	eeb0 9a69 	vmov.f32	s18, s19
 8001dba:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001dbe:	ee17 2a90 	vmov	r2, s15
 8001dc2:	f7ff f976 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8001dc6:	e678      	b.n	8001aba <_ZN21CLearningLineFollower3runEv+0x86>
 8001dc8:	200001a8 	.word	0x200001a8
 8001dcc:	200001f8 	.word	0x200001f8
 8001dd0:	3c23d70a 	.word	0x3c23d70a
 8001dd4:	20000038 	.word	0x20000038
 8001dd8:	08002e0c 	.word	0x08002e0c
 8001ddc:	3f7d70a4 	.word	0x3f7d70a4
 8001de0:	447a0000 	.word	0x447a0000

08001de4 <_ZN5CDemo4initEv>:
 8001de4:	4770      	bx	lr
	...

08001de8 <_ZN5CDemo10blink_taskEv>:
 8001de8:	b508      	push	{r3, lr}
 8001dea:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001dee:	480a      	ldr	r0, [pc, #40]	; (8001e18 <_ZN5CDemo10blink_taskEv+0x30>)
 8001df0:	f7fe ff50 	bl	8000c94 <_ZN5CGPIO7gpio_onEm>
 8001df4:	4809      	ldr	r0, [pc, #36]	; (8001e1c <_ZN5CDemo10blink_taskEv+0x34>)
 8001df6:	f7fe fff5 	bl	8000de4 <_ZN6CTimer8get_timeEv>
 8001dfa:	4909      	ldr	r1, [pc, #36]	; (8001e20 <_ZN5CDemo10blink_taskEv+0x38>)
 8001dfc:	4602      	mov	r2, r0
 8001dfe:	4806      	ldr	r0, [pc, #24]	; (8001e18 <_ZN5CDemo10blink_taskEv+0x30>)
 8001e00:	f7ff f957 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8001e04:	4805      	ldr	r0, [pc, #20]	; (8001e1c <_ZN5CDemo10blink_taskEv+0x34>)
 8001e06:	210a      	movs	r1, #10
 8001e08:	f7fe fffa 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8001e0c:	4802      	ldr	r0, [pc, #8]	; (8001e18 <_ZN5CDemo10blink_taskEv+0x30>)
 8001e0e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001e12:	f7fe ff45 	bl	8000ca0 <_ZN5CGPIO8gpio_offEm>
 8001e16:	e7e8      	b.n	8001dea <_ZN5CDemo10blink_taskEv+0x2>
 8001e18:	20000038 	.word	0x20000038
 8001e1c:	200001f8 	.word	0x200001f8
 8001e20:	08002df4 	.word	0x08002df4

08001e24 <_ZN5CDemo10moves_taskEv>:
 8001e24:	b570      	push	{r4, r5, r6, lr}
 8001e26:	4c1c      	ldr	r4, [pc, #112]	; (8001e98 <_ZN5CDemo10moves_taskEv+0x74>)
 8001e28:	4d1c      	ldr	r5, [pc, #112]	; (8001e9c <_ZN5CDemo10moves_taskEv+0x78>)
 8001e2a:	4620      	mov	r0, r4
 8001e2c:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001e30:	2232      	movs	r2, #50	; 0x32
 8001e32:	2300      	movs	r3, #0
 8001e34:	f7fe fa12 	bl	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e38:	4620      	mov	r0, r4
 8001e3a:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001e3e:	2232      	movs	r2, #50	; 0x32
 8001e40:	2300      	movs	r3, #0
 8001e42:	f7fe fa0b 	bl	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e46:	4620      	mov	r0, r4
 8001e48:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001e4c:	2232      	movs	r2, #50	; 0x32
 8001e4e:	2300      	movs	r3, #0
 8001e50:	f7fe fa04 	bl	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e54:	4620      	mov	r0, r4
 8001e56:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001e5a:	2232      	movs	r2, #50	; 0x32
 8001e5c:	2300      	movs	r3, #0
 8001e5e:	f7fe f9fd 	bl	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e62:	4620      	mov	r0, r4
 8001e64:	4629      	mov	r1, r5
 8001e66:	2232      	movs	r2, #50	; 0x32
 8001e68:	2300      	movs	r3, #0
 8001e6a:	f7fe f9f7 	bl	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e6e:	4620      	mov	r0, r4
 8001e70:	4629      	mov	r1, r5
 8001e72:	2232      	movs	r2, #50	; 0x32
 8001e74:	2300      	movs	r3, #0
 8001e76:	f7fe f9f1 	bl	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e7a:	4620      	mov	r0, r4
 8001e7c:	4629      	mov	r1, r5
 8001e7e:	2232      	movs	r2, #50	; 0x32
 8001e80:	2300      	movs	r3, #0
 8001e82:	f7fe f9eb 	bl	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e86:	4620      	mov	r0, r4
 8001e88:	4629      	mov	r1, r5
 8001e8a:	2232      	movs	r2, #50	; 0x32
 8001e8c:	2300      	movs	r3, #0
 8001e8e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001e92:	f7fe b9e3 	b.w	800025c <_ZN7CKodama12rotate_robotEllPFlvE>
 8001e96:	bf00      	nop
 8001e98:	20000038 	.word	0x20000038
 8001e9c:	fffffc7c 	.word	0xfffffc7c

08001ea0 <_ZN5CDemo24basic_line_follower_taskEv>:
 8001ea0:	b510      	push	{r4, lr}
 8001ea2:	b094      	sub	sp, #80	; 0x50
 8001ea4:	a809      	add	r0, sp, #36	; 0x24
 8001ea6:	f7fe fac1 	bl	800042c <_ZN13CLinePositionC1Ev>
 8001eaa:	a801      	add	r0, sp, #4
 8001eac:	eeb2 0a04 	vmov.f32	s0, #36	; 0x24
 8001eb0:	eddf 0a38 	vldr	s1, [pc, #224]	; 8001f94 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001eb4:	eddf 1a38 	vldr	s3, [pc, #224]	; 8001f98 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8001eb8:	eeb2 1a00 	vmov.f32	s2, #32
 8001ebc:	f7fe fa40 	bl	8000340 <_ZN4CPIDC1Effff>
 8001ec0:	4836      	ldr	r0, [pc, #216]	; (8001f9c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001ec2:	2100      	movs	r1, #0
 8001ec4:	220a      	movs	r2, #10
 8001ec6:	f7fe ffad 	bl	8000e24 <_ZN6CTimer22event_timer_set_periodEhm>
 8001eca:	4834      	ldr	r0, [pc, #208]	; (8001f9c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001ecc:	2100      	movs	r1, #0
 8001ece:	f7fe ffbd 	bl	8000e4c <_ZN6CTimer17event_timer_checkEh>
 8001ed2:	2800      	cmp	r0, #0
 8001ed4:	d0f9      	beq.n	8001eca <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001ed6:	2100      	movs	r1, #0
 8001ed8:	4831      	ldr	r0, [pc, #196]	; (8001fa0 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001eda:	f7ff fb9d 	bl	8001618 <_ZN4CRGB8rgb_readEh>
 8001ede:	4830      	ldr	r0, [pc, #192]	; (8001fa0 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001ee0:	f7ff fd50 	bl	8001984 <_ZN4CRGB14get_rgb_resultEv>
 8001ee4:	4601      	mov	r1, r0
 8001ee6:	a809      	add	r0, sp, #36	; 0x24
 8001ee8:	f7fe faac 	bl	8000444 <_ZN13CLinePosition7processEP10sRGBResult>
 8001eec:	a809      	add	r0, sp, #36	; 0x24
 8001eee:	f7fe fb45 	bl	800057c <_ZN13CLinePosition7on_lineEv>
 8001ef2:	4604      	mov	r4, r0
 8001ef4:	a809      	add	r0, sp, #36	; 0x24
 8001ef6:	f7fe fb43 	bl	8000580 <_ZN13CLinePosition17get_line_positionEv>
 8001efa:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8001fa4 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 8001efe:	4828      	ldr	r0, [pc, #160]	; (8001fa0 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001f00:	4929      	ldr	r1, [pc, #164]	; (8001fa8 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001f02:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001f06:	4622      	mov	r2, r4
 8001f08:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001f0c:	ee10 3a10 	vmov	r3, s0
 8001f10:	f7ff f8cf 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8001f14:	a809      	add	r0, sp, #36	; 0x24
 8001f16:	f7fe fb31 	bl	800057c <_ZN13CLinePosition7on_lineEv>
 8001f1a:	4604      	mov	r4, r0
 8001f1c:	b1d0      	cbz	r0, 8001f54 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 8001f1e:	a809      	add	r0, sp, #36	; 0x24
 8001f20:	f7fe fb2e 	bl	8000580 <_ZN13CLinePosition17get_line_positionEv>
 8001f24:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8001f94 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001f28:	a801      	add	r0, sp, #4
 8001f2a:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8001f2e:	f7fe fa0d 	bl	800034c <_ZN4CPID7processEf>
 8001f32:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001f36:	481d      	ldr	r0, [pc, #116]	; (8001fac <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f38:	ee10 4a10 	vmov	r4, s0
 8001f3c:	2100      	movs	r1, #0
 8001f3e:	f104 0219 	add.w	r2, r4, #25
 8001f42:	f7fe fb9d 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001f46:	4819      	ldr	r0, [pc, #100]	; (8001fac <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f48:	2101      	movs	r1, #1
 8001f4a:	f1c4 0219 	rsb	r2, r4, #25
 8001f4e:	f7fe fb97 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001f52:	e7ba      	b.n	8001eca <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001f54:	4621      	mov	r1, r4
 8001f56:	4815      	ldr	r0, [pc, #84]	; (8001fac <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f58:	f06f 0218 	mvn.w	r2, #24
 8001f5c:	f7fe fb90 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001f60:	f06f 0218 	mvn.w	r2, #24
 8001f64:	4811      	ldr	r0, [pc, #68]	; (8001fac <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f66:	2101      	movs	r1, #1
 8001f68:	f7fe fb8a 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001f6c:	480b      	ldr	r0, [pc, #44]	; (8001f9c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001f6e:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001f72:	f7fe ff45 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8001f76:	4621      	mov	r1, r4
 8001f78:	4622      	mov	r2, r4
 8001f7a:	480c      	ldr	r0, [pc, #48]	; (8001fac <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f7c:	f7fe fb80 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001f80:	480a      	ldr	r0, [pc, #40]	; (8001fac <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f82:	2101      	movs	r1, #1
 8001f84:	4622      	mov	r2, r4
 8001f86:	f7fe fb7b 	bl	8000680 <_ZN6CMotor9set_motorEml>
 8001f8a:	4804      	ldr	r0, [pc, #16]	; (8001f9c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001f8c:	2164      	movs	r1, #100	; 0x64
 8001f8e:	f7fe ff37 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8001f92:	e79a      	b.n	8001eca <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001f94:	00000000 	.word	0x00000000
 8001f98:	42c80000 	.word	0x42c80000
 8001f9c:	200001f8 	.word	0x200001f8
 8001fa0:	20000038 	.word	0x20000038
 8001fa4:	447a0000 	.word	0x447a0000
 8001fa8:	08002e09 	.word	0x08002e09
 8001fac:	200001a8 	.word	0x200001a8

08001fb0 <_ZN5CDemo3runEj>:
 8001fb0:	2902      	cmp	r1, #2
 8001fb2:	b508      	push	{r3, lr}
 8001fb4:	d007      	beq.n	8001fc6 <_ZN5CDemo3runEj+0x16>
 8001fb6:	2903      	cmp	r1, #3
 8001fb8:	d007      	beq.n	8001fca <_ZN5CDemo3runEj+0x1a>
 8001fba:	2901      	cmp	r1, #1
 8001fbc:	d10a      	bne.n	8001fd4 <_ZN5CDemo3runEj+0x24>
 8001fbe:	f7ff ff31 	bl	8001e24 <_ZN5CDemo10moves_taskEv>
 8001fc2:	f7ff ff11 	bl	8001de8 <_ZN5CDemo10blink_taskEv>
 8001fc6:	f7ff ff6b 	bl	8001ea0 <_ZN5CDemo24basic_line_follower_taskEv>
 8001fca:	4803      	ldr	r0, [pc, #12]	; (8001fd8 <_ZN5CDemo3runEj+0x28>)
 8001fcc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001fd0:	f7ff bd30 	b.w	8001a34 <_ZN21CLearningLineFollower3runEv>
 8001fd4:	bd08      	pop	{r3, pc}
 8001fd6:	bf00      	nop
 8001fd8:	20000238 	.word	0x20000238
 8001fdc:	00000000 	.word	0x00000000

08001fe0 <main>:
 8001fe0:	b530      	push	{r4, r5, lr}
 8001fe2:	b08f      	sub	sp, #60	; 0x3c
 8001fe4:	f000 fa80 	bl	80024e8 <sytem_clock_init>
 8001fe8:	4863      	ldr	r0, [pc, #396]	; (8002178 <main+0x198>)
 8001fea:	f7fe f8ff 	bl	80001ec <_ZN7CKodama4initEv>
 8001fee:	210a      	movs	r1, #10
 8001ff0:	4861      	ldr	r0, [pc, #388]	; (8002178 <main+0x198>)
 8001ff2:	f7fe f930 	bl	8000256 <_ZN7CKodama6set_dtEl>
 8001ff6:	a548      	add	r5, pc, #288	; (adr r5, 8002118 <main+0x138>)
 8001ff8:	e9d5 4500 	ldrd	r4, r5, [r5]
 8001ffc:	485e      	ldr	r0, [pc, #376]	; (8002178 <main+0x198>)
 8001ffe:	f7fe f917 	bl	8000230 <_ZN7CKodama5sleepEv>
 8002002:	2204      	movs	r2, #4
 8002004:	2308      	movs	r3, #8
 8002006:	9300      	str	r3, [sp, #0]
 8002008:	485b      	ldr	r0, [pc, #364]	; (8002178 <main+0x198>)
 800200a:	495c      	ldr	r1, [pc, #368]	; (800217c <main+0x19c>)
 800200c:	4613      	mov	r3, r2
 800200e:	f7ff f850 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8002012:	4859      	ldr	r0, [pc, #356]	; (8002178 <main+0x198>)
 8002014:	495a      	ldr	r1, [pc, #360]	; (8002180 <main+0x1a0>)
 8002016:	4622      	mov	r2, r4
 8002018:	462b      	mov	r3, r5
 800201a:	f7ff f84a 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 800201e:	4b59      	ldr	r3, [pc, #356]	; (8002184 <main+0x1a4>)
 8002020:	4855      	ldr	r0, [pc, #340]	; (8002178 <main+0x198>)
 8002022:	4959      	ldr	r1, [pc, #356]	; (8002188 <main+0x1a8>)
 8002024:	2200      	movs	r2, #0
 8002026:	e9cd 2300 	strd	r2, r3, [sp]
 800202a:	a33d      	add	r3, pc, #244	; (adr r3, 8002120 <main+0x140>)
 800202c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002030:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8002034:	a33c      	add	r3, pc, #240	; (adr r3, 8002128 <main+0x148>)
 8002036:	e9d3 2300 	ldrd	r2, r3, [r3]
 800203a:	e9cd 2306 	strd	r2, r3, [sp, #24]
 800203e:	a33c      	add	r3, pc, #240	; (adr r3, 8002130 <main+0x150>)
 8002040:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002044:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8002048:	a33b      	add	r3, pc, #236	; (adr r3, 8002138 <main+0x158>)
 800204a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800204e:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8002052:	a33b      	add	r3, pc, #236	; (adr r3, 8002140 <main+0x160>)
 8002054:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002058:	e9cd 4504 	strd	r4, r5, [sp, #16]
 800205c:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8002060:	2200      	movs	r2, #0
 8002062:	2300      	movs	r3, #0
 8002064:	f7ff f825 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8002068:	4b48      	ldr	r3, [pc, #288]	; (800218c <main+0x1ac>)
 800206a:	4843      	ldr	r0, [pc, #268]	; (8002178 <main+0x198>)
 800206c:	4946      	ldr	r1, [pc, #280]	; (8002188 <main+0x1a8>)
 800206e:	2200      	movs	r2, #0
 8002070:	e9cd 2300 	strd	r2, r3, [sp]
 8002074:	a334      	add	r3, pc, #208	; (adr r3, 8002148 <main+0x168>)
 8002076:	e9d3 2300 	ldrd	r2, r3, [r3]
 800207a:	e9cd 2302 	strd	r2, r3, [sp, #8]
 800207e:	a334      	add	r3, pc, #208	; (adr r3, 8002150 <main+0x170>)
 8002080:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002084:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8002088:	a333      	add	r3, pc, #204	; (adr r3, 8002158 <main+0x178>)
 800208a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800208e:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8002092:	a333      	add	r3, pc, #204	; (adr r3, 8002160 <main+0x180>)
 8002094:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002098:	e9cd 2308 	strd	r2, r3, [sp, #32]
 800209c:	a332      	add	r3, pc, #200	; (adr r3, 8002168 <main+0x188>)
 800209e:	e9d3 2300 	ldrd	r2, r3, [r3]
 80020a2:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 80020a6:	a332      	add	r3, pc, #200	; (adr r3, 8002170 <main+0x190>)
 80020a8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80020ac:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 80020b0:	2200      	movs	r2, #0
 80020b2:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
 80020b6:	f7fe fffc 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 80020ba:	482f      	ldr	r0, [pc, #188]	; (8002178 <main+0x198>)
 80020bc:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80020c0:	f7fe fdf4 	bl	8000cac <_ZN5CGPIO7gpio_inEm>
 80020c4:	b148      	cbz	r0, 80020da <main+0xfa>
 80020c6:	482c      	ldr	r0, [pc, #176]	; (8002178 <main+0x198>)
 80020c8:	f7fe f8b6 	bl	8000238 <_ZN7CKodama6wakeupEv>
 80020cc:	4830      	ldr	r0, [pc, #192]	; (8002190 <main+0x1b0>)
 80020ce:	f7ff fe89 	bl	8001de4 <_ZN5CDemo4initEv>
 80020d2:	482f      	ldr	r0, [pc, #188]	; (8002190 <main+0x1b0>)
 80020d4:	2103      	movs	r1, #3
 80020d6:	f7ff ff6b 	bl	8001fb0 <_ZN5CDemo3runEj>
 80020da:	4827      	ldr	r0, [pc, #156]	; (8002178 <main+0x198>)
 80020dc:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80020e0:	f7fe fdd8 	bl	8000c94 <_ZN5CGPIO7gpio_onEm>
 80020e4:	482b      	ldr	r0, [pc, #172]	; (8002194 <main+0x1b4>)
 80020e6:	210a      	movs	r1, #10
 80020e8:	f7fe fe8a 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 80020ec:	4822      	ldr	r0, [pc, #136]	; (8002178 <main+0x198>)
 80020ee:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80020f2:	f7fe fdd5 	bl	8000ca0 <_ZN5CGPIO8gpio_offEm>
 80020f6:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80020fa:	4826      	ldr	r0, [pc, #152]	; (8002194 <main+0x1b4>)
 80020fc:	f7fe fe80 	bl	8000e00 <_ZN6CTimer8delay_msEm>
 8002100:	4824      	ldr	r0, [pc, #144]	; (8002194 <main+0x1b4>)
 8002102:	f7fe fe6f 	bl	8000de4 <_ZN6CTimer8get_timeEv>
 8002106:	4924      	ldr	r1, [pc, #144]	; (8002198 <main+0x1b8>)
 8002108:	4602      	mov	r2, r0
 800210a:	481b      	ldr	r0, [pc, #108]	; (8002178 <main+0x198>)
 800210c:	f7fe ffd1 	bl	80010b2 <_ZN9CTerminal6printfEPKcz>
 8002110:	e7d3      	b.n	80020ba <main+0xda>
 8002112:	bf00      	nop
 8002114:	f3af 8000 	nop.w
 8002118:	60000000 	.word	0x60000000
 800211c:	400921fb 	.word	0x400921fb
 8002120:	00000000 	.word	0x00000000
 8002124:	3fbf9ad0 	.word	0x3fbf9ad0
 8002128:	20000000 	.word	0x20000000
 800212c:	40406251 	.word	0x40406251
 8002130:	60000000 	.word	0x60000000
 8002134:	40934a45 	.word	0x40934a45
 8002138:	c0000000 	.word	0xc0000000
 800213c:	4016cccc 	.word	0x4016cccc
 8002140:	a0000000 	.word	0xa0000000
 8002144:	4016e147 	.word	0x4016e147
 8002148:	00000000 	.word	0x00000000
 800214c:	bfbf9ad0 	.word	0xbfbf9ad0
 8002150:	60000000 	.word	0x60000000
 8002154:	c00921fb 	.word	0xc00921fb
 8002158:	20000000 	.word	0x20000000
 800215c:	c0406251 	.word	0xc0406251
 8002160:	60000000 	.word	0x60000000
 8002164:	c0934a45 	.word	0xc0934a45
 8002168:	c0000000 	.word	0xc0000000
 800216c:	c016cccc 	.word	0xc016cccc
 8002170:	a0000000 	.word	0xa0000000
 8002174:	c016e147 	.word	0xc016e147
 8002178:	20000038 	.word	0x20000038
 800217c:	08002e11 	.word	0x08002e11
 8002180:	08002e31 	.word	0x08002e31
 8002184:	3ff00000 	.word	0x3ff00000
 8002188:	08002e43 	.word	0x08002e43
 800218c:	bff00000 	.word	0xbff00000
 8002190:	200008f0 	.word	0x200008f0
 8002194:	200001f8 	.word	0x200001f8
 8002198:	08002e5c 	.word	0x08002e5c
 800219c:	f3af 8000 	nop.w

080021a0 <Default_Handler>:
 80021a0:	4668      	mov	r0, sp
 80021a2:	f020 0107 	bic.w	r1, r0, #7
 80021a6:	468d      	mov	sp, r1
 80021a8:	b501      	push	{r0, lr}
 80021aa:	bf00      	nop
 80021ac:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80021b0:	4685      	mov	sp, r0
 80021b2:	4770      	bx	lr

080021b4 <HardFault_Handler>:
 80021b4:	bf00      	nop
 80021b6:	e7fd      	b.n	80021b4 <HardFault_Handler>

080021b8 <_reset_init>:
 80021b8:	4a0e      	ldr	r2, [pc, #56]	; (80021f4 <_reset_init+0x3c>)
 80021ba:	480f      	ldr	r0, [pc, #60]	; (80021f8 <_reset_init+0x40>)
 80021bc:	1a80      	subs	r0, r0, r2
 80021be:	1080      	asrs	r0, r0, #2
 80021c0:	2300      	movs	r3, #0
 80021c2:	4283      	cmp	r3, r0
 80021c4:	d006      	beq.n	80021d4 <_reset_init+0x1c>
 80021c6:	490d      	ldr	r1, [pc, #52]	; (80021fc <_reset_init+0x44>)
 80021c8:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 80021cc:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80021d0:	3301      	adds	r3, #1
 80021d2:	e7f6      	b.n	80021c2 <_reset_init+0xa>
 80021d4:	4b0a      	ldr	r3, [pc, #40]	; (8002200 <_reset_init+0x48>)
 80021d6:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80021da:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80021de:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80021e2:	f503 730c 	add.w	r3, r3, #560	; 0x230
 80021e6:	685a      	ldr	r2, [r3, #4]
 80021e8:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80021ec:	605a      	str	r2, [r3, #4]
 80021ee:	f7ff bef7 	b.w	8001fe0 <main>
 80021f2:	bf00      	nop
 80021f4:	20000000 	.word	0x20000000
 80021f8:	20000034 	.word	0x20000034
 80021fc:	08002e6c 	.word	0x08002e6c
 8002200:	e000ed00 	.word	0xe000ed00

08002204 <GPIO_Init>:
 8002204:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002206:	bf00      	nop
 8002208:	bf00      	nop
 800220a:	bf00      	nop
 800220c:	bf00      	nop
 800220e:	2300      	movs	r3, #0
 8002210:	680e      	ldr	r6, [r1, #0]
 8002212:	461a      	mov	r2, r3
 8002214:	2501      	movs	r5, #1
 8002216:	4095      	lsls	r5, r2
 8002218:	ea05 0406 	and.w	r4, r5, r6
 800221c:	42ac      	cmp	r4, r5
 800221e:	d130      	bne.n	8002282 <GPIO_Init+0x7e>
 8002220:	790d      	ldrb	r5, [r1, #4]
 8002222:	1e6f      	subs	r7, r5, #1
 8002224:	2f01      	cmp	r7, #1
 8002226:	d81c      	bhi.n	8002262 <GPIO_Init+0x5e>
 8002228:	bf00      	nop
 800222a:	f04f 0c03 	mov.w	ip, #3
 800222e:	6887      	ldr	r7, [r0, #8]
 8002230:	fa0c fc03 	lsl.w	ip, ip, r3
 8002234:	ea27 070c 	bic.w	r7, r7, ip
 8002238:	6087      	str	r7, [r0, #8]
 800223a:	f891 c005 	ldrb.w	ip, [r1, #5]
 800223e:	6887      	ldr	r7, [r0, #8]
 8002240:	fa0c fc03 	lsl.w	ip, ip, r3
 8002244:	ea4c 0707 	orr.w	r7, ip, r7
 8002248:	6087      	str	r7, [r0, #8]
 800224a:	bf00      	nop
 800224c:	8887      	ldrh	r7, [r0, #4]
 800224e:	b2bf      	uxth	r7, r7
 8002250:	ea27 0404 	bic.w	r4, r7, r4
 8002254:	8084      	strh	r4, [r0, #4]
 8002256:	798c      	ldrb	r4, [r1, #6]
 8002258:	8887      	ldrh	r7, [r0, #4]
 800225a:	4094      	lsls	r4, r2
 800225c:	433c      	orrs	r4, r7
 800225e:	b2a4      	uxth	r4, r4
 8002260:	8084      	strh	r4, [r0, #4]
 8002262:	2403      	movs	r4, #3
 8002264:	6807      	ldr	r7, [r0, #0]
 8002266:	409c      	lsls	r4, r3
 8002268:	43e4      	mvns	r4, r4
 800226a:	4027      	ands	r7, r4
 800226c:	6007      	str	r7, [r0, #0]
 800226e:	6807      	ldr	r7, [r0, #0]
 8002270:	409d      	lsls	r5, r3
 8002272:	433d      	orrs	r5, r7
 8002274:	6005      	str	r5, [r0, #0]
 8002276:	68c5      	ldr	r5, [r0, #12]
 8002278:	402c      	ands	r4, r5
 800227a:	79cd      	ldrb	r5, [r1, #7]
 800227c:	409d      	lsls	r5, r3
 800227e:	432c      	orrs	r4, r5
 8002280:	60c4      	str	r4, [r0, #12]
 8002282:	3201      	adds	r2, #1
 8002284:	2a10      	cmp	r2, #16
 8002286:	f103 0302 	add.w	r3, r3, #2
 800228a:	d1c3      	bne.n	8002214 <GPIO_Init+0x10>
 800228c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800228e <GPIO_SetBits>:
 800228e:	bf00      	nop
 8002290:	bf00      	nop
 8002292:	6181      	str	r1, [r0, #24]
 8002294:	4770      	bx	lr

08002296 <GPIO_PinAFConfig>:
 8002296:	b510      	push	{r4, lr}
 8002298:	bf00      	nop
 800229a:	bf00      	nop
 800229c:	bf00      	nop
 800229e:	f001 0307 	and.w	r3, r1, #7
 80022a2:	08c9      	lsrs	r1, r1, #3
 80022a4:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80022a8:	009b      	lsls	r3, r3, #2
 80022aa:	6a04      	ldr	r4, [r0, #32]
 80022ac:	210f      	movs	r1, #15
 80022ae:	4099      	lsls	r1, r3
 80022b0:	ea24 0101 	bic.w	r1, r4, r1
 80022b4:	6201      	str	r1, [r0, #32]
 80022b6:	6a01      	ldr	r1, [r0, #32]
 80022b8:	fa02 f303 	lsl.w	r3, r2, r3
 80022bc:	430b      	orrs	r3, r1
 80022be:	6203      	str	r3, [r0, #32]
 80022c0:	bd10      	pop	{r4, pc}
	...

080022c4 <EXTI_Init>:
 80022c4:	b570      	push	{r4, r5, r6, lr}
 80022c6:	bf00      	nop
 80022c8:	bf00      	nop
 80022ca:	bf00      	nop
 80022cc:	bf00      	nop
 80022ce:	7983      	ldrb	r3, [r0, #6]
 80022d0:	6802      	ldr	r2, [r0, #0]
 80022d2:	7904      	ldrb	r4, [r0, #4]
 80022d4:	2b00      	cmp	r3, #0
 80022d6:	d064      	beq.n	80023a2 <EXTI_Init+0xde>
 80022d8:	f022 011f 	bic.w	r1, r2, #31
 80022dc:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80022e0:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80022e4:	2301      	movs	r3, #1
 80022e6:	680d      	ldr	r5, [r1, #0]
 80022e8:	f002 021f 	and.w	r2, r2, #31
 80022ec:	fa03 f202 	lsl.w	r2, r3, r2
 80022f0:	ea25 0202 	bic.w	r2, r5, r2
 80022f4:	600a      	str	r2, [r1, #0]
 80022f6:	6805      	ldr	r5, [r0, #0]
 80022f8:	4a32      	ldr	r2, [pc, #200]	; (80023c4 <EXTI_Init+0x100>)
 80022fa:	f025 011f 	bic.w	r1, r5, #31
 80022fe:	f005 051f 	and.w	r5, r5, #31
 8002302:	588e      	ldr	r6, [r1, r2]
 8002304:	fa03 f505 	lsl.w	r5, r3, r5
 8002308:	ea26 0505 	bic.w	r5, r6, r5
 800230c:	508d      	str	r5, [r1, r2]
 800230e:	6805      	ldr	r5, [r0, #0]
 8002310:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002314:	f025 011f 	bic.w	r1, r5, #31
 8002318:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 800231c:	f005 051f 	and.w	r5, r5, #31
 8002320:	5854      	ldr	r4, [r2, r1]
 8002322:	fa03 f505 	lsl.w	r5, r3, r5
 8002326:	4325      	orrs	r5, r4
 8002328:	5055      	str	r5, [r2, r1]
 800232a:	6801      	ldr	r1, [r0, #0]
 800232c:	4d26      	ldr	r5, [pc, #152]	; (80023c8 <EXTI_Init+0x104>)
 800232e:	f021 021f 	bic.w	r2, r1, #31
 8002332:	f001 011f 	and.w	r1, r1, #31
 8002336:	5954      	ldr	r4, [r2, r5]
 8002338:	fa03 f101 	lsl.w	r1, r3, r1
 800233c:	ea24 0101 	bic.w	r1, r4, r1
 8002340:	5151      	str	r1, [r2, r5]
 8002342:	6801      	ldr	r1, [r0, #0]
 8002344:	4c21      	ldr	r4, [pc, #132]	; (80023cc <EXTI_Init+0x108>)
 8002346:	f021 021f 	bic.w	r2, r1, #31
 800234a:	f001 011f 	and.w	r1, r1, #31
 800234e:	5916      	ldr	r6, [r2, r4]
 8002350:	fa03 f101 	lsl.w	r1, r3, r1
 8002354:	ea26 0101 	bic.w	r1, r6, r1
 8002358:	5111      	str	r1, [r2, r4]
 800235a:	7942      	ldrb	r2, [r0, #5]
 800235c:	6801      	ldr	r1, [r0, #0]
 800235e:	2a10      	cmp	r2, #16
 8002360:	d112      	bne.n	8002388 <EXTI_Init+0xc4>
 8002362:	f021 021f 	bic.w	r2, r1, #31
 8002366:	f001 011f 	and.w	r1, r1, #31
 800236a:	5956      	ldr	r6, [r2, r5]
 800236c:	fa03 f101 	lsl.w	r1, r3, r1
 8002370:	4331      	orrs	r1, r6
 8002372:	5151      	str	r1, [r2, r5]
 8002374:	6801      	ldr	r1, [r0, #0]
 8002376:	f021 021f 	bic.w	r2, r1, #31
 800237a:	f001 011f 	and.w	r1, r1, #31
 800237e:	5910      	ldr	r0, [r2, r4]
 8002380:	408b      	lsls	r3, r1
 8002382:	4303      	orrs	r3, r0
 8002384:	5113      	str	r3, [r2, r4]
 8002386:	bd70      	pop	{r4, r5, r6, pc}
 8002388:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800238c:	f021 001f 	bic.w	r0, r1, #31
 8002390:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002394:	f001 011f 	and.w	r1, r1, #31
 8002398:	5814      	ldr	r4, [r2, r0]
 800239a:	408b      	lsls	r3, r1
 800239c:	4323      	orrs	r3, r4
 800239e:	5013      	str	r3, [r2, r0]
 80023a0:	bd70      	pop	{r4, r5, r6, pc}
 80023a2:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80023a6:	f022 011f 	bic.w	r1, r2, #31
 80023aa:	f503 3382 	add.w	r3, r3, #66560	; 0x10400
 80023ae:	f002 021f 	and.w	r2, r2, #31
 80023b2:	5858      	ldr	r0, [r3, r1]
 80023b4:	2401      	movs	r4, #1
 80023b6:	fa04 f202 	lsl.w	r2, r4, r2
 80023ba:	ea20 0202 	bic.w	r2, r0, r2
 80023be:	505a      	str	r2, [r3, r1]
 80023c0:	bd70      	pop	{r4, r5, r6, pc}
 80023c2:	bf00      	nop
 80023c4:	40010404 	.word	0x40010404
 80023c8:	40010408 	.word	0x40010408
 80023cc:	4001040c 	.word	0x4001040c

080023d0 <EXTI_ClearITPendingBit>:
 80023d0:	f020 021f 	bic.w	r2, r0, #31
 80023d4:	2301      	movs	r3, #1
 80023d6:	f000 001f 	and.w	r0, r0, #31
 80023da:	fa03 f000 	lsl.w	r0, r3, r0
 80023de:	4b01      	ldr	r3, [pc, #4]	; (80023e4 <EXTI_ClearITPendingBit+0x14>)
 80023e0:	50d0      	str	r0, [r2, r3]
 80023e2:	4770      	bx	lr
 80023e4:	40010414 	.word	0x40010414

080023e8 <SystemInit>:
 80023e8:	4b39      	ldr	r3, [pc, #228]	; (80024d0 <SystemInit+0xe8>)
 80023ea:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80023ee:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80023f2:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80023f6:	4b37      	ldr	r3, [pc, #220]	; (80024d4 <SystemInit+0xec>)
 80023f8:	681a      	ldr	r2, [r3, #0]
 80023fa:	f042 0201 	orr.w	r2, r2, #1
 80023fe:	601a      	str	r2, [r3, #0]
 8002400:	6859      	ldr	r1, [r3, #4]
 8002402:	4a35      	ldr	r2, [pc, #212]	; (80024d8 <SystemInit+0xf0>)
 8002404:	400a      	ands	r2, r1
 8002406:	605a      	str	r2, [r3, #4]
 8002408:	681a      	ldr	r2, [r3, #0]
 800240a:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800240e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002412:	601a      	str	r2, [r3, #0]
 8002414:	681a      	ldr	r2, [r3, #0]
 8002416:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800241a:	601a      	str	r2, [r3, #0]
 800241c:	685a      	ldr	r2, [r3, #4]
 800241e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002422:	605a      	str	r2, [r3, #4]
 8002424:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002426:	f022 020f 	bic.w	r2, r2, #15
 800242a:	62da      	str	r2, [r3, #44]	; 0x2c
 800242c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800242e:	4a2b      	ldr	r2, [pc, #172]	; (80024dc <SystemInit+0xf4>)
 8002430:	b082      	sub	sp, #8
 8002432:	400a      	ands	r2, r1
 8002434:	631a      	str	r2, [r3, #48]	; 0x30
 8002436:	2200      	movs	r2, #0
 8002438:	609a      	str	r2, [r3, #8]
 800243a:	9200      	str	r2, [sp, #0]
 800243c:	9201      	str	r2, [sp, #4]
 800243e:	681a      	ldr	r2, [r3, #0]
 8002440:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002444:	601a      	str	r2, [r3, #0]
 8002446:	681a      	ldr	r2, [r3, #0]
 8002448:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 800244c:	9201      	str	r2, [sp, #4]
 800244e:	9a00      	ldr	r2, [sp, #0]
 8002450:	3201      	adds	r2, #1
 8002452:	9200      	str	r2, [sp, #0]
 8002454:	9a01      	ldr	r2, [sp, #4]
 8002456:	b91a      	cbnz	r2, 8002460 <SystemInit+0x78>
 8002458:	9a00      	ldr	r2, [sp, #0]
 800245a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800245e:	d1f2      	bne.n	8002446 <SystemInit+0x5e>
 8002460:	681a      	ldr	r2, [r3, #0]
 8002462:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002466:	bf18      	it	ne
 8002468:	2201      	movne	r2, #1
 800246a:	9201      	str	r2, [sp, #4]
 800246c:	9a01      	ldr	r2, [sp, #4]
 800246e:	2a01      	cmp	r2, #1
 8002470:	d005      	beq.n	800247e <SystemInit+0x96>
 8002472:	4b17      	ldr	r3, [pc, #92]	; (80024d0 <SystemInit+0xe8>)
 8002474:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002478:	609a      	str	r2, [r3, #8]
 800247a:	b002      	add	sp, #8
 800247c:	4770      	bx	lr
 800247e:	4a18      	ldr	r2, [pc, #96]	; (80024e0 <SystemInit+0xf8>)
 8002480:	2112      	movs	r1, #18
 8002482:	6011      	str	r1, [r2, #0]
 8002484:	685a      	ldr	r2, [r3, #4]
 8002486:	605a      	str	r2, [r3, #4]
 8002488:	685a      	ldr	r2, [r3, #4]
 800248a:	605a      	str	r2, [r3, #4]
 800248c:	685a      	ldr	r2, [r3, #4]
 800248e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002492:	605a      	str	r2, [r3, #4]
 8002494:	685a      	ldr	r2, [r3, #4]
 8002496:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800249a:	605a      	str	r2, [r3, #4]
 800249c:	685a      	ldr	r2, [r3, #4]
 800249e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80024a2:	605a      	str	r2, [r3, #4]
 80024a4:	681a      	ldr	r2, [r3, #0]
 80024a6:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80024aa:	601a      	str	r2, [r3, #0]
 80024ac:	6819      	ldr	r1, [r3, #0]
 80024ae:	4a09      	ldr	r2, [pc, #36]	; (80024d4 <SystemInit+0xec>)
 80024b0:	0189      	lsls	r1, r1, #6
 80024b2:	d5fb      	bpl.n	80024ac <SystemInit+0xc4>
 80024b4:	6851      	ldr	r1, [r2, #4]
 80024b6:	f021 0103 	bic.w	r1, r1, #3
 80024ba:	6051      	str	r1, [r2, #4]
 80024bc:	6851      	ldr	r1, [r2, #4]
 80024be:	f041 0102 	orr.w	r1, r1, #2
 80024c2:	6051      	str	r1, [r2, #4]
 80024c4:	685a      	ldr	r2, [r3, #4]
 80024c6:	f002 020c 	and.w	r2, r2, #12
 80024ca:	2a08      	cmp	r2, #8
 80024cc:	d1fa      	bne.n	80024c4 <SystemInit+0xdc>
 80024ce:	e7d0      	b.n	8002472 <SystemInit+0x8a>
 80024d0:	e000ed00 	.word	0xe000ed00
 80024d4:	40021000 	.word	0x40021000
 80024d8:	f87fc00c 	.word	0xf87fc00c
 80024dc:	ff00fccc 	.word	0xff00fccc
 80024e0:	40022000 	.word	0x40022000

080024e4 <core_yield>:
 80024e4:	bf00      	nop
 80024e6:	4770      	bx	lr

080024e8 <sytem_clock_init>:
 80024e8:	f7ff bf7e 	b.w	80023e8 <SystemInit>

080024ec <SYSCFG_EXTILineConfig>:
 80024ec:	b510      	push	{r4, lr}
 80024ee:	bf00      	nop
 80024f0:	bf00      	nop
 80024f2:	f001 0303 	and.w	r3, r1, #3
 80024f6:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 80024fa:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80024fe:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 8002502:	009b      	lsls	r3, r3, #2
 8002504:	688c      	ldr	r4, [r1, #8]
 8002506:	220f      	movs	r2, #15
 8002508:	409a      	lsls	r2, r3
 800250a:	ea24 0202 	bic.w	r2, r4, r2
 800250e:	608a      	str	r2, [r1, #8]
 8002510:	688a      	ldr	r2, [r1, #8]
 8002512:	fa00 f303 	lsl.w	r3, r0, r3
 8002516:	4313      	orrs	r3, r2
 8002518:	608b      	str	r3, [r1, #8]
 800251a:	bd10      	pop	{r4, pc}

0800251c <RCC_GetClocksFreq>:
 800251c:	4aaf      	ldr	r2, [pc, #700]	; (80027dc <RCC_GetClocksFreq+0x2c0>)
 800251e:	6851      	ldr	r1, [r2, #4]
 8002520:	f001 010c 	and.w	r1, r1, #12
 8002524:	2904      	cmp	r1, #4
 8002526:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800252a:	d005      	beq.n	8002538 <RCC_GetClocksFreq+0x1c>
 800252c:	2908      	cmp	r1, #8
 800252e:	d006      	beq.n	800253e <RCC_GetClocksFreq+0x22>
 8002530:	4bab      	ldr	r3, [pc, #684]	; (80027e0 <RCC_GetClocksFreq+0x2c4>)
 8002532:	6003      	str	r3, [r0, #0]
 8002534:	b9b9      	cbnz	r1, 8002566 <RCC_GetClocksFreq+0x4a>
 8002536:	e017      	b.n	8002568 <RCC_GetClocksFreq+0x4c>
 8002538:	4ba9      	ldr	r3, [pc, #676]	; (80027e0 <RCC_GetClocksFreq+0x2c4>)
 800253a:	6003      	str	r3, [r0, #0]
 800253c:	e013      	b.n	8002566 <RCC_GetClocksFreq+0x4a>
 800253e:	6853      	ldr	r3, [r2, #4]
 8002540:	6854      	ldr	r4, [r2, #4]
 8002542:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8002546:	03e6      	lsls	r6, r4, #15
 8002548:	f103 0302 	add.w	r3, r3, #2
 800254c:	d401      	bmi.n	8002552 <RCC_GetClocksFreq+0x36>
 800254e:	49a5      	ldr	r1, [pc, #660]	; (80027e4 <RCC_GetClocksFreq+0x2c8>)
 8002550:	e006      	b.n	8002560 <RCC_GetClocksFreq+0x44>
 8002552:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
 8002554:	4ca2      	ldr	r4, [pc, #648]	; (80027e0 <RCC_GetClocksFreq+0x2c4>)
 8002556:	f001 010f 	and.w	r1, r1, #15
 800255a:	3101      	adds	r1, #1
 800255c:	fbb4 f1f1 	udiv	r1, r4, r1
 8002560:	4359      	muls	r1, r3
 8002562:	6001      	str	r1, [r0, #0]
 8002564:	e000      	b.n	8002568 <RCC_GetClocksFreq+0x4c>
 8002566:	2100      	movs	r1, #0
 8002568:	6853      	ldr	r3, [r2, #4]
 800256a:	4e9f      	ldr	r6, [pc, #636]	; (80027e8 <RCC_GetClocksFreq+0x2cc>)
 800256c:	f8df 827c 	ldr.w	r8, [pc, #636]	; 80027ec <RCC_GetClocksFreq+0x2d0>
 8002570:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002574:	5cf5      	ldrb	r5, [r6, r3]
 8002576:	6803      	ldr	r3, [r0, #0]
 8002578:	b2ed      	uxtb	r5, r5
 800257a:	fa23 f405 	lsr.w	r4, r3, r5
 800257e:	6044      	str	r4, [r0, #4]
 8002580:	6857      	ldr	r7, [r2, #4]
 8002582:	f3c7 2702 	ubfx	r7, r7, #8, #3
 8002586:	5df7      	ldrb	r7, [r6, r7]
 8002588:	fa24 f707 	lsr.w	r7, r4, r7
 800258c:	6087      	str	r7, [r0, #8]
 800258e:	f8d2 c004 	ldr.w	ip, [r2, #4]
 8002592:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8002596:	f816 600c 	ldrb.w	r6, [r6, ip]
 800259a:	b2f6      	uxtb	r6, r6
 800259c:	40f4      	lsrs	r4, r6
 800259e:	60c4      	str	r4, [r0, #12]
 80025a0:	f8d2 902c 	ldr.w	r9, [r2, #44]	; 0x2c
 80025a4:	f3c9 1904 	ubfx	r9, r9, #4, #5
 80025a8:	f009 0c0f 	and.w	ip, r9, #15
 80025ac:	f019 0f10 	tst.w	r9, #16
 80025b0:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 80025b4:	46c1      	mov	r9, r8
 80025b6:	fa1f fc8c 	uxth.w	ip, ip
 80025ba:	d007      	beq.n	80025cc <RCC_GetClocksFreq+0xb0>
 80025bc:	f1bc 0f00 	cmp.w	ip, #0
 80025c0:	d004      	beq.n	80025cc <RCC_GetClocksFreq+0xb0>
 80025c2:	fbb1 fcfc 	udiv	ip, r1, ip
 80025c6:	f8c0 c010 	str.w	ip, [r0, #16]
 80025ca:	e000      	b.n	80025ce <RCC_GetClocksFreq+0xb2>
 80025cc:	6103      	str	r3, [r0, #16]
 80025ce:	f8d2 802c 	ldr.w	r8, [r2, #44]	; 0x2c
 80025d2:	f3c8 2844 	ubfx	r8, r8, #9, #5
 80025d6:	f008 0c0f 	and.w	ip, r8, #15
 80025da:	f018 0f10 	tst.w	r8, #16
 80025de:	f839 c01c 	ldrh.w	ip, [r9, ip, lsl #1]
 80025e2:	fa1f fc8c 	uxth.w	ip, ip
 80025e6:	d007      	beq.n	80025f8 <RCC_GetClocksFreq+0xdc>
 80025e8:	f1bc 0f00 	cmp.w	ip, #0
 80025ec:	d004      	beq.n	80025f8 <RCC_GetClocksFreq+0xdc>
 80025ee:	fbb1 fcfc 	udiv	ip, r1, ip
 80025f2:	f8c0 c014 	str.w	ip, [r0, #20]
 80025f6:	e000      	b.n	80025fa <RCC_GetClocksFreq+0xde>
 80025f8:	6143      	str	r3, [r0, #20]
 80025fa:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025fe:	f01c 0f10 	tst.w	ip, #16
 8002602:	bf06      	itte	eq
 8002604:	f8df c1d8 	ldreq.w	ip, [pc, #472]	; 80027e0 <RCC_GetClocksFreq+0x2c4>
 8002608:	f8c0 c018 	streq.w	ip, [r0, #24]
 800260c:	6183      	strne	r3, [r0, #24]
 800260e:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002612:	f01c 0f20 	tst.w	ip, #32
 8002616:	bf06      	itte	eq
 8002618:	f8df c1c4 	ldreq.w	ip, [pc, #452]	; 80027e0 <RCC_GetClocksFreq+0x2c4>
 800261c:	f8c0 c01c 	streq.w	ip, [r0, #28]
 8002620:	61c3      	strne	r3, [r0, #28]
 8002622:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002626:	f01c 0f40 	tst.w	ip, #64	; 0x40
 800262a:	bf06      	itte	eq
 800262c:	f8df c1b0 	ldreq.w	ip, [pc, #432]	; 80027e0 <RCC_GetClocksFreq+0x2c4>
 8002630:	f8c0 c020 	streq.w	ip, [r0, #32]
 8002634:	6203      	strne	r3, [r0, #32]
 8002636:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800263a:	f41c 7f80 	tst.w	ip, #256	; 0x100
 800263e:	d008      	beq.n	8002652 <RCC_GetClocksFreq+0x136>
 8002640:	428b      	cmp	r3, r1
 8002642:	d106      	bne.n	8002652 <RCC_GetClocksFreq+0x136>
 8002644:	42ae      	cmp	r6, r5
 8002646:	d104      	bne.n	8002652 <RCC_GetClocksFreq+0x136>
 8002648:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800264c:	f8c0 c024 	str.w	ip, [r0, #36]	; 0x24
 8002650:	e000      	b.n	8002654 <RCC_GetClocksFreq+0x138>
 8002652:	6244      	str	r4, [r0, #36]	; 0x24
 8002654:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002658:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 800265c:	d008      	beq.n	8002670 <RCC_GetClocksFreq+0x154>
 800265e:	428b      	cmp	r3, r1
 8002660:	d106      	bne.n	8002670 <RCC_GetClocksFreq+0x154>
 8002662:	42ae      	cmp	r6, r5
 8002664:	d104      	bne.n	8002670 <RCC_GetClocksFreq+0x154>
 8002666:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800266a:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 800266e:	e000      	b.n	8002672 <RCC_GetClocksFreq+0x156>
 8002670:	6284      	str	r4, [r0, #40]	; 0x28
 8002672:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002676:	f41c 7f00 	tst.w	ip, #512	; 0x200
 800267a:	d008      	beq.n	800268e <RCC_GetClocksFreq+0x172>
 800267c:	428b      	cmp	r3, r1
 800267e:	d106      	bne.n	800268e <RCC_GetClocksFreq+0x172>
 8002680:	42ae      	cmp	r6, r5
 8002682:	d104      	bne.n	800268e <RCC_GetClocksFreq+0x172>
 8002684:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002688:	f8c0 c02c 	str.w	ip, [r0, #44]	; 0x2c
 800268c:	e000      	b.n	8002690 <RCC_GetClocksFreq+0x174>
 800268e:	62c4      	str	r4, [r0, #44]	; 0x2c
 8002690:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002694:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8002698:	d008      	beq.n	80026ac <RCC_GetClocksFreq+0x190>
 800269a:	428b      	cmp	r3, r1
 800269c:	d106      	bne.n	80026ac <RCC_GetClocksFreq+0x190>
 800269e:	42ae      	cmp	r6, r5
 80026a0:	d104      	bne.n	80026ac <RCC_GetClocksFreq+0x190>
 80026a2:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80026a6:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 80026aa:	e000      	b.n	80026ae <RCC_GetClocksFreq+0x192>
 80026ac:	64c4      	str	r4, [r0, #76]	; 0x4c
 80026ae:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80026b2:	f41c 6f00 	tst.w	ip, #2048	; 0x800
 80026b6:	d008      	beq.n	80026ca <RCC_GetClocksFreq+0x1ae>
 80026b8:	428b      	cmp	r3, r1
 80026ba:	d106      	bne.n	80026ca <RCC_GetClocksFreq+0x1ae>
 80026bc:	42ae      	cmp	r6, r5
 80026be:	d104      	bne.n	80026ca <RCC_GetClocksFreq+0x1ae>
 80026c0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80026c4:	f8c0 c050 	str.w	ip, [r0, #80]	; 0x50
 80026c8:	e000      	b.n	80026cc <RCC_GetClocksFreq+0x1b0>
 80026ca:	6504      	str	r4, [r0, #80]	; 0x50
 80026cc:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80026d0:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 80026d4:	d008      	beq.n	80026e8 <RCC_GetClocksFreq+0x1cc>
 80026d6:	428b      	cmp	r3, r1
 80026d8:	d106      	bne.n	80026e8 <RCC_GetClocksFreq+0x1cc>
 80026da:	42ae      	cmp	r6, r5
 80026dc:	d104      	bne.n	80026e8 <RCC_GetClocksFreq+0x1cc>
 80026de:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80026e2:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 80026e6:	e000      	b.n	80026ea <RCC_GetClocksFreq+0x1ce>
 80026e8:	6504      	str	r4, [r0, #80]	; 0x50
 80026ea:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80026ee:	f41c 4f00 	tst.w	ip, #32768	; 0x8000
 80026f2:	d006      	beq.n	8002702 <RCC_GetClocksFreq+0x1e6>
 80026f4:	428b      	cmp	r3, r1
 80026f6:	d104      	bne.n	8002702 <RCC_GetClocksFreq+0x1e6>
 80026f8:	42ae      	cmp	r6, r5
 80026fa:	d102      	bne.n	8002702 <RCC_GetClocksFreq+0x1e6>
 80026fc:	0059      	lsls	r1, r3, #1
 80026fe:	6581      	str	r1, [r0, #88]	; 0x58
 8002700:	e000      	b.n	8002704 <RCC_GetClocksFreq+0x1e8>
 8002702:	6584      	str	r4, [r0, #88]	; 0x58
 8002704:	6b15      	ldr	r5, [r2, #48]	; 0x30
 8002706:	4935      	ldr	r1, [pc, #212]	; (80027dc <RCC_GetClocksFreq+0x2c0>)
 8002708:	07ad      	lsls	r5, r5, #30
 800270a:	d101      	bne.n	8002710 <RCC_GetClocksFreq+0x1f4>
 800270c:	6384      	str	r4, [r0, #56]	; 0x38
 800270e:	e015      	b.n	800273c <RCC_GetClocksFreq+0x220>
 8002710:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002712:	f004 0403 	and.w	r4, r4, #3
 8002716:	2c01      	cmp	r4, #1
 8002718:	d101      	bne.n	800271e <RCC_GetClocksFreq+0x202>
 800271a:	6383      	str	r3, [r0, #56]	; 0x38
 800271c:	e00e      	b.n	800273c <RCC_GetClocksFreq+0x220>
 800271e:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 8002720:	f004 0403 	and.w	r4, r4, #3
 8002724:	2c02      	cmp	r4, #2
 8002726:	d102      	bne.n	800272e <RCC_GetClocksFreq+0x212>
 8002728:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800272c:	e005      	b.n	800273a <RCC_GetClocksFreq+0x21e>
 800272e:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8002730:	f001 0103 	and.w	r1, r1, #3
 8002734:	2903      	cmp	r1, #3
 8002736:	d101      	bne.n	800273c <RCC_GetClocksFreq+0x220>
 8002738:	4929      	ldr	r1, [pc, #164]	; (80027e0 <RCC_GetClocksFreq+0x2c4>)
 800273a:	6381      	str	r1, [r0, #56]	; 0x38
 800273c:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800273e:	4927      	ldr	r1, [pc, #156]	; (80027dc <RCC_GetClocksFreq+0x2c0>)
 8002740:	f414 3f40 	tst.w	r4, #196608	; 0x30000
 8002744:	d101      	bne.n	800274a <RCC_GetClocksFreq+0x22e>
 8002746:	63c7      	str	r7, [r0, #60]	; 0x3c
 8002748:	e018      	b.n	800277c <RCC_GetClocksFreq+0x260>
 800274a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800274c:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002750:	f5b4 3f80 	cmp.w	r4, #65536	; 0x10000
 8002754:	d101      	bne.n	800275a <RCC_GetClocksFreq+0x23e>
 8002756:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002758:	e010      	b.n	800277c <RCC_GetClocksFreq+0x260>
 800275a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800275c:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002760:	f5b4 3f00 	cmp.w	r4, #131072	; 0x20000
 8002764:	d102      	bne.n	800276c <RCC_GetClocksFreq+0x250>
 8002766:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800276a:	e006      	b.n	800277a <RCC_GetClocksFreq+0x25e>
 800276c:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800276e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8002772:	f5b1 3f40 	cmp.w	r1, #196608	; 0x30000
 8002776:	d101      	bne.n	800277c <RCC_GetClocksFreq+0x260>
 8002778:	4919      	ldr	r1, [pc, #100]	; (80027e0 <RCC_GetClocksFreq+0x2c4>)
 800277a:	63c1      	str	r1, [r0, #60]	; 0x3c
 800277c:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800277e:	4917      	ldr	r1, [pc, #92]	; (80027dc <RCC_GetClocksFreq+0x2c0>)
 8002780:	f414 2f40 	tst.w	r4, #786432	; 0xc0000
 8002784:	d101      	bne.n	800278a <RCC_GetClocksFreq+0x26e>
 8002786:	6407      	str	r7, [r0, #64]	; 0x40
 8002788:	e018      	b.n	80027bc <RCC_GetClocksFreq+0x2a0>
 800278a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800278c:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8002790:	f5b4 2f80 	cmp.w	r4, #262144	; 0x40000
 8002794:	d101      	bne.n	800279a <RCC_GetClocksFreq+0x27e>
 8002796:	6403      	str	r3, [r0, #64]	; 0x40
 8002798:	e010      	b.n	80027bc <RCC_GetClocksFreq+0x2a0>
 800279a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800279c:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 80027a0:	f5b4 2f00 	cmp.w	r4, #524288	; 0x80000
 80027a4:	d102      	bne.n	80027ac <RCC_GetClocksFreq+0x290>
 80027a6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80027aa:	e006      	b.n	80027ba <RCC_GetClocksFreq+0x29e>
 80027ac:	6b09      	ldr	r1, [r1, #48]	; 0x30
 80027ae:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80027b2:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 80027b6:	d101      	bne.n	80027bc <RCC_GetClocksFreq+0x2a0>
 80027b8:	4909      	ldr	r1, [pc, #36]	; (80027e0 <RCC_GetClocksFreq+0x2c4>)
 80027ba:	6401      	str	r1, [r0, #64]	; 0x40
 80027bc:	6b14      	ldr	r4, [r2, #48]	; 0x30
 80027be:	4907      	ldr	r1, [pc, #28]	; (80027dc <RCC_GetClocksFreq+0x2c0>)
 80027c0:	f414 1f40 	tst.w	r4, #3145728	; 0x300000
 80027c4:	d101      	bne.n	80027ca <RCC_GetClocksFreq+0x2ae>
 80027c6:	6447      	str	r7, [r0, #68]	; 0x44
 80027c8:	e023      	b.n	8002812 <RCC_GetClocksFreq+0x2f6>
 80027ca:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80027cc:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80027d0:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 80027d4:	d10c      	bne.n	80027f0 <RCC_GetClocksFreq+0x2d4>
 80027d6:	6443      	str	r3, [r0, #68]	; 0x44
 80027d8:	e01b      	b.n	8002812 <RCC_GetClocksFreq+0x2f6>
 80027da:	bf00      	nop
 80027dc:	40021000 	.word	0x40021000
 80027e0:	007a1200 	.word	0x007a1200
 80027e4:	003d0900 	.word	0x003d0900
 80027e8:	20000024 	.word	0x20000024
 80027ec:	20000004 	.word	0x20000004
 80027f0:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80027f2:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80027f6:	f5b4 1f00 	cmp.w	r4, #2097152	; 0x200000
 80027fa:	d102      	bne.n	8002802 <RCC_GetClocksFreq+0x2e6>
 80027fc:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002800:	e006      	b.n	8002810 <RCC_GetClocksFreq+0x2f4>
 8002802:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8002804:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8002808:	f5b1 1f40 	cmp.w	r1, #3145728	; 0x300000
 800280c:	d101      	bne.n	8002812 <RCC_GetClocksFreq+0x2f6>
 800280e:	4911      	ldr	r1, [pc, #68]	; (8002854 <RCC_GetClocksFreq+0x338>)
 8002810:	6441      	str	r1, [r0, #68]	; 0x44
 8002812:	6b12      	ldr	r2, [r2, #48]	; 0x30
 8002814:	4910      	ldr	r1, [pc, #64]	; (8002858 <RCC_GetClocksFreq+0x33c>)
 8002816:	f412 0f40 	tst.w	r2, #12582912	; 0xc00000
 800281a:	d102      	bne.n	8002822 <RCC_GetClocksFreq+0x306>
 800281c:	6487      	str	r7, [r0, #72]	; 0x48
 800281e:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002822:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 8002824:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8002828:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 800282c:	d00f      	beq.n	800284e <RCC_GetClocksFreq+0x332>
 800282e:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8002830:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002834:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002838:	d102      	bne.n	8002840 <RCC_GetClocksFreq+0x324>
 800283a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800283e:	e006      	b.n	800284e <RCC_GetClocksFreq+0x332>
 8002840:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8002842:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002846:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800284a:	d101      	bne.n	8002850 <RCC_GetClocksFreq+0x334>
 800284c:	4b01      	ldr	r3, [pc, #4]	; (8002854 <RCC_GetClocksFreq+0x338>)
 800284e:	6483      	str	r3, [r0, #72]	; 0x48
 8002850:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002854:	007a1200 	.word	0x007a1200
 8002858:	40021000 	.word	0x40021000

0800285c <RCC_AHBPeriphClockCmd>:
 800285c:	bf00      	nop
 800285e:	bf00      	nop
 8002860:	4b04      	ldr	r3, [pc, #16]	; (8002874 <RCC_AHBPeriphClockCmd+0x18>)
 8002862:	695a      	ldr	r2, [r3, #20]
 8002864:	b109      	cbz	r1, 800286a <RCC_AHBPeriphClockCmd+0xe>
 8002866:	4310      	orrs	r0, r2
 8002868:	e001      	b.n	800286e <RCC_AHBPeriphClockCmd+0x12>
 800286a:	ea22 0000 	bic.w	r0, r2, r0
 800286e:	6158      	str	r0, [r3, #20]
 8002870:	4770      	bx	lr
 8002872:	bf00      	nop
 8002874:	40021000 	.word	0x40021000

08002878 <RCC_APB2PeriphClockCmd>:
 8002878:	bf00      	nop
 800287a:	bf00      	nop
 800287c:	4b04      	ldr	r3, [pc, #16]	; (8002890 <RCC_APB2PeriphClockCmd+0x18>)
 800287e:	699a      	ldr	r2, [r3, #24]
 8002880:	b109      	cbz	r1, 8002886 <RCC_APB2PeriphClockCmd+0xe>
 8002882:	4310      	orrs	r0, r2
 8002884:	e001      	b.n	800288a <RCC_APB2PeriphClockCmd+0x12>
 8002886:	ea22 0000 	bic.w	r0, r2, r0
 800288a:	6198      	str	r0, [r3, #24]
 800288c:	4770      	bx	lr
 800288e:	bf00      	nop
 8002890:	40021000 	.word	0x40021000

08002894 <RCC_APB1PeriphClockCmd>:
 8002894:	bf00      	nop
 8002896:	bf00      	nop
 8002898:	4b04      	ldr	r3, [pc, #16]	; (80028ac <RCC_APB1PeriphClockCmd+0x18>)
 800289a:	69da      	ldr	r2, [r3, #28]
 800289c:	b109      	cbz	r1, 80028a2 <RCC_APB1PeriphClockCmd+0xe>
 800289e:	4310      	orrs	r0, r2
 80028a0:	e001      	b.n	80028a6 <RCC_APB1PeriphClockCmd+0x12>
 80028a2:	ea22 0000 	bic.w	r0, r2, r0
 80028a6:	61d8      	str	r0, [r3, #28]
 80028a8:	4770      	bx	lr
 80028aa:	bf00      	nop
 80028ac:	40021000 	.word	0x40021000

080028b0 <USART_Init>:
 80028b0:	b530      	push	{r4, r5, lr}
 80028b2:	4604      	mov	r4, r0
 80028b4:	b099      	sub	sp, #100	; 0x64
 80028b6:	460d      	mov	r5, r1
 80028b8:	bf00      	nop
 80028ba:	bf00      	nop
 80028bc:	bf00      	nop
 80028be:	bf00      	nop
 80028c0:	bf00      	nop
 80028c2:	bf00      	nop
 80028c4:	bf00      	nop
 80028c6:	6803      	ldr	r3, [r0, #0]
 80028c8:	f023 0301 	bic.w	r3, r3, #1
 80028cc:	6003      	str	r3, [r0, #0]
 80028ce:	6842      	ldr	r2, [r0, #4]
 80028d0:	688b      	ldr	r3, [r1, #8]
 80028d2:	68c9      	ldr	r1, [r1, #12]
 80028d4:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80028d8:	4313      	orrs	r3, r2
 80028da:	6043      	str	r3, [r0, #4]
 80028dc:	686a      	ldr	r2, [r5, #4]
 80028de:	6803      	ldr	r3, [r0, #0]
 80028e0:	4311      	orrs	r1, r2
 80028e2:	692a      	ldr	r2, [r5, #16]
 80028e4:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80028e8:	430a      	orrs	r2, r1
 80028ea:	f023 030c 	bic.w	r3, r3, #12
 80028ee:	4313      	orrs	r3, r2
 80028f0:	6003      	str	r3, [r0, #0]
 80028f2:	6882      	ldr	r2, [r0, #8]
 80028f4:	696b      	ldr	r3, [r5, #20]
 80028f6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80028fa:	4313      	orrs	r3, r2
 80028fc:	6083      	str	r3, [r0, #8]
 80028fe:	a801      	add	r0, sp, #4
 8002900:	f7ff fe0c 	bl	800251c <RCC_GetClocksFreq>
 8002904:	4b17      	ldr	r3, [pc, #92]	; (8002964 <USART_Init+0xb4>)
 8002906:	429c      	cmp	r4, r3
 8002908:	d101      	bne.n	800290e <USART_Init+0x5e>
 800290a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800290c:	e00e      	b.n	800292c <USART_Init+0x7c>
 800290e:	4b16      	ldr	r3, [pc, #88]	; (8002968 <USART_Init+0xb8>)
 8002910:	429c      	cmp	r4, r3
 8002912:	d101      	bne.n	8002918 <USART_Init+0x68>
 8002914:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002916:	e009      	b.n	800292c <USART_Init+0x7c>
 8002918:	4b14      	ldr	r3, [pc, #80]	; (800296c <USART_Init+0xbc>)
 800291a:	429c      	cmp	r4, r3
 800291c:	d101      	bne.n	8002922 <USART_Init+0x72>
 800291e:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002920:	e004      	b.n	800292c <USART_Init+0x7c>
 8002922:	4b13      	ldr	r3, [pc, #76]	; (8002970 <USART_Init+0xc0>)
 8002924:	429c      	cmp	r4, r3
 8002926:	bf0c      	ite	eq
 8002928:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 800292a:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 800292c:	6823      	ldr	r3, [r4, #0]
 800292e:	6829      	ldr	r1, [r5, #0]
 8002930:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8002934:	bf18      	it	ne
 8002936:	0052      	lslne	r2, r2, #1
 8002938:	fbb2 f3f1 	udiv	r3, r2, r1
 800293c:	fb01 2213 	mls	r2, r1, r3, r2
 8002940:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8002944:	6822      	ldr	r2, [r4, #0]
 8002946:	bf28      	it	cs
 8002948:	3301      	addcs	r3, #1
 800294a:	0412      	lsls	r2, r2, #16
 800294c:	d506      	bpl.n	800295c <USART_Init+0xac>
 800294e:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8002952:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8002956:	401a      	ands	r2, r3
 8002958:	ea41 0302 	orr.w	r3, r1, r2
 800295c:	b29b      	uxth	r3, r3
 800295e:	81a3      	strh	r3, [r4, #12]
 8002960:	b019      	add	sp, #100	; 0x64
 8002962:	bd30      	pop	{r4, r5, pc}
 8002964:	40013800 	.word	0x40013800
 8002968:	40004400 	.word	0x40004400
 800296c:	40004800 	.word	0x40004800
 8002970:	40004c00 	.word	0x40004c00

08002974 <USART_Cmd>:
 8002974:	bf00      	nop
 8002976:	bf00      	nop
 8002978:	6803      	ldr	r3, [r0, #0]
 800297a:	b111      	cbz	r1, 8002982 <USART_Cmd+0xe>
 800297c:	f043 0301 	orr.w	r3, r3, #1
 8002980:	e001      	b.n	8002986 <USART_Cmd+0x12>
 8002982:	f023 0301 	bic.w	r3, r3, #1
 8002986:	6003      	str	r3, [r0, #0]
 8002988:	4770      	bx	lr

0800298a <USART_ReceiveData>:
 800298a:	bf00      	nop
 800298c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800298e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002992:	4770      	bx	lr

08002994 <USART_ITConfig>:
 8002994:	b510      	push	{r4, lr}
 8002996:	bf00      	nop
 8002998:	bf00      	nop
 800299a:	bf00      	nop
 800299c:	f3c1 2307 	ubfx	r3, r1, #8, #8
 80029a0:	2401      	movs	r4, #1
 80029a2:	b2c9      	uxtb	r1, r1
 80029a4:	2b02      	cmp	r3, #2
 80029a6:	fa04 f101 	lsl.w	r1, r4, r1
 80029aa:	d101      	bne.n	80029b0 <USART_ITConfig+0x1c>
 80029ac:	3004      	adds	r0, #4
 80029ae:	e002      	b.n	80029b6 <USART_ITConfig+0x22>
 80029b0:	2b03      	cmp	r3, #3
 80029b2:	bf08      	it	eq
 80029b4:	3008      	addeq	r0, #8
 80029b6:	6803      	ldr	r3, [r0, #0]
 80029b8:	b10a      	cbz	r2, 80029be <USART_ITConfig+0x2a>
 80029ba:	4319      	orrs	r1, r3
 80029bc:	e001      	b.n	80029c2 <USART_ITConfig+0x2e>
 80029be:	ea23 0101 	bic.w	r1, r3, r1
 80029c2:	6001      	str	r1, [r0, #0]
 80029c4:	bd10      	pop	{r4, pc}

080029c6 <USART_GetITStatus>:
 80029c6:	b510      	push	{r4, lr}
 80029c8:	bf00      	nop
 80029ca:	bf00      	nop
 80029cc:	2401      	movs	r4, #1
 80029ce:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80029d2:	b2cb      	uxtb	r3, r1
 80029d4:	42a2      	cmp	r2, r4
 80029d6:	fa04 f303 	lsl.w	r3, r4, r3
 80029da:	d101      	bne.n	80029e0 <USART_GetITStatus+0x1a>
 80029dc:	6802      	ldr	r2, [r0, #0]
 80029de:	e003      	b.n	80029e8 <USART_GetITStatus+0x22>
 80029e0:	2a02      	cmp	r2, #2
 80029e2:	bf0c      	ite	eq
 80029e4:	6842      	ldreq	r2, [r0, #4]
 80029e6:	6882      	ldrne	r2, [r0, #8]
 80029e8:	4013      	ands	r3, r2
 80029ea:	69c2      	ldr	r2, [r0, #28]
 80029ec:	b143      	cbz	r3, 8002a00 <USART_GetITStatus+0x3a>
 80029ee:	2301      	movs	r3, #1
 80029f0:	0c09      	lsrs	r1, r1, #16
 80029f2:	fa03 f101 	lsl.w	r1, r3, r1
 80029f6:	4211      	tst	r1, r2
 80029f8:	bf0c      	ite	eq
 80029fa:	2000      	moveq	r0, #0
 80029fc:	2001      	movne	r0, #1
 80029fe:	bd10      	pop	{r4, pc}
 8002a00:	4618      	mov	r0, r3
 8002a02:	bd10      	pop	{r4, pc}

08002a04 <USART_ClearITPendingBit>:
 8002a04:	bf00      	nop
 8002a06:	bf00      	nop
 8002a08:	2301      	movs	r3, #1
 8002a0a:	0c09      	lsrs	r1, r1, #16
 8002a0c:	fa03 f101 	lsl.w	r1, r3, r1
 8002a10:	6201      	str	r1, [r0, #32]
 8002a12:	4770      	bx	lr

08002a14 <NVIC_Init>:
 8002a14:	b510      	push	{r4, lr}
 8002a16:	bf00      	nop
 8002a18:	bf00      	nop
 8002a1a:	bf00      	nop
 8002a1c:	78c2      	ldrb	r2, [r0, #3]
 8002a1e:	7803      	ldrb	r3, [r0, #0]
 8002a20:	b30a      	cbz	r2, 8002a66 <NVIC_Init+0x52>
 8002a22:	4a16      	ldr	r2, [pc, #88]	; (8002a7c <NVIC_Init+0x68>)
 8002a24:	7844      	ldrb	r4, [r0, #1]
 8002a26:	68d2      	ldr	r2, [r2, #12]
 8002a28:	43d2      	mvns	r2, r2
 8002a2a:	f3c2 2202 	ubfx	r2, r2, #8, #3
 8002a2e:	f1c2 0104 	rsb	r1, r2, #4
 8002a32:	b2c9      	uxtb	r1, r1
 8002a34:	fa04 f101 	lsl.w	r1, r4, r1
 8002a38:	240f      	movs	r4, #15
 8002a3a:	fa44 f202 	asr.w	r2, r4, r2
 8002a3e:	7884      	ldrb	r4, [r0, #2]
 8002a40:	b2c9      	uxtb	r1, r1
 8002a42:	4022      	ands	r2, r4
 8002a44:	430a      	orrs	r2, r1
 8002a46:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002a4a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002a4e:	0112      	lsls	r2, r2, #4
 8002a50:	b2d2      	uxtb	r2, r2
 8002a52:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002a56:	7803      	ldrb	r3, [r0, #0]
 8002a58:	2201      	movs	r2, #1
 8002a5a:	0959      	lsrs	r1, r3, #5
 8002a5c:	f003 031f 	and.w	r3, r3, #31
 8002a60:	fa02 f303 	lsl.w	r3, r2, r3
 8002a64:	e006      	b.n	8002a74 <NVIC_Init+0x60>
 8002a66:	0959      	lsrs	r1, r3, #5
 8002a68:	2201      	movs	r2, #1
 8002a6a:	f003 031f 	and.w	r3, r3, #31
 8002a6e:	fa02 f303 	lsl.w	r3, r2, r3
 8002a72:	3120      	adds	r1, #32
 8002a74:	4a02      	ldr	r2, [pc, #8]	; (8002a80 <NVIC_Init+0x6c>)
 8002a76:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002a7a:	bd10      	pop	{r4, pc}
 8002a7c:	e000ed00 	.word	0xe000ed00
 8002a80:	e000e100 	.word	0xe000e100

08002a84 <TIM_TimeBaseInit>:
 8002a84:	bf00      	nop
 8002a86:	bf00      	nop
 8002a88:	bf00      	nop
 8002a8a:	4a24      	ldr	r2, [pc, #144]	; (8002b1c <TIM_TimeBaseInit+0x98>)
 8002a8c:	8803      	ldrh	r3, [r0, #0]
 8002a8e:	4290      	cmp	r0, r2
 8002a90:	b29b      	uxth	r3, r3
 8002a92:	d012      	beq.n	8002aba <TIM_TimeBaseInit+0x36>
 8002a94:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002a98:	4290      	cmp	r0, r2
 8002a9a:	d00e      	beq.n	8002aba <TIM_TimeBaseInit+0x36>
 8002a9c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002aa0:	d00b      	beq.n	8002aba <TIM_TimeBaseInit+0x36>
 8002aa2:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002aa6:	4290      	cmp	r0, r2
 8002aa8:	d007      	beq.n	8002aba <TIM_TimeBaseInit+0x36>
 8002aaa:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002aae:	4290      	cmp	r0, r2
 8002ab0:	d003      	beq.n	8002aba <TIM_TimeBaseInit+0x36>
 8002ab2:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002ab6:	4290      	cmp	r0, r2
 8002ab8:	d103      	bne.n	8002ac2 <TIM_TimeBaseInit+0x3e>
 8002aba:	884a      	ldrh	r2, [r1, #2]
 8002abc:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002ac0:	4313      	orrs	r3, r2
 8002ac2:	4a17      	ldr	r2, [pc, #92]	; (8002b20 <TIM_TimeBaseInit+0x9c>)
 8002ac4:	4290      	cmp	r0, r2
 8002ac6:	d008      	beq.n	8002ada <TIM_TimeBaseInit+0x56>
 8002ac8:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002acc:	4290      	cmp	r0, r2
 8002ace:	d004      	beq.n	8002ada <TIM_TimeBaseInit+0x56>
 8002ad0:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002ad4:	890a      	ldrh	r2, [r1, #8]
 8002ad6:	b29b      	uxth	r3, r3
 8002ad8:	4313      	orrs	r3, r2
 8002ada:	8003      	strh	r3, [r0, #0]
 8002adc:	684b      	ldr	r3, [r1, #4]
 8002ade:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002ae0:	880b      	ldrh	r3, [r1, #0]
 8002ae2:	8503      	strh	r3, [r0, #40]	; 0x28
 8002ae4:	4b0d      	ldr	r3, [pc, #52]	; (8002b1c <TIM_TimeBaseInit+0x98>)
 8002ae6:	4298      	cmp	r0, r3
 8002ae8:	d013      	beq.n	8002b12 <TIM_TimeBaseInit+0x8e>
 8002aea:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002aee:	4298      	cmp	r0, r3
 8002af0:	d00f      	beq.n	8002b12 <TIM_TimeBaseInit+0x8e>
 8002af2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002af6:	4298      	cmp	r0, r3
 8002af8:	d00b      	beq.n	8002b12 <TIM_TimeBaseInit+0x8e>
 8002afa:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002afe:	4298      	cmp	r0, r3
 8002b00:	d007      	beq.n	8002b12 <TIM_TimeBaseInit+0x8e>
 8002b02:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002b06:	4298      	cmp	r0, r3
 8002b08:	d003      	beq.n	8002b12 <TIM_TimeBaseInit+0x8e>
 8002b0a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002b0e:	4298      	cmp	r0, r3
 8002b10:	d101      	bne.n	8002b16 <TIM_TimeBaseInit+0x92>
 8002b12:	894b      	ldrh	r3, [r1, #10]
 8002b14:	8603      	strh	r3, [r0, #48]	; 0x30
 8002b16:	2301      	movs	r3, #1
 8002b18:	6143      	str	r3, [r0, #20]
 8002b1a:	4770      	bx	lr
 8002b1c:	40012c00 	.word	0x40012c00
 8002b20:	40001000 	.word	0x40001000

08002b24 <TIM_Cmd>:
 8002b24:	bf00      	nop
 8002b26:	bf00      	nop
 8002b28:	8803      	ldrh	r3, [r0, #0]
 8002b2a:	b119      	cbz	r1, 8002b34 <TIM_Cmd+0x10>
 8002b2c:	b29b      	uxth	r3, r3
 8002b2e:	f043 0301 	orr.w	r3, r3, #1
 8002b32:	e003      	b.n	8002b3c <TIM_Cmd+0x18>
 8002b34:	f023 0301 	bic.w	r3, r3, #1
 8002b38:	041b      	lsls	r3, r3, #16
 8002b3a:	0c1b      	lsrs	r3, r3, #16
 8002b3c:	8003      	strh	r3, [r0, #0]
 8002b3e:	4770      	bx	lr

08002b40 <TIM_OC1Init>:
 8002b40:	b530      	push	{r4, r5, lr}
 8002b42:	bf00      	nop
 8002b44:	bf00      	nop
 8002b46:	bf00      	nop
 8002b48:	bf00      	nop
 8002b4a:	6a03      	ldr	r3, [r0, #32]
 8002b4c:	680d      	ldr	r5, [r1, #0]
 8002b4e:	f023 0301 	bic.w	r3, r3, #1
 8002b52:	6203      	str	r3, [r0, #32]
 8002b54:	6a03      	ldr	r3, [r0, #32]
 8002b56:	6842      	ldr	r2, [r0, #4]
 8002b58:	6984      	ldr	r4, [r0, #24]
 8002b5a:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 8002b5e:	f024 0473 	bic.w	r4, r4, #115	; 0x73
 8002b62:	432c      	orrs	r4, r5
 8002b64:	898d      	ldrh	r5, [r1, #12]
 8002b66:	f023 0302 	bic.w	r3, r3, #2
 8002b6a:	432b      	orrs	r3, r5
 8002b6c:	888d      	ldrh	r5, [r1, #4]
 8002b6e:	432b      	orrs	r3, r5
 8002b70:	4d15      	ldr	r5, [pc, #84]	; (8002bc8 <TIM_OC1Init+0x88>)
 8002b72:	42a8      	cmp	r0, r5
 8002b74:	d00f      	beq.n	8002b96 <TIM_OC1Init+0x56>
 8002b76:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002b7a:	42a8      	cmp	r0, r5
 8002b7c:	d00b      	beq.n	8002b96 <TIM_OC1Init+0x56>
 8002b7e:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8002b82:	42a8      	cmp	r0, r5
 8002b84:	d007      	beq.n	8002b96 <TIM_OC1Init+0x56>
 8002b86:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002b8a:	42a8      	cmp	r0, r5
 8002b8c:	d003      	beq.n	8002b96 <TIM_OC1Init+0x56>
 8002b8e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002b92:	42a8      	cmp	r0, r5
 8002b94:	d111      	bne.n	8002bba <TIM_OC1Init+0x7a>
 8002b96:	bf00      	nop
 8002b98:	bf00      	nop
 8002b9a:	bf00      	nop
 8002b9c:	bf00      	nop
 8002b9e:	89cd      	ldrh	r5, [r1, #14]
 8002ba0:	f023 0308 	bic.w	r3, r3, #8
 8002ba4:	432b      	orrs	r3, r5
 8002ba6:	88cd      	ldrh	r5, [r1, #6]
 8002ba8:	f023 0304 	bic.w	r3, r3, #4
 8002bac:	432b      	orrs	r3, r5
 8002bae:	8a0d      	ldrh	r5, [r1, #16]
 8002bb0:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002bb4:	432a      	orrs	r2, r5
 8002bb6:	8a4d      	ldrh	r5, [r1, #18]
 8002bb8:	432a      	orrs	r2, r5
 8002bba:	6042      	str	r2, [r0, #4]
 8002bbc:	688a      	ldr	r2, [r1, #8]
 8002bbe:	6184      	str	r4, [r0, #24]
 8002bc0:	6342      	str	r2, [r0, #52]	; 0x34
 8002bc2:	6203      	str	r3, [r0, #32]
 8002bc4:	bd30      	pop	{r4, r5, pc}
 8002bc6:	bf00      	nop
 8002bc8:	40012c00 	.word	0x40012c00

08002bcc <TIM_OC2Init>:
 8002bcc:	b570      	push	{r4, r5, r6, lr}
 8002bce:	bf00      	nop
 8002bd0:	bf00      	nop
 8002bd2:	bf00      	nop
 8002bd4:	bf00      	nop
 8002bd6:	6a03      	ldr	r3, [r0, #32]
 8002bd8:	680d      	ldr	r5, [r1, #0]
 8002bda:	898e      	ldrh	r6, [r1, #12]
 8002bdc:	f023 0310 	bic.w	r3, r3, #16
 8002be0:	6203      	str	r3, [r0, #32]
 8002be2:	6a03      	ldr	r3, [r0, #32]
 8002be4:	6842      	ldr	r2, [r0, #4]
 8002be6:	6984      	ldr	r4, [r0, #24]
 8002be8:	f024 7480 	bic.w	r4, r4, #16777216	; 0x1000000
 8002bec:	f424 44e6 	bic.w	r4, r4, #29440	; 0x7300
 8002bf0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002bf4:	f023 0520 	bic.w	r5, r3, #32
 8002bf8:	888b      	ldrh	r3, [r1, #4]
 8002bfa:	4333      	orrs	r3, r6
 8002bfc:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8002c00:	4d10      	ldr	r5, [pc, #64]	; (8002c44 <TIM_OC2Init+0x78>)
 8002c02:	42a8      	cmp	r0, r5
 8002c04:	d003      	beq.n	8002c0e <TIM_OC2Init+0x42>
 8002c06:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002c0a:	42a8      	cmp	r0, r5
 8002c0c:	d114      	bne.n	8002c38 <TIM_OC2Init+0x6c>
 8002c0e:	bf00      	nop
 8002c10:	bf00      	nop
 8002c12:	bf00      	nop
 8002c14:	bf00      	nop
 8002c16:	89cd      	ldrh	r5, [r1, #14]
 8002c18:	8a0e      	ldrh	r6, [r1, #16]
 8002c1a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002c1e:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002c22:	88cd      	ldrh	r5, [r1, #6]
 8002c24:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002c28:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002c2c:	8a4d      	ldrh	r5, [r1, #18]
 8002c2e:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8002c32:	4335      	orrs	r5, r6
 8002c34:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002c38:	6042      	str	r2, [r0, #4]
 8002c3a:	688a      	ldr	r2, [r1, #8]
 8002c3c:	6184      	str	r4, [r0, #24]
 8002c3e:	6382      	str	r2, [r0, #56]	; 0x38
 8002c40:	6203      	str	r3, [r0, #32]
 8002c42:	bd70      	pop	{r4, r5, r6, pc}
 8002c44:	40012c00 	.word	0x40012c00

08002c48 <TIM_CtrlPWMOutputs>:
 8002c48:	bf00      	nop
 8002c4a:	bf00      	nop
 8002c4c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002c4e:	b111      	cbz	r1, 8002c56 <TIM_CtrlPWMOutputs+0xe>
 8002c50:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002c54:	e001      	b.n	8002c5a <TIM_CtrlPWMOutputs+0x12>
 8002c56:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002c5a:	6443      	str	r3, [r0, #68]	; 0x44
 8002c5c:	4770      	bx	lr

08002c5e <TIM_ClearITPendingBit>:
 8002c5e:	bf00      	nop
 8002c60:	43c9      	mvns	r1, r1
 8002c62:	b289      	uxth	r1, r1
 8002c64:	6101      	str	r1, [r0, #16]
 8002c66:	4770      	bx	lr

08002c68 <scheduler>:
 8002c68:	b570      	push	{r4, r5, r6, lr}
 8002c6a:	2200      	movs	r2, #0
 8002c6c:	4611      	mov	r1, r2
 8002c6e:	4b15      	ldr	r3, [pc, #84]	; (8002cc4 <scheduler+0x5c>)
 8002c70:	200c      	movs	r0, #12
 8002c72:	fb00 f501 	mul.w	r5, r0, r1
 8002c76:	195e      	adds	r6, r3, r5
 8002c78:	6874      	ldr	r4, [r6, #4]
 8002c7a:	f014 0f02 	tst.w	r4, #2
 8002c7e:	461c      	mov	r4, r3
 8002c80:	d10a      	bne.n	8002c98 <scheduler+0x30>
 8002c82:	6876      	ldr	r6, [r6, #4]
 8002c84:	07f6      	lsls	r6, r6, #31
 8002c86:	d507      	bpl.n	8002c98 <scheduler+0x30>
 8002c88:	4350      	muls	r0, r2
 8002c8a:	5b5d      	ldrh	r5, [r3, r5]
 8002c8c:	5a18      	ldrh	r0, [r3, r0]
 8002c8e:	b2ad      	uxth	r5, r5
 8002c90:	b280      	uxth	r0, r0
 8002c92:	4285      	cmp	r5, r0
 8002c94:	bf38      	it	cc
 8002c96:	460a      	movcc	r2, r1
 8002c98:	200c      	movs	r0, #12
 8002c9a:	4348      	muls	r0, r1
 8002c9c:	5a1d      	ldrh	r5, [r3, r0]
 8002c9e:	b2ad      	uxth	r5, r5
 8002ca0:	b11d      	cbz	r5, 8002caa <scheduler+0x42>
 8002ca2:	5a1d      	ldrh	r5, [r3, r0]
 8002ca4:	3d01      	subs	r5, #1
 8002ca6:	b2ad      	uxth	r5, r5
 8002ca8:	521d      	strh	r5, [r3, r0]
 8002caa:	3101      	adds	r1, #1
 8002cac:	2906      	cmp	r1, #6
 8002cae:	d1de      	bne.n	8002c6e <scheduler+0x6>
 8002cb0:	230c      	movs	r3, #12
 8002cb2:	4353      	muls	r3, r2
 8002cb4:	18e1      	adds	r1, r4, r3
 8002cb6:	8849      	ldrh	r1, [r1, #2]
 8002cb8:	b289      	uxth	r1, r1
 8002cba:	52e1      	strh	r1, [r4, r3]
 8002cbc:	4b02      	ldr	r3, [pc, #8]	; (8002cc8 <scheduler+0x60>)
 8002cbe:	601a      	str	r2, [r3, #0]
 8002cc0:	bd70      	pop	{r4, r5, r6, pc}
 8002cc2:	bf00      	nop
 8002cc4:	200009b0 	.word	0x200009b0
 8002cc8:	200009f8 	.word	0x200009f8

08002ccc <SysTick_Handler>:
 8002ccc:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002cd0:	f3ef 8208 	mrs	r2, MSP
 8002cd4:	4c0d      	ldr	r4, [pc, #52]	; (8002d0c <SysTick_Handler+0x40>)
 8002cd6:	4d0e      	ldr	r5, [pc, #56]	; (8002d10 <SysTick_Handler+0x44>)
 8002cd8:	6823      	ldr	r3, [r4, #0]
 8002cda:	3301      	adds	r3, #1
 8002cdc:	d005      	beq.n	8002cea <SysTick_Handler+0x1e>
 8002cde:	6823      	ldr	r3, [r4, #0]
 8002ce0:	210c      	movs	r1, #12
 8002ce2:	fb01 5303 	mla	r3, r1, r3, r5
 8002ce6:	609a      	str	r2, [r3, #8]
 8002ce8:	e001      	b.n	8002cee <SysTick_Handler+0x22>
 8002cea:	2300      	movs	r3, #0
 8002cec:	6023      	str	r3, [r4, #0]
 8002cee:	f7ff ffbb 	bl	8002c68 <scheduler>
 8002cf2:	6823      	ldr	r3, [r4, #0]
 8002cf4:	220c      	movs	r2, #12
 8002cf6:	fb02 5503 	mla	r5, r2, r3, r5
 8002cfa:	f06f 0306 	mvn.w	r3, #6
 8002cfe:	68aa      	ldr	r2, [r5, #8]
 8002d00:	469e      	mov	lr, r3
 8002d02:	f382 8808 	msr	MSP, r2
 8002d06:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002d0a:	4770      	bx	lr
 8002d0c:	200009f8 	.word	0x200009f8
 8002d10:	200009b0 	.word	0x200009b0

08002d14 <__aeabi_d2f>:
 8002d14:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002d18:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002d1c:	bf24      	itt	cs
 8002d1e:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002d22:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002d26:	d90d      	bls.n	8002d44 <__aeabi_d2f+0x30>
 8002d28:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002d2c:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002d30:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002d34:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002d38:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002d3c:	bf08      	it	eq
 8002d3e:	f020 0001 	biceq.w	r0, r0, #1
 8002d42:	4770      	bx	lr
 8002d44:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002d48:	d121      	bne.n	8002d8e <__aeabi_d2f+0x7a>
 8002d4a:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002d4e:	bfbc      	itt	lt
 8002d50:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002d54:	4770      	bxlt	lr
 8002d56:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002d5a:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002d5e:	f1c2 0218 	rsb	r2, r2, #24
 8002d62:	f1c2 0c20 	rsb	ip, r2, #32
 8002d66:	fa10 f30c 	lsls.w	r3, r0, ip
 8002d6a:	fa20 f002 	lsr.w	r0, r0, r2
 8002d6e:	bf18      	it	ne
 8002d70:	f040 0001 	orrne.w	r0, r0, #1
 8002d74:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002d78:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002d7c:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002d80:	ea40 000c 	orr.w	r0, r0, ip
 8002d84:	fa23 f302 	lsr.w	r3, r3, r2
 8002d88:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002d8c:	e7cc      	b.n	8002d28 <__aeabi_d2f+0x14>
 8002d8e:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002d92:	d107      	bne.n	8002da4 <__aeabi_d2f+0x90>
 8002d94:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002d98:	bf1e      	ittt	ne
 8002d9a:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002d9e:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002da2:	4770      	bxne	lr
 8002da4:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002da8:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002dac:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002db0:	4770      	bx	lr
 8002db2:	bf00      	nop

08002db4 <_init>:
 8002db4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002db6:	bf00      	nop
 8002db8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002dba:	bc08      	pop	{r3}
 8002dbc:	469e      	mov	lr, r3
 8002dbe:	4770      	bx	lr

08002dc0 <_fini>:
 8002dc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002dc2:	bf00      	nop
 8002dc4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002dc6:	bc08      	pop	{r3}
 8002dc8:	469e      	mov	lr, r3
 8002dca:	4770      	bx	lr
 8002dcc:	61646f6b 	.word	0x61646f6b
 8002dd0:	6920616d 	.word	0x6920616d
 8002dd4:	2074696e 	.word	0x2074696e
 8002dd8:	25206925 	.word	0x25206925
 8002ddc:	203a2069 	.word	0x203a2069
 8002de0:	4f5b2000 	.word	0x4f5b2000
 8002de4:	000a5d4b 	.word	0x000a5d4b
 8002de8:	41465b20 	.word	0x41465b20
 8002dec:	44454c49 	.word	0x44454c49
 8002df0:	000a0a5d 	.word	0x000a0a5d
 8002df4:	74737973 	.word	0x74737973
 8002df8:	74206d65 	.word	0x74206d65
 8002dfc:	20656d69 	.word	0x20656d69
 8002e00:	5b207525 	.word	0x5b207525
 8002e04:	0a5d736d 	.word	0x0a5d736d
 8002e08:	20692500 	.word	0x20692500
 8002e0c:	0a206925 	.word	0x0a206925
 8002e10:	00          	.byte	0x00
 8002e11:	74          	.byte	0x74
 8002e12:	7365      	.short	0x7365
 8002e14:	676e6974 	.word	0x676e6974
 8002e18:	6d756e20 	.word	0x6d756e20
 8002e1c:	20726562 	.word	0x20726562
 8002e20:	6e697270 	.word	0x6e697270
 8002e24:	75252074 	.word	0x75252074
 8002e28:	20752520 	.word	0x20752520
 8002e2c:	0a3a7525 	.word	0x0a3a7525
 8002e30:	6f6c6600 	.word	0x6f6c6600
 8002e34:	6e207461 	.word	0x6e207461
 8002e38:	65626d75 	.word	0x65626d75
 8002e3c:	66252072 	.word	0x66252072
 8002e40:	25000a20 	.word	0x25000a20
 8002e44:	66252066 	.word	0x66252066
 8002e48:	20662520 	.word	0x20662520
 8002e4c:	25206625 	.word	0x25206625
 8002e50:	66252066 	.word	0x66252066
 8002e54:	20662520 	.word	0x20662520
 8002e58:	000a6625 	.word	0x000a6625
 8002e5c:	656c6469 	.word	0x656c6469
 8002e60:	0a752520 	.word	0x0a752520
 8002e64:	00000000 	.word	0x00000000

08002e68 <__EH_FRAME_BEGIN__>:
 8002e68:	00000000                                ....
