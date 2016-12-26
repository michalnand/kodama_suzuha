
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b538      	push	{r3, r4, r5, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 fc10 	bl	80019b0 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd38      	pop	{r3, r4, r5, pc}
 800019c:	f204 55a4 	addw	r5, r4, #1444	; 0x5a4
 80001a0:	4628      	mov	r0, r5
 80001a2:	f001 fad7 	bl	8001754 <_ZN4CI2C4initEv>
 80001a6:	4620      	mov	r0, r4
 80001a8:	f001 fcd6 	bl	8001b58 <_ZN9CTerminal13terminal_initEv>
 80001ac:	2800      	cmp	r0, #0
 80001ae:	da03      	bge.n	80001b8 <_ZN7CKodama5init_Ev+0x30>
 80001b0:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001b4:	3820      	subs	r0, #32
 80001b6:	bd38      	pop	{r3, r4, r5, pc}
 80001b8:	4820      	ldr	r0, [pc, #128]	; (800023c <_ZN7CKodama5init_Ev+0xb4>)
 80001ba:	f000 fd89 	bl	8000cd0 <_ZN6CTimer10timer_initEv>
 80001be:	2800      	cmp	r0, #0
 80001c0:	da03      	bge.n	80001ca <_ZN7CKodama5init_Ev+0x42>
 80001c2:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001c6:	3830      	subs	r0, #48	; 0x30
 80001c8:	bd38      	pop	{r3, r4, r5, pc}
 80001ca:	4620      	mov	r0, r4
 80001cc:	f001 f832 	bl	8001234 <_ZN6CMotor10motor_initEv>
 80001d0:	2800      	cmp	r0, #0
 80001d2:	da03      	bge.n	80001dc <_ZN7CKodama5init_Ev+0x54>
 80001d4:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001d8:	3840      	subs	r0, #64	; 0x40
 80001da:	bd38      	pop	{r3, r4, r5, pc}
 80001dc:	f104 0008 	add.w	r0, r4, #8
 80001e0:	f000 ff24 	bl	800102c <_ZN4CRGB8rgb_initEv>
 80001e4:	2800      	cmp	r0, #0
 80001e6:	da03      	bge.n	80001f0 <_ZN7CKodama5init_Ev+0x68>
 80001e8:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001ec:	3850      	subs	r0, #80	; 0x50
 80001ee:	bd38      	pop	{r3, r4, r5, pc}
 80001f0:	f504 709c 	add.w	r0, r4, #312	; 0x138
 80001f4:	4629      	mov	r1, r5
 80001f6:	f000 fa59 	bl	80006ac <_ZN4CIMU8imu_initEP4CI2C>
 80001fa:	2800      	cmp	r0, #0
 80001fc:	da03      	bge.n	8000206 <_ZN7CKodama5init_Ev+0x7e>
 80001fe:	f5a0 406a 	sub.w	r0, r0, #59904	; 0xea00
 8000202:	3860      	subs	r0, #96	; 0x60
 8000204:	bd38      	pop	{r3, r4, r5, pc}
 8000206:	4620      	mov	r0, r4
 8000208:	f000 facc 	bl	80007a4 <_ZN7CCamera11camera_initEv>
 800020c:	f504 70be 	add.w	r0, r4, #380	; 0x17c
 8000210:	4629      	mov	r1, r5
 8000212:	f000 f98b 	bl	800052c <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C>
 8000216:	2800      	cmp	r0, #0
 8000218:	da04      	bge.n	8000224 <_ZN7CKodama5init_Ev+0x9c>
 800021a:	f5a0 3088 	sub.w	r0, r0, #69632	; 0x11000
 800021e:	f5a0 70b8 	sub.w	r0, r0, #368	; 0x170
 8000222:	bd38      	pop	{r3, r4, r5, pc}
 8000224:	f504 60b0 	add.w	r0, r4, #1408	; 0x580
 8000228:	4629      	mov	r1, r5
 800022a:	f000 fc33 	bl	8000a94 <_ZN8CVL53L0X10laser_initEP4CI2C>
 800022e:	2800      	cmp	r0, #0
 8000230:	bfbc      	itt	lt
 8000232:	f5a0 309c 	sublt.w	r0, r0, #79872	; 0x13800
 8000236:	3880      	sublt	r0, #128	; 0x80
 8000238:	bd38      	pop	{r3, r4, r5, pc}
 800023a:	bf00      	nop
 800023c:	20000c28 	.word	0x20000c28

08000240 <_ZN7CKodama4initEv>:
 8000240:	b570      	push	{r4, r5, r6, lr}
 8000242:	4605      	mov	r5, r0
 8000244:	2400      	movs	r4, #0
 8000246:	4628      	mov	r0, r5
 8000248:	f7ff ff9e 	bl	8000188 <_ZN7CKodama5init_Ev>
 800024c:	4606      	mov	r6, r0
 800024e:	490a      	ldr	r1, [pc, #40]	; (8000278 <_ZN7CKodama4initEv+0x38>)
 8000250:	4628      	mov	r0, r5
 8000252:	4622      	mov	r2, r4
 8000254:	4633      	mov	r3, r6
 8000256:	f001 fd97 	bl	8001d88 <_ZN9CTerminal6printfEPKcz>
 800025a:	4628      	mov	r0, r5
 800025c:	b91e      	cbnz	r6, 8000266 <_ZN7CKodama4initEv+0x26>
 800025e:	4907      	ldr	r1, [pc, #28]	; (800027c <_ZN7CKodama4initEv+0x3c>)
 8000260:	f001 fd92 	bl	8001d88 <_ZN9CTerminal6printfEPKcz>
 8000264:	e005      	b.n	8000272 <_ZN7CKodama4initEv+0x32>
 8000266:	4906      	ldr	r1, [pc, #24]	; (8000280 <_ZN7CKodama4initEv+0x40>)
 8000268:	3401      	adds	r4, #1
 800026a:	f001 fd8d 	bl	8001d88 <_ZN9CTerminal6printfEPKcz>
 800026e:	2c08      	cmp	r4, #8
 8000270:	d1e9      	bne.n	8000246 <_ZN7CKodama4initEv+0x6>
 8000272:	4630      	mov	r0, r6
 8000274:	bd70      	pop	{r4, r5, r6, pc}
 8000276:	bf00      	nop
 8000278:	08003254 	.word	0x08003254
 800027c:	08003269 	.word	0x08003269
 8000280:	08003270 	.word	0x08003270

08000284 <_ZN7CKodama5sleepEv>:
 8000284:	f000 bf6a 	b.w	800115c <_ZN6CMotor11motor_sleepEv>

08000288 <_ZN7CKodama6wakeupEv>:
 8000288:	b510      	push	{r4, lr}
 800028a:	2100      	movs	r1, #0
 800028c:	4604      	mov	r4, r0
 800028e:	460a      	mov	r2, r1
 8000290:	f000 ffc6 	bl	8001220 <_ZN6CMotor9set_motorEml>
 8000294:	4620      	mov	r0, r4
 8000296:	2101      	movs	r1, #1
 8000298:	2200      	movs	r2, #0
 800029a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800029e:	f000 bfbf 	b.w	8001220 <_ZN6CMotor9set_motorEml>

080002a2 <_ZN7CKodama6set_dtEl>:
 80002a2:	f8c0 1598 	str.w	r1, [r0, #1432]	; 0x598
 80002a6:	4770      	bx	lr

080002a8 <_ZN4CPID4initEffff>:
 80002a8:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
 80002ac:	ee70 0a20 	vadd.f32	s1, s0, s1
 80002b0:	ee91 0a67 	vfnma.f32	s0, s2, s15
 80002b4:	2300      	movs	r3, #0
 80002b6:	6003      	str	r3, [r0, #0]
 80002b8:	ee70 0a81 	vadd.f32	s1, s1, s2
 80002bc:	6043      	str	r3, [r0, #4]
 80002be:	6083      	str	r3, [r0, #8]
 80002c0:	edc0 0a03 	vstr	s1, [r0, #12]
 80002c4:	ed80 0a04 	vstr	s0, [r0, #16]
 80002c8:	ed80 1a05 	vstr	s2, [r0, #20]
 80002cc:	6183      	str	r3, [r0, #24]
 80002ce:	edc0 1a07 	vstr	s3, [r0, #28]
 80002d2:	4770      	bx	lr

080002d4 <_ZN4CPIDC1Effff>:
 80002d4:	b510      	push	{r4, lr}
 80002d6:	4604      	mov	r4, r0
 80002d8:	f7ff ffe6 	bl	80002a8 <_ZN4CPID4initEffff>
 80002dc:	4620      	mov	r0, r4
 80002de:	bd10      	pop	{r4, pc}

080002e0 <_ZN4CPID7processEf>:
 80002e0:	edd0 7a00 	vldr	s15, [r0]
 80002e4:	edd0 6a04 	vldr	s13, [r0, #16]
 80002e8:	ed90 7a01 	vldr	s14, [r0, #4]
 80002ec:	edc0 7a01 	vstr	s15, [r0, #4]
 80002f0:	ee67 7aa6 	vmul.f32	s15, s15, s13
 80002f4:	edd0 6a03 	vldr	s13, [r0, #12]
 80002f8:	ed80 7a02 	vstr	s14, [r0, #8]
 80002fc:	eee6 7a80 	vfma.f32	s15, s13, s0
 8000300:	edd0 6a05 	vldr	s13, [r0, #20]
 8000304:	ed80 0a00 	vstr	s0, [r0]
 8000308:	eee6 7a87 	vfma.f32	s15, s13, s14
 800030c:	ed90 7a06 	vldr	s14, [r0, #24]
 8000310:	ee77 7a87 	vadd.f32	s15, s15, s14
 8000314:	ed90 7a07 	vldr	s14, [r0, #28]
 8000318:	edc0 7a06 	vstr	s15, [r0, #24]
 800031c:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000320:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000324:	bfc8      	it	gt
 8000326:	ed80 7a06 	vstrgt	s14, [r0, #24]
 800032a:	edd0 7a06 	vldr	s15, [r0, #24]
 800032e:	eeb1 7a47 	vneg.f32	s14, s14
 8000332:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000336:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800033a:	bf48      	it	mi
 800033c:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000340:	ed90 0a06 	vldr	s0, [r0, #24]
 8000344:	4770      	bx	lr

08000346 <_ZN5CMath3absEf>:
 8000346:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 800034a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800034e:	bf48      	it	mi
 8000350:	eeb1 0a40 	vnegmi.f32	s0, s0
 8000354:	4770      	bx	lr

08000356 <_Z17bitmap_decompressPhjj>:
 8000356:	0112      	lsls	r2, r2, #4
 8000358:	eb02 02d1 	add.w	r2, r2, r1, lsr #3
 800035c:	f001 0107 	and.w	r1, r1, #7
 8000360:	5c80      	ldrb	r0, [r0, r2]
 8000362:	4108      	asrs	r0, r1
 8000364:	f000 0001 	and.w	r0, r0, #1
 8000368:	4770      	bx	lr

0800036a <_ZN12CSSD1306OLED14oled_lcd_clearEv>:
 800036a:	b510      	push	{r4, lr}
 800036c:	f500 6280 	add.w	r2, r0, #1024	; 0x400
 8000370:	2300      	movs	r3, #0
 8000372:	18c1      	adds	r1, r0, r3
 8000374:	3301      	adds	r3, #1
 8000376:	2400      	movs	r4, #0
 8000378:	2b80      	cmp	r3, #128	; 0x80
 800037a:	710c      	strb	r4, [r1, #4]
 800037c:	d1f9      	bne.n	8000372 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x8>
 800037e:	3080      	adds	r0, #128	; 0x80
 8000380:	4290      	cmp	r0, r2
 8000382:	d1f5      	bne.n	8000370 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x6>
 8000384:	bd10      	pop	{r4, pc}

08000386 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>:
 8000386:	2980      	cmp	r1, #128	; 0x80
 8000388:	b570      	push	{r4, r5, r6, lr}
 800038a:	d814      	bhi.n	80003b6 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x30>
 800038c:	2a40      	cmp	r2, #64	; 0x40
 800038e:	d812      	bhi.n	80003b6 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x30>
 8000390:	08d6      	lsrs	r6, r2, #3
 8000392:	01f6      	lsls	r6, r6, #7
 8000394:	1874      	adds	r4, r6, r1
 8000396:	4404      	add	r4, r0
 8000398:	f002 0207 	and.w	r2, r2, #7
 800039c:	2501      	movs	r5, #1
 800039e:	7924      	ldrb	r4, [r4, #4]
 80003a0:	4095      	lsls	r5, r2
 80003a2:	b11b      	cbz	r3, 80003ac <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x26>
 80003a4:	ea45 0304 	orr.w	r3, r5, r4
 80003a8:	b2db      	uxtb	r3, r3
 80003aa:	e001      	b.n	80003b0 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x2a>
 80003ac:	ea24 0305 	bic.w	r3, r4, r5
 80003b0:	4431      	add	r1, r6
 80003b2:	4408      	add	r0, r1
 80003b4:	7103      	strb	r3, [r0, #4]
 80003b6:	bd70      	pop	{r4, r5, r6, pc}

080003b8 <_ZN12CSSD1306OLED6setposEhh>:
 80003b8:	b570      	push	{r4, r5, r6, lr}
 80003ba:	4604      	mov	r4, r0
 80003bc:	6800      	ldr	r0, [r0, #0]
 80003be:	4615      	mov	r5, r2
 80003c0:	460e      	mov	r6, r1
 80003c2:	f001 f9ed 	bl	80017a0 <_ZN4CI2C5StartEv>
 80003c6:	6820      	ldr	r0, [r4, #0]
 80003c8:	2178      	movs	r1, #120	; 0x78
 80003ca:	f001 fa13 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80003ce:	6820      	ldr	r0, [r4, #0]
 80003d0:	2100      	movs	r1, #0
 80003d2:	f001 fa0f 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80003d6:	f105 010b 	add.w	r1, r5, #11
 80003da:	6820      	ldr	r0, [r4, #0]
 80003dc:	b2c9      	uxtb	r1, r1
 80003de:	f001 fa09 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80003e2:	0931      	lsrs	r1, r6, #4
 80003e4:	6820      	ldr	r0, [r4, #0]
 80003e6:	f041 0110 	orr.w	r1, r1, #16
 80003ea:	f001 fa03 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80003ee:	6820      	ldr	r0, [r4, #0]
 80003f0:	f006 010f 	and.w	r1, r6, #15
 80003f4:	f001 f9fe 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80003f8:	6820      	ldr	r0, [r4, #0]
 80003fa:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80003fe:	f001 b9e4 	b.w	80017ca <_ZN4CI2C4StopEv>

08000402 <_ZN12CSSD1306OLED16oled_lcd_refreshEv>:
 8000402:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000404:	4604      	mov	r4, r0
 8000406:	2500      	movs	r5, #0
 8000408:	b2ea      	uxtb	r2, r5
 800040a:	2100      	movs	r1, #0
 800040c:	4620      	mov	r0, r4
 800040e:	f7ff ffd3 	bl	80003b8 <_ZN12CSSD1306OLED6setposEhh>
 8000412:	6820      	ldr	r0, [r4, #0]
 8000414:	f001 f9c4 	bl	80017a0 <_ZN4CI2C5StartEv>
 8000418:	2178      	movs	r1, #120	; 0x78
 800041a:	6820      	ldr	r0, [r4, #0]
 800041c:	f001 f9ea 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8000420:	6820      	ldr	r0, [r4, #0]
 8000422:	2140      	movs	r1, #64	; 0x40
 8000424:	f001 f9e6 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8000428:	01ef      	lsls	r7, r5, #7
 800042a:	2600      	movs	r6, #0
 800042c:	19f3      	adds	r3, r6, r7
 800042e:	4423      	add	r3, r4
 8000430:	6820      	ldr	r0, [r4, #0]
 8000432:	7919      	ldrb	r1, [r3, #4]
 8000434:	3601      	adds	r6, #1
 8000436:	f001 f9dd 	bl	80017f4 <_ZN4CI2C5WriteEh>
 800043a:	2e80      	cmp	r6, #128	; 0x80
 800043c:	d1f6      	bne.n	800042c <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x2a>
 800043e:	6820      	ldr	r0, [r4, #0]
 8000440:	3501      	adds	r5, #1
 8000442:	f001 f9c2 	bl	80017ca <_ZN4CI2C4StopEv>
 8000446:	2d08      	cmp	r5, #8
 8000448:	d1de      	bne.n	8000408 <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x6>
 800044a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0800044c <_ZN12CSSD1306OLED13oled_lcd_demoEv>:
 800044c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800044e:	4605      	mov	r5, r0
 8000450:	2600      	movs	r6, #0
 8000452:	2400      	movs	r4, #0
 8000454:	4621      	mov	r1, r4
 8000456:	f004 0301 	and.w	r3, r4, #1
 800045a:	4628      	mov	r0, r5
 800045c:	4632      	mov	r2, r6
 800045e:	3401      	adds	r4, #1
 8000460:	f7ff ff91 	bl	8000386 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 8000464:	2c80      	cmp	r4, #128	; 0x80
 8000466:	d1f5      	bne.n	8000454 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x8>
 8000468:	3601      	adds	r6, #1
 800046a:	2e40      	cmp	r6, #64	; 0x40
 800046c:	d1f1      	bne.n	8000452 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x6>
 800046e:	4628      	mov	r0, r5
 8000470:	f7ff ffc7 	bl	8000402 <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 8000474:	4c28      	ldr	r4, [pc, #160]	; (8000518 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0xcc>)
 8000476:	3c01      	subs	r4, #1
 8000478:	d001      	beq.n	800047e <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x32>
 800047a:	bf00      	nop
 800047c:	e7fb      	b.n	8000476 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x2a>
 800047e:	2600      	movs	r6, #0
 8000480:	4631      	mov	r1, r6
 8000482:	4628      	mov	r0, r5
 8000484:	4622      	mov	r2, r4
 8000486:	f004 0301 	and.w	r3, r4, #1
 800048a:	3601      	adds	r6, #1
 800048c:	f7ff ff7b 	bl	8000386 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 8000490:	2e80      	cmp	r6, #128	; 0x80
 8000492:	d1f5      	bne.n	8000480 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x34>
 8000494:	3401      	adds	r4, #1
 8000496:	2c40      	cmp	r4, #64	; 0x40
 8000498:	d1f1      	bne.n	800047e <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x32>
 800049a:	4628      	mov	r0, r5
 800049c:	f7ff ffb1 	bl	8000402 <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 80004a0:	4c1d      	ldr	r4, [pc, #116]	; (8000518 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0xcc>)
 80004a2:	3c01      	subs	r4, #1
 80004a4:	d001      	beq.n	80004aa <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x5e>
 80004a6:	bf00      	nop
 80004a8:	e7fb      	b.n	80004a2 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x56>
 80004aa:	2600      	movs	r6, #0
 80004ac:	1933      	adds	r3, r6, r4
 80004ae:	f003 0307 	and.w	r3, r3, #7
 80004b2:	2b03      	cmp	r3, #3
 80004b4:	4631      	mov	r1, r6
 80004b6:	bf8c      	ite	hi
 80004b8:	2300      	movhi	r3, #0
 80004ba:	2301      	movls	r3, #1
 80004bc:	4628      	mov	r0, r5
 80004be:	4622      	mov	r2, r4
 80004c0:	3601      	adds	r6, #1
 80004c2:	f7ff ff60 	bl	8000386 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 80004c6:	2e80      	cmp	r6, #128	; 0x80
 80004c8:	d1f0      	bne.n	80004ac <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x60>
 80004ca:	3401      	adds	r4, #1
 80004cc:	2c40      	cmp	r4, #64	; 0x40
 80004ce:	d1ec      	bne.n	80004aa <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x5e>
 80004d0:	4628      	mov	r0, r5
 80004d2:	f7ff ff96 	bl	8000402 <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 80004d6:	4b10      	ldr	r3, [pc, #64]	; (8000518 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0xcc>)
 80004d8:	3b01      	subs	r3, #1
 80004da:	d001      	beq.n	80004e0 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x94>
 80004dc:	bf00      	nop
 80004de:	e7fb      	b.n	80004d8 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x8c>
 80004e0:	461c      	mov	r4, r3
 80004e2:	2700      	movs	r7, #0
 80004e4:	2600      	movs	r6, #0
 80004e6:	4631      	mov	r1, r6
 80004e8:	463a      	mov	r2, r7
 80004ea:	480c      	ldr	r0, [pc, #48]	; (800051c <_ZN12CSSD1306OLED13oled_lcd_demoEv+0xd0>)
 80004ec:	f7ff ff33 	bl	8000356 <_Z17bitmap_decompressPhjj>
 80004f0:	1931      	adds	r1, r6, r4
 80004f2:	b2c3      	uxtb	r3, r0
 80004f4:	f001 017f 	and.w	r1, r1, #127	; 0x7f
 80004f8:	4628      	mov	r0, r5
 80004fa:	463a      	mov	r2, r7
 80004fc:	3601      	adds	r6, #1
 80004fe:	f7ff ff42 	bl	8000386 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 8000502:	2e80      	cmp	r6, #128	; 0x80
 8000504:	d1ef      	bne.n	80004e6 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x9a>
 8000506:	3701      	adds	r7, #1
 8000508:	2f40      	cmp	r7, #64	; 0x40
 800050a:	d1eb      	bne.n	80004e4 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x98>
 800050c:	4628      	mov	r0, r5
 800050e:	3401      	adds	r4, #1
 8000510:	f7ff ff77 	bl	8000402 <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 8000514:	e7e5      	b.n	80004e2 <_ZN12CSSD1306OLED13oled_lcd_demoEv+0x96>
 8000516:	bf00      	nop
 8000518:	00989681 	.word	0x00989681
 800051c:	20000000 	.word	0x20000000

08000520 <_ZN12CSSD1306OLED12send_commandEh>:
 8000520:	460b      	mov	r3, r1
 8000522:	6800      	ldr	r0, [r0, #0]
 8000524:	2178      	movs	r1, #120	; 0x78
 8000526:	2200      	movs	r2, #0
 8000528:	f001 b996 	b.w	8001858 <_ZN4CI2C9write_regEhhh>

0800052c <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C>:
 800052c:	b538      	push	{r3, r4, r5, lr}
 800052e:	4604      	mov	r4, r0
 8000530:	6001      	str	r1, [r0, #0]
 8000532:	b181      	cbz	r1, 8000556 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0x2a>
 8000534:	2500      	movs	r5, #0
 8000536:	4b09      	ldr	r3, [pc, #36]	; (800055c <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0x30>)
 8000538:	4620      	mov	r0, r4
 800053a:	5d59      	ldrb	r1, [r3, r5]
 800053c:	3501      	adds	r5, #1
 800053e:	f7ff ffef 	bl	8000520 <_ZN12CSSD1306OLED12send_commandEh>
 8000542:	2d1c      	cmp	r5, #28
 8000544:	d1f7      	bne.n	8000536 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0xa>
 8000546:	4620      	mov	r0, r4
 8000548:	f7ff ff0f 	bl	800036a <_ZN12CSSD1306OLED14oled_lcd_clearEv>
 800054c:	4620      	mov	r0, r4
 800054e:	f7ff ff58 	bl	8000402 <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 8000552:	2000      	movs	r0, #0
 8000554:	bd38      	pop	{r3, r4, r5, pc}
 8000556:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800055a:	bd38      	pop	{r3, r4, r5, pc}
 800055c:	0800327c 	.word	0x0800327c

08000560 <_ZN4CIMU8imu_readEv>:
 8000560:	b570      	push	{r4, r5, r6, lr}
 8000562:	4604      	mov	r4, r0
 8000564:	6800      	ldr	r0, [r0, #0]
 8000566:	f001 f91b 	bl	80017a0 <_ZN4CI2C5StartEv>
 800056a:	21d4      	movs	r1, #212	; 0xd4
 800056c:	6820      	ldr	r0, [r4, #0]
 800056e:	f001 f941 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8000572:	21a8      	movs	r1, #168	; 0xa8
 8000574:	6820      	ldr	r0, [r4, #0]
 8000576:	f001 f93d 	bl	80017f4 <_ZN4CI2C5WriteEh>
 800057a:	6820      	ldr	r0, [r4, #0]
 800057c:	f001 f910 	bl	80017a0 <_ZN4CI2C5StartEv>
 8000580:	21d5      	movs	r1, #213	; 0xd5
 8000582:	6820      	ldr	r0, [r4, #0]
 8000584:	f001 f936 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8000588:	2101      	movs	r1, #1
 800058a:	6820      	ldr	r0, [r4, #0]
 800058c:	f001 f99a 	bl	80018c4 <_ZN4CI2C4ReadEh>
 8000590:	2101      	movs	r1, #1
 8000592:	b285      	uxth	r5, r0
 8000594:	6820      	ldr	r0, [r4, #0]
 8000596:	f001 f995 	bl	80018c4 <_ZN4CI2C4ReadEh>
 800059a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800059e:	b200      	sxth	r0, r0
 80005a0:	62a0      	str	r0, [r4, #40]	; 0x28
 80005a2:	2101      	movs	r1, #1
 80005a4:	6820      	ldr	r0, [r4, #0]
 80005a6:	f001 f98d 	bl	80018c4 <_ZN4CI2C4ReadEh>
 80005aa:	2101      	movs	r1, #1
 80005ac:	b285      	uxth	r5, r0
 80005ae:	6820      	ldr	r0, [r4, #0]
 80005b0:	f001 f988 	bl	80018c4 <_ZN4CI2C4ReadEh>
 80005b4:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005b8:	b200      	sxth	r0, r0
 80005ba:	62e0      	str	r0, [r4, #44]	; 0x2c
 80005bc:	2101      	movs	r1, #1
 80005be:	6820      	ldr	r0, [r4, #0]
 80005c0:	f001 f980 	bl	80018c4 <_ZN4CI2C4ReadEh>
 80005c4:	2100      	movs	r1, #0
 80005c6:	b285      	uxth	r5, r0
 80005c8:	6820      	ldr	r0, [r4, #0]
 80005ca:	f001 f97b 	bl	80018c4 <_ZN4CI2C4ReadEh>
 80005ce:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005d2:	b200      	sxth	r0, r0
 80005d4:	6320      	str	r0, [r4, #48]	; 0x30
 80005d6:	6820      	ldr	r0, [r4, #0]
 80005d8:	f001 f8f7 	bl	80017ca <_ZN4CI2C4StopEv>
 80005dc:	6820      	ldr	r0, [r4, #0]
 80005de:	f001 f8df 	bl	80017a0 <_ZN4CI2C5StartEv>
 80005e2:	213c      	movs	r1, #60	; 0x3c
 80005e4:	6820      	ldr	r0, [r4, #0]
 80005e6:	f001 f905 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80005ea:	21a8      	movs	r1, #168	; 0xa8
 80005ec:	6820      	ldr	r0, [r4, #0]
 80005ee:	f001 f901 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80005f2:	6820      	ldr	r0, [r4, #0]
 80005f4:	f001 f8d4 	bl	80017a0 <_ZN4CI2C5StartEv>
 80005f8:	213d      	movs	r1, #61	; 0x3d
 80005fa:	6820      	ldr	r0, [r4, #0]
 80005fc:	f001 f8fa 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8000600:	2101      	movs	r1, #1
 8000602:	6820      	ldr	r0, [r4, #0]
 8000604:	f001 f95e 	bl	80018c4 <_ZN4CI2C4ReadEh>
 8000608:	2101      	movs	r1, #1
 800060a:	b285      	uxth	r5, r0
 800060c:	6820      	ldr	r0, [r4, #0]
 800060e:	f001 f959 	bl	80018c4 <_ZN4CI2C4ReadEh>
 8000612:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000616:	b200      	sxth	r0, r0
 8000618:	6360      	str	r0, [r4, #52]	; 0x34
 800061a:	2101      	movs	r1, #1
 800061c:	6820      	ldr	r0, [r4, #0]
 800061e:	f001 f951 	bl	80018c4 <_ZN4CI2C4ReadEh>
 8000622:	2101      	movs	r1, #1
 8000624:	b285      	uxth	r5, r0
 8000626:	6820      	ldr	r0, [r4, #0]
 8000628:	f001 f94c 	bl	80018c4 <_ZN4CI2C4ReadEh>
 800062c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000630:	b200      	sxth	r0, r0
 8000632:	63a0      	str	r0, [r4, #56]	; 0x38
 8000634:	2101      	movs	r1, #1
 8000636:	6820      	ldr	r0, [r4, #0]
 8000638:	f001 f944 	bl	80018c4 <_ZN4CI2C4ReadEh>
 800063c:	2100      	movs	r1, #0
 800063e:	b285      	uxth	r5, r0
 8000640:	6820      	ldr	r0, [r4, #0]
 8000642:	f001 f93f 	bl	80018c4 <_ZN4CI2C4ReadEh>
 8000646:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800064a:	b200      	sxth	r0, r0
 800064c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800064e:	6820      	ldr	r0, [r4, #0]
 8000650:	f001 f8bb 	bl	80017ca <_ZN4CI2C4StopEv>
 8000654:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 8000656:	68a3      	ldr	r3, [r4, #8]
 8000658:	6b20      	ldr	r0, [r4, #48]	; 0x30
 800065a:	1a9b      	subs	r3, r3, r2
 800065c:	6922      	ldr	r2, [r4, #16]
 800065e:	26c8      	movs	r6, #200	; 0xc8
 8000660:	fb93 f3f6 	sdiv	r3, r3, r6
 8000664:	441a      	add	r2, r3
 8000666:	6c23      	ldr	r3, [r4, #64]	; 0x40
 8000668:	6122      	str	r2, [r4, #16]
 800066a:	2164      	movs	r1, #100	; 0x64
 800066c:	4359      	muls	r1, r3
 800066e:	f640 15e2 	movw	r5, #2530	; 0x9e2
 8000672:	434a      	muls	r2, r1
 8000674:	6863      	ldr	r3, [r4, #4]
 8000676:	fb92 f2f5 	sdiv	r2, r2, r5
 800067a:	61e2      	str	r2, [r4, #28]
 800067c:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 800067e:	1a9b      	subs	r3, r3, r2
 8000680:	6962      	ldr	r2, [r4, #20]
 8000682:	fb93 f3f6 	sdiv	r3, r3, r6
 8000686:	441a      	add	r2, r3
 8000688:	6162      	str	r2, [r4, #20]
 800068a:	434a      	muls	r2, r1
 800068c:	fb92 f2f5 	sdiv	r2, r2, r5
 8000690:	6222      	str	r2, [r4, #32]
 8000692:	68e2      	ldr	r2, [r4, #12]
 8000694:	1a12      	subs	r2, r2, r0
 8000696:	fb92 f0f6 	sdiv	r0, r2, r6
 800069a:	69a2      	ldr	r2, [r4, #24]
 800069c:	1883      	adds	r3, r0, r2
 800069e:	61a3      	str	r3, [r4, #24]
 80006a0:	434b      	muls	r3, r1
 80006a2:	fb93 f3f5 	sdiv	r3, r3, r5
 80006a6:	6263      	str	r3, [r4, #36]	; 0x24
 80006a8:	bd70      	pop	{r4, r5, r6, pc}
	...

080006ac <_ZN4CIMU8imu_initEP4CI2C>:
 80006ac:	230a      	movs	r3, #10
 80006ae:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80006b2:	6403      	str	r3, [r0, #64]	; 0x40
 80006b4:	2300      	movs	r3, #0
 80006b6:	4604      	mov	r4, r0
 80006b8:	6001      	str	r1, [r0, #0]
 80006ba:	6043      	str	r3, [r0, #4]
 80006bc:	6083      	str	r3, [r0, #8]
 80006be:	60c3      	str	r3, [r0, #12]
 80006c0:	6103      	str	r3, [r0, #16]
 80006c2:	6143      	str	r3, [r0, #20]
 80006c4:	6183      	str	r3, [r0, #24]
 80006c6:	f242 7511 	movw	r5, #10001	; 0x2711
 80006ca:	3d01      	subs	r5, #1
 80006cc:	d001      	beq.n	80006d2 <_ZN4CIMU8imu_initEP4CI2C+0x26>
 80006ce:	bf00      	nop
 80006d0:	e7fb      	b.n	80006ca <_ZN4CIMU8imu_initEP4CI2C+0x1e>
 80006d2:	4608      	mov	r0, r1
 80006d4:	220f      	movs	r2, #15
 80006d6:	21d4      	movs	r1, #212	; 0xd4
 80006d8:	f001 f922 	bl	8001920 <_ZN4CI2C8read_regEhh>
 80006dc:	28d4      	cmp	r0, #212	; 0xd4
 80006de:	4606      	mov	r6, r0
 80006e0:	d155      	bne.n	800078e <_ZN4CIMU8imu_initEP4CI2C+0xe2>
 80006e2:	6820      	ldr	r0, [r4, #0]
 80006e4:	213c      	movs	r1, #60	; 0x3c
 80006e6:	220f      	movs	r2, #15
 80006e8:	f001 f91a 	bl	8001920 <_ZN4CI2C8read_regEhh>
 80006ec:	2849      	cmp	r0, #73	; 0x49
 80006ee:	d152      	bne.n	8000796 <_ZN4CIMU8imu_initEP4CI2C+0xea>
 80006f0:	4631      	mov	r1, r6
 80006f2:	6820      	ldr	r0, [r4, #0]
 80006f4:	2220      	movs	r2, #32
 80006f6:	23ff      	movs	r3, #255	; 0xff
 80006f8:	f001 f8ae 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 80006fc:	4631      	mov	r1, r6
 80006fe:	6820      	ldr	r0, [r4, #0]
 8000700:	4e27      	ldr	r6, [pc, #156]	; (80007a0 <_ZN4CIMU8imu_initEP4CI2C+0xf4>)
 8000702:	2223      	movs	r2, #35	; 0x23
 8000704:	2310      	movs	r3, #16
 8000706:	f001 f8a7 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 800070a:	6820      	ldr	r0, [r4, #0]
 800070c:	213c      	movs	r1, #60	; 0x3c
 800070e:	221f      	movs	r2, #31
 8000710:	462b      	mov	r3, r5
 8000712:	f001 f8a1 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000716:	6820      	ldr	r0, [r4, #0]
 8000718:	213c      	movs	r1, #60	; 0x3c
 800071a:	2220      	movs	r2, #32
 800071c:	2367      	movs	r3, #103	; 0x67
 800071e:	f001 f89b 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000722:	6820      	ldr	r0, [r4, #0]
 8000724:	213c      	movs	r1, #60	; 0x3c
 8000726:	2221      	movs	r2, #33	; 0x21
 8000728:	462b      	mov	r3, r5
 800072a:	f001 f895 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 800072e:	3e01      	subs	r6, #1
 8000730:	d001      	beq.n	8000736 <_ZN4CIMU8imu_initEP4CI2C+0x8a>
 8000732:	bf00      	nop
 8000734:	e7fb      	b.n	800072e <_ZN4CIMU8imu_initEP4CI2C+0x82>
 8000736:	4620      	mov	r0, r4
 8000738:	f7ff ff12 	bl	8000560 <_ZN4CIMU8imu_readEv>
 800073c:	2564      	movs	r5, #100	; 0x64
 800073e:	4637      	mov	r7, r6
 8000740:	46b0      	mov	r8, r6
 8000742:	2365      	movs	r3, #101	; 0x65
 8000744:	3b01      	subs	r3, #1
 8000746:	d001      	beq.n	800074c <_ZN4CIMU8imu_initEP4CI2C+0xa0>
 8000748:	bf00      	nop
 800074a:	e7fb      	b.n	8000744 <_ZN4CIMU8imu_initEP4CI2C+0x98>
 800074c:	4620      	mov	r0, r4
 800074e:	f7ff ff07 	bl	8000560 <_ZN4CIMU8imu_readEv>
 8000752:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8000754:	4498      	add	r8, r3
 8000756:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8000758:	441f      	add	r7, r3
 800075a:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800075c:	3d01      	subs	r5, #1
 800075e:	441e      	add	r6, r3
 8000760:	d1ef      	bne.n	8000742 <_ZN4CIMU8imu_initEP4CI2C+0x96>
 8000762:	2264      	movs	r2, #100	; 0x64
 8000764:	6365      	str	r5, [r4, #52]	; 0x34
 8000766:	fb98 f3f2 	sdiv	r3, r8, r2
 800076a:	fb97 f7f2 	sdiv	r7, r7, r2
 800076e:	fb96 f6f2 	sdiv	r6, r6, r2
 8000772:	6063      	str	r3, [r4, #4]
 8000774:	60a7      	str	r7, [r4, #8]
 8000776:	60e6      	str	r6, [r4, #12]
 8000778:	63a5      	str	r5, [r4, #56]	; 0x38
 800077a:	63e5      	str	r5, [r4, #60]	; 0x3c
 800077c:	62a5      	str	r5, [r4, #40]	; 0x28
 800077e:	62e5      	str	r5, [r4, #44]	; 0x2c
 8000780:	6325      	str	r5, [r4, #48]	; 0x30
 8000782:	61e5      	str	r5, [r4, #28]
 8000784:	6225      	str	r5, [r4, #32]
 8000786:	6265      	str	r5, [r4, #36]	; 0x24
 8000788:	4628      	mov	r0, r5
 800078a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800078e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000792:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000796:	f06f 0001 	mvn.w	r0, #1
 800079a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800079e:	bf00      	nop
 80007a0:	000186a1 	.word	0x000186a1

080007a4 <_ZN7CCamera11camera_initEv>:
 80007a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80007a8:	4b3f      	ldr	r3, [pc, #252]	; (80008a8 <_ZN7CCamera11camera_initEv+0x104>)
 80007aa:	2200      	movs	r2, #0
 80007ac:	601a      	str	r2, [r3, #0]
 80007ae:	605a      	str	r2, [r3, #4]
 80007b0:	609a      	str	r2, [r3, #8]
 80007b2:	611a      	str	r2, [r3, #16]
 80007b4:	60da      	str	r2, [r3, #12]
 80007b6:	b08e      	sub	sp, #56	; 0x38
 80007b8:	f103 0212 	add.w	r2, r3, #18
 80007bc:	f503 7389 	add.w	r3, r3, #274	; 0x112
 80007c0:	2400      	movs	r4, #0
 80007c2:	f822 4f02 	strh.w	r4, [r2, #2]!
 80007c6:	429a      	cmp	r2, r3
 80007c8:	4627      	mov	r7, r4
 80007ca:	f8a2 4100 	strh.w	r4, [r2, #256]	; 0x100
 80007ce:	d1f7      	bne.n	80007c0 <_ZN7CCamera11camera_initEv+0x1c>
 80007d0:	4e36      	ldr	r6, [pc, #216]	; (80008ac <_ZN7CCamera11camera_initEv+0x108>)
 80007d2:	2501      	movs	r5, #1
 80007d4:	f44f 7340 	mov.w	r3, #768	; 0x300
 80007d8:	f04f 0803 	mov.w	r8, #3
 80007dc:	4630      	mov	r0, r6
 80007de:	a901      	add	r1, sp, #4
 80007e0:	9301      	str	r3, [sp, #4]
 80007e2:	f88d 5008 	strb.w	r5, [sp, #8]
 80007e6:	f88d 8009 	strb.w	r8, [sp, #9]
 80007ea:	f002 fbdb 	bl	8002fa4 <GPIO_Init>
 80007ee:	a901      	add	r1, sp, #4
 80007f0:	482f      	ldr	r0, [pc, #188]	; (80008b0 <_ZN7CCamera11camera_initEv+0x10c>)
 80007f2:	9501      	str	r5, [sp, #4]
 80007f4:	f88d 8008 	strb.w	r8, [sp, #8]
 80007f8:	f88d 8009 	strb.w	r8, [sp, #9]
 80007fc:	f002 fbd2 	bl	8002fa4 <GPIO_Init>
 8000800:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000804:	8533      	strh	r3, [r6, #40]	; 0x28
 8000806:	f44f 7300 	mov.w	r3, #512	; 0x200
 800080a:	8533      	strh	r3, [r6, #40]	; 0x28
 800080c:	f44f 7088 	mov.w	r0, #272	; 0x110
 8000810:	f001 fff0 	bl	80027f4 <RCC_ADCCLKConfig>
 8000814:	4629      	mov	r1, r5
 8000816:	f04f 5080 	mov.w	r0, #268435456	; 0x10000000
 800081a:	f001 fffb 	bl	8002814 <RCC_AHBPeriphClockCmd>
 800081e:	a906      	add	r1, sp, #24
 8000820:	f04f 40a0 	mov.w	r0, #1342177280	; 0x50000000
 8000824:	940c      	str	r4, [sp, #48]	; 0x30
 8000826:	9406      	str	r4, [sp, #24]
 8000828:	940a      	str	r4, [sp, #40]	; 0x28
 800082a:	9408      	str	r4, [sp, #32]
 800082c:	9409      	str	r4, [sp, #36]	; 0x24
 800082e:	940b      	str	r4, [sp, #44]	; 0x2c
 8000830:	9407      	str	r4, [sp, #28]
 8000832:	f88d 5034 	strb.w	r5, [sp, #52]	; 0x34
 8000836:	f002 f9d7 	bl	8002be8 <ADC_Init>
 800083a:	462a      	mov	r2, r5
 800083c:	4623      	mov	r3, r4
 800083e:	f04f 40a0 	mov.w	r0, #1342177280	; 0x50000000
 8000842:	2106      	movs	r1, #6
 8000844:	f002 fa01 	bl	8002c4a <ADC_RegularChannelConfig>
 8000848:	4629      	mov	r1, r5
 800084a:	f04f 40a0 	mov.w	r0, #1342177280	; 0x50000000
 800084e:	f002 f9f1 	bl	8002c34 <ADC_Cmd>
 8000852:	4629      	mov	r1, r5
 8000854:	2002      	movs	r0, #2
 8000856:	f001 fff9 	bl	800284c <RCC_APB1PeriphClockCmd>
 800085a:	f8ad 400e 	strh.w	r4, [sp, #14]
 800085e:	f8ad 4014 	strh.w	r4, [sp, #20]
 8000862:	f8ad 4016 	strh.w	r4, [sp, #22]
 8000866:	4c13      	ldr	r4, [pc, #76]	; (80008b4 <_ZN7CCamera11camera_initEv+0x110>)
 8000868:	f44f 738c 	mov.w	r3, #280	; 0x118
 800086c:	f8ad 300c 	strh.w	r3, [sp, #12]
 8000870:	4620      	mov	r0, r4
 8000872:	2320      	movs	r3, #32
 8000874:	a903      	add	r1, sp, #12
 8000876:	9304      	str	r3, [sp, #16]
 8000878:	f001 fff6 	bl	8002868 <TIM_TimeBaseInit>
 800087c:	4620      	mov	r0, r4
 800087e:	4629      	mov	r1, r5
 8000880:	f002 f842 	bl	8002908 <TIM_Cmd>
 8000884:	68e3      	ldr	r3, [r4, #12]
 8000886:	432b      	orrs	r3, r5
 8000888:	60e3      	str	r3, [r4, #12]
 800088a:	4668      	mov	r0, sp
 800088c:	231d      	movs	r3, #29
 800088e:	f88d 3000 	strb.w	r3, [sp]
 8000892:	f88d 7001 	strb.w	r7, [sp, #1]
 8000896:	f88d 5002 	strb.w	r5, [sp, #2]
 800089a:	f88d 5003 	strb.w	r5, [sp, #3]
 800089e:	f002 fab5 	bl	8002e0c <NVIC_Init>
 80008a2:	b00e      	add	sp, #56	; 0x38
 80008a4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80008a8:	200009e8 	.word	0x200009e8
 80008ac:	48000400 	.word	0x48000400
 80008b0:	48000800 	.word	0x48000800
 80008b4:	40000400 	.word	0x40000400

080008b8 <TIM3_IRQHandler>:
 80008b8:	b510      	push	{r4, lr}
 80008ba:	4824      	ldr	r0, [pc, #144]	; (800094c <TIM3_IRQHandler+0x94>)
 80008bc:	2101      	movs	r1, #1
 80008be:	f002 f8cf 	bl	8002a60 <TIM_GetITStatus>
 80008c2:	2800      	cmp	r0, #0
 80008c4:	d040      	beq.n	8000948 <TIM3_IRQHandler+0x90>
 80008c6:	2101      	movs	r1, #1
 80008c8:	4820      	ldr	r0, [pc, #128]	; (800094c <TIM3_IRQHandler+0x94>)
 80008ca:	f002 f8d5 	bl	8002a78 <TIM_ClearITPendingBit>
 80008ce:	4a20      	ldr	r2, [pc, #128]	; (8000950 <TIM3_IRQHandler+0x98>)
 80008d0:	4920      	ldr	r1, [pc, #128]	; (8000954 <TIM3_IRQHandler+0x9c>)
 80008d2:	6813      	ldr	r3, [r2, #0]
 80008d4:	2b01      	cmp	r3, #1
 80008d6:	d010      	beq.n	80008fa <TIM3_IRQHandler+0x42>
 80008d8:	d306      	bcc.n	80008e8 <TIM3_IRQHandler+0x30>
 80008da:	2b02      	cmp	r3, #2
 80008dc:	d112      	bne.n	8000904 <TIM3_IRQHandler+0x4c>
 80008de:	f44f 7300 	mov.w	r3, #512	; 0x200
 80008e2:	850b      	strh	r3, [r1, #40]	; 0x28
 80008e4:	2304      	movs	r3, #4
 80008e6:	e023      	b.n	8000930 <TIM3_IRQHandler+0x78>
 80008e8:	f44f 7380 	mov.w	r3, #256	; 0x100
 80008ec:	850b      	strh	r3, [r1, #40]	; 0x28
 80008ee:	f44f 7300 	mov.w	r3, #512	; 0x200
 80008f2:	618b      	str	r3, [r1, #24]
 80008f4:	2301      	movs	r3, #1
 80008f6:	6013      	str	r3, [r2, #0]
 80008f8:	e025      	b.n	8000946 <TIM3_IRQHandler+0x8e>
 80008fa:	f44f 7380 	mov.w	r3, #256	; 0x100
 80008fe:	618b      	str	r3, [r1, #24]
 8000900:	2302      	movs	r3, #2
 8000902:	e015      	b.n	8000930 <TIM3_IRQHandler+0x78>
 8000904:	f013 0f01 	tst.w	r3, #1
 8000908:	f103 0001 	add.w	r0, r3, #1
 800090c:	d012      	beq.n	8000934 <TIM3_IRQHandler+0x7c>
 800090e:	3b04      	subs	r3, #4
 8000910:	f04f 44a0 	mov.w	r4, #1342177280	; 0x50000000
 8000914:	f023 0301 	bic.w	r3, r3, #1
 8000918:	4413      	add	r3, r2
 800091a:	6c24      	ldr	r4, [r4, #64]	; 0x40
 800091c:	829c      	strh	r4, [r3, #20]
 800091e:	f5b0 7f82 	cmp.w	r0, #260	; 0x104
 8000922:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000926:	850b      	strh	r3, [r1, #40]	; 0x28
 8000928:	d201      	bcs.n	800092e <TIM3_IRQHandler+0x76>
 800092a:	6010      	str	r0, [r2, #0]
 800092c:	bd10      	pop	{r4, pc}
 800092e:	2300      	movs	r3, #0
 8000930:	6013      	str	r3, [r2, #0]
 8000932:	bd10      	pop	{r4, pc}
 8000934:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000938:	618b      	str	r3, [r1, #24]
 800093a:	6010      	str	r0, [r2, #0]
 800093c:	f04f 42a0 	mov.w	r2, #1342177280	; 0x50000000
 8000940:	6893      	ldr	r3, [r2, #8]
 8000942:	f043 0304 	orr.w	r3, r3, #4
 8000946:	6093      	str	r3, [r2, #8]
 8000948:	bd10      	pop	{r4, pc}
 800094a:	bf00      	nop
 800094c:	40000400 	.word	0x40000400
 8000950:	200009e8 	.word	0x200009e8
 8000954:	48000400 	.word	0x48000400

08000958 <_ZN8CVL53L0X11getSPADinfoEPhPb>:
 8000958:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800095c:	2500      	movs	r5, #0
 800095e:	4604      	mov	r4, r0
 8000960:	700d      	strb	r5, [r1, #0]
 8000962:	6800      	ldr	r0, [r0, #0]
 8000964:	2301      	movs	r3, #1
 8000966:	460e      	mov	r6, r1
 8000968:	4690      	mov	r8, r2
 800096a:	2152      	movs	r1, #82	; 0x52
 800096c:	2280      	movs	r2, #128	; 0x80
 800096e:	f000 ff73 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000972:	6820      	ldr	r0, [r4, #0]
 8000974:	2152      	movs	r1, #82	; 0x52
 8000976:	22ff      	movs	r2, #255	; 0xff
 8000978:	2301      	movs	r3, #1
 800097a:	f000 ff6d 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 800097e:	462a      	mov	r2, r5
 8000980:	462b      	mov	r3, r5
 8000982:	6820      	ldr	r0, [r4, #0]
 8000984:	2152      	movs	r1, #82	; 0x52
 8000986:	f000 ff67 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 800098a:	2306      	movs	r3, #6
 800098c:	6820      	ldr	r0, [r4, #0]
 800098e:	2152      	movs	r1, #82	; 0x52
 8000990:	22ff      	movs	r2, #255	; 0xff
 8000992:	f000 ff61 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000996:	6827      	ldr	r7, [r4, #0]
 8000998:	2152      	movs	r1, #82	; 0x52
 800099a:	2283      	movs	r2, #131	; 0x83
 800099c:	4638      	mov	r0, r7
 800099e:	f000 ffbf 	bl	8001920 <_ZN4CI2C8read_regEhh>
 80009a2:	f040 0304 	orr.w	r3, r0, #4
 80009a6:	2152      	movs	r1, #82	; 0x52
 80009a8:	4638      	mov	r0, r7
 80009aa:	2283      	movs	r2, #131	; 0x83
 80009ac:	b2db      	uxtb	r3, r3
 80009ae:	f000 ff53 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 80009b2:	6820      	ldr	r0, [r4, #0]
 80009b4:	2152      	movs	r1, #82	; 0x52
 80009b6:	22ff      	movs	r2, #255	; 0xff
 80009b8:	2307      	movs	r3, #7
 80009ba:	f000 ff4d 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 80009be:	6820      	ldr	r0, [r4, #0]
 80009c0:	2152      	movs	r1, #82	; 0x52
 80009c2:	2281      	movs	r2, #129	; 0x81
 80009c4:	2301      	movs	r3, #1
 80009c6:	f000 ff47 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 80009ca:	6820      	ldr	r0, [r4, #0]
 80009cc:	2152      	movs	r1, #82	; 0x52
 80009ce:	2280      	movs	r2, #128	; 0x80
 80009d0:	2301      	movs	r3, #1
 80009d2:	f000 ff41 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 80009d6:	6820      	ldr	r0, [r4, #0]
 80009d8:	2152      	movs	r1, #82	; 0x52
 80009da:	2294      	movs	r2, #148	; 0x94
 80009dc:	236b      	movs	r3, #107	; 0x6b
 80009de:	f000 ff3b 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 80009e2:	462b      	mov	r3, r5
 80009e4:	6820      	ldr	r0, [r4, #0]
 80009e6:	4d2a      	ldr	r5, [pc, #168]	; (8000a90 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x138>)
 80009e8:	2152      	movs	r1, #82	; 0x52
 80009ea:	2283      	movs	r2, #131	; 0x83
 80009ec:	f000 ff34 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 80009f0:	6820      	ldr	r0, [r4, #0]
 80009f2:	2152      	movs	r1, #82	; 0x52
 80009f4:	2283      	movs	r2, #131	; 0x83
 80009f6:	f000 ff93 	bl	8001920 <_ZN4CI2C8read_regEhh>
 80009fa:	b920      	cbnz	r0, 8000a06 <_ZN8CVL53L0X11getSPADinfoEPhPb+0xae>
 80009fc:	3d01      	subs	r5, #1
 80009fe:	d1f7      	bne.n	80009f0 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x98>
 8000a00:	4628      	mov	r0, r5
 8000a02:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000a06:	6820      	ldr	r0, [r4, #0]
 8000a08:	2301      	movs	r3, #1
 8000a0a:	2152      	movs	r1, #82	; 0x52
 8000a0c:	2283      	movs	r2, #131	; 0x83
 8000a0e:	f000 ff23 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a12:	6820      	ldr	r0, [r4, #0]
 8000a14:	2152      	movs	r1, #82	; 0x52
 8000a16:	2292      	movs	r2, #146	; 0x92
 8000a18:	f000 ff82 	bl	8001920 <_ZN4CI2C8read_regEhh>
 8000a1c:	f000 037f 	and.w	r3, r0, #127	; 0x7f
 8000a20:	7033      	strb	r3, [r6, #0]
 8000a22:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000a26:	f888 0000 	strb.w	r0, [r8]
 8000a2a:	2152      	movs	r1, #82	; 0x52
 8000a2c:	6820      	ldr	r0, [r4, #0]
 8000a2e:	2281      	movs	r2, #129	; 0x81
 8000a30:	2300      	movs	r3, #0
 8000a32:	f000 ff11 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a36:	6820      	ldr	r0, [r4, #0]
 8000a38:	2306      	movs	r3, #6
 8000a3a:	2152      	movs	r1, #82	; 0x52
 8000a3c:	22ff      	movs	r2, #255	; 0xff
 8000a3e:	f000 ff0b 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a42:	6825      	ldr	r5, [r4, #0]
 8000a44:	2152      	movs	r1, #82	; 0x52
 8000a46:	4628      	mov	r0, r5
 8000a48:	2283      	movs	r2, #131	; 0x83
 8000a4a:	f000 ff69 	bl	8001920 <_ZN4CI2C8read_regEhh>
 8000a4e:	2152      	movs	r1, #82	; 0x52
 8000a50:	4603      	mov	r3, r0
 8000a52:	2283      	movs	r2, #131	; 0x83
 8000a54:	4628      	mov	r0, r5
 8000a56:	f000 feff 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a5a:	6820      	ldr	r0, [r4, #0]
 8000a5c:	2152      	movs	r1, #82	; 0x52
 8000a5e:	22ff      	movs	r2, #255	; 0xff
 8000a60:	2301      	movs	r3, #1
 8000a62:	f000 fef9 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a66:	6820      	ldr	r0, [r4, #0]
 8000a68:	2152      	movs	r1, #82	; 0x52
 8000a6a:	2200      	movs	r2, #0
 8000a6c:	2301      	movs	r3, #1
 8000a6e:	f000 fef3 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a72:	6820      	ldr	r0, [r4, #0]
 8000a74:	2152      	movs	r1, #82	; 0x52
 8000a76:	22ff      	movs	r2, #255	; 0xff
 8000a78:	2300      	movs	r3, #0
 8000a7a:	f000 feed 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a7e:	6820      	ldr	r0, [r4, #0]
 8000a80:	2152      	movs	r1, #82	; 0x52
 8000a82:	2280      	movs	r2, #128	; 0x80
 8000a84:	2300      	movs	r3, #0
 8000a86:	f000 fee7 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000a8a:	2001      	movs	r0, #1
 8000a8c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000a90:	000f4241 	.word	0x000f4241

08000a94 <_ZN8CVL53L0X10laser_initEP4CI2C>:
 8000a94:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000a96:	4604      	mov	r4, r0
 8000a98:	2300      	movs	r3, #0
 8000a9a:	6043      	str	r3, [r0, #4]
 8000a9c:	b087      	sub	sp, #28
 8000a9e:	460d      	mov	r5, r1
 8000aa0:	6021      	str	r1, [r4, #0]
 8000aa2:	2900      	cmp	r1, #0
 8000aa4:	f000 80cd 	beq.w	8000c42 <_ZN8CVL53L0X10laser_initEP4CI2C+0x1ae>
 8000aa8:	4608      	mov	r0, r1
 8000aaa:	2289      	movs	r2, #137	; 0x89
 8000aac:	2152      	movs	r1, #82	; 0x52
 8000aae:	f000 ff37 	bl	8001920 <_ZN4CI2C8read_regEhh>
 8000ab2:	f040 0301 	orr.w	r3, r0, #1
 8000ab6:	2152      	movs	r1, #82	; 0x52
 8000ab8:	4628      	mov	r0, r5
 8000aba:	2289      	movs	r2, #137	; 0x89
 8000abc:	b2db      	uxtb	r3, r3
 8000abe:	f000 fecb 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000ac2:	6820      	ldr	r0, [r4, #0]
 8000ac4:	2152      	movs	r1, #82	; 0x52
 8000ac6:	22c0      	movs	r2, #192	; 0xc0
 8000ac8:	f000 ff2a 	bl	8001920 <_ZN4CI2C8read_regEhh>
 8000acc:	28ee      	cmp	r0, #238	; 0xee
 8000ace:	f040 80bb 	bne.w	8000c48 <_ZN8CVL53L0X10laser_initEP4CI2C+0x1b4>
 8000ad2:	6820      	ldr	r0, [r4, #0]
 8000ad4:	4d5e      	ldr	r5, [pc, #376]	; (8000c50 <_ZN8CVL53L0X10laser_initEP4CI2C+0x1bc>)
 8000ad6:	2152      	movs	r1, #82	; 0x52
 8000ad8:	22bf      	movs	r2, #191	; 0xbf
 8000ada:	2301      	movs	r3, #1
 8000adc:	f000 febc 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000ae0:	3d01      	subs	r5, #1
 8000ae2:	d001      	beq.n	8000ae8 <_ZN8CVL53L0X10laser_initEP4CI2C+0x54>
 8000ae4:	bf00      	nop
 8000ae6:	e7fb      	b.n	8000ae0 <_ZN8CVL53L0X10laser_initEP4CI2C+0x4c>
 8000ae8:	6820      	ldr	r0, [r4, #0]
 8000aea:	2152      	movs	r1, #82	; 0x52
 8000aec:	2288      	movs	r2, #136	; 0x88
 8000aee:	462b      	mov	r3, r5
 8000af0:	f000 feb2 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000af4:	6820      	ldr	r0, [r4, #0]
 8000af6:	2152      	movs	r1, #82	; 0x52
 8000af8:	2280      	movs	r2, #128	; 0x80
 8000afa:	2301      	movs	r3, #1
 8000afc:	f000 feac 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b00:	6820      	ldr	r0, [r4, #0]
 8000b02:	2152      	movs	r1, #82	; 0x52
 8000b04:	22ff      	movs	r2, #255	; 0xff
 8000b06:	2301      	movs	r3, #1
 8000b08:	f000 fea6 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b0c:	462b      	mov	r3, r5
 8000b0e:	6820      	ldr	r0, [r4, #0]
 8000b10:	2152      	movs	r1, #82	; 0x52
 8000b12:	462a      	mov	r2, r5
 8000b14:	f000 fea0 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b18:	2152      	movs	r1, #82	; 0x52
 8000b1a:	2291      	movs	r2, #145	; 0x91
 8000b1c:	6820      	ldr	r0, [r4, #0]
 8000b1e:	f000 feff 	bl	8001920 <_ZN4CI2C8read_regEhh>
 8000b22:	6820      	ldr	r0, [r4, #0]
 8000b24:	2152      	movs	r1, #82	; 0x52
 8000b26:	462a      	mov	r2, r5
 8000b28:	2301      	movs	r3, #1
 8000b2a:	f000 fe95 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b2e:	6820      	ldr	r0, [r4, #0]
 8000b30:	2152      	movs	r1, #82	; 0x52
 8000b32:	22ff      	movs	r2, #255	; 0xff
 8000b34:	462b      	mov	r3, r5
 8000b36:	f000 fe8f 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b3a:	462b      	mov	r3, r5
 8000b3c:	6820      	ldr	r0, [r4, #0]
 8000b3e:	2152      	movs	r1, #82	; 0x52
 8000b40:	2280      	movs	r2, #128	; 0x80
 8000b42:	f000 fe89 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b46:	a906      	add	r1, sp, #24
 8000b48:	f10d 020f 	add.w	r2, sp, #15
 8000b4c:	f801 5d0a 	strb.w	r5, [r1, #-10]!
 8000b50:	4620      	mov	r0, r4
 8000b52:	f7ff ff01 	bl	8000958 <_ZN8CVL53L0X11getSPADinfoEPhPb>
 8000b56:	2306      	movs	r3, #6
 8000b58:	9300      	str	r3, [sp, #0]
 8000b5a:	6820      	ldr	r0, [r4, #0]
 8000b5c:	2152      	movs	r1, #82	; 0x52
 8000b5e:	22b0      	movs	r2, #176	; 0xb0
 8000b60:	ab04      	add	r3, sp, #16
 8000b62:	f000 fefd 	bl	8001960 <_ZN4CI2C14read_reg_multiEhhPhj>
 8000b66:	6820      	ldr	r0, [r4, #0]
 8000b68:	2152      	movs	r1, #82	; 0x52
 8000b6a:	22ff      	movs	r2, #255	; 0xff
 8000b6c:	2301      	movs	r3, #1
 8000b6e:	f000 fe73 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b72:	6820      	ldr	r0, [r4, #0]
 8000b74:	2152      	movs	r1, #82	; 0x52
 8000b76:	224f      	movs	r2, #79	; 0x4f
 8000b78:	462b      	mov	r3, r5
 8000b7a:	f000 fe6d 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b7e:	6820      	ldr	r0, [r4, #0]
 8000b80:	2152      	movs	r1, #82	; 0x52
 8000b82:	224e      	movs	r2, #78	; 0x4e
 8000b84:	232c      	movs	r3, #44	; 0x2c
 8000b86:	f000 fe67 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b8a:	6820      	ldr	r0, [r4, #0]
 8000b8c:	2152      	movs	r1, #82	; 0x52
 8000b8e:	22ff      	movs	r2, #255	; 0xff
 8000b90:	462b      	mov	r3, r5
 8000b92:	f000 fe61 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000b96:	6820      	ldr	r0, [r4, #0]
 8000b98:	2152      	movs	r1, #82	; 0x52
 8000b9a:	23b4      	movs	r3, #180	; 0xb4
 8000b9c:	22b6      	movs	r2, #182	; 0xb6
 8000b9e:	f000 fe5b 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000ba2:	f89d 300f 	ldrb.w	r3, [sp, #15]
 8000ba6:	f89d 600e 	ldrb.w	r6, [sp, #14]
 8000baa:	2b00      	cmp	r3, #0
 8000bac:	bf14      	ite	ne
 8000bae:	200c      	movne	r0, #12
 8000bb0:	2000      	moveq	r0, #0
 8000bb2:	4629      	mov	r1, r5
 8000bb4:	b2ea      	uxtb	r2, r5
 8000bb6:	08d3      	lsrs	r3, r2, #3
 8000bb8:	4282      	cmp	r2, r0
 8000bba:	af06      	add	r7, sp, #24
 8000bbc:	f002 0207 	and.w	r2, r2, #7
 8000bc0:	443b      	add	r3, r7
 8000bc2:	d301      	bcc.n	8000bc8 <_ZN8CVL53L0X10laser_initEP4CI2C+0x134>
 8000bc4:	42b1      	cmp	r1, r6
 8000bc6:	d109      	bne.n	8000bdc <_ZN8CVL53L0X10laser_initEP4CI2C+0x148>
 8000bc8:	2701      	movs	r7, #1
 8000bca:	fa07 f202 	lsl.w	r2, r7, r2
 8000bce:	f813 7c08 	ldrb.w	r7, [r3, #-8]
 8000bd2:	ea27 0202 	bic.w	r2, r7, r2
 8000bd6:	f803 2c08 	strb.w	r2, [r3, #-8]
 8000bda:	e006      	b.n	8000bea <_ZN8CVL53L0X10laser_initEP4CI2C+0x156>
 8000bdc:	f813 3c08 	ldrb.w	r3, [r3, #-8]
 8000be0:	4113      	asrs	r3, r2
 8000be2:	07db      	lsls	r3, r3, #31
 8000be4:	bf44      	itt	mi
 8000be6:	3101      	addmi	r1, #1
 8000be8:	b2c9      	uxtbmi	r1, r1
 8000bea:	3501      	adds	r5, #1
 8000bec:	2d30      	cmp	r5, #48	; 0x30
 8000bee:	d1e1      	bne.n	8000bb4 <_ZN8CVL53L0X10laser_initEP4CI2C+0x120>
 8000bf0:	2306      	movs	r3, #6
 8000bf2:	9300      	str	r3, [sp, #0]
 8000bf4:	6820      	ldr	r0, [r4, #0]
 8000bf6:	ab04      	add	r3, sp, #16
 8000bf8:	2152      	movs	r1, #82	; 0x52
 8000bfa:	22b0      	movs	r2, #176	; 0xb0
 8000bfc:	f000 fe44 	bl	8001888 <_ZN4CI2C15write_reg_multiEhhPhj>
 8000c00:	2152      	movs	r1, #82	; 0x52
 8000c02:	2284      	movs	r2, #132	; 0x84
 8000c04:	6820      	ldr	r0, [r4, #0]
 8000c06:	f000 fe8b 	bl	8001920 <_ZN4CI2C8read_regEhh>
 8000c0a:	2152      	movs	r1, #82	; 0x52
 8000c0c:	4605      	mov	r5, r0
 8000c0e:	220a      	movs	r2, #10
 8000c10:	6820      	ldr	r0, [r4, #0]
 8000c12:	2304      	movs	r3, #4
 8000c14:	f000 fe20 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000c18:	6820      	ldr	r0, [r4, #0]
 8000c1a:	2152      	movs	r1, #82	; 0x52
 8000c1c:	2284      	movs	r2, #132	; 0x84
 8000c1e:	f005 03ef 	and.w	r3, r5, #239	; 0xef
 8000c22:	f000 fe19 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000c26:	6820      	ldr	r0, [r4, #0]
 8000c28:	2152      	movs	r1, #82	; 0x52
 8000c2a:	220b      	movs	r2, #11
 8000c2c:	2301      	movs	r3, #1
 8000c2e:	f000 fe13 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000c32:	6820      	ldr	r0, [r4, #0]
 8000c34:	2152      	movs	r1, #82	; 0x52
 8000c36:	2200      	movs	r2, #0
 8000c38:	2302      	movs	r3, #2
 8000c3a:	f000 fe0d 	bl	8001858 <_ZN4CI2C9write_regEhhh>
 8000c3e:	2000      	movs	r0, #0
 8000c40:	e004      	b.n	8000c4c <_ZN8CVL53L0X10laser_initEP4CI2C+0x1b8>
 8000c42:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000c46:	e001      	b.n	8000c4c <_ZN8CVL53L0X10laser_initEP4CI2C+0x1b8>
 8000c48:	f06f 0001 	mvn.w	r0, #1
 8000c4c:	b007      	add	sp, #28
 8000c4e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c50:	000186a1 	.word	0x000186a1

08000c54 <TIM2_IRQHandler>:
 8000c54:	b508      	push	{r3, lr}
 8000c56:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000c5a:	2101      	movs	r1, #1
 8000c5c:	f001 ff00 	bl	8002a60 <TIM_GetITStatus>
 8000c60:	b360      	cbz	r0, 8000cbc <TIM2_IRQHandler+0x68>
 8000c62:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000c66:	2101      	movs	r1, #1
 8000c68:	f001 ff06 	bl	8002a78 <TIM_ClearITPendingBit>
 8000c6c:	2300      	movs	r3, #0
 8000c6e:	4a14      	ldr	r2, [pc, #80]	; (8000cc0 <TIM2_IRQHandler+0x6c>)
 8000c70:	5cd1      	ldrb	r1, [r2, r3]
 8000c72:	b111      	cbz	r1, 8000c7a <TIM2_IRQHandler+0x26>
 8000c74:	5cd1      	ldrb	r1, [r2, r3]
 8000c76:	29ff      	cmp	r1, #255	; 0xff
 8000c78:	d11b      	bne.n	8000cb2 <TIM2_IRQHandler+0x5e>
 8000c7a:	4912      	ldr	r1, [pc, #72]	; (8000cc4 <TIM2_IRQHandler+0x70>)
 8000c7c:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000c80:	b128      	cbz	r0, 8000c8e <TIM2_IRQHandler+0x3a>
 8000c82:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000c86:	3a01      	subs	r2, #1
 8000c88:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000c8c:	e009      	b.n	8000ca2 <TIM2_IRQHandler+0x4e>
 8000c8e:	480e      	ldr	r0, [pc, #56]	; (8000cc8 <TIM2_IRQHandler+0x74>)
 8000c90:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000c94:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000c98:	5cd2      	ldrb	r2, [r2, r3]
 8000c9a:	b912      	cbnz	r2, 8000ca2 <TIM2_IRQHandler+0x4e>
 8000c9c:	4a08      	ldr	r2, [pc, #32]	; (8000cc0 <TIM2_IRQHandler+0x6c>)
 8000c9e:	2101      	movs	r1, #1
 8000ca0:	54d1      	strb	r1, [r2, r3]
 8000ca2:	3301      	adds	r3, #1
 8000ca4:	2b08      	cmp	r3, #8
 8000ca6:	d1e2      	bne.n	8000c6e <TIM2_IRQHandler+0x1a>
 8000ca8:	4a08      	ldr	r2, [pc, #32]	; (8000ccc <TIM2_IRQHandler+0x78>)
 8000caa:	6813      	ldr	r3, [r2, #0]
 8000cac:	3301      	adds	r3, #1
 8000cae:	6013      	str	r3, [r2, #0]
 8000cb0:	bd08      	pop	{r3, pc}
 8000cb2:	5cd1      	ldrb	r1, [r2, r3]
 8000cb4:	3101      	adds	r1, #1
 8000cb6:	b2c9      	uxtb	r1, r1
 8000cb8:	54d1      	strb	r1, [r2, r3]
 8000cba:	e7de      	b.n	8000c7a <TIM2_IRQHandler+0x26>
 8000cbc:	bd08      	pop	{r3, pc}
 8000cbe:	bf00      	nop
 8000cc0:	20000c1c 	.word	0x20000c1c
 8000cc4:	20000bfc 	.word	0x20000bfc
 8000cc8:	20000c2c 	.word	0x20000c2c
 8000ccc:	20000c24 	.word	0x20000c24

08000cd0 <_ZN6CTimer10timer_initEv>:
 8000cd0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000cd2:	4a20      	ldr	r2, [pc, #128]	; (8000d54 <_ZN6CTimer10timer_initEv+0x84>)
 8000cd4:	2300      	movs	r3, #0
 8000cd6:	6013      	str	r3, [r2, #0]
 8000cd8:	491f      	ldr	r1, [pc, #124]	; (8000d58 <_ZN6CTimer10timer_initEv+0x88>)
 8000cda:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000cde:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000ce2:	491e      	ldr	r1, [pc, #120]	; (8000d5c <_ZN6CTimer10timer_initEv+0x8c>)
 8000ce4:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000ce8:	4a1d      	ldr	r2, [pc, #116]	; (8000d60 <_ZN6CTimer10timer_initEv+0x90>)
 8000cea:	2400      	movs	r4, #0
 8000cec:	54d4      	strb	r4, [r2, r3]
 8000cee:	3301      	adds	r3, #1
 8000cf0:	2b08      	cmp	r3, #8
 8000cf2:	d1f1      	bne.n	8000cd8 <_ZN6CTimer10timer_initEv+0x8>
 8000cf4:	2001      	movs	r0, #1
 8000cf6:	4601      	mov	r1, r0
 8000cf8:	f001 fda8 	bl	800284c <RCC_APB1PeriphClockCmd>
 8000cfc:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8000d00:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000d04:	a901      	add	r1, sp, #4
 8000d06:	2309      	movs	r3, #9
 8000d08:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000d0c:	9302      	str	r3, [sp, #8]
 8000d0e:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000d12:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000d16:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000d1a:	f001 fda5 	bl	8002868 <TIM_TimeBaseInit>
 8000d1e:	2101      	movs	r1, #1
 8000d20:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000d24:	f001 fdf0 	bl	8002908 <TIM_Cmd>
 8000d28:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000d2c:	4668      	mov	r0, sp
 8000d2e:	68d3      	ldr	r3, [r2, #12]
 8000d30:	f043 0301 	orr.w	r3, r3, #1
 8000d34:	60d3      	str	r3, [r2, #12]
 8000d36:	231c      	movs	r3, #28
 8000d38:	f88d 3000 	strb.w	r3, [sp]
 8000d3c:	2301      	movs	r3, #1
 8000d3e:	f88d 4001 	strb.w	r4, [sp, #1]
 8000d42:	f88d 3002 	strb.w	r3, [sp, #2]
 8000d46:	f88d 3003 	strb.w	r3, [sp, #3]
 8000d4a:	f002 f85f 	bl	8002e0c <NVIC_Init>
 8000d4e:	4620      	mov	r0, r4
 8000d50:	b004      	add	sp, #16
 8000d52:	bd10      	pop	{r4, pc}
 8000d54:	20000c24 	.word	0x20000c24
 8000d58:	20000bfc 	.word	0x20000bfc
 8000d5c:	20000c2c 	.word	0x20000c2c
 8000d60:	20000c1c 	.word	0x20000c1c

08000d64 <_ZN6CTimer8get_timeEv>:
 8000d64:	b082      	sub	sp, #8
 8000d66:	b672      	cpsid	i
 8000d68:	4b04      	ldr	r3, [pc, #16]	; (8000d7c <_ZN6CTimer8get_timeEv+0x18>)
 8000d6a:	681b      	ldr	r3, [r3, #0]
 8000d6c:	9301      	str	r3, [sp, #4]
 8000d6e:	b662      	cpsie	i
 8000d70:	230a      	movs	r3, #10
 8000d72:	9801      	ldr	r0, [sp, #4]
 8000d74:	fbb0 f0f3 	udiv	r0, r0, r3
 8000d78:	b002      	add	sp, #8
 8000d7a:	4770      	bx	lr
 8000d7c:	20000c24 	.word	0x20000c24

08000d80 <_ZN6CTimer8delay_msEm>:
 8000d80:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000d82:	460c      	mov	r4, r1
 8000d84:	4605      	mov	r5, r0
 8000d86:	f7ff ffed 	bl	8000d64 <_ZN6CTimer8get_timeEv>
 8000d8a:	4420      	add	r0, r4
 8000d8c:	9001      	str	r0, [sp, #4]
 8000d8e:	4628      	mov	r0, r5
 8000d90:	9c01      	ldr	r4, [sp, #4]
 8000d92:	f7ff ffe7 	bl	8000d64 <_ZN6CTimer8get_timeEv>
 8000d96:	4284      	cmp	r4, r0
 8000d98:	d902      	bls.n	8000da0 <_ZN6CTimer8delay_msEm+0x20>
 8000d9a:	f002 f833 	bl	8002e04 <core_yield>
 8000d9e:	e7f6      	b.n	8000d8e <_ZN6CTimer8delay_msEm+0xe>
 8000da0:	b003      	add	sp, #12
 8000da2:	bd30      	pop	{r4, r5, pc}

08000da4 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000da4:	b672      	cpsid	i
 8000da6:	230a      	movs	r3, #10
 8000da8:	435a      	muls	r2, r3
 8000daa:	4b05      	ldr	r3, [pc, #20]	; (8000dc0 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000dac:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000db0:	4b04      	ldr	r3, [pc, #16]	; (8000dc4 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000db2:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000db6:	4b04      	ldr	r3, [pc, #16]	; (8000dc8 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000db8:	2200      	movs	r2, #0
 8000dba:	545a      	strb	r2, [r3, r1]
 8000dbc:	b662      	cpsie	i
 8000dbe:	4770      	bx	lr
 8000dc0:	20000bfc 	.word	0x20000bfc
 8000dc4:	20000c2c 	.word	0x20000c2c
 8000dc8:	20000c1c 	.word	0x20000c1c

08000dcc <_ZN6CTimer17event_timer_checkEh>:
 8000dcc:	4b05      	ldr	r3, [pc, #20]	; (8000de4 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000dce:	5c5a      	ldrb	r2, [r3, r1]
 8000dd0:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000dd4:	b12a      	cbz	r2, 8000de2 <_ZN6CTimer17event_timer_checkEh+0x16>
 8000dd6:	b672      	cpsid	i
 8000dd8:	5c58      	ldrb	r0, [r3, r1]
 8000dda:	2200      	movs	r2, #0
 8000ddc:	b2c0      	uxtb	r0, r0
 8000dde:	545a      	strb	r2, [r3, r1]
 8000de0:	b662      	cpsie	i
 8000de2:	4770      	bx	lr
 8000de4:	20000c1c 	.word	0x20000c1c

08000de8 <_ZN4CRGB8rgb_readEh>:
 8000de8:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000dec:	4604      	mov	r4, r0
 8000dee:	4689      	mov	r9, r1
 8000df0:	f000 fb1a 	bl	8001428 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000df4:	4620      	mov	r0, r4
 8000df6:	2172      	movs	r1, #114	; 0x72
 8000df8:	f000 fb40 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000dfc:	21b4      	movs	r1, #180	; 0xb4
 8000dfe:	4620      	mov	r0, r4
 8000e00:	f000 fb3c 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e04:	4620      	mov	r0, r4
 8000e06:	f000 fb0f 	bl	8001428 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000e0a:	1d26      	adds	r6, r4, #4
 8000e0c:	4620      	mov	r0, r4
 8000e0e:	2173      	movs	r1, #115	; 0x73
 8000e10:	f000 fb34 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000e14:	1ce5      	adds	r5, r4, #3
 8000e16:	4632      	mov	r2, r6
 8000e18:	4620      	mov	r0, r4
 8000e1a:	2101      	movs	r1, #1
 8000e1c:	f104 0a42 	add.w	sl, r4, #66	; 0x42
 8000e20:	f000 fb6e 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000e24:	f104 0754 	add.w	r7, r4, #84	; 0x54
 8000e28:	4653      	mov	r3, sl
 8000e2a:	462a      	mov	r2, r5
 8000e2c:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000e30:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000e34:	42bb      	cmp	r3, r7
 8000e36:	d1f9      	bne.n	8000e2c <_ZN4CRGB8rgb_readEh+0x44>
 8000e38:	2101      	movs	r1, #1
 8000e3a:	4620      	mov	r0, r4
 8000e3c:	4632      	mov	r2, r6
 8000e3e:	f000 fb5f 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000e42:	4629      	mov	r1, r5
 8000e44:	4653      	mov	r3, sl
 8000e46:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000e4a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000e4e:	42bb      	cmp	r3, r7
 8000e50:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000e54:	801a      	strh	r2, [r3, #0]
 8000e56:	d1f6      	bne.n	8000e46 <_ZN4CRGB8rgb_readEh+0x5e>
 8000e58:	4632      	mov	r2, r6
 8000e5a:	4620      	mov	r0, r4
 8000e5c:	2101      	movs	r1, #1
 8000e5e:	f104 080c 	add.w	r8, r4, #12
 8000e62:	f000 fb4d 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000e66:	f104 0b1e 	add.w	fp, r4, #30
 8000e6a:	4643      	mov	r3, r8
 8000e6c:	462a      	mov	r2, r5
 8000e6e:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000e72:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000e76:	455b      	cmp	r3, fp
 8000e78:	d1f9      	bne.n	8000e6e <_ZN4CRGB8rgb_readEh+0x86>
 8000e7a:	4632      	mov	r2, r6
 8000e7c:	4620      	mov	r0, r4
 8000e7e:	2101      	movs	r1, #1
 8000e80:	f000 fb3e 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000e84:	462a      	mov	r2, r5
 8000e86:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 8000e8a:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000e8e:	45d8      	cmp	r8, fp
 8000e90:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000e94:	f8a8 3000 	strh.w	r3, [r8]
 8000e98:	d1f5      	bne.n	8000e86 <_ZN4CRGB8rgb_readEh+0x9e>
 8000e9a:	4632      	mov	r2, r6
 8000e9c:	4620      	mov	r0, r4
 8000e9e:	2101      	movs	r1, #1
 8000ea0:	f000 fb2e 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000ea4:	f104 0830 	add.w	r8, r4, #48	; 0x30
 8000ea8:	465b      	mov	r3, fp
 8000eaa:	462a      	mov	r2, r5
 8000eac:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000eb0:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000eb4:	4543      	cmp	r3, r8
 8000eb6:	d1f9      	bne.n	8000eac <_ZN4CRGB8rgb_readEh+0xc4>
 8000eb8:	4632      	mov	r2, r6
 8000eba:	4620      	mov	r0, r4
 8000ebc:	2101      	movs	r1, #1
 8000ebe:	f000 fb1f 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000ec2:	462a      	mov	r2, r5
 8000ec4:	f83b 3f02 	ldrh.w	r3, [fp, #2]!
 8000ec8:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000ecc:	45c3      	cmp	fp, r8
 8000ece:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000ed2:	f8ab 3000 	strh.w	r3, [fp]
 8000ed6:	d1f5      	bne.n	8000ec4 <_ZN4CRGB8rgb_readEh+0xdc>
 8000ed8:	4632      	mov	r2, r6
 8000eda:	4620      	mov	r0, r4
 8000edc:	2101      	movs	r1, #1
 8000ede:	f000 fb0f 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000ee2:	4643      	mov	r3, r8
 8000ee4:	462a      	mov	r2, r5
 8000ee6:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000eea:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000eee:	4553      	cmp	r3, sl
 8000ef0:	d1f9      	bne.n	8000ee6 <_ZN4CRGB8rgb_readEh+0xfe>
 8000ef2:	4632      	mov	r2, r6
 8000ef4:	4620      	mov	r0, r4
 8000ef6:	2101      	movs	r1, #1
 8000ef8:	f000 fb02 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000efc:	462a      	mov	r2, r5
 8000efe:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 8000f02:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000f06:	45d0      	cmp	r8, sl
 8000f08:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000f0c:	f8a8 3000 	strh.w	r3, [r8]
 8000f10:	d1f5      	bne.n	8000efe <_ZN4CRGB8rgb_readEh+0x116>
 8000f12:	4632      	mov	r2, r6
 8000f14:	4620      	mov	r0, r4
 8000f16:	2101      	movs	r1, #1
 8000f18:	f000 faf2 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000f1c:	f104 0866 	add.w	r8, r4, #102	; 0x66
 8000f20:	463b      	mov	r3, r7
 8000f22:	462a      	mov	r2, r5
 8000f24:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000f28:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000f2c:	4543      	cmp	r3, r8
 8000f2e:	d1f9      	bne.n	8000f24 <_ZN4CRGB8rgb_readEh+0x13c>
 8000f30:	4620      	mov	r0, r4
 8000f32:	2100      	movs	r1, #0
 8000f34:	4632      	mov	r2, r6
 8000f36:	f000 fae3 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000f3a:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000f3e:	f815 2f01 	ldrb.w	r2, [r5, #1]!
 8000f42:	4547      	cmp	r7, r8
 8000f44:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
 8000f48:	803b      	strh	r3, [r7, #0]
 8000f4a:	d1f6      	bne.n	8000f3a <_ZN4CRGB8rgb_readEh+0x152>
 8000f4c:	4620      	mov	r0, r4
 8000f4e:	f000 fa80 	bl	8001452 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000f52:	f1b9 0f00 	cmp.w	r9, #0
 8000f56:	d027      	beq.n	8000fa8 <_ZN4CRGB8rgb_readEh+0x1c0>
 8000f58:	2300      	movs	r3, #0
 8000f5a:	89e1      	ldrh	r1, [r4, #14]
 8000f5c:	f8b4 209e 	ldrh.w	r2, [r4, #158]	; 0x9e
 8000f60:	440a      	add	r2, r1
 8000f62:	f8a4 209e 	strh.w	r2, [r4, #158]	; 0x9e
 8000f66:	8c21      	ldrh	r1, [r4, #32]
 8000f68:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 8000f6c:	440a      	add	r2, r1
 8000f6e:	f8a4 20b0 	strh.w	r2, [r4, #176]	; 0xb0
 8000f72:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 8000f74:	f8b4 20c2 	ldrh.w	r2, [r4, #194]	; 0xc2
 8000f78:	440a      	add	r2, r1
 8000f7a:	f8a4 20c2 	strh.w	r2, [r4, #194]	; 0xc2
 8000f7e:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
 8000f82:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 8000f86:	440a      	add	r2, r1
 8000f88:	f8a4 20e6 	strh.w	r2, [r4, #230]	; 0xe6
 8000f8c:	f8b4 1044 	ldrh.w	r1, [r4, #68]	; 0x44
 8000f90:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 8000f94:	3301      	adds	r3, #1
 8000f96:	440a      	add	r2, r1
 8000f98:	2b09      	cmp	r3, #9
 8000f9a:	f8a4 20d4 	strh.w	r2, [r4, #212]	; 0xd4
 8000f9e:	f104 0402 	add.w	r4, r4, #2
 8000fa2:	d1da      	bne.n	8000f5a <_ZN4CRGB8rgb_readEh+0x172>
 8000fa4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000fa8:	4649      	mov	r1, r9
 8000faa:	b672      	cpsid	i
 8000fac:	89e3      	ldrh	r3, [r4, #14]
 8000fae:	f8b4 009e 	ldrh.w	r0, [r4, #158]	; 0x9e
 8000fb2:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 8000fb6:	f8b4 50c2 	ldrh.w	r5, [r4, #194]	; 0xc2
 8000fba:	f8b4 60e6 	ldrh.w	r6, [r4, #230]	; 0xe6
 8000fbe:	1a18      	subs	r0, r3, r0
 8000fc0:	8c23      	ldrh	r3, [r4, #32]
 8000fc2:	1a9a      	subs	r2, r3, r2
 8000fc4:	8e63      	ldrh	r3, [r4, #50]	; 0x32
 8000fc6:	1b5b      	subs	r3, r3, r5
 8000fc8:	f8b4 5056 	ldrh.w	r5, [r4, #86]	; 0x56
 8000fcc:	1bad      	subs	r5, r5, r6
 8000fce:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
 8000fd2:	f8b4 60d4 	ldrh.w	r6, [r4, #212]	; 0xd4
 8000fd6:	f8b4 5044 	ldrh.w	r5, [r4, #68]	; 0x44
 8000fda:	b280      	uxth	r0, r0
 8000fdc:	b292      	uxth	r2, r2
 8000fde:	b29b      	uxth	r3, r3
 8000fe0:	1bad      	subs	r5, r5, r6
 8000fe2:	81e0      	strh	r0, [r4, #14]
 8000fe4:	8422      	strh	r2, [r4, #32]
 8000fe6:	8663      	strh	r3, [r4, #50]	; 0x32
 8000fe8:	f8a4 5044 	strh.w	r5, [r4, #68]	; 0x44
 8000fec:	b662      	cpsie	i
 8000fee:	b200      	sxth	r0, r0
 8000ff0:	b212      	sxth	r2, r2
 8000ff2:	1885      	adds	r5, r0, r2
 8000ff4:	b21b      	sxth	r3, r3
 8000ff6:	18ed      	adds	r5, r5, r3
 8000ff8:	d011      	beq.n	800101e <_ZN4CRGB8rgb_readEh+0x236>
 8000ffa:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000ffe:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8001002:	fb90 f0f5 	sdiv	r0, r0, r5
 8001006:	fb92 f2f5 	sdiv	r2, r2, r5
 800100a:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 800100e:	f8a4 0068 	strh.w	r0, [r4, #104]	; 0x68
 8001012:	fb93 f3f5 	sdiv	r3, r3, r5
 8001016:	f8a4 207a 	strh.w	r2, [r4, #122]	; 0x7a
 800101a:	f8a4 308c 	strh.w	r3, [r4, #140]	; 0x8c
 800101e:	3101      	adds	r1, #1
 8001020:	2909      	cmp	r1, #9
 8001022:	f104 0402 	add.w	r4, r4, #2
 8001026:	d1c0      	bne.n	8000faa <_ZN4CRGB8rgb_readEh+0x1c2>
 8001028:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

0800102c <_ZN4CRGB8rgb_initEv>:
 800102c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800102e:	4603      	mov	r3, r0
 8001030:	b085      	sub	sp, #20
 8001032:	4604      	mov	r4, r0
 8001034:	4606      	mov	r6, r0
 8001036:	2509      	movs	r5, #9
 8001038:	2200      	movs	r2, #0
 800103a:	3d01      	subs	r5, #1
 800103c:	81da      	strh	r2, [r3, #14]
 800103e:	841a      	strh	r2, [r3, #32]
 8001040:	865a      	strh	r2, [r3, #50]	; 0x32
 8001042:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56
 8001046:	f8a3 2044 	strh.w	r2, [r3, #68]	; 0x44
 800104a:	f8a3 209e 	strh.w	r2, [r3, #158]	; 0x9e
 800104e:	f8a3 20b0 	strh.w	r2, [r3, #176]	; 0xb0
 8001052:	f8a3 20c2 	strh.w	r2, [r3, #194]	; 0xc2
 8001056:	f8a3 20e6 	strh.w	r2, [r3, #230]	; 0xe6
 800105a:	f8a3 20d4 	strh.w	r2, [r3, #212]	; 0xd4
 800105e:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
 8001062:	f8a3 207a 	strh.w	r2, [r3, #122]	; 0x7a
 8001066:	f8a3 208c 	strh.w	r2, [r3, #140]	; 0x8c
 800106a:	f103 0302 	add.w	r3, r3, #2
 800106e:	d1e3      	bne.n	8001038 <_ZN4CRGB8rgb_initEv+0xc>
 8001070:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001074:	2208      	movs	r2, #8
 8001076:	851a      	strh	r2, [r3, #40]	; 0x28
 8001078:	4620      	mov	r0, r4
 800107a:	f000 fad7 	bl	800162c <_ZN8CRGB_I2C12rgb_i2c_initEv>
 800107e:	4620      	mov	r0, r4
 8001080:	2172      	movs	r1, #114	; 0x72
 8001082:	2281      	movs	r2, #129	; 0x81
 8001084:	23ff      	movs	r3, #255	; 0xff
 8001086:	f000 fa22 	bl	80014ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800108a:	4620      	mov	r0, r4
 800108c:	2172      	movs	r1, #114	; 0x72
 800108e:	2283      	movs	r2, #131	; 0x83
 8001090:	23ff      	movs	r3, #255	; 0xff
 8001092:	f000 fa1c 	bl	80014ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8001096:	4620      	mov	r0, r4
 8001098:	2172      	movs	r1, #114	; 0x72
 800109a:	228d      	movs	r2, #141	; 0x8d
 800109c:	462b      	mov	r3, r5
 800109e:	f000 fa16 	bl	80014ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80010a2:	2172      	movs	r1, #114	; 0x72
 80010a4:	2280      	movs	r2, #128	; 0x80
 80010a6:	2303      	movs	r3, #3
 80010a8:	4620      	mov	r0, r4
 80010aa:	f000 fa10 	bl	80014ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80010ae:	4620      	mov	r0, r4
 80010b0:	f000 fb08 	bl	80016c4 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>
 80010b4:	228f      	movs	r2, #143	; 0x8f
 80010b6:	2323      	movs	r3, #35	; 0x23
 80010b8:	2172      	movs	r1, #114	; 0x72
 80010ba:	4620      	mov	r0, r4
 80010bc:	f000 fa07 	bl	80014ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80010c0:	4620      	mov	r0, r4
 80010c2:	f000 fb02 	bl	80016ca <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>
 80010c6:	af01      	add	r7, sp, #4
 80010c8:	4620      	mov	r0, r4
 80010ca:	4629      	mov	r1, r5
 80010cc:	f7ff fe8c 	bl	8000de8 <_ZN4CRGB8rgb_readEh>
 80010d0:	463b      	mov	r3, r7
 80010d2:	4620      	mov	r0, r4
 80010d4:	2172      	movs	r1, #114	; 0x72
 80010d6:	2292      	movs	r2, #146	; 0x92
 80010d8:	f000 fa86 	bl	80015e8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 80010dc:	462b      	mov	r3, r5
 80010de:	5cfa      	ldrb	r2, [r7, r3]
 80010e0:	2a69      	cmp	r2, #105	; 0x69
 80010e2:	bf1c      	itt	ne
 80010e4:	2201      	movne	r2, #1
 80010e6:	409a      	lslne	r2, r3
 80010e8:	f103 0301 	add.w	r3, r3, #1
 80010ec:	bf18      	it	ne
 80010ee:	4315      	orrne	r5, r2
 80010f0:	2b09      	cmp	r3, #9
 80010f2:	d1f4      	bne.n	80010de <_ZN4CRGB8rgb_initEv+0xb2>
 80010f4:	2704      	movs	r7, #4
 80010f6:	4620      	mov	r0, r4
 80010f8:	2101      	movs	r1, #1
 80010fa:	f7ff fe75 	bl	8000de8 <_ZN4CRGB8rgb_readEh>
 80010fe:	3f01      	subs	r7, #1
 8001100:	d1f9      	bne.n	80010f6 <_ZN4CRGB8rgb_initEv+0xca>
 8001102:	2109      	movs	r1, #9
 8001104:	f9b6 309e 	ldrsh.w	r3, [r6, #158]	; 0x9e
 8001108:	089b      	lsrs	r3, r3, #2
 800110a:	f8a6 309e 	strh.w	r3, [r6, #158]	; 0x9e
 800110e:	f9b6 30b0 	ldrsh.w	r3, [r6, #176]	; 0xb0
 8001112:	089b      	lsrs	r3, r3, #2
 8001114:	f8a6 30b0 	strh.w	r3, [r6, #176]	; 0xb0
 8001118:	f9b6 30c2 	ldrsh.w	r3, [r6, #194]	; 0xc2
 800111c:	089b      	lsrs	r3, r3, #2
 800111e:	f8a6 30c2 	strh.w	r3, [r6, #194]	; 0xc2
 8001122:	f9b6 30e6 	ldrsh.w	r3, [r6, #230]	; 0xe6
 8001126:	089b      	lsrs	r3, r3, #2
 8001128:	f8a6 30e6 	strh.w	r3, [r6, #230]	; 0xe6
 800112c:	f9b6 30d4 	ldrsh.w	r3, [r6, #212]	; 0xd4
 8001130:	3901      	subs	r1, #1
 8001132:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8001136:	f8a6 30d4 	strh.w	r3, [r6, #212]	; 0xd4
 800113a:	f106 0602 	add.w	r6, r6, #2
 800113e:	d1e1      	bne.n	8001104 <_ZN4CRGB8rgb_initEv+0xd8>
 8001140:	4620      	mov	r0, r4
 8001142:	f7ff fe51 	bl	8000de8 <_ZN4CRGB8rgb_readEh>
 8001146:	b115      	cbz	r5, 800114e <_ZN4CRGB8rgb_initEv+0x122>
 8001148:	4802      	ldr	r0, [pc, #8]	; (8001154 <_ZN4CRGB8rgb_initEv+0x128>)
 800114a:	1b40      	subs	r0, r0, r5
 800114c:	e000      	b.n	8001150 <_ZN4CRGB8rgb_initEv+0x124>
 800114e:	4628      	mov	r0, r5
 8001150:	b005      	add	sp, #20
 8001152:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001154:	fffffc18 	.word	0xfffffc18

08001158 <_ZN4CRGB7rgb_getEv>:
 8001158:	300e      	adds	r0, #14
 800115a:	4770      	bx	lr

0800115c <_ZN6CMotor11motor_sleepEv>:
 800115c:	4770      	bx	lr
	...

08001160 <_ZN6CMotor7pwm_setEmm>:
 8001160:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001164:	b086      	sub	sp, #24
 8001166:	2370      	movs	r3, #112	; 0x70
 8001168:	9301      	str	r3, [sp, #4]
 800116a:	f8df 8070 	ldr.w	r8, [pc, #112]	; 80011dc <_ZN6CMotor7pwm_setEmm+0x7c>
 800116e:	4c1a      	ldr	r4, [pc, #104]	; (80011d8 <_ZN6CMotor7pwm_setEmm+0x78>)
 8001170:	f8d8 0000 	ldr.w	r0, [r8]
 8001174:	2301      	movs	r3, #1
 8001176:	f8ad 3008 	strh.w	r3, [sp, #8]
 800117a:	2304      	movs	r3, #4
 800117c:	f8ad 300a 	strh.w	r3, [sp, #10]
 8001180:	f242 7710 	movw	r7, #10000	; 0x2710
 8001184:	2302      	movs	r3, #2
 8001186:	fbb0 f0f7 	udiv	r0, r0, r7
 800118a:	3802      	subs	r0, #2
 800118c:	4616      	mov	r6, r2
 800118e:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001192:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001196:	2300      	movs	r3, #0
 8001198:	2564      	movs	r5, #100	; 0x64
 800119a:	4341      	muls	r1, r0
 800119c:	fbb1 f0f5 	udiv	r0, r1, r5
 80011a0:	a901      	add	r1, sp, #4
 80011a2:	9003      	str	r0, [sp, #12]
 80011a4:	4620      	mov	r0, r4
 80011a6:	f8ad 3012 	strh.w	r3, [sp, #18]
 80011aa:	f8ad 2014 	strh.w	r2, [sp, #20]
 80011ae:	f8ad 3016 	strh.w	r3, [sp, #22]
 80011b2:	f001 fbb7 	bl	8002924 <TIM_OC1Init>
 80011b6:	f8d8 3000 	ldr.w	r3, [r8]
 80011ba:	fbb3 f3f7 	udiv	r3, r3, r7
 80011be:	4620      	mov	r0, r4
 80011c0:	3b02      	subs	r3, #2
 80011c2:	a901      	add	r1, sp, #4
 80011c4:	fb03 f206 	mul.w	r2, r3, r6
 80011c8:	fbb2 f2f5 	udiv	r2, r2, r5
 80011cc:	9203      	str	r2, [sp, #12]
 80011ce:	f001 fbef 	bl	80029b0 <TIM_OC2Init>
 80011d2:	b006      	add	sp, #24
 80011d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011d8:	40012c00 	.word	0x40012c00
 80011dc:	20000430 	.word	0x20000430

080011e0 <_ZN6CMotor13motor_refreshEv>:
 80011e0:	6802      	ldr	r2, [r0, #0]
 80011e2:	6841      	ldr	r1, [r0, #4]
 80011e4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80011e8:	b510      	push	{r4, lr}
 80011ea:	2a00      	cmp	r2, #0
 80011ec:	f44f 4400 	mov.w	r4, #32768	; 0x8000
 80011f0:	bfce      	itee	gt
 80011f2:	851c      	strhgt	r4, [r3, #40]	; 0x28
 80011f4:	619c      	strle	r4, [r3, #24]
 80011f6:	4252      	negle	r2, r2
 80011f8:	4b08      	ldr	r3, [pc, #32]	; (800121c <_ZN6CMotor13motor_refreshEv+0x3c>)
 80011fa:	2900      	cmp	r1, #0
 80011fc:	f04f 0420 	mov.w	r4, #32
 8001200:	bfd6      	itet	le
 8001202:	4249      	negle	r1, r1
 8001204:	851c      	strhgt	r4, [r3, #40]	; 0x28
 8001206:	619c      	strle	r4, [r3, #24]
 8001208:	2964      	cmp	r1, #100	; 0x64
 800120a:	bfa8      	it	ge
 800120c:	2164      	movge	r1, #100	; 0x64
 800120e:	2a64      	cmp	r2, #100	; 0x64
 8001210:	bfa8      	it	ge
 8001212:	2264      	movge	r2, #100	; 0x64
 8001214:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001218:	f7ff bfa2 	b.w	8001160 <_ZN6CMotor7pwm_setEmm>
 800121c:	48000400 	.word	0x48000400

08001220 <_ZN6CMotor9set_motorEml>:
 8001220:	2901      	cmp	r1, #1
 8001222:	bf98      	it	ls
 8001224:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8001228:	f7ff bfda 	b.w	80011e0 <_ZN6CMotor13motor_refreshEv>

0800122c <_ZN6CMotor10set_motorsEll>:
 800122c:	e880 0006 	stmia.w	r0, {r1, r2}
 8001230:	f7ff bfd6 	b.w	80011e0 <_ZN6CMotor13motor_refreshEv>

08001234 <_ZN6CMotor10motor_initEv>:
 8001234:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001238:	4e42      	ldr	r6, [pc, #264]	; (8001344 <_ZN6CMotor10motor_initEv+0x110>)
 800123a:	b087      	sub	sp, #28
 800123c:	2400      	movs	r4, #0
 800123e:	2501      	movs	r5, #1
 8001240:	4680      	mov	r8, r0
 8001242:	2703      	movs	r7, #3
 8001244:	f04f 0910 	mov.w	r9, #16
 8001248:	4630      	mov	r0, r6
 800124a:	a901      	add	r1, sp, #4
 800124c:	f8cd 9004 	str.w	r9, [sp, #4]
 8001250:	f88d 5008 	strb.w	r5, [sp, #8]
 8001254:	f88d 400a 	strb.w	r4, [sp, #10]
 8001258:	f88d 7009 	strb.w	r7, [sp, #9]
 800125c:	f88d 400b 	strb.w	r4, [sp, #11]
 8001260:	f001 fea0 	bl	8002fa4 <GPIO_Init>
 8001264:	f8a6 9028 	strh.w	r9, [r6, #40]	; 0x28
 8001268:	2320      	movs	r3, #32
 800126a:	4630      	mov	r0, r6
 800126c:	a901      	add	r1, sp, #4
 800126e:	9301      	str	r3, [sp, #4]
 8001270:	f88d 5008 	strb.w	r5, [sp, #8]
 8001274:	f88d 400a 	strb.w	r4, [sp, #10]
 8001278:	f88d 7009 	strb.w	r7, [sp, #9]
 800127c:	f88d 400b 	strb.w	r4, [sp, #11]
 8001280:	f001 fe90 	bl	8002fa4 <GPIO_Init>
 8001284:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001288:	a901      	add	r1, sp, #4
 800128a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800128e:	9301      	str	r3, [sp, #4]
 8001290:	f88d 5008 	strb.w	r5, [sp, #8]
 8001294:	f88d 400a 	strb.w	r4, [sp, #10]
 8001298:	f88d 7009 	strb.w	r7, [sp, #9]
 800129c:	f88d 400b 	strb.w	r4, [sp, #11]
 80012a0:	f001 fe80 	bl	8002fa4 <GPIO_Init>
 80012a4:	4629      	mov	r1, r5
 80012a6:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80012aa:	f001 fac1 	bl	8002830 <RCC_APB2PeriphClockCmd>
 80012ae:	4629      	mov	r1, r5
 80012b0:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80012b4:	f001 faae 	bl	8002814 <RCC_AHBPeriphClockCmd>
 80012b8:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 80012bc:	9301      	str	r3, [sp, #4]
 80012be:	4630      	mov	r0, r6
 80012c0:	2302      	movs	r3, #2
 80012c2:	a901      	add	r1, sp, #4
 80012c4:	f88d 3008 	strb.w	r3, [sp, #8]
 80012c8:	f88d 7009 	strb.w	r7, [sp, #9]
 80012cc:	f001 fe6a 	bl	8002fa4 <GPIO_Init>
 80012d0:	4630      	mov	r0, r6
 80012d2:	210d      	movs	r1, #13
 80012d4:	2206      	movs	r2, #6
 80012d6:	f001 feab 	bl	8003030 <GPIO_PinAFConfig>
 80012da:	4630      	mov	r0, r6
 80012dc:	210e      	movs	r1, #14
 80012de:	2206      	movs	r2, #6
 80012e0:	f001 fea6 	bl	8003030 <GPIO_PinAFConfig>
 80012e4:	4e18      	ldr	r6, [pc, #96]	; (8001348 <_ZN6CMotor10motor_initEv+0x114>)
 80012e6:	4b19      	ldr	r3, [pc, #100]	; (800134c <_ZN6CMotor10motor_initEv+0x118>)
 80012e8:	f8ad 400c 	strh.w	r4, [sp, #12]
 80012ec:	f242 7210 	movw	r2, #10000	; 0x2710
 80012f0:	4630      	mov	r0, r6
 80012f2:	a903      	add	r1, sp, #12
 80012f4:	681b      	ldr	r3, [r3, #0]
 80012f6:	fbb3 f3f2 	udiv	r3, r3, r2
 80012fa:	3b01      	subs	r3, #1
 80012fc:	9304      	str	r3, [sp, #16]
 80012fe:	f8ad 400e 	strh.w	r4, [sp, #14]
 8001302:	f8ad 4014 	strh.w	r4, [sp, #20]
 8001306:	f8ad 4016 	strh.w	r4, [sp, #22]
 800130a:	f001 faad 	bl	8002868 <TIM_TimeBaseInit>
 800130e:	4622      	mov	r2, r4
 8001310:	4640      	mov	r0, r8
 8001312:	4621      	mov	r1, r4
 8001314:	f7ff ff24 	bl	8001160 <_ZN6CMotor7pwm_setEmm>
 8001318:	4630      	mov	r0, r6
 800131a:	4629      	mov	r1, r5
 800131c:	f001 faf4 	bl	8002908 <TIM_Cmd>
 8001320:	4630      	mov	r0, r6
 8001322:	4629      	mov	r1, r5
 8001324:	f001 fb85 	bl	8002a32 <TIM_CtrlPWMOutputs>
 8001328:	4640      	mov	r0, r8
 800132a:	4621      	mov	r1, r4
 800132c:	4622      	mov	r2, r4
 800132e:	f7ff ff77 	bl	8001220 <_ZN6CMotor9set_motorEml>
 8001332:	4640      	mov	r0, r8
 8001334:	4629      	mov	r1, r5
 8001336:	4622      	mov	r2, r4
 8001338:	f7ff ff72 	bl	8001220 <_ZN6CMotor9set_motorEml>
 800133c:	4620      	mov	r0, r4
 800133e:	b007      	add	sp, #28
 8001340:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001344:	48000400 	.word	0x48000400
 8001348:	40012c00 	.word	0x40012c00
 800134c:	20000430 	.word	0x20000430

08001350 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8001350:	bf00      	nop
 8001352:	bf00      	nop
 8001354:	bf00      	nop
 8001356:	bf00      	nop
 8001358:	4770      	bx	lr
	...

0800135c <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 800135c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800135e:	7803      	ldrb	r3, [r0, #0]
 8001360:	9300      	str	r3, [sp, #0]
 8001362:	2401      	movs	r4, #1
 8001364:	4605      	mov	r5, r0
 8001366:	2703      	movs	r7, #3
 8001368:	2600      	movs	r6, #0
 800136a:	4669      	mov	r1, sp
 800136c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001370:	f88d 6007 	strb.w	r6, [sp, #7]
 8001374:	f88d 4004 	strb.w	r4, [sp, #4]
 8001378:	f88d 7005 	strb.w	r7, [sp, #5]
 800137c:	f88d 4006 	strb.w	r4, [sp, #6]
 8001380:	f001 fe10 	bl	8002fa4 <GPIO_Init>
 8001384:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001388:	782a      	ldrb	r2, [r5, #0]
 800138a:	851a      	strh	r2, [r3, #40]	; 0x28
 800138c:	f88d 6007 	strb.w	r6, [sp, #7]
 8001390:	4e08      	ldr	r6, [pc, #32]	; (80013b4 <_ZN8CRGB_I2C12RGBSetLowSDAEv+0x58>)
 8001392:	9400      	str	r4, [sp, #0]
 8001394:	4630      	mov	r0, r6
 8001396:	4669      	mov	r1, sp
 8001398:	f88d 4004 	strb.w	r4, [sp, #4]
 800139c:	f88d 7005 	strb.w	r7, [sp, #5]
 80013a0:	f88d 4006 	strb.w	r4, [sp, #6]
 80013a4:	f001 fdfe 	bl	8002fa4 <GPIO_Init>
 80013a8:	8534      	strh	r4, [r6, #40]	; 0x28
 80013aa:	4628      	mov	r0, r5
 80013ac:	f7ff ffd0 	bl	8001350 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80013b0:	b003      	add	sp, #12
 80013b2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80013b4:	48000400 	.word	0x48000400

080013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 80013b8:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80013ba:	7803      	ldrb	r3, [r0, #0]
 80013bc:	9300      	str	r3, [sp, #0]
 80013be:	2400      	movs	r4, #0
 80013c0:	4605      	mov	r5, r0
 80013c2:	2703      	movs	r7, #3
 80013c4:	4669      	mov	r1, sp
 80013c6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80013ca:	f88d 4004 	strb.w	r4, [sp, #4]
 80013ce:	f88d 4007 	strb.w	r4, [sp, #7]
 80013d2:	f88d 7005 	strb.w	r7, [sp, #5]
 80013d6:	f001 fde5 	bl	8002fa4 <GPIO_Init>
 80013da:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80013de:	782a      	ldrb	r2, [r5, #0]
 80013e0:	619a      	str	r2, [r3, #24]
 80013e2:	f88d 4004 	strb.w	r4, [sp, #4]
 80013e6:	f88d 4007 	strb.w	r4, [sp, #7]
 80013ea:	4c07      	ldr	r4, [pc, #28]	; (8001408 <_ZN8CRGB_I2C13RGBSetHighSDAEv+0x50>)
 80013ec:	f88d 7005 	strb.w	r7, [sp, #5]
 80013f0:	2601      	movs	r6, #1
 80013f2:	4620      	mov	r0, r4
 80013f4:	4669      	mov	r1, sp
 80013f6:	9600      	str	r6, [sp, #0]
 80013f8:	f001 fdd4 	bl	8002fa4 <GPIO_Init>
 80013fc:	61a6      	str	r6, [r4, #24]
 80013fe:	4628      	mov	r0, r5
 8001400:	f7ff ffa6 	bl	8001350 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8001404:	b003      	add	sp, #12
 8001406:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001408:	48000400 	.word	0x48000400

0800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 800140c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001410:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001414:	851a      	strh	r2, [r3, #40]	; 0x28
 8001416:	f7ff bf9b 	b.w	8001350 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

0800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 800141a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800141e:	f44f 7280 	mov.w	r2, #256	; 0x100
 8001422:	619a      	str	r2, [r3, #24]
 8001424:	f7ff bf94 	b.w	8001350 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08001428 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8001428:	b510      	push	{r4, lr}
 800142a:	4604      	mov	r4, r0
 800142c:	f7ff fff5 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001430:	4620      	mov	r0, r4
 8001432:	f7ff ffc1 	bl	80013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001436:	4620      	mov	r0, r4
 8001438:	f7ff ffef 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800143c:	4620      	mov	r0, r4
 800143e:	f7ff ff8d 	bl	800135c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001442:	4620      	mov	r0, r4
 8001444:	f7ff ffe2 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001448:	4620      	mov	r0, r4
 800144a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800144e:	f7ff bfb3 	b.w	80013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08001452 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8001452:	b510      	push	{r4, lr}
 8001454:	4604      	mov	r4, r0
 8001456:	f7ff ffd9 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800145a:	4620      	mov	r0, r4
 800145c:	f7ff ff7e 	bl	800135c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001460:	4620      	mov	r0, r4
 8001462:	f7ff ffda 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001466:	4620      	mov	r0, r4
 8001468:	f7ff ff78 	bl	800135c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800146c:	4620      	mov	r0, r4
 800146e:	f7ff ffd4 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001472:	4620      	mov	r0, r4
 8001474:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001478:	f7ff bf9e 	b.w	80013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 800147c:	b570      	push	{r4, r5, r6, lr}
 800147e:	4604      	mov	r4, r0
 8001480:	460e      	mov	r6, r1
 8001482:	2508      	movs	r5, #8
 8001484:	4620      	mov	r0, r4
 8001486:	f7ff ffc1 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800148a:	0633      	lsls	r3, r6, #24
 800148c:	4620      	mov	r0, r4
 800148e:	d502      	bpl.n	8001496 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8001490:	f7ff ff92 	bl	80013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001494:	e001      	b.n	800149a <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8001496:	f7ff ff61 	bl	800135c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800149a:	4620      	mov	r0, r4
 800149c:	3d01      	subs	r5, #1
 800149e:	f7ff ffbc 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80014a2:	0076      	lsls	r6, r6, #1
 80014a4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80014a8:	b2f6      	uxtb	r6, r6
 80014aa:	d1eb      	bne.n	8001484 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 80014ac:	4620      	mov	r0, r4
 80014ae:	f7ff ffad 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80014b2:	4620      	mov	r0, r4
 80014b4:	f7ff ff80 	bl	80013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80014b8:	4620      	mov	r0, r4
 80014ba:	f7ff ffae 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80014be:	4620      	mov	r0, r4
 80014c0:	f7ff ffa4 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80014c4:	4620      	mov	r0, r4
 80014c6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80014ca:	f7ff bf41 	b.w	8001350 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

080014ce <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 80014ce:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80014d0:	4604      	mov	r4, r0
 80014d2:	460f      	mov	r7, r1
 80014d4:	4616      	mov	r6, r2
 80014d6:	461d      	mov	r5, r3
 80014d8:	f7ff ffa6 	bl	8001428 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80014dc:	4620      	mov	r0, r4
 80014de:	4639      	mov	r1, r7
 80014e0:	f7ff ffcc 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80014e4:	4620      	mov	r0, r4
 80014e6:	4631      	mov	r1, r6
 80014e8:	f7ff ffc8 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80014ec:	4620      	mov	r0, r4
 80014ee:	4629      	mov	r1, r5
 80014f0:	f7ff ffc4 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80014f4:	4620      	mov	r0, r4
 80014f6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80014fa:	f7ff bfaa 	b.w	8001452 <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8001500:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001504:	1e57      	subs	r7, r2, #1
 8001506:	4605      	mov	r5, r0
 8001508:	4689      	mov	r9, r1
 800150a:	4614      	mov	r4, r2
 800150c:	f102 0808 	add.w	r8, r2, #8
 8001510:	463b      	mov	r3, r7
 8001512:	2200      	movs	r2, #0
 8001514:	f803 2f01 	strb.w	r2, [r3, #1]!
 8001518:	4543      	cmp	r3, r8
 800151a:	d1fa      	bne.n	8001512 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x12>
 800151c:	4628      	mov	r0, r5
 800151e:	f7ff ff75 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001522:	4628      	mov	r0, r5
 8001524:	f7ff ff48 	bl	80013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001528:	2608      	movs	r6, #8
 800152a:	463b      	mov	r3, r7
 800152c:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001530:	0052      	lsls	r2, r2, #1
 8001532:	4543      	cmp	r3, r8
 8001534:	701a      	strb	r2, [r3, #0]
 8001536:	d1f9      	bne.n	800152c <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2c>
 8001538:	4628      	mov	r0, r5
 800153a:	f7ff ff6e 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800153e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001542:	8a1b      	ldrh	r3, [r3, #16]
 8001544:	b29b      	uxth	r3, r3
 8001546:	07d9      	lsls	r1, r3, #31
 8001548:	bf42      	ittt	mi
 800154a:	7822      	ldrbmi	r2, [r4, #0]
 800154c:	f042 0201 	orrmi.w	r2, r2, #1
 8001550:	7022      	strbmi	r2, [r4, #0]
 8001552:	079a      	lsls	r2, r3, #30
 8001554:	bf42      	ittt	mi
 8001556:	7862      	ldrbmi	r2, [r4, #1]
 8001558:	f042 0201 	orrmi.w	r2, r2, #1
 800155c:	7062      	strbmi	r2, [r4, #1]
 800155e:	0758      	lsls	r0, r3, #29
 8001560:	bf42      	ittt	mi
 8001562:	78a2      	ldrbmi	r2, [r4, #2]
 8001564:	f042 0201 	orrmi.w	r2, r2, #1
 8001568:	70a2      	strbmi	r2, [r4, #2]
 800156a:	0719      	lsls	r1, r3, #28
 800156c:	bf42      	ittt	mi
 800156e:	78e2      	ldrbmi	r2, [r4, #3]
 8001570:	f042 0201 	orrmi.w	r2, r2, #1
 8001574:	70e2      	strbmi	r2, [r4, #3]
 8001576:	06da      	lsls	r2, r3, #27
 8001578:	bf42      	ittt	mi
 800157a:	7922      	ldrbmi	r2, [r4, #4]
 800157c:	f042 0201 	orrmi.w	r2, r2, #1
 8001580:	7122      	strbmi	r2, [r4, #4]
 8001582:	0698      	lsls	r0, r3, #26
 8001584:	bf42      	ittt	mi
 8001586:	7962      	ldrbmi	r2, [r4, #5]
 8001588:	f042 0201 	orrmi.w	r2, r2, #1
 800158c:	7162      	strbmi	r2, [r4, #5]
 800158e:	0659      	lsls	r1, r3, #25
 8001590:	bf42      	ittt	mi
 8001592:	79a2      	ldrbmi	r2, [r4, #6]
 8001594:	f042 0201 	orrmi.w	r2, r2, #1
 8001598:	71a2      	strbmi	r2, [r4, #6]
 800159a:	061a      	lsls	r2, r3, #24
 800159c:	bf42      	ittt	mi
 800159e:	79e3      	ldrbmi	r3, [r4, #7]
 80015a0:	f043 0301 	orrmi.w	r3, r3, #1
 80015a4:	71e3      	strbmi	r3, [r4, #7]
 80015a6:	4b0f      	ldr	r3, [pc, #60]	; (80015e4 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xe4>)
 80015a8:	8a1b      	ldrh	r3, [r3, #16]
 80015aa:	07db      	lsls	r3, r3, #31
 80015ac:	bf42      	ittt	mi
 80015ae:	7a23      	ldrbmi	r3, [r4, #8]
 80015b0:	f043 0301 	orrmi.w	r3, r3, #1
 80015b4:	7223      	strbmi	r3, [r4, #8]
 80015b6:	4628      	mov	r0, r5
 80015b8:	f7ff ff28 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80015bc:	3e01      	subs	r6, #1
 80015be:	d1b4      	bne.n	800152a <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2a>
 80015c0:	f1b9 0f00 	cmp.w	r9, #0
 80015c4:	d002      	beq.n	80015cc <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xcc>
 80015c6:	4628      	mov	r0, r5
 80015c8:	f7ff fec8 	bl	800135c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80015cc:	4628      	mov	r0, r5
 80015ce:	f7ff ff24 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80015d2:	4628      	mov	r0, r5
 80015d4:	f7ff ff1a 	bl	800140c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80015d8:	4628      	mov	r0, r5
 80015da:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80015de:	f7ff beb7 	b.w	8001350 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80015e2:	bf00      	nop
 80015e4:	48000400 	.word	0x48000400

080015e8 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 80015e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80015ea:	4604      	mov	r4, r0
 80015ec:	460d      	mov	r5, r1
 80015ee:	4617      	mov	r7, r2
 80015f0:	461e      	mov	r6, r3
 80015f2:	f7ff ff19 	bl	8001428 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80015f6:	4620      	mov	r0, r4
 80015f8:	4629      	mov	r1, r5
 80015fa:	f7ff ff3f 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80015fe:	4639      	mov	r1, r7
 8001600:	4620      	mov	r0, r4
 8001602:	f7ff ff3b 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001606:	4620      	mov	r0, r4
 8001608:	f7ff ff0e 	bl	8001428 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800160c:	4620      	mov	r0, r4
 800160e:	f045 0101 	orr.w	r1, r5, #1
 8001612:	f7ff ff33 	bl	800147c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001616:	4620      	mov	r0, r4
 8001618:	4632      	mov	r2, r6
 800161a:	2100      	movs	r1, #0
 800161c:	f7ff ff70 	bl	8001500 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001620:	4620      	mov	r0, r4
 8001622:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001626:	f7ff bf14 	b.w	8001452 <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

0800162c <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 800162c:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8001630:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8001634:	2400      	movs	r4, #0
 8001636:	4605      	mov	r5, r0
 8001638:	2601      	movs	r6, #1
 800163a:	2703      	movs	r7, #3
 800163c:	6003      	str	r3, [r0, #0]
 800163e:	4669      	mov	r1, sp
 8001640:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001644:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001648:	9300      	str	r3, [sp, #0]
 800164a:	f88d 4006 	strb.w	r4, [sp, #6]
 800164e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001652:	f04f 08ff 	mov.w	r8, #255	; 0xff
 8001656:	f88d 6004 	strb.w	r6, [sp, #4]
 800165a:	f88d 7005 	strb.w	r7, [sp, #5]
 800165e:	f001 fca1 	bl	8002fa4 <GPIO_Init>
 8001662:	4669      	mov	r1, sp
 8001664:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001668:	f88d 4004 	strb.w	r4, [sp, #4]
 800166c:	f88d 4007 	strb.w	r4, [sp, #7]
 8001670:	f8cd 8000 	str.w	r8, [sp]
 8001674:	f88d 7005 	strb.w	r7, [sp, #5]
 8001678:	f001 fc94 	bl	8002fa4 <GPIO_Init>
 800167c:	4641      	mov	r1, r8
 800167e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001682:	f001 fcd1 	bl	8003028 <GPIO_SetBits>
 8001686:	f88d 4004 	strb.w	r4, [sp, #4]
 800168a:	f88d 4007 	strb.w	r4, [sp, #7]
 800168e:	4c0c      	ldr	r4, [pc, #48]	; (80016c0 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x94>)
 8001690:	9600      	str	r6, [sp, #0]
 8001692:	4620      	mov	r0, r4
 8001694:	4669      	mov	r1, sp
 8001696:	f88d 7005 	strb.w	r7, [sp, #5]
 800169a:	f001 fc83 	bl	8002fa4 <GPIO_Init>
 800169e:	4631      	mov	r1, r6
 80016a0:	4620      	mov	r0, r4
 80016a2:	f001 fcc1 	bl	8003028 <GPIO_SetBits>
 80016a6:	4628      	mov	r0, r5
 80016a8:	f7ff feb7 	bl	800141a <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80016ac:	4628      	mov	r0, r5
 80016ae:	f7ff fe55 	bl	800135c <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80016b2:	4628      	mov	r0, r5
 80016b4:	f7ff fe80 	bl	80013b8 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80016b8:	b002      	add	sp, #8
 80016ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80016be:	bf00      	nop
 80016c0:	48000400 	.word	0x48000400

080016c4 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>:
 80016c4:	2300      	movs	r3, #0
 80016c6:	6003      	str	r3, [r0, #0]
 80016c8:	4770      	bx	lr

080016ca <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>:
 80016ca:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80016ce:	6003      	str	r3, [r0, #0]
 80016d0:	4770      	bx	lr

080016d2 <_ZN4CI2C5delayEv>:
 80016d2:	230b      	movs	r3, #11
 80016d4:	3b01      	subs	r3, #1
 80016d6:	d001      	beq.n	80016dc <_ZN4CI2C5delayEv+0xa>
 80016d8:	bf00      	nop
 80016da:	e7fb      	b.n	80016d4 <_ZN4CI2C5delayEv+0x2>
 80016dc:	4770      	bx	lr
	...

080016e0 <_ZN4CI2C9SetLowSDAEv>:
 80016e0:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80016e2:	4c0c      	ldr	r4, [pc, #48]	; (8001714 <_ZN4CI2C9SetLowSDAEv+0x34>)
 80016e4:	2301      	movs	r3, #1
 80016e6:	2203      	movs	r2, #3
 80016e8:	4606      	mov	r6, r0
 80016ea:	2580      	movs	r5, #128	; 0x80
 80016ec:	f88d 3004 	strb.w	r3, [sp, #4]
 80016f0:	f88d 3006 	strb.w	r3, [sp, #6]
 80016f4:	4620      	mov	r0, r4
 80016f6:	2300      	movs	r3, #0
 80016f8:	4669      	mov	r1, sp
 80016fa:	f88d 2005 	strb.w	r2, [sp, #5]
 80016fe:	f88d 3007 	strb.w	r3, [sp, #7]
 8001702:	9500      	str	r5, [sp, #0]
 8001704:	f001 fc4e 	bl	8002fa4 <GPIO_Init>
 8001708:	8525      	strh	r5, [r4, #40]	; 0x28
 800170a:	4630      	mov	r0, r6
 800170c:	f7ff ffe1 	bl	80016d2 <_ZN4CI2C5delayEv>
 8001710:	b002      	add	sp, #8
 8001712:	bd70      	pop	{r4, r5, r6, pc}
 8001714:	48000400 	.word	0x48000400

08001718 <_ZN4CI2C10SetHighSDAEv>:
 8001718:	4b05      	ldr	r3, [pc, #20]	; (8001730 <_ZN4CI2C10SetHighSDAEv+0x18>)
 800171a:	681a      	ldr	r2, [r3, #0]
 800171c:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8001720:	601a      	str	r2, [r3, #0]
 8001722:	681a      	ldr	r2, [r3, #0]
 8001724:	601a      	str	r2, [r3, #0]
 8001726:	2280      	movs	r2, #128	; 0x80
 8001728:	619a      	str	r2, [r3, #24]
 800172a:	f7ff bfd2 	b.w	80016d2 <_ZN4CI2C5delayEv>
 800172e:	bf00      	nop
 8001730:	48000400 	.word	0x48000400

08001734 <_ZN4CI2C9SetLowSCLEv>:
 8001734:	4b02      	ldr	r3, [pc, #8]	; (8001740 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8001736:	2240      	movs	r2, #64	; 0x40
 8001738:	851a      	strh	r2, [r3, #40]	; 0x28
 800173a:	f7ff bfca 	b.w	80016d2 <_ZN4CI2C5delayEv>
 800173e:	bf00      	nop
 8001740:	48000400 	.word	0x48000400

08001744 <_ZN4CI2C10SetHighSCLEv>:
 8001744:	4b02      	ldr	r3, [pc, #8]	; (8001750 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8001746:	2240      	movs	r2, #64	; 0x40
 8001748:	619a      	str	r2, [r3, #24]
 800174a:	f7ff bfc2 	b.w	80016d2 <_ZN4CI2C5delayEv>
 800174e:	bf00      	nop
 8001750:	48000400 	.word	0x48000400

08001754 <_ZN4CI2C4initEv>:
 8001754:	b513      	push	{r0, r1, r4, lr}
 8001756:	4604      	mov	r4, r0
 8001758:	2101      	movs	r1, #1
 800175a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800175e:	f001 f859 	bl	8002814 <RCC_AHBPeriphClockCmd>
 8001762:	23c0      	movs	r3, #192	; 0xc0
 8001764:	9300      	str	r3, [sp, #0]
 8001766:	2301      	movs	r3, #1
 8001768:	2203      	movs	r2, #3
 800176a:	4669      	mov	r1, sp
 800176c:	f88d 3004 	strb.w	r3, [sp, #4]
 8001770:	f88d 3006 	strb.w	r3, [sp, #6]
 8001774:	4809      	ldr	r0, [pc, #36]	; (800179c <_ZN4CI2C4initEv+0x48>)
 8001776:	f88d 2005 	strb.w	r2, [sp, #5]
 800177a:	2300      	movs	r3, #0
 800177c:	f88d 3007 	strb.w	r3, [sp, #7]
 8001780:	f001 fc10 	bl	8002fa4 <GPIO_Init>
 8001784:	4620      	mov	r0, r4
 8001786:	f7ff ffdd 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 800178a:	4620      	mov	r0, r4
 800178c:	f7ff ffa8 	bl	80016e0 <_ZN4CI2C9SetLowSDAEv>
 8001790:	4620      	mov	r0, r4
 8001792:	f7ff ffc1 	bl	8001718 <_ZN4CI2C10SetHighSDAEv>
 8001796:	b002      	add	sp, #8
 8001798:	bd10      	pop	{r4, pc}
 800179a:	bf00      	nop
 800179c:	48000400 	.word	0x48000400

080017a0 <_ZN4CI2C5StartEv>:
 80017a0:	b510      	push	{r4, lr}
 80017a2:	4604      	mov	r4, r0
 80017a4:	f7ff ffce 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 80017a8:	4620      	mov	r0, r4
 80017aa:	f7ff ffb5 	bl	8001718 <_ZN4CI2C10SetHighSDAEv>
 80017ae:	4620      	mov	r0, r4
 80017b0:	f7ff ffc8 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f7ff ff93 	bl	80016e0 <_ZN4CI2C9SetLowSDAEv>
 80017ba:	4620      	mov	r0, r4
 80017bc:	f7ff ffba 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 80017c0:	4620      	mov	r0, r4
 80017c2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80017c6:	f7ff bfa7 	b.w	8001718 <_ZN4CI2C10SetHighSDAEv>

080017ca <_ZN4CI2C4StopEv>:
 80017ca:	b510      	push	{r4, lr}
 80017cc:	4604      	mov	r4, r0
 80017ce:	f7ff ffb1 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 80017d2:	4620      	mov	r0, r4
 80017d4:	f7ff ff84 	bl	80016e0 <_ZN4CI2C9SetLowSDAEv>
 80017d8:	4620      	mov	r0, r4
 80017da:	f7ff ffb3 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 80017de:	4620      	mov	r0, r4
 80017e0:	f7ff ff7e 	bl	80016e0 <_ZN4CI2C9SetLowSDAEv>
 80017e4:	4620      	mov	r0, r4
 80017e6:	f7ff ffad 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 80017ea:	4620      	mov	r0, r4
 80017ec:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80017f0:	f7ff bf92 	b.w	8001718 <_ZN4CI2C10SetHighSDAEv>

080017f4 <_ZN4CI2C5WriteEh>:
 80017f4:	b570      	push	{r4, r5, r6, lr}
 80017f6:	4604      	mov	r4, r0
 80017f8:	460e      	mov	r6, r1
 80017fa:	2508      	movs	r5, #8
 80017fc:	4620      	mov	r0, r4
 80017fe:	f7ff ff99 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 8001802:	0633      	lsls	r3, r6, #24
 8001804:	4620      	mov	r0, r4
 8001806:	d502      	bpl.n	800180e <_ZN4CI2C5WriteEh+0x1a>
 8001808:	f7ff ff86 	bl	8001718 <_ZN4CI2C10SetHighSDAEv>
 800180c:	e001      	b.n	8001812 <_ZN4CI2C5WriteEh+0x1e>
 800180e:	f7ff ff67 	bl	80016e0 <_ZN4CI2C9SetLowSDAEv>
 8001812:	4620      	mov	r0, r4
 8001814:	3d01      	subs	r5, #1
 8001816:	f7ff ff95 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 800181a:	0076      	lsls	r6, r6, #1
 800181c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001820:	b2f6      	uxtb	r6, r6
 8001822:	d1eb      	bne.n	80017fc <_ZN4CI2C5WriteEh+0x8>
 8001824:	4620      	mov	r0, r4
 8001826:	f7ff ff85 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 800182a:	4620      	mov	r0, r4
 800182c:	f7ff ff74 	bl	8001718 <_ZN4CI2C10SetHighSDAEv>
 8001830:	4620      	mov	r0, r4
 8001832:	f7ff ff87 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 8001836:	4b07      	ldr	r3, [pc, #28]	; (8001854 <_ZN4CI2C5WriteEh+0x60>)
 8001838:	8a1d      	ldrh	r5, [r3, #16]
 800183a:	4620      	mov	r0, r4
 800183c:	f7ff ff7a 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 8001840:	b2ad      	uxth	r5, r5
 8001842:	4620      	mov	r0, r4
 8001844:	f7ff ff45 	bl	80016d2 <_ZN4CI2C5delayEv>
 8001848:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 800184c:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001850:	bd70      	pop	{r4, r5, r6, pc}
 8001852:	bf00      	nop
 8001854:	48000400 	.word	0x48000400

08001858 <_ZN4CI2C9write_regEhhh>:
 8001858:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800185a:	4604      	mov	r4, r0
 800185c:	460f      	mov	r7, r1
 800185e:	4616      	mov	r6, r2
 8001860:	461d      	mov	r5, r3
 8001862:	f7ff ff9d 	bl	80017a0 <_ZN4CI2C5StartEv>
 8001866:	4639      	mov	r1, r7
 8001868:	4620      	mov	r0, r4
 800186a:	f7ff ffc3 	bl	80017f4 <_ZN4CI2C5WriteEh>
 800186e:	4631      	mov	r1, r6
 8001870:	4620      	mov	r0, r4
 8001872:	f7ff ffbf 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8001876:	4620      	mov	r0, r4
 8001878:	4629      	mov	r1, r5
 800187a:	f7ff ffbb 	bl	80017f4 <_ZN4CI2C5WriteEh>
 800187e:	4620      	mov	r0, r4
 8001880:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001884:	f7ff bfa1 	b.w	80017ca <_ZN4CI2C4StopEv>

08001888 <_ZN4CI2C15write_reg_multiEhhPhj>:
 8001888:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800188c:	4605      	mov	r5, r0
 800188e:	4688      	mov	r8, r1
 8001890:	4617      	mov	r7, r2
 8001892:	461c      	mov	r4, r3
 8001894:	9e06      	ldr	r6, [sp, #24]
 8001896:	f7ff ff83 	bl	80017a0 <_ZN4CI2C5StartEv>
 800189a:	4641      	mov	r1, r8
 800189c:	4628      	mov	r0, r5
 800189e:	f7ff ffa9 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80018a2:	4628      	mov	r0, r5
 80018a4:	4639      	mov	r1, r7
 80018a6:	f7ff ffa5 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80018aa:	4426      	add	r6, r4
 80018ac:	42b4      	cmp	r4, r6
 80018ae:	4628      	mov	r0, r5
 80018b0:	d004      	beq.n	80018bc <_ZN4CI2C15write_reg_multiEhhPhj+0x34>
 80018b2:	f814 1b01 	ldrb.w	r1, [r4], #1
 80018b6:	f7ff ff9d 	bl	80017f4 <_ZN4CI2C5WriteEh>
 80018ba:	e7f7      	b.n	80018ac <_ZN4CI2C15write_reg_multiEhhPhj+0x24>
 80018bc:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80018c0:	f7ff bf83 	b.w	80017ca <_ZN4CI2C4StopEv>

080018c4 <_ZN4CI2C4ReadEh>:
 80018c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80018c6:	4605      	mov	r5, r0
 80018c8:	460f      	mov	r7, r1
 80018ca:	f7ff ff33 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 80018ce:	2608      	movs	r6, #8
 80018d0:	2400      	movs	r4, #0
 80018d2:	4628      	mov	r0, r5
 80018d4:	f7ff ff36 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 80018d8:	4b10      	ldr	r3, [pc, #64]	; (800191c <_ZN4CI2C4ReadEh+0x58>)
 80018da:	8a1b      	ldrh	r3, [r3, #16]
 80018dc:	0064      	lsls	r4, r4, #1
 80018de:	061b      	lsls	r3, r3, #24
 80018e0:	b2e4      	uxtb	r4, r4
 80018e2:	4628      	mov	r0, r5
 80018e4:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 80018e8:	bf48      	it	mi
 80018ea:	f044 0401 	orrmi.w	r4, r4, #1
 80018ee:	f7ff ff21 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 80018f2:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 80018f6:	d1ec      	bne.n	80018d2 <_ZN4CI2C4ReadEh+0xe>
 80018f8:	4628      	mov	r0, r5
 80018fa:	b117      	cbz	r7, 8001902 <_ZN4CI2C4ReadEh+0x3e>
 80018fc:	f7ff fef0 	bl	80016e0 <_ZN4CI2C9SetLowSDAEv>
 8001900:	e001      	b.n	8001906 <_ZN4CI2C4ReadEh+0x42>
 8001902:	f7ff ff09 	bl	8001718 <_ZN4CI2C10SetHighSDAEv>
 8001906:	4628      	mov	r0, r5
 8001908:	f7ff ff1c 	bl	8001744 <_ZN4CI2C10SetHighSCLEv>
 800190c:	4628      	mov	r0, r5
 800190e:	f7ff ff11 	bl	8001734 <_ZN4CI2C9SetLowSCLEv>
 8001912:	4628      	mov	r0, r5
 8001914:	f7ff ff00 	bl	8001718 <_ZN4CI2C10SetHighSDAEv>
 8001918:	4620      	mov	r0, r4
 800191a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800191c:	48000400 	.word	0x48000400

08001920 <_ZN4CI2C8read_regEhh>:
 8001920:	b570      	push	{r4, r5, r6, lr}
 8001922:	4604      	mov	r4, r0
 8001924:	460d      	mov	r5, r1
 8001926:	4616      	mov	r6, r2
 8001928:	f7ff ff3a 	bl	80017a0 <_ZN4CI2C5StartEv>
 800192c:	4629      	mov	r1, r5
 800192e:	4620      	mov	r0, r4
 8001930:	f7ff ff60 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8001934:	4631      	mov	r1, r6
 8001936:	4620      	mov	r0, r4
 8001938:	f7ff ff5c 	bl	80017f4 <_ZN4CI2C5WriteEh>
 800193c:	4620      	mov	r0, r4
 800193e:	f7ff ff2f 	bl	80017a0 <_ZN4CI2C5StartEv>
 8001942:	f045 0101 	orr.w	r1, r5, #1
 8001946:	4620      	mov	r0, r4
 8001948:	f7ff ff54 	bl	80017f4 <_ZN4CI2C5WriteEh>
 800194c:	2100      	movs	r1, #0
 800194e:	4620      	mov	r0, r4
 8001950:	f7ff ffb8 	bl	80018c4 <_ZN4CI2C4ReadEh>
 8001954:	4605      	mov	r5, r0
 8001956:	4620      	mov	r0, r4
 8001958:	f7ff ff37 	bl	80017ca <_ZN4CI2C4StopEv>
 800195c:	4628      	mov	r0, r5
 800195e:	bd70      	pop	{r4, r5, r6, pc}

08001960 <_ZN4CI2C14read_reg_multiEhhPhj>:
 8001960:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001964:	4604      	mov	r4, r0
 8001966:	460f      	mov	r7, r1
 8001968:	4690      	mov	r8, r2
 800196a:	461d      	mov	r5, r3
 800196c:	9e06      	ldr	r6, [sp, #24]
 800196e:	f7ff ff17 	bl	80017a0 <_ZN4CI2C5StartEv>
 8001972:	4639      	mov	r1, r7
 8001974:	4620      	mov	r0, r4
 8001976:	f7ff ff3d 	bl	80017f4 <_ZN4CI2C5WriteEh>
 800197a:	4641      	mov	r1, r8
 800197c:	4620      	mov	r0, r4
 800197e:	f7ff ff39 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8001982:	4620      	mov	r0, r4
 8001984:	f7ff ff0c 	bl	80017a0 <_ZN4CI2C5StartEv>
 8001988:	4620      	mov	r0, r4
 800198a:	f047 0101 	orr.w	r1, r7, #1
 800198e:	f7ff ff31 	bl	80017f4 <_ZN4CI2C5WriteEh>
 8001992:	442e      	add	r6, r5
 8001994:	42b5      	cmp	r5, r6
 8001996:	4620      	mov	r0, r4
 8001998:	d005      	beq.n	80019a6 <_ZN4CI2C14read_reg_multiEhhPhj+0x46>
 800199a:	2101      	movs	r1, #1
 800199c:	f7ff ff92 	bl	80018c4 <_ZN4CI2C4ReadEh>
 80019a0:	f805 0b01 	strb.w	r0, [r5], #1
 80019a4:	e7f6      	b.n	8001994 <_ZN4CI2C14read_reg_multiEhhPhj+0x34>
 80019a6:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80019aa:	f7ff bf0e 	b.w	80017ca <_ZN4CI2C4StopEv>
	...

080019b0 <_ZN5CGPIO9gpio_initEv>:
 80019b0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80019b4:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80019b8:	b087      	sub	sp, #28
 80019ba:	2101      	movs	r1, #1
 80019bc:	f000 ff2a 	bl	8002814 <RCC_AHBPeriphClockCmd>
 80019c0:	4f44      	ldr	r7, [pc, #272]	; (8001ad4 <_ZN5CGPIO9gpio_initEv+0x124>)
 80019c2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80019c6:	2101      	movs	r1, #1
 80019c8:	f000 ff24 	bl	8002814 <RCC_AHBPeriphClockCmd>
 80019cc:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80019d0:	2101      	movs	r1, #1
 80019d2:	2400      	movs	r4, #0
 80019d4:	f000 ff1e 	bl	8002814 <RCC_AHBPeriphClockCmd>
 80019d8:	2501      	movs	r5, #1
 80019da:	f44f 4800 	mov.w	r8, #32768	; 0x8000
 80019de:	2603      	movs	r6, #3
 80019e0:	4638      	mov	r0, r7
 80019e2:	a902      	add	r1, sp, #8
 80019e4:	f88d 600d 	strb.w	r6, [sp, #13]
 80019e8:	f8cd 8008 	str.w	r8, [sp, #8]
 80019ec:	f88d 500c 	strb.w	r5, [sp, #12]
 80019f0:	f88d 400e 	strb.w	r4, [sp, #14]
 80019f4:	f88d 400f 	strb.w	r4, [sp, #15]
 80019f8:	f001 fad4 	bl	8002fa4 <GPIO_Init>
 80019fc:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001a00:	4638      	mov	r0, r7
 8001a02:	a902      	add	r1, sp, #8
 8001a04:	9302      	str	r3, [sp, #8]
 8001a06:	f88d 600d 	strb.w	r6, [sp, #13]
 8001a0a:	f88d 400c 	strb.w	r4, [sp, #12]
 8001a0e:	f88d 400f 	strb.w	r4, [sp, #15]
 8001a12:	f001 fac7 	bl	8002fa4 <GPIO_Init>
 8001a16:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8001a1a:	a902      	add	r1, sp, #8
 8001a1c:	482e      	ldr	r0, [pc, #184]	; (8001ad8 <_ZN5CGPIO9gpio_initEv+0x128>)
 8001a1e:	9302      	str	r3, [sp, #8]
 8001a20:	f88d 400c 	strb.w	r4, [sp, #12]
 8001a24:	f88d 500f 	strb.w	r5, [sp, #15]
 8001a28:	f001 fabc 	bl	8002fa4 <GPIO_Init>
 8001a2c:	4628      	mov	r0, r5
 8001a2e:	4629      	mov	r1, r5
 8001a30:	f000 fefe 	bl	8002830 <RCC_APB2PeriphClockCmd>
 8001a34:	f04f 0b10 	mov.w	fp, #16
 8001a38:	2106      	movs	r1, #6
 8001a3a:	2002      	movs	r0, #2
 8001a3c:	f001 fb40 	bl	80030c0 <SYSCFG_EXTILineConfig>
 8001a40:	f04f 0a06 	mov.w	sl, #6
 8001a44:	eb0d 000b 	add.w	r0, sp, fp
 8001a48:	260f      	movs	r6, #15
 8001a4a:	f8cd a010 	str.w	sl, [sp, #16]
 8001a4e:	f88d 4014 	strb.w	r4, [sp, #20]
 8001a52:	f88d b015 	strb.w	fp, [sp, #21]
 8001a56:	f88d 5016 	strb.w	r5, [sp, #22]
 8001a5a:	f001 fa11 	bl	8002e80 <EXTI_Init>
 8001a5e:	2317      	movs	r3, #23
 8001a60:	a801      	add	r0, sp, #4
 8001a62:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a66:	f88d 6005 	strb.w	r6, [sp, #5]
 8001a6a:	f88d 6006 	strb.w	r6, [sp, #6]
 8001a6e:	f88d 5007 	strb.w	r5, [sp, #7]
 8001a72:	f001 f9cb 	bl	8002e0c <NVIC_Init>
 8001a76:	210c      	movs	r1, #12
 8001a78:	2002      	movs	r0, #2
 8001a7a:	f001 fb21 	bl	80030c0 <SYSCFG_EXTILineConfig>
 8001a7e:	f04f 090c 	mov.w	r9, #12
 8001a82:	eb0d 000b 	add.w	r0, sp, fp
 8001a86:	f8cd 9010 	str.w	r9, [sp, #16]
 8001a8a:	f88d 4014 	strb.w	r4, [sp, #20]
 8001a8e:	f88d b015 	strb.w	fp, [sp, #21]
 8001a92:	f88d 5016 	strb.w	r5, [sp, #22]
 8001a96:	f001 f9f3 	bl	8002e80 <EXTI_Init>
 8001a9a:	2328      	movs	r3, #40	; 0x28
 8001a9c:	a801      	add	r0, sp, #4
 8001a9e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001aa2:	f88d 6005 	strb.w	r6, [sp, #5]
 8001aa6:	f88d 6006 	strb.w	r6, [sp, #6]
 8001aaa:	f88d 5007 	strb.w	r5, [sp, #7]
 8001aae:	f001 f9ad 	bl	8002e0c <NVIC_Init>
 8001ab2:	4650      	mov	r0, sl
 8001ab4:	f001 fa6a 	bl	8002f8c <EXTI_ClearITPendingBit>
 8001ab8:	4648      	mov	r0, r9
 8001aba:	f001 fa67 	bl	8002f8c <EXTI_ClearITPendingBit>
 8001abe:	4b07      	ldr	r3, [pc, #28]	; (8001adc <_ZN5CGPIO9gpio_initEv+0x12c>)
 8001ac0:	601c      	str	r4, [r3, #0]
 8001ac2:	4b07      	ldr	r3, [pc, #28]	; (8001ae0 <_ZN5CGPIO9gpio_initEv+0x130>)
 8001ac4:	4620      	mov	r0, r4
 8001ac6:	601c      	str	r4, [r3, #0]
 8001ac8:	f8c7 8018 	str.w	r8, [r7, #24]
 8001acc:	b007      	add	sp, #28
 8001ace:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8001ad2:	bf00      	nop
 8001ad4:	48000400 	.word	0x48000400
 8001ad8:	48000800 	.word	0x48000800
 8001adc:	20000c4c 	.word	0x20000c4c
 8001ae0:	20000c50 	.word	0x20000c50

08001ae4 <_ZN5CGPIO7gpio_onEm>:
 8001ae4:	4b01      	ldr	r3, [pc, #4]	; (8001aec <_ZN5CGPIO7gpio_onEm+0x8>)
 8001ae6:	6199      	str	r1, [r3, #24]
 8001ae8:	4770      	bx	lr
 8001aea:	bf00      	nop
 8001aec:	48000400 	.word	0x48000400

08001af0 <_ZN5CGPIO8gpio_offEm>:
 8001af0:	4b01      	ldr	r3, [pc, #4]	; (8001af8 <_ZN5CGPIO8gpio_offEm+0x8>)
 8001af2:	b289      	uxth	r1, r1
 8001af4:	8519      	strh	r1, [r3, #40]	; 0x28
 8001af6:	4770      	bx	lr
 8001af8:	48000400 	.word	0x48000400

08001afc <_ZN5CGPIO7gpio_inEm>:
 8001afc:	4b02      	ldr	r3, [pc, #8]	; (8001b08 <_ZN5CGPIO7gpio_inEm+0xc>)
 8001afe:	8a18      	ldrh	r0, [r3, #16]
 8001b00:	b280      	uxth	r0, r0
 8001b02:	ea21 0000 	bic.w	r0, r1, r0
 8001b06:	4770      	bx	lr
 8001b08:	48000400 	.word	0x48000400

08001b0c <EXTI9_5_IRQHandler>:
 8001b0c:	4a03      	ldr	r2, [pc, #12]	; (8001b1c <EXTI9_5_IRQHandler+0x10>)
 8001b0e:	6813      	ldr	r3, [r2, #0]
 8001b10:	2006      	movs	r0, #6
 8001b12:	3301      	adds	r3, #1
 8001b14:	6013      	str	r3, [r2, #0]
 8001b16:	f001 ba39 	b.w	8002f8c <EXTI_ClearITPendingBit>
 8001b1a:	bf00      	nop
 8001b1c:	20000c4c 	.word	0x20000c4c

08001b20 <EXTI15_10_IRQHandler>:
 8001b20:	4a03      	ldr	r2, [pc, #12]	; (8001b30 <EXTI15_10_IRQHandler+0x10>)
 8001b22:	6813      	ldr	r3, [r2, #0]
 8001b24:	200c      	movs	r0, #12
 8001b26:	3301      	adds	r3, #1
 8001b28:	6013      	str	r3, [r2, #0]
 8001b2a:	f001 ba2f 	b.w	8002f8c <EXTI_ClearITPendingBit>
 8001b2e:	bf00      	nop
 8001b30:	20000c50 	.word	0x20000c50

08001b34 <_ZN9CTerminal12clear_bufferEv>:
 8001b34:	4a05      	ldr	r2, [pc, #20]	; (8001b4c <_ZN9CTerminal12clear_bufferEv+0x18>)
 8001b36:	2300      	movs	r3, #0
 8001b38:	6013      	str	r3, [r2, #0]
 8001b3a:	4a05      	ldr	r2, [pc, #20]	; (8001b50 <_ZN9CTerminal12clear_bufferEv+0x1c>)
 8001b3c:	6013      	str	r3, [r2, #0]
 8001b3e:	4a05      	ldr	r2, [pc, #20]	; (8001b54 <_ZN9CTerminal12clear_bufferEv+0x20>)
 8001b40:	2100      	movs	r1, #0
 8001b42:	54d1      	strb	r1, [r2, r3]
 8001b44:	3301      	adds	r3, #1
 8001b46:	2b10      	cmp	r3, #16
 8001b48:	d1f9      	bne.n	8001b3e <_ZN9CTerminal12clear_bufferEv+0xa>
 8001b4a:	4770      	bx	lr
 8001b4c:	20000c54 	.word	0x20000c54
 8001b50:	20000c68 	.word	0x20000c68
 8001b54:	20000c58 	.word	0x20000c58

08001b58 <_ZN9CTerminal13terminal_initEv>:
 8001b58:	b570      	push	{r4, r5, r6, lr}
 8001b5a:	b08a      	sub	sp, #40	; 0x28
 8001b5c:	f7ff ffea 	bl	8001b34 <_ZN9CTerminal12clear_bufferEv>
 8001b60:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001b64:	2101      	movs	r1, #1
 8001b66:	f000 fe55 	bl	8002814 <RCC_AHBPeriphClockCmd>
 8001b6a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001b6e:	2101      	movs	r1, #1
 8001b70:	f000 fe5e 	bl	8002830 <RCC_APB2PeriphClockCmd>
 8001b74:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001b78:	9302      	str	r3, [sp, #8]
 8001b7a:	2302      	movs	r3, #2
 8001b7c:	2400      	movs	r4, #0
 8001b7e:	f88d 300c 	strb.w	r3, [sp, #12]
 8001b82:	a902      	add	r1, sp, #8
 8001b84:	2303      	movs	r3, #3
 8001b86:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001b8a:	f88d 300d 	strb.w	r3, [sp, #13]
 8001b8e:	f88d 400e 	strb.w	r4, [sp, #14]
 8001b92:	f88d 400f 	strb.w	r4, [sp, #15]
 8001b96:	f001 fa05 	bl	8002fa4 <GPIO_Init>
 8001b9a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001b9e:	2109      	movs	r1, #9
 8001ba0:	2207      	movs	r2, #7
 8001ba2:	f001 fa45 	bl	8003030 <GPIO_PinAFConfig>
 8001ba6:	4d18      	ldr	r5, [pc, #96]	; (8001c08 <_ZN9CTerminal13terminal_initEv+0xb0>)
 8001ba8:	2207      	movs	r2, #7
 8001baa:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001bae:	210a      	movs	r1, #10
 8001bb0:	f001 fa3e 	bl	8003030 <GPIO_PinAFConfig>
 8001bb4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001bb8:	9304      	str	r3, [sp, #16]
 8001bba:	4628      	mov	r0, r5
 8001bbc:	230c      	movs	r3, #12
 8001bbe:	a904      	add	r1, sp, #16
 8001bc0:	9308      	str	r3, [sp, #32]
 8001bc2:	9405      	str	r4, [sp, #20]
 8001bc4:	9406      	str	r4, [sp, #24]
 8001bc6:	9407      	str	r4, [sp, #28]
 8001bc8:	9409      	str	r4, [sp, #36]	; 0x24
 8001bca:	f000 ff5b 	bl	8002a84 <USART_Init>
 8001bce:	4628      	mov	r0, r5
 8001bd0:	2101      	movs	r1, #1
 8001bd2:	f000 ffb9 	bl	8002b48 <USART_Cmd>
 8001bd6:	2201      	movs	r2, #1
 8001bd8:	4628      	mov	r0, r5
 8001bda:	490c      	ldr	r1, [pc, #48]	; (8001c0c <_ZN9CTerminal13terminal_initEv+0xb4>)
 8001bdc:	f000 ffc4 	bl	8002b68 <USART_ITConfig>
 8001be0:	2601      	movs	r6, #1
 8001be2:	2325      	movs	r3, #37	; 0x25
 8001be4:	a801      	add	r0, sp, #4
 8001be6:	f88d 3004 	strb.w	r3, [sp, #4]
 8001bea:	f88d 4005 	strb.w	r4, [sp, #5]
 8001bee:	f88d 4006 	strb.w	r4, [sp, #6]
 8001bf2:	f88d 6007 	strb.w	r6, [sp, #7]
 8001bf6:	f001 f909 	bl	8002e0c <NVIC_Init>
 8001bfa:	4628      	mov	r0, r5
 8001bfc:	4631      	mov	r1, r6
 8001bfe:	f000 ffa3 	bl	8002b48 <USART_Cmd>
 8001c02:	4620      	mov	r0, r4
 8001c04:	b00a      	add	sp, #40	; 0x28
 8001c06:	bd70      	pop	{r4, r5, r6, pc}
 8001c08:	40013800 	.word	0x40013800
 8001c0c:	00050105 	.word	0x00050105

08001c10 <USART1_IRQHandler>:
 8001c10:	b508      	push	{r3, lr}
 8001c12:	480d      	ldr	r0, [pc, #52]	; (8001c48 <USART1_IRQHandler+0x38>)
 8001c14:	490d      	ldr	r1, [pc, #52]	; (8001c4c <USART1_IRQHandler+0x3c>)
 8001c16:	f000 ffc1 	bl	8002b9c <USART_GetITStatus>
 8001c1a:	b178      	cbz	r0, 8001c3c <USART1_IRQHandler+0x2c>
 8001c1c:	480a      	ldr	r0, [pc, #40]	; (8001c48 <USART1_IRQHandler+0x38>)
 8001c1e:	f000 ff9e 	bl	8002b5e <USART_ReceiveData>
 8001c22:	4b0b      	ldr	r3, [pc, #44]	; (8001c50 <USART1_IRQHandler+0x40>)
 8001c24:	490b      	ldr	r1, [pc, #44]	; (8001c54 <USART1_IRQHandler+0x44>)
 8001c26:	681a      	ldr	r2, [r3, #0]
 8001c28:	b2c0      	uxtb	r0, r0
 8001c2a:	5488      	strb	r0, [r1, r2]
 8001c2c:	681a      	ldr	r2, [r3, #0]
 8001c2e:	3201      	adds	r2, #1
 8001c30:	601a      	str	r2, [r3, #0]
 8001c32:	681a      	ldr	r2, [r3, #0]
 8001c34:	2a0f      	cmp	r2, #15
 8001c36:	bf84      	itt	hi
 8001c38:	2200      	movhi	r2, #0
 8001c3a:	601a      	strhi	r2, [r3, #0]
 8001c3c:	4802      	ldr	r0, [pc, #8]	; (8001c48 <USART1_IRQHandler+0x38>)
 8001c3e:	4903      	ldr	r1, [pc, #12]	; (8001c4c <USART1_IRQHandler+0x3c>)
 8001c40:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001c44:	f000 bfc8 	b.w	8002bd8 <USART_ClearITPendingBit>
 8001c48:	40013800 	.word	0x40013800
 8001c4c:	00050105 	.word	0x00050105
 8001c50:	20000c54 	.word	0x20000c54
 8001c54:	20000c58 	.word	0x20000c58

08001c58 <_ZN9CTerminal7putcharEc>:
 8001c58:	4b04      	ldr	r3, [pc, #16]	; (8001c6c <_ZN9CTerminal7putcharEc+0x14>)
 8001c5a:	69da      	ldr	r2, [r3, #28]
 8001c5c:	0612      	lsls	r2, r2, #24
 8001c5e:	d401      	bmi.n	8001c64 <_ZN9CTerminal7putcharEc+0xc>
 8001c60:	bf00      	nop
 8001c62:	e7f9      	b.n	8001c58 <_ZN9CTerminal7putcharEc>
 8001c64:	b289      	uxth	r1, r1
 8001c66:	8519      	strh	r1, [r3, #40]	; 0x28
 8001c68:	4770      	bx	lr
 8001c6a:	bf00      	nop
 8001c6c:	40013800 	.word	0x40013800

08001c70 <_ZN9CTerminal4putsEPc>:
 8001c70:	b538      	push	{r3, r4, r5, lr}
 8001c72:	4605      	mov	r5, r0
 8001c74:	1e4c      	subs	r4, r1, #1
 8001c76:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001c7a:	b119      	cbz	r1, 8001c84 <_ZN9CTerminal4putsEPc+0x14>
 8001c7c:	4628      	mov	r0, r5
 8001c7e:	f7ff ffeb 	bl	8001c58 <_ZN9CTerminal7putcharEc>
 8001c82:	e7f8      	b.n	8001c76 <_ZN9CTerminal4putsEPc+0x6>
 8001c84:	2001      	movs	r0, #1
 8001c86:	bd38      	pop	{r3, r4, r5, pc}

08001c88 <_ZN9CTerminal4putiEl>:
 8001c88:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001c8a:	1e0b      	subs	r3, r1, #0
 8001c8c:	f04f 0200 	mov.w	r2, #0
 8001c90:	bfba      	itte	lt
 8001c92:	425b      	neglt	r3, r3
 8001c94:	2501      	movlt	r5, #1
 8001c96:	4615      	movge	r5, r2
 8001c98:	f88d 200f 	strb.w	r2, [sp, #15]
 8001c9c:	210a      	movs	r1, #10
 8001c9e:	220a      	movs	r2, #10
 8001ca0:	ac01      	add	r4, sp, #4
 8001ca2:	fb93 f6f2 	sdiv	r6, r3, r2
 8001ca6:	fb02 3316 	mls	r3, r2, r6, r3
 8001caa:	3330      	adds	r3, #48	; 0x30
 8001cac:	550b      	strb	r3, [r1, r4]
 8001cae:	1e4a      	subs	r2, r1, #1
 8001cb0:	4633      	mov	r3, r6
 8001cb2:	b10e      	cbz	r6, 8001cb8 <_ZN9CTerminal4putiEl+0x30>
 8001cb4:	4611      	mov	r1, r2
 8001cb6:	e7f2      	b.n	8001c9e <_ZN9CTerminal4putiEl+0x16>
 8001cb8:	b12d      	cbz	r5, 8001cc6 <_ZN9CTerminal4putiEl+0x3e>
 8001cba:	ab04      	add	r3, sp, #16
 8001cbc:	4413      	add	r3, r2
 8001cbe:	212d      	movs	r1, #45	; 0x2d
 8001cc0:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001cc4:	4611      	mov	r1, r2
 8001cc6:	4421      	add	r1, r4
 8001cc8:	f7ff ffd2 	bl	8001c70 <_ZN9CTerminal4putsEPc>
 8001ccc:	b004      	add	sp, #16
 8001cce:	bd70      	pop	{r4, r5, r6, pc}

08001cd0 <_ZN9CTerminal5putuiEm>:
 8001cd0:	b530      	push	{r4, r5, lr}
 8001cd2:	b085      	sub	sp, #20
 8001cd4:	2300      	movs	r3, #0
 8001cd6:	f88d 300f 	strb.w	r3, [sp, #15]
 8001cda:	220a      	movs	r2, #10
 8001cdc:	230a      	movs	r3, #10
 8001cde:	ac01      	add	r4, sp, #4
 8001ce0:	fbb1 f5f3 	udiv	r5, r1, r3
 8001ce4:	fb03 1315 	mls	r3, r3, r5, r1
 8001ce8:	3330      	adds	r3, #48	; 0x30
 8001cea:	5513      	strb	r3, [r2, r4]
 8001cec:	4629      	mov	r1, r5
 8001cee:	1e53      	subs	r3, r2, #1
 8001cf0:	b10d      	cbz	r5, 8001cf6 <_ZN9CTerminal5putuiEm+0x26>
 8001cf2:	461a      	mov	r2, r3
 8001cf4:	e7f2      	b.n	8001cdc <_ZN9CTerminal5putuiEm+0xc>
 8001cf6:	18a1      	adds	r1, r4, r2
 8001cf8:	f7ff ffba 	bl	8001c70 <_ZN9CTerminal4putsEPc>
 8001cfc:	b005      	add	sp, #20
 8001cfe:	bd30      	pop	{r4, r5, pc}

08001d00 <_ZN9CTerminal4putxEm>:
 8001d00:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001d02:	2300      	movs	r3, #0
 8001d04:	f88d 300f 	strb.w	r3, [sp, #15]
 8001d08:	220a      	movs	r2, #10
 8001d0a:	f001 030f 	and.w	r3, r1, #15
 8001d0e:	2b09      	cmp	r3, #9
 8001d10:	ac01      	add	r4, sp, #4
 8001d12:	bfd4      	ite	le
 8001d14:	3330      	addle	r3, #48	; 0x30
 8001d16:	3357      	addgt	r3, #87	; 0x57
 8001d18:	0909      	lsrs	r1, r1, #4
 8001d1a:	54a3      	strb	r3, [r4, r2]
 8001d1c:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001d20:	d001      	beq.n	8001d26 <_ZN9CTerminal4putxEm+0x26>
 8001d22:	461a      	mov	r2, r3
 8001d24:	e7f1      	b.n	8001d0a <_ZN9CTerminal4putxEm+0xa>
 8001d26:	18a1      	adds	r1, r4, r2
 8001d28:	f7ff ffa2 	bl	8001c70 <_ZN9CTerminal4putsEPc>
 8001d2c:	b004      	add	sp, #16
 8001d2e:	bd10      	pop	{r4, pc}

08001d30 <_ZN9CTerminal4putfEfj>:
 8001d30:	b538      	push	{r3, r4, r5, lr}
 8001d32:	2200      	movs	r2, #0
 8001d34:	4605      	mov	r5, r0
 8001d36:	2301      	movs	r3, #1
 8001d38:	428a      	cmp	r2, r1
 8001d3a:	d003      	beq.n	8001d44 <_ZN9CTerminal4putfEfj+0x14>
 8001d3c:	200a      	movs	r0, #10
 8001d3e:	4343      	muls	r3, r0
 8001d40:	3201      	adds	r2, #1
 8001d42:	e7f9      	b.n	8001d38 <_ZN9CTerminal4putfEfj+0x8>
 8001d44:	eebd 7ac0 	vcvt.s32.f32	s14, s0
 8001d48:	4628      	mov	r0, r5
 8001d4a:	eef8 7ac7 	vcvt.f32.s32	s15, s14
 8001d4e:	ee17 1a10 	vmov	r1, s14
 8001d52:	ee30 0a67 	vsub.f32	s0, s0, s15
 8001d56:	ee07 3a90 	vmov	s15, r3
 8001d5a:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8001d5e:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001d62:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001d66:	ee17 4a90 	vmov	r4, s15
 8001d6a:	f7ff ff8d 	bl	8001c88 <_ZN9CTerminal4putiEl>
 8001d6e:	4628      	mov	r0, r5
 8001d70:	212e      	movs	r1, #46	; 0x2e
 8001d72:	f7ff ff71 	bl	8001c58 <_ZN9CTerminal7putcharEc>
 8001d76:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 8001d7a:	4628      	mov	r0, r5
 8001d7c:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 8001d80:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001d84:	f7ff bf80 	b.w	8001c88 <_ZN9CTerminal4putiEl>

08001d88 <_ZN9CTerminal6printfEPKcz>:
 8001d88:	b40e      	push	{r1, r2, r3}
 8001d8a:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001d8c:	ab07      	add	r3, sp, #28
 8001d8e:	4604      	mov	r4, r0
 8001d90:	f853 6b04 	ldr.w	r6, [r3], #4
 8001d94:	9301      	str	r3, [sp, #4]
 8001d96:	2500      	movs	r5, #0
 8001d98:	5d71      	ldrb	r1, [r6, r5]
 8001d9a:	2900      	cmp	r1, #0
 8001d9c:	d054      	beq.n	8001e48 <_ZN9CTerminal6printfEPKcz+0xc0>
 8001d9e:	2925      	cmp	r1, #37	; 0x25
 8001da0:	d004      	beq.n	8001dac <_ZN9CTerminal6printfEPKcz+0x24>
 8001da2:	4620      	mov	r0, r4
 8001da4:	f7ff ff58 	bl	8001c58 <_ZN9CTerminal7putcharEc>
 8001da8:	3501      	adds	r5, #1
 8001daa:	e7f5      	b.n	8001d98 <_ZN9CTerminal6printfEPKcz+0x10>
 8001dac:	1973      	adds	r3, r6, r5
 8001dae:	7859      	ldrb	r1, [r3, #1]
 8001db0:	2969      	cmp	r1, #105	; 0x69
 8001db2:	d016      	beq.n	8001de2 <_ZN9CTerminal6printfEPKcz+0x5a>
 8001db4:	d807      	bhi.n	8001dc6 <_ZN9CTerminal6printfEPKcz+0x3e>
 8001db6:	2963      	cmp	r1, #99	; 0x63
 8001db8:	d02b      	beq.n	8001e12 <_ZN9CTerminal6printfEPKcz+0x8a>
 8001dba:	2966      	cmp	r1, #102	; 0x66
 8001dbc:	d031      	beq.n	8001e22 <_ZN9CTerminal6printfEPKcz+0x9a>
 8001dbe:	2925      	cmp	r1, #37	; 0x25
 8001dc0:	d140      	bne.n	8001e44 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001dc2:	4620      	mov	r0, r4
 8001dc4:	e02a      	b.n	8001e1c <_ZN9CTerminal6printfEPKcz+0x94>
 8001dc6:	2975      	cmp	r1, #117	; 0x75
 8001dc8:	d013      	beq.n	8001df2 <_ZN9CTerminal6printfEPKcz+0x6a>
 8001dca:	2978      	cmp	r1, #120	; 0x78
 8001dcc:	d019      	beq.n	8001e02 <_ZN9CTerminal6printfEPKcz+0x7a>
 8001dce:	2973      	cmp	r1, #115	; 0x73
 8001dd0:	d138      	bne.n	8001e44 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001dd2:	9b01      	ldr	r3, [sp, #4]
 8001dd4:	4620      	mov	r0, r4
 8001dd6:	1d1a      	adds	r2, r3, #4
 8001dd8:	6819      	ldr	r1, [r3, #0]
 8001dda:	9201      	str	r2, [sp, #4]
 8001ddc:	f7ff ff48 	bl	8001c70 <_ZN9CTerminal4putsEPc>
 8001de0:	e030      	b.n	8001e44 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001de2:	9b01      	ldr	r3, [sp, #4]
 8001de4:	4620      	mov	r0, r4
 8001de6:	1d1a      	adds	r2, r3, #4
 8001de8:	6819      	ldr	r1, [r3, #0]
 8001dea:	9201      	str	r2, [sp, #4]
 8001dec:	f7ff ff4c 	bl	8001c88 <_ZN9CTerminal4putiEl>
 8001df0:	e028      	b.n	8001e44 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001df2:	9b01      	ldr	r3, [sp, #4]
 8001df4:	4620      	mov	r0, r4
 8001df6:	1d1a      	adds	r2, r3, #4
 8001df8:	6819      	ldr	r1, [r3, #0]
 8001dfa:	9201      	str	r2, [sp, #4]
 8001dfc:	f7ff ff68 	bl	8001cd0 <_ZN9CTerminal5putuiEm>
 8001e00:	e020      	b.n	8001e44 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001e02:	9b01      	ldr	r3, [sp, #4]
 8001e04:	4620      	mov	r0, r4
 8001e06:	1d1a      	adds	r2, r3, #4
 8001e08:	6819      	ldr	r1, [r3, #0]
 8001e0a:	9201      	str	r2, [sp, #4]
 8001e0c:	f7ff ff78 	bl	8001d00 <_ZN9CTerminal4putxEm>
 8001e10:	e018      	b.n	8001e44 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001e12:	9b01      	ldr	r3, [sp, #4]
 8001e14:	1d1a      	adds	r2, r3, #4
 8001e16:	7819      	ldrb	r1, [r3, #0]
 8001e18:	9201      	str	r2, [sp, #4]
 8001e1a:	4620      	mov	r0, r4
 8001e1c:	f7ff ff1c 	bl	8001c58 <_ZN9CTerminal7putcharEc>
 8001e20:	e010      	b.n	8001e44 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001e22:	9b01      	ldr	r3, [sp, #4]
 8001e24:	3307      	adds	r3, #7
 8001e26:	f023 0307 	bic.w	r3, r3, #7
 8001e2a:	f103 0208 	add.w	r2, r3, #8
 8001e2e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8001e32:	9201      	str	r2, [sp, #4]
 8001e34:	f001 f9b2 	bl	800319c <__aeabi_d2f>
 8001e38:	2103      	movs	r1, #3
 8001e3a:	ee00 0a10 	vmov	s0, r0
 8001e3e:	4620      	mov	r0, r4
 8001e40:	f7ff ff76 	bl	8001d30 <_ZN9CTerminal4putfEfj>
 8001e44:	3502      	adds	r5, #2
 8001e46:	e7a7      	b.n	8001d98 <_ZN9CTerminal6printfEPKcz+0x10>
 8001e48:	b003      	add	sp, #12
 8001e4a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001e4e:	b003      	add	sp, #12
 8001e50:	4770      	bx	lr
	...

08001e54 <TIM4_IRQHandler>:
 8001e54:	b538      	push	{r3, r4, r5, lr}
 8001e56:	4837      	ldr	r0, [pc, #220]	; (8001f34 <TIM4_IRQHandler+0xe0>)
 8001e58:	2101      	movs	r1, #1
 8001e5a:	f000 fe01 	bl	8002a60 <TIM_GetITStatus>
 8001e5e:	2800      	cmp	r0, #0
 8001e60:	d067      	beq.n	8001f32 <TIM4_IRQHandler+0xde>
 8001e62:	2101      	movs	r1, #1
 8001e64:	4833      	ldr	r0, [pc, #204]	; (8001f34 <TIM4_IRQHandler+0xe0>)
 8001e66:	f000 fe07 	bl	8002a78 <TIM_ClearITPendingBit>
 8001e6a:	4b33      	ldr	r3, [pc, #204]	; (8001f38 <TIM4_IRQHandler+0xe4>)
 8001e6c:	681a      	ldr	r2, [r3, #0]
 8001e6e:	3201      	adds	r2, #1
 8001e70:	601a      	str	r2, [r3, #0]
 8001e72:	4a32      	ldr	r2, [pc, #200]	; (8001f3c <TIM4_IRQHandler+0xe8>)
 8001e74:	6811      	ldr	r1, [r2, #0]
 8001e76:	461a      	mov	r2, r3
 8001e78:	2905      	cmp	r1, #5
 8001e7a:	d85a      	bhi.n	8001f32 <TIM4_IRQHandler+0xde>
 8001e7c:	e8df f001 	tbb	[pc, r1]
 8001e80:	1c03161a 	.word	0x1c03161a
 8001e84:	3e20      	.short	0x3e20
 8001e86:	4b2e      	ldr	r3, [pc, #184]	; (8001f40 <TIM4_IRQHandler+0xec>)
 8001e88:	6819      	ldr	r1, [r3, #0]
 8001e8a:	2314      	movs	r3, #20
 8001e8c:	434b      	muls	r3, r1
 8001e8e:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8001e92:	fbb3 f3f1 	udiv	r3, r3, r1
 8001e96:	6811      	ldr	r1, [r2, #0]
 8001e98:	2b01      	cmp	r3, #1
 8001e9a:	bf98      	it	ls
 8001e9c:	2302      	movls	r3, #2
 8001e9e:	fbb1 f2f3 	udiv	r2, r1, r3
 8001ea2:	fb03 1212 	mls	r2, r3, r2, r1
 8001ea6:	ebb2 0f53 	cmp.w	r2, r3, lsr #1
 8001eaa:	d101      	bne.n	8001eb0 <TIM4_IRQHandler+0x5c>
 8001eac:	4825      	ldr	r0, [pc, #148]	; (8001f44 <TIM4_IRQHandler+0xf0>)
 8001eae:	e01c      	b.n	8001eea <TIM4_IRQHandler+0x96>
 8001eb0:	2a00      	cmp	r2, #0
 8001eb2:	d13e      	bne.n	8001f32 <TIM4_IRQHandler+0xde>
 8001eb4:	4823      	ldr	r0, [pc, #140]	; (8001f44 <TIM4_IRQHandler+0xf0>)
 8001eb6:	e01a      	b.n	8001eee <TIM4_IRQHandler+0x9a>
 8001eb8:	4b21      	ldr	r3, [pc, #132]	; (8001f40 <TIM4_IRQHandler+0xec>)
 8001eba:	4822      	ldr	r0, [pc, #136]	; (8001f44 <TIM4_IRQHandler+0xf0>)
 8001ebc:	6819      	ldr	r1, [r3, #0]
 8001ebe:	e017      	b.n	8001ef0 <TIM4_IRQHandler+0x9c>
 8001ec0:	6813      	ldr	r3, [r2, #0]
 8001ec2:	f003 0307 	and.w	r3, r3, #7
 8001ec6:	2b04      	cmp	r3, #4
 8001ec8:	d116      	bne.n	8001ef8 <TIM4_IRQHandler+0xa4>
 8001eca:	481f      	ldr	r0, [pc, #124]	; (8001f48 <TIM4_IRQHandler+0xf4>)
 8001ecc:	4a1c      	ldr	r2, [pc, #112]	; (8001f40 <TIM4_IRQHandler+0xec>)
 8001ece:	7803      	ldrb	r3, [r0, #0]
 8001ed0:	6812      	ldr	r2, [r2, #0]
 8001ed2:	1c59      	adds	r1, r3, #1
 8001ed4:	1d53      	adds	r3, r2, #5
 8001ed6:	fbb1 f2f3 	udiv	r2, r1, r3
 8001eda:	fb03 1312 	mls	r3, r3, r2, r1
 8001ede:	b2db      	uxtb	r3, r3
 8001ee0:	7003      	strb	r3, [r0, #0]
 8001ee2:	7803      	ldrb	r3, [r0, #0]
 8001ee4:	4817      	ldr	r0, [pc, #92]	; (8001f44 <TIM4_IRQHandler+0xf0>)
 8001ee6:	2b04      	cmp	r3, #4
 8001ee8:	d901      	bls.n	8001eee <TIM4_IRQHandler+0x9a>
 8001eea:	2140      	movs	r1, #64	; 0x40
 8001eec:	e000      	b.n	8001ef0 <TIM4_IRQHandler+0x9c>
 8001eee:	2100      	movs	r1, #0
 8001ef0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001ef4:	f000 bd9a 	b.w	8002a2c <TIM_SetCompare2>
 8001ef8:	b9db      	cbnz	r3, 8001f32 <TIM4_IRQHandler+0xde>
 8001efa:	e7db      	b.n	8001eb4 <TIM4_IRQHandler+0x60>
 8001efc:	4b10      	ldr	r3, [pc, #64]	; (8001f40 <TIM4_IRQHandler+0xec>)
 8001efe:	4d12      	ldr	r5, [pc, #72]	; (8001f48 <TIM4_IRQHandler+0xf4>)
 8001f00:	681b      	ldr	r3, [r3, #0]
 8001f02:	4810      	ldr	r0, [pc, #64]	; (8001f44 <TIM4_IRQHandler+0xf0>)
 8001f04:	2414      	movs	r4, #20
 8001f06:	fb03 4404 	mla	r4, r3, r4, r4
 8001f0a:	f44f 33fa 	mov.w	r3, #128000	; 0x1f400
 8001f0e:	fbb3 f4f4 	udiv	r4, r3, r4
 8001f12:	782b      	ldrb	r3, [r5, #0]
 8001f14:	7829      	ldrb	r1, [r5, #0]
 8001f16:	2c00      	cmp	r4, #0
 8001f18:	bf08      	it	eq
 8001f1a:	2401      	moveq	r4, #1
 8001f1c:	2b3f      	cmp	r3, #63	; 0x3f
 8001f1e:	bf88      	it	hi
 8001f20:	f1c1 0180 	rsbhi	r1, r1, #128	; 0x80
 8001f24:	f000 fd82 	bl	8002a2c <TIM_SetCompare2>
 8001f28:	782b      	ldrb	r3, [r5, #0]
 8001f2a:	441c      	add	r4, r3
 8001f2c:	f004 047f 	and.w	r4, r4, #127	; 0x7f
 8001f30:	702c      	strb	r4, [r5, #0]
 8001f32:	bd38      	pop	{r3, r4, r5, pc}
 8001f34:	40000800 	.word	0x40000800
 8001f38:	20000c74 	.word	0x20000c74
 8001f3c:	20000c78 	.word	0x20000c78
 8001f40:	20000c6c 	.word	0x20000c6c
 8001f44:	40014000 	.word	0x40014000
 8001f48:	20000c70 	.word	0x20000c70

08001f4c <_ZN5CILED4initEv>:
 8001f4c:	4b4c      	ldr	r3, [pc, #304]	; (8002080 <_ZN5CILED4initEv+0x134>)
 8001f4e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001f52:	2400      	movs	r4, #0
 8001f54:	601c      	str	r4, [r3, #0]
 8001f56:	4b4b      	ldr	r3, [pc, #300]	; (8002084 <_ZN5CILED4initEv+0x138>)
 8001f58:	4e4b      	ldr	r6, [pc, #300]	; (8002088 <_ZN5CILED4initEv+0x13c>)
 8001f5a:	601c      	str	r4, [r3, #0]
 8001f5c:	4b4b      	ldr	r3, [pc, #300]	; (800208c <_ZN5CILED4initEv+0x140>)
 8001f5e:	f8df 8138 	ldr.w	r8, [pc, #312]	; 8002098 <_ZN5CILED4initEv+0x14c>
 8001f62:	601c      	str	r4, [r3, #0]
 8001f64:	4b4a      	ldr	r3, [pc, #296]	; (8002090 <_ZN5CILED4initEv+0x144>)
 8001f66:	b08d      	sub	sp, #52	; 0x34
 8001f68:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001f6c:	2101      	movs	r1, #1
 8001f6e:	2501      	movs	r5, #1
 8001f70:	701c      	strb	r4, [r3, #0]
 8001f72:	f44f 4700 	mov.w	r7, #32768	; 0x8000
 8001f76:	f000 fc4d 	bl	8002814 <RCC_AHBPeriphClockCmd>
 8001f7a:	f04f 0903 	mov.w	r9, #3
 8001f7e:	4630      	mov	r0, r6
 8001f80:	a902      	add	r1, sp, #8
 8001f82:	9702      	str	r7, [sp, #8]
 8001f84:	f88d 500c 	strb.w	r5, [sp, #12]
 8001f88:	f88d 400e 	strb.w	r4, [sp, #14]
 8001f8c:	f88d 900d 	strb.w	r9, [sp, #13]
 8001f90:	f88d 400f 	strb.w	r4, [sp, #15]
 8001f94:	f001 f806 	bl	8002fa4 <GPIO_Init>
 8001f98:	4629      	mov	r1, r5
 8001f9a:	8537      	strh	r7, [r6, #40]	; 0x28
 8001f9c:	2004      	movs	r0, #4
 8001f9e:	f000 fc55 	bl	800284c <RCC_APB1PeriphClockCmd>
 8001fa2:	231e      	movs	r3, #30
 8001fa4:	a801      	add	r0, sp, #4
 8001fa6:	f88d 3004 	strb.w	r3, [sp, #4]
 8001faa:	f88d 4005 	strb.w	r4, [sp, #5]
 8001fae:	f88d 5006 	strb.w	r5, [sp, #6]
 8001fb2:	f88d 5007 	strb.w	r5, [sp, #7]
 8001fb6:	f000 ff29 	bl	8002e0c <NVIC_Init>
 8001fba:	4629      	mov	r1, r5
 8001fbc:	2004      	movs	r0, #4
 8001fbe:	f000 fc45 	bl	800284c <RCC_APB1PeriphClockCmd>
 8001fc2:	f241 3388 	movw	r3, #5000	; 0x1388
 8001fc6:	9305      	str	r3, [sp, #20]
 8001fc8:	4640      	mov	r0, r8
 8001fca:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8001fce:	a904      	add	r1, sp, #16
 8001fd0:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001fd4:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001fd8:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001fdc:	f000 fc44 	bl	8002868 <TIM_TimeBaseInit>
 8001fe0:	462a      	mov	r2, r5
 8001fe2:	4640      	mov	r0, r8
 8001fe4:	4629      	mov	r1, r5
 8001fe6:	f000 fd2f 	bl	8002a48 <TIM_ITConfig>
 8001fea:	4640      	mov	r0, r8
 8001fec:	4629      	mov	r1, r5
 8001fee:	f000 fc8b 	bl	8002908 <TIM_Cmd>
 8001ff2:	9702      	str	r7, [sp, #8]
 8001ff4:	4630      	mov	r0, r6
 8001ff6:	2702      	movs	r7, #2
 8001ff8:	a902      	add	r1, sp, #8
 8001ffa:	f88d 700c 	strb.w	r7, [sp, #12]
 8001ffe:	f88d 900d 	strb.w	r9, [sp, #13]
 8002002:	f000 ffcf 	bl	8002fa4 <GPIO_Init>
 8002006:	462a      	mov	r2, r5
 8002008:	4630      	mov	r0, r6
 800200a:	210f      	movs	r1, #15
 800200c:	f001 f810 	bl	8003030 <GPIO_PinAFConfig>
 8002010:	4e20      	ldr	r6, [pc, #128]	; (8002094 <_ZN5CILED4initEv+0x148>)
 8002012:	4629      	mov	r1, r5
 8002014:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8002018:	f000 fc0a 	bl	8002830 <RCC_APB2PeriphClockCmd>
 800201c:	f44f 53e1 	mov.w	r3, #7200	; 0x1c20
 8002020:	f8ad 3010 	strh.w	r3, [sp, #16]
 8002024:	4630      	mov	r0, r6
 8002026:	2341      	movs	r3, #65	; 0x41
 8002028:	a904      	add	r1, sp, #16
 800202a:	9305      	str	r3, [sp, #20]
 800202c:	f8ad 4012 	strh.w	r4, [sp, #18]
 8002030:	f8ad 4018 	strh.w	r4, [sp, #24]
 8002034:	f8ad 401a 	strh.w	r4, [sp, #26]
 8002038:	f000 fc16 	bl	8002868 <TIM_TimeBaseInit>
 800203c:	4630      	mov	r0, r6
 800203e:	4629      	mov	r1, r5
 8002040:	f000 fc62 	bl	8002908 <TIM_Cmd>
 8002044:	4630      	mov	r0, r6
 8002046:	4629      	mov	r1, r5
 8002048:	f000 fcf3 	bl	8002a32 <TIM_CtrlPWMOutputs>
 800204c:	2370      	movs	r3, #112	; 0x70
 800204e:	9307      	str	r3, [sp, #28]
 8002050:	2304      	movs	r3, #4
 8002052:	f8ad 3022 	strh.w	r3, [sp, #34]	; 0x22
 8002056:	4630      	mov	r0, r6
 8002058:	f44f 7380 	mov.w	r3, #256	; 0x100
 800205c:	a907      	add	r1, sp, #28
 800205e:	f8ad 5020 	strh.w	r5, [sp, #32]
 8002062:	9409      	str	r4, [sp, #36]	; 0x24
 8002064:	f8ad 7028 	strh.w	r7, [sp, #40]	; 0x28
 8002068:	f8ad 402a 	strh.w	r4, [sp, #42]	; 0x2a
 800206c:	f8ad 302c 	strh.w	r3, [sp, #44]	; 0x2c
 8002070:	f8ad 402e 	strh.w	r4, [sp, #46]	; 0x2e
 8002074:	f000 fc9c 	bl	80029b0 <TIM_OC2Init>
 8002078:	b00d      	add	sp, #52	; 0x34
 800207a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800207e:	bf00      	nop
 8002080:	20000c78 	.word	0x20000c78
 8002084:	20000c6c 	.word	0x20000c6c
 8002088:	48000400 	.word	0x48000400
 800208c:	20000c74 	.word	0x20000c74
 8002090:	20000c70 	.word	0x20000c70
 8002094:	40014000 	.word	0x40014000
 8002098:	40000800 	.word	0x40000800

0800209c <_ZN5CILED3setEhj>:
 800209c:	4b04      	ldr	r3, [pc, #16]	; (80020b0 <_ZN5CILED3setEhj+0x14>)
 800209e:	6019      	str	r1, [r3, #0]
 80020a0:	4b04      	ldr	r3, [pc, #16]	; (80020b4 <_ZN5CILED3setEhj+0x18>)
 80020a2:	601a      	str	r2, [r3, #0]
 80020a4:	4a04      	ldr	r2, [pc, #16]	; (80020b8 <_ZN5CILED3setEhj+0x1c>)
 80020a6:	2300      	movs	r3, #0
 80020a8:	6013      	str	r3, [r2, #0]
 80020aa:	4a04      	ldr	r2, [pc, #16]	; (80020bc <_ZN5CILED3setEhj+0x20>)
 80020ac:	7013      	strb	r3, [r2, #0]
 80020ae:	4770      	bx	lr
 80020b0:	20000c78 	.word	0x20000c78
 80020b4:	20000c6c 	.word	0x20000c6c
 80020b8:	20000c74 	.word	0x20000c74
 80020bc:	20000c70 	.word	0x20000c70

080020c0 <_ZN13CLinePositionC1Ev>:
 80020c0:	f100 0308 	add.w	r3, r0, #8
 80020c4:	f100 012c 	add.w	r1, r0, #44	; 0x2c
 80020c8:	2200      	movs	r2, #0
 80020ca:	f843 2b04 	str.w	r2, [r3], #4
 80020ce:	428b      	cmp	r3, r1
 80020d0:	d1fa      	bne.n	80020c8 <_ZN13CLinePositionC1Ev+0x8>
 80020d2:	2300      	movs	r3, #0
 80020d4:	6042      	str	r2, [r0, #4]
 80020d6:	7003      	strb	r3, [r0, #0]
 80020d8:	4770      	bx	lr
	...

080020dc <_ZN13CLinePosition7processEP10sRGBResult>:
 80020dc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80020e0:	2300      	movs	r3, #0
 80020e2:	f101 0834 	add.w	r8, r1, #52	; 0x34
 80020e6:	ed2d 8b02 	vpush	{d8}
 80020ea:	460d      	mov	r5, r1
 80020ec:	4604      	mov	r4, r0
 80020ee:	7003      	strb	r3, [r0, #0]
 80020f0:	4641      	mov	r1, r8
 80020f2:	461a      	mov	r2, r3
 80020f4:	eb05 0043 	add.w	r0, r5, r3, lsl #1
 80020f8:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 80020fc:	f9b0 0036 	ldrsh.w	r0, [r0, #54]	; 0x36
 8002100:	4286      	cmp	r6, r0
 8002102:	bfb8      	it	lt
 8002104:	4613      	movlt	r3, r2
 8002106:	3201      	adds	r2, #1
 8002108:	2a09      	cmp	r2, #9
 800210a:	d1f3      	bne.n	80020f4 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 800210c:	eb05 0343 	add.w	r3, r5, r3, lsl #1
 8002110:	eddf 7a3b 	vldr	s15, [pc, #236]	; 8002200 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8002114:	f9b3 3036 	ldrsh.w	r3, [r3, #54]	; 0x36
 8002118:	ee07 3a10 	vmov	s14, r3
 800211c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8002120:	eeb0 8a67 	vmov.f32	s16, s15
 8002124:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8002128:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800212c:	d563      	bpl.n	80021f6 <_ZN13CLinePosition7processEP10sRGBResult+0x11a>
 800212e:	f104 0608 	add.w	r6, r4, #8
 8002132:	eddf 8a34 	vldr	s17, [pc, #208]	; 8002204 <_ZN13CLinePosition7processEP10sRGBResult+0x128>
 8002136:	f104 092c 	add.w	r9, r4, #44	; 0x2c
 800213a:	4637      	mov	r7, r6
 800213c:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 8002140:	4831      	ldr	r0, [pc, #196]	; (8002208 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 8002142:	425b      	negs	r3, r3
 8002144:	ee00 3a10 	vmov	s0, r3
 8002148:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 800214c:	eca7 0a01 	vstmia	r7!, {s0}
 8002150:	f7fe f8f9 	bl	8000346 <_ZN5CMath3absEf>
 8002154:	eef4 8ac0 	vcmpe.f32	s17, s0
 8002158:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800215c:	d506      	bpl.n	800216c <_ZN13CLinePosition7processEP10sRGBResult+0x90>
 800215e:	482a      	ldr	r0, [pc, #168]	; (8002208 <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 8002160:	ed17 0a01 	vldr	s0, [r7, #-4]
 8002164:	f7fe f8ef 	bl	8000346 <_ZN5CMath3absEf>
 8002168:	eef0 8a40 	vmov.f32	s17, s0
 800216c:	454f      	cmp	r7, r9
 800216e:	d1e5      	bne.n	800213c <_ZN13CLinePosition7processEP10sRGBResult+0x60>
 8002170:	edd6 7a00 	vldr	s15, [r6]
 8002174:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 8002178:	ece6 7a01 	vstmia	r6!, {s15}
 800217c:	454e      	cmp	r6, r9
 800217e:	d1f7      	bne.n	8002170 <_ZN13CLinePosition7processEP10sRGBResult+0x94>
 8002180:	2301      	movs	r3, #1
 8002182:	7023      	strb	r3, [r4, #0]
 8002184:	f9b5 3036 	ldrsh.w	r3, [r5, #54]	; 0x36
 8002188:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8002200 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 800218c:	ee07 3a10 	vmov	s14, r3
 8002190:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8002194:	eeb4 7ac8 	vcmpe.f32	s14, s16
 8002198:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800219c:	d501      	bpl.n	80021a2 <_ZN13CLinePosition7processEP10sRGBResult+0xc6>
 800219e:	4b1b      	ldr	r3, [pc, #108]	; (800220c <_ZN13CLinePosition7processEP10sRGBResult+0x130>)
 80021a0:	e028      	b.n	80021f4 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 80021a2:	f9b5 303c 	ldrsh.w	r3, [r5, #60]	; 0x3c
 80021a6:	ee07 3a10 	vmov	s14, r3
 80021aa:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80021ae:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80021b2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80021b6:	d502      	bpl.n	80021be <_ZN13CLinePosition7processEP10sRGBResult+0xe2>
 80021b8:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 80021bc:	e01a      	b.n	80021f4 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 80021be:	f9b5 3038 	ldrsh.w	r3, [r5, #56]	; 0x38
 80021c2:	ee07 3a10 	vmov	s14, r3
 80021c6:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80021ca:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80021ce:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80021d2:	d502      	bpl.n	80021da <_ZN13CLinePosition7processEP10sRGBResult+0xfe>
 80021d4:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 80021d8:	e00c      	b.n	80021f4 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 80021da:	f9b5 303a 	ldrsh.w	r3, [r5, #58]	; 0x3a
 80021de:	ee07 3a10 	vmov	s14, r3
 80021e2:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 80021e6:	eeb4 7ae7 	vcmpe.f32	s14, s15
 80021ea:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80021ee:	d502      	bpl.n	80021f6 <_ZN13CLinePosition7processEP10sRGBResult+0x11a>
 80021f0:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 80021f4:	6063      	str	r3, [r4, #4]
 80021f6:	ecbd 8b02 	vpop	{d8}
 80021fa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80021fe:	bf00      	nop
 8002200:	c2a00000 	.word	0xc2a00000
 8002204:	38d1b717 	.word	0x38d1b717
 8002208:	200009e0 	.word	0x200009e0
 800220c:	bf800000 	.word	0xbf800000

08002210 <_ZN13CLinePosition7on_lineEv>:
 8002210:	7800      	ldrb	r0, [r0, #0]
 8002212:	4770      	bx	lr

08002214 <_ZN13CLinePosition17get_line_positionEv>:
 8002214:	ed90 0a01 	vldr	s0, [r0, #4]
 8002218:	4770      	bx	lr

0800221a <_ZN21CLearningLineFollower3runEv>:
 800221a:	4770      	bx	lr

0800221c <_ZN5CDemo4initEv>:
 800221c:	4770      	bx	lr
	...

08002220 <_ZN5CDemo10blink_taskEv>:
 8002220:	b508      	push	{r3, lr}
 8002222:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8002226:	480d      	ldr	r0, [pc, #52]	; (800225c <_ZN5CDemo10blink_taskEv+0x3c>)
 8002228:	f7ff fc5c 	bl	8001ae4 <_ZN5CGPIO7gpio_onEm>
 800222c:	480c      	ldr	r0, [pc, #48]	; (8002260 <_ZN5CDemo10blink_taskEv+0x40>)
 800222e:	f7fe fd99 	bl	8000d64 <_ZN6CTimer8get_timeEv>
 8002232:	490c      	ldr	r1, [pc, #48]	; (8002264 <_ZN5CDemo10blink_taskEv+0x44>)
 8002234:	4602      	mov	r2, r0
 8002236:	4809      	ldr	r0, [pc, #36]	; (800225c <_ZN5CDemo10blink_taskEv+0x3c>)
 8002238:	f7ff fda6 	bl	8001d88 <_ZN9CTerminal6printfEPKcz>
 800223c:	4808      	ldr	r0, [pc, #32]	; (8002260 <_ZN5CDemo10blink_taskEv+0x40>)
 800223e:	210a      	movs	r1, #10
 8002240:	f7fe fd9e 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002244:	4805      	ldr	r0, [pc, #20]	; (800225c <_ZN5CDemo10blink_taskEv+0x3c>)
 8002246:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800224a:	f7ff fc51 	bl	8001af0 <_ZN5CGPIO8gpio_offEm>
 800224e:	4804      	ldr	r0, [pc, #16]	; (8002260 <_ZN5CDemo10blink_taskEv+0x40>)
 8002250:	f44f 7148 	mov.w	r1, #800	; 0x320
 8002254:	f7fe fd94 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002258:	e7e3      	b.n	8002222 <_ZN5CDemo10blink_taskEv+0x2>
 800225a:	bf00      	nop
 800225c:	20000438 	.word	0x20000438
 8002260:	20000c28 	.word	0x20000c28
 8002264:	08003298 	.word	0x08003298

08002268 <_ZN5CDemo10moves_taskEv>:
 8002268:	b538      	push	{r3, r4, r5, lr}
 800226a:	4c2f      	ldr	r4, [pc, #188]	; (8002328 <_ZN5CDemo10moves_taskEv+0xc0>)
 800226c:	4d2f      	ldr	r5, [pc, #188]	; (800232c <_ZN5CDemo10moves_taskEv+0xc4>)
 800226e:	4620      	mov	r0, r4
 8002270:	2200      	movs	r2, #0
 8002272:	2164      	movs	r1, #100	; 0x64
 8002274:	f7fe ffda 	bl	800122c <_ZN6CMotor10set_motorsEll>
 8002278:	4628      	mov	r0, r5
 800227a:	f240 51dc 	movw	r1, #1500	; 0x5dc
 800227e:	f7fe fd7f 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002282:	4620      	mov	r0, r4
 8002284:	2200      	movs	r2, #0
 8002286:	f06f 0163 	mvn.w	r1, #99	; 0x63
 800228a:	f7fe ffcf 	bl	800122c <_ZN6CMotor10set_motorsEll>
 800228e:	4628      	mov	r0, r5
 8002290:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8002294:	f7fe fd74 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002298:	4620      	mov	r0, r4
 800229a:	2264      	movs	r2, #100	; 0x64
 800229c:	2100      	movs	r1, #0
 800229e:	f7fe ffc5 	bl	800122c <_ZN6CMotor10set_motorsEll>
 80022a2:	4628      	mov	r0, r5
 80022a4:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80022a8:	f7fe fd6a 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 80022ac:	4620      	mov	r0, r4
 80022ae:	f06f 0263 	mvn.w	r2, #99	; 0x63
 80022b2:	2100      	movs	r1, #0
 80022b4:	f7fe ffba 	bl	800122c <_ZN6CMotor10set_motorsEll>
 80022b8:	4628      	mov	r0, r5
 80022ba:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80022be:	f7fe fd5f 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 80022c2:	4620      	mov	r0, r4
 80022c4:	f06f 0263 	mvn.w	r2, #99	; 0x63
 80022c8:	2164      	movs	r1, #100	; 0x64
 80022ca:	f7fe ffaf 	bl	800122c <_ZN6CMotor10set_motorsEll>
 80022ce:	4628      	mov	r0, r5
 80022d0:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80022d4:	f7fe fd54 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 80022d8:	4620      	mov	r0, r4
 80022da:	2264      	movs	r2, #100	; 0x64
 80022dc:	f06f 0163 	mvn.w	r1, #99	; 0x63
 80022e0:	f7fe ffa4 	bl	800122c <_ZN6CMotor10set_motorsEll>
 80022e4:	4628      	mov	r0, r5
 80022e6:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80022ea:	f7fe fd49 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 80022ee:	2164      	movs	r1, #100	; 0x64
 80022f0:	460a      	mov	r2, r1
 80022f2:	4620      	mov	r0, r4
 80022f4:	f7fe ff9a 	bl	800122c <_ZN6CMotor10set_motorsEll>
 80022f8:	4628      	mov	r0, r5
 80022fa:	f240 51dc 	movw	r1, #1500	; 0x5dc
 80022fe:	f7fe fd3f 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002302:	f06f 0163 	mvn.w	r1, #99	; 0x63
 8002306:	460a      	mov	r2, r1
 8002308:	4620      	mov	r0, r4
 800230a:	f7fe ff8f 	bl	800122c <_ZN6CMotor10set_motorsEll>
 800230e:	4628      	mov	r0, r5
 8002310:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8002314:	f7fe fd34 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002318:	2100      	movs	r1, #0
 800231a:	4620      	mov	r0, r4
 800231c:	460a      	mov	r2, r1
 800231e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8002322:	f7fe bf83 	b.w	800122c <_ZN6CMotor10set_motorsEll>
 8002326:	bf00      	nop
 8002328:	20000438 	.word	0x20000438
 800232c:	20000c28 	.word	0x20000c28

08002330 <_ZN5CDemo24basic_line_follower_taskEv>:
 8002330:	b510      	push	{r4, lr}
 8002332:	b094      	sub	sp, #80	; 0x50
 8002334:	a809      	add	r0, sp, #36	; 0x24
 8002336:	f7ff fec3 	bl	80020c0 <_ZN13CLinePositionC1Ev>
 800233a:	a801      	add	r0, sp, #4
 800233c:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8002340:	eddf 0a38 	vldr	s1, [pc, #224]	; 8002424 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8002344:	eddf 1a38 	vldr	s3, [pc, #224]	; 8002428 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8002348:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 800234c:	f7fd ffc2 	bl	80002d4 <_ZN4CPIDC1Effff>
 8002350:	4836      	ldr	r0, [pc, #216]	; (800242c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8002352:	2100      	movs	r1, #0
 8002354:	220a      	movs	r2, #10
 8002356:	f7fe fd25 	bl	8000da4 <_ZN6CTimer22event_timer_set_periodEhm>
 800235a:	4834      	ldr	r0, [pc, #208]	; (800242c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 800235c:	2100      	movs	r1, #0
 800235e:	f7fe fd35 	bl	8000dcc <_ZN6CTimer17event_timer_checkEh>
 8002362:	2800      	cmp	r0, #0
 8002364:	d0f9      	beq.n	800235a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8002366:	2100      	movs	r1, #0
 8002368:	4831      	ldr	r0, [pc, #196]	; (8002430 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 800236a:	f7fe fd3d 	bl	8000de8 <_ZN4CRGB8rgb_readEh>
 800236e:	4830      	ldr	r0, [pc, #192]	; (8002430 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8002370:	f7fe fef2 	bl	8001158 <_ZN4CRGB7rgb_getEv>
 8002374:	4601      	mov	r1, r0
 8002376:	a809      	add	r0, sp, #36	; 0x24
 8002378:	f7ff feb0 	bl	80020dc <_ZN13CLinePosition7processEP10sRGBResult>
 800237c:	a809      	add	r0, sp, #36	; 0x24
 800237e:	f7ff ff47 	bl	8002210 <_ZN13CLinePosition7on_lineEv>
 8002382:	4604      	mov	r4, r0
 8002384:	a809      	add	r0, sp, #36	; 0x24
 8002386:	f7ff ff45 	bl	8002214 <_ZN13CLinePosition17get_line_positionEv>
 800238a:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8002434 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 800238e:	482a      	ldr	r0, [pc, #168]	; (8002438 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8002390:	492a      	ldr	r1, [pc, #168]	; (800243c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8002392:	ee20 0a27 	vmul.f32	s0, s0, s15
 8002396:	4622      	mov	r2, r4
 8002398:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 800239c:	ee17 3a90 	vmov	r3, s15
 80023a0:	f7ff fcf2 	bl	8001d88 <_ZN9CTerminal6printfEPKcz>
 80023a4:	a809      	add	r0, sp, #36	; 0x24
 80023a6:	f7ff ff33 	bl	8002210 <_ZN13CLinePosition7on_lineEv>
 80023aa:	4604      	mov	r4, r0
 80023ac:	b1d0      	cbz	r0, 80023e4 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 80023ae:	a809      	add	r0, sp, #36	; 0x24
 80023b0:	f7ff ff30 	bl	8002214 <_ZN13CLinePosition17get_line_positionEv>
 80023b4:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8002424 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 80023b8:	a801      	add	r0, sp, #4
 80023ba:	ee37 0ac0 	vsub.f32	s0, s15, s0
 80023be:	f7fd ff8f 	bl	80002e0 <_ZN4CPID7processEf>
 80023c2:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 80023c6:	481e      	ldr	r0, [pc, #120]	; (8002440 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 80023c8:	ee17 4a90 	vmov	r4, s15
 80023cc:	2100      	movs	r1, #0
 80023ce:	f104 0219 	add.w	r2, r4, #25
 80023d2:	f7fe ff25 	bl	8001220 <_ZN6CMotor9set_motorEml>
 80023d6:	481a      	ldr	r0, [pc, #104]	; (8002440 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 80023d8:	2101      	movs	r1, #1
 80023da:	f1c4 0219 	rsb	r2, r4, #25
 80023de:	f7fe ff1f 	bl	8001220 <_ZN6CMotor9set_motorEml>
 80023e2:	e7ba      	b.n	800235a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 80023e4:	4621      	mov	r1, r4
 80023e6:	4816      	ldr	r0, [pc, #88]	; (8002440 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 80023e8:	f06f 0218 	mvn.w	r2, #24
 80023ec:	f7fe ff18 	bl	8001220 <_ZN6CMotor9set_motorEml>
 80023f0:	f06f 0218 	mvn.w	r2, #24
 80023f4:	4812      	ldr	r0, [pc, #72]	; (8002440 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 80023f6:	2101      	movs	r1, #1
 80023f8:	f7fe ff12 	bl	8001220 <_ZN6CMotor9set_motorEml>
 80023fc:	480b      	ldr	r0, [pc, #44]	; (800242c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 80023fe:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8002402:	f7fe fcbd 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002406:	4621      	mov	r1, r4
 8002408:	4622      	mov	r2, r4
 800240a:	480d      	ldr	r0, [pc, #52]	; (8002440 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 800240c:	f7fe ff08 	bl	8001220 <_ZN6CMotor9set_motorEml>
 8002410:	480b      	ldr	r0, [pc, #44]	; (8002440 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8002412:	2101      	movs	r1, #1
 8002414:	4622      	mov	r2, r4
 8002416:	f7fe ff03 	bl	8001220 <_ZN6CMotor9set_motorEml>
 800241a:	4804      	ldr	r0, [pc, #16]	; (800242c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 800241c:	2164      	movs	r1, #100	; 0x64
 800241e:	f7fe fcaf 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 8002422:	e79a      	b.n	800235a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8002424:	00000000 	.word	0x00000000
 8002428:	42c80000 	.word	0x42c80000
 800242c:	20000c28 	.word	0x20000c28
 8002430:	20000440 	.word	0x20000440
 8002434:	447a0000 	.word	0x447a0000
 8002438:	20000438 	.word	0x20000438
 800243c:	080032ad 	.word	0x080032ad
 8002440:	20000438 	.word	0x20000438

08002444 <_ZN5CDemo3runEj>:
 8002444:	2902      	cmp	r1, #2
 8002446:	b508      	push	{r3, lr}
 8002448:	d007      	beq.n	800245a <_ZN5CDemo3runEj+0x16>
 800244a:	2903      	cmp	r1, #3
 800244c:	d007      	beq.n	800245e <_ZN5CDemo3runEj+0x1a>
 800244e:	2901      	cmp	r1, #1
 8002450:	d10a      	bne.n	8002468 <_ZN5CDemo3runEj+0x24>
 8002452:	f7ff ff09 	bl	8002268 <_ZN5CDemo10moves_taskEv>
 8002456:	f7ff fee3 	bl	8002220 <_ZN5CDemo10blink_taskEv>
 800245a:	f7ff ff69 	bl	8002330 <_ZN5CDemo24basic_line_follower_taskEv>
 800245e:	4803      	ldr	r0, [pc, #12]	; (800246c <_ZN5CDemo3runEj+0x28>)
 8002460:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002464:	f7ff bed9 	b.w	800221a <_ZN21CLearningLineFollower3runEv>
 8002468:	bd08      	pop	{r3, pc}
 800246a:	bf00      	nop
 800246c:	20000c7c 	.word	0x20000c7c

08002470 <main>:
 8002470:	b508      	push	{r3, lr}
 8002472:	f000 fcc9 	bl	8002e08 <sytem_clock_init>
 8002476:	481e      	ldr	r0, [pc, #120]	; (80024f0 <main+0x80>)
 8002478:	f7fd fee2 	bl	8000240 <_ZN7CKodama4initEv>
 800247c:	210a      	movs	r1, #10
 800247e:	481c      	ldr	r0, [pc, #112]	; (80024f0 <main+0x80>)
 8002480:	f7fd ff0f 	bl	80002a2 <_ZN7CKodama6set_dtEl>
 8002484:	481a      	ldr	r0, [pc, #104]	; (80024f0 <main+0x80>)
 8002486:	f7fd fefd 	bl	8000284 <_ZN7CKodama5sleepEv>
 800248a:	481a      	ldr	r0, [pc, #104]	; (80024f4 <main+0x84>)
 800248c:	f7ff fd5e 	bl	8001f4c <_ZN5CILED4initEv>
 8002490:	4818      	ldr	r0, [pc, #96]	; (80024f4 <main+0x84>)
 8002492:	2105      	movs	r1, #5
 8002494:	f240 52dc 	movw	r2, #1500	; 0x5dc
 8002498:	f7ff fe00 	bl	800209c <_ZN5CILED3setEhj>
 800249c:	4816      	ldr	r0, [pc, #88]	; (80024f8 <main+0x88>)
 800249e:	f7fd ffd5 	bl	800044c <_ZN12CSSD1306OLED13oled_lcd_demoEv>
 80024a2:	4813      	ldr	r0, [pc, #76]	; (80024f0 <main+0x80>)
 80024a4:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80024a8:	f7ff fb28 	bl	8001afc <_ZN5CGPIO7gpio_inEm>
 80024ac:	b190      	cbz	r0, 80024d4 <main+0x64>
 80024ae:	22c8      	movs	r2, #200	; 0xc8
 80024b0:	4810      	ldr	r0, [pc, #64]	; (80024f4 <main+0x84>)
 80024b2:	2102      	movs	r1, #2
 80024b4:	f7ff fdf2 	bl	800209c <_ZN5CILED3setEhj>
 80024b8:	21c8      	movs	r1, #200	; 0xc8
 80024ba:	4810      	ldr	r0, [pc, #64]	; (80024fc <main+0x8c>)
 80024bc:	f7fe fc60 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 80024c0:	480b      	ldr	r0, [pc, #44]	; (80024f0 <main+0x80>)
 80024c2:	f7fd fee1 	bl	8000288 <_ZN7CKodama6wakeupEv>
 80024c6:	480e      	ldr	r0, [pc, #56]	; (8002500 <main+0x90>)
 80024c8:	f7ff fea8 	bl	800221c <_ZN5CDemo4initEv>
 80024cc:	480c      	ldr	r0, [pc, #48]	; (8002500 <main+0x90>)
 80024ce:	2102      	movs	r1, #2
 80024d0:	f7ff ffb8 	bl	8002444 <_ZN5CDemo3runEj>
 80024d4:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80024d8:	4808      	ldr	r0, [pc, #32]	; (80024fc <main+0x8c>)
 80024da:	f7fe fc51 	bl	8000d80 <_ZN6CTimer8delay_msEm>
 80024de:	4807      	ldr	r0, [pc, #28]	; (80024fc <main+0x8c>)
 80024e0:	f7fe fc40 	bl	8000d64 <_ZN6CTimer8get_timeEv>
 80024e4:	4907      	ldr	r1, [pc, #28]	; (8002504 <main+0x94>)
 80024e6:	4602      	mov	r2, r0
 80024e8:	4801      	ldr	r0, [pc, #4]	; (80024f0 <main+0x80>)
 80024ea:	f7ff fc4d 	bl	8001d88 <_ZN9CTerminal6printfEPKcz>
 80024ee:	e7d8      	b.n	80024a2 <main+0x32>
 80024f0:	20000438 	.word	0x20000438
 80024f4:	20000c71 	.word	0x20000c71
 80024f8:	200005b4 	.word	0x200005b4
 80024fc:	20000c28 	.word	0x20000c28
 8002500:	20001330 	.word	0x20001330
 8002504:	080032b5 	.word	0x080032b5

08002508 <RCC_GetClocksFreq>:
 8002508:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800250c:	4f9b      	ldr	r7, [pc, #620]	; (800277c <RCC_GetClocksFreq+0x274>)
 800250e:	687b      	ldr	r3, [r7, #4]
 8002510:	f003 030c 	and.w	r3, r3, #12
 8002514:	2b04      	cmp	r3, #4
 8002516:	d005      	beq.n	8002524 <RCC_GetClocksFreq+0x1c>
 8002518:	2b08      	cmp	r3, #8
 800251a:	d006      	beq.n	800252a <RCC_GetClocksFreq+0x22>
 800251c:	4a98      	ldr	r2, [pc, #608]	; (8002780 <RCC_GetClocksFreq+0x278>)
 800251e:	6002      	str	r2, [r0, #0]
 8002520:	b9b3      	cbnz	r3, 8002550 <RCC_GetClocksFreq+0x48>
 8002522:	e016      	b.n	8002552 <RCC_GetClocksFreq+0x4a>
 8002524:	4b96      	ldr	r3, [pc, #600]	; (8002780 <RCC_GetClocksFreq+0x278>)
 8002526:	6003      	str	r3, [r0, #0]
 8002528:	e012      	b.n	8002550 <RCC_GetClocksFreq+0x48>
 800252a:	687b      	ldr	r3, [r7, #4]
 800252c:	6879      	ldr	r1, [r7, #4]
 800252e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8002532:	1c9a      	adds	r2, r3, #2
 8002534:	03cb      	lsls	r3, r1, #15
 8002536:	bf49      	itett	mi
 8002538:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800253a:	4b92      	ldrpl	r3, [pc, #584]	; (8002784 <RCC_GetClocksFreq+0x27c>)
 800253c:	4990      	ldrmi	r1, [pc, #576]	; (8002780 <RCC_GetClocksFreq+0x278>)
 800253e:	f003 030f 	andmi.w	r3, r3, #15
 8002542:	bf44      	itt	mi
 8002544:	3301      	addmi	r3, #1
 8002546:	fbb1 f3f3 	udivmi	r3, r1, r3
 800254a:	4353      	muls	r3, r2
 800254c:	6003      	str	r3, [r0, #0]
 800254e:	e000      	b.n	8002552 <RCC_GetClocksFreq+0x4a>
 8002550:	2300      	movs	r3, #0
 8002552:	687a      	ldr	r2, [r7, #4]
 8002554:	4e8c      	ldr	r6, [pc, #560]	; (8002788 <RCC_GetClocksFreq+0x280>)
 8002556:	f8df c234 	ldr.w	ip, [pc, #564]	; 800278c <RCC_GetClocksFreq+0x284>
 800255a:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800255e:	5cb4      	ldrb	r4, [r6, r2]
 8002560:	6802      	ldr	r2, [r0, #0]
 8002562:	b2e4      	uxtb	r4, r4
 8002564:	fa22 f104 	lsr.w	r1, r2, r4
 8002568:	6041      	str	r1, [r0, #4]
 800256a:	687d      	ldr	r5, [r7, #4]
 800256c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8002570:	5d75      	ldrb	r5, [r6, r5]
 8002572:	fa21 fe05 	lsr.w	lr, r1, r5
 8002576:	f8c0 e008 	str.w	lr, [r0, #8]
 800257a:	687d      	ldr	r5, [r7, #4]
 800257c:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8002580:	5d75      	ldrb	r5, [r6, r5]
 8002582:	b2ed      	uxtb	r5, r5
 8002584:	40e9      	lsrs	r1, r5
 8002586:	60c1      	str	r1, [r0, #12]
 8002588:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 800258a:	f3c6 1804 	ubfx	r8, r6, #4, #5
 800258e:	f008 060f 	and.w	r6, r8, #15
 8002592:	f018 0f10 	tst.w	r8, #16
 8002596:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 800259a:	46e0      	mov	r8, ip
 800259c:	b2b6      	uxth	r6, r6
 800259e:	d004      	beq.n	80025aa <RCC_GetClocksFreq+0xa2>
 80025a0:	b11e      	cbz	r6, 80025aa <RCC_GetClocksFreq+0xa2>
 80025a2:	fbb3 f6f6 	udiv	r6, r3, r6
 80025a6:	6106      	str	r6, [r0, #16]
 80025a8:	e000      	b.n	80025ac <RCC_GetClocksFreq+0xa4>
 80025aa:	6102      	str	r2, [r0, #16]
 80025ac:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80025ae:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 80025b2:	f00c 060f 	and.w	r6, ip, #15
 80025b6:	f01c 0f10 	tst.w	ip, #16
 80025ba:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 80025be:	b2b6      	uxth	r6, r6
 80025c0:	d004      	beq.n	80025cc <RCC_GetClocksFreq+0xc4>
 80025c2:	b11e      	cbz	r6, 80025cc <RCC_GetClocksFreq+0xc4>
 80025c4:	fbb3 f6f6 	udiv	r6, r3, r6
 80025c8:	6146      	str	r6, [r0, #20]
 80025ca:	e000      	b.n	80025ce <RCC_GetClocksFreq+0xc6>
 80025cc:	6142      	str	r2, [r0, #20]
 80025ce:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80025d0:	06f6      	lsls	r6, r6, #27
 80025d2:	bf5a      	itte	pl
 80025d4:	4e6a      	ldrpl	r6, [pc, #424]	; (8002780 <RCC_GetClocksFreq+0x278>)
 80025d6:	6186      	strpl	r6, [r0, #24]
 80025d8:	6182      	strmi	r2, [r0, #24]
 80025da:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80025dc:	06b6      	lsls	r6, r6, #26
 80025de:	bf5a      	itte	pl
 80025e0:	4e67      	ldrpl	r6, [pc, #412]	; (8002780 <RCC_GetClocksFreq+0x278>)
 80025e2:	61c6      	strpl	r6, [r0, #28]
 80025e4:	61c2      	strmi	r2, [r0, #28]
 80025e6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80025e8:	0676      	lsls	r6, r6, #25
 80025ea:	bf5a      	itte	pl
 80025ec:	4e64      	ldrpl	r6, [pc, #400]	; (8002780 <RCC_GetClocksFreq+0x278>)
 80025ee:	6206      	strpl	r6, [r0, #32]
 80025f0:	6202      	strmi	r2, [r0, #32]
 80025f2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80025f4:	05f6      	lsls	r6, r6, #23
 80025f6:	d506      	bpl.n	8002606 <RCC_GetClocksFreq+0xfe>
 80025f8:	429a      	cmp	r2, r3
 80025fa:	d104      	bne.n	8002606 <RCC_GetClocksFreq+0xfe>
 80025fc:	42a5      	cmp	r5, r4
 80025fe:	d102      	bne.n	8002606 <RCC_GetClocksFreq+0xfe>
 8002600:	0056      	lsls	r6, r2, #1
 8002602:	6246      	str	r6, [r0, #36]	; 0x24
 8002604:	e000      	b.n	8002608 <RCC_GetClocksFreq+0x100>
 8002606:	6241      	str	r1, [r0, #36]	; 0x24
 8002608:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800260a:	04f6      	lsls	r6, r6, #19
 800260c:	d506      	bpl.n	800261c <RCC_GetClocksFreq+0x114>
 800260e:	429a      	cmp	r2, r3
 8002610:	d104      	bne.n	800261c <RCC_GetClocksFreq+0x114>
 8002612:	42a5      	cmp	r5, r4
 8002614:	d102      	bne.n	800261c <RCC_GetClocksFreq+0x114>
 8002616:	0056      	lsls	r6, r2, #1
 8002618:	6286      	str	r6, [r0, #40]	; 0x28
 800261a:	e000      	b.n	800261e <RCC_GetClocksFreq+0x116>
 800261c:	6281      	str	r1, [r0, #40]	; 0x28
 800261e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002620:	05b6      	lsls	r6, r6, #22
 8002622:	d506      	bpl.n	8002632 <RCC_GetClocksFreq+0x12a>
 8002624:	429a      	cmp	r2, r3
 8002626:	d104      	bne.n	8002632 <RCC_GetClocksFreq+0x12a>
 8002628:	42a5      	cmp	r5, r4
 800262a:	d102      	bne.n	8002632 <RCC_GetClocksFreq+0x12a>
 800262c:	0056      	lsls	r6, r2, #1
 800262e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8002630:	e000      	b.n	8002634 <RCC_GetClocksFreq+0x12c>
 8002632:	62c1      	str	r1, [r0, #44]	; 0x2c
 8002634:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002636:	0576      	lsls	r6, r6, #21
 8002638:	d506      	bpl.n	8002648 <RCC_GetClocksFreq+0x140>
 800263a:	429a      	cmp	r2, r3
 800263c:	d104      	bne.n	8002648 <RCC_GetClocksFreq+0x140>
 800263e:	42a5      	cmp	r5, r4
 8002640:	d102      	bne.n	8002648 <RCC_GetClocksFreq+0x140>
 8002642:	0056      	lsls	r6, r2, #1
 8002644:	64c6      	str	r6, [r0, #76]	; 0x4c
 8002646:	e000      	b.n	800264a <RCC_GetClocksFreq+0x142>
 8002648:	64c1      	str	r1, [r0, #76]	; 0x4c
 800264a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800264c:	0536      	lsls	r6, r6, #20
 800264e:	d506      	bpl.n	800265e <RCC_GetClocksFreq+0x156>
 8002650:	429a      	cmp	r2, r3
 8002652:	d104      	bne.n	800265e <RCC_GetClocksFreq+0x156>
 8002654:	42a5      	cmp	r5, r4
 8002656:	d102      	bne.n	800265e <RCC_GetClocksFreq+0x156>
 8002658:	0056      	lsls	r6, r2, #1
 800265a:	6506      	str	r6, [r0, #80]	; 0x50
 800265c:	e000      	b.n	8002660 <RCC_GetClocksFreq+0x158>
 800265e:	6501      	str	r1, [r0, #80]	; 0x50
 8002660:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002662:	04b6      	lsls	r6, r6, #18
 8002664:	d506      	bpl.n	8002674 <RCC_GetClocksFreq+0x16c>
 8002666:	429a      	cmp	r2, r3
 8002668:	d104      	bne.n	8002674 <RCC_GetClocksFreq+0x16c>
 800266a:	42a5      	cmp	r5, r4
 800266c:	d102      	bne.n	8002674 <RCC_GetClocksFreq+0x16c>
 800266e:	0056      	lsls	r6, r2, #1
 8002670:	6546      	str	r6, [r0, #84]	; 0x54
 8002672:	e000      	b.n	8002676 <RCC_GetClocksFreq+0x16e>
 8002674:	6501      	str	r1, [r0, #80]	; 0x50
 8002676:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002678:	0436      	lsls	r6, r6, #16
 800267a:	d506      	bpl.n	800268a <RCC_GetClocksFreq+0x182>
 800267c:	429a      	cmp	r2, r3
 800267e:	d104      	bne.n	800268a <RCC_GetClocksFreq+0x182>
 8002680:	42a5      	cmp	r5, r4
 8002682:	d102      	bne.n	800268a <RCC_GetClocksFreq+0x182>
 8002684:	0053      	lsls	r3, r2, #1
 8002686:	6583      	str	r3, [r0, #88]	; 0x58
 8002688:	e000      	b.n	800268c <RCC_GetClocksFreq+0x184>
 800268a:	6581      	str	r1, [r0, #88]	; 0x58
 800268c:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 800268e:	4b3b      	ldr	r3, [pc, #236]	; (800277c <RCC_GetClocksFreq+0x274>)
 8002690:	07a4      	lsls	r4, r4, #30
 8002692:	d101      	bne.n	8002698 <RCC_GetClocksFreq+0x190>
 8002694:	6381      	str	r1, [r0, #56]	; 0x38
 8002696:	e015      	b.n	80026c4 <RCC_GetClocksFreq+0x1bc>
 8002698:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800269a:	f001 0103 	and.w	r1, r1, #3
 800269e:	2901      	cmp	r1, #1
 80026a0:	d101      	bne.n	80026a6 <RCC_GetClocksFreq+0x19e>
 80026a2:	6382      	str	r2, [r0, #56]	; 0x38
 80026a4:	e00e      	b.n	80026c4 <RCC_GetClocksFreq+0x1bc>
 80026a6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80026a8:	f001 0103 	and.w	r1, r1, #3
 80026ac:	2902      	cmp	r1, #2
 80026ae:	d102      	bne.n	80026b6 <RCC_GetClocksFreq+0x1ae>
 80026b0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80026b4:	e005      	b.n	80026c2 <RCC_GetClocksFreq+0x1ba>
 80026b6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80026b8:	f003 0303 	and.w	r3, r3, #3
 80026bc:	2b03      	cmp	r3, #3
 80026be:	d101      	bne.n	80026c4 <RCC_GetClocksFreq+0x1bc>
 80026c0:	4b2f      	ldr	r3, [pc, #188]	; (8002780 <RCC_GetClocksFreq+0x278>)
 80026c2:	6383      	str	r3, [r0, #56]	; 0x38
 80026c4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80026c6:	4b2d      	ldr	r3, [pc, #180]	; (800277c <RCC_GetClocksFreq+0x274>)
 80026c8:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80026cc:	d102      	bne.n	80026d4 <RCC_GetClocksFreq+0x1cc>
 80026ce:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 80026d2:	e018      	b.n	8002706 <RCC_GetClocksFreq+0x1fe>
 80026d4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80026d6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80026da:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80026de:	d101      	bne.n	80026e4 <RCC_GetClocksFreq+0x1dc>
 80026e0:	63c2      	str	r2, [r0, #60]	; 0x3c
 80026e2:	e010      	b.n	8002706 <RCC_GetClocksFreq+0x1fe>
 80026e4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80026e6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80026ea:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80026ee:	d102      	bne.n	80026f6 <RCC_GetClocksFreq+0x1ee>
 80026f0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80026f4:	e006      	b.n	8002704 <RCC_GetClocksFreq+0x1fc>
 80026f6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80026f8:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 80026fc:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8002700:	d101      	bne.n	8002706 <RCC_GetClocksFreq+0x1fe>
 8002702:	4b1f      	ldr	r3, [pc, #124]	; (8002780 <RCC_GetClocksFreq+0x278>)
 8002704:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002706:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002708:	4b1c      	ldr	r3, [pc, #112]	; (800277c <RCC_GetClocksFreq+0x274>)
 800270a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 800270e:	d102      	bne.n	8002716 <RCC_GetClocksFreq+0x20e>
 8002710:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8002714:	e018      	b.n	8002748 <RCC_GetClocksFreq+0x240>
 8002716:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002718:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800271c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8002720:	d101      	bne.n	8002726 <RCC_GetClocksFreq+0x21e>
 8002722:	6402      	str	r2, [r0, #64]	; 0x40
 8002724:	e010      	b.n	8002748 <RCC_GetClocksFreq+0x240>
 8002726:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002728:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800272c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8002730:	d102      	bne.n	8002738 <RCC_GetClocksFreq+0x230>
 8002732:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002736:	e006      	b.n	8002746 <RCC_GetClocksFreq+0x23e>
 8002738:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800273a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800273e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8002742:	d101      	bne.n	8002748 <RCC_GetClocksFreq+0x240>
 8002744:	4b0e      	ldr	r3, [pc, #56]	; (8002780 <RCC_GetClocksFreq+0x278>)
 8002746:	6403      	str	r3, [r0, #64]	; 0x40
 8002748:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800274a:	4b0c      	ldr	r3, [pc, #48]	; (800277c <RCC_GetClocksFreq+0x274>)
 800274c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8002750:	d102      	bne.n	8002758 <RCC_GetClocksFreq+0x250>
 8002752:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8002756:	e023      	b.n	80027a0 <RCC_GetClocksFreq+0x298>
 8002758:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800275a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800275e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8002762:	d101      	bne.n	8002768 <RCC_GetClocksFreq+0x260>
 8002764:	6442      	str	r2, [r0, #68]	; 0x44
 8002766:	e01b      	b.n	80027a0 <RCC_GetClocksFreq+0x298>
 8002768:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800276a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800276e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8002772:	d10d      	bne.n	8002790 <RCC_GetClocksFreq+0x288>
 8002774:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002778:	e011      	b.n	800279e <RCC_GetClocksFreq+0x296>
 800277a:	bf00      	nop
 800277c:	40021000 	.word	0x40021000
 8002780:	007a1200 	.word	0x007a1200
 8002784:	003d0900 	.word	0x003d0900
 8002788:	20000420 	.word	0x20000420
 800278c:	20000400 	.word	0x20000400
 8002790:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002792:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8002796:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 800279a:	d101      	bne.n	80027a0 <RCC_GetClocksFreq+0x298>
 800279c:	4b13      	ldr	r3, [pc, #76]	; (80027ec <RCC_GetClocksFreq+0x2e4>)
 800279e:	6443      	str	r3, [r0, #68]	; 0x44
 80027a0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80027a2:	4b13      	ldr	r3, [pc, #76]	; (80027f0 <RCC_GetClocksFreq+0x2e8>)
 80027a4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80027a8:	d103      	bne.n	80027b2 <RCC_GetClocksFreq+0x2aa>
 80027aa:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80027ae:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027b2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80027b4:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80027b8:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80027bc:	d102      	bne.n	80027c4 <RCC_GetClocksFreq+0x2bc>
 80027be:	6482      	str	r2, [r0, #72]	; 0x48
 80027c0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027c4:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80027c6:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80027ca:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80027ce:	d102      	bne.n	80027d6 <RCC_GetClocksFreq+0x2ce>
 80027d0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80027d4:	e006      	b.n	80027e4 <RCC_GetClocksFreq+0x2dc>
 80027d6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80027d8:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80027dc:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80027e0:	d101      	bne.n	80027e6 <RCC_GetClocksFreq+0x2de>
 80027e2:	4b02      	ldr	r3, [pc, #8]	; (80027ec <RCC_GetClocksFreq+0x2e4>)
 80027e4:	6483      	str	r3, [r0, #72]	; 0x48
 80027e6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80027ea:	bf00      	nop
 80027ec:	007a1200 	.word	0x007a1200
 80027f0:	40021000 	.word	0x40021000

080027f4 <RCC_ADCCLKConfig>:
 80027f4:	bf00      	nop
 80027f6:	0f03      	lsrs	r3, r0, #28
 80027f8:	4b05      	ldr	r3, [pc, #20]	; (8002810 <RCC_ADCCLKConfig+0x1c>)
 80027fa:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80027fc:	bf14      	ite	ne
 80027fe:	f422 5278 	bicne.w	r2, r2, #15872	; 0x3e00
 8002802:	f422 72f8 	biceq.w	r2, r2, #496	; 0x1f0
 8002806:	62da      	str	r2, [r3, #44]	; 0x2c
 8002808:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800280a:	4310      	orrs	r0, r2
 800280c:	62d8      	str	r0, [r3, #44]	; 0x2c
 800280e:	4770      	bx	lr
 8002810:	40021000 	.word	0x40021000

08002814 <RCC_AHBPeriphClockCmd>:
 8002814:	bf00      	nop
 8002816:	bf00      	nop
 8002818:	4b04      	ldr	r3, [pc, #16]	; (800282c <RCC_AHBPeriphClockCmd+0x18>)
 800281a:	695a      	ldr	r2, [r3, #20]
 800281c:	b109      	cbz	r1, 8002822 <RCC_AHBPeriphClockCmd+0xe>
 800281e:	4310      	orrs	r0, r2
 8002820:	e001      	b.n	8002826 <RCC_AHBPeriphClockCmd+0x12>
 8002822:	ea22 0000 	bic.w	r0, r2, r0
 8002826:	6158      	str	r0, [r3, #20]
 8002828:	4770      	bx	lr
 800282a:	bf00      	nop
 800282c:	40021000 	.word	0x40021000

08002830 <RCC_APB2PeriphClockCmd>:
 8002830:	bf00      	nop
 8002832:	bf00      	nop
 8002834:	4b04      	ldr	r3, [pc, #16]	; (8002848 <RCC_APB2PeriphClockCmd+0x18>)
 8002836:	699a      	ldr	r2, [r3, #24]
 8002838:	b109      	cbz	r1, 800283e <RCC_APB2PeriphClockCmd+0xe>
 800283a:	4310      	orrs	r0, r2
 800283c:	e001      	b.n	8002842 <RCC_APB2PeriphClockCmd+0x12>
 800283e:	ea22 0000 	bic.w	r0, r2, r0
 8002842:	6198      	str	r0, [r3, #24]
 8002844:	4770      	bx	lr
 8002846:	bf00      	nop
 8002848:	40021000 	.word	0x40021000

0800284c <RCC_APB1PeriphClockCmd>:
 800284c:	bf00      	nop
 800284e:	bf00      	nop
 8002850:	4b04      	ldr	r3, [pc, #16]	; (8002864 <RCC_APB1PeriphClockCmd+0x18>)
 8002852:	69da      	ldr	r2, [r3, #28]
 8002854:	b109      	cbz	r1, 800285a <RCC_APB1PeriphClockCmd+0xe>
 8002856:	4310      	orrs	r0, r2
 8002858:	e001      	b.n	800285e <RCC_APB1PeriphClockCmd+0x12>
 800285a:	ea22 0000 	bic.w	r0, r2, r0
 800285e:	61d8      	str	r0, [r3, #28]
 8002860:	4770      	bx	lr
 8002862:	bf00      	nop
 8002864:	40021000 	.word	0x40021000

08002868 <TIM_TimeBaseInit>:
 8002868:	bf00      	nop
 800286a:	bf00      	nop
 800286c:	bf00      	nop
 800286e:	4a24      	ldr	r2, [pc, #144]	; (8002900 <TIM_TimeBaseInit+0x98>)
 8002870:	8803      	ldrh	r3, [r0, #0]
 8002872:	4290      	cmp	r0, r2
 8002874:	b29b      	uxth	r3, r3
 8002876:	d012      	beq.n	800289e <TIM_TimeBaseInit+0x36>
 8002878:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800287c:	4290      	cmp	r0, r2
 800287e:	d00e      	beq.n	800289e <TIM_TimeBaseInit+0x36>
 8002880:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002884:	d00b      	beq.n	800289e <TIM_TimeBaseInit+0x36>
 8002886:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 800288a:	4290      	cmp	r0, r2
 800288c:	d007      	beq.n	800289e <TIM_TimeBaseInit+0x36>
 800288e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002892:	4290      	cmp	r0, r2
 8002894:	d003      	beq.n	800289e <TIM_TimeBaseInit+0x36>
 8002896:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 800289a:	4290      	cmp	r0, r2
 800289c:	d103      	bne.n	80028a6 <TIM_TimeBaseInit+0x3e>
 800289e:	884a      	ldrh	r2, [r1, #2]
 80028a0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80028a4:	4313      	orrs	r3, r2
 80028a6:	4a17      	ldr	r2, [pc, #92]	; (8002904 <TIM_TimeBaseInit+0x9c>)
 80028a8:	4290      	cmp	r0, r2
 80028aa:	d008      	beq.n	80028be <TIM_TimeBaseInit+0x56>
 80028ac:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80028b0:	4290      	cmp	r0, r2
 80028b2:	bf1f      	itttt	ne
 80028b4:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 80028b8:	890a      	ldrhne	r2, [r1, #8]
 80028ba:	b29b      	uxthne	r3, r3
 80028bc:	4313      	orrne	r3, r2
 80028be:	8003      	strh	r3, [r0, #0]
 80028c0:	684b      	ldr	r3, [r1, #4]
 80028c2:	62c3      	str	r3, [r0, #44]	; 0x2c
 80028c4:	880b      	ldrh	r3, [r1, #0]
 80028c6:	8503      	strh	r3, [r0, #40]	; 0x28
 80028c8:	4b0d      	ldr	r3, [pc, #52]	; (8002900 <TIM_TimeBaseInit+0x98>)
 80028ca:	4298      	cmp	r0, r3
 80028cc:	d013      	beq.n	80028f6 <TIM_TimeBaseInit+0x8e>
 80028ce:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80028d2:	4298      	cmp	r0, r3
 80028d4:	d00f      	beq.n	80028f6 <TIM_TimeBaseInit+0x8e>
 80028d6:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80028da:	4298      	cmp	r0, r3
 80028dc:	d00b      	beq.n	80028f6 <TIM_TimeBaseInit+0x8e>
 80028de:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80028e2:	4298      	cmp	r0, r3
 80028e4:	d007      	beq.n	80028f6 <TIM_TimeBaseInit+0x8e>
 80028e6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80028ea:	4298      	cmp	r0, r3
 80028ec:	d003      	beq.n	80028f6 <TIM_TimeBaseInit+0x8e>
 80028ee:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80028f2:	4298      	cmp	r0, r3
 80028f4:	d101      	bne.n	80028fa <TIM_TimeBaseInit+0x92>
 80028f6:	894b      	ldrh	r3, [r1, #10]
 80028f8:	8603      	strh	r3, [r0, #48]	; 0x30
 80028fa:	2301      	movs	r3, #1
 80028fc:	6143      	str	r3, [r0, #20]
 80028fe:	4770      	bx	lr
 8002900:	40012c00 	.word	0x40012c00
 8002904:	40001000 	.word	0x40001000

08002908 <TIM_Cmd>:
 8002908:	bf00      	nop
 800290a:	bf00      	nop
 800290c:	8803      	ldrh	r3, [r0, #0]
 800290e:	b119      	cbz	r1, 8002918 <TIM_Cmd+0x10>
 8002910:	b29b      	uxth	r3, r3
 8002912:	f043 0301 	orr.w	r3, r3, #1
 8002916:	e003      	b.n	8002920 <TIM_Cmd+0x18>
 8002918:	f023 0301 	bic.w	r3, r3, #1
 800291c:	041b      	lsls	r3, r3, #16
 800291e:	0c1b      	lsrs	r3, r3, #16
 8002920:	8003      	strh	r3, [r0, #0]
 8002922:	4770      	bx	lr

08002924 <TIM_OC1Init>:
 8002924:	b570      	push	{r4, r5, r6, lr}
 8002926:	bf00      	nop
 8002928:	bf00      	nop
 800292a:	bf00      	nop
 800292c:	bf00      	nop
 800292e:	6a03      	ldr	r3, [r0, #32]
 8002930:	680d      	ldr	r5, [r1, #0]
 8002932:	f023 0301 	bic.w	r3, r3, #1
 8002936:	6203      	str	r3, [r0, #32]
 8002938:	6a03      	ldr	r3, [r0, #32]
 800293a:	6844      	ldr	r4, [r0, #4]
 800293c:	6982      	ldr	r2, [r0, #24]
 800293e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002942:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8002946:	4315      	orrs	r5, r2
 8002948:	898a      	ldrh	r2, [r1, #12]
 800294a:	f023 0302 	bic.w	r3, r3, #2
 800294e:	4313      	orrs	r3, r2
 8002950:	888a      	ldrh	r2, [r1, #4]
 8002952:	4313      	orrs	r3, r2
 8002954:	4a15      	ldr	r2, [pc, #84]	; (80029ac <TIM_OC1Init+0x88>)
 8002956:	4290      	cmp	r0, r2
 8002958:	d00f      	beq.n	800297a <TIM_OC1Init+0x56>
 800295a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800295e:	4290      	cmp	r0, r2
 8002960:	d00b      	beq.n	800297a <TIM_OC1Init+0x56>
 8002962:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8002966:	4290      	cmp	r0, r2
 8002968:	d007      	beq.n	800297a <TIM_OC1Init+0x56>
 800296a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800296e:	4290      	cmp	r0, r2
 8002970:	d003      	beq.n	800297a <TIM_OC1Init+0x56>
 8002972:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002976:	4290      	cmp	r0, r2
 8002978:	d111      	bne.n	800299e <TIM_OC1Init+0x7a>
 800297a:	bf00      	nop
 800297c:	bf00      	nop
 800297e:	bf00      	nop
 8002980:	bf00      	nop
 8002982:	89ca      	ldrh	r2, [r1, #14]
 8002984:	88ce      	ldrh	r6, [r1, #6]
 8002986:	f023 0308 	bic.w	r3, r3, #8
 800298a:	4313      	orrs	r3, r2
 800298c:	8a0a      	ldrh	r2, [r1, #16]
 800298e:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8002992:	4314      	orrs	r4, r2
 8002994:	8a4a      	ldrh	r2, [r1, #18]
 8002996:	f023 0304 	bic.w	r3, r3, #4
 800299a:	4333      	orrs	r3, r6
 800299c:	4314      	orrs	r4, r2
 800299e:	688a      	ldr	r2, [r1, #8]
 80029a0:	6044      	str	r4, [r0, #4]
 80029a2:	6185      	str	r5, [r0, #24]
 80029a4:	6342      	str	r2, [r0, #52]	; 0x34
 80029a6:	6203      	str	r3, [r0, #32]
 80029a8:	bd70      	pop	{r4, r5, r6, pc}
 80029aa:	bf00      	nop
 80029ac:	40012c00 	.word	0x40012c00

080029b0 <TIM_OC2Init>:
 80029b0:	b570      	push	{r4, r5, r6, lr}
 80029b2:	bf00      	nop
 80029b4:	bf00      	nop
 80029b6:	bf00      	nop
 80029b8:	bf00      	nop
 80029ba:	6a03      	ldr	r3, [r0, #32]
 80029bc:	680d      	ldr	r5, [r1, #0]
 80029be:	898e      	ldrh	r6, [r1, #12]
 80029c0:	f023 0310 	bic.w	r3, r3, #16
 80029c4:	6203      	str	r3, [r0, #32]
 80029c6:	6a03      	ldr	r3, [r0, #32]
 80029c8:	6844      	ldr	r4, [r0, #4]
 80029ca:	6982      	ldr	r2, [r0, #24]
 80029cc:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 80029d0:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 80029d4:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 80029d8:	f023 0220 	bic.w	r2, r3, #32
 80029dc:	888b      	ldrh	r3, [r1, #4]
 80029de:	4333      	orrs	r3, r6
 80029e0:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 80029e4:	4a10      	ldr	r2, [pc, #64]	; (8002a28 <TIM_OC2Init+0x78>)
 80029e6:	4290      	cmp	r0, r2
 80029e8:	d003      	beq.n	80029f2 <TIM_OC2Init+0x42>
 80029ea:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80029ee:	4290      	cmp	r0, r2
 80029f0:	d114      	bne.n	8002a1c <TIM_OC2Init+0x6c>
 80029f2:	bf00      	nop
 80029f4:	bf00      	nop
 80029f6:	bf00      	nop
 80029f8:	bf00      	nop
 80029fa:	89ca      	ldrh	r2, [r1, #14]
 80029fc:	8a0e      	ldrh	r6, [r1, #16]
 80029fe:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002a02:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002a06:	88ca      	ldrh	r2, [r1, #6]
 8002a08:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002a0c:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002a10:	8a4a      	ldrh	r2, [r1, #18]
 8002a12:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8002a16:	4332      	orrs	r2, r6
 8002a18:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8002a1c:	688a      	ldr	r2, [r1, #8]
 8002a1e:	6044      	str	r4, [r0, #4]
 8002a20:	6185      	str	r5, [r0, #24]
 8002a22:	6382      	str	r2, [r0, #56]	; 0x38
 8002a24:	6203      	str	r3, [r0, #32]
 8002a26:	bd70      	pop	{r4, r5, r6, pc}
 8002a28:	40012c00 	.word	0x40012c00

08002a2c <TIM_SetCompare2>:
 8002a2c:	bf00      	nop
 8002a2e:	6381      	str	r1, [r0, #56]	; 0x38
 8002a30:	4770      	bx	lr

08002a32 <TIM_CtrlPWMOutputs>:
 8002a32:	bf00      	nop
 8002a34:	bf00      	nop
 8002a36:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002a38:	b111      	cbz	r1, 8002a40 <TIM_CtrlPWMOutputs+0xe>
 8002a3a:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002a3e:	e001      	b.n	8002a44 <TIM_CtrlPWMOutputs+0x12>
 8002a40:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8002a44:	6443      	str	r3, [r0, #68]	; 0x44
 8002a46:	4770      	bx	lr

08002a48 <TIM_ITConfig>:
 8002a48:	bf00      	nop
 8002a4a:	bf00      	nop
 8002a4c:	bf00      	nop
 8002a4e:	68c3      	ldr	r3, [r0, #12]
 8002a50:	b10a      	cbz	r2, 8002a56 <TIM_ITConfig+0xe>
 8002a52:	4319      	orrs	r1, r3
 8002a54:	e002      	b.n	8002a5c <TIM_ITConfig+0x14>
 8002a56:	43c9      	mvns	r1, r1
 8002a58:	b289      	uxth	r1, r1
 8002a5a:	4019      	ands	r1, r3
 8002a5c:	60c1      	str	r1, [r0, #12]
 8002a5e:	4770      	bx	lr

08002a60 <TIM_GetITStatus>:
 8002a60:	bf00      	nop
 8002a62:	bf00      	nop
 8002a64:	6903      	ldr	r3, [r0, #16]
 8002a66:	68c2      	ldr	r2, [r0, #12]
 8002a68:	ea11 0003 	ands.w	r0, r1, r3
 8002a6c:	d003      	beq.n	8002a76 <TIM_GetITStatus+0x16>
 8002a6e:	4211      	tst	r1, r2
 8002a70:	bf14      	ite	ne
 8002a72:	2001      	movne	r0, #1
 8002a74:	2000      	moveq	r0, #0
 8002a76:	4770      	bx	lr

08002a78 <TIM_ClearITPendingBit>:
 8002a78:	bf00      	nop
 8002a7a:	43c9      	mvns	r1, r1
 8002a7c:	b289      	uxth	r1, r1
 8002a7e:	6101      	str	r1, [r0, #16]
 8002a80:	4770      	bx	lr
	...

08002a84 <USART_Init>:
 8002a84:	b530      	push	{r4, r5, lr}
 8002a86:	4604      	mov	r4, r0
 8002a88:	b099      	sub	sp, #100	; 0x64
 8002a8a:	460d      	mov	r5, r1
 8002a8c:	bf00      	nop
 8002a8e:	bf00      	nop
 8002a90:	bf00      	nop
 8002a92:	bf00      	nop
 8002a94:	bf00      	nop
 8002a96:	bf00      	nop
 8002a98:	bf00      	nop
 8002a9a:	6803      	ldr	r3, [r0, #0]
 8002a9c:	f023 0301 	bic.w	r3, r3, #1
 8002aa0:	6003      	str	r3, [r0, #0]
 8002aa2:	6843      	ldr	r3, [r0, #4]
 8002aa4:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8002aa8:	688b      	ldr	r3, [r1, #8]
 8002aaa:	68c9      	ldr	r1, [r1, #12]
 8002aac:	4313      	orrs	r3, r2
 8002aae:	6043      	str	r3, [r0, #4]
 8002ab0:	686a      	ldr	r2, [r5, #4]
 8002ab2:	6803      	ldr	r3, [r0, #0]
 8002ab4:	4311      	orrs	r1, r2
 8002ab6:	692a      	ldr	r2, [r5, #16]
 8002ab8:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002abc:	430a      	orrs	r2, r1
 8002abe:	f023 030c 	bic.w	r3, r3, #12
 8002ac2:	4313      	orrs	r3, r2
 8002ac4:	6003      	str	r3, [r0, #0]
 8002ac6:	6883      	ldr	r3, [r0, #8]
 8002ac8:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002acc:	696b      	ldr	r3, [r5, #20]
 8002ace:	4313      	orrs	r3, r2
 8002ad0:	6083      	str	r3, [r0, #8]
 8002ad2:	a801      	add	r0, sp, #4
 8002ad4:	f7ff fd18 	bl	8002508 <RCC_GetClocksFreq>
 8002ad8:	4b17      	ldr	r3, [pc, #92]	; (8002b38 <USART_Init+0xb4>)
 8002ada:	429c      	cmp	r4, r3
 8002adc:	d101      	bne.n	8002ae2 <USART_Init+0x5e>
 8002ade:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002ae0:	e00e      	b.n	8002b00 <USART_Init+0x7c>
 8002ae2:	4b16      	ldr	r3, [pc, #88]	; (8002b3c <USART_Init+0xb8>)
 8002ae4:	429c      	cmp	r4, r3
 8002ae6:	d101      	bne.n	8002aec <USART_Init+0x68>
 8002ae8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002aea:	e009      	b.n	8002b00 <USART_Init+0x7c>
 8002aec:	4b14      	ldr	r3, [pc, #80]	; (8002b40 <USART_Init+0xbc>)
 8002aee:	429c      	cmp	r4, r3
 8002af0:	d101      	bne.n	8002af6 <USART_Init+0x72>
 8002af2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002af4:	e004      	b.n	8002b00 <USART_Init+0x7c>
 8002af6:	4b13      	ldr	r3, [pc, #76]	; (8002b44 <USART_Init+0xc0>)
 8002af8:	429c      	cmp	r4, r3
 8002afa:	bf0c      	ite	eq
 8002afc:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002afe:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002b00:	6822      	ldr	r2, [r4, #0]
 8002b02:	6829      	ldr	r1, [r5, #0]
 8002b04:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002b08:	bf18      	it	ne
 8002b0a:	005b      	lslne	r3, r3, #1
 8002b0c:	fbb3 f2f1 	udiv	r2, r3, r1
 8002b10:	fb01 3312 	mls	r3, r1, r2, r3
 8002b14:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002b18:	6823      	ldr	r3, [r4, #0]
 8002b1a:	bf28      	it	cs
 8002b1c:	3201      	addcs	r2, #1
 8002b1e:	041b      	lsls	r3, r3, #16
 8002b20:	bf41      	itttt	mi
 8002b22:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8002b26:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002b2a:	4013      	andmi	r3, r2
 8002b2c:	ea41 0203 	orrmi.w	r2, r1, r3
 8002b30:	b292      	uxth	r2, r2
 8002b32:	81a2      	strh	r2, [r4, #12]
 8002b34:	b019      	add	sp, #100	; 0x64
 8002b36:	bd30      	pop	{r4, r5, pc}
 8002b38:	40013800 	.word	0x40013800
 8002b3c:	40004400 	.word	0x40004400
 8002b40:	40004800 	.word	0x40004800
 8002b44:	40004c00 	.word	0x40004c00

08002b48 <USART_Cmd>:
 8002b48:	bf00      	nop
 8002b4a:	bf00      	nop
 8002b4c:	6803      	ldr	r3, [r0, #0]
 8002b4e:	b111      	cbz	r1, 8002b56 <USART_Cmd+0xe>
 8002b50:	f043 0301 	orr.w	r3, r3, #1
 8002b54:	e001      	b.n	8002b5a <USART_Cmd+0x12>
 8002b56:	f023 0301 	bic.w	r3, r3, #1
 8002b5a:	6003      	str	r3, [r0, #0]
 8002b5c:	4770      	bx	lr

08002b5e <USART_ReceiveData>:
 8002b5e:	bf00      	nop
 8002b60:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8002b62:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8002b66:	4770      	bx	lr

08002b68 <USART_ITConfig>:
 8002b68:	b510      	push	{r4, lr}
 8002b6a:	bf00      	nop
 8002b6c:	bf00      	nop
 8002b6e:	bf00      	nop
 8002b70:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002b74:	2301      	movs	r3, #1
 8002b76:	b2c9      	uxtb	r1, r1
 8002b78:	2c02      	cmp	r4, #2
 8002b7a:	fa03 f301 	lsl.w	r3, r3, r1
 8002b7e:	d101      	bne.n	8002b84 <USART_ITConfig+0x1c>
 8002b80:	3004      	adds	r0, #4
 8002b82:	e002      	b.n	8002b8a <USART_ITConfig+0x22>
 8002b84:	2c03      	cmp	r4, #3
 8002b86:	bf08      	it	eq
 8002b88:	3008      	addeq	r0, #8
 8002b8a:	b112      	cbz	r2, 8002b92 <USART_ITConfig+0x2a>
 8002b8c:	6802      	ldr	r2, [r0, #0]
 8002b8e:	4313      	orrs	r3, r2
 8002b90:	e002      	b.n	8002b98 <USART_ITConfig+0x30>
 8002b92:	6802      	ldr	r2, [r0, #0]
 8002b94:	ea22 0303 	bic.w	r3, r2, r3
 8002b98:	6003      	str	r3, [r0, #0]
 8002b9a:	bd10      	pop	{r4, pc}

08002b9c <USART_GetITStatus>:
 8002b9c:	b510      	push	{r4, lr}
 8002b9e:	bf00      	nop
 8002ba0:	bf00      	nop
 8002ba2:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8002ba6:	b2cc      	uxtb	r4, r1
 8002ba8:	2301      	movs	r3, #1
 8002baa:	2a01      	cmp	r2, #1
 8002bac:	fa03 f304 	lsl.w	r3, r3, r4
 8002bb0:	d101      	bne.n	8002bb6 <USART_GetITStatus+0x1a>
 8002bb2:	6802      	ldr	r2, [r0, #0]
 8002bb4:	e003      	b.n	8002bbe <USART_GetITStatus+0x22>
 8002bb6:	2a02      	cmp	r2, #2
 8002bb8:	bf0c      	ite	eq
 8002bba:	6842      	ldreq	r2, [r0, #4]
 8002bbc:	6882      	ldrne	r2, [r0, #8]
 8002bbe:	4013      	ands	r3, r2
 8002bc0:	69c2      	ldr	r2, [r0, #28]
 8002bc2:	b13b      	cbz	r3, 8002bd4 <USART_GetITStatus+0x38>
 8002bc4:	0c09      	lsrs	r1, r1, #16
 8002bc6:	2301      	movs	r3, #1
 8002bc8:	408b      	lsls	r3, r1
 8002bca:	4213      	tst	r3, r2
 8002bcc:	bf14      	ite	ne
 8002bce:	2001      	movne	r0, #1
 8002bd0:	2000      	moveq	r0, #0
 8002bd2:	bd10      	pop	{r4, pc}
 8002bd4:	4618      	mov	r0, r3
 8002bd6:	bd10      	pop	{r4, pc}

08002bd8 <USART_ClearITPendingBit>:
 8002bd8:	bf00      	nop
 8002bda:	bf00      	nop
 8002bdc:	2301      	movs	r3, #1
 8002bde:	0c09      	lsrs	r1, r1, #16
 8002be0:	408b      	lsls	r3, r1
 8002be2:	6203      	str	r3, [r0, #32]
 8002be4:	4770      	bx	lr
	...

08002be8 <ADC_Init>:
 8002be8:	b510      	push	{r4, lr}
 8002bea:	bf00      	nop
 8002bec:	bf00      	nop
 8002bee:	bf00      	nop
 8002bf0:	bf00      	nop
 8002bf2:	bf00      	nop
 8002bf4:	bf00      	nop
 8002bf6:	bf00      	nop
 8002bf8:	bf00      	nop
 8002bfa:	bf00      	nop
 8002bfc:	4b0c      	ldr	r3, [pc, #48]	; (8002c30 <ADC_Init+0x48>)
 8002bfe:	68c2      	ldr	r2, [r0, #12]
 8002c00:	4013      	ands	r3, r2
 8002c02:	e891 0014 	ldmia.w	r1, {r2, r4}
 8002c06:	4314      	orrs	r4, r2
 8002c08:	688a      	ldr	r2, [r1, #8]
 8002c0a:	4314      	orrs	r4, r2
 8002c0c:	68ca      	ldr	r2, [r1, #12]
 8002c0e:	4314      	orrs	r4, r2
 8002c10:	690a      	ldr	r2, [r1, #16]
 8002c12:	4314      	orrs	r4, r2
 8002c14:	694a      	ldr	r2, [r1, #20]
 8002c16:	4314      	orrs	r4, r2
 8002c18:	698a      	ldr	r2, [r1, #24]
 8002c1a:	4322      	orrs	r2, r4
 8002c1c:	4313      	orrs	r3, r2
 8002c1e:	60c3      	str	r3, [r0, #12]
 8002c20:	6b03      	ldr	r3, [r0, #48]	; 0x30
 8002c22:	f023 020f 	bic.w	r2, r3, #15
 8002c26:	7f0b      	ldrb	r3, [r1, #28]
 8002c28:	3b01      	subs	r3, #1
 8002c2a:	4313      	orrs	r3, r2
 8002c2c:	6303      	str	r3, [r0, #48]	; 0x30
 8002c2e:	bd10      	pop	{r4, pc}
 8002c30:	fdffc007 	.word	0xfdffc007

08002c34 <ADC_Cmd>:
 8002c34:	bf00      	nop
 8002c36:	bf00      	nop
 8002c38:	6883      	ldr	r3, [r0, #8]
 8002c3a:	b111      	cbz	r1, 8002c42 <ADC_Cmd+0xe>
 8002c3c:	f043 0301 	orr.w	r3, r3, #1
 8002c40:	e001      	b.n	8002c46 <ADC_Cmd+0x12>
 8002c42:	f043 0302 	orr.w	r3, r3, #2
 8002c46:	6083      	str	r3, [r0, #8]
 8002c48:	4770      	bx	lr

08002c4a <ADC_RegularChannelConfig>:
 8002c4a:	b530      	push	{r4, r5, lr}
 8002c4c:	bf00      	nop
 8002c4e:	bf00      	nop
 8002c50:	bf00      	nop
 8002c52:	2a04      	cmp	r2, #4
 8002c54:	d80c      	bhi.n	8002c70 <ADC_RegularChannelConfig+0x26>
 8002c56:	eb02 0242 	add.w	r2, r2, r2, lsl #1
 8002c5a:	6b05      	ldr	r5, [r0, #48]	; 0x30
 8002c5c:	0052      	lsls	r2, r2, #1
 8002c5e:	241f      	movs	r4, #31
 8002c60:	4094      	lsls	r4, r2
 8002c62:	ea25 0404 	bic.w	r4, r5, r4
 8002c66:	fa01 f202 	lsl.w	r2, r1, r2
 8002c6a:	4322      	orrs	r2, r4
 8002c6c:	6302      	str	r2, [r0, #48]	; 0x30
 8002c6e:	e029      	b.n	8002cc4 <ADC_RegularChannelConfig+0x7a>
 8002c70:	2a09      	cmp	r2, #9
 8002c72:	d80c      	bhi.n	8002c8e <ADC_RegularChannelConfig+0x44>
 8002c74:	2406      	movs	r4, #6
 8002c76:	3a05      	subs	r2, #5
 8002c78:	4362      	muls	r2, r4
 8002c7a:	6b45      	ldr	r5, [r0, #52]	; 0x34
 8002c7c:	241f      	movs	r4, #31
 8002c7e:	4094      	lsls	r4, r2
 8002c80:	ea25 0404 	bic.w	r4, r5, r4
 8002c84:	fa01 f202 	lsl.w	r2, r1, r2
 8002c88:	4322      	orrs	r2, r4
 8002c8a:	6342      	str	r2, [r0, #52]	; 0x34
 8002c8c:	e01a      	b.n	8002cc4 <ADC_RegularChannelConfig+0x7a>
 8002c8e:	2a0e      	cmp	r2, #14
 8002c90:	f04f 0406 	mov.w	r4, #6
 8002c94:	d80b      	bhi.n	8002cae <ADC_RegularChannelConfig+0x64>
 8002c96:	3a0a      	subs	r2, #10
 8002c98:	4362      	muls	r2, r4
 8002c9a:	6b85      	ldr	r5, [r0, #56]	; 0x38
 8002c9c:	241f      	movs	r4, #31
 8002c9e:	4094      	lsls	r4, r2
 8002ca0:	ea25 0404 	bic.w	r4, r5, r4
 8002ca4:	fa01 f202 	lsl.w	r2, r1, r2
 8002ca8:	4322      	orrs	r2, r4
 8002caa:	6382      	str	r2, [r0, #56]	; 0x38
 8002cac:	e00a      	b.n	8002cc4 <ADC_RegularChannelConfig+0x7a>
 8002cae:	3a0f      	subs	r2, #15
 8002cb0:	4362      	muls	r2, r4
 8002cb2:	6bc5      	ldr	r5, [r0, #60]	; 0x3c
 8002cb4:	241f      	movs	r4, #31
 8002cb6:	4094      	lsls	r4, r2
 8002cb8:	ea25 0404 	bic.w	r4, r5, r4
 8002cbc:	fa01 f202 	lsl.w	r2, r1, r2
 8002cc0:	4322      	orrs	r2, r4
 8002cc2:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002cc4:	2909      	cmp	r1, #9
 8002cc6:	d90e      	bls.n	8002ce6 <ADC_RegularChannelConfig+0x9c>
 8002cc8:	390a      	subs	r1, #10
 8002cca:	6982      	ldr	r2, [r0, #24]
 8002ccc:	6984      	ldr	r4, [r0, #24]
 8002cce:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 8002cd2:	2207      	movs	r2, #7
 8002cd4:	408a      	lsls	r2, r1
 8002cd6:	ea24 0202 	bic.w	r2, r4, r2
 8002cda:	6182      	str	r2, [r0, #24]
 8002cdc:	6982      	ldr	r2, [r0, #24]
 8002cde:	408b      	lsls	r3, r1
 8002ce0:	4313      	orrs	r3, r2
 8002ce2:	6183      	str	r3, [r0, #24]
 8002ce4:	bd30      	pop	{r4, r5, pc}
 8002ce6:	3901      	subs	r1, #1
 8002ce8:	6942      	ldr	r2, [r0, #20]
 8002cea:	6944      	ldr	r4, [r0, #20]
 8002cec:	eb01 0141 	add.w	r1, r1, r1, lsl #1
 8002cf0:	2238      	movs	r2, #56	; 0x38
 8002cf2:	408a      	lsls	r2, r1
 8002cf4:	ea24 0202 	bic.w	r2, r4, r2
 8002cf8:	6142      	str	r2, [r0, #20]
 8002cfa:	6942      	ldr	r2, [r0, #20]
 8002cfc:	3103      	adds	r1, #3
 8002cfe:	408b      	lsls	r3, r1
 8002d00:	4313      	orrs	r3, r2
 8002d02:	6143      	str	r3, [r0, #20]
 8002d04:	bd30      	pop	{r4, r5, pc}
	...

08002d08 <SystemInit>:
 8002d08:	4a39      	ldr	r2, [pc, #228]	; (8002df0 <SystemInit+0xe8>)
 8002d0a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002d0e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002d12:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002d16:	4b37      	ldr	r3, [pc, #220]	; (8002df4 <SystemInit+0xec>)
 8002d18:	681a      	ldr	r2, [r3, #0]
 8002d1a:	f042 0201 	orr.w	r2, r2, #1
 8002d1e:	601a      	str	r2, [r3, #0]
 8002d20:	6859      	ldr	r1, [r3, #4]
 8002d22:	4a35      	ldr	r2, [pc, #212]	; (8002df8 <SystemInit+0xf0>)
 8002d24:	400a      	ands	r2, r1
 8002d26:	605a      	str	r2, [r3, #4]
 8002d28:	681a      	ldr	r2, [r3, #0]
 8002d2a:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002d2e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002d32:	601a      	str	r2, [r3, #0]
 8002d34:	681a      	ldr	r2, [r3, #0]
 8002d36:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002d3a:	601a      	str	r2, [r3, #0]
 8002d3c:	685a      	ldr	r2, [r3, #4]
 8002d3e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8002d42:	605a      	str	r2, [r3, #4]
 8002d44:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002d46:	f022 020f 	bic.w	r2, r2, #15
 8002d4a:	62da      	str	r2, [r3, #44]	; 0x2c
 8002d4c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002d4e:	4a2b      	ldr	r2, [pc, #172]	; (8002dfc <SystemInit+0xf4>)
 8002d50:	b082      	sub	sp, #8
 8002d52:	400a      	ands	r2, r1
 8002d54:	631a      	str	r2, [r3, #48]	; 0x30
 8002d56:	2200      	movs	r2, #0
 8002d58:	609a      	str	r2, [r3, #8]
 8002d5a:	9200      	str	r2, [sp, #0]
 8002d5c:	9201      	str	r2, [sp, #4]
 8002d5e:	681a      	ldr	r2, [r3, #0]
 8002d60:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8002d64:	601a      	str	r2, [r3, #0]
 8002d66:	681a      	ldr	r2, [r3, #0]
 8002d68:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002d6c:	9201      	str	r2, [sp, #4]
 8002d6e:	9a00      	ldr	r2, [sp, #0]
 8002d70:	3201      	adds	r2, #1
 8002d72:	9200      	str	r2, [sp, #0]
 8002d74:	9a01      	ldr	r2, [sp, #4]
 8002d76:	b91a      	cbnz	r2, 8002d80 <SystemInit+0x78>
 8002d78:	9a00      	ldr	r2, [sp, #0]
 8002d7a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002d7e:	d1f2      	bne.n	8002d66 <SystemInit+0x5e>
 8002d80:	681a      	ldr	r2, [r3, #0]
 8002d82:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8002d86:	bf18      	it	ne
 8002d88:	2201      	movne	r2, #1
 8002d8a:	9201      	str	r2, [sp, #4]
 8002d8c:	9a01      	ldr	r2, [sp, #4]
 8002d8e:	2a01      	cmp	r2, #1
 8002d90:	d005      	beq.n	8002d9e <SystemInit+0x96>
 8002d92:	4b17      	ldr	r3, [pc, #92]	; (8002df0 <SystemInit+0xe8>)
 8002d94:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002d98:	609a      	str	r2, [r3, #8]
 8002d9a:	b002      	add	sp, #8
 8002d9c:	4770      	bx	lr
 8002d9e:	4a18      	ldr	r2, [pc, #96]	; (8002e00 <SystemInit+0xf8>)
 8002da0:	2112      	movs	r1, #18
 8002da2:	6011      	str	r1, [r2, #0]
 8002da4:	685a      	ldr	r2, [r3, #4]
 8002da6:	605a      	str	r2, [r3, #4]
 8002da8:	685a      	ldr	r2, [r3, #4]
 8002daa:	605a      	str	r2, [r3, #4]
 8002dac:	685a      	ldr	r2, [r3, #4]
 8002dae:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002db2:	605a      	str	r2, [r3, #4]
 8002db4:	685a      	ldr	r2, [r3, #4]
 8002db6:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002dba:	605a      	str	r2, [r3, #4]
 8002dbc:	685a      	ldr	r2, [r3, #4]
 8002dbe:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002dc2:	605a      	str	r2, [r3, #4]
 8002dc4:	681a      	ldr	r2, [r3, #0]
 8002dc6:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8002dca:	601a      	str	r2, [r3, #0]
 8002dcc:	6819      	ldr	r1, [r3, #0]
 8002dce:	4a09      	ldr	r2, [pc, #36]	; (8002df4 <SystemInit+0xec>)
 8002dd0:	0189      	lsls	r1, r1, #6
 8002dd2:	d5fb      	bpl.n	8002dcc <SystemInit+0xc4>
 8002dd4:	6851      	ldr	r1, [r2, #4]
 8002dd6:	f021 0103 	bic.w	r1, r1, #3
 8002dda:	6051      	str	r1, [r2, #4]
 8002ddc:	6851      	ldr	r1, [r2, #4]
 8002dde:	f041 0102 	orr.w	r1, r1, #2
 8002de2:	6051      	str	r1, [r2, #4]
 8002de4:	685a      	ldr	r2, [r3, #4]
 8002de6:	f002 020c 	and.w	r2, r2, #12
 8002dea:	2a08      	cmp	r2, #8
 8002dec:	d1fa      	bne.n	8002de4 <SystemInit+0xdc>
 8002dee:	e7d0      	b.n	8002d92 <SystemInit+0x8a>
 8002df0:	e000ed00 	.word	0xe000ed00
 8002df4:	40021000 	.word	0x40021000
 8002df8:	f87fc00c 	.word	0xf87fc00c
 8002dfc:	ff00fccc 	.word	0xff00fccc
 8002e00:	40022000 	.word	0x40022000

08002e04 <core_yield>:
 8002e04:	bf00      	nop
 8002e06:	4770      	bx	lr

08002e08 <sytem_clock_init>:
 8002e08:	f7ff bf7e 	b.w	8002d08 <SystemInit>

08002e0c <NVIC_Init>:
 8002e0c:	b510      	push	{r4, lr}
 8002e0e:	bf00      	nop
 8002e10:	bf00      	nop
 8002e12:	bf00      	nop
 8002e14:	78c2      	ldrb	r2, [r0, #3]
 8002e16:	7803      	ldrb	r3, [r0, #0]
 8002e18:	b312      	cbz	r2, 8002e60 <NVIC_Init+0x54>
 8002e1a:	4a17      	ldr	r2, [pc, #92]	; (8002e78 <NVIC_Init+0x6c>)
 8002e1c:	68d1      	ldr	r1, [r2, #12]
 8002e1e:	7842      	ldrb	r2, [r0, #1]
 8002e20:	43c9      	mvns	r1, r1
 8002e22:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002e26:	f1c1 0404 	rsb	r4, r1, #4
 8002e2a:	b2e4      	uxtb	r4, r4
 8002e2c:	40a2      	lsls	r2, r4
 8002e2e:	b2d4      	uxtb	r4, r2
 8002e30:	220f      	movs	r2, #15
 8002e32:	410a      	asrs	r2, r1
 8002e34:	7881      	ldrb	r1, [r0, #2]
 8002e36:	400a      	ands	r2, r1
 8002e38:	4322      	orrs	r2, r4
 8002e3a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002e3e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002e42:	0112      	lsls	r2, r2, #4
 8002e44:	b2d2      	uxtb	r2, r2
 8002e46:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002e4a:	7803      	ldrb	r3, [r0, #0]
 8002e4c:	2201      	movs	r2, #1
 8002e4e:	0959      	lsrs	r1, r3, #5
 8002e50:	f003 031f 	and.w	r3, r3, #31
 8002e54:	fa02 f303 	lsl.w	r3, r2, r3
 8002e58:	4a08      	ldr	r2, [pc, #32]	; (8002e7c <NVIC_Init+0x70>)
 8002e5a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002e5e:	bd10      	pop	{r4, pc}
 8002e60:	095a      	lsrs	r2, r3, #5
 8002e62:	2101      	movs	r1, #1
 8002e64:	f003 031f 	and.w	r3, r3, #31
 8002e68:	4099      	lsls	r1, r3
 8002e6a:	f102 0320 	add.w	r3, r2, #32
 8002e6e:	4a03      	ldr	r2, [pc, #12]	; (8002e7c <NVIC_Init+0x70>)
 8002e70:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002e74:	bd10      	pop	{r4, pc}
 8002e76:	bf00      	nop
 8002e78:	e000ed00 	.word	0xe000ed00
 8002e7c:	e000e100 	.word	0xe000e100

08002e80 <EXTI_Init>:
 8002e80:	b570      	push	{r4, r5, r6, lr}
 8002e82:	bf00      	nop
 8002e84:	bf00      	nop
 8002e86:	bf00      	nop
 8002e88:	bf00      	nop
 8002e8a:	7982      	ldrb	r2, [r0, #6]
 8002e8c:	6803      	ldr	r3, [r0, #0]
 8002e8e:	7904      	ldrb	r4, [r0, #4]
 8002e90:	2a00      	cmp	r2, #0
 8002e92:	d064      	beq.n	8002f5e <EXTI_Init+0xde>
 8002e94:	f023 011f 	bic.w	r1, r3, #31
 8002e98:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002e9c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002ea0:	f003 021f 	and.w	r2, r3, #31
 8002ea4:	680d      	ldr	r5, [r1, #0]
 8002ea6:	2301      	movs	r3, #1
 8002ea8:	fa03 f202 	lsl.w	r2, r3, r2
 8002eac:	ea25 0202 	bic.w	r2, r5, r2
 8002eb0:	600a      	str	r2, [r1, #0]
 8002eb2:	6802      	ldr	r2, [r0, #0]
 8002eb4:	4d32      	ldr	r5, [pc, #200]	; (8002f80 <EXTI_Init+0x100>)
 8002eb6:	f022 061f 	bic.w	r6, r2, #31
 8002eba:	f002 021f 	and.w	r2, r2, #31
 8002ebe:	5971      	ldr	r1, [r6, r5]
 8002ec0:	fa03 f202 	lsl.w	r2, r3, r2
 8002ec4:	ea21 0202 	bic.w	r2, r1, r2
 8002ec8:	5172      	str	r2, [r6, r5]
 8002eca:	6801      	ldr	r1, [r0, #0]
 8002ecc:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002ed0:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002ed4:	f021 041f 	bic.w	r4, r1, #31
 8002ed8:	f001 011f 	and.w	r1, r1, #31
 8002edc:	5915      	ldr	r5, [r2, r4]
 8002ede:	fa03 f101 	lsl.w	r1, r3, r1
 8002ee2:	4329      	orrs	r1, r5
 8002ee4:	5111      	str	r1, [r2, r4]
 8002ee6:	6802      	ldr	r2, [r0, #0]
 8002ee8:	4d26      	ldr	r5, [pc, #152]	; (8002f84 <EXTI_Init+0x104>)
 8002eea:	f022 041f 	bic.w	r4, r2, #31
 8002eee:	f002 021f 	and.w	r2, r2, #31
 8002ef2:	5961      	ldr	r1, [r4, r5]
 8002ef4:	fa03 f202 	lsl.w	r2, r3, r2
 8002ef8:	ea21 0202 	bic.w	r2, r1, r2
 8002efc:	5162      	str	r2, [r4, r5]
 8002efe:	6802      	ldr	r2, [r0, #0]
 8002f00:	4c21      	ldr	r4, [pc, #132]	; (8002f88 <EXTI_Init+0x108>)
 8002f02:	f022 061f 	bic.w	r6, r2, #31
 8002f06:	f002 021f 	and.w	r2, r2, #31
 8002f0a:	5931      	ldr	r1, [r6, r4]
 8002f0c:	fa03 f202 	lsl.w	r2, r3, r2
 8002f10:	ea21 0202 	bic.w	r2, r1, r2
 8002f14:	7941      	ldrb	r1, [r0, #5]
 8002f16:	5132      	str	r2, [r6, r4]
 8002f18:	2910      	cmp	r1, #16
 8002f1a:	6802      	ldr	r2, [r0, #0]
 8002f1c:	d112      	bne.n	8002f44 <EXTI_Init+0xc4>
 8002f1e:	f022 011f 	bic.w	r1, r2, #31
 8002f22:	f002 021f 	and.w	r2, r2, #31
 8002f26:	594e      	ldr	r6, [r1, r5]
 8002f28:	fa03 f202 	lsl.w	r2, r3, r2
 8002f2c:	4332      	orrs	r2, r6
 8002f2e:	514a      	str	r2, [r1, r5]
 8002f30:	6802      	ldr	r2, [r0, #0]
 8002f32:	f022 011f 	bic.w	r1, r2, #31
 8002f36:	f002 021f 	and.w	r2, r2, #31
 8002f3a:	5908      	ldr	r0, [r1, r4]
 8002f3c:	4093      	lsls	r3, r2
 8002f3e:	4303      	orrs	r3, r0
 8002f40:	510b      	str	r3, [r1, r4]
 8002f42:	bd70      	pop	{r4, r5, r6, pc}
 8002f44:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002f48:	f022 001f 	bic.w	r0, r2, #31
 8002f4c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002f50:	f002 021f 	and.w	r2, r2, #31
 8002f54:	580c      	ldr	r4, [r1, r0]
 8002f56:	4093      	lsls	r3, r2
 8002f58:	4323      	orrs	r3, r4
 8002f5a:	500b      	str	r3, [r1, r0]
 8002f5c:	bd70      	pop	{r4, r5, r6, pc}
 8002f5e:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002f62:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002f66:	f023 041f 	bic.w	r4, r3, #31
 8002f6a:	2001      	movs	r0, #1
 8002f6c:	5911      	ldr	r1, [r2, r4]
 8002f6e:	f003 031f 	and.w	r3, r3, #31
 8002f72:	fa00 f303 	lsl.w	r3, r0, r3
 8002f76:	ea21 0303 	bic.w	r3, r1, r3
 8002f7a:	5113      	str	r3, [r2, r4]
 8002f7c:	bd70      	pop	{r4, r5, r6, pc}
 8002f7e:	bf00      	nop
 8002f80:	40010404 	.word	0x40010404
 8002f84:	40010408 	.word	0x40010408
 8002f88:	4001040c 	.word	0x4001040c

08002f8c <EXTI_ClearITPendingBit>:
 8002f8c:	f020 011f 	bic.w	r1, r0, #31
 8002f90:	2301      	movs	r3, #1
 8002f92:	f000 001f 	and.w	r0, r0, #31
 8002f96:	4a02      	ldr	r2, [pc, #8]	; (8002fa0 <EXTI_ClearITPendingBit+0x14>)
 8002f98:	4083      	lsls	r3, r0
 8002f9a:	508b      	str	r3, [r1, r2]
 8002f9c:	4770      	bx	lr
 8002f9e:	bf00      	nop
 8002fa0:	40010414 	.word	0x40010414

08002fa4 <GPIO_Init>:
 8002fa4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002fa6:	bf00      	nop
 8002fa8:	bf00      	nop
 8002faa:	bf00      	nop
 8002fac:	bf00      	nop
 8002fae:	2300      	movs	r3, #0
 8002fb0:	680e      	ldr	r6, [r1, #0]
 8002fb2:	461c      	mov	r4, r3
 8002fb4:	2501      	movs	r5, #1
 8002fb6:	40a5      	lsls	r5, r4
 8002fb8:	ea05 0e06 	and.w	lr, r5, r6
 8002fbc:	45ae      	cmp	lr, r5
 8002fbe:	d12d      	bne.n	800301c <GPIO_Init+0x78>
 8002fc0:	790f      	ldrb	r7, [r1, #4]
 8002fc2:	1e7a      	subs	r2, r7, #1
 8002fc4:	2a01      	cmp	r2, #1
 8002fc6:	d817      	bhi.n	8002ff8 <GPIO_Init+0x54>
 8002fc8:	bf00      	nop
 8002fca:	2203      	movs	r2, #3
 8002fcc:	6885      	ldr	r5, [r0, #8]
 8002fce:	409a      	lsls	r2, r3
 8002fd0:	ea25 0202 	bic.w	r2, r5, r2
 8002fd4:	6082      	str	r2, [r0, #8]
 8002fd6:	794d      	ldrb	r5, [r1, #5]
 8002fd8:	6882      	ldr	r2, [r0, #8]
 8002fda:	409d      	lsls	r5, r3
 8002fdc:	4315      	orrs	r5, r2
 8002fde:	6085      	str	r5, [r0, #8]
 8002fe0:	bf00      	nop
 8002fe2:	8882      	ldrh	r2, [r0, #4]
 8002fe4:	b292      	uxth	r2, r2
 8002fe6:	ea22 020e 	bic.w	r2, r2, lr
 8002fea:	8082      	strh	r2, [r0, #4]
 8002fec:	798a      	ldrb	r2, [r1, #6]
 8002fee:	8885      	ldrh	r5, [r0, #4]
 8002ff0:	40a2      	lsls	r2, r4
 8002ff2:	432a      	orrs	r2, r5
 8002ff4:	b292      	uxth	r2, r2
 8002ff6:	8082      	strh	r2, [r0, #4]
 8002ff8:	2203      	movs	r2, #3
 8002ffa:	6805      	ldr	r5, [r0, #0]
 8002ffc:	409a      	lsls	r2, r3
 8002ffe:	43d2      	mvns	r2, r2
 8003000:	4015      	ands	r5, r2
 8003002:	6005      	str	r5, [r0, #0]
 8003004:	6805      	ldr	r5, [r0, #0]
 8003006:	409f      	lsls	r7, r3
 8003008:	432f      	orrs	r7, r5
 800300a:	6007      	str	r7, [r0, #0]
 800300c:	68c7      	ldr	r7, [r0, #12]
 800300e:	4017      	ands	r7, r2
 8003010:	79ca      	ldrb	r2, [r1, #7]
 8003012:	fa02 f503 	lsl.w	r5, r2, r3
 8003016:	ea47 0205 	orr.w	r2, r7, r5
 800301a:	60c2      	str	r2, [r0, #12]
 800301c:	3401      	adds	r4, #1
 800301e:	2c10      	cmp	r4, #16
 8003020:	f103 0302 	add.w	r3, r3, #2
 8003024:	d1c6      	bne.n	8002fb4 <GPIO_Init+0x10>
 8003026:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003028 <GPIO_SetBits>:
 8003028:	bf00      	nop
 800302a:	bf00      	nop
 800302c:	6181      	str	r1, [r0, #24]
 800302e:	4770      	bx	lr

08003030 <GPIO_PinAFConfig>:
 8003030:	b510      	push	{r4, lr}
 8003032:	bf00      	nop
 8003034:	bf00      	nop
 8003036:	bf00      	nop
 8003038:	f001 0307 	and.w	r3, r1, #7
 800303c:	08c9      	lsrs	r1, r1, #3
 800303e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8003042:	009b      	lsls	r3, r3, #2
 8003044:	6a04      	ldr	r4, [r0, #32]
 8003046:	210f      	movs	r1, #15
 8003048:	4099      	lsls	r1, r3
 800304a:	ea24 0101 	bic.w	r1, r4, r1
 800304e:	6201      	str	r1, [r0, #32]
 8003050:	6a01      	ldr	r1, [r0, #32]
 8003052:	409a      	lsls	r2, r3
 8003054:	430a      	orrs	r2, r1
 8003056:	6202      	str	r2, [r0, #32]
 8003058:	bd10      	pop	{r4, pc}

0800305a <Default_Handler>:
 800305a:	4668      	mov	r0, sp
 800305c:	f020 0107 	bic.w	r1, r0, #7
 8003060:	468d      	mov	sp, r1
 8003062:	b501      	push	{r0, lr}
 8003064:	bf00      	nop
 8003066:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 800306a:	4685      	mov	sp, r0
 800306c:	4770      	bx	lr

0800306e <HardFault_Handler>:
 800306e:	bf00      	nop
 8003070:	e7fd      	b.n	800306e <HardFault_Handler>
	...

08003074 <_reset_init>:
 8003074:	490e      	ldr	r1, [pc, #56]	; (80030b0 <_reset_init+0x3c>)
 8003076:	4b0f      	ldr	r3, [pc, #60]	; (80030b4 <_reset_init+0x40>)
 8003078:	1a5b      	subs	r3, r3, r1
 800307a:	109b      	asrs	r3, r3, #2
 800307c:	2200      	movs	r2, #0
 800307e:	429a      	cmp	r2, r3
 8003080:	d006      	beq.n	8003090 <_reset_init+0x1c>
 8003082:	480d      	ldr	r0, [pc, #52]	; (80030b8 <_reset_init+0x44>)
 8003084:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8003088:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 800308c:	3201      	adds	r2, #1
 800308e:	e7f6      	b.n	800307e <_reset_init+0xa>
 8003090:	4a0a      	ldr	r2, [pc, #40]	; (80030bc <_reset_init+0x48>)
 8003092:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8003096:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800309a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800309e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 80030a2:	6853      	ldr	r3, [r2, #4]
 80030a4:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 80030a8:	6053      	str	r3, [r2, #4]
 80030aa:	f7ff b9e1 	b.w	8002470 <main>
 80030ae:	bf00      	nop
 80030b0:	20000000 	.word	0x20000000
 80030b4:	20000434 	.word	0x20000434
 80030b8:	080032cc 	.word	0x080032cc
 80030bc:	e000ed00 	.word	0xe000ed00

080030c0 <SYSCFG_EXTILineConfig>:
 80030c0:	b510      	push	{r4, lr}
 80030c2:	bf00      	nop
 80030c4:	bf00      	nop
 80030c6:	f001 0303 	and.w	r3, r1, #3
 80030ca:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 80030ce:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80030d2:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 80030d6:	009b      	lsls	r3, r3, #2
 80030d8:	688c      	ldr	r4, [r1, #8]
 80030da:	220f      	movs	r2, #15
 80030dc:	409a      	lsls	r2, r3
 80030de:	ea24 0202 	bic.w	r2, r4, r2
 80030e2:	608a      	str	r2, [r1, #8]
 80030e4:	688a      	ldr	r2, [r1, #8]
 80030e6:	4098      	lsls	r0, r3
 80030e8:	4310      	orrs	r0, r2
 80030ea:	6088      	str	r0, [r1, #8]
 80030ec:	bd10      	pop	{r4, pc}
	...

080030f0 <scheduler>:
 80030f0:	b570      	push	{r4, r5, r6, lr}
 80030f2:	2200      	movs	r2, #0
 80030f4:	4611      	mov	r1, r2
 80030f6:	4b15      	ldr	r3, [pc, #84]	; (800314c <scheduler+0x5c>)
 80030f8:	200c      	movs	r0, #12
 80030fa:	fb00 f401 	mul.w	r4, r0, r1
 80030fe:	191e      	adds	r6, r3, r4
 8003100:	6875      	ldr	r5, [r6, #4]
 8003102:	f015 0f02 	tst.w	r5, #2
 8003106:	461d      	mov	r5, r3
 8003108:	d10a      	bne.n	8003120 <scheduler+0x30>
 800310a:	6876      	ldr	r6, [r6, #4]
 800310c:	07f6      	lsls	r6, r6, #31
 800310e:	d507      	bpl.n	8003120 <scheduler+0x30>
 8003110:	4350      	muls	r0, r2
 8003112:	5b1c      	ldrh	r4, [r3, r4]
 8003114:	5a18      	ldrh	r0, [r3, r0]
 8003116:	b2a4      	uxth	r4, r4
 8003118:	b280      	uxth	r0, r0
 800311a:	4284      	cmp	r4, r0
 800311c:	bf38      	it	cc
 800311e:	460a      	movcc	r2, r1
 8003120:	200c      	movs	r0, #12
 8003122:	4348      	muls	r0, r1
 8003124:	5a1c      	ldrh	r4, [r3, r0]
 8003126:	b2a4      	uxth	r4, r4
 8003128:	b11c      	cbz	r4, 8003132 <scheduler+0x42>
 800312a:	5a1c      	ldrh	r4, [r3, r0]
 800312c:	3c01      	subs	r4, #1
 800312e:	b2a4      	uxth	r4, r4
 8003130:	521c      	strh	r4, [r3, r0]
 8003132:	3101      	adds	r1, #1
 8003134:	2906      	cmp	r1, #6
 8003136:	d1de      	bne.n	80030f6 <scheduler+0x6>
 8003138:	230c      	movs	r3, #12
 800313a:	4353      	muls	r3, r2
 800313c:	18e9      	adds	r1, r5, r3
 800313e:	8849      	ldrh	r1, [r1, #2]
 8003140:	b289      	uxth	r1, r1
 8003142:	52e9      	strh	r1, [r5, r3]
 8003144:	4b02      	ldr	r3, [pc, #8]	; (8003150 <scheduler+0x60>)
 8003146:	601a      	str	r2, [r3, #0]
 8003148:	bd70      	pop	{r4, r5, r6, pc}
 800314a:	bf00      	nop
 800314c:	200013f0 	.word	0x200013f0
 8003150:	20001438 	.word	0x20001438

08003154 <SysTick_Handler>:
 8003154:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8003158:	f3ef 8308 	mrs	r3, MSP
 800315c:	4c0d      	ldr	r4, [pc, #52]	; (8003194 <SysTick_Handler+0x40>)
 800315e:	4d0e      	ldr	r5, [pc, #56]	; (8003198 <SysTick_Handler+0x44>)
 8003160:	6822      	ldr	r2, [r4, #0]
 8003162:	3201      	adds	r2, #1
 8003164:	bf1d      	ittte	ne
 8003166:	6822      	ldrne	r2, [r4, #0]
 8003168:	210c      	movne	r1, #12
 800316a:	fb01 5202 	mlane	r2, r1, r2, r5
 800316e:	2300      	moveq	r3, #0
 8003170:	bf14      	ite	ne
 8003172:	6093      	strne	r3, [r2, #8]
 8003174:	6023      	streq	r3, [r4, #0]
 8003176:	f7ff ffbb 	bl	80030f0 <scheduler>
 800317a:	6822      	ldr	r2, [r4, #0]
 800317c:	230c      	movs	r3, #12
 800317e:	fb03 5302 	mla	r3, r3, r2, r5
 8003182:	689a      	ldr	r2, [r3, #8]
 8003184:	f06f 0306 	mvn.w	r3, #6
 8003188:	469e      	mov	lr, r3
 800318a:	f382 8808 	msr	MSP, r2
 800318e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8003192:	4770      	bx	lr
 8003194:	20001438 	.word	0x20001438
 8003198:	200013f0 	.word	0x200013f0

0800319c <__aeabi_d2f>:
 800319c:	ea4f 0241 	mov.w	r2, r1, lsl #1
 80031a0:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 80031a4:	bf24      	itt	cs
 80031a6:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 80031aa:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 80031ae:	d90d      	bls.n	80031cc <__aeabi_d2f+0x30>
 80031b0:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 80031b4:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 80031b8:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 80031bc:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 80031c0:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 80031c4:	bf08      	it	eq
 80031c6:	f020 0001 	biceq.w	r0, r0, #1
 80031ca:	4770      	bx	lr
 80031cc:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 80031d0:	d121      	bne.n	8003216 <__aeabi_d2f+0x7a>
 80031d2:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 80031d6:	bfbc      	itt	lt
 80031d8:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 80031dc:	4770      	bxlt	lr
 80031de:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 80031e2:	ea4f 5252 	mov.w	r2, r2, lsr #21
 80031e6:	f1c2 0218 	rsb	r2, r2, #24
 80031ea:	f1c2 0c20 	rsb	ip, r2, #32
 80031ee:	fa10 f30c 	lsls.w	r3, r0, ip
 80031f2:	fa20 f002 	lsr.w	r0, r0, r2
 80031f6:	bf18      	it	ne
 80031f8:	f040 0001 	orrne.w	r0, r0, #1
 80031fc:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8003200:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8003204:	fa03 fc0c 	lsl.w	ip, r3, ip
 8003208:	ea40 000c 	orr.w	r0, r0, ip
 800320c:	fa23 f302 	lsr.w	r3, r3, r2
 8003210:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8003214:	e7cc      	b.n	80031b0 <__aeabi_d2f+0x14>
 8003216:	ea7f 5362 	mvns.w	r3, r2, asr #21
 800321a:	d107      	bne.n	800322c <__aeabi_d2f+0x90>
 800321c:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8003220:	bf1e      	ittt	ne
 8003222:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8003226:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 800322a:	4770      	bxne	lr
 800322c:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8003230:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8003234:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8003238:	4770      	bx	lr
 800323a:	bf00      	nop

0800323c <_init>:
 800323c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800323e:	bf00      	nop
 8003240:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8003242:	bc08      	pop	{r3}
 8003244:	469e      	mov	lr, r3
 8003246:	4770      	bx	lr

08003248 <_fini>:
 8003248:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800324a:	bf00      	nop
 800324c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800324e:	bc08      	pop	{r3}
 8003250:	469e      	mov	lr, r3
 8003252:	4770      	bx	lr
 8003254:	61646f6b 	.word	0x61646f6b
 8003258:	6920616d 	.word	0x6920616d
 800325c:	2074696e 	.word	0x2074696e
 8003260:	25206925 	.word	0x25206925
 8003264:	203a2069 	.word	0x203a2069
 8003268:	4f5b2000 	.word	0x4f5b2000
 800326c:	000a5d4b 	.word	0x000a5d4b
 8003270:	41465b20 	.word	0x41465b20
 8003274:	44454c49 	.word	0x44454c49
 8003278:	000a0a5d 	.word	0x000a0a5d

0800327c <_ZL21ssd1306_init_sequence>:
 800327c:	b00020ae 401000c8 a6a13f81 d3a43fa8     . .....@.?...?..
 800328c:	d9f0d500 db12da22 af148d20 74737973     ...."... ...syst
 800329c:	74206d65 20656d69 5b207525 0a5d736d     em time %u [ms].
 80032ac:	20692500 0a206925 73797300 206d6574     .%i %i ..system 
 80032bc:	656c6469 0a752520 00000000              idle %u.....

080032c8 <__EH_FRAME_BEGIN__>:
 80032c8:	00000000                                ....
