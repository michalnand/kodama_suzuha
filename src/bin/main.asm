
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f8ca 	bl	8001324 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f96d 	bl	800147c <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 fa1e 	bl	80005f0 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fceb 	bl	8000b9c <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001d6:	f000 fcd1 	bl	8000b7c <_ZN6CMotor10motor_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 4043 	sublt.w	r0, r0, #49920	; 0xc300
 80001e2:	3850      	sublt	r0, #80	; 0x50
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
 8000202:	f001 fa35 	bl	8001670 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f001 fa30 	bl	8001670 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f001 fa2b 	bl	8001670 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	0800260c 	.word	0x0800260c
 8000228:	08002621 	.word	0x08002621
 800022c:	08002628 	.word	0x08002628

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	b510      	push	{r4, lr}
 8000232:	2108      	movs	r1, #8
 8000234:	4604      	mov	r4, r0
 8000236:	f001 f8d5 	bl	80013e4 <_ZN5CGPIO8gpio_offEm>
 800023a:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000242:	f000 bbff 	b.w	8000a44 <_ZN6CMotor11motor_sleepEv>

08000246 <_ZN7CKodama6wakeupEv>:
 8000246:	b510      	push	{r4, lr}
 8000248:	2108      	movs	r1, #8
 800024a:	4604      	mov	r4, r0
 800024c:	34c4      	adds	r4, #196	; 0xc4
 800024e:	f001 f8bb 	bl	80013c8 <_ZN5CGPIO7gpio_onEm>
 8000252:	2100      	movs	r1, #0
 8000254:	4620      	mov	r0, r4
 8000256:	460a      	mov	r2, r1
 8000258:	f000 fc8a 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 800025c:	4620      	mov	r0, r4
 800025e:	2101      	movs	r1, #1
 8000260:	2200      	movs	r2, #0
 8000262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000266:	f000 bc83 	b.w	8000b70 <_ZN6CMotor9set_motorEml>

0800026a <_ZN7CKodama6set_dtEl>:
 800026a:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
 800026e:	4770      	bx	lr

08000270 <_ZN7CKodama12rotate_robotEllPFlvE>:
 8000270:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000274:	f100 0784 	add.w	r7, r0, #132	; 0x84
 8000278:	4681      	mov	r9, r0
 800027a:	4638      	mov	r0, r7
 800027c:	4688      	mov	r8, r1
 800027e:	469a      	mov	sl, r3
 8000280:	4693      	mov	fp, r2
 8000282:	f000 ff29 	bl	80010d8 <_ZN4CIMU8imu_readEv>
 8000286:	4638      	mov	r0, r7
 8000288:	f001 f84a 	bl	8001320 <_ZN4CIMU14get_imu_resultEv>
 800028c:	6883      	ldr	r3, [r0, #8]
 800028e:	2500      	movs	r5, #0
 8000290:	4498      	add	r8, r3
 8000292:	4821      	ldr	r0, [pc, #132]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 8000294:	210a      	movs	r1, #10
 8000296:	f000 fa03 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 800029a:	f109 06c4 	add.w	r6, r9, #196	; 0xc4
 800029e:	f1ba 0f00 	cmp.w	sl, #0
 80002a2:	d111      	bne.n	80002c8 <_ZN7CKodama12rotate_robotEllPFlvE+0x58>
 80002a4:	4638      	mov	r0, r7
 80002a6:	f000 ff17 	bl	80010d8 <_ZN4CIMU8imu_readEv>
 80002aa:	4638      	mov	r0, r7
 80002ac:	f001 f838 	bl	8001320 <_ZN4CIMU14get_imu_resultEv>
 80002b0:	6884      	ldr	r4, [r0, #8]
 80002b2:	ebc4 0408 	rsb	r4, r4, r8
 80002b6:	2c00      	cmp	r4, #0
 80002b8:	bfcc      	ite	gt
 80002ba:	2301      	movgt	r3, #1
 80002bc:	f04f 33ff 	movle.w	r3, #4294967295	; 0xffffffff
 80002c0:	455d      	cmp	r5, fp
 80002c2:	da15      	bge.n	80002f0 <_ZN7CKodama12rotate_robotEllPFlvE+0x80>
 80002c4:	3501      	adds	r5, #1
 80002c6:	e013      	b.n	80002f0 <_ZN7CKodama12rotate_robotEllPFlvE+0x80>
 80002c8:	47d0      	blx	sl
 80002ca:	2800      	cmp	r0, #0
 80002cc:	d0ea      	beq.n	80002a4 <_ZN7CKodama12rotate_robotEllPFlvE+0x34>
 80002ce:	2100      	movs	r1, #0
 80002d0:	4630      	mov	r0, r6
 80002d2:	460a      	mov	r2, r1
 80002d4:	f000 fc4c 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 80002d8:	4630      	mov	r0, r6
 80002da:	2101      	movs	r1, #1
 80002dc:	2200      	movs	r2, #0
 80002de:	f000 fc47 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 80002e2:	480d      	ldr	r0, [pc, #52]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 80002e4:	2114      	movs	r1, #20
 80002e6:	b003      	add	sp, #12
 80002e8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80002ec:	f000 b9d8 	b.w	80006a0 <_ZN6CTimer8delay_msEm>
 80002f0:	fb03 f205 	mul.w	r2, r3, r5
 80002f4:	4630      	mov	r0, r6
 80002f6:	2100      	movs	r1, #0
 80002f8:	9301      	str	r3, [sp, #4]
 80002fa:	f000 fc39 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 80002fe:	9b01      	ldr	r3, [sp, #4]
 8000300:	426a      	negs	r2, r5
 8000302:	4630      	mov	r0, r6
 8000304:	2101      	movs	r1, #1
 8000306:	435a      	muls	r2, r3
 8000308:	f000 fc32 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 800030c:	2c00      	cmp	r4, #0
 800030e:	bfb8      	it	lt
 8000310:	4264      	neglt	r4, r4
 8000312:	2c31      	cmp	r4, #49	; 0x31
 8000314:	dcbd      	bgt.n	8000292 <_ZN7CKodama12rotate_robotEllPFlvE+0x22>
 8000316:	e7da      	b.n	80002ce <_ZN7CKodama12rotate_robotEllPFlvE+0x5e>
 8000318:	2000013c 	.word	0x2000013c

0800031c <_ZN13CLinePositionC1Ev>:
 800031c:	2200      	movs	r2, #0
 800031e:	6082      	str	r2, [r0, #8]
 8000320:	60c2      	str	r2, [r0, #12]
 8000322:	6102      	str	r2, [r0, #16]
 8000324:	6142      	str	r2, [r0, #20]
 8000326:	6042      	str	r2, [r0, #4]
 8000328:	2200      	movs	r2, #0
 800032a:	7002      	strb	r2, [r0, #0]
 800032c:	4770      	bx	lr
	...

08000330 <_ZN13CLinePosition7processEP10sRGBResult>:
 8000330:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000334:	2300      	movs	r3, #0
 8000336:	f101 0816 	add.w	r8, r1, #22
 800033a:	ed2d 8b02 	vpush	{d8}
 800033e:	460d      	mov	r5, r1
 8000340:	4604      	mov	r4, r0
 8000342:	7003      	strb	r3, [r0, #0]
 8000344:	4641      	mov	r1, r8
 8000346:	461a      	mov	r2, r3
 8000348:	f103 000c 	add.w	r0, r3, #12
 800034c:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 8000350:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 8000354:	4286      	cmp	r6, r0
 8000356:	bfb8      	it	lt
 8000358:	4613      	movlt	r3, r2
 800035a:	3201      	adds	r2, #1
 800035c:	2a04      	cmp	r2, #4
 800035e:	d1f3      	bne.n	8000348 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 8000360:	330c      	adds	r3, #12
 8000362:	eddf 7a3d 	vldr	s15, [pc, #244]	; 8000458 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 8000366:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 800036a:	ee07 3a10 	vmov	s14, r3
 800036e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000372:	eeb0 8a67 	vmov.f32	s16, s15
 8000376:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800037a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800037e:	d567      	bpl.n	8000450 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 8000380:	f104 0608 	add.w	r6, r4, #8
 8000384:	eddf 8a35 	vldr	s17, [pc, #212]	; 800045c <_ZN13CLinePosition7processEP10sRGBResult+0x12c>
 8000388:	f104 0918 	add.w	r9, r4, #24
 800038c:	4637      	mov	r7, r6
 800038e:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 8000392:	4833      	ldr	r0, [pc, #204]	; (8000460 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 8000394:	425b      	negs	r3, r3
 8000396:	ee07 3a90 	vmov	s15, r3
 800039a:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800039e:	ece7 7a01 	vstmia	r7!, {s15}
 80003a2:	ee17 1a90 	vmov	r1, s15
 80003a6:	f000 f8c6 	bl	8000536 <_ZN5CMath3absEf>
 80003aa:	ee07 0a90 	vmov	s15, r0
 80003ae:	eef4 8ae7 	vcmpe.f32	s17, s15
 80003b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003b6:	d506      	bpl.n	80003c6 <_ZN13CLinePosition7processEP10sRGBResult+0x96>
 80003b8:	4829      	ldr	r0, [pc, #164]	; (8000460 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 80003ba:	f857 1c04 	ldr.w	r1, [r7, #-4]
 80003be:	f000 f8ba 	bl	8000536 <_ZN5CMath3absEf>
 80003c2:	ee08 0a90 	vmov	s17, r0
 80003c6:	454f      	cmp	r7, r9
 80003c8:	d1e1      	bne.n	800038e <_ZN13CLinePosition7processEP10sRGBResult+0x5e>
 80003ca:	edd6 7a00 	vldr	s15, [r6]
 80003ce:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 80003d2:	ece6 7a01 	vstmia	r6!, {s15}
 80003d6:	454e      	cmp	r6, r9
 80003d8:	d1f7      	bne.n	80003ca <_ZN13CLinePosition7processEP10sRGBResult+0x9a>
 80003da:	2301      	movs	r3, #1
 80003dc:	7023      	strb	r3, [r4, #0]
 80003de:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 80003e2:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000458 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 80003e6:	ee07 3a10 	vmov	s14, r3
 80003ea:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80003ee:	eeb4 7ac8 	vcmpe.f32	s14, s16
 80003f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003f6:	d501      	bpl.n	80003fc <_ZN13CLinePosition7processEP10sRGBResult+0xcc>
 80003f8:	4b1a      	ldr	r3, [pc, #104]	; (8000464 <_ZN13CLinePosition7processEP10sRGBResult+0x134>)
 80003fa:	e028      	b.n	800044e <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 80003fc:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 8000400:	ee07 3a10 	vmov	s14, r3
 8000404:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000408:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800040c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000410:	d502      	bpl.n	8000418 <_ZN13CLinePosition7processEP10sRGBResult+0xe8>
 8000412:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000416:	e01a      	b.n	800044e <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 8000418:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 800041c:	ee07 3a10 	vmov	s14, r3
 8000420:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000424:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000428:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800042c:	d502      	bpl.n	8000434 <_ZN13CLinePosition7processEP10sRGBResult+0x104>
 800042e:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8000432:	e00c      	b.n	800044e <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 8000434:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 8000438:	ee07 3a10 	vmov	s14, r3
 800043c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000440:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000444:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000448:	d502      	bpl.n	8000450 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 800044a:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 800044e:	6063      	str	r3, [r4, #4]
 8000450:	ecbd 8b02 	vpop	{d8}
 8000454:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8000458:	c2a00000 	.word	0xc2a00000
 800045c:	38d1b717 	.word	0x38d1b717
 8000460:	20000108 	.word	0x20000108
 8000464:	bf800000 	.word	0xbf800000

08000468 <_ZN13CLinePosition7on_lineEv>:
 8000468:	7800      	ldrb	r0, [r0, #0]
 800046a:	4770      	bx	lr

0800046c <_ZN13CLinePosition17get_line_positionEv>:
 800046c:	6840      	ldr	r0, [r0, #4]
 800046e:	4770      	bx	lr

08000470 <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>:
 8000470:	6883      	ldr	r3, [r0, #8]
 8000472:	600b      	str	r3, [r1, #0]
 8000474:	68c3      	ldr	r3, [r0, #12]
 8000476:	604b      	str	r3, [r1, #4]
 8000478:	6903      	ldr	r3, [r0, #16]
 800047a:	608b      	str	r3, [r1, #8]
 800047c:	6943      	ldr	r3, [r0, #20]
 800047e:	60cb      	str	r3, [r1, #12]
 8000480:	4770      	bx	lr

08000482 <_ZN4CPID4initEffff>:
 8000482:	ee07 1a90 	vmov	s15, r1
 8000486:	ee06 2a90 	vmov	s13, r2
 800048a:	ee07 3a10 	vmov	s14, r3
 800048e:	ee77 6aa6 	vadd.f32	s13, s15, s13
 8000492:	eef1 7a67 	vneg.f32	s15, s15
 8000496:	ee76 6a87 	vadd.f32	s13, s13, s14
 800049a:	2300      	movs	r3, #0
 800049c:	edc0 6a03 	vstr	s13, [r0, #12]
 80004a0:	ee77 6a07 	vadd.f32	s13, s14, s14
 80004a4:	6003      	str	r3, [r0, #0]
 80004a6:	ee77 7ae6 	vsub.f32	s15, s15, s13
 80004aa:	6043      	str	r3, [r0, #4]
 80004ac:	6083      	str	r3, [r0, #8]
 80004ae:	6183      	str	r3, [r0, #24]
 80004b0:	9b00      	ldr	r3, [sp, #0]
 80004b2:	edc0 7a04 	vstr	s15, [r0, #16]
 80004b6:	ed80 7a05 	vstr	s14, [r0, #20]
 80004ba:	61c3      	str	r3, [r0, #28]
 80004bc:	4770      	bx	lr

080004be <_ZN4CPIDC1Effff>:
 80004be:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80004c0:	9d06      	ldr	r5, [sp, #24]
 80004c2:	9500      	str	r5, [sp, #0]
 80004c4:	4604      	mov	r4, r0
 80004c6:	f7ff ffdc 	bl	8000482 <_ZN4CPID4initEffff>
 80004ca:	4620      	mov	r0, r4
 80004cc:	b003      	add	sp, #12
 80004ce:	bd30      	pop	{r4, r5, pc}

080004d0 <_ZN4CPID7processEf>:
 80004d0:	edd0 7a00 	vldr	s15, [r0]
 80004d4:	edd0 5a04 	vldr	s11, [r0, #16]
 80004d8:	ed90 6a03 	vldr	s12, [r0, #12]
 80004dc:	ed90 7a01 	vldr	s14, [r0, #4]
 80004e0:	edc0 7a01 	vstr	s15, [r0, #4]
 80004e4:	ee06 1a90 	vmov	s13, r1
 80004e8:	ee67 7aa5 	vmul.f32	s15, s15, s11
 80004ec:	ee46 7a86 	vmla.f32	s15, s13, s12
 80004f0:	6001      	str	r1, [r0, #0]
 80004f2:	edd0 6a05 	vldr	s13, [r0, #20]
 80004f6:	ed80 7a02 	vstr	s14, [r0, #8]
 80004fa:	ee47 7a26 	vmla.f32	s15, s14, s13
 80004fe:	ed90 7a06 	vldr	s14, [r0, #24]
 8000502:	ee77 7a87 	vadd.f32	s15, s15, s14
 8000506:	ed90 7a07 	vldr	s14, [r0, #28]
 800050a:	edc0 7a06 	vstr	s15, [r0, #24]
 800050e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000512:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000516:	bfc8      	it	gt
 8000518:	ed80 7a06 	vstrgt	s14, [r0, #24]
 800051c:	edd0 7a06 	vldr	s15, [r0, #24]
 8000520:	eeb1 7a47 	vneg.f32	s14, s14
 8000524:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000528:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800052c:	bf48      	it	mi
 800052e:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000532:	6980      	ldr	r0, [r0, #24]
 8000534:	4770      	bx	lr

08000536 <_ZN5CMath3absEf>:
 8000536:	ee07 1a90 	vmov	s15, r1
 800053a:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800053e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000542:	bf48      	it	mi
 8000544:	eef1 7a67 	vnegmi.f32	s15, s15
 8000548:	ee17 0a90 	vmov	r0, s15
 800054c:	4770      	bx	lr
	...

08000550 <_ZN5CMath4randEv>:
 8000550:	6803      	ldr	r3, [r0, #0]
 8000552:	490b      	ldr	r1, [pc, #44]	; (8000580 <_ZN5CMath4randEv+0x30>)
 8000554:	f243 0239 	movw	r2, #12345	; 0x3039
 8000558:	fb01 2203 	mla	r2, r1, r3, r2
 800055c:	6841      	ldr	r1, [r0, #4]
 800055e:	6002      	str	r2, [r0, #0]
 8000560:	f341 0300 	sbfx	r3, r1, #0, #1
 8000564:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 8000568:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 800056c:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 8000570:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 8000574:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 8000578:	6043      	str	r3, [r0, #4]
 800057a:	ea83 0002 	eor.w	r0, r3, r2
 800057e:	4770      	bx	lr
 8000580:	41c64e6d 	.word	0x41c64e6d

08000584 <TIM3_IRQHandler>:
 8000584:	2300      	movs	r3, #0
 8000586:	4a15      	ldr	r2, [pc, #84]	; (80005dc <TIM3_IRQHandler+0x58>)
 8000588:	5cd1      	ldrb	r1, [r2, r3]
 800058a:	b111      	cbz	r1, 8000592 <TIM3_IRQHandler+0xe>
 800058c:	5cd1      	ldrb	r1, [r2, r3]
 800058e:	29ff      	cmp	r1, #255	; 0xff
 8000590:	d11e      	bne.n	80005d0 <TIM3_IRQHandler+0x4c>
 8000592:	4913      	ldr	r1, [pc, #76]	; (80005e0 <TIM3_IRQHandler+0x5c>)
 8000594:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000598:	b128      	cbz	r0, 80005a6 <TIM3_IRQHandler+0x22>
 800059a:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 800059e:	3a01      	subs	r2, #1
 80005a0:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80005a4:	e009      	b.n	80005ba <TIM3_IRQHandler+0x36>
 80005a6:	480f      	ldr	r0, [pc, #60]	; (80005e4 <TIM3_IRQHandler+0x60>)
 80005a8:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80005ac:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80005b0:	5cd2      	ldrb	r2, [r2, r3]
 80005b2:	b912      	cbnz	r2, 80005ba <TIM3_IRQHandler+0x36>
 80005b4:	4a09      	ldr	r2, [pc, #36]	; (80005dc <TIM3_IRQHandler+0x58>)
 80005b6:	2101      	movs	r1, #1
 80005b8:	54d1      	strb	r1, [r2, r3]
 80005ba:	3301      	adds	r3, #1
 80005bc:	2b08      	cmp	r3, #8
 80005be:	d1e2      	bne.n	8000586 <TIM3_IRQHandler+0x2>
 80005c0:	4a09      	ldr	r2, [pc, #36]	; (80005e8 <TIM3_IRQHandler+0x64>)
 80005c2:	480a      	ldr	r0, [pc, #40]	; (80005ec <TIM3_IRQHandler+0x68>)
 80005c4:	6813      	ldr	r3, [r2, #0]
 80005c6:	2101      	movs	r1, #1
 80005c8:	3301      	adds	r3, #1
 80005ca:	6013      	str	r3, [r2, #0]
 80005cc:	f001 bda2 	b.w	8002114 <TIM_ClearITPendingBit>
 80005d0:	5cd1      	ldrb	r1, [r2, r3]
 80005d2:	3101      	adds	r1, #1
 80005d4:	b2c9      	uxtb	r1, r1
 80005d6:	54d1      	strb	r1, [r2, r3]
 80005d8:	e7db      	b.n	8000592 <TIM3_IRQHandler+0xe>
 80005da:	bf00      	nop
 80005dc:	20000130 	.word	0x20000130
 80005e0:	20000110 	.word	0x20000110
 80005e4:	20000140 	.word	0x20000140
 80005e8:	20000138 	.word	0x20000138
 80005ec:	40000400 	.word	0x40000400

080005f0 <_ZN6CTimer10timer_initEv>:
 80005f0:	b530      	push	{r4, r5, lr}
 80005f2:	4a1f      	ldr	r2, [pc, #124]	; (8000670 <_ZN6CTimer10timer_initEv+0x80>)
 80005f4:	2300      	movs	r3, #0
 80005f6:	b085      	sub	sp, #20
 80005f8:	6013      	str	r3, [r2, #0]
 80005fa:	491e      	ldr	r1, [pc, #120]	; (8000674 <_ZN6CTimer10timer_initEv+0x84>)
 80005fc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000600:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000604:	491c      	ldr	r1, [pc, #112]	; (8000678 <_ZN6CTimer10timer_initEv+0x88>)
 8000606:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800060a:	4a1c      	ldr	r2, [pc, #112]	; (800067c <_ZN6CTimer10timer_initEv+0x8c>)
 800060c:	2400      	movs	r4, #0
 800060e:	54d4      	strb	r4, [r2, r3]
 8000610:	3301      	adds	r3, #1
 8000612:	2b08      	cmp	r3, #8
 8000614:	d1f1      	bne.n	80005fa <_ZN6CTimer10timer_initEv+0xa>
 8000616:	4d1a      	ldr	r5, [pc, #104]	; (8000680 <_ZN6CTimer10timer_initEv+0x90>)
 8000618:	2002      	movs	r0, #2
 800061a:	2101      	movs	r1, #1
 800061c:	f001 fd0e 	bl	800203c <RCC_APB1PeriphClockCmd>
 8000620:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000624:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000628:	4628      	mov	r0, r5
 800062a:	2331      	movs	r3, #49	; 0x31
 800062c:	a901      	add	r1, sp, #4
 800062e:	9302      	str	r3, [sp, #8]
 8000630:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000634:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000638:	f8ad 400e 	strh.w	r4, [sp, #14]
 800063c:	f001 fd0c 	bl	8002058 <TIM_TimeBaseInit>
 8000640:	4628      	mov	r0, r5
 8000642:	2101      	movs	r1, #1
 8000644:	f001 fd58 	bl	80020f8 <TIM_Cmd>
 8000648:	68eb      	ldr	r3, [r5, #12]
 800064a:	f043 0301 	orr.w	r3, r3, #1
 800064e:	60eb      	str	r3, [r5, #12]
 8000650:	231d      	movs	r3, #29
 8000652:	f88d 3000 	strb.w	r3, [sp]
 8000656:	4668      	mov	r0, sp
 8000658:	2301      	movs	r3, #1
 800065a:	f88d 4001 	strb.w	r4, [sp, #1]
 800065e:	f88d 3002 	strb.w	r3, [sp, #2]
 8000662:	f88d 3003 	strb.w	r3, [sp, #3]
 8000666:	f001 fe8f 	bl	8002388 <NVIC_Init>
 800066a:	4620      	mov	r0, r4
 800066c:	b005      	add	sp, #20
 800066e:	bd30      	pop	{r4, r5, pc}
 8000670:	20000138 	.word	0x20000138
 8000674:	20000110 	.word	0x20000110
 8000678:	20000140 	.word	0x20000140
 800067c:	20000130 	.word	0x20000130
 8000680:	40000400 	.word	0x40000400

08000684 <_ZN6CTimer8get_timeEv>:
 8000684:	b082      	sub	sp, #8
 8000686:	b672      	cpsid	i
 8000688:	4b04      	ldr	r3, [pc, #16]	; (800069c <_ZN6CTimer8get_timeEv+0x18>)
 800068a:	681b      	ldr	r3, [r3, #0]
 800068c:	9301      	str	r3, [sp, #4]
 800068e:	b662      	cpsie	i
 8000690:	230a      	movs	r3, #10
 8000692:	9801      	ldr	r0, [sp, #4]
 8000694:	fbb0 f0f3 	udiv	r0, r0, r3
 8000698:	b002      	add	sp, #8
 800069a:	4770      	bx	lr
 800069c:	20000138 	.word	0x20000138

080006a0 <_ZN6CTimer8delay_msEm>:
 80006a0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80006a2:	460c      	mov	r4, r1
 80006a4:	4605      	mov	r5, r0
 80006a6:	f7ff ffed 	bl	8000684 <_ZN6CTimer8get_timeEv>
 80006aa:	4420      	add	r0, r4
 80006ac:	9001      	str	r0, [sp, #4]
 80006ae:	4628      	mov	r0, r5
 80006b0:	9c01      	ldr	r4, [sp, #4]
 80006b2:	f7ff ffe7 	bl	8000684 <_ZN6CTimer8get_timeEv>
 80006b6:	4284      	cmp	r4, r0
 80006b8:	d902      	bls.n	80006c0 <_ZN6CTimer8delay_msEm+0x20>
 80006ba:	f001 fe61 	bl	8002380 <core_yield>
 80006be:	e7f6      	b.n	80006ae <_ZN6CTimer8delay_msEm+0xe>
 80006c0:	b003      	add	sp, #12
 80006c2:	bd30      	pop	{r4, r5, pc}

080006c4 <_ZN6CTimer22event_timer_set_periodEhm>:
 80006c4:	b672      	cpsid	i
 80006c6:	230a      	movs	r3, #10
 80006c8:	435a      	muls	r2, r3
 80006ca:	4b05      	ldr	r3, [pc, #20]	; (80006e0 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 80006cc:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80006d0:	4b04      	ldr	r3, [pc, #16]	; (80006e4 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 80006d2:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80006d6:	4b04      	ldr	r3, [pc, #16]	; (80006e8 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 80006d8:	2200      	movs	r2, #0
 80006da:	545a      	strb	r2, [r3, r1]
 80006dc:	b662      	cpsie	i
 80006de:	4770      	bx	lr
 80006e0:	20000110 	.word	0x20000110
 80006e4:	20000140 	.word	0x20000140
 80006e8:	20000130 	.word	0x20000130

080006ec <_ZN6CTimer17event_timer_checkEh>:
 80006ec:	4b05      	ldr	r3, [pc, #20]	; (8000704 <_ZN6CTimer17event_timer_checkEh+0x18>)
 80006ee:	5c5a      	ldrb	r2, [r3, r1]
 80006f0:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 80006f4:	b12a      	cbz	r2, 8000702 <_ZN6CTimer17event_timer_checkEh+0x16>
 80006f6:	b672      	cpsid	i
 80006f8:	5c58      	ldrb	r0, [r3, r1]
 80006fa:	2200      	movs	r2, #0
 80006fc:	b2c0      	uxtb	r0, r0
 80006fe:	545a      	strb	r2, [r3, r1]
 8000700:	b662      	cpsie	i
 8000702:	4770      	bx	lr
 8000704:	20000130 	.word	0x20000130

08000708 <_ZN4CRGB8rgb_readEh>:
 8000708:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800070c:	4604      	mov	r4, r0
 800070e:	4688      	mov	r8, r1
 8000710:	f000 fae0 	bl	8000cd4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000714:	4620      	mov	r0, r4
 8000716:	2172      	movs	r1, #114	; 0x72
 8000718:	f000 fb06 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800071c:	21b4      	movs	r1, #180	; 0xb4
 800071e:	4620      	mov	r0, r4
 8000720:	f000 fb02 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000724:	4620      	mov	r0, r4
 8000726:	f000 fad5 	bl	8000cd4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800072a:	4620      	mov	r0, r4
 800072c:	2173      	movs	r1, #115	; 0x73
 800072e:	f000 fafb 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000732:	4620      	mov	r0, r4
 8000734:	2101      	movs	r1, #1
 8000736:	4622      	mov	r2, r4
 8000738:	f000 fb37 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800073c:	7823      	ldrb	r3, [r4, #0]
 800073e:	83a3      	strh	r3, [r4, #28]
 8000740:	7863      	ldrb	r3, [r4, #1]
 8000742:	83e3      	strh	r3, [r4, #30]
 8000744:	78a3      	ldrb	r3, [r4, #2]
 8000746:	8423      	strh	r3, [r4, #32]
 8000748:	78e3      	ldrb	r3, [r4, #3]
 800074a:	8463      	strh	r3, [r4, #34]	; 0x22
 800074c:	2101      	movs	r1, #1
 800074e:	4620      	mov	r0, r4
 8000750:	4622      	mov	r2, r4
 8000752:	f104 091a 	add.w	r9, r4, #26
 8000756:	1e65      	subs	r5, r4, #1
 8000758:	f000 fb27 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800075c:	1ca6      	adds	r6, r4, #2
 800075e:	f104 0722 	add.w	r7, r4, #34	; 0x22
 8000762:	4629      	mov	r1, r5
 8000764:	464b      	mov	r3, r9
 8000766:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 800076a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 800076e:	42bb      	cmp	r3, r7
 8000770:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000774:	801a      	strh	r2, [r3, #0]
 8000776:	d1f6      	bne.n	8000766 <_ZN4CRGB8rgb_readEh+0x5e>
 8000778:	4620      	mov	r0, r4
 800077a:	2101      	movs	r1, #1
 800077c:	4622      	mov	r2, r4
 800077e:	f000 fb14 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000782:	7823      	ldrb	r3, [r4, #0]
 8000784:	80a3      	strh	r3, [r4, #4]
 8000786:	7863      	ldrb	r3, [r4, #1]
 8000788:	80e3      	strh	r3, [r4, #6]
 800078a:	78a3      	ldrb	r3, [r4, #2]
 800078c:	8123      	strh	r3, [r4, #8]
 800078e:	78e3      	ldrb	r3, [r4, #3]
 8000790:	8163      	strh	r3, [r4, #10]
 8000792:	2101      	movs	r1, #1
 8000794:	4620      	mov	r0, r4
 8000796:	4622      	mov	r2, r4
 8000798:	f000 fb07 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800079c:	f104 0a0a 	add.w	sl, r4, #10
 80007a0:	4633      	mov	r3, r6
 80007a2:	4629      	mov	r1, r5
 80007a4:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80007a8:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80007ac:	4553      	cmp	r3, sl
 80007ae:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 80007b2:	801a      	strh	r2, [r3, #0]
 80007b4:	d1f6      	bne.n	80007a4 <_ZN4CRGB8rgb_readEh+0x9c>
 80007b6:	4620      	mov	r0, r4
 80007b8:	2101      	movs	r1, #1
 80007ba:	4622      	mov	r2, r4
 80007bc:	f000 faf5 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007c0:	7823      	ldrb	r3, [r4, #0]
 80007c2:	81a3      	strh	r3, [r4, #12]
 80007c4:	7863      	ldrb	r3, [r4, #1]
 80007c6:	81e3      	strh	r3, [r4, #14]
 80007c8:	78a3      	ldrb	r3, [r4, #2]
 80007ca:	8223      	strh	r3, [r4, #16]
 80007cc:	78e3      	ldrb	r3, [r4, #3]
 80007ce:	8263      	strh	r3, [r4, #18]
 80007d0:	4622      	mov	r2, r4
 80007d2:	4620      	mov	r0, r4
 80007d4:	2101      	movs	r1, #1
 80007d6:	f000 fae8 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007da:	f104 0612 	add.w	r6, r4, #18
 80007de:	462a      	mov	r2, r5
 80007e0:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 80007e4:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80007e8:	45b2      	cmp	sl, r6
 80007ea:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80007ee:	f8aa 3000 	strh.w	r3, [sl]
 80007f2:	d1f5      	bne.n	80007e0 <_ZN4CRGB8rgb_readEh+0xd8>
 80007f4:	4620      	mov	r0, r4
 80007f6:	2101      	movs	r1, #1
 80007f8:	4622      	mov	r2, r4
 80007fa:	f000 fad6 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007fe:	7823      	ldrb	r3, [r4, #0]
 8000800:	82a3      	strh	r3, [r4, #20]
 8000802:	7863      	ldrb	r3, [r4, #1]
 8000804:	82e3      	strh	r3, [r4, #22]
 8000806:	78a3      	ldrb	r3, [r4, #2]
 8000808:	8323      	strh	r3, [r4, #24]
 800080a:	78e3      	ldrb	r3, [r4, #3]
 800080c:	8363      	strh	r3, [r4, #26]
 800080e:	4622      	mov	r2, r4
 8000810:	4620      	mov	r0, r4
 8000812:	2101      	movs	r1, #1
 8000814:	f000 fac9 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000818:	462a      	mov	r2, r5
 800081a:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 800081e:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000822:	454e      	cmp	r6, r9
 8000824:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000828:	8033      	strh	r3, [r6, #0]
 800082a:	d1f6      	bne.n	800081a <_ZN4CRGB8rgb_readEh+0x112>
 800082c:	4620      	mov	r0, r4
 800082e:	2101      	movs	r1, #1
 8000830:	4622      	mov	r2, r4
 8000832:	f000 faba 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000836:	7823      	ldrb	r3, [r4, #0]
 8000838:	84a3      	strh	r3, [r4, #36]	; 0x24
 800083a:	7863      	ldrb	r3, [r4, #1]
 800083c:	84e3      	strh	r3, [r4, #38]	; 0x26
 800083e:	78a3      	ldrb	r3, [r4, #2]
 8000840:	8523      	strh	r3, [r4, #40]	; 0x28
 8000842:	78e3      	ldrb	r3, [r4, #3]
 8000844:	8563      	strh	r3, [r4, #42]	; 0x2a
 8000846:	4622      	mov	r2, r4
 8000848:	4620      	mov	r0, r4
 800084a:	2100      	movs	r1, #0
 800084c:	f000 faad 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000850:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 8000854:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000858:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 800085c:	4297      	cmp	r7, r2
 800085e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000862:	803b      	strh	r3, [r7, #0]
 8000864:	d1f6      	bne.n	8000854 <_ZN4CRGB8rgb_readEh+0x14c>
 8000866:	4620      	mov	r0, r4
 8000868:	f000 fa49 	bl	8000cfe <_ZN8CRGB_I2C11rgb_i2cStopEv>
 800086c:	f1b8 0f00 	cmp.w	r8, #0
 8000870:	d025      	beq.n	80008be <_ZN4CRGB8rgb_readEh+0x1b6>
 8000872:	2300      	movs	r3, #0
 8000874:	88a1      	ldrh	r1, [r4, #4]
 8000876:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 800087a:	440a      	add	r2, r1
 800087c:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8000880:	89a1      	ldrh	r1, [r4, #12]
 8000882:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000886:	440a      	add	r2, r1
 8000888:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 800088c:	8aa1      	ldrh	r1, [r4, #20]
 800088e:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 8000892:	440a      	add	r2, r1
 8000894:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 8000898:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 800089a:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 800089e:	440a      	add	r2, r1
 80008a0:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 80008a4:	8ba1      	ldrh	r1, [r4, #28]
 80008a6:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 80008aa:	3301      	adds	r3, #1
 80008ac:	440a      	add	r2, r1
 80008ae:	2b04      	cmp	r3, #4
 80008b0:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 80008b4:	f104 0402 	add.w	r4, r4, #2
 80008b8:	d1dc      	bne.n	8000874 <_ZN4CRGB8rgb_readEh+0x16c>
 80008ba:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80008be:	4641      	mov	r1, r8
 80008c0:	b672      	cpsid	i
 80008c2:	88a3      	ldrh	r3, [r4, #4]
 80008c4:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 80008c8:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 80008cc:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 80008d0:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 80008d4:	1a18      	subs	r0, r3, r0
 80008d6:	89a3      	ldrh	r3, [r4, #12]
 80008d8:	1a9a      	subs	r2, r3, r2
 80008da:	8aa3      	ldrh	r3, [r4, #20]
 80008dc:	1b5b      	subs	r3, r3, r5
 80008de:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 80008e0:	1bad      	subs	r5, r5, r6
 80008e2:	84a5      	strh	r5, [r4, #36]	; 0x24
 80008e4:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 80008e8:	8ba5      	ldrh	r5, [r4, #28]
 80008ea:	b280      	uxth	r0, r0
 80008ec:	b292      	uxth	r2, r2
 80008ee:	b29b      	uxth	r3, r3
 80008f0:	1bad      	subs	r5, r5, r6
 80008f2:	80a0      	strh	r0, [r4, #4]
 80008f4:	81a2      	strh	r2, [r4, #12]
 80008f6:	82a3      	strh	r3, [r4, #20]
 80008f8:	83a5      	strh	r5, [r4, #28]
 80008fa:	b662      	cpsie	i
 80008fc:	b200      	sxth	r0, r0
 80008fe:	b212      	sxth	r2, r2
 8000900:	1885      	adds	r5, r0, r2
 8000902:	b21b      	sxth	r3, r3
 8000904:	18ed      	adds	r5, r5, r3
 8000906:	d00e      	beq.n	8000926 <_ZN4CRGB8rgb_readEh+0x21e>
 8000908:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 800090c:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8000910:	fb90 f0f5 	sdiv	r0, r0, r5
 8000914:	fb92 f2f5 	sdiv	r2, r2, r5
 8000918:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 800091c:	85a0      	strh	r0, [r4, #44]	; 0x2c
 800091e:	fb93 f3f5 	sdiv	r3, r3, r5
 8000922:	86a2      	strh	r2, [r4, #52]	; 0x34
 8000924:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8000926:	3101      	adds	r1, #1
 8000928:	2904      	cmp	r1, #4
 800092a:	f104 0402 	add.w	r4, r4, #2
 800092e:	d1c7      	bne.n	80008c0 <_ZN4CRGB8rgb_readEh+0x1b8>
 8000930:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08000934 <_ZN4CRGB8rgb_initEv>:
 8000934:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000936:	4606      	mov	r6, r0
 8000938:	4635      	mov	r5, r6
 800093a:	f000 f991 	bl	8000c60 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 800093e:	4633      	mov	r3, r6
 8000940:	2200      	movs	r2, #0
 8000942:	3201      	adds	r2, #1
 8000944:	2400      	movs	r4, #0
 8000946:	2a04      	cmp	r2, #4
 8000948:	809c      	strh	r4, [r3, #4]
 800094a:	819c      	strh	r4, [r3, #12]
 800094c:	829c      	strh	r4, [r3, #20]
 800094e:	849c      	strh	r4, [r3, #36]	; 0x24
 8000950:	839c      	strh	r4, [r3, #28]
 8000952:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 8000956:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 800095a:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 800095e:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 8000962:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 8000966:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000968:	869c      	strh	r4, [r3, #52]	; 0x34
 800096a:	879c      	strh	r4, [r3, #60]	; 0x3c
 800096c:	f103 0302 	add.w	r3, r3, #2
 8000970:	d1e7      	bne.n	8000942 <_ZN4CRGB8rgb_initEv+0xe>
 8000972:	4630      	mov	r0, r6
 8000974:	2172      	movs	r1, #114	; 0x72
 8000976:	2281      	movs	r2, #129	; 0x81
 8000978:	23ff      	movs	r3, #255	; 0xff
 800097a:	f000 f9fe 	bl	8000d7a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800097e:	4630      	mov	r0, r6
 8000980:	2172      	movs	r1, #114	; 0x72
 8000982:	2283      	movs	r2, #131	; 0x83
 8000984:	23ff      	movs	r3, #255	; 0xff
 8000986:	f000 f9f8 	bl	8000d7a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800098a:	4630      	mov	r0, r6
 800098c:	2172      	movs	r1, #114	; 0x72
 800098e:	228d      	movs	r2, #141	; 0x8d
 8000990:	4623      	mov	r3, r4
 8000992:	f000 f9f2 	bl	8000d7a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000996:	4630      	mov	r0, r6
 8000998:	2172      	movs	r1, #114	; 0x72
 800099a:	2280      	movs	r2, #128	; 0x80
 800099c:	2303      	movs	r3, #3
 800099e:	f000 f9ec 	bl	8000d7a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009a2:	228f      	movs	r2, #143	; 0x8f
 80009a4:	2323      	movs	r3, #35	; 0x23
 80009a6:	4630      	mov	r0, r6
 80009a8:	2172      	movs	r1, #114	; 0x72
 80009aa:	f000 f9e6 	bl	8000d7a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009ae:	af01      	add	r7, sp, #4
 80009b0:	4630      	mov	r0, r6
 80009b2:	4621      	mov	r1, r4
 80009b4:	f7ff fea8 	bl	8000708 <_ZN4CRGB8rgb_readEh>
 80009b8:	463b      	mov	r3, r7
 80009ba:	4630      	mov	r0, r6
 80009bc:	2172      	movs	r1, #114	; 0x72
 80009be:	2292      	movs	r2, #146	; 0x92
 80009c0:	f000 fa40 	bl	8000e44 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 80009c4:	4623      	mov	r3, r4
 80009c6:	5cfa      	ldrb	r2, [r7, r3]
 80009c8:	2a69      	cmp	r2, #105	; 0x69
 80009ca:	bf1c      	itt	ne
 80009cc:	2201      	movne	r2, #1
 80009ce:	409a      	lslne	r2, r3
 80009d0:	f103 0301 	add.w	r3, r3, #1
 80009d4:	bf18      	it	ne
 80009d6:	4314      	orrne	r4, r2
 80009d8:	2b04      	cmp	r3, #4
 80009da:	d1f4      	bne.n	80009c6 <_ZN4CRGB8rgb_initEv+0x92>
 80009dc:	461f      	mov	r7, r3
 80009de:	4630      	mov	r0, r6
 80009e0:	2101      	movs	r1, #1
 80009e2:	f7ff fe91 	bl	8000708 <_ZN4CRGB8rgb_readEh>
 80009e6:	3f01      	subs	r7, #1
 80009e8:	d1f9      	bne.n	80009de <_ZN4CRGB8rgb_initEv+0xaa>
 80009ea:	2104      	movs	r1, #4
 80009ec:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 80009f0:	089b      	lsrs	r3, r3, #2
 80009f2:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 80009f6:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 80009fa:	089b      	lsrs	r3, r3, #2
 80009fc:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000a00:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000a04:	089b      	lsrs	r3, r3, #2
 8000a06:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 8000a0a:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8000a0e:	089b      	lsrs	r3, r3, #2
 8000a10:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8000a14:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 8000a18:	3901      	subs	r1, #1
 8000a1a:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000a1e:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8000a22:	f105 0502 	add.w	r5, r5, #2
 8000a26:	d1e1      	bne.n	80009ec <_ZN4CRGB8rgb_initEv+0xb8>
 8000a28:	4630      	mov	r0, r6
 8000a2a:	f7ff fe6d 	bl	8000708 <_ZN4CRGB8rgb_readEh>
 8000a2e:	b114      	cbz	r4, 8000a36 <_ZN4CRGB8rgb_initEv+0x102>
 8000a30:	4802      	ldr	r0, [pc, #8]	; (8000a3c <_ZN4CRGB8rgb_initEv+0x108>)
 8000a32:	1b00      	subs	r0, r0, r4
 8000a34:	e000      	b.n	8000a38 <_ZN4CRGB8rgb_initEv+0x104>
 8000a36:	4620      	mov	r0, r4
 8000a38:	b003      	add	sp, #12
 8000a3a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a3c:	fffffc18 	.word	0xfffffc18

08000a40 <_ZN4CRGB14get_rgb_resultEv>:
 8000a40:	3004      	adds	r0, #4
 8000a42:	4770      	bx	lr

08000a44 <_ZN6CMotor11motor_sleepEv>:
 8000a44:	b510      	push	{r4, lr}
 8000a46:	4c07      	ldr	r4, [pc, #28]	; (8000a64 <_ZN6CMotor11motor_sleepEv+0x20>)
 8000a48:	21c0      	movs	r1, #192	; 0xc0
 8000a4a:	4620      	mov	r0, r4
 8000a4c:	2200      	movs	r2, #0
 8000a4e:	2318      	movs	r3, #24
 8000a50:	f000 fadc 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000a54:	4620      	mov	r0, r4
 8000a56:	21c2      	movs	r1, #194	; 0xc2
 8000a58:	2200      	movs	r2, #0
 8000a5a:	2318      	movs	r3, #24
 8000a5c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a60:	f000 bad4 	b.w	800100c <_ZN4CI2C9write_regEhhh>
 8000a64:	20000160 	.word	0x20000160

08000a68 <_ZN6CMotor13motor_refreshEv>:
 8000a68:	b570      	push	{r4, r5, r6, lr}
 8000a6a:	e890 0030 	ldmia.w	r0, {r4, r5}
 8000a6e:	2c2c      	cmp	r4, #44	; 0x2c
 8000a70:	dc74      	bgt.n	8000b5c <_ZN6CMotor13motor_refreshEv+0xf4>
 8000a72:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000a76:	db11      	blt.n	8000a9c <_ZN6CMotor13motor_refreshEv+0x34>
 8000a78:	2d2c      	cmp	r5, #44	; 0x2c
 8000a7a:	dc5e      	bgt.n	8000b3a <_ZN6CMotor13motor_refreshEv+0xd2>
 8000a7c:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 8000a80:	db33      	blt.n	8000aea <_ZN6CMotor13motor_refreshEv+0x82>
 8000a82:	b1dc      	cbz	r4, 8000abc <_ZN6CMotor13motor_refreshEv+0x54>
 8000a84:	e001      	b.n	8000a8a <_ZN6CMotor13motor_refreshEv+0x22>
 8000a86:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000a8a:	2c00      	cmp	r4, #0
 8000a8c:	dd0d      	ble.n	8000aaa <_ZN6CMotor13motor_refreshEv+0x42>
 8000a8e:	2c06      	cmp	r4, #6
 8000a90:	bfb8      	it	lt
 8000a92:	2406      	movlt	r4, #6
 8000a94:	00a4      	lsls	r4, r4, #2
 8000a96:	f044 0402 	orr.w	r4, r4, #2
 8000a9a:	e00d      	b.n	8000ab8 <_ZN6CMotor13motor_refreshEv+0x50>
 8000a9c:	2d2c      	cmp	r5, #44	; 0x2c
 8000a9e:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000aa2:	dc60      	bgt.n	8000b66 <_ZN6CMotor13motor_refreshEv+0xfe>
 8000aa4:	42a5      	cmp	r5, r4
 8000aa6:	bfb8      	it	lt
 8000aa8:	4625      	movlt	r5, r4
 8000aaa:	4264      	negs	r4, r4
 8000aac:	2c06      	cmp	r4, #6
 8000aae:	bfb8      	it	lt
 8000ab0:	2406      	movlt	r4, #6
 8000ab2:	00a4      	lsls	r4, r4, #2
 8000ab4:	f044 0401 	orr.w	r4, r4, #1
 8000ab8:	b2e4      	uxtb	r4, r4
 8000aba:	e000      	b.n	8000abe <_ZN6CMotor13motor_refreshEv+0x56>
 8000abc:	241b      	movs	r4, #27
 8000abe:	2200      	movs	r2, #0
 8000ac0:	4613      	mov	r3, r2
 8000ac2:	482a      	ldr	r0, [pc, #168]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000ac4:	21c0      	movs	r1, #192	; 0xc0
 8000ac6:	f000 faa1 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000aca:	4828      	ldr	r0, [pc, #160]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000acc:	21c0      	movs	r1, #192	; 0xc0
 8000ace:	2200      	movs	r2, #0
 8000ad0:	4623      	mov	r3, r4
 8000ad2:	f000 fa9b 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000ad6:	2d00      	cmp	r5, #0
 8000ad8:	d020      	beq.n	8000b1c <_ZN6CMotor13motor_refreshEv+0xb4>
 8000ada:	dd16      	ble.n	8000b0a <_ZN6CMotor13motor_refreshEv+0xa2>
 8000adc:	2d06      	cmp	r5, #6
 8000ade:	bfb8      	it	lt
 8000ae0:	2506      	movlt	r5, #6
 8000ae2:	00ad      	lsls	r5, r5, #2
 8000ae4:	f045 0501 	orr.w	r5, r5, #1
 8000ae8:	e016      	b.n	8000b18 <_ZN6CMotor13motor_refreshEv+0xb0>
 8000aea:	2c00      	cmp	r4, #0
 8000aec:	d1cb      	bne.n	8000a86 <_ZN6CMotor13motor_refreshEv+0x1e>
 8000aee:	481f      	ldr	r0, [pc, #124]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000af0:	21c0      	movs	r1, #192	; 0xc0
 8000af2:	4622      	mov	r2, r4
 8000af4:	4623      	mov	r3, r4
 8000af6:	f000 fa89 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000afa:	481c      	ldr	r0, [pc, #112]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000afc:	21c0      	movs	r1, #192	; 0xc0
 8000afe:	4622      	mov	r2, r4
 8000b00:	231b      	movs	r3, #27
 8000b02:	f000 fa83 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000b06:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000b0a:	426d      	negs	r5, r5
 8000b0c:	2d06      	cmp	r5, #6
 8000b0e:	bfb8      	it	lt
 8000b10:	2506      	movlt	r5, #6
 8000b12:	00ad      	lsls	r5, r5, #2
 8000b14:	f045 0502 	orr.w	r5, r5, #2
 8000b18:	b2ed      	uxtb	r5, r5
 8000b1a:	e000      	b.n	8000b1e <_ZN6CMotor13motor_refreshEv+0xb6>
 8000b1c:	251b      	movs	r5, #27
 8000b1e:	2200      	movs	r2, #0
 8000b20:	4613      	mov	r3, r2
 8000b22:	4812      	ldr	r0, [pc, #72]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b24:	21c2      	movs	r1, #194	; 0xc2
 8000b26:	f000 fa71 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000b2a:	462b      	mov	r3, r5
 8000b2c:	480f      	ldr	r0, [pc, #60]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b2e:	21c2      	movs	r1, #194	; 0xc2
 8000b30:	2200      	movs	r2, #0
 8000b32:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b36:	f000 ba69 	b.w	800100c <_ZN4CI2C9write_regEhhh>
 8000b3a:	b96c      	cbnz	r4, 8000b58 <_ZN6CMotor13motor_refreshEv+0xf0>
 8000b3c:	480b      	ldr	r0, [pc, #44]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b3e:	21c0      	movs	r1, #192	; 0xc0
 8000b40:	4622      	mov	r2, r4
 8000b42:	4623      	mov	r3, r4
 8000b44:	f000 fa62 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000b48:	4808      	ldr	r0, [pc, #32]	; (8000b6c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b4a:	21c0      	movs	r1, #192	; 0xc0
 8000b4c:	4622      	mov	r2, r4
 8000b4e:	231b      	movs	r3, #27
 8000b50:	f000 fa5c 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8000b54:	252c      	movs	r5, #44	; 0x2c
 8000b56:	e7c4      	b.n	8000ae2 <_ZN6CMotor13motor_refreshEv+0x7a>
 8000b58:	252c      	movs	r5, #44	; 0x2c
 8000b5a:	e796      	b.n	8000a8a <_ZN6CMotor13motor_refreshEv+0x22>
 8000b5c:	242c      	movs	r4, #44	; 0x2c
 8000b5e:	42a5      	cmp	r5, r4
 8000b60:	dd8c      	ble.n	8000a7c <_ZN6CMotor13motor_refreshEv+0x14>
 8000b62:	4625      	mov	r5, r4
 8000b64:	e796      	b.n	8000a94 <_ZN6CMotor13motor_refreshEv+0x2c>
 8000b66:	252c      	movs	r5, #44	; 0x2c
 8000b68:	e79f      	b.n	8000aaa <_ZN6CMotor13motor_refreshEv+0x42>
 8000b6a:	bf00      	nop
 8000b6c:	20000160 	.word	0x20000160

08000b70 <_ZN6CMotor9set_motorEml>:
 8000b70:	2901      	cmp	r1, #1
 8000b72:	bf98      	it	ls
 8000b74:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000b78:	f7ff bf76 	b.w	8000a68 <_ZN6CMotor13motor_refreshEv>

08000b7c <_ZN6CMotor10motor_initEv>:
 8000b7c:	b510      	push	{r4, lr}
 8000b7e:	2100      	movs	r1, #0
 8000b80:	4604      	mov	r4, r0
 8000b82:	460a      	mov	r2, r1
 8000b84:	f7ff fff4 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8000b88:	4620      	mov	r0, r4
 8000b8a:	2101      	movs	r1, #1
 8000b8c:	2200      	movs	r2, #0
 8000b8e:	f7ff ffef 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8000b92:	4620      	mov	r0, r4
 8000b94:	f7ff ff68 	bl	8000a68 <_ZN6CMotor13motor_refreshEv>
 8000b98:	2000      	movs	r0, #0
 8000b9a:	bd10      	pop	{r4, pc}

08000b9c <_ZN8CSensors12sensors_initEv>:
 8000b9c:	b510      	push	{r4, lr}
 8000b9e:	4604      	mov	r4, r0
 8000ba0:	4808      	ldr	r0, [pc, #32]	; (8000bc4 <_ZN8CSensors12sensors_initEv+0x28>)
 8000ba2:	f000 f9b1 	bl	8000f08 <_ZN4CI2C4initEv>
 8000ba6:	4620      	mov	r0, r4
 8000ba8:	f7ff fec4 	bl	8000934 <_ZN4CRGB8rgb_initEv>
 8000bac:	b110      	cbz	r0, 8000bb4 <_ZN8CSensors12sensors_initEv+0x18>
 8000bae:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000bb2:	bd10      	pop	{r4, pc}
 8000bb4:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8000bb8:	f000 fb36 	bl	8001228 <_ZN4CIMU8imu_initEv>
 8000bbc:	b108      	cbz	r0, 8000bc2 <_ZN8CSensors12sensors_initEv+0x26>
 8000bbe:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000bc2:	bd10      	pop	{r4, pc}
 8000bc4:	20000160 	.word	0x20000160

08000bc8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000bc8:	2365      	movs	r3, #101	; 0x65
 8000bca:	3b01      	subs	r3, #1
 8000bcc:	d001      	beq.n	8000bd2 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000bce:	bf00      	nop
 8000bd0:	e7fb      	b.n	8000bca <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000bd2:	4770      	bx	lr

08000bd4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000bd4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000bd6:	2301      	movs	r3, #1
 8000bd8:	2203      	movs	r2, #3
 8000bda:	4605      	mov	r5, r0
 8000bdc:	24f0      	movs	r4, #240	; 0xf0
 8000bde:	f88d 3004 	strb.w	r3, [sp, #4]
 8000be2:	f88d 3006 	strb.w	r3, [sp, #6]
 8000be6:	4669      	mov	r1, sp
 8000be8:	2300      	movs	r3, #0
 8000bea:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000bee:	f88d 2005 	strb.w	r2, [sp, #5]
 8000bf2:	f88d 3007 	strb.w	r3, [sp, #7]
 8000bf6:	9400      	str	r4, [sp, #0]
 8000bf8:	f001 fc0c 	bl	8002414 <GPIO_Init>
 8000bfc:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c00:	4628      	mov	r0, r5
 8000c02:	851c      	strh	r4, [r3, #40]	; 0x28
 8000c04:	f7ff ffe0 	bl	8000bc8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c08:	b003      	add	sp, #12
 8000c0a:	bd30      	pop	{r4, r5, pc}

08000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000c0c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000c0e:	2300      	movs	r3, #0
 8000c10:	2203      	movs	r2, #3
 8000c12:	4605      	mov	r5, r0
 8000c14:	24f0      	movs	r4, #240	; 0xf0
 8000c16:	4669      	mov	r1, sp
 8000c18:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c1c:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c20:	f88d 2005 	strb.w	r2, [sp, #5]
 8000c24:	f88d 3007 	strb.w	r3, [sp, #7]
 8000c28:	9400      	str	r4, [sp, #0]
 8000c2a:	f001 fbf3 	bl	8002414 <GPIO_Init>
 8000c2e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c32:	4628      	mov	r0, r5
 8000c34:	619c      	str	r4, [r3, #24]
 8000c36:	f7ff ffc7 	bl	8000bc8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c3a:	b003      	add	sp, #12
 8000c3c:	bd30      	pop	{r4, r5, pc}
	...

08000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000c40:	4b02      	ldr	r3, [pc, #8]	; (8000c4c <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000c42:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000c46:	851a      	strh	r2, [r3, #40]	; 0x28
 8000c48:	f7ff bfbe 	b.w	8000bc8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c4c:	48000800 	.word	0x48000800

08000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000c50:	4b02      	ldr	r3, [pc, #8]	; (8000c5c <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000c52:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000c56:	619a      	str	r2, [r3, #24]
 8000c58:	f7ff bfb6 	b.w	8000bc8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c5c:	48000800 	.word	0x48000800

08000c60 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000c60:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000c62:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000c66:	4605      	mov	r5, r0
 8000c68:	2400      	movs	r4, #0
 8000c6a:	9300      	str	r3, [sp, #0]
 8000c6c:	2703      	movs	r7, #3
 8000c6e:	2301      	movs	r3, #1
 8000c70:	4817      	ldr	r0, [pc, #92]	; (8000cd0 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8000c72:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c76:	4669      	mov	r1, sp
 8000c78:	26f0      	movs	r6, #240	; 0xf0
 8000c7a:	f88d 7005 	strb.w	r7, [sp, #5]
 8000c7e:	f88d 4006 	strb.w	r4, [sp, #6]
 8000c82:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c86:	f001 fbc5 	bl	8002414 <GPIO_Init>
 8000c8a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c8e:	4669      	mov	r1, sp
 8000c90:	9600      	str	r6, [sp, #0]
 8000c92:	f88d 4004 	strb.w	r4, [sp, #4]
 8000c96:	f88d 7005 	strb.w	r7, [sp, #5]
 8000c9a:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c9e:	f001 fbb9 	bl	8002414 <GPIO_Init>
 8000ca2:	4631      	mov	r1, r6
 8000ca4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ca8:	f001 fbf6 	bl	8002498 <GPIO_SetBits>
 8000cac:	4628      	mov	r0, r5
 8000cae:	f7ff ffcf 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cb2:	4628      	mov	r0, r5
 8000cb4:	f7ff ff8e 	bl	8000bd4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000cb8:	4628      	mov	r0, r5
 8000cba:	f7ff ffa7 	bl	8000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000cbe:	f242 7311 	movw	r3, #10001	; 0x2711
 8000cc2:	3b01      	subs	r3, #1
 8000cc4:	d001      	beq.n	8000cca <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 8000cc6:	bf00      	nop
 8000cc8:	e7fb      	b.n	8000cc2 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 8000cca:	b003      	add	sp, #12
 8000ccc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000cce:	bf00      	nop
 8000cd0:	48000800 	.word	0x48000800

08000cd4 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000cd4:	b510      	push	{r4, lr}
 8000cd6:	4604      	mov	r4, r0
 8000cd8:	f7ff ffba 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cdc:	4620      	mov	r0, r4
 8000cde:	f7ff ff95 	bl	8000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ce2:	4620      	mov	r0, r4
 8000ce4:	f7ff ffb4 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000ce8:	4620      	mov	r0, r4
 8000cea:	f7ff ff73 	bl	8000bd4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000cee:	4620      	mov	r0, r4
 8000cf0:	f7ff ffa6 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000cf4:	4620      	mov	r0, r4
 8000cf6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000cfa:	f7ff bf87 	b.w	8000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000cfe <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000cfe:	b510      	push	{r4, lr}
 8000d00:	4604      	mov	r4, r0
 8000d02:	f7ff ff9d 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d06:	4620      	mov	r0, r4
 8000d08:	f7ff ff64 	bl	8000bd4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d0c:	4620      	mov	r0, r4
 8000d0e:	f7ff ff9f 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d12:	4620      	mov	r0, r4
 8000d14:	f7ff ff5e 	bl	8000bd4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d18:	4620      	mov	r0, r4
 8000d1a:	f7ff ff99 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d1e:	4620      	mov	r0, r4
 8000d20:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d24:	f7ff bf72 	b.w	8000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000d28:	b570      	push	{r4, r5, r6, lr}
 8000d2a:	4604      	mov	r4, r0
 8000d2c:	460e      	mov	r6, r1
 8000d2e:	2508      	movs	r5, #8
 8000d30:	4620      	mov	r0, r4
 8000d32:	f7ff ff85 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d36:	0633      	lsls	r3, r6, #24
 8000d38:	4620      	mov	r0, r4
 8000d3a:	d502      	bpl.n	8000d42 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000d3c:	f7ff ff66 	bl	8000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d40:	e001      	b.n	8000d46 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000d42:	f7ff ff47 	bl	8000bd4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d46:	4620      	mov	r0, r4
 8000d48:	3d01      	subs	r5, #1
 8000d4a:	f7ff ff81 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d4e:	0076      	lsls	r6, r6, #1
 8000d50:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000d54:	b2f6      	uxtb	r6, r6
 8000d56:	d1eb      	bne.n	8000d30 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000d58:	4620      	mov	r0, r4
 8000d5a:	f7ff ff71 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d5e:	4620      	mov	r0, r4
 8000d60:	f7ff ff54 	bl	8000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d64:	4620      	mov	r0, r4
 8000d66:	f7ff ff73 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d6a:	4620      	mov	r0, r4
 8000d6c:	f7ff ff68 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d70:	4620      	mov	r0, r4
 8000d72:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d76:	f7ff bf27 	b.w	8000bc8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000d7a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000d7a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d7c:	4604      	mov	r4, r0
 8000d7e:	460f      	mov	r7, r1
 8000d80:	4616      	mov	r6, r2
 8000d82:	461d      	mov	r5, r3
 8000d84:	f7ff ffa6 	bl	8000cd4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000d88:	4620      	mov	r0, r4
 8000d8a:	4639      	mov	r1, r7
 8000d8c:	f7ff ffcc 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000d90:	4620      	mov	r0, r4
 8000d92:	4631      	mov	r1, r6
 8000d94:	f7ff ffc8 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000d98:	4620      	mov	r0, r4
 8000d9a:	4629      	mov	r1, r5
 8000d9c:	f7ff ffc4 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000da0:	4620      	mov	r0, r4
 8000da2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000da6:	f7ff bfaa 	b.w	8000cfe <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000daa:	2300      	movs	r3, #0
 8000dac:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000db0:	4605      	mov	r5, r0
 8000db2:	7013      	strb	r3, [r2, #0]
 8000db4:	7053      	strb	r3, [r2, #1]
 8000db6:	7093      	strb	r3, [r2, #2]
 8000db8:	70d3      	strb	r3, [r2, #3]
 8000dba:	460e      	mov	r6, r1
 8000dbc:	4614      	mov	r4, r2
 8000dbe:	1cd7      	adds	r7, r2, #3
 8000dc0:	f7ff ff3e 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000dc4:	4628      	mov	r0, r5
 8000dc6:	f7ff ff21 	bl	8000c0c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000dca:	f04f 0808 	mov.w	r8, #8
 8000dce:	1e63      	subs	r3, r4, #1
 8000dd0:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000dd4:	0052      	lsls	r2, r2, #1
 8000dd6:	42bb      	cmp	r3, r7
 8000dd8:	701a      	strb	r2, [r3, #0]
 8000dda:	d1f9      	bne.n	8000dd0 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000ddc:	4628      	mov	r0, r5
 8000dde:	f7ff ff37 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000de2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000de6:	8a1b      	ldrh	r3, [r3, #16]
 8000de8:	b29b      	uxth	r3, r3
 8000dea:	06d8      	lsls	r0, r3, #27
 8000dec:	bf42      	ittt	mi
 8000dee:	7822      	ldrbmi	r2, [r4, #0]
 8000df0:	f042 0201 	orrmi.w	r2, r2, #1
 8000df4:	7022      	strbmi	r2, [r4, #0]
 8000df6:	0699      	lsls	r1, r3, #26
 8000df8:	bf42      	ittt	mi
 8000dfa:	7862      	ldrbmi	r2, [r4, #1]
 8000dfc:	f042 0201 	orrmi.w	r2, r2, #1
 8000e00:	7062      	strbmi	r2, [r4, #1]
 8000e02:	065a      	lsls	r2, r3, #25
 8000e04:	bf42      	ittt	mi
 8000e06:	78a2      	ldrbmi	r2, [r4, #2]
 8000e08:	f042 0201 	orrmi.w	r2, r2, #1
 8000e0c:	70a2      	strbmi	r2, [r4, #2]
 8000e0e:	061b      	lsls	r3, r3, #24
 8000e10:	bf42      	ittt	mi
 8000e12:	78e3      	ldrbmi	r3, [r4, #3]
 8000e14:	f043 0301 	orrmi.w	r3, r3, #1
 8000e18:	70e3      	strbmi	r3, [r4, #3]
 8000e1a:	4628      	mov	r0, r5
 8000e1c:	f7ff ff10 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e20:	f1b8 0801 	subs.w	r8, r8, #1
 8000e24:	d1d3      	bne.n	8000dce <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000e26:	b116      	cbz	r6, 8000e2e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000e28:	4628      	mov	r0, r5
 8000e2a:	f7ff fed3 	bl	8000bd4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000e2e:	4628      	mov	r0, r5
 8000e30:	f7ff ff0e 	bl	8000c50 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000e34:	4628      	mov	r0, r5
 8000e36:	f7ff ff03 	bl	8000c40 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e3a:	4628      	mov	r0, r5
 8000e3c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000e40:	f7ff bec2 	b.w	8000bc8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000e44 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000e44:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e46:	4604      	mov	r4, r0
 8000e48:	460d      	mov	r5, r1
 8000e4a:	4617      	mov	r7, r2
 8000e4c:	461e      	mov	r6, r3
 8000e4e:	f7ff ff41 	bl	8000cd4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e52:	4620      	mov	r0, r4
 8000e54:	4629      	mov	r1, r5
 8000e56:	f7ff ff67 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e5a:	4639      	mov	r1, r7
 8000e5c:	4620      	mov	r0, r4
 8000e5e:	f7ff ff63 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e62:	4620      	mov	r0, r4
 8000e64:	f7ff ff36 	bl	8000cd4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e68:	4620      	mov	r0, r4
 8000e6a:	f045 0101 	orr.w	r1, r5, #1
 8000e6e:	f7ff ff5b 	bl	8000d28 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e72:	4620      	mov	r0, r4
 8000e74:	4632      	mov	r2, r6
 8000e76:	2100      	movs	r1, #0
 8000e78:	f7ff ff97 	bl	8000daa <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000e7c:	4620      	mov	r0, r4
 8000e7e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000e82:	f7ff bf3c 	b.w	8000cfe <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000e86 <_ZN4CI2C5delayEv>:
 8000e86:	230b      	movs	r3, #11
 8000e88:	3b01      	subs	r3, #1
 8000e8a:	d001      	beq.n	8000e90 <_ZN4CI2C5delayEv+0xa>
 8000e8c:	bf00      	nop
 8000e8e:	e7fb      	b.n	8000e88 <_ZN4CI2C5delayEv+0x2>
 8000e90:	4770      	bx	lr
	...

08000e94 <_ZN4CI2C9SetLowSDAEv>:
 8000e94:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000e96:	4c0c      	ldr	r4, [pc, #48]	; (8000ec8 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000e98:	2301      	movs	r3, #1
 8000e9a:	2203      	movs	r2, #3
 8000e9c:	4606      	mov	r6, r0
 8000e9e:	2580      	movs	r5, #128	; 0x80
 8000ea0:	f88d 3004 	strb.w	r3, [sp, #4]
 8000ea4:	f88d 3006 	strb.w	r3, [sp, #6]
 8000ea8:	4620      	mov	r0, r4
 8000eaa:	2300      	movs	r3, #0
 8000eac:	4669      	mov	r1, sp
 8000eae:	f88d 2005 	strb.w	r2, [sp, #5]
 8000eb2:	f88d 3007 	strb.w	r3, [sp, #7]
 8000eb6:	9500      	str	r5, [sp, #0]
 8000eb8:	f001 faac 	bl	8002414 <GPIO_Init>
 8000ebc:	8525      	strh	r5, [r4, #40]	; 0x28
 8000ebe:	4630      	mov	r0, r6
 8000ec0:	f7ff ffe1 	bl	8000e86 <_ZN4CI2C5delayEv>
 8000ec4:	b002      	add	sp, #8
 8000ec6:	bd70      	pop	{r4, r5, r6, pc}
 8000ec8:	48000400 	.word	0x48000400

08000ecc <_ZN4CI2C10SetHighSDAEv>:
 8000ecc:	4b05      	ldr	r3, [pc, #20]	; (8000ee4 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000ece:	681a      	ldr	r2, [r3, #0]
 8000ed0:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000ed4:	601a      	str	r2, [r3, #0]
 8000ed6:	681a      	ldr	r2, [r3, #0]
 8000ed8:	601a      	str	r2, [r3, #0]
 8000eda:	2280      	movs	r2, #128	; 0x80
 8000edc:	619a      	str	r2, [r3, #24]
 8000ede:	f7ff bfd2 	b.w	8000e86 <_ZN4CI2C5delayEv>
 8000ee2:	bf00      	nop
 8000ee4:	48000400 	.word	0x48000400

08000ee8 <_ZN4CI2C9SetLowSCLEv>:
 8000ee8:	4b02      	ldr	r3, [pc, #8]	; (8000ef4 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000eea:	2240      	movs	r2, #64	; 0x40
 8000eec:	851a      	strh	r2, [r3, #40]	; 0x28
 8000eee:	f7ff bfca 	b.w	8000e86 <_ZN4CI2C5delayEv>
 8000ef2:	bf00      	nop
 8000ef4:	48000400 	.word	0x48000400

08000ef8 <_ZN4CI2C10SetHighSCLEv>:
 8000ef8:	4b02      	ldr	r3, [pc, #8]	; (8000f04 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000efa:	2240      	movs	r2, #64	; 0x40
 8000efc:	619a      	str	r2, [r3, #24]
 8000efe:	f7ff bfc2 	b.w	8000e86 <_ZN4CI2C5delayEv>
 8000f02:	bf00      	nop
 8000f04:	48000400 	.word	0x48000400

08000f08 <_ZN4CI2C4initEv>:
 8000f08:	b513      	push	{r0, r1, r4, lr}
 8000f0a:	4604      	mov	r4, r0
 8000f0c:	2101      	movs	r1, #1
 8000f0e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000f12:	f001 f877 	bl	8002004 <RCC_AHBPeriphClockCmd>
 8000f16:	23c0      	movs	r3, #192	; 0xc0
 8000f18:	9300      	str	r3, [sp, #0]
 8000f1a:	2301      	movs	r3, #1
 8000f1c:	2203      	movs	r2, #3
 8000f1e:	4669      	mov	r1, sp
 8000f20:	f88d 3004 	strb.w	r3, [sp, #4]
 8000f24:	f88d 3006 	strb.w	r3, [sp, #6]
 8000f28:	4809      	ldr	r0, [pc, #36]	; (8000f50 <_ZN4CI2C4initEv+0x48>)
 8000f2a:	f88d 2005 	strb.w	r2, [sp, #5]
 8000f2e:	2300      	movs	r3, #0
 8000f30:	f88d 3007 	strb.w	r3, [sp, #7]
 8000f34:	f001 fa6e 	bl	8002414 <GPIO_Init>
 8000f38:	4620      	mov	r0, r4
 8000f3a:	f7ff ffdd 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8000f3e:	4620      	mov	r0, r4
 8000f40:	f7ff ffa8 	bl	8000e94 <_ZN4CI2C9SetLowSDAEv>
 8000f44:	4620      	mov	r0, r4
 8000f46:	f7ff ffc1 	bl	8000ecc <_ZN4CI2C10SetHighSDAEv>
 8000f4a:	b002      	add	sp, #8
 8000f4c:	bd10      	pop	{r4, pc}
 8000f4e:	bf00      	nop
 8000f50:	48000400 	.word	0x48000400

08000f54 <_ZN4CI2C5StartEv>:
 8000f54:	b510      	push	{r4, lr}
 8000f56:	4604      	mov	r4, r0
 8000f58:	f7ff ffce 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8000f5c:	4620      	mov	r0, r4
 8000f5e:	f7ff ffb5 	bl	8000ecc <_ZN4CI2C10SetHighSDAEv>
 8000f62:	4620      	mov	r0, r4
 8000f64:	f7ff ffc8 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8000f68:	4620      	mov	r0, r4
 8000f6a:	f7ff ff93 	bl	8000e94 <_ZN4CI2C9SetLowSDAEv>
 8000f6e:	4620      	mov	r0, r4
 8000f70:	f7ff ffba 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 8000f74:	4620      	mov	r0, r4
 8000f76:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f7a:	f7ff bfa7 	b.w	8000ecc <_ZN4CI2C10SetHighSDAEv>

08000f7e <_ZN4CI2C4StopEv>:
 8000f7e:	b510      	push	{r4, lr}
 8000f80:	4604      	mov	r4, r0
 8000f82:	f7ff ffb1 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 8000f86:	4620      	mov	r0, r4
 8000f88:	f7ff ff84 	bl	8000e94 <_ZN4CI2C9SetLowSDAEv>
 8000f8c:	4620      	mov	r0, r4
 8000f8e:	f7ff ffb3 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8000f92:	4620      	mov	r0, r4
 8000f94:	f7ff ff7e 	bl	8000e94 <_ZN4CI2C9SetLowSDAEv>
 8000f98:	4620      	mov	r0, r4
 8000f9a:	f7ff ffad 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8000f9e:	4620      	mov	r0, r4
 8000fa0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000fa4:	f7ff bf92 	b.w	8000ecc <_ZN4CI2C10SetHighSDAEv>

08000fa8 <_ZN4CI2C5WriteEh>:
 8000fa8:	b570      	push	{r4, r5, r6, lr}
 8000faa:	4604      	mov	r4, r0
 8000fac:	460e      	mov	r6, r1
 8000fae:	2508      	movs	r5, #8
 8000fb0:	4620      	mov	r0, r4
 8000fb2:	f7ff ff99 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 8000fb6:	0633      	lsls	r3, r6, #24
 8000fb8:	4620      	mov	r0, r4
 8000fba:	d502      	bpl.n	8000fc2 <_ZN4CI2C5WriteEh+0x1a>
 8000fbc:	f7ff ff86 	bl	8000ecc <_ZN4CI2C10SetHighSDAEv>
 8000fc0:	e001      	b.n	8000fc6 <_ZN4CI2C5WriteEh+0x1e>
 8000fc2:	f7ff ff67 	bl	8000e94 <_ZN4CI2C9SetLowSDAEv>
 8000fc6:	4620      	mov	r0, r4
 8000fc8:	3d01      	subs	r5, #1
 8000fca:	f7ff ff95 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8000fce:	0076      	lsls	r6, r6, #1
 8000fd0:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000fd4:	b2f6      	uxtb	r6, r6
 8000fd6:	d1eb      	bne.n	8000fb0 <_ZN4CI2C5WriteEh+0x8>
 8000fd8:	4620      	mov	r0, r4
 8000fda:	f7ff ff85 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 8000fde:	4620      	mov	r0, r4
 8000fe0:	f7ff ff74 	bl	8000ecc <_ZN4CI2C10SetHighSDAEv>
 8000fe4:	4620      	mov	r0, r4
 8000fe6:	f7ff ff87 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8000fea:	4b07      	ldr	r3, [pc, #28]	; (8001008 <_ZN4CI2C5WriteEh+0x60>)
 8000fec:	8a1d      	ldrh	r5, [r3, #16]
 8000fee:	4620      	mov	r0, r4
 8000ff0:	f7ff ff7a 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 8000ff4:	b2ad      	uxth	r5, r5
 8000ff6:	4620      	mov	r0, r4
 8000ff8:	f7ff ff45 	bl	8000e86 <_ZN4CI2C5delayEv>
 8000ffc:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8001000:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001004:	bd70      	pop	{r4, r5, r6, pc}
 8001006:	bf00      	nop
 8001008:	48000400 	.word	0x48000400

0800100c <_ZN4CI2C9write_regEhhh>:
 800100c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800100e:	4604      	mov	r4, r0
 8001010:	460f      	mov	r7, r1
 8001012:	4616      	mov	r6, r2
 8001014:	461d      	mov	r5, r3
 8001016:	f7ff ff9d 	bl	8000f54 <_ZN4CI2C5StartEv>
 800101a:	4639      	mov	r1, r7
 800101c:	4620      	mov	r0, r4
 800101e:	f7ff ffc3 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 8001022:	4631      	mov	r1, r6
 8001024:	4620      	mov	r0, r4
 8001026:	f7ff ffbf 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 800102a:	4620      	mov	r0, r4
 800102c:	4629      	mov	r1, r5
 800102e:	f7ff ffbb 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 8001032:	4620      	mov	r0, r4
 8001034:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001038:	f7ff bfa1 	b.w	8000f7e <_ZN4CI2C4StopEv>

0800103c <_ZN4CI2C4ReadEh>:
 800103c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800103e:	4605      	mov	r5, r0
 8001040:	460f      	mov	r7, r1
 8001042:	f7ff ff51 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 8001046:	2608      	movs	r6, #8
 8001048:	2400      	movs	r4, #0
 800104a:	4628      	mov	r0, r5
 800104c:	f7ff ff54 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8001050:	4b10      	ldr	r3, [pc, #64]	; (8001094 <_ZN4CI2C4ReadEh+0x58>)
 8001052:	8a1b      	ldrh	r3, [r3, #16]
 8001054:	0064      	lsls	r4, r4, #1
 8001056:	061b      	lsls	r3, r3, #24
 8001058:	b2e4      	uxtb	r4, r4
 800105a:	4628      	mov	r0, r5
 800105c:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8001060:	bf48      	it	mi
 8001062:	f044 0401 	orrmi.w	r4, r4, #1
 8001066:	f7ff ff3f 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 800106a:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 800106e:	d1ec      	bne.n	800104a <_ZN4CI2C4ReadEh+0xe>
 8001070:	4628      	mov	r0, r5
 8001072:	b117      	cbz	r7, 800107a <_ZN4CI2C4ReadEh+0x3e>
 8001074:	f7ff ff0e 	bl	8000e94 <_ZN4CI2C9SetLowSDAEv>
 8001078:	e001      	b.n	800107e <_ZN4CI2C4ReadEh+0x42>
 800107a:	f7ff ff27 	bl	8000ecc <_ZN4CI2C10SetHighSDAEv>
 800107e:	4628      	mov	r0, r5
 8001080:	f7ff ff3a 	bl	8000ef8 <_ZN4CI2C10SetHighSCLEv>
 8001084:	4628      	mov	r0, r5
 8001086:	f7ff ff2f 	bl	8000ee8 <_ZN4CI2C9SetLowSCLEv>
 800108a:	4628      	mov	r0, r5
 800108c:	f7ff ff1e 	bl	8000ecc <_ZN4CI2C10SetHighSDAEv>
 8001090:	4620      	mov	r0, r4
 8001092:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001094:	48000400 	.word	0x48000400

08001098 <_ZN4CI2C8read_regEhh>:
 8001098:	b570      	push	{r4, r5, r6, lr}
 800109a:	4604      	mov	r4, r0
 800109c:	460d      	mov	r5, r1
 800109e:	4616      	mov	r6, r2
 80010a0:	f7ff ff58 	bl	8000f54 <_ZN4CI2C5StartEv>
 80010a4:	4629      	mov	r1, r5
 80010a6:	4620      	mov	r0, r4
 80010a8:	f7ff ff7e 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 80010ac:	4631      	mov	r1, r6
 80010ae:	4620      	mov	r0, r4
 80010b0:	f7ff ff7a 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 80010b4:	4620      	mov	r0, r4
 80010b6:	f7ff ff4d 	bl	8000f54 <_ZN4CI2C5StartEv>
 80010ba:	f045 0101 	orr.w	r1, r5, #1
 80010be:	4620      	mov	r0, r4
 80010c0:	f7ff ff72 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 80010c4:	2100      	movs	r1, #0
 80010c6:	4620      	mov	r0, r4
 80010c8:	f7ff ffb8 	bl	800103c <_ZN4CI2C4ReadEh>
 80010cc:	4605      	mov	r5, r0
 80010ce:	4620      	mov	r0, r4
 80010d0:	f7ff ff55 	bl	8000f7e <_ZN4CI2C4StopEv>
 80010d4:	4628      	mov	r0, r5
 80010d6:	bd70      	pop	{r4, r5, r6, pc}

080010d8 <_ZN4CIMU8imu_readEv>:
 80010d8:	b570      	push	{r4, r5, r6, lr}
 80010da:	4c52      	ldr	r4, [pc, #328]	; (8001224 <_ZN4CIMU8imu_readEv+0x14c>)
 80010dc:	4605      	mov	r5, r0
 80010de:	4620      	mov	r0, r4
 80010e0:	f7ff ff38 	bl	8000f54 <_ZN4CI2C5StartEv>
 80010e4:	4620      	mov	r0, r4
 80010e6:	21d4      	movs	r1, #212	; 0xd4
 80010e8:	f7ff ff5e 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 80010ec:	21a8      	movs	r1, #168	; 0xa8
 80010ee:	4620      	mov	r0, r4
 80010f0:	f7ff ff5a 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 80010f4:	4620      	mov	r0, r4
 80010f6:	f7ff ff2d 	bl	8000f54 <_ZN4CI2C5StartEv>
 80010fa:	4620      	mov	r0, r4
 80010fc:	21d5      	movs	r1, #213	; 0xd5
 80010fe:	f7ff ff53 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 8001102:	4620      	mov	r0, r4
 8001104:	2101      	movs	r1, #1
 8001106:	f7ff ff99 	bl	800103c <_ZN4CI2C4ReadEh>
 800110a:	2101      	movs	r1, #1
 800110c:	b286      	uxth	r6, r0
 800110e:	4620      	mov	r0, r4
 8001110:	f7ff ff94 	bl	800103c <_ZN4CI2C4ReadEh>
 8001114:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001118:	b200      	sxth	r0, r0
 800111a:	6268      	str	r0, [r5, #36]	; 0x24
 800111c:	2101      	movs	r1, #1
 800111e:	4620      	mov	r0, r4
 8001120:	f7ff ff8c 	bl	800103c <_ZN4CI2C4ReadEh>
 8001124:	2101      	movs	r1, #1
 8001126:	b286      	uxth	r6, r0
 8001128:	4620      	mov	r0, r4
 800112a:	f7ff ff87 	bl	800103c <_ZN4CI2C4ReadEh>
 800112e:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001132:	b200      	sxth	r0, r0
 8001134:	62a8      	str	r0, [r5, #40]	; 0x28
 8001136:	2101      	movs	r1, #1
 8001138:	4620      	mov	r0, r4
 800113a:	f7ff ff7f 	bl	800103c <_ZN4CI2C4ReadEh>
 800113e:	2100      	movs	r1, #0
 8001140:	b286      	uxth	r6, r0
 8001142:	4620      	mov	r0, r4
 8001144:	f7ff ff7a 	bl	800103c <_ZN4CI2C4ReadEh>
 8001148:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800114c:	b200      	sxth	r0, r0
 800114e:	62e8      	str	r0, [r5, #44]	; 0x2c
 8001150:	4620      	mov	r0, r4
 8001152:	f7ff ff14 	bl	8000f7e <_ZN4CI2C4StopEv>
 8001156:	4620      	mov	r0, r4
 8001158:	f7ff fefc 	bl	8000f54 <_ZN4CI2C5StartEv>
 800115c:	4620      	mov	r0, r4
 800115e:	213c      	movs	r1, #60	; 0x3c
 8001160:	f7ff ff22 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 8001164:	21a8      	movs	r1, #168	; 0xa8
 8001166:	4620      	mov	r0, r4
 8001168:	f7ff ff1e 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 800116c:	4620      	mov	r0, r4
 800116e:	f7ff fef1 	bl	8000f54 <_ZN4CI2C5StartEv>
 8001172:	4620      	mov	r0, r4
 8001174:	213d      	movs	r1, #61	; 0x3d
 8001176:	f7ff ff17 	bl	8000fa8 <_ZN4CI2C5WriteEh>
 800117a:	4620      	mov	r0, r4
 800117c:	2101      	movs	r1, #1
 800117e:	f7ff ff5d 	bl	800103c <_ZN4CI2C4ReadEh>
 8001182:	2101      	movs	r1, #1
 8001184:	b286      	uxth	r6, r0
 8001186:	4620      	mov	r0, r4
 8001188:	f7ff ff58 	bl	800103c <_ZN4CI2C4ReadEh>
 800118c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001190:	b200      	sxth	r0, r0
 8001192:	6328      	str	r0, [r5, #48]	; 0x30
 8001194:	2101      	movs	r1, #1
 8001196:	4620      	mov	r0, r4
 8001198:	f7ff ff50 	bl	800103c <_ZN4CI2C4ReadEh>
 800119c:	2101      	movs	r1, #1
 800119e:	b286      	uxth	r6, r0
 80011a0:	4620      	mov	r0, r4
 80011a2:	f7ff ff4b 	bl	800103c <_ZN4CI2C4ReadEh>
 80011a6:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011aa:	b200      	sxth	r0, r0
 80011ac:	6368      	str	r0, [r5, #52]	; 0x34
 80011ae:	2101      	movs	r1, #1
 80011b0:	4620      	mov	r0, r4
 80011b2:	f7ff ff43 	bl	800103c <_ZN4CI2C4ReadEh>
 80011b6:	2100      	movs	r1, #0
 80011b8:	b286      	uxth	r6, r0
 80011ba:	4620      	mov	r0, r4
 80011bc:	f7ff ff3e 	bl	800103c <_ZN4CI2C4ReadEh>
 80011c0:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011c4:	b200      	sxth	r0, r0
 80011c6:	63a8      	str	r0, [r5, #56]	; 0x38
 80011c8:	4620      	mov	r0, r4
 80011ca:	f7ff fed8 	bl	8000f7e <_ZN4CI2C4StopEv>
 80011ce:	686a      	ldr	r2, [r5, #4]
 80011d0:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80011d2:	68a8      	ldr	r0, [r5, #8]
 80011d4:	1a9b      	subs	r3, r3, r2
 80011d6:	68ea      	ldr	r2, [r5, #12]
 80011d8:	26c8      	movs	r6, #200	; 0xc8
 80011da:	fb93 f3f6 	sdiv	r3, r3, r6
 80011de:	441a      	add	r2, r3
 80011e0:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 80011e2:	60ea      	str	r2, [r5, #12]
 80011e4:	2155      	movs	r1, #85	; 0x55
 80011e6:	4359      	muls	r1, r3
 80011e8:	f640 14e2 	movw	r4, #2530	; 0x9e2
 80011ec:	434a      	muls	r2, r1
 80011ee:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 80011f0:	fb92 f2f4 	sdiv	r2, r2, r4
 80011f4:	61aa      	str	r2, [r5, #24]
 80011f6:	682a      	ldr	r2, [r5, #0]
 80011f8:	1a9b      	subs	r3, r3, r2
 80011fa:	692a      	ldr	r2, [r5, #16]
 80011fc:	fb93 f3f6 	sdiv	r3, r3, r6
 8001200:	441a      	add	r2, r3
 8001202:	612a      	str	r2, [r5, #16]
 8001204:	434a      	muls	r2, r1
 8001206:	fb92 f2f4 	sdiv	r2, r2, r4
 800120a:	61ea      	str	r2, [r5, #28]
 800120c:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 800120e:	1a12      	subs	r2, r2, r0
 8001210:	fb92 f0f6 	sdiv	r0, r2, r6
 8001214:	696a      	ldr	r2, [r5, #20]
 8001216:	1883      	adds	r3, r0, r2
 8001218:	616b      	str	r3, [r5, #20]
 800121a:	434b      	muls	r3, r1
 800121c:	fb93 f3f4 	sdiv	r3, r3, r4
 8001220:	622b      	str	r3, [r5, #32]
 8001222:	bd70      	pop	{r4, r5, r6, pc}
 8001224:	20000160 	.word	0x20000160

08001228 <_ZN4CIMU8imu_initEv>:
 8001228:	230a      	movs	r3, #10
 800122a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800122e:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001230:	2300      	movs	r3, #0
 8001232:	4604      	mov	r4, r0
 8001234:	6003      	str	r3, [r0, #0]
 8001236:	6043      	str	r3, [r0, #4]
 8001238:	6083      	str	r3, [r0, #8]
 800123a:	60c3      	str	r3, [r0, #12]
 800123c:	6103      	str	r3, [r0, #16]
 800123e:	6143      	str	r3, [r0, #20]
 8001240:	f242 7511 	movw	r5, #10001	; 0x2711
 8001244:	3d01      	subs	r5, #1
 8001246:	d001      	beq.n	800124c <_ZN4CIMU8imu_initEv+0x24>
 8001248:	bf00      	nop
 800124a:	e7fb      	b.n	8001244 <_ZN4CIMU8imu_initEv+0x1c>
 800124c:	4832      	ldr	r0, [pc, #200]	; (8001318 <_ZN4CIMU8imu_initEv+0xf0>)
 800124e:	21d4      	movs	r1, #212	; 0xd4
 8001250:	220f      	movs	r2, #15
 8001252:	f7ff ff21 	bl	8001098 <_ZN4CI2C8read_regEhh>
 8001256:	28d4      	cmp	r0, #212	; 0xd4
 8001258:	4606      	mov	r6, r0
 800125a:	d155      	bne.n	8001308 <_ZN4CIMU8imu_initEv+0xe0>
 800125c:	482e      	ldr	r0, [pc, #184]	; (8001318 <_ZN4CIMU8imu_initEv+0xf0>)
 800125e:	213c      	movs	r1, #60	; 0x3c
 8001260:	220f      	movs	r2, #15
 8001262:	f7ff ff19 	bl	8001098 <_ZN4CI2C8read_regEhh>
 8001266:	2849      	cmp	r0, #73	; 0x49
 8001268:	d152      	bne.n	8001310 <_ZN4CIMU8imu_initEv+0xe8>
 800126a:	4631      	mov	r1, r6
 800126c:	482a      	ldr	r0, [pc, #168]	; (8001318 <_ZN4CIMU8imu_initEv+0xf0>)
 800126e:	2220      	movs	r2, #32
 8001270:	23ff      	movs	r3, #255	; 0xff
 8001272:	f7ff fecb 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8001276:	4631      	mov	r1, r6
 8001278:	4827      	ldr	r0, [pc, #156]	; (8001318 <_ZN4CIMU8imu_initEv+0xf0>)
 800127a:	4e28      	ldr	r6, [pc, #160]	; (800131c <_ZN4CIMU8imu_initEv+0xf4>)
 800127c:	2223      	movs	r2, #35	; 0x23
 800127e:	2310      	movs	r3, #16
 8001280:	f7ff fec4 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8001284:	4824      	ldr	r0, [pc, #144]	; (8001318 <_ZN4CIMU8imu_initEv+0xf0>)
 8001286:	213c      	movs	r1, #60	; 0x3c
 8001288:	221f      	movs	r2, #31
 800128a:	462b      	mov	r3, r5
 800128c:	f7ff febe 	bl	800100c <_ZN4CI2C9write_regEhhh>
 8001290:	4821      	ldr	r0, [pc, #132]	; (8001318 <_ZN4CIMU8imu_initEv+0xf0>)
 8001292:	213c      	movs	r1, #60	; 0x3c
 8001294:	2220      	movs	r2, #32
 8001296:	2367      	movs	r3, #103	; 0x67
 8001298:	f7ff feb8 	bl	800100c <_ZN4CI2C9write_regEhhh>
 800129c:	481e      	ldr	r0, [pc, #120]	; (8001318 <_ZN4CIMU8imu_initEv+0xf0>)
 800129e:	213c      	movs	r1, #60	; 0x3c
 80012a0:	2221      	movs	r2, #33	; 0x21
 80012a2:	462b      	mov	r3, r5
 80012a4:	f7ff feb2 	bl	800100c <_ZN4CI2C9write_regEhhh>
 80012a8:	3e01      	subs	r6, #1
 80012aa:	d001      	beq.n	80012b0 <_ZN4CIMU8imu_initEv+0x88>
 80012ac:	bf00      	nop
 80012ae:	e7fb      	b.n	80012a8 <_ZN4CIMU8imu_initEv+0x80>
 80012b0:	4620      	mov	r0, r4
 80012b2:	f7ff ff11 	bl	80010d8 <_ZN4CIMU8imu_readEv>
 80012b6:	2564      	movs	r5, #100	; 0x64
 80012b8:	4637      	mov	r7, r6
 80012ba:	46b0      	mov	r8, r6
 80012bc:	2365      	movs	r3, #101	; 0x65
 80012be:	3b01      	subs	r3, #1
 80012c0:	d001      	beq.n	80012c6 <_ZN4CIMU8imu_initEv+0x9e>
 80012c2:	bf00      	nop
 80012c4:	e7fb      	b.n	80012be <_ZN4CIMU8imu_initEv+0x96>
 80012c6:	4620      	mov	r0, r4
 80012c8:	f7ff ff06 	bl	80010d8 <_ZN4CIMU8imu_readEv>
 80012cc:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80012ce:	4498      	add	r8, r3
 80012d0:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80012d2:	441f      	add	r7, r3
 80012d4:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80012d6:	3d01      	subs	r5, #1
 80012d8:	441e      	add	r6, r3
 80012da:	d1ef      	bne.n	80012bc <_ZN4CIMU8imu_initEv+0x94>
 80012dc:	2264      	movs	r2, #100	; 0x64
 80012de:	6325      	str	r5, [r4, #48]	; 0x30
 80012e0:	fb98 f3f2 	sdiv	r3, r8, r2
 80012e4:	fb97 f7f2 	sdiv	r7, r7, r2
 80012e8:	fb96 f6f2 	sdiv	r6, r6, r2
 80012ec:	6023      	str	r3, [r4, #0]
 80012ee:	6067      	str	r7, [r4, #4]
 80012f0:	60a6      	str	r6, [r4, #8]
 80012f2:	6365      	str	r5, [r4, #52]	; 0x34
 80012f4:	63a5      	str	r5, [r4, #56]	; 0x38
 80012f6:	6265      	str	r5, [r4, #36]	; 0x24
 80012f8:	62a5      	str	r5, [r4, #40]	; 0x28
 80012fa:	62e5      	str	r5, [r4, #44]	; 0x2c
 80012fc:	61a5      	str	r5, [r4, #24]
 80012fe:	61e5      	str	r5, [r4, #28]
 8001300:	6225      	str	r5, [r4, #32]
 8001302:	4628      	mov	r0, r5
 8001304:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001308:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800130c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001310:	f06f 0001 	mvn.w	r0, #1
 8001314:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001318:	20000160 	.word	0x20000160
 800131c:	000186a1 	.word	0x000186a1

08001320 <_ZN4CIMU14get_imu_resultEv>:
 8001320:	3018      	adds	r0, #24
 8001322:	4770      	bx	lr

08001324 <_ZN5CGPIO9gpio_initEv>:
 8001324:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8001328:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800132c:	2101      	movs	r1, #1
 800132e:	f000 fe69 	bl	8002004 <RCC_AHBPeriphClockCmd>
 8001332:	4f22      	ldr	r7, [pc, #136]	; (80013bc <_ZN5CGPIO9gpio_initEv+0x98>)
 8001334:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001338:	2101      	movs	r1, #1
 800133a:	f000 fe63 	bl	8002004 <RCC_AHBPeriphClockCmd>
 800133e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001342:	2101      	movs	r1, #1
 8001344:	f000 fe5e 	bl	8002004 <RCC_AHBPeriphClockCmd>
 8001348:	2400      	movs	r4, #0
 800134a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800134e:	2503      	movs	r5, #3
 8001350:	f04f 0801 	mov.w	r8, #1
 8001354:	4638      	mov	r0, r7
 8001356:	4669      	mov	r1, sp
 8001358:	9300      	str	r3, [sp, #0]
 800135a:	2608      	movs	r6, #8
 800135c:	f88d 8004 	strb.w	r8, [sp, #4]
 8001360:	f88d 4006 	strb.w	r4, [sp, #6]
 8001364:	f88d 5005 	strb.w	r5, [sp, #5]
 8001368:	f88d 4007 	strb.w	r4, [sp, #7]
 800136c:	f001 f852 	bl	8002414 <GPIO_Init>
 8001370:	4669      	mov	r1, sp
 8001372:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001376:	9600      	str	r6, [sp, #0]
 8001378:	f88d 8004 	strb.w	r8, [sp, #4]
 800137c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001380:	f88d 5005 	strb.w	r5, [sp, #5]
 8001384:	f88d 4007 	strb.w	r4, [sp, #7]
 8001388:	f001 f844 	bl	8002414 <GPIO_Init>
 800138c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001390:	4638      	mov	r0, r7
 8001392:	4669      	mov	r1, sp
 8001394:	9300      	str	r3, [sp, #0]
 8001396:	f88d 4004 	strb.w	r4, [sp, #4]
 800139a:	f88d 5005 	strb.w	r5, [sp, #5]
 800139e:	f88d 4007 	strb.w	r4, [sp, #7]
 80013a2:	f001 f837 	bl	8002414 <GPIO_Init>
 80013a6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80013aa:	4620      	mov	r0, r4
 80013ac:	851e      	strh	r6, [r3, #40]	; 0x28
 80013ae:	4b04      	ldr	r3, [pc, #16]	; (80013c0 <_ZN5CGPIO9gpio_initEv+0x9c>)
 80013b0:	601c      	str	r4, [r3, #0]
 80013b2:	4b04      	ldr	r3, [pc, #16]	; (80013c4 <_ZN5CGPIO9gpio_initEv+0xa0>)
 80013b4:	601c      	str	r4, [r3, #0]
 80013b6:	b002      	add	sp, #8
 80013b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80013bc:	48000400 	.word	0x48000400
 80013c0:	20000164 	.word	0x20000164
 80013c4:	20000168 	.word	0x20000168

080013c8 <_ZN5CGPIO7gpio_onEm>:
 80013c8:	2908      	cmp	r1, #8
 80013ca:	d005      	beq.n	80013d8 <_ZN5CGPIO7gpio_onEm+0x10>
 80013cc:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80013d0:	d105      	bne.n	80013de <_ZN5CGPIO7gpio_onEm+0x16>
 80013d2:	4b03      	ldr	r3, [pc, #12]	; (80013e0 <_ZN5CGPIO7gpio_onEm+0x18>)
 80013d4:	6199      	str	r1, [r3, #24]
 80013d6:	4770      	bx	lr
 80013d8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80013dc:	8519      	strh	r1, [r3, #40]	; 0x28
 80013de:	4770      	bx	lr
 80013e0:	48000400 	.word	0x48000400

080013e4 <_ZN5CGPIO8gpio_offEm>:
 80013e4:	2908      	cmp	r1, #8
 80013e6:	d005      	beq.n	80013f4 <_ZN5CGPIO8gpio_offEm+0x10>
 80013e8:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80013ec:	d105      	bne.n	80013fa <_ZN5CGPIO8gpio_offEm+0x16>
 80013ee:	4b03      	ldr	r3, [pc, #12]	; (80013fc <_ZN5CGPIO8gpio_offEm+0x18>)
 80013f0:	8519      	strh	r1, [r3, #40]	; 0x28
 80013f2:	4770      	bx	lr
 80013f4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80013f8:	6199      	str	r1, [r3, #24]
 80013fa:	4770      	bx	lr
 80013fc:	48000400 	.word	0x48000400

08001400 <_ZN5CGPIO7gpio_inEm>:
 8001400:	4b02      	ldr	r3, [pc, #8]	; (800140c <_ZN5CGPIO7gpio_inEm+0xc>)
 8001402:	8a18      	ldrh	r0, [r3, #16]
 8001404:	b280      	uxth	r0, r0
 8001406:	ea21 0000 	bic.w	r0, r1, r0
 800140a:	4770      	bx	lr
 800140c:	48000400 	.word	0x48000400

08001410 <EXTI9_5_IRQHandler>:
 8001410:	4a03      	ldr	r2, [pc, #12]	; (8001420 <EXTI9_5_IRQHandler+0x10>)
 8001412:	6813      	ldr	r3, [r2, #0]
 8001414:	2006      	movs	r0, #6
 8001416:	3301      	adds	r3, #1
 8001418:	6013      	str	r3, [r2, #0]
 800141a:	f000 bfef 	b.w	80023fc <EXTI_ClearITPendingBit>
 800141e:	bf00      	nop
 8001420:	20000164 	.word	0x20000164

08001424 <EXTI15_10_IRQHandler>:
 8001424:	4a03      	ldr	r2, [pc, #12]	; (8001434 <EXTI15_10_IRQHandler+0x10>)
 8001426:	6813      	ldr	r3, [r2, #0]
 8001428:	200c      	movs	r0, #12
 800142a:	3301      	adds	r3, #1
 800142c:	6013      	str	r3, [r2, #0]
 800142e:	f000 bfe5 	b.w	80023fc <EXTI_ClearITPendingBit>
 8001432:	bf00      	nop
 8001434:	20000168 	.word	0x20000168

08001438 <_ZN6CError10error_funcEi>:
 8001438:	230a      	movs	r3, #10
 800143a:	490c      	ldr	r1, [pc, #48]	; (800146c <_ZN6CError10error_funcEi+0x34>)
 800143c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001440:	618a      	str	r2, [r1, #24]
 8001442:	4a0b      	ldr	r2, [pc, #44]	; (8001470 <_ZN6CError10error_funcEi+0x38>)
 8001444:	3a01      	subs	r2, #1
 8001446:	d001      	beq.n	800144c <_ZN6CError10error_funcEi+0x14>
 8001448:	bf00      	nop
 800144a:	e7fb      	b.n	8001444 <_ZN6CError10error_funcEi+0xc>
 800144c:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001450:	850a      	strh	r2, [r1, #40]	; 0x28
 8001452:	4a08      	ldr	r2, [pc, #32]	; (8001474 <_ZN6CError10error_funcEi+0x3c>)
 8001454:	3a01      	subs	r2, #1
 8001456:	d001      	beq.n	800145c <_ZN6CError10error_funcEi+0x24>
 8001458:	bf00      	nop
 800145a:	e7fb      	b.n	8001454 <_ZN6CError10error_funcEi+0x1c>
 800145c:	3b01      	subs	r3, #1
 800145e:	d1ec      	bne.n	800143a <_ZN6CError10error_funcEi+0x2>
 8001460:	4b05      	ldr	r3, [pc, #20]	; (8001478 <_ZN6CError10error_funcEi+0x40>)
 8001462:	3b01      	subs	r3, #1
 8001464:	d0e8      	beq.n	8001438 <_ZN6CError10error_funcEi>
 8001466:	bf00      	nop
 8001468:	e7fb      	b.n	8001462 <_ZN6CError10error_funcEi+0x2a>
 800146a:	bf00      	nop
 800146c:	48000400 	.word	0x48000400
 8001470:	000186a1 	.word	0x000186a1
 8001474:	000f4241 	.word	0x000f4241
 8001478:	002dc6c1 	.word	0x002dc6c1

0800147c <_ZN9CTerminal13terminal_initEv>:
 800147c:	b530      	push	{r4, r5, lr}
 800147e:	4a2f      	ldr	r2, [pc, #188]	; (800153c <_ZN9CTerminal13terminal_initEv+0xc0>)
 8001480:	2300      	movs	r3, #0
 8001482:	6013      	str	r3, [r2, #0]
 8001484:	4a2e      	ldr	r2, [pc, #184]	; (8001540 <_ZN9CTerminal13terminal_initEv+0xc4>)
 8001486:	b08b      	sub	sp, #44	; 0x2c
 8001488:	6013      	str	r3, [r2, #0]
 800148a:	4a2e      	ldr	r2, [pc, #184]	; (8001544 <_ZN9CTerminal13terminal_initEv+0xc8>)
 800148c:	2400      	movs	r4, #0
 800148e:	54d4      	strb	r4, [r2, r3]
 8001490:	3301      	adds	r3, #1
 8001492:	2b10      	cmp	r3, #16
 8001494:	d1f9      	bne.n	800148a <_ZN9CTerminal13terminal_initEv+0xe>
 8001496:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800149a:	2101      	movs	r1, #1
 800149c:	f000 fdb2 	bl	8002004 <RCC_AHBPeriphClockCmd>
 80014a0:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80014a4:	2101      	movs	r1, #1
 80014a6:	f000 fdbb 	bl	8002020 <RCC_APB2PeriphClockCmd>
 80014aa:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80014ae:	9302      	str	r3, [sp, #8]
 80014b0:	2302      	movs	r3, #2
 80014b2:	f88d 300c 	strb.w	r3, [sp, #12]
 80014b6:	a902      	add	r1, sp, #8
 80014b8:	2303      	movs	r3, #3
 80014ba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80014be:	f88d 300d 	strb.w	r3, [sp, #13]
 80014c2:	f88d 400e 	strb.w	r4, [sp, #14]
 80014c6:	f88d 400f 	strb.w	r4, [sp, #15]
 80014ca:	f000 ffa3 	bl	8002414 <GPIO_Init>
 80014ce:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80014d2:	2109      	movs	r1, #9
 80014d4:	2207      	movs	r2, #7
 80014d6:	f000 ffe3 	bl	80024a0 <GPIO_PinAFConfig>
 80014da:	2207      	movs	r2, #7
 80014dc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80014e0:	210a      	movs	r1, #10
 80014e2:	f000 ffdd 	bl	80024a0 <GPIO_PinAFConfig>
 80014e6:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80014ea:	9304      	str	r3, [sp, #16]
 80014ec:	a904      	add	r1, sp, #16
 80014ee:	230c      	movs	r3, #12
 80014f0:	4815      	ldr	r0, [pc, #84]	; (8001548 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80014f2:	9308      	str	r3, [sp, #32]
 80014f4:	9405      	str	r4, [sp, #20]
 80014f6:	9406      	str	r4, [sp, #24]
 80014f8:	9407      	str	r4, [sp, #28]
 80014fa:	9409      	str	r4, [sp, #36]	; 0x24
 80014fc:	f000 fe10 	bl	8002120 <USART_Init>
 8001500:	4811      	ldr	r0, [pc, #68]	; (8001548 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001502:	2101      	movs	r1, #1
 8001504:	f000 fe6e 	bl	80021e4 <USART_Cmd>
 8001508:	2201      	movs	r2, #1
 800150a:	4910      	ldr	r1, [pc, #64]	; (800154c <_ZN9CTerminal13terminal_initEv+0xd0>)
 800150c:	480e      	ldr	r0, [pc, #56]	; (8001548 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800150e:	f000 fe79 	bl	8002204 <USART_ITConfig>
 8001512:	2501      	movs	r5, #1
 8001514:	2325      	movs	r3, #37	; 0x25
 8001516:	a801      	add	r0, sp, #4
 8001518:	f88d 3004 	strb.w	r3, [sp, #4]
 800151c:	f88d 4005 	strb.w	r4, [sp, #5]
 8001520:	f88d 4006 	strb.w	r4, [sp, #6]
 8001524:	f88d 5007 	strb.w	r5, [sp, #7]
 8001528:	f000 ff2e 	bl	8002388 <NVIC_Init>
 800152c:	4806      	ldr	r0, [pc, #24]	; (8001548 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800152e:	4629      	mov	r1, r5
 8001530:	f000 fe58 	bl	80021e4 <USART_Cmd>
 8001534:	4620      	mov	r0, r4
 8001536:	b00b      	add	sp, #44	; 0x2c
 8001538:	bd30      	pop	{r4, r5, pc}
 800153a:	bf00      	nop
 800153c:	2000016c 	.word	0x2000016c
 8001540:	20000180 	.word	0x20000180
 8001544:	20000170 	.word	0x20000170
 8001548:	40013800 	.word	0x40013800
 800154c:	00050105 	.word	0x00050105

08001550 <USART1_IRQHandler>:
 8001550:	b508      	push	{r3, lr}
 8001552:	480d      	ldr	r0, [pc, #52]	; (8001588 <USART1_IRQHandler+0x38>)
 8001554:	490d      	ldr	r1, [pc, #52]	; (800158c <USART1_IRQHandler+0x3c>)
 8001556:	f000 fe6f 	bl	8002238 <USART_GetITStatus>
 800155a:	b178      	cbz	r0, 800157c <USART1_IRQHandler+0x2c>
 800155c:	480a      	ldr	r0, [pc, #40]	; (8001588 <USART1_IRQHandler+0x38>)
 800155e:	f000 fe4c 	bl	80021fa <USART_ReceiveData>
 8001562:	4b0b      	ldr	r3, [pc, #44]	; (8001590 <USART1_IRQHandler+0x40>)
 8001564:	490b      	ldr	r1, [pc, #44]	; (8001594 <USART1_IRQHandler+0x44>)
 8001566:	681a      	ldr	r2, [r3, #0]
 8001568:	b2c0      	uxtb	r0, r0
 800156a:	5488      	strb	r0, [r1, r2]
 800156c:	681a      	ldr	r2, [r3, #0]
 800156e:	3201      	adds	r2, #1
 8001570:	601a      	str	r2, [r3, #0]
 8001572:	681a      	ldr	r2, [r3, #0]
 8001574:	2a0f      	cmp	r2, #15
 8001576:	bf84      	itt	hi
 8001578:	2200      	movhi	r2, #0
 800157a:	601a      	strhi	r2, [r3, #0]
 800157c:	4802      	ldr	r0, [pc, #8]	; (8001588 <USART1_IRQHandler+0x38>)
 800157e:	4903      	ldr	r1, [pc, #12]	; (800158c <USART1_IRQHandler+0x3c>)
 8001580:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001584:	f000 be76 	b.w	8002274 <USART_ClearITPendingBit>
 8001588:	40013800 	.word	0x40013800
 800158c:	00050105 	.word	0x00050105
 8001590:	2000016c 	.word	0x2000016c
 8001594:	20000170 	.word	0x20000170

08001598 <_ZN9CTerminal7putcharEc>:
 8001598:	4b04      	ldr	r3, [pc, #16]	; (80015ac <_ZN9CTerminal7putcharEc+0x14>)
 800159a:	69da      	ldr	r2, [r3, #28]
 800159c:	0612      	lsls	r2, r2, #24
 800159e:	d401      	bmi.n	80015a4 <_ZN9CTerminal7putcharEc+0xc>
 80015a0:	bf00      	nop
 80015a2:	e7f9      	b.n	8001598 <_ZN9CTerminal7putcharEc>
 80015a4:	b289      	uxth	r1, r1
 80015a6:	8519      	strh	r1, [r3, #40]	; 0x28
 80015a8:	4770      	bx	lr
 80015aa:	bf00      	nop
 80015ac:	40013800 	.word	0x40013800

080015b0 <_ZN9CTerminal4putsEPc>:
 80015b0:	b538      	push	{r3, r4, r5, lr}
 80015b2:	4605      	mov	r5, r0
 80015b4:	1e4c      	subs	r4, r1, #1
 80015b6:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 80015ba:	b119      	cbz	r1, 80015c4 <_ZN9CTerminal4putsEPc+0x14>
 80015bc:	4628      	mov	r0, r5
 80015be:	f7ff ffeb 	bl	8001598 <_ZN9CTerminal7putcharEc>
 80015c2:	e7f8      	b.n	80015b6 <_ZN9CTerminal4putsEPc+0x6>
 80015c4:	2001      	movs	r0, #1
 80015c6:	bd38      	pop	{r3, r4, r5, pc}

080015c8 <_ZN9CTerminal4putiEl>:
 80015c8:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 80015ca:	1e0b      	subs	r3, r1, #0
 80015cc:	f04f 0200 	mov.w	r2, #0
 80015d0:	bfba      	itte	lt
 80015d2:	425b      	neglt	r3, r3
 80015d4:	2501      	movlt	r5, #1
 80015d6:	4615      	movge	r5, r2
 80015d8:	f88d 200f 	strb.w	r2, [sp, #15]
 80015dc:	210a      	movs	r1, #10
 80015de:	220a      	movs	r2, #10
 80015e0:	ac01      	add	r4, sp, #4
 80015e2:	fb93 f6f2 	sdiv	r6, r3, r2
 80015e6:	fb02 3316 	mls	r3, r2, r6, r3
 80015ea:	3330      	adds	r3, #48	; 0x30
 80015ec:	550b      	strb	r3, [r1, r4]
 80015ee:	1e4a      	subs	r2, r1, #1
 80015f0:	4633      	mov	r3, r6
 80015f2:	b10e      	cbz	r6, 80015f8 <_ZN9CTerminal4putiEl+0x30>
 80015f4:	4611      	mov	r1, r2
 80015f6:	e7f2      	b.n	80015de <_ZN9CTerminal4putiEl+0x16>
 80015f8:	b12d      	cbz	r5, 8001606 <_ZN9CTerminal4putiEl+0x3e>
 80015fa:	ab04      	add	r3, sp, #16
 80015fc:	4413      	add	r3, r2
 80015fe:	212d      	movs	r1, #45	; 0x2d
 8001600:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001604:	4611      	mov	r1, r2
 8001606:	4421      	add	r1, r4
 8001608:	f7ff ffd2 	bl	80015b0 <_ZN9CTerminal4putsEPc>
 800160c:	b004      	add	sp, #16
 800160e:	bd70      	pop	{r4, r5, r6, pc}

08001610 <_ZN9CTerminal5putuiEm>:
 8001610:	b530      	push	{r4, r5, lr}
 8001612:	b085      	sub	sp, #20
 8001614:	2300      	movs	r3, #0
 8001616:	f88d 300f 	strb.w	r3, [sp, #15]
 800161a:	220a      	movs	r2, #10
 800161c:	230a      	movs	r3, #10
 800161e:	ac01      	add	r4, sp, #4
 8001620:	fbb1 f5f3 	udiv	r5, r1, r3
 8001624:	fb03 1315 	mls	r3, r3, r5, r1
 8001628:	3330      	adds	r3, #48	; 0x30
 800162a:	5513      	strb	r3, [r2, r4]
 800162c:	4629      	mov	r1, r5
 800162e:	1e53      	subs	r3, r2, #1
 8001630:	b10d      	cbz	r5, 8001636 <_ZN9CTerminal5putuiEm+0x26>
 8001632:	461a      	mov	r2, r3
 8001634:	e7f2      	b.n	800161c <_ZN9CTerminal5putuiEm+0xc>
 8001636:	18a1      	adds	r1, r4, r2
 8001638:	f7ff ffba 	bl	80015b0 <_ZN9CTerminal4putsEPc>
 800163c:	b005      	add	sp, #20
 800163e:	bd30      	pop	{r4, r5, pc}

08001640 <_ZN9CTerminal4putxEm>:
 8001640:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001642:	2300      	movs	r3, #0
 8001644:	f88d 300f 	strb.w	r3, [sp, #15]
 8001648:	220a      	movs	r2, #10
 800164a:	f001 030f 	and.w	r3, r1, #15
 800164e:	2b09      	cmp	r3, #9
 8001650:	ac01      	add	r4, sp, #4
 8001652:	bfd4      	ite	le
 8001654:	3330      	addle	r3, #48	; 0x30
 8001656:	3357      	addgt	r3, #87	; 0x57
 8001658:	0909      	lsrs	r1, r1, #4
 800165a:	54a3      	strb	r3, [r4, r2]
 800165c:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001660:	d001      	beq.n	8001666 <_ZN9CTerminal4putxEm+0x26>
 8001662:	461a      	mov	r2, r3
 8001664:	e7f1      	b.n	800164a <_ZN9CTerminal4putxEm+0xa>
 8001666:	18a1      	adds	r1, r4, r2
 8001668:	f7ff ffa2 	bl	80015b0 <_ZN9CTerminal4putsEPc>
 800166c:	b004      	add	sp, #16
 800166e:	bd10      	pop	{r4, pc}

08001670 <_ZN9CTerminal6printfEPKcz>:
 8001670:	b40e      	push	{r1, r2, r3}
 8001672:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001674:	ab07      	add	r3, sp, #28
 8001676:	4604      	mov	r4, r0
 8001678:	f853 6b04 	ldr.w	r6, [r3], #4
 800167c:	9301      	str	r3, [sp, #4]
 800167e:	2500      	movs	r5, #0
 8001680:	5d71      	ldrb	r1, [r6, r5]
 8001682:	2900      	cmp	r1, #0
 8001684:	d040      	beq.n	8001708 <_ZN9CTerminal6printfEPKcz+0x98>
 8001686:	2925      	cmp	r1, #37	; 0x25
 8001688:	d004      	beq.n	8001694 <_ZN9CTerminal6printfEPKcz+0x24>
 800168a:	4620      	mov	r0, r4
 800168c:	f7ff ff84 	bl	8001598 <_ZN9CTerminal7putcharEc>
 8001690:	3501      	adds	r5, #1
 8001692:	e7f5      	b.n	8001680 <_ZN9CTerminal6printfEPKcz+0x10>
 8001694:	1973      	adds	r3, r6, r5
 8001696:	7859      	ldrb	r1, [r3, #1]
 8001698:	2969      	cmp	r1, #105	; 0x69
 800169a:	d018      	beq.n	80016ce <_ZN9CTerminal6printfEPKcz+0x5e>
 800169c:	d809      	bhi.n	80016b2 <_ZN9CTerminal6printfEPKcz+0x42>
 800169e:	2925      	cmp	r1, #37	; 0x25
 80016a0:	d02d      	beq.n	80016fe <_ZN9CTerminal6printfEPKcz+0x8e>
 80016a2:	2963      	cmp	r1, #99	; 0x63
 80016a4:	d12e      	bne.n	8001704 <_ZN9CTerminal6printfEPKcz+0x94>
 80016a6:	9b01      	ldr	r3, [sp, #4]
 80016a8:	1d1a      	adds	r2, r3, #4
 80016aa:	9201      	str	r2, [sp, #4]
 80016ac:	4620      	mov	r0, r4
 80016ae:	7819      	ldrb	r1, [r3, #0]
 80016b0:	e026      	b.n	8001700 <_ZN9CTerminal6printfEPKcz+0x90>
 80016b2:	2975      	cmp	r1, #117	; 0x75
 80016b4:	d013      	beq.n	80016de <_ZN9CTerminal6printfEPKcz+0x6e>
 80016b6:	2978      	cmp	r1, #120	; 0x78
 80016b8:	d019      	beq.n	80016ee <_ZN9CTerminal6printfEPKcz+0x7e>
 80016ba:	2973      	cmp	r1, #115	; 0x73
 80016bc:	d122      	bne.n	8001704 <_ZN9CTerminal6printfEPKcz+0x94>
 80016be:	9b01      	ldr	r3, [sp, #4]
 80016c0:	4620      	mov	r0, r4
 80016c2:	1d1a      	adds	r2, r3, #4
 80016c4:	6819      	ldr	r1, [r3, #0]
 80016c6:	9201      	str	r2, [sp, #4]
 80016c8:	f7ff ff72 	bl	80015b0 <_ZN9CTerminal4putsEPc>
 80016cc:	e01a      	b.n	8001704 <_ZN9CTerminal6printfEPKcz+0x94>
 80016ce:	9b01      	ldr	r3, [sp, #4]
 80016d0:	4620      	mov	r0, r4
 80016d2:	1d1a      	adds	r2, r3, #4
 80016d4:	6819      	ldr	r1, [r3, #0]
 80016d6:	9201      	str	r2, [sp, #4]
 80016d8:	f7ff ff76 	bl	80015c8 <_ZN9CTerminal4putiEl>
 80016dc:	e012      	b.n	8001704 <_ZN9CTerminal6printfEPKcz+0x94>
 80016de:	9b01      	ldr	r3, [sp, #4]
 80016e0:	4620      	mov	r0, r4
 80016e2:	1d1a      	adds	r2, r3, #4
 80016e4:	6819      	ldr	r1, [r3, #0]
 80016e6:	9201      	str	r2, [sp, #4]
 80016e8:	f7ff ff92 	bl	8001610 <_ZN9CTerminal5putuiEm>
 80016ec:	e00a      	b.n	8001704 <_ZN9CTerminal6printfEPKcz+0x94>
 80016ee:	9b01      	ldr	r3, [sp, #4]
 80016f0:	4620      	mov	r0, r4
 80016f2:	1d1a      	adds	r2, r3, #4
 80016f4:	6819      	ldr	r1, [r3, #0]
 80016f6:	9201      	str	r2, [sp, #4]
 80016f8:	f7ff ffa2 	bl	8001640 <_ZN9CTerminal4putxEm>
 80016fc:	e002      	b.n	8001704 <_ZN9CTerminal6printfEPKcz+0x94>
 80016fe:	4620      	mov	r0, r4
 8001700:	f7ff ff4a 	bl	8001598 <_ZN9CTerminal7putcharEc>
 8001704:	3502      	adds	r5, #2
 8001706:	e7bb      	b.n	8001680 <_ZN9CTerminal6printfEPKcz+0x10>
 8001708:	b003      	add	sp, #12
 800170a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800170e:	b003      	add	sp, #12
 8001710:	4770      	bx	lr
	...

08001714 <_ZN10MathVectorILj3EE3mixERS0_f>:
 8001714:	ee06 2a90 	vmov	s13, r2
 8001718:	f100 030c 	add.w	r3, r0, #12
 800171c:	ed9f 7a08 	vldr	s14, [pc, #32]	; 8001740 <_ZN10MathVectorILj3EE3mixERS0_f+0x2c>
 8001720:	ecf1 7a01 	vldmia	r1!, {s15}
 8001724:	ed90 6a00 	vldr	s12, [r0]
 8001728:	ee37 7a66 	vsub.f32	s14, s14, s13
 800172c:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8001730:	ee47 7a06 	vmla.f32	s15, s14, s12
 8001734:	ece0 7a01 	vstmia	r0!, {s15}
 8001738:	4298      	cmp	r0, r3
 800173a:	d1ef      	bne.n	800171c <_ZN10MathVectorILj3EE3mixERS0_f+0x8>
 800173c:	4770      	bx	lr
 800173e:	bf00      	nop
 8001740:	3f800000 	.word	0x3f800000

08001744 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>:
 8001744:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001746:	eddf 6a17 	vldr	s13, [pc, #92]	; 80017a4 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x60>
 800174a:	4603      	mov	r3, r0
 800174c:	2600      	movs	r6, #0
 800174e:	f8d0 01c0 	ldr.w	r0, [r0, #448]	; 0x1c0
 8001752:	461c      	mov	r4, r3
 8001754:	4635      	mov	r5, r6
 8001756:	4285      	cmp	r5, r0
 8001758:	d019      	beq.n	800178e <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x4a>
 800175a:	eddf 7a13 	vldr	s15, [pc, #76]	; 80017a8 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x64>
 800175e:	468e      	mov	lr, r1
 8001760:	f104 0710 	add.w	r7, r4, #16
 8001764:	ecb4 6a01 	vldmia	r4!, {s12}
 8001768:	ecbe 7a01 	vldmia	lr!, {s14}
 800176c:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001770:	42bc      	cmp	r4, r7
 8001772:	ee47 7a07 	vmla.f32	s15, s14, s14
 8001776:	d1f5      	bne.n	8001764 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x20>
 8001778:	eef4 7ae6 	vcmpe.f32	s15, s13
 800177c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001780:	bf44      	itt	mi
 8001782:	462e      	movmi	r6, r5
 8001784:	eef0 6a67 	vmovmi.f32	s13, s15
 8001788:	3501      	adds	r5, #1
 800178a:	463c      	mov	r4, r7
 800178c:	e7e3      	b.n	8001756 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x12>
 800178e:	f503 7380 	add.w	r3, r3, #256	; 0x100
 8001792:	210c      	movs	r1, #12
 8001794:	4610      	mov	r0, r2
 8001796:	fb01 3106 	mla	r1, r1, r6, r3
 800179a:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 800179e:	f7ff ffb9 	bl	8001714 <_ZN10MathVectorILj3EE3mixERS0_f>
 80017a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80017a4:	4cbebc20 	.word	0x4cbebc20
 80017a8:	00000000 	.word	0x00000000

080017ac <_ZN21CLearningLineFollower3runEv>:
 80017ac:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80017b0:	ed2d 8b04 	vpush	{d8-d9}
 80017b4:	4604      	mov	r4, r0
 80017b6:	2100      	movs	r1, #0
 80017b8:	48a9      	ldr	r0, [pc, #676]	; (8001a60 <_ZN21CLearningLineFollower3runEv+0x2b4>)
 80017ba:	f7fe ffa5 	bl	8000708 <_ZN4CRGB8rgb_readEh>
 80017be:	48a8      	ldr	r0, [pc, #672]	; (8001a60 <_ZN21CLearningLineFollower3runEv+0x2b4>)
 80017c0:	f7ff f93e 	bl	8000a40 <_ZN4CRGB14get_rgb_resultEv>
 80017c4:	f104 09c0 	add.w	r9, r4, #192	; 0xc0
 80017c8:	4601      	mov	r1, r0
 80017ca:	f104 06d8 	add.w	r6, r4, #216	; 0xd8
 80017ce:	4648      	mov	r0, r9
 80017d0:	f7fe fdae 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 80017d4:	f104 0af0 	add.w	sl, r4, #240	; 0xf0
 80017d8:	4648      	mov	r0, r9
 80017da:	4631      	mov	r1, r6
 80017dc:	f7fe fe48 	bl	8000470 <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>
 80017e0:	e89a 000f 	ldmia.w	sl, {r0, r1, r2, r3}
 80017e4:	f504 7580 	add.w	r5, r4, #256	; 0x100
 80017e8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 80017ec:	e896 000f 	ldmia.w	r6, {r0, r1, r2, r3}
 80017f0:	f504 7788 	add.w	r7, r4, #272	; 0x110
 80017f4:	f504 7836 	add.w	r8, r4, #728	; 0x2d8
 80017f8:	e88a 000f 	stmia.w	sl, {r0, r1, r2, r3}
 80017fc:	4642      	mov	r2, r8
 80017fe:	4638      	mov	r0, r7
 8001800:	4651      	mov	r1, sl
 8001802:	f7ff ff9f 	bl	8001744 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001806:	f8d4 30ec 	ldr.w	r3, [r4, #236]	; 0xec
 800180a:	f8c4 30e8 	str.w	r3, [r4, #232]	; 0xe8
 800180e:	4895      	ldr	r0, [pc, #596]	; (8001a64 <_ZN21CLearningLineFollower3runEv+0x2b8>)
 8001810:	f7fe fe9e 	bl	8000550 <_ZN5CMath4randEv>
 8001814:	2364      	movs	r3, #100	; 0x64
 8001816:	fbb0 f2f3 	udiv	r2, r0, r3
 800181a:	fb02 0013 	mls	r0, r2, r3, r0
 800181e:	2813      	cmp	r0, #19
 8001820:	d809      	bhi.n	8001836 <_ZN21CLearningLineFollower3runEv+0x8a>
 8001822:	4890      	ldr	r0, [pc, #576]	; (8001a64 <_ZN21CLearningLineFollower3runEv+0x2b8>)
 8001824:	f7fe fe94 	bl	8000550 <_ZN5CMath4randEv>
 8001828:	2603      	movs	r6, #3
 800182a:	fbb0 f6f6 	udiv	r6, r0, r6
 800182e:	eb06 0646 	add.w	r6, r6, r6, lsl #1
 8001832:	1b86      	subs	r6, r0, r6
 8001834:	e011      	b.n	800185a <_ZN21CLearningLineFollower3runEv+0xae>
 8001836:	2600      	movs	r6, #0
 8001838:	4642      	mov	r2, r8
 800183a:	4633      	mov	r3, r6
 800183c:	eb04 0186 	add.w	r1, r4, r6, lsl #2
 8001840:	ecb2 7a01 	vldmia	r2!, {s14}
 8001844:	edd1 7ab6 	vldr	s15, [r1, #728]	; 0x2d8
 8001848:	eeb4 7a67 	vcmp.f32	s14, s15
 800184c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001850:	bfc8      	it	gt
 8001852:	461e      	movgt	r6, r3
 8001854:	3301      	adds	r3, #1
 8001856:	2b03      	cmp	r3, #3
 8001858:	d1f0      	bne.n	800183c <_ZN21CLearningLineFollower3runEv+0x90>
 800185a:	2e01      	cmp	r6, #1
 800185c:	f8c4 60ec 	str.w	r6, [r4, #236]	; 0xec
 8001860:	d013      	beq.n	800188a <_ZN21CLearningLineFollower3runEv+0xde>
 8001862:	d30a      	bcc.n	800187a <_ZN21CLearningLineFollower3runEv+0xce>
 8001864:	2e02      	cmp	r6, #2
 8001866:	d11a      	bne.n	800189e <_ZN21CLearningLineFollower3runEv+0xf2>
 8001868:	487f      	ldr	r0, [pc, #508]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 800186a:	2100      	movs	r1, #0
 800186c:	220e      	movs	r2, #14
 800186e:	f7ff f97f 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001872:	487d      	ldr	r0, [pc, #500]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 8001874:	2101      	movs	r1, #1
 8001876:	2200      	movs	r2, #0
 8001878:	e00f      	b.n	800189a <_ZN21CLearningLineFollower3runEv+0xee>
 800187a:	487b      	ldr	r0, [pc, #492]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 800187c:	2100      	movs	r1, #0
 800187e:	220e      	movs	r2, #14
 8001880:	f7ff f976 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001884:	4878      	ldr	r0, [pc, #480]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 8001886:	2101      	movs	r1, #1
 8001888:	e006      	b.n	8001898 <_ZN21CLearningLineFollower3runEv+0xec>
 800188a:	2100      	movs	r1, #0
 800188c:	4876      	ldr	r0, [pc, #472]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 800188e:	460a      	mov	r2, r1
 8001890:	f7ff f96e 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001894:	4874      	ldr	r0, [pc, #464]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 8001896:	4631      	mov	r1, r6
 8001898:	220e      	movs	r2, #14
 800189a:	f7ff f969 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 800189e:	4873      	ldr	r0, [pc, #460]	; (8001a6c <_ZN21CLearningLineFollower3runEv+0x2c0>)
 80018a0:	ed9f 9a73 	vldr	s18, [pc, #460]	; 8001a70 <_ZN21CLearningLineFollower3runEv+0x2c4>
 80018a4:	eddf 8a73 	vldr	s17, [pc, #460]	; 8001a74 <_ZN21CLearningLineFollower3runEv+0x2c8>
 80018a8:	2132      	movs	r1, #50	; 0x32
 80018aa:	f7fe fef9 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 80018ae:	2100      	movs	r1, #0
 80018b0:	486b      	ldr	r0, [pc, #428]	; (8001a60 <_ZN21CLearningLineFollower3runEv+0x2b4>)
 80018b2:	f7fe ff29 	bl	8000708 <_ZN4CRGB8rgb_readEh>
 80018b6:	486a      	ldr	r0, [pc, #424]	; (8001a60 <_ZN21CLearningLineFollower3runEv+0x2b4>)
 80018b8:	f7ff f8c2 	bl	8000a40 <_ZN4CRGB14get_rgb_resultEv>
 80018bc:	4601      	mov	r1, r0
 80018be:	4648      	mov	r0, r9
 80018c0:	f7fe fd36 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 80018c4:	4648      	mov	r0, r9
 80018c6:	f7fe fdd1 	bl	800046c <_ZN13CLinePosition17get_line_positionEv>
 80018ca:	4601      	mov	r1, r0
 80018cc:	4865      	ldr	r0, [pc, #404]	; (8001a64 <_ZN21CLearningLineFollower3runEv+0x2b8>)
 80018ce:	f7fe fe32 	bl	8000536 <_ZN5CMath3absEf>
 80018d2:	ee07 0a90 	vmov	s15, r0
 80018d6:	f8d4 b0ec 	ldr.w	fp, [r4, #236]	; 0xec
 80018da:	f8d4 60e8 	ldr.w	r6, [r4, #232]	; 0xe8
 80018de:	ee79 7a67 	vsub.f32	s15, s18, s15
 80018e2:	4638      	mov	r0, r7
 80018e4:	4651      	mov	r1, sl
 80018e6:	4642      	mov	r2, r8
 80018e8:	eb04 0b8b 	add.w	fp, r4, fp, lsl #2
 80018ec:	ee77 8ae8 	vsub.f32	s17, s15, s17
 80018f0:	f7ff ff28 	bl	8001744 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 80018f4:	edd4 7ab6 	vldr	s15, [r4, #728]	; 0x2d8
 80018f8:	ed9b 8ab6 	vldr	s16, [fp, #728]	; 0x2d8
 80018fc:	eeb4 8a67 	vcmp.f32	s16, s15
 8001900:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001904:	bf48      	it	mi
 8001906:	eeb0 8a67 	vmovmi.f32	s16, s15
 800190a:	edd4 7ab7 	vldr	s15, [r4, #732]	; 0x2dc
 800190e:	eeb4 8a67 	vcmp.f32	s16, s15
 8001912:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001916:	bf48      	it	mi
 8001918:	eeb0 8a67 	vmovmi.f32	s16, s15
 800191c:	edd4 7ab8 	vldr	s15, [r4, #736]	; 0x2e0
 8001920:	eeb4 8a67 	vcmp.f32	s16, s15
 8001924:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001928:	4638      	mov	r0, r7
 800192a:	4629      	mov	r1, r5
 800192c:	4642      	mov	r2, r8
 800192e:	bf48      	it	mi
 8001930:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001934:	f7ff ff06 	bl	8001744 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001938:	eddf 7a4f 	vldr	s15, [pc, #316]	; 8001a78 <_ZN21CLearningLineFollower3runEv+0x2cc>
 800193c:	f8d4 12d0 	ldr.w	r1, [r4, #720]	; 0x2d0
 8001940:	eddf 6a4e 	vldr	s13, [pc, #312]	; 8001a7c <_ZN21CLearningLineFollower3runEv+0x2d0>
 8001944:	ee48 8a27 	vmla.f32	s17, s16, s15
 8001948:	eb04 0686 	add.w	r6, r4, r6, lsl #2
 800194c:	2200      	movs	r2, #0
 800194e:	4638      	mov	r0, r7
 8001950:	edc6 8ab6 	vstr	s17, [r6, #728]	; 0x2d8
 8001954:	4613      	mov	r3, r2
 8001956:	428b      	cmp	r3, r1
 8001958:	d018      	beq.n	800198c <_ZN21CLearningLineFollower3runEv+0x1e0>
 800195a:	eddf 7a49 	vldr	s15, [pc, #292]	; 8001a80 <_ZN21CLearningLineFollower3runEv+0x2d4>
 800195e:	462e      	mov	r6, r5
 8001960:	4686      	mov	lr, r0
 8001962:	ecb6 7a01 	vldmia	r6!, {s14}
 8001966:	ecbe 6a01 	vldmia	lr!, {s12}
 800196a:	ee37 7a46 	vsub.f32	s14, s14, s12
 800196e:	42be      	cmp	r6, r7
 8001970:	ee47 7a07 	vmla.f32	s15, s14, s14
 8001974:	d1f5      	bne.n	8001962 <_ZN21CLearningLineFollower3runEv+0x1b6>
 8001976:	eef4 7ae6 	vcmpe.f32	s15, s13
 800197a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800197e:	bf44      	itt	mi
 8001980:	461a      	movmi	r2, r3
 8001982:	eef0 6a67 	vmovmi.f32	s13, s15
 8001986:	3301      	adds	r3, #1
 8001988:	3010      	adds	r0, #16
 800198a:	e7e4      	b.n	8001956 <_ZN21CLearningLineFollower3runEv+0x1aa>
 800198c:	290f      	cmp	r1, #15
 800198e:	d81f      	bhi.n	80019d0 <_ZN21CLearningLineFollower3runEv+0x224>
 8001990:	f101 0311 	add.w	r3, r1, #17
 8001994:	eb04 1303 	add.w	r3, r4, r3, lsl #4
 8001998:	ecf5 7a01 	vldmia	r5!, {s15}
 800199c:	edd3 6a00 	vldr	s13, [r3]
 80019a0:	ed9f 7a37 	vldr	s14, [pc, #220]	; 8001a80 <_ZN21CLearningLineFollower3runEv+0x2d4>
 80019a4:	ee46 7a87 	vmla.f32	s15, s13, s14
 80019a8:	42bd      	cmp	r5, r7
 80019aa:	ece3 7a01 	vstmia	r3!, {s15}
 80019ae:	d1f3      	bne.n	8001998 <_ZN21CLearningLineFollower3runEv+0x1ec>
 80019b0:	230c      	movs	r3, #12
 80019b2:	f504 7004 	add.w	r0, r4, #528	; 0x210
 80019b6:	fb03 0001 	mla	r0, r3, r1, r0
 80019ba:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 80019be:	4641      	mov	r1, r8
 80019c0:	f7ff fea8 	bl	8001714 <_ZN10MathVectorILj3EE3mixERS0_f>
 80019c4:	f8d4 32d0 	ldr.w	r3, [r4, #720]	; 0x2d0
 80019c8:	3301      	adds	r3, #1
 80019ca:	f8c4 32d0 	str.w	r3, [r4, #720]	; 0x2d0
 80019ce:	e01d      	b.n	8001a0c <_ZN21CLearningLineFollower3runEv+0x260>
 80019d0:	f102 0311 	add.w	r3, r2, #17
 80019d4:	edd4 6ab5 	vldr	s13, [r4, #724]	; 0x2d4
 80019d8:	eb04 1303 	add.w	r3, r4, r3, lsl #4
 80019dc:	ecf5 7a01 	vldmia	r5!, {s15}
 80019e0:	ed93 6a00 	vldr	s12, [r3]
 80019e4:	ee39 7a66 	vsub.f32	s14, s18, s13
 80019e8:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80019ec:	ee47 7a06 	vmla.f32	s15, s14, s12
 80019f0:	42bd      	cmp	r5, r7
 80019f2:	ece3 7a01 	vstmia	r3!, {s15}
 80019f6:	d1f1      	bne.n	80019dc <_ZN21CLearningLineFollower3runEv+0x230>
 80019f8:	f504 7004 	add.w	r0, r4, #528	; 0x210
 80019fc:	230c      	movs	r3, #12
 80019fe:	fb03 0002 	mla	r0, r3, r2, r0
 8001a02:	4641      	mov	r1, r8
 8001a04:	f8d4 22d4 	ldr.w	r2, [r4, #724]	; 0x2d4
 8001a08:	f7ff fe84 	bl	8001714 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001a0c:	4648      	mov	r0, r9
 8001a0e:	f7fe fd2b 	bl	8000468 <_ZN13CLinePosition7on_lineEv>
 8001a12:	4605      	mov	r5, r0
 8001a14:	2800      	cmp	r0, #0
 8001a16:	f47f aece 	bne.w	80017b6 <_ZN21CLearningLineFollower3runEv+0xa>
 8001a1a:	4629      	mov	r1, r5
 8001a1c:	4812      	ldr	r0, [pc, #72]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 8001a1e:	f06f 020d 	mvn.w	r2, #13
 8001a22:	f7ff f8a5 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001a26:	f06f 020d 	mvn.w	r2, #13
 8001a2a:	480f      	ldr	r0, [pc, #60]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 8001a2c:	2101      	movs	r1, #1
 8001a2e:	f7ff f89f 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001a32:	480e      	ldr	r0, [pc, #56]	; (8001a6c <_ZN21CLearningLineFollower3runEv+0x2c0>)
 8001a34:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001a38:	f7fe fe32 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 8001a3c:	4629      	mov	r1, r5
 8001a3e:	462a      	mov	r2, r5
 8001a40:	4809      	ldr	r0, [pc, #36]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 8001a42:	f7ff f895 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001a46:	4808      	ldr	r0, [pc, #32]	; (8001a68 <_ZN21CLearningLineFollower3runEv+0x2bc>)
 8001a48:	2101      	movs	r1, #1
 8001a4a:	462a      	mov	r2, r5
 8001a4c:	f7ff f890 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001a50:	ecbd 8b04 	vpop	{d8-d9}
 8001a54:	4805      	ldr	r0, [pc, #20]	; (8001a6c <_ZN21CLearningLineFollower3runEv+0x2c0>)
 8001a56:	2164      	movs	r1, #100	; 0x64
 8001a58:	e8bd 4ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001a5c:	f7fe be20 	b.w	80006a0 <_ZN6CTimer8delay_msEm>
 8001a60:	20000030 	.word	0x20000030
 8001a64:	20000108 	.word	0x20000108
 8001a68:	200000f4 	.word	0x200000f4
 8001a6c:	2000013c 	.word	0x2000013c
 8001a70:	3f800000 	.word	0x3f800000
 8001a74:	3f000000 	.word	0x3f000000
 8001a78:	3f666666 	.word	0x3f666666
 8001a7c:	4cbebc20 	.word	0x4cbebc20
 8001a80:	00000000 	.word	0x00000000

08001a84 <_ZN5CDemo4initEv>:
 8001a84:	4770      	bx	lr
	...

08001a88 <_ZN5CDemo10blink_taskEv>:
 8001a88:	b508      	push	{r3, lr}
 8001a8a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001a8e:	480a      	ldr	r0, [pc, #40]	; (8001ab8 <_ZN5CDemo10blink_taskEv+0x30>)
 8001a90:	f7ff fc9a 	bl	80013c8 <_ZN5CGPIO7gpio_onEm>
 8001a94:	4809      	ldr	r0, [pc, #36]	; (8001abc <_ZN5CDemo10blink_taskEv+0x34>)
 8001a96:	f7fe fdf5 	bl	8000684 <_ZN6CTimer8get_timeEv>
 8001a9a:	4909      	ldr	r1, [pc, #36]	; (8001ac0 <_ZN5CDemo10blink_taskEv+0x38>)
 8001a9c:	4602      	mov	r2, r0
 8001a9e:	4806      	ldr	r0, [pc, #24]	; (8001ab8 <_ZN5CDemo10blink_taskEv+0x30>)
 8001aa0:	f7ff fde6 	bl	8001670 <_ZN9CTerminal6printfEPKcz>
 8001aa4:	4805      	ldr	r0, [pc, #20]	; (8001abc <_ZN5CDemo10blink_taskEv+0x34>)
 8001aa6:	210a      	movs	r1, #10
 8001aa8:	f7fe fdfa 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 8001aac:	4802      	ldr	r0, [pc, #8]	; (8001ab8 <_ZN5CDemo10blink_taskEv+0x30>)
 8001aae:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ab2:	f7ff fc97 	bl	80013e4 <_ZN5CGPIO8gpio_offEm>
 8001ab6:	e7e8      	b.n	8001a8a <_ZN5CDemo10blink_taskEv+0x2>
 8001ab8:	20000030 	.word	0x20000030
 8001abc:	2000013c 	.word	0x2000013c
 8001ac0:	08002634 	.word	0x08002634

08001ac4 <_ZN5CDemo10moves_taskEv>:
 8001ac4:	b570      	push	{r4, r5, r6, lr}
 8001ac6:	4c1c      	ldr	r4, [pc, #112]	; (8001b38 <_ZN5CDemo10moves_taskEv+0x74>)
 8001ac8:	4d1c      	ldr	r5, [pc, #112]	; (8001b3c <_ZN5CDemo10moves_taskEv+0x78>)
 8001aca:	4620      	mov	r0, r4
 8001acc:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001ad0:	2216      	movs	r2, #22
 8001ad2:	2300      	movs	r3, #0
 8001ad4:	f7fe fbcc 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001ad8:	4620      	mov	r0, r4
 8001ada:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001ade:	2216      	movs	r2, #22
 8001ae0:	2300      	movs	r3, #0
 8001ae2:	f7fe fbc5 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001ae6:	4620      	mov	r0, r4
 8001ae8:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001aec:	2216      	movs	r2, #22
 8001aee:	2300      	movs	r3, #0
 8001af0:	f7fe fbbe 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001af4:	4620      	mov	r0, r4
 8001af6:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001afa:	2216      	movs	r2, #22
 8001afc:	2300      	movs	r3, #0
 8001afe:	f7fe fbb7 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001b02:	4620      	mov	r0, r4
 8001b04:	4629      	mov	r1, r5
 8001b06:	2216      	movs	r2, #22
 8001b08:	2300      	movs	r3, #0
 8001b0a:	f7fe fbb1 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001b0e:	4620      	mov	r0, r4
 8001b10:	4629      	mov	r1, r5
 8001b12:	2216      	movs	r2, #22
 8001b14:	2300      	movs	r3, #0
 8001b16:	f7fe fbab 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001b1a:	4620      	mov	r0, r4
 8001b1c:	4629      	mov	r1, r5
 8001b1e:	2216      	movs	r2, #22
 8001b20:	2300      	movs	r3, #0
 8001b22:	f7fe fba5 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001b26:	4620      	mov	r0, r4
 8001b28:	4629      	mov	r1, r5
 8001b2a:	2216      	movs	r2, #22
 8001b2c:	2300      	movs	r3, #0
 8001b2e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001b32:	f7fe bb9d 	b.w	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001b36:	bf00      	nop
 8001b38:	20000030 	.word	0x20000030
 8001b3c:	fffffc7c 	.word	0xfffffc7c

08001b40 <_ZN5CDemo24basic_line_follower_taskEv>:
 8001b40:	b510      	push	{r4, lr}
 8001b42:	b090      	sub	sp, #64	; 0x40
 8001b44:	a802      	add	r0, sp, #8
 8001b46:	f7fe fbe9 	bl	800031c <_ZN13CLinePositionC1Ev>
 8001b4a:	4b3d      	ldr	r3, [pc, #244]	; (8001c40 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001b4c:	9300      	str	r3, [sp, #0]
 8001b4e:	493d      	ldr	r1, [pc, #244]	; (8001c44 <_ZN5CDemo24basic_line_follower_taskEv+0x104>)
 8001b50:	2200      	movs	r2, #0
 8001b52:	a808      	add	r0, sp, #32
 8001b54:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
 8001b58:	f7fe fcb1 	bl	80004be <_ZN4CPIDC1Effff>
 8001b5c:	483a      	ldr	r0, [pc, #232]	; (8001c48 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001b5e:	2100      	movs	r1, #0
 8001b60:	220a      	movs	r2, #10
 8001b62:	f7fe fdaf 	bl	80006c4 <_ZN6CTimer22event_timer_set_periodEhm>
 8001b66:	4838      	ldr	r0, [pc, #224]	; (8001c48 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001b68:	2100      	movs	r1, #0
 8001b6a:	f7fe fdbf 	bl	80006ec <_ZN6CTimer17event_timer_checkEh>
 8001b6e:	2800      	cmp	r0, #0
 8001b70:	d0f9      	beq.n	8001b66 <_ZN5CDemo24basic_line_follower_taskEv+0x26>
 8001b72:	2100      	movs	r1, #0
 8001b74:	4835      	ldr	r0, [pc, #212]	; (8001c4c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001b76:	f7fe fdc7 	bl	8000708 <_ZN4CRGB8rgb_readEh>
 8001b7a:	4834      	ldr	r0, [pc, #208]	; (8001c4c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001b7c:	f7fe ff60 	bl	8000a40 <_ZN4CRGB14get_rgb_resultEv>
 8001b80:	4601      	mov	r1, r0
 8001b82:	a802      	add	r0, sp, #8
 8001b84:	f7fe fbd4 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 8001b88:	a802      	add	r0, sp, #8
 8001b8a:	f7fe fc6d 	bl	8000468 <_ZN13CLinePosition7on_lineEv>
 8001b8e:	4604      	mov	r4, r0
 8001b90:	a802      	add	r0, sp, #8
 8001b92:	f7fe fc6b 	bl	800046c <_ZN13CLinePosition17get_line_positionEv>
 8001b96:	eddf 7a2e 	vldr	s15, [pc, #184]	; 8001c50 <_ZN5CDemo24basic_line_follower_taskEv+0x110>
 8001b9a:	492e      	ldr	r1, [pc, #184]	; (8001c54 <_ZN5CDemo24basic_line_follower_taskEv+0x114>)
 8001b9c:	ee07 0a10 	vmov	s14, r0
 8001ba0:	ee67 7a27 	vmul.f32	s15, s14, s15
 8001ba4:	4622      	mov	r2, r4
 8001ba6:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001baa:	4828      	ldr	r0, [pc, #160]	; (8001c4c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001bac:	ee17 3a90 	vmov	r3, s15
 8001bb0:	f7ff fd5e 	bl	8001670 <_ZN9CTerminal6printfEPKcz>
 8001bb4:	a802      	add	r0, sp, #8
 8001bb6:	f7fe fc57 	bl	8000468 <_ZN13CLinePosition7on_lineEv>
 8001bba:	4604      	mov	r4, r0
 8001bbc:	b300      	cbz	r0, 8001c00 <_ZN5CDemo24basic_line_follower_taskEv+0xc0>
 8001bbe:	a802      	add	r0, sp, #8
 8001bc0:	f7fe fc54 	bl	800046c <_ZN13CLinePosition17get_line_positionEv>
 8001bc4:	eddf 7a24 	vldr	s15, [pc, #144]	; 8001c58 <_ZN5CDemo24basic_line_follower_taskEv+0x118>
 8001bc8:	ee07 0a10 	vmov	s14, r0
 8001bcc:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8001bd0:	a808      	add	r0, sp, #32
 8001bd2:	ee17 1a90 	vmov	r1, s15
 8001bd6:	f7fe fc7b 	bl	80004d0 <_ZN4CPID7processEf>
 8001bda:	ee07 0a90 	vmov	s15, r0
 8001bde:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001be2:	481e      	ldr	r0, [pc, #120]	; (8001c5c <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001be4:	ee17 4a90 	vmov	r4, s15
 8001be8:	2100      	movs	r1, #0
 8001bea:	f104 020b 	add.w	r2, r4, #11
 8001bee:	f7fe ffbf 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001bf2:	481a      	ldr	r0, [pc, #104]	; (8001c5c <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001bf4:	2101      	movs	r1, #1
 8001bf6:	f1c4 020b 	rsb	r2, r4, #11
 8001bfa:	f7fe ffb9 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001bfe:	e7b2      	b.n	8001b66 <_ZN5CDemo24basic_line_follower_taskEv+0x26>
 8001c00:	4621      	mov	r1, r4
 8001c02:	4816      	ldr	r0, [pc, #88]	; (8001c5c <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001c04:	f06f 020a 	mvn.w	r2, #10
 8001c08:	f7fe ffb2 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001c0c:	f06f 020a 	mvn.w	r2, #10
 8001c10:	4812      	ldr	r0, [pc, #72]	; (8001c5c <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001c12:	2101      	movs	r1, #1
 8001c14:	f7fe ffac 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001c18:	480b      	ldr	r0, [pc, #44]	; (8001c48 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001c1a:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001c1e:	f7fe fd3f 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 8001c22:	4621      	mov	r1, r4
 8001c24:	4622      	mov	r2, r4
 8001c26:	480d      	ldr	r0, [pc, #52]	; (8001c5c <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001c28:	f7fe ffa2 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001c2c:	480b      	ldr	r0, [pc, #44]	; (8001c5c <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001c2e:	2101      	movs	r1, #1
 8001c30:	4622      	mov	r2, r4
 8001c32:	f7fe ff9d 	bl	8000b70 <_ZN6CMotor9set_motorEml>
 8001c36:	4804      	ldr	r0, [pc, #16]	; (8001c48 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001c38:	2164      	movs	r1, #100	; 0x64
 8001c3a:	f7fe fd31 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 8001c3e:	e792      	b.n	8001b66 <_ZN5CDemo24basic_line_follower_taskEv+0x26>
 8001c40:	42300000 	.word	0x42300000
 8001c44:	41200000 	.word	0x41200000
 8001c48:	2000013c 	.word	0x2000013c
 8001c4c:	20000030 	.word	0x20000030
 8001c50:	447a0000 	.word	0x447a0000
 8001c54:	08002649 	.word	0x08002649
 8001c58:	00000000 	.word	0x00000000
 8001c5c:	200000f4 	.word	0x200000f4

08001c60 <_ZN5CDemo3runEj>:
 8001c60:	2902      	cmp	r1, #2
 8001c62:	b508      	push	{r3, lr}
 8001c64:	d007      	beq.n	8001c76 <_ZN5CDemo3runEj+0x16>
 8001c66:	2903      	cmp	r1, #3
 8001c68:	d007      	beq.n	8001c7a <_ZN5CDemo3runEj+0x1a>
 8001c6a:	2901      	cmp	r1, #1
 8001c6c:	d10a      	bne.n	8001c84 <_ZN5CDemo3runEj+0x24>
 8001c6e:	f7ff ff29 	bl	8001ac4 <_ZN5CDemo10moves_taskEv>
 8001c72:	f7ff ff09 	bl	8001a88 <_ZN5CDemo10blink_taskEv>
 8001c76:	f7ff ff63 	bl	8001b40 <_ZN5CDemo24basic_line_follower_taskEv>
 8001c7a:	4803      	ldr	r0, [pc, #12]	; (8001c88 <_ZN5CDemo3runEj+0x28>)
 8001c7c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001c80:	f7ff bd94 	b.w	80017ac <_ZN21CLearningLineFollower3runEv>
 8001c84:	bd08      	pop	{r3, pc}
 8001c86:	bf00      	nop
 8001c88:	20000188 	.word	0x20000188

08001c8c <main>:
 8001c8c:	b508      	push	{r3, lr}
 8001c8e:	f000 fb79 	bl	8002384 <sytem_clock_init>
 8001c92:	481d      	ldr	r0, [pc, #116]	; (8001d08 <main+0x7c>)
 8001c94:	f7fe faaa 	bl	80001ec <_ZN7CKodama4initEv>
 8001c98:	b118      	cbz	r0, 8001ca2 <main+0x16>
 8001c9a:	481b      	ldr	r0, [pc, #108]	; (8001d08 <main+0x7c>)
 8001c9c:	2100      	movs	r1, #0
 8001c9e:	f7ff fbcb 	bl	8001438 <_ZN6CError10error_funcEi>
 8001ca2:	4819      	ldr	r0, [pc, #100]	; (8001d08 <main+0x7c>)
 8001ca4:	210a      	movs	r1, #10
 8001ca6:	f7fe fae0 	bl	800026a <_ZN7CKodama6set_dtEl>
 8001caa:	4817      	ldr	r0, [pc, #92]	; (8001d08 <main+0x7c>)
 8001cac:	f7fe fac0 	bl	8000230 <_ZN7CKodama5sleepEv>
 8001cb0:	4815      	ldr	r0, [pc, #84]	; (8001d08 <main+0x7c>)
 8001cb2:	f44f 7100 	mov.w	r1, #512	; 0x200
 8001cb6:	f7ff fba3 	bl	8001400 <_ZN5CGPIO7gpio_inEm>
 8001cba:	b148      	cbz	r0, 8001cd0 <main+0x44>
 8001cbc:	4812      	ldr	r0, [pc, #72]	; (8001d08 <main+0x7c>)
 8001cbe:	f7fe fac2 	bl	8000246 <_ZN7CKodama6wakeupEv>
 8001cc2:	4812      	ldr	r0, [pc, #72]	; (8001d0c <main+0x80>)
 8001cc4:	f7ff fede 	bl	8001a84 <_ZN5CDemo4initEv>
 8001cc8:	4810      	ldr	r0, [pc, #64]	; (8001d0c <main+0x80>)
 8001cca:	2102      	movs	r1, #2
 8001ccc:	f7ff ffc8 	bl	8001c60 <_ZN5CDemo3runEj>
 8001cd0:	480d      	ldr	r0, [pc, #52]	; (8001d08 <main+0x7c>)
 8001cd2:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001cd6:	f7ff fb77 	bl	80013c8 <_ZN5CGPIO7gpio_onEm>
 8001cda:	480d      	ldr	r0, [pc, #52]	; (8001d10 <main+0x84>)
 8001cdc:	210a      	movs	r1, #10
 8001cde:	f7fe fcdf 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 8001ce2:	4809      	ldr	r0, [pc, #36]	; (8001d08 <main+0x7c>)
 8001ce4:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ce8:	f7ff fb7c 	bl	80013e4 <_ZN5CGPIO8gpio_offEm>
 8001cec:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001cf0:	4807      	ldr	r0, [pc, #28]	; (8001d10 <main+0x84>)
 8001cf2:	f7fe fcd5 	bl	80006a0 <_ZN6CTimer8delay_msEm>
 8001cf6:	4806      	ldr	r0, [pc, #24]	; (8001d10 <main+0x84>)
 8001cf8:	f7fe fcc4 	bl	8000684 <_ZN6CTimer8get_timeEv>
 8001cfc:	4905      	ldr	r1, [pc, #20]	; (8001d14 <main+0x88>)
 8001cfe:	4602      	mov	r2, r0
 8001d00:	4801      	ldr	r0, [pc, #4]	; (8001d08 <main+0x7c>)
 8001d02:	f7ff fcb5 	bl	8001670 <_ZN9CTerminal6printfEPKcz>
 8001d06:	e7d3      	b.n	8001cb0 <main+0x24>
 8001d08:	20000030 	.word	0x20000030
 8001d0c:	20000470 	.word	0x20000470
 8001d10:	2000013c 	.word	0x2000013c
 8001d14:	08002651 	.word	0x08002651

08001d18 <RCC_GetClocksFreq>:
 8001d18:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001d1c:	4f9b      	ldr	r7, [pc, #620]	; (8001f8c <RCC_GetClocksFreq+0x274>)
 8001d1e:	687b      	ldr	r3, [r7, #4]
 8001d20:	f003 030c 	and.w	r3, r3, #12
 8001d24:	2b04      	cmp	r3, #4
 8001d26:	d005      	beq.n	8001d34 <RCC_GetClocksFreq+0x1c>
 8001d28:	2b08      	cmp	r3, #8
 8001d2a:	d006      	beq.n	8001d3a <RCC_GetClocksFreq+0x22>
 8001d2c:	4a98      	ldr	r2, [pc, #608]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001d2e:	6002      	str	r2, [r0, #0]
 8001d30:	b9b3      	cbnz	r3, 8001d60 <RCC_GetClocksFreq+0x48>
 8001d32:	e016      	b.n	8001d62 <RCC_GetClocksFreq+0x4a>
 8001d34:	4b96      	ldr	r3, [pc, #600]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001d36:	6003      	str	r3, [r0, #0]
 8001d38:	e012      	b.n	8001d60 <RCC_GetClocksFreq+0x48>
 8001d3a:	687b      	ldr	r3, [r7, #4]
 8001d3c:	6879      	ldr	r1, [r7, #4]
 8001d3e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001d42:	1c9a      	adds	r2, r3, #2
 8001d44:	03cb      	lsls	r3, r1, #15
 8001d46:	bf49      	itett	mi
 8001d48:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001d4a:	4b92      	ldrpl	r3, [pc, #584]	; (8001f94 <RCC_GetClocksFreq+0x27c>)
 8001d4c:	4990      	ldrmi	r1, [pc, #576]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001d4e:	f003 030f 	andmi.w	r3, r3, #15
 8001d52:	bf44      	itt	mi
 8001d54:	3301      	addmi	r3, #1
 8001d56:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001d5a:	4353      	muls	r3, r2
 8001d5c:	6003      	str	r3, [r0, #0]
 8001d5e:	e000      	b.n	8001d62 <RCC_GetClocksFreq+0x4a>
 8001d60:	2300      	movs	r3, #0
 8001d62:	687a      	ldr	r2, [r7, #4]
 8001d64:	4e8c      	ldr	r6, [pc, #560]	; (8001f98 <RCC_GetClocksFreq+0x280>)
 8001d66:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001f9c <RCC_GetClocksFreq+0x284>
 8001d6a:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001d6e:	5cb4      	ldrb	r4, [r6, r2]
 8001d70:	6802      	ldr	r2, [r0, #0]
 8001d72:	b2e4      	uxtb	r4, r4
 8001d74:	fa22 f104 	lsr.w	r1, r2, r4
 8001d78:	6041      	str	r1, [r0, #4]
 8001d7a:	687d      	ldr	r5, [r7, #4]
 8001d7c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001d80:	5d75      	ldrb	r5, [r6, r5]
 8001d82:	fa21 fe05 	lsr.w	lr, r1, r5
 8001d86:	f8c0 e008 	str.w	lr, [r0, #8]
 8001d8a:	687d      	ldr	r5, [r7, #4]
 8001d8c:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001d90:	5d75      	ldrb	r5, [r6, r5]
 8001d92:	b2ed      	uxtb	r5, r5
 8001d94:	40e9      	lsrs	r1, r5
 8001d96:	60c1      	str	r1, [r0, #12]
 8001d98:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001d9a:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001d9e:	f008 060f 	and.w	r6, r8, #15
 8001da2:	f018 0f10 	tst.w	r8, #16
 8001da6:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001daa:	46e0      	mov	r8, ip
 8001dac:	b2b6      	uxth	r6, r6
 8001dae:	d004      	beq.n	8001dba <RCC_GetClocksFreq+0xa2>
 8001db0:	b11e      	cbz	r6, 8001dba <RCC_GetClocksFreq+0xa2>
 8001db2:	fbb3 f6f6 	udiv	r6, r3, r6
 8001db6:	6106      	str	r6, [r0, #16]
 8001db8:	e000      	b.n	8001dbc <RCC_GetClocksFreq+0xa4>
 8001dba:	6102      	str	r2, [r0, #16]
 8001dbc:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001dbe:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001dc2:	f00c 060f 	and.w	r6, ip, #15
 8001dc6:	f01c 0f10 	tst.w	ip, #16
 8001dca:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001dce:	b2b6      	uxth	r6, r6
 8001dd0:	d004      	beq.n	8001ddc <RCC_GetClocksFreq+0xc4>
 8001dd2:	b11e      	cbz	r6, 8001ddc <RCC_GetClocksFreq+0xc4>
 8001dd4:	fbb3 f6f6 	udiv	r6, r3, r6
 8001dd8:	6146      	str	r6, [r0, #20]
 8001dda:	e000      	b.n	8001dde <RCC_GetClocksFreq+0xc6>
 8001ddc:	6142      	str	r2, [r0, #20]
 8001dde:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001de0:	06f6      	lsls	r6, r6, #27
 8001de2:	bf5a      	itte	pl
 8001de4:	4e6a      	ldrpl	r6, [pc, #424]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001de6:	6186      	strpl	r6, [r0, #24]
 8001de8:	6182      	strmi	r2, [r0, #24]
 8001dea:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001dec:	06b6      	lsls	r6, r6, #26
 8001dee:	bf5a      	itte	pl
 8001df0:	4e67      	ldrpl	r6, [pc, #412]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001df2:	61c6      	strpl	r6, [r0, #28]
 8001df4:	61c2      	strmi	r2, [r0, #28]
 8001df6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001df8:	0676      	lsls	r6, r6, #25
 8001dfa:	bf5a      	itte	pl
 8001dfc:	4e64      	ldrpl	r6, [pc, #400]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001dfe:	6206      	strpl	r6, [r0, #32]
 8001e00:	6202      	strmi	r2, [r0, #32]
 8001e02:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e04:	05f6      	lsls	r6, r6, #23
 8001e06:	d506      	bpl.n	8001e16 <RCC_GetClocksFreq+0xfe>
 8001e08:	429a      	cmp	r2, r3
 8001e0a:	d104      	bne.n	8001e16 <RCC_GetClocksFreq+0xfe>
 8001e0c:	42a5      	cmp	r5, r4
 8001e0e:	d102      	bne.n	8001e16 <RCC_GetClocksFreq+0xfe>
 8001e10:	0056      	lsls	r6, r2, #1
 8001e12:	6246      	str	r6, [r0, #36]	; 0x24
 8001e14:	e000      	b.n	8001e18 <RCC_GetClocksFreq+0x100>
 8001e16:	6241      	str	r1, [r0, #36]	; 0x24
 8001e18:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e1a:	04f6      	lsls	r6, r6, #19
 8001e1c:	d506      	bpl.n	8001e2c <RCC_GetClocksFreq+0x114>
 8001e1e:	429a      	cmp	r2, r3
 8001e20:	d104      	bne.n	8001e2c <RCC_GetClocksFreq+0x114>
 8001e22:	42a5      	cmp	r5, r4
 8001e24:	d102      	bne.n	8001e2c <RCC_GetClocksFreq+0x114>
 8001e26:	0056      	lsls	r6, r2, #1
 8001e28:	6286      	str	r6, [r0, #40]	; 0x28
 8001e2a:	e000      	b.n	8001e2e <RCC_GetClocksFreq+0x116>
 8001e2c:	6281      	str	r1, [r0, #40]	; 0x28
 8001e2e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e30:	05b6      	lsls	r6, r6, #22
 8001e32:	d506      	bpl.n	8001e42 <RCC_GetClocksFreq+0x12a>
 8001e34:	429a      	cmp	r2, r3
 8001e36:	d104      	bne.n	8001e42 <RCC_GetClocksFreq+0x12a>
 8001e38:	42a5      	cmp	r5, r4
 8001e3a:	d102      	bne.n	8001e42 <RCC_GetClocksFreq+0x12a>
 8001e3c:	0056      	lsls	r6, r2, #1
 8001e3e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001e40:	e000      	b.n	8001e44 <RCC_GetClocksFreq+0x12c>
 8001e42:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001e44:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e46:	0576      	lsls	r6, r6, #21
 8001e48:	d506      	bpl.n	8001e58 <RCC_GetClocksFreq+0x140>
 8001e4a:	429a      	cmp	r2, r3
 8001e4c:	d104      	bne.n	8001e58 <RCC_GetClocksFreq+0x140>
 8001e4e:	42a5      	cmp	r5, r4
 8001e50:	d102      	bne.n	8001e58 <RCC_GetClocksFreq+0x140>
 8001e52:	0056      	lsls	r6, r2, #1
 8001e54:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001e56:	e000      	b.n	8001e5a <RCC_GetClocksFreq+0x142>
 8001e58:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001e5a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e5c:	0536      	lsls	r6, r6, #20
 8001e5e:	d506      	bpl.n	8001e6e <RCC_GetClocksFreq+0x156>
 8001e60:	429a      	cmp	r2, r3
 8001e62:	d104      	bne.n	8001e6e <RCC_GetClocksFreq+0x156>
 8001e64:	42a5      	cmp	r5, r4
 8001e66:	d102      	bne.n	8001e6e <RCC_GetClocksFreq+0x156>
 8001e68:	0056      	lsls	r6, r2, #1
 8001e6a:	6506      	str	r6, [r0, #80]	; 0x50
 8001e6c:	e000      	b.n	8001e70 <RCC_GetClocksFreq+0x158>
 8001e6e:	6501      	str	r1, [r0, #80]	; 0x50
 8001e70:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e72:	04b6      	lsls	r6, r6, #18
 8001e74:	d506      	bpl.n	8001e84 <RCC_GetClocksFreq+0x16c>
 8001e76:	429a      	cmp	r2, r3
 8001e78:	d104      	bne.n	8001e84 <RCC_GetClocksFreq+0x16c>
 8001e7a:	42a5      	cmp	r5, r4
 8001e7c:	d102      	bne.n	8001e84 <RCC_GetClocksFreq+0x16c>
 8001e7e:	0056      	lsls	r6, r2, #1
 8001e80:	6546      	str	r6, [r0, #84]	; 0x54
 8001e82:	e000      	b.n	8001e86 <RCC_GetClocksFreq+0x16e>
 8001e84:	6501      	str	r1, [r0, #80]	; 0x50
 8001e86:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001e88:	0436      	lsls	r6, r6, #16
 8001e8a:	d506      	bpl.n	8001e9a <RCC_GetClocksFreq+0x182>
 8001e8c:	429a      	cmp	r2, r3
 8001e8e:	d104      	bne.n	8001e9a <RCC_GetClocksFreq+0x182>
 8001e90:	42a5      	cmp	r5, r4
 8001e92:	d102      	bne.n	8001e9a <RCC_GetClocksFreq+0x182>
 8001e94:	0053      	lsls	r3, r2, #1
 8001e96:	6583      	str	r3, [r0, #88]	; 0x58
 8001e98:	e000      	b.n	8001e9c <RCC_GetClocksFreq+0x184>
 8001e9a:	6581      	str	r1, [r0, #88]	; 0x58
 8001e9c:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001e9e:	4b3b      	ldr	r3, [pc, #236]	; (8001f8c <RCC_GetClocksFreq+0x274>)
 8001ea0:	07a4      	lsls	r4, r4, #30
 8001ea2:	d101      	bne.n	8001ea8 <RCC_GetClocksFreq+0x190>
 8001ea4:	6381      	str	r1, [r0, #56]	; 0x38
 8001ea6:	e015      	b.n	8001ed4 <RCC_GetClocksFreq+0x1bc>
 8001ea8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001eaa:	f001 0103 	and.w	r1, r1, #3
 8001eae:	2901      	cmp	r1, #1
 8001eb0:	d101      	bne.n	8001eb6 <RCC_GetClocksFreq+0x19e>
 8001eb2:	6382      	str	r2, [r0, #56]	; 0x38
 8001eb4:	e00e      	b.n	8001ed4 <RCC_GetClocksFreq+0x1bc>
 8001eb6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001eb8:	f001 0103 	and.w	r1, r1, #3
 8001ebc:	2902      	cmp	r1, #2
 8001ebe:	d102      	bne.n	8001ec6 <RCC_GetClocksFreq+0x1ae>
 8001ec0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001ec4:	e005      	b.n	8001ed2 <RCC_GetClocksFreq+0x1ba>
 8001ec6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001ec8:	f003 0303 	and.w	r3, r3, #3
 8001ecc:	2b03      	cmp	r3, #3
 8001ece:	d101      	bne.n	8001ed4 <RCC_GetClocksFreq+0x1bc>
 8001ed0:	4b2f      	ldr	r3, [pc, #188]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001ed2:	6383      	str	r3, [r0, #56]	; 0x38
 8001ed4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001ed6:	4b2d      	ldr	r3, [pc, #180]	; (8001f8c <RCC_GetClocksFreq+0x274>)
 8001ed8:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001edc:	d102      	bne.n	8001ee4 <RCC_GetClocksFreq+0x1cc>
 8001ede:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001ee2:	e018      	b.n	8001f16 <RCC_GetClocksFreq+0x1fe>
 8001ee4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ee6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001eea:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001eee:	d101      	bne.n	8001ef4 <RCC_GetClocksFreq+0x1dc>
 8001ef0:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001ef2:	e010      	b.n	8001f16 <RCC_GetClocksFreq+0x1fe>
 8001ef4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001ef6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001efa:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001efe:	d102      	bne.n	8001f06 <RCC_GetClocksFreq+0x1ee>
 8001f00:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f04:	e006      	b.n	8001f14 <RCC_GetClocksFreq+0x1fc>
 8001f06:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f08:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001f0c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001f10:	d101      	bne.n	8001f16 <RCC_GetClocksFreq+0x1fe>
 8001f12:	4b1f      	ldr	r3, [pc, #124]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001f14:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001f16:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001f18:	4b1c      	ldr	r3, [pc, #112]	; (8001f8c <RCC_GetClocksFreq+0x274>)
 8001f1a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001f1e:	d102      	bne.n	8001f26 <RCC_GetClocksFreq+0x20e>
 8001f20:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001f24:	e018      	b.n	8001f58 <RCC_GetClocksFreq+0x240>
 8001f26:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f28:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001f2c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001f30:	d101      	bne.n	8001f36 <RCC_GetClocksFreq+0x21e>
 8001f32:	6402      	str	r2, [r0, #64]	; 0x40
 8001f34:	e010      	b.n	8001f58 <RCC_GetClocksFreq+0x240>
 8001f36:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f38:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001f3c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001f40:	d102      	bne.n	8001f48 <RCC_GetClocksFreq+0x230>
 8001f42:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f46:	e006      	b.n	8001f56 <RCC_GetClocksFreq+0x23e>
 8001f48:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001f4a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001f4e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001f52:	d101      	bne.n	8001f58 <RCC_GetClocksFreq+0x240>
 8001f54:	4b0e      	ldr	r3, [pc, #56]	; (8001f90 <RCC_GetClocksFreq+0x278>)
 8001f56:	6403      	str	r3, [r0, #64]	; 0x40
 8001f58:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001f5a:	4b0c      	ldr	r3, [pc, #48]	; (8001f8c <RCC_GetClocksFreq+0x274>)
 8001f5c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001f60:	d102      	bne.n	8001f68 <RCC_GetClocksFreq+0x250>
 8001f62:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001f66:	e023      	b.n	8001fb0 <RCC_GetClocksFreq+0x298>
 8001f68:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f6a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001f6e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001f72:	d101      	bne.n	8001f78 <RCC_GetClocksFreq+0x260>
 8001f74:	6442      	str	r2, [r0, #68]	; 0x44
 8001f76:	e01b      	b.n	8001fb0 <RCC_GetClocksFreq+0x298>
 8001f78:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001f7a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001f7e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001f82:	d10d      	bne.n	8001fa0 <RCC_GetClocksFreq+0x288>
 8001f84:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001f88:	e011      	b.n	8001fae <RCC_GetClocksFreq+0x296>
 8001f8a:	bf00      	nop
 8001f8c:	40021000 	.word	0x40021000
 8001f90:	007a1200 	.word	0x007a1200
 8001f94:	003d0900 	.word	0x003d0900
 8001f98:	20000020 	.word	0x20000020
 8001f9c:	20000000 	.word	0x20000000
 8001fa0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fa2:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001fa6:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001faa:	d101      	bne.n	8001fb0 <RCC_GetClocksFreq+0x298>
 8001fac:	4b13      	ldr	r3, [pc, #76]	; (8001ffc <RCC_GetClocksFreq+0x2e4>)
 8001fae:	6443      	str	r3, [r0, #68]	; 0x44
 8001fb0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001fb2:	4b13      	ldr	r3, [pc, #76]	; (8002000 <RCC_GetClocksFreq+0x2e8>)
 8001fb4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001fb8:	d103      	bne.n	8001fc2 <RCC_GetClocksFreq+0x2aa>
 8001fba:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001fbe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001fc2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001fc4:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001fc8:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001fcc:	d102      	bne.n	8001fd4 <RCC_GetClocksFreq+0x2bc>
 8001fce:	6482      	str	r2, [r0, #72]	; 0x48
 8001fd0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001fd4:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001fd6:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001fda:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001fde:	d102      	bne.n	8001fe6 <RCC_GetClocksFreq+0x2ce>
 8001fe0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001fe4:	e006      	b.n	8001ff4 <RCC_GetClocksFreq+0x2dc>
 8001fe6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001fe8:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001fec:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001ff0:	d101      	bne.n	8001ff6 <RCC_GetClocksFreq+0x2de>
 8001ff2:	4b02      	ldr	r3, [pc, #8]	; (8001ffc <RCC_GetClocksFreq+0x2e4>)
 8001ff4:	6483      	str	r3, [r0, #72]	; 0x48
 8001ff6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001ffa:	bf00      	nop
 8001ffc:	007a1200 	.word	0x007a1200
 8002000:	40021000 	.word	0x40021000

08002004 <RCC_AHBPeriphClockCmd>:
 8002004:	bf00      	nop
 8002006:	bf00      	nop
 8002008:	4b04      	ldr	r3, [pc, #16]	; (800201c <RCC_AHBPeriphClockCmd+0x18>)
 800200a:	695a      	ldr	r2, [r3, #20]
 800200c:	b109      	cbz	r1, 8002012 <RCC_AHBPeriphClockCmd+0xe>
 800200e:	4310      	orrs	r0, r2
 8002010:	e001      	b.n	8002016 <RCC_AHBPeriphClockCmd+0x12>
 8002012:	ea22 0000 	bic.w	r0, r2, r0
 8002016:	6158      	str	r0, [r3, #20]
 8002018:	4770      	bx	lr
 800201a:	bf00      	nop
 800201c:	40021000 	.word	0x40021000

08002020 <RCC_APB2PeriphClockCmd>:
 8002020:	bf00      	nop
 8002022:	bf00      	nop
 8002024:	4b04      	ldr	r3, [pc, #16]	; (8002038 <RCC_APB2PeriphClockCmd+0x18>)
 8002026:	699a      	ldr	r2, [r3, #24]
 8002028:	b109      	cbz	r1, 800202e <RCC_APB2PeriphClockCmd+0xe>
 800202a:	4310      	orrs	r0, r2
 800202c:	e001      	b.n	8002032 <RCC_APB2PeriphClockCmd+0x12>
 800202e:	ea22 0000 	bic.w	r0, r2, r0
 8002032:	6198      	str	r0, [r3, #24]
 8002034:	4770      	bx	lr
 8002036:	bf00      	nop
 8002038:	40021000 	.word	0x40021000

0800203c <RCC_APB1PeriphClockCmd>:
 800203c:	bf00      	nop
 800203e:	bf00      	nop
 8002040:	4b04      	ldr	r3, [pc, #16]	; (8002054 <RCC_APB1PeriphClockCmd+0x18>)
 8002042:	69da      	ldr	r2, [r3, #28]
 8002044:	b109      	cbz	r1, 800204a <RCC_APB1PeriphClockCmd+0xe>
 8002046:	4310      	orrs	r0, r2
 8002048:	e001      	b.n	800204e <RCC_APB1PeriphClockCmd+0x12>
 800204a:	ea22 0000 	bic.w	r0, r2, r0
 800204e:	61d8      	str	r0, [r3, #28]
 8002050:	4770      	bx	lr
 8002052:	bf00      	nop
 8002054:	40021000 	.word	0x40021000

08002058 <TIM_TimeBaseInit>:
 8002058:	bf00      	nop
 800205a:	bf00      	nop
 800205c:	bf00      	nop
 800205e:	4a24      	ldr	r2, [pc, #144]	; (80020f0 <TIM_TimeBaseInit+0x98>)
 8002060:	8803      	ldrh	r3, [r0, #0]
 8002062:	4290      	cmp	r0, r2
 8002064:	b29b      	uxth	r3, r3
 8002066:	d012      	beq.n	800208e <TIM_TimeBaseInit+0x36>
 8002068:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800206c:	4290      	cmp	r0, r2
 800206e:	d00e      	beq.n	800208e <TIM_TimeBaseInit+0x36>
 8002070:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002074:	d00b      	beq.n	800208e <TIM_TimeBaseInit+0x36>
 8002076:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 800207a:	4290      	cmp	r0, r2
 800207c:	d007      	beq.n	800208e <TIM_TimeBaseInit+0x36>
 800207e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002082:	4290      	cmp	r0, r2
 8002084:	d003      	beq.n	800208e <TIM_TimeBaseInit+0x36>
 8002086:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 800208a:	4290      	cmp	r0, r2
 800208c:	d103      	bne.n	8002096 <TIM_TimeBaseInit+0x3e>
 800208e:	884a      	ldrh	r2, [r1, #2]
 8002090:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002094:	4313      	orrs	r3, r2
 8002096:	4a17      	ldr	r2, [pc, #92]	; (80020f4 <TIM_TimeBaseInit+0x9c>)
 8002098:	4290      	cmp	r0, r2
 800209a:	d008      	beq.n	80020ae <TIM_TimeBaseInit+0x56>
 800209c:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80020a0:	4290      	cmp	r0, r2
 80020a2:	bf1f      	itttt	ne
 80020a4:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 80020a8:	890a      	ldrhne	r2, [r1, #8]
 80020aa:	b29b      	uxthne	r3, r3
 80020ac:	4313      	orrne	r3, r2
 80020ae:	8003      	strh	r3, [r0, #0]
 80020b0:	684b      	ldr	r3, [r1, #4]
 80020b2:	62c3      	str	r3, [r0, #44]	; 0x2c
 80020b4:	880b      	ldrh	r3, [r1, #0]
 80020b6:	8503      	strh	r3, [r0, #40]	; 0x28
 80020b8:	4b0d      	ldr	r3, [pc, #52]	; (80020f0 <TIM_TimeBaseInit+0x98>)
 80020ba:	4298      	cmp	r0, r3
 80020bc:	d013      	beq.n	80020e6 <TIM_TimeBaseInit+0x8e>
 80020be:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80020c2:	4298      	cmp	r0, r3
 80020c4:	d00f      	beq.n	80020e6 <TIM_TimeBaseInit+0x8e>
 80020c6:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80020ca:	4298      	cmp	r0, r3
 80020cc:	d00b      	beq.n	80020e6 <TIM_TimeBaseInit+0x8e>
 80020ce:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80020d2:	4298      	cmp	r0, r3
 80020d4:	d007      	beq.n	80020e6 <TIM_TimeBaseInit+0x8e>
 80020d6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80020da:	4298      	cmp	r0, r3
 80020dc:	d003      	beq.n	80020e6 <TIM_TimeBaseInit+0x8e>
 80020de:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80020e2:	4298      	cmp	r0, r3
 80020e4:	d101      	bne.n	80020ea <TIM_TimeBaseInit+0x92>
 80020e6:	894b      	ldrh	r3, [r1, #10]
 80020e8:	8603      	strh	r3, [r0, #48]	; 0x30
 80020ea:	2301      	movs	r3, #1
 80020ec:	6143      	str	r3, [r0, #20]
 80020ee:	4770      	bx	lr
 80020f0:	40012c00 	.word	0x40012c00
 80020f4:	40001000 	.word	0x40001000

080020f8 <TIM_Cmd>:
 80020f8:	bf00      	nop
 80020fa:	bf00      	nop
 80020fc:	8803      	ldrh	r3, [r0, #0]
 80020fe:	b119      	cbz	r1, 8002108 <TIM_Cmd+0x10>
 8002100:	b29b      	uxth	r3, r3
 8002102:	f043 0301 	orr.w	r3, r3, #1
 8002106:	e003      	b.n	8002110 <TIM_Cmd+0x18>
 8002108:	f023 0301 	bic.w	r3, r3, #1
 800210c:	041b      	lsls	r3, r3, #16
 800210e:	0c1b      	lsrs	r3, r3, #16
 8002110:	8003      	strh	r3, [r0, #0]
 8002112:	4770      	bx	lr

08002114 <TIM_ClearITPendingBit>:
 8002114:	bf00      	nop
 8002116:	43c9      	mvns	r1, r1
 8002118:	b289      	uxth	r1, r1
 800211a:	6101      	str	r1, [r0, #16]
 800211c:	4770      	bx	lr
	...

08002120 <USART_Init>:
 8002120:	b530      	push	{r4, r5, lr}
 8002122:	4604      	mov	r4, r0
 8002124:	b099      	sub	sp, #100	; 0x64
 8002126:	460d      	mov	r5, r1
 8002128:	bf00      	nop
 800212a:	bf00      	nop
 800212c:	bf00      	nop
 800212e:	bf00      	nop
 8002130:	bf00      	nop
 8002132:	bf00      	nop
 8002134:	bf00      	nop
 8002136:	6803      	ldr	r3, [r0, #0]
 8002138:	f023 0301 	bic.w	r3, r3, #1
 800213c:	6003      	str	r3, [r0, #0]
 800213e:	6843      	ldr	r3, [r0, #4]
 8002140:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002144:	688b      	ldr	r3, [r1, #8]
 8002146:	68c9      	ldr	r1, [r1, #12]
 8002148:	4313      	orrs	r3, r2
 800214a:	6043      	str	r3, [r0, #4]
 800214c:	686a      	ldr	r2, [r5, #4]
 800214e:	6803      	ldr	r3, [r0, #0]
 8002150:	4311      	orrs	r1, r2
 8002152:	692a      	ldr	r2, [r5, #16]
 8002154:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002158:	430a      	orrs	r2, r1
 800215a:	f023 030c 	bic.w	r3, r3, #12
 800215e:	4313      	orrs	r3, r2
 8002160:	6003      	str	r3, [r0, #0]
 8002162:	6883      	ldr	r3, [r0, #8]
 8002164:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002168:	696b      	ldr	r3, [r5, #20]
 800216a:	4313      	orrs	r3, r2
 800216c:	6083      	str	r3, [r0, #8]
 800216e:	a801      	add	r0, sp, #4
 8002170:	f7ff fdd2 	bl	8001d18 <RCC_GetClocksFreq>
 8002174:	4b17      	ldr	r3, [pc, #92]	; (80021d4 <USART_Init+0xb4>)
 8002176:	429c      	cmp	r4, r3
 8002178:	d101      	bne.n	800217e <USART_Init+0x5e>
 800217a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800217c:	e00e      	b.n	800219c <USART_Init+0x7c>
 800217e:	4b16      	ldr	r3, [pc, #88]	; (80021d8 <USART_Init+0xb8>)
 8002180:	429c      	cmp	r4, r3
 8002182:	d101      	bne.n	8002188 <USART_Init+0x68>
 8002184:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002186:	e009      	b.n	800219c <USART_Init+0x7c>
 8002188:	4b14      	ldr	r3, [pc, #80]	; (80021dc <USART_Init+0xbc>)
 800218a:	429c      	cmp	r4, r3
 800218c:	d101      	bne.n	8002192 <USART_Init+0x72>
 800218e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002190:	e004      	b.n	800219c <USART_Init+0x7c>
 8002192:	4b13      	ldr	r3, [pc, #76]	; (80021e0 <USART_Init+0xc0>)
 8002194:	429c      	cmp	r4, r3
 8002196:	bf0c      	ite	eq
 8002198:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 800219a:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 800219c:	6822      	ldr	r2, [r4, #0]
 800219e:	6829      	ldr	r1, [r5, #0]
 80021a0:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80021a4:	bf18      	it	ne
 80021a6:	005b      	lslne	r3, r3, #1
 80021a8:	fbb3 f2f1 	udiv	r2, r3, r1
 80021ac:	fb01 3312 	mls	r3, r1, r2, r3
 80021b0:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80021b4:	6823      	ldr	r3, [r4, #0]
 80021b6:	bf28      	it	cs
 80021b8:	3201      	addcs	r2, #1
 80021ba:	041b      	lsls	r3, r3, #16
 80021bc:	bf41      	itttt	mi
 80021be:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80021c2:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80021c6:	4013      	andmi	r3, r2
 80021c8:	ea41 0203 	orrmi.w	r2, r1, r3
 80021cc:	b292      	uxth	r2, r2
 80021ce:	81a2      	strh	r2, [r4, #12]
 80021d0:	b019      	add	sp, #100	; 0x64
 80021d2:	bd30      	pop	{r4, r5, pc}
 80021d4:	40013800 	.word	0x40013800
 80021d8:	40004400 	.word	0x40004400
 80021dc:	40004800 	.word	0x40004800
 80021e0:	40004c00 	.word	0x40004c00

080021e4 <USART_Cmd>:
 80021e4:	bf00      	nop
 80021e6:	bf00      	nop
 80021e8:	6803      	ldr	r3, [r0, #0]
 80021ea:	b111      	cbz	r1, 80021f2 <USART_Cmd+0xe>
 80021ec:	f043 0301 	orr.w	r3, r3, #1
 80021f0:	e001      	b.n	80021f6 <USART_Cmd+0x12>
 80021f2:	f023 0301 	bic.w	r3, r3, #1
 80021f6:	6003      	str	r3, [r0, #0]
 80021f8:	4770      	bx	lr

080021fa <USART_ReceiveData>:
 80021fa:	bf00      	nop
 80021fc:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80021fe:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002202:	4770      	bx	lr

08002204 <USART_ITConfig>:
 8002204:	b510      	push	{r4, lr}
 8002206:	bf00      	nop
 8002208:	bf00      	nop
 800220a:	bf00      	nop
 800220c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002210:	2301      	movs	r3, #1
 8002212:	b2c9      	uxtb	r1, r1
 8002214:	2c02      	cmp	r4, #2
 8002216:	fa03 f301 	lsl.w	r3, r3, r1
 800221a:	d101      	bne.n	8002220 <USART_ITConfig+0x1c>
 800221c:	3004      	adds	r0, #4
 800221e:	e002      	b.n	8002226 <USART_ITConfig+0x22>
 8002220:	2c03      	cmp	r4, #3
 8002222:	bf08      	it	eq
 8002224:	3008      	addeq	r0, #8
 8002226:	b112      	cbz	r2, 800222e <USART_ITConfig+0x2a>
 8002228:	6802      	ldr	r2, [r0, #0]
 800222a:	4313      	orrs	r3, r2
 800222c:	e002      	b.n	8002234 <USART_ITConfig+0x30>
 800222e:	6802      	ldr	r2, [r0, #0]
 8002230:	ea22 0303 	bic.w	r3, r2, r3
 8002234:	6003      	str	r3, [r0, #0]
 8002236:	bd10      	pop	{r4, pc}

08002238 <USART_GetITStatus>:
 8002238:	b510      	push	{r4, lr}
 800223a:	bf00      	nop
 800223c:	bf00      	nop
 800223e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002242:	b2cc      	uxtb	r4, r1
 8002244:	2301      	movs	r3, #1
 8002246:	2a01      	cmp	r2, #1
 8002248:	fa03 f304 	lsl.w	r3, r3, r4
 800224c:	d101      	bne.n	8002252 <USART_GetITStatus+0x1a>
 800224e:	6802      	ldr	r2, [r0, #0]
 8002250:	e003      	b.n	800225a <USART_GetITStatus+0x22>
 8002252:	2a02      	cmp	r2, #2
 8002254:	bf0c      	ite	eq
 8002256:	6842      	ldreq	r2, [r0, #4]
 8002258:	6882      	ldrne	r2, [r0, #8]
 800225a:	4013      	ands	r3, r2
 800225c:	69c2      	ldr	r2, [r0, #28]
 800225e:	b13b      	cbz	r3, 8002270 <USART_GetITStatus+0x38>
 8002260:	0c09      	lsrs	r1, r1, #16
 8002262:	2301      	movs	r3, #1
 8002264:	408b      	lsls	r3, r1
 8002266:	4213      	tst	r3, r2
 8002268:	bf14      	ite	ne
 800226a:	2001      	movne	r0, #1
 800226c:	2000      	moveq	r0, #0
 800226e:	bd10      	pop	{r4, pc}
 8002270:	4618      	mov	r0, r3
 8002272:	bd10      	pop	{r4, pc}

08002274 <USART_ClearITPendingBit>:
 8002274:	bf00      	nop
 8002276:	bf00      	nop
 8002278:	2301      	movs	r3, #1
 800227a:	0c09      	lsrs	r1, r1, #16
 800227c:	408b      	lsls	r3, r1
 800227e:	6203      	str	r3, [r0, #32]
 8002280:	4770      	bx	lr
	...

08002284 <SystemInit>:
 8002284:	4a39      	ldr	r2, [pc, #228]	; (800236c <SystemInit+0xe8>)
 8002286:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800228a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800228e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002292:	4b37      	ldr	r3, [pc, #220]	; (8002370 <SystemInit+0xec>)
 8002294:	681a      	ldr	r2, [r3, #0]
 8002296:	f042 0201 	orr.w	r2, r2, #1
 800229a:	601a      	str	r2, [r3, #0]
 800229c:	6859      	ldr	r1, [r3, #4]
 800229e:	4a35      	ldr	r2, [pc, #212]	; (8002374 <SystemInit+0xf0>)
 80022a0:	400a      	ands	r2, r1
 80022a2:	605a      	str	r2, [r3, #4]
 80022a4:	681a      	ldr	r2, [r3, #0]
 80022a6:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80022aa:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80022ae:	601a      	str	r2, [r3, #0]
 80022b0:	681a      	ldr	r2, [r3, #0]
 80022b2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80022b6:	601a      	str	r2, [r3, #0]
 80022b8:	685a      	ldr	r2, [r3, #4]
 80022ba:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80022be:	605a      	str	r2, [r3, #4]
 80022c0:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80022c2:	f022 020f 	bic.w	r2, r2, #15
 80022c6:	62da      	str	r2, [r3, #44]	; 0x2c
 80022c8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80022ca:	4a2b      	ldr	r2, [pc, #172]	; (8002378 <SystemInit+0xf4>)
 80022cc:	b082      	sub	sp, #8
 80022ce:	400a      	ands	r2, r1
 80022d0:	631a      	str	r2, [r3, #48]	; 0x30
 80022d2:	2200      	movs	r2, #0
 80022d4:	609a      	str	r2, [r3, #8]
 80022d6:	9200      	str	r2, [sp, #0]
 80022d8:	9201      	str	r2, [sp, #4]
 80022da:	681a      	ldr	r2, [r3, #0]
 80022dc:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80022e0:	601a      	str	r2, [r3, #0]
 80022e2:	681a      	ldr	r2, [r3, #0]
 80022e4:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80022e8:	9201      	str	r2, [sp, #4]
 80022ea:	9a00      	ldr	r2, [sp, #0]
 80022ec:	3201      	adds	r2, #1
 80022ee:	9200      	str	r2, [sp, #0]
 80022f0:	9a01      	ldr	r2, [sp, #4]
 80022f2:	b91a      	cbnz	r2, 80022fc <SystemInit+0x78>
 80022f4:	9a00      	ldr	r2, [sp, #0]
 80022f6:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80022fa:	d1f2      	bne.n	80022e2 <SystemInit+0x5e>
 80022fc:	681a      	ldr	r2, [r3, #0]
 80022fe:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002302:	bf18      	it	ne
 8002304:	2201      	movne	r2, #1
 8002306:	9201      	str	r2, [sp, #4]
 8002308:	9a01      	ldr	r2, [sp, #4]
 800230a:	2a01      	cmp	r2, #1
 800230c:	d005      	beq.n	800231a <SystemInit+0x96>
 800230e:	4b17      	ldr	r3, [pc, #92]	; (800236c <SystemInit+0xe8>)
 8002310:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002314:	609a      	str	r2, [r3, #8]
 8002316:	b002      	add	sp, #8
 8002318:	4770      	bx	lr
 800231a:	4a18      	ldr	r2, [pc, #96]	; (800237c <SystemInit+0xf8>)
 800231c:	2112      	movs	r1, #18
 800231e:	6011      	str	r1, [r2, #0]
 8002320:	685a      	ldr	r2, [r3, #4]
 8002322:	605a      	str	r2, [r3, #4]
 8002324:	685a      	ldr	r2, [r3, #4]
 8002326:	605a      	str	r2, [r3, #4]
 8002328:	685a      	ldr	r2, [r3, #4]
 800232a:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800232e:	605a      	str	r2, [r3, #4]
 8002330:	685a      	ldr	r2, [r3, #4]
 8002332:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002336:	605a      	str	r2, [r3, #4]
 8002338:	685a      	ldr	r2, [r3, #4]
 800233a:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800233e:	605a      	str	r2, [r3, #4]
 8002340:	681a      	ldr	r2, [r3, #0]
 8002342:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002346:	601a      	str	r2, [r3, #0]
 8002348:	6819      	ldr	r1, [r3, #0]
 800234a:	4a09      	ldr	r2, [pc, #36]	; (8002370 <SystemInit+0xec>)
 800234c:	0189      	lsls	r1, r1, #6
 800234e:	d5fb      	bpl.n	8002348 <SystemInit+0xc4>
 8002350:	6851      	ldr	r1, [r2, #4]
 8002352:	f021 0103 	bic.w	r1, r1, #3
 8002356:	6051      	str	r1, [r2, #4]
 8002358:	6851      	ldr	r1, [r2, #4]
 800235a:	f041 0102 	orr.w	r1, r1, #2
 800235e:	6051      	str	r1, [r2, #4]
 8002360:	685a      	ldr	r2, [r3, #4]
 8002362:	f002 020c 	and.w	r2, r2, #12
 8002366:	2a08      	cmp	r2, #8
 8002368:	d1fa      	bne.n	8002360 <SystemInit+0xdc>
 800236a:	e7d0      	b.n	800230e <SystemInit+0x8a>
 800236c:	e000ed00 	.word	0xe000ed00
 8002370:	40021000 	.word	0x40021000
 8002374:	f87fc00c 	.word	0xf87fc00c
 8002378:	ff00fccc 	.word	0xff00fccc
 800237c:	40022000 	.word	0x40022000

08002380 <core_yield>:
 8002380:	bf00      	nop
 8002382:	4770      	bx	lr

08002384 <sytem_clock_init>:
 8002384:	f7ff bf7e 	b.w	8002284 <SystemInit>

08002388 <NVIC_Init>:
 8002388:	b510      	push	{r4, lr}
 800238a:	bf00      	nop
 800238c:	bf00      	nop
 800238e:	bf00      	nop
 8002390:	78c2      	ldrb	r2, [r0, #3]
 8002392:	7803      	ldrb	r3, [r0, #0]
 8002394:	b312      	cbz	r2, 80023dc <NVIC_Init+0x54>
 8002396:	4a17      	ldr	r2, [pc, #92]	; (80023f4 <NVIC_Init+0x6c>)
 8002398:	68d1      	ldr	r1, [r2, #12]
 800239a:	7842      	ldrb	r2, [r0, #1]
 800239c:	43c9      	mvns	r1, r1
 800239e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80023a2:	f1c1 0404 	rsb	r4, r1, #4
 80023a6:	b2e4      	uxtb	r4, r4
 80023a8:	40a2      	lsls	r2, r4
 80023aa:	b2d4      	uxtb	r4, r2
 80023ac:	220f      	movs	r2, #15
 80023ae:	410a      	asrs	r2, r1
 80023b0:	7881      	ldrb	r1, [r0, #2]
 80023b2:	400a      	ands	r2, r1
 80023b4:	4322      	orrs	r2, r4
 80023b6:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80023ba:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80023be:	0112      	lsls	r2, r2, #4
 80023c0:	b2d2      	uxtb	r2, r2
 80023c2:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80023c6:	7803      	ldrb	r3, [r0, #0]
 80023c8:	2201      	movs	r2, #1
 80023ca:	0959      	lsrs	r1, r3, #5
 80023cc:	f003 031f 	and.w	r3, r3, #31
 80023d0:	fa02 f303 	lsl.w	r3, r2, r3
 80023d4:	4a08      	ldr	r2, [pc, #32]	; (80023f8 <NVIC_Init+0x70>)
 80023d6:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80023da:	bd10      	pop	{r4, pc}
 80023dc:	095a      	lsrs	r2, r3, #5
 80023de:	2101      	movs	r1, #1
 80023e0:	f003 031f 	and.w	r3, r3, #31
 80023e4:	4099      	lsls	r1, r3
 80023e6:	f102 0320 	add.w	r3, r2, #32
 80023ea:	4a03      	ldr	r2, [pc, #12]	; (80023f8 <NVIC_Init+0x70>)
 80023ec:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80023f0:	bd10      	pop	{r4, pc}
 80023f2:	bf00      	nop
 80023f4:	e000ed00 	.word	0xe000ed00
 80023f8:	e000e100 	.word	0xe000e100

080023fc <EXTI_ClearITPendingBit>:
 80023fc:	f020 011f 	bic.w	r1, r0, #31
 8002400:	2301      	movs	r3, #1
 8002402:	f000 001f 	and.w	r0, r0, #31
 8002406:	4a02      	ldr	r2, [pc, #8]	; (8002410 <EXTI_ClearITPendingBit+0x14>)
 8002408:	4083      	lsls	r3, r0
 800240a:	508b      	str	r3, [r1, r2]
 800240c:	4770      	bx	lr
 800240e:	bf00      	nop
 8002410:	40010414 	.word	0x40010414

08002414 <GPIO_Init>:
 8002414:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002416:	bf00      	nop
 8002418:	bf00      	nop
 800241a:	bf00      	nop
 800241c:	bf00      	nop
 800241e:	2300      	movs	r3, #0
 8002420:	680e      	ldr	r6, [r1, #0]
 8002422:	461c      	mov	r4, r3
 8002424:	2501      	movs	r5, #1
 8002426:	40a5      	lsls	r5, r4
 8002428:	ea05 0e06 	and.w	lr, r5, r6
 800242c:	45ae      	cmp	lr, r5
 800242e:	d12d      	bne.n	800248c <GPIO_Init+0x78>
 8002430:	790f      	ldrb	r7, [r1, #4]
 8002432:	1e7a      	subs	r2, r7, #1
 8002434:	2a01      	cmp	r2, #1
 8002436:	d817      	bhi.n	8002468 <GPIO_Init+0x54>
 8002438:	bf00      	nop
 800243a:	2203      	movs	r2, #3
 800243c:	6885      	ldr	r5, [r0, #8]
 800243e:	409a      	lsls	r2, r3
 8002440:	ea25 0202 	bic.w	r2, r5, r2
 8002444:	6082      	str	r2, [r0, #8]
 8002446:	794d      	ldrb	r5, [r1, #5]
 8002448:	6882      	ldr	r2, [r0, #8]
 800244a:	409d      	lsls	r5, r3
 800244c:	4315      	orrs	r5, r2
 800244e:	6085      	str	r5, [r0, #8]
 8002450:	bf00      	nop
 8002452:	8882      	ldrh	r2, [r0, #4]
 8002454:	b292      	uxth	r2, r2
 8002456:	ea22 020e 	bic.w	r2, r2, lr
 800245a:	8082      	strh	r2, [r0, #4]
 800245c:	798a      	ldrb	r2, [r1, #6]
 800245e:	8885      	ldrh	r5, [r0, #4]
 8002460:	40a2      	lsls	r2, r4
 8002462:	432a      	orrs	r2, r5
 8002464:	b292      	uxth	r2, r2
 8002466:	8082      	strh	r2, [r0, #4]
 8002468:	2203      	movs	r2, #3
 800246a:	6805      	ldr	r5, [r0, #0]
 800246c:	409a      	lsls	r2, r3
 800246e:	43d2      	mvns	r2, r2
 8002470:	4015      	ands	r5, r2
 8002472:	6005      	str	r5, [r0, #0]
 8002474:	6805      	ldr	r5, [r0, #0]
 8002476:	409f      	lsls	r7, r3
 8002478:	432f      	orrs	r7, r5
 800247a:	6007      	str	r7, [r0, #0]
 800247c:	68c7      	ldr	r7, [r0, #12]
 800247e:	4017      	ands	r7, r2
 8002480:	79ca      	ldrb	r2, [r1, #7]
 8002482:	fa02 f503 	lsl.w	r5, r2, r3
 8002486:	ea47 0205 	orr.w	r2, r7, r5
 800248a:	60c2      	str	r2, [r0, #12]
 800248c:	3401      	adds	r4, #1
 800248e:	2c10      	cmp	r4, #16
 8002490:	f103 0302 	add.w	r3, r3, #2
 8002494:	d1c6      	bne.n	8002424 <GPIO_Init+0x10>
 8002496:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002498 <GPIO_SetBits>:
 8002498:	bf00      	nop
 800249a:	bf00      	nop
 800249c:	6181      	str	r1, [r0, #24]
 800249e:	4770      	bx	lr

080024a0 <GPIO_PinAFConfig>:
 80024a0:	b510      	push	{r4, lr}
 80024a2:	bf00      	nop
 80024a4:	bf00      	nop
 80024a6:	bf00      	nop
 80024a8:	f001 0307 	and.w	r3, r1, #7
 80024ac:	08c9      	lsrs	r1, r1, #3
 80024ae:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80024b2:	009b      	lsls	r3, r3, #2
 80024b4:	6a04      	ldr	r4, [r0, #32]
 80024b6:	210f      	movs	r1, #15
 80024b8:	4099      	lsls	r1, r3
 80024ba:	ea24 0101 	bic.w	r1, r4, r1
 80024be:	6201      	str	r1, [r0, #32]
 80024c0:	6a01      	ldr	r1, [r0, #32]
 80024c2:	409a      	lsls	r2, r3
 80024c4:	430a      	orrs	r2, r1
 80024c6:	6202      	str	r2, [r0, #32]
 80024c8:	bd10      	pop	{r4, pc}

080024ca <Default_Handler>:
 80024ca:	4668      	mov	r0, sp
 80024cc:	f020 0107 	bic.w	r1, r0, #7
 80024d0:	468d      	mov	sp, r1
 80024d2:	b501      	push	{r0, lr}
 80024d4:	bf00      	nop
 80024d6:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80024da:	4685      	mov	sp, r0
 80024dc:	4770      	bx	lr

080024de <HardFault_Handler>:
 80024de:	bf00      	nop
 80024e0:	e7fd      	b.n	80024de <HardFault_Handler>
	...

080024e4 <_reset_init>:
 80024e4:	490e      	ldr	r1, [pc, #56]	; (8002520 <_reset_init+0x3c>)
 80024e6:	4b0f      	ldr	r3, [pc, #60]	; (8002524 <_reset_init+0x40>)
 80024e8:	1a5b      	subs	r3, r3, r1
 80024ea:	109b      	asrs	r3, r3, #2
 80024ec:	2200      	movs	r2, #0
 80024ee:	429a      	cmp	r2, r3
 80024f0:	d006      	beq.n	8002500 <_reset_init+0x1c>
 80024f2:	480d      	ldr	r0, [pc, #52]	; (8002528 <_reset_init+0x44>)
 80024f4:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 80024f8:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 80024fc:	3201      	adds	r2, #1
 80024fe:	e7f6      	b.n	80024ee <_reset_init+0xa>
 8002500:	4a0a      	ldr	r2, [pc, #40]	; (800252c <_reset_init+0x48>)
 8002502:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002506:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800250a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800250e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002512:	6853      	ldr	r3, [r2, #4]
 8002514:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002518:	6053      	str	r3, [r2, #4]
 800251a:	f7ff bbb7 	b.w	8001c8c <main>
 800251e:	bf00      	nop
 8002520:	20000000 	.word	0x20000000
 8002524:	20000030 	.word	0x20000030
 8002528:	08002660 	.word	0x08002660
 800252c:	e000ed00 	.word	0xe000ed00

08002530 <scheduler>:
 8002530:	b570      	push	{r4, r5, r6, lr}
 8002532:	2200      	movs	r2, #0
 8002534:	4611      	mov	r1, r2
 8002536:	4b15      	ldr	r3, [pc, #84]	; (800258c <scheduler+0x5c>)
 8002538:	200c      	movs	r0, #12
 800253a:	fb00 f401 	mul.w	r4, r0, r1
 800253e:	191e      	adds	r6, r3, r4
 8002540:	6875      	ldr	r5, [r6, #4]
 8002542:	f015 0f02 	tst.w	r5, #2
 8002546:	461d      	mov	r5, r3
 8002548:	d10a      	bne.n	8002560 <scheduler+0x30>
 800254a:	6876      	ldr	r6, [r6, #4]
 800254c:	07f6      	lsls	r6, r6, #31
 800254e:	d507      	bpl.n	8002560 <scheduler+0x30>
 8002550:	4350      	muls	r0, r2
 8002552:	5b1c      	ldrh	r4, [r3, r4]
 8002554:	5a18      	ldrh	r0, [r3, r0]
 8002556:	b2a4      	uxth	r4, r4
 8002558:	b280      	uxth	r0, r0
 800255a:	4284      	cmp	r4, r0
 800255c:	bf38      	it	cc
 800255e:	460a      	movcc	r2, r1
 8002560:	200c      	movs	r0, #12
 8002562:	4348      	muls	r0, r1
 8002564:	5a1c      	ldrh	r4, [r3, r0]
 8002566:	b2a4      	uxth	r4, r4
 8002568:	b11c      	cbz	r4, 8002572 <scheduler+0x42>
 800256a:	5a1c      	ldrh	r4, [r3, r0]
 800256c:	3c01      	subs	r4, #1
 800256e:	b2a4      	uxth	r4, r4
 8002570:	521c      	strh	r4, [r3, r0]
 8002572:	3101      	adds	r1, #1
 8002574:	2906      	cmp	r1, #6
 8002576:	d1de      	bne.n	8002536 <scheduler+0x6>
 8002578:	230c      	movs	r3, #12
 800257a:	4353      	muls	r3, r2
 800257c:	18e9      	adds	r1, r5, r3
 800257e:	8849      	ldrh	r1, [r1, #2]
 8002580:	b289      	uxth	r1, r1
 8002582:	52e9      	strh	r1, [r5, r3]
 8002584:	4b02      	ldr	r3, [pc, #8]	; (8002590 <scheduler+0x60>)
 8002586:	601a      	str	r2, [r3, #0]
 8002588:	bd70      	pop	{r4, r5, r6, pc}
 800258a:	bf00      	nop
 800258c:	20000530 	.word	0x20000530
 8002590:	20000578 	.word	0x20000578

08002594 <SysTick_Handler>:
 8002594:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002598:	f3ef 8308 	mrs	r3, MSP
 800259c:	4c0d      	ldr	r4, [pc, #52]	; (80025d4 <SysTick_Handler+0x40>)
 800259e:	4d0e      	ldr	r5, [pc, #56]	; (80025d8 <SysTick_Handler+0x44>)
 80025a0:	6822      	ldr	r2, [r4, #0]
 80025a2:	3201      	adds	r2, #1
 80025a4:	bf1d      	ittte	ne
 80025a6:	6822      	ldrne	r2, [r4, #0]
 80025a8:	210c      	movne	r1, #12
 80025aa:	fb01 5202 	mlane	r2, r1, r2, r5
 80025ae:	2300      	moveq	r3, #0
 80025b0:	bf14      	ite	ne
 80025b2:	6093      	strne	r3, [r2, #8]
 80025b4:	6023      	streq	r3, [r4, #0]
 80025b6:	f7ff ffbb 	bl	8002530 <scheduler>
 80025ba:	6822      	ldr	r2, [r4, #0]
 80025bc:	230c      	movs	r3, #12
 80025be:	fb03 5302 	mla	r3, r3, r2, r5
 80025c2:	689a      	ldr	r2, [r3, #8]
 80025c4:	f06f 0306 	mvn.w	r3, #6
 80025c8:	469e      	mov	lr, r3
 80025ca:	f382 8808 	msr	MSP, r2
 80025ce:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80025d2:	4770      	bx	lr
 80025d4:	20000578 	.word	0x20000578
 80025d8:	20000530 	.word	0x20000530

080025dc <_init>:
 80025dc:	e1a0c00d 	mov	ip, sp
 80025e0:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80025e4:	e24cb004 	sub	fp, ip, #4
 80025e8:	e24bd028 	sub	sp, fp, #40	; 0x28
 80025ec:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80025f0:	e12fff1e 	bx	lr

080025f4 <_fini>:
 80025f4:	e1a0c00d 	mov	ip, sp
 80025f8:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80025fc:	e24cb004 	sub	fp, ip, #4
 8002600:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002604:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002608:	e12fff1e 	bx	lr
 800260c:	61646f6b 	.word	0x61646f6b
 8002610:	6920616d 	.word	0x6920616d
 8002614:	2074696e 	.word	0x2074696e
 8002618:	25206925 	.word	0x25206925
 800261c:	203a2069 	.word	0x203a2069
 8002620:	4f5b2000 	.word	0x4f5b2000
 8002624:	000a5d4b 	.word	0x000a5d4b
 8002628:	41465b20 	.word	0x41465b20
 800262c:	44454c49 	.word	0x44454c49
 8002630:	000a0a5d 	.word	0x000a0a5d
 8002634:	74737973 	.word	0x74737973
 8002638:	74206d65 	.word	0x74206d65
 800263c:	20656d69 	.word	0x20656d69
 8002640:	5b207525 	.word	0x5b207525
 8002644:	0a5d736d 	.word	0x0a5d736d
 8002648:	20692500 	.word	0x20692500
 800264c:	0a206925 	.word	0x0a206925
 8002650:	00          	.byte	0x00
 8002651:	69          	.byte	0x69
 8002652:	6c64      	.short	0x6c64
 8002654:	75252065 	.word	0x75252065
 8002658:	0000000a 	.word	0x0000000a

0800265c <__EH_FRAME_BEGIN__>:
 800265c:	00000000                                ....
