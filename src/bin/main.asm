
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f8d2 	bl	8001334 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f953 	bl	8001448 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 fa26 	bl	8000600 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fcf3 	bl	8000bac <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001d6:	f000 fcd9 	bl	8000b8c <_ZN6CMotor10motor_initEv>
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
 8000202:	f001 fa47 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f001 fa42 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f001 fa3d 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002890 	.word	0x08002890
 8000228:	080028a5 	.word	0x080028a5
 800022c:	080028ac 	.word	0x080028ac

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	b510      	push	{r4, lr}
 8000232:	2108      	movs	r1, #8
 8000234:	4604      	mov	r4, r0
 8000236:	f001 f8dd 	bl	80013f4 <_ZN5CGPIO8gpio_offEm>
 800023a:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000242:	f000 bc07 	b.w	8000a54 <_ZN6CMotor11motor_sleepEv>

08000246 <_ZN7CKodama6wakeupEv>:
 8000246:	b510      	push	{r4, lr}
 8000248:	2108      	movs	r1, #8
 800024a:	4604      	mov	r4, r0
 800024c:	34c4      	adds	r4, #196	; 0xc4
 800024e:	f001 f8c3 	bl	80013d8 <_ZN5CGPIO7gpio_onEm>
 8000252:	2100      	movs	r1, #0
 8000254:	4620      	mov	r0, r4
 8000256:	460a      	mov	r2, r1
 8000258:	f000 fc92 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 800025c:	4620      	mov	r0, r4
 800025e:	2101      	movs	r1, #1
 8000260:	2200      	movs	r2, #0
 8000262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000266:	f000 bc8b 	b.w	8000b80 <_ZN6CMotor9set_motorEml>

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
 8000282:	f000 ff31 	bl	80010e8 <_ZN4CIMU8imu_readEv>
 8000286:	4638      	mov	r0, r7
 8000288:	f001 f852 	bl	8001330 <_ZN4CIMU14get_imu_resultEv>
 800028c:	6883      	ldr	r3, [r0, #8]
 800028e:	2500      	movs	r5, #0
 8000290:	4498      	add	r8, r3
 8000292:	4821      	ldr	r0, [pc, #132]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 8000294:	210a      	movs	r1, #10
 8000296:	f000 fa0b 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 800029a:	f109 06c4 	add.w	r6, r9, #196	; 0xc4
 800029e:	f1ba 0f00 	cmp.w	sl, #0
 80002a2:	d111      	bne.n	80002c8 <_ZN7CKodama12rotate_robotEllPFlvE+0x58>
 80002a4:	4638      	mov	r0, r7
 80002a6:	f000 ff1f 	bl	80010e8 <_ZN4CIMU8imu_readEv>
 80002aa:	4638      	mov	r0, r7
 80002ac:	f001 f840 	bl	8001330 <_ZN4CIMU14get_imu_resultEv>
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
 80002d4:	f000 fc54 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 80002d8:	4630      	mov	r0, r6
 80002da:	2101      	movs	r1, #1
 80002dc:	2200      	movs	r2, #0
 80002de:	f000 fc4f 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 80002e2:	480d      	ldr	r0, [pc, #52]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 80002e4:	2114      	movs	r1, #20
 80002e6:	b003      	add	sp, #12
 80002e8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80002ec:	f000 b9e0 	b.w	80006b0 <_ZN6CTimer8delay_msEm>
 80002f0:	fb03 f205 	mul.w	r2, r3, r5
 80002f4:	4630      	mov	r0, r6
 80002f6:	2100      	movs	r1, #0
 80002f8:	9301      	str	r3, [sp, #4]
 80002fa:	f000 fc41 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 80002fe:	9b01      	ldr	r3, [sp, #4]
 8000300:	426a      	negs	r2, r5
 8000302:	4630      	mov	r0, r6
 8000304:	2101      	movs	r1, #1
 8000306:	435a      	muls	r2, r3
 8000308:	f000 fc3a 	bl	8000b80 <_ZN6CMotor9set_motorEml>
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
 8000362:	eddf 7a3b 	vldr	s15, [pc, #236]	; 8000450 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 8000366:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 800036a:	ee07 3a10 	vmov	s14, r3
 800036e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000372:	eeb0 8a67 	vmov.f32	s16, s15
 8000376:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800037a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800037e:	d563      	bpl.n	8000448 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 8000380:	f104 0608 	add.w	r6, r4, #8
 8000384:	eddf 8a33 	vldr	s17, [pc, #204]	; 8000454 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8000388:	f104 0918 	add.w	r9, r4, #24
 800038c:	4637      	mov	r7, r6
 800038e:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 8000392:	4831      	ldr	r0, [pc, #196]	; (8000458 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 8000394:	425b      	negs	r3, r3
 8000396:	ee00 3a10 	vmov	s0, r3
 800039a:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 800039e:	eca7 0a01 	vstmia	r7!, {s0}
 80003a2:	f000 f8ba 	bl	800051a <_ZN5CMath3absEf>
 80003a6:	eef4 8ac0 	vcmpe.f32	s17, s0
 80003aa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003ae:	d506      	bpl.n	80003be <_ZN13CLinePosition7processEP10sRGBResult+0x8e>
 80003b0:	4829      	ldr	r0, [pc, #164]	; (8000458 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 80003b2:	ed17 0a01 	vldr	s0, [r7, #-4]
 80003b6:	f000 f8b0 	bl	800051a <_ZN5CMath3absEf>
 80003ba:	eef0 8a40 	vmov.f32	s17, s0
 80003be:	454f      	cmp	r7, r9
 80003c0:	d1e5      	bne.n	800038e <_ZN13CLinePosition7processEP10sRGBResult+0x5e>
 80003c2:	edd6 7a00 	vldr	s15, [r6]
 80003c6:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 80003ca:	ece6 7a01 	vstmia	r6!, {s15}
 80003ce:	454e      	cmp	r6, r9
 80003d0:	d1f7      	bne.n	80003c2 <_ZN13CLinePosition7processEP10sRGBResult+0x92>
 80003d2:	2301      	movs	r3, #1
 80003d4:	7023      	strb	r3, [r4, #0]
 80003d6:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 80003da:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8000450 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 80003de:	ee07 3a10 	vmov	s14, r3
 80003e2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80003e6:	eeb4 7ac8 	vcmpe.f32	s14, s16
 80003ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003ee:	d501      	bpl.n	80003f4 <_ZN13CLinePosition7processEP10sRGBResult+0xc4>
 80003f0:	4b1a      	ldr	r3, [pc, #104]	; (800045c <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 80003f2:	e028      	b.n	8000446 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 80003f4:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 80003f8:	ee07 3a10 	vmov	s14, r3
 80003fc:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000400:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000404:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000408:	d502      	bpl.n	8000410 <_ZN13CLinePosition7processEP10sRGBResult+0xe0>
 800040a:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 800040e:	e01a      	b.n	8000446 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8000410:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 8000414:	ee07 3a10 	vmov	s14, r3
 8000418:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800041c:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000420:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000424:	d502      	bpl.n	800042c <_ZN13CLinePosition7processEP10sRGBResult+0xfc>
 8000426:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 800042a:	e00c      	b.n	8000446 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 800042c:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 8000430:	ee07 3a10 	vmov	s14, r3
 8000434:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000438:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800043c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000440:	d502      	bpl.n	8000448 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 8000442:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8000446:	6063      	str	r3, [r4, #4]
 8000448:	ecbd 8b02 	vpop	{d8}
 800044c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8000450:	c2a00000 	.word	0xc2a00000
 8000454:	38d1b717 	.word	0x38d1b717
 8000458:	20000108 	.word	0x20000108
 800045c:	bf800000 	.word	0xbf800000

08000460 <_ZN13CLinePosition7on_lineEv>:
 8000460:	7800      	ldrb	r0, [r0, #0]
 8000462:	4770      	bx	lr

08000464 <_ZN13CLinePosition17get_line_positionEv>:
 8000464:	ed90 0a01 	vldr	s0, [r0, #4]
 8000468:	4770      	bx	lr

0800046a <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>:
 800046a:	6883      	ldr	r3, [r0, #8]
 800046c:	600b      	str	r3, [r1, #0]
 800046e:	68c3      	ldr	r3, [r0, #12]
 8000470:	604b      	str	r3, [r1, #4]
 8000472:	6903      	ldr	r3, [r0, #16]
 8000474:	608b      	str	r3, [r1, #8]
 8000476:	6943      	ldr	r3, [r0, #20]
 8000478:	60cb      	str	r3, [r1, #12]
 800047a:	4770      	bx	lr

0800047c <_ZN4CPID4initEffff>:
 800047c:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
 8000480:	ee70 0a20 	vadd.f32	s1, s0, s1
 8000484:	ee91 0a67 	vfnma.f32	s0, s2, s15
 8000488:	2300      	movs	r3, #0
 800048a:	6003      	str	r3, [r0, #0]
 800048c:	ee70 0a81 	vadd.f32	s1, s1, s2
 8000490:	6043      	str	r3, [r0, #4]
 8000492:	6083      	str	r3, [r0, #8]
 8000494:	edc0 0a03 	vstr	s1, [r0, #12]
 8000498:	ed80 0a04 	vstr	s0, [r0, #16]
 800049c:	ed80 1a05 	vstr	s2, [r0, #20]
 80004a0:	6183      	str	r3, [r0, #24]
 80004a2:	edc0 1a07 	vstr	s3, [r0, #28]
 80004a6:	4770      	bx	lr

080004a8 <_ZN4CPIDC1Effff>:
 80004a8:	b510      	push	{r4, lr}
 80004aa:	4604      	mov	r4, r0
 80004ac:	f7ff ffe6 	bl	800047c <_ZN4CPID4initEffff>
 80004b0:	4620      	mov	r0, r4
 80004b2:	bd10      	pop	{r4, pc}

080004b4 <_ZN4CPID7processEf>:
 80004b4:	edd0 7a00 	vldr	s15, [r0]
 80004b8:	edd0 6a04 	vldr	s13, [r0, #16]
 80004bc:	ed90 7a01 	vldr	s14, [r0, #4]
 80004c0:	edc0 7a01 	vstr	s15, [r0, #4]
 80004c4:	ee67 7aa6 	vmul.f32	s15, s15, s13
 80004c8:	edd0 6a03 	vldr	s13, [r0, #12]
 80004cc:	ed80 7a02 	vstr	s14, [r0, #8]
 80004d0:	eee6 7a80 	vfma.f32	s15, s13, s0
 80004d4:	edd0 6a05 	vldr	s13, [r0, #20]
 80004d8:	ed80 0a00 	vstr	s0, [r0]
 80004dc:	eee6 7a87 	vfma.f32	s15, s13, s14
 80004e0:	ed90 7a06 	vldr	s14, [r0, #24]
 80004e4:	ee77 7a87 	vadd.f32	s15, s15, s14
 80004e8:	ed90 7a07 	vldr	s14, [r0, #28]
 80004ec:	edc0 7a06 	vstr	s15, [r0, #24]
 80004f0:	eef4 7ac7 	vcmpe.f32	s15, s14
 80004f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80004f8:	bfc8      	it	gt
 80004fa:	ed80 7a06 	vstrgt	s14, [r0, #24]
 80004fe:	edd0 7a06 	vldr	s15, [r0, #24]
 8000502:	eeb1 7a47 	vneg.f32	s14, s14
 8000506:	eef4 7ac7 	vcmpe.f32	s15, s14
 800050a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800050e:	bf48      	it	mi
 8000510:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000514:	ed90 0a06 	vldr	s0, [r0, #24]
 8000518:	4770      	bx	lr

0800051a <_ZN5CMath3absEf>:
 800051a:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 800051e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000522:	bf48      	it	mi
 8000524:	eeb1 0a40 	vnegmi.f32	s0, s0
 8000528:	4770      	bx	lr
	...

0800052c <_ZN5CMath4randEv>:
 800052c:	6803      	ldr	r3, [r0, #0]
 800052e:	490b      	ldr	r1, [pc, #44]	; (800055c <_ZN5CMath4randEv+0x30>)
 8000530:	f243 0239 	movw	r2, #12345	; 0x3039
 8000534:	fb01 2203 	mla	r2, r1, r3, r2
 8000538:	6841      	ldr	r1, [r0, #4]
 800053a:	6002      	str	r2, [r0, #0]
 800053c:	f341 0300 	sbfx	r3, r1, #0, #1
 8000540:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 8000544:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 8000548:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 800054c:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 8000550:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 8000554:	6043      	str	r3, [r0, #4]
 8000556:	ea83 0002 	eor.w	r0, r3, r2
 800055a:	4770      	bx	lr
 800055c:	41c64e6d 	.word	0x41c64e6d

08000560 <_ZN5CMath3rndEv>:
 8000560:	b508      	push	{r3, lr}
 8000562:	f7ff ffe3 	bl	800052c <_ZN5CMath4randEv>
 8000566:	4b09      	ldr	r3, [pc, #36]	; (800058c <_ZN5CMath3rndEv+0x2c>)
 8000568:	fbb0 f2f3 	udiv	r2, r0, r3
 800056c:	fb02 0013 	mls	r0, r2, r3, r0
 8000570:	ee07 0a90 	vmov	s15, r0
 8000574:	ed9f 0a06 	vldr	s0, [pc, #24]	; 8000590 <_ZN5CMath3rndEv+0x30>
 8000578:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800057c:	eec7 7a80 	vdiv.f32	s15, s15, s0
 8000580:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8000584:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8000588:	bd08      	pop	{r3, pc}
 800058a:	bf00      	nop
 800058c:	001e8480 	.word	0x001e8480
 8000590:	49742400 	.word	0x49742400

08000594 <TIM3_IRQHandler>:
 8000594:	2300      	movs	r3, #0
 8000596:	4a15      	ldr	r2, [pc, #84]	; (80005ec <TIM3_IRQHandler+0x58>)
 8000598:	5cd1      	ldrb	r1, [r2, r3]
 800059a:	b111      	cbz	r1, 80005a2 <TIM3_IRQHandler+0xe>
 800059c:	5cd1      	ldrb	r1, [r2, r3]
 800059e:	29ff      	cmp	r1, #255	; 0xff
 80005a0:	d11e      	bne.n	80005e0 <TIM3_IRQHandler+0x4c>
 80005a2:	4913      	ldr	r1, [pc, #76]	; (80005f0 <TIM3_IRQHandler+0x5c>)
 80005a4:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 80005a8:	b128      	cbz	r0, 80005b6 <TIM3_IRQHandler+0x22>
 80005aa:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80005ae:	3a01      	subs	r2, #1
 80005b0:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80005b4:	e009      	b.n	80005ca <TIM3_IRQHandler+0x36>
 80005b6:	480f      	ldr	r0, [pc, #60]	; (80005f4 <TIM3_IRQHandler+0x60>)
 80005b8:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80005bc:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80005c0:	5cd2      	ldrb	r2, [r2, r3]
 80005c2:	b912      	cbnz	r2, 80005ca <TIM3_IRQHandler+0x36>
 80005c4:	4a09      	ldr	r2, [pc, #36]	; (80005ec <TIM3_IRQHandler+0x58>)
 80005c6:	2101      	movs	r1, #1
 80005c8:	54d1      	strb	r1, [r2, r3]
 80005ca:	3301      	adds	r3, #1
 80005cc:	2b08      	cmp	r3, #8
 80005ce:	d1e2      	bne.n	8000596 <TIM3_IRQHandler+0x2>
 80005d0:	4a09      	ldr	r2, [pc, #36]	; (80005f8 <TIM3_IRQHandler+0x64>)
 80005d2:	480a      	ldr	r0, [pc, #40]	; (80005fc <TIM3_IRQHandler+0x68>)
 80005d4:	6813      	ldr	r3, [r2, #0]
 80005d6:	2101      	movs	r1, #1
 80005d8:	3301      	adds	r3, #1
 80005da:	6013      	str	r3, [r2, #0]
 80005dc:	f001 be98 	b.w	8002310 <TIM_ClearITPendingBit>
 80005e0:	5cd1      	ldrb	r1, [r2, r3]
 80005e2:	3101      	adds	r1, #1
 80005e4:	b2c9      	uxtb	r1, r1
 80005e6:	54d1      	strb	r1, [r2, r3]
 80005e8:	e7db      	b.n	80005a2 <TIM3_IRQHandler+0xe>
 80005ea:	bf00      	nop
 80005ec:	20000130 	.word	0x20000130
 80005f0:	20000110 	.word	0x20000110
 80005f4:	20000140 	.word	0x20000140
 80005f8:	20000138 	.word	0x20000138
 80005fc:	40000400 	.word	0x40000400

08000600 <_ZN6CTimer10timer_initEv>:
 8000600:	b530      	push	{r4, r5, lr}
 8000602:	4a1f      	ldr	r2, [pc, #124]	; (8000680 <_ZN6CTimer10timer_initEv+0x80>)
 8000604:	2300      	movs	r3, #0
 8000606:	b085      	sub	sp, #20
 8000608:	6013      	str	r3, [r2, #0]
 800060a:	491e      	ldr	r1, [pc, #120]	; (8000684 <_ZN6CTimer10timer_initEv+0x84>)
 800060c:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000610:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000614:	491c      	ldr	r1, [pc, #112]	; (8000688 <_ZN6CTimer10timer_initEv+0x88>)
 8000616:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800061a:	4a1c      	ldr	r2, [pc, #112]	; (800068c <_ZN6CTimer10timer_initEv+0x8c>)
 800061c:	2400      	movs	r4, #0
 800061e:	54d4      	strb	r4, [r2, r3]
 8000620:	3301      	adds	r3, #1
 8000622:	2b08      	cmp	r3, #8
 8000624:	d1f1      	bne.n	800060a <_ZN6CTimer10timer_initEv+0xa>
 8000626:	4d1a      	ldr	r5, [pc, #104]	; (8000690 <_ZN6CTimer10timer_initEv+0x90>)
 8000628:	2002      	movs	r0, #2
 800062a:	2101      	movs	r1, #1
 800062c:	f001 fe04 	bl	8002238 <RCC_APB1PeriphClockCmd>
 8000630:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000634:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000638:	4628      	mov	r0, r5
 800063a:	2331      	movs	r3, #49	; 0x31
 800063c:	a901      	add	r1, sp, #4
 800063e:	9302      	str	r3, [sp, #8]
 8000640:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000644:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000648:	f8ad 400e 	strh.w	r4, [sp, #14]
 800064c:	f001 fe02 	bl	8002254 <TIM_TimeBaseInit>
 8000650:	4628      	mov	r0, r5
 8000652:	2101      	movs	r1, #1
 8000654:	f001 fe4e 	bl	80022f4 <TIM_Cmd>
 8000658:	68eb      	ldr	r3, [r5, #12]
 800065a:	f043 0301 	orr.w	r3, r3, #1
 800065e:	60eb      	str	r3, [r5, #12]
 8000660:	231d      	movs	r3, #29
 8000662:	f88d 3000 	strb.w	r3, [sp]
 8000666:	4668      	mov	r0, sp
 8000668:	2301      	movs	r3, #1
 800066a:	f88d 4001 	strb.w	r4, [sp, #1]
 800066e:	f88d 3002 	strb.w	r3, [sp, #2]
 8000672:	f88d 3003 	strb.w	r3, [sp, #3]
 8000676:	f001 ff85 	bl	8002584 <NVIC_Init>
 800067a:	4620      	mov	r0, r4
 800067c:	b005      	add	sp, #20
 800067e:	bd30      	pop	{r4, r5, pc}
 8000680:	20000138 	.word	0x20000138
 8000684:	20000110 	.word	0x20000110
 8000688:	20000140 	.word	0x20000140
 800068c:	20000130 	.word	0x20000130
 8000690:	40000400 	.word	0x40000400

08000694 <_ZN6CTimer8get_timeEv>:
 8000694:	b082      	sub	sp, #8
 8000696:	b672      	cpsid	i
 8000698:	4b04      	ldr	r3, [pc, #16]	; (80006ac <_ZN6CTimer8get_timeEv+0x18>)
 800069a:	681b      	ldr	r3, [r3, #0]
 800069c:	9301      	str	r3, [sp, #4]
 800069e:	b662      	cpsie	i
 80006a0:	230a      	movs	r3, #10
 80006a2:	9801      	ldr	r0, [sp, #4]
 80006a4:	fbb0 f0f3 	udiv	r0, r0, r3
 80006a8:	b002      	add	sp, #8
 80006aa:	4770      	bx	lr
 80006ac:	20000138 	.word	0x20000138

080006b0 <_ZN6CTimer8delay_msEm>:
 80006b0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80006b2:	460c      	mov	r4, r1
 80006b4:	4605      	mov	r5, r0
 80006b6:	f7ff ffed 	bl	8000694 <_ZN6CTimer8get_timeEv>
 80006ba:	4420      	add	r0, r4
 80006bc:	9001      	str	r0, [sp, #4]
 80006be:	4628      	mov	r0, r5
 80006c0:	9c01      	ldr	r4, [sp, #4]
 80006c2:	f7ff ffe7 	bl	8000694 <_ZN6CTimer8get_timeEv>
 80006c6:	4284      	cmp	r4, r0
 80006c8:	d902      	bls.n	80006d0 <_ZN6CTimer8delay_msEm+0x20>
 80006ca:	f001 ff57 	bl	800257c <core_yield>
 80006ce:	e7f6      	b.n	80006be <_ZN6CTimer8delay_msEm+0xe>
 80006d0:	b003      	add	sp, #12
 80006d2:	bd30      	pop	{r4, r5, pc}

080006d4 <_ZN6CTimer22event_timer_set_periodEhm>:
 80006d4:	b672      	cpsid	i
 80006d6:	230a      	movs	r3, #10
 80006d8:	435a      	muls	r2, r3
 80006da:	4b05      	ldr	r3, [pc, #20]	; (80006f0 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 80006dc:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80006e0:	4b04      	ldr	r3, [pc, #16]	; (80006f4 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 80006e2:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80006e6:	4b04      	ldr	r3, [pc, #16]	; (80006f8 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 80006e8:	2200      	movs	r2, #0
 80006ea:	545a      	strb	r2, [r3, r1]
 80006ec:	b662      	cpsie	i
 80006ee:	4770      	bx	lr
 80006f0:	20000110 	.word	0x20000110
 80006f4:	20000140 	.word	0x20000140
 80006f8:	20000130 	.word	0x20000130

080006fc <_ZN6CTimer17event_timer_checkEh>:
 80006fc:	4b05      	ldr	r3, [pc, #20]	; (8000714 <_ZN6CTimer17event_timer_checkEh+0x18>)
 80006fe:	5c5a      	ldrb	r2, [r3, r1]
 8000700:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000704:	b12a      	cbz	r2, 8000712 <_ZN6CTimer17event_timer_checkEh+0x16>
 8000706:	b672      	cpsid	i
 8000708:	5c58      	ldrb	r0, [r3, r1]
 800070a:	2200      	movs	r2, #0
 800070c:	b2c0      	uxtb	r0, r0
 800070e:	545a      	strb	r2, [r3, r1]
 8000710:	b662      	cpsie	i
 8000712:	4770      	bx	lr
 8000714:	20000130 	.word	0x20000130

08000718 <_ZN4CRGB8rgb_readEh>:
 8000718:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800071c:	4604      	mov	r4, r0
 800071e:	4688      	mov	r8, r1
 8000720:	f000 fae0 	bl	8000ce4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000724:	4620      	mov	r0, r4
 8000726:	2172      	movs	r1, #114	; 0x72
 8000728:	f000 fb06 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800072c:	21b4      	movs	r1, #180	; 0xb4
 800072e:	4620      	mov	r0, r4
 8000730:	f000 fb02 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000734:	4620      	mov	r0, r4
 8000736:	f000 fad5 	bl	8000ce4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800073a:	4620      	mov	r0, r4
 800073c:	2173      	movs	r1, #115	; 0x73
 800073e:	f000 fafb 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000742:	4620      	mov	r0, r4
 8000744:	2101      	movs	r1, #1
 8000746:	4622      	mov	r2, r4
 8000748:	f000 fb37 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800074c:	7823      	ldrb	r3, [r4, #0]
 800074e:	83a3      	strh	r3, [r4, #28]
 8000750:	7863      	ldrb	r3, [r4, #1]
 8000752:	83e3      	strh	r3, [r4, #30]
 8000754:	78a3      	ldrb	r3, [r4, #2]
 8000756:	8423      	strh	r3, [r4, #32]
 8000758:	78e3      	ldrb	r3, [r4, #3]
 800075a:	8463      	strh	r3, [r4, #34]	; 0x22
 800075c:	2101      	movs	r1, #1
 800075e:	4620      	mov	r0, r4
 8000760:	4622      	mov	r2, r4
 8000762:	f104 091a 	add.w	r9, r4, #26
 8000766:	1e65      	subs	r5, r4, #1
 8000768:	f000 fb27 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800076c:	1ca6      	adds	r6, r4, #2
 800076e:	f104 0722 	add.w	r7, r4, #34	; 0x22
 8000772:	4629      	mov	r1, r5
 8000774:	464b      	mov	r3, r9
 8000776:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 800077a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 800077e:	42bb      	cmp	r3, r7
 8000780:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000784:	801a      	strh	r2, [r3, #0]
 8000786:	d1f6      	bne.n	8000776 <_ZN4CRGB8rgb_readEh+0x5e>
 8000788:	4620      	mov	r0, r4
 800078a:	2101      	movs	r1, #1
 800078c:	4622      	mov	r2, r4
 800078e:	f000 fb14 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000792:	7823      	ldrb	r3, [r4, #0]
 8000794:	80a3      	strh	r3, [r4, #4]
 8000796:	7863      	ldrb	r3, [r4, #1]
 8000798:	80e3      	strh	r3, [r4, #6]
 800079a:	78a3      	ldrb	r3, [r4, #2]
 800079c:	8123      	strh	r3, [r4, #8]
 800079e:	78e3      	ldrb	r3, [r4, #3]
 80007a0:	8163      	strh	r3, [r4, #10]
 80007a2:	2101      	movs	r1, #1
 80007a4:	4620      	mov	r0, r4
 80007a6:	4622      	mov	r2, r4
 80007a8:	f000 fb07 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007ac:	f104 0a0a 	add.w	sl, r4, #10
 80007b0:	4633      	mov	r3, r6
 80007b2:	4629      	mov	r1, r5
 80007b4:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80007b8:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80007bc:	4553      	cmp	r3, sl
 80007be:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 80007c2:	801a      	strh	r2, [r3, #0]
 80007c4:	d1f6      	bne.n	80007b4 <_ZN4CRGB8rgb_readEh+0x9c>
 80007c6:	4620      	mov	r0, r4
 80007c8:	2101      	movs	r1, #1
 80007ca:	4622      	mov	r2, r4
 80007cc:	f000 faf5 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007d0:	7823      	ldrb	r3, [r4, #0]
 80007d2:	81a3      	strh	r3, [r4, #12]
 80007d4:	7863      	ldrb	r3, [r4, #1]
 80007d6:	81e3      	strh	r3, [r4, #14]
 80007d8:	78a3      	ldrb	r3, [r4, #2]
 80007da:	8223      	strh	r3, [r4, #16]
 80007dc:	78e3      	ldrb	r3, [r4, #3]
 80007de:	8263      	strh	r3, [r4, #18]
 80007e0:	4622      	mov	r2, r4
 80007e2:	4620      	mov	r0, r4
 80007e4:	2101      	movs	r1, #1
 80007e6:	f000 fae8 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007ea:	f104 0612 	add.w	r6, r4, #18
 80007ee:	462a      	mov	r2, r5
 80007f0:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 80007f4:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80007f8:	45b2      	cmp	sl, r6
 80007fa:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80007fe:	f8aa 3000 	strh.w	r3, [sl]
 8000802:	d1f5      	bne.n	80007f0 <_ZN4CRGB8rgb_readEh+0xd8>
 8000804:	4620      	mov	r0, r4
 8000806:	2101      	movs	r1, #1
 8000808:	4622      	mov	r2, r4
 800080a:	f000 fad6 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800080e:	7823      	ldrb	r3, [r4, #0]
 8000810:	82a3      	strh	r3, [r4, #20]
 8000812:	7863      	ldrb	r3, [r4, #1]
 8000814:	82e3      	strh	r3, [r4, #22]
 8000816:	78a3      	ldrb	r3, [r4, #2]
 8000818:	8323      	strh	r3, [r4, #24]
 800081a:	78e3      	ldrb	r3, [r4, #3]
 800081c:	8363      	strh	r3, [r4, #26]
 800081e:	4622      	mov	r2, r4
 8000820:	4620      	mov	r0, r4
 8000822:	2101      	movs	r1, #1
 8000824:	f000 fac9 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000828:	462a      	mov	r2, r5
 800082a:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 800082e:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000832:	454e      	cmp	r6, r9
 8000834:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000838:	8033      	strh	r3, [r6, #0]
 800083a:	d1f6      	bne.n	800082a <_ZN4CRGB8rgb_readEh+0x112>
 800083c:	4620      	mov	r0, r4
 800083e:	2101      	movs	r1, #1
 8000840:	4622      	mov	r2, r4
 8000842:	f000 faba 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000846:	7823      	ldrb	r3, [r4, #0]
 8000848:	84a3      	strh	r3, [r4, #36]	; 0x24
 800084a:	7863      	ldrb	r3, [r4, #1]
 800084c:	84e3      	strh	r3, [r4, #38]	; 0x26
 800084e:	78a3      	ldrb	r3, [r4, #2]
 8000850:	8523      	strh	r3, [r4, #40]	; 0x28
 8000852:	78e3      	ldrb	r3, [r4, #3]
 8000854:	8563      	strh	r3, [r4, #42]	; 0x2a
 8000856:	4622      	mov	r2, r4
 8000858:	4620      	mov	r0, r4
 800085a:	2100      	movs	r1, #0
 800085c:	f000 faad 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000860:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 8000864:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000868:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 800086c:	4297      	cmp	r7, r2
 800086e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000872:	803b      	strh	r3, [r7, #0]
 8000874:	d1f6      	bne.n	8000864 <_ZN4CRGB8rgb_readEh+0x14c>
 8000876:	4620      	mov	r0, r4
 8000878:	f000 fa49 	bl	8000d0e <_ZN8CRGB_I2C11rgb_i2cStopEv>
 800087c:	f1b8 0f00 	cmp.w	r8, #0
 8000880:	d025      	beq.n	80008ce <_ZN4CRGB8rgb_readEh+0x1b6>
 8000882:	2300      	movs	r3, #0
 8000884:	88a1      	ldrh	r1, [r4, #4]
 8000886:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 800088a:	440a      	add	r2, r1
 800088c:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8000890:	89a1      	ldrh	r1, [r4, #12]
 8000892:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000896:	440a      	add	r2, r1
 8000898:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 800089c:	8aa1      	ldrh	r1, [r4, #20]
 800089e:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 80008a2:	440a      	add	r2, r1
 80008a4:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 80008a8:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 80008aa:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 80008ae:	440a      	add	r2, r1
 80008b0:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 80008b4:	8ba1      	ldrh	r1, [r4, #28]
 80008b6:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 80008ba:	3301      	adds	r3, #1
 80008bc:	440a      	add	r2, r1
 80008be:	2b04      	cmp	r3, #4
 80008c0:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 80008c4:	f104 0402 	add.w	r4, r4, #2
 80008c8:	d1dc      	bne.n	8000884 <_ZN4CRGB8rgb_readEh+0x16c>
 80008ca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80008ce:	4641      	mov	r1, r8
 80008d0:	b672      	cpsid	i
 80008d2:	88a3      	ldrh	r3, [r4, #4]
 80008d4:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 80008d8:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 80008dc:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 80008e0:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 80008e4:	1a18      	subs	r0, r3, r0
 80008e6:	89a3      	ldrh	r3, [r4, #12]
 80008e8:	1a9a      	subs	r2, r3, r2
 80008ea:	8aa3      	ldrh	r3, [r4, #20]
 80008ec:	1b5b      	subs	r3, r3, r5
 80008ee:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 80008f0:	1bad      	subs	r5, r5, r6
 80008f2:	84a5      	strh	r5, [r4, #36]	; 0x24
 80008f4:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 80008f8:	8ba5      	ldrh	r5, [r4, #28]
 80008fa:	b280      	uxth	r0, r0
 80008fc:	b292      	uxth	r2, r2
 80008fe:	b29b      	uxth	r3, r3
 8000900:	1bad      	subs	r5, r5, r6
 8000902:	80a0      	strh	r0, [r4, #4]
 8000904:	81a2      	strh	r2, [r4, #12]
 8000906:	82a3      	strh	r3, [r4, #20]
 8000908:	83a5      	strh	r5, [r4, #28]
 800090a:	b662      	cpsie	i
 800090c:	b200      	sxth	r0, r0
 800090e:	b212      	sxth	r2, r2
 8000910:	1885      	adds	r5, r0, r2
 8000912:	b21b      	sxth	r3, r3
 8000914:	18ed      	adds	r5, r5, r3
 8000916:	d00e      	beq.n	8000936 <_ZN4CRGB8rgb_readEh+0x21e>
 8000918:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 800091c:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8000920:	fb90 f0f5 	sdiv	r0, r0, r5
 8000924:	fb92 f2f5 	sdiv	r2, r2, r5
 8000928:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 800092c:	85a0      	strh	r0, [r4, #44]	; 0x2c
 800092e:	fb93 f3f5 	sdiv	r3, r3, r5
 8000932:	86a2      	strh	r2, [r4, #52]	; 0x34
 8000934:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8000936:	3101      	adds	r1, #1
 8000938:	2904      	cmp	r1, #4
 800093a:	f104 0402 	add.w	r4, r4, #2
 800093e:	d1c7      	bne.n	80008d0 <_ZN4CRGB8rgb_readEh+0x1b8>
 8000940:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08000944 <_ZN4CRGB8rgb_initEv>:
 8000944:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000946:	4606      	mov	r6, r0
 8000948:	4635      	mov	r5, r6
 800094a:	f000 f991 	bl	8000c70 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 800094e:	4633      	mov	r3, r6
 8000950:	2200      	movs	r2, #0
 8000952:	3201      	adds	r2, #1
 8000954:	2400      	movs	r4, #0
 8000956:	2a04      	cmp	r2, #4
 8000958:	809c      	strh	r4, [r3, #4]
 800095a:	819c      	strh	r4, [r3, #12]
 800095c:	829c      	strh	r4, [r3, #20]
 800095e:	849c      	strh	r4, [r3, #36]	; 0x24
 8000960:	839c      	strh	r4, [r3, #28]
 8000962:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 8000966:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 800096a:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 800096e:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 8000972:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 8000976:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000978:	869c      	strh	r4, [r3, #52]	; 0x34
 800097a:	879c      	strh	r4, [r3, #60]	; 0x3c
 800097c:	f103 0302 	add.w	r3, r3, #2
 8000980:	d1e7      	bne.n	8000952 <_ZN4CRGB8rgb_initEv+0xe>
 8000982:	4630      	mov	r0, r6
 8000984:	2172      	movs	r1, #114	; 0x72
 8000986:	2281      	movs	r2, #129	; 0x81
 8000988:	23ff      	movs	r3, #255	; 0xff
 800098a:	f000 f9fe 	bl	8000d8a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800098e:	4630      	mov	r0, r6
 8000990:	2172      	movs	r1, #114	; 0x72
 8000992:	2283      	movs	r2, #131	; 0x83
 8000994:	23ff      	movs	r3, #255	; 0xff
 8000996:	f000 f9f8 	bl	8000d8a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800099a:	4630      	mov	r0, r6
 800099c:	2172      	movs	r1, #114	; 0x72
 800099e:	228d      	movs	r2, #141	; 0x8d
 80009a0:	4623      	mov	r3, r4
 80009a2:	f000 f9f2 	bl	8000d8a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009a6:	4630      	mov	r0, r6
 80009a8:	2172      	movs	r1, #114	; 0x72
 80009aa:	2280      	movs	r2, #128	; 0x80
 80009ac:	2303      	movs	r3, #3
 80009ae:	f000 f9ec 	bl	8000d8a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009b2:	228f      	movs	r2, #143	; 0x8f
 80009b4:	2323      	movs	r3, #35	; 0x23
 80009b6:	4630      	mov	r0, r6
 80009b8:	2172      	movs	r1, #114	; 0x72
 80009ba:	f000 f9e6 	bl	8000d8a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009be:	af01      	add	r7, sp, #4
 80009c0:	4630      	mov	r0, r6
 80009c2:	4621      	mov	r1, r4
 80009c4:	f7ff fea8 	bl	8000718 <_ZN4CRGB8rgb_readEh>
 80009c8:	463b      	mov	r3, r7
 80009ca:	4630      	mov	r0, r6
 80009cc:	2172      	movs	r1, #114	; 0x72
 80009ce:	2292      	movs	r2, #146	; 0x92
 80009d0:	f000 fa40 	bl	8000e54 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 80009d4:	4623      	mov	r3, r4
 80009d6:	5cfa      	ldrb	r2, [r7, r3]
 80009d8:	2a69      	cmp	r2, #105	; 0x69
 80009da:	bf1c      	itt	ne
 80009dc:	2201      	movne	r2, #1
 80009de:	409a      	lslne	r2, r3
 80009e0:	f103 0301 	add.w	r3, r3, #1
 80009e4:	bf18      	it	ne
 80009e6:	4314      	orrne	r4, r2
 80009e8:	2b04      	cmp	r3, #4
 80009ea:	d1f4      	bne.n	80009d6 <_ZN4CRGB8rgb_initEv+0x92>
 80009ec:	461f      	mov	r7, r3
 80009ee:	4630      	mov	r0, r6
 80009f0:	2101      	movs	r1, #1
 80009f2:	f7ff fe91 	bl	8000718 <_ZN4CRGB8rgb_readEh>
 80009f6:	3f01      	subs	r7, #1
 80009f8:	d1f9      	bne.n	80009ee <_ZN4CRGB8rgb_initEv+0xaa>
 80009fa:	2104      	movs	r1, #4
 80009fc:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8000a00:	089b      	lsrs	r3, r3, #2
 8000a02:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 8000a06:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 8000a0a:	089b      	lsrs	r3, r3, #2
 8000a0c:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000a10:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000a14:	089b      	lsrs	r3, r3, #2
 8000a16:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 8000a1a:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8000a1e:	089b      	lsrs	r3, r3, #2
 8000a20:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8000a24:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 8000a28:	3901      	subs	r1, #1
 8000a2a:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000a2e:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8000a32:	f105 0502 	add.w	r5, r5, #2
 8000a36:	d1e1      	bne.n	80009fc <_ZN4CRGB8rgb_initEv+0xb8>
 8000a38:	4630      	mov	r0, r6
 8000a3a:	f7ff fe6d 	bl	8000718 <_ZN4CRGB8rgb_readEh>
 8000a3e:	b114      	cbz	r4, 8000a46 <_ZN4CRGB8rgb_initEv+0x102>
 8000a40:	4802      	ldr	r0, [pc, #8]	; (8000a4c <_ZN4CRGB8rgb_initEv+0x108>)
 8000a42:	1b00      	subs	r0, r0, r4
 8000a44:	e000      	b.n	8000a48 <_ZN4CRGB8rgb_initEv+0x104>
 8000a46:	4620      	mov	r0, r4
 8000a48:	b003      	add	sp, #12
 8000a4a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a4c:	fffffc18 	.word	0xfffffc18

08000a50 <_ZN4CRGB14get_rgb_resultEv>:
 8000a50:	3004      	adds	r0, #4
 8000a52:	4770      	bx	lr

08000a54 <_ZN6CMotor11motor_sleepEv>:
 8000a54:	b510      	push	{r4, lr}
 8000a56:	4c07      	ldr	r4, [pc, #28]	; (8000a74 <_ZN6CMotor11motor_sleepEv+0x20>)
 8000a58:	21c0      	movs	r1, #192	; 0xc0
 8000a5a:	4620      	mov	r0, r4
 8000a5c:	2200      	movs	r2, #0
 8000a5e:	2318      	movs	r3, #24
 8000a60:	f000 fadc 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000a64:	4620      	mov	r0, r4
 8000a66:	21c2      	movs	r1, #194	; 0xc2
 8000a68:	2200      	movs	r2, #0
 8000a6a:	2318      	movs	r3, #24
 8000a6c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a70:	f000 bad4 	b.w	800101c <_ZN4CI2C9write_regEhhh>
 8000a74:	20000160 	.word	0x20000160

08000a78 <_ZN6CMotor13motor_refreshEv>:
 8000a78:	b570      	push	{r4, r5, r6, lr}
 8000a7a:	e890 0030 	ldmia.w	r0, {r4, r5}
 8000a7e:	2c2c      	cmp	r4, #44	; 0x2c
 8000a80:	dc74      	bgt.n	8000b6c <_ZN6CMotor13motor_refreshEv+0xf4>
 8000a82:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000a86:	db11      	blt.n	8000aac <_ZN6CMotor13motor_refreshEv+0x34>
 8000a88:	2d2c      	cmp	r5, #44	; 0x2c
 8000a8a:	dc5e      	bgt.n	8000b4a <_ZN6CMotor13motor_refreshEv+0xd2>
 8000a8c:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 8000a90:	db33      	blt.n	8000afa <_ZN6CMotor13motor_refreshEv+0x82>
 8000a92:	b1dc      	cbz	r4, 8000acc <_ZN6CMotor13motor_refreshEv+0x54>
 8000a94:	e001      	b.n	8000a9a <_ZN6CMotor13motor_refreshEv+0x22>
 8000a96:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000a9a:	2c00      	cmp	r4, #0
 8000a9c:	dd0d      	ble.n	8000aba <_ZN6CMotor13motor_refreshEv+0x42>
 8000a9e:	2c06      	cmp	r4, #6
 8000aa0:	bfb8      	it	lt
 8000aa2:	2406      	movlt	r4, #6
 8000aa4:	00a4      	lsls	r4, r4, #2
 8000aa6:	f044 0402 	orr.w	r4, r4, #2
 8000aaa:	e00d      	b.n	8000ac8 <_ZN6CMotor13motor_refreshEv+0x50>
 8000aac:	2d2c      	cmp	r5, #44	; 0x2c
 8000aae:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000ab2:	dc60      	bgt.n	8000b76 <_ZN6CMotor13motor_refreshEv+0xfe>
 8000ab4:	42a5      	cmp	r5, r4
 8000ab6:	bfb8      	it	lt
 8000ab8:	4625      	movlt	r5, r4
 8000aba:	4264      	negs	r4, r4
 8000abc:	2c06      	cmp	r4, #6
 8000abe:	bfb8      	it	lt
 8000ac0:	2406      	movlt	r4, #6
 8000ac2:	00a4      	lsls	r4, r4, #2
 8000ac4:	f044 0401 	orr.w	r4, r4, #1
 8000ac8:	b2e4      	uxtb	r4, r4
 8000aca:	e000      	b.n	8000ace <_ZN6CMotor13motor_refreshEv+0x56>
 8000acc:	241b      	movs	r4, #27
 8000ace:	2200      	movs	r2, #0
 8000ad0:	4613      	mov	r3, r2
 8000ad2:	482a      	ldr	r0, [pc, #168]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000ad4:	21c0      	movs	r1, #192	; 0xc0
 8000ad6:	f000 faa1 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000ada:	4828      	ldr	r0, [pc, #160]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000adc:	21c0      	movs	r1, #192	; 0xc0
 8000ade:	2200      	movs	r2, #0
 8000ae0:	4623      	mov	r3, r4
 8000ae2:	f000 fa9b 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000ae6:	2d00      	cmp	r5, #0
 8000ae8:	d020      	beq.n	8000b2c <_ZN6CMotor13motor_refreshEv+0xb4>
 8000aea:	dd16      	ble.n	8000b1a <_ZN6CMotor13motor_refreshEv+0xa2>
 8000aec:	2d06      	cmp	r5, #6
 8000aee:	bfb8      	it	lt
 8000af0:	2506      	movlt	r5, #6
 8000af2:	00ad      	lsls	r5, r5, #2
 8000af4:	f045 0501 	orr.w	r5, r5, #1
 8000af8:	e016      	b.n	8000b28 <_ZN6CMotor13motor_refreshEv+0xb0>
 8000afa:	2c00      	cmp	r4, #0
 8000afc:	d1cb      	bne.n	8000a96 <_ZN6CMotor13motor_refreshEv+0x1e>
 8000afe:	481f      	ldr	r0, [pc, #124]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b00:	21c0      	movs	r1, #192	; 0xc0
 8000b02:	4622      	mov	r2, r4
 8000b04:	4623      	mov	r3, r4
 8000b06:	f000 fa89 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000b0a:	481c      	ldr	r0, [pc, #112]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b0c:	21c0      	movs	r1, #192	; 0xc0
 8000b0e:	4622      	mov	r2, r4
 8000b10:	231b      	movs	r3, #27
 8000b12:	f000 fa83 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000b16:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000b1a:	426d      	negs	r5, r5
 8000b1c:	2d06      	cmp	r5, #6
 8000b1e:	bfb8      	it	lt
 8000b20:	2506      	movlt	r5, #6
 8000b22:	00ad      	lsls	r5, r5, #2
 8000b24:	f045 0502 	orr.w	r5, r5, #2
 8000b28:	b2ed      	uxtb	r5, r5
 8000b2a:	e000      	b.n	8000b2e <_ZN6CMotor13motor_refreshEv+0xb6>
 8000b2c:	251b      	movs	r5, #27
 8000b2e:	2200      	movs	r2, #0
 8000b30:	4613      	mov	r3, r2
 8000b32:	4812      	ldr	r0, [pc, #72]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b34:	21c2      	movs	r1, #194	; 0xc2
 8000b36:	f000 fa71 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000b3a:	462b      	mov	r3, r5
 8000b3c:	480f      	ldr	r0, [pc, #60]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b3e:	21c2      	movs	r1, #194	; 0xc2
 8000b40:	2200      	movs	r2, #0
 8000b42:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b46:	f000 ba69 	b.w	800101c <_ZN4CI2C9write_regEhhh>
 8000b4a:	b96c      	cbnz	r4, 8000b68 <_ZN6CMotor13motor_refreshEv+0xf0>
 8000b4c:	480b      	ldr	r0, [pc, #44]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b4e:	21c0      	movs	r1, #192	; 0xc0
 8000b50:	4622      	mov	r2, r4
 8000b52:	4623      	mov	r3, r4
 8000b54:	f000 fa62 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000b58:	4808      	ldr	r0, [pc, #32]	; (8000b7c <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b5a:	21c0      	movs	r1, #192	; 0xc0
 8000b5c:	4622      	mov	r2, r4
 8000b5e:	231b      	movs	r3, #27
 8000b60:	f000 fa5c 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8000b64:	252c      	movs	r5, #44	; 0x2c
 8000b66:	e7c4      	b.n	8000af2 <_ZN6CMotor13motor_refreshEv+0x7a>
 8000b68:	252c      	movs	r5, #44	; 0x2c
 8000b6a:	e796      	b.n	8000a9a <_ZN6CMotor13motor_refreshEv+0x22>
 8000b6c:	242c      	movs	r4, #44	; 0x2c
 8000b6e:	42a5      	cmp	r5, r4
 8000b70:	dd8c      	ble.n	8000a8c <_ZN6CMotor13motor_refreshEv+0x14>
 8000b72:	4625      	mov	r5, r4
 8000b74:	e796      	b.n	8000aa4 <_ZN6CMotor13motor_refreshEv+0x2c>
 8000b76:	252c      	movs	r5, #44	; 0x2c
 8000b78:	e79f      	b.n	8000aba <_ZN6CMotor13motor_refreshEv+0x42>
 8000b7a:	bf00      	nop
 8000b7c:	20000160 	.word	0x20000160

08000b80 <_ZN6CMotor9set_motorEml>:
 8000b80:	2901      	cmp	r1, #1
 8000b82:	bf98      	it	ls
 8000b84:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000b88:	f7ff bf76 	b.w	8000a78 <_ZN6CMotor13motor_refreshEv>

08000b8c <_ZN6CMotor10motor_initEv>:
 8000b8c:	b510      	push	{r4, lr}
 8000b8e:	2100      	movs	r1, #0
 8000b90:	4604      	mov	r4, r0
 8000b92:	460a      	mov	r2, r1
 8000b94:	f7ff fff4 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8000b98:	4620      	mov	r0, r4
 8000b9a:	2101      	movs	r1, #1
 8000b9c:	2200      	movs	r2, #0
 8000b9e:	f7ff ffef 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8000ba2:	4620      	mov	r0, r4
 8000ba4:	f7ff ff68 	bl	8000a78 <_ZN6CMotor13motor_refreshEv>
 8000ba8:	2000      	movs	r0, #0
 8000baa:	bd10      	pop	{r4, pc}

08000bac <_ZN8CSensors12sensors_initEv>:
 8000bac:	b510      	push	{r4, lr}
 8000bae:	4604      	mov	r4, r0
 8000bb0:	4808      	ldr	r0, [pc, #32]	; (8000bd4 <_ZN8CSensors12sensors_initEv+0x28>)
 8000bb2:	f000 f9b1 	bl	8000f18 <_ZN4CI2C4initEv>
 8000bb6:	4620      	mov	r0, r4
 8000bb8:	f7ff fec4 	bl	8000944 <_ZN4CRGB8rgb_initEv>
 8000bbc:	b110      	cbz	r0, 8000bc4 <_ZN8CSensors12sensors_initEv+0x18>
 8000bbe:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000bc2:	bd10      	pop	{r4, pc}
 8000bc4:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8000bc8:	f000 fb36 	bl	8001238 <_ZN4CIMU8imu_initEv>
 8000bcc:	b108      	cbz	r0, 8000bd2 <_ZN8CSensors12sensors_initEv+0x26>
 8000bce:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000bd2:	bd10      	pop	{r4, pc}
 8000bd4:	20000160 	.word	0x20000160

08000bd8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000bd8:	2365      	movs	r3, #101	; 0x65
 8000bda:	3b01      	subs	r3, #1
 8000bdc:	d001      	beq.n	8000be2 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000bde:	bf00      	nop
 8000be0:	e7fb      	b.n	8000bda <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000be2:	4770      	bx	lr

08000be4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000be4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000be6:	2301      	movs	r3, #1
 8000be8:	2203      	movs	r2, #3
 8000bea:	4605      	mov	r5, r0
 8000bec:	24f0      	movs	r4, #240	; 0xf0
 8000bee:	f88d 3004 	strb.w	r3, [sp, #4]
 8000bf2:	f88d 3006 	strb.w	r3, [sp, #6]
 8000bf6:	4669      	mov	r1, sp
 8000bf8:	2300      	movs	r3, #0
 8000bfa:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000bfe:	f88d 2005 	strb.w	r2, [sp, #5]
 8000c02:	f88d 3007 	strb.w	r3, [sp, #7]
 8000c06:	9400      	str	r4, [sp, #0]
 8000c08:	f001 fd02 	bl	8002610 <GPIO_Init>
 8000c0c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c10:	4628      	mov	r0, r5
 8000c12:	851c      	strh	r4, [r3, #40]	; 0x28
 8000c14:	f7ff ffe0 	bl	8000bd8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c18:	b003      	add	sp, #12
 8000c1a:	bd30      	pop	{r4, r5, pc}

08000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000c1c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000c1e:	2300      	movs	r3, #0
 8000c20:	2203      	movs	r2, #3
 8000c22:	4605      	mov	r5, r0
 8000c24:	24f0      	movs	r4, #240	; 0xf0
 8000c26:	4669      	mov	r1, sp
 8000c28:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c2c:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c30:	f88d 2005 	strb.w	r2, [sp, #5]
 8000c34:	f88d 3007 	strb.w	r3, [sp, #7]
 8000c38:	9400      	str	r4, [sp, #0]
 8000c3a:	f001 fce9 	bl	8002610 <GPIO_Init>
 8000c3e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c42:	4628      	mov	r0, r5
 8000c44:	619c      	str	r4, [r3, #24]
 8000c46:	f7ff ffc7 	bl	8000bd8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c4a:	b003      	add	sp, #12
 8000c4c:	bd30      	pop	{r4, r5, pc}
	...

08000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000c50:	4b02      	ldr	r3, [pc, #8]	; (8000c5c <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000c52:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000c56:	851a      	strh	r2, [r3, #40]	; 0x28
 8000c58:	f7ff bfbe 	b.w	8000bd8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c5c:	48000800 	.word	0x48000800

08000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000c60:	4b02      	ldr	r3, [pc, #8]	; (8000c6c <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000c62:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000c66:	619a      	str	r2, [r3, #24]
 8000c68:	f7ff bfb6 	b.w	8000bd8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c6c:	48000800 	.word	0x48000800

08000c70 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000c70:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000c72:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000c76:	4605      	mov	r5, r0
 8000c78:	2400      	movs	r4, #0
 8000c7a:	9300      	str	r3, [sp, #0]
 8000c7c:	2703      	movs	r7, #3
 8000c7e:	2301      	movs	r3, #1
 8000c80:	4817      	ldr	r0, [pc, #92]	; (8000ce0 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8000c82:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c86:	4669      	mov	r1, sp
 8000c88:	26f0      	movs	r6, #240	; 0xf0
 8000c8a:	f88d 7005 	strb.w	r7, [sp, #5]
 8000c8e:	f88d 4006 	strb.w	r4, [sp, #6]
 8000c92:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c96:	f001 fcbb 	bl	8002610 <GPIO_Init>
 8000c9a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c9e:	4669      	mov	r1, sp
 8000ca0:	9600      	str	r6, [sp, #0]
 8000ca2:	f88d 4004 	strb.w	r4, [sp, #4]
 8000ca6:	f88d 7005 	strb.w	r7, [sp, #5]
 8000caa:	f88d 4007 	strb.w	r4, [sp, #7]
 8000cae:	f001 fcaf 	bl	8002610 <GPIO_Init>
 8000cb2:	4631      	mov	r1, r6
 8000cb4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cb8:	f001 fcec 	bl	8002694 <GPIO_SetBits>
 8000cbc:	4628      	mov	r0, r5
 8000cbe:	f7ff ffcf 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cc2:	4628      	mov	r0, r5
 8000cc4:	f7ff ff8e 	bl	8000be4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000cc8:	4628      	mov	r0, r5
 8000cca:	f7ff ffa7 	bl	8000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000cce:	f242 7311 	movw	r3, #10001	; 0x2711
 8000cd2:	3b01      	subs	r3, #1
 8000cd4:	d001      	beq.n	8000cda <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 8000cd6:	bf00      	nop
 8000cd8:	e7fb      	b.n	8000cd2 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 8000cda:	b003      	add	sp, #12
 8000cdc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000cde:	bf00      	nop
 8000ce0:	48000800 	.word	0x48000800

08000ce4 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000ce4:	b510      	push	{r4, lr}
 8000ce6:	4604      	mov	r4, r0
 8000ce8:	f7ff ffba 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cec:	4620      	mov	r0, r4
 8000cee:	f7ff ff95 	bl	8000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000cf2:	4620      	mov	r0, r4
 8000cf4:	f7ff ffb4 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cf8:	4620      	mov	r0, r4
 8000cfa:	f7ff ff73 	bl	8000be4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000cfe:	4620      	mov	r0, r4
 8000d00:	f7ff ffa6 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d04:	4620      	mov	r0, r4
 8000d06:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d0a:	f7ff bf87 	b.w	8000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000d0e <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000d0e:	b510      	push	{r4, lr}
 8000d10:	4604      	mov	r4, r0
 8000d12:	f7ff ff9d 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d16:	4620      	mov	r0, r4
 8000d18:	f7ff ff64 	bl	8000be4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d1c:	4620      	mov	r0, r4
 8000d1e:	f7ff ff9f 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d22:	4620      	mov	r0, r4
 8000d24:	f7ff ff5e 	bl	8000be4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d28:	4620      	mov	r0, r4
 8000d2a:	f7ff ff99 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d2e:	4620      	mov	r0, r4
 8000d30:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d34:	f7ff bf72 	b.w	8000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000d38:	b570      	push	{r4, r5, r6, lr}
 8000d3a:	4604      	mov	r4, r0
 8000d3c:	460e      	mov	r6, r1
 8000d3e:	2508      	movs	r5, #8
 8000d40:	4620      	mov	r0, r4
 8000d42:	f7ff ff85 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d46:	0633      	lsls	r3, r6, #24
 8000d48:	4620      	mov	r0, r4
 8000d4a:	d502      	bpl.n	8000d52 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000d4c:	f7ff ff66 	bl	8000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d50:	e001      	b.n	8000d56 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000d52:	f7ff ff47 	bl	8000be4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d56:	4620      	mov	r0, r4
 8000d58:	3d01      	subs	r5, #1
 8000d5a:	f7ff ff81 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d5e:	0076      	lsls	r6, r6, #1
 8000d60:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000d64:	b2f6      	uxtb	r6, r6
 8000d66:	d1eb      	bne.n	8000d40 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000d68:	4620      	mov	r0, r4
 8000d6a:	f7ff ff71 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d6e:	4620      	mov	r0, r4
 8000d70:	f7ff ff54 	bl	8000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d74:	4620      	mov	r0, r4
 8000d76:	f7ff ff73 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d7a:	4620      	mov	r0, r4
 8000d7c:	f7ff ff68 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d80:	4620      	mov	r0, r4
 8000d82:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d86:	f7ff bf27 	b.w	8000bd8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000d8a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000d8a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d8c:	4604      	mov	r4, r0
 8000d8e:	460f      	mov	r7, r1
 8000d90:	4616      	mov	r6, r2
 8000d92:	461d      	mov	r5, r3
 8000d94:	f7ff ffa6 	bl	8000ce4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000d98:	4620      	mov	r0, r4
 8000d9a:	4639      	mov	r1, r7
 8000d9c:	f7ff ffcc 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000da0:	4620      	mov	r0, r4
 8000da2:	4631      	mov	r1, r6
 8000da4:	f7ff ffc8 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000da8:	4620      	mov	r0, r4
 8000daa:	4629      	mov	r1, r5
 8000dac:	f7ff ffc4 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000db0:	4620      	mov	r0, r4
 8000db2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000db6:	f7ff bfaa 	b.w	8000d0e <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000dba:	2300      	movs	r3, #0
 8000dbc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000dc0:	4605      	mov	r5, r0
 8000dc2:	7013      	strb	r3, [r2, #0]
 8000dc4:	7053      	strb	r3, [r2, #1]
 8000dc6:	7093      	strb	r3, [r2, #2]
 8000dc8:	70d3      	strb	r3, [r2, #3]
 8000dca:	460e      	mov	r6, r1
 8000dcc:	4614      	mov	r4, r2
 8000dce:	1cd7      	adds	r7, r2, #3
 8000dd0:	f7ff ff3e 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000dd4:	4628      	mov	r0, r5
 8000dd6:	f7ff ff21 	bl	8000c1c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000dda:	f04f 0808 	mov.w	r8, #8
 8000dde:	1e63      	subs	r3, r4, #1
 8000de0:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000de4:	0052      	lsls	r2, r2, #1
 8000de6:	42bb      	cmp	r3, r7
 8000de8:	701a      	strb	r2, [r3, #0]
 8000dea:	d1f9      	bne.n	8000de0 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000dec:	4628      	mov	r0, r5
 8000dee:	f7ff ff37 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000df2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000df6:	8a1b      	ldrh	r3, [r3, #16]
 8000df8:	b29b      	uxth	r3, r3
 8000dfa:	06d8      	lsls	r0, r3, #27
 8000dfc:	bf42      	ittt	mi
 8000dfe:	7822      	ldrbmi	r2, [r4, #0]
 8000e00:	f042 0201 	orrmi.w	r2, r2, #1
 8000e04:	7022      	strbmi	r2, [r4, #0]
 8000e06:	0699      	lsls	r1, r3, #26
 8000e08:	bf42      	ittt	mi
 8000e0a:	7862      	ldrbmi	r2, [r4, #1]
 8000e0c:	f042 0201 	orrmi.w	r2, r2, #1
 8000e10:	7062      	strbmi	r2, [r4, #1]
 8000e12:	065a      	lsls	r2, r3, #25
 8000e14:	bf42      	ittt	mi
 8000e16:	78a2      	ldrbmi	r2, [r4, #2]
 8000e18:	f042 0201 	orrmi.w	r2, r2, #1
 8000e1c:	70a2      	strbmi	r2, [r4, #2]
 8000e1e:	061b      	lsls	r3, r3, #24
 8000e20:	bf42      	ittt	mi
 8000e22:	78e3      	ldrbmi	r3, [r4, #3]
 8000e24:	f043 0301 	orrmi.w	r3, r3, #1
 8000e28:	70e3      	strbmi	r3, [r4, #3]
 8000e2a:	4628      	mov	r0, r5
 8000e2c:	f7ff ff10 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e30:	f1b8 0801 	subs.w	r8, r8, #1
 8000e34:	d1d3      	bne.n	8000dde <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000e36:	b116      	cbz	r6, 8000e3e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000e38:	4628      	mov	r0, r5
 8000e3a:	f7ff fed3 	bl	8000be4 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000e3e:	4628      	mov	r0, r5
 8000e40:	f7ff ff0e 	bl	8000c60 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000e44:	4628      	mov	r0, r5
 8000e46:	f7ff ff03 	bl	8000c50 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e4a:	4628      	mov	r0, r5
 8000e4c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000e50:	f7ff bec2 	b.w	8000bd8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000e54 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000e54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e56:	4604      	mov	r4, r0
 8000e58:	460d      	mov	r5, r1
 8000e5a:	4617      	mov	r7, r2
 8000e5c:	461e      	mov	r6, r3
 8000e5e:	f7ff ff41 	bl	8000ce4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e62:	4620      	mov	r0, r4
 8000e64:	4629      	mov	r1, r5
 8000e66:	f7ff ff67 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e6a:	4639      	mov	r1, r7
 8000e6c:	4620      	mov	r0, r4
 8000e6e:	f7ff ff63 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e72:	4620      	mov	r0, r4
 8000e74:	f7ff ff36 	bl	8000ce4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e78:	4620      	mov	r0, r4
 8000e7a:	f045 0101 	orr.w	r1, r5, #1
 8000e7e:	f7ff ff5b 	bl	8000d38 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e82:	4620      	mov	r0, r4
 8000e84:	4632      	mov	r2, r6
 8000e86:	2100      	movs	r1, #0
 8000e88:	f7ff ff97 	bl	8000dba <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000e8c:	4620      	mov	r0, r4
 8000e8e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000e92:	f7ff bf3c 	b.w	8000d0e <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000e96 <_ZN4CI2C5delayEv>:
 8000e96:	230b      	movs	r3, #11
 8000e98:	3b01      	subs	r3, #1
 8000e9a:	d001      	beq.n	8000ea0 <_ZN4CI2C5delayEv+0xa>
 8000e9c:	bf00      	nop
 8000e9e:	e7fb      	b.n	8000e98 <_ZN4CI2C5delayEv+0x2>
 8000ea0:	4770      	bx	lr
	...

08000ea4 <_ZN4CI2C9SetLowSDAEv>:
 8000ea4:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000ea6:	4c0c      	ldr	r4, [pc, #48]	; (8000ed8 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000ea8:	2301      	movs	r3, #1
 8000eaa:	2203      	movs	r2, #3
 8000eac:	4606      	mov	r6, r0
 8000eae:	2580      	movs	r5, #128	; 0x80
 8000eb0:	f88d 3004 	strb.w	r3, [sp, #4]
 8000eb4:	f88d 3006 	strb.w	r3, [sp, #6]
 8000eb8:	4620      	mov	r0, r4
 8000eba:	2300      	movs	r3, #0
 8000ebc:	4669      	mov	r1, sp
 8000ebe:	f88d 2005 	strb.w	r2, [sp, #5]
 8000ec2:	f88d 3007 	strb.w	r3, [sp, #7]
 8000ec6:	9500      	str	r5, [sp, #0]
 8000ec8:	f001 fba2 	bl	8002610 <GPIO_Init>
 8000ecc:	8525      	strh	r5, [r4, #40]	; 0x28
 8000ece:	4630      	mov	r0, r6
 8000ed0:	f7ff ffe1 	bl	8000e96 <_ZN4CI2C5delayEv>
 8000ed4:	b002      	add	sp, #8
 8000ed6:	bd70      	pop	{r4, r5, r6, pc}
 8000ed8:	48000400 	.word	0x48000400

08000edc <_ZN4CI2C10SetHighSDAEv>:
 8000edc:	4b05      	ldr	r3, [pc, #20]	; (8000ef4 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000ede:	681a      	ldr	r2, [r3, #0]
 8000ee0:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000ee4:	601a      	str	r2, [r3, #0]
 8000ee6:	681a      	ldr	r2, [r3, #0]
 8000ee8:	601a      	str	r2, [r3, #0]
 8000eea:	2280      	movs	r2, #128	; 0x80
 8000eec:	619a      	str	r2, [r3, #24]
 8000eee:	f7ff bfd2 	b.w	8000e96 <_ZN4CI2C5delayEv>
 8000ef2:	bf00      	nop
 8000ef4:	48000400 	.word	0x48000400

08000ef8 <_ZN4CI2C9SetLowSCLEv>:
 8000ef8:	4b02      	ldr	r3, [pc, #8]	; (8000f04 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000efa:	2240      	movs	r2, #64	; 0x40
 8000efc:	851a      	strh	r2, [r3, #40]	; 0x28
 8000efe:	f7ff bfca 	b.w	8000e96 <_ZN4CI2C5delayEv>
 8000f02:	bf00      	nop
 8000f04:	48000400 	.word	0x48000400

08000f08 <_ZN4CI2C10SetHighSCLEv>:
 8000f08:	4b02      	ldr	r3, [pc, #8]	; (8000f14 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000f0a:	2240      	movs	r2, #64	; 0x40
 8000f0c:	619a      	str	r2, [r3, #24]
 8000f0e:	f7ff bfc2 	b.w	8000e96 <_ZN4CI2C5delayEv>
 8000f12:	bf00      	nop
 8000f14:	48000400 	.word	0x48000400

08000f18 <_ZN4CI2C4initEv>:
 8000f18:	b513      	push	{r0, r1, r4, lr}
 8000f1a:	4604      	mov	r4, r0
 8000f1c:	2101      	movs	r1, #1
 8000f1e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000f22:	f001 f96d 	bl	8002200 <RCC_AHBPeriphClockCmd>
 8000f26:	23c0      	movs	r3, #192	; 0xc0
 8000f28:	9300      	str	r3, [sp, #0]
 8000f2a:	2301      	movs	r3, #1
 8000f2c:	2203      	movs	r2, #3
 8000f2e:	4669      	mov	r1, sp
 8000f30:	f88d 3004 	strb.w	r3, [sp, #4]
 8000f34:	f88d 3006 	strb.w	r3, [sp, #6]
 8000f38:	4809      	ldr	r0, [pc, #36]	; (8000f60 <_ZN4CI2C4initEv+0x48>)
 8000f3a:	f88d 2005 	strb.w	r2, [sp, #5]
 8000f3e:	2300      	movs	r3, #0
 8000f40:	f88d 3007 	strb.w	r3, [sp, #7]
 8000f44:	f001 fb64 	bl	8002610 <GPIO_Init>
 8000f48:	4620      	mov	r0, r4
 8000f4a:	f7ff ffdd 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8000f4e:	4620      	mov	r0, r4
 8000f50:	f7ff ffa8 	bl	8000ea4 <_ZN4CI2C9SetLowSDAEv>
 8000f54:	4620      	mov	r0, r4
 8000f56:	f7ff ffc1 	bl	8000edc <_ZN4CI2C10SetHighSDAEv>
 8000f5a:	b002      	add	sp, #8
 8000f5c:	bd10      	pop	{r4, pc}
 8000f5e:	bf00      	nop
 8000f60:	48000400 	.word	0x48000400

08000f64 <_ZN4CI2C5StartEv>:
 8000f64:	b510      	push	{r4, lr}
 8000f66:	4604      	mov	r4, r0
 8000f68:	f7ff ffce 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8000f6c:	4620      	mov	r0, r4
 8000f6e:	f7ff ffb5 	bl	8000edc <_ZN4CI2C10SetHighSDAEv>
 8000f72:	4620      	mov	r0, r4
 8000f74:	f7ff ffc8 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8000f78:	4620      	mov	r0, r4
 8000f7a:	f7ff ff93 	bl	8000ea4 <_ZN4CI2C9SetLowSDAEv>
 8000f7e:	4620      	mov	r0, r4
 8000f80:	f7ff ffba 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 8000f84:	4620      	mov	r0, r4
 8000f86:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f8a:	f7ff bfa7 	b.w	8000edc <_ZN4CI2C10SetHighSDAEv>

08000f8e <_ZN4CI2C4StopEv>:
 8000f8e:	b510      	push	{r4, lr}
 8000f90:	4604      	mov	r4, r0
 8000f92:	f7ff ffb1 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 8000f96:	4620      	mov	r0, r4
 8000f98:	f7ff ff84 	bl	8000ea4 <_ZN4CI2C9SetLowSDAEv>
 8000f9c:	4620      	mov	r0, r4
 8000f9e:	f7ff ffb3 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8000fa2:	4620      	mov	r0, r4
 8000fa4:	f7ff ff7e 	bl	8000ea4 <_ZN4CI2C9SetLowSDAEv>
 8000fa8:	4620      	mov	r0, r4
 8000faa:	f7ff ffad 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8000fae:	4620      	mov	r0, r4
 8000fb0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000fb4:	f7ff bf92 	b.w	8000edc <_ZN4CI2C10SetHighSDAEv>

08000fb8 <_ZN4CI2C5WriteEh>:
 8000fb8:	b570      	push	{r4, r5, r6, lr}
 8000fba:	4604      	mov	r4, r0
 8000fbc:	460e      	mov	r6, r1
 8000fbe:	2508      	movs	r5, #8
 8000fc0:	4620      	mov	r0, r4
 8000fc2:	f7ff ff99 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 8000fc6:	0633      	lsls	r3, r6, #24
 8000fc8:	4620      	mov	r0, r4
 8000fca:	d502      	bpl.n	8000fd2 <_ZN4CI2C5WriteEh+0x1a>
 8000fcc:	f7ff ff86 	bl	8000edc <_ZN4CI2C10SetHighSDAEv>
 8000fd0:	e001      	b.n	8000fd6 <_ZN4CI2C5WriteEh+0x1e>
 8000fd2:	f7ff ff67 	bl	8000ea4 <_ZN4CI2C9SetLowSDAEv>
 8000fd6:	4620      	mov	r0, r4
 8000fd8:	3d01      	subs	r5, #1
 8000fda:	f7ff ff95 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8000fde:	0076      	lsls	r6, r6, #1
 8000fe0:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000fe4:	b2f6      	uxtb	r6, r6
 8000fe6:	d1eb      	bne.n	8000fc0 <_ZN4CI2C5WriteEh+0x8>
 8000fe8:	4620      	mov	r0, r4
 8000fea:	f7ff ff85 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 8000fee:	4620      	mov	r0, r4
 8000ff0:	f7ff ff74 	bl	8000edc <_ZN4CI2C10SetHighSDAEv>
 8000ff4:	4620      	mov	r0, r4
 8000ff6:	f7ff ff87 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8000ffa:	4b07      	ldr	r3, [pc, #28]	; (8001018 <_ZN4CI2C5WriteEh+0x60>)
 8000ffc:	8a1d      	ldrh	r5, [r3, #16]
 8000ffe:	4620      	mov	r0, r4
 8001000:	f7ff ff7a 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 8001004:	b2ad      	uxth	r5, r5
 8001006:	4620      	mov	r0, r4
 8001008:	f7ff ff45 	bl	8000e96 <_ZN4CI2C5delayEv>
 800100c:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8001010:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001014:	bd70      	pop	{r4, r5, r6, pc}
 8001016:	bf00      	nop
 8001018:	48000400 	.word	0x48000400

0800101c <_ZN4CI2C9write_regEhhh>:
 800101c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800101e:	4604      	mov	r4, r0
 8001020:	460f      	mov	r7, r1
 8001022:	4616      	mov	r6, r2
 8001024:	461d      	mov	r5, r3
 8001026:	f7ff ff9d 	bl	8000f64 <_ZN4CI2C5StartEv>
 800102a:	4639      	mov	r1, r7
 800102c:	4620      	mov	r0, r4
 800102e:	f7ff ffc3 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 8001032:	4631      	mov	r1, r6
 8001034:	4620      	mov	r0, r4
 8001036:	f7ff ffbf 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 800103a:	4620      	mov	r0, r4
 800103c:	4629      	mov	r1, r5
 800103e:	f7ff ffbb 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 8001042:	4620      	mov	r0, r4
 8001044:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001048:	f7ff bfa1 	b.w	8000f8e <_ZN4CI2C4StopEv>

0800104c <_ZN4CI2C4ReadEh>:
 800104c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800104e:	4605      	mov	r5, r0
 8001050:	460f      	mov	r7, r1
 8001052:	f7ff ff51 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 8001056:	2608      	movs	r6, #8
 8001058:	2400      	movs	r4, #0
 800105a:	4628      	mov	r0, r5
 800105c:	f7ff ff54 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8001060:	4b10      	ldr	r3, [pc, #64]	; (80010a4 <_ZN4CI2C4ReadEh+0x58>)
 8001062:	8a1b      	ldrh	r3, [r3, #16]
 8001064:	0064      	lsls	r4, r4, #1
 8001066:	061b      	lsls	r3, r3, #24
 8001068:	b2e4      	uxtb	r4, r4
 800106a:	4628      	mov	r0, r5
 800106c:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8001070:	bf48      	it	mi
 8001072:	f044 0401 	orrmi.w	r4, r4, #1
 8001076:	f7ff ff3f 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 800107a:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 800107e:	d1ec      	bne.n	800105a <_ZN4CI2C4ReadEh+0xe>
 8001080:	4628      	mov	r0, r5
 8001082:	b117      	cbz	r7, 800108a <_ZN4CI2C4ReadEh+0x3e>
 8001084:	f7ff ff0e 	bl	8000ea4 <_ZN4CI2C9SetLowSDAEv>
 8001088:	e001      	b.n	800108e <_ZN4CI2C4ReadEh+0x42>
 800108a:	f7ff ff27 	bl	8000edc <_ZN4CI2C10SetHighSDAEv>
 800108e:	4628      	mov	r0, r5
 8001090:	f7ff ff3a 	bl	8000f08 <_ZN4CI2C10SetHighSCLEv>
 8001094:	4628      	mov	r0, r5
 8001096:	f7ff ff2f 	bl	8000ef8 <_ZN4CI2C9SetLowSCLEv>
 800109a:	4628      	mov	r0, r5
 800109c:	f7ff ff1e 	bl	8000edc <_ZN4CI2C10SetHighSDAEv>
 80010a0:	4620      	mov	r0, r4
 80010a2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80010a4:	48000400 	.word	0x48000400

080010a8 <_ZN4CI2C8read_regEhh>:
 80010a8:	b570      	push	{r4, r5, r6, lr}
 80010aa:	4604      	mov	r4, r0
 80010ac:	460d      	mov	r5, r1
 80010ae:	4616      	mov	r6, r2
 80010b0:	f7ff ff58 	bl	8000f64 <_ZN4CI2C5StartEv>
 80010b4:	4629      	mov	r1, r5
 80010b6:	4620      	mov	r0, r4
 80010b8:	f7ff ff7e 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 80010bc:	4631      	mov	r1, r6
 80010be:	4620      	mov	r0, r4
 80010c0:	f7ff ff7a 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 80010c4:	4620      	mov	r0, r4
 80010c6:	f7ff ff4d 	bl	8000f64 <_ZN4CI2C5StartEv>
 80010ca:	f045 0101 	orr.w	r1, r5, #1
 80010ce:	4620      	mov	r0, r4
 80010d0:	f7ff ff72 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 80010d4:	2100      	movs	r1, #0
 80010d6:	4620      	mov	r0, r4
 80010d8:	f7ff ffb8 	bl	800104c <_ZN4CI2C4ReadEh>
 80010dc:	4605      	mov	r5, r0
 80010de:	4620      	mov	r0, r4
 80010e0:	f7ff ff55 	bl	8000f8e <_ZN4CI2C4StopEv>
 80010e4:	4628      	mov	r0, r5
 80010e6:	bd70      	pop	{r4, r5, r6, pc}

080010e8 <_ZN4CIMU8imu_readEv>:
 80010e8:	b570      	push	{r4, r5, r6, lr}
 80010ea:	4c52      	ldr	r4, [pc, #328]	; (8001234 <_ZN4CIMU8imu_readEv+0x14c>)
 80010ec:	4605      	mov	r5, r0
 80010ee:	4620      	mov	r0, r4
 80010f0:	f7ff ff38 	bl	8000f64 <_ZN4CI2C5StartEv>
 80010f4:	4620      	mov	r0, r4
 80010f6:	21d4      	movs	r1, #212	; 0xd4
 80010f8:	f7ff ff5e 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 80010fc:	21a8      	movs	r1, #168	; 0xa8
 80010fe:	4620      	mov	r0, r4
 8001100:	f7ff ff5a 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 8001104:	4620      	mov	r0, r4
 8001106:	f7ff ff2d 	bl	8000f64 <_ZN4CI2C5StartEv>
 800110a:	4620      	mov	r0, r4
 800110c:	21d5      	movs	r1, #213	; 0xd5
 800110e:	f7ff ff53 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 8001112:	4620      	mov	r0, r4
 8001114:	2101      	movs	r1, #1
 8001116:	f7ff ff99 	bl	800104c <_ZN4CI2C4ReadEh>
 800111a:	2101      	movs	r1, #1
 800111c:	b286      	uxth	r6, r0
 800111e:	4620      	mov	r0, r4
 8001120:	f7ff ff94 	bl	800104c <_ZN4CI2C4ReadEh>
 8001124:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001128:	b200      	sxth	r0, r0
 800112a:	6268      	str	r0, [r5, #36]	; 0x24
 800112c:	2101      	movs	r1, #1
 800112e:	4620      	mov	r0, r4
 8001130:	f7ff ff8c 	bl	800104c <_ZN4CI2C4ReadEh>
 8001134:	2101      	movs	r1, #1
 8001136:	b286      	uxth	r6, r0
 8001138:	4620      	mov	r0, r4
 800113a:	f7ff ff87 	bl	800104c <_ZN4CI2C4ReadEh>
 800113e:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001142:	b200      	sxth	r0, r0
 8001144:	62a8      	str	r0, [r5, #40]	; 0x28
 8001146:	2101      	movs	r1, #1
 8001148:	4620      	mov	r0, r4
 800114a:	f7ff ff7f 	bl	800104c <_ZN4CI2C4ReadEh>
 800114e:	2100      	movs	r1, #0
 8001150:	b286      	uxth	r6, r0
 8001152:	4620      	mov	r0, r4
 8001154:	f7ff ff7a 	bl	800104c <_ZN4CI2C4ReadEh>
 8001158:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800115c:	b200      	sxth	r0, r0
 800115e:	62e8      	str	r0, [r5, #44]	; 0x2c
 8001160:	4620      	mov	r0, r4
 8001162:	f7ff ff14 	bl	8000f8e <_ZN4CI2C4StopEv>
 8001166:	4620      	mov	r0, r4
 8001168:	f7ff fefc 	bl	8000f64 <_ZN4CI2C5StartEv>
 800116c:	4620      	mov	r0, r4
 800116e:	213c      	movs	r1, #60	; 0x3c
 8001170:	f7ff ff22 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 8001174:	21a8      	movs	r1, #168	; 0xa8
 8001176:	4620      	mov	r0, r4
 8001178:	f7ff ff1e 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 800117c:	4620      	mov	r0, r4
 800117e:	f7ff fef1 	bl	8000f64 <_ZN4CI2C5StartEv>
 8001182:	4620      	mov	r0, r4
 8001184:	213d      	movs	r1, #61	; 0x3d
 8001186:	f7ff ff17 	bl	8000fb8 <_ZN4CI2C5WriteEh>
 800118a:	4620      	mov	r0, r4
 800118c:	2101      	movs	r1, #1
 800118e:	f7ff ff5d 	bl	800104c <_ZN4CI2C4ReadEh>
 8001192:	2101      	movs	r1, #1
 8001194:	b286      	uxth	r6, r0
 8001196:	4620      	mov	r0, r4
 8001198:	f7ff ff58 	bl	800104c <_ZN4CI2C4ReadEh>
 800119c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011a0:	b200      	sxth	r0, r0
 80011a2:	6328      	str	r0, [r5, #48]	; 0x30
 80011a4:	2101      	movs	r1, #1
 80011a6:	4620      	mov	r0, r4
 80011a8:	f7ff ff50 	bl	800104c <_ZN4CI2C4ReadEh>
 80011ac:	2101      	movs	r1, #1
 80011ae:	b286      	uxth	r6, r0
 80011b0:	4620      	mov	r0, r4
 80011b2:	f7ff ff4b 	bl	800104c <_ZN4CI2C4ReadEh>
 80011b6:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011ba:	b200      	sxth	r0, r0
 80011bc:	6368      	str	r0, [r5, #52]	; 0x34
 80011be:	2101      	movs	r1, #1
 80011c0:	4620      	mov	r0, r4
 80011c2:	f7ff ff43 	bl	800104c <_ZN4CI2C4ReadEh>
 80011c6:	2100      	movs	r1, #0
 80011c8:	b286      	uxth	r6, r0
 80011ca:	4620      	mov	r0, r4
 80011cc:	f7ff ff3e 	bl	800104c <_ZN4CI2C4ReadEh>
 80011d0:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011d4:	b200      	sxth	r0, r0
 80011d6:	63a8      	str	r0, [r5, #56]	; 0x38
 80011d8:	4620      	mov	r0, r4
 80011da:	f7ff fed8 	bl	8000f8e <_ZN4CI2C4StopEv>
 80011de:	686a      	ldr	r2, [r5, #4]
 80011e0:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80011e2:	68a8      	ldr	r0, [r5, #8]
 80011e4:	1a9b      	subs	r3, r3, r2
 80011e6:	68ea      	ldr	r2, [r5, #12]
 80011e8:	26c8      	movs	r6, #200	; 0xc8
 80011ea:	fb93 f3f6 	sdiv	r3, r3, r6
 80011ee:	441a      	add	r2, r3
 80011f0:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 80011f2:	60ea      	str	r2, [r5, #12]
 80011f4:	2155      	movs	r1, #85	; 0x55
 80011f6:	4359      	muls	r1, r3
 80011f8:	f640 14e2 	movw	r4, #2530	; 0x9e2
 80011fc:	434a      	muls	r2, r1
 80011fe:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 8001200:	fb92 f2f4 	sdiv	r2, r2, r4
 8001204:	61aa      	str	r2, [r5, #24]
 8001206:	682a      	ldr	r2, [r5, #0]
 8001208:	1a9b      	subs	r3, r3, r2
 800120a:	692a      	ldr	r2, [r5, #16]
 800120c:	fb93 f3f6 	sdiv	r3, r3, r6
 8001210:	441a      	add	r2, r3
 8001212:	612a      	str	r2, [r5, #16]
 8001214:	434a      	muls	r2, r1
 8001216:	fb92 f2f4 	sdiv	r2, r2, r4
 800121a:	61ea      	str	r2, [r5, #28]
 800121c:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 800121e:	1a12      	subs	r2, r2, r0
 8001220:	fb92 f0f6 	sdiv	r0, r2, r6
 8001224:	696a      	ldr	r2, [r5, #20]
 8001226:	1883      	adds	r3, r0, r2
 8001228:	616b      	str	r3, [r5, #20]
 800122a:	434b      	muls	r3, r1
 800122c:	fb93 f3f4 	sdiv	r3, r3, r4
 8001230:	622b      	str	r3, [r5, #32]
 8001232:	bd70      	pop	{r4, r5, r6, pc}
 8001234:	20000160 	.word	0x20000160

08001238 <_ZN4CIMU8imu_initEv>:
 8001238:	230a      	movs	r3, #10
 800123a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800123e:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001240:	2300      	movs	r3, #0
 8001242:	4604      	mov	r4, r0
 8001244:	6003      	str	r3, [r0, #0]
 8001246:	6043      	str	r3, [r0, #4]
 8001248:	6083      	str	r3, [r0, #8]
 800124a:	60c3      	str	r3, [r0, #12]
 800124c:	6103      	str	r3, [r0, #16]
 800124e:	6143      	str	r3, [r0, #20]
 8001250:	f242 7511 	movw	r5, #10001	; 0x2711
 8001254:	3d01      	subs	r5, #1
 8001256:	d001      	beq.n	800125c <_ZN4CIMU8imu_initEv+0x24>
 8001258:	bf00      	nop
 800125a:	e7fb      	b.n	8001254 <_ZN4CIMU8imu_initEv+0x1c>
 800125c:	4832      	ldr	r0, [pc, #200]	; (8001328 <_ZN4CIMU8imu_initEv+0xf0>)
 800125e:	21d4      	movs	r1, #212	; 0xd4
 8001260:	220f      	movs	r2, #15
 8001262:	f7ff ff21 	bl	80010a8 <_ZN4CI2C8read_regEhh>
 8001266:	28d4      	cmp	r0, #212	; 0xd4
 8001268:	4606      	mov	r6, r0
 800126a:	d155      	bne.n	8001318 <_ZN4CIMU8imu_initEv+0xe0>
 800126c:	482e      	ldr	r0, [pc, #184]	; (8001328 <_ZN4CIMU8imu_initEv+0xf0>)
 800126e:	213c      	movs	r1, #60	; 0x3c
 8001270:	220f      	movs	r2, #15
 8001272:	f7ff ff19 	bl	80010a8 <_ZN4CI2C8read_regEhh>
 8001276:	2849      	cmp	r0, #73	; 0x49
 8001278:	d152      	bne.n	8001320 <_ZN4CIMU8imu_initEv+0xe8>
 800127a:	4631      	mov	r1, r6
 800127c:	482a      	ldr	r0, [pc, #168]	; (8001328 <_ZN4CIMU8imu_initEv+0xf0>)
 800127e:	2220      	movs	r2, #32
 8001280:	23ff      	movs	r3, #255	; 0xff
 8001282:	f7ff fecb 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8001286:	4631      	mov	r1, r6
 8001288:	4827      	ldr	r0, [pc, #156]	; (8001328 <_ZN4CIMU8imu_initEv+0xf0>)
 800128a:	4e28      	ldr	r6, [pc, #160]	; (800132c <_ZN4CIMU8imu_initEv+0xf4>)
 800128c:	2223      	movs	r2, #35	; 0x23
 800128e:	2310      	movs	r3, #16
 8001290:	f7ff fec4 	bl	800101c <_ZN4CI2C9write_regEhhh>
 8001294:	4824      	ldr	r0, [pc, #144]	; (8001328 <_ZN4CIMU8imu_initEv+0xf0>)
 8001296:	213c      	movs	r1, #60	; 0x3c
 8001298:	221f      	movs	r2, #31
 800129a:	462b      	mov	r3, r5
 800129c:	f7ff febe 	bl	800101c <_ZN4CI2C9write_regEhhh>
 80012a0:	4821      	ldr	r0, [pc, #132]	; (8001328 <_ZN4CIMU8imu_initEv+0xf0>)
 80012a2:	213c      	movs	r1, #60	; 0x3c
 80012a4:	2220      	movs	r2, #32
 80012a6:	2367      	movs	r3, #103	; 0x67
 80012a8:	f7ff feb8 	bl	800101c <_ZN4CI2C9write_regEhhh>
 80012ac:	481e      	ldr	r0, [pc, #120]	; (8001328 <_ZN4CIMU8imu_initEv+0xf0>)
 80012ae:	213c      	movs	r1, #60	; 0x3c
 80012b0:	2221      	movs	r2, #33	; 0x21
 80012b2:	462b      	mov	r3, r5
 80012b4:	f7ff feb2 	bl	800101c <_ZN4CI2C9write_regEhhh>
 80012b8:	3e01      	subs	r6, #1
 80012ba:	d001      	beq.n	80012c0 <_ZN4CIMU8imu_initEv+0x88>
 80012bc:	bf00      	nop
 80012be:	e7fb      	b.n	80012b8 <_ZN4CIMU8imu_initEv+0x80>
 80012c0:	4620      	mov	r0, r4
 80012c2:	f7ff ff11 	bl	80010e8 <_ZN4CIMU8imu_readEv>
 80012c6:	2564      	movs	r5, #100	; 0x64
 80012c8:	4637      	mov	r7, r6
 80012ca:	46b0      	mov	r8, r6
 80012cc:	2365      	movs	r3, #101	; 0x65
 80012ce:	3b01      	subs	r3, #1
 80012d0:	d001      	beq.n	80012d6 <_ZN4CIMU8imu_initEv+0x9e>
 80012d2:	bf00      	nop
 80012d4:	e7fb      	b.n	80012ce <_ZN4CIMU8imu_initEv+0x96>
 80012d6:	4620      	mov	r0, r4
 80012d8:	f7ff ff06 	bl	80010e8 <_ZN4CIMU8imu_readEv>
 80012dc:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80012de:	4498      	add	r8, r3
 80012e0:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80012e2:	441f      	add	r7, r3
 80012e4:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80012e6:	3d01      	subs	r5, #1
 80012e8:	441e      	add	r6, r3
 80012ea:	d1ef      	bne.n	80012cc <_ZN4CIMU8imu_initEv+0x94>
 80012ec:	2264      	movs	r2, #100	; 0x64
 80012ee:	6325      	str	r5, [r4, #48]	; 0x30
 80012f0:	fb98 f3f2 	sdiv	r3, r8, r2
 80012f4:	fb97 f7f2 	sdiv	r7, r7, r2
 80012f8:	fb96 f6f2 	sdiv	r6, r6, r2
 80012fc:	6023      	str	r3, [r4, #0]
 80012fe:	6067      	str	r7, [r4, #4]
 8001300:	60a6      	str	r6, [r4, #8]
 8001302:	6365      	str	r5, [r4, #52]	; 0x34
 8001304:	63a5      	str	r5, [r4, #56]	; 0x38
 8001306:	6265      	str	r5, [r4, #36]	; 0x24
 8001308:	62a5      	str	r5, [r4, #40]	; 0x28
 800130a:	62e5      	str	r5, [r4, #44]	; 0x2c
 800130c:	61a5      	str	r5, [r4, #24]
 800130e:	61e5      	str	r5, [r4, #28]
 8001310:	6225      	str	r5, [r4, #32]
 8001312:	4628      	mov	r0, r5
 8001314:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001318:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800131c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001320:	f06f 0001 	mvn.w	r0, #1
 8001324:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001328:	20000160 	.word	0x20000160
 800132c:	000186a1 	.word	0x000186a1

08001330 <_ZN4CIMU14get_imu_resultEv>:
 8001330:	3018      	adds	r0, #24
 8001332:	4770      	bx	lr

08001334 <_ZN5CGPIO9gpio_initEv>:
 8001334:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8001338:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800133c:	2101      	movs	r1, #1
 800133e:	f000 ff5f 	bl	8002200 <RCC_AHBPeriphClockCmd>
 8001342:	4f22      	ldr	r7, [pc, #136]	; (80013cc <_ZN5CGPIO9gpio_initEv+0x98>)
 8001344:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001348:	2101      	movs	r1, #1
 800134a:	f000 ff59 	bl	8002200 <RCC_AHBPeriphClockCmd>
 800134e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001352:	2101      	movs	r1, #1
 8001354:	f000 ff54 	bl	8002200 <RCC_AHBPeriphClockCmd>
 8001358:	2400      	movs	r4, #0
 800135a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800135e:	2503      	movs	r5, #3
 8001360:	f04f 0801 	mov.w	r8, #1
 8001364:	4638      	mov	r0, r7
 8001366:	4669      	mov	r1, sp
 8001368:	9300      	str	r3, [sp, #0]
 800136a:	2608      	movs	r6, #8
 800136c:	f88d 8004 	strb.w	r8, [sp, #4]
 8001370:	f88d 4006 	strb.w	r4, [sp, #6]
 8001374:	f88d 5005 	strb.w	r5, [sp, #5]
 8001378:	f88d 4007 	strb.w	r4, [sp, #7]
 800137c:	f001 f948 	bl	8002610 <GPIO_Init>
 8001380:	4669      	mov	r1, sp
 8001382:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001386:	9600      	str	r6, [sp, #0]
 8001388:	f88d 8004 	strb.w	r8, [sp, #4]
 800138c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001390:	f88d 5005 	strb.w	r5, [sp, #5]
 8001394:	f88d 4007 	strb.w	r4, [sp, #7]
 8001398:	f001 f93a 	bl	8002610 <GPIO_Init>
 800139c:	f44f 7300 	mov.w	r3, #512	; 0x200
 80013a0:	4638      	mov	r0, r7
 80013a2:	4669      	mov	r1, sp
 80013a4:	9300      	str	r3, [sp, #0]
 80013a6:	f88d 4004 	strb.w	r4, [sp, #4]
 80013aa:	f88d 5005 	strb.w	r5, [sp, #5]
 80013ae:	f88d 4007 	strb.w	r4, [sp, #7]
 80013b2:	f001 f92d 	bl	8002610 <GPIO_Init>
 80013b6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80013ba:	4620      	mov	r0, r4
 80013bc:	851e      	strh	r6, [r3, #40]	; 0x28
 80013be:	4b04      	ldr	r3, [pc, #16]	; (80013d0 <_ZN5CGPIO9gpio_initEv+0x9c>)
 80013c0:	601c      	str	r4, [r3, #0]
 80013c2:	4b04      	ldr	r3, [pc, #16]	; (80013d4 <_ZN5CGPIO9gpio_initEv+0xa0>)
 80013c4:	601c      	str	r4, [r3, #0]
 80013c6:	b002      	add	sp, #8
 80013c8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80013cc:	48000400 	.word	0x48000400
 80013d0:	20000164 	.word	0x20000164
 80013d4:	20000168 	.word	0x20000168

080013d8 <_ZN5CGPIO7gpio_onEm>:
 80013d8:	2908      	cmp	r1, #8
 80013da:	d005      	beq.n	80013e8 <_ZN5CGPIO7gpio_onEm+0x10>
 80013dc:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80013e0:	d105      	bne.n	80013ee <_ZN5CGPIO7gpio_onEm+0x16>
 80013e2:	4b03      	ldr	r3, [pc, #12]	; (80013f0 <_ZN5CGPIO7gpio_onEm+0x18>)
 80013e4:	6199      	str	r1, [r3, #24]
 80013e6:	4770      	bx	lr
 80013e8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80013ec:	8519      	strh	r1, [r3, #40]	; 0x28
 80013ee:	4770      	bx	lr
 80013f0:	48000400 	.word	0x48000400

080013f4 <_ZN5CGPIO8gpio_offEm>:
 80013f4:	2908      	cmp	r1, #8
 80013f6:	d005      	beq.n	8001404 <_ZN5CGPIO8gpio_offEm+0x10>
 80013f8:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80013fc:	d105      	bne.n	800140a <_ZN5CGPIO8gpio_offEm+0x16>
 80013fe:	4b03      	ldr	r3, [pc, #12]	; (800140c <_ZN5CGPIO8gpio_offEm+0x18>)
 8001400:	8519      	strh	r1, [r3, #40]	; 0x28
 8001402:	4770      	bx	lr
 8001404:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001408:	6199      	str	r1, [r3, #24]
 800140a:	4770      	bx	lr
 800140c:	48000400 	.word	0x48000400

08001410 <_ZN5CGPIO7gpio_inEm>:
 8001410:	4b02      	ldr	r3, [pc, #8]	; (800141c <_ZN5CGPIO7gpio_inEm+0xc>)
 8001412:	8a18      	ldrh	r0, [r3, #16]
 8001414:	b280      	uxth	r0, r0
 8001416:	ea21 0000 	bic.w	r0, r1, r0
 800141a:	4770      	bx	lr
 800141c:	48000400 	.word	0x48000400

08001420 <EXTI9_5_IRQHandler>:
 8001420:	4a03      	ldr	r2, [pc, #12]	; (8001430 <EXTI9_5_IRQHandler+0x10>)
 8001422:	6813      	ldr	r3, [r2, #0]
 8001424:	2006      	movs	r0, #6
 8001426:	3301      	adds	r3, #1
 8001428:	6013      	str	r3, [r2, #0]
 800142a:	f001 b8e5 	b.w	80025f8 <EXTI_ClearITPendingBit>
 800142e:	bf00      	nop
 8001430:	20000164 	.word	0x20000164

08001434 <EXTI15_10_IRQHandler>:
 8001434:	4a03      	ldr	r2, [pc, #12]	; (8001444 <EXTI15_10_IRQHandler+0x10>)
 8001436:	6813      	ldr	r3, [r2, #0]
 8001438:	200c      	movs	r0, #12
 800143a:	3301      	adds	r3, #1
 800143c:	6013      	str	r3, [r2, #0]
 800143e:	f001 b8db 	b.w	80025f8 <EXTI_ClearITPendingBit>
 8001442:	bf00      	nop
 8001444:	20000168 	.word	0x20000168

08001448 <_ZN9CTerminal13terminal_initEv>:
 8001448:	b530      	push	{r4, r5, lr}
 800144a:	4a2f      	ldr	r2, [pc, #188]	; (8001508 <_ZN9CTerminal13terminal_initEv+0xc0>)
 800144c:	2300      	movs	r3, #0
 800144e:	6013      	str	r3, [r2, #0]
 8001450:	4a2e      	ldr	r2, [pc, #184]	; (800150c <_ZN9CTerminal13terminal_initEv+0xc4>)
 8001452:	b08b      	sub	sp, #44	; 0x2c
 8001454:	6013      	str	r3, [r2, #0]
 8001456:	4a2e      	ldr	r2, [pc, #184]	; (8001510 <_ZN9CTerminal13terminal_initEv+0xc8>)
 8001458:	2400      	movs	r4, #0
 800145a:	54d4      	strb	r4, [r2, r3]
 800145c:	3301      	adds	r3, #1
 800145e:	2b10      	cmp	r3, #16
 8001460:	d1f9      	bne.n	8001456 <_ZN9CTerminal13terminal_initEv+0xe>
 8001462:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001466:	2101      	movs	r1, #1
 8001468:	f000 feca 	bl	8002200 <RCC_AHBPeriphClockCmd>
 800146c:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001470:	2101      	movs	r1, #1
 8001472:	f000 fed3 	bl	800221c <RCC_APB2PeriphClockCmd>
 8001476:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800147a:	9302      	str	r3, [sp, #8]
 800147c:	2302      	movs	r3, #2
 800147e:	f88d 300c 	strb.w	r3, [sp, #12]
 8001482:	a902      	add	r1, sp, #8
 8001484:	2303      	movs	r3, #3
 8001486:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800148a:	f88d 300d 	strb.w	r3, [sp, #13]
 800148e:	f88d 400e 	strb.w	r4, [sp, #14]
 8001492:	f88d 400f 	strb.w	r4, [sp, #15]
 8001496:	f001 f8bb 	bl	8002610 <GPIO_Init>
 800149a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800149e:	2109      	movs	r1, #9
 80014a0:	2207      	movs	r2, #7
 80014a2:	f001 f8fb 	bl	800269c <GPIO_PinAFConfig>
 80014a6:	2207      	movs	r2, #7
 80014a8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80014ac:	210a      	movs	r1, #10
 80014ae:	f001 f8f5 	bl	800269c <GPIO_PinAFConfig>
 80014b2:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80014b6:	9304      	str	r3, [sp, #16]
 80014b8:	a904      	add	r1, sp, #16
 80014ba:	230c      	movs	r3, #12
 80014bc:	4815      	ldr	r0, [pc, #84]	; (8001514 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80014be:	9308      	str	r3, [sp, #32]
 80014c0:	9405      	str	r4, [sp, #20]
 80014c2:	9406      	str	r4, [sp, #24]
 80014c4:	9407      	str	r4, [sp, #28]
 80014c6:	9409      	str	r4, [sp, #36]	; 0x24
 80014c8:	f000 ff28 	bl	800231c <USART_Init>
 80014cc:	4811      	ldr	r0, [pc, #68]	; (8001514 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80014ce:	2101      	movs	r1, #1
 80014d0:	f000 ff86 	bl	80023e0 <USART_Cmd>
 80014d4:	2201      	movs	r2, #1
 80014d6:	4910      	ldr	r1, [pc, #64]	; (8001518 <_ZN9CTerminal13terminal_initEv+0xd0>)
 80014d8:	480e      	ldr	r0, [pc, #56]	; (8001514 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80014da:	f000 ff91 	bl	8002400 <USART_ITConfig>
 80014de:	2501      	movs	r5, #1
 80014e0:	2325      	movs	r3, #37	; 0x25
 80014e2:	a801      	add	r0, sp, #4
 80014e4:	f88d 3004 	strb.w	r3, [sp, #4]
 80014e8:	f88d 4005 	strb.w	r4, [sp, #5]
 80014ec:	f88d 4006 	strb.w	r4, [sp, #6]
 80014f0:	f88d 5007 	strb.w	r5, [sp, #7]
 80014f4:	f001 f846 	bl	8002584 <NVIC_Init>
 80014f8:	4806      	ldr	r0, [pc, #24]	; (8001514 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80014fa:	4629      	mov	r1, r5
 80014fc:	f000 ff70 	bl	80023e0 <USART_Cmd>
 8001500:	4620      	mov	r0, r4
 8001502:	b00b      	add	sp, #44	; 0x2c
 8001504:	bd30      	pop	{r4, r5, pc}
 8001506:	bf00      	nop
 8001508:	2000016c 	.word	0x2000016c
 800150c:	20000180 	.word	0x20000180
 8001510:	20000170 	.word	0x20000170
 8001514:	40013800 	.word	0x40013800
 8001518:	00050105 	.word	0x00050105

0800151c <USART1_IRQHandler>:
 800151c:	b508      	push	{r3, lr}
 800151e:	480d      	ldr	r0, [pc, #52]	; (8001554 <USART1_IRQHandler+0x38>)
 8001520:	490d      	ldr	r1, [pc, #52]	; (8001558 <USART1_IRQHandler+0x3c>)
 8001522:	f000 ff87 	bl	8002434 <USART_GetITStatus>
 8001526:	b178      	cbz	r0, 8001548 <USART1_IRQHandler+0x2c>
 8001528:	480a      	ldr	r0, [pc, #40]	; (8001554 <USART1_IRQHandler+0x38>)
 800152a:	f000 ff64 	bl	80023f6 <USART_ReceiveData>
 800152e:	4b0b      	ldr	r3, [pc, #44]	; (800155c <USART1_IRQHandler+0x40>)
 8001530:	490b      	ldr	r1, [pc, #44]	; (8001560 <USART1_IRQHandler+0x44>)
 8001532:	681a      	ldr	r2, [r3, #0]
 8001534:	b2c0      	uxtb	r0, r0
 8001536:	5488      	strb	r0, [r1, r2]
 8001538:	681a      	ldr	r2, [r3, #0]
 800153a:	3201      	adds	r2, #1
 800153c:	601a      	str	r2, [r3, #0]
 800153e:	681a      	ldr	r2, [r3, #0]
 8001540:	2a0f      	cmp	r2, #15
 8001542:	bf84      	itt	hi
 8001544:	2200      	movhi	r2, #0
 8001546:	601a      	strhi	r2, [r3, #0]
 8001548:	4802      	ldr	r0, [pc, #8]	; (8001554 <USART1_IRQHandler+0x38>)
 800154a:	4903      	ldr	r1, [pc, #12]	; (8001558 <USART1_IRQHandler+0x3c>)
 800154c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001550:	f000 bf8e 	b.w	8002470 <USART_ClearITPendingBit>
 8001554:	40013800 	.word	0x40013800
 8001558:	00050105 	.word	0x00050105
 800155c:	2000016c 	.word	0x2000016c
 8001560:	20000170 	.word	0x20000170

08001564 <_ZN9CTerminal7putcharEc>:
 8001564:	4b04      	ldr	r3, [pc, #16]	; (8001578 <_ZN9CTerminal7putcharEc+0x14>)
 8001566:	69da      	ldr	r2, [r3, #28]
 8001568:	0612      	lsls	r2, r2, #24
 800156a:	d401      	bmi.n	8001570 <_ZN9CTerminal7putcharEc+0xc>
 800156c:	bf00      	nop
 800156e:	e7f9      	b.n	8001564 <_ZN9CTerminal7putcharEc>
 8001570:	b289      	uxth	r1, r1
 8001572:	8519      	strh	r1, [r3, #40]	; 0x28
 8001574:	4770      	bx	lr
 8001576:	bf00      	nop
 8001578:	40013800 	.word	0x40013800

0800157c <_ZN9CTerminal4putsEPc>:
 800157c:	b538      	push	{r3, r4, r5, lr}
 800157e:	4605      	mov	r5, r0
 8001580:	1e4c      	subs	r4, r1, #1
 8001582:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001586:	b119      	cbz	r1, 8001590 <_ZN9CTerminal4putsEPc+0x14>
 8001588:	4628      	mov	r0, r5
 800158a:	f7ff ffeb 	bl	8001564 <_ZN9CTerminal7putcharEc>
 800158e:	e7f8      	b.n	8001582 <_ZN9CTerminal4putsEPc+0x6>
 8001590:	2001      	movs	r0, #1
 8001592:	bd38      	pop	{r3, r4, r5, pc}

08001594 <_ZN9CTerminal4putiEl>:
 8001594:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001596:	1e0b      	subs	r3, r1, #0
 8001598:	f04f 0200 	mov.w	r2, #0
 800159c:	bfba      	itte	lt
 800159e:	425b      	neglt	r3, r3
 80015a0:	2501      	movlt	r5, #1
 80015a2:	4615      	movge	r5, r2
 80015a4:	f88d 200f 	strb.w	r2, [sp, #15]
 80015a8:	210a      	movs	r1, #10
 80015aa:	220a      	movs	r2, #10
 80015ac:	ac01      	add	r4, sp, #4
 80015ae:	fb93 f6f2 	sdiv	r6, r3, r2
 80015b2:	fb02 3316 	mls	r3, r2, r6, r3
 80015b6:	3330      	adds	r3, #48	; 0x30
 80015b8:	550b      	strb	r3, [r1, r4]
 80015ba:	1e4a      	subs	r2, r1, #1
 80015bc:	4633      	mov	r3, r6
 80015be:	b10e      	cbz	r6, 80015c4 <_ZN9CTerminal4putiEl+0x30>
 80015c0:	4611      	mov	r1, r2
 80015c2:	e7f2      	b.n	80015aa <_ZN9CTerminal4putiEl+0x16>
 80015c4:	b12d      	cbz	r5, 80015d2 <_ZN9CTerminal4putiEl+0x3e>
 80015c6:	ab04      	add	r3, sp, #16
 80015c8:	4413      	add	r3, r2
 80015ca:	212d      	movs	r1, #45	; 0x2d
 80015cc:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80015d0:	4611      	mov	r1, r2
 80015d2:	4421      	add	r1, r4
 80015d4:	f7ff ffd2 	bl	800157c <_ZN9CTerminal4putsEPc>
 80015d8:	b004      	add	sp, #16
 80015da:	bd70      	pop	{r4, r5, r6, pc}

080015dc <_ZN9CTerminal5putuiEm>:
 80015dc:	b530      	push	{r4, r5, lr}
 80015de:	b085      	sub	sp, #20
 80015e0:	2300      	movs	r3, #0
 80015e2:	f88d 300f 	strb.w	r3, [sp, #15]
 80015e6:	220a      	movs	r2, #10
 80015e8:	230a      	movs	r3, #10
 80015ea:	ac01      	add	r4, sp, #4
 80015ec:	fbb1 f5f3 	udiv	r5, r1, r3
 80015f0:	fb03 1315 	mls	r3, r3, r5, r1
 80015f4:	3330      	adds	r3, #48	; 0x30
 80015f6:	5513      	strb	r3, [r2, r4]
 80015f8:	4629      	mov	r1, r5
 80015fa:	1e53      	subs	r3, r2, #1
 80015fc:	b10d      	cbz	r5, 8001602 <_ZN9CTerminal5putuiEm+0x26>
 80015fe:	461a      	mov	r2, r3
 8001600:	e7f2      	b.n	80015e8 <_ZN9CTerminal5putuiEm+0xc>
 8001602:	18a1      	adds	r1, r4, r2
 8001604:	f7ff ffba 	bl	800157c <_ZN9CTerminal4putsEPc>
 8001608:	b005      	add	sp, #20
 800160a:	bd30      	pop	{r4, r5, pc}

0800160c <_ZN9CTerminal4putxEm>:
 800160c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800160e:	2300      	movs	r3, #0
 8001610:	f88d 300f 	strb.w	r3, [sp, #15]
 8001614:	220a      	movs	r2, #10
 8001616:	f001 030f 	and.w	r3, r1, #15
 800161a:	2b09      	cmp	r3, #9
 800161c:	ac01      	add	r4, sp, #4
 800161e:	bfd4      	ite	le
 8001620:	3330      	addle	r3, #48	; 0x30
 8001622:	3357      	addgt	r3, #87	; 0x57
 8001624:	0909      	lsrs	r1, r1, #4
 8001626:	54a3      	strb	r3, [r4, r2]
 8001628:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 800162c:	d001      	beq.n	8001632 <_ZN9CTerminal4putxEm+0x26>
 800162e:	461a      	mov	r2, r3
 8001630:	e7f1      	b.n	8001616 <_ZN9CTerminal4putxEm+0xa>
 8001632:	18a1      	adds	r1, r4, r2
 8001634:	f7ff ffa2 	bl	800157c <_ZN9CTerminal4putsEPc>
 8001638:	b004      	add	sp, #16
 800163a:	bd10      	pop	{r4, pc}

0800163c <_ZN9CTerminal4putfEfj>:
 800163c:	b538      	push	{r3, r4, r5, lr}
 800163e:	2200      	movs	r2, #0
 8001640:	4605      	mov	r5, r0
 8001642:	2301      	movs	r3, #1
 8001644:	428a      	cmp	r2, r1
 8001646:	d003      	beq.n	8001650 <_ZN9CTerminal4putfEfj+0x14>
 8001648:	200a      	movs	r0, #10
 800164a:	4343      	muls	r3, r0
 800164c:	3201      	adds	r2, #1
 800164e:	e7f9      	b.n	8001644 <_ZN9CTerminal4putfEfj+0x8>
 8001650:	eebd 7ac0 	vcvt.s32.f32	s14, s0
 8001654:	4628      	mov	r0, r5
 8001656:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 800165a:	ee17 1a10 	vmov	r1, s14
 800165e:	ee30 0a67 	vsub.f32	s0, s0, s15
 8001662:	ee07 3a90 	vmov	s15, r3
 8001666:	eef8 7a67 	vcvt.f32.u32	s15, s15
 800166a:	ee20 0a27 	vmul.f32	s0, s0, s15
 800166e:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001672:	ee17 4a90 	vmov	r4, s15
 8001676:	f7ff ff8d 	bl	8001594 <_ZN9CTerminal4putiEl>
 800167a:	4628      	mov	r0, r5
 800167c:	212e      	movs	r1, #46	; 0x2e
 800167e:	f7ff ff71 	bl	8001564 <_ZN9CTerminal7putcharEc>
 8001682:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 8001686:	4628      	mov	r0, r5
 8001688:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 800168c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001690:	f7ff bf80 	b.w	8001594 <_ZN9CTerminal4putiEl>

08001694 <_ZN9CTerminal6printfEPKcz>:
 8001694:	b40e      	push	{r1, r2, r3}
 8001696:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001698:	ab07      	add	r3, sp, #28
 800169a:	4604      	mov	r4, r0
 800169c:	f853 6b04 	ldr.w	r6, [r3], #4
 80016a0:	9301      	str	r3, [sp, #4]
 80016a2:	2500      	movs	r5, #0
 80016a4:	5d71      	ldrb	r1, [r6, r5]
 80016a6:	2900      	cmp	r1, #0
 80016a8:	d054      	beq.n	8001754 <_ZN9CTerminal6printfEPKcz+0xc0>
 80016aa:	2925      	cmp	r1, #37	; 0x25
 80016ac:	d004      	beq.n	80016b8 <_ZN9CTerminal6printfEPKcz+0x24>
 80016ae:	4620      	mov	r0, r4
 80016b0:	f7ff ff58 	bl	8001564 <_ZN9CTerminal7putcharEc>
 80016b4:	3501      	adds	r5, #1
 80016b6:	e7f5      	b.n	80016a4 <_ZN9CTerminal6printfEPKcz+0x10>
 80016b8:	1973      	adds	r3, r6, r5
 80016ba:	7859      	ldrb	r1, [r3, #1]
 80016bc:	2969      	cmp	r1, #105	; 0x69
 80016be:	d016      	beq.n	80016ee <_ZN9CTerminal6printfEPKcz+0x5a>
 80016c0:	d807      	bhi.n	80016d2 <_ZN9CTerminal6printfEPKcz+0x3e>
 80016c2:	2963      	cmp	r1, #99	; 0x63
 80016c4:	d02b      	beq.n	800171e <_ZN9CTerminal6printfEPKcz+0x8a>
 80016c6:	2966      	cmp	r1, #102	; 0x66
 80016c8:	d031      	beq.n	800172e <_ZN9CTerminal6printfEPKcz+0x9a>
 80016ca:	2925      	cmp	r1, #37	; 0x25
 80016cc:	d140      	bne.n	8001750 <_ZN9CTerminal6printfEPKcz+0xbc>
 80016ce:	4620      	mov	r0, r4
 80016d0:	e02a      	b.n	8001728 <_ZN9CTerminal6printfEPKcz+0x94>
 80016d2:	2975      	cmp	r1, #117	; 0x75
 80016d4:	d013      	beq.n	80016fe <_ZN9CTerminal6printfEPKcz+0x6a>
 80016d6:	2978      	cmp	r1, #120	; 0x78
 80016d8:	d019      	beq.n	800170e <_ZN9CTerminal6printfEPKcz+0x7a>
 80016da:	2973      	cmp	r1, #115	; 0x73
 80016dc:	d138      	bne.n	8001750 <_ZN9CTerminal6printfEPKcz+0xbc>
 80016de:	9b01      	ldr	r3, [sp, #4]
 80016e0:	4620      	mov	r0, r4
 80016e2:	1d1a      	adds	r2, r3, #4
 80016e4:	6819      	ldr	r1, [r3, #0]
 80016e6:	9201      	str	r2, [sp, #4]
 80016e8:	f7ff ff48 	bl	800157c <_ZN9CTerminal4putsEPc>
 80016ec:	e030      	b.n	8001750 <_ZN9CTerminal6printfEPKcz+0xbc>
 80016ee:	9b01      	ldr	r3, [sp, #4]
 80016f0:	4620      	mov	r0, r4
 80016f2:	1d1a      	adds	r2, r3, #4
 80016f4:	6819      	ldr	r1, [r3, #0]
 80016f6:	9201      	str	r2, [sp, #4]
 80016f8:	f7ff ff4c 	bl	8001594 <_ZN9CTerminal4putiEl>
 80016fc:	e028      	b.n	8001750 <_ZN9CTerminal6printfEPKcz+0xbc>
 80016fe:	9b01      	ldr	r3, [sp, #4]
 8001700:	4620      	mov	r0, r4
 8001702:	1d1a      	adds	r2, r3, #4
 8001704:	6819      	ldr	r1, [r3, #0]
 8001706:	9201      	str	r2, [sp, #4]
 8001708:	f7ff ff68 	bl	80015dc <_ZN9CTerminal5putuiEm>
 800170c:	e020      	b.n	8001750 <_ZN9CTerminal6printfEPKcz+0xbc>
 800170e:	9b01      	ldr	r3, [sp, #4]
 8001710:	4620      	mov	r0, r4
 8001712:	1d1a      	adds	r2, r3, #4
 8001714:	6819      	ldr	r1, [r3, #0]
 8001716:	9201      	str	r2, [sp, #4]
 8001718:	f7ff ff78 	bl	800160c <_ZN9CTerminal4putxEm>
 800171c:	e018      	b.n	8001750 <_ZN9CTerminal6printfEPKcz+0xbc>
 800171e:	9b01      	ldr	r3, [sp, #4]
 8001720:	1d1a      	adds	r2, r3, #4
 8001722:	7819      	ldrb	r1, [r3, #0]
 8001724:	9201      	str	r2, [sp, #4]
 8001726:	4620      	mov	r0, r4
 8001728:	f7ff ff1c 	bl	8001564 <_ZN9CTerminal7putcharEc>
 800172c:	e010      	b.n	8001750 <_ZN9CTerminal6printfEPKcz+0xbc>
 800172e:	9b01      	ldr	r3, [sp, #4]
 8001730:	3307      	adds	r3, #7
 8001732:	f023 0307 	bic.w	r3, r3, #7
 8001736:	f103 0208 	add.w	r2, r3, #8
 800173a:	e9d3 0100 	ldrd	r0, r1, [r3]
 800173e:	9201      	str	r2, [sp, #4]
 8001740:	f001 f84a 	bl	80027d8 <__aeabi_d2f>
 8001744:	2103      	movs	r1, #3
 8001746:	ee00 0a10 	vmov	s0, r0
 800174a:	4620      	mov	r0, r4
 800174c:	f7ff ff76 	bl	800163c <_ZN9CTerminal4putfEfj>
 8001750:	3502      	adds	r5, #2
 8001752:	e7a7      	b.n	80016a4 <_ZN9CTerminal6printfEPKcz+0x10>
 8001754:	b003      	add	sp, #12
 8001756:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800175a:	b003      	add	sp, #12
 800175c:	4770      	bx	lr

0800175e <_ZN10MathVectorILj4EE4initEv>:
 800175e:	2300      	movs	r3, #0
 8001760:	6003      	str	r3, [r0, #0]
 8001762:	6043      	str	r3, [r0, #4]
 8001764:	6083      	str	r3, [r0, #8]
 8001766:	60c3      	str	r3, [r0, #12]
 8001768:	4770      	bx	lr

0800176a <_ZN10MathVectorILj3EE3mixERS0_f>:
 800176a:	f100 030c 	add.w	r3, r0, #12
 800176e:	ecf1 7a01 	vldmia	r1!, {s15}
 8001772:	edd0 6a00 	vldr	s13, [r0]
 8001776:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 800177a:	ee37 7a40 	vsub.f32	s14, s14, s0
 800177e:	ee60 7a27 	vmul.f32	s15, s0, s15
 8001782:	eee7 7a26 	vfma.f32	s15, s14, s13
 8001786:	ece0 7a01 	vstmia	r0!, {s15}
 800178a:	4298      	cmp	r0, r3
 800178c:	d1ef      	bne.n	800176e <_ZN10MathVectorILj3EE3mixERS0_f+0x4>
 800178e:	4770      	bx	lr

08001790 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>:
 8001790:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001792:	eddf 6a17 	vldr	s13, [pc, #92]	; 80017f0 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x60>
 8001796:	4603      	mov	r3, r0
 8001798:	2600      	movs	r6, #0
 800179a:	f8d0 0380 	ldr.w	r0, [r0, #896]	; 0x380
 800179e:	461c      	mov	r4, r3
 80017a0:	4635      	mov	r5, r6
 80017a2:	4285      	cmp	r5, r0
 80017a4:	d019      	beq.n	80017da <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x4a>
 80017a6:	eddf 7a13 	vldr	s15, [pc, #76]	; 80017f4 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x64>
 80017aa:	468e      	mov	lr, r1
 80017ac:	f104 0710 	add.w	r7, r4, #16
 80017b0:	ecb4 6a01 	vldmia	r4!, {s12}
 80017b4:	ecbe 7a01 	vldmia	lr!, {s14}
 80017b8:	ee37 7a46 	vsub.f32	s14, s14, s12
 80017bc:	42bc      	cmp	r4, r7
 80017be:	eee7 7a07 	vfma.f32	s15, s14, s14
 80017c2:	d1f5      	bne.n	80017b0 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x20>
 80017c4:	eef4 7ae6 	vcmpe.f32	s15, s13
 80017c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80017cc:	bf44      	itt	mi
 80017ce:	462e      	movmi	r6, r5
 80017d0:	eef0 6a67 	vmovmi.f32	s13, s15
 80017d4:	3501      	adds	r5, #1
 80017d6:	463c      	mov	r4, r7
 80017d8:	e7e3      	b.n	80017a2 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x12>
 80017da:	f503 7300 	add.w	r3, r3, #512	; 0x200
 80017de:	210c      	movs	r1, #12
 80017e0:	4610      	mov	r0, r2
 80017e2:	fb01 3106 	mla	r1, r1, r6, r3
 80017e6:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80017ea:	f7ff ffbe 	bl	800176a <_ZN10MathVectorILj3EE3mixERS0_f>
 80017ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80017f0:	4cbebc20 	.word	0x4cbebc20
 80017f4:	00000000 	.word	0x00000000

080017f8 <_ZN21CLearningLineFollower3runEv>:
 80017f8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80017fc:	2310      	movs	r3, #16
 80017fe:	ed2d 8b06 	vpush	{d8-d10}
 8001802:	f100 0650 	add.w	r6, r0, #80	; 0x50
 8001806:	f8c0 33d0 	str.w	r3, [r0, #976]	; 0x3d0
 800180a:	4bc9      	ldr	r3, [pc, #804]	; (8001b30 <_ZN21CLearningLineFollower3runEv+0x338>)
 800180c:	f8c0 33d4 	str.w	r3, [r0, #980]	; 0x3d4
 8001810:	4604      	mov	r4, r0
 8001812:	f500 7814 	add.w	r8, r0, #592	; 0x250
 8001816:	4635      	mov	r5, r6
 8001818:	f105 0710 	add.w	r7, r5, #16
 800181c:	48c5      	ldr	r0, [pc, #788]	; (8001b34 <_ZN21CLearningLineFollower3runEv+0x33c>)
 800181e:	f7fe fe9f 	bl	8000560 <_ZN5CMath3rndEv>
 8001822:	eca5 0a01 	vstmia	r5!, {s0}
 8001826:	42bd      	cmp	r5, r7
 8001828:	d1f8      	bne.n	800181c <_ZN21CLearningLineFollower3runEv+0x24>
 800182a:	4545      	cmp	r5, r8
 800182c:	d1f4      	bne.n	8001818 <_ZN21CLearningLineFollower3runEv+0x20>
 800182e:	4623      	mov	r3, r4
 8001830:	f504 72c0 	add.w	r2, r4, #384	; 0x180
 8001834:	eddf 8ac0 	vldr	s17, [pc, #768]	; 8001b38 <_ZN21CLearningLineFollower3runEv+0x340>
 8001838:	330c      	adds	r3, #12
 800183a:	edc3 8a91 	vstr	s17, [r3, #580]	; 0x244
 800183e:	edc3 8a92 	vstr	s17, [r3, #584]	; 0x248
 8001842:	edc3 8a93 	vstr	s17, [r3, #588]	; 0x24c
 8001846:	4293      	cmp	r3, r2
 8001848:	d1f4      	bne.n	8001834 <_ZN21CLearningLineFollower3runEv+0x3c>
 800184a:	2300      	movs	r3, #0
 800184c:	f104 0530 	add.w	r5, r4, #48	; 0x30
 8001850:	62a3      	str	r3, [r4, #40]	; 0x28
 8001852:	62e3      	str	r3, [r4, #44]	; 0x2c
 8001854:	4628      	mov	r0, r5
 8001856:	f104 0940 	add.w	r9, r4, #64	; 0x40
 800185a:	f7ff ff80 	bl	800175e <_ZN10MathVectorILj4EE4initEv>
 800185e:	4648      	mov	r0, r9
 8001860:	f7ff ff7d 	bl	800175e <_ZN10MathVectorILj4EE4initEv>
 8001864:	eebf aa00 	vmov.f32	s20, #240	; 0xbf800000 -1.0
 8001868:	edc4 8af6 	vstr	s17, [r4, #984]	; 0x3d8
 800186c:	edc4 8af7 	vstr	s17, [r4, #988]	; 0x3dc
 8001870:	edc4 8af8 	vstr	s17, [r4, #992]	; 0x3e0
 8001874:	2100      	movs	r1, #0
 8001876:	48b1      	ldr	r0, [pc, #708]	; (8001b3c <_ZN21CLearningLineFollower3runEv+0x344>)
 8001878:	f7fe ff4e 	bl	8000718 <_ZN4CRGB8rgb_readEh>
 800187c:	48af      	ldr	r0, [pc, #700]	; (8001b3c <_ZN21CLearningLineFollower3runEv+0x344>)
 800187e:	f7ff f8e7 	bl	8000a50 <_ZN4CRGB14get_rgb_resultEv>
 8001882:	f104 0718 	add.w	r7, r4, #24
 8001886:	4601      	mov	r1, r0
 8001888:	4620      	mov	r0, r4
 800188a:	f7fe fd51 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 800188e:	4639      	mov	r1, r7
 8001890:	4620      	mov	r0, r4
 8001892:	f7fe fdea 	bl	800046a <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>
 8001896:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 800189a:	f104 0e40 	add.w	lr, r4, #64	; 0x40
 800189e:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 80018a2:	e897 000f 	ldmia.w	r7, {r0, r1, r2, r3}
 80018a6:	f504 7776 	add.w	r7, r4, #984	; 0x3d8
 80018aa:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 80018ae:	463a      	mov	r2, r7
 80018b0:	4630      	mov	r0, r6
 80018b2:	4629      	mov	r1, r5
 80018b4:	f7ff ff6c 	bl	8001790 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 80018b8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80018ba:	62a3      	str	r3, [r4, #40]	; 0x28
 80018bc:	489d      	ldr	r0, [pc, #628]	; (8001b34 <_ZN21CLearningLineFollower3runEv+0x33c>)
 80018be:	f7fe fe35 	bl	800052c <_ZN5CMath4randEv>
 80018c2:	2364      	movs	r3, #100	; 0x64
 80018c4:	fbb0 f2f3 	udiv	r2, r0, r3
 80018c8:	fb02 0013 	mls	r0, r2, r3, r0
 80018cc:	2813      	cmp	r0, #19
 80018ce:	d80b      	bhi.n	80018e8 <_ZN21CLearningLineFollower3runEv+0xf0>
 80018d0:	4898      	ldr	r0, [pc, #608]	; (8001b34 <_ZN21CLearningLineFollower3runEv+0x33c>)
 80018d2:	f7fe fe2b 	bl	800052c <_ZN5CMath4randEv>
 80018d6:	f04f 0a03 	mov.w	sl, #3
 80018da:	fbb0 fafa 	udiv	sl, r0, sl
 80018de:	eb0a 0a4a 	add.w	sl, sl, sl, lsl #1
 80018e2:	ebca 0a00 	rsb	sl, sl, r0
 80018e6:	e012      	b.n	800190e <_ZN21CLearningLineFollower3runEv+0x116>
 80018e8:	f04f 0a00 	mov.w	sl, #0
 80018ec:	463a      	mov	r2, r7
 80018ee:	4653      	mov	r3, sl
 80018f0:	eb04 018a 	add.w	r1, r4, sl, lsl #2
 80018f4:	ecb2 7a01 	vldmia	r2!, {s14}
 80018f8:	edd1 7af6 	vldr	s15, [r1, #984]	; 0x3d8
 80018fc:	eeb4 7a67 	vcmp.f32	s14, s15
 8001900:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001904:	bfc8      	it	gt
 8001906:	469a      	movgt	sl, r3
 8001908:	3301      	adds	r3, #1
 800190a:	2b03      	cmp	r3, #3
 800190c:	d1f0      	bne.n	80018f0 <_ZN21CLearningLineFollower3runEv+0xf8>
 800190e:	f1ba 0f01 	cmp.w	sl, #1
 8001912:	f8c4 a02c 	str.w	sl, [r4, #44]	; 0x2c
 8001916:	d015      	beq.n	8001944 <_ZN21CLearningLineFollower3runEv+0x14c>
 8001918:	d30c      	bcc.n	8001934 <_ZN21CLearningLineFollower3runEv+0x13c>
 800191a:	f1ba 0f02 	cmp.w	sl, #2
 800191e:	d11c      	bne.n	800195a <_ZN21CLearningLineFollower3runEv+0x162>
 8001920:	4887      	ldr	r0, [pc, #540]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001922:	2100      	movs	r1, #0
 8001924:	220e      	movs	r2, #14
 8001926:	f7ff f92b 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 800192a:	4885      	ldr	r0, [pc, #532]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 800192c:	2101      	movs	r1, #1
 800192e:	f06f 0204 	mvn.w	r2, #4
 8001932:	e010      	b.n	8001956 <_ZN21CLearningLineFollower3runEv+0x15e>
 8001934:	4882      	ldr	r0, [pc, #520]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001936:	2100      	movs	r1, #0
 8001938:	220e      	movs	r2, #14
 800193a:	f7ff f921 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 800193e:	4880      	ldr	r0, [pc, #512]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001940:	2101      	movs	r1, #1
 8001942:	e007      	b.n	8001954 <_ZN21CLearningLineFollower3runEv+0x15c>
 8001944:	487e      	ldr	r0, [pc, #504]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001946:	2100      	movs	r1, #0
 8001948:	f06f 0204 	mvn.w	r2, #4
 800194c:	f7ff f918 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001950:	487b      	ldr	r0, [pc, #492]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001952:	4651      	mov	r1, sl
 8001954:	220e      	movs	r2, #14
 8001956:	f7ff f913 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 800195a:	487a      	ldr	r0, [pc, #488]	; (8001b44 <_ZN21CLearningLineFollower3runEv+0x34c>)
 800195c:	2132      	movs	r1, #50	; 0x32
 800195e:	f7fe fea7 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001962:	2100      	movs	r1, #0
 8001964:	4875      	ldr	r0, [pc, #468]	; (8001b3c <_ZN21CLearningLineFollower3runEv+0x344>)
 8001966:	f7fe fed7 	bl	8000718 <_ZN4CRGB8rgb_readEh>
 800196a:	4874      	ldr	r0, [pc, #464]	; (8001b3c <_ZN21CLearningLineFollower3runEv+0x344>)
 800196c:	f7ff f870 	bl	8000a50 <_ZN4CRGB14get_rgb_resultEv>
 8001970:	4601      	mov	r1, r0
 8001972:	4620      	mov	r0, r4
 8001974:	f7fe fcdc 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 8001978:	4620      	mov	r0, r4
 800197a:	f7fe fd73 	bl	8000464 <_ZN13CLinePosition17get_line_positionEv>
 800197e:	486d      	ldr	r0, [pc, #436]	; (8001b34 <_ZN21CLearningLineFollower3runEv+0x33c>)
 8001980:	f7fe fdcb 	bl	800051a <_ZN5CMath3absEf>
 8001984:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
 8001988:	f8d4 b02c 	ldr.w	fp, [r4, #44]	; 0x2c
 800198c:	f8d4 a028 	ldr.w	sl, [r4, #40]	; 0x28
 8001990:	ee39 0ac0 	vsub.f32	s0, s19, s0
 8001994:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 8001998:	4630      	mov	r0, r6
 800199a:	4629      	mov	r1, r5
 800199c:	463a      	mov	r2, r7
 800199e:	eb04 0b8b 	add.w	fp, r4, fp, lsl #2
 80019a2:	ee30 9a67 	vsub.f32	s18, s0, s15
 80019a6:	f7ff fef3 	bl	8001790 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 80019aa:	edd4 7af6 	vldr	s15, [r4, #984]	; 0x3d8
 80019ae:	ed9b 8af6 	vldr	s16, [fp, #984]	; 0x3d8
 80019b2:	eeb4 8a67 	vcmp.f32	s16, s15
 80019b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80019ba:	bf48      	it	mi
 80019bc:	eeb0 8a67 	vmovmi.f32	s16, s15
 80019c0:	edd4 7af7 	vldr	s15, [r4, #988]	; 0x3dc
 80019c4:	eeb4 8a67 	vcmp.f32	s16, s15
 80019c8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80019cc:	bf48      	it	mi
 80019ce:	eeb0 8a67 	vmovmi.f32	s16, s15
 80019d2:	edd4 7af8 	vldr	s15, [r4, #992]	; 0x3e0
 80019d6:	eeb4 8a67 	vcmp.f32	s16, s15
 80019da:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80019de:	4630      	mov	r0, r6
 80019e0:	4649      	mov	r1, r9
 80019e2:	463a      	mov	r2, r7
 80019e4:	bf48      	it	mi
 80019e6:	eeb0 8a67 	vmovmi.f32	s16, s15
 80019ea:	f7ff fed1 	bl	8001790 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 80019ee:	eddf 7a56 	vldr	s15, [pc, #344]	; 8001b48 <_ZN21CLearningLineFollower3runEv+0x350>
 80019f2:	f8d4 03d0 	ldr.w	r0, [r4, #976]	; 0x3d0
 80019f6:	eddf 6a55 	vldr	s13, [pc, #340]	; 8001b4c <_ZN21CLearningLineFollower3runEv+0x354>
 80019fa:	eeb0 7a49 	vmov.f32	s14, s18
 80019fe:	eea8 7a27 	vfma.f32	s14, s16, s15
 8001a02:	eb04 0a8a 	add.w	sl, r4, sl, lsl #2
 8001a06:	2100      	movs	r1, #0
 8001a08:	46b6      	mov	lr, r6
 8001a0a:	ed8a 7af6 	vstr	s14, [sl, #984]	; 0x3d8
 8001a0e:	460a      	mov	r2, r1
 8001a10:	4282      	cmp	r2, r0
 8001a12:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8001a16:	d018      	beq.n	8001a4a <_ZN21CLearningLineFollower3runEv+0x252>
 8001a18:	eddf 7a47 	vldr	s15, [pc, #284]	; 8001b38 <_ZN21CLearningLineFollower3runEv+0x340>
 8001a1c:	46f4      	mov	ip, lr
 8001a1e:	ecb3 7a01 	vldmia	r3!, {s14}
 8001a22:	ecbc 6a01 	vldmia	ip!, {s12}
 8001a26:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001a2a:	42b3      	cmp	r3, r6
 8001a2c:	eee7 7a07 	vfma.f32	s15, s14, s14
 8001a30:	d1f5      	bne.n	8001a1e <_ZN21CLearningLineFollower3runEv+0x226>
 8001a32:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001a36:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a3a:	bf44      	itt	mi
 8001a3c:	4611      	movmi	r1, r2
 8001a3e:	eef0 6a67 	vmovmi.f32	s13, s15
 8001a42:	3201      	adds	r2, #1
 8001a44:	f10e 0e10 	add.w	lr, lr, #16
 8001a48:	e7e2      	b.n	8001a10 <_ZN21CLearningLineFollower3runEv+0x218>
 8001a4a:	281f      	cmp	r0, #31
 8001a4c:	d81a      	bhi.n	8001a84 <_ZN21CLearningLineFollower3runEv+0x28c>
 8001a4e:	1d42      	adds	r2, r0, #5
 8001a50:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 8001a54:	ecf3 7a01 	vldmia	r3!, {s15}
 8001a58:	ed92 7a00 	vldr	s14, [r2]
 8001a5c:	eee7 7a28 	vfma.f32	s15, s14, s17
 8001a60:	42b3      	cmp	r3, r6
 8001a62:	ece2 7a01 	vstmia	r2!, {s15}
 8001a66:	d1f5      	bne.n	8001a54 <_ZN21CLearningLineFollower3runEv+0x25c>
 8001a68:	230c      	movs	r3, #12
 8001a6a:	fb03 8000 	mla	r0, r3, r0, r8
 8001a6e:	4639      	mov	r1, r7
 8001a70:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8001a74:	f7ff fe79 	bl	800176a <_ZN10MathVectorILj3EE3mixERS0_f>
 8001a78:	f8d4 33d0 	ldr.w	r3, [r4, #976]	; 0x3d0
 8001a7c:	3301      	adds	r3, #1
 8001a7e:	f8c4 33d0 	str.w	r3, [r4, #976]	; 0x3d0
 8001a82:	e01a      	b.n	8001aba <_ZN21CLearningLineFollower3runEv+0x2c2>
 8001a84:	1d4a      	adds	r2, r1, #5
 8001a86:	edd4 6af5 	vldr	s13, [r4, #980]	; 0x3d4
 8001a8a:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 8001a8e:	ecf3 7a01 	vldmia	r3!, {s15}
 8001a92:	ed92 6a00 	vldr	s12, [r2]
 8001a96:	ee39 7ae6 	vsub.f32	s14, s19, s13
 8001a9a:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8001a9e:	42b3      	cmp	r3, r6
 8001aa0:	eee7 7a06 	vfma.f32	s15, s14, s12
 8001aa4:	ece2 7a01 	vstmia	r2!, {s15}
 8001aa8:	d1f1      	bne.n	8001a8e <_ZN21CLearningLineFollower3runEv+0x296>
 8001aaa:	200c      	movs	r0, #12
 8001aac:	fb00 8001 	mla	r0, r0, r1, r8
 8001ab0:	ed94 0af5 	vldr	s0, [r4, #980]	; 0x3d4
 8001ab4:	4639      	mov	r1, r7
 8001ab6:	f7ff fe58 	bl	800176a <_ZN10MathVectorILj3EE3mixERS0_f>
 8001aba:	4620      	mov	r0, r4
 8001abc:	f7fe fcd0 	bl	8000460 <_ZN13CLinePosition7on_lineEv>
 8001ac0:	4607      	mov	r7, r0
 8001ac2:	b9f0      	cbnz	r0, 8001b02 <_ZN21CLearningLineFollower3runEv+0x30a>
 8001ac4:	481e      	ldr	r0, [pc, #120]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001ac6:	4639      	mov	r1, r7
 8001ac8:	f06f 020d 	mvn.w	r2, #13
 8001acc:	f7ff f858 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001ad0:	f06f 020d 	mvn.w	r2, #13
 8001ad4:	481a      	ldr	r0, [pc, #104]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001ad6:	2101      	movs	r1, #1
 8001ad8:	f7ff f852 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001adc:	4819      	ldr	r0, [pc, #100]	; (8001b44 <_ZN21CLearningLineFollower3runEv+0x34c>)
 8001ade:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 8001ae2:	f7fe fde5 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001ae6:	4816      	ldr	r0, [pc, #88]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001ae8:	4639      	mov	r1, r7
 8001aea:	463a      	mov	r2, r7
 8001aec:	f7ff f848 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001af0:	4813      	ldr	r0, [pc, #76]	; (8001b40 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001af2:	2101      	movs	r1, #1
 8001af4:	463a      	mov	r2, r7
 8001af6:	f7ff f843 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001afa:	4812      	ldr	r0, [pc, #72]	; (8001b44 <_ZN21CLearningLineFollower3runEv+0x34c>)
 8001afc:	2164      	movs	r1, #100	; 0x64
 8001afe:	f7fe fdd7 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001b02:	ed9f 0a13 	vldr	s0, [pc, #76]	; 8001b50 <_ZN21CLearningLineFollower3runEv+0x358>
 8001b06:	eddf 7a13 	vldr	s15, [pc, #76]	; 8001b54 <_ZN21CLearningLineFollower3runEv+0x35c>
 8001b0a:	480c      	ldr	r0, [pc, #48]	; (8001b3c <_ZN21CLearningLineFollower3runEv+0x344>)
 8001b0c:	4912      	ldr	r1, [pc, #72]	; (8001b58 <_ZN21CLearningLineFollower3runEv+0x360>)
 8001b0e:	ee29 9a00 	vmul.f32	s18, s18, s0
 8001b12:	eeaa 9a27 	vfma.f32	s18, s20, s15
 8001b16:	eddf 7a11 	vldr	s15, [pc, #68]	; 8001b5c <_ZN21CLearningLineFollower3runEv+0x364>
 8001b1a:	ee69 7a27 	vmul.f32	s15, s18, s15
 8001b1e:	eeb0 aa49 	vmov.f32	s20, s18
 8001b22:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001b26:	ee17 2a90 	vmov	r2, s15
 8001b2a:	f7ff fdb3 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001b2e:	e6a1      	b.n	8001874 <_ZN21CLearningLineFollower3runEv+0x7c>
 8001b30:	3dcccccd 	.word	0x3dcccccd
 8001b34:	20000108 	.word	0x20000108
 8001b38:	00000000 	.word	0x00000000
 8001b3c:	20000030 	.word	0x20000030
 8001b40:	200000f4 	.word	0x200000f4
 8001b44:	2000013c 	.word	0x2000013c
 8001b48:	3f666666 	.word	0x3f666666
 8001b4c:	4cbebc20 	.word	0x4cbebc20
 8001b50:	3c23d70a 	.word	0x3c23d70a
 8001b54:	3f7d70a4 	.word	0x3f7d70a4
 8001b58:	080028d0 	.word	0x080028d0
 8001b5c:	447a0000 	.word	0x447a0000

08001b60 <_ZN5CDemo4initEv>:
 8001b60:	4770      	bx	lr
	...

08001b64 <_ZN5CDemo10blink_taskEv>:
 8001b64:	b508      	push	{r3, lr}
 8001b66:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001b6a:	480a      	ldr	r0, [pc, #40]	; (8001b94 <_ZN5CDemo10blink_taskEv+0x30>)
 8001b6c:	f7ff fc34 	bl	80013d8 <_ZN5CGPIO7gpio_onEm>
 8001b70:	4809      	ldr	r0, [pc, #36]	; (8001b98 <_ZN5CDemo10blink_taskEv+0x34>)
 8001b72:	f7fe fd8f 	bl	8000694 <_ZN6CTimer8get_timeEv>
 8001b76:	4909      	ldr	r1, [pc, #36]	; (8001b9c <_ZN5CDemo10blink_taskEv+0x38>)
 8001b78:	4602      	mov	r2, r0
 8001b7a:	4806      	ldr	r0, [pc, #24]	; (8001b94 <_ZN5CDemo10blink_taskEv+0x30>)
 8001b7c:	f7ff fd8a 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001b80:	4805      	ldr	r0, [pc, #20]	; (8001b98 <_ZN5CDemo10blink_taskEv+0x34>)
 8001b82:	210a      	movs	r1, #10
 8001b84:	f7fe fd94 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001b88:	4802      	ldr	r0, [pc, #8]	; (8001b94 <_ZN5CDemo10blink_taskEv+0x30>)
 8001b8a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001b8e:	f7ff fc31 	bl	80013f4 <_ZN5CGPIO8gpio_offEm>
 8001b92:	e7e8      	b.n	8001b66 <_ZN5CDemo10blink_taskEv+0x2>
 8001b94:	20000030 	.word	0x20000030
 8001b98:	2000013c 	.word	0x2000013c
 8001b9c:	080028b8 	.word	0x080028b8

08001ba0 <_ZN5CDemo10moves_taskEv>:
 8001ba0:	b570      	push	{r4, r5, r6, lr}
 8001ba2:	4c1c      	ldr	r4, [pc, #112]	; (8001c14 <_ZN5CDemo10moves_taskEv+0x74>)
 8001ba4:	4d1c      	ldr	r5, [pc, #112]	; (8001c18 <_ZN5CDemo10moves_taskEv+0x78>)
 8001ba6:	4620      	mov	r0, r4
 8001ba8:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001bac:	2216      	movs	r2, #22
 8001bae:	2300      	movs	r3, #0
 8001bb0:	f7fe fb5e 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001bb4:	4620      	mov	r0, r4
 8001bb6:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001bba:	2216      	movs	r2, #22
 8001bbc:	2300      	movs	r3, #0
 8001bbe:	f7fe fb57 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001bc2:	4620      	mov	r0, r4
 8001bc4:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001bc8:	2216      	movs	r2, #22
 8001bca:	2300      	movs	r3, #0
 8001bcc:	f7fe fb50 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001bd0:	4620      	mov	r0, r4
 8001bd2:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001bd6:	2216      	movs	r2, #22
 8001bd8:	2300      	movs	r3, #0
 8001bda:	f7fe fb49 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001bde:	4620      	mov	r0, r4
 8001be0:	4629      	mov	r1, r5
 8001be2:	2216      	movs	r2, #22
 8001be4:	2300      	movs	r3, #0
 8001be6:	f7fe fb43 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001bea:	4620      	mov	r0, r4
 8001bec:	4629      	mov	r1, r5
 8001bee:	2216      	movs	r2, #22
 8001bf0:	2300      	movs	r3, #0
 8001bf2:	f7fe fb3d 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001bf6:	4620      	mov	r0, r4
 8001bf8:	4629      	mov	r1, r5
 8001bfa:	2216      	movs	r2, #22
 8001bfc:	2300      	movs	r3, #0
 8001bfe:	f7fe fb37 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c02:	4620      	mov	r0, r4
 8001c04:	4629      	mov	r1, r5
 8001c06:	2216      	movs	r2, #22
 8001c08:	2300      	movs	r3, #0
 8001c0a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001c0e:	f7fe bb2f 	b.w	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c12:	bf00      	nop
 8001c14:	20000030 	.word	0x20000030
 8001c18:	fffffc7c 	.word	0xfffffc7c

08001c1c <_ZN5CDemo24basic_line_follower_taskEv>:
 8001c1c:	b510      	push	{r4, lr}
 8001c1e:	b08e      	sub	sp, #56	; 0x38
 8001c20:	4668      	mov	r0, sp
 8001c22:	f7fe fb7b 	bl	800031c <_ZN13CLinePositionC1Ev>
 8001c26:	a806      	add	r0, sp, #24
 8001c28:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8001c2c:	eddf 0a38 	vldr	s1, [pc, #224]	; 8001d10 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001c30:	eddf 1a38 	vldr	s3, [pc, #224]	; 8001d14 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8001c34:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 8001c38:	f7fe fc36 	bl	80004a8 <_ZN4CPIDC1Effff>
 8001c3c:	4836      	ldr	r0, [pc, #216]	; (8001d18 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001c3e:	2100      	movs	r1, #0
 8001c40:	220a      	movs	r2, #10
 8001c42:	f7fe fd47 	bl	80006d4 <_ZN6CTimer22event_timer_set_periodEhm>
 8001c46:	4834      	ldr	r0, [pc, #208]	; (8001d18 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001c48:	2100      	movs	r1, #0
 8001c4a:	f7fe fd57 	bl	80006fc <_ZN6CTimer17event_timer_checkEh>
 8001c4e:	2800      	cmp	r0, #0
 8001c50:	d0f9      	beq.n	8001c46 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001c52:	2100      	movs	r1, #0
 8001c54:	4831      	ldr	r0, [pc, #196]	; (8001d1c <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001c56:	f7fe fd5f 	bl	8000718 <_ZN4CRGB8rgb_readEh>
 8001c5a:	4830      	ldr	r0, [pc, #192]	; (8001d1c <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001c5c:	f7fe fef8 	bl	8000a50 <_ZN4CRGB14get_rgb_resultEv>
 8001c60:	4601      	mov	r1, r0
 8001c62:	4668      	mov	r0, sp
 8001c64:	f7fe fb64 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 8001c68:	4668      	mov	r0, sp
 8001c6a:	f7fe fbf9 	bl	8000460 <_ZN13CLinePosition7on_lineEv>
 8001c6e:	4604      	mov	r4, r0
 8001c70:	4668      	mov	r0, sp
 8001c72:	f7fe fbf7 	bl	8000464 <_ZN13CLinePosition17get_line_positionEv>
 8001c76:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8001d20 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 8001c7a:	4828      	ldr	r0, [pc, #160]	; (8001d1c <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001c7c:	4929      	ldr	r1, [pc, #164]	; (8001d24 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001c7e:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001c82:	4622      	mov	r2, r4
 8001c84:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001c88:	ee17 3a90 	vmov	r3, s15
 8001c8c:	f7ff fd02 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001c90:	4668      	mov	r0, sp
 8001c92:	f7fe fbe5 	bl	8000460 <_ZN13CLinePosition7on_lineEv>
 8001c96:	4604      	mov	r4, r0
 8001c98:	b1d0      	cbz	r0, 8001cd0 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 8001c9a:	4668      	mov	r0, sp
 8001c9c:	f7fe fbe2 	bl	8000464 <_ZN13CLinePosition17get_line_positionEv>
 8001ca0:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8001d10 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001ca4:	a806      	add	r0, sp, #24
 8001ca6:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8001caa:	f7fe fc03 	bl	80004b4 <_ZN4CPID7processEf>
 8001cae:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001cb2:	481d      	ldr	r0, [pc, #116]	; (8001d28 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001cb4:	ee17 4a90 	vmov	r4, s15
 8001cb8:	2100      	movs	r1, #0
 8001cba:	f104 020b 	add.w	r2, r4, #11
 8001cbe:	f7fe ff5f 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001cc2:	4819      	ldr	r0, [pc, #100]	; (8001d28 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001cc4:	2101      	movs	r1, #1
 8001cc6:	f1c4 020b 	rsb	r2, r4, #11
 8001cca:	f7fe ff59 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001cce:	e7ba      	b.n	8001c46 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001cd0:	4621      	mov	r1, r4
 8001cd2:	4815      	ldr	r0, [pc, #84]	; (8001d28 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001cd4:	f06f 020a 	mvn.w	r2, #10
 8001cd8:	f7fe ff52 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001cdc:	f06f 020a 	mvn.w	r2, #10
 8001ce0:	4811      	ldr	r0, [pc, #68]	; (8001d28 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001ce2:	2101      	movs	r1, #1
 8001ce4:	f7fe ff4c 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001ce8:	480b      	ldr	r0, [pc, #44]	; (8001d18 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001cea:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001cee:	f7fe fcdf 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001cf2:	4621      	mov	r1, r4
 8001cf4:	4622      	mov	r2, r4
 8001cf6:	480c      	ldr	r0, [pc, #48]	; (8001d28 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001cf8:	f7fe ff42 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001cfc:	480a      	ldr	r0, [pc, #40]	; (8001d28 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001cfe:	2101      	movs	r1, #1
 8001d00:	4622      	mov	r2, r4
 8001d02:	f7fe ff3d 	bl	8000b80 <_ZN6CMotor9set_motorEml>
 8001d06:	4804      	ldr	r0, [pc, #16]	; (8001d18 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001d08:	2164      	movs	r1, #100	; 0x64
 8001d0a:	f7fe fcd1 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001d0e:	e79a      	b.n	8001c46 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001d10:	00000000 	.word	0x00000000
 8001d14:	42300000 	.word	0x42300000
 8001d18:	2000013c 	.word	0x2000013c
 8001d1c:	20000030 	.word	0x20000030
 8001d20:	447a0000 	.word	0x447a0000
 8001d24:	080028cd 	.word	0x080028cd
 8001d28:	200000f4 	.word	0x200000f4

08001d2c <_ZN5CDemo3runEj>:
 8001d2c:	2902      	cmp	r1, #2
 8001d2e:	b508      	push	{r3, lr}
 8001d30:	d007      	beq.n	8001d42 <_ZN5CDemo3runEj+0x16>
 8001d32:	2903      	cmp	r1, #3
 8001d34:	d007      	beq.n	8001d46 <_ZN5CDemo3runEj+0x1a>
 8001d36:	2901      	cmp	r1, #1
 8001d38:	d10a      	bne.n	8001d50 <_ZN5CDemo3runEj+0x24>
 8001d3a:	f7ff ff31 	bl	8001ba0 <_ZN5CDemo10moves_taskEv>
 8001d3e:	f7ff ff11 	bl	8001b64 <_ZN5CDemo10blink_taskEv>
 8001d42:	f7ff ff6b 	bl	8001c1c <_ZN5CDemo24basic_line_follower_taskEv>
 8001d46:	4803      	ldr	r0, [pc, #12]	; (8001d54 <_ZN5CDemo3runEj+0x28>)
 8001d48:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001d4c:	f7ff bd54 	b.w	80017f8 <_ZN21CLearningLineFollower3runEv>
 8001d50:	bd08      	pop	{r3, pc}
 8001d52:	bf00      	nop
 8001d54:	20000184 	.word	0x20000184

08001d58 <main>:
 8001d58:	b530      	push	{r4, r5, lr}
 8001d5a:	b08f      	sub	sp, #60	; 0x3c
 8001d5c:	f000 fc10 	bl	8002580 <sytem_clock_init>
 8001d60:	4863      	ldr	r0, [pc, #396]	; (8001ef0 <main+0x198>)
 8001d62:	f7fe fa43 	bl	80001ec <_ZN7CKodama4initEv>
 8001d66:	210a      	movs	r1, #10
 8001d68:	4861      	ldr	r0, [pc, #388]	; (8001ef0 <main+0x198>)
 8001d6a:	f7fe fa7e 	bl	800026a <_ZN7CKodama6set_dtEl>
 8001d6e:	a548      	add	r5, pc, #288	; (adr r5, 8001e90 <main+0x138>)
 8001d70:	e9d5 4500 	ldrd	r4, r5, [r5]
 8001d74:	485e      	ldr	r0, [pc, #376]	; (8001ef0 <main+0x198>)
 8001d76:	f7fe fa5b 	bl	8000230 <_ZN7CKodama5sleepEv>
 8001d7a:	2204      	movs	r2, #4
 8001d7c:	2308      	movs	r3, #8
 8001d7e:	9300      	str	r3, [sp, #0]
 8001d80:	485b      	ldr	r0, [pc, #364]	; (8001ef0 <main+0x198>)
 8001d82:	495c      	ldr	r1, [pc, #368]	; (8001ef4 <main+0x19c>)
 8001d84:	4613      	mov	r3, r2
 8001d86:	f7ff fc85 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001d8a:	4859      	ldr	r0, [pc, #356]	; (8001ef0 <main+0x198>)
 8001d8c:	495a      	ldr	r1, [pc, #360]	; (8001ef8 <main+0x1a0>)
 8001d8e:	4622      	mov	r2, r4
 8001d90:	462b      	mov	r3, r5
 8001d92:	f7ff fc7f 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001d96:	4b59      	ldr	r3, [pc, #356]	; (8001efc <main+0x1a4>)
 8001d98:	4855      	ldr	r0, [pc, #340]	; (8001ef0 <main+0x198>)
 8001d9a:	4959      	ldr	r1, [pc, #356]	; (8001f00 <main+0x1a8>)
 8001d9c:	2200      	movs	r2, #0
 8001d9e:	e9cd 2300 	strd	r2, r3, [sp]
 8001da2:	a33d      	add	r3, pc, #244	; (adr r3, 8001e98 <main+0x140>)
 8001da4:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001da8:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8001dac:	a33c      	add	r3, pc, #240	; (adr r3, 8001ea0 <main+0x148>)
 8001dae:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001db2:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001db6:	a33c      	add	r3, pc, #240	; (adr r3, 8001ea8 <main+0x150>)
 8001db8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001dbc:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8001dc0:	a33b      	add	r3, pc, #236	; (adr r3, 8001eb0 <main+0x158>)
 8001dc2:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001dc6:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8001dca:	a33b      	add	r3, pc, #236	; (adr r3, 8001eb8 <main+0x160>)
 8001dcc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001dd0:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8001dd4:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8001dd8:	2200      	movs	r2, #0
 8001dda:	2300      	movs	r3, #0
 8001ddc:	f7ff fc5a 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001de0:	4b48      	ldr	r3, [pc, #288]	; (8001f04 <main+0x1ac>)
 8001de2:	4843      	ldr	r0, [pc, #268]	; (8001ef0 <main+0x198>)
 8001de4:	4946      	ldr	r1, [pc, #280]	; (8001f00 <main+0x1a8>)
 8001de6:	2200      	movs	r2, #0
 8001de8:	e9cd 2300 	strd	r2, r3, [sp]
 8001dec:	a334      	add	r3, pc, #208	; (adr r3, 8001ec0 <main+0x168>)
 8001dee:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001df2:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8001df6:	a334      	add	r3, pc, #208	; (adr r3, 8001ec8 <main+0x170>)
 8001df8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001dfc:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8001e00:	a333      	add	r3, pc, #204	; (adr r3, 8001ed0 <main+0x178>)
 8001e02:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e06:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001e0a:	a333      	add	r3, pc, #204	; (adr r3, 8001ed8 <main+0x180>)
 8001e0c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e10:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8001e14:	a332      	add	r3, pc, #200	; (adr r3, 8001ee0 <main+0x188>)
 8001e16:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e1a:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8001e1e:	a332      	add	r3, pc, #200	; (adr r3, 8001ee8 <main+0x190>)
 8001e20:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e24:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8001e28:	2200      	movs	r2, #0
 8001e2a:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
 8001e2e:	f7ff fc31 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001e32:	482f      	ldr	r0, [pc, #188]	; (8001ef0 <main+0x198>)
 8001e34:	f44f 7100 	mov.w	r1, #512	; 0x200
 8001e38:	f7ff faea 	bl	8001410 <_ZN5CGPIO7gpio_inEm>
 8001e3c:	b148      	cbz	r0, 8001e52 <main+0xfa>
 8001e3e:	482c      	ldr	r0, [pc, #176]	; (8001ef0 <main+0x198>)
 8001e40:	f7fe fa01 	bl	8000246 <_ZN7CKodama6wakeupEv>
 8001e44:	4830      	ldr	r0, [pc, #192]	; (8001f08 <main+0x1b0>)
 8001e46:	f7ff fe8b 	bl	8001b60 <_ZN5CDemo4initEv>
 8001e4a:	482f      	ldr	r0, [pc, #188]	; (8001f08 <main+0x1b0>)
 8001e4c:	2103      	movs	r1, #3
 8001e4e:	f7ff ff6d 	bl	8001d2c <_ZN5CDemo3runEj>
 8001e52:	4827      	ldr	r0, [pc, #156]	; (8001ef0 <main+0x198>)
 8001e54:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001e58:	f7ff fabe 	bl	80013d8 <_ZN5CGPIO7gpio_onEm>
 8001e5c:	482b      	ldr	r0, [pc, #172]	; (8001f0c <main+0x1b4>)
 8001e5e:	210a      	movs	r1, #10
 8001e60:	f7fe fc26 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001e64:	4822      	ldr	r0, [pc, #136]	; (8001ef0 <main+0x198>)
 8001e66:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001e6a:	f7ff fac3 	bl	80013f4 <_ZN5CGPIO8gpio_offEm>
 8001e6e:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001e72:	4826      	ldr	r0, [pc, #152]	; (8001f0c <main+0x1b4>)
 8001e74:	f7fe fc1c 	bl	80006b0 <_ZN6CTimer8delay_msEm>
 8001e78:	4824      	ldr	r0, [pc, #144]	; (8001f0c <main+0x1b4>)
 8001e7a:	f7fe fc0b 	bl	8000694 <_ZN6CTimer8get_timeEv>
 8001e7e:	4924      	ldr	r1, [pc, #144]	; (8001f10 <main+0x1b8>)
 8001e80:	4602      	mov	r2, r0
 8001e82:	481b      	ldr	r0, [pc, #108]	; (8001ef0 <main+0x198>)
 8001e84:	f7ff fc06 	bl	8001694 <_ZN9CTerminal6printfEPKcz>
 8001e88:	e7d3      	b.n	8001e32 <main+0xda>
 8001e8a:	bf00      	nop
 8001e8c:	f3af 8000 	nop.w
 8001e90:	60000000 	.word	0x60000000
 8001e94:	400921fb 	.word	0x400921fb
 8001e98:	00000000 	.word	0x00000000
 8001e9c:	3fbf9ad0 	.word	0x3fbf9ad0
 8001ea0:	20000000 	.word	0x20000000
 8001ea4:	40406251 	.word	0x40406251
 8001ea8:	60000000 	.word	0x60000000
 8001eac:	40934a45 	.word	0x40934a45
 8001eb0:	c0000000 	.word	0xc0000000
 8001eb4:	4016cccc 	.word	0x4016cccc
 8001eb8:	a0000000 	.word	0xa0000000
 8001ebc:	4016e147 	.word	0x4016e147
 8001ec0:	00000000 	.word	0x00000000
 8001ec4:	bfbf9ad0 	.word	0xbfbf9ad0
 8001ec8:	60000000 	.word	0x60000000
 8001ecc:	c00921fb 	.word	0xc00921fb
 8001ed0:	20000000 	.word	0x20000000
 8001ed4:	c0406251 	.word	0xc0406251
 8001ed8:	60000000 	.word	0x60000000
 8001edc:	c0934a45 	.word	0xc0934a45
 8001ee0:	c0000000 	.word	0xc0000000
 8001ee4:	c016cccc 	.word	0xc016cccc
 8001ee8:	a0000000 	.word	0xa0000000
 8001eec:	c016e147 	.word	0xc016e147
 8001ef0:	20000030 	.word	0x20000030
 8001ef4:	080028d5 	.word	0x080028d5
 8001ef8:	080028f5 	.word	0x080028f5
 8001efc:	3ff00000 	.word	0x3ff00000
 8001f00:	08002907 	.word	0x08002907
 8001f04:	bff00000 	.word	0xbff00000
 8001f08:	20000568 	.word	0x20000568
 8001f0c:	2000013c 	.word	0x2000013c
 8001f10:	08002920 	.word	0x08002920

08001f14 <RCC_GetClocksFreq>:
 8001f14:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001f18:	4f9b      	ldr	r7, [pc, #620]	; (8002188 <RCC_GetClocksFreq+0x274>)
 8001f1a:	687b      	ldr	r3, [r7, #4]
 8001f1c:	f003 030c 	and.w	r3, r3, #12
 8001f20:	2b04      	cmp	r3, #4
 8001f22:	d005      	beq.n	8001f30 <RCC_GetClocksFreq+0x1c>
 8001f24:	2b08      	cmp	r3, #8
 8001f26:	d006      	beq.n	8001f36 <RCC_GetClocksFreq+0x22>
 8001f28:	4a98      	ldr	r2, [pc, #608]	; (800218c <RCC_GetClocksFreq+0x278>)
 8001f2a:	6002      	str	r2, [r0, #0]
 8001f2c:	b9b3      	cbnz	r3, 8001f5c <RCC_GetClocksFreq+0x48>
 8001f2e:	e016      	b.n	8001f5e <RCC_GetClocksFreq+0x4a>
 8001f30:	4b96      	ldr	r3, [pc, #600]	; (800218c <RCC_GetClocksFreq+0x278>)
 8001f32:	6003      	str	r3, [r0, #0]
 8001f34:	e012      	b.n	8001f5c <RCC_GetClocksFreq+0x48>
 8001f36:	687b      	ldr	r3, [r7, #4]
 8001f38:	6879      	ldr	r1, [r7, #4]
 8001f3a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001f3e:	1c9a      	adds	r2, r3, #2
 8001f40:	03cb      	lsls	r3, r1, #15
 8001f42:	bf49      	itett	mi
 8001f44:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001f46:	4b92      	ldrpl	r3, [pc, #584]	; (8002190 <RCC_GetClocksFreq+0x27c>)
 8001f48:	4990      	ldrmi	r1, [pc, #576]	; (800218c <RCC_GetClocksFreq+0x278>)
 8001f4a:	f003 030f 	andmi.w	r3, r3, #15
 8001f4e:	bf44      	itt	mi
 8001f50:	3301      	addmi	r3, #1
 8001f52:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001f56:	4353      	muls	r3, r2
 8001f58:	6003      	str	r3, [r0, #0]
 8001f5a:	e000      	b.n	8001f5e <RCC_GetClocksFreq+0x4a>
 8001f5c:	2300      	movs	r3, #0
 8001f5e:	687a      	ldr	r2, [r7, #4]
 8001f60:	4e8c      	ldr	r6, [pc, #560]	; (8002194 <RCC_GetClocksFreq+0x280>)
 8001f62:	f8df c234 	ldr.w	ip, [pc, #564]	; 8002198 <RCC_GetClocksFreq+0x284>
 8001f66:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001f6a:	5cb4      	ldrb	r4, [r6, r2]
 8001f6c:	6802      	ldr	r2, [r0, #0]
 8001f6e:	b2e4      	uxtb	r4, r4
 8001f70:	fa22 f104 	lsr.w	r1, r2, r4
 8001f74:	6041      	str	r1, [r0, #4]
 8001f76:	687d      	ldr	r5, [r7, #4]
 8001f78:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001f7c:	5d75      	ldrb	r5, [r6, r5]
 8001f7e:	fa21 fe05 	lsr.w	lr, r1, r5
 8001f82:	f8c0 e008 	str.w	lr, [r0, #8]
 8001f86:	687d      	ldr	r5, [r7, #4]
 8001f88:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001f8c:	5d75      	ldrb	r5, [r6, r5]
 8001f8e:	b2ed      	uxtb	r5, r5
 8001f90:	40e9      	lsrs	r1, r5
 8001f92:	60c1      	str	r1, [r0, #12]
 8001f94:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001f96:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8001f9a:	f008 060f 	and.w	r6, r8, #15
 8001f9e:	f018 0f10 	tst.w	r8, #16
 8001fa2:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001fa6:	46e0      	mov	r8, ip
 8001fa8:	b2b6      	uxth	r6, r6
 8001faa:	d004      	beq.n	8001fb6 <RCC_GetClocksFreq+0xa2>
 8001fac:	b11e      	cbz	r6, 8001fb6 <RCC_GetClocksFreq+0xa2>
 8001fae:	fbb3 f6f6 	udiv	r6, r3, r6
 8001fb2:	6106      	str	r6, [r0, #16]
 8001fb4:	e000      	b.n	8001fb8 <RCC_GetClocksFreq+0xa4>
 8001fb6:	6102      	str	r2, [r0, #16]
 8001fb8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001fba:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001fbe:	f00c 060f 	and.w	r6, ip, #15
 8001fc2:	f01c 0f10 	tst.w	ip, #16
 8001fc6:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001fca:	b2b6      	uxth	r6, r6
 8001fcc:	d004      	beq.n	8001fd8 <RCC_GetClocksFreq+0xc4>
 8001fce:	b11e      	cbz	r6, 8001fd8 <RCC_GetClocksFreq+0xc4>
 8001fd0:	fbb3 f6f6 	udiv	r6, r3, r6
 8001fd4:	6146      	str	r6, [r0, #20]
 8001fd6:	e000      	b.n	8001fda <RCC_GetClocksFreq+0xc6>
 8001fd8:	6142      	str	r2, [r0, #20]
 8001fda:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001fdc:	06f6      	lsls	r6, r6, #27
 8001fde:	bf5a      	itte	pl
 8001fe0:	4e6a      	ldrpl	r6, [pc, #424]	; (800218c <RCC_GetClocksFreq+0x278>)
 8001fe2:	6186      	strpl	r6, [r0, #24]
 8001fe4:	6182      	strmi	r2, [r0, #24]
 8001fe6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001fe8:	06b6      	lsls	r6, r6, #26
 8001fea:	bf5a      	itte	pl
 8001fec:	4e67      	ldrpl	r6, [pc, #412]	; (800218c <RCC_GetClocksFreq+0x278>)
 8001fee:	61c6      	strpl	r6, [r0, #28]
 8001ff0:	61c2      	strmi	r2, [r0, #28]
 8001ff2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ff4:	0676      	lsls	r6, r6, #25
 8001ff6:	bf5a      	itte	pl
 8001ff8:	4e64      	ldrpl	r6, [pc, #400]	; (800218c <RCC_GetClocksFreq+0x278>)
 8001ffa:	6206      	strpl	r6, [r0, #32]
 8001ffc:	6202      	strmi	r2, [r0, #32]
 8001ffe:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002000:	05f6      	lsls	r6, r6, #23
 8002002:	d506      	bpl.n	8002012 <RCC_GetClocksFreq+0xfe>
 8002004:	429a      	cmp	r2, r3
 8002006:	d104      	bne.n	8002012 <RCC_GetClocksFreq+0xfe>
 8002008:	42a5      	cmp	r5, r4
 800200a:	d102      	bne.n	8002012 <RCC_GetClocksFreq+0xfe>
 800200c:	0056      	lsls	r6, r2, #1
 800200e:	6246      	str	r6, [r0, #36]	; 0x24
 8002010:	e000      	b.n	8002014 <RCC_GetClocksFreq+0x100>
 8002012:	6241      	str	r1, [r0, #36]	; 0x24
 8002014:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002016:	04f6      	lsls	r6, r6, #19
 8002018:	d506      	bpl.n	8002028 <RCC_GetClocksFreq+0x114>
 800201a:	429a      	cmp	r2, r3
 800201c:	d104      	bne.n	8002028 <RCC_GetClocksFreq+0x114>
 800201e:	42a5      	cmp	r5, r4
 8002020:	d102      	bne.n	8002028 <RCC_GetClocksFreq+0x114>
 8002022:	0056      	lsls	r6, r2, #1
 8002024:	6286      	str	r6, [r0, #40]	; 0x28
 8002026:	e000      	b.n	800202a <RCC_GetClocksFreq+0x116>
 8002028:	6281      	str	r1, [r0, #40]	; 0x28
 800202a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800202c:	05b6      	lsls	r6, r6, #22
 800202e:	d506      	bpl.n	800203e <RCC_GetClocksFreq+0x12a>
 8002030:	429a      	cmp	r2, r3
 8002032:	d104      	bne.n	800203e <RCC_GetClocksFreq+0x12a>
 8002034:	42a5      	cmp	r5, r4
 8002036:	d102      	bne.n	800203e <RCC_GetClocksFreq+0x12a>
 8002038:	0056      	lsls	r6, r2, #1
 800203a:	62c6      	str	r6, [r0, #44]	; 0x2c
 800203c:	e000      	b.n	8002040 <RCC_GetClocksFreq+0x12c>
 800203e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8002040:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002042:	0576      	lsls	r6, r6, #21
 8002044:	d506      	bpl.n	8002054 <RCC_GetClocksFreq+0x140>
 8002046:	429a      	cmp	r2, r3
 8002048:	d104      	bne.n	8002054 <RCC_GetClocksFreq+0x140>
 800204a:	42a5      	cmp	r5, r4
 800204c:	d102      	bne.n	8002054 <RCC_GetClocksFreq+0x140>
 800204e:	0056      	lsls	r6, r2, #1
 8002050:	64c6      	str	r6, [r0, #76]	; 0x4c
 8002052:	e000      	b.n	8002056 <RCC_GetClocksFreq+0x142>
 8002054:	64c1      	str	r1, [r0, #76]	; 0x4c
 8002056:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002058:	0536      	lsls	r6, r6, #20
 800205a:	d506      	bpl.n	800206a <RCC_GetClocksFreq+0x156>
 800205c:	429a      	cmp	r2, r3
 800205e:	d104      	bne.n	800206a <RCC_GetClocksFreq+0x156>
 8002060:	42a5      	cmp	r5, r4
 8002062:	d102      	bne.n	800206a <RCC_GetClocksFreq+0x156>
 8002064:	0056      	lsls	r6, r2, #1
 8002066:	6506      	str	r6, [r0, #80]	; 0x50
 8002068:	e000      	b.n	800206c <RCC_GetClocksFreq+0x158>
 800206a:	6501      	str	r1, [r0, #80]	; 0x50
 800206c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800206e:	04b6      	lsls	r6, r6, #18
 8002070:	d506      	bpl.n	8002080 <RCC_GetClocksFreq+0x16c>
 8002072:	429a      	cmp	r2, r3
 8002074:	d104      	bne.n	8002080 <RCC_GetClocksFreq+0x16c>
 8002076:	42a5      	cmp	r5, r4
 8002078:	d102      	bne.n	8002080 <RCC_GetClocksFreq+0x16c>
 800207a:	0056      	lsls	r6, r2, #1
 800207c:	6546      	str	r6, [r0, #84]	; 0x54
 800207e:	e000      	b.n	8002082 <RCC_GetClocksFreq+0x16e>
 8002080:	6501      	str	r1, [r0, #80]	; 0x50
 8002082:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002084:	0436      	lsls	r6, r6, #16
 8002086:	d506      	bpl.n	8002096 <RCC_GetClocksFreq+0x182>
 8002088:	429a      	cmp	r2, r3
 800208a:	d104      	bne.n	8002096 <RCC_GetClocksFreq+0x182>
 800208c:	42a5      	cmp	r5, r4
 800208e:	d102      	bne.n	8002096 <RCC_GetClocksFreq+0x182>
 8002090:	0053      	lsls	r3, r2, #1
 8002092:	6583      	str	r3, [r0, #88]	; 0x58
 8002094:	e000      	b.n	8002098 <RCC_GetClocksFreq+0x184>
 8002096:	6581      	str	r1, [r0, #88]	; 0x58
 8002098:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 800209a:	4b3b      	ldr	r3, [pc, #236]	; (8002188 <RCC_GetClocksFreq+0x274>)
 800209c:	07a4      	lsls	r4, r4, #30
 800209e:	d101      	bne.n	80020a4 <RCC_GetClocksFreq+0x190>
 80020a0:	6381      	str	r1, [r0, #56]	; 0x38
 80020a2:	e015      	b.n	80020d0 <RCC_GetClocksFreq+0x1bc>
 80020a4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80020a6:	f001 0103 	and.w	r1, r1, #3
 80020aa:	2901      	cmp	r1, #1
 80020ac:	d101      	bne.n	80020b2 <RCC_GetClocksFreq+0x19e>
 80020ae:	6382      	str	r2, [r0, #56]	; 0x38
 80020b0:	e00e      	b.n	80020d0 <RCC_GetClocksFreq+0x1bc>
 80020b2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80020b4:	f001 0103 	and.w	r1, r1, #3
 80020b8:	2902      	cmp	r1, #2
 80020ba:	d102      	bne.n	80020c2 <RCC_GetClocksFreq+0x1ae>
 80020bc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80020c0:	e005      	b.n	80020ce <RCC_GetClocksFreq+0x1ba>
 80020c2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80020c4:	f003 0303 	and.w	r3, r3, #3
 80020c8:	2b03      	cmp	r3, #3
 80020ca:	d101      	bne.n	80020d0 <RCC_GetClocksFreq+0x1bc>
 80020cc:	4b2f      	ldr	r3, [pc, #188]	; (800218c <RCC_GetClocksFreq+0x278>)
 80020ce:	6383      	str	r3, [r0, #56]	; 0x38
 80020d0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80020d2:	4b2d      	ldr	r3, [pc, #180]	; (8002188 <RCC_GetClocksFreq+0x274>)
 80020d4:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80020d8:	d102      	bne.n	80020e0 <RCC_GetClocksFreq+0x1cc>
 80020da:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 80020de:	e018      	b.n	8002112 <RCC_GetClocksFreq+0x1fe>
 80020e0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80020e2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80020e6:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80020ea:	d101      	bne.n	80020f0 <RCC_GetClocksFreq+0x1dc>
 80020ec:	63c2      	str	r2, [r0, #60]	; 0x3c
 80020ee:	e010      	b.n	8002112 <RCC_GetClocksFreq+0x1fe>
 80020f0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80020f2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80020f6:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80020fa:	d102      	bne.n	8002102 <RCC_GetClocksFreq+0x1ee>
 80020fc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002100:	e006      	b.n	8002110 <RCC_GetClocksFreq+0x1fc>
 8002102:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002104:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8002108:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 800210c:	d101      	bne.n	8002112 <RCC_GetClocksFreq+0x1fe>
 800210e:	4b1f      	ldr	r3, [pc, #124]	; (800218c <RCC_GetClocksFreq+0x278>)
 8002110:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002112:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002114:	4b1c      	ldr	r3, [pc, #112]	; (8002188 <RCC_GetClocksFreq+0x274>)
 8002116:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 800211a:	d102      	bne.n	8002122 <RCC_GetClocksFreq+0x20e>
 800211c:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8002120:	e018      	b.n	8002154 <RCC_GetClocksFreq+0x240>
 8002122:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002124:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002128:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 800212c:	d101      	bne.n	8002132 <RCC_GetClocksFreq+0x21e>
 800212e:	6402      	str	r2, [r0, #64]	; 0x40
 8002130:	e010      	b.n	8002154 <RCC_GetClocksFreq+0x240>
 8002132:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002134:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002138:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 800213c:	d102      	bne.n	8002144 <RCC_GetClocksFreq+0x230>
 800213e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002142:	e006      	b.n	8002152 <RCC_GetClocksFreq+0x23e>
 8002144:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002146:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800214a:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 800214e:	d101      	bne.n	8002154 <RCC_GetClocksFreq+0x240>
 8002150:	4b0e      	ldr	r3, [pc, #56]	; (800218c <RCC_GetClocksFreq+0x278>)
 8002152:	6403      	str	r3, [r0, #64]	; 0x40
 8002154:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002156:	4b0c      	ldr	r3, [pc, #48]	; (8002188 <RCC_GetClocksFreq+0x274>)
 8002158:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 800215c:	d102      	bne.n	8002164 <RCC_GetClocksFreq+0x250>
 800215e:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8002162:	e023      	b.n	80021ac <RCC_GetClocksFreq+0x298>
 8002164:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002166:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800216a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800216e:	d101      	bne.n	8002174 <RCC_GetClocksFreq+0x260>
 8002170:	6442      	str	r2, [r0, #68]	; 0x44
 8002172:	e01b      	b.n	80021ac <RCC_GetClocksFreq+0x298>
 8002174:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002176:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800217a:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800217e:	d10d      	bne.n	800219c <RCC_GetClocksFreq+0x288>
 8002180:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002184:	e011      	b.n	80021aa <RCC_GetClocksFreq+0x296>
 8002186:	bf00      	nop
 8002188:	40021000 	.word	0x40021000
 800218c:	007a1200 	.word	0x007a1200
 8002190:	003d0900 	.word	0x003d0900
 8002194:	20000020 	.word	0x20000020
 8002198:	20000000 	.word	0x20000000
 800219c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800219e:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 80021a2:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80021a6:	d101      	bne.n	80021ac <RCC_GetClocksFreq+0x298>
 80021a8:	4b13      	ldr	r3, [pc, #76]	; (80021f8 <RCC_GetClocksFreq+0x2e4>)
 80021aa:	6443      	str	r3, [r0, #68]	; 0x44
 80021ac:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80021ae:	4b13      	ldr	r3, [pc, #76]	; (80021fc <RCC_GetClocksFreq+0x2e8>)
 80021b0:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80021b4:	d103      	bne.n	80021be <RCC_GetClocksFreq+0x2aa>
 80021b6:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80021ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80021be:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80021c0:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80021c4:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80021c8:	d102      	bne.n	80021d0 <RCC_GetClocksFreq+0x2bc>
 80021ca:	6482      	str	r2, [r0, #72]	; 0x48
 80021cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80021d0:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80021d2:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80021d6:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80021da:	d102      	bne.n	80021e2 <RCC_GetClocksFreq+0x2ce>
 80021dc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80021e0:	e006      	b.n	80021f0 <RCC_GetClocksFreq+0x2dc>
 80021e2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80021e4:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80021e8:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80021ec:	d101      	bne.n	80021f2 <RCC_GetClocksFreq+0x2de>
 80021ee:	4b02      	ldr	r3, [pc, #8]	; (80021f8 <RCC_GetClocksFreq+0x2e4>)
 80021f0:	6483      	str	r3, [r0, #72]	; 0x48
 80021f2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80021f6:	bf00      	nop
 80021f8:	007a1200 	.word	0x007a1200
 80021fc:	40021000 	.word	0x40021000

08002200 <RCC_AHBPeriphClockCmd>:
 8002200:	bf00      	nop
 8002202:	bf00      	nop
 8002204:	4b04      	ldr	r3, [pc, #16]	; (8002218 <RCC_AHBPeriphClockCmd+0x18>)
 8002206:	695a      	ldr	r2, [r3, #20]
 8002208:	b109      	cbz	r1, 800220e <RCC_AHBPeriphClockCmd+0xe>
 800220a:	4310      	orrs	r0, r2
 800220c:	e001      	b.n	8002212 <RCC_AHBPeriphClockCmd+0x12>
 800220e:	ea22 0000 	bic.w	r0, r2, r0
 8002212:	6158      	str	r0, [r3, #20]
 8002214:	4770      	bx	lr
 8002216:	bf00      	nop
 8002218:	40021000 	.word	0x40021000

0800221c <RCC_APB2PeriphClockCmd>:
 800221c:	bf00      	nop
 800221e:	bf00      	nop
 8002220:	4b04      	ldr	r3, [pc, #16]	; (8002234 <RCC_APB2PeriphClockCmd+0x18>)
 8002222:	699a      	ldr	r2, [r3, #24]
 8002224:	b109      	cbz	r1, 800222a <RCC_APB2PeriphClockCmd+0xe>
 8002226:	4310      	orrs	r0, r2
 8002228:	e001      	b.n	800222e <RCC_APB2PeriphClockCmd+0x12>
 800222a:	ea22 0000 	bic.w	r0, r2, r0
 800222e:	6198      	str	r0, [r3, #24]
 8002230:	4770      	bx	lr
 8002232:	bf00      	nop
 8002234:	40021000 	.word	0x40021000

08002238 <RCC_APB1PeriphClockCmd>:
 8002238:	bf00      	nop
 800223a:	bf00      	nop
 800223c:	4b04      	ldr	r3, [pc, #16]	; (8002250 <RCC_APB1PeriphClockCmd+0x18>)
 800223e:	69da      	ldr	r2, [r3, #28]
 8002240:	b109      	cbz	r1, 8002246 <RCC_APB1PeriphClockCmd+0xe>
 8002242:	4310      	orrs	r0, r2
 8002244:	e001      	b.n	800224a <RCC_APB1PeriphClockCmd+0x12>
 8002246:	ea22 0000 	bic.w	r0, r2, r0
 800224a:	61d8      	str	r0, [r3, #28]
 800224c:	4770      	bx	lr
 800224e:	bf00      	nop
 8002250:	40021000 	.word	0x40021000

08002254 <TIM_TimeBaseInit>:
 8002254:	bf00      	nop
 8002256:	bf00      	nop
 8002258:	bf00      	nop
 800225a:	4a24      	ldr	r2, [pc, #144]	; (80022ec <TIM_TimeBaseInit+0x98>)
 800225c:	8803      	ldrh	r3, [r0, #0]
 800225e:	4290      	cmp	r0, r2
 8002260:	b29b      	uxth	r3, r3
 8002262:	d012      	beq.n	800228a <TIM_TimeBaseInit+0x36>
 8002264:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002268:	4290      	cmp	r0, r2
 800226a:	d00e      	beq.n	800228a <TIM_TimeBaseInit+0x36>
 800226c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002270:	d00b      	beq.n	800228a <TIM_TimeBaseInit+0x36>
 8002272:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002276:	4290      	cmp	r0, r2
 8002278:	d007      	beq.n	800228a <TIM_TimeBaseInit+0x36>
 800227a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800227e:	4290      	cmp	r0, r2
 8002280:	d003      	beq.n	800228a <TIM_TimeBaseInit+0x36>
 8002282:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002286:	4290      	cmp	r0, r2
 8002288:	d103      	bne.n	8002292 <TIM_TimeBaseInit+0x3e>
 800228a:	884a      	ldrh	r2, [r1, #2]
 800228c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002290:	4313      	orrs	r3, r2
 8002292:	4a17      	ldr	r2, [pc, #92]	; (80022f0 <TIM_TimeBaseInit+0x9c>)
 8002294:	4290      	cmp	r0, r2
 8002296:	d008      	beq.n	80022aa <TIM_TimeBaseInit+0x56>
 8002298:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800229c:	4290      	cmp	r0, r2
 800229e:	bf1f      	itttt	ne
 80022a0:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 80022a4:	890a      	ldrhne	r2, [r1, #8]
 80022a6:	b29b      	uxthne	r3, r3
 80022a8:	4313      	orrne	r3, r2
 80022aa:	8003      	strh	r3, [r0, #0]
 80022ac:	684b      	ldr	r3, [r1, #4]
 80022ae:	62c3      	str	r3, [r0, #44]	; 0x2c
 80022b0:	880b      	ldrh	r3, [r1, #0]
 80022b2:	8503      	strh	r3, [r0, #40]	; 0x28
 80022b4:	4b0d      	ldr	r3, [pc, #52]	; (80022ec <TIM_TimeBaseInit+0x98>)
 80022b6:	4298      	cmp	r0, r3
 80022b8:	d013      	beq.n	80022e2 <TIM_TimeBaseInit+0x8e>
 80022ba:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80022be:	4298      	cmp	r0, r3
 80022c0:	d00f      	beq.n	80022e2 <TIM_TimeBaseInit+0x8e>
 80022c2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80022c6:	4298      	cmp	r0, r3
 80022c8:	d00b      	beq.n	80022e2 <TIM_TimeBaseInit+0x8e>
 80022ca:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80022ce:	4298      	cmp	r0, r3
 80022d0:	d007      	beq.n	80022e2 <TIM_TimeBaseInit+0x8e>
 80022d2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80022d6:	4298      	cmp	r0, r3
 80022d8:	d003      	beq.n	80022e2 <TIM_TimeBaseInit+0x8e>
 80022da:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80022de:	4298      	cmp	r0, r3
 80022e0:	d101      	bne.n	80022e6 <TIM_TimeBaseInit+0x92>
 80022e2:	894b      	ldrh	r3, [r1, #10]
 80022e4:	8603      	strh	r3, [r0, #48]	; 0x30
 80022e6:	2301      	movs	r3, #1
 80022e8:	6143      	str	r3, [r0, #20]
 80022ea:	4770      	bx	lr
 80022ec:	40012c00 	.word	0x40012c00
 80022f0:	40001000 	.word	0x40001000

080022f4 <TIM_Cmd>:
 80022f4:	bf00      	nop
 80022f6:	bf00      	nop
 80022f8:	8803      	ldrh	r3, [r0, #0]
 80022fa:	b119      	cbz	r1, 8002304 <TIM_Cmd+0x10>
 80022fc:	b29b      	uxth	r3, r3
 80022fe:	f043 0301 	orr.w	r3, r3, #1
 8002302:	e003      	b.n	800230c <TIM_Cmd+0x18>
 8002304:	f023 0301 	bic.w	r3, r3, #1
 8002308:	041b      	lsls	r3, r3, #16
 800230a:	0c1b      	lsrs	r3, r3, #16
 800230c:	8003      	strh	r3, [r0, #0]
 800230e:	4770      	bx	lr

08002310 <TIM_ClearITPendingBit>:
 8002310:	bf00      	nop
 8002312:	43c9      	mvns	r1, r1
 8002314:	b289      	uxth	r1, r1
 8002316:	6101      	str	r1, [r0, #16]
 8002318:	4770      	bx	lr
	...

0800231c <USART_Init>:
 800231c:	b530      	push	{r4, r5, lr}
 800231e:	4604      	mov	r4, r0
 8002320:	b099      	sub	sp, #100	; 0x64
 8002322:	460d      	mov	r5, r1
 8002324:	bf00      	nop
 8002326:	bf00      	nop
 8002328:	bf00      	nop
 800232a:	bf00      	nop
 800232c:	bf00      	nop
 800232e:	bf00      	nop
 8002330:	bf00      	nop
 8002332:	6803      	ldr	r3, [r0, #0]
 8002334:	f023 0301 	bic.w	r3, r3, #1
 8002338:	6003      	str	r3, [r0, #0]
 800233a:	6843      	ldr	r3, [r0, #4]
 800233c:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002340:	688b      	ldr	r3, [r1, #8]
 8002342:	68c9      	ldr	r1, [r1, #12]
 8002344:	4313      	orrs	r3, r2
 8002346:	6043      	str	r3, [r0, #4]
 8002348:	686a      	ldr	r2, [r5, #4]
 800234a:	6803      	ldr	r3, [r0, #0]
 800234c:	4311      	orrs	r1, r2
 800234e:	692a      	ldr	r2, [r5, #16]
 8002350:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002354:	430a      	orrs	r2, r1
 8002356:	f023 030c 	bic.w	r3, r3, #12
 800235a:	4313      	orrs	r3, r2
 800235c:	6003      	str	r3, [r0, #0]
 800235e:	6883      	ldr	r3, [r0, #8]
 8002360:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002364:	696b      	ldr	r3, [r5, #20]
 8002366:	4313      	orrs	r3, r2
 8002368:	6083      	str	r3, [r0, #8]
 800236a:	a801      	add	r0, sp, #4
 800236c:	f7ff fdd2 	bl	8001f14 <RCC_GetClocksFreq>
 8002370:	4b17      	ldr	r3, [pc, #92]	; (80023d0 <USART_Init+0xb4>)
 8002372:	429c      	cmp	r4, r3
 8002374:	d101      	bne.n	800237a <USART_Init+0x5e>
 8002376:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002378:	e00e      	b.n	8002398 <USART_Init+0x7c>
 800237a:	4b16      	ldr	r3, [pc, #88]	; (80023d4 <USART_Init+0xb8>)
 800237c:	429c      	cmp	r4, r3
 800237e:	d101      	bne.n	8002384 <USART_Init+0x68>
 8002380:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002382:	e009      	b.n	8002398 <USART_Init+0x7c>
 8002384:	4b14      	ldr	r3, [pc, #80]	; (80023d8 <USART_Init+0xbc>)
 8002386:	429c      	cmp	r4, r3
 8002388:	d101      	bne.n	800238e <USART_Init+0x72>
 800238a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800238c:	e004      	b.n	8002398 <USART_Init+0x7c>
 800238e:	4b13      	ldr	r3, [pc, #76]	; (80023dc <USART_Init+0xc0>)
 8002390:	429c      	cmp	r4, r3
 8002392:	bf0c      	ite	eq
 8002394:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002396:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002398:	6822      	ldr	r2, [r4, #0]
 800239a:	6829      	ldr	r1, [r5, #0]
 800239c:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80023a0:	bf18      	it	ne
 80023a2:	005b      	lslne	r3, r3, #1
 80023a4:	fbb3 f2f1 	udiv	r2, r3, r1
 80023a8:	fb01 3312 	mls	r3, r1, r2, r3
 80023ac:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80023b0:	6823      	ldr	r3, [r4, #0]
 80023b2:	bf28      	it	cs
 80023b4:	3201      	addcs	r2, #1
 80023b6:	041b      	lsls	r3, r3, #16
 80023b8:	bf41      	itttt	mi
 80023ba:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80023be:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80023c2:	4013      	andmi	r3, r2
 80023c4:	ea41 0203 	orrmi.w	r2, r1, r3
 80023c8:	b292      	uxth	r2, r2
 80023ca:	81a2      	strh	r2, [r4, #12]
 80023cc:	b019      	add	sp, #100	; 0x64
 80023ce:	bd30      	pop	{r4, r5, pc}
 80023d0:	40013800 	.word	0x40013800
 80023d4:	40004400 	.word	0x40004400
 80023d8:	40004800 	.word	0x40004800
 80023dc:	40004c00 	.word	0x40004c00

080023e0 <USART_Cmd>:
 80023e0:	bf00      	nop
 80023e2:	bf00      	nop
 80023e4:	6803      	ldr	r3, [r0, #0]
 80023e6:	b111      	cbz	r1, 80023ee <USART_Cmd+0xe>
 80023e8:	f043 0301 	orr.w	r3, r3, #1
 80023ec:	e001      	b.n	80023f2 <USART_Cmd+0x12>
 80023ee:	f023 0301 	bic.w	r3, r3, #1
 80023f2:	6003      	str	r3, [r0, #0]
 80023f4:	4770      	bx	lr

080023f6 <USART_ReceiveData>:
 80023f6:	bf00      	nop
 80023f8:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80023fa:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80023fe:	4770      	bx	lr

08002400 <USART_ITConfig>:
 8002400:	b510      	push	{r4, lr}
 8002402:	bf00      	nop
 8002404:	bf00      	nop
 8002406:	bf00      	nop
 8002408:	f3c1 2407 	ubfx	r4, r1, #8, #8
 800240c:	2301      	movs	r3, #1
 800240e:	b2c9      	uxtb	r1, r1
 8002410:	2c02      	cmp	r4, #2
 8002412:	fa03 f301 	lsl.w	r3, r3, r1
 8002416:	d101      	bne.n	800241c <USART_ITConfig+0x1c>
 8002418:	3004      	adds	r0, #4
 800241a:	e002      	b.n	8002422 <USART_ITConfig+0x22>
 800241c:	2c03      	cmp	r4, #3
 800241e:	bf08      	it	eq
 8002420:	3008      	addeq	r0, #8
 8002422:	b112      	cbz	r2, 800242a <USART_ITConfig+0x2a>
 8002424:	6802      	ldr	r2, [r0, #0]
 8002426:	4313      	orrs	r3, r2
 8002428:	e002      	b.n	8002430 <USART_ITConfig+0x30>
 800242a:	6802      	ldr	r2, [r0, #0]
 800242c:	ea22 0303 	bic.w	r3, r2, r3
 8002430:	6003      	str	r3, [r0, #0]
 8002432:	bd10      	pop	{r4, pc}

08002434 <USART_GetITStatus>:
 8002434:	b510      	push	{r4, lr}
 8002436:	bf00      	nop
 8002438:	bf00      	nop
 800243a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800243e:	b2cc      	uxtb	r4, r1
 8002440:	2301      	movs	r3, #1
 8002442:	2a01      	cmp	r2, #1
 8002444:	fa03 f304 	lsl.w	r3, r3, r4
 8002448:	d101      	bne.n	800244e <USART_GetITStatus+0x1a>
 800244a:	6802      	ldr	r2, [r0, #0]
 800244c:	e003      	b.n	8002456 <USART_GetITStatus+0x22>
 800244e:	2a02      	cmp	r2, #2
 8002450:	bf0c      	ite	eq
 8002452:	6842      	ldreq	r2, [r0, #4]
 8002454:	6882      	ldrne	r2, [r0, #8]
 8002456:	4013      	ands	r3, r2
 8002458:	69c2      	ldr	r2, [r0, #28]
 800245a:	b13b      	cbz	r3, 800246c <USART_GetITStatus+0x38>
 800245c:	0c09      	lsrs	r1, r1, #16
 800245e:	2301      	movs	r3, #1
 8002460:	408b      	lsls	r3, r1
 8002462:	4213      	tst	r3, r2
 8002464:	bf14      	ite	ne
 8002466:	2001      	movne	r0, #1
 8002468:	2000      	moveq	r0, #0
 800246a:	bd10      	pop	{r4, pc}
 800246c:	4618      	mov	r0, r3
 800246e:	bd10      	pop	{r4, pc}

08002470 <USART_ClearITPendingBit>:
 8002470:	bf00      	nop
 8002472:	bf00      	nop
 8002474:	2301      	movs	r3, #1
 8002476:	0c09      	lsrs	r1, r1, #16
 8002478:	408b      	lsls	r3, r1
 800247a:	6203      	str	r3, [r0, #32]
 800247c:	4770      	bx	lr
	...

08002480 <SystemInit>:
 8002480:	4a39      	ldr	r2, [pc, #228]	; (8002568 <SystemInit+0xe8>)
 8002482:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002486:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800248a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800248e:	4b37      	ldr	r3, [pc, #220]	; (800256c <SystemInit+0xec>)
 8002490:	681a      	ldr	r2, [r3, #0]
 8002492:	f042 0201 	orr.w	r2, r2, #1
 8002496:	601a      	str	r2, [r3, #0]
 8002498:	6859      	ldr	r1, [r3, #4]
 800249a:	4a35      	ldr	r2, [pc, #212]	; (8002570 <SystemInit+0xf0>)
 800249c:	400a      	ands	r2, r1
 800249e:	605a      	str	r2, [r3, #4]
 80024a0:	681a      	ldr	r2, [r3, #0]
 80024a2:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80024a6:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80024aa:	601a      	str	r2, [r3, #0]
 80024ac:	681a      	ldr	r2, [r3, #0]
 80024ae:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80024b2:	601a      	str	r2, [r3, #0]
 80024b4:	685a      	ldr	r2, [r3, #4]
 80024b6:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80024ba:	605a      	str	r2, [r3, #4]
 80024bc:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80024be:	f022 020f 	bic.w	r2, r2, #15
 80024c2:	62da      	str	r2, [r3, #44]	; 0x2c
 80024c4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80024c6:	4a2b      	ldr	r2, [pc, #172]	; (8002574 <SystemInit+0xf4>)
 80024c8:	b082      	sub	sp, #8
 80024ca:	400a      	ands	r2, r1
 80024cc:	631a      	str	r2, [r3, #48]	; 0x30
 80024ce:	2200      	movs	r2, #0
 80024d0:	609a      	str	r2, [r3, #8]
 80024d2:	9200      	str	r2, [sp, #0]
 80024d4:	9201      	str	r2, [sp, #4]
 80024d6:	681a      	ldr	r2, [r3, #0]
 80024d8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80024dc:	601a      	str	r2, [r3, #0]
 80024de:	681a      	ldr	r2, [r3, #0]
 80024e0:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80024e4:	9201      	str	r2, [sp, #4]
 80024e6:	9a00      	ldr	r2, [sp, #0]
 80024e8:	3201      	adds	r2, #1
 80024ea:	9200      	str	r2, [sp, #0]
 80024ec:	9a01      	ldr	r2, [sp, #4]
 80024ee:	b91a      	cbnz	r2, 80024f8 <SystemInit+0x78>
 80024f0:	9a00      	ldr	r2, [sp, #0]
 80024f2:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80024f6:	d1f2      	bne.n	80024de <SystemInit+0x5e>
 80024f8:	681a      	ldr	r2, [r3, #0]
 80024fa:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 80024fe:	bf18      	it	ne
 8002500:	2201      	movne	r2, #1
 8002502:	9201      	str	r2, [sp, #4]
 8002504:	9a01      	ldr	r2, [sp, #4]
 8002506:	2a01      	cmp	r2, #1
 8002508:	d005      	beq.n	8002516 <SystemInit+0x96>
 800250a:	4b17      	ldr	r3, [pc, #92]	; (8002568 <SystemInit+0xe8>)
 800250c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002510:	609a      	str	r2, [r3, #8]
 8002512:	b002      	add	sp, #8
 8002514:	4770      	bx	lr
 8002516:	4a18      	ldr	r2, [pc, #96]	; (8002578 <SystemInit+0xf8>)
 8002518:	2112      	movs	r1, #18
 800251a:	6011      	str	r1, [r2, #0]
 800251c:	685a      	ldr	r2, [r3, #4]
 800251e:	605a      	str	r2, [r3, #4]
 8002520:	685a      	ldr	r2, [r3, #4]
 8002522:	605a      	str	r2, [r3, #4]
 8002524:	685a      	ldr	r2, [r3, #4]
 8002526:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800252a:	605a      	str	r2, [r3, #4]
 800252c:	685a      	ldr	r2, [r3, #4]
 800252e:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002532:	605a      	str	r2, [r3, #4]
 8002534:	685a      	ldr	r2, [r3, #4]
 8002536:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800253a:	605a      	str	r2, [r3, #4]
 800253c:	681a      	ldr	r2, [r3, #0]
 800253e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002542:	601a      	str	r2, [r3, #0]
 8002544:	6819      	ldr	r1, [r3, #0]
 8002546:	4a09      	ldr	r2, [pc, #36]	; (800256c <SystemInit+0xec>)
 8002548:	0189      	lsls	r1, r1, #6
 800254a:	d5fb      	bpl.n	8002544 <SystemInit+0xc4>
 800254c:	6851      	ldr	r1, [r2, #4]
 800254e:	f021 0103 	bic.w	r1, r1, #3
 8002552:	6051      	str	r1, [r2, #4]
 8002554:	6851      	ldr	r1, [r2, #4]
 8002556:	f041 0102 	orr.w	r1, r1, #2
 800255a:	6051      	str	r1, [r2, #4]
 800255c:	685a      	ldr	r2, [r3, #4]
 800255e:	f002 020c 	and.w	r2, r2, #12
 8002562:	2a08      	cmp	r2, #8
 8002564:	d1fa      	bne.n	800255c <SystemInit+0xdc>
 8002566:	e7d0      	b.n	800250a <SystemInit+0x8a>
 8002568:	e000ed00 	.word	0xe000ed00
 800256c:	40021000 	.word	0x40021000
 8002570:	f87fc00c 	.word	0xf87fc00c
 8002574:	ff00fccc 	.word	0xff00fccc
 8002578:	40022000 	.word	0x40022000

0800257c <core_yield>:
 800257c:	bf00      	nop
 800257e:	4770      	bx	lr

08002580 <sytem_clock_init>:
 8002580:	f7ff bf7e 	b.w	8002480 <SystemInit>

08002584 <NVIC_Init>:
 8002584:	b510      	push	{r4, lr}
 8002586:	bf00      	nop
 8002588:	bf00      	nop
 800258a:	bf00      	nop
 800258c:	78c2      	ldrb	r2, [r0, #3]
 800258e:	7803      	ldrb	r3, [r0, #0]
 8002590:	b312      	cbz	r2, 80025d8 <NVIC_Init+0x54>
 8002592:	4a17      	ldr	r2, [pc, #92]	; (80025f0 <NVIC_Init+0x6c>)
 8002594:	68d1      	ldr	r1, [r2, #12]
 8002596:	7842      	ldrb	r2, [r0, #1]
 8002598:	43c9      	mvns	r1, r1
 800259a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800259e:	f1c1 0404 	rsb	r4, r1, #4
 80025a2:	b2e4      	uxtb	r4, r4
 80025a4:	40a2      	lsls	r2, r4
 80025a6:	b2d4      	uxtb	r4, r2
 80025a8:	220f      	movs	r2, #15
 80025aa:	410a      	asrs	r2, r1
 80025ac:	7881      	ldrb	r1, [r0, #2]
 80025ae:	400a      	ands	r2, r1
 80025b0:	4322      	orrs	r2, r4
 80025b2:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80025b6:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80025ba:	0112      	lsls	r2, r2, #4
 80025bc:	b2d2      	uxtb	r2, r2
 80025be:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80025c2:	7803      	ldrb	r3, [r0, #0]
 80025c4:	2201      	movs	r2, #1
 80025c6:	0959      	lsrs	r1, r3, #5
 80025c8:	f003 031f 	and.w	r3, r3, #31
 80025cc:	fa02 f303 	lsl.w	r3, r2, r3
 80025d0:	4a08      	ldr	r2, [pc, #32]	; (80025f4 <NVIC_Init+0x70>)
 80025d2:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80025d6:	bd10      	pop	{r4, pc}
 80025d8:	095a      	lsrs	r2, r3, #5
 80025da:	2101      	movs	r1, #1
 80025dc:	f003 031f 	and.w	r3, r3, #31
 80025e0:	4099      	lsls	r1, r3
 80025e2:	f102 0320 	add.w	r3, r2, #32
 80025e6:	4a03      	ldr	r2, [pc, #12]	; (80025f4 <NVIC_Init+0x70>)
 80025e8:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80025ec:	bd10      	pop	{r4, pc}
 80025ee:	bf00      	nop
 80025f0:	e000ed00 	.word	0xe000ed00
 80025f4:	e000e100 	.word	0xe000e100

080025f8 <EXTI_ClearITPendingBit>:
 80025f8:	f020 011f 	bic.w	r1, r0, #31
 80025fc:	2301      	movs	r3, #1
 80025fe:	f000 001f 	and.w	r0, r0, #31
 8002602:	4a02      	ldr	r2, [pc, #8]	; (800260c <EXTI_ClearITPendingBit+0x14>)
 8002604:	4083      	lsls	r3, r0
 8002606:	508b      	str	r3, [r1, r2]
 8002608:	4770      	bx	lr
 800260a:	bf00      	nop
 800260c:	40010414 	.word	0x40010414

08002610 <GPIO_Init>:
 8002610:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002612:	bf00      	nop
 8002614:	bf00      	nop
 8002616:	bf00      	nop
 8002618:	bf00      	nop
 800261a:	2300      	movs	r3, #0
 800261c:	680e      	ldr	r6, [r1, #0]
 800261e:	461c      	mov	r4, r3
 8002620:	2501      	movs	r5, #1
 8002622:	40a5      	lsls	r5, r4
 8002624:	ea05 0e06 	and.w	lr, r5, r6
 8002628:	45ae      	cmp	lr, r5
 800262a:	d12d      	bne.n	8002688 <GPIO_Init+0x78>
 800262c:	790f      	ldrb	r7, [r1, #4]
 800262e:	1e7a      	subs	r2, r7, #1
 8002630:	2a01      	cmp	r2, #1
 8002632:	d817      	bhi.n	8002664 <GPIO_Init+0x54>
 8002634:	bf00      	nop
 8002636:	2203      	movs	r2, #3
 8002638:	6885      	ldr	r5, [r0, #8]
 800263a:	409a      	lsls	r2, r3
 800263c:	ea25 0202 	bic.w	r2, r5, r2
 8002640:	6082      	str	r2, [r0, #8]
 8002642:	794d      	ldrb	r5, [r1, #5]
 8002644:	6882      	ldr	r2, [r0, #8]
 8002646:	409d      	lsls	r5, r3
 8002648:	4315      	orrs	r5, r2
 800264a:	6085      	str	r5, [r0, #8]
 800264c:	bf00      	nop
 800264e:	8882      	ldrh	r2, [r0, #4]
 8002650:	b292      	uxth	r2, r2
 8002652:	ea22 020e 	bic.w	r2, r2, lr
 8002656:	8082      	strh	r2, [r0, #4]
 8002658:	798a      	ldrb	r2, [r1, #6]
 800265a:	8885      	ldrh	r5, [r0, #4]
 800265c:	40a2      	lsls	r2, r4
 800265e:	432a      	orrs	r2, r5
 8002660:	b292      	uxth	r2, r2
 8002662:	8082      	strh	r2, [r0, #4]
 8002664:	2203      	movs	r2, #3
 8002666:	6805      	ldr	r5, [r0, #0]
 8002668:	409a      	lsls	r2, r3
 800266a:	43d2      	mvns	r2, r2
 800266c:	4015      	ands	r5, r2
 800266e:	6005      	str	r5, [r0, #0]
 8002670:	6805      	ldr	r5, [r0, #0]
 8002672:	409f      	lsls	r7, r3
 8002674:	432f      	orrs	r7, r5
 8002676:	6007      	str	r7, [r0, #0]
 8002678:	68c7      	ldr	r7, [r0, #12]
 800267a:	4017      	ands	r7, r2
 800267c:	79ca      	ldrb	r2, [r1, #7]
 800267e:	fa02 f503 	lsl.w	r5, r2, r3
 8002682:	ea47 0205 	orr.w	r2, r7, r5
 8002686:	60c2      	str	r2, [r0, #12]
 8002688:	3401      	adds	r4, #1
 800268a:	2c10      	cmp	r4, #16
 800268c:	f103 0302 	add.w	r3, r3, #2
 8002690:	d1c6      	bne.n	8002620 <GPIO_Init+0x10>
 8002692:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002694 <GPIO_SetBits>:
 8002694:	bf00      	nop
 8002696:	bf00      	nop
 8002698:	6181      	str	r1, [r0, #24]
 800269a:	4770      	bx	lr

0800269c <GPIO_PinAFConfig>:
 800269c:	b510      	push	{r4, lr}
 800269e:	bf00      	nop
 80026a0:	bf00      	nop
 80026a2:	bf00      	nop
 80026a4:	f001 0307 	and.w	r3, r1, #7
 80026a8:	08c9      	lsrs	r1, r1, #3
 80026aa:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80026ae:	009b      	lsls	r3, r3, #2
 80026b0:	6a04      	ldr	r4, [r0, #32]
 80026b2:	210f      	movs	r1, #15
 80026b4:	4099      	lsls	r1, r3
 80026b6:	ea24 0101 	bic.w	r1, r4, r1
 80026ba:	6201      	str	r1, [r0, #32]
 80026bc:	6a01      	ldr	r1, [r0, #32]
 80026be:	409a      	lsls	r2, r3
 80026c0:	430a      	orrs	r2, r1
 80026c2:	6202      	str	r2, [r0, #32]
 80026c4:	bd10      	pop	{r4, pc}

080026c6 <Default_Handler>:
 80026c6:	4668      	mov	r0, sp
 80026c8:	f020 0107 	bic.w	r1, r0, #7
 80026cc:	468d      	mov	sp, r1
 80026ce:	b501      	push	{r0, lr}
 80026d0:	bf00      	nop
 80026d2:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80026d6:	4685      	mov	sp, r0
 80026d8:	4770      	bx	lr

080026da <HardFault_Handler>:
 80026da:	bf00      	nop
 80026dc:	e7fd      	b.n	80026da <HardFault_Handler>
	...

080026e0 <_reset_init>:
 80026e0:	490e      	ldr	r1, [pc, #56]	; (800271c <_reset_init+0x3c>)
 80026e2:	4b0f      	ldr	r3, [pc, #60]	; (8002720 <_reset_init+0x40>)
 80026e4:	1a5b      	subs	r3, r3, r1
 80026e6:	109b      	asrs	r3, r3, #2
 80026e8:	2200      	movs	r2, #0
 80026ea:	429a      	cmp	r2, r3
 80026ec:	d006      	beq.n	80026fc <_reset_init+0x1c>
 80026ee:	480d      	ldr	r0, [pc, #52]	; (8002724 <_reset_init+0x44>)
 80026f0:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 80026f4:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 80026f8:	3201      	adds	r2, #1
 80026fa:	e7f6      	b.n	80026ea <_reset_init+0xa>
 80026fc:	4a0a      	ldr	r2, [pc, #40]	; (8002728 <_reset_init+0x48>)
 80026fe:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002702:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002706:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800270a:	f502 720c 	add.w	r2, r2, #560	; 0x230
 800270e:	6853      	ldr	r3, [r2, #4]
 8002710:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002714:	6053      	str	r3, [r2, #4]
 8002716:	f7ff bb1f 	b.w	8001d58 <main>
 800271a:	bf00      	nop
 800271c:	20000000 	.word	0x20000000
 8002720:	20000030 	.word	0x20000030
 8002724:	08002930 	.word	0x08002930
 8002728:	e000ed00 	.word	0xe000ed00

0800272c <scheduler>:
 800272c:	b570      	push	{r4, r5, r6, lr}
 800272e:	2200      	movs	r2, #0
 8002730:	4611      	mov	r1, r2
 8002732:	4b15      	ldr	r3, [pc, #84]	; (8002788 <scheduler+0x5c>)
 8002734:	200c      	movs	r0, #12
 8002736:	fb00 f401 	mul.w	r4, r0, r1
 800273a:	191e      	adds	r6, r3, r4
 800273c:	6875      	ldr	r5, [r6, #4]
 800273e:	f015 0f02 	tst.w	r5, #2
 8002742:	461d      	mov	r5, r3
 8002744:	d10a      	bne.n	800275c <scheduler+0x30>
 8002746:	6876      	ldr	r6, [r6, #4]
 8002748:	07f6      	lsls	r6, r6, #31
 800274a:	d507      	bpl.n	800275c <scheduler+0x30>
 800274c:	4350      	muls	r0, r2
 800274e:	5b1c      	ldrh	r4, [r3, r4]
 8002750:	5a18      	ldrh	r0, [r3, r0]
 8002752:	b2a4      	uxth	r4, r4
 8002754:	b280      	uxth	r0, r0
 8002756:	4284      	cmp	r4, r0
 8002758:	bf38      	it	cc
 800275a:	460a      	movcc	r2, r1
 800275c:	200c      	movs	r0, #12
 800275e:	4348      	muls	r0, r1
 8002760:	5a1c      	ldrh	r4, [r3, r0]
 8002762:	b2a4      	uxth	r4, r4
 8002764:	b11c      	cbz	r4, 800276e <scheduler+0x42>
 8002766:	5a1c      	ldrh	r4, [r3, r0]
 8002768:	3c01      	subs	r4, #1
 800276a:	b2a4      	uxth	r4, r4
 800276c:	521c      	strh	r4, [r3, r0]
 800276e:	3101      	adds	r1, #1
 8002770:	2906      	cmp	r1, #6
 8002772:	d1de      	bne.n	8002732 <scheduler+0x6>
 8002774:	230c      	movs	r3, #12
 8002776:	4353      	muls	r3, r2
 8002778:	18e9      	adds	r1, r5, r3
 800277a:	8849      	ldrh	r1, [r1, #2]
 800277c:	b289      	uxth	r1, r1
 800277e:	52e9      	strh	r1, [r5, r3]
 8002780:	4b02      	ldr	r3, [pc, #8]	; (800278c <scheduler+0x60>)
 8002782:	601a      	str	r2, [r3, #0]
 8002784:	bd70      	pop	{r4, r5, r6, pc}
 8002786:	bf00      	nop
 8002788:	20000628 	.word	0x20000628
 800278c:	20000670 	.word	0x20000670

08002790 <SysTick_Handler>:
 8002790:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002794:	f3ef 8308 	mrs	r3, MSP
 8002798:	4c0d      	ldr	r4, [pc, #52]	; (80027d0 <SysTick_Handler+0x40>)
 800279a:	4d0e      	ldr	r5, [pc, #56]	; (80027d4 <SysTick_Handler+0x44>)
 800279c:	6822      	ldr	r2, [r4, #0]
 800279e:	3201      	adds	r2, #1
 80027a0:	bf1d      	ittte	ne
 80027a2:	6822      	ldrne	r2, [r4, #0]
 80027a4:	210c      	movne	r1, #12
 80027a6:	fb01 5202 	mlane	r2, r1, r2, r5
 80027aa:	2300      	moveq	r3, #0
 80027ac:	bf14      	ite	ne
 80027ae:	6093      	strne	r3, [r2, #8]
 80027b0:	6023      	streq	r3, [r4, #0]
 80027b2:	f7ff ffbb 	bl	800272c <scheduler>
 80027b6:	6822      	ldr	r2, [r4, #0]
 80027b8:	230c      	movs	r3, #12
 80027ba:	fb03 5302 	mla	r3, r3, r2, r5
 80027be:	689a      	ldr	r2, [r3, #8]
 80027c0:	f06f 0306 	mvn.w	r3, #6
 80027c4:	469e      	mov	lr, r3
 80027c6:	f382 8808 	msr	MSP, r2
 80027ca:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80027ce:	4770      	bx	lr
 80027d0:	20000670 	.word	0x20000670
 80027d4:	20000628 	.word	0x20000628

080027d8 <__aeabi_d2f>:
 80027d8:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80027dc:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 80027e0:	bf24      	itt	cs
 80027e2:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 80027e6:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 80027ea:	d90d      	bls.n	8002808 <__aeabi_d2f+0x30>
 80027ec:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 80027f0:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 80027f4:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 80027f8:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 80027fc:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002800:	bf08      	it	eq
 8002802:	f020 0001 	biceq.w	r0, r0, #1
 8002806:	4770      	bx	lr
 8002808:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 800280c:	d121      	bne.n	8002852 <__aeabi_d2f+0x7a>
 800280e:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002812:	bfbc      	itt	lt
 8002814:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002818:	4770      	bxlt	lr
 800281a:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 800281e:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002822:	f1c2 0218 	rsb	r2, r2, #24
 8002826:	f1c2 0c20 	rsb	ip, r2, #32
 800282a:	fa10 f30c 	lsls.w	r3, r0, ip
 800282e:	fa20 f002 	lsr.w	r0, r0, r2
 8002832:	bf18      	it	ne
 8002834:	f040 0001 	orrne.w	r0, r0, #1
 8002838:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 800283c:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002840:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002844:	ea40 000c 	orr.w	r0, r0, ip
 8002848:	fa23 f302 	lsr.w	r3, r3, r2
 800284c:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002850:	e7cc      	b.n	80027ec <__aeabi_d2f+0x14>
 8002852:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002856:	d107      	bne.n	8002868 <__aeabi_d2f+0x90>
 8002858:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 800285c:	bf1e      	ittt	ne
 800285e:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002862:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002866:	4770      	bxne	lr
 8002868:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 800286c:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002870:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002874:	4770      	bx	lr
 8002876:	bf00      	nop

08002878 <_init>:
 8002878:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800287a:	bf00      	nop
 800287c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800287e:	bc08      	pop	{r3}
 8002880:	469e      	mov	lr, r3
 8002882:	4770      	bx	lr

08002884 <_fini>:
 8002884:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002886:	bf00      	nop
 8002888:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800288a:	bc08      	pop	{r3}
 800288c:	469e      	mov	lr, r3
 800288e:	4770      	bx	lr
 8002890:	61646f6b 	.word	0x61646f6b
 8002894:	6920616d 	.word	0x6920616d
 8002898:	2074696e 	.word	0x2074696e
 800289c:	25206925 	.word	0x25206925
 80028a0:	203a2069 	.word	0x203a2069
 80028a4:	4f5b2000 	.word	0x4f5b2000
 80028a8:	000a5d4b 	.word	0x000a5d4b
 80028ac:	41465b20 	.word	0x41465b20
 80028b0:	44454c49 	.word	0x44454c49
 80028b4:	000a0a5d 	.word	0x000a0a5d
 80028b8:	74737973 	.word	0x74737973
 80028bc:	74206d65 	.word	0x74206d65
 80028c0:	20656d69 	.word	0x20656d69
 80028c4:	5b207525 	.word	0x5b207525
 80028c8:	0a5d736d 	.word	0x0a5d736d
 80028cc:	20692500 	.word	0x20692500
 80028d0:	0a206925 	.word	0x0a206925
 80028d4:	00          	.byte	0x00
 80028d5:	74          	.byte	0x74
 80028d6:	7365      	.short	0x7365
 80028d8:	676e6974 	.word	0x676e6974
 80028dc:	6d756e20 	.word	0x6d756e20
 80028e0:	20726562 	.word	0x20726562
 80028e4:	6e697270 	.word	0x6e697270
 80028e8:	75252074 	.word	0x75252074
 80028ec:	20752520 	.word	0x20752520
 80028f0:	0a3a7525 	.word	0x0a3a7525
 80028f4:	6f6c6600 	.word	0x6f6c6600
 80028f8:	6e207461 	.word	0x6e207461
 80028fc:	65626d75 	.word	0x65626d75
 8002900:	66252072 	.word	0x66252072
 8002904:	25000a20 	.word	0x25000a20
 8002908:	66252066 	.word	0x66252066
 800290c:	20662520 	.word	0x20662520
 8002910:	25206625 	.word	0x25206625
 8002914:	66252066 	.word	0x66252066
 8002918:	20662520 	.word	0x20662520
 800291c:	000a6625 	.word	0x000a6625
 8002920:	656c6469 	.word	0x656c6469
 8002924:	0a752520 	.word	0x0a752520
 8002928:	00000000 	.word	0x00000000

0800292c <__EH_FRAME_BEGIN__>:
 800292c:	00000000                                ....
