
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f000 fcb2 	bl	8000af4 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f000 fe2d 	bl	8000dfc <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 fd98 	bl	8000ce4 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fc81 	bl	8000ac8 <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f504 70b8 	add.w	r0, r4, #368	; 0x170
 80001d6:	f000 fa0d 	bl	80005f4 <_ZN6CMotor10motor_initEv>
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
 8000202:	f000 ff20 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f000 ff1b 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f000 ff16 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002d7c 	.word	0x08002d7c
 8000228:	08002d91 	.word	0x08002d91
 800022c:	08002d98 	.word	0x08002d98

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	f500 70b8 	add.w	r0, r0, #368	; 0x170
 8000234:	f000 b955 	b.w	80004e2 <_ZN6CMotor11motor_sleepEv>

08000238 <_ZN7CKodama6wakeupEv>:
 8000238:	b510      	push	{r4, lr}
 800023a:	2100      	movs	r1, #0
 800023c:	f500 74b8 	add.w	r4, r0, #368	; 0x170
 8000240:	4620      	mov	r0, r4
 8000242:	460a      	mov	r2, r1
 8000244:	f000 f9d0 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8000248:	4620      	mov	r0, r4
 800024a:	2101      	movs	r1, #1
 800024c:	2200      	movs	r2, #0
 800024e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000252:	f000 b9c9 	b.w	80005e8 <_ZN6CMotor9set_motorEml>

08000256 <_ZN7CKodama6set_dtEl>:
 8000256:	f8c0 1178 	str.w	r1, [r0, #376]	; 0x178
 800025a:	4770      	bx	lr

0800025c <_ZN4CPID4initEffff>:
 800025c:	eef0 7a00 	vmov.f32	s15, #0
 8000260:	ee70 0a20 	vadd.f32	s1, s0, s1
 8000264:	ee91 0a67 	vfnma.f32	s0, s2, s15
 8000268:	2300      	movs	r3, #0
 800026a:	6003      	str	r3, [r0, #0]
 800026c:	ee70 0a81 	vadd.f32	s1, s1, s2
 8000270:	6043      	str	r3, [r0, #4]
 8000272:	6083      	str	r3, [r0, #8]
 8000274:	edc0 0a03 	vstr	s1, [r0, #12]
 8000278:	ed80 0a04 	vstr	s0, [r0, #16]
 800027c:	ed80 1a05 	vstr	s2, [r0, #20]
 8000280:	6183      	str	r3, [r0, #24]
 8000282:	edc0 1a07 	vstr	s3, [r0, #28]
 8000286:	4770      	bx	lr

08000288 <_ZN4CPIDC1Effff>:
 8000288:	b510      	push	{r4, lr}
 800028a:	4604      	mov	r4, r0
 800028c:	f7ff ffe6 	bl	800025c <_ZN4CPID4initEffff>
 8000290:	4620      	mov	r0, r4
 8000292:	bd10      	pop	{r4, pc}

08000294 <_ZN4CPID7processEf>:
 8000294:	edd0 7a00 	vldr	s15, [r0]
 8000298:	edd0 6a04 	vldr	s13, [r0, #16]
 800029c:	ed90 7a01 	vldr	s14, [r0, #4]
 80002a0:	edc0 7a01 	vstr	s15, [r0, #4]
 80002a4:	ee67 7aa6 	vmul.f32	s15, s15, s13
 80002a8:	edd0 6a03 	vldr	s13, [r0, #12]
 80002ac:	ed80 7a02 	vstr	s14, [r0, #8]
 80002b0:	eee6 7a80 	vfma.f32	s15, s13, s0
 80002b4:	edd0 6a05 	vldr	s13, [r0, #20]
 80002b8:	ed80 0a00 	vstr	s0, [r0]
 80002bc:	eee6 7a87 	vfma.f32	s15, s13, s14
 80002c0:	ed90 7a06 	vldr	s14, [r0, #24]
 80002c4:	ee77 7a87 	vadd.f32	s15, s15, s14
 80002c8:	ed90 7a07 	vldr	s14, [r0, #28]
 80002cc:	edc0 7a06 	vstr	s15, [r0, #24]
 80002d0:	eef4 7ac7 	vcmpe.f32	s15, s14
 80002d4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002d8:	bfc8      	it	gt
 80002da:	ed80 7a06 	vstrgt	s14, [r0, #24]
 80002de:	edd0 7a06 	vldr	s15, [r0, #24]
 80002e2:	eeb1 7a47 	vneg.f32	s14, s14
 80002e6:	eef4 7ac7 	vcmpe.f32	s15, s14
 80002ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002ee:	bf48      	it	mi
 80002f0:	ed80 7a06 	vstrmi	s14, [r0, #24]
 80002f4:	ed90 0a06 	vldr	s0, [r0, #24]
 80002f8:	4770      	bx	lr

080002fa <_ZN5CMath3absEf>:
 80002fa:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 80002fe:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000302:	bf48      	it	mi
 8000304:	eeb1 0a40 	vnegmi.f32	s0, s0
 8000308:	4770      	bx	lr
	...

0800030c <_ZN5CMath4randEv>:
 800030c:	6802      	ldr	r2, [r0, #0]
 800030e:	490b      	ldr	r1, [pc, #44]	; (800033c <_ZN5CMath4randEv+0x30>)
 8000310:	f243 0339 	movw	r3, #12345	; 0x3039
 8000314:	fb01 3302 	mla	r3, r1, r2, r3
 8000318:	6841      	ldr	r1, [r0, #4]
 800031a:	6003      	str	r3, [r0, #0]
 800031c:	f341 0200 	sbfx	r2, r1, #0, #1
 8000320:	f022 523f 	bic.w	r2, r2, #801112064	; 0x2fc00000
 8000324:	f422 127f 	bic.w	r2, r2, #4177920	; 0x3fc000
 8000328:	f422 527f 	bic.w	r2, r2, #16320	; 0x3fc0
 800032c:	f022 023e 	bic.w	r2, r2, #62	; 0x3e
 8000330:	ea82 0251 	eor.w	r2, r2, r1, lsr #1
 8000334:	6042      	str	r2, [r0, #4]
 8000336:	ea82 0003 	eor.w	r0, r2, r3
 800033a:	4770      	bx	lr
 800033c:	41c64e6d 	.word	0x41c64e6d

08000340 <_ZN5CMath3rndEv>:
 8000340:	b508      	push	{r3, lr}
 8000342:	f7ff ffe3 	bl	800030c <_ZN5CMath4randEv>
 8000346:	4b09      	ldr	r3, [pc, #36]	; (800036c <_ZN5CMath3rndEv+0x2c>)
 8000348:	fbb0 f2f3 	udiv	r2, r0, r3
 800034c:	fb02 0013 	mls	r0, r2, r3, r0
 8000350:	ee07 0a90 	vmov	s15, r0
 8000354:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
 8000358:	eddf 7a05 	vldr	s15, [pc, #20]	; 8000370 <_ZN5CMath3rndEv+0x30>
 800035c:	ee80 0a27 	vdiv.f32	s0, s0, s15
 8000360:	eef7 7a00 	vmov.f32	s15, #112	; 0x70
 8000364:	ee30 0a67 	vsub.f32	s0, s0, s15
 8000368:	bd08      	pop	{r3, pc}
 800036a:	bf00      	nop
 800036c:	001e8480 	.word	0x001e8480
 8000370:	49742400 	.word	0x49742400

08000374 <_ZN13CLinePositionC1Ev>:
 8000374:	2300      	movs	r3, #0
 8000376:	18c1      	adds	r1, r0, r3
 8000378:	3304      	adds	r3, #4
 800037a:	2200      	movs	r2, #0
 800037c:	2b24      	cmp	r3, #36	; 0x24
 800037e:	608a      	str	r2, [r1, #8]
 8000380:	d1f9      	bne.n	8000376 <_ZN13CLinePositionC1Ev+0x2>
 8000382:	2300      	movs	r3, #0
 8000384:	6042      	str	r2, [r0, #4]
 8000386:	7003      	strb	r3, [r0, #0]
 8000388:	4770      	bx	lr
	...

0800038c <_ZN13CLinePosition7processEP10sRGBResult>:
 800038c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000390:	2300      	movs	r3, #0
 8000392:	ed2d 8b02 	vpush	{d8}
 8000396:	4605      	mov	r5, r0
 8000398:	460c      	mov	r4, r1
 800039a:	7003      	strb	r3, [r0, #0]
 800039c:	461a      	mov	r2, r3
 800039e:	eb04 0042 	add.w	r0, r4, r2, lsl #1
 80003a2:	eb04 0143 	add.w	r1, r4, r3, lsl #1
 80003a6:	f9b0 0036 	ldrsh.w	r0, [r0, #54]	; 0x36
 80003aa:	f9b1 1036 	ldrsh.w	r1, [r1, #54]	; 0x36
 80003ae:	4288      	cmp	r0, r1
 80003b0:	bfb8      	it	lt
 80003b2:	4613      	movlt	r3, r2
 80003b4:	3201      	adds	r2, #1
 80003b6:	2a09      	cmp	r2, #9
 80003b8:	d1f1      	bne.n	800039e <_ZN13CLinePosition7processEP10sRGBResult+0x12>
 80003ba:	eb04 0343 	add.w	r3, r4, r3, lsl #1
 80003be:	eddf 7a3d 	vldr	s15, [pc, #244]	; 80004b4 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 80003c2:	f9b3 3036 	ldrsh.w	r3, [r3, #54]	; 0x36
 80003c6:	ee07 3a10 	vmov	s14, r3
 80003ca:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80003ce:	eef0 8a67 	vmov.f32	s17, s15
 80003d2:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80003d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003da:	d566      	bpl.n	80004aa <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 80003dc:	f105 0808 	add.w	r8, r5, #8
 80003e0:	ed9f 8a35 	vldr	s16, [pc, #212]	; 80004b8 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>
 80003e4:	4647      	mov	r7, r8
 80003e6:	2600      	movs	r6, #0
 80003e8:	19a3      	adds	r3, r4, r6
 80003ea:	4834      	ldr	r0, [pc, #208]	; (80004bc <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 80003ec:	f9b3 3036 	ldrsh.w	r3, [r3, #54]	; 0x36
 80003f0:	425b      	negs	r3, r3
 80003f2:	ee07 3a90 	vmov	s15, r3
 80003f6:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
 80003fa:	eca7 0a01 	vstmia	r7!, {s0}
 80003fe:	f7ff ff7c 	bl	80002fa <_ZN5CMath3absEf>
 8000402:	eeb4 8ac0 	vcmpe.f32	s16, s0
 8000406:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800040a:	d506      	bpl.n	800041a <_ZN13CLinePosition7processEP10sRGBResult+0x8e>
 800040c:	482b      	ldr	r0, [pc, #172]	; (80004bc <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 800040e:	ed17 0a01 	vldr	s0, [r7, #-4]
 8000412:	f7ff ff72 	bl	80002fa <_ZN5CMath3absEf>
 8000416:	eeb0 8a40 	vmov.f32	s16, s0
 800041a:	3602      	adds	r6, #2
 800041c:	2e12      	cmp	r6, #18
 800041e:	d1e3      	bne.n	80003e8 <_ZN13CLinePosition7processEP10sRGBResult+0x5c>
 8000420:	4642      	mov	r2, r8
 8000422:	2309      	movs	r3, #9
 8000424:	edd2 7a00 	vldr	s15, [r2]
 8000428:	eec7 7a88 	vdiv.f32	s15, s15, s16
 800042c:	3b01      	subs	r3, #1
 800042e:	ece2 7a01 	vstmia	r2!, {s15}
 8000432:	d1f7      	bne.n	8000424 <_ZN13CLinePosition7processEP10sRGBResult+0x98>
 8000434:	2301      	movs	r3, #1
 8000436:	702b      	strb	r3, [r5, #0]
 8000438:	f9b4 3036 	ldrsh.w	r3, [r4, #54]	; 0x36
 800043c:	eddf 7a1d 	vldr	s15, [pc, #116]	; 80004b4 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 8000440:	ee07 3a10 	vmov	s14, r3
 8000444:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000448:	eeb4 7ae8 	vcmpe.f32	s14, s17
 800044c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000450:	d501      	bpl.n	8000456 <_ZN13CLinePosition7processEP10sRGBResult+0xca>
 8000452:	4b1b      	ldr	r3, [pc, #108]	; (80004c0 <_ZN13CLinePosition7processEP10sRGBResult+0x134>)
 8000454:	e028      	b.n	80004a8 <_ZN13CLinePosition7processEP10sRGBResult+0x11c>
 8000456:	f9b4 303c 	ldrsh.w	r3, [r4, #60]	; 0x3c
 800045a:	ee07 3a10 	vmov	s14, r3
 800045e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8000462:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000466:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800046a:	d502      	bpl.n	8000472 <_ZN13CLinePosition7processEP10sRGBResult+0xe6>
 800046c:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8000470:	e01a      	b.n	80004a8 <_ZN13CLinePosition7processEP10sRGBResult+0x11c>
 8000472:	f9b4 3038 	ldrsh.w	r3, [r4, #56]	; 0x38
 8000476:	ee07 3a10 	vmov	s14, r3
 800047a:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800047e:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8000482:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000486:	d502      	bpl.n	800048e <_ZN13CLinePosition7processEP10sRGBResult+0x102>
 8000488:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 800048c:	e00c      	b.n	80004a8 <_ZN13CLinePosition7processEP10sRGBResult+0x11c>
 800048e:	f9b4 403a 	ldrsh.w	r4, [r4, #58]	; 0x3a
 8000492:	ee07 4a10 	vmov	s14, r4
 8000496:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 800049a:	eeb4 7ae7 	vcmpe.f32	s14, s15
 800049e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80004a2:	d502      	bpl.n	80004aa <_ZN13CLinePosition7processEP10sRGBResult+0x11e>
 80004a4:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 80004a8:	606b      	str	r3, [r5, #4]
 80004aa:	ecbd 8b02 	vpop	{d8}
 80004ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80004b2:	bf00      	nop
 80004b4:	c2a00000 	.word	0xc2a00000
 80004b8:	38d1b717 	.word	0x38d1b717
 80004bc:	200001bc 	.word	0x200001bc
 80004c0:	bf800000 	.word	0xbf800000

080004c4 <_ZN13CLinePosition7on_lineEv>:
 80004c4:	7800      	ldrb	r0, [r0, #0]
 80004c6:	4770      	bx	lr

080004c8 <_ZN13CLinePosition17get_line_positionEv>:
 80004c8:	ed90 0a01 	vldr	s0, [r0, #4]
 80004cc:	4770      	bx	lr

080004ce <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE>:
 80004ce:	b510      	push	{r4, lr}
 80004d0:	2300      	movs	r3, #0
 80004d2:	18c2      	adds	r2, r0, r3
 80004d4:	6894      	ldr	r4, [r2, #8]
 80004d6:	18ca      	adds	r2, r1, r3
 80004d8:	3304      	adds	r3, #4
 80004da:	2b24      	cmp	r3, #36	; 0x24
 80004dc:	6014      	str	r4, [r2, #0]
 80004de:	d1f8      	bne.n	80004d2 <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE+0x4>
 80004e0:	bd10      	pop	{r4, pc}

080004e2 <_ZN6CMotor11motor_sleepEv>:
 80004e2:	4770      	bx	lr

080004e4 <_ZN6CMotor7pwm_setEmm>:
 80004e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80004e8:	b086      	sub	sp, #24
 80004ea:	2370      	movs	r3, #112	; 0x70
 80004ec:	9301      	str	r3, [sp, #4]
 80004ee:	2301      	movs	r3, #1
 80004f0:	f8ad 3008 	strh.w	r3, [sp, #8]
 80004f4:	2304      	movs	r3, #4
 80004f6:	f8ad 300a 	strh.w	r3, [sp, #10]
 80004fa:	4f17      	ldr	r7, [pc, #92]	; (8000558 <_ZN6CMotor7pwm_setEmm+0x74>)
 80004fc:	4c17      	ldr	r4, [pc, #92]	; (800055c <_ZN6CMotor7pwm_setEmm+0x78>)
 80004fe:	2302      	movs	r3, #2
 8000500:	f8ad 3010 	strh.w	r3, [sp, #16]
 8000504:	2300      	movs	r3, #0
 8000506:	f8ad 3012 	strh.w	r3, [sp, #18]
 800050a:	f8ad 3016 	strh.w	r3, [sp, #22]
 800050e:	683b      	ldr	r3, [r7, #0]
 8000510:	f242 7610 	movw	r6, #10000	; 0x2710
 8000514:	fbb3 f3f6 	udiv	r3, r3, r6
 8000518:	3b02      	subs	r3, #2
 800051a:	4359      	muls	r1, r3
 800051c:	2564      	movs	r5, #100	; 0x64
 800051e:	fbb1 f3f5 	udiv	r3, r1, r5
 8000522:	4620      	mov	r0, r4
 8000524:	a901      	add	r1, sp, #4
 8000526:	4690      	mov	r8, r2
 8000528:	f44f 7280 	mov.w	r2, #256	; 0x100
 800052c:	f8ad 2014 	strh.w	r2, [sp, #20]
 8000530:	9303      	str	r3, [sp, #12]
 8000532:	f002 fadd 	bl	8002af0 <TIM_OC1Init>
 8000536:	683b      	ldr	r3, [r7, #0]
 8000538:	fbb3 f6f6 	udiv	r6, r3, r6
 800053c:	3e02      	subs	r6, #2
 800053e:	fb06 f808 	mul.w	r8, r6, r8
 8000542:	fbb8 f5f5 	udiv	r5, r8, r5
 8000546:	4620      	mov	r0, r4
 8000548:	a901      	add	r1, sp, #4
 800054a:	9503      	str	r5, [sp, #12]
 800054c:	f002 fb16 	bl	8002b7c <TIM_OC2Init>
 8000550:	b006      	add	sp, #24
 8000552:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000556:	bf00      	nop
 8000558:	20000000 	.word	0x20000000
 800055c:	40012c00 	.word	0x40012c00

08000560 <_ZN6CMotor13motor_refreshEv>:
 8000560:	6802      	ldr	r2, [r0, #0]
 8000562:	6841      	ldr	r1, [r0, #4]
 8000564:	4b1e      	ldr	r3, [pc, #120]	; (80005e0 <_ZN6CMotor13motor_refreshEv+0x80>)
 8000566:	2a00      	cmp	r2, #0
 8000568:	b530      	push	{r4, r5, lr}
 800056a:	f04f 4490 	mov.w	r4, #1207959552	; 0x48000000
 800056e:	f44f 4500 	mov.w	r5, #32768	; 0x8000
 8000572:	d105      	bne.n	8000580 <_ZN6CMotor13motor_refreshEv+0x20>
 8000574:	f44f 6200 	mov.w	r2, #2048	; 0x800
 8000578:	61a5      	str	r5, [r4, #24]
 800057a:	619a      	str	r2, [r3, #24]
 800057c:	2264      	movs	r2, #100	; 0x64
 800057e:	e00a      	b.n	8000596 <_ZN6CMotor13motor_refreshEv+0x36>
 8000580:	dd04      	ble.n	800058c <_ZN6CMotor13motor_refreshEv+0x2c>
 8000582:	8525      	strh	r5, [r4, #40]	; 0x28
 8000584:	f44f 6400 	mov.w	r4, #2048	; 0x800
 8000588:	619c      	str	r4, [r3, #24]
 800058a:	e004      	b.n	8000596 <_ZN6CMotor13motor_refreshEv+0x36>
 800058c:	61a5      	str	r5, [r4, #24]
 800058e:	f44f 6400 	mov.w	r4, #2048	; 0x800
 8000592:	851c      	strh	r4, [r3, #40]	; 0x28
 8000594:	4252      	negs	r2, r2
 8000596:	2900      	cmp	r1, #0
 8000598:	4b11      	ldr	r3, [pc, #68]	; (80005e0 <_ZN6CMotor13motor_refreshEv+0x80>)
 800059a:	4c12      	ldr	r4, [pc, #72]	; (80005e4 <_ZN6CMotor13motor_refreshEv+0x84>)
 800059c:	f04f 0520 	mov.w	r5, #32
 80005a0:	d105      	bne.n	80005ae <_ZN6CMotor13motor_refreshEv+0x4e>
 80005a2:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80005a6:	61a5      	str	r5, [r4, #24]
 80005a8:	6199      	str	r1, [r3, #24]
 80005aa:	2164      	movs	r1, #100	; 0x64
 80005ac:	e00a      	b.n	80005c4 <_ZN6CMotor13motor_refreshEv+0x64>
 80005ae:	dd04      	ble.n	80005ba <_ZN6CMotor13motor_refreshEv+0x5a>
 80005b0:	8525      	strh	r5, [r4, #40]	; 0x28
 80005b2:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80005b6:	619c      	str	r4, [r3, #24]
 80005b8:	e004      	b.n	80005c4 <_ZN6CMotor13motor_refreshEv+0x64>
 80005ba:	61a5      	str	r5, [r4, #24]
 80005bc:	f44f 6480 	mov.w	r4, #1024	; 0x400
 80005c0:	851c      	strh	r4, [r3, #40]	; 0x28
 80005c2:	4249      	negs	r1, r1
 80005c4:	2964      	cmp	r1, #100	; 0x64
 80005c6:	bfa8      	it	ge
 80005c8:	2164      	movge	r1, #100	; 0x64
 80005ca:	2a64      	cmp	r2, #100	; 0x64
 80005cc:	bfa8      	it	ge
 80005ce:	2264      	movge	r2, #100	; 0x64
 80005d0:	f1c1 0164 	rsb	r1, r1, #100	; 0x64
 80005d4:	f1c2 0264 	rsb	r2, r2, #100	; 0x64
 80005d8:	e8bd 4030 	ldmia.w	sp!, {r4, r5, lr}
 80005dc:	f7ff bf82 	b.w	80004e4 <_ZN6CMotor7pwm_setEmm>
 80005e0:	48000800 	.word	0x48000800
 80005e4:	48000400 	.word	0x48000400

080005e8 <_ZN6CMotor9set_motorEml>:
 80005e8:	2901      	cmp	r1, #1
 80005ea:	bf98      	it	ls
 80005ec:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 80005f0:	f7ff bfb6 	b.w	8000560 <_ZN6CMotor13motor_refreshEv>

080005f4 <_ZN6CMotor10motor_initEv>:
 80005f4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80005f8:	4e51      	ldr	r6, [pc, #324]	; (8000740 <_ZN6CMotor10motor_initEv+0x14c>)
 80005fa:	b086      	sub	sp, #24
 80005fc:	2400      	movs	r4, #0
 80005fe:	2501      	movs	r5, #1
 8000600:	2703      	movs	r7, #3
 8000602:	4681      	mov	r9, r0
 8000604:	f04f 0820 	mov.w	r8, #32
 8000608:	4630      	mov	r0, r6
 800060a:	a901      	add	r1, sp, #4
 800060c:	f8cd 8004 	str.w	r8, [sp, #4]
 8000610:	f88d 5008 	strb.w	r5, [sp, #8]
 8000614:	f88d 400a 	strb.w	r4, [sp, #10]
 8000618:	f88d 7009 	strb.w	r7, [sp, #9]
 800061c:	f88d 400b 	strb.w	r4, [sp, #11]
 8000620:	f001 fdc8 	bl	80021b4 <GPIO_Init>
 8000624:	f8c6 8018 	str.w	r8, [r6, #24]
 8000628:	f8df 8120 	ldr.w	r8, [pc, #288]	; 800074c <_ZN6CMotor10motor_initEv+0x158>
 800062c:	f88d 5008 	strb.w	r5, [sp, #8]
 8000630:	f44f 6a80 	mov.w	sl, #1024	; 0x400
 8000634:	4640      	mov	r0, r8
 8000636:	a901      	add	r1, sp, #4
 8000638:	f8cd a004 	str.w	sl, [sp, #4]
 800063c:	f88d 400a 	strb.w	r4, [sp, #10]
 8000640:	f88d 7009 	strb.w	r7, [sp, #9]
 8000644:	f88d 400b 	strb.w	r4, [sp, #11]
 8000648:	f001 fdb4 	bl	80021b4 <GPIO_Init>
 800064c:	f8c8 a018 	str.w	sl, [r8, #24]
 8000650:	a901      	add	r1, sp, #4
 8000652:	f44f 4a00 	mov.w	sl, #32768	; 0x8000
 8000656:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800065a:	f8cd a004 	str.w	sl, [sp, #4]
 800065e:	f88d 5008 	strb.w	r5, [sp, #8]
 8000662:	f88d 400a 	strb.w	r4, [sp, #10]
 8000666:	f88d 7009 	strb.w	r7, [sp, #9]
 800066a:	f88d 400b 	strb.w	r4, [sp, #11]
 800066e:	f001 fda1 	bl	80021b4 <GPIO_Init>
 8000672:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000676:	4640      	mov	r0, r8
 8000678:	f8c3 a018 	str.w	sl, [r3, #24]
 800067c:	a901      	add	r1, sp, #4
 800067e:	f44f 6a00 	mov.w	sl, #2048	; 0x800
 8000682:	f8cd a004 	str.w	sl, [sp, #4]
 8000686:	f88d 5008 	strb.w	r5, [sp, #8]
 800068a:	f88d 400a 	strb.w	r4, [sp, #10]
 800068e:	f88d 7009 	strb.w	r7, [sp, #9]
 8000692:	f88d 400b 	strb.w	r4, [sp, #11]
 8000696:	f001 fd8d 	bl	80021b4 <GPIO_Init>
 800069a:	4650      	mov	r0, sl
 800069c:	4629      	mov	r1, r5
 800069e:	f8c8 a018 	str.w	sl, [r8, #24]
 80006a2:	f002 f8c1 	bl	8002828 <RCC_APB2PeriphClockCmd>
 80006a6:	4629      	mov	r1, r5
 80006a8:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80006ac:	f002 f8ae 	bl	800280c <RCC_AHBPeriphClockCmd>
 80006b0:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80006b4:	9301      	str	r3, [sp, #4]
 80006b6:	4630      	mov	r0, r6
 80006b8:	2302      	movs	r3, #2
 80006ba:	a901      	add	r1, sp, #4
 80006bc:	f88d 3008 	strb.w	r3, [sp, #8]
 80006c0:	f88d 7009 	strb.w	r7, [sp, #9]
 80006c4:	f001 fd76 	bl	80021b4 <GPIO_Init>
 80006c8:	4630      	mov	r0, r6
 80006ca:	210d      	movs	r1, #13
 80006cc:	2206      	movs	r2, #6
 80006ce:	f001 fdba 	bl	8002246 <GPIO_PinAFConfig>
 80006d2:	4630      	mov	r0, r6
 80006d4:	210e      	movs	r1, #14
 80006d6:	2206      	movs	r2, #6
 80006d8:	f001 fdb5 	bl	8002246 <GPIO_PinAFConfig>
 80006dc:	4b19      	ldr	r3, [pc, #100]	; (8000744 <_ZN6CMotor10motor_initEv+0x150>)
 80006de:	4e1a      	ldr	r6, [pc, #104]	; (8000748 <_ZN6CMotor10motor_initEv+0x154>)
 80006e0:	681a      	ldr	r2, [r3, #0]
 80006e2:	f8ad 400c 	strh.w	r4, [sp, #12]
 80006e6:	f242 7310 	movw	r3, #10000	; 0x2710
 80006ea:	fbb2 f3f3 	udiv	r3, r2, r3
 80006ee:	3b01      	subs	r3, #1
 80006f0:	4630      	mov	r0, r6
 80006f2:	a903      	add	r1, sp, #12
 80006f4:	9304      	str	r3, [sp, #16]
 80006f6:	f8ad 400e 	strh.w	r4, [sp, #14]
 80006fa:	f8ad 4014 	strh.w	r4, [sp, #20]
 80006fe:	f8ad 4016 	strh.w	r4, [sp, #22]
 8000702:	f002 f997 	bl	8002a34 <TIM_TimeBaseInit>
 8000706:	4622      	mov	r2, r4
 8000708:	4648      	mov	r0, r9
 800070a:	4621      	mov	r1, r4
 800070c:	f7ff feea 	bl	80004e4 <_ZN6CMotor7pwm_setEmm>
 8000710:	4630      	mov	r0, r6
 8000712:	4629      	mov	r1, r5
 8000714:	f002 f9de 	bl	8002ad4 <TIM_Cmd>
 8000718:	4630      	mov	r0, r6
 800071a:	4629      	mov	r1, r5
 800071c:	f002 fa6c 	bl	8002bf8 <TIM_CtrlPWMOutputs>
 8000720:	4648      	mov	r0, r9
 8000722:	4621      	mov	r1, r4
 8000724:	f06f 0231 	mvn.w	r2, #49	; 0x31
 8000728:	f7ff ff5e 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 800072c:	4648      	mov	r0, r9
 800072e:	4629      	mov	r1, r5
 8000730:	f06f 0231 	mvn.w	r2, #49	; 0x31
 8000734:	f7ff ff58 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8000738:	4620      	mov	r0, r4
 800073a:	b006      	add	sp, #24
 800073c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000740:	48000400 	.word	0x48000400
 8000744:	20000000 	.word	0x20000000
 8000748:	40012c00 	.word	0x40012c00
 800074c:	48000800 	.word	0x48000800

08000750 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000750:	bf00      	nop
 8000752:	bf00      	nop
 8000754:	bf00      	nop
 8000756:	bf00      	nop
 8000758:	4770      	bx	lr
	...

0800075c <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 800075c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800075e:	7803      	ldrb	r3, [r0, #0]
 8000760:	9300      	str	r3, [sp, #0]
 8000762:	2401      	movs	r4, #1
 8000764:	4605      	mov	r5, r0
 8000766:	2703      	movs	r7, #3
 8000768:	2600      	movs	r6, #0
 800076a:	4669      	mov	r1, sp
 800076c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000770:	f88d 6007 	strb.w	r6, [sp, #7]
 8000774:	f88d 4004 	strb.w	r4, [sp, #4]
 8000778:	f88d 7005 	strb.w	r7, [sp, #5]
 800077c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000780:	f001 fd18 	bl	80021b4 <GPIO_Init>
 8000784:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000788:	782a      	ldrb	r2, [r5, #0]
 800078a:	851a      	strh	r2, [r3, #40]	; 0x28
 800078c:	f88d 6007 	strb.w	r6, [sp, #7]
 8000790:	4e08      	ldr	r6, [pc, #32]	; (80007b4 <_ZN8CRGB_I2C12RGBSetLowSDAEv+0x58>)
 8000792:	9400      	str	r4, [sp, #0]
 8000794:	4630      	mov	r0, r6
 8000796:	4669      	mov	r1, sp
 8000798:	f88d 4004 	strb.w	r4, [sp, #4]
 800079c:	f88d 7005 	strb.w	r7, [sp, #5]
 80007a0:	f88d 4006 	strb.w	r4, [sp, #6]
 80007a4:	f001 fd06 	bl	80021b4 <GPIO_Init>
 80007a8:	8534      	strh	r4, [r6, #40]	; 0x28
 80007aa:	4628      	mov	r0, r5
 80007ac:	f7ff ffd0 	bl	8000750 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80007b0:	b003      	add	sp, #12
 80007b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007b4:	48000400 	.word	0x48000400

080007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 80007b8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007ba:	7803      	ldrb	r3, [r0, #0]
 80007bc:	9300      	str	r3, [sp, #0]
 80007be:	2400      	movs	r4, #0
 80007c0:	4605      	mov	r5, r0
 80007c2:	2703      	movs	r7, #3
 80007c4:	4669      	mov	r1, sp
 80007c6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80007ca:	f88d 4004 	strb.w	r4, [sp, #4]
 80007ce:	f88d 4007 	strb.w	r4, [sp, #7]
 80007d2:	f88d 7005 	strb.w	r7, [sp, #5]
 80007d6:	f001 fced 	bl	80021b4 <GPIO_Init>
 80007da:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007de:	782a      	ldrb	r2, [r5, #0]
 80007e0:	619a      	str	r2, [r3, #24]
 80007e2:	f88d 4004 	strb.w	r4, [sp, #4]
 80007e6:	f88d 4007 	strb.w	r4, [sp, #7]
 80007ea:	4c07      	ldr	r4, [pc, #28]	; (8000808 <_ZN8CRGB_I2C13RGBSetHighSDAEv+0x50>)
 80007ec:	f88d 7005 	strb.w	r7, [sp, #5]
 80007f0:	2601      	movs	r6, #1
 80007f2:	4620      	mov	r0, r4
 80007f4:	4669      	mov	r1, sp
 80007f6:	9600      	str	r6, [sp, #0]
 80007f8:	f001 fcdc 	bl	80021b4 <GPIO_Init>
 80007fc:	61a6      	str	r6, [r4, #24]
 80007fe:	4628      	mov	r0, r5
 8000800:	f7ff ffa6 	bl	8000750 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000804:	b003      	add	sp, #12
 8000806:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000808:	48000400 	.word	0x48000400

0800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 800080c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000810:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000814:	851a      	strh	r2, [r3, #40]	; 0x28
 8000816:	f7ff bf9b 	b.w	8000750 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

0800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 800081a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800081e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000822:	619a      	str	r2, [r3, #24]
 8000824:	f7ff bf94 	b.w	8000750 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000828 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000828:	b510      	push	{r4, lr}
 800082a:	4604      	mov	r4, r0
 800082c:	f7ff fff5 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000830:	4620      	mov	r0, r4
 8000832:	f7ff ffc1 	bl	80007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000836:	4620      	mov	r0, r4
 8000838:	f7ff ffef 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800083c:	4620      	mov	r0, r4
 800083e:	f7ff ff8d 	bl	800075c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000842:	4620      	mov	r0, r4
 8000844:	f7ff ffe2 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000848:	4620      	mov	r0, r4
 800084a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800084e:	f7ff bfb3 	b.w	80007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000852 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000852:	b510      	push	{r4, lr}
 8000854:	4604      	mov	r4, r0
 8000856:	f7ff ffd9 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800085a:	4620      	mov	r0, r4
 800085c:	f7ff ff7e 	bl	800075c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000860:	4620      	mov	r0, r4
 8000862:	f7ff ffda 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000866:	4620      	mov	r0, r4
 8000868:	f7ff ff78 	bl	800075c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800086c:	4620      	mov	r0, r4
 800086e:	f7ff ffd4 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000872:	4620      	mov	r0, r4
 8000874:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000878:	f7ff bf9e 	b.w	80007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 800087c:	b570      	push	{r4, r5, r6, lr}
 800087e:	4604      	mov	r4, r0
 8000880:	460d      	mov	r5, r1
 8000882:	2608      	movs	r6, #8
 8000884:	4620      	mov	r0, r4
 8000886:	f7ff ffc1 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800088a:	062b      	lsls	r3, r5, #24
 800088c:	4620      	mov	r0, r4
 800088e:	d502      	bpl.n	8000896 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000890:	f7ff ff92 	bl	80007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000894:	e001      	b.n	800089a <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000896:	f7ff ff61 	bl	800075c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800089a:	4620      	mov	r0, r4
 800089c:	3e01      	subs	r6, #1
 800089e:	f7ff ffbc 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008a2:	006d      	lsls	r5, r5, #1
 80008a4:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 80008a8:	b2ed      	uxtb	r5, r5
 80008aa:	d1eb      	bne.n	8000884 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 80008ac:	4620      	mov	r0, r4
 80008ae:	f7ff ffad 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80008b2:	4620      	mov	r0, r4
 80008b4:	f7ff ff80 	bl	80007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80008b8:	4620      	mov	r0, r4
 80008ba:	f7ff ffae 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008be:	4620      	mov	r0, r4
 80008c0:	f7ff ffa4 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80008c4:	4620      	mov	r0, r4
 80008c6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80008ca:	f7ff bf41 	b.w	8000750 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

080008ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 80008ce:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008d0:	4604      	mov	r4, r0
 80008d2:	460e      	mov	r6, r1
 80008d4:	4615      	mov	r5, r2
 80008d6:	461f      	mov	r7, r3
 80008d8:	f7ff ffa6 	bl	8000828 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80008dc:	4620      	mov	r0, r4
 80008de:	4631      	mov	r1, r6
 80008e0:	f7ff ffcc 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80008e4:	4620      	mov	r0, r4
 80008e6:	4629      	mov	r1, r5
 80008e8:	f7ff ffc8 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80008ec:	4620      	mov	r0, r4
 80008ee:	4639      	mov	r1, r7
 80008f0:	f7ff ffc4 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80008f4:	4620      	mov	r0, r4
 80008f6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80008fa:	f7ff bfaa 	b.w	8000852 <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000900:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000902:	4605      	mov	r5, r0
 8000904:	460f      	mov	r7, r1
 8000906:	4614      	mov	r4, r2
 8000908:	2300      	movs	r3, #0
 800090a:	2200      	movs	r2, #0
 800090c:	54e2      	strb	r2, [r4, r3]
 800090e:	3301      	adds	r3, #1
 8000910:	2b09      	cmp	r3, #9
 8000912:	d1fa      	bne.n	800090a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xa>
 8000914:	4628      	mov	r0, r5
 8000916:	f7ff ff79 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800091a:	4628      	mov	r0, r5
 800091c:	f7ff ff4c 	bl	80007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000920:	2608      	movs	r6, #8
 8000922:	2300      	movs	r3, #0
 8000924:	5ce2      	ldrb	r2, [r4, r3]
 8000926:	0052      	lsls	r2, r2, #1
 8000928:	54e2      	strb	r2, [r4, r3]
 800092a:	3301      	adds	r3, #1
 800092c:	2b09      	cmp	r3, #9
 800092e:	d1f9      	bne.n	8000924 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000930:	4628      	mov	r0, r5
 8000932:	f7ff ff72 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000936:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800093a:	8a1b      	ldrh	r3, [r3, #16]
 800093c:	b29b      	uxth	r3, r3
 800093e:	07d9      	lsls	r1, r3, #31
 8000940:	d503      	bpl.n	800094a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x4a>
 8000942:	7822      	ldrb	r2, [r4, #0]
 8000944:	f042 0201 	orr.w	r2, r2, #1
 8000948:	7022      	strb	r2, [r4, #0]
 800094a:	079a      	lsls	r2, r3, #30
 800094c:	d503      	bpl.n	8000956 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x56>
 800094e:	7862      	ldrb	r2, [r4, #1]
 8000950:	f042 0201 	orr.w	r2, r2, #1
 8000954:	7062      	strb	r2, [r4, #1]
 8000956:	0758      	lsls	r0, r3, #29
 8000958:	d503      	bpl.n	8000962 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x62>
 800095a:	78a2      	ldrb	r2, [r4, #2]
 800095c:	f042 0201 	orr.w	r2, r2, #1
 8000960:	70a2      	strb	r2, [r4, #2]
 8000962:	0719      	lsls	r1, r3, #28
 8000964:	d503      	bpl.n	800096e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x6e>
 8000966:	78e2      	ldrb	r2, [r4, #3]
 8000968:	f042 0201 	orr.w	r2, r2, #1
 800096c:	70e2      	strb	r2, [r4, #3]
 800096e:	06da      	lsls	r2, r3, #27
 8000970:	d503      	bpl.n	800097a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x7a>
 8000972:	7922      	ldrb	r2, [r4, #4]
 8000974:	f042 0201 	orr.w	r2, r2, #1
 8000978:	7122      	strb	r2, [r4, #4]
 800097a:	0698      	lsls	r0, r3, #26
 800097c:	d503      	bpl.n	8000986 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x86>
 800097e:	7962      	ldrb	r2, [r4, #5]
 8000980:	f042 0201 	orr.w	r2, r2, #1
 8000984:	7162      	strb	r2, [r4, #5]
 8000986:	0659      	lsls	r1, r3, #25
 8000988:	d503      	bpl.n	8000992 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x92>
 800098a:	79a2      	ldrb	r2, [r4, #6]
 800098c:	f042 0201 	orr.w	r2, r2, #1
 8000990:	71a2      	strb	r2, [r4, #6]
 8000992:	061a      	lsls	r2, r3, #24
 8000994:	d503      	bpl.n	800099e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x9e>
 8000996:	79e3      	ldrb	r3, [r4, #7]
 8000998:	f043 0301 	orr.w	r3, r3, #1
 800099c:	71e3      	strb	r3, [r4, #7]
 800099e:	4b0e      	ldr	r3, [pc, #56]	; (80009d8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xd8>)
 80009a0:	8a1b      	ldrh	r3, [r3, #16]
 80009a2:	07db      	lsls	r3, r3, #31
 80009a4:	d503      	bpl.n	80009ae <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xae>
 80009a6:	7a23      	ldrb	r3, [r4, #8]
 80009a8:	f043 0301 	orr.w	r3, r3, #1
 80009ac:	7223      	strb	r3, [r4, #8]
 80009ae:	4628      	mov	r0, r5
 80009b0:	f7ff ff2c 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80009b4:	3e01      	subs	r6, #1
 80009b6:	d1b4      	bne.n	8000922 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x22>
 80009b8:	b117      	cbz	r7, 80009c0 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xc0>
 80009ba:	4628      	mov	r0, r5
 80009bc:	f7ff fece 	bl	800075c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80009c0:	4628      	mov	r0, r5
 80009c2:	f7ff ff2a 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80009c6:	4628      	mov	r0, r5
 80009c8:	f7ff ff20 	bl	800080c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80009cc:	4628      	mov	r0, r5
 80009ce:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80009d2:	f7ff bebd 	b.w	8000750 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80009d6:	bf00      	nop
 80009d8:	48000400 	.word	0x48000400

080009dc <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 80009dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009de:	4604      	mov	r4, r0
 80009e0:	460d      	mov	r5, r1
 80009e2:	4616      	mov	r6, r2
 80009e4:	461f      	mov	r7, r3
 80009e6:	f7ff ff1f 	bl	8000828 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80009ea:	4620      	mov	r0, r4
 80009ec:	4629      	mov	r1, r5
 80009ee:	f7ff ff45 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80009f2:	4631      	mov	r1, r6
 80009f4:	4620      	mov	r0, r4
 80009f6:	f7ff ff41 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80009fa:	4620      	mov	r0, r4
 80009fc:	f7ff ff14 	bl	8000828 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000a00:	4620      	mov	r0, r4
 8000a02:	f045 0101 	orr.w	r1, r5, #1
 8000a06:	f7ff ff39 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a0a:	4620      	mov	r0, r4
 8000a0c:	463a      	mov	r2, r7
 8000a0e:	2100      	movs	r1, #0
 8000a10:	f7ff ff76 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000a14:	4620      	mov	r0, r4
 8000a16:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000a1a:	f7ff bf1a 	b.w	8000852 <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000a20 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000a20:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8000a24:	f04f 33ff 	mov.w	r3, #4294967295
 8000a28:	2400      	movs	r4, #0
 8000a2a:	4605      	mov	r5, r0
 8000a2c:	2601      	movs	r6, #1
 8000a2e:	2703      	movs	r7, #3
 8000a30:	6003      	str	r3, [r0, #0]
 8000a32:	4669      	mov	r1, sp
 8000a34:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000a38:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a3c:	9300      	str	r3, [sp, #0]
 8000a3e:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a42:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a46:	f04f 08ff 	mov.w	r8, #255	; 0xff
 8000a4a:	f88d 6004 	strb.w	r6, [sp, #4]
 8000a4e:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a52:	f001 fbaf 	bl	80021b4 <GPIO_Init>
 8000a56:	4669      	mov	r1, sp
 8000a58:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a5c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a60:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a64:	f8cd 8000 	str.w	r8, [sp]
 8000a68:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a6c:	f001 fba2 	bl	80021b4 <GPIO_Init>
 8000a70:	4641      	mov	r1, r8
 8000a72:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a76:	f001 fbe2 	bl	800223e <GPIO_SetBits>
 8000a7a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a7e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a82:	4c0c      	ldr	r4, [pc, #48]	; (8000ab4 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x94>)
 8000a84:	9600      	str	r6, [sp, #0]
 8000a86:	4620      	mov	r0, r4
 8000a88:	4669      	mov	r1, sp
 8000a8a:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a8e:	f001 fb91 	bl	80021b4 <GPIO_Init>
 8000a92:	4631      	mov	r1, r6
 8000a94:	4620      	mov	r0, r4
 8000a96:	f001 fbd2 	bl	800223e <GPIO_SetBits>
 8000a9a:	4628      	mov	r0, r5
 8000a9c:	f7ff febd 	bl	800081a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000aa0:	4628      	mov	r0, r5
 8000aa2:	f7ff fe5b 	bl	800075c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000aa6:	4628      	mov	r0, r5
 8000aa8:	f7ff fe86 	bl	80007b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000aac:	b002      	add	sp, #8
 8000aae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000ab2:	bf00      	nop
 8000ab4:	48000400 	.word	0x48000400

08000ab8 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>:
 8000ab8:	2300      	movs	r3, #0
 8000aba:	6003      	str	r3, [r0, #0]
 8000abc:	4770      	bx	lr

08000abe <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>:
 8000abe:	f04f 33ff 	mov.w	r3, #4294967295
 8000ac2:	6003      	str	r3, [r0, #0]
 8000ac4:	4770      	bx	lr
	...

08000ac8 <_ZN8CSensors12sensors_initEv>:
 8000ac8:	b510      	push	{r4, lr}
 8000aca:	4604      	mov	r4, r0
 8000acc:	4808      	ldr	r0, [pc, #32]	; (8000af0 <_ZN8CSensors12sensors_initEv+0x28>)
 8000ace:	f000 fc83 	bl	80013d8 <_ZN4CI2C4initEv>
 8000ad2:	4620      	mov	r0, r4
 8000ad4:	f000 fe8a 	bl	80017ec <_ZN4CRGB8rgb_initEv>
 8000ad8:	b110      	cbz	r0, 8000ae0 <_ZN8CSensors12sensors_initEv+0x18>
 8000ada:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000ade:	bd10      	pop	{r4, pc}
 8000ae0:	f504 7098 	add.w	r0, r4, #304	; 0x130
 8000ae4:	f000 fbbc 	bl	8001260 <_ZN4CIMU8imu_initEv>
 8000ae8:	b108      	cbz	r0, 8000aee <_ZN8CSensors12sensors_initEv+0x26>
 8000aea:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000aee:	bd10      	pop	{r4, pc}
 8000af0:	20000234 	.word	0x20000234

08000af4 <_ZN5CGPIO9gpio_initEv>:
 8000af4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000af8:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000afc:	b087      	sub	sp, #28
 8000afe:	2101      	movs	r1, #1
 8000b00:	f001 fe84 	bl	800280c <RCC_AHBPeriphClockCmd>
 8000b04:	4f44      	ldr	r7, [pc, #272]	; (8000c18 <_ZN5CGPIO9gpio_initEv+0x124>)
 8000b06:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000b0a:	2101      	movs	r1, #1
 8000b0c:	f001 fe7e 	bl	800280c <RCC_AHBPeriphClockCmd>
 8000b10:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000b14:	2101      	movs	r1, #1
 8000b16:	2400      	movs	r4, #0
 8000b18:	f001 fe78 	bl	800280c <RCC_AHBPeriphClockCmd>
 8000b1c:	2501      	movs	r5, #1
 8000b1e:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 8000b22:	2603      	movs	r6, #3
 8000b24:	4638      	mov	r0, r7
 8000b26:	a902      	add	r1, sp, #8
 8000b28:	f88d 600d 	strb.w	r6, [sp, #13]
 8000b2c:	f8cd 8008 	str.w	r8, [sp, #8]
 8000b30:	f88d 500c 	strb.w	r5, [sp, #12]
 8000b34:	f88d 400e 	strb.w	r4, [sp, #14]
 8000b38:	f88d 400f 	strb.w	r4, [sp, #15]
 8000b3c:	f001 fb3a 	bl	80021b4 <GPIO_Init>
 8000b40:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000b44:	4638      	mov	r0, r7
 8000b46:	a902      	add	r1, sp, #8
 8000b48:	9302      	str	r3, [sp, #8]
 8000b4a:	f88d 600d 	strb.w	r6, [sp, #13]
 8000b4e:	f88d 400c 	strb.w	r4, [sp, #12]
 8000b52:	f88d 400f 	strb.w	r4, [sp, #15]
 8000b56:	f001 fb2d 	bl	80021b4 <GPIO_Init>
 8000b5a:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8000b5e:	a902      	add	r1, sp, #8
 8000b60:	482e      	ldr	r0, [pc, #184]	; (8000c1c <_ZN5CGPIO9gpio_initEv+0x128>)
 8000b62:	9302      	str	r3, [sp, #8]
 8000b64:	f88d 400c 	strb.w	r4, [sp, #12]
 8000b68:	f88d 500f 	strb.w	r5, [sp, #15]
 8000b6c:	f001 fb22 	bl	80021b4 <GPIO_Init>
 8000b70:	4628      	mov	r0, r5
 8000b72:	4629      	mov	r1, r5
 8000b74:	f001 fe58 	bl	8002828 <RCC_APB2PeriphClockCmd>
 8000b78:	f04f 0a10 	mov.w	sl, #16
 8000b7c:	2106      	movs	r1, #6
 8000b7e:	2002      	movs	r0, #2
 8000b80:	f001 fc8c 	bl	800249c <SYSCFG_EXTILineConfig>
 8000b84:	f04f 0906 	mov.w	r9, #6
 8000b88:	eb0d 000a 	add.w	r0, sp, sl
 8000b8c:	260f      	movs	r6, #15
 8000b8e:	f8cd 9010 	str.w	r9, [sp, #16]
 8000b92:	f88d 4014 	strb.w	r4, [sp, #20]
 8000b96:	f88d a015 	strb.w	sl, [sp, #21]
 8000b9a:	f88d 5016 	strb.w	r5, [sp, #22]
 8000b9e:	f001 fb69 	bl	8002274 <EXTI_Init>
 8000ba2:	2317      	movs	r3, #23
 8000ba4:	a801      	add	r0, sp, #4
 8000ba6:	f88d 3004 	strb.w	r3, [sp, #4]
 8000baa:	f88d 6005 	strb.w	r6, [sp, #5]
 8000bae:	f88d 6006 	strb.w	r6, [sp, #6]
 8000bb2:	f88d 5007 	strb.w	r5, [sp, #7]
 8000bb6:	f001 ff05 	bl	80029c4 <NVIC_Init>
 8000bba:	210c      	movs	r1, #12
 8000bbc:	2002      	movs	r0, #2
 8000bbe:	f001 fc6d 	bl	800249c <SYSCFG_EXTILineConfig>
 8000bc2:	f04f 0b0c 	mov.w	fp, #12
 8000bc6:	eb0d 000a 	add.w	r0, sp, sl
 8000bca:	f8cd b010 	str.w	fp, [sp, #16]
 8000bce:	f88d 4014 	strb.w	r4, [sp, #20]
 8000bd2:	f88d a015 	strb.w	sl, [sp, #21]
 8000bd6:	f88d 5016 	strb.w	r5, [sp, #22]
 8000bda:	f001 fb4b 	bl	8002274 <EXTI_Init>
 8000bde:	2328      	movs	r3, #40	; 0x28
 8000be0:	a801      	add	r0, sp, #4
 8000be2:	f88d 3004 	strb.w	r3, [sp, #4]
 8000be6:	f88d 6005 	strb.w	r6, [sp, #5]
 8000bea:	f88d 6006 	strb.w	r6, [sp, #6]
 8000bee:	f88d 5007 	strb.w	r5, [sp, #7]
 8000bf2:	f001 fee7 	bl	80029c4 <NVIC_Init>
 8000bf6:	4648      	mov	r0, r9
 8000bf8:	f001 fbc2 	bl	8002380 <EXTI_ClearITPendingBit>
 8000bfc:	4658      	mov	r0, fp
 8000bfe:	f001 fbbf 	bl	8002380 <EXTI_ClearITPendingBit>
 8000c02:	4b07      	ldr	r3, [pc, #28]	; (8000c20 <_ZN5CGPIO9gpio_initEv+0x12c>)
 8000c04:	601c      	str	r4, [r3, #0]
 8000c06:	4b07      	ldr	r3, [pc, #28]	; (8000c24 <_ZN5CGPIO9gpio_initEv+0x130>)
 8000c08:	4620      	mov	r0, r4
 8000c0a:	601c      	str	r4, [r3, #0]
 8000c0c:	f8c7 8018 	str.w	r8, [r7, #24]
 8000c10:	b007      	add	sp, #28
 8000c12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000c16:	bf00      	nop
 8000c18:	48000400 	.word	0x48000400
 8000c1c:	48000800 	.word	0x48000800
 8000c20:	200001c4 	.word	0x200001c4
 8000c24:	200001c8 	.word	0x200001c8

08000c28 <_ZN5CGPIO7gpio_onEm>:
 8000c28:	4b01      	ldr	r3, [pc, #4]	; (8000c30 <_ZN5CGPIO7gpio_onEm+0x8>)
 8000c2a:	6199      	str	r1, [r3, #24]
 8000c2c:	4770      	bx	lr
 8000c2e:	bf00      	nop
 8000c30:	48000400 	.word	0x48000400

08000c34 <_ZN5CGPIO8gpio_offEm>:
 8000c34:	4b01      	ldr	r3, [pc, #4]	; (8000c3c <_ZN5CGPIO8gpio_offEm+0x8>)
 8000c36:	b289      	uxth	r1, r1
 8000c38:	8519      	strh	r1, [r3, #40]	; 0x28
 8000c3a:	4770      	bx	lr
 8000c3c:	48000400 	.word	0x48000400

08000c40 <_ZN5CGPIO7gpio_inEm>:
 8000c40:	4b02      	ldr	r3, [pc, #8]	; (8000c4c <_ZN5CGPIO7gpio_inEm+0xc>)
 8000c42:	8a18      	ldrh	r0, [r3, #16]
 8000c44:	b280      	uxth	r0, r0
 8000c46:	ea21 0000 	bic.w	r0, r1, r0
 8000c4a:	4770      	bx	lr
 8000c4c:	48000400 	.word	0x48000400

08000c50 <EXTI9_5_IRQHandler>:
 8000c50:	4b03      	ldr	r3, [pc, #12]	; (8000c60 <EXTI9_5_IRQHandler+0x10>)
 8000c52:	681a      	ldr	r2, [r3, #0]
 8000c54:	2006      	movs	r0, #6
 8000c56:	3201      	adds	r2, #1
 8000c58:	601a      	str	r2, [r3, #0]
 8000c5a:	f001 bb91 	b.w	8002380 <EXTI_ClearITPendingBit>
 8000c5e:	bf00      	nop
 8000c60:	200001c4 	.word	0x200001c4

08000c64 <EXTI15_10_IRQHandler>:
 8000c64:	4b03      	ldr	r3, [pc, #12]	; (8000c74 <EXTI15_10_IRQHandler+0x10>)
 8000c66:	681a      	ldr	r2, [r3, #0]
 8000c68:	200c      	movs	r0, #12
 8000c6a:	3201      	adds	r2, #1
 8000c6c:	601a      	str	r2, [r3, #0]
 8000c6e:	f001 bb87 	b.w	8002380 <EXTI_ClearITPendingBit>
 8000c72:	bf00      	nop
 8000c74:	200001c8 	.word	0x200001c8

08000c78 <TIM3_IRQHandler>:
 8000c78:	2300      	movs	r3, #0
 8000c7a:	4a15      	ldr	r2, [pc, #84]	; (8000cd0 <TIM3_IRQHandler+0x58>)
 8000c7c:	5cd1      	ldrb	r1, [r2, r3]
 8000c7e:	b111      	cbz	r1, 8000c86 <TIM3_IRQHandler+0xe>
 8000c80:	5cd1      	ldrb	r1, [r2, r3]
 8000c82:	29ff      	cmp	r1, #255	; 0xff
 8000c84:	d11e      	bne.n	8000cc4 <TIM3_IRQHandler+0x4c>
 8000c86:	4913      	ldr	r1, [pc, #76]	; (8000cd4 <TIM3_IRQHandler+0x5c>)
 8000c88:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000c8c:	b128      	cbz	r0, 8000c9a <TIM3_IRQHandler+0x22>
 8000c8e:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000c92:	3a01      	subs	r2, #1
 8000c94:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000c98:	e009      	b.n	8000cae <TIM3_IRQHandler+0x36>
 8000c9a:	480f      	ldr	r0, [pc, #60]	; (8000cd8 <TIM3_IRQHandler+0x60>)
 8000c9c:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000ca0:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000ca4:	5cd2      	ldrb	r2, [r2, r3]
 8000ca6:	b912      	cbnz	r2, 8000cae <TIM3_IRQHandler+0x36>
 8000ca8:	4a09      	ldr	r2, [pc, #36]	; (8000cd0 <TIM3_IRQHandler+0x58>)
 8000caa:	2101      	movs	r1, #1
 8000cac:	54d1      	strb	r1, [r2, r3]
 8000cae:	3301      	adds	r3, #1
 8000cb0:	2b08      	cmp	r3, #8
 8000cb2:	d1e2      	bne.n	8000c7a <TIM3_IRQHandler+0x2>
 8000cb4:	4b09      	ldr	r3, [pc, #36]	; (8000cdc <TIM3_IRQHandler+0x64>)
 8000cb6:	480a      	ldr	r0, [pc, #40]	; (8000ce0 <TIM3_IRQHandler+0x68>)
 8000cb8:	681a      	ldr	r2, [r3, #0]
 8000cba:	2101      	movs	r1, #1
 8000cbc:	3201      	adds	r2, #1
 8000cbe:	601a      	str	r2, [r3, #0]
 8000cc0:	f001 bfa5 	b.w	8002c0e <TIM_ClearITPendingBit>
 8000cc4:	5cd1      	ldrb	r1, [r2, r3]
 8000cc6:	3101      	adds	r1, #1
 8000cc8:	b2c9      	uxtb	r1, r1
 8000cca:	54d1      	strb	r1, [r2, r3]
 8000ccc:	e7db      	b.n	8000c86 <TIM3_IRQHandler+0xe>
 8000cce:	bf00      	nop
 8000cd0:	200001ec 	.word	0x200001ec
 8000cd4:	200001cc 	.word	0x200001cc
 8000cd8:	200001fc 	.word	0x200001fc
 8000cdc:	200001f4 	.word	0x200001f4
 8000ce0:	40000400 	.word	0x40000400

08000ce4 <_ZN6CTimer10timer_initEv>:
 8000ce4:	b530      	push	{r4, r5, lr}
 8000ce6:	4a1f      	ldr	r2, [pc, #124]	; (8000d64 <_ZN6CTimer10timer_initEv+0x80>)
 8000ce8:	2300      	movs	r3, #0
 8000cea:	b085      	sub	sp, #20
 8000cec:	6013      	str	r3, [r2, #0]
 8000cee:	491e      	ldr	r1, [pc, #120]	; (8000d68 <_ZN6CTimer10timer_initEv+0x84>)
 8000cf0:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000cf4:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000cf8:	491c      	ldr	r1, [pc, #112]	; (8000d6c <_ZN6CTimer10timer_initEv+0x88>)
 8000cfa:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000cfe:	4a1c      	ldr	r2, [pc, #112]	; (8000d70 <_ZN6CTimer10timer_initEv+0x8c>)
 8000d00:	2400      	movs	r4, #0
 8000d02:	54d4      	strb	r4, [r2, r3]
 8000d04:	3301      	adds	r3, #1
 8000d06:	2b08      	cmp	r3, #8
 8000d08:	d1f1      	bne.n	8000cee <_ZN6CTimer10timer_initEv+0xa>
 8000d0a:	4d1a      	ldr	r5, [pc, #104]	; (8000d74 <_ZN6CTimer10timer_initEv+0x90>)
 8000d0c:	2002      	movs	r0, #2
 8000d0e:	2101      	movs	r1, #1
 8000d10:	f001 fd98 	bl	8002844 <RCC_APB1PeriphClockCmd>
 8000d14:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000d18:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000d1c:	4628      	mov	r0, r5
 8000d1e:	2331      	movs	r3, #49	; 0x31
 8000d20:	a901      	add	r1, sp, #4
 8000d22:	9302      	str	r3, [sp, #8]
 8000d24:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000d28:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000d2c:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000d30:	f001 fe80 	bl	8002a34 <TIM_TimeBaseInit>
 8000d34:	4628      	mov	r0, r5
 8000d36:	2101      	movs	r1, #1
 8000d38:	f001 fecc 	bl	8002ad4 <TIM_Cmd>
 8000d3c:	68eb      	ldr	r3, [r5, #12]
 8000d3e:	f043 0301 	orr.w	r3, r3, #1
 8000d42:	60eb      	str	r3, [r5, #12]
 8000d44:	231d      	movs	r3, #29
 8000d46:	f88d 3000 	strb.w	r3, [sp]
 8000d4a:	4668      	mov	r0, sp
 8000d4c:	2301      	movs	r3, #1
 8000d4e:	f88d 4001 	strb.w	r4, [sp, #1]
 8000d52:	f88d 3002 	strb.w	r3, [sp, #2]
 8000d56:	f88d 3003 	strb.w	r3, [sp, #3]
 8000d5a:	f001 fe33 	bl	80029c4 <NVIC_Init>
 8000d5e:	4620      	mov	r0, r4
 8000d60:	b005      	add	sp, #20
 8000d62:	bd30      	pop	{r4, r5, pc}
 8000d64:	200001f4 	.word	0x200001f4
 8000d68:	200001cc 	.word	0x200001cc
 8000d6c:	200001fc 	.word	0x200001fc
 8000d70:	200001ec 	.word	0x200001ec
 8000d74:	40000400 	.word	0x40000400

08000d78 <_ZN6CTimer8get_timeEv>:
 8000d78:	b082      	sub	sp, #8
 8000d7a:	b672      	cpsid	i
 8000d7c:	4b04      	ldr	r3, [pc, #16]	; (8000d90 <_ZN6CTimer8get_timeEv+0x18>)
 8000d7e:	681b      	ldr	r3, [r3, #0]
 8000d80:	9301      	str	r3, [sp, #4]
 8000d82:	b662      	cpsie	i
 8000d84:	9801      	ldr	r0, [sp, #4]
 8000d86:	230a      	movs	r3, #10
 8000d88:	fbb0 f0f3 	udiv	r0, r0, r3
 8000d8c:	b002      	add	sp, #8
 8000d8e:	4770      	bx	lr
 8000d90:	200001f4 	.word	0x200001f4

08000d94 <_ZN6CTimer8delay_msEm>:
 8000d94:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000d96:	460d      	mov	r5, r1
 8000d98:	4604      	mov	r4, r0
 8000d9a:	f7ff ffed 	bl	8000d78 <_ZN6CTimer8get_timeEv>
 8000d9e:	4428      	add	r0, r5
 8000da0:	9001      	str	r0, [sp, #4]
 8000da2:	4620      	mov	r0, r4
 8000da4:	9d01      	ldr	r5, [sp, #4]
 8000da6:	f7ff ffe7 	bl	8000d78 <_ZN6CTimer8get_timeEv>
 8000daa:	4285      	cmp	r5, r0
 8000dac:	d902      	bls.n	8000db4 <_ZN6CTimer8delay_msEm+0x20>
 8000dae:	f001 fb71 	bl	8002494 <core_yield>
 8000db2:	e7f6      	b.n	8000da2 <_ZN6CTimer8delay_msEm+0xe>
 8000db4:	b003      	add	sp, #12
 8000db6:	bd30      	pop	{r4, r5, pc}

08000db8 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000db8:	b672      	cpsid	i
 8000dba:	230a      	movs	r3, #10
 8000dbc:	435a      	muls	r2, r3
 8000dbe:	4b05      	ldr	r3, [pc, #20]	; (8000dd4 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000dc0:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000dc4:	4b04      	ldr	r3, [pc, #16]	; (8000dd8 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000dc6:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000dca:	4b04      	ldr	r3, [pc, #16]	; (8000ddc <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000dcc:	2200      	movs	r2, #0
 8000dce:	545a      	strb	r2, [r3, r1]
 8000dd0:	b662      	cpsie	i
 8000dd2:	4770      	bx	lr
 8000dd4:	200001cc 	.word	0x200001cc
 8000dd8:	200001fc 	.word	0x200001fc
 8000ddc:	200001ec 	.word	0x200001ec

08000de0 <_ZN6CTimer17event_timer_checkEh>:
 8000de0:	4b05      	ldr	r3, [pc, #20]	; (8000df8 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000de2:	5c5a      	ldrb	r2, [r3, r1]
 8000de4:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000de8:	b12a      	cbz	r2, 8000df6 <_ZN6CTimer17event_timer_checkEh+0x16>
 8000dea:	b672      	cpsid	i
 8000dec:	5c58      	ldrb	r0, [r3, r1]
 8000dee:	2200      	movs	r2, #0
 8000df0:	b2c0      	uxtb	r0, r0
 8000df2:	545a      	strb	r2, [r3, r1]
 8000df4:	b662      	cpsie	i
 8000df6:	4770      	bx	lr
 8000df8:	200001ec 	.word	0x200001ec

08000dfc <_ZN9CTerminal13terminal_initEv>:
 8000dfc:	b530      	push	{r4, r5, lr}
 8000dfe:	4a2f      	ldr	r2, [pc, #188]	; (8000ebc <_ZN9CTerminal13terminal_initEv+0xc0>)
 8000e00:	2300      	movs	r3, #0
 8000e02:	6013      	str	r3, [r2, #0]
 8000e04:	4a2e      	ldr	r2, [pc, #184]	; (8000ec0 <_ZN9CTerminal13terminal_initEv+0xc4>)
 8000e06:	b08b      	sub	sp, #44	; 0x2c
 8000e08:	6013      	str	r3, [r2, #0]
 8000e0a:	4a2e      	ldr	r2, [pc, #184]	; (8000ec4 <_ZN9CTerminal13terminal_initEv+0xc8>)
 8000e0c:	2400      	movs	r4, #0
 8000e0e:	54d4      	strb	r4, [r2, r3]
 8000e10:	3301      	adds	r3, #1
 8000e12:	2b10      	cmp	r3, #16
 8000e14:	d1f9      	bne.n	8000e0a <_ZN9CTerminal13terminal_initEv+0xe>
 8000e16:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000e1a:	2101      	movs	r1, #1
 8000e1c:	f001 fcf6 	bl	800280c <RCC_AHBPeriphClockCmd>
 8000e20:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000e24:	2101      	movs	r1, #1
 8000e26:	f001 fcff 	bl	8002828 <RCC_APB2PeriphClockCmd>
 8000e2a:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8000e2e:	9302      	str	r3, [sp, #8]
 8000e30:	2302      	movs	r3, #2
 8000e32:	f88d 300c 	strb.w	r3, [sp, #12]
 8000e36:	a902      	add	r1, sp, #8
 8000e38:	2303      	movs	r3, #3
 8000e3a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e3e:	f88d 300d 	strb.w	r3, [sp, #13]
 8000e42:	f88d 400e 	strb.w	r4, [sp, #14]
 8000e46:	f88d 400f 	strb.w	r4, [sp, #15]
 8000e4a:	f001 f9b3 	bl	80021b4 <GPIO_Init>
 8000e4e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e52:	2109      	movs	r1, #9
 8000e54:	2207      	movs	r2, #7
 8000e56:	f001 f9f6 	bl	8002246 <GPIO_PinAFConfig>
 8000e5a:	2207      	movs	r2, #7
 8000e5c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e60:	210a      	movs	r1, #10
 8000e62:	f001 f9f0 	bl	8002246 <GPIO_PinAFConfig>
 8000e66:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000e6a:	9304      	str	r3, [sp, #16]
 8000e6c:	a904      	add	r1, sp, #16
 8000e6e:	230c      	movs	r3, #12
 8000e70:	4815      	ldr	r0, [pc, #84]	; (8000ec8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000e72:	9308      	str	r3, [sp, #32]
 8000e74:	9405      	str	r4, [sp, #20]
 8000e76:	9406      	str	r4, [sp, #24]
 8000e78:	9407      	str	r4, [sp, #28]
 8000e7a:	9409      	str	r4, [sp, #36]	; 0x24
 8000e7c:	f001 fcf0 	bl	8002860 <USART_Init>
 8000e80:	4811      	ldr	r0, [pc, #68]	; (8000ec8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000e82:	2101      	movs	r1, #1
 8000e84:	f001 fd4e 	bl	8002924 <USART_Cmd>
 8000e88:	2201      	movs	r2, #1
 8000e8a:	4910      	ldr	r1, [pc, #64]	; (8000ecc <_ZN9CTerminal13terminal_initEv+0xd0>)
 8000e8c:	480e      	ldr	r0, [pc, #56]	; (8000ec8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000e8e:	f001 fd59 	bl	8002944 <USART_ITConfig>
 8000e92:	2501      	movs	r5, #1
 8000e94:	2325      	movs	r3, #37	; 0x25
 8000e96:	a801      	add	r0, sp, #4
 8000e98:	f88d 3004 	strb.w	r3, [sp, #4]
 8000e9c:	f88d 4005 	strb.w	r4, [sp, #5]
 8000ea0:	f88d 4006 	strb.w	r4, [sp, #6]
 8000ea4:	f88d 5007 	strb.w	r5, [sp, #7]
 8000ea8:	f001 fd8c 	bl	80029c4 <NVIC_Init>
 8000eac:	4806      	ldr	r0, [pc, #24]	; (8000ec8 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000eae:	4629      	mov	r1, r5
 8000eb0:	f001 fd38 	bl	8002924 <USART_Cmd>
 8000eb4:	4620      	mov	r0, r4
 8000eb6:	b00b      	add	sp, #44	; 0x2c
 8000eb8:	bd30      	pop	{r4, r5, pc}
 8000eba:	bf00      	nop
 8000ebc:	2000021c 	.word	0x2000021c
 8000ec0:	20000230 	.word	0x20000230
 8000ec4:	20000220 	.word	0x20000220
 8000ec8:	40013800 	.word	0x40013800
 8000ecc:	00050105 	.word	0x00050105

08000ed0 <USART1_IRQHandler>:
 8000ed0:	b508      	push	{r3, lr}
 8000ed2:	480d      	ldr	r0, [pc, #52]	; (8000f08 <USART1_IRQHandler+0x38>)
 8000ed4:	490d      	ldr	r1, [pc, #52]	; (8000f0c <USART1_IRQHandler+0x3c>)
 8000ed6:	f001 fd4e 	bl	8002976 <USART_GetITStatus>
 8000eda:	b178      	cbz	r0, 8000efc <USART1_IRQHandler+0x2c>
 8000edc:	480a      	ldr	r0, [pc, #40]	; (8000f08 <USART1_IRQHandler+0x38>)
 8000ede:	f001 fd2c 	bl	800293a <USART_ReceiveData>
 8000ee2:	4b0b      	ldr	r3, [pc, #44]	; (8000f10 <USART1_IRQHandler+0x40>)
 8000ee4:	490b      	ldr	r1, [pc, #44]	; (8000f14 <USART1_IRQHandler+0x44>)
 8000ee6:	681a      	ldr	r2, [r3, #0]
 8000ee8:	b2c0      	uxtb	r0, r0
 8000eea:	5488      	strb	r0, [r1, r2]
 8000eec:	681a      	ldr	r2, [r3, #0]
 8000eee:	3201      	adds	r2, #1
 8000ef0:	601a      	str	r2, [r3, #0]
 8000ef2:	681a      	ldr	r2, [r3, #0]
 8000ef4:	2a0f      	cmp	r2, #15
 8000ef6:	bf84      	itt	hi
 8000ef8:	2200      	movhi	r2, #0
 8000efa:	601a      	strhi	r2, [r3, #0]
 8000efc:	4802      	ldr	r0, [pc, #8]	; (8000f08 <USART1_IRQHandler+0x38>)
 8000efe:	4903      	ldr	r1, [pc, #12]	; (8000f0c <USART1_IRQHandler+0x3c>)
 8000f00:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000f04:	f001 bd56 	b.w	80029b4 <USART_ClearITPendingBit>
 8000f08:	40013800 	.word	0x40013800
 8000f0c:	00050105 	.word	0x00050105
 8000f10:	2000021c 	.word	0x2000021c
 8000f14:	20000220 	.word	0x20000220

08000f18 <_ZN9CTerminal7putcharEc>:
 8000f18:	4b03      	ldr	r3, [pc, #12]	; (8000f28 <_ZN9CTerminal7putcharEc+0x10>)
 8000f1a:	69da      	ldr	r2, [r3, #28]
 8000f1c:	0612      	lsls	r2, r2, #24
 8000f1e:	d401      	bmi.n	8000f24 <_ZN9CTerminal7putcharEc+0xc>
 8000f20:	bf00      	nop
 8000f22:	e7f9      	b.n	8000f18 <_ZN9CTerminal7putcharEc>
 8000f24:	8519      	strh	r1, [r3, #40]	; 0x28
 8000f26:	4770      	bx	lr
 8000f28:	40013800 	.word	0x40013800

08000f2c <_ZN9CTerminal4putsEPc>:
 8000f2c:	b538      	push	{r3, r4, r5, lr}
 8000f2e:	4605      	mov	r5, r0
 8000f30:	1e4c      	subs	r4, r1, #1
 8000f32:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000f36:	b119      	cbz	r1, 8000f40 <_ZN9CTerminal4putsEPc+0x14>
 8000f38:	4628      	mov	r0, r5
 8000f3a:	f7ff ffed 	bl	8000f18 <_ZN9CTerminal7putcharEc>
 8000f3e:	e7f8      	b.n	8000f32 <_ZN9CTerminal4putsEPc+0x6>
 8000f40:	2001      	movs	r0, #1
 8000f42:	bd38      	pop	{r3, r4, r5, pc}

08000f44 <_ZN9CTerminal4putiEl>:
 8000f44:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8000f46:	1e0b      	subs	r3, r1, #0
 8000f48:	f04f 0200 	mov.w	r2, #0
 8000f4c:	bfa8      	it	ge
 8000f4e:	4615      	movge	r5, r2
 8000f50:	f88d 200f 	strb.w	r2, [sp, #15]
 8000f54:	bfbc      	itt	lt
 8000f56:	425b      	neglt	r3, r3
 8000f58:	2501      	movlt	r5, #1
 8000f5a:	220a      	movs	r2, #10
 8000f5c:	240a      	movs	r4, #10
 8000f5e:	fb93 f6f4 	sdiv	r6, r3, r4
 8000f62:	fb04 3316 	mls	r3, r4, r6, r3
 8000f66:	a901      	add	r1, sp, #4
 8000f68:	3330      	adds	r3, #48	; 0x30
 8000f6a:	5453      	strb	r3, [r2, r1]
 8000f6c:	1e54      	subs	r4, r2, #1
 8000f6e:	4633      	mov	r3, r6
 8000f70:	b10e      	cbz	r6, 8000f76 <_ZN9CTerminal4putiEl+0x32>
 8000f72:	4622      	mov	r2, r4
 8000f74:	e7f2      	b.n	8000f5c <_ZN9CTerminal4putiEl+0x18>
 8000f76:	b12d      	cbz	r5, 8000f84 <_ZN9CTerminal4putiEl+0x40>
 8000f78:	ab04      	add	r3, sp, #16
 8000f7a:	4423      	add	r3, r4
 8000f7c:	222d      	movs	r2, #45	; 0x2d
 8000f7e:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8000f82:	4622      	mov	r2, r4
 8000f84:	4411      	add	r1, r2
 8000f86:	f7ff ffd1 	bl	8000f2c <_ZN9CTerminal4putsEPc>
 8000f8a:	b004      	add	sp, #16
 8000f8c:	bd70      	pop	{r4, r5, r6, pc}

08000f8e <_ZN9CTerminal5putuiEm>:
 8000f8e:	b530      	push	{r4, r5, lr}
 8000f90:	b085      	sub	sp, #20
 8000f92:	2300      	movs	r3, #0
 8000f94:	f88d 300f 	strb.w	r3, [sp, #15]
 8000f98:	230a      	movs	r3, #10
 8000f9a:	250a      	movs	r5, #10
 8000f9c:	fbb1 f4f5 	udiv	r4, r1, r5
 8000fa0:	fb05 1114 	mls	r1, r5, r4, r1
 8000fa4:	aa01      	add	r2, sp, #4
 8000fa6:	3130      	adds	r1, #48	; 0x30
 8000fa8:	5499      	strb	r1, [r3, r2]
 8000faa:	1e5d      	subs	r5, r3, #1
 8000fac:	4621      	mov	r1, r4
 8000fae:	b10c      	cbz	r4, 8000fb4 <_ZN9CTerminal5putuiEm+0x26>
 8000fb0:	462b      	mov	r3, r5
 8000fb2:	e7f2      	b.n	8000f9a <_ZN9CTerminal5putuiEm+0xc>
 8000fb4:	18d1      	adds	r1, r2, r3
 8000fb6:	f7ff ffb9 	bl	8000f2c <_ZN9CTerminal4putsEPc>
 8000fba:	b005      	add	sp, #20
 8000fbc:	bd30      	pop	{r4, r5, pc}

08000fbe <_ZN9CTerminal4putxEm>:
 8000fbe:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000fc0:	2300      	movs	r3, #0
 8000fc2:	f88d 300f 	strb.w	r3, [sp, #15]
 8000fc6:	230a      	movs	r3, #10
 8000fc8:	f001 040f 	and.w	r4, r1, #15
 8000fcc:	2c09      	cmp	r4, #9
 8000fce:	aa01      	add	r2, sp, #4
 8000fd0:	bfd4      	ite	le
 8000fd2:	3430      	addle	r4, #48	; 0x30
 8000fd4:	3457      	addgt	r4, #87	; 0x57
 8000fd6:	0909      	lsrs	r1, r1, #4
 8000fd8:	54d4      	strb	r4, [r2, r3]
 8000fda:	f103 34ff 	add.w	r4, r3, #4294967295
 8000fde:	d001      	beq.n	8000fe4 <_ZN9CTerminal4putxEm+0x26>
 8000fe0:	4623      	mov	r3, r4
 8000fe2:	e7f1      	b.n	8000fc8 <_ZN9CTerminal4putxEm+0xa>
 8000fe4:	18d1      	adds	r1, r2, r3
 8000fe6:	f7ff ffa1 	bl	8000f2c <_ZN9CTerminal4putsEPc>
 8000fea:	b004      	add	sp, #16
 8000fec:	bd10      	pop	{r4, pc}

08000fee <_ZN9CTerminal4putfEfj>:
 8000fee:	b538      	push	{r3, r4, r5, lr}
 8000ff0:	2200      	movs	r2, #0
 8000ff2:	4604      	mov	r4, r0
 8000ff4:	2301      	movs	r3, #1
 8000ff6:	428a      	cmp	r2, r1
 8000ff8:	d003      	beq.n	8001002 <_ZN9CTerminal4putfEfj+0x14>
 8000ffa:	200a      	movs	r0, #10
 8000ffc:	4343      	muls	r3, r0
 8000ffe:	3201      	adds	r2, #1
 8001000:	e7f9      	b.n	8000ff6 <_ZN9CTerminal4putfEfj+0x8>
 8001002:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001006:	ee06 3a90 	vmov	s13, r3
 800100a:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 800100e:	4620      	mov	r0, r4
 8001010:	ee30 0a47 	vsub.f32	s0, s0, s14
 8001014:	eeb8 7a66 	vcvt.f32.u32	s14, s13
 8001018:	ee17 1a90 	vmov	r1, s15
 800101c:	ee20 0a07 	vmul.f32	s0, s0, s14
 8001020:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001024:	ee10 5a10 	vmov	r5, s0
 8001028:	f7ff ff8c 	bl	8000f44 <_ZN9CTerminal4putiEl>
 800102c:	4620      	mov	r0, r4
 800102e:	212e      	movs	r1, #46	; 0x2e
 8001030:	f7ff ff72 	bl	8000f18 <_ZN9CTerminal7putcharEc>
 8001034:	4620      	mov	r0, r4
 8001036:	ea85 71e5 	eor.w	r1, r5, r5, asr #31
 800103a:	eba1 71e5 	sub.w	r1, r1, r5, asr #31
 800103e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001042:	f7ff bf7f 	b.w	8000f44 <_ZN9CTerminal4putiEl>

08001046 <_ZN9CTerminal6printfEPKcz>:
 8001046:	b40e      	push	{r1, r2, r3}
 8001048:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 800104a:	ab07      	add	r3, sp, #28
 800104c:	4604      	mov	r4, r0
 800104e:	f853 6b04 	ldr.w	r6, [r3], #4
 8001052:	9301      	str	r3, [sp, #4]
 8001054:	2500      	movs	r5, #0
 8001056:	5d71      	ldrb	r1, [r6, r5]
 8001058:	2900      	cmp	r1, #0
 800105a:	d054      	beq.n	8001106 <_ZN9CTerminal6printfEPKcz+0xc0>
 800105c:	2925      	cmp	r1, #37	; 0x25
 800105e:	d004      	beq.n	800106a <_ZN9CTerminal6printfEPKcz+0x24>
 8001060:	4620      	mov	r0, r4
 8001062:	f7ff ff59 	bl	8000f18 <_ZN9CTerminal7putcharEc>
 8001066:	3501      	adds	r5, #1
 8001068:	e7f5      	b.n	8001056 <_ZN9CTerminal6printfEPKcz+0x10>
 800106a:	1973      	adds	r3, r6, r5
 800106c:	7859      	ldrb	r1, [r3, #1]
 800106e:	2969      	cmp	r1, #105	; 0x69
 8001070:	d016      	beq.n	80010a0 <_ZN9CTerminal6printfEPKcz+0x5a>
 8001072:	d807      	bhi.n	8001084 <_ZN9CTerminal6printfEPKcz+0x3e>
 8001074:	2963      	cmp	r1, #99	; 0x63
 8001076:	d02b      	beq.n	80010d0 <_ZN9CTerminal6printfEPKcz+0x8a>
 8001078:	2966      	cmp	r1, #102	; 0x66
 800107a:	d031      	beq.n	80010e0 <_ZN9CTerminal6printfEPKcz+0x9a>
 800107c:	2925      	cmp	r1, #37	; 0x25
 800107e:	d140      	bne.n	8001102 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001080:	4620      	mov	r0, r4
 8001082:	e02a      	b.n	80010da <_ZN9CTerminal6printfEPKcz+0x94>
 8001084:	2975      	cmp	r1, #117	; 0x75
 8001086:	d013      	beq.n	80010b0 <_ZN9CTerminal6printfEPKcz+0x6a>
 8001088:	2978      	cmp	r1, #120	; 0x78
 800108a:	d019      	beq.n	80010c0 <_ZN9CTerminal6printfEPKcz+0x7a>
 800108c:	2973      	cmp	r1, #115	; 0x73
 800108e:	d138      	bne.n	8001102 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001090:	9b01      	ldr	r3, [sp, #4]
 8001092:	4620      	mov	r0, r4
 8001094:	1d1a      	adds	r2, r3, #4
 8001096:	6819      	ldr	r1, [r3, #0]
 8001098:	9201      	str	r2, [sp, #4]
 800109a:	f7ff ff47 	bl	8000f2c <_ZN9CTerminal4putsEPc>
 800109e:	e030      	b.n	8001102 <_ZN9CTerminal6printfEPKcz+0xbc>
 80010a0:	9b01      	ldr	r3, [sp, #4]
 80010a2:	4620      	mov	r0, r4
 80010a4:	1d1a      	adds	r2, r3, #4
 80010a6:	6819      	ldr	r1, [r3, #0]
 80010a8:	9201      	str	r2, [sp, #4]
 80010aa:	f7ff ff4b 	bl	8000f44 <_ZN9CTerminal4putiEl>
 80010ae:	e028      	b.n	8001102 <_ZN9CTerminal6printfEPKcz+0xbc>
 80010b0:	9b01      	ldr	r3, [sp, #4]
 80010b2:	4620      	mov	r0, r4
 80010b4:	1d1a      	adds	r2, r3, #4
 80010b6:	6819      	ldr	r1, [r3, #0]
 80010b8:	9201      	str	r2, [sp, #4]
 80010ba:	f7ff ff68 	bl	8000f8e <_ZN9CTerminal5putuiEm>
 80010be:	e020      	b.n	8001102 <_ZN9CTerminal6printfEPKcz+0xbc>
 80010c0:	9b01      	ldr	r3, [sp, #4]
 80010c2:	4620      	mov	r0, r4
 80010c4:	1d1a      	adds	r2, r3, #4
 80010c6:	6819      	ldr	r1, [r3, #0]
 80010c8:	9201      	str	r2, [sp, #4]
 80010ca:	f7ff ff78 	bl	8000fbe <_ZN9CTerminal4putxEm>
 80010ce:	e018      	b.n	8001102 <_ZN9CTerminal6printfEPKcz+0xbc>
 80010d0:	9b01      	ldr	r3, [sp, #4]
 80010d2:	1d1a      	adds	r2, r3, #4
 80010d4:	7819      	ldrb	r1, [r3, #0]
 80010d6:	9201      	str	r2, [sp, #4]
 80010d8:	4620      	mov	r0, r4
 80010da:	f7ff ff1d 	bl	8000f18 <_ZN9CTerminal7putcharEc>
 80010de:	e010      	b.n	8001102 <_ZN9CTerminal6printfEPKcz+0xbc>
 80010e0:	9b01      	ldr	r3, [sp, #4]
 80010e2:	3307      	adds	r3, #7
 80010e4:	f023 0307 	bic.w	r3, r3, #7
 80010e8:	f103 0208 	add.w	r2, r3, #8
 80010ec:	e9d3 0100 	ldrd	r0, r1, [r3]
 80010f0:	9201      	str	r2, [sp, #4]
 80010f2:	f001 fde7 	bl	8002cc4 <__aeabi_d2f>
 80010f6:	2103      	movs	r1, #3
 80010f8:	ee00 0a10 	vmov	s0, r0
 80010fc:	4620      	mov	r0, r4
 80010fe:	f7ff ff76 	bl	8000fee <_ZN9CTerminal4putfEfj>
 8001102:	3502      	adds	r5, #2
 8001104:	e7a7      	b.n	8001056 <_ZN9CTerminal6printfEPKcz+0x10>
 8001106:	b003      	add	sp, #12
 8001108:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800110c:	b003      	add	sp, #12
 800110e:	4770      	bx	lr

08001110 <_ZN4CIMU8imu_readEv>:
 8001110:	b570      	push	{r4, r5, r6, lr}
 8001112:	4c52      	ldr	r4, [pc, #328]	; (800125c <_ZN4CIMU8imu_readEv+0x14c>)
 8001114:	4605      	mov	r5, r0
 8001116:	4620      	mov	r0, r4
 8001118:	f000 f984 	bl	8001424 <_ZN4CI2C5StartEv>
 800111c:	4620      	mov	r0, r4
 800111e:	21d4      	movs	r1, #212	; 0xd4
 8001120:	f000 f9aa 	bl	8001478 <_ZN4CI2C5WriteEh>
 8001124:	21a8      	movs	r1, #168	; 0xa8
 8001126:	4620      	mov	r0, r4
 8001128:	f000 f9a6 	bl	8001478 <_ZN4CI2C5WriteEh>
 800112c:	4620      	mov	r0, r4
 800112e:	f000 f979 	bl	8001424 <_ZN4CI2C5StartEv>
 8001132:	4620      	mov	r0, r4
 8001134:	21d5      	movs	r1, #213	; 0xd5
 8001136:	f000 f99f 	bl	8001478 <_ZN4CI2C5WriteEh>
 800113a:	4620      	mov	r0, r4
 800113c:	2101      	movs	r1, #1
 800113e:	f000 f9e5 	bl	800150c <_ZN4CI2C4ReadEh>
 8001142:	2101      	movs	r1, #1
 8001144:	4606      	mov	r6, r0
 8001146:	4620      	mov	r0, r4
 8001148:	f000 f9e0 	bl	800150c <_ZN4CI2C4ReadEh>
 800114c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001150:	b206      	sxth	r6, r0
 8001152:	626e      	str	r6, [r5, #36]	; 0x24
 8001154:	4620      	mov	r0, r4
 8001156:	2101      	movs	r1, #1
 8001158:	f000 f9d8 	bl	800150c <_ZN4CI2C4ReadEh>
 800115c:	2101      	movs	r1, #1
 800115e:	4606      	mov	r6, r0
 8001160:	4620      	mov	r0, r4
 8001162:	f000 f9d3 	bl	800150c <_ZN4CI2C4ReadEh>
 8001166:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800116a:	b206      	sxth	r6, r0
 800116c:	62ae      	str	r6, [r5, #40]	; 0x28
 800116e:	4620      	mov	r0, r4
 8001170:	2101      	movs	r1, #1
 8001172:	f000 f9cb 	bl	800150c <_ZN4CI2C4ReadEh>
 8001176:	2100      	movs	r1, #0
 8001178:	4606      	mov	r6, r0
 800117a:	4620      	mov	r0, r4
 800117c:	f000 f9c6 	bl	800150c <_ZN4CI2C4ReadEh>
 8001180:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001184:	b206      	sxth	r6, r0
 8001186:	62ee      	str	r6, [r5, #44]	; 0x2c
 8001188:	4620      	mov	r0, r4
 800118a:	f000 f960 	bl	800144e <_ZN4CI2C4StopEv>
 800118e:	4620      	mov	r0, r4
 8001190:	f000 f948 	bl	8001424 <_ZN4CI2C5StartEv>
 8001194:	4620      	mov	r0, r4
 8001196:	213c      	movs	r1, #60	; 0x3c
 8001198:	f000 f96e 	bl	8001478 <_ZN4CI2C5WriteEh>
 800119c:	21a8      	movs	r1, #168	; 0xa8
 800119e:	4620      	mov	r0, r4
 80011a0:	f000 f96a 	bl	8001478 <_ZN4CI2C5WriteEh>
 80011a4:	4620      	mov	r0, r4
 80011a6:	f000 f93d 	bl	8001424 <_ZN4CI2C5StartEv>
 80011aa:	4620      	mov	r0, r4
 80011ac:	213d      	movs	r1, #61	; 0x3d
 80011ae:	f000 f963 	bl	8001478 <_ZN4CI2C5WriteEh>
 80011b2:	4620      	mov	r0, r4
 80011b4:	2101      	movs	r1, #1
 80011b6:	f000 f9a9 	bl	800150c <_ZN4CI2C4ReadEh>
 80011ba:	2101      	movs	r1, #1
 80011bc:	4606      	mov	r6, r0
 80011be:	4620      	mov	r0, r4
 80011c0:	f000 f9a4 	bl	800150c <_ZN4CI2C4ReadEh>
 80011c4:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011c8:	b206      	sxth	r6, r0
 80011ca:	632e      	str	r6, [r5, #48]	; 0x30
 80011cc:	4620      	mov	r0, r4
 80011ce:	2101      	movs	r1, #1
 80011d0:	f000 f99c 	bl	800150c <_ZN4CI2C4ReadEh>
 80011d4:	2101      	movs	r1, #1
 80011d6:	4606      	mov	r6, r0
 80011d8:	4620      	mov	r0, r4
 80011da:	f000 f997 	bl	800150c <_ZN4CI2C4ReadEh>
 80011de:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011e2:	b206      	sxth	r6, r0
 80011e4:	636e      	str	r6, [r5, #52]	; 0x34
 80011e6:	4620      	mov	r0, r4
 80011e8:	2101      	movs	r1, #1
 80011ea:	f000 f98f 	bl	800150c <_ZN4CI2C4ReadEh>
 80011ee:	2100      	movs	r1, #0
 80011f0:	4606      	mov	r6, r0
 80011f2:	4620      	mov	r0, r4
 80011f4:	f000 f98a 	bl	800150c <_ZN4CI2C4ReadEh>
 80011f8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011fc:	b206      	sxth	r6, r0
 80011fe:	63ae      	str	r6, [r5, #56]	; 0x38
 8001200:	4620      	mov	r0, r4
 8001202:	f000 f924 	bl	800144e <_ZN4CI2C4StopEv>
 8001206:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001208:	6868      	ldr	r0, [r5, #4]
 800120a:	682c      	ldr	r4, [r5, #0]
 800120c:	21c8      	movs	r1, #200	; 0xc8
 800120e:	1ac0      	subs	r0, r0, r3
 8001210:	68eb      	ldr	r3, [r5, #12]
 8001212:	fb90 f0f1 	sdiv	r0, r0, r1
 8001216:	4418      	add	r0, r3
 8001218:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 800121a:	60e8      	str	r0, [r5, #12]
 800121c:	2264      	movs	r2, #100	; 0x64
 800121e:	435a      	muls	r2, r3
 8001220:	4350      	muls	r0, r2
 8001222:	f640 13e2 	movw	r3, #2530	; 0x9e2
 8001226:	fb90 f0f3 	sdiv	r0, r0, r3
 800122a:	61a8      	str	r0, [r5, #24]
 800122c:	6a68      	ldr	r0, [r5, #36]	; 0x24
 800122e:	1a20      	subs	r0, r4, r0
 8001230:	692c      	ldr	r4, [r5, #16]
 8001232:	fb90 f0f1 	sdiv	r0, r0, r1
 8001236:	4420      	add	r0, r4
 8001238:	6128      	str	r0, [r5, #16]
 800123a:	4350      	muls	r0, r2
 800123c:	fb90 f0f3 	sdiv	r0, r0, r3
 8001240:	61e8      	str	r0, [r5, #28]
 8001242:	68ac      	ldr	r4, [r5, #8]
 8001244:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 8001246:	1a20      	subs	r0, r4, r0
 8001248:	fb90 f1f1 	sdiv	r1, r0, r1
 800124c:	6968      	ldr	r0, [r5, #20]
 800124e:	4401      	add	r1, r0
 8001250:	434a      	muls	r2, r1
 8001252:	fb92 f3f3 	sdiv	r3, r2, r3
 8001256:	6169      	str	r1, [r5, #20]
 8001258:	622b      	str	r3, [r5, #32]
 800125a:	bd70      	pop	{r4, r5, r6, pc}
 800125c:	20000234 	.word	0x20000234

08001260 <_ZN4CIMU8imu_initEv>:
 8001260:	230a      	movs	r3, #10
 8001262:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001266:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001268:	2300      	movs	r3, #0
 800126a:	4604      	mov	r4, r0
 800126c:	6003      	str	r3, [r0, #0]
 800126e:	6043      	str	r3, [r0, #4]
 8001270:	6083      	str	r3, [r0, #8]
 8001272:	60c3      	str	r3, [r0, #12]
 8001274:	6103      	str	r3, [r0, #16]
 8001276:	6143      	str	r3, [r0, #20]
 8001278:	f242 7511 	movw	r5, #10001	; 0x2711
 800127c:	3d01      	subs	r5, #1
 800127e:	d001      	beq.n	8001284 <_ZN4CIMU8imu_initEv+0x24>
 8001280:	bf00      	nop
 8001282:	e7fb      	b.n	800127c <_ZN4CIMU8imu_initEv+0x1c>
 8001284:	4832      	ldr	r0, [pc, #200]	; (8001350 <_ZN4CIMU8imu_initEv+0xf0>)
 8001286:	21d4      	movs	r1, #212	; 0xd4
 8001288:	220f      	movs	r2, #15
 800128a:	f000 f96d 	bl	8001568 <_ZN4CI2C8read_regEhh>
 800128e:	28d4      	cmp	r0, #212	; 0xd4
 8001290:	4606      	mov	r6, r0
 8001292:	d155      	bne.n	8001340 <_ZN4CIMU8imu_initEv+0xe0>
 8001294:	482e      	ldr	r0, [pc, #184]	; (8001350 <_ZN4CIMU8imu_initEv+0xf0>)
 8001296:	213c      	movs	r1, #60	; 0x3c
 8001298:	220f      	movs	r2, #15
 800129a:	f000 f965 	bl	8001568 <_ZN4CI2C8read_regEhh>
 800129e:	2849      	cmp	r0, #73	; 0x49
 80012a0:	d152      	bne.n	8001348 <_ZN4CIMU8imu_initEv+0xe8>
 80012a2:	4631      	mov	r1, r6
 80012a4:	482a      	ldr	r0, [pc, #168]	; (8001350 <_ZN4CIMU8imu_initEv+0xf0>)
 80012a6:	2220      	movs	r2, #32
 80012a8:	23ff      	movs	r3, #255	; 0xff
 80012aa:	f000 f917 	bl	80014dc <_ZN4CI2C9write_regEhhh>
 80012ae:	4631      	mov	r1, r6
 80012b0:	4827      	ldr	r0, [pc, #156]	; (8001350 <_ZN4CIMU8imu_initEv+0xf0>)
 80012b2:	4e28      	ldr	r6, [pc, #160]	; (8001354 <_ZN4CIMU8imu_initEv+0xf4>)
 80012b4:	2223      	movs	r2, #35	; 0x23
 80012b6:	2310      	movs	r3, #16
 80012b8:	f000 f910 	bl	80014dc <_ZN4CI2C9write_regEhhh>
 80012bc:	4824      	ldr	r0, [pc, #144]	; (8001350 <_ZN4CIMU8imu_initEv+0xf0>)
 80012be:	213c      	movs	r1, #60	; 0x3c
 80012c0:	221f      	movs	r2, #31
 80012c2:	462b      	mov	r3, r5
 80012c4:	f000 f90a 	bl	80014dc <_ZN4CI2C9write_regEhhh>
 80012c8:	4821      	ldr	r0, [pc, #132]	; (8001350 <_ZN4CIMU8imu_initEv+0xf0>)
 80012ca:	213c      	movs	r1, #60	; 0x3c
 80012cc:	2220      	movs	r2, #32
 80012ce:	2367      	movs	r3, #103	; 0x67
 80012d0:	f000 f904 	bl	80014dc <_ZN4CI2C9write_regEhhh>
 80012d4:	481e      	ldr	r0, [pc, #120]	; (8001350 <_ZN4CIMU8imu_initEv+0xf0>)
 80012d6:	213c      	movs	r1, #60	; 0x3c
 80012d8:	2221      	movs	r2, #33	; 0x21
 80012da:	462b      	mov	r3, r5
 80012dc:	f000 f8fe 	bl	80014dc <_ZN4CI2C9write_regEhhh>
 80012e0:	3e01      	subs	r6, #1
 80012e2:	d001      	beq.n	80012e8 <_ZN4CIMU8imu_initEv+0x88>
 80012e4:	bf00      	nop
 80012e6:	e7fb      	b.n	80012e0 <_ZN4CIMU8imu_initEv+0x80>
 80012e8:	4620      	mov	r0, r4
 80012ea:	f7ff ff11 	bl	8001110 <_ZN4CIMU8imu_readEv>
 80012ee:	2564      	movs	r5, #100	; 0x64
 80012f0:	4637      	mov	r7, r6
 80012f2:	46b0      	mov	r8, r6
 80012f4:	2365      	movs	r3, #101	; 0x65
 80012f6:	3b01      	subs	r3, #1
 80012f8:	d001      	beq.n	80012fe <_ZN4CIMU8imu_initEv+0x9e>
 80012fa:	bf00      	nop
 80012fc:	e7fb      	b.n	80012f6 <_ZN4CIMU8imu_initEv+0x96>
 80012fe:	4620      	mov	r0, r4
 8001300:	f7ff ff06 	bl	8001110 <_ZN4CIMU8imu_readEv>
 8001304:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8001306:	4498      	add	r8, r3
 8001308:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 800130a:	441f      	add	r7, r3
 800130c:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800130e:	3d01      	subs	r5, #1
 8001310:	441e      	add	r6, r3
 8001312:	d1ef      	bne.n	80012f4 <_ZN4CIMU8imu_initEv+0x94>
 8001314:	2364      	movs	r3, #100	; 0x64
 8001316:	fb98 f2f3 	sdiv	r2, r8, r3
 800131a:	fb97 f7f3 	sdiv	r7, r7, r3
 800131e:	fb96 f6f3 	sdiv	r6, r6, r3
 8001322:	6022      	str	r2, [r4, #0]
 8001324:	6067      	str	r7, [r4, #4]
 8001326:	60a6      	str	r6, [r4, #8]
 8001328:	6325      	str	r5, [r4, #48]	; 0x30
 800132a:	6365      	str	r5, [r4, #52]	; 0x34
 800132c:	63a5      	str	r5, [r4, #56]	; 0x38
 800132e:	6265      	str	r5, [r4, #36]	; 0x24
 8001330:	62a5      	str	r5, [r4, #40]	; 0x28
 8001332:	62e5      	str	r5, [r4, #44]	; 0x2c
 8001334:	61a5      	str	r5, [r4, #24]
 8001336:	61e5      	str	r5, [r4, #28]
 8001338:	6225      	str	r5, [r4, #32]
 800133a:	4628      	mov	r0, r5
 800133c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001340:	f04f 30ff 	mov.w	r0, #4294967295
 8001344:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001348:	f06f 0001 	mvn.w	r0, #1
 800134c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001350:	20000234 	.word	0x20000234
 8001354:	000186a1 	.word	0x000186a1

08001358 <_ZN4CI2C5delayEv>:
 8001358:	230b      	movs	r3, #11
 800135a:	3b01      	subs	r3, #1
 800135c:	d001      	beq.n	8001362 <_ZN4CI2C5delayEv+0xa>
 800135e:	bf00      	nop
 8001360:	e7fb      	b.n	800135a <_ZN4CI2C5delayEv+0x2>
 8001362:	4770      	bx	lr

08001364 <_ZN4CI2C9SetLowSDAEv>:
 8001364:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8001366:	4c0c      	ldr	r4, [pc, #48]	; (8001398 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8001368:	2301      	movs	r3, #1
 800136a:	2203      	movs	r2, #3
 800136c:	4606      	mov	r6, r0
 800136e:	2580      	movs	r5, #128	; 0x80
 8001370:	f88d 3004 	strb.w	r3, [sp, #4]
 8001374:	f88d 3006 	strb.w	r3, [sp, #6]
 8001378:	4620      	mov	r0, r4
 800137a:	2300      	movs	r3, #0
 800137c:	4669      	mov	r1, sp
 800137e:	f88d 2005 	strb.w	r2, [sp, #5]
 8001382:	f88d 3007 	strb.w	r3, [sp, #7]
 8001386:	9500      	str	r5, [sp, #0]
 8001388:	f000 ff14 	bl	80021b4 <GPIO_Init>
 800138c:	8525      	strh	r5, [r4, #40]	; 0x28
 800138e:	4630      	mov	r0, r6
 8001390:	f7ff ffe2 	bl	8001358 <_ZN4CI2C5delayEv>
 8001394:	b002      	add	sp, #8
 8001396:	bd70      	pop	{r4, r5, r6, pc}
 8001398:	48000400 	.word	0x48000400

0800139c <_ZN4CI2C10SetHighSDAEv>:
 800139c:	4b05      	ldr	r3, [pc, #20]	; (80013b4 <_ZN4CI2C10SetHighSDAEv+0x18>)
 800139e:	681a      	ldr	r2, [r3, #0]
 80013a0:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 80013a4:	601a      	str	r2, [r3, #0]
 80013a6:	681a      	ldr	r2, [r3, #0]
 80013a8:	601a      	str	r2, [r3, #0]
 80013aa:	2280      	movs	r2, #128	; 0x80
 80013ac:	619a      	str	r2, [r3, #24]
 80013ae:	f7ff bfd3 	b.w	8001358 <_ZN4CI2C5delayEv>
 80013b2:	bf00      	nop
 80013b4:	48000400 	.word	0x48000400

080013b8 <_ZN4CI2C9SetLowSCLEv>:
 80013b8:	4b02      	ldr	r3, [pc, #8]	; (80013c4 <_ZN4CI2C9SetLowSCLEv+0xc>)
 80013ba:	2240      	movs	r2, #64	; 0x40
 80013bc:	851a      	strh	r2, [r3, #40]	; 0x28
 80013be:	f7ff bfcb 	b.w	8001358 <_ZN4CI2C5delayEv>
 80013c2:	bf00      	nop
 80013c4:	48000400 	.word	0x48000400

080013c8 <_ZN4CI2C10SetHighSCLEv>:
 80013c8:	4b02      	ldr	r3, [pc, #8]	; (80013d4 <_ZN4CI2C10SetHighSCLEv+0xc>)
 80013ca:	2240      	movs	r2, #64	; 0x40
 80013cc:	619a      	str	r2, [r3, #24]
 80013ce:	f7ff bfc3 	b.w	8001358 <_ZN4CI2C5delayEv>
 80013d2:	bf00      	nop
 80013d4:	48000400 	.word	0x48000400

080013d8 <_ZN4CI2C4initEv>:
 80013d8:	b513      	push	{r0, r1, r4, lr}
 80013da:	4604      	mov	r4, r0
 80013dc:	2101      	movs	r1, #1
 80013de:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80013e2:	f001 fa13 	bl	800280c <RCC_AHBPeriphClockCmd>
 80013e6:	23c0      	movs	r3, #192	; 0xc0
 80013e8:	9300      	str	r3, [sp, #0]
 80013ea:	2301      	movs	r3, #1
 80013ec:	2203      	movs	r2, #3
 80013ee:	4669      	mov	r1, sp
 80013f0:	f88d 3004 	strb.w	r3, [sp, #4]
 80013f4:	f88d 3006 	strb.w	r3, [sp, #6]
 80013f8:	4809      	ldr	r0, [pc, #36]	; (8001420 <_ZN4CI2C4initEv+0x48>)
 80013fa:	f88d 2005 	strb.w	r2, [sp, #5]
 80013fe:	2300      	movs	r3, #0
 8001400:	f88d 3007 	strb.w	r3, [sp, #7]
 8001404:	f000 fed6 	bl	80021b4 <GPIO_Init>
 8001408:	4620      	mov	r0, r4
 800140a:	f7ff ffdd 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 800140e:	4620      	mov	r0, r4
 8001410:	f7ff ffa8 	bl	8001364 <_ZN4CI2C9SetLowSDAEv>
 8001414:	4620      	mov	r0, r4
 8001416:	f7ff ffc1 	bl	800139c <_ZN4CI2C10SetHighSDAEv>
 800141a:	b002      	add	sp, #8
 800141c:	bd10      	pop	{r4, pc}
 800141e:	bf00      	nop
 8001420:	48000400 	.word	0x48000400

08001424 <_ZN4CI2C5StartEv>:
 8001424:	b510      	push	{r4, lr}
 8001426:	4604      	mov	r4, r0
 8001428:	f7ff ffce 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 800142c:	4620      	mov	r0, r4
 800142e:	f7ff ffb5 	bl	800139c <_ZN4CI2C10SetHighSDAEv>
 8001432:	4620      	mov	r0, r4
 8001434:	f7ff ffc8 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 8001438:	4620      	mov	r0, r4
 800143a:	f7ff ff93 	bl	8001364 <_ZN4CI2C9SetLowSDAEv>
 800143e:	4620      	mov	r0, r4
 8001440:	f7ff ffba 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 8001444:	4620      	mov	r0, r4
 8001446:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800144a:	f7ff bfa7 	b.w	800139c <_ZN4CI2C10SetHighSDAEv>

0800144e <_ZN4CI2C4StopEv>:
 800144e:	b510      	push	{r4, lr}
 8001450:	4604      	mov	r4, r0
 8001452:	f7ff ffb1 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 8001456:	4620      	mov	r0, r4
 8001458:	f7ff ff84 	bl	8001364 <_ZN4CI2C9SetLowSDAEv>
 800145c:	4620      	mov	r0, r4
 800145e:	f7ff ffb3 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 8001462:	4620      	mov	r0, r4
 8001464:	f7ff ff7e 	bl	8001364 <_ZN4CI2C9SetLowSDAEv>
 8001468:	4620      	mov	r0, r4
 800146a:	f7ff ffad 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 800146e:	4620      	mov	r0, r4
 8001470:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001474:	f7ff bf92 	b.w	800139c <_ZN4CI2C10SetHighSDAEv>

08001478 <_ZN4CI2C5WriteEh>:
 8001478:	b570      	push	{r4, r5, r6, lr}
 800147a:	4604      	mov	r4, r0
 800147c:	460d      	mov	r5, r1
 800147e:	2608      	movs	r6, #8
 8001480:	4620      	mov	r0, r4
 8001482:	f7ff ff99 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 8001486:	062b      	lsls	r3, r5, #24
 8001488:	4620      	mov	r0, r4
 800148a:	d502      	bpl.n	8001492 <_ZN4CI2C5WriteEh+0x1a>
 800148c:	f7ff ff86 	bl	800139c <_ZN4CI2C10SetHighSDAEv>
 8001490:	e001      	b.n	8001496 <_ZN4CI2C5WriteEh+0x1e>
 8001492:	f7ff ff67 	bl	8001364 <_ZN4CI2C9SetLowSDAEv>
 8001496:	4620      	mov	r0, r4
 8001498:	3e01      	subs	r6, #1
 800149a:	f7ff ff95 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 800149e:	006d      	lsls	r5, r5, #1
 80014a0:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 80014a4:	b2ed      	uxtb	r5, r5
 80014a6:	d1eb      	bne.n	8001480 <_ZN4CI2C5WriteEh+0x8>
 80014a8:	4620      	mov	r0, r4
 80014aa:	f7ff ff85 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 80014ae:	4620      	mov	r0, r4
 80014b0:	f7ff ff74 	bl	800139c <_ZN4CI2C10SetHighSDAEv>
 80014b4:	4620      	mov	r0, r4
 80014b6:	f7ff ff87 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 80014ba:	4b07      	ldr	r3, [pc, #28]	; (80014d8 <_ZN4CI2C5WriteEh+0x60>)
 80014bc:	8a1d      	ldrh	r5, [r3, #16]
 80014be:	4620      	mov	r0, r4
 80014c0:	f7ff ff7a 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 80014c4:	b2ad      	uxth	r5, r5
 80014c6:	4620      	mov	r0, r4
 80014c8:	f7ff ff46 	bl	8001358 <_ZN4CI2C5delayEv>
 80014cc:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 80014d0:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80014d4:	bd70      	pop	{r4, r5, r6, pc}
 80014d6:	bf00      	nop
 80014d8:	48000400 	.word	0x48000400

080014dc <_ZN4CI2C9write_regEhhh>:
 80014dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014de:	4604      	mov	r4, r0
 80014e0:	460e      	mov	r6, r1
 80014e2:	4615      	mov	r5, r2
 80014e4:	461f      	mov	r7, r3
 80014e6:	f7ff ff9d 	bl	8001424 <_ZN4CI2C5StartEv>
 80014ea:	4631      	mov	r1, r6
 80014ec:	4620      	mov	r0, r4
 80014ee:	f7ff ffc3 	bl	8001478 <_ZN4CI2C5WriteEh>
 80014f2:	4629      	mov	r1, r5
 80014f4:	4620      	mov	r0, r4
 80014f6:	f7ff ffbf 	bl	8001478 <_ZN4CI2C5WriteEh>
 80014fa:	4620      	mov	r0, r4
 80014fc:	4639      	mov	r1, r7
 80014fe:	f7ff ffbb 	bl	8001478 <_ZN4CI2C5WriteEh>
 8001502:	4620      	mov	r0, r4
 8001504:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001508:	f7ff bfa1 	b.w	800144e <_ZN4CI2C4StopEv>

0800150c <_ZN4CI2C4ReadEh>:
 800150c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800150e:	4604      	mov	r4, r0
 8001510:	460f      	mov	r7, r1
 8001512:	f7ff ff51 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 8001516:	2608      	movs	r6, #8
 8001518:	2500      	movs	r5, #0
 800151a:	4620      	mov	r0, r4
 800151c:	f7ff ff54 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 8001520:	4b10      	ldr	r3, [pc, #64]	; (8001564 <_ZN4CI2C4ReadEh+0x58>)
 8001522:	8a1b      	ldrh	r3, [r3, #16]
 8001524:	006d      	lsls	r5, r5, #1
 8001526:	061b      	lsls	r3, r3, #24
 8001528:	b2ed      	uxtb	r5, r5
 800152a:	4620      	mov	r0, r4
 800152c:	f106 36ff 	add.w	r6, r6, #4294967295
 8001530:	bf48      	it	mi
 8001532:	f045 0501 	orrmi.w	r5, r5, #1
 8001536:	f7ff ff3f 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 800153a:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 800153e:	d1ec      	bne.n	800151a <_ZN4CI2C4ReadEh+0xe>
 8001540:	4620      	mov	r0, r4
 8001542:	b117      	cbz	r7, 800154a <_ZN4CI2C4ReadEh+0x3e>
 8001544:	f7ff ff0e 	bl	8001364 <_ZN4CI2C9SetLowSDAEv>
 8001548:	e001      	b.n	800154e <_ZN4CI2C4ReadEh+0x42>
 800154a:	f7ff ff27 	bl	800139c <_ZN4CI2C10SetHighSDAEv>
 800154e:	4620      	mov	r0, r4
 8001550:	f7ff ff3a 	bl	80013c8 <_ZN4CI2C10SetHighSCLEv>
 8001554:	4620      	mov	r0, r4
 8001556:	f7ff ff2f 	bl	80013b8 <_ZN4CI2C9SetLowSCLEv>
 800155a:	4620      	mov	r0, r4
 800155c:	f7ff ff1e 	bl	800139c <_ZN4CI2C10SetHighSDAEv>
 8001560:	4628      	mov	r0, r5
 8001562:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001564:	48000400 	.word	0x48000400

08001568 <_ZN4CI2C8read_regEhh>:
 8001568:	b570      	push	{r4, r5, r6, lr}
 800156a:	4604      	mov	r4, r0
 800156c:	460d      	mov	r5, r1
 800156e:	4616      	mov	r6, r2
 8001570:	f7ff ff58 	bl	8001424 <_ZN4CI2C5StartEv>
 8001574:	4629      	mov	r1, r5
 8001576:	4620      	mov	r0, r4
 8001578:	f7ff ff7e 	bl	8001478 <_ZN4CI2C5WriteEh>
 800157c:	4631      	mov	r1, r6
 800157e:	4620      	mov	r0, r4
 8001580:	f7ff ff7a 	bl	8001478 <_ZN4CI2C5WriteEh>
 8001584:	4620      	mov	r0, r4
 8001586:	f7ff ff4d 	bl	8001424 <_ZN4CI2C5StartEv>
 800158a:	f045 0101 	orr.w	r1, r5, #1
 800158e:	4620      	mov	r0, r4
 8001590:	f7ff ff72 	bl	8001478 <_ZN4CI2C5WriteEh>
 8001594:	2100      	movs	r1, #0
 8001596:	4620      	mov	r0, r4
 8001598:	f7ff ffb8 	bl	800150c <_ZN4CI2C4ReadEh>
 800159c:	4605      	mov	r5, r0
 800159e:	4620      	mov	r0, r4
 80015a0:	f7ff ff55 	bl	800144e <_ZN4CI2C4StopEv>
 80015a4:	4628      	mov	r0, r5
 80015a6:	bd70      	pop	{r4, r5, r6, pc}

080015a8 <_ZN4CRGB8rgb_readEh>:
 80015a8:	b570      	push	{r4, r5, r6, lr}
 80015aa:	4604      	mov	r4, r0
 80015ac:	460e      	mov	r6, r1
 80015ae:	f7ff f93b 	bl	8000828 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80015b2:	4620      	mov	r0, r4
 80015b4:	2172      	movs	r1, #114	; 0x72
 80015b6:	f7ff f961 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80015ba:	21b4      	movs	r1, #180	; 0xb4
 80015bc:	4620      	mov	r0, r4
 80015be:	f7ff f95d 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80015c2:	4620      	mov	r0, r4
 80015c4:	f7ff f930 	bl	8000828 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80015c8:	1d25      	adds	r5, r4, #4
 80015ca:	4620      	mov	r0, r4
 80015cc:	2173      	movs	r1, #115	; 0x73
 80015ce:	f7ff f955 	bl	800087c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80015d2:	4620      	mov	r0, r4
 80015d4:	2101      	movs	r1, #1
 80015d6:	462a      	mov	r2, r5
 80015d8:	f7ff f992 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80015dc:	2300      	movs	r3, #0
 80015de:	18e2      	adds	r2, r4, r3
 80015e0:	18d1      	adds	r1, r2, r3
 80015e2:	3301      	adds	r3, #1
 80015e4:	7912      	ldrb	r2, [r2, #4]
 80015e6:	f8a1 2044 	strh.w	r2, [r1, #68]	; 0x44
 80015ea:	2b09      	cmp	r3, #9
 80015ec:	d1f7      	bne.n	80015de <_ZN4CRGB8rgb_readEh+0x36>
 80015ee:	462a      	mov	r2, r5
 80015f0:	4620      	mov	r0, r4
 80015f2:	2101      	movs	r1, #1
 80015f4:	f7ff f984 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80015f8:	4622      	mov	r2, r4
 80015fa:	2300      	movs	r3, #0
 80015fc:	18e1      	adds	r1, r4, r3
 80015fe:	3301      	adds	r3, #1
 8001600:	7908      	ldrb	r0, [r1, #4]
 8001602:	f8b2 1044 	ldrh.w	r1, [r2, #68]	; 0x44
 8001606:	2b09      	cmp	r3, #9
 8001608:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 800160c:	f8a2 1044 	strh.w	r1, [r2, #68]	; 0x44
 8001610:	f102 0202 	add.w	r2, r2, #2
 8001614:	d1f2      	bne.n	80015fc <_ZN4CRGB8rgb_readEh+0x54>
 8001616:	4620      	mov	r0, r4
 8001618:	2101      	movs	r1, #1
 800161a:	462a      	mov	r2, r5
 800161c:	f7ff f970 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001620:	2300      	movs	r3, #0
 8001622:	18e2      	adds	r2, r4, r3
 8001624:	18d1      	adds	r1, r2, r3
 8001626:	3301      	adds	r3, #1
 8001628:	7912      	ldrb	r2, [r2, #4]
 800162a:	81ca      	strh	r2, [r1, #14]
 800162c:	2b09      	cmp	r3, #9
 800162e:	d1f8      	bne.n	8001622 <_ZN4CRGB8rgb_readEh+0x7a>
 8001630:	462a      	mov	r2, r5
 8001632:	4620      	mov	r0, r4
 8001634:	2101      	movs	r1, #1
 8001636:	f7ff f963 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800163a:	4622      	mov	r2, r4
 800163c:	2300      	movs	r3, #0
 800163e:	18e1      	adds	r1, r4, r3
 8001640:	3301      	adds	r3, #1
 8001642:	7908      	ldrb	r0, [r1, #4]
 8001644:	89d1      	ldrh	r1, [r2, #14]
 8001646:	2b09      	cmp	r3, #9
 8001648:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 800164c:	81d1      	strh	r1, [r2, #14]
 800164e:	f102 0202 	add.w	r2, r2, #2
 8001652:	d1f4      	bne.n	800163e <_ZN4CRGB8rgb_readEh+0x96>
 8001654:	4620      	mov	r0, r4
 8001656:	2101      	movs	r1, #1
 8001658:	462a      	mov	r2, r5
 800165a:	f7ff f951 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800165e:	2300      	movs	r3, #0
 8001660:	18e2      	adds	r2, r4, r3
 8001662:	18d1      	adds	r1, r2, r3
 8001664:	3301      	adds	r3, #1
 8001666:	7912      	ldrb	r2, [r2, #4]
 8001668:	840a      	strh	r2, [r1, #32]
 800166a:	2b09      	cmp	r3, #9
 800166c:	d1f8      	bne.n	8001660 <_ZN4CRGB8rgb_readEh+0xb8>
 800166e:	462a      	mov	r2, r5
 8001670:	4620      	mov	r0, r4
 8001672:	2101      	movs	r1, #1
 8001674:	f7ff f944 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001678:	4622      	mov	r2, r4
 800167a:	2300      	movs	r3, #0
 800167c:	18e1      	adds	r1, r4, r3
 800167e:	3301      	adds	r3, #1
 8001680:	7908      	ldrb	r0, [r1, #4]
 8001682:	8c11      	ldrh	r1, [r2, #32]
 8001684:	2b09      	cmp	r3, #9
 8001686:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 800168a:	8411      	strh	r1, [r2, #32]
 800168c:	f102 0202 	add.w	r2, r2, #2
 8001690:	d1f4      	bne.n	800167c <_ZN4CRGB8rgb_readEh+0xd4>
 8001692:	4620      	mov	r0, r4
 8001694:	2101      	movs	r1, #1
 8001696:	462a      	mov	r2, r5
 8001698:	f7ff f932 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800169c:	2300      	movs	r3, #0
 800169e:	18e2      	adds	r2, r4, r3
 80016a0:	18d1      	adds	r1, r2, r3
 80016a2:	3301      	adds	r3, #1
 80016a4:	7912      	ldrb	r2, [r2, #4]
 80016a6:	864a      	strh	r2, [r1, #50]	; 0x32
 80016a8:	2b09      	cmp	r3, #9
 80016aa:	d1f8      	bne.n	800169e <_ZN4CRGB8rgb_readEh+0xf6>
 80016ac:	462a      	mov	r2, r5
 80016ae:	4620      	mov	r0, r4
 80016b0:	2101      	movs	r1, #1
 80016b2:	f7ff f925 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016b6:	4622      	mov	r2, r4
 80016b8:	2300      	movs	r3, #0
 80016ba:	18e1      	adds	r1, r4, r3
 80016bc:	3301      	adds	r3, #1
 80016be:	7908      	ldrb	r0, [r1, #4]
 80016c0:	8e51      	ldrh	r1, [r2, #50]	; 0x32
 80016c2:	2b09      	cmp	r3, #9
 80016c4:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 80016c8:	8651      	strh	r1, [r2, #50]	; 0x32
 80016ca:	f102 0202 	add.w	r2, r2, #2
 80016ce:	d1f4      	bne.n	80016ba <_ZN4CRGB8rgb_readEh+0x112>
 80016d0:	4620      	mov	r0, r4
 80016d2:	2101      	movs	r1, #1
 80016d4:	462a      	mov	r2, r5
 80016d6:	f7ff f913 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016da:	2300      	movs	r3, #0
 80016dc:	18e2      	adds	r2, r4, r3
 80016de:	18d1      	adds	r1, r2, r3
 80016e0:	3301      	adds	r3, #1
 80016e2:	7912      	ldrb	r2, [r2, #4]
 80016e4:	f8a1 2056 	strh.w	r2, [r1, #86]	; 0x56
 80016e8:	2b09      	cmp	r3, #9
 80016ea:	d1f7      	bne.n	80016dc <_ZN4CRGB8rgb_readEh+0x134>
 80016ec:	462a      	mov	r2, r5
 80016ee:	4620      	mov	r0, r4
 80016f0:	2100      	movs	r1, #0
 80016f2:	f7ff f905 	bl	8000900 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016f6:	4622      	mov	r2, r4
 80016f8:	2300      	movs	r3, #0
 80016fa:	18e1      	adds	r1, r4, r3
 80016fc:	3301      	adds	r3, #1
 80016fe:	7908      	ldrb	r0, [r1, #4]
 8001700:	f8b2 1056 	ldrh.w	r1, [r2, #86]	; 0x56
 8001704:	2b09      	cmp	r3, #9
 8001706:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 800170a:	f8a2 1056 	strh.w	r1, [r2, #86]	; 0x56
 800170e:	f102 0202 	add.w	r2, r2, #2
 8001712:	d1f2      	bne.n	80016fa <_ZN4CRGB8rgb_readEh+0x152>
 8001714:	4620      	mov	r0, r4
 8001716:	f7ff f89c 	bl	8000852 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 800171a:	b336      	cbz	r6, 800176a <_ZN4CRGB8rgb_readEh+0x1c2>
 800171c:	2300      	movs	r3, #0
 800171e:	89e1      	ldrh	r1, [r4, #14]
 8001720:	f8b4 209e 	ldrh.w	r2, [r4, #158]	; 0x9e
 8001724:	440a      	add	r2, r1
 8001726:	f8a4 209e 	strh.w	r2, [r4, #158]	; 0x9e
 800172a:	8c21      	ldrh	r1, [r4, #32]
 800172c:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 8001730:	440a      	add	r2, r1
 8001732:	f8a4 20b0 	strh.w	r2, [r4, #176]	; 0xb0
 8001736:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 8001738:	f8b4 20c2 	ldrh.w	r2, [r4, #194]	; 0xc2
 800173c:	440a      	add	r2, r1
 800173e:	f8a4 20c2 	strh.w	r2, [r4, #194]	; 0xc2
 8001742:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
 8001746:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 800174a:	440a      	add	r2, r1
 800174c:	f8a4 20e6 	strh.w	r2, [r4, #230]	; 0xe6
 8001750:	f8b4 1044 	ldrh.w	r1, [r4, #68]	; 0x44
 8001754:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 8001758:	3301      	adds	r3, #1
 800175a:	440a      	add	r2, r1
 800175c:	2b09      	cmp	r3, #9
 800175e:	f8a4 20d4 	strh.w	r2, [r4, #212]	; 0xd4
 8001762:	f104 0402 	add.w	r4, r4, #2
 8001766:	d1da      	bne.n	800171e <_ZN4CRGB8rgb_readEh+0x176>
 8001768:	bd70      	pop	{r4, r5, r6, pc}
 800176a:	b672      	cpsid	i
 800176c:	89e0      	ldrh	r0, [r4, #14]
 800176e:	f8b4 309e 	ldrh.w	r3, [r4, #158]	; 0x9e
 8001772:	8c21      	ldrh	r1, [r4, #32]
 8001774:	8e62      	ldrh	r2, [r4, #50]	; 0x32
 8001776:	f8b4 5056 	ldrh.w	r5, [r4, #86]	; 0x56
 800177a:	1ac0      	subs	r0, r0, r3
 800177c:	f8b4 30b0 	ldrh.w	r3, [r4, #176]	; 0xb0
 8001780:	1ac9      	subs	r1, r1, r3
 8001782:	f8b4 30c2 	ldrh.w	r3, [r4, #194]	; 0xc2
 8001786:	1ad3      	subs	r3, r2, r3
 8001788:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 800178c:	1aaa      	subs	r2, r5, r2
 800178e:	f8a4 2056 	strh.w	r2, [r4, #86]	; 0x56
 8001792:	f8b4 5044 	ldrh.w	r5, [r4, #68]	; 0x44
 8001796:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 800179a:	b280      	uxth	r0, r0
 800179c:	b289      	uxth	r1, r1
 800179e:	b29b      	uxth	r3, r3
 80017a0:	1aaa      	subs	r2, r5, r2
 80017a2:	81e0      	strh	r0, [r4, #14]
 80017a4:	8421      	strh	r1, [r4, #32]
 80017a6:	8663      	strh	r3, [r4, #50]	; 0x32
 80017a8:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 80017ac:	b662      	cpsie	i
 80017ae:	b200      	sxth	r0, r0
 80017b0:	b209      	sxth	r1, r1
 80017b2:	1842      	adds	r2, r0, r1
 80017b4:	b21b      	sxth	r3, r3
 80017b6:	18d2      	adds	r2, r2, r3
 80017b8:	d011      	beq.n	80017de <_ZN4CRGB8rgb_readEh+0x236>
 80017ba:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 80017be:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
 80017c2:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 80017c6:	fb90 f0f2 	sdiv	r0, r0, r2
 80017ca:	fb91 f1f2 	sdiv	r1, r1, r2
 80017ce:	fb93 f2f2 	sdiv	r2, r3, r2
 80017d2:	f8a4 0068 	strh.w	r0, [r4, #104]	; 0x68
 80017d6:	f8a4 107a 	strh.w	r1, [r4, #122]	; 0x7a
 80017da:	f8a4 208c 	strh.w	r2, [r4, #140]	; 0x8c
 80017de:	3601      	adds	r6, #1
 80017e0:	2e09      	cmp	r6, #9
 80017e2:	f104 0402 	add.w	r4, r4, #2
 80017e6:	d1c0      	bne.n	800176a <_ZN4CRGB8rgb_readEh+0x1c2>
 80017e8:	bd70      	pop	{r4, r5, r6, pc}
	...

080017ec <_ZN4CRGB8rgb_initEv>:
 80017ec:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 80017ee:	4604      	mov	r4, r0
 80017f0:	4602      	mov	r2, r0
 80017f2:	2509      	movs	r5, #9
 80017f4:	2000      	movs	r0, #0
 80017f6:	3d01      	subs	r5, #1
 80017f8:	81d0      	strh	r0, [r2, #14]
 80017fa:	8410      	strh	r0, [r2, #32]
 80017fc:	8650      	strh	r0, [r2, #50]	; 0x32
 80017fe:	f8a2 0056 	strh.w	r0, [r2, #86]	; 0x56
 8001802:	f8a2 0044 	strh.w	r0, [r2, #68]	; 0x44
 8001806:	f8a2 009e 	strh.w	r0, [r2, #158]	; 0x9e
 800180a:	f8a2 00b0 	strh.w	r0, [r2, #176]	; 0xb0
 800180e:	f8a2 00c2 	strh.w	r0, [r2, #194]	; 0xc2
 8001812:	f8a2 00e6 	strh.w	r0, [r2, #230]	; 0xe6
 8001816:	f8a2 00d4 	strh.w	r0, [r2, #212]	; 0xd4
 800181a:	f8a2 0068 	strh.w	r0, [r2, #104]	; 0x68
 800181e:	f8a2 007a 	strh.w	r0, [r2, #122]	; 0x7a
 8001822:	f8a2 008c 	strh.w	r0, [r2, #140]	; 0x8c
 8001826:	f102 0202 	add.w	r2, r2, #2
 800182a:	d1e3      	bne.n	80017f4 <_ZN4CRGB8rgb_initEv+0x8>
 800182c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001830:	2208      	movs	r2, #8
 8001832:	851a      	strh	r2, [r3, #40]	; 0x28
 8001834:	4620      	mov	r0, r4
 8001836:	f7ff f8f3 	bl	8000a20 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 800183a:	4620      	mov	r0, r4
 800183c:	2172      	movs	r1, #114	; 0x72
 800183e:	2281      	movs	r2, #129	; 0x81
 8001840:	23ff      	movs	r3, #255	; 0xff
 8001842:	f7ff f844 	bl	80008ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001846:	4620      	mov	r0, r4
 8001848:	2172      	movs	r1, #114	; 0x72
 800184a:	2283      	movs	r2, #131	; 0x83
 800184c:	23ff      	movs	r3, #255	; 0xff
 800184e:	f7ff f83e 	bl	80008ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001852:	4620      	mov	r0, r4
 8001854:	2172      	movs	r1, #114	; 0x72
 8001856:	228d      	movs	r2, #141	; 0x8d
 8001858:	462b      	mov	r3, r5
 800185a:	f7ff f838 	bl	80008ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800185e:	2172      	movs	r1, #114	; 0x72
 8001860:	2280      	movs	r2, #128	; 0x80
 8001862:	2303      	movs	r3, #3
 8001864:	4620      	mov	r0, r4
 8001866:	f7ff f832 	bl	80008ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800186a:	4620      	mov	r0, r4
 800186c:	f7ff f924 	bl	8000ab8 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>
 8001870:	228f      	movs	r2, #143	; 0x8f
 8001872:	2323      	movs	r3, #35	; 0x23
 8001874:	2172      	movs	r1, #114	; 0x72
 8001876:	4620      	mov	r0, r4
 8001878:	f7ff f829 	bl	80008ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800187c:	4620      	mov	r0, r4
 800187e:	f7ff f91e 	bl	8000abe <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>
 8001882:	ae01      	add	r6, sp, #4
 8001884:	4620      	mov	r0, r4
 8001886:	4629      	mov	r1, r5
 8001888:	f7ff fe8e 	bl	80015a8 <_ZN4CRGB8rgb_readEh>
 800188c:	2292      	movs	r2, #146	; 0x92
 800188e:	4620      	mov	r0, r4
 8001890:	2172      	movs	r1, #114	; 0x72
 8001892:	4633      	mov	r3, r6
 8001894:	f7ff f8a2 	bl	80009dc <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8001898:	462a      	mov	r2, r5
 800189a:	5cb3      	ldrb	r3, [r6, r2]
 800189c:	2b69      	cmp	r3, #105	; 0x69
 800189e:	d002      	beq.n	80018a6 <_ZN4CRGB8rgb_initEv+0xba>
 80018a0:	2301      	movs	r3, #1
 80018a2:	4093      	lsls	r3, r2
 80018a4:	431d      	orrs	r5, r3
 80018a6:	3201      	adds	r2, #1
 80018a8:	2a09      	cmp	r2, #9
 80018aa:	d1f6      	bne.n	800189a <_ZN4CRGB8rgb_initEv+0xae>
 80018ac:	2604      	movs	r6, #4
 80018ae:	4620      	mov	r0, r4
 80018b0:	2101      	movs	r1, #1
 80018b2:	f7ff fe79 	bl	80015a8 <_ZN4CRGB8rgb_readEh>
 80018b6:	3e01      	subs	r6, #1
 80018b8:	d1f9      	bne.n	80018ae <_ZN4CRGB8rgb_initEv+0xc2>
 80018ba:	4622      	mov	r2, r4
 80018bc:	2109      	movs	r1, #9
 80018be:	f9b2 309e 	ldrsh.w	r3, [r2, #158]	; 0x9e
 80018c2:	089b      	lsrs	r3, r3, #2
 80018c4:	f8a2 309e 	strh.w	r3, [r2, #158]	; 0x9e
 80018c8:	f9b2 30b0 	ldrsh.w	r3, [r2, #176]	; 0xb0
 80018cc:	089b      	lsrs	r3, r3, #2
 80018ce:	f8a2 30b0 	strh.w	r3, [r2, #176]	; 0xb0
 80018d2:	f9b2 30c2 	ldrsh.w	r3, [r2, #194]	; 0xc2
 80018d6:	089b      	lsrs	r3, r3, #2
 80018d8:	f8a2 30c2 	strh.w	r3, [r2, #194]	; 0xc2
 80018dc:	f9b2 30e6 	ldrsh.w	r3, [r2, #230]	; 0xe6
 80018e0:	089b      	lsrs	r3, r3, #2
 80018e2:	f8a2 30e6 	strh.w	r3, [r2, #230]	; 0xe6
 80018e6:	f9b2 30d4 	ldrsh.w	r3, [r2, #212]	; 0xd4
 80018ea:	3901      	subs	r1, #1
 80018ec:	ea4f 0393 	mov.w	r3, r3, lsr #2
 80018f0:	f8a2 30d4 	strh.w	r3, [r2, #212]	; 0xd4
 80018f4:	f102 0202 	add.w	r2, r2, #2
 80018f8:	d1e1      	bne.n	80018be <_ZN4CRGB8rgb_initEv+0xd2>
 80018fa:	4620      	mov	r0, r4
 80018fc:	f7ff fe54 	bl	80015a8 <_ZN4CRGB8rgb_readEh>
 8001900:	b115      	cbz	r5, 8001908 <_ZN4CRGB8rgb_initEv+0x11c>
 8001902:	4803      	ldr	r0, [pc, #12]	; (8001910 <_ZN4CRGB8rgb_initEv+0x124>)
 8001904:	1b40      	subs	r0, r0, r5
 8001906:	e000      	b.n	800190a <_ZN4CRGB8rgb_initEv+0x11e>
 8001908:	4628      	mov	r0, r5
 800190a:	b004      	add	sp, #16
 800190c:	bd70      	pop	{r4, r5, r6, pc}
 800190e:	bf00      	nop
 8001910:	fffffc18 	.word	0xfffffc18

08001914 <_ZN4CRGB14get_rgb_resultEv>:
 8001914:	300e      	adds	r0, #14
 8001916:	4770      	bx	lr

08001918 <_ZN10MathVectorILj9EE4initEv>:
 8001918:	2300      	movs	r3, #0
 800191a:	18c2      	adds	r2, r0, r3
 800191c:	3304      	adds	r3, #4
 800191e:	2100      	movs	r1, #0
 8001920:	2b24      	cmp	r3, #36	; 0x24
 8001922:	6011      	str	r1, [r2, #0]
 8001924:	d1f9      	bne.n	800191a <_ZN10MathVectorILj9EE4initEv+0x2>
 8001926:	4770      	bx	lr

08001928 <_ZN10MathVectorILj3EE3mixERS0_f>:
 8001928:	2300      	movs	r3, #0
 800192a:	18ca      	adds	r2, r1, r3
 800192c:	edd2 7a00 	vldr	s15, [r2]
 8001930:	ed90 7a00 	vldr	s14, [r0]
 8001934:	eef7 6a00 	vmov.f32	s13, #112	; 0x70
 8001938:	ee76 6ac0 	vsub.f32	s13, s13, s0
 800193c:	ee60 7a27 	vmul.f32	s15, s0, s15
 8001940:	3304      	adds	r3, #4
 8001942:	eee6 7a87 	vfma.f32	s15, s13, s14
 8001946:	2b0c      	cmp	r3, #12
 8001948:	ece0 7a01 	vstmia	r0!, {s15}
 800194c:	d1ed      	bne.n	800192a <_ZN10MathVectorILj3EE3mixERS0_f+0x2>
 800194e:	4770      	bx	lr

08001950 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>:
 8001950:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001952:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 80019bc <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x6c>
 8001956:	f8d0 6600 	ldr.w	r6, [r0, #1536]	; 0x600
 800195a:	2500      	movs	r5, #0
 800195c:	462b      	mov	r3, r5
 800195e:	42b3      	cmp	r3, r6
 8001960:	d021      	beq.n	80019a6 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x56>
 8001962:	f04f 0c24 	mov.w	ip, #36	; 0x24
 8001966:	eddf 7a16 	vldr	s15, [pc, #88]	; 80019c0 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x70>
 800196a:	fb0c 0c03 	mla	ip, ip, r3, r0
 800196e:	2400      	movs	r4, #0
 8001970:	eb01 0e04 	add.w	lr, r1, r4
 8001974:	eb0c 0704 	add.w	r7, ip, r4
 8001978:	ed9e 6a00 	vldr	s12, [lr]
 800197c:	edd7 6a00 	vldr	s13, [r7]
 8001980:	3404      	adds	r4, #4
 8001982:	ee76 6a66 	vsub.f32	s13, s12, s13
 8001986:	2c24      	cmp	r4, #36	; 0x24
 8001988:	eee6 7aa6 	vfma.f32	s15, s13, s13
 800198c:	d1f0      	bne.n	8001970 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x20>
 800198e:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001992:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001996:	bf54      	ite	pl
 8001998:	eef0 7a47 	vmovpl.f32	s15, s14
 800199c:	461d      	movmi	r5, r3
 800199e:	eeb0 7a67 	vmov.f32	s14, s15
 80019a2:	3301      	adds	r3, #1
 80019a4:	e7db      	b.n	800195e <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0xe>
 80019a6:	f500 6390 	add.w	r3, r0, #1152	; 0x480
 80019aa:	210c      	movs	r1, #12
 80019ac:	4610      	mov	r0, r2
 80019ae:	fb01 3105 	mla	r1, r1, r5, r3
 80019b2:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 80019b6:	f7ff ffb7 	bl	8001928 <_ZN10MathVectorILj3EE3mixERS0_f>
 80019ba:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80019bc:	4cbebc20 	.word	0x4cbebc20
 80019c0:	00000000 	.word	0x00000000

080019c4 <_ZN21CLearningLineFollower3runEv>:
 80019c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80019c8:	ed2d 8b06 	vpush	{d8-d10}
 80019cc:	2310      	movs	r3, #16
 80019ce:	f200 6ba4 	addw	fp, r0, #1700	; 0x6a4
 80019d2:	f8c0 36a0 	str.w	r3, [r0, #1696]	; 0x6a0
 80019d6:	f100 07a0 	add.w	r7, r0, #160	; 0xa0
 80019da:	4bac      	ldr	r3, [pc, #688]	; (8001c8c <_ZN21CLearningLineFollower3runEv+0x2c8>)
 80019dc:	f8cb 3000 	str.w	r3, [fp]
 80019e0:	b083      	sub	sp, #12
 80019e2:	4604      	mov	r4, r0
 80019e4:	f500 69a4 	add.w	r9, r0, #1312	; 0x520
 80019e8:	463d      	mov	r5, r7
 80019ea:	f105 0624 	add.w	r6, r5, #36	; 0x24
 80019ee:	48a8      	ldr	r0, [pc, #672]	; (8001c90 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 80019f0:	f7fe fca6 	bl	8000340 <_ZN5CMath3rndEv>
 80019f4:	eca5 0a01 	vstmia	r5!, {s0}
 80019f8:	42b5      	cmp	r5, r6
 80019fa:	d1f8      	bne.n	80019ee <_ZN21CLearningLineFollower3runEv+0x2a>
 80019fc:	454d      	cmp	r5, r9
 80019fe:	d1f4      	bne.n	80019ea <_ZN21CLearningLineFollower3runEv+0x26>
 8001a00:	f504 62a5 	add.w	r2, r4, #1320	; 0x528
 8001a04:	2320      	movs	r3, #32
 8001a06:	ed9f 8aa3 	vldr	s16, [pc, #652]	; 8001c94 <_ZN21CLearningLineFollower3runEv+0x2d0>
 8001a0a:	ee18 1a10 	vmov	r1, s16
 8001a0e:	3b01      	subs	r3, #1
 8001a10:	ed02 8a02 	vstr	s16, [r2, #-8]
 8001a14:	ed02 8a01 	vstr	s16, [r2, #-4]
 8001a18:	f842 1b0c 	str.w	r1, [r2], #12
 8001a1c:	d1f3      	bne.n	8001a06 <_ZN21CLearningLineFollower3runEv+0x42>
 8001a1e:	f104 0858 	add.w	r8, r4, #88	; 0x58
 8001a22:	6523      	str	r3, [r4, #80]	; 0x50
 8001a24:	6563      	str	r3, [r4, #84]	; 0x54
 8001a26:	4640      	mov	r0, r8
 8001a28:	f104 0a7c 	add.w	sl, r4, #124	; 0x7c
 8001a2c:	f7ff ff74 	bl	8001918 <_ZN10MathVectorILj9EE4initEv>
 8001a30:	4650      	mov	r0, sl
 8001a32:	f7ff ff71 	bl	8001918 <_ZN10MathVectorILj9EE4initEv>
 8001a36:	f504 63d5 	add.w	r3, r4, #1704	; 0x6a8
 8001a3a:	ed83 8a00 	vstr	s16, [r3]
 8001a3e:	ed83 8a01 	vstr	s16, [r3, #4]
 8001a42:	ed83 8a02 	vstr	s16, [r3, #8]
 8001a46:	eebf 9a00 	vmov.f32	s18, #240	; 0xf0
 8001a4a:	2100      	movs	r1, #0
 8001a4c:	4892      	ldr	r0, [pc, #584]	; (8001c98 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001a4e:	f7ff fdab 	bl	80015a8 <_ZN4CRGB8rgb_readEh>
 8001a52:	4891      	ldr	r0, [pc, #580]	; (8001c98 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001a54:	f7ff ff5e 	bl	8001914 <_ZN4CRGB14get_rgb_resultEv>
 8001a58:	f104 062c 	add.w	r6, r4, #44	; 0x2c
 8001a5c:	4601      	mov	r1, r0
 8001a5e:	4620      	mov	r0, r4
 8001a60:	f7fe fc94 	bl	800038c <_ZN13CLinePosition7processEP10sRGBResult>
 8001a64:	f104 0558 	add.w	r5, r4, #88	; 0x58
 8001a68:	4631      	mov	r1, r6
 8001a6a:	4620      	mov	r0, r4
 8001a6c:	f7fe fd2f 	bl	80004ce <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE>
 8001a70:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8001a72:	f104 0e7c 	add.w	lr, r4, #124	; 0x7c
 8001a76:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001a7a:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8001a7c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001a80:	682b      	ldr	r3, [r5, #0]
 8001a82:	f8ce 3000 	str.w	r3, [lr]
 8001a86:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8001a88:	f104 0e58 	add.w	lr, r4, #88	; 0x58
 8001a8c:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001a90:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8001a92:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001a96:	6833      	ldr	r3, [r6, #0]
 8001a98:	602b      	str	r3, [r5, #0]
 8001a9a:	f504 66d5 	add.w	r6, r4, #1704	; 0x6a8
 8001a9e:	4632      	mov	r2, r6
 8001aa0:	4638      	mov	r0, r7
 8001aa2:	4641      	mov	r1, r8
 8001aa4:	f7ff ff54 	bl	8001950 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001aa8:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8001aaa:	6523      	str	r3, [r4, #80]	; 0x50
 8001aac:	4878      	ldr	r0, [pc, #480]	; (8001c90 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001aae:	f7fe fc2d 	bl	800030c <_ZN5CMath4randEv>
 8001ab2:	2364      	movs	r3, #100	; 0x64
 8001ab4:	fbb0 f2f3 	udiv	r2, r0, r3
 8001ab8:	fb02 0013 	mls	r0, r2, r3, r0
 8001abc:	2813      	cmp	r0, #19
 8001abe:	d809      	bhi.n	8001ad4 <_ZN21CLearningLineFollower3runEv+0x110>
 8001ac0:	4873      	ldr	r0, [pc, #460]	; (8001c90 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001ac2:	f7fe fc23 	bl	800030c <_ZN5CMath4randEv>
 8001ac6:	2503      	movs	r5, #3
 8001ac8:	fbb0 f5f5 	udiv	r5, r0, r5
 8001acc:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 8001ad0:	1b45      	subs	r5, r0, r5
 8001ad2:	e013      	b.n	8001afc <_ZN21CLearningLineFollower3runEv+0x138>
 8001ad4:	2500      	movs	r5, #0
 8001ad6:	4632      	mov	r2, r6
 8001ad8:	462b      	mov	r3, r5
 8001ada:	f504 61d5 	add.w	r1, r4, #1704	; 0x6a8
 8001ade:	eb01 0185 	add.w	r1, r1, r5, lsl #2
 8001ae2:	ecb2 7a01 	vldmia	r2!, {s14}
 8001ae6:	edd1 7a00 	vldr	s15, [r1]
 8001aea:	eeb4 7a67 	vcmp.f32	s14, s15
 8001aee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001af2:	bfc8      	it	gt
 8001af4:	461d      	movgt	r5, r3
 8001af6:	3301      	adds	r3, #1
 8001af8:	2b03      	cmp	r3, #3
 8001afa:	d1ee      	bne.n	8001ada <_ZN21CLearningLineFollower3runEv+0x116>
 8001afc:	2d01      	cmp	r5, #1
 8001afe:	6565      	str	r5, [r4, #84]	; 0x54
 8001b00:	d014      	beq.n	8001b2c <_ZN21CLearningLineFollower3runEv+0x168>
 8001b02:	d30b      	bcc.n	8001b1c <_ZN21CLearningLineFollower3runEv+0x158>
 8001b04:	2d02      	cmp	r5, #2
 8001b06:	d11c      	bne.n	8001b42 <_ZN21CLearningLineFollower3runEv+0x17e>
 8001b08:	4864      	ldr	r0, [pc, #400]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b0a:	2100      	movs	r1, #0
 8001b0c:	2221      	movs	r2, #33	; 0x21
 8001b0e:	f7fe fd6b 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001b12:	4862      	ldr	r0, [pc, #392]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b14:	2101      	movs	r1, #1
 8001b16:	f06f 020b 	mvn.w	r2, #11
 8001b1a:	e010      	b.n	8001b3e <_ZN21CLearningLineFollower3runEv+0x17a>
 8001b1c:	485f      	ldr	r0, [pc, #380]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b1e:	2100      	movs	r1, #0
 8001b20:	2221      	movs	r2, #33	; 0x21
 8001b22:	f7fe fd61 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001b26:	485d      	ldr	r0, [pc, #372]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b28:	2101      	movs	r1, #1
 8001b2a:	e007      	b.n	8001b3c <_ZN21CLearningLineFollower3runEv+0x178>
 8001b2c:	485b      	ldr	r0, [pc, #364]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b2e:	2100      	movs	r1, #0
 8001b30:	f06f 020b 	mvn.w	r2, #11
 8001b34:	f7fe fd58 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001b38:	4858      	ldr	r0, [pc, #352]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b3a:	4629      	mov	r1, r5
 8001b3c:	2221      	movs	r2, #33	; 0x21
 8001b3e:	f7fe fd53 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001b42:	4857      	ldr	r0, [pc, #348]	; (8001ca0 <_ZN21CLearningLineFollower3runEv+0x2dc>)
 8001b44:	2132      	movs	r1, #50	; 0x32
 8001b46:	f7ff f925 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001b4a:	2100      	movs	r1, #0
 8001b4c:	4852      	ldr	r0, [pc, #328]	; (8001c98 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001b4e:	f7ff fd2b 	bl	80015a8 <_ZN4CRGB8rgb_readEh>
 8001b52:	4851      	ldr	r0, [pc, #324]	; (8001c98 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001b54:	f7ff fede 	bl	8001914 <_ZN4CRGB14get_rgb_resultEv>
 8001b58:	4601      	mov	r1, r0
 8001b5a:	4620      	mov	r0, r4
 8001b5c:	f7fe fc16 	bl	800038c <_ZN13CLinePosition7processEP10sRGBResult>
 8001b60:	4620      	mov	r0, r4
 8001b62:	f7fe fcb1 	bl	80004c8 <_ZN13CLinePosition17get_line_positionEv>
 8001b66:	484a      	ldr	r0, [pc, #296]	; (8001c90 <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001b68:	f7fe fbc7 	bl	80002fa <_ZN5CMath3absEf>
 8001b6c:	eef7 8a00 	vmov.f32	s17, #112	; 0x70
 8001b70:	ee38 0ac0 	vsub.f32	s0, s17, s0
 8001b74:	6d22      	ldr	r2, [r4, #80]	; 0x50
 8001b76:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8001b78:	9201      	str	r2, [sp, #4]
 8001b7a:	eef6 7a00 	vmov.f32	s15, #96	; 0x60
 8001b7e:	4638      	mov	r0, r7
 8001b80:	4641      	mov	r1, r8
 8001b82:	4632      	mov	r2, r6
 8001b84:	ee70 9a67 	vsub.f32	s19, s0, s15
 8001b88:	9300      	str	r3, [sp, #0]
 8001b8a:	f7ff fee1 	bl	8001950 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001b8e:	9b00      	ldr	r3, [sp, #0]
 8001b90:	f504 65d5 	add.w	r5, r4, #1704	; 0x6a8
 8001b94:	eb05 0383 	add.w	r3, r5, r3, lsl #2
 8001b98:	edd3 7a00 	vldr	s15, [r3]
 8001b9c:	ed95 7a00 	vldr	s14, [r5]
 8001ba0:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001ba4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001ba8:	bf58      	it	pl
 8001baa:	eeb0 7a67 	vmovpl.f32	s14, s15
 8001bae:	edd5 7a01 	vldr	s15, [r5, #4]
 8001bb2:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001bb6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001bba:	eeb0 aa68 	vmov.f32	s20, s17
 8001bbe:	edd5 8a02 	vldr	s17, [r5, #8]
 8001bc2:	bf58      	it	pl
 8001bc4:	eef0 7a47 	vmovpl.f32	s15, s14
 8001bc8:	eef4 7ae8 	vcmpe.f32	s15, s17
 8001bcc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001bd0:	4638      	mov	r0, r7
 8001bd2:	4651      	mov	r1, sl
 8001bd4:	4632      	mov	r2, r6
 8001bd6:	bf58      	it	pl
 8001bd8:	eef0 8a67 	vmovpl.f32	s17, s15
 8001bdc:	f7ff feb8 	bl	8001950 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001be0:	eddf 7a30 	vldr	s15, [pc, #192]	; 8001ca4 <_ZN21CLearningLineFollower3runEv+0x2e0>
 8001be4:	9b01      	ldr	r3, [sp, #4]
 8001be6:	f8d4 16a0 	ldr.w	r1, [r4, #1696]	; 0x6a0
 8001bea:	eeb0 7a69 	vmov.f32	s14, s19
 8001bee:	eea8 7aa7 	vfma.f32	s14, s17, s15
 8001bf2:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8001bf6:	2200      	movs	r2, #0
 8001bf8:	4610      	mov	r0, r2
 8001bfa:	ed85 7a00 	vstr	s14, [r5]
 8001bfe:	ed9f 7a2a 	vldr	s14, [pc, #168]	; 8001ca8 <_ZN21CLearningLineFollower3runEv+0x2e4>
 8001c02:	463d      	mov	r5, r7
 8001c04:	4288      	cmp	r0, r1
 8001c06:	d01e      	beq.n	8001c46 <_ZN21CLearningLineFollower3runEv+0x282>
 8001c08:	eddf 7a22 	vldr	s15, [pc, #136]	; 8001c94 <_ZN21CLearningLineFollower3runEv+0x2d0>
 8001c0c:	2300      	movs	r3, #0
 8001c0e:	eb04 0c03 	add.w	ip, r4, r3
 8001c12:	eb05 0e03 	add.w	lr, r5, r3
 8001c16:	ed9c 6a1f 	vldr	s12, [ip, #124]	; 0x7c
 8001c1a:	edde 6a00 	vldr	s13, [lr]
 8001c1e:	3304      	adds	r3, #4
 8001c20:	ee76 6a66 	vsub.f32	s13, s12, s13
 8001c24:	2b24      	cmp	r3, #36	; 0x24
 8001c26:	eee6 7aa6 	vfma.f32	s15, s13, s13
 8001c2a:	d1f0      	bne.n	8001c0e <_ZN21CLearningLineFollower3runEv+0x24a>
 8001c2c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001c30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c34:	bf54      	ite	pl
 8001c36:	eef0 7a47 	vmovpl.f32	s15, s14
 8001c3a:	4602      	movmi	r2, r0
 8001c3c:	3524      	adds	r5, #36	; 0x24
 8001c3e:	3001      	adds	r0, #1
 8001c40:	eeb0 7a67 	vmov.f32	s14, s15
 8001c44:	e7de      	b.n	8001c04 <_ZN21CLearningLineFollower3runEv+0x240>
 8001c46:	291f      	cmp	r1, #31
 8001c48:	f104 007c 	add.w	r0, r4, #124	; 0x7c
 8001c4c:	f04f 0324 	mov.w	r3, #36	; 0x24
 8001c50:	d82c      	bhi.n	8001cac <_ZN21CLearningLineFollower3runEv+0x2e8>
 8001c52:	fb03 7201 	mla	r2, r3, r1, r7
 8001c56:	2300      	movs	r3, #0
 8001c58:	18c5      	adds	r5, r0, r3
 8001c5a:	ed92 7a00 	vldr	s14, [r2]
 8001c5e:	edd5 7a00 	vldr	s15, [r5]
 8001c62:	eee7 7a08 	vfma.f32	s15, s14, s16
 8001c66:	3304      	adds	r3, #4
 8001c68:	2b24      	cmp	r3, #36	; 0x24
 8001c6a:	ece2 7a01 	vstmia	r2!, {s15}
 8001c6e:	d1f3      	bne.n	8001c58 <_ZN21CLearningLineFollower3runEv+0x294>
 8001c70:	200c      	movs	r0, #12
 8001c72:	fb00 9001 	mla	r0, r0, r1, r9
 8001c76:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 8001c7a:	4631      	mov	r1, r6
 8001c7c:	f7ff fe54 	bl	8001928 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001c80:	f8d4 36a0 	ldr.w	r3, [r4, #1696]	; 0x6a0
 8001c84:	3301      	adds	r3, #1
 8001c86:	f8c4 36a0 	str.w	r3, [r4, #1696]	; 0x6a0
 8001c8a:	e02a      	b.n	8001ce2 <_ZN21CLearningLineFollower3runEv+0x31e>
 8001c8c:	3dcccccd 	.word	0x3dcccccd
 8001c90:	200001bc 	.word	0x200001bc
 8001c94:	00000000 	.word	0x00000000
 8001c98:	20000038 	.word	0x20000038
 8001c9c:	200001a8 	.word	0x200001a8
 8001ca0:	200001f8 	.word	0x200001f8
 8001ca4:	3f666666 	.word	0x3f666666
 8001ca8:	4cbebc20 	.word	0x4cbebc20
 8001cac:	ed9b 0a00 	vldr	s0, [fp]
 8001cb0:	fb03 7102 	mla	r1, r3, r2, r7
 8001cb4:	2300      	movs	r3, #0
 8001cb6:	18c5      	adds	r5, r0, r3
 8001cb8:	edd5 7a00 	vldr	s15, [r5]
 8001cbc:	ed91 7a00 	vldr	s14, [r1]
 8001cc0:	ee7a 6a40 	vsub.f32	s13, s20, s0
 8001cc4:	ee60 7a27 	vmul.f32	s15, s0, s15
 8001cc8:	3304      	adds	r3, #4
 8001cca:	eee6 7a87 	vfma.f32	s15, s13, s14
 8001cce:	2b24      	cmp	r3, #36	; 0x24
 8001cd0:	ece1 7a01 	vstmia	r1!, {s15}
 8001cd4:	d1ef      	bne.n	8001cb6 <_ZN21CLearningLineFollower3runEv+0x2f2>
 8001cd6:	200c      	movs	r0, #12
 8001cd8:	fb00 9002 	mla	r0, r0, r2, r9
 8001cdc:	4631      	mov	r1, r6
 8001cde:	f7ff fe23 	bl	8001928 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001ce2:	4620      	mov	r0, r4
 8001ce4:	f7fe fbee 	bl	80004c4 <_ZN13CLinePosition7on_lineEv>
 8001ce8:	4605      	mov	r5, r0
 8001cea:	b9f0      	cbnz	r0, 8001d2a <_ZN21CLearningLineFollower3runEv+0x366>
 8001cec:	481a      	ldr	r0, [pc, #104]	; (8001d58 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001cee:	4629      	mov	r1, r5
 8001cf0:	f06f 0220 	mvn.w	r2, #32
 8001cf4:	f7fe fc78 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001cf8:	f06f 0220 	mvn.w	r2, #32
 8001cfc:	4816      	ldr	r0, [pc, #88]	; (8001d58 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001cfe:	2101      	movs	r1, #1
 8001d00:	f7fe fc72 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001d04:	4815      	ldr	r0, [pc, #84]	; (8001d5c <_ZN21CLearningLineFollower3runEv+0x398>)
 8001d06:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 8001d0a:	f7ff f843 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001d0e:	4812      	ldr	r0, [pc, #72]	; (8001d58 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d10:	4629      	mov	r1, r5
 8001d12:	462a      	mov	r2, r5
 8001d14:	f7fe fc68 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001d18:	480f      	ldr	r0, [pc, #60]	; (8001d58 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d1a:	2101      	movs	r1, #1
 8001d1c:	462a      	mov	r2, r5
 8001d1e:	f7fe fc63 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001d22:	480e      	ldr	r0, [pc, #56]	; (8001d5c <_ZN21CLearningLineFollower3runEv+0x398>)
 8001d24:	2164      	movs	r1, #100	; 0x64
 8001d26:	f7ff f835 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001d2a:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8001d60 <_ZN21CLearningLineFollower3runEv+0x39c>
 8001d2e:	480d      	ldr	r0, [pc, #52]	; (8001d64 <_ZN21CLearningLineFollower3runEv+0x3a0>)
 8001d30:	490d      	ldr	r1, [pc, #52]	; (8001d68 <_ZN21CLearningLineFollower3runEv+0x3a4>)
 8001d32:	ee69 9aa7 	vmul.f32	s19, s19, s15
 8001d36:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8001d6c <_ZN21CLearningLineFollower3runEv+0x3a8>
 8001d3a:	eee9 9a27 	vfma.f32	s19, s18, s15
 8001d3e:	eddf 7a0c 	vldr	s15, [pc, #48]	; 8001d70 <_ZN21CLearningLineFollower3runEv+0x3ac>
 8001d42:	ee69 7aa7 	vmul.f32	s15, s19, s15
 8001d46:	eeb0 9a69 	vmov.f32	s18, s19
 8001d4a:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001d4e:	ee17 2a90 	vmov	r2, s15
 8001d52:	f7ff f978 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8001d56:	e678      	b.n	8001a4a <_ZN21CLearningLineFollower3runEv+0x86>
 8001d58:	200001a8 	.word	0x200001a8
 8001d5c:	200001f8 	.word	0x200001f8
 8001d60:	3c23d70a 	.word	0x3c23d70a
 8001d64:	20000038 	.word	0x20000038
 8001d68:	08002dbc 	.word	0x08002dbc
 8001d6c:	3f7d70a4 	.word	0x3f7d70a4
 8001d70:	447a0000 	.word	0x447a0000

08001d74 <_ZN5CDemo4initEv>:
 8001d74:	4770      	bx	lr
	...

08001d78 <_ZN5CDemo10blink_taskEv>:
 8001d78:	b508      	push	{r3, lr}
 8001d7a:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d7e:	480d      	ldr	r0, [pc, #52]	; (8001db4 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d80:	f7fe ff52 	bl	8000c28 <_ZN5CGPIO7gpio_onEm>
 8001d84:	480c      	ldr	r0, [pc, #48]	; (8001db8 <_ZN5CDemo10blink_taskEv+0x40>)
 8001d86:	f7fe fff7 	bl	8000d78 <_ZN6CTimer8get_timeEv>
 8001d8a:	490c      	ldr	r1, [pc, #48]	; (8001dbc <_ZN5CDemo10blink_taskEv+0x44>)
 8001d8c:	4602      	mov	r2, r0
 8001d8e:	4809      	ldr	r0, [pc, #36]	; (8001db4 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d90:	f7ff f959 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8001d94:	4808      	ldr	r0, [pc, #32]	; (8001db8 <_ZN5CDemo10blink_taskEv+0x40>)
 8001d96:	210a      	movs	r1, #10
 8001d98:	f7fe fffc 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001d9c:	4805      	ldr	r0, [pc, #20]	; (8001db4 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d9e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001da2:	f7fe ff47 	bl	8000c34 <_ZN5CGPIO8gpio_offEm>
 8001da6:	4804      	ldr	r0, [pc, #16]	; (8001db8 <_ZN5CDemo10blink_taskEv+0x40>)
 8001da8:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001dac:	f7fe fff2 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001db0:	e7e3      	b.n	8001d7a <_ZN5CDemo10blink_taskEv+0x2>
 8001db2:	bf00      	nop
 8001db4:	20000038 	.word	0x20000038
 8001db8:	200001f8 	.word	0x200001f8
 8001dbc:	08002da4 	.word	0x08002da4

08001dc0 <_ZN5CDemo10moves_taskEv>:
 8001dc0:	b538      	push	{r3, r4, r5, lr}
 8001dc2:	4c21      	ldr	r4, [pc, #132]	; (8001e48 <_ZN5CDemo10moves_taskEv+0x88>)
 8001dc4:	4d21      	ldr	r5, [pc, #132]	; (8001e4c <_ZN5CDemo10moves_taskEv+0x8c>)
 8001dc6:	4620      	mov	r0, r4
 8001dc8:	2100      	movs	r1, #0
 8001dca:	2232      	movs	r2, #50	; 0x32
 8001dcc:	f7fe fc0c 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001dd0:	4620      	mov	r0, r4
 8001dd2:	2200      	movs	r2, #0
 8001dd4:	2101      	movs	r1, #1
 8001dd6:	f7fe fc07 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001dda:	4628      	mov	r0, r5
 8001ddc:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001de0:	f7fe ffd8 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001de4:	4620      	mov	r0, r4
 8001de6:	2100      	movs	r1, #0
 8001de8:	f06f 0231 	mvn.w	r2, #49	; 0x31
 8001dec:	f7fe fbfc 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001df0:	4620      	mov	r0, r4
 8001df2:	2200      	movs	r2, #0
 8001df4:	2101      	movs	r1, #1
 8001df6:	f7fe fbf7 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001dfa:	4628      	mov	r0, r5
 8001dfc:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001e00:	f7fe ffc8 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001e04:	2100      	movs	r1, #0
 8001e06:	4620      	mov	r0, r4
 8001e08:	460a      	mov	r2, r1
 8001e0a:	f7fe fbed 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001e0e:	4620      	mov	r0, r4
 8001e10:	f06f 0231 	mvn.w	r2, #49	; 0x31
 8001e14:	2101      	movs	r1, #1
 8001e16:	f7fe fbe7 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001e1a:	4628      	mov	r0, r5
 8001e1c:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001e20:	f7fe ffb8 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001e24:	2100      	movs	r1, #0
 8001e26:	4620      	mov	r0, r4
 8001e28:	460a      	mov	r2, r1
 8001e2a:	f7fe fbdd 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001e2e:	4620      	mov	r0, r4
 8001e30:	2101      	movs	r1, #1
 8001e32:	2232      	movs	r2, #50	; 0x32
 8001e34:	f7fe fbd8 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001e38:	4628      	mov	r0, r5
 8001e3a:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001e3e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001e42:	f7fe bfa7 	b.w	8000d94 <_ZN6CTimer8delay_msEm>
 8001e46:	bf00      	nop
 8001e48:	200001a8 	.word	0x200001a8
 8001e4c:	200001f8 	.word	0x200001f8

08001e50 <_ZN5CDemo24basic_line_follower_taskEv>:
 8001e50:	b510      	push	{r4, lr}
 8001e52:	b094      	sub	sp, #80	; 0x50
 8001e54:	a809      	add	r0, sp, #36	; 0x24
 8001e56:	f7fe fa8d 	bl	8000374 <_ZN13CLinePositionC1Ev>
 8001e5a:	a801      	add	r0, sp, #4
 8001e5c:	eeb2 0a04 	vmov.f32	s0, #36	; 0x24
 8001e60:	eddf 0a38 	vldr	s1, [pc, #224]	; 8001f44 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001e64:	eddf 1a38 	vldr	s3, [pc, #224]	; 8001f48 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8001e68:	eeb2 1a00 	vmov.f32	s2, #32
 8001e6c:	f7fe fa0c 	bl	8000288 <_ZN4CPIDC1Effff>
 8001e70:	4836      	ldr	r0, [pc, #216]	; (8001f4c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001e72:	2100      	movs	r1, #0
 8001e74:	220a      	movs	r2, #10
 8001e76:	f7fe ff9f 	bl	8000db8 <_ZN6CTimer22event_timer_set_periodEhm>
 8001e7a:	4834      	ldr	r0, [pc, #208]	; (8001f4c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001e7c:	2100      	movs	r1, #0
 8001e7e:	f7fe ffaf 	bl	8000de0 <_ZN6CTimer17event_timer_checkEh>
 8001e82:	2800      	cmp	r0, #0
 8001e84:	d0f9      	beq.n	8001e7a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001e86:	2100      	movs	r1, #0
 8001e88:	4831      	ldr	r0, [pc, #196]	; (8001f50 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001e8a:	f7ff fb8d 	bl	80015a8 <_ZN4CRGB8rgb_readEh>
 8001e8e:	4830      	ldr	r0, [pc, #192]	; (8001f50 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001e90:	f7ff fd40 	bl	8001914 <_ZN4CRGB14get_rgb_resultEv>
 8001e94:	4601      	mov	r1, r0
 8001e96:	a809      	add	r0, sp, #36	; 0x24
 8001e98:	f7fe fa78 	bl	800038c <_ZN13CLinePosition7processEP10sRGBResult>
 8001e9c:	a809      	add	r0, sp, #36	; 0x24
 8001e9e:	f7fe fb11 	bl	80004c4 <_ZN13CLinePosition7on_lineEv>
 8001ea2:	4604      	mov	r4, r0
 8001ea4:	a809      	add	r0, sp, #36	; 0x24
 8001ea6:	f7fe fb0f 	bl	80004c8 <_ZN13CLinePosition17get_line_positionEv>
 8001eaa:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8001f54 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 8001eae:	4828      	ldr	r0, [pc, #160]	; (8001f50 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001eb0:	4929      	ldr	r1, [pc, #164]	; (8001f58 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001eb2:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001eb6:	4622      	mov	r2, r4
 8001eb8:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001ebc:	ee10 3a10 	vmov	r3, s0
 8001ec0:	f7ff f8c1 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8001ec4:	a809      	add	r0, sp, #36	; 0x24
 8001ec6:	f7fe fafd 	bl	80004c4 <_ZN13CLinePosition7on_lineEv>
 8001eca:	4604      	mov	r4, r0
 8001ecc:	b1d0      	cbz	r0, 8001f04 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 8001ece:	a809      	add	r0, sp, #36	; 0x24
 8001ed0:	f7fe fafa 	bl	80004c8 <_ZN13CLinePosition17get_line_positionEv>
 8001ed4:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8001f44 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001ed8:	a801      	add	r0, sp, #4
 8001eda:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8001ede:	f7fe f9d9 	bl	8000294 <_ZN4CPID7processEf>
 8001ee2:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001ee6:	481d      	ldr	r0, [pc, #116]	; (8001f5c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001ee8:	ee10 4a10 	vmov	r4, s0
 8001eec:	2100      	movs	r1, #0
 8001eee:	f104 0219 	add.w	r2, r4, #25
 8001ef2:	f7fe fb79 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001ef6:	4819      	ldr	r0, [pc, #100]	; (8001f5c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001ef8:	2101      	movs	r1, #1
 8001efa:	f1c4 0219 	rsb	r2, r4, #25
 8001efe:	f7fe fb73 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001f02:	e7ba      	b.n	8001e7a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001f04:	4621      	mov	r1, r4
 8001f06:	4815      	ldr	r0, [pc, #84]	; (8001f5c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f08:	f06f 0218 	mvn.w	r2, #24
 8001f0c:	f7fe fb6c 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001f10:	f06f 0218 	mvn.w	r2, #24
 8001f14:	4811      	ldr	r0, [pc, #68]	; (8001f5c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f16:	2101      	movs	r1, #1
 8001f18:	f7fe fb66 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001f1c:	480b      	ldr	r0, [pc, #44]	; (8001f4c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001f1e:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001f22:	f7fe ff37 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001f26:	4621      	mov	r1, r4
 8001f28:	4622      	mov	r2, r4
 8001f2a:	480c      	ldr	r0, [pc, #48]	; (8001f5c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f2c:	f7fe fb5c 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001f30:	480a      	ldr	r0, [pc, #40]	; (8001f5c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f32:	2101      	movs	r1, #1
 8001f34:	4622      	mov	r2, r4
 8001f36:	f7fe fb57 	bl	80005e8 <_ZN6CMotor9set_motorEml>
 8001f3a:	4804      	ldr	r0, [pc, #16]	; (8001f4c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001f3c:	2164      	movs	r1, #100	; 0x64
 8001f3e:	f7fe ff29 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 8001f42:	e79a      	b.n	8001e7a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001f44:	00000000 	.word	0x00000000
 8001f48:	42c80000 	.word	0x42c80000
 8001f4c:	200001f8 	.word	0x200001f8
 8001f50:	20000038 	.word	0x20000038
 8001f54:	447a0000 	.word	0x447a0000
 8001f58:	08002db9 	.word	0x08002db9
 8001f5c:	200001a8 	.word	0x200001a8

08001f60 <_ZN5CDemo3runEj>:
 8001f60:	2902      	cmp	r1, #2
 8001f62:	b508      	push	{r3, lr}
 8001f64:	d007      	beq.n	8001f76 <_ZN5CDemo3runEj+0x16>
 8001f66:	2903      	cmp	r1, #3
 8001f68:	d007      	beq.n	8001f7a <_ZN5CDemo3runEj+0x1a>
 8001f6a:	2901      	cmp	r1, #1
 8001f6c:	d10a      	bne.n	8001f84 <_ZN5CDemo3runEj+0x24>
 8001f6e:	f7ff ff27 	bl	8001dc0 <_ZN5CDemo10moves_taskEv>
 8001f72:	f7ff ff01 	bl	8001d78 <_ZN5CDemo10blink_taskEv>
 8001f76:	f7ff ff6b 	bl	8001e50 <_ZN5CDemo24basic_line_follower_taskEv>
 8001f7a:	4803      	ldr	r0, [pc, #12]	; (8001f88 <_ZN5CDemo3runEj+0x28>)
 8001f7c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001f80:	f7ff bd20 	b.w	80019c4 <_ZN21CLearningLineFollower3runEv>
 8001f84:	bd08      	pop	{r3, pc}
 8001f86:	bf00      	nop
 8001f88:	20000238 	.word	0x20000238
 8001f8c:	00000000 	.word	0x00000000

08001f90 <main>:
 8001f90:	b530      	push	{r4, r5, lr}
 8001f92:	b08f      	sub	sp, #60	; 0x3c
 8001f94:	f000 fa80 	bl	8002498 <sytem_clock_init>
 8001f98:	4863      	ldr	r0, [pc, #396]	; (8002128 <main+0x198>)
 8001f9a:	f7fe f927 	bl	80001ec <_ZN7CKodama4initEv>
 8001f9e:	210a      	movs	r1, #10
 8001fa0:	4861      	ldr	r0, [pc, #388]	; (8002128 <main+0x198>)
 8001fa2:	f7fe f958 	bl	8000256 <_ZN7CKodama6set_dtEl>
 8001fa6:	a548      	add	r5, pc, #288	; (adr r5, 80020c8 <main+0x138>)
 8001fa8:	e9d5 4500 	ldrd	r4, r5, [r5]
 8001fac:	485e      	ldr	r0, [pc, #376]	; (8002128 <main+0x198>)
 8001fae:	f7fe f93f 	bl	8000230 <_ZN7CKodama5sleepEv>
 8001fb2:	2204      	movs	r2, #4
 8001fb4:	2308      	movs	r3, #8
 8001fb6:	9300      	str	r3, [sp, #0]
 8001fb8:	485b      	ldr	r0, [pc, #364]	; (8002128 <main+0x198>)
 8001fba:	495c      	ldr	r1, [pc, #368]	; (800212c <main+0x19c>)
 8001fbc:	4613      	mov	r3, r2
 8001fbe:	f7ff f842 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8001fc2:	4859      	ldr	r0, [pc, #356]	; (8002128 <main+0x198>)
 8001fc4:	495a      	ldr	r1, [pc, #360]	; (8002130 <main+0x1a0>)
 8001fc6:	4622      	mov	r2, r4
 8001fc8:	462b      	mov	r3, r5
 8001fca:	f7ff f83c 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8001fce:	4b59      	ldr	r3, [pc, #356]	; (8002134 <main+0x1a4>)
 8001fd0:	4855      	ldr	r0, [pc, #340]	; (8002128 <main+0x198>)
 8001fd2:	4959      	ldr	r1, [pc, #356]	; (8002138 <main+0x1a8>)
 8001fd4:	2200      	movs	r2, #0
 8001fd6:	e9cd 2300 	strd	r2, r3, [sp]
 8001fda:	a33d      	add	r3, pc, #244	; (adr r3, 80020d0 <main+0x140>)
 8001fdc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001fe0:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8001fe4:	a33c      	add	r3, pc, #240	; (adr r3, 80020d8 <main+0x148>)
 8001fe6:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001fea:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8001fee:	a33c      	add	r3, pc, #240	; (adr r3, 80020e0 <main+0x150>)
 8001ff0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001ff4:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8001ff8:	a33b      	add	r3, pc, #236	; (adr r3, 80020e8 <main+0x158>)
 8001ffa:	e9d3 2300 	ldrd	r2, r3, [r3]
 8001ffe:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8002002:	a33b      	add	r3, pc, #236	; (adr r3, 80020f0 <main+0x160>)
 8002004:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002008:	e9cd 4504 	strd	r4, r5, [sp, #16]
 800200c:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8002010:	2200      	movs	r2, #0
 8002012:	2300      	movs	r3, #0
 8002014:	f7ff f817 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 8002018:	4b48      	ldr	r3, [pc, #288]	; (800213c <main+0x1ac>)
 800201a:	4843      	ldr	r0, [pc, #268]	; (8002128 <main+0x198>)
 800201c:	4946      	ldr	r1, [pc, #280]	; (8002138 <main+0x1a8>)
 800201e:	2200      	movs	r2, #0
 8002020:	e9cd 2300 	strd	r2, r3, [sp]
 8002024:	a334      	add	r3, pc, #208	; (adr r3, 80020f8 <main+0x168>)
 8002026:	e9d3 2300 	ldrd	r2, r3, [r3]
 800202a:	e9cd 2302 	strd	r2, r3, [sp, #8]
 800202e:	a334      	add	r3, pc, #208	; (adr r3, 8002100 <main+0x170>)
 8002030:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002034:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8002038:	a333      	add	r3, pc, #204	; (adr r3, 8002108 <main+0x178>)
 800203a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800203e:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8002042:	a333      	add	r3, pc, #204	; (adr r3, 8002110 <main+0x180>)
 8002044:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002048:	e9cd 2308 	strd	r2, r3, [sp, #32]
 800204c:	a332      	add	r3, pc, #200	; (adr r3, 8002118 <main+0x188>)
 800204e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002052:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8002056:	a332      	add	r3, pc, #200	; (adr r3, 8002120 <main+0x190>)
 8002058:	e9d3 2300 	ldrd	r2, r3, [r3]
 800205c:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8002060:	2200      	movs	r2, #0
 8002062:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
 8002066:	f7fe ffee 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 800206a:	482f      	ldr	r0, [pc, #188]	; (8002128 <main+0x198>)
 800206c:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8002070:	f7fe fde6 	bl	8000c40 <_ZN5CGPIO7gpio_inEm>
 8002074:	b148      	cbz	r0, 800208a <main+0xfa>
 8002076:	482c      	ldr	r0, [pc, #176]	; (8002128 <main+0x198>)
 8002078:	f7fe f8de 	bl	8000238 <_ZN7CKodama6wakeupEv>
 800207c:	4830      	ldr	r0, [pc, #192]	; (8002140 <main+0x1b0>)
 800207e:	f7ff fe79 	bl	8001d74 <_ZN5CDemo4initEv>
 8002082:	482f      	ldr	r0, [pc, #188]	; (8002140 <main+0x1b0>)
 8002084:	2101      	movs	r1, #1
 8002086:	f7ff ff6b 	bl	8001f60 <_ZN5CDemo3runEj>
 800208a:	4827      	ldr	r0, [pc, #156]	; (8002128 <main+0x198>)
 800208c:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002090:	f7fe fdca 	bl	8000c28 <_ZN5CGPIO7gpio_onEm>
 8002094:	482b      	ldr	r0, [pc, #172]	; (8002144 <main+0x1b4>)
 8002096:	210a      	movs	r1, #10
 8002098:	f7fe fe7c 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 800209c:	4822      	ldr	r0, [pc, #136]	; (8002128 <main+0x198>)
 800209e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80020a2:	f7fe fdc7 	bl	8000c34 <_ZN5CGPIO8gpio_offEm>
 80020a6:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80020aa:	4826      	ldr	r0, [pc, #152]	; (8002144 <main+0x1b4>)
 80020ac:	f7fe fe72 	bl	8000d94 <_ZN6CTimer8delay_msEm>
 80020b0:	4824      	ldr	r0, [pc, #144]	; (8002144 <main+0x1b4>)
 80020b2:	f7fe fe61 	bl	8000d78 <_ZN6CTimer8get_timeEv>
 80020b6:	4924      	ldr	r1, [pc, #144]	; (8002148 <main+0x1b8>)
 80020b8:	4602      	mov	r2, r0
 80020ba:	481b      	ldr	r0, [pc, #108]	; (8002128 <main+0x198>)
 80020bc:	f7fe ffc3 	bl	8001046 <_ZN9CTerminal6printfEPKcz>
 80020c0:	e7d3      	b.n	800206a <main+0xda>
 80020c2:	bf00      	nop
 80020c4:	f3af 8000 	nop.w
 80020c8:	60000000 	.word	0x60000000
 80020cc:	400921fb 	.word	0x400921fb
 80020d0:	00000000 	.word	0x00000000
 80020d4:	3fbf9ad0 	.word	0x3fbf9ad0
 80020d8:	20000000 	.word	0x20000000
 80020dc:	40406251 	.word	0x40406251
 80020e0:	60000000 	.word	0x60000000
 80020e4:	40934a45 	.word	0x40934a45
 80020e8:	c0000000 	.word	0xc0000000
 80020ec:	4016cccc 	.word	0x4016cccc
 80020f0:	a0000000 	.word	0xa0000000
 80020f4:	4016e147 	.word	0x4016e147
 80020f8:	00000000 	.word	0x00000000
 80020fc:	bfbf9ad0 	.word	0xbfbf9ad0
 8002100:	60000000 	.word	0x60000000
 8002104:	c00921fb 	.word	0xc00921fb
 8002108:	20000000 	.word	0x20000000
 800210c:	c0406251 	.word	0xc0406251
 8002110:	60000000 	.word	0x60000000
 8002114:	c0934a45 	.word	0xc0934a45
 8002118:	c0000000 	.word	0xc0000000
 800211c:	c016cccc 	.word	0xc016cccc
 8002120:	a0000000 	.word	0xa0000000
 8002124:	c016e147 	.word	0xc016e147
 8002128:	20000038 	.word	0x20000038
 800212c:	08002dc1 	.word	0x08002dc1
 8002130:	08002de1 	.word	0x08002de1
 8002134:	3ff00000 	.word	0x3ff00000
 8002138:	08002df3 	.word	0x08002df3
 800213c:	bff00000 	.word	0xbff00000
 8002140:	200008f0 	.word	0x200008f0
 8002144:	200001f8 	.word	0x200001f8
 8002148:	08002e0c 	.word	0x08002e0c
 800214c:	f3af 8000 	nop.w

08002150 <Default_Handler>:
 8002150:	4668      	mov	r0, sp
 8002152:	f020 0107 	bic.w	r1, r0, #7
 8002156:	468d      	mov	sp, r1
 8002158:	b501      	push	{r0, lr}
 800215a:	bf00      	nop
 800215c:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002160:	4685      	mov	sp, r0
 8002162:	4770      	bx	lr

08002164 <HardFault_Handler>:
 8002164:	bf00      	nop
 8002166:	e7fd      	b.n	8002164 <HardFault_Handler>

08002168 <_reset_init>:
 8002168:	4a0e      	ldr	r2, [pc, #56]	; (80021a4 <_reset_init+0x3c>)
 800216a:	480f      	ldr	r0, [pc, #60]	; (80021a8 <_reset_init+0x40>)
 800216c:	1a80      	subs	r0, r0, r2
 800216e:	1080      	asrs	r0, r0, #2
 8002170:	2300      	movs	r3, #0
 8002172:	4283      	cmp	r3, r0
 8002174:	d006      	beq.n	8002184 <_reset_init+0x1c>
 8002176:	490d      	ldr	r1, [pc, #52]	; (80021ac <_reset_init+0x44>)
 8002178:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 800217c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002180:	3301      	adds	r3, #1
 8002182:	e7f6      	b.n	8002172 <_reset_init+0xa>
 8002184:	4b0a      	ldr	r3, [pc, #40]	; (80021b0 <_reset_init+0x48>)
 8002186:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 800218a:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 800218e:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 8002192:	f503 730c 	add.w	r3, r3, #560	; 0x230
 8002196:	685a      	ldr	r2, [r3, #4]
 8002198:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 800219c:	605a      	str	r2, [r3, #4]
 800219e:	f7ff bef7 	b.w	8001f90 <main>
 80021a2:	bf00      	nop
 80021a4:	20000000 	.word	0x20000000
 80021a8:	20000034 	.word	0x20000034
 80021ac:	08002e1c 	.word	0x08002e1c
 80021b0:	e000ed00 	.word	0xe000ed00

080021b4 <GPIO_Init>:
 80021b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021b6:	bf00      	nop
 80021b8:	bf00      	nop
 80021ba:	bf00      	nop
 80021bc:	bf00      	nop
 80021be:	2300      	movs	r3, #0
 80021c0:	680e      	ldr	r6, [r1, #0]
 80021c2:	461a      	mov	r2, r3
 80021c4:	2501      	movs	r5, #1
 80021c6:	4095      	lsls	r5, r2
 80021c8:	ea05 0406 	and.w	r4, r5, r6
 80021cc:	42ac      	cmp	r4, r5
 80021ce:	d130      	bne.n	8002232 <GPIO_Init+0x7e>
 80021d0:	790d      	ldrb	r5, [r1, #4]
 80021d2:	1e6f      	subs	r7, r5, #1
 80021d4:	2f01      	cmp	r7, #1
 80021d6:	d81c      	bhi.n	8002212 <GPIO_Init+0x5e>
 80021d8:	bf00      	nop
 80021da:	f04f 0c03 	mov.w	ip, #3
 80021de:	6887      	ldr	r7, [r0, #8]
 80021e0:	fa0c fc03 	lsl.w	ip, ip, r3
 80021e4:	ea27 070c 	bic.w	r7, r7, ip
 80021e8:	6087      	str	r7, [r0, #8]
 80021ea:	f891 c005 	ldrb.w	ip, [r1, #5]
 80021ee:	6887      	ldr	r7, [r0, #8]
 80021f0:	fa0c fc03 	lsl.w	ip, ip, r3
 80021f4:	ea4c 0707 	orr.w	r7, ip, r7
 80021f8:	6087      	str	r7, [r0, #8]
 80021fa:	bf00      	nop
 80021fc:	8887      	ldrh	r7, [r0, #4]
 80021fe:	b2bf      	uxth	r7, r7
 8002200:	ea27 0404 	bic.w	r4, r7, r4
 8002204:	8084      	strh	r4, [r0, #4]
 8002206:	798c      	ldrb	r4, [r1, #6]
 8002208:	8887      	ldrh	r7, [r0, #4]
 800220a:	4094      	lsls	r4, r2
 800220c:	433c      	orrs	r4, r7
 800220e:	b2a4      	uxth	r4, r4
 8002210:	8084      	strh	r4, [r0, #4]
 8002212:	2403      	movs	r4, #3
 8002214:	6807      	ldr	r7, [r0, #0]
 8002216:	409c      	lsls	r4, r3
 8002218:	43e4      	mvns	r4, r4
 800221a:	4027      	ands	r7, r4
 800221c:	6007      	str	r7, [r0, #0]
 800221e:	6807      	ldr	r7, [r0, #0]
 8002220:	409d      	lsls	r5, r3
 8002222:	433d      	orrs	r5, r7
 8002224:	6005      	str	r5, [r0, #0]
 8002226:	68c5      	ldr	r5, [r0, #12]
 8002228:	402c      	ands	r4, r5
 800222a:	79cd      	ldrb	r5, [r1, #7]
 800222c:	409d      	lsls	r5, r3
 800222e:	432c      	orrs	r4, r5
 8002230:	60c4      	str	r4, [r0, #12]
 8002232:	3201      	adds	r2, #1
 8002234:	2a10      	cmp	r2, #16
 8002236:	f103 0302 	add.w	r3, r3, #2
 800223a:	d1c3      	bne.n	80021c4 <GPIO_Init+0x10>
 800223c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800223e <GPIO_SetBits>:
 800223e:	bf00      	nop
 8002240:	bf00      	nop
 8002242:	6181      	str	r1, [r0, #24]
 8002244:	4770      	bx	lr

08002246 <GPIO_PinAFConfig>:
 8002246:	b510      	push	{r4, lr}
 8002248:	bf00      	nop
 800224a:	bf00      	nop
 800224c:	bf00      	nop
 800224e:	f001 0307 	and.w	r3, r1, #7
 8002252:	08c9      	lsrs	r1, r1, #3
 8002254:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002258:	009b      	lsls	r3, r3, #2
 800225a:	6a04      	ldr	r4, [r0, #32]
 800225c:	210f      	movs	r1, #15
 800225e:	4099      	lsls	r1, r3
 8002260:	ea24 0101 	bic.w	r1, r4, r1
 8002264:	6201      	str	r1, [r0, #32]
 8002266:	6a01      	ldr	r1, [r0, #32]
 8002268:	fa02 f303 	lsl.w	r3, r2, r3
 800226c:	430b      	orrs	r3, r1
 800226e:	6203      	str	r3, [r0, #32]
 8002270:	bd10      	pop	{r4, pc}
	...

08002274 <EXTI_Init>:
 8002274:	b570      	push	{r4, r5, r6, lr}
 8002276:	bf00      	nop
 8002278:	bf00      	nop
 800227a:	bf00      	nop
 800227c:	bf00      	nop
 800227e:	7983      	ldrb	r3, [r0, #6]
 8002280:	6802      	ldr	r2, [r0, #0]
 8002282:	7904      	ldrb	r4, [r0, #4]
 8002284:	2b00      	cmp	r3, #0
 8002286:	d064      	beq.n	8002352 <EXTI_Init+0xde>
 8002288:	f022 011f 	bic.w	r1, r2, #31
 800228c:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002290:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002294:	2301      	movs	r3, #1
 8002296:	680d      	ldr	r5, [r1, #0]
 8002298:	f002 021f 	and.w	r2, r2, #31
 800229c:	fa03 f202 	lsl.w	r2, r3, r2
 80022a0:	ea25 0202 	bic.w	r2, r5, r2
 80022a4:	600a      	str	r2, [r1, #0]
 80022a6:	6805      	ldr	r5, [r0, #0]
 80022a8:	4a32      	ldr	r2, [pc, #200]	; (8002374 <EXTI_Init+0x100>)
 80022aa:	f025 011f 	bic.w	r1, r5, #31
 80022ae:	f005 051f 	and.w	r5, r5, #31
 80022b2:	588e      	ldr	r6, [r1, r2]
 80022b4:	fa03 f505 	lsl.w	r5, r3, r5
 80022b8:	ea26 0505 	bic.w	r5, r6, r5
 80022bc:	508d      	str	r5, [r1, r2]
 80022be:	6805      	ldr	r5, [r0, #0]
 80022c0:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80022c4:	f025 011f 	bic.w	r1, r5, #31
 80022c8:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80022cc:	f005 051f 	and.w	r5, r5, #31
 80022d0:	5854      	ldr	r4, [r2, r1]
 80022d2:	fa03 f505 	lsl.w	r5, r3, r5
 80022d6:	4325      	orrs	r5, r4
 80022d8:	5055      	str	r5, [r2, r1]
 80022da:	6801      	ldr	r1, [r0, #0]
 80022dc:	4d26      	ldr	r5, [pc, #152]	; (8002378 <EXTI_Init+0x104>)
 80022de:	f021 021f 	bic.w	r2, r1, #31
 80022e2:	f001 011f 	and.w	r1, r1, #31
 80022e6:	5954      	ldr	r4, [r2, r5]
 80022e8:	fa03 f101 	lsl.w	r1, r3, r1
 80022ec:	ea24 0101 	bic.w	r1, r4, r1
 80022f0:	5151      	str	r1, [r2, r5]
 80022f2:	6801      	ldr	r1, [r0, #0]
 80022f4:	4c21      	ldr	r4, [pc, #132]	; (800237c <EXTI_Init+0x108>)
 80022f6:	f021 021f 	bic.w	r2, r1, #31
 80022fa:	f001 011f 	and.w	r1, r1, #31
 80022fe:	5916      	ldr	r6, [r2, r4]
 8002300:	fa03 f101 	lsl.w	r1, r3, r1
 8002304:	ea26 0101 	bic.w	r1, r6, r1
 8002308:	5111      	str	r1, [r2, r4]
 800230a:	7942      	ldrb	r2, [r0, #5]
 800230c:	6801      	ldr	r1, [r0, #0]
 800230e:	2a10      	cmp	r2, #16
 8002310:	d112      	bne.n	8002338 <EXTI_Init+0xc4>
 8002312:	f021 021f 	bic.w	r2, r1, #31
 8002316:	f001 011f 	and.w	r1, r1, #31
 800231a:	5956      	ldr	r6, [r2, r5]
 800231c:	fa03 f101 	lsl.w	r1, r3, r1
 8002320:	4331      	orrs	r1, r6
 8002322:	5151      	str	r1, [r2, r5]
 8002324:	6801      	ldr	r1, [r0, #0]
 8002326:	f021 021f 	bic.w	r2, r1, #31
 800232a:	f001 011f 	and.w	r1, r1, #31
 800232e:	5910      	ldr	r0, [r2, r4]
 8002330:	408b      	lsls	r3, r1
 8002332:	4303      	orrs	r3, r0
 8002334:	5113      	str	r3, [r2, r4]
 8002336:	bd70      	pop	{r4, r5, r6, pc}
 8002338:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800233c:	f021 001f 	bic.w	r0, r1, #31
 8002340:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002344:	f001 011f 	and.w	r1, r1, #31
 8002348:	5814      	ldr	r4, [r2, r0]
 800234a:	408b      	lsls	r3, r1
 800234c:	4323      	orrs	r3, r4
 800234e:	5013      	str	r3, [r2, r0]
 8002350:	bd70      	pop	{r4, r5, r6, pc}
 8002352:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8002356:	f022 011f 	bic.w	r1, r2, #31
 800235a:	f503 3382 	add.w	r3, r3, #66560	; 0x10400
 800235e:	f002 021f 	and.w	r2, r2, #31
 8002362:	5858      	ldr	r0, [r3, r1]
 8002364:	2401      	movs	r4, #1
 8002366:	fa04 f202 	lsl.w	r2, r4, r2
 800236a:	ea20 0202 	bic.w	r2, r0, r2
 800236e:	505a      	str	r2, [r3, r1]
 8002370:	bd70      	pop	{r4, r5, r6, pc}
 8002372:	bf00      	nop
 8002374:	40010404 	.word	0x40010404
 8002378:	40010408 	.word	0x40010408
 800237c:	4001040c 	.word	0x4001040c

08002380 <EXTI_ClearITPendingBit>:
 8002380:	f020 021f 	bic.w	r2, r0, #31
 8002384:	2301      	movs	r3, #1
 8002386:	f000 001f 	and.w	r0, r0, #31
 800238a:	fa03 f000 	lsl.w	r0, r3, r0
 800238e:	4b01      	ldr	r3, [pc, #4]	; (8002394 <EXTI_ClearITPendingBit+0x14>)
 8002390:	50d0      	str	r0, [r2, r3]
 8002392:	4770      	bx	lr
 8002394:	40010414 	.word	0x40010414

08002398 <SystemInit>:
 8002398:	4b39      	ldr	r3, [pc, #228]	; (8002480 <SystemInit+0xe8>)
 800239a:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 800239e:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80023a2:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80023a6:	4b37      	ldr	r3, [pc, #220]	; (8002484 <SystemInit+0xec>)
 80023a8:	681a      	ldr	r2, [r3, #0]
 80023aa:	f042 0201 	orr.w	r2, r2, #1
 80023ae:	601a      	str	r2, [r3, #0]
 80023b0:	6859      	ldr	r1, [r3, #4]
 80023b2:	4a35      	ldr	r2, [pc, #212]	; (8002488 <SystemInit+0xf0>)
 80023b4:	400a      	ands	r2, r1
 80023b6:	605a      	str	r2, [r3, #4]
 80023b8:	681a      	ldr	r2, [r3, #0]
 80023ba:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80023be:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80023c2:	601a      	str	r2, [r3, #0]
 80023c4:	681a      	ldr	r2, [r3, #0]
 80023c6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80023ca:	601a      	str	r2, [r3, #0]
 80023cc:	685a      	ldr	r2, [r3, #4]
 80023ce:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80023d2:	605a      	str	r2, [r3, #4]
 80023d4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80023d6:	f022 020f 	bic.w	r2, r2, #15
 80023da:	62da      	str	r2, [r3, #44]	; 0x2c
 80023dc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023de:	4a2b      	ldr	r2, [pc, #172]	; (800248c <SystemInit+0xf4>)
 80023e0:	b082      	sub	sp, #8
 80023e2:	400a      	ands	r2, r1
 80023e4:	631a      	str	r2, [r3, #48]	; 0x30
 80023e6:	2200      	movs	r2, #0
 80023e8:	609a      	str	r2, [r3, #8]
 80023ea:	9200      	str	r2, [sp, #0]
 80023ec:	9201      	str	r2, [sp, #4]
 80023ee:	681a      	ldr	r2, [r3, #0]
 80023f0:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80023f4:	601a      	str	r2, [r3, #0]
 80023f6:	681a      	ldr	r2, [r3, #0]
 80023f8:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80023fc:	9201      	str	r2, [sp, #4]
 80023fe:	9a00      	ldr	r2, [sp, #0]
 8002400:	3201      	adds	r2, #1
 8002402:	9200      	str	r2, [sp, #0]
 8002404:	9a01      	ldr	r2, [sp, #4]
 8002406:	b91a      	cbnz	r2, 8002410 <SystemInit+0x78>
 8002408:	9a00      	ldr	r2, [sp, #0]
 800240a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800240e:	d1f2      	bne.n	80023f6 <SystemInit+0x5e>
 8002410:	681a      	ldr	r2, [r3, #0]
 8002412:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002416:	bf18      	it	ne
 8002418:	2201      	movne	r2, #1
 800241a:	9201      	str	r2, [sp, #4]
 800241c:	9a01      	ldr	r2, [sp, #4]
 800241e:	2a01      	cmp	r2, #1
 8002420:	d005      	beq.n	800242e <SystemInit+0x96>
 8002422:	4b17      	ldr	r3, [pc, #92]	; (8002480 <SystemInit+0xe8>)
 8002424:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002428:	609a      	str	r2, [r3, #8]
 800242a:	b002      	add	sp, #8
 800242c:	4770      	bx	lr
 800242e:	4a18      	ldr	r2, [pc, #96]	; (8002490 <SystemInit+0xf8>)
 8002430:	2112      	movs	r1, #18
 8002432:	6011      	str	r1, [r2, #0]
 8002434:	685a      	ldr	r2, [r3, #4]
 8002436:	605a      	str	r2, [r3, #4]
 8002438:	685a      	ldr	r2, [r3, #4]
 800243a:	605a      	str	r2, [r3, #4]
 800243c:	685a      	ldr	r2, [r3, #4]
 800243e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002442:	605a      	str	r2, [r3, #4]
 8002444:	685a      	ldr	r2, [r3, #4]
 8002446:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800244a:	605a      	str	r2, [r3, #4]
 800244c:	685a      	ldr	r2, [r3, #4]
 800244e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002452:	605a      	str	r2, [r3, #4]
 8002454:	681a      	ldr	r2, [r3, #0]
 8002456:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800245a:	601a      	str	r2, [r3, #0]
 800245c:	6819      	ldr	r1, [r3, #0]
 800245e:	4a09      	ldr	r2, [pc, #36]	; (8002484 <SystemInit+0xec>)
 8002460:	0189      	lsls	r1, r1, #6
 8002462:	d5fb      	bpl.n	800245c <SystemInit+0xc4>
 8002464:	6851      	ldr	r1, [r2, #4]
 8002466:	f021 0103 	bic.w	r1, r1, #3
 800246a:	6051      	str	r1, [r2, #4]
 800246c:	6851      	ldr	r1, [r2, #4]
 800246e:	f041 0102 	orr.w	r1, r1, #2
 8002472:	6051      	str	r1, [r2, #4]
 8002474:	685a      	ldr	r2, [r3, #4]
 8002476:	f002 020c 	and.w	r2, r2, #12
 800247a:	2a08      	cmp	r2, #8
 800247c:	d1fa      	bne.n	8002474 <SystemInit+0xdc>
 800247e:	e7d0      	b.n	8002422 <SystemInit+0x8a>
 8002480:	e000ed00 	.word	0xe000ed00
 8002484:	40021000 	.word	0x40021000
 8002488:	f87fc00c 	.word	0xf87fc00c
 800248c:	ff00fccc 	.word	0xff00fccc
 8002490:	40022000 	.word	0x40022000

08002494 <core_yield>:
 8002494:	bf00      	nop
 8002496:	4770      	bx	lr

08002498 <sytem_clock_init>:
 8002498:	f7ff bf7e 	b.w	8002398 <SystemInit>

0800249c <SYSCFG_EXTILineConfig>:
 800249c:	b510      	push	{r4, lr}
 800249e:	bf00      	nop
 80024a0:	bf00      	nop
 80024a2:	f001 0303 	and.w	r3, r1, #3
 80024a6:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 80024aa:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80024ae:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 80024b2:	009b      	lsls	r3, r3, #2
 80024b4:	688c      	ldr	r4, [r1, #8]
 80024b6:	220f      	movs	r2, #15
 80024b8:	409a      	lsls	r2, r3
 80024ba:	ea24 0202 	bic.w	r2, r4, r2
 80024be:	608a      	str	r2, [r1, #8]
 80024c0:	688a      	ldr	r2, [r1, #8]
 80024c2:	fa00 f303 	lsl.w	r3, r0, r3
 80024c6:	4313      	orrs	r3, r2
 80024c8:	608b      	str	r3, [r1, #8]
 80024ca:	bd10      	pop	{r4, pc}

080024cc <RCC_GetClocksFreq>:
 80024cc:	4aaf      	ldr	r2, [pc, #700]	; (800278c <RCC_GetClocksFreq+0x2c0>)
 80024ce:	6851      	ldr	r1, [r2, #4]
 80024d0:	f001 010c 	and.w	r1, r1, #12
 80024d4:	2904      	cmp	r1, #4
 80024d6:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80024da:	d005      	beq.n	80024e8 <RCC_GetClocksFreq+0x1c>
 80024dc:	2908      	cmp	r1, #8
 80024de:	d006      	beq.n	80024ee <RCC_GetClocksFreq+0x22>
 80024e0:	4bab      	ldr	r3, [pc, #684]	; (8002790 <RCC_GetClocksFreq+0x2c4>)
 80024e2:	6003      	str	r3, [r0, #0]
 80024e4:	b9b9      	cbnz	r1, 8002516 <RCC_GetClocksFreq+0x4a>
 80024e6:	e017      	b.n	8002518 <RCC_GetClocksFreq+0x4c>
 80024e8:	4ba9      	ldr	r3, [pc, #676]	; (8002790 <RCC_GetClocksFreq+0x2c4>)
 80024ea:	6003      	str	r3, [r0, #0]
 80024ec:	e013      	b.n	8002516 <RCC_GetClocksFreq+0x4a>
 80024ee:	6853      	ldr	r3, [r2, #4]
 80024f0:	6854      	ldr	r4, [r2, #4]
 80024f2:	f3c3 4383 	ubfx	r3, r3, #18, #4
 80024f6:	03e6      	lsls	r6, r4, #15
 80024f8:	f103 0302 	add.w	r3, r3, #2
 80024fc:	d401      	bmi.n	8002502 <RCC_GetClocksFreq+0x36>
 80024fe:	49a5      	ldr	r1, [pc, #660]	; (8002794 <RCC_GetClocksFreq+0x2c8>)
 8002500:	e006      	b.n	8002510 <RCC_GetClocksFreq+0x44>
 8002502:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
 8002504:	4ca2      	ldr	r4, [pc, #648]	; (8002790 <RCC_GetClocksFreq+0x2c4>)
 8002506:	f001 010f 	and.w	r1, r1, #15
 800250a:	3101      	adds	r1, #1
 800250c:	fbb4 f1f1 	udiv	r1, r4, r1
 8002510:	4359      	muls	r1, r3
 8002512:	6001      	str	r1, [r0, #0]
 8002514:	e000      	b.n	8002518 <RCC_GetClocksFreq+0x4c>
 8002516:	2100      	movs	r1, #0
 8002518:	6853      	ldr	r3, [r2, #4]
 800251a:	4e9f      	ldr	r6, [pc, #636]	; (8002798 <RCC_GetClocksFreq+0x2cc>)
 800251c:	f8df 827c 	ldr.w	r8, [pc, #636]	; 800279c <RCC_GetClocksFreq+0x2d0>
 8002520:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002524:	5cf5      	ldrb	r5, [r6, r3]
 8002526:	6803      	ldr	r3, [r0, #0]
 8002528:	b2ed      	uxtb	r5, r5
 800252a:	fa23 f405 	lsr.w	r4, r3, r5
 800252e:	6044      	str	r4, [r0, #4]
 8002530:	6857      	ldr	r7, [r2, #4]
 8002532:	f3c7 2702 	ubfx	r7, r7, #8, #3
 8002536:	5df7      	ldrb	r7, [r6, r7]
 8002538:	fa24 f707 	lsr.w	r7, r4, r7
 800253c:	6087      	str	r7, [r0, #8]
 800253e:	f8d2 c004 	ldr.w	ip, [r2, #4]
 8002542:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8002546:	f816 600c 	ldrb.w	r6, [r6, ip]
 800254a:	b2f6      	uxtb	r6, r6
 800254c:	40f4      	lsrs	r4, r6
 800254e:	60c4      	str	r4, [r0, #12]
 8002550:	f8d2 902c 	ldr.w	r9, [r2, #44]	; 0x2c
 8002554:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8002558:	f009 0c0f 	and.w	ip, r9, #15
 800255c:	f019 0f10 	tst.w	r9, #16
 8002560:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8002564:	46c1      	mov	r9, r8
 8002566:	fa1f fc8c 	uxth.w	ip, ip
 800256a:	d007      	beq.n	800257c <RCC_GetClocksFreq+0xb0>
 800256c:	f1bc 0f00 	cmp.w	ip, #0
 8002570:	d004      	beq.n	800257c <RCC_GetClocksFreq+0xb0>
 8002572:	fbb1 fcfc 	udiv	ip, r1, ip
 8002576:	f8c0 c010 	str.w	ip, [r0, #16]
 800257a:	e000      	b.n	800257e <RCC_GetClocksFreq+0xb2>
 800257c:	6103      	str	r3, [r0, #16]
 800257e:	f8d2 802c 	ldr.w	r8, [r2, #44]	; 0x2c
 8002582:	f3c8 2844 	ubfx	r8, r8, #9, #5
 8002586:	f008 0c0f 	and.w	ip, r8, #15
 800258a:	f018 0f10 	tst.w	r8, #16
 800258e:	f839 c01c 	ldrh.w	ip, [r9, ip, lsl #1]
 8002592:	fa1f fc8c 	uxth.w	ip, ip
 8002596:	d007      	beq.n	80025a8 <RCC_GetClocksFreq+0xdc>
 8002598:	f1bc 0f00 	cmp.w	ip, #0
 800259c:	d004      	beq.n	80025a8 <RCC_GetClocksFreq+0xdc>
 800259e:	fbb1 fcfc 	udiv	ip, r1, ip
 80025a2:	f8c0 c014 	str.w	ip, [r0, #20]
 80025a6:	e000      	b.n	80025aa <RCC_GetClocksFreq+0xde>
 80025a8:	6143      	str	r3, [r0, #20]
 80025aa:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025ae:	f01c 0f10 	tst.w	ip, #16
 80025b2:	bf06      	itte	eq
 80025b4:	f8df c1d8 	ldreq.w	ip, [pc, #472]	; 8002790 <RCC_GetClocksFreq+0x2c4>
 80025b8:	f8c0 c018 	streq.w	ip, [r0, #24]
 80025bc:	6183      	strne	r3, [r0, #24]
 80025be:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025c2:	f01c 0f20 	tst.w	ip, #32
 80025c6:	bf06      	itte	eq
 80025c8:	f8df c1c4 	ldreq.w	ip, [pc, #452]	; 8002790 <RCC_GetClocksFreq+0x2c4>
 80025cc:	f8c0 c01c 	streq.w	ip, [r0, #28]
 80025d0:	61c3      	strne	r3, [r0, #28]
 80025d2:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025d6:	f01c 0f40 	tst.w	ip, #64	; 0x40
 80025da:	bf06      	itte	eq
 80025dc:	f8df c1b0 	ldreq.w	ip, [pc, #432]	; 8002790 <RCC_GetClocksFreq+0x2c4>
 80025e0:	f8c0 c020 	streq.w	ip, [r0, #32]
 80025e4:	6203      	strne	r3, [r0, #32]
 80025e6:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025ea:	f41c 7f80 	tst.w	ip, #256	; 0x100
 80025ee:	d008      	beq.n	8002602 <RCC_GetClocksFreq+0x136>
 80025f0:	428b      	cmp	r3, r1
 80025f2:	d106      	bne.n	8002602 <RCC_GetClocksFreq+0x136>
 80025f4:	42ae      	cmp	r6, r5
 80025f6:	d104      	bne.n	8002602 <RCC_GetClocksFreq+0x136>
 80025f8:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80025fc:	f8c0 c024 	str.w	ip, [r0, #36]	; 0x24
 8002600:	e000      	b.n	8002604 <RCC_GetClocksFreq+0x138>
 8002602:	6244      	str	r4, [r0, #36]	; 0x24
 8002604:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002608:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 800260c:	d008      	beq.n	8002620 <RCC_GetClocksFreq+0x154>
 800260e:	428b      	cmp	r3, r1
 8002610:	d106      	bne.n	8002620 <RCC_GetClocksFreq+0x154>
 8002612:	42ae      	cmp	r6, r5
 8002614:	d104      	bne.n	8002620 <RCC_GetClocksFreq+0x154>
 8002616:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800261a:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 800261e:	e000      	b.n	8002622 <RCC_GetClocksFreq+0x156>
 8002620:	6284      	str	r4, [r0, #40]	; 0x28
 8002622:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002626:	f41c 7f00 	tst.w	ip, #512	; 0x200
 800262a:	d008      	beq.n	800263e <RCC_GetClocksFreq+0x172>
 800262c:	428b      	cmp	r3, r1
 800262e:	d106      	bne.n	800263e <RCC_GetClocksFreq+0x172>
 8002630:	42ae      	cmp	r6, r5
 8002632:	d104      	bne.n	800263e <RCC_GetClocksFreq+0x172>
 8002634:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002638:	f8c0 c02c 	str.w	ip, [r0, #44]	; 0x2c
 800263c:	e000      	b.n	8002640 <RCC_GetClocksFreq+0x174>
 800263e:	62c4      	str	r4, [r0, #44]	; 0x2c
 8002640:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002644:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8002648:	d008      	beq.n	800265c <RCC_GetClocksFreq+0x190>
 800264a:	428b      	cmp	r3, r1
 800264c:	d106      	bne.n	800265c <RCC_GetClocksFreq+0x190>
 800264e:	42ae      	cmp	r6, r5
 8002650:	d104      	bne.n	800265c <RCC_GetClocksFreq+0x190>
 8002652:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002656:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 800265a:	e000      	b.n	800265e <RCC_GetClocksFreq+0x192>
 800265c:	64c4      	str	r4, [r0, #76]	; 0x4c
 800265e:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002662:	f41c 6f00 	tst.w	ip, #2048	; 0x800
 8002666:	d008      	beq.n	800267a <RCC_GetClocksFreq+0x1ae>
 8002668:	428b      	cmp	r3, r1
 800266a:	d106      	bne.n	800267a <RCC_GetClocksFreq+0x1ae>
 800266c:	42ae      	cmp	r6, r5
 800266e:	d104      	bne.n	800267a <RCC_GetClocksFreq+0x1ae>
 8002670:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002674:	f8c0 c050 	str.w	ip, [r0, #80]	; 0x50
 8002678:	e000      	b.n	800267c <RCC_GetClocksFreq+0x1b0>
 800267a:	6504      	str	r4, [r0, #80]	; 0x50
 800267c:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002680:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 8002684:	d008      	beq.n	8002698 <RCC_GetClocksFreq+0x1cc>
 8002686:	428b      	cmp	r3, r1
 8002688:	d106      	bne.n	8002698 <RCC_GetClocksFreq+0x1cc>
 800268a:	42ae      	cmp	r6, r5
 800268c:	d104      	bne.n	8002698 <RCC_GetClocksFreq+0x1cc>
 800268e:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002692:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 8002696:	e000      	b.n	800269a <RCC_GetClocksFreq+0x1ce>
 8002698:	6504      	str	r4, [r0, #80]	; 0x50
 800269a:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800269e:	f41c 4f00 	tst.w	ip, #32768	; 0x8000
 80026a2:	d006      	beq.n	80026b2 <RCC_GetClocksFreq+0x1e6>
 80026a4:	428b      	cmp	r3, r1
 80026a6:	d104      	bne.n	80026b2 <RCC_GetClocksFreq+0x1e6>
 80026a8:	42ae      	cmp	r6, r5
 80026aa:	d102      	bne.n	80026b2 <RCC_GetClocksFreq+0x1e6>
 80026ac:	0059      	lsls	r1, r3, #1
 80026ae:	6581      	str	r1, [r0, #88]	; 0x58
 80026b0:	e000      	b.n	80026b4 <RCC_GetClocksFreq+0x1e8>
 80026b2:	6584      	str	r4, [r0, #88]	; 0x58
 80026b4:	6b15      	ldr	r5, [r2, #48]	; 0x30
 80026b6:	4935      	ldr	r1, [pc, #212]	; (800278c <RCC_GetClocksFreq+0x2c0>)
 80026b8:	07ad      	lsls	r5, r5, #30
 80026ba:	d101      	bne.n	80026c0 <RCC_GetClocksFreq+0x1f4>
 80026bc:	6384      	str	r4, [r0, #56]	; 0x38
 80026be:	e015      	b.n	80026ec <RCC_GetClocksFreq+0x220>
 80026c0:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80026c2:	f004 0403 	and.w	r4, r4, #3
 80026c6:	2c01      	cmp	r4, #1
 80026c8:	d101      	bne.n	80026ce <RCC_GetClocksFreq+0x202>
 80026ca:	6383      	str	r3, [r0, #56]	; 0x38
 80026cc:	e00e      	b.n	80026ec <RCC_GetClocksFreq+0x220>
 80026ce:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80026d0:	f004 0403 	and.w	r4, r4, #3
 80026d4:	2c02      	cmp	r4, #2
 80026d6:	d102      	bne.n	80026de <RCC_GetClocksFreq+0x212>
 80026d8:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80026dc:	e005      	b.n	80026ea <RCC_GetClocksFreq+0x21e>
 80026de:	6b09      	ldr	r1, [r1, #48]	; 0x30
 80026e0:	f001 0103 	and.w	r1, r1, #3
 80026e4:	2903      	cmp	r1, #3
 80026e6:	d101      	bne.n	80026ec <RCC_GetClocksFreq+0x220>
 80026e8:	4929      	ldr	r1, [pc, #164]	; (8002790 <RCC_GetClocksFreq+0x2c4>)
 80026ea:	6381      	str	r1, [r0, #56]	; 0x38
 80026ec:	6b14      	ldr	r4, [r2, #48]	; 0x30
 80026ee:	4927      	ldr	r1, [pc, #156]	; (800278c <RCC_GetClocksFreq+0x2c0>)
 80026f0:	f414 3f40 	tst.w	r4, #196608	; 0x30000
 80026f4:	d101      	bne.n	80026fa <RCC_GetClocksFreq+0x22e>
 80026f6:	63c7      	str	r7, [r0, #60]	; 0x3c
 80026f8:	e018      	b.n	800272c <RCC_GetClocksFreq+0x260>
 80026fa:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80026fc:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002700:	f5b4 3f80 	cmp.w	r4, #65536	; 0x10000
 8002704:	d101      	bne.n	800270a <RCC_GetClocksFreq+0x23e>
 8002706:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002708:	e010      	b.n	800272c <RCC_GetClocksFreq+0x260>
 800270a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800270c:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002710:	f5b4 3f00 	cmp.w	r4, #131072	; 0x20000
 8002714:	d102      	bne.n	800271c <RCC_GetClocksFreq+0x250>
 8002716:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800271a:	e006      	b.n	800272a <RCC_GetClocksFreq+0x25e>
 800271c:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800271e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8002722:	f5b1 3f40 	cmp.w	r1, #196608	; 0x30000
 8002726:	d101      	bne.n	800272c <RCC_GetClocksFreq+0x260>
 8002728:	4919      	ldr	r1, [pc, #100]	; (8002790 <RCC_GetClocksFreq+0x2c4>)
 800272a:	63c1      	str	r1, [r0, #60]	; 0x3c
 800272c:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800272e:	4917      	ldr	r1, [pc, #92]	; (800278c <RCC_GetClocksFreq+0x2c0>)
 8002730:	f414 2f40 	tst.w	r4, #786432	; 0xc0000
 8002734:	d101      	bne.n	800273a <RCC_GetClocksFreq+0x26e>
 8002736:	6407      	str	r7, [r0, #64]	; 0x40
 8002738:	e018      	b.n	800276c <RCC_GetClocksFreq+0x2a0>
 800273a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800273c:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8002740:	f5b4 2f80 	cmp.w	r4, #262144	; 0x40000
 8002744:	d101      	bne.n	800274a <RCC_GetClocksFreq+0x27e>
 8002746:	6403      	str	r3, [r0, #64]	; 0x40
 8002748:	e010      	b.n	800276c <RCC_GetClocksFreq+0x2a0>
 800274a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800274c:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8002750:	f5b4 2f00 	cmp.w	r4, #524288	; 0x80000
 8002754:	d102      	bne.n	800275c <RCC_GetClocksFreq+0x290>
 8002756:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800275a:	e006      	b.n	800276a <RCC_GetClocksFreq+0x29e>
 800275c:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800275e:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002762:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8002766:	d101      	bne.n	800276c <RCC_GetClocksFreq+0x2a0>
 8002768:	4909      	ldr	r1, [pc, #36]	; (8002790 <RCC_GetClocksFreq+0x2c4>)
 800276a:	6401      	str	r1, [r0, #64]	; 0x40
 800276c:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800276e:	4907      	ldr	r1, [pc, #28]	; (800278c <RCC_GetClocksFreq+0x2c0>)
 8002770:	f414 1f40 	tst.w	r4, #3145728	; 0x300000
 8002774:	d101      	bne.n	800277a <RCC_GetClocksFreq+0x2ae>
 8002776:	6447      	str	r7, [r0, #68]	; 0x44
 8002778:	e023      	b.n	80027c2 <RCC_GetClocksFreq+0x2f6>
 800277a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800277c:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 8002780:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 8002784:	d10c      	bne.n	80027a0 <RCC_GetClocksFreq+0x2d4>
 8002786:	6443      	str	r3, [r0, #68]	; 0x44
 8002788:	e01b      	b.n	80027c2 <RCC_GetClocksFreq+0x2f6>
 800278a:	bf00      	nop
 800278c:	40021000 	.word	0x40021000
 8002790:	007a1200 	.word	0x007a1200
 8002794:	003d0900 	.word	0x003d0900
 8002798:	20000024 	.word	0x20000024
 800279c:	20000004 	.word	0x20000004
 80027a0:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80027a2:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80027a6:	f5b4 1f00 	cmp.w	r4, #2097152	; 0x200000
 80027aa:	d102      	bne.n	80027b2 <RCC_GetClocksFreq+0x2e6>
 80027ac:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80027b0:	e006      	b.n	80027c0 <RCC_GetClocksFreq+0x2f4>
 80027b2:	6b09      	ldr	r1, [r1, #48]	; 0x30
 80027b4:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80027b8:	f5b1 1f40 	cmp.w	r1, #3145728	; 0x300000
 80027bc:	d101      	bne.n	80027c2 <RCC_GetClocksFreq+0x2f6>
 80027be:	4911      	ldr	r1, [pc, #68]	; (8002804 <RCC_GetClocksFreq+0x338>)
 80027c0:	6441      	str	r1, [r0, #68]	; 0x44
 80027c2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80027c4:	4910      	ldr	r1, [pc, #64]	; (8002808 <RCC_GetClocksFreq+0x33c>)
 80027c6:	f412 0f40 	tst.w	r2, #12582912	; 0xc00000
 80027ca:	d102      	bne.n	80027d2 <RCC_GetClocksFreq+0x306>
 80027cc:	6487      	str	r7, [r0, #72]	; 0x48
 80027ce:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80027d2:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80027d4:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80027d8:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 80027dc:	d00f      	beq.n	80027fe <RCC_GetClocksFreq+0x332>
 80027de:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 80027e0:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80027e4:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 80027e8:	d102      	bne.n	80027f0 <RCC_GetClocksFreq+0x324>
 80027ea:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80027ee:	e006      	b.n	80027fe <RCC_GetClocksFreq+0x332>
 80027f0:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 80027f2:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80027f6:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80027fa:	d101      	bne.n	8002800 <RCC_GetClocksFreq+0x334>
 80027fc:	4b01      	ldr	r3, [pc, #4]	; (8002804 <RCC_GetClocksFreq+0x338>)
 80027fe:	6483      	str	r3, [r0, #72]	; 0x48
 8002800:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002804:	007a1200 	.word	0x007a1200
 8002808:	40021000 	.word	0x40021000

0800280c <RCC_AHBPeriphClockCmd>:
 800280c:	bf00      	nop
 800280e:	bf00      	nop
 8002810:	4b04      	ldr	r3, [pc, #16]	; (8002824 <RCC_AHBPeriphClockCmd+0x18>)
 8002812:	695a      	ldr	r2, [r3, #20]
 8002814:	b109      	cbz	r1, 800281a <RCC_AHBPeriphClockCmd+0xe>
 8002816:	4310      	orrs	r0, r2
 8002818:	e001      	b.n	800281e <RCC_AHBPeriphClockCmd+0x12>
 800281a:	ea22 0000 	bic.w	r0, r2, r0
 800281e:	6158      	str	r0, [r3, #20]
 8002820:	4770      	bx	lr
 8002822:	bf00      	nop
 8002824:	40021000 	.word	0x40021000

08002828 <RCC_APB2PeriphClockCmd>:
 8002828:	bf00      	nop
 800282a:	bf00      	nop
 800282c:	4b04      	ldr	r3, [pc, #16]	; (8002840 <RCC_APB2PeriphClockCmd+0x18>)
 800282e:	699a      	ldr	r2, [r3, #24]
 8002830:	b109      	cbz	r1, 8002836 <RCC_APB2PeriphClockCmd+0xe>
 8002832:	4310      	orrs	r0, r2
 8002834:	e001      	b.n	800283a <RCC_APB2PeriphClockCmd+0x12>
 8002836:	ea22 0000 	bic.w	r0, r2, r0
 800283a:	6198      	str	r0, [r3, #24]
 800283c:	4770      	bx	lr
 800283e:	bf00      	nop
 8002840:	40021000 	.word	0x40021000

08002844 <RCC_APB1PeriphClockCmd>:
 8002844:	bf00      	nop
 8002846:	bf00      	nop
 8002848:	4b04      	ldr	r3, [pc, #16]	; (800285c <RCC_APB1PeriphClockCmd+0x18>)
 800284a:	69da      	ldr	r2, [r3, #28]
 800284c:	b109      	cbz	r1, 8002852 <RCC_APB1PeriphClockCmd+0xe>
 800284e:	4310      	orrs	r0, r2
 8002850:	e001      	b.n	8002856 <RCC_APB1PeriphClockCmd+0x12>
 8002852:	ea22 0000 	bic.w	r0, r2, r0
 8002856:	61d8      	str	r0, [r3, #28]
 8002858:	4770      	bx	lr
 800285a:	bf00      	nop
 800285c:	40021000 	.word	0x40021000

08002860 <USART_Init>:
 8002860:	b530      	push	{r4, r5, lr}
 8002862:	4604      	mov	r4, r0
 8002864:	b099      	sub	sp, #100	; 0x64
 8002866:	460d      	mov	r5, r1
 8002868:	bf00      	nop
 800286a:	bf00      	nop
 800286c:	bf00      	nop
 800286e:	bf00      	nop
 8002870:	bf00      	nop
 8002872:	bf00      	nop
 8002874:	bf00      	nop
 8002876:	6803      	ldr	r3, [r0, #0]
 8002878:	f023 0301 	bic.w	r3, r3, #1
 800287c:	6003      	str	r3, [r0, #0]
 800287e:	6842      	ldr	r2, [r0, #4]
 8002880:	688b      	ldr	r3, [r1, #8]
 8002882:	68c9      	ldr	r1, [r1, #12]
 8002884:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 8002888:	4313      	orrs	r3, r2
 800288a:	6043      	str	r3, [r0, #4]
 800288c:	686a      	ldr	r2, [r5, #4]
 800288e:	6803      	ldr	r3, [r0, #0]
 8002890:	4311      	orrs	r1, r2
 8002892:	692a      	ldr	r2, [r5, #16]
 8002894:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002898:	430a      	orrs	r2, r1
 800289a:	f023 030c 	bic.w	r3, r3, #12
 800289e:	4313      	orrs	r3, r2
 80028a0:	6003      	str	r3, [r0, #0]
 80028a2:	6882      	ldr	r2, [r0, #8]
 80028a4:	696b      	ldr	r3, [r5, #20]
 80028a6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80028aa:	4313      	orrs	r3, r2
 80028ac:	6083      	str	r3, [r0, #8]
 80028ae:	a801      	add	r0, sp, #4
 80028b0:	f7ff fe0c 	bl	80024cc <RCC_GetClocksFreq>
 80028b4:	4b17      	ldr	r3, [pc, #92]	; (8002914 <USART_Init+0xb4>)
 80028b6:	429c      	cmp	r4, r3
 80028b8:	d101      	bne.n	80028be <USART_Init+0x5e>
 80028ba:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80028bc:	e00e      	b.n	80028dc <USART_Init+0x7c>
 80028be:	4b16      	ldr	r3, [pc, #88]	; (8002918 <USART_Init+0xb8>)
 80028c0:	429c      	cmp	r4, r3
 80028c2:	d101      	bne.n	80028c8 <USART_Init+0x68>
 80028c4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80028c6:	e009      	b.n	80028dc <USART_Init+0x7c>
 80028c8:	4b14      	ldr	r3, [pc, #80]	; (800291c <USART_Init+0xbc>)
 80028ca:	429c      	cmp	r4, r3
 80028cc:	d101      	bne.n	80028d2 <USART_Init+0x72>
 80028ce:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80028d0:	e004      	b.n	80028dc <USART_Init+0x7c>
 80028d2:	4b13      	ldr	r3, [pc, #76]	; (8002920 <USART_Init+0xc0>)
 80028d4:	429c      	cmp	r4, r3
 80028d6:	bf0c      	ite	eq
 80028d8:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 80028da:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 80028dc:	6823      	ldr	r3, [r4, #0]
 80028de:	6829      	ldr	r1, [r5, #0]
 80028e0:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 80028e4:	bf18      	it	ne
 80028e6:	0052      	lslne	r2, r2, #1
 80028e8:	fbb2 f3f1 	udiv	r3, r2, r1
 80028ec:	fb01 2213 	mls	r2, r1, r3, r2
 80028f0:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 80028f4:	6822      	ldr	r2, [r4, #0]
 80028f6:	bf28      	it	cs
 80028f8:	3301      	addcs	r3, #1
 80028fa:	0412      	lsls	r2, r2, #16
 80028fc:	d506      	bpl.n	800290c <USART_Init+0xac>
 80028fe:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8002902:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8002906:	401a      	ands	r2, r3
 8002908:	ea41 0302 	orr.w	r3, r1, r2
 800290c:	b29b      	uxth	r3, r3
 800290e:	81a3      	strh	r3, [r4, #12]
 8002910:	b019      	add	sp, #100	; 0x64
 8002912:	bd30      	pop	{r4, r5, pc}
 8002914:	40013800 	.word	0x40013800
 8002918:	40004400 	.word	0x40004400
 800291c:	40004800 	.word	0x40004800
 8002920:	40004c00 	.word	0x40004c00

08002924 <USART_Cmd>:
 8002924:	bf00      	nop
 8002926:	bf00      	nop
 8002928:	6803      	ldr	r3, [r0, #0]
 800292a:	b111      	cbz	r1, 8002932 <USART_Cmd+0xe>
 800292c:	f043 0301 	orr.w	r3, r3, #1
 8002930:	e001      	b.n	8002936 <USART_Cmd+0x12>
 8002932:	f023 0301 	bic.w	r3, r3, #1
 8002936:	6003      	str	r3, [r0, #0]
 8002938:	4770      	bx	lr

0800293a <USART_ReceiveData>:
 800293a:	bf00      	nop
 800293c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800293e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002942:	4770      	bx	lr

08002944 <USART_ITConfig>:
 8002944:	b510      	push	{r4, lr}
 8002946:	bf00      	nop
 8002948:	bf00      	nop
 800294a:	bf00      	nop
 800294c:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8002950:	2401      	movs	r4, #1
 8002952:	b2c9      	uxtb	r1, r1
 8002954:	2b02      	cmp	r3, #2
 8002956:	fa04 f101 	lsl.w	r1, r4, r1
 800295a:	d101      	bne.n	8002960 <USART_ITConfig+0x1c>
 800295c:	3004      	adds	r0, #4
 800295e:	e002      	b.n	8002966 <USART_ITConfig+0x22>
 8002960:	2b03      	cmp	r3, #3
 8002962:	bf08      	it	eq
 8002964:	3008      	addeq	r0, #8
 8002966:	6803      	ldr	r3, [r0, #0]
 8002968:	b10a      	cbz	r2, 800296e <USART_ITConfig+0x2a>
 800296a:	4319      	orrs	r1, r3
 800296c:	e001      	b.n	8002972 <USART_ITConfig+0x2e>
 800296e:	ea23 0101 	bic.w	r1, r3, r1
 8002972:	6001      	str	r1, [r0, #0]
 8002974:	bd10      	pop	{r4, pc}

08002976 <USART_GetITStatus>:
 8002976:	b510      	push	{r4, lr}
 8002978:	bf00      	nop
 800297a:	bf00      	nop
 800297c:	2401      	movs	r4, #1
 800297e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002982:	b2cb      	uxtb	r3, r1
 8002984:	42a2      	cmp	r2, r4
 8002986:	fa04 f303 	lsl.w	r3, r4, r3
 800298a:	d101      	bne.n	8002990 <USART_GetITStatus+0x1a>
 800298c:	6802      	ldr	r2, [r0, #0]
 800298e:	e003      	b.n	8002998 <USART_GetITStatus+0x22>
 8002990:	2a02      	cmp	r2, #2
 8002992:	bf0c      	ite	eq
 8002994:	6842      	ldreq	r2, [r0, #4]
 8002996:	6882      	ldrne	r2, [r0, #8]
 8002998:	4013      	ands	r3, r2
 800299a:	69c2      	ldr	r2, [r0, #28]
 800299c:	b143      	cbz	r3, 80029b0 <USART_GetITStatus+0x3a>
 800299e:	2301      	movs	r3, #1
 80029a0:	0c09      	lsrs	r1, r1, #16
 80029a2:	fa03 f101 	lsl.w	r1, r3, r1
 80029a6:	4211      	tst	r1, r2
 80029a8:	bf0c      	ite	eq
 80029aa:	2000      	moveq	r0, #0
 80029ac:	2001      	movne	r0, #1
 80029ae:	bd10      	pop	{r4, pc}
 80029b0:	4618      	mov	r0, r3
 80029b2:	bd10      	pop	{r4, pc}

080029b4 <USART_ClearITPendingBit>:
 80029b4:	bf00      	nop
 80029b6:	bf00      	nop
 80029b8:	2301      	movs	r3, #1
 80029ba:	0c09      	lsrs	r1, r1, #16
 80029bc:	fa03 f101 	lsl.w	r1, r3, r1
 80029c0:	6201      	str	r1, [r0, #32]
 80029c2:	4770      	bx	lr

080029c4 <NVIC_Init>:
 80029c4:	b510      	push	{r4, lr}
 80029c6:	bf00      	nop
 80029c8:	bf00      	nop
 80029ca:	bf00      	nop
 80029cc:	78c2      	ldrb	r2, [r0, #3]
 80029ce:	7803      	ldrb	r3, [r0, #0]
 80029d0:	b30a      	cbz	r2, 8002a16 <NVIC_Init+0x52>
 80029d2:	4a16      	ldr	r2, [pc, #88]	; (8002a2c <NVIC_Init+0x68>)
 80029d4:	7844      	ldrb	r4, [r0, #1]
 80029d6:	68d2      	ldr	r2, [r2, #12]
 80029d8:	43d2      	mvns	r2, r2
 80029da:	f3c2 2202 	ubfx	r2, r2, #8, #3
 80029de:	f1c2 0104 	rsb	r1, r2, #4
 80029e2:	b2c9      	uxtb	r1, r1
 80029e4:	fa04 f101 	lsl.w	r1, r4, r1
 80029e8:	240f      	movs	r4, #15
 80029ea:	fa44 f202 	asr.w	r2, r4, r2
 80029ee:	7884      	ldrb	r4, [r0, #2]
 80029f0:	b2c9      	uxtb	r1, r1
 80029f2:	4022      	ands	r2, r4
 80029f4:	430a      	orrs	r2, r1
 80029f6:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80029fa:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80029fe:	0112      	lsls	r2, r2, #4
 8002a00:	b2d2      	uxtb	r2, r2
 8002a02:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002a06:	7803      	ldrb	r3, [r0, #0]
 8002a08:	2201      	movs	r2, #1
 8002a0a:	0959      	lsrs	r1, r3, #5
 8002a0c:	f003 031f 	and.w	r3, r3, #31
 8002a10:	fa02 f303 	lsl.w	r3, r2, r3
 8002a14:	e006      	b.n	8002a24 <NVIC_Init+0x60>
 8002a16:	0959      	lsrs	r1, r3, #5
 8002a18:	2201      	movs	r2, #1
 8002a1a:	f003 031f 	and.w	r3, r3, #31
 8002a1e:	fa02 f303 	lsl.w	r3, r2, r3
 8002a22:	3120      	adds	r1, #32
 8002a24:	4a02      	ldr	r2, [pc, #8]	; (8002a30 <NVIC_Init+0x6c>)
 8002a26:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002a2a:	bd10      	pop	{r4, pc}
 8002a2c:	e000ed00 	.word	0xe000ed00
 8002a30:	e000e100 	.word	0xe000e100

08002a34 <TIM_TimeBaseInit>:
 8002a34:	bf00      	nop
 8002a36:	bf00      	nop
 8002a38:	bf00      	nop
 8002a3a:	4a24      	ldr	r2, [pc, #144]	; (8002acc <TIM_TimeBaseInit+0x98>)
 8002a3c:	8803      	ldrh	r3, [r0, #0]
 8002a3e:	4290      	cmp	r0, r2
 8002a40:	b29b      	uxth	r3, r3
 8002a42:	d012      	beq.n	8002a6a <TIM_TimeBaseInit+0x36>
 8002a44:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002a48:	4290      	cmp	r0, r2
 8002a4a:	d00e      	beq.n	8002a6a <TIM_TimeBaseInit+0x36>
 8002a4c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002a50:	d00b      	beq.n	8002a6a <TIM_TimeBaseInit+0x36>
 8002a52:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002a56:	4290      	cmp	r0, r2
 8002a58:	d007      	beq.n	8002a6a <TIM_TimeBaseInit+0x36>
 8002a5a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002a5e:	4290      	cmp	r0, r2
 8002a60:	d003      	beq.n	8002a6a <TIM_TimeBaseInit+0x36>
 8002a62:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002a66:	4290      	cmp	r0, r2
 8002a68:	d103      	bne.n	8002a72 <TIM_TimeBaseInit+0x3e>
 8002a6a:	884a      	ldrh	r2, [r1, #2]
 8002a6c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002a70:	4313      	orrs	r3, r2
 8002a72:	4a17      	ldr	r2, [pc, #92]	; (8002ad0 <TIM_TimeBaseInit+0x9c>)
 8002a74:	4290      	cmp	r0, r2
 8002a76:	d008      	beq.n	8002a8a <TIM_TimeBaseInit+0x56>
 8002a78:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002a7c:	4290      	cmp	r0, r2
 8002a7e:	d004      	beq.n	8002a8a <TIM_TimeBaseInit+0x56>
 8002a80:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002a84:	890a      	ldrh	r2, [r1, #8]
 8002a86:	b29b      	uxth	r3, r3
 8002a88:	4313      	orrs	r3, r2
 8002a8a:	8003      	strh	r3, [r0, #0]
 8002a8c:	684b      	ldr	r3, [r1, #4]
 8002a8e:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002a90:	880b      	ldrh	r3, [r1, #0]
 8002a92:	8503      	strh	r3, [r0, #40]	; 0x28
 8002a94:	4b0d      	ldr	r3, [pc, #52]	; (8002acc <TIM_TimeBaseInit+0x98>)
 8002a96:	4298      	cmp	r0, r3
 8002a98:	d013      	beq.n	8002ac2 <TIM_TimeBaseInit+0x8e>
 8002a9a:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002a9e:	4298      	cmp	r0, r3
 8002aa0:	d00f      	beq.n	8002ac2 <TIM_TimeBaseInit+0x8e>
 8002aa2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002aa6:	4298      	cmp	r0, r3
 8002aa8:	d00b      	beq.n	8002ac2 <TIM_TimeBaseInit+0x8e>
 8002aaa:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002aae:	4298      	cmp	r0, r3
 8002ab0:	d007      	beq.n	8002ac2 <TIM_TimeBaseInit+0x8e>
 8002ab2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002ab6:	4298      	cmp	r0, r3
 8002ab8:	d003      	beq.n	8002ac2 <TIM_TimeBaseInit+0x8e>
 8002aba:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002abe:	4298      	cmp	r0, r3
 8002ac0:	d101      	bne.n	8002ac6 <TIM_TimeBaseInit+0x92>
 8002ac2:	894b      	ldrh	r3, [r1, #10]
 8002ac4:	8603      	strh	r3, [r0, #48]	; 0x30
 8002ac6:	2301      	movs	r3, #1
 8002ac8:	6143      	str	r3, [r0, #20]
 8002aca:	4770      	bx	lr
 8002acc:	40012c00 	.word	0x40012c00
 8002ad0:	40001000 	.word	0x40001000

08002ad4 <TIM_Cmd>:
 8002ad4:	bf00      	nop
 8002ad6:	bf00      	nop
 8002ad8:	8803      	ldrh	r3, [r0, #0]
 8002ada:	b119      	cbz	r1, 8002ae4 <TIM_Cmd+0x10>
 8002adc:	b29b      	uxth	r3, r3
 8002ade:	f043 0301 	orr.w	r3, r3, #1
 8002ae2:	e003      	b.n	8002aec <TIM_Cmd+0x18>
 8002ae4:	f023 0301 	bic.w	r3, r3, #1
 8002ae8:	041b      	lsls	r3, r3, #16
 8002aea:	0c1b      	lsrs	r3, r3, #16
 8002aec:	8003      	strh	r3, [r0, #0]
 8002aee:	4770      	bx	lr

08002af0 <TIM_OC1Init>:
 8002af0:	b530      	push	{r4, r5, lr}
 8002af2:	bf00      	nop
 8002af4:	bf00      	nop
 8002af6:	bf00      	nop
 8002af8:	bf00      	nop
 8002afa:	6a03      	ldr	r3, [r0, #32]
 8002afc:	680d      	ldr	r5, [r1, #0]
 8002afe:	f023 0301 	bic.w	r3, r3, #1
 8002b02:	6203      	str	r3, [r0, #32]
 8002b04:	6a03      	ldr	r3, [r0, #32]
 8002b06:	6842      	ldr	r2, [r0, #4]
 8002b08:	6984      	ldr	r4, [r0, #24]
 8002b0a:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 8002b0e:	f024 0473 	bic.w	r4, r4, #115	; 0x73
 8002b12:	432c      	orrs	r4, r5
 8002b14:	898d      	ldrh	r5, [r1, #12]
 8002b16:	f023 0302 	bic.w	r3, r3, #2
 8002b1a:	432b      	orrs	r3, r5
 8002b1c:	888d      	ldrh	r5, [r1, #4]
 8002b1e:	432b      	orrs	r3, r5
 8002b20:	4d15      	ldr	r5, [pc, #84]	; (8002b78 <TIM_OC1Init+0x88>)
 8002b22:	42a8      	cmp	r0, r5
 8002b24:	d00f      	beq.n	8002b46 <TIM_OC1Init+0x56>
 8002b26:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002b2a:	42a8      	cmp	r0, r5
 8002b2c:	d00b      	beq.n	8002b46 <TIM_OC1Init+0x56>
 8002b2e:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8002b32:	42a8      	cmp	r0, r5
 8002b34:	d007      	beq.n	8002b46 <TIM_OC1Init+0x56>
 8002b36:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002b3a:	42a8      	cmp	r0, r5
 8002b3c:	d003      	beq.n	8002b46 <TIM_OC1Init+0x56>
 8002b3e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002b42:	42a8      	cmp	r0, r5
 8002b44:	d111      	bne.n	8002b6a <TIM_OC1Init+0x7a>
 8002b46:	bf00      	nop
 8002b48:	bf00      	nop
 8002b4a:	bf00      	nop
 8002b4c:	bf00      	nop
 8002b4e:	89cd      	ldrh	r5, [r1, #14]
 8002b50:	f023 0308 	bic.w	r3, r3, #8
 8002b54:	432b      	orrs	r3, r5
 8002b56:	88cd      	ldrh	r5, [r1, #6]
 8002b58:	f023 0304 	bic.w	r3, r3, #4
 8002b5c:	432b      	orrs	r3, r5
 8002b5e:	8a0d      	ldrh	r5, [r1, #16]
 8002b60:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002b64:	432a      	orrs	r2, r5
 8002b66:	8a4d      	ldrh	r5, [r1, #18]
 8002b68:	432a      	orrs	r2, r5
 8002b6a:	6042      	str	r2, [r0, #4]
 8002b6c:	688a      	ldr	r2, [r1, #8]
 8002b6e:	6184      	str	r4, [r0, #24]
 8002b70:	6342      	str	r2, [r0, #52]	; 0x34
 8002b72:	6203      	str	r3, [r0, #32]
 8002b74:	bd30      	pop	{r4, r5, pc}
 8002b76:	bf00      	nop
 8002b78:	40012c00 	.word	0x40012c00

08002b7c <TIM_OC2Init>:
 8002b7c:	b570      	push	{r4, r5, r6, lr}
 8002b7e:	bf00      	nop
 8002b80:	bf00      	nop
 8002b82:	bf00      	nop
 8002b84:	bf00      	nop
 8002b86:	6a03      	ldr	r3, [r0, #32]
 8002b88:	680d      	ldr	r5, [r1, #0]
 8002b8a:	898e      	ldrh	r6, [r1, #12]
 8002b8c:	f023 0310 	bic.w	r3, r3, #16
 8002b90:	6203      	str	r3, [r0, #32]
 8002b92:	6a03      	ldr	r3, [r0, #32]
 8002b94:	6842      	ldr	r2, [r0, #4]
 8002b96:	6984      	ldr	r4, [r0, #24]
 8002b98:	f024 7480 	bic.w	r4, r4, #16777216	; 0x1000000
 8002b9c:	f424 44e6 	bic.w	r4, r4, #29440	; 0x7300
 8002ba0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002ba4:	f023 0520 	bic.w	r5, r3, #32
 8002ba8:	888b      	ldrh	r3, [r1, #4]
 8002baa:	4333      	orrs	r3, r6
 8002bac:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8002bb0:	4d10      	ldr	r5, [pc, #64]	; (8002bf4 <TIM_OC2Init+0x78>)
 8002bb2:	42a8      	cmp	r0, r5
 8002bb4:	d003      	beq.n	8002bbe <TIM_OC2Init+0x42>
 8002bb6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002bba:	42a8      	cmp	r0, r5
 8002bbc:	d114      	bne.n	8002be8 <TIM_OC2Init+0x6c>
 8002bbe:	bf00      	nop
 8002bc0:	bf00      	nop
 8002bc2:	bf00      	nop
 8002bc4:	bf00      	nop
 8002bc6:	89cd      	ldrh	r5, [r1, #14]
 8002bc8:	8a0e      	ldrh	r6, [r1, #16]
 8002bca:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002bce:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002bd2:	88cd      	ldrh	r5, [r1, #6]
 8002bd4:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002bd8:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002bdc:	8a4d      	ldrh	r5, [r1, #18]
 8002bde:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8002be2:	4335      	orrs	r5, r6
 8002be4:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002be8:	6042      	str	r2, [r0, #4]
 8002bea:	688a      	ldr	r2, [r1, #8]
 8002bec:	6184      	str	r4, [r0, #24]
 8002bee:	6382      	str	r2, [r0, #56]	; 0x38
 8002bf0:	6203      	str	r3, [r0, #32]
 8002bf2:	bd70      	pop	{r4, r5, r6, pc}
 8002bf4:	40012c00 	.word	0x40012c00

08002bf8 <TIM_CtrlPWMOutputs>:
 8002bf8:	bf00      	nop
 8002bfa:	bf00      	nop
 8002bfc:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002bfe:	b111      	cbz	r1, 8002c06 <TIM_CtrlPWMOutputs+0xe>
 8002c00:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002c04:	e001      	b.n	8002c0a <TIM_CtrlPWMOutputs+0x12>
 8002c06:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002c0a:	6443      	str	r3, [r0, #68]	; 0x44
 8002c0c:	4770      	bx	lr

08002c0e <TIM_ClearITPendingBit>:
 8002c0e:	bf00      	nop
 8002c10:	43c9      	mvns	r1, r1
 8002c12:	b289      	uxth	r1, r1
 8002c14:	6101      	str	r1, [r0, #16]
 8002c16:	4770      	bx	lr

08002c18 <scheduler>:
 8002c18:	b570      	push	{r4, r5, r6, lr}
 8002c1a:	2200      	movs	r2, #0
 8002c1c:	4611      	mov	r1, r2
 8002c1e:	4b15      	ldr	r3, [pc, #84]	; (8002c74 <scheduler+0x5c>)
 8002c20:	200c      	movs	r0, #12
 8002c22:	fb00 f501 	mul.w	r5, r0, r1
 8002c26:	195e      	adds	r6, r3, r5
 8002c28:	6874      	ldr	r4, [r6, #4]
 8002c2a:	f014 0f02 	tst.w	r4, #2
 8002c2e:	461c      	mov	r4, r3
 8002c30:	d10a      	bne.n	8002c48 <scheduler+0x30>
 8002c32:	6876      	ldr	r6, [r6, #4]
 8002c34:	07f6      	lsls	r6, r6, #31
 8002c36:	d507      	bpl.n	8002c48 <scheduler+0x30>
 8002c38:	4350      	muls	r0, r2
 8002c3a:	5b5d      	ldrh	r5, [r3, r5]
 8002c3c:	5a18      	ldrh	r0, [r3, r0]
 8002c3e:	b2ad      	uxth	r5, r5
 8002c40:	b280      	uxth	r0, r0
 8002c42:	4285      	cmp	r5, r0
 8002c44:	bf38      	it	cc
 8002c46:	460a      	movcc	r2, r1
 8002c48:	200c      	movs	r0, #12
 8002c4a:	4348      	muls	r0, r1
 8002c4c:	5a1d      	ldrh	r5, [r3, r0]
 8002c4e:	b2ad      	uxth	r5, r5
 8002c50:	b11d      	cbz	r5, 8002c5a <scheduler+0x42>
 8002c52:	5a1d      	ldrh	r5, [r3, r0]
 8002c54:	3d01      	subs	r5, #1
 8002c56:	b2ad      	uxth	r5, r5
 8002c58:	521d      	strh	r5, [r3, r0]
 8002c5a:	3101      	adds	r1, #1
 8002c5c:	2906      	cmp	r1, #6
 8002c5e:	d1de      	bne.n	8002c1e <scheduler+0x6>
 8002c60:	230c      	movs	r3, #12
 8002c62:	4353      	muls	r3, r2
 8002c64:	18e1      	adds	r1, r4, r3
 8002c66:	8849      	ldrh	r1, [r1, #2]
 8002c68:	b289      	uxth	r1, r1
 8002c6a:	52e1      	strh	r1, [r4, r3]
 8002c6c:	4b02      	ldr	r3, [pc, #8]	; (8002c78 <scheduler+0x60>)
 8002c6e:	601a      	str	r2, [r3, #0]
 8002c70:	bd70      	pop	{r4, r5, r6, pc}
 8002c72:	bf00      	nop
 8002c74:	200009b0 	.word	0x200009b0
 8002c78:	200009f8 	.word	0x200009f8

08002c7c <SysTick_Handler>:
 8002c7c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002c80:	f3ef 8208 	mrs	r2, MSP
 8002c84:	4c0d      	ldr	r4, [pc, #52]	; (8002cbc <SysTick_Handler+0x40>)
 8002c86:	4d0e      	ldr	r5, [pc, #56]	; (8002cc0 <SysTick_Handler+0x44>)
 8002c88:	6823      	ldr	r3, [r4, #0]
 8002c8a:	3301      	adds	r3, #1
 8002c8c:	d005      	beq.n	8002c9a <SysTick_Handler+0x1e>
 8002c8e:	6823      	ldr	r3, [r4, #0]
 8002c90:	210c      	movs	r1, #12
 8002c92:	fb01 5303 	mla	r3, r1, r3, r5
 8002c96:	609a      	str	r2, [r3, #8]
 8002c98:	e001      	b.n	8002c9e <SysTick_Handler+0x22>
 8002c9a:	2300      	movs	r3, #0
 8002c9c:	6023      	str	r3, [r4, #0]
 8002c9e:	f7ff ffbb 	bl	8002c18 <scheduler>
 8002ca2:	6823      	ldr	r3, [r4, #0]
 8002ca4:	220c      	movs	r2, #12
 8002ca6:	fb02 5503 	mla	r5, r2, r3, r5
 8002caa:	f06f 0306 	mvn.w	r3, #6
 8002cae:	68aa      	ldr	r2, [r5, #8]
 8002cb0:	469e      	mov	lr, r3
 8002cb2:	f382 8808 	msr	MSP, r2
 8002cb6:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002cba:	4770      	bx	lr
 8002cbc:	200009f8 	.word	0x200009f8
 8002cc0:	200009b0 	.word	0x200009b0

08002cc4 <__aeabi_d2f>:
 8002cc4:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002cc8:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002ccc:	bf24      	itt	cs
 8002cce:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002cd2:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002cd6:	d90d      	bls.n	8002cf4 <__aeabi_d2f+0x30>
 8002cd8:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002cdc:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002ce0:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002ce4:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002ce8:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002cec:	bf08      	it	eq
 8002cee:	f020 0001 	biceq.w	r0, r0, #1
 8002cf2:	4770      	bx	lr
 8002cf4:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002cf8:	d121      	bne.n	8002d3e <__aeabi_d2f+0x7a>
 8002cfa:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002cfe:	bfbc      	itt	lt
 8002d00:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002d04:	4770      	bxlt	lr
 8002d06:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002d0a:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002d0e:	f1c2 0218 	rsb	r2, r2, #24
 8002d12:	f1c2 0c20 	rsb	ip, r2, #32
 8002d16:	fa10 f30c 	lsls.w	r3, r0, ip
 8002d1a:	fa20 f002 	lsr.w	r0, r0, r2
 8002d1e:	bf18      	it	ne
 8002d20:	f040 0001 	orrne.w	r0, r0, #1
 8002d24:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002d28:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002d2c:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002d30:	ea40 000c 	orr.w	r0, r0, ip
 8002d34:	fa23 f302 	lsr.w	r3, r3, r2
 8002d38:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002d3c:	e7cc      	b.n	8002cd8 <__aeabi_d2f+0x14>
 8002d3e:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002d42:	d107      	bne.n	8002d54 <__aeabi_d2f+0x90>
 8002d44:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002d48:	bf1e      	ittt	ne
 8002d4a:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002d4e:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002d52:	4770      	bxne	lr
 8002d54:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002d58:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002d5c:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002d60:	4770      	bx	lr
 8002d62:	bf00      	nop

08002d64 <_init>:
 8002d64:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002d66:	bf00      	nop
 8002d68:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002d6a:	bc08      	pop	{r3}
 8002d6c:	469e      	mov	lr, r3
 8002d6e:	4770      	bx	lr

08002d70 <_fini>:
 8002d70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002d72:	bf00      	nop
 8002d74:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002d76:	bc08      	pop	{r3}
 8002d78:	469e      	mov	lr, r3
 8002d7a:	4770      	bx	lr
 8002d7c:	61646f6b 	.word	0x61646f6b
 8002d80:	6920616d 	.word	0x6920616d
 8002d84:	2074696e 	.word	0x2074696e
 8002d88:	25206925 	.word	0x25206925
 8002d8c:	203a2069 	.word	0x203a2069
 8002d90:	4f5b2000 	.word	0x4f5b2000
 8002d94:	000a5d4b 	.word	0x000a5d4b
 8002d98:	41465b20 	.word	0x41465b20
 8002d9c:	44454c49 	.word	0x44454c49
 8002da0:	000a0a5d 	.word	0x000a0a5d
 8002da4:	74737973 	.word	0x74737973
 8002da8:	74206d65 	.word	0x74206d65
 8002dac:	20656d69 	.word	0x20656d69
 8002db0:	5b207525 	.word	0x5b207525
 8002db4:	0a5d736d 	.word	0x0a5d736d
 8002db8:	20692500 	.word	0x20692500
 8002dbc:	0a206925 	.word	0x0a206925
 8002dc0:	00          	.byte	0x00
 8002dc1:	74          	.byte	0x74
 8002dc2:	7365      	.short	0x7365
 8002dc4:	676e6974 	.word	0x676e6974
 8002dc8:	6d756e20 	.word	0x6d756e20
 8002dcc:	20726562 	.word	0x20726562
 8002dd0:	6e697270 	.word	0x6e697270
 8002dd4:	75252074 	.word	0x75252074
 8002dd8:	20752520 	.word	0x20752520
 8002ddc:	0a3a7525 	.word	0x0a3a7525
 8002de0:	6f6c6600 	.word	0x6f6c6600
 8002de4:	6e207461 	.word	0x6e207461
 8002de8:	65626d75 	.word	0x65626d75
 8002dec:	66252072 	.word	0x66252072
 8002df0:	25000a20 	.word	0x25000a20
 8002df4:	66252066 	.word	0x66252066
 8002df8:	20662520 	.word	0x20662520
 8002dfc:	25206625 	.word	0x25206625
 8002e00:	66252066 	.word	0x66252066
 8002e04:	20662520 	.word	0x20662520
 8002e08:	000a6625 	.word	0x000a6625
 8002e0c:	656c6469 	.word	0x656c6469
 8002e10:	0a752520 	.word	0x0a752520
 8002e14:	00000000 	.word	0x00000000

08002e18 <__EH_FRAME_BEGIN__>:
 8002e18:	00000000                                ....
