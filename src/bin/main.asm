
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 fa4a 	bl	8001624 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 fadd 	bl	800175c <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 fb9c 	bl	80008ec <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 80001c4:	f000 fe58 	bl	8000e78 <_ZN6CMotor10motor_initEv>
 80001c8:	2800      	cmp	r0, #0
 80001ca:	da03      	bge.n	80001d4 <_ZN7CKodama5init_Ev+0x4c>
 80001cc:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001d0:	3850      	subs	r0, #80	; 0x50
 80001d2:	bd10      	pop	{r4, pc}
 80001d4:	4620      	mov	r0, r4
 80001d6:	f000 fe63 	bl	8000ea0 <_ZN8CSensors12sensors_initEv>
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
 8000202:	f001 fbeb 	bl	80019dc <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f001 fbe6 	bl	80019dc <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f001 fbe1 	bl	80019dc <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002e44 	.word	0x08002e44
 8000228:	08002e59 	.word	0x08002e59
 800022c:	08002e60 	.word	0x08002e60

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	b510      	push	{r4, lr}
 8000232:	2108      	movs	r1, #8
 8000234:	4604      	mov	r4, r0
 8000236:	f001 fa55 	bl	80016e4 <_ZN5CGPIO8gpio_offEm>
 800023a:	f104 00c4 	add.w	r0, r4, #196	; 0xc4
 800023e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000242:	f000 bd7d 	b.w	8000d40 <_ZN6CMotor11motor_sleepEv>

08000246 <_ZN7CKodama6wakeupEv>:
 8000246:	b510      	push	{r4, lr}
 8000248:	2108      	movs	r1, #8
 800024a:	4604      	mov	r4, r0
 800024c:	34c4      	adds	r4, #196	; 0xc4
 800024e:	f001 fa3b 	bl	80016c8 <_ZN5CGPIO7gpio_onEm>
 8000252:	2100      	movs	r1, #0
 8000254:	4620      	mov	r0, r4
 8000256:	460a      	mov	r2, r1
 8000258:	f000 fe08 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 800025c:	4620      	mov	r0, r4
 800025e:	2101      	movs	r1, #1
 8000260:	2200      	movs	r2, #0
 8000262:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000266:	f000 be01 	b.w	8000e6c <_ZN6CMotor9set_motorEml>

0800026a <_ZN7CKodama6set_dtEl>:
 800026a:	f8c0 10cc 	str.w	r1, [r0, #204]	; 0xcc
 800026e:	4770      	bx	lr

08000270 <_ZN9CUniqueID13get_unique_idEv>:
 8000270:	4b06      	ldr	r3, [pc, #24]	; (800028c <_ZN9CUniqueID13get_unique_idEv+0x1c>)
 8000272:	4a07      	ldr	r2, [pc, #28]	; (8000290 <_ZN9CUniqueID13get_unique_idEv+0x20>)
 8000274:	6818      	ldr	r0, [r3, #0]
 8000276:	3304      	adds	r3, #4
 8000278:	681b      	ldr	r3, [r3, #0]
 800027a:	4403      	add	r3, r0
 800027c:	eb03 4300 	add.w	r3, r3, r0, lsl #16
 8000280:	6810      	ldr	r0, [r2, #0]
 8000282:	4418      	add	r0, r3
 8000284:	eb00 4003 	add.w	r0, r0, r3, lsl #16
 8000288:	4770      	bx	lr
 800028a:	bf00      	nop
 800028c:	1ffff7ac 	.word	0x1ffff7ac
 8000290:	1ffff7b4 	.word	0x1ffff7b4

08000294 <_ZN13CLinePositionC1Ev>:
 8000294:	2200      	movs	r2, #0
 8000296:	6082      	str	r2, [r0, #8]
 8000298:	60c2      	str	r2, [r0, #12]
 800029a:	6102      	str	r2, [r0, #16]
 800029c:	6142      	str	r2, [r0, #20]
 800029e:	6042      	str	r2, [r0, #4]
 80002a0:	2200      	movs	r2, #0
 80002a2:	7002      	strb	r2, [r0, #0]
 80002a4:	4770      	bx	lr
	...

080002a8 <_ZN13CLinePosition7processEP10sRGBResult>:
 80002a8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80002ac:	2300      	movs	r3, #0
 80002ae:	f101 0816 	add.w	r8, r1, #22
 80002b2:	ed2d 8b02 	vpush	{d8}
 80002b6:	460d      	mov	r5, r1
 80002b8:	4604      	mov	r4, r0
 80002ba:	7003      	strb	r3, [r0, #0]
 80002bc:	4641      	mov	r1, r8
 80002be:	461a      	mov	r2, r3
 80002c0:	f103 000c 	add.w	r0, r3, #12
 80002c4:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 80002c8:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 80002cc:	4286      	cmp	r6, r0
 80002ce:	bfb8      	it	lt
 80002d0:	4613      	movlt	r3, r2
 80002d2:	3201      	adds	r2, #1
 80002d4:	2a04      	cmp	r2, #4
 80002d6:	d1f3      	bne.n	80002c0 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 80002d8:	330c      	adds	r3, #12
 80002da:	eddf 7a3b 	vldr	s15, [pc, #236]	; 80003c8 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 80002de:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 80002e2:	ee07 3a10 	vmov	s14, r3
 80002e6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80002ea:	eeb0 8a67 	vmov.f32	s16, s15
 80002ee:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80002f2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002f6:	d563      	bpl.n	80003c0 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 80002f8:	f104 0608 	add.w	r6, r4, #8
 80002fc:	eddf 8a33 	vldr	s17, [pc, #204]	; 80003cc <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8000300:	f104 0918 	add.w	r9, r4, #24
 8000304:	4637      	mov	r7, r6
 8000306:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 800030a:	4831      	ldr	r0, [pc, #196]	; (80003d0 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 800030c:	425b      	negs	r3, r3
 800030e:	ee00 3a10 	vmov	s0, r3
 8000312:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 8000316:	eca7 0a01 	vstmia	r7!, {s0}
 800031a:	f000 f8ba 	bl	8000492 <_ZN5CMath3absEf>
 800031e:	eef4 8ac0 	vcmpe.f32	s17, s0
 8000322:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000326:	d506      	bpl.n	8000336 <_ZN13CLinePosition7processEP10sRGBResult+0x8e>
 8000328:	4829      	ldr	r0, [pc, #164]	; (80003d0 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 800032a:	ed17 0a01 	vldr	s0, [r7, #-4]
 800032e:	f000 f8b0 	bl	8000492 <_ZN5CMath3absEf>
 8000332:	eef0 8a40 	vmov.f32	s17, s0
 8000336:	454f      	cmp	r7, r9
 8000338:	d1e5      	bne.n	8000306 <_ZN13CLinePosition7processEP10sRGBResult+0x5e>
 800033a:	edd6 7a00 	vldr	s15, [r6]
 800033e:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 8000342:	ece6 7a01 	vstmia	r6!, {s15}
 8000346:	454e      	cmp	r6, r9
 8000348:	d1f7      	bne.n	800033a <_ZN13CLinePosition7processEP10sRGBResult+0x92>
 800034a:	2301      	movs	r3, #1
 800034c:	7023      	strb	r3, [r4, #0]
 800034e:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 8000352:	eddf 7a1d 	vldr	s15, [pc, #116]	; 80003c8 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 8000356:	ee07 3a10 	vmov	s14, r3
 800035a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800035e:	eeb4 7ac8 	vcmpe.f32	s14, s16
 8000362:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000366:	d501      	bpl.n	800036c <_ZN13CLinePosition7processEP10sRGBResult+0xc4>
 8000368:	4b1a      	ldr	r3, [pc, #104]	; (80003d4 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 800036a:	e028      	b.n	80003be <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 800036c:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 8000370:	ee07 3a10 	vmov	s14, r3
 8000374:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000378:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800037c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000380:	d502      	bpl.n	8000388 <_ZN13CLinePosition7processEP10sRGBResult+0xe0>
 8000382:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000386:	e01a      	b.n	80003be <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8000388:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 800038c:	ee07 3a10 	vmov	s14, r3
 8000390:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000394:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000398:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800039c:	d502      	bpl.n	80003a4 <_ZN13CLinePosition7processEP10sRGBResult+0xfc>
 800039e:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 80003a2:	e00c      	b.n	80003be <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 80003a4:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 80003a8:	ee07 3a10 	vmov	s14, r3
 80003ac:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80003b0:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80003b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003b8:	d502      	bpl.n	80003c0 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 80003ba:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 80003be:	6063      	str	r3, [r4, #4]
 80003c0:	ecbd 8b02 	vpop	{d8}
 80003c4:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80003c8:	c2a00000 	.word	0xc2a00000
 80003cc:	38d1b717 	.word	0x38d1b717
 80003d0:	20000108 	.word	0x20000108
 80003d4:	bf800000 	.word	0xbf800000

080003d8 <_ZN13CLinePosition7on_lineEv>:
 80003d8:	7800      	ldrb	r0, [r0, #0]
 80003da:	4770      	bx	lr

080003dc <_ZN13CLinePosition17get_line_positionEv>:
 80003dc:	ed90 0a01 	vldr	s0, [r0, #4]
 80003e0:	4770      	bx	lr

080003e2 <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>:
 80003e2:	6883      	ldr	r3, [r0, #8]
 80003e4:	600b      	str	r3, [r1, #0]
 80003e6:	68c3      	ldr	r3, [r0, #12]
 80003e8:	604b      	str	r3, [r1, #4]
 80003ea:	6903      	ldr	r3, [r0, #16]
 80003ec:	608b      	str	r3, [r1, #8]
 80003ee:	6943      	ldr	r3, [r0, #20]
 80003f0:	60cb      	str	r3, [r1, #12]
 80003f2:	4770      	bx	lr

080003f4 <_ZN4CPID4initEffff>:
 80003f4:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
 80003f8:	ee70 0a20 	vadd.f32	s1, s0, s1
 80003fc:	ee91 0a67 	vfnma.f32	s0, s2, s15
 8000400:	2300      	movs	r3, #0
 8000402:	6003      	str	r3, [r0, #0]
 8000404:	ee70 0a81 	vadd.f32	s1, s1, s2
 8000408:	6043      	str	r3, [r0, #4]
 800040a:	6083      	str	r3, [r0, #8]
 800040c:	edc0 0a03 	vstr	s1, [r0, #12]
 8000410:	ed80 0a04 	vstr	s0, [r0, #16]
 8000414:	ed80 1a05 	vstr	s2, [r0, #20]
 8000418:	6183      	str	r3, [r0, #24]
 800041a:	edc0 1a07 	vstr	s3, [r0, #28]
 800041e:	4770      	bx	lr

08000420 <_ZN4CPIDC1Effff>:
 8000420:	b510      	push	{r4, lr}
 8000422:	4604      	mov	r4, r0
 8000424:	f7ff ffe6 	bl	80003f4 <_ZN4CPID4initEffff>
 8000428:	4620      	mov	r0, r4
 800042a:	bd10      	pop	{r4, pc}

0800042c <_ZN4CPID7processEf>:
 800042c:	edd0 7a00 	vldr	s15, [r0]
 8000430:	edd0 6a04 	vldr	s13, [r0, #16]
 8000434:	ed90 7a01 	vldr	s14, [r0, #4]
 8000438:	edc0 7a01 	vstr	s15, [r0, #4]
 800043c:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8000440:	edd0 6a03 	vldr	s13, [r0, #12]
 8000444:	ed80 7a02 	vstr	s14, [r0, #8]
 8000448:	eee6 7a80 	vfma.f32	s15, s13, s0
 800044c:	edd0 6a05 	vldr	s13, [r0, #20]
 8000450:	ed80 0a00 	vstr	s0, [r0]
 8000454:	eee6 7a87 	vfma.f32	s15, s13, s14
 8000458:	ed90 7a06 	vldr	s14, [r0, #24]
 800045c:	ee77 7a87 	vadd.f32	s15, s15, s14
 8000460:	ed90 7a07 	vldr	s14, [r0, #28]
 8000464:	edc0 7a06 	vstr	s15, [r0, #24]
 8000468:	eef4 7ac7 	vcmpe.f32	s15, s14
 800046c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000470:	bfc8      	it	gt
 8000472:	ed80 7a06 	vstrgt	s14, [r0, #24]
 8000476:	edd0 7a06 	vldr	s15, [r0, #24]
 800047a:	eeb1 7a47 	vneg.f32	s14, s14
 800047e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000482:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000486:	bf48      	it	mi
 8000488:	ed80 7a06 	vstrmi	s14, [r0, #24]
 800048c:	ed90 0a06 	vldr	s0, [r0, #24]
 8000490:	4770      	bx	lr

08000492 <_ZN5CMath3absEf>:
 8000492:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8000496:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800049a:	bf48      	it	mi
 800049c:	eeb1 0a40 	vnegmi.f32	s0, s0
 80004a0:	4770      	bx	lr
	...

080004a4 <_ZN5CMath4randEv>:
 80004a4:	6803      	ldr	r3, [r0, #0]
 80004a6:	490b      	ldr	r1, [pc, #44]	; (80004d4 <_ZN5CMath4randEv+0x30>)
 80004a8:	f243 0239 	movw	r2, #12345	; 0x3039
 80004ac:	fb01 2203 	mla	r2, r1, r3, r2
 80004b0:	6841      	ldr	r1, [r0, #4]
 80004b2:	6002      	str	r2, [r0, #0]
 80004b4:	f341 0300 	sbfx	r3, r1, #0, #1
 80004b8:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 80004bc:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 80004c0:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 80004c4:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 80004c8:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 80004cc:	6043      	str	r3, [r0, #4]
 80004ce:	ea83 0002 	eor.w	r0, r3, r2
 80004d2:	4770      	bx	lr
 80004d4:	41c64e6d 	.word	0x41c64e6d

080004d8 <_ZN5CMath3rndEv>:
 80004d8:	b508      	push	{r3, lr}
 80004da:	f7ff ffe3 	bl	80004a4 <_ZN5CMath4randEv>
 80004de:	4b09      	ldr	r3, [pc, #36]	; (8000504 <_ZN5CMath3rndEv+0x2c>)
 80004e0:	fbb0 f2f3 	udiv	r2, r0, r3
 80004e4:	fb02 0013 	mls	r0, r2, r3, r0
 80004e8:	ee07 0a90 	vmov	s15, r0
 80004ec:	ed9f 0a06 	vldr	s0, [pc, #24]	; 8000508 <_ZN5CMath3rndEv+0x30>
 80004f0:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80004f4:	eec7 7a80 	vdiv.f32	s15, s15, s0
 80004f8:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80004fc:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8000500:	bd08      	pop	{r3, pc}
 8000502:	bf00      	nop
 8000504:	001e8480 	.word	0x001e8480
 8000508:	49742400 	.word	0x49742400

0800050c <_ZN5CWifi12esp8266_sendEPc>:
 800050c:	b510      	push	{r4, lr}
 800050e:	1e4c      	subs	r4, r1, #1
 8000510:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000514:	b119      	cbz	r1, 800051e <_ZN5CWifi12esp8266_sendEPc+0x12>
 8000516:	4802      	ldr	r0, [pc, #8]	; (8000520 <_ZN5CWifi12esp8266_sendEPc+0x14>)
 8000518:	f001 f9a0 	bl	800185c <_ZN9CTerminal7putcharEc>
 800051c:	e7f8      	b.n	8000510 <_ZN5CWifi12esp8266_sendEPc+0x4>
 800051e:	bd10      	pop	{r4, pc}
 8000520:	20000030 	.word	0x20000030

08000524 <_ZN5CWifi17esp8266_send_uintEj>:
 8000524:	b530      	push	{r4, r5, lr}
 8000526:	b085      	sub	sp, #20
 8000528:	2300      	movs	r3, #0
 800052a:	f88d 300f 	strb.w	r3, [sp, #15]
 800052e:	220a      	movs	r2, #10
 8000530:	230a      	movs	r3, #10
 8000532:	ac01      	add	r4, sp, #4
 8000534:	fbb1 f5f3 	udiv	r5, r1, r3
 8000538:	fb03 1315 	mls	r3, r3, r5, r1
 800053c:	3330      	adds	r3, #48	; 0x30
 800053e:	5513      	strb	r3, [r2, r4]
 8000540:	4629      	mov	r1, r5
 8000542:	1e53      	subs	r3, r2, #1
 8000544:	b10d      	cbz	r5, 800054a <_ZN5CWifi17esp8266_send_uintEj+0x26>
 8000546:	461a      	mov	r2, r3
 8000548:	e7f2      	b.n	8000530 <_ZN5CWifi17esp8266_send_uintEj+0xc>
 800054a:	18a1      	adds	r1, r4, r2
 800054c:	f7ff ffde 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 8000550:	b005      	add	sp, #20
 8000552:	bd30      	pop	{r4, r5, pc}

08000554 <_ZN5CWifi19esp8266_find_streamEPcjj>:
 8000554:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000556:	4815      	ldr	r0, [pc, #84]	; (80005ac <_ZN5CWifi19esp8266_find_streamEPcjj+0x58>)
 8000558:	461d      	mov	r5, r3
 800055a:	460e      	mov	r6, r1
 800055c:	4617      	mov	r7, r2
 800055e:	f000 fa0f 	bl	8000980 <_ZN6CTimer8get_timeEv>
 8000562:	4405      	add	r5, r0
 8000564:	4812      	ldr	r0, [pc, #72]	; (80005b0 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 8000566:	f001 f8e7 	bl	8001738 <_ZN9CTerminal12clear_bufferEv>
 800056a:	2400      	movs	r4, #0
 800056c:	4810      	ldr	r0, [pc, #64]	; (80005b0 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 800056e:	f001 f981 	bl	8001874 <_ZN9CTerminal6ischarEv>
 8000572:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8000576:	4298      	cmp	r0, r3
 8000578:	d00d      	beq.n	8000596 <_ZN5CWifi19esp8266_find_streamEPcjj+0x42>
 800057a:	5d33      	ldrb	r3, [r6, r4]
 800057c:	4298      	cmp	r0, r3
 800057e:	d109      	bne.n	8000594 <_ZN5CWifi19esp8266_find_streamEPcjj+0x40>
 8000580:	1e7b      	subs	r3, r7, #1
 8000582:	429c      	cmp	r4, r3
 8000584:	d201      	bcs.n	800058a <_ZN5CWifi19esp8266_find_streamEPcjj+0x36>
 8000586:	3401      	adds	r4, #1
 8000588:	e005      	b.n	8000596 <_ZN5CWifi19esp8266_find_streamEPcjj+0x42>
 800058a:	4809      	ldr	r0, [pc, #36]	; (80005b0 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 800058c:	f001 f8d4 	bl	8001738 <_ZN9CTerminal12clear_bufferEv>
 8000590:	2001      	movs	r0, #1
 8000592:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000594:	2400      	movs	r4, #0
 8000596:	4805      	ldr	r0, [pc, #20]	; (80005ac <_ZN5CWifi19esp8266_find_streamEPcjj+0x58>)
 8000598:	f000 f9f2 	bl	8000980 <_ZN6CTimer8get_timeEv>
 800059c:	42a8      	cmp	r0, r5
 800059e:	d3e5      	bcc.n	800056c <_ZN5CWifi19esp8266_find_streamEPcjj+0x18>
 80005a0:	4803      	ldr	r0, [pc, #12]	; (80005b0 <_ZN5CWifi19esp8266_find_streamEPcjj+0x5c>)
 80005a2:	f001 f8c9 	bl	8001738 <_ZN9CTerminal12clear_bufferEv>
 80005a6:	2000      	movs	r0, #0
 80005a8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80005aa:	bf00      	nop
 80005ac:	2000013c 	.word	0x2000013c
 80005b0:	20000030 	.word	0x20000030

080005b4 <_ZN5CWifi23esp8266_get_nonblockingEPcjj>:
 80005b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80005b6:	4617      	mov	r7, r2
 80005b8:	461d      	mov	r5, r3
 80005ba:	460c      	mov	r4, r1
 80005bc:	460a      	mov	r2, r1
 80005be:	19cb      	adds	r3, r1, r7
 80005c0:	429a      	cmp	r2, r3
 80005c2:	d003      	beq.n	80005cc <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x18>
 80005c4:	2100      	movs	r1, #0
 80005c6:	f802 1b01 	strb.w	r1, [r2], #1
 80005ca:	e7f9      	b.n	80005c0 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0xc>
 80005cc:	4815      	ldr	r0, [pc, #84]	; (8000624 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x70>)
 80005ce:	f000 f9d7 	bl	8000980 <_ZN6CTimer8get_timeEv>
 80005d2:	1946      	adds	r6, r0, r5
 80005d4:	b944      	cbnz	r4, 80005e8 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x34>
 80005d6:	4629      	mov	r1, r5
 80005d8:	4812      	ldr	r0, [pc, #72]	; (8000624 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x70>)
 80005da:	f000 f9df 	bl	800099c <_ZN6CTimer8delay_msEm>
 80005de:	4812      	ldr	r0, [pc, #72]	; (8000628 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x74>)
 80005e0:	f001 f8aa 	bl	8001738 <_ZN9CTerminal12clear_bufferEv>
 80005e4:	4620      	mov	r0, r4
 80005e6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80005e8:	2500      	movs	r5, #0
 80005ea:	480f      	ldr	r0, [pc, #60]	; (8000628 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x74>)
 80005ec:	f001 f942 	bl	8001874 <_ZN9CTerminal6ischarEv>
 80005f0:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80005f4:	4298      	cmp	r0, r3
 80005f6:	bf1c      	itt	ne
 80005f8:	5560      	strbne	r0, [r4, r5]
 80005fa:	3501      	addne	r5, #1
 80005fc:	4809      	ldr	r0, [pc, #36]	; (8000624 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x70>)
 80005fe:	f000 f9bf 	bl	8000980 <_ZN6CTimer8get_timeEv>
 8000602:	42bd      	cmp	r5, r7
 8000604:	d207      	bcs.n	8000616 <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x62>
 8000606:	4286      	cmp	r6, r0
 8000608:	d8ef      	bhi.n	80005ea <_ZN5CWifi23esp8266_get_nonblockingEPcjj+0x36>
 800060a:	42b0      	cmp	r0, r6
 800060c:	bf94      	ite	ls
 800060e:	4628      	movls	r0, r5
 8000610:	f04f 30ff 	movhi.w	r0, #4294967295	; 0xffffffff
 8000614:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000616:	42b0      	cmp	r0, r6
 8000618:	bf94      	ite	ls
 800061a:	f06f 0001 	mvnls.w	r0, #1
 800061e:	f04f 30ff 	movhi.w	r0, #4294967295	; 0xffffffff
 8000622:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000624:	2000013c 	.word	0x2000013c
 8000628:	20000030 	.word	0x20000030

0800062c <_ZN5CWifi7connectEPcjS0_jS0_j>:
 800062c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000630:	ae08      	add	r6, sp, #32
 8000632:	e896 01c0 	ldmia.w	r6, {r6, r7, r8}
 8000636:	4691      	mov	r9, r2
 8000638:	461d      	mov	r5, r3
 800063a:	4604      	mov	r4, r0
 800063c:	468a      	mov	sl, r1
 800063e:	463b      	mov	r3, r7
 8000640:	eb07 0208 	add.w	r2, r7, r8
 8000644:	4293      	cmp	r3, r2
 8000646:	d003      	beq.n	8000650 <_ZN5CWifi7connectEPcjS0_jS0_j+0x24>
 8000648:	2100      	movs	r1, #0
 800064a:	f803 1b01 	strb.w	r1, [r3], #1
 800064e:	e7f9      	b.n	8000644 <_ZN5CWifi7connectEPcjS0_jS0_j+0x18>
 8000650:	6823      	ldr	r3, [r4, #0]
 8000652:	2b01      	cmp	r3, #1
 8000654:	d02a      	beq.n	80006ac <_ZN5CWifi7connectEPcjS0_jS0_j+0x80>
 8000656:	4620      	mov	r0, r4
 8000658:	494b      	ldr	r1, [pc, #300]	; (8000788 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 800065a:	f7ff ff57 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 800065e:	484b      	ldr	r0, [pc, #300]	; (800078c <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 8000660:	2164      	movs	r1, #100	; 0x64
 8000662:	f000 f99b 	bl	800099c <_ZN6CTimer8delay_msEm>
 8000666:	4620      	mov	r0, r4
 8000668:	4949      	ldr	r1, [pc, #292]	; (8000790 <_ZN5CWifi7connectEPcjS0_jS0_j+0x164>)
 800066a:	f7ff ff4f 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 800066e:	4620      	mov	r0, r4
 8000670:	4651      	mov	r1, sl
 8000672:	f7ff ff4b 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 8000676:	4620      	mov	r0, r4
 8000678:	4946      	ldr	r1, [pc, #280]	; (8000794 <_ZN5CWifi7connectEPcjS0_jS0_j+0x168>)
 800067a:	f7ff ff47 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 800067e:	4620      	mov	r0, r4
 8000680:	4649      	mov	r1, r9
 8000682:	f7ff ff4f 	bl	8000524 <_ZN5CWifi17esp8266_send_uintEj>
 8000686:	4620      	mov	r0, r4
 8000688:	4943      	ldr	r1, [pc, #268]	; (8000798 <_ZN5CWifi7connectEPcjS0_jS0_j+0x16c>)
 800068a:	f7ff ff3f 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 800068e:	4620      	mov	r0, r4
 8000690:	4942      	ldr	r1, [pc, #264]	; (800079c <_ZN5CWifi7connectEPcjS0_jS0_j+0x170>)
 8000692:	2207      	movs	r2, #7
 8000694:	f240 53dc 	movw	r3, #1500	; 0x5dc
 8000698:	f7ff ff5c 	bl	8000554 <_ZN5CWifi19esp8266_find_streamEPcjj>
 800069c:	b920      	cbnz	r0, 80006a8 <_ZN5CWifi7connectEPcjS0_jS0_j+0x7c>
 800069e:	6020      	str	r0, [r4, #0]
 80006a0:	f06f 0002 	mvn.w	r0, #2
 80006a4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80006a8:	2301      	movs	r3, #1
 80006aa:	6023      	str	r3, [r4, #0]
 80006ac:	4620      	mov	r0, r4
 80006ae:	493c      	ldr	r1, [pc, #240]	; (80007a0 <_ZN5CWifi7connectEPcjS0_jS0_j+0x174>)
 80006b0:	f7ff ff2c 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 80006b4:	4620      	mov	r0, r4
 80006b6:	4631      	mov	r1, r6
 80006b8:	f7ff ff34 	bl	8000524 <_ZN5CWifi17esp8266_send_uintEj>
 80006bc:	4620      	mov	r0, r4
 80006be:	4936      	ldr	r1, [pc, #216]	; (8000798 <_ZN5CWifi7connectEPcjS0_jS0_j+0x16c>)
 80006c0:	f7ff ff24 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 80006c4:	4620      	mov	r0, r4
 80006c6:	4937      	ldr	r1, [pc, #220]	; (80007a4 <_ZN5CWifi7connectEPcjS0_jS0_j+0x178>)
 80006c8:	2201      	movs	r2, #1
 80006ca:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 80006ce:	f7ff ff41 	bl	8000554 <_ZN5CWifi19esp8266_find_streamEPcjj>
 80006d2:	4681      	mov	r9, r0
 80006d4:	b108      	cbz	r0, 80006da <_ZN5CWifi7connectEPcjS0_jS0_j+0xae>
 80006d6:	442e      	add	r6, r5
 80006d8:	e00d      	b.n	80006f6 <_ZN5CWifi7connectEPcjS0_jS0_j+0xca>
 80006da:	4620      	mov	r0, r4
 80006dc:	492a      	ldr	r1, [pc, #168]	; (8000788 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 80006de:	f7ff ff15 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 80006e2:	482a      	ldr	r0, [pc, #168]	; (800078c <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 80006e4:	2164      	movs	r1, #100	; 0x64
 80006e6:	f000 f959 	bl	800099c <_ZN6CTimer8delay_msEm>
 80006ea:	f8c4 9000 	str.w	r9, [r4]
 80006ee:	f06f 0003 	mvn.w	r0, #3
 80006f2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80006f6:	42b5      	cmp	r5, r6
 80006f8:	d005      	beq.n	8000706 <_ZN5CWifi7connectEPcjS0_jS0_j+0xda>
 80006fa:	482b      	ldr	r0, [pc, #172]	; (80007a8 <_ZN5CWifi7connectEPcjS0_jS0_j+0x17c>)
 80006fc:	f815 1b01 	ldrb.w	r1, [r5], #1
 8000700:	f001 f8ac 	bl	800185c <_ZN9CTerminal7putcharEc>
 8000704:	e7f7      	b.n	80006f6 <_ZN5CWifi7connectEPcjS0_jS0_j+0xca>
 8000706:	4620      	mov	r0, r4
 8000708:	4928      	ldr	r1, [pc, #160]	; (80007ac <_ZN5CWifi7connectEPcjS0_jS0_j+0x180>)
 800070a:	2207      	movs	r2, #7
 800070c:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 8000710:	f7ff ff20 	bl	8000554 <_ZN5CWifi19esp8266_find_streamEPcjj>
 8000714:	4605      	mov	r5, r0
 8000716:	4620      	mov	r0, r4
 8000718:	b95d      	cbnz	r5, 8000732 <_ZN5CWifi7connectEPcjS0_jS0_j+0x106>
 800071a:	491b      	ldr	r1, [pc, #108]	; (8000788 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 800071c:	f7ff fef6 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 8000720:	481a      	ldr	r0, [pc, #104]	; (800078c <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 8000722:	2164      	movs	r1, #100	; 0x64
 8000724:	f000 f93a 	bl	800099c <_ZN6CTimer8delay_msEm>
 8000728:	6025      	str	r5, [r4, #0]
 800072a:	f06f 0004 	mvn.w	r0, #4
 800072e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000732:	491f      	ldr	r1, [pc, #124]	; (80007b0 <_ZN5CWifi7connectEPcjS0_jS0_j+0x184>)
 8000734:	2205      	movs	r2, #5
 8000736:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800073a:	f7ff ff0b 	bl	8000554 <_ZN5CWifi19esp8266_find_streamEPcjj>
 800073e:	4605      	mov	r5, r0
 8000740:	b960      	cbnz	r0, 800075c <_ZN5CWifi7connectEPcjS0_jS0_j+0x130>
 8000742:	4620      	mov	r0, r4
 8000744:	4910      	ldr	r1, [pc, #64]	; (8000788 <_ZN5CWifi7connectEPcjS0_jS0_j+0x15c>)
 8000746:	f7ff fee1 	bl	800050c <_ZN5CWifi12esp8266_sendEPc>
 800074a:	4810      	ldr	r0, [pc, #64]	; (800078c <_ZN5CWifi7connectEPcjS0_jS0_j+0x160>)
 800074c:	2164      	movs	r1, #100	; 0x64
 800074e:	f000 f925 	bl	800099c <_ZN6CTimer8delay_msEm>
 8000752:	6025      	str	r5, [r4, #0]
 8000754:	f06f 0005 	mvn.w	r0, #5
 8000758:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800075c:	2500      	movs	r5, #0
 800075e:	4812      	ldr	r0, [pc, #72]	; (80007a8 <_ZN5CWifi7connectEPcjS0_jS0_j+0x17c>)
 8000760:	f001 f8a4 	bl	80018ac <_ZN9CTerminal7getcharEv>
 8000764:	b2c0      	uxtb	r0, r0
 8000766:	283a      	cmp	r0, #58	; 0x3a
 8000768:	d005      	beq.n	8000776 <_ZN5CWifi7connectEPcjS0_jS0_j+0x14a>
 800076a:	230a      	movs	r3, #10
 800076c:	fb03 0005 	mla	r0, r3, r5, r0
 8000770:	f1a0 0530 	sub.w	r5, r0, #48	; 0x30
 8000774:	e7f3      	b.n	800075e <_ZN5CWifi7connectEPcjS0_jS0_j+0x132>
 8000776:	4620      	mov	r0, r4
 8000778:	4639      	mov	r1, r7
 800077a:	4642      	mov	r2, r8
 800077c:	2314      	movs	r3, #20
 800077e:	f7ff ff19 	bl	80005b4 <_ZN5CWifi23esp8266_get_nonblockingEPcjj>
 8000782:	4628      	mov	r0, r5
 8000784:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000788:	08002ed2 	.word	0x08002ed2
 800078c:	2000013c 	.word	0x2000013c
 8000790:	08002ee0 	.word	0x08002ee0
 8000794:	08002ef4 	.word	0x08002ef4
 8000798:	08002ebb 	.word	0x08002ebb
 800079c:	08002ef7 	.word	0x08002ef7
 80007a0:	08002eff 	.word	0x08002eff
 80007a4:	08002f0b 	.word	0x08002f0b
 80007a8:	20000030 	.word	0x20000030
 80007ac:	08002f0d 	.word	0x08002f0d
 80007b0:	08002f15 	.word	0x08002f15

080007b4 <_ZN5CWifi17connect_send_dataEjPhj>:
 80007b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007b6:	4605      	mov	r5, r0
 80007b8:	b099      	sub	sp, #100	; 0x64
 80007ba:	4811      	ldr	r0, [pc, #68]	; (8000800 <_ZN5CWifi17connect_send_dataEjPhj+0x4c>)
 80007bc:	460f      	mov	r7, r1
 80007be:	461c      	mov	r4, r3
 80007c0:	4616      	mov	r6, r2
 80007c2:	f7ff fd55 	bl	8000270 <_ZN9CUniqueID13get_unique_idEv>
 80007c6:	4b0f      	ldr	r3, [pc, #60]	; (8000804 <_ZN5CWifi17connect_send_dataEjPhj+0x50>)
 80007c8:	9005      	str	r0, [sp, #20]
 80007ca:	9306      	str	r3, [sp, #24]
 80007cc:	9707      	str	r7, [sp, #28]
 80007ce:	2100      	movs	r1, #0
 80007d0:	42a1      	cmp	r1, r4
 80007d2:	d005      	beq.n	80007e0 <_ZN5CWifi17connect_send_dataEjPhj+0x2c>
 80007d4:	ab05      	add	r3, sp, #20
 80007d6:	440b      	add	r3, r1
 80007d8:	5c72      	ldrb	r2, [r6, r1]
 80007da:	731a      	strb	r2, [r3, #12]
 80007dc:	3101      	adds	r1, #1
 80007de:	e7f7      	b.n	80007d0 <_ZN5CWifi17connect_send_dataEjPhj+0x1c>
 80007e0:	2400      	movs	r4, #0
 80007e2:	234c      	movs	r3, #76	; 0x4c
 80007e4:	e88d 0018 	stmia.w	sp, {r3, r4}
 80007e8:	9402      	str	r4, [sp, #8]
 80007ea:	4628      	mov	r0, r5
 80007ec:	4906      	ldr	r1, [pc, #24]	; (8000808 <_ZN5CWifi17connect_send_dataEjPhj+0x54>)
 80007ee:	f240 72da 	movw	r2, #2010	; 0x7da
 80007f2:	ab05      	add	r3, sp, #20
 80007f4:	f7ff ff1a 	bl	800062c <_ZN5CWifi7connectEPcjS0_jS0_j>
 80007f8:	4620      	mov	r0, r4
 80007fa:	b019      	add	sp, #100	; 0x64
 80007fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007fe:	bf00      	nop
 8000800:	20000030 	.word	0x20000030
 8000804:	cafe2357 	.word	0xcafe2357
 8000808:	08002f1b 	.word	0x08002f1b

0800080c <_ZN5CWifi11client_demoEv>:
 800080c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800080e:	4604      	mov	r4, r0
 8000810:	4813      	ldr	r0, [pc, #76]	; (8000860 <_ZN5CWifi11client_demoEv+0x54>)
 8000812:	f000 f8b5 	bl	8000980 <_ZN6CTimer8get_timeEv>
 8000816:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
 800081a:	fbb0 f0f3 	udiv	r0, r0, r3
 800081e:	4b11      	ldr	r3, [pc, #68]	; (8000864 <_ZN5CWifi11client_demoEv+0x58>)
 8000820:	9001      	str	r0, [sp, #4]
 8000822:	9302      	str	r3, [sp, #8]
 8000824:	4810      	ldr	r0, [pc, #64]	; (8000868 <_ZN5CWifi11client_demoEv+0x5c>)
 8000826:	4b11      	ldr	r3, [pc, #68]	; (800086c <_ZN5CWifi11client_demoEv+0x60>)
 8000828:	9303      	str	r3, [sp, #12]
 800082a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800082e:	f000 ff4b 	bl	80016c8 <_ZN5CGPIO7gpio_onEm>
 8000832:	aa01      	add	r2, sp, #4
 8000834:	4620      	mov	r0, r4
 8000836:	2100      	movs	r1, #0
 8000838:	230c      	movs	r3, #12
 800083a:	f7ff ffbb 	bl	80007b4 <_ZN5CWifi17connect_send_dataEjPhj>
 800083e:	aa01      	add	r2, sp, #4
 8000840:	230c      	movs	r3, #12
 8000842:	4620      	mov	r0, r4
 8000844:	2100      	movs	r1, #0
 8000846:	f7ff ffb5 	bl	80007b4 <_ZN5CWifi17connect_send_dataEjPhj>
 800084a:	4807      	ldr	r0, [pc, #28]	; (8000868 <_ZN5CWifi11client_demoEv+0x5c>)
 800084c:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8000850:	f000 ff48 	bl	80016e4 <_ZN5CGPIO8gpio_offEm>
 8000854:	4802      	ldr	r0, [pc, #8]	; (8000860 <_ZN5CWifi11client_demoEv+0x54>)
 8000856:	2164      	movs	r1, #100	; 0x64
 8000858:	f000 f8a0 	bl	800099c <_ZN6CTimer8delay_msEm>
 800085c:	e7d8      	b.n	8000810 <_ZN5CWifi11client_demoEv+0x4>
 800085e:	bf00      	nop
 8000860:	2000013c 	.word	0x2000013c
 8000864:	cafecafe 	.word	0xcafecafe
 8000868:	20000030 	.word	0x20000030
 800086c:	0004cb2f 	.word	0x0004cb2f

08000870 <TIM2_IRQHandler>:
 8000870:	b508      	push	{r3, lr}
 8000872:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000876:	2101      	movs	r1, #1
 8000878:	f002 f818 	bl	80028ac <TIM_GetITStatus>
 800087c:	b360      	cbz	r0, 80008d8 <TIM2_IRQHandler+0x68>
 800087e:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000882:	2101      	movs	r1, #1
 8000884:	f002 f81e 	bl	80028c4 <TIM_ClearITPendingBit>
 8000888:	2300      	movs	r3, #0
 800088a:	4a14      	ldr	r2, [pc, #80]	; (80008dc <TIM2_IRQHandler+0x6c>)
 800088c:	5cd1      	ldrb	r1, [r2, r3]
 800088e:	b111      	cbz	r1, 8000896 <TIM2_IRQHandler+0x26>
 8000890:	5cd1      	ldrb	r1, [r2, r3]
 8000892:	29ff      	cmp	r1, #255	; 0xff
 8000894:	d11b      	bne.n	80008ce <TIM2_IRQHandler+0x5e>
 8000896:	4912      	ldr	r1, [pc, #72]	; (80008e0 <TIM2_IRQHandler+0x70>)
 8000898:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 800089c:	b128      	cbz	r0, 80008aa <TIM2_IRQHandler+0x3a>
 800089e:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80008a2:	3a01      	subs	r2, #1
 80008a4:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80008a8:	e009      	b.n	80008be <TIM2_IRQHandler+0x4e>
 80008aa:	480e      	ldr	r0, [pc, #56]	; (80008e4 <TIM2_IRQHandler+0x74>)
 80008ac:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80008b0:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80008b4:	5cd2      	ldrb	r2, [r2, r3]
 80008b6:	b912      	cbnz	r2, 80008be <TIM2_IRQHandler+0x4e>
 80008b8:	4a08      	ldr	r2, [pc, #32]	; (80008dc <TIM2_IRQHandler+0x6c>)
 80008ba:	2101      	movs	r1, #1
 80008bc:	54d1      	strb	r1, [r2, r3]
 80008be:	3301      	adds	r3, #1
 80008c0:	2b08      	cmp	r3, #8
 80008c2:	d1e2      	bne.n	800088a <TIM2_IRQHandler+0x1a>
 80008c4:	4a08      	ldr	r2, [pc, #32]	; (80008e8 <TIM2_IRQHandler+0x78>)
 80008c6:	6813      	ldr	r3, [r2, #0]
 80008c8:	3301      	adds	r3, #1
 80008ca:	6013      	str	r3, [r2, #0]
 80008cc:	bd08      	pop	{r3, pc}
 80008ce:	5cd1      	ldrb	r1, [r2, r3]
 80008d0:	3101      	adds	r1, #1
 80008d2:	b2c9      	uxtb	r1, r1
 80008d4:	54d1      	strb	r1, [r2, r3]
 80008d6:	e7de      	b.n	8000896 <TIM2_IRQHandler+0x26>
 80008d8:	bd08      	pop	{r3, pc}
 80008da:	bf00      	nop
 80008dc:	20000130 	.word	0x20000130
 80008e0:	20000110 	.word	0x20000110
 80008e4:	20000140 	.word	0x20000140
 80008e8:	20000138 	.word	0x20000138

080008ec <_ZN6CTimer10timer_initEv>:
 80008ec:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80008ee:	4a20      	ldr	r2, [pc, #128]	; (8000970 <_ZN6CTimer10timer_initEv+0x84>)
 80008f0:	2300      	movs	r3, #0
 80008f2:	6013      	str	r3, [r2, #0]
 80008f4:	491f      	ldr	r1, [pc, #124]	; (8000974 <_ZN6CTimer10timer_initEv+0x88>)
 80008f6:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80008fa:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80008fe:	491e      	ldr	r1, [pc, #120]	; (8000978 <_ZN6CTimer10timer_initEv+0x8c>)
 8000900:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000904:	4a1d      	ldr	r2, [pc, #116]	; (800097c <_ZN6CTimer10timer_initEv+0x90>)
 8000906:	2400      	movs	r4, #0
 8000908:	54d4      	strb	r4, [r2, r3]
 800090a:	3301      	adds	r3, #1
 800090c:	2b08      	cmp	r3, #8
 800090e:	d1f1      	bne.n	80008f4 <_ZN6CTimer10timer_initEv+0x8>
 8000910:	2001      	movs	r0, #1
 8000912:	4601      	mov	r1, r0
 8000914:	f001 ff06 	bl	8002724 <RCC_APB1PeriphClockCmd>
 8000918:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 800091c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000920:	a901      	add	r1, sp, #4
 8000922:	2309      	movs	r3, #9
 8000924:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000928:	9302      	str	r3, [sp, #8]
 800092a:	f8ad 4006 	strh.w	r4, [sp, #6]
 800092e:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000932:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000936:	f001 ff03 	bl	8002740 <TIM_TimeBaseInit>
 800093a:	2101      	movs	r1, #1
 800093c:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000940:	f001 ff4e 	bl	80027e0 <TIM_Cmd>
 8000944:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000948:	4668      	mov	r0, sp
 800094a:	68d3      	ldr	r3, [r2, #12]
 800094c:	f043 0301 	orr.w	r3, r3, #1
 8000950:	60d3      	str	r3, [r2, #12]
 8000952:	231c      	movs	r3, #28
 8000954:	f88d 3000 	strb.w	r3, [sp]
 8000958:	2301      	movs	r3, #1
 800095a:	f88d 4001 	strb.w	r4, [sp, #1]
 800095e:	f88d 3002 	strb.w	r3, [sp, #2]
 8000962:	f88d 3003 	strb.w	r3, [sp, #3]
 8000966:	f002 f8e7 	bl	8002b38 <NVIC_Init>
 800096a:	4620      	mov	r0, r4
 800096c:	b004      	add	sp, #16
 800096e:	bd10      	pop	{r4, pc}
 8000970:	20000138 	.word	0x20000138
 8000974:	20000110 	.word	0x20000110
 8000978:	20000140 	.word	0x20000140
 800097c:	20000130 	.word	0x20000130

08000980 <_ZN6CTimer8get_timeEv>:
 8000980:	b082      	sub	sp, #8
 8000982:	b672      	cpsid	i
 8000984:	4b04      	ldr	r3, [pc, #16]	; (8000998 <_ZN6CTimer8get_timeEv+0x18>)
 8000986:	681b      	ldr	r3, [r3, #0]
 8000988:	9301      	str	r3, [sp, #4]
 800098a:	b662      	cpsie	i
 800098c:	230a      	movs	r3, #10
 800098e:	9801      	ldr	r0, [sp, #4]
 8000990:	fbb0 f0f3 	udiv	r0, r0, r3
 8000994:	b002      	add	sp, #8
 8000996:	4770      	bx	lr
 8000998:	20000138 	.word	0x20000138

0800099c <_ZN6CTimer8delay_msEm>:
 800099c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800099e:	460c      	mov	r4, r1
 80009a0:	4605      	mov	r5, r0
 80009a2:	f7ff ffed 	bl	8000980 <_ZN6CTimer8get_timeEv>
 80009a6:	4420      	add	r0, r4
 80009a8:	9001      	str	r0, [sp, #4]
 80009aa:	4628      	mov	r0, r5
 80009ac:	9c01      	ldr	r4, [sp, #4]
 80009ae:	f7ff ffe7 	bl	8000980 <_ZN6CTimer8get_timeEv>
 80009b2:	4284      	cmp	r4, r0
 80009b4:	d902      	bls.n	80009bc <_ZN6CTimer8delay_msEm+0x20>
 80009b6:	f002 f8bb 	bl	8002b30 <core_yield>
 80009ba:	e7f6      	b.n	80009aa <_ZN6CTimer8delay_msEm+0xe>
 80009bc:	b003      	add	sp, #12
 80009be:	bd30      	pop	{r4, r5, pc}

080009c0 <_ZN6CTimer22event_timer_set_periodEhm>:
 80009c0:	b672      	cpsid	i
 80009c2:	230a      	movs	r3, #10
 80009c4:	435a      	muls	r2, r3
 80009c6:	4b05      	ldr	r3, [pc, #20]	; (80009dc <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 80009c8:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80009cc:	4b04      	ldr	r3, [pc, #16]	; (80009e0 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 80009ce:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80009d2:	4b04      	ldr	r3, [pc, #16]	; (80009e4 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 80009d4:	2200      	movs	r2, #0
 80009d6:	545a      	strb	r2, [r3, r1]
 80009d8:	b662      	cpsie	i
 80009da:	4770      	bx	lr
 80009dc:	20000110 	.word	0x20000110
 80009e0:	20000140 	.word	0x20000140
 80009e4:	20000130 	.word	0x20000130

080009e8 <_ZN6CTimer17event_timer_checkEh>:
 80009e8:	4b05      	ldr	r3, [pc, #20]	; (8000a00 <_ZN6CTimer17event_timer_checkEh+0x18>)
 80009ea:	5c5a      	ldrb	r2, [r3, r1]
 80009ec:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 80009f0:	b12a      	cbz	r2, 80009fe <_ZN6CTimer17event_timer_checkEh+0x16>
 80009f2:	b672      	cpsid	i
 80009f4:	5c58      	ldrb	r0, [r3, r1]
 80009f6:	2200      	movs	r2, #0
 80009f8:	b2c0      	uxtb	r0, r0
 80009fa:	545a      	strb	r2, [r3, r1]
 80009fc:	b662      	cpsie	i
 80009fe:	4770      	bx	lr
 8000a00:	20000130 	.word	0x20000130

08000a04 <_ZN4CRGB8rgb_readEh>:
 8000a04:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000a08:	4604      	mov	r4, r0
 8000a0a:	4688      	mov	r8, r1
 8000a0c:	f000 fae4 	bl	8000fd8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000a10:	4620      	mov	r0, r4
 8000a12:	2172      	movs	r1, #114	; 0x72
 8000a14:	f000 fb0a 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a18:	21b4      	movs	r1, #180	; 0xb4
 8000a1a:	4620      	mov	r0, r4
 8000a1c:	f000 fb06 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a20:	4620      	mov	r0, r4
 8000a22:	f000 fad9 	bl	8000fd8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000a26:	4620      	mov	r0, r4
 8000a28:	2173      	movs	r1, #115	; 0x73
 8000a2a:	f000 faff 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a2e:	4620      	mov	r0, r4
 8000a30:	2101      	movs	r1, #1
 8000a32:	4622      	mov	r2, r4
 8000a34:	f000 fb3b 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000a38:	7823      	ldrb	r3, [r4, #0]
 8000a3a:	83a3      	strh	r3, [r4, #28]
 8000a3c:	7863      	ldrb	r3, [r4, #1]
 8000a3e:	83e3      	strh	r3, [r4, #30]
 8000a40:	78a3      	ldrb	r3, [r4, #2]
 8000a42:	8423      	strh	r3, [r4, #32]
 8000a44:	78e3      	ldrb	r3, [r4, #3]
 8000a46:	8463      	strh	r3, [r4, #34]	; 0x22
 8000a48:	2101      	movs	r1, #1
 8000a4a:	4620      	mov	r0, r4
 8000a4c:	4622      	mov	r2, r4
 8000a4e:	f104 091a 	add.w	r9, r4, #26
 8000a52:	1e65      	subs	r5, r4, #1
 8000a54:	f000 fb2b 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000a58:	1ca6      	adds	r6, r4, #2
 8000a5a:	f104 0722 	add.w	r7, r4, #34	; 0x22
 8000a5e:	4629      	mov	r1, r5
 8000a60:	464b      	mov	r3, r9
 8000a62:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000a66:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000a6a:	42bb      	cmp	r3, r7
 8000a6c:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000a70:	801a      	strh	r2, [r3, #0]
 8000a72:	d1f6      	bne.n	8000a62 <_ZN4CRGB8rgb_readEh+0x5e>
 8000a74:	4620      	mov	r0, r4
 8000a76:	2101      	movs	r1, #1
 8000a78:	4622      	mov	r2, r4
 8000a7a:	f000 fb18 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000a7e:	7823      	ldrb	r3, [r4, #0]
 8000a80:	80a3      	strh	r3, [r4, #4]
 8000a82:	7863      	ldrb	r3, [r4, #1]
 8000a84:	80e3      	strh	r3, [r4, #6]
 8000a86:	78a3      	ldrb	r3, [r4, #2]
 8000a88:	8123      	strh	r3, [r4, #8]
 8000a8a:	78e3      	ldrb	r3, [r4, #3]
 8000a8c:	8163      	strh	r3, [r4, #10]
 8000a8e:	2101      	movs	r1, #1
 8000a90:	4620      	mov	r0, r4
 8000a92:	4622      	mov	r2, r4
 8000a94:	f000 fb0b 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000a98:	f104 0a0a 	add.w	sl, r4, #10
 8000a9c:	4633      	mov	r3, r6
 8000a9e:	4629      	mov	r1, r5
 8000aa0:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000aa4:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000aa8:	4553      	cmp	r3, sl
 8000aaa:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000aae:	801a      	strh	r2, [r3, #0]
 8000ab0:	d1f6      	bne.n	8000aa0 <_ZN4CRGB8rgb_readEh+0x9c>
 8000ab2:	4620      	mov	r0, r4
 8000ab4:	2101      	movs	r1, #1
 8000ab6:	4622      	mov	r2, r4
 8000ab8:	f000 faf9 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000abc:	7823      	ldrb	r3, [r4, #0]
 8000abe:	81a3      	strh	r3, [r4, #12]
 8000ac0:	7863      	ldrb	r3, [r4, #1]
 8000ac2:	81e3      	strh	r3, [r4, #14]
 8000ac4:	78a3      	ldrb	r3, [r4, #2]
 8000ac6:	8223      	strh	r3, [r4, #16]
 8000ac8:	78e3      	ldrb	r3, [r4, #3]
 8000aca:	8263      	strh	r3, [r4, #18]
 8000acc:	4622      	mov	r2, r4
 8000ace:	4620      	mov	r0, r4
 8000ad0:	2101      	movs	r1, #1
 8000ad2:	f000 faec 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000ad6:	f104 0612 	add.w	r6, r4, #18
 8000ada:	462a      	mov	r2, r5
 8000adc:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 8000ae0:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000ae4:	45b2      	cmp	sl, r6
 8000ae6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000aea:	f8aa 3000 	strh.w	r3, [sl]
 8000aee:	d1f5      	bne.n	8000adc <_ZN4CRGB8rgb_readEh+0xd8>
 8000af0:	4620      	mov	r0, r4
 8000af2:	2101      	movs	r1, #1
 8000af4:	4622      	mov	r2, r4
 8000af6:	f000 fada 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000afa:	7823      	ldrb	r3, [r4, #0]
 8000afc:	82a3      	strh	r3, [r4, #20]
 8000afe:	7863      	ldrb	r3, [r4, #1]
 8000b00:	82e3      	strh	r3, [r4, #22]
 8000b02:	78a3      	ldrb	r3, [r4, #2]
 8000b04:	8323      	strh	r3, [r4, #24]
 8000b06:	78e3      	ldrb	r3, [r4, #3]
 8000b08:	8363      	strh	r3, [r4, #26]
 8000b0a:	4622      	mov	r2, r4
 8000b0c:	4620      	mov	r0, r4
 8000b0e:	2101      	movs	r1, #1
 8000b10:	f000 facd 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000b14:	462a      	mov	r2, r5
 8000b16:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 8000b1a:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000b1e:	454e      	cmp	r6, r9
 8000b20:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000b24:	8033      	strh	r3, [r6, #0]
 8000b26:	d1f6      	bne.n	8000b16 <_ZN4CRGB8rgb_readEh+0x112>
 8000b28:	4620      	mov	r0, r4
 8000b2a:	2101      	movs	r1, #1
 8000b2c:	4622      	mov	r2, r4
 8000b2e:	f000 fabe 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000b32:	7823      	ldrb	r3, [r4, #0]
 8000b34:	84a3      	strh	r3, [r4, #36]	; 0x24
 8000b36:	7863      	ldrb	r3, [r4, #1]
 8000b38:	84e3      	strh	r3, [r4, #38]	; 0x26
 8000b3a:	78a3      	ldrb	r3, [r4, #2]
 8000b3c:	8523      	strh	r3, [r4, #40]	; 0x28
 8000b3e:	78e3      	ldrb	r3, [r4, #3]
 8000b40:	8563      	strh	r3, [r4, #42]	; 0x2a
 8000b42:	4622      	mov	r2, r4
 8000b44:	4620      	mov	r0, r4
 8000b46:	2100      	movs	r1, #0
 8000b48:	f000 fab1 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000b4c:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 8000b50:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000b54:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 8000b58:	4297      	cmp	r7, r2
 8000b5a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000b5e:	803b      	strh	r3, [r7, #0]
 8000b60:	d1f6      	bne.n	8000b50 <_ZN4CRGB8rgb_readEh+0x14c>
 8000b62:	4620      	mov	r0, r4
 8000b64:	f000 fa4d 	bl	8001002 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000b68:	f1b8 0f00 	cmp.w	r8, #0
 8000b6c:	d025      	beq.n	8000bba <_ZN4CRGB8rgb_readEh+0x1b6>
 8000b6e:	2300      	movs	r3, #0
 8000b70:	88a1      	ldrh	r1, [r4, #4]
 8000b72:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 8000b76:	440a      	add	r2, r1
 8000b78:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8000b7c:	89a1      	ldrh	r1, [r4, #12]
 8000b7e:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000b82:	440a      	add	r2, r1
 8000b84:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 8000b88:	8aa1      	ldrh	r1, [r4, #20]
 8000b8a:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 8000b8e:	440a      	add	r2, r1
 8000b90:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 8000b94:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 8000b96:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 8000b9a:	440a      	add	r2, r1
 8000b9c:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8000ba0:	8ba1      	ldrh	r1, [r4, #28]
 8000ba2:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 8000ba6:	3301      	adds	r3, #1
 8000ba8:	440a      	add	r2, r1
 8000baa:	2b04      	cmp	r3, #4
 8000bac:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8000bb0:	f104 0402 	add.w	r4, r4, #2
 8000bb4:	d1dc      	bne.n	8000b70 <_ZN4CRGB8rgb_readEh+0x16c>
 8000bb6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000bba:	4641      	mov	r1, r8
 8000bbc:	b672      	cpsid	i
 8000bbe:	88a3      	ldrh	r3, [r4, #4]
 8000bc0:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 8000bc4:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000bc8:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 8000bcc:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 8000bd0:	1a18      	subs	r0, r3, r0
 8000bd2:	89a3      	ldrh	r3, [r4, #12]
 8000bd4:	1a9a      	subs	r2, r3, r2
 8000bd6:	8aa3      	ldrh	r3, [r4, #20]
 8000bd8:	1b5b      	subs	r3, r3, r5
 8000bda:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 8000bdc:	1bad      	subs	r5, r5, r6
 8000bde:	84a5      	strh	r5, [r4, #36]	; 0x24
 8000be0:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 8000be4:	8ba5      	ldrh	r5, [r4, #28]
 8000be6:	b280      	uxth	r0, r0
 8000be8:	b292      	uxth	r2, r2
 8000bea:	b29b      	uxth	r3, r3
 8000bec:	1bad      	subs	r5, r5, r6
 8000bee:	80a0      	strh	r0, [r4, #4]
 8000bf0:	81a2      	strh	r2, [r4, #12]
 8000bf2:	82a3      	strh	r3, [r4, #20]
 8000bf4:	83a5      	strh	r5, [r4, #28]
 8000bf6:	b662      	cpsie	i
 8000bf8:	b200      	sxth	r0, r0
 8000bfa:	b212      	sxth	r2, r2
 8000bfc:	1885      	adds	r5, r0, r2
 8000bfe:	b21b      	sxth	r3, r3
 8000c00:	18ed      	adds	r5, r5, r3
 8000c02:	d00e      	beq.n	8000c22 <_ZN4CRGB8rgb_readEh+0x21e>
 8000c04:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000c08:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8000c0c:	fb90 f0f5 	sdiv	r0, r0, r5
 8000c10:	fb92 f2f5 	sdiv	r2, r2, r5
 8000c14:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8000c18:	85a0      	strh	r0, [r4, #44]	; 0x2c
 8000c1a:	fb93 f3f5 	sdiv	r3, r3, r5
 8000c1e:	86a2      	strh	r2, [r4, #52]	; 0x34
 8000c20:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8000c22:	3101      	adds	r1, #1
 8000c24:	2904      	cmp	r1, #4
 8000c26:	f104 0402 	add.w	r4, r4, #2
 8000c2a:	d1c7      	bne.n	8000bbc <_ZN4CRGB8rgb_readEh+0x1b8>
 8000c2c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08000c30 <_ZN4CRGB8rgb_initEv>:
 8000c30:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000c32:	4606      	mov	r6, r0
 8000c34:	4635      	mov	r5, r6
 8000c36:	f000 f995 	bl	8000f64 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 8000c3a:	4633      	mov	r3, r6
 8000c3c:	2200      	movs	r2, #0
 8000c3e:	3201      	adds	r2, #1
 8000c40:	2400      	movs	r4, #0
 8000c42:	2a04      	cmp	r2, #4
 8000c44:	809c      	strh	r4, [r3, #4]
 8000c46:	819c      	strh	r4, [r3, #12]
 8000c48:	829c      	strh	r4, [r3, #20]
 8000c4a:	849c      	strh	r4, [r3, #36]	; 0x24
 8000c4c:	839c      	strh	r4, [r3, #28]
 8000c4e:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 8000c52:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 8000c56:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 8000c5a:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 8000c5e:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 8000c62:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000c64:	869c      	strh	r4, [r3, #52]	; 0x34
 8000c66:	879c      	strh	r4, [r3, #60]	; 0x3c
 8000c68:	f103 0302 	add.w	r3, r3, #2
 8000c6c:	d1e7      	bne.n	8000c3e <_ZN4CRGB8rgb_initEv+0xe>
 8000c6e:	4630      	mov	r0, r6
 8000c70:	2172      	movs	r1, #114	; 0x72
 8000c72:	2281      	movs	r2, #129	; 0x81
 8000c74:	23ff      	movs	r3, #255	; 0xff
 8000c76:	f000 fa02 	bl	800107e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000c7a:	4630      	mov	r0, r6
 8000c7c:	2172      	movs	r1, #114	; 0x72
 8000c7e:	2283      	movs	r2, #131	; 0x83
 8000c80:	23ff      	movs	r3, #255	; 0xff
 8000c82:	f000 f9fc 	bl	800107e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000c86:	4630      	mov	r0, r6
 8000c88:	2172      	movs	r1, #114	; 0x72
 8000c8a:	228d      	movs	r2, #141	; 0x8d
 8000c8c:	4623      	mov	r3, r4
 8000c8e:	f000 f9f6 	bl	800107e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000c92:	4630      	mov	r0, r6
 8000c94:	2172      	movs	r1, #114	; 0x72
 8000c96:	2280      	movs	r2, #128	; 0x80
 8000c98:	2303      	movs	r3, #3
 8000c9a:	f000 f9f0 	bl	800107e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000c9e:	228f      	movs	r2, #143	; 0x8f
 8000ca0:	2323      	movs	r3, #35	; 0x23
 8000ca2:	4630      	mov	r0, r6
 8000ca4:	2172      	movs	r1, #114	; 0x72
 8000ca6:	f000 f9ea 	bl	800107e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000caa:	af01      	add	r7, sp, #4
 8000cac:	4630      	mov	r0, r6
 8000cae:	4621      	mov	r1, r4
 8000cb0:	f7ff fea8 	bl	8000a04 <_ZN4CRGB8rgb_readEh>
 8000cb4:	463b      	mov	r3, r7
 8000cb6:	4630      	mov	r0, r6
 8000cb8:	2172      	movs	r1, #114	; 0x72
 8000cba:	2292      	movs	r2, #146	; 0x92
 8000cbc:	f000 fa44 	bl	8001148 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000cc0:	4623      	mov	r3, r4
 8000cc2:	5cfa      	ldrb	r2, [r7, r3]
 8000cc4:	2a69      	cmp	r2, #105	; 0x69
 8000cc6:	bf1c      	itt	ne
 8000cc8:	2201      	movne	r2, #1
 8000cca:	409a      	lslne	r2, r3
 8000ccc:	f103 0301 	add.w	r3, r3, #1
 8000cd0:	bf18      	it	ne
 8000cd2:	4314      	orrne	r4, r2
 8000cd4:	2b04      	cmp	r3, #4
 8000cd6:	d1f4      	bne.n	8000cc2 <_ZN4CRGB8rgb_initEv+0x92>
 8000cd8:	461f      	mov	r7, r3
 8000cda:	4630      	mov	r0, r6
 8000cdc:	2101      	movs	r1, #1
 8000cde:	f7ff fe91 	bl	8000a04 <_ZN4CRGB8rgb_readEh>
 8000ce2:	3f01      	subs	r7, #1
 8000ce4:	d1f9      	bne.n	8000cda <_ZN4CRGB8rgb_initEv+0xaa>
 8000ce6:	2104      	movs	r1, #4
 8000ce8:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8000cec:	089b      	lsrs	r3, r3, #2
 8000cee:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 8000cf2:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 8000cf6:	089b      	lsrs	r3, r3, #2
 8000cf8:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000cfc:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000d00:	089b      	lsrs	r3, r3, #2
 8000d02:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 8000d06:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8000d0a:	089b      	lsrs	r3, r3, #2
 8000d0c:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8000d10:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 8000d14:	3901      	subs	r1, #1
 8000d16:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000d1a:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8000d1e:	f105 0502 	add.w	r5, r5, #2
 8000d22:	d1e1      	bne.n	8000ce8 <_ZN4CRGB8rgb_initEv+0xb8>
 8000d24:	4630      	mov	r0, r6
 8000d26:	f7ff fe6d 	bl	8000a04 <_ZN4CRGB8rgb_readEh>
 8000d2a:	b114      	cbz	r4, 8000d32 <_ZN4CRGB8rgb_initEv+0x102>
 8000d2c:	4802      	ldr	r0, [pc, #8]	; (8000d38 <_ZN4CRGB8rgb_initEv+0x108>)
 8000d2e:	1b00      	subs	r0, r0, r4
 8000d30:	e000      	b.n	8000d34 <_ZN4CRGB8rgb_initEv+0x104>
 8000d32:	4620      	mov	r0, r4
 8000d34:	b003      	add	sp, #12
 8000d36:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d38:	fffffc18 	.word	0xfffffc18

08000d3c <_ZN4CRGB14get_rgb_resultEv>:
 8000d3c:	3004      	adds	r0, #4
 8000d3e:	4770      	bx	lr

08000d40 <_ZN6CMotor11motor_sleepEv>:
 8000d40:	b510      	push	{r4, lr}
 8000d42:	4c07      	ldr	r4, [pc, #28]	; (8000d60 <_ZN6CMotor11motor_sleepEv+0x20>)
 8000d44:	21c0      	movs	r1, #192	; 0xc0
 8000d46:	4620      	mov	r0, r4
 8000d48:	2200      	movs	r2, #0
 8000d4a:	2318      	movs	r3, #24
 8000d4c:	f000 fae0 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000d50:	4620      	mov	r0, r4
 8000d52:	21c2      	movs	r1, #194	; 0xc2
 8000d54:	2200      	movs	r2, #0
 8000d56:	2318      	movs	r3, #24
 8000d58:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000d5c:	f000 bad8 	b.w	8001310 <_ZN4CI2C9write_regEhhh>
 8000d60:	20000160 	.word	0x20000160

08000d64 <_ZN6CMotor13motor_refreshEv>:
 8000d64:	b570      	push	{r4, r5, r6, lr}
 8000d66:	e890 0030 	ldmia.w	r0, {r4, r5}
 8000d6a:	2c2c      	cmp	r4, #44	; 0x2c
 8000d6c:	dc74      	bgt.n	8000e58 <_ZN6CMotor13motor_refreshEv+0xf4>
 8000d6e:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000d72:	db11      	blt.n	8000d98 <_ZN6CMotor13motor_refreshEv+0x34>
 8000d74:	2d2c      	cmp	r5, #44	; 0x2c
 8000d76:	dc5e      	bgt.n	8000e36 <_ZN6CMotor13motor_refreshEv+0xd2>
 8000d78:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 8000d7c:	db33      	blt.n	8000de6 <_ZN6CMotor13motor_refreshEv+0x82>
 8000d7e:	b1dc      	cbz	r4, 8000db8 <_ZN6CMotor13motor_refreshEv+0x54>
 8000d80:	e001      	b.n	8000d86 <_ZN6CMotor13motor_refreshEv+0x22>
 8000d82:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000d86:	2c00      	cmp	r4, #0
 8000d88:	dd0d      	ble.n	8000da6 <_ZN6CMotor13motor_refreshEv+0x42>
 8000d8a:	2c06      	cmp	r4, #6
 8000d8c:	bfb8      	it	lt
 8000d8e:	2406      	movlt	r4, #6
 8000d90:	00a4      	lsls	r4, r4, #2
 8000d92:	f044 0402 	orr.w	r4, r4, #2
 8000d96:	e00d      	b.n	8000db4 <_ZN6CMotor13motor_refreshEv+0x50>
 8000d98:	2d2c      	cmp	r5, #44	; 0x2c
 8000d9a:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000d9e:	dc60      	bgt.n	8000e62 <_ZN6CMotor13motor_refreshEv+0xfe>
 8000da0:	42a5      	cmp	r5, r4
 8000da2:	bfb8      	it	lt
 8000da4:	4625      	movlt	r5, r4
 8000da6:	4264      	negs	r4, r4
 8000da8:	2c06      	cmp	r4, #6
 8000daa:	bfb8      	it	lt
 8000dac:	2406      	movlt	r4, #6
 8000dae:	00a4      	lsls	r4, r4, #2
 8000db0:	f044 0401 	orr.w	r4, r4, #1
 8000db4:	b2e4      	uxtb	r4, r4
 8000db6:	e000      	b.n	8000dba <_ZN6CMotor13motor_refreshEv+0x56>
 8000db8:	241b      	movs	r4, #27
 8000dba:	2200      	movs	r2, #0
 8000dbc:	4613      	mov	r3, r2
 8000dbe:	482a      	ldr	r0, [pc, #168]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000dc0:	21c0      	movs	r1, #192	; 0xc0
 8000dc2:	f000 faa5 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000dc6:	4828      	ldr	r0, [pc, #160]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000dc8:	21c0      	movs	r1, #192	; 0xc0
 8000dca:	2200      	movs	r2, #0
 8000dcc:	4623      	mov	r3, r4
 8000dce:	f000 fa9f 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000dd2:	2d00      	cmp	r5, #0
 8000dd4:	d020      	beq.n	8000e18 <_ZN6CMotor13motor_refreshEv+0xb4>
 8000dd6:	dd16      	ble.n	8000e06 <_ZN6CMotor13motor_refreshEv+0xa2>
 8000dd8:	2d06      	cmp	r5, #6
 8000dda:	bfb8      	it	lt
 8000ddc:	2506      	movlt	r5, #6
 8000dde:	00ad      	lsls	r5, r5, #2
 8000de0:	f045 0501 	orr.w	r5, r5, #1
 8000de4:	e016      	b.n	8000e14 <_ZN6CMotor13motor_refreshEv+0xb0>
 8000de6:	2c00      	cmp	r4, #0
 8000de8:	d1cb      	bne.n	8000d82 <_ZN6CMotor13motor_refreshEv+0x1e>
 8000dea:	481f      	ldr	r0, [pc, #124]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000dec:	21c0      	movs	r1, #192	; 0xc0
 8000dee:	4622      	mov	r2, r4
 8000df0:	4623      	mov	r3, r4
 8000df2:	f000 fa8d 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000df6:	481c      	ldr	r0, [pc, #112]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000df8:	21c0      	movs	r1, #192	; 0xc0
 8000dfa:	4622      	mov	r2, r4
 8000dfc:	231b      	movs	r3, #27
 8000dfe:	f000 fa87 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000e02:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000e06:	426d      	negs	r5, r5
 8000e08:	2d06      	cmp	r5, #6
 8000e0a:	bfb8      	it	lt
 8000e0c:	2506      	movlt	r5, #6
 8000e0e:	00ad      	lsls	r5, r5, #2
 8000e10:	f045 0502 	orr.w	r5, r5, #2
 8000e14:	b2ed      	uxtb	r5, r5
 8000e16:	e000      	b.n	8000e1a <_ZN6CMotor13motor_refreshEv+0xb6>
 8000e18:	251b      	movs	r5, #27
 8000e1a:	2200      	movs	r2, #0
 8000e1c:	4613      	mov	r3, r2
 8000e1e:	4812      	ldr	r0, [pc, #72]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000e20:	21c2      	movs	r1, #194	; 0xc2
 8000e22:	f000 fa75 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000e26:	462b      	mov	r3, r5
 8000e28:	480f      	ldr	r0, [pc, #60]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000e2a:	21c2      	movs	r1, #194	; 0xc2
 8000e2c:	2200      	movs	r2, #0
 8000e2e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000e32:	f000 ba6d 	b.w	8001310 <_ZN4CI2C9write_regEhhh>
 8000e36:	b96c      	cbnz	r4, 8000e54 <_ZN6CMotor13motor_refreshEv+0xf0>
 8000e38:	480b      	ldr	r0, [pc, #44]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000e3a:	21c0      	movs	r1, #192	; 0xc0
 8000e3c:	4622      	mov	r2, r4
 8000e3e:	4623      	mov	r3, r4
 8000e40:	f000 fa66 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000e44:	4808      	ldr	r0, [pc, #32]	; (8000e68 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000e46:	21c0      	movs	r1, #192	; 0xc0
 8000e48:	4622      	mov	r2, r4
 8000e4a:	231b      	movs	r3, #27
 8000e4c:	f000 fa60 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8000e50:	252c      	movs	r5, #44	; 0x2c
 8000e52:	e7c4      	b.n	8000dde <_ZN6CMotor13motor_refreshEv+0x7a>
 8000e54:	252c      	movs	r5, #44	; 0x2c
 8000e56:	e796      	b.n	8000d86 <_ZN6CMotor13motor_refreshEv+0x22>
 8000e58:	242c      	movs	r4, #44	; 0x2c
 8000e5a:	42a5      	cmp	r5, r4
 8000e5c:	dd8c      	ble.n	8000d78 <_ZN6CMotor13motor_refreshEv+0x14>
 8000e5e:	4625      	mov	r5, r4
 8000e60:	e796      	b.n	8000d90 <_ZN6CMotor13motor_refreshEv+0x2c>
 8000e62:	252c      	movs	r5, #44	; 0x2c
 8000e64:	e79f      	b.n	8000da6 <_ZN6CMotor13motor_refreshEv+0x42>
 8000e66:	bf00      	nop
 8000e68:	20000160 	.word	0x20000160

08000e6c <_ZN6CMotor9set_motorEml>:
 8000e6c:	2901      	cmp	r1, #1
 8000e6e:	bf98      	it	ls
 8000e70:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000e74:	f7ff bf76 	b.w	8000d64 <_ZN6CMotor13motor_refreshEv>

08000e78 <_ZN6CMotor10motor_initEv>:
 8000e78:	b510      	push	{r4, lr}
 8000e7a:	2100      	movs	r1, #0
 8000e7c:	4604      	mov	r4, r0
 8000e7e:	460a      	mov	r2, r1
 8000e80:	f7ff fff4 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8000e84:	4620      	mov	r0, r4
 8000e86:	2101      	movs	r1, #1
 8000e88:	2200      	movs	r2, #0
 8000e8a:	f7ff ffef 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8000e8e:	4620      	mov	r0, r4
 8000e90:	f7ff ff68 	bl	8000d64 <_ZN6CMotor13motor_refreshEv>
 8000e94:	2000      	movs	r0, #0
 8000e96:	bd10      	pop	{r4, pc}

08000e98 <_ZN6CMotor10set_motorsEll>:
 8000e98:	e880 0006 	stmia.w	r0, {r1, r2}
 8000e9c:	f7ff bf62 	b.w	8000d64 <_ZN6CMotor13motor_refreshEv>

08000ea0 <_ZN8CSensors12sensors_initEv>:
 8000ea0:	b510      	push	{r4, lr}
 8000ea2:	4604      	mov	r4, r0
 8000ea4:	4808      	ldr	r0, [pc, #32]	; (8000ec8 <_ZN8CSensors12sensors_initEv+0x28>)
 8000ea6:	f000 f9b1 	bl	800120c <_ZN4CI2C4initEv>
 8000eaa:	4620      	mov	r0, r4
 8000eac:	f7ff fec0 	bl	8000c30 <_ZN4CRGB8rgb_initEv>
 8000eb0:	b110      	cbz	r0, 8000eb8 <_ZN8CSensors12sensors_initEv+0x18>
 8000eb2:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000eb6:	bd10      	pop	{r4, pc}
 8000eb8:	f104 0084 	add.w	r0, r4, #132	; 0x84
 8000ebc:	f000 fb36 	bl	800152c <_ZN4CIMU8imu_initEv>
 8000ec0:	b108      	cbz	r0, 8000ec6 <_ZN8CSensors12sensors_initEv+0x26>
 8000ec2:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000ec6:	bd10      	pop	{r4, pc}
 8000ec8:	20000160 	.word	0x20000160

08000ecc <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000ecc:	2365      	movs	r3, #101	; 0x65
 8000ece:	3b01      	subs	r3, #1
 8000ed0:	d001      	beq.n	8000ed6 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000ed2:	bf00      	nop
 8000ed4:	e7fb      	b.n	8000ece <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000ed6:	4770      	bx	lr

08000ed8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000ed8:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000eda:	2301      	movs	r3, #1
 8000edc:	2203      	movs	r2, #3
 8000ede:	4605      	mov	r5, r0
 8000ee0:	24f0      	movs	r4, #240	; 0xf0
 8000ee2:	f88d 3004 	strb.w	r3, [sp, #4]
 8000ee6:	f88d 3006 	strb.w	r3, [sp, #6]
 8000eea:	4669      	mov	r1, sp
 8000eec:	2300      	movs	r3, #0
 8000eee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ef2:	f88d 2005 	strb.w	r2, [sp, #5]
 8000ef6:	f88d 3007 	strb.w	r3, [sp, #7]
 8000efa:	9400      	str	r4, [sp, #0]
 8000efc:	f001 fe62 	bl	8002bc4 <GPIO_Init>
 8000f00:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000f04:	4628      	mov	r0, r5
 8000f06:	851c      	strh	r4, [r3, #40]	; 0x28
 8000f08:	f7ff ffe0 	bl	8000ecc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000f0c:	b003      	add	sp, #12
 8000f0e:	bd30      	pop	{r4, r5, pc}

08000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000f10:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000f12:	2300      	movs	r3, #0
 8000f14:	2203      	movs	r2, #3
 8000f16:	4605      	mov	r5, r0
 8000f18:	24f0      	movs	r4, #240	; 0xf0
 8000f1a:	4669      	mov	r1, sp
 8000f1c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000f20:	f88d 3004 	strb.w	r3, [sp, #4]
 8000f24:	f88d 2005 	strb.w	r2, [sp, #5]
 8000f28:	f88d 3007 	strb.w	r3, [sp, #7]
 8000f2c:	9400      	str	r4, [sp, #0]
 8000f2e:	f001 fe49 	bl	8002bc4 <GPIO_Init>
 8000f32:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000f36:	4628      	mov	r0, r5
 8000f38:	619c      	str	r4, [r3, #24]
 8000f3a:	f7ff ffc7 	bl	8000ecc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000f3e:	b003      	add	sp, #12
 8000f40:	bd30      	pop	{r4, r5, pc}
	...

08000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000f44:	4b02      	ldr	r3, [pc, #8]	; (8000f50 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000f46:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000f4a:	851a      	strh	r2, [r3, #40]	; 0x28
 8000f4c:	f7ff bfbe 	b.w	8000ecc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000f50:	48000800 	.word	0x48000800

08000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000f54:	4b02      	ldr	r3, [pc, #8]	; (8000f60 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000f56:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000f5a:	619a      	str	r2, [r3, #24]
 8000f5c:	f7ff bfb6 	b.w	8000ecc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000f60:	48000800 	.word	0x48000800

08000f64 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000f64:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000f66:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000f6a:	4605      	mov	r5, r0
 8000f6c:	2400      	movs	r4, #0
 8000f6e:	9300      	str	r3, [sp, #0]
 8000f70:	2703      	movs	r7, #3
 8000f72:	2301      	movs	r3, #1
 8000f74:	4817      	ldr	r0, [pc, #92]	; (8000fd4 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8000f76:	f88d 3004 	strb.w	r3, [sp, #4]
 8000f7a:	4669      	mov	r1, sp
 8000f7c:	26f0      	movs	r6, #240	; 0xf0
 8000f7e:	f88d 7005 	strb.w	r7, [sp, #5]
 8000f82:	f88d 4006 	strb.w	r4, [sp, #6]
 8000f86:	f88d 4007 	strb.w	r4, [sp, #7]
 8000f8a:	f001 fe1b 	bl	8002bc4 <GPIO_Init>
 8000f8e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000f92:	4669      	mov	r1, sp
 8000f94:	9600      	str	r6, [sp, #0]
 8000f96:	f88d 4004 	strb.w	r4, [sp, #4]
 8000f9a:	f88d 7005 	strb.w	r7, [sp, #5]
 8000f9e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000fa2:	f001 fe0f 	bl	8002bc4 <GPIO_Init>
 8000fa6:	4631      	mov	r1, r6
 8000fa8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000fac:	f001 fe4c 	bl	8002c48 <GPIO_SetBits>
 8000fb0:	4628      	mov	r0, r5
 8000fb2:	f7ff ffcf 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000fb6:	4628      	mov	r0, r5
 8000fb8:	f7ff ff8e 	bl	8000ed8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000fbc:	4628      	mov	r0, r5
 8000fbe:	f7ff ffa7 	bl	8000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000fc2:	f242 7311 	movw	r3, #10001	; 0x2711
 8000fc6:	3b01      	subs	r3, #1
 8000fc8:	d001      	beq.n	8000fce <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 8000fca:	bf00      	nop
 8000fcc:	e7fb      	b.n	8000fc6 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 8000fce:	b003      	add	sp, #12
 8000fd0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000fd2:	bf00      	nop
 8000fd4:	48000800 	.word	0x48000800

08000fd8 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000fd8:	b510      	push	{r4, lr}
 8000fda:	4604      	mov	r4, r0
 8000fdc:	f7ff ffba 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000fe0:	4620      	mov	r0, r4
 8000fe2:	f7ff ff95 	bl	8000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000fe6:	4620      	mov	r0, r4
 8000fe8:	f7ff ffb4 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000fec:	4620      	mov	r0, r4
 8000fee:	f7ff ff73 	bl	8000ed8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000ff2:	4620      	mov	r0, r4
 8000ff4:	f7ff ffa6 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000ff8:	4620      	mov	r0, r4
 8000ffa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000ffe:	f7ff bf87 	b.w	8000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08001002 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8001002:	b510      	push	{r4, lr}
 8001004:	4604      	mov	r4, r0
 8001006:	f7ff ff9d 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800100a:	4620      	mov	r0, r4
 800100c:	f7ff ff64 	bl	8000ed8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001010:	4620      	mov	r0, r4
 8001012:	f7ff ff9f 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001016:	4620      	mov	r0, r4
 8001018:	f7ff ff5e 	bl	8000ed8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800101c:	4620      	mov	r0, r4
 800101e:	f7ff ff99 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001022:	4620      	mov	r0, r4
 8001024:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001028:	f7ff bf72 	b.w	8000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 800102c:	b570      	push	{r4, r5, r6, lr}
 800102e:	4604      	mov	r4, r0
 8001030:	460e      	mov	r6, r1
 8001032:	2508      	movs	r5, #8
 8001034:	4620      	mov	r0, r4
 8001036:	f7ff ff85 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800103a:	0633      	lsls	r3, r6, #24
 800103c:	4620      	mov	r0, r4
 800103e:	d502      	bpl.n	8001046 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8001040:	f7ff ff66 	bl	8000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001044:	e001      	b.n	800104a <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8001046:	f7ff ff47 	bl	8000ed8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800104a:	4620      	mov	r0, r4
 800104c:	3d01      	subs	r5, #1
 800104e:	f7ff ff81 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001052:	0076      	lsls	r6, r6, #1
 8001054:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001058:	b2f6      	uxtb	r6, r6
 800105a:	d1eb      	bne.n	8001034 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 800105c:	4620      	mov	r0, r4
 800105e:	f7ff ff71 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001062:	4620      	mov	r0, r4
 8001064:	f7ff ff54 	bl	8000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001068:	4620      	mov	r0, r4
 800106a:	f7ff ff73 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800106e:	4620      	mov	r0, r4
 8001070:	f7ff ff68 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001074:	4620      	mov	r0, r4
 8001076:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800107a:	f7ff bf27 	b.w	8000ecc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

0800107e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 800107e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001080:	4604      	mov	r4, r0
 8001082:	460f      	mov	r7, r1
 8001084:	4616      	mov	r6, r2
 8001086:	461d      	mov	r5, r3
 8001088:	f7ff ffa6 	bl	8000fd8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800108c:	4620      	mov	r0, r4
 800108e:	4639      	mov	r1, r7
 8001090:	f7ff ffcc 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001094:	4620      	mov	r0, r4
 8001096:	4631      	mov	r1, r6
 8001098:	f7ff ffc8 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800109c:	4620      	mov	r0, r4
 800109e:	4629      	mov	r1, r5
 80010a0:	f7ff ffc4 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80010a4:	4620      	mov	r0, r4
 80010a6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80010aa:	f7ff bfaa 	b.w	8001002 <_ZN8CRGB_I2C11rgb_i2cStopEv>

080010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 80010ae:	2300      	movs	r3, #0
 80010b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80010b4:	4605      	mov	r5, r0
 80010b6:	7013      	strb	r3, [r2, #0]
 80010b8:	7053      	strb	r3, [r2, #1]
 80010ba:	7093      	strb	r3, [r2, #2]
 80010bc:	70d3      	strb	r3, [r2, #3]
 80010be:	460e      	mov	r6, r1
 80010c0:	4614      	mov	r4, r2
 80010c2:	1cd7      	adds	r7, r2, #3
 80010c4:	f7ff ff3e 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80010c8:	4628      	mov	r0, r5
 80010ca:	f7ff ff21 	bl	8000f10 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80010ce:	f04f 0808 	mov.w	r8, #8
 80010d2:	1e63      	subs	r3, r4, #1
 80010d4:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 80010d8:	0052      	lsls	r2, r2, #1
 80010da:	42bb      	cmp	r3, r7
 80010dc:	701a      	strb	r2, [r3, #0]
 80010de:	d1f9      	bne.n	80010d4 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 80010e0:	4628      	mov	r0, r5
 80010e2:	f7ff ff37 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80010e6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80010ea:	8a1b      	ldrh	r3, [r3, #16]
 80010ec:	b29b      	uxth	r3, r3
 80010ee:	06d8      	lsls	r0, r3, #27
 80010f0:	bf42      	ittt	mi
 80010f2:	7822      	ldrbmi	r2, [r4, #0]
 80010f4:	f042 0201 	orrmi.w	r2, r2, #1
 80010f8:	7022      	strbmi	r2, [r4, #0]
 80010fa:	0699      	lsls	r1, r3, #26
 80010fc:	bf42      	ittt	mi
 80010fe:	7862      	ldrbmi	r2, [r4, #1]
 8001100:	f042 0201 	orrmi.w	r2, r2, #1
 8001104:	7062      	strbmi	r2, [r4, #1]
 8001106:	065a      	lsls	r2, r3, #25
 8001108:	bf42      	ittt	mi
 800110a:	78a2      	ldrbmi	r2, [r4, #2]
 800110c:	f042 0201 	orrmi.w	r2, r2, #1
 8001110:	70a2      	strbmi	r2, [r4, #2]
 8001112:	061b      	lsls	r3, r3, #24
 8001114:	bf42      	ittt	mi
 8001116:	78e3      	ldrbmi	r3, [r4, #3]
 8001118:	f043 0301 	orrmi.w	r3, r3, #1
 800111c:	70e3      	strbmi	r3, [r4, #3]
 800111e:	4628      	mov	r0, r5
 8001120:	f7ff ff10 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001124:	f1b8 0801 	subs.w	r8, r8, #1
 8001128:	d1d3      	bne.n	80010d2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 800112a:	b116      	cbz	r6, 8001132 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 800112c:	4628      	mov	r0, r5
 800112e:	f7ff fed3 	bl	8000ed8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001132:	4628      	mov	r0, r5
 8001134:	f7ff ff0e 	bl	8000f54 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001138:	4628      	mov	r0, r5
 800113a:	f7ff ff03 	bl	8000f44 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800113e:	4628      	mov	r0, r5
 8001140:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001144:	f7ff bec2 	b.w	8000ecc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08001148 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8001148:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800114a:	4604      	mov	r4, r0
 800114c:	460d      	mov	r5, r1
 800114e:	4617      	mov	r7, r2
 8001150:	461e      	mov	r6, r3
 8001152:	f7ff ff41 	bl	8000fd8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8001156:	4620      	mov	r0, r4
 8001158:	4629      	mov	r1, r5
 800115a:	f7ff ff67 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800115e:	4639      	mov	r1, r7
 8001160:	4620      	mov	r0, r4
 8001162:	f7ff ff63 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001166:	4620      	mov	r0, r4
 8001168:	f7ff ff36 	bl	8000fd8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800116c:	4620      	mov	r0, r4
 800116e:	f045 0101 	orr.w	r1, r5, #1
 8001172:	f7ff ff5b 	bl	800102c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001176:	4620      	mov	r0, r4
 8001178:	4632      	mov	r2, r6
 800117a:	2100      	movs	r1, #0
 800117c:	f7ff ff97 	bl	80010ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001180:	4620      	mov	r0, r4
 8001182:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001186:	f7ff bf3c 	b.w	8001002 <_ZN8CRGB_I2C11rgb_i2cStopEv>

0800118a <_ZN4CI2C5delayEv>:
 800118a:	230b      	movs	r3, #11
 800118c:	3b01      	subs	r3, #1
 800118e:	d001      	beq.n	8001194 <_ZN4CI2C5delayEv+0xa>
 8001190:	bf00      	nop
 8001192:	e7fb      	b.n	800118c <_ZN4CI2C5delayEv+0x2>
 8001194:	4770      	bx	lr
	...

08001198 <_ZN4CI2C9SetLowSDAEv>:
 8001198:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800119a:	4c0c      	ldr	r4, [pc, #48]	; (80011cc <_ZN4CI2C9SetLowSDAEv+0x34>)
 800119c:	2301      	movs	r3, #1
 800119e:	2203      	movs	r2, #3
 80011a0:	4606      	mov	r6, r0
 80011a2:	2580      	movs	r5, #128	; 0x80
 80011a4:	f88d 3004 	strb.w	r3, [sp, #4]
 80011a8:	f88d 3006 	strb.w	r3, [sp, #6]
 80011ac:	4620      	mov	r0, r4
 80011ae:	2300      	movs	r3, #0
 80011b0:	4669      	mov	r1, sp
 80011b2:	f88d 2005 	strb.w	r2, [sp, #5]
 80011b6:	f88d 3007 	strb.w	r3, [sp, #7]
 80011ba:	9500      	str	r5, [sp, #0]
 80011bc:	f001 fd02 	bl	8002bc4 <GPIO_Init>
 80011c0:	8525      	strh	r5, [r4, #40]	; 0x28
 80011c2:	4630      	mov	r0, r6
 80011c4:	f7ff ffe1 	bl	800118a <_ZN4CI2C5delayEv>
 80011c8:	b002      	add	sp, #8
 80011ca:	bd70      	pop	{r4, r5, r6, pc}
 80011cc:	48000400 	.word	0x48000400

080011d0 <_ZN4CI2C10SetHighSDAEv>:
 80011d0:	4b05      	ldr	r3, [pc, #20]	; (80011e8 <_ZN4CI2C10SetHighSDAEv+0x18>)
 80011d2:	681a      	ldr	r2, [r3, #0]
 80011d4:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 80011d8:	601a      	str	r2, [r3, #0]
 80011da:	681a      	ldr	r2, [r3, #0]
 80011dc:	601a      	str	r2, [r3, #0]
 80011de:	2280      	movs	r2, #128	; 0x80
 80011e0:	619a      	str	r2, [r3, #24]
 80011e2:	f7ff bfd2 	b.w	800118a <_ZN4CI2C5delayEv>
 80011e6:	bf00      	nop
 80011e8:	48000400 	.word	0x48000400

080011ec <_ZN4CI2C9SetLowSCLEv>:
 80011ec:	4b02      	ldr	r3, [pc, #8]	; (80011f8 <_ZN4CI2C9SetLowSCLEv+0xc>)
 80011ee:	2240      	movs	r2, #64	; 0x40
 80011f0:	851a      	strh	r2, [r3, #40]	; 0x28
 80011f2:	f7ff bfca 	b.w	800118a <_ZN4CI2C5delayEv>
 80011f6:	bf00      	nop
 80011f8:	48000400 	.word	0x48000400

080011fc <_ZN4CI2C10SetHighSCLEv>:
 80011fc:	4b02      	ldr	r3, [pc, #8]	; (8001208 <_ZN4CI2C10SetHighSCLEv+0xc>)
 80011fe:	2240      	movs	r2, #64	; 0x40
 8001200:	619a      	str	r2, [r3, #24]
 8001202:	f7ff bfc2 	b.w	800118a <_ZN4CI2C5delayEv>
 8001206:	bf00      	nop
 8001208:	48000400 	.word	0x48000400

0800120c <_ZN4CI2C4initEv>:
 800120c:	b513      	push	{r0, r1, r4, lr}
 800120e:	4604      	mov	r4, r0
 8001210:	2101      	movs	r1, #1
 8001212:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001216:	f001 fa69 	bl	80026ec <RCC_AHBPeriphClockCmd>
 800121a:	23c0      	movs	r3, #192	; 0xc0
 800121c:	9300      	str	r3, [sp, #0]
 800121e:	2301      	movs	r3, #1
 8001220:	2203      	movs	r2, #3
 8001222:	4669      	mov	r1, sp
 8001224:	f88d 3004 	strb.w	r3, [sp, #4]
 8001228:	f88d 3006 	strb.w	r3, [sp, #6]
 800122c:	4809      	ldr	r0, [pc, #36]	; (8001254 <_ZN4CI2C4initEv+0x48>)
 800122e:	f88d 2005 	strb.w	r2, [sp, #5]
 8001232:	2300      	movs	r3, #0
 8001234:	f88d 3007 	strb.w	r3, [sp, #7]
 8001238:	f001 fcc4 	bl	8002bc4 <GPIO_Init>
 800123c:	4620      	mov	r0, r4
 800123e:	f7ff ffdd 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 8001242:	4620      	mov	r0, r4
 8001244:	f7ff ffa8 	bl	8001198 <_ZN4CI2C9SetLowSDAEv>
 8001248:	4620      	mov	r0, r4
 800124a:	f7ff ffc1 	bl	80011d0 <_ZN4CI2C10SetHighSDAEv>
 800124e:	b002      	add	sp, #8
 8001250:	bd10      	pop	{r4, pc}
 8001252:	bf00      	nop
 8001254:	48000400 	.word	0x48000400

08001258 <_ZN4CI2C5StartEv>:
 8001258:	b510      	push	{r4, lr}
 800125a:	4604      	mov	r4, r0
 800125c:	f7ff ffce 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 8001260:	4620      	mov	r0, r4
 8001262:	f7ff ffb5 	bl	80011d0 <_ZN4CI2C10SetHighSDAEv>
 8001266:	4620      	mov	r0, r4
 8001268:	f7ff ffc8 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 800126c:	4620      	mov	r0, r4
 800126e:	f7ff ff93 	bl	8001198 <_ZN4CI2C9SetLowSDAEv>
 8001272:	4620      	mov	r0, r4
 8001274:	f7ff ffba 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 8001278:	4620      	mov	r0, r4
 800127a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800127e:	f7ff bfa7 	b.w	80011d0 <_ZN4CI2C10SetHighSDAEv>

08001282 <_ZN4CI2C4StopEv>:
 8001282:	b510      	push	{r4, lr}
 8001284:	4604      	mov	r4, r0
 8001286:	f7ff ffb1 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 800128a:	4620      	mov	r0, r4
 800128c:	f7ff ff84 	bl	8001198 <_ZN4CI2C9SetLowSDAEv>
 8001290:	4620      	mov	r0, r4
 8001292:	f7ff ffb3 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 8001296:	4620      	mov	r0, r4
 8001298:	f7ff ff7e 	bl	8001198 <_ZN4CI2C9SetLowSDAEv>
 800129c:	4620      	mov	r0, r4
 800129e:	f7ff ffad 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 80012a2:	4620      	mov	r0, r4
 80012a4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80012a8:	f7ff bf92 	b.w	80011d0 <_ZN4CI2C10SetHighSDAEv>

080012ac <_ZN4CI2C5WriteEh>:
 80012ac:	b570      	push	{r4, r5, r6, lr}
 80012ae:	4604      	mov	r4, r0
 80012b0:	460e      	mov	r6, r1
 80012b2:	2508      	movs	r5, #8
 80012b4:	4620      	mov	r0, r4
 80012b6:	f7ff ff99 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 80012ba:	0633      	lsls	r3, r6, #24
 80012bc:	4620      	mov	r0, r4
 80012be:	d502      	bpl.n	80012c6 <_ZN4CI2C5WriteEh+0x1a>
 80012c0:	f7ff ff86 	bl	80011d0 <_ZN4CI2C10SetHighSDAEv>
 80012c4:	e001      	b.n	80012ca <_ZN4CI2C5WriteEh+0x1e>
 80012c6:	f7ff ff67 	bl	8001198 <_ZN4CI2C9SetLowSDAEv>
 80012ca:	4620      	mov	r0, r4
 80012cc:	3d01      	subs	r5, #1
 80012ce:	f7ff ff95 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 80012d2:	0076      	lsls	r6, r6, #1
 80012d4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80012d8:	b2f6      	uxtb	r6, r6
 80012da:	d1eb      	bne.n	80012b4 <_ZN4CI2C5WriteEh+0x8>
 80012dc:	4620      	mov	r0, r4
 80012de:	f7ff ff85 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 80012e2:	4620      	mov	r0, r4
 80012e4:	f7ff ff74 	bl	80011d0 <_ZN4CI2C10SetHighSDAEv>
 80012e8:	4620      	mov	r0, r4
 80012ea:	f7ff ff87 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 80012ee:	4b07      	ldr	r3, [pc, #28]	; (800130c <_ZN4CI2C5WriteEh+0x60>)
 80012f0:	8a1d      	ldrh	r5, [r3, #16]
 80012f2:	4620      	mov	r0, r4
 80012f4:	f7ff ff7a 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 80012f8:	b2ad      	uxth	r5, r5
 80012fa:	4620      	mov	r0, r4
 80012fc:	f7ff ff45 	bl	800118a <_ZN4CI2C5delayEv>
 8001300:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8001304:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001308:	bd70      	pop	{r4, r5, r6, pc}
 800130a:	bf00      	nop
 800130c:	48000400 	.word	0x48000400

08001310 <_ZN4CI2C9write_regEhhh>:
 8001310:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001312:	4604      	mov	r4, r0
 8001314:	460f      	mov	r7, r1
 8001316:	4616      	mov	r6, r2
 8001318:	461d      	mov	r5, r3
 800131a:	f7ff ff9d 	bl	8001258 <_ZN4CI2C5StartEv>
 800131e:	4639      	mov	r1, r7
 8001320:	4620      	mov	r0, r4
 8001322:	f7ff ffc3 	bl	80012ac <_ZN4CI2C5WriteEh>
 8001326:	4631      	mov	r1, r6
 8001328:	4620      	mov	r0, r4
 800132a:	f7ff ffbf 	bl	80012ac <_ZN4CI2C5WriteEh>
 800132e:	4620      	mov	r0, r4
 8001330:	4629      	mov	r1, r5
 8001332:	f7ff ffbb 	bl	80012ac <_ZN4CI2C5WriteEh>
 8001336:	4620      	mov	r0, r4
 8001338:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800133c:	f7ff bfa1 	b.w	8001282 <_ZN4CI2C4StopEv>

08001340 <_ZN4CI2C4ReadEh>:
 8001340:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001342:	4605      	mov	r5, r0
 8001344:	460f      	mov	r7, r1
 8001346:	f7ff ff51 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 800134a:	2608      	movs	r6, #8
 800134c:	2400      	movs	r4, #0
 800134e:	4628      	mov	r0, r5
 8001350:	f7ff ff54 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 8001354:	4b10      	ldr	r3, [pc, #64]	; (8001398 <_ZN4CI2C4ReadEh+0x58>)
 8001356:	8a1b      	ldrh	r3, [r3, #16]
 8001358:	0064      	lsls	r4, r4, #1
 800135a:	061b      	lsls	r3, r3, #24
 800135c:	b2e4      	uxtb	r4, r4
 800135e:	4628      	mov	r0, r5
 8001360:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8001364:	bf48      	it	mi
 8001366:	f044 0401 	orrmi.w	r4, r4, #1
 800136a:	f7ff ff3f 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 800136e:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8001372:	d1ec      	bne.n	800134e <_ZN4CI2C4ReadEh+0xe>
 8001374:	4628      	mov	r0, r5
 8001376:	b117      	cbz	r7, 800137e <_ZN4CI2C4ReadEh+0x3e>
 8001378:	f7ff ff0e 	bl	8001198 <_ZN4CI2C9SetLowSDAEv>
 800137c:	e001      	b.n	8001382 <_ZN4CI2C4ReadEh+0x42>
 800137e:	f7ff ff27 	bl	80011d0 <_ZN4CI2C10SetHighSDAEv>
 8001382:	4628      	mov	r0, r5
 8001384:	f7ff ff3a 	bl	80011fc <_ZN4CI2C10SetHighSCLEv>
 8001388:	4628      	mov	r0, r5
 800138a:	f7ff ff2f 	bl	80011ec <_ZN4CI2C9SetLowSCLEv>
 800138e:	4628      	mov	r0, r5
 8001390:	f7ff ff1e 	bl	80011d0 <_ZN4CI2C10SetHighSDAEv>
 8001394:	4620      	mov	r0, r4
 8001396:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001398:	48000400 	.word	0x48000400

0800139c <_ZN4CI2C8read_regEhh>:
 800139c:	b570      	push	{r4, r5, r6, lr}
 800139e:	4604      	mov	r4, r0
 80013a0:	460d      	mov	r5, r1
 80013a2:	4616      	mov	r6, r2
 80013a4:	f7ff ff58 	bl	8001258 <_ZN4CI2C5StartEv>
 80013a8:	4629      	mov	r1, r5
 80013aa:	4620      	mov	r0, r4
 80013ac:	f7ff ff7e 	bl	80012ac <_ZN4CI2C5WriteEh>
 80013b0:	4631      	mov	r1, r6
 80013b2:	4620      	mov	r0, r4
 80013b4:	f7ff ff7a 	bl	80012ac <_ZN4CI2C5WriteEh>
 80013b8:	4620      	mov	r0, r4
 80013ba:	f7ff ff4d 	bl	8001258 <_ZN4CI2C5StartEv>
 80013be:	f045 0101 	orr.w	r1, r5, #1
 80013c2:	4620      	mov	r0, r4
 80013c4:	f7ff ff72 	bl	80012ac <_ZN4CI2C5WriteEh>
 80013c8:	2100      	movs	r1, #0
 80013ca:	4620      	mov	r0, r4
 80013cc:	f7ff ffb8 	bl	8001340 <_ZN4CI2C4ReadEh>
 80013d0:	4605      	mov	r5, r0
 80013d2:	4620      	mov	r0, r4
 80013d4:	f7ff ff55 	bl	8001282 <_ZN4CI2C4StopEv>
 80013d8:	4628      	mov	r0, r5
 80013da:	bd70      	pop	{r4, r5, r6, pc}

080013dc <_ZN4CIMU8imu_readEv>:
 80013dc:	b570      	push	{r4, r5, r6, lr}
 80013de:	4c52      	ldr	r4, [pc, #328]	; (8001528 <_ZN4CIMU8imu_readEv+0x14c>)
 80013e0:	4605      	mov	r5, r0
 80013e2:	4620      	mov	r0, r4
 80013e4:	f7ff ff38 	bl	8001258 <_ZN4CI2C5StartEv>
 80013e8:	4620      	mov	r0, r4
 80013ea:	21d4      	movs	r1, #212	; 0xd4
 80013ec:	f7ff ff5e 	bl	80012ac <_ZN4CI2C5WriteEh>
 80013f0:	21a8      	movs	r1, #168	; 0xa8
 80013f2:	4620      	mov	r0, r4
 80013f4:	f7ff ff5a 	bl	80012ac <_ZN4CI2C5WriteEh>
 80013f8:	4620      	mov	r0, r4
 80013fa:	f7ff ff2d 	bl	8001258 <_ZN4CI2C5StartEv>
 80013fe:	4620      	mov	r0, r4
 8001400:	21d5      	movs	r1, #213	; 0xd5
 8001402:	f7ff ff53 	bl	80012ac <_ZN4CI2C5WriteEh>
 8001406:	4620      	mov	r0, r4
 8001408:	2101      	movs	r1, #1
 800140a:	f7ff ff99 	bl	8001340 <_ZN4CI2C4ReadEh>
 800140e:	2101      	movs	r1, #1
 8001410:	b286      	uxth	r6, r0
 8001412:	4620      	mov	r0, r4
 8001414:	f7ff ff94 	bl	8001340 <_ZN4CI2C4ReadEh>
 8001418:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800141c:	b200      	sxth	r0, r0
 800141e:	6268      	str	r0, [r5, #36]	; 0x24
 8001420:	2101      	movs	r1, #1
 8001422:	4620      	mov	r0, r4
 8001424:	f7ff ff8c 	bl	8001340 <_ZN4CI2C4ReadEh>
 8001428:	2101      	movs	r1, #1
 800142a:	b286      	uxth	r6, r0
 800142c:	4620      	mov	r0, r4
 800142e:	f7ff ff87 	bl	8001340 <_ZN4CI2C4ReadEh>
 8001432:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001436:	b200      	sxth	r0, r0
 8001438:	62a8      	str	r0, [r5, #40]	; 0x28
 800143a:	2101      	movs	r1, #1
 800143c:	4620      	mov	r0, r4
 800143e:	f7ff ff7f 	bl	8001340 <_ZN4CI2C4ReadEh>
 8001442:	2100      	movs	r1, #0
 8001444:	b286      	uxth	r6, r0
 8001446:	4620      	mov	r0, r4
 8001448:	f7ff ff7a 	bl	8001340 <_ZN4CI2C4ReadEh>
 800144c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001450:	b200      	sxth	r0, r0
 8001452:	62e8      	str	r0, [r5, #44]	; 0x2c
 8001454:	4620      	mov	r0, r4
 8001456:	f7ff ff14 	bl	8001282 <_ZN4CI2C4StopEv>
 800145a:	4620      	mov	r0, r4
 800145c:	f7ff fefc 	bl	8001258 <_ZN4CI2C5StartEv>
 8001460:	4620      	mov	r0, r4
 8001462:	213c      	movs	r1, #60	; 0x3c
 8001464:	f7ff ff22 	bl	80012ac <_ZN4CI2C5WriteEh>
 8001468:	21a8      	movs	r1, #168	; 0xa8
 800146a:	4620      	mov	r0, r4
 800146c:	f7ff ff1e 	bl	80012ac <_ZN4CI2C5WriteEh>
 8001470:	4620      	mov	r0, r4
 8001472:	f7ff fef1 	bl	8001258 <_ZN4CI2C5StartEv>
 8001476:	4620      	mov	r0, r4
 8001478:	213d      	movs	r1, #61	; 0x3d
 800147a:	f7ff ff17 	bl	80012ac <_ZN4CI2C5WriteEh>
 800147e:	4620      	mov	r0, r4
 8001480:	2101      	movs	r1, #1
 8001482:	f7ff ff5d 	bl	8001340 <_ZN4CI2C4ReadEh>
 8001486:	2101      	movs	r1, #1
 8001488:	b286      	uxth	r6, r0
 800148a:	4620      	mov	r0, r4
 800148c:	f7ff ff58 	bl	8001340 <_ZN4CI2C4ReadEh>
 8001490:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001494:	b200      	sxth	r0, r0
 8001496:	6328      	str	r0, [r5, #48]	; 0x30
 8001498:	2101      	movs	r1, #1
 800149a:	4620      	mov	r0, r4
 800149c:	f7ff ff50 	bl	8001340 <_ZN4CI2C4ReadEh>
 80014a0:	2101      	movs	r1, #1
 80014a2:	b286      	uxth	r6, r0
 80014a4:	4620      	mov	r0, r4
 80014a6:	f7ff ff4b 	bl	8001340 <_ZN4CI2C4ReadEh>
 80014aa:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80014ae:	b200      	sxth	r0, r0
 80014b0:	6368      	str	r0, [r5, #52]	; 0x34
 80014b2:	2101      	movs	r1, #1
 80014b4:	4620      	mov	r0, r4
 80014b6:	f7ff ff43 	bl	8001340 <_ZN4CI2C4ReadEh>
 80014ba:	2100      	movs	r1, #0
 80014bc:	b286      	uxth	r6, r0
 80014be:	4620      	mov	r0, r4
 80014c0:	f7ff ff3e 	bl	8001340 <_ZN4CI2C4ReadEh>
 80014c4:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80014c8:	b200      	sxth	r0, r0
 80014ca:	63a8      	str	r0, [r5, #56]	; 0x38
 80014cc:	4620      	mov	r0, r4
 80014ce:	f7ff fed8 	bl	8001282 <_ZN4CI2C4StopEv>
 80014d2:	686a      	ldr	r2, [r5, #4]
 80014d4:	6aab      	ldr	r3, [r5, #40]	; 0x28
 80014d6:	68a8      	ldr	r0, [r5, #8]
 80014d8:	1a9b      	subs	r3, r3, r2
 80014da:	68ea      	ldr	r2, [r5, #12]
 80014dc:	26c8      	movs	r6, #200	; 0xc8
 80014de:	fb93 f3f6 	sdiv	r3, r3, r6
 80014e2:	441a      	add	r2, r3
 80014e4:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 80014e6:	60ea      	str	r2, [r5, #12]
 80014e8:	2155      	movs	r1, #85	; 0x55
 80014ea:	4359      	muls	r1, r3
 80014ec:	f640 14e2 	movw	r4, #2530	; 0x9e2
 80014f0:	434a      	muls	r2, r1
 80014f2:	6a6b      	ldr	r3, [r5, #36]	; 0x24
 80014f4:	fb92 f2f4 	sdiv	r2, r2, r4
 80014f8:	61aa      	str	r2, [r5, #24]
 80014fa:	682a      	ldr	r2, [r5, #0]
 80014fc:	1a9b      	subs	r3, r3, r2
 80014fe:	692a      	ldr	r2, [r5, #16]
 8001500:	fb93 f3f6 	sdiv	r3, r3, r6
 8001504:	441a      	add	r2, r3
 8001506:	612a      	str	r2, [r5, #16]
 8001508:	434a      	muls	r2, r1
 800150a:	fb92 f2f4 	sdiv	r2, r2, r4
 800150e:	61ea      	str	r2, [r5, #28]
 8001510:	6aea      	ldr	r2, [r5, #44]	; 0x2c
 8001512:	1a12      	subs	r2, r2, r0
 8001514:	fb92 f0f6 	sdiv	r0, r2, r6
 8001518:	696a      	ldr	r2, [r5, #20]
 800151a:	1883      	adds	r3, r0, r2
 800151c:	616b      	str	r3, [r5, #20]
 800151e:	434b      	muls	r3, r1
 8001520:	fb93 f3f4 	sdiv	r3, r3, r4
 8001524:	622b      	str	r3, [r5, #32]
 8001526:	bd70      	pop	{r4, r5, r6, pc}
 8001528:	20000160 	.word	0x20000160

0800152c <_ZN4CIMU8imu_initEv>:
 800152c:	230a      	movs	r3, #10
 800152e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001532:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001534:	2300      	movs	r3, #0
 8001536:	4604      	mov	r4, r0
 8001538:	6003      	str	r3, [r0, #0]
 800153a:	6043      	str	r3, [r0, #4]
 800153c:	6083      	str	r3, [r0, #8]
 800153e:	60c3      	str	r3, [r0, #12]
 8001540:	6103      	str	r3, [r0, #16]
 8001542:	6143      	str	r3, [r0, #20]
 8001544:	f242 7511 	movw	r5, #10001	; 0x2711
 8001548:	3d01      	subs	r5, #1
 800154a:	d001      	beq.n	8001550 <_ZN4CIMU8imu_initEv+0x24>
 800154c:	bf00      	nop
 800154e:	e7fb      	b.n	8001548 <_ZN4CIMU8imu_initEv+0x1c>
 8001550:	4832      	ldr	r0, [pc, #200]	; (800161c <_ZN4CIMU8imu_initEv+0xf0>)
 8001552:	21d4      	movs	r1, #212	; 0xd4
 8001554:	220f      	movs	r2, #15
 8001556:	f7ff ff21 	bl	800139c <_ZN4CI2C8read_regEhh>
 800155a:	28d4      	cmp	r0, #212	; 0xd4
 800155c:	4606      	mov	r6, r0
 800155e:	d155      	bne.n	800160c <_ZN4CIMU8imu_initEv+0xe0>
 8001560:	482e      	ldr	r0, [pc, #184]	; (800161c <_ZN4CIMU8imu_initEv+0xf0>)
 8001562:	213c      	movs	r1, #60	; 0x3c
 8001564:	220f      	movs	r2, #15
 8001566:	f7ff ff19 	bl	800139c <_ZN4CI2C8read_regEhh>
 800156a:	2849      	cmp	r0, #73	; 0x49
 800156c:	d152      	bne.n	8001614 <_ZN4CIMU8imu_initEv+0xe8>
 800156e:	4631      	mov	r1, r6
 8001570:	482a      	ldr	r0, [pc, #168]	; (800161c <_ZN4CIMU8imu_initEv+0xf0>)
 8001572:	2220      	movs	r2, #32
 8001574:	23ff      	movs	r3, #255	; 0xff
 8001576:	f7ff fecb 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 800157a:	4631      	mov	r1, r6
 800157c:	4827      	ldr	r0, [pc, #156]	; (800161c <_ZN4CIMU8imu_initEv+0xf0>)
 800157e:	4e28      	ldr	r6, [pc, #160]	; (8001620 <_ZN4CIMU8imu_initEv+0xf4>)
 8001580:	2223      	movs	r2, #35	; 0x23
 8001582:	2310      	movs	r3, #16
 8001584:	f7ff fec4 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8001588:	4824      	ldr	r0, [pc, #144]	; (800161c <_ZN4CIMU8imu_initEv+0xf0>)
 800158a:	213c      	movs	r1, #60	; 0x3c
 800158c:	221f      	movs	r2, #31
 800158e:	462b      	mov	r3, r5
 8001590:	f7ff febe 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 8001594:	4821      	ldr	r0, [pc, #132]	; (800161c <_ZN4CIMU8imu_initEv+0xf0>)
 8001596:	213c      	movs	r1, #60	; 0x3c
 8001598:	2220      	movs	r2, #32
 800159a:	2367      	movs	r3, #103	; 0x67
 800159c:	f7ff feb8 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 80015a0:	481e      	ldr	r0, [pc, #120]	; (800161c <_ZN4CIMU8imu_initEv+0xf0>)
 80015a2:	213c      	movs	r1, #60	; 0x3c
 80015a4:	2221      	movs	r2, #33	; 0x21
 80015a6:	462b      	mov	r3, r5
 80015a8:	f7ff feb2 	bl	8001310 <_ZN4CI2C9write_regEhhh>
 80015ac:	3e01      	subs	r6, #1
 80015ae:	d001      	beq.n	80015b4 <_ZN4CIMU8imu_initEv+0x88>
 80015b0:	bf00      	nop
 80015b2:	e7fb      	b.n	80015ac <_ZN4CIMU8imu_initEv+0x80>
 80015b4:	4620      	mov	r0, r4
 80015b6:	f7ff ff11 	bl	80013dc <_ZN4CIMU8imu_readEv>
 80015ba:	2564      	movs	r5, #100	; 0x64
 80015bc:	4637      	mov	r7, r6
 80015be:	46b0      	mov	r8, r6
 80015c0:	2365      	movs	r3, #101	; 0x65
 80015c2:	3b01      	subs	r3, #1
 80015c4:	d001      	beq.n	80015ca <_ZN4CIMU8imu_initEv+0x9e>
 80015c6:	bf00      	nop
 80015c8:	e7fb      	b.n	80015c2 <_ZN4CIMU8imu_initEv+0x96>
 80015ca:	4620      	mov	r0, r4
 80015cc:	f7ff ff06 	bl	80013dc <_ZN4CIMU8imu_readEv>
 80015d0:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80015d2:	4498      	add	r8, r3
 80015d4:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80015d6:	441f      	add	r7, r3
 80015d8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80015da:	3d01      	subs	r5, #1
 80015dc:	441e      	add	r6, r3
 80015de:	d1ef      	bne.n	80015c0 <_ZN4CIMU8imu_initEv+0x94>
 80015e0:	2264      	movs	r2, #100	; 0x64
 80015e2:	6325      	str	r5, [r4, #48]	; 0x30
 80015e4:	fb98 f3f2 	sdiv	r3, r8, r2
 80015e8:	fb97 f7f2 	sdiv	r7, r7, r2
 80015ec:	fb96 f6f2 	sdiv	r6, r6, r2
 80015f0:	6023      	str	r3, [r4, #0]
 80015f2:	6067      	str	r7, [r4, #4]
 80015f4:	60a6      	str	r6, [r4, #8]
 80015f6:	6365      	str	r5, [r4, #52]	; 0x34
 80015f8:	63a5      	str	r5, [r4, #56]	; 0x38
 80015fa:	6265      	str	r5, [r4, #36]	; 0x24
 80015fc:	62a5      	str	r5, [r4, #40]	; 0x28
 80015fe:	62e5      	str	r5, [r4, #44]	; 0x2c
 8001600:	61a5      	str	r5, [r4, #24]
 8001602:	61e5      	str	r5, [r4, #28]
 8001604:	6225      	str	r5, [r4, #32]
 8001606:	4628      	mov	r0, r5
 8001608:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800160c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001610:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001614:	f06f 0001 	mvn.w	r0, #1
 8001618:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800161c:	20000160 	.word	0x20000160
 8001620:	000186a1 	.word	0x000186a1

08001624 <_ZN5CGPIO9gpio_initEv>:
 8001624:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8001628:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800162c:	2101      	movs	r1, #1
 800162e:	f001 f85d 	bl	80026ec <RCC_AHBPeriphClockCmd>
 8001632:	4f22      	ldr	r7, [pc, #136]	; (80016bc <_ZN5CGPIO9gpio_initEv+0x98>)
 8001634:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001638:	2101      	movs	r1, #1
 800163a:	f001 f857 	bl	80026ec <RCC_AHBPeriphClockCmd>
 800163e:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001642:	2101      	movs	r1, #1
 8001644:	f001 f852 	bl	80026ec <RCC_AHBPeriphClockCmd>
 8001648:	2400      	movs	r4, #0
 800164a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800164e:	2503      	movs	r5, #3
 8001650:	f04f 0801 	mov.w	r8, #1
 8001654:	4638      	mov	r0, r7
 8001656:	4669      	mov	r1, sp
 8001658:	9300      	str	r3, [sp, #0]
 800165a:	2608      	movs	r6, #8
 800165c:	f88d 8004 	strb.w	r8, [sp, #4]
 8001660:	f88d 4006 	strb.w	r4, [sp, #6]
 8001664:	f88d 5005 	strb.w	r5, [sp, #5]
 8001668:	f88d 4007 	strb.w	r4, [sp, #7]
 800166c:	f001 faaa 	bl	8002bc4 <GPIO_Init>
 8001670:	4669      	mov	r1, sp
 8001672:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001676:	9600      	str	r6, [sp, #0]
 8001678:	f88d 8004 	strb.w	r8, [sp, #4]
 800167c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001680:	f88d 5005 	strb.w	r5, [sp, #5]
 8001684:	f88d 4007 	strb.w	r4, [sp, #7]
 8001688:	f001 fa9c 	bl	8002bc4 <GPIO_Init>
 800168c:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001690:	4638      	mov	r0, r7
 8001692:	4669      	mov	r1, sp
 8001694:	9300      	str	r3, [sp, #0]
 8001696:	f88d 4004 	strb.w	r4, [sp, #4]
 800169a:	f88d 5005 	strb.w	r5, [sp, #5]
 800169e:	f88d 4007 	strb.w	r4, [sp, #7]
 80016a2:	f001 fa8f 	bl	8002bc4 <GPIO_Init>
 80016a6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80016aa:	4620      	mov	r0, r4
 80016ac:	851e      	strh	r6, [r3, #40]	; 0x28
 80016ae:	4b04      	ldr	r3, [pc, #16]	; (80016c0 <_ZN5CGPIO9gpio_initEv+0x9c>)
 80016b0:	601c      	str	r4, [r3, #0]
 80016b2:	4b04      	ldr	r3, [pc, #16]	; (80016c4 <_ZN5CGPIO9gpio_initEv+0xa0>)
 80016b4:	601c      	str	r4, [r3, #0]
 80016b6:	b002      	add	sp, #8
 80016b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80016bc:	48000400 	.word	0x48000400
 80016c0:	20000164 	.word	0x20000164
 80016c4:	20000168 	.word	0x20000168

080016c8 <_ZN5CGPIO7gpio_onEm>:
 80016c8:	2908      	cmp	r1, #8
 80016ca:	d005      	beq.n	80016d8 <_ZN5CGPIO7gpio_onEm+0x10>
 80016cc:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80016d0:	d105      	bne.n	80016de <_ZN5CGPIO7gpio_onEm+0x16>
 80016d2:	4b03      	ldr	r3, [pc, #12]	; (80016e0 <_ZN5CGPIO7gpio_onEm+0x18>)
 80016d4:	6199      	str	r1, [r3, #24]
 80016d6:	4770      	bx	lr
 80016d8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80016dc:	8519      	strh	r1, [r3, #40]	; 0x28
 80016de:	4770      	bx	lr
 80016e0:	48000400 	.word	0x48000400

080016e4 <_ZN5CGPIO8gpio_offEm>:
 80016e4:	2908      	cmp	r1, #8
 80016e6:	d005      	beq.n	80016f4 <_ZN5CGPIO8gpio_offEm+0x10>
 80016e8:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80016ec:	d105      	bne.n	80016fa <_ZN5CGPIO8gpio_offEm+0x16>
 80016ee:	4b03      	ldr	r3, [pc, #12]	; (80016fc <_ZN5CGPIO8gpio_offEm+0x18>)
 80016f0:	8519      	strh	r1, [r3, #40]	; 0x28
 80016f2:	4770      	bx	lr
 80016f4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80016f8:	6199      	str	r1, [r3, #24]
 80016fa:	4770      	bx	lr
 80016fc:	48000400 	.word	0x48000400

08001700 <_ZN5CGPIO7gpio_inEm>:
 8001700:	4b02      	ldr	r3, [pc, #8]	; (800170c <_ZN5CGPIO7gpio_inEm+0xc>)
 8001702:	8a18      	ldrh	r0, [r3, #16]
 8001704:	b280      	uxth	r0, r0
 8001706:	ea21 0000 	bic.w	r0, r1, r0
 800170a:	4770      	bx	lr
 800170c:	48000400 	.word	0x48000400

08001710 <EXTI9_5_IRQHandler>:
 8001710:	4a03      	ldr	r2, [pc, #12]	; (8001720 <EXTI9_5_IRQHandler+0x10>)
 8001712:	6813      	ldr	r3, [r2, #0]
 8001714:	2006      	movs	r0, #6
 8001716:	3301      	adds	r3, #1
 8001718:	6013      	str	r3, [r2, #0]
 800171a:	f001 ba47 	b.w	8002bac <EXTI_ClearITPendingBit>
 800171e:	bf00      	nop
 8001720:	20000164 	.word	0x20000164

08001724 <EXTI15_10_IRQHandler>:
 8001724:	4a03      	ldr	r2, [pc, #12]	; (8001734 <EXTI15_10_IRQHandler+0x10>)
 8001726:	6813      	ldr	r3, [r2, #0]
 8001728:	200c      	movs	r0, #12
 800172a:	3301      	adds	r3, #1
 800172c:	6013      	str	r3, [r2, #0]
 800172e:	f001 ba3d 	b.w	8002bac <EXTI_ClearITPendingBit>
 8001732:	bf00      	nop
 8001734:	20000168 	.word	0x20000168

08001738 <_ZN9CTerminal12clear_bufferEv>:
 8001738:	4a05      	ldr	r2, [pc, #20]	; (8001750 <_ZN9CTerminal12clear_bufferEv+0x18>)
 800173a:	2300      	movs	r3, #0
 800173c:	6013      	str	r3, [r2, #0]
 800173e:	4a05      	ldr	r2, [pc, #20]	; (8001754 <_ZN9CTerminal12clear_bufferEv+0x1c>)
 8001740:	6013      	str	r3, [r2, #0]
 8001742:	4a05      	ldr	r2, [pc, #20]	; (8001758 <_ZN9CTerminal12clear_bufferEv+0x20>)
 8001744:	2100      	movs	r1, #0
 8001746:	54d1      	strb	r1, [r2, r3]
 8001748:	3301      	adds	r3, #1
 800174a:	2b10      	cmp	r3, #16
 800174c:	d1f9      	bne.n	8001742 <_ZN9CTerminal12clear_bufferEv+0xa>
 800174e:	4770      	bx	lr
 8001750:	2000016c 	.word	0x2000016c
 8001754:	20000180 	.word	0x20000180
 8001758:	20000170 	.word	0x20000170

0800175c <_ZN9CTerminal13terminal_initEv>:
 800175c:	b570      	push	{r4, r5, r6, lr}
 800175e:	b08a      	sub	sp, #40	; 0x28
 8001760:	f7ff ffea 	bl	8001738 <_ZN9CTerminal12clear_bufferEv>
 8001764:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001768:	2101      	movs	r1, #1
 800176a:	f000 ffbf 	bl	80026ec <RCC_AHBPeriphClockCmd>
 800176e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001772:	2101      	movs	r1, #1
 8001774:	f000 ffc8 	bl	8002708 <RCC_APB2PeriphClockCmd>
 8001778:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800177c:	9302      	str	r3, [sp, #8]
 800177e:	2302      	movs	r3, #2
 8001780:	2400      	movs	r4, #0
 8001782:	f88d 300c 	strb.w	r3, [sp, #12]
 8001786:	a902      	add	r1, sp, #8
 8001788:	2303      	movs	r3, #3
 800178a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800178e:	f88d 300d 	strb.w	r3, [sp, #13]
 8001792:	f88d 400e 	strb.w	r4, [sp, #14]
 8001796:	f88d 400f 	strb.w	r4, [sp, #15]
 800179a:	f001 fa13 	bl	8002bc4 <GPIO_Init>
 800179e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80017a2:	2109      	movs	r1, #9
 80017a4:	2207      	movs	r2, #7
 80017a6:	f001 fa53 	bl	8002c50 <GPIO_PinAFConfig>
 80017aa:	4d18      	ldr	r5, [pc, #96]	; (800180c <_ZN9CTerminal13terminal_initEv+0xb0>)
 80017ac:	2207      	movs	r2, #7
 80017ae:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80017b2:	210a      	movs	r1, #10
 80017b4:	f001 fa4c 	bl	8002c50 <GPIO_PinAFConfig>
 80017b8:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80017bc:	9304      	str	r3, [sp, #16]
 80017be:	4628      	mov	r0, r5
 80017c0:	230c      	movs	r3, #12
 80017c2:	a904      	add	r1, sp, #16
 80017c4:	9308      	str	r3, [sp, #32]
 80017c6:	9405      	str	r4, [sp, #20]
 80017c8:	9406      	str	r4, [sp, #24]
 80017ca:	9407      	str	r4, [sp, #28]
 80017cc:	9409      	str	r4, [sp, #36]	; 0x24
 80017ce:	f001 f87f 	bl	80028d0 <USART_Init>
 80017d2:	4628      	mov	r0, r5
 80017d4:	2101      	movs	r1, #1
 80017d6:	f001 f8dd 	bl	8002994 <USART_Cmd>
 80017da:	2201      	movs	r2, #1
 80017dc:	4628      	mov	r0, r5
 80017de:	490c      	ldr	r1, [pc, #48]	; (8001810 <_ZN9CTerminal13terminal_initEv+0xb4>)
 80017e0:	f001 f8e8 	bl	80029b4 <USART_ITConfig>
 80017e4:	2601      	movs	r6, #1
 80017e6:	2325      	movs	r3, #37	; 0x25
 80017e8:	a801      	add	r0, sp, #4
 80017ea:	f88d 3004 	strb.w	r3, [sp, #4]
 80017ee:	f88d 4005 	strb.w	r4, [sp, #5]
 80017f2:	f88d 4006 	strb.w	r4, [sp, #6]
 80017f6:	f88d 6007 	strb.w	r6, [sp, #7]
 80017fa:	f001 f99d 	bl	8002b38 <NVIC_Init>
 80017fe:	4628      	mov	r0, r5
 8001800:	4631      	mov	r1, r6
 8001802:	f001 f8c7 	bl	8002994 <USART_Cmd>
 8001806:	4620      	mov	r0, r4
 8001808:	b00a      	add	sp, #40	; 0x28
 800180a:	bd70      	pop	{r4, r5, r6, pc}
 800180c:	40013800 	.word	0x40013800
 8001810:	00050105 	.word	0x00050105

08001814 <USART1_IRQHandler>:
 8001814:	b508      	push	{r3, lr}
 8001816:	480d      	ldr	r0, [pc, #52]	; (800184c <USART1_IRQHandler+0x38>)
 8001818:	490d      	ldr	r1, [pc, #52]	; (8001850 <USART1_IRQHandler+0x3c>)
 800181a:	f001 f8e5 	bl	80029e8 <USART_GetITStatus>
 800181e:	b178      	cbz	r0, 8001840 <USART1_IRQHandler+0x2c>
 8001820:	480a      	ldr	r0, [pc, #40]	; (800184c <USART1_IRQHandler+0x38>)
 8001822:	f001 f8c2 	bl	80029aa <USART_ReceiveData>
 8001826:	4b0b      	ldr	r3, [pc, #44]	; (8001854 <USART1_IRQHandler+0x40>)
 8001828:	490b      	ldr	r1, [pc, #44]	; (8001858 <USART1_IRQHandler+0x44>)
 800182a:	681a      	ldr	r2, [r3, #0]
 800182c:	b2c0      	uxtb	r0, r0
 800182e:	5488      	strb	r0, [r1, r2]
 8001830:	681a      	ldr	r2, [r3, #0]
 8001832:	3201      	adds	r2, #1
 8001834:	601a      	str	r2, [r3, #0]
 8001836:	681a      	ldr	r2, [r3, #0]
 8001838:	2a0f      	cmp	r2, #15
 800183a:	bf84      	itt	hi
 800183c:	2200      	movhi	r2, #0
 800183e:	601a      	strhi	r2, [r3, #0]
 8001840:	4802      	ldr	r0, [pc, #8]	; (800184c <USART1_IRQHandler+0x38>)
 8001842:	4903      	ldr	r1, [pc, #12]	; (8001850 <USART1_IRQHandler+0x3c>)
 8001844:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001848:	f001 b8ec 	b.w	8002a24 <USART_ClearITPendingBit>
 800184c:	40013800 	.word	0x40013800
 8001850:	00050105 	.word	0x00050105
 8001854:	2000016c 	.word	0x2000016c
 8001858:	20000170 	.word	0x20000170

0800185c <_ZN9CTerminal7putcharEc>:
 800185c:	4b04      	ldr	r3, [pc, #16]	; (8001870 <_ZN9CTerminal7putcharEc+0x14>)
 800185e:	69da      	ldr	r2, [r3, #28]
 8001860:	0612      	lsls	r2, r2, #24
 8001862:	d401      	bmi.n	8001868 <_ZN9CTerminal7putcharEc+0xc>
 8001864:	bf00      	nop
 8001866:	e7f9      	b.n	800185c <_ZN9CTerminal7putcharEc>
 8001868:	b289      	uxth	r1, r1
 800186a:	8519      	strh	r1, [r3, #40]	; 0x28
 800186c:	4770      	bx	lr
 800186e:	bf00      	nop
 8001870:	40013800 	.word	0x40013800

08001874 <_ZN9CTerminal6ischarEv>:
 8001874:	4b0a      	ldr	r3, [pc, #40]	; (80018a0 <_ZN9CTerminal6ischarEv+0x2c>)
 8001876:	4a0b      	ldr	r2, [pc, #44]	; (80018a4 <_ZN9CTerminal6ischarEv+0x30>)
 8001878:	6819      	ldr	r1, [r3, #0]
 800187a:	6812      	ldr	r2, [r2, #0]
 800187c:	4291      	cmp	r1, r2
 800187e:	d00c      	beq.n	800189a <_ZN9CTerminal6ischarEv+0x26>
 8001880:	681a      	ldr	r2, [r3, #0]
 8001882:	4909      	ldr	r1, [pc, #36]	; (80018a8 <_ZN9CTerminal6ischarEv+0x34>)
 8001884:	5c88      	ldrb	r0, [r1, r2]
 8001886:	681a      	ldr	r2, [r3, #0]
 8001888:	3201      	adds	r2, #1
 800188a:	601a      	str	r2, [r3, #0]
 800188c:	681a      	ldr	r2, [r3, #0]
 800188e:	2a0f      	cmp	r2, #15
 8001890:	b2c0      	uxtb	r0, r0
 8001892:	d904      	bls.n	800189e <_ZN9CTerminal6ischarEv+0x2a>
 8001894:	2200      	movs	r2, #0
 8001896:	601a      	str	r2, [r3, #0]
 8001898:	4770      	bx	lr
 800189a:	f64f 70ff 	movw	r0, #65535	; 0xffff
 800189e:	4770      	bx	lr
 80018a0:	20000180 	.word	0x20000180
 80018a4:	2000016c 	.word	0x2000016c
 80018a8:	20000170 	.word	0x20000170

080018ac <_ZN9CTerminal7getcharEv>:
 80018ac:	b510      	push	{r4, lr}
 80018ae:	4604      	mov	r4, r0
 80018b0:	4620      	mov	r0, r4
 80018b2:	f7ff ffdf 	bl	8001874 <_ZN9CTerminal6ischarEv>
 80018b6:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80018ba:	4298      	cmp	r0, r3
 80018bc:	d101      	bne.n	80018c2 <_ZN9CTerminal7getcharEv+0x16>
 80018be:	bf00      	nop
 80018c0:	e7f6      	b.n	80018b0 <_ZN9CTerminal7getcharEv+0x4>
 80018c2:	bd10      	pop	{r4, pc}

080018c4 <_ZN9CTerminal4putsEPc>:
 80018c4:	b538      	push	{r3, r4, r5, lr}
 80018c6:	4605      	mov	r5, r0
 80018c8:	1e4c      	subs	r4, r1, #1
 80018ca:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 80018ce:	b119      	cbz	r1, 80018d8 <_ZN9CTerminal4putsEPc+0x14>
 80018d0:	4628      	mov	r0, r5
 80018d2:	f7ff ffc3 	bl	800185c <_ZN9CTerminal7putcharEc>
 80018d6:	e7f8      	b.n	80018ca <_ZN9CTerminal4putsEPc+0x6>
 80018d8:	2001      	movs	r0, #1
 80018da:	bd38      	pop	{r3, r4, r5, pc}

080018dc <_ZN9CTerminal4putiEl>:
 80018dc:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 80018de:	1e0b      	subs	r3, r1, #0
 80018e0:	f04f 0200 	mov.w	r2, #0
 80018e4:	bfba      	itte	lt
 80018e6:	425b      	neglt	r3, r3
 80018e8:	2501      	movlt	r5, #1
 80018ea:	4615      	movge	r5, r2
 80018ec:	f88d 200f 	strb.w	r2, [sp, #15]
 80018f0:	210a      	movs	r1, #10
 80018f2:	220a      	movs	r2, #10
 80018f4:	ac01      	add	r4, sp, #4
 80018f6:	fb93 f6f2 	sdiv	r6, r3, r2
 80018fa:	fb02 3316 	mls	r3, r2, r6, r3
 80018fe:	3330      	adds	r3, #48	; 0x30
 8001900:	550b      	strb	r3, [r1, r4]
 8001902:	1e4a      	subs	r2, r1, #1
 8001904:	4633      	mov	r3, r6
 8001906:	b10e      	cbz	r6, 800190c <_ZN9CTerminal4putiEl+0x30>
 8001908:	4611      	mov	r1, r2
 800190a:	e7f2      	b.n	80018f2 <_ZN9CTerminal4putiEl+0x16>
 800190c:	b12d      	cbz	r5, 800191a <_ZN9CTerminal4putiEl+0x3e>
 800190e:	ab04      	add	r3, sp, #16
 8001910:	4413      	add	r3, r2
 8001912:	212d      	movs	r1, #45	; 0x2d
 8001914:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001918:	4611      	mov	r1, r2
 800191a:	4421      	add	r1, r4
 800191c:	f7ff ffd2 	bl	80018c4 <_ZN9CTerminal4putsEPc>
 8001920:	b004      	add	sp, #16
 8001922:	bd70      	pop	{r4, r5, r6, pc}

08001924 <_ZN9CTerminal5putuiEm>:
 8001924:	b530      	push	{r4, r5, lr}
 8001926:	b085      	sub	sp, #20
 8001928:	2300      	movs	r3, #0
 800192a:	f88d 300f 	strb.w	r3, [sp, #15]
 800192e:	220a      	movs	r2, #10
 8001930:	230a      	movs	r3, #10
 8001932:	ac01      	add	r4, sp, #4
 8001934:	fbb1 f5f3 	udiv	r5, r1, r3
 8001938:	fb03 1315 	mls	r3, r3, r5, r1
 800193c:	3330      	adds	r3, #48	; 0x30
 800193e:	5513      	strb	r3, [r2, r4]
 8001940:	4629      	mov	r1, r5
 8001942:	1e53      	subs	r3, r2, #1
 8001944:	b10d      	cbz	r5, 800194a <_ZN9CTerminal5putuiEm+0x26>
 8001946:	461a      	mov	r2, r3
 8001948:	e7f2      	b.n	8001930 <_ZN9CTerminal5putuiEm+0xc>
 800194a:	18a1      	adds	r1, r4, r2
 800194c:	f7ff ffba 	bl	80018c4 <_ZN9CTerminal4putsEPc>
 8001950:	b005      	add	sp, #20
 8001952:	bd30      	pop	{r4, r5, pc}

08001954 <_ZN9CTerminal4putxEm>:
 8001954:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001956:	2300      	movs	r3, #0
 8001958:	f88d 300f 	strb.w	r3, [sp, #15]
 800195c:	220a      	movs	r2, #10
 800195e:	f001 030f 	and.w	r3, r1, #15
 8001962:	2b09      	cmp	r3, #9
 8001964:	ac01      	add	r4, sp, #4
 8001966:	bfd4      	ite	le
 8001968:	3330      	addle	r3, #48	; 0x30
 800196a:	3357      	addgt	r3, #87	; 0x57
 800196c:	0909      	lsrs	r1, r1, #4
 800196e:	54a3      	strb	r3, [r4, r2]
 8001970:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001974:	d001      	beq.n	800197a <_ZN9CTerminal4putxEm+0x26>
 8001976:	461a      	mov	r2, r3
 8001978:	e7f1      	b.n	800195e <_ZN9CTerminal4putxEm+0xa>
 800197a:	18a1      	adds	r1, r4, r2
 800197c:	f7ff ffa2 	bl	80018c4 <_ZN9CTerminal4putsEPc>
 8001980:	b004      	add	sp, #16
 8001982:	bd10      	pop	{r4, pc}

08001984 <_ZN9CTerminal4putfEfj>:
 8001984:	b538      	push	{r3, r4, r5, lr}
 8001986:	2200      	movs	r2, #0
 8001988:	4605      	mov	r5, r0
 800198a:	2301      	movs	r3, #1
 800198c:	428a      	cmp	r2, r1
 800198e:	d003      	beq.n	8001998 <_ZN9CTerminal4putfEfj+0x14>
 8001990:	200a      	movs	r0, #10
 8001992:	4343      	muls	r3, r0
 8001994:	3201      	adds	r2, #1
 8001996:	e7f9      	b.n	800198c <_ZN9CTerminal4putfEfj+0x8>
 8001998:	eebd 7ac0 	vcvt.s32.f32	s14, s0
 800199c:	4628      	mov	r0, r5
 800199e:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 80019a2:	ee17 1a10 	vmov	r1, s14
 80019a6:	ee30 0a67 	vsub.f32	s0, s0, s15
 80019aa:	ee07 3a90 	vmov	s15, r3
 80019ae:	eef8 7a67 	vcvt.f32.u32	s15, s15
 80019b2:	ee20 0a27 	vmul.f32	s0, s0, s15
 80019b6:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 80019ba:	ee17 4a90 	vmov	r4, s15
 80019be:	f7ff ff8d 	bl	80018dc <_ZN9CTerminal4putiEl>
 80019c2:	4628      	mov	r0, r5
 80019c4:	212e      	movs	r1, #46	; 0x2e
 80019c6:	f7ff ff49 	bl	800185c <_ZN9CTerminal7putcharEc>
 80019ca:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 80019ce:	4628      	mov	r0, r5
 80019d0:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 80019d4:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80019d8:	f7ff bf80 	b.w	80018dc <_ZN9CTerminal4putiEl>

080019dc <_ZN9CTerminal6printfEPKcz>:
 80019dc:	b40e      	push	{r1, r2, r3}
 80019de:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 80019e0:	ab07      	add	r3, sp, #28
 80019e2:	4604      	mov	r4, r0
 80019e4:	f853 6b04 	ldr.w	r6, [r3], #4
 80019e8:	9301      	str	r3, [sp, #4]
 80019ea:	2500      	movs	r5, #0
 80019ec:	5d71      	ldrb	r1, [r6, r5]
 80019ee:	2900      	cmp	r1, #0
 80019f0:	d054      	beq.n	8001a9c <_ZN9CTerminal6printfEPKcz+0xc0>
 80019f2:	2925      	cmp	r1, #37	; 0x25
 80019f4:	d004      	beq.n	8001a00 <_ZN9CTerminal6printfEPKcz+0x24>
 80019f6:	4620      	mov	r0, r4
 80019f8:	f7ff ff30 	bl	800185c <_ZN9CTerminal7putcharEc>
 80019fc:	3501      	adds	r5, #1
 80019fe:	e7f5      	b.n	80019ec <_ZN9CTerminal6printfEPKcz+0x10>
 8001a00:	1973      	adds	r3, r6, r5
 8001a02:	7859      	ldrb	r1, [r3, #1]
 8001a04:	2969      	cmp	r1, #105	; 0x69
 8001a06:	d016      	beq.n	8001a36 <_ZN9CTerminal6printfEPKcz+0x5a>
 8001a08:	d807      	bhi.n	8001a1a <_ZN9CTerminal6printfEPKcz+0x3e>
 8001a0a:	2963      	cmp	r1, #99	; 0x63
 8001a0c:	d02b      	beq.n	8001a66 <_ZN9CTerminal6printfEPKcz+0x8a>
 8001a0e:	2966      	cmp	r1, #102	; 0x66
 8001a10:	d031      	beq.n	8001a76 <_ZN9CTerminal6printfEPKcz+0x9a>
 8001a12:	2925      	cmp	r1, #37	; 0x25
 8001a14:	d140      	bne.n	8001a98 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001a16:	4620      	mov	r0, r4
 8001a18:	e02a      	b.n	8001a70 <_ZN9CTerminal6printfEPKcz+0x94>
 8001a1a:	2975      	cmp	r1, #117	; 0x75
 8001a1c:	d013      	beq.n	8001a46 <_ZN9CTerminal6printfEPKcz+0x6a>
 8001a1e:	2978      	cmp	r1, #120	; 0x78
 8001a20:	d019      	beq.n	8001a56 <_ZN9CTerminal6printfEPKcz+0x7a>
 8001a22:	2973      	cmp	r1, #115	; 0x73
 8001a24:	d138      	bne.n	8001a98 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001a26:	9b01      	ldr	r3, [sp, #4]
 8001a28:	4620      	mov	r0, r4
 8001a2a:	1d1a      	adds	r2, r3, #4
 8001a2c:	6819      	ldr	r1, [r3, #0]
 8001a2e:	9201      	str	r2, [sp, #4]
 8001a30:	f7ff ff48 	bl	80018c4 <_ZN9CTerminal4putsEPc>
 8001a34:	e030      	b.n	8001a98 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001a36:	9b01      	ldr	r3, [sp, #4]
 8001a38:	4620      	mov	r0, r4
 8001a3a:	1d1a      	adds	r2, r3, #4
 8001a3c:	6819      	ldr	r1, [r3, #0]
 8001a3e:	9201      	str	r2, [sp, #4]
 8001a40:	f7ff ff4c 	bl	80018dc <_ZN9CTerminal4putiEl>
 8001a44:	e028      	b.n	8001a98 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001a46:	9b01      	ldr	r3, [sp, #4]
 8001a48:	4620      	mov	r0, r4
 8001a4a:	1d1a      	adds	r2, r3, #4
 8001a4c:	6819      	ldr	r1, [r3, #0]
 8001a4e:	9201      	str	r2, [sp, #4]
 8001a50:	f7ff ff68 	bl	8001924 <_ZN9CTerminal5putuiEm>
 8001a54:	e020      	b.n	8001a98 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001a56:	9b01      	ldr	r3, [sp, #4]
 8001a58:	4620      	mov	r0, r4
 8001a5a:	1d1a      	adds	r2, r3, #4
 8001a5c:	6819      	ldr	r1, [r3, #0]
 8001a5e:	9201      	str	r2, [sp, #4]
 8001a60:	f7ff ff78 	bl	8001954 <_ZN9CTerminal4putxEm>
 8001a64:	e018      	b.n	8001a98 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001a66:	9b01      	ldr	r3, [sp, #4]
 8001a68:	1d1a      	adds	r2, r3, #4
 8001a6a:	7819      	ldrb	r1, [r3, #0]
 8001a6c:	9201      	str	r2, [sp, #4]
 8001a6e:	4620      	mov	r0, r4
 8001a70:	f7ff fef4 	bl	800185c <_ZN9CTerminal7putcharEc>
 8001a74:	e010      	b.n	8001a98 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001a76:	9b01      	ldr	r3, [sp, #4]
 8001a78:	3307      	adds	r3, #7
 8001a7a:	f023 0307 	bic.w	r3, r3, #7
 8001a7e:	f103 0208 	add.w	r2, r3, #8
 8001a82:	e9d3 0100 	ldrd	r0, r1, [r3]
 8001a86:	9201      	str	r2, [sp, #4]
 8001a88:	f001 f980 	bl	8002d8c <__aeabi_d2f>
 8001a8c:	2103      	movs	r1, #3
 8001a8e:	ee00 0a10 	vmov	s0, r0
 8001a92:	4620      	mov	r0, r4
 8001a94:	f7ff ff76 	bl	8001984 <_ZN9CTerminal4putfEfj>
 8001a98:	3502      	adds	r5, #2
 8001a9a:	e7a7      	b.n	80019ec <_ZN9CTerminal6printfEPKcz+0x10>
 8001a9c:	b003      	add	sp, #12
 8001a9e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001aa2:	b003      	add	sp, #12
 8001aa4:	4770      	bx	lr
	...

08001aa8 <TIM4_IRQHandler>:
 8001aa8:	b538      	push	{r3, r4, r5, lr}
 8001aaa:	4837      	ldr	r0, [pc, #220]	; (8001b88 <TIM4_IRQHandler+0xe0>)
 8001aac:	2101      	movs	r1, #1
 8001aae:	f000 fefd 	bl	80028ac <TIM_GetITStatus>
 8001ab2:	2800      	cmp	r0, #0
 8001ab4:	d067      	beq.n	8001b86 <TIM4_IRQHandler+0xde>
 8001ab6:	2101      	movs	r1, #1
 8001ab8:	4833      	ldr	r0, [pc, #204]	; (8001b88 <TIM4_IRQHandler+0xe0>)
 8001aba:	f000 ff03 	bl	80028c4 <TIM_ClearITPendingBit>
 8001abe:	4b33      	ldr	r3, [pc, #204]	; (8001b8c <TIM4_IRQHandler+0xe4>)
 8001ac0:	681a      	ldr	r2, [r3, #0]
 8001ac2:	3201      	adds	r2, #1
 8001ac4:	601a      	str	r2, [r3, #0]
 8001ac6:	4a32      	ldr	r2, [pc, #200]	; (8001b90 <TIM4_IRQHandler+0xe8>)
 8001ac8:	6811      	ldr	r1, [r2, #0]
 8001aca:	461a      	mov	r2, r3
 8001acc:	2905      	cmp	r1, #5
 8001ace:	d85a      	bhi.n	8001b86 <TIM4_IRQHandler+0xde>
 8001ad0:	e8df f001 	tbb	[pc, r1]
 8001ad4:	1c03161a 	.word	0x1c03161a
 8001ad8:	3e20      	.short	0x3e20
 8001ada:	4b2e      	ldr	r3, [pc, #184]	; (8001b94 <TIM4_IRQHandler+0xec>)
 8001adc:	6819      	ldr	r1, [r3, #0]
 8001ade:	2314      	movs	r3, #20
 8001ae0:	434b      	muls	r3, r1
 8001ae2:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8001ae6:	fbb3 f3f1 	udiv	r3, r3, r1
 8001aea:	6811      	ldr	r1, [r2, #0]
 8001aec:	2b01      	cmp	r3, #1
 8001aee:	bf98      	it	ls
 8001af0:	2302      	movls	r3, #2
 8001af2:	fbb1 f2f3 	udiv	r2, r1, r3
 8001af6:	fb03 1212 	mls	r2, r3, r2, r1
 8001afa:	ebb2 0f53 	cmp.w	r2, r3, lsr #1
 8001afe:	d101      	bne.n	8001b04 <TIM4_IRQHandler+0x5c>
 8001b00:	4825      	ldr	r0, [pc, #148]	; (8001b98 <TIM4_IRQHandler+0xf0>)
 8001b02:	e01c      	b.n	8001b3e <TIM4_IRQHandler+0x96>
 8001b04:	2a00      	cmp	r2, #0
 8001b06:	d13e      	bne.n	8001b86 <TIM4_IRQHandler+0xde>
 8001b08:	4823      	ldr	r0, [pc, #140]	; (8001b98 <TIM4_IRQHandler+0xf0>)
 8001b0a:	e01a      	b.n	8001b42 <TIM4_IRQHandler+0x9a>
 8001b0c:	4b21      	ldr	r3, [pc, #132]	; (8001b94 <TIM4_IRQHandler+0xec>)
 8001b0e:	4822      	ldr	r0, [pc, #136]	; (8001b98 <TIM4_IRQHandler+0xf0>)
 8001b10:	6819      	ldr	r1, [r3, #0]
 8001b12:	e017      	b.n	8001b44 <TIM4_IRQHandler+0x9c>
 8001b14:	6813      	ldr	r3, [r2, #0]
 8001b16:	f003 0307 	and.w	r3, r3, #7
 8001b1a:	2b04      	cmp	r3, #4
 8001b1c:	d116      	bne.n	8001b4c <TIM4_IRQHandler+0xa4>
 8001b1e:	481f      	ldr	r0, [pc, #124]	; (8001b9c <TIM4_IRQHandler+0xf4>)
 8001b20:	4a1c      	ldr	r2, [pc, #112]	; (8001b94 <TIM4_IRQHandler+0xec>)
 8001b22:	7803      	ldrb	r3, [r0, #0]
 8001b24:	6812      	ldr	r2, [r2, #0]
 8001b26:	1c59      	adds	r1, r3, #1
 8001b28:	1d53      	adds	r3, r2, #5
 8001b2a:	fbb1 f2f3 	udiv	r2, r1, r3
 8001b2e:	fb03 1312 	mls	r3, r3, r2, r1
 8001b32:	b2db      	uxtb	r3, r3
 8001b34:	7003      	strb	r3, [r0, #0]
 8001b36:	7803      	ldrb	r3, [r0, #0]
 8001b38:	4817      	ldr	r0, [pc, #92]	; (8001b98 <TIM4_IRQHandler+0xf0>)
 8001b3a:	2b04      	cmp	r3, #4
 8001b3c:	d901      	bls.n	8001b42 <TIM4_IRQHandler+0x9a>
 8001b3e:	2140      	movs	r1, #64	; 0x40
 8001b40:	e000      	b.n	8001b44 <TIM4_IRQHandler+0x9c>
 8001b42:	2100      	movs	r1, #0
 8001b44:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001b48:	f000 be96 	b.w	8002878 <TIM_SetCompare2>
 8001b4c:	b9db      	cbnz	r3, 8001b86 <TIM4_IRQHandler+0xde>
 8001b4e:	e7db      	b.n	8001b08 <TIM4_IRQHandler+0x60>
 8001b50:	4b10      	ldr	r3, [pc, #64]	; (8001b94 <TIM4_IRQHandler+0xec>)
 8001b52:	4d12      	ldr	r5, [pc, #72]	; (8001b9c <TIM4_IRQHandler+0xf4>)
 8001b54:	681b      	ldr	r3, [r3, #0]
 8001b56:	4810      	ldr	r0, [pc, #64]	; (8001b98 <TIM4_IRQHandler+0xf0>)
 8001b58:	2414      	movs	r4, #20
 8001b5a:	fb03 4404 	mla	r4, r3, r4, r4
 8001b5e:	f44f 33fa 	mov.w	r3, #128000	; 0x1f400
 8001b62:	fbb3 f4f4 	udiv	r4, r3, r4
 8001b66:	782b      	ldrb	r3, [r5, #0]
 8001b68:	7829      	ldrb	r1, [r5, #0]
 8001b6a:	2c00      	cmp	r4, #0
 8001b6c:	bf08      	it	eq
 8001b6e:	2401      	moveq	r4, #1
 8001b70:	2b3f      	cmp	r3, #63	; 0x3f
 8001b72:	bf88      	it	hi
 8001b74:	f1c1 0180 	rsbhi	r1, r1, #128	; 0x80
 8001b78:	f000 fe7e 	bl	8002878 <TIM_SetCompare2>
 8001b7c:	782b      	ldrb	r3, [r5, #0]
 8001b7e:	441c      	add	r4, r3
 8001b80:	f004 047f 	and.w	r4, r4, #127	; 0x7f
 8001b84:	702c      	strb	r4, [r5, #0]
 8001b86:	bd38      	pop	{r3, r4, r5, pc}
 8001b88:	40000800 	.word	0x40000800
 8001b8c:	2000018c 	.word	0x2000018c
 8001b90:	20000190 	.word	0x20000190
 8001b94:	20000184 	.word	0x20000184
 8001b98:	40014000 	.word	0x40014000
 8001b9c:	20000188 	.word	0x20000188

08001ba0 <_ZN5CILED4initEv>:
 8001ba0:	4b4c      	ldr	r3, [pc, #304]	; (8001cd4 <_ZN5CILED4initEv+0x134>)
 8001ba2:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001ba6:	2400      	movs	r4, #0
 8001ba8:	601c      	str	r4, [r3, #0]
 8001baa:	4b4b      	ldr	r3, [pc, #300]	; (8001cd8 <_ZN5CILED4initEv+0x138>)
 8001bac:	4e4b      	ldr	r6, [pc, #300]	; (8001cdc <_ZN5CILED4initEv+0x13c>)
 8001bae:	601c      	str	r4, [r3, #0]
 8001bb0:	4b4b      	ldr	r3, [pc, #300]	; (8001ce0 <_ZN5CILED4initEv+0x140>)
 8001bb2:	f8df 8138 	ldr.w	r8, [pc, #312]	; 8001cec <_ZN5CILED4initEv+0x14c>
 8001bb6:	601c      	str	r4, [r3, #0]
 8001bb8:	4b4a      	ldr	r3, [pc, #296]	; (8001ce4 <_ZN5CILED4initEv+0x144>)
 8001bba:	b08d      	sub	sp, #52	; 0x34
 8001bbc:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001bc0:	2101      	movs	r1, #1
 8001bc2:	2501      	movs	r5, #1
 8001bc4:	701c      	strb	r4, [r3, #0]
 8001bc6:	f44f 4700 	mov.w	r7, #32768	; 0x8000
 8001bca:	f000 fd8f 	bl	80026ec <RCC_AHBPeriphClockCmd>
 8001bce:	f04f 0903 	mov.w	r9, #3
 8001bd2:	4630      	mov	r0, r6
 8001bd4:	a902      	add	r1, sp, #8
 8001bd6:	9702      	str	r7, [sp, #8]
 8001bd8:	f88d 500c 	strb.w	r5, [sp, #12]
 8001bdc:	f88d 400e 	strb.w	r4, [sp, #14]
 8001be0:	f88d 900d 	strb.w	r9, [sp, #13]
 8001be4:	f88d 400f 	strb.w	r4, [sp, #15]
 8001be8:	f000 ffec 	bl	8002bc4 <GPIO_Init>
 8001bec:	4629      	mov	r1, r5
 8001bee:	8537      	strh	r7, [r6, #40]	; 0x28
 8001bf0:	2004      	movs	r0, #4
 8001bf2:	f000 fd97 	bl	8002724 <RCC_APB1PeriphClockCmd>
 8001bf6:	231e      	movs	r3, #30
 8001bf8:	a801      	add	r0, sp, #4
 8001bfa:	f88d 3004 	strb.w	r3, [sp, #4]
 8001bfe:	f88d 4005 	strb.w	r4, [sp, #5]
 8001c02:	f88d 5006 	strb.w	r5, [sp, #6]
 8001c06:	f88d 5007 	strb.w	r5, [sp, #7]
 8001c0a:	f000 ff95 	bl	8002b38 <NVIC_Init>
 8001c0e:	4629      	mov	r1, r5
 8001c10:	2004      	movs	r0, #4
 8001c12:	f000 fd87 	bl	8002724 <RCC_APB1PeriphClockCmd>
 8001c16:	f241 3388 	movw	r3, #5000	; 0x1388
 8001c1a:	9305      	str	r3, [sp, #20]
 8001c1c:	4640      	mov	r0, r8
 8001c1e:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8001c22:	a904      	add	r1, sp, #16
 8001c24:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001c28:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001c2c:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001c30:	f000 fd86 	bl	8002740 <TIM_TimeBaseInit>
 8001c34:	462a      	mov	r2, r5
 8001c36:	4640      	mov	r0, r8
 8001c38:	4629      	mov	r1, r5
 8001c3a:	f000 fe2b 	bl	8002894 <TIM_ITConfig>
 8001c3e:	4640      	mov	r0, r8
 8001c40:	4629      	mov	r1, r5
 8001c42:	f000 fdcd 	bl	80027e0 <TIM_Cmd>
 8001c46:	9702      	str	r7, [sp, #8]
 8001c48:	4630      	mov	r0, r6
 8001c4a:	2702      	movs	r7, #2
 8001c4c:	a902      	add	r1, sp, #8
 8001c4e:	f88d 700c 	strb.w	r7, [sp, #12]
 8001c52:	f88d 900d 	strb.w	r9, [sp, #13]
 8001c56:	f000 ffb5 	bl	8002bc4 <GPIO_Init>
 8001c5a:	462a      	mov	r2, r5
 8001c5c:	4630      	mov	r0, r6
 8001c5e:	210f      	movs	r1, #15
 8001c60:	f000 fff6 	bl	8002c50 <GPIO_PinAFConfig>
 8001c64:	4e20      	ldr	r6, [pc, #128]	; (8001ce8 <_ZN5CILED4initEv+0x148>)
 8001c66:	4629      	mov	r1, r5
 8001c68:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8001c6c:	f000 fd4c 	bl	8002708 <RCC_APB2PeriphClockCmd>
 8001c70:	f44f 53e1 	mov.w	r3, #7200	; 0x1c20
 8001c74:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001c78:	4630      	mov	r0, r6
 8001c7a:	2341      	movs	r3, #65	; 0x41
 8001c7c:	a904      	add	r1, sp, #16
 8001c7e:	9305      	str	r3, [sp, #20]
 8001c80:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001c84:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001c88:	f8ad 401a 	strh.w	r4, [sp, #26]
 8001c8c:	f000 fd58 	bl	8002740 <TIM_TimeBaseInit>
 8001c90:	4630      	mov	r0, r6
 8001c92:	4629      	mov	r1, r5
 8001c94:	f000 fda4 	bl	80027e0 <TIM_Cmd>
 8001c98:	4630      	mov	r0, r6
 8001c9a:	4629      	mov	r1, r5
 8001c9c:	f000 fdef 	bl	800287e <TIM_CtrlPWMOutputs>
 8001ca0:	2370      	movs	r3, #112	; 0x70
 8001ca2:	9307      	str	r3, [sp, #28]
 8001ca4:	2304      	movs	r3, #4
 8001ca6:	f8ad 3022 	strh.w	r3, [sp, #34]	; 0x22
 8001caa:	4630      	mov	r0, r6
 8001cac:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001cb0:	a907      	add	r1, sp, #28
 8001cb2:	f8ad 5020 	strh.w	r5, [sp, #32]
 8001cb6:	9409      	str	r4, [sp, #36]	; 0x24
 8001cb8:	f8ad 7028 	strh.w	r7, [sp, #40]	; 0x28
 8001cbc:	f8ad 402a 	strh.w	r4, [sp, #42]	; 0x2a
 8001cc0:	f8ad 302c 	strh.w	r3, [sp, #44]	; 0x2c
 8001cc4:	f8ad 402e 	strh.w	r4, [sp, #46]	; 0x2e
 8001cc8:	f000 fd98 	bl	80027fc <TIM_OC2Init>
 8001ccc:	b00d      	add	sp, #52	; 0x34
 8001cce:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001cd2:	bf00      	nop
 8001cd4:	20000190 	.word	0x20000190
 8001cd8:	20000184 	.word	0x20000184
 8001cdc:	48000400 	.word	0x48000400
 8001ce0:	2000018c 	.word	0x2000018c
 8001ce4:	20000188 	.word	0x20000188
 8001ce8:	40014000 	.word	0x40014000
 8001cec:	40000800 	.word	0x40000800

08001cf0 <_ZN5CILED3setEhj>:
 8001cf0:	4b04      	ldr	r3, [pc, #16]	; (8001d04 <_ZN5CILED3setEhj+0x14>)
 8001cf2:	6019      	str	r1, [r3, #0]
 8001cf4:	4b04      	ldr	r3, [pc, #16]	; (8001d08 <_ZN5CILED3setEhj+0x18>)
 8001cf6:	601a      	str	r2, [r3, #0]
 8001cf8:	4a04      	ldr	r2, [pc, #16]	; (8001d0c <_ZN5CILED3setEhj+0x1c>)
 8001cfa:	2300      	movs	r3, #0
 8001cfc:	6013      	str	r3, [r2, #0]
 8001cfe:	4a04      	ldr	r2, [pc, #16]	; (8001d10 <_ZN5CILED3setEhj+0x20>)
 8001d00:	7013      	strb	r3, [r2, #0]
 8001d02:	4770      	bx	lr
 8001d04:	20000190 	.word	0x20000190
 8001d08:	20000184 	.word	0x20000184
 8001d0c:	2000018c 	.word	0x2000018c
 8001d10:	20000188 	.word	0x20000188

08001d14 <_ZN10MathVectorILj4EE4initEv>:
 8001d14:	2300      	movs	r3, #0
 8001d16:	6003      	str	r3, [r0, #0]
 8001d18:	6043      	str	r3, [r0, #4]
 8001d1a:	6083      	str	r3, [r0, #8]
 8001d1c:	60c3      	str	r3, [r0, #12]
 8001d1e:	4770      	bx	lr

08001d20 <_ZN10MathVectorILj3EE3mixERS0_f>:
 8001d20:	f100 030c 	add.w	r3, r0, #12
 8001d24:	ecf1 7a01 	vldmia	r1!, {s15}
 8001d28:	edd0 6a00 	vldr	s13, [r0]
 8001d2c:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 8001d30:	ee37 7a40 	vsub.f32	s14, s14, s0
 8001d34:	ee60 7a27 	vmul.f32	s15, s0, s15
 8001d38:	eee7 7a26 	vfma.f32	s15, s14, s13
 8001d3c:	ece0 7a01 	vstmia	r0!, {s15}
 8001d40:	4298      	cmp	r0, r3
 8001d42:	d1ef      	bne.n	8001d24 <_ZN10MathVectorILj3EE3mixERS0_f+0x4>
 8001d44:	4770      	bx	lr
	...

08001d48 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>:
 8001d48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001d4a:	eddf 6a17 	vldr	s13, [pc, #92]	; 8001da8 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x60>
 8001d4e:	4603      	mov	r3, r0
 8001d50:	2600      	movs	r6, #0
 8001d52:	f8d0 0380 	ldr.w	r0, [r0, #896]	; 0x380
 8001d56:	461c      	mov	r4, r3
 8001d58:	4635      	mov	r5, r6
 8001d5a:	4285      	cmp	r5, r0
 8001d5c:	d019      	beq.n	8001d92 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x4a>
 8001d5e:	eddf 7a13 	vldr	s15, [pc, #76]	; 8001dac <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x64>
 8001d62:	468e      	mov	lr, r1
 8001d64:	f104 0710 	add.w	r7, r4, #16
 8001d68:	ecb4 6a01 	vldmia	r4!, {s12}
 8001d6c:	ecbe 7a01 	vldmia	lr!, {s14}
 8001d70:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001d74:	42bc      	cmp	r4, r7
 8001d76:	eee7 7a07 	vfma.f32	s15, s14, s14
 8001d7a:	d1f5      	bne.n	8001d68 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x20>
 8001d7c:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001d80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001d84:	bf44      	itt	mi
 8001d86:	462e      	movmi	r6, r5
 8001d88:	eef0 6a67 	vmovmi.f32	s13, s15
 8001d8c:	3501      	adds	r5, #1
 8001d8e:	463c      	mov	r4, r7
 8001d90:	e7e3      	b.n	8001d5a <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE+0x12>
 8001d92:	f503 7300 	add.w	r3, r3, #512	; 0x200
 8001d96:	210c      	movs	r1, #12
 8001d98:	4610      	mov	r0, r2
 8001d9a:	fb01 3106 	mla	r1, r1, r6, r3
 8001d9e:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8001da2:	f7ff ffbd 	bl	8001d20 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001da6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001da8:	4cbebc20 	.word	0x4cbebc20
 8001dac:	00000000 	.word	0x00000000

08001db0 <_ZN21CLearningLineFollower3runEv>:
 8001db0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001db4:	2310      	movs	r3, #16
 8001db6:	ed2d 8b06 	vpush	{d8-d10}
 8001dba:	f100 0650 	add.w	r6, r0, #80	; 0x50
 8001dbe:	f8c0 33d0 	str.w	r3, [r0, #976]	; 0x3d0
 8001dc2:	4bc9      	ldr	r3, [pc, #804]	; (80020e8 <_ZN21CLearningLineFollower3runEv+0x338>)
 8001dc4:	f8c0 33d4 	str.w	r3, [r0, #980]	; 0x3d4
 8001dc8:	4604      	mov	r4, r0
 8001dca:	f500 7814 	add.w	r8, r0, #592	; 0x250
 8001dce:	4635      	mov	r5, r6
 8001dd0:	f105 0710 	add.w	r7, r5, #16
 8001dd4:	48c5      	ldr	r0, [pc, #788]	; (80020ec <_ZN21CLearningLineFollower3runEv+0x33c>)
 8001dd6:	f7fe fb7f 	bl	80004d8 <_ZN5CMath3rndEv>
 8001dda:	eca5 0a01 	vstmia	r5!, {s0}
 8001dde:	42bd      	cmp	r5, r7
 8001de0:	d1f8      	bne.n	8001dd4 <_ZN21CLearningLineFollower3runEv+0x24>
 8001de2:	4545      	cmp	r5, r8
 8001de4:	d1f4      	bne.n	8001dd0 <_ZN21CLearningLineFollower3runEv+0x20>
 8001de6:	4623      	mov	r3, r4
 8001de8:	f504 72c0 	add.w	r2, r4, #384	; 0x180
 8001dec:	eddf 8ac0 	vldr	s17, [pc, #768]	; 80020f0 <_ZN21CLearningLineFollower3runEv+0x340>
 8001df0:	330c      	adds	r3, #12
 8001df2:	edc3 8a91 	vstr	s17, [r3, #580]	; 0x244
 8001df6:	edc3 8a92 	vstr	s17, [r3, #584]	; 0x248
 8001dfa:	edc3 8a93 	vstr	s17, [r3, #588]	; 0x24c
 8001dfe:	4293      	cmp	r3, r2
 8001e00:	d1f4      	bne.n	8001dec <_ZN21CLearningLineFollower3runEv+0x3c>
 8001e02:	2300      	movs	r3, #0
 8001e04:	f104 0530 	add.w	r5, r4, #48	; 0x30
 8001e08:	62a3      	str	r3, [r4, #40]	; 0x28
 8001e0a:	62e3      	str	r3, [r4, #44]	; 0x2c
 8001e0c:	4628      	mov	r0, r5
 8001e0e:	f104 0940 	add.w	r9, r4, #64	; 0x40
 8001e12:	f7ff ff7f 	bl	8001d14 <_ZN10MathVectorILj4EE4initEv>
 8001e16:	4648      	mov	r0, r9
 8001e18:	f7ff ff7c 	bl	8001d14 <_ZN10MathVectorILj4EE4initEv>
 8001e1c:	eebf aa00 	vmov.f32	s20, #240	; 0xbf800000 -1.0
 8001e20:	edc4 8af6 	vstr	s17, [r4, #984]	; 0x3d8
 8001e24:	edc4 8af7 	vstr	s17, [r4, #988]	; 0x3dc
 8001e28:	edc4 8af8 	vstr	s17, [r4, #992]	; 0x3e0
 8001e2c:	2100      	movs	r1, #0
 8001e2e:	48b1      	ldr	r0, [pc, #708]	; (80020f4 <_ZN21CLearningLineFollower3runEv+0x344>)
 8001e30:	f7fe fde8 	bl	8000a04 <_ZN4CRGB8rgb_readEh>
 8001e34:	48af      	ldr	r0, [pc, #700]	; (80020f4 <_ZN21CLearningLineFollower3runEv+0x344>)
 8001e36:	f7fe ff81 	bl	8000d3c <_ZN4CRGB14get_rgb_resultEv>
 8001e3a:	f104 0718 	add.w	r7, r4, #24
 8001e3e:	4601      	mov	r1, r0
 8001e40:	4620      	mov	r0, r4
 8001e42:	f7fe fa31 	bl	80002a8 <_ZN13CLinePosition7processEP10sRGBResult>
 8001e46:	4639      	mov	r1, r7
 8001e48:	4620      	mov	r0, r4
 8001e4a:	f7fe faca 	bl	80003e2 <_ZN13CLinePosition10get_vectorEP10MathVectorILj4EE>
 8001e4e:	e895 000f 	ldmia.w	r5, {r0, r1, r2, r3}
 8001e52:	f104 0e40 	add.w	lr, r4, #64	; 0x40
 8001e56:	e88e 000f 	stmia.w	lr, {r0, r1, r2, r3}
 8001e5a:	e897 000f 	ldmia.w	r7, {r0, r1, r2, r3}
 8001e5e:	f504 7776 	add.w	r7, r4, #984	; 0x3d8
 8001e62:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
 8001e66:	463a      	mov	r2, r7
 8001e68:	4630      	mov	r0, r6
 8001e6a:	4629      	mov	r1, r5
 8001e6c:	f7ff ff6c 	bl	8001d48 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001e70:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8001e72:	62a3      	str	r3, [r4, #40]	; 0x28
 8001e74:	489d      	ldr	r0, [pc, #628]	; (80020ec <_ZN21CLearningLineFollower3runEv+0x33c>)
 8001e76:	f7fe fb15 	bl	80004a4 <_ZN5CMath4randEv>
 8001e7a:	2364      	movs	r3, #100	; 0x64
 8001e7c:	fbb0 f2f3 	udiv	r2, r0, r3
 8001e80:	fb02 0013 	mls	r0, r2, r3, r0
 8001e84:	2813      	cmp	r0, #19
 8001e86:	d80b      	bhi.n	8001ea0 <_ZN21CLearningLineFollower3runEv+0xf0>
 8001e88:	4898      	ldr	r0, [pc, #608]	; (80020ec <_ZN21CLearningLineFollower3runEv+0x33c>)
 8001e8a:	f7fe fb0b 	bl	80004a4 <_ZN5CMath4randEv>
 8001e8e:	f04f 0a03 	mov.w	sl, #3
 8001e92:	fbb0 fafa 	udiv	sl, r0, sl
 8001e96:	eb0a 0a4a 	add.w	sl, sl, sl, lsl #1
 8001e9a:	ebca 0a00 	rsb	sl, sl, r0
 8001e9e:	e012      	b.n	8001ec6 <_ZN21CLearningLineFollower3runEv+0x116>
 8001ea0:	f04f 0a00 	mov.w	sl, #0
 8001ea4:	463a      	mov	r2, r7
 8001ea6:	4653      	mov	r3, sl
 8001ea8:	eb04 018a 	add.w	r1, r4, sl, lsl #2
 8001eac:	ecb2 7a01 	vldmia	r2!, {s14}
 8001eb0:	edd1 7af6 	vldr	s15, [r1, #984]	; 0x3d8
 8001eb4:	eeb4 7a67 	vcmp.f32	s14, s15
 8001eb8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001ebc:	bfc8      	it	gt
 8001ebe:	469a      	movgt	sl, r3
 8001ec0:	3301      	adds	r3, #1
 8001ec2:	2b03      	cmp	r3, #3
 8001ec4:	d1f0      	bne.n	8001ea8 <_ZN21CLearningLineFollower3runEv+0xf8>
 8001ec6:	f1ba 0f01 	cmp.w	sl, #1
 8001eca:	f8c4 a02c 	str.w	sl, [r4, #44]	; 0x2c
 8001ece:	d015      	beq.n	8001efc <_ZN21CLearningLineFollower3runEv+0x14c>
 8001ed0:	d30c      	bcc.n	8001eec <_ZN21CLearningLineFollower3runEv+0x13c>
 8001ed2:	f1ba 0f02 	cmp.w	sl, #2
 8001ed6:	d11c      	bne.n	8001f12 <_ZN21CLearningLineFollower3runEv+0x162>
 8001ed8:	4887      	ldr	r0, [pc, #540]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001eda:	2100      	movs	r1, #0
 8001edc:	220e      	movs	r2, #14
 8001ede:	f7fe ffc5 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8001ee2:	4885      	ldr	r0, [pc, #532]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001ee4:	2101      	movs	r1, #1
 8001ee6:	f06f 0204 	mvn.w	r2, #4
 8001eea:	e010      	b.n	8001f0e <_ZN21CLearningLineFollower3runEv+0x15e>
 8001eec:	4882      	ldr	r0, [pc, #520]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001eee:	2100      	movs	r1, #0
 8001ef0:	220e      	movs	r2, #14
 8001ef2:	f7fe ffbb 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8001ef6:	4880      	ldr	r0, [pc, #512]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001ef8:	2101      	movs	r1, #1
 8001efa:	e007      	b.n	8001f0c <_ZN21CLearningLineFollower3runEv+0x15c>
 8001efc:	487e      	ldr	r0, [pc, #504]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001efe:	2100      	movs	r1, #0
 8001f00:	f06f 0204 	mvn.w	r2, #4
 8001f04:	f7fe ffb2 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8001f08:	487b      	ldr	r0, [pc, #492]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 8001f0a:	4651      	mov	r1, sl
 8001f0c:	220e      	movs	r2, #14
 8001f0e:	f7fe ffad 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8001f12:	487a      	ldr	r0, [pc, #488]	; (80020fc <_ZN21CLearningLineFollower3runEv+0x34c>)
 8001f14:	2132      	movs	r1, #50	; 0x32
 8001f16:	f7fe fd41 	bl	800099c <_ZN6CTimer8delay_msEm>
 8001f1a:	2100      	movs	r1, #0
 8001f1c:	4875      	ldr	r0, [pc, #468]	; (80020f4 <_ZN21CLearningLineFollower3runEv+0x344>)
 8001f1e:	f7fe fd71 	bl	8000a04 <_ZN4CRGB8rgb_readEh>
 8001f22:	4874      	ldr	r0, [pc, #464]	; (80020f4 <_ZN21CLearningLineFollower3runEv+0x344>)
 8001f24:	f7fe ff0a 	bl	8000d3c <_ZN4CRGB14get_rgb_resultEv>
 8001f28:	4601      	mov	r1, r0
 8001f2a:	4620      	mov	r0, r4
 8001f2c:	f7fe f9bc 	bl	80002a8 <_ZN13CLinePosition7processEP10sRGBResult>
 8001f30:	4620      	mov	r0, r4
 8001f32:	f7fe fa53 	bl	80003dc <_ZN13CLinePosition17get_line_positionEv>
 8001f36:	486d      	ldr	r0, [pc, #436]	; (80020ec <_ZN21CLearningLineFollower3runEv+0x33c>)
 8001f38:	f7fe faab 	bl	8000492 <_ZN5CMath3absEf>
 8001f3c:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
 8001f40:	f8d4 b02c 	ldr.w	fp, [r4, #44]	; 0x2c
 8001f44:	f8d4 a028 	ldr.w	sl, [r4, #40]	; 0x28
 8001f48:	ee39 0ac0 	vsub.f32	s0, s19, s0
 8001f4c:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 8001f50:	4630      	mov	r0, r6
 8001f52:	4629      	mov	r1, r5
 8001f54:	463a      	mov	r2, r7
 8001f56:	eb04 0b8b 	add.w	fp, r4, fp, lsl #2
 8001f5a:	ee30 9a67 	vsub.f32	s18, s0, s15
 8001f5e:	f7ff fef3 	bl	8001d48 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001f62:	edd4 7af6 	vldr	s15, [r4, #984]	; 0x3d8
 8001f66:	ed9b 8af6 	vldr	s16, [fp, #984]	; 0x3d8
 8001f6a:	eeb4 8a67 	vcmp.f32	s16, s15
 8001f6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f72:	bf48      	it	mi
 8001f74:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001f78:	edd4 7af7 	vldr	s15, [r4, #988]	; 0x3dc
 8001f7c:	eeb4 8a67 	vcmp.f32	s16, s15
 8001f80:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f84:	bf48      	it	mi
 8001f86:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001f8a:	edd4 7af8 	vldr	s15, [r4, #992]	; 0x3e0
 8001f8e:	eeb4 8a67 	vcmp.f32	s16, s15
 8001f92:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f96:	4630      	mov	r0, r6
 8001f98:	4649      	mov	r1, r9
 8001f9a:	463a      	mov	r2, r7
 8001f9c:	bf48      	it	mi
 8001f9e:	eeb0 8a67 	vmovmi.f32	s16, s15
 8001fa2:	f7ff fed1 	bl	8001d48 <_ZN17AssociativeMemoryILi4ELi3ELi32EE4loadER10MathVectorILj4EERS1_ILj3EE>
 8001fa6:	eddf 7a56 	vldr	s15, [pc, #344]	; 8002100 <_ZN21CLearningLineFollower3runEv+0x350>
 8001faa:	f8d4 03d0 	ldr.w	r0, [r4, #976]	; 0x3d0
 8001fae:	eddf 6a55 	vldr	s13, [pc, #340]	; 8002104 <_ZN21CLearningLineFollower3runEv+0x354>
 8001fb2:	eeb0 7a49 	vmov.f32	s14, s18
 8001fb6:	eea8 7a27 	vfma.f32	s14, s16, s15
 8001fba:	eb04 0a8a 	add.w	sl, r4, sl, lsl #2
 8001fbe:	2100      	movs	r1, #0
 8001fc0:	46b6      	mov	lr, r6
 8001fc2:	ed8a 7af6 	vstr	s14, [sl, #984]	; 0x3d8
 8001fc6:	460a      	mov	r2, r1
 8001fc8:	4282      	cmp	r2, r0
 8001fca:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8001fce:	d018      	beq.n	8002002 <_ZN21CLearningLineFollower3runEv+0x252>
 8001fd0:	eddf 7a47 	vldr	s15, [pc, #284]	; 80020f0 <_ZN21CLearningLineFollower3runEv+0x340>
 8001fd4:	46f4      	mov	ip, lr
 8001fd6:	ecb3 7a01 	vldmia	r3!, {s14}
 8001fda:	ecbc 6a01 	vldmia	ip!, {s12}
 8001fde:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001fe2:	42b3      	cmp	r3, r6
 8001fe4:	eee7 7a07 	vfma.f32	s15, s14, s14
 8001fe8:	d1f5      	bne.n	8001fd6 <_ZN21CLearningLineFollower3runEv+0x226>
 8001fea:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001fee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001ff2:	bf44      	itt	mi
 8001ff4:	4611      	movmi	r1, r2
 8001ff6:	eef0 6a67 	vmovmi.f32	s13, s15
 8001ffa:	3201      	adds	r2, #1
 8001ffc:	f10e 0e10 	add.w	lr, lr, #16
 8002000:	e7e2      	b.n	8001fc8 <_ZN21CLearningLineFollower3runEv+0x218>
 8002002:	281f      	cmp	r0, #31
 8002004:	d81a      	bhi.n	800203c <_ZN21CLearningLineFollower3runEv+0x28c>
 8002006:	1d42      	adds	r2, r0, #5
 8002008:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 800200c:	ecf3 7a01 	vldmia	r3!, {s15}
 8002010:	ed92 7a00 	vldr	s14, [r2]
 8002014:	eee7 7a28 	vfma.f32	s15, s14, s17
 8002018:	42b3      	cmp	r3, r6
 800201a:	ece2 7a01 	vstmia	r2!, {s15}
 800201e:	d1f5      	bne.n	800200c <_ZN21CLearningLineFollower3runEv+0x25c>
 8002020:	230c      	movs	r3, #12
 8002022:	fb03 8000 	mla	r0, r3, r0, r8
 8002026:	4639      	mov	r1, r7
 8002028:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 800202c:	f7ff fe78 	bl	8001d20 <_ZN10MathVectorILj3EE3mixERS0_f>
 8002030:	f8d4 33d0 	ldr.w	r3, [r4, #976]	; 0x3d0
 8002034:	3301      	adds	r3, #1
 8002036:	f8c4 33d0 	str.w	r3, [r4, #976]	; 0x3d0
 800203a:	e01a      	b.n	8002072 <_ZN21CLearningLineFollower3runEv+0x2c2>
 800203c:	1d4a      	adds	r2, r1, #5
 800203e:	edd4 6af5 	vldr	s13, [r4, #980]	; 0x3d4
 8002042:	eb04 1202 	add.w	r2, r4, r2, lsl #4
 8002046:	ecf3 7a01 	vldmia	r3!, {s15}
 800204a:	ed92 6a00 	vldr	s12, [r2]
 800204e:	ee39 7ae6 	vsub.f32	s14, s19, s13
 8002052:	ee66 7aa7 	vmul.f32	s15, s13, s15
 8002056:	42b3      	cmp	r3, r6
 8002058:	eee7 7a06 	vfma.f32	s15, s14, s12
 800205c:	ece2 7a01 	vstmia	r2!, {s15}
 8002060:	d1f1      	bne.n	8002046 <_ZN21CLearningLineFollower3runEv+0x296>
 8002062:	200c      	movs	r0, #12
 8002064:	fb00 8001 	mla	r0, r0, r1, r8
 8002068:	ed94 0af5 	vldr	s0, [r4, #980]	; 0x3d4
 800206c:	4639      	mov	r1, r7
 800206e:	f7ff fe57 	bl	8001d20 <_ZN10MathVectorILj3EE3mixERS0_f>
 8002072:	4620      	mov	r0, r4
 8002074:	f7fe f9b0 	bl	80003d8 <_ZN13CLinePosition7on_lineEv>
 8002078:	4607      	mov	r7, r0
 800207a:	b9f0      	cbnz	r0, 80020ba <_ZN21CLearningLineFollower3runEv+0x30a>
 800207c:	481e      	ldr	r0, [pc, #120]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 800207e:	4639      	mov	r1, r7
 8002080:	f06f 020d 	mvn.w	r2, #13
 8002084:	f7fe fef2 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8002088:	f06f 020d 	mvn.w	r2, #13
 800208c:	481a      	ldr	r0, [pc, #104]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 800208e:	2101      	movs	r1, #1
 8002090:	f7fe feec 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8002094:	4819      	ldr	r0, [pc, #100]	; (80020fc <_ZN21CLearningLineFollower3runEv+0x34c>)
 8002096:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 800209a:	f7fe fc7f 	bl	800099c <_ZN6CTimer8delay_msEm>
 800209e:	4816      	ldr	r0, [pc, #88]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 80020a0:	4639      	mov	r1, r7
 80020a2:	463a      	mov	r2, r7
 80020a4:	f7fe fee2 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 80020a8:	4813      	ldr	r0, [pc, #76]	; (80020f8 <_ZN21CLearningLineFollower3runEv+0x348>)
 80020aa:	2101      	movs	r1, #1
 80020ac:	463a      	mov	r2, r7
 80020ae:	f7fe fedd 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 80020b2:	4812      	ldr	r0, [pc, #72]	; (80020fc <_ZN21CLearningLineFollower3runEv+0x34c>)
 80020b4:	2164      	movs	r1, #100	; 0x64
 80020b6:	f7fe fc71 	bl	800099c <_ZN6CTimer8delay_msEm>
 80020ba:	ed9f 0a13 	vldr	s0, [pc, #76]	; 8002108 <_ZN21CLearningLineFollower3runEv+0x358>
 80020be:	eddf 7a13 	vldr	s15, [pc, #76]	; 800210c <_ZN21CLearningLineFollower3runEv+0x35c>
 80020c2:	480c      	ldr	r0, [pc, #48]	; (80020f4 <_ZN21CLearningLineFollower3runEv+0x344>)
 80020c4:	4912      	ldr	r1, [pc, #72]	; (8002110 <_ZN21CLearningLineFollower3runEv+0x360>)
 80020c6:	ee29 9a00 	vmul.f32	s18, s18, s0
 80020ca:	eeaa 9a27 	vfma.f32	s18, s20, s15
 80020ce:	eddf 7a11 	vldr	s15, [pc, #68]	; 8002114 <_ZN21CLearningLineFollower3runEv+0x364>
 80020d2:	ee69 7a27 	vmul.f32	s15, s18, s15
 80020d6:	eeb0 aa49 	vmov.f32	s20, s18
 80020da:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80020de:	ee17 2a90 	vmov	r2, s15
 80020e2:	f7ff fc7b 	bl	80019dc <_ZN9CTerminal6printfEPKcz>
 80020e6:	e6a1      	b.n	8001e2c <_ZN21CLearningLineFollower3runEv+0x7c>
 80020e8:	3dcccccd 	.word	0x3dcccccd
 80020ec:	20000108 	.word	0x20000108
 80020f0:	00000000 	.word	0x00000000
 80020f4:	20000030 	.word	0x20000030
 80020f8:	200000f4 	.word	0x200000f4
 80020fc:	2000013c 	.word	0x2000013c
 8002100:	3f666666 	.word	0x3f666666
 8002104:	4cbebc20 	.word	0x4cbebc20
 8002108:	3c23d70a 	.word	0x3c23d70a
 800210c:	3f7d70a4 	.word	0x3f7d70a4
 8002110:	08002f3c 	.word	0x08002f3c
 8002114:	447a0000 	.word	0x447a0000

08002118 <_ZN5CDemo4initEv>:
 8002118:	4770      	bx	lr
	...

0800211c <_ZN5CDemo10blink_taskEv>:
 800211c:	b508      	push	{r3, lr}
 800211e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002122:	480d      	ldr	r0, [pc, #52]	; (8002158 <_ZN5CDemo10blink_taskEv+0x3c>)
 8002124:	f7ff fad0 	bl	80016c8 <_ZN5CGPIO7gpio_onEm>
 8002128:	480c      	ldr	r0, [pc, #48]	; (800215c <_ZN5CDemo10blink_taskEv+0x40>)
 800212a:	f7fe fc29 	bl	8000980 <_ZN6CTimer8get_timeEv>
 800212e:	490c      	ldr	r1, [pc, #48]	; (8002160 <_ZN5CDemo10blink_taskEv+0x44>)
 8002130:	4602      	mov	r2, r0
 8002132:	4809      	ldr	r0, [pc, #36]	; (8002158 <_ZN5CDemo10blink_taskEv+0x3c>)
 8002134:	f7ff fc52 	bl	80019dc <_ZN9CTerminal6printfEPKcz>
 8002138:	4808      	ldr	r0, [pc, #32]	; (800215c <_ZN5CDemo10blink_taskEv+0x40>)
 800213a:	210a      	movs	r1, #10
 800213c:	f7fe fc2e 	bl	800099c <_ZN6CTimer8delay_msEm>
 8002140:	4805      	ldr	r0, [pc, #20]	; (8002158 <_ZN5CDemo10blink_taskEv+0x3c>)
 8002142:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002146:	f7ff facd 	bl	80016e4 <_ZN5CGPIO8gpio_offEm>
 800214a:	4804      	ldr	r0, [pc, #16]	; (800215c <_ZN5CDemo10blink_taskEv+0x40>)
 800214c:	f44f 7148 	mov.w	r1, #800	; 0x320
 8002150:	f7fe fc24 	bl	800099c <_ZN6CTimer8delay_msEm>
 8002154:	e7e3      	b.n	800211e <_ZN5CDemo10blink_taskEv+0x2>
 8002156:	bf00      	nop
 8002158:	20000030 	.word	0x20000030
 800215c:	2000013c 	.word	0x2000013c
 8002160:	08002f24 	.word	0x08002f24

08002164 <_ZN5CDemo10moves_taskEv>:
 8002164:	b538      	push	{r3, r4, r5, lr}
 8002166:	4c2f      	ldr	r4, [pc, #188]	; (8002224 <_ZN5CDemo10moves_taskEv+0xc0>)
 8002168:	4d2f      	ldr	r5, [pc, #188]	; (8002228 <_ZN5CDemo10moves_taskEv+0xc4>)
 800216a:	4620      	mov	r0, r4
 800216c:	2200      	movs	r2, #0
 800216e:	212c      	movs	r1, #44	; 0x2c
 8002170:	f7fe fe92 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 8002174:	4628      	mov	r0, r5
 8002176:	f240 51dc 	movw	r1, #1500	; 0x5dc
 800217a:	f7fe fc0f 	bl	800099c <_ZN6CTimer8delay_msEm>
 800217e:	4620      	mov	r0, r4
 8002180:	2200      	movs	r2, #0
 8002182:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8002186:	f7fe fe87 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 800218a:	4628      	mov	r0, r5
 800218c:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8002190:	f7fe fc04 	bl	800099c <_ZN6CTimer8delay_msEm>
 8002194:	4620      	mov	r0, r4
 8002196:	222c      	movs	r2, #44	; 0x2c
 8002198:	2100      	movs	r1, #0
 800219a:	f7fe fe7d 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 800219e:	4628      	mov	r0, r5
 80021a0:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80021a4:	f7fe fbfa 	bl	800099c <_ZN6CTimer8delay_msEm>
 80021a8:	4620      	mov	r0, r4
 80021aa:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 80021ae:	2100      	movs	r1, #0
 80021b0:	f7fe fe72 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 80021b4:	4628      	mov	r0, r5
 80021b6:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80021ba:	f7fe fbef 	bl	800099c <_ZN6CTimer8delay_msEm>
 80021be:	4620      	mov	r0, r4
 80021c0:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 80021c4:	212c      	movs	r1, #44	; 0x2c
 80021c6:	f7fe fe67 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 80021ca:	4628      	mov	r0, r5
 80021cc:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80021d0:	f7fe fbe4 	bl	800099c <_ZN6CTimer8delay_msEm>
 80021d4:	4620      	mov	r0, r4
 80021d6:	222c      	movs	r2, #44	; 0x2c
 80021d8:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 80021dc:	f7fe fe5c 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 80021e0:	4628      	mov	r0, r5
 80021e2:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80021e6:	f7fe fbd9 	bl	800099c <_ZN6CTimer8delay_msEm>
 80021ea:	212c      	movs	r1, #44	; 0x2c
 80021ec:	460a      	mov	r2, r1
 80021ee:	4620      	mov	r0, r4
 80021f0:	f7fe fe52 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 80021f4:	4628      	mov	r0, r5
 80021f6:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80021fa:	f7fe fbcf 	bl	800099c <_ZN6CTimer8delay_msEm>
 80021fe:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8002202:	460a      	mov	r2, r1
 8002204:	4620      	mov	r0, r4
 8002206:	f7fe fe47 	bl	8000e98 <_ZN6CMotor10set_motorsEll>
 800220a:	4628      	mov	r0, r5
 800220c:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8002210:	f7fe fbc4 	bl	800099c <_ZN6CTimer8delay_msEm>
 8002214:	2100      	movs	r1, #0
 8002216:	4620      	mov	r0, r4
 8002218:	460a      	mov	r2, r1
 800221a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800221e:	f7fe be3b 	b.w	8000e98 <_ZN6CMotor10set_motorsEll>
 8002222:	bf00      	nop
 8002224:	200000f4 	.word	0x200000f4
 8002228:	2000013c 	.word	0x2000013c

0800222c <_ZN5CDemo24basic_line_follower_taskEv>:
 800222c:	b510      	push	{r4, lr}
 800222e:	b08e      	sub	sp, #56	; 0x38
 8002230:	4668      	mov	r0, sp
 8002232:	f7fe f82f 	bl	8000294 <_ZN13CLinePositionC1Ev>
 8002236:	a806      	add	r0, sp, #24
 8002238:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 800223c:	eddf 0a38 	vldr	s1, [pc, #224]	; 8002320 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8002240:	eddf 1a38 	vldr	s3, [pc, #224]	; 8002324 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8002244:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 8002248:	f7fe f8ea 	bl	8000420 <_ZN4CPIDC1Effff>
 800224c:	4836      	ldr	r0, [pc, #216]	; (8002328 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 800224e:	2100      	movs	r1, #0
 8002250:	220a      	movs	r2, #10
 8002252:	f7fe fbb5 	bl	80009c0 <_ZN6CTimer22event_timer_set_periodEhm>
 8002256:	4834      	ldr	r0, [pc, #208]	; (8002328 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8002258:	2100      	movs	r1, #0
 800225a:	f7fe fbc5 	bl	80009e8 <_ZN6CTimer17event_timer_checkEh>
 800225e:	2800      	cmp	r0, #0
 8002260:	d0f9      	beq.n	8002256 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8002262:	2100      	movs	r1, #0
 8002264:	4831      	ldr	r0, [pc, #196]	; (800232c <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8002266:	f7fe fbcd 	bl	8000a04 <_ZN4CRGB8rgb_readEh>
 800226a:	4830      	ldr	r0, [pc, #192]	; (800232c <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 800226c:	f7fe fd66 	bl	8000d3c <_ZN4CRGB14get_rgb_resultEv>
 8002270:	4601      	mov	r1, r0
 8002272:	4668      	mov	r0, sp
 8002274:	f7fe f818 	bl	80002a8 <_ZN13CLinePosition7processEP10sRGBResult>
 8002278:	4668      	mov	r0, sp
 800227a:	f7fe f8ad 	bl	80003d8 <_ZN13CLinePosition7on_lineEv>
 800227e:	4604      	mov	r4, r0
 8002280:	4668      	mov	r0, sp
 8002282:	f7fe f8ab 	bl	80003dc <_ZN13CLinePosition17get_line_positionEv>
 8002286:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8002330 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 800228a:	4828      	ldr	r0, [pc, #160]	; (800232c <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 800228c:	4929      	ldr	r1, [pc, #164]	; (8002334 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 800228e:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002292:	4622      	mov	r2, r4
 8002294:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8002298:	ee17 3a90 	vmov	r3, s15
 800229c:	f7ff fb9e 	bl	80019dc <_ZN9CTerminal6printfEPKcz>
 80022a0:	4668      	mov	r0, sp
 80022a2:	f7fe f899 	bl	80003d8 <_ZN13CLinePosition7on_lineEv>
 80022a6:	4604      	mov	r4, r0
 80022a8:	b1d0      	cbz	r0, 80022e0 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 80022aa:	4668      	mov	r0, sp
 80022ac:	f7fe f896 	bl	80003dc <_ZN13CLinePosition17get_line_positionEv>
 80022b0:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8002320 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 80022b4:	a806      	add	r0, sp, #24
 80022b6:	ee37 0ac0 	vsub.f32	s0, s15, s0
 80022ba:	f7fe f8b7 	bl	800042c <_ZN4CPID7processEf>
 80022be:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 80022c2:	481d      	ldr	r0, [pc, #116]	; (8002338 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80022c4:	ee17 4a90 	vmov	r4, s15
 80022c8:	2100      	movs	r1, #0
 80022ca:	f104 020b 	add.w	r2, r4, #11
 80022ce:	f7fe fdcd 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 80022d2:	4819      	ldr	r0, [pc, #100]	; (8002338 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80022d4:	2101      	movs	r1, #1
 80022d6:	f1c4 020b 	rsb	r2, r4, #11
 80022da:	f7fe fdc7 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 80022de:	e7ba      	b.n	8002256 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 80022e0:	4621      	mov	r1, r4
 80022e2:	4815      	ldr	r0, [pc, #84]	; (8002338 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80022e4:	f06f 020a 	mvn.w	r2, #10
 80022e8:	f7fe fdc0 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 80022ec:	f06f 020a 	mvn.w	r2, #10
 80022f0:	4811      	ldr	r0, [pc, #68]	; (8002338 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80022f2:	2101      	movs	r1, #1
 80022f4:	f7fe fdba 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 80022f8:	480b      	ldr	r0, [pc, #44]	; (8002328 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 80022fa:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80022fe:	f7fe fb4d 	bl	800099c <_ZN6CTimer8delay_msEm>
 8002302:	4621      	mov	r1, r4
 8002304:	4622      	mov	r2, r4
 8002306:	480c      	ldr	r0, [pc, #48]	; (8002338 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8002308:	f7fe fdb0 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 800230c:	480a      	ldr	r0, [pc, #40]	; (8002338 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 800230e:	2101      	movs	r1, #1
 8002310:	4622      	mov	r2, r4
 8002312:	f7fe fdab 	bl	8000e6c <_ZN6CMotor9set_motorEml>
 8002316:	4804      	ldr	r0, [pc, #16]	; (8002328 <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8002318:	2164      	movs	r1, #100	; 0x64
 800231a:	f7fe fb3f 	bl	800099c <_ZN6CTimer8delay_msEm>
 800231e:	e79a      	b.n	8002256 <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8002320:	00000000 	.word	0x00000000
 8002324:	42300000 	.word	0x42300000
 8002328:	2000013c 	.word	0x2000013c
 800232c:	20000030 	.word	0x20000030
 8002330:	447a0000 	.word	0x447a0000
 8002334:	08002f39 	.word	0x08002f39
 8002338:	200000f4 	.word	0x200000f4

0800233c <_ZN5CDemo3runEj>:
 800233c:	2902      	cmp	r1, #2
 800233e:	b508      	push	{r3, lr}
 8002340:	d007      	beq.n	8002352 <_ZN5CDemo3runEj+0x16>
 8002342:	2903      	cmp	r1, #3
 8002344:	d007      	beq.n	8002356 <_ZN5CDemo3runEj+0x1a>
 8002346:	2901      	cmp	r1, #1
 8002348:	d10a      	bne.n	8002360 <_ZN5CDemo3runEj+0x24>
 800234a:	f7ff ff0b 	bl	8002164 <_ZN5CDemo10moves_taskEv>
 800234e:	f7ff fee5 	bl	800211c <_ZN5CDemo10blink_taskEv>
 8002352:	f7ff ff6b 	bl	800222c <_ZN5CDemo24basic_line_follower_taskEv>
 8002356:	4803      	ldr	r0, [pc, #12]	; (8002364 <_ZN5CDemo3runEj+0x28>)
 8002358:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800235c:	f7ff bd28 	b.w	8001db0 <_ZN21CLearningLineFollower3runEv>
 8002360:	bd08      	pop	{r3, pc}
 8002362:	bf00      	nop
 8002364:	20000194 	.word	0x20000194

08002368 <main>:
 8002368:	b508      	push	{r3, lr}
 800236a:	f000 fbe3 	bl	8002b34 <sytem_clock_init>
 800236e:	481e      	ldr	r0, [pc, #120]	; (80023e8 <main+0x80>)
 8002370:	f7fd ff3c 	bl	80001ec <_ZN7CKodama4initEv>
 8002374:	210a      	movs	r1, #10
 8002376:	481c      	ldr	r0, [pc, #112]	; (80023e8 <main+0x80>)
 8002378:	f7fd ff77 	bl	800026a <_ZN7CKodama6set_dtEl>
 800237c:	481a      	ldr	r0, [pc, #104]	; (80023e8 <main+0x80>)
 800237e:	f7fd ff57 	bl	8000230 <_ZN7CKodama5sleepEv>
 8002382:	481a      	ldr	r0, [pc, #104]	; (80023ec <main+0x84>)
 8002384:	f7ff fc0c 	bl	8001ba0 <_ZN5CILED4initEv>
 8002388:	4818      	ldr	r0, [pc, #96]	; (80023ec <main+0x84>)
 800238a:	2105      	movs	r1, #5
 800238c:	f240 52dc 	movw	r2, #1500	; 0x5dc
 8002390:	f7ff fcae 	bl	8001cf0 <_ZN5CILED3setEhj>
 8002394:	4814      	ldr	r0, [pc, #80]	; (80023e8 <main+0x80>)
 8002396:	f44f 7100 	mov.w	r1, #512	; 0x200
 800239a:	f7ff f9b1 	bl	8001700 <_ZN5CGPIO7gpio_inEm>
 800239e:	b1a8      	cbz	r0, 80023cc <main+0x64>
 80023a0:	22c8      	movs	r2, #200	; 0xc8
 80023a2:	4812      	ldr	r0, [pc, #72]	; (80023ec <main+0x84>)
 80023a4:	2102      	movs	r1, #2
 80023a6:	f7ff fca3 	bl	8001cf0 <_ZN5CILED3setEhj>
 80023aa:	21c8      	movs	r1, #200	; 0xc8
 80023ac:	4810      	ldr	r0, [pc, #64]	; (80023f0 <main+0x88>)
 80023ae:	f7fe faf5 	bl	800099c <_ZN6CTimer8delay_msEm>
 80023b2:	4810      	ldr	r0, [pc, #64]	; (80023f4 <main+0x8c>)
 80023b4:	f7fe fa2a 	bl	800080c <_ZN5CWifi11client_demoEv>
 80023b8:	480b      	ldr	r0, [pc, #44]	; (80023e8 <main+0x80>)
 80023ba:	f7fd ff44 	bl	8000246 <_ZN7CKodama6wakeupEv>
 80023be:	480e      	ldr	r0, [pc, #56]	; (80023f8 <main+0x90>)
 80023c0:	f7ff feaa 	bl	8002118 <_ZN5CDemo4initEv>
 80023c4:	480c      	ldr	r0, [pc, #48]	; (80023f8 <main+0x90>)
 80023c6:	2102      	movs	r1, #2
 80023c8:	f7ff ffb8 	bl	800233c <_ZN5CDemo3runEj>
 80023cc:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80023d0:	4807      	ldr	r0, [pc, #28]	; (80023f0 <main+0x88>)
 80023d2:	f7fe fae3 	bl	800099c <_ZN6CTimer8delay_msEm>
 80023d6:	4806      	ldr	r0, [pc, #24]	; (80023f0 <main+0x88>)
 80023d8:	f7fe fad2 	bl	8000980 <_ZN6CTimer8get_timeEv>
 80023dc:	4907      	ldr	r1, [pc, #28]	; (80023fc <main+0x94>)
 80023de:	4602      	mov	r2, r0
 80023e0:	4801      	ldr	r0, [pc, #4]	; (80023e8 <main+0x80>)
 80023e2:	f7ff fafb 	bl	80019dc <_ZN9CTerminal6printfEPKcz>
 80023e6:	e7d5      	b.n	8002394 <main+0x2c>
 80023e8:	20000030 	.word	0x20000030
 80023ec:	20000189 	.word	0x20000189
 80023f0:	2000013c 	.word	0x2000013c
 80023f4:	20000638 	.word	0x20000638
 80023f8:	20000578 	.word	0x20000578
 80023fc:	08002f41 	.word	0x08002f41

08002400 <RCC_GetClocksFreq>:
 8002400:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8002404:	4f9b      	ldr	r7, [pc, #620]	; (8002674 <RCC_GetClocksFreq+0x274>)
 8002406:	687b      	ldr	r3, [r7, #4]
 8002408:	f003 030c 	and.w	r3, r3, #12
 800240c:	2b04      	cmp	r3, #4
 800240e:	d005      	beq.n	800241c <RCC_GetClocksFreq+0x1c>
 8002410:	2b08      	cmp	r3, #8
 8002412:	d006      	beq.n	8002422 <RCC_GetClocksFreq+0x22>
 8002414:	4a98      	ldr	r2, [pc, #608]	; (8002678 <RCC_GetClocksFreq+0x278>)
 8002416:	6002      	str	r2, [r0, #0]
 8002418:	b9b3      	cbnz	r3, 8002448 <RCC_GetClocksFreq+0x48>
 800241a:	e016      	b.n	800244a <RCC_GetClocksFreq+0x4a>
 800241c:	4b96      	ldr	r3, [pc, #600]	; (8002678 <RCC_GetClocksFreq+0x278>)
 800241e:	6003      	str	r3, [r0, #0]
 8002420:	e012      	b.n	8002448 <RCC_GetClocksFreq+0x48>
 8002422:	687b      	ldr	r3, [r7, #4]
 8002424:	6879      	ldr	r1, [r7, #4]
 8002426:	f3c3 4383 	ubfx	r3, r3, #18, #4
 800242a:	1c9a      	adds	r2, r3, #2
 800242c:	03cb      	lsls	r3, r1, #15
 800242e:	bf49      	itett	mi
 8002430:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8002432:	4b92      	ldrpl	r3, [pc, #584]	; (800267c <RCC_GetClocksFreq+0x27c>)
 8002434:	4990      	ldrmi	r1, [pc, #576]	; (8002678 <RCC_GetClocksFreq+0x278>)
 8002436:	f003 030f 	andmi.w	r3, r3, #15
 800243a:	bf44      	itt	mi
 800243c:	3301      	addmi	r3, #1
 800243e:	fbb1 f3f3 	udivmi	r3, r1, r3
 8002442:	4353      	muls	r3, r2
 8002444:	6003      	str	r3, [r0, #0]
 8002446:	e000      	b.n	800244a <RCC_GetClocksFreq+0x4a>
 8002448:	2300      	movs	r3, #0
 800244a:	687a      	ldr	r2, [r7, #4]
 800244c:	4e8c      	ldr	r6, [pc, #560]	; (8002680 <RCC_GetClocksFreq+0x280>)
 800244e:	f8df c234 	ldr.w	ip, [pc, #564]	; 8002684 <RCC_GetClocksFreq+0x284>
 8002452:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8002456:	5cb4      	ldrb	r4, [r6, r2]
 8002458:	6802      	ldr	r2, [r0, #0]
 800245a:	b2e4      	uxtb	r4, r4
 800245c:	fa22 f104 	lsr.w	r1, r2, r4
 8002460:	6041      	str	r1, [r0, #4]
 8002462:	687d      	ldr	r5, [r7, #4]
 8002464:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8002468:	5d75      	ldrb	r5, [r6, r5]
 800246a:	fa21 fe05 	lsr.w	lr, r1, r5
 800246e:	f8c0 e008 	str.w	lr, [r0, #8]
 8002472:	687d      	ldr	r5, [r7, #4]
 8002474:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8002478:	5d75      	ldrb	r5, [r6, r5]
 800247a:	b2ed      	uxtb	r5, r5
 800247c:	40e9      	lsrs	r1, r5
 800247e:	60c1      	str	r1, [r0, #12]
 8002480:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8002482:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8002486:	f008 060f 	and.w	r6, r8, #15
 800248a:	f018 0f10 	tst.w	r8, #16
 800248e:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8002492:	46e0      	mov	r8, ip
 8002494:	b2b6      	uxth	r6, r6
 8002496:	d004      	beq.n	80024a2 <RCC_GetClocksFreq+0xa2>
 8002498:	b11e      	cbz	r6, 80024a2 <RCC_GetClocksFreq+0xa2>
 800249a:	fbb3 f6f6 	udiv	r6, r3, r6
 800249e:	6106      	str	r6, [r0, #16]
 80024a0:	e000      	b.n	80024a4 <RCC_GetClocksFreq+0xa4>
 80024a2:	6102      	str	r2, [r0, #16]
 80024a4:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80024a6:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 80024aa:	f00c 060f 	and.w	r6, ip, #15
 80024ae:	f01c 0f10 	tst.w	ip, #16
 80024b2:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 80024b6:	b2b6      	uxth	r6, r6
 80024b8:	d004      	beq.n	80024c4 <RCC_GetClocksFreq+0xc4>
 80024ba:	b11e      	cbz	r6, 80024c4 <RCC_GetClocksFreq+0xc4>
 80024bc:	fbb3 f6f6 	udiv	r6, r3, r6
 80024c0:	6146      	str	r6, [r0, #20]
 80024c2:	e000      	b.n	80024c6 <RCC_GetClocksFreq+0xc6>
 80024c4:	6142      	str	r2, [r0, #20]
 80024c6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80024c8:	06f6      	lsls	r6, r6, #27
 80024ca:	bf5a      	itte	pl
 80024cc:	4e6a      	ldrpl	r6, [pc, #424]	; (8002678 <RCC_GetClocksFreq+0x278>)
 80024ce:	6186      	strpl	r6, [r0, #24]
 80024d0:	6182      	strmi	r2, [r0, #24]
 80024d2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80024d4:	06b6      	lsls	r6, r6, #26
 80024d6:	bf5a      	itte	pl
 80024d8:	4e67      	ldrpl	r6, [pc, #412]	; (8002678 <RCC_GetClocksFreq+0x278>)
 80024da:	61c6      	strpl	r6, [r0, #28]
 80024dc:	61c2      	strmi	r2, [r0, #28]
 80024de:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80024e0:	0676      	lsls	r6, r6, #25
 80024e2:	bf5a      	itte	pl
 80024e4:	4e64      	ldrpl	r6, [pc, #400]	; (8002678 <RCC_GetClocksFreq+0x278>)
 80024e6:	6206      	strpl	r6, [r0, #32]
 80024e8:	6202      	strmi	r2, [r0, #32]
 80024ea:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80024ec:	05f6      	lsls	r6, r6, #23
 80024ee:	d506      	bpl.n	80024fe <RCC_GetClocksFreq+0xfe>
 80024f0:	429a      	cmp	r2, r3
 80024f2:	d104      	bne.n	80024fe <RCC_GetClocksFreq+0xfe>
 80024f4:	42a5      	cmp	r5, r4
 80024f6:	d102      	bne.n	80024fe <RCC_GetClocksFreq+0xfe>
 80024f8:	0056      	lsls	r6, r2, #1
 80024fa:	6246      	str	r6, [r0, #36]	; 0x24
 80024fc:	e000      	b.n	8002500 <RCC_GetClocksFreq+0x100>
 80024fe:	6241      	str	r1, [r0, #36]	; 0x24
 8002500:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002502:	04f6      	lsls	r6, r6, #19
 8002504:	d506      	bpl.n	8002514 <RCC_GetClocksFreq+0x114>
 8002506:	429a      	cmp	r2, r3
 8002508:	d104      	bne.n	8002514 <RCC_GetClocksFreq+0x114>
 800250a:	42a5      	cmp	r5, r4
 800250c:	d102      	bne.n	8002514 <RCC_GetClocksFreq+0x114>
 800250e:	0056      	lsls	r6, r2, #1
 8002510:	6286      	str	r6, [r0, #40]	; 0x28
 8002512:	e000      	b.n	8002516 <RCC_GetClocksFreq+0x116>
 8002514:	6281      	str	r1, [r0, #40]	; 0x28
 8002516:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002518:	05b6      	lsls	r6, r6, #22
 800251a:	d506      	bpl.n	800252a <RCC_GetClocksFreq+0x12a>
 800251c:	429a      	cmp	r2, r3
 800251e:	d104      	bne.n	800252a <RCC_GetClocksFreq+0x12a>
 8002520:	42a5      	cmp	r5, r4
 8002522:	d102      	bne.n	800252a <RCC_GetClocksFreq+0x12a>
 8002524:	0056      	lsls	r6, r2, #1
 8002526:	62c6      	str	r6, [r0, #44]	; 0x2c
 8002528:	e000      	b.n	800252c <RCC_GetClocksFreq+0x12c>
 800252a:	62c1      	str	r1, [r0, #44]	; 0x2c
 800252c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800252e:	0576      	lsls	r6, r6, #21
 8002530:	d506      	bpl.n	8002540 <RCC_GetClocksFreq+0x140>
 8002532:	429a      	cmp	r2, r3
 8002534:	d104      	bne.n	8002540 <RCC_GetClocksFreq+0x140>
 8002536:	42a5      	cmp	r5, r4
 8002538:	d102      	bne.n	8002540 <RCC_GetClocksFreq+0x140>
 800253a:	0056      	lsls	r6, r2, #1
 800253c:	64c6      	str	r6, [r0, #76]	; 0x4c
 800253e:	e000      	b.n	8002542 <RCC_GetClocksFreq+0x142>
 8002540:	64c1      	str	r1, [r0, #76]	; 0x4c
 8002542:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002544:	0536      	lsls	r6, r6, #20
 8002546:	d506      	bpl.n	8002556 <RCC_GetClocksFreq+0x156>
 8002548:	429a      	cmp	r2, r3
 800254a:	d104      	bne.n	8002556 <RCC_GetClocksFreq+0x156>
 800254c:	42a5      	cmp	r5, r4
 800254e:	d102      	bne.n	8002556 <RCC_GetClocksFreq+0x156>
 8002550:	0056      	lsls	r6, r2, #1
 8002552:	6506      	str	r6, [r0, #80]	; 0x50
 8002554:	e000      	b.n	8002558 <RCC_GetClocksFreq+0x158>
 8002556:	6501      	str	r1, [r0, #80]	; 0x50
 8002558:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800255a:	04b6      	lsls	r6, r6, #18
 800255c:	d506      	bpl.n	800256c <RCC_GetClocksFreq+0x16c>
 800255e:	429a      	cmp	r2, r3
 8002560:	d104      	bne.n	800256c <RCC_GetClocksFreq+0x16c>
 8002562:	42a5      	cmp	r5, r4
 8002564:	d102      	bne.n	800256c <RCC_GetClocksFreq+0x16c>
 8002566:	0056      	lsls	r6, r2, #1
 8002568:	6546      	str	r6, [r0, #84]	; 0x54
 800256a:	e000      	b.n	800256e <RCC_GetClocksFreq+0x16e>
 800256c:	6501      	str	r1, [r0, #80]	; 0x50
 800256e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002570:	0436      	lsls	r6, r6, #16
 8002572:	d506      	bpl.n	8002582 <RCC_GetClocksFreq+0x182>
 8002574:	429a      	cmp	r2, r3
 8002576:	d104      	bne.n	8002582 <RCC_GetClocksFreq+0x182>
 8002578:	42a5      	cmp	r5, r4
 800257a:	d102      	bne.n	8002582 <RCC_GetClocksFreq+0x182>
 800257c:	0053      	lsls	r3, r2, #1
 800257e:	6583      	str	r3, [r0, #88]	; 0x58
 8002580:	e000      	b.n	8002584 <RCC_GetClocksFreq+0x184>
 8002582:	6581      	str	r1, [r0, #88]	; 0x58
 8002584:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8002586:	4b3b      	ldr	r3, [pc, #236]	; (8002674 <RCC_GetClocksFreq+0x274>)
 8002588:	07a4      	lsls	r4, r4, #30
 800258a:	d101      	bne.n	8002590 <RCC_GetClocksFreq+0x190>
 800258c:	6381      	str	r1, [r0, #56]	; 0x38
 800258e:	e015      	b.n	80025bc <RCC_GetClocksFreq+0x1bc>
 8002590:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002592:	f001 0103 	and.w	r1, r1, #3
 8002596:	2901      	cmp	r1, #1
 8002598:	d101      	bne.n	800259e <RCC_GetClocksFreq+0x19e>
 800259a:	6382      	str	r2, [r0, #56]	; 0x38
 800259c:	e00e      	b.n	80025bc <RCC_GetClocksFreq+0x1bc>
 800259e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80025a0:	f001 0103 	and.w	r1, r1, #3
 80025a4:	2902      	cmp	r1, #2
 80025a6:	d102      	bne.n	80025ae <RCC_GetClocksFreq+0x1ae>
 80025a8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80025ac:	e005      	b.n	80025ba <RCC_GetClocksFreq+0x1ba>
 80025ae:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80025b0:	f003 0303 	and.w	r3, r3, #3
 80025b4:	2b03      	cmp	r3, #3
 80025b6:	d101      	bne.n	80025bc <RCC_GetClocksFreq+0x1bc>
 80025b8:	4b2f      	ldr	r3, [pc, #188]	; (8002678 <RCC_GetClocksFreq+0x278>)
 80025ba:	6383      	str	r3, [r0, #56]	; 0x38
 80025bc:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80025be:	4b2d      	ldr	r3, [pc, #180]	; (8002674 <RCC_GetClocksFreq+0x274>)
 80025c0:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80025c4:	d102      	bne.n	80025cc <RCC_GetClocksFreq+0x1cc>
 80025c6:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 80025ca:	e018      	b.n	80025fe <RCC_GetClocksFreq+0x1fe>
 80025cc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80025ce:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80025d2:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80025d6:	d101      	bne.n	80025dc <RCC_GetClocksFreq+0x1dc>
 80025d8:	63c2      	str	r2, [r0, #60]	; 0x3c
 80025da:	e010      	b.n	80025fe <RCC_GetClocksFreq+0x1fe>
 80025dc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80025de:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80025e2:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80025e6:	d102      	bne.n	80025ee <RCC_GetClocksFreq+0x1ee>
 80025e8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80025ec:	e006      	b.n	80025fc <RCC_GetClocksFreq+0x1fc>
 80025ee:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80025f0:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 80025f4:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 80025f8:	d101      	bne.n	80025fe <RCC_GetClocksFreq+0x1fe>
 80025fa:	4b1f      	ldr	r3, [pc, #124]	; (8002678 <RCC_GetClocksFreq+0x278>)
 80025fc:	63c3      	str	r3, [r0, #60]	; 0x3c
 80025fe:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002600:	4b1c      	ldr	r3, [pc, #112]	; (8002674 <RCC_GetClocksFreq+0x274>)
 8002602:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8002606:	d102      	bne.n	800260e <RCC_GetClocksFreq+0x20e>
 8002608:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 800260c:	e018      	b.n	8002640 <RCC_GetClocksFreq+0x240>
 800260e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002610:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002614:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8002618:	d101      	bne.n	800261e <RCC_GetClocksFreq+0x21e>
 800261a:	6402      	str	r2, [r0, #64]	; 0x40
 800261c:	e010      	b.n	8002640 <RCC_GetClocksFreq+0x240>
 800261e:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002620:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002624:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8002628:	d102      	bne.n	8002630 <RCC_GetClocksFreq+0x230>
 800262a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800262e:	e006      	b.n	800263e <RCC_GetClocksFreq+0x23e>
 8002630:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002632:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8002636:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 800263a:	d101      	bne.n	8002640 <RCC_GetClocksFreq+0x240>
 800263c:	4b0e      	ldr	r3, [pc, #56]	; (8002678 <RCC_GetClocksFreq+0x278>)
 800263e:	6403      	str	r3, [r0, #64]	; 0x40
 8002640:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002642:	4b0c      	ldr	r3, [pc, #48]	; (8002674 <RCC_GetClocksFreq+0x274>)
 8002644:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8002648:	d102      	bne.n	8002650 <RCC_GetClocksFreq+0x250>
 800264a:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 800264e:	e023      	b.n	8002698 <RCC_GetClocksFreq+0x298>
 8002650:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002652:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8002656:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800265a:	d101      	bne.n	8002660 <RCC_GetClocksFreq+0x260>
 800265c:	6442      	str	r2, [r0, #68]	; 0x44
 800265e:	e01b      	b.n	8002698 <RCC_GetClocksFreq+0x298>
 8002660:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002662:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8002666:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800266a:	d10d      	bne.n	8002688 <RCC_GetClocksFreq+0x288>
 800266c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002670:	e011      	b.n	8002696 <RCC_GetClocksFreq+0x296>
 8002672:	bf00      	nop
 8002674:	40021000 	.word	0x40021000
 8002678:	007a1200 	.word	0x007a1200
 800267c:	003d0900 	.word	0x003d0900
 8002680:	20000020 	.word	0x20000020
 8002684:	20000000 	.word	0x20000000
 8002688:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800268a:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 800268e:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8002692:	d101      	bne.n	8002698 <RCC_GetClocksFreq+0x298>
 8002694:	4b13      	ldr	r3, [pc, #76]	; (80026e4 <RCC_GetClocksFreq+0x2e4>)
 8002696:	6443      	str	r3, [r0, #68]	; 0x44
 8002698:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800269a:	4b13      	ldr	r3, [pc, #76]	; (80026e8 <RCC_GetClocksFreq+0x2e8>)
 800269c:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80026a0:	d103      	bne.n	80026aa <RCC_GetClocksFreq+0x2aa>
 80026a2:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80026a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80026aa:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80026ac:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80026b0:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80026b4:	d102      	bne.n	80026bc <RCC_GetClocksFreq+0x2bc>
 80026b6:	6482      	str	r2, [r0, #72]	; 0x48
 80026b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80026bc:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80026be:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80026c2:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80026c6:	d102      	bne.n	80026ce <RCC_GetClocksFreq+0x2ce>
 80026c8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80026cc:	e006      	b.n	80026dc <RCC_GetClocksFreq+0x2dc>
 80026ce:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80026d0:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80026d4:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80026d8:	d101      	bne.n	80026de <RCC_GetClocksFreq+0x2de>
 80026da:	4b02      	ldr	r3, [pc, #8]	; (80026e4 <RCC_GetClocksFreq+0x2e4>)
 80026dc:	6483      	str	r3, [r0, #72]	; 0x48
 80026de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80026e2:	bf00      	nop
 80026e4:	007a1200 	.word	0x007a1200
 80026e8:	40021000 	.word	0x40021000

080026ec <RCC_AHBPeriphClockCmd>:
 80026ec:	bf00      	nop
 80026ee:	bf00      	nop
 80026f0:	4b04      	ldr	r3, [pc, #16]	; (8002704 <RCC_AHBPeriphClockCmd+0x18>)
 80026f2:	695a      	ldr	r2, [r3, #20]
 80026f4:	b109      	cbz	r1, 80026fa <RCC_AHBPeriphClockCmd+0xe>
 80026f6:	4310      	orrs	r0, r2
 80026f8:	e001      	b.n	80026fe <RCC_AHBPeriphClockCmd+0x12>
 80026fa:	ea22 0000 	bic.w	r0, r2, r0
 80026fe:	6158      	str	r0, [r3, #20]
 8002700:	4770      	bx	lr
 8002702:	bf00      	nop
 8002704:	40021000 	.word	0x40021000

08002708 <RCC_APB2PeriphClockCmd>:
 8002708:	bf00      	nop
 800270a:	bf00      	nop
 800270c:	4b04      	ldr	r3, [pc, #16]	; (8002720 <RCC_APB2PeriphClockCmd+0x18>)
 800270e:	699a      	ldr	r2, [r3, #24]
 8002710:	b109      	cbz	r1, 8002716 <RCC_APB2PeriphClockCmd+0xe>
 8002712:	4310      	orrs	r0, r2
 8002714:	e001      	b.n	800271a <RCC_APB2PeriphClockCmd+0x12>
 8002716:	ea22 0000 	bic.w	r0, r2, r0
 800271a:	6198      	str	r0, [r3, #24]
 800271c:	4770      	bx	lr
 800271e:	bf00      	nop
 8002720:	40021000 	.word	0x40021000

08002724 <RCC_APB1PeriphClockCmd>:
 8002724:	bf00      	nop
 8002726:	bf00      	nop
 8002728:	4b04      	ldr	r3, [pc, #16]	; (800273c <RCC_APB1PeriphClockCmd+0x18>)
 800272a:	69da      	ldr	r2, [r3, #28]
 800272c:	b109      	cbz	r1, 8002732 <RCC_APB1PeriphClockCmd+0xe>
 800272e:	4310      	orrs	r0, r2
 8002730:	e001      	b.n	8002736 <RCC_APB1PeriphClockCmd+0x12>
 8002732:	ea22 0000 	bic.w	r0, r2, r0
 8002736:	61d8      	str	r0, [r3, #28]
 8002738:	4770      	bx	lr
 800273a:	bf00      	nop
 800273c:	40021000 	.word	0x40021000

08002740 <TIM_TimeBaseInit>:
 8002740:	bf00      	nop
 8002742:	bf00      	nop
 8002744:	bf00      	nop
 8002746:	4a24      	ldr	r2, [pc, #144]	; (80027d8 <TIM_TimeBaseInit+0x98>)
 8002748:	8803      	ldrh	r3, [r0, #0]
 800274a:	4290      	cmp	r0, r2
 800274c:	b29b      	uxth	r3, r3
 800274e:	d012      	beq.n	8002776 <TIM_TimeBaseInit+0x36>
 8002750:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002754:	4290      	cmp	r0, r2
 8002756:	d00e      	beq.n	8002776 <TIM_TimeBaseInit+0x36>
 8002758:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800275c:	d00b      	beq.n	8002776 <TIM_TimeBaseInit+0x36>
 800275e:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002762:	4290      	cmp	r0, r2
 8002764:	d007      	beq.n	8002776 <TIM_TimeBaseInit+0x36>
 8002766:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800276a:	4290      	cmp	r0, r2
 800276c:	d003      	beq.n	8002776 <TIM_TimeBaseInit+0x36>
 800276e:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002772:	4290      	cmp	r0, r2
 8002774:	d103      	bne.n	800277e <TIM_TimeBaseInit+0x3e>
 8002776:	884a      	ldrh	r2, [r1, #2]
 8002778:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 800277c:	4313      	orrs	r3, r2
 800277e:	4a17      	ldr	r2, [pc, #92]	; (80027dc <TIM_TimeBaseInit+0x9c>)
 8002780:	4290      	cmp	r0, r2
 8002782:	d008      	beq.n	8002796 <TIM_TimeBaseInit+0x56>
 8002784:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002788:	4290      	cmp	r0, r2
 800278a:	bf1f      	itttt	ne
 800278c:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8002790:	890a      	ldrhne	r2, [r1, #8]
 8002792:	b29b      	uxthne	r3, r3
 8002794:	4313      	orrne	r3, r2
 8002796:	8003      	strh	r3, [r0, #0]
 8002798:	684b      	ldr	r3, [r1, #4]
 800279a:	62c3      	str	r3, [r0, #44]	; 0x2c
 800279c:	880b      	ldrh	r3, [r1, #0]
 800279e:	8503      	strh	r3, [r0, #40]	; 0x28
 80027a0:	4b0d      	ldr	r3, [pc, #52]	; (80027d8 <TIM_TimeBaseInit+0x98>)
 80027a2:	4298      	cmp	r0, r3
 80027a4:	d013      	beq.n	80027ce <TIM_TimeBaseInit+0x8e>
 80027a6:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80027aa:	4298      	cmp	r0, r3
 80027ac:	d00f      	beq.n	80027ce <TIM_TimeBaseInit+0x8e>
 80027ae:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80027b2:	4298      	cmp	r0, r3
 80027b4:	d00b      	beq.n	80027ce <TIM_TimeBaseInit+0x8e>
 80027b6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80027ba:	4298      	cmp	r0, r3
 80027bc:	d007      	beq.n	80027ce <TIM_TimeBaseInit+0x8e>
 80027be:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80027c2:	4298      	cmp	r0, r3
 80027c4:	d003      	beq.n	80027ce <TIM_TimeBaseInit+0x8e>
 80027c6:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80027ca:	4298      	cmp	r0, r3
 80027cc:	d101      	bne.n	80027d2 <TIM_TimeBaseInit+0x92>
 80027ce:	894b      	ldrh	r3, [r1, #10]
 80027d0:	8603      	strh	r3, [r0, #48]	; 0x30
 80027d2:	2301      	movs	r3, #1
 80027d4:	6143      	str	r3, [r0, #20]
 80027d6:	4770      	bx	lr
 80027d8:	40012c00 	.word	0x40012c00
 80027dc:	40001000 	.word	0x40001000

080027e0 <TIM_Cmd>:
 80027e0:	bf00      	nop
 80027e2:	bf00      	nop
 80027e4:	8803      	ldrh	r3, [r0, #0]
 80027e6:	b119      	cbz	r1, 80027f0 <TIM_Cmd+0x10>
 80027e8:	b29b      	uxth	r3, r3
 80027ea:	f043 0301 	orr.w	r3, r3, #1
 80027ee:	e003      	b.n	80027f8 <TIM_Cmd+0x18>
 80027f0:	f023 0301 	bic.w	r3, r3, #1
 80027f4:	041b      	lsls	r3, r3, #16
 80027f6:	0c1b      	lsrs	r3, r3, #16
 80027f8:	8003      	strh	r3, [r0, #0]
 80027fa:	4770      	bx	lr

080027fc <TIM_OC2Init>:
 80027fc:	b570      	push	{r4, r5, r6, lr}
 80027fe:	bf00      	nop
 8002800:	bf00      	nop
 8002802:	bf00      	nop
 8002804:	bf00      	nop
 8002806:	6a03      	ldr	r3, [r0, #32]
 8002808:	680d      	ldr	r5, [r1, #0]
 800280a:	898e      	ldrh	r6, [r1, #12]
 800280c:	f023 0310 	bic.w	r3, r3, #16
 8002810:	6203      	str	r3, [r0, #32]
 8002812:	6a03      	ldr	r3, [r0, #32]
 8002814:	6844      	ldr	r4, [r0, #4]
 8002816:	6982      	ldr	r2, [r0, #24]
 8002818:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 800281c:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002820:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002824:	f023 0220 	bic.w	r2, r3, #32
 8002828:	888b      	ldrh	r3, [r1, #4]
 800282a:	4333      	orrs	r3, r6
 800282c:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8002830:	4a10      	ldr	r2, [pc, #64]	; (8002874 <TIM_OC2Init+0x78>)
 8002832:	4290      	cmp	r0, r2
 8002834:	d003      	beq.n	800283e <TIM_OC2Init+0x42>
 8002836:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800283a:	4290      	cmp	r0, r2
 800283c:	d114      	bne.n	8002868 <TIM_OC2Init+0x6c>
 800283e:	bf00      	nop
 8002840:	bf00      	nop
 8002842:	bf00      	nop
 8002844:	bf00      	nop
 8002846:	89ca      	ldrh	r2, [r1, #14]
 8002848:	8a0e      	ldrh	r6, [r1, #16]
 800284a:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800284e:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002852:	88ca      	ldrh	r2, [r1, #6]
 8002854:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002858:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 800285c:	8a4a      	ldrh	r2, [r1, #18]
 800285e:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8002862:	4332      	orrs	r2, r6
 8002864:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8002868:	688a      	ldr	r2, [r1, #8]
 800286a:	6044      	str	r4, [r0, #4]
 800286c:	6185      	str	r5, [r0, #24]
 800286e:	6382      	str	r2, [r0, #56]	; 0x38
 8002870:	6203      	str	r3, [r0, #32]
 8002872:	bd70      	pop	{r4, r5, r6, pc}
 8002874:	40012c00 	.word	0x40012c00

08002878 <TIM_SetCompare2>:
 8002878:	bf00      	nop
 800287a:	6381      	str	r1, [r0, #56]	; 0x38
 800287c:	4770      	bx	lr

0800287e <TIM_CtrlPWMOutputs>:
 800287e:	bf00      	nop
 8002880:	bf00      	nop
 8002882:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002884:	b111      	cbz	r1, 800288c <TIM_CtrlPWMOutputs+0xe>
 8002886:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 800288a:	e001      	b.n	8002890 <TIM_CtrlPWMOutputs+0x12>
 800288c:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002890:	6443      	str	r3, [r0, #68]	; 0x44
 8002892:	4770      	bx	lr

08002894 <TIM_ITConfig>:
 8002894:	bf00      	nop
 8002896:	bf00      	nop
 8002898:	bf00      	nop
 800289a:	68c3      	ldr	r3, [r0, #12]
 800289c:	b10a      	cbz	r2, 80028a2 <TIM_ITConfig+0xe>
 800289e:	4319      	orrs	r1, r3
 80028a0:	e002      	b.n	80028a8 <TIM_ITConfig+0x14>
 80028a2:	43c9      	mvns	r1, r1
 80028a4:	b289      	uxth	r1, r1
 80028a6:	4019      	ands	r1, r3
 80028a8:	60c1      	str	r1, [r0, #12]
 80028aa:	4770      	bx	lr

080028ac <TIM_GetITStatus>:
 80028ac:	bf00      	nop
 80028ae:	bf00      	nop
 80028b0:	6903      	ldr	r3, [r0, #16]
 80028b2:	68c2      	ldr	r2, [r0, #12]
 80028b4:	ea11 0003 	ands.w	r0, r1, r3
 80028b8:	d003      	beq.n	80028c2 <TIM_GetITStatus+0x16>
 80028ba:	4211      	tst	r1, r2
 80028bc:	bf14      	ite	ne
 80028be:	2001      	movne	r0, #1
 80028c0:	2000      	moveq	r0, #0
 80028c2:	4770      	bx	lr

080028c4 <TIM_ClearITPendingBit>:
 80028c4:	bf00      	nop
 80028c6:	43c9      	mvns	r1, r1
 80028c8:	b289      	uxth	r1, r1
 80028ca:	6101      	str	r1, [r0, #16]
 80028cc:	4770      	bx	lr
	...

080028d0 <USART_Init>:
 80028d0:	b530      	push	{r4, r5, lr}
 80028d2:	4604      	mov	r4, r0
 80028d4:	b099      	sub	sp, #100	; 0x64
 80028d6:	460d      	mov	r5, r1
 80028d8:	bf00      	nop
 80028da:	bf00      	nop
 80028dc:	bf00      	nop
 80028de:	bf00      	nop
 80028e0:	bf00      	nop
 80028e2:	bf00      	nop
 80028e4:	bf00      	nop
 80028e6:	6803      	ldr	r3, [r0, #0]
 80028e8:	f023 0301 	bic.w	r3, r3, #1
 80028ec:	6003      	str	r3, [r0, #0]
 80028ee:	6843      	ldr	r3, [r0, #4]
 80028f0:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80028f4:	688b      	ldr	r3, [r1, #8]
 80028f6:	68c9      	ldr	r1, [r1, #12]
 80028f8:	4313      	orrs	r3, r2
 80028fa:	6043      	str	r3, [r0, #4]
 80028fc:	686a      	ldr	r2, [r5, #4]
 80028fe:	6803      	ldr	r3, [r0, #0]
 8002900:	4311      	orrs	r1, r2
 8002902:	692a      	ldr	r2, [r5, #16]
 8002904:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002908:	430a      	orrs	r2, r1
 800290a:	f023 030c 	bic.w	r3, r3, #12
 800290e:	4313      	orrs	r3, r2
 8002910:	6003      	str	r3, [r0, #0]
 8002912:	6883      	ldr	r3, [r0, #8]
 8002914:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002918:	696b      	ldr	r3, [r5, #20]
 800291a:	4313      	orrs	r3, r2
 800291c:	6083      	str	r3, [r0, #8]
 800291e:	a801      	add	r0, sp, #4
 8002920:	f7ff fd6e 	bl	8002400 <RCC_GetClocksFreq>
 8002924:	4b17      	ldr	r3, [pc, #92]	; (8002984 <USART_Init+0xb4>)
 8002926:	429c      	cmp	r4, r3
 8002928:	d101      	bne.n	800292e <USART_Init+0x5e>
 800292a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800292c:	e00e      	b.n	800294c <USART_Init+0x7c>
 800292e:	4b16      	ldr	r3, [pc, #88]	; (8002988 <USART_Init+0xb8>)
 8002930:	429c      	cmp	r4, r3
 8002932:	d101      	bne.n	8002938 <USART_Init+0x68>
 8002934:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002936:	e009      	b.n	800294c <USART_Init+0x7c>
 8002938:	4b14      	ldr	r3, [pc, #80]	; (800298c <USART_Init+0xbc>)
 800293a:	429c      	cmp	r4, r3
 800293c:	d101      	bne.n	8002942 <USART_Init+0x72>
 800293e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002940:	e004      	b.n	800294c <USART_Init+0x7c>
 8002942:	4b13      	ldr	r3, [pc, #76]	; (8002990 <USART_Init+0xc0>)
 8002944:	429c      	cmp	r4, r3
 8002946:	bf0c      	ite	eq
 8002948:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 800294a:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 800294c:	6822      	ldr	r2, [r4, #0]
 800294e:	6829      	ldr	r1, [r5, #0]
 8002950:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002954:	bf18      	it	ne
 8002956:	005b      	lslne	r3, r3, #1
 8002958:	fbb3 f2f1 	udiv	r2, r3, r1
 800295c:	fb01 3312 	mls	r3, r1, r2, r3
 8002960:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002964:	6823      	ldr	r3, [r4, #0]
 8002966:	bf28      	it	cs
 8002968:	3201      	addcs	r2, #1
 800296a:	041b      	lsls	r3, r3, #16
 800296c:	bf41      	itttt	mi
 800296e:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002972:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002976:	4013      	andmi	r3, r2
 8002978:	ea41 0203 	orrmi.w	r2, r1, r3
 800297c:	b292      	uxth	r2, r2
 800297e:	81a2      	strh	r2, [r4, #12]
 8002980:	b019      	add	sp, #100	; 0x64
 8002982:	bd30      	pop	{r4, r5, pc}
 8002984:	40013800 	.word	0x40013800
 8002988:	40004400 	.word	0x40004400
 800298c:	40004800 	.word	0x40004800
 8002990:	40004c00 	.word	0x40004c00

08002994 <USART_Cmd>:
 8002994:	bf00      	nop
 8002996:	bf00      	nop
 8002998:	6803      	ldr	r3, [r0, #0]
 800299a:	b111      	cbz	r1, 80029a2 <USART_Cmd+0xe>
 800299c:	f043 0301 	orr.w	r3, r3, #1
 80029a0:	e001      	b.n	80029a6 <USART_Cmd+0x12>
 80029a2:	f023 0301 	bic.w	r3, r3, #1
 80029a6:	6003      	str	r3, [r0, #0]
 80029a8:	4770      	bx	lr

080029aa <USART_ReceiveData>:
 80029aa:	bf00      	nop
 80029ac:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80029ae:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80029b2:	4770      	bx	lr

080029b4 <USART_ITConfig>:
 80029b4:	b510      	push	{r4, lr}
 80029b6:	bf00      	nop
 80029b8:	bf00      	nop
 80029ba:	bf00      	nop
 80029bc:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80029c0:	2301      	movs	r3, #1
 80029c2:	b2c9      	uxtb	r1, r1
 80029c4:	2c02      	cmp	r4, #2
 80029c6:	fa03 f301 	lsl.w	r3, r3, r1
 80029ca:	d101      	bne.n	80029d0 <USART_ITConfig+0x1c>
 80029cc:	3004      	adds	r0, #4
 80029ce:	e002      	b.n	80029d6 <USART_ITConfig+0x22>
 80029d0:	2c03      	cmp	r4, #3
 80029d2:	bf08      	it	eq
 80029d4:	3008      	addeq	r0, #8
 80029d6:	b112      	cbz	r2, 80029de <USART_ITConfig+0x2a>
 80029d8:	6802      	ldr	r2, [r0, #0]
 80029da:	4313      	orrs	r3, r2
 80029dc:	e002      	b.n	80029e4 <USART_ITConfig+0x30>
 80029de:	6802      	ldr	r2, [r0, #0]
 80029e0:	ea22 0303 	bic.w	r3, r2, r3
 80029e4:	6003      	str	r3, [r0, #0]
 80029e6:	bd10      	pop	{r4, pc}

080029e8 <USART_GetITStatus>:
 80029e8:	b510      	push	{r4, lr}
 80029ea:	bf00      	nop
 80029ec:	bf00      	nop
 80029ee:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80029f2:	b2cc      	uxtb	r4, r1
 80029f4:	2301      	movs	r3, #1
 80029f6:	2a01      	cmp	r2, #1
 80029f8:	fa03 f304 	lsl.w	r3, r3, r4
 80029fc:	d101      	bne.n	8002a02 <USART_GetITStatus+0x1a>
 80029fe:	6802      	ldr	r2, [r0, #0]
 8002a00:	e003      	b.n	8002a0a <USART_GetITStatus+0x22>
 8002a02:	2a02      	cmp	r2, #2
 8002a04:	bf0c      	ite	eq
 8002a06:	6842      	ldreq	r2, [r0, #4]
 8002a08:	6882      	ldrne	r2, [r0, #8]
 8002a0a:	4013      	ands	r3, r2
 8002a0c:	69c2      	ldr	r2, [r0, #28]
 8002a0e:	b13b      	cbz	r3, 8002a20 <USART_GetITStatus+0x38>
 8002a10:	0c09      	lsrs	r1, r1, #16
 8002a12:	2301      	movs	r3, #1
 8002a14:	408b      	lsls	r3, r1
 8002a16:	4213      	tst	r3, r2
 8002a18:	bf14      	ite	ne
 8002a1a:	2001      	movne	r0, #1
 8002a1c:	2000      	moveq	r0, #0
 8002a1e:	bd10      	pop	{r4, pc}
 8002a20:	4618      	mov	r0, r3
 8002a22:	bd10      	pop	{r4, pc}

08002a24 <USART_ClearITPendingBit>:
 8002a24:	bf00      	nop
 8002a26:	bf00      	nop
 8002a28:	2301      	movs	r3, #1
 8002a2a:	0c09      	lsrs	r1, r1, #16
 8002a2c:	408b      	lsls	r3, r1
 8002a2e:	6203      	str	r3, [r0, #32]
 8002a30:	4770      	bx	lr
	...

08002a34 <SystemInit>:
 8002a34:	4a39      	ldr	r2, [pc, #228]	; (8002b1c <SystemInit+0xe8>)
 8002a36:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002a3a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002a3e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002a42:	4b37      	ldr	r3, [pc, #220]	; (8002b20 <SystemInit+0xec>)
 8002a44:	681a      	ldr	r2, [r3, #0]
 8002a46:	f042 0201 	orr.w	r2, r2, #1
 8002a4a:	601a      	str	r2, [r3, #0]
 8002a4c:	6859      	ldr	r1, [r3, #4]
 8002a4e:	4a35      	ldr	r2, [pc, #212]	; (8002b24 <SystemInit+0xf0>)
 8002a50:	400a      	ands	r2, r1
 8002a52:	605a      	str	r2, [r3, #4]
 8002a54:	681a      	ldr	r2, [r3, #0]
 8002a56:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002a5a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002a5e:	601a      	str	r2, [r3, #0]
 8002a60:	681a      	ldr	r2, [r3, #0]
 8002a62:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002a66:	601a      	str	r2, [r3, #0]
 8002a68:	685a      	ldr	r2, [r3, #4]
 8002a6a:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002a6e:	605a      	str	r2, [r3, #4]
 8002a70:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002a72:	f022 020f 	bic.w	r2, r2, #15
 8002a76:	62da      	str	r2, [r3, #44]	; 0x2c
 8002a78:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002a7a:	4a2b      	ldr	r2, [pc, #172]	; (8002b28 <SystemInit+0xf4>)
 8002a7c:	b082      	sub	sp, #8
 8002a7e:	400a      	ands	r2, r1
 8002a80:	631a      	str	r2, [r3, #48]	; 0x30
 8002a82:	2200      	movs	r2, #0
 8002a84:	609a      	str	r2, [r3, #8]
 8002a86:	9200      	str	r2, [sp, #0]
 8002a88:	9201      	str	r2, [sp, #4]
 8002a8a:	681a      	ldr	r2, [r3, #0]
 8002a8c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002a90:	601a      	str	r2, [r3, #0]
 8002a92:	681a      	ldr	r2, [r3, #0]
 8002a94:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002a98:	9201      	str	r2, [sp, #4]
 8002a9a:	9a00      	ldr	r2, [sp, #0]
 8002a9c:	3201      	adds	r2, #1
 8002a9e:	9200      	str	r2, [sp, #0]
 8002aa0:	9a01      	ldr	r2, [sp, #4]
 8002aa2:	b91a      	cbnz	r2, 8002aac <SystemInit+0x78>
 8002aa4:	9a00      	ldr	r2, [sp, #0]
 8002aa6:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002aaa:	d1f2      	bne.n	8002a92 <SystemInit+0x5e>
 8002aac:	681a      	ldr	r2, [r3, #0]
 8002aae:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002ab2:	bf18      	it	ne
 8002ab4:	2201      	movne	r2, #1
 8002ab6:	9201      	str	r2, [sp, #4]
 8002ab8:	9a01      	ldr	r2, [sp, #4]
 8002aba:	2a01      	cmp	r2, #1
 8002abc:	d005      	beq.n	8002aca <SystemInit+0x96>
 8002abe:	4b17      	ldr	r3, [pc, #92]	; (8002b1c <SystemInit+0xe8>)
 8002ac0:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002ac4:	609a      	str	r2, [r3, #8]
 8002ac6:	b002      	add	sp, #8
 8002ac8:	4770      	bx	lr
 8002aca:	4a18      	ldr	r2, [pc, #96]	; (8002b2c <SystemInit+0xf8>)
 8002acc:	2112      	movs	r1, #18
 8002ace:	6011      	str	r1, [r2, #0]
 8002ad0:	685a      	ldr	r2, [r3, #4]
 8002ad2:	605a      	str	r2, [r3, #4]
 8002ad4:	685a      	ldr	r2, [r3, #4]
 8002ad6:	605a      	str	r2, [r3, #4]
 8002ad8:	685a      	ldr	r2, [r3, #4]
 8002ada:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002ade:	605a      	str	r2, [r3, #4]
 8002ae0:	685a      	ldr	r2, [r3, #4]
 8002ae2:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002ae6:	605a      	str	r2, [r3, #4]
 8002ae8:	685a      	ldr	r2, [r3, #4]
 8002aea:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002aee:	605a      	str	r2, [r3, #4]
 8002af0:	681a      	ldr	r2, [r3, #0]
 8002af2:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002af6:	601a      	str	r2, [r3, #0]
 8002af8:	6819      	ldr	r1, [r3, #0]
 8002afa:	4a09      	ldr	r2, [pc, #36]	; (8002b20 <SystemInit+0xec>)
 8002afc:	0189      	lsls	r1, r1, #6
 8002afe:	d5fb      	bpl.n	8002af8 <SystemInit+0xc4>
 8002b00:	6851      	ldr	r1, [r2, #4]
 8002b02:	f021 0103 	bic.w	r1, r1, #3
 8002b06:	6051      	str	r1, [r2, #4]
 8002b08:	6851      	ldr	r1, [r2, #4]
 8002b0a:	f041 0102 	orr.w	r1, r1, #2
 8002b0e:	6051      	str	r1, [r2, #4]
 8002b10:	685a      	ldr	r2, [r3, #4]
 8002b12:	f002 020c 	and.w	r2, r2, #12
 8002b16:	2a08      	cmp	r2, #8
 8002b18:	d1fa      	bne.n	8002b10 <SystemInit+0xdc>
 8002b1a:	e7d0      	b.n	8002abe <SystemInit+0x8a>
 8002b1c:	e000ed00 	.word	0xe000ed00
 8002b20:	40021000 	.word	0x40021000
 8002b24:	f87fc00c 	.word	0xf87fc00c
 8002b28:	ff00fccc 	.word	0xff00fccc
 8002b2c:	40022000 	.word	0x40022000

08002b30 <core_yield>:
 8002b30:	bf00      	nop
 8002b32:	4770      	bx	lr

08002b34 <sytem_clock_init>:
 8002b34:	f7ff bf7e 	b.w	8002a34 <SystemInit>

08002b38 <NVIC_Init>:
 8002b38:	b510      	push	{r4, lr}
 8002b3a:	bf00      	nop
 8002b3c:	bf00      	nop
 8002b3e:	bf00      	nop
 8002b40:	78c2      	ldrb	r2, [r0, #3]
 8002b42:	7803      	ldrb	r3, [r0, #0]
 8002b44:	b312      	cbz	r2, 8002b8c <NVIC_Init+0x54>
 8002b46:	4a17      	ldr	r2, [pc, #92]	; (8002ba4 <NVIC_Init+0x6c>)
 8002b48:	68d1      	ldr	r1, [r2, #12]
 8002b4a:	7842      	ldrb	r2, [r0, #1]
 8002b4c:	43c9      	mvns	r1, r1
 8002b4e:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002b52:	f1c1 0404 	rsb	r4, r1, #4
 8002b56:	b2e4      	uxtb	r4, r4
 8002b58:	40a2      	lsls	r2, r4
 8002b5a:	b2d4      	uxtb	r4, r2
 8002b5c:	220f      	movs	r2, #15
 8002b5e:	410a      	asrs	r2, r1
 8002b60:	7881      	ldrb	r1, [r0, #2]
 8002b62:	400a      	ands	r2, r1
 8002b64:	4322      	orrs	r2, r4
 8002b66:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002b6a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002b6e:	0112      	lsls	r2, r2, #4
 8002b70:	b2d2      	uxtb	r2, r2
 8002b72:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002b76:	7803      	ldrb	r3, [r0, #0]
 8002b78:	2201      	movs	r2, #1
 8002b7a:	0959      	lsrs	r1, r3, #5
 8002b7c:	f003 031f 	and.w	r3, r3, #31
 8002b80:	fa02 f303 	lsl.w	r3, r2, r3
 8002b84:	4a08      	ldr	r2, [pc, #32]	; (8002ba8 <NVIC_Init+0x70>)
 8002b86:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002b8a:	bd10      	pop	{r4, pc}
 8002b8c:	095a      	lsrs	r2, r3, #5
 8002b8e:	2101      	movs	r1, #1
 8002b90:	f003 031f 	and.w	r3, r3, #31
 8002b94:	4099      	lsls	r1, r3
 8002b96:	f102 0320 	add.w	r3, r2, #32
 8002b9a:	4a03      	ldr	r2, [pc, #12]	; (8002ba8 <NVIC_Init+0x70>)
 8002b9c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002ba0:	bd10      	pop	{r4, pc}
 8002ba2:	bf00      	nop
 8002ba4:	e000ed00 	.word	0xe000ed00
 8002ba8:	e000e100 	.word	0xe000e100

08002bac <EXTI_ClearITPendingBit>:
 8002bac:	f020 011f 	bic.w	r1, r0, #31
 8002bb0:	2301      	movs	r3, #1
 8002bb2:	f000 001f 	and.w	r0, r0, #31
 8002bb6:	4a02      	ldr	r2, [pc, #8]	; (8002bc0 <EXTI_ClearITPendingBit+0x14>)
 8002bb8:	4083      	lsls	r3, r0
 8002bba:	508b      	str	r3, [r1, r2]
 8002bbc:	4770      	bx	lr
 8002bbe:	bf00      	nop
 8002bc0:	40010414 	.word	0x40010414

08002bc4 <GPIO_Init>:
 8002bc4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002bc6:	bf00      	nop
 8002bc8:	bf00      	nop
 8002bca:	bf00      	nop
 8002bcc:	bf00      	nop
 8002bce:	2300      	movs	r3, #0
 8002bd0:	680e      	ldr	r6, [r1, #0]
 8002bd2:	461c      	mov	r4, r3
 8002bd4:	2501      	movs	r5, #1
 8002bd6:	40a5      	lsls	r5, r4
 8002bd8:	ea05 0e06 	and.w	lr, r5, r6
 8002bdc:	45ae      	cmp	lr, r5
 8002bde:	d12d      	bne.n	8002c3c <GPIO_Init+0x78>
 8002be0:	790f      	ldrb	r7, [r1, #4]
 8002be2:	1e7a      	subs	r2, r7, #1
 8002be4:	2a01      	cmp	r2, #1
 8002be6:	d817      	bhi.n	8002c18 <GPIO_Init+0x54>
 8002be8:	bf00      	nop
 8002bea:	2203      	movs	r2, #3
 8002bec:	6885      	ldr	r5, [r0, #8]
 8002bee:	409a      	lsls	r2, r3
 8002bf0:	ea25 0202 	bic.w	r2, r5, r2
 8002bf4:	6082      	str	r2, [r0, #8]
 8002bf6:	794d      	ldrb	r5, [r1, #5]
 8002bf8:	6882      	ldr	r2, [r0, #8]
 8002bfa:	409d      	lsls	r5, r3
 8002bfc:	4315      	orrs	r5, r2
 8002bfe:	6085      	str	r5, [r0, #8]
 8002c00:	bf00      	nop
 8002c02:	8882      	ldrh	r2, [r0, #4]
 8002c04:	b292      	uxth	r2, r2
 8002c06:	ea22 020e 	bic.w	r2, r2, lr
 8002c0a:	8082      	strh	r2, [r0, #4]
 8002c0c:	798a      	ldrb	r2, [r1, #6]
 8002c0e:	8885      	ldrh	r5, [r0, #4]
 8002c10:	40a2      	lsls	r2, r4
 8002c12:	432a      	orrs	r2, r5
 8002c14:	b292      	uxth	r2, r2
 8002c16:	8082      	strh	r2, [r0, #4]
 8002c18:	2203      	movs	r2, #3
 8002c1a:	6805      	ldr	r5, [r0, #0]
 8002c1c:	409a      	lsls	r2, r3
 8002c1e:	43d2      	mvns	r2, r2
 8002c20:	4015      	ands	r5, r2
 8002c22:	6005      	str	r5, [r0, #0]
 8002c24:	6805      	ldr	r5, [r0, #0]
 8002c26:	409f      	lsls	r7, r3
 8002c28:	432f      	orrs	r7, r5
 8002c2a:	6007      	str	r7, [r0, #0]
 8002c2c:	68c7      	ldr	r7, [r0, #12]
 8002c2e:	4017      	ands	r7, r2
 8002c30:	79ca      	ldrb	r2, [r1, #7]
 8002c32:	fa02 f503 	lsl.w	r5, r2, r3
 8002c36:	ea47 0205 	orr.w	r2, r7, r5
 8002c3a:	60c2      	str	r2, [r0, #12]
 8002c3c:	3401      	adds	r4, #1
 8002c3e:	2c10      	cmp	r4, #16
 8002c40:	f103 0302 	add.w	r3, r3, #2
 8002c44:	d1c6      	bne.n	8002bd4 <GPIO_Init+0x10>
 8002c46:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002c48 <GPIO_SetBits>:
 8002c48:	bf00      	nop
 8002c4a:	bf00      	nop
 8002c4c:	6181      	str	r1, [r0, #24]
 8002c4e:	4770      	bx	lr

08002c50 <GPIO_PinAFConfig>:
 8002c50:	b510      	push	{r4, lr}
 8002c52:	bf00      	nop
 8002c54:	bf00      	nop
 8002c56:	bf00      	nop
 8002c58:	f001 0307 	and.w	r3, r1, #7
 8002c5c:	08c9      	lsrs	r1, r1, #3
 8002c5e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002c62:	009b      	lsls	r3, r3, #2
 8002c64:	6a04      	ldr	r4, [r0, #32]
 8002c66:	210f      	movs	r1, #15
 8002c68:	4099      	lsls	r1, r3
 8002c6a:	ea24 0101 	bic.w	r1, r4, r1
 8002c6e:	6201      	str	r1, [r0, #32]
 8002c70:	6a01      	ldr	r1, [r0, #32]
 8002c72:	409a      	lsls	r2, r3
 8002c74:	430a      	orrs	r2, r1
 8002c76:	6202      	str	r2, [r0, #32]
 8002c78:	bd10      	pop	{r4, pc}

08002c7a <Default_Handler>:
 8002c7a:	4668      	mov	r0, sp
 8002c7c:	f020 0107 	bic.w	r1, r0, #7
 8002c80:	468d      	mov	sp, r1
 8002c82:	b501      	push	{r0, lr}
 8002c84:	bf00      	nop
 8002c86:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002c8a:	4685      	mov	sp, r0
 8002c8c:	4770      	bx	lr

08002c8e <HardFault_Handler>:
 8002c8e:	bf00      	nop
 8002c90:	e7fd      	b.n	8002c8e <HardFault_Handler>
	...

08002c94 <_reset_init>:
 8002c94:	490e      	ldr	r1, [pc, #56]	; (8002cd0 <_reset_init+0x3c>)
 8002c96:	4b0f      	ldr	r3, [pc, #60]	; (8002cd4 <_reset_init+0x40>)
 8002c98:	1a5b      	subs	r3, r3, r1
 8002c9a:	109b      	asrs	r3, r3, #2
 8002c9c:	2200      	movs	r2, #0
 8002c9e:	429a      	cmp	r2, r3
 8002ca0:	d006      	beq.n	8002cb0 <_reset_init+0x1c>
 8002ca2:	480d      	ldr	r0, [pc, #52]	; (8002cd8 <_reset_init+0x44>)
 8002ca4:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002ca8:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002cac:	3201      	adds	r2, #1
 8002cae:	e7f6      	b.n	8002c9e <_reset_init+0xa>
 8002cb0:	4a0a      	ldr	r2, [pc, #40]	; (8002cdc <_reset_init+0x48>)
 8002cb2:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002cb6:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002cba:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002cbe:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002cc2:	6853      	ldr	r3, [r2, #4]
 8002cc4:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002cc8:	6053      	str	r3, [r2, #4]
 8002cca:	f7ff bb4d 	b.w	8002368 <main>
 8002cce:	bf00      	nop
 8002cd0:	20000000 	.word	0x20000000
 8002cd4:	20000030 	.word	0x20000030
 8002cd8:	08002f58 	.word	0x08002f58
 8002cdc:	e000ed00 	.word	0xe000ed00

08002ce0 <scheduler>:
 8002ce0:	b570      	push	{r4, r5, r6, lr}
 8002ce2:	2200      	movs	r2, #0
 8002ce4:	4611      	mov	r1, r2
 8002ce6:	4b15      	ldr	r3, [pc, #84]	; (8002d3c <scheduler+0x5c>)
 8002ce8:	200c      	movs	r0, #12
 8002cea:	fb00 f401 	mul.w	r4, r0, r1
 8002cee:	191e      	adds	r6, r3, r4
 8002cf0:	6875      	ldr	r5, [r6, #4]
 8002cf2:	f015 0f02 	tst.w	r5, #2
 8002cf6:	461d      	mov	r5, r3
 8002cf8:	d10a      	bne.n	8002d10 <scheduler+0x30>
 8002cfa:	6876      	ldr	r6, [r6, #4]
 8002cfc:	07f6      	lsls	r6, r6, #31
 8002cfe:	d507      	bpl.n	8002d10 <scheduler+0x30>
 8002d00:	4350      	muls	r0, r2
 8002d02:	5b1c      	ldrh	r4, [r3, r4]
 8002d04:	5a18      	ldrh	r0, [r3, r0]
 8002d06:	b2a4      	uxth	r4, r4
 8002d08:	b280      	uxth	r0, r0
 8002d0a:	4284      	cmp	r4, r0
 8002d0c:	bf38      	it	cc
 8002d0e:	460a      	movcc	r2, r1
 8002d10:	200c      	movs	r0, #12
 8002d12:	4348      	muls	r0, r1
 8002d14:	5a1c      	ldrh	r4, [r3, r0]
 8002d16:	b2a4      	uxth	r4, r4
 8002d18:	b11c      	cbz	r4, 8002d22 <scheduler+0x42>
 8002d1a:	5a1c      	ldrh	r4, [r3, r0]
 8002d1c:	3c01      	subs	r4, #1
 8002d1e:	b2a4      	uxth	r4, r4
 8002d20:	521c      	strh	r4, [r3, r0]
 8002d22:	3101      	adds	r1, #1
 8002d24:	2906      	cmp	r1, #6
 8002d26:	d1de      	bne.n	8002ce6 <scheduler+0x6>
 8002d28:	230c      	movs	r3, #12
 8002d2a:	4353      	muls	r3, r2
 8002d2c:	18e9      	adds	r1, r5, r3
 8002d2e:	8849      	ldrh	r1, [r1, #2]
 8002d30:	b289      	uxth	r1, r1
 8002d32:	52e9      	strh	r1, [r5, r3]
 8002d34:	4b02      	ldr	r3, [pc, #8]	; (8002d40 <scheduler+0x60>)
 8002d36:	601a      	str	r2, [r3, #0]
 8002d38:	bd70      	pop	{r4, r5, r6, pc}
 8002d3a:	bf00      	nop
 8002d3c:	20000640 	.word	0x20000640
 8002d40:	20000688 	.word	0x20000688

08002d44 <SysTick_Handler>:
 8002d44:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002d48:	f3ef 8308 	mrs	r3, MSP
 8002d4c:	4c0d      	ldr	r4, [pc, #52]	; (8002d84 <SysTick_Handler+0x40>)
 8002d4e:	4d0e      	ldr	r5, [pc, #56]	; (8002d88 <SysTick_Handler+0x44>)
 8002d50:	6822      	ldr	r2, [r4, #0]
 8002d52:	3201      	adds	r2, #1
 8002d54:	bf1d      	ittte	ne
 8002d56:	6822      	ldrne	r2, [r4, #0]
 8002d58:	210c      	movne	r1, #12
 8002d5a:	fb01 5202 	mlane	r2, r1, r2, r5
 8002d5e:	2300      	moveq	r3, #0
 8002d60:	bf14      	ite	ne
 8002d62:	6093      	strne	r3, [r2, #8]
 8002d64:	6023      	streq	r3, [r4, #0]
 8002d66:	f7ff ffbb 	bl	8002ce0 <scheduler>
 8002d6a:	6822      	ldr	r2, [r4, #0]
 8002d6c:	230c      	movs	r3, #12
 8002d6e:	fb03 5302 	mla	r3, r3, r2, r5
 8002d72:	689a      	ldr	r2, [r3, #8]
 8002d74:	f06f 0306 	mvn.w	r3, #6
 8002d78:	469e      	mov	lr, r3
 8002d7a:	f382 8808 	msr	MSP, r2
 8002d7e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002d82:	4770      	bx	lr
 8002d84:	20000688 	.word	0x20000688
 8002d88:	20000640 	.word	0x20000640

08002d8c <__aeabi_d2f>:
 8002d8c:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002d90:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002d94:	bf24      	itt	cs
 8002d96:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002d9a:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002d9e:	d90d      	bls.n	8002dbc <__aeabi_d2f+0x30>
 8002da0:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002da4:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002da8:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002dac:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002db0:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002db4:	bf08      	it	eq
 8002db6:	f020 0001 	biceq.w	r0, r0, #1
 8002dba:	4770      	bx	lr
 8002dbc:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002dc0:	d121      	bne.n	8002e06 <__aeabi_d2f+0x7a>
 8002dc2:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002dc6:	bfbc      	itt	lt
 8002dc8:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002dcc:	4770      	bxlt	lr
 8002dce:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002dd2:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002dd6:	f1c2 0218 	rsb	r2, r2, #24
 8002dda:	f1c2 0c20 	rsb	ip, r2, #32
 8002dde:	fa10 f30c 	lsls.w	r3, r0, ip
 8002de2:	fa20 f002 	lsr.w	r0, r0, r2
 8002de6:	bf18      	it	ne
 8002de8:	f040 0001 	orrne.w	r0, r0, #1
 8002dec:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002df0:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002df4:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002df8:	ea40 000c 	orr.w	r0, r0, ip
 8002dfc:	fa23 f302 	lsr.w	r3, r3, r2
 8002e00:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002e04:	e7cc      	b.n	8002da0 <__aeabi_d2f+0x14>
 8002e06:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002e0a:	d107      	bne.n	8002e1c <__aeabi_d2f+0x90>
 8002e0c:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002e10:	bf1e      	ittt	ne
 8002e12:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002e16:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002e1a:	4770      	bxne	lr
 8002e1c:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002e20:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002e24:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002e28:	4770      	bx	lr
 8002e2a:	bf00      	nop

08002e2c <_init>:
 8002e2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002e2e:	bf00      	nop
 8002e30:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002e32:	bc08      	pop	{r3}
 8002e34:	469e      	mov	lr, r3
 8002e36:	4770      	bx	lr

08002e38 <_fini>:
 8002e38:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002e3a:	bf00      	nop
 8002e3c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002e3e:	bc08      	pop	{r3}
 8002e40:	469e      	mov	lr, r3
 8002e42:	4770      	bx	lr
 8002e44:	61646f6b 	.word	0x61646f6b
 8002e48:	6920616d 	.word	0x6920616d
 8002e4c:	2074696e 	.word	0x2074696e
 8002e50:	25206925 	.word	0x25206925
 8002e54:	203a2069 	.word	0x203a2069
 8002e58:	4f5b2000 	.word	0x4f5b2000
 8002e5c:	000a5d4b 	.word	0x000a5d4b
 8002e60:	41465b20 	.word	0x41465b20
 8002e64:	44454c49 	.word	0x44454c49
 8002e68:	000a0a5d 	.word	0x000a0a5d
 8002e6c:	432b5441 	.word	0x432b5441
 8002e70:	554d5049 	.word	0x554d5049
 8002e74:	0d313d58 	.word	0x0d313d58
 8002e78:	5441000a 	.word	0x5441000a
 8002e7c:	5049432b 	.word	0x5049432b
 8002e80:	3d58554d 	.word	0x3d58554d
 8002e84:	000a0d30 	.word	0x000a0d30
 8002e88:	432b5441 	.word	0x432b5441
 8002e8c:	444f4d57 	.word	0x444f4d57
 8002e90:	0d313d45 	.word	0x0d313d45
 8002e94:	5441000a 	.word	0x5441000a
 8002e98:	4a57432b 	.word	0x4a57432b
 8002e9c:	223d5041 	.word	0x223d5041
 8002ea0:	54454e00 	.word	0x54454e00
 8002ea4:	52414547 	.word	0x52414547
 8002ea8:	6d003338 	.word	0x6d003338
 8002eac:	646f6c65 	.word	0x646f6c65
 8002eb0:	69686369 	.word	0x69686369
 8002eb4:	34356c6c 	.word	0x34356c6c
 8002eb8:	0d220036 	.word	0x0d220036
 8002ebc:	5441000a 	.word	0x5441000a
 8002ec0:	5049432b 	.word	0x5049432b
 8002ec4:	56524553 	.word	0x56524553
 8002ec8:	313d5245 	.word	0x313d5245
 8002ecc:	0d30382c 	.word	0x0d30382c
 8002ed0:	5441000a 	.word	0x5441000a
 8002ed4:	5049432b 	.word	0x5049432b
 8002ed8:	534f4c43 	.word	0x534f4c43
 8002edc:	000a0d45 	.word	0x000a0d45
 8002ee0:	432b5441 	.word	0x432b5441
 8002ee4:	54535049 	.word	0x54535049
 8002ee8:	3d545241 	.word	0x3d545241
 8002eec:	50435422 	.word	0x50435422
 8002ef0:	00222c22 	.word	0x00222c22
 8002ef4:	43002c22 	.word	0x43002c22
 8002ef8:	454e4e4f 	.word	0x454e4e4f
 8002efc:	41005443 	.word	0x41005443
 8002f00:	49432b54 	.word	0x49432b54
 8002f04:	4e455350 	.word	0x4e455350
 8002f08:	3e003d44 	.word	0x3e003d44
 8002f0c:	4e455300 	.word	0x4e455300
 8002f10:	4b4f2044 	.word	0x4b4f2044
 8002f14:	50492b00 	.word	0x50492b00
 8002f18:	31002c44 	.word	0x31002c44
 8002f1c:	2e302e30 	.word	0x2e302e30
 8002f20:	00322e30 	.word	0x00322e30
 8002f24:	74737973 	.word	0x74737973
 8002f28:	74206d65 	.word	0x74206d65
 8002f2c:	20656d69 	.word	0x20656d69
 8002f30:	5b207525 	.word	0x5b207525
 8002f34:	0a5d736d 	.word	0x0a5d736d
 8002f38:	20692500 	.word	0x20692500
 8002f3c:	0a206925 	.word	0x0a206925
 8002f40:	00          	.byte	0x00
 8002f41:	73          	.byte	0x73
 8002f42:	7379      	.short	0x7379
 8002f44:	206d6574 	.word	0x206d6574
 8002f48:	656c6469 	.word	0x656c6469
 8002f4c:	0a752520 	.word	0x0a752520
 8002f50:	00000000 	.word	0x00000000

08002f54 <__EH_FRAME_BEGIN__>:
 8002f54:	00000000                                ....
