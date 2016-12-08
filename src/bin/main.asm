
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f000 fcb8 	bl	8000b00 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f000 fe33 	bl	8000e08 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	480e      	ldr	r0, [pc, #56]	; (80001e8 <_ZN7CKodama5init_Ev+0x60>)
 80001b0:	f000 fd9e 	bl	8000cf0 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	f504 70b8 	add.w	r0, r4, #368	; 0x170
 80001c4:	f000 fa1e 	bl	8000604 <_ZN6CMotor10motor_initEv>
 80001c8:	2800      	cmp	r0, #0
 80001ca:	da03      	bge.n	80001d4 <_ZN7CKodama5init_Ev+0x4c>
 80001cc:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001d0:	3850      	subs	r0, #80	; 0x50
 80001d2:	bd10      	pop	{r4, pc}
 80001d4:	4620      	mov	r0, r4
 80001d6:	f000 fc7d 	bl	8000ad4 <_ZN8CSensors12sensors_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 401c 	sublt.w	r0, r0, #39936	; 0x9c00
 80001e2:	3840      	sublt	r0, #64	; 0x40
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
 8000202:	f000 ff26 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8000206:	4628      	mov	r0, r5
 8000208:	b91e      	cbnz	r6, 8000212 <_ZN7CKodama4initEv+0x26>
 800020a:	4907      	ldr	r1, [pc, #28]	; (8000228 <_ZN7CKodama4initEv+0x3c>)
 800020c:	f000 ff21 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8000210:	e005      	b.n	800021e <_ZN7CKodama4initEv+0x32>
 8000212:	4906      	ldr	r1, [pc, #24]	; (800022c <_ZN7CKodama4initEv+0x40>)
 8000214:	3401      	adds	r4, #1
 8000216:	f000 ff1c 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 800021a:	2c08      	cmp	r4, #8
 800021c:	d1e9      	bne.n	80001f2 <_ZN7CKodama4initEv+0x6>
 800021e:	4630      	mov	r0, r6
 8000220:	bd70      	pop	{r4, r5, r6, pc}
 8000222:	bf00      	nop
 8000224:	08002d9c 	.word	0x08002d9c
 8000228:	08002db1 	.word	0x08002db1
 800022c:	08002db8 	.word	0x08002db8

08000230 <_ZN7CKodama5sleepEv>:
 8000230:	f500 70b8 	add.w	r0, r0, #368	; 0x170
 8000234:	f000 b955 	b.w	80004e2 <_ZN6CMotor11motor_sleepEv>

08000238 <_ZN7CKodama6wakeupEv>:
 8000238:	b510      	push	{r4, lr}
 800023a:	2100      	movs	r1, #0
 800023c:	f500 74b8 	add.w	r4, r0, #368	; 0x170
 8000240:	4620      	mov	r0, r4
 8000242:	460a      	mov	r2, r1
 8000244:	f000 f9d8 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8000248:	4620      	mov	r0, r4
 800024a:	2101      	movs	r1, #1
 800024c:	2200      	movs	r2, #0
 800024e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000252:	f000 b9d1 	b.w	80005f8 <_ZN6CMotor9set_motorEml>

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
 8000532:	f002 faed 	bl	8002b10 <TIM_OC1Init>
 8000536:	683b      	ldr	r3, [r7, #0]
 8000538:	fbb3 f6f6 	udiv	r6, r3, r6
 800053c:	3e02      	subs	r6, #2
 800053e:	fb06 f808 	mul.w	r8, r6, r8
 8000542:	fbb8 f5f5 	udiv	r5, r8, r5
 8000546:	4620      	mov	r0, r4
 8000548:	a901      	add	r1, sp, #4
 800054a:	9503      	str	r5, [sp, #12]
 800054c:	f002 fb26 	bl	8002b9c <TIM_OC2Init>
 8000550:	b006      	add	sp, #24
 8000552:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000556:	bf00      	nop
 8000558:	20000000 	.word	0x20000000
 800055c:	40012c00 	.word	0x40012c00

08000560 <_ZN6CMotor13motor_refreshEv>:
 8000560:	6802      	ldr	r2, [r0, #0]
 8000562:	6841      	ldr	r1, [r0, #4]
 8000564:	4b22      	ldr	r3, [pc, #136]	; (80005f0 <_ZN6CMotor13motor_refreshEv+0x90>)
 8000566:	2a00      	cmp	r2, #0
 8000568:	b570      	push	{r4, r5, r6, lr}
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
 8000596:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800059a:	f44f 4400 	mov.w	r4, #32768	; 0x8000
 800059e:	619c      	str	r4, [r3, #24]
 80005a0:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80005a4:	f44f 6400 	mov.w	r4, #2048	; 0x800
 80005a8:	2900      	cmp	r1, #0
 80005aa:	851c      	strh	r4, [r3, #40]	; 0x28
 80005ac:	f04f 0520 	mov.w	r5, #32
 80005b0:	4c10      	ldr	r4, [pc, #64]	; (80005f4 <_ZN6CMotor13motor_refreshEv+0x94>)
 80005b2:	d105      	bne.n	80005c0 <_ZN6CMotor13motor_refreshEv+0x60>
 80005b4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80005b8:	61a5      	str	r5, [r4, #24]
 80005ba:	6199      	str	r1, [r3, #24]
 80005bc:	2164      	movs	r1, #100	; 0x64
 80005be:	e008      	b.n	80005d2 <_ZN6CMotor13motor_refreshEv+0x72>
 80005c0:	f44f 6680 	mov.w	r6, #1024	; 0x400
 80005c4:	dd02      	ble.n	80005cc <_ZN6CMotor13motor_refreshEv+0x6c>
 80005c6:	8525      	strh	r5, [r4, #40]	; 0x28
 80005c8:	619e      	str	r6, [r3, #24]
 80005ca:	e002      	b.n	80005d2 <_ZN6CMotor13motor_refreshEv+0x72>
 80005cc:	61a5      	str	r5, [r4, #24]
 80005ce:	4249      	negs	r1, r1
 80005d0:	851e      	strh	r6, [r3, #40]	; 0x28
 80005d2:	2964      	cmp	r1, #100	; 0x64
 80005d4:	bfa8      	it	ge
 80005d6:	2164      	movge	r1, #100	; 0x64
 80005d8:	2a64      	cmp	r2, #100	; 0x64
 80005da:	bfa8      	it	ge
 80005dc:	2264      	movge	r2, #100	; 0x64
 80005de:	f1c1 0164 	rsb	r1, r1, #100	; 0x64
 80005e2:	f1c2 0264 	rsb	r2, r2, #100	; 0x64
 80005e6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80005ea:	f7ff bf7b 	b.w	80004e4 <_ZN6CMotor7pwm_setEmm>
 80005ee:	bf00      	nop
 80005f0:	48000800 	.word	0x48000800
 80005f4:	48000400 	.word	0x48000400

080005f8 <_ZN6CMotor9set_motorEml>:
 80005f8:	2901      	cmp	r1, #1
 80005fa:	bf98      	it	ls
 80005fc:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000600:	f7ff bfae 	b.w	8000560 <_ZN6CMotor13motor_refreshEv>

08000604 <_ZN6CMotor10motor_initEv>:
 8000604:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000608:	4e50      	ldr	r6, [pc, #320]	; (800074c <_ZN6CMotor10motor_initEv+0x148>)
 800060a:	b086      	sub	sp, #24
 800060c:	2400      	movs	r4, #0
 800060e:	2501      	movs	r5, #1
 8000610:	2703      	movs	r7, #3
 8000612:	4681      	mov	r9, r0
 8000614:	f04f 0820 	mov.w	r8, #32
 8000618:	4630      	mov	r0, r6
 800061a:	a901      	add	r1, sp, #4
 800061c:	f8cd 8004 	str.w	r8, [sp, #4]
 8000620:	f88d 5008 	strb.w	r5, [sp, #8]
 8000624:	f88d 400a 	strb.w	r4, [sp, #10]
 8000628:	f88d 7009 	strb.w	r7, [sp, #9]
 800062c:	f88d 400b 	strb.w	r4, [sp, #11]
 8000630:	f001 fdd0 	bl	80021d4 <GPIO_Init>
 8000634:	f8c6 8018 	str.w	r8, [r6, #24]
 8000638:	f8df 811c 	ldr.w	r8, [pc, #284]	; 8000758 <_ZN6CMotor10motor_initEv+0x154>
 800063c:	f88d 5008 	strb.w	r5, [sp, #8]
 8000640:	f44f 6a80 	mov.w	sl, #1024	; 0x400
 8000644:	4640      	mov	r0, r8
 8000646:	a901      	add	r1, sp, #4
 8000648:	f8cd a004 	str.w	sl, [sp, #4]
 800064c:	f88d 400a 	strb.w	r4, [sp, #10]
 8000650:	f88d 7009 	strb.w	r7, [sp, #9]
 8000654:	f88d 400b 	strb.w	r4, [sp, #11]
 8000658:	f001 fdbc 	bl	80021d4 <GPIO_Init>
 800065c:	f8c8 a018 	str.w	sl, [r8, #24]
 8000660:	a901      	add	r1, sp, #4
 8000662:	f44f 4a00 	mov.w	sl, #32768	; 0x8000
 8000666:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800066a:	f8cd a004 	str.w	sl, [sp, #4]
 800066e:	f88d 5008 	strb.w	r5, [sp, #8]
 8000672:	f88d 400a 	strb.w	r4, [sp, #10]
 8000676:	f88d 7009 	strb.w	r7, [sp, #9]
 800067a:	f88d 400b 	strb.w	r4, [sp, #11]
 800067e:	f001 fda9 	bl	80021d4 <GPIO_Init>
 8000682:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000686:	4640      	mov	r0, r8
 8000688:	f8c3 a018 	str.w	sl, [r3, #24]
 800068c:	a901      	add	r1, sp, #4
 800068e:	f44f 6a00 	mov.w	sl, #2048	; 0x800
 8000692:	f8cd a004 	str.w	sl, [sp, #4]
 8000696:	f88d 5008 	strb.w	r5, [sp, #8]
 800069a:	f88d 400a 	strb.w	r4, [sp, #10]
 800069e:	f88d 7009 	strb.w	r7, [sp, #9]
 80006a2:	f88d 400b 	strb.w	r4, [sp, #11]
 80006a6:	f001 fd95 	bl	80021d4 <GPIO_Init>
 80006aa:	4650      	mov	r0, sl
 80006ac:	4629      	mov	r1, r5
 80006ae:	f8c8 a018 	str.w	sl, [r8, #24]
 80006b2:	f002 f8c9 	bl	8002848 <RCC_APB2PeriphClockCmd>
 80006b6:	4629      	mov	r1, r5
 80006b8:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80006bc:	f002 f8b6 	bl	800282c <RCC_AHBPeriphClockCmd>
 80006c0:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80006c4:	9301      	str	r3, [sp, #4]
 80006c6:	4630      	mov	r0, r6
 80006c8:	2302      	movs	r3, #2
 80006ca:	a901      	add	r1, sp, #4
 80006cc:	f88d 3008 	strb.w	r3, [sp, #8]
 80006d0:	f88d 7009 	strb.w	r7, [sp, #9]
 80006d4:	f001 fd7e 	bl	80021d4 <GPIO_Init>
 80006d8:	4630      	mov	r0, r6
 80006da:	210d      	movs	r1, #13
 80006dc:	2206      	movs	r2, #6
 80006de:	f001 fdc2 	bl	8002266 <GPIO_PinAFConfig>
 80006e2:	4630      	mov	r0, r6
 80006e4:	210e      	movs	r1, #14
 80006e6:	2206      	movs	r2, #6
 80006e8:	f001 fdbd 	bl	8002266 <GPIO_PinAFConfig>
 80006ec:	4b18      	ldr	r3, [pc, #96]	; (8000750 <_ZN6CMotor10motor_initEv+0x14c>)
 80006ee:	4e19      	ldr	r6, [pc, #100]	; (8000754 <_ZN6CMotor10motor_initEv+0x150>)
 80006f0:	681a      	ldr	r2, [r3, #0]
 80006f2:	f8ad 400c 	strh.w	r4, [sp, #12]
 80006f6:	f242 7310 	movw	r3, #10000	; 0x2710
 80006fa:	fbb2 f3f3 	udiv	r3, r2, r3
 80006fe:	3b01      	subs	r3, #1
 8000700:	4630      	mov	r0, r6
 8000702:	a903      	add	r1, sp, #12
 8000704:	9304      	str	r3, [sp, #16]
 8000706:	f8ad 400e 	strh.w	r4, [sp, #14]
 800070a:	f8ad 4014 	strh.w	r4, [sp, #20]
 800070e:	f8ad 4016 	strh.w	r4, [sp, #22]
 8000712:	f002 f99f 	bl	8002a54 <TIM_TimeBaseInit>
 8000716:	4622      	mov	r2, r4
 8000718:	4648      	mov	r0, r9
 800071a:	4621      	mov	r1, r4
 800071c:	f7ff fee2 	bl	80004e4 <_ZN6CMotor7pwm_setEmm>
 8000720:	4630      	mov	r0, r6
 8000722:	4629      	mov	r1, r5
 8000724:	f002 f9e6 	bl	8002af4 <TIM_Cmd>
 8000728:	4630      	mov	r0, r6
 800072a:	4629      	mov	r1, r5
 800072c:	f002 fa74 	bl	8002c18 <TIM_CtrlPWMOutputs>
 8000730:	4648      	mov	r0, r9
 8000732:	4621      	mov	r1, r4
 8000734:	4622      	mov	r2, r4
 8000736:	f7ff ff5f 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 800073a:	4648      	mov	r0, r9
 800073c:	4629      	mov	r1, r5
 800073e:	4622      	mov	r2, r4
 8000740:	f7ff ff5a 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8000744:	4620      	mov	r0, r4
 8000746:	b006      	add	sp, #24
 8000748:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800074c:	48000400 	.word	0x48000400
 8000750:	20000000 	.word	0x20000000
 8000754:	40012c00 	.word	0x40012c00
 8000758:	48000800 	.word	0x48000800

0800075c <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 800075c:	bf00      	nop
 800075e:	bf00      	nop
 8000760:	bf00      	nop
 8000762:	bf00      	nop
 8000764:	4770      	bx	lr
	...

08000768 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000768:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800076a:	7803      	ldrb	r3, [r0, #0]
 800076c:	9300      	str	r3, [sp, #0]
 800076e:	2401      	movs	r4, #1
 8000770:	4605      	mov	r5, r0
 8000772:	2703      	movs	r7, #3
 8000774:	2600      	movs	r6, #0
 8000776:	4669      	mov	r1, sp
 8000778:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800077c:	f88d 6007 	strb.w	r6, [sp, #7]
 8000780:	f88d 4004 	strb.w	r4, [sp, #4]
 8000784:	f88d 7005 	strb.w	r7, [sp, #5]
 8000788:	f88d 4006 	strb.w	r4, [sp, #6]
 800078c:	f001 fd22 	bl	80021d4 <GPIO_Init>
 8000790:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000794:	782a      	ldrb	r2, [r5, #0]
 8000796:	851a      	strh	r2, [r3, #40]	; 0x28
 8000798:	f88d 6007 	strb.w	r6, [sp, #7]
 800079c:	4e08      	ldr	r6, [pc, #32]	; (80007c0 <_ZN8CRGB_I2C12RGBSetLowSDAEv+0x58>)
 800079e:	9400      	str	r4, [sp, #0]
 80007a0:	4630      	mov	r0, r6
 80007a2:	4669      	mov	r1, sp
 80007a4:	f88d 4004 	strb.w	r4, [sp, #4]
 80007a8:	f88d 7005 	strb.w	r7, [sp, #5]
 80007ac:	f88d 4006 	strb.w	r4, [sp, #6]
 80007b0:	f001 fd10 	bl	80021d4 <GPIO_Init>
 80007b4:	8534      	strh	r4, [r6, #40]	; 0x28
 80007b6:	4628      	mov	r0, r5
 80007b8:	f7ff ffd0 	bl	800075c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80007bc:	b003      	add	sp, #12
 80007be:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007c0:	48000400 	.word	0x48000400

080007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 80007c4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007c6:	7803      	ldrb	r3, [r0, #0]
 80007c8:	9300      	str	r3, [sp, #0]
 80007ca:	2400      	movs	r4, #0
 80007cc:	4605      	mov	r5, r0
 80007ce:	2703      	movs	r7, #3
 80007d0:	4669      	mov	r1, sp
 80007d2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80007d6:	f88d 4004 	strb.w	r4, [sp, #4]
 80007da:	f88d 4007 	strb.w	r4, [sp, #7]
 80007de:	f88d 7005 	strb.w	r7, [sp, #5]
 80007e2:	f001 fcf7 	bl	80021d4 <GPIO_Init>
 80007e6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007ea:	782a      	ldrb	r2, [r5, #0]
 80007ec:	619a      	str	r2, [r3, #24]
 80007ee:	f88d 4004 	strb.w	r4, [sp, #4]
 80007f2:	f88d 4007 	strb.w	r4, [sp, #7]
 80007f6:	4c07      	ldr	r4, [pc, #28]	; (8000814 <_ZN8CRGB_I2C13RGBSetHighSDAEv+0x50>)
 80007f8:	f88d 7005 	strb.w	r7, [sp, #5]
 80007fc:	2601      	movs	r6, #1
 80007fe:	4620      	mov	r0, r4
 8000800:	4669      	mov	r1, sp
 8000802:	9600      	str	r6, [sp, #0]
 8000804:	f001 fce6 	bl	80021d4 <GPIO_Init>
 8000808:	61a6      	str	r6, [r4, #24]
 800080a:	4628      	mov	r0, r5
 800080c:	f7ff ffa6 	bl	800075c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000810:	b003      	add	sp, #12
 8000812:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000814:	48000400 	.word	0x48000400

08000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000818:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800081c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000820:	851a      	strh	r2, [r3, #40]	; 0x28
 8000822:	f7ff bf9b 	b.w	800075c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000826:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800082a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800082e:	619a      	str	r2, [r3, #24]
 8000830:	f7ff bf94 	b.w	800075c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000834 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000834:	b510      	push	{r4, lr}
 8000836:	4604      	mov	r4, r0
 8000838:	f7ff fff5 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800083c:	4620      	mov	r0, r4
 800083e:	f7ff ffc1 	bl	80007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000842:	4620      	mov	r0, r4
 8000844:	f7ff ffef 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000848:	4620      	mov	r0, r4
 800084a:	f7ff ff8d 	bl	8000768 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800084e:	4620      	mov	r0, r4
 8000850:	f7ff ffe2 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000854:	4620      	mov	r0, r4
 8000856:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800085a:	f7ff bfb3 	b.w	80007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800085e <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 800085e:	b510      	push	{r4, lr}
 8000860:	4604      	mov	r4, r0
 8000862:	f7ff ffd9 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000866:	4620      	mov	r0, r4
 8000868:	f7ff ff7e 	bl	8000768 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800086c:	4620      	mov	r0, r4
 800086e:	f7ff ffda 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000872:	4620      	mov	r0, r4
 8000874:	f7ff ff78 	bl	8000768 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000878:	4620      	mov	r0, r4
 800087a:	f7ff ffd4 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800087e:	4620      	mov	r0, r4
 8000880:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000884:	f7ff bf9e 	b.w	80007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000888:	b570      	push	{r4, r5, r6, lr}
 800088a:	4604      	mov	r4, r0
 800088c:	460d      	mov	r5, r1
 800088e:	2608      	movs	r6, #8
 8000890:	4620      	mov	r0, r4
 8000892:	f7ff ffc1 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000896:	062b      	lsls	r3, r5, #24
 8000898:	4620      	mov	r0, r4
 800089a:	d502      	bpl.n	80008a2 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 800089c:	f7ff ff92 	bl	80007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80008a0:	e001      	b.n	80008a6 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 80008a2:	f7ff ff61 	bl	8000768 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80008a6:	4620      	mov	r0, r4
 80008a8:	3e01      	subs	r6, #1
 80008aa:	f7ff ffbc 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008ae:	006d      	lsls	r5, r5, #1
 80008b0:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 80008b4:	b2ed      	uxtb	r5, r5
 80008b6:	d1eb      	bne.n	8000890 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 80008b8:	4620      	mov	r0, r4
 80008ba:	f7ff ffad 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80008be:	4620      	mov	r0, r4
 80008c0:	f7ff ff80 	bl	80007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80008c4:	4620      	mov	r0, r4
 80008c6:	f7ff ffae 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008ca:	4620      	mov	r0, r4
 80008cc:	f7ff ffa4 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80008d0:	4620      	mov	r0, r4
 80008d2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80008d6:	f7ff bf41 	b.w	800075c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

080008da <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 80008da:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008dc:	4604      	mov	r4, r0
 80008de:	460e      	mov	r6, r1
 80008e0:	4615      	mov	r5, r2
 80008e2:	461f      	mov	r7, r3
 80008e4:	f7ff ffa6 	bl	8000834 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80008e8:	4620      	mov	r0, r4
 80008ea:	4631      	mov	r1, r6
 80008ec:	f7ff ffcc 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80008f0:	4620      	mov	r0, r4
 80008f2:	4629      	mov	r1, r5
 80008f4:	f7ff ffc8 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80008f8:	4620      	mov	r0, r4
 80008fa:	4639      	mov	r1, r7
 80008fc:	f7ff ffc4 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000900:	4620      	mov	r0, r4
 8000902:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000906:	f7ff bfaa 	b.w	800085e <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

0800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 800090c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800090e:	4605      	mov	r5, r0
 8000910:	460f      	mov	r7, r1
 8000912:	4614      	mov	r4, r2
 8000914:	2300      	movs	r3, #0
 8000916:	2200      	movs	r2, #0
 8000918:	54e2      	strb	r2, [r4, r3]
 800091a:	3301      	adds	r3, #1
 800091c:	2b09      	cmp	r3, #9
 800091e:	d1fa      	bne.n	8000916 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xa>
 8000920:	4628      	mov	r0, r5
 8000922:	f7ff ff79 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000926:	4628      	mov	r0, r5
 8000928:	f7ff ff4c 	bl	80007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 800092c:	2608      	movs	r6, #8
 800092e:	2300      	movs	r3, #0
 8000930:	5ce2      	ldrb	r2, [r4, r3]
 8000932:	0052      	lsls	r2, r2, #1
 8000934:	54e2      	strb	r2, [r4, r3]
 8000936:	3301      	adds	r3, #1
 8000938:	2b09      	cmp	r3, #9
 800093a:	d1f9      	bne.n	8000930 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 800093c:	4628      	mov	r0, r5
 800093e:	f7ff ff72 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000942:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000946:	8a1b      	ldrh	r3, [r3, #16]
 8000948:	b29b      	uxth	r3, r3
 800094a:	07d9      	lsls	r1, r3, #31
 800094c:	d503      	bpl.n	8000956 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x4a>
 800094e:	7822      	ldrb	r2, [r4, #0]
 8000950:	f042 0201 	orr.w	r2, r2, #1
 8000954:	7022      	strb	r2, [r4, #0]
 8000956:	079a      	lsls	r2, r3, #30
 8000958:	d503      	bpl.n	8000962 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x56>
 800095a:	7862      	ldrb	r2, [r4, #1]
 800095c:	f042 0201 	orr.w	r2, r2, #1
 8000960:	7062      	strb	r2, [r4, #1]
 8000962:	0758      	lsls	r0, r3, #29
 8000964:	d503      	bpl.n	800096e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x62>
 8000966:	78a2      	ldrb	r2, [r4, #2]
 8000968:	f042 0201 	orr.w	r2, r2, #1
 800096c:	70a2      	strb	r2, [r4, #2]
 800096e:	0719      	lsls	r1, r3, #28
 8000970:	d503      	bpl.n	800097a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x6e>
 8000972:	78e2      	ldrb	r2, [r4, #3]
 8000974:	f042 0201 	orr.w	r2, r2, #1
 8000978:	70e2      	strb	r2, [r4, #3]
 800097a:	06da      	lsls	r2, r3, #27
 800097c:	d503      	bpl.n	8000986 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x7a>
 800097e:	7922      	ldrb	r2, [r4, #4]
 8000980:	f042 0201 	orr.w	r2, r2, #1
 8000984:	7122      	strb	r2, [r4, #4]
 8000986:	0698      	lsls	r0, r3, #26
 8000988:	d503      	bpl.n	8000992 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x86>
 800098a:	7962      	ldrb	r2, [r4, #5]
 800098c:	f042 0201 	orr.w	r2, r2, #1
 8000990:	7162      	strb	r2, [r4, #5]
 8000992:	0659      	lsls	r1, r3, #25
 8000994:	d503      	bpl.n	800099e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x92>
 8000996:	79a2      	ldrb	r2, [r4, #6]
 8000998:	f042 0201 	orr.w	r2, r2, #1
 800099c:	71a2      	strb	r2, [r4, #6]
 800099e:	061a      	lsls	r2, r3, #24
 80009a0:	d503      	bpl.n	80009aa <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x9e>
 80009a2:	79e3      	ldrb	r3, [r4, #7]
 80009a4:	f043 0301 	orr.w	r3, r3, #1
 80009a8:	71e3      	strb	r3, [r4, #7]
 80009aa:	4b0e      	ldr	r3, [pc, #56]	; (80009e4 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xd8>)
 80009ac:	8a1b      	ldrh	r3, [r3, #16]
 80009ae:	07db      	lsls	r3, r3, #31
 80009b0:	d503      	bpl.n	80009ba <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xae>
 80009b2:	7a23      	ldrb	r3, [r4, #8]
 80009b4:	f043 0301 	orr.w	r3, r3, #1
 80009b8:	7223      	strb	r3, [r4, #8]
 80009ba:	4628      	mov	r0, r5
 80009bc:	f7ff ff2c 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80009c0:	3e01      	subs	r6, #1
 80009c2:	d1b4      	bne.n	800092e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x22>
 80009c4:	b117      	cbz	r7, 80009cc <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xc0>
 80009c6:	4628      	mov	r0, r5
 80009c8:	f7ff fece 	bl	8000768 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80009cc:	4628      	mov	r0, r5
 80009ce:	f7ff ff2a 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80009d2:	4628      	mov	r0, r5
 80009d4:	f7ff ff20 	bl	8000818 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80009d8:	4628      	mov	r0, r5
 80009da:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80009de:	f7ff bebd 	b.w	800075c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80009e2:	bf00      	nop
 80009e4:	48000400 	.word	0x48000400

080009e8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 80009e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009ea:	4604      	mov	r4, r0
 80009ec:	460d      	mov	r5, r1
 80009ee:	4616      	mov	r6, r2
 80009f0:	461f      	mov	r7, r3
 80009f2:	f7ff ff1f 	bl	8000834 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80009f6:	4620      	mov	r0, r4
 80009f8:	4629      	mov	r1, r5
 80009fa:	f7ff ff45 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80009fe:	4631      	mov	r1, r6
 8000a00:	4620      	mov	r0, r4
 8000a02:	f7ff ff41 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a06:	4620      	mov	r0, r4
 8000a08:	f7ff ff14 	bl	8000834 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000a0c:	4620      	mov	r0, r4
 8000a0e:	f045 0101 	orr.w	r1, r5, #1
 8000a12:	f7ff ff39 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a16:	4620      	mov	r0, r4
 8000a18:	463a      	mov	r2, r7
 8000a1a:	2100      	movs	r1, #0
 8000a1c:	f7ff ff76 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000a20:	4620      	mov	r0, r4
 8000a22:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000a26:	f7ff bf1a 	b.w	800085e <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000a2c <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000a2c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8000a30:	f04f 33ff 	mov.w	r3, #4294967295
 8000a34:	2400      	movs	r4, #0
 8000a36:	4605      	mov	r5, r0
 8000a38:	2601      	movs	r6, #1
 8000a3a:	2703      	movs	r7, #3
 8000a3c:	6003      	str	r3, [r0, #0]
 8000a3e:	4669      	mov	r1, sp
 8000a40:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000a44:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a48:	9300      	str	r3, [sp, #0]
 8000a4a:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a4e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a52:	f04f 08ff 	mov.w	r8, #255	; 0xff
 8000a56:	f88d 6004 	strb.w	r6, [sp, #4]
 8000a5a:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a5e:	f001 fbb9 	bl	80021d4 <GPIO_Init>
 8000a62:	4669      	mov	r1, sp
 8000a64:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a68:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a6c:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a70:	f8cd 8000 	str.w	r8, [sp]
 8000a74:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a78:	f001 fbac 	bl	80021d4 <GPIO_Init>
 8000a7c:	4641      	mov	r1, r8
 8000a7e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a82:	f001 fbec 	bl	800225e <GPIO_SetBits>
 8000a86:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a8a:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a8e:	4c0c      	ldr	r4, [pc, #48]	; (8000ac0 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x94>)
 8000a90:	9600      	str	r6, [sp, #0]
 8000a92:	4620      	mov	r0, r4
 8000a94:	4669      	mov	r1, sp
 8000a96:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a9a:	f001 fb9b 	bl	80021d4 <GPIO_Init>
 8000a9e:	4631      	mov	r1, r6
 8000aa0:	4620      	mov	r0, r4
 8000aa2:	f001 fbdc 	bl	800225e <GPIO_SetBits>
 8000aa6:	4628      	mov	r0, r5
 8000aa8:	f7ff febd 	bl	8000826 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000aac:	4628      	mov	r0, r5
 8000aae:	f7ff fe5b 	bl	8000768 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000ab2:	4628      	mov	r0, r5
 8000ab4:	f7ff fe86 	bl	80007c4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ab8:	b002      	add	sp, #8
 8000aba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000abe:	bf00      	nop
 8000ac0:	48000400 	.word	0x48000400

08000ac4 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>:
 8000ac4:	2300      	movs	r3, #0
 8000ac6:	6003      	str	r3, [r0, #0]
 8000ac8:	4770      	bx	lr

08000aca <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>:
 8000aca:	f04f 33ff 	mov.w	r3, #4294967295
 8000ace:	6003      	str	r3, [r0, #0]
 8000ad0:	4770      	bx	lr
	...

08000ad4 <_ZN8CSensors12sensors_initEv>:
 8000ad4:	b510      	push	{r4, lr}
 8000ad6:	4604      	mov	r4, r0
 8000ad8:	4808      	ldr	r0, [pc, #32]	; (8000afc <_ZN8CSensors12sensors_initEv+0x28>)
 8000ada:	f000 fc83 	bl	80013e4 <_ZN4CI2C4initEv>
 8000ade:	4620      	mov	r0, r4
 8000ae0:	f000 fe8a 	bl	80017f8 <_ZN4CRGB8rgb_initEv>
 8000ae4:	b110      	cbz	r0, 8000aec <_ZN8CSensors12sensors_initEv+0x18>
 8000ae6:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000aea:	bd10      	pop	{r4, pc}
 8000aec:	f504 7098 	add.w	r0, r4, #304	; 0x130
 8000af0:	f000 fbbc 	bl	800126c <_ZN4CIMU8imu_initEv>
 8000af4:	b108      	cbz	r0, 8000afa <_ZN8CSensors12sensors_initEv+0x26>
 8000af6:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000afa:	bd10      	pop	{r4, pc}
 8000afc:	20000234 	.word	0x20000234

08000b00 <_ZN5CGPIO9gpio_initEv>:
 8000b00:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000b04:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000b08:	b087      	sub	sp, #28
 8000b0a:	2101      	movs	r1, #1
 8000b0c:	f001 fe8e 	bl	800282c <RCC_AHBPeriphClockCmd>
 8000b10:	4f44      	ldr	r7, [pc, #272]	; (8000c24 <_ZN5CGPIO9gpio_initEv+0x124>)
 8000b12:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000b16:	2101      	movs	r1, #1
 8000b18:	f001 fe88 	bl	800282c <RCC_AHBPeriphClockCmd>
 8000b1c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000b20:	2101      	movs	r1, #1
 8000b22:	2400      	movs	r4, #0
 8000b24:	f001 fe82 	bl	800282c <RCC_AHBPeriphClockCmd>
 8000b28:	2501      	movs	r5, #1
 8000b2a:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 8000b2e:	2603      	movs	r6, #3
 8000b30:	4638      	mov	r0, r7
 8000b32:	a902      	add	r1, sp, #8
 8000b34:	f88d 600d 	strb.w	r6, [sp, #13]
 8000b38:	f8cd 8008 	str.w	r8, [sp, #8]
 8000b3c:	f88d 500c 	strb.w	r5, [sp, #12]
 8000b40:	f88d 400e 	strb.w	r4, [sp, #14]
 8000b44:	f88d 400f 	strb.w	r4, [sp, #15]
 8000b48:	f001 fb44 	bl	80021d4 <GPIO_Init>
 8000b4c:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000b50:	4638      	mov	r0, r7
 8000b52:	a902      	add	r1, sp, #8
 8000b54:	9302      	str	r3, [sp, #8]
 8000b56:	f88d 600d 	strb.w	r6, [sp, #13]
 8000b5a:	f88d 400c 	strb.w	r4, [sp, #12]
 8000b5e:	f88d 400f 	strb.w	r4, [sp, #15]
 8000b62:	f001 fb37 	bl	80021d4 <GPIO_Init>
 8000b66:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8000b6a:	a902      	add	r1, sp, #8
 8000b6c:	482e      	ldr	r0, [pc, #184]	; (8000c28 <_ZN5CGPIO9gpio_initEv+0x128>)
 8000b6e:	9302      	str	r3, [sp, #8]
 8000b70:	f88d 400c 	strb.w	r4, [sp, #12]
 8000b74:	f88d 500f 	strb.w	r5, [sp, #15]
 8000b78:	f001 fb2c 	bl	80021d4 <GPIO_Init>
 8000b7c:	4628      	mov	r0, r5
 8000b7e:	4629      	mov	r1, r5
 8000b80:	f001 fe62 	bl	8002848 <RCC_APB2PeriphClockCmd>
 8000b84:	f04f 0a10 	mov.w	sl, #16
 8000b88:	2106      	movs	r1, #6
 8000b8a:	2002      	movs	r0, #2
 8000b8c:	f001 fc96 	bl	80024bc <SYSCFG_EXTILineConfig>
 8000b90:	f04f 0906 	mov.w	r9, #6
 8000b94:	eb0d 000a 	add.w	r0, sp, sl
 8000b98:	260f      	movs	r6, #15
 8000b9a:	f8cd 9010 	str.w	r9, [sp, #16]
 8000b9e:	f88d 4014 	strb.w	r4, [sp, #20]
 8000ba2:	f88d a015 	strb.w	sl, [sp, #21]
 8000ba6:	f88d 5016 	strb.w	r5, [sp, #22]
 8000baa:	f001 fb73 	bl	8002294 <EXTI_Init>
 8000bae:	2317      	movs	r3, #23
 8000bb0:	a801      	add	r0, sp, #4
 8000bb2:	f88d 3004 	strb.w	r3, [sp, #4]
 8000bb6:	f88d 6005 	strb.w	r6, [sp, #5]
 8000bba:	f88d 6006 	strb.w	r6, [sp, #6]
 8000bbe:	f88d 5007 	strb.w	r5, [sp, #7]
 8000bc2:	f001 ff0f 	bl	80029e4 <NVIC_Init>
 8000bc6:	210c      	movs	r1, #12
 8000bc8:	2002      	movs	r0, #2
 8000bca:	f001 fc77 	bl	80024bc <SYSCFG_EXTILineConfig>
 8000bce:	f04f 0b0c 	mov.w	fp, #12
 8000bd2:	eb0d 000a 	add.w	r0, sp, sl
 8000bd6:	f8cd b010 	str.w	fp, [sp, #16]
 8000bda:	f88d 4014 	strb.w	r4, [sp, #20]
 8000bde:	f88d a015 	strb.w	sl, [sp, #21]
 8000be2:	f88d 5016 	strb.w	r5, [sp, #22]
 8000be6:	f001 fb55 	bl	8002294 <EXTI_Init>
 8000bea:	2328      	movs	r3, #40	; 0x28
 8000bec:	a801      	add	r0, sp, #4
 8000bee:	f88d 3004 	strb.w	r3, [sp, #4]
 8000bf2:	f88d 6005 	strb.w	r6, [sp, #5]
 8000bf6:	f88d 6006 	strb.w	r6, [sp, #6]
 8000bfa:	f88d 5007 	strb.w	r5, [sp, #7]
 8000bfe:	f001 fef1 	bl	80029e4 <NVIC_Init>
 8000c02:	4648      	mov	r0, r9
 8000c04:	f001 fbcc 	bl	80023a0 <EXTI_ClearITPendingBit>
 8000c08:	4658      	mov	r0, fp
 8000c0a:	f001 fbc9 	bl	80023a0 <EXTI_ClearITPendingBit>
 8000c0e:	4b07      	ldr	r3, [pc, #28]	; (8000c2c <_ZN5CGPIO9gpio_initEv+0x12c>)
 8000c10:	601c      	str	r4, [r3, #0]
 8000c12:	4b07      	ldr	r3, [pc, #28]	; (8000c30 <_ZN5CGPIO9gpio_initEv+0x130>)
 8000c14:	4620      	mov	r0, r4
 8000c16:	601c      	str	r4, [r3, #0]
 8000c18:	f8c7 8018 	str.w	r8, [r7, #24]
 8000c1c:	b007      	add	sp, #28
 8000c1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000c22:	bf00      	nop
 8000c24:	48000400 	.word	0x48000400
 8000c28:	48000800 	.word	0x48000800
 8000c2c:	200001c4 	.word	0x200001c4
 8000c30:	200001c8 	.word	0x200001c8

08000c34 <_ZN5CGPIO7gpio_onEm>:
 8000c34:	4b01      	ldr	r3, [pc, #4]	; (8000c3c <_ZN5CGPIO7gpio_onEm+0x8>)
 8000c36:	6199      	str	r1, [r3, #24]
 8000c38:	4770      	bx	lr
 8000c3a:	bf00      	nop
 8000c3c:	48000400 	.word	0x48000400

08000c40 <_ZN5CGPIO8gpio_offEm>:
 8000c40:	4b01      	ldr	r3, [pc, #4]	; (8000c48 <_ZN5CGPIO8gpio_offEm+0x8>)
 8000c42:	b289      	uxth	r1, r1
 8000c44:	8519      	strh	r1, [r3, #40]	; 0x28
 8000c46:	4770      	bx	lr
 8000c48:	48000400 	.word	0x48000400

08000c4c <_ZN5CGPIO7gpio_inEm>:
 8000c4c:	4b02      	ldr	r3, [pc, #8]	; (8000c58 <_ZN5CGPIO7gpio_inEm+0xc>)
 8000c4e:	8a18      	ldrh	r0, [r3, #16]
 8000c50:	b280      	uxth	r0, r0
 8000c52:	ea21 0000 	bic.w	r0, r1, r0
 8000c56:	4770      	bx	lr
 8000c58:	48000400 	.word	0x48000400

08000c5c <EXTI9_5_IRQHandler>:
 8000c5c:	4b03      	ldr	r3, [pc, #12]	; (8000c6c <EXTI9_5_IRQHandler+0x10>)
 8000c5e:	681a      	ldr	r2, [r3, #0]
 8000c60:	2006      	movs	r0, #6
 8000c62:	3201      	adds	r2, #1
 8000c64:	601a      	str	r2, [r3, #0]
 8000c66:	f001 bb9b 	b.w	80023a0 <EXTI_ClearITPendingBit>
 8000c6a:	bf00      	nop
 8000c6c:	200001c4 	.word	0x200001c4

08000c70 <EXTI15_10_IRQHandler>:
 8000c70:	4b03      	ldr	r3, [pc, #12]	; (8000c80 <EXTI15_10_IRQHandler+0x10>)
 8000c72:	681a      	ldr	r2, [r3, #0]
 8000c74:	200c      	movs	r0, #12
 8000c76:	3201      	adds	r2, #1
 8000c78:	601a      	str	r2, [r3, #0]
 8000c7a:	f001 bb91 	b.w	80023a0 <EXTI_ClearITPendingBit>
 8000c7e:	bf00      	nop
 8000c80:	200001c8 	.word	0x200001c8

08000c84 <TIM3_IRQHandler>:
 8000c84:	2300      	movs	r3, #0
 8000c86:	4a15      	ldr	r2, [pc, #84]	; (8000cdc <TIM3_IRQHandler+0x58>)
 8000c88:	5cd1      	ldrb	r1, [r2, r3]
 8000c8a:	b111      	cbz	r1, 8000c92 <TIM3_IRQHandler+0xe>
 8000c8c:	5cd1      	ldrb	r1, [r2, r3]
 8000c8e:	29ff      	cmp	r1, #255	; 0xff
 8000c90:	d11e      	bne.n	8000cd0 <TIM3_IRQHandler+0x4c>
 8000c92:	4913      	ldr	r1, [pc, #76]	; (8000ce0 <TIM3_IRQHandler+0x5c>)
 8000c94:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000c98:	b128      	cbz	r0, 8000ca6 <TIM3_IRQHandler+0x22>
 8000c9a:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000c9e:	3a01      	subs	r2, #1
 8000ca0:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000ca4:	e009      	b.n	8000cba <TIM3_IRQHandler+0x36>
 8000ca6:	480f      	ldr	r0, [pc, #60]	; (8000ce4 <TIM3_IRQHandler+0x60>)
 8000ca8:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000cac:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000cb0:	5cd2      	ldrb	r2, [r2, r3]
 8000cb2:	b912      	cbnz	r2, 8000cba <TIM3_IRQHandler+0x36>
 8000cb4:	4a09      	ldr	r2, [pc, #36]	; (8000cdc <TIM3_IRQHandler+0x58>)
 8000cb6:	2101      	movs	r1, #1
 8000cb8:	54d1      	strb	r1, [r2, r3]
 8000cba:	3301      	adds	r3, #1
 8000cbc:	2b08      	cmp	r3, #8
 8000cbe:	d1e2      	bne.n	8000c86 <TIM3_IRQHandler+0x2>
 8000cc0:	4b09      	ldr	r3, [pc, #36]	; (8000ce8 <TIM3_IRQHandler+0x64>)
 8000cc2:	480a      	ldr	r0, [pc, #40]	; (8000cec <TIM3_IRQHandler+0x68>)
 8000cc4:	681a      	ldr	r2, [r3, #0]
 8000cc6:	2101      	movs	r1, #1
 8000cc8:	3201      	adds	r2, #1
 8000cca:	601a      	str	r2, [r3, #0]
 8000ccc:	f001 bfaf 	b.w	8002c2e <TIM_ClearITPendingBit>
 8000cd0:	5cd1      	ldrb	r1, [r2, r3]
 8000cd2:	3101      	adds	r1, #1
 8000cd4:	b2c9      	uxtb	r1, r1
 8000cd6:	54d1      	strb	r1, [r2, r3]
 8000cd8:	e7db      	b.n	8000c92 <TIM3_IRQHandler+0xe>
 8000cda:	bf00      	nop
 8000cdc:	200001ec 	.word	0x200001ec
 8000ce0:	200001cc 	.word	0x200001cc
 8000ce4:	200001fc 	.word	0x200001fc
 8000ce8:	200001f4 	.word	0x200001f4
 8000cec:	40000400 	.word	0x40000400

08000cf0 <_ZN6CTimer10timer_initEv>:
 8000cf0:	b530      	push	{r4, r5, lr}
 8000cf2:	4a1f      	ldr	r2, [pc, #124]	; (8000d70 <_ZN6CTimer10timer_initEv+0x80>)
 8000cf4:	2300      	movs	r3, #0
 8000cf6:	b085      	sub	sp, #20
 8000cf8:	6013      	str	r3, [r2, #0]
 8000cfa:	491e      	ldr	r1, [pc, #120]	; (8000d74 <_ZN6CTimer10timer_initEv+0x84>)
 8000cfc:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000d00:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000d04:	491c      	ldr	r1, [pc, #112]	; (8000d78 <_ZN6CTimer10timer_initEv+0x88>)
 8000d06:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000d0a:	4a1c      	ldr	r2, [pc, #112]	; (8000d7c <_ZN6CTimer10timer_initEv+0x8c>)
 8000d0c:	2400      	movs	r4, #0
 8000d0e:	54d4      	strb	r4, [r2, r3]
 8000d10:	3301      	adds	r3, #1
 8000d12:	2b08      	cmp	r3, #8
 8000d14:	d1f1      	bne.n	8000cfa <_ZN6CTimer10timer_initEv+0xa>
 8000d16:	4d1a      	ldr	r5, [pc, #104]	; (8000d80 <_ZN6CTimer10timer_initEv+0x90>)
 8000d18:	2002      	movs	r0, #2
 8000d1a:	2101      	movs	r1, #1
 8000d1c:	f001 fda2 	bl	8002864 <RCC_APB1PeriphClockCmd>
 8000d20:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000d24:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000d28:	4628      	mov	r0, r5
 8000d2a:	2331      	movs	r3, #49	; 0x31
 8000d2c:	a901      	add	r1, sp, #4
 8000d2e:	9302      	str	r3, [sp, #8]
 8000d30:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000d34:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000d38:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000d3c:	f001 fe8a 	bl	8002a54 <TIM_TimeBaseInit>
 8000d40:	4628      	mov	r0, r5
 8000d42:	2101      	movs	r1, #1
 8000d44:	f001 fed6 	bl	8002af4 <TIM_Cmd>
 8000d48:	68eb      	ldr	r3, [r5, #12]
 8000d4a:	f043 0301 	orr.w	r3, r3, #1
 8000d4e:	60eb      	str	r3, [r5, #12]
 8000d50:	231d      	movs	r3, #29
 8000d52:	f88d 3000 	strb.w	r3, [sp]
 8000d56:	4668      	mov	r0, sp
 8000d58:	2301      	movs	r3, #1
 8000d5a:	f88d 4001 	strb.w	r4, [sp, #1]
 8000d5e:	f88d 3002 	strb.w	r3, [sp, #2]
 8000d62:	f88d 3003 	strb.w	r3, [sp, #3]
 8000d66:	f001 fe3d 	bl	80029e4 <NVIC_Init>
 8000d6a:	4620      	mov	r0, r4
 8000d6c:	b005      	add	sp, #20
 8000d6e:	bd30      	pop	{r4, r5, pc}
 8000d70:	200001f4 	.word	0x200001f4
 8000d74:	200001cc 	.word	0x200001cc
 8000d78:	200001fc 	.word	0x200001fc
 8000d7c:	200001ec 	.word	0x200001ec
 8000d80:	40000400 	.word	0x40000400

08000d84 <_ZN6CTimer8get_timeEv>:
 8000d84:	b082      	sub	sp, #8
 8000d86:	b672      	cpsid	i
 8000d88:	4b04      	ldr	r3, [pc, #16]	; (8000d9c <_ZN6CTimer8get_timeEv+0x18>)
 8000d8a:	681b      	ldr	r3, [r3, #0]
 8000d8c:	9301      	str	r3, [sp, #4]
 8000d8e:	b662      	cpsie	i
 8000d90:	9801      	ldr	r0, [sp, #4]
 8000d92:	230a      	movs	r3, #10
 8000d94:	fbb0 f0f3 	udiv	r0, r0, r3
 8000d98:	b002      	add	sp, #8
 8000d9a:	4770      	bx	lr
 8000d9c:	200001f4 	.word	0x200001f4

08000da0 <_ZN6CTimer8delay_msEm>:
 8000da0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000da2:	460d      	mov	r5, r1
 8000da4:	4604      	mov	r4, r0
 8000da6:	f7ff ffed 	bl	8000d84 <_ZN6CTimer8get_timeEv>
 8000daa:	4428      	add	r0, r5
 8000dac:	9001      	str	r0, [sp, #4]
 8000dae:	4620      	mov	r0, r4
 8000db0:	9d01      	ldr	r5, [sp, #4]
 8000db2:	f7ff ffe7 	bl	8000d84 <_ZN6CTimer8get_timeEv>
 8000db6:	4285      	cmp	r5, r0
 8000db8:	d902      	bls.n	8000dc0 <_ZN6CTimer8delay_msEm+0x20>
 8000dba:	f001 fb7b 	bl	80024b4 <core_yield>
 8000dbe:	e7f6      	b.n	8000dae <_ZN6CTimer8delay_msEm+0xe>
 8000dc0:	b003      	add	sp, #12
 8000dc2:	bd30      	pop	{r4, r5, pc}

08000dc4 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000dc4:	b672      	cpsid	i
 8000dc6:	230a      	movs	r3, #10
 8000dc8:	435a      	muls	r2, r3
 8000dca:	4b05      	ldr	r3, [pc, #20]	; (8000de0 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000dcc:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000dd0:	4b04      	ldr	r3, [pc, #16]	; (8000de4 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000dd2:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000dd6:	4b04      	ldr	r3, [pc, #16]	; (8000de8 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000dd8:	2200      	movs	r2, #0
 8000dda:	545a      	strb	r2, [r3, r1]
 8000ddc:	b662      	cpsie	i
 8000dde:	4770      	bx	lr
 8000de0:	200001cc 	.word	0x200001cc
 8000de4:	200001fc 	.word	0x200001fc
 8000de8:	200001ec 	.word	0x200001ec

08000dec <_ZN6CTimer17event_timer_checkEh>:
 8000dec:	4b05      	ldr	r3, [pc, #20]	; (8000e04 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000dee:	5c5a      	ldrb	r2, [r3, r1]
 8000df0:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000df4:	b12a      	cbz	r2, 8000e02 <_ZN6CTimer17event_timer_checkEh+0x16>
 8000df6:	b672      	cpsid	i
 8000df8:	5c58      	ldrb	r0, [r3, r1]
 8000dfa:	2200      	movs	r2, #0
 8000dfc:	b2c0      	uxtb	r0, r0
 8000dfe:	545a      	strb	r2, [r3, r1]
 8000e00:	b662      	cpsie	i
 8000e02:	4770      	bx	lr
 8000e04:	200001ec 	.word	0x200001ec

08000e08 <_ZN9CTerminal13terminal_initEv>:
 8000e08:	b530      	push	{r4, r5, lr}
 8000e0a:	4a2f      	ldr	r2, [pc, #188]	; (8000ec8 <_ZN9CTerminal13terminal_initEv+0xc0>)
 8000e0c:	2300      	movs	r3, #0
 8000e0e:	6013      	str	r3, [r2, #0]
 8000e10:	4a2e      	ldr	r2, [pc, #184]	; (8000ecc <_ZN9CTerminal13terminal_initEv+0xc4>)
 8000e12:	b08b      	sub	sp, #44	; 0x2c
 8000e14:	6013      	str	r3, [r2, #0]
 8000e16:	4a2e      	ldr	r2, [pc, #184]	; (8000ed0 <_ZN9CTerminal13terminal_initEv+0xc8>)
 8000e18:	2400      	movs	r4, #0
 8000e1a:	54d4      	strb	r4, [r2, r3]
 8000e1c:	3301      	adds	r3, #1
 8000e1e:	2b10      	cmp	r3, #16
 8000e20:	d1f9      	bne.n	8000e16 <_ZN9CTerminal13terminal_initEv+0xe>
 8000e22:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000e26:	2101      	movs	r1, #1
 8000e28:	f001 fd00 	bl	800282c <RCC_AHBPeriphClockCmd>
 8000e2c:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000e30:	2101      	movs	r1, #1
 8000e32:	f001 fd09 	bl	8002848 <RCC_APB2PeriphClockCmd>
 8000e36:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8000e3a:	9302      	str	r3, [sp, #8]
 8000e3c:	2302      	movs	r3, #2
 8000e3e:	f88d 300c 	strb.w	r3, [sp, #12]
 8000e42:	a902      	add	r1, sp, #8
 8000e44:	2303      	movs	r3, #3
 8000e46:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e4a:	f88d 300d 	strb.w	r3, [sp, #13]
 8000e4e:	f88d 400e 	strb.w	r4, [sp, #14]
 8000e52:	f88d 400f 	strb.w	r4, [sp, #15]
 8000e56:	f001 f9bd 	bl	80021d4 <GPIO_Init>
 8000e5a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e5e:	2109      	movs	r1, #9
 8000e60:	2207      	movs	r2, #7
 8000e62:	f001 fa00 	bl	8002266 <GPIO_PinAFConfig>
 8000e66:	2207      	movs	r2, #7
 8000e68:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000e6c:	210a      	movs	r1, #10
 8000e6e:	f001 f9fa 	bl	8002266 <GPIO_PinAFConfig>
 8000e72:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000e76:	9304      	str	r3, [sp, #16]
 8000e78:	a904      	add	r1, sp, #16
 8000e7a:	230c      	movs	r3, #12
 8000e7c:	4815      	ldr	r0, [pc, #84]	; (8000ed4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000e7e:	9308      	str	r3, [sp, #32]
 8000e80:	9405      	str	r4, [sp, #20]
 8000e82:	9406      	str	r4, [sp, #24]
 8000e84:	9407      	str	r4, [sp, #28]
 8000e86:	9409      	str	r4, [sp, #36]	; 0x24
 8000e88:	f001 fcfa 	bl	8002880 <USART_Init>
 8000e8c:	4811      	ldr	r0, [pc, #68]	; (8000ed4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000e8e:	2101      	movs	r1, #1
 8000e90:	f001 fd58 	bl	8002944 <USART_Cmd>
 8000e94:	2201      	movs	r2, #1
 8000e96:	4910      	ldr	r1, [pc, #64]	; (8000ed8 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8000e98:	480e      	ldr	r0, [pc, #56]	; (8000ed4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000e9a:	f001 fd63 	bl	8002964 <USART_ITConfig>
 8000e9e:	2501      	movs	r5, #1
 8000ea0:	2325      	movs	r3, #37	; 0x25
 8000ea2:	a801      	add	r0, sp, #4
 8000ea4:	f88d 3004 	strb.w	r3, [sp, #4]
 8000ea8:	f88d 4005 	strb.w	r4, [sp, #5]
 8000eac:	f88d 4006 	strb.w	r4, [sp, #6]
 8000eb0:	f88d 5007 	strb.w	r5, [sp, #7]
 8000eb4:	f001 fd96 	bl	80029e4 <NVIC_Init>
 8000eb8:	4806      	ldr	r0, [pc, #24]	; (8000ed4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000eba:	4629      	mov	r1, r5
 8000ebc:	f001 fd42 	bl	8002944 <USART_Cmd>
 8000ec0:	4620      	mov	r0, r4
 8000ec2:	b00b      	add	sp, #44	; 0x2c
 8000ec4:	bd30      	pop	{r4, r5, pc}
 8000ec6:	bf00      	nop
 8000ec8:	2000021c 	.word	0x2000021c
 8000ecc:	20000230 	.word	0x20000230
 8000ed0:	20000220 	.word	0x20000220
 8000ed4:	40013800 	.word	0x40013800
 8000ed8:	00050105 	.word	0x00050105

08000edc <USART1_IRQHandler>:
 8000edc:	b508      	push	{r3, lr}
 8000ede:	480d      	ldr	r0, [pc, #52]	; (8000f14 <USART1_IRQHandler+0x38>)
 8000ee0:	490d      	ldr	r1, [pc, #52]	; (8000f18 <USART1_IRQHandler+0x3c>)
 8000ee2:	f001 fd58 	bl	8002996 <USART_GetITStatus>
 8000ee6:	b178      	cbz	r0, 8000f08 <USART1_IRQHandler+0x2c>
 8000ee8:	480a      	ldr	r0, [pc, #40]	; (8000f14 <USART1_IRQHandler+0x38>)
 8000eea:	f001 fd36 	bl	800295a <USART_ReceiveData>
 8000eee:	4b0b      	ldr	r3, [pc, #44]	; (8000f1c <USART1_IRQHandler+0x40>)
 8000ef0:	490b      	ldr	r1, [pc, #44]	; (8000f20 <USART1_IRQHandler+0x44>)
 8000ef2:	681a      	ldr	r2, [r3, #0]
 8000ef4:	b2c0      	uxtb	r0, r0
 8000ef6:	5488      	strb	r0, [r1, r2]
 8000ef8:	681a      	ldr	r2, [r3, #0]
 8000efa:	3201      	adds	r2, #1
 8000efc:	601a      	str	r2, [r3, #0]
 8000efe:	681a      	ldr	r2, [r3, #0]
 8000f00:	2a0f      	cmp	r2, #15
 8000f02:	bf84      	itt	hi
 8000f04:	2200      	movhi	r2, #0
 8000f06:	601a      	strhi	r2, [r3, #0]
 8000f08:	4802      	ldr	r0, [pc, #8]	; (8000f14 <USART1_IRQHandler+0x38>)
 8000f0a:	4903      	ldr	r1, [pc, #12]	; (8000f18 <USART1_IRQHandler+0x3c>)
 8000f0c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000f10:	f001 bd60 	b.w	80029d4 <USART_ClearITPendingBit>
 8000f14:	40013800 	.word	0x40013800
 8000f18:	00050105 	.word	0x00050105
 8000f1c:	2000021c 	.word	0x2000021c
 8000f20:	20000220 	.word	0x20000220

08000f24 <_ZN9CTerminal7putcharEc>:
 8000f24:	4b03      	ldr	r3, [pc, #12]	; (8000f34 <_ZN9CTerminal7putcharEc+0x10>)
 8000f26:	69da      	ldr	r2, [r3, #28]
 8000f28:	0612      	lsls	r2, r2, #24
 8000f2a:	d401      	bmi.n	8000f30 <_ZN9CTerminal7putcharEc+0xc>
 8000f2c:	bf00      	nop
 8000f2e:	e7f9      	b.n	8000f24 <_ZN9CTerminal7putcharEc>
 8000f30:	8519      	strh	r1, [r3, #40]	; 0x28
 8000f32:	4770      	bx	lr
 8000f34:	40013800 	.word	0x40013800

08000f38 <_ZN9CTerminal4putsEPc>:
 8000f38:	b538      	push	{r3, r4, r5, lr}
 8000f3a:	4605      	mov	r5, r0
 8000f3c:	1e4c      	subs	r4, r1, #1
 8000f3e:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000f42:	b119      	cbz	r1, 8000f4c <_ZN9CTerminal4putsEPc+0x14>
 8000f44:	4628      	mov	r0, r5
 8000f46:	f7ff ffed 	bl	8000f24 <_ZN9CTerminal7putcharEc>
 8000f4a:	e7f8      	b.n	8000f3e <_ZN9CTerminal4putsEPc+0x6>
 8000f4c:	2001      	movs	r0, #1
 8000f4e:	bd38      	pop	{r3, r4, r5, pc}

08000f50 <_ZN9CTerminal4putiEl>:
 8000f50:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8000f52:	1e0b      	subs	r3, r1, #0
 8000f54:	f04f 0200 	mov.w	r2, #0
 8000f58:	bfa8      	it	ge
 8000f5a:	4615      	movge	r5, r2
 8000f5c:	f88d 200f 	strb.w	r2, [sp, #15]
 8000f60:	bfbc      	itt	lt
 8000f62:	425b      	neglt	r3, r3
 8000f64:	2501      	movlt	r5, #1
 8000f66:	220a      	movs	r2, #10
 8000f68:	240a      	movs	r4, #10
 8000f6a:	fb93 f6f4 	sdiv	r6, r3, r4
 8000f6e:	fb04 3316 	mls	r3, r4, r6, r3
 8000f72:	a901      	add	r1, sp, #4
 8000f74:	3330      	adds	r3, #48	; 0x30
 8000f76:	5453      	strb	r3, [r2, r1]
 8000f78:	1e54      	subs	r4, r2, #1
 8000f7a:	4633      	mov	r3, r6
 8000f7c:	b10e      	cbz	r6, 8000f82 <_ZN9CTerminal4putiEl+0x32>
 8000f7e:	4622      	mov	r2, r4
 8000f80:	e7f2      	b.n	8000f68 <_ZN9CTerminal4putiEl+0x18>
 8000f82:	b12d      	cbz	r5, 8000f90 <_ZN9CTerminal4putiEl+0x40>
 8000f84:	ab04      	add	r3, sp, #16
 8000f86:	4423      	add	r3, r4
 8000f88:	222d      	movs	r2, #45	; 0x2d
 8000f8a:	f803 2c0c 	strb.w	r2, [r3, #-12]
 8000f8e:	4622      	mov	r2, r4
 8000f90:	4411      	add	r1, r2
 8000f92:	f7ff ffd1 	bl	8000f38 <_ZN9CTerminal4putsEPc>
 8000f96:	b004      	add	sp, #16
 8000f98:	bd70      	pop	{r4, r5, r6, pc}

08000f9a <_ZN9CTerminal5putuiEm>:
 8000f9a:	b530      	push	{r4, r5, lr}
 8000f9c:	b085      	sub	sp, #20
 8000f9e:	2300      	movs	r3, #0
 8000fa0:	f88d 300f 	strb.w	r3, [sp, #15]
 8000fa4:	230a      	movs	r3, #10
 8000fa6:	250a      	movs	r5, #10
 8000fa8:	fbb1 f4f5 	udiv	r4, r1, r5
 8000fac:	fb05 1114 	mls	r1, r5, r4, r1
 8000fb0:	aa01      	add	r2, sp, #4
 8000fb2:	3130      	adds	r1, #48	; 0x30
 8000fb4:	5499      	strb	r1, [r3, r2]
 8000fb6:	1e5d      	subs	r5, r3, #1
 8000fb8:	4621      	mov	r1, r4
 8000fba:	b10c      	cbz	r4, 8000fc0 <_ZN9CTerminal5putuiEm+0x26>
 8000fbc:	462b      	mov	r3, r5
 8000fbe:	e7f2      	b.n	8000fa6 <_ZN9CTerminal5putuiEm+0xc>
 8000fc0:	18d1      	adds	r1, r2, r3
 8000fc2:	f7ff ffb9 	bl	8000f38 <_ZN9CTerminal4putsEPc>
 8000fc6:	b005      	add	sp, #20
 8000fc8:	bd30      	pop	{r4, r5, pc}

08000fca <_ZN9CTerminal4putxEm>:
 8000fca:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000fcc:	2300      	movs	r3, #0
 8000fce:	f88d 300f 	strb.w	r3, [sp, #15]
 8000fd2:	230a      	movs	r3, #10
 8000fd4:	f001 040f 	and.w	r4, r1, #15
 8000fd8:	2c09      	cmp	r4, #9
 8000fda:	aa01      	add	r2, sp, #4
 8000fdc:	bfd4      	ite	le
 8000fde:	3430      	addle	r4, #48	; 0x30
 8000fe0:	3457      	addgt	r4, #87	; 0x57
 8000fe2:	0909      	lsrs	r1, r1, #4
 8000fe4:	54d4      	strb	r4, [r2, r3]
 8000fe6:	f103 34ff 	add.w	r4, r3, #4294967295
 8000fea:	d001      	beq.n	8000ff0 <_ZN9CTerminal4putxEm+0x26>
 8000fec:	4623      	mov	r3, r4
 8000fee:	e7f1      	b.n	8000fd4 <_ZN9CTerminal4putxEm+0xa>
 8000ff0:	18d1      	adds	r1, r2, r3
 8000ff2:	f7ff ffa1 	bl	8000f38 <_ZN9CTerminal4putsEPc>
 8000ff6:	b004      	add	sp, #16
 8000ff8:	bd10      	pop	{r4, pc}

08000ffa <_ZN9CTerminal4putfEfj>:
 8000ffa:	b538      	push	{r3, r4, r5, lr}
 8000ffc:	2200      	movs	r2, #0
 8000ffe:	4604      	mov	r4, r0
 8001000:	2301      	movs	r3, #1
 8001002:	428a      	cmp	r2, r1
 8001004:	d003      	beq.n	800100e <_ZN9CTerminal4putfEfj+0x14>
 8001006:	200a      	movs	r0, #10
 8001008:	4343      	muls	r3, r0
 800100a:	3201      	adds	r2, #1
 800100c:	e7f9      	b.n	8001002 <_ZN9CTerminal4putfEfj+0x8>
 800100e:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001012:	ee06 3a90 	vmov	s13, r3
 8001016:	eeb8 7ae7 	vcvt.f32.s32	s14, s15
 800101a:	4620      	mov	r0, r4
 800101c:	ee30 0a47 	vsub.f32	s0, s0, s14
 8001020:	eeb8 7a66 	vcvt.f32.u32	s14, s13
 8001024:	ee17 1a90 	vmov	r1, s15
 8001028:	ee20 0a07 	vmul.f32	s0, s0, s14
 800102c:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001030:	ee10 5a10 	vmov	r5, s0
 8001034:	f7ff ff8c 	bl	8000f50 <_ZN9CTerminal4putiEl>
 8001038:	4620      	mov	r0, r4
 800103a:	212e      	movs	r1, #46	; 0x2e
 800103c:	f7ff ff72 	bl	8000f24 <_ZN9CTerminal7putcharEc>
 8001040:	4620      	mov	r0, r4
 8001042:	ea85 71e5 	eor.w	r1, r5, r5, asr #31
 8001046:	eba1 71e5 	sub.w	r1, r1, r5, asr #31
 800104a:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800104e:	f7ff bf7f 	b.w	8000f50 <_ZN9CTerminal4putiEl>

08001052 <_ZN9CTerminal6printfEPKcz>:
 8001052:	b40e      	push	{r1, r2, r3}
 8001054:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001056:	ab07      	add	r3, sp, #28
 8001058:	4604      	mov	r4, r0
 800105a:	f853 6b04 	ldr.w	r6, [r3], #4
 800105e:	9301      	str	r3, [sp, #4]
 8001060:	2500      	movs	r5, #0
 8001062:	5d71      	ldrb	r1, [r6, r5]
 8001064:	2900      	cmp	r1, #0
 8001066:	d054      	beq.n	8001112 <_ZN9CTerminal6printfEPKcz+0xc0>
 8001068:	2925      	cmp	r1, #37	; 0x25
 800106a:	d004      	beq.n	8001076 <_ZN9CTerminal6printfEPKcz+0x24>
 800106c:	4620      	mov	r0, r4
 800106e:	f7ff ff59 	bl	8000f24 <_ZN9CTerminal7putcharEc>
 8001072:	3501      	adds	r5, #1
 8001074:	e7f5      	b.n	8001062 <_ZN9CTerminal6printfEPKcz+0x10>
 8001076:	1973      	adds	r3, r6, r5
 8001078:	7859      	ldrb	r1, [r3, #1]
 800107a:	2969      	cmp	r1, #105	; 0x69
 800107c:	d016      	beq.n	80010ac <_ZN9CTerminal6printfEPKcz+0x5a>
 800107e:	d807      	bhi.n	8001090 <_ZN9CTerminal6printfEPKcz+0x3e>
 8001080:	2963      	cmp	r1, #99	; 0x63
 8001082:	d02b      	beq.n	80010dc <_ZN9CTerminal6printfEPKcz+0x8a>
 8001084:	2966      	cmp	r1, #102	; 0x66
 8001086:	d031      	beq.n	80010ec <_ZN9CTerminal6printfEPKcz+0x9a>
 8001088:	2925      	cmp	r1, #37	; 0x25
 800108a:	d140      	bne.n	800110e <_ZN9CTerminal6printfEPKcz+0xbc>
 800108c:	4620      	mov	r0, r4
 800108e:	e02a      	b.n	80010e6 <_ZN9CTerminal6printfEPKcz+0x94>
 8001090:	2975      	cmp	r1, #117	; 0x75
 8001092:	d013      	beq.n	80010bc <_ZN9CTerminal6printfEPKcz+0x6a>
 8001094:	2978      	cmp	r1, #120	; 0x78
 8001096:	d019      	beq.n	80010cc <_ZN9CTerminal6printfEPKcz+0x7a>
 8001098:	2973      	cmp	r1, #115	; 0x73
 800109a:	d138      	bne.n	800110e <_ZN9CTerminal6printfEPKcz+0xbc>
 800109c:	9b01      	ldr	r3, [sp, #4]
 800109e:	4620      	mov	r0, r4
 80010a0:	1d1a      	adds	r2, r3, #4
 80010a2:	6819      	ldr	r1, [r3, #0]
 80010a4:	9201      	str	r2, [sp, #4]
 80010a6:	f7ff ff47 	bl	8000f38 <_ZN9CTerminal4putsEPc>
 80010aa:	e030      	b.n	800110e <_ZN9CTerminal6printfEPKcz+0xbc>
 80010ac:	9b01      	ldr	r3, [sp, #4]
 80010ae:	4620      	mov	r0, r4
 80010b0:	1d1a      	adds	r2, r3, #4
 80010b2:	6819      	ldr	r1, [r3, #0]
 80010b4:	9201      	str	r2, [sp, #4]
 80010b6:	f7ff ff4b 	bl	8000f50 <_ZN9CTerminal4putiEl>
 80010ba:	e028      	b.n	800110e <_ZN9CTerminal6printfEPKcz+0xbc>
 80010bc:	9b01      	ldr	r3, [sp, #4]
 80010be:	4620      	mov	r0, r4
 80010c0:	1d1a      	adds	r2, r3, #4
 80010c2:	6819      	ldr	r1, [r3, #0]
 80010c4:	9201      	str	r2, [sp, #4]
 80010c6:	f7ff ff68 	bl	8000f9a <_ZN9CTerminal5putuiEm>
 80010ca:	e020      	b.n	800110e <_ZN9CTerminal6printfEPKcz+0xbc>
 80010cc:	9b01      	ldr	r3, [sp, #4]
 80010ce:	4620      	mov	r0, r4
 80010d0:	1d1a      	adds	r2, r3, #4
 80010d2:	6819      	ldr	r1, [r3, #0]
 80010d4:	9201      	str	r2, [sp, #4]
 80010d6:	f7ff ff78 	bl	8000fca <_ZN9CTerminal4putxEm>
 80010da:	e018      	b.n	800110e <_ZN9CTerminal6printfEPKcz+0xbc>
 80010dc:	9b01      	ldr	r3, [sp, #4]
 80010de:	1d1a      	adds	r2, r3, #4
 80010e0:	7819      	ldrb	r1, [r3, #0]
 80010e2:	9201      	str	r2, [sp, #4]
 80010e4:	4620      	mov	r0, r4
 80010e6:	f7ff ff1d 	bl	8000f24 <_ZN9CTerminal7putcharEc>
 80010ea:	e010      	b.n	800110e <_ZN9CTerminal6printfEPKcz+0xbc>
 80010ec:	9b01      	ldr	r3, [sp, #4]
 80010ee:	3307      	adds	r3, #7
 80010f0:	f023 0307 	bic.w	r3, r3, #7
 80010f4:	f103 0208 	add.w	r2, r3, #8
 80010f8:	e9d3 0100 	ldrd	r0, r1, [r3]
 80010fc:	9201      	str	r2, [sp, #4]
 80010fe:	f001 fdf1 	bl	8002ce4 <__aeabi_d2f>
 8001102:	2103      	movs	r1, #3
 8001104:	ee00 0a10 	vmov	s0, r0
 8001108:	4620      	mov	r0, r4
 800110a:	f7ff ff76 	bl	8000ffa <_ZN9CTerminal4putfEfj>
 800110e:	3502      	adds	r5, #2
 8001110:	e7a7      	b.n	8001062 <_ZN9CTerminal6printfEPKcz+0x10>
 8001112:	b003      	add	sp, #12
 8001114:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001118:	b003      	add	sp, #12
 800111a:	4770      	bx	lr

0800111c <_ZN4CIMU8imu_readEv>:
 800111c:	b570      	push	{r4, r5, r6, lr}
 800111e:	4c52      	ldr	r4, [pc, #328]	; (8001268 <_ZN4CIMU8imu_readEv+0x14c>)
 8001120:	4605      	mov	r5, r0
 8001122:	4620      	mov	r0, r4
 8001124:	f000 f984 	bl	8001430 <_ZN4CI2C5StartEv>
 8001128:	4620      	mov	r0, r4
 800112a:	21d4      	movs	r1, #212	; 0xd4
 800112c:	f000 f9aa 	bl	8001484 <_ZN4CI2C5WriteEh>
 8001130:	21a8      	movs	r1, #168	; 0xa8
 8001132:	4620      	mov	r0, r4
 8001134:	f000 f9a6 	bl	8001484 <_ZN4CI2C5WriteEh>
 8001138:	4620      	mov	r0, r4
 800113a:	f000 f979 	bl	8001430 <_ZN4CI2C5StartEv>
 800113e:	4620      	mov	r0, r4
 8001140:	21d5      	movs	r1, #213	; 0xd5
 8001142:	f000 f99f 	bl	8001484 <_ZN4CI2C5WriteEh>
 8001146:	4620      	mov	r0, r4
 8001148:	2101      	movs	r1, #1
 800114a:	f000 f9e5 	bl	8001518 <_ZN4CI2C4ReadEh>
 800114e:	2101      	movs	r1, #1
 8001150:	4606      	mov	r6, r0
 8001152:	4620      	mov	r0, r4
 8001154:	f000 f9e0 	bl	8001518 <_ZN4CI2C4ReadEh>
 8001158:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800115c:	b206      	sxth	r6, r0
 800115e:	626e      	str	r6, [r5, #36]	; 0x24
 8001160:	4620      	mov	r0, r4
 8001162:	2101      	movs	r1, #1
 8001164:	f000 f9d8 	bl	8001518 <_ZN4CI2C4ReadEh>
 8001168:	2101      	movs	r1, #1
 800116a:	4606      	mov	r6, r0
 800116c:	4620      	mov	r0, r4
 800116e:	f000 f9d3 	bl	8001518 <_ZN4CI2C4ReadEh>
 8001172:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001176:	b206      	sxth	r6, r0
 8001178:	62ae      	str	r6, [r5, #40]	; 0x28
 800117a:	4620      	mov	r0, r4
 800117c:	2101      	movs	r1, #1
 800117e:	f000 f9cb 	bl	8001518 <_ZN4CI2C4ReadEh>
 8001182:	2100      	movs	r1, #0
 8001184:	4606      	mov	r6, r0
 8001186:	4620      	mov	r0, r4
 8001188:	f000 f9c6 	bl	8001518 <_ZN4CI2C4ReadEh>
 800118c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001190:	b206      	sxth	r6, r0
 8001192:	62ee      	str	r6, [r5, #44]	; 0x2c
 8001194:	4620      	mov	r0, r4
 8001196:	f000 f960 	bl	800145a <_ZN4CI2C4StopEv>
 800119a:	4620      	mov	r0, r4
 800119c:	f000 f948 	bl	8001430 <_ZN4CI2C5StartEv>
 80011a0:	4620      	mov	r0, r4
 80011a2:	213c      	movs	r1, #60	; 0x3c
 80011a4:	f000 f96e 	bl	8001484 <_ZN4CI2C5WriteEh>
 80011a8:	21a8      	movs	r1, #168	; 0xa8
 80011aa:	4620      	mov	r0, r4
 80011ac:	f000 f96a 	bl	8001484 <_ZN4CI2C5WriteEh>
 80011b0:	4620      	mov	r0, r4
 80011b2:	f000 f93d 	bl	8001430 <_ZN4CI2C5StartEv>
 80011b6:	4620      	mov	r0, r4
 80011b8:	213d      	movs	r1, #61	; 0x3d
 80011ba:	f000 f963 	bl	8001484 <_ZN4CI2C5WriteEh>
 80011be:	4620      	mov	r0, r4
 80011c0:	2101      	movs	r1, #1
 80011c2:	f000 f9a9 	bl	8001518 <_ZN4CI2C4ReadEh>
 80011c6:	2101      	movs	r1, #1
 80011c8:	4606      	mov	r6, r0
 80011ca:	4620      	mov	r0, r4
 80011cc:	f000 f9a4 	bl	8001518 <_ZN4CI2C4ReadEh>
 80011d0:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011d4:	b206      	sxth	r6, r0
 80011d6:	632e      	str	r6, [r5, #48]	; 0x30
 80011d8:	4620      	mov	r0, r4
 80011da:	2101      	movs	r1, #1
 80011dc:	f000 f99c 	bl	8001518 <_ZN4CI2C4ReadEh>
 80011e0:	2101      	movs	r1, #1
 80011e2:	4606      	mov	r6, r0
 80011e4:	4620      	mov	r0, r4
 80011e6:	f000 f997 	bl	8001518 <_ZN4CI2C4ReadEh>
 80011ea:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80011ee:	b206      	sxth	r6, r0
 80011f0:	636e      	str	r6, [r5, #52]	; 0x34
 80011f2:	4620      	mov	r0, r4
 80011f4:	2101      	movs	r1, #1
 80011f6:	f000 f98f 	bl	8001518 <_ZN4CI2C4ReadEh>
 80011fa:	2100      	movs	r1, #0
 80011fc:	4606      	mov	r6, r0
 80011fe:	4620      	mov	r0, r4
 8001200:	f000 f98a 	bl	8001518 <_ZN4CI2C4ReadEh>
 8001204:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001208:	b206      	sxth	r6, r0
 800120a:	63ae      	str	r6, [r5, #56]	; 0x38
 800120c:	4620      	mov	r0, r4
 800120e:	f000 f924 	bl	800145a <_ZN4CI2C4StopEv>
 8001212:	6aab      	ldr	r3, [r5, #40]	; 0x28
 8001214:	6868      	ldr	r0, [r5, #4]
 8001216:	682c      	ldr	r4, [r5, #0]
 8001218:	21c8      	movs	r1, #200	; 0xc8
 800121a:	1ac0      	subs	r0, r0, r3
 800121c:	68eb      	ldr	r3, [r5, #12]
 800121e:	fb90 f0f1 	sdiv	r0, r0, r1
 8001222:	4418      	add	r0, r3
 8001224:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8001226:	60e8      	str	r0, [r5, #12]
 8001228:	2264      	movs	r2, #100	; 0x64
 800122a:	435a      	muls	r2, r3
 800122c:	4350      	muls	r0, r2
 800122e:	f640 13e2 	movw	r3, #2530	; 0x9e2
 8001232:	fb90 f0f3 	sdiv	r0, r0, r3
 8001236:	61a8      	str	r0, [r5, #24]
 8001238:	6a68      	ldr	r0, [r5, #36]	; 0x24
 800123a:	1a20      	subs	r0, r4, r0
 800123c:	692c      	ldr	r4, [r5, #16]
 800123e:	fb90 f0f1 	sdiv	r0, r0, r1
 8001242:	4420      	add	r0, r4
 8001244:	6128      	str	r0, [r5, #16]
 8001246:	4350      	muls	r0, r2
 8001248:	fb90 f0f3 	sdiv	r0, r0, r3
 800124c:	61e8      	str	r0, [r5, #28]
 800124e:	68ac      	ldr	r4, [r5, #8]
 8001250:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 8001252:	1a20      	subs	r0, r4, r0
 8001254:	fb90 f1f1 	sdiv	r1, r0, r1
 8001258:	6968      	ldr	r0, [r5, #20]
 800125a:	4401      	add	r1, r0
 800125c:	434a      	muls	r2, r1
 800125e:	fb92 f3f3 	sdiv	r3, r2, r3
 8001262:	6169      	str	r1, [r5, #20]
 8001264:	622b      	str	r3, [r5, #32]
 8001266:	bd70      	pop	{r4, r5, r6, pc}
 8001268:	20000234 	.word	0x20000234

0800126c <_ZN4CIMU8imu_initEv>:
 800126c:	230a      	movs	r3, #10
 800126e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001272:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001274:	2300      	movs	r3, #0
 8001276:	4604      	mov	r4, r0
 8001278:	6003      	str	r3, [r0, #0]
 800127a:	6043      	str	r3, [r0, #4]
 800127c:	6083      	str	r3, [r0, #8]
 800127e:	60c3      	str	r3, [r0, #12]
 8001280:	6103      	str	r3, [r0, #16]
 8001282:	6143      	str	r3, [r0, #20]
 8001284:	f242 7511 	movw	r5, #10001	; 0x2711
 8001288:	3d01      	subs	r5, #1
 800128a:	d001      	beq.n	8001290 <_ZN4CIMU8imu_initEv+0x24>
 800128c:	bf00      	nop
 800128e:	e7fb      	b.n	8001288 <_ZN4CIMU8imu_initEv+0x1c>
 8001290:	4832      	ldr	r0, [pc, #200]	; (800135c <_ZN4CIMU8imu_initEv+0xf0>)
 8001292:	21d4      	movs	r1, #212	; 0xd4
 8001294:	220f      	movs	r2, #15
 8001296:	f000 f96d 	bl	8001574 <_ZN4CI2C8read_regEhh>
 800129a:	28d4      	cmp	r0, #212	; 0xd4
 800129c:	4606      	mov	r6, r0
 800129e:	d155      	bne.n	800134c <_ZN4CIMU8imu_initEv+0xe0>
 80012a0:	482e      	ldr	r0, [pc, #184]	; (800135c <_ZN4CIMU8imu_initEv+0xf0>)
 80012a2:	213c      	movs	r1, #60	; 0x3c
 80012a4:	220f      	movs	r2, #15
 80012a6:	f000 f965 	bl	8001574 <_ZN4CI2C8read_regEhh>
 80012aa:	2849      	cmp	r0, #73	; 0x49
 80012ac:	d152      	bne.n	8001354 <_ZN4CIMU8imu_initEv+0xe8>
 80012ae:	4631      	mov	r1, r6
 80012b0:	482a      	ldr	r0, [pc, #168]	; (800135c <_ZN4CIMU8imu_initEv+0xf0>)
 80012b2:	2220      	movs	r2, #32
 80012b4:	23ff      	movs	r3, #255	; 0xff
 80012b6:	f000 f917 	bl	80014e8 <_ZN4CI2C9write_regEhhh>
 80012ba:	4631      	mov	r1, r6
 80012bc:	4827      	ldr	r0, [pc, #156]	; (800135c <_ZN4CIMU8imu_initEv+0xf0>)
 80012be:	4e28      	ldr	r6, [pc, #160]	; (8001360 <_ZN4CIMU8imu_initEv+0xf4>)
 80012c0:	2223      	movs	r2, #35	; 0x23
 80012c2:	2310      	movs	r3, #16
 80012c4:	f000 f910 	bl	80014e8 <_ZN4CI2C9write_regEhhh>
 80012c8:	4824      	ldr	r0, [pc, #144]	; (800135c <_ZN4CIMU8imu_initEv+0xf0>)
 80012ca:	213c      	movs	r1, #60	; 0x3c
 80012cc:	221f      	movs	r2, #31
 80012ce:	462b      	mov	r3, r5
 80012d0:	f000 f90a 	bl	80014e8 <_ZN4CI2C9write_regEhhh>
 80012d4:	4821      	ldr	r0, [pc, #132]	; (800135c <_ZN4CIMU8imu_initEv+0xf0>)
 80012d6:	213c      	movs	r1, #60	; 0x3c
 80012d8:	2220      	movs	r2, #32
 80012da:	2367      	movs	r3, #103	; 0x67
 80012dc:	f000 f904 	bl	80014e8 <_ZN4CI2C9write_regEhhh>
 80012e0:	481e      	ldr	r0, [pc, #120]	; (800135c <_ZN4CIMU8imu_initEv+0xf0>)
 80012e2:	213c      	movs	r1, #60	; 0x3c
 80012e4:	2221      	movs	r2, #33	; 0x21
 80012e6:	462b      	mov	r3, r5
 80012e8:	f000 f8fe 	bl	80014e8 <_ZN4CI2C9write_regEhhh>
 80012ec:	3e01      	subs	r6, #1
 80012ee:	d001      	beq.n	80012f4 <_ZN4CIMU8imu_initEv+0x88>
 80012f0:	bf00      	nop
 80012f2:	e7fb      	b.n	80012ec <_ZN4CIMU8imu_initEv+0x80>
 80012f4:	4620      	mov	r0, r4
 80012f6:	f7ff ff11 	bl	800111c <_ZN4CIMU8imu_readEv>
 80012fa:	2564      	movs	r5, #100	; 0x64
 80012fc:	4637      	mov	r7, r6
 80012fe:	46b0      	mov	r8, r6
 8001300:	2365      	movs	r3, #101	; 0x65
 8001302:	3b01      	subs	r3, #1
 8001304:	d001      	beq.n	800130a <_ZN4CIMU8imu_initEv+0x9e>
 8001306:	bf00      	nop
 8001308:	e7fb      	b.n	8001302 <_ZN4CIMU8imu_initEv+0x96>
 800130a:	4620      	mov	r0, r4
 800130c:	f7ff ff06 	bl	800111c <_ZN4CIMU8imu_readEv>
 8001310:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8001312:	4498      	add	r8, r3
 8001314:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8001316:	441f      	add	r7, r3
 8001318:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800131a:	3d01      	subs	r5, #1
 800131c:	441e      	add	r6, r3
 800131e:	d1ef      	bne.n	8001300 <_ZN4CIMU8imu_initEv+0x94>
 8001320:	2364      	movs	r3, #100	; 0x64
 8001322:	fb98 f2f3 	sdiv	r2, r8, r3
 8001326:	fb97 f7f3 	sdiv	r7, r7, r3
 800132a:	fb96 f6f3 	sdiv	r6, r6, r3
 800132e:	6022      	str	r2, [r4, #0]
 8001330:	6067      	str	r7, [r4, #4]
 8001332:	60a6      	str	r6, [r4, #8]
 8001334:	6325      	str	r5, [r4, #48]	; 0x30
 8001336:	6365      	str	r5, [r4, #52]	; 0x34
 8001338:	63a5      	str	r5, [r4, #56]	; 0x38
 800133a:	6265      	str	r5, [r4, #36]	; 0x24
 800133c:	62a5      	str	r5, [r4, #40]	; 0x28
 800133e:	62e5      	str	r5, [r4, #44]	; 0x2c
 8001340:	61a5      	str	r5, [r4, #24]
 8001342:	61e5      	str	r5, [r4, #28]
 8001344:	6225      	str	r5, [r4, #32]
 8001346:	4628      	mov	r0, r5
 8001348:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800134c:	f04f 30ff 	mov.w	r0, #4294967295
 8001350:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001354:	f06f 0001 	mvn.w	r0, #1
 8001358:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800135c:	20000234 	.word	0x20000234
 8001360:	000186a1 	.word	0x000186a1

08001364 <_ZN4CI2C5delayEv>:
 8001364:	230b      	movs	r3, #11
 8001366:	3b01      	subs	r3, #1
 8001368:	d001      	beq.n	800136e <_ZN4CI2C5delayEv+0xa>
 800136a:	bf00      	nop
 800136c:	e7fb      	b.n	8001366 <_ZN4CI2C5delayEv+0x2>
 800136e:	4770      	bx	lr

08001370 <_ZN4CI2C9SetLowSDAEv>:
 8001370:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8001372:	4c0c      	ldr	r4, [pc, #48]	; (80013a4 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8001374:	2301      	movs	r3, #1
 8001376:	2203      	movs	r2, #3
 8001378:	4606      	mov	r6, r0
 800137a:	2580      	movs	r5, #128	; 0x80
 800137c:	f88d 3004 	strb.w	r3, [sp, #4]
 8001380:	f88d 3006 	strb.w	r3, [sp, #6]
 8001384:	4620      	mov	r0, r4
 8001386:	2300      	movs	r3, #0
 8001388:	4669      	mov	r1, sp
 800138a:	f88d 2005 	strb.w	r2, [sp, #5]
 800138e:	f88d 3007 	strb.w	r3, [sp, #7]
 8001392:	9500      	str	r5, [sp, #0]
 8001394:	f000 ff1e 	bl	80021d4 <GPIO_Init>
 8001398:	8525      	strh	r5, [r4, #40]	; 0x28
 800139a:	4630      	mov	r0, r6
 800139c:	f7ff ffe2 	bl	8001364 <_ZN4CI2C5delayEv>
 80013a0:	b002      	add	sp, #8
 80013a2:	bd70      	pop	{r4, r5, r6, pc}
 80013a4:	48000400 	.word	0x48000400

080013a8 <_ZN4CI2C10SetHighSDAEv>:
 80013a8:	4b05      	ldr	r3, [pc, #20]	; (80013c0 <_ZN4CI2C10SetHighSDAEv+0x18>)
 80013aa:	681a      	ldr	r2, [r3, #0]
 80013ac:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 80013b0:	601a      	str	r2, [r3, #0]
 80013b2:	681a      	ldr	r2, [r3, #0]
 80013b4:	601a      	str	r2, [r3, #0]
 80013b6:	2280      	movs	r2, #128	; 0x80
 80013b8:	619a      	str	r2, [r3, #24]
 80013ba:	f7ff bfd3 	b.w	8001364 <_ZN4CI2C5delayEv>
 80013be:	bf00      	nop
 80013c0:	48000400 	.word	0x48000400

080013c4 <_ZN4CI2C9SetLowSCLEv>:
 80013c4:	4b02      	ldr	r3, [pc, #8]	; (80013d0 <_ZN4CI2C9SetLowSCLEv+0xc>)
 80013c6:	2240      	movs	r2, #64	; 0x40
 80013c8:	851a      	strh	r2, [r3, #40]	; 0x28
 80013ca:	f7ff bfcb 	b.w	8001364 <_ZN4CI2C5delayEv>
 80013ce:	bf00      	nop
 80013d0:	48000400 	.word	0x48000400

080013d4 <_ZN4CI2C10SetHighSCLEv>:
 80013d4:	4b02      	ldr	r3, [pc, #8]	; (80013e0 <_ZN4CI2C10SetHighSCLEv+0xc>)
 80013d6:	2240      	movs	r2, #64	; 0x40
 80013d8:	619a      	str	r2, [r3, #24]
 80013da:	f7ff bfc3 	b.w	8001364 <_ZN4CI2C5delayEv>
 80013de:	bf00      	nop
 80013e0:	48000400 	.word	0x48000400

080013e4 <_ZN4CI2C4initEv>:
 80013e4:	b513      	push	{r0, r1, r4, lr}
 80013e6:	4604      	mov	r4, r0
 80013e8:	2101      	movs	r1, #1
 80013ea:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80013ee:	f001 fa1d 	bl	800282c <RCC_AHBPeriphClockCmd>
 80013f2:	23c0      	movs	r3, #192	; 0xc0
 80013f4:	9300      	str	r3, [sp, #0]
 80013f6:	2301      	movs	r3, #1
 80013f8:	2203      	movs	r2, #3
 80013fa:	4669      	mov	r1, sp
 80013fc:	f88d 3004 	strb.w	r3, [sp, #4]
 8001400:	f88d 3006 	strb.w	r3, [sp, #6]
 8001404:	4809      	ldr	r0, [pc, #36]	; (800142c <_ZN4CI2C4initEv+0x48>)
 8001406:	f88d 2005 	strb.w	r2, [sp, #5]
 800140a:	2300      	movs	r3, #0
 800140c:	f88d 3007 	strb.w	r3, [sp, #7]
 8001410:	f000 fee0 	bl	80021d4 <GPIO_Init>
 8001414:	4620      	mov	r0, r4
 8001416:	f7ff ffdd 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 800141a:	4620      	mov	r0, r4
 800141c:	f7ff ffa8 	bl	8001370 <_ZN4CI2C9SetLowSDAEv>
 8001420:	4620      	mov	r0, r4
 8001422:	f7ff ffc1 	bl	80013a8 <_ZN4CI2C10SetHighSDAEv>
 8001426:	b002      	add	sp, #8
 8001428:	bd10      	pop	{r4, pc}
 800142a:	bf00      	nop
 800142c:	48000400 	.word	0x48000400

08001430 <_ZN4CI2C5StartEv>:
 8001430:	b510      	push	{r4, lr}
 8001432:	4604      	mov	r4, r0
 8001434:	f7ff ffce 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 8001438:	4620      	mov	r0, r4
 800143a:	f7ff ffb5 	bl	80013a8 <_ZN4CI2C10SetHighSDAEv>
 800143e:	4620      	mov	r0, r4
 8001440:	f7ff ffc8 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 8001444:	4620      	mov	r0, r4
 8001446:	f7ff ff93 	bl	8001370 <_ZN4CI2C9SetLowSDAEv>
 800144a:	4620      	mov	r0, r4
 800144c:	f7ff ffba 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 8001450:	4620      	mov	r0, r4
 8001452:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001456:	f7ff bfa7 	b.w	80013a8 <_ZN4CI2C10SetHighSDAEv>

0800145a <_ZN4CI2C4StopEv>:
 800145a:	b510      	push	{r4, lr}
 800145c:	4604      	mov	r4, r0
 800145e:	f7ff ffb1 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 8001462:	4620      	mov	r0, r4
 8001464:	f7ff ff84 	bl	8001370 <_ZN4CI2C9SetLowSDAEv>
 8001468:	4620      	mov	r0, r4
 800146a:	f7ff ffb3 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 800146e:	4620      	mov	r0, r4
 8001470:	f7ff ff7e 	bl	8001370 <_ZN4CI2C9SetLowSDAEv>
 8001474:	4620      	mov	r0, r4
 8001476:	f7ff ffad 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 800147a:	4620      	mov	r0, r4
 800147c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001480:	f7ff bf92 	b.w	80013a8 <_ZN4CI2C10SetHighSDAEv>

08001484 <_ZN4CI2C5WriteEh>:
 8001484:	b570      	push	{r4, r5, r6, lr}
 8001486:	4604      	mov	r4, r0
 8001488:	460d      	mov	r5, r1
 800148a:	2608      	movs	r6, #8
 800148c:	4620      	mov	r0, r4
 800148e:	f7ff ff99 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 8001492:	062b      	lsls	r3, r5, #24
 8001494:	4620      	mov	r0, r4
 8001496:	d502      	bpl.n	800149e <_ZN4CI2C5WriteEh+0x1a>
 8001498:	f7ff ff86 	bl	80013a8 <_ZN4CI2C10SetHighSDAEv>
 800149c:	e001      	b.n	80014a2 <_ZN4CI2C5WriteEh+0x1e>
 800149e:	f7ff ff67 	bl	8001370 <_ZN4CI2C9SetLowSDAEv>
 80014a2:	4620      	mov	r0, r4
 80014a4:	3e01      	subs	r6, #1
 80014a6:	f7ff ff95 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 80014aa:	006d      	lsls	r5, r5, #1
 80014ac:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 80014b0:	b2ed      	uxtb	r5, r5
 80014b2:	d1eb      	bne.n	800148c <_ZN4CI2C5WriteEh+0x8>
 80014b4:	4620      	mov	r0, r4
 80014b6:	f7ff ff85 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 80014ba:	4620      	mov	r0, r4
 80014bc:	f7ff ff74 	bl	80013a8 <_ZN4CI2C10SetHighSDAEv>
 80014c0:	4620      	mov	r0, r4
 80014c2:	f7ff ff87 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 80014c6:	4b07      	ldr	r3, [pc, #28]	; (80014e4 <_ZN4CI2C5WriteEh+0x60>)
 80014c8:	8a1d      	ldrh	r5, [r3, #16]
 80014ca:	4620      	mov	r0, r4
 80014cc:	f7ff ff7a 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 80014d0:	b2ad      	uxth	r5, r5
 80014d2:	4620      	mov	r0, r4
 80014d4:	f7ff ff46 	bl	8001364 <_ZN4CI2C5delayEv>
 80014d8:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 80014dc:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80014e0:	bd70      	pop	{r4, r5, r6, pc}
 80014e2:	bf00      	nop
 80014e4:	48000400 	.word	0x48000400

080014e8 <_ZN4CI2C9write_regEhhh>:
 80014e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014ea:	4604      	mov	r4, r0
 80014ec:	460e      	mov	r6, r1
 80014ee:	4615      	mov	r5, r2
 80014f0:	461f      	mov	r7, r3
 80014f2:	f7ff ff9d 	bl	8001430 <_ZN4CI2C5StartEv>
 80014f6:	4631      	mov	r1, r6
 80014f8:	4620      	mov	r0, r4
 80014fa:	f7ff ffc3 	bl	8001484 <_ZN4CI2C5WriteEh>
 80014fe:	4629      	mov	r1, r5
 8001500:	4620      	mov	r0, r4
 8001502:	f7ff ffbf 	bl	8001484 <_ZN4CI2C5WriteEh>
 8001506:	4620      	mov	r0, r4
 8001508:	4639      	mov	r1, r7
 800150a:	f7ff ffbb 	bl	8001484 <_ZN4CI2C5WriteEh>
 800150e:	4620      	mov	r0, r4
 8001510:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001514:	f7ff bfa1 	b.w	800145a <_ZN4CI2C4StopEv>

08001518 <_ZN4CI2C4ReadEh>:
 8001518:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800151a:	4604      	mov	r4, r0
 800151c:	460f      	mov	r7, r1
 800151e:	f7ff ff51 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 8001522:	2608      	movs	r6, #8
 8001524:	2500      	movs	r5, #0
 8001526:	4620      	mov	r0, r4
 8001528:	f7ff ff54 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 800152c:	4b10      	ldr	r3, [pc, #64]	; (8001570 <_ZN4CI2C4ReadEh+0x58>)
 800152e:	8a1b      	ldrh	r3, [r3, #16]
 8001530:	006d      	lsls	r5, r5, #1
 8001532:	061b      	lsls	r3, r3, #24
 8001534:	b2ed      	uxtb	r5, r5
 8001536:	4620      	mov	r0, r4
 8001538:	f106 36ff 	add.w	r6, r6, #4294967295
 800153c:	bf48      	it	mi
 800153e:	f045 0501 	orrmi.w	r5, r5, #1
 8001542:	f7ff ff3f 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 8001546:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 800154a:	d1ec      	bne.n	8001526 <_ZN4CI2C4ReadEh+0xe>
 800154c:	4620      	mov	r0, r4
 800154e:	b117      	cbz	r7, 8001556 <_ZN4CI2C4ReadEh+0x3e>
 8001550:	f7ff ff0e 	bl	8001370 <_ZN4CI2C9SetLowSDAEv>
 8001554:	e001      	b.n	800155a <_ZN4CI2C4ReadEh+0x42>
 8001556:	f7ff ff27 	bl	80013a8 <_ZN4CI2C10SetHighSDAEv>
 800155a:	4620      	mov	r0, r4
 800155c:	f7ff ff3a 	bl	80013d4 <_ZN4CI2C10SetHighSCLEv>
 8001560:	4620      	mov	r0, r4
 8001562:	f7ff ff2f 	bl	80013c4 <_ZN4CI2C9SetLowSCLEv>
 8001566:	4620      	mov	r0, r4
 8001568:	f7ff ff1e 	bl	80013a8 <_ZN4CI2C10SetHighSDAEv>
 800156c:	4628      	mov	r0, r5
 800156e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001570:	48000400 	.word	0x48000400

08001574 <_ZN4CI2C8read_regEhh>:
 8001574:	b570      	push	{r4, r5, r6, lr}
 8001576:	4604      	mov	r4, r0
 8001578:	460d      	mov	r5, r1
 800157a:	4616      	mov	r6, r2
 800157c:	f7ff ff58 	bl	8001430 <_ZN4CI2C5StartEv>
 8001580:	4629      	mov	r1, r5
 8001582:	4620      	mov	r0, r4
 8001584:	f7ff ff7e 	bl	8001484 <_ZN4CI2C5WriteEh>
 8001588:	4631      	mov	r1, r6
 800158a:	4620      	mov	r0, r4
 800158c:	f7ff ff7a 	bl	8001484 <_ZN4CI2C5WriteEh>
 8001590:	4620      	mov	r0, r4
 8001592:	f7ff ff4d 	bl	8001430 <_ZN4CI2C5StartEv>
 8001596:	f045 0101 	orr.w	r1, r5, #1
 800159a:	4620      	mov	r0, r4
 800159c:	f7ff ff72 	bl	8001484 <_ZN4CI2C5WriteEh>
 80015a0:	2100      	movs	r1, #0
 80015a2:	4620      	mov	r0, r4
 80015a4:	f7ff ffb8 	bl	8001518 <_ZN4CI2C4ReadEh>
 80015a8:	4605      	mov	r5, r0
 80015aa:	4620      	mov	r0, r4
 80015ac:	f7ff ff55 	bl	800145a <_ZN4CI2C4StopEv>
 80015b0:	4628      	mov	r0, r5
 80015b2:	bd70      	pop	{r4, r5, r6, pc}

080015b4 <_ZN4CRGB8rgb_readEh>:
 80015b4:	b570      	push	{r4, r5, r6, lr}
 80015b6:	4604      	mov	r4, r0
 80015b8:	460e      	mov	r6, r1
 80015ba:	f7ff f93b 	bl	8000834 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80015be:	4620      	mov	r0, r4
 80015c0:	2172      	movs	r1, #114	; 0x72
 80015c2:	f7ff f961 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80015c6:	21b4      	movs	r1, #180	; 0xb4
 80015c8:	4620      	mov	r0, r4
 80015ca:	f7ff f95d 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80015ce:	4620      	mov	r0, r4
 80015d0:	f7ff f930 	bl	8000834 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80015d4:	1d25      	adds	r5, r4, #4
 80015d6:	4620      	mov	r0, r4
 80015d8:	2173      	movs	r1, #115	; 0x73
 80015da:	f7ff f955 	bl	8000888 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80015de:	4620      	mov	r0, r4
 80015e0:	2101      	movs	r1, #1
 80015e2:	462a      	mov	r2, r5
 80015e4:	f7ff f992 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80015e8:	2300      	movs	r3, #0
 80015ea:	18e2      	adds	r2, r4, r3
 80015ec:	18d1      	adds	r1, r2, r3
 80015ee:	3301      	adds	r3, #1
 80015f0:	7912      	ldrb	r2, [r2, #4]
 80015f2:	f8a1 2044 	strh.w	r2, [r1, #68]	; 0x44
 80015f6:	2b09      	cmp	r3, #9
 80015f8:	d1f7      	bne.n	80015ea <_ZN4CRGB8rgb_readEh+0x36>
 80015fa:	462a      	mov	r2, r5
 80015fc:	4620      	mov	r0, r4
 80015fe:	2101      	movs	r1, #1
 8001600:	f7ff f984 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001604:	4622      	mov	r2, r4
 8001606:	2300      	movs	r3, #0
 8001608:	18e1      	adds	r1, r4, r3
 800160a:	3301      	adds	r3, #1
 800160c:	7908      	ldrb	r0, [r1, #4]
 800160e:	f8b2 1044 	ldrh.w	r1, [r2, #68]	; 0x44
 8001612:	2b09      	cmp	r3, #9
 8001614:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001618:	f8a2 1044 	strh.w	r1, [r2, #68]	; 0x44
 800161c:	f102 0202 	add.w	r2, r2, #2
 8001620:	d1f2      	bne.n	8001608 <_ZN4CRGB8rgb_readEh+0x54>
 8001622:	4620      	mov	r0, r4
 8001624:	2101      	movs	r1, #1
 8001626:	462a      	mov	r2, r5
 8001628:	f7ff f970 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800162c:	2300      	movs	r3, #0
 800162e:	18e2      	adds	r2, r4, r3
 8001630:	18d1      	adds	r1, r2, r3
 8001632:	3301      	adds	r3, #1
 8001634:	7912      	ldrb	r2, [r2, #4]
 8001636:	81ca      	strh	r2, [r1, #14]
 8001638:	2b09      	cmp	r3, #9
 800163a:	d1f8      	bne.n	800162e <_ZN4CRGB8rgb_readEh+0x7a>
 800163c:	462a      	mov	r2, r5
 800163e:	4620      	mov	r0, r4
 8001640:	2101      	movs	r1, #1
 8001642:	f7ff f963 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001646:	4622      	mov	r2, r4
 8001648:	2300      	movs	r3, #0
 800164a:	18e1      	adds	r1, r4, r3
 800164c:	3301      	adds	r3, #1
 800164e:	7908      	ldrb	r0, [r1, #4]
 8001650:	89d1      	ldrh	r1, [r2, #14]
 8001652:	2b09      	cmp	r3, #9
 8001654:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001658:	81d1      	strh	r1, [r2, #14]
 800165a:	f102 0202 	add.w	r2, r2, #2
 800165e:	d1f4      	bne.n	800164a <_ZN4CRGB8rgb_readEh+0x96>
 8001660:	4620      	mov	r0, r4
 8001662:	2101      	movs	r1, #1
 8001664:	462a      	mov	r2, r5
 8001666:	f7ff f951 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800166a:	2300      	movs	r3, #0
 800166c:	18e2      	adds	r2, r4, r3
 800166e:	18d1      	adds	r1, r2, r3
 8001670:	3301      	adds	r3, #1
 8001672:	7912      	ldrb	r2, [r2, #4]
 8001674:	840a      	strh	r2, [r1, #32]
 8001676:	2b09      	cmp	r3, #9
 8001678:	d1f8      	bne.n	800166c <_ZN4CRGB8rgb_readEh+0xb8>
 800167a:	462a      	mov	r2, r5
 800167c:	4620      	mov	r0, r4
 800167e:	2101      	movs	r1, #1
 8001680:	f7ff f944 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001684:	4622      	mov	r2, r4
 8001686:	2300      	movs	r3, #0
 8001688:	18e1      	adds	r1, r4, r3
 800168a:	3301      	adds	r3, #1
 800168c:	7908      	ldrb	r0, [r1, #4]
 800168e:	8c11      	ldrh	r1, [r2, #32]
 8001690:	2b09      	cmp	r3, #9
 8001692:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001696:	8411      	strh	r1, [r2, #32]
 8001698:	f102 0202 	add.w	r2, r2, #2
 800169c:	d1f4      	bne.n	8001688 <_ZN4CRGB8rgb_readEh+0xd4>
 800169e:	4620      	mov	r0, r4
 80016a0:	2101      	movs	r1, #1
 80016a2:	462a      	mov	r2, r5
 80016a4:	f7ff f932 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016a8:	2300      	movs	r3, #0
 80016aa:	18e2      	adds	r2, r4, r3
 80016ac:	18d1      	adds	r1, r2, r3
 80016ae:	3301      	adds	r3, #1
 80016b0:	7912      	ldrb	r2, [r2, #4]
 80016b2:	864a      	strh	r2, [r1, #50]	; 0x32
 80016b4:	2b09      	cmp	r3, #9
 80016b6:	d1f8      	bne.n	80016aa <_ZN4CRGB8rgb_readEh+0xf6>
 80016b8:	462a      	mov	r2, r5
 80016ba:	4620      	mov	r0, r4
 80016bc:	2101      	movs	r1, #1
 80016be:	f7ff f925 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016c2:	4622      	mov	r2, r4
 80016c4:	2300      	movs	r3, #0
 80016c6:	18e1      	adds	r1, r4, r3
 80016c8:	3301      	adds	r3, #1
 80016ca:	7908      	ldrb	r0, [r1, #4]
 80016cc:	8e51      	ldrh	r1, [r2, #50]	; 0x32
 80016ce:	2b09      	cmp	r3, #9
 80016d0:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 80016d4:	8651      	strh	r1, [r2, #50]	; 0x32
 80016d6:	f102 0202 	add.w	r2, r2, #2
 80016da:	d1f4      	bne.n	80016c6 <_ZN4CRGB8rgb_readEh+0x112>
 80016dc:	4620      	mov	r0, r4
 80016de:	2101      	movs	r1, #1
 80016e0:	462a      	mov	r2, r5
 80016e2:	f7ff f913 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80016e6:	2300      	movs	r3, #0
 80016e8:	18e2      	adds	r2, r4, r3
 80016ea:	18d1      	adds	r1, r2, r3
 80016ec:	3301      	adds	r3, #1
 80016ee:	7912      	ldrb	r2, [r2, #4]
 80016f0:	f8a1 2056 	strh.w	r2, [r1, #86]	; 0x56
 80016f4:	2b09      	cmp	r3, #9
 80016f6:	d1f7      	bne.n	80016e8 <_ZN4CRGB8rgb_readEh+0x134>
 80016f8:	462a      	mov	r2, r5
 80016fa:	4620      	mov	r0, r4
 80016fc:	2100      	movs	r1, #0
 80016fe:	f7ff f905 	bl	800090c <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001702:	4622      	mov	r2, r4
 8001704:	2300      	movs	r3, #0
 8001706:	18e1      	adds	r1, r4, r3
 8001708:	3301      	adds	r3, #1
 800170a:	7908      	ldrb	r0, [r1, #4]
 800170c:	f8b2 1056 	ldrh.w	r1, [r2, #86]	; 0x56
 8001710:	2b09      	cmp	r3, #9
 8001712:	ea41 2100 	orr.w	r1, r1, r0, lsl #8
 8001716:	f8a2 1056 	strh.w	r1, [r2, #86]	; 0x56
 800171a:	f102 0202 	add.w	r2, r2, #2
 800171e:	d1f2      	bne.n	8001706 <_ZN4CRGB8rgb_readEh+0x152>
 8001720:	4620      	mov	r0, r4
 8001722:	f7ff f89c 	bl	800085e <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8001726:	b336      	cbz	r6, 8001776 <_ZN4CRGB8rgb_readEh+0x1c2>
 8001728:	2300      	movs	r3, #0
 800172a:	89e1      	ldrh	r1, [r4, #14]
 800172c:	f8b4 209e 	ldrh.w	r2, [r4, #158]	; 0x9e
 8001730:	440a      	add	r2, r1
 8001732:	f8a4 209e 	strh.w	r2, [r4, #158]	; 0x9e
 8001736:	8c21      	ldrh	r1, [r4, #32]
 8001738:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 800173c:	440a      	add	r2, r1
 800173e:	f8a4 20b0 	strh.w	r2, [r4, #176]	; 0xb0
 8001742:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 8001744:	f8b4 20c2 	ldrh.w	r2, [r4, #194]	; 0xc2
 8001748:	440a      	add	r2, r1
 800174a:	f8a4 20c2 	strh.w	r2, [r4, #194]	; 0xc2
 800174e:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
 8001752:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 8001756:	440a      	add	r2, r1
 8001758:	f8a4 20e6 	strh.w	r2, [r4, #230]	; 0xe6
 800175c:	f8b4 1044 	ldrh.w	r1, [r4, #68]	; 0x44
 8001760:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 8001764:	3301      	adds	r3, #1
 8001766:	440a      	add	r2, r1
 8001768:	2b09      	cmp	r3, #9
 800176a:	f8a4 20d4 	strh.w	r2, [r4, #212]	; 0xd4
 800176e:	f104 0402 	add.w	r4, r4, #2
 8001772:	d1da      	bne.n	800172a <_ZN4CRGB8rgb_readEh+0x176>
 8001774:	bd70      	pop	{r4, r5, r6, pc}
 8001776:	b672      	cpsid	i
 8001778:	89e0      	ldrh	r0, [r4, #14]
 800177a:	f8b4 309e 	ldrh.w	r3, [r4, #158]	; 0x9e
 800177e:	8c21      	ldrh	r1, [r4, #32]
 8001780:	8e62      	ldrh	r2, [r4, #50]	; 0x32
 8001782:	f8b4 5056 	ldrh.w	r5, [r4, #86]	; 0x56
 8001786:	1ac0      	subs	r0, r0, r3
 8001788:	f8b4 30b0 	ldrh.w	r3, [r4, #176]	; 0xb0
 800178c:	1ac9      	subs	r1, r1, r3
 800178e:	f8b4 30c2 	ldrh.w	r3, [r4, #194]	; 0xc2
 8001792:	1ad3      	subs	r3, r2, r3
 8001794:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 8001798:	1aaa      	subs	r2, r5, r2
 800179a:	f8a4 2056 	strh.w	r2, [r4, #86]	; 0x56
 800179e:	f8b4 5044 	ldrh.w	r5, [r4, #68]	; 0x44
 80017a2:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 80017a6:	b280      	uxth	r0, r0
 80017a8:	b289      	uxth	r1, r1
 80017aa:	b29b      	uxth	r3, r3
 80017ac:	1aaa      	subs	r2, r5, r2
 80017ae:	81e0      	strh	r0, [r4, #14]
 80017b0:	8421      	strh	r1, [r4, #32]
 80017b2:	8663      	strh	r3, [r4, #50]	; 0x32
 80017b4:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 80017b8:	b662      	cpsie	i
 80017ba:	b200      	sxth	r0, r0
 80017bc:	b209      	sxth	r1, r1
 80017be:	1842      	adds	r2, r0, r1
 80017c0:	b21b      	sxth	r3, r3
 80017c2:	18d2      	adds	r2, r2, r3
 80017c4:	d011      	beq.n	80017ea <_ZN4CRGB8rgb_readEh+0x236>
 80017c6:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 80017ca:	ebc1 2101 	rsb	r1, r1, r1, lsl #8
 80017ce:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 80017d2:	fb90 f0f2 	sdiv	r0, r0, r2
 80017d6:	fb91 f1f2 	sdiv	r1, r1, r2
 80017da:	fb93 f2f2 	sdiv	r2, r3, r2
 80017de:	f8a4 0068 	strh.w	r0, [r4, #104]	; 0x68
 80017e2:	f8a4 107a 	strh.w	r1, [r4, #122]	; 0x7a
 80017e6:	f8a4 208c 	strh.w	r2, [r4, #140]	; 0x8c
 80017ea:	3601      	adds	r6, #1
 80017ec:	2e09      	cmp	r6, #9
 80017ee:	f104 0402 	add.w	r4, r4, #2
 80017f2:	d1c0      	bne.n	8001776 <_ZN4CRGB8rgb_readEh+0x1c2>
 80017f4:	bd70      	pop	{r4, r5, r6, pc}
	...

080017f8 <_ZN4CRGB8rgb_initEv>:
 80017f8:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 80017fa:	4604      	mov	r4, r0
 80017fc:	4602      	mov	r2, r0
 80017fe:	2509      	movs	r5, #9
 8001800:	2000      	movs	r0, #0
 8001802:	3d01      	subs	r5, #1
 8001804:	81d0      	strh	r0, [r2, #14]
 8001806:	8410      	strh	r0, [r2, #32]
 8001808:	8650      	strh	r0, [r2, #50]	; 0x32
 800180a:	f8a2 0056 	strh.w	r0, [r2, #86]	; 0x56
 800180e:	f8a2 0044 	strh.w	r0, [r2, #68]	; 0x44
 8001812:	f8a2 009e 	strh.w	r0, [r2, #158]	; 0x9e
 8001816:	f8a2 00b0 	strh.w	r0, [r2, #176]	; 0xb0
 800181a:	f8a2 00c2 	strh.w	r0, [r2, #194]	; 0xc2
 800181e:	f8a2 00e6 	strh.w	r0, [r2, #230]	; 0xe6
 8001822:	f8a2 00d4 	strh.w	r0, [r2, #212]	; 0xd4
 8001826:	f8a2 0068 	strh.w	r0, [r2, #104]	; 0x68
 800182a:	f8a2 007a 	strh.w	r0, [r2, #122]	; 0x7a
 800182e:	f8a2 008c 	strh.w	r0, [r2, #140]	; 0x8c
 8001832:	f102 0202 	add.w	r2, r2, #2
 8001836:	d1e3      	bne.n	8001800 <_ZN4CRGB8rgb_initEv+0x8>
 8001838:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800183c:	2208      	movs	r2, #8
 800183e:	851a      	strh	r2, [r3, #40]	; 0x28
 8001840:	4620      	mov	r0, r4
 8001842:	f7ff f8f3 	bl	8000a2c <_ZN8CRGB_I2C12rgb_i2c_initEv>
 8001846:	4620      	mov	r0, r4
 8001848:	2172      	movs	r1, #114	; 0x72
 800184a:	2281      	movs	r2, #129	; 0x81
 800184c:	23ff      	movs	r3, #255	; 0xff
 800184e:	f7ff f844 	bl	80008da <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001852:	4620      	mov	r0, r4
 8001854:	2172      	movs	r1, #114	; 0x72
 8001856:	2283      	movs	r2, #131	; 0x83
 8001858:	23ff      	movs	r3, #255	; 0xff
 800185a:	f7ff f83e 	bl	80008da <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800185e:	4620      	mov	r0, r4
 8001860:	2172      	movs	r1, #114	; 0x72
 8001862:	228d      	movs	r2, #141	; 0x8d
 8001864:	462b      	mov	r3, r5
 8001866:	f7ff f838 	bl	80008da <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800186a:	2172      	movs	r1, #114	; 0x72
 800186c:	2280      	movs	r2, #128	; 0x80
 800186e:	2303      	movs	r3, #3
 8001870:	4620      	mov	r0, r4
 8001872:	f7ff f832 	bl	80008da <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001876:	4620      	mov	r0, r4
 8001878:	f7ff f924 	bl	8000ac4 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>
 800187c:	228f      	movs	r2, #143	; 0x8f
 800187e:	2323      	movs	r3, #35	; 0x23
 8001880:	2172      	movs	r1, #114	; 0x72
 8001882:	4620      	mov	r0, r4
 8001884:	f7ff f829 	bl	80008da <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001888:	4620      	mov	r0, r4
 800188a:	f7ff f91e 	bl	8000aca <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>
 800188e:	ae01      	add	r6, sp, #4
 8001890:	4620      	mov	r0, r4
 8001892:	4629      	mov	r1, r5
 8001894:	f7ff fe8e 	bl	80015b4 <_ZN4CRGB8rgb_readEh>
 8001898:	2292      	movs	r2, #146	; 0x92
 800189a:	4620      	mov	r0, r4
 800189c:	2172      	movs	r1, #114	; 0x72
 800189e:	4633      	mov	r3, r6
 80018a0:	f7ff f8a2 	bl	80009e8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 80018a4:	462a      	mov	r2, r5
 80018a6:	5cb3      	ldrb	r3, [r6, r2]
 80018a8:	2b69      	cmp	r3, #105	; 0x69
 80018aa:	d002      	beq.n	80018b2 <_ZN4CRGB8rgb_initEv+0xba>
 80018ac:	2301      	movs	r3, #1
 80018ae:	4093      	lsls	r3, r2
 80018b0:	431d      	orrs	r5, r3
 80018b2:	3201      	adds	r2, #1
 80018b4:	2a09      	cmp	r2, #9
 80018b6:	d1f6      	bne.n	80018a6 <_ZN4CRGB8rgb_initEv+0xae>
 80018b8:	2604      	movs	r6, #4
 80018ba:	4620      	mov	r0, r4
 80018bc:	2101      	movs	r1, #1
 80018be:	f7ff fe79 	bl	80015b4 <_ZN4CRGB8rgb_readEh>
 80018c2:	3e01      	subs	r6, #1
 80018c4:	d1f9      	bne.n	80018ba <_ZN4CRGB8rgb_initEv+0xc2>
 80018c6:	4622      	mov	r2, r4
 80018c8:	2109      	movs	r1, #9
 80018ca:	f9b2 309e 	ldrsh.w	r3, [r2, #158]	; 0x9e
 80018ce:	089b      	lsrs	r3, r3, #2
 80018d0:	f8a2 309e 	strh.w	r3, [r2, #158]	; 0x9e
 80018d4:	f9b2 30b0 	ldrsh.w	r3, [r2, #176]	; 0xb0
 80018d8:	089b      	lsrs	r3, r3, #2
 80018da:	f8a2 30b0 	strh.w	r3, [r2, #176]	; 0xb0
 80018de:	f9b2 30c2 	ldrsh.w	r3, [r2, #194]	; 0xc2
 80018e2:	089b      	lsrs	r3, r3, #2
 80018e4:	f8a2 30c2 	strh.w	r3, [r2, #194]	; 0xc2
 80018e8:	f9b2 30e6 	ldrsh.w	r3, [r2, #230]	; 0xe6
 80018ec:	089b      	lsrs	r3, r3, #2
 80018ee:	f8a2 30e6 	strh.w	r3, [r2, #230]	; 0xe6
 80018f2:	f9b2 30d4 	ldrsh.w	r3, [r2, #212]	; 0xd4
 80018f6:	3901      	subs	r1, #1
 80018f8:	ea4f 0393 	mov.w	r3, r3, lsr #2
 80018fc:	f8a2 30d4 	strh.w	r3, [r2, #212]	; 0xd4
 8001900:	f102 0202 	add.w	r2, r2, #2
 8001904:	d1e1      	bne.n	80018ca <_ZN4CRGB8rgb_initEv+0xd2>
 8001906:	4620      	mov	r0, r4
 8001908:	f7ff fe54 	bl	80015b4 <_ZN4CRGB8rgb_readEh>
 800190c:	b115      	cbz	r5, 8001914 <_ZN4CRGB8rgb_initEv+0x11c>
 800190e:	4803      	ldr	r0, [pc, #12]	; (800191c <_ZN4CRGB8rgb_initEv+0x124>)
 8001910:	1b40      	subs	r0, r0, r5
 8001912:	e000      	b.n	8001916 <_ZN4CRGB8rgb_initEv+0x11e>
 8001914:	4628      	mov	r0, r5
 8001916:	b004      	add	sp, #16
 8001918:	bd70      	pop	{r4, r5, r6, pc}
 800191a:	bf00      	nop
 800191c:	fffffc18 	.word	0xfffffc18

08001920 <_ZN4CRGB14get_rgb_resultEv>:
 8001920:	300e      	adds	r0, #14
 8001922:	4770      	bx	lr

08001924 <_ZN10MathVectorILj9EE4initEv>:
 8001924:	2300      	movs	r3, #0
 8001926:	18c2      	adds	r2, r0, r3
 8001928:	3304      	adds	r3, #4
 800192a:	2100      	movs	r1, #0
 800192c:	2b24      	cmp	r3, #36	; 0x24
 800192e:	6011      	str	r1, [r2, #0]
 8001930:	d1f9      	bne.n	8001926 <_ZN10MathVectorILj9EE4initEv+0x2>
 8001932:	4770      	bx	lr

08001934 <_ZN10MathVectorILj3EE3mixERS0_f>:
 8001934:	2300      	movs	r3, #0
 8001936:	18ca      	adds	r2, r1, r3
 8001938:	edd2 7a00 	vldr	s15, [r2]
 800193c:	ed90 7a00 	vldr	s14, [r0]
 8001940:	eef7 6a00 	vmov.f32	s13, #112	; 0x70
 8001944:	ee76 6ac0 	vsub.f32	s13, s13, s0
 8001948:	ee60 7a27 	vmul.f32	s15, s0, s15
 800194c:	3304      	adds	r3, #4
 800194e:	eee6 7a87 	vfma.f32	s15, s13, s14
 8001952:	2b0c      	cmp	r3, #12
 8001954:	ece0 7a01 	vstmia	r0!, {s15}
 8001958:	d1ed      	bne.n	8001936 <_ZN10MathVectorILj3EE3mixERS0_f+0x2>
 800195a:	4770      	bx	lr

0800195c <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>:
 800195c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800195e:	ed9f 7a1a 	vldr	s14, [pc, #104]	; 80019c8 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x6c>
 8001962:	f8d0 6600 	ldr.w	r6, [r0, #1536]	; 0x600
 8001966:	2500      	movs	r5, #0
 8001968:	462b      	mov	r3, r5
 800196a:	42b3      	cmp	r3, r6
 800196c:	d021      	beq.n	80019b2 <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x56>
 800196e:	f04f 0c24 	mov.w	ip, #36	; 0x24
 8001972:	eddf 7a16 	vldr	s15, [pc, #88]	; 80019cc <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x70>
 8001976:	fb0c 0c03 	mla	ip, ip, r3, r0
 800197a:	2400      	movs	r4, #0
 800197c:	eb01 0e04 	add.w	lr, r1, r4
 8001980:	eb0c 0704 	add.w	r7, ip, r4
 8001984:	ed9e 6a00 	vldr	s12, [lr]
 8001988:	edd7 6a00 	vldr	s13, [r7]
 800198c:	3404      	adds	r4, #4
 800198e:	ee76 6a66 	vsub.f32	s13, s12, s13
 8001992:	2c24      	cmp	r4, #36	; 0x24
 8001994:	eee6 7aa6 	vfma.f32	s15, s13, s13
 8001998:	d1f0      	bne.n	800197c <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0x20>
 800199a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800199e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80019a2:	bf54      	ite	pl
 80019a4:	eef0 7a47 	vmovpl.f32	s15, s14
 80019a8:	461d      	movmi	r5, r3
 80019aa:	eeb0 7a67 	vmov.f32	s14, s15
 80019ae:	3301      	adds	r3, #1
 80019b0:	e7db      	b.n	800196a <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE+0xe>
 80019b2:	f500 6390 	add.w	r3, r0, #1152	; 0x480
 80019b6:	210c      	movs	r1, #12
 80019b8:	4610      	mov	r0, r2
 80019ba:	fb01 3105 	mla	r1, r1, r5, r3
 80019be:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 80019c2:	f7ff ffb7 	bl	8001934 <_ZN10MathVectorILj3EE3mixERS0_f>
 80019c6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80019c8:	4cbebc20 	.word	0x4cbebc20
 80019cc:	00000000 	.word	0x00000000

080019d0 <_ZN21CLearningLineFollower3runEv>:
 80019d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80019d4:	ed2d 8b06 	vpush	{d8-d10}
 80019d8:	2310      	movs	r3, #16
 80019da:	f200 6ba4 	addw	fp, r0, #1700	; 0x6a4
 80019de:	f8c0 36a0 	str.w	r3, [r0, #1696]	; 0x6a0
 80019e2:	f100 07a0 	add.w	r7, r0, #160	; 0xa0
 80019e6:	4bac      	ldr	r3, [pc, #688]	; (8001c98 <_ZN21CLearningLineFollower3runEv+0x2c8>)
 80019e8:	f8cb 3000 	str.w	r3, [fp]
 80019ec:	b083      	sub	sp, #12
 80019ee:	4604      	mov	r4, r0
 80019f0:	f500 69a4 	add.w	r9, r0, #1312	; 0x520
 80019f4:	463d      	mov	r5, r7
 80019f6:	f105 0624 	add.w	r6, r5, #36	; 0x24
 80019fa:	48a8      	ldr	r0, [pc, #672]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2cc>)
 80019fc:	f7fe fca0 	bl	8000340 <_ZN5CMath3rndEv>
 8001a00:	eca5 0a01 	vstmia	r5!, {s0}
 8001a04:	42b5      	cmp	r5, r6
 8001a06:	d1f8      	bne.n	80019fa <_ZN21CLearningLineFollower3runEv+0x2a>
 8001a08:	454d      	cmp	r5, r9
 8001a0a:	d1f4      	bne.n	80019f6 <_ZN21CLearningLineFollower3runEv+0x26>
 8001a0c:	f504 62a5 	add.w	r2, r4, #1320	; 0x528
 8001a10:	2320      	movs	r3, #32
 8001a12:	ed9f 8aa3 	vldr	s16, [pc, #652]	; 8001ca0 <_ZN21CLearningLineFollower3runEv+0x2d0>
 8001a16:	ee18 1a10 	vmov	r1, s16
 8001a1a:	3b01      	subs	r3, #1
 8001a1c:	ed02 8a02 	vstr	s16, [r2, #-8]
 8001a20:	ed02 8a01 	vstr	s16, [r2, #-4]
 8001a24:	f842 1b0c 	str.w	r1, [r2], #12
 8001a28:	d1f3      	bne.n	8001a12 <_ZN21CLearningLineFollower3runEv+0x42>
 8001a2a:	f104 0858 	add.w	r8, r4, #88	; 0x58
 8001a2e:	6523      	str	r3, [r4, #80]	; 0x50
 8001a30:	6563      	str	r3, [r4, #84]	; 0x54
 8001a32:	4640      	mov	r0, r8
 8001a34:	f104 0a7c 	add.w	sl, r4, #124	; 0x7c
 8001a38:	f7ff ff74 	bl	8001924 <_ZN10MathVectorILj9EE4initEv>
 8001a3c:	4650      	mov	r0, sl
 8001a3e:	f7ff ff71 	bl	8001924 <_ZN10MathVectorILj9EE4initEv>
 8001a42:	f504 63d5 	add.w	r3, r4, #1704	; 0x6a8
 8001a46:	ed83 8a00 	vstr	s16, [r3]
 8001a4a:	ed83 8a01 	vstr	s16, [r3, #4]
 8001a4e:	ed83 8a02 	vstr	s16, [r3, #8]
 8001a52:	eebf 9a00 	vmov.f32	s18, #240	; 0xf0
 8001a56:	2100      	movs	r1, #0
 8001a58:	4892      	ldr	r0, [pc, #584]	; (8001ca4 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001a5a:	f7ff fdab 	bl	80015b4 <_ZN4CRGB8rgb_readEh>
 8001a5e:	4891      	ldr	r0, [pc, #580]	; (8001ca4 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001a60:	f7ff ff5e 	bl	8001920 <_ZN4CRGB14get_rgb_resultEv>
 8001a64:	f104 062c 	add.w	r6, r4, #44	; 0x2c
 8001a68:	4601      	mov	r1, r0
 8001a6a:	4620      	mov	r0, r4
 8001a6c:	f7fe fc8e 	bl	800038c <_ZN13CLinePosition7processEP10sRGBResult>
 8001a70:	f104 0558 	add.w	r5, r4, #88	; 0x58
 8001a74:	4631      	mov	r1, r6
 8001a76:	4620      	mov	r0, r4
 8001a78:	f7fe fd29 	bl	80004ce <_ZN13CLinePosition10get_vectorEP10MathVectorILj9EE>
 8001a7c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8001a7e:	f104 0e7c 	add.w	lr, r4, #124	; 0x7c
 8001a82:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001a86:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
 8001a88:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001a8c:	682b      	ldr	r3, [r5, #0]
 8001a8e:	f8ce 3000 	str.w	r3, [lr]
 8001a92:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8001a94:	f104 0e58 	add.w	lr, r4, #88	; 0x58
 8001a98:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001a9c:	ce0f      	ldmia	r6!, {r0, r1, r2, r3}
 8001a9e:	e8ae 000f 	stmia.w	lr!, {r0, r1, r2, r3}
 8001aa2:	6833      	ldr	r3, [r6, #0]
 8001aa4:	602b      	str	r3, [r5, #0]
 8001aa6:	f504 66d5 	add.w	r6, r4, #1704	; 0x6a8
 8001aaa:	4632      	mov	r2, r6
 8001aac:	4638      	mov	r0, r7
 8001aae:	4641      	mov	r1, r8
 8001ab0:	f7ff ff54 	bl	800195c <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001ab4:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8001ab6:	6523      	str	r3, [r4, #80]	; 0x50
 8001ab8:	4878      	ldr	r0, [pc, #480]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001aba:	f7fe fc27 	bl	800030c <_ZN5CMath4randEv>
 8001abe:	2364      	movs	r3, #100	; 0x64
 8001ac0:	fbb0 f2f3 	udiv	r2, r0, r3
 8001ac4:	fb02 0013 	mls	r0, r2, r3, r0
 8001ac8:	2813      	cmp	r0, #19
 8001aca:	d809      	bhi.n	8001ae0 <_ZN21CLearningLineFollower3runEv+0x110>
 8001acc:	4873      	ldr	r0, [pc, #460]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001ace:	f7fe fc1d 	bl	800030c <_ZN5CMath4randEv>
 8001ad2:	2503      	movs	r5, #3
 8001ad4:	fbb0 f5f5 	udiv	r5, r0, r5
 8001ad8:	eb05 0545 	add.w	r5, r5, r5, lsl #1
 8001adc:	1b45      	subs	r5, r0, r5
 8001ade:	e013      	b.n	8001b08 <_ZN21CLearningLineFollower3runEv+0x138>
 8001ae0:	2500      	movs	r5, #0
 8001ae2:	4632      	mov	r2, r6
 8001ae4:	462b      	mov	r3, r5
 8001ae6:	f504 61d5 	add.w	r1, r4, #1704	; 0x6a8
 8001aea:	eb01 0185 	add.w	r1, r1, r5, lsl #2
 8001aee:	ecb2 7a01 	vldmia	r2!, {s14}
 8001af2:	edd1 7a00 	vldr	s15, [r1]
 8001af6:	eeb4 7a67 	vcmp.f32	s14, s15
 8001afa:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001afe:	bfc8      	it	gt
 8001b00:	461d      	movgt	r5, r3
 8001b02:	3301      	adds	r3, #1
 8001b04:	2b03      	cmp	r3, #3
 8001b06:	d1ee      	bne.n	8001ae6 <_ZN21CLearningLineFollower3runEv+0x116>
 8001b08:	2d01      	cmp	r5, #1
 8001b0a:	6565      	str	r5, [r4, #84]	; 0x54
 8001b0c:	d014      	beq.n	8001b38 <_ZN21CLearningLineFollower3runEv+0x168>
 8001b0e:	d30b      	bcc.n	8001b28 <_ZN21CLearningLineFollower3runEv+0x158>
 8001b10:	2d02      	cmp	r5, #2
 8001b12:	d11c      	bne.n	8001b4e <_ZN21CLearningLineFollower3runEv+0x17e>
 8001b14:	4864      	ldr	r0, [pc, #400]	; (8001ca8 <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b16:	2100      	movs	r1, #0
 8001b18:	2221      	movs	r2, #33	; 0x21
 8001b1a:	f7fe fd6d 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001b1e:	4862      	ldr	r0, [pc, #392]	; (8001ca8 <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b20:	2101      	movs	r1, #1
 8001b22:	f06f 020b 	mvn.w	r2, #11
 8001b26:	e010      	b.n	8001b4a <_ZN21CLearningLineFollower3runEv+0x17a>
 8001b28:	485f      	ldr	r0, [pc, #380]	; (8001ca8 <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b2a:	2100      	movs	r1, #0
 8001b2c:	2221      	movs	r2, #33	; 0x21
 8001b2e:	f7fe fd63 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001b32:	485d      	ldr	r0, [pc, #372]	; (8001ca8 <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b34:	2101      	movs	r1, #1
 8001b36:	e007      	b.n	8001b48 <_ZN21CLearningLineFollower3runEv+0x178>
 8001b38:	485b      	ldr	r0, [pc, #364]	; (8001ca8 <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b3a:	2100      	movs	r1, #0
 8001b3c:	f06f 020b 	mvn.w	r2, #11
 8001b40:	f7fe fd5a 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001b44:	4858      	ldr	r0, [pc, #352]	; (8001ca8 <_ZN21CLearningLineFollower3runEv+0x2d8>)
 8001b46:	4629      	mov	r1, r5
 8001b48:	2221      	movs	r2, #33	; 0x21
 8001b4a:	f7fe fd55 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001b4e:	4857      	ldr	r0, [pc, #348]	; (8001cac <_ZN21CLearningLineFollower3runEv+0x2dc>)
 8001b50:	2132      	movs	r1, #50	; 0x32
 8001b52:	f7ff f925 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001b56:	2100      	movs	r1, #0
 8001b58:	4852      	ldr	r0, [pc, #328]	; (8001ca4 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001b5a:	f7ff fd2b 	bl	80015b4 <_ZN4CRGB8rgb_readEh>
 8001b5e:	4851      	ldr	r0, [pc, #324]	; (8001ca4 <_ZN21CLearningLineFollower3runEv+0x2d4>)
 8001b60:	f7ff fede 	bl	8001920 <_ZN4CRGB14get_rgb_resultEv>
 8001b64:	4601      	mov	r1, r0
 8001b66:	4620      	mov	r0, r4
 8001b68:	f7fe fc10 	bl	800038c <_ZN13CLinePosition7processEP10sRGBResult>
 8001b6c:	4620      	mov	r0, r4
 8001b6e:	f7fe fcab 	bl	80004c8 <_ZN13CLinePosition17get_line_positionEv>
 8001b72:	484a      	ldr	r0, [pc, #296]	; (8001c9c <_ZN21CLearningLineFollower3runEv+0x2cc>)
 8001b74:	f7fe fbc1 	bl	80002fa <_ZN5CMath3absEf>
 8001b78:	eef7 8a00 	vmov.f32	s17, #112	; 0x70
 8001b7c:	ee38 0ac0 	vsub.f32	s0, s17, s0
 8001b80:	6d22      	ldr	r2, [r4, #80]	; 0x50
 8001b82:	6d63      	ldr	r3, [r4, #84]	; 0x54
 8001b84:	9201      	str	r2, [sp, #4]
 8001b86:	eef6 7a00 	vmov.f32	s15, #96	; 0x60
 8001b8a:	4638      	mov	r0, r7
 8001b8c:	4641      	mov	r1, r8
 8001b8e:	4632      	mov	r2, r6
 8001b90:	ee70 9a67 	vsub.f32	s19, s0, s15
 8001b94:	9300      	str	r3, [sp, #0]
 8001b96:	f7ff fee1 	bl	800195c <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001b9a:	9b00      	ldr	r3, [sp, #0]
 8001b9c:	f504 65d5 	add.w	r5, r4, #1704	; 0x6a8
 8001ba0:	eb05 0383 	add.w	r3, r5, r3, lsl #2
 8001ba4:	edd3 7a00 	vldr	s15, [r3]
 8001ba8:	ed95 7a00 	vldr	s14, [r5]
 8001bac:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001bb0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001bb4:	bf58      	it	pl
 8001bb6:	eeb0 7a67 	vmovpl.f32	s14, s15
 8001bba:	edd5 7a01 	vldr	s15, [r5, #4]
 8001bbe:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001bc2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001bc6:	eeb0 aa68 	vmov.f32	s20, s17
 8001bca:	edd5 8a02 	vldr	s17, [r5, #8]
 8001bce:	bf58      	it	pl
 8001bd0:	eef0 7a47 	vmovpl.f32	s15, s14
 8001bd4:	eef4 7ae8 	vcmpe.f32	s15, s17
 8001bd8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001bdc:	4638      	mov	r0, r7
 8001bde:	4651      	mov	r1, sl
 8001be0:	4632      	mov	r2, r6
 8001be2:	bf58      	it	pl
 8001be4:	eef0 8a67 	vmovpl.f32	s17, s15
 8001be8:	f7ff feb8 	bl	800195c <_ZN17AssociativeMemoryILi9ELi3ELi32EE4loadER10MathVectorILj9EERS1_ILj3EE>
 8001bec:	eddf 7a30 	vldr	s15, [pc, #192]	; 8001cb0 <_ZN21CLearningLineFollower3runEv+0x2e0>
 8001bf0:	9b01      	ldr	r3, [sp, #4]
 8001bf2:	f8d4 16a0 	ldr.w	r1, [r4, #1696]	; 0x6a0
 8001bf6:	eeb0 7a69 	vmov.f32	s14, s19
 8001bfa:	eea8 7aa7 	vfma.f32	s14, s17, s15
 8001bfe:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8001c02:	2200      	movs	r2, #0
 8001c04:	4610      	mov	r0, r2
 8001c06:	ed85 7a00 	vstr	s14, [r5]
 8001c0a:	ed9f 7a2a 	vldr	s14, [pc, #168]	; 8001cb4 <_ZN21CLearningLineFollower3runEv+0x2e4>
 8001c0e:	463d      	mov	r5, r7
 8001c10:	4288      	cmp	r0, r1
 8001c12:	d01e      	beq.n	8001c52 <_ZN21CLearningLineFollower3runEv+0x282>
 8001c14:	eddf 7a22 	vldr	s15, [pc, #136]	; 8001ca0 <_ZN21CLearningLineFollower3runEv+0x2d0>
 8001c18:	2300      	movs	r3, #0
 8001c1a:	eb04 0c03 	add.w	ip, r4, r3
 8001c1e:	eb05 0e03 	add.w	lr, r5, r3
 8001c22:	ed9c 6a1f 	vldr	s12, [ip, #124]	; 0x7c
 8001c26:	edde 6a00 	vldr	s13, [lr]
 8001c2a:	3304      	adds	r3, #4
 8001c2c:	ee76 6a66 	vsub.f32	s13, s12, s13
 8001c30:	2b24      	cmp	r3, #36	; 0x24
 8001c32:	eee6 7aa6 	vfma.f32	s15, s13, s13
 8001c36:	d1f0      	bne.n	8001c1a <_ZN21CLearningLineFollower3runEv+0x24a>
 8001c38:	eef4 7ac7 	vcmpe.f32	s15, s14
 8001c3c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c40:	bf54      	ite	pl
 8001c42:	eef0 7a47 	vmovpl.f32	s15, s14
 8001c46:	4602      	movmi	r2, r0
 8001c48:	3524      	adds	r5, #36	; 0x24
 8001c4a:	3001      	adds	r0, #1
 8001c4c:	eeb0 7a67 	vmov.f32	s14, s15
 8001c50:	e7de      	b.n	8001c10 <_ZN21CLearningLineFollower3runEv+0x240>
 8001c52:	291f      	cmp	r1, #31
 8001c54:	f104 007c 	add.w	r0, r4, #124	; 0x7c
 8001c58:	f04f 0324 	mov.w	r3, #36	; 0x24
 8001c5c:	d82c      	bhi.n	8001cb8 <_ZN21CLearningLineFollower3runEv+0x2e8>
 8001c5e:	fb03 7201 	mla	r2, r3, r1, r7
 8001c62:	2300      	movs	r3, #0
 8001c64:	18c5      	adds	r5, r0, r3
 8001c66:	ed92 7a00 	vldr	s14, [r2]
 8001c6a:	edd5 7a00 	vldr	s15, [r5]
 8001c6e:	eee7 7a08 	vfma.f32	s15, s14, s16
 8001c72:	3304      	adds	r3, #4
 8001c74:	2b24      	cmp	r3, #36	; 0x24
 8001c76:	ece2 7a01 	vstmia	r2!, {s15}
 8001c7a:	d1f3      	bne.n	8001c64 <_ZN21CLearningLineFollower3runEv+0x294>
 8001c7c:	200c      	movs	r0, #12
 8001c7e:	fb00 9001 	mla	r0, r0, r1, r9
 8001c82:	eeb7 0a00 	vmov.f32	s0, #112	; 0x70
 8001c86:	4631      	mov	r1, r6
 8001c88:	f7ff fe54 	bl	8001934 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001c8c:	f8d4 36a0 	ldr.w	r3, [r4, #1696]	; 0x6a0
 8001c90:	3301      	adds	r3, #1
 8001c92:	f8c4 36a0 	str.w	r3, [r4, #1696]	; 0x6a0
 8001c96:	e02a      	b.n	8001cee <_ZN21CLearningLineFollower3runEv+0x31e>
 8001c98:	3dcccccd 	.word	0x3dcccccd
 8001c9c:	200001bc 	.word	0x200001bc
 8001ca0:	00000000 	.word	0x00000000
 8001ca4:	20000038 	.word	0x20000038
 8001ca8:	200001a8 	.word	0x200001a8
 8001cac:	200001f8 	.word	0x200001f8
 8001cb0:	3f666666 	.word	0x3f666666
 8001cb4:	4cbebc20 	.word	0x4cbebc20
 8001cb8:	ed9b 0a00 	vldr	s0, [fp]
 8001cbc:	fb03 7102 	mla	r1, r3, r2, r7
 8001cc0:	2300      	movs	r3, #0
 8001cc2:	18c5      	adds	r5, r0, r3
 8001cc4:	edd5 7a00 	vldr	s15, [r5]
 8001cc8:	ed91 7a00 	vldr	s14, [r1]
 8001ccc:	ee7a 6a40 	vsub.f32	s13, s20, s0
 8001cd0:	ee60 7a27 	vmul.f32	s15, s0, s15
 8001cd4:	3304      	adds	r3, #4
 8001cd6:	eee6 7a87 	vfma.f32	s15, s13, s14
 8001cda:	2b24      	cmp	r3, #36	; 0x24
 8001cdc:	ece1 7a01 	vstmia	r1!, {s15}
 8001ce0:	d1ef      	bne.n	8001cc2 <_ZN21CLearningLineFollower3runEv+0x2f2>
 8001ce2:	200c      	movs	r0, #12
 8001ce4:	fb00 9002 	mla	r0, r0, r2, r9
 8001ce8:	4631      	mov	r1, r6
 8001cea:	f7ff fe23 	bl	8001934 <_ZN10MathVectorILj3EE3mixERS0_f>
 8001cee:	4620      	mov	r0, r4
 8001cf0:	f7fe fbe8 	bl	80004c4 <_ZN13CLinePosition7on_lineEv>
 8001cf4:	4605      	mov	r5, r0
 8001cf6:	b9f0      	cbnz	r0, 8001d36 <_ZN21CLearningLineFollower3runEv+0x366>
 8001cf8:	481a      	ldr	r0, [pc, #104]	; (8001d64 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001cfa:	4629      	mov	r1, r5
 8001cfc:	f06f 0220 	mvn.w	r2, #32
 8001d00:	f7fe fc7a 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001d04:	f06f 0220 	mvn.w	r2, #32
 8001d08:	4816      	ldr	r0, [pc, #88]	; (8001d64 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d0a:	2101      	movs	r1, #1
 8001d0c:	f7fe fc74 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001d10:	4815      	ldr	r0, [pc, #84]	; (8001d68 <_ZN21CLearningLineFollower3runEv+0x398>)
 8001d12:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 8001d16:	f7ff f843 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001d1a:	4812      	ldr	r0, [pc, #72]	; (8001d64 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d1c:	4629      	mov	r1, r5
 8001d1e:	462a      	mov	r2, r5
 8001d20:	f7fe fc6a 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001d24:	480f      	ldr	r0, [pc, #60]	; (8001d64 <_ZN21CLearningLineFollower3runEv+0x394>)
 8001d26:	2101      	movs	r1, #1
 8001d28:	462a      	mov	r2, r5
 8001d2a:	f7fe fc65 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001d2e:	480e      	ldr	r0, [pc, #56]	; (8001d68 <_ZN21CLearningLineFollower3runEv+0x398>)
 8001d30:	2164      	movs	r1, #100	; 0x64
 8001d32:	f7ff f835 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001d36:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8001d6c <_ZN21CLearningLineFollower3runEv+0x39c>
 8001d3a:	480d      	ldr	r0, [pc, #52]	; (8001d70 <_ZN21CLearningLineFollower3runEv+0x3a0>)
 8001d3c:	490d      	ldr	r1, [pc, #52]	; (8001d74 <_ZN21CLearningLineFollower3runEv+0x3a4>)
 8001d3e:	ee69 9aa7 	vmul.f32	s19, s19, s15
 8001d42:	eddf 7a0d 	vldr	s15, [pc, #52]	; 8001d78 <_ZN21CLearningLineFollower3runEv+0x3a8>
 8001d46:	eee9 9a27 	vfma.f32	s19, s18, s15
 8001d4a:	eddf 7a0c 	vldr	s15, [pc, #48]	; 8001d7c <_ZN21CLearningLineFollower3runEv+0x3ac>
 8001d4e:	ee69 7aa7 	vmul.f32	s15, s19, s15
 8001d52:	eeb0 9a69 	vmov.f32	s18, s19
 8001d56:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001d5a:	ee17 2a90 	vmov	r2, s15
 8001d5e:	f7ff f978 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8001d62:	e678      	b.n	8001a56 <_ZN21CLearningLineFollower3runEv+0x86>
 8001d64:	200001a8 	.word	0x200001a8
 8001d68:	200001f8 	.word	0x200001f8
 8001d6c:	3c23d70a 	.word	0x3c23d70a
 8001d70:	20000038 	.word	0x20000038
 8001d74:	08002ddc 	.word	0x08002ddc
 8001d78:	3f7d70a4 	.word	0x3f7d70a4
 8001d7c:	447a0000 	.word	0x447a0000

08001d80 <_ZN5CDemo4initEv>:
 8001d80:	4770      	bx	lr
	...

08001d84 <_ZN5CDemo10blink_taskEv>:
 8001d84:	b508      	push	{r3, lr}
 8001d86:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d8a:	480d      	ldr	r0, [pc, #52]	; (8001dc0 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d8c:	f7fe ff52 	bl	8000c34 <_ZN5CGPIO7gpio_onEm>
 8001d90:	480c      	ldr	r0, [pc, #48]	; (8001dc4 <_ZN5CDemo10blink_taskEv+0x40>)
 8001d92:	f7fe fff7 	bl	8000d84 <_ZN6CTimer8get_timeEv>
 8001d96:	490c      	ldr	r1, [pc, #48]	; (8001dc8 <_ZN5CDemo10blink_taskEv+0x44>)
 8001d98:	4602      	mov	r2, r0
 8001d9a:	4809      	ldr	r0, [pc, #36]	; (8001dc0 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d9c:	f7ff f959 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8001da0:	4808      	ldr	r0, [pc, #32]	; (8001dc4 <_ZN5CDemo10blink_taskEv+0x40>)
 8001da2:	210a      	movs	r1, #10
 8001da4:	f7fe fffc 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001da8:	4805      	ldr	r0, [pc, #20]	; (8001dc0 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001daa:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001dae:	f7fe ff47 	bl	8000c40 <_ZN5CGPIO8gpio_offEm>
 8001db2:	4804      	ldr	r0, [pc, #16]	; (8001dc4 <_ZN5CDemo10blink_taskEv+0x40>)
 8001db4:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001db8:	f7fe fff2 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001dbc:	e7e3      	b.n	8001d86 <_ZN5CDemo10blink_taskEv+0x2>
 8001dbe:	bf00      	nop
 8001dc0:	20000038 	.word	0x20000038
 8001dc4:	200001f8 	.word	0x200001f8
 8001dc8:	08002dc4 	.word	0x08002dc4

08001dcc <_ZN5CDemo10moves_taskEv>:
 8001dcc:	b538      	push	{r3, r4, r5, lr}
 8001dce:	4c26      	ldr	r4, [pc, #152]	; (8001e68 <_ZN5CDemo10moves_taskEv+0x9c>)
 8001dd0:	4d26      	ldr	r5, [pc, #152]	; (8001e6c <_ZN5CDemo10moves_taskEv+0xa0>)
 8001dd2:	4620      	mov	r0, r4
 8001dd4:	2100      	movs	r1, #0
 8001dd6:	2214      	movs	r2, #20
 8001dd8:	f7fe fc0e 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001ddc:	4620      	mov	r0, r4
 8001dde:	2200      	movs	r2, #0
 8001de0:	2101      	movs	r1, #1
 8001de2:	f7fe fc09 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001de6:	4628      	mov	r0, r5
 8001de8:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001dec:	f7fe ffd8 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001df0:	4620      	mov	r0, r4
 8001df2:	2100      	movs	r1, #0
 8001df4:	f06f 0213 	mvn.w	r2, #19
 8001df8:	f7fe fbfe 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001dfc:	4620      	mov	r0, r4
 8001dfe:	2200      	movs	r2, #0
 8001e00:	2101      	movs	r1, #1
 8001e02:	f7fe fbf9 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001e06:	4628      	mov	r0, r5
 8001e08:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001e0c:	f7fe ffc8 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001e10:	2100      	movs	r1, #0
 8001e12:	4620      	mov	r0, r4
 8001e14:	460a      	mov	r2, r1
 8001e16:	f7fe fbef 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001e1a:	4620      	mov	r0, r4
 8001e1c:	f06f 0213 	mvn.w	r2, #19
 8001e20:	2101      	movs	r1, #1
 8001e22:	f7fe fbe9 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001e26:	4628      	mov	r0, r5
 8001e28:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001e2c:	f7fe ffb8 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001e30:	2100      	movs	r1, #0
 8001e32:	4620      	mov	r0, r4
 8001e34:	460a      	mov	r2, r1
 8001e36:	f7fe fbdf 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001e3a:	4620      	mov	r0, r4
 8001e3c:	2214      	movs	r2, #20
 8001e3e:	2101      	movs	r1, #1
 8001e40:	f7fe fbda 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001e44:	4628      	mov	r0, r5
 8001e46:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001e4a:	f7fe ffa9 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001e4e:	2100      	movs	r1, #0
 8001e50:	4620      	mov	r0, r4
 8001e52:	460a      	mov	r2, r1
 8001e54:	f7fe fbd0 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001e58:	4620      	mov	r0, r4
 8001e5a:	2101      	movs	r1, #1
 8001e5c:	2200      	movs	r2, #0
 8001e5e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001e62:	f7fe bbc9 	b.w	80005f8 <_ZN6CMotor9set_motorEml>
 8001e66:	bf00      	nop
 8001e68:	200001a8 	.word	0x200001a8
 8001e6c:	200001f8 	.word	0x200001f8

08001e70 <_ZN5CDemo24basic_line_follower_taskEv>:
 8001e70:	b510      	push	{r4, lr}
 8001e72:	b094      	sub	sp, #80	; 0x50
 8001e74:	a809      	add	r0, sp, #36	; 0x24
 8001e76:	f7fe fa7d 	bl	8000374 <_ZN13CLinePositionC1Ev>
 8001e7a:	a801      	add	r0, sp, #4
 8001e7c:	eeb2 0a04 	vmov.f32	s0, #36	; 0x24
 8001e80:	eddf 0a38 	vldr	s1, [pc, #224]	; 8001f64 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001e84:	eddf 1a38 	vldr	s3, [pc, #224]	; 8001f68 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8001e88:	eeb2 1a00 	vmov.f32	s2, #32
 8001e8c:	f7fe f9fc 	bl	8000288 <_ZN4CPIDC1Effff>
 8001e90:	4836      	ldr	r0, [pc, #216]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001e92:	2100      	movs	r1, #0
 8001e94:	220a      	movs	r2, #10
 8001e96:	f7fe ff95 	bl	8000dc4 <_ZN6CTimer22event_timer_set_periodEhm>
 8001e9a:	4834      	ldr	r0, [pc, #208]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001e9c:	2100      	movs	r1, #0
 8001e9e:	f7fe ffa5 	bl	8000dec <_ZN6CTimer17event_timer_checkEh>
 8001ea2:	2800      	cmp	r0, #0
 8001ea4:	d0f9      	beq.n	8001e9a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001ea6:	2100      	movs	r1, #0
 8001ea8:	4831      	ldr	r0, [pc, #196]	; (8001f70 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001eaa:	f7ff fb83 	bl	80015b4 <_ZN4CRGB8rgb_readEh>
 8001eae:	4830      	ldr	r0, [pc, #192]	; (8001f70 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001eb0:	f7ff fd36 	bl	8001920 <_ZN4CRGB14get_rgb_resultEv>
 8001eb4:	4601      	mov	r1, r0
 8001eb6:	a809      	add	r0, sp, #36	; 0x24
 8001eb8:	f7fe fa68 	bl	800038c <_ZN13CLinePosition7processEP10sRGBResult>
 8001ebc:	a809      	add	r0, sp, #36	; 0x24
 8001ebe:	f7fe fb01 	bl	80004c4 <_ZN13CLinePosition7on_lineEv>
 8001ec2:	4604      	mov	r4, r0
 8001ec4:	a809      	add	r0, sp, #36	; 0x24
 8001ec6:	f7fe faff 	bl	80004c8 <_ZN13CLinePosition17get_line_positionEv>
 8001eca:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8001f74 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 8001ece:	4828      	ldr	r0, [pc, #160]	; (8001f70 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001ed0:	4929      	ldr	r1, [pc, #164]	; (8001f78 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001ed2:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001ed6:	4622      	mov	r2, r4
 8001ed8:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001edc:	ee10 3a10 	vmov	r3, s0
 8001ee0:	f7ff f8b7 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8001ee4:	a809      	add	r0, sp, #36	; 0x24
 8001ee6:	f7fe faed 	bl	80004c4 <_ZN13CLinePosition7on_lineEv>
 8001eea:	4604      	mov	r4, r0
 8001eec:	b1d0      	cbz	r0, 8001f24 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 8001eee:	a809      	add	r0, sp, #36	; 0x24
 8001ef0:	f7fe faea 	bl	80004c8 <_ZN13CLinePosition17get_line_positionEv>
 8001ef4:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8001f64 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001ef8:	a801      	add	r0, sp, #4
 8001efa:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8001efe:	f7fe f9c9 	bl	8000294 <_ZN4CPID7processEf>
 8001f02:	eebd 0ac0 	vcvt.s32.f32	s0, s0
 8001f06:	481d      	ldr	r0, [pc, #116]	; (8001f7c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f08:	ee10 4a10 	vmov	r4, s0
 8001f0c:	2100      	movs	r1, #0
 8001f0e:	f104 0219 	add.w	r2, r4, #25
 8001f12:	f7fe fb71 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001f16:	4819      	ldr	r0, [pc, #100]	; (8001f7c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f18:	2101      	movs	r1, #1
 8001f1a:	f1c4 0219 	rsb	r2, r4, #25
 8001f1e:	f7fe fb6b 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001f22:	e7ba      	b.n	8001e9a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001f24:	4621      	mov	r1, r4
 8001f26:	4815      	ldr	r0, [pc, #84]	; (8001f7c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f28:	f06f 0218 	mvn.w	r2, #24
 8001f2c:	f7fe fb64 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001f30:	f06f 0218 	mvn.w	r2, #24
 8001f34:	4811      	ldr	r0, [pc, #68]	; (8001f7c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f36:	2101      	movs	r1, #1
 8001f38:	f7fe fb5e 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001f3c:	480b      	ldr	r0, [pc, #44]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001f3e:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001f42:	f7fe ff2d 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001f46:	4621      	mov	r1, r4
 8001f48:	4622      	mov	r2, r4
 8001f4a:	480c      	ldr	r0, [pc, #48]	; (8001f7c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f4c:	f7fe fb54 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001f50:	480a      	ldr	r0, [pc, #40]	; (8001f7c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001f52:	2101      	movs	r1, #1
 8001f54:	4622      	mov	r2, r4
 8001f56:	f7fe fb4f 	bl	80005f8 <_ZN6CMotor9set_motorEml>
 8001f5a:	4804      	ldr	r0, [pc, #16]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001f5c:	2164      	movs	r1, #100	; 0x64
 8001f5e:	f7fe ff1f 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 8001f62:	e79a      	b.n	8001e9a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001f64:	00000000 	.word	0x00000000
 8001f68:	42c80000 	.word	0x42c80000
 8001f6c:	200001f8 	.word	0x200001f8
 8001f70:	20000038 	.word	0x20000038
 8001f74:	447a0000 	.word	0x447a0000
 8001f78:	08002dd9 	.word	0x08002dd9
 8001f7c:	200001a8 	.word	0x200001a8

08001f80 <_ZN5CDemo3runEj>:
 8001f80:	2902      	cmp	r1, #2
 8001f82:	b508      	push	{r3, lr}
 8001f84:	d007      	beq.n	8001f96 <_ZN5CDemo3runEj+0x16>
 8001f86:	2903      	cmp	r1, #3
 8001f88:	d007      	beq.n	8001f9a <_ZN5CDemo3runEj+0x1a>
 8001f8a:	2901      	cmp	r1, #1
 8001f8c:	d10a      	bne.n	8001fa4 <_ZN5CDemo3runEj+0x24>
 8001f8e:	f7ff ff1d 	bl	8001dcc <_ZN5CDemo10moves_taskEv>
 8001f92:	f7ff fef7 	bl	8001d84 <_ZN5CDemo10blink_taskEv>
 8001f96:	f7ff ff6b 	bl	8001e70 <_ZN5CDemo24basic_line_follower_taskEv>
 8001f9a:	4803      	ldr	r0, [pc, #12]	; (8001fa8 <_ZN5CDemo3runEj+0x28>)
 8001f9c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001fa0:	f7ff bd16 	b.w	80019d0 <_ZN21CLearningLineFollower3runEv>
 8001fa4:	bd08      	pop	{r3, pc}
 8001fa6:	bf00      	nop
 8001fa8:	20000238 	.word	0x20000238
 8001fac:	00000000 	.word	0x00000000

08001fb0 <main>:
 8001fb0:	b530      	push	{r4, r5, lr}
 8001fb2:	b08f      	sub	sp, #60	; 0x3c
 8001fb4:	f000 fa80 	bl	80024b8 <sytem_clock_init>
 8001fb8:	4863      	ldr	r0, [pc, #396]	; (8002148 <main+0x198>)
 8001fba:	f7fe f917 	bl	80001ec <_ZN7CKodama4initEv>
 8001fbe:	210a      	movs	r1, #10
 8001fc0:	4861      	ldr	r0, [pc, #388]	; (8002148 <main+0x198>)
 8001fc2:	f7fe f948 	bl	8000256 <_ZN7CKodama6set_dtEl>
 8001fc6:	a548      	add	r5, pc, #288	; (adr r5, 80020e8 <main+0x138>)
 8001fc8:	e9d5 4500 	ldrd	r4, r5, [r5]
 8001fcc:	485e      	ldr	r0, [pc, #376]	; (8002148 <main+0x198>)
 8001fce:	f7fe f92f 	bl	8000230 <_ZN7CKodama5sleepEv>
 8001fd2:	2204      	movs	r2, #4
 8001fd4:	2308      	movs	r3, #8
 8001fd6:	9300      	str	r3, [sp, #0]
 8001fd8:	485b      	ldr	r0, [pc, #364]	; (8002148 <main+0x198>)
 8001fda:	495c      	ldr	r1, [pc, #368]	; (800214c <main+0x19c>)
 8001fdc:	4613      	mov	r3, r2
 8001fde:	f7ff f838 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8001fe2:	4859      	ldr	r0, [pc, #356]	; (8002148 <main+0x198>)
 8001fe4:	495a      	ldr	r1, [pc, #360]	; (8002150 <main+0x1a0>)
 8001fe6:	4622      	mov	r2, r4
 8001fe8:	462b      	mov	r3, r5
 8001fea:	f7ff f832 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8001fee:	4b59      	ldr	r3, [pc, #356]	; (8002154 <main+0x1a4>)
 8001ff0:	4855      	ldr	r0, [pc, #340]	; (8002148 <main+0x198>)
 8001ff2:	4959      	ldr	r1, [pc, #356]	; (8002158 <main+0x1a8>)
 8001ff4:	2200      	movs	r2, #0
 8001ff6:	e9cd 2300 	strd	r2, r3, [sp]
 8001ffa:	a33d      	add	r3, pc, #244	; (adr r3, 80020f0 <main+0x140>)
 8001ffc:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002000:	e9cd 2302 	strd	r2, r3, [sp, #8]
 8002004:	a33c      	add	r3, pc, #240	; (adr r3, 80020f8 <main+0x148>)
 8002006:	e9d3 2300 	ldrd	r2, r3, [r3]
 800200a:	e9cd 2306 	strd	r2, r3, [sp, #24]
 800200e:	a33c      	add	r3, pc, #240	; (adr r3, 8002100 <main+0x150>)
 8002010:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002014:	e9cd 2308 	strd	r2, r3, [sp, #32]
 8002018:	a33b      	add	r3, pc, #236	; (adr r3, 8002108 <main+0x158>)
 800201a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800201e:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8002022:	a33b      	add	r3, pc, #236	; (adr r3, 8002110 <main+0x160>)
 8002024:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002028:	e9cd 4504 	strd	r4, r5, [sp, #16]
 800202c:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8002030:	2200      	movs	r2, #0
 8002032:	2300      	movs	r3, #0
 8002034:	f7ff f80d 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 8002038:	4b48      	ldr	r3, [pc, #288]	; (800215c <main+0x1ac>)
 800203a:	4843      	ldr	r0, [pc, #268]	; (8002148 <main+0x198>)
 800203c:	4946      	ldr	r1, [pc, #280]	; (8002158 <main+0x1a8>)
 800203e:	2200      	movs	r2, #0
 8002040:	e9cd 2300 	strd	r2, r3, [sp]
 8002044:	a334      	add	r3, pc, #208	; (adr r3, 8002118 <main+0x168>)
 8002046:	e9d3 2300 	ldrd	r2, r3, [r3]
 800204a:	e9cd 2302 	strd	r2, r3, [sp, #8]
 800204e:	a334      	add	r3, pc, #208	; (adr r3, 8002120 <main+0x170>)
 8002050:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002054:	e9cd 2304 	strd	r2, r3, [sp, #16]
 8002058:	a333      	add	r3, pc, #204	; (adr r3, 8002128 <main+0x178>)
 800205a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800205e:	e9cd 2306 	strd	r2, r3, [sp, #24]
 8002062:	a333      	add	r3, pc, #204	; (adr r3, 8002130 <main+0x180>)
 8002064:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002068:	e9cd 2308 	strd	r2, r3, [sp, #32]
 800206c:	a332      	add	r3, pc, #200	; (adr r3, 8002138 <main+0x188>)
 800206e:	e9d3 2300 	ldrd	r2, r3, [r3]
 8002072:	e9cd 230a 	strd	r2, r3, [sp, #40]	; 0x28
 8002076:	a332      	add	r3, pc, #200	; (adr r3, 8002140 <main+0x190>)
 8002078:	e9d3 2300 	ldrd	r2, r3, [r3]
 800207c:	e9cd 230c 	strd	r2, r3, [sp, #48]	; 0x30
 8002080:	2200      	movs	r2, #0
 8002082:	f04f 4300 	mov.w	r3, #2147483648	; 0x80000000
 8002086:	f7fe ffe4 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 800208a:	482f      	ldr	r0, [pc, #188]	; (8002148 <main+0x198>)
 800208c:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8002090:	f7fe fddc 	bl	8000c4c <_ZN5CGPIO7gpio_inEm>
 8002094:	b148      	cbz	r0, 80020aa <main+0xfa>
 8002096:	482c      	ldr	r0, [pc, #176]	; (8002148 <main+0x198>)
 8002098:	f7fe f8ce 	bl	8000238 <_ZN7CKodama6wakeupEv>
 800209c:	4830      	ldr	r0, [pc, #192]	; (8002160 <main+0x1b0>)
 800209e:	f7ff fe6f 	bl	8001d80 <_ZN5CDemo4initEv>
 80020a2:	482f      	ldr	r0, [pc, #188]	; (8002160 <main+0x1b0>)
 80020a4:	2101      	movs	r1, #1
 80020a6:	f7ff ff6b 	bl	8001f80 <_ZN5CDemo3runEj>
 80020aa:	4827      	ldr	r0, [pc, #156]	; (8002148 <main+0x198>)
 80020ac:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80020b0:	f7fe fdc0 	bl	8000c34 <_ZN5CGPIO7gpio_onEm>
 80020b4:	482b      	ldr	r0, [pc, #172]	; (8002164 <main+0x1b4>)
 80020b6:	210a      	movs	r1, #10
 80020b8:	f7fe fe72 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 80020bc:	4822      	ldr	r0, [pc, #136]	; (8002148 <main+0x198>)
 80020be:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80020c2:	f7fe fdbd 	bl	8000c40 <_ZN5CGPIO8gpio_offEm>
 80020c6:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80020ca:	4826      	ldr	r0, [pc, #152]	; (8002164 <main+0x1b4>)
 80020cc:	f7fe fe68 	bl	8000da0 <_ZN6CTimer8delay_msEm>
 80020d0:	4824      	ldr	r0, [pc, #144]	; (8002164 <main+0x1b4>)
 80020d2:	f7fe fe57 	bl	8000d84 <_ZN6CTimer8get_timeEv>
 80020d6:	4924      	ldr	r1, [pc, #144]	; (8002168 <main+0x1b8>)
 80020d8:	4602      	mov	r2, r0
 80020da:	481b      	ldr	r0, [pc, #108]	; (8002148 <main+0x198>)
 80020dc:	f7fe ffb9 	bl	8001052 <_ZN9CTerminal6printfEPKcz>
 80020e0:	e7d3      	b.n	800208a <main+0xda>
 80020e2:	bf00      	nop
 80020e4:	f3af 8000 	nop.w
 80020e8:	60000000 	.word	0x60000000
 80020ec:	400921fb 	.word	0x400921fb
 80020f0:	00000000 	.word	0x00000000
 80020f4:	3fbf9ad0 	.word	0x3fbf9ad0
 80020f8:	20000000 	.word	0x20000000
 80020fc:	40406251 	.word	0x40406251
 8002100:	60000000 	.word	0x60000000
 8002104:	40934a45 	.word	0x40934a45
 8002108:	c0000000 	.word	0xc0000000
 800210c:	4016cccc 	.word	0x4016cccc
 8002110:	a0000000 	.word	0xa0000000
 8002114:	4016e147 	.word	0x4016e147
 8002118:	00000000 	.word	0x00000000
 800211c:	bfbf9ad0 	.word	0xbfbf9ad0
 8002120:	60000000 	.word	0x60000000
 8002124:	c00921fb 	.word	0xc00921fb
 8002128:	20000000 	.word	0x20000000
 800212c:	c0406251 	.word	0xc0406251
 8002130:	60000000 	.word	0x60000000
 8002134:	c0934a45 	.word	0xc0934a45
 8002138:	c0000000 	.word	0xc0000000
 800213c:	c016cccc 	.word	0xc016cccc
 8002140:	a0000000 	.word	0xa0000000
 8002144:	c016e147 	.word	0xc016e147
 8002148:	20000038 	.word	0x20000038
 800214c:	08002de1 	.word	0x08002de1
 8002150:	08002e01 	.word	0x08002e01
 8002154:	3ff00000 	.word	0x3ff00000
 8002158:	08002e13 	.word	0x08002e13
 800215c:	bff00000 	.word	0xbff00000
 8002160:	200008f0 	.word	0x200008f0
 8002164:	200001f8 	.word	0x200001f8
 8002168:	08002e2c 	.word	0x08002e2c
 800216c:	f3af 8000 	nop.w

08002170 <Default_Handler>:
 8002170:	4668      	mov	r0, sp
 8002172:	f020 0107 	bic.w	r1, r0, #7
 8002176:	468d      	mov	sp, r1
 8002178:	b501      	push	{r0, lr}
 800217a:	bf00      	nop
 800217c:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002180:	4685      	mov	sp, r0
 8002182:	4770      	bx	lr

08002184 <HardFault_Handler>:
 8002184:	bf00      	nop
 8002186:	e7fd      	b.n	8002184 <HardFault_Handler>

08002188 <_reset_init>:
 8002188:	4a0e      	ldr	r2, [pc, #56]	; (80021c4 <_reset_init+0x3c>)
 800218a:	480f      	ldr	r0, [pc, #60]	; (80021c8 <_reset_init+0x40>)
 800218c:	1a80      	subs	r0, r0, r2
 800218e:	1080      	asrs	r0, r0, #2
 8002190:	2300      	movs	r3, #0
 8002192:	4283      	cmp	r3, r0
 8002194:	d006      	beq.n	80021a4 <_reset_init+0x1c>
 8002196:	490d      	ldr	r1, [pc, #52]	; (80021cc <_reset_init+0x44>)
 8002198:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 800219c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80021a0:	3301      	adds	r3, #1
 80021a2:	e7f6      	b.n	8002192 <_reset_init+0xa>
 80021a4:	4b0a      	ldr	r3, [pc, #40]	; (80021d0 <_reset_init+0x48>)
 80021a6:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80021aa:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80021ae:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80021b2:	f503 730c 	add.w	r3, r3, #560	; 0x230
 80021b6:	685a      	ldr	r2, [r3, #4]
 80021b8:	f022 4240 	bic.w	r2, r2, #3221225472	; 0xc0000000
 80021bc:	605a      	str	r2, [r3, #4]
 80021be:	f7ff bef7 	b.w	8001fb0 <main>
 80021c2:	bf00      	nop
 80021c4:	20000000 	.word	0x20000000
 80021c8:	20000034 	.word	0x20000034
 80021cc:	08002e3c 	.word	0x08002e3c
 80021d0:	e000ed00 	.word	0xe000ed00

080021d4 <GPIO_Init>:
 80021d4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021d6:	bf00      	nop
 80021d8:	bf00      	nop
 80021da:	bf00      	nop
 80021dc:	bf00      	nop
 80021de:	2300      	movs	r3, #0
 80021e0:	680e      	ldr	r6, [r1, #0]
 80021e2:	461a      	mov	r2, r3
 80021e4:	2501      	movs	r5, #1
 80021e6:	4095      	lsls	r5, r2
 80021e8:	ea05 0406 	and.w	r4, r5, r6
 80021ec:	42ac      	cmp	r4, r5
 80021ee:	d130      	bne.n	8002252 <GPIO_Init+0x7e>
 80021f0:	790d      	ldrb	r5, [r1, #4]
 80021f2:	1e6f      	subs	r7, r5, #1
 80021f4:	2f01      	cmp	r7, #1
 80021f6:	d81c      	bhi.n	8002232 <GPIO_Init+0x5e>
 80021f8:	bf00      	nop
 80021fa:	f04f 0c03 	mov.w	ip, #3
 80021fe:	6887      	ldr	r7, [r0, #8]
 8002200:	fa0c fc03 	lsl.w	ip, ip, r3
 8002204:	ea27 070c 	bic.w	r7, r7, ip
 8002208:	6087      	str	r7, [r0, #8]
 800220a:	f891 c005 	ldrb.w	ip, [r1, #5]
 800220e:	6887      	ldr	r7, [r0, #8]
 8002210:	fa0c fc03 	lsl.w	ip, ip, r3
 8002214:	ea4c 0707 	orr.w	r7, ip, r7
 8002218:	6087      	str	r7, [r0, #8]
 800221a:	bf00      	nop
 800221c:	8887      	ldrh	r7, [r0, #4]
 800221e:	b2bf      	uxth	r7, r7
 8002220:	ea27 0404 	bic.w	r4, r7, r4
 8002224:	8084      	strh	r4, [r0, #4]
 8002226:	798c      	ldrb	r4, [r1, #6]
 8002228:	8887      	ldrh	r7, [r0, #4]
 800222a:	4094      	lsls	r4, r2
 800222c:	433c      	orrs	r4, r7
 800222e:	b2a4      	uxth	r4, r4
 8002230:	8084      	strh	r4, [r0, #4]
 8002232:	2403      	movs	r4, #3
 8002234:	6807      	ldr	r7, [r0, #0]
 8002236:	409c      	lsls	r4, r3
 8002238:	43e4      	mvns	r4, r4
 800223a:	4027      	ands	r7, r4
 800223c:	6007      	str	r7, [r0, #0]
 800223e:	6807      	ldr	r7, [r0, #0]
 8002240:	409d      	lsls	r5, r3
 8002242:	433d      	orrs	r5, r7
 8002244:	6005      	str	r5, [r0, #0]
 8002246:	68c5      	ldr	r5, [r0, #12]
 8002248:	402c      	ands	r4, r5
 800224a:	79cd      	ldrb	r5, [r1, #7]
 800224c:	409d      	lsls	r5, r3
 800224e:	432c      	orrs	r4, r5
 8002250:	60c4      	str	r4, [r0, #12]
 8002252:	3201      	adds	r2, #1
 8002254:	2a10      	cmp	r2, #16
 8002256:	f103 0302 	add.w	r3, r3, #2
 800225a:	d1c3      	bne.n	80021e4 <GPIO_Init+0x10>
 800225c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800225e <GPIO_SetBits>:
 800225e:	bf00      	nop
 8002260:	bf00      	nop
 8002262:	6181      	str	r1, [r0, #24]
 8002264:	4770      	bx	lr

08002266 <GPIO_PinAFConfig>:
 8002266:	b510      	push	{r4, lr}
 8002268:	bf00      	nop
 800226a:	bf00      	nop
 800226c:	bf00      	nop
 800226e:	f001 0307 	and.w	r3, r1, #7
 8002272:	08c9      	lsrs	r1, r1, #3
 8002274:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002278:	009b      	lsls	r3, r3, #2
 800227a:	6a04      	ldr	r4, [r0, #32]
 800227c:	210f      	movs	r1, #15
 800227e:	4099      	lsls	r1, r3
 8002280:	ea24 0101 	bic.w	r1, r4, r1
 8002284:	6201      	str	r1, [r0, #32]
 8002286:	6a01      	ldr	r1, [r0, #32]
 8002288:	fa02 f303 	lsl.w	r3, r2, r3
 800228c:	430b      	orrs	r3, r1
 800228e:	6203      	str	r3, [r0, #32]
 8002290:	bd10      	pop	{r4, pc}
	...

08002294 <EXTI_Init>:
 8002294:	b570      	push	{r4, r5, r6, lr}
 8002296:	bf00      	nop
 8002298:	bf00      	nop
 800229a:	bf00      	nop
 800229c:	bf00      	nop
 800229e:	7983      	ldrb	r3, [r0, #6]
 80022a0:	6802      	ldr	r2, [r0, #0]
 80022a2:	7904      	ldrb	r4, [r0, #4]
 80022a4:	2b00      	cmp	r3, #0
 80022a6:	d064      	beq.n	8002372 <EXTI_Init+0xde>
 80022a8:	f022 011f 	bic.w	r1, r2, #31
 80022ac:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80022b0:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80022b4:	2301      	movs	r3, #1
 80022b6:	680d      	ldr	r5, [r1, #0]
 80022b8:	f002 021f 	and.w	r2, r2, #31
 80022bc:	fa03 f202 	lsl.w	r2, r3, r2
 80022c0:	ea25 0202 	bic.w	r2, r5, r2
 80022c4:	600a      	str	r2, [r1, #0]
 80022c6:	6805      	ldr	r5, [r0, #0]
 80022c8:	4a32      	ldr	r2, [pc, #200]	; (8002394 <EXTI_Init+0x100>)
 80022ca:	f025 011f 	bic.w	r1, r5, #31
 80022ce:	f005 051f 	and.w	r5, r5, #31
 80022d2:	588e      	ldr	r6, [r1, r2]
 80022d4:	fa03 f505 	lsl.w	r5, r3, r5
 80022d8:	ea26 0505 	bic.w	r5, r6, r5
 80022dc:	508d      	str	r5, [r1, r2]
 80022de:	6805      	ldr	r5, [r0, #0]
 80022e0:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80022e4:	f025 011f 	bic.w	r1, r5, #31
 80022e8:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80022ec:	f005 051f 	and.w	r5, r5, #31
 80022f0:	5854      	ldr	r4, [r2, r1]
 80022f2:	fa03 f505 	lsl.w	r5, r3, r5
 80022f6:	4325      	orrs	r5, r4
 80022f8:	5055      	str	r5, [r2, r1]
 80022fa:	6801      	ldr	r1, [r0, #0]
 80022fc:	4d26      	ldr	r5, [pc, #152]	; (8002398 <EXTI_Init+0x104>)
 80022fe:	f021 021f 	bic.w	r2, r1, #31
 8002302:	f001 011f 	and.w	r1, r1, #31
 8002306:	5954      	ldr	r4, [r2, r5]
 8002308:	fa03 f101 	lsl.w	r1, r3, r1
 800230c:	ea24 0101 	bic.w	r1, r4, r1
 8002310:	5151      	str	r1, [r2, r5]
 8002312:	6801      	ldr	r1, [r0, #0]
 8002314:	4c21      	ldr	r4, [pc, #132]	; (800239c <EXTI_Init+0x108>)
 8002316:	f021 021f 	bic.w	r2, r1, #31
 800231a:	f001 011f 	and.w	r1, r1, #31
 800231e:	5916      	ldr	r6, [r2, r4]
 8002320:	fa03 f101 	lsl.w	r1, r3, r1
 8002324:	ea26 0101 	bic.w	r1, r6, r1
 8002328:	5111      	str	r1, [r2, r4]
 800232a:	7942      	ldrb	r2, [r0, #5]
 800232c:	6801      	ldr	r1, [r0, #0]
 800232e:	2a10      	cmp	r2, #16
 8002330:	d112      	bne.n	8002358 <EXTI_Init+0xc4>
 8002332:	f021 021f 	bic.w	r2, r1, #31
 8002336:	f001 011f 	and.w	r1, r1, #31
 800233a:	5956      	ldr	r6, [r2, r5]
 800233c:	fa03 f101 	lsl.w	r1, r3, r1
 8002340:	4331      	orrs	r1, r6
 8002342:	5151      	str	r1, [r2, r5]
 8002344:	6801      	ldr	r1, [r0, #0]
 8002346:	f021 021f 	bic.w	r2, r1, #31
 800234a:	f001 011f 	and.w	r1, r1, #31
 800234e:	5910      	ldr	r0, [r2, r4]
 8002350:	408b      	lsls	r3, r1
 8002352:	4303      	orrs	r3, r0
 8002354:	5113      	str	r3, [r2, r4]
 8002356:	bd70      	pop	{r4, r5, r6, pc}
 8002358:	f102 4280 	add.w	r2, r2, #1073741824	; 0x40000000
 800235c:	f021 001f 	bic.w	r0, r1, #31
 8002360:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002364:	f001 011f 	and.w	r1, r1, #31
 8002368:	5814      	ldr	r4, [r2, r0]
 800236a:	408b      	lsls	r3, r1
 800236c:	4323      	orrs	r3, r4
 800236e:	5013      	str	r3, [r2, r0]
 8002370:	bd70      	pop	{r4, r5, r6, pc}
 8002372:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8002376:	f022 011f 	bic.w	r1, r2, #31
 800237a:	f503 3382 	add.w	r3, r3, #66560	; 0x10400
 800237e:	f002 021f 	and.w	r2, r2, #31
 8002382:	5858      	ldr	r0, [r3, r1]
 8002384:	2401      	movs	r4, #1
 8002386:	fa04 f202 	lsl.w	r2, r4, r2
 800238a:	ea20 0202 	bic.w	r2, r0, r2
 800238e:	505a      	str	r2, [r3, r1]
 8002390:	bd70      	pop	{r4, r5, r6, pc}
 8002392:	bf00      	nop
 8002394:	40010404 	.word	0x40010404
 8002398:	40010408 	.word	0x40010408
 800239c:	4001040c 	.word	0x4001040c

080023a0 <EXTI_ClearITPendingBit>:
 80023a0:	f020 021f 	bic.w	r2, r0, #31
 80023a4:	2301      	movs	r3, #1
 80023a6:	f000 001f 	and.w	r0, r0, #31
 80023aa:	fa03 f000 	lsl.w	r0, r3, r0
 80023ae:	4b01      	ldr	r3, [pc, #4]	; (80023b4 <EXTI_ClearITPendingBit+0x14>)
 80023b0:	50d0      	str	r0, [r2, r3]
 80023b2:	4770      	bx	lr
 80023b4:	40010414 	.word	0x40010414

080023b8 <SystemInit>:
 80023b8:	4b39      	ldr	r3, [pc, #228]	; (80024a0 <SystemInit+0xe8>)
 80023ba:	f8d3 2088 	ldr.w	r2, [r3, #136]	; 0x88
 80023be:	f442 0270 	orr.w	r2, r2, #15728640	; 0xf00000
 80023c2:	f8c3 2088 	str.w	r2, [r3, #136]	; 0x88
 80023c6:	4b37      	ldr	r3, [pc, #220]	; (80024a4 <SystemInit+0xec>)
 80023c8:	681a      	ldr	r2, [r3, #0]
 80023ca:	f042 0201 	orr.w	r2, r2, #1
 80023ce:	601a      	str	r2, [r3, #0]
 80023d0:	6859      	ldr	r1, [r3, #4]
 80023d2:	4a35      	ldr	r2, [pc, #212]	; (80024a8 <SystemInit+0xf0>)
 80023d4:	400a      	ands	r2, r1
 80023d6:	605a      	str	r2, [r3, #4]
 80023d8:	681a      	ldr	r2, [r3, #0]
 80023da:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 80023de:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 80023e2:	601a      	str	r2, [r3, #0]
 80023e4:	681a      	ldr	r2, [r3, #0]
 80023e6:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80023ea:	601a      	str	r2, [r3, #0]
 80023ec:	685a      	ldr	r2, [r3, #4]
 80023ee:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80023f2:	605a      	str	r2, [r3, #4]
 80023f4:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80023f6:	f022 020f 	bic.w	r2, r2, #15
 80023fa:	62da      	str	r2, [r3, #44]	; 0x2c
 80023fc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023fe:	4a2b      	ldr	r2, [pc, #172]	; (80024ac <SystemInit+0xf4>)
 8002400:	b082      	sub	sp, #8
 8002402:	400a      	ands	r2, r1
 8002404:	631a      	str	r2, [r3, #48]	; 0x30
 8002406:	2200      	movs	r2, #0
 8002408:	609a      	str	r2, [r3, #8]
 800240a:	9200      	str	r2, [sp, #0]
 800240c:	9201      	str	r2, [sp, #4]
 800240e:	681a      	ldr	r2, [r3, #0]
 8002410:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002414:	601a      	str	r2, [r3, #0]
 8002416:	681a      	ldr	r2, [r3, #0]
 8002418:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 800241c:	9201      	str	r2, [sp, #4]
 800241e:	9a00      	ldr	r2, [sp, #0]
 8002420:	3201      	adds	r2, #1
 8002422:	9200      	str	r2, [sp, #0]
 8002424:	9a01      	ldr	r2, [sp, #4]
 8002426:	b91a      	cbnz	r2, 8002430 <SystemInit+0x78>
 8002428:	9a00      	ldr	r2, [sp, #0]
 800242a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 800242e:	d1f2      	bne.n	8002416 <SystemInit+0x5e>
 8002430:	681a      	ldr	r2, [r3, #0]
 8002432:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002436:	bf18      	it	ne
 8002438:	2201      	movne	r2, #1
 800243a:	9201      	str	r2, [sp, #4]
 800243c:	9a01      	ldr	r2, [sp, #4]
 800243e:	2a01      	cmp	r2, #1
 8002440:	d005      	beq.n	800244e <SystemInit+0x96>
 8002442:	4b17      	ldr	r3, [pc, #92]	; (80024a0 <SystemInit+0xe8>)
 8002444:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002448:	609a      	str	r2, [r3, #8]
 800244a:	b002      	add	sp, #8
 800244c:	4770      	bx	lr
 800244e:	4a18      	ldr	r2, [pc, #96]	; (80024b0 <SystemInit+0xf8>)
 8002450:	2112      	movs	r1, #18
 8002452:	6011      	str	r1, [r2, #0]
 8002454:	685a      	ldr	r2, [r3, #4]
 8002456:	605a      	str	r2, [r3, #4]
 8002458:	685a      	ldr	r2, [r3, #4]
 800245a:	605a      	str	r2, [r3, #4]
 800245c:	685a      	ldr	r2, [r3, #4]
 800245e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002462:	605a      	str	r2, [r3, #4]
 8002464:	685a      	ldr	r2, [r3, #4]
 8002466:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800246a:	605a      	str	r2, [r3, #4]
 800246c:	685a      	ldr	r2, [r3, #4]
 800246e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002472:	605a      	str	r2, [r3, #4]
 8002474:	681a      	ldr	r2, [r3, #0]
 8002476:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800247a:	601a      	str	r2, [r3, #0]
 800247c:	6819      	ldr	r1, [r3, #0]
 800247e:	4a09      	ldr	r2, [pc, #36]	; (80024a4 <SystemInit+0xec>)
 8002480:	0189      	lsls	r1, r1, #6
 8002482:	d5fb      	bpl.n	800247c <SystemInit+0xc4>
 8002484:	6851      	ldr	r1, [r2, #4]
 8002486:	f021 0103 	bic.w	r1, r1, #3
 800248a:	6051      	str	r1, [r2, #4]
 800248c:	6851      	ldr	r1, [r2, #4]
 800248e:	f041 0102 	orr.w	r1, r1, #2
 8002492:	6051      	str	r1, [r2, #4]
 8002494:	685a      	ldr	r2, [r3, #4]
 8002496:	f002 020c 	and.w	r2, r2, #12
 800249a:	2a08      	cmp	r2, #8
 800249c:	d1fa      	bne.n	8002494 <SystemInit+0xdc>
 800249e:	e7d0      	b.n	8002442 <SystemInit+0x8a>
 80024a0:	e000ed00 	.word	0xe000ed00
 80024a4:	40021000 	.word	0x40021000
 80024a8:	f87fc00c 	.word	0xf87fc00c
 80024ac:	ff00fccc 	.word	0xff00fccc
 80024b0:	40022000 	.word	0x40022000

080024b4 <core_yield>:
 80024b4:	bf00      	nop
 80024b6:	4770      	bx	lr

080024b8 <sytem_clock_init>:
 80024b8:	f7ff bf7e 	b.w	80023b8 <SystemInit>

080024bc <SYSCFG_EXTILineConfig>:
 80024bc:	b510      	push	{r4, lr}
 80024be:	bf00      	nop
 80024c0:	bf00      	nop
 80024c2:	f001 0303 	and.w	r3, r1, #3
 80024c6:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 80024ca:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80024ce:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 80024d2:	009b      	lsls	r3, r3, #2
 80024d4:	688c      	ldr	r4, [r1, #8]
 80024d6:	220f      	movs	r2, #15
 80024d8:	409a      	lsls	r2, r3
 80024da:	ea24 0202 	bic.w	r2, r4, r2
 80024de:	608a      	str	r2, [r1, #8]
 80024e0:	688a      	ldr	r2, [r1, #8]
 80024e2:	fa00 f303 	lsl.w	r3, r0, r3
 80024e6:	4313      	orrs	r3, r2
 80024e8:	608b      	str	r3, [r1, #8]
 80024ea:	bd10      	pop	{r4, pc}

080024ec <RCC_GetClocksFreq>:
 80024ec:	4aaf      	ldr	r2, [pc, #700]	; (80027ac <RCC_GetClocksFreq+0x2c0>)
 80024ee:	6851      	ldr	r1, [r2, #4]
 80024f0:	f001 010c 	and.w	r1, r1, #12
 80024f4:	2904      	cmp	r1, #4
 80024f6:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80024fa:	d005      	beq.n	8002508 <RCC_GetClocksFreq+0x1c>
 80024fc:	2908      	cmp	r1, #8
 80024fe:	d006      	beq.n	800250e <RCC_GetClocksFreq+0x22>
 8002500:	4bab      	ldr	r3, [pc, #684]	; (80027b0 <RCC_GetClocksFreq+0x2c4>)
 8002502:	6003      	str	r3, [r0, #0]
 8002504:	b9b9      	cbnz	r1, 8002536 <RCC_GetClocksFreq+0x4a>
 8002506:	e017      	b.n	8002538 <RCC_GetClocksFreq+0x4c>
 8002508:	4ba9      	ldr	r3, [pc, #676]	; (80027b0 <RCC_GetClocksFreq+0x2c4>)
 800250a:	6003      	str	r3, [r0, #0]
 800250c:	e013      	b.n	8002536 <RCC_GetClocksFreq+0x4a>
 800250e:	6853      	ldr	r3, [r2, #4]
 8002510:	6854      	ldr	r4, [r2, #4]
 8002512:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8002516:	03e6      	lsls	r6, r4, #15
 8002518:	f103 0302 	add.w	r3, r3, #2
 800251c:	d401      	bmi.n	8002522 <RCC_GetClocksFreq+0x36>
 800251e:	49a5      	ldr	r1, [pc, #660]	; (80027b4 <RCC_GetClocksFreq+0x2c8>)
 8002520:	e006      	b.n	8002530 <RCC_GetClocksFreq+0x44>
 8002522:	6ad1      	ldr	r1, [r2, #44]	; 0x2c
 8002524:	4ca2      	ldr	r4, [pc, #648]	; (80027b0 <RCC_GetClocksFreq+0x2c4>)
 8002526:	f001 010f 	and.w	r1, r1, #15
 800252a:	3101      	adds	r1, #1
 800252c:	fbb4 f1f1 	udiv	r1, r4, r1
 8002530:	4359      	muls	r1, r3
 8002532:	6001      	str	r1, [r0, #0]
 8002534:	e000      	b.n	8002538 <RCC_GetClocksFreq+0x4c>
 8002536:	2100      	movs	r1, #0
 8002538:	6853      	ldr	r3, [r2, #4]
 800253a:	4e9f      	ldr	r6, [pc, #636]	; (80027b8 <RCC_GetClocksFreq+0x2cc>)
 800253c:	f8df 827c 	ldr.w	r8, [pc, #636]	; 80027bc <RCC_GetClocksFreq+0x2d0>
 8002540:	f3c3 1303 	ubfx	r3, r3, #4, #4
 8002544:	5cf5      	ldrb	r5, [r6, r3]
 8002546:	6803      	ldr	r3, [r0, #0]
 8002548:	b2ed      	uxtb	r5, r5
 800254a:	fa23 f405 	lsr.w	r4, r3, r5
 800254e:	6044      	str	r4, [r0, #4]
 8002550:	6857      	ldr	r7, [r2, #4]
 8002552:	f3c7 2702 	ubfx	r7, r7, #8, #3
 8002556:	5df7      	ldrb	r7, [r6, r7]
 8002558:	fa24 f707 	lsr.w	r7, r4, r7
 800255c:	6087      	str	r7, [r0, #8]
 800255e:	f8d2 c004 	ldr.w	ip, [r2, #4]
 8002562:	f3cc 2cc2 	ubfx	ip, ip, #11, #3
 8002566:	f816 600c 	ldrb.w	r6, [r6, ip]
 800256a:	b2f6      	uxtb	r6, r6
 800256c:	40f4      	lsrs	r4, r6
 800256e:	60c4      	str	r4, [r0, #12]
 8002570:	f8d2 902c 	ldr.w	r9, [r2, #44]	; 0x2c
 8002574:	f3c9 1904 	ubfx	r9, r9, #4, #5
 8002578:	f009 0c0f 	and.w	ip, r9, #15
 800257c:	f019 0f10 	tst.w	r9, #16
 8002580:	f838 c01c 	ldrh.w	ip, [r8, ip, lsl #1]
 8002584:	46c1      	mov	r9, r8
 8002586:	fa1f fc8c 	uxth.w	ip, ip
 800258a:	d007      	beq.n	800259c <RCC_GetClocksFreq+0xb0>
 800258c:	f1bc 0f00 	cmp.w	ip, #0
 8002590:	d004      	beq.n	800259c <RCC_GetClocksFreq+0xb0>
 8002592:	fbb1 fcfc 	udiv	ip, r1, ip
 8002596:	f8c0 c010 	str.w	ip, [r0, #16]
 800259a:	e000      	b.n	800259e <RCC_GetClocksFreq+0xb2>
 800259c:	6103      	str	r3, [r0, #16]
 800259e:	f8d2 802c 	ldr.w	r8, [r2, #44]	; 0x2c
 80025a2:	f3c8 2844 	ubfx	r8, r8, #9, #5
 80025a6:	f008 0c0f 	and.w	ip, r8, #15
 80025aa:	f018 0f10 	tst.w	r8, #16
 80025ae:	f839 c01c 	ldrh.w	ip, [r9, ip, lsl #1]
 80025b2:	fa1f fc8c 	uxth.w	ip, ip
 80025b6:	d007      	beq.n	80025c8 <RCC_GetClocksFreq+0xdc>
 80025b8:	f1bc 0f00 	cmp.w	ip, #0
 80025bc:	d004      	beq.n	80025c8 <RCC_GetClocksFreq+0xdc>
 80025be:	fbb1 fcfc 	udiv	ip, r1, ip
 80025c2:	f8c0 c014 	str.w	ip, [r0, #20]
 80025c6:	e000      	b.n	80025ca <RCC_GetClocksFreq+0xde>
 80025c8:	6143      	str	r3, [r0, #20]
 80025ca:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025ce:	f01c 0f10 	tst.w	ip, #16
 80025d2:	bf06      	itte	eq
 80025d4:	f8df c1d8 	ldreq.w	ip, [pc, #472]	; 80027b0 <RCC_GetClocksFreq+0x2c4>
 80025d8:	f8c0 c018 	streq.w	ip, [r0, #24]
 80025dc:	6183      	strne	r3, [r0, #24]
 80025de:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025e2:	f01c 0f20 	tst.w	ip, #32
 80025e6:	bf06      	itte	eq
 80025e8:	f8df c1c4 	ldreq.w	ip, [pc, #452]	; 80027b0 <RCC_GetClocksFreq+0x2c4>
 80025ec:	f8c0 c01c 	streq.w	ip, [r0, #28]
 80025f0:	61c3      	strne	r3, [r0, #28]
 80025f2:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80025f6:	f01c 0f40 	tst.w	ip, #64	; 0x40
 80025fa:	bf06      	itte	eq
 80025fc:	f8df c1b0 	ldreq.w	ip, [pc, #432]	; 80027b0 <RCC_GetClocksFreq+0x2c4>
 8002600:	f8c0 c020 	streq.w	ip, [r0, #32]
 8002604:	6203      	strne	r3, [r0, #32]
 8002606:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 800260a:	f41c 7f80 	tst.w	ip, #256	; 0x100
 800260e:	d008      	beq.n	8002622 <RCC_GetClocksFreq+0x136>
 8002610:	428b      	cmp	r3, r1
 8002612:	d106      	bne.n	8002622 <RCC_GetClocksFreq+0x136>
 8002614:	42ae      	cmp	r6, r5
 8002616:	d104      	bne.n	8002622 <RCC_GetClocksFreq+0x136>
 8002618:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800261c:	f8c0 c024 	str.w	ip, [r0, #36]	; 0x24
 8002620:	e000      	b.n	8002624 <RCC_GetClocksFreq+0x138>
 8002622:	6244      	str	r4, [r0, #36]	; 0x24
 8002624:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002628:	f41c 5f80 	tst.w	ip, #4096	; 0x1000
 800262c:	d008      	beq.n	8002640 <RCC_GetClocksFreq+0x154>
 800262e:	428b      	cmp	r3, r1
 8002630:	d106      	bne.n	8002640 <RCC_GetClocksFreq+0x154>
 8002632:	42ae      	cmp	r6, r5
 8002634:	d104      	bne.n	8002640 <RCC_GetClocksFreq+0x154>
 8002636:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 800263a:	f8c0 c028 	str.w	ip, [r0, #40]	; 0x28
 800263e:	e000      	b.n	8002642 <RCC_GetClocksFreq+0x156>
 8002640:	6284      	str	r4, [r0, #40]	; 0x28
 8002642:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002646:	f41c 7f00 	tst.w	ip, #512	; 0x200
 800264a:	d008      	beq.n	800265e <RCC_GetClocksFreq+0x172>
 800264c:	428b      	cmp	r3, r1
 800264e:	d106      	bne.n	800265e <RCC_GetClocksFreq+0x172>
 8002650:	42ae      	cmp	r6, r5
 8002652:	d104      	bne.n	800265e <RCC_GetClocksFreq+0x172>
 8002654:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002658:	f8c0 c02c 	str.w	ip, [r0, #44]	; 0x2c
 800265c:	e000      	b.n	8002660 <RCC_GetClocksFreq+0x174>
 800265e:	62c4      	str	r4, [r0, #44]	; 0x2c
 8002660:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002664:	f41c 6f80 	tst.w	ip, #1024	; 0x400
 8002668:	d008      	beq.n	800267c <RCC_GetClocksFreq+0x190>
 800266a:	428b      	cmp	r3, r1
 800266c:	d106      	bne.n	800267c <RCC_GetClocksFreq+0x190>
 800266e:	42ae      	cmp	r6, r5
 8002670:	d104      	bne.n	800267c <RCC_GetClocksFreq+0x190>
 8002672:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002676:	f8c0 c04c 	str.w	ip, [r0, #76]	; 0x4c
 800267a:	e000      	b.n	800267e <RCC_GetClocksFreq+0x192>
 800267c:	64c4      	str	r4, [r0, #76]	; 0x4c
 800267e:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 8002682:	f41c 6f00 	tst.w	ip, #2048	; 0x800
 8002686:	d008      	beq.n	800269a <RCC_GetClocksFreq+0x1ae>
 8002688:	428b      	cmp	r3, r1
 800268a:	d106      	bne.n	800269a <RCC_GetClocksFreq+0x1ae>
 800268c:	42ae      	cmp	r6, r5
 800268e:	d104      	bne.n	800269a <RCC_GetClocksFreq+0x1ae>
 8002690:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8002694:	f8c0 c050 	str.w	ip, [r0, #80]	; 0x50
 8002698:	e000      	b.n	800269c <RCC_GetClocksFreq+0x1b0>
 800269a:	6504      	str	r4, [r0, #80]	; 0x50
 800269c:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80026a0:	f41c 5f00 	tst.w	ip, #8192	; 0x2000
 80026a4:	d008      	beq.n	80026b8 <RCC_GetClocksFreq+0x1cc>
 80026a6:	428b      	cmp	r3, r1
 80026a8:	d106      	bne.n	80026b8 <RCC_GetClocksFreq+0x1cc>
 80026aa:	42ae      	cmp	r6, r5
 80026ac:	d104      	bne.n	80026b8 <RCC_GetClocksFreq+0x1cc>
 80026ae:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80026b2:	f8c0 c054 	str.w	ip, [r0, #84]	; 0x54
 80026b6:	e000      	b.n	80026ba <RCC_GetClocksFreq+0x1ce>
 80026b8:	6504      	str	r4, [r0, #80]	; 0x50
 80026ba:	f8d2 c030 	ldr.w	ip, [r2, #48]	; 0x30
 80026be:	f41c 4f00 	tst.w	ip, #32768	; 0x8000
 80026c2:	d006      	beq.n	80026d2 <RCC_GetClocksFreq+0x1e6>
 80026c4:	428b      	cmp	r3, r1
 80026c6:	d104      	bne.n	80026d2 <RCC_GetClocksFreq+0x1e6>
 80026c8:	42ae      	cmp	r6, r5
 80026ca:	d102      	bne.n	80026d2 <RCC_GetClocksFreq+0x1e6>
 80026cc:	0059      	lsls	r1, r3, #1
 80026ce:	6581      	str	r1, [r0, #88]	; 0x58
 80026d0:	e000      	b.n	80026d4 <RCC_GetClocksFreq+0x1e8>
 80026d2:	6584      	str	r4, [r0, #88]	; 0x58
 80026d4:	6b15      	ldr	r5, [r2, #48]	; 0x30
 80026d6:	4935      	ldr	r1, [pc, #212]	; (80027ac <RCC_GetClocksFreq+0x2c0>)
 80026d8:	07ad      	lsls	r5, r5, #30
 80026da:	d101      	bne.n	80026e0 <RCC_GetClocksFreq+0x1f4>
 80026dc:	6384      	str	r4, [r0, #56]	; 0x38
 80026de:	e015      	b.n	800270c <RCC_GetClocksFreq+0x220>
 80026e0:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80026e2:	f004 0403 	and.w	r4, r4, #3
 80026e6:	2c01      	cmp	r4, #1
 80026e8:	d101      	bne.n	80026ee <RCC_GetClocksFreq+0x202>
 80026ea:	6383      	str	r3, [r0, #56]	; 0x38
 80026ec:	e00e      	b.n	800270c <RCC_GetClocksFreq+0x220>
 80026ee:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80026f0:	f004 0403 	and.w	r4, r4, #3
 80026f4:	2c02      	cmp	r4, #2
 80026f6:	d102      	bne.n	80026fe <RCC_GetClocksFreq+0x212>
 80026f8:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80026fc:	e005      	b.n	800270a <RCC_GetClocksFreq+0x21e>
 80026fe:	6b09      	ldr	r1, [r1, #48]	; 0x30
 8002700:	f001 0103 	and.w	r1, r1, #3
 8002704:	2903      	cmp	r1, #3
 8002706:	d101      	bne.n	800270c <RCC_GetClocksFreq+0x220>
 8002708:	4929      	ldr	r1, [pc, #164]	; (80027b0 <RCC_GetClocksFreq+0x2c4>)
 800270a:	6381      	str	r1, [r0, #56]	; 0x38
 800270c:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800270e:	4927      	ldr	r1, [pc, #156]	; (80027ac <RCC_GetClocksFreq+0x2c0>)
 8002710:	f414 3f40 	tst.w	r4, #196608	; 0x30000
 8002714:	d101      	bne.n	800271a <RCC_GetClocksFreq+0x22e>
 8002716:	63c7      	str	r7, [r0, #60]	; 0x3c
 8002718:	e018      	b.n	800274c <RCC_GetClocksFreq+0x260>
 800271a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800271c:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002720:	f5b4 3f80 	cmp.w	r4, #65536	; 0x10000
 8002724:	d101      	bne.n	800272a <RCC_GetClocksFreq+0x23e>
 8002726:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002728:	e010      	b.n	800274c <RCC_GetClocksFreq+0x260>
 800272a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800272c:	f404 3440 	and.w	r4, r4, #196608	; 0x30000
 8002730:	f5b4 3f00 	cmp.w	r4, #131072	; 0x20000
 8002734:	d102      	bne.n	800273c <RCC_GetClocksFreq+0x250>
 8002736:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800273a:	e006      	b.n	800274a <RCC_GetClocksFreq+0x25e>
 800273c:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800273e:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8002742:	f5b1 3f40 	cmp.w	r1, #196608	; 0x30000
 8002746:	d101      	bne.n	800274c <RCC_GetClocksFreq+0x260>
 8002748:	4919      	ldr	r1, [pc, #100]	; (80027b0 <RCC_GetClocksFreq+0x2c4>)
 800274a:	63c1      	str	r1, [r0, #60]	; 0x3c
 800274c:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800274e:	4917      	ldr	r1, [pc, #92]	; (80027ac <RCC_GetClocksFreq+0x2c0>)
 8002750:	f414 2f40 	tst.w	r4, #786432	; 0xc0000
 8002754:	d101      	bne.n	800275a <RCC_GetClocksFreq+0x26e>
 8002756:	6407      	str	r7, [r0, #64]	; 0x40
 8002758:	e018      	b.n	800278c <RCC_GetClocksFreq+0x2a0>
 800275a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800275c:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8002760:	f5b4 2f80 	cmp.w	r4, #262144	; 0x40000
 8002764:	d101      	bne.n	800276a <RCC_GetClocksFreq+0x27e>
 8002766:	6403      	str	r3, [r0, #64]	; 0x40
 8002768:	e010      	b.n	800278c <RCC_GetClocksFreq+0x2a0>
 800276a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800276c:	f404 2440 	and.w	r4, r4, #786432	; 0xc0000
 8002770:	f5b4 2f00 	cmp.w	r4, #524288	; 0x80000
 8002774:	d102      	bne.n	800277c <RCC_GetClocksFreq+0x290>
 8002776:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800277a:	e006      	b.n	800278a <RCC_GetClocksFreq+0x29e>
 800277c:	6b09      	ldr	r1, [r1, #48]	; 0x30
 800277e:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002782:	f5b1 2f40 	cmp.w	r1, #786432	; 0xc0000
 8002786:	d101      	bne.n	800278c <RCC_GetClocksFreq+0x2a0>
 8002788:	4909      	ldr	r1, [pc, #36]	; (80027b0 <RCC_GetClocksFreq+0x2c4>)
 800278a:	6401      	str	r1, [r0, #64]	; 0x40
 800278c:	6b14      	ldr	r4, [r2, #48]	; 0x30
 800278e:	4907      	ldr	r1, [pc, #28]	; (80027ac <RCC_GetClocksFreq+0x2c0>)
 8002790:	f414 1f40 	tst.w	r4, #3145728	; 0x300000
 8002794:	d101      	bne.n	800279a <RCC_GetClocksFreq+0x2ae>
 8002796:	6447      	str	r7, [r0, #68]	; 0x44
 8002798:	e023      	b.n	80027e2 <RCC_GetClocksFreq+0x2f6>
 800279a:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 800279c:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80027a0:	f5b4 1f80 	cmp.w	r4, #1048576	; 0x100000
 80027a4:	d10c      	bne.n	80027c0 <RCC_GetClocksFreq+0x2d4>
 80027a6:	6443      	str	r3, [r0, #68]	; 0x44
 80027a8:	e01b      	b.n	80027e2 <RCC_GetClocksFreq+0x2f6>
 80027aa:	bf00      	nop
 80027ac:	40021000 	.word	0x40021000
 80027b0:	007a1200 	.word	0x007a1200
 80027b4:	003d0900 	.word	0x003d0900
 80027b8:	20000024 	.word	0x20000024
 80027bc:	20000004 	.word	0x20000004
 80027c0:	6b0c      	ldr	r4, [r1, #48]	; 0x30
 80027c2:	f404 1440 	and.w	r4, r4, #3145728	; 0x300000
 80027c6:	f5b4 1f00 	cmp.w	r4, #2097152	; 0x200000
 80027ca:	d102      	bne.n	80027d2 <RCC_GetClocksFreq+0x2e6>
 80027cc:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80027d0:	e006      	b.n	80027e0 <RCC_GetClocksFreq+0x2f4>
 80027d2:	6b09      	ldr	r1, [r1, #48]	; 0x30
 80027d4:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80027d8:	f5b1 1f40 	cmp.w	r1, #3145728	; 0x300000
 80027dc:	d101      	bne.n	80027e2 <RCC_GetClocksFreq+0x2f6>
 80027de:	4911      	ldr	r1, [pc, #68]	; (8002824 <RCC_GetClocksFreq+0x338>)
 80027e0:	6441      	str	r1, [r0, #68]	; 0x44
 80027e2:	6b12      	ldr	r2, [r2, #48]	; 0x30
 80027e4:	4910      	ldr	r1, [pc, #64]	; (8002828 <RCC_GetClocksFreq+0x33c>)
 80027e6:	f412 0f40 	tst.w	r2, #12582912	; 0xc00000
 80027ea:	d102      	bne.n	80027f2 <RCC_GetClocksFreq+0x306>
 80027ec:	6487      	str	r7, [r0, #72]	; 0x48
 80027ee:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80027f2:	6b0a      	ldr	r2, [r1, #48]	; 0x30
 80027f4:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80027f8:	f5b2 0f80 	cmp.w	r2, #4194304	; 0x400000
 80027fc:	d00f      	beq.n	800281e <RCC_GetClocksFreq+0x332>
 80027fe:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8002800:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002804:	f5b3 0f00 	cmp.w	r3, #8388608	; 0x800000
 8002808:	d102      	bne.n	8002810 <RCC_GetClocksFreq+0x324>
 800280a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800280e:	e006      	b.n	800281e <RCC_GetClocksFreq+0x332>
 8002810:	6b0b      	ldr	r3, [r1, #48]	; 0x30
 8002812:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8002816:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 800281a:	d101      	bne.n	8002820 <RCC_GetClocksFreq+0x334>
 800281c:	4b01      	ldr	r3, [pc, #4]	; (8002824 <RCC_GetClocksFreq+0x338>)
 800281e:	6483      	str	r3, [r0, #72]	; 0x48
 8002820:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8002824:	007a1200 	.word	0x007a1200
 8002828:	40021000 	.word	0x40021000

0800282c <RCC_AHBPeriphClockCmd>:
 800282c:	bf00      	nop
 800282e:	bf00      	nop
 8002830:	4b04      	ldr	r3, [pc, #16]	; (8002844 <RCC_AHBPeriphClockCmd+0x18>)
 8002832:	695a      	ldr	r2, [r3, #20]
 8002834:	b109      	cbz	r1, 800283a <RCC_AHBPeriphClockCmd+0xe>
 8002836:	4310      	orrs	r0, r2
 8002838:	e001      	b.n	800283e <RCC_AHBPeriphClockCmd+0x12>
 800283a:	ea22 0000 	bic.w	r0, r2, r0
 800283e:	6158      	str	r0, [r3, #20]
 8002840:	4770      	bx	lr
 8002842:	bf00      	nop
 8002844:	40021000 	.word	0x40021000

08002848 <RCC_APB2PeriphClockCmd>:
 8002848:	bf00      	nop
 800284a:	bf00      	nop
 800284c:	4b04      	ldr	r3, [pc, #16]	; (8002860 <RCC_APB2PeriphClockCmd+0x18>)
 800284e:	699a      	ldr	r2, [r3, #24]
 8002850:	b109      	cbz	r1, 8002856 <RCC_APB2PeriphClockCmd+0xe>
 8002852:	4310      	orrs	r0, r2
 8002854:	e001      	b.n	800285a <RCC_APB2PeriphClockCmd+0x12>
 8002856:	ea22 0000 	bic.w	r0, r2, r0
 800285a:	6198      	str	r0, [r3, #24]
 800285c:	4770      	bx	lr
 800285e:	bf00      	nop
 8002860:	40021000 	.word	0x40021000

08002864 <RCC_APB1PeriphClockCmd>:
 8002864:	bf00      	nop
 8002866:	bf00      	nop
 8002868:	4b04      	ldr	r3, [pc, #16]	; (800287c <RCC_APB1PeriphClockCmd+0x18>)
 800286a:	69da      	ldr	r2, [r3, #28]
 800286c:	b109      	cbz	r1, 8002872 <RCC_APB1PeriphClockCmd+0xe>
 800286e:	4310      	orrs	r0, r2
 8002870:	e001      	b.n	8002876 <RCC_APB1PeriphClockCmd+0x12>
 8002872:	ea22 0000 	bic.w	r0, r2, r0
 8002876:	61d8      	str	r0, [r3, #28]
 8002878:	4770      	bx	lr
 800287a:	bf00      	nop
 800287c:	40021000 	.word	0x40021000

08002880 <USART_Init>:
 8002880:	b530      	push	{r4, r5, lr}
 8002882:	4604      	mov	r4, r0
 8002884:	b099      	sub	sp, #100	; 0x64
 8002886:	460d      	mov	r5, r1
 8002888:	bf00      	nop
 800288a:	bf00      	nop
 800288c:	bf00      	nop
 800288e:	bf00      	nop
 8002890:	bf00      	nop
 8002892:	bf00      	nop
 8002894:	bf00      	nop
 8002896:	6803      	ldr	r3, [r0, #0]
 8002898:	f023 0301 	bic.w	r3, r3, #1
 800289c:	6003      	str	r3, [r0, #0]
 800289e:	6842      	ldr	r2, [r0, #4]
 80028a0:	688b      	ldr	r3, [r1, #8]
 80028a2:	68c9      	ldr	r1, [r1, #12]
 80028a4:	f422 5240 	bic.w	r2, r2, #12288	; 0x3000
 80028a8:	4313      	orrs	r3, r2
 80028aa:	6043      	str	r3, [r0, #4]
 80028ac:	686a      	ldr	r2, [r5, #4]
 80028ae:	6803      	ldr	r3, [r0, #0]
 80028b0:	4311      	orrs	r1, r2
 80028b2:	692a      	ldr	r2, [r5, #16]
 80028b4:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80028b8:	430a      	orrs	r2, r1
 80028ba:	f023 030c 	bic.w	r3, r3, #12
 80028be:	4313      	orrs	r3, r2
 80028c0:	6003      	str	r3, [r0, #0]
 80028c2:	6882      	ldr	r2, [r0, #8]
 80028c4:	696b      	ldr	r3, [r5, #20]
 80028c6:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 80028ca:	4313      	orrs	r3, r2
 80028cc:	6083      	str	r3, [r0, #8]
 80028ce:	a801      	add	r0, sp, #4
 80028d0:	f7ff fe0c 	bl	80024ec <RCC_GetClocksFreq>
 80028d4:	4b17      	ldr	r3, [pc, #92]	; (8002934 <USART_Init+0xb4>)
 80028d6:	429c      	cmp	r4, r3
 80028d8:	d101      	bne.n	80028de <USART_Init+0x5e>
 80028da:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80028dc:	e00e      	b.n	80028fc <USART_Init+0x7c>
 80028de:	4b16      	ldr	r3, [pc, #88]	; (8002938 <USART_Init+0xb8>)
 80028e0:	429c      	cmp	r4, r3
 80028e2:	d101      	bne.n	80028e8 <USART_Init+0x68>
 80028e4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80028e6:	e009      	b.n	80028fc <USART_Init+0x7c>
 80028e8:	4b14      	ldr	r3, [pc, #80]	; (800293c <USART_Init+0xbc>)
 80028ea:	429c      	cmp	r4, r3
 80028ec:	d101      	bne.n	80028f2 <USART_Init+0x72>
 80028ee:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80028f0:	e004      	b.n	80028fc <USART_Init+0x7c>
 80028f2:	4b13      	ldr	r3, [pc, #76]	; (8002940 <USART_Init+0xc0>)
 80028f4:	429c      	cmp	r4, r3
 80028f6:	bf0c      	ite	eq
 80028f8:	9a12      	ldreq	r2, [sp, #72]	; 0x48
 80028fa:	9a13      	ldrne	r2, [sp, #76]	; 0x4c
 80028fc:	6823      	ldr	r3, [r4, #0]
 80028fe:	6829      	ldr	r1, [r5, #0]
 8002900:	f413 4f00 	tst.w	r3, #32768	; 0x8000
 8002904:	bf18      	it	ne
 8002906:	0052      	lslne	r2, r2, #1
 8002908:	fbb2 f3f1 	udiv	r3, r2, r1
 800290c:	fb01 2213 	mls	r2, r1, r3, r2
 8002910:	ebb2 0f51 	cmp.w	r2, r1, lsr #1
 8002914:	6822      	ldr	r2, [r4, #0]
 8002916:	bf28      	it	cs
 8002918:	3301      	addcs	r3, #1
 800291a:	0412      	lsls	r2, r2, #16
 800291c:	d506      	bpl.n	800292c <USART_Init+0xac>
 800291e:	f64f 72f0 	movw	r2, #65520	; 0xfff0
 8002922:	f3c3 0142 	ubfx	r1, r3, #1, #3
 8002926:	401a      	ands	r2, r3
 8002928:	ea41 0302 	orr.w	r3, r1, r2
 800292c:	b29b      	uxth	r3, r3
 800292e:	81a3      	strh	r3, [r4, #12]
 8002930:	b019      	add	sp, #100	; 0x64
 8002932:	bd30      	pop	{r4, r5, pc}
 8002934:	40013800 	.word	0x40013800
 8002938:	40004400 	.word	0x40004400
 800293c:	40004800 	.word	0x40004800
 8002940:	40004c00 	.word	0x40004c00

08002944 <USART_Cmd>:
 8002944:	bf00      	nop
 8002946:	bf00      	nop
 8002948:	6803      	ldr	r3, [r0, #0]
 800294a:	b111      	cbz	r1, 8002952 <USART_Cmd+0xe>
 800294c:	f043 0301 	orr.w	r3, r3, #1
 8002950:	e001      	b.n	8002956 <USART_Cmd+0x12>
 8002952:	f023 0301 	bic.w	r3, r3, #1
 8002956:	6003      	str	r3, [r0, #0]
 8002958:	4770      	bx	lr

0800295a <USART_ReceiveData>:
 800295a:	bf00      	nop
 800295c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800295e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002962:	4770      	bx	lr

08002964 <USART_ITConfig>:
 8002964:	b510      	push	{r4, lr}
 8002966:	bf00      	nop
 8002968:	bf00      	nop
 800296a:	bf00      	nop
 800296c:	f3c1 2307 	ubfx	r3, r1, #8, #8
 8002970:	2401      	movs	r4, #1
 8002972:	b2c9      	uxtb	r1, r1
 8002974:	2b02      	cmp	r3, #2
 8002976:	fa04 f101 	lsl.w	r1, r4, r1
 800297a:	d101      	bne.n	8002980 <USART_ITConfig+0x1c>
 800297c:	3004      	adds	r0, #4
 800297e:	e002      	b.n	8002986 <USART_ITConfig+0x22>
 8002980:	2b03      	cmp	r3, #3
 8002982:	bf08      	it	eq
 8002984:	3008      	addeq	r0, #8
 8002986:	6803      	ldr	r3, [r0, #0]
 8002988:	b10a      	cbz	r2, 800298e <USART_ITConfig+0x2a>
 800298a:	4319      	orrs	r1, r3
 800298c:	e001      	b.n	8002992 <USART_ITConfig+0x2e>
 800298e:	ea23 0101 	bic.w	r1, r3, r1
 8002992:	6001      	str	r1, [r0, #0]
 8002994:	bd10      	pop	{r4, pc}

08002996 <USART_GetITStatus>:
 8002996:	b510      	push	{r4, lr}
 8002998:	bf00      	nop
 800299a:	bf00      	nop
 800299c:	2401      	movs	r4, #1
 800299e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80029a2:	b2cb      	uxtb	r3, r1
 80029a4:	42a2      	cmp	r2, r4
 80029a6:	fa04 f303 	lsl.w	r3, r4, r3
 80029aa:	d101      	bne.n	80029b0 <USART_GetITStatus+0x1a>
 80029ac:	6802      	ldr	r2, [r0, #0]
 80029ae:	e003      	b.n	80029b8 <USART_GetITStatus+0x22>
 80029b0:	2a02      	cmp	r2, #2
 80029b2:	bf0c      	ite	eq
 80029b4:	6842      	ldreq	r2, [r0, #4]
 80029b6:	6882      	ldrne	r2, [r0, #8]
 80029b8:	4013      	ands	r3, r2
 80029ba:	69c2      	ldr	r2, [r0, #28]
 80029bc:	b143      	cbz	r3, 80029d0 <USART_GetITStatus+0x3a>
 80029be:	2301      	movs	r3, #1
 80029c0:	0c09      	lsrs	r1, r1, #16
 80029c2:	fa03 f101 	lsl.w	r1, r3, r1
 80029c6:	4211      	tst	r1, r2
 80029c8:	bf0c      	ite	eq
 80029ca:	2000      	moveq	r0, #0
 80029cc:	2001      	movne	r0, #1
 80029ce:	bd10      	pop	{r4, pc}
 80029d0:	4618      	mov	r0, r3
 80029d2:	bd10      	pop	{r4, pc}

080029d4 <USART_ClearITPendingBit>:
 80029d4:	bf00      	nop
 80029d6:	bf00      	nop
 80029d8:	2301      	movs	r3, #1
 80029da:	0c09      	lsrs	r1, r1, #16
 80029dc:	fa03 f101 	lsl.w	r1, r3, r1
 80029e0:	6201      	str	r1, [r0, #32]
 80029e2:	4770      	bx	lr

080029e4 <NVIC_Init>:
 80029e4:	b510      	push	{r4, lr}
 80029e6:	bf00      	nop
 80029e8:	bf00      	nop
 80029ea:	bf00      	nop
 80029ec:	78c2      	ldrb	r2, [r0, #3]
 80029ee:	7803      	ldrb	r3, [r0, #0]
 80029f0:	b30a      	cbz	r2, 8002a36 <NVIC_Init+0x52>
 80029f2:	4a16      	ldr	r2, [pc, #88]	; (8002a4c <NVIC_Init+0x68>)
 80029f4:	7844      	ldrb	r4, [r0, #1]
 80029f6:	68d2      	ldr	r2, [r2, #12]
 80029f8:	43d2      	mvns	r2, r2
 80029fa:	f3c2 2202 	ubfx	r2, r2, #8, #3
 80029fe:	f1c2 0104 	rsb	r1, r2, #4
 8002a02:	b2c9      	uxtb	r1, r1
 8002a04:	fa04 f101 	lsl.w	r1, r4, r1
 8002a08:	240f      	movs	r4, #15
 8002a0a:	fa44 f202 	asr.w	r2, r4, r2
 8002a0e:	7884      	ldrb	r4, [r0, #2]
 8002a10:	b2c9      	uxtb	r1, r1
 8002a12:	4022      	ands	r2, r4
 8002a14:	430a      	orrs	r2, r1
 8002a16:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002a1a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002a1e:	0112      	lsls	r2, r2, #4
 8002a20:	b2d2      	uxtb	r2, r2
 8002a22:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002a26:	7803      	ldrb	r3, [r0, #0]
 8002a28:	2201      	movs	r2, #1
 8002a2a:	0959      	lsrs	r1, r3, #5
 8002a2c:	f003 031f 	and.w	r3, r3, #31
 8002a30:	fa02 f303 	lsl.w	r3, r2, r3
 8002a34:	e006      	b.n	8002a44 <NVIC_Init+0x60>
 8002a36:	0959      	lsrs	r1, r3, #5
 8002a38:	2201      	movs	r2, #1
 8002a3a:	f003 031f 	and.w	r3, r3, #31
 8002a3e:	fa02 f303 	lsl.w	r3, r2, r3
 8002a42:	3120      	adds	r1, #32
 8002a44:	4a02      	ldr	r2, [pc, #8]	; (8002a50 <NVIC_Init+0x6c>)
 8002a46:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002a4a:	bd10      	pop	{r4, pc}
 8002a4c:	e000ed00 	.word	0xe000ed00
 8002a50:	e000e100 	.word	0xe000e100

08002a54 <TIM_TimeBaseInit>:
 8002a54:	bf00      	nop
 8002a56:	bf00      	nop
 8002a58:	bf00      	nop
 8002a5a:	4a24      	ldr	r2, [pc, #144]	; (8002aec <TIM_TimeBaseInit+0x98>)
 8002a5c:	8803      	ldrh	r3, [r0, #0]
 8002a5e:	4290      	cmp	r0, r2
 8002a60:	b29b      	uxth	r3, r3
 8002a62:	d012      	beq.n	8002a8a <TIM_TimeBaseInit+0x36>
 8002a64:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002a68:	4290      	cmp	r0, r2
 8002a6a:	d00e      	beq.n	8002a8a <TIM_TimeBaseInit+0x36>
 8002a6c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002a70:	d00b      	beq.n	8002a8a <TIM_TimeBaseInit+0x36>
 8002a72:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8002a76:	4290      	cmp	r0, r2
 8002a78:	d007      	beq.n	8002a8a <TIM_TimeBaseInit+0x36>
 8002a7a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002a7e:	4290      	cmp	r0, r2
 8002a80:	d003      	beq.n	8002a8a <TIM_TimeBaseInit+0x36>
 8002a82:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8002a86:	4290      	cmp	r0, r2
 8002a88:	d103      	bne.n	8002a92 <TIM_TimeBaseInit+0x3e>
 8002a8a:	884a      	ldrh	r2, [r1, #2]
 8002a8c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002a90:	4313      	orrs	r3, r2
 8002a92:	4a17      	ldr	r2, [pc, #92]	; (8002af0 <TIM_TimeBaseInit+0x9c>)
 8002a94:	4290      	cmp	r0, r2
 8002a96:	d008      	beq.n	8002aaa <TIM_TimeBaseInit+0x56>
 8002a98:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002a9c:	4290      	cmp	r0, r2
 8002a9e:	d004      	beq.n	8002aaa <TIM_TimeBaseInit+0x56>
 8002aa0:	f423 7340 	bic.w	r3, r3, #768	; 0x300
 8002aa4:	890a      	ldrh	r2, [r1, #8]
 8002aa6:	b29b      	uxth	r3, r3
 8002aa8:	4313      	orrs	r3, r2
 8002aaa:	8003      	strh	r3, [r0, #0]
 8002aac:	684b      	ldr	r3, [r1, #4]
 8002aae:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002ab0:	880b      	ldrh	r3, [r1, #0]
 8002ab2:	8503      	strh	r3, [r0, #40]	; 0x28
 8002ab4:	4b0d      	ldr	r3, [pc, #52]	; (8002aec <TIM_TimeBaseInit+0x98>)
 8002ab6:	4298      	cmp	r0, r3
 8002ab8:	d013      	beq.n	8002ae2 <TIM_TimeBaseInit+0x8e>
 8002aba:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002abe:	4298      	cmp	r0, r3
 8002ac0:	d00f      	beq.n	8002ae2 <TIM_TimeBaseInit+0x8e>
 8002ac2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8002ac6:	4298      	cmp	r0, r3
 8002ac8:	d00b      	beq.n	8002ae2 <TIM_TimeBaseInit+0x8e>
 8002aca:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002ace:	4298      	cmp	r0, r3
 8002ad0:	d007      	beq.n	8002ae2 <TIM_TimeBaseInit+0x8e>
 8002ad2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002ad6:	4298      	cmp	r0, r3
 8002ad8:	d003      	beq.n	8002ae2 <TIM_TimeBaseInit+0x8e>
 8002ada:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002ade:	4298      	cmp	r0, r3
 8002ae0:	d101      	bne.n	8002ae6 <TIM_TimeBaseInit+0x92>
 8002ae2:	894b      	ldrh	r3, [r1, #10]
 8002ae4:	8603      	strh	r3, [r0, #48]	; 0x30
 8002ae6:	2301      	movs	r3, #1
 8002ae8:	6143      	str	r3, [r0, #20]
 8002aea:	4770      	bx	lr
 8002aec:	40012c00 	.word	0x40012c00
 8002af0:	40001000 	.word	0x40001000

08002af4 <TIM_Cmd>:
 8002af4:	bf00      	nop
 8002af6:	bf00      	nop
 8002af8:	8803      	ldrh	r3, [r0, #0]
 8002afa:	b119      	cbz	r1, 8002b04 <TIM_Cmd+0x10>
 8002afc:	b29b      	uxth	r3, r3
 8002afe:	f043 0301 	orr.w	r3, r3, #1
 8002b02:	e003      	b.n	8002b0c <TIM_Cmd+0x18>
 8002b04:	f023 0301 	bic.w	r3, r3, #1
 8002b08:	041b      	lsls	r3, r3, #16
 8002b0a:	0c1b      	lsrs	r3, r3, #16
 8002b0c:	8003      	strh	r3, [r0, #0]
 8002b0e:	4770      	bx	lr

08002b10 <TIM_OC1Init>:
 8002b10:	b530      	push	{r4, r5, lr}
 8002b12:	bf00      	nop
 8002b14:	bf00      	nop
 8002b16:	bf00      	nop
 8002b18:	bf00      	nop
 8002b1a:	6a03      	ldr	r3, [r0, #32]
 8002b1c:	680d      	ldr	r5, [r1, #0]
 8002b1e:	f023 0301 	bic.w	r3, r3, #1
 8002b22:	6203      	str	r3, [r0, #32]
 8002b24:	6a03      	ldr	r3, [r0, #32]
 8002b26:	6842      	ldr	r2, [r0, #4]
 8002b28:	6984      	ldr	r4, [r0, #24]
 8002b2a:	f424 3480 	bic.w	r4, r4, #65536	; 0x10000
 8002b2e:	f024 0473 	bic.w	r4, r4, #115	; 0x73
 8002b32:	432c      	orrs	r4, r5
 8002b34:	898d      	ldrh	r5, [r1, #12]
 8002b36:	f023 0302 	bic.w	r3, r3, #2
 8002b3a:	432b      	orrs	r3, r5
 8002b3c:	888d      	ldrh	r5, [r1, #4]
 8002b3e:	432b      	orrs	r3, r5
 8002b40:	4d15      	ldr	r5, [pc, #84]	; (8002b98 <TIM_OC1Init+0x88>)
 8002b42:	42a8      	cmp	r0, r5
 8002b44:	d00f      	beq.n	8002b66 <TIM_OC1Init+0x56>
 8002b46:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002b4a:	42a8      	cmp	r0, r5
 8002b4c:	d00b      	beq.n	8002b66 <TIM_OC1Init+0x56>
 8002b4e:	f505 6540 	add.w	r5, r5, #3072	; 0xc00
 8002b52:	42a8      	cmp	r0, r5
 8002b54:	d007      	beq.n	8002b66 <TIM_OC1Init+0x56>
 8002b56:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002b5a:	42a8      	cmp	r0, r5
 8002b5c:	d003      	beq.n	8002b66 <TIM_OC1Init+0x56>
 8002b5e:	f505 6580 	add.w	r5, r5, #1024	; 0x400
 8002b62:	42a8      	cmp	r0, r5
 8002b64:	d111      	bne.n	8002b8a <TIM_OC1Init+0x7a>
 8002b66:	bf00      	nop
 8002b68:	bf00      	nop
 8002b6a:	bf00      	nop
 8002b6c:	bf00      	nop
 8002b6e:	89cd      	ldrh	r5, [r1, #14]
 8002b70:	f023 0308 	bic.w	r3, r3, #8
 8002b74:	432b      	orrs	r3, r5
 8002b76:	88cd      	ldrh	r5, [r1, #6]
 8002b78:	f023 0304 	bic.w	r3, r3, #4
 8002b7c:	432b      	orrs	r3, r5
 8002b7e:	8a0d      	ldrh	r5, [r1, #16]
 8002b80:	f422 7240 	bic.w	r2, r2, #768	; 0x300
 8002b84:	432a      	orrs	r2, r5
 8002b86:	8a4d      	ldrh	r5, [r1, #18]
 8002b88:	432a      	orrs	r2, r5
 8002b8a:	6042      	str	r2, [r0, #4]
 8002b8c:	688a      	ldr	r2, [r1, #8]
 8002b8e:	6184      	str	r4, [r0, #24]
 8002b90:	6342      	str	r2, [r0, #52]	; 0x34
 8002b92:	6203      	str	r3, [r0, #32]
 8002b94:	bd30      	pop	{r4, r5, pc}
 8002b96:	bf00      	nop
 8002b98:	40012c00 	.word	0x40012c00

08002b9c <TIM_OC2Init>:
 8002b9c:	b570      	push	{r4, r5, r6, lr}
 8002b9e:	bf00      	nop
 8002ba0:	bf00      	nop
 8002ba2:	bf00      	nop
 8002ba4:	bf00      	nop
 8002ba6:	6a03      	ldr	r3, [r0, #32]
 8002ba8:	680d      	ldr	r5, [r1, #0]
 8002baa:	898e      	ldrh	r6, [r1, #12]
 8002bac:	f023 0310 	bic.w	r3, r3, #16
 8002bb0:	6203      	str	r3, [r0, #32]
 8002bb2:	6a03      	ldr	r3, [r0, #32]
 8002bb4:	6842      	ldr	r2, [r0, #4]
 8002bb6:	6984      	ldr	r4, [r0, #24]
 8002bb8:	f024 7480 	bic.w	r4, r4, #16777216	; 0x1000000
 8002bbc:	f424 44e6 	bic.w	r4, r4, #29440	; 0x7300
 8002bc0:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002bc4:	f023 0520 	bic.w	r5, r3, #32
 8002bc8:	888b      	ldrh	r3, [r1, #4]
 8002bca:	4333      	orrs	r3, r6
 8002bcc:	ea45 1303 	orr.w	r3, r5, r3, lsl #4
 8002bd0:	4d10      	ldr	r5, [pc, #64]	; (8002c14 <TIM_OC2Init+0x78>)
 8002bd2:	42a8      	cmp	r0, r5
 8002bd4:	d003      	beq.n	8002bde <TIM_OC2Init+0x42>
 8002bd6:	f505 6500 	add.w	r5, r5, #2048	; 0x800
 8002bda:	42a8      	cmp	r0, r5
 8002bdc:	d114      	bne.n	8002c08 <TIM_OC2Init+0x6c>
 8002bde:	bf00      	nop
 8002be0:	bf00      	nop
 8002be2:	bf00      	nop
 8002be4:	bf00      	nop
 8002be6:	89cd      	ldrh	r5, [r1, #14]
 8002be8:	8a0e      	ldrh	r6, [r1, #16]
 8002bea:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002bee:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002bf2:	88cd      	ldrh	r5, [r1, #6]
 8002bf4:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002bf8:	ea43 1305 	orr.w	r3, r3, r5, lsl #4
 8002bfc:	8a4d      	ldrh	r5, [r1, #18]
 8002bfe:	f422 6240 	bic.w	r2, r2, #3072	; 0xc00
 8002c02:	4335      	orrs	r5, r6
 8002c04:	ea42 0285 	orr.w	r2, r2, r5, lsl #2
 8002c08:	6042      	str	r2, [r0, #4]
 8002c0a:	688a      	ldr	r2, [r1, #8]
 8002c0c:	6184      	str	r4, [r0, #24]
 8002c0e:	6382      	str	r2, [r0, #56]	; 0x38
 8002c10:	6203      	str	r3, [r0, #32]
 8002c12:	bd70      	pop	{r4, r5, r6, pc}
 8002c14:	40012c00 	.word	0x40012c00

08002c18 <TIM_CtrlPWMOutputs>:
 8002c18:	bf00      	nop
 8002c1a:	bf00      	nop
 8002c1c:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002c1e:	b111      	cbz	r1, 8002c26 <TIM_CtrlPWMOutputs+0xe>
 8002c20:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002c24:	e001      	b.n	8002c2a <TIM_CtrlPWMOutputs+0x12>
 8002c26:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002c2a:	6443      	str	r3, [r0, #68]	; 0x44
 8002c2c:	4770      	bx	lr

08002c2e <TIM_ClearITPendingBit>:
 8002c2e:	bf00      	nop
 8002c30:	43c9      	mvns	r1, r1
 8002c32:	b289      	uxth	r1, r1
 8002c34:	6101      	str	r1, [r0, #16]
 8002c36:	4770      	bx	lr

08002c38 <scheduler>:
 8002c38:	b570      	push	{r4, r5, r6, lr}
 8002c3a:	2200      	movs	r2, #0
 8002c3c:	4611      	mov	r1, r2
 8002c3e:	4b15      	ldr	r3, [pc, #84]	; (8002c94 <scheduler+0x5c>)
 8002c40:	200c      	movs	r0, #12
 8002c42:	fb00 f501 	mul.w	r5, r0, r1
 8002c46:	195e      	adds	r6, r3, r5
 8002c48:	6874      	ldr	r4, [r6, #4]
 8002c4a:	f014 0f02 	tst.w	r4, #2
 8002c4e:	461c      	mov	r4, r3
 8002c50:	d10a      	bne.n	8002c68 <scheduler+0x30>
 8002c52:	6876      	ldr	r6, [r6, #4]
 8002c54:	07f6      	lsls	r6, r6, #31
 8002c56:	d507      	bpl.n	8002c68 <scheduler+0x30>
 8002c58:	4350      	muls	r0, r2
 8002c5a:	5b5d      	ldrh	r5, [r3, r5]
 8002c5c:	5a18      	ldrh	r0, [r3, r0]
 8002c5e:	b2ad      	uxth	r5, r5
 8002c60:	b280      	uxth	r0, r0
 8002c62:	4285      	cmp	r5, r0
 8002c64:	bf38      	it	cc
 8002c66:	460a      	movcc	r2, r1
 8002c68:	200c      	movs	r0, #12
 8002c6a:	4348      	muls	r0, r1
 8002c6c:	5a1d      	ldrh	r5, [r3, r0]
 8002c6e:	b2ad      	uxth	r5, r5
 8002c70:	b11d      	cbz	r5, 8002c7a <scheduler+0x42>
 8002c72:	5a1d      	ldrh	r5, [r3, r0]
 8002c74:	3d01      	subs	r5, #1
 8002c76:	b2ad      	uxth	r5, r5
 8002c78:	521d      	strh	r5, [r3, r0]
 8002c7a:	3101      	adds	r1, #1
 8002c7c:	2906      	cmp	r1, #6
 8002c7e:	d1de      	bne.n	8002c3e <scheduler+0x6>
 8002c80:	230c      	movs	r3, #12
 8002c82:	4353      	muls	r3, r2
 8002c84:	18e1      	adds	r1, r4, r3
 8002c86:	8849      	ldrh	r1, [r1, #2]
 8002c88:	b289      	uxth	r1, r1
 8002c8a:	52e1      	strh	r1, [r4, r3]
 8002c8c:	4b02      	ldr	r3, [pc, #8]	; (8002c98 <scheduler+0x60>)
 8002c8e:	601a      	str	r2, [r3, #0]
 8002c90:	bd70      	pop	{r4, r5, r6, pc}
 8002c92:	bf00      	nop
 8002c94:	200009b0 	.word	0x200009b0
 8002c98:	200009f8 	.word	0x200009f8

08002c9c <SysTick_Handler>:
 8002c9c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002ca0:	f3ef 8208 	mrs	r2, MSP
 8002ca4:	4c0d      	ldr	r4, [pc, #52]	; (8002cdc <SysTick_Handler+0x40>)
 8002ca6:	4d0e      	ldr	r5, [pc, #56]	; (8002ce0 <SysTick_Handler+0x44>)
 8002ca8:	6823      	ldr	r3, [r4, #0]
 8002caa:	3301      	adds	r3, #1
 8002cac:	d005      	beq.n	8002cba <SysTick_Handler+0x1e>
 8002cae:	6823      	ldr	r3, [r4, #0]
 8002cb0:	210c      	movs	r1, #12
 8002cb2:	fb01 5303 	mla	r3, r1, r3, r5
 8002cb6:	609a      	str	r2, [r3, #8]
 8002cb8:	e001      	b.n	8002cbe <SysTick_Handler+0x22>
 8002cba:	2300      	movs	r3, #0
 8002cbc:	6023      	str	r3, [r4, #0]
 8002cbe:	f7ff ffbb 	bl	8002c38 <scheduler>
 8002cc2:	6823      	ldr	r3, [r4, #0]
 8002cc4:	220c      	movs	r2, #12
 8002cc6:	fb02 5503 	mla	r5, r2, r3, r5
 8002cca:	f06f 0306 	mvn.w	r3, #6
 8002cce:	68aa      	ldr	r2, [r5, #8]
 8002cd0:	469e      	mov	lr, r3
 8002cd2:	f382 8808 	msr	MSP, r2
 8002cd6:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002cda:	4770      	bx	lr
 8002cdc:	200009f8 	.word	0x200009f8
 8002ce0:	200009b0 	.word	0x200009b0

08002ce4 <__aeabi_d2f>:
 8002ce4:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002ce8:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002cec:	bf24      	itt	cs
 8002cee:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002cf2:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002cf6:	d90d      	bls.n	8002d14 <__aeabi_d2f+0x30>
 8002cf8:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002cfc:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002d00:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002d04:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002d08:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002d0c:	bf08      	it	eq
 8002d0e:	f020 0001 	biceq.w	r0, r0, #1
 8002d12:	4770      	bx	lr
 8002d14:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002d18:	d121      	bne.n	8002d5e <__aeabi_d2f+0x7a>
 8002d1a:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002d1e:	bfbc      	itt	lt
 8002d20:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002d24:	4770      	bxlt	lr
 8002d26:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002d2a:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002d2e:	f1c2 0218 	rsb	r2, r2, #24
 8002d32:	f1c2 0c20 	rsb	ip, r2, #32
 8002d36:	fa10 f30c 	lsls.w	r3, r0, ip
 8002d3a:	fa20 f002 	lsr.w	r0, r0, r2
 8002d3e:	bf18      	it	ne
 8002d40:	f040 0001 	orrne.w	r0, r0, #1
 8002d44:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002d48:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002d4c:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002d50:	ea40 000c 	orr.w	r0, r0, ip
 8002d54:	fa23 f302 	lsr.w	r3, r3, r2
 8002d58:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002d5c:	e7cc      	b.n	8002cf8 <__aeabi_d2f+0x14>
 8002d5e:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002d62:	d107      	bne.n	8002d74 <__aeabi_d2f+0x90>
 8002d64:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002d68:	bf1e      	ittt	ne
 8002d6a:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002d6e:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002d72:	4770      	bxne	lr
 8002d74:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002d78:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002d7c:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002d80:	4770      	bx	lr
 8002d82:	bf00      	nop

08002d84 <_init>:
 8002d84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002d86:	bf00      	nop
 8002d88:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002d8a:	bc08      	pop	{r3}
 8002d8c:	469e      	mov	lr, r3
 8002d8e:	4770      	bx	lr

08002d90 <_fini>:
 8002d90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002d92:	bf00      	nop
 8002d94:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002d96:	bc08      	pop	{r3}
 8002d98:	469e      	mov	lr, r3
 8002d9a:	4770      	bx	lr
 8002d9c:	61646f6b 	.word	0x61646f6b
 8002da0:	6920616d 	.word	0x6920616d
 8002da4:	2074696e 	.word	0x2074696e
 8002da8:	25206925 	.word	0x25206925
 8002dac:	203a2069 	.word	0x203a2069
 8002db0:	4f5b2000 	.word	0x4f5b2000
 8002db4:	000a5d4b 	.word	0x000a5d4b
 8002db8:	41465b20 	.word	0x41465b20
 8002dbc:	44454c49 	.word	0x44454c49
 8002dc0:	000a0a5d 	.word	0x000a0a5d
 8002dc4:	74737973 	.word	0x74737973
 8002dc8:	74206d65 	.word	0x74206d65
 8002dcc:	20656d69 	.word	0x20656d69
 8002dd0:	5b207525 	.word	0x5b207525
 8002dd4:	0a5d736d 	.word	0x0a5d736d
 8002dd8:	20692500 	.word	0x20692500
 8002ddc:	0a206925 	.word	0x0a206925
 8002de0:	00          	.byte	0x00
 8002de1:	74          	.byte	0x74
 8002de2:	7365      	.short	0x7365
 8002de4:	676e6974 	.word	0x676e6974
 8002de8:	6d756e20 	.word	0x6d756e20
 8002dec:	20726562 	.word	0x20726562
 8002df0:	6e697270 	.word	0x6e697270
 8002df4:	75252074 	.word	0x75252074
 8002df8:	20752520 	.word	0x20752520
 8002dfc:	0a3a7525 	.word	0x0a3a7525
 8002e00:	6f6c6600 	.word	0x6f6c6600
 8002e04:	6e207461 	.word	0x6e207461
 8002e08:	65626d75 	.word	0x65626d75
 8002e0c:	66252072 	.word	0x66252072
 8002e10:	25000a20 	.word	0x25000a20
 8002e14:	66252066 	.word	0x66252066
 8002e18:	20662520 	.word	0x20662520
 8002e1c:	25206625 	.word	0x25206625
 8002e20:	66252066 	.word	0x66252066
 8002e24:	20662520 	.word	0x20662520
 8002e28:	000a6625 	.word	0x000a6625
 8002e2c:	656c6469 	.word	0x656c6469
 8002e30:	0a752520 	.word	0x0a752520
 8002e34:	00000000 	.word	0x00000000

08002e38 <__EH_FRAME_BEGIN__>:
 8002e38:	00000000                                ....
