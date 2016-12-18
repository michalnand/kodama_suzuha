
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f9ac 	bl	80014e8 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 fbb5 	bl	800190c <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 f9d4 	bl	800055c <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	f504 70b8 	add.w	r0, r4, #368	; 0x170
 80001c4:	f000 fcaa 	bl	8000b1c <_ZN6CMotor10motor_initEv>
 80001c8:	2800      	cmp	r0, #0
 80001ca:	da03      	bge.n	80001d4 <_ZN7CKodama5init_Ev+0x4c>
 80001cc:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001d0:	3850      	subs	r0, #80	; 0x50
 80001d2:	bd10      	pop	{r4, pc}
 80001d4:	4620      	mov	r0, r4
 80001d6:	f000 fd61 	bl	8000c9c <_ZN8CSensors12sensors_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 401c 	sublt.w	r0, r0, #39936	; 0x9c00
 80001e2:	3840      	sublt	r0, #64	; 0x40
 80001e4:	bd10      	pop	{r4, pc}
 80001e6:	bf00      	nop
 80001e8:	200001f0 	.word	0x200001f0

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
 8000202:	f001 fca9 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f001 fca4 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f001 fc9f 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08003364 	.word	0x08003364
 8000228:	08003379 	.word	0x08003379
 800022c:	08003380 	.word	0x08003380

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	f500 70b8 	add.w	r0, r0, #368	; 0x170
 8000234:	f000 bbd8 	b.w	80009e8 <_ZN6CMotor11motor_sleepEv>

08000238 <_ZN7CKodama6wakeupEv>:
 8000238:	b510      	push	{r4, lr}
 800023a:	2100      	movs	r1, #0
 800023c:	f500 74b8 	add.w	r4, r0, #368	; 0x170
 8000240:	4620      	mov	r0, r4
 8000242:	460a      	mov	r2, r1
 8000244:	f000 fc60 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 8000248:	4620      	mov	r0, r4
 800024a:	2101      	movs	r1, #1
 800024c:	2200      	movs	r2, #0
 800024e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000252:	f000 bc59 	b.w	8000b08 <_ZN6CMotor9set_motorEml>

08000256 <_ZN7CKodama6set_dtEl>:
 8000256:	f8c0 1178 	str.w	r1, [r0, #376]	; 0x178
 800025a:	4770      	bx	lr

0800025c <_ZN13CLinePositionC1Ev>:
 800025c:	f100 0308 	add.w	r3, r0, #8
 8000260:	f100 012c 	add.w	r1, r0, #44	; 0x2c
 8000264:	2200      	movs	r2, #0
 8000266:	f843 2b04 	str.w	r2, [r3], #4
 800026a:	428b      	cmp	r3, r1
 800026c:	d1fa      	bne.n	8000264 <_ZN13CLinePositionC1Ev+0x8>
 800026e:	2300      	movs	r3, #0
 8000270:	6042      	str	r2, [r0, #4]
 8000272:	7003      	strb	r3, [r0, #0]
 8000274:	4770      	bx	lr
	...

08000278 <_ZN13CLinePosition7processEP10sRGBResult>:
 8000278:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800027c:	2300      	movs	r3, #0
 800027e:	f101 0834 	add.w	r8, r1, #52	; 0x34
 8000282:	ed2d 8b02 	vpush	{d8}
 8000286:	460d      	mov	r5, r1
 8000288:	4604      	mov	r4, r0
 800028a:	7003      	strb	r3, [r0, #0]
 800028c:	4641      	mov	r1, r8
 800028e:	461a      	mov	r2, r3
 8000290:	eb05 0043 	add.w	r0, r5, r3, lsl #1
 8000294:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 8000298:	f9b0 0036 	ldrsh.w	r0, [r0, #54]	; 0x36
 800029c:	4286      	cmp	r6, r0
 800029e:	bfb8      	it	lt
 80002a0:	4613      	movlt	r3, r2
 80002a2:	3201      	adds	r2, #1
 80002a4:	2a09      	cmp	r2, #9
 80002a6:	d1f3      	bne.n	8000290 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 80002a8:	eb05 0343 	add.w	r3, r5, r3, lsl #1
 80002ac:	eddf 7a3b 	vldr	s15, [pc, #236]	; 800039c <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 80002b0:	f9b3 3036 	ldrsh.w	r3, [r3, #54]	; 0x36
 80002b4:	ee07 3a10 	vmov	s14, r3
 80002b8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80002bc:	eeb0 8a67 	vmov.f32	s16, s15
 80002c0:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80002c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002c8:	d563      	bpl.n	8000392 <_ZN13CLinePosition7processEP10sRGBResult+0x11a>
 80002ca:	f104 0608 	add.w	r6, r4, #8
 80002ce:	eddf 8a34 	vldr	s17, [pc, #208]	; 80003a0 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 80002d2:	f104 092c 	add.w	r9, r4, #44	; 0x2c
 80002d6:	4637      	mov	r7, r6
 80002d8:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 80002dc:	4831      	ldr	r0, [pc, #196]	; (80003a4 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 80002de:	425b      	negs	r3, r3
 80002e0:	ee00 3a10 	vmov	s0, r3
 80002e4:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 80002e8:	eca7 0a01 	vstmia	r7!, {s0}
 80002ec:	f000 f8bc 	bl	8000468 <_ZN5CMath3absEf>
 80002f0:	eef4 8ac0 	vcmpe.f32	s17, s0
 80002f4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002f8:	d506      	bpl.n	8000308 <_ZN13CLinePosition7processEP10sRGBResult+0x90>
 80002fa:	482a      	ldr	r0, [pc, #168]	; (80003a4 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 80002fc:	ed17 0a01 	vldr	s0, [r7, #-4]
 8000300:	f000 f8b2 	bl	8000468 <_ZN5CMath3absEf>
 8000304:	eef0 8a40 	vmov.f32	s17, s0
 8000308:	454f      	cmp	r7, r9
 800030a:	d1e5      	bne.n	80002d8 <_ZN13CLinePosition7processEP10sRGBResult+0x60>
 800030c:	edd6 7a00 	vldr	s15, [r6]
 8000310:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 8000314:	ece6 7a01 	vstmia	r6!, {s15}
 8000318:	454e      	cmp	r6, r9
 800031a:	d1f7      	bne.n	800030c <_ZN13CLinePosition7processEP10sRGBResult+0x94>
 800031c:	2301      	movs	r3, #1
 800031e:	7023      	strb	r3, [r4, #0]
 8000320:	f9b5 3036 	ldrsh.w	r3, [r5, #54]	; 0x36
 8000324:	eddf 7a1d 	vldr	s15, [pc, #116]	; 800039c <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8000328:	ee07 3a10 	vmov	s14, r3
 800032c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000330:	eeb4 7ac8 	vcmpe.f32	s14, s16
 8000334:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000338:	d501      	bpl.n	800033e <_ZN13CLinePosition7processEP10sRGBResult+0xc6>
 800033a:	4b1b      	ldr	r3, [pc, #108]	; (80003a8 <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 800033c:	e028      	b.n	8000390 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 800033e:	f9b5 303c 	ldrsh.w	r3, [r5, #60]	; 0x3c
 8000342:	ee07 3a10 	vmov	s14, r3
 8000346:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800034a:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800034e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000352:	d502      	bpl.n	800035a <_ZN13CLinePosition7processEP10sRGBResult+0xe2>
 8000354:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000358:	e01a      	b.n	8000390 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 800035a:	f9b5 3038 	ldrsh.w	r3, [r5, #56]	; 0x38
 800035e:	ee07 3a10 	vmov	s14, r3
 8000362:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000366:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800036a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800036e:	d502      	bpl.n	8000376 <_ZN13CLinePosition7processEP10sRGBResult+0xfe>
 8000370:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8000374:	e00c      	b.n	8000390 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 8000376:	f9b5 303a 	ldrsh.w	r3, [r5, #58]	; 0x3a
 800037a:	ee07 3a10 	vmov	s14, r3
 800037e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000382:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000386:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800038a:	d502      	bpl.n	8000392 <_ZN13CLinePosition7processEP10sRGBResult+0x11a>
 800038c:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8000390:	6063      	str	r3, [r4, #4]
 8000392:	ecbd 8b02 	vpop	{d8}
 8000396:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800039a:	bf00      	nop
 800039c:	c2a00000 	.word	0xc2a00000
 80003a0:	38d1b717 	.word	0x38d1b717
 80003a4:	200001bc 	.word	0x200001bc
 80003a8:	bf800000 	.word	0xbf800000

080003ac <_ZN13CLinePosition7on_lineEv>:
 80003ac:	7800      	ldrb	r0, [r0, #0]
 80003ae:	4770      	bx	lr

080003b0 <_ZN13CLinePosition17get_line_positionEv>:
 80003b0:	ed90 0a01 	vldr	s0, [r0, #4]
 80003b4:	4770      	bx	lr

080003b6 <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE>:
 80003b6:	f100 0308 	add.w	r3, r0, #8
 80003ba:	302c      	adds	r0, #44	; 0x2c
 80003bc:	f853 2b04 	ldr.w	r2, [r3], #4
 80003c0:	f841 2b04 	str.w	r2, [r1], #4
 80003c4:	4283      	cmp	r3, r0
 80003c6:	d1f9      	bne.n	80003bc <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE+0x6>
 80003c8:	4770      	bx	lr

080003ca <_ZN4CPID4initEffff>:
 80003ca:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
 80003ce:	ee70 0a20 	vadd.f32	s1, s0, s1
 80003d2:	ee91 0a67 	vfnma.f32	s0, s2, s15
 80003d6:	2300      	movs	r3, #0
 80003d8:	6003      	str	r3, [r0, #0]
 80003da:	ee70 0a81 	vadd.f32	s1, s1, s2
 80003de:	6043      	str	r3, [r0, #4]
 80003e0:	6083      	str	r3, [r0, #8]
 80003e2:	edc0 0a03 	vstr	s1, [r0, #12]
 80003e6:	ed80 0a04 	vstr	s0, [r0, #16]
 80003ea:	ed80 1a05 	vstr	s2, [r0, #20]
 80003ee:	6183      	str	r3, [r0, #24]
 80003f0:	edc0 1a07 	vstr	s3, [r0, #28]
 80003f4:	4770      	bx	lr

080003f6 <_ZN4CPIDC1Effff>:
 80003f6:	b510      	push	{r4, lr}
 80003f8:	4604      	mov	r4, r0
 80003fa:	f7ff ffe6 	bl	80003ca <_ZN4CPID4initEffff>
 80003fe:	4620      	mov	r0, r4
 8000400:	bd10      	pop	{r4, pc}

08000402 <_ZN4CPID7processEf>:
 8000402:	edd0 7a00 	vldr	s15, [r0]
 8000406:	edd0 6a04 	vldr	s13, [r0, #16]
 800040a:	ed90 7a01 	vldr	s14, [r0, #4]
 800040e:	edc0 7a01 	vstr	s15, [r0, #4]
 8000412:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8000416:	edd0 6a03 	vldr	s13, [r0, #12]
 800041a:	ed80 7a02 	vstr	s14, [r0, #8]
 800041e:	eee6 7a80 	vfma.f32	s15, s13, s0
 8000422:	edd0 6a05 	vldr	s13, [r0, #20]
 8000426:	ed80 0a00 	vstr	s0, [r0]
 800042a:	eee6 7a87 	vfma.f32	s15, s13, s14
 800042e:	ed90 7a06 	vldr	s14, [r0, #24]
 8000432:	ee77 7a87 	vadd.f32	s15, s15, s14
 8000436:	ed90 7a07 	vldr	s14, [r0, #28]
 800043a:	edc0 7a06 	vstr	s15, [r0, #24]
 800043e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000442:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000446:	bfc8      	it	gt
 8000448:	ed80 7a06 	vstrgt	s14, [r0, #24]
 800044c:	edd0 7a06 	vldr	s15, [r0, #24]
 8000450:	eeb1 7a47 	vneg.f32	s14, s14
 8000454:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000458:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800045c:	bf48      	it	mi
 800045e:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000462:	ed90 0a06 	vldr	s0, [r0, #24]
 8000466:	4770      	bx	lr

08000468 <_ZN5CMath3absEf>:
 8000468:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 800046c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000470:	bf48      	it	mi
 8000472:	eeb1 0a40 	vnegmi.f32	s0, s0
 8000476:	4770      	bx	lr

08000478 <_ZN5CMath4randEv>:
 8000478:	6803      	ldr	r3, [r0, #0]
 800047a:	490b      	ldr	r1, [pc, #44]	; (80004a8 <_ZN5CMath4randEv+0x30>)
 800047c:	f243 0239 	movw	r2, #12345	; 0x3039
 8000480:	fb01 2203 	mla	r2, r1, r3, r2
 8000484:	6841      	ldr	r1, [r0, #4]
 8000486:	6002      	str	r2, [r0, #0]
 8000488:	f341 0300 	sbfx	r3, r1, #0, #1
 800048c:	f023 533f 	bic.w	r3, r3, #801112064	; 0x2fc00000
 8000490:	f423 137f 	bic.w	r3, r3, #4177920	; 0x3fc000
 8000494:	f423 537f 	bic.w	r3, r3, #16320	; 0x3fc0
 8000498:	f023 033e 	bic.w	r3, r3, #62	; 0x3e
 800049c:	ea83 0351 	eor.w	r3, r3, r1, lsr #1
 80004a0:	6043      	str	r3, [r0, #4]
 80004a2:	ea83 0002 	eor.w	r0, r3, r2
 80004a6:	4770      	bx	lr
 80004a8:	41c64e6d 	.word	0x41c64e6d

080004ac <_ZN5CMath3rndEv>:
 80004ac:	b508      	push	{r3, lr}
 80004ae:	f7ff ffe3 	bl	8000478 <_ZN5CMath4randEv>
 80004b2:	4b09      	ldr	r3, [pc, #36]	; (80004d8 <_ZN5CMath3rndEv+0x2c>)
 80004b4:	fbb0 f2f3 	udiv	r2, r0, r3
 80004b8:	fb02 0013 	mls	r0, r2, r3, r0
 80004bc:	ee07 0a90 	vmov	s15, r0
 80004c0:	ed9f 0a06 	vldr	s0, [pc, #24]	; 80004dc <_ZN5CMath3rndEv+0x30>
 80004c4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80004c8:	eec7 7a80 	vdiv.f32	s15, s15, s0
 80004cc:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80004d0:	ee37 0ac0 	vsub.f32	s0, s15, s0
 80004d4:	bd08      	pop	{r3, pc}
 80004d6:	bf00      	nop
 80004d8:	001e8480 	.word	0x001e8480
 80004dc:	49742400 	.word	0x49742400

080004e0 <TIM2_IRQHandler>:
 80004e0:	b508      	push	{r3, lr}
 80004e2:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80004e6:	2101      	movs	r1, #1
 80004e8:	f002 fb42 	bl	8002b70 <TIM_GetITStatus>
 80004ec:	b360      	cbz	r0, 8000548 <TIM2_IRQHandler+0x68>
 80004ee:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80004f2:	2101      	movs	r1, #1
 80004f4:	f002 fb48 	bl	8002b88 <TIM_ClearITPendingBit>
 80004f8:	2300      	movs	r3, #0
 80004fa:	4a14      	ldr	r2, [pc, #80]	; (800054c <TIM2_IRQHandler+0x6c>)
 80004fc:	5cd1      	ldrb	r1, [r2, r3]
 80004fe:	b111      	cbz	r1, 8000506 <TIM2_IRQHandler+0x26>
 8000500:	5cd1      	ldrb	r1, [r2, r3]
 8000502:	29ff      	cmp	r1, #255	; 0xff
 8000504:	d11b      	bne.n	800053e <TIM2_IRQHandler+0x5e>
 8000506:	4912      	ldr	r1, [pc, #72]	; (8000550 <TIM2_IRQHandler+0x70>)
 8000508:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 800050c:	b128      	cbz	r0, 800051a <TIM2_IRQHandler+0x3a>
 800050e:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000512:	3a01      	subs	r2, #1
 8000514:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000518:	e009      	b.n	800052e <TIM2_IRQHandler+0x4e>
 800051a:	480e      	ldr	r0, [pc, #56]	; (8000554 <TIM2_IRQHandler+0x74>)
 800051c:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000520:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000524:	5cd2      	ldrb	r2, [r2, r3]
 8000526:	b912      	cbnz	r2, 800052e <TIM2_IRQHandler+0x4e>
 8000528:	4a08      	ldr	r2, [pc, #32]	; (800054c <TIM2_IRQHandler+0x6c>)
 800052a:	2101      	movs	r1, #1
 800052c:	54d1      	strb	r1, [r2, r3]
 800052e:	3301      	adds	r3, #1
 8000530:	2b08      	cmp	r3, #8
 8000532:	d1e2      	bne.n	80004fa <TIM2_IRQHandler+0x1a>
 8000534:	4a08      	ldr	r2, [pc, #32]	; (8000558 <TIM2_IRQHandler+0x78>)
 8000536:	6813      	ldr	r3, [r2, #0]
 8000538:	3301      	adds	r3, #1
 800053a:	6013      	str	r3, [r2, #0]
 800053c:	bd08      	pop	{r3, pc}
 800053e:	5cd1      	ldrb	r1, [r2, r3]
 8000540:	3101      	adds	r1, #1
 8000542:	b2c9      	uxtb	r1, r1
 8000544:	54d1      	strb	r1, [r2, r3]
 8000546:	e7de      	b.n	8000506 <TIM2_IRQHandler+0x26>
 8000548:	bd08      	pop	{r3, pc}
 800054a:	bf00      	nop
 800054c:	200001e4 	.word	0x200001e4
 8000550:	200001c4 	.word	0x200001c4
 8000554:	200001f4 	.word	0x200001f4
 8000558:	200001ec 	.word	0x200001ec

0800055c <_ZN6CTimer10timer_initEv>:
 800055c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800055e:	4a20      	ldr	r2, [pc, #128]	; (80005e0 <_ZN6CTimer10timer_initEv+0x84>)
 8000560:	2300      	movs	r3, #0
 8000562:	6013      	str	r3, [r2, #0]
 8000564:	491f      	ldr	r1, [pc, #124]	; (80005e4 <_ZN6CTimer10timer_initEv+0x88>)
 8000566:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800056a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800056e:	491e      	ldr	r1, [pc, #120]	; (80005e8 <_ZN6CTimer10timer_initEv+0x8c>)
 8000570:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000574:	4a1d      	ldr	r2, [pc, #116]	; (80005ec <_ZN6CTimer10timer_initEv+0x90>)
 8000576:	2400      	movs	r4, #0
 8000578:	54d4      	strb	r4, [r2, r3]
 800057a:	3301      	adds	r3, #1
 800057c:	2b08      	cmp	r3, #8
 800057e:	d1f1      	bne.n	8000564 <_ZN6CTimer10timer_initEv+0x8>
 8000580:	2001      	movs	r0, #1
 8000582:	4601      	mov	r1, r0
 8000584:	f002 f9ea 	bl	800295c <RCC_APB1PeriphClockCmd>
 8000588:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 800058c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000590:	a901      	add	r1, sp, #4
 8000592:	2309      	movs	r3, #9
 8000594:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000598:	9302      	str	r3, [sp, #8]
 800059a:	f8ad 4006 	strh.w	r4, [sp, #6]
 800059e:	f8ad 400c 	strh.w	r4, [sp, #12]
 80005a2:	f8ad 400e 	strh.w	r4, [sp, #14]
 80005a6:	f002 f9e7 	bl	8002978 <TIM_TimeBaseInit>
 80005aa:	2101      	movs	r1, #1
 80005ac:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80005b0:	f002 fa32 	bl	8002a18 <TIM_Cmd>
 80005b4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 80005b8:	4668      	mov	r0, sp
 80005ba:	68d3      	ldr	r3, [r2, #12]
 80005bc:	f043 0301 	orr.w	r3, r3, #1
 80005c0:	60d3      	str	r3, [r2, #12]
 80005c2:	231c      	movs	r3, #28
 80005c4:	f88d 3000 	strb.w	r3, [sp]
 80005c8:	2301      	movs	r3, #1
 80005ca:	f88d 4001 	strb.w	r4, [sp, #1]
 80005ce:	f88d 3002 	strb.w	r3, [sp, #2]
 80005d2:	f88d 3003 	strb.w	r3, [sp, #3]
 80005d6:	f002 fca1 	bl	8002f1c <NVIC_Init>
 80005da:	4620      	mov	r0, r4
 80005dc:	b004      	add	sp, #16
 80005de:	bd10      	pop	{r4, pc}
 80005e0:	200001ec 	.word	0x200001ec
 80005e4:	200001c4 	.word	0x200001c4
 80005e8:	200001f4 	.word	0x200001f4
 80005ec:	200001e4 	.word	0x200001e4

080005f0 <_ZN6CTimer8get_timeEv>:
 80005f0:	b082      	sub	sp, #8
 80005f2:	b672      	cpsid	i
 80005f4:	4b04      	ldr	r3, [pc, #16]	; (8000608 <_ZN6CTimer8get_timeEv+0x18>)
 80005f6:	681b      	ldr	r3, [r3, #0]
 80005f8:	9301      	str	r3, [sp, #4]
 80005fa:	b662      	cpsie	i
 80005fc:	230a      	movs	r3, #10
 80005fe:	9801      	ldr	r0, [sp, #4]
 8000600:	fbb0 f0f3 	udiv	r0, r0, r3
 8000604:	b002      	add	sp, #8
 8000606:	4770      	bx	lr
 8000608:	200001ec 	.word	0x200001ec

0800060c <_ZN6CTimer8delay_msEm>:
 800060c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800060e:	460c      	mov	r4, r1
 8000610:	4605      	mov	r5, r0
 8000612:	f7ff ffed 	bl	80005f0 <_ZN6CTimer8get_timeEv>
 8000616:	4420      	add	r0, r4
 8000618:	9001      	str	r0, [sp, #4]
 800061a:	4628      	mov	r0, r5
 800061c:	9c01      	ldr	r4, [sp, #4]
 800061e:	f7ff ffe7 	bl	80005f0 <_ZN6CTimer8get_timeEv>
 8000622:	4284      	cmp	r4, r0
 8000624:	d902      	bls.n	800062c <_ZN6CTimer8delay_msEm+0x20>
 8000626:	f002 fc75 	bl	8002f14 <core_yield>
 800062a:	e7f6      	b.n	800061a <_ZN6CTimer8delay_msEm+0xe>
 800062c:	b003      	add	sp, #12
 800062e:	bd30      	pop	{r4, r5, pc}

08000630 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000630:	b672      	cpsid	i
 8000632:	230a      	movs	r3, #10
 8000634:	435a      	muls	r2, r3
 8000636:	4b05      	ldr	r3, [pc, #20]	; (800064c <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000638:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 800063c:	4b04      	ldr	r3, [pc, #16]	; (8000650 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 800063e:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000642:	4b04      	ldr	r3, [pc, #16]	; (8000654 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000644:	2200      	movs	r2, #0
 8000646:	545a      	strb	r2, [r3, r1]
 8000648:	b662      	cpsie	i
 800064a:	4770      	bx	lr
 800064c:	200001c4 	.word	0x200001c4
 8000650:	200001f4 	.word	0x200001f4
 8000654:	200001e4 	.word	0x200001e4

08000658 <_ZN6CTimer17event_timer_checkEh>:
 8000658:	4b05      	ldr	r3, [pc, #20]	; (8000670 <_ZN6CTimer17event_timer_checkEh+0x18>)
 800065a:	5c5a      	ldrb	r2, [r3, r1]
 800065c:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000660:	b12a      	cbz	r2, 800066e <_ZN6CTimer17event_timer_checkEh+0x16>
 8000662:	b672      	cpsid	i
 8000664:	5c58      	ldrb	r0, [r3, r1]
 8000666:	2200      	movs	r2, #0
 8000668:	b2c0      	uxtb	r0, r0
 800066a:	545a      	strb	r2, [r3, r1]
 800066c:	b662      	cpsie	i
 800066e:	4770      	bx	lr
 8000670:	200001e4 	.word	0x200001e4

08000674 <_ZN4CRGB8rgb_readEh>:
 8000674:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000678:	4604      	mov	r4, r0
 800067a:	4689      	mov	r9, r1
 800067c:	f000 fb92 	bl	8000da4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000680:	4620      	mov	r0, r4
 8000682:	2172      	movs	r1, #114	; 0x72
 8000684:	f000 fbb8 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000688:	21b4      	movs	r1, #180	; 0xb4
 800068a:	4620      	mov	r0, r4
 800068c:	f000 fbb4 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000690:	4620      	mov	r0, r4
 8000692:	f000 fb87 	bl	8000da4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000696:	1d26      	adds	r6, r4, #4
 8000698:	4620      	mov	r0, r4
 800069a:	2173      	movs	r1, #115	; 0x73
 800069c:	f000 fbac 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80006a0:	1ce5      	adds	r5, r4, #3
 80006a2:	4632      	mov	r2, r6
 80006a4:	4620      	mov	r0, r4
 80006a6:	2101      	movs	r1, #1
 80006a8:	f104 0a42 	add.w	sl, r4, #66	; 0x42
 80006ac:	f000 fbe6 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006b0:	f104 0754 	add.w	r7, r4, #84	; 0x54
 80006b4:	4653      	mov	r3, sl
 80006b6:	462a      	mov	r2, r5
 80006b8:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80006bc:	f823 1f02 	strh.w	r1, [r3, #2]!
 80006c0:	42bb      	cmp	r3, r7
 80006c2:	d1f9      	bne.n	80006b8 <_ZN4CRGB8rgb_readEh+0x44>
 80006c4:	2101      	movs	r1, #1
 80006c6:	4620      	mov	r0, r4
 80006c8:	4632      	mov	r2, r6
 80006ca:	f000 fbd7 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006ce:	4629      	mov	r1, r5
 80006d0:	4653      	mov	r3, sl
 80006d2:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80006d6:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80006da:	42bb      	cmp	r3, r7
 80006dc:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 80006e0:	801a      	strh	r2, [r3, #0]
 80006e2:	d1f6      	bne.n	80006d2 <_ZN4CRGB8rgb_readEh+0x5e>
 80006e4:	4632      	mov	r2, r6
 80006e6:	4620      	mov	r0, r4
 80006e8:	2101      	movs	r1, #1
 80006ea:	f104 080c 	add.w	r8, r4, #12
 80006ee:	f000 fbc5 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006f2:	f104 0b1e 	add.w	fp, r4, #30
 80006f6:	4643      	mov	r3, r8
 80006f8:	462a      	mov	r2, r5
 80006fa:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80006fe:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000702:	455b      	cmp	r3, fp
 8000704:	d1f9      	bne.n	80006fa <_ZN4CRGB8rgb_readEh+0x86>
 8000706:	4632      	mov	r2, r6
 8000708:	4620      	mov	r0, r4
 800070a:	2101      	movs	r1, #1
 800070c:	f000 fbb6 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000710:	462a      	mov	r2, r5
 8000712:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 8000716:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800071a:	45d8      	cmp	r8, fp
 800071c:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000720:	f8a8 3000 	strh.w	r3, [r8]
 8000724:	d1f5      	bne.n	8000712 <_ZN4CRGB8rgb_readEh+0x9e>
 8000726:	4632      	mov	r2, r6
 8000728:	4620      	mov	r0, r4
 800072a:	2101      	movs	r1, #1
 800072c:	f000 fba6 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000730:	f104 0830 	add.w	r8, r4, #48	; 0x30
 8000734:	465b      	mov	r3, fp
 8000736:	462a      	mov	r2, r5
 8000738:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800073c:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000740:	4543      	cmp	r3, r8
 8000742:	d1f9      	bne.n	8000738 <_ZN4CRGB8rgb_readEh+0xc4>
 8000744:	4632      	mov	r2, r6
 8000746:	4620      	mov	r0, r4
 8000748:	2101      	movs	r1, #1
 800074a:	f000 fb97 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800074e:	462a      	mov	r2, r5
 8000750:	f83b 3f02 	ldrh.w	r3, [fp, #2]!
 8000754:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000758:	45c3      	cmp	fp, r8
 800075a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800075e:	f8ab 3000 	strh.w	r3, [fp]
 8000762:	d1f5      	bne.n	8000750 <_ZN4CRGB8rgb_readEh+0xdc>
 8000764:	4632      	mov	r2, r6
 8000766:	4620      	mov	r0, r4
 8000768:	2101      	movs	r1, #1
 800076a:	f000 fb87 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800076e:	4643      	mov	r3, r8
 8000770:	462a      	mov	r2, r5
 8000772:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000776:	f823 1f02 	strh.w	r1, [r3, #2]!
 800077a:	4553      	cmp	r3, sl
 800077c:	d1f9      	bne.n	8000772 <_ZN4CRGB8rgb_readEh+0xfe>
 800077e:	4632      	mov	r2, r6
 8000780:	4620      	mov	r0, r4
 8000782:	2101      	movs	r1, #1
 8000784:	f000 fb7a 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000788:	462a      	mov	r2, r5
 800078a:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 800078e:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000792:	45d0      	cmp	r8, sl
 8000794:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000798:	f8a8 3000 	strh.w	r3, [r8]
 800079c:	d1f5      	bne.n	800078a <_ZN4CRGB8rgb_readEh+0x116>
 800079e:	4632      	mov	r2, r6
 80007a0:	4620      	mov	r0, r4
 80007a2:	2101      	movs	r1, #1
 80007a4:	f000 fb6a 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007a8:	f104 0866 	add.w	r8, r4, #102	; 0x66
 80007ac:	463b      	mov	r3, r7
 80007ae:	462a      	mov	r2, r5
 80007b0:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80007b4:	f823 1f02 	strh.w	r1, [r3, #2]!
 80007b8:	4543      	cmp	r3, r8
 80007ba:	d1f9      	bne.n	80007b0 <_ZN4CRGB8rgb_readEh+0x13c>
 80007bc:	4620      	mov	r0, r4
 80007be:	2100      	movs	r1, #0
 80007c0:	4632      	mov	r2, r6
 80007c2:	f000 fb5b 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80007c6:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 80007ca:	f815 2f01 	ldrb.w	r2, [r5, #1]!
 80007ce:	4547      	cmp	r7, r8
 80007d0:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
 80007d4:	803b      	strh	r3, [r7, #0]
 80007d6:	d1f6      	bne.n	80007c6 <_ZN4CRGB8rgb_readEh+0x152>
 80007d8:	4620      	mov	r0, r4
 80007da:	f000 faf8 	bl	8000dce <_ZN8CRGB_I2C11rgb_i2cStopEv>
 80007de:	f1b9 0f00 	cmp.w	r9, #0
 80007e2:	d027      	beq.n	8000834 <_ZN4CRGB8rgb_readEh+0x1c0>
 80007e4:	2300      	movs	r3, #0
 80007e6:	89e1      	ldrh	r1, [r4, #14]
 80007e8:	f8b4 209e 	ldrh.w	r2, [r4, #158]	; 0x9e
 80007ec:	440a      	add	r2, r1
 80007ee:	f8a4 209e 	strh.w	r2, [r4, #158]	; 0x9e
 80007f2:	8c21      	ldrh	r1, [r4, #32]
 80007f4:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 80007f8:	440a      	add	r2, r1
 80007fa:	f8a4 20b0 	strh.w	r2, [r4, #176]	; 0xb0
 80007fe:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 8000800:	f8b4 20c2 	ldrh.w	r2, [r4, #194]	; 0xc2
 8000804:	440a      	add	r2, r1
 8000806:	f8a4 20c2 	strh.w	r2, [r4, #194]	; 0xc2
 800080a:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
 800080e:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 8000812:	440a      	add	r2, r1
 8000814:	f8a4 20e6 	strh.w	r2, [r4, #230]	; 0xe6
 8000818:	f8b4 1044 	ldrh.w	r1, [r4, #68]	; 0x44
 800081c:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 8000820:	3301      	adds	r3, #1
 8000822:	440a      	add	r2, r1
 8000824:	2b09      	cmp	r3, #9
 8000826:	f8a4 20d4 	strh.w	r2, [r4, #212]	; 0xd4
 800082a:	f104 0402 	add.w	r4, r4, #2
 800082e:	d1da      	bne.n	80007e6 <_ZN4CRGB8rgb_readEh+0x172>
 8000830:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000834:	4649      	mov	r1, r9
 8000836:	b672      	cpsid	i
 8000838:	89e3      	ldrh	r3, [r4, #14]
 800083a:	f8b4 009e 	ldrh.w	r0, [r4, #158]	; 0x9e
 800083e:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 8000842:	f8b4 50c2 	ldrh.w	r5, [r4, #194]	; 0xc2
 8000846:	f8b4 60e6 	ldrh.w	r6, [r4, #230]	; 0xe6
 800084a:	1a18      	subs	r0, r3, r0
 800084c:	8c23      	ldrh	r3, [r4, #32]
 800084e:	1a9a      	subs	r2, r3, r2
 8000850:	8e63      	ldrh	r3, [r4, #50]	; 0x32
 8000852:	1b5b      	subs	r3, r3, r5
 8000854:	f8b4 5056 	ldrh.w	r5, [r4, #86]	; 0x56
 8000858:	1bad      	subs	r5, r5, r6
 800085a:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
 800085e:	f8b4 60d4 	ldrh.w	r6, [r4, #212]	; 0xd4
 8000862:	f8b4 5044 	ldrh.w	r5, [r4, #68]	; 0x44
 8000866:	b280      	uxth	r0, r0
 8000868:	b292      	uxth	r2, r2
 800086a:	b29b      	uxth	r3, r3
 800086c:	1bad      	subs	r5, r5, r6
 800086e:	81e0      	strh	r0, [r4, #14]
 8000870:	8422      	strh	r2, [r4, #32]
 8000872:	8663      	strh	r3, [r4, #50]	; 0x32
 8000874:	f8a4 5044 	strh.w	r5, [r4, #68]	; 0x44
 8000878:	b662      	cpsie	i
 800087a:	b200      	sxth	r0, r0
 800087c:	b212      	sxth	r2, r2
 800087e:	1885      	adds	r5, r0, r2
 8000880:	b21b      	sxth	r3, r3
 8000882:	18ed      	adds	r5, r5, r3
 8000884:	d011      	beq.n	80008aa <_ZN4CRGB8rgb_readEh+0x236>
 8000886:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 800088a:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 800088e:	fb90 f0f5 	sdiv	r0, r0, r5
 8000892:	fb92 f2f5 	sdiv	r2, r2, r5
 8000896:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 800089a:	f8a4 0068 	strh.w	r0, [r4, #104]	; 0x68
 800089e:	fb93 f3f5 	sdiv	r3, r3, r5
 80008a2:	f8a4 207a 	strh.w	r2, [r4, #122]	; 0x7a
 80008a6:	f8a4 308c 	strh.w	r3, [r4, #140]	; 0x8c
 80008aa:	3101      	adds	r1, #1
 80008ac:	2909      	cmp	r1, #9
 80008ae:	f104 0402 	add.w	r4, r4, #2
 80008b2:	d1c0      	bne.n	8000836 <_ZN4CRGB8rgb_readEh+0x1c2>
 80008b4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

080008b8 <_ZN4CRGB8rgb_initEv>:
 80008b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80008ba:	4603      	mov	r3, r0
 80008bc:	b085      	sub	sp, #20
 80008be:	4604      	mov	r4, r0
 80008c0:	4606      	mov	r6, r0
 80008c2:	2509      	movs	r5, #9
 80008c4:	2200      	movs	r2, #0
 80008c6:	3d01      	subs	r5, #1
 80008c8:	81da      	strh	r2, [r3, #14]
 80008ca:	841a      	strh	r2, [r3, #32]
 80008cc:	865a      	strh	r2, [r3, #50]	; 0x32
 80008ce:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56
 80008d2:	f8a3 2044 	strh.w	r2, [r3, #68]	; 0x44
 80008d6:	f8a3 209e 	strh.w	r2, [r3, #158]	; 0x9e
 80008da:	f8a3 20b0 	strh.w	r2, [r3, #176]	; 0xb0
 80008de:	f8a3 20c2 	strh.w	r2, [r3, #194]	; 0xc2
 80008e2:	f8a3 20e6 	strh.w	r2, [r3, #230]	; 0xe6
 80008e6:	f8a3 20d4 	strh.w	r2, [r3, #212]	; 0xd4
 80008ea:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
 80008ee:	f8a3 207a 	strh.w	r2, [r3, #122]	; 0x7a
 80008f2:	f8a3 208c 	strh.w	r2, [r3, #140]	; 0x8c
 80008f6:	f103 0302 	add.w	r3, r3, #2
 80008fa:	d1e3      	bne.n	80008c4 <_ZN4CRGB8rgb_initEv+0xc>
 80008fc:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000900:	2208      	movs	r2, #8
 8000902:	851a      	strh	r2, [r3, #40]	; 0x28
 8000904:	4620      	mov	r0, r4
 8000906:	f000 fb4f 	bl	8000fa8 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 800090a:	4620      	mov	r0, r4
 800090c:	2172      	movs	r1, #114	; 0x72
 800090e:	2281      	movs	r2, #129	; 0x81
 8000910:	23ff      	movs	r3, #255	; 0xff
 8000912:	f000 fa9a 	bl	8000e4a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000916:	4620      	mov	r0, r4
 8000918:	2172      	movs	r1, #114	; 0x72
 800091a:	2283      	movs	r2, #131	; 0x83
 800091c:	23ff      	movs	r3, #255	; 0xff
 800091e:	f000 fa94 	bl	8000e4a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000922:	4620      	mov	r0, r4
 8000924:	2172      	movs	r1, #114	; 0x72
 8000926:	228d      	movs	r2, #141	; 0x8d
 8000928:	462b      	mov	r3, r5
 800092a:	f000 fa8e 	bl	8000e4a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800092e:	2172      	movs	r1, #114	; 0x72
 8000930:	2280      	movs	r2, #128	; 0x80
 8000932:	2303      	movs	r3, #3
 8000934:	4620      	mov	r0, r4
 8000936:	f000 fa88 	bl	8000e4a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800093a:	4620      	mov	r0, r4
 800093c:	f000 fb80 	bl	8001040 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>
 8000940:	228f      	movs	r2, #143	; 0x8f
 8000942:	2323      	movs	r3, #35	; 0x23
 8000944:	2172      	movs	r1, #114	; 0x72
 8000946:	4620      	mov	r0, r4
 8000948:	f000 fa7f 	bl	8000e4a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800094c:	4620      	mov	r0, r4
 800094e:	f000 fb7a 	bl	8001046 <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>
 8000952:	af01      	add	r7, sp, #4
 8000954:	4620      	mov	r0, r4
 8000956:	4629      	mov	r1, r5
 8000958:	f7ff fe8c 	bl	8000674 <_ZN4CRGB8rgb_readEh>
 800095c:	463b      	mov	r3, r7
 800095e:	4620      	mov	r0, r4
 8000960:	2172      	movs	r1, #114	; 0x72
 8000962:	2292      	movs	r2, #146	; 0x92
 8000964:	f000 fafe 	bl	8000f64 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000968:	462b      	mov	r3, r5
 800096a:	5cfa      	ldrb	r2, [r7, r3]
 800096c:	2a69      	cmp	r2, #105	; 0x69
 800096e:	bf1c      	itt	ne
 8000970:	2201      	movne	r2, #1
 8000972:	409a      	lslne	r2, r3
 8000974:	f103 0301 	add.w	r3, r3, #1
 8000978:	bf18      	it	ne
 800097a:	4315      	orrne	r5, r2
 800097c:	2b09      	cmp	r3, #9
 800097e:	d1f4      	bne.n	800096a <_ZN4CRGB8rgb_initEv+0xb2>
 8000980:	2704      	movs	r7, #4
 8000982:	4620      	mov	r0, r4
 8000984:	2101      	movs	r1, #1
 8000986:	f7ff fe75 	bl	8000674 <_ZN4CRGB8rgb_readEh>
 800098a:	3f01      	subs	r7, #1
 800098c:	d1f9      	bne.n	8000982 <_ZN4CRGB8rgb_initEv+0xca>
 800098e:	2109      	movs	r1, #9
 8000990:	f9b6 309e 	ldrsh.w	r3, [r6, #158]	; 0x9e
 8000994:	089b      	lsrs	r3, r3, #2
 8000996:	f8a6 309e 	strh.w	r3, [r6, #158]	; 0x9e
 800099a:	f9b6 30b0 	ldrsh.w	r3, [r6, #176]	; 0xb0
 800099e:	089b      	lsrs	r3, r3, #2
 80009a0:	f8a6 30b0 	strh.w	r3, [r6, #176]	; 0xb0
 80009a4:	f9b6 30c2 	ldrsh.w	r3, [r6, #194]	; 0xc2
 80009a8:	089b      	lsrs	r3, r3, #2
 80009aa:	f8a6 30c2 	strh.w	r3, [r6, #194]	; 0xc2
 80009ae:	f9b6 30e6 	ldrsh.w	r3, [r6, #230]	; 0xe6
 80009b2:	089b      	lsrs	r3, r3, #2
 80009b4:	f8a6 30e6 	strh.w	r3, [r6, #230]	; 0xe6
 80009b8:	f9b6 30d4 	ldrsh.w	r3, [r6, #212]	; 0xd4
 80009bc:	3901      	subs	r1, #1
 80009be:	ea4f 0393 	mov.w	r3, r3, lsr #2
 80009c2:	f8a6 30d4 	strh.w	r3, [r6, #212]	; 0xd4
 80009c6:	f106 0602 	add.w	r6, r6, #2
 80009ca:	d1e1      	bne.n	8000990 <_ZN4CRGB8rgb_initEv+0xd8>
 80009cc:	4620      	mov	r0, r4
 80009ce:	f7ff fe51 	bl	8000674 <_ZN4CRGB8rgb_readEh>
 80009d2:	b115      	cbz	r5, 80009da <_ZN4CRGB8rgb_initEv+0x122>
 80009d4:	4802      	ldr	r0, [pc, #8]	; (80009e0 <_ZN4CRGB8rgb_initEv+0x128>)
 80009d6:	1b40      	subs	r0, r0, r5
 80009d8:	e000      	b.n	80009dc <_ZN4CRGB8rgb_initEv+0x124>
 80009da:	4628      	mov	r0, r5
 80009dc:	b005      	add	sp, #20
 80009de:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80009e0:	fffffc18 	.word	0xfffffc18

080009e4 <_ZN4CRGB14get_rgb_resultEv>:
 80009e4:	300e      	adds	r0, #14
 80009e6:	4770      	bx	lr

080009e8 <_ZN6CMotor11motor_sleepEv>:
 80009e8:	4770      	bx	lr
	...

080009ec <_ZN6CMotor7pwm_setEmm>:
 80009ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80009f0:	b086      	sub	sp, #24
 80009f2:	2370      	movs	r3, #112	; 0x70
 80009f4:	9301      	str	r3, [sp, #4]
 80009f6:	f8df 8070 	ldr.w	r8, [pc, #112]	; 8000a68 <_ZN6CMotor7pwm_setEmm+0x7c>
 80009fa:	4c1a      	ldr	r4, [pc, #104]	; (8000a64 <_ZN6CMotor7pwm_setEmm+0x78>)
 80009fc:	f8d8 0000 	ldr.w	r0, [r8]
 8000a00:	2301      	movs	r3, #1
 8000a02:	f8ad 3008 	strh.w	r3, [sp, #8]
 8000a06:	2304      	movs	r3, #4
 8000a08:	f8ad 300a 	strh.w	r3, [sp, #10]
 8000a0c:	f242 7710 	movw	r7, #10000	; 0x2710
 8000a10:	2302      	movs	r3, #2
 8000a12:	fbb0 f0f7 	udiv	r0, r0, r7
 8000a16:	3802      	subs	r0, #2
 8000a18:	4616      	mov	r6, r2
 8000a1a:	f8ad 3010 	strh.w	r3, [sp, #16]
 8000a1e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000a22:	2300      	movs	r3, #0
 8000a24:	2564      	movs	r5, #100	; 0x64
 8000a26:	4341      	muls	r1, r0
 8000a28:	fbb1 f0f5 	udiv	r0, r1, r5
 8000a2c:	a901      	add	r1, sp, #4
 8000a2e:	9003      	str	r0, [sp, #12]
 8000a30:	4620      	mov	r0, r4
 8000a32:	f8ad 3012 	strh.w	r3, [sp, #18]
 8000a36:	f8ad 2014 	strh.w	r2, [sp, #20]
 8000a3a:	f8ad 3016 	strh.w	r3, [sp, #22]
 8000a3e:	f001 fff9 	bl	8002a34 <TIM_OC1Init>
 8000a42:	f8d8 3000 	ldr.w	r3, [r8]
 8000a46:	fbb3 f3f7 	udiv	r3, r3, r7
 8000a4a:	4620      	mov	r0, r4
 8000a4c:	3b02      	subs	r3, #2
 8000a4e:	a901      	add	r1, sp, #4
 8000a50:	fb03 f206 	mul.w	r2, r3, r6
 8000a54:	fbb2 f2f5 	udiv	r2, r2, r5
 8000a58:	9203      	str	r2, [sp, #12]
 8000a5a:	f002 f831 	bl	8002ac0 <TIM_OC2Init>
 8000a5e:	b006      	add	sp, #24
 8000a60:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000a64:	40012c00 	.word	0x40012c00
 8000a68:	20000030 	.word	0x20000030

08000a6c <_ZN6CMotor13motor_refreshEv>:
 8000a6c:	e890 0006 	ldmia.w	r0, {r1, r2}
 8000a70:	2964      	cmp	r1, #100	; 0x64
 8000a72:	f06f 0363 	mvn.w	r3, #99	; 0x63
 8000a76:	bfa8      	it	ge
 8000a78:	2164      	movge	r1, #100	; 0x64
 8000a7a:	2a64      	cmp	r2, #100	; 0x64
 8000a7c:	bfa8      	it	ge
 8000a7e:	2264      	movge	r2, #100	; 0x64
 8000a80:	4299      	cmp	r1, r3
 8000a82:	bfb8      	it	lt
 8000a84:	4619      	movlt	r1, r3
 8000a86:	429a      	cmp	r2, r3
 8000a88:	bfb8      	it	lt
 8000a8a:	461a      	movlt	r2, r3
 8000a8c:	2900      	cmp	r1, #0
 8000a8e:	b530      	push	{r4, r5, lr}
 8000a90:	4b1a      	ldr	r3, [pc, #104]	; (8000afc <_ZN6CMotor13motor_refreshEv+0x90>)
 8000a92:	4c1b      	ldr	r4, [pc, #108]	; (8000b00 <_ZN6CMotor13motor_refreshEv+0x94>)
 8000a94:	f04f 0520 	mov.w	r5, #32
 8000a98:	d105      	bne.n	8000aa6 <_ZN6CMotor13motor_refreshEv+0x3a>
 8000a9a:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8000a9e:	61a5      	str	r5, [r4, #24]
 8000aa0:	6199      	str	r1, [r3, #24]
 8000aa2:	2164      	movs	r1, #100	; 0x64
 8000aa4:	e00a      	b.n	8000abc <_ZN6CMotor13motor_refreshEv+0x50>
 8000aa6:	bfcb      	itete	gt
 8000aa8:	61a5      	strgt	r5, [r4, #24]
 8000aaa:	8525      	strhle	r5, [r4, #40]	; 0x28
 8000aac:	f44f 6480 	movgt.w	r4, #1024	; 0x400
 8000ab0:	f44f 6480 	movle.w	r4, #1024	; 0x400
 8000ab4:	bfce      	itee	gt
 8000ab6:	851c      	strhgt	r4, [r3, #40]	; 0x28
 8000ab8:	619c      	strle	r4, [r3, #24]
 8000aba:	4249      	negle	r1, r1
 8000abc:	2a00      	cmp	r2, #0
 8000abe:	4b0f      	ldr	r3, [pc, #60]	; (8000afc <_ZN6CMotor13motor_refreshEv+0x90>)
 8000ac0:	4c10      	ldr	r4, [pc, #64]	; (8000b04 <_ZN6CMotor13motor_refreshEv+0x98>)
 8000ac2:	f04f 0504 	mov.w	r5, #4
 8000ac6:	d105      	bne.n	8000ad4 <_ZN6CMotor13motor_refreshEv+0x68>
 8000ac8:	f44f 6200 	mov.w	r2, #2048	; 0x800
 8000acc:	61a5      	str	r5, [r4, #24]
 8000ace:	619a      	str	r2, [r3, #24]
 8000ad0:	2264      	movs	r2, #100	; 0x64
 8000ad2:	e00a      	b.n	8000aea <_ZN6CMotor13motor_refreshEv+0x7e>
 8000ad4:	bfcb      	itete	gt
 8000ad6:	61a5      	strgt	r5, [r4, #24]
 8000ad8:	8525      	strhle	r5, [r4, #40]	; 0x28
 8000ada:	f44f 6400 	movgt.w	r4, #2048	; 0x800
 8000ade:	f44f 6400 	movle.w	r4, #2048	; 0x800
 8000ae2:	bfce      	itee	gt
 8000ae4:	851c      	strhgt	r4, [r3, #40]	; 0x28
 8000ae6:	619c      	strle	r4, [r3, #24]
 8000ae8:	4252      	negle	r2, r2
 8000aea:	f1c1 0164 	rsb	r1, r1, #100	; 0x64
 8000aee:	f1c2 0264 	rsb	r2, r2, #100	; 0x64
 8000af2:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 8000af6:	f7ff bf79 	b.w	80009ec <_ZN6CMotor7pwm_setEmm>
 8000afa:	bf00      	nop
 8000afc:	48000800 	.word	0x48000800
 8000b00:	48000400 	.word	0x48000400
 8000b04:	48000c00 	.word	0x48000c00

08000b08 <_ZN6CMotor9set_motorEml>:
 8000b08:	2901      	cmp	r1, #1
 8000b0a:	bf98      	it	ls
 8000b0c:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000b10:	f7ff bfac 	b.w	8000a6c <_ZN6CMotor13motor_refreshEv>

08000b14 <_ZN6CMotor10set_motorsEll>:
 8000b14:	e880 0006 	stmia.w	r0, {r1, r2}
 8000b18:	f7ff bfa8 	b.w	8000a6c <_ZN6CMotor13motor_refreshEv>

08000b1c <_ZN6CMotor10motor_initEv>:
 8000b1c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000b20:	4f5a      	ldr	r7, [pc, #360]	; (8000c8c <_ZN6CMotor10motor_initEv+0x170>)
 8000b22:	b087      	sub	sp, #28
 8000b24:	f04f 0904 	mov.w	r9, #4
 8000b28:	2400      	movs	r4, #0
 8000b2a:	2501      	movs	r5, #1
 8000b2c:	2603      	movs	r6, #3
 8000b2e:	4680      	mov	r8, r0
 8000b30:	eb0d 0109 	add.w	r1, sp, r9
 8000b34:	4638      	mov	r0, r7
 8000b36:	f8cd 9004 	str.w	r9, [sp, #4]
 8000b3a:	f5a7 6780 	sub.w	r7, r7, #1024	; 0x400
 8000b3e:	f88d 6009 	strb.w	r6, [sp, #9]
 8000b42:	f88d 5008 	strb.w	r5, [sp, #8]
 8000b46:	f88d 400a 	strb.w	r4, [sp, #10]
 8000b4a:	f88d 400b 	strb.w	r4, [sp, #11]
 8000b4e:	f002 fab1 	bl	80030b4 <GPIO_Init>
 8000b52:	f8c7 9418 	str.w	r9, [r7, #1048]	; 0x418
 8000b56:	eb0d 0109 	add.w	r1, sp, r9
 8000b5a:	f8df 913c 	ldr.w	r9, [pc, #316]	; 8000c98 <_ZN6CMotor10motor_initEv+0x17c>
 8000b5e:	f88d 6009 	strb.w	r6, [sp, #9]
 8000b62:	f44f 6a00 	mov.w	sl, #2048	; 0x800
 8000b66:	4638      	mov	r0, r7
 8000b68:	f04f 0b20 	mov.w	fp, #32
 8000b6c:	f8cd a004 	str.w	sl, [sp, #4]
 8000b70:	f88d 5008 	strb.w	r5, [sp, #8]
 8000b74:	f88d 400a 	strb.w	r4, [sp, #10]
 8000b78:	f88d 400b 	strb.w	r4, [sp, #11]
 8000b7c:	f002 fa9a 	bl	80030b4 <GPIO_Init>
 8000b80:	f8c7 a018 	str.w	sl, [r7, #24]
 8000b84:	4648      	mov	r0, r9
 8000b86:	a901      	add	r1, sp, #4
 8000b88:	f8cd b004 	str.w	fp, [sp, #4]
 8000b8c:	f88d 6009 	strb.w	r6, [sp, #9]
 8000b90:	f88d 5008 	strb.w	r5, [sp, #8]
 8000b94:	f88d 400a 	strb.w	r4, [sp, #10]
 8000b98:	f88d 400b 	strb.w	r4, [sp, #11]
 8000b9c:	f002 fa8a 	bl	80030b4 <GPIO_Init>
 8000ba0:	f8c9 b018 	str.w	fp, [r9, #24]
 8000ba4:	4638      	mov	r0, r7
 8000ba6:	f44f 6b80 	mov.w	fp, #1024	; 0x400
 8000baa:	a901      	add	r1, sp, #4
 8000bac:	f8cd b004 	str.w	fp, [sp, #4]
 8000bb0:	f88d 6009 	strb.w	r6, [sp, #9]
 8000bb4:	f88d 5008 	strb.w	r5, [sp, #8]
 8000bb8:	f88d 400a 	strb.w	r4, [sp, #10]
 8000bbc:	f88d 400b 	strb.w	r4, [sp, #11]
 8000bc0:	f002 fa78 	bl	80030b4 <GPIO_Init>
 8000bc4:	f8c7 b018 	str.w	fp, [r7, #24]
 8000bc8:	4638      	mov	r0, r7
 8000bca:	f04f 0b80 	mov.w	fp, #128	; 0x80
 8000bce:	a901      	add	r1, sp, #4
 8000bd0:	f88d 6009 	strb.w	r6, [sp, #9]
 8000bd4:	f8cd b004 	str.w	fp, [sp, #4]
 8000bd8:	f88d 5008 	strb.w	r5, [sp, #8]
 8000bdc:	f88d 400a 	strb.w	r4, [sp, #10]
 8000be0:	f88d 400b 	strb.w	r4, [sp, #11]
 8000be4:	f002 fa66 	bl	80030b4 <GPIO_Init>
 8000be8:	4650      	mov	r0, sl
 8000bea:	4629      	mov	r1, r5
 8000bec:	f8c7 b018 	str.w	fp, [r7, #24]
 8000bf0:	f001 fea6 	bl	8002940 <RCC_APB2PeriphClockCmd>
 8000bf4:	4629      	mov	r1, r5
 8000bf6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000bfa:	f001 fe93 	bl	8002924 <RCC_AHBPeriphClockCmd>
 8000bfe:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8000c02:	9301      	str	r3, [sp, #4]
 8000c04:	4648      	mov	r0, r9
 8000c06:	2302      	movs	r3, #2
 8000c08:	a901      	add	r1, sp, #4
 8000c0a:	f88d 3008 	strb.w	r3, [sp, #8]
 8000c0e:	f88d 6009 	strb.w	r6, [sp, #9]
 8000c12:	f002 fa4f 	bl	80030b4 <GPIO_Init>
 8000c16:	4648      	mov	r0, r9
 8000c18:	210d      	movs	r1, #13
 8000c1a:	2206      	movs	r2, #6
 8000c1c:	f002 fa90 	bl	8003140 <GPIO_PinAFConfig>
 8000c20:	4648      	mov	r0, r9
 8000c22:	210e      	movs	r1, #14
 8000c24:	2206      	movs	r2, #6
 8000c26:	f002 fa8b 	bl	8003140 <GPIO_PinAFConfig>
 8000c2a:	4e19      	ldr	r6, [pc, #100]	; (8000c90 <_ZN6CMotor10motor_initEv+0x174>)
 8000c2c:	4b19      	ldr	r3, [pc, #100]	; (8000c94 <_ZN6CMotor10motor_initEv+0x178>)
 8000c2e:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000c32:	f242 7210 	movw	r2, #10000	; 0x2710
 8000c36:	4630      	mov	r0, r6
 8000c38:	a903      	add	r1, sp, #12
 8000c3a:	681b      	ldr	r3, [r3, #0]
 8000c3c:	fbb3 f3f2 	udiv	r3, r3, r2
 8000c40:	3b01      	subs	r3, #1
 8000c42:	9304      	str	r3, [sp, #16]
 8000c44:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000c48:	f8ad 4014 	strh.w	r4, [sp, #20]
 8000c4c:	f8ad 4016 	strh.w	r4, [sp, #22]
 8000c50:	f001 fe92 	bl	8002978 <TIM_TimeBaseInit>
 8000c54:	4622      	mov	r2, r4
 8000c56:	4640      	mov	r0, r8
 8000c58:	4621      	mov	r1, r4
 8000c5a:	f7ff fec7 	bl	80009ec <_ZN6CMotor7pwm_setEmm>
 8000c5e:	4630      	mov	r0, r6
 8000c60:	4629      	mov	r1, r5
 8000c62:	f001 fed9 	bl	8002a18 <TIM_Cmd>
 8000c66:	4630      	mov	r0, r6
 8000c68:	4629      	mov	r1, r5
 8000c6a:	f001 ff6a 	bl	8002b42 <TIM_CtrlPWMOutputs>
 8000c6e:	4640      	mov	r0, r8
 8000c70:	4621      	mov	r1, r4
 8000c72:	4622      	mov	r2, r4
 8000c74:	f7ff ff48 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 8000c78:	4640      	mov	r0, r8
 8000c7a:	4629      	mov	r1, r5
 8000c7c:	4622      	mov	r2, r4
 8000c7e:	f7ff ff43 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 8000c82:	4620      	mov	r0, r4
 8000c84:	b007      	add	sp, #28
 8000c86:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000c8a:	bf00      	nop
 8000c8c:	48000c00 	.word	0x48000c00
 8000c90:	40012c00 	.word	0x40012c00
 8000c94:	20000030 	.word	0x20000030
 8000c98:	48000400 	.word	0x48000400

08000c9c <_ZN8CSensors12sensors_initEv>:
 8000c9c:	b510      	push	{r4, lr}
 8000c9e:	4604      	mov	r4, r0
 8000ca0:	4809      	ldr	r0, [pc, #36]	; (8000cc8 <_ZN8CSensors12sensors_initEv+0x2c>)
 8000ca2:	f000 fa15 	bl	80010d0 <_ZN4CI2C4initEv>
 8000ca6:	4620      	mov	r0, r4
 8000ca8:	f7ff fe06 	bl	80008b8 <_ZN4CRGB8rgb_initEv>
 8000cac:	b110      	cbz	r0, 8000cb4 <_ZN8CSensors12sensors_initEv+0x18>
 8000cae:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000cb2:	bd10      	pop	{r4, pc}
 8000cb4:	f504 7098 	add.w	r0, r4, #304	; 0x130
 8000cb8:	f000 fb9a 	bl	80013f0 <_ZN4CIMU8imu_initEv>
 8000cbc:	b110      	cbz	r0, 8000cc4 <_ZN8CSensors12sensors_initEv+0x28>
 8000cbe:	f5a0 509c 	sub.w	r0, r0, #4992	; 0x1380
 8000cc2:	3808      	subs	r0, #8
 8000cc4:	bd10      	pop	{r4, pc}
 8000cc6:	bf00      	nop
 8000cc8:	20000214 	.word	0x20000214

08000ccc <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000ccc:	bf00      	nop
 8000cce:	bf00      	nop
 8000cd0:	bf00      	nop
 8000cd2:	bf00      	nop
 8000cd4:	4770      	bx	lr
	...

08000cd8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000cd8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000cda:	7803      	ldrb	r3, [r0, #0]
 8000cdc:	9300      	str	r3, [sp, #0]
 8000cde:	2401      	movs	r4, #1
 8000ce0:	4605      	mov	r5, r0
 8000ce2:	2703      	movs	r7, #3
 8000ce4:	2600      	movs	r6, #0
 8000ce6:	4669      	mov	r1, sp
 8000ce8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cec:	f88d 6007 	strb.w	r6, [sp, #7]
 8000cf0:	f88d 4004 	strb.w	r4, [sp, #4]
 8000cf4:	f88d 7005 	strb.w	r7, [sp, #5]
 8000cf8:	f88d 4006 	strb.w	r4, [sp, #6]
 8000cfc:	f002 f9da 	bl	80030b4 <GPIO_Init>
 8000d00:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000d04:	782a      	ldrb	r2, [r5, #0]
 8000d06:	851a      	strh	r2, [r3, #40]	; 0x28
 8000d08:	f88d 6007 	strb.w	r6, [sp, #7]
 8000d0c:	4e08      	ldr	r6, [pc, #32]	; (8000d30 <_ZN8CRGB_I2C12RGBSetLowSDAEv+0x58>)
 8000d0e:	9400      	str	r4, [sp, #0]
 8000d10:	4630      	mov	r0, r6
 8000d12:	4669      	mov	r1, sp
 8000d14:	f88d 4004 	strb.w	r4, [sp, #4]
 8000d18:	f88d 7005 	strb.w	r7, [sp, #5]
 8000d1c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000d20:	f002 f9c8 	bl	80030b4 <GPIO_Init>
 8000d24:	8534      	strh	r4, [r6, #40]	; 0x28
 8000d26:	4628      	mov	r0, r5
 8000d28:	f7ff ffd0 	bl	8000ccc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000d2c:	b003      	add	sp, #12
 8000d2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d30:	48000400 	.word	0x48000400

08000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000d34:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000d36:	7803      	ldrb	r3, [r0, #0]
 8000d38:	9300      	str	r3, [sp, #0]
 8000d3a:	2400      	movs	r4, #0
 8000d3c:	4605      	mov	r5, r0
 8000d3e:	2703      	movs	r7, #3
 8000d40:	4669      	mov	r1, sp
 8000d42:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000d46:	f88d 4004 	strb.w	r4, [sp, #4]
 8000d4a:	f88d 4007 	strb.w	r4, [sp, #7]
 8000d4e:	f88d 7005 	strb.w	r7, [sp, #5]
 8000d52:	f002 f9af 	bl	80030b4 <GPIO_Init>
 8000d56:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000d5a:	782a      	ldrb	r2, [r5, #0]
 8000d5c:	619a      	str	r2, [r3, #24]
 8000d5e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000d62:	f88d 4007 	strb.w	r4, [sp, #7]
 8000d66:	4c07      	ldr	r4, [pc, #28]	; (8000d84 <_ZN8CRGB_I2C13RGBSetHighSDAEv+0x50>)
 8000d68:	f88d 7005 	strb.w	r7, [sp, #5]
 8000d6c:	2601      	movs	r6, #1
 8000d6e:	4620      	mov	r0, r4
 8000d70:	4669      	mov	r1, sp
 8000d72:	9600      	str	r6, [sp, #0]
 8000d74:	f002 f99e 	bl	80030b4 <GPIO_Init>
 8000d78:	61a6      	str	r6, [r4, #24]
 8000d7a:	4628      	mov	r0, r5
 8000d7c:	f7ff ffa6 	bl	8000ccc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000d80:	b003      	add	sp, #12
 8000d82:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d84:	48000400 	.word	0x48000400

08000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000d88:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000d8c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000d90:	851a      	strh	r2, [r3, #40]	; 0x28
 8000d92:	f7ff bf9b 	b.w	8000ccc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000d96:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000d9a:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000d9e:	619a      	str	r2, [r3, #24]
 8000da0:	f7ff bf94 	b.w	8000ccc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000da4 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000da4:	b510      	push	{r4, lr}
 8000da6:	4604      	mov	r4, r0
 8000da8:	f7ff fff5 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000dac:	4620      	mov	r0, r4
 8000dae:	f7ff ffc1 	bl	8000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000db2:	4620      	mov	r0, r4
 8000db4:	f7ff ffef 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000db8:	4620      	mov	r0, r4
 8000dba:	f7ff ff8d 	bl	8000cd8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000dbe:	4620      	mov	r0, r4
 8000dc0:	f7ff ffe2 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000dc4:	4620      	mov	r0, r4
 8000dc6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000dca:	f7ff bfb3 	b.w	8000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000dce <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000dce:	b510      	push	{r4, lr}
 8000dd0:	4604      	mov	r4, r0
 8000dd2:	f7ff ffd9 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000dd6:	4620      	mov	r0, r4
 8000dd8:	f7ff ff7e 	bl	8000cd8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000ddc:	4620      	mov	r0, r4
 8000dde:	f7ff ffda 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000de2:	4620      	mov	r0, r4
 8000de4:	f7ff ff78 	bl	8000cd8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000de8:	4620      	mov	r0, r4
 8000dea:	f7ff ffd4 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000dee:	4620      	mov	r0, r4
 8000df0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000df4:	f7ff bf9e 	b.w	8000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000df8:	b570      	push	{r4, r5, r6, lr}
 8000dfa:	4604      	mov	r4, r0
 8000dfc:	460e      	mov	r6, r1
 8000dfe:	2508      	movs	r5, #8
 8000e00:	4620      	mov	r0, r4
 8000e02:	f7ff ffc1 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e06:	0633      	lsls	r3, r6, #24
 8000e08:	4620      	mov	r0, r4
 8000e0a:	d502      	bpl.n	8000e12 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000e0c:	f7ff ff92 	bl	8000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000e10:	e001      	b.n	8000e16 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000e12:	f7ff ff61 	bl	8000cd8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000e16:	4620      	mov	r0, r4
 8000e18:	3d01      	subs	r5, #1
 8000e1a:	f7ff ffbc 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000e1e:	0076      	lsls	r6, r6, #1
 8000e20:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000e24:	b2f6      	uxtb	r6, r6
 8000e26:	d1eb      	bne.n	8000e00 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000e28:	4620      	mov	r0, r4
 8000e2a:	f7ff ffad 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e2e:	4620      	mov	r0, r4
 8000e30:	f7ff ff80 	bl	8000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000e34:	4620      	mov	r0, r4
 8000e36:	f7ff ffae 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000e3a:	4620      	mov	r0, r4
 8000e3c:	f7ff ffa4 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e40:	4620      	mov	r0, r4
 8000e42:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000e46:	f7ff bf41 	b.w	8000ccc <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000e4a <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000e4a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e4c:	4604      	mov	r4, r0
 8000e4e:	460f      	mov	r7, r1
 8000e50:	4616      	mov	r6, r2
 8000e52:	461d      	mov	r5, r3
 8000e54:	f7ff ffa6 	bl	8000da4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e58:	4620      	mov	r0, r4
 8000e5a:	4639      	mov	r1, r7
 8000e5c:	f7ff ffcc 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e60:	4620      	mov	r0, r4
 8000e62:	4631      	mov	r1, r6
 8000e64:	f7ff ffc8 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e68:	4620      	mov	r0, r4
 8000e6a:	4629      	mov	r1, r5
 8000e6c:	f7ff ffc4 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e70:	4620      	mov	r0, r4
 8000e72:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000e76:	f7ff bfaa 	b.w	8000dce <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000e7c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000e80:	1e57      	subs	r7, r2, #1
 8000e82:	4605      	mov	r5, r0
 8000e84:	4689      	mov	r9, r1
 8000e86:	4614      	mov	r4, r2
 8000e88:	f102 0808 	add.w	r8, r2, #8
 8000e8c:	463b      	mov	r3, r7
 8000e8e:	2200      	movs	r2, #0
 8000e90:	f803 2f01 	strb.w	r2, [r3, #1]!
 8000e94:	4543      	cmp	r3, r8
 8000e96:	d1fa      	bne.n	8000e8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x12>
 8000e98:	4628      	mov	r0, r5
 8000e9a:	f7ff ff75 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000e9e:	4628      	mov	r0, r5
 8000ea0:	f7ff ff48 	bl	8000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ea4:	2608      	movs	r6, #8
 8000ea6:	463b      	mov	r3, r7
 8000ea8:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000eac:	0052      	lsls	r2, r2, #1
 8000eae:	4543      	cmp	r3, r8
 8000eb0:	701a      	strb	r2, [r3, #0]
 8000eb2:	d1f9      	bne.n	8000ea8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2c>
 8000eb4:	4628      	mov	r0, r5
 8000eb6:	f7ff ff6e 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000eba:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ebe:	8a1b      	ldrh	r3, [r3, #16]
 8000ec0:	b29b      	uxth	r3, r3
 8000ec2:	07d9      	lsls	r1, r3, #31
 8000ec4:	bf42      	ittt	mi
 8000ec6:	7822      	ldrbmi	r2, [r4, #0]
 8000ec8:	f042 0201 	orrmi.w	r2, r2, #1
 8000ecc:	7022      	strbmi	r2, [r4, #0]
 8000ece:	079a      	lsls	r2, r3, #30
 8000ed0:	bf42      	ittt	mi
 8000ed2:	7862      	ldrbmi	r2, [r4, #1]
 8000ed4:	f042 0201 	orrmi.w	r2, r2, #1
 8000ed8:	7062      	strbmi	r2, [r4, #1]
 8000eda:	0758      	lsls	r0, r3, #29
 8000edc:	bf42      	ittt	mi
 8000ede:	78a2      	ldrbmi	r2, [r4, #2]
 8000ee0:	f042 0201 	orrmi.w	r2, r2, #1
 8000ee4:	70a2      	strbmi	r2, [r4, #2]
 8000ee6:	0719      	lsls	r1, r3, #28
 8000ee8:	bf42      	ittt	mi
 8000eea:	78e2      	ldrbmi	r2, [r4, #3]
 8000eec:	f042 0201 	orrmi.w	r2, r2, #1
 8000ef0:	70e2      	strbmi	r2, [r4, #3]
 8000ef2:	06da      	lsls	r2, r3, #27
 8000ef4:	bf42      	ittt	mi
 8000ef6:	7922      	ldrbmi	r2, [r4, #4]
 8000ef8:	f042 0201 	orrmi.w	r2, r2, #1
 8000efc:	7122      	strbmi	r2, [r4, #4]
 8000efe:	0698      	lsls	r0, r3, #26
 8000f00:	bf42      	ittt	mi
 8000f02:	7962      	ldrbmi	r2, [r4, #5]
 8000f04:	f042 0201 	orrmi.w	r2, r2, #1
 8000f08:	7162      	strbmi	r2, [r4, #5]
 8000f0a:	0659      	lsls	r1, r3, #25
 8000f0c:	bf42      	ittt	mi
 8000f0e:	79a2      	ldrbmi	r2, [r4, #6]
 8000f10:	f042 0201 	orrmi.w	r2, r2, #1
 8000f14:	71a2      	strbmi	r2, [r4, #6]
 8000f16:	061a      	lsls	r2, r3, #24
 8000f18:	bf42      	ittt	mi
 8000f1a:	79e3      	ldrbmi	r3, [r4, #7]
 8000f1c:	f043 0301 	orrmi.w	r3, r3, #1
 8000f20:	71e3      	strbmi	r3, [r4, #7]
 8000f22:	4b0f      	ldr	r3, [pc, #60]	; (8000f60 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xe4>)
 8000f24:	8a1b      	ldrh	r3, [r3, #16]
 8000f26:	07db      	lsls	r3, r3, #31
 8000f28:	bf42      	ittt	mi
 8000f2a:	7a23      	ldrbmi	r3, [r4, #8]
 8000f2c:	f043 0301 	orrmi.w	r3, r3, #1
 8000f30:	7223      	strbmi	r3, [r4, #8]
 8000f32:	4628      	mov	r0, r5
 8000f34:	f7ff ff28 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000f38:	3e01      	subs	r6, #1
 8000f3a:	d1b4      	bne.n	8000ea6 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2a>
 8000f3c:	f1b9 0f00 	cmp.w	r9, #0
 8000f40:	d002      	beq.n	8000f48 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xcc>
 8000f42:	4628      	mov	r0, r5
 8000f44:	f7ff fec8 	bl	8000cd8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000f48:	4628      	mov	r0, r5
 8000f4a:	f7ff ff24 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000f4e:	4628      	mov	r0, r5
 8000f50:	f7ff ff1a 	bl	8000d88 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000f54:	4628      	mov	r0, r5
 8000f56:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000f5a:	f7ff beb7 	b.w	8000ccc <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000f5e:	bf00      	nop
 8000f60:	48000400 	.word	0x48000400

08000f64 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000f64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000f66:	4604      	mov	r4, r0
 8000f68:	460d      	mov	r5, r1
 8000f6a:	4617      	mov	r7, r2
 8000f6c:	461e      	mov	r6, r3
 8000f6e:	f7ff ff19 	bl	8000da4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000f72:	4620      	mov	r0, r4
 8000f74:	4629      	mov	r1, r5
 8000f76:	f7ff ff3f 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000f7a:	4639      	mov	r1, r7
 8000f7c:	4620      	mov	r0, r4
 8000f7e:	f7ff ff3b 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000f82:	4620      	mov	r0, r4
 8000f84:	f7ff ff0e 	bl	8000da4 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000f88:	4620      	mov	r0, r4
 8000f8a:	f045 0101 	orr.w	r1, r5, #1
 8000f8e:	f7ff ff33 	bl	8000df8 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000f92:	4620      	mov	r0, r4
 8000f94:	4632      	mov	r2, r6
 8000f96:	2100      	movs	r1, #0
 8000f98:	f7ff ff70 	bl	8000e7c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000f9c:	4620      	mov	r0, r4
 8000f9e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000fa2:	f7ff bf14 	b.w	8000dce <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000fa8 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000fa8:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8000fac:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8000fb0:	2400      	movs	r4, #0
 8000fb2:	4605      	mov	r5, r0
 8000fb4:	2601      	movs	r6, #1
 8000fb6:	2703      	movs	r7, #3
 8000fb8:	6003      	str	r3, [r0, #0]
 8000fba:	4669      	mov	r1, sp
 8000fbc:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000fc0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000fc4:	9300      	str	r3, [sp, #0]
 8000fc6:	f88d 4006 	strb.w	r4, [sp, #6]
 8000fca:	f88d 4007 	strb.w	r4, [sp, #7]
 8000fce:	f04f 08ff 	mov.w	r8, #255	; 0xff
 8000fd2:	f88d 6004 	strb.w	r6, [sp, #4]
 8000fd6:	f88d 7005 	strb.w	r7, [sp, #5]
 8000fda:	f002 f86b 	bl	80030b4 <GPIO_Init>
 8000fde:	4669      	mov	r1, sp
 8000fe0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000fe4:	f88d 4004 	strb.w	r4, [sp, #4]
 8000fe8:	f88d 4007 	strb.w	r4, [sp, #7]
 8000fec:	f8cd 8000 	str.w	r8, [sp]
 8000ff0:	f88d 7005 	strb.w	r7, [sp, #5]
 8000ff4:	f002 f85e 	bl	80030b4 <GPIO_Init>
 8000ff8:	4641      	mov	r1, r8
 8000ffa:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ffe:	f002 f89b 	bl	8003138 <GPIO_SetBits>
 8001002:	f88d 4004 	strb.w	r4, [sp, #4]
 8001006:	f88d 4007 	strb.w	r4, [sp, #7]
 800100a:	4c0c      	ldr	r4, [pc, #48]	; (800103c <_ZN8CRGB_I2C12rgb_i2c_initEv+0x94>)
 800100c:	9600      	str	r6, [sp, #0]
 800100e:	4620      	mov	r0, r4
 8001010:	4669      	mov	r1, sp
 8001012:	f88d 7005 	strb.w	r7, [sp, #5]
 8001016:	f002 f84d 	bl	80030b4 <GPIO_Init>
 800101a:	4631      	mov	r1, r6
 800101c:	4620      	mov	r0, r4
 800101e:	f002 f88b 	bl	8003138 <GPIO_SetBits>
 8001022:	4628      	mov	r0, r5
 8001024:	f7ff feb7 	bl	8000d96 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001028:	4628      	mov	r0, r5
 800102a:	f7ff fe55 	bl	8000cd8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800102e:	4628      	mov	r0, r5
 8001030:	f7ff fe80 	bl	8000d34 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001034:	b002      	add	sp, #8
 8001036:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800103a:	bf00      	nop
 800103c:	48000400 	.word	0x48000400

08001040 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>:
 8001040:	2300      	movs	r3, #0
 8001042:	6003      	str	r3, [r0, #0]
 8001044:	4770      	bx	lr

08001046 <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>:
 8001046:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800104a:	6003      	str	r3, [r0, #0]
 800104c:	4770      	bx	lr

0800104e <_ZN4CI2C5delayEv>:
 800104e:	230b      	movs	r3, #11
 8001050:	3b01      	subs	r3, #1
 8001052:	d001      	beq.n	8001058 <_ZN4CI2C5delayEv+0xa>
 8001054:	bf00      	nop
 8001056:	e7fb      	b.n	8001050 <_ZN4CI2C5delayEv+0x2>
 8001058:	4770      	bx	lr
	...

0800105c <_ZN4CI2C9SetLowSDAEv>:
 800105c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800105e:	4c0c      	ldr	r4, [pc, #48]	; (8001090 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8001060:	2301      	movs	r3, #1
 8001062:	2203      	movs	r2, #3
 8001064:	4606      	mov	r6, r0
 8001066:	2580      	movs	r5, #128	; 0x80
 8001068:	f88d 3004 	strb.w	r3, [sp, #4]
 800106c:	f88d 3006 	strb.w	r3, [sp, #6]
 8001070:	4620      	mov	r0, r4
 8001072:	2300      	movs	r3, #0
 8001074:	4669      	mov	r1, sp
 8001076:	f88d 2005 	strb.w	r2, [sp, #5]
 800107a:	f88d 3007 	strb.w	r3, [sp, #7]
 800107e:	9500      	str	r5, [sp, #0]
 8001080:	f002 f818 	bl	80030b4 <GPIO_Init>
 8001084:	8525      	strh	r5, [r4, #40]	; 0x28
 8001086:	4630      	mov	r0, r6
 8001088:	f7ff ffe1 	bl	800104e <_ZN4CI2C5delayEv>
 800108c:	b002      	add	sp, #8
 800108e:	bd70      	pop	{r4, r5, r6, pc}
 8001090:	48000400 	.word	0x48000400

08001094 <_ZN4CI2C10SetHighSDAEv>:
 8001094:	4b05      	ldr	r3, [pc, #20]	; (80010ac <_ZN4CI2C10SetHighSDAEv+0x18>)
 8001096:	681a      	ldr	r2, [r3, #0]
 8001098:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 800109c:	601a      	str	r2, [r3, #0]
 800109e:	681a      	ldr	r2, [r3, #0]
 80010a0:	601a      	str	r2, [r3, #0]
 80010a2:	2280      	movs	r2, #128	; 0x80
 80010a4:	619a      	str	r2, [r3, #24]
 80010a6:	f7ff bfd2 	b.w	800104e <_ZN4CI2C5delayEv>
 80010aa:	bf00      	nop
 80010ac:	48000400 	.word	0x48000400

080010b0 <_ZN4CI2C9SetLowSCLEv>:
 80010b0:	4b02      	ldr	r3, [pc, #8]	; (80010bc <_ZN4CI2C9SetLowSCLEv+0xc>)
 80010b2:	2240      	movs	r2, #64	; 0x40
 80010b4:	851a      	strh	r2, [r3, #40]	; 0x28
 80010b6:	f7ff bfca 	b.w	800104e <_ZN4CI2C5delayEv>
 80010ba:	bf00      	nop
 80010bc:	48000400 	.word	0x48000400

080010c0 <_ZN4CI2C10SetHighSCLEv>:
 80010c0:	4b02      	ldr	r3, [pc, #8]	; (80010cc <_ZN4CI2C10SetHighSCLEv+0xc>)
 80010c2:	2240      	movs	r2, #64	; 0x40
 80010c4:	619a      	str	r2, [r3, #24]
 80010c6:	f7ff bfc2 	b.w	800104e <_ZN4CI2C5delayEv>
 80010ca:	bf00      	nop
 80010cc:	48000400 	.word	0x48000400

080010d0 <_ZN4CI2C4initEv>:
 80010d0:	b513      	push	{r0, r1, r4, lr}
 80010d2:	4604      	mov	r4, r0
 80010d4:	2101      	movs	r1, #1
 80010d6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80010da:	f001 fc23 	bl	8002924 <RCC_AHBPeriphClockCmd>
 80010de:	23c0      	movs	r3, #192	; 0xc0
 80010e0:	9300      	str	r3, [sp, #0]
 80010e2:	2301      	movs	r3, #1
 80010e4:	2203      	movs	r2, #3
 80010e6:	4669      	mov	r1, sp
 80010e8:	f88d 3004 	strb.w	r3, [sp, #4]
 80010ec:	f88d 3006 	strb.w	r3, [sp, #6]
 80010f0:	4809      	ldr	r0, [pc, #36]	; (8001118 <_ZN4CI2C4initEv+0x48>)
 80010f2:	f88d 2005 	strb.w	r2, [sp, #5]
 80010f6:	2300      	movs	r3, #0
 80010f8:	f88d 3007 	strb.w	r3, [sp, #7]
 80010fc:	f001 ffda 	bl	80030b4 <GPIO_Init>
 8001100:	4620      	mov	r0, r4
 8001102:	f7ff ffdd 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 8001106:	4620      	mov	r0, r4
 8001108:	f7ff ffa8 	bl	800105c <_ZN4CI2C9SetLowSDAEv>
 800110c:	4620      	mov	r0, r4
 800110e:	f7ff ffc1 	bl	8001094 <_ZN4CI2C10SetHighSDAEv>
 8001112:	b002      	add	sp, #8
 8001114:	bd10      	pop	{r4, pc}
 8001116:	bf00      	nop
 8001118:	48000400 	.word	0x48000400

0800111c <_ZN4CI2C5StartEv>:
 800111c:	b510      	push	{r4, lr}
 800111e:	4604      	mov	r4, r0
 8001120:	f7ff ffce 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 8001124:	4620      	mov	r0, r4
 8001126:	f7ff ffb5 	bl	8001094 <_ZN4CI2C10SetHighSDAEv>
 800112a:	4620      	mov	r0, r4
 800112c:	f7ff ffc8 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 8001130:	4620      	mov	r0, r4
 8001132:	f7ff ff93 	bl	800105c <_ZN4CI2C9SetLowSDAEv>
 8001136:	4620      	mov	r0, r4
 8001138:	f7ff ffba 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 800113c:	4620      	mov	r0, r4
 800113e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001142:	f7ff bfa7 	b.w	8001094 <_ZN4CI2C10SetHighSDAEv>

08001146 <_ZN4CI2C4StopEv>:
 8001146:	b510      	push	{r4, lr}
 8001148:	4604      	mov	r4, r0
 800114a:	f7ff ffb1 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 800114e:	4620      	mov	r0, r4
 8001150:	f7ff ff84 	bl	800105c <_ZN4CI2C9SetLowSDAEv>
 8001154:	4620      	mov	r0, r4
 8001156:	f7ff ffb3 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 800115a:	4620      	mov	r0, r4
 800115c:	f7ff ff7e 	bl	800105c <_ZN4CI2C9SetLowSDAEv>
 8001160:	4620      	mov	r0, r4
 8001162:	f7ff ffad 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 8001166:	4620      	mov	r0, r4
 8001168:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800116c:	f7ff bf92 	b.w	8001094 <_ZN4CI2C10SetHighSDAEv>

08001170 <_ZN4CI2C5WriteEh>:
 8001170:	b570      	push	{r4, r5, r6, lr}
 8001172:	4604      	mov	r4, r0
 8001174:	460e      	mov	r6, r1
 8001176:	2508      	movs	r5, #8
 8001178:	4620      	mov	r0, r4
 800117a:	f7ff ff99 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 800117e:	0633      	lsls	r3, r6, #24
 8001180:	4620      	mov	r0, r4
 8001182:	d502      	bpl.n	800118a <_ZN4CI2C5WriteEh+0x1a>
 8001184:	f7ff ff86 	bl	8001094 <_ZN4CI2C10SetHighSDAEv>
 8001188:	e001      	b.n	800118e <_ZN4CI2C5WriteEh+0x1e>
 800118a:	f7ff ff67 	bl	800105c <_ZN4CI2C9SetLowSDAEv>
 800118e:	4620      	mov	r0, r4
 8001190:	3d01      	subs	r5, #1
 8001192:	f7ff ff95 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 8001196:	0076      	lsls	r6, r6, #1
 8001198:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800119c:	b2f6      	uxtb	r6, r6
 800119e:	d1eb      	bne.n	8001178 <_ZN4CI2C5WriteEh+0x8>
 80011a0:	4620      	mov	r0, r4
 80011a2:	f7ff ff85 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 80011a6:	4620      	mov	r0, r4
 80011a8:	f7ff ff74 	bl	8001094 <_ZN4CI2C10SetHighSDAEv>
 80011ac:	4620      	mov	r0, r4
 80011ae:	f7ff ff87 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 80011b2:	4b07      	ldr	r3, [pc, #28]	; (80011d0 <_ZN4CI2C5WriteEh+0x60>)
 80011b4:	8a1d      	ldrh	r5, [r3, #16]
 80011b6:	4620      	mov	r0, r4
 80011b8:	f7ff ff7a 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 80011bc:	b2ad      	uxth	r5, r5
 80011be:	4620      	mov	r0, r4
 80011c0:	f7ff ff45 	bl	800104e <_ZN4CI2C5delayEv>
 80011c4:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 80011c8:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80011cc:	bd70      	pop	{r4, r5, r6, pc}
 80011ce:	bf00      	nop
 80011d0:	48000400 	.word	0x48000400

080011d4 <_ZN4CI2C9write_regEhhh>:
 80011d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80011d6:	4604      	mov	r4, r0
 80011d8:	460f      	mov	r7, r1
 80011da:	4616      	mov	r6, r2
 80011dc:	461d      	mov	r5, r3
 80011de:	f7ff ff9d 	bl	800111c <_ZN4CI2C5StartEv>
 80011e2:	4639      	mov	r1, r7
 80011e4:	4620      	mov	r0, r4
 80011e6:	f7ff ffc3 	bl	8001170 <_ZN4CI2C5WriteEh>
 80011ea:	4631      	mov	r1, r6
 80011ec:	4620      	mov	r0, r4
 80011ee:	f7ff ffbf 	bl	8001170 <_ZN4CI2C5WriteEh>
 80011f2:	4620      	mov	r0, r4
 80011f4:	4629      	mov	r1, r5
 80011f6:	f7ff ffbb 	bl	8001170 <_ZN4CI2C5WriteEh>
 80011fa:	4620      	mov	r0, r4
 80011fc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001200:	f7ff bfa1 	b.w	8001146 <_ZN4CI2C4StopEv>

08001204 <_ZN4CI2C4ReadEh>:
 8001204:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001206:	4605      	mov	r5, r0
 8001208:	460f      	mov	r7, r1
 800120a:	f7ff ff51 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 800120e:	2608      	movs	r6, #8
 8001210:	2400      	movs	r4, #0
 8001212:	4628      	mov	r0, r5
 8001214:	f7ff ff54 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 8001218:	4b10      	ldr	r3, [pc, #64]	; (800125c <_ZN4CI2C4ReadEh+0x58>)
 800121a:	8a1b      	ldrh	r3, [r3, #16]
 800121c:	0064      	lsls	r4, r4, #1
 800121e:	061b      	lsls	r3, r3, #24
 8001220:	b2e4      	uxtb	r4, r4
 8001222:	4628      	mov	r0, r5
 8001224:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8001228:	bf48      	it	mi
 800122a:	f044 0401 	orrmi.w	r4, r4, #1
 800122e:	f7ff ff3f 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 8001232:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8001236:	d1ec      	bne.n	8001212 <_ZN4CI2C4ReadEh+0xe>
 8001238:	4628      	mov	r0, r5
 800123a:	b117      	cbz	r7, 8001242 <_ZN4CI2C4ReadEh+0x3e>
 800123c:	f7ff ff0e 	bl	800105c <_ZN4CI2C9SetLowSDAEv>
 8001240:	e001      	b.n	8001246 <_ZN4CI2C4ReadEh+0x42>
 8001242:	f7ff ff27 	bl	8001094 <_ZN4CI2C10SetHighSDAEv>
 8001246:	4628      	mov	r0, r5
 8001248:	f7ff ff3a 	bl	80010c0 <_ZN4CI2C10SetHighSCLEv>
 800124c:	4628      	mov	r0, r5
 800124e:	f7ff ff2f 	bl	80010b0 <_ZN4CI2C9SetLowSCLEv>
 8001252:	4628      	mov	r0, r5
 8001254:	f7ff ff1e 	bl	8001094 <_ZN4CI2C10SetHighSDAEv>
 8001258:	4620      	mov	r0, r4
 800125a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800125c:	48000400 	.word	0x48000400

08001260 <_ZN4CI2C8read_regEhh>:
 8001260:	b570      	push	{r4, r5, r6, lr}
 8001262:	4604      	mov	r4, r0
 8001264:	460d      	mov	r5, r1
 8001266:	4616      	mov	r6, r2
 8001268:	f7ff ff58 	bl	800111c <_ZN4CI2C5StartEv>
 800126c:	4629      	mov	r1, r5
 800126e:	4620      	mov	r0, r4
 8001270:	f7ff ff7e 	bl	8001170 <_ZN4CI2C5WriteEh>
 8001274:	4631      	mov	r1, r6
 8001276:	4620      	mov	r0, r4
 8001278:	f7ff ff7a 	bl	8001170 <_ZN4CI2C5WriteEh>
 800127c:	4620      	mov	r0, r4
 800127e:	f7ff ff4d 	bl	800111c <_ZN4CI2C5StartEv>
 8001282:	f045 0101 	orr.w	r1, r5, #1
 8001286:	4620      	mov	r0, r4
 8001288:	f7ff ff72 	bl	8001170 <_ZN4CI2C5WriteEh>
 800128c:	2100      	movs	r1, #0
 800128e:	4620      	mov	r0, r4
 8001290:	f7ff ffb8 	bl	8001204 <_ZN4CI2C4ReadEh>
 8001294:	4605      	mov	r5, r0
 8001296:	4620      	mov	r0, r4
 8001298:	f7ff ff55 	bl	8001146 <_ZN4CI2C4StopEv>
 800129c:	4628      	mov	r0, r5
 800129e:	bd70      	pop	{r4, r5, r6, pc}

080012a0 <_ZN4CIMU8imu_readEv>:
 80012a0:	b570      	push	{r4, r5, r6, lr}
 80012a2:	4c52      	ldr	r4, [pc, #328]	; (80013ec <_ZN4CIMU8imu_readEv+0x14c>)
 80012a4:	4605      	mov	r5, r0
 80012a6:	4620      	mov	r0, r4
 80012a8:	f7ff ff38 	bl	800111c <_ZN4CI2C5StartEv>
 80012ac:	4620      	mov	r0, r4
 80012ae:	21d4      	movs	r1, #212	; 0xd4
 80012b0:	f7ff ff5e 	bl	8001170 <_ZN4CI2C5WriteEh>
 80012b4:	21a8      	movs	r1, #168	; 0xa8
 80012b6:	4620      	mov	r0, r4
 80012b8:	f7ff ff5a 	bl	8001170 <_ZN4CI2C5WriteEh>
 80012bc:	4620      	mov	r0, r4
 80012be:	f7ff ff2d 	bl	800111c <_ZN4CI2C5StartEv>
 80012c2:	4620      	mov	r0, r4
 80012c4:	21d5      	movs	r1, #213	; 0xd5
 80012c6:	f7ff ff53 	bl	8001170 <_ZN4CI2C5WriteEh>
 80012ca:	4620      	mov	r0, r4
 80012cc:	2101      	movs	r1, #1
 80012ce:	f7ff ff99 	bl	8001204 <_ZN4CI2C4ReadEh>
 80012d2:	2101      	movs	r1, #1
 80012d4:	b286      	uxth	r6, r0
 80012d6:	4620      	mov	r0, r4
 80012d8:	f7ff ff94 	bl	8001204 <_ZN4CI2C4ReadEh>
 80012dc:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80012e0:	b200      	sxth	r0, r0
 80012e2:	6268      	str	r0, [r5, #36]	; 0x24
 80012e4:	2101      	movs	r1, #1
 80012e6:	4620      	mov	r0, r4
 80012e8:	f7ff ff8c 	bl	8001204 <_ZN4CI2C4ReadEh>
 80012ec:	2101      	movs	r1, #1
 80012ee:	b286      	uxth	r6, r0
 80012f0:	4620      	mov	r0, r4
 80012f2:	f7ff ff87 	bl	8001204 <_ZN4CI2C4ReadEh>
 80012f6:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80012fa:	b200      	sxth	r0, r0
 80012fc:	62a8      	str	r0, [r5, #40]	; 0x28
 80012fe:	2101      	movs	r1, #1
 8001300:	4620      	mov	r0, r4
 8001302:	f7ff ff7f 	bl	8001204 <_ZN4CI2C4ReadEh>
 8001306:	2100      	movs	r1, #0
 8001308:	b286      	uxth	r6, r0
 800130a:	4620      	mov	r0, r4
 800130c:	f7ff ff7a 	bl	8001204 <_ZN4CI2C4ReadEh>
 8001310:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001314:	b200      	sxth	r0, r0
 8001316:	62e8      	str	r0, [r5, #44]	; 0x2c
 8001318:	4620      	mov	r0, r4
 800131a:	f7ff ff14 	bl	8001146 <_ZN4CI2C4StopEv>
 800131e:	4620      	mov	r0, r4
 8001320:	f7ff fefc 	bl	800111c <_ZN4CI2C5StartEv>
 8001324:	4620      	mov	r0, r4
 8001326:	213c      	movs	r1, #60	; 0x3c
 8001328:	f7ff ff22 	bl	8001170 <_ZN4CI2C5WriteEh>
 800132c:	21a8      	movs	r1, #168	; 0xa8
 800132e:	4620      	mov	r0, r4
 8001330:	f7ff ff1e 	bl	8001170 <_ZN4CI2C5WriteEh>
 8001334:	4620      	mov	r0, r4
 8001336:	f7ff fef1 	bl	800111c <_ZN4CI2C5StartEv>
 800133a:	4620      	mov	r0, r4
 800133c:	213d      	movs	r1, #61	; 0x3d
 800133e:	f7ff ff17 	bl	8001170 <_ZN4CI2C5WriteEh>
 8001342:	4620      	mov	r0, r4
 8001344:	2101      	movs	r1, #1
 8001346:	f7ff ff5d 	bl	8001204 <_ZN4CI2C4ReadEh>
 800134a:	2101      	movs	r1, #1
 800134c:	b286      	uxth	r6, r0
 800134e:	4620      	mov	r0, r4
 8001350:	f7ff ff58 	bl	8001204 <_ZN4CI2C4ReadEh>
 8001354:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001358:	b200      	sxth	r0, r0
 800135a:	6328      	str	r0, [r5, #48]	; 0x30
 800135c:	2101      	movs	r1, #1
 800135e:	4620      	mov	r0, r4
 8001360:	f7ff ff50 	bl	8001204 <_ZN4CI2C4ReadEh>
 8001364:	2101      	movs	r1, #1
 8001366:	b286      	uxth	r6, r0
 8001368:	4620      	mov	r0, r4
 800136a:	f7ff ff4b 	bl	8001204 <_ZN4CI2C4ReadEh>
 800136e:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001372:	b200      	sxth	r0, r0
 8001374:	6368      	str	r0, [r5, #52]	; 0x34
 8001376:	2101      	movs	r1, #1
 8001378:	4620      	mov	r0, r4
 800137a:	f7ff ff43 	bl	8001204 <_ZN4CI2C4ReadEh>
 800137e:	2100      	movs	r1, #0
 8001380:	b286      	uxth	r6, r0
 8001382:	4620      	mov	r0, r4
 8001384:	f7ff ff3e 	bl	8001204 <_ZN4CI2C4ReadEh>
 8001388:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800138c:	b200      	sxth	r0, r0
 800138e:	63a8      	str	r0, [r5, #56]	; 0x38
 8001390:	4620      	mov	r0, r4
 8001392:	f7ff fed8 	bl	8001146 <_ZN4CI2C4StopEv>
 8001396:	6aaa      	ldr	r2, [r5, #40]	; 0x28
 8001398:	686b      	ldr	r3, [r5, #4]
 800139a:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 800139c:	1a9b      	subs	r3, r3, r2
 800139e:	68ea      	ldr	r2, [r5, #12]
 80013a0:	26c8      	movs	r6, #200	; 0xc8
 80013a2:	fb93 f3f6 	sdiv	r3, r3, r6
 80013a6:	441a      	add	r2, r3
 80013a8:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 80013aa:	60ea      	str	r2, [r5, #12]
 80013ac:	2164      	movs	r1, #100	; 0x64
 80013ae:	4359      	muls	r1, r3
 80013b0:	f640 14e2 	movw	r4, #2530	; 0x9e2
 80013b4:	434a      	muls	r2, r1
 80013b6:	682b      	ldr	r3, [r5, #0]
 80013b8:	fb92 f2f4 	sdiv	r2, r2, r4
 80013bc:	61aa      	str	r2, [r5, #24]
 80013be:	6a6a      	ldr	r2, [r5, #36]	; 0x24
 80013c0:	1a9b      	subs	r3, r3, r2
 80013c2:	692a      	ldr	r2, [r5, #16]
 80013c4:	fb93 f3f6 	sdiv	r3, r3, r6
 80013c8:	441a      	add	r2, r3
 80013ca:	612a      	str	r2, [r5, #16]
 80013cc:	434a      	muls	r2, r1
 80013ce:	fb92 f2f4 	sdiv	r2, r2, r4
 80013d2:	61ea      	str	r2, [r5, #28]
 80013d4:	68aa      	ldr	r2, [r5, #8]
 80013d6:	1a12      	subs	r2, r2, r0
 80013d8:	fb92 f0f6 	sdiv	r0, r2, r6
 80013dc:	696a      	ldr	r2, [r5, #20]
 80013de:	1883      	adds	r3, r0, r2
 80013e0:	616b      	str	r3, [r5, #20]
 80013e2:	434b      	muls	r3, r1
 80013e4:	fb93 f3f4 	sdiv	r3, r3, r4
 80013e8:	622b      	str	r3, [r5, #32]
 80013ea:	bd70      	pop	{r4, r5, r6, pc}
 80013ec:	20000214 	.word	0x20000214

080013f0 <_ZN4CIMU8imu_initEv>:
 80013f0:	230a      	movs	r3, #10
 80013f2:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80013f6:	63c3      	str	r3, [r0, #60]	; 0x3c
 80013f8:	2300      	movs	r3, #0
 80013fa:	4604      	mov	r4, r0
 80013fc:	6003      	str	r3, [r0, #0]
 80013fe:	6043      	str	r3, [r0, #4]
 8001400:	6083      	str	r3, [r0, #8]
 8001402:	60c3      	str	r3, [r0, #12]
 8001404:	6103      	str	r3, [r0, #16]
 8001406:	6143      	str	r3, [r0, #20]
 8001408:	f242 7511 	movw	r5, #10001	; 0x2711
 800140c:	3d01      	subs	r5, #1
 800140e:	d001      	beq.n	8001414 <_ZN4CIMU8imu_initEv+0x24>
 8001410:	bf00      	nop
 8001412:	e7fb      	b.n	800140c <_ZN4CIMU8imu_initEv+0x1c>
 8001414:	4832      	ldr	r0, [pc, #200]	; (80014e0 <_ZN4CIMU8imu_initEv+0xf0>)
 8001416:	21d4      	movs	r1, #212	; 0xd4
 8001418:	220f      	movs	r2, #15
 800141a:	f7ff ff21 	bl	8001260 <_ZN4CI2C8read_regEhh>
 800141e:	28d4      	cmp	r0, #212	; 0xd4
 8001420:	4606      	mov	r6, r0
 8001422:	d155      	bne.n	80014d0 <_ZN4CIMU8imu_initEv+0xe0>
 8001424:	482e      	ldr	r0, [pc, #184]	; (80014e0 <_ZN4CIMU8imu_initEv+0xf0>)
 8001426:	213c      	movs	r1, #60	; 0x3c
 8001428:	220f      	movs	r2, #15
 800142a:	f7ff ff19 	bl	8001260 <_ZN4CI2C8read_regEhh>
 800142e:	2849      	cmp	r0, #73	; 0x49
 8001430:	d152      	bne.n	80014d8 <_ZN4CIMU8imu_initEv+0xe8>
 8001432:	4631      	mov	r1, r6
 8001434:	482a      	ldr	r0, [pc, #168]	; (80014e0 <_ZN4CIMU8imu_initEv+0xf0>)
 8001436:	2220      	movs	r2, #32
 8001438:	23ff      	movs	r3, #255	; 0xff
 800143a:	f7ff fecb 	bl	80011d4 <_ZN4CI2C9write_regEhhh>
 800143e:	4631      	mov	r1, r6
 8001440:	4827      	ldr	r0, [pc, #156]	; (80014e0 <_ZN4CIMU8imu_initEv+0xf0>)
 8001442:	4e28      	ldr	r6, [pc, #160]	; (80014e4 <_ZN4CIMU8imu_initEv+0xf4>)
 8001444:	2223      	movs	r2, #35	; 0x23
 8001446:	2310      	movs	r3, #16
 8001448:	f7ff fec4 	bl	80011d4 <_ZN4CI2C9write_regEhhh>
 800144c:	4824      	ldr	r0, [pc, #144]	; (80014e0 <_ZN4CIMU8imu_initEv+0xf0>)
 800144e:	213c      	movs	r1, #60	; 0x3c
 8001450:	221f      	movs	r2, #31
 8001452:	462b      	mov	r3, r5
 8001454:	f7ff febe 	bl	80011d4 <_ZN4CI2C9write_regEhhh>
 8001458:	4821      	ldr	r0, [pc, #132]	; (80014e0 <_ZN4CIMU8imu_initEv+0xf0>)
 800145a:	213c      	movs	r1, #60	; 0x3c
 800145c:	2220      	movs	r2, #32
 800145e:	2367      	movs	r3, #103	; 0x67
 8001460:	f7ff feb8 	bl	80011d4 <_ZN4CI2C9write_regEhhh>
 8001464:	481e      	ldr	r0, [pc, #120]	; (80014e0 <_ZN4CIMU8imu_initEv+0xf0>)
 8001466:	213c      	movs	r1, #60	; 0x3c
 8001468:	2221      	movs	r2, #33	; 0x21
 800146a:	462b      	mov	r3, r5
 800146c:	f7ff feb2 	bl	80011d4 <_ZN4CI2C9write_regEhhh>
 8001470:	3e01      	subs	r6, #1
 8001472:	d001      	beq.n	8001478 <_ZN4CIMU8imu_initEv+0x88>
 8001474:	bf00      	nop
 8001476:	e7fb      	b.n	8001470 <_ZN4CIMU8imu_initEv+0x80>
 8001478:	4620      	mov	r0, r4
 800147a:	f7ff ff11 	bl	80012a0 <_ZN4CIMU8imu_readEv>
 800147e:	2564      	movs	r5, #100	; 0x64
 8001480:	4637      	mov	r7, r6
 8001482:	46b0      	mov	r8, r6
 8001484:	2365      	movs	r3, #101	; 0x65
 8001486:	3b01      	subs	r3, #1
 8001488:	d001      	beq.n	800148e <_ZN4CIMU8imu_initEv+0x9e>
 800148a:	bf00      	nop
 800148c:	e7fb      	b.n	8001486 <_ZN4CIMU8imu_initEv+0x96>
 800148e:	4620      	mov	r0, r4
 8001490:	f7ff ff06 	bl	80012a0 <_ZN4CIMU8imu_readEv>
 8001494:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8001496:	4498      	add	r8, r3
 8001498:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 800149a:	441f      	add	r7, r3
 800149c:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800149e:	3d01      	subs	r5, #1
 80014a0:	441e      	add	r6, r3
 80014a2:	d1ef      	bne.n	8001484 <_ZN4CIMU8imu_initEv+0x94>
 80014a4:	2264      	movs	r2, #100	; 0x64
 80014a6:	6325      	str	r5, [r4, #48]	; 0x30
 80014a8:	fb98 f3f2 	sdiv	r3, r8, r2
 80014ac:	fb97 f7f2 	sdiv	r7, r7, r2
 80014b0:	fb96 f6f2 	sdiv	r6, r6, r2
 80014b4:	6023      	str	r3, [r4, #0]
 80014b6:	6067      	str	r7, [r4, #4]
 80014b8:	60a6      	str	r6, [r4, #8]
 80014ba:	6365      	str	r5, [r4, #52]	; 0x34
 80014bc:	63a5      	str	r5, [r4, #56]	; 0x38
 80014be:	6265      	str	r5, [r4, #36]	; 0x24
 80014c0:	62a5      	str	r5, [r4, #40]	; 0x28
 80014c2:	62e5      	str	r5, [r4, #44]	; 0x2c
 80014c4:	61a5      	str	r5, [r4, #24]
 80014c6:	61e5      	str	r5, [r4, #28]
 80014c8:	6225      	str	r5, [r4, #32]
 80014ca:	4628      	mov	r0, r5
 80014cc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80014d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80014d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80014d8:	f06f 0001 	mvn.w	r0, #1
 80014dc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80014e0:	20000214 	.word	0x20000214
 80014e4:	000186a1 	.word	0x000186a1

080014e8 <_ZN5CGPIO9gpio_initEv>:
 80014e8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80014ec:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80014f0:	b087      	sub	sp, #28
 80014f2:	2101      	movs	r1, #1
 80014f4:	f001 fa16 	bl	8002924 <RCC_AHBPeriphClockCmd>
 80014f8:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80014fc:	2101      	movs	r1, #1
 80014fe:	f001 fa11 	bl	8002924 <RCC_AHBPeriphClockCmd>
 8001502:	4f44      	ldr	r7, [pc, #272]	; (8001614 <_ZN5CGPIO9gpio_initEv+0x12c>)
 8001504:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001508:	2101      	movs	r1, #1
 800150a:	f001 fa0b 	bl	8002924 <RCC_AHBPeriphClockCmd>
 800150e:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8001512:	2101      	movs	r1, #1
 8001514:	2400      	movs	r4, #0
 8001516:	f001 fa05 	bl	8002924 <RCC_AHBPeriphClockCmd>
 800151a:	2501      	movs	r5, #1
 800151c:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 8001520:	2603      	movs	r6, #3
 8001522:	4638      	mov	r0, r7
 8001524:	a902      	add	r1, sp, #8
 8001526:	f88d 600d 	strb.w	r6, [sp, #13]
 800152a:	f8cd 8008 	str.w	r8, [sp, #8]
 800152e:	f88d 500c 	strb.w	r5, [sp, #12]
 8001532:	f88d 400e 	strb.w	r4, [sp, #14]
 8001536:	f88d 400f 	strb.w	r4, [sp, #15]
 800153a:	f001 fdbb 	bl	80030b4 <GPIO_Init>
 800153e:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001542:	4638      	mov	r0, r7
 8001544:	a902      	add	r1, sp, #8
 8001546:	9302      	str	r3, [sp, #8]
 8001548:	f88d 600d 	strb.w	r6, [sp, #13]
 800154c:	f88d 400c 	strb.w	r4, [sp, #12]
 8001550:	f88d 400f 	strb.w	r4, [sp, #15]
 8001554:	f001 fdae 	bl	80030b4 <GPIO_Init>
 8001558:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 800155c:	a902      	add	r1, sp, #8
 800155e:	482e      	ldr	r0, [pc, #184]	; (8001618 <_ZN5CGPIO9gpio_initEv+0x130>)
 8001560:	9302      	str	r3, [sp, #8]
 8001562:	f88d 400c 	strb.w	r4, [sp, #12]
 8001566:	f88d 500f 	strb.w	r5, [sp, #15]
 800156a:	f001 fda3 	bl	80030b4 <GPIO_Init>
 800156e:	4628      	mov	r0, r5
 8001570:	4629      	mov	r1, r5
 8001572:	f001 f9e5 	bl	8002940 <RCC_APB2PeriphClockCmd>
 8001576:	f04f 0b10 	mov.w	fp, #16
 800157a:	2106      	movs	r1, #6
 800157c:	2002      	movs	r0, #2
 800157e:	f001 fe27 	bl	80031d0 <SYSCFG_EXTILineConfig>
 8001582:	f04f 0a06 	mov.w	sl, #6
 8001586:	eb0d 000b 	add.w	r0, sp, fp
 800158a:	260f      	movs	r6, #15
 800158c:	f8cd a010 	str.w	sl, [sp, #16]
 8001590:	f88d 4014 	strb.w	r4, [sp, #20]
 8001594:	f88d b015 	strb.w	fp, [sp, #21]
 8001598:	f88d 5016 	strb.w	r5, [sp, #22]
 800159c:	f001 fcf8 	bl	8002f90 <EXTI_Init>
 80015a0:	2317      	movs	r3, #23
 80015a2:	a801      	add	r0, sp, #4
 80015a4:	f88d 3004 	strb.w	r3, [sp, #4]
 80015a8:	f88d 6005 	strb.w	r6, [sp, #5]
 80015ac:	f88d 6006 	strb.w	r6, [sp, #6]
 80015b0:	f88d 5007 	strb.w	r5, [sp, #7]
 80015b4:	f001 fcb2 	bl	8002f1c <NVIC_Init>
 80015b8:	210c      	movs	r1, #12
 80015ba:	2002      	movs	r0, #2
 80015bc:	f001 fe08 	bl	80031d0 <SYSCFG_EXTILineConfig>
 80015c0:	f04f 090c 	mov.w	r9, #12
 80015c4:	eb0d 000b 	add.w	r0, sp, fp
 80015c8:	f8cd 9010 	str.w	r9, [sp, #16]
 80015cc:	f88d 4014 	strb.w	r4, [sp, #20]
 80015d0:	f88d b015 	strb.w	fp, [sp, #21]
 80015d4:	f88d 5016 	strb.w	r5, [sp, #22]
 80015d8:	f001 fcda 	bl	8002f90 <EXTI_Init>
 80015dc:	2328      	movs	r3, #40	; 0x28
 80015de:	a801      	add	r0, sp, #4
 80015e0:	f88d 3004 	strb.w	r3, [sp, #4]
 80015e4:	f88d 6005 	strb.w	r6, [sp, #5]
 80015e8:	f88d 6006 	strb.w	r6, [sp, #6]
 80015ec:	f88d 5007 	strb.w	r5, [sp, #7]
 80015f0:	f001 fc94 	bl	8002f1c <NVIC_Init>
 80015f4:	4650      	mov	r0, sl
 80015f6:	f001 fd51 	bl	800309c <EXTI_ClearITPendingBit>
 80015fa:	4648      	mov	r0, r9
 80015fc:	f001 fd4e 	bl	800309c <EXTI_ClearITPendingBit>
 8001600:	4b06      	ldr	r3, [pc, #24]	; (800161c <_ZN5CGPIO9gpio_initEv+0x134>)
 8001602:	601c      	str	r4, [r3, #0]
 8001604:	4b06      	ldr	r3, [pc, #24]	; (8001620 <_ZN5CGPIO9gpio_initEv+0x138>)
 8001606:	4620      	mov	r0, r4
 8001608:	601c      	str	r4, [r3, #0]
 800160a:	f8c7 8018 	str.w	r8, [r7, #24]
 800160e:	b007      	add	sp, #28
 8001610:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001614:	48000400 	.word	0x48000400
 8001618:	48000800 	.word	0x48000800
 800161c:	20000218 	.word	0x20000218
 8001620:	2000021c 	.word	0x2000021c

08001624 <_ZN5CGPIO7gpio_onEm>:
 8001624:	4b01      	ldr	r3, [pc, #4]	; (800162c <_ZN5CGPIO7gpio_onEm+0x8>)
 8001626:	6199      	str	r1, [r3, #24]
 8001628:	4770      	bx	lr
 800162a:	bf00      	nop
 800162c:	48000400 	.word	0x48000400

08001630 <_ZN5CGPIO8gpio_offEm>:
 8001630:	4b01      	ldr	r3, [pc, #4]	; (8001638 <_ZN5CGPIO8gpio_offEm+0x8>)
 8001632:	b289      	uxth	r1, r1
 8001634:	8519      	strh	r1, [r3, #40]	; 0x28
 8001636:	4770      	bx	lr
 8001638:	48000400 	.word	0x48000400

0800163c <_ZN5CGPIO7gpio_inEm>:
 800163c:	4b02      	ldr	r3, [pc, #8]	; (8001648 <_ZN5CGPIO7gpio_inEm+0xc>)
 800163e:	8a18      	ldrh	r0, [r3, #16]
 8001640:	b280      	uxth	r0, r0
 8001642:	ea21 0000 	bic.w	r0, r1, r0
 8001646:	4770      	bx	lr
 8001648:	48000400 	.word	0x48000400

0800164c <EXTI9_5_IRQHandler>:
 800164c:	4a03      	ldr	r2, [pc, #12]	; (800165c <EXTI9_5_IRQHandler+0x10>)
 800164e:	6813      	ldr	r3, [r2, #0]
 8001650:	2006      	movs	r0, #6
 8001652:	3301      	adds	r3, #1
 8001654:	6013      	str	r3, [r2, #0]
 8001656:	f001 bd21 	b.w	800309c <EXTI_ClearITPendingBit>
 800165a:	bf00      	nop
 800165c:	20000218 	.word	0x20000218

08001660 <EXTI15_10_IRQHandler>:
 8001660:	4a03      	ldr	r2, [pc, #12]	; (8001670 <EXTI15_10_IRQHandler+0x10>)
 8001662:	6813      	ldr	r3, [r2, #0]
 8001664:	200c      	movs	r0, #12
 8001666:	3301      	adds	r3, #1
 8001668:	6013      	str	r3, [r2, #0]
 800166a:	f001 bd17 	b.w	800309c <EXTI_ClearITPendingBit>
 800166e:	bf00      	nop
 8001670:	2000021c 	.word	0x2000021c

08001674 <_ZN7CCamera4initEv>:
 8001674:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001678:	4b3f      	ldr	r3, [pc, #252]	; (8001778 <_ZN7CCamera4initEv+0x104>)
 800167a:	2200      	movs	r2, #0
 800167c:	601a      	str	r2, [r3, #0]
 800167e:	605a      	str	r2, [r3, #4]
 8001680:	609a      	str	r2, [r3, #8]
 8001682:	611a      	str	r2, [r3, #16]
 8001684:	60da      	str	r2, [r3, #12]
 8001686:	b08e      	sub	sp, #56	; 0x38
 8001688:	f103 0212 	add.w	r2, r3, #18
 800168c:	f503 7389 	add.w	r3, r3, #274	; 0x112
 8001690:	2400      	movs	r4, #0
 8001692:	f822 4f02 	strh.w	r4, [r2, #2]!
 8001696:	429a      	cmp	r2, r3
 8001698:	4627      	mov	r7, r4
 800169a:	f8a2 4100 	strh.w	r4, [r2, #256]	; 0x100
 800169e:	d1f7      	bne.n	8001690 <_ZN7CCamera4initEv+0x1c>
 80016a0:	4e36      	ldr	r6, [pc, #216]	; (800177c <_ZN7CCamera4initEv+0x108>)
 80016a2:	2501      	movs	r5, #1
 80016a4:	f44f 7340 	mov.w	r3, #768	; 0x300
 80016a8:	f04f 0803 	mov.w	r8, #3
 80016ac:	4630      	mov	r0, r6
 80016ae:	a901      	add	r1, sp, #4
 80016b0:	9301      	str	r3, [sp, #4]
 80016b2:	f88d 5008 	strb.w	r5, [sp, #8]
 80016b6:	f88d 8009 	strb.w	r8, [sp, #9]
 80016ba:	f001 fcfb 	bl	80030b4 <GPIO_Init>
 80016be:	a901      	add	r1, sp, #4
 80016c0:	482f      	ldr	r0, [pc, #188]	; (8001780 <_ZN7CCamera4initEv+0x10c>)
 80016c2:	9501      	str	r5, [sp, #4]
 80016c4:	f88d 8008 	strb.w	r8, [sp, #8]
 80016c8:	f88d 8009 	strb.w	r8, [sp, #9]
 80016cc:	f001 fcf2 	bl	80030b4 <GPIO_Init>
 80016d0:	f44f 7380 	mov.w	r3, #256	; 0x100
 80016d4:	8533      	strh	r3, [r6, #40]	; 0x28
 80016d6:	f44f 7300 	mov.w	r3, #512	; 0x200
 80016da:	8533      	strh	r3, [r6, #40]	; 0x28
 80016dc:	f44f 7088 	mov.w	r0, #272	; 0x110
 80016e0:	f001 f910 	bl	8002904 <RCC_ADCCLKConfig>
 80016e4:	4629      	mov	r1, r5
 80016e6:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 80016ea:	f001 f91b 	bl	8002924 <RCC_AHBPeriphClockCmd>
 80016ee:	a906      	add	r1, sp, #24
 80016f0:	f04f 40a0 	mov.w	r0, #1342177280	; 0x50000000
 80016f4:	940c      	str	r4, [sp, #48]	; 0x30
 80016f6:	9406      	str	r4, [sp, #24]
 80016f8:	940a      	str	r4, [sp, #40]	; 0x28
 80016fa:	9408      	str	r4, [sp, #32]
 80016fc:	9409      	str	r4, [sp, #36]	; 0x24
 80016fe:	940b      	str	r4, [sp, #44]	; 0x2c
 8001700:	9407      	str	r4, [sp, #28]
 8001702:	f88d 5034 	strb.w	r5, [sp, #52]	; 0x34
 8001706:	f001 faf7 	bl	8002cf8 <ADC_Init>
 800170a:	462a      	mov	r2, r5
 800170c:	4623      	mov	r3, r4
 800170e:	f04f 40a0 	mov.w	r0, #1342177280	; 0x50000000
 8001712:	2106      	movs	r1, #6
 8001714:	f001 fb21 	bl	8002d5a <ADC_RegularChannelConfig>
 8001718:	4629      	mov	r1, r5
 800171a:	f04f 40a0 	mov.w	r0, #1342177280	; 0x50000000
 800171e:	f001 fb11 	bl	8002d44 <ADC_Cmd>
 8001722:	4629      	mov	r1, r5
 8001724:	2002      	movs	r0, #2
 8001726:	f001 f919 	bl	800295c <RCC_APB1PeriphClockCmd>
 800172a:	f8ad 400e 	strh.w	r4, [sp, #14]
 800172e:	f8ad 4014 	strh.w	r4, [sp, #20]
 8001732:	f8ad 4016 	strh.w	r4, [sp, #22]
 8001736:	4c13      	ldr	r4, [pc, #76]	; (8001784 <_ZN7CCamera4initEv+0x110>)
 8001738:	f44f 738c 	mov.w	r3, #280	; 0x118
 800173c:	f8ad 300c 	strh.w	r3, [sp, #12]
 8001740:	4620      	mov	r0, r4
 8001742:	2320      	movs	r3, #32
 8001744:	a903      	add	r1, sp, #12
 8001746:	9304      	str	r3, [sp, #16]
 8001748:	f001 f916 	bl	8002978 <TIM_TimeBaseInit>
 800174c:	4620      	mov	r0, r4
 800174e:	4629      	mov	r1, r5
 8001750:	f001 f962 	bl	8002a18 <TIM_Cmd>
 8001754:	68e3      	ldr	r3, [r4, #12]
 8001756:	432b      	orrs	r3, r5
 8001758:	60e3      	str	r3, [r4, #12]
 800175a:	4668      	mov	r0, sp
 800175c:	231d      	movs	r3, #29
 800175e:	f88d 3000 	strb.w	r3, [sp]
 8001762:	f88d 7001 	strb.w	r7, [sp, #1]
 8001766:	f88d 5002 	strb.w	r5, [sp, #2]
 800176a:	f88d 5003 	strb.w	r5, [sp, #3]
 800176e:	f001 fbd5 	bl	8002f1c <NVIC_Init>
 8001772:	b00e      	add	sp, #56	; 0x38
 8001774:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001778:	20000220 	.word	0x20000220
 800177c:	48000400 	.word	0x48000400
 8001780:	48000800 	.word	0x48000800
 8001784:	40000400 	.word	0x40000400

08001788 <_ZN7CCamera3getEv>:
 8001788:	4800      	ldr	r0, [pc, #0]	; (800178c <_ZN7CCamera3getEv+0x4>)
 800178a:	4770      	bx	lr
 800178c:	20000220 	.word	0x20000220

08001790 <_ZN7CCamera4readEv>:
 8001790:	4a33      	ldr	r2, [pc, #204]	; (8001860 <_ZN7CCamera4readEv+0xd0>)
 8001792:	6890      	ldr	r0, [r2, #8]
 8001794:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001796:	2800      	cmp	r0, #0
 8001798:	d060      	beq.n	800185c <_ZN7CCamera4readEv+0xcc>
 800179a:	f102 0312 	add.w	r3, r2, #18
 800179e:	f502 7189 	add.w	r1, r2, #274	; 0x112
 80017a2:	f833 0f02 	ldrh.w	r0, [r3, #2]!
 80017a6:	f8a3 0100 	strh.w	r0, [r3, #256]	; 0x100
 80017aa:	428b      	cmp	r3, r1
 80017ac:	d1f9      	bne.n	80017a2 <_ZN7CCamera4readEv+0x12>
 80017ae:	4b2d      	ldr	r3, [pc, #180]	; (8001864 <_ZN7CCamera4readEv+0xd4>)
 80017b0:	2100      	movs	r1, #0
 80017b2:	6091      	str	r1, [r2, #8]
 80017b4:	f503 7480 	add.w	r4, r3, #256	; 0x100
 80017b8:	4618      	mov	r0, r3
 80017ba:	f930 5f02 	ldrsh.w	r5, [r0, #2]!
 80017be:	42a0      	cmp	r0, r4
 80017c0:	4429      	add	r1, r5
 80017c2:	d1fa      	bne.n	80017ba <_ZN7CCamera4readEv+0x2a>
 80017c4:	2080      	movs	r0, #128	; 0x80
 80017c6:	fb91 f1f0 	sdiv	r1, r1, r0
 80017ca:	4826      	ldr	r0, [pc, #152]	; (8001864 <_ZN7CCamera4readEv+0xd4>)
 80017cc:	6111      	str	r1, [r2, #16]
 80017ce:	f830 5f02 	ldrh.w	r5, [r0, #2]!
 80017d2:	1a6d      	subs	r5, r5, r1
 80017d4:	42a0      	cmp	r0, r4
 80017d6:	8005      	strh	r5, [r0, #0]
 80017d8:	d1f9      	bne.n	80017ce <_ZN7CCamera4readEv+0x3e>
 80017da:	f933 0f02 	ldrsh.w	r0, [r3, #2]!
 80017de:	2800      	cmp	r0, #0
 80017e0:	bfb4      	ite	lt
 80017e2:	2001      	movlt	r0, #1
 80017e4:	2000      	movge	r0, #0
 80017e6:	42a3      	cmp	r3, r4
 80017e8:	8018      	strh	r0, [r3, #0]
 80017ea:	d1f6      	bne.n	80017da <_ZN7CCamera4readEv+0x4a>
 80017ec:	2300      	movs	r3, #0
 80017ee:	4e1e      	ldr	r6, [pc, #120]	; (8001868 <_ZN7CCamera4readEv+0xd8>)
 80017f0:	f44f 64a0 	mov.w	r4, #1280	; 0x500
 80017f4:	4618      	mov	r0, r3
 80017f6:	461d      	mov	r5, r3
 80017f8:	2701      	movs	r7, #1
 80017fa:	2b01      	cmp	r3, #1
 80017fc:	d008      	beq.n	8001810 <_ZN7CCamera4readEv+0x80>
 80017fe:	f9b6 3000 	ldrsh.w	r3, [r6]
 8001802:	b98b      	cbnz	r3, 8001828 <_ZN7CCamera4readEv+0x98>
 8001804:	f9b6 0002 	ldrsh.w	r0, [r6, #2]
 8001808:	2801      	cmp	r0, #1
 800180a:	d10e      	bne.n	800182a <_ZN7CCamera4readEv+0x9a>
 800180c:	4603      	mov	r3, r0
 800180e:	e00f      	b.n	8001830 <_ZN7CCamera4readEv+0xa0>
 8001810:	f9b6 e002 	ldrsh.w	lr, [r6, #2]
 8001814:	f1be 0f01 	cmp.w	lr, #1
 8001818:	d101      	bne.n	800181e <_ZN7CCamera4readEv+0x8e>
 800181a:	3001      	adds	r0, #1
 800181c:	e008      	b.n	8001830 <_ZN7CCamera4readEv+0xa0>
 800181e:	42a8      	cmp	r0, r5
 8001820:	dd05      	ble.n	800182e <_ZN7CCamera4readEv+0x9e>
 8001822:	463c      	mov	r4, r7
 8001824:	4605      	mov	r5, r0
 8001826:	e002      	b.n	800182e <_ZN7CCamera4readEv+0x9e>
 8001828:	2300      	movs	r3, #0
 800182a:	4618      	mov	r0, r3
 800182c:	e000      	b.n	8001830 <_ZN7CCamera4readEv+0xa0>
 800182e:	2300      	movs	r3, #0
 8001830:	3701      	adds	r7, #1
 8001832:	2f80      	cmp	r7, #128	; 0x80
 8001834:	f106 0602 	add.w	r6, r6, #2
 8001838:	d1df      	bne.n	80017fa <_ZN7CCamera4readEv+0x6a>
 800183a:	2d03      	cmp	r5, #3
 800183c:	dc03      	bgt.n	8001846 <_ZN7CCamera4readEv+0xb6>
 800183e:	2300      	movs	r3, #0
 8001840:	6053      	str	r3, [r2, #4]
 8001842:	2001      	movs	r0, #1
 8001844:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001846:	f5b1 7fc8 	cmp.w	r1, #400	; 0x190
 800184a:	ddf8      	ble.n	800183e <_ZN7CCamera4readEv+0xae>
 800184c:	2302      	movs	r3, #2
 800184e:	fb95 f5f3 	sdiv	r5, r5, r3
 8001852:	1b64      	subs	r4, r4, r5
 8001854:	2001      	movs	r0, #1
 8001856:	3c40      	subs	r4, #64	; 0x40
 8001858:	6050      	str	r0, [r2, #4]
 800185a:	60d4      	str	r4, [r2, #12]
 800185c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800185e:	bf00      	nop
 8001860:	20000220 	.word	0x20000220
 8001864:	20000332 	.word	0x20000332
 8001868:	20000334 	.word	0x20000334

0800186c <TIM3_IRQHandler>:
 800186c:	b510      	push	{r4, lr}
 800186e:	4824      	ldr	r0, [pc, #144]	; (8001900 <TIM3_IRQHandler+0x94>)
 8001870:	2101      	movs	r1, #1
 8001872:	f001 f97d 	bl	8002b70 <TIM_GetITStatus>
 8001876:	2800      	cmp	r0, #0
 8001878:	d040      	beq.n	80018fc <TIM3_IRQHandler+0x90>
 800187a:	2101      	movs	r1, #1
 800187c:	4820      	ldr	r0, [pc, #128]	; (8001900 <TIM3_IRQHandler+0x94>)
 800187e:	f001 f983 	bl	8002b88 <TIM_ClearITPendingBit>
 8001882:	4a20      	ldr	r2, [pc, #128]	; (8001904 <TIM3_IRQHandler+0x98>)
 8001884:	4920      	ldr	r1, [pc, #128]	; (8001908 <TIM3_IRQHandler+0x9c>)
 8001886:	6813      	ldr	r3, [r2, #0]
 8001888:	2b01      	cmp	r3, #1
 800188a:	d010      	beq.n	80018ae <TIM3_IRQHandler+0x42>
 800188c:	d306      	bcc.n	800189c <TIM3_IRQHandler+0x30>
 800188e:	2b02      	cmp	r3, #2
 8001890:	d112      	bne.n	80018b8 <TIM3_IRQHandler+0x4c>
 8001892:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001896:	850b      	strh	r3, [r1, #40]	; 0x28
 8001898:	2304      	movs	r3, #4
 800189a:	e023      	b.n	80018e4 <TIM3_IRQHandler+0x78>
 800189c:	f44f 7380 	mov.w	r3, #256	; 0x100
 80018a0:	850b      	strh	r3, [r1, #40]	; 0x28
 80018a2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80018a6:	618b      	str	r3, [r1, #24]
 80018a8:	2301      	movs	r3, #1
 80018aa:	6013      	str	r3, [r2, #0]
 80018ac:	e025      	b.n	80018fa <TIM3_IRQHandler+0x8e>
 80018ae:	f44f 7380 	mov.w	r3, #256	; 0x100
 80018b2:	618b      	str	r3, [r1, #24]
 80018b4:	2302      	movs	r3, #2
 80018b6:	e015      	b.n	80018e4 <TIM3_IRQHandler+0x78>
 80018b8:	f013 0f01 	tst.w	r3, #1
 80018bc:	f103 0001 	add.w	r0, r3, #1
 80018c0:	d012      	beq.n	80018e8 <TIM3_IRQHandler+0x7c>
 80018c2:	3b04      	subs	r3, #4
 80018c4:	f04f 44a0 	mov.w	r4, #1342177280	; 0x50000000
 80018c8:	f023 0301 	bic.w	r3, r3, #1
 80018cc:	4413      	add	r3, r2
 80018ce:	6c24      	ldr	r4, [r4, #64]	; 0x40
 80018d0:	829c      	strh	r4, [r3, #20]
 80018d2:	f5b0 7f82 	cmp.w	r0, #260	; 0x104
 80018d6:	f44f 7380 	mov.w	r3, #256	; 0x100
 80018da:	850b      	strh	r3, [r1, #40]	; 0x28
 80018dc:	d201      	bcs.n	80018e2 <TIM3_IRQHandler+0x76>
 80018de:	6010      	str	r0, [r2, #0]
 80018e0:	bd10      	pop	{r4, pc}
 80018e2:	2300      	movs	r3, #0
 80018e4:	6013      	str	r3, [r2, #0]
 80018e6:	bd10      	pop	{r4, pc}
 80018e8:	f44f 7380 	mov.w	r3, #256	; 0x100
 80018ec:	618b      	str	r3, [r1, #24]
 80018ee:	6010      	str	r0, [r2, #0]
 80018f0:	f04f 42a0 	mov.w	r2, #1342177280	; 0x50000000
 80018f4:	6893      	ldr	r3, [r2, #8]
 80018f6:	f043 0304 	orr.w	r3, r3, #4
 80018fa:	6093      	str	r3, [r2, #8]
 80018fc:	bd10      	pop	{r4, pc}
 80018fe:	bf00      	nop
 8001900:	40000400 	.word	0x40000400
 8001904:	20000220 	.word	0x20000220
 8001908:	48000400 	.word	0x48000400

0800190c <_ZN9CTerminal13terminal_initEv>:
 800190c:	b530      	push	{r4, r5, lr}
 800190e:	4a2f      	ldr	r2, [pc, #188]	; (80019cc <_ZN9CTerminal13terminal_initEv+0xc0>)
 8001910:	2300      	movs	r3, #0
 8001912:	6013      	str	r3, [r2, #0]
 8001914:	4a2e      	ldr	r2, [pc, #184]	; (80019d0 <_ZN9CTerminal13terminal_initEv+0xc4>)
 8001916:	b08b      	sub	sp, #44	; 0x2c
 8001918:	6013      	str	r3, [r2, #0]
 800191a:	4a2e      	ldr	r2, [pc, #184]	; (80019d4 <_ZN9CTerminal13terminal_initEv+0xc8>)
 800191c:	2400      	movs	r4, #0
 800191e:	54d4      	strb	r4, [r2, r3]
 8001920:	3301      	adds	r3, #1
 8001922:	2b10      	cmp	r3, #16
 8001924:	d1f9      	bne.n	800191a <_ZN9CTerminal13terminal_initEv+0xe>
 8001926:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800192a:	2101      	movs	r1, #1
 800192c:	f000 fffa 	bl	8002924 <RCC_AHBPeriphClockCmd>
 8001930:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001934:	2101      	movs	r1, #1
 8001936:	f001 f803 	bl	8002940 <RCC_APB2PeriphClockCmd>
 800193a:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800193e:	9302      	str	r3, [sp, #8]
 8001940:	2302      	movs	r3, #2
 8001942:	f88d 300c 	strb.w	r3, [sp, #12]
 8001946:	a902      	add	r1, sp, #8
 8001948:	2303      	movs	r3, #3
 800194a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800194e:	f88d 300d 	strb.w	r3, [sp, #13]
 8001952:	f88d 400e 	strb.w	r4, [sp, #14]
 8001956:	f88d 400f 	strb.w	r4, [sp, #15]
 800195a:	f001 fbab 	bl	80030b4 <GPIO_Init>
 800195e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001962:	2109      	movs	r1, #9
 8001964:	2207      	movs	r2, #7
 8001966:	f001 fbeb 	bl	8003140 <GPIO_PinAFConfig>
 800196a:	2207      	movs	r2, #7
 800196c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001970:	210a      	movs	r1, #10
 8001972:	f001 fbe5 	bl	8003140 <GPIO_PinAFConfig>
 8001976:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 800197a:	9304      	str	r3, [sp, #16]
 800197c:	a904      	add	r1, sp, #16
 800197e:	230c      	movs	r3, #12
 8001980:	4815      	ldr	r0, [pc, #84]	; (80019d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001982:	9308      	str	r3, [sp, #32]
 8001984:	9405      	str	r4, [sp, #20]
 8001986:	9406      	str	r4, [sp, #24]
 8001988:	9407      	str	r4, [sp, #28]
 800198a:	9409      	str	r4, [sp, #36]	; 0x24
 800198c:	f001 f902 	bl	8002b94 <USART_Init>
 8001990:	4811      	ldr	r0, [pc, #68]	; (80019d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001992:	2101      	movs	r1, #1
 8001994:	f001 f960 	bl	8002c58 <USART_Cmd>
 8001998:	2201      	movs	r2, #1
 800199a:	4910      	ldr	r1, [pc, #64]	; (80019dc <_ZN9CTerminal13terminal_initEv+0xd0>)
 800199c:	480e      	ldr	r0, [pc, #56]	; (80019d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800199e:	f001 f96b 	bl	8002c78 <USART_ITConfig>
 80019a2:	2501      	movs	r5, #1
 80019a4:	2325      	movs	r3, #37	; 0x25
 80019a6:	a801      	add	r0, sp, #4
 80019a8:	f88d 3004 	strb.w	r3, [sp, #4]
 80019ac:	f88d 4005 	strb.w	r4, [sp, #5]
 80019b0:	f88d 4006 	strb.w	r4, [sp, #6]
 80019b4:	f88d 5007 	strb.w	r5, [sp, #7]
 80019b8:	f001 fab0 	bl	8002f1c <NVIC_Init>
 80019bc:	4806      	ldr	r0, [pc, #24]	; (80019d8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80019be:	4629      	mov	r1, r5
 80019c0:	f001 f94a 	bl	8002c58 <USART_Cmd>
 80019c4:	4620      	mov	r0, r4
 80019c6:	b00b      	add	sp, #44	; 0x2c
 80019c8:	bd30      	pop	{r4, r5, pc}
 80019ca:	bf00      	nop
 80019cc:	20000434 	.word	0x20000434
 80019d0:	20000448 	.word	0x20000448
 80019d4:	20000438 	.word	0x20000438
 80019d8:	40013800 	.word	0x40013800
 80019dc:	00050105 	.word	0x00050105

080019e0 <USART1_IRQHandler>:
 80019e0:	b508      	push	{r3, lr}
 80019e2:	480d      	ldr	r0, [pc, #52]	; (8001a18 <USART1_IRQHandler+0x38>)
 80019e4:	490d      	ldr	r1, [pc, #52]	; (8001a1c <USART1_IRQHandler+0x3c>)
 80019e6:	f001 f961 	bl	8002cac <USART_GetITStatus>
 80019ea:	b178      	cbz	r0, 8001a0c <USART1_IRQHandler+0x2c>
 80019ec:	480a      	ldr	r0, [pc, #40]	; (8001a18 <USART1_IRQHandler+0x38>)
 80019ee:	f001 f93e 	bl	8002c6e <USART_ReceiveData>
 80019f2:	4b0b      	ldr	r3, [pc, #44]	; (8001a20 <USART1_IRQHandler+0x40>)
 80019f4:	490b      	ldr	r1, [pc, #44]	; (8001a24 <USART1_IRQHandler+0x44>)
 80019f6:	681a      	ldr	r2, [r3, #0]
 80019f8:	b2c0      	uxtb	r0, r0
 80019fa:	5488      	strb	r0, [r1, r2]
 80019fc:	681a      	ldr	r2, [r3, #0]
 80019fe:	3201      	adds	r2, #1
 8001a00:	601a      	str	r2, [r3, #0]
 8001a02:	681a      	ldr	r2, [r3, #0]
 8001a04:	2a0f      	cmp	r2, #15
 8001a06:	bf84      	itt	hi
 8001a08:	2200      	movhi	r2, #0
 8001a0a:	601a      	strhi	r2, [r3, #0]
 8001a0c:	4802      	ldr	r0, [pc, #8]	; (8001a18 <USART1_IRQHandler+0x38>)
 8001a0e:	4903      	ldr	r1, [pc, #12]	; (8001a1c <USART1_IRQHandler+0x3c>)
 8001a10:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001a14:	f001 b968 	b.w	8002ce8 <USART_ClearITPendingBit>
 8001a18:	40013800 	.word	0x40013800
 8001a1c:	00050105 	.word	0x00050105
 8001a20:	20000434 	.word	0x20000434
 8001a24:	20000438 	.word	0x20000438

08001a28 <_ZN9CTerminal7putcharEc>:
 8001a28:	4b04      	ldr	r3, [pc, #16]	; (8001a3c <_ZN9CTerminal7putcharEc+0x14>)
 8001a2a:	69da      	ldr	r2, [r3, #28]
 8001a2c:	0612      	lsls	r2, r2, #24
 8001a2e:	d401      	bmi.n	8001a34 <_ZN9CTerminal7putcharEc+0xc>
 8001a30:	bf00      	nop
 8001a32:	e7f9      	b.n	8001a28 <_ZN9CTerminal7putcharEc>
 8001a34:	b289      	uxth	r1, r1
 8001a36:	8519      	strh	r1, [r3, #40]	; 0x28
 8001a38:	4770      	bx	lr
 8001a3a:	bf00      	nop
 8001a3c:	40013800 	.word	0x40013800

08001a40 <_ZN9CTerminal4putsEPc>:
 8001a40:	b538      	push	{r3, r4, r5, lr}
 8001a42:	4605      	mov	r5, r0
 8001a44:	1e4c      	subs	r4, r1, #1
 8001a46:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001a4a:	b119      	cbz	r1, 8001a54 <_ZN9CTerminal4putsEPc+0x14>
 8001a4c:	4628      	mov	r0, r5
 8001a4e:	f7ff ffeb 	bl	8001a28 <_ZN9CTerminal7putcharEc>
 8001a52:	e7f8      	b.n	8001a46 <_ZN9CTerminal4putsEPc+0x6>
 8001a54:	2001      	movs	r0, #1
 8001a56:	bd38      	pop	{r3, r4, r5, pc}

08001a58 <_ZN9CTerminal4putiEl>:
 8001a58:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001a5a:	1e0b      	subs	r3, r1, #0
 8001a5c:	f04f 0200 	mov.w	r2, #0
 8001a60:	bfba      	itte	lt
 8001a62:	425b      	neglt	r3, r3
 8001a64:	2501      	movlt	r5, #1
 8001a66:	4615      	movge	r5, r2
 8001a68:	f88d 200f 	strb.w	r2, [sp, #15]
 8001a6c:	210a      	movs	r1, #10
 8001a6e:	220a      	movs	r2, #10
 8001a70:	ac01      	add	r4, sp, #4
 8001a72:	fb93 f6f2 	sdiv	r6, r3, r2
 8001a76:	fb02 3316 	mls	r3, r2, r6, r3
 8001a7a:	3330      	adds	r3, #48	; 0x30
 8001a7c:	550b      	strb	r3, [r1, r4]
 8001a7e:	1e4a      	subs	r2, r1, #1
 8001a80:	4633      	mov	r3, r6
 8001a82:	b10e      	cbz	r6, 8001a88 <_ZN9CTerminal4putiEl+0x30>
 8001a84:	4611      	mov	r1, r2
 8001a86:	e7f2      	b.n	8001a6e <_ZN9CTerminal4putiEl+0x16>
 8001a88:	b12d      	cbz	r5, 8001a96 <_ZN9CTerminal4putiEl+0x3e>
 8001a8a:	ab04      	add	r3, sp, #16
 8001a8c:	4413      	add	r3, r2
 8001a8e:	212d      	movs	r1, #45	; 0x2d
 8001a90:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001a94:	4611      	mov	r1, r2
 8001a96:	4421      	add	r1, r4
 8001a98:	f7ff ffd2 	bl	8001a40 <_ZN9CTerminal4putsEPc>
 8001a9c:	b004      	add	sp, #16
 8001a9e:	bd70      	pop	{r4, r5, r6, pc}

08001aa0 <_ZN9CTerminal5putuiEm>:
 8001aa0:	b530      	push	{r4, r5, lr}
 8001aa2:	b085      	sub	sp, #20
 8001aa4:	2300      	movs	r3, #0
 8001aa6:	f88d 300f 	strb.w	r3, [sp, #15]
 8001aaa:	220a      	movs	r2, #10
 8001aac:	230a      	movs	r3, #10
 8001aae:	ac01      	add	r4, sp, #4
 8001ab0:	fbb1 f5f3 	udiv	r5, r1, r3
 8001ab4:	fb03 1315 	mls	r3, r3, r5, r1
 8001ab8:	3330      	adds	r3, #48	; 0x30
 8001aba:	5513      	strb	r3, [r2, r4]
 8001abc:	4629      	mov	r1, r5
 8001abe:	1e53      	subs	r3, r2, #1
 8001ac0:	b10d      	cbz	r5, 8001ac6 <_ZN9CTerminal5putuiEm+0x26>
 8001ac2:	461a      	mov	r2, r3
 8001ac4:	e7f2      	b.n	8001aac <_ZN9CTerminal5putuiEm+0xc>
 8001ac6:	18a1      	adds	r1, r4, r2
 8001ac8:	f7ff ffba 	bl	8001a40 <_ZN9CTerminal4putsEPc>
 8001acc:	b005      	add	sp, #20
 8001ace:	bd30      	pop	{r4, r5, pc}

08001ad0 <_ZN9CTerminal4putxEm>:
 8001ad0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001ad2:	2300      	movs	r3, #0
 8001ad4:	f88d 300f 	strb.w	r3, [sp, #15]
 8001ad8:	220a      	movs	r2, #10
 8001ada:	f001 030f 	and.w	r3, r1, #15
 8001ade:	2b09      	cmp	r3, #9
 8001ae0:	ac01      	add	r4, sp, #4
 8001ae2:	bfd4      	ite	le
 8001ae4:	3330      	addle	r3, #48	; 0x30
 8001ae6:	3357      	addgt	r3, #87	; 0x57
 8001ae8:	0909      	lsrs	r1, r1, #4
 8001aea:	54a3      	strb	r3, [r4, r2]
 8001aec:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001af0:	d001      	beq.n	8001af6 <_ZN9CTerminal4putxEm+0x26>
 8001af2:	461a      	mov	r2, r3
 8001af4:	e7f1      	b.n	8001ada <_ZN9CTerminal4putxEm+0xa>
 8001af6:	18a1      	adds	r1, r4, r2
 8001af8:	f7ff ffa2 	bl	8001a40 <_ZN9CTerminal4putsEPc>
 8001afc:	b004      	add	sp, #16
 8001afe:	bd10      	pop	{r4, pc}

08001b00 <_ZN9CTerminal4putfEfj>:
 8001b00:	b538      	push	{r3, r4, r5, lr}
 8001b02:	2200      	movs	r2, #0
 8001b04:	4605      	mov	r5, r0
 8001b06:	2301      	movs	r3, #1
 8001b08:	428a      	cmp	r2, r1
 8001b0a:	d003      	beq.n	8001b14 <_ZN9CTerminal4putfEfj+0x14>
 8001b0c:	200a      	movs	r0, #10
 8001b0e:	4343      	muls	r3, r0
 8001b10:	3201      	adds	r2, #1
 8001b12:	e7f9      	b.n	8001b08 <_ZN9CTerminal4putfEfj+0x8>
 8001b14:	eebd 7ac0 	vcvt.s32.f32	s14, s0
 8001b18:	4628      	mov	r0, r5
 8001b1a:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8001b1e:	ee17 1a10 	vmov	r1, s14
 8001b22:	ee30 0a67 	vsub.f32	s0, s0, s15
 8001b26:	ee07 3a90 	vmov	s15, r3
 8001b2a:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8001b2e:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001b32:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001b36:	ee17 4a90 	vmov	r4, s15
 8001b3a:	f7ff ff8d 	bl	8001a58 <_ZN9CTerminal4putiEl>
 8001b3e:	4628      	mov	r0, r5
 8001b40:	212e      	movs	r1, #46	; 0x2e
 8001b42:	f7ff ff71 	bl	8001a28 <_ZN9CTerminal7putcharEc>
 8001b46:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 8001b4a:	4628      	mov	r0, r5
 8001b4c:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 8001b50:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001b54:	f7ff bf80 	b.w	8001a58 <_ZN9CTerminal4putiEl>

08001b58 <_ZN9CTerminal6printfEPKcz>:
 8001b58:	b40e      	push	{r1, r2, r3}
 8001b5a:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001b5c:	ab07      	add	r3, sp, #28
 8001b5e:	4604      	mov	r4, r0
 8001b60:	f853 6b04 	ldr.w	r6, [r3], #4
 8001b64:	9301      	str	r3, [sp, #4]
 8001b66:	2500      	movs	r5, #0
 8001b68:	5d71      	ldrb	r1, [r6, r5]
 8001b6a:	2900      	cmp	r1, #0
 8001b6c:	d054      	beq.n	8001c18 <_ZN9CTerminal6printfEPKcz+0xc0>
 8001b6e:	2925      	cmp	r1, #37	; 0x25
 8001b70:	d004      	beq.n	8001b7c <_ZN9CTerminal6printfEPKcz+0x24>
 8001b72:	4620      	mov	r0, r4
 8001b74:	f7ff ff58 	bl	8001a28 <_ZN9CTerminal7putcharEc>
 8001b78:	3501      	adds	r5, #1
 8001b7a:	e7f5      	b.n	8001b68 <_ZN9CTerminal6printfEPKcz+0x10>
 8001b7c:	1973      	adds	r3, r6, r5
 8001b7e:	7859      	ldrb	r1, [r3, #1]
 8001b80:	2969      	cmp	r1, #105	; 0x69
 8001b82:	d016      	beq.n	8001bb2 <_ZN9CTerminal6printfEPKcz+0x5a>
 8001b84:	d807      	bhi.n	8001b96 <_ZN9CTerminal6printfEPKcz+0x3e>
 8001b86:	2963      	cmp	r1, #99	; 0x63
 8001b88:	d02b      	beq.n	8001be2 <_ZN9CTerminal6printfEPKcz+0x8a>
 8001b8a:	2966      	cmp	r1, #102	; 0x66
 8001b8c:	d031      	beq.n	8001bf2 <_ZN9CTerminal6printfEPKcz+0x9a>
 8001b8e:	2925      	cmp	r1, #37	; 0x25
 8001b90:	d140      	bne.n	8001c14 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001b92:	4620      	mov	r0, r4
 8001b94:	e02a      	b.n	8001bec <_ZN9CTerminal6printfEPKcz+0x94>
 8001b96:	2975      	cmp	r1, #117	; 0x75
 8001b98:	d013      	beq.n	8001bc2 <_ZN9CTerminal6printfEPKcz+0x6a>
 8001b9a:	2978      	cmp	r1, #120	; 0x78
 8001b9c:	d019      	beq.n	8001bd2 <_ZN9CTerminal6printfEPKcz+0x7a>
 8001b9e:	2973      	cmp	r1, #115	; 0x73
 8001ba0:	d138      	bne.n	8001c14 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001ba2:	9b01      	ldr	r3, [sp, #4]
 8001ba4:	4620      	mov	r0, r4
 8001ba6:	1d1a      	adds	r2, r3, #4
 8001ba8:	6819      	ldr	r1, [r3, #0]
 8001baa:	9201      	str	r2, [sp, #4]
 8001bac:	f7ff ff48 	bl	8001a40 <_ZN9CTerminal4putsEPc>
 8001bb0:	e030      	b.n	8001c14 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001bb2:	9b01      	ldr	r3, [sp, #4]
 8001bb4:	4620      	mov	r0, r4
 8001bb6:	1d1a      	adds	r2, r3, #4
 8001bb8:	6819      	ldr	r1, [r3, #0]
 8001bba:	9201      	str	r2, [sp, #4]
 8001bbc:	f7ff ff4c 	bl	8001a58 <_ZN9CTerminal4putiEl>
 8001bc0:	e028      	b.n	8001c14 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001bc2:	9b01      	ldr	r3, [sp, #4]
 8001bc4:	4620      	mov	r0, r4
 8001bc6:	1d1a      	adds	r2, r3, #4
 8001bc8:	6819      	ldr	r1, [r3, #0]
 8001bca:	9201      	str	r2, [sp, #4]
 8001bcc:	f7ff ff68 	bl	8001aa0 <_ZN9CTerminal5putuiEm>
 8001bd0:	e020      	b.n	8001c14 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001bd2:	9b01      	ldr	r3, [sp, #4]
 8001bd4:	4620      	mov	r0, r4
 8001bd6:	1d1a      	adds	r2, r3, #4
 8001bd8:	6819      	ldr	r1, [r3, #0]
 8001bda:	9201      	str	r2, [sp, #4]
 8001bdc:	f7ff ff78 	bl	8001ad0 <_ZN9CTerminal4putxEm>
 8001be0:	e018      	b.n	8001c14 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001be2:	9b01      	ldr	r3, [sp, #4]
 8001be4:	1d1a      	adds	r2, r3, #4
 8001be6:	7819      	ldrb	r1, [r3, #0]
 8001be8:	9201      	str	r2, [sp, #4]
 8001bea:	4620      	mov	r0, r4
 8001bec:	f7ff ff1c 	bl	8001a28 <_ZN9CTerminal7putcharEc>
 8001bf0:	e010      	b.n	8001c14 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001bf2:	9b01      	ldr	r3, [sp, #4]
 8001bf4:	3307      	adds	r3, #7
 8001bf6:	f023 0307 	bic.w	r3, r3, #7
 8001bfa:	f103 0208 	add.w	r2, r3, #8
 8001bfe:	e9d3 0100 	ldrd	r0, r1, [r3]
 8001c02:	9201      	str	r2, [sp, #4]
 8001c04:	f001 fb52 	bl	80032ac <__aeabi_d2f>
 8001c08:	2103      	movs	r1, #3
 8001c0a:	ee00 0a10 	vmov	s0, r0
 8001c0e:	4620      	mov	r0, r4
 8001c10:	f7ff ff76 	bl	8001b00 <_ZN9CTerminal4putfEfj>
 8001c14:	3502      	adds	r5, #2
 8001c16:	e7a7      	b.n	8001b68 <_ZN9CTerminal6printfEPKcz+0x10>
 8001c18:	b003      	add	sp, #12
 8001c1a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001c1e:	b003      	add	sp, #12
 8001c20:	4770      	bx	lr
	...

08001c24 <TIM4_IRQHandler>:
 8001c24:	b538      	push	{r3, r4, r5, lr}
 8001c26:	4837      	ldr	r0, [pc, #220]	; (8001d04 <TIM4_IRQHandler+0xe0>)
 8001c28:	2101      	movs	r1, #1
 8001c2a:	f000 ffa1 	bl	8002b70 <TIM_GetITStatus>
 8001c2e:	2800      	cmp	r0, #0
 8001c30:	d067      	beq.n	8001d02 <TIM4_IRQHandler+0xde>
 8001c32:	2101      	movs	r1, #1
 8001c34:	4833      	ldr	r0, [pc, #204]	; (8001d04 <TIM4_IRQHandler+0xe0>)
 8001c36:	f000 ffa7 	bl	8002b88 <TIM_ClearITPendingBit>
 8001c3a:	4b33      	ldr	r3, [pc, #204]	; (8001d08 <TIM4_IRQHandler+0xe4>)
 8001c3c:	681a      	ldr	r2, [r3, #0]
 8001c3e:	3201      	adds	r2, #1
 8001c40:	601a      	str	r2, [r3, #0]
 8001c42:	4a32      	ldr	r2, [pc, #200]	; (8001d0c <TIM4_IRQHandler+0xe8>)
 8001c44:	6811      	ldr	r1, [r2, #0]
 8001c46:	461a      	mov	r2, r3
 8001c48:	2905      	cmp	r1, #5
 8001c4a:	d85a      	bhi.n	8001d02 <TIM4_IRQHandler+0xde>
 8001c4c:	e8df f001 	tbb	[pc, r1]
 8001c50:	1c03161a 	.word	0x1c03161a
 8001c54:	3e20      	.short	0x3e20
 8001c56:	4b2e      	ldr	r3, [pc, #184]	; (8001d10 <TIM4_IRQHandler+0xec>)
 8001c58:	6819      	ldr	r1, [r3, #0]
 8001c5a:	2314      	movs	r3, #20
 8001c5c:	434b      	muls	r3, r1
 8001c5e:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8001c62:	fbb3 f3f1 	udiv	r3, r3, r1
 8001c66:	6811      	ldr	r1, [r2, #0]
 8001c68:	2b01      	cmp	r3, #1
 8001c6a:	bf98      	it	ls
 8001c6c:	2302      	movls	r3, #2
 8001c6e:	fbb1 f2f3 	udiv	r2, r1, r3
 8001c72:	fb03 1212 	mls	r2, r3, r2, r1
 8001c76:	ebb2 0f53 	cmp.w	r2, r3, lsr #1
 8001c7a:	d101      	bne.n	8001c80 <TIM4_IRQHandler+0x5c>
 8001c7c:	4825      	ldr	r0, [pc, #148]	; (8001d14 <TIM4_IRQHandler+0xf0>)
 8001c7e:	e01c      	b.n	8001cba <TIM4_IRQHandler+0x96>
 8001c80:	2a00      	cmp	r2, #0
 8001c82:	d13e      	bne.n	8001d02 <TIM4_IRQHandler+0xde>
 8001c84:	4823      	ldr	r0, [pc, #140]	; (8001d14 <TIM4_IRQHandler+0xf0>)
 8001c86:	e01a      	b.n	8001cbe <TIM4_IRQHandler+0x9a>
 8001c88:	4b21      	ldr	r3, [pc, #132]	; (8001d10 <TIM4_IRQHandler+0xec>)
 8001c8a:	4822      	ldr	r0, [pc, #136]	; (8001d14 <TIM4_IRQHandler+0xf0>)
 8001c8c:	6819      	ldr	r1, [r3, #0]
 8001c8e:	e017      	b.n	8001cc0 <TIM4_IRQHandler+0x9c>
 8001c90:	6813      	ldr	r3, [r2, #0]
 8001c92:	f003 0307 	and.w	r3, r3, #7
 8001c96:	2b04      	cmp	r3, #4
 8001c98:	d116      	bne.n	8001cc8 <TIM4_IRQHandler+0xa4>
 8001c9a:	481f      	ldr	r0, [pc, #124]	; (8001d18 <TIM4_IRQHandler+0xf4>)
 8001c9c:	4a1c      	ldr	r2, [pc, #112]	; (8001d10 <TIM4_IRQHandler+0xec>)
 8001c9e:	7803      	ldrb	r3, [r0, #0]
 8001ca0:	6812      	ldr	r2, [r2, #0]
 8001ca2:	1c59      	adds	r1, r3, #1
 8001ca4:	1d53      	adds	r3, r2, #5
 8001ca6:	fbb1 f2f3 	udiv	r2, r1, r3
 8001caa:	fb03 1312 	mls	r3, r3, r2, r1
 8001cae:	b2db      	uxtb	r3, r3
 8001cb0:	7003      	strb	r3, [r0, #0]
 8001cb2:	7803      	ldrb	r3, [r0, #0]
 8001cb4:	4817      	ldr	r0, [pc, #92]	; (8001d14 <TIM4_IRQHandler+0xf0>)
 8001cb6:	2b04      	cmp	r3, #4
 8001cb8:	d901      	bls.n	8001cbe <TIM4_IRQHandler+0x9a>
 8001cba:	2140      	movs	r1, #64	; 0x40
 8001cbc:	e000      	b.n	8001cc0 <TIM4_IRQHandler+0x9c>
 8001cbe:	2100      	movs	r1, #0
 8001cc0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001cc4:	f000 bf3a 	b.w	8002b3c <TIM_SetCompare2>
 8001cc8:	b9db      	cbnz	r3, 8001d02 <TIM4_IRQHandler+0xde>
 8001cca:	e7db      	b.n	8001c84 <TIM4_IRQHandler+0x60>
 8001ccc:	4b10      	ldr	r3, [pc, #64]	; (8001d10 <TIM4_IRQHandler+0xec>)
 8001cce:	4d12      	ldr	r5, [pc, #72]	; (8001d18 <TIM4_IRQHandler+0xf4>)
 8001cd0:	681b      	ldr	r3, [r3, #0]
 8001cd2:	4810      	ldr	r0, [pc, #64]	; (8001d14 <TIM4_IRQHandler+0xf0>)
 8001cd4:	2414      	movs	r4, #20
 8001cd6:	fb03 4404 	mla	r4, r3, r4, r4
 8001cda:	f44f 33fa 	mov.w	r3, #128000	; 0x1f400
 8001cde:	fbb3 f4f4 	udiv	r4, r3, r4
 8001ce2:	782b      	ldrb	r3, [r5, #0]
 8001ce4:	7829      	ldrb	r1, [r5, #0]
 8001ce6:	2c00      	cmp	r4, #0
 8001ce8:	bf08      	it	eq
 8001cea:	2401      	moveq	r4, #1
 8001cec:	2b3f      	cmp	r3, #63	; 0x3f
 8001cee:	bf88      	it	hi
 8001cf0:	f1c1 0180 	rsbhi	r1, r1, #128	; 0x80
 8001cf4:	f000 ff22 	bl	8002b3c <TIM_SetCompare2>
 8001cf8:	782b      	ldrb	r3, [r5, #0]
 8001cfa:	441c      	add	r4, r3
 8001cfc:	f004 047f 	and.w	r4, r4, #127	; 0x7f
 8001d00:	702c      	strb	r4, [r5, #0]
 8001d02:	bd38      	pop	{r3, r4, r5, pc}
 8001d04:	40000800 	.word	0x40000800
 8001d08:	20000454 	.word	0x20000454
 8001d0c:	20000458 	.word	0x20000458
 8001d10:	2000044c 	.word	0x2000044c
 8001d14:	40014000 	.word	0x40014000
 8001d18:	20000450 	.word	0x20000450

08001d1c <_ZN5CILED4initEv>:
 8001d1c:	4b4c      	ldr	r3, [pc, #304]	; (8001e50 <_ZN5CILED4initEv+0x134>)
 8001d1e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001d22:	2400      	movs	r4, #0
 8001d24:	601c      	str	r4, [r3, #0]
 8001d26:	4b4b      	ldr	r3, [pc, #300]	; (8001e54 <_ZN5CILED4initEv+0x138>)
 8001d28:	4e4b      	ldr	r6, [pc, #300]	; (8001e58 <_ZN5CILED4initEv+0x13c>)
 8001d2a:	601c      	str	r4, [r3, #0]
 8001d2c:	4b4b      	ldr	r3, [pc, #300]	; (8001e5c <_ZN5CILED4initEv+0x140>)
 8001d2e:	f8df 8138 	ldr.w	r8, [pc, #312]	; 8001e68 <_ZN5CILED4initEv+0x14c>
 8001d32:	601c      	str	r4, [r3, #0]
 8001d34:	4b4a      	ldr	r3, [pc, #296]	; (8001e60 <_ZN5CILED4initEv+0x144>)
 8001d36:	b08d      	sub	sp, #52	; 0x34
 8001d38:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001d3c:	2101      	movs	r1, #1
 8001d3e:	2501      	movs	r5, #1
 8001d40:	701c      	strb	r4, [r3, #0]
 8001d42:	f44f 4700 	mov.w	r7, #32768	; 0x8000
 8001d46:	f000 fded 	bl	8002924 <RCC_AHBPeriphClockCmd>
 8001d4a:	f04f 0903 	mov.w	r9, #3
 8001d4e:	4630      	mov	r0, r6
 8001d50:	a902      	add	r1, sp, #8
 8001d52:	9702      	str	r7, [sp, #8]
 8001d54:	f88d 500c 	strb.w	r5, [sp, #12]
 8001d58:	f88d 400e 	strb.w	r4, [sp, #14]
 8001d5c:	f88d 900d 	strb.w	r9, [sp, #13]
 8001d60:	f88d 400f 	strb.w	r4, [sp, #15]
 8001d64:	f001 f9a6 	bl	80030b4 <GPIO_Init>
 8001d68:	4629      	mov	r1, r5
 8001d6a:	8537      	strh	r7, [r6, #40]	; 0x28
 8001d6c:	2004      	movs	r0, #4
 8001d6e:	f000 fdf5 	bl	800295c <RCC_APB1PeriphClockCmd>
 8001d72:	231e      	movs	r3, #30
 8001d74:	a801      	add	r0, sp, #4
 8001d76:	f88d 3004 	strb.w	r3, [sp, #4]
 8001d7a:	f88d 4005 	strb.w	r4, [sp, #5]
 8001d7e:	f88d 5006 	strb.w	r5, [sp, #6]
 8001d82:	f88d 5007 	strb.w	r5, [sp, #7]
 8001d86:	f001 f8c9 	bl	8002f1c <NVIC_Init>
 8001d8a:	4629      	mov	r1, r5
 8001d8c:	2004      	movs	r0, #4
 8001d8e:	f000 fde5 	bl	800295c <RCC_APB1PeriphClockCmd>
 8001d92:	f241 3388 	movw	r3, #5000	; 0x1388
 8001d96:	9305      	str	r3, [sp, #20]
 8001d98:	4640      	mov	r0, r8
 8001d9a:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8001d9e:	a904      	add	r1, sp, #16
 8001da0:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001da4:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001da8:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001dac:	f000 fde4 	bl	8002978 <TIM_TimeBaseInit>
 8001db0:	462a      	mov	r2, r5
 8001db2:	4640      	mov	r0, r8
 8001db4:	4629      	mov	r1, r5
 8001db6:	f000 fecf 	bl	8002b58 <TIM_ITConfig>
 8001dba:	4640      	mov	r0, r8
 8001dbc:	4629      	mov	r1, r5
 8001dbe:	f000 fe2b 	bl	8002a18 <TIM_Cmd>
 8001dc2:	9702      	str	r7, [sp, #8]
 8001dc4:	4630      	mov	r0, r6
 8001dc6:	2702      	movs	r7, #2
 8001dc8:	a902      	add	r1, sp, #8
 8001dca:	f88d 700c 	strb.w	r7, [sp, #12]
 8001dce:	f88d 900d 	strb.w	r9, [sp, #13]
 8001dd2:	f001 f96f 	bl	80030b4 <GPIO_Init>
 8001dd6:	462a      	mov	r2, r5
 8001dd8:	4630      	mov	r0, r6
 8001dda:	210f      	movs	r1, #15
 8001ddc:	f001 f9b0 	bl	8003140 <GPIO_PinAFConfig>
 8001de0:	4e20      	ldr	r6, [pc, #128]	; (8001e64 <_ZN5CILED4initEv+0x148>)
 8001de2:	4629      	mov	r1, r5
 8001de4:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8001de8:	f000 fdaa 	bl	8002940 <RCC_APB2PeriphClockCmd>
 8001dec:	f44f 53e1 	mov.w	r3, #7200	; 0x1c20
 8001df0:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001df4:	4630      	mov	r0, r6
 8001df6:	2341      	movs	r3, #65	; 0x41
 8001df8:	a904      	add	r1, sp, #16
 8001dfa:	9305      	str	r3, [sp, #20]
 8001dfc:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001e00:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001e04:	f8ad 401a 	strh.w	r4, [sp, #26]
 8001e08:	f000 fdb6 	bl	8002978 <TIM_TimeBaseInit>
 8001e0c:	4630      	mov	r0, r6
 8001e0e:	4629      	mov	r1, r5
 8001e10:	f000 fe02 	bl	8002a18 <TIM_Cmd>
 8001e14:	4630      	mov	r0, r6
 8001e16:	4629      	mov	r1, r5
 8001e18:	f000 fe93 	bl	8002b42 <TIM_CtrlPWMOutputs>
 8001e1c:	2370      	movs	r3, #112	; 0x70
 8001e1e:	9307      	str	r3, [sp, #28]
 8001e20:	2304      	movs	r3, #4
 8001e22:	f8ad 3022 	strh.w	r3, [sp, #34]	; 0x22
 8001e26:	4630      	mov	r0, r6
 8001e28:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001e2c:	a907      	add	r1, sp, #28
 8001e2e:	f8ad 5020 	strh.w	r5, [sp, #32]
 8001e32:	9409      	str	r4, [sp, #36]	; 0x24
 8001e34:	f8ad 7028 	strh.w	r7, [sp, #40]	; 0x28
 8001e38:	f8ad 402a 	strh.w	r4, [sp, #42]	; 0x2a
 8001e3c:	f8ad 302c 	strh.w	r3, [sp, #44]	; 0x2c
 8001e40:	f8ad 402e 	strh.w	r4, [sp, #46]	; 0x2e
 8001e44:	f000 fe3c 	bl	8002ac0 <TIM_OC2Init>
 8001e48:	b00d      	add	sp, #52	; 0x34
 8001e4a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001e4e:	bf00      	nop
 8001e50:	20000458 	.word	0x20000458
 8001e54:	2000044c 	.word	0x2000044c
 8001e58:	48000400 	.word	0x48000400
 8001e5c:	20000454 	.word	0x20000454
 8001e60:	20000450 	.word	0x20000450
 8001e64:	40014000 	.word	0x40014000
 8001e68:	40000800 	.word	0x40000800

08001e6c <_ZN5CILED3setEhj>:
 8001e6c:	4b04      	ldr	r3, [pc, #16]	; (8001e80 <_ZN5CILED3setEhj+0x14>)
 8001e6e:	6019      	str	r1, [r3, #0]
 8001e70:	4b04      	ldr	r3, [pc, #16]	; (8001e84 <_ZN5CILED3setEhj+0x18>)
 8001e72:	601a      	str	r2, [r3, #0]
 8001e74:	4a04      	ldr	r2, [pc, #16]	; (8001e88 <_ZN5CILED3setEhj+0x1c>)
 8001e76:	2300      	movs	r3, #0
 8001e78:	6013      	str	r3, [r2, #0]
 8001e7a:	4a04      	ldr	r2, [pc, #16]	; (8001e8c <_ZN5CILED3setEhj+0x20>)
 8001e7c:	7013      	strb	r3, [r2, #0]
 8001e7e:	4770      	bx	lr
 8001e80:	20000458 	.word	0x20000458
 8001e84:	2000044c 	.word	0x2000044c
 8001e88:	20000454 	.word	0x20000454
 8001e8c:	20000450 	.word	0x20000450

08001e90 <_ZN10MathVectorILj9EE4initEv>:
 8001e90:	f100 0324 	add.w	r3, r0, #36	; 0x24
 8001e94:	2200      	movs	r2, #0
 8001e96:	f840 2b04 	str.w	r2, [r0], #4
 8001e9a:	4298      	cmp	r0, r3
 8001e9c:	d1fa      	bne.n	8001e94 <_ZN10MathVectorILj9EE4initEv+0x4>
 8001e9e:	4770      	bx	lr

08001ea0 <_ZN10MathVectorILj3EE3mixERS0_f>:
 8001ea0:	f100 030c 	add.w	r3, r0, #12
 8001ea4:	ecf1 7a01 	vldmia	r1!, {s15}
 8001ea8:	edd0 6a00 	vldr	s13, [r0]
 8001eac:	eeb7 7a00 	vmov.f32	s14, #112	; 0x3f800000  1.0
 8001eb0:	ee37 7a40 	vsub.f32	s14, s14, s0
 8001eb4:	ee60 7a27 	vmul.f32	s15, s0, s15
 8001eb8:	eee7 7a26 	vfma.f32	s15, s14, s13
 8001ebc:	ece0 7a01 	vstmia	r0!, {s15}
 8001ec0:	4298      	cmp	r0, r3
 8001ec2:	d1ef      	bne.n	8001ea4 <_ZN10MathVectorILj3EE3mixERS0_f+0x4>
 8001ec4:	4770      	bx	lr
	...

08001ec8 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>:
 8001ec8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001eca:	eddf 6a18 	vldr	s13, [pc, #96]	; 8001f2c <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x64>
 8001ece:	f8d0 e600 	ldr.w	lr, [r0, #1536]	; 0x600
 8001ed2:	2600      	movs	r6, #0
 8001ed4:	4603      	mov	r3, r0
 8001ed6:	4634      	mov	r4, r6
 8001ed8:	4574      	cmp	r4, lr
 8001eda:	d01b      	beq.n	8001f14 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x4c>
 8001edc:	2524      	movs	r5, #36	; 0x24
 8001ede:	eddf 7a14 	vldr	s15, [pc, #80]	; 8001f30 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x68>
 8001ee2:	460f      	mov	r7, r1
 8001ee4:	fb05 3504 	mla	r5, r5, r4, r3
 8001ee8:	f101 0024 	add.w	r0, r1, #36	; 0x24
 8001eec:	ecb7 7a01 	vldmia	r7!, {s14}
 8001ef0:	ecb5 6a01 	vldmia	r5!, {s12}
 8001ef4:	ee37 7a46 	vsub.f32	s14, s14, s12
 8001ef8:	4287      	cmp	r7, r0
 8001efa:	eee7 7a07 	vfma.f32	s15, s14, s14
 8001efe:	d1f5      	bne.n	8001eec <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x24>
 8001f00:	eef4 7ae6 	vcmpe.f32	s15, s13
 8001f04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f08:	bf44      	itt	mi
 8001f0a:	4626      	movmi	r6, r4
 8001f0c:	eef0 6a67 	vmovmi.f32	s13, s15
 8001f10:	3401      	adds	r4, #1
 8001f12:	e7e1      	b.n	8001ed8 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x10>
 8001f14:	f503 6390 	add.w	r3, r3, #1152	; 0x480
 8001f18:	210c      	movs	r1, #12
 8001f1a:	4610      	mov	r0, r2
 8001f1c:	fb01 3106 	mla	r1, r1, r6, r3
 8001f20:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8001f24:	f7ff ffbc 	bl	8001ea0 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001f28:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001f2a:	bf00      	nop
 8001f2c:	4cbebc20 	.word	0x4cbebc20
 8001f30:	00000000 	.word	0x00000000

08001f34 <_ZN21CLearningLineFollower3runEv>:
 8001f34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8001f38:	ed2d 8b06 	vpush	{d8-d10}
 8001f3c:	2310      	movs	r3, #16
 8001f3e:	f200 68a4 	addw	r8, r0, #1700	; 0x6a4
 8001f42:	f8c0 36a0 	str.w	r3, [r0, #1696]	; 0x6a0
 8001f46:	f100 06a0 	add.w	r6, r0, #160	; 0xa0
 8001f4a:	4bd8      	ldr	r3, [pc, #864]	; (80022ac <_ZN21CLearningLineFollower3runEv+0x378>)
 8001f4c:	f8c8 3000 	str.w	r3, [r8]
 8001f50:	f500 65a4 	add.w	r5, r0, #1312	; 0x520
 8001f54:	b083      	sub	sp, #12
 8001f56:	4604      	mov	r4, r0
 8001f58:	4637      	mov	r7, r6
 8001f5a:	46aa      	mov	sl, r5
 8001f5c:	f107 0924 	add.w	r9, r7, #36	; 0x24
 8001f60:	48d3      	ldr	r0, [pc, #844]	; (80022b0 <_ZN21CLearningLineFollower3runEv+0x37c>)
 8001f62:	f7fe faa3 	bl	80004ac <_ZN5CMath3rndEv>
 8001f66:	eca7 0a01 	vstmia	r7!, {s0}
 8001f6a:	454f      	cmp	r7, r9
 8001f6c:	d1f8      	bne.n	8001f60 <_ZN21CLearningLineFollower3runEv+0x2c>
 8001f6e:	42af      	cmp	r7, r5
 8001f70:	d1f4      	bne.n	8001f5c <_ZN21CLearningLineFollower3runEv+0x28>
 8001f72:	f504 63d4 	add.w	r3, r4, #1696	; 0x6a0
 8001f76:	eddf 8acf 	vldr	s17, [pc, #828]	; 80022b4 <_ZN21CLearningLineFollower3runEv+0x380>
 8001f7a:	350c      	adds	r5, #12
 8001f7c:	ed45 8a03 	vstr	s17, [r5, #-12]
 8001f80:	ed45 8a02 	vstr	s17, [r5, #-8]
 8001f84:	ed45 8a01 	vstr	s17, [r5, #-4]
 8001f88:	429d      	cmp	r5, r3
 8001f8a:	d1f4      	bne.n	8001f76 <_ZN21CLearningLineFollower3runEv+0x42>
 8001f8c:	2300      	movs	r3, #0
 8001f8e:	f104 0758 	add.w	r7, r4, #88	; 0x58
 8001f92:	6523      	str	r3, [r4, #80]	; 0x50
 8001f94:	6563      	str	r3, [r4, #84]	; 0x54
 8001f96:	4638      	mov	r0, r7
 8001f98:	f104 097c 	add.w	r9, r4, #124	; 0x7c
 8001f9c:	f7ff ff78 	bl	8001e90 <_ZN10MathVectorILj9EE4initEv>
 8001fa0:	4648      	mov	r0, r9
 8001fa2:	f7ff ff75 	bl	8001e90 <_ZN10MathVectorILj9EE4initEv>
 8001fa6:	f504 63d5 	add.w	r3, r4, #1704	; 0x6a8
 8001faa:	edc3 8a00 	vstr	s17, [r3]
 8001fae:	edc3 8a01 	vstr	s17, [r3, #4]
 8001fb2:	edc3 8a02 	vstr	s17, [r3, #8]
 8001fb6:	eebf aa00 	vmov.f32	s20, #240	; 0xbf800000 -1.0
 8001fba:	2100      	movs	r1, #0
 8001fbc:	48be      	ldr	r0, [pc, #760]	; (80022b8 <_ZN21CLearningLineFollower3runEv+0x384>)
 8001fbe:	f7fe fb59 	bl	8000674 <_ZN4CRGB8rgb_readEh>
 8001fc2:	48bd      	ldr	r0, [pc, #756]	; (80022b8 <_ZN21CLearningLineFollower3runEv+0x384>)
 8001fc4:	f7fe fd0e 	bl	80009e4 <_ZN4CRGB14get_rgb_resultEv>
 8001fc8:	f104 052c 	add.w	r5, r4, #44	; 0x2c
 8001fcc:	4601      	mov	r1, r0
 8001fce:	4620      	mov	r0, r4
 8001fd0:	f7fe f952 	bl	8000278 <_ZN13CLinePosition7processEP10sRGBResult>
 8001fd4:	4629      	mov	r1, r5
 8001fd6:	4620      	mov	r0, r4
 8001fd8:	f7fe f9ed 	bl	80003b6 <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE>
 8001fdc:	f104 0e58 	add.w	lr, r4, #88	; 0x58
 8001fe0:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
 8001fe4:	f104 0c7c 	add.w	ip, r4, #124	; 0x7c
 8001fe8:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
 8001fec:	e8be 000f 	ldmia.w	lr!, {r0, r1, r2, r3}
 8001ff0:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
 8001ff4:	f8de 3000 	ldr.w	r3, [lr]
 8001ff8:	f8cc 3000 	str.w	r3, [ip]
 8001ffc:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8001ffe:	f104 0c58 	add.w	ip, r4, #88	; 0x58
 8002002:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
 8002006:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8002008:	e8ac 000f 	stmia.w	ip!, {r0, r1, r2, r3}
 800200c:	682b      	ldr	r3, [r5, #0]
 800200e:	f8ce 3000 	str.w	r3, [lr]
 8002012:	f504 65d5 	add.w	r5, r4, #1704	; 0x6a8
 8002016:	462a      	mov	r2, r5
 8002018:	4630      	mov	r0, r6
 800201a:	4639      	mov	r1, r7
 800201c:	f7ff ff54 	bl	8001ec8 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8002020:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8002022:	6523      	str	r3, [r4, #80]	; 0x50
 8002024:	48a2      	ldr	r0, [pc, #648]	; (80022b0 <_ZN21CLearningLineFollower3runEv+0x37c>)
 8002026:	f7fe fa27 	bl	8000478 <_ZN5CMath4randEv>
 800202a:	2364      	movs	r3, #100	; 0x64
 800202c:	fbb0 f2f3 	udiv	r2, r0, r3
 8002030:	fb02 0013 	mls	r0, r2, r3, r0
 8002034:	2813      	cmp	r0, #19
 8002036:	d80a      	bhi.n	800204e <_ZN21CLearningLineFollower3runEv+0x11a>
 8002038:	489d      	ldr	r0, [pc, #628]	; (80022b0 <_ZN21CLearningLineFollower3runEv+0x37c>)
 800203a:	f7fe fa1d 	bl	8000478 <_ZN5CMath4randEv>
 800203e:	2303      	movs	r3, #3
 8002040:	fbb0 f3f3 	udiv	r3, r0, r3
 8002044:	eb03 0343 	add.w	r3, r3, r3, lsl #1
 8002048:	ebc3 0b00 	rsb	fp, r3, r0
 800204c:	e014      	b.n	8002078 <_ZN21CLearningLineFollower3runEv+0x144>
 800204e:	f04f 0b00 	mov.w	fp, #0
 8002052:	4629      	mov	r1, r5
 8002054:	465b      	mov	r3, fp
 8002056:	f504 62d5 	add.w	r2, r4, #1704	; 0x6a8
 800205a:	eb02 028b 	add.w	r2, r2, fp, lsl #2
 800205e:	ecb1 7a01 	vldmia	r1!, {s14}
 8002062:	edd2 7a00 	vldr	s15, [r2]
 8002066:	eeb4 7a67 	vcmp.f32	s14, s15
 800206a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800206e:	bfc8      	it	gt
 8002070:	469b      	movgt	fp, r3
 8002072:	3301      	adds	r3, #1
 8002074:	2b03      	cmp	r3, #3
 8002076:	d1ee      	bne.n	8002056 <_ZN21CLearningLineFollower3runEv+0x122>
 8002078:	f1bb 0f01 	cmp.w	fp, #1
 800207c:	f8c4 b054 	str.w	fp, [r4, #84]	; 0x54
 8002080:	d015      	beq.n	80020ae <_ZN21CLearningLineFollower3runEv+0x17a>
 8002082:	d30c      	bcc.n	800209e <_ZN21CLearningLineFollower3runEv+0x16a>
 8002084:	f1bb 0f02 	cmp.w	fp, #2
 8002088:	d11c      	bne.n	80020c4 <_ZN21CLearningLineFollower3runEv+0x190>
 800208a:	488c      	ldr	r0, [pc, #560]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 800208c:	2100      	movs	r1, #0
 800208e:	2221      	movs	r2, #33	; 0x21
 8002090:	f7fe fd3a 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 8002094:	4889      	ldr	r0, [pc, #548]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 8002096:	2101      	movs	r1, #1
 8002098:	f06f 020b 	mvn.w	r2, #11
 800209c:	e010      	b.n	80020c0 <_ZN21CLearningLineFollower3runEv+0x18c>
 800209e:	4887      	ldr	r0, [pc, #540]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 80020a0:	2100      	movs	r1, #0
 80020a2:	2221      	movs	r2, #33	; 0x21
 80020a4:	f7fe fd30 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80020a8:	4884      	ldr	r0, [pc, #528]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 80020aa:	2101      	movs	r1, #1
 80020ac:	e007      	b.n	80020be <_ZN21CLearningLineFollower3runEv+0x18a>
 80020ae:	4883      	ldr	r0, [pc, #524]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 80020b0:	2100      	movs	r1, #0
 80020b2:	f06f 020b 	mvn.w	r2, #11
 80020b6:	f7fe fd27 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80020ba:	4880      	ldr	r0, [pc, #512]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 80020bc:	4659      	mov	r1, fp
 80020be:	2221      	movs	r2, #33	; 0x21
 80020c0:	f7fe fd22 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80020c4:	487e      	ldr	r0, [pc, #504]	; (80022c0 <_ZN21CLearningLineFollower3runEv+0x38c>)
 80020c6:	2132      	movs	r1, #50	; 0x32
 80020c8:	f7fe faa0 	bl	800060c <_ZN6CTimer8delay_msEm>
 80020cc:	2100      	movs	r1, #0
 80020ce:	487a      	ldr	r0, [pc, #488]	; (80022b8 <_ZN21CLearningLineFollower3runEv+0x384>)
 80020d0:	f7fe fad0 	bl	8000674 <_ZN4CRGB8rgb_readEh>
 80020d4:	4878      	ldr	r0, [pc, #480]	; (80022b8 <_ZN21CLearningLineFollower3runEv+0x384>)
 80020d6:	f7fe fc85 	bl	80009e4 <_ZN4CRGB14get_rgb_resultEv>
 80020da:	4601      	mov	r1, r0
 80020dc:	4620      	mov	r0, r4
 80020de:	f7fe f8cb 	bl	8000278 <_ZN13CLinePosition7processEP10sRGBResult>
 80020e2:	4620      	mov	r0, r4
 80020e4:	f7fe f964 	bl	80003b0 <_ZN13CLinePosition17get_line_positionEv>
 80020e8:	4871      	ldr	r0, [pc, #452]	; (80022b0 <_ZN21CLearningLineFollower3runEv+0x37c>)
 80020ea:	f7fe f9bd 	bl	8000468 <_ZN5CMath3absEf>
 80020ee:	eef7 9a00 	vmov.f32	s19, #112	; 0x3f800000  1.0
 80020f2:	ee39 0ac0 	vsub.f32	s0, s19, s0
 80020f6:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80020f8:	f8d4 b054 	ldr.w	fp, [r4, #84]	; 0x54
 80020fc:	9301      	str	r3, [sp, #4]
 80020fe:	eef6 7a00 	vmov.f32	s15, #96	; 0x3f000000  0.5
 8002102:	4630      	mov	r0, r6
 8002104:	4639      	mov	r1, r7
 8002106:	462a      	mov	r2, r5
 8002108:	ee30 9a67 	vsub.f32	s18, s0, s15
 800210c:	f7ff fedc 	bl	8001ec8 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8002110:	f504 6cd5 	add.w	ip, r4, #1704	; 0x6a8
 8002114:	eb0c 0b8b 	add.w	fp, ip, fp, lsl #2
 8002118:	eddc 7a00 	vldr	s15, [ip]
 800211c:	ed9b 8a00 	vldr	s16, [fp]
 8002120:	f8cd c000 	str.w	ip, [sp]
 8002124:	eeb4 8a67 	vcmp.f32	s16, s15
 8002128:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800212c:	bf48      	it	mi
 800212e:	eeb0 8a67 	vmovmi.f32	s16, s15
 8002132:	eddc 7a01 	vldr	s15, [ip, #4]
 8002136:	eeb4 8a67 	vcmp.f32	s16, s15
 800213a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800213e:	bf48      	it	mi
 8002140:	eeb0 8a67 	vmovmi.f32	s16, s15
 8002144:	eddc 7a02 	vldr	s15, [ip, #8]
 8002148:	eeb4 8a67 	vcmp.f32	s16, s15
 800214c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002150:	4630      	mov	r0, r6
 8002152:	4649      	mov	r1, r9
 8002154:	462a      	mov	r2, r5
 8002156:	bf48      	it	mi
 8002158:	eeb0 8a67 	vmovmi.f32	s16, s15
 800215c:	f7ff feb4 	bl	8001ec8 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8002160:	eddf 7a58 	vldr	s15, [pc, #352]	; 80022c4 <_ZN21CLearningLineFollower3runEv+0x390>
 8002164:	f8dd c000 	ldr.w	ip, [sp]
 8002168:	9b01      	ldr	r3, [sp, #4]
 800216a:	f8d4 06a0 	ldr.w	r0, [r4, #1696]	; 0x6a0
 800216e:	eddf 6a56 	vldr	s13, [pc, #344]	; 80022c8 <_ZN21CLearningLineFollower3runEv+0x394>
 8002172:	eeb0 7a49 	vmov.f32	s14, s18
 8002176:	eea8 7a27 	vfma.f32	s14, s16, s15
 800217a:	eb0c 0383 	add.w	r3, ip, r3, lsl #2
 800217e:	2100      	movs	r1, #0
 8002180:	46b6      	mov	lr, r6
 8002182:	ed83 7a00 	vstr	s14, [r3]
 8002186:	460a      	mov	r2, r1
 8002188:	4282      	cmp	r2, r0
 800218a:	f104 037c 	add.w	r3, r4, #124	; 0x7c
 800218e:	d018      	beq.n	80021c2 <_ZN21CLearningLineFollower3runEv+0x28e>
 8002190:	eddf 7a48 	vldr	s15, [pc, #288]	; 80022b4 <_ZN21CLearningLineFollower3runEv+0x380>
 8002194:	46f4      	mov	ip, lr
 8002196:	ecb3 7a01 	vldmia	r3!, {s14}
 800219a:	ecbc 6a01 	vldmia	ip!, {s12}
 800219e:	ee37 7a46 	vsub.f32	s14, s14, s12
 80021a2:	42b3      	cmp	r3, r6
 80021a4:	eee7 7a07 	vfma.f32	s15, s14, s14
 80021a8:	d1f5      	bne.n	8002196 <_ZN21CLearningLineFollower3runEv+0x262>
 80021aa:	eef4 7ae6 	vcmpe.f32	s15, s13
 80021ae:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80021b2:	bf44      	itt	mi
 80021b4:	4611      	movmi	r1, r2
 80021b6:	eef0 6a67 	vmovmi.f32	s13, s15
 80021ba:	3201      	adds	r2, #1
 80021bc:	f10e 0e24 	add.w	lr, lr, #36	; 0x24
 80021c0:	e7e2      	b.n	8002188 <_ZN21CLearningLineFollower3runEv+0x254>
 80021c2:	281f      	cmp	r0, #31
 80021c4:	f04f 0224 	mov.w	r2, #36	; 0x24
 80021c8:	d81a      	bhi.n	8002200 <_ZN21CLearningLineFollower3runEv+0x2cc>
 80021ca:	fb02 4200 	mla	r2, r2, r0, r4
 80021ce:	32a0      	adds	r2, #160	; 0xa0
 80021d0:	ecf3 7a01 	vldmia	r3!, {s15}
 80021d4:	ed92 7a00 	vldr	s14, [r2]
 80021d8:	eee7 7a28 	vfma.f32	s15, s14, s17
 80021dc:	42b3      	cmp	r3, r6
 80021de:	ece2 7a01 	vstmia	r2!, {s15}
 80021e2:	d1f5      	bne.n	80021d0 <_ZN21CLearningLineFollower3runEv+0x29c>
 80021e4:	230c      	movs	r3, #12
 80021e6:	fb03 a000 	mla	r0, r3, r0, sl
 80021ea:	4629      	mov	r1, r5
 80021ec:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 80021f0:	f7ff fe56 	bl	8001ea0 <_ZN10MathVectorILj3EE3mixERS0_f>
 80021f4:	f8d4 36a0 	ldr.w	r3, [r4, #1696]	; 0x6a0
 80021f8:	3301      	adds	r3, #1
 80021fa:	f8c4 36a0 	str.w	r3, [r4, #1696]	; 0x6a0
 80021fe:	e01a      	b.n	8002236 <_ZN21CLearningLineFollower3runEv+0x302>
 8002200:	fb02 4201 	mla	r2, r2, r1, r4
 8002204:	edd8 6a00 	vldr	s13, [r8]
 8002208:	32a0      	adds	r2, #160	; 0xa0
 800220a:	ecf3 7a01 	vldmia	r3!, {s15}
 800220e:	ed92 6a00 	vldr	s12, [r2]
 8002212:	ee39 7ae6 	vsub.f32	s14, s19, s13
 8002216:	ee66 7aa7 	vmul.f32	s15, s13, s15
 800221a:	42b3      	cmp	r3, r6
 800221c:	eee7 7a06 	vfma.f32	s15, s14, s12
 8002220:	ece2 7a01 	vstmia	r2!, {s15}
 8002224:	d1f1      	bne.n	800220a <_ZN21CLearningLineFollower3runEv+0x2d6>
 8002226:	200c      	movs	r0, #12
 8002228:	fb00 a001 	mla	r0, r0, r1, sl
 800222c:	ed98 0a00 	vldr	s0, [r8]
 8002230:	4629      	mov	r1, r5
 8002232:	f7ff fe35 	bl	8001ea0 <_ZN10MathVectorILj3EE3mixERS0_f>
 8002236:	4620      	mov	r0, r4
 8002238:	f7fe f8b8 	bl	80003ac <_ZN13CLinePosition7on_lineEv>
 800223c:	4605      	mov	r5, r0
 800223e:	b9f0      	cbnz	r0, 800227e <_ZN21CLearningLineFollower3runEv+0x34a>
 8002240:	481e      	ldr	r0, [pc, #120]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 8002242:	4629      	mov	r1, r5
 8002244:	f06f 0220 	mvn.w	r2, #32
 8002248:	f7fe fc5e 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 800224c:	f06f 0220 	mvn.w	r2, #32
 8002250:	481a      	ldr	r0, [pc, #104]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 8002252:	2101      	movs	r1, #1
 8002254:	f7fe fc58 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 8002258:	4819      	ldr	r0, [pc, #100]	; (80022c0 <_ZN21CLearningLineFollower3runEv+0x38c>)
 800225a:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 800225e:	f7fe f9d5 	bl	800060c <_ZN6CTimer8delay_msEm>
 8002262:	4816      	ldr	r0, [pc, #88]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 8002264:	4629      	mov	r1, r5
 8002266:	462a      	mov	r2, r5
 8002268:	f7fe fc4e 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 800226c:	4813      	ldr	r0, [pc, #76]	; (80022bc <_ZN21CLearningLineFollower3runEv+0x388>)
 800226e:	2101      	movs	r1, #1
 8002270:	462a      	mov	r2, r5
 8002272:	f7fe fc49 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 8002276:	4812      	ldr	r0, [pc, #72]	; (80022c0 <_ZN21CLearningLineFollower3runEv+0x38c>)
 8002278:	2164      	movs	r1, #100	; 0x64
 800227a:	f7fe f9c7 	bl	800060c <_ZN6CTimer8delay_msEm>
 800227e:	ed9f 0a13 	vldr	s0, [pc, #76]	; 80022cc <_ZN21CLearningLineFollower3runEv+0x398>
 8002282:	eddf 7a13 	vldr	s15, [pc, #76]	; 80022d0 <_ZN21CLearningLineFollower3runEv+0x39c>
 8002286:	480c      	ldr	r0, [pc, #48]	; (80022b8 <_ZN21CLearningLineFollower3runEv+0x384>)
 8002288:	4912      	ldr	r1, [pc, #72]	; (80022d4 <_ZN21CLearningLineFollower3runEv+0x3a0>)
 800228a:	ee29 9a00 	vmul.f32	s18, s18, s0
 800228e:	eeaa 9a27 	vfma.f32	s18, s20, s15
 8002292:	eddf 7a11 	vldr	s15, [pc, #68]	; 80022d8 <_ZN21CLearningLineFollower3runEv+0x3a4>
 8002296:	ee69 7a27 	vmul.f32	s15, s18, s15
 800229a:	eeb0 aa49 	vmov.f32	s20, s18
 800229e:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 80022a2:	ee17 2a90 	vmov	r2, s15
 80022a6:	f7ff fc57 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 80022aa:	e686      	b.n	8001fba <_ZN21CLearningLineFollower3runEv+0x86>
 80022ac:	3dcccccd 	.word	0x3dcccccd
 80022b0:	200001bc 	.word	0x200001bc
 80022b4:	00000000 	.word	0x00000000
 80022b8:	20000038 	.word	0x20000038
 80022bc:	200001a8 	.word	0x200001a8
 80022c0:	200001f0 	.word	0x200001f0
 80022c4:	3f666666 	.word	0x3f666666
 80022c8:	4cbebc20 	.word	0x4cbebc20
 80022cc:	3c23d70a 	.word	0x3c23d70a
 80022d0:	3f7d70a4 	.word	0x3f7d70a4
 80022d4:	080033ad 	.word	0x080033ad
 80022d8:	447a0000 	.word	0x447a0000

080022dc <_ZN5CDemo4initEv>:
 80022dc:	4770      	bx	lr
	...

080022e0 <_ZN5CDemo10blink_taskEv>:
 80022e0:	b508      	push	{r3, lr}
 80022e2:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80022e6:	480d      	ldr	r0, [pc, #52]	; (800231c <_ZN5CDemo10blink_taskEv+0x3c>)
 80022e8:	f7ff f99c 	bl	8001624 <_ZN5CGPIO7gpio_onEm>
 80022ec:	480c      	ldr	r0, [pc, #48]	; (8002320 <_ZN5CDemo10blink_taskEv+0x40>)
 80022ee:	f7fe f97f 	bl	80005f0 <_ZN6CTimer8get_timeEv>
 80022f2:	490c      	ldr	r1, [pc, #48]	; (8002324 <_ZN5CDemo10blink_taskEv+0x44>)
 80022f4:	4602      	mov	r2, r0
 80022f6:	4809      	ldr	r0, [pc, #36]	; (800231c <_ZN5CDemo10blink_taskEv+0x3c>)
 80022f8:	f7ff fc2e 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 80022fc:	4808      	ldr	r0, [pc, #32]	; (8002320 <_ZN5CDemo10blink_taskEv+0x40>)
 80022fe:	210a      	movs	r1, #10
 8002300:	f7fe f984 	bl	800060c <_ZN6CTimer8delay_msEm>
 8002304:	4805      	ldr	r0, [pc, #20]	; (800231c <_ZN5CDemo10blink_taskEv+0x3c>)
 8002306:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800230a:	f7ff f991 	bl	8001630 <_ZN5CGPIO8gpio_offEm>
 800230e:	4804      	ldr	r0, [pc, #16]	; (8002320 <_ZN5CDemo10blink_taskEv+0x40>)
 8002310:	f44f 7148 	mov.w	r1, #800	; 0x320
 8002314:	f7fe f97a 	bl	800060c <_ZN6CTimer8delay_msEm>
 8002318:	e7e3      	b.n	80022e2 <_ZN5CDemo10blink_taskEv+0x2>
 800231a:	bf00      	nop
 800231c:	20000038 	.word	0x20000038
 8002320:	200001f0 	.word	0x200001f0
 8002324:	0800338c 	.word	0x0800338c

08002328 <_ZN5CDemo10moves_taskEv>:
 8002328:	b538      	push	{r3, r4, r5, lr}
 800232a:	4c2f      	ldr	r4, [pc, #188]	; (80023e8 <_ZN5CDemo10moves_taskEv+0xc0>)
 800232c:	4d2f      	ldr	r5, [pc, #188]	; (80023ec <_ZN5CDemo10moves_taskEv+0xc4>)
 800232e:	4620      	mov	r0, r4
 8002330:	2200      	movs	r2, #0
 8002332:	2164      	movs	r1, #100	; 0x64
 8002334:	f7fe fbee 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 8002338:	4628      	mov	r0, r5
 800233a:	f240 51dc 	movw	r1, #1500	; 0x5dc
 800233e:	f7fe f965 	bl	800060c <_ZN6CTimer8delay_msEm>
 8002342:	4620      	mov	r0, r4
 8002344:	2200      	movs	r2, #0
 8002346:	f06f 0163 	mvn.w	r1, #99	; 0x63
 800234a:	f7fe fbe3 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 800234e:	4628      	mov	r0, r5
 8002350:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8002354:	f7fe f95a 	bl	800060c <_ZN6CTimer8delay_msEm>
 8002358:	4620      	mov	r0, r4
 800235a:	2264      	movs	r2, #100	; 0x64
 800235c:	2100      	movs	r1, #0
 800235e:	f7fe fbd9 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 8002362:	4628      	mov	r0, r5
 8002364:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8002368:	f7fe f950 	bl	800060c <_ZN6CTimer8delay_msEm>
 800236c:	4620      	mov	r0, r4
 800236e:	f06f 0263 	mvn.w	r2, #99	; 0x63
 8002372:	2100      	movs	r1, #0
 8002374:	f7fe fbce 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 8002378:	4628      	mov	r0, r5
 800237a:	f240 51dc 	movw	r1, #1500	; 0x5dc
 800237e:	f7fe f945 	bl	800060c <_ZN6CTimer8delay_msEm>
 8002382:	4620      	mov	r0, r4
 8002384:	f06f 0263 	mvn.w	r2, #99	; 0x63
 8002388:	2164      	movs	r1, #100	; 0x64
 800238a:	f7fe fbc3 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 800238e:	4628      	mov	r0, r5
 8002390:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8002394:	f7fe f93a 	bl	800060c <_ZN6CTimer8delay_msEm>
 8002398:	4620      	mov	r0, r4
 800239a:	2264      	movs	r2, #100	; 0x64
 800239c:	f06f 0163 	mvn.w	r1, #99	; 0x63
 80023a0:	f7fe fbb8 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 80023a4:	4628      	mov	r0, r5
 80023a6:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80023aa:	f7fe f92f 	bl	800060c <_ZN6CTimer8delay_msEm>
 80023ae:	2164      	movs	r1, #100	; 0x64
 80023b0:	460a      	mov	r2, r1
 80023b2:	4620      	mov	r0, r4
 80023b4:	f7fe fbae 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 80023b8:	4628      	mov	r0, r5
 80023ba:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80023be:	f7fe f925 	bl	800060c <_ZN6CTimer8delay_msEm>
 80023c2:	f06f 0163 	mvn.w	r1, #99	; 0x63
 80023c6:	460a      	mov	r2, r1
 80023c8:	4620      	mov	r0, r4
 80023ca:	f7fe fba3 	bl	8000b14 <_ZN6CMotor10set_motorsEll>
 80023ce:	4628      	mov	r0, r5
 80023d0:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80023d4:	f7fe f91a 	bl	800060c <_ZN6CTimer8delay_msEm>
 80023d8:	2100      	movs	r1, #0
 80023da:	4620      	mov	r0, r4
 80023dc:	460a      	mov	r2, r1
 80023de:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80023e2:	f7fe bb97 	b.w	8000b14 <_ZN6CMotor10set_motorsEll>
 80023e6:	bf00      	nop
 80023e8:	200001a8 	.word	0x200001a8
 80023ec:	200001f0 	.word	0x200001f0

080023f0 <_ZN5CDemo24basic_line_follower_taskEv>:
 80023f0:	b510      	push	{r4, lr}
 80023f2:	b094      	sub	sp, #80	; 0x50
 80023f4:	a809      	add	r0, sp, #36	; 0x24
 80023f6:	f7fd ff31 	bl	800025c <_ZN13CLinePositionC1Ev>
 80023fa:	a801      	add	r0, sp, #4
 80023fc:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8002400:	eddf 0a38 	vldr	s1, [pc, #224]	; 80024e4 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8002404:	eddf 1a38 	vldr	s3, [pc, #224]	; 80024e8 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8002408:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 800240c:	f7fd fff3 	bl	80003f6 <_ZN4CPIDC1Effff>
 8002410:	4836      	ldr	r0, [pc, #216]	; (80024ec <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8002412:	2100      	movs	r1, #0
 8002414:	220a      	movs	r2, #10
 8002416:	f7fe f90b 	bl	8000630 <_ZN6CTimer22event_timer_set_periodEhm>
 800241a:	4834      	ldr	r0, [pc, #208]	; (80024ec <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 800241c:	2100      	movs	r1, #0
 800241e:	f7fe f91b 	bl	8000658 <_ZN6CTimer17event_timer_checkEh>
 8002422:	2800      	cmp	r0, #0
 8002424:	d0f9      	beq.n	800241a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8002426:	2100      	movs	r1, #0
 8002428:	4831      	ldr	r0, [pc, #196]	; (80024f0 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 800242a:	f7fe f923 	bl	8000674 <_ZN4CRGB8rgb_readEh>
 800242e:	4830      	ldr	r0, [pc, #192]	; (80024f0 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8002430:	f7fe fad8 	bl	80009e4 <_ZN4CRGB14get_rgb_resultEv>
 8002434:	4601      	mov	r1, r0
 8002436:	a809      	add	r0, sp, #36	; 0x24
 8002438:	f7fd ff1e 	bl	8000278 <_ZN13CLinePosition7processEP10sRGBResult>
 800243c:	a809      	add	r0, sp, #36	; 0x24
 800243e:	f7fd ffb5 	bl	80003ac <_ZN13CLinePosition7on_lineEv>
 8002442:	4604      	mov	r4, r0
 8002444:	a809      	add	r0, sp, #36	; 0x24
 8002446:	f7fd ffb3 	bl	80003b0 <_ZN13CLinePosition17get_line_positionEv>
 800244a:	eddf 7a2a 	vldr	s15, [pc, #168]	; 80024f4 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 800244e:	4828      	ldr	r0, [pc, #160]	; (80024f0 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8002450:	4929      	ldr	r1, [pc, #164]	; (80024f8 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8002452:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002456:	4622      	mov	r2, r4
 8002458:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 800245c:	ee17 3a90 	vmov	r3, s15
 8002460:	f7ff fb7a 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 8002464:	a809      	add	r0, sp, #36	; 0x24
 8002466:	f7fd ffa1 	bl	80003ac <_ZN13CLinePosition7on_lineEv>
 800246a:	4604      	mov	r4, r0
 800246c:	b1d0      	cbz	r0, 80024a4 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 800246e:	a809      	add	r0, sp, #36	; 0x24
 8002470:	f7fd ff9e 	bl	80003b0 <_ZN13CLinePosition17get_line_positionEv>
 8002474:	eddf 7a1b 	vldr	s15, [pc, #108]	; 80024e4 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8002478:	a801      	add	r0, sp, #4
 800247a:	ee37 0ac0 	vsub.f32	s0, s15, s0
 800247e:	f7fd ffc0 	bl	8000402 <_ZN4CPID7processEf>
 8002482:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8002486:	481d      	ldr	r0, [pc, #116]	; (80024fc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8002488:	ee17 4a90 	vmov	r4, s15
 800248c:	2100      	movs	r1, #0
 800248e:	f104 0219 	add.w	r2, r4, #25
 8002492:	f7fe fb39 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 8002496:	4819      	ldr	r0, [pc, #100]	; (80024fc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8002498:	2101      	movs	r1, #1
 800249a:	f1c4 0219 	rsb	r2, r4, #25
 800249e:	f7fe fb33 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80024a2:	e7ba      	b.n	800241a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 80024a4:	4621      	mov	r1, r4
 80024a6:	4815      	ldr	r0, [pc, #84]	; (80024fc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80024a8:	f06f 0218 	mvn.w	r2, #24
 80024ac:	f7fe fb2c 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80024b0:	f06f 0218 	mvn.w	r2, #24
 80024b4:	4811      	ldr	r0, [pc, #68]	; (80024fc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80024b6:	2101      	movs	r1, #1
 80024b8:	f7fe fb26 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80024bc:	480b      	ldr	r0, [pc, #44]	; (80024ec <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 80024be:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80024c2:	f7fe f8a3 	bl	800060c <_ZN6CTimer8delay_msEm>
 80024c6:	4621      	mov	r1, r4
 80024c8:	4622      	mov	r2, r4
 80024ca:	480c      	ldr	r0, [pc, #48]	; (80024fc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80024cc:	f7fe fb1c 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80024d0:	480a      	ldr	r0, [pc, #40]	; (80024fc <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 80024d2:	2101      	movs	r1, #1
 80024d4:	4622      	mov	r2, r4
 80024d6:	f7fe fb17 	bl	8000b08 <_ZN6CMotor9set_motorEml>
 80024da:	4804      	ldr	r0, [pc, #16]	; (80024ec <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 80024dc:	2164      	movs	r1, #100	; 0x64
 80024de:	f7fe f895 	bl	800060c <_ZN6CTimer8delay_msEm>
 80024e2:	e79a      	b.n	800241a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 80024e4:	00000000 	.word	0x00000000
 80024e8:	42c80000 	.word	0x42c80000
 80024ec:	200001f0 	.word	0x200001f0
 80024f0:	20000038 	.word	0x20000038
 80024f4:	447a0000 	.word	0x447a0000
 80024f8:	080033aa 	.word	0x080033aa
 80024fc:	200001a8 	.word	0x200001a8

08002500 <_ZN5CDemo3runEj>:
 8002500:	2902      	cmp	r1, #2
 8002502:	b508      	push	{r3, lr}
 8002504:	d007      	beq.n	8002516 <_ZN5CDemo3runEj+0x16>
 8002506:	2903      	cmp	r1, #3
 8002508:	d007      	beq.n	800251a <_ZN5CDemo3runEj+0x1a>
 800250a:	2901      	cmp	r1, #1
 800250c:	d10a      	bne.n	8002524 <_ZN5CDemo3runEj+0x24>
 800250e:	f7ff ff0b 	bl	8002328 <_ZN5CDemo10moves_taskEv>
 8002512:	f7ff fee5 	bl	80022e0 <_ZN5CDemo10blink_taskEv>
 8002516:	f7ff ff6b 	bl	80023f0 <_ZN5CDemo24basic_line_follower_taskEv>
 800251a:	4803      	ldr	r0, [pc, #12]	; (8002528 <_ZN5CDemo3runEj+0x28>)
 800251c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002520:	f7ff bd08 	b.w	8001f34 <_ZN21CLearningLineFollower3runEv>
 8002524:	bd08      	pop	{r3, pc}
 8002526:	bf00      	nop
 8002528:	2000045c 	.word	0x2000045c

0800252c <main>:
 800252c:	b510      	push	{r4, lr}
 800252e:	f000 fcf3 	bl	8002f18 <sytem_clock_init>
 8002532:	4830      	ldr	r0, [pc, #192]	; (80025f4 <main+0xc8>)
 8002534:	f7fd fe5a 	bl	80001ec <_ZN7CKodama4initEv>
 8002538:	210a      	movs	r1, #10
 800253a:	482e      	ldr	r0, [pc, #184]	; (80025f4 <main+0xc8>)
 800253c:	f7fd fe8b 	bl	8000256 <_ZN7CKodama6set_dtEl>
 8002540:	482c      	ldr	r0, [pc, #176]	; (80025f4 <main+0xc8>)
 8002542:	f7fd fe75 	bl	8000230 <_ZN7CKodama5sleepEv>
 8002546:	482c      	ldr	r0, [pc, #176]	; (80025f8 <main+0xcc>)
 8002548:	f7ff fbe8 	bl	8001d1c <_ZN5CILED4initEv>
 800254c:	482a      	ldr	r0, [pc, #168]	; (80025f8 <main+0xcc>)
 800254e:	2105      	movs	r1, #5
 8002550:	f240 52dc 	movw	r2, #1500	; 0x5dc
 8002554:	f7ff fc8a 	bl	8001e6c <_ZN5CILED3setEhj>
 8002558:	4828      	ldr	r0, [pc, #160]	; (80025fc <main+0xd0>)
 800255a:	f7ff f88b 	bl	8001674 <_ZN7CCamera4initEv>
 800255e:	4825      	ldr	r0, [pc, #148]	; (80025f4 <main+0xc8>)
 8002560:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8002564:	f7ff f86a 	bl	800163c <_ZN5CGPIO7gpio_inEm>
 8002568:	b190      	cbz	r0, 8002590 <main+0x64>
 800256a:	22c8      	movs	r2, #200	; 0xc8
 800256c:	4822      	ldr	r0, [pc, #136]	; (80025f8 <main+0xcc>)
 800256e:	2102      	movs	r1, #2
 8002570:	f7ff fc7c 	bl	8001e6c <_ZN5CILED3setEhj>
 8002574:	21c8      	movs	r1, #200	; 0xc8
 8002576:	4822      	ldr	r0, [pc, #136]	; (8002600 <main+0xd4>)
 8002578:	f7fe f848 	bl	800060c <_ZN6CTimer8delay_msEm>
 800257c:	481d      	ldr	r0, [pc, #116]	; (80025f4 <main+0xc8>)
 800257e:	f7fd fe5b 	bl	8000238 <_ZN7CKodama6wakeupEv>
 8002582:	4820      	ldr	r0, [pc, #128]	; (8002604 <main+0xd8>)
 8002584:	f7ff feaa 	bl	80022dc <_ZN5CDemo4initEv>
 8002588:	481e      	ldr	r0, [pc, #120]	; (8002604 <main+0xd8>)
 800258a:	2101      	movs	r1, #1
 800258c:	f7ff ffb8 	bl	8002500 <_ZN5CDemo3runEj>
 8002590:	481a      	ldr	r0, [pc, #104]	; (80025fc <main+0xd0>)
 8002592:	f7ff f8fd 	bl	8001790 <_ZN7CCamera4readEv>
 8002596:	4819      	ldr	r0, [pc, #100]	; (80025fc <main+0xd0>)
 8002598:	f7ff f8f6 	bl	8001788 <_ZN7CCamera3getEv>
 800259c:	6844      	ldr	r4, [r0, #4]
 800259e:	4817      	ldr	r0, [pc, #92]	; (80025fc <main+0xd0>)
 80025a0:	f7ff f8f2 	bl	8001788 <_ZN7CCamera3getEv>
 80025a4:	4603      	mov	r3, r0
 80025a6:	4622      	mov	r2, r4
 80025a8:	4812      	ldr	r0, [pc, #72]	; (80025f4 <main+0xc8>)
 80025aa:	4917      	ldr	r1, [pc, #92]	; (8002608 <main+0xdc>)
 80025ac:	68db      	ldr	r3, [r3, #12]
 80025ae:	f7ff fad3 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 80025b2:	2400      	movs	r4, #0
 80025b4:	4811      	ldr	r0, [pc, #68]	; (80025fc <main+0xd0>)
 80025b6:	f7ff f8e7 	bl	8001788 <_ZN7CCamera3getEv>
 80025ba:	eb00 0344 	add.w	r3, r0, r4, lsl #1
 80025be:	4913      	ldr	r1, [pc, #76]	; (800260c <main+0xe0>)
 80025c0:	480c      	ldr	r0, [pc, #48]	; (80025f4 <main+0xc8>)
 80025c2:	f9b3 2114 	ldrsh.w	r2, [r3, #276]	; 0x114
 80025c6:	3401      	adds	r4, #1
 80025c8:	f7ff fac6 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 80025cc:	2c80      	cmp	r4, #128	; 0x80
 80025ce:	d1f1      	bne.n	80025b4 <main+0x88>
 80025d0:	4808      	ldr	r0, [pc, #32]	; (80025f4 <main+0xc8>)
 80025d2:	490f      	ldr	r1, [pc, #60]	; (8002610 <main+0xe4>)
 80025d4:	f7ff fac0 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 80025d8:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80025dc:	4808      	ldr	r0, [pc, #32]	; (8002600 <main+0xd4>)
 80025de:	f7fe f815 	bl	800060c <_ZN6CTimer8delay_msEm>
 80025e2:	4807      	ldr	r0, [pc, #28]	; (8002600 <main+0xd4>)
 80025e4:	f7fe f804 	bl	80005f0 <_ZN6CTimer8get_timeEv>
 80025e8:	490a      	ldr	r1, [pc, #40]	; (8002614 <main+0xe8>)
 80025ea:	4602      	mov	r2, r0
 80025ec:	4801      	ldr	r0, [pc, #4]	; (80025f4 <main+0xc8>)
 80025ee:	f7ff fab3 	bl	8001b58 <_ZN9CTerminal6printfEPKcz>
 80025f2:	e7b4      	b.n	800255e <main+0x32>
 80025f4:	20000038 	.word	0x20000038
 80025f8:	20000451 	.word	0x20000451
 80025fc:	20000bd0 	.word	0x20000bd0
 8002600:	200001f0 	.word	0x200001f0
 8002604:	20000b10 	.word	0x20000b10
 8002608:	080033a1 	.word	0x080033a1
 800260c:	080033b2 	.word	0x080033b2
 8002610:	08003389 	.word	0x08003389
 8002614:	080033b6 	.word	0x080033b6

08002618 <RCC_GetClocksFreq>:
 8002618:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800261c:	4f9b      	ldr	r7, [pc, #620]	; (800288c <RCC_GetClocksFreq+0x274>)
 800261e:	687b      	ldr	r3, [r7, #4]
 8002620:	f003 030c 	and.w	r3, r3, #12
 8002624:	2b04      	cmp	r3, #4
 8002626:	d005      	beq.n	8002634 <RCC_GetClocksFreq+0x1c>
 8002628:	2b08      	cmp	r3, #8
 800262a:	d006      	beq.n	800263a <RCC_GetClocksFreq+0x22>
 800262c:	4a98      	ldr	r2, [pc, #608]	; (8002890 <RCC_GetClocksFreq+0x278>)
 800262e:	6002      	str	r2, [r0, #0]
 8002630:	b9b3      	cbnz	r3, 8002660 <RCC_GetClocksFreq+0x48>
 8002632:	e016      	b.n	8002662 <RCC_GetClocksFreq+0x4a>
 8002634:	4b96      	ldr	r3, [pc, #600]	; (8002890 <RCC_GetClocksFreq+0x278>)
 8002636:	6003      	str	r3, [r0, #0]
 8002638:	e012      	b.n	8002660 <RCC_GetClocksFreq+0x48>
 800263a:	687b      	ldr	r3, [r7, #4]
 800263c:	6879      	ldr	r1, [r7, #4]
 800263e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8002642:	1c9a      	adds	r2, r3, #2
 8002644:	03cb      	lsls	r3, r1, #15
 8002646:	bf49      	itett	mi
 8002648:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800264a:	4b92      	ldrpl	r3, [pc, #584]	; (8002894 <RCC_GetClocksFreq+0x27c>)
 800264c:	4990      	ldrmi	r1, [pc, #576]	; (8002890 <RCC_GetClocksFreq+0x278>)
 800264e:	f003 030f 	andmi.w	r3, r3, #15
 8002652:	bf44      	itt	mi
 8002654:	3301      	addmi	r3, #1
 8002656:	fbb1 f3f3 	udivmi	r3, r1, r3
 800265a:	4353      	muls	r3, r2
 800265c:	6003      	str	r3, [r0, #0]
 800265e:	e000      	b.n	8002662 <RCC_GetClocksFreq+0x4a>
 8002660:	2300      	movs	r3, #0
 8002662:	687a      	ldr	r2, [r7, #4]
 8002664:	4e8c      	ldr	r6, [pc, #560]	; (8002898 <RCC_GetClocksFreq+0x280>)
 8002666:	f8df c234 	ldr.w	ip, [pc, #564]	; 800289c <RCC_GetClocksFreq+0x284>
 800266a:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800266e:	5cb4      	ldrb	r4, [r6, r2]
 8002670:	6802      	ldr	r2, [r0, #0]
 8002672:	b2e4      	uxtb	r4, r4
 8002674:	fa22 f104 	lsr.w	r1, r2, r4
 8002678:	6041      	str	r1, [r0, #4]
 800267a:	687d      	ldr	r5, [r7, #4]
 800267c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8002680:	5d75      	ldrb	r5, [r6, r5]
 8002682:	fa21 fe05 	lsr.w	lr, r1, r5
 8002686:	f8c0 e008 	str.w	lr, [r0, #8]
 800268a:	687d      	ldr	r5, [r7, #4]
 800268c:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8002690:	5d75      	ldrb	r5, [r6, r5]
 8002692:	b2ed      	uxtb	r5, r5
 8002694:	40e9      	lsrs	r1, r5
 8002696:	60c1      	str	r1, [r0, #12]
 8002698:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 800269a:	f3c6 1804 	ubfx	r8, r6, #4, #5
 800269e:	f008 060f 	and.w	r6, r8, #15
 80026a2:	f018 0f10 	tst.w	r8, #16
 80026a6:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80026aa:	46e0      	mov	r8, ip
 80026ac:	b2b6      	uxth	r6, r6
 80026ae:	d004      	beq.n	80026ba <RCC_GetClocksFreq+0xa2>
 80026b0:	b11e      	cbz	r6, 80026ba <RCC_GetClocksFreq+0xa2>
 80026b2:	fbb3 f6f6 	udiv	r6, r3, r6
 80026b6:	6106      	str	r6, [r0, #16]
 80026b8:	e000      	b.n	80026bc <RCC_GetClocksFreq+0xa4>
 80026ba:	6102      	str	r2, [r0, #16]
 80026bc:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80026be:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 80026c2:	f00c 060f 	and.w	r6, ip, #15
 80026c6:	f01c 0f10 	tst.w	ip, #16
 80026ca:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 80026ce:	b2b6      	uxth	r6, r6
 80026d0:	d004      	beq.n	80026dc <RCC_GetClocksFreq+0xc4>
 80026d2:	b11e      	cbz	r6, 80026dc <RCC_GetClocksFreq+0xc4>
 80026d4:	fbb3 f6f6 	udiv	r6, r3, r6
 80026d8:	6146      	str	r6, [r0, #20]
 80026da:	e000      	b.n	80026de <RCC_GetClocksFreq+0xc6>
 80026dc:	6142      	str	r2, [r0, #20]
 80026de:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80026e0:	06f6      	lsls	r6, r6, #27
 80026e2:	bf5a      	itte	pl
 80026e4:	4e6a      	ldrpl	r6, [pc, #424]	; (8002890 <RCC_GetClocksFreq+0x278>)
 80026e6:	6186      	strpl	r6, [r0, #24]
 80026e8:	6182      	strmi	r2, [r0, #24]
 80026ea:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80026ec:	06b6      	lsls	r6, r6, #26
 80026ee:	bf5a      	itte	pl
 80026f0:	4e67      	ldrpl	r6, [pc, #412]	; (8002890 <RCC_GetClocksFreq+0x278>)
 80026f2:	61c6      	strpl	r6, [r0, #28]
 80026f4:	61c2      	strmi	r2, [r0, #28]
 80026f6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80026f8:	0676      	lsls	r6, r6, #25
 80026fa:	bf5a      	itte	pl
 80026fc:	4e64      	ldrpl	r6, [pc, #400]	; (8002890 <RCC_GetClocksFreq+0x278>)
 80026fe:	6206      	strpl	r6, [r0, #32]
 8002700:	6202      	strmi	r2, [r0, #32]
 8002702:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002704:	05f6      	lsls	r6, r6, #23
 8002706:	d506      	bpl.n	8002716 <RCC_GetClocksFreq+0xfe>
 8002708:	429a      	cmp	r2, r3
 800270a:	d104      	bne.n	8002716 <RCC_GetClocksFreq+0xfe>
 800270c:	42a5      	cmp	r5, r4
 800270e:	d102      	bne.n	8002716 <RCC_GetClocksFreq+0xfe>
 8002710:	0056      	lsls	r6, r2, #1
 8002712:	6246      	str	r6, [r0, #36]	; 0x24
 8002714:	e000      	b.n	8002718 <RCC_GetClocksFreq+0x100>
 8002716:	6241      	str	r1, [r0, #36]	; 0x24
 8002718:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800271a:	04f6      	lsls	r6, r6, #19
 800271c:	d506      	bpl.n	800272c <RCC_GetClocksFreq+0x114>
 800271e:	429a      	cmp	r2, r3
 8002720:	d104      	bne.n	800272c <RCC_GetClocksFreq+0x114>
 8002722:	42a5      	cmp	r5, r4
 8002724:	d102      	bne.n	800272c <RCC_GetClocksFreq+0x114>
 8002726:	0056      	lsls	r6, r2, #1
 8002728:	6286      	str	r6, [r0, #40]	; 0x28
 800272a:	e000      	b.n	800272e <RCC_GetClocksFreq+0x116>
 800272c:	6281      	str	r1, [r0, #40]	; 0x28
 800272e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002730:	05b6      	lsls	r6, r6, #22
 8002732:	d506      	bpl.n	8002742 <RCC_GetClocksFreq+0x12a>
 8002734:	429a      	cmp	r2, r3
 8002736:	d104      	bne.n	8002742 <RCC_GetClocksFreq+0x12a>
 8002738:	42a5      	cmp	r5, r4
 800273a:	d102      	bne.n	8002742 <RCC_GetClocksFreq+0x12a>
 800273c:	0056      	lsls	r6, r2, #1
 800273e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8002740:	e000      	b.n	8002744 <RCC_GetClocksFreq+0x12c>
 8002742:	62c1      	str	r1, [r0, #44]	; 0x2c
 8002744:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002746:	0576      	lsls	r6, r6, #21
 8002748:	d506      	bpl.n	8002758 <RCC_GetClocksFreq+0x140>
 800274a:	429a      	cmp	r2, r3
 800274c:	d104      	bne.n	8002758 <RCC_GetClocksFreq+0x140>
 800274e:	42a5      	cmp	r5, r4
 8002750:	d102      	bne.n	8002758 <RCC_GetClocksFreq+0x140>
 8002752:	0056      	lsls	r6, r2, #1
 8002754:	64c6      	str	r6, [r0, #76]	; 0x4c
 8002756:	e000      	b.n	800275a <RCC_GetClocksFreq+0x142>
 8002758:	64c1      	str	r1, [r0, #76]	; 0x4c
 800275a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800275c:	0536      	lsls	r6, r6, #20
 800275e:	d506      	bpl.n	800276e <RCC_GetClocksFreq+0x156>
 8002760:	429a      	cmp	r2, r3
 8002762:	d104      	bne.n	800276e <RCC_GetClocksFreq+0x156>
 8002764:	42a5      	cmp	r5, r4
 8002766:	d102      	bne.n	800276e <RCC_GetClocksFreq+0x156>
 8002768:	0056      	lsls	r6, r2, #1
 800276a:	6506      	str	r6, [r0, #80]	; 0x50
 800276c:	e000      	b.n	8002770 <RCC_GetClocksFreq+0x158>
 800276e:	6501      	str	r1, [r0, #80]	; 0x50
 8002770:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002772:	04b6      	lsls	r6, r6, #18
 8002774:	d506      	bpl.n	8002784 <RCC_GetClocksFreq+0x16c>
 8002776:	429a      	cmp	r2, r3
 8002778:	d104      	bne.n	8002784 <RCC_GetClocksFreq+0x16c>
 800277a:	42a5      	cmp	r5, r4
 800277c:	d102      	bne.n	8002784 <RCC_GetClocksFreq+0x16c>
 800277e:	0056      	lsls	r6, r2, #1
 8002780:	6546      	str	r6, [r0, #84]	; 0x54
 8002782:	e000      	b.n	8002786 <RCC_GetClocksFreq+0x16e>
 8002784:	6501      	str	r1, [r0, #80]	; 0x50
 8002786:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002788:	0436      	lsls	r6, r6, #16
 800278a:	d506      	bpl.n	800279a <RCC_GetClocksFreq+0x182>
 800278c:	429a      	cmp	r2, r3
 800278e:	d104      	bne.n	800279a <RCC_GetClocksFreq+0x182>
 8002790:	42a5      	cmp	r5, r4
 8002792:	d102      	bne.n	800279a <RCC_GetClocksFreq+0x182>
 8002794:	0053      	lsls	r3, r2, #1
 8002796:	6583      	str	r3, [r0, #88]	; 0x58
 8002798:	e000      	b.n	800279c <RCC_GetClocksFreq+0x184>
 800279a:	6581      	str	r1, [r0, #88]	; 0x58
 800279c:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 800279e:	4b3b      	ldr	r3, [pc, #236]	; (800288c <RCC_GetClocksFreq+0x274>)
 80027a0:	07a4      	lsls	r4, r4, #30
 80027a2:	d101      	bne.n	80027a8 <RCC_GetClocksFreq+0x190>
 80027a4:	6381      	str	r1, [r0, #56]	; 0x38
 80027a6:	e015      	b.n	80027d4 <RCC_GetClocksFreq+0x1bc>
 80027a8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80027aa:	f001 0103 	and.w	r1, r1, #3
 80027ae:	2901      	cmp	r1, #1
 80027b0:	d101      	bne.n	80027b6 <RCC_GetClocksFreq+0x19e>
 80027b2:	6382      	str	r2, [r0, #56]	; 0x38
 80027b4:	e00e      	b.n	80027d4 <RCC_GetClocksFreq+0x1bc>
 80027b6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80027b8:	f001 0103 	and.w	r1, r1, #3
 80027bc:	2902      	cmp	r1, #2
 80027be:	d102      	bne.n	80027c6 <RCC_GetClocksFreq+0x1ae>
 80027c0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80027c4:	e005      	b.n	80027d2 <RCC_GetClocksFreq+0x1ba>
 80027c6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80027c8:	f003 0303 	and.w	r3, r3, #3
 80027cc:	2b03      	cmp	r3, #3
 80027ce:	d101      	bne.n	80027d4 <RCC_GetClocksFreq+0x1bc>
 80027d0:	4b2f      	ldr	r3, [pc, #188]	; (8002890 <RCC_GetClocksFreq+0x278>)
 80027d2:	6383      	str	r3, [r0, #56]	; 0x38
 80027d4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80027d6:	4b2d      	ldr	r3, [pc, #180]	; (800288c <RCC_GetClocksFreq+0x274>)
 80027d8:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80027dc:	d102      	bne.n	80027e4 <RCC_GetClocksFreq+0x1cc>
 80027de:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 80027e2:	e018      	b.n	8002816 <RCC_GetClocksFreq+0x1fe>
 80027e4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80027e6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80027ea:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80027ee:	d101      	bne.n	80027f4 <RCC_GetClocksFreq+0x1dc>
 80027f0:	63c2      	str	r2, [r0, #60]	; 0x3c
 80027f2:	e010      	b.n	8002816 <RCC_GetClocksFreq+0x1fe>
 80027f4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80027f6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80027fa:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80027fe:	d102      	bne.n	8002806 <RCC_GetClocksFreq+0x1ee>
 8002800:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002804:	e006      	b.n	8002814 <RCC_GetClocksFreq+0x1fc>
 8002806:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002808:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 800280c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8002810:	d101      	bne.n	8002816 <RCC_GetClocksFreq+0x1fe>
 8002812:	4b1f      	ldr	r3, [pc, #124]	; (8002890 <RCC_GetClocksFreq+0x278>)
 8002814:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002816:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002818:	4b1c      	ldr	r3, [pc, #112]	; (800288c <RCC_GetClocksFreq+0x274>)
 800281a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 800281e:	d102      	bne.n	8002826 <RCC_GetClocksFreq+0x20e>
 8002820:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8002824:	e018      	b.n	8002858 <RCC_GetClocksFreq+0x240>
 8002826:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002828:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800282c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8002830:	d101      	bne.n	8002836 <RCC_GetClocksFreq+0x21e>
 8002832:	6402      	str	r2, [r0, #64]	; 0x40
 8002834:	e010      	b.n	8002858 <RCC_GetClocksFreq+0x240>
 8002836:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002838:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800283c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8002840:	d102      	bne.n	8002848 <RCC_GetClocksFreq+0x230>
 8002842:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002846:	e006      	b.n	8002856 <RCC_GetClocksFreq+0x23e>
 8002848:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800284a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800284e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8002852:	d101      	bne.n	8002858 <RCC_GetClocksFreq+0x240>
 8002854:	4b0e      	ldr	r3, [pc, #56]	; (8002890 <RCC_GetClocksFreq+0x278>)
 8002856:	6403      	str	r3, [r0, #64]	; 0x40
 8002858:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800285a:	4b0c      	ldr	r3, [pc, #48]	; (800288c <RCC_GetClocksFreq+0x274>)
 800285c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8002860:	d102      	bne.n	8002868 <RCC_GetClocksFreq+0x250>
 8002862:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8002866:	e023      	b.n	80028b0 <RCC_GetClocksFreq+0x298>
 8002868:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800286a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800286e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8002872:	d101      	bne.n	8002878 <RCC_GetClocksFreq+0x260>
 8002874:	6442      	str	r2, [r0, #68]	; 0x44
 8002876:	e01b      	b.n	80028b0 <RCC_GetClocksFreq+0x298>
 8002878:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800287a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800287e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8002882:	d10d      	bne.n	80028a0 <RCC_GetClocksFreq+0x288>
 8002884:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002888:	e011      	b.n	80028ae <RCC_GetClocksFreq+0x296>
 800288a:	bf00      	nop
 800288c:	40021000 	.word	0x40021000
 8002890:	007a1200 	.word	0x007a1200
 8002894:	003d0900 	.word	0x003d0900
 8002898:	20000020 	.word	0x20000020
 800289c:	20000000 	.word	0x20000000
 80028a0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80028a2:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 80028a6:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80028aa:	d101      	bne.n	80028b0 <RCC_GetClocksFreq+0x298>
 80028ac:	4b13      	ldr	r3, [pc, #76]	; (80028fc <RCC_GetClocksFreq+0x2e4>)
 80028ae:	6443      	str	r3, [r0, #68]	; 0x44
 80028b0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80028b2:	4b13      	ldr	r3, [pc, #76]	; (8002900 <RCC_GetClocksFreq+0x2e8>)
 80028b4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80028b8:	d103      	bne.n	80028c2 <RCC_GetClocksFreq+0x2aa>
 80028ba:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80028be:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80028c2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80028c4:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80028c8:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80028cc:	d102      	bne.n	80028d4 <RCC_GetClocksFreq+0x2bc>
 80028ce:	6482      	str	r2, [r0, #72]	; 0x48
 80028d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80028d4:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80028d6:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80028da:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80028de:	d102      	bne.n	80028e6 <RCC_GetClocksFreq+0x2ce>
 80028e0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80028e4:	e006      	b.n	80028f4 <RCC_GetClocksFreq+0x2dc>
 80028e6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80028e8:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80028ec:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80028f0:	d101      	bne.n	80028f6 <RCC_GetClocksFreq+0x2de>
 80028f2:	4b02      	ldr	r3, [pc, #8]	; (80028fc <RCC_GetClocksFreq+0x2e4>)
 80028f4:	6483      	str	r3, [r0, #72]	; 0x48
 80028f6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80028fa:	bf00      	nop
 80028fc:	007a1200 	.word	0x007a1200
 8002900:	40021000 	.word	0x40021000

08002904 <RCC_ADCCLKConfig>:
 8002904:	bf00      	nop
 8002906:	0f03      	lsrs	r3, r0, #28
 8002908:	4b05      	ldr	r3, [pc, #20]	; (8002920 <RCC_ADCCLKConfig+0x1c>)
 800290a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800290c:	bf14      	ite	ne
 800290e:	f422 5278 	bicne.w	r2, r2, #15872	; 0x3e00
 8002912:	f422 72f8 	biceq.w	r2, r2, #496	; 0x1f0
 8002916:	62da      	str	r2, [r3, #44]	; 0x2c
 8002918:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800291a:	4310      	orrs	r0, r2
 800291c:	62d8      	str	r0, [r3, #44]	; 0x2c
 800291e:	4770      	bx	lr
 8002920:	40021000 	.word	0x40021000

08002924 <RCC_AHBPeriphClockCmd>:
 8002924:	bf00      	nop
 8002926:	bf00      	nop
 8002928:	4b04      	ldr	r3, [pc, #16]	; (800293c <RCC_AHBPeriphClockCmd+0x18>)
 800292a:	695a      	ldr	r2, [r3, #20]
 800292c:	b109      	cbz	r1, 8002932 <RCC_AHBPeriphClockCmd+0xe>
 800292e:	4310      	orrs	r0, r2
 8002930:	e001      	b.n	8002936 <RCC_AHBPeriphClockCmd+0x12>
 8002932:	ea22 0000 	bic.w	r0, r2, r0
 8002936:	6158      	str	r0, [r3, #20]
 8002938:	4770      	bx	lr
 800293a:	bf00      	nop
 800293c:	40021000 	.word	0x40021000

08002940 <RCC_APB2PeriphClockCmd>:
 8002940:	bf00      	nop
 8002942:	bf00      	nop
 8002944:	4b04      	ldr	r3, [pc, #16]	; (8002958 <RCC_APB2PeriphClockCmd+0x18>)
 8002946:	699a      	ldr	r2, [r3, #24]
 8002948:	b109      	cbz	r1, 800294e <RCC_APB2PeriphClockCmd+0xe>
 800294a:	4310      	orrs	r0, r2
 800294c:	e001      	b.n	8002952 <RCC_APB2PeriphClockCmd+0x12>
 800294e:	ea22 0000 	bic.w	r0, r2, r0
 8002952:	6198      	str	r0, [r3, #24]
 8002954:	4770      	bx	lr
 8002956:	bf00      	nop
 8002958:	40021000 	.word	0x40021000

0800295c <RCC_APB1PeriphClockCmd>:
 800295c:	bf00      	nop
 800295e:	bf00      	nop
 8002960:	4b04      	ldr	r3, [pc, #16]	; (8002974 <RCC_APB1PeriphClockCmd+0x18>)
 8002962:	69da      	ldr	r2, [r3, #28]
 8002964:	b109      	cbz	r1, 800296a <RCC_APB1PeriphClockCmd+0xe>
 8002966:	4310      	orrs	r0, r2
 8002968:	e001      	b.n	800296e <RCC_APB1PeriphClockCmd+0x12>
 800296a:	ea22 0000 	bic.w	r0, r2, r0
 800296e:	61d8      	str	r0, [r3, #28]
 8002970:	4770      	bx	lr
 8002972:	bf00      	nop
 8002974:	40021000 	.word	0x40021000

08002978 <TIM_TimeBaseInit>:
 8002978:	bf00      	nop
 800297a:	bf00      	nop
 800297c:	bf00      	nop
 800297e:	4a24      	ldr	r2, [pc, #144]	; (8002a10 <TIM_TimeBaseInit+0x98>)
 8002980:	8803      	ldrh	r3, [r0, #0]
 8002982:	4290      	cmp	r0, r2
 8002984:	b29b      	uxth	r3, r3
 8002986:	d012      	beq.n	80029ae <TIM_TimeBaseInit+0x36>
 8002988:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800298c:	4290      	cmp	r0, r2
 800298e:	d00e      	beq.n	80029ae <TIM_TimeBaseInit+0x36>
 8002990:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002994:	d00b      	beq.n	80029ae <TIM_TimeBaseInit+0x36>
 8002996:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 800299a:	4290      	cmp	r0, r2
 800299c:	d007      	beq.n	80029ae <TIM_TimeBaseInit+0x36>
 800299e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80029a2:	4290      	cmp	r0, r2
 80029a4:	d003      	beq.n	80029ae <TIM_TimeBaseInit+0x36>
 80029a6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80029aa:	4290      	cmp	r0, r2
 80029ac:	d103      	bne.n	80029b6 <TIM_TimeBaseInit+0x3e>
 80029ae:	884a      	ldrh	r2, [r1, #2]
 80029b0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80029b4:	4313      	orrs	r3, r2
 80029b6:	4a17      	ldr	r2, [pc, #92]	; (8002a14 <TIM_TimeBaseInit+0x9c>)
 80029b8:	4290      	cmp	r0, r2
 80029ba:	d008      	beq.n	80029ce <TIM_TimeBaseInit+0x56>
 80029bc:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80029c0:	4290      	cmp	r0, r2
 80029c2:	bf1f      	itttt	ne
 80029c4:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 80029c8:	890a      	ldrhne	r2, [r1, #8]
 80029ca:	b29b      	uxthne	r3, r3
 80029cc:	4313      	orrne	r3, r2
 80029ce:	8003      	strh	r3, [r0, #0]
 80029d0:	684b      	ldr	r3, [r1, #4]
 80029d2:	62c3      	str	r3, [r0, #44]	; 0x2c
 80029d4:	880b      	ldrh	r3, [r1, #0]
 80029d6:	8503      	strh	r3, [r0, #40]	; 0x28
 80029d8:	4b0d      	ldr	r3, [pc, #52]	; (8002a10 <TIM_TimeBaseInit+0x98>)
 80029da:	4298      	cmp	r0, r3
 80029dc:	d013      	beq.n	8002a06 <TIM_TimeBaseInit+0x8e>
 80029de:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80029e2:	4298      	cmp	r0, r3
 80029e4:	d00f      	beq.n	8002a06 <TIM_TimeBaseInit+0x8e>
 80029e6:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80029ea:	4298      	cmp	r0, r3
 80029ec:	d00b      	beq.n	8002a06 <TIM_TimeBaseInit+0x8e>
 80029ee:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80029f2:	4298      	cmp	r0, r3
 80029f4:	d007      	beq.n	8002a06 <TIM_TimeBaseInit+0x8e>
 80029f6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80029fa:	4298      	cmp	r0, r3
 80029fc:	d003      	beq.n	8002a06 <TIM_TimeBaseInit+0x8e>
 80029fe:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002a02:	4298      	cmp	r0, r3
 8002a04:	d101      	bne.n	8002a0a <TIM_TimeBaseInit+0x92>
 8002a06:	894b      	ldrh	r3, [r1, #10]
 8002a08:	8603      	strh	r3, [r0, #48]	; 0x30
 8002a0a:	2301      	movs	r3, #1
 8002a0c:	6143      	str	r3, [r0, #20]
 8002a0e:	4770      	bx	lr
 8002a10:	40012c00 	.word	0x40012c00
 8002a14:	40001000 	.word	0x40001000

08002a18 <TIM_Cmd>:
 8002a18:	bf00      	nop
 8002a1a:	bf00      	nop
 8002a1c:	8803      	ldrh	r3, [r0, #0]
 8002a1e:	b119      	cbz	r1, 8002a28 <TIM_Cmd+0x10>
 8002a20:	b29b      	uxth	r3, r3
 8002a22:	f043 0301 	orr.w	r3, r3, #1
 8002a26:	e003      	b.n	8002a30 <TIM_Cmd+0x18>
 8002a28:	f023 0301 	bic.w	r3, r3, #1
 8002a2c:	041b      	lsls	r3, r3, #16
 8002a2e:	0c1b      	lsrs	r3, r3, #16
 8002a30:	8003      	strh	r3, [r0, #0]
 8002a32:	4770      	bx	lr

08002a34 <TIM_OC1Init>:
 8002a34:	b570      	push	{r4, r5, r6, lr}
 8002a36:	bf00      	nop
 8002a38:	bf00      	nop
 8002a3a:	bf00      	nop
 8002a3c:	bf00      	nop
 8002a3e:	6a03      	ldr	r3, [r0, #32]
 8002a40:	680d      	ldr	r5, [r1, #0]
 8002a42:	f023 0301 	bic.w	r3, r3, #1
 8002a46:	6203      	str	r3, [r0, #32]
 8002a48:	6a03      	ldr	r3, [r0, #32]
 8002a4a:	6844      	ldr	r4, [r0, #4]
 8002a4c:	6982      	ldr	r2, [r0, #24]
 8002a4e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002a52:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8002a56:	4315      	orrs	r5, r2
 8002a58:	898a      	ldrh	r2, [r1, #12]
 8002a5a:	f023 0302 	bic.w	r3, r3, #2
 8002a5e:	4313      	orrs	r3, r2
 8002a60:	888a      	ldrh	r2, [r1, #4]
 8002a62:	4313      	orrs	r3, r2
 8002a64:	4a15      	ldr	r2, [pc, #84]	; (8002abc <TIM_OC1Init+0x88>)
 8002a66:	4290      	cmp	r0, r2
 8002a68:	d00f      	beq.n	8002a8a <TIM_OC1Init+0x56>
 8002a6a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002a6e:	4290      	cmp	r0, r2
 8002a70:	d00b      	beq.n	8002a8a <TIM_OC1Init+0x56>
 8002a72:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8002a76:	4290      	cmp	r0, r2
 8002a78:	d007      	beq.n	8002a8a <TIM_OC1Init+0x56>
 8002a7a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002a7e:	4290      	cmp	r0, r2
 8002a80:	d003      	beq.n	8002a8a <TIM_OC1Init+0x56>
 8002a82:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002a86:	4290      	cmp	r0, r2
 8002a88:	d111      	bne.n	8002aae <TIM_OC1Init+0x7a>
 8002a8a:	bf00      	nop
 8002a8c:	bf00      	nop
 8002a8e:	bf00      	nop
 8002a90:	bf00      	nop
 8002a92:	89ca      	ldrh	r2, [r1, #14]
 8002a94:	88ce      	ldrh	r6, [r1, #6]
 8002a96:	f023 0308 	bic.w	r3, r3, #8
 8002a9a:	4313      	orrs	r3, r2
 8002a9c:	8a0a      	ldrh	r2, [r1, #16]
 8002a9e:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8002aa2:	4314      	orrs	r4, r2
 8002aa4:	8a4a      	ldrh	r2, [r1, #18]
 8002aa6:	f023 0304 	bic.w	r3, r3, #4
 8002aaa:	4333      	orrs	r3, r6
 8002aac:	4314      	orrs	r4, r2
 8002aae:	688a      	ldr	r2, [r1, #8]
 8002ab0:	6044      	str	r4, [r0, #4]
 8002ab2:	6185      	str	r5, [r0, #24]
 8002ab4:	6342      	str	r2, [r0, #52]	; 0x34
 8002ab6:	6203      	str	r3, [r0, #32]
 8002ab8:	bd70      	pop	{r4, r5, r6, pc}
 8002aba:	bf00      	nop
 8002abc:	40012c00 	.word	0x40012c00

08002ac0 <TIM_OC2Init>:
 8002ac0:	b570      	push	{r4, r5, r6, lr}
 8002ac2:	bf00      	nop
 8002ac4:	bf00      	nop
 8002ac6:	bf00      	nop
 8002ac8:	bf00      	nop
 8002aca:	6a03      	ldr	r3, [r0, #32]
 8002acc:	680d      	ldr	r5, [r1, #0]
 8002ace:	898e      	ldrh	r6, [r1, #12]
 8002ad0:	f023 0310 	bic.w	r3, r3, #16
 8002ad4:	6203      	str	r3, [r0, #32]
 8002ad6:	6a03      	ldr	r3, [r0, #32]
 8002ad8:	6844      	ldr	r4, [r0, #4]
 8002ada:	6982      	ldr	r2, [r0, #24]
 8002adc:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8002ae0:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002ae4:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002ae8:	f023 0220 	bic.w	r2, r3, #32
 8002aec:	888b      	ldrh	r3, [r1, #4]
 8002aee:	4333      	orrs	r3, r6
 8002af0:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8002af4:	4a10      	ldr	r2, [pc, #64]	; (8002b38 <TIM_OC2Init+0x78>)
 8002af6:	4290      	cmp	r0, r2
 8002af8:	d003      	beq.n	8002b02 <TIM_OC2Init+0x42>
 8002afa:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002afe:	4290      	cmp	r0, r2
 8002b00:	d114      	bne.n	8002b2c <TIM_OC2Init+0x6c>
 8002b02:	bf00      	nop
 8002b04:	bf00      	nop
 8002b06:	bf00      	nop
 8002b08:	bf00      	nop
 8002b0a:	89ca      	ldrh	r2, [r1, #14]
 8002b0c:	8a0e      	ldrh	r6, [r1, #16]
 8002b0e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002b12:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002b16:	88ca      	ldrh	r2, [r1, #6]
 8002b18:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002b1c:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002b20:	8a4a      	ldrh	r2, [r1, #18]
 8002b22:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8002b26:	4332      	orrs	r2, r6
 8002b28:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8002b2c:	688a      	ldr	r2, [r1, #8]
 8002b2e:	6044      	str	r4, [r0, #4]
 8002b30:	6185      	str	r5, [r0, #24]
 8002b32:	6382      	str	r2, [r0, #56]	; 0x38
 8002b34:	6203      	str	r3, [r0, #32]
 8002b36:	bd70      	pop	{r4, r5, r6, pc}
 8002b38:	40012c00 	.word	0x40012c00

08002b3c <TIM_SetCompare2>:
 8002b3c:	bf00      	nop
 8002b3e:	6381      	str	r1, [r0, #56]	; 0x38
 8002b40:	4770      	bx	lr

08002b42 <TIM_CtrlPWMOutputs>:
 8002b42:	bf00      	nop
 8002b44:	bf00      	nop
 8002b46:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002b48:	b111      	cbz	r1, 8002b50 <TIM_CtrlPWMOutputs+0xe>
 8002b4a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002b4e:	e001      	b.n	8002b54 <TIM_CtrlPWMOutputs+0x12>
 8002b50:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002b54:	6443      	str	r3, [r0, #68]	; 0x44
 8002b56:	4770      	bx	lr

08002b58 <TIM_ITConfig>:
 8002b58:	bf00      	nop
 8002b5a:	bf00      	nop
 8002b5c:	bf00      	nop
 8002b5e:	68c3      	ldr	r3, [r0, #12]
 8002b60:	b10a      	cbz	r2, 8002b66 <TIM_ITConfig+0xe>
 8002b62:	4319      	orrs	r1, r3
 8002b64:	e002      	b.n	8002b6c <TIM_ITConfig+0x14>
 8002b66:	43c9      	mvns	r1, r1
 8002b68:	b289      	uxth	r1, r1
 8002b6a:	4019      	ands	r1, r3
 8002b6c:	60c1      	str	r1, [r0, #12]
 8002b6e:	4770      	bx	lr

08002b70 <TIM_GetITStatus>:
 8002b70:	bf00      	nop
 8002b72:	bf00      	nop
 8002b74:	6903      	ldr	r3, [r0, #16]
 8002b76:	68c2      	ldr	r2, [r0, #12]
 8002b78:	ea11 0003 	ands.w	r0, r1, r3
 8002b7c:	d003      	beq.n	8002b86 <TIM_GetITStatus+0x16>
 8002b7e:	4211      	tst	r1, r2
 8002b80:	bf14      	ite	ne
 8002b82:	2001      	movne	r0, #1
 8002b84:	2000      	moveq	r0, #0
 8002b86:	4770      	bx	lr

08002b88 <TIM_ClearITPendingBit>:
 8002b88:	bf00      	nop
 8002b8a:	43c9      	mvns	r1, r1
 8002b8c:	b289      	uxth	r1, r1
 8002b8e:	6101      	str	r1, [r0, #16]
 8002b90:	4770      	bx	lr
	...

08002b94 <USART_Init>:
 8002b94:	b530      	push	{r4, r5, lr}
 8002b96:	4604      	mov	r4, r0
 8002b98:	b099      	sub	sp, #100	; 0x64
 8002b9a:	460d      	mov	r5, r1
 8002b9c:	bf00      	nop
 8002b9e:	bf00      	nop
 8002ba0:	bf00      	nop
 8002ba2:	bf00      	nop
 8002ba4:	bf00      	nop
 8002ba6:	bf00      	nop
 8002ba8:	bf00      	nop
 8002baa:	6803      	ldr	r3, [r0, #0]
 8002bac:	f023 0301 	bic.w	r3, r3, #1
 8002bb0:	6003      	str	r3, [r0, #0]
 8002bb2:	6843      	ldr	r3, [r0, #4]
 8002bb4:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002bb8:	688b      	ldr	r3, [r1, #8]
 8002bba:	68c9      	ldr	r1, [r1, #12]
 8002bbc:	4313      	orrs	r3, r2
 8002bbe:	6043      	str	r3, [r0, #4]
 8002bc0:	686a      	ldr	r2, [r5, #4]
 8002bc2:	6803      	ldr	r3, [r0, #0]
 8002bc4:	4311      	orrs	r1, r2
 8002bc6:	692a      	ldr	r2, [r5, #16]
 8002bc8:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002bcc:	430a      	orrs	r2, r1
 8002bce:	f023 030c 	bic.w	r3, r3, #12
 8002bd2:	4313      	orrs	r3, r2
 8002bd4:	6003      	str	r3, [r0, #0]
 8002bd6:	6883      	ldr	r3, [r0, #8]
 8002bd8:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002bdc:	696b      	ldr	r3, [r5, #20]
 8002bde:	4313      	orrs	r3, r2
 8002be0:	6083      	str	r3, [r0, #8]
 8002be2:	a801      	add	r0, sp, #4
 8002be4:	f7ff fd18 	bl	8002618 <RCC_GetClocksFreq>
 8002be8:	4b17      	ldr	r3, [pc, #92]	; (8002c48 <USART_Init+0xb4>)
 8002bea:	429c      	cmp	r4, r3
 8002bec:	d101      	bne.n	8002bf2 <USART_Init+0x5e>
 8002bee:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002bf0:	e00e      	b.n	8002c10 <USART_Init+0x7c>
 8002bf2:	4b16      	ldr	r3, [pc, #88]	; (8002c4c <USART_Init+0xb8>)
 8002bf4:	429c      	cmp	r4, r3
 8002bf6:	d101      	bne.n	8002bfc <USART_Init+0x68>
 8002bf8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002bfa:	e009      	b.n	8002c10 <USART_Init+0x7c>
 8002bfc:	4b14      	ldr	r3, [pc, #80]	; (8002c50 <USART_Init+0xbc>)
 8002bfe:	429c      	cmp	r4, r3
 8002c00:	d101      	bne.n	8002c06 <USART_Init+0x72>
 8002c02:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002c04:	e004      	b.n	8002c10 <USART_Init+0x7c>
 8002c06:	4b13      	ldr	r3, [pc, #76]	; (8002c54 <USART_Init+0xc0>)
 8002c08:	429c      	cmp	r4, r3
 8002c0a:	bf0c      	ite	eq
 8002c0c:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002c0e:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002c10:	6822      	ldr	r2, [r4, #0]
 8002c12:	6829      	ldr	r1, [r5, #0]
 8002c14:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002c18:	bf18      	it	ne
 8002c1a:	005b      	lslne	r3, r3, #1
 8002c1c:	fbb3 f2f1 	udiv	r2, r3, r1
 8002c20:	fb01 3312 	mls	r3, r1, r2, r3
 8002c24:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002c28:	6823      	ldr	r3, [r4, #0]
 8002c2a:	bf28      	it	cs
 8002c2c:	3201      	addcs	r2, #1
 8002c2e:	041b      	lsls	r3, r3, #16
 8002c30:	bf41      	itttt	mi
 8002c32:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002c36:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002c3a:	4013      	andmi	r3, r2
 8002c3c:	ea41 0203 	orrmi.w	r2, r1, r3
 8002c40:	b292      	uxth	r2, r2
 8002c42:	81a2      	strh	r2, [r4, #12]
 8002c44:	b019      	add	sp, #100	; 0x64
 8002c46:	bd30      	pop	{r4, r5, pc}
 8002c48:	40013800 	.word	0x40013800
 8002c4c:	40004400 	.word	0x40004400
 8002c50:	40004800 	.word	0x40004800
 8002c54:	40004c00 	.word	0x40004c00

08002c58 <USART_Cmd>:
 8002c58:	bf00      	nop
 8002c5a:	bf00      	nop
 8002c5c:	6803      	ldr	r3, [r0, #0]
 8002c5e:	b111      	cbz	r1, 8002c66 <USART_Cmd+0xe>
 8002c60:	f043 0301 	orr.w	r3, r3, #1
 8002c64:	e001      	b.n	8002c6a <USART_Cmd+0x12>
 8002c66:	f023 0301 	bic.w	r3, r3, #1
 8002c6a:	6003      	str	r3, [r0, #0]
 8002c6c:	4770      	bx	lr

08002c6e <USART_ReceiveData>:
 8002c6e:	bf00      	nop
 8002c70:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002c72:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002c76:	4770      	bx	lr

08002c78 <USART_ITConfig>:
 8002c78:	b510      	push	{r4, lr}
 8002c7a:	bf00      	nop
 8002c7c:	bf00      	nop
 8002c7e:	bf00      	nop
 8002c80:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002c84:	2301      	movs	r3, #1
 8002c86:	b2c9      	uxtb	r1, r1
 8002c88:	2c02      	cmp	r4, #2
 8002c8a:	fa03 f301 	lsl.w	r3, r3, r1
 8002c8e:	d101      	bne.n	8002c94 <USART_ITConfig+0x1c>
 8002c90:	3004      	adds	r0, #4
 8002c92:	e002      	b.n	8002c9a <USART_ITConfig+0x22>
 8002c94:	2c03      	cmp	r4, #3
 8002c96:	bf08      	it	eq
 8002c98:	3008      	addeq	r0, #8
 8002c9a:	b112      	cbz	r2, 8002ca2 <USART_ITConfig+0x2a>
 8002c9c:	6802      	ldr	r2, [r0, #0]
 8002c9e:	4313      	orrs	r3, r2
 8002ca0:	e002      	b.n	8002ca8 <USART_ITConfig+0x30>
 8002ca2:	6802      	ldr	r2, [r0, #0]
 8002ca4:	ea22 0303 	bic.w	r3, r2, r3
 8002ca8:	6003      	str	r3, [r0, #0]
 8002caa:	bd10      	pop	{r4, pc}

08002cac <USART_GetITStatus>:
 8002cac:	b510      	push	{r4, lr}
 8002cae:	bf00      	nop
 8002cb0:	bf00      	nop
 8002cb2:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002cb6:	b2cc      	uxtb	r4, r1
 8002cb8:	2301      	movs	r3, #1
 8002cba:	2a01      	cmp	r2, #1
 8002cbc:	fa03 f304 	lsl.w	r3, r3, r4
 8002cc0:	d101      	bne.n	8002cc6 <USART_GetITStatus+0x1a>
 8002cc2:	6802      	ldr	r2, [r0, #0]
 8002cc4:	e003      	b.n	8002cce <USART_GetITStatus+0x22>
 8002cc6:	2a02      	cmp	r2, #2
 8002cc8:	bf0c      	ite	eq
 8002cca:	6842      	ldreq	r2, [r0, #4]
 8002ccc:	6882      	ldrne	r2, [r0, #8]
 8002cce:	4013      	ands	r3, r2
 8002cd0:	69c2      	ldr	r2, [r0, #28]
 8002cd2:	b13b      	cbz	r3, 8002ce4 <USART_GetITStatus+0x38>
 8002cd4:	0c09      	lsrs	r1, r1, #16
 8002cd6:	2301      	movs	r3, #1
 8002cd8:	408b      	lsls	r3, r1
 8002cda:	4213      	tst	r3, r2
 8002cdc:	bf14      	ite	ne
 8002cde:	2001      	movne	r0, #1
 8002ce0:	2000      	moveq	r0, #0
 8002ce2:	bd10      	pop	{r4, pc}
 8002ce4:	4618      	mov	r0, r3
 8002ce6:	bd10      	pop	{r4, pc}

08002ce8 <USART_ClearITPendingBit>:
 8002ce8:	bf00      	nop
 8002cea:	bf00      	nop
 8002cec:	2301      	movs	r3, #1
 8002cee:	0c09      	lsrs	r1, r1, #16
 8002cf0:	408b      	lsls	r3, r1
 8002cf2:	6203      	str	r3, [r0, #32]
 8002cf4:	4770      	bx	lr
	...

08002cf8 <ADC_Init>:
 8002cf8:	b510      	push	{r4, lr}
 8002cfa:	bf00      	nop
 8002cfc:	bf00      	nop
 8002cfe:	bf00      	nop
 8002d00:	bf00      	nop
 8002d02:	bf00      	nop
 8002d04:	bf00      	nop
 8002d06:	bf00      	nop
 8002d08:	bf00      	nop
 8002d0a:	bf00      	nop
 8002d0c:	4b0c      	ldr	r3, [pc, #48]	; (8002d40 <ADC_Init+0x48>)
 8002d0e:	68c2      	ldr	r2, [r0, #12]
 8002d10:	4013      	ands	r3, r2
 8002d12:	e891 0014 	ldmia.w	r1, {r2, r4}
 8002d16:	4314      	orrs	r4, r2
 8002d18:	688a      	ldr	r2, [r1, #8]
 8002d1a:	4314      	orrs	r4, r2
 8002d1c:	68ca      	ldr	r2, [r1, #12]
 8002d1e:	4314      	orrs	r4, r2
 8002d20:	690a      	ldr	r2, [r1, #16]
 8002d22:	4314      	orrs	r4, r2
 8002d24:	694a      	ldr	r2, [r1, #20]
 8002d26:	4314      	orrs	r4, r2
 8002d28:	698a      	ldr	r2, [r1, #24]
 8002d2a:	4322      	orrs	r2, r4
 8002d2c:	4313      	orrs	r3, r2
 8002d2e:	60c3      	str	r3, [r0, #12]
 8002d30:	6b03      	ldr	r3, [r0, #48]	; 0x30
 8002d32:	f023 020f 	bic.w	r2, r3, #15
 8002d36:	7f0b      	ldrb	r3, [r1, #28]
 8002d38:	3b01      	subs	r3, #1
 8002d3a:	4313      	orrs	r3, r2
 8002d3c:	6303      	str	r3, [r0, #48]	; 0x30
 8002d3e:	bd10      	pop	{r4, pc}
 8002d40:	fdffc007 	.word	0xfdffc007

08002d44 <ADC_Cmd>:
 8002d44:	bf00      	nop
 8002d46:	bf00      	nop
 8002d48:	6883      	ldr	r3, [r0, #8]
 8002d4a:	b111      	cbz	r1, 8002d52 <ADC_Cmd+0xe>
 8002d4c:	f043 0301 	orr.w	r3, r3, #1
 8002d50:	e001      	b.n	8002d56 <ADC_Cmd+0x12>
 8002d52:	f043 0302 	orr.w	r3, r3, #2
 8002d56:	6083      	str	r3, [r0, #8]
 8002d58:	4770      	bx	lr

08002d5a <ADC_RegularChannelConfig>:
 8002d5a:	b530      	push	{r4, r5, lr}
 8002d5c:	bf00      	nop
 8002d5e:	bf00      	nop
 8002d60:	bf00      	nop
 8002d62:	2a04      	cmp	r2, #4
 8002d64:	d80c      	bhi.n	8002d80 <ADC_RegularChannelConfig+0x26>
 8002d66:	eb02 0242 	add.w	r2, r2, r2, lsl #1
 8002d6a:	6b05      	ldr	r5, [r0, #48]	; 0x30
 8002d6c:	0052      	lsls	r2, r2, #1
 8002d6e:	241f      	movs	r4, #31
 8002d70:	4094      	lsls	r4, r2
 8002d72:	ea25 0404 	bic.w	r4, r5, r4
 8002d76:	fa01 f202 	lsl.w	r2, r1, r2
 8002d7a:	4322      	orrs	r2, r4
 8002d7c:	6302      	str	r2, [r0, #48]	; 0x30
 8002d7e:	e029      	b.n	8002dd4 <ADC_RegularChannelConfig+0x7a>
 8002d80:	2a09      	cmp	r2, #9
 8002d82:	d80c      	bhi.n	8002d9e <ADC_RegularChannelConfig+0x44>
 8002d84:	2406      	movs	r4, #6
 8002d86:	3a05      	subs	r2, #5
 8002d88:	4362      	muls	r2, r4
 8002d8a:	6b45      	ldr	r5, [r0, #52]	; 0x34
 8002d8c:	241f      	movs	r4, #31
 8002d8e:	4094      	lsls	r4, r2
 8002d90:	ea25 0404 	bic.w	r4, r5, r4
 8002d94:	fa01 f202 	lsl.w	r2, r1, r2
 8002d98:	4322      	orrs	r2, r4
 8002d9a:	6342      	str	r2, [r0, #52]	; 0x34
 8002d9c:	e01a      	b.n	8002dd4 <ADC_RegularChannelConfig+0x7a>
 8002d9e:	2a0e      	cmp	r2, #14
 8002da0:	f04f 0406 	mov.w	r4, #6
 8002da4:	d80b      	bhi.n	8002dbe <ADC_RegularChannelConfig+0x64>
 8002da6:	3a0a      	subs	r2, #10
 8002da8:	4362      	muls	r2, r4
 8002daa:	6b85      	ldr	r5, [r0, #56]	; 0x38
 8002dac:	241f      	movs	r4, #31
 8002dae:	4094      	lsls	r4, r2
 8002db0:	ea25 0404 	bic.w	r4, r5, r4
 8002db4:	fa01 f202 	lsl.w	r2, r1, r2
 8002db8:	4322      	orrs	r2, r4
 8002dba:	6382      	str	r2, [r0, #56]	; 0x38
 8002dbc:	e00a      	b.n	8002dd4 <ADC_RegularChannelConfig+0x7a>
 8002dbe:	3a0f      	subs	r2, #15
 8002dc0:	4362      	muls	r2, r4
 8002dc2:	6bc5      	ldr	r5, [r0, #60]	; 0x3c
 8002dc4:	241f      	movs	r4, #31
 8002dc6:	4094      	lsls	r4, r2
 8002dc8:	ea25 0404 	bic.w	r4, r5, r4
 8002dcc:	fa01 f202 	lsl.w	r2, r1, r2
 8002dd0:	4322      	orrs	r2, r4
 8002dd2:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002dd4:	2909      	cmp	r1, #9
 8002dd6:	d90e      	bls.n	8002df6 <ADC_RegularChannelConfig+0x9c>
 8002dd8:	390a      	subs	r1, #10
 8002dda:	6982      	ldr	r2, [r0, #24]
 8002ddc:	6984      	ldr	r4, [r0, #24]
 8002dde:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 8002de2:	2207      	movs	r2, #7
 8002de4:	408a      	lsls	r2, r1
 8002de6:	ea24 0202 	bic.w	r2, r4, r2
 8002dea:	6182      	str	r2, [r0, #24]
 8002dec:	6982      	ldr	r2, [r0, #24]
 8002dee:	408b      	lsls	r3, r1
 8002df0:	4313      	orrs	r3, r2
 8002df2:	6183      	str	r3, [r0, #24]
 8002df4:	bd30      	pop	{r4, r5, pc}
 8002df6:	3901      	subs	r1, #1
 8002df8:	6942      	ldr	r2, [r0, #20]
 8002dfa:	6944      	ldr	r4, [r0, #20]
 8002dfc:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 8002e00:	2238      	movs	r2, #56	; 0x38
 8002e02:	408a      	lsls	r2, r1
 8002e04:	ea24 0202 	bic.w	r2, r4, r2
 8002e08:	6142      	str	r2, [r0, #20]
 8002e0a:	6942      	ldr	r2, [r0, #20]
 8002e0c:	3103      	adds	r1, #3
 8002e0e:	408b      	lsls	r3, r1
 8002e10:	4313      	orrs	r3, r2
 8002e12:	6143      	str	r3, [r0, #20]
 8002e14:	bd30      	pop	{r4, r5, pc}
	...

08002e18 <SystemInit>:
 8002e18:	4a39      	ldr	r2, [pc, #228]	; (8002f00 <SystemInit+0xe8>)
 8002e1a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002e1e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002e22:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002e26:	4b37      	ldr	r3, [pc, #220]	; (8002f04 <SystemInit+0xec>)
 8002e28:	681a      	ldr	r2, [r3, #0]
 8002e2a:	f042 0201 	orr.w	r2, r2, #1
 8002e2e:	601a      	str	r2, [r3, #0]
 8002e30:	6859      	ldr	r1, [r3, #4]
 8002e32:	4a35      	ldr	r2, [pc, #212]	; (8002f08 <SystemInit+0xf0>)
 8002e34:	400a      	ands	r2, r1
 8002e36:	605a      	str	r2, [r3, #4]
 8002e38:	681a      	ldr	r2, [r3, #0]
 8002e3a:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002e3e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002e42:	601a      	str	r2, [r3, #0]
 8002e44:	681a      	ldr	r2, [r3, #0]
 8002e46:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002e4a:	601a      	str	r2, [r3, #0]
 8002e4c:	685a      	ldr	r2, [r3, #4]
 8002e4e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002e52:	605a      	str	r2, [r3, #4]
 8002e54:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002e56:	f022 020f 	bic.w	r2, r2, #15
 8002e5a:	62da      	str	r2, [r3, #44]	; 0x2c
 8002e5c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002e5e:	4a2b      	ldr	r2, [pc, #172]	; (8002f0c <SystemInit+0xf4>)
 8002e60:	b082      	sub	sp, #8
 8002e62:	400a      	ands	r2, r1
 8002e64:	631a      	str	r2, [r3, #48]	; 0x30
 8002e66:	2200      	movs	r2, #0
 8002e68:	609a      	str	r2, [r3, #8]
 8002e6a:	9200      	str	r2, [sp, #0]
 8002e6c:	9201      	str	r2, [sp, #4]
 8002e6e:	681a      	ldr	r2, [r3, #0]
 8002e70:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002e74:	601a      	str	r2, [r3, #0]
 8002e76:	681a      	ldr	r2, [r3, #0]
 8002e78:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002e7c:	9201      	str	r2, [sp, #4]
 8002e7e:	9a00      	ldr	r2, [sp, #0]
 8002e80:	3201      	adds	r2, #1
 8002e82:	9200      	str	r2, [sp, #0]
 8002e84:	9a01      	ldr	r2, [sp, #4]
 8002e86:	b91a      	cbnz	r2, 8002e90 <SystemInit+0x78>
 8002e88:	9a00      	ldr	r2, [sp, #0]
 8002e8a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002e8e:	d1f2      	bne.n	8002e76 <SystemInit+0x5e>
 8002e90:	681a      	ldr	r2, [r3, #0]
 8002e92:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002e96:	bf18      	it	ne
 8002e98:	2201      	movne	r2, #1
 8002e9a:	9201      	str	r2, [sp, #4]
 8002e9c:	9a01      	ldr	r2, [sp, #4]
 8002e9e:	2a01      	cmp	r2, #1
 8002ea0:	d005      	beq.n	8002eae <SystemInit+0x96>
 8002ea2:	4b17      	ldr	r3, [pc, #92]	; (8002f00 <SystemInit+0xe8>)
 8002ea4:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002ea8:	609a      	str	r2, [r3, #8]
 8002eaa:	b002      	add	sp, #8
 8002eac:	4770      	bx	lr
 8002eae:	4a18      	ldr	r2, [pc, #96]	; (8002f10 <SystemInit+0xf8>)
 8002eb0:	2112      	movs	r1, #18
 8002eb2:	6011      	str	r1, [r2, #0]
 8002eb4:	685a      	ldr	r2, [r3, #4]
 8002eb6:	605a      	str	r2, [r3, #4]
 8002eb8:	685a      	ldr	r2, [r3, #4]
 8002eba:	605a      	str	r2, [r3, #4]
 8002ebc:	685a      	ldr	r2, [r3, #4]
 8002ebe:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002ec2:	605a      	str	r2, [r3, #4]
 8002ec4:	685a      	ldr	r2, [r3, #4]
 8002ec6:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002eca:	605a      	str	r2, [r3, #4]
 8002ecc:	685a      	ldr	r2, [r3, #4]
 8002ece:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002ed2:	605a      	str	r2, [r3, #4]
 8002ed4:	681a      	ldr	r2, [r3, #0]
 8002ed6:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002eda:	601a      	str	r2, [r3, #0]
 8002edc:	6819      	ldr	r1, [r3, #0]
 8002ede:	4a09      	ldr	r2, [pc, #36]	; (8002f04 <SystemInit+0xec>)
 8002ee0:	0189      	lsls	r1, r1, #6
 8002ee2:	d5fb      	bpl.n	8002edc <SystemInit+0xc4>
 8002ee4:	6851      	ldr	r1, [r2, #4]
 8002ee6:	f021 0103 	bic.w	r1, r1, #3
 8002eea:	6051      	str	r1, [r2, #4]
 8002eec:	6851      	ldr	r1, [r2, #4]
 8002eee:	f041 0102 	orr.w	r1, r1, #2
 8002ef2:	6051      	str	r1, [r2, #4]
 8002ef4:	685a      	ldr	r2, [r3, #4]
 8002ef6:	f002 020c 	and.w	r2, r2, #12
 8002efa:	2a08      	cmp	r2, #8
 8002efc:	d1fa      	bne.n	8002ef4 <SystemInit+0xdc>
 8002efe:	e7d0      	b.n	8002ea2 <SystemInit+0x8a>
 8002f00:	e000ed00 	.word	0xe000ed00
 8002f04:	40021000 	.word	0x40021000
 8002f08:	f87fc00c 	.word	0xf87fc00c
 8002f0c:	ff00fccc 	.word	0xff00fccc
 8002f10:	40022000 	.word	0x40022000

08002f14 <core_yield>:
 8002f14:	bf00      	nop
 8002f16:	4770      	bx	lr

08002f18 <sytem_clock_init>:
 8002f18:	f7ff bf7e 	b.w	8002e18 <SystemInit>

08002f1c <NVIC_Init>:
 8002f1c:	b510      	push	{r4, lr}
 8002f1e:	bf00      	nop
 8002f20:	bf00      	nop
 8002f22:	bf00      	nop
 8002f24:	78c2      	ldrb	r2, [r0, #3]
 8002f26:	7803      	ldrb	r3, [r0, #0]
 8002f28:	b312      	cbz	r2, 8002f70 <NVIC_Init+0x54>
 8002f2a:	4a17      	ldr	r2, [pc, #92]	; (8002f88 <NVIC_Init+0x6c>)
 8002f2c:	68d1      	ldr	r1, [r2, #12]
 8002f2e:	7842      	ldrb	r2, [r0, #1]
 8002f30:	43c9      	mvns	r1, r1
 8002f32:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002f36:	f1c1 0404 	rsb	r4, r1, #4
 8002f3a:	b2e4      	uxtb	r4, r4
 8002f3c:	40a2      	lsls	r2, r4
 8002f3e:	b2d4      	uxtb	r4, r2
 8002f40:	220f      	movs	r2, #15
 8002f42:	410a      	asrs	r2, r1
 8002f44:	7881      	ldrb	r1, [r0, #2]
 8002f46:	400a      	ands	r2, r1
 8002f48:	4322      	orrs	r2, r4
 8002f4a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002f4e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002f52:	0112      	lsls	r2, r2, #4
 8002f54:	b2d2      	uxtb	r2, r2
 8002f56:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002f5a:	7803      	ldrb	r3, [r0, #0]
 8002f5c:	2201      	movs	r2, #1
 8002f5e:	0959      	lsrs	r1, r3, #5
 8002f60:	f003 031f 	and.w	r3, r3, #31
 8002f64:	fa02 f303 	lsl.w	r3, r2, r3
 8002f68:	4a08      	ldr	r2, [pc, #32]	; (8002f8c <NVIC_Init+0x70>)
 8002f6a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002f6e:	bd10      	pop	{r4, pc}
 8002f70:	095a      	lsrs	r2, r3, #5
 8002f72:	2101      	movs	r1, #1
 8002f74:	f003 031f 	and.w	r3, r3, #31
 8002f78:	4099      	lsls	r1, r3
 8002f7a:	f102 0320 	add.w	r3, r2, #32
 8002f7e:	4a03      	ldr	r2, [pc, #12]	; (8002f8c <NVIC_Init+0x70>)
 8002f80:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002f84:	bd10      	pop	{r4, pc}
 8002f86:	bf00      	nop
 8002f88:	e000ed00 	.word	0xe000ed00
 8002f8c:	e000e100 	.word	0xe000e100

08002f90 <EXTI_Init>:
 8002f90:	b570      	push	{r4, r5, r6, lr}
 8002f92:	bf00      	nop
 8002f94:	bf00      	nop
 8002f96:	bf00      	nop
 8002f98:	bf00      	nop
 8002f9a:	7982      	ldrb	r2, [r0, #6]
 8002f9c:	6803      	ldr	r3, [r0, #0]
 8002f9e:	7904      	ldrb	r4, [r0, #4]
 8002fa0:	2a00      	cmp	r2, #0
 8002fa2:	d064      	beq.n	800306e <EXTI_Init+0xde>
 8002fa4:	f023 011f 	bic.w	r1, r3, #31
 8002fa8:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002fac:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002fb0:	f003 021f 	and.w	r2, r3, #31
 8002fb4:	680d      	ldr	r5, [r1, #0]
 8002fb6:	2301      	movs	r3, #1
 8002fb8:	fa03 f202 	lsl.w	r2, r3, r2
 8002fbc:	ea25 0202 	bic.w	r2, r5, r2
 8002fc0:	600a      	str	r2, [r1, #0]
 8002fc2:	6802      	ldr	r2, [r0, #0]
 8002fc4:	4d32      	ldr	r5, [pc, #200]	; (8003090 <EXTI_Init+0x100>)
 8002fc6:	f022 061f 	bic.w	r6, r2, #31
 8002fca:	f002 021f 	and.w	r2, r2, #31
 8002fce:	5971      	ldr	r1, [r6, r5]
 8002fd0:	fa03 f202 	lsl.w	r2, r3, r2
 8002fd4:	ea21 0202 	bic.w	r2, r1, r2
 8002fd8:	5172      	str	r2, [r6, r5]
 8002fda:	6801      	ldr	r1, [r0, #0]
 8002fdc:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002fe0:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002fe4:	f021 041f 	bic.w	r4, r1, #31
 8002fe8:	f001 011f 	and.w	r1, r1, #31
 8002fec:	5915      	ldr	r5, [r2, r4]
 8002fee:	fa03 f101 	lsl.w	r1, r3, r1
 8002ff2:	4329      	orrs	r1, r5
 8002ff4:	5111      	str	r1, [r2, r4]
 8002ff6:	6802      	ldr	r2, [r0, #0]
 8002ff8:	4d26      	ldr	r5, [pc, #152]	; (8003094 <EXTI_Init+0x104>)
 8002ffa:	f022 041f 	bic.w	r4, r2, #31
 8002ffe:	f002 021f 	and.w	r2, r2, #31
 8003002:	5961      	ldr	r1, [r4, r5]
 8003004:	fa03 f202 	lsl.w	r2, r3, r2
 8003008:	ea21 0202 	bic.w	r2, r1, r2
 800300c:	5162      	str	r2, [r4, r5]
 800300e:	6802      	ldr	r2, [r0, #0]
 8003010:	4c21      	ldr	r4, [pc, #132]	; (8003098 <EXTI_Init+0x108>)
 8003012:	f022 061f 	bic.w	r6, r2, #31
 8003016:	f002 021f 	and.w	r2, r2, #31
 800301a:	5931      	ldr	r1, [r6, r4]
 800301c:	fa03 f202 	lsl.w	r2, r3, r2
 8003020:	ea21 0202 	bic.w	r2, r1, r2
 8003024:	7941      	ldrb	r1, [r0, #5]
 8003026:	5132      	str	r2, [r6, r4]
 8003028:	2910      	cmp	r1, #16
 800302a:	6802      	ldr	r2, [r0, #0]
 800302c:	d112      	bne.n	8003054 <EXTI_Init+0xc4>
 800302e:	f022 011f 	bic.w	r1, r2, #31
 8003032:	f002 021f 	and.w	r2, r2, #31
 8003036:	594e      	ldr	r6, [r1, r5]
 8003038:	fa03 f202 	lsl.w	r2, r3, r2
 800303c:	4332      	orrs	r2, r6
 800303e:	514a      	str	r2, [r1, r5]
 8003040:	6802      	ldr	r2, [r0, #0]
 8003042:	f022 011f 	bic.w	r1, r2, #31
 8003046:	f002 021f 	and.w	r2, r2, #31
 800304a:	5908      	ldr	r0, [r1, r4]
 800304c:	4093      	lsls	r3, r2
 800304e:	4303      	orrs	r3, r0
 8003050:	510b      	str	r3, [r1, r4]
 8003052:	bd70      	pop	{r4, r5, r6, pc}
 8003054:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8003058:	f022 001f 	bic.w	r0, r2, #31
 800305c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8003060:	f002 021f 	and.w	r2, r2, #31
 8003064:	580c      	ldr	r4, [r1, r0]
 8003066:	4093      	lsls	r3, r2
 8003068:	4323      	orrs	r3, r4
 800306a:	500b      	str	r3, [r1, r0]
 800306c:	bd70      	pop	{r4, r5, r6, pc}
 800306e:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8003072:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8003076:	f023 041f 	bic.w	r4, r3, #31
 800307a:	2001      	movs	r0, #1
 800307c:	5911      	ldr	r1, [r2, r4]
 800307e:	f003 031f 	and.w	r3, r3, #31
 8003082:	fa00 f303 	lsl.w	r3, r0, r3
 8003086:	ea21 0303 	bic.w	r3, r1, r3
 800308a:	5113      	str	r3, [r2, r4]
 800308c:	bd70      	pop	{r4, r5, r6, pc}
 800308e:	bf00      	nop
 8003090:	40010404 	.word	0x40010404
 8003094:	40010408 	.word	0x40010408
 8003098:	4001040c 	.word	0x4001040c

0800309c <EXTI_ClearITPendingBit>:
 800309c:	f020 011f 	bic.w	r1, r0, #31
 80030a0:	2301      	movs	r3, #1
 80030a2:	f000 001f 	and.w	r0, r0, #31
 80030a6:	4a02      	ldr	r2, [pc, #8]	; (80030b0 <EXTI_ClearITPendingBit+0x14>)
 80030a8:	4083      	lsls	r3, r0
 80030aa:	508b      	str	r3, [r1, r2]
 80030ac:	4770      	bx	lr
 80030ae:	bf00      	nop
 80030b0:	40010414 	.word	0x40010414

080030b4 <GPIO_Init>:
 80030b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80030b6:	bf00      	nop
 80030b8:	bf00      	nop
 80030ba:	bf00      	nop
 80030bc:	bf00      	nop
 80030be:	2300      	movs	r3, #0
 80030c0:	680e      	ldr	r6, [r1, #0]
 80030c2:	461c      	mov	r4, r3
 80030c4:	2501      	movs	r5, #1
 80030c6:	40a5      	lsls	r5, r4
 80030c8:	ea05 0e06 	and.w	lr, r5, r6
 80030cc:	45ae      	cmp	lr, r5
 80030ce:	d12d      	bne.n	800312c <GPIO_Init+0x78>
 80030d0:	790f      	ldrb	r7, [r1, #4]
 80030d2:	1e7a      	subs	r2, r7, #1
 80030d4:	2a01      	cmp	r2, #1
 80030d6:	d817      	bhi.n	8003108 <GPIO_Init+0x54>
 80030d8:	bf00      	nop
 80030da:	2203      	movs	r2, #3
 80030dc:	6885      	ldr	r5, [r0, #8]
 80030de:	409a      	lsls	r2, r3
 80030e0:	ea25 0202 	bic.w	r2, r5, r2
 80030e4:	6082      	str	r2, [r0, #8]
 80030e6:	794d      	ldrb	r5, [r1, #5]
 80030e8:	6882      	ldr	r2, [r0, #8]
 80030ea:	409d      	lsls	r5, r3
 80030ec:	4315      	orrs	r5, r2
 80030ee:	6085      	str	r5, [r0, #8]
 80030f0:	bf00      	nop
 80030f2:	8882      	ldrh	r2, [r0, #4]
 80030f4:	b292      	uxth	r2, r2
 80030f6:	ea22 020e 	bic.w	r2, r2, lr
 80030fa:	8082      	strh	r2, [r0, #4]
 80030fc:	798a      	ldrb	r2, [r1, #6]
 80030fe:	8885      	ldrh	r5, [r0, #4]
 8003100:	40a2      	lsls	r2, r4
 8003102:	432a      	orrs	r2, r5
 8003104:	b292      	uxth	r2, r2
 8003106:	8082      	strh	r2, [r0, #4]
 8003108:	2203      	movs	r2, #3
 800310a:	6805      	ldr	r5, [r0, #0]
 800310c:	409a      	lsls	r2, r3
 800310e:	43d2      	mvns	r2, r2
 8003110:	4015      	ands	r5, r2
 8003112:	6005      	str	r5, [r0, #0]
 8003114:	6805      	ldr	r5, [r0, #0]
 8003116:	409f      	lsls	r7, r3
 8003118:	432f      	orrs	r7, r5
 800311a:	6007      	str	r7, [r0, #0]
 800311c:	68c7      	ldr	r7, [r0, #12]
 800311e:	4017      	ands	r7, r2
 8003120:	79ca      	ldrb	r2, [r1, #7]
 8003122:	fa02 f503 	lsl.w	r5, r2, r3
 8003126:	ea47 0205 	orr.w	r2, r7, r5
 800312a:	60c2      	str	r2, [r0, #12]
 800312c:	3401      	adds	r4, #1
 800312e:	2c10      	cmp	r4, #16
 8003130:	f103 0302 	add.w	r3, r3, #2
 8003134:	d1c6      	bne.n	80030c4 <GPIO_Init+0x10>
 8003136:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003138 <GPIO_SetBits>:
 8003138:	bf00      	nop
 800313a:	bf00      	nop
 800313c:	6181      	str	r1, [r0, #24]
 800313e:	4770      	bx	lr

08003140 <GPIO_PinAFConfig>:
 8003140:	b510      	push	{r4, lr}
 8003142:	bf00      	nop
 8003144:	bf00      	nop
 8003146:	bf00      	nop
 8003148:	f001 0307 	and.w	r3, r1, #7
 800314c:	08c9      	lsrs	r1, r1, #3
 800314e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8003152:	009b      	lsls	r3, r3, #2
 8003154:	6a04      	ldr	r4, [r0, #32]
 8003156:	210f      	movs	r1, #15
 8003158:	4099      	lsls	r1, r3
 800315a:	ea24 0101 	bic.w	r1, r4, r1
 800315e:	6201      	str	r1, [r0, #32]
 8003160:	6a01      	ldr	r1, [r0, #32]
 8003162:	409a      	lsls	r2, r3
 8003164:	430a      	orrs	r2, r1
 8003166:	6202      	str	r2, [r0, #32]
 8003168:	bd10      	pop	{r4, pc}

0800316a <Default_Handler>:
 800316a:	4668      	mov	r0, sp
 800316c:	f020 0107 	bic.w	r1, r0, #7
 8003170:	468d      	mov	sp, r1
 8003172:	b501      	push	{r0, lr}
 8003174:	bf00      	nop
 8003176:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 800317a:	4685      	mov	sp, r0
 800317c:	4770      	bx	lr

0800317e <HardFault_Handler>:
 800317e:	bf00      	nop
 8003180:	e7fd      	b.n	800317e <HardFault_Handler>
	...

08003184 <_reset_init>:
 8003184:	490e      	ldr	r1, [pc, #56]	; (80031c0 <_reset_init+0x3c>)
 8003186:	4b0f      	ldr	r3, [pc, #60]	; (80031c4 <_reset_init+0x40>)
 8003188:	1a5b      	subs	r3, r3, r1
 800318a:	109b      	asrs	r3, r3, #2
 800318c:	2200      	movs	r2, #0
 800318e:	429a      	cmp	r2, r3
 8003190:	d006      	beq.n	80031a0 <_reset_init+0x1c>
 8003192:	480d      	ldr	r0, [pc, #52]	; (80031c8 <_reset_init+0x44>)
 8003194:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8003198:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 800319c:	3201      	adds	r2, #1
 800319e:	e7f6      	b.n	800318e <_reset_init+0xa>
 80031a0:	4a0a      	ldr	r2, [pc, #40]	; (80031cc <_reset_init+0x48>)
 80031a2:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80031a6:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80031aa:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80031ae:	f502 720c 	add.w	r2, r2, #560	; 0x230
 80031b2:	6853      	ldr	r3, [r2, #4]
 80031b4:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 80031b8:	6053      	str	r3, [r2, #4]
 80031ba:	f7ff b9b7 	b.w	800252c <main>
 80031be:	bf00      	nop
 80031c0:	20000000 	.word	0x20000000
 80031c4:	20000034 	.word	0x20000034
 80031c8:	080033cc 	.word	0x080033cc
 80031cc:	e000ed00 	.word	0xe000ed00

080031d0 <SYSCFG_EXTILineConfig>:
 80031d0:	b510      	push	{r4, lr}
 80031d2:	bf00      	nop
 80031d4:	bf00      	nop
 80031d6:	f001 0303 	and.w	r3, r1, #3
 80031da:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 80031de:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80031e2:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 80031e6:	009b      	lsls	r3, r3, #2
 80031e8:	688c      	ldr	r4, [r1, #8]
 80031ea:	220f      	movs	r2, #15
 80031ec:	409a      	lsls	r2, r3
 80031ee:	ea24 0202 	bic.w	r2, r4, r2
 80031f2:	608a      	str	r2, [r1, #8]
 80031f4:	688a      	ldr	r2, [r1, #8]
 80031f6:	4098      	lsls	r0, r3
 80031f8:	4310      	orrs	r0, r2
 80031fa:	6088      	str	r0, [r1, #8]
 80031fc:	bd10      	pop	{r4, pc}
	...

08003200 <scheduler>:
 8003200:	b570      	push	{r4, r5, r6, lr}
 8003202:	2200      	movs	r2, #0
 8003204:	4611      	mov	r1, r2
 8003206:	4b15      	ldr	r3, [pc, #84]	; (800325c <scheduler+0x5c>)
 8003208:	200c      	movs	r0, #12
 800320a:	fb00 f401 	mul.w	r4, r0, r1
 800320e:	191e      	adds	r6, r3, r4
 8003210:	6875      	ldr	r5, [r6, #4]
 8003212:	f015 0f02 	tst.w	r5, #2
 8003216:	461d      	mov	r5, r3
 8003218:	d10a      	bne.n	8003230 <scheduler+0x30>
 800321a:	6876      	ldr	r6, [r6, #4]
 800321c:	07f6      	lsls	r6, r6, #31
 800321e:	d507      	bpl.n	8003230 <scheduler+0x30>
 8003220:	4350      	muls	r0, r2
 8003222:	5b1c      	ldrh	r4, [r3, r4]
 8003224:	5a18      	ldrh	r0, [r3, r0]
 8003226:	b2a4      	uxth	r4, r4
 8003228:	b280      	uxth	r0, r0
 800322a:	4284      	cmp	r4, r0
 800322c:	bf38      	it	cc
 800322e:	460a      	movcc	r2, r1
 8003230:	200c      	movs	r0, #12
 8003232:	4348      	muls	r0, r1
 8003234:	5a1c      	ldrh	r4, [r3, r0]
 8003236:	b2a4      	uxth	r4, r4
 8003238:	b11c      	cbz	r4, 8003242 <scheduler+0x42>
 800323a:	5a1c      	ldrh	r4, [r3, r0]
 800323c:	3c01      	subs	r4, #1
 800323e:	b2a4      	uxth	r4, r4
 8003240:	521c      	strh	r4, [r3, r0]
 8003242:	3101      	adds	r1, #1
 8003244:	2906      	cmp	r1, #6
 8003246:	d1de      	bne.n	8003206 <scheduler+0x6>
 8003248:	230c      	movs	r3, #12
 800324a:	4353      	muls	r3, r2
 800324c:	18e9      	adds	r1, r5, r3
 800324e:	8849      	ldrh	r1, [r1, #2]
 8003250:	b289      	uxth	r1, r1
 8003252:	52e9      	strh	r1, [r5, r3]
 8003254:	4b02      	ldr	r3, [pc, #8]	; (8003260 <scheduler+0x60>)
 8003256:	601a      	str	r2, [r3, #0]
 8003258:	bd70      	pop	{r4, r5, r6, pc}
 800325a:	bf00      	nop
 800325c:	20000bd4 	.word	0x20000bd4
 8003260:	20000c1c 	.word	0x20000c1c

08003264 <SysTick_Handler>:
 8003264:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8003268:	f3ef 8308 	mrs	r3, MSP
 800326c:	4c0d      	ldr	r4, [pc, #52]	; (80032a4 <SysTick_Handler+0x40>)
 800326e:	4d0e      	ldr	r5, [pc, #56]	; (80032a8 <SysTick_Handler+0x44>)
 8003270:	6822      	ldr	r2, [r4, #0]
 8003272:	3201      	adds	r2, #1
 8003274:	bf1d      	ittte	ne
 8003276:	6822      	ldrne	r2, [r4, #0]
 8003278:	210c      	movne	r1, #12
 800327a:	fb01 5202 	mlane	r2, r1, r2, r5
 800327e:	2300      	moveq	r3, #0
 8003280:	bf14      	ite	ne
 8003282:	6093      	strne	r3, [r2, #8]
 8003284:	6023      	streq	r3, [r4, #0]
 8003286:	f7ff ffbb 	bl	8003200 <scheduler>
 800328a:	6822      	ldr	r2, [r4, #0]
 800328c:	230c      	movs	r3, #12
 800328e:	fb03 5302 	mla	r3, r3, r2, r5
 8003292:	689a      	ldr	r2, [r3, #8]
 8003294:	f06f 0306 	mvn.w	r3, #6
 8003298:	469e      	mov	lr, r3
 800329a:	f382 8808 	msr	MSP, r2
 800329e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80032a2:	4770      	bx	lr
 80032a4:	20000c1c 	.word	0x20000c1c
 80032a8:	20000bd4 	.word	0x20000bd4

080032ac <__aeabi_d2f>:
 80032ac:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80032b0:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 80032b4:	bf24      	itt	cs
 80032b6:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 80032ba:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 80032be:	d90d      	bls.n	80032dc <__aeabi_d2f+0x30>
 80032c0:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 80032c4:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 80032c8:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 80032cc:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 80032d0:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 80032d4:	bf08      	it	eq
 80032d6:	f020 0001 	biceq.w	r0, r0, #1
 80032da:	4770      	bx	lr
 80032dc:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 80032e0:	d121      	bne.n	8003326 <__aeabi_d2f+0x7a>
 80032e2:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 80032e6:	bfbc      	itt	lt
 80032e8:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 80032ec:	4770      	bxlt	lr
 80032ee:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80032f2:	ea4f 5252 	mov.w	r2, r2, lsr #21
 80032f6:	f1c2 0218 	rsb	r2, r2, #24
 80032fa:	f1c2 0c20 	rsb	ip, r2, #32
 80032fe:	fa10 f30c 	lsls.w	r3, r0, ip
 8003302:	fa20 f002 	lsr.w	r0, r0, r2
 8003306:	bf18      	it	ne
 8003308:	f040 0001 	orrne.w	r0, r0, #1
 800330c:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8003310:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8003314:	fa03 fc0c 	lsl.w	ip, r3, ip
 8003318:	ea40 000c 	orr.w	r0, r0, ip
 800331c:	fa23 f302 	lsr.w	r3, r3, r2
 8003320:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8003324:	e7cc      	b.n	80032c0 <__aeabi_d2f+0x14>
 8003326:	ea7f 5362 	mvns.w	r3, r2, asr #21
 800332a:	d107      	bne.n	800333c <__aeabi_d2f+0x90>
 800332c:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8003330:	bf1e      	ittt	ne
 8003332:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8003336:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 800333a:	4770      	bxne	lr
 800333c:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8003340:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8003344:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8003348:	4770      	bx	lr
 800334a:	bf00      	nop

0800334c <_init>:
 800334c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800334e:	bf00      	nop
 8003350:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003352:	bc08      	pop	{r3}
 8003354:	469e      	mov	lr, r3
 8003356:	4770      	bx	lr

08003358 <_fini>:
 8003358:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800335a:	bf00      	nop
 800335c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800335e:	bc08      	pop	{r3}
 8003360:	469e      	mov	lr, r3
 8003362:	4770      	bx	lr
 8003364:	61646f6b 	.word	0x61646f6b
 8003368:	6920616d 	.word	0x6920616d
 800336c:	2074696e 	.word	0x2074696e
 8003370:	25206925 	.word	0x25206925
 8003374:	203a2069 	.word	0x203a2069
 8003378:	4f5b2000 	.word	0x4f5b2000
 800337c:	000a5d4b 	.word	0x000a5d4b
 8003380:	41465b20 	.word	0x41465b20
 8003384:	44454c49 	.word	0x44454c49
 8003388:	000a0a5d 	.word	0x000a0a5d
 800338c:	74737973 	.word	0x74737973
 8003390:	74206d65 	.word	0x74206d65
 8003394:	20656d69 	.word	0x20656d69
 8003398:	5b207525 	.word	0x5b207525
 800339c:	0a5d736d 	.word	0x0a5d736d
 80033a0:	00          	.byte	0x00
 80033a1:	63          	.byte	0x63
 80033a2:	6d61      	.short	0x6d61
 80033a4:	20617265 	.word	0x20617265
 80033a8:	6925203a 	.word	0x6925203a
 80033ac:	20692520 	.word	0x20692520
 80033b0:	6925000a 	.word	0x6925000a
 80033b4:	79730020 	.word	0x79730020
 80033b8:	6d657473 	.word	0x6d657473
 80033bc:	6c646920 	.word	0x6c646920
 80033c0:	75252065 	.word	0x75252065
 80033c4:	0000000a 	.word	0x0000000a

080033c8 <__EH_FRAME_BEGIN__>:
 80033c8:	00000000                                ....
