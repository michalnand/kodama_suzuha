
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f8de 	bl	800134c <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f981 	bl	80014a4 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 fa32 	bl	8000618 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fcff 	bl	8000bc4 <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001d6:	f000 fce5 	bl	8000ba4 <_ZN6CMotor10motor_initEv>
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
 8000202:	f001 fa87 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f001 fa82 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f001 fa7d 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002870 	.word	0x08002870
 8000228:	08002885 	.word	0x08002885
 800022c:	0800288c 	.word	0x0800288c

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	b510      	push	{r4, lr}
 8000232:	2108      	movs	r1, #8
 8000234:	4604      	mov	r4, r0
 8000236:	f001 f8e9 	bl	800140c <_ZN5CGPIO8gpio_offEm>
 800023a:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000242:	f000 bc13 	b.w	8000a6c <_ZN6CMotor11motor_sleepEv>

08000246 <_ZN7CKodama6wakeupEv>:
 8000246:	b510      	push	{r4, lr}
 8000248:	2108      	movs	r1, #8
 800024a:	4604      	mov	r4, r0
 800024c:	34c4      	adds	r4, #196	; 0xc4
 800024e:	f001 f8cf 	bl	80013f0 <_ZN5CGPIO7gpio_onEm>
 8000252:	2100      	movs	r1, #0
 8000254:	4620      	mov	r0, r4
 8000256:	460a      	mov	r2, r1
 8000258:	f000 fc9e 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 800025c:	4620      	mov	r0, r4
 800025e:	2101      	movs	r1, #1
 8000260:	2200      	movs	r2, #0
 8000262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000266:	f000 bc97 	b.w	8000b98 <_ZN6CMotor9set_motorEml>

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
 8000282:	f000 ff3d 	bl	8001100 <_ZN4CIMU8imu_readEv>
 8000286:	4638      	mov	r0, r7
 8000288:	f001 f85e 	bl	8001348 <_ZN4CIMU14get_imu_resultEv>
 800028c:	6883      	ldr	r3, [r0, #8]
 800028e:	2500      	movs	r5, #0
 8000290:	4498      	add	r8, r3
 8000292:	4821      	ldr	r0, [pc, #132]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 8000294:	210a      	movs	r1, #10
 8000296:	f000 fa17 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 800029a:	f109 06c4 	add.w	r6, r9, #196	; 0xc4
 800029e:	f1ba 0f00 	cmp.w	sl, #0
 80002a2:	d111      	bne.n	80002c8 <_ZN7CKodama12rotate_robotEllPFlvE+0x58>
 80002a4:	4638      	mov	r0, r7
 80002a6:	f000 ff2b 	bl	8001100 <_ZN4CIMU8imu_readEv>
 80002aa:	4638      	mov	r0, r7
 80002ac:	f001 f84c 	bl	8001348 <_ZN4CIMU14get_imu_resultEv>
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
 80002d4:	f000 fc60 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 80002d8:	4630      	mov	r0, r6
 80002da:	2101      	movs	r1, #1
 80002dc:	2200      	movs	r2, #0
 80002de:	f000 fc5b 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 80002e2:	480d      	ldr	r0, [pc, #52]	; (8000318 <_ZN7CKodama12rotate_robotEllPFlvE+0xa8>)
 80002e4:	2114      	movs	r1, #20
 80002e6:	b003      	add	sp, #12
 80002e8:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80002ec:	f000 b9ec 	b.w	80006c8 <_ZN6CTimer8delay_msEm>
 80002f0:	fb03 f205 	mul.w	r2, r3, r5
 80002f4:	4630      	mov	r0, r6
 80002f6:	2100      	movs	r1, #0
 80002f8:	9301      	str	r3, [sp, #4]
 80002fa:	f000 fc4d 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 80002fe:	9b01      	ldr	r3, [sp, #4]
 8000300:	426a      	negs	r2, r5
 8000302:	4630      	mov	r0, r6
 8000304:	2101      	movs	r1, #1
 8000306:	435a      	muls	r2, r3
 8000308:	f000 fc46 	bl	8000b98 <_ZN6CMotor9set_motorEml>
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
 80003a6:	f000 f8bd 	bl	8000524 <_ZN5CMath3absEf>
 80003aa:	ee07 0a90 	vmov	s15, r0
 80003ae:	eef4 8ae7 	vcmpe.f32	s17, s15
 80003b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003b6:	d506      	bpl.n	80003c6 <_ZN13CLinePosition7processEP10sRGBResult+0x96>
 80003b8:	4829      	ldr	r0, [pc, #164]	; (8000460 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 80003ba:	f857 1c04 	ldr.w	r1, [r7, #-4]
 80003be:	f000 f8b1 	bl	8000524 <_ZN5CMath3absEf>
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

08000470 <_ZN4CPID4initEffff>:
 8000470:	ee07 1a90 	vmov	s15, r1
 8000474:	ee06 2a90 	vmov	s13, r2
 8000478:	ee07 3a10 	vmov	s14, r3
 800047c:	ee77 6aa6 	vadd.f32	s13, s15, s13
 8000480:	eef1 7a67 	vneg.f32	s15, s15
 8000484:	ee76 6a87 	vadd.f32	s13, s13, s14
 8000488:	2300      	movs	r3, #0
 800048a:	edc0 6a03 	vstr	s13, [r0, #12]
 800048e:	ee77 6a07 	vadd.f32	s13, s14, s14
 8000492:	6003      	str	r3, [r0, #0]
 8000494:	ee77 7ae6 	vsub.f32	s15, s15, s13
 8000498:	6043      	str	r3, [r0, #4]
 800049a:	6083      	str	r3, [r0, #8]
 800049c:	6183      	str	r3, [r0, #24]
 800049e:	9b00      	ldr	r3, [sp, #0]
 80004a0:	edc0 7a04 	vstr	s15, [r0, #16]
 80004a4:	ed80 7a05 	vstr	s14, [r0, #20]
 80004a8:	61c3      	str	r3, [r0, #28]
 80004aa:	4770      	bx	lr

080004ac <_ZN4CPIDC1Effff>:
 80004ac:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80004ae:	9d06      	ldr	r5, [sp, #24]
 80004b0:	9500      	str	r5, [sp, #0]
 80004b2:	4604      	mov	r4, r0
 80004b4:	f7ff ffdc 	bl	8000470 <_ZN4CPID4initEffff>
 80004b8:	4620      	mov	r0, r4
 80004ba:	b003      	add	sp, #12
 80004bc:	bd30      	pop	{r4, r5, pc}

080004be <_ZN4CPID7processEf>:
 80004be:	edd0 7a00 	vldr	s15, [r0]
 80004c2:	edd0 5a04 	vldr	s11, [r0, #16]
 80004c6:	ed90 6a03 	vldr	s12, [r0, #12]
 80004ca:	ed90 7a01 	vldr	s14, [r0, #4]
 80004ce:	edc0 7a01 	vstr	s15, [r0, #4]
 80004d2:	ee06 1a90 	vmov	s13, r1
 80004d6:	ee67 7aa5 	vmul.f32	s15, s15, s11
 80004da:	ee46 7a86 	vmla.f32	s15, s13, s12
 80004de:	6001      	str	r1, [r0, #0]
 80004e0:	edd0 6a05 	vldr	s13, [r0, #20]
 80004e4:	ed80 7a02 	vstr	s14, [r0, #8]
 80004e8:	ee47 7a26 	vmla.f32	s15, s14, s13
 80004ec:	ed90 7a06 	vldr	s14, [r0, #24]
 80004f0:	ee77 7a87 	vadd.f32	s15, s15, s14
 80004f4:	ed90 7a07 	vldr	s14, [r0, #28]
 80004f8:	edc0 7a06 	vstr	s15, [r0, #24]
 80004fc:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000500:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000504:	bfc8      	it	gt
 8000506:	ed80 7a06 	vstrgt	s14, [r0, #24]
 800050a:	edd0 7a06 	vldr	s15, [r0, #24]
 800050e:	eeb1 7a47 	vneg.f32	s14, s14
 8000512:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000516:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800051a:	bf48      	it	mi
 800051c:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000520:	6980      	ldr	r0, [r0, #24]
 8000522:	4770      	bx	lr

08000524 <_ZN5CMath3absEf>:
 8000524:	ee07 1a90 	vmov	s15, r1
 8000528:	eef5 7ac0 	vcmpe.f32	s15, #0.0
 800052c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000530:	bf48      	it	mi
 8000532:	eef1 7a67 	vnegmi.f32	s15, s15
 8000536:	ee17 0a90 	vmov	r0, s15
 800053a:	4770      	bx	lr

0800053c <_ZN5CMath4randEv>:
 800053c:	6803      	ldr	r3, [r0, #0]
 800053e:	490b      	ldr	r1, [pc, #44]	; (800056c <_ZN5CMath4randEv+0x30>)
 8000540:	f243 0239 	movw	r2, #12345	; 0x3039
 8000544:	fb01 2203 	mla	r2, r1, r3, r2
 8000548:	6841      	ldr	r1, [r0, #4]
 800054a:	6002      	str	r2, [r0, #0]
 800054c:	f341 0300 	sbfx	r3, r1, #0, #1
 8000550:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 8000554:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 8000558:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 800055c:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 8000560:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 8000564:	6043      	str	r3, [r0, #4]
 8000566:	ea83 0002 	eor.w	r0, r3, r2
 800056a:	4770      	bx	lr
 800056c:	41c64e6d 	.word	0x41c64e6d

08000570 <_ZN5CMath3rndEv>:
 8000570:	b508      	push	{r3, lr}
 8000572:	f7ff ffe3 	bl	800053c <_ZN5CMath4randEv>
 8000576:	4b0a      	ldr	r3, [pc, #40]	; (80005a0 <_ZN5CMath3rndEv+0x30>)
 8000578:	fbb0 f2f3 	udiv	r2, r0, r3
 800057c:	fb02 0013 	mls	r0, r2, r3, r0
 8000580:	ee07 0a90 	vmov	s15, r0
 8000584:	ed9f 7a07 	vldr	s14, [pc, #28]	; 80005a4 <_ZN5CMath3rndEv+0x34>
 8000588:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 800058c:	eec7 7a87 	vdiv.f32	s15, s15, s14
 8000590:	ed9f 7a05 	vldr	s14, [pc, #20]	; 80005a8 <_ZN5CMath3rndEv+0x38>
 8000594:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8000598:	ee17 0a90 	vmov	r0, s15
 800059c:	bd08      	pop	{r3, pc}
 800059e:	bf00      	nop
 80005a0:	001e8480 	.word	0x001e8480
 80005a4:	49742400 	.word	0x49742400
 80005a8:	3f800000 	.word	0x3f800000

080005ac <TIM3_IRQHandler>:
 80005ac:	2300      	movs	r3, #0
 80005ae:	4a15      	ldr	r2, [pc, #84]	; (8000604 <TIM3_IRQHandler+0x58>)
 80005b0:	5cd1      	ldrb	r1, [r2, r3]
 80005b2:	b111      	cbz	r1, 80005ba <TIM3_IRQHandler+0xe>
 80005b4:	5cd1      	ldrb	r1, [r2, r3]
 80005b6:	29ff      	cmp	r1, #255	; 0xff
 80005b8:	d11e      	bne.n	80005f8 <TIM3_IRQHandler+0x4c>
 80005ba:	4913      	ldr	r1, [pc, #76]	; (8000608 <TIM3_IRQHandler+0x5c>)
 80005bc:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 80005c0:	b128      	cbz	r0, 80005ce <TIM3_IRQHandler+0x22>
 80005c2:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80005c6:	3a01      	subs	r2, #1
 80005c8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80005cc:	e009      	b.n	80005e2 <TIM3_IRQHandler+0x36>
 80005ce:	480f      	ldr	r0, [pc, #60]	; (800060c <TIM3_IRQHandler+0x60>)
 80005d0:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80005d4:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80005d8:	5cd2      	ldrb	r2, [r2, r3]
 80005da:	b912      	cbnz	r2, 80005e2 <TIM3_IRQHandler+0x36>
 80005dc:	4a09      	ldr	r2, [pc, #36]	; (8000604 <TIM3_IRQHandler+0x58>)
 80005de:	2101      	movs	r1, #1
 80005e0:	54d1      	strb	r1, [r2, r3]
 80005e2:	3301      	adds	r3, #1
 80005e4:	2b08      	cmp	r3, #8
 80005e6:	d1e2      	bne.n	80005ae <TIM3_IRQHandler+0x2>
 80005e8:	4a09      	ldr	r2, [pc, #36]	; (8000610 <TIM3_IRQHandler+0x64>)
 80005ea:	480a      	ldr	r0, [pc, #40]	; (8000614 <TIM3_IRQHandler+0x68>)
 80005ec:	6813      	ldr	r3, [r2, #0]
 80005ee:	2101      	movs	r1, #1
 80005f0:	3301      	adds	r3, #1
 80005f2:	6013      	str	r3, [r2, #0]
 80005f4:	f001 bec0 	b.w	8002378 <TIM_ClearITPendingBit>
 80005f8:	5cd1      	ldrb	r1, [r2, r3]
 80005fa:	3101      	adds	r1, #1
 80005fc:	b2c9      	uxtb	r1, r1
 80005fe:	54d1      	strb	r1, [r2, r3]
 8000600:	e7db      	b.n	80005ba <TIM3_IRQHandler+0xe>
 8000602:	bf00      	nop
 8000604:	20000130 	.word	0x20000130
 8000608:	20000110 	.word	0x20000110
 800060c:	20000140 	.word	0x20000140
 8000610:	20000138 	.word	0x20000138
 8000614:	40000400 	.word	0x40000400

08000618 <_ZN6CTimer10timer_initEv>:
 8000618:	b530      	push	{r4, r5, lr}
 800061a:	4a1f      	ldr	r2, [pc, #124]	; (8000698 <_ZN6CTimer10timer_initEv+0x80>)
 800061c:	2300      	movs	r3, #0
 800061e:	b085      	sub	sp, #20
 8000620:	6013      	str	r3, [r2, #0]
 8000622:	491e      	ldr	r1, [pc, #120]	; (800069c <_ZN6CTimer10timer_initEv+0x84>)
 8000624:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000628:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800062c:	491c      	ldr	r1, [pc, #112]	; (80006a0 <_ZN6CTimer10timer_initEv+0x88>)
 800062e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000632:	4a1c      	ldr	r2, [pc, #112]	; (80006a4 <_ZN6CTimer10timer_initEv+0x8c>)
 8000634:	2400      	movs	r4, #0
 8000636:	54d4      	strb	r4, [r2, r3]
 8000638:	3301      	adds	r3, #1
 800063a:	2b08      	cmp	r3, #8
 800063c:	d1f1      	bne.n	8000622 <_ZN6CTimer10timer_initEv+0xa>
 800063e:	4d1a      	ldr	r5, [pc, #104]	; (80006a8 <_ZN6CTimer10timer_initEv+0x90>)
 8000640:	2002      	movs	r0, #2
 8000642:	2101      	movs	r1, #1
 8000644:	f001 fe2c 	bl	80022a0 <RCC_APB1PeriphClockCmd>
 8000648:	f44f 738c 	mov.w	r3, #280	; 0x118
 800064c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000650:	4628      	mov	r0, r5
 8000652:	2331      	movs	r3, #49	; 0x31
 8000654:	a901      	add	r1, sp, #4
 8000656:	9302      	str	r3, [sp, #8]
 8000658:	f8ad 4006 	strh.w	r4, [sp, #6]
 800065c:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000660:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000664:	f001 fe2a 	bl	80022bc <TIM_TimeBaseInit>
 8000668:	4628      	mov	r0, r5
 800066a:	2101      	movs	r1, #1
 800066c:	f001 fe76 	bl	800235c <TIM_Cmd>
 8000670:	68eb      	ldr	r3, [r5, #12]
 8000672:	f043 0301 	orr.w	r3, r3, #1
 8000676:	60eb      	str	r3, [r5, #12]
 8000678:	231d      	movs	r3, #29
 800067a:	f88d 3000 	strb.w	r3, [sp]
 800067e:	4668      	mov	r0, sp
 8000680:	2301      	movs	r3, #1
 8000682:	f88d 4001 	strb.w	r4, [sp, #1]
 8000686:	f88d 3002 	strb.w	r3, [sp, #2]
 800068a:	f88d 3003 	strb.w	r3, [sp, #3]
 800068e:	f001 ffad 	bl	80025ec <NVIC_Init>
 8000692:	4620      	mov	r0, r4
 8000694:	b005      	add	sp, #20
 8000696:	bd30      	pop	{r4, r5, pc}
 8000698:	20000138 	.word	0x20000138
 800069c:	20000110 	.word	0x20000110
 80006a0:	20000140 	.word	0x20000140
 80006a4:	20000130 	.word	0x20000130
 80006a8:	40000400 	.word	0x40000400

080006ac <_ZN6CTimer8get_timeEv>:
 80006ac:	b082      	sub	sp, #8
 80006ae:	b672      	cpsid	i
 80006b0:	4b04      	ldr	r3, [pc, #16]	; (80006c4 <_ZN6CTimer8get_timeEv+0x18>)
 80006b2:	681b      	ldr	r3, [r3, #0]
 80006b4:	9301      	str	r3, [sp, #4]
 80006b6:	b662      	cpsie	i
 80006b8:	230a      	movs	r3, #10
 80006ba:	9801      	ldr	r0, [sp, #4]
 80006bc:	fbb0 f0f3 	udiv	r0, r0, r3
 80006c0:	b002      	add	sp, #8
 80006c2:	4770      	bx	lr
 80006c4:	20000138 	.word	0x20000138

080006c8 <_ZN6CTimer8delay_msEm>:
 80006c8:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80006ca:	460c      	mov	r4, r1
 80006cc:	4605      	mov	r5, r0
 80006ce:	f7ff ffed 	bl	80006ac <_ZN6CTimer8get_timeEv>
 80006d2:	4420      	add	r0, r4
 80006d4:	9001      	str	r0, [sp, #4]
 80006d6:	4628      	mov	r0, r5
 80006d8:	9c01      	ldr	r4, [sp, #4]
 80006da:	f7ff ffe7 	bl	80006ac <_ZN6CTimer8get_timeEv>
 80006de:	4284      	cmp	r4, r0
 80006e0:	d902      	bls.n	80006e8 <_ZN6CTimer8delay_msEm+0x20>
 80006e2:	f001 ff7f 	bl	80025e4 <core_yield>
 80006e6:	e7f6      	b.n	80006d6 <_ZN6CTimer8delay_msEm+0xe>
 80006e8:	b003      	add	sp, #12
 80006ea:	bd30      	pop	{r4, r5, pc}

080006ec <_ZN6CTimer22event_timer_set_periodEhm>:
 80006ec:	b672      	cpsid	i
 80006ee:	230a      	movs	r3, #10
 80006f0:	435a      	muls	r2, r3
 80006f2:	4b05      	ldr	r3, [pc, #20]	; (8000708 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 80006f4:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80006f8:	4b04      	ldr	r3, [pc, #16]	; (800070c <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 80006fa:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80006fe:	4b04      	ldr	r3, [pc, #16]	; (8000710 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000700:	2200      	movs	r2, #0
 8000702:	545a      	strb	r2, [r3, r1]
 8000704:	b662      	cpsie	i
 8000706:	4770      	bx	lr
 8000708:	20000110 	.word	0x20000110
 800070c:	20000140 	.word	0x20000140
 8000710:	20000130 	.word	0x20000130

08000714 <_ZN6CTimer17event_timer_checkEh>:
 8000714:	4b05      	ldr	r3, [pc, #20]	; (800072c <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000716:	5c5a      	ldrb	r2, [r3, r1]
 8000718:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 800071c:	b12a      	cbz	r2, 800072a <_ZN6CTimer17event_timer_checkEh+0x16>
 800071e:	b672      	cpsid	i
 8000720:	5c58      	ldrb	r0, [r3, r1]
 8000722:	2200      	movs	r2, #0
 8000724:	b2c0      	uxtb	r0, r0
 8000726:	545a      	strb	r2, [r3, r1]
 8000728:	b662      	cpsie	i
 800072a:	4770      	bx	lr
 800072c:	20000130 	.word	0x20000130

08000730 <_ZN4CRGB8rgb_readEh>:
 8000730:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000734:	4604      	mov	r4, r0
 8000736:	4688      	mov	r8, r1
 8000738:	f000 fae0 	bl	8000cfc <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800073c:	4620      	mov	r0, r4
 800073e:	2172      	movs	r1, #114	; 0x72
 8000740:	f000 fb06 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000744:	21b4      	movs	r1, #180	; 0xb4
 8000746:	4620      	mov	r0, r4
 8000748:	f000 fb02 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800074c:	4620      	mov	r0, r4
 800074e:	f000 fad5 	bl	8000cfc <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000752:	4620      	mov	r0, r4
 8000754:	2173      	movs	r1, #115	; 0x73
 8000756:	f000 fafb 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800075a:	4620      	mov	r0, r4
 800075c:	2101      	movs	r1, #1
 800075e:	4622      	mov	r2, r4
 8000760:	f000 fb37 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000764:	7823      	ldrb	r3, [r4, #0]
 8000766:	83a3      	strh	r3, [r4, #28]
 8000768:	7863      	ldrb	r3, [r4, #1]
 800076a:	83e3      	strh	r3, [r4, #30]
 800076c:	78a3      	ldrb	r3, [r4, #2]
 800076e:	8423      	strh	r3, [r4, #32]
 8000770:	78e3      	ldrb	r3, [r4, #3]
 8000772:	8463      	strh	r3, [r4, #34]	; 0x22
 8000774:	2101      	movs	r1, #1
 8000776:	4620      	mov	r0, r4
 8000778:	4622      	mov	r2, r4
 800077a:	f104 091a 	add.w	r9, r4, #26
 800077e:	1e65      	subs	r5, r4, #1
 8000780:	f000 fb27 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000784:	1ca6      	adds	r6, r4, #2
 8000786:	f104 0722 	add.w	r7, r4, #34	; 0x22
 800078a:	4629      	mov	r1, r5
 800078c:	464b      	mov	r3, r9
 800078e:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000792:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000796:	42bb      	cmp	r3, r7
 8000798:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 800079c:	801a      	strh	r2, [r3, #0]
 800079e:	d1f6      	bne.n	800078e <_ZN4CRGB8rgb_readEh+0x5e>
 80007a0:	4620      	mov	r0, r4
 80007a2:	2101      	movs	r1, #1
 80007a4:	4622      	mov	r2, r4
 80007a6:	f000 fb14 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007aa:	7823      	ldrb	r3, [r4, #0]
 80007ac:	80a3      	strh	r3, [r4, #4]
 80007ae:	7863      	ldrb	r3, [r4, #1]
 80007b0:	80e3      	strh	r3, [r4, #6]
 80007b2:	78a3      	ldrb	r3, [r4, #2]
 80007b4:	8123      	strh	r3, [r4, #8]
 80007b6:	78e3      	ldrb	r3, [r4, #3]
 80007b8:	8163      	strh	r3, [r4, #10]
 80007ba:	2101      	movs	r1, #1
 80007bc:	4620      	mov	r0, r4
 80007be:	4622      	mov	r2, r4
 80007c0:	f000 fb07 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007c4:	f104 0a0a 	add.w	sl, r4, #10
 80007c8:	4633      	mov	r3, r6
 80007ca:	4629      	mov	r1, r5
 80007cc:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80007d0:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80007d4:	4553      	cmp	r3, sl
 80007d6:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 80007da:	801a      	strh	r2, [r3, #0]
 80007dc:	d1f6      	bne.n	80007cc <_ZN4CRGB8rgb_readEh+0x9c>
 80007de:	4620      	mov	r0, r4
 80007e0:	2101      	movs	r1, #1
 80007e2:	4622      	mov	r2, r4
 80007e4:	f000 faf5 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007e8:	7823      	ldrb	r3, [r4, #0]
 80007ea:	81a3      	strh	r3, [r4, #12]
 80007ec:	7863      	ldrb	r3, [r4, #1]
 80007ee:	81e3      	strh	r3, [r4, #14]
 80007f0:	78a3      	ldrb	r3, [r4, #2]
 80007f2:	8223      	strh	r3, [r4, #16]
 80007f4:	78e3      	ldrb	r3, [r4, #3]
 80007f6:	8263      	strh	r3, [r4, #18]
 80007f8:	4622      	mov	r2, r4
 80007fa:	4620      	mov	r0, r4
 80007fc:	2101      	movs	r1, #1
 80007fe:	f000 fae8 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000802:	f104 0612 	add.w	r6, r4, #18
 8000806:	462a      	mov	r2, r5
 8000808:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 800080c:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000810:	45b2      	cmp	sl, r6
 8000812:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000816:	f8aa 3000 	strh.w	r3, [sl]
 800081a:	d1f5      	bne.n	8000808 <_ZN4CRGB8rgb_readEh+0xd8>
 800081c:	4620      	mov	r0, r4
 800081e:	2101      	movs	r1, #1
 8000820:	4622      	mov	r2, r4
 8000822:	f000 fad6 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000826:	7823      	ldrb	r3, [r4, #0]
 8000828:	82a3      	strh	r3, [r4, #20]
 800082a:	7863      	ldrb	r3, [r4, #1]
 800082c:	82e3      	strh	r3, [r4, #22]
 800082e:	78a3      	ldrb	r3, [r4, #2]
 8000830:	8323      	strh	r3, [r4, #24]
 8000832:	78e3      	ldrb	r3, [r4, #3]
 8000834:	8363      	strh	r3, [r4, #26]
 8000836:	4622      	mov	r2, r4
 8000838:	4620      	mov	r0, r4
 800083a:	2101      	movs	r1, #1
 800083c:	f000 fac9 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000840:	462a      	mov	r2, r5
 8000842:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 8000846:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800084a:	454e      	cmp	r6, r9
 800084c:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000850:	8033      	strh	r3, [r6, #0]
 8000852:	d1f6      	bne.n	8000842 <_ZN4CRGB8rgb_readEh+0x112>
 8000854:	4620      	mov	r0, r4
 8000856:	2101      	movs	r1, #1
 8000858:	4622      	mov	r2, r4
 800085a:	f000 faba 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800085e:	7823      	ldrb	r3, [r4, #0]
 8000860:	84a3      	strh	r3, [r4, #36]	; 0x24
 8000862:	7863      	ldrb	r3, [r4, #1]
 8000864:	84e3      	strh	r3, [r4, #38]	; 0x26
 8000866:	78a3      	ldrb	r3, [r4, #2]
 8000868:	8523      	strh	r3, [r4, #40]	; 0x28
 800086a:	78e3      	ldrb	r3, [r4, #3]
 800086c:	8563      	strh	r3, [r4, #42]	; 0x2a
 800086e:	4622      	mov	r2, r4
 8000870:	4620      	mov	r0, r4
 8000872:	2100      	movs	r1, #0
 8000874:	f000 faad 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000878:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 800087c:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000880:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 8000884:	4297      	cmp	r7, r2
 8000886:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800088a:	803b      	strh	r3, [r7, #0]
 800088c:	d1f6      	bne.n	800087c <_ZN4CRGB8rgb_readEh+0x14c>
 800088e:	4620      	mov	r0, r4
 8000890:	f000 fa49 	bl	8000d26 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000894:	f1b8 0f00 	cmp.w	r8, #0
 8000898:	d025      	beq.n	80008e6 <_ZN4CRGB8rgb_readEh+0x1b6>
 800089a:	2300      	movs	r3, #0
 800089c:	88a1      	ldrh	r1, [r4, #4]
 800089e:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 80008a2:	440a      	add	r2, r1
 80008a4:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 80008a8:	89a1      	ldrh	r1, [r4, #12]
 80008aa:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 80008ae:	440a      	add	r2, r1
 80008b0:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 80008b4:	8aa1      	ldrh	r1, [r4, #20]
 80008b6:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 80008ba:	440a      	add	r2, r1
 80008bc:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 80008c0:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 80008c2:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 80008c6:	440a      	add	r2, r1
 80008c8:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 80008cc:	8ba1      	ldrh	r1, [r4, #28]
 80008ce:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 80008d2:	3301      	adds	r3, #1
 80008d4:	440a      	add	r2, r1
 80008d6:	2b04      	cmp	r3, #4
 80008d8:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 80008dc:	f104 0402 	add.w	r4, r4, #2
 80008e0:	d1dc      	bne.n	800089c <_ZN4CRGB8rgb_readEh+0x16c>
 80008e2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80008e6:	4641      	mov	r1, r8
 80008e8:	b672      	cpsid	i
 80008ea:	88a3      	ldrh	r3, [r4, #4]
 80008ec:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 80008f0:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 80008f4:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 80008f8:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 80008fc:	1a18      	subs	r0, r3, r0
 80008fe:	89a3      	ldrh	r3, [r4, #12]
 8000900:	1a9a      	subs	r2, r3, r2
 8000902:	8aa3      	ldrh	r3, [r4, #20]
 8000904:	1b5b      	subs	r3, r3, r5
 8000906:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 8000908:	1bad      	subs	r5, r5, r6
 800090a:	84a5      	strh	r5, [r4, #36]	; 0x24
 800090c:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 8000910:	8ba5      	ldrh	r5, [r4, #28]
 8000912:	b280      	uxth	r0, r0
 8000914:	b292      	uxth	r2, r2
 8000916:	b29b      	uxth	r3, r3
 8000918:	1bad      	subs	r5, r5, r6
 800091a:	80a0      	strh	r0, [r4, #4]
 800091c:	81a2      	strh	r2, [r4, #12]
 800091e:	82a3      	strh	r3, [r4, #20]
 8000920:	83a5      	strh	r5, [r4, #28]
 8000922:	b662      	cpsie	i
 8000924:	b200      	sxth	r0, r0
 8000926:	b212      	sxth	r2, r2
 8000928:	1885      	adds	r5, r0, r2
 800092a:	b21b      	sxth	r3, r3
 800092c:	18ed      	adds	r5, r5, r3
 800092e:	d00e      	beq.n	800094e <_ZN4CRGB8rgb_readEh+0x21e>
 8000930:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000934:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8000938:	fb90 f0f5 	sdiv	r0, r0, r5
 800093c:	fb92 f2f5 	sdiv	r2, r2, r5
 8000940:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8000944:	85a0      	strh	r0, [r4, #44]	; 0x2c
 8000946:	fb93 f3f5 	sdiv	r3, r3, r5
 800094a:	86a2      	strh	r2, [r4, #52]	; 0x34
 800094c:	87a3      	strh	r3, [r4, #60]	; 0x3c
 800094e:	3101      	adds	r1, #1
 8000950:	2904      	cmp	r1, #4
 8000952:	f104 0402 	add.w	r4, r4, #2
 8000956:	d1c7      	bne.n	80008e8 <_ZN4CRGB8rgb_readEh+0x1b8>
 8000958:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

0800095c <_ZN4CRGB8rgb_initEv>:
 800095c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800095e:	4606      	mov	r6, r0
 8000960:	4635      	mov	r5, r6
 8000962:	f000 f991 	bl	8000c88 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 8000966:	4633      	mov	r3, r6
 8000968:	2200      	movs	r2, #0
 800096a:	3201      	adds	r2, #1
 800096c:	2400      	movs	r4, #0
 800096e:	2a04      	cmp	r2, #4
 8000970:	809c      	strh	r4, [r3, #4]
 8000972:	819c      	strh	r4, [r3, #12]
 8000974:	829c      	strh	r4, [r3, #20]
 8000976:	849c      	strh	r4, [r3, #36]	; 0x24
 8000978:	839c      	strh	r4, [r3, #28]
 800097a:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 800097e:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 8000982:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 8000986:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 800098a:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 800098e:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000990:	869c      	strh	r4, [r3, #52]	; 0x34
 8000992:	879c      	strh	r4, [r3, #60]	; 0x3c
 8000994:	f103 0302 	add.w	r3, r3, #2
 8000998:	d1e7      	bne.n	800096a <_ZN4CRGB8rgb_initEv+0xe>
 800099a:	4630      	mov	r0, r6
 800099c:	2172      	movs	r1, #114	; 0x72
 800099e:	2281      	movs	r2, #129	; 0x81
 80009a0:	23ff      	movs	r3, #255	; 0xff
 80009a2:	f000 f9fe 	bl	8000da2 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009a6:	4630      	mov	r0, r6
 80009a8:	2172      	movs	r1, #114	; 0x72
 80009aa:	2283      	movs	r2, #131	; 0x83
 80009ac:	23ff      	movs	r3, #255	; 0xff
 80009ae:	f000 f9f8 	bl	8000da2 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009b2:	4630      	mov	r0, r6
 80009b4:	2172      	movs	r1, #114	; 0x72
 80009b6:	228d      	movs	r2, #141	; 0x8d
 80009b8:	4623      	mov	r3, r4
 80009ba:	f000 f9f2 	bl	8000da2 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009be:	4630      	mov	r0, r6
 80009c0:	2172      	movs	r1, #114	; 0x72
 80009c2:	2280      	movs	r2, #128	; 0x80
 80009c4:	2303      	movs	r3, #3
 80009c6:	f000 f9ec 	bl	8000da2 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009ca:	228f      	movs	r2, #143	; 0x8f
 80009cc:	2323      	movs	r3, #35	; 0x23
 80009ce:	4630      	mov	r0, r6
 80009d0:	2172      	movs	r1, #114	; 0x72
 80009d2:	f000 f9e6 	bl	8000da2 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80009d6:	af01      	add	r7, sp, #4
 80009d8:	4630      	mov	r0, r6
 80009da:	4621      	mov	r1, r4
 80009dc:	f7ff fea8 	bl	8000730 <_ZN4CRGB8rgb_readEh>
 80009e0:	463b      	mov	r3, r7
 80009e2:	4630      	mov	r0, r6
 80009e4:	2172      	movs	r1, #114	; 0x72
 80009e6:	2292      	movs	r2, #146	; 0x92
 80009e8:	f000 fa40 	bl	8000e6c <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 80009ec:	4623      	mov	r3, r4
 80009ee:	5cfa      	ldrb	r2, [r7, r3]
 80009f0:	2a69      	cmp	r2, #105	; 0x69
 80009f2:	bf1c      	itt	ne
 80009f4:	2201      	movne	r2, #1
 80009f6:	409a      	lslne	r2, r3
 80009f8:	f103 0301 	add.w	r3, r3, #1
 80009fc:	bf18      	it	ne
 80009fe:	4314      	orrne	r4, r2
 8000a00:	2b04      	cmp	r3, #4
 8000a02:	d1f4      	bne.n	80009ee <_ZN4CRGB8rgb_initEv+0x92>
 8000a04:	461f      	mov	r7, r3
 8000a06:	4630      	mov	r0, r6
 8000a08:	2101      	movs	r1, #1
 8000a0a:	f7ff fe91 	bl	8000730 <_ZN4CRGB8rgb_readEh>
 8000a0e:	3f01      	subs	r7, #1
 8000a10:	d1f9      	bne.n	8000a06 <_ZN4CRGB8rgb_initEv+0xaa>
 8000a12:	2104      	movs	r1, #4
 8000a14:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8000a18:	089b      	lsrs	r3, r3, #2
 8000a1a:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 8000a1e:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 8000a22:	089b      	lsrs	r3, r3, #2
 8000a24:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000a28:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000a2c:	089b      	lsrs	r3, r3, #2
 8000a2e:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 8000a32:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8000a36:	089b      	lsrs	r3, r3, #2
 8000a38:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8000a3c:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 8000a40:	3901      	subs	r1, #1
 8000a42:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000a46:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8000a4a:	f105 0502 	add.w	r5, r5, #2
 8000a4e:	d1e1      	bne.n	8000a14 <_ZN4CRGB8rgb_initEv+0xb8>
 8000a50:	4630      	mov	r0, r6
 8000a52:	f7ff fe6d 	bl	8000730 <_ZN4CRGB8rgb_readEh>
 8000a56:	b114      	cbz	r4, 8000a5e <_ZN4CRGB8rgb_initEv+0x102>
 8000a58:	4802      	ldr	r0, [pc, #8]	; (8000a64 <_ZN4CRGB8rgb_initEv+0x108>)
 8000a5a:	1b00      	subs	r0, r0, r4
 8000a5c:	e000      	b.n	8000a60 <_ZN4CRGB8rgb_initEv+0x104>
 8000a5e:	4620      	mov	r0, r4
 8000a60:	b003      	add	sp, #12
 8000a62:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a64:	fffffc18 	.word	0xfffffc18

08000a68 <_ZN4CRGB14get_rgb_resultEv>:
 8000a68:	3004      	adds	r0, #4
 8000a6a:	4770      	bx	lr

08000a6c <_ZN6CMotor11motor_sleepEv>:
 8000a6c:	b510      	push	{r4, lr}
 8000a6e:	4c07      	ldr	r4, [pc, #28]	; (8000a8c <_ZN6CMotor11motor_sleepEv+0x20>)
 8000a70:	21c0      	movs	r1, #192	; 0xc0
 8000a72:	4620      	mov	r0, r4
 8000a74:	2200      	movs	r2, #0
 8000a76:	2318      	movs	r3, #24
 8000a78:	f000 fadc 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000a7c:	4620      	mov	r0, r4
 8000a7e:	21c2      	movs	r1, #194	; 0xc2
 8000a80:	2200      	movs	r2, #0
 8000a82:	2318      	movs	r3, #24
 8000a84:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a88:	f000 bad4 	b.w	8001034 <_ZN4CI2C9write_regEhhh>
 8000a8c:	20000160 	.word	0x20000160

08000a90 <_ZN6CMotor13motor_refreshEv>:
 8000a90:	b570      	push	{r4, r5, r6, lr}
 8000a92:	e890 0030 	ldmia.w	r0, {r4, r5}
 8000a96:	2c2c      	cmp	r4, #44	; 0x2c
 8000a98:	dc74      	bgt.n	8000b84 <_ZN6CMotor13motor_refreshEv+0xf4>
 8000a9a:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000a9e:	db11      	blt.n	8000ac4 <_ZN6CMotor13motor_refreshEv+0x34>
 8000aa0:	2d2c      	cmp	r5, #44	; 0x2c
 8000aa2:	dc5e      	bgt.n	8000b62 <_ZN6CMotor13motor_refreshEv+0xd2>
 8000aa4:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 8000aa8:	db33      	blt.n	8000b12 <_ZN6CMotor13motor_refreshEv+0x82>
 8000aaa:	b1dc      	cbz	r4, 8000ae4 <_ZN6CMotor13motor_refreshEv+0x54>
 8000aac:	e001      	b.n	8000ab2 <_ZN6CMotor13motor_refreshEv+0x22>
 8000aae:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000ab2:	2c00      	cmp	r4, #0
 8000ab4:	dd0d      	ble.n	8000ad2 <_ZN6CMotor13motor_refreshEv+0x42>
 8000ab6:	2c06      	cmp	r4, #6
 8000ab8:	bfb8      	it	lt
 8000aba:	2406      	movlt	r4, #6
 8000abc:	00a4      	lsls	r4, r4, #2
 8000abe:	f044 0402 	orr.w	r4, r4, #2
 8000ac2:	e00d      	b.n	8000ae0 <_ZN6CMotor13motor_refreshEv+0x50>
 8000ac4:	2d2c      	cmp	r5, #44	; 0x2c
 8000ac6:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000aca:	dc60      	bgt.n	8000b8e <_ZN6CMotor13motor_refreshEv+0xfe>
 8000acc:	42a5      	cmp	r5, r4
 8000ace:	bfb8      	it	lt
 8000ad0:	4625      	movlt	r5, r4
 8000ad2:	4264      	negs	r4, r4
 8000ad4:	2c06      	cmp	r4, #6
 8000ad6:	bfb8      	it	lt
 8000ad8:	2406      	movlt	r4, #6
 8000ada:	00a4      	lsls	r4, r4, #2
 8000adc:	f044 0401 	orr.w	r4, r4, #1
 8000ae0:	b2e4      	uxtb	r4, r4
 8000ae2:	e000      	b.n	8000ae6 <_ZN6CMotor13motor_refreshEv+0x56>
 8000ae4:	241b      	movs	r4, #27
 8000ae6:	2200      	movs	r2, #0
 8000ae8:	4613      	mov	r3, r2
 8000aea:	482a      	ldr	r0, [pc, #168]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000aec:	21c0      	movs	r1, #192	; 0xc0
 8000aee:	f000 faa1 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000af2:	4828      	ldr	r0, [pc, #160]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000af4:	21c0      	movs	r1, #192	; 0xc0
 8000af6:	2200      	movs	r2, #0
 8000af8:	4623      	mov	r3, r4
 8000afa:	f000 fa9b 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000afe:	2d00      	cmp	r5, #0
 8000b00:	d020      	beq.n	8000b44 <_ZN6CMotor13motor_refreshEv+0xb4>
 8000b02:	dd16      	ble.n	8000b32 <_ZN6CMotor13motor_refreshEv+0xa2>
 8000b04:	2d06      	cmp	r5, #6
 8000b06:	bfb8      	it	lt
 8000b08:	2506      	movlt	r5, #6
 8000b0a:	00ad      	lsls	r5, r5, #2
 8000b0c:	f045 0501 	orr.w	r5, r5, #1
 8000b10:	e016      	b.n	8000b40 <_ZN6CMotor13motor_refreshEv+0xb0>
 8000b12:	2c00      	cmp	r4, #0
 8000b14:	d1cb      	bne.n	8000aae <_ZN6CMotor13motor_refreshEv+0x1e>
 8000b16:	481f      	ldr	r0, [pc, #124]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b18:	21c0      	movs	r1, #192	; 0xc0
 8000b1a:	4622      	mov	r2, r4
 8000b1c:	4623      	mov	r3, r4
 8000b1e:	f000 fa89 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000b22:	481c      	ldr	r0, [pc, #112]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b24:	21c0      	movs	r1, #192	; 0xc0
 8000b26:	4622      	mov	r2, r4
 8000b28:	231b      	movs	r3, #27
 8000b2a:	f000 fa83 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000b2e:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000b32:	426d      	negs	r5, r5
 8000b34:	2d06      	cmp	r5, #6
 8000b36:	bfb8      	it	lt
 8000b38:	2506      	movlt	r5, #6
 8000b3a:	00ad      	lsls	r5, r5, #2
 8000b3c:	f045 0502 	orr.w	r5, r5, #2
 8000b40:	b2ed      	uxtb	r5, r5
 8000b42:	e000      	b.n	8000b46 <_ZN6CMotor13motor_refreshEv+0xb6>
 8000b44:	251b      	movs	r5, #27
 8000b46:	2200      	movs	r2, #0
 8000b48:	4613      	mov	r3, r2
 8000b4a:	4812      	ldr	r0, [pc, #72]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b4c:	21c2      	movs	r1, #194	; 0xc2
 8000b4e:	f000 fa71 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000b52:	462b      	mov	r3, r5
 8000b54:	480f      	ldr	r0, [pc, #60]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b56:	21c2      	movs	r1, #194	; 0xc2
 8000b58:	2200      	movs	r2, #0
 8000b5a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b5e:	f000 ba69 	b.w	8001034 <_ZN4CI2C9write_regEhhh>
 8000b62:	b96c      	cbnz	r4, 8000b80 <_ZN6CMotor13motor_refreshEv+0xf0>
 8000b64:	480b      	ldr	r0, [pc, #44]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b66:	21c0      	movs	r1, #192	; 0xc0
 8000b68:	4622      	mov	r2, r4
 8000b6a:	4623      	mov	r3, r4
 8000b6c:	f000 fa62 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000b70:	4808      	ldr	r0, [pc, #32]	; (8000b94 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000b72:	21c0      	movs	r1, #192	; 0xc0
 8000b74:	4622      	mov	r2, r4
 8000b76:	231b      	movs	r3, #27
 8000b78:	f000 fa5c 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 8000b7c:	252c      	movs	r5, #44	; 0x2c
 8000b7e:	e7c4      	b.n	8000b0a <_ZN6CMotor13motor_refreshEv+0x7a>
 8000b80:	252c      	movs	r5, #44	; 0x2c
 8000b82:	e796      	b.n	8000ab2 <_ZN6CMotor13motor_refreshEv+0x22>
 8000b84:	242c      	movs	r4, #44	; 0x2c
 8000b86:	42a5      	cmp	r5, r4
 8000b88:	dd8c      	ble.n	8000aa4 <_ZN6CMotor13motor_refreshEv+0x14>
 8000b8a:	4625      	mov	r5, r4
 8000b8c:	e796      	b.n	8000abc <_ZN6CMotor13motor_refreshEv+0x2c>
 8000b8e:	252c      	movs	r5, #44	; 0x2c
 8000b90:	e79f      	b.n	8000ad2 <_ZN6CMotor13motor_refreshEv+0x42>
 8000b92:	bf00      	nop
 8000b94:	20000160 	.word	0x20000160

08000b98 <_ZN6CMotor9set_motorEml>:
 8000b98:	2901      	cmp	r1, #1
 8000b9a:	bf98      	it	ls
 8000b9c:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000ba0:	f7ff bf76 	b.w	8000a90 <_ZN6CMotor13motor_refreshEv>

08000ba4 <_ZN6CMotor10motor_initEv>:
 8000ba4:	b510      	push	{r4, lr}
 8000ba6:	2100      	movs	r1, #0
 8000ba8:	4604      	mov	r4, r0
 8000baa:	460a      	mov	r2, r1
 8000bac:	f7ff fff4 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8000bb0:	4620      	mov	r0, r4
 8000bb2:	2101      	movs	r1, #1
 8000bb4:	2200      	movs	r2, #0
 8000bb6:	f7ff ffef 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8000bba:	4620      	mov	r0, r4
 8000bbc:	f7ff ff68 	bl	8000a90 <_ZN6CMotor13motor_refreshEv>
 8000bc0:	2000      	movs	r0, #0
 8000bc2:	bd10      	pop	{r4, pc}

08000bc4 <_ZN8CSensors12sensors_initEv>:
 8000bc4:	b510      	push	{r4, lr}
 8000bc6:	4604      	mov	r4, r0
 8000bc8:	4808      	ldr	r0, [pc, #32]	; (8000bec <_ZN8CSensors12sensors_initEv+0x28>)
 8000bca:	f000 f9b1 	bl	8000f30 <_ZN4CI2C4initEv>
 8000bce:	4620      	mov	r0, r4
 8000bd0:	f7ff fec4 	bl	800095c <_ZN4CRGB8rgb_initEv>
 8000bd4:	b110      	cbz	r0, 8000bdc <_ZN8CSensors12sensors_initEv+0x18>
 8000bd6:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000bda:	bd10      	pop	{r4, pc}
 8000bdc:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8000be0:	f000 fb36 	bl	8001250 <_ZN4CIMU8imu_initEv>
 8000be4:	b108      	cbz	r0, 8000bea <_ZN8CSensors12sensors_initEv+0x26>
 8000be6:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000bea:	bd10      	pop	{r4, pc}
 8000bec:	20000160 	.word	0x20000160

08000bf0 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000bf0:	2365      	movs	r3, #101	; 0x65
 8000bf2:	3b01      	subs	r3, #1
 8000bf4:	d001      	beq.n	8000bfa <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000bf6:	bf00      	nop
 8000bf8:	e7fb      	b.n	8000bf2 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000bfa:	4770      	bx	lr

08000bfc <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000bfc:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000bfe:	2301      	movs	r3, #1
 8000c00:	2203      	movs	r2, #3
 8000c02:	4605      	mov	r5, r0
 8000c04:	24f0      	movs	r4, #240	; 0xf0
 8000c06:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c0a:	f88d 3006 	strb.w	r3, [sp, #6]
 8000c0e:	4669      	mov	r1, sp
 8000c10:	2300      	movs	r3, #0
 8000c12:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c16:	f88d 2005 	strb.w	r2, [sp, #5]
 8000c1a:	f88d 3007 	strb.w	r3, [sp, #7]
 8000c1e:	9400      	str	r4, [sp, #0]
 8000c20:	f001 fd2a 	bl	8002678 <GPIO_Init>
 8000c24:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c28:	4628      	mov	r0, r5
 8000c2a:	851c      	strh	r4, [r3, #40]	; 0x28
 8000c2c:	f7ff ffe0 	bl	8000bf0 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c30:	b003      	add	sp, #12
 8000c32:	bd30      	pop	{r4, r5, pc}

08000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000c34:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000c36:	2300      	movs	r3, #0
 8000c38:	2203      	movs	r2, #3
 8000c3a:	4605      	mov	r5, r0
 8000c3c:	24f0      	movs	r4, #240	; 0xf0
 8000c3e:	4669      	mov	r1, sp
 8000c40:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c44:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c48:	f88d 2005 	strb.w	r2, [sp, #5]
 8000c4c:	f88d 3007 	strb.w	r3, [sp, #7]
 8000c50:	9400      	str	r4, [sp, #0]
 8000c52:	f001 fd11 	bl	8002678 <GPIO_Init>
 8000c56:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000c5a:	4628      	mov	r0, r5
 8000c5c:	619c      	str	r4, [r3, #24]
 8000c5e:	f7ff ffc7 	bl	8000bf0 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c62:	b003      	add	sp, #12
 8000c64:	bd30      	pop	{r4, r5, pc}
	...

08000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000c68:	4b02      	ldr	r3, [pc, #8]	; (8000c74 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000c6a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000c6e:	851a      	strh	r2, [r3, #40]	; 0x28
 8000c70:	f7ff bfbe 	b.w	8000bf0 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c74:	48000800 	.word	0x48000800

08000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000c78:	4b02      	ldr	r3, [pc, #8]	; (8000c84 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000c7a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000c7e:	619a      	str	r2, [r3, #24]
 8000c80:	f7ff bfb6 	b.w	8000bf0 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c84:	48000800 	.word	0x48000800

08000c88 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000c88:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000c8a:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000c8e:	4605      	mov	r5, r0
 8000c90:	2400      	movs	r4, #0
 8000c92:	9300      	str	r3, [sp, #0]
 8000c94:	2703      	movs	r7, #3
 8000c96:	2301      	movs	r3, #1
 8000c98:	4817      	ldr	r0, [pc, #92]	; (8000cf8 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8000c9a:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c9e:	4669      	mov	r1, sp
 8000ca0:	26f0      	movs	r6, #240	; 0xf0
 8000ca2:	f88d 7005 	strb.w	r7, [sp, #5]
 8000ca6:	f88d 4006 	strb.w	r4, [sp, #6]
 8000caa:	f88d 4007 	strb.w	r4, [sp, #7]
 8000cae:	f001 fce3 	bl	8002678 <GPIO_Init>
 8000cb2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cb6:	4669      	mov	r1, sp
 8000cb8:	9600      	str	r6, [sp, #0]
 8000cba:	f88d 4004 	strb.w	r4, [sp, #4]
 8000cbe:	f88d 7005 	strb.w	r7, [sp, #5]
 8000cc2:	f88d 4007 	strb.w	r4, [sp, #7]
 8000cc6:	f001 fcd7 	bl	8002678 <GPIO_Init>
 8000cca:	4631      	mov	r1, r6
 8000ccc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cd0:	f001 fd14 	bl	80026fc <GPIO_SetBits>
 8000cd4:	4628      	mov	r0, r5
 8000cd6:	f7ff ffcf 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cda:	4628      	mov	r0, r5
 8000cdc:	f7ff ff8e 	bl	8000bfc <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000ce0:	4628      	mov	r0, r5
 8000ce2:	f7ff ffa7 	bl	8000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ce6:	f242 7311 	movw	r3, #10001	; 0x2711
 8000cea:	3b01      	subs	r3, #1
 8000cec:	d001      	beq.n	8000cf2 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 8000cee:	bf00      	nop
 8000cf0:	e7fb      	b.n	8000cea <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 8000cf2:	b003      	add	sp, #12
 8000cf4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000cf6:	bf00      	nop
 8000cf8:	48000800 	.word	0x48000800

08000cfc <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000cfc:	b510      	push	{r4, lr}
 8000cfe:	4604      	mov	r4, r0
 8000d00:	f7ff ffba 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d04:	4620      	mov	r0, r4
 8000d06:	f7ff ff95 	bl	8000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d0a:	4620      	mov	r0, r4
 8000d0c:	f7ff ffb4 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d10:	4620      	mov	r0, r4
 8000d12:	f7ff ff73 	bl	8000bfc <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d16:	4620      	mov	r0, r4
 8000d18:	f7ff ffa6 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d1c:	4620      	mov	r0, r4
 8000d1e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d22:	f7ff bf87 	b.w	8000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000d26 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000d26:	b510      	push	{r4, lr}
 8000d28:	4604      	mov	r4, r0
 8000d2a:	f7ff ff9d 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d2e:	4620      	mov	r0, r4
 8000d30:	f7ff ff64 	bl	8000bfc <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d34:	4620      	mov	r0, r4
 8000d36:	f7ff ff9f 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d3a:	4620      	mov	r0, r4
 8000d3c:	f7ff ff5e 	bl	8000bfc <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d40:	4620      	mov	r0, r4
 8000d42:	f7ff ff99 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d46:	4620      	mov	r0, r4
 8000d48:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d4c:	f7ff bf72 	b.w	8000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000d50:	b570      	push	{r4, r5, r6, lr}
 8000d52:	4604      	mov	r4, r0
 8000d54:	460e      	mov	r6, r1
 8000d56:	2508      	movs	r5, #8
 8000d58:	4620      	mov	r0, r4
 8000d5a:	f7ff ff85 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d5e:	0633      	lsls	r3, r6, #24
 8000d60:	4620      	mov	r0, r4
 8000d62:	d502      	bpl.n	8000d6a <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000d64:	f7ff ff66 	bl	8000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d68:	e001      	b.n	8000d6e <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000d6a:	f7ff ff47 	bl	8000bfc <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d6e:	4620      	mov	r0, r4
 8000d70:	3d01      	subs	r5, #1
 8000d72:	f7ff ff81 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d76:	0076      	lsls	r6, r6, #1
 8000d78:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000d7c:	b2f6      	uxtb	r6, r6
 8000d7e:	d1eb      	bne.n	8000d58 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000d80:	4620      	mov	r0, r4
 8000d82:	f7ff ff71 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d86:	4620      	mov	r0, r4
 8000d88:	f7ff ff54 	bl	8000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d8c:	4620      	mov	r0, r4
 8000d8e:	f7ff ff73 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d92:	4620      	mov	r0, r4
 8000d94:	f7ff ff68 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000d98:	4620      	mov	r0, r4
 8000d9a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000d9e:	f7ff bf27 	b.w	8000bf0 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000da2 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000da2:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000da4:	4604      	mov	r4, r0
 8000da6:	460f      	mov	r7, r1
 8000da8:	4616      	mov	r6, r2
 8000daa:	461d      	mov	r5, r3
 8000dac:	f7ff ffa6 	bl	8000cfc <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000db0:	4620      	mov	r0, r4
 8000db2:	4639      	mov	r1, r7
 8000db4:	f7ff ffcc 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000db8:	4620      	mov	r0, r4
 8000dba:	4631      	mov	r1, r6
 8000dbc:	f7ff ffc8 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000dc0:	4620      	mov	r0, r4
 8000dc2:	4629      	mov	r1, r5
 8000dc4:	f7ff ffc4 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000dc8:	4620      	mov	r0, r4
 8000dca:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000dce:	f7ff bfaa 	b.w	8000d26 <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000dd2:	2300      	movs	r3, #0
 8000dd4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000dd8:	4605      	mov	r5, r0
 8000dda:	7013      	strb	r3, [r2, #0]
 8000ddc:	7053      	strb	r3, [r2, #1]
 8000dde:	7093      	strb	r3, [r2, #2]
 8000de0:	70d3      	strb	r3, [r2, #3]
 8000de2:	460e      	mov	r6, r1
 8000de4:	4614      	mov	r4, r2
 8000de6:	1cd7      	adds	r7, r2, #3
 8000de8:	f7ff ff3e 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000dec:	4628      	mov	r0, r5
 8000dee:	f7ff ff21 	bl	8000c34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000df2:	f04f 0808 	mov.w	r8, #8
 8000df6:	1e63      	subs	r3, r4, #1
 8000df8:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000dfc:	0052      	lsls	r2, r2, #1
 8000dfe:	42bb      	cmp	r3, r7
 8000e00:	701a      	strb	r2, [r3, #0]
 8000e02:	d1f9      	bne.n	8000df8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000e04:	4628      	mov	r0, r5
 8000e06:	f7ff ff37 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000e0a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000e0e:	8a1b      	ldrh	r3, [r3, #16]
 8000e10:	b29b      	uxth	r3, r3
 8000e12:	06d8      	lsls	r0, r3, #27
 8000e14:	bf42      	ittt	mi
 8000e16:	7822      	ldrbmi	r2, [r4, #0]
 8000e18:	f042 0201 	orrmi.w	r2, r2, #1
 8000e1c:	7022      	strbmi	r2, [r4, #0]
 8000e1e:	0699      	lsls	r1, r3, #26
 8000e20:	bf42      	ittt	mi
 8000e22:	7862      	ldrbmi	r2, [r4, #1]
 8000e24:	f042 0201 	orrmi.w	r2, r2, #1
 8000e28:	7062      	strbmi	r2, [r4, #1]
 8000e2a:	065a      	lsls	r2, r3, #25
 8000e2c:	bf42      	ittt	mi
 8000e2e:	78a2      	ldrbmi	r2, [r4, #2]
 8000e30:	f042 0201 	orrmi.w	r2, r2, #1
 8000e34:	70a2      	strbmi	r2, [r4, #2]
 8000e36:	061b      	lsls	r3, r3, #24
 8000e38:	bf42      	ittt	mi
 8000e3a:	78e3      	ldrbmi	r3, [r4, #3]
 8000e3c:	f043 0301 	orrmi.w	r3, r3, #1
 8000e40:	70e3      	strbmi	r3, [r4, #3]
 8000e42:	4628      	mov	r0, r5
 8000e44:	f7ff ff10 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e48:	f1b8 0801 	subs.w	r8, r8, #1
 8000e4c:	d1d3      	bne.n	8000df6 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000e4e:	b116      	cbz	r6, 8000e56 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000e50:	4628      	mov	r0, r5
 8000e52:	f7ff fed3 	bl	8000bfc <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000e56:	4628      	mov	r0, r5
 8000e58:	f7ff ff0e 	bl	8000c78 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000e5c:	4628      	mov	r0, r5
 8000e5e:	f7ff ff03 	bl	8000c68 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e62:	4628      	mov	r0, r5
 8000e64:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000e68:	f7ff bec2 	b.w	8000bf0 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000e6c <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000e6c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e6e:	4604      	mov	r4, r0
 8000e70:	460d      	mov	r5, r1
 8000e72:	4617      	mov	r7, r2
 8000e74:	461e      	mov	r6, r3
 8000e76:	f7ff ff41 	bl	8000cfc <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e7a:	4620      	mov	r0, r4
 8000e7c:	4629      	mov	r1, r5
 8000e7e:	f7ff ff67 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e82:	4639      	mov	r1, r7
 8000e84:	4620      	mov	r0, r4
 8000e86:	f7ff ff63 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e8a:	4620      	mov	r0, r4
 8000e8c:	f7ff ff36 	bl	8000cfc <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e90:	4620      	mov	r0, r4
 8000e92:	f045 0101 	orr.w	r1, r5, #1
 8000e96:	f7ff ff5b 	bl	8000d50 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e9a:	4620      	mov	r0, r4
 8000e9c:	4632      	mov	r2, r6
 8000e9e:	2100      	movs	r1, #0
 8000ea0:	f7ff ff97 	bl	8000dd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000ea4:	4620      	mov	r0, r4
 8000ea6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000eaa:	f7ff bf3c 	b.w	8000d26 <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000eae <_ZN4CI2C5delayEv>:
 8000eae:	230b      	movs	r3, #11
 8000eb0:	3b01      	subs	r3, #1
 8000eb2:	d001      	beq.n	8000eb8 <_ZN4CI2C5delayEv+0xa>
 8000eb4:	bf00      	nop
 8000eb6:	e7fb      	b.n	8000eb0 <_ZN4CI2C5delayEv+0x2>
 8000eb8:	4770      	bx	lr
	...

08000ebc <_ZN4CI2C9SetLowSDAEv>:
 8000ebc:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000ebe:	4c0c      	ldr	r4, [pc, #48]	; (8000ef0 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000ec0:	2301      	movs	r3, #1
 8000ec2:	2203      	movs	r2, #3
 8000ec4:	4606      	mov	r6, r0
 8000ec6:	2580      	movs	r5, #128	; 0x80
 8000ec8:	f88d 3004 	strb.w	r3, [sp, #4]
 8000ecc:	f88d 3006 	strb.w	r3, [sp, #6]
 8000ed0:	4620      	mov	r0, r4
 8000ed2:	2300      	movs	r3, #0
 8000ed4:	4669      	mov	r1, sp
 8000ed6:	f88d 2005 	strb.w	r2, [sp, #5]
 8000eda:	f88d 3007 	strb.w	r3, [sp, #7]
 8000ede:	9500      	str	r5, [sp, #0]
 8000ee0:	f001 fbca 	bl	8002678 <GPIO_Init>
 8000ee4:	8525      	strh	r5, [r4, #40]	; 0x28
 8000ee6:	4630      	mov	r0, r6
 8000ee8:	f7ff ffe1 	bl	8000eae <_ZN4CI2C5delayEv>
 8000eec:	b002      	add	sp, #8
 8000eee:	bd70      	pop	{r4, r5, r6, pc}
 8000ef0:	48000400 	.word	0x48000400

08000ef4 <_ZN4CI2C10SetHighSDAEv>:
 8000ef4:	4b05      	ldr	r3, [pc, #20]	; (8000f0c <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000ef6:	681a      	ldr	r2, [r3, #0]
 8000ef8:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000efc:	601a      	str	r2, [r3, #0]
 8000efe:	681a      	ldr	r2, [r3, #0]
 8000f00:	601a      	str	r2, [r3, #0]
 8000f02:	2280      	movs	r2, #128	; 0x80
 8000f04:	619a      	str	r2, [r3, #24]
 8000f06:	f7ff bfd2 	b.w	8000eae <_ZN4CI2C5delayEv>
 8000f0a:	bf00      	nop
 8000f0c:	48000400 	.word	0x48000400

08000f10 <_ZN4CI2C9SetLowSCLEv>:
 8000f10:	4b02      	ldr	r3, [pc, #8]	; (8000f1c <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000f12:	2240      	movs	r2, #64	; 0x40
 8000f14:	851a      	strh	r2, [r3, #40]	; 0x28
 8000f16:	f7ff bfca 	b.w	8000eae <_ZN4CI2C5delayEv>
 8000f1a:	bf00      	nop
 8000f1c:	48000400 	.word	0x48000400

08000f20 <_ZN4CI2C10SetHighSCLEv>:
 8000f20:	4b02      	ldr	r3, [pc, #8]	; (8000f2c <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000f22:	2240      	movs	r2, #64	; 0x40
 8000f24:	619a      	str	r2, [r3, #24]
 8000f26:	f7ff bfc2 	b.w	8000eae <_ZN4CI2C5delayEv>
 8000f2a:	bf00      	nop
 8000f2c:	48000400 	.word	0x48000400

08000f30 <_ZN4CI2C4initEv>:
 8000f30:	b513      	push	{r0, r1, r4, lr}
 8000f32:	4604      	mov	r4, r0
 8000f34:	2101      	movs	r1, #1
 8000f36:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000f3a:	f001 f995 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8000f3e:	23c0      	movs	r3, #192	; 0xc0
 8000f40:	9300      	str	r3, [sp, #0]
 8000f42:	2301      	movs	r3, #1
 8000f44:	2203      	movs	r2, #3
 8000f46:	4669      	mov	r1, sp
 8000f48:	f88d 3004 	strb.w	r3, [sp, #4]
 8000f4c:	f88d 3006 	strb.w	r3, [sp, #6]
 8000f50:	4809      	ldr	r0, [pc, #36]	; (8000f78 <_ZN4CI2C4initEv+0x48>)
 8000f52:	f88d 2005 	strb.w	r2, [sp, #5]
 8000f56:	2300      	movs	r3, #0
 8000f58:	f88d 3007 	strb.w	r3, [sp, #7]
 8000f5c:	f001 fb8c 	bl	8002678 <GPIO_Init>
 8000f60:	4620      	mov	r0, r4
 8000f62:	f7ff ffdd 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8000f66:	4620      	mov	r0, r4
 8000f68:	f7ff ffa8 	bl	8000ebc <_ZN4CI2C9SetLowSDAEv>
 8000f6c:	4620      	mov	r0, r4
 8000f6e:	f7ff ffc1 	bl	8000ef4 <_ZN4CI2C10SetHighSDAEv>
 8000f72:	b002      	add	sp, #8
 8000f74:	bd10      	pop	{r4, pc}
 8000f76:	bf00      	nop
 8000f78:	48000400 	.word	0x48000400

08000f7c <_ZN4CI2C5StartEv>:
 8000f7c:	b510      	push	{r4, lr}
 8000f7e:	4604      	mov	r4, r0
 8000f80:	f7ff ffce 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8000f84:	4620      	mov	r0, r4
 8000f86:	f7ff ffb5 	bl	8000ef4 <_ZN4CI2C10SetHighSDAEv>
 8000f8a:	4620      	mov	r0, r4
 8000f8c:	f7ff ffc8 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8000f90:	4620      	mov	r0, r4
 8000f92:	f7ff ff93 	bl	8000ebc <_ZN4CI2C9SetLowSDAEv>
 8000f96:	4620      	mov	r0, r4
 8000f98:	f7ff ffba 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 8000f9c:	4620      	mov	r0, r4
 8000f9e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000fa2:	f7ff bfa7 	b.w	8000ef4 <_ZN4CI2C10SetHighSDAEv>

08000fa6 <_ZN4CI2C4StopEv>:
 8000fa6:	b510      	push	{r4, lr}
 8000fa8:	4604      	mov	r4, r0
 8000faa:	f7ff ffb1 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 8000fae:	4620      	mov	r0, r4
 8000fb0:	f7ff ff84 	bl	8000ebc <_ZN4CI2C9SetLowSDAEv>
 8000fb4:	4620      	mov	r0, r4
 8000fb6:	f7ff ffb3 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8000fba:	4620      	mov	r0, r4
 8000fbc:	f7ff ff7e 	bl	8000ebc <_ZN4CI2C9SetLowSDAEv>
 8000fc0:	4620      	mov	r0, r4
 8000fc2:	f7ff ffad 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8000fc6:	4620      	mov	r0, r4
 8000fc8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000fcc:	f7ff bf92 	b.w	8000ef4 <_ZN4CI2C10SetHighSDAEv>

08000fd0 <_ZN4CI2C5WriteEh>:
 8000fd0:	b570      	push	{r4, r5, r6, lr}
 8000fd2:	4604      	mov	r4, r0
 8000fd4:	460e      	mov	r6, r1
 8000fd6:	2508      	movs	r5, #8
 8000fd8:	4620      	mov	r0, r4
 8000fda:	f7ff ff99 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 8000fde:	0633      	lsls	r3, r6, #24
 8000fe0:	4620      	mov	r0, r4
 8000fe2:	d502      	bpl.n	8000fea <_ZN4CI2C5WriteEh+0x1a>
 8000fe4:	f7ff ff86 	bl	8000ef4 <_ZN4CI2C10SetHighSDAEv>
 8000fe8:	e001      	b.n	8000fee <_ZN4CI2C5WriteEh+0x1e>
 8000fea:	f7ff ff67 	bl	8000ebc <_ZN4CI2C9SetLowSDAEv>
 8000fee:	4620      	mov	r0, r4
 8000ff0:	3d01      	subs	r5, #1
 8000ff2:	f7ff ff95 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8000ff6:	0076      	lsls	r6, r6, #1
 8000ff8:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000ffc:	b2f6      	uxtb	r6, r6
 8000ffe:	d1eb      	bne.n	8000fd8 <_ZN4CI2C5WriteEh+0x8>
 8001000:	4620      	mov	r0, r4
 8001002:	f7ff ff85 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 8001006:	4620      	mov	r0, r4
 8001008:	f7ff ff74 	bl	8000ef4 <_ZN4CI2C10SetHighSDAEv>
 800100c:	4620      	mov	r0, r4
 800100e:	f7ff ff87 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8001012:	4b07      	ldr	r3, [pc, #28]	; (8001030 <_ZN4CI2C5WriteEh+0x60>)
 8001014:	8a1d      	ldrh	r5, [r3, #16]
 8001016:	4620      	mov	r0, r4
 8001018:	f7ff ff7a 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 800101c:	b2ad      	uxth	r5, r5
 800101e:	4620      	mov	r0, r4
 8001020:	f7ff ff45 	bl	8000eae <_ZN4CI2C5delayEv>
 8001024:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8001028:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 800102c:	bd70      	pop	{r4, r5, r6, pc}
 800102e:	bf00      	nop
 8001030:	48000400 	.word	0x48000400

08001034 <_ZN4CI2C9write_regEhhh>:
 8001034:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001036:	4604      	mov	r4, r0
 8001038:	460f      	mov	r7, r1
 800103a:	4616      	mov	r6, r2
 800103c:	461d      	mov	r5, r3
 800103e:	f7ff ff9d 	bl	8000f7c <_ZN4CI2C5StartEv>
 8001042:	4639      	mov	r1, r7
 8001044:	4620      	mov	r0, r4
 8001046:	f7ff ffc3 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 800104a:	4631      	mov	r1, r6
 800104c:	4620      	mov	r0, r4
 800104e:	f7ff ffbf 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 8001052:	4620      	mov	r0, r4
 8001054:	4629      	mov	r1, r5
 8001056:	f7ff ffbb 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 800105a:	4620      	mov	r0, r4
 800105c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001060:	f7ff bfa1 	b.w	8000fa6 <_ZN4CI2C4StopEv>

08001064 <_ZN4CI2C4ReadEh>:
 8001064:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001066:	4605      	mov	r5, r0
 8001068:	460f      	mov	r7, r1
 800106a:	f7ff ff51 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 800106e:	2608      	movs	r6, #8
 8001070:	2400      	movs	r4, #0
 8001072:	4628      	mov	r0, r5
 8001074:	f7ff ff54 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 8001078:	4b10      	ldr	r3, [pc, #64]	; (80010bc <_ZN4CI2C4ReadEh+0x58>)
 800107a:	8a1b      	ldrh	r3, [r3, #16]
 800107c:	0064      	lsls	r4, r4, #1
 800107e:	061b      	lsls	r3, r3, #24
 8001080:	b2e4      	uxtb	r4, r4
 8001082:	4628      	mov	r0, r5
 8001084:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8001088:	bf48      	it	mi
 800108a:	f044 0401 	orrmi.w	r4, r4, #1
 800108e:	f7ff ff3f 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 8001092:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8001096:	d1ec      	bne.n	8001072 <_ZN4CI2C4ReadEh+0xe>
 8001098:	4628      	mov	r0, r5
 800109a:	b117      	cbz	r7, 80010a2 <_ZN4CI2C4ReadEh+0x3e>
 800109c:	f7ff ff0e 	bl	8000ebc <_ZN4CI2C9SetLowSDAEv>
 80010a0:	e001      	b.n	80010a6 <_ZN4CI2C4ReadEh+0x42>
 80010a2:	f7ff ff27 	bl	8000ef4 <_ZN4CI2C10SetHighSDAEv>
 80010a6:	4628      	mov	r0, r5
 80010a8:	f7ff ff3a 	bl	8000f20 <_ZN4CI2C10SetHighSCLEv>
 80010ac:	4628      	mov	r0, r5
 80010ae:	f7ff ff2f 	bl	8000f10 <_ZN4CI2C9SetLowSCLEv>
 80010b2:	4628      	mov	r0, r5
 80010b4:	f7ff ff1e 	bl	8000ef4 <_ZN4CI2C10SetHighSDAEv>
 80010b8:	4620      	mov	r0, r4
 80010ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80010bc:	48000400 	.word	0x48000400

080010c0 <_ZN4CI2C8read_regEhh>:
 80010c0:	b570      	push	{r4, r5, r6, lr}
 80010c2:	4604      	mov	r4, r0
 80010c4:	460d      	mov	r5, r1
 80010c6:	4616      	mov	r6, r2
 80010c8:	f7ff ff58 	bl	8000f7c <_ZN4CI2C5StartEv>
 80010cc:	4629      	mov	r1, r5
 80010ce:	4620      	mov	r0, r4
 80010d0:	f7ff ff7e 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 80010d4:	4631      	mov	r1, r6
 80010d6:	4620      	mov	r0, r4
 80010d8:	f7ff ff7a 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 80010dc:	4620      	mov	r0, r4
 80010de:	f7ff ff4d 	bl	8000f7c <_ZN4CI2C5StartEv>
 80010e2:	f045 0101 	orr.w	r1, r5, #1
 80010e6:	4620      	mov	r0, r4
 80010e8:	f7ff ff72 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 80010ec:	2100      	movs	r1, #0
 80010ee:	4620      	mov	r0, r4
 80010f0:	f7ff ffb8 	bl	8001064 <_ZN4CI2C4ReadEh>
 80010f4:	4605      	mov	r5, r0
 80010f6:	4620      	mov	r0, r4
 80010f8:	f7ff ff55 	bl	8000fa6 <_ZN4CI2C4StopEv>
 80010fc:	4628      	mov	r0, r5
 80010fe:	bd70      	pop	{r4, r5, r6, pc}

08001100 <_ZN4CIMU8imu_readEv>:
 8001100:	b570      	push	{r4, r5, r6, lr}
 8001102:	4c52      	ldr	r4, [pc, #328]	; (800124c <_ZN4CIMU8imu_readEv+0x14c>)
 8001104:	4605      	mov	r5, r0
 8001106:	4620      	mov	r0, r4
 8001108:	f7ff ff38 	bl	8000f7c <_ZN4CI2C5StartEv>
 800110c:	4620      	mov	r0, r4
 800110e:	21d4      	movs	r1, #212	; 0xd4
 8001110:	f7ff ff5e 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 8001114:	21a8      	movs	r1, #168	; 0xa8
 8001116:	4620      	mov	r0, r4
 8001118:	f7ff ff5a 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 800111c:	4620      	mov	r0, r4
 800111e:	f7ff ff2d 	bl	8000f7c <_ZN4CI2C5StartEv>
 8001122:	4620      	mov	r0, r4
 8001124:	21d5      	movs	r1, #213	; 0xd5
 8001126:	f7ff ff53 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 800112a:	4620      	mov	r0, r4
 800112c:	2101      	movs	r1, #1
 800112e:	f7ff ff99 	bl	8001064 <_ZN4CI2C4ReadEh>
 8001132:	2101      	movs	r1, #1
 8001134:	b286      	uxth	r6, r0
 8001136:	4620      	mov	r0, r4
 8001138:	f7ff ff94 	bl	8001064 <_ZN4CI2C4ReadEh>
 800113c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001140:	b200      	sxth	r0, r0
 8001142:	6268      	str	r0, [r5, #36]	; 0x24
 8001144:	2101      	movs	r1, #1
 8001146:	4620      	mov	r0, r4
 8001148:	f7ff ff8c 	bl	8001064 <_ZN4CI2C4ReadEh>
 800114c:	2101      	movs	r1, #1
 800114e:	b286      	uxth	r6, r0
 8001150:	4620      	mov	r0, r4
 8001152:	f7ff ff87 	bl	8001064 <_ZN4CI2C4ReadEh>
 8001156:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800115a:	b200      	sxth	r0, r0
 800115c:	62a8      	str	r0, [r5, #40]	; 0x28
 800115e:	2101      	movs	r1, #1
 8001160:	4620      	mov	r0, r4
 8001162:	f7ff ff7f 	bl	8001064 <_ZN4CI2C4ReadEh>
 8001166:	2100      	movs	r1, #0
 8001168:	b286      	uxth	r6, r0
 800116a:	4620      	mov	r0, r4
 800116c:	f7ff ff7a 	bl	8001064 <_ZN4CI2C4ReadEh>
 8001170:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001174:	b200      	sxth	r0, r0
 8001176:	62e8      	str	r0, [r5, #44]	; 0x2c
 8001178:	4620      	mov	r0, r4
 800117a:	f7ff ff14 	bl	8000fa6 <_ZN4CI2C4StopEv>
 800117e:	4620      	mov	r0, r4
 8001180:	f7ff fefc 	bl	8000f7c <_ZN4CI2C5StartEv>
 8001184:	4620      	mov	r0, r4
 8001186:	213c      	movs	r1, #60	; 0x3c
 8001188:	f7ff ff22 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 800118c:	21a8      	movs	r1, #168	; 0xa8
 800118e:	4620      	mov	r0, r4
 8001190:	f7ff ff1e 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 8001194:	4620      	mov	r0, r4
 8001196:	f7ff fef1 	bl	8000f7c <_ZN4CI2C5StartEv>
 800119a:	4620      	mov	r0, r4
 800119c:	213d      	movs	r1, #61	; 0x3d
 800119e:	f7ff ff17 	bl	8000fd0 <_ZN4CI2C5WriteEh>
 80011a2:	4620      	mov	r0, r4
 80011a4:	2101      	movs	r1, #1
 80011a6:	f7ff ff5d 	bl	8001064 <_ZN4CI2C4ReadEh>
 80011aa:	2101      	movs	r1, #1
 80011ac:	b286      	uxth	r6, r0
 80011ae:	4620      	mov	r0, r4
 80011b0:	f7ff ff58 	bl	8001064 <_ZN4CI2C4ReadEh>
 80011b4:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011b8:	b200      	sxth	r0, r0
 80011ba:	6328      	str	r0, [r5, #48]	; 0x30
 80011bc:	2101      	movs	r1, #1
 80011be:	4620      	mov	r0, r4
 80011c0:	f7ff ff50 	bl	8001064 <_ZN4CI2C4ReadEh>
 80011c4:	2101      	movs	r1, #1
 80011c6:	b286      	uxth	r6, r0
 80011c8:	4620      	mov	r0, r4
 80011ca:	f7ff ff4b 	bl	8001064 <_ZN4CI2C4ReadEh>
 80011ce:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011d2:	b200      	sxth	r0, r0
 80011d4:	6368      	str	r0, [r5, #52]	; 0x34
 80011d6:	2101      	movs	r1, #1
 80011d8:	4620      	mov	r0, r4
 80011da:	f7ff ff43 	bl	8001064 <_ZN4CI2C4ReadEh>
 80011de:	2100      	movs	r1, #0
 80011e0:	b286      	uxth	r6, r0
 80011e2:	4620      	mov	r0, r4
 80011e4:	f7ff ff3e 	bl	8001064 <_ZN4CI2C4ReadEh>
 80011e8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011ec:	b200      	sxth	r0, r0
 80011ee:	63a8      	str	r0, [r5, #56]	; 0x38
 80011f0:	4620      	mov	r0, r4
 80011f2:	f7ff fed8 	bl	8000fa6 <_ZN4CI2C4StopEv>
 80011f6:	686a      	ldr	r2, [r5, #4]
 80011f8:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80011fa:	68a8      	ldr	r0, [r5, #8]
 80011fc:	1a9b      	subs	r3, r3, r2
 80011fe:	68ea      	ldr	r2, [r5, #12]
 8001200:	26c8      	movs	r6, #200	; 0xc8
 8001202:	fb93 f3f6 	sdiv	r3, r3, r6
 8001206:	441a      	add	r2, r3
 8001208:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 800120a:	60ea      	str	r2, [r5, #12]
 800120c:	2155      	movs	r1, #85	; 0x55
 800120e:	4359      	muls	r1, r3
 8001210:	f640 14e2 	movw	r4, #2530	; 0x9e2
 8001214:	434a      	muls	r2, r1
 8001216:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 8001218:	fb92 f2f4 	sdiv	r2, r2, r4
 800121c:	61aa      	str	r2, [r5, #24]
 800121e:	682a      	ldr	r2, [r5, #0]
 8001220:	1a9b      	subs	r3, r3, r2
 8001222:	692a      	ldr	r2, [r5, #16]
 8001224:	fb93 f3f6 	sdiv	r3, r3, r6
 8001228:	441a      	add	r2, r3
 800122a:	612a      	str	r2, [r5, #16]
 800122c:	434a      	muls	r2, r1
 800122e:	fb92 f2f4 	sdiv	r2, r2, r4
 8001232:	61ea      	str	r2, [r5, #28]
 8001234:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 8001236:	1a12      	subs	r2, r2, r0
 8001238:	fb92 f0f6 	sdiv	r0, r2, r6
 800123c:	696a      	ldr	r2, [r5, #20]
 800123e:	1883      	adds	r3, r0, r2
 8001240:	616b      	str	r3, [r5, #20]
 8001242:	434b      	muls	r3, r1
 8001244:	fb93 f3f4 	sdiv	r3, r3, r4
 8001248:	622b      	str	r3, [r5, #32]
 800124a:	bd70      	pop	{r4, r5, r6, pc}
 800124c:	20000160 	.word	0x20000160

08001250 <_ZN4CIMU8imu_initEv>:
 8001250:	230a      	movs	r3, #10
 8001252:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001256:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001258:	2300      	movs	r3, #0
 800125a:	4604      	mov	r4, r0
 800125c:	6003      	str	r3, [r0, #0]
 800125e:	6043      	str	r3, [r0, #4]
 8001260:	6083      	str	r3, [r0, #8]
 8001262:	60c3      	str	r3, [r0, #12]
 8001264:	6103      	str	r3, [r0, #16]
 8001266:	6143      	str	r3, [r0, #20]
 8001268:	f242 7511 	movw	r5, #10001	; 0x2711
 800126c:	3d01      	subs	r5, #1
 800126e:	d001      	beq.n	8001274 <_ZN4CIMU8imu_initEv+0x24>
 8001270:	bf00      	nop
 8001272:	e7fb      	b.n	800126c <_ZN4CIMU8imu_initEv+0x1c>
 8001274:	4832      	ldr	r0, [pc, #200]	; (8001340 <_ZN4CIMU8imu_initEv+0xf0>)
 8001276:	21d4      	movs	r1, #212	; 0xd4
 8001278:	220f      	movs	r2, #15
 800127a:	f7ff ff21 	bl	80010c0 <_ZN4CI2C8read_regEhh>
 800127e:	28d4      	cmp	r0, #212	; 0xd4
 8001280:	4606      	mov	r6, r0
 8001282:	d155      	bne.n	8001330 <_ZN4CIMU8imu_initEv+0xe0>
 8001284:	482e      	ldr	r0, [pc, #184]	; (8001340 <_ZN4CIMU8imu_initEv+0xf0>)
 8001286:	213c      	movs	r1, #60	; 0x3c
 8001288:	220f      	movs	r2, #15
 800128a:	f7ff ff19 	bl	80010c0 <_ZN4CI2C8read_regEhh>
 800128e:	2849      	cmp	r0, #73	; 0x49
 8001290:	d152      	bne.n	8001338 <_ZN4CIMU8imu_initEv+0xe8>
 8001292:	4631      	mov	r1, r6
 8001294:	482a      	ldr	r0, [pc, #168]	; (8001340 <_ZN4CIMU8imu_initEv+0xf0>)
 8001296:	2220      	movs	r2, #32
 8001298:	23ff      	movs	r3, #255	; 0xff
 800129a:	f7ff fecb 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 800129e:	4631      	mov	r1, r6
 80012a0:	4827      	ldr	r0, [pc, #156]	; (8001340 <_ZN4CIMU8imu_initEv+0xf0>)
 80012a2:	4e28      	ldr	r6, [pc, #160]	; (8001344 <_ZN4CIMU8imu_initEv+0xf4>)
 80012a4:	2223      	movs	r2, #35	; 0x23
 80012a6:	2310      	movs	r3, #16
 80012a8:	f7ff fec4 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 80012ac:	4824      	ldr	r0, [pc, #144]	; (8001340 <_ZN4CIMU8imu_initEv+0xf0>)
 80012ae:	213c      	movs	r1, #60	; 0x3c
 80012b0:	221f      	movs	r2, #31
 80012b2:	462b      	mov	r3, r5
 80012b4:	f7ff febe 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 80012b8:	4821      	ldr	r0, [pc, #132]	; (8001340 <_ZN4CIMU8imu_initEv+0xf0>)
 80012ba:	213c      	movs	r1, #60	; 0x3c
 80012bc:	2220      	movs	r2, #32
 80012be:	2367      	movs	r3, #103	; 0x67
 80012c0:	f7ff feb8 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 80012c4:	481e      	ldr	r0, [pc, #120]	; (8001340 <_ZN4CIMU8imu_initEv+0xf0>)
 80012c6:	213c      	movs	r1, #60	; 0x3c
 80012c8:	2221      	movs	r2, #33	; 0x21
 80012ca:	462b      	mov	r3, r5
 80012cc:	f7ff feb2 	bl	8001034 <_ZN4CI2C9write_regEhhh>
 80012d0:	3e01      	subs	r6, #1
 80012d2:	d001      	beq.n	80012d8 <_ZN4CIMU8imu_initEv+0x88>
 80012d4:	bf00      	nop
 80012d6:	e7fb      	b.n	80012d0 <_ZN4CIMU8imu_initEv+0x80>
 80012d8:	4620      	mov	r0, r4
 80012da:	f7ff ff11 	bl	8001100 <_ZN4CIMU8imu_readEv>
 80012de:	2564      	movs	r5, #100	; 0x64
 80012e0:	4637      	mov	r7, r6
 80012e2:	46b0      	mov	r8, r6
 80012e4:	2365      	movs	r3, #101	; 0x65
 80012e6:	3b01      	subs	r3, #1
 80012e8:	d001      	beq.n	80012ee <_ZN4CIMU8imu_initEv+0x9e>
 80012ea:	bf00      	nop
 80012ec:	e7fb      	b.n	80012e6 <_ZN4CIMU8imu_initEv+0x96>
 80012ee:	4620      	mov	r0, r4
 80012f0:	f7ff ff06 	bl	8001100 <_ZN4CIMU8imu_readEv>
 80012f4:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80012f6:	4498      	add	r8, r3
 80012f8:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80012fa:	441f      	add	r7, r3
 80012fc:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80012fe:	3d01      	subs	r5, #1
 8001300:	441e      	add	r6, r3
 8001302:	d1ef      	bne.n	80012e4 <_ZN4CIMU8imu_initEv+0x94>
 8001304:	2264      	movs	r2, #100	; 0x64
 8001306:	6325      	str	r5, [r4, #48]	; 0x30
 8001308:	fb98 f3f2 	sdiv	r3, r8, r2
 800130c:	fb97 f7f2 	sdiv	r7, r7, r2
 8001310:	fb96 f6f2 	sdiv	r6, r6, r2
 8001314:	6023      	str	r3, [r4, #0]
 8001316:	6067      	str	r7, [r4, #4]
 8001318:	60a6      	str	r6, [r4, #8]
 800131a:	6365      	str	r5, [r4, #52]	; 0x34
 800131c:	63a5      	str	r5, [r4, #56]	; 0x38
 800131e:	6265      	str	r5, [r4, #36]	; 0x24
 8001320:	62a5      	str	r5, [r4, #40]	; 0x28
 8001322:	62e5      	str	r5, [r4, #44]	; 0x2c
 8001324:	61a5      	str	r5, [r4, #24]
 8001326:	61e5      	str	r5, [r4, #28]
 8001328:	6225      	str	r5, [r4, #32]
 800132a:	4628      	mov	r0, r5
 800132c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001330:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001334:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001338:	f06f 0001 	mvn.w	r0, #1
 800133c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001340:	20000160 	.word	0x20000160
 8001344:	000186a1 	.word	0x000186a1

08001348 <_ZN4CIMU14get_imu_resultEv>:
 8001348:	3018      	adds	r0, #24
 800134a:	4770      	bx	lr

0800134c <_ZN5CGPIO9gpio_initEv>:
 800134c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8001350:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001354:	2101      	movs	r1, #1
 8001356:	f000 ff87 	bl	8002268 <RCC_AHBPeriphClockCmd>
 800135a:	4f22      	ldr	r7, [pc, #136]	; (80013e4 <_ZN5CGPIO9gpio_initEv+0x98>)
 800135c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001360:	2101      	movs	r1, #1
 8001362:	f000 ff81 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8001366:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 800136a:	2101      	movs	r1, #1
 800136c:	f000 ff7c 	bl	8002268 <RCC_AHBPeriphClockCmd>
 8001370:	2400      	movs	r4, #0
 8001372:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001376:	2503      	movs	r5, #3
 8001378:	f04f 0801 	mov.w	r8, #1
 800137c:	4638      	mov	r0, r7
 800137e:	4669      	mov	r1, sp
 8001380:	9300      	str	r3, [sp, #0]
 8001382:	2608      	movs	r6, #8
 8001384:	f88d 8004 	strb.w	r8, [sp, #4]
 8001388:	f88d 4006 	strb.w	r4, [sp, #6]
 800138c:	f88d 5005 	strb.w	r5, [sp, #5]
 8001390:	f88d 4007 	strb.w	r4, [sp, #7]
 8001394:	f001 f970 	bl	8002678 <GPIO_Init>
 8001398:	4669      	mov	r1, sp
 800139a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800139e:	9600      	str	r6, [sp, #0]
 80013a0:	f88d 8004 	strb.w	r8, [sp, #4]
 80013a4:	f88d 4006 	strb.w	r4, [sp, #6]
 80013a8:	f88d 5005 	strb.w	r5, [sp, #5]
 80013ac:	f88d 4007 	strb.w	r4, [sp, #7]
 80013b0:	f001 f962 	bl	8002678 <GPIO_Init>
 80013b4:	f44f 7300 	mov.w	r3, #512	; 0x200
 80013b8:	4638      	mov	r0, r7
 80013ba:	4669      	mov	r1, sp
 80013bc:	9300      	str	r3, [sp, #0]
 80013be:	f88d 4004 	strb.w	r4, [sp, #4]
 80013c2:	f88d 5005 	strb.w	r5, [sp, #5]
 80013c6:	f88d 4007 	strb.w	r4, [sp, #7]
 80013ca:	f001 f955 	bl	8002678 <GPIO_Init>
 80013ce:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80013d2:	4620      	mov	r0, r4
 80013d4:	851e      	strh	r6, [r3, #40]	; 0x28
 80013d6:	4b04      	ldr	r3, [pc, #16]	; (80013e8 <_ZN5CGPIO9gpio_initEv+0x9c>)
 80013d8:	601c      	str	r4, [r3, #0]
 80013da:	4b04      	ldr	r3, [pc, #16]	; (80013ec <_ZN5CGPIO9gpio_initEv+0xa0>)
 80013dc:	601c      	str	r4, [r3, #0]
 80013de:	b002      	add	sp, #8
 80013e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80013e4:	48000400 	.word	0x48000400
 80013e8:	20000164 	.word	0x20000164
 80013ec:	20000168 	.word	0x20000168

080013f0 <_ZN5CGPIO7gpio_onEm>:
 80013f0:	2908      	cmp	r1, #8
 80013f2:	d005      	beq.n	8001400 <_ZN5CGPIO7gpio_onEm+0x10>
 80013f4:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80013f8:	d105      	bne.n	8001406 <_ZN5CGPIO7gpio_onEm+0x16>
 80013fa:	4b03      	ldr	r3, [pc, #12]	; (8001408 <_ZN5CGPIO7gpio_onEm+0x18>)
 80013fc:	6199      	str	r1, [r3, #24]
 80013fe:	4770      	bx	lr
 8001400:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001404:	8519      	strh	r1, [r3, #40]	; 0x28
 8001406:	4770      	bx	lr
 8001408:	48000400 	.word	0x48000400

0800140c <_ZN5CGPIO8gpio_offEm>:
 800140c:	2908      	cmp	r1, #8
 800140e:	d005      	beq.n	800141c <_ZN5CGPIO8gpio_offEm+0x10>
 8001410:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8001414:	d105      	bne.n	8001422 <_ZN5CGPIO8gpio_offEm+0x16>
 8001416:	4b03      	ldr	r3, [pc, #12]	; (8001424 <_ZN5CGPIO8gpio_offEm+0x18>)
 8001418:	8519      	strh	r1, [r3, #40]	; 0x28
 800141a:	4770      	bx	lr
 800141c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001420:	6199      	str	r1, [r3, #24]
 8001422:	4770      	bx	lr
 8001424:	48000400 	.word	0x48000400

08001428 <_ZN5CGPIO7gpio_inEm>:
 8001428:	4b02      	ldr	r3, [pc, #8]	; (8001434 <_ZN5CGPIO7gpio_inEm+0xc>)
 800142a:	8a18      	ldrh	r0, [r3, #16]
 800142c:	b280      	uxth	r0, r0
 800142e:	ea21 0000 	bic.w	r0, r1, r0
 8001432:	4770      	bx	lr
 8001434:	48000400 	.word	0x48000400

08001438 <EXTI9_5_IRQHandler>:
 8001438:	4a03      	ldr	r2, [pc, #12]	; (8001448 <EXTI9_5_IRQHandler+0x10>)
 800143a:	6813      	ldr	r3, [r2, #0]
 800143c:	2006      	movs	r0, #6
 800143e:	3301      	adds	r3, #1
 8001440:	6013      	str	r3, [r2, #0]
 8001442:	f001 b90d 	b.w	8002660 <EXTI_ClearITPendingBit>
 8001446:	bf00      	nop
 8001448:	20000164 	.word	0x20000164

0800144c <EXTI15_10_IRQHandler>:
 800144c:	4a03      	ldr	r2, [pc, #12]	; (800145c <EXTI15_10_IRQHandler+0x10>)
 800144e:	6813      	ldr	r3, [r2, #0]
 8001450:	200c      	movs	r0, #12
 8001452:	3301      	adds	r3, #1
 8001454:	6013      	str	r3, [r2, #0]
 8001456:	f001 b903 	b.w	8002660 <EXTI_ClearITPendingBit>
 800145a:	bf00      	nop
 800145c:	20000168 	.word	0x20000168

08001460 <_ZN6CError10error_funcEi>:
 8001460:	230a      	movs	r3, #10
 8001462:	490c      	ldr	r1, [pc, #48]	; (8001494 <_ZN6CError10error_funcEi+0x34>)
 8001464:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001468:	618a      	str	r2, [r1, #24]
 800146a:	4a0b      	ldr	r2, [pc, #44]	; (8001498 <_ZN6CError10error_funcEi+0x38>)
 800146c:	3a01      	subs	r2, #1
 800146e:	d001      	beq.n	8001474 <_ZN6CError10error_funcEi+0x14>
 8001470:	bf00      	nop
 8001472:	e7fb      	b.n	800146c <_ZN6CError10error_funcEi+0xc>
 8001474:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001478:	850a      	strh	r2, [r1, #40]	; 0x28
 800147a:	4a08      	ldr	r2, [pc, #32]	; (800149c <_ZN6CError10error_funcEi+0x3c>)
 800147c:	3a01      	subs	r2, #1
 800147e:	d001      	beq.n	8001484 <_ZN6CError10error_funcEi+0x24>
 8001480:	bf00      	nop
 8001482:	e7fb      	b.n	800147c <_ZN6CError10error_funcEi+0x1c>
 8001484:	3b01      	subs	r3, #1
 8001486:	d1ec      	bne.n	8001462 <_ZN6CError10error_funcEi+0x2>
 8001488:	4b05      	ldr	r3, [pc, #20]	; (80014a0 <_ZN6CError10error_funcEi+0x40>)
 800148a:	3b01      	subs	r3, #1
 800148c:	d0e8      	beq.n	8001460 <_ZN6CError10error_funcEi>
 800148e:	bf00      	nop
 8001490:	e7fb      	b.n	800148a <_ZN6CError10error_funcEi+0x2a>
 8001492:	bf00      	nop
 8001494:	48000400 	.word	0x48000400
 8001498:	000186a1 	.word	0x000186a1
 800149c:	000f4241 	.word	0x000f4241
 80014a0:	002dc6c1 	.word	0x002dc6c1

080014a4 <_ZN9CTerminal13terminal_initEv>:
 80014a4:	b530      	push	{r4, r5, lr}
 80014a6:	4a2f      	ldr	r2, [pc, #188]	; (8001564 <_ZN9CTerminal13terminal_initEv+0xc0>)
 80014a8:	2300      	movs	r3, #0
 80014aa:	6013      	str	r3, [r2, #0]
 80014ac:	4a2e      	ldr	r2, [pc, #184]	; (8001568 <_ZN9CTerminal13terminal_initEv+0xc4>)
 80014ae:	b08b      	sub	sp, #44	; 0x2c
 80014b0:	6013      	str	r3, [r2, #0]
 80014b2:	4a2e      	ldr	r2, [pc, #184]	; (800156c <_ZN9CTerminal13terminal_initEv+0xc8>)
 80014b4:	2400      	movs	r4, #0
 80014b6:	54d4      	strb	r4, [r2, r3]
 80014b8:	3301      	adds	r3, #1
 80014ba:	2b10      	cmp	r3, #16
 80014bc:	d1f9      	bne.n	80014b2 <_ZN9CTerminal13terminal_initEv+0xe>
 80014be:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80014c2:	2101      	movs	r1, #1
 80014c4:	f000 fed0 	bl	8002268 <RCC_AHBPeriphClockCmd>
 80014c8:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80014cc:	2101      	movs	r1, #1
 80014ce:	f000 fed9 	bl	8002284 <RCC_APB2PeriphClockCmd>
 80014d2:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80014d6:	9302      	str	r3, [sp, #8]
 80014d8:	2302      	movs	r3, #2
 80014da:	f88d 300c 	strb.w	r3, [sp, #12]
 80014de:	a902      	add	r1, sp, #8
 80014e0:	2303      	movs	r3, #3
 80014e2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80014e6:	f88d 300d 	strb.w	r3, [sp, #13]
 80014ea:	f88d 400e 	strb.w	r4, [sp, #14]
 80014ee:	f88d 400f 	strb.w	r4, [sp, #15]
 80014f2:	f001 f8c1 	bl	8002678 <GPIO_Init>
 80014f6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80014fa:	2109      	movs	r1, #9
 80014fc:	2207      	movs	r2, #7
 80014fe:	f001 f901 	bl	8002704 <GPIO_PinAFConfig>
 8001502:	2207      	movs	r2, #7
 8001504:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001508:	210a      	movs	r1, #10
 800150a:	f001 f8fb 	bl	8002704 <GPIO_PinAFConfig>
 800150e:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001512:	9304      	str	r3, [sp, #16]
 8001514:	a904      	add	r1, sp, #16
 8001516:	230c      	movs	r3, #12
 8001518:	4815      	ldr	r0, [pc, #84]	; (8001570 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800151a:	9308      	str	r3, [sp, #32]
 800151c:	9405      	str	r4, [sp, #20]
 800151e:	9406      	str	r4, [sp, #24]
 8001520:	9407      	str	r4, [sp, #28]
 8001522:	9409      	str	r4, [sp, #36]	; 0x24
 8001524:	f000 ff2e 	bl	8002384 <USART_Init>
 8001528:	4811      	ldr	r0, [pc, #68]	; (8001570 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800152a:	2101      	movs	r1, #1
 800152c:	f000 ff8c 	bl	8002448 <USART_Cmd>
 8001530:	2201      	movs	r2, #1
 8001532:	4910      	ldr	r1, [pc, #64]	; (8001574 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8001534:	480e      	ldr	r0, [pc, #56]	; (8001570 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001536:	f000 ff97 	bl	8002468 <USART_ITConfig>
 800153a:	2501      	movs	r5, #1
 800153c:	2325      	movs	r3, #37	; 0x25
 800153e:	a801      	add	r0, sp, #4
 8001540:	f88d 3004 	strb.w	r3, [sp, #4]
 8001544:	f88d 4005 	strb.w	r4, [sp, #5]
 8001548:	f88d 4006 	strb.w	r4, [sp, #6]
 800154c:	f88d 5007 	strb.w	r5, [sp, #7]
 8001550:	f001 f84c 	bl	80025ec <NVIC_Init>
 8001554:	4806      	ldr	r0, [pc, #24]	; (8001570 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001556:	4629      	mov	r1, r5
 8001558:	f000 ff76 	bl	8002448 <USART_Cmd>
 800155c:	4620      	mov	r0, r4
 800155e:	b00b      	add	sp, #44	; 0x2c
 8001560:	bd30      	pop	{r4, r5, pc}
 8001562:	bf00      	nop
 8001564:	2000016c 	.word	0x2000016c
 8001568:	20000180 	.word	0x20000180
 800156c:	20000170 	.word	0x20000170
 8001570:	40013800 	.word	0x40013800
 8001574:	00050105 	.word	0x00050105

08001578 <USART1_IRQHandler>:
 8001578:	b508      	push	{r3, lr}
 800157a:	480d      	ldr	r0, [pc, #52]	; (80015b0 <USART1_IRQHandler+0x38>)
 800157c:	490d      	ldr	r1, [pc, #52]	; (80015b4 <USART1_IRQHandler+0x3c>)
 800157e:	f000 ff8d 	bl	800249c <USART_GetITStatus>
 8001582:	b178      	cbz	r0, 80015a4 <USART1_IRQHandler+0x2c>
 8001584:	480a      	ldr	r0, [pc, #40]	; (80015b0 <USART1_IRQHandler+0x38>)
 8001586:	f000 ff6a 	bl	800245e <USART_ReceiveData>
 800158a:	4b0b      	ldr	r3, [pc, #44]	; (80015b8 <USART1_IRQHandler+0x40>)
 800158c:	490b      	ldr	r1, [pc, #44]	; (80015bc <USART1_IRQHandler+0x44>)
 800158e:	681a      	ldr	r2, [r3, #0]
 8001590:	b2c0      	uxtb	r0, r0
 8001592:	5488      	strb	r0, [r1, r2]
 8001594:	681a      	ldr	r2, [r3, #0]
 8001596:	3201      	adds	r2, #1
 8001598:	601a      	str	r2, [r3, #0]
 800159a:	681a      	ldr	r2, [r3, #0]
 800159c:	2a0f      	cmp	r2, #15
 800159e:	bf84      	itt	hi
 80015a0:	2200      	movhi	r2, #0
 80015a2:	601a      	strhi	r2, [r3, #0]
 80015a4:	4802      	ldr	r0, [pc, #8]	; (80015b0 <USART1_IRQHandler+0x38>)
 80015a6:	4903      	ldr	r1, [pc, #12]	; (80015b4 <USART1_IRQHandler+0x3c>)
 80015a8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80015ac:	f000 bf94 	b.w	80024d8 <USART_ClearITPendingBit>
 80015b0:	40013800 	.word	0x40013800
 80015b4:	00050105 	.word	0x00050105
 80015b8:	2000016c 	.word	0x2000016c
 80015bc:	20000170 	.word	0x20000170

080015c0 <_ZN9CTerminal7putcharEc>:
 80015c0:	4b04      	ldr	r3, [pc, #16]	; (80015d4 <_ZN9CTerminal7putcharEc+0x14>)
 80015c2:	69da      	ldr	r2, [r3, #28]
 80015c4:	0612      	lsls	r2, r2, #24
 80015c6:	d401      	bmi.n	80015cc <_ZN9CTerminal7putcharEc+0xc>
 80015c8:	bf00      	nop
 80015ca:	e7f9      	b.n	80015c0 <_ZN9CTerminal7putcharEc>
 80015cc:	b289      	uxth	r1, r1
 80015ce:	8519      	strh	r1, [r3, #40]	; 0x28
 80015d0:	4770      	bx	lr
 80015d2:	bf00      	nop
 80015d4:	40013800 	.word	0x40013800

080015d8 <_ZN9CTerminal4putsEPc>:
 80015d8:	b538      	push	{r3, r4, r5, lr}
 80015da:	4605      	mov	r5, r0
 80015dc:	1e4c      	subs	r4, r1, #1
 80015de:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 80015e2:	b119      	cbz	r1, 80015ec <_ZN9CTerminal4putsEPc+0x14>
 80015e4:	4628      	mov	r0, r5
 80015e6:	f7ff ffeb 	bl	80015c0 <_ZN9CTerminal7putcharEc>
 80015ea:	e7f8      	b.n	80015de <_ZN9CTerminal4putsEPc+0x6>
 80015ec:	2001      	movs	r0, #1
 80015ee:	bd38      	pop	{r3, r4, r5, pc}

080015f0 <_ZN9CTerminal4putiEl>:
 80015f0:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 80015f2:	1e0b      	subs	r3, r1, #0
 80015f4:	f04f 0200 	mov.w	r2, #0
 80015f8:	bfba      	itte	lt
 80015fa:	425b      	neglt	r3, r3
 80015fc:	2501      	movlt	r5, #1
 80015fe:	4615      	movge	r5, r2
 8001600:	f88d 200f 	strb.w	r2, [sp, #15]
 8001604:	210a      	movs	r1, #10
 8001606:	220a      	movs	r2, #10
 8001608:	ac01      	add	r4, sp, #4
 800160a:	fb93 f6f2 	sdiv	r6, r3, r2
 800160e:	fb02 3316 	mls	r3, r2, r6, r3
 8001612:	3330      	adds	r3, #48	; 0x30
 8001614:	550b      	strb	r3, [r1, r4]
 8001616:	1e4a      	subs	r2, r1, #1
 8001618:	4633      	mov	r3, r6
 800161a:	b10e      	cbz	r6, 8001620 <_ZN9CTerminal4putiEl+0x30>
 800161c:	4611      	mov	r1, r2
 800161e:	e7f2      	b.n	8001606 <_ZN9CTerminal4putiEl+0x16>
 8001620:	b12d      	cbz	r5, 800162e <_ZN9CTerminal4putiEl+0x3e>
 8001622:	ab04      	add	r3, sp, #16
 8001624:	4413      	add	r3, r2
 8001626:	212d      	movs	r1, #45	; 0x2d
 8001628:	f803 1c0c 	strb.w	r1, [r3, #-12]
 800162c:	4611      	mov	r1, r2
 800162e:	4421      	add	r1, r4
 8001630:	f7ff ffd2 	bl	80015d8 <_ZN9CTerminal4putsEPc>
 8001634:	b004      	add	sp, #16
 8001636:	bd70      	pop	{r4, r5, r6, pc}

08001638 <_ZN9CTerminal5putuiEm>:
 8001638:	b530      	push	{r4, r5, lr}
 800163a:	b085      	sub	sp, #20
 800163c:	2300      	movs	r3, #0
 800163e:	f88d 300f 	strb.w	r3, [sp, #15]
 8001642:	220a      	movs	r2, #10
 8001644:	230a      	movs	r3, #10
 8001646:	ac01      	add	r4, sp, #4
 8001648:	fbb1 f5f3 	udiv	r5, r1, r3
 800164c:	fb03 1315 	mls	r3, r3, r5, r1
 8001650:	3330      	adds	r3, #48	; 0x30
 8001652:	5513      	strb	r3, [r2, r4]
 8001654:	4629      	mov	r1, r5
 8001656:	1e53      	subs	r3, r2, #1
 8001658:	b10d      	cbz	r5, 800165e <_ZN9CTerminal5putuiEm+0x26>
 800165a:	461a      	mov	r2, r3
 800165c:	e7f2      	b.n	8001644 <_ZN9CTerminal5putuiEm+0xc>
 800165e:	18a1      	adds	r1, r4, r2
 8001660:	f7ff ffba 	bl	80015d8 <_ZN9CTerminal4putsEPc>
 8001664:	b005      	add	sp, #20
 8001666:	bd30      	pop	{r4, r5, pc}

08001668 <_ZN9CTerminal4putxEm>:
 8001668:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800166a:	2300      	movs	r3, #0
 800166c:	f88d 300f 	strb.w	r3, [sp, #15]
 8001670:	220a      	movs	r2, #10
 8001672:	f001 030f 	and.w	r3, r1, #15
 8001676:	2b09      	cmp	r3, #9
 8001678:	ac01      	add	r4, sp, #4
 800167a:	bfd4      	ite	le
 800167c:	3330      	addle	r3, #48	; 0x30
 800167e:	3357      	addgt	r3, #87	; 0x57
 8001680:	0909      	lsrs	r1, r1, #4
 8001682:	54a3      	strb	r3, [r4, r2]
 8001684:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001688:	d001      	beq.n	800168e <_ZN9CTerminal4putxEm+0x26>
 800168a:	461a      	mov	r2, r3
 800168c:	e7f1      	b.n	8001672 <_ZN9CTerminal4putxEm+0xa>
 800168e:	18a1      	adds	r1, r4, r2
 8001690:	f7ff ffa2 	bl	80015d8 <_ZN9CTerminal4putsEPc>
 8001694:	b004      	add	sp, #16
 8001696:	bd10      	pop	{r4, pc}

08001698 <_ZN9CTerminal4putfEf>:
 8001698:	ee07 1a90 	vmov	s15, r1
 800169c:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 8001708 <_ZN9CTerminal4putfEf+0x70>
 80016a0:	eef4 7ac7 	vcmpe.f32	s15, s14
 80016a4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80016a8:	b538      	push	{r3, r4, r5, lr}
 80016aa:	4605      	mov	r5, r0
 80016ac:	dc09      	bgt.n	80016c2 <_ZN9CTerminal4putfEf+0x2a>
 80016ae:	ed9f 7a17 	vldr	s14, [pc, #92]	; 800170c <_ZN9CTerminal4putfEf+0x74>
 80016b2:	eef4 7a47 	vcmp.f32	s15, s14
 80016b6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80016ba:	bf48      	it	mi
 80016bc:	eef0 7a47 	vmovmi.f32	s15, s14
 80016c0:	e001      	b.n	80016c6 <_ZN9CTerminal4putfEf+0x2e>
 80016c2:	eef0 7a47 	vmov.f32	s15, s14
 80016c6:	ed9f 7a12 	vldr	s14, [pc, #72]	; 8001710 <_ZN9CTerminal4putfEf+0x78>
 80016ca:	ee67 7a87 	vmul.f32	s15, s15, s14
 80016ce:	4628      	mov	r0, r5
 80016d0:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80016d4:	ee17 4a90 	vmov	r4, s15
 80016d8:	ee17 1a90 	vmov	r1, s15
 80016dc:	f7ff ff88 	bl	80015f0 <_ZN9CTerminal4putiEl>
 80016e0:	2c00      	cmp	r4, #0
 80016e2:	4628      	mov	r0, r5
 80016e4:	f04f 012e 	mov.w	r1, #46	; 0x2e
 80016e8:	bfb8      	it	lt
 80016ea:	4264      	neglt	r4, r4
 80016ec:	f7ff ff68 	bl	80015c0 <_ZN9CTerminal7putcharEc>
 80016f0:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80016f4:	4628      	mov	r0, r5
 80016f6:	fb94 f1f3 	sdiv	r1, r4, r3
 80016fa:	fb03 4111 	mls	r1, r3, r1, r4
 80016fe:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001702:	f7ff bf75 	b.w	80015f0 <_ZN9CTerminal4putiEl>
 8001706:	bf00      	nop
 8001708:	49742400 	.word	0x49742400
 800170c:	c9742400 	.word	0xc9742400
 8001710:	447a0000 	.word	0x447a0000

08001714 <_ZN9CTerminal6printfEPKcz>:
 8001714:	b40e      	push	{r1, r2, r3}
 8001716:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001718:	4605      	mov	r5, r0
 800171a:	ac06      	add	r4, sp, #24
 800171c:	2600      	movs	r6, #0
 800171e:	9b05      	ldr	r3, [sp, #20]
 8001720:	5d99      	ldrb	r1, [r3, r6]
 8001722:	2900      	cmp	r1, #0
 8001724:	d04f      	beq.n	80017c6 <_ZN9CTerminal6printfEPKcz+0xb2>
 8001726:	2925      	cmp	r1, #37	; 0x25
 8001728:	d004      	beq.n	8001734 <_ZN9CTerminal6printfEPKcz+0x20>
 800172a:	4628      	mov	r0, r5
 800172c:	f7ff ff48 	bl	80015c0 <_ZN9CTerminal7putcharEc>
 8001730:	3601      	adds	r6, #1
 8001732:	e7f4      	b.n	800171e <_ZN9CTerminal6printfEPKcz+0xa>
 8001734:	4433      	add	r3, r6
 8001736:	7859      	ldrb	r1, [r3, #1]
 8001738:	2969      	cmp	r1, #105	; 0x69
 800173a:	d016      	beq.n	800176a <_ZN9CTerminal6printfEPKcz+0x56>
 800173c:	d809      	bhi.n	8001752 <_ZN9CTerminal6printfEPKcz+0x3e>
 800173e:	2963      	cmp	r1, #99	; 0x63
 8001740:	d025      	beq.n	800178e <_ZN9CTerminal6printfEPKcz+0x7a>
 8001742:	2966      	cmp	r1, #102	; 0x66
 8001744:	d029      	beq.n	800179a <_ZN9CTerminal6printfEPKcz+0x86>
 8001746:	2925      	cmp	r1, #37	; 0x25
 8001748:	d13b      	bne.n	80017c2 <_ZN9CTerminal6printfEPKcz+0xae>
 800174a:	4628      	mov	r0, r5
 800174c:	f7ff ff38 	bl	80015c0 <_ZN9CTerminal7putcharEc>
 8001750:	e037      	b.n	80017c2 <_ZN9CTerminal6printfEPKcz+0xae>
 8001752:	2975      	cmp	r1, #117	; 0x75
 8001754:	d00f      	beq.n	8001776 <_ZN9CTerminal6printfEPKcz+0x62>
 8001756:	2978      	cmp	r1, #120	; 0x78
 8001758:	d013      	beq.n	8001782 <_ZN9CTerminal6printfEPKcz+0x6e>
 800175a:	2973      	cmp	r1, #115	; 0x73
 800175c:	d131      	bne.n	80017c2 <_ZN9CTerminal6printfEPKcz+0xae>
 800175e:	4628      	mov	r0, r5
 8001760:	6821      	ldr	r1, [r4, #0]
 8001762:	1d27      	adds	r7, r4, #4
 8001764:	f7ff ff38 	bl	80015d8 <_ZN9CTerminal4putsEPc>
 8001768:	e02a      	b.n	80017c0 <_ZN9CTerminal6printfEPKcz+0xac>
 800176a:	4628      	mov	r0, r5
 800176c:	6821      	ldr	r1, [r4, #0]
 800176e:	1d27      	adds	r7, r4, #4
 8001770:	f7ff ff3e 	bl	80015f0 <_ZN9CTerminal4putiEl>
 8001774:	e024      	b.n	80017c0 <_ZN9CTerminal6printfEPKcz+0xac>
 8001776:	4628      	mov	r0, r5
 8001778:	6821      	ldr	r1, [r4, #0]
 800177a:	1d27      	adds	r7, r4, #4
 800177c:	f7ff ff5c 	bl	8001638 <_ZN9CTerminal5putuiEm>
 8001780:	e01e      	b.n	80017c0 <_ZN9CTerminal6printfEPKcz+0xac>
 8001782:	4628      	mov	r0, r5
 8001784:	6821      	ldr	r1, [r4, #0]
 8001786:	1d27      	adds	r7, r4, #4
 8001788:	f7ff ff6e 	bl	8001668 <_ZN9CTerminal4putxEm>
 800178c:	e018      	b.n	80017c0 <_ZN9CTerminal6printfEPKcz+0xac>
 800178e:	4628      	mov	r0, r5
 8001790:	7821      	ldrb	r1, [r4, #0]
 8001792:	1d27      	adds	r7, r4, #4
 8001794:	f7ff ff14 	bl	80015c0 <_ZN9CTerminal7putcharEc>
 8001798:	e012      	b.n	80017c0 <_ZN9CTerminal6printfEPKcz+0xac>
 800179a:	6821      	ldr	r1, [r4, #0]
 800179c:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80017a0:	b2cb      	uxtb	r3, r1
 80017a2:	f362 0107 	bfi	r1, r2, #0, #8
 80017a6:	f363 210f 	bfi	r1, r3, #8, #8
 80017aa:	0e0a      	lsrs	r2, r1, #24
 80017ac:	f3c1 4307 	ubfx	r3, r1, #16, #8
 80017b0:	f362 4117 	bfi	r1, r2, #16, #8
 80017b4:	f363 611f 	bfi	r1, r3, #24, #8
 80017b8:	4628      	mov	r0, r5
 80017ba:	1d27      	adds	r7, r4, #4
 80017bc:	f7ff ff6c 	bl	8001698 <_ZN9CTerminal4putfEf>
 80017c0:	463c      	mov	r4, r7
 80017c2:	3602      	adds	r6, #2
 80017c4:	e7ab      	b.n	800171e <_ZN9CTerminal6printfEPKcz+0xa>
 80017c6:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 80017ca:	b003      	add	sp, #12
 80017cc:	4770      	bx	lr

080017ce <_ZN10MathVectorILj4EE4initEv>:
 80017ce:	2300      	movs	r3, #0
 80017d0:	6003      	str	r3, [r0, #0]
 80017d2:	6043      	str	r3, [r0, #4]
 80017d4:	6083      	str	r3, [r0, #8]
 80017d6:	60c3      	str	r3, [r0, #12]
 80017d8:	4770      	bx	lr
	...

080017dc <_ZN10MathVectorILj3EE3mixERS0_f>:
 80017dc:	ee06 2a90 	vmov	s13, r2
 80017e0:	f100 030c 	add.w	r3, r0, #12
 80017e4:	ed9f 7a08 	vldr	s14, [pc, #32]	; 8001808 <_ZN10MathVectorILj3EE3mixERS0_f+0x2c>
 80017e8:	ecf1 7a01 	vldmia	r1!, {s15}
 80017ec:	ed90 6a00 	vldr	s12, [r0]
 80017f0:	ee37 7a66 	vsub.f32	s14, s14, s13
 80017f4:	ee66 7aa7 	vmul.f32	s15, s13, s15
 80017f8:	ee47 7a06 	vmla.f32	s15, s14, s12
 80017fc:	ece0 7a01 	vstmia	r0!, {s15}
 8001800:	4298      	cmp	r0, r3
 8001802:	d1ef      	bne.n	80017e4 <_ZN10MathVectorILj3EE3mixERS0_f+0x8>
 8001804:	4770      	bx	lr
 8001806:	bf00      	nop
 8001808:	3f800000 	.word	0x3f800000

0800180c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>:
 800180c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800180e:	eddf 6a17 	vldr	s13, [pc, #92]	; 800186c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x60>
 8001812:	4603      	mov	r3, r0
 8001814:	2600      	movs	r6, #0
 8001816:	f8d0 01c0 	ldr.w	r0, [r0, #448]	; 0x1c0
 800181a:	461c      	mov	r4, r3
 800181c:	4635      	mov	r5, r6
 800181e:	4285      	cmp	r5, r0
 8001820:	d019      	beq.n	8001856 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x4a>
 8001822:	eddf 7a13 	vldr	s15, [pc, #76]	; 8001870 <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x64>
 8001826:	468e      	mov	lr, r1
 8001828:	f104 0710 	add.w	r7, r4, #16
 800182c:	ecb4 6a01 	vldmia	r4!, {s12}
 8001830:	ecbe 7a01 	vldmia	lr!, {s14}
 8001834:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001838:	42bc      	cmp	r4, r7
 800183a:	ee47 7a07 	vmla.f32	s15, s14, s14
 800183e:	d1f5      	bne.n	800182c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x20>
 8001840:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001844:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001848:	bf44      	itt	mi
 800184a:	462e      	movmi	r6, r5
 800184c:	eef0 6a67 	vmovmi.f32	s13, s15
 8001850:	3501      	adds	r5, #1
 8001852:	463c      	mov	r4, r7
 8001854:	e7e3      	b.n	800181e <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE+0x12>
 8001856:	f503 7380 	add.w	r3, r3, #256	; 0x100
 800185a:	210c      	movs	r1, #12
 800185c:	4610      	mov	r0, r2
 800185e:	fb01 3106 	mla	r1, r1, r6, r3
 8001862:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 8001866:	f7ff ffb9 	bl	80017dc <_ZN10MathVectorILj3EE3mixERS0_f>
 800186a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800186c:	4cbebc20 	.word	0x4cbebc20
 8001870:	00000000 	.word	0x00000000

08001874 <_ZN21CLearningLineFollower3runEv>:
 8001874:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001878:	2308      	movs	r3, #8
 800187a:	ed2d 8b06 	vpush	{d8-d10}
 800187e:	f100 0650 	add.w	r6, r0, #80	; 0x50
 8001882:	f8c0 3210 	str.w	r3, [r0, #528]	; 0x210
 8001886:	4bcc      	ldr	r3, [pc, #816]	; (8001bb8 <_ZN21CLearningLineFollower3runEv+0x344>)
 8001888:	f8c0 3214 	str.w	r3, [r0, #532]	; 0x214
 800188c:	4604      	mov	r4, r0
 800188e:	f500 78a8 	add.w	r8, r0, #336	; 0x150
 8001892:	4635      	mov	r5, r6
 8001894:	f105 0710 	add.w	r7, r5, #16
 8001898:	48c8      	ldr	r0, [pc, #800]	; (8001bbc <_ZN21CLearningLineFollower3runEv+0x348>)
 800189a:	f7fe fe69 	bl	8000570 <_ZN5CMath3rndEv>
 800189e:	f845 0b04 	str.w	r0, [r5], #4
 80018a2:	42bd      	cmp	r5, r7
 80018a4:	d1f8      	bne.n	8001898 <_ZN21CLearningLineFollower3runEv+0x24>
 80018a6:	4545      	cmp	r5, r8
 80018a8:	d1f4      	bne.n	8001894 <_ZN21CLearningLineFollower3runEv+0x20>
 80018aa:	4623      	mov	r3, r4
 80018ac:	f104 02c0 	add.w	r2, r4, #192	; 0xc0
 80018b0:	eddf 8ac3 	vldr	s17, [pc, #780]	; 8001bc0 <_ZN21CLearningLineFollower3runEv+0x34c>
 80018b4:	330c      	adds	r3, #12
 80018b6:	edc3 8a51 	vstr	s17, [r3, #324]	; 0x144
 80018ba:	edc3 8a52 	vstr	s17, [r3, #328]	; 0x148
 80018be:	edc3 8a53 	vstr	s17, [r3, #332]	; 0x14c
 80018c2:	4293      	cmp	r3, r2
 80018c4:	d1f4      	bne.n	80018b0 <_ZN21CLearningLineFollower3runEv+0x3c>
 80018c6:	2300      	movs	r3, #0
 80018c8:	f104 0530 	add.w	r5, r4, #48	; 0x30
 80018cc:	62a3      	str	r3, [r4, #40]	; 0x28
 80018ce:	62e3      	str	r3, [r4, #44]	; 0x2c
 80018d0:	4628      	mov	r0, r5
 80018d2:	f104 0940 	add.w	r9, r4, #64	; 0x40
 80018d6:	f7ff ff7a 	bl	80017ce <_ZN10MathVectorILj4EE4initEv>
 80018da:	ed9f aaba 	vldr	s20, [pc, #744]	; 8001bc4 <_ZN21CLearningLineFollower3runEv+0x350>
 80018de:	4648      	mov	r0, r9
 80018e0:	f7ff ff75 	bl	80017ce <_ZN10MathVectorILj4EE4initEv>
 80018e4:	edc4 8a86 	vstr	s17, [r4, #536]	; 0x218
 80018e8:	edc4 8a87 	vstr	s17, [r4, #540]	; 0x21c
 80018ec:	edc4 8a88 	vstr	s17, [r4, #544]	; 0x220
 80018f0:	2100      	movs	r1, #0
 80018f2:	48b5      	ldr	r0, [pc, #724]	; (8001bc8 <_ZN21CLearningLineFollower3runEv+0x354>)
 80018f4:	f7fe ff1c 	bl	8000730 <_ZN4CRGB8rgb_readEh>
 80018f8:	48b3      	ldr	r0, [pc, #716]	; (8001bc8 <_ZN21CLearningLineFollower3runEv+0x354>)
 80018fa:	f7ff f8b5 	bl	8000a68 <_ZN4CRGB14get_rgb_resultEv>
 80018fe:	4601      	mov	r1, r0
 8001900:	4620      	mov	r0, r4
 8001902:	f7fe fd15 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 8001906:	4620      	mov	r0, r4
 8001908:	f7fe fdb0 	bl	800046c <_ZN13CLinePosition17get_line_positionEv>
 800190c:	6a23      	ldr	r3, [r4, #32]
 800190e:	6263      	str	r3, [r4, #36]	; 0x24
 8001910:	69e3      	ldr	r3, [r4, #28]
 8001912:	6223      	str	r3, [r4, #32]
 8001914:	69a3      	ldr	r3, [r4, #24]
 8001916:	61e3      	str	r3, [r4, #28]
 8001918:	61a0      	str	r0, [r4, #24]
 800191a:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 800191e:	f104 0740 	add.w	r7, r4, #64	; 0x40
 8001922:	e887 000f 	stmia.w	r7, {r0, r1, r2, r3}
 8001926:	f104 0318 	add.w	r3, r4, #24
 800192a:	cb0f      	ldmia	r3, {r0, r1, r2, r3}
 800192c:	f504 7706 	add.w	r7, r4, #536	; 0x218
 8001930:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 8001934:	463a      	mov	r2, r7
 8001936:	4630      	mov	r0, r6
 8001938:	4629      	mov	r1, r5
 800193a:	f7ff ff67 	bl	800180c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 800193e:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8001940:	62a3      	str	r3, [r4, #40]	; 0x28
 8001942:	489e      	ldr	r0, [pc, #632]	; (8001bbc <_ZN21CLearningLineFollower3runEv+0x348>)
 8001944:	f7fe fdfa 	bl	800053c <_ZN5CMath4randEv>
 8001948:	2364      	movs	r3, #100	; 0x64
 800194a:	fbb0 f2f3 	udiv	r2, r0, r3
 800194e:	fb02 0013 	mls	r0, r2, r3, r0
 8001952:	2813      	cmp	r0, #19
 8001954:	d80b      	bhi.n	800196e <_ZN21CLearningLineFollower3runEv+0xfa>
 8001956:	4899      	ldr	r0, [pc, #612]	; (8001bbc <_ZN21CLearningLineFollower3runEv+0x348>)
 8001958:	f7fe fdf0 	bl	800053c <_ZN5CMath4randEv>
 800195c:	f04f 0a03 	mov.w	sl, #3
 8001960:	fbb0 fafa 	udiv	sl, r0, sl
 8001964:	eb0a 0a4a 	add.w	sl, sl, sl, lsl #1
 8001968:	ebca 0a00 	rsb	sl, sl, r0
 800196c:	e012      	b.n	8001994 <_ZN21CLearningLineFollower3runEv+0x120>
 800196e:	f04f 0a00 	mov.w	sl, #0
 8001972:	463a      	mov	r2, r7
 8001974:	4653      	mov	r3, sl
 8001976:	eb04 018a 	add.w	r1, r4, sl, lsl #2
 800197a:	ecb2 7a01 	vldmia	r2!, {s14}
 800197e:	edd1 7a86 	vldr	s15, [r1, #536]	; 0x218
 8001982:	eeb4 7a67 	vcmp.f32	s14, s15
 8001986:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800198a:	bfc8      	it	gt
 800198c:	469a      	movgt	sl, r3
 800198e:	3301      	adds	r3, #1
 8001990:	2b03      	cmp	r3, #3
 8001992:	d1f0      	bne.n	8001976 <_ZN21CLearningLineFollower3runEv+0x102>
 8001994:	f1ba 0f01 	cmp.w	sl, #1
 8001998:	f8c4 a02c 	str.w	sl, [r4, #44]	; 0x2c
 800199c:	d014      	beq.n	80019c8 <_ZN21CLearningLineFollower3runEv+0x154>
 800199e:	d30b      	bcc.n	80019b8 <_ZN21CLearningLineFollower3runEv+0x144>
 80019a0:	f1ba 0f02 	cmp.w	sl, #2
 80019a4:	d11a      	bne.n	80019dc <_ZN21CLearningLineFollower3runEv+0x168>
 80019a6:	4889      	ldr	r0, [pc, #548]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 80019a8:	2100      	movs	r1, #0
 80019aa:	220e      	movs	r2, #14
 80019ac:	f7ff f8f4 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 80019b0:	4886      	ldr	r0, [pc, #536]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 80019b2:	2101      	movs	r1, #1
 80019b4:	2200      	movs	r2, #0
 80019b6:	e00f      	b.n	80019d8 <_ZN21CLearningLineFollower3runEv+0x164>
 80019b8:	4884      	ldr	r0, [pc, #528]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 80019ba:	2100      	movs	r1, #0
 80019bc:	220e      	movs	r2, #14
 80019be:	f7ff f8eb 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 80019c2:	4882      	ldr	r0, [pc, #520]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 80019c4:	2101      	movs	r1, #1
 80019c6:	e006      	b.n	80019d6 <_ZN21CLearningLineFollower3runEv+0x162>
 80019c8:	2100      	movs	r1, #0
 80019ca:	4880      	ldr	r0, [pc, #512]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 80019cc:	460a      	mov	r2, r1
 80019ce:	f7ff f8e3 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 80019d2:	487e      	ldr	r0, [pc, #504]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 80019d4:	4651      	mov	r1, sl
 80019d6:	220e      	movs	r2, #14
 80019d8:	f7ff f8de 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 80019dc:	487c      	ldr	r0, [pc, #496]	; (8001bd0 <_ZN21CLearningLineFollower3runEv+0x35c>)
 80019de:	eddf 9a7d 	vldr	s19, [pc, #500]	; 8001bd4 <_ZN21CLearningLineFollower3runEv+0x360>
 80019e2:	2132      	movs	r1, #50	; 0x32
 80019e4:	f7fe fe70 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 80019e8:	2100      	movs	r1, #0
 80019ea:	4877      	ldr	r0, [pc, #476]	; (8001bc8 <_ZN21CLearningLineFollower3runEv+0x354>)
 80019ec:	f7fe fea0 	bl	8000730 <_ZN4CRGB8rgb_readEh>
 80019f0:	4875      	ldr	r0, [pc, #468]	; (8001bc8 <_ZN21CLearningLineFollower3runEv+0x354>)
 80019f2:	f7ff f839 	bl	8000a68 <_ZN4CRGB14get_rgb_resultEv>
 80019f6:	4601      	mov	r1, r0
 80019f8:	4620      	mov	r0, r4
 80019fa:	f7fe fc99 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 80019fe:	4620      	mov	r0, r4
 8001a00:	f7fe fd34 	bl	800046c <_ZN13CLinePosition17get_line_positionEv>
 8001a04:	4601      	mov	r1, r0
 8001a06:	486d      	ldr	r0, [pc, #436]	; (8001bbc <_ZN21CLearningLineFollower3runEv+0x348>)
 8001a08:	f7fe fd8c 	bl	8000524 <_ZN5CMath3absEf>
 8001a0c:	ee07 0a90 	vmov	s15, r0
 8001a10:	f8d4 b02c 	ldr.w	fp, [r4, #44]	; 0x2c
 8001a14:	f8d4 a028 	ldr.w	sl, [r4, #40]	; 0x28
 8001a18:	ee39 9ae7 	vsub.f32	s18, s19, s15
 8001a1c:	eddf 7a6e 	vldr	s15, [pc, #440]	; 8001bd8 <_ZN21CLearningLineFollower3runEv+0x364>
 8001a20:	4630      	mov	r0, r6
 8001a22:	4629      	mov	r1, r5
 8001a24:	463a      	mov	r2, r7
 8001a26:	eb04 0b8b 	add.w	fp, r4, fp, lsl #2
 8001a2a:	ee39 9a67 	vsub.f32	s18, s18, s15
 8001a2e:	f7ff feed 	bl	800180c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001a32:	edd4 7a86 	vldr	s15, [r4, #536]	; 0x218
 8001a36:	ed9b 8a86 	vldr	s16, [fp, #536]	; 0x218
 8001a3a:	eeb4 8a67 	vcmp.f32	s16, s15
 8001a3e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a42:	bf48      	it	mi
 8001a44:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001a48:	edd4 7a87 	vldr	s15, [r4, #540]	; 0x21c
 8001a4c:	eeb4 8a67 	vcmp.f32	s16, s15
 8001a50:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a54:	bf48      	it	mi
 8001a56:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001a5a:	edd4 7a88 	vldr	s15, [r4, #544]	; 0x220
 8001a5e:	eeb4 8a67 	vcmp.f32	s16, s15
 8001a62:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001a66:	4630      	mov	r0, r6
 8001a68:	4649      	mov	r1, r9
 8001a6a:	463a      	mov	r2, r7
 8001a6c:	bf48      	it	mi
 8001a6e:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001a72:	f7ff fecb 	bl	800180c <_ZN17AssociativeMemoryILi4ELi3ELi16EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001a76:	eddf 7a59 	vldr	s15, [pc, #356]	; 8001bdc <_ZN21CLearningLineFollower3runEv+0x368>
 8001a7a:	f8d4 0210 	ldr.w	r0, [r4, #528]	; 0x210
 8001a7e:	eddf 6a58 	vldr	s13, [pc, #352]	; 8001be0 <_ZN21CLearningLineFollower3runEv+0x36c>
 8001a82:	eeb0 7a49 	vmov.f32	s14, s18
 8001a86:	ee08 7a27 	vmla.f32	s14, s16, s15
 8001a8a:	eb04 0a8a 	add.w	sl, r4, sl, lsl #2
 8001a8e:	2100      	movs	r1, #0
 8001a90:	46b6      	mov	lr, r6
 8001a92:	ed8a 7a86 	vstr	s14, [sl, #536]	; 0x218
 8001a96:	460a      	mov	r2, r1
 8001a98:	4282      	cmp	r2, r0
 8001a9a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8001a9e:	d018      	beq.n	8001ad2 <_ZN21CLearningLineFollower3runEv+0x25e>
 8001aa0:	eddf 7a47 	vldr	s15, [pc, #284]	; 8001bc0 <_ZN21CLearningLineFollower3runEv+0x34c>
 8001aa4:	46f4      	mov	ip, lr
 8001aa6:	ecb3 7a01 	vldmia	r3!, {s14}
 8001aaa:	ecbc 6a01 	vldmia	ip!, {s12}
 8001aae:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001ab2:	42b3      	cmp	r3, r6
 8001ab4:	ee47 7a07 	vmla.f32	s15, s14, s14
 8001ab8:	d1f5      	bne.n	8001aa6 <_ZN21CLearningLineFollower3runEv+0x232>
 8001aba:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001abe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001ac2:	bf44      	itt	mi
 8001ac4:	4611      	movmi	r1, r2
 8001ac6:	eef0 6a67 	vmovmi.f32	s13, s15
 8001aca:	3201      	adds	r2, #1
 8001acc:	f10e 0e10 	add.w	lr, lr, #16
 8001ad0:	e7e2      	b.n	8001a98 <_ZN21CLearningLineFollower3runEv+0x224>
 8001ad2:	280f      	cmp	r0, #15
 8001ad4:	d81a      	bhi.n	8001b0c <_ZN21CLearningLineFollower3runEv+0x298>
 8001ad6:	1d42      	adds	r2, r0, #5
 8001ad8:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 8001adc:	ecf3 7a01 	vldmia	r3!, {s15}
 8001ae0:	ed92 7a00 	vldr	s14, [r2]
 8001ae4:	ee47 7a28 	vmla.f32	s15, s14, s17
 8001ae8:	42b3      	cmp	r3, r6
 8001aea:	ece2 7a01 	vstmia	r2!, {s15}
 8001aee:	d1f5      	bne.n	8001adc <_ZN21CLearningLineFollower3runEv+0x268>
 8001af0:	230c      	movs	r3, #12
 8001af2:	fb03 8000 	mla	r0, r3, r0, r8
 8001af6:	4639      	mov	r1, r7
 8001af8:	f04f 527e 	mov.w	r2, #1065353216	; 0x3f800000
 8001afc:	f7ff fe6e 	bl	80017dc <_ZN10MathVectorILj3EE3mixERS0_f>
 8001b00:	f8d4 3210 	ldr.w	r3, [r4, #528]	; 0x210
 8001b04:	3301      	adds	r3, #1
 8001b06:	f8c4 3210 	str.w	r3, [r4, #528]	; 0x210
 8001b0a:	e01a      	b.n	8001b42 <_ZN21CLearningLineFollower3runEv+0x2ce>
 8001b0c:	1d4a      	adds	r2, r1, #5
 8001b0e:	edd4 6a85 	vldr	s13, [r4, #532]	; 0x214
 8001b12:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 8001b16:	ecf3 7a01 	vldmia	r3!, {s15}
 8001b1a:	ed92 6a00 	vldr	s12, [r2]
 8001b1e:	ee39 7ae6 	vsub.f32	s14, s19, s13
 8001b22:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8001b26:	ee47 7a06 	vmla.f32	s15, s14, s12
 8001b2a:	42b3      	cmp	r3, r6
 8001b2c:	ece2 7a01 	vstmia	r2!, {s15}
 8001b30:	d1f1      	bne.n	8001b16 <_ZN21CLearningLineFollower3runEv+0x2a2>
 8001b32:	200c      	movs	r0, #12
 8001b34:	fb00 8001 	mla	r0, r0, r1, r8
 8001b38:	f8d4 2214 	ldr.w	r2, [r4, #532]	; 0x214
 8001b3c:	4639      	mov	r1, r7
 8001b3e:	f7ff fe4d 	bl	80017dc <_ZN10MathVectorILj3EE3mixERS0_f>
 8001b42:	4620      	mov	r0, r4
 8001b44:	f7fe fc90 	bl	8000468 <_ZN13CLinePosition7on_lineEv>
 8001b48:	4607      	mov	r7, r0
 8001b4a:	b9f0      	cbnz	r0, 8001b8a <_ZN21CLearningLineFollower3runEv+0x316>
 8001b4c:	481f      	ldr	r0, [pc, #124]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 8001b4e:	4639      	mov	r1, r7
 8001b50:	f06f 020d 	mvn.w	r2, #13
 8001b54:	f7ff f820 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001b58:	f06f 020d 	mvn.w	r2, #13
 8001b5c:	481b      	ldr	r0, [pc, #108]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 8001b5e:	2101      	movs	r1, #1
 8001b60:	f7ff f81a 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001b64:	481a      	ldr	r0, [pc, #104]	; (8001bd0 <_ZN21CLearningLineFollower3runEv+0x35c>)
 8001b66:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001b6a:	f7fe fdad 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 8001b6e:	4817      	ldr	r0, [pc, #92]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 8001b70:	4639      	mov	r1, r7
 8001b72:	463a      	mov	r2, r7
 8001b74:	f7ff f810 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001b78:	4814      	ldr	r0, [pc, #80]	; (8001bcc <_ZN21CLearningLineFollower3runEv+0x358>)
 8001b7a:	2101      	movs	r1, #1
 8001b7c:	463a      	mov	r2, r7
 8001b7e:	f7ff f80b 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001b82:	4813      	ldr	r0, [pc, #76]	; (8001bd0 <_ZN21CLearningLineFollower3runEv+0x35c>)
 8001b84:	2164      	movs	r1, #100	; 0x64
 8001b86:	f7fe fd9f 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 8001b8a:	eddf 7a16 	vldr	s15, [pc, #88]	; 8001be4 <_ZN21CLearningLineFollower3runEv+0x370>
 8001b8e:	480e      	ldr	r0, [pc, #56]	; (8001bc8 <_ZN21CLearningLineFollower3runEv+0x354>)
 8001b90:	4915      	ldr	r1, [pc, #84]	; (8001be8 <_ZN21CLearningLineFollower3runEv+0x374>)
 8001b92:	ee29 9a27 	vmul.f32	s18, s18, s15
 8001b96:	eddf 7a15 	vldr	s15, [pc, #84]	; 8001bec <_ZN21CLearningLineFollower3runEv+0x378>
 8001b9a:	ee0a 9a27 	vmla.f32	s18, s20, s15
 8001b9e:	eddf 7a14 	vldr	s15, [pc, #80]	; 8001bf0 <_ZN21CLearningLineFollower3runEv+0x37c>
 8001ba2:	ee69 7a27 	vmul.f32	s15, s18, s15
 8001ba6:	eeb0 aa49 	vmov.f32	s20, s18
 8001baa:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001bae:	ee17 2a90 	vmov	r2, s15
 8001bb2:	f7ff fdaf 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001bb6:	e69b      	b.n	80018f0 <_ZN21CLearningLineFollower3runEv+0x7c>
 8001bb8:	3dcccccd 	.word	0x3dcccccd
 8001bbc:	20000108 	.word	0x20000108
 8001bc0:	00000000 	.word	0x00000000
 8001bc4:	bf800000 	.word	0xbf800000
 8001bc8:	20000030 	.word	0x20000030
 8001bcc:	200000f4 	.word	0x200000f4
 8001bd0:	2000013c 	.word	0x2000013c
 8001bd4:	3f800000 	.word	0x3f800000
 8001bd8:	3f000000 	.word	0x3f000000
 8001bdc:	3f666666 	.word	0x3f666666
 8001be0:	4cbebc20 	.word	0x4cbebc20
 8001be4:	3c23d70a 	.word	0x3c23d70a
 8001be8:	080028b0 	.word	0x080028b0
 8001bec:	3f7d70a4 	.word	0x3f7d70a4
 8001bf0:	447a0000 	.word	0x447a0000

08001bf4 <_ZN5CDemo4initEv>:
 8001bf4:	4770      	bx	lr
	...

08001bf8 <_ZN5CDemo10blink_taskEv>:
 8001bf8:	b508      	push	{r3, lr}
 8001bfa:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001bfe:	480a      	ldr	r0, [pc, #40]	; (8001c28 <_ZN5CDemo10blink_taskEv+0x30>)
 8001c00:	f7ff fbf6 	bl	80013f0 <_ZN5CGPIO7gpio_onEm>
 8001c04:	4809      	ldr	r0, [pc, #36]	; (8001c2c <_ZN5CDemo10blink_taskEv+0x34>)
 8001c06:	f7fe fd51 	bl	80006ac <_ZN6CTimer8get_timeEv>
 8001c0a:	4909      	ldr	r1, [pc, #36]	; (8001c30 <_ZN5CDemo10blink_taskEv+0x38>)
 8001c0c:	4602      	mov	r2, r0
 8001c0e:	4806      	ldr	r0, [pc, #24]	; (8001c28 <_ZN5CDemo10blink_taskEv+0x30>)
 8001c10:	f7ff fd80 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001c14:	4805      	ldr	r0, [pc, #20]	; (8001c2c <_ZN5CDemo10blink_taskEv+0x34>)
 8001c16:	210a      	movs	r1, #10
 8001c18:	f7fe fd56 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 8001c1c:	4802      	ldr	r0, [pc, #8]	; (8001c28 <_ZN5CDemo10blink_taskEv+0x30>)
 8001c1e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001c22:	f7ff fbf3 	bl	800140c <_ZN5CGPIO8gpio_offEm>
 8001c26:	e7e8      	b.n	8001bfa <_ZN5CDemo10blink_taskEv+0x2>
 8001c28:	20000030 	.word	0x20000030
 8001c2c:	2000013c 	.word	0x2000013c
 8001c30:	08002898 	.word	0x08002898

08001c34 <_ZN5CDemo10moves_taskEv>:
 8001c34:	b570      	push	{r4, r5, r6, lr}
 8001c36:	4c1c      	ldr	r4, [pc, #112]	; (8001ca8 <_ZN5CDemo10moves_taskEv+0x74>)
 8001c38:	4d1c      	ldr	r5, [pc, #112]	; (8001cac <_ZN5CDemo10moves_taskEv+0x78>)
 8001c3a:	4620      	mov	r0, r4
 8001c3c:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001c40:	2216      	movs	r2, #22
 8001c42:	2300      	movs	r3, #0
 8001c44:	f7fe fb14 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c48:	4620      	mov	r0, r4
 8001c4a:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001c4e:	2216      	movs	r2, #22
 8001c50:	2300      	movs	r3, #0
 8001c52:	f7fe fb0d 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c56:	4620      	mov	r0, r4
 8001c58:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001c5c:	2216      	movs	r2, #22
 8001c5e:	2300      	movs	r3, #0
 8001c60:	f7fe fb06 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c64:	4620      	mov	r0, r4
 8001c66:	f44f 7161 	mov.w	r1, #900	; 0x384
 8001c6a:	2216      	movs	r2, #22
 8001c6c:	2300      	movs	r3, #0
 8001c6e:	f7fe faff 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c72:	4620      	mov	r0, r4
 8001c74:	4629      	mov	r1, r5
 8001c76:	2216      	movs	r2, #22
 8001c78:	2300      	movs	r3, #0
 8001c7a:	f7fe faf9 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c7e:	4620      	mov	r0, r4
 8001c80:	4629      	mov	r1, r5
 8001c82:	2216      	movs	r2, #22
 8001c84:	2300      	movs	r3, #0
 8001c86:	f7fe faf3 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c8a:	4620      	mov	r0, r4
 8001c8c:	4629      	mov	r1, r5
 8001c8e:	2216      	movs	r2, #22
 8001c90:	2300      	movs	r3, #0
 8001c92:	f7fe faed 	bl	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001c96:	4620      	mov	r0, r4
 8001c98:	4629      	mov	r1, r5
 8001c9a:	2216      	movs	r2, #22
 8001c9c:	2300      	movs	r3, #0
 8001c9e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001ca2:	f7fe bae5 	b.w	8000270 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001ca6:	bf00      	nop
 8001ca8:	20000030 	.word	0x20000030
 8001cac:	fffffc7c 	.word	0xfffffc7c

08001cb0 <_ZN5CDemo24basic_line_follower_taskEv>:
 8001cb0:	b510      	push	{r4, lr}
 8001cb2:	b090      	sub	sp, #64	; 0x40
 8001cb4:	a802      	add	r0, sp, #8
 8001cb6:	f7fe fb31 	bl	800031c <_ZN13CLinePositionC1Ev>
 8001cba:	4b3d      	ldr	r3, [pc, #244]	; (8001db0 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001cbc:	9300      	str	r3, [sp, #0]
 8001cbe:	493d      	ldr	r1, [pc, #244]	; (8001db4 <_ZN5CDemo24basic_line_follower_taskEv+0x104>)
 8001cc0:	2200      	movs	r2, #0
 8001cc2:	a808      	add	r0, sp, #32
 8001cc4:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
 8001cc8:	f7fe fbf0 	bl	80004ac <_ZN4CPIDC1Effff>
 8001ccc:	483a      	ldr	r0, [pc, #232]	; (8001db8 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001cce:	2100      	movs	r1, #0
 8001cd0:	220a      	movs	r2, #10
 8001cd2:	f7fe fd0b 	bl	80006ec <_ZN6CTimer22event_timer_set_periodEhm>
 8001cd6:	4838      	ldr	r0, [pc, #224]	; (8001db8 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001cd8:	2100      	movs	r1, #0
 8001cda:	f7fe fd1b 	bl	8000714 <_ZN6CTimer17event_timer_checkEh>
 8001cde:	2800      	cmp	r0, #0
 8001ce0:	d0f9      	beq.n	8001cd6 <_ZN5CDemo24basic_line_follower_taskEv+0x26>
 8001ce2:	2100      	movs	r1, #0
 8001ce4:	4835      	ldr	r0, [pc, #212]	; (8001dbc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001ce6:	f7fe fd23 	bl	8000730 <_ZN4CRGB8rgb_readEh>
 8001cea:	4834      	ldr	r0, [pc, #208]	; (8001dbc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001cec:	f7fe febc 	bl	8000a68 <_ZN4CRGB14get_rgb_resultEv>
 8001cf0:	4601      	mov	r1, r0
 8001cf2:	a802      	add	r0, sp, #8
 8001cf4:	f7fe fb1c 	bl	8000330 <_ZN13CLinePosition7processEP10sRGBResult>
 8001cf8:	a802      	add	r0, sp, #8
 8001cfa:	f7fe fbb5 	bl	8000468 <_ZN13CLinePosition7on_lineEv>
 8001cfe:	4604      	mov	r4, r0
 8001d00:	a802      	add	r0, sp, #8
 8001d02:	f7fe fbb3 	bl	800046c <_ZN13CLinePosition17get_line_positionEv>
 8001d06:	eddf 7a2e 	vldr	s15, [pc, #184]	; 8001dc0 <_ZN5CDemo24basic_line_follower_taskEv+0x110>
 8001d0a:	492e      	ldr	r1, [pc, #184]	; (8001dc4 <_ZN5CDemo24basic_line_follower_taskEv+0x114>)
 8001d0c:	ee07 0a10 	vmov	s14, r0
 8001d10:	ee67 7a27 	vmul.f32	s15, s14, s15
 8001d14:	4622      	mov	r2, r4
 8001d16:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001d1a:	4828      	ldr	r0, [pc, #160]	; (8001dbc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001d1c:	ee17 3a90 	vmov	r3, s15
 8001d20:	f7ff fcf8 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001d24:	a802      	add	r0, sp, #8
 8001d26:	f7fe fb9f 	bl	8000468 <_ZN13CLinePosition7on_lineEv>
 8001d2a:	4604      	mov	r4, r0
 8001d2c:	b300      	cbz	r0, 8001d70 <_ZN5CDemo24basic_line_follower_taskEv+0xc0>
 8001d2e:	a802      	add	r0, sp, #8
 8001d30:	f7fe fb9c 	bl	800046c <_ZN13CLinePosition17get_line_positionEv>
 8001d34:	eddf 7a24 	vldr	s15, [pc, #144]	; 8001dc8 <_ZN5CDemo24basic_line_follower_taskEv+0x118>
 8001d38:	ee07 0a10 	vmov	s14, r0
 8001d3c:	ee77 7ac7 	vsub.f32	s15, s15, s14
 8001d40:	a808      	add	r0, sp, #32
 8001d42:	ee17 1a90 	vmov	r1, s15
 8001d46:	f7fe fbba 	bl	80004be <_ZN4CPID7processEf>
 8001d4a:	ee07 0a90 	vmov	s15, r0
 8001d4e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001d52:	481e      	ldr	r0, [pc, #120]	; (8001dcc <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001d54:	ee17 4a90 	vmov	r4, s15
 8001d58:	2100      	movs	r1, #0
 8001d5a:	f104 020b 	add.w	r2, r4, #11
 8001d5e:	f7fe ff1b 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001d62:	481a      	ldr	r0, [pc, #104]	; (8001dcc <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001d64:	2101      	movs	r1, #1
 8001d66:	f1c4 020b 	rsb	r2, r4, #11
 8001d6a:	f7fe ff15 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001d6e:	e7b2      	b.n	8001cd6 <_ZN5CDemo24basic_line_follower_taskEv+0x26>
 8001d70:	4621      	mov	r1, r4
 8001d72:	4816      	ldr	r0, [pc, #88]	; (8001dcc <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001d74:	f06f 020a 	mvn.w	r2, #10
 8001d78:	f7fe ff0e 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001d7c:	f06f 020a 	mvn.w	r2, #10
 8001d80:	4812      	ldr	r0, [pc, #72]	; (8001dcc <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001d82:	2101      	movs	r1, #1
 8001d84:	f7fe ff08 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001d88:	480b      	ldr	r0, [pc, #44]	; (8001db8 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001d8a:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001d8e:	f7fe fc9b 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 8001d92:	4621      	mov	r1, r4
 8001d94:	4622      	mov	r2, r4
 8001d96:	480d      	ldr	r0, [pc, #52]	; (8001dcc <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001d98:	f7fe fefe 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001d9c:	480b      	ldr	r0, [pc, #44]	; (8001dcc <_ZN5CDemo24basic_line_follower_taskEv+0x11c>)
 8001d9e:	2101      	movs	r1, #1
 8001da0:	4622      	mov	r2, r4
 8001da2:	f7fe fef9 	bl	8000b98 <_ZN6CMotor9set_motorEml>
 8001da6:	4804      	ldr	r0, [pc, #16]	; (8001db8 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001da8:	2164      	movs	r1, #100	; 0x64
 8001daa:	f7fe fc8d 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 8001dae:	e792      	b.n	8001cd6 <_ZN5CDemo24basic_line_follower_taskEv+0x26>
 8001db0:	42300000 	.word	0x42300000
 8001db4:	41200000 	.word	0x41200000
 8001db8:	2000013c 	.word	0x2000013c
 8001dbc:	20000030 	.word	0x20000030
 8001dc0:	447a0000 	.word	0x447a0000
 8001dc4:	080028ad 	.word	0x080028ad
 8001dc8:	00000000 	.word	0x00000000
 8001dcc:	200000f4 	.word	0x200000f4

08001dd0 <_ZN5CDemo3runEj>:
 8001dd0:	2902      	cmp	r1, #2
 8001dd2:	b508      	push	{r3, lr}
 8001dd4:	d007      	beq.n	8001de6 <_ZN5CDemo3runEj+0x16>
 8001dd6:	2903      	cmp	r1, #3
 8001dd8:	d007      	beq.n	8001dea <_ZN5CDemo3runEj+0x1a>
 8001dda:	2901      	cmp	r1, #1
 8001ddc:	d10a      	bne.n	8001df4 <_ZN5CDemo3runEj+0x24>
 8001dde:	f7ff ff29 	bl	8001c34 <_ZN5CDemo10moves_taskEv>
 8001de2:	f7ff ff09 	bl	8001bf8 <_ZN5CDemo10blink_taskEv>
 8001de6:	f7ff ff63 	bl	8001cb0 <_ZN5CDemo24basic_line_follower_taskEv>
 8001dea:	4803      	ldr	r0, [pc, #12]	; (8001df8 <_ZN5CDemo3runEj+0x28>)
 8001dec:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001df0:	f7ff bd40 	b.w	8001874 <_ZN21CLearningLineFollower3runEv>
 8001df4:	bd08      	pop	{r3, pc}
 8001df6:	bf00      	nop
 8001df8:	20000184 	.word	0x20000184
 8001dfc:	00000000 	.word	0x00000000

08001e00 <main>:
 8001e00:	b530      	push	{r4, r5, lr}
 8001e02:	b08b      	sub	sp, #44	; 0x2c
 8001e04:	f000 fbf0 	bl	80025e8 <sytem_clock_init>
 8001e08:	4853      	ldr	r0, [pc, #332]	; (8001f58 <main+0x158>)
 8001e0a:	f7fe f9ef 	bl	80001ec <_ZN7CKodama4initEv>
 8001e0e:	b118      	cbz	r0, 8001e18 <main+0x18>
 8001e10:	4851      	ldr	r0, [pc, #324]	; (8001f58 <main+0x158>)
 8001e12:	2100      	movs	r1, #0
 8001e14:	f7ff fb24 	bl	8001460 <_ZN6CError10error_funcEi>
 8001e18:	210a      	movs	r1, #10
 8001e1a:	484f      	ldr	r0, [pc, #316]	; (8001f58 <main+0x158>)
 8001e1c:	f7fe fa25 	bl	800026a <_ZN7CKodama6set_dtEl>
 8001e20:	a53d      	add	r5, pc, #244	; (adr r5, 8001f18 <main+0x118>)
 8001e22:	e9d5 4500 	ldrd	r4, r5, [r5]
 8001e26:	484c      	ldr	r0, [pc, #304]	; (8001f58 <main+0x158>)
 8001e28:	f7fe fa02 	bl	8000230 <_ZN7CKodama5sleepEv>
 8001e2c:	2204      	movs	r2, #4
 8001e2e:	2308      	movs	r3, #8
 8001e30:	9300      	str	r3, [sp, #0]
 8001e32:	4849      	ldr	r0, [pc, #292]	; (8001f58 <main+0x158>)
 8001e34:	4949      	ldr	r1, [pc, #292]	; (8001f5c <main+0x15c>)
 8001e36:	4613      	mov	r3, r2
 8001e38:	f7ff fc6c 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001e3c:	4846      	ldr	r0, [pc, #280]	; (8001f58 <main+0x158>)
 8001e3e:	4948      	ldr	r1, [pc, #288]	; (8001f60 <main+0x160>)
 8001e40:	4622      	mov	r2, r4
 8001e42:	462b      	mov	r3, r5
 8001e44:	f7ff fc66 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001e48:	4b46      	ldr	r3, [pc, #280]	; (8001f64 <main+0x164>)
 8001e4a:	4843      	ldr	r0, [pc, #268]	; (8001f58 <main+0x158>)
 8001e4c:	4946      	ldr	r1, [pc, #280]	; (8001f68 <main+0x168>)
 8001e4e:	2200      	movs	r2, #0
 8001e50:	e9cd 2300 	strd	r2, r3, [sp]
 8001e54:	a332      	add	r3, pc, #200	; (adr r3, 8001f20 <main+0x120>)
 8001e56:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e5a:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8001e5e:	a332      	add	r3, pc, #200	; (adr r3, 8001f28 <main+0x128>)
 8001e60:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e64:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001e68:	a331      	add	r3, pc, #196	; (adr r3, 8001f30 <main+0x130>)
 8001e6a:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e6e:	e9cd 4504 	strd	r4, r5, [sp, #16]
 8001e72:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8001e76:	2200      	movs	r2, #0
 8001e78:	2300      	movs	r3, #0
 8001e7a:	f7ff fc4b 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001e7e:	4b3b      	ldr	r3, [pc, #236]	; (8001f6c <main+0x16c>)
 8001e80:	4835      	ldr	r0, [pc, #212]	; (8001f58 <main+0x158>)
 8001e82:	4939      	ldr	r1, [pc, #228]	; (8001f68 <main+0x168>)
 8001e84:	2200      	movs	r2, #0
 8001e86:	e9cd 2300 	strd	r2, r3, [sp]
 8001e8a:	a32b      	add	r3, pc, #172	; (adr r3, 8001f38 <main+0x138>)
 8001e8c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e90:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8001e94:	a32a      	add	r3, pc, #168	; (adr r3, 8001f40 <main+0x140>)
 8001e96:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001e9a:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8001e9e:	a32a      	add	r3, pc, #168	; (adr r3, 8001f48 <main+0x148>)
 8001ea0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001ea4:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001ea8:	a329      	add	r3, pc, #164	; (adr r3, 8001f50 <main+0x150>)
 8001eaa:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001eae:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8001eb2:	2200      	movs	r2, #0
 8001eb4:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
 8001eb8:	f7ff fc2c 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001ebc:	4826      	ldr	r0, [pc, #152]	; (8001f58 <main+0x158>)
 8001ebe:	f44f 7100 	mov.w	r1, #512	; 0x200
 8001ec2:	f7ff fab1 	bl	8001428 <_ZN5CGPIO7gpio_inEm>
 8001ec6:	b148      	cbz	r0, 8001edc <main+0xdc>
 8001ec8:	4823      	ldr	r0, [pc, #140]	; (8001f58 <main+0x158>)
 8001eca:	f7fe f9bc 	bl	8000246 <_ZN7CKodama6wakeupEv>
 8001ece:	4828      	ldr	r0, [pc, #160]	; (8001f70 <main+0x170>)
 8001ed0:	f7ff fe90 	bl	8001bf4 <_ZN5CDemo4initEv>
 8001ed4:	4826      	ldr	r0, [pc, #152]	; (8001f70 <main+0x170>)
 8001ed6:	2103      	movs	r1, #3
 8001ed8:	f7ff ff7a 	bl	8001dd0 <_ZN5CDemo3runEj>
 8001edc:	481e      	ldr	r0, [pc, #120]	; (8001f58 <main+0x158>)
 8001ede:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ee2:	f7ff fa85 	bl	80013f0 <_ZN5CGPIO7gpio_onEm>
 8001ee6:	4823      	ldr	r0, [pc, #140]	; (8001f74 <main+0x174>)
 8001ee8:	210a      	movs	r1, #10
 8001eea:	f7fe fbed 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 8001eee:	481a      	ldr	r0, [pc, #104]	; (8001f58 <main+0x158>)
 8001ef0:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ef4:	f7ff fa8a 	bl	800140c <_ZN5CGPIO8gpio_offEm>
 8001ef8:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001efc:	481d      	ldr	r0, [pc, #116]	; (8001f74 <main+0x174>)
 8001efe:	f7fe fbe3 	bl	80006c8 <_ZN6CTimer8delay_msEm>
 8001f02:	481c      	ldr	r0, [pc, #112]	; (8001f74 <main+0x174>)
 8001f04:	f7fe fbd2 	bl	80006ac <_ZN6CTimer8get_timeEv>
 8001f08:	491b      	ldr	r1, [pc, #108]	; (8001f78 <main+0x178>)
 8001f0a:	4602      	mov	r2, r0
 8001f0c:	4812      	ldr	r0, [pc, #72]	; (8001f58 <main+0x158>)
 8001f0e:	f7ff fc01 	bl	8001714 <_ZN9CTerminal6printfEPKcz>
 8001f12:	e7d3      	b.n	8001ebc <main+0xbc>
 8001f14:	f3af 8000 	nop.w
 8001f18:	60000000 	.word	0x60000000
 8001f1c:	400921fb 	.word	0x400921fb
 8001f20:	00000000 	.word	0x00000000
 8001f24:	3fbf9ad0 	.word	0x3fbf9ad0
 8001f28:	20000000 	.word	0x20000000
 8001f2c:	40406251 	.word	0x40406251
 8001f30:	60000000 	.word	0x60000000
 8001f34:	40934a45 	.word	0x40934a45
 8001f38:	00000000 	.word	0x00000000
 8001f3c:	bfbf9ad0 	.word	0xbfbf9ad0
 8001f40:	60000000 	.word	0x60000000
 8001f44:	c00921fb 	.word	0xc00921fb
 8001f48:	20000000 	.word	0x20000000
 8001f4c:	c0406251 	.word	0xc0406251
 8001f50:	60000000 	.word	0x60000000
 8001f54:	c0934a45 	.word	0xc0934a45
 8001f58:	20000030 	.word	0x20000030
 8001f5c:	080028b5 	.word	0x080028b5
 8001f60:	080028d5 	.word	0x080028d5
 8001f64:	3ff00000 	.word	0x3ff00000
 8001f68:	080028e7 	.word	0x080028e7
 8001f6c:	bff00000 	.word	0xbff00000
 8001f70:	200003a8 	.word	0x200003a8
 8001f74:	2000013c 	.word	0x2000013c
 8001f78:	080028fa 	.word	0x080028fa

08001f7c <RCC_GetClocksFreq>:
 8001f7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001f80:	4f9b      	ldr	r7, [pc, #620]	; (80021f0 <RCC_GetClocksFreq+0x274>)
 8001f82:	687b      	ldr	r3, [r7, #4]
 8001f84:	f003 030c 	and.w	r3, r3, #12
 8001f88:	2b04      	cmp	r3, #4
 8001f8a:	d005      	beq.n	8001f98 <RCC_GetClocksFreq+0x1c>
 8001f8c:	2b08      	cmp	r3, #8
 8001f8e:	d006      	beq.n	8001f9e <RCC_GetClocksFreq+0x22>
 8001f90:	4a98      	ldr	r2, [pc, #608]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 8001f92:	6002      	str	r2, [r0, #0]
 8001f94:	b9b3      	cbnz	r3, 8001fc4 <RCC_GetClocksFreq+0x48>
 8001f96:	e016      	b.n	8001fc6 <RCC_GetClocksFreq+0x4a>
 8001f98:	4b96      	ldr	r3, [pc, #600]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 8001f9a:	6003      	str	r3, [r0, #0]
 8001f9c:	e012      	b.n	8001fc4 <RCC_GetClocksFreq+0x48>
 8001f9e:	687b      	ldr	r3, [r7, #4]
 8001fa0:	6879      	ldr	r1, [r7, #4]
 8001fa2:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001fa6:	1c9a      	adds	r2, r3, #2
 8001fa8:	03cb      	lsls	r3, r1, #15
 8001faa:	bf49      	itett	mi
 8001fac:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001fae:	4b92      	ldrpl	r3, [pc, #584]	; (80021f8 <RCC_GetClocksFreq+0x27c>)
 8001fb0:	4990      	ldrmi	r1, [pc, #576]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 8001fb2:	f003 030f 	andmi.w	r3, r3, #15
 8001fb6:	bf44      	itt	mi
 8001fb8:	3301      	addmi	r3, #1
 8001fba:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001fbe:	4353      	muls	r3, r2
 8001fc0:	6003      	str	r3, [r0, #0]
 8001fc2:	e000      	b.n	8001fc6 <RCC_GetClocksFreq+0x4a>
 8001fc4:	2300      	movs	r3, #0
 8001fc6:	687a      	ldr	r2, [r7, #4]
 8001fc8:	4e8c      	ldr	r6, [pc, #560]	; (80021fc <RCC_GetClocksFreq+0x280>)
 8001fca:	f8df c234 	ldr.w	ip, [pc, #564]	; 8002200 <RCC_GetClocksFreq+0x284>
 8001fce:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8001fd2:	5cb4      	ldrb	r4, [r6, r2]
 8001fd4:	6802      	ldr	r2, [r0, #0]
 8001fd6:	b2e4      	uxtb	r4, r4
 8001fd8:	fa22 f104 	lsr.w	r1, r2, r4
 8001fdc:	6041      	str	r1, [r0, #4]
 8001fde:	687d      	ldr	r5, [r7, #4]
 8001fe0:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001fe4:	5d75      	ldrb	r5, [r6, r5]
 8001fe6:	fa21 fe05 	lsr.w	lr, r1, r5
 8001fea:	f8c0 e008 	str.w	lr, [r0, #8]
 8001fee:	687d      	ldr	r5, [r7, #4]
 8001ff0:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001ff4:	5d75      	ldrb	r5, [r6, r5]
 8001ff6:	b2ed      	uxtb	r5, r5
 8001ff8:	40e9      	lsrs	r1, r5
 8001ffa:	60c1      	str	r1, [r0, #12]
 8001ffc:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001ffe:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8002002:	f008 060f 	and.w	r6, r8, #15
 8002006:	f018 0f10 	tst.w	r8, #16
 800200a:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 800200e:	46e0      	mov	r8, ip
 8002010:	b2b6      	uxth	r6, r6
 8002012:	d004      	beq.n	800201e <RCC_GetClocksFreq+0xa2>
 8002014:	b11e      	cbz	r6, 800201e <RCC_GetClocksFreq+0xa2>
 8002016:	fbb3 f6f6 	udiv	r6, r3, r6
 800201a:	6106      	str	r6, [r0, #16]
 800201c:	e000      	b.n	8002020 <RCC_GetClocksFreq+0xa4>
 800201e:	6102      	str	r2, [r0, #16]
 8002020:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8002022:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8002026:	f00c 060f 	and.w	r6, ip, #15
 800202a:	f01c 0f10 	tst.w	ip, #16
 800202e:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8002032:	b2b6      	uxth	r6, r6
 8002034:	d004      	beq.n	8002040 <RCC_GetClocksFreq+0xc4>
 8002036:	b11e      	cbz	r6, 8002040 <RCC_GetClocksFreq+0xc4>
 8002038:	fbb3 f6f6 	udiv	r6, r3, r6
 800203c:	6146      	str	r6, [r0, #20]
 800203e:	e000      	b.n	8002042 <RCC_GetClocksFreq+0xc6>
 8002040:	6142      	str	r2, [r0, #20]
 8002042:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002044:	06f6      	lsls	r6, r6, #27
 8002046:	bf5a      	itte	pl
 8002048:	4e6a      	ldrpl	r6, [pc, #424]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 800204a:	6186      	strpl	r6, [r0, #24]
 800204c:	6182      	strmi	r2, [r0, #24]
 800204e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002050:	06b6      	lsls	r6, r6, #26
 8002052:	bf5a      	itte	pl
 8002054:	4e67      	ldrpl	r6, [pc, #412]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 8002056:	61c6      	strpl	r6, [r0, #28]
 8002058:	61c2      	strmi	r2, [r0, #28]
 800205a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800205c:	0676      	lsls	r6, r6, #25
 800205e:	bf5a      	itte	pl
 8002060:	4e64      	ldrpl	r6, [pc, #400]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 8002062:	6206      	strpl	r6, [r0, #32]
 8002064:	6202      	strmi	r2, [r0, #32]
 8002066:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002068:	05f6      	lsls	r6, r6, #23
 800206a:	d506      	bpl.n	800207a <RCC_GetClocksFreq+0xfe>
 800206c:	429a      	cmp	r2, r3
 800206e:	d104      	bne.n	800207a <RCC_GetClocksFreq+0xfe>
 8002070:	42a5      	cmp	r5, r4
 8002072:	d102      	bne.n	800207a <RCC_GetClocksFreq+0xfe>
 8002074:	0056      	lsls	r6, r2, #1
 8002076:	6246      	str	r6, [r0, #36]	; 0x24
 8002078:	e000      	b.n	800207c <RCC_GetClocksFreq+0x100>
 800207a:	6241      	str	r1, [r0, #36]	; 0x24
 800207c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800207e:	04f6      	lsls	r6, r6, #19
 8002080:	d506      	bpl.n	8002090 <RCC_GetClocksFreq+0x114>
 8002082:	429a      	cmp	r2, r3
 8002084:	d104      	bne.n	8002090 <RCC_GetClocksFreq+0x114>
 8002086:	42a5      	cmp	r5, r4
 8002088:	d102      	bne.n	8002090 <RCC_GetClocksFreq+0x114>
 800208a:	0056      	lsls	r6, r2, #1
 800208c:	6286      	str	r6, [r0, #40]	; 0x28
 800208e:	e000      	b.n	8002092 <RCC_GetClocksFreq+0x116>
 8002090:	6281      	str	r1, [r0, #40]	; 0x28
 8002092:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002094:	05b6      	lsls	r6, r6, #22
 8002096:	d506      	bpl.n	80020a6 <RCC_GetClocksFreq+0x12a>
 8002098:	429a      	cmp	r2, r3
 800209a:	d104      	bne.n	80020a6 <RCC_GetClocksFreq+0x12a>
 800209c:	42a5      	cmp	r5, r4
 800209e:	d102      	bne.n	80020a6 <RCC_GetClocksFreq+0x12a>
 80020a0:	0056      	lsls	r6, r2, #1
 80020a2:	62c6      	str	r6, [r0, #44]	; 0x2c
 80020a4:	e000      	b.n	80020a8 <RCC_GetClocksFreq+0x12c>
 80020a6:	62c1      	str	r1, [r0, #44]	; 0x2c
 80020a8:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80020aa:	0576      	lsls	r6, r6, #21
 80020ac:	d506      	bpl.n	80020bc <RCC_GetClocksFreq+0x140>
 80020ae:	429a      	cmp	r2, r3
 80020b0:	d104      	bne.n	80020bc <RCC_GetClocksFreq+0x140>
 80020b2:	42a5      	cmp	r5, r4
 80020b4:	d102      	bne.n	80020bc <RCC_GetClocksFreq+0x140>
 80020b6:	0056      	lsls	r6, r2, #1
 80020b8:	64c6      	str	r6, [r0, #76]	; 0x4c
 80020ba:	e000      	b.n	80020be <RCC_GetClocksFreq+0x142>
 80020bc:	64c1      	str	r1, [r0, #76]	; 0x4c
 80020be:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80020c0:	0536      	lsls	r6, r6, #20
 80020c2:	d506      	bpl.n	80020d2 <RCC_GetClocksFreq+0x156>
 80020c4:	429a      	cmp	r2, r3
 80020c6:	d104      	bne.n	80020d2 <RCC_GetClocksFreq+0x156>
 80020c8:	42a5      	cmp	r5, r4
 80020ca:	d102      	bne.n	80020d2 <RCC_GetClocksFreq+0x156>
 80020cc:	0056      	lsls	r6, r2, #1
 80020ce:	6506      	str	r6, [r0, #80]	; 0x50
 80020d0:	e000      	b.n	80020d4 <RCC_GetClocksFreq+0x158>
 80020d2:	6501      	str	r1, [r0, #80]	; 0x50
 80020d4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80020d6:	04b6      	lsls	r6, r6, #18
 80020d8:	d506      	bpl.n	80020e8 <RCC_GetClocksFreq+0x16c>
 80020da:	429a      	cmp	r2, r3
 80020dc:	d104      	bne.n	80020e8 <RCC_GetClocksFreq+0x16c>
 80020de:	42a5      	cmp	r5, r4
 80020e0:	d102      	bne.n	80020e8 <RCC_GetClocksFreq+0x16c>
 80020e2:	0056      	lsls	r6, r2, #1
 80020e4:	6546      	str	r6, [r0, #84]	; 0x54
 80020e6:	e000      	b.n	80020ea <RCC_GetClocksFreq+0x16e>
 80020e8:	6501      	str	r1, [r0, #80]	; 0x50
 80020ea:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80020ec:	0436      	lsls	r6, r6, #16
 80020ee:	d506      	bpl.n	80020fe <RCC_GetClocksFreq+0x182>
 80020f0:	429a      	cmp	r2, r3
 80020f2:	d104      	bne.n	80020fe <RCC_GetClocksFreq+0x182>
 80020f4:	42a5      	cmp	r5, r4
 80020f6:	d102      	bne.n	80020fe <RCC_GetClocksFreq+0x182>
 80020f8:	0053      	lsls	r3, r2, #1
 80020fa:	6583      	str	r3, [r0, #88]	; 0x58
 80020fc:	e000      	b.n	8002100 <RCC_GetClocksFreq+0x184>
 80020fe:	6581      	str	r1, [r0, #88]	; 0x58
 8002100:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8002102:	4b3b      	ldr	r3, [pc, #236]	; (80021f0 <RCC_GetClocksFreq+0x274>)
 8002104:	07a4      	lsls	r4, r4, #30
 8002106:	d101      	bne.n	800210c <RCC_GetClocksFreq+0x190>
 8002108:	6381      	str	r1, [r0, #56]	; 0x38
 800210a:	e015      	b.n	8002138 <RCC_GetClocksFreq+0x1bc>
 800210c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800210e:	f001 0103 	and.w	r1, r1, #3
 8002112:	2901      	cmp	r1, #1
 8002114:	d101      	bne.n	800211a <RCC_GetClocksFreq+0x19e>
 8002116:	6382      	str	r2, [r0, #56]	; 0x38
 8002118:	e00e      	b.n	8002138 <RCC_GetClocksFreq+0x1bc>
 800211a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800211c:	f001 0103 	and.w	r1, r1, #3
 8002120:	2902      	cmp	r1, #2
 8002122:	d102      	bne.n	800212a <RCC_GetClocksFreq+0x1ae>
 8002124:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002128:	e005      	b.n	8002136 <RCC_GetClocksFreq+0x1ba>
 800212a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800212c:	f003 0303 	and.w	r3, r3, #3
 8002130:	2b03      	cmp	r3, #3
 8002132:	d101      	bne.n	8002138 <RCC_GetClocksFreq+0x1bc>
 8002134:	4b2f      	ldr	r3, [pc, #188]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 8002136:	6383      	str	r3, [r0, #56]	; 0x38
 8002138:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800213a:	4b2d      	ldr	r3, [pc, #180]	; (80021f0 <RCC_GetClocksFreq+0x274>)
 800213c:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8002140:	d102      	bne.n	8002148 <RCC_GetClocksFreq+0x1cc>
 8002142:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8002146:	e018      	b.n	800217a <RCC_GetClocksFreq+0x1fe>
 8002148:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800214a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800214e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8002152:	d101      	bne.n	8002158 <RCC_GetClocksFreq+0x1dc>
 8002154:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002156:	e010      	b.n	800217a <RCC_GetClocksFreq+0x1fe>
 8002158:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800215a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800215e:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8002162:	d102      	bne.n	800216a <RCC_GetClocksFreq+0x1ee>
 8002164:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002168:	e006      	b.n	8002178 <RCC_GetClocksFreq+0x1fc>
 800216a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800216c:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8002170:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8002174:	d101      	bne.n	800217a <RCC_GetClocksFreq+0x1fe>
 8002176:	4b1f      	ldr	r3, [pc, #124]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 8002178:	63c3      	str	r3, [r0, #60]	; 0x3c
 800217a:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800217c:	4b1c      	ldr	r3, [pc, #112]	; (80021f0 <RCC_GetClocksFreq+0x274>)
 800217e:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8002182:	d102      	bne.n	800218a <RCC_GetClocksFreq+0x20e>
 8002184:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8002188:	e018      	b.n	80021bc <RCC_GetClocksFreq+0x240>
 800218a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800218c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002190:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8002194:	d101      	bne.n	800219a <RCC_GetClocksFreq+0x21e>
 8002196:	6402      	str	r2, [r0, #64]	; 0x40
 8002198:	e010      	b.n	80021bc <RCC_GetClocksFreq+0x240>
 800219a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800219c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80021a0:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 80021a4:	d102      	bne.n	80021ac <RCC_GetClocksFreq+0x230>
 80021a6:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80021aa:	e006      	b.n	80021ba <RCC_GetClocksFreq+0x23e>
 80021ac:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80021ae:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 80021b2:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 80021b6:	d101      	bne.n	80021bc <RCC_GetClocksFreq+0x240>
 80021b8:	4b0e      	ldr	r3, [pc, #56]	; (80021f4 <RCC_GetClocksFreq+0x278>)
 80021ba:	6403      	str	r3, [r0, #64]	; 0x40
 80021bc:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80021be:	4b0c      	ldr	r3, [pc, #48]	; (80021f0 <RCC_GetClocksFreq+0x274>)
 80021c0:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 80021c4:	d102      	bne.n	80021cc <RCC_GetClocksFreq+0x250>
 80021c6:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 80021ca:	e023      	b.n	8002214 <RCC_GetClocksFreq+0x298>
 80021cc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80021ce:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80021d2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80021d6:	d101      	bne.n	80021dc <RCC_GetClocksFreq+0x260>
 80021d8:	6442      	str	r2, [r0, #68]	; 0x44
 80021da:	e01b      	b.n	8002214 <RCC_GetClocksFreq+0x298>
 80021dc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80021de:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80021e2:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80021e6:	d10d      	bne.n	8002204 <RCC_GetClocksFreq+0x288>
 80021e8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80021ec:	e011      	b.n	8002212 <RCC_GetClocksFreq+0x296>
 80021ee:	bf00      	nop
 80021f0:	40021000 	.word	0x40021000
 80021f4:	007a1200 	.word	0x007a1200
 80021f8:	003d0900 	.word	0x003d0900
 80021fc:	20000020 	.word	0x20000020
 8002200:	20000000 	.word	0x20000000
 8002204:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002206:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 800220a:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 800220e:	d101      	bne.n	8002214 <RCC_GetClocksFreq+0x298>
 8002210:	4b13      	ldr	r3, [pc, #76]	; (8002260 <RCC_GetClocksFreq+0x2e4>)
 8002212:	6443      	str	r3, [r0, #68]	; 0x44
 8002214:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002216:	4b13      	ldr	r3, [pc, #76]	; (8002264 <RCC_GetClocksFreq+0x2e8>)
 8002218:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800221c:	d103      	bne.n	8002226 <RCC_GetClocksFreq+0x2aa>
 800221e:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8002222:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002226:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002228:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 800222c:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8002230:	d102      	bne.n	8002238 <RCC_GetClocksFreq+0x2bc>
 8002232:	6482      	str	r2, [r0, #72]	; 0x48
 8002234:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002238:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800223a:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 800223e:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8002242:	d102      	bne.n	800224a <RCC_GetClocksFreq+0x2ce>
 8002244:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002248:	e006      	b.n	8002258 <RCC_GetClocksFreq+0x2dc>
 800224a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800224c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002250:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8002254:	d101      	bne.n	800225a <RCC_GetClocksFreq+0x2de>
 8002256:	4b02      	ldr	r3, [pc, #8]	; (8002260 <RCC_GetClocksFreq+0x2e4>)
 8002258:	6483      	str	r3, [r0, #72]	; 0x48
 800225a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800225e:	bf00      	nop
 8002260:	007a1200 	.word	0x007a1200
 8002264:	40021000 	.word	0x40021000

08002268 <RCC_AHBPeriphClockCmd>:
 8002268:	bf00      	nop
 800226a:	bf00      	nop
 800226c:	4b04      	ldr	r3, [pc, #16]	; (8002280 <RCC_AHBPeriphClockCmd+0x18>)
 800226e:	695a      	ldr	r2, [r3, #20]
 8002270:	b109      	cbz	r1, 8002276 <RCC_AHBPeriphClockCmd+0xe>
 8002272:	4310      	orrs	r0, r2
 8002274:	e001      	b.n	800227a <RCC_AHBPeriphClockCmd+0x12>
 8002276:	ea22 0000 	bic.w	r0, r2, r0
 800227a:	6158      	str	r0, [r3, #20]
 800227c:	4770      	bx	lr
 800227e:	bf00      	nop
 8002280:	40021000 	.word	0x40021000

08002284 <RCC_APB2PeriphClockCmd>:
 8002284:	bf00      	nop
 8002286:	bf00      	nop
 8002288:	4b04      	ldr	r3, [pc, #16]	; (800229c <RCC_APB2PeriphClockCmd+0x18>)
 800228a:	699a      	ldr	r2, [r3, #24]
 800228c:	b109      	cbz	r1, 8002292 <RCC_APB2PeriphClockCmd+0xe>
 800228e:	4310      	orrs	r0, r2
 8002290:	e001      	b.n	8002296 <RCC_APB2PeriphClockCmd+0x12>
 8002292:	ea22 0000 	bic.w	r0, r2, r0
 8002296:	6198      	str	r0, [r3, #24]
 8002298:	4770      	bx	lr
 800229a:	bf00      	nop
 800229c:	40021000 	.word	0x40021000

080022a0 <RCC_APB1PeriphClockCmd>:
 80022a0:	bf00      	nop
 80022a2:	bf00      	nop
 80022a4:	4b04      	ldr	r3, [pc, #16]	; (80022b8 <RCC_APB1PeriphClockCmd+0x18>)
 80022a6:	69da      	ldr	r2, [r3, #28]
 80022a8:	b109      	cbz	r1, 80022ae <RCC_APB1PeriphClockCmd+0xe>
 80022aa:	4310      	orrs	r0, r2
 80022ac:	e001      	b.n	80022b2 <RCC_APB1PeriphClockCmd+0x12>
 80022ae:	ea22 0000 	bic.w	r0, r2, r0
 80022b2:	61d8      	str	r0, [r3, #28]
 80022b4:	4770      	bx	lr
 80022b6:	bf00      	nop
 80022b8:	40021000 	.word	0x40021000

080022bc <TIM_TimeBaseInit>:
 80022bc:	bf00      	nop
 80022be:	bf00      	nop
 80022c0:	bf00      	nop
 80022c2:	4a24      	ldr	r2, [pc, #144]	; (8002354 <TIM_TimeBaseInit+0x98>)
 80022c4:	8803      	ldrh	r3, [r0, #0]
 80022c6:	4290      	cmp	r0, r2
 80022c8:	b29b      	uxth	r3, r3
 80022ca:	d012      	beq.n	80022f2 <TIM_TimeBaseInit+0x36>
 80022cc:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80022d0:	4290      	cmp	r0, r2
 80022d2:	d00e      	beq.n	80022f2 <TIM_TimeBaseInit+0x36>
 80022d4:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80022d8:	d00b      	beq.n	80022f2 <TIM_TimeBaseInit+0x36>
 80022da:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80022de:	4290      	cmp	r0, r2
 80022e0:	d007      	beq.n	80022f2 <TIM_TimeBaseInit+0x36>
 80022e2:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80022e6:	4290      	cmp	r0, r2
 80022e8:	d003      	beq.n	80022f2 <TIM_TimeBaseInit+0x36>
 80022ea:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80022ee:	4290      	cmp	r0, r2
 80022f0:	d103      	bne.n	80022fa <TIM_TimeBaseInit+0x3e>
 80022f2:	884a      	ldrh	r2, [r1, #2]
 80022f4:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80022f8:	4313      	orrs	r3, r2
 80022fa:	4a17      	ldr	r2, [pc, #92]	; (8002358 <TIM_TimeBaseInit+0x9c>)
 80022fc:	4290      	cmp	r0, r2
 80022fe:	d008      	beq.n	8002312 <TIM_TimeBaseInit+0x56>
 8002300:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002304:	4290      	cmp	r0, r2
 8002306:	bf1f      	itttt	ne
 8002308:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 800230c:	890a      	ldrhne	r2, [r1, #8]
 800230e:	b29b      	uxthne	r3, r3
 8002310:	4313      	orrne	r3, r2
 8002312:	8003      	strh	r3, [r0, #0]
 8002314:	684b      	ldr	r3, [r1, #4]
 8002316:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002318:	880b      	ldrh	r3, [r1, #0]
 800231a:	8503      	strh	r3, [r0, #40]	; 0x28
 800231c:	4b0d      	ldr	r3, [pc, #52]	; (8002354 <TIM_TimeBaseInit+0x98>)
 800231e:	4298      	cmp	r0, r3
 8002320:	d013      	beq.n	800234a <TIM_TimeBaseInit+0x8e>
 8002322:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002326:	4298      	cmp	r0, r3
 8002328:	d00f      	beq.n	800234a <TIM_TimeBaseInit+0x8e>
 800232a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 800232e:	4298      	cmp	r0, r3
 8002330:	d00b      	beq.n	800234a <TIM_TimeBaseInit+0x8e>
 8002332:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002336:	4298      	cmp	r0, r3
 8002338:	d007      	beq.n	800234a <TIM_TimeBaseInit+0x8e>
 800233a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800233e:	4298      	cmp	r0, r3
 8002340:	d003      	beq.n	800234a <TIM_TimeBaseInit+0x8e>
 8002342:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002346:	4298      	cmp	r0, r3
 8002348:	d101      	bne.n	800234e <TIM_TimeBaseInit+0x92>
 800234a:	894b      	ldrh	r3, [r1, #10]
 800234c:	8603      	strh	r3, [r0, #48]	; 0x30
 800234e:	2301      	movs	r3, #1
 8002350:	6143      	str	r3, [r0, #20]
 8002352:	4770      	bx	lr
 8002354:	40012c00 	.word	0x40012c00
 8002358:	40001000 	.word	0x40001000

0800235c <TIM_Cmd>:
 800235c:	bf00      	nop
 800235e:	bf00      	nop
 8002360:	8803      	ldrh	r3, [r0, #0]
 8002362:	b119      	cbz	r1, 800236c <TIM_Cmd+0x10>
 8002364:	b29b      	uxth	r3, r3
 8002366:	f043 0301 	orr.w	r3, r3, #1
 800236a:	e003      	b.n	8002374 <TIM_Cmd+0x18>
 800236c:	f023 0301 	bic.w	r3, r3, #1
 8002370:	041b      	lsls	r3, r3, #16
 8002372:	0c1b      	lsrs	r3, r3, #16
 8002374:	8003      	strh	r3, [r0, #0]
 8002376:	4770      	bx	lr

08002378 <TIM_ClearITPendingBit>:
 8002378:	bf00      	nop
 800237a:	43c9      	mvns	r1, r1
 800237c:	b289      	uxth	r1, r1
 800237e:	6101      	str	r1, [r0, #16]
 8002380:	4770      	bx	lr
	...

08002384 <USART_Init>:
 8002384:	b530      	push	{r4, r5, lr}
 8002386:	4604      	mov	r4, r0
 8002388:	b099      	sub	sp, #100	; 0x64
 800238a:	460d      	mov	r5, r1
 800238c:	bf00      	nop
 800238e:	bf00      	nop
 8002390:	bf00      	nop
 8002392:	bf00      	nop
 8002394:	bf00      	nop
 8002396:	bf00      	nop
 8002398:	bf00      	nop
 800239a:	6803      	ldr	r3, [r0, #0]
 800239c:	f023 0301 	bic.w	r3, r3, #1
 80023a0:	6003      	str	r3, [r0, #0]
 80023a2:	6843      	ldr	r3, [r0, #4]
 80023a4:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80023a8:	688b      	ldr	r3, [r1, #8]
 80023aa:	68c9      	ldr	r1, [r1, #12]
 80023ac:	4313      	orrs	r3, r2
 80023ae:	6043      	str	r3, [r0, #4]
 80023b0:	686a      	ldr	r2, [r5, #4]
 80023b2:	6803      	ldr	r3, [r0, #0]
 80023b4:	4311      	orrs	r1, r2
 80023b6:	692a      	ldr	r2, [r5, #16]
 80023b8:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80023bc:	430a      	orrs	r2, r1
 80023be:	f023 030c 	bic.w	r3, r3, #12
 80023c2:	4313      	orrs	r3, r2
 80023c4:	6003      	str	r3, [r0, #0]
 80023c6:	6883      	ldr	r3, [r0, #8]
 80023c8:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80023cc:	696b      	ldr	r3, [r5, #20]
 80023ce:	4313      	orrs	r3, r2
 80023d0:	6083      	str	r3, [r0, #8]
 80023d2:	a801      	add	r0, sp, #4
 80023d4:	f7ff fdd2 	bl	8001f7c <RCC_GetClocksFreq>
 80023d8:	4b17      	ldr	r3, [pc, #92]	; (8002438 <USART_Init+0xb4>)
 80023da:	429c      	cmp	r4, r3
 80023dc:	d101      	bne.n	80023e2 <USART_Init+0x5e>
 80023de:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80023e0:	e00e      	b.n	8002400 <USART_Init+0x7c>
 80023e2:	4b16      	ldr	r3, [pc, #88]	; (800243c <USART_Init+0xb8>)
 80023e4:	429c      	cmp	r4, r3
 80023e6:	d101      	bne.n	80023ec <USART_Init+0x68>
 80023e8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80023ea:	e009      	b.n	8002400 <USART_Init+0x7c>
 80023ec:	4b14      	ldr	r3, [pc, #80]	; (8002440 <USART_Init+0xbc>)
 80023ee:	429c      	cmp	r4, r3
 80023f0:	d101      	bne.n	80023f6 <USART_Init+0x72>
 80023f2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80023f4:	e004      	b.n	8002400 <USART_Init+0x7c>
 80023f6:	4b13      	ldr	r3, [pc, #76]	; (8002444 <USART_Init+0xc0>)
 80023f8:	429c      	cmp	r4, r3
 80023fa:	bf0c      	ite	eq
 80023fc:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 80023fe:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002400:	6822      	ldr	r2, [r4, #0]
 8002402:	6829      	ldr	r1, [r5, #0]
 8002404:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002408:	bf18      	it	ne
 800240a:	005b      	lslne	r3, r3, #1
 800240c:	fbb3 f2f1 	udiv	r2, r3, r1
 8002410:	fb01 3312 	mls	r3, r1, r2, r3
 8002414:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002418:	6823      	ldr	r3, [r4, #0]
 800241a:	bf28      	it	cs
 800241c:	3201      	addcs	r2, #1
 800241e:	041b      	lsls	r3, r3, #16
 8002420:	bf41      	itttt	mi
 8002422:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002426:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 800242a:	4013      	andmi	r3, r2
 800242c:	ea41 0203 	orrmi.w	r2, r1, r3
 8002430:	b292      	uxth	r2, r2
 8002432:	81a2      	strh	r2, [r4, #12]
 8002434:	b019      	add	sp, #100	; 0x64
 8002436:	bd30      	pop	{r4, r5, pc}
 8002438:	40013800 	.word	0x40013800
 800243c:	40004400 	.word	0x40004400
 8002440:	40004800 	.word	0x40004800
 8002444:	40004c00 	.word	0x40004c00

08002448 <USART_Cmd>:
 8002448:	bf00      	nop
 800244a:	bf00      	nop
 800244c:	6803      	ldr	r3, [r0, #0]
 800244e:	b111      	cbz	r1, 8002456 <USART_Cmd+0xe>
 8002450:	f043 0301 	orr.w	r3, r3, #1
 8002454:	e001      	b.n	800245a <USART_Cmd+0x12>
 8002456:	f023 0301 	bic.w	r3, r3, #1
 800245a:	6003      	str	r3, [r0, #0]
 800245c:	4770      	bx	lr

0800245e <USART_ReceiveData>:
 800245e:	bf00      	nop
 8002460:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002462:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002466:	4770      	bx	lr

08002468 <USART_ITConfig>:
 8002468:	b510      	push	{r4, lr}
 800246a:	bf00      	nop
 800246c:	bf00      	nop
 800246e:	bf00      	nop
 8002470:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002474:	2301      	movs	r3, #1
 8002476:	b2c9      	uxtb	r1, r1
 8002478:	2c02      	cmp	r4, #2
 800247a:	fa03 f301 	lsl.w	r3, r3, r1
 800247e:	d101      	bne.n	8002484 <USART_ITConfig+0x1c>
 8002480:	3004      	adds	r0, #4
 8002482:	e002      	b.n	800248a <USART_ITConfig+0x22>
 8002484:	2c03      	cmp	r4, #3
 8002486:	bf08      	it	eq
 8002488:	3008      	addeq	r0, #8
 800248a:	b112      	cbz	r2, 8002492 <USART_ITConfig+0x2a>
 800248c:	6802      	ldr	r2, [r0, #0]
 800248e:	4313      	orrs	r3, r2
 8002490:	e002      	b.n	8002498 <USART_ITConfig+0x30>
 8002492:	6802      	ldr	r2, [r0, #0]
 8002494:	ea22 0303 	bic.w	r3, r2, r3
 8002498:	6003      	str	r3, [r0, #0]
 800249a:	bd10      	pop	{r4, pc}

0800249c <USART_GetITStatus>:
 800249c:	b510      	push	{r4, lr}
 800249e:	bf00      	nop
 80024a0:	bf00      	nop
 80024a2:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80024a6:	b2cc      	uxtb	r4, r1
 80024a8:	2301      	movs	r3, #1
 80024aa:	2a01      	cmp	r2, #1
 80024ac:	fa03 f304 	lsl.w	r3, r3, r4
 80024b0:	d101      	bne.n	80024b6 <USART_GetITStatus+0x1a>
 80024b2:	6802      	ldr	r2, [r0, #0]
 80024b4:	e003      	b.n	80024be <USART_GetITStatus+0x22>
 80024b6:	2a02      	cmp	r2, #2
 80024b8:	bf0c      	ite	eq
 80024ba:	6842      	ldreq	r2, [r0, #4]
 80024bc:	6882      	ldrne	r2, [r0, #8]
 80024be:	4013      	ands	r3, r2
 80024c0:	69c2      	ldr	r2, [r0, #28]
 80024c2:	b13b      	cbz	r3, 80024d4 <USART_GetITStatus+0x38>
 80024c4:	0c09      	lsrs	r1, r1, #16
 80024c6:	2301      	movs	r3, #1
 80024c8:	408b      	lsls	r3, r1
 80024ca:	4213      	tst	r3, r2
 80024cc:	bf14      	ite	ne
 80024ce:	2001      	movne	r0, #1
 80024d0:	2000      	moveq	r0, #0
 80024d2:	bd10      	pop	{r4, pc}
 80024d4:	4618      	mov	r0, r3
 80024d6:	bd10      	pop	{r4, pc}

080024d8 <USART_ClearITPendingBit>:
 80024d8:	bf00      	nop
 80024da:	bf00      	nop
 80024dc:	2301      	movs	r3, #1
 80024de:	0c09      	lsrs	r1, r1, #16
 80024e0:	408b      	lsls	r3, r1
 80024e2:	6203      	str	r3, [r0, #32]
 80024e4:	4770      	bx	lr
	...

080024e8 <SystemInit>:
 80024e8:	4a39      	ldr	r2, [pc, #228]	; (80025d0 <SystemInit+0xe8>)
 80024ea:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80024ee:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80024f2:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80024f6:	4b37      	ldr	r3, [pc, #220]	; (80025d4 <SystemInit+0xec>)
 80024f8:	681a      	ldr	r2, [r3, #0]
 80024fa:	f042 0201 	orr.w	r2, r2, #1
 80024fe:	601a      	str	r2, [r3, #0]
 8002500:	6859      	ldr	r1, [r3, #4]
 8002502:	4a35      	ldr	r2, [pc, #212]	; (80025d8 <SystemInit+0xf0>)
 8002504:	400a      	ands	r2, r1
 8002506:	605a      	str	r2, [r3, #4]
 8002508:	681a      	ldr	r2, [r3, #0]
 800250a:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800250e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002512:	601a      	str	r2, [r3, #0]
 8002514:	681a      	ldr	r2, [r3, #0]
 8002516:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800251a:	601a      	str	r2, [r3, #0]
 800251c:	685a      	ldr	r2, [r3, #4]
 800251e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002522:	605a      	str	r2, [r3, #4]
 8002524:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002526:	f022 020f 	bic.w	r2, r2, #15
 800252a:	62da      	str	r2, [r3, #44]	; 0x2c
 800252c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800252e:	4a2b      	ldr	r2, [pc, #172]	; (80025dc <SystemInit+0xf4>)
 8002530:	b082      	sub	sp, #8
 8002532:	400a      	ands	r2, r1
 8002534:	631a      	str	r2, [r3, #48]	; 0x30
 8002536:	2200      	movs	r2, #0
 8002538:	609a      	str	r2, [r3, #8]
 800253a:	9200      	str	r2, [sp, #0]
 800253c:	9201      	str	r2, [sp, #4]
 800253e:	681a      	ldr	r2, [r3, #0]
 8002540:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002544:	601a      	str	r2, [r3, #0]
 8002546:	681a      	ldr	r2, [r3, #0]
 8002548:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 800254c:	9201      	str	r2, [sp, #4]
 800254e:	9a00      	ldr	r2, [sp, #0]
 8002550:	3201      	adds	r2, #1
 8002552:	9200      	str	r2, [sp, #0]
 8002554:	9a01      	ldr	r2, [sp, #4]
 8002556:	b91a      	cbnz	r2, 8002560 <SystemInit+0x78>
 8002558:	9a00      	ldr	r2, [sp, #0]
 800255a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800255e:	d1f2      	bne.n	8002546 <SystemInit+0x5e>
 8002560:	681a      	ldr	r2, [r3, #0]
 8002562:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002566:	bf18      	it	ne
 8002568:	2201      	movne	r2, #1
 800256a:	9201      	str	r2, [sp, #4]
 800256c:	9a01      	ldr	r2, [sp, #4]
 800256e:	2a01      	cmp	r2, #1
 8002570:	d005      	beq.n	800257e <SystemInit+0x96>
 8002572:	4b17      	ldr	r3, [pc, #92]	; (80025d0 <SystemInit+0xe8>)
 8002574:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002578:	609a      	str	r2, [r3, #8]
 800257a:	b002      	add	sp, #8
 800257c:	4770      	bx	lr
 800257e:	4a18      	ldr	r2, [pc, #96]	; (80025e0 <SystemInit+0xf8>)
 8002580:	2112      	movs	r1, #18
 8002582:	6011      	str	r1, [r2, #0]
 8002584:	685a      	ldr	r2, [r3, #4]
 8002586:	605a      	str	r2, [r3, #4]
 8002588:	685a      	ldr	r2, [r3, #4]
 800258a:	605a      	str	r2, [r3, #4]
 800258c:	685a      	ldr	r2, [r3, #4]
 800258e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002592:	605a      	str	r2, [r3, #4]
 8002594:	685a      	ldr	r2, [r3, #4]
 8002596:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800259a:	605a      	str	r2, [r3, #4]
 800259c:	685a      	ldr	r2, [r3, #4]
 800259e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80025a2:	605a      	str	r2, [r3, #4]
 80025a4:	681a      	ldr	r2, [r3, #0]
 80025a6:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80025aa:	601a      	str	r2, [r3, #0]
 80025ac:	6819      	ldr	r1, [r3, #0]
 80025ae:	4a09      	ldr	r2, [pc, #36]	; (80025d4 <SystemInit+0xec>)
 80025b0:	0189      	lsls	r1, r1, #6
 80025b2:	d5fb      	bpl.n	80025ac <SystemInit+0xc4>
 80025b4:	6851      	ldr	r1, [r2, #4]
 80025b6:	f021 0103 	bic.w	r1, r1, #3
 80025ba:	6051      	str	r1, [r2, #4]
 80025bc:	6851      	ldr	r1, [r2, #4]
 80025be:	f041 0102 	orr.w	r1, r1, #2
 80025c2:	6051      	str	r1, [r2, #4]
 80025c4:	685a      	ldr	r2, [r3, #4]
 80025c6:	f002 020c 	and.w	r2, r2, #12
 80025ca:	2a08      	cmp	r2, #8
 80025cc:	d1fa      	bne.n	80025c4 <SystemInit+0xdc>
 80025ce:	e7d0      	b.n	8002572 <SystemInit+0x8a>
 80025d0:	e000ed00 	.word	0xe000ed00
 80025d4:	40021000 	.word	0x40021000
 80025d8:	f87fc00c 	.word	0xf87fc00c
 80025dc:	ff00fccc 	.word	0xff00fccc
 80025e0:	40022000 	.word	0x40022000

080025e4 <core_yield>:
 80025e4:	bf00      	nop
 80025e6:	4770      	bx	lr

080025e8 <sytem_clock_init>:
 80025e8:	f7ff bf7e 	b.w	80024e8 <SystemInit>

080025ec <NVIC_Init>:
 80025ec:	b510      	push	{r4, lr}
 80025ee:	bf00      	nop
 80025f0:	bf00      	nop
 80025f2:	bf00      	nop
 80025f4:	78c2      	ldrb	r2, [r0, #3]
 80025f6:	7803      	ldrb	r3, [r0, #0]
 80025f8:	b312      	cbz	r2, 8002640 <NVIC_Init+0x54>
 80025fa:	4a17      	ldr	r2, [pc, #92]	; (8002658 <NVIC_Init+0x6c>)
 80025fc:	68d1      	ldr	r1, [r2, #12]
 80025fe:	7842      	ldrb	r2, [r0, #1]
 8002600:	43c9      	mvns	r1, r1
 8002602:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002606:	f1c1 0404 	rsb	r4, r1, #4
 800260a:	b2e4      	uxtb	r4, r4
 800260c:	40a2      	lsls	r2, r4
 800260e:	b2d4      	uxtb	r4, r2
 8002610:	220f      	movs	r2, #15
 8002612:	410a      	asrs	r2, r1
 8002614:	7881      	ldrb	r1, [r0, #2]
 8002616:	400a      	ands	r2, r1
 8002618:	4322      	orrs	r2, r4
 800261a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800261e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002622:	0112      	lsls	r2, r2, #4
 8002624:	b2d2      	uxtb	r2, r2
 8002626:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800262a:	7803      	ldrb	r3, [r0, #0]
 800262c:	2201      	movs	r2, #1
 800262e:	0959      	lsrs	r1, r3, #5
 8002630:	f003 031f 	and.w	r3, r3, #31
 8002634:	fa02 f303 	lsl.w	r3, r2, r3
 8002638:	4a08      	ldr	r2, [pc, #32]	; (800265c <NVIC_Init+0x70>)
 800263a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800263e:	bd10      	pop	{r4, pc}
 8002640:	095a      	lsrs	r2, r3, #5
 8002642:	2101      	movs	r1, #1
 8002644:	f003 031f 	and.w	r3, r3, #31
 8002648:	4099      	lsls	r1, r3
 800264a:	f102 0320 	add.w	r3, r2, #32
 800264e:	4a03      	ldr	r2, [pc, #12]	; (800265c <NVIC_Init+0x70>)
 8002650:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002654:	bd10      	pop	{r4, pc}
 8002656:	bf00      	nop
 8002658:	e000ed00 	.word	0xe000ed00
 800265c:	e000e100 	.word	0xe000e100

08002660 <EXTI_ClearITPendingBit>:
 8002660:	f020 011f 	bic.w	r1, r0, #31
 8002664:	2301      	movs	r3, #1
 8002666:	f000 001f 	and.w	r0, r0, #31
 800266a:	4a02      	ldr	r2, [pc, #8]	; (8002674 <EXTI_ClearITPendingBit+0x14>)
 800266c:	4083      	lsls	r3, r0
 800266e:	508b      	str	r3, [r1, r2]
 8002670:	4770      	bx	lr
 8002672:	bf00      	nop
 8002674:	40010414 	.word	0x40010414

08002678 <GPIO_Init>:
 8002678:	b5f0      	push	{r4, r5, r6, r7, lr}
 800267a:	bf00      	nop
 800267c:	bf00      	nop
 800267e:	bf00      	nop
 8002680:	bf00      	nop
 8002682:	2300      	movs	r3, #0
 8002684:	680e      	ldr	r6, [r1, #0]
 8002686:	461c      	mov	r4, r3
 8002688:	2501      	movs	r5, #1
 800268a:	40a5      	lsls	r5, r4
 800268c:	ea05 0e06 	and.w	lr, r5, r6
 8002690:	45ae      	cmp	lr, r5
 8002692:	d12d      	bne.n	80026f0 <GPIO_Init+0x78>
 8002694:	790f      	ldrb	r7, [r1, #4]
 8002696:	1e7a      	subs	r2, r7, #1
 8002698:	2a01      	cmp	r2, #1
 800269a:	d817      	bhi.n	80026cc <GPIO_Init+0x54>
 800269c:	bf00      	nop
 800269e:	2203      	movs	r2, #3
 80026a0:	6885      	ldr	r5, [r0, #8]
 80026a2:	409a      	lsls	r2, r3
 80026a4:	ea25 0202 	bic.w	r2, r5, r2
 80026a8:	6082      	str	r2, [r0, #8]
 80026aa:	794d      	ldrb	r5, [r1, #5]
 80026ac:	6882      	ldr	r2, [r0, #8]
 80026ae:	409d      	lsls	r5, r3
 80026b0:	4315      	orrs	r5, r2
 80026b2:	6085      	str	r5, [r0, #8]
 80026b4:	bf00      	nop
 80026b6:	8882      	ldrh	r2, [r0, #4]
 80026b8:	b292      	uxth	r2, r2
 80026ba:	ea22 020e 	bic.w	r2, r2, lr
 80026be:	8082      	strh	r2, [r0, #4]
 80026c0:	798a      	ldrb	r2, [r1, #6]
 80026c2:	8885      	ldrh	r5, [r0, #4]
 80026c4:	40a2      	lsls	r2, r4
 80026c6:	432a      	orrs	r2, r5
 80026c8:	b292      	uxth	r2, r2
 80026ca:	8082      	strh	r2, [r0, #4]
 80026cc:	2203      	movs	r2, #3
 80026ce:	6805      	ldr	r5, [r0, #0]
 80026d0:	409a      	lsls	r2, r3
 80026d2:	43d2      	mvns	r2, r2
 80026d4:	4015      	ands	r5, r2
 80026d6:	6005      	str	r5, [r0, #0]
 80026d8:	6805      	ldr	r5, [r0, #0]
 80026da:	409f      	lsls	r7, r3
 80026dc:	432f      	orrs	r7, r5
 80026de:	6007      	str	r7, [r0, #0]
 80026e0:	68c7      	ldr	r7, [r0, #12]
 80026e2:	4017      	ands	r7, r2
 80026e4:	79ca      	ldrb	r2, [r1, #7]
 80026e6:	fa02 f503 	lsl.w	r5, r2, r3
 80026ea:	ea47 0205 	orr.w	r2, r7, r5
 80026ee:	60c2      	str	r2, [r0, #12]
 80026f0:	3401      	adds	r4, #1
 80026f2:	2c10      	cmp	r4, #16
 80026f4:	f103 0302 	add.w	r3, r3, #2
 80026f8:	d1c6      	bne.n	8002688 <GPIO_Init+0x10>
 80026fa:	bdf0      	pop	{r4, r5, r6, r7, pc}

080026fc <GPIO_SetBits>:
 80026fc:	bf00      	nop
 80026fe:	bf00      	nop
 8002700:	6181      	str	r1, [r0, #24]
 8002702:	4770      	bx	lr

08002704 <GPIO_PinAFConfig>:
 8002704:	b510      	push	{r4, lr}
 8002706:	bf00      	nop
 8002708:	bf00      	nop
 800270a:	bf00      	nop
 800270c:	f001 0307 	and.w	r3, r1, #7
 8002710:	08c9      	lsrs	r1, r1, #3
 8002712:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002716:	009b      	lsls	r3, r3, #2
 8002718:	6a04      	ldr	r4, [r0, #32]
 800271a:	210f      	movs	r1, #15
 800271c:	4099      	lsls	r1, r3
 800271e:	ea24 0101 	bic.w	r1, r4, r1
 8002722:	6201      	str	r1, [r0, #32]
 8002724:	6a01      	ldr	r1, [r0, #32]
 8002726:	409a      	lsls	r2, r3
 8002728:	430a      	orrs	r2, r1
 800272a:	6202      	str	r2, [r0, #32]
 800272c:	bd10      	pop	{r4, pc}

0800272e <Default_Handler>:
 800272e:	4668      	mov	r0, sp
 8002730:	f020 0107 	bic.w	r1, r0, #7
 8002734:	468d      	mov	sp, r1
 8002736:	b501      	push	{r0, lr}
 8002738:	bf00      	nop
 800273a:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 800273e:	4685      	mov	sp, r0
 8002740:	4770      	bx	lr

08002742 <HardFault_Handler>:
 8002742:	bf00      	nop
 8002744:	e7fd      	b.n	8002742 <HardFault_Handler>
	...

08002748 <_reset_init>:
 8002748:	490e      	ldr	r1, [pc, #56]	; (8002784 <_reset_init+0x3c>)
 800274a:	4b0f      	ldr	r3, [pc, #60]	; (8002788 <_reset_init+0x40>)
 800274c:	1a5b      	subs	r3, r3, r1
 800274e:	109b      	asrs	r3, r3, #2
 8002750:	2200      	movs	r2, #0
 8002752:	429a      	cmp	r2, r3
 8002754:	d006      	beq.n	8002764 <_reset_init+0x1c>
 8002756:	480d      	ldr	r0, [pc, #52]	; (800278c <_reset_init+0x44>)
 8002758:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 800275c:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002760:	3201      	adds	r2, #1
 8002762:	e7f6      	b.n	8002752 <_reset_init+0xa>
 8002764:	4a0a      	ldr	r2, [pc, #40]	; (8002790 <_reset_init+0x48>)
 8002766:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800276a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800276e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002772:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002776:	6853      	ldr	r3, [r2, #4]
 8002778:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 800277c:	6053      	str	r3, [r2, #4]
 800277e:	f7ff bb3f 	b.w	8001e00 <main>
 8002782:	bf00      	nop
 8002784:	20000000 	.word	0x20000000
 8002788:	20000030 	.word	0x20000030
 800278c:	08002908 	.word	0x08002908
 8002790:	e000ed00 	.word	0xe000ed00

08002794 <scheduler>:
 8002794:	b570      	push	{r4, r5, r6, lr}
 8002796:	2200      	movs	r2, #0
 8002798:	4611      	mov	r1, r2
 800279a:	4b15      	ldr	r3, [pc, #84]	; (80027f0 <scheduler+0x5c>)
 800279c:	200c      	movs	r0, #12
 800279e:	fb00 f401 	mul.w	r4, r0, r1
 80027a2:	191e      	adds	r6, r3, r4
 80027a4:	6875      	ldr	r5, [r6, #4]
 80027a6:	f015 0f02 	tst.w	r5, #2
 80027aa:	461d      	mov	r5, r3
 80027ac:	d10a      	bne.n	80027c4 <scheduler+0x30>
 80027ae:	6876      	ldr	r6, [r6, #4]
 80027b0:	07f6      	lsls	r6, r6, #31
 80027b2:	d507      	bpl.n	80027c4 <scheduler+0x30>
 80027b4:	4350      	muls	r0, r2
 80027b6:	5b1c      	ldrh	r4, [r3, r4]
 80027b8:	5a18      	ldrh	r0, [r3, r0]
 80027ba:	b2a4      	uxth	r4, r4
 80027bc:	b280      	uxth	r0, r0
 80027be:	4284      	cmp	r4, r0
 80027c0:	bf38      	it	cc
 80027c2:	460a      	movcc	r2, r1
 80027c4:	200c      	movs	r0, #12
 80027c6:	4348      	muls	r0, r1
 80027c8:	5a1c      	ldrh	r4, [r3, r0]
 80027ca:	b2a4      	uxth	r4, r4
 80027cc:	b11c      	cbz	r4, 80027d6 <scheduler+0x42>
 80027ce:	5a1c      	ldrh	r4, [r3, r0]
 80027d0:	3c01      	subs	r4, #1
 80027d2:	b2a4      	uxth	r4, r4
 80027d4:	521c      	strh	r4, [r3, r0]
 80027d6:	3101      	adds	r1, #1
 80027d8:	2906      	cmp	r1, #6
 80027da:	d1de      	bne.n	800279a <scheduler+0x6>
 80027dc:	230c      	movs	r3, #12
 80027de:	4353      	muls	r3, r2
 80027e0:	18e9      	adds	r1, r5, r3
 80027e2:	8849      	ldrh	r1, [r1, #2]
 80027e4:	b289      	uxth	r1, r1
 80027e6:	52e9      	strh	r1, [r5, r3]
 80027e8:	4b02      	ldr	r3, [pc, #8]	; (80027f4 <scheduler+0x60>)
 80027ea:	601a      	str	r2, [r3, #0]
 80027ec:	bd70      	pop	{r4, r5, r6, pc}
 80027ee:	bf00      	nop
 80027f0:	20000468 	.word	0x20000468
 80027f4:	200004b0 	.word	0x200004b0

080027f8 <SysTick_Handler>:
 80027f8:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80027fc:	f3ef 8308 	mrs	r3, MSP
 8002800:	4c0d      	ldr	r4, [pc, #52]	; (8002838 <SysTick_Handler+0x40>)
 8002802:	4d0e      	ldr	r5, [pc, #56]	; (800283c <SysTick_Handler+0x44>)
 8002804:	6822      	ldr	r2, [r4, #0]
 8002806:	3201      	adds	r2, #1
 8002808:	bf1d      	ittte	ne
 800280a:	6822      	ldrne	r2, [r4, #0]
 800280c:	210c      	movne	r1, #12
 800280e:	fb01 5202 	mlane	r2, r1, r2, r5
 8002812:	2300      	moveq	r3, #0
 8002814:	bf14      	ite	ne
 8002816:	6093      	strne	r3, [r2, #8]
 8002818:	6023      	streq	r3, [r4, #0]
 800281a:	f7ff ffbb 	bl	8002794 <scheduler>
 800281e:	6822      	ldr	r2, [r4, #0]
 8002820:	230c      	movs	r3, #12
 8002822:	fb03 5302 	mla	r3, r3, r2, r5
 8002826:	689a      	ldr	r2, [r3, #8]
 8002828:	f06f 0306 	mvn.w	r3, #6
 800282c:	469e      	mov	lr, r3
 800282e:	f382 8808 	msr	MSP, r2
 8002832:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002836:	4770      	bx	lr
 8002838:	200004b0 	.word	0x200004b0
 800283c:	20000468 	.word	0x20000468

08002840 <_init>:
 8002840:	e1a0c00d 	mov	ip, sp
 8002844:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002848:	e24cb004 	sub	fp, ip, #4
 800284c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002850:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002854:	e12fff1e 	bx	lr

08002858 <_fini>:
 8002858:	e1a0c00d 	mov	ip, sp
 800285c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002860:	e24cb004 	sub	fp, ip, #4
 8002864:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002868:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800286c:	e12fff1e 	bx	lr
 8002870:	61646f6b 	.word	0x61646f6b
 8002874:	6920616d 	.word	0x6920616d
 8002878:	2074696e 	.word	0x2074696e
 800287c:	25206925 	.word	0x25206925
 8002880:	203a2069 	.word	0x203a2069
 8002884:	4f5b2000 	.word	0x4f5b2000
 8002888:	000a5d4b 	.word	0x000a5d4b
 800288c:	41465b20 	.word	0x41465b20
 8002890:	44454c49 	.word	0x44454c49
 8002894:	000a0a5d 	.word	0x000a0a5d
 8002898:	74737973 	.word	0x74737973
 800289c:	74206d65 	.word	0x74206d65
 80028a0:	20656d69 	.word	0x20656d69
 80028a4:	5b207525 	.word	0x5b207525
 80028a8:	0a5d736d 	.word	0x0a5d736d
 80028ac:	20692500 	.word	0x20692500
 80028b0:	0a206925 	.word	0x0a206925
 80028b4:	00          	.byte	0x00
 80028b5:	74          	.byte	0x74
 80028b6:	7365      	.short	0x7365
 80028b8:	676e6974 	.word	0x676e6974
 80028bc:	6d756e20 	.word	0x6d756e20
 80028c0:	20726562 	.word	0x20726562
 80028c4:	6e697270 	.word	0x6e697270
 80028c8:	75252074 	.word	0x75252074
 80028cc:	20752520 	.word	0x20752520
 80028d0:	0a3a7525 	.word	0x0a3a7525
 80028d4:	6f6c6600 	.word	0x6f6c6600
 80028d8:	6e207461 	.word	0x6e207461
 80028dc:	65626d75 	.word	0x65626d75
 80028e0:	66252072 	.word	0x66252072
 80028e4:	25000a20 	.word	0x25000a20
 80028e8:	66252066 	.word	0x66252066
 80028ec:	20662520 	.word	0x20662520
 80028f0:	25206625 	.word	0x25206625
 80028f4:	66252066 	.word	0x66252066
 80028f8:	6469000a 	.word	0x6469000a
 80028fc:	2520656c 	.word	0x2520656c
 8002900:	00000a75 	.word	0x00000a75

08002904 <__EH_FRAME_BEGIN__>:
 8002904:	00000000                                ....
