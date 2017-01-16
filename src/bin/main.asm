
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b570      	push	{r4, r5, r6, lr}
 800018a:	4605      	mov	r5, r0
 800018c:	f001 f9bc 	bl	8001508 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd70      	pop	{r4, r5, r6, pc}
 800019c:	f205 5674 	addw	r6, r5, #1396	; 0x574
 80001a0:	4630      	mov	r0, r6
 80001a2:	f001 f8c9 	bl	8001338 <_ZN4CI2C4initEv>
 80001a6:	4628      	mov	r0, r5
 80001a8:	f001 fa4a 	bl	8001640 <_ZN9CTerminal13terminal_initEv>
 80001ac:	2800      	cmp	r0, #0
 80001ae:	da03      	bge.n	80001b8 <_ZN7CKodama5init_Ev+0x30>
 80001b0:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001b4:	3820      	subs	r0, #32
 80001b6:	bd70      	pop	{r4, r5, r6, pc}
 80001b8:	481c      	ldr	r0, [pc, #112]	; (800022c <_ZN7CKodama5init_Ev+0xa4>)
 80001ba:	f000 fc47 	bl	8000a4c <_ZN6CTimer10timer_initEv>
 80001be:	2800      	cmp	r0, #0
 80001c0:	da03      	bge.n	80001ca <_ZN7CKodama5init_Ev+0x42>
 80001c2:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001c6:	3830      	subs	r0, #48	; 0x30
 80001c8:	bd70      	pop	{r4, r5, r6, pc}
 80001ca:	4628      	mov	r0, r5
 80001cc:	f000 ff00 	bl	8000fd0 <_ZN6CMotor10motor_initEv>
 80001d0:	2800      	cmp	r0, #0
 80001d2:	da03      	bge.n	80001dc <_ZN7CKodama5init_Ev+0x54>
 80001d4:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001d8:	3840      	subs	r0, #64	; 0x40
 80001da:	bd70      	pop	{r4, r5, r6, pc}
 80001dc:	f105 000c 	add.w	r0, r5, #12
 80001e0:	f000 fdd6 	bl	8000d90 <_ZN4CRGB8rgb_initEv>
 80001e4:	2800      	cmp	r0, #0
 80001e6:	da03      	bge.n	80001f0 <_ZN7CKodama5init_Ev+0x68>
 80001e8:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001ec:	3850      	subs	r0, #80	; 0x50
 80001ee:	bd70      	pop	{r4, r5, r6, pc}
 80001f0:	f105 0090 	add.w	r0, r5, #144	; 0x90
 80001f4:	4631      	mov	r1, r6
 80001f6:	f000 fb1d 	bl	8000834 <_ZN4CIMU8imu_initEP4CI2C>
 80001fa:	2800      	cmp	r0, #0
 80001fc:	da03      	bge.n	8000206 <_ZN7CKodama5init_Ev+0x7e>
 80001fe:	f5a0 406a 	sub.w	r0, r0, #59904	; 0xea00
 8000202:	3860      	subs	r0, #96	; 0x60
 8000204:	bd70      	pop	{r4, r5, r6, pc}
 8000206:	f105 00d4 	add.w	r0, r5, #212	; 0xd4
 800020a:	4631      	mov	r1, r6
 800020c:	f000 fa28 	bl	8000660 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C>
 8000210:	1e04      	subs	r4, r0, #0
 8000212:	da04      	bge.n	800021e <_ZN7CKodama5init_Ev+0x96>
 8000214:	f5a4 3088 	sub.w	r0, r4, #69632	; 0x11000
 8000218:	f5a0 70b8 	sub.w	r0, r0, #368	; 0x170
 800021c:	bd70      	pop	{r4, r5, r6, pc}
 800021e:	f505 609b 	add.w	r0, r5, #1240	; 0x4d8
 8000222:	4631      	mov	r1, r6
 8000224:	f000 f89b 	bl	800035e <_ZN9CMLX906217ir_initEP4CI2C>
 8000228:	4620      	mov	r0, r4
 800022a:	bd70      	pop	{r4, r5, r6, pc}
 800022c:	20000ff4 	.word	0x20000ff4

08000230 <_ZN7CKodama4initEv>:
 8000230:	b570      	push	{r4, r5, r6, lr}
 8000232:	4605      	mov	r5, r0
 8000234:	2400      	movs	r4, #0
 8000236:	4628      	mov	r0, r5
 8000238:	f7ff ffa6 	bl	8000188 <_ZN7CKodama5init_Ev>
 800023c:	4606      	mov	r6, r0
 800023e:	490a      	ldr	r1, [pc, #40]	; (8000268 <_ZN7CKodama4initEv+0x38>)
 8000240:	4628      	mov	r0, r5
 8000242:	4622      	mov	r2, r4
 8000244:	4633      	mov	r3, r6
 8000246:	f001 fb26 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 800024a:	4628      	mov	r0, r5
 800024c:	b91e      	cbnz	r6, 8000256 <_ZN7CKodama4initEv+0x26>
 800024e:	4907      	ldr	r1, [pc, #28]	; (800026c <_ZN7CKodama4initEv+0x3c>)
 8000250:	f001 fb21 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 8000254:	e005      	b.n	8000262 <_ZN7CKodama4initEv+0x32>
 8000256:	4906      	ldr	r1, [pc, #24]	; (8000270 <_ZN7CKodama4initEv+0x40>)
 8000258:	3401      	adds	r4, #1
 800025a:	f001 fb1c 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 800025e:	2c08      	cmp	r4, #8
 8000260:	d1e9      	bne.n	8000236 <_ZN7CKodama4initEv+0x6>
 8000262:	4630      	mov	r0, r6
 8000264:	bd70      	pop	{r4, r5, r6, pc}
 8000266:	bf00      	nop
 8000268:	08002f90 	.word	0x08002f90
 800026c:	08002fa5 	.word	0x08002fa5
 8000270:	08002fac 	.word	0x08002fac

08000274 <_ZN7CKodama5sleepEv>:
 8000274:	b510      	push	{r4, lr}
 8000276:	2108      	movs	r1, #8
 8000278:	4604      	mov	r4, r0
 800027a:	f001 f9a5 	bl	80015c8 <_ZN5CGPIO8gpio_offEm>
 800027e:	4620      	mov	r0, r4
 8000280:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000284:	f000 be0c 	b.w	8000ea0 <_ZN6CMotor11motor_sleepEv>

08000288 <_ZN7CKodama6wakeupEv>:
 8000288:	b510      	push	{r4, lr}
 800028a:	2108      	movs	r1, #8
 800028c:	4604      	mov	r4, r0
 800028e:	f001 f98d 	bl	80015ac <_ZN5CGPIO7gpio_onEm>
 8000292:	2100      	movs	r1, #0
 8000294:	4620      	mov	r0, r4
 8000296:	460a      	mov	r2, r1
 8000298:	f000 fe94 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 800029c:	4620      	mov	r0, r4
 800029e:	2101      	movs	r1, #1
 80002a0:	2200      	movs	r2, #0
 80002a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80002a6:	f000 be8d 	b.w	8000fc4 <_ZN6CMotor9set_motorEml>

080002aa <_ZN7CKodama6set_dtEl>:
 80002aa:	f8c0 1568 	str.w	r1, [r0, #1384]	; 0x568
 80002ae:	4770      	bx	lr

080002b0 <_ZN4CPID4initEffff>:
 80002b0:	eef0 7a00 	vmov.f32	s15, #0	; 0x40000000  2.0
 80002b4:	ee70 0a20 	vadd.f32	s1, s0, s1
 80002b8:	ee91 0a67 	vfnma.f32	s0, s2, s15
 80002bc:	2300      	movs	r3, #0
 80002be:	6003      	str	r3, [r0, #0]
 80002c0:	ee70 0a81 	vadd.f32	s1, s1, s2
 80002c4:	6043      	str	r3, [r0, #4]
 80002c6:	6083      	str	r3, [r0, #8]
 80002c8:	edc0 0a03 	vstr	s1, [r0, #12]
 80002cc:	ed80 0a04 	vstr	s0, [r0, #16]
 80002d0:	ed80 1a05 	vstr	s2, [r0, #20]
 80002d4:	6183      	str	r3, [r0, #24]
 80002d6:	edc0 1a07 	vstr	s3, [r0, #28]
 80002da:	4770      	bx	lr

080002dc <_ZN4CPIDC1Effff>:
 80002dc:	b510      	push	{r4, lr}
 80002de:	4604      	mov	r4, r0
 80002e0:	f7ff ffe6 	bl	80002b0 <_ZN4CPID4initEffff>
 80002e4:	4620      	mov	r0, r4
 80002e6:	bd10      	pop	{r4, pc}

080002e8 <_ZN4CPID7processEf>:
 80002e8:	edd0 7a00 	vldr	s15, [r0]
 80002ec:	edd0 6a04 	vldr	s13, [r0, #16]
 80002f0:	ed90 7a01 	vldr	s14, [r0, #4]
 80002f4:	edc0 7a01 	vstr	s15, [r0, #4]
 80002f8:	ee67 7aa6 	vmul.f32	s15, s15, s13
 80002fc:	edd0 6a03 	vldr	s13, [r0, #12]
 8000300:	ed80 7a02 	vstr	s14, [r0, #8]
 8000304:	eee6 7a80 	vfma.f32	s15, s13, s0
 8000308:	edd0 6a05 	vldr	s13, [r0, #20]
 800030c:	ed80 0a00 	vstr	s0, [r0]
 8000310:	eee6 7a87 	vfma.f32	s15, s13, s14
 8000314:	ed90 7a06 	vldr	s14, [r0, #24]
 8000318:	ee77 7a87 	vadd.f32	s15, s15, s14
 800031c:	ed90 7a07 	vldr	s14, [r0, #28]
 8000320:	edc0 7a06 	vstr	s15, [r0, #24]
 8000324:	eef4 7ac7 	vcmpe.f32	s15, s14
 8000328:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800032c:	bfc8      	it	gt
 800032e:	ed80 7a06 	vstrgt	s14, [r0, #24]
 8000332:	edd0 7a06 	vldr	s15, [r0, #24]
 8000336:	eeb1 7a47 	vneg.f32	s14, s14
 800033a:	eef4 7ac7 	vcmpe.f32	s15, s14
 800033e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000342:	bf48      	it	mi
 8000344:	ed80 7a06 	vstrmi	s14, [r0, #24]
 8000348:	ed90 0a06 	vldr	s0, [r0, #24]
 800034c:	4770      	bx	lr

0800034e <_ZN5CMath3absEf>:
 800034e:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8000352:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8000356:	bf48      	it	mi
 8000358:	eeb1 0a40 	vnegmi.f32	s0, s0
 800035c:	4770      	bx	lr

0800035e <_ZN9CMLX906217ir_initEP4CI2C>:
 800035e:	2300      	movs	r3, #0
 8000360:	b570      	push	{r4, r5, r6, lr}
 8000362:	4602      	mov	r2, r0
 8000364:	4604      	mov	r4, r0
 8000366:	6001      	str	r1, [r0, #0]
 8000368:	f8a0 3084 	strh.w	r3, [r0, #132]	; 0x84
 800036c:	f8a0 3086 	strh.w	r3, [r0, #134]	; 0x86
 8000370:	f8a0 3088 	strh.w	r3, [r0, #136]	; 0x88
 8000374:	f8a0 308a 	strh.w	r3, [r0, #138]	; 0x8a
 8000378:	f8a0 308c 	strh.w	r3, [r0, #140]	; 0x8c
 800037c:	3080      	adds	r0, #128	; 0x80
 800037e:	2300      	movs	r3, #0
 8000380:	18d6      	adds	r6, r2, r3
 8000382:	3302      	adds	r3, #2
 8000384:	2500      	movs	r5, #0
 8000386:	2b20      	cmp	r3, #32
 8000388:	80b5      	strh	r5, [r6, #4]
 800038a:	d1f9      	bne.n	8000380 <_ZN9CMLX906217ir_initEP4CI2C+0x22>
 800038c:	3220      	adds	r2, #32
 800038e:	4282      	cmp	r2, r0
 8000390:	d1f5      	bne.n	800037e <_ZN9CMLX906217ir_initEP4CI2C+0x20>
 8000392:	4608      	mov	r0, r1
 8000394:	f000 fff6 	bl	8001384 <_ZN4CI2C5StartEv>
 8000398:	6820      	ldr	r0, [r4, #0]
 800039a:	21c0      	movs	r1, #192	; 0xc0
 800039c:	f001 f81c 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003a0:	6820      	ldr	r0, [r4, #0]
 80003a2:	2103      	movs	r1, #3
 80003a4:	f001 f818 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003a8:	6820      	ldr	r0, [r4, #0]
 80003aa:	21e4      	movs	r1, #228	; 0xe4
 80003ac:	f001 f814 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003b0:	6820      	ldr	r0, [r4, #0]
 80003b2:	2139      	movs	r1, #57	; 0x39
 80003b4:	f001 f810 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003b8:	6820      	ldr	r0, [r4, #0]
 80003ba:	21f1      	movs	r1, #241	; 0xf1
 80003bc:	f001 f80c 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003c0:	2146      	movs	r1, #70	; 0x46
 80003c2:	6820      	ldr	r0, [r4, #0]
 80003c4:	f001 f808 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003c8:	6820      	ldr	r0, [r4, #0]
 80003ca:	f000 fff0 	bl	80013ae <_ZN4CI2C4StopEv>
 80003ce:	4628      	mov	r0, r5
 80003d0:	bd70      	pop	{r4, r5, r6, pc}
	...

080003d4 <_ZN9CMLX9062110ir_refreshEv>:
 80003d4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80003d8:	4604      	mov	r4, r0
 80003da:	6800      	ldr	r0, [r0, #0]
 80003dc:	f000 ffd2 	bl	8001384 <_ZN4CI2C5StartEv>
 80003e0:	21c0      	movs	r1, #192	; 0xc0
 80003e2:	6820      	ldr	r0, [r4, #0]
 80003e4:	f000 fff8 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003e8:	2102      	movs	r1, #2
 80003ea:	6820      	ldr	r0, [r4, #0]
 80003ec:	f000 fff4 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003f0:	2100      	movs	r1, #0
 80003f2:	6820      	ldr	r0, [r4, #0]
 80003f4:	f000 fff0 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80003f8:	2101      	movs	r1, #1
 80003fa:	6820      	ldr	r0, [r4, #0]
 80003fc:	f000 ffec 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000400:	2140      	movs	r1, #64	; 0x40
 8000402:	6820      	ldr	r0, [r4, #0]
 8000404:	f000 ffe8 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000408:	6820      	ldr	r0, [r4, #0]
 800040a:	f000 ffbb 	bl	8001384 <_ZN4CI2C5StartEv>
 800040e:	6820      	ldr	r0, [r4, #0]
 8000410:	21c1      	movs	r1, #193	; 0xc1
 8000412:	f000 ffe1 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000416:	f648 23d0 	movw	r3, #35536	; 0x8ad0
 800041a:	f8a4 3084 	strh.w	r3, [r4, #132]	; 0x84
 800041e:	2500      	movs	r5, #0
 8000420:	f247 5330 	movw	r3, #30000	; 0x7530
 8000424:	f8a4 3086 	strh.w	r3, [r4, #134]	; 0x86
 8000428:	f8a4 5088 	strh.w	r5, [r4, #136]	; 0x88
 800042c:	46a0      	mov	r8, r4
 800042e:	f104 0920 	add.w	r9, r4, #32
 8000432:	2700      	movs	r7, #0
 8000434:	2101      	movs	r1, #1
 8000436:	6820      	ldr	r0, [r4, #0]
 8000438:	f001 f818 	bl	800146c <_ZN4CI2C4ReadEh>
 800043c:	2101      	movs	r1, #1
 800043e:	4606      	mov	r6, r0
 8000440:	6820      	ldr	r0, [r4, #0]
 8000442:	f001 f813 	bl	800146c <_ZN4CI2C4ReadEh>
 8000446:	eb08 0307 	add.w	r3, r8, r7
 800044a:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800044e:	b280      	uxth	r0, r0
 8000450:	f8a3 0064 	strh.w	r0, [r3, #100]	; 0x64
 8000454:	f9b4 2084 	ldrsh.w	r2, [r4, #132]	; 0x84
 8000458:	b203      	sxth	r3, r0
 800045a:	429a      	cmp	r2, r3
 800045c:	f9b4 2086 	ldrsh.w	r2, [r4, #134]	; 0x86
 8000460:	bfb8      	it	lt
 8000462:	f8a4 0084 	strhlt.w	r0, [r4, #132]	; 0x84
 8000466:	3f20      	subs	r7, #32
 8000468:	429a      	cmp	r2, r3
 800046a:	bfc8      	it	gt
 800046c:	f8a4 0086 	strhgt.w	r0, [r4, #134]	; 0x86
 8000470:	f117 0f80 	cmn.w	r7, #128	; 0x80
 8000474:	441d      	add	r5, r3
 8000476:	d1dd      	bne.n	8000434 <_ZN9CMLX9062110ir_refreshEv+0x60>
 8000478:	f108 0802 	add.w	r8, r8, #2
 800047c:	45c8      	cmp	r8, r9
 800047e:	d1d8      	bne.n	8000432 <_ZN9CMLX9062110ir_refreshEv+0x5e>
 8000480:	09ad      	lsrs	r5, r5, #6
 8000482:	6820      	ldr	r0, [r4, #0]
 8000484:	f8a4 5088 	strh.w	r5, [r4, #136]	; 0x88
 8000488:	f000 ff91 	bl	80013ae <_ZN4CI2C4StopEv>
 800048c:	f9b4 0084 	ldrsh.w	r0, [r4, #132]	; 0x84
 8000490:	f9b4 3086 	ldrsh.w	r3, [r4, #134]	; 0x86
 8000494:	4298      	cmp	r0, r3
 8000496:	dd37      	ble.n	8000508 <_ZN9CMLX9062110ir_refreshEv+0x134>
 8000498:	4a1c      	ldr	r2, [pc, #112]	; (800050c <_ZN9CMLX9062110ir_refreshEv+0x138>)
 800049a:	1ac0      	subs	r0, r0, r3
 800049c:	f104 0682 	add.w	r6, r4, #130	; 0x82
 80004a0:	fb92 f0f0 	sdiv	r0, r2, r0
 80004a4:	1ca2      	adds	r2, r4, #2
 80004a6:	fb03 f100 	mul.w	r1, r3, r0
 80004aa:	f102 0520 	add.w	r5, r2, #32
 80004ae:	f932 3f02 	ldrsh.w	r3, [r2, #2]!
 80004b2:	4343      	muls	r3, r0
 80004b4:	42aa      	cmp	r2, r5
 80004b6:	eba3 0301 	sub.w	r3, r3, r1
 80004ba:	f44f 777a 	mov.w	r7, #1000	; 0x3e8
 80004be:	fb93 f3f7 	sdiv	r3, r3, r7
 80004c2:	8013      	strh	r3, [r2, #0]
 80004c4:	d1f3      	bne.n	80004ae <_ZN9CMLX9062110ir_refreshEv+0xda>
 80004c6:	42b2      	cmp	r2, r6
 80004c8:	d1ef      	bne.n	80004aa <_ZN9CMLX9062110ir_refreshEv+0xd6>
 80004ca:	2300      	movs	r3, #0
 80004cc:	461a      	mov	r2, r3
 80004ce:	4619      	mov	r1, r3
 80004d0:	461d      	mov	r5, r3
 80004d2:	00df      	lsls	r7, r3, #3
 80004d4:	2000      	movs	r0, #0
 80004d6:	18c6      	adds	r6, r0, r3
 80004d8:	4426      	add	r6, r4
 80004da:	ea4f 1e40 	mov.w	lr, r0, lsl #5
 80004de:	f9b6 6004 	ldrsh.w	r6, [r6, #4]
 80004e2:	3002      	adds	r0, #2
 80004e4:	2820      	cmp	r0, #32
 80004e6:	4435      	add	r5, r6
 80004e8:	fb0e 1106 	mla	r1, lr, r6, r1
 80004ec:	fb07 2206 	mla	r2, r7, r6, r2
 80004f0:	d1f1      	bne.n	80004d6 <_ZN9CMLX9062110ir_refreshEv+0x102>
 80004f2:	3320      	adds	r3, #32
 80004f4:	2b80      	cmp	r3, #128	; 0x80
 80004f6:	d1ec      	bne.n	80004d2 <_ZN9CMLX9062110ir_refreshEv+0xfe>
 80004f8:	fb91 f1f5 	sdiv	r1, r1, r5
 80004fc:	fb92 f2f5 	sdiv	r2, r2, r5
 8000500:	f8a4 108a 	strh.w	r1, [r4, #138]	; 0x8a
 8000504:	f8a4 208c 	strh.w	r2, [r4, #140]	; 0x8c
 8000508:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800050c:	0003e418 	.word	0x0003e418

08000510 <_ZN12CSSD1306OLED14oled_lcd_clearEv>:
 8000510:	b510      	push	{r4, lr}
 8000512:	f500 6280 	add.w	r2, r0, #1024	; 0x400
 8000516:	2300      	movs	r3, #0
 8000518:	18c1      	adds	r1, r0, r3
 800051a:	3301      	adds	r3, #1
 800051c:	2400      	movs	r4, #0
 800051e:	2b80      	cmp	r3, #128	; 0x80
 8000520:	710c      	strb	r4, [r1, #4]
 8000522:	d1f9      	bne.n	8000518 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x8>
 8000524:	3080      	adds	r0, #128	; 0x80
 8000526:	4290      	cmp	r0, r2
 8000528:	d1f5      	bne.n	8000516 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x6>
 800052a:	bd10      	pop	{r4, pc}

0800052c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>:
 800052c:	2980      	cmp	r1, #128	; 0x80
 800052e:	b570      	push	{r4, r5, r6, lr}
 8000530:	d814      	bhi.n	800055c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x30>
 8000532:	2a40      	cmp	r2, #64	; 0x40
 8000534:	d812      	bhi.n	800055c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x30>
 8000536:	08d6      	lsrs	r6, r2, #3
 8000538:	01f6      	lsls	r6, r6, #7
 800053a:	1874      	adds	r4, r6, r1
 800053c:	4404      	add	r4, r0
 800053e:	f002 0207 	and.w	r2, r2, #7
 8000542:	2501      	movs	r5, #1
 8000544:	7924      	ldrb	r4, [r4, #4]
 8000546:	4095      	lsls	r5, r2
 8000548:	b11b      	cbz	r3, 8000552 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x26>
 800054a:	ea45 0304 	orr.w	r3, r5, r4
 800054e:	b2db      	uxtb	r3, r3
 8000550:	e001      	b.n	8000556 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x2a>
 8000552:	ea24 0305 	bic.w	r3, r4, r5
 8000556:	4431      	add	r1, r6
 8000558:	4408      	add	r0, r1
 800055a:	7103      	strb	r3, [r0, #4]
 800055c:	bd70      	pop	{r4, r5, r6, pc}
	...

08000560 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh>:
 8000560:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000564:	9d08      	ldr	r5, [sp, #32]
 8000566:	f89d 4024 	ldrb.w	r4, [sp, #36]	; 0x24
 800056a:	435d      	muls	r5, r3
 800056c:	4680      	mov	r8, r0
 800056e:	4689      	mov	r9, r1
 8000570:	4692      	mov	sl, r2
 8000572:	2600      	movs	r6, #0
 8000574:	461f      	mov	r7, r3
 8000576:	fb04 f305 	mul.w	r3, r4, r5
 800057a:	24ff      	movs	r4, #255	; 0xff
 800057c:	fbb3 f4f4 	udiv	r4, r3, r4
 8000580:	42ae      	cmp	r6, r5
 8000582:	d018      	beq.n	80005b6 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x56>
 8000584:	b1ac      	cbz	r4, 80005b2 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x52>
 8000586:	4a0d      	ldr	r2, [pc, #52]	; (80005bc <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x5c>)
 8000588:	6813      	ldr	r3, [r2, #0]
 800058a:	f503 33cc 	add.w	r3, r3, #104448	; 0x19800
 800058e:	f203 1319 	addw	r3, r3, #281	; 0x119
 8000592:	6013      	str	r3, [r2, #0]
 8000594:	fbb3 f1f5 	udiv	r1, r3, r5
 8000598:	fb05 3311 	mls	r3, r5, r1, r3
 800059c:	fbb3 f2f7 	udiv	r2, r3, r7
 80005a0:	fb07 3112 	mls	r1, r7, r2, r3
 80005a4:	4640      	mov	r0, r8
 80005a6:	4449      	add	r1, r9
 80005a8:	4452      	add	r2, sl
 80005aa:	2301      	movs	r3, #1
 80005ac:	f7ff ffbe 	bl	800052c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 80005b0:	3c01      	subs	r4, #1
 80005b2:	3601      	adds	r6, #1
 80005b4:	e7e4      	b.n	8000580 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x20>
 80005b6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80005ba:	bf00      	nop
 80005bc:	20000db0 	.word	0x20000db0

080005c0 <_ZN12CSSD1306OLED6setposEhh>:
 80005c0:	b570      	push	{r4, r5, r6, lr}
 80005c2:	4604      	mov	r4, r0
 80005c4:	6800      	ldr	r0, [r0, #0]
 80005c6:	4615      	mov	r5, r2
 80005c8:	460e      	mov	r6, r1
 80005ca:	f000 fedb 	bl	8001384 <_ZN4CI2C5StartEv>
 80005ce:	6820      	ldr	r0, [r4, #0]
 80005d0:	2178      	movs	r1, #120	; 0x78
 80005d2:	f000 ff01 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80005d6:	6820      	ldr	r0, [r4, #0]
 80005d8:	2100      	movs	r1, #0
 80005da:	f000 fefd 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80005de:	f105 010b 	add.w	r1, r5, #11
 80005e2:	6820      	ldr	r0, [r4, #0]
 80005e4:	b2c9      	uxtb	r1, r1
 80005e6:	f000 fef7 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80005ea:	0931      	lsrs	r1, r6, #4
 80005ec:	6820      	ldr	r0, [r4, #0]
 80005ee:	f041 0110 	orr.w	r1, r1, #16
 80005f2:	f000 fef1 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80005f6:	6820      	ldr	r0, [r4, #0]
 80005f8:	f006 010f 	and.w	r1, r6, #15
 80005fc:	f000 feec 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000600:	6820      	ldr	r0, [r4, #0]
 8000602:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000606:	f000 bed2 	b.w	80013ae <_ZN4CI2C4StopEv>

0800060a <_ZN12CSSD1306OLED16oled_lcd_refreshEv>:
 800060a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800060c:	4604      	mov	r4, r0
 800060e:	2500      	movs	r5, #0
 8000610:	b2ea      	uxtb	r2, r5
 8000612:	2100      	movs	r1, #0
 8000614:	4620      	mov	r0, r4
 8000616:	f7ff ffd3 	bl	80005c0 <_ZN12CSSD1306OLED6setposEhh>
 800061a:	6820      	ldr	r0, [r4, #0]
 800061c:	f000 feb2 	bl	8001384 <_ZN4CI2C5StartEv>
 8000620:	2178      	movs	r1, #120	; 0x78
 8000622:	6820      	ldr	r0, [r4, #0]
 8000624:	f000 fed8 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000628:	6820      	ldr	r0, [r4, #0]
 800062a:	2140      	movs	r1, #64	; 0x40
 800062c:	f000 fed4 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000630:	01ef      	lsls	r7, r5, #7
 8000632:	2600      	movs	r6, #0
 8000634:	19f3      	adds	r3, r6, r7
 8000636:	4423      	add	r3, r4
 8000638:	6820      	ldr	r0, [r4, #0]
 800063a:	7919      	ldrb	r1, [r3, #4]
 800063c:	3601      	adds	r6, #1
 800063e:	f000 fecb 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000642:	2e80      	cmp	r6, #128	; 0x80
 8000644:	d1f6      	bne.n	8000634 <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x2a>
 8000646:	6820      	ldr	r0, [r4, #0]
 8000648:	3501      	adds	r5, #1
 800064a:	f000 feb0 	bl	80013ae <_ZN4CI2C4StopEv>
 800064e:	2d08      	cmp	r5, #8
 8000650:	d1de      	bne.n	8000610 <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x6>
 8000652:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

08000654 <_ZN12CSSD1306OLED12send_commandEh>:
 8000654:	460b      	mov	r3, r1
 8000656:	6800      	ldr	r0, [r0, #0]
 8000658:	2178      	movs	r1, #120	; 0x78
 800065a:	2200      	movs	r2, #0
 800065c:	f000 beee 	b.w	800143c <_ZN4CI2C9write_regEhhh>

08000660 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C>:
 8000660:	b538      	push	{r3, r4, r5, lr}
 8000662:	4604      	mov	r4, r0
 8000664:	6001      	str	r1, [r0, #0]
 8000666:	b181      	cbz	r1, 800068a <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0x2a>
 8000668:	2500      	movs	r5, #0
 800066a:	4b09      	ldr	r3, [pc, #36]	; (8000690 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0x30>)
 800066c:	4620      	mov	r0, r4
 800066e:	5d59      	ldrb	r1, [r3, r5]
 8000670:	3501      	adds	r5, #1
 8000672:	f7ff ffef 	bl	8000654 <_ZN12CSSD1306OLED12send_commandEh>
 8000676:	2d1c      	cmp	r5, #28
 8000678:	d1f7      	bne.n	800066a <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0xa>
 800067a:	4620      	mov	r0, r4
 800067c:	f7ff ff48 	bl	8000510 <_ZN12CSSD1306OLED14oled_lcd_clearEv>
 8000680:	4620      	mov	r0, r4
 8000682:	f7ff ffc2 	bl	800060a <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 8000686:	2000      	movs	r0, #0
 8000688:	bd38      	pop	{r3, r4, r5, pc}
 800068a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800068e:	bd38      	pop	{r3, r4, r5, pc}
 8000690:	08002fb8 	.word	0x08002fb8

08000694 <_ZN12CSSD1306OLED17bitmap_decompressEPhjj>:
 8000694:	011b      	lsls	r3, r3, #4
 8000696:	eb03 03d2 	add.w	r3, r3, r2, lsr #3
 800069a:	f002 0207 	and.w	r2, r2, #7
 800069e:	5cc8      	ldrb	r0, [r1, r3]
 80006a0:	4110      	asrs	r0, r2
 80006a2:	f000 0001 	and.w	r0, r0, #1
 80006a6:	4770      	bx	lr

080006a8 <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPhj>:
 80006a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80006ac:	4606      	mov	r6, r0
 80006ae:	460f      	mov	r7, r1
 80006b0:	4690      	mov	r8, r2
 80006b2:	2500      	movs	r5, #0
 80006b4:	2400      	movs	r4, #0
 80006b6:	eb04 0208 	add.w	r2, r4, r8
 80006ba:	4639      	mov	r1, r7
 80006bc:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 80006c0:	462b      	mov	r3, r5
 80006c2:	4630      	mov	r0, r6
 80006c4:	f7ff ffe6 	bl	8000694 <_ZN12CSSD1306OLED17bitmap_decompressEPhjj>
 80006c8:	4621      	mov	r1, r4
 80006ca:	b2c3      	uxtb	r3, r0
 80006cc:	462a      	mov	r2, r5
 80006ce:	4630      	mov	r0, r6
 80006d0:	3401      	adds	r4, #1
 80006d2:	f7ff ff2b 	bl	800052c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 80006d6:	2c80      	cmp	r4, #128	; 0x80
 80006d8:	d1ed      	bne.n	80006b6 <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPhj+0xe>
 80006da:	3501      	adds	r5, #1
 80006dc:	2d40      	cmp	r5, #64	; 0x40
 80006de:	d1e9      	bne.n	80006b4 <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPhj+0xc>
 80006e0:	4630      	mov	r0, r6
 80006e2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80006e6:	f7ff bf90 	b.w	800060a <_ZN12CSSD1306OLED16oled_lcd_refreshEv>

080006ea <_ZN4CIMU8imu_readEv>:
 80006ea:	b570      	push	{r4, r5, r6, lr}
 80006ec:	4604      	mov	r4, r0
 80006ee:	6800      	ldr	r0, [r0, #0]
 80006f0:	f000 fe48 	bl	8001384 <_ZN4CI2C5StartEv>
 80006f4:	21d4      	movs	r1, #212	; 0xd4
 80006f6:	6820      	ldr	r0, [r4, #0]
 80006f8:	f000 fe6e 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80006fc:	21a8      	movs	r1, #168	; 0xa8
 80006fe:	6820      	ldr	r0, [r4, #0]
 8000700:	f000 fe6a 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000704:	6820      	ldr	r0, [r4, #0]
 8000706:	f000 fe3d 	bl	8001384 <_ZN4CI2C5StartEv>
 800070a:	21d5      	movs	r1, #213	; 0xd5
 800070c:	6820      	ldr	r0, [r4, #0]
 800070e:	f000 fe63 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000712:	2101      	movs	r1, #1
 8000714:	6820      	ldr	r0, [r4, #0]
 8000716:	f000 fea9 	bl	800146c <_ZN4CI2C4ReadEh>
 800071a:	2101      	movs	r1, #1
 800071c:	b285      	uxth	r5, r0
 800071e:	6820      	ldr	r0, [r4, #0]
 8000720:	f000 fea4 	bl	800146c <_ZN4CI2C4ReadEh>
 8000724:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000728:	b200      	sxth	r0, r0
 800072a:	62a0      	str	r0, [r4, #40]	; 0x28
 800072c:	2101      	movs	r1, #1
 800072e:	6820      	ldr	r0, [r4, #0]
 8000730:	f000 fe9c 	bl	800146c <_ZN4CI2C4ReadEh>
 8000734:	2101      	movs	r1, #1
 8000736:	b285      	uxth	r5, r0
 8000738:	6820      	ldr	r0, [r4, #0]
 800073a:	f000 fe97 	bl	800146c <_ZN4CI2C4ReadEh>
 800073e:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000742:	b200      	sxth	r0, r0
 8000744:	62e0      	str	r0, [r4, #44]	; 0x2c
 8000746:	2101      	movs	r1, #1
 8000748:	6820      	ldr	r0, [r4, #0]
 800074a:	f000 fe8f 	bl	800146c <_ZN4CI2C4ReadEh>
 800074e:	2100      	movs	r1, #0
 8000750:	b285      	uxth	r5, r0
 8000752:	6820      	ldr	r0, [r4, #0]
 8000754:	f000 fe8a 	bl	800146c <_ZN4CI2C4ReadEh>
 8000758:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800075c:	b200      	sxth	r0, r0
 800075e:	6320      	str	r0, [r4, #48]	; 0x30
 8000760:	6820      	ldr	r0, [r4, #0]
 8000762:	f000 fe24 	bl	80013ae <_ZN4CI2C4StopEv>
 8000766:	6820      	ldr	r0, [r4, #0]
 8000768:	f000 fe0c 	bl	8001384 <_ZN4CI2C5StartEv>
 800076c:	213c      	movs	r1, #60	; 0x3c
 800076e:	6820      	ldr	r0, [r4, #0]
 8000770:	f000 fe32 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8000774:	21a8      	movs	r1, #168	; 0xa8
 8000776:	6820      	ldr	r0, [r4, #0]
 8000778:	f000 fe2e 	bl	80013d8 <_ZN4CI2C5WriteEh>
 800077c:	6820      	ldr	r0, [r4, #0]
 800077e:	f000 fe01 	bl	8001384 <_ZN4CI2C5StartEv>
 8000782:	213d      	movs	r1, #61	; 0x3d
 8000784:	6820      	ldr	r0, [r4, #0]
 8000786:	f000 fe27 	bl	80013d8 <_ZN4CI2C5WriteEh>
 800078a:	2101      	movs	r1, #1
 800078c:	6820      	ldr	r0, [r4, #0]
 800078e:	f000 fe6d 	bl	800146c <_ZN4CI2C4ReadEh>
 8000792:	2101      	movs	r1, #1
 8000794:	b285      	uxth	r5, r0
 8000796:	6820      	ldr	r0, [r4, #0]
 8000798:	f000 fe68 	bl	800146c <_ZN4CI2C4ReadEh>
 800079c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007a0:	b200      	sxth	r0, r0
 80007a2:	6360      	str	r0, [r4, #52]	; 0x34
 80007a4:	2101      	movs	r1, #1
 80007a6:	6820      	ldr	r0, [r4, #0]
 80007a8:	f000 fe60 	bl	800146c <_ZN4CI2C4ReadEh>
 80007ac:	2101      	movs	r1, #1
 80007ae:	b285      	uxth	r5, r0
 80007b0:	6820      	ldr	r0, [r4, #0]
 80007b2:	f000 fe5b 	bl	800146c <_ZN4CI2C4ReadEh>
 80007b6:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007ba:	b200      	sxth	r0, r0
 80007bc:	63a0      	str	r0, [r4, #56]	; 0x38
 80007be:	2101      	movs	r1, #1
 80007c0:	6820      	ldr	r0, [r4, #0]
 80007c2:	f000 fe53 	bl	800146c <_ZN4CI2C4ReadEh>
 80007c6:	2100      	movs	r1, #0
 80007c8:	b285      	uxth	r5, r0
 80007ca:	6820      	ldr	r0, [r4, #0]
 80007cc:	f000 fe4e 	bl	800146c <_ZN4CI2C4ReadEh>
 80007d0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80007d4:	b200      	sxth	r0, r0
 80007d6:	63e0      	str	r0, [r4, #60]	; 0x3c
 80007d8:	6820      	ldr	r0, [r4, #0]
 80007da:	f000 fde8 	bl	80013ae <_ZN4CI2C4StopEv>
 80007de:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 80007e0:	68a3      	ldr	r3, [r4, #8]
 80007e2:	6b20      	ldr	r0, [r4, #48]	; 0x30
 80007e4:	1a9b      	subs	r3, r3, r2
 80007e6:	6922      	ldr	r2, [r4, #16]
 80007e8:	26c8      	movs	r6, #200	; 0xc8
 80007ea:	fb93 f3f6 	sdiv	r3, r3, r6
 80007ee:	441a      	add	r2, r3
 80007f0:	6c23      	ldr	r3, [r4, #64]	; 0x40
 80007f2:	6122      	str	r2, [r4, #16]
 80007f4:	2164      	movs	r1, #100	; 0x64
 80007f6:	4359      	muls	r1, r3
 80007f8:	f640 15e2 	movw	r5, #2530	; 0x9e2
 80007fc:	434a      	muls	r2, r1
 80007fe:	6863      	ldr	r3, [r4, #4]
 8000800:	fb92 f2f5 	sdiv	r2, r2, r5
 8000804:	61e2      	str	r2, [r4, #28]
 8000806:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 8000808:	1a9b      	subs	r3, r3, r2
 800080a:	6962      	ldr	r2, [r4, #20]
 800080c:	fb93 f3f6 	sdiv	r3, r3, r6
 8000810:	441a      	add	r2, r3
 8000812:	6162      	str	r2, [r4, #20]
 8000814:	434a      	muls	r2, r1
 8000816:	fb92 f2f5 	sdiv	r2, r2, r5
 800081a:	6222      	str	r2, [r4, #32]
 800081c:	68e2      	ldr	r2, [r4, #12]
 800081e:	1a12      	subs	r2, r2, r0
 8000820:	fb92 f0f6 	sdiv	r0, r2, r6
 8000824:	69a2      	ldr	r2, [r4, #24]
 8000826:	1883      	adds	r3, r0, r2
 8000828:	61a3      	str	r3, [r4, #24]
 800082a:	434b      	muls	r3, r1
 800082c:	fb93 f3f5 	sdiv	r3, r3, r5
 8000830:	6263      	str	r3, [r4, #36]	; 0x24
 8000832:	bd70      	pop	{r4, r5, r6, pc}

08000834 <_ZN4CIMU8imu_initEP4CI2C>:
 8000834:	230a      	movs	r3, #10
 8000836:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800083a:	6403      	str	r3, [r0, #64]	; 0x40
 800083c:	2300      	movs	r3, #0
 800083e:	4604      	mov	r4, r0
 8000840:	6001      	str	r1, [r0, #0]
 8000842:	6043      	str	r3, [r0, #4]
 8000844:	6083      	str	r3, [r0, #8]
 8000846:	60c3      	str	r3, [r0, #12]
 8000848:	6103      	str	r3, [r0, #16]
 800084a:	6143      	str	r3, [r0, #20]
 800084c:	6183      	str	r3, [r0, #24]
 800084e:	f242 7511 	movw	r5, #10001	; 0x2711
 8000852:	3d01      	subs	r5, #1
 8000854:	d001      	beq.n	800085a <_ZN4CIMU8imu_initEP4CI2C+0x26>
 8000856:	bf00      	nop
 8000858:	e7fb      	b.n	8000852 <_ZN4CIMU8imu_initEP4CI2C+0x1e>
 800085a:	4608      	mov	r0, r1
 800085c:	220f      	movs	r2, #15
 800085e:	21d4      	movs	r1, #212	; 0xd4
 8000860:	f000 fe32 	bl	80014c8 <_ZN4CI2C8read_regEhh>
 8000864:	28d4      	cmp	r0, #212	; 0xd4
 8000866:	4606      	mov	r6, r0
 8000868:	d155      	bne.n	8000916 <_ZN4CIMU8imu_initEP4CI2C+0xe2>
 800086a:	6820      	ldr	r0, [r4, #0]
 800086c:	213c      	movs	r1, #60	; 0x3c
 800086e:	220f      	movs	r2, #15
 8000870:	f000 fe2a 	bl	80014c8 <_ZN4CI2C8read_regEhh>
 8000874:	2849      	cmp	r0, #73	; 0x49
 8000876:	d152      	bne.n	800091e <_ZN4CIMU8imu_initEP4CI2C+0xea>
 8000878:	4631      	mov	r1, r6
 800087a:	6820      	ldr	r0, [r4, #0]
 800087c:	2220      	movs	r2, #32
 800087e:	23ff      	movs	r3, #255	; 0xff
 8000880:	f000 fddc 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000884:	4631      	mov	r1, r6
 8000886:	6820      	ldr	r0, [r4, #0]
 8000888:	4e27      	ldr	r6, [pc, #156]	; (8000928 <_ZN4CIMU8imu_initEP4CI2C+0xf4>)
 800088a:	2223      	movs	r2, #35	; 0x23
 800088c:	2310      	movs	r3, #16
 800088e:	f000 fdd5 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000892:	6820      	ldr	r0, [r4, #0]
 8000894:	213c      	movs	r1, #60	; 0x3c
 8000896:	221f      	movs	r2, #31
 8000898:	462b      	mov	r3, r5
 800089a:	f000 fdcf 	bl	800143c <_ZN4CI2C9write_regEhhh>
 800089e:	6820      	ldr	r0, [r4, #0]
 80008a0:	213c      	movs	r1, #60	; 0x3c
 80008a2:	2220      	movs	r2, #32
 80008a4:	2367      	movs	r3, #103	; 0x67
 80008a6:	f000 fdc9 	bl	800143c <_ZN4CI2C9write_regEhhh>
 80008aa:	6820      	ldr	r0, [r4, #0]
 80008ac:	213c      	movs	r1, #60	; 0x3c
 80008ae:	2221      	movs	r2, #33	; 0x21
 80008b0:	462b      	mov	r3, r5
 80008b2:	f000 fdc3 	bl	800143c <_ZN4CI2C9write_regEhhh>
 80008b6:	3e01      	subs	r6, #1
 80008b8:	d001      	beq.n	80008be <_ZN4CIMU8imu_initEP4CI2C+0x8a>
 80008ba:	bf00      	nop
 80008bc:	e7fb      	b.n	80008b6 <_ZN4CIMU8imu_initEP4CI2C+0x82>
 80008be:	4620      	mov	r0, r4
 80008c0:	f7ff ff13 	bl	80006ea <_ZN4CIMU8imu_readEv>
 80008c4:	2564      	movs	r5, #100	; 0x64
 80008c6:	4637      	mov	r7, r6
 80008c8:	46b0      	mov	r8, r6
 80008ca:	2365      	movs	r3, #101	; 0x65
 80008cc:	3b01      	subs	r3, #1
 80008ce:	d001      	beq.n	80008d4 <_ZN4CIMU8imu_initEP4CI2C+0xa0>
 80008d0:	bf00      	nop
 80008d2:	e7fb      	b.n	80008cc <_ZN4CIMU8imu_initEP4CI2C+0x98>
 80008d4:	4620      	mov	r0, r4
 80008d6:	f7ff ff08 	bl	80006ea <_ZN4CIMU8imu_readEv>
 80008da:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80008dc:	4498      	add	r8, r3
 80008de:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80008e0:	441f      	add	r7, r3
 80008e2:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80008e4:	3d01      	subs	r5, #1
 80008e6:	441e      	add	r6, r3
 80008e8:	d1ef      	bne.n	80008ca <_ZN4CIMU8imu_initEP4CI2C+0x96>
 80008ea:	2264      	movs	r2, #100	; 0x64
 80008ec:	6365      	str	r5, [r4, #52]	; 0x34
 80008ee:	fb98 f3f2 	sdiv	r3, r8, r2
 80008f2:	fb97 f7f2 	sdiv	r7, r7, r2
 80008f6:	fb96 f6f2 	sdiv	r6, r6, r2
 80008fa:	6063      	str	r3, [r4, #4]
 80008fc:	60a7      	str	r7, [r4, #8]
 80008fe:	60e6      	str	r6, [r4, #12]
 8000900:	63a5      	str	r5, [r4, #56]	; 0x38
 8000902:	63e5      	str	r5, [r4, #60]	; 0x3c
 8000904:	62a5      	str	r5, [r4, #40]	; 0x28
 8000906:	62e5      	str	r5, [r4, #44]	; 0x2c
 8000908:	6325      	str	r5, [r4, #48]	; 0x30
 800090a:	61e5      	str	r5, [r4, #28]
 800090c:	6225      	str	r5, [r4, #32]
 800090e:	6265      	str	r5, [r4, #36]	; 0x24
 8000910:	4628      	mov	r0, r5
 8000912:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000916:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800091a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800091e:	f06f 0001 	mvn.w	r0, #1
 8000922:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000926:	bf00      	nop
 8000928:	000186a1 	.word	0x000186a1

0800092c <_ZN4CIMU7imu_getEv>:
 800092c:	301c      	adds	r0, #28
 800092e:	4770      	bx	lr

08000930 <TIM3_IRQHandler>:
 8000930:	b510      	push	{r4, lr}
 8000932:	4824      	ldr	r0, [pc, #144]	; (80009c4 <TIM3_IRQHandler+0x94>)
 8000934:	2101      	movs	r1, #1
 8000936:	f001 fea7 	bl	8002688 <TIM_GetITStatus>
 800093a:	2800      	cmp	r0, #0
 800093c:	d040      	beq.n	80009c0 <TIM3_IRQHandler+0x90>
 800093e:	2101      	movs	r1, #1
 8000940:	4820      	ldr	r0, [pc, #128]	; (80009c4 <TIM3_IRQHandler+0x94>)
 8000942:	f001 fead 	bl	80026a0 <TIM_ClearITPendingBit>
 8000946:	4a20      	ldr	r2, [pc, #128]	; (80009c8 <TIM3_IRQHandler+0x98>)
 8000948:	4920      	ldr	r1, [pc, #128]	; (80009cc <TIM3_IRQHandler+0x9c>)
 800094a:	6813      	ldr	r3, [r2, #0]
 800094c:	2b01      	cmp	r3, #1
 800094e:	d010      	beq.n	8000972 <TIM3_IRQHandler+0x42>
 8000950:	d306      	bcc.n	8000960 <TIM3_IRQHandler+0x30>
 8000952:	2b02      	cmp	r3, #2
 8000954:	d112      	bne.n	800097c <TIM3_IRQHandler+0x4c>
 8000956:	f44f 7300 	mov.w	r3, #512	; 0x200
 800095a:	850b      	strh	r3, [r1, #40]	; 0x28
 800095c:	2304      	movs	r3, #4
 800095e:	e023      	b.n	80009a8 <TIM3_IRQHandler+0x78>
 8000960:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000964:	850b      	strh	r3, [r1, #40]	; 0x28
 8000966:	f44f 7300 	mov.w	r3, #512	; 0x200
 800096a:	618b      	str	r3, [r1, #24]
 800096c:	2301      	movs	r3, #1
 800096e:	6013      	str	r3, [r2, #0]
 8000970:	e025      	b.n	80009be <TIM3_IRQHandler+0x8e>
 8000972:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000976:	618b      	str	r3, [r1, #24]
 8000978:	2302      	movs	r3, #2
 800097a:	e015      	b.n	80009a8 <TIM3_IRQHandler+0x78>
 800097c:	f013 0f01 	tst.w	r3, #1
 8000980:	f103 0001 	add.w	r0, r3, #1
 8000984:	d012      	beq.n	80009ac <TIM3_IRQHandler+0x7c>
 8000986:	3b04      	subs	r3, #4
 8000988:	f04f 44a0 	mov.w	r4, #1342177280	; 0x50000000
 800098c:	f023 0301 	bic.w	r3, r3, #1
 8000990:	4413      	add	r3, r2
 8000992:	6c24      	ldr	r4, [r4, #64]	; 0x40
 8000994:	829c      	strh	r4, [r3, #20]
 8000996:	f5b0 7f82 	cmp.w	r0, #260	; 0x104
 800099a:	f44f 7380 	mov.w	r3, #256	; 0x100
 800099e:	850b      	strh	r3, [r1, #40]	; 0x28
 80009a0:	d201      	bcs.n	80009a6 <TIM3_IRQHandler+0x76>
 80009a2:	6010      	str	r0, [r2, #0]
 80009a4:	bd10      	pop	{r4, pc}
 80009a6:	2300      	movs	r3, #0
 80009a8:	6013      	str	r3, [r2, #0]
 80009aa:	bd10      	pop	{r4, pc}
 80009ac:	f44f 7380 	mov.w	r3, #256	; 0x100
 80009b0:	618b      	str	r3, [r1, #24]
 80009b2:	6010      	str	r0, [r2, #0]
 80009b4:	f04f 42a0 	mov.w	r2, #1342177280	; 0x50000000
 80009b8:	6893      	ldr	r3, [r2, #8]
 80009ba:	f043 0304 	orr.w	r3, r3, #4
 80009be:	6093      	str	r3, [r2, #8]
 80009c0:	bd10      	pop	{r4, pc}
 80009c2:	bf00      	nop
 80009c4:	40000400 	.word	0x40000400
 80009c8:	20000db4 	.word	0x20000db4
 80009cc:	48000400 	.word	0x48000400

080009d0 <TIM2_IRQHandler>:
 80009d0:	b508      	push	{r3, lr}
 80009d2:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80009d6:	2101      	movs	r1, #1
 80009d8:	f001 fe56 	bl	8002688 <TIM_GetITStatus>
 80009dc:	b360      	cbz	r0, 8000a38 <TIM2_IRQHandler+0x68>
 80009de:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 80009e2:	2101      	movs	r1, #1
 80009e4:	f001 fe5c 	bl	80026a0 <TIM_ClearITPendingBit>
 80009e8:	2300      	movs	r3, #0
 80009ea:	4a14      	ldr	r2, [pc, #80]	; (8000a3c <TIM2_IRQHandler+0x6c>)
 80009ec:	5cd1      	ldrb	r1, [r2, r3]
 80009ee:	b111      	cbz	r1, 80009f6 <TIM2_IRQHandler+0x26>
 80009f0:	5cd1      	ldrb	r1, [r2, r3]
 80009f2:	29ff      	cmp	r1, #255	; 0xff
 80009f4:	d11b      	bne.n	8000a2e <TIM2_IRQHandler+0x5e>
 80009f6:	4912      	ldr	r1, [pc, #72]	; (8000a40 <TIM2_IRQHandler+0x70>)
 80009f8:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 80009fc:	b128      	cbz	r0, 8000a0a <TIM2_IRQHandler+0x3a>
 80009fe:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000a02:	3a01      	subs	r2, #1
 8000a04:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000a08:	e009      	b.n	8000a1e <TIM2_IRQHandler+0x4e>
 8000a0a:	480e      	ldr	r0, [pc, #56]	; (8000a44 <TIM2_IRQHandler+0x74>)
 8000a0c:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000a10:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000a14:	5cd2      	ldrb	r2, [r2, r3]
 8000a16:	b912      	cbnz	r2, 8000a1e <TIM2_IRQHandler+0x4e>
 8000a18:	4a08      	ldr	r2, [pc, #32]	; (8000a3c <TIM2_IRQHandler+0x6c>)
 8000a1a:	2101      	movs	r1, #1
 8000a1c:	54d1      	strb	r1, [r2, r3]
 8000a1e:	3301      	adds	r3, #1
 8000a20:	2b08      	cmp	r3, #8
 8000a22:	d1e2      	bne.n	80009ea <TIM2_IRQHandler+0x1a>
 8000a24:	4a08      	ldr	r2, [pc, #32]	; (8000a48 <TIM2_IRQHandler+0x78>)
 8000a26:	6813      	ldr	r3, [r2, #0]
 8000a28:	3301      	adds	r3, #1
 8000a2a:	6013      	str	r3, [r2, #0]
 8000a2c:	bd08      	pop	{r3, pc}
 8000a2e:	5cd1      	ldrb	r1, [r2, r3]
 8000a30:	3101      	adds	r1, #1
 8000a32:	b2c9      	uxtb	r1, r1
 8000a34:	54d1      	strb	r1, [r2, r3]
 8000a36:	e7de      	b.n	80009f6 <TIM2_IRQHandler+0x26>
 8000a38:	bd08      	pop	{r3, pc}
 8000a3a:	bf00      	nop
 8000a3c:	20000fe8 	.word	0x20000fe8
 8000a40:	20000fc8 	.word	0x20000fc8
 8000a44:	20000ff8 	.word	0x20000ff8
 8000a48:	20000ff0 	.word	0x20000ff0

08000a4c <_ZN6CTimer10timer_initEv>:
 8000a4c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000a4e:	4a20      	ldr	r2, [pc, #128]	; (8000ad0 <_ZN6CTimer10timer_initEv+0x84>)
 8000a50:	2300      	movs	r3, #0
 8000a52:	6013      	str	r3, [r2, #0]
 8000a54:	491f      	ldr	r1, [pc, #124]	; (8000ad4 <_ZN6CTimer10timer_initEv+0x88>)
 8000a56:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000a5a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000a5e:	491e      	ldr	r1, [pc, #120]	; (8000ad8 <_ZN6CTimer10timer_initEv+0x8c>)
 8000a60:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000a64:	4a1d      	ldr	r2, [pc, #116]	; (8000adc <_ZN6CTimer10timer_initEv+0x90>)
 8000a66:	2400      	movs	r4, #0
 8000a68:	54d4      	strb	r4, [r2, r3]
 8000a6a:	3301      	adds	r3, #1
 8000a6c:	2b08      	cmp	r3, #8
 8000a6e:	d1f1      	bne.n	8000a54 <_ZN6CTimer10timer_initEv+0x8>
 8000a70:	2001      	movs	r0, #1
 8000a72:	4601      	mov	r1, r0
 8000a74:	f001 fd44 	bl	8002500 <RCC_APB1PeriphClockCmd>
 8000a78:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8000a7c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000a80:	a901      	add	r1, sp, #4
 8000a82:	2309      	movs	r3, #9
 8000a84:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000a88:	9302      	str	r3, [sp, #8]
 8000a8a:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000a8e:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000a92:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000a96:	f001 fd41 	bl	800251c <TIM_TimeBaseInit>
 8000a9a:	2101      	movs	r1, #1
 8000a9c:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000aa0:	f001 fd8c 	bl	80025bc <TIM_Cmd>
 8000aa4:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000aa8:	4668      	mov	r0, sp
 8000aaa:	68d3      	ldr	r3, [r2, #12]
 8000aac:	f043 0301 	orr.w	r3, r3, #1
 8000ab0:	60d3      	str	r3, [r2, #12]
 8000ab2:	231c      	movs	r3, #28
 8000ab4:	f88d 3000 	strb.w	r3, [sp]
 8000ab8:	2301      	movs	r3, #1
 8000aba:	f88d 4001 	strb.w	r4, [sp, #1]
 8000abe:	f88d 3002 	strb.w	r3, [sp, #2]
 8000ac2:	f88d 3003 	strb.w	r3, [sp, #3]
 8000ac6:	f001 ff25 	bl	8002914 <NVIC_Init>
 8000aca:	4620      	mov	r0, r4
 8000acc:	b004      	add	sp, #16
 8000ace:	bd10      	pop	{r4, pc}
 8000ad0:	20000ff0 	.word	0x20000ff0
 8000ad4:	20000fc8 	.word	0x20000fc8
 8000ad8:	20000ff8 	.word	0x20000ff8
 8000adc:	20000fe8 	.word	0x20000fe8

08000ae0 <_ZN6CTimer8get_timeEv>:
 8000ae0:	b082      	sub	sp, #8
 8000ae2:	b672      	cpsid	i
 8000ae4:	4b04      	ldr	r3, [pc, #16]	; (8000af8 <_ZN6CTimer8get_timeEv+0x18>)
 8000ae6:	681b      	ldr	r3, [r3, #0]
 8000ae8:	9301      	str	r3, [sp, #4]
 8000aea:	b662      	cpsie	i
 8000aec:	230a      	movs	r3, #10
 8000aee:	9801      	ldr	r0, [sp, #4]
 8000af0:	fbb0 f0f3 	udiv	r0, r0, r3
 8000af4:	b002      	add	sp, #8
 8000af6:	4770      	bx	lr
 8000af8:	20000ff0 	.word	0x20000ff0

08000afc <_ZN6CTimer8delay_msEm>:
 8000afc:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000afe:	460c      	mov	r4, r1
 8000b00:	4605      	mov	r5, r0
 8000b02:	f7ff ffed 	bl	8000ae0 <_ZN6CTimer8get_timeEv>
 8000b06:	4420      	add	r0, r4
 8000b08:	9001      	str	r0, [sp, #4]
 8000b0a:	4628      	mov	r0, r5
 8000b0c:	9c01      	ldr	r4, [sp, #4]
 8000b0e:	f7ff ffe7 	bl	8000ae0 <_ZN6CTimer8get_timeEv>
 8000b12:	4284      	cmp	r4, r0
 8000b14:	d902      	bls.n	8000b1c <_ZN6CTimer8delay_msEm+0x20>
 8000b16:	f001 fef9 	bl	800290c <core_yield>
 8000b1a:	e7f6      	b.n	8000b0a <_ZN6CTimer8delay_msEm+0xe>
 8000b1c:	b003      	add	sp, #12
 8000b1e:	bd30      	pop	{r4, r5, pc}

08000b20 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000b20:	b672      	cpsid	i
 8000b22:	230a      	movs	r3, #10
 8000b24:	435a      	muls	r2, r3
 8000b26:	4b05      	ldr	r3, [pc, #20]	; (8000b3c <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000b28:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000b2c:	4b04      	ldr	r3, [pc, #16]	; (8000b40 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000b2e:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000b32:	4b04      	ldr	r3, [pc, #16]	; (8000b44 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000b34:	2200      	movs	r2, #0
 8000b36:	545a      	strb	r2, [r3, r1]
 8000b38:	b662      	cpsie	i
 8000b3a:	4770      	bx	lr
 8000b3c:	20000fc8 	.word	0x20000fc8
 8000b40:	20000ff8 	.word	0x20000ff8
 8000b44:	20000fe8 	.word	0x20000fe8

08000b48 <_ZN6CTimer17event_timer_checkEh>:
 8000b48:	4b05      	ldr	r3, [pc, #20]	; (8000b60 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000b4a:	5c5a      	ldrb	r2, [r3, r1]
 8000b4c:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000b50:	b12a      	cbz	r2, 8000b5e <_ZN6CTimer17event_timer_checkEh+0x16>
 8000b52:	b672      	cpsid	i
 8000b54:	5c58      	ldrb	r0, [r3, r1]
 8000b56:	2200      	movs	r2, #0
 8000b58:	b2c0      	uxtb	r0, r0
 8000b5a:	545a      	strb	r2, [r3, r1]
 8000b5c:	b662      	cpsie	i
 8000b5e:	4770      	bx	lr
 8000b60:	20000fe8 	.word	0x20000fe8

08000b64 <_ZN4CRGB8rgb_readEh>:
 8000b64:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000b68:	4604      	mov	r4, r0
 8000b6a:	4688      	mov	r8, r1
 8000b6c:	f000 faca 	bl	8001104 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000b70:	4620      	mov	r0, r4
 8000b72:	2172      	movs	r1, #114	; 0x72
 8000b74:	f000 faf0 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b78:	21b4      	movs	r1, #180	; 0xb4
 8000b7a:	4620      	mov	r0, r4
 8000b7c:	f000 faec 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b80:	4620      	mov	r0, r4
 8000b82:	f000 fabf 	bl	8001104 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000b86:	4620      	mov	r0, r4
 8000b88:	2173      	movs	r1, #115	; 0x73
 8000b8a:	f000 fae5 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b8e:	4620      	mov	r0, r4
 8000b90:	2101      	movs	r1, #1
 8000b92:	4622      	mov	r2, r4
 8000b94:	f000 fb21 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000b98:	7823      	ldrb	r3, [r4, #0]
 8000b9a:	83a3      	strh	r3, [r4, #28]
 8000b9c:	7863      	ldrb	r3, [r4, #1]
 8000b9e:	83e3      	strh	r3, [r4, #30]
 8000ba0:	78a3      	ldrb	r3, [r4, #2]
 8000ba2:	8423      	strh	r3, [r4, #32]
 8000ba4:	78e3      	ldrb	r3, [r4, #3]
 8000ba6:	8463      	strh	r3, [r4, #34]	; 0x22
 8000ba8:	2101      	movs	r1, #1
 8000baa:	4620      	mov	r0, r4
 8000bac:	4622      	mov	r2, r4
 8000bae:	f104 091a 	add.w	r9, r4, #26
 8000bb2:	1e65      	subs	r5, r4, #1
 8000bb4:	f000 fb11 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000bb8:	1ca6      	adds	r6, r4, #2
 8000bba:	f104 0722 	add.w	r7, r4, #34	; 0x22
 8000bbe:	4629      	mov	r1, r5
 8000bc0:	464b      	mov	r3, r9
 8000bc2:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000bc6:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000bca:	42bb      	cmp	r3, r7
 8000bcc:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000bd0:	801a      	strh	r2, [r3, #0]
 8000bd2:	d1f6      	bne.n	8000bc2 <_ZN4CRGB8rgb_readEh+0x5e>
 8000bd4:	4620      	mov	r0, r4
 8000bd6:	2101      	movs	r1, #1
 8000bd8:	4622      	mov	r2, r4
 8000bda:	f000 fafe 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000bde:	7823      	ldrb	r3, [r4, #0]
 8000be0:	80a3      	strh	r3, [r4, #4]
 8000be2:	7863      	ldrb	r3, [r4, #1]
 8000be4:	80e3      	strh	r3, [r4, #6]
 8000be6:	78a3      	ldrb	r3, [r4, #2]
 8000be8:	8123      	strh	r3, [r4, #8]
 8000bea:	78e3      	ldrb	r3, [r4, #3]
 8000bec:	8163      	strh	r3, [r4, #10]
 8000bee:	2101      	movs	r1, #1
 8000bf0:	4620      	mov	r0, r4
 8000bf2:	4622      	mov	r2, r4
 8000bf4:	f000 faf1 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000bf8:	f104 0a0a 	add.w	sl, r4, #10
 8000bfc:	4633      	mov	r3, r6
 8000bfe:	4629      	mov	r1, r5
 8000c00:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000c04:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000c08:	4553      	cmp	r3, sl
 8000c0a:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000c0e:	801a      	strh	r2, [r3, #0]
 8000c10:	d1f6      	bne.n	8000c00 <_ZN4CRGB8rgb_readEh+0x9c>
 8000c12:	4620      	mov	r0, r4
 8000c14:	2101      	movs	r1, #1
 8000c16:	4622      	mov	r2, r4
 8000c18:	f000 fadf 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c1c:	7823      	ldrb	r3, [r4, #0]
 8000c1e:	81a3      	strh	r3, [r4, #12]
 8000c20:	7863      	ldrb	r3, [r4, #1]
 8000c22:	81e3      	strh	r3, [r4, #14]
 8000c24:	78a3      	ldrb	r3, [r4, #2]
 8000c26:	8223      	strh	r3, [r4, #16]
 8000c28:	78e3      	ldrb	r3, [r4, #3]
 8000c2a:	8263      	strh	r3, [r4, #18]
 8000c2c:	4622      	mov	r2, r4
 8000c2e:	4620      	mov	r0, r4
 8000c30:	2101      	movs	r1, #1
 8000c32:	f000 fad2 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c36:	f104 0612 	add.w	r6, r4, #18
 8000c3a:	462a      	mov	r2, r5
 8000c3c:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 8000c40:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000c44:	45b2      	cmp	sl, r6
 8000c46:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000c4a:	f8aa 3000 	strh.w	r3, [sl]
 8000c4e:	d1f5      	bne.n	8000c3c <_ZN4CRGB8rgb_readEh+0xd8>
 8000c50:	4620      	mov	r0, r4
 8000c52:	2101      	movs	r1, #1
 8000c54:	4622      	mov	r2, r4
 8000c56:	f000 fac0 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c5a:	7823      	ldrb	r3, [r4, #0]
 8000c5c:	82a3      	strh	r3, [r4, #20]
 8000c5e:	7863      	ldrb	r3, [r4, #1]
 8000c60:	82e3      	strh	r3, [r4, #22]
 8000c62:	78a3      	ldrb	r3, [r4, #2]
 8000c64:	8323      	strh	r3, [r4, #24]
 8000c66:	78e3      	ldrb	r3, [r4, #3]
 8000c68:	8363      	strh	r3, [r4, #26]
 8000c6a:	4622      	mov	r2, r4
 8000c6c:	4620      	mov	r0, r4
 8000c6e:	2101      	movs	r1, #1
 8000c70:	f000 fab3 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c74:	462a      	mov	r2, r5
 8000c76:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 8000c7a:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000c7e:	454e      	cmp	r6, r9
 8000c80:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000c84:	8033      	strh	r3, [r6, #0]
 8000c86:	d1f6      	bne.n	8000c76 <_ZN4CRGB8rgb_readEh+0x112>
 8000c88:	4620      	mov	r0, r4
 8000c8a:	2101      	movs	r1, #1
 8000c8c:	4622      	mov	r2, r4
 8000c8e:	f000 faa4 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c92:	7823      	ldrb	r3, [r4, #0]
 8000c94:	84a3      	strh	r3, [r4, #36]	; 0x24
 8000c96:	7863      	ldrb	r3, [r4, #1]
 8000c98:	84e3      	strh	r3, [r4, #38]	; 0x26
 8000c9a:	78a3      	ldrb	r3, [r4, #2]
 8000c9c:	8523      	strh	r3, [r4, #40]	; 0x28
 8000c9e:	78e3      	ldrb	r3, [r4, #3]
 8000ca0:	8563      	strh	r3, [r4, #42]	; 0x2a
 8000ca2:	4622      	mov	r2, r4
 8000ca4:	4620      	mov	r0, r4
 8000ca6:	2100      	movs	r1, #0
 8000ca8:	f000 fa97 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000cac:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 8000cb0:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000cb4:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 8000cb8:	4297      	cmp	r7, r2
 8000cba:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000cbe:	803b      	strh	r3, [r7, #0]
 8000cc0:	d1f6      	bne.n	8000cb0 <_ZN4CRGB8rgb_readEh+0x14c>
 8000cc2:	4620      	mov	r0, r4
 8000cc4:	f000 fa33 	bl	800112e <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000cc8:	f1b8 0f00 	cmp.w	r8, #0
 8000ccc:	d025      	beq.n	8000d1a <_ZN4CRGB8rgb_readEh+0x1b6>
 8000cce:	2300      	movs	r3, #0
 8000cd0:	88a1      	ldrh	r1, [r4, #4]
 8000cd2:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 8000cd6:	440a      	add	r2, r1
 8000cd8:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8000cdc:	89a1      	ldrh	r1, [r4, #12]
 8000cde:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000ce2:	440a      	add	r2, r1
 8000ce4:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 8000ce8:	8aa1      	ldrh	r1, [r4, #20]
 8000cea:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 8000cee:	440a      	add	r2, r1
 8000cf0:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 8000cf4:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 8000cf6:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 8000cfa:	440a      	add	r2, r1
 8000cfc:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8000d00:	8ba1      	ldrh	r1, [r4, #28]
 8000d02:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 8000d06:	3301      	adds	r3, #1
 8000d08:	440a      	add	r2, r1
 8000d0a:	2b04      	cmp	r3, #4
 8000d0c:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8000d10:	f104 0402 	add.w	r4, r4, #2
 8000d14:	d1dc      	bne.n	8000cd0 <_ZN4CRGB8rgb_readEh+0x16c>
 8000d16:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000d1a:	4641      	mov	r1, r8
 8000d1c:	b672      	cpsid	i
 8000d1e:	88a3      	ldrh	r3, [r4, #4]
 8000d20:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 8000d24:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000d28:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 8000d2c:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 8000d30:	1a18      	subs	r0, r3, r0
 8000d32:	89a3      	ldrh	r3, [r4, #12]
 8000d34:	1a9a      	subs	r2, r3, r2
 8000d36:	8aa3      	ldrh	r3, [r4, #20]
 8000d38:	1b5b      	subs	r3, r3, r5
 8000d3a:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 8000d3c:	1bad      	subs	r5, r5, r6
 8000d3e:	84a5      	strh	r5, [r4, #36]	; 0x24
 8000d40:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 8000d44:	8ba5      	ldrh	r5, [r4, #28]
 8000d46:	b280      	uxth	r0, r0
 8000d48:	b292      	uxth	r2, r2
 8000d4a:	b29b      	uxth	r3, r3
 8000d4c:	1bad      	subs	r5, r5, r6
 8000d4e:	80a0      	strh	r0, [r4, #4]
 8000d50:	81a2      	strh	r2, [r4, #12]
 8000d52:	82a3      	strh	r3, [r4, #20]
 8000d54:	83a5      	strh	r5, [r4, #28]
 8000d56:	b662      	cpsie	i
 8000d58:	b200      	sxth	r0, r0
 8000d5a:	b212      	sxth	r2, r2
 8000d5c:	1885      	adds	r5, r0, r2
 8000d5e:	b21b      	sxth	r3, r3
 8000d60:	18ed      	adds	r5, r5, r3
 8000d62:	d00e      	beq.n	8000d82 <_ZN4CRGB8rgb_readEh+0x21e>
 8000d64:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000d68:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8000d6c:	fb90 f0f5 	sdiv	r0, r0, r5
 8000d70:	fb92 f2f5 	sdiv	r2, r2, r5
 8000d74:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8000d78:	85a0      	strh	r0, [r4, #44]	; 0x2c
 8000d7a:	fb93 f3f5 	sdiv	r3, r3, r5
 8000d7e:	86a2      	strh	r2, [r4, #52]	; 0x34
 8000d80:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8000d82:	3101      	adds	r1, #1
 8000d84:	2904      	cmp	r1, #4
 8000d86:	f104 0402 	add.w	r4, r4, #2
 8000d8a:	d1c7      	bne.n	8000d1c <_ZN4CRGB8rgb_readEh+0x1b8>
 8000d8c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08000d90 <_ZN4CRGB8rgb_initEv>:
 8000d90:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000d92:	4606      	mov	r6, r0
 8000d94:	4635      	mov	r5, r6
 8000d96:	f000 f97b 	bl	8001090 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 8000d9a:	4633      	mov	r3, r6
 8000d9c:	2200      	movs	r2, #0
 8000d9e:	3201      	adds	r2, #1
 8000da0:	2400      	movs	r4, #0
 8000da2:	2a04      	cmp	r2, #4
 8000da4:	809c      	strh	r4, [r3, #4]
 8000da6:	819c      	strh	r4, [r3, #12]
 8000da8:	829c      	strh	r4, [r3, #20]
 8000daa:	849c      	strh	r4, [r3, #36]	; 0x24
 8000dac:	839c      	strh	r4, [r3, #28]
 8000dae:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 8000db2:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 8000db6:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 8000dba:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 8000dbe:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 8000dc2:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000dc4:	869c      	strh	r4, [r3, #52]	; 0x34
 8000dc6:	879c      	strh	r4, [r3, #60]	; 0x3c
 8000dc8:	f103 0302 	add.w	r3, r3, #2
 8000dcc:	d1e7      	bne.n	8000d9e <_ZN4CRGB8rgb_initEv+0xe>
 8000dce:	4630      	mov	r0, r6
 8000dd0:	2172      	movs	r1, #114	; 0x72
 8000dd2:	2281      	movs	r2, #129	; 0x81
 8000dd4:	23ff      	movs	r3, #255	; 0xff
 8000dd6:	f000 f9e8 	bl	80011aa <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000dda:	4630      	mov	r0, r6
 8000ddc:	2172      	movs	r1, #114	; 0x72
 8000dde:	2283      	movs	r2, #131	; 0x83
 8000de0:	23ff      	movs	r3, #255	; 0xff
 8000de2:	f000 f9e2 	bl	80011aa <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000de6:	4630      	mov	r0, r6
 8000de8:	2172      	movs	r1, #114	; 0x72
 8000dea:	228d      	movs	r2, #141	; 0x8d
 8000dec:	4623      	mov	r3, r4
 8000dee:	f000 f9dc 	bl	80011aa <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000df2:	4630      	mov	r0, r6
 8000df4:	2172      	movs	r1, #114	; 0x72
 8000df6:	2280      	movs	r2, #128	; 0x80
 8000df8:	2303      	movs	r3, #3
 8000dfa:	f000 f9d6 	bl	80011aa <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000dfe:	228f      	movs	r2, #143	; 0x8f
 8000e00:	2323      	movs	r3, #35	; 0x23
 8000e02:	4630      	mov	r0, r6
 8000e04:	2172      	movs	r1, #114	; 0x72
 8000e06:	f000 f9d0 	bl	80011aa <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000e0a:	af01      	add	r7, sp, #4
 8000e0c:	4630      	mov	r0, r6
 8000e0e:	4621      	mov	r1, r4
 8000e10:	f7ff fea8 	bl	8000b64 <_ZN4CRGB8rgb_readEh>
 8000e14:	463b      	mov	r3, r7
 8000e16:	4630      	mov	r0, r6
 8000e18:	2172      	movs	r1, #114	; 0x72
 8000e1a:	2292      	movs	r2, #146	; 0x92
 8000e1c:	f000 fa2a 	bl	8001274 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000e20:	4623      	mov	r3, r4
 8000e22:	5cfa      	ldrb	r2, [r7, r3]
 8000e24:	2a69      	cmp	r2, #105	; 0x69
 8000e26:	bf1c      	itt	ne
 8000e28:	2201      	movne	r2, #1
 8000e2a:	409a      	lslne	r2, r3
 8000e2c:	f103 0301 	add.w	r3, r3, #1
 8000e30:	bf18      	it	ne
 8000e32:	4314      	orrne	r4, r2
 8000e34:	2b04      	cmp	r3, #4
 8000e36:	d1f4      	bne.n	8000e22 <_ZN4CRGB8rgb_initEv+0x92>
 8000e38:	461f      	mov	r7, r3
 8000e3a:	4630      	mov	r0, r6
 8000e3c:	2101      	movs	r1, #1
 8000e3e:	f7ff fe91 	bl	8000b64 <_ZN4CRGB8rgb_readEh>
 8000e42:	3f01      	subs	r7, #1
 8000e44:	d1f9      	bne.n	8000e3a <_ZN4CRGB8rgb_initEv+0xaa>
 8000e46:	2104      	movs	r1, #4
 8000e48:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8000e4c:	089b      	lsrs	r3, r3, #2
 8000e4e:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 8000e52:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 8000e56:	089b      	lsrs	r3, r3, #2
 8000e58:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000e5c:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000e60:	089b      	lsrs	r3, r3, #2
 8000e62:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 8000e66:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8000e6a:	089b      	lsrs	r3, r3, #2
 8000e6c:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8000e70:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 8000e74:	3901      	subs	r1, #1
 8000e76:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000e7a:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8000e7e:	f105 0502 	add.w	r5, r5, #2
 8000e82:	d1e1      	bne.n	8000e48 <_ZN4CRGB8rgb_initEv+0xb8>
 8000e84:	4630      	mov	r0, r6
 8000e86:	f7ff fe6d 	bl	8000b64 <_ZN4CRGB8rgb_readEh>
 8000e8a:	b114      	cbz	r4, 8000e92 <_ZN4CRGB8rgb_initEv+0x102>
 8000e8c:	4802      	ldr	r0, [pc, #8]	; (8000e98 <_ZN4CRGB8rgb_initEv+0x108>)
 8000e8e:	1b00      	subs	r0, r0, r4
 8000e90:	e000      	b.n	8000e94 <_ZN4CRGB8rgb_initEv+0x104>
 8000e92:	4620      	mov	r0, r4
 8000e94:	b003      	add	sp, #12
 8000e96:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e98:	fffffc18 	.word	0xfffffc18

08000e9c <_ZN4CRGB7rgb_getEv>:
 8000e9c:	3004      	adds	r0, #4
 8000e9e:	4770      	bx	lr

08000ea0 <_ZN6CMotor11motor_sleepEv>:
 8000ea0:	b510      	push	{r4, lr}
 8000ea2:	4604      	mov	r4, r0
 8000ea4:	21c2      	movs	r1, #194	; 0xc2
 8000ea6:	6880      	ldr	r0, [r0, #8]
 8000ea8:	2200      	movs	r2, #0
 8000eaa:	2318      	movs	r3, #24
 8000eac:	f000 fac6 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000eb0:	68a0      	ldr	r0, [r4, #8]
 8000eb2:	21c6      	movs	r1, #198	; 0xc6
 8000eb4:	2200      	movs	r2, #0
 8000eb6:	2318      	movs	r3, #24
 8000eb8:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000ebc:	f000 babe 	b.w	800143c <_ZN4CI2C9write_regEhhh>

08000ec0 <_ZN6CMotor13motor_refreshEv>:
 8000ec0:	b570      	push	{r4, r5, r6, lr}
 8000ec2:	e890 0050 	ldmia.w	r0, {r4, r6}
 8000ec6:	2c2c      	cmp	r4, #44	; 0x2c
 8000ec8:	4605      	mov	r5, r0
 8000eca:	dc74      	bgt.n	8000fb6 <_ZN6CMotor13motor_refreshEv+0xf6>
 8000ecc:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000ed0:	db11      	blt.n	8000ef6 <_ZN6CMotor13motor_refreshEv+0x36>
 8000ed2:	2e2c      	cmp	r6, #44	; 0x2c
 8000ed4:	dc5e      	bgt.n	8000f94 <_ZN6CMotor13motor_refreshEv+0xd4>
 8000ed6:	f116 0f2c 	cmn.w	r6, #44	; 0x2c
 8000eda:	db33      	blt.n	8000f44 <_ZN6CMotor13motor_refreshEv+0x84>
 8000edc:	b1dc      	cbz	r4, 8000f16 <_ZN6CMotor13motor_refreshEv+0x56>
 8000ede:	e001      	b.n	8000ee4 <_ZN6CMotor13motor_refreshEv+0x24>
 8000ee0:	f06f 062b 	mvn.w	r6, #43	; 0x2b
 8000ee4:	2c00      	cmp	r4, #0
 8000ee6:	dd0d      	ble.n	8000f04 <_ZN6CMotor13motor_refreshEv+0x44>
 8000ee8:	2c06      	cmp	r4, #6
 8000eea:	bfb8      	it	lt
 8000eec:	2406      	movlt	r4, #6
 8000eee:	00a4      	lsls	r4, r4, #2
 8000ef0:	f044 0402 	orr.w	r4, r4, #2
 8000ef4:	e00d      	b.n	8000f12 <_ZN6CMotor13motor_refreshEv+0x52>
 8000ef6:	2e2c      	cmp	r6, #44	; 0x2c
 8000ef8:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000efc:	dc60      	bgt.n	8000fc0 <_ZN6CMotor13motor_refreshEv+0x100>
 8000efe:	42a6      	cmp	r6, r4
 8000f00:	bfb8      	it	lt
 8000f02:	4626      	movlt	r6, r4
 8000f04:	4264      	negs	r4, r4
 8000f06:	2c06      	cmp	r4, #6
 8000f08:	bfb8      	it	lt
 8000f0a:	2406      	movlt	r4, #6
 8000f0c:	00a4      	lsls	r4, r4, #2
 8000f0e:	f044 0401 	orr.w	r4, r4, #1
 8000f12:	b2e4      	uxtb	r4, r4
 8000f14:	e000      	b.n	8000f18 <_ZN6CMotor13motor_refreshEv+0x58>
 8000f16:	241b      	movs	r4, #27
 8000f18:	2200      	movs	r2, #0
 8000f1a:	4613      	mov	r3, r2
 8000f1c:	68a8      	ldr	r0, [r5, #8]
 8000f1e:	21c2      	movs	r1, #194	; 0xc2
 8000f20:	f000 fa8c 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000f24:	68a8      	ldr	r0, [r5, #8]
 8000f26:	21c2      	movs	r1, #194	; 0xc2
 8000f28:	2200      	movs	r2, #0
 8000f2a:	4623      	mov	r3, r4
 8000f2c:	f000 fa86 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000f30:	2e00      	cmp	r6, #0
 8000f32:	d020      	beq.n	8000f76 <_ZN6CMotor13motor_refreshEv+0xb6>
 8000f34:	dd16      	ble.n	8000f64 <_ZN6CMotor13motor_refreshEv+0xa4>
 8000f36:	2e06      	cmp	r6, #6
 8000f38:	bfb8      	it	lt
 8000f3a:	2606      	movlt	r6, #6
 8000f3c:	00b6      	lsls	r6, r6, #2
 8000f3e:	f046 0601 	orr.w	r6, r6, #1
 8000f42:	e016      	b.n	8000f72 <_ZN6CMotor13motor_refreshEv+0xb2>
 8000f44:	2c00      	cmp	r4, #0
 8000f46:	d1cb      	bne.n	8000ee0 <_ZN6CMotor13motor_refreshEv+0x20>
 8000f48:	68a8      	ldr	r0, [r5, #8]
 8000f4a:	21c2      	movs	r1, #194	; 0xc2
 8000f4c:	4622      	mov	r2, r4
 8000f4e:	4623      	mov	r3, r4
 8000f50:	f000 fa74 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000f54:	68a8      	ldr	r0, [r5, #8]
 8000f56:	21c2      	movs	r1, #194	; 0xc2
 8000f58:	4622      	mov	r2, r4
 8000f5a:	231b      	movs	r3, #27
 8000f5c:	f000 fa6e 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000f60:	f06f 062b 	mvn.w	r6, #43	; 0x2b
 8000f64:	4276      	negs	r6, r6
 8000f66:	2e06      	cmp	r6, #6
 8000f68:	bfb8      	it	lt
 8000f6a:	2606      	movlt	r6, #6
 8000f6c:	00b6      	lsls	r6, r6, #2
 8000f6e:	f046 0602 	orr.w	r6, r6, #2
 8000f72:	b2f6      	uxtb	r6, r6
 8000f74:	e000      	b.n	8000f78 <_ZN6CMotor13motor_refreshEv+0xb8>
 8000f76:	261b      	movs	r6, #27
 8000f78:	2200      	movs	r2, #0
 8000f7a:	68a8      	ldr	r0, [r5, #8]
 8000f7c:	4613      	mov	r3, r2
 8000f7e:	21c6      	movs	r1, #198	; 0xc6
 8000f80:	f000 fa5c 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000f84:	68a8      	ldr	r0, [r5, #8]
 8000f86:	4633      	mov	r3, r6
 8000f88:	21c6      	movs	r1, #198	; 0xc6
 8000f8a:	2200      	movs	r2, #0
 8000f8c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000f90:	f000 ba54 	b.w	800143c <_ZN4CI2C9write_regEhhh>
 8000f94:	b96c      	cbnz	r4, 8000fb2 <_ZN6CMotor13motor_refreshEv+0xf2>
 8000f96:	68a8      	ldr	r0, [r5, #8]
 8000f98:	21c2      	movs	r1, #194	; 0xc2
 8000f9a:	4622      	mov	r2, r4
 8000f9c:	4623      	mov	r3, r4
 8000f9e:	f000 fa4d 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000fa2:	68a8      	ldr	r0, [r5, #8]
 8000fa4:	21c2      	movs	r1, #194	; 0xc2
 8000fa6:	4622      	mov	r2, r4
 8000fa8:	231b      	movs	r3, #27
 8000faa:	f000 fa47 	bl	800143c <_ZN4CI2C9write_regEhhh>
 8000fae:	262c      	movs	r6, #44	; 0x2c
 8000fb0:	e7c4      	b.n	8000f3c <_ZN6CMotor13motor_refreshEv+0x7c>
 8000fb2:	262c      	movs	r6, #44	; 0x2c
 8000fb4:	e796      	b.n	8000ee4 <_ZN6CMotor13motor_refreshEv+0x24>
 8000fb6:	242c      	movs	r4, #44	; 0x2c
 8000fb8:	42a6      	cmp	r6, r4
 8000fba:	dd8c      	ble.n	8000ed6 <_ZN6CMotor13motor_refreshEv+0x16>
 8000fbc:	4626      	mov	r6, r4
 8000fbe:	e796      	b.n	8000eee <_ZN6CMotor13motor_refreshEv+0x2e>
 8000fc0:	262c      	movs	r6, #44	; 0x2c
 8000fc2:	e79f      	b.n	8000f04 <_ZN6CMotor13motor_refreshEv+0x44>

08000fc4 <_ZN6CMotor9set_motorEml>:
 8000fc4:	2901      	cmp	r1, #1
 8000fc6:	bf98      	it	ls
 8000fc8:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000fcc:	f7ff bf78 	b.w	8000ec0 <_ZN6CMotor13motor_refreshEv>

08000fd0 <_ZN6CMotor10motor_initEv>:
 8000fd0:	b510      	push	{r4, lr}
 8000fd2:	2100      	movs	r1, #0
 8000fd4:	4604      	mov	r4, r0
 8000fd6:	460a      	mov	r2, r1
 8000fd8:	f7ff fff4 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8000fdc:	4620      	mov	r0, r4
 8000fde:	2101      	movs	r1, #1
 8000fe0:	2200      	movs	r2, #0
 8000fe2:	f7ff ffef 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8000fe6:	4620      	mov	r0, r4
 8000fe8:	f7ff ff6a 	bl	8000ec0 <_ZN6CMotor13motor_refreshEv>
 8000fec:	2000      	movs	r0, #0
 8000fee:	bd10      	pop	{r4, pc}

08000ff0 <_ZN6CMotor10set_motorsEll>:
 8000ff0:	e880 0006 	stmia.w	r0, {r1, r2}
 8000ff4:	f7ff bf64 	b.w	8000ec0 <_ZN6CMotor13motor_refreshEv>

08000ff8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000ff8:	2365      	movs	r3, #101	; 0x65
 8000ffa:	3b01      	subs	r3, #1
 8000ffc:	d001      	beq.n	8001002 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000ffe:	bf00      	nop
 8001000:	e7fb      	b.n	8000ffa <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8001002:	4770      	bx	lr

08001004 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8001004:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8001006:	2301      	movs	r3, #1
 8001008:	2203      	movs	r2, #3
 800100a:	4605      	mov	r5, r0
 800100c:	24f0      	movs	r4, #240	; 0xf0
 800100e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001012:	f88d 3006 	strb.w	r3, [sp, #6]
 8001016:	4669      	mov	r1, sp
 8001018:	2300      	movs	r3, #0
 800101a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800101e:	f88d 2005 	strb.w	r2, [sp, #5]
 8001022:	f88d 3007 	strb.w	r3, [sp, #7]
 8001026:	9400      	str	r4, [sp, #0]
 8001028:	f001 fcba 	bl	80029a0 <GPIO_Init>
 800102c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001030:	4628      	mov	r0, r5
 8001032:	851c      	strh	r4, [r3, #40]	; 0x28
 8001034:	f7ff ffe0 	bl	8000ff8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8001038:	b003      	add	sp, #12
 800103a:	bd30      	pop	{r4, r5, pc}

0800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 800103c:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800103e:	2300      	movs	r3, #0
 8001040:	2203      	movs	r2, #3
 8001042:	4605      	mov	r5, r0
 8001044:	24f0      	movs	r4, #240	; 0xf0
 8001046:	4669      	mov	r1, sp
 8001048:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800104c:	f88d 3004 	strb.w	r3, [sp, #4]
 8001050:	f88d 2005 	strb.w	r2, [sp, #5]
 8001054:	f88d 3007 	strb.w	r3, [sp, #7]
 8001058:	9400      	str	r4, [sp, #0]
 800105a:	f001 fca1 	bl	80029a0 <GPIO_Init>
 800105e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001062:	4628      	mov	r0, r5
 8001064:	619c      	str	r4, [r3, #24]
 8001066:	f7ff ffc7 	bl	8000ff8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 800106a:	b003      	add	sp, #12
 800106c:	bd30      	pop	{r4, r5, pc}
	...

08001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8001070:	4b02      	ldr	r3, [pc, #8]	; (800107c <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8001072:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001076:	851a      	strh	r2, [r3, #40]	; 0x28
 8001078:	f7ff bfbe 	b.w	8000ff8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 800107c:	48000800 	.word	0x48000800

08001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8001080:	4b02      	ldr	r3, [pc, #8]	; (800108c <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8001082:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8001086:	619a      	str	r2, [r3, #24]
 8001088:	f7ff bfb6 	b.w	8000ff8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 800108c:	48000800 	.word	0x48000800

08001090 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8001090:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001092:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8001096:	4605      	mov	r5, r0
 8001098:	2400      	movs	r4, #0
 800109a:	9300      	str	r3, [sp, #0]
 800109c:	2703      	movs	r7, #3
 800109e:	2301      	movs	r3, #1
 80010a0:	4817      	ldr	r0, [pc, #92]	; (8001100 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 80010a2:	f88d 3004 	strb.w	r3, [sp, #4]
 80010a6:	4669      	mov	r1, sp
 80010a8:	26f0      	movs	r6, #240	; 0xf0
 80010aa:	f88d 7005 	strb.w	r7, [sp, #5]
 80010ae:	f88d 4006 	strb.w	r4, [sp, #6]
 80010b2:	f88d 4007 	strb.w	r4, [sp, #7]
 80010b6:	f001 fc73 	bl	80029a0 <GPIO_Init>
 80010ba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80010be:	4669      	mov	r1, sp
 80010c0:	9600      	str	r6, [sp, #0]
 80010c2:	f88d 4004 	strb.w	r4, [sp, #4]
 80010c6:	f88d 7005 	strb.w	r7, [sp, #5]
 80010ca:	f88d 4007 	strb.w	r4, [sp, #7]
 80010ce:	f001 fc67 	bl	80029a0 <GPIO_Init>
 80010d2:	4631      	mov	r1, r6
 80010d4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80010d8:	f001 fca4 	bl	8002a24 <GPIO_SetBits>
 80010dc:	4628      	mov	r0, r5
 80010de:	f7ff ffcf 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80010e2:	4628      	mov	r0, r5
 80010e4:	f7ff ff8e 	bl	8001004 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80010e8:	4628      	mov	r0, r5
 80010ea:	f7ff ffa7 	bl	800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80010ee:	f242 7311 	movw	r3, #10001	; 0x2711
 80010f2:	3b01      	subs	r3, #1
 80010f4:	d001      	beq.n	80010fa <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 80010f6:	bf00      	nop
 80010f8:	e7fb      	b.n	80010f2 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 80010fa:	b003      	add	sp, #12
 80010fc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80010fe:	bf00      	nop
 8001100:	48000800 	.word	0x48000800

08001104 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8001104:	b510      	push	{r4, lr}
 8001106:	4604      	mov	r4, r0
 8001108:	f7ff ffba 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800110c:	4620      	mov	r0, r4
 800110e:	f7ff ff95 	bl	800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001112:	4620      	mov	r0, r4
 8001114:	f7ff ffb4 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001118:	4620      	mov	r0, r4
 800111a:	f7ff ff73 	bl	8001004 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800111e:	4620      	mov	r0, r4
 8001120:	f7ff ffa6 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001124:	4620      	mov	r0, r4
 8001126:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800112a:	f7ff bf87 	b.w	800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800112e <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 800112e:	b510      	push	{r4, lr}
 8001130:	4604      	mov	r4, r0
 8001132:	f7ff ff9d 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001136:	4620      	mov	r0, r4
 8001138:	f7ff ff64 	bl	8001004 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800113c:	4620      	mov	r0, r4
 800113e:	f7ff ff9f 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001142:	4620      	mov	r0, r4
 8001144:	f7ff ff5e 	bl	8001004 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001148:	4620      	mov	r0, r4
 800114a:	f7ff ff99 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800114e:	4620      	mov	r0, r4
 8001150:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001154:	f7ff bf72 	b.w	800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8001158:	b570      	push	{r4, r5, r6, lr}
 800115a:	4604      	mov	r4, r0
 800115c:	460e      	mov	r6, r1
 800115e:	2508      	movs	r5, #8
 8001160:	4620      	mov	r0, r4
 8001162:	f7ff ff85 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001166:	0633      	lsls	r3, r6, #24
 8001168:	4620      	mov	r0, r4
 800116a:	d502      	bpl.n	8001172 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 800116c:	f7ff ff66 	bl	800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001170:	e001      	b.n	8001176 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8001172:	f7ff ff47 	bl	8001004 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001176:	4620      	mov	r0, r4
 8001178:	3d01      	subs	r5, #1
 800117a:	f7ff ff81 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800117e:	0076      	lsls	r6, r6, #1
 8001180:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001184:	b2f6      	uxtb	r6, r6
 8001186:	d1eb      	bne.n	8001160 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8001188:	4620      	mov	r0, r4
 800118a:	f7ff ff71 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800118e:	4620      	mov	r0, r4
 8001190:	f7ff ff54 	bl	800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001194:	4620      	mov	r0, r4
 8001196:	f7ff ff73 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800119a:	4620      	mov	r0, r4
 800119c:	f7ff ff68 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80011a0:	4620      	mov	r0, r4
 80011a2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80011a6:	f7ff bf27 	b.w	8000ff8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

080011aa <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 80011aa:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80011ac:	4604      	mov	r4, r0
 80011ae:	460f      	mov	r7, r1
 80011b0:	4616      	mov	r6, r2
 80011b2:	461d      	mov	r5, r3
 80011b4:	f7ff ffa6 	bl	8001104 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80011b8:	4620      	mov	r0, r4
 80011ba:	4639      	mov	r1, r7
 80011bc:	f7ff ffcc 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80011c0:	4620      	mov	r0, r4
 80011c2:	4631      	mov	r1, r6
 80011c4:	f7ff ffc8 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80011c8:	4620      	mov	r0, r4
 80011ca:	4629      	mov	r1, r5
 80011cc:	f7ff ffc4 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80011d0:	4620      	mov	r0, r4
 80011d2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80011d6:	f7ff bfaa 	b.w	800112e <_ZN8CRGB_I2C11rgb_i2cStopEv>

080011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 80011da:	2300      	movs	r3, #0
 80011dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80011e0:	4605      	mov	r5, r0
 80011e2:	7013      	strb	r3, [r2, #0]
 80011e4:	7053      	strb	r3, [r2, #1]
 80011e6:	7093      	strb	r3, [r2, #2]
 80011e8:	70d3      	strb	r3, [r2, #3]
 80011ea:	460e      	mov	r6, r1
 80011ec:	4614      	mov	r4, r2
 80011ee:	1cd7      	adds	r7, r2, #3
 80011f0:	f7ff ff3e 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80011f4:	4628      	mov	r0, r5
 80011f6:	f7ff ff21 	bl	800103c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80011fa:	f04f 0808 	mov.w	r8, #8
 80011fe:	1e63      	subs	r3, r4, #1
 8001200:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8001204:	0052      	lsls	r2, r2, #1
 8001206:	42bb      	cmp	r3, r7
 8001208:	701a      	strb	r2, [r3, #0]
 800120a:	d1f9      	bne.n	8001200 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 800120c:	4628      	mov	r0, r5
 800120e:	f7ff ff37 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001212:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001216:	8a1b      	ldrh	r3, [r3, #16]
 8001218:	b29b      	uxth	r3, r3
 800121a:	06d8      	lsls	r0, r3, #27
 800121c:	bf42      	ittt	mi
 800121e:	7822      	ldrbmi	r2, [r4, #0]
 8001220:	f042 0201 	orrmi.w	r2, r2, #1
 8001224:	7022      	strbmi	r2, [r4, #0]
 8001226:	0699      	lsls	r1, r3, #26
 8001228:	bf42      	ittt	mi
 800122a:	7862      	ldrbmi	r2, [r4, #1]
 800122c:	f042 0201 	orrmi.w	r2, r2, #1
 8001230:	7062      	strbmi	r2, [r4, #1]
 8001232:	065a      	lsls	r2, r3, #25
 8001234:	bf42      	ittt	mi
 8001236:	78a2      	ldrbmi	r2, [r4, #2]
 8001238:	f042 0201 	orrmi.w	r2, r2, #1
 800123c:	70a2      	strbmi	r2, [r4, #2]
 800123e:	061b      	lsls	r3, r3, #24
 8001240:	bf42      	ittt	mi
 8001242:	78e3      	ldrbmi	r3, [r4, #3]
 8001244:	f043 0301 	orrmi.w	r3, r3, #1
 8001248:	70e3      	strbmi	r3, [r4, #3]
 800124a:	4628      	mov	r0, r5
 800124c:	f7ff ff10 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001250:	f1b8 0801 	subs.w	r8, r8, #1
 8001254:	d1d3      	bne.n	80011fe <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8001256:	b116      	cbz	r6, 800125e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8001258:	4628      	mov	r0, r5
 800125a:	f7ff fed3 	bl	8001004 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800125e:	4628      	mov	r0, r5
 8001260:	f7ff ff0e 	bl	8001080 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001264:	4628      	mov	r0, r5
 8001266:	f7ff ff03 	bl	8001070 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800126a:	4628      	mov	r0, r5
 800126c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001270:	f7ff bec2 	b.w	8000ff8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08001274 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8001274:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001276:	4604      	mov	r4, r0
 8001278:	460d      	mov	r5, r1
 800127a:	4617      	mov	r7, r2
 800127c:	461e      	mov	r6, r3
 800127e:	f7ff ff41 	bl	8001104 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8001282:	4620      	mov	r0, r4
 8001284:	4629      	mov	r1, r5
 8001286:	f7ff ff67 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800128a:	4639      	mov	r1, r7
 800128c:	4620      	mov	r0, r4
 800128e:	f7ff ff63 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001292:	4620      	mov	r0, r4
 8001294:	f7ff ff36 	bl	8001104 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8001298:	4620      	mov	r0, r4
 800129a:	f045 0101 	orr.w	r1, r5, #1
 800129e:	f7ff ff5b 	bl	8001158 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80012a2:	4620      	mov	r0, r4
 80012a4:	4632      	mov	r2, r6
 80012a6:	2100      	movs	r1, #0
 80012a8:	f7ff ff97 	bl	80011da <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80012ac:	4620      	mov	r0, r4
 80012ae:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80012b2:	f7ff bf3c 	b.w	800112e <_ZN8CRGB_I2C11rgb_i2cStopEv>

080012b6 <_ZN4CI2C5delayEv>:
 80012b6:	230b      	movs	r3, #11
 80012b8:	3b01      	subs	r3, #1
 80012ba:	d001      	beq.n	80012c0 <_ZN4CI2C5delayEv+0xa>
 80012bc:	bf00      	nop
 80012be:	e7fb      	b.n	80012b8 <_ZN4CI2C5delayEv+0x2>
 80012c0:	4770      	bx	lr
	...

080012c4 <_ZN4CI2C9SetLowSDAEv>:
 80012c4:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80012c6:	4c0c      	ldr	r4, [pc, #48]	; (80012f8 <_ZN4CI2C9SetLowSDAEv+0x34>)
 80012c8:	2301      	movs	r3, #1
 80012ca:	2203      	movs	r2, #3
 80012cc:	4606      	mov	r6, r0
 80012ce:	2580      	movs	r5, #128	; 0x80
 80012d0:	f88d 3004 	strb.w	r3, [sp, #4]
 80012d4:	f88d 3006 	strb.w	r3, [sp, #6]
 80012d8:	4620      	mov	r0, r4
 80012da:	2300      	movs	r3, #0
 80012dc:	4669      	mov	r1, sp
 80012de:	f88d 2005 	strb.w	r2, [sp, #5]
 80012e2:	f88d 3007 	strb.w	r3, [sp, #7]
 80012e6:	9500      	str	r5, [sp, #0]
 80012e8:	f001 fb5a 	bl	80029a0 <GPIO_Init>
 80012ec:	8525      	strh	r5, [r4, #40]	; 0x28
 80012ee:	4630      	mov	r0, r6
 80012f0:	f7ff ffe1 	bl	80012b6 <_ZN4CI2C5delayEv>
 80012f4:	b002      	add	sp, #8
 80012f6:	bd70      	pop	{r4, r5, r6, pc}
 80012f8:	48000400 	.word	0x48000400

080012fc <_ZN4CI2C10SetHighSDAEv>:
 80012fc:	4b05      	ldr	r3, [pc, #20]	; (8001314 <_ZN4CI2C10SetHighSDAEv+0x18>)
 80012fe:	681a      	ldr	r2, [r3, #0]
 8001300:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8001304:	601a      	str	r2, [r3, #0]
 8001306:	681a      	ldr	r2, [r3, #0]
 8001308:	601a      	str	r2, [r3, #0]
 800130a:	2280      	movs	r2, #128	; 0x80
 800130c:	619a      	str	r2, [r3, #24]
 800130e:	f7ff bfd2 	b.w	80012b6 <_ZN4CI2C5delayEv>
 8001312:	bf00      	nop
 8001314:	48000400 	.word	0x48000400

08001318 <_ZN4CI2C9SetLowSCLEv>:
 8001318:	4b02      	ldr	r3, [pc, #8]	; (8001324 <_ZN4CI2C9SetLowSCLEv+0xc>)
 800131a:	2240      	movs	r2, #64	; 0x40
 800131c:	851a      	strh	r2, [r3, #40]	; 0x28
 800131e:	f7ff bfca 	b.w	80012b6 <_ZN4CI2C5delayEv>
 8001322:	bf00      	nop
 8001324:	48000400 	.word	0x48000400

08001328 <_ZN4CI2C10SetHighSCLEv>:
 8001328:	4b02      	ldr	r3, [pc, #8]	; (8001334 <_ZN4CI2C10SetHighSCLEv+0xc>)
 800132a:	2240      	movs	r2, #64	; 0x40
 800132c:	619a      	str	r2, [r3, #24]
 800132e:	f7ff bfc2 	b.w	80012b6 <_ZN4CI2C5delayEv>
 8001332:	bf00      	nop
 8001334:	48000400 	.word	0x48000400

08001338 <_ZN4CI2C4initEv>:
 8001338:	b513      	push	{r0, r1, r4, lr}
 800133a:	4604      	mov	r4, r0
 800133c:	2101      	movs	r1, #1
 800133e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001342:	f001 f8c1 	bl	80024c8 <RCC_AHBPeriphClockCmd>
 8001346:	23c0      	movs	r3, #192	; 0xc0
 8001348:	9300      	str	r3, [sp, #0]
 800134a:	2301      	movs	r3, #1
 800134c:	2203      	movs	r2, #3
 800134e:	4669      	mov	r1, sp
 8001350:	f88d 3004 	strb.w	r3, [sp, #4]
 8001354:	f88d 3006 	strb.w	r3, [sp, #6]
 8001358:	4809      	ldr	r0, [pc, #36]	; (8001380 <_ZN4CI2C4initEv+0x48>)
 800135a:	f88d 2005 	strb.w	r2, [sp, #5]
 800135e:	2300      	movs	r3, #0
 8001360:	f88d 3007 	strb.w	r3, [sp, #7]
 8001364:	f001 fb1c 	bl	80029a0 <GPIO_Init>
 8001368:	4620      	mov	r0, r4
 800136a:	f7ff ffdd 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 800136e:	4620      	mov	r0, r4
 8001370:	f7ff ffa8 	bl	80012c4 <_ZN4CI2C9SetLowSDAEv>
 8001374:	4620      	mov	r0, r4
 8001376:	f7ff ffc1 	bl	80012fc <_ZN4CI2C10SetHighSDAEv>
 800137a:	b002      	add	sp, #8
 800137c:	bd10      	pop	{r4, pc}
 800137e:	bf00      	nop
 8001380:	48000400 	.word	0x48000400

08001384 <_ZN4CI2C5StartEv>:
 8001384:	b510      	push	{r4, lr}
 8001386:	4604      	mov	r4, r0
 8001388:	f7ff ffce 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 800138c:	4620      	mov	r0, r4
 800138e:	f7ff ffb5 	bl	80012fc <_ZN4CI2C10SetHighSDAEv>
 8001392:	4620      	mov	r0, r4
 8001394:	f7ff ffc8 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 8001398:	4620      	mov	r0, r4
 800139a:	f7ff ff93 	bl	80012c4 <_ZN4CI2C9SetLowSDAEv>
 800139e:	4620      	mov	r0, r4
 80013a0:	f7ff ffba 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 80013a4:	4620      	mov	r0, r4
 80013a6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80013aa:	f7ff bfa7 	b.w	80012fc <_ZN4CI2C10SetHighSDAEv>

080013ae <_ZN4CI2C4StopEv>:
 80013ae:	b510      	push	{r4, lr}
 80013b0:	4604      	mov	r4, r0
 80013b2:	f7ff ffb1 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 80013b6:	4620      	mov	r0, r4
 80013b8:	f7ff ff84 	bl	80012c4 <_ZN4CI2C9SetLowSDAEv>
 80013bc:	4620      	mov	r0, r4
 80013be:	f7ff ffb3 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 80013c2:	4620      	mov	r0, r4
 80013c4:	f7ff ff7e 	bl	80012c4 <_ZN4CI2C9SetLowSDAEv>
 80013c8:	4620      	mov	r0, r4
 80013ca:	f7ff ffad 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 80013ce:	4620      	mov	r0, r4
 80013d0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80013d4:	f7ff bf92 	b.w	80012fc <_ZN4CI2C10SetHighSDAEv>

080013d8 <_ZN4CI2C5WriteEh>:
 80013d8:	b570      	push	{r4, r5, r6, lr}
 80013da:	4604      	mov	r4, r0
 80013dc:	460e      	mov	r6, r1
 80013de:	2508      	movs	r5, #8
 80013e0:	4620      	mov	r0, r4
 80013e2:	f7ff ff99 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 80013e6:	0633      	lsls	r3, r6, #24
 80013e8:	4620      	mov	r0, r4
 80013ea:	d502      	bpl.n	80013f2 <_ZN4CI2C5WriteEh+0x1a>
 80013ec:	f7ff ff86 	bl	80012fc <_ZN4CI2C10SetHighSDAEv>
 80013f0:	e001      	b.n	80013f6 <_ZN4CI2C5WriteEh+0x1e>
 80013f2:	f7ff ff67 	bl	80012c4 <_ZN4CI2C9SetLowSDAEv>
 80013f6:	4620      	mov	r0, r4
 80013f8:	3d01      	subs	r5, #1
 80013fa:	f7ff ff95 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 80013fe:	0076      	lsls	r6, r6, #1
 8001400:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001404:	b2f6      	uxtb	r6, r6
 8001406:	d1eb      	bne.n	80013e0 <_ZN4CI2C5WriteEh+0x8>
 8001408:	4620      	mov	r0, r4
 800140a:	f7ff ff85 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 800140e:	4620      	mov	r0, r4
 8001410:	f7ff ff74 	bl	80012fc <_ZN4CI2C10SetHighSDAEv>
 8001414:	4620      	mov	r0, r4
 8001416:	f7ff ff87 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 800141a:	4b07      	ldr	r3, [pc, #28]	; (8001438 <_ZN4CI2C5WriteEh+0x60>)
 800141c:	8a1d      	ldrh	r5, [r3, #16]
 800141e:	4620      	mov	r0, r4
 8001420:	f7ff ff7a 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 8001424:	b2ad      	uxth	r5, r5
 8001426:	4620      	mov	r0, r4
 8001428:	f7ff ff45 	bl	80012b6 <_ZN4CI2C5delayEv>
 800142c:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8001430:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8001434:	bd70      	pop	{r4, r5, r6, pc}
 8001436:	bf00      	nop
 8001438:	48000400 	.word	0x48000400

0800143c <_ZN4CI2C9write_regEhhh>:
 800143c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800143e:	4604      	mov	r4, r0
 8001440:	460f      	mov	r7, r1
 8001442:	4616      	mov	r6, r2
 8001444:	461d      	mov	r5, r3
 8001446:	f7ff ff9d 	bl	8001384 <_ZN4CI2C5StartEv>
 800144a:	4639      	mov	r1, r7
 800144c:	4620      	mov	r0, r4
 800144e:	f7ff ffc3 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8001452:	4631      	mov	r1, r6
 8001454:	4620      	mov	r0, r4
 8001456:	f7ff ffbf 	bl	80013d8 <_ZN4CI2C5WriteEh>
 800145a:	4620      	mov	r0, r4
 800145c:	4629      	mov	r1, r5
 800145e:	f7ff ffbb 	bl	80013d8 <_ZN4CI2C5WriteEh>
 8001462:	4620      	mov	r0, r4
 8001464:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001468:	f7ff bfa1 	b.w	80013ae <_ZN4CI2C4StopEv>

0800146c <_ZN4CI2C4ReadEh>:
 800146c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800146e:	4605      	mov	r5, r0
 8001470:	460f      	mov	r7, r1
 8001472:	f7ff ff51 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 8001476:	2608      	movs	r6, #8
 8001478:	2400      	movs	r4, #0
 800147a:	4628      	mov	r0, r5
 800147c:	f7ff ff54 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 8001480:	4b10      	ldr	r3, [pc, #64]	; (80014c4 <_ZN4CI2C4ReadEh+0x58>)
 8001482:	8a1b      	ldrh	r3, [r3, #16]
 8001484:	0064      	lsls	r4, r4, #1
 8001486:	061b      	lsls	r3, r3, #24
 8001488:	b2e4      	uxtb	r4, r4
 800148a:	4628      	mov	r0, r5
 800148c:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8001490:	bf48      	it	mi
 8001492:	f044 0401 	orrmi.w	r4, r4, #1
 8001496:	f7ff ff3f 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 800149a:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 800149e:	d1ec      	bne.n	800147a <_ZN4CI2C4ReadEh+0xe>
 80014a0:	4628      	mov	r0, r5
 80014a2:	b117      	cbz	r7, 80014aa <_ZN4CI2C4ReadEh+0x3e>
 80014a4:	f7ff ff0e 	bl	80012c4 <_ZN4CI2C9SetLowSDAEv>
 80014a8:	e001      	b.n	80014ae <_ZN4CI2C4ReadEh+0x42>
 80014aa:	f7ff ff27 	bl	80012fc <_ZN4CI2C10SetHighSDAEv>
 80014ae:	4628      	mov	r0, r5
 80014b0:	f7ff ff3a 	bl	8001328 <_ZN4CI2C10SetHighSCLEv>
 80014b4:	4628      	mov	r0, r5
 80014b6:	f7ff ff2f 	bl	8001318 <_ZN4CI2C9SetLowSCLEv>
 80014ba:	4628      	mov	r0, r5
 80014bc:	f7ff ff1e 	bl	80012fc <_ZN4CI2C10SetHighSDAEv>
 80014c0:	4620      	mov	r0, r4
 80014c2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80014c4:	48000400 	.word	0x48000400

080014c8 <_ZN4CI2C8read_regEhh>:
 80014c8:	b570      	push	{r4, r5, r6, lr}
 80014ca:	4604      	mov	r4, r0
 80014cc:	460d      	mov	r5, r1
 80014ce:	4616      	mov	r6, r2
 80014d0:	f7ff ff58 	bl	8001384 <_ZN4CI2C5StartEv>
 80014d4:	4629      	mov	r1, r5
 80014d6:	4620      	mov	r0, r4
 80014d8:	f7ff ff7e 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80014dc:	4631      	mov	r1, r6
 80014de:	4620      	mov	r0, r4
 80014e0:	f7ff ff7a 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80014e4:	4620      	mov	r0, r4
 80014e6:	f7ff ff4d 	bl	8001384 <_ZN4CI2C5StartEv>
 80014ea:	f045 0101 	orr.w	r1, r5, #1
 80014ee:	4620      	mov	r0, r4
 80014f0:	f7ff ff72 	bl	80013d8 <_ZN4CI2C5WriteEh>
 80014f4:	2100      	movs	r1, #0
 80014f6:	4620      	mov	r0, r4
 80014f8:	f7ff ffb8 	bl	800146c <_ZN4CI2C4ReadEh>
 80014fc:	4605      	mov	r5, r0
 80014fe:	4620      	mov	r0, r4
 8001500:	f7ff ff55 	bl	80013ae <_ZN4CI2C4StopEv>
 8001504:	4628      	mov	r0, r5
 8001506:	bd70      	pop	{r4, r5, r6, pc}

08001508 <_ZN5CGPIO9gpio_initEv>:
 8001508:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 800150c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001510:	2101      	movs	r1, #1
 8001512:	f000 ffd9 	bl	80024c8 <RCC_AHBPeriphClockCmd>
 8001516:	4f22      	ldr	r7, [pc, #136]	; (80015a0 <_ZN5CGPIO9gpio_initEv+0x98>)
 8001518:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800151c:	2101      	movs	r1, #1
 800151e:	f000 ffd3 	bl	80024c8 <RCC_AHBPeriphClockCmd>
 8001522:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001526:	2101      	movs	r1, #1
 8001528:	f000 ffce 	bl	80024c8 <RCC_AHBPeriphClockCmd>
 800152c:	2400      	movs	r4, #0
 800152e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001532:	2503      	movs	r5, #3
 8001534:	f04f 0801 	mov.w	r8, #1
 8001538:	4638      	mov	r0, r7
 800153a:	4669      	mov	r1, sp
 800153c:	9300      	str	r3, [sp, #0]
 800153e:	2608      	movs	r6, #8
 8001540:	f88d 8004 	strb.w	r8, [sp, #4]
 8001544:	f88d 4006 	strb.w	r4, [sp, #6]
 8001548:	f88d 5005 	strb.w	r5, [sp, #5]
 800154c:	f88d 4007 	strb.w	r4, [sp, #7]
 8001550:	f001 fa26 	bl	80029a0 <GPIO_Init>
 8001554:	4669      	mov	r1, sp
 8001556:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800155a:	9600      	str	r6, [sp, #0]
 800155c:	f88d 8004 	strb.w	r8, [sp, #4]
 8001560:	f88d 4006 	strb.w	r4, [sp, #6]
 8001564:	f88d 5005 	strb.w	r5, [sp, #5]
 8001568:	f88d 4007 	strb.w	r4, [sp, #7]
 800156c:	f001 fa18 	bl	80029a0 <GPIO_Init>
 8001570:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001574:	4638      	mov	r0, r7
 8001576:	4669      	mov	r1, sp
 8001578:	9300      	str	r3, [sp, #0]
 800157a:	f88d 4004 	strb.w	r4, [sp, #4]
 800157e:	f88d 5005 	strb.w	r5, [sp, #5]
 8001582:	f88d 4007 	strb.w	r4, [sp, #7]
 8001586:	f001 fa0b 	bl	80029a0 <GPIO_Init>
 800158a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800158e:	4620      	mov	r0, r4
 8001590:	851e      	strh	r6, [r3, #40]	; 0x28
 8001592:	4b04      	ldr	r3, [pc, #16]	; (80015a4 <_ZN5CGPIO9gpio_initEv+0x9c>)
 8001594:	601c      	str	r4, [r3, #0]
 8001596:	4b04      	ldr	r3, [pc, #16]	; (80015a8 <_ZN5CGPIO9gpio_initEv+0xa0>)
 8001598:	601c      	str	r4, [r3, #0]
 800159a:	b002      	add	sp, #8
 800159c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80015a0:	48000400 	.word	0x48000400
 80015a4:	20001018 	.word	0x20001018
 80015a8:	2000101c 	.word	0x2000101c

080015ac <_ZN5CGPIO7gpio_onEm>:
 80015ac:	2908      	cmp	r1, #8
 80015ae:	d005      	beq.n	80015bc <_ZN5CGPIO7gpio_onEm+0x10>
 80015b0:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80015b4:	d105      	bne.n	80015c2 <_ZN5CGPIO7gpio_onEm+0x16>
 80015b6:	4b03      	ldr	r3, [pc, #12]	; (80015c4 <_ZN5CGPIO7gpio_onEm+0x18>)
 80015b8:	6199      	str	r1, [r3, #24]
 80015ba:	4770      	bx	lr
 80015bc:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80015c0:	8519      	strh	r1, [r3, #40]	; 0x28
 80015c2:	4770      	bx	lr
 80015c4:	48000400 	.word	0x48000400

080015c8 <_ZN5CGPIO8gpio_offEm>:
 80015c8:	2908      	cmp	r1, #8
 80015ca:	d005      	beq.n	80015d8 <_ZN5CGPIO8gpio_offEm+0x10>
 80015cc:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 80015d0:	d105      	bne.n	80015de <_ZN5CGPIO8gpio_offEm+0x16>
 80015d2:	4b03      	ldr	r3, [pc, #12]	; (80015e0 <_ZN5CGPIO8gpio_offEm+0x18>)
 80015d4:	8519      	strh	r1, [r3, #40]	; 0x28
 80015d6:	4770      	bx	lr
 80015d8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80015dc:	6199      	str	r1, [r3, #24]
 80015de:	4770      	bx	lr
 80015e0:	48000400 	.word	0x48000400

080015e4 <_ZN5CGPIO7gpio_inEm>:
 80015e4:	4b02      	ldr	r3, [pc, #8]	; (80015f0 <_ZN5CGPIO7gpio_inEm+0xc>)
 80015e6:	8a18      	ldrh	r0, [r3, #16]
 80015e8:	b280      	uxth	r0, r0
 80015ea:	ea21 0000 	bic.w	r0, r1, r0
 80015ee:	4770      	bx	lr
 80015f0:	48000400 	.word	0x48000400

080015f4 <EXTI9_5_IRQHandler>:
 80015f4:	4a03      	ldr	r2, [pc, #12]	; (8001604 <EXTI9_5_IRQHandler+0x10>)
 80015f6:	6813      	ldr	r3, [r2, #0]
 80015f8:	2006      	movs	r0, #6
 80015fa:	3301      	adds	r3, #1
 80015fc:	6013      	str	r3, [r2, #0]
 80015fe:	f001 b9c3 	b.w	8002988 <EXTI_ClearITPendingBit>
 8001602:	bf00      	nop
 8001604:	20001018 	.word	0x20001018

08001608 <EXTI15_10_IRQHandler>:
 8001608:	4a03      	ldr	r2, [pc, #12]	; (8001618 <EXTI15_10_IRQHandler+0x10>)
 800160a:	6813      	ldr	r3, [r2, #0]
 800160c:	200c      	movs	r0, #12
 800160e:	3301      	adds	r3, #1
 8001610:	6013      	str	r3, [r2, #0]
 8001612:	f001 b9b9 	b.w	8002988 <EXTI_ClearITPendingBit>
 8001616:	bf00      	nop
 8001618:	2000101c 	.word	0x2000101c

0800161c <_ZN9CTerminal12clear_bufferEv>:
 800161c:	4a05      	ldr	r2, [pc, #20]	; (8001634 <_ZN9CTerminal12clear_bufferEv+0x18>)
 800161e:	2300      	movs	r3, #0
 8001620:	6013      	str	r3, [r2, #0]
 8001622:	4a05      	ldr	r2, [pc, #20]	; (8001638 <_ZN9CTerminal12clear_bufferEv+0x1c>)
 8001624:	6013      	str	r3, [r2, #0]
 8001626:	4a05      	ldr	r2, [pc, #20]	; (800163c <_ZN9CTerminal12clear_bufferEv+0x20>)
 8001628:	2100      	movs	r1, #0
 800162a:	54d1      	strb	r1, [r2, r3]
 800162c:	3301      	adds	r3, #1
 800162e:	2b10      	cmp	r3, #16
 8001630:	d1f9      	bne.n	8001626 <_ZN9CTerminal12clear_bufferEv+0xa>
 8001632:	4770      	bx	lr
 8001634:	20001020 	.word	0x20001020
 8001638:	20001034 	.word	0x20001034
 800163c:	20001024 	.word	0x20001024

08001640 <_ZN9CTerminal13terminal_initEv>:
 8001640:	b570      	push	{r4, r5, r6, lr}
 8001642:	b08a      	sub	sp, #40	; 0x28
 8001644:	f7ff ffea 	bl	800161c <_ZN9CTerminal12clear_bufferEv>
 8001648:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800164c:	2101      	movs	r1, #1
 800164e:	f000 ff3b 	bl	80024c8 <RCC_AHBPeriphClockCmd>
 8001652:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001656:	2101      	movs	r1, #1
 8001658:	f000 ff44 	bl	80024e4 <RCC_APB2PeriphClockCmd>
 800165c:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001660:	9302      	str	r3, [sp, #8]
 8001662:	2302      	movs	r3, #2
 8001664:	2400      	movs	r4, #0
 8001666:	f88d 300c 	strb.w	r3, [sp, #12]
 800166a:	a902      	add	r1, sp, #8
 800166c:	2303      	movs	r3, #3
 800166e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001672:	f88d 300d 	strb.w	r3, [sp, #13]
 8001676:	f88d 400e 	strb.w	r4, [sp, #14]
 800167a:	f88d 400f 	strb.w	r4, [sp, #15]
 800167e:	f001 f98f 	bl	80029a0 <GPIO_Init>
 8001682:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001686:	2109      	movs	r1, #9
 8001688:	2207      	movs	r2, #7
 800168a:	f001 f9cf 	bl	8002a2c <GPIO_PinAFConfig>
 800168e:	4d18      	ldr	r5, [pc, #96]	; (80016f0 <_ZN9CTerminal13terminal_initEv+0xb0>)
 8001690:	2207      	movs	r2, #7
 8001692:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001696:	210a      	movs	r1, #10
 8001698:	f001 f9c8 	bl	8002a2c <GPIO_PinAFConfig>
 800169c:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 80016a0:	9304      	str	r3, [sp, #16]
 80016a2:	4628      	mov	r0, r5
 80016a4:	230c      	movs	r3, #12
 80016a6:	a904      	add	r1, sp, #16
 80016a8:	9308      	str	r3, [sp, #32]
 80016aa:	9405      	str	r4, [sp, #20]
 80016ac:	9406      	str	r4, [sp, #24]
 80016ae:	9407      	str	r4, [sp, #28]
 80016b0:	9409      	str	r4, [sp, #36]	; 0x24
 80016b2:	f000 fffb 	bl	80026ac <USART_Init>
 80016b6:	4628      	mov	r0, r5
 80016b8:	2101      	movs	r1, #1
 80016ba:	f001 f859 	bl	8002770 <USART_Cmd>
 80016be:	2201      	movs	r2, #1
 80016c0:	4628      	mov	r0, r5
 80016c2:	490c      	ldr	r1, [pc, #48]	; (80016f4 <_ZN9CTerminal13terminal_initEv+0xb4>)
 80016c4:	f001 f864 	bl	8002790 <USART_ITConfig>
 80016c8:	2601      	movs	r6, #1
 80016ca:	2325      	movs	r3, #37	; 0x25
 80016cc:	a801      	add	r0, sp, #4
 80016ce:	f88d 3004 	strb.w	r3, [sp, #4]
 80016d2:	f88d 4005 	strb.w	r4, [sp, #5]
 80016d6:	f88d 4006 	strb.w	r4, [sp, #6]
 80016da:	f88d 6007 	strb.w	r6, [sp, #7]
 80016de:	f001 f919 	bl	8002914 <NVIC_Init>
 80016e2:	4628      	mov	r0, r5
 80016e4:	4631      	mov	r1, r6
 80016e6:	f001 f843 	bl	8002770 <USART_Cmd>
 80016ea:	4620      	mov	r0, r4
 80016ec:	b00a      	add	sp, #40	; 0x28
 80016ee:	bd70      	pop	{r4, r5, r6, pc}
 80016f0:	40013800 	.word	0x40013800
 80016f4:	00050105 	.word	0x00050105

080016f8 <USART1_IRQHandler>:
 80016f8:	b508      	push	{r3, lr}
 80016fa:	480d      	ldr	r0, [pc, #52]	; (8001730 <USART1_IRQHandler+0x38>)
 80016fc:	490d      	ldr	r1, [pc, #52]	; (8001734 <USART1_IRQHandler+0x3c>)
 80016fe:	f001 f861 	bl	80027c4 <USART_GetITStatus>
 8001702:	b178      	cbz	r0, 8001724 <USART1_IRQHandler+0x2c>
 8001704:	480a      	ldr	r0, [pc, #40]	; (8001730 <USART1_IRQHandler+0x38>)
 8001706:	f001 f83e 	bl	8002786 <USART_ReceiveData>
 800170a:	4b0b      	ldr	r3, [pc, #44]	; (8001738 <USART1_IRQHandler+0x40>)
 800170c:	490b      	ldr	r1, [pc, #44]	; (800173c <USART1_IRQHandler+0x44>)
 800170e:	681a      	ldr	r2, [r3, #0]
 8001710:	b2c0      	uxtb	r0, r0
 8001712:	5488      	strb	r0, [r1, r2]
 8001714:	681a      	ldr	r2, [r3, #0]
 8001716:	3201      	adds	r2, #1
 8001718:	601a      	str	r2, [r3, #0]
 800171a:	681a      	ldr	r2, [r3, #0]
 800171c:	2a0f      	cmp	r2, #15
 800171e:	bf84      	itt	hi
 8001720:	2200      	movhi	r2, #0
 8001722:	601a      	strhi	r2, [r3, #0]
 8001724:	4802      	ldr	r0, [pc, #8]	; (8001730 <USART1_IRQHandler+0x38>)
 8001726:	4903      	ldr	r1, [pc, #12]	; (8001734 <USART1_IRQHandler+0x3c>)
 8001728:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800172c:	f001 b868 	b.w	8002800 <USART_ClearITPendingBit>
 8001730:	40013800 	.word	0x40013800
 8001734:	00050105 	.word	0x00050105
 8001738:	20001020 	.word	0x20001020
 800173c:	20001024 	.word	0x20001024

08001740 <_ZN9CTerminal7putcharEc>:
 8001740:	4b04      	ldr	r3, [pc, #16]	; (8001754 <_ZN9CTerminal7putcharEc+0x14>)
 8001742:	69da      	ldr	r2, [r3, #28]
 8001744:	0612      	lsls	r2, r2, #24
 8001746:	d401      	bmi.n	800174c <_ZN9CTerminal7putcharEc+0xc>
 8001748:	bf00      	nop
 800174a:	e7f9      	b.n	8001740 <_ZN9CTerminal7putcharEc>
 800174c:	b289      	uxth	r1, r1
 800174e:	8519      	strh	r1, [r3, #40]	; 0x28
 8001750:	4770      	bx	lr
 8001752:	bf00      	nop
 8001754:	40013800 	.word	0x40013800

08001758 <_ZN9CTerminal4putsEPc>:
 8001758:	b538      	push	{r3, r4, r5, lr}
 800175a:	4605      	mov	r5, r0
 800175c:	1e4c      	subs	r4, r1, #1
 800175e:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001762:	b119      	cbz	r1, 800176c <_ZN9CTerminal4putsEPc+0x14>
 8001764:	4628      	mov	r0, r5
 8001766:	f7ff ffeb 	bl	8001740 <_ZN9CTerminal7putcharEc>
 800176a:	e7f8      	b.n	800175e <_ZN9CTerminal4putsEPc+0x6>
 800176c:	2001      	movs	r0, #1
 800176e:	bd38      	pop	{r3, r4, r5, pc}

08001770 <_ZN9CTerminal4putiEl>:
 8001770:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001772:	1e0b      	subs	r3, r1, #0
 8001774:	f04f 0200 	mov.w	r2, #0
 8001778:	bfba      	itte	lt
 800177a:	425b      	neglt	r3, r3
 800177c:	2501      	movlt	r5, #1
 800177e:	4615      	movge	r5, r2
 8001780:	f88d 200f 	strb.w	r2, [sp, #15]
 8001784:	210a      	movs	r1, #10
 8001786:	220a      	movs	r2, #10
 8001788:	ac01      	add	r4, sp, #4
 800178a:	fb93 f6f2 	sdiv	r6, r3, r2
 800178e:	fb02 3316 	mls	r3, r2, r6, r3
 8001792:	3330      	adds	r3, #48	; 0x30
 8001794:	550b      	strb	r3, [r1, r4]
 8001796:	1e4a      	subs	r2, r1, #1
 8001798:	4633      	mov	r3, r6
 800179a:	b10e      	cbz	r6, 80017a0 <_ZN9CTerminal4putiEl+0x30>
 800179c:	4611      	mov	r1, r2
 800179e:	e7f2      	b.n	8001786 <_ZN9CTerminal4putiEl+0x16>
 80017a0:	b12d      	cbz	r5, 80017ae <_ZN9CTerminal4putiEl+0x3e>
 80017a2:	ab04      	add	r3, sp, #16
 80017a4:	4413      	add	r3, r2
 80017a6:	212d      	movs	r1, #45	; 0x2d
 80017a8:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80017ac:	4611      	mov	r1, r2
 80017ae:	4421      	add	r1, r4
 80017b0:	f7ff ffd2 	bl	8001758 <_ZN9CTerminal4putsEPc>
 80017b4:	b004      	add	sp, #16
 80017b6:	bd70      	pop	{r4, r5, r6, pc}

080017b8 <_ZN9CTerminal5putuiEm>:
 80017b8:	b530      	push	{r4, r5, lr}
 80017ba:	b085      	sub	sp, #20
 80017bc:	2300      	movs	r3, #0
 80017be:	f88d 300f 	strb.w	r3, [sp, #15]
 80017c2:	220a      	movs	r2, #10
 80017c4:	230a      	movs	r3, #10
 80017c6:	ac01      	add	r4, sp, #4
 80017c8:	fbb1 f5f3 	udiv	r5, r1, r3
 80017cc:	fb03 1315 	mls	r3, r3, r5, r1
 80017d0:	3330      	adds	r3, #48	; 0x30
 80017d2:	5513      	strb	r3, [r2, r4]
 80017d4:	4629      	mov	r1, r5
 80017d6:	1e53      	subs	r3, r2, #1
 80017d8:	b10d      	cbz	r5, 80017de <_ZN9CTerminal5putuiEm+0x26>
 80017da:	461a      	mov	r2, r3
 80017dc:	e7f2      	b.n	80017c4 <_ZN9CTerminal5putuiEm+0xc>
 80017de:	18a1      	adds	r1, r4, r2
 80017e0:	f7ff ffba 	bl	8001758 <_ZN9CTerminal4putsEPc>
 80017e4:	b005      	add	sp, #20
 80017e6:	bd30      	pop	{r4, r5, pc}

080017e8 <_ZN9CTerminal4putxEm>:
 80017e8:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80017ea:	2300      	movs	r3, #0
 80017ec:	f88d 300f 	strb.w	r3, [sp, #15]
 80017f0:	220a      	movs	r2, #10
 80017f2:	f001 030f 	and.w	r3, r1, #15
 80017f6:	2b09      	cmp	r3, #9
 80017f8:	ac01      	add	r4, sp, #4
 80017fa:	bfd4      	ite	le
 80017fc:	3330      	addle	r3, #48	; 0x30
 80017fe:	3357      	addgt	r3, #87	; 0x57
 8001800:	0909      	lsrs	r1, r1, #4
 8001802:	54a3      	strb	r3, [r4, r2]
 8001804:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001808:	d001      	beq.n	800180e <_ZN9CTerminal4putxEm+0x26>
 800180a:	461a      	mov	r2, r3
 800180c:	e7f1      	b.n	80017f2 <_ZN9CTerminal4putxEm+0xa>
 800180e:	18a1      	adds	r1, r4, r2
 8001810:	f7ff ffa2 	bl	8001758 <_ZN9CTerminal4putsEPc>
 8001814:	b004      	add	sp, #16
 8001816:	bd10      	pop	{r4, pc}

08001818 <_ZN9CTerminal4putfEfj>:
 8001818:	b538      	push	{r3, r4, r5, lr}
 800181a:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 800181e:	ed2d 8b02 	vpush	{d8}
 8001822:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001826:	4605      	mov	r5, r0
 8001828:	bf48      	it	mi
 800182a:	eeb1 0a40 	vnegmi.f32	s0, s0
 800182e:	4608      	mov	r0, r1
 8001830:	f04f 0301 	mov.w	r3, #1
 8001834:	bf4c      	ite	mi
 8001836:	212d      	movmi	r1, #45	; 0x2d
 8001838:	2120      	movpl	r1, #32
 800183a:	2200      	movs	r2, #0
 800183c:	4282      	cmp	r2, r0
 800183e:	d003      	beq.n	8001848 <_ZN9CTerminal4putfEfj+0x30>
 8001840:	240a      	movs	r4, #10
 8001842:	4363      	muls	r3, r4
 8001844:	3201      	adds	r2, #1
 8001846:	e7f9      	b.n	800183c <_ZN9CTerminal4putfEfj+0x24>
 8001848:	eebd 8ac0 	vcvt.s32.f32	s16, s0
 800184c:	4628      	mov	r0, r5
 800184e:	eef8 7ac8 	vcvt.f32.s32	s15, s16
 8001852:	ee30 0a67 	vsub.f32	s0, s0, s15
 8001856:	ee07 3a90 	vmov	s15, r3
 800185a:	eef8 7a67 	vcvt.f32.u32	s15, s15
 800185e:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001862:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001866:	ee17 4a90 	vmov	r4, s15
 800186a:	f7ff ff69 	bl	8001740 <_ZN9CTerminal7putcharEc>
 800186e:	4628      	mov	r0, r5
 8001870:	ee18 1a10 	vmov	r1, s16
 8001874:	f7ff ff7c 	bl	8001770 <_ZN9CTerminal4putiEl>
 8001878:	4628      	mov	r0, r5
 800187a:	212e      	movs	r1, #46	; 0x2e
 800187c:	f7ff ff60 	bl	8001740 <_ZN9CTerminal7putcharEc>
 8001880:	ecbd 8b02 	vpop	{d8}
 8001884:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 8001888:	4628      	mov	r0, r5
 800188a:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 800188e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001892:	f7ff bf6d 	b.w	8001770 <_ZN9CTerminal4putiEl>

08001896 <_ZN9CTerminal6printfEPKcz>:
 8001896:	b40e      	push	{r1, r2, r3}
 8001898:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 800189a:	ab07      	add	r3, sp, #28
 800189c:	4604      	mov	r4, r0
 800189e:	f853 6b04 	ldr.w	r6, [r3], #4
 80018a2:	9301      	str	r3, [sp, #4]
 80018a4:	2500      	movs	r5, #0
 80018a6:	5d71      	ldrb	r1, [r6, r5]
 80018a8:	2900      	cmp	r1, #0
 80018aa:	d054      	beq.n	8001956 <_ZN9CTerminal6printfEPKcz+0xc0>
 80018ac:	2925      	cmp	r1, #37	; 0x25
 80018ae:	d004      	beq.n	80018ba <_ZN9CTerminal6printfEPKcz+0x24>
 80018b0:	4620      	mov	r0, r4
 80018b2:	f7ff ff45 	bl	8001740 <_ZN9CTerminal7putcharEc>
 80018b6:	3501      	adds	r5, #1
 80018b8:	e7f5      	b.n	80018a6 <_ZN9CTerminal6printfEPKcz+0x10>
 80018ba:	1973      	adds	r3, r6, r5
 80018bc:	7859      	ldrb	r1, [r3, #1]
 80018be:	2969      	cmp	r1, #105	; 0x69
 80018c0:	d016      	beq.n	80018f0 <_ZN9CTerminal6printfEPKcz+0x5a>
 80018c2:	d807      	bhi.n	80018d4 <_ZN9CTerminal6printfEPKcz+0x3e>
 80018c4:	2963      	cmp	r1, #99	; 0x63
 80018c6:	d02b      	beq.n	8001920 <_ZN9CTerminal6printfEPKcz+0x8a>
 80018c8:	2966      	cmp	r1, #102	; 0x66
 80018ca:	d031      	beq.n	8001930 <_ZN9CTerminal6printfEPKcz+0x9a>
 80018cc:	2925      	cmp	r1, #37	; 0x25
 80018ce:	d140      	bne.n	8001952 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018d0:	4620      	mov	r0, r4
 80018d2:	e02a      	b.n	800192a <_ZN9CTerminal6printfEPKcz+0x94>
 80018d4:	2975      	cmp	r1, #117	; 0x75
 80018d6:	d013      	beq.n	8001900 <_ZN9CTerminal6printfEPKcz+0x6a>
 80018d8:	2978      	cmp	r1, #120	; 0x78
 80018da:	d019      	beq.n	8001910 <_ZN9CTerminal6printfEPKcz+0x7a>
 80018dc:	2973      	cmp	r1, #115	; 0x73
 80018de:	d138      	bne.n	8001952 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018e0:	9b01      	ldr	r3, [sp, #4]
 80018e2:	4620      	mov	r0, r4
 80018e4:	1d1a      	adds	r2, r3, #4
 80018e6:	6819      	ldr	r1, [r3, #0]
 80018e8:	9201      	str	r2, [sp, #4]
 80018ea:	f7ff ff35 	bl	8001758 <_ZN9CTerminal4putsEPc>
 80018ee:	e030      	b.n	8001952 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018f0:	9b01      	ldr	r3, [sp, #4]
 80018f2:	4620      	mov	r0, r4
 80018f4:	1d1a      	adds	r2, r3, #4
 80018f6:	6819      	ldr	r1, [r3, #0]
 80018f8:	9201      	str	r2, [sp, #4]
 80018fa:	f7ff ff39 	bl	8001770 <_ZN9CTerminal4putiEl>
 80018fe:	e028      	b.n	8001952 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001900:	9b01      	ldr	r3, [sp, #4]
 8001902:	4620      	mov	r0, r4
 8001904:	1d1a      	adds	r2, r3, #4
 8001906:	6819      	ldr	r1, [r3, #0]
 8001908:	9201      	str	r2, [sp, #4]
 800190a:	f7ff ff55 	bl	80017b8 <_ZN9CTerminal5putuiEm>
 800190e:	e020      	b.n	8001952 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001910:	9b01      	ldr	r3, [sp, #4]
 8001912:	4620      	mov	r0, r4
 8001914:	1d1a      	adds	r2, r3, #4
 8001916:	6819      	ldr	r1, [r3, #0]
 8001918:	9201      	str	r2, [sp, #4]
 800191a:	f7ff ff65 	bl	80017e8 <_ZN9CTerminal4putxEm>
 800191e:	e018      	b.n	8001952 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001920:	9b01      	ldr	r3, [sp, #4]
 8001922:	1d1a      	adds	r2, r3, #4
 8001924:	7819      	ldrb	r1, [r3, #0]
 8001926:	9201      	str	r2, [sp, #4]
 8001928:	4620      	mov	r0, r4
 800192a:	f7ff ff09 	bl	8001740 <_ZN9CTerminal7putcharEc>
 800192e:	e010      	b.n	8001952 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001930:	9b01      	ldr	r3, [sp, #4]
 8001932:	3307      	adds	r3, #7
 8001934:	f023 0307 	bic.w	r3, r3, #7
 8001938:	f103 0208 	add.w	r2, r3, #8
 800193c:	e9d3 0100 	ldrd	r0, r1, [r3]
 8001940:	9201      	str	r2, [sp, #4]
 8001942:	f001 fac9 	bl	8002ed8 <__aeabi_d2f>
 8001946:	2103      	movs	r1, #3
 8001948:	ee00 0a10 	vmov	s0, r0
 800194c:	4620      	mov	r0, r4
 800194e:	f7ff ff63 	bl	8001818 <_ZN9CTerminal4putfEfj>
 8001952:	3502      	adds	r5, #2
 8001954:	e7a7      	b.n	80018a6 <_ZN9CTerminal6printfEPKcz+0x10>
 8001956:	b003      	add	sp, #12
 8001958:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800195c:	b003      	add	sp, #12
 800195e:	4770      	bx	lr

08001960 <TIM4_IRQHandler>:
 8001960:	b538      	push	{r3, r4, r5, lr}
 8001962:	4837      	ldr	r0, [pc, #220]	; (8001a40 <TIM4_IRQHandler+0xe0>)
 8001964:	2101      	movs	r1, #1
 8001966:	f000 fe8f 	bl	8002688 <TIM_GetITStatus>
 800196a:	2800      	cmp	r0, #0
 800196c:	d067      	beq.n	8001a3e <TIM4_IRQHandler+0xde>
 800196e:	2101      	movs	r1, #1
 8001970:	4833      	ldr	r0, [pc, #204]	; (8001a40 <TIM4_IRQHandler+0xe0>)
 8001972:	f000 fe95 	bl	80026a0 <TIM_ClearITPendingBit>
 8001976:	4b33      	ldr	r3, [pc, #204]	; (8001a44 <TIM4_IRQHandler+0xe4>)
 8001978:	681a      	ldr	r2, [r3, #0]
 800197a:	3201      	adds	r2, #1
 800197c:	601a      	str	r2, [r3, #0]
 800197e:	4a32      	ldr	r2, [pc, #200]	; (8001a48 <TIM4_IRQHandler+0xe8>)
 8001980:	6811      	ldr	r1, [r2, #0]
 8001982:	461a      	mov	r2, r3
 8001984:	2905      	cmp	r1, #5
 8001986:	d85a      	bhi.n	8001a3e <TIM4_IRQHandler+0xde>
 8001988:	e8df f001 	tbb	[pc, r1]
 800198c:	1c03161a 	.word	0x1c03161a
 8001990:	3e20      	.short	0x3e20
 8001992:	4b2e      	ldr	r3, [pc, #184]	; (8001a4c <TIM4_IRQHandler+0xec>)
 8001994:	6819      	ldr	r1, [r3, #0]
 8001996:	2314      	movs	r3, #20
 8001998:	434b      	muls	r3, r1
 800199a:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 800199e:	fbb3 f3f1 	udiv	r3, r3, r1
 80019a2:	6811      	ldr	r1, [r2, #0]
 80019a4:	2b01      	cmp	r3, #1
 80019a6:	bf98      	it	ls
 80019a8:	2302      	movls	r3, #2
 80019aa:	fbb1 f2f3 	udiv	r2, r1, r3
 80019ae:	fb03 1212 	mls	r2, r3, r2, r1
 80019b2:	ebb2 0f53 	cmp.w	r2, r3, lsr #1
 80019b6:	d101      	bne.n	80019bc <TIM4_IRQHandler+0x5c>
 80019b8:	4825      	ldr	r0, [pc, #148]	; (8001a50 <TIM4_IRQHandler+0xf0>)
 80019ba:	e01c      	b.n	80019f6 <TIM4_IRQHandler+0x96>
 80019bc:	2a00      	cmp	r2, #0
 80019be:	d13e      	bne.n	8001a3e <TIM4_IRQHandler+0xde>
 80019c0:	4823      	ldr	r0, [pc, #140]	; (8001a50 <TIM4_IRQHandler+0xf0>)
 80019c2:	e01a      	b.n	80019fa <TIM4_IRQHandler+0x9a>
 80019c4:	4b21      	ldr	r3, [pc, #132]	; (8001a4c <TIM4_IRQHandler+0xec>)
 80019c6:	4822      	ldr	r0, [pc, #136]	; (8001a50 <TIM4_IRQHandler+0xf0>)
 80019c8:	6819      	ldr	r1, [r3, #0]
 80019ca:	e017      	b.n	80019fc <TIM4_IRQHandler+0x9c>
 80019cc:	6813      	ldr	r3, [r2, #0]
 80019ce:	f003 0307 	and.w	r3, r3, #7
 80019d2:	2b04      	cmp	r3, #4
 80019d4:	d116      	bne.n	8001a04 <TIM4_IRQHandler+0xa4>
 80019d6:	481f      	ldr	r0, [pc, #124]	; (8001a54 <TIM4_IRQHandler+0xf4>)
 80019d8:	4a1c      	ldr	r2, [pc, #112]	; (8001a4c <TIM4_IRQHandler+0xec>)
 80019da:	7803      	ldrb	r3, [r0, #0]
 80019dc:	6812      	ldr	r2, [r2, #0]
 80019de:	1c59      	adds	r1, r3, #1
 80019e0:	1d53      	adds	r3, r2, #5
 80019e2:	fbb1 f2f3 	udiv	r2, r1, r3
 80019e6:	fb03 1312 	mls	r3, r3, r2, r1
 80019ea:	b2db      	uxtb	r3, r3
 80019ec:	7003      	strb	r3, [r0, #0]
 80019ee:	7803      	ldrb	r3, [r0, #0]
 80019f0:	4817      	ldr	r0, [pc, #92]	; (8001a50 <TIM4_IRQHandler+0xf0>)
 80019f2:	2b04      	cmp	r3, #4
 80019f4:	d901      	bls.n	80019fa <TIM4_IRQHandler+0x9a>
 80019f6:	2140      	movs	r1, #64	; 0x40
 80019f8:	e000      	b.n	80019fc <TIM4_IRQHandler+0x9c>
 80019fa:	2100      	movs	r1, #0
 80019fc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001a00:	f000 be28 	b.w	8002654 <TIM_SetCompare2>
 8001a04:	b9db      	cbnz	r3, 8001a3e <TIM4_IRQHandler+0xde>
 8001a06:	e7db      	b.n	80019c0 <TIM4_IRQHandler+0x60>
 8001a08:	4b10      	ldr	r3, [pc, #64]	; (8001a4c <TIM4_IRQHandler+0xec>)
 8001a0a:	4d12      	ldr	r5, [pc, #72]	; (8001a54 <TIM4_IRQHandler+0xf4>)
 8001a0c:	681b      	ldr	r3, [r3, #0]
 8001a0e:	4810      	ldr	r0, [pc, #64]	; (8001a50 <TIM4_IRQHandler+0xf0>)
 8001a10:	2414      	movs	r4, #20
 8001a12:	fb03 4404 	mla	r4, r3, r4, r4
 8001a16:	f44f 33fa 	mov.w	r3, #128000	; 0x1f400
 8001a1a:	fbb3 f4f4 	udiv	r4, r3, r4
 8001a1e:	782b      	ldrb	r3, [r5, #0]
 8001a20:	7829      	ldrb	r1, [r5, #0]
 8001a22:	2c00      	cmp	r4, #0
 8001a24:	bf08      	it	eq
 8001a26:	2401      	moveq	r4, #1
 8001a28:	2b3f      	cmp	r3, #63	; 0x3f
 8001a2a:	bf88      	it	hi
 8001a2c:	f1c1 0180 	rsbhi	r1, r1, #128	; 0x80
 8001a30:	f000 fe10 	bl	8002654 <TIM_SetCompare2>
 8001a34:	782b      	ldrb	r3, [r5, #0]
 8001a36:	441c      	add	r4, r3
 8001a38:	f004 047f 	and.w	r4, r4, #127	; 0x7f
 8001a3c:	702c      	strb	r4, [r5, #0]
 8001a3e:	bd38      	pop	{r3, r4, r5, pc}
 8001a40:	40000800 	.word	0x40000800
 8001a44:	20001040 	.word	0x20001040
 8001a48:	20001044 	.word	0x20001044
 8001a4c:	20001038 	.word	0x20001038
 8001a50:	40014000 	.word	0x40014000
 8001a54:	2000103c 	.word	0x2000103c

08001a58 <_ZN5CILED4initEv>:
 8001a58:	4b4c      	ldr	r3, [pc, #304]	; (8001b8c <_ZN5CILED4initEv+0x134>)
 8001a5a:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001a5e:	2400      	movs	r4, #0
 8001a60:	601c      	str	r4, [r3, #0]
 8001a62:	4b4b      	ldr	r3, [pc, #300]	; (8001b90 <_ZN5CILED4initEv+0x138>)
 8001a64:	4e4b      	ldr	r6, [pc, #300]	; (8001b94 <_ZN5CILED4initEv+0x13c>)
 8001a66:	601c      	str	r4, [r3, #0]
 8001a68:	4b4b      	ldr	r3, [pc, #300]	; (8001b98 <_ZN5CILED4initEv+0x140>)
 8001a6a:	f8df 8138 	ldr.w	r8, [pc, #312]	; 8001ba4 <_ZN5CILED4initEv+0x14c>
 8001a6e:	601c      	str	r4, [r3, #0]
 8001a70:	4b4a      	ldr	r3, [pc, #296]	; (8001b9c <_ZN5CILED4initEv+0x144>)
 8001a72:	b08d      	sub	sp, #52	; 0x34
 8001a74:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001a78:	2101      	movs	r1, #1
 8001a7a:	2501      	movs	r5, #1
 8001a7c:	701c      	strb	r4, [r3, #0]
 8001a7e:	f44f 4700 	mov.w	r7, #32768	; 0x8000
 8001a82:	f000 fd21 	bl	80024c8 <RCC_AHBPeriphClockCmd>
 8001a86:	f04f 0903 	mov.w	r9, #3
 8001a8a:	4630      	mov	r0, r6
 8001a8c:	a902      	add	r1, sp, #8
 8001a8e:	9702      	str	r7, [sp, #8]
 8001a90:	f88d 500c 	strb.w	r5, [sp, #12]
 8001a94:	f88d 400e 	strb.w	r4, [sp, #14]
 8001a98:	f88d 900d 	strb.w	r9, [sp, #13]
 8001a9c:	f88d 400f 	strb.w	r4, [sp, #15]
 8001aa0:	f000 ff7e 	bl	80029a0 <GPIO_Init>
 8001aa4:	4629      	mov	r1, r5
 8001aa6:	8537      	strh	r7, [r6, #40]	; 0x28
 8001aa8:	2004      	movs	r0, #4
 8001aaa:	f000 fd29 	bl	8002500 <RCC_APB1PeriphClockCmd>
 8001aae:	231e      	movs	r3, #30
 8001ab0:	a801      	add	r0, sp, #4
 8001ab2:	f88d 3004 	strb.w	r3, [sp, #4]
 8001ab6:	f88d 4005 	strb.w	r4, [sp, #5]
 8001aba:	f88d 5006 	strb.w	r5, [sp, #6]
 8001abe:	f88d 5007 	strb.w	r5, [sp, #7]
 8001ac2:	f000 ff27 	bl	8002914 <NVIC_Init>
 8001ac6:	4629      	mov	r1, r5
 8001ac8:	2004      	movs	r0, #4
 8001aca:	f000 fd19 	bl	8002500 <RCC_APB1PeriphClockCmd>
 8001ace:	f241 3388 	movw	r3, #5000	; 0x1388
 8001ad2:	9305      	str	r3, [sp, #20]
 8001ad4:	4640      	mov	r0, r8
 8001ad6:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8001ada:	a904      	add	r1, sp, #16
 8001adc:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001ae0:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001ae4:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001ae8:	f000 fd18 	bl	800251c <TIM_TimeBaseInit>
 8001aec:	462a      	mov	r2, r5
 8001aee:	4640      	mov	r0, r8
 8001af0:	4629      	mov	r1, r5
 8001af2:	f000 fdbd 	bl	8002670 <TIM_ITConfig>
 8001af6:	4640      	mov	r0, r8
 8001af8:	4629      	mov	r1, r5
 8001afa:	f000 fd5f 	bl	80025bc <TIM_Cmd>
 8001afe:	9702      	str	r7, [sp, #8]
 8001b00:	4630      	mov	r0, r6
 8001b02:	2702      	movs	r7, #2
 8001b04:	a902      	add	r1, sp, #8
 8001b06:	f88d 700c 	strb.w	r7, [sp, #12]
 8001b0a:	f88d 900d 	strb.w	r9, [sp, #13]
 8001b0e:	f000 ff47 	bl	80029a0 <GPIO_Init>
 8001b12:	462a      	mov	r2, r5
 8001b14:	4630      	mov	r0, r6
 8001b16:	210f      	movs	r1, #15
 8001b18:	f000 ff88 	bl	8002a2c <GPIO_PinAFConfig>
 8001b1c:	4e20      	ldr	r6, [pc, #128]	; (8001ba0 <_ZN5CILED4initEv+0x148>)
 8001b1e:	4629      	mov	r1, r5
 8001b20:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8001b24:	f000 fcde 	bl	80024e4 <RCC_APB2PeriphClockCmd>
 8001b28:	f44f 53e1 	mov.w	r3, #7200	; 0x1c20
 8001b2c:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001b30:	4630      	mov	r0, r6
 8001b32:	2341      	movs	r3, #65	; 0x41
 8001b34:	a904      	add	r1, sp, #16
 8001b36:	9305      	str	r3, [sp, #20]
 8001b38:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001b3c:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001b40:	f8ad 401a 	strh.w	r4, [sp, #26]
 8001b44:	f000 fcea 	bl	800251c <TIM_TimeBaseInit>
 8001b48:	4630      	mov	r0, r6
 8001b4a:	4629      	mov	r1, r5
 8001b4c:	f000 fd36 	bl	80025bc <TIM_Cmd>
 8001b50:	4630      	mov	r0, r6
 8001b52:	4629      	mov	r1, r5
 8001b54:	f000 fd81 	bl	800265a <TIM_CtrlPWMOutputs>
 8001b58:	2370      	movs	r3, #112	; 0x70
 8001b5a:	9307      	str	r3, [sp, #28]
 8001b5c:	2304      	movs	r3, #4
 8001b5e:	f8ad 3022 	strh.w	r3, [sp, #34]	; 0x22
 8001b62:	4630      	mov	r0, r6
 8001b64:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001b68:	a907      	add	r1, sp, #28
 8001b6a:	f8ad 5020 	strh.w	r5, [sp, #32]
 8001b6e:	9409      	str	r4, [sp, #36]	; 0x24
 8001b70:	f8ad 7028 	strh.w	r7, [sp, #40]	; 0x28
 8001b74:	f8ad 402a 	strh.w	r4, [sp, #42]	; 0x2a
 8001b78:	f8ad 302c 	strh.w	r3, [sp, #44]	; 0x2c
 8001b7c:	f8ad 402e 	strh.w	r4, [sp, #46]	; 0x2e
 8001b80:	f000 fd2a 	bl	80025d8 <TIM_OC2Init>
 8001b84:	b00d      	add	sp, #52	; 0x34
 8001b86:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001b8a:	bf00      	nop
 8001b8c:	20001044 	.word	0x20001044
 8001b90:	20001038 	.word	0x20001038
 8001b94:	48000400 	.word	0x48000400
 8001b98:	20001040 	.word	0x20001040
 8001b9c:	2000103c 	.word	0x2000103c
 8001ba0:	40014000 	.word	0x40014000
 8001ba4:	40000800 	.word	0x40000800

08001ba8 <_ZN5CILED3setEhj>:
 8001ba8:	4b04      	ldr	r3, [pc, #16]	; (8001bbc <_ZN5CILED3setEhj+0x14>)
 8001baa:	6019      	str	r1, [r3, #0]
 8001bac:	4b04      	ldr	r3, [pc, #16]	; (8001bc0 <_ZN5CILED3setEhj+0x18>)
 8001bae:	601a      	str	r2, [r3, #0]
 8001bb0:	4a04      	ldr	r2, [pc, #16]	; (8001bc4 <_ZN5CILED3setEhj+0x1c>)
 8001bb2:	2300      	movs	r3, #0
 8001bb4:	6013      	str	r3, [r2, #0]
 8001bb6:	4a04      	ldr	r2, [pc, #16]	; (8001bc8 <_ZN5CILED3setEhj+0x20>)
 8001bb8:	7013      	strb	r3, [r2, #0]
 8001bba:	4770      	bx	lr
 8001bbc:	20001044 	.word	0x20001044
 8001bc0:	20001038 	.word	0x20001038
 8001bc4:	20001040 	.word	0x20001040
 8001bc8:	2000103c 	.word	0x2000103c

08001bcc <_ZN13CLinePositionC1Ev>:
 8001bcc:	2200      	movs	r2, #0
 8001bce:	6082      	str	r2, [r0, #8]
 8001bd0:	60c2      	str	r2, [r0, #12]
 8001bd2:	6102      	str	r2, [r0, #16]
 8001bd4:	6142      	str	r2, [r0, #20]
 8001bd6:	6042      	str	r2, [r0, #4]
 8001bd8:	2200      	movs	r2, #0
 8001bda:	7002      	strb	r2, [r0, #0]
 8001bdc:	4770      	bx	lr
	...

08001be0 <_ZN13CLinePosition7processEP10sRGBResult>:
 8001be0:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001be4:	2300      	movs	r3, #0
 8001be6:	f101 0816 	add.w	r8, r1, #22
 8001bea:	ed2d 8b02 	vpush	{d8}
 8001bee:	460d      	mov	r5, r1
 8001bf0:	4604      	mov	r4, r0
 8001bf2:	7003      	strb	r3, [r0, #0]
 8001bf4:	4641      	mov	r1, r8
 8001bf6:	461a      	mov	r2, r3
 8001bf8:	f103 000c 	add.w	r0, r3, #12
 8001bfc:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 8001c00:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 8001c04:	4286      	cmp	r6, r0
 8001c06:	bfb8      	it	lt
 8001c08:	4613      	movlt	r3, r2
 8001c0a:	3201      	adds	r2, #1
 8001c0c:	2a04      	cmp	r2, #4
 8001c0e:	d1f3      	bne.n	8001bf8 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 8001c10:	330c      	adds	r3, #12
 8001c12:	eddf 7a3b 	vldr	s15, [pc, #236]	; 8001d00 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 8001c16:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 8001c1a:	ee07 3a10 	vmov	s14, r3
 8001c1e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001c22:	eeb0 8a67 	vmov.f32	s16, s15
 8001c26:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001c2a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c2e:	d563      	bpl.n	8001cf8 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 8001c30:	f104 0608 	add.w	r6, r4, #8
 8001c34:	eddf 8a33 	vldr	s17, [pc, #204]	; 8001d04 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8001c38:	f104 0918 	add.w	r9, r4, #24
 8001c3c:	4637      	mov	r7, r6
 8001c3e:	f938 3f02 	ldrsh.w	r3, [r8, #2]!
 8001c42:	4831      	ldr	r0, [pc, #196]	; (8001d08 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 8001c44:	425b      	negs	r3, r3
 8001c46:	ee00 3a10 	vmov	s0, r3
 8001c4a:	eeb8 0ac0 	vcvt.f32.s32	s0, s0
 8001c4e:	eca7 0a01 	vstmia	r7!, {s0}
 8001c52:	f7fe fb7c 	bl	800034e <_ZN5CMath3absEf>
 8001c56:	eef4 8ac0 	vcmpe.f32	s17, s0
 8001c5a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c5e:	d506      	bpl.n	8001c6e <_ZN13CLinePosition7processEP10sRGBResult+0x8e>
 8001c60:	4829      	ldr	r0, [pc, #164]	; (8001d08 <_ZN13CLinePosition7processEP10sRGBResult+0x128>)
 8001c62:	ed17 0a01 	vldr	s0, [r7, #-4]
 8001c66:	f7fe fb72 	bl	800034e <_ZN5CMath3absEf>
 8001c6a:	eef0 8a40 	vmov.f32	s17, s0
 8001c6e:	454f      	cmp	r7, r9
 8001c70:	d1e5      	bne.n	8001c3e <_ZN13CLinePosition7processEP10sRGBResult+0x5e>
 8001c72:	edd6 7a00 	vldr	s15, [r6]
 8001c76:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 8001c7a:	ece6 7a01 	vstmia	r6!, {s15}
 8001c7e:	454e      	cmp	r6, r9
 8001c80:	d1f7      	bne.n	8001c72 <_ZN13CLinePosition7processEP10sRGBResult+0x92>
 8001c82:	2301      	movs	r3, #1
 8001c84:	7023      	strb	r3, [r4, #0]
 8001c86:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 8001c8a:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8001d00 <_ZN13CLinePosition7processEP10sRGBResult+0x120>
 8001c8e:	ee07 3a10 	vmov	s14, r3
 8001c92:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001c96:	eeb4 7ac8 	vcmpe.f32	s14, s16
 8001c9a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c9e:	d501      	bpl.n	8001ca4 <_ZN13CLinePosition7processEP10sRGBResult+0xc4>
 8001ca0:	4b1a      	ldr	r3, [pc, #104]	; (8001d0c <_ZN13CLinePosition7processEP10sRGBResult+0x12c>)
 8001ca2:	e028      	b.n	8001cf6 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8001ca4:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 8001ca8:	ee07 3a10 	vmov	s14, r3
 8001cac:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001cb0:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001cb4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001cb8:	d502      	bpl.n	8001cc0 <_ZN13CLinePosition7processEP10sRGBResult+0xe0>
 8001cba:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8001cbe:	e01a      	b.n	8001cf6 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8001cc0:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 8001cc4:	ee07 3a10 	vmov	s14, r3
 8001cc8:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001ccc:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001cd0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001cd4:	d502      	bpl.n	8001cdc <_ZN13CLinePosition7processEP10sRGBResult+0xfc>
 8001cd6:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8001cda:	e00c      	b.n	8001cf6 <_ZN13CLinePosition7processEP10sRGBResult+0x116>
 8001cdc:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 8001ce0:	ee07 3a10 	vmov	s14, r3
 8001ce4:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001ce8:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001cec:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001cf0:	d502      	bpl.n	8001cf8 <_ZN13CLinePosition7processEP10sRGBResult+0x118>
 8001cf2:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8001cf6:	6063      	str	r3, [r4, #4]
 8001cf8:	ecbd 8b02 	vpop	{d8}
 8001cfc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8001d00:	c2a00000 	.word	0xc2a00000
 8001d04:	38d1b717 	.word	0x38d1b717
 8001d08:	20000da8 	.word	0x20000da8
 8001d0c:	bf800000 	.word	0xbf800000

08001d10 <_ZN13CLinePosition7on_lineEv>:
 8001d10:	7800      	ldrb	r0, [r0, #0]
 8001d12:	4770      	bx	lr

08001d14 <_ZN13CLinePosition17get_line_positionEv>:
 8001d14:	ed90 0a01 	vldr	s0, [r0, #4]
 8001d18:	4770      	bx	lr

08001d1a <_ZN21CLearningLineFollower3runEv>:
 8001d1a:	4770      	bx	lr

08001d1c <_ZN5CDemo4initEv>:
 8001d1c:	4770      	bx	lr
	...

08001d20 <_ZN5CDemo10blink_taskEv>:
 8001d20:	b508      	push	{r3, lr}
 8001d22:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d26:	480d      	ldr	r0, [pc, #52]	; (8001d5c <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d28:	f7ff fc40 	bl	80015ac <_ZN5CGPIO7gpio_onEm>
 8001d2c:	480c      	ldr	r0, [pc, #48]	; (8001d60 <_ZN5CDemo10blink_taskEv+0x40>)
 8001d2e:	f7fe fed7 	bl	8000ae0 <_ZN6CTimer8get_timeEv>
 8001d32:	490c      	ldr	r1, [pc, #48]	; (8001d64 <_ZN5CDemo10blink_taskEv+0x44>)
 8001d34:	4602      	mov	r2, r0
 8001d36:	4809      	ldr	r0, [pc, #36]	; (8001d5c <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d38:	f7ff fdad 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 8001d3c:	4808      	ldr	r0, [pc, #32]	; (8001d60 <_ZN5CDemo10blink_taskEv+0x40>)
 8001d3e:	210a      	movs	r1, #10
 8001d40:	f7fe fedc 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001d44:	4805      	ldr	r0, [pc, #20]	; (8001d5c <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d46:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d4a:	f7ff fc3d 	bl	80015c8 <_ZN5CGPIO8gpio_offEm>
 8001d4e:	4804      	ldr	r0, [pc, #16]	; (8001d60 <_ZN5CDemo10blink_taskEv+0x40>)
 8001d50:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001d54:	f7fe fed2 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001d58:	e7e3      	b.n	8001d22 <_ZN5CDemo10blink_taskEv+0x2>
 8001d5a:	bf00      	nop
 8001d5c:	20000830 	.word	0x20000830
 8001d60:	20000ff4 	.word	0x20000ff4
 8001d64:	08002fd4 	.word	0x08002fd4

08001d68 <_ZN5CDemo10moves_taskEv>:
 8001d68:	b538      	push	{r3, r4, r5, lr}
 8001d6a:	4c2f      	ldr	r4, [pc, #188]	; (8001e28 <_ZN5CDemo10moves_taskEv+0xc0>)
 8001d6c:	4d2f      	ldr	r5, [pc, #188]	; (8001e2c <_ZN5CDemo10moves_taskEv+0xc4>)
 8001d6e:	4620      	mov	r0, r4
 8001d70:	2200      	movs	r2, #0
 8001d72:	212c      	movs	r1, #44	; 0x2c
 8001d74:	f7ff f93c 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001d78:	4628      	mov	r0, r5
 8001d7a:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001d7e:	f7fe febd 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001d82:	4620      	mov	r0, r4
 8001d84:	2200      	movs	r2, #0
 8001d86:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8001d8a:	f7ff f931 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001d8e:	4628      	mov	r0, r5
 8001d90:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001d94:	f7fe feb2 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001d98:	4620      	mov	r0, r4
 8001d9a:	222c      	movs	r2, #44	; 0x2c
 8001d9c:	2100      	movs	r1, #0
 8001d9e:	f7ff f927 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001da2:	4628      	mov	r0, r5
 8001da4:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001da8:	f7fe fea8 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001dac:	4620      	mov	r0, r4
 8001dae:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 8001db2:	2100      	movs	r1, #0
 8001db4:	f7ff f91c 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001db8:	4628      	mov	r0, r5
 8001dba:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001dbe:	f7fe fe9d 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001dc2:	4620      	mov	r0, r4
 8001dc4:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 8001dc8:	212c      	movs	r1, #44	; 0x2c
 8001dca:	f7ff f911 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001dce:	4628      	mov	r0, r5
 8001dd0:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001dd4:	f7fe fe92 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001dd8:	4620      	mov	r0, r4
 8001dda:	222c      	movs	r2, #44	; 0x2c
 8001ddc:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8001de0:	f7ff f906 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001de4:	4628      	mov	r0, r5
 8001de6:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001dea:	f7fe fe87 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001dee:	212c      	movs	r1, #44	; 0x2c
 8001df0:	460a      	mov	r2, r1
 8001df2:	4620      	mov	r0, r4
 8001df4:	f7ff f8fc 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001df8:	4628      	mov	r0, r5
 8001dfa:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001dfe:	f7fe fe7d 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001e02:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8001e06:	460a      	mov	r2, r1
 8001e08:	4620      	mov	r0, r4
 8001e0a:	f7ff f8f1 	bl	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001e0e:	4628      	mov	r0, r5
 8001e10:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001e14:	f7fe fe72 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001e18:	2100      	movs	r1, #0
 8001e1a:	4620      	mov	r0, r4
 8001e1c:	460a      	mov	r2, r1
 8001e1e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001e22:	f7ff b8e5 	b.w	8000ff0 <_ZN6CMotor10set_motorsEll>
 8001e26:	bf00      	nop
 8001e28:	20000830 	.word	0x20000830
 8001e2c:	20000ff4 	.word	0x20000ff4

08001e30 <_ZN5CDemo24basic_line_follower_taskEv>:
 8001e30:	b510      	push	{r4, lr}
 8001e32:	b08e      	sub	sp, #56	; 0x38
 8001e34:	4668      	mov	r0, sp
 8001e36:	f7ff fec9 	bl	8001bcc <_ZN13CLinePositionC1Ev>
 8001e3a:	a806      	add	r0, sp, #24
 8001e3c:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8001e40:	eddf 0a38 	vldr	s1, [pc, #224]	; 8001f24 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001e44:	eddf 1a38 	vldr	s3, [pc, #224]	; 8001f28 <_ZN5CDemo24basic_line_follower_taskEv+0xf8>
 8001e48:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 8001e4c:	f7fe fa46 	bl	80002dc <_ZN4CPIDC1Effff>
 8001e50:	4836      	ldr	r0, [pc, #216]	; (8001f2c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001e52:	2100      	movs	r1, #0
 8001e54:	220a      	movs	r2, #10
 8001e56:	f7fe fe63 	bl	8000b20 <_ZN6CTimer22event_timer_set_periodEhm>
 8001e5a:	4834      	ldr	r0, [pc, #208]	; (8001f2c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001e5c:	2100      	movs	r1, #0
 8001e5e:	f7fe fe73 	bl	8000b48 <_ZN6CTimer17event_timer_checkEh>
 8001e62:	2800      	cmp	r0, #0
 8001e64:	d0f9      	beq.n	8001e5a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001e66:	2100      	movs	r1, #0
 8001e68:	4831      	ldr	r0, [pc, #196]	; (8001f30 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001e6a:	f7fe fe7b 	bl	8000b64 <_ZN4CRGB8rgb_readEh>
 8001e6e:	4830      	ldr	r0, [pc, #192]	; (8001f30 <_ZN5CDemo24basic_line_follower_taskEv+0x100>)
 8001e70:	f7ff f814 	bl	8000e9c <_ZN4CRGB7rgb_getEv>
 8001e74:	4601      	mov	r1, r0
 8001e76:	4668      	mov	r0, sp
 8001e78:	f7ff feb2 	bl	8001be0 <_ZN13CLinePosition7processEP10sRGBResult>
 8001e7c:	4668      	mov	r0, sp
 8001e7e:	f7ff ff47 	bl	8001d10 <_ZN13CLinePosition7on_lineEv>
 8001e82:	4604      	mov	r4, r0
 8001e84:	4668      	mov	r0, sp
 8001e86:	f7ff ff45 	bl	8001d14 <_ZN13CLinePosition17get_line_positionEv>
 8001e8a:	eddf 7a2a 	vldr	s15, [pc, #168]	; 8001f34 <_ZN5CDemo24basic_line_follower_taskEv+0x104>
 8001e8e:	482a      	ldr	r0, [pc, #168]	; (8001f38 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001e90:	492a      	ldr	r1, [pc, #168]	; (8001f3c <_ZN5CDemo24basic_line_follower_taskEv+0x10c>)
 8001e92:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001e96:	4622      	mov	r2, r4
 8001e98:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001e9c:	ee17 3a90 	vmov	r3, s15
 8001ea0:	f7ff fcf9 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 8001ea4:	4668      	mov	r0, sp
 8001ea6:	f7ff ff33 	bl	8001d10 <_ZN13CLinePosition7on_lineEv>
 8001eaa:	4604      	mov	r4, r0
 8001eac:	b1d0      	cbz	r0, 8001ee4 <_ZN5CDemo24basic_line_follower_taskEv+0xb4>
 8001eae:	4668      	mov	r0, sp
 8001eb0:	f7ff ff30 	bl	8001d14 <_ZN13CLinePosition17get_line_positionEv>
 8001eb4:	eddf 7a1b 	vldr	s15, [pc, #108]	; 8001f24 <_ZN5CDemo24basic_line_follower_taskEv+0xf4>
 8001eb8:	a806      	add	r0, sp, #24
 8001eba:	ee37 0ac0 	vsub.f32	s0, s15, s0
 8001ebe:	f7fe fa13 	bl	80002e8 <_ZN4CPID7processEf>
 8001ec2:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001ec6:	481e      	ldr	r0, [pc, #120]	; (8001f40 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001ec8:	ee17 4a90 	vmov	r4, s15
 8001ecc:	2100      	movs	r1, #0
 8001ece:	f104 020b 	add.w	r2, r4, #11
 8001ed2:	f7ff f877 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001ed6:	481a      	ldr	r0, [pc, #104]	; (8001f40 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001ed8:	2101      	movs	r1, #1
 8001eda:	f1c4 020b 	rsb	r2, r4, #11
 8001ede:	f7ff f871 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001ee2:	e7ba      	b.n	8001e5a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001ee4:	4621      	mov	r1, r4
 8001ee6:	4816      	ldr	r0, [pc, #88]	; (8001f40 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001ee8:	f06f 020a 	mvn.w	r2, #10
 8001eec:	f7ff f86a 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001ef0:	f06f 020a 	mvn.w	r2, #10
 8001ef4:	4812      	ldr	r0, [pc, #72]	; (8001f40 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001ef6:	2101      	movs	r1, #1
 8001ef8:	f7ff f864 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001efc:	480b      	ldr	r0, [pc, #44]	; (8001f2c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001efe:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001f02:	f7fe fdfb 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001f06:	4621      	mov	r1, r4
 8001f08:	4622      	mov	r2, r4
 8001f0a:	480d      	ldr	r0, [pc, #52]	; (8001f40 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001f0c:	f7ff f85a 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001f10:	480b      	ldr	r0, [pc, #44]	; (8001f40 <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001f12:	2101      	movs	r1, #1
 8001f14:	4622      	mov	r2, r4
 8001f16:	f7ff f855 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001f1a:	4804      	ldr	r0, [pc, #16]	; (8001f2c <_ZN5CDemo24basic_line_follower_taskEv+0xfc>)
 8001f1c:	2164      	movs	r1, #100	; 0x64
 8001f1e:	f7fe fded 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8001f22:	e79a      	b.n	8001e5a <_ZN5CDemo24basic_line_follower_taskEv+0x2a>
 8001f24:	00000000 	.word	0x00000000
 8001f28:	42300000 	.word	0x42300000
 8001f2c:	20000ff4 	.word	0x20000ff4
 8001f30:	2000083c 	.word	0x2000083c
 8001f34:	447a0000 	.word	0x447a0000
 8001f38:	20000830 	.word	0x20000830
 8001f3c:	08002fe9 	.word	0x08002fe9
 8001f40:	20000830 	.word	0x20000830

08001f44 <_ZN5CDemo14ir_sensor_taskEv>:
 8001f44:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f46:	ed2d 8b02 	vpush	{d8}
 8001f4a:	b091      	sub	sp, #68	; 0x44
 8001f4c:	a802      	add	r0, sp, #8
 8001f4e:	f7ff fe3d 	bl	8001bcc <_ZN13CLinePositionC1Ev>
 8001f52:	a808      	add	r0, sp, #32
 8001f54:	eeb2 0a04 	vmov.f32	s0, #36	; 0x41200000  10.0
 8001f58:	eddf 0a49 	vldr	s1, [pc, #292]	; 8002080 <_ZN5CDemo14ir_sensor_taskEv+0x13c>
 8001f5c:	eddf 1a49 	vldr	s3, [pc, #292]	; 8002084 <_ZN5CDemo14ir_sensor_taskEv+0x140>
 8001f60:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 8001f64:	f7fe f9ba 	bl	80002dc <_ZN4CPIDC1Effff>
 8001f68:	4c47      	ldr	r4, [pc, #284]	; (8002088 <_ZN5CDemo14ir_sensor_taskEv+0x144>)
 8001f6a:	4848      	ldr	r0, [pc, #288]	; (800208c <_ZN5CDemo14ir_sensor_taskEv+0x148>)
 8001f6c:	f7fe fa32 	bl	80003d4 <_ZN9CMLX9062110ir_refreshEv>
 8001f70:	f9b4 3562 	ldrsh.w	r3, [r4, #1378]	; 0x562
 8001f74:	eddf 6a46 	vldr	s13, [pc, #280]	; 8002090 <_ZN5CDemo14ir_sensor_taskEv+0x14c>
 8001f78:	f9b4 255c 	ldrsh.w	r2, [r4, #1372]	; 0x55c
 8001f7c:	ee07 3a90 	vmov	s15, r3
 8001f80:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001f84:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
 8001f88:	ee77 7aa7 	vadd.f32	s15, s15, s15
 8001f8c:	f9b4 3564 	ldrsh.w	r3, [r4, #1380]	; 0x564
 8001f90:	eef0 8a47 	vmov.f32	s17, s14
 8001f94:	eee7 8aa6 	vfma.f32	s17, s15, s13
 8001f98:	4626      	mov	r6, r4
 8001f9a:	ee07 3a90 	vmov	s15, r3
 8001f9e:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001fa2:	f9b4 355e 	ldrsh.w	r3, [r4, #1374]	; 0x55e
 8001fa6:	ee77 7aa7 	vadd.f32	s15, s15, s15
 8001faa:	3378      	adds	r3, #120	; 0x78
 8001fac:	eea7 7aa6 	vfma.f32	s14, s15, s13
 8001fb0:	429a      	cmp	r2, r3
 8001fb2:	eeb0 8a47 	vmov.f32	s16, s14
 8001fb6:	dd14      	ble.n	8001fe2 <_ZN5CDemo14ir_sensor_taskEv+0x9e>
 8001fb8:	ed9f 0a31 	vldr	s0, [pc, #196]	; 8002080 <_ZN5CDemo14ir_sensor_taskEv+0x13c>
 8001fbc:	a808      	add	r0, sp, #32
 8001fbe:	ee38 0a80 	vadd.f32	s0, s17, s0
 8001fc2:	f7fe f991 	bl	80002e8 <_ZN4CPID7processEf>
 8001fc6:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001fca:	4620      	mov	r0, r4
 8001fcc:	ee17 5a90 	vmov	r5, s15
 8001fd0:	2100      	movs	r1, #0
 8001fd2:	ee17 2a90 	vmov	r2, s15
 8001fd6:	f7fe fff5 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001fda:	4620      	mov	r0, r4
 8001fdc:	2101      	movs	r1, #1
 8001fde:	426a      	negs	r2, r5
 8001fe0:	e007      	b.n	8001ff2 <_ZN5CDemo14ir_sensor_taskEv+0xae>
 8001fe2:	2100      	movs	r1, #0
 8001fe4:	460a      	mov	r2, r1
 8001fe6:	4620      	mov	r0, r4
 8001fe8:	f7fe ffec 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001fec:	4620      	mov	r0, r4
 8001fee:	2101      	movs	r1, #1
 8001ff0:	2200      	movs	r2, #0
 8001ff2:	f7fe ffe7 	bl	8000fc4 <_ZN6CMotor9set_motorEml>
 8001ff6:	4827      	ldr	r0, [pc, #156]	; (8002094 <_ZN5CDemo14ir_sensor_taskEv+0x150>)
 8001ff8:	4927      	ldr	r1, [pc, #156]	; (8002098 <_ZN5CDemo14ir_sensor_taskEv+0x154>)
 8001ffa:	f7ff fc4c 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 8001ffe:	f9b4 1560 	ldrsh.w	r1, [r4, #1376]	; 0x560
 8002002:	f9b4 255c 	ldrsh.w	r2, [r4, #1372]	; 0x55c
 8002006:	f9b4 355e 	ldrsh.w	r3, [r4, #1374]	; 0x55e
 800200a:	4822      	ldr	r0, [pc, #136]	; (8002094 <_ZN5CDemo14ir_sensor_taskEv+0x150>)
 800200c:	9100      	str	r1, [sp, #0]
 800200e:	4923      	ldr	r1, [pc, #140]	; (800209c <_ZN5CDemo14ir_sensor_taskEv+0x158>)
 8002010:	f7ff fc41 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 8002014:	ee18 0a90 	vmov	r0, s17
 8002018:	f000 ff0a 	bl	8002e30 <__aeabi_f2d>
 800201c:	4604      	mov	r4, r0
 800201e:	ee18 0a10 	vmov	r0, s16
 8002022:	460d      	mov	r5, r1
 8002024:	f000 ff04 	bl	8002e30 <__aeabi_f2d>
 8002028:	462b      	mov	r3, r5
 800202a:	e9cd 0100 	strd	r0, r1, [sp]
 800202e:	4622      	mov	r2, r4
 8002030:	4818      	ldr	r0, [pc, #96]	; (8002094 <_ZN5CDemo14ir_sensor_taskEv+0x150>)
 8002032:	491b      	ldr	r1, [pc, #108]	; (80020a0 <_ZN5CDemo14ir_sensor_taskEv+0x15c>)
 8002034:	f7ff fc2f 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 8002038:	481a      	ldr	r0, [pc, #104]	; (80020a4 <_ZN5CDemo14ir_sensor_taskEv+0x160>)
 800203a:	f7fe fa69 	bl	8000510 <_ZN12CSSD1306OLED14oled_lcd_clearEv>
 800203e:	2500      	movs	r5, #0
 8002040:	f3c5 075d 	ubfx	r7, r5, #1, #30
 8002044:	2400      	movs	r4, #0
 8002046:	2310      	movs	r3, #16
 8002048:	9300      	str	r3, [sp, #0]
 800204a:	1963      	adds	r3, r4, r5
 800204c:	4433      	add	r3, r6
 800204e:	01a1      	lsls	r1, r4, #6
 8002050:	f893 34dc 	ldrb.w	r3, [r3, #1244]	; 0x4dc
 8002054:	9301      	str	r3, [sp, #4]
 8002056:	4813      	ldr	r0, [pc, #76]	; (80020a4 <_ZN5CDemo14ir_sensor_taskEv+0x160>)
 8002058:	0909      	lsrs	r1, r1, #4
 800205a:	463a      	mov	r2, r7
 800205c:	2308      	movs	r3, #8
 800205e:	3402      	adds	r4, #2
 8002060:	f7fe fa7e 	bl	8000560 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh>
 8002064:	2c20      	cmp	r4, #32
 8002066:	d1ee      	bne.n	8002046 <_ZN5CDemo14ir_sensor_taskEv+0x102>
 8002068:	3520      	adds	r5, #32
 800206a:	2d80      	cmp	r5, #128	; 0x80
 800206c:	d1e8      	bne.n	8002040 <_ZN5CDemo14ir_sensor_taskEv+0xfc>
 800206e:	480d      	ldr	r0, [pc, #52]	; (80020a4 <_ZN5CDemo14ir_sensor_taskEv+0x160>)
 8002070:	f7fe facb 	bl	800060a <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 8002074:	480c      	ldr	r0, [pc, #48]	; (80020a8 <_ZN5CDemo14ir_sensor_taskEv+0x164>)
 8002076:	2164      	movs	r1, #100	; 0x64
 8002078:	f7fe fd40 	bl	8000afc <_ZN6CTimer8delay_msEm>
 800207c:	e774      	b.n	8001f68 <_ZN5CDemo14ir_sensor_taskEv+0x24>
 800207e:	bf00      	nop
 8002080:	00000000 	.word	0x00000000
 8002084:	42300000 	.word	0x42300000
 8002088:	20000830 	.word	0x20000830
 800208c:	20000d08 	.word	0x20000d08
 8002090:	3a800000 	.word	0x3a800000
 8002094:	20000830 	.word	0x20000830
 8002098:	08002fb5 	.word	0x08002fb5
 800209c:	08002ff1 	.word	0x08002ff1
 80020a0:	0800300b 	.word	0x0800300b
 80020a4:	20000904 	.word	0x20000904
 80020a8:	20000ff4 	.word	0x20000ff4

080020ac <_ZN5CDemo3runEj>:
 80020ac:	3901      	subs	r1, #1
 80020ae:	b508      	push	{r3, lr}
 80020b0:	2903      	cmp	r1, #3
 80020b2:	d810      	bhi.n	80020d6 <_ZN5CDemo3runEj+0x2a>
 80020b4:	e8df f001 	tbb	[pc, r1]
 80020b8:	0d080602 	.word	0x0d080602
 80020bc:	f7ff fe54 	bl	8001d68 <_ZN5CDemo10moves_taskEv>
 80020c0:	f7ff fe2e 	bl	8001d20 <_ZN5CDemo10blink_taskEv>
 80020c4:	f7ff feb4 	bl	8001e30 <_ZN5CDemo24basic_line_follower_taskEv>
 80020c8:	4803      	ldr	r0, [pc, #12]	; (80020d8 <_ZN5CDemo3runEj+0x2c>)
 80020ca:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80020ce:	f7ff be24 	b.w	8001d1a <_ZN21CLearningLineFollower3runEv>
 80020d2:	f7ff ff37 	bl	8001f44 <_ZN5CDemo14ir_sensor_taskEv>
 80020d6:	bd08      	pop	{r3, pc}
 80020d8:	20001048 	.word	0x20001048

080020dc <main>:
 80020dc:	b573      	push	{r0, r1, r4, r5, r6, lr}
 80020de:	f000 fc17 	bl	8002910 <sytem_clock_init>
 80020e2:	4833      	ldr	r0, [pc, #204]	; (80021b0 <main+0xd4>)
 80020e4:	f7fe f8a4 	bl	8000230 <_ZN7CKodama4initEv>
 80020e8:	210a      	movs	r1, #10
 80020ea:	4831      	ldr	r0, [pc, #196]	; (80021b0 <main+0xd4>)
 80020ec:	f7fe f8dd 	bl	80002aa <_ZN7CKodama6set_dtEl>
 80020f0:	482f      	ldr	r0, [pc, #188]	; (80021b0 <main+0xd4>)
 80020f2:	f7fe f8bf 	bl	8000274 <_ZN7CKodama5sleepEv>
 80020f6:	482f      	ldr	r0, [pc, #188]	; (80021b4 <main+0xd8>)
 80020f8:	f7ff fcae 	bl	8001a58 <_ZN5CILED4initEv>
 80020fc:	482d      	ldr	r0, [pc, #180]	; (80021b4 <main+0xd8>)
 80020fe:	2105      	movs	r1, #5
 8002100:	f240 52dc 	movw	r2, #1500	; 0x5dc
 8002104:	f7ff fd50 	bl	8001ba8 <_ZN5CILED3setEhj>
 8002108:	2200      	movs	r2, #0
 800210a:	482b      	ldr	r0, [pc, #172]	; (80021b8 <main+0xdc>)
 800210c:	492b      	ldr	r1, [pc, #172]	; (80021bc <main+0xe0>)
 800210e:	f7fe facb 	bl	80006a8 <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPhj>
 8002112:	482b      	ldr	r0, [pc, #172]	; (80021c0 <main+0xe4>)
 8002114:	f640 11c4 	movw	r1, #2500	; 0x9c4
 8002118:	f7fe fcf0 	bl	8000afc <_ZN6CTimer8delay_msEm>
 800211c:	4826      	ldr	r0, [pc, #152]	; (80021b8 <main+0xdc>)
 800211e:	4929      	ldr	r1, [pc, #164]	; (80021c4 <main+0xe8>)
 8002120:	2200      	movs	r2, #0
 8002122:	f7fe fac1 	bl	80006a8 <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPhj>
 8002126:	2400      	movs	r4, #0
 8002128:	4821      	ldr	r0, [pc, #132]	; (80021b0 <main+0xd4>)
 800212a:	f44f 7100 	mov.w	r1, #512	; 0x200
 800212e:	f7ff fa59 	bl	80015e4 <_ZN5CGPIO7gpio_inEm>
 8002132:	b190      	cbz	r0, 800215a <main+0x7e>
 8002134:	22c8      	movs	r2, #200	; 0xc8
 8002136:	481f      	ldr	r0, [pc, #124]	; (80021b4 <main+0xd8>)
 8002138:	2102      	movs	r1, #2
 800213a:	f7ff fd35 	bl	8001ba8 <_ZN5CILED3setEhj>
 800213e:	21c8      	movs	r1, #200	; 0xc8
 8002140:	481f      	ldr	r0, [pc, #124]	; (80021c0 <main+0xe4>)
 8002142:	f7fe fcdb 	bl	8000afc <_ZN6CTimer8delay_msEm>
 8002146:	481a      	ldr	r0, [pc, #104]	; (80021b0 <main+0xd4>)
 8002148:	f7fe f89e 	bl	8000288 <_ZN7CKodama6wakeupEv>
 800214c:	481e      	ldr	r0, [pc, #120]	; (80021c8 <main+0xec>)
 800214e:	f7ff fde5 	bl	8001d1c <_ZN5CDemo4initEv>
 8002152:	481d      	ldr	r0, [pc, #116]	; (80021c8 <main+0xec>)
 8002154:	2104      	movs	r1, #4
 8002156:	f7ff ffa9 	bl	80020ac <_ZN5CDemo3runEj>
 800215a:	4622      	mov	r2, r4
 800215c:	4816      	ldr	r0, [pc, #88]	; (80021b8 <main+0xdc>)
 800215e:	4919      	ldr	r1, [pc, #100]	; (80021c4 <main+0xe8>)
 8002160:	f7fe faa2 	bl	80006a8 <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPhj>
 8002164:	2132      	movs	r1, #50	; 0x32
 8002166:	4816      	ldr	r0, [pc, #88]	; (80021c0 <main+0xe4>)
 8002168:	f7fe fcc8 	bl	8000afc <_ZN6CTimer8delay_msEm>
 800216c:	4814      	ldr	r0, [pc, #80]	; (80021c0 <main+0xe4>)
 800216e:	f7fe fcb7 	bl	8000ae0 <_ZN6CTimer8get_timeEv>
 8002172:	4916      	ldr	r1, [pc, #88]	; (80021cc <main+0xf0>)
 8002174:	4602      	mov	r2, r0
 8002176:	4816      	ldr	r0, [pc, #88]	; (80021d0 <main+0xf4>)
 8002178:	f7ff fb8d 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 800217c:	4815      	ldr	r0, [pc, #84]	; (80021d4 <main+0xf8>)
 800217e:	f7fe fab4 	bl	80006ea <_ZN4CIMU8imu_readEv>
 8002182:	4814      	ldr	r0, [pc, #80]	; (80021d4 <main+0xf8>)
 8002184:	f7fe fbd2 	bl	800092c <_ZN4CIMU7imu_getEv>
 8002188:	6806      	ldr	r6, [r0, #0]
 800218a:	4812      	ldr	r0, [pc, #72]	; (80021d4 <main+0xf8>)
 800218c:	f7fe fbce 	bl	800092c <_ZN4CIMU7imu_getEv>
 8002190:	1c65      	adds	r5, r4, #1
 8002192:	6844      	ldr	r4, [r0, #4]
 8002194:	480f      	ldr	r0, [pc, #60]	; (80021d4 <main+0xf8>)
 8002196:	f7fe fbc9 	bl	800092c <_ZN4CIMU7imu_getEv>
 800219a:	6883      	ldr	r3, [r0, #8]
 800219c:	9300      	str	r3, [sp, #0]
 800219e:	4804      	ldr	r0, [pc, #16]	; (80021b0 <main+0xd4>)
 80021a0:	490d      	ldr	r1, [pc, #52]	; (80021d8 <main+0xfc>)
 80021a2:	4623      	mov	r3, r4
 80021a4:	4632      	mov	r2, r6
 80021a6:	f7ff fb76 	bl	8001896 <_ZN9CTerminal6printfEPKcz>
 80021aa:	462c      	mov	r4, r5
 80021ac:	e7bc      	b.n	8002128 <main+0x4c>
 80021ae:	bf00      	nop
 80021b0:	20000830 	.word	0x20000830
 80021b4:	2000103d 	.word	0x2000103d
 80021b8:	20000904 	.word	0x20000904
 80021bc:	20000400 	.word	0x20000400
 80021c0:	20000ff4 	.word	0x20000ff4
 80021c4:	20000000 	.word	0x20000000
 80021c8:	20001430 	.word	0x20001430
 80021cc:	08003020 	.word	0x08003020
 80021d0:	20000830 	.word	0x20000830
 80021d4:	200008c0 	.word	0x200008c0
 80021d8:	08003030 	.word	0x08003030

080021dc <RCC_GetClocksFreq>:
 80021dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80021e0:	4f9b      	ldr	r7, [pc, #620]	; (8002450 <RCC_GetClocksFreq+0x274>)
 80021e2:	687b      	ldr	r3, [r7, #4]
 80021e4:	f003 030c 	and.w	r3, r3, #12
 80021e8:	2b04      	cmp	r3, #4
 80021ea:	d005      	beq.n	80021f8 <RCC_GetClocksFreq+0x1c>
 80021ec:	2b08      	cmp	r3, #8
 80021ee:	d006      	beq.n	80021fe <RCC_GetClocksFreq+0x22>
 80021f0:	4a98      	ldr	r2, [pc, #608]	; (8002454 <RCC_GetClocksFreq+0x278>)
 80021f2:	6002      	str	r2, [r0, #0]
 80021f4:	b9b3      	cbnz	r3, 8002224 <RCC_GetClocksFreq+0x48>
 80021f6:	e016      	b.n	8002226 <RCC_GetClocksFreq+0x4a>
 80021f8:	4b96      	ldr	r3, [pc, #600]	; (8002454 <RCC_GetClocksFreq+0x278>)
 80021fa:	6003      	str	r3, [r0, #0]
 80021fc:	e012      	b.n	8002224 <RCC_GetClocksFreq+0x48>
 80021fe:	687b      	ldr	r3, [r7, #4]
 8002200:	6879      	ldr	r1, [r7, #4]
 8002202:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8002206:	1c9a      	adds	r2, r3, #2
 8002208:	03cb      	lsls	r3, r1, #15
 800220a:	bf49      	itett	mi
 800220c:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800220e:	4b92      	ldrpl	r3, [pc, #584]	; (8002458 <RCC_GetClocksFreq+0x27c>)
 8002210:	4990      	ldrmi	r1, [pc, #576]	; (8002454 <RCC_GetClocksFreq+0x278>)
 8002212:	f003 030f 	andmi.w	r3, r3, #15
 8002216:	bf44      	itt	mi
 8002218:	3301      	addmi	r3, #1
 800221a:	fbb1 f3f3 	udivmi	r3, r1, r3
 800221e:	4353      	muls	r3, r2
 8002220:	6003      	str	r3, [r0, #0]
 8002222:	e000      	b.n	8002226 <RCC_GetClocksFreq+0x4a>
 8002224:	2300      	movs	r3, #0
 8002226:	687a      	ldr	r2, [r7, #4]
 8002228:	4e8c      	ldr	r6, [pc, #560]	; (800245c <RCC_GetClocksFreq+0x280>)
 800222a:	f8df c234 	ldr.w	ip, [pc, #564]	; 8002460 <RCC_GetClocksFreq+0x284>
 800222e:	f3c2 1203 	ubfx	r2, r2, #4, #4
 8002232:	5cb4      	ldrb	r4, [r6, r2]
 8002234:	6802      	ldr	r2, [r0, #0]
 8002236:	b2e4      	uxtb	r4, r4
 8002238:	fa22 f104 	lsr.w	r1, r2, r4
 800223c:	6041      	str	r1, [r0, #4]
 800223e:	687d      	ldr	r5, [r7, #4]
 8002240:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8002244:	5d75      	ldrb	r5, [r6, r5]
 8002246:	fa21 fe05 	lsr.w	lr, r1, r5
 800224a:	f8c0 e008 	str.w	lr, [r0, #8]
 800224e:	687d      	ldr	r5, [r7, #4]
 8002250:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8002254:	5d75      	ldrb	r5, [r6, r5]
 8002256:	b2ed      	uxtb	r5, r5
 8002258:	40e9      	lsrs	r1, r5
 800225a:	60c1      	str	r1, [r0, #12]
 800225c:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 800225e:	f3c6 1804 	ubfx	r8, r6, #4, #5
 8002262:	f008 060f 	and.w	r6, r8, #15
 8002266:	f018 0f10 	tst.w	r8, #16
 800226a:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 800226e:	46e0      	mov	r8, ip
 8002270:	b2b6      	uxth	r6, r6
 8002272:	d004      	beq.n	800227e <RCC_GetClocksFreq+0xa2>
 8002274:	b11e      	cbz	r6, 800227e <RCC_GetClocksFreq+0xa2>
 8002276:	fbb3 f6f6 	udiv	r6, r3, r6
 800227a:	6106      	str	r6, [r0, #16]
 800227c:	e000      	b.n	8002280 <RCC_GetClocksFreq+0xa4>
 800227e:	6102      	str	r2, [r0, #16]
 8002280:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8002282:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8002286:	f00c 060f 	and.w	r6, ip, #15
 800228a:	f01c 0f10 	tst.w	ip, #16
 800228e:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8002292:	b2b6      	uxth	r6, r6
 8002294:	d004      	beq.n	80022a0 <RCC_GetClocksFreq+0xc4>
 8002296:	b11e      	cbz	r6, 80022a0 <RCC_GetClocksFreq+0xc4>
 8002298:	fbb3 f6f6 	udiv	r6, r3, r6
 800229c:	6146      	str	r6, [r0, #20]
 800229e:	e000      	b.n	80022a2 <RCC_GetClocksFreq+0xc6>
 80022a0:	6142      	str	r2, [r0, #20]
 80022a2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80022a4:	06f6      	lsls	r6, r6, #27
 80022a6:	bf5a      	itte	pl
 80022a8:	4e6a      	ldrpl	r6, [pc, #424]	; (8002454 <RCC_GetClocksFreq+0x278>)
 80022aa:	6186      	strpl	r6, [r0, #24]
 80022ac:	6182      	strmi	r2, [r0, #24]
 80022ae:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80022b0:	06b6      	lsls	r6, r6, #26
 80022b2:	bf5a      	itte	pl
 80022b4:	4e67      	ldrpl	r6, [pc, #412]	; (8002454 <RCC_GetClocksFreq+0x278>)
 80022b6:	61c6      	strpl	r6, [r0, #28]
 80022b8:	61c2      	strmi	r2, [r0, #28]
 80022ba:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80022bc:	0676      	lsls	r6, r6, #25
 80022be:	bf5a      	itte	pl
 80022c0:	4e64      	ldrpl	r6, [pc, #400]	; (8002454 <RCC_GetClocksFreq+0x278>)
 80022c2:	6206      	strpl	r6, [r0, #32]
 80022c4:	6202      	strmi	r2, [r0, #32]
 80022c6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80022c8:	05f6      	lsls	r6, r6, #23
 80022ca:	d506      	bpl.n	80022da <RCC_GetClocksFreq+0xfe>
 80022cc:	429a      	cmp	r2, r3
 80022ce:	d104      	bne.n	80022da <RCC_GetClocksFreq+0xfe>
 80022d0:	42a5      	cmp	r5, r4
 80022d2:	d102      	bne.n	80022da <RCC_GetClocksFreq+0xfe>
 80022d4:	0056      	lsls	r6, r2, #1
 80022d6:	6246      	str	r6, [r0, #36]	; 0x24
 80022d8:	e000      	b.n	80022dc <RCC_GetClocksFreq+0x100>
 80022da:	6241      	str	r1, [r0, #36]	; 0x24
 80022dc:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80022de:	04f6      	lsls	r6, r6, #19
 80022e0:	d506      	bpl.n	80022f0 <RCC_GetClocksFreq+0x114>
 80022e2:	429a      	cmp	r2, r3
 80022e4:	d104      	bne.n	80022f0 <RCC_GetClocksFreq+0x114>
 80022e6:	42a5      	cmp	r5, r4
 80022e8:	d102      	bne.n	80022f0 <RCC_GetClocksFreq+0x114>
 80022ea:	0056      	lsls	r6, r2, #1
 80022ec:	6286      	str	r6, [r0, #40]	; 0x28
 80022ee:	e000      	b.n	80022f2 <RCC_GetClocksFreq+0x116>
 80022f0:	6281      	str	r1, [r0, #40]	; 0x28
 80022f2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80022f4:	05b6      	lsls	r6, r6, #22
 80022f6:	d506      	bpl.n	8002306 <RCC_GetClocksFreq+0x12a>
 80022f8:	429a      	cmp	r2, r3
 80022fa:	d104      	bne.n	8002306 <RCC_GetClocksFreq+0x12a>
 80022fc:	42a5      	cmp	r5, r4
 80022fe:	d102      	bne.n	8002306 <RCC_GetClocksFreq+0x12a>
 8002300:	0056      	lsls	r6, r2, #1
 8002302:	62c6      	str	r6, [r0, #44]	; 0x2c
 8002304:	e000      	b.n	8002308 <RCC_GetClocksFreq+0x12c>
 8002306:	62c1      	str	r1, [r0, #44]	; 0x2c
 8002308:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800230a:	0576      	lsls	r6, r6, #21
 800230c:	d506      	bpl.n	800231c <RCC_GetClocksFreq+0x140>
 800230e:	429a      	cmp	r2, r3
 8002310:	d104      	bne.n	800231c <RCC_GetClocksFreq+0x140>
 8002312:	42a5      	cmp	r5, r4
 8002314:	d102      	bne.n	800231c <RCC_GetClocksFreq+0x140>
 8002316:	0056      	lsls	r6, r2, #1
 8002318:	64c6      	str	r6, [r0, #76]	; 0x4c
 800231a:	e000      	b.n	800231e <RCC_GetClocksFreq+0x142>
 800231c:	64c1      	str	r1, [r0, #76]	; 0x4c
 800231e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002320:	0536      	lsls	r6, r6, #20
 8002322:	d506      	bpl.n	8002332 <RCC_GetClocksFreq+0x156>
 8002324:	429a      	cmp	r2, r3
 8002326:	d104      	bne.n	8002332 <RCC_GetClocksFreq+0x156>
 8002328:	42a5      	cmp	r5, r4
 800232a:	d102      	bne.n	8002332 <RCC_GetClocksFreq+0x156>
 800232c:	0056      	lsls	r6, r2, #1
 800232e:	6506      	str	r6, [r0, #80]	; 0x50
 8002330:	e000      	b.n	8002334 <RCC_GetClocksFreq+0x158>
 8002332:	6501      	str	r1, [r0, #80]	; 0x50
 8002334:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002336:	04b6      	lsls	r6, r6, #18
 8002338:	d506      	bpl.n	8002348 <RCC_GetClocksFreq+0x16c>
 800233a:	429a      	cmp	r2, r3
 800233c:	d104      	bne.n	8002348 <RCC_GetClocksFreq+0x16c>
 800233e:	42a5      	cmp	r5, r4
 8002340:	d102      	bne.n	8002348 <RCC_GetClocksFreq+0x16c>
 8002342:	0056      	lsls	r6, r2, #1
 8002344:	6546      	str	r6, [r0, #84]	; 0x54
 8002346:	e000      	b.n	800234a <RCC_GetClocksFreq+0x16e>
 8002348:	6501      	str	r1, [r0, #80]	; 0x50
 800234a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800234c:	0436      	lsls	r6, r6, #16
 800234e:	d506      	bpl.n	800235e <RCC_GetClocksFreq+0x182>
 8002350:	429a      	cmp	r2, r3
 8002352:	d104      	bne.n	800235e <RCC_GetClocksFreq+0x182>
 8002354:	42a5      	cmp	r5, r4
 8002356:	d102      	bne.n	800235e <RCC_GetClocksFreq+0x182>
 8002358:	0053      	lsls	r3, r2, #1
 800235a:	6583      	str	r3, [r0, #88]	; 0x58
 800235c:	e000      	b.n	8002360 <RCC_GetClocksFreq+0x184>
 800235e:	6581      	str	r1, [r0, #88]	; 0x58
 8002360:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8002362:	4b3b      	ldr	r3, [pc, #236]	; (8002450 <RCC_GetClocksFreq+0x274>)
 8002364:	07a4      	lsls	r4, r4, #30
 8002366:	d101      	bne.n	800236c <RCC_GetClocksFreq+0x190>
 8002368:	6381      	str	r1, [r0, #56]	; 0x38
 800236a:	e015      	b.n	8002398 <RCC_GetClocksFreq+0x1bc>
 800236c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800236e:	f001 0103 	and.w	r1, r1, #3
 8002372:	2901      	cmp	r1, #1
 8002374:	d101      	bne.n	800237a <RCC_GetClocksFreq+0x19e>
 8002376:	6382      	str	r2, [r0, #56]	; 0x38
 8002378:	e00e      	b.n	8002398 <RCC_GetClocksFreq+0x1bc>
 800237a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800237c:	f001 0103 	and.w	r1, r1, #3
 8002380:	2902      	cmp	r1, #2
 8002382:	d102      	bne.n	800238a <RCC_GetClocksFreq+0x1ae>
 8002384:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002388:	e005      	b.n	8002396 <RCC_GetClocksFreq+0x1ba>
 800238a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800238c:	f003 0303 	and.w	r3, r3, #3
 8002390:	2b03      	cmp	r3, #3
 8002392:	d101      	bne.n	8002398 <RCC_GetClocksFreq+0x1bc>
 8002394:	4b2f      	ldr	r3, [pc, #188]	; (8002454 <RCC_GetClocksFreq+0x278>)
 8002396:	6383      	str	r3, [r0, #56]	; 0x38
 8002398:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800239a:	4b2d      	ldr	r3, [pc, #180]	; (8002450 <RCC_GetClocksFreq+0x274>)
 800239c:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80023a0:	d102      	bne.n	80023a8 <RCC_GetClocksFreq+0x1cc>
 80023a2:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 80023a6:	e018      	b.n	80023da <RCC_GetClocksFreq+0x1fe>
 80023a8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023aa:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80023ae:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80023b2:	d101      	bne.n	80023b8 <RCC_GetClocksFreq+0x1dc>
 80023b4:	63c2      	str	r2, [r0, #60]	; 0x3c
 80023b6:	e010      	b.n	80023da <RCC_GetClocksFreq+0x1fe>
 80023b8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023ba:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80023be:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80023c2:	d102      	bne.n	80023ca <RCC_GetClocksFreq+0x1ee>
 80023c4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80023c8:	e006      	b.n	80023d8 <RCC_GetClocksFreq+0x1fc>
 80023ca:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80023cc:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 80023d0:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 80023d4:	d101      	bne.n	80023da <RCC_GetClocksFreq+0x1fe>
 80023d6:	4b1f      	ldr	r3, [pc, #124]	; (8002454 <RCC_GetClocksFreq+0x278>)
 80023d8:	63c3      	str	r3, [r0, #60]	; 0x3c
 80023da:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80023dc:	4b1c      	ldr	r3, [pc, #112]	; (8002450 <RCC_GetClocksFreq+0x274>)
 80023de:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 80023e2:	d102      	bne.n	80023ea <RCC_GetClocksFreq+0x20e>
 80023e4:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 80023e8:	e018      	b.n	800241c <RCC_GetClocksFreq+0x240>
 80023ea:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023ec:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80023f0:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 80023f4:	d101      	bne.n	80023fa <RCC_GetClocksFreq+0x21e>
 80023f6:	6402      	str	r2, [r0, #64]	; 0x40
 80023f8:	e010      	b.n	800241c <RCC_GetClocksFreq+0x240>
 80023fa:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023fc:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8002400:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8002404:	d102      	bne.n	800240c <RCC_GetClocksFreq+0x230>
 8002406:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800240a:	e006      	b.n	800241a <RCC_GetClocksFreq+0x23e>
 800240c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800240e:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8002412:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8002416:	d101      	bne.n	800241c <RCC_GetClocksFreq+0x240>
 8002418:	4b0e      	ldr	r3, [pc, #56]	; (8002454 <RCC_GetClocksFreq+0x278>)
 800241a:	6403      	str	r3, [r0, #64]	; 0x40
 800241c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800241e:	4b0c      	ldr	r3, [pc, #48]	; (8002450 <RCC_GetClocksFreq+0x274>)
 8002420:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8002424:	d102      	bne.n	800242c <RCC_GetClocksFreq+0x250>
 8002426:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 800242a:	e023      	b.n	8002474 <RCC_GetClocksFreq+0x298>
 800242c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800242e:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8002432:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8002436:	d101      	bne.n	800243c <RCC_GetClocksFreq+0x260>
 8002438:	6442      	str	r2, [r0, #68]	; 0x44
 800243a:	e01b      	b.n	8002474 <RCC_GetClocksFreq+0x298>
 800243c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800243e:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8002442:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8002446:	d10d      	bne.n	8002464 <RCC_GetClocksFreq+0x288>
 8002448:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800244c:	e011      	b.n	8002472 <RCC_GetClocksFreq+0x296>
 800244e:	bf00      	nop
 8002450:	40021000 	.word	0x40021000
 8002454:	007a1200 	.word	0x007a1200
 8002458:	003d0900 	.word	0x003d0900
 800245c:	20000820 	.word	0x20000820
 8002460:	20000800 	.word	0x20000800
 8002464:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002466:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 800246a:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 800246e:	d101      	bne.n	8002474 <RCC_GetClocksFreq+0x298>
 8002470:	4b13      	ldr	r3, [pc, #76]	; (80024c0 <RCC_GetClocksFreq+0x2e4>)
 8002472:	6443      	str	r3, [r0, #68]	; 0x44
 8002474:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002476:	4b13      	ldr	r3, [pc, #76]	; (80024c4 <RCC_GetClocksFreq+0x2e8>)
 8002478:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800247c:	d103      	bne.n	8002486 <RCC_GetClocksFreq+0x2aa>
 800247e:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8002482:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002486:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002488:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 800248c:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8002490:	d102      	bne.n	8002498 <RCC_GetClocksFreq+0x2bc>
 8002492:	6482      	str	r2, [r0, #72]	; 0x48
 8002494:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002498:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800249a:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 800249e:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80024a2:	d102      	bne.n	80024aa <RCC_GetClocksFreq+0x2ce>
 80024a4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80024a8:	e006      	b.n	80024b8 <RCC_GetClocksFreq+0x2dc>
 80024aa:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80024ac:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80024b0:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80024b4:	d101      	bne.n	80024ba <RCC_GetClocksFreq+0x2de>
 80024b6:	4b02      	ldr	r3, [pc, #8]	; (80024c0 <RCC_GetClocksFreq+0x2e4>)
 80024b8:	6483      	str	r3, [r0, #72]	; 0x48
 80024ba:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80024be:	bf00      	nop
 80024c0:	007a1200 	.word	0x007a1200
 80024c4:	40021000 	.word	0x40021000

080024c8 <RCC_AHBPeriphClockCmd>:
 80024c8:	bf00      	nop
 80024ca:	bf00      	nop
 80024cc:	4b04      	ldr	r3, [pc, #16]	; (80024e0 <RCC_AHBPeriphClockCmd+0x18>)
 80024ce:	695a      	ldr	r2, [r3, #20]
 80024d0:	b109      	cbz	r1, 80024d6 <RCC_AHBPeriphClockCmd+0xe>
 80024d2:	4310      	orrs	r0, r2
 80024d4:	e001      	b.n	80024da <RCC_AHBPeriphClockCmd+0x12>
 80024d6:	ea22 0000 	bic.w	r0, r2, r0
 80024da:	6158      	str	r0, [r3, #20]
 80024dc:	4770      	bx	lr
 80024de:	bf00      	nop
 80024e0:	40021000 	.word	0x40021000

080024e4 <RCC_APB2PeriphClockCmd>:
 80024e4:	bf00      	nop
 80024e6:	bf00      	nop
 80024e8:	4b04      	ldr	r3, [pc, #16]	; (80024fc <RCC_APB2PeriphClockCmd+0x18>)
 80024ea:	699a      	ldr	r2, [r3, #24]
 80024ec:	b109      	cbz	r1, 80024f2 <RCC_APB2PeriphClockCmd+0xe>
 80024ee:	4310      	orrs	r0, r2
 80024f0:	e001      	b.n	80024f6 <RCC_APB2PeriphClockCmd+0x12>
 80024f2:	ea22 0000 	bic.w	r0, r2, r0
 80024f6:	6198      	str	r0, [r3, #24]
 80024f8:	4770      	bx	lr
 80024fa:	bf00      	nop
 80024fc:	40021000 	.word	0x40021000

08002500 <RCC_APB1PeriphClockCmd>:
 8002500:	bf00      	nop
 8002502:	bf00      	nop
 8002504:	4b04      	ldr	r3, [pc, #16]	; (8002518 <RCC_APB1PeriphClockCmd+0x18>)
 8002506:	69da      	ldr	r2, [r3, #28]
 8002508:	b109      	cbz	r1, 800250e <RCC_APB1PeriphClockCmd+0xe>
 800250a:	4310      	orrs	r0, r2
 800250c:	e001      	b.n	8002512 <RCC_APB1PeriphClockCmd+0x12>
 800250e:	ea22 0000 	bic.w	r0, r2, r0
 8002512:	61d8      	str	r0, [r3, #28]
 8002514:	4770      	bx	lr
 8002516:	bf00      	nop
 8002518:	40021000 	.word	0x40021000

0800251c <TIM_TimeBaseInit>:
 800251c:	bf00      	nop
 800251e:	bf00      	nop
 8002520:	bf00      	nop
 8002522:	4a24      	ldr	r2, [pc, #144]	; (80025b4 <TIM_TimeBaseInit+0x98>)
 8002524:	8803      	ldrh	r3, [r0, #0]
 8002526:	4290      	cmp	r0, r2
 8002528:	b29b      	uxth	r3, r3
 800252a:	d012      	beq.n	8002552 <TIM_TimeBaseInit+0x36>
 800252c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002530:	4290      	cmp	r0, r2
 8002532:	d00e      	beq.n	8002552 <TIM_TimeBaseInit+0x36>
 8002534:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002538:	d00b      	beq.n	8002552 <TIM_TimeBaseInit+0x36>
 800253a:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 800253e:	4290      	cmp	r0, r2
 8002540:	d007      	beq.n	8002552 <TIM_TimeBaseInit+0x36>
 8002542:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002546:	4290      	cmp	r0, r2
 8002548:	d003      	beq.n	8002552 <TIM_TimeBaseInit+0x36>
 800254a:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 800254e:	4290      	cmp	r0, r2
 8002550:	d103      	bne.n	800255a <TIM_TimeBaseInit+0x3e>
 8002552:	884a      	ldrh	r2, [r1, #2]
 8002554:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8002558:	4313      	orrs	r3, r2
 800255a:	4a17      	ldr	r2, [pc, #92]	; (80025b8 <TIM_TimeBaseInit+0x9c>)
 800255c:	4290      	cmp	r0, r2
 800255e:	d008      	beq.n	8002572 <TIM_TimeBaseInit+0x56>
 8002560:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8002564:	4290      	cmp	r0, r2
 8002566:	bf1f      	itttt	ne
 8002568:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 800256c:	890a      	ldrhne	r2, [r1, #8]
 800256e:	b29b      	uxthne	r3, r3
 8002570:	4313      	orrne	r3, r2
 8002572:	8003      	strh	r3, [r0, #0]
 8002574:	684b      	ldr	r3, [r1, #4]
 8002576:	62c3      	str	r3, [r0, #44]	; 0x2c
 8002578:	880b      	ldrh	r3, [r1, #0]
 800257a:	8503      	strh	r3, [r0, #40]	; 0x28
 800257c:	4b0d      	ldr	r3, [pc, #52]	; (80025b4 <TIM_TimeBaseInit+0x98>)
 800257e:	4298      	cmp	r0, r3
 8002580:	d013      	beq.n	80025aa <TIM_TimeBaseInit+0x8e>
 8002582:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002586:	4298      	cmp	r0, r3
 8002588:	d00f      	beq.n	80025aa <TIM_TimeBaseInit+0x8e>
 800258a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 800258e:	4298      	cmp	r0, r3
 8002590:	d00b      	beq.n	80025aa <TIM_TimeBaseInit+0x8e>
 8002592:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8002596:	4298      	cmp	r0, r3
 8002598:	d007      	beq.n	80025aa <TIM_TimeBaseInit+0x8e>
 800259a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800259e:	4298      	cmp	r0, r3
 80025a0:	d003      	beq.n	80025aa <TIM_TimeBaseInit+0x8e>
 80025a2:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80025a6:	4298      	cmp	r0, r3
 80025a8:	d101      	bne.n	80025ae <TIM_TimeBaseInit+0x92>
 80025aa:	894b      	ldrh	r3, [r1, #10]
 80025ac:	8603      	strh	r3, [r0, #48]	; 0x30
 80025ae:	2301      	movs	r3, #1
 80025b0:	6143      	str	r3, [r0, #20]
 80025b2:	4770      	bx	lr
 80025b4:	40012c00 	.word	0x40012c00
 80025b8:	40001000 	.word	0x40001000

080025bc <TIM_Cmd>:
 80025bc:	bf00      	nop
 80025be:	bf00      	nop
 80025c0:	8803      	ldrh	r3, [r0, #0]
 80025c2:	b119      	cbz	r1, 80025cc <TIM_Cmd+0x10>
 80025c4:	b29b      	uxth	r3, r3
 80025c6:	f043 0301 	orr.w	r3, r3, #1
 80025ca:	e003      	b.n	80025d4 <TIM_Cmd+0x18>
 80025cc:	f023 0301 	bic.w	r3, r3, #1
 80025d0:	041b      	lsls	r3, r3, #16
 80025d2:	0c1b      	lsrs	r3, r3, #16
 80025d4:	8003      	strh	r3, [r0, #0]
 80025d6:	4770      	bx	lr

080025d8 <TIM_OC2Init>:
 80025d8:	b570      	push	{r4, r5, r6, lr}
 80025da:	bf00      	nop
 80025dc:	bf00      	nop
 80025de:	bf00      	nop
 80025e0:	bf00      	nop
 80025e2:	6a03      	ldr	r3, [r0, #32]
 80025e4:	680d      	ldr	r5, [r1, #0]
 80025e6:	898e      	ldrh	r6, [r1, #12]
 80025e8:	f023 0310 	bic.w	r3, r3, #16
 80025ec:	6203      	str	r3, [r0, #32]
 80025ee:	6a03      	ldr	r3, [r0, #32]
 80025f0:	6844      	ldr	r4, [r0, #4]
 80025f2:	6982      	ldr	r2, [r0, #24]
 80025f4:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 80025f8:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 80025fc:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8002600:	f023 0220 	bic.w	r2, r3, #32
 8002604:	888b      	ldrh	r3, [r1, #4]
 8002606:	4333      	orrs	r3, r6
 8002608:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 800260c:	4a10      	ldr	r2, [pc, #64]	; (8002650 <TIM_OC2Init+0x78>)
 800260e:	4290      	cmp	r0, r2
 8002610:	d003      	beq.n	800261a <TIM_OC2Init+0x42>
 8002612:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002616:	4290      	cmp	r0, r2
 8002618:	d114      	bne.n	8002644 <TIM_OC2Init+0x6c>
 800261a:	bf00      	nop
 800261c:	bf00      	nop
 800261e:	bf00      	nop
 8002620:	bf00      	nop
 8002622:	89ca      	ldrh	r2, [r1, #14]
 8002624:	8a0e      	ldrh	r6, [r1, #16]
 8002626:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 800262a:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 800262e:	88ca      	ldrh	r2, [r1, #6]
 8002630:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002634:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002638:	8a4a      	ldrh	r2, [r1, #18]
 800263a:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 800263e:	4332      	orrs	r2, r6
 8002640:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8002644:	688a      	ldr	r2, [r1, #8]
 8002646:	6044      	str	r4, [r0, #4]
 8002648:	6185      	str	r5, [r0, #24]
 800264a:	6382      	str	r2, [r0, #56]	; 0x38
 800264c:	6203      	str	r3, [r0, #32]
 800264e:	bd70      	pop	{r4, r5, r6, pc}
 8002650:	40012c00 	.word	0x40012c00

08002654 <TIM_SetCompare2>:
 8002654:	bf00      	nop
 8002656:	6381      	str	r1, [r0, #56]	; 0x38
 8002658:	4770      	bx	lr

0800265a <TIM_CtrlPWMOutputs>:
 800265a:	bf00      	nop
 800265c:	bf00      	nop
 800265e:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8002660:	b111      	cbz	r1, 8002668 <TIM_CtrlPWMOutputs+0xe>
 8002662:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8002666:	e001      	b.n	800266c <TIM_CtrlPWMOutputs+0x12>
 8002668:	f3c3 030e 	ubfx	r3, r3, #0, #15
 800266c:	6443      	str	r3, [r0, #68]	; 0x44
 800266e:	4770      	bx	lr

08002670 <TIM_ITConfig>:
 8002670:	bf00      	nop
 8002672:	bf00      	nop
 8002674:	bf00      	nop
 8002676:	68c3      	ldr	r3, [r0, #12]
 8002678:	b10a      	cbz	r2, 800267e <TIM_ITConfig+0xe>
 800267a:	4319      	orrs	r1, r3
 800267c:	e002      	b.n	8002684 <TIM_ITConfig+0x14>
 800267e:	43c9      	mvns	r1, r1
 8002680:	b289      	uxth	r1, r1
 8002682:	4019      	ands	r1, r3
 8002684:	60c1      	str	r1, [r0, #12]
 8002686:	4770      	bx	lr

08002688 <TIM_GetITStatus>:
 8002688:	bf00      	nop
 800268a:	bf00      	nop
 800268c:	6903      	ldr	r3, [r0, #16]
 800268e:	68c2      	ldr	r2, [r0, #12]
 8002690:	ea11 0003 	ands.w	r0, r1, r3
 8002694:	d003      	beq.n	800269e <TIM_GetITStatus+0x16>
 8002696:	4211      	tst	r1, r2
 8002698:	bf14      	ite	ne
 800269a:	2001      	movne	r0, #1
 800269c:	2000      	moveq	r0, #0
 800269e:	4770      	bx	lr

080026a0 <TIM_ClearITPendingBit>:
 80026a0:	bf00      	nop
 80026a2:	43c9      	mvns	r1, r1
 80026a4:	b289      	uxth	r1, r1
 80026a6:	6101      	str	r1, [r0, #16]
 80026a8:	4770      	bx	lr
	...

080026ac <USART_Init>:
 80026ac:	b530      	push	{r4, r5, lr}
 80026ae:	4604      	mov	r4, r0
 80026b0:	b099      	sub	sp, #100	; 0x64
 80026b2:	460d      	mov	r5, r1
 80026b4:	bf00      	nop
 80026b6:	bf00      	nop
 80026b8:	bf00      	nop
 80026ba:	bf00      	nop
 80026bc:	bf00      	nop
 80026be:	bf00      	nop
 80026c0:	bf00      	nop
 80026c2:	6803      	ldr	r3, [r0, #0]
 80026c4:	f023 0301 	bic.w	r3, r3, #1
 80026c8:	6003      	str	r3, [r0, #0]
 80026ca:	6843      	ldr	r3, [r0, #4]
 80026cc:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80026d0:	688b      	ldr	r3, [r1, #8]
 80026d2:	68c9      	ldr	r1, [r1, #12]
 80026d4:	4313      	orrs	r3, r2
 80026d6:	6043      	str	r3, [r0, #4]
 80026d8:	686a      	ldr	r2, [r5, #4]
 80026da:	6803      	ldr	r3, [r0, #0]
 80026dc:	4311      	orrs	r1, r2
 80026de:	692a      	ldr	r2, [r5, #16]
 80026e0:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 80026e4:	430a      	orrs	r2, r1
 80026e6:	f023 030c 	bic.w	r3, r3, #12
 80026ea:	4313      	orrs	r3, r2
 80026ec:	6003      	str	r3, [r0, #0]
 80026ee:	6883      	ldr	r3, [r0, #8]
 80026f0:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 80026f4:	696b      	ldr	r3, [r5, #20]
 80026f6:	4313      	orrs	r3, r2
 80026f8:	6083      	str	r3, [r0, #8]
 80026fa:	a801      	add	r0, sp, #4
 80026fc:	f7ff fd6e 	bl	80021dc <RCC_GetClocksFreq>
 8002700:	4b17      	ldr	r3, [pc, #92]	; (8002760 <USART_Init+0xb4>)
 8002702:	429c      	cmp	r4, r3
 8002704:	d101      	bne.n	800270a <USART_Init+0x5e>
 8002706:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002708:	e00e      	b.n	8002728 <USART_Init+0x7c>
 800270a:	4b16      	ldr	r3, [pc, #88]	; (8002764 <USART_Init+0xb8>)
 800270c:	429c      	cmp	r4, r3
 800270e:	d101      	bne.n	8002714 <USART_Init+0x68>
 8002710:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002712:	e009      	b.n	8002728 <USART_Init+0x7c>
 8002714:	4b14      	ldr	r3, [pc, #80]	; (8002768 <USART_Init+0xbc>)
 8002716:	429c      	cmp	r4, r3
 8002718:	d101      	bne.n	800271e <USART_Init+0x72>
 800271a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800271c:	e004      	b.n	8002728 <USART_Init+0x7c>
 800271e:	4b13      	ldr	r3, [pc, #76]	; (800276c <USART_Init+0xc0>)
 8002720:	429c      	cmp	r4, r3
 8002722:	bf0c      	ite	eq
 8002724:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002726:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002728:	6822      	ldr	r2, [r4, #0]
 800272a:	6829      	ldr	r1, [r5, #0]
 800272c:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8002730:	bf18      	it	ne
 8002732:	005b      	lslne	r3, r3, #1
 8002734:	fbb3 f2f1 	udiv	r2, r3, r1
 8002738:	fb01 3312 	mls	r3, r1, r2, r3
 800273c:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8002740:	6823      	ldr	r3, [r4, #0]
 8002742:	bf28      	it	cs
 8002744:	3201      	addcs	r2, #1
 8002746:	041b      	lsls	r3, r3, #16
 8002748:	bf41      	itttt	mi
 800274a:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 800274e:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8002752:	4013      	andmi	r3, r2
 8002754:	ea41 0203 	orrmi.w	r2, r1, r3
 8002758:	b292      	uxth	r2, r2
 800275a:	81a2      	strh	r2, [r4, #12]
 800275c:	b019      	add	sp, #100	; 0x64
 800275e:	bd30      	pop	{r4, r5, pc}
 8002760:	40013800 	.word	0x40013800
 8002764:	40004400 	.word	0x40004400
 8002768:	40004800 	.word	0x40004800
 800276c:	40004c00 	.word	0x40004c00

08002770 <USART_Cmd>:
 8002770:	bf00      	nop
 8002772:	bf00      	nop
 8002774:	6803      	ldr	r3, [r0, #0]
 8002776:	b111      	cbz	r1, 800277e <USART_Cmd+0xe>
 8002778:	f043 0301 	orr.w	r3, r3, #1
 800277c:	e001      	b.n	8002782 <USART_Cmd+0x12>
 800277e:	f023 0301 	bic.w	r3, r3, #1
 8002782:	6003      	str	r3, [r0, #0]
 8002784:	4770      	bx	lr

08002786 <USART_ReceiveData>:
 8002786:	bf00      	nop
 8002788:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 800278a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 800278e:	4770      	bx	lr

08002790 <USART_ITConfig>:
 8002790:	b510      	push	{r4, lr}
 8002792:	bf00      	nop
 8002794:	bf00      	nop
 8002796:	bf00      	nop
 8002798:	f3c1 2407 	ubfx	r4, r1, #8, #8
 800279c:	2301      	movs	r3, #1
 800279e:	b2c9      	uxtb	r1, r1
 80027a0:	2c02      	cmp	r4, #2
 80027a2:	fa03 f301 	lsl.w	r3, r3, r1
 80027a6:	d101      	bne.n	80027ac <USART_ITConfig+0x1c>
 80027a8:	3004      	adds	r0, #4
 80027aa:	e002      	b.n	80027b2 <USART_ITConfig+0x22>
 80027ac:	2c03      	cmp	r4, #3
 80027ae:	bf08      	it	eq
 80027b0:	3008      	addeq	r0, #8
 80027b2:	b112      	cbz	r2, 80027ba <USART_ITConfig+0x2a>
 80027b4:	6802      	ldr	r2, [r0, #0]
 80027b6:	4313      	orrs	r3, r2
 80027b8:	e002      	b.n	80027c0 <USART_ITConfig+0x30>
 80027ba:	6802      	ldr	r2, [r0, #0]
 80027bc:	ea22 0303 	bic.w	r3, r2, r3
 80027c0:	6003      	str	r3, [r0, #0]
 80027c2:	bd10      	pop	{r4, pc}

080027c4 <USART_GetITStatus>:
 80027c4:	b510      	push	{r4, lr}
 80027c6:	bf00      	nop
 80027c8:	bf00      	nop
 80027ca:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80027ce:	b2cc      	uxtb	r4, r1
 80027d0:	2301      	movs	r3, #1
 80027d2:	2a01      	cmp	r2, #1
 80027d4:	fa03 f304 	lsl.w	r3, r3, r4
 80027d8:	d101      	bne.n	80027de <USART_GetITStatus+0x1a>
 80027da:	6802      	ldr	r2, [r0, #0]
 80027dc:	e003      	b.n	80027e6 <USART_GetITStatus+0x22>
 80027de:	2a02      	cmp	r2, #2
 80027e0:	bf0c      	ite	eq
 80027e2:	6842      	ldreq	r2, [r0, #4]
 80027e4:	6882      	ldrne	r2, [r0, #8]
 80027e6:	4013      	ands	r3, r2
 80027e8:	69c2      	ldr	r2, [r0, #28]
 80027ea:	b13b      	cbz	r3, 80027fc <USART_GetITStatus+0x38>
 80027ec:	0c09      	lsrs	r1, r1, #16
 80027ee:	2301      	movs	r3, #1
 80027f0:	408b      	lsls	r3, r1
 80027f2:	4213      	tst	r3, r2
 80027f4:	bf14      	ite	ne
 80027f6:	2001      	movne	r0, #1
 80027f8:	2000      	moveq	r0, #0
 80027fa:	bd10      	pop	{r4, pc}
 80027fc:	4618      	mov	r0, r3
 80027fe:	bd10      	pop	{r4, pc}

08002800 <USART_ClearITPendingBit>:
 8002800:	bf00      	nop
 8002802:	bf00      	nop
 8002804:	2301      	movs	r3, #1
 8002806:	0c09      	lsrs	r1, r1, #16
 8002808:	408b      	lsls	r3, r1
 800280a:	6203      	str	r3, [r0, #32]
 800280c:	4770      	bx	lr
	...

08002810 <SystemInit>:
 8002810:	4a39      	ldr	r2, [pc, #228]	; (80028f8 <SystemInit+0xe8>)
 8002812:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002816:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800281a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800281e:	4b37      	ldr	r3, [pc, #220]	; (80028fc <SystemInit+0xec>)
 8002820:	681a      	ldr	r2, [r3, #0]
 8002822:	f042 0201 	orr.w	r2, r2, #1
 8002826:	601a      	str	r2, [r3, #0]
 8002828:	6859      	ldr	r1, [r3, #4]
 800282a:	4a35      	ldr	r2, [pc, #212]	; (8002900 <SystemInit+0xf0>)
 800282c:	400a      	ands	r2, r1
 800282e:	605a      	str	r2, [r3, #4]
 8002830:	681a      	ldr	r2, [r3, #0]
 8002832:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002836:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800283a:	601a      	str	r2, [r3, #0]
 800283c:	681a      	ldr	r2, [r3, #0]
 800283e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002842:	601a      	str	r2, [r3, #0]
 8002844:	685a      	ldr	r2, [r3, #4]
 8002846:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800284a:	605a      	str	r2, [r3, #4]
 800284c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800284e:	f022 020f 	bic.w	r2, r2, #15
 8002852:	62da      	str	r2, [r3, #44]	; 0x2c
 8002854:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002856:	4a2b      	ldr	r2, [pc, #172]	; (8002904 <SystemInit+0xf4>)
 8002858:	b082      	sub	sp, #8
 800285a:	400a      	ands	r2, r1
 800285c:	631a      	str	r2, [r3, #48]	; 0x30
 800285e:	2200      	movs	r2, #0
 8002860:	609a      	str	r2, [r3, #8]
 8002862:	9200      	str	r2, [sp, #0]
 8002864:	9201      	str	r2, [sp, #4]
 8002866:	681a      	ldr	r2, [r3, #0]
 8002868:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800286c:	601a      	str	r2, [r3, #0]
 800286e:	681a      	ldr	r2, [r3, #0]
 8002870:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002874:	9201      	str	r2, [sp, #4]
 8002876:	9a00      	ldr	r2, [sp, #0]
 8002878:	3201      	adds	r2, #1
 800287a:	9200      	str	r2, [sp, #0]
 800287c:	9a01      	ldr	r2, [sp, #4]
 800287e:	b91a      	cbnz	r2, 8002888 <SystemInit+0x78>
 8002880:	9a00      	ldr	r2, [sp, #0]
 8002882:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002886:	d1f2      	bne.n	800286e <SystemInit+0x5e>
 8002888:	681a      	ldr	r2, [r3, #0]
 800288a:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800288e:	bf18      	it	ne
 8002890:	2201      	movne	r2, #1
 8002892:	9201      	str	r2, [sp, #4]
 8002894:	9a01      	ldr	r2, [sp, #4]
 8002896:	2a01      	cmp	r2, #1
 8002898:	d005      	beq.n	80028a6 <SystemInit+0x96>
 800289a:	4b17      	ldr	r3, [pc, #92]	; (80028f8 <SystemInit+0xe8>)
 800289c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80028a0:	609a      	str	r2, [r3, #8]
 80028a2:	b002      	add	sp, #8
 80028a4:	4770      	bx	lr
 80028a6:	4a18      	ldr	r2, [pc, #96]	; (8002908 <SystemInit+0xf8>)
 80028a8:	2112      	movs	r1, #18
 80028aa:	6011      	str	r1, [r2, #0]
 80028ac:	685a      	ldr	r2, [r3, #4]
 80028ae:	605a      	str	r2, [r3, #4]
 80028b0:	685a      	ldr	r2, [r3, #4]
 80028b2:	605a      	str	r2, [r3, #4]
 80028b4:	685a      	ldr	r2, [r3, #4]
 80028b6:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80028ba:	605a      	str	r2, [r3, #4]
 80028bc:	685a      	ldr	r2, [r3, #4]
 80028be:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80028c2:	605a      	str	r2, [r3, #4]
 80028c4:	685a      	ldr	r2, [r3, #4]
 80028c6:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80028ca:	605a      	str	r2, [r3, #4]
 80028cc:	681a      	ldr	r2, [r3, #0]
 80028ce:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80028d2:	601a      	str	r2, [r3, #0]
 80028d4:	6819      	ldr	r1, [r3, #0]
 80028d6:	4a09      	ldr	r2, [pc, #36]	; (80028fc <SystemInit+0xec>)
 80028d8:	0189      	lsls	r1, r1, #6
 80028da:	d5fb      	bpl.n	80028d4 <SystemInit+0xc4>
 80028dc:	6851      	ldr	r1, [r2, #4]
 80028de:	f021 0103 	bic.w	r1, r1, #3
 80028e2:	6051      	str	r1, [r2, #4]
 80028e4:	6851      	ldr	r1, [r2, #4]
 80028e6:	f041 0102 	orr.w	r1, r1, #2
 80028ea:	6051      	str	r1, [r2, #4]
 80028ec:	685a      	ldr	r2, [r3, #4]
 80028ee:	f002 020c 	and.w	r2, r2, #12
 80028f2:	2a08      	cmp	r2, #8
 80028f4:	d1fa      	bne.n	80028ec <SystemInit+0xdc>
 80028f6:	e7d0      	b.n	800289a <SystemInit+0x8a>
 80028f8:	e000ed00 	.word	0xe000ed00
 80028fc:	40021000 	.word	0x40021000
 8002900:	f87fc00c 	.word	0xf87fc00c
 8002904:	ff00fccc 	.word	0xff00fccc
 8002908:	40022000 	.word	0x40022000

0800290c <core_yield>:
 800290c:	bf00      	nop
 800290e:	4770      	bx	lr

08002910 <sytem_clock_init>:
 8002910:	f7ff bf7e 	b.w	8002810 <SystemInit>

08002914 <NVIC_Init>:
 8002914:	b510      	push	{r4, lr}
 8002916:	bf00      	nop
 8002918:	bf00      	nop
 800291a:	bf00      	nop
 800291c:	78c2      	ldrb	r2, [r0, #3]
 800291e:	7803      	ldrb	r3, [r0, #0]
 8002920:	b312      	cbz	r2, 8002968 <NVIC_Init+0x54>
 8002922:	4a17      	ldr	r2, [pc, #92]	; (8002980 <NVIC_Init+0x6c>)
 8002924:	68d1      	ldr	r1, [r2, #12]
 8002926:	7842      	ldrb	r2, [r0, #1]
 8002928:	43c9      	mvns	r1, r1
 800292a:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800292e:	f1c1 0404 	rsb	r4, r1, #4
 8002932:	b2e4      	uxtb	r4, r4
 8002934:	40a2      	lsls	r2, r4
 8002936:	b2d4      	uxtb	r4, r2
 8002938:	220f      	movs	r2, #15
 800293a:	410a      	asrs	r2, r1
 800293c:	7881      	ldrb	r1, [r0, #2]
 800293e:	400a      	ands	r2, r1
 8002940:	4322      	orrs	r2, r4
 8002942:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8002946:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 800294a:	0112      	lsls	r2, r2, #4
 800294c:	b2d2      	uxtb	r2, r2
 800294e:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8002952:	7803      	ldrb	r3, [r0, #0]
 8002954:	2201      	movs	r2, #1
 8002956:	0959      	lsrs	r1, r3, #5
 8002958:	f003 031f 	and.w	r3, r3, #31
 800295c:	fa02 f303 	lsl.w	r3, r2, r3
 8002960:	4a08      	ldr	r2, [pc, #32]	; (8002984 <NVIC_Init+0x70>)
 8002962:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8002966:	bd10      	pop	{r4, pc}
 8002968:	095a      	lsrs	r2, r3, #5
 800296a:	2101      	movs	r1, #1
 800296c:	f003 031f 	and.w	r3, r3, #31
 8002970:	4099      	lsls	r1, r3
 8002972:	f102 0320 	add.w	r3, r2, #32
 8002976:	4a03      	ldr	r2, [pc, #12]	; (8002984 <NVIC_Init+0x70>)
 8002978:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 800297c:	bd10      	pop	{r4, pc}
 800297e:	bf00      	nop
 8002980:	e000ed00 	.word	0xe000ed00
 8002984:	e000e100 	.word	0xe000e100

08002988 <EXTI_ClearITPendingBit>:
 8002988:	f020 011f 	bic.w	r1, r0, #31
 800298c:	2301      	movs	r3, #1
 800298e:	f000 001f 	and.w	r0, r0, #31
 8002992:	4a02      	ldr	r2, [pc, #8]	; (800299c <EXTI_ClearITPendingBit+0x14>)
 8002994:	4083      	lsls	r3, r0
 8002996:	508b      	str	r3, [r1, r2]
 8002998:	4770      	bx	lr
 800299a:	bf00      	nop
 800299c:	40010414 	.word	0x40010414

080029a0 <GPIO_Init>:
 80029a0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80029a2:	bf00      	nop
 80029a4:	bf00      	nop
 80029a6:	bf00      	nop
 80029a8:	bf00      	nop
 80029aa:	2300      	movs	r3, #0
 80029ac:	680e      	ldr	r6, [r1, #0]
 80029ae:	461c      	mov	r4, r3
 80029b0:	2501      	movs	r5, #1
 80029b2:	40a5      	lsls	r5, r4
 80029b4:	ea05 0e06 	and.w	lr, r5, r6
 80029b8:	45ae      	cmp	lr, r5
 80029ba:	d12d      	bne.n	8002a18 <GPIO_Init+0x78>
 80029bc:	790f      	ldrb	r7, [r1, #4]
 80029be:	1e7a      	subs	r2, r7, #1
 80029c0:	2a01      	cmp	r2, #1
 80029c2:	d817      	bhi.n	80029f4 <GPIO_Init+0x54>
 80029c4:	bf00      	nop
 80029c6:	2203      	movs	r2, #3
 80029c8:	6885      	ldr	r5, [r0, #8]
 80029ca:	409a      	lsls	r2, r3
 80029cc:	ea25 0202 	bic.w	r2, r5, r2
 80029d0:	6082      	str	r2, [r0, #8]
 80029d2:	794d      	ldrb	r5, [r1, #5]
 80029d4:	6882      	ldr	r2, [r0, #8]
 80029d6:	409d      	lsls	r5, r3
 80029d8:	4315      	orrs	r5, r2
 80029da:	6085      	str	r5, [r0, #8]
 80029dc:	bf00      	nop
 80029de:	8882      	ldrh	r2, [r0, #4]
 80029e0:	b292      	uxth	r2, r2
 80029e2:	ea22 020e 	bic.w	r2, r2, lr
 80029e6:	8082      	strh	r2, [r0, #4]
 80029e8:	798a      	ldrb	r2, [r1, #6]
 80029ea:	8885      	ldrh	r5, [r0, #4]
 80029ec:	40a2      	lsls	r2, r4
 80029ee:	432a      	orrs	r2, r5
 80029f0:	b292      	uxth	r2, r2
 80029f2:	8082      	strh	r2, [r0, #4]
 80029f4:	2203      	movs	r2, #3
 80029f6:	6805      	ldr	r5, [r0, #0]
 80029f8:	409a      	lsls	r2, r3
 80029fa:	43d2      	mvns	r2, r2
 80029fc:	4015      	ands	r5, r2
 80029fe:	6005      	str	r5, [r0, #0]
 8002a00:	6805      	ldr	r5, [r0, #0]
 8002a02:	409f      	lsls	r7, r3
 8002a04:	432f      	orrs	r7, r5
 8002a06:	6007      	str	r7, [r0, #0]
 8002a08:	68c7      	ldr	r7, [r0, #12]
 8002a0a:	4017      	ands	r7, r2
 8002a0c:	79ca      	ldrb	r2, [r1, #7]
 8002a0e:	fa02 f503 	lsl.w	r5, r2, r3
 8002a12:	ea47 0205 	orr.w	r2, r7, r5
 8002a16:	60c2      	str	r2, [r0, #12]
 8002a18:	3401      	adds	r4, #1
 8002a1a:	2c10      	cmp	r4, #16
 8002a1c:	f103 0302 	add.w	r3, r3, #2
 8002a20:	d1c6      	bne.n	80029b0 <GPIO_Init+0x10>
 8002a22:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a24 <GPIO_SetBits>:
 8002a24:	bf00      	nop
 8002a26:	bf00      	nop
 8002a28:	6181      	str	r1, [r0, #24]
 8002a2a:	4770      	bx	lr

08002a2c <GPIO_PinAFConfig>:
 8002a2c:	b510      	push	{r4, lr}
 8002a2e:	bf00      	nop
 8002a30:	bf00      	nop
 8002a32:	bf00      	nop
 8002a34:	f001 0307 	and.w	r3, r1, #7
 8002a38:	08c9      	lsrs	r1, r1, #3
 8002a3a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002a3e:	009b      	lsls	r3, r3, #2
 8002a40:	6a04      	ldr	r4, [r0, #32]
 8002a42:	210f      	movs	r1, #15
 8002a44:	4099      	lsls	r1, r3
 8002a46:	ea24 0101 	bic.w	r1, r4, r1
 8002a4a:	6201      	str	r1, [r0, #32]
 8002a4c:	6a01      	ldr	r1, [r0, #32]
 8002a4e:	409a      	lsls	r2, r3
 8002a50:	430a      	orrs	r2, r1
 8002a52:	6202      	str	r2, [r0, #32]
 8002a54:	bd10      	pop	{r4, pc}

08002a56 <Default_Handler>:
 8002a56:	4668      	mov	r0, sp
 8002a58:	f020 0107 	bic.w	r1, r0, #7
 8002a5c:	468d      	mov	sp, r1
 8002a5e:	b501      	push	{r0, lr}
 8002a60:	bf00      	nop
 8002a62:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002a66:	4685      	mov	sp, r0
 8002a68:	4770      	bx	lr

08002a6a <HardFault_Handler>:
 8002a6a:	bf00      	nop
 8002a6c:	e7fd      	b.n	8002a6a <HardFault_Handler>
	...

08002a70 <_reset_init>:
 8002a70:	490e      	ldr	r1, [pc, #56]	; (8002aac <_reset_init+0x3c>)
 8002a72:	4b0f      	ldr	r3, [pc, #60]	; (8002ab0 <_reset_init+0x40>)
 8002a74:	1a5b      	subs	r3, r3, r1
 8002a76:	109b      	asrs	r3, r3, #2
 8002a78:	2200      	movs	r2, #0
 8002a7a:	429a      	cmp	r2, r3
 8002a7c:	d006      	beq.n	8002a8c <_reset_init+0x1c>
 8002a7e:	480d      	ldr	r0, [pc, #52]	; (8002ab4 <_reset_init+0x44>)
 8002a80:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002a84:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002a88:	3201      	adds	r2, #1
 8002a8a:	e7f6      	b.n	8002a7a <_reset_init+0xa>
 8002a8c:	4a0a      	ldr	r2, [pc, #40]	; (8002ab8 <_reset_init+0x48>)
 8002a8e:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002a92:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002a96:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002a9a:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002a9e:	6853      	ldr	r3, [r2, #4]
 8002aa0:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002aa4:	6053      	str	r3, [r2, #4]
 8002aa6:	f7ff bb19 	b.w	80020dc <main>
 8002aaa:	bf00      	nop
 8002aac:	20000000 	.word	0x20000000
 8002ab0:	20000830 	.word	0x20000830
 8002ab4:	08003040 	.word	0x08003040
 8002ab8:	e000ed00 	.word	0xe000ed00

08002abc <scheduler>:
 8002abc:	b570      	push	{r4, r5, r6, lr}
 8002abe:	2200      	movs	r2, #0
 8002ac0:	4611      	mov	r1, r2
 8002ac2:	4b15      	ldr	r3, [pc, #84]	; (8002b18 <scheduler+0x5c>)
 8002ac4:	200c      	movs	r0, #12
 8002ac6:	fb00 f401 	mul.w	r4, r0, r1
 8002aca:	191e      	adds	r6, r3, r4
 8002acc:	6875      	ldr	r5, [r6, #4]
 8002ace:	f015 0f02 	tst.w	r5, #2
 8002ad2:	461d      	mov	r5, r3
 8002ad4:	d10a      	bne.n	8002aec <scheduler+0x30>
 8002ad6:	6876      	ldr	r6, [r6, #4]
 8002ad8:	07f6      	lsls	r6, r6, #31
 8002ada:	d507      	bpl.n	8002aec <scheduler+0x30>
 8002adc:	4350      	muls	r0, r2
 8002ade:	5b1c      	ldrh	r4, [r3, r4]
 8002ae0:	5a18      	ldrh	r0, [r3, r0]
 8002ae2:	b2a4      	uxth	r4, r4
 8002ae4:	b280      	uxth	r0, r0
 8002ae6:	4284      	cmp	r4, r0
 8002ae8:	bf38      	it	cc
 8002aea:	460a      	movcc	r2, r1
 8002aec:	200c      	movs	r0, #12
 8002aee:	4348      	muls	r0, r1
 8002af0:	5a1c      	ldrh	r4, [r3, r0]
 8002af2:	b2a4      	uxth	r4, r4
 8002af4:	b11c      	cbz	r4, 8002afe <scheduler+0x42>
 8002af6:	5a1c      	ldrh	r4, [r3, r0]
 8002af8:	3c01      	subs	r4, #1
 8002afa:	b2a4      	uxth	r4, r4
 8002afc:	521c      	strh	r4, [r3, r0]
 8002afe:	3101      	adds	r1, #1
 8002b00:	2906      	cmp	r1, #6
 8002b02:	d1de      	bne.n	8002ac2 <scheduler+0x6>
 8002b04:	230c      	movs	r3, #12
 8002b06:	4353      	muls	r3, r2
 8002b08:	18e9      	adds	r1, r5, r3
 8002b0a:	8849      	ldrh	r1, [r1, #2]
 8002b0c:	b289      	uxth	r1, r1
 8002b0e:	52e9      	strh	r1, [r5, r3]
 8002b10:	4b02      	ldr	r3, [pc, #8]	; (8002b1c <scheduler+0x60>)
 8002b12:	601a      	str	r2, [r3, #0]
 8002b14:	bd70      	pop	{r4, r5, r6, pc}
 8002b16:	bf00      	nop
 8002b18:	200014f0 	.word	0x200014f0
 8002b1c:	20001538 	.word	0x20001538

08002b20 <SysTick_Handler>:
 8002b20:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002b24:	f3ef 8308 	mrs	r3, MSP
 8002b28:	4c0d      	ldr	r4, [pc, #52]	; (8002b60 <SysTick_Handler+0x40>)
 8002b2a:	4d0e      	ldr	r5, [pc, #56]	; (8002b64 <SysTick_Handler+0x44>)
 8002b2c:	6822      	ldr	r2, [r4, #0]
 8002b2e:	3201      	adds	r2, #1
 8002b30:	bf1d      	ittte	ne
 8002b32:	6822      	ldrne	r2, [r4, #0]
 8002b34:	210c      	movne	r1, #12
 8002b36:	fb01 5202 	mlane	r2, r1, r2, r5
 8002b3a:	2300      	moveq	r3, #0
 8002b3c:	bf14      	ite	ne
 8002b3e:	6093      	strne	r3, [r2, #8]
 8002b40:	6023      	streq	r3, [r4, #0]
 8002b42:	f7ff ffbb 	bl	8002abc <scheduler>
 8002b46:	6822      	ldr	r2, [r4, #0]
 8002b48:	230c      	movs	r3, #12
 8002b4a:	fb03 5302 	mla	r3, r3, r2, r5
 8002b4e:	689a      	ldr	r2, [r3, #8]
 8002b50:	f06f 0306 	mvn.w	r3, #6
 8002b54:	469e      	mov	lr, r3
 8002b56:	f382 8808 	msr	MSP, r2
 8002b5a:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002b5e:	4770      	bx	lr
 8002b60:	20001538 	.word	0x20001538
 8002b64:	200014f0 	.word	0x200014f0

08002b68 <__aeabi_drsub>:
 8002b68:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8002b6c:	e002      	b.n	8002b74 <__adddf3>
 8002b6e:	bf00      	nop

08002b70 <__aeabi_dsub>:
 8002b70:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08002b74 <__adddf3>:
 8002b74:	b530      	push	{r4, r5, lr}
 8002b76:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8002b7a:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8002b7e:	ea94 0f05 	teq	r4, r5
 8002b82:	bf08      	it	eq
 8002b84:	ea90 0f02 	teqeq	r0, r2
 8002b88:	bf1f      	itttt	ne
 8002b8a:	ea54 0c00 	orrsne.w	ip, r4, r0
 8002b8e:	ea55 0c02 	orrsne.w	ip, r5, r2
 8002b92:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8002b96:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8002b9a:	f000 80e2 	beq.w	8002d62 <__adddf3+0x1ee>
 8002b9e:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8002ba2:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8002ba6:	bfb8      	it	lt
 8002ba8:	426d      	neglt	r5, r5
 8002baa:	dd0c      	ble.n	8002bc6 <__adddf3+0x52>
 8002bac:	442c      	add	r4, r5
 8002bae:	ea80 0202 	eor.w	r2, r0, r2
 8002bb2:	ea81 0303 	eor.w	r3, r1, r3
 8002bb6:	ea82 0000 	eor.w	r0, r2, r0
 8002bba:	ea83 0101 	eor.w	r1, r3, r1
 8002bbe:	ea80 0202 	eor.w	r2, r0, r2
 8002bc2:	ea81 0303 	eor.w	r3, r1, r3
 8002bc6:	2d36      	cmp	r5, #54	; 0x36
 8002bc8:	bf88      	it	hi
 8002bca:	bd30      	pophi	{r4, r5, pc}
 8002bcc:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8002bd0:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8002bd4:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8002bd8:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8002bdc:	d002      	beq.n	8002be4 <__adddf3+0x70>
 8002bde:	4240      	negs	r0, r0
 8002be0:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8002be4:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8002be8:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8002bec:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8002bf0:	d002      	beq.n	8002bf8 <__adddf3+0x84>
 8002bf2:	4252      	negs	r2, r2
 8002bf4:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8002bf8:	ea94 0f05 	teq	r4, r5
 8002bfc:	f000 80a7 	beq.w	8002d4e <__adddf3+0x1da>
 8002c00:	f1a4 0401 	sub.w	r4, r4, #1
 8002c04:	f1d5 0e20 	rsbs	lr, r5, #32
 8002c08:	db0d      	blt.n	8002c26 <__adddf3+0xb2>
 8002c0a:	fa02 fc0e 	lsl.w	ip, r2, lr
 8002c0e:	fa22 f205 	lsr.w	r2, r2, r5
 8002c12:	1880      	adds	r0, r0, r2
 8002c14:	f141 0100 	adc.w	r1, r1, #0
 8002c18:	fa03 f20e 	lsl.w	r2, r3, lr
 8002c1c:	1880      	adds	r0, r0, r2
 8002c1e:	fa43 f305 	asr.w	r3, r3, r5
 8002c22:	4159      	adcs	r1, r3
 8002c24:	e00e      	b.n	8002c44 <__adddf3+0xd0>
 8002c26:	f1a5 0520 	sub.w	r5, r5, #32
 8002c2a:	f10e 0e20 	add.w	lr, lr, #32
 8002c2e:	2a01      	cmp	r2, #1
 8002c30:	fa03 fc0e 	lsl.w	ip, r3, lr
 8002c34:	bf28      	it	cs
 8002c36:	f04c 0c02 	orrcs.w	ip, ip, #2
 8002c3a:	fa43 f305 	asr.w	r3, r3, r5
 8002c3e:	18c0      	adds	r0, r0, r3
 8002c40:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8002c44:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002c48:	d507      	bpl.n	8002c5a <__adddf3+0xe6>
 8002c4a:	f04f 0e00 	mov.w	lr, #0
 8002c4e:	f1dc 0c00 	rsbs	ip, ip, #0
 8002c52:	eb7e 0000 	sbcs.w	r0, lr, r0
 8002c56:	eb6e 0101 	sbc.w	r1, lr, r1
 8002c5a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8002c5e:	d31b      	bcc.n	8002c98 <__adddf3+0x124>
 8002c60:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8002c64:	d30c      	bcc.n	8002c80 <__adddf3+0x10c>
 8002c66:	0849      	lsrs	r1, r1, #1
 8002c68:	ea5f 0030 	movs.w	r0, r0, rrx
 8002c6c:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8002c70:	f104 0401 	add.w	r4, r4, #1
 8002c74:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8002c78:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8002c7c:	f080 809a 	bcs.w	8002db4 <__adddf3+0x240>
 8002c80:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8002c84:	bf08      	it	eq
 8002c86:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8002c8a:	f150 0000 	adcs.w	r0, r0, #0
 8002c8e:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8002c92:	ea41 0105 	orr.w	r1, r1, r5
 8002c96:	bd30      	pop	{r4, r5, pc}
 8002c98:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8002c9c:	4140      	adcs	r0, r0
 8002c9e:	eb41 0101 	adc.w	r1, r1, r1
 8002ca2:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8002ca6:	f1a4 0401 	sub.w	r4, r4, #1
 8002caa:	d1e9      	bne.n	8002c80 <__adddf3+0x10c>
 8002cac:	f091 0f00 	teq	r1, #0
 8002cb0:	bf04      	itt	eq
 8002cb2:	4601      	moveq	r1, r0
 8002cb4:	2000      	moveq	r0, #0
 8002cb6:	fab1 f381 	clz	r3, r1
 8002cba:	bf08      	it	eq
 8002cbc:	3320      	addeq	r3, #32
 8002cbe:	f1a3 030b 	sub.w	r3, r3, #11
 8002cc2:	f1b3 0220 	subs.w	r2, r3, #32
 8002cc6:	da0c      	bge.n	8002ce2 <__adddf3+0x16e>
 8002cc8:	320c      	adds	r2, #12
 8002cca:	dd08      	ble.n	8002cde <__adddf3+0x16a>
 8002ccc:	f102 0c14 	add.w	ip, r2, #20
 8002cd0:	f1c2 020c 	rsb	r2, r2, #12
 8002cd4:	fa01 f00c 	lsl.w	r0, r1, ip
 8002cd8:	fa21 f102 	lsr.w	r1, r1, r2
 8002cdc:	e00c      	b.n	8002cf8 <__adddf3+0x184>
 8002cde:	f102 0214 	add.w	r2, r2, #20
 8002ce2:	bfd8      	it	le
 8002ce4:	f1c2 0c20 	rsble	ip, r2, #32
 8002ce8:	fa01 f102 	lsl.w	r1, r1, r2
 8002cec:	fa20 fc0c 	lsr.w	ip, r0, ip
 8002cf0:	bfdc      	itt	le
 8002cf2:	ea41 010c 	orrle.w	r1, r1, ip
 8002cf6:	4090      	lslle	r0, r2
 8002cf8:	1ae4      	subs	r4, r4, r3
 8002cfa:	bfa2      	ittt	ge
 8002cfc:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8002d00:	4329      	orrge	r1, r5
 8002d02:	bd30      	popge	{r4, r5, pc}
 8002d04:	ea6f 0404 	mvn.w	r4, r4
 8002d08:	3c1f      	subs	r4, #31
 8002d0a:	da1c      	bge.n	8002d46 <__adddf3+0x1d2>
 8002d0c:	340c      	adds	r4, #12
 8002d0e:	dc0e      	bgt.n	8002d2e <__adddf3+0x1ba>
 8002d10:	f104 0414 	add.w	r4, r4, #20
 8002d14:	f1c4 0220 	rsb	r2, r4, #32
 8002d18:	fa20 f004 	lsr.w	r0, r0, r4
 8002d1c:	fa01 f302 	lsl.w	r3, r1, r2
 8002d20:	ea40 0003 	orr.w	r0, r0, r3
 8002d24:	fa21 f304 	lsr.w	r3, r1, r4
 8002d28:	ea45 0103 	orr.w	r1, r5, r3
 8002d2c:	bd30      	pop	{r4, r5, pc}
 8002d2e:	f1c4 040c 	rsb	r4, r4, #12
 8002d32:	f1c4 0220 	rsb	r2, r4, #32
 8002d36:	fa20 f002 	lsr.w	r0, r0, r2
 8002d3a:	fa01 f304 	lsl.w	r3, r1, r4
 8002d3e:	ea40 0003 	orr.w	r0, r0, r3
 8002d42:	4629      	mov	r1, r5
 8002d44:	bd30      	pop	{r4, r5, pc}
 8002d46:	fa21 f004 	lsr.w	r0, r1, r4
 8002d4a:	4629      	mov	r1, r5
 8002d4c:	bd30      	pop	{r4, r5, pc}
 8002d4e:	f094 0f00 	teq	r4, #0
 8002d52:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8002d56:	bf06      	itte	eq
 8002d58:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8002d5c:	3401      	addeq	r4, #1
 8002d5e:	3d01      	subne	r5, #1
 8002d60:	e74e      	b.n	8002c00 <__adddf3+0x8c>
 8002d62:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8002d66:	bf18      	it	ne
 8002d68:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8002d6c:	d029      	beq.n	8002dc2 <__adddf3+0x24e>
 8002d6e:	ea94 0f05 	teq	r4, r5
 8002d72:	bf08      	it	eq
 8002d74:	ea90 0f02 	teqeq	r0, r2
 8002d78:	d005      	beq.n	8002d86 <__adddf3+0x212>
 8002d7a:	ea54 0c00 	orrs.w	ip, r4, r0
 8002d7e:	bf04      	itt	eq
 8002d80:	4619      	moveq	r1, r3
 8002d82:	4610      	moveq	r0, r2
 8002d84:	bd30      	pop	{r4, r5, pc}
 8002d86:	ea91 0f03 	teq	r1, r3
 8002d8a:	bf1e      	ittt	ne
 8002d8c:	2100      	movne	r1, #0
 8002d8e:	2000      	movne	r0, #0
 8002d90:	bd30      	popne	{r4, r5, pc}
 8002d92:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8002d96:	d105      	bne.n	8002da4 <__adddf3+0x230>
 8002d98:	0040      	lsls	r0, r0, #1
 8002d9a:	4149      	adcs	r1, r1
 8002d9c:	bf28      	it	cs
 8002d9e:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8002da2:	bd30      	pop	{r4, r5, pc}
 8002da4:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8002da8:	bf3c      	itt	cc
 8002daa:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8002dae:	bd30      	popcc	{r4, r5, pc}
 8002db0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002db4:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8002db8:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002dbc:	f04f 0000 	mov.w	r0, #0
 8002dc0:	bd30      	pop	{r4, r5, pc}
 8002dc2:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8002dc6:	bf1a      	itte	ne
 8002dc8:	4619      	movne	r1, r3
 8002dca:	4610      	movne	r0, r2
 8002dcc:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8002dd0:	bf1c      	itt	ne
 8002dd2:	460b      	movne	r3, r1
 8002dd4:	4602      	movne	r2, r0
 8002dd6:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8002dda:	bf06      	itte	eq
 8002ddc:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8002de0:	ea91 0f03 	teqeq	r1, r3
 8002de4:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8002de8:	bd30      	pop	{r4, r5, pc}
 8002dea:	bf00      	nop

08002dec <__aeabi_ui2d>:
 8002dec:	f090 0f00 	teq	r0, #0
 8002df0:	bf04      	itt	eq
 8002df2:	2100      	moveq	r1, #0
 8002df4:	4770      	bxeq	lr
 8002df6:	b530      	push	{r4, r5, lr}
 8002df8:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8002dfc:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8002e00:	f04f 0500 	mov.w	r5, #0
 8002e04:	f04f 0100 	mov.w	r1, #0
 8002e08:	e750      	b.n	8002cac <__adddf3+0x138>
 8002e0a:	bf00      	nop

08002e0c <__aeabi_i2d>:
 8002e0c:	f090 0f00 	teq	r0, #0
 8002e10:	bf04      	itt	eq
 8002e12:	2100      	moveq	r1, #0
 8002e14:	4770      	bxeq	lr
 8002e16:	b530      	push	{r4, r5, lr}
 8002e18:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8002e1c:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8002e20:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8002e24:	bf48      	it	mi
 8002e26:	4240      	negmi	r0, r0
 8002e28:	f04f 0100 	mov.w	r1, #0
 8002e2c:	e73e      	b.n	8002cac <__adddf3+0x138>
 8002e2e:	bf00      	nop

08002e30 <__aeabi_f2d>:
 8002e30:	0042      	lsls	r2, r0, #1
 8002e32:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8002e36:	ea4f 0131 	mov.w	r1, r1, rrx
 8002e3a:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8002e3e:	bf1f      	itttt	ne
 8002e40:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8002e44:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8002e48:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8002e4c:	4770      	bxne	lr
 8002e4e:	f092 0f00 	teq	r2, #0
 8002e52:	bf14      	ite	ne
 8002e54:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8002e58:	4770      	bxeq	lr
 8002e5a:	b530      	push	{r4, r5, lr}
 8002e5c:	f44f 7460 	mov.w	r4, #896	; 0x380
 8002e60:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002e64:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8002e68:	e720      	b.n	8002cac <__adddf3+0x138>
 8002e6a:	bf00      	nop

08002e6c <__aeabi_ul2d>:
 8002e6c:	ea50 0201 	orrs.w	r2, r0, r1
 8002e70:	bf08      	it	eq
 8002e72:	4770      	bxeq	lr
 8002e74:	b530      	push	{r4, r5, lr}
 8002e76:	f04f 0500 	mov.w	r5, #0
 8002e7a:	e00a      	b.n	8002e92 <__aeabi_l2d+0x16>

08002e7c <__aeabi_l2d>:
 8002e7c:	ea50 0201 	orrs.w	r2, r0, r1
 8002e80:	bf08      	it	eq
 8002e82:	4770      	bxeq	lr
 8002e84:	b530      	push	{r4, r5, lr}
 8002e86:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8002e8a:	d502      	bpl.n	8002e92 <__aeabi_l2d+0x16>
 8002e8c:	4240      	negs	r0, r0
 8002e8e:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8002e92:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8002e96:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8002e9a:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8002e9e:	f43f aedc 	beq.w	8002c5a <__adddf3+0xe6>
 8002ea2:	f04f 0203 	mov.w	r2, #3
 8002ea6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8002eaa:	bf18      	it	ne
 8002eac:	3203      	addne	r2, #3
 8002eae:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8002eb2:	bf18      	it	ne
 8002eb4:	3203      	addne	r2, #3
 8002eb6:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8002eba:	f1c2 0320 	rsb	r3, r2, #32
 8002ebe:	fa00 fc03 	lsl.w	ip, r0, r3
 8002ec2:	fa20 f002 	lsr.w	r0, r0, r2
 8002ec6:	fa01 fe03 	lsl.w	lr, r1, r3
 8002eca:	ea40 000e 	orr.w	r0, r0, lr
 8002ece:	fa21 f102 	lsr.w	r1, r1, r2
 8002ed2:	4414      	add	r4, r2
 8002ed4:	e6c1      	b.n	8002c5a <__adddf3+0xe6>
 8002ed6:	bf00      	nop

08002ed8 <__aeabi_d2f>:
 8002ed8:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002edc:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002ee0:	bf24      	itt	cs
 8002ee2:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002ee6:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002eea:	d90d      	bls.n	8002f08 <__aeabi_d2f+0x30>
 8002eec:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002ef0:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002ef4:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002ef8:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002efc:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002f00:	bf08      	it	eq
 8002f02:	f020 0001 	biceq.w	r0, r0, #1
 8002f06:	4770      	bx	lr
 8002f08:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002f0c:	d121      	bne.n	8002f52 <__aeabi_d2f+0x7a>
 8002f0e:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002f12:	bfbc      	itt	lt
 8002f14:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002f18:	4770      	bxlt	lr
 8002f1a:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002f1e:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002f22:	f1c2 0218 	rsb	r2, r2, #24
 8002f26:	f1c2 0c20 	rsb	ip, r2, #32
 8002f2a:	fa10 f30c 	lsls.w	r3, r0, ip
 8002f2e:	fa20 f002 	lsr.w	r0, r0, r2
 8002f32:	bf18      	it	ne
 8002f34:	f040 0001 	orrne.w	r0, r0, #1
 8002f38:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002f3c:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002f40:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002f44:	ea40 000c 	orr.w	r0, r0, ip
 8002f48:	fa23 f302 	lsr.w	r3, r3, r2
 8002f4c:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002f50:	e7cc      	b.n	8002eec <__aeabi_d2f+0x14>
 8002f52:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002f56:	d107      	bne.n	8002f68 <__aeabi_d2f+0x90>
 8002f58:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002f5c:	bf1e      	ittt	ne
 8002f5e:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002f62:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002f66:	4770      	bxne	lr
 8002f68:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002f6c:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002f70:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002f74:	4770      	bx	lr
 8002f76:	bf00      	nop

08002f78 <_init>:
 8002f78:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002f7a:	bf00      	nop
 8002f7c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002f7e:	bc08      	pop	{r3}
 8002f80:	469e      	mov	lr, r3
 8002f82:	4770      	bx	lr

08002f84 <_fini>:
 8002f84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002f86:	bf00      	nop
 8002f88:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002f8a:	bc08      	pop	{r3}
 8002f8c:	469e      	mov	lr, r3
 8002f8e:	4770      	bx	lr
 8002f90:	61646f6b 	.word	0x61646f6b
 8002f94:	6920616d 	.word	0x6920616d
 8002f98:	2074696e 	.word	0x2074696e
 8002f9c:	25206925 	.word	0x25206925
 8002fa0:	203a2069 	.word	0x203a2069
 8002fa4:	4f5b2000 	.word	0x4f5b2000
 8002fa8:	000a5d4b 	.word	0x000a5d4b
 8002fac:	41465b20 	.word	0x41465b20
 8002fb0:	44454c49 	.word	0x44454c49
 8002fb4:	000a0a5d 	.word	0x000a0a5d

08002fb8 <_ZL21ssd1306_init_sequence>:
 8002fb8:	b00020ae 401000c8 a6a13f81 d3a43fa8     . .....@.?...?..
 8002fc8:	d9f0d500 db12da22 af148d20 74737973     ...."... ...syst
 8002fd8:	74206d65 20656d69 5b207525 0a5d736d     em time %u [ms].
 8002fe8:	20692500 0a206925 78616d00 20692520     .%i %i ..max %i 
 8002ff8:	206e696d 61206925 61726576 25206567     min %i average %
 8003008:	70000a69 7469736f 206e6f69 6625205b     i..position [ %f
 8003018:	20662520 000a205d 74737973 69206d65      %f ] ..system i
 8003028:	20656c64 000a7525 25206925 69252069     dle %u..%i %i %i
 8003038:	0000000a                                ....

0800303c <__EH_FRAME_BEGIN__>:
 800303c:	00000000                                ....
