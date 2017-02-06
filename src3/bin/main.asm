
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b570      	push	{r4, r5, r6, lr}
 800018a:	4605      	mov	r5, r0
 800018c:	f001 f996 	bl	80014bc <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd70      	pop	{r4, r5, r6, pc}
 800019c:	f205 5674 	addw	r6, r5, #1396	; 0x574
 80001a0:	4630      	mov	r0, r6
 80001a2:	f001 f8a3 	bl	80012ec <_ZN4CI2C4initEv>
 80001a6:	4628      	mov	r0, r5
 80001a8:	f001 fa24 	bl	80015f4 <_ZN9CTerminal13terminal_initEv>
 80001ac:	2800      	cmp	r0, #0
 80001ae:	da03      	bge.n	80001b8 <_ZN7CKodama5init_Ev+0x30>
 80001b0:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001b4:	3820      	subs	r0, #32
 80001b6:	bd70      	pop	{r4, r5, r6, pc}
 80001b8:	481c      	ldr	r0, [pc, #112]	; (800022c <_ZN7CKodama5init_Ev+0xa4>)
 80001ba:	f000 fc21 	bl	8000a00 <_ZN6CTimer10timer_initEv>
 80001be:	2800      	cmp	r0, #0
 80001c0:	da03      	bge.n	80001ca <_ZN7CKodama5init_Ev+0x42>
 80001c2:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001c6:	3830      	subs	r0, #48	; 0x30
 80001c8:	bd70      	pop	{r4, r5, r6, pc}
 80001ca:	4628      	mov	r0, r5
 80001cc:	f000 feda 	bl	8000f84 <_ZN6CMotor10motor_initEv>
 80001d0:	2800      	cmp	r0, #0
 80001d2:	da03      	bge.n	80001dc <_ZN7CKodama5init_Ev+0x54>
 80001d4:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001d8:	3840      	subs	r0, #64	; 0x40
 80001da:	bd70      	pop	{r4, r5, r6, pc}
 80001dc:	f105 000c 	add.w	r0, r5, #12
 80001e0:	f000 fdb0 	bl	8000d44 <_ZN4CRGB8rgb_initEv>
 80001e4:	2800      	cmp	r0, #0
 80001e6:	da03      	bge.n	80001f0 <_ZN7CKodama5init_Ev+0x68>
 80001e8:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001ec:	3850      	subs	r0, #80	; 0x50
 80001ee:	bd70      	pop	{r4, r5, r6, pc}
 80001f0:	f105 0090 	add.w	r0, r5, #144	; 0x90
 80001f4:	4631      	mov	r1, r6
 80001f6:	f000 faf7 	bl	80007e8 <_ZN4CIMU8imu_initEP4CI2C>
 80001fa:	2800      	cmp	r0, #0
 80001fc:	da03      	bge.n	8000206 <_ZN7CKodama5init_Ev+0x7e>
 80001fe:	f5a0 406a 	sub.w	r0, r0, #59904	; 0xea00
 8000202:	3860      	subs	r0, #96	; 0x60
 8000204:	bd70      	pop	{r4, r5, r6, pc}
 8000206:	f105 00d4 	add.w	r0, r5, #212	; 0xd4
 800020a:	4631      	mov	r1, r6
 800020c:	f000 fa02 	bl	8000614 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C>
 8000210:	1e04      	subs	r4, r0, #0
 8000212:	da04      	bge.n	800021e <_ZN7CKodama5init_Ev+0x96>
 8000214:	f5a4 3088 	sub.w	r0, r4, #69632	; 0x11000
 8000218:	f5a0 70b8 	sub.w	r0, r0, #368	; 0x170
 800021c:	bd70      	pop	{r4, r5, r6, pc}
 800021e:	f505 609b 	add.w	r0, r5, #1240	; 0x4d8
 8000222:	4631      	mov	r1, r6
 8000224:	f000 f84c 	bl	80002c0 <_ZN9CMLX906217ir_initEP4CI2C>
 8000228:	4620      	mov	r0, r4
 800022a:	bd70      	pop	{r4, r5, r6, pc}
 800022c:	200007f8 	.word	0x200007f8

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
 8000246:	f001 fb00 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 800024a:	4628      	mov	r0, r5
 800024c:	b91e      	cbnz	r6, 8000256 <_ZN7CKodama4initEv+0x26>
 800024e:	4907      	ldr	r1, [pc, #28]	; (800026c <_ZN7CKodama4initEv+0x3c>)
 8000250:	f001 fafb 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 8000254:	e005      	b.n	8000262 <_ZN7CKodama4initEv+0x32>
 8000256:	4906      	ldr	r1, [pc, #24]	; (8000270 <_ZN7CKodama4initEv+0x40>)
 8000258:	3401      	adds	r4, #1
 800025a:	f001 faf6 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 800025e:	2c08      	cmp	r4, #8
 8000260:	d1e9      	bne.n	8000236 <_ZN7CKodama4initEv+0x6>
 8000262:	4630      	mov	r0, r6
 8000264:	bd70      	pop	{r4, r5, r6, pc}
 8000266:	bf00      	nop
 8000268:	08002fec 	.word	0x08002fec
 800026c:	08003001 	.word	0x08003001
 8000270:	08003008 	.word	0x08003008

08000274 <_ZN7CKodama5sleepEv>:
 8000274:	b510      	push	{r4, lr}
 8000276:	2108      	movs	r1, #8
 8000278:	4604      	mov	r4, r0
 800027a:	f001 f97f 	bl	800157c <_ZN5CGPIO8gpio_offEm>
 800027e:	4620      	mov	r0, r4
 8000280:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000284:	f000 bde6 	b.w	8000e54 <_ZN6CMotor11motor_sleepEv>

08000288 <_ZN7CKodama6wakeupEv>:
 8000288:	b510      	push	{r4, lr}
 800028a:	2108      	movs	r1, #8
 800028c:	4604      	mov	r4, r0
 800028e:	f001 f967 	bl	8001560 <_ZN5CGPIO7gpio_onEm>
 8000292:	2100      	movs	r1, #0
 8000294:	4620      	mov	r0, r4
 8000296:	460a      	mov	r2, r1
 8000298:	f000 fe6e 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 800029c:	4620      	mov	r0, r4
 800029e:	2101      	movs	r1, #1
 80002a0:	2200      	movs	r2, #0
 80002a2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80002a6:	f000 be67 	b.w	8000f78 <_ZN6CMotor9set_motorEml>

080002aa <_ZN7CKodama6set_dtEl>:
 80002aa:	f8c0 1568 	str.w	r1, [r0, #1384]	; 0x568
 80002ae:	4770      	bx	lr

080002b0 <_ZN5CMath3absEf>:
 80002b0:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 80002b4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80002b8:	bf48      	it	mi
 80002ba:	eeb1 0a40 	vnegmi.f32	s0, s0
 80002be:	4770      	bx	lr

080002c0 <_ZN9CMLX906217ir_initEP4CI2C>:
 80002c0:	2300      	movs	r3, #0
 80002c2:	b570      	push	{r4, r5, r6, lr}
 80002c4:	4602      	mov	r2, r0
 80002c6:	4604      	mov	r4, r0
 80002c8:	6001      	str	r1, [r0, #0]
 80002ca:	f8a0 3084 	strh.w	r3, [r0, #132]	; 0x84
 80002ce:	f8a0 3086 	strh.w	r3, [r0, #134]	; 0x86
 80002d2:	f8a0 3088 	strh.w	r3, [r0, #136]	; 0x88
 80002d6:	f8a0 308a 	strh.w	r3, [r0, #138]	; 0x8a
 80002da:	f8a0 308c 	strh.w	r3, [r0, #140]	; 0x8c
 80002de:	3080      	adds	r0, #128	; 0x80
 80002e0:	2300      	movs	r3, #0
 80002e2:	18d6      	adds	r6, r2, r3
 80002e4:	3302      	adds	r3, #2
 80002e6:	2500      	movs	r5, #0
 80002e8:	2b20      	cmp	r3, #32
 80002ea:	80b5      	strh	r5, [r6, #4]
 80002ec:	d1f9      	bne.n	80002e2 <_ZN9CMLX906217ir_initEP4CI2C+0x22>
 80002ee:	3220      	adds	r2, #32
 80002f0:	4282      	cmp	r2, r0
 80002f2:	d1f5      	bne.n	80002e0 <_ZN9CMLX906217ir_initEP4CI2C+0x20>
 80002f4:	4608      	mov	r0, r1
 80002f6:	f001 f81f 	bl	8001338 <_ZN4CI2C5StartEv>
 80002fa:	6820      	ldr	r0, [r4, #0]
 80002fc:	21c0      	movs	r1, #192	; 0xc0
 80002fe:	f001 f845 	bl	800138c <_ZN4CI2C5WriteEh>
 8000302:	6820      	ldr	r0, [r4, #0]
 8000304:	2103      	movs	r1, #3
 8000306:	f001 f841 	bl	800138c <_ZN4CI2C5WriteEh>
 800030a:	6820      	ldr	r0, [r4, #0]
 800030c:	21e4      	movs	r1, #228	; 0xe4
 800030e:	f001 f83d 	bl	800138c <_ZN4CI2C5WriteEh>
 8000312:	6820      	ldr	r0, [r4, #0]
 8000314:	2139      	movs	r1, #57	; 0x39
 8000316:	f001 f839 	bl	800138c <_ZN4CI2C5WriteEh>
 800031a:	6820      	ldr	r0, [r4, #0]
 800031c:	21f1      	movs	r1, #241	; 0xf1
 800031e:	f001 f835 	bl	800138c <_ZN4CI2C5WriteEh>
 8000322:	2146      	movs	r1, #70	; 0x46
 8000324:	6820      	ldr	r0, [r4, #0]
 8000326:	f001 f831 	bl	800138c <_ZN4CI2C5WriteEh>
 800032a:	6820      	ldr	r0, [r4, #0]
 800032c:	f001 f819 	bl	8001362 <_ZN4CI2C4StopEv>
 8000330:	4628      	mov	r0, r5
 8000332:	bd70      	pop	{r4, r5, r6, pc}

08000334 <_ZN9CMLX9062110ir_refreshEv>:
 8000334:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000338:	4604      	mov	r4, r0
 800033a:	6800      	ldr	r0, [r0, #0]
 800033c:	f000 fffc 	bl	8001338 <_ZN4CI2C5StartEv>
 8000340:	21c0      	movs	r1, #192	; 0xc0
 8000342:	6820      	ldr	r0, [r4, #0]
 8000344:	f001 f822 	bl	800138c <_ZN4CI2C5WriteEh>
 8000348:	2102      	movs	r1, #2
 800034a:	6820      	ldr	r0, [r4, #0]
 800034c:	f001 f81e 	bl	800138c <_ZN4CI2C5WriteEh>
 8000350:	2100      	movs	r1, #0
 8000352:	6820      	ldr	r0, [r4, #0]
 8000354:	f001 f81a 	bl	800138c <_ZN4CI2C5WriteEh>
 8000358:	2101      	movs	r1, #1
 800035a:	6820      	ldr	r0, [r4, #0]
 800035c:	f001 f816 	bl	800138c <_ZN4CI2C5WriteEh>
 8000360:	2140      	movs	r1, #64	; 0x40
 8000362:	6820      	ldr	r0, [r4, #0]
 8000364:	f001 f812 	bl	800138c <_ZN4CI2C5WriteEh>
 8000368:	6820      	ldr	r0, [r4, #0]
 800036a:	f000 ffe5 	bl	8001338 <_ZN4CI2C5StartEv>
 800036e:	6820      	ldr	r0, [r4, #0]
 8000370:	21c1      	movs	r1, #193	; 0xc1
 8000372:	f001 f80b 	bl	800138c <_ZN4CI2C5WriteEh>
 8000376:	f648 23d0 	movw	r3, #35536	; 0x8ad0
 800037a:	f8a4 3084 	strh.w	r3, [r4, #132]	; 0x84
 800037e:	2500      	movs	r5, #0
 8000380:	f247 5330 	movw	r3, #30000	; 0x7530
 8000384:	f8a4 3086 	strh.w	r3, [r4, #134]	; 0x86
 8000388:	f8a4 5088 	strh.w	r5, [r4, #136]	; 0x88
 800038c:	46a0      	mov	r8, r4
 800038e:	f104 0920 	add.w	r9, r4, #32
 8000392:	2700      	movs	r7, #0
 8000394:	2101      	movs	r1, #1
 8000396:	6820      	ldr	r0, [r4, #0]
 8000398:	f001 f842 	bl	8001420 <_ZN4CI2C4ReadEh>
 800039c:	2101      	movs	r1, #1
 800039e:	4606      	mov	r6, r0
 80003a0:	6820      	ldr	r0, [r4, #0]
 80003a2:	f001 f83d 	bl	8001420 <_ZN4CI2C4ReadEh>
 80003a6:	eb08 0307 	add.w	r3, r8, r7
 80003aa:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80003ae:	b280      	uxth	r0, r0
 80003b0:	f8a3 0064 	strh.w	r0, [r3, #100]	; 0x64
 80003b4:	f9b4 2084 	ldrsh.w	r2, [r4, #132]	; 0x84
 80003b8:	b203      	sxth	r3, r0
 80003ba:	429a      	cmp	r2, r3
 80003bc:	f9b4 2086 	ldrsh.w	r2, [r4, #134]	; 0x86
 80003c0:	bfb8      	it	lt
 80003c2:	f8a4 0084 	strhlt.w	r0, [r4, #132]	; 0x84
 80003c6:	3f20      	subs	r7, #32
 80003c8:	429a      	cmp	r2, r3
 80003ca:	bfc8      	it	gt
 80003cc:	f8a4 0086 	strhgt.w	r0, [r4, #134]	; 0x86
 80003d0:	f117 0f80 	cmn.w	r7, #128	; 0x80
 80003d4:	441d      	add	r5, r3
 80003d6:	d1dd      	bne.n	8000394 <_ZN9CMLX9062110ir_refreshEv+0x60>
 80003d8:	f108 0802 	add.w	r8, r8, #2
 80003dc:	45c8      	cmp	r8, r9
 80003de:	d1d8      	bne.n	8000392 <_ZN9CMLX9062110ir_refreshEv+0x5e>
 80003e0:	09ad      	lsrs	r5, r5, #6
 80003e2:	6820      	ldr	r0, [r4, #0]
 80003e4:	f8a4 5088 	strh.w	r5, [r4, #136]	; 0x88
 80003e8:	f000 ffbb 	bl	8001362 <_ZN4CI2C4StopEv>
 80003ec:	f9b4 0084 	ldrsh.w	r0, [r4, #132]	; 0x84
 80003f0:	f9b4 3086 	ldrsh.w	r3, [r4, #134]	; 0x86
 80003f4:	4298      	cmp	r0, r3
 80003f6:	dd37      	ble.n	8000468 <_ZN9CMLX9062110ir_refreshEv+0x134>
 80003f8:	4a1c      	ldr	r2, [pc, #112]	; (800046c <_ZN9CMLX9062110ir_refreshEv+0x138>)
 80003fa:	1ac0      	subs	r0, r0, r3
 80003fc:	f104 0682 	add.w	r6, r4, #130	; 0x82
 8000400:	fb92 f0f0 	sdiv	r0, r2, r0
 8000404:	1ca2      	adds	r2, r4, #2
 8000406:	fb03 f100 	mul.w	r1, r3, r0
 800040a:	f102 0520 	add.w	r5, r2, #32
 800040e:	f932 3f02 	ldrsh.w	r3, [r2, #2]!
 8000412:	4343      	muls	r3, r0
 8000414:	42aa      	cmp	r2, r5
 8000416:	eba3 0301 	sub.w	r3, r3, r1
 800041a:	f44f 777a 	mov.w	r7, #1000	; 0x3e8
 800041e:	fb93 f3f7 	sdiv	r3, r3, r7
 8000422:	8013      	strh	r3, [r2, #0]
 8000424:	d1f3      	bne.n	800040e <_ZN9CMLX9062110ir_refreshEv+0xda>
 8000426:	42b2      	cmp	r2, r6
 8000428:	d1ef      	bne.n	800040a <_ZN9CMLX9062110ir_refreshEv+0xd6>
 800042a:	2300      	movs	r3, #0
 800042c:	461a      	mov	r2, r3
 800042e:	4619      	mov	r1, r3
 8000430:	461d      	mov	r5, r3
 8000432:	00df      	lsls	r7, r3, #3
 8000434:	2000      	movs	r0, #0
 8000436:	18c6      	adds	r6, r0, r3
 8000438:	4426      	add	r6, r4
 800043a:	ea4f 1e40 	mov.w	lr, r0, lsl #5
 800043e:	f9b6 6004 	ldrsh.w	r6, [r6, #4]
 8000442:	3002      	adds	r0, #2
 8000444:	2820      	cmp	r0, #32
 8000446:	4435      	add	r5, r6
 8000448:	fb0e 1106 	mla	r1, lr, r6, r1
 800044c:	fb07 2206 	mla	r2, r7, r6, r2
 8000450:	d1f1      	bne.n	8000436 <_ZN9CMLX9062110ir_refreshEv+0x102>
 8000452:	3320      	adds	r3, #32
 8000454:	2b80      	cmp	r3, #128	; 0x80
 8000456:	d1ec      	bne.n	8000432 <_ZN9CMLX9062110ir_refreshEv+0xfe>
 8000458:	fb91 f1f5 	sdiv	r1, r1, r5
 800045c:	fb92 f2f5 	sdiv	r2, r2, r5
 8000460:	f8a4 108a 	strh.w	r1, [r4, #138]	; 0x8a
 8000464:	f8a4 208c 	strh.w	r2, [r4, #140]	; 0x8c
 8000468:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800046c:	0003e418 	.word	0x0003e418

08000470 <_ZN12CSSD1306OLED14oled_lcd_clearEv>:
 8000470:	b510      	push	{r4, lr}
 8000472:	f500 6280 	add.w	r2, r0, #1024	; 0x400
 8000476:	2300      	movs	r3, #0
 8000478:	18c1      	adds	r1, r0, r3
 800047a:	3301      	adds	r3, #1
 800047c:	2400      	movs	r4, #0
 800047e:	2b80      	cmp	r3, #128	; 0x80
 8000480:	710c      	strb	r4, [r1, #4]
 8000482:	d1f9      	bne.n	8000478 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x8>
 8000484:	3080      	adds	r0, #128	; 0x80
 8000486:	4290      	cmp	r0, r2
 8000488:	d1f5      	bne.n	8000476 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x6>
 800048a:	bd10      	pop	{r4, pc}

0800048c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>:
 800048c:	2980      	cmp	r1, #128	; 0x80
 800048e:	b570      	push	{r4, r5, r6, lr}
 8000490:	d814      	bhi.n	80004bc <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x30>
 8000492:	2a40      	cmp	r2, #64	; 0x40
 8000494:	d812      	bhi.n	80004bc <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x30>
 8000496:	08d6      	lsrs	r6, r2, #3
 8000498:	01f6      	lsls	r6, r6, #7
 800049a:	1874      	adds	r4, r6, r1
 800049c:	4404      	add	r4, r0
 800049e:	f002 0207 	and.w	r2, r2, #7
 80004a2:	2501      	movs	r5, #1
 80004a4:	7924      	ldrb	r4, [r4, #4]
 80004a6:	4095      	lsls	r5, r2
 80004a8:	b11b      	cbz	r3, 80004b2 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x26>
 80004aa:	ea45 0304 	orr.w	r3, r5, r4
 80004ae:	b2db      	uxtb	r3, r3
 80004b0:	e001      	b.n	80004b6 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x2a>
 80004b2:	ea24 0305 	bic.w	r3, r4, r5
 80004b6:	4431      	add	r1, r6
 80004b8:	4408      	add	r0, r1
 80004ba:	7103      	strb	r3, [r0, #4]
 80004bc:	bd70      	pop	{r4, r5, r6, pc}
	...

080004c0 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh>:
 80004c0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80004c4:	9d08      	ldr	r5, [sp, #32]
 80004c6:	f89d 4024 	ldrb.w	r4, [sp, #36]	; 0x24
 80004ca:	435d      	muls	r5, r3
 80004cc:	4680      	mov	r8, r0
 80004ce:	4689      	mov	r9, r1
 80004d0:	4692      	mov	sl, r2
 80004d2:	2600      	movs	r6, #0
 80004d4:	461f      	mov	r7, r3
 80004d6:	fb04 f305 	mul.w	r3, r4, r5
 80004da:	24ff      	movs	r4, #255	; 0xff
 80004dc:	fbb3 f4f4 	udiv	r4, r3, r4
 80004e0:	42ae      	cmp	r6, r5
 80004e2:	d018      	beq.n	8000516 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x56>
 80004e4:	b1ac      	cbz	r4, 8000512 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x52>
 80004e6:	4a0d      	ldr	r2, [pc, #52]	; (800051c <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x5c>)
 80004e8:	6813      	ldr	r3, [r2, #0]
 80004ea:	f503 33cc 	add.w	r3, r3, #104448	; 0x19800
 80004ee:	f203 1319 	addw	r3, r3, #281	; 0x119
 80004f2:	6013      	str	r3, [r2, #0]
 80004f4:	fbb3 f1f5 	udiv	r1, r3, r5
 80004f8:	fb05 3311 	mls	r3, r5, r1, r3
 80004fc:	fbb3 f2f7 	udiv	r2, r3, r7
 8000500:	fb07 3112 	mls	r1, r7, r2, r3
 8000504:	4640      	mov	r0, r8
 8000506:	4449      	add	r1, r9
 8000508:	4452      	add	r2, sl
 800050a:	2301      	movs	r3, #1
 800050c:	f7ff ffbe 	bl	800048c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 8000510:	3c01      	subs	r4, #1
 8000512:	3601      	adds	r6, #1
 8000514:	e7e4      	b.n	80004e0 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x20>
 8000516:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800051a:	bf00      	nop
 800051c:	200005b4 	.word	0x200005b4

08000520 <_ZN12CSSD1306OLED6setposEhh>:
 8000520:	b570      	push	{r4, r5, r6, lr}
 8000522:	4604      	mov	r4, r0
 8000524:	6800      	ldr	r0, [r0, #0]
 8000526:	4615      	mov	r5, r2
 8000528:	460e      	mov	r6, r1
 800052a:	f000 ff05 	bl	8001338 <_ZN4CI2C5StartEv>
 800052e:	6820      	ldr	r0, [r4, #0]
 8000530:	2178      	movs	r1, #120	; 0x78
 8000532:	f000 ff2b 	bl	800138c <_ZN4CI2C5WriteEh>
 8000536:	6820      	ldr	r0, [r4, #0]
 8000538:	2100      	movs	r1, #0
 800053a:	f000 ff27 	bl	800138c <_ZN4CI2C5WriteEh>
 800053e:	f105 010b 	add.w	r1, r5, #11
 8000542:	6820      	ldr	r0, [r4, #0]
 8000544:	b2c9      	uxtb	r1, r1
 8000546:	f000 ff21 	bl	800138c <_ZN4CI2C5WriteEh>
 800054a:	0931      	lsrs	r1, r6, #4
 800054c:	6820      	ldr	r0, [r4, #0]
 800054e:	f041 0110 	orr.w	r1, r1, #16
 8000552:	f000 ff1b 	bl	800138c <_ZN4CI2C5WriteEh>
 8000556:	6820      	ldr	r0, [r4, #0]
 8000558:	f006 010f 	and.w	r1, r6, #15
 800055c:	f000 ff16 	bl	800138c <_ZN4CI2C5WriteEh>
 8000560:	6820      	ldr	r0, [r4, #0]
 8000562:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000566:	f000 befc 	b.w	8001362 <_ZN4CI2C4StopEv>

0800056a <_ZN12CSSD1306OLED16oled_lcd_refreshEv>:
 800056a:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800056c:	4604      	mov	r4, r0
 800056e:	2500      	movs	r5, #0
 8000570:	b2ea      	uxtb	r2, r5
 8000572:	2100      	movs	r1, #0
 8000574:	4620      	mov	r0, r4
 8000576:	f7ff ffd3 	bl	8000520 <_ZN12CSSD1306OLED6setposEhh>
 800057a:	6820      	ldr	r0, [r4, #0]
 800057c:	f000 fedc 	bl	8001338 <_ZN4CI2C5StartEv>
 8000580:	2178      	movs	r1, #120	; 0x78
 8000582:	6820      	ldr	r0, [r4, #0]
 8000584:	f000 ff02 	bl	800138c <_ZN4CI2C5WriteEh>
 8000588:	6820      	ldr	r0, [r4, #0]
 800058a:	2140      	movs	r1, #64	; 0x40
 800058c:	f000 fefe 	bl	800138c <_ZN4CI2C5WriteEh>
 8000590:	01ef      	lsls	r7, r5, #7
 8000592:	2600      	movs	r6, #0
 8000594:	19f3      	adds	r3, r6, r7
 8000596:	4423      	add	r3, r4
 8000598:	6820      	ldr	r0, [r4, #0]
 800059a:	7919      	ldrb	r1, [r3, #4]
 800059c:	3601      	adds	r6, #1
 800059e:	f000 fef5 	bl	800138c <_ZN4CI2C5WriteEh>
 80005a2:	2e80      	cmp	r6, #128	; 0x80
 80005a4:	d1f6      	bne.n	8000594 <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x2a>
 80005a6:	6820      	ldr	r0, [r4, #0]
 80005a8:	3501      	adds	r5, #1
 80005aa:	f000 feda 	bl	8001362 <_ZN4CI2C4StopEv>
 80005ae:	2d08      	cmp	r5, #8
 80005b0:	d1de      	bne.n	8000570 <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x6>
 80005b2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

080005b4 <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv>:
 80005b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80005b6:	4e13      	ldr	r6, [pc, #76]	; (8000604 <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv+0x50>)
 80005b8:	4604      	mov	r4, r0
 80005ba:	7832      	ldrb	r2, [r6, #0]
 80005bc:	2100      	movs	r1, #0
 80005be:	f7ff ffaf 	bl	8000520 <_ZN12CSSD1306OLED6setposEhh>
 80005c2:	6820      	ldr	r0, [r4, #0]
 80005c4:	f000 feb8 	bl	8001338 <_ZN4CI2C5StartEv>
 80005c8:	2178      	movs	r1, #120	; 0x78
 80005ca:	6820      	ldr	r0, [r4, #0]
 80005cc:	f000 fede 	bl	800138c <_ZN4CI2C5WriteEh>
 80005d0:	6820      	ldr	r0, [r4, #0]
 80005d2:	2140      	movs	r1, #64	; 0x40
 80005d4:	f000 feda 	bl	800138c <_ZN4CI2C5WriteEh>
 80005d8:	2500      	movs	r5, #0
 80005da:	6833      	ldr	r3, [r6, #0]
 80005dc:	6820      	ldr	r0, [r4, #0]
 80005de:	4f09      	ldr	r7, [pc, #36]	; (8000604 <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv+0x50>)
 80005e0:	eb05 13c3 	add.w	r3, r5, r3, lsl #7
 80005e4:	4423      	add	r3, r4
 80005e6:	3501      	adds	r5, #1
 80005e8:	7919      	ldrb	r1, [r3, #4]
 80005ea:	f000 fecf 	bl	800138c <_ZN4CI2C5WriteEh>
 80005ee:	2d80      	cmp	r5, #128	; 0x80
 80005f0:	d1f3      	bne.n	80005da <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv+0x26>
 80005f2:	6820      	ldr	r0, [r4, #0]
 80005f4:	f000 feb5 	bl	8001362 <_ZN4CI2C4StopEv>
 80005f8:	683b      	ldr	r3, [r7, #0]
 80005fa:	3301      	adds	r3, #1
 80005fc:	f003 0307 	and.w	r3, r3, #7
 8000600:	603b      	str	r3, [r7, #0]
 8000602:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000604:	200005b0 	.word	0x200005b0

08000608 <_ZN12CSSD1306OLED12send_commandEh>:
 8000608:	460b      	mov	r3, r1
 800060a:	6800      	ldr	r0, [r0, #0]
 800060c:	2178      	movs	r1, #120	; 0x78
 800060e:	2200      	movs	r2, #0
 8000610:	f000 beee 	b.w	80013f0 <_ZN4CI2C9write_regEhhh>

08000614 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C>:
 8000614:	b538      	push	{r3, r4, r5, lr}
 8000616:	4604      	mov	r4, r0
 8000618:	6001      	str	r1, [r0, #0]
 800061a:	b181      	cbz	r1, 800063e <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0x2a>
 800061c:	2500      	movs	r5, #0
 800061e:	4b09      	ldr	r3, [pc, #36]	; (8000644 <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0x30>)
 8000620:	4620      	mov	r0, r4
 8000622:	5d59      	ldrb	r1, [r3, r5]
 8000624:	3501      	adds	r5, #1
 8000626:	f7ff ffef 	bl	8000608 <_ZN12CSSD1306OLED12send_commandEh>
 800062a:	2d1c      	cmp	r5, #28
 800062c:	d1f7      	bne.n	800061e <_ZN12CSSD1306OLED13oled_lcd_initEP4CI2C+0xa>
 800062e:	4620      	mov	r0, r4
 8000630:	f7ff ff1e 	bl	8000470 <_ZN12CSSD1306OLED14oled_lcd_clearEv>
 8000634:	4620      	mov	r0, r4
 8000636:	f7ff ff98 	bl	800056a <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
 800063a:	2000      	movs	r0, #0
 800063c:	bd38      	pop	{r3, r4, r5, pc}
 800063e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000642:	bd38      	pop	{r3, r4, r5, pc}
 8000644:	08003014 	.word	0x08003014

08000648 <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj>:
 8000648:	011b      	lsls	r3, r3, #4
 800064a:	eb03 03d2 	add.w	r3, r3, r2, lsr #3
 800064e:	f002 0207 	and.w	r2, r2, #7
 8000652:	5cc8      	ldrb	r0, [r1, r3]
 8000654:	4110      	asrs	r0, r2
 8000656:	f000 0001 	and.w	r0, r0, #1
 800065a:	4770      	bx	lr

0800065c <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj>:
 800065c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000660:	4606      	mov	r6, r0
 8000662:	460f      	mov	r7, r1
 8000664:	4690      	mov	r8, r2
 8000666:	2500      	movs	r5, #0
 8000668:	2400      	movs	r4, #0
 800066a:	eb04 0208 	add.w	r2, r4, r8
 800066e:	4639      	mov	r1, r7
 8000670:	f002 027f 	and.w	r2, r2, #127	; 0x7f
 8000674:	462b      	mov	r3, r5
 8000676:	4630      	mov	r0, r6
 8000678:	f7ff ffe6 	bl	8000648 <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj>
 800067c:	4621      	mov	r1, r4
 800067e:	b2c3      	uxtb	r3, r0
 8000680:	462a      	mov	r2, r5
 8000682:	4630      	mov	r0, r6
 8000684:	3401      	adds	r4, #1
 8000686:	f7ff ff01 	bl	800048c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
 800068a:	2c80      	cmp	r4, #128	; 0x80
 800068c:	d1ed      	bne.n	800066a <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj+0xe>
 800068e:	3501      	adds	r5, #1
 8000690:	2d40      	cmp	r5, #64	; 0x40
 8000692:	d1e9      	bne.n	8000668 <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj+0xc>
 8000694:	4630      	mov	r0, r6
 8000696:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800069a:	f7ff bf66 	b.w	800056a <_ZN12CSSD1306OLED16oled_lcd_refreshEv>

0800069e <_ZN4CIMU8imu_readEv>:
 800069e:	b570      	push	{r4, r5, r6, lr}
 80006a0:	4604      	mov	r4, r0
 80006a2:	6800      	ldr	r0, [r0, #0]
 80006a4:	f000 fe48 	bl	8001338 <_ZN4CI2C5StartEv>
 80006a8:	21d4      	movs	r1, #212	; 0xd4
 80006aa:	6820      	ldr	r0, [r4, #0]
 80006ac:	f000 fe6e 	bl	800138c <_ZN4CI2C5WriteEh>
 80006b0:	21a8      	movs	r1, #168	; 0xa8
 80006b2:	6820      	ldr	r0, [r4, #0]
 80006b4:	f000 fe6a 	bl	800138c <_ZN4CI2C5WriteEh>
 80006b8:	6820      	ldr	r0, [r4, #0]
 80006ba:	f000 fe3d 	bl	8001338 <_ZN4CI2C5StartEv>
 80006be:	21d5      	movs	r1, #213	; 0xd5
 80006c0:	6820      	ldr	r0, [r4, #0]
 80006c2:	f000 fe63 	bl	800138c <_ZN4CI2C5WriteEh>
 80006c6:	2101      	movs	r1, #1
 80006c8:	6820      	ldr	r0, [r4, #0]
 80006ca:	f000 fea9 	bl	8001420 <_ZN4CI2C4ReadEh>
 80006ce:	2101      	movs	r1, #1
 80006d0:	b285      	uxth	r5, r0
 80006d2:	6820      	ldr	r0, [r4, #0]
 80006d4:	f000 fea4 	bl	8001420 <_ZN4CI2C4ReadEh>
 80006d8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006dc:	b200      	sxth	r0, r0
 80006de:	62a0      	str	r0, [r4, #40]	; 0x28
 80006e0:	2101      	movs	r1, #1
 80006e2:	6820      	ldr	r0, [r4, #0]
 80006e4:	f000 fe9c 	bl	8001420 <_ZN4CI2C4ReadEh>
 80006e8:	2101      	movs	r1, #1
 80006ea:	b285      	uxth	r5, r0
 80006ec:	6820      	ldr	r0, [r4, #0]
 80006ee:	f000 fe97 	bl	8001420 <_ZN4CI2C4ReadEh>
 80006f2:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006f6:	b200      	sxth	r0, r0
 80006f8:	62e0      	str	r0, [r4, #44]	; 0x2c
 80006fa:	2101      	movs	r1, #1
 80006fc:	6820      	ldr	r0, [r4, #0]
 80006fe:	f000 fe8f 	bl	8001420 <_ZN4CI2C4ReadEh>
 8000702:	2100      	movs	r1, #0
 8000704:	b285      	uxth	r5, r0
 8000706:	6820      	ldr	r0, [r4, #0]
 8000708:	f000 fe8a 	bl	8001420 <_ZN4CI2C4ReadEh>
 800070c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000710:	b200      	sxth	r0, r0
 8000712:	6320      	str	r0, [r4, #48]	; 0x30
 8000714:	6820      	ldr	r0, [r4, #0]
 8000716:	f000 fe24 	bl	8001362 <_ZN4CI2C4StopEv>
 800071a:	6820      	ldr	r0, [r4, #0]
 800071c:	f000 fe0c 	bl	8001338 <_ZN4CI2C5StartEv>
 8000720:	213c      	movs	r1, #60	; 0x3c
 8000722:	6820      	ldr	r0, [r4, #0]
 8000724:	f000 fe32 	bl	800138c <_ZN4CI2C5WriteEh>
 8000728:	21a8      	movs	r1, #168	; 0xa8
 800072a:	6820      	ldr	r0, [r4, #0]
 800072c:	f000 fe2e 	bl	800138c <_ZN4CI2C5WriteEh>
 8000730:	6820      	ldr	r0, [r4, #0]
 8000732:	f000 fe01 	bl	8001338 <_ZN4CI2C5StartEv>
 8000736:	213d      	movs	r1, #61	; 0x3d
 8000738:	6820      	ldr	r0, [r4, #0]
 800073a:	f000 fe27 	bl	800138c <_ZN4CI2C5WriteEh>
 800073e:	2101      	movs	r1, #1
 8000740:	6820      	ldr	r0, [r4, #0]
 8000742:	f000 fe6d 	bl	8001420 <_ZN4CI2C4ReadEh>
 8000746:	2101      	movs	r1, #1
 8000748:	b285      	uxth	r5, r0
 800074a:	6820      	ldr	r0, [r4, #0]
 800074c:	f000 fe68 	bl	8001420 <_ZN4CI2C4ReadEh>
 8000750:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000754:	b200      	sxth	r0, r0
 8000756:	6360      	str	r0, [r4, #52]	; 0x34
 8000758:	2101      	movs	r1, #1
 800075a:	6820      	ldr	r0, [r4, #0]
 800075c:	f000 fe60 	bl	8001420 <_ZN4CI2C4ReadEh>
 8000760:	2101      	movs	r1, #1
 8000762:	b285      	uxth	r5, r0
 8000764:	6820      	ldr	r0, [r4, #0]
 8000766:	f000 fe5b 	bl	8001420 <_ZN4CI2C4ReadEh>
 800076a:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800076e:	b200      	sxth	r0, r0
 8000770:	63a0      	str	r0, [r4, #56]	; 0x38
 8000772:	2101      	movs	r1, #1
 8000774:	6820      	ldr	r0, [r4, #0]
 8000776:	f000 fe53 	bl	8001420 <_ZN4CI2C4ReadEh>
 800077a:	2100      	movs	r1, #0
 800077c:	b285      	uxth	r5, r0
 800077e:	6820      	ldr	r0, [r4, #0]
 8000780:	f000 fe4e 	bl	8001420 <_ZN4CI2C4ReadEh>
 8000784:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000788:	b200      	sxth	r0, r0
 800078a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800078c:	6820      	ldr	r0, [r4, #0]
 800078e:	f000 fde8 	bl	8001362 <_ZN4CI2C4StopEv>
 8000792:	6ae2      	ldr	r2, [r4, #44]	; 0x2c
 8000794:	68a3      	ldr	r3, [r4, #8]
 8000796:	6b20      	ldr	r0, [r4, #48]	; 0x30
 8000798:	1a9b      	subs	r3, r3, r2
 800079a:	6922      	ldr	r2, [r4, #16]
 800079c:	26c8      	movs	r6, #200	; 0xc8
 800079e:	fb93 f3f6 	sdiv	r3, r3, r6
 80007a2:	441a      	add	r2, r3
 80007a4:	6c23      	ldr	r3, [r4, #64]	; 0x40
 80007a6:	6122      	str	r2, [r4, #16]
 80007a8:	2164      	movs	r1, #100	; 0x64
 80007aa:	4359      	muls	r1, r3
 80007ac:	f640 15e2 	movw	r5, #2530	; 0x9e2
 80007b0:	434a      	muls	r2, r1
 80007b2:	6863      	ldr	r3, [r4, #4]
 80007b4:	fb92 f2f5 	sdiv	r2, r2, r5
 80007b8:	61e2      	str	r2, [r4, #28]
 80007ba:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 80007bc:	1a9b      	subs	r3, r3, r2
 80007be:	6962      	ldr	r2, [r4, #20]
 80007c0:	fb93 f3f6 	sdiv	r3, r3, r6
 80007c4:	441a      	add	r2, r3
 80007c6:	6162      	str	r2, [r4, #20]
 80007c8:	434a      	muls	r2, r1
 80007ca:	fb92 f2f5 	sdiv	r2, r2, r5
 80007ce:	6222      	str	r2, [r4, #32]
 80007d0:	68e2      	ldr	r2, [r4, #12]
 80007d2:	1a12      	subs	r2, r2, r0
 80007d4:	fb92 f0f6 	sdiv	r0, r2, r6
 80007d8:	69a2      	ldr	r2, [r4, #24]
 80007da:	1883      	adds	r3, r0, r2
 80007dc:	61a3      	str	r3, [r4, #24]
 80007de:	434b      	muls	r3, r1
 80007e0:	fb93 f3f5 	sdiv	r3, r3, r5
 80007e4:	6263      	str	r3, [r4, #36]	; 0x24
 80007e6:	bd70      	pop	{r4, r5, r6, pc}

080007e8 <_ZN4CIMU8imu_initEP4CI2C>:
 80007e8:	230a      	movs	r3, #10
 80007ea:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80007ee:	6403      	str	r3, [r0, #64]	; 0x40
 80007f0:	2300      	movs	r3, #0
 80007f2:	4604      	mov	r4, r0
 80007f4:	6001      	str	r1, [r0, #0]
 80007f6:	6043      	str	r3, [r0, #4]
 80007f8:	6083      	str	r3, [r0, #8]
 80007fa:	60c3      	str	r3, [r0, #12]
 80007fc:	6103      	str	r3, [r0, #16]
 80007fe:	6143      	str	r3, [r0, #20]
 8000800:	6183      	str	r3, [r0, #24]
 8000802:	f242 7511 	movw	r5, #10001	; 0x2711
 8000806:	3d01      	subs	r5, #1
 8000808:	d001      	beq.n	800080e <_ZN4CIMU8imu_initEP4CI2C+0x26>
 800080a:	bf00      	nop
 800080c:	e7fb      	b.n	8000806 <_ZN4CIMU8imu_initEP4CI2C+0x1e>
 800080e:	4608      	mov	r0, r1
 8000810:	220f      	movs	r2, #15
 8000812:	21d4      	movs	r1, #212	; 0xd4
 8000814:	f000 fe32 	bl	800147c <_ZN4CI2C8read_regEhh>
 8000818:	28d4      	cmp	r0, #212	; 0xd4
 800081a:	4606      	mov	r6, r0
 800081c:	d155      	bne.n	80008ca <_ZN4CIMU8imu_initEP4CI2C+0xe2>
 800081e:	6820      	ldr	r0, [r4, #0]
 8000820:	213c      	movs	r1, #60	; 0x3c
 8000822:	220f      	movs	r2, #15
 8000824:	f000 fe2a 	bl	800147c <_ZN4CI2C8read_regEhh>
 8000828:	2849      	cmp	r0, #73	; 0x49
 800082a:	d152      	bne.n	80008d2 <_ZN4CIMU8imu_initEP4CI2C+0xea>
 800082c:	4631      	mov	r1, r6
 800082e:	6820      	ldr	r0, [r4, #0]
 8000830:	2220      	movs	r2, #32
 8000832:	23ff      	movs	r3, #255	; 0xff
 8000834:	f000 fddc 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000838:	4631      	mov	r1, r6
 800083a:	6820      	ldr	r0, [r4, #0]
 800083c:	4e27      	ldr	r6, [pc, #156]	; (80008dc <_ZN4CIMU8imu_initEP4CI2C+0xf4>)
 800083e:	2223      	movs	r2, #35	; 0x23
 8000840:	2310      	movs	r3, #16
 8000842:	f000 fdd5 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000846:	6820      	ldr	r0, [r4, #0]
 8000848:	213c      	movs	r1, #60	; 0x3c
 800084a:	221f      	movs	r2, #31
 800084c:	462b      	mov	r3, r5
 800084e:	f000 fdcf 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000852:	6820      	ldr	r0, [r4, #0]
 8000854:	213c      	movs	r1, #60	; 0x3c
 8000856:	2220      	movs	r2, #32
 8000858:	2367      	movs	r3, #103	; 0x67
 800085a:	f000 fdc9 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 800085e:	6820      	ldr	r0, [r4, #0]
 8000860:	213c      	movs	r1, #60	; 0x3c
 8000862:	2221      	movs	r2, #33	; 0x21
 8000864:	462b      	mov	r3, r5
 8000866:	f000 fdc3 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 800086a:	3e01      	subs	r6, #1
 800086c:	d001      	beq.n	8000872 <_ZN4CIMU8imu_initEP4CI2C+0x8a>
 800086e:	bf00      	nop
 8000870:	e7fb      	b.n	800086a <_ZN4CIMU8imu_initEP4CI2C+0x82>
 8000872:	4620      	mov	r0, r4
 8000874:	f7ff ff13 	bl	800069e <_ZN4CIMU8imu_readEv>
 8000878:	2564      	movs	r5, #100	; 0x64
 800087a:	4637      	mov	r7, r6
 800087c:	46b0      	mov	r8, r6
 800087e:	2365      	movs	r3, #101	; 0x65
 8000880:	3b01      	subs	r3, #1
 8000882:	d001      	beq.n	8000888 <_ZN4CIMU8imu_initEP4CI2C+0xa0>
 8000884:	bf00      	nop
 8000886:	e7fb      	b.n	8000880 <_ZN4CIMU8imu_initEP4CI2C+0x98>
 8000888:	4620      	mov	r0, r4
 800088a:	f7ff ff08 	bl	800069e <_ZN4CIMU8imu_readEv>
 800088e:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8000890:	4498      	add	r8, r3
 8000892:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8000894:	441f      	add	r7, r3
 8000896:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8000898:	3d01      	subs	r5, #1
 800089a:	441e      	add	r6, r3
 800089c:	d1ef      	bne.n	800087e <_ZN4CIMU8imu_initEP4CI2C+0x96>
 800089e:	2264      	movs	r2, #100	; 0x64
 80008a0:	6365      	str	r5, [r4, #52]	; 0x34
 80008a2:	fb98 f3f2 	sdiv	r3, r8, r2
 80008a6:	fb97 f7f2 	sdiv	r7, r7, r2
 80008aa:	fb96 f6f2 	sdiv	r6, r6, r2
 80008ae:	6063      	str	r3, [r4, #4]
 80008b0:	60a7      	str	r7, [r4, #8]
 80008b2:	60e6      	str	r6, [r4, #12]
 80008b4:	63a5      	str	r5, [r4, #56]	; 0x38
 80008b6:	63e5      	str	r5, [r4, #60]	; 0x3c
 80008b8:	62a5      	str	r5, [r4, #40]	; 0x28
 80008ba:	62e5      	str	r5, [r4, #44]	; 0x2c
 80008bc:	6325      	str	r5, [r4, #48]	; 0x30
 80008be:	61e5      	str	r5, [r4, #28]
 80008c0:	6225      	str	r5, [r4, #32]
 80008c2:	6265      	str	r5, [r4, #36]	; 0x24
 80008c4:	4628      	mov	r0, r5
 80008c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80008ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80008ce:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80008d2:	f06f 0001 	mvn.w	r0, #1
 80008d6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80008da:	bf00      	nop
 80008dc:	000186a1 	.word	0x000186a1

080008e0 <_ZN4CIMU7imu_getEv>:
 80008e0:	301c      	adds	r0, #28
 80008e2:	4770      	bx	lr

080008e4 <TIM3_IRQHandler>:
 80008e4:	b510      	push	{r4, lr}
 80008e6:	4824      	ldr	r0, [pc, #144]	; (8000978 <TIM3_IRQHandler+0x94>)
 80008e8:	2101      	movs	r1, #1
 80008ea:	f001 fefb 	bl	80026e4 <TIM_GetITStatus>
 80008ee:	2800      	cmp	r0, #0
 80008f0:	d040      	beq.n	8000974 <TIM3_IRQHandler+0x90>
 80008f2:	2101      	movs	r1, #1
 80008f4:	4820      	ldr	r0, [pc, #128]	; (8000978 <TIM3_IRQHandler+0x94>)
 80008f6:	f001 ff01 	bl	80026fc <TIM_ClearITPendingBit>
 80008fa:	4a20      	ldr	r2, [pc, #128]	; (800097c <TIM3_IRQHandler+0x98>)
 80008fc:	4920      	ldr	r1, [pc, #128]	; (8000980 <TIM3_IRQHandler+0x9c>)
 80008fe:	6813      	ldr	r3, [r2, #0]
 8000900:	2b01      	cmp	r3, #1
 8000902:	d010      	beq.n	8000926 <TIM3_IRQHandler+0x42>
 8000904:	d306      	bcc.n	8000914 <TIM3_IRQHandler+0x30>
 8000906:	2b02      	cmp	r3, #2
 8000908:	d112      	bne.n	8000930 <TIM3_IRQHandler+0x4c>
 800090a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800090e:	850b      	strh	r3, [r1, #40]	; 0x28
 8000910:	2304      	movs	r3, #4
 8000912:	e023      	b.n	800095c <TIM3_IRQHandler+0x78>
 8000914:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000918:	850b      	strh	r3, [r1, #40]	; 0x28
 800091a:	f44f 7300 	mov.w	r3, #512	; 0x200
 800091e:	618b      	str	r3, [r1, #24]
 8000920:	2301      	movs	r3, #1
 8000922:	6013      	str	r3, [r2, #0]
 8000924:	e025      	b.n	8000972 <TIM3_IRQHandler+0x8e>
 8000926:	f44f 7380 	mov.w	r3, #256	; 0x100
 800092a:	618b      	str	r3, [r1, #24]
 800092c:	2302      	movs	r3, #2
 800092e:	e015      	b.n	800095c <TIM3_IRQHandler+0x78>
 8000930:	f013 0f01 	tst.w	r3, #1
 8000934:	f103 0001 	add.w	r0, r3, #1
 8000938:	d012      	beq.n	8000960 <TIM3_IRQHandler+0x7c>
 800093a:	3b04      	subs	r3, #4
 800093c:	f04f 44a0 	mov.w	r4, #1342177280	; 0x50000000
 8000940:	f023 0301 	bic.w	r3, r3, #1
 8000944:	4413      	add	r3, r2
 8000946:	6c24      	ldr	r4, [r4, #64]	; 0x40
 8000948:	829c      	strh	r4, [r3, #20]
 800094a:	f5b0 7f82 	cmp.w	r0, #260	; 0x104
 800094e:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000952:	850b      	strh	r3, [r1, #40]	; 0x28
 8000954:	d201      	bcs.n	800095a <TIM3_IRQHandler+0x76>
 8000956:	6010      	str	r0, [r2, #0]
 8000958:	bd10      	pop	{r4, pc}
 800095a:	2300      	movs	r3, #0
 800095c:	6013      	str	r3, [r2, #0]
 800095e:	bd10      	pop	{r4, pc}
 8000960:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000964:	618b      	str	r3, [r1, #24]
 8000966:	6010      	str	r0, [r2, #0]
 8000968:	f04f 42a0 	mov.w	r2, #1342177280	; 0x50000000
 800096c:	6893      	ldr	r3, [r2, #8]
 800096e:	f043 0304 	orr.w	r3, r3, #4
 8000972:	6093      	str	r3, [r2, #8]
 8000974:	bd10      	pop	{r4, pc}
 8000976:	bf00      	nop
 8000978:	40000400 	.word	0x40000400
 800097c:	200005b8 	.word	0x200005b8
 8000980:	48000400 	.word	0x48000400

08000984 <TIM2_IRQHandler>:
 8000984:	b508      	push	{r3, lr}
 8000986:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 800098a:	2101      	movs	r1, #1
 800098c:	f001 feaa 	bl	80026e4 <TIM_GetITStatus>
 8000990:	b360      	cbz	r0, 80009ec <TIM2_IRQHandler+0x68>
 8000992:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000996:	2101      	movs	r1, #1
 8000998:	f001 feb0 	bl	80026fc <TIM_ClearITPendingBit>
 800099c:	2300      	movs	r3, #0
 800099e:	4a14      	ldr	r2, [pc, #80]	; (80009f0 <TIM2_IRQHandler+0x6c>)
 80009a0:	5cd1      	ldrb	r1, [r2, r3]
 80009a2:	b111      	cbz	r1, 80009aa <TIM2_IRQHandler+0x26>
 80009a4:	5cd1      	ldrb	r1, [r2, r3]
 80009a6:	29ff      	cmp	r1, #255	; 0xff
 80009a8:	d11b      	bne.n	80009e2 <TIM2_IRQHandler+0x5e>
 80009aa:	4912      	ldr	r1, [pc, #72]	; (80009f4 <TIM2_IRQHandler+0x70>)
 80009ac:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 80009b0:	b128      	cbz	r0, 80009be <TIM2_IRQHandler+0x3a>
 80009b2:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80009b6:	3a01      	subs	r2, #1
 80009b8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80009bc:	e009      	b.n	80009d2 <TIM2_IRQHandler+0x4e>
 80009be:	480e      	ldr	r0, [pc, #56]	; (80009f8 <TIM2_IRQHandler+0x74>)
 80009c0:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80009c4:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80009c8:	5cd2      	ldrb	r2, [r2, r3]
 80009ca:	b912      	cbnz	r2, 80009d2 <TIM2_IRQHandler+0x4e>
 80009cc:	4a08      	ldr	r2, [pc, #32]	; (80009f0 <TIM2_IRQHandler+0x6c>)
 80009ce:	2101      	movs	r1, #1
 80009d0:	54d1      	strb	r1, [r2, r3]
 80009d2:	3301      	adds	r3, #1
 80009d4:	2b08      	cmp	r3, #8
 80009d6:	d1e2      	bne.n	800099e <TIM2_IRQHandler+0x1a>
 80009d8:	4a08      	ldr	r2, [pc, #32]	; (80009fc <TIM2_IRQHandler+0x78>)
 80009da:	6813      	ldr	r3, [r2, #0]
 80009dc:	3301      	adds	r3, #1
 80009de:	6013      	str	r3, [r2, #0]
 80009e0:	bd08      	pop	{r3, pc}
 80009e2:	5cd1      	ldrb	r1, [r2, r3]
 80009e4:	3101      	adds	r1, #1
 80009e6:	b2c9      	uxtb	r1, r1
 80009e8:	54d1      	strb	r1, [r2, r3]
 80009ea:	e7de      	b.n	80009aa <TIM2_IRQHandler+0x26>
 80009ec:	bd08      	pop	{r3, pc}
 80009ee:	bf00      	nop
 80009f0:	200007ec 	.word	0x200007ec
 80009f4:	200007cc 	.word	0x200007cc
 80009f8:	200007fc 	.word	0x200007fc
 80009fc:	200007f4 	.word	0x200007f4

08000a00 <_ZN6CTimer10timer_initEv>:
 8000a00:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000a02:	4a20      	ldr	r2, [pc, #128]	; (8000a84 <_ZN6CTimer10timer_initEv+0x84>)
 8000a04:	2300      	movs	r3, #0
 8000a06:	6013      	str	r3, [r2, #0]
 8000a08:	491f      	ldr	r1, [pc, #124]	; (8000a88 <_ZN6CTimer10timer_initEv+0x88>)
 8000a0a:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000a0e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000a12:	491e      	ldr	r1, [pc, #120]	; (8000a8c <_ZN6CTimer10timer_initEv+0x8c>)
 8000a14:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000a18:	4a1d      	ldr	r2, [pc, #116]	; (8000a90 <_ZN6CTimer10timer_initEv+0x90>)
 8000a1a:	2400      	movs	r4, #0
 8000a1c:	54d4      	strb	r4, [r2, r3]
 8000a1e:	3301      	adds	r3, #1
 8000a20:	2b08      	cmp	r3, #8
 8000a22:	d1f1      	bne.n	8000a08 <_ZN6CTimer10timer_initEv+0x8>
 8000a24:	2001      	movs	r0, #1
 8000a26:	4601      	mov	r1, r0
 8000a28:	f001 fd98 	bl	800255c <RCC_APB1PeriphClockCmd>
 8000a2c:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8000a30:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000a34:	a901      	add	r1, sp, #4
 8000a36:	2309      	movs	r3, #9
 8000a38:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000a3c:	9302      	str	r3, [sp, #8]
 8000a3e:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000a42:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000a46:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000a4a:	f001 fd95 	bl	8002578 <TIM_TimeBaseInit>
 8000a4e:	2101      	movs	r1, #1
 8000a50:	f04f 4080 	mov.w	r0, #1073741824	; 0x40000000
 8000a54:	f001 fde0 	bl	8002618 <TIM_Cmd>
 8000a58:	f04f 4280 	mov.w	r2, #1073741824	; 0x40000000
 8000a5c:	4668      	mov	r0, sp
 8000a5e:	68d3      	ldr	r3, [r2, #12]
 8000a60:	f043 0301 	orr.w	r3, r3, #1
 8000a64:	60d3      	str	r3, [r2, #12]
 8000a66:	231c      	movs	r3, #28
 8000a68:	f88d 3000 	strb.w	r3, [sp]
 8000a6c:	2301      	movs	r3, #1
 8000a6e:	f88d 4001 	strb.w	r4, [sp, #1]
 8000a72:	f88d 3002 	strb.w	r3, [sp, #2]
 8000a76:	f88d 3003 	strb.w	r3, [sp, #3]
 8000a7a:	f001 ff79 	bl	8002970 <NVIC_Init>
 8000a7e:	4620      	mov	r0, r4
 8000a80:	b004      	add	sp, #16
 8000a82:	bd10      	pop	{r4, pc}
 8000a84:	200007f4 	.word	0x200007f4
 8000a88:	200007cc 	.word	0x200007cc
 8000a8c:	200007fc 	.word	0x200007fc
 8000a90:	200007ec 	.word	0x200007ec

08000a94 <_ZN6CTimer8get_timeEv>:
 8000a94:	b082      	sub	sp, #8
 8000a96:	b672      	cpsid	i
 8000a98:	4b04      	ldr	r3, [pc, #16]	; (8000aac <_ZN6CTimer8get_timeEv+0x18>)
 8000a9a:	681b      	ldr	r3, [r3, #0]
 8000a9c:	9301      	str	r3, [sp, #4]
 8000a9e:	b662      	cpsie	i
 8000aa0:	230a      	movs	r3, #10
 8000aa2:	9801      	ldr	r0, [sp, #4]
 8000aa4:	fbb0 f0f3 	udiv	r0, r0, r3
 8000aa8:	b002      	add	sp, #8
 8000aaa:	4770      	bx	lr
 8000aac:	200007f4 	.word	0x200007f4

08000ab0 <_ZN6CTimer8delay_msEm>:
 8000ab0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000ab2:	460c      	mov	r4, r1
 8000ab4:	4605      	mov	r5, r0
 8000ab6:	f7ff ffed 	bl	8000a94 <_ZN6CTimer8get_timeEv>
 8000aba:	4420      	add	r0, r4
 8000abc:	9001      	str	r0, [sp, #4]
 8000abe:	4628      	mov	r0, r5
 8000ac0:	9c01      	ldr	r4, [sp, #4]
 8000ac2:	f7ff ffe7 	bl	8000a94 <_ZN6CTimer8get_timeEv>
 8000ac6:	4284      	cmp	r4, r0
 8000ac8:	d902      	bls.n	8000ad0 <_ZN6CTimer8delay_msEm+0x20>
 8000aca:	f001 ff4d 	bl	8002968 <core_yield>
 8000ace:	e7f6      	b.n	8000abe <_ZN6CTimer8delay_msEm+0xe>
 8000ad0:	b003      	add	sp, #12
 8000ad2:	bd30      	pop	{r4, r5, pc}

08000ad4 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000ad4:	b672      	cpsid	i
 8000ad6:	230a      	movs	r3, #10
 8000ad8:	435a      	muls	r2, r3
 8000ada:	4b05      	ldr	r3, [pc, #20]	; (8000af0 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000adc:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000ae0:	4b04      	ldr	r3, [pc, #16]	; (8000af4 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000ae2:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000ae6:	4b04      	ldr	r3, [pc, #16]	; (8000af8 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000ae8:	2200      	movs	r2, #0
 8000aea:	545a      	strb	r2, [r3, r1]
 8000aec:	b662      	cpsie	i
 8000aee:	4770      	bx	lr
 8000af0:	200007cc 	.word	0x200007cc
 8000af4:	200007fc 	.word	0x200007fc
 8000af8:	200007ec 	.word	0x200007ec

08000afc <_ZN6CTimer17event_timer_checkEh>:
 8000afc:	4b05      	ldr	r3, [pc, #20]	; (8000b14 <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000afe:	5c5a      	ldrb	r2, [r3, r1]
 8000b00:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000b04:	b12a      	cbz	r2, 8000b12 <_ZN6CTimer17event_timer_checkEh+0x16>
 8000b06:	b672      	cpsid	i
 8000b08:	5c58      	ldrb	r0, [r3, r1]
 8000b0a:	2200      	movs	r2, #0
 8000b0c:	b2c0      	uxtb	r0, r0
 8000b0e:	545a      	strb	r2, [r3, r1]
 8000b10:	b662      	cpsie	i
 8000b12:	4770      	bx	lr
 8000b14:	200007ec 	.word	0x200007ec

08000b18 <_ZN4CRGB8rgb_readEh>:
 8000b18:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8000b1c:	4604      	mov	r4, r0
 8000b1e:	4688      	mov	r8, r1
 8000b20:	f000 faca 	bl	80010b8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000b24:	4620      	mov	r0, r4
 8000b26:	2172      	movs	r1, #114	; 0x72
 8000b28:	f000 faf0 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b2c:	21b4      	movs	r1, #180	; 0xb4
 8000b2e:	4620      	mov	r0, r4
 8000b30:	f000 faec 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b34:	4620      	mov	r0, r4
 8000b36:	f000 fabf 	bl	80010b8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000b3a:	4620      	mov	r0, r4
 8000b3c:	2173      	movs	r1, #115	; 0x73
 8000b3e:	f000 fae5 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b42:	4620      	mov	r0, r4
 8000b44:	2101      	movs	r1, #1
 8000b46:	4622      	mov	r2, r4
 8000b48:	f000 fb21 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000b4c:	7823      	ldrb	r3, [r4, #0]
 8000b4e:	83a3      	strh	r3, [r4, #28]
 8000b50:	7863      	ldrb	r3, [r4, #1]
 8000b52:	83e3      	strh	r3, [r4, #30]
 8000b54:	78a3      	ldrb	r3, [r4, #2]
 8000b56:	8423      	strh	r3, [r4, #32]
 8000b58:	78e3      	ldrb	r3, [r4, #3]
 8000b5a:	8463      	strh	r3, [r4, #34]	; 0x22
 8000b5c:	2101      	movs	r1, #1
 8000b5e:	4620      	mov	r0, r4
 8000b60:	4622      	mov	r2, r4
 8000b62:	f104 091a 	add.w	r9, r4, #26
 8000b66:	1e65      	subs	r5, r4, #1
 8000b68:	f000 fb11 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000b6c:	1ca6      	adds	r6, r4, #2
 8000b6e:	f104 0722 	add.w	r7, r4, #34	; 0x22
 8000b72:	4629      	mov	r1, r5
 8000b74:	464b      	mov	r3, r9
 8000b76:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000b7a:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000b7e:	42bb      	cmp	r3, r7
 8000b80:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000b84:	801a      	strh	r2, [r3, #0]
 8000b86:	d1f6      	bne.n	8000b76 <_ZN4CRGB8rgb_readEh+0x5e>
 8000b88:	4620      	mov	r0, r4
 8000b8a:	2101      	movs	r1, #1
 8000b8c:	4622      	mov	r2, r4
 8000b8e:	f000 fafe 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000b92:	7823      	ldrb	r3, [r4, #0]
 8000b94:	80a3      	strh	r3, [r4, #4]
 8000b96:	7863      	ldrb	r3, [r4, #1]
 8000b98:	80e3      	strh	r3, [r4, #6]
 8000b9a:	78a3      	ldrb	r3, [r4, #2]
 8000b9c:	8123      	strh	r3, [r4, #8]
 8000b9e:	78e3      	ldrb	r3, [r4, #3]
 8000ba0:	8163      	strh	r3, [r4, #10]
 8000ba2:	2101      	movs	r1, #1
 8000ba4:	4620      	mov	r0, r4
 8000ba6:	4622      	mov	r2, r4
 8000ba8:	f000 faf1 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000bac:	f104 0a0a 	add.w	sl, r4, #10
 8000bb0:	4633      	mov	r3, r6
 8000bb2:	4629      	mov	r1, r5
 8000bb4:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000bb8:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000bbc:	4553      	cmp	r3, sl
 8000bbe:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000bc2:	801a      	strh	r2, [r3, #0]
 8000bc4:	d1f6      	bne.n	8000bb4 <_ZN4CRGB8rgb_readEh+0x9c>
 8000bc6:	4620      	mov	r0, r4
 8000bc8:	2101      	movs	r1, #1
 8000bca:	4622      	mov	r2, r4
 8000bcc:	f000 fadf 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000bd0:	7823      	ldrb	r3, [r4, #0]
 8000bd2:	81a3      	strh	r3, [r4, #12]
 8000bd4:	7863      	ldrb	r3, [r4, #1]
 8000bd6:	81e3      	strh	r3, [r4, #14]
 8000bd8:	78a3      	ldrb	r3, [r4, #2]
 8000bda:	8223      	strh	r3, [r4, #16]
 8000bdc:	78e3      	ldrb	r3, [r4, #3]
 8000bde:	8263      	strh	r3, [r4, #18]
 8000be0:	4622      	mov	r2, r4
 8000be2:	4620      	mov	r0, r4
 8000be4:	2101      	movs	r1, #1
 8000be6:	f000 fad2 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000bea:	f104 0612 	add.w	r6, r4, #18
 8000bee:	462a      	mov	r2, r5
 8000bf0:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 8000bf4:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000bf8:	45b2      	cmp	sl, r6
 8000bfa:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000bfe:	f8aa 3000 	strh.w	r3, [sl]
 8000c02:	d1f5      	bne.n	8000bf0 <_ZN4CRGB8rgb_readEh+0xd8>
 8000c04:	4620      	mov	r0, r4
 8000c06:	2101      	movs	r1, #1
 8000c08:	4622      	mov	r2, r4
 8000c0a:	f000 fac0 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c0e:	7823      	ldrb	r3, [r4, #0]
 8000c10:	82a3      	strh	r3, [r4, #20]
 8000c12:	7863      	ldrb	r3, [r4, #1]
 8000c14:	82e3      	strh	r3, [r4, #22]
 8000c16:	78a3      	ldrb	r3, [r4, #2]
 8000c18:	8323      	strh	r3, [r4, #24]
 8000c1a:	78e3      	ldrb	r3, [r4, #3]
 8000c1c:	8363      	strh	r3, [r4, #26]
 8000c1e:	4622      	mov	r2, r4
 8000c20:	4620      	mov	r0, r4
 8000c22:	2101      	movs	r1, #1
 8000c24:	f000 fab3 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c28:	462a      	mov	r2, r5
 8000c2a:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 8000c2e:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000c32:	454e      	cmp	r6, r9
 8000c34:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000c38:	8033      	strh	r3, [r6, #0]
 8000c3a:	d1f6      	bne.n	8000c2a <_ZN4CRGB8rgb_readEh+0x112>
 8000c3c:	4620      	mov	r0, r4
 8000c3e:	2101      	movs	r1, #1
 8000c40:	4622      	mov	r2, r4
 8000c42:	f000 faa4 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c46:	7823      	ldrb	r3, [r4, #0]
 8000c48:	84a3      	strh	r3, [r4, #36]	; 0x24
 8000c4a:	7863      	ldrb	r3, [r4, #1]
 8000c4c:	84e3      	strh	r3, [r4, #38]	; 0x26
 8000c4e:	78a3      	ldrb	r3, [r4, #2]
 8000c50:	8523      	strh	r3, [r4, #40]	; 0x28
 8000c52:	78e3      	ldrb	r3, [r4, #3]
 8000c54:	8563      	strh	r3, [r4, #42]	; 0x2a
 8000c56:	4622      	mov	r2, r4
 8000c58:	4620      	mov	r0, r4
 8000c5a:	2100      	movs	r1, #0
 8000c5c:	f000 fa97 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c60:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 8000c64:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000c68:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 8000c6c:	4297      	cmp	r7, r2
 8000c6e:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000c72:	803b      	strh	r3, [r7, #0]
 8000c74:	d1f6      	bne.n	8000c64 <_ZN4CRGB8rgb_readEh+0x14c>
 8000c76:	4620      	mov	r0, r4
 8000c78:	f000 fa33 	bl	80010e2 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000c7c:	f1b8 0f00 	cmp.w	r8, #0
 8000c80:	d025      	beq.n	8000cce <_ZN4CRGB8rgb_readEh+0x1b6>
 8000c82:	2300      	movs	r3, #0
 8000c84:	88a1      	ldrh	r1, [r4, #4]
 8000c86:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 8000c8a:	440a      	add	r2, r1
 8000c8c:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 8000c90:	89a1      	ldrh	r1, [r4, #12]
 8000c92:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000c96:	440a      	add	r2, r1
 8000c98:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 8000c9c:	8aa1      	ldrh	r1, [r4, #20]
 8000c9e:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 8000ca2:	440a      	add	r2, r1
 8000ca4:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 8000ca8:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 8000caa:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 8000cae:	440a      	add	r2, r1
 8000cb0:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8000cb4:	8ba1      	ldrh	r1, [r4, #28]
 8000cb6:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 8000cba:	3301      	adds	r3, #1
 8000cbc:	440a      	add	r2, r1
 8000cbe:	2b04      	cmp	r3, #4
 8000cc0:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8000cc4:	f104 0402 	add.w	r4, r4, #2
 8000cc8:	d1dc      	bne.n	8000c84 <_ZN4CRGB8rgb_readEh+0x16c>
 8000cca:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8000cce:	4641      	mov	r1, r8
 8000cd0:	b672      	cpsid	i
 8000cd2:	88a3      	ldrh	r3, [r4, #4]
 8000cd4:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 8000cd8:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000cdc:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 8000ce0:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 8000ce4:	1a18      	subs	r0, r3, r0
 8000ce6:	89a3      	ldrh	r3, [r4, #12]
 8000ce8:	1a9a      	subs	r2, r3, r2
 8000cea:	8aa3      	ldrh	r3, [r4, #20]
 8000cec:	1b5b      	subs	r3, r3, r5
 8000cee:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 8000cf0:	1bad      	subs	r5, r5, r6
 8000cf2:	84a5      	strh	r5, [r4, #36]	; 0x24
 8000cf4:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 8000cf8:	8ba5      	ldrh	r5, [r4, #28]
 8000cfa:	b280      	uxth	r0, r0
 8000cfc:	b292      	uxth	r2, r2
 8000cfe:	b29b      	uxth	r3, r3
 8000d00:	1bad      	subs	r5, r5, r6
 8000d02:	80a0      	strh	r0, [r4, #4]
 8000d04:	81a2      	strh	r2, [r4, #12]
 8000d06:	82a3      	strh	r3, [r4, #20]
 8000d08:	83a5      	strh	r5, [r4, #28]
 8000d0a:	b662      	cpsie	i
 8000d0c:	b200      	sxth	r0, r0
 8000d0e:	b212      	sxth	r2, r2
 8000d10:	1885      	adds	r5, r0, r2
 8000d12:	b21b      	sxth	r3, r3
 8000d14:	18ed      	adds	r5, r5, r3
 8000d16:	d00e      	beq.n	8000d36 <_ZN4CRGB8rgb_readEh+0x21e>
 8000d18:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000d1c:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 8000d20:	fb90 f0f5 	sdiv	r0, r0, r5
 8000d24:	fb92 f2f5 	sdiv	r2, r2, r5
 8000d28:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8000d2c:	85a0      	strh	r0, [r4, #44]	; 0x2c
 8000d2e:	fb93 f3f5 	sdiv	r3, r3, r5
 8000d32:	86a2      	strh	r2, [r4, #52]	; 0x34
 8000d34:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8000d36:	3101      	adds	r1, #1
 8000d38:	2904      	cmp	r1, #4
 8000d3a:	f104 0402 	add.w	r4, r4, #2
 8000d3e:	d1c7      	bne.n	8000cd0 <_ZN4CRGB8rgb_readEh+0x1b8>
 8000d40:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08000d44 <_ZN4CRGB8rgb_initEv>:
 8000d44:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000d46:	4606      	mov	r6, r0
 8000d48:	4635      	mov	r5, r6
 8000d4a:	f000 f97b 	bl	8001044 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 8000d4e:	4633      	mov	r3, r6
 8000d50:	2200      	movs	r2, #0
 8000d52:	3201      	adds	r2, #1
 8000d54:	2400      	movs	r4, #0
 8000d56:	2a04      	cmp	r2, #4
 8000d58:	809c      	strh	r4, [r3, #4]
 8000d5a:	819c      	strh	r4, [r3, #12]
 8000d5c:	829c      	strh	r4, [r3, #20]
 8000d5e:	849c      	strh	r4, [r3, #36]	; 0x24
 8000d60:	839c      	strh	r4, [r3, #28]
 8000d62:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 8000d66:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 8000d6a:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 8000d6e:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 8000d72:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 8000d76:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000d78:	869c      	strh	r4, [r3, #52]	; 0x34
 8000d7a:	879c      	strh	r4, [r3, #60]	; 0x3c
 8000d7c:	f103 0302 	add.w	r3, r3, #2
 8000d80:	d1e7      	bne.n	8000d52 <_ZN4CRGB8rgb_initEv+0xe>
 8000d82:	4630      	mov	r0, r6
 8000d84:	2172      	movs	r1, #114	; 0x72
 8000d86:	2281      	movs	r2, #129	; 0x81
 8000d88:	23ff      	movs	r3, #255	; 0xff
 8000d8a:	f000 f9e8 	bl	800115e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000d8e:	4630      	mov	r0, r6
 8000d90:	2172      	movs	r1, #114	; 0x72
 8000d92:	2283      	movs	r2, #131	; 0x83
 8000d94:	23ff      	movs	r3, #255	; 0xff
 8000d96:	f000 f9e2 	bl	800115e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000d9a:	4630      	mov	r0, r6
 8000d9c:	2172      	movs	r1, #114	; 0x72
 8000d9e:	228d      	movs	r2, #141	; 0x8d
 8000da0:	4623      	mov	r3, r4
 8000da2:	f000 f9dc 	bl	800115e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000da6:	4630      	mov	r0, r6
 8000da8:	2172      	movs	r1, #114	; 0x72
 8000daa:	2280      	movs	r2, #128	; 0x80
 8000dac:	2303      	movs	r3, #3
 8000dae:	f000 f9d6 	bl	800115e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000db2:	228f      	movs	r2, #143	; 0x8f
 8000db4:	2323      	movs	r3, #35	; 0x23
 8000db6:	4630      	mov	r0, r6
 8000db8:	2172      	movs	r1, #114	; 0x72
 8000dba:	f000 f9d0 	bl	800115e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000dbe:	af01      	add	r7, sp, #4
 8000dc0:	4630      	mov	r0, r6
 8000dc2:	4621      	mov	r1, r4
 8000dc4:	f7ff fea8 	bl	8000b18 <_ZN4CRGB8rgb_readEh>
 8000dc8:	463b      	mov	r3, r7
 8000dca:	4630      	mov	r0, r6
 8000dcc:	2172      	movs	r1, #114	; 0x72
 8000dce:	2292      	movs	r2, #146	; 0x92
 8000dd0:	f000 fa2a 	bl	8001228 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000dd4:	4623      	mov	r3, r4
 8000dd6:	5cfa      	ldrb	r2, [r7, r3]
 8000dd8:	2a69      	cmp	r2, #105	; 0x69
 8000dda:	bf1c      	itt	ne
 8000ddc:	2201      	movne	r2, #1
 8000dde:	409a      	lslne	r2, r3
 8000de0:	f103 0301 	add.w	r3, r3, #1
 8000de4:	bf18      	it	ne
 8000de6:	4314      	orrne	r4, r2
 8000de8:	2b04      	cmp	r3, #4
 8000dea:	d1f4      	bne.n	8000dd6 <_ZN4CRGB8rgb_initEv+0x92>
 8000dec:	461f      	mov	r7, r3
 8000dee:	4630      	mov	r0, r6
 8000df0:	2101      	movs	r1, #1
 8000df2:	f7ff fe91 	bl	8000b18 <_ZN4CRGB8rgb_readEh>
 8000df6:	3f01      	subs	r7, #1
 8000df8:	d1f9      	bne.n	8000dee <_ZN4CRGB8rgb_initEv+0xaa>
 8000dfa:	2104      	movs	r1, #4
 8000dfc:	f9b5 3044 	ldrsh.w	r3, [r5, #68]	; 0x44
 8000e00:	089b      	lsrs	r3, r3, #2
 8000e02:	f8a5 3044 	strh.w	r3, [r5, #68]	; 0x44
 8000e06:	f9b5 304c 	ldrsh.w	r3, [r5, #76]	; 0x4c
 8000e0a:	089b      	lsrs	r3, r3, #2
 8000e0c:	f8a5 304c 	strh.w	r3, [r5, #76]	; 0x4c
 8000e10:	f9b5 3054 	ldrsh.w	r3, [r5, #84]	; 0x54
 8000e14:	089b      	lsrs	r3, r3, #2
 8000e16:	f8a5 3054 	strh.w	r3, [r5, #84]	; 0x54
 8000e1a:	f9b5 3064 	ldrsh.w	r3, [r5, #100]	; 0x64
 8000e1e:	089b      	lsrs	r3, r3, #2
 8000e20:	f8a5 3064 	strh.w	r3, [r5, #100]	; 0x64
 8000e24:	f9b5 305c 	ldrsh.w	r3, [r5, #92]	; 0x5c
 8000e28:	3901      	subs	r1, #1
 8000e2a:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000e2e:	f8a5 305c 	strh.w	r3, [r5, #92]	; 0x5c
 8000e32:	f105 0502 	add.w	r5, r5, #2
 8000e36:	d1e1      	bne.n	8000dfc <_ZN4CRGB8rgb_initEv+0xb8>
 8000e38:	4630      	mov	r0, r6
 8000e3a:	f7ff fe6d 	bl	8000b18 <_ZN4CRGB8rgb_readEh>
 8000e3e:	b114      	cbz	r4, 8000e46 <_ZN4CRGB8rgb_initEv+0x102>
 8000e40:	4802      	ldr	r0, [pc, #8]	; (8000e4c <_ZN4CRGB8rgb_initEv+0x108>)
 8000e42:	1b00      	subs	r0, r0, r4
 8000e44:	e000      	b.n	8000e48 <_ZN4CRGB8rgb_initEv+0x104>
 8000e46:	4620      	mov	r0, r4
 8000e48:	b003      	add	sp, #12
 8000e4a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000e4c:	fffffc18 	.word	0xfffffc18

08000e50 <_ZN4CRGB7rgb_getEv>:
 8000e50:	3004      	adds	r0, #4
 8000e52:	4770      	bx	lr

08000e54 <_ZN6CMotor11motor_sleepEv>:
 8000e54:	b510      	push	{r4, lr}
 8000e56:	4604      	mov	r4, r0
 8000e58:	21c2      	movs	r1, #194	; 0xc2
 8000e5a:	6880      	ldr	r0, [r0, #8]
 8000e5c:	2200      	movs	r2, #0
 8000e5e:	2318      	movs	r3, #24
 8000e60:	f000 fac6 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000e64:	68a0      	ldr	r0, [r4, #8]
 8000e66:	21c6      	movs	r1, #198	; 0xc6
 8000e68:	2200      	movs	r2, #0
 8000e6a:	2318      	movs	r3, #24
 8000e6c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e70:	f000 babe 	b.w	80013f0 <_ZN4CI2C9write_regEhhh>

08000e74 <_ZN6CMotor13motor_refreshEv>:
 8000e74:	b570      	push	{r4, r5, r6, lr}
 8000e76:	e890 0050 	ldmia.w	r0, {r4, r6}
 8000e7a:	2c2c      	cmp	r4, #44	; 0x2c
 8000e7c:	4605      	mov	r5, r0
 8000e7e:	dc74      	bgt.n	8000f6a <_ZN6CMotor13motor_refreshEv+0xf6>
 8000e80:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 8000e84:	db11      	blt.n	8000eaa <_ZN6CMotor13motor_refreshEv+0x36>
 8000e86:	2e2c      	cmp	r6, #44	; 0x2c
 8000e88:	dc5e      	bgt.n	8000f48 <_ZN6CMotor13motor_refreshEv+0xd4>
 8000e8a:	f116 0f2c 	cmn.w	r6, #44	; 0x2c
 8000e8e:	db33      	blt.n	8000ef8 <_ZN6CMotor13motor_refreshEv+0x84>
 8000e90:	b1dc      	cbz	r4, 8000eca <_ZN6CMotor13motor_refreshEv+0x56>
 8000e92:	e001      	b.n	8000e98 <_ZN6CMotor13motor_refreshEv+0x24>
 8000e94:	f06f 062b 	mvn.w	r6, #43	; 0x2b
 8000e98:	2c00      	cmp	r4, #0
 8000e9a:	dd0d      	ble.n	8000eb8 <_ZN6CMotor13motor_refreshEv+0x44>
 8000e9c:	2c06      	cmp	r4, #6
 8000e9e:	bfb8      	it	lt
 8000ea0:	2406      	movlt	r4, #6
 8000ea2:	00a4      	lsls	r4, r4, #2
 8000ea4:	f044 0402 	orr.w	r4, r4, #2
 8000ea8:	e00d      	b.n	8000ec6 <_ZN6CMotor13motor_refreshEv+0x52>
 8000eaa:	2e2c      	cmp	r6, #44	; 0x2c
 8000eac:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 8000eb0:	dc60      	bgt.n	8000f74 <_ZN6CMotor13motor_refreshEv+0x100>
 8000eb2:	42a6      	cmp	r6, r4
 8000eb4:	bfb8      	it	lt
 8000eb6:	4626      	movlt	r6, r4
 8000eb8:	4264      	negs	r4, r4
 8000eba:	2c06      	cmp	r4, #6
 8000ebc:	bfb8      	it	lt
 8000ebe:	2406      	movlt	r4, #6
 8000ec0:	00a4      	lsls	r4, r4, #2
 8000ec2:	f044 0401 	orr.w	r4, r4, #1
 8000ec6:	b2e4      	uxtb	r4, r4
 8000ec8:	e000      	b.n	8000ecc <_ZN6CMotor13motor_refreshEv+0x58>
 8000eca:	241b      	movs	r4, #27
 8000ecc:	2200      	movs	r2, #0
 8000ece:	4613      	mov	r3, r2
 8000ed0:	68a8      	ldr	r0, [r5, #8]
 8000ed2:	21c2      	movs	r1, #194	; 0xc2
 8000ed4:	f000 fa8c 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000ed8:	68a8      	ldr	r0, [r5, #8]
 8000eda:	21c2      	movs	r1, #194	; 0xc2
 8000edc:	2200      	movs	r2, #0
 8000ede:	4623      	mov	r3, r4
 8000ee0:	f000 fa86 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000ee4:	2e00      	cmp	r6, #0
 8000ee6:	d020      	beq.n	8000f2a <_ZN6CMotor13motor_refreshEv+0xb6>
 8000ee8:	dd16      	ble.n	8000f18 <_ZN6CMotor13motor_refreshEv+0xa4>
 8000eea:	2e06      	cmp	r6, #6
 8000eec:	bfb8      	it	lt
 8000eee:	2606      	movlt	r6, #6
 8000ef0:	00b6      	lsls	r6, r6, #2
 8000ef2:	f046 0601 	orr.w	r6, r6, #1
 8000ef6:	e016      	b.n	8000f26 <_ZN6CMotor13motor_refreshEv+0xb2>
 8000ef8:	2c00      	cmp	r4, #0
 8000efa:	d1cb      	bne.n	8000e94 <_ZN6CMotor13motor_refreshEv+0x20>
 8000efc:	68a8      	ldr	r0, [r5, #8]
 8000efe:	21c2      	movs	r1, #194	; 0xc2
 8000f00:	4622      	mov	r2, r4
 8000f02:	4623      	mov	r3, r4
 8000f04:	f000 fa74 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000f08:	68a8      	ldr	r0, [r5, #8]
 8000f0a:	21c2      	movs	r1, #194	; 0xc2
 8000f0c:	4622      	mov	r2, r4
 8000f0e:	231b      	movs	r3, #27
 8000f10:	f000 fa6e 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000f14:	f06f 062b 	mvn.w	r6, #43	; 0x2b
 8000f18:	4276      	negs	r6, r6
 8000f1a:	2e06      	cmp	r6, #6
 8000f1c:	bfb8      	it	lt
 8000f1e:	2606      	movlt	r6, #6
 8000f20:	00b6      	lsls	r6, r6, #2
 8000f22:	f046 0602 	orr.w	r6, r6, #2
 8000f26:	b2f6      	uxtb	r6, r6
 8000f28:	e000      	b.n	8000f2c <_ZN6CMotor13motor_refreshEv+0xb8>
 8000f2a:	261b      	movs	r6, #27
 8000f2c:	2200      	movs	r2, #0
 8000f2e:	68a8      	ldr	r0, [r5, #8]
 8000f30:	4613      	mov	r3, r2
 8000f32:	21c6      	movs	r1, #198	; 0xc6
 8000f34:	f000 fa5c 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000f38:	68a8      	ldr	r0, [r5, #8]
 8000f3a:	4633      	mov	r3, r6
 8000f3c:	21c6      	movs	r1, #198	; 0xc6
 8000f3e:	2200      	movs	r2, #0
 8000f40:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000f44:	f000 ba54 	b.w	80013f0 <_ZN4CI2C9write_regEhhh>
 8000f48:	b96c      	cbnz	r4, 8000f66 <_ZN6CMotor13motor_refreshEv+0xf2>
 8000f4a:	68a8      	ldr	r0, [r5, #8]
 8000f4c:	21c2      	movs	r1, #194	; 0xc2
 8000f4e:	4622      	mov	r2, r4
 8000f50:	4623      	mov	r3, r4
 8000f52:	f000 fa4d 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000f56:	68a8      	ldr	r0, [r5, #8]
 8000f58:	21c2      	movs	r1, #194	; 0xc2
 8000f5a:	4622      	mov	r2, r4
 8000f5c:	231b      	movs	r3, #27
 8000f5e:	f000 fa47 	bl	80013f0 <_ZN4CI2C9write_regEhhh>
 8000f62:	262c      	movs	r6, #44	; 0x2c
 8000f64:	e7c4      	b.n	8000ef0 <_ZN6CMotor13motor_refreshEv+0x7c>
 8000f66:	262c      	movs	r6, #44	; 0x2c
 8000f68:	e796      	b.n	8000e98 <_ZN6CMotor13motor_refreshEv+0x24>
 8000f6a:	242c      	movs	r4, #44	; 0x2c
 8000f6c:	42a6      	cmp	r6, r4
 8000f6e:	dd8c      	ble.n	8000e8a <_ZN6CMotor13motor_refreshEv+0x16>
 8000f70:	4626      	mov	r6, r4
 8000f72:	e796      	b.n	8000ea2 <_ZN6CMotor13motor_refreshEv+0x2e>
 8000f74:	262c      	movs	r6, #44	; 0x2c
 8000f76:	e79f      	b.n	8000eb8 <_ZN6CMotor13motor_refreshEv+0x44>

08000f78 <_ZN6CMotor9set_motorEml>:
 8000f78:	2901      	cmp	r1, #1
 8000f7a:	bf98      	it	ls
 8000f7c:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 8000f80:	f7ff bf78 	b.w	8000e74 <_ZN6CMotor13motor_refreshEv>

08000f84 <_ZN6CMotor10motor_initEv>:
 8000f84:	b510      	push	{r4, lr}
 8000f86:	2100      	movs	r1, #0
 8000f88:	4604      	mov	r4, r0
 8000f8a:	460a      	mov	r2, r1
 8000f8c:	f7ff fff4 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8000f90:	4620      	mov	r0, r4
 8000f92:	2101      	movs	r1, #1
 8000f94:	2200      	movs	r2, #0
 8000f96:	f7ff ffef 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8000f9a:	4620      	mov	r0, r4
 8000f9c:	f7ff ff6a 	bl	8000e74 <_ZN6CMotor13motor_refreshEv>
 8000fa0:	2000      	movs	r0, #0
 8000fa2:	bd10      	pop	{r4, pc}

08000fa4 <_ZN6CMotor10set_motorsEll>:
 8000fa4:	e880 0006 	stmia.w	r0, {r1, r2}
 8000fa8:	f7ff bf64 	b.w	8000e74 <_ZN6CMotor13motor_refreshEv>

08000fac <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000fac:	2365      	movs	r3, #101	; 0x65
 8000fae:	3b01      	subs	r3, #1
 8000fb0:	d001      	beq.n	8000fb6 <_ZN8CRGB_I2C13rgb_i2c_delayEv+0xa>
 8000fb2:	bf00      	nop
 8000fb4:	e7fb      	b.n	8000fae <_ZN8CRGB_I2C13rgb_i2c_delayEv+0x2>
 8000fb6:	4770      	bx	lr

08000fb8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000fb8:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000fba:	2301      	movs	r3, #1
 8000fbc:	2203      	movs	r2, #3
 8000fbe:	4605      	mov	r5, r0
 8000fc0:	24f0      	movs	r4, #240	; 0xf0
 8000fc2:	f88d 3004 	strb.w	r3, [sp, #4]
 8000fc6:	f88d 3006 	strb.w	r3, [sp, #6]
 8000fca:	4669      	mov	r1, sp
 8000fcc:	2300      	movs	r3, #0
 8000fce:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000fd2:	f88d 2005 	strb.w	r2, [sp, #5]
 8000fd6:	f88d 3007 	strb.w	r3, [sp, #7]
 8000fda:	9400      	str	r4, [sp, #0]
 8000fdc:	f001 fd0e 	bl	80029fc <GPIO_Init>
 8000fe0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000fe4:	4628      	mov	r0, r5
 8000fe6:	851c      	strh	r4, [r3, #40]	; 0x28
 8000fe8:	f7ff ffe0 	bl	8000fac <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000fec:	b003      	add	sp, #12
 8000fee:	bd30      	pop	{r4, r5, pc}

08000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000ff0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000ff2:	2300      	movs	r3, #0
 8000ff4:	2203      	movs	r2, #3
 8000ff6:	4605      	mov	r5, r0
 8000ff8:	24f0      	movs	r4, #240	; 0xf0
 8000ffa:	4669      	mov	r1, sp
 8000ffc:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001000:	f88d 3004 	strb.w	r3, [sp, #4]
 8001004:	f88d 2005 	strb.w	r2, [sp, #5]
 8001008:	f88d 3007 	strb.w	r3, [sp, #7]
 800100c:	9400      	str	r4, [sp, #0]
 800100e:	f001 fcf5 	bl	80029fc <GPIO_Init>
 8001012:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001016:	4628      	mov	r0, r5
 8001018:	619c      	str	r4, [r3, #24]
 800101a:	f7ff ffc7 	bl	8000fac <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 800101e:	b003      	add	sp, #12
 8001020:	bd30      	pop	{r4, r5, pc}
	...

08001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8001024:	4b02      	ldr	r3, [pc, #8]	; (8001030 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8001026:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800102a:	851a      	strh	r2, [r3, #40]	; 0x28
 800102c:	f7ff bfbe 	b.w	8000fac <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8001030:	48000800 	.word	0x48000800

08001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8001034:	4b02      	ldr	r3, [pc, #8]	; (8001040 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8001036:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800103a:	619a      	str	r2, [r3, #24]
 800103c:	f7ff bfb6 	b.w	8000fac <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8001040:	48000800 	.word	0x48000800

08001044 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8001044:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001046:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 800104a:	4605      	mov	r5, r0
 800104c:	2400      	movs	r4, #0
 800104e:	9300      	str	r3, [sp, #0]
 8001050:	2703      	movs	r7, #3
 8001052:	2301      	movs	r3, #1
 8001054:	4817      	ldr	r0, [pc, #92]	; (80010b4 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x70>)
 8001056:	f88d 3004 	strb.w	r3, [sp, #4]
 800105a:	4669      	mov	r1, sp
 800105c:	26f0      	movs	r6, #240	; 0xf0
 800105e:	f88d 7005 	strb.w	r7, [sp, #5]
 8001062:	f88d 4006 	strb.w	r4, [sp, #6]
 8001066:	f88d 4007 	strb.w	r4, [sp, #7]
 800106a:	f001 fcc7 	bl	80029fc <GPIO_Init>
 800106e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001072:	4669      	mov	r1, sp
 8001074:	9600      	str	r6, [sp, #0]
 8001076:	f88d 4004 	strb.w	r4, [sp, #4]
 800107a:	f88d 7005 	strb.w	r7, [sp, #5]
 800107e:	f88d 4007 	strb.w	r4, [sp, #7]
 8001082:	f001 fcbb 	bl	80029fc <GPIO_Init>
 8001086:	4631      	mov	r1, r6
 8001088:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800108c:	f001 fcf8 	bl	8002a80 <GPIO_SetBits>
 8001090:	4628      	mov	r0, r5
 8001092:	f7ff ffcf 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001096:	4628      	mov	r0, r5
 8001098:	f7ff ff8e 	bl	8000fb8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800109c:	4628      	mov	r0, r5
 800109e:	f7ff ffa7 	bl	8000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80010a2:	f242 7311 	movw	r3, #10001	; 0x2711
 80010a6:	3b01      	subs	r3, #1
 80010a8:	d001      	beq.n	80010ae <_ZN8CRGB_I2C12rgb_i2c_initEv+0x6a>
 80010aa:	bf00      	nop
 80010ac:	e7fb      	b.n	80010a6 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x62>
 80010ae:	b003      	add	sp, #12
 80010b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80010b2:	bf00      	nop
 80010b4:	48000800 	.word	0x48000800

080010b8 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 80010b8:	b510      	push	{r4, lr}
 80010ba:	4604      	mov	r4, r0
 80010bc:	f7ff ffba 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80010c0:	4620      	mov	r0, r4
 80010c2:	f7ff ff95 	bl	8000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80010c6:	4620      	mov	r0, r4
 80010c8:	f7ff ffb4 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80010cc:	4620      	mov	r0, r4
 80010ce:	f7ff ff73 	bl	8000fb8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80010d2:	4620      	mov	r0, r4
 80010d4:	f7ff ffa6 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80010d8:	4620      	mov	r0, r4
 80010da:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80010de:	f7ff bf87 	b.w	8000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

080010e2 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 80010e2:	b510      	push	{r4, lr}
 80010e4:	4604      	mov	r4, r0
 80010e6:	f7ff ff9d 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80010ea:	4620      	mov	r0, r4
 80010ec:	f7ff ff64 	bl	8000fb8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80010f0:	4620      	mov	r0, r4
 80010f2:	f7ff ff9f 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80010f6:	4620      	mov	r0, r4
 80010f8:	f7ff ff5e 	bl	8000fb8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 80010fc:	4620      	mov	r0, r4
 80010fe:	f7ff ff99 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001102:	4620      	mov	r0, r4
 8001104:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001108:	f7ff bf72 	b.w	8000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 800110c:	b570      	push	{r4, r5, r6, lr}
 800110e:	4604      	mov	r4, r0
 8001110:	460e      	mov	r6, r1
 8001112:	2508      	movs	r5, #8
 8001114:	4620      	mov	r0, r4
 8001116:	f7ff ff85 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800111a:	0633      	lsls	r3, r6, #24
 800111c:	4620      	mov	r0, r4
 800111e:	d502      	bpl.n	8001126 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8001120:	f7ff ff66 	bl	8000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001124:	e001      	b.n	800112a <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8001126:	f7ff ff47 	bl	8000fb8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800112a:	4620      	mov	r0, r4
 800112c:	3d01      	subs	r5, #1
 800112e:	f7ff ff81 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001132:	0076      	lsls	r6, r6, #1
 8001134:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8001138:	b2f6      	uxtb	r6, r6
 800113a:	d1eb      	bne.n	8001114 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 800113c:	4620      	mov	r0, r4
 800113e:	f7ff ff71 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001142:	4620      	mov	r0, r4
 8001144:	f7ff ff54 	bl	8000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8001148:	4620      	mov	r0, r4
 800114a:	f7ff ff73 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800114e:	4620      	mov	r0, r4
 8001150:	f7ff ff68 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001154:	4620      	mov	r0, r4
 8001156:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800115a:	f7ff bf27 	b.w	8000fac <_ZN8CRGB_I2C13rgb_i2c_delayEv>

0800115e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 800115e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001160:	4604      	mov	r4, r0
 8001162:	460f      	mov	r7, r1
 8001164:	4616      	mov	r6, r2
 8001166:	461d      	mov	r5, r3
 8001168:	f7ff ffa6 	bl	80010b8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800116c:	4620      	mov	r0, r4
 800116e:	4639      	mov	r1, r7
 8001170:	f7ff ffcc 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001174:	4620      	mov	r0, r4
 8001176:	4631      	mov	r1, r6
 8001178:	f7ff ffc8 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800117c:	4620      	mov	r0, r4
 800117e:	4629      	mov	r1, r5
 8001180:	f7ff ffc4 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001184:	4620      	mov	r0, r4
 8001186:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800118a:	f7ff bfaa 	b.w	80010e2 <_ZN8CRGB_I2C11rgb_i2cStopEv>

0800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 800118e:	2300      	movs	r3, #0
 8001190:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001194:	4605      	mov	r5, r0
 8001196:	7013      	strb	r3, [r2, #0]
 8001198:	7053      	strb	r3, [r2, #1]
 800119a:	7093      	strb	r3, [r2, #2]
 800119c:	70d3      	strb	r3, [r2, #3]
 800119e:	460e      	mov	r6, r1
 80011a0:	4614      	mov	r4, r2
 80011a2:	1cd7      	adds	r7, r2, #3
 80011a4:	f7ff ff3e 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80011a8:	4628      	mov	r0, r5
 80011aa:	f7ff ff21 	bl	8000ff0 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80011ae:	f04f 0808 	mov.w	r8, #8
 80011b2:	1e63      	subs	r3, r4, #1
 80011b4:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 80011b8:	0052      	lsls	r2, r2, #1
 80011ba:	42bb      	cmp	r3, r7
 80011bc:	701a      	strb	r2, [r3, #0]
 80011be:	d1f9      	bne.n	80011b4 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 80011c0:	4628      	mov	r0, r5
 80011c2:	f7ff ff37 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80011c6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80011ca:	8a1b      	ldrh	r3, [r3, #16]
 80011cc:	b29b      	uxth	r3, r3
 80011ce:	06d8      	lsls	r0, r3, #27
 80011d0:	bf42      	ittt	mi
 80011d2:	7822      	ldrbmi	r2, [r4, #0]
 80011d4:	f042 0201 	orrmi.w	r2, r2, #1
 80011d8:	7022      	strbmi	r2, [r4, #0]
 80011da:	0699      	lsls	r1, r3, #26
 80011dc:	bf42      	ittt	mi
 80011de:	7862      	ldrbmi	r2, [r4, #1]
 80011e0:	f042 0201 	orrmi.w	r2, r2, #1
 80011e4:	7062      	strbmi	r2, [r4, #1]
 80011e6:	065a      	lsls	r2, r3, #25
 80011e8:	bf42      	ittt	mi
 80011ea:	78a2      	ldrbmi	r2, [r4, #2]
 80011ec:	f042 0201 	orrmi.w	r2, r2, #1
 80011f0:	70a2      	strbmi	r2, [r4, #2]
 80011f2:	061b      	lsls	r3, r3, #24
 80011f4:	bf42      	ittt	mi
 80011f6:	78e3      	ldrbmi	r3, [r4, #3]
 80011f8:	f043 0301 	orrmi.w	r3, r3, #1
 80011fc:	70e3      	strbmi	r3, [r4, #3]
 80011fe:	4628      	mov	r0, r5
 8001200:	f7ff ff10 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8001204:	f1b8 0801 	subs.w	r8, r8, #1
 8001208:	d1d3      	bne.n	80011b2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 800120a:	b116      	cbz	r6, 8001212 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 800120c:	4628      	mov	r0, r5
 800120e:	f7ff fed3 	bl	8000fb8 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8001212:	4628      	mov	r0, r5
 8001214:	f7ff ff0e 	bl	8001034 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8001218:	4628      	mov	r0, r5
 800121a:	f7ff ff03 	bl	8001024 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800121e:	4628      	mov	r0, r5
 8001220:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8001224:	f7ff bec2 	b.w	8000fac <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08001228 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8001228:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800122a:	4604      	mov	r4, r0
 800122c:	460d      	mov	r5, r1
 800122e:	4617      	mov	r7, r2
 8001230:	461e      	mov	r6, r3
 8001232:	f7ff ff41 	bl	80010b8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8001236:	4620      	mov	r0, r4
 8001238:	4629      	mov	r1, r5
 800123a:	f7ff ff67 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800123e:	4639      	mov	r1, r7
 8001240:	4620      	mov	r0, r4
 8001242:	f7ff ff63 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001246:	4620      	mov	r0, r4
 8001248:	f7ff ff36 	bl	80010b8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800124c:	4620      	mov	r0, r4
 800124e:	f045 0101 	orr.w	r1, r5, #1
 8001252:	f7ff ff5b 	bl	800110c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8001256:	4620      	mov	r0, r4
 8001258:	4632      	mov	r2, r6
 800125a:	2100      	movs	r1, #0
 800125c:	f7ff ff97 	bl	800118e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8001260:	4620      	mov	r0, r4
 8001262:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8001266:	f7ff bf3c 	b.w	80010e2 <_ZN8CRGB_I2C11rgb_i2cStopEv>

0800126a <_ZN4CI2C5delayEv>:
 800126a:	230b      	movs	r3, #11
 800126c:	3b01      	subs	r3, #1
 800126e:	d001      	beq.n	8001274 <_ZN4CI2C5delayEv+0xa>
 8001270:	bf00      	nop
 8001272:	e7fb      	b.n	800126c <_ZN4CI2C5delayEv+0x2>
 8001274:	4770      	bx	lr
	...

08001278 <_ZN4CI2C9SetLowSDAEv>:
 8001278:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800127a:	4c0c      	ldr	r4, [pc, #48]	; (80012ac <_ZN4CI2C9SetLowSDAEv+0x34>)
 800127c:	2301      	movs	r3, #1
 800127e:	2203      	movs	r2, #3
 8001280:	4606      	mov	r6, r0
 8001282:	2580      	movs	r5, #128	; 0x80
 8001284:	f88d 3004 	strb.w	r3, [sp, #4]
 8001288:	f88d 3006 	strb.w	r3, [sp, #6]
 800128c:	4620      	mov	r0, r4
 800128e:	2300      	movs	r3, #0
 8001290:	4669      	mov	r1, sp
 8001292:	f88d 2005 	strb.w	r2, [sp, #5]
 8001296:	f88d 3007 	strb.w	r3, [sp, #7]
 800129a:	9500      	str	r5, [sp, #0]
 800129c:	f001 fbae 	bl	80029fc <GPIO_Init>
 80012a0:	8525      	strh	r5, [r4, #40]	; 0x28
 80012a2:	4630      	mov	r0, r6
 80012a4:	f7ff ffe1 	bl	800126a <_ZN4CI2C5delayEv>
 80012a8:	b002      	add	sp, #8
 80012aa:	bd70      	pop	{r4, r5, r6, pc}
 80012ac:	48000400 	.word	0x48000400

080012b0 <_ZN4CI2C10SetHighSDAEv>:
 80012b0:	4b05      	ldr	r3, [pc, #20]	; (80012c8 <_ZN4CI2C10SetHighSDAEv+0x18>)
 80012b2:	681a      	ldr	r2, [r3, #0]
 80012b4:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 80012b8:	601a      	str	r2, [r3, #0]
 80012ba:	681a      	ldr	r2, [r3, #0]
 80012bc:	601a      	str	r2, [r3, #0]
 80012be:	2280      	movs	r2, #128	; 0x80
 80012c0:	619a      	str	r2, [r3, #24]
 80012c2:	f7ff bfd2 	b.w	800126a <_ZN4CI2C5delayEv>
 80012c6:	bf00      	nop
 80012c8:	48000400 	.word	0x48000400

080012cc <_ZN4CI2C9SetLowSCLEv>:
 80012cc:	4b02      	ldr	r3, [pc, #8]	; (80012d8 <_ZN4CI2C9SetLowSCLEv+0xc>)
 80012ce:	2240      	movs	r2, #64	; 0x40
 80012d0:	851a      	strh	r2, [r3, #40]	; 0x28
 80012d2:	f7ff bfca 	b.w	800126a <_ZN4CI2C5delayEv>
 80012d6:	bf00      	nop
 80012d8:	48000400 	.word	0x48000400

080012dc <_ZN4CI2C10SetHighSCLEv>:
 80012dc:	4b02      	ldr	r3, [pc, #8]	; (80012e8 <_ZN4CI2C10SetHighSCLEv+0xc>)
 80012de:	2240      	movs	r2, #64	; 0x40
 80012e0:	619a      	str	r2, [r3, #24]
 80012e2:	f7ff bfc2 	b.w	800126a <_ZN4CI2C5delayEv>
 80012e6:	bf00      	nop
 80012e8:	48000400 	.word	0x48000400

080012ec <_ZN4CI2C4initEv>:
 80012ec:	b513      	push	{r0, r1, r4, lr}
 80012ee:	4604      	mov	r4, r0
 80012f0:	2101      	movs	r1, #1
 80012f2:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80012f6:	f001 f915 	bl	8002524 <RCC_AHBPeriphClockCmd>
 80012fa:	23c0      	movs	r3, #192	; 0xc0
 80012fc:	9300      	str	r3, [sp, #0]
 80012fe:	2301      	movs	r3, #1
 8001300:	2203      	movs	r2, #3
 8001302:	4669      	mov	r1, sp
 8001304:	f88d 3004 	strb.w	r3, [sp, #4]
 8001308:	f88d 3006 	strb.w	r3, [sp, #6]
 800130c:	4809      	ldr	r0, [pc, #36]	; (8001334 <_ZN4CI2C4initEv+0x48>)
 800130e:	f88d 2005 	strb.w	r2, [sp, #5]
 8001312:	2300      	movs	r3, #0
 8001314:	f88d 3007 	strb.w	r3, [sp, #7]
 8001318:	f001 fb70 	bl	80029fc <GPIO_Init>
 800131c:	4620      	mov	r0, r4
 800131e:	f7ff ffdd 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 8001322:	4620      	mov	r0, r4
 8001324:	f7ff ffa8 	bl	8001278 <_ZN4CI2C9SetLowSDAEv>
 8001328:	4620      	mov	r0, r4
 800132a:	f7ff ffc1 	bl	80012b0 <_ZN4CI2C10SetHighSDAEv>
 800132e:	b002      	add	sp, #8
 8001330:	bd10      	pop	{r4, pc}
 8001332:	bf00      	nop
 8001334:	48000400 	.word	0x48000400

08001338 <_ZN4CI2C5StartEv>:
 8001338:	b510      	push	{r4, lr}
 800133a:	4604      	mov	r4, r0
 800133c:	f7ff ffce 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 8001340:	4620      	mov	r0, r4
 8001342:	f7ff ffb5 	bl	80012b0 <_ZN4CI2C10SetHighSDAEv>
 8001346:	4620      	mov	r0, r4
 8001348:	f7ff ffc8 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 800134c:	4620      	mov	r0, r4
 800134e:	f7ff ff93 	bl	8001278 <_ZN4CI2C9SetLowSDAEv>
 8001352:	4620      	mov	r0, r4
 8001354:	f7ff ffba 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 8001358:	4620      	mov	r0, r4
 800135a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800135e:	f7ff bfa7 	b.w	80012b0 <_ZN4CI2C10SetHighSDAEv>

08001362 <_ZN4CI2C4StopEv>:
 8001362:	b510      	push	{r4, lr}
 8001364:	4604      	mov	r4, r0
 8001366:	f7ff ffb1 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 800136a:	4620      	mov	r0, r4
 800136c:	f7ff ff84 	bl	8001278 <_ZN4CI2C9SetLowSDAEv>
 8001370:	4620      	mov	r0, r4
 8001372:	f7ff ffb3 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 8001376:	4620      	mov	r0, r4
 8001378:	f7ff ff7e 	bl	8001278 <_ZN4CI2C9SetLowSDAEv>
 800137c:	4620      	mov	r0, r4
 800137e:	f7ff ffad 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 8001382:	4620      	mov	r0, r4
 8001384:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8001388:	f7ff bf92 	b.w	80012b0 <_ZN4CI2C10SetHighSDAEv>

0800138c <_ZN4CI2C5WriteEh>:
 800138c:	b570      	push	{r4, r5, r6, lr}
 800138e:	4604      	mov	r4, r0
 8001390:	460e      	mov	r6, r1
 8001392:	2508      	movs	r5, #8
 8001394:	4620      	mov	r0, r4
 8001396:	f7ff ff99 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 800139a:	0633      	lsls	r3, r6, #24
 800139c:	4620      	mov	r0, r4
 800139e:	d502      	bpl.n	80013a6 <_ZN4CI2C5WriteEh+0x1a>
 80013a0:	f7ff ff86 	bl	80012b0 <_ZN4CI2C10SetHighSDAEv>
 80013a4:	e001      	b.n	80013aa <_ZN4CI2C5WriteEh+0x1e>
 80013a6:	f7ff ff67 	bl	8001278 <_ZN4CI2C9SetLowSDAEv>
 80013aa:	4620      	mov	r0, r4
 80013ac:	3d01      	subs	r5, #1
 80013ae:	f7ff ff95 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 80013b2:	0076      	lsls	r6, r6, #1
 80013b4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80013b8:	b2f6      	uxtb	r6, r6
 80013ba:	d1eb      	bne.n	8001394 <_ZN4CI2C5WriteEh+0x8>
 80013bc:	4620      	mov	r0, r4
 80013be:	f7ff ff85 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 80013c2:	4620      	mov	r0, r4
 80013c4:	f7ff ff74 	bl	80012b0 <_ZN4CI2C10SetHighSDAEv>
 80013c8:	4620      	mov	r0, r4
 80013ca:	f7ff ff87 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 80013ce:	4b07      	ldr	r3, [pc, #28]	; (80013ec <_ZN4CI2C5WriteEh+0x60>)
 80013d0:	8a1d      	ldrh	r5, [r3, #16]
 80013d2:	4620      	mov	r0, r4
 80013d4:	f7ff ff7a 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 80013d8:	b2ad      	uxth	r5, r5
 80013da:	4620      	mov	r0, r4
 80013dc:	f7ff ff45 	bl	800126a <_ZN4CI2C5delayEv>
 80013e0:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 80013e4:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80013e8:	bd70      	pop	{r4, r5, r6, pc}
 80013ea:	bf00      	nop
 80013ec:	48000400 	.word	0x48000400

080013f0 <_ZN4CI2C9write_regEhhh>:
 80013f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80013f2:	4604      	mov	r4, r0
 80013f4:	460f      	mov	r7, r1
 80013f6:	4616      	mov	r6, r2
 80013f8:	461d      	mov	r5, r3
 80013fa:	f7ff ff9d 	bl	8001338 <_ZN4CI2C5StartEv>
 80013fe:	4639      	mov	r1, r7
 8001400:	4620      	mov	r0, r4
 8001402:	f7ff ffc3 	bl	800138c <_ZN4CI2C5WriteEh>
 8001406:	4631      	mov	r1, r6
 8001408:	4620      	mov	r0, r4
 800140a:	f7ff ffbf 	bl	800138c <_ZN4CI2C5WriteEh>
 800140e:	4620      	mov	r0, r4
 8001410:	4629      	mov	r1, r5
 8001412:	f7ff ffbb 	bl	800138c <_ZN4CI2C5WriteEh>
 8001416:	4620      	mov	r0, r4
 8001418:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800141c:	f7ff bfa1 	b.w	8001362 <_ZN4CI2C4StopEv>

08001420 <_ZN4CI2C4ReadEh>:
 8001420:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001422:	4605      	mov	r5, r0
 8001424:	460f      	mov	r7, r1
 8001426:	f7ff ff51 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 800142a:	2608      	movs	r6, #8
 800142c:	2400      	movs	r4, #0
 800142e:	4628      	mov	r0, r5
 8001430:	f7ff ff54 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 8001434:	4b10      	ldr	r3, [pc, #64]	; (8001478 <_ZN4CI2C4ReadEh+0x58>)
 8001436:	8a1b      	ldrh	r3, [r3, #16]
 8001438:	0064      	lsls	r4, r4, #1
 800143a:	061b      	lsls	r3, r3, #24
 800143c:	b2e4      	uxtb	r4, r4
 800143e:	4628      	mov	r0, r5
 8001440:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8001444:	bf48      	it	mi
 8001446:	f044 0401 	orrmi.w	r4, r4, #1
 800144a:	f7ff ff3f 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 800144e:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8001452:	d1ec      	bne.n	800142e <_ZN4CI2C4ReadEh+0xe>
 8001454:	4628      	mov	r0, r5
 8001456:	b117      	cbz	r7, 800145e <_ZN4CI2C4ReadEh+0x3e>
 8001458:	f7ff ff0e 	bl	8001278 <_ZN4CI2C9SetLowSDAEv>
 800145c:	e001      	b.n	8001462 <_ZN4CI2C4ReadEh+0x42>
 800145e:	f7ff ff27 	bl	80012b0 <_ZN4CI2C10SetHighSDAEv>
 8001462:	4628      	mov	r0, r5
 8001464:	f7ff ff3a 	bl	80012dc <_ZN4CI2C10SetHighSCLEv>
 8001468:	4628      	mov	r0, r5
 800146a:	f7ff ff2f 	bl	80012cc <_ZN4CI2C9SetLowSCLEv>
 800146e:	4628      	mov	r0, r5
 8001470:	f7ff ff1e 	bl	80012b0 <_ZN4CI2C10SetHighSDAEv>
 8001474:	4620      	mov	r0, r4
 8001476:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8001478:	48000400 	.word	0x48000400

0800147c <_ZN4CI2C8read_regEhh>:
 800147c:	b570      	push	{r4, r5, r6, lr}
 800147e:	4604      	mov	r4, r0
 8001480:	460d      	mov	r5, r1
 8001482:	4616      	mov	r6, r2
 8001484:	f7ff ff58 	bl	8001338 <_ZN4CI2C5StartEv>
 8001488:	4629      	mov	r1, r5
 800148a:	4620      	mov	r0, r4
 800148c:	f7ff ff7e 	bl	800138c <_ZN4CI2C5WriteEh>
 8001490:	4631      	mov	r1, r6
 8001492:	4620      	mov	r0, r4
 8001494:	f7ff ff7a 	bl	800138c <_ZN4CI2C5WriteEh>
 8001498:	4620      	mov	r0, r4
 800149a:	f7ff ff4d 	bl	8001338 <_ZN4CI2C5StartEv>
 800149e:	f045 0101 	orr.w	r1, r5, #1
 80014a2:	4620      	mov	r0, r4
 80014a4:	f7ff ff72 	bl	800138c <_ZN4CI2C5WriteEh>
 80014a8:	2100      	movs	r1, #0
 80014aa:	4620      	mov	r0, r4
 80014ac:	f7ff ffb8 	bl	8001420 <_ZN4CI2C4ReadEh>
 80014b0:	4605      	mov	r5, r0
 80014b2:	4620      	mov	r0, r4
 80014b4:	f7ff ff55 	bl	8001362 <_ZN4CI2C4StopEv>
 80014b8:	4628      	mov	r0, r5
 80014ba:	bd70      	pop	{r4, r5, r6, pc}

080014bc <_ZN5CGPIO9gpio_initEv>:
 80014bc:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 80014c0:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80014c4:	2101      	movs	r1, #1
 80014c6:	f001 f82d 	bl	8002524 <RCC_AHBPeriphClockCmd>
 80014ca:	4f22      	ldr	r7, [pc, #136]	; (8001554 <_ZN5CGPIO9gpio_initEv+0x98>)
 80014cc:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80014d0:	2101      	movs	r1, #1
 80014d2:	f001 f827 	bl	8002524 <RCC_AHBPeriphClockCmd>
 80014d6:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80014da:	2101      	movs	r1, #1
 80014dc:	f001 f822 	bl	8002524 <RCC_AHBPeriphClockCmd>
 80014e0:	2400      	movs	r4, #0
 80014e2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80014e6:	2503      	movs	r5, #3
 80014e8:	f04f 0801 	mov.w	r8, #1
 80014ec:	4638      	mov	r0, r7
 80014ee:	4669      	mov	r1, sp
 80014f0:	9300      	str	r3, [sp, #0]
 80014f2:	2608      	movs	r6, #8
 80014f4:	f88d 8004 	strb.w	r8, [sp, #4]
 80014f8:	f88d 4006 	strb.w	r4, [sp, #6]
 80014fc:	f88d 5005 	strb.w	r5, [sp, #5]
 8001500:	f88d 4007 	strb.w	r4, [sp, #7]
 8001504:	f001 fa7a 	bl	80029fc <GPIO_Init>
 8001508:	4669      	mov	r1, sp
 800150a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800150e:	9600      	str	r6, [sp, #0]
 8001510:	f88d 8004 	strb.w	r8, [sp, #4]
 8001514:	f88d 4006 	strb.w	r4, [sp, #6]
 8001518:	f88d 5005 	strb.w	r5, [sp, #5]
 800151c:	f88d 4007 	strb.w	r4, [sp, #7]
 8001520:	f001 fa6c 	bl	80029fc <GPIO_Init>
 8001524:	f44f 7300 	mov.w	r3, #512	; 0x200
 8001528:	4638      	mov	r0, r7
 800152a:	4669      	mov	r1, sp
 800152c:	9300      	str	r3, [sp, #0]
 800152e:	f88d 4004 	strb.w	r4, [sp, #4]
 8001532:	f88d 5005 	strb.w	r5, [sp, #5]
 8001536:	f88d 4007 	strb.w	r4, [sp, #7]
 800153a:	f001 fa5f 	bl	80029fc <GPIO_Init>
 800153e:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001542:	4620      	mov	r0, r4
 8001544:	851e      	strh	r6, [r3, #40]	; 0x28
 8001546:	4b04      	ldr	r3, [pc, #16]	; (8001558 <_ZN5CGPIO9gpio_initEv+0x9c>)
 8001548:	601c      	str	r4, [r3, #0]
 800154a:	4b04      	ldr	r3, [pc, #16]	; (800155c <_ZN5CGPIO9gpio_initEv+0xa0>)
 800154c:	601c      	str	r4, [r3, #0]
 800154e:	b002      	add	sp, #8
 8001550:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001554:	48000400 	.word	0x48000400
 8001558:	2000081c 	.word	0x2000081c
 800155c:	20000820 	.word	0x20000820

08001560 <_ZN5CGPIO7gpio_onEm>:
 8001560:	2908      	cmp	r1, #8
 8001562:	d005      	beq.n	8001570 <_ZN5CGPIO7gpio_onEm+0x10>
 8001564:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8001568:	d105      	bne.n	8001576 <_ZN5CGPIO7gpio_onEm+0x16>
 800156a:	4b03      	ldr	r3, [pc, #12]	; (8001578 <_ZN5CGPIO7gpio_onEm+0x18>)
 800156c:	6199      	str	r1, [r3, #24]
 800156e:	4770      	bx	lr
 8001570:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001574:	8519      	strh	r1, [r3, #40]	; 0x28
 8001576:	4770      	bx	lr
 8001578:	48000400 	.word	0x48000400

0800157c <_ZN5CGPIO8gpio_offEm>:
 800157c:	2908      	cmp	r1, #8
 800157e:	d005      	beq.n	800158c <_ZN5CGPIO8gpio_offEm+0x10>
 8001580:	f5b1 4f00 	cmp.w	r1, #32768	; 0x8000
 8001584:	d105      	bne.n	8001592 <_ZN5CGPIO8gpio_offEm+0x16>
 8001586:	4b03      	ldr	r3, [pc, #12]	; (8001594 <_ZN5CGPIO8gpio_offEm+0x18>)
 8001588:	8519      	strh	r1, [r3, #40]	; 0x28
 800158a:	4770      	bx	lr
 800158c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001590:	6199      	str	r1, [r3, #24]
 8001592:	4770      	bx	lr
 8001594:	48000400 	.word	0x48000400

08001598 <_ZN5CGPIO7gpio_inEm>:
 8001598:	4b02      	ldr	r3, [pc, #8]	; (80015a4 <_ZN5CGPIO7gpio_inEm+0xc>)
 800159a:	8a18      	ldrh	r0, [r3, #16]
 800159c:	b280      	uxth	r0, r0
 800159e:	ea21 0000 	bic.w	r0, r1, r0
 80015a2:	4770      	bx	lr
 80015a4:	48000400 	.word	0x48000400

080015a8 <EXTI9_5_IRQHandler>:
 80015a8:	4a03      	ldr	r2, [pc, #12]	; (80015b8 <EXTI9_5_IRQHandler+0x10>)
 80015aa:	6813      	ldr	r3, [r2, #0]
 80015ac:	2006      	movs	r0, #6
 80015ae:	3301      	adds	r3, #1
 80015b0:	6013      	str	r3, [r2, #0]
 80015b2:	f001 ba17 	b.w	80029e4 <EXTI_ClearITPendingBit>
 80015b6:	bf00      	nop
 80015b8:	2000081c 	.word	0x2000081c

080015bc <EXTI15_10_IRQHandler>:
 80015bc:	4a03      	ldr	r2, [pc, #12]	; (80015cc <EXTI15_10_IRQHandler+0x10>)
 80015be:	6813      	ldr	r3, [r2, #0]
 80015c0:	200c      	movs	r0, #12
 80015c2:	3301      	adds	r3, #1
 80015c4:	6013      	str	r3, [r2, #0]
 80015c6:	f001 ba0d 	b.w	80029e4 <EXTI_ClearITPendingBit>
 80015ca:	bf00      	nop
 80015cc:	20000820 	.word	0x20000820

080015d0 <_ZN9CTerminal12clear_bufferEv>:
 80015d0:	4a05      	ldr	r2, [pc, #20]	; (80015e8 <_ZN9CTerminal12clear_bufferEv+0x18>)
 80015d2:	2300      	movs	r3, #0
 80015d4:	6013      	str	r3, [r2, #0]
 80015d6:	4a05      	ldr	r2, [pc, #20]	; (80015ec <_ZN9CTerminal12clear_bufferEv+0x1c>)
 80015d8:	6013      	str	r3, [r2, #0]
 80015da:	4a05      	ldr	r2, [pc, #20]	; (80015f0 <_ZN9CTerminal12clear_bufferEv+0x20>)
 80015dc:	2100      	movs	r1, #0
 80015de:	54d1      	strb	r1, [r2, r3]
 80015e0:	3301      	adds	r3, #1
 80015e2:	2b10      	cmp	r3, #16
 80015e4:	d1f9      	bne.n	80015da <_ZN9CTerminal12clear_bufferEv+0xa>
 80015e6:	4770      	bx	lr
 80015e8:	20000824 	.word	0x20000824
 80015ec:	20000838 	.word	0x20000838
 80015f0:	20000828 	.word	0x20000828

080015f4 <_ZN9CTerminal13terminal_initEv>:
 80015f4:	b570      	push	{r4, r5, r6, lr}
 80015f6:	b08a      	sub	sp, #40	; 0x28
 80015f8:	f7ff ffea 	bl	80015d0 <_ZN9CTerminal12clear_bufferEv>
 80015fc:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001600:	2101      	movs	r1, #1
 8001602:	f000 ff8f 	bl	8002524 <RCC_AHBPeriphClockCmd>
 8001606:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 800160a:	2101      	movs	r1, #1
 800160c:	f000 ff98 	bl	8002540 <RCC_APB2PeriphClockCmd>
 8001610:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001614:	9302      	str	r3, [sp, #8]
 8001616:	2302      	movs	r3, #2
 8001618:	2400      	movs	r4, #0
 800161a:	f88d 300c 	strb.w	r3, [sp, #12]
 800161e:	a902      	add	r1, sp, #8
 8001620:	2303      	movs	r3, #3
 8001622:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001626:	f88d 300d 	strb.w	r3, [sp, #13]
 800162a:	f88d 400e 	strb.w	r4, [sp, #14]
 800162e:	f88d 400f 	strb.w	r4, [sp, #15]
 8001632:	f001 f9e3 	bl	80029fc <GPIO_Init>
 8001636:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800163a:	2109      	movs	r1, #9
 800163c:	2207      	movs	r2, #7
 800163e:	f001 fa23 	bl	8002a88 <GPIO_PinAFConfig>
 8001642:	4d18      	ldr	r5, [pc, #96]	; (80016a4 <_ZN9CTerminal13terminal_initEv+0xb0>)
 8001644:	2207      	movs	r2, #7
 8001646:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800164a:	210a      	movs	r1, #10
 800164c:	f001 fa1c 	bl	8002a88 <GPIO_PinAFConfig>
 8001650:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001654:	9304      	str	r3, [sp, #16]
 8001656:	4628      	mov	r0, r5
 8001658:	230c      	movs	r3, #12
 800165a:	a904      	add	r1, sp, #16
 800165c:	9308      	str	r3, [sp, #32]
 800165e:	9405      	str	r4, [sp, #20]
 8001660:	9406      	str	r4, [sp, #24]
 8001662:	9407      	str	r4, [sp, #28]
 8001664:	9409      	str	r4, [sp, #36]	; 0x24
 8001666:	f001 f84f 	bl	8002708 <USART_Init>
 800166a:	4628      	mov	r0, r5
 800166c:	2101      	movs	r1, #1
 800166e:	f001 f8ad 	bl	80027cc <USART_Cmd>
 8001672:	2201      	movs	r2, #1
 8001674:	4628      	mov	r0, r5
 8001676:	490c      	ldr	r1, [pc, #48]	; (80016a8 <_ZN9CTerminal13terminal_initEv+0xb4>)
 8001678:	f001 f8b8 	bl	80027ec <USART_ITConfig>
 800167c:	2601      	movs	r6, #1
 800167e:	2325      	movs	r3, #37	; 0x25
 8001680:	a801      	add	r0, sp, #4
 8001682:	f88d 3004 	strb.w	r3, [sp, #4]
 8001686:	f88d 4005 	strb.w	r4, [sp, #5]
 800168a:	f88d 4006 	strb.w	r4, [sp, #6]
 800168e:	f88d 6007 	strb.w	r6, [sp, #7]
 8001692:	f001 f96d 	bl	8002970 <NVIC_Init>
 8001696:	4628      	mov	r0, r5
 8001698:	4631      	mov	r1, r6
 800169a:	f001 f897 	bl	80027cc <USART_Cmd>
 800169e:	4620      	mov	r0, r4
 80016a0:	b00a      	add	sp, #40	; 0x28
 80016a2:	bd70      	pop	{r4, r5, r6, pc}
 80016a4:	40013800 	.word	0x40013800
 80016a8:	00050105 	.word	0x00050105

080016ac <USART1_IRQHandler>:
 80016ac:	b508      	push	{r3, lr}
 80016ae:	480d      	ldr	r0, [pc, #52]	; (80016e4 <USART1_IRQHandler+0x38>)
 80016b0:	490d      	ldr	r1, [pc, #52]	; (80016e8 <USART1_IRQHandler+0x3c>)
 80016b2:	f001 f8b5 	bl	8002820 <USART_GetITStatus>
 80016b6:	b178      	cbz	r0, 80016d8 <USART1_IRQHandler+0x2c>
 80016b8:	480a      	ldr	r0, [pc, #40]	; (80016e4 <USART1_IRQHandler+0x38>)
 80016ba:	f001 f892 	bl	80027e2 <USART_ReceiveData>
 80016be:	4b0b      	ldr	r3, [pc, #44]	; (80016ec <USART1_IRQHandler+0x40>)
 80016c0:	490b      	ldr	r1, [pc, #44]	; (80016f0 <USART1_IRQHandler+0x44>)
 80016c2:	681a      	ldr	r2, [r3, #0]
 80016c4:	b2c0      	uxtb	r0, r0
 80016c6:	5488      	strb	r0, [r1, r2]
 80016c8:	681a      	ldr	r2, [r3, #0]
 80016ca:	3201      	adds	r2, #1
 80016cc:	601a      	str	r2, [r3, #0]
 80016ce:	681a      	ldr	r2, [r3, #0]
 80016d0:	2a0f      	cmp	r2, #15
 80016d2:	bf84      	itt	hi
 80016d4:	2200      	movhi	r2, #0
 80016d6:	601a      	strhi	r2, [r3, #0]
 80016d8:	4802      	ldr	r0, [pc, #8]	; (80016e4 <USART1_IRQHandler+0x38>)
 80016da:	4903      	ldr	r1, [pc, #12]	; (80016e8 <USART1_IRQHandler+0x3c>)
 80016dc:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80016e0:	f001 b8bc 	b.w	800285c <USART_ClearITPendingBit>
 80016e4:	40013800 	.word	0x40013800
 80016e8:	00050105 	.word	0x00050105
 80016ec:	20000824 	.word	0x20000824
 80016f0:	20000828 	.word	0x20000828

080016f4 <_ZN9CTerminal7putcharEc>:
 80016f4:	4b04      	ldr	r3, [pc, #16]	; (8001708 <_ZN9CTerminal7putcharEc+0x14>)
 80016f6:	69da      	ldr	r2, [r3, #28]
 80016f8:	0612      	lsls	r2, r2, #24
 80016fa:	d401      	bmi.n	8001700 <_ZN9CTerminal7putcharEc+0xc>
 80016fc:	bf00      	nop
 80016fe:	e7f9      	b.n	80016f4 <_ZN9CTerminal7putcharEc>
 8001700:	b289      	uxth	r1, r1
 8001702:	8519      	strh	r1, [r3, #40]	; 0x28
 8001704:	4770      	bx	lr
 8001706:	bf00      	nop
 8001708:	40013800 	.word	0x40013800

0800170c <_ZN9CTerminal4putsEPc>:
 800170c:	b538      	push	{r3, r4, r5, lr}
 800170e:	4605      	mov	r5, r0
 8001710:	1e4c      	subs	r4, r1, #1
 8001712:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001716:	b119      	cbz	r1, 8001720 <_ZN9CTerminal4putsEPc+0x14>
 8001718:	4628      	mov	r0, r5
 800171a:	f7ff ffeb 	bl	80016f4 <_ZN9CTerminal7putcharEc>
 800171e:	e7f8      	b.n	8001712 <_ZN9CTerminal4putsEPc+0x6>
 8001720:	2001      	movs	r0, #1
 8001722:	bd38      	pop	{r3, r4, r5, pc}

08001724 <_ZN9CTerminal4putiEl>:
 8001724:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001726:	1e0b      	subs	r3, r1, #0
 8001728:	f04f 0200 	mov.w	r2, #0
 800172c:	bfba      	itte	lt
 800172e:	425b      	neglt	r3, r3
 8001730:	2501      	movlt	r5, #1
 8001732:	4615      	movge	r5, r2
 8001734:	f88d 200f 	strb.w	r2, [sp, #15]
 8001738:	210a      	movs	r1, #10
 800173a:	220a      	movs	r2, #10
 800173c:	ac01      	add	r4, sp, #4
 800173e:	fb93 f6f2 	sdiv	r6, r3, r2
 8001742:	fb02 3316 	mls	r3, r2, r6, r3
 8001746:	3330      	adds	r3, #48	; 0x30
 8001748:	550b      	strb	r3, [r1, r4]
 800174a:	1e4a      	subs	r2, r1, #1
 800174c:	4633      	mov	r3, r6
 800174e:	b10e      	cbz	r6, 8001754 <_ZN9CTerminal4putiEl+0x30>
 8001750:	4611      	mov	r1, r2
 8001752:	e7f2      	b.n	800173a <_ZN9CTerminal4putiEl+0x16>
 8001754:	b12d      	cbz	r5, 8001762 <_ZN9CTerminal4putiEl+0x3e>
 8001756:	ab04      	add	r3, sp, #16
 8001758:	4413      	add	r3, r2
 800175a:	212d      	movs	r1, #45	; 0x2d
 800175c:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001760:	4611      	mov	r1, r2
 8001762:	4421      	add	r1, r4
 8001764:	f7ff ffd2 	bl	800170c <_ZN9CTerminal4putsEPc>
 8001768:	b004      	add	sp, #16
 800176a:	bd70      	pop	{r4, r5, r6, pc}

0800176c <_ZN9CTerminal5putuiEm>:
 800176c:	b530      	push	{r4, r5, lr}
 800176e:	b085      	sub	sp, #20
 8001770:	2300      	movs	r3, #0
 8001772:	f88d 300f 	strb.w	r3, [sp, #15]
 8001776:	220a      	movs	r2, #10
 8001778:	230a      	movs	r3, #10
 800177a:	ac01      	add	r4, sp, #4
 800177c:	fbb1 f5f3 	udiv	r5, r1, r3
 8001780:	fb03 1315 	mls	r3, r3, r5, r1
 8001784:	3330      	adds	r3, #48	; 0x30
 8001786:	5513      	strb	r3, [r2, r4]
 8001788:	4629      	mov	r1, r5
 800178a:	1e53      	subs	r3, r2, #1
 800178c:	b10d      	cbz	r5, 8001792 <_ZN9CTerminal5putuiEm+0x26>
 800178e:	461a      	mov	r2, r3
 8001790:	e7f2      	b.n	8001778 <_ZN9CTerminal5putuiEm+0xc>
 8001792:	18a1      	adds	r1, r4, r2
 8001794:	f7ff ffba 	bl	800170c <_ZN9CTerminal4putsEPc>
 8001798:	b005      	add	sp, #20
 800179a:	bd30      	pop	{r4, r5, pc}

0800179c <_ZN9CTerminal4putxEm>:
 800179c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800179e:	2300      	movs	r3, #0
 80017a0:	f88d 300f 	strb.w	r3, [sp, #15]
 80017a4:	220a      	movs	r2, #10
 80017a6:	f001 030f 	and.w	r3, r1, #15
 80017aa:	2b09      	cmp	r3, #9
 80017ac:	ac01      	add	r4, sp, #4
 80017ae:	bfd4      	ite	le
 80017b0:	3330      	addle	r3, #48	; 0x30
 80017b2:	3357      	addgt	r3, #87	; 0x57
 80017b4:	0909      	lsrs	r1, r1, #4
 80017b6:	54a3      	strb	r3, [r4, r2]
 80017b8:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80017bc:	d001      	beq.n	80017c2 <_ZN9CTerminal4putxEm+0x26>
 80017be:	461a      	mov	r2, r3
 80017c0:	e7f1      	b.n	80017a6 <_ZN9CTerminal4putxEm+0xa>
 80017c2:	18a1      	adds	r1, r4, r2
 80017c4:	f7ff ffa2 	bl	800170c <_ZN9CTerminal4putsEPc>
 80017c8:	b004      	add	sp, #16
 80017ca:	bd10      	pop	{r4, pc}

080017cc <_ZN9CTerminal4putfEfj>:
 80017cc:	b538      	push	{r3, r4, r5, lr}
 80017ce:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 80017d2:	ed2d 8b02 	vpush	{d8}
 80017d6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80017da:	4605      	mov	r5, r0
 80017dc:	bf48      	it	mi
 80017de:	eeb1 0a40 	vnegmi.f32	s0, s0
 80017e2:	4608      	mov	r0, r1
 80017e4:	f04f 0301 	mov.w	r3, #1
 80017e8:	bf4c      	ite	mi
 80017ea:	212d      	movmi	r1, #45	; 0x2d
 80017ec:	2120      	movpl	r1, #32
 80017ee:	2200      	movs	r2, #0
 80017f0:	4282      	cmp	r2, r0
 80017f2:	d003      	beq.n	80017fc <_ZN9CTerminal4putfEfj+0x30>
 80017f4:	240a      	movs	r4, #10
 80017f6:	4363      	muls	r3, r4
 80017f8:	3201      	adds	r2, #1
 80017fa:	e7f9      	b.n	80017f0 <_ZN9CTerminal4putfEfj+0x24>
 80017fc:	eebd 8ac0 	vcvt.s32.f32	s16, s0
 8001800:	4628      	mov	r0, r5
 8001802:	eef8 7ac8 	vcvt.f32.s32	s15, s16
 8001806:	ee30 0a67 	vsub.f32	s0, s0, s15
 800180a:	ee07 3a90 	vmov	s15, r3
 800180e:	eef8 7a67 	vcvt.f32.u32	s15, s15
 8001812:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001816:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 800181a:	ee17 4a90 	vmov	r4, s15
 800181e:	f7ff ff69 	bl	80016f4 <_ZN9CTerminal7putcharEc>
 8001822:	4628      	mov	r0, r5
 8001824:	ee18 1a10 	vmov	r1, s16
 8001828:	f7ff ff7c 	bl	8001724 <_ZN9CTerminal4putiEl>
 800182c:	4628      	mov	r0, r5
 800182e:	212e      	movs	r1, #46	; 0x2e
 8001830:	f7ff ff60 	bl	80016f4 <_ZN9CTerminal7putcharEc>
 8001834:	ecbd 8b02 	vpop	{d8}
 8001838:	ea84 71e4 	eor.w	r1, r4, r4, asr #31
 800183c:	4628      	mov	r0, r5
 800183e:	eba1 71e4 	sub.w	r1, r1, r4, asr #31
 8001842:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001846:	f7ff bf6d 	b.w	8001724 <_ZN9CTerminal4putiEl>

0800184a <_ZN9CTerminal6printfEPKcz>:
 800184a:	b40e      	push	{r1, r2, r3}
 800184c:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 800184e:	ab07      	add	r3, sp, #28
 8001850:	4604      	mov	r4, r0
 8001852:	f853 6b04 	ldr.w	r6, [r3], #4
 8001856:	9301      	str	r3, [sp, #4]
 8001858:	2500      	movs	r5, #0
 800185a:	5d71      	ldrb	r1, [r6, r5]
 800185c:	2900      	cmp	r1, #0
 800185e:	d054      	beq.n	800190a <_ZN9CTerminal6printfEPKcz+0xc0>
 8001860:	2925      	cmp	r1, #37	; 0x25
 8001862:	d004      	beq.n	800186e <_ZN9CTerminal6printfEPKcz+0x24>
 8001864:	4620      	mov	r0, r4
 8001866:	f7ff ff45 	bl	80016f4 <_ZN9CTerminal7putcharEc>
 800186a:	3501      	adds	r5, #1
 800186c:	e7f5      	b.n	800185a <_ZN9CTerminal6printfEPKcz+0x10>
 800186e:	1973      	adds	r3, r6, r5
 8001870:	7859      	ldrb	r1, [r3, #1]
 8001872:	2969      	cmp	r1, #105	; 0x69
 8001874:	d016      	beq.n	80018a4 <_ZN9CTerminal6printfEPKcz+0x5a>
 8001876:	d807      	bhi.n	8001888 <_ZN9CTerminal6printfEPKcz+0x3e>
 8001878:	2963      	cmp	r1, #99	; 0x63
 800187a:	d02b      	beq.n	80018d4 <_ZN9CTerminal6printfEPKcz+0x8a>
 800187c:	2966      	cmp	r1, #102	; 0x66
 800187e:	d031      	beq.n	80018e4 <_ZN9CTerminal6printfEPKcz+0x9a>
 8001880:	2925      	cmp	r1, #37	; 0x25
 8001882:	d140      	bne.n	8001906 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001884:	4620      	mov	r0, r4
 8001886:	e02a      	b.n	80018de <_ZN9CTerminal6printfEPKcz+0x94>
 8001888:	2975      	cmp	r1, #117	; 0x75
 800188a:	d013      	beq.n	80018b4 <_ZN9CTerminal6printfEPKcz+0x6a>
 800188c:	2978      	cmp	r1, #120	; 0x78
 800188e:	d019      	beq.n	80018c4 <_ZN9CTerminal6printfEPKcz+0x7a>
 8001890:	2973      	cmp	r1, #115	; 0x73
 8001892:	d138      	bne.n	8001906 <_ZN9CTerminal6printfEPKcz+0xbc>
 8001894:	9b01      	ldr	r3, [sp, #4]
 8001896:	4620      	mov	r0, r4
 8001898:	1d1a      	adds	r2, r3, #4
 800189a:	6819      	ldr	r1, [r3, #0]
 800189c:	9201      	str	r2, [sp, #4]
 800189e:	f7ff ff35 	bl	800170c <_ZN9CTerminal4putsEPc>
 80018a2:	e030      	b.n	8001906 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018a4:	9b01      	ldr	r3, [sp, #4]
 80018a6:	4620      	mov	r0, r4
 80018a8:	1d1a      	adds	r2, r3, #4
 80018aa:	6819      	ldr	r1, [r3, #0]
 80018ac:	9201      	str	r2, [sp, #4]
 80018ae:	f7ff ff39 	bl	8001724 <_ZN9CTerminal4putiEl>
 80018b2:	e028      	b.n	8001906 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018b4:	9b01      	ldr	r3, [sp, #4]
 80018b6:	4620      	mov	r0, r4
 80018b8:	1d1a      	adds	r2, r3, #4
 80018ba:	6819      	ldr	r1, [r3, #0]
 80018bc:	9201      	str	r2, [sp, #4]
 80018be:	f7ff ff55 	bl	800176c <_ZN9CTerminal5putuiEm>
 80018c2:	e020      	b.n	8001906 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018c4:	9b01      	ldr	r3, [sp, #4]
 80018c6:	4620      	mov	r0, r4
 80018c8:	1d1a      	adds	r2, r3, #4
 80018ca:	6819      	ldr	r1, [r3, #0]
 80018cc:	9201      	str	r2, [sp, #4]
 80018ce:	f7ff ff65 	bl	800179c <_ZN9CTerminal4putxEm>
 80018d2:	e018      	b.n	8001906 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018d4:	9b01      	ldr	r3, [sp, #4]
 80018d6:	1d1a      	adds	r2, r3, #4
 80018d8:	7819      	ldrb	r1, [r3, #0]
 80018da:	9201      	str	r2, [sp, #4]
 80018dc:	4620      	mov	r0, r4
 80018de:	f7ff ff09 	bl	80016f4 <_ZN9CTerminal7putcharEc>
 80018e2:	e010      	b.n	8001906 <_ZN9CTerminal6printfEPKcz+0xbc>
 80018e4:	9b01      	ldr	r3, [sp, #4]
 80018e6:	3307      	adds	r3, #7
 80018e8:	f023 0307 	bic.w	r3, r3, #7
 80018ec:	f103 0208 	add.w	r2, r3, #8
 80018f0:	e9d3 0100 	ldrd	r0, r1, [r3]
 80018f4:	9201      	str	r2, [sp, #4]
 80018f6:	f001 fb1d 	bl	8002f34 <__aeabi_d2f>
 80018fa:	2103      	movs	r1, #3
 80018fc:	ee00 0a10 	vmov	s0, r0
 8001900:	4620      	mov	r0, r4
 8001902:	f7ff ff63 	bl	80017cc <_ZN9CTerminal4putfEfj>
 8001906:	3502      	adds	r5, #2
 8001908:	e7a7      	b.n	800185a <_ZN9CTerminal6printfEPKcz+0x10>
 800190a:	b003      	add	sp, #12
 800190c:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001910:	b003      	add	sp, #12
 8001912:	4770      	bx	lr

08001914 <TIM4_IRQHandler>:
 8001914:	b538      	push	{r3, r4, r5, lr}
 8001916:	4837      	ldr	r0, [pc, #220]	; (80019f4 <TIM4_IRQHandler+0xe0>)
 8001918:	2101      	movs	r1, #1
 800191a:	f000 fee3 	bl	80026e4 <TIM_GetITStatus>
 800191e:	2800      	cmp	r0, #0
 8001920:	d067      	beq.n	80019f2 <TIM4_IRQHandler+0xde>
 8001922:	2101      	movs	r1, #1
 8001924:	4833      	ldr	r0, [pc, #204]	; (80019f4 <TIM4_IRQHandler+0xe0>)
 8001926:	f000 fee9 	bl	80026fc <TIM_ClearITPendingBit>
 800192a:	4b33      	ldr	r3, [pc, #204]	; (80019f8 <TIM4_IRQHandler+0xe4>)
 800192c:	681a      	ldr	r2, [r3, #0]
 800192e:	3201      	adds	r2, #1
 8001930:	601a      	str	r2, [r3, #0]
 8001932:	4a32      	ldr	r2, [pc, #200]	; (80019fc <TIM4_IRQHandler+0xe8>)
 8001934:	6811      	ldr	r1, [r2, #0]
 8001936:	461a      	mov	r2, r3
 8001938:	2905      	cmp	r1, #5
 800193a:	d85a      	bhi.n	80019f2 <TIM4_IRQHandler+0xde>
 800193c:	e8df f001 	tbb	[pc, r1]
 8001940:	1c03161a 	.word	0x1c03161a
 8001944:	3e20      	.short	0x3e20
 8001946:	4b2e      	ldr	r3, [pc, #184]	; (8001a00 <TIM4_IRQHandler+0xec>)
 8001948:	6819      	ldr	r1, [r3, #0]
 800194a:	2314      	movs	r3, #20
 800194c:	434b      	muls	r3, r1
 800194e:	f44f 717a 	mov.w	r1, #1000	; 0x3e8
 8001952:	fbb3 f3f1 	udiv	r3, r3, r1
 8001956:	6811      	ldr	r1, [r2, #0]
 8001958:	2b01      	cmp	r3, #1
 800195a:	bf98      	it	ls
 800195c:	2302      	movls	r3, #2
 800195e:	fbb1 f2f3 	udiv	r2, r1, r3
 8001962:	fb03 1212 	mls	r2, r3, r2, r1
 8001966:	ebb2 0f53 	cmp.w	r2, r3, lsr #1
 800196a:	d101      	bne.n	8001970 <TIM4_IRQHandler+0x5c>
 800196c:	4825      	ldr	r0, [pc, #148]	; (8001a04 <TIM4_IRQHandler+0xf0>)
 800196e:	e01c      	b.n	80019aa <TIM4_IRQHandler+0x96>
 8001970:	2a00      	cmp	r2, #0
 8001972:	d13e      	bne.n	80019f2 <TIM4_IRQHandler+0xde>
 8001974:	4823      	ldr	r0, [pc, #140]	; (8001a04 <TIM4_IRQHandler+0xf0>)
 8001976:	e01a      	b.n	80019ae <TIM4_IRQHandler+0x9a>
 8001978:	4b21      	ldr	r3, [pc, #132]	; (8001a00 <TIM4_IRQHandler+0xec>)
 800197a:	4822      	ldr	r0, [pc, #136]	; (8001a04 <TIM4_IRQHandler+0xf0>)
 800197c:	6819      	ldr	r1, [r3, #0]
 800197e:	e017      	b.n	80019b0 <TIM4_IRQHandler+0x9c>
 8001980:	6813      	ldr	r3, [r2, #0]
 8001982:	f003 0307 	and.w	r3, r3, #7
 8001986:	2b04      	cmp	r3, #4
 8001988:	d116      	bne.n	80019b8 <TIM4_IRQHandler+0xa4>
 800198a:	481f      	ldr	r0, [pc, #124]	; (8001a08 <TIM4_IRQHandler+0xf4>)
 800198c:	4a1c      	ldr	r2, [pc, #112]	; (8001a00 <TIM4_IRQHandler+0xec>)
 800198e:	7803      	ldrb	r3, [r0, #0]
 8001990:	6812      	ldr	r2, [r2, #0]
 8001992:	1c59      	adds	r1, r3, #1
 8001994:	1d53      	adds	r3, r2, #5
 8001996:	fbb1 f2f3 	udiv	r2, r1, r3
 800199a:	fb03 1312 	mls	r3, r3, r2, r1
 800199e:	b2db      	uxtb	r3, r3
 80019a0:	7003      	strb	r3, [r0, #0]
 80019a2:	7803      	ldrb	r3, [r0, #0]
 80019a4:	4817      	ldr	r0, [pc, #92]	; (8001a04 <TIM4_IRQHandler+0xf0>)
 80019a6:	2b04      	cmp	r3, #4
 80019a8:	d901      	bls.n	80019ae <TIM4_IRQHandler+0x9a>
 80019aa:	2140      	movs	r1, #64	; 0x40
 80019ac:	e000      	b.n	80019b0 <TIM4_IRQHandler+0x9c>
 80019ae:	2100      	movs	r1, #0
 80019b0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80019b4:	f000 be7c 	b.w	80026b0 <TIM_SetCompare2>
 80019b8:	b9db      	cbnz	r3, 80019f2 <TIM4_IRQHandler+0xde>
 80019ba:	e7db      	b.n	8001974 <TIM4_IRQHandler+0x60>
 80019bc:	4b10      	ldr	r3, [pc, #64]	; (8001a00 <TIM4_IRQHandler+0xec>)
 80019be:	4d12      	ldr	r5, [pc, #72]	; (8001a08 <TIM4_IRQHandler+0xf4>)
 80019c0:	681b      	ldr	r3, [r3, #0]
 80019c2:	4810      	ldr	r0, [pc, #64]	; (8001a04 <TIM4_IRQHandler+0xf0>)
 80019c4:	2414      	movs	r4, #20
 80019c6:	fb03 4404 	mla	r4, r3, r4, r4
 80019ca:	f44f 33fa 	mov.w	r3, #128000	; 0x1f400
 80019ce:	fbb3 f4f4 	udiv	r4, r3, r4
 80019d2:	782b      	ldrb	r3, [r5, #0]
 80019d4:	7829      	ldrb	r1, [r5, #0]
 80019d6:	2c00      	cmp	r4, #0
 80019d8:	bf08      	it	eq
 80019da:	2401      	moveq	r4, #1
 80019dc:	2b3f      	cmp	r3, #63	; 0x3f
 80019de:	bf88      	it	hi
 80019e0:	f1c1 0180 	rsbhi	r1, r1, #128	; 0x80
 80019e4:	f000 fe64 	bl	80026b0 <TIM_SetCompare2>
 80019e8:	782b      	ldrb	r3, [r5, #0]
 80019ea:	441c      	add	r4, r3
 80019ec:	f004 047f 	and.w	r4, r4, #127	; 0x7f
 80019f0:	702c      	strb	r4, [r5, #0]
 80019f2:	bd38      	pop	{r3, r4, r5, pc}
 80019f4:	40000800 	.word	0x40000800
 80019f8:	20000844 	.word	0x20000844
 80019fc:	20000848 	.word	0x20000848
 8001a00:	2000083c 	.word	0x2000083c
 8001a04:	40014000 	.word	0x40014000
 8001a08:	20000840 	.word	0x20000840

08001a0c <_ZN5CILED4initEv>:
 8001a0c:	4b4c      	ldr	r3, [pc, #304]	; (8001b40 <_ZN5CILED4initEv+0x134>)
 8001a0e:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8001a12:	2400      	movs	r4, #0
 8001a14:	601c      	str	r4, [r3, #0]
 8001a16:	4b4b      	ldr	r3, [pc, #300]	; (8001b44 <_ZN5CILED4initEv+0x138>)
 8001a18:	4e4b      	ldr	r6, [pc, #300]	; (8001b48 <_ZN5CILED4initEv+0x13c>)
 8001a1a:	601c      	str	r4, [r3, #0]
 8001a1c:	4b4b      	ldr	r3, [pc, #300]	; (8001b4c <_ZN5CILED4initEv+0x140>)
 8001a1e:	f8df 8138 	ldr.w	r8, [pc, #312]	; 8001b58 <_ZN5CILED4initEv+0x14c>
 8001a22:	601c      	str	r4, [r3, #0]
 8001a24:	4b4a      	ldr	r3, [pc, #296]	; (8001b50 <_ZN5CILED4initEv+0x144>)
 8001a26:	b08d      	sub	sp, #52	; 0x34
 8001a28:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001a2c:	2101      	movs	r1, #1
 8001a2e:	2501      	movs	r5, #1
 8001a30:	701c      	strb	r4, [r3, #0]
 8001a32:	f44f 4700 	mov.w	r7, #32768	; 0x8000
 8001a36:	f000 fd75 	bl	8002524 <RCC_AHBPeriphClockCmd>
 8001a3a:	f04f 0903 	mov.w	r9, #3
 8001a3e:	4630      	mov	r0, r6
 8001a40:	a902      	add	r1, sp, #8
 8001a42:	9702      	str	r7, [sp, #8]
 8001a44:	f88d 500c 	strb.w	r5, [sp, #12]
 8001a48:	f88d 400e 	strb.w	r4, [sp, #14]
 8001a4c:	f88d 900d 	strb.w	r9, [sp, #13]
 8001a50:	f88d 400f 	strb.w	r4, [sp, #15]
 8001a54:	f000 ffd2 	bl	80029fc <GPIO_Init>
 8001a58:	4629      	mov	r1, r5
 8001a5a:	8537      	strh	r7, [r6, #40]	; 0x28
 8001a5c:	2004      	movs	r0, #4
 8001a5e:	f000 fd7d 	bl	800255c <RCC_APB1PeriphClockCmd>
 8001a62:	231e      	movs	r3, #30
 8001a64:	a801      	add	r0, sp, #4
 8001a66:	f88d 3004 	strb.w	r3, [sp, #4]
 8001a6a:	f88d 4005 	strb.w	r4, [sp, #5]
 8001a6e:	f88d 5006 	strb.w	r5, [sp, #6]
 8001a72:	f88d 5007 	strb.w	r5, [sp, #7]
 8001a76:	f000 ff7b 	bl	8002970 <NVIC_Init>
 8001a7a:	4629      	mov	r1, r5
 8001a7c:	2004      	movs	r0, #4
 8001a7e:	f000 fd6d 	bl	800255c <RCC_APB1PeriphClockCmd>
 8001a82:	f241 3388 	movw	r3, #5000	; 0x1388
 8001a86:	9305      	str	r3, [sp, #20]
 8001a88:	4640      	mov	r0, r8
 8001a8a:	f44f 7334 	mov.w	r3, #720	; 0x2d0
 8001a8e:	a904      	add	r1, sp, #16
 8001a90:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001a94:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001a98:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001a9c:	f000 fd6c 	bl	8002578 <TIM_TimeBaseInit>
 8001aa0:	462a      	mov	r2, r5
 8001aa2:	4640      	mov	r0, r8
 8001aa4:	4629      	mov	r1, r5
 8001aa6:	f000 fe11 	bl	80026cc <TIM_ITConfig>
 8001aaa:	4640      	mov	r0, r8
 8001aac:	4629      	mov	r1, r5
 8001aae:	f000 fdb3 	bl	8002618 <TIM_Cmd>
 8001ab2:	9702      	str	r7, [sp, #8]
 8001ab4:	4630      	mov	r0, r6
 8001ab6:	2702      	movs	r7, #2
 8001ab8:	a902      	add	r1, sp, #8
 8001aba:	f88d 700c 	strb.w	r7, [sp, #12]
 8001abe:	f88d 900d 	strb.w	r9, [sp, #13]
 8001ac2:	f000 ff9b 	bl	80029fc <GPIO_Init>
 8001ac6:	462a      	mov	r2, r5
 8001ac8:	4630      	mov	r0, r6
 8001aca:	210f      	movs	r1, #15
 8001acc:	f000 ffdc 	bl	8002a88 <GPIO_PinAFConfig>
 8001ad0:	4e20      	ldr	r6, [pc, #128]	; (8001b54 <_ZN5CILED4initEv+0x148>)
 8001ad2:	4629      	mov	r1, r5
 8001ad4:	f44f 3080 	mov.w	r0, #65536	; 0x10000
 8001ad8:	f000 fd32 	bl	8002540 <RCC_APB2PeriphClockCmd>
 8001adc:	f44f 53e1 	mov.w	r3, #7200	; 0x1c20
 8001ae0:	f8ad 3010 	strh.w	r3, [sp, #16]
 8001ae4:	4630      	mov	r0, r6
 8001ae6:	2341      	movs	r3, #65	; 0x41
 8001ae8:	a904      	add	r1, sp, #16
 8001aea:	9305      	str	r3, [sp, #20]
 8001aec:	f8ad 4012 	strh.w	r4, [sp, #18]
 8001af0:	f8ad 4018 	strh.w	r4, [sp, #24]
 8001af4:	f8ad 401a 	strh.w	r4, [sp, #26]
 8001af8:	f000 fd3e 	bl	8002578 <TIM_TimeBaseInit>
 8001afc:	4630      	mov	r0, r6
 8001afe:	4629      	mov	r1, r5
 8001b00:	f000 fd8a 	bl	8002618 <TIM_Cmd>
 8001b04:	4630      	mov	r0, r6
 8001b06:	4629      	mov	r1, r5
 8001b08:	f000 fdd5 	bl	80026b6 <TIM_CtrlPWMOutputs>
 8001b0c:	2370      	movs	r3, #112	; 0x70
 8001b0e:	9307      	str	r3, [sp, #28]
 8001b10:	2304      	movs	r3, #4
 8001b12:	f8ad 3022 	strh.w	r3, [sp, #34]	; 0x22
 8001b16:	4630      	mov	r0, r6
 8001b18:	f44f 7380 	mov.w	r3, #256	; 0x100
 8001b1c:	a907      	add	r1, sp, #28
 8001b1e:	f8ad 5020 	strh.w	r5, [sp, #32]
 8001b22:	9409      	str	r4, [sp, #36]	; 0x24
 8001b24:	f8ad 7028 	strh.w	r7, [sp, #40]	; 0x28
 8001b28:	f8ad 402a 	strh.w	r4, [sp, #42]	; 0x2a
 8001b2c:	f8ad 302c 	strh.w	r3, [sp, #44]	; 0x2c
 8001b30:	f8ad 402e 	strh.w	r4, [sp, #46]	; 0x2e
 8001b34:	f000 fd7e 	bl	8002634 <TIM_OC2Init>
 8001b38:	b00d      	add	sp, #52	; 0x34
 8001b3a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001b3e:	bf00      	nop
 8001b40:	20000848 	.word	0x20000848
 8001b44:	2000083c 	.word	0x2000083c
 8001b48:	48000400 	.word	0x48000400
 8001b4c:	20000844 	.word	0x20000844
 8001b50:	20000840 	.word	0x20000840
 8001b54:	40014000 	.word	0x40014000
 8001b58:	40000800 	.word	0x40000800

08001b5c <_ZN5CILED3setEhj>:
 8001b5c:	4b04      	ldr	r3, [pc, #16]	; (8001b70 <_ZN5CILED3setEhj+0x14>)
 8001b5e:	6019      	str	r1, [r3, #0]
 8001b60:	4b04      	ldr	r3, [pc, #16]	; (8001b74 <_ZN5CILED3setEhj+0x18>)
 8001b62:	601a      	str	r2, [r3, #0]
 8001b64:	4a04      	ldr	r2, [pc, #16]	; (8001b78 <_ZN5CILED3setEhj+0x1c>)
 8001b66:	2300      	movs	r3, #0
 8001b68:	6013      	str	r3, [r2, #0]
 8001b6a:	4a04      	ldr	r2, [pc, #16]	; (8001b7c <_ZN5CILED3setEhj+0x20>)
 8001b6c:	7013      	strb	r3, [r2, #0]
 8001b6e:	4770      	bx	lr
 8001b70:	20000848 	.word	0x20000848
 8001b74:	2000083c 	.word	0x2000083c
 8001b78:	20000844 	.word	0x20000844
 8001b7c:	20000840 	.word	0x20000840

08001b80 <_ZN13CLinePositionC1Ev>:
 8001b80:	2200      	movs	r2, #0
 8001b82:	6042      	str	r2, [r0, #4]
 8001b84:	2200      	movs	r2, #0
 8001b86:	7002      	strb	r2, [r0, #0]
 8001b88:	4770      	bx	lr
	...

08001b8c <_ZN13CLinePosition7processEP10sRGBResult>:
 8001b8c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8001b90:	2300      	movs	r3, #0
 8001b92:	f101 0916 	add.w	r9, r1, #22
 8001b96:	ed2d 8b02 	vpush	{d8}
 8001b9a:	460d      	mov	r5, r1
 8001b9c:	4604      	mov	r4, r0
 8001b9e:	7003      	strb	r3, [r0, #0]
 8001ba0:	4649      	mov	r1, r9
 8001ba2:	461a      	mov	r2, r3
 8001ba4:	f103 000c 	add.w	r0, r3, #12
 8001ba8:	f931 6f02 	ldrsh.w	r6, [r1, #2]!
 8001bac:	f935 0010 	ldrsh.w	r0, [r5, r0, lsl #1]
 8001bb0:	4286      	cmp	r6, r0
 8001bb2:	bfb8      	it	lt
 8001bb4:	4613      	movlt	r3, r2
 8001bb6:	3201      	adds	r2, #1
 8001bb8:	2a04      	cmp	r2, #4
 8001bba:	d1f3      	bne.n	8001ba4 <_ZN13CLinePosition7processEP10sRGBResult+0x18>
 8001bbc:	330c      	adds	r3, #12
 8001bbe:	eddf 7a3f 	vldr	s15, [pc, #252]	; 8001cbc <_ZN13CLinePosition7processEP10sRGBResult+0x130>
 8001bc2:	f935 3013 	ldrsh.w	r3, [r5, r3, lsl #1]
 8001bc6:	ee07 3a10 	vmov	s14, r3
 8001bca:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001bce:	eeb0 8a67 	vmov.f32	s16, s15
 8001bd2:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001bd6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001bda:	d56a      	bpl.n	8001cb2 <_ZN13CLinePosition7processEP10sRGBResult+0x126>
 8001bdc:	1d26      	adds	r6, r4, #4
 8001bde:	eddf 8a38 	vldr	s17, [pc, #224]	; 8001cc0 <_ZN13CLinePosition7processEP10sRGBResult+0x134>
 8001be2:	f104 0814 	add.w	r8, r4, #20
 8001be6:	4637      	mov	r7, r6
 8001be8:	f939 3f02 	ldrsh.w	r3, [r9, #2]!
 8001bec:	4835      	ldr	r0, [pc, #212]	; (8001cc4 <_ZN13CLinePosition7processEP10sRGBResult+0x138>)
 8001bee:	425b      	negs	r3, r3
 8001bf0:	ee07 3a90 	vmov	s15, r3
 8001bf4:	f847 3f04 	str.w	r3, [r7, #4]!
 8001bf8:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
 8001bfc:	f7fe fb58 	bl	80002b0 <_ZN5CMath3absEf>
 8001c00:	eef4 8ac0 	vcmpe.f32	s17, s0
 8001c04:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c08:	d508      	bpl.n	8001c1c <_ZN13CLinePosition7processEP10sRGBResult+0x90>
 8001c0a:	edd7 7a00 	vldr	s15, [r7]
 8001c0e:	482d      	ldr	r0, [pc, #180]	; (8001cc4 <_ZN13CLinePosition7processEP10sRGBResult+0x138>)
 8001c10:	eeb8 0ae7 	vcvt.f32.s32	s0, s15
 8001c14:	f7fe fb4c 	bl	80002b0 <_ZN5CMath3absEf>
 8001c18:	eef0 8a40 	vmov.f32	s17, s0
 8001c1c:	4547      	cmp	r7, r8
 8001c1e:	d1e3      	bne.n	8001be8 <_ZN13CLinePosition7processEP10sRGBResult+0x5c>
 8001c20:	f856 3f04 	ldr.w	r3, [r6, #4]!
 8001c24:	ee07 3a90 	vmov	s15, r3
 8001c28:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001c2c:	4546      	cmp	r6, r8
 8001c2e:	eec7 7aa8 	vdiv.f32	s15, s15, s17
 8001c32:	eefd 7ae7 	vcvt.s32.f32	s15, s15
 8001c36:	edc6 7a00 	vstr	s15, [r6]
 8001c3a:	d1f1      	bne.n	8001c20 <_ZN13CLinePosition7processEP10sRGBResult+0x94>
 8001c3c:	2301      	movs	r3, #1
 8001c3e:	7023      	strb	r3, [r4, #0]
 8001c40:	f9b5 3018 	ldrsh.w	r3, [r5, #24]
 8001c44:	eddf 7a1d 	vldr	s15, [pc, #116]	; 8001cbc <_ZN13CLinePosition7processEP10sRGBResult+0x130>
 8001c48:	ee07 3a10 	vmov	s14, r3
 8001c4c:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001c50:	eeb4 7ac8 	vcmpe.f32	s14, s16
 8001c54:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c58:	d501      	bpl.n	8001c5e <_ZN13CLinePosition7processEP10sRGBResult+0xd2>
 8001c5a:	4b1b      	ldr	r3, [pc, #108]	; (8001cc8 <_ZN13CLinePosition7processEP10sRGBResult+0x13c>)
 8001c5c:	e028      	b.n	8001cb0 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8001c5e:	f9b5 301e 	ldrsh.w	r3, [r5, #30]
 8001c62:	ee07 3a10 	vmov	s14, r3
 8001c66:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001c6a:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001c6e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c72:	d502      	bpl.n	8001c7a <_ZN13CLinePosition7processEP10sRGBResult+0xee>
 8001c74:	f04f 537e 	mov.w	r3, #1065353216	; 0x3f800000
 8001c78:	e01a      	b.n	8001cb0 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8001c7a:	f9b5 301a 	ldrsh.w	r3, [r5, #26]
 8001c7e:	ee07 3a10 	vmov	s14, r3
 8001c82:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001c86:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001c8a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001c8e:	d502      	bpl.n	8001c96 <_ZN13CLinePosition7processEP10sRGBResult+0x10a>
 8001c90:	f04f 433f 	mov.w	r3, #3204448256	; 0xbf000000
 8001c94:	e00c      	b.n	8001cb0 <_ZN13CLinePosition7processEP10sRGBResult+0x124>
 8001c96:	f9b5 301c 	ldrsh.w	r3, [r5, #28]
 8001c9a:	ee07 3a10 	vmov	s14, r3
 8001c9e:	eeb8 7ac7 	vcvt.f32.s32	s14, s14
 8001ca2:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001ca6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001caa:	d502      	bpl.n	8001cb2 <_ZN13CLinePosition7processEP10sRGBResult+0x126>
 8001cac:	f04f 537c 	mov.w	r3, #1056964608	; 0x3f000000
 8001cb0:	6063      	str	r3, [r4, #4]
 8001cb2:	ecbd 8b02 	vpop	{d8}
 8001cb6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8001cba:	bf00      	nop
 8001cbc:	c2a00000 	.word	0xc2a00000
 8001cc0:	38d1b717 	.word	0x38d1b717
 8001cc4:	200005a8 	.word	0x200005a8
 8001cc8:	bf800000 	.word	0xbf800000

08001ccc <_ZN13CLinePosition7on_lineEv>:
 8001ccc:	7800      	ldrb	r0, [r0, #0]
 8001cce:	4770      	bx	lr

08001cd0 <_ZN13CLinePosition17get_line_positionEv>:
 8001cd0:	ed90 0a01 	vldr	s0, [r0, #4]
 8001cd4:	4770      	bx	lr

08001cd6 <_ZN21CLearningLineFollower3runEv>:
 8001cd6:	4770      	bx	lr

08001cd8 <_ZN5CDemo4initEv>:
 8001cd8:	4770      	bx	lr
	...

08001cdc <_ZN5CDemo10blink_taskEv>:
 8001cdc:	b508      	push	{r3, lr}
 8001cde:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001ce2:	480d      	ldr	r0, [pc, #52]	; (8001d18 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001ce4:	f7ff fc3c 	bl	8001560 <_ZN5CGPIO7gpio_onEm>
 8001ce8:	480c      	ldr	r0, [pc, #48]	; (8001d1c <_ZN5CDemo10blink_taskEv+0x40>)
 8001cea:	f7fe fed3 	bl	8000a94 <_ZN6CTimer8get_timeEv>
 8001cee:	490c      	ldr	r1, [pc, #48]	; (8001d20 <_ZN5CDemo10blink_taskEv+0x44>)
 8001cf0:	4602      	mov	r2, r0
 8001cf2:	4809      	ldr	r0, [pc, #36]	; (8001d18 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001cf4:	f7ff fda9 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 8001cf8:	4808      	ldr	r0, [pc, #32]	; (8001d1c <_ZN5CDemo10blink_taskEv+0x40>)
 8001cfa:	210a      	movs	r1, #10
 8001cfc:	f7fe fed8 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001d00:	4805      	ldr	r0, [pc, #20]	; (8001d18 <_ZN5CDemo10blink_taskEv+0x3c>)
 8001d02:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001d06:	f7ff fc39 	bl	800157c <_ZN5CGPIO8gpio_offEm>
 8001d0a:	4804      	ldr	r0, [pc, #16]	; (8001d1c <_ZN5CDemo10blink_taskEv+0x40>)
 8001d0c:	f44f 7148 	mov.w	r1, #800	; 0x320
 8001d10:	f7fe fece 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001d14:	e7e3      	b.n	8001cde <_ZN5CDemo10blink_taskEv+0x2>
 8001d16:	bf00      	nop
 8001d18:	20000030 	.word	0x20000030
 8001d1c:	200007f8 	.word	0x200007f8
 8001d20:	08003030 	.word	0x08003030

08001d24 <_ZN5CDemo10moves_taskEv>:
 8001d24:	b538      	push	{r3, r4, r5, lr}
 8001d26:	4c2f      	ldr	r4, [pc, #188]	; (8001de4 <_ZN5CDemo10moves_taskEv+0xc0>)
 8001d28:	4d2f      	ldr	r5, [pc, #188]	; (8001de8 <_ZN5CDemo10moves_taskEv+0xc4>)
 8001d2a:	4620      	mov	r0, r4
 8001d2c:	2200      	movs	r2, #0
 8001d2e:	212c      	movs	r1, #44	; 0x2c
 8001d30:	f7ff f938 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001d34:	4628      	mov	r0, r5
 8001d36:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001d3a:	f7fe feb9 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001d3e:	4620      	mov	r0, r4
 8001d40:	2200      	movs	r2, #0
 8001d42:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8001d46:	f7ff f92d 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001d4a:	4628      	mov	r0, r5
 8001d4c:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001d50:	f7fe feae 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001d54:	4620      	mov	r0, r4
 8001d56:	222c      	movs	r2, #44	; 0x2c
 8001d58:	2100      	movs	r1, #0
 8001d5a:	f7ff f923 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001d5e:	4628      	mov	r0, r5
 8001d60:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001d64:	f7fe fea4 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001d68:	4620      	mov	r0, r4
 8001d6a:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 8001d6e:	2100      	movs	r1, #0
 8001d70:	f7ff f918 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001d74:	4628      	mov	r0, r5
 8001d76:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001d7a:	f7fe fe99 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001d7e:	4620      	mov	r0, r4
 8001d80:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 8001d84:	212c      	movs	r1, #44	; 0x2c
 8001d86:	f7ff f90d 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001d8a:	4628      	mov	r0, r5
 8001d8c:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001d90:	f7fe fe8e 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001d94:	4620      	mov	r0, r4
 8001d96:	222c      	movs	r2, #44	; 0x2c
 8001d98:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8001d9c:	f7ff f902 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001da0:	4628      	mov	r0, r5
 8001da2:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001da6:	f7fe fe83 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001daa:	212c      	movs	r1, #44	; 0x2c
 8001dac:	460a      	mov	r2, r1
 8001dae:	4620      	mov	r0, r4
 8001db0:	f7ff f8f8 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001db4:	4628      	mov	r0, r5
 8001db6:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001dba:	f7fe fe79 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001dbe:	f06f 012b 	mvn.w	r1, #43	; 0x2b
 8001dc2:	460a      	mov	r2, r1
 8001dc4:	4620      	mov	r0, r4
 8001dc6:	f7ff f8ed 	bl	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001dca:	4628      	mov	r0, r5
 8001dcc:	f240 51dc 	movw	r1, #1500	; 0x5dc
 8001dd0:	f7fe fe6e 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001dd4:	2100      	movs	r1, #0
 8001dd6:	4620      	mov	r0, r4
 8001dd8:	460a      	mov	r2, r1
 8001dda:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8001dde:	f7ff b8e1 	b.w	8000fa4 <_ZN6CMotor10set_motorsEll>
 8001de2:	bf00      	nop
 8001de4:	20000030 	.word	0x20000030
 8001de8:	200007f8 	.word	0x200007f8

08001dec <_ZN3PIDIfE7processEf>:
 8001dec:	edd0 7a00 	vldr	s15, [r0]
 8001df0:	edd0 6a04 	vldr	s13, [r0, #16]
 8001df4:	ed90 7a01 	vldr	s14, [r0, #4]
 8001df8:	edc0 7a01 	vstr	s15, [r0, #4]
 8001dfc:	ee67 7aa6 	vmul.f32	s15, s15, s13
 8001e00:	edd0 6a03 	vldr	s13, [r0, #12]
 8001e04:	ed80 7a02 	vstr	s14, [r0, #8]
 8001e08:	eee6 7a80 	vfma.f32	s15, s13, s0
 8001e0c:	edd0 6a05 	vldr	s13, [r0, #20]
 8001e10:	ed80 0a00 	vstr	s0, [r0]
 8001e14:	eee6 7a87 	vfma.f32	s15, s13, s14
 8001e18:	ed90 7a06 	vldr	s14, [r0, #24]
 8001e1c:	eddf 6a0e 	vldr	s13, [pc, #56]	; 8001e58 <_ZN3PIDIfE7processEf+0x6c>
 8001e20:	eea7 7aa6 	vfma.f32	s14, s15, s13
 8001e24:	edd0 7a07 	vldr	s15, [r0, #28]
 8001e28:	ed80 7a06 	vstr	s14, [r0, #24]
 8001e2c:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001e30:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001e34:	bfc8      	it	gt
 8001e36:	edc0 7a06 	vstrgt	s15, [r0, #24]
 8001e3a:	ed90 7a06 	vldr	s14, [r0, #24]
 8001e3e:	eef1 7a67 	vneg.f32	s15, s15
 8001e42:	eeb4 7ae7 	vcmpe.f32	s14, s15
 8001e46:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001e4a:	bf48      	it	mi
 8001e4c:	edc0 7a06 	vstrmi	s15, [r0, #24]
 8001e50:	ed90 0a06 	vldr	s0, [r0, #24]
 8001e54:	4770      	bx	lr
 8001e56:	bf00      	nop
 8001e58:	3d000000 	.word	0x3d000000

08001e5c <_ZN5CDemo24basic_line_follower_taskEv>:
 8001e5c:	b510      	push	{r4, lr}
 8001e5e:	ed2d 8b02 	vpush	{d8}
 8001e62:	b08e      	sub	sp, #56	; 0x38
 8001e64:	4668      	mov	r0, sp
 8001e66:	f7ff fe8b 	bl	8001b80 <_ZN13CLinePositionC1Ev>
 8001e6a:	4b3d      	ldr	r3, [pc, #244]	; (8001f60 <_ZN5CDemo24basic_line_follower_taskEv+0x104>)
 8001e6c:	9309      	str	r3, [sp, #36]	; 0x24
 8001e6e:	4b3d      	ldr	r3, [pc, #244]	; (8001f64 <_ZN5CDemo24basic_line_follower_taskEv+0x108>)
 8001e70:	ed9f 8a3d 	vldr	s16, [pc, #244]	; 8001f68 <_ZN5CDemo24basic_line_follower_taskEv+0x10c>
 8001e74:	930a      	str	r3, [sp, #40]	; 0x28
 8001e76:	f04f 4382 	mov.w	r3, #1090519040	; 0x41000000
 8001e7a:	930b      	str	r3, [sp, #44]	; 0x2c
 8001e7c:	483b      	ldr	r0, [pc, #236]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001e7e:	4b3c      	ldr	r3, [pc, #240]	; (8001f70 <_ZN5CDemo24basic_line_follower_taskEv+0x114>)
 8001e80:	ed8d 8a06 	vstr	s16, [sp, #24]
 8001e84:	2100      	movs	r1, #0
 8001e86:	220a      	movs	r2, #10
 8001e88:	ed8d 8a07 	vstr	s16, [sp, #28]
 8001e8c:	ed8d 8a08 	vstr	s16, [sp, #32]
 8001e90:	ed8d 8a0c 	vstr	s16, [sp, #48]	; 0x30
 8001e94:	930d      	str	r3, [sp, #52]	; 0x34
 8001e96:	f7fe fe1d 	bl	8000ad4 <_ZN6CTimer22event_timer_set_periodEhm>
 8001e9a:	4834      	ldr	r0, [pc, #208]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001e9c:	2100      	movs	r1, #0
 8001e9e:	f7fe fe2d 	bl	8000afc <_ZN6CTimer17event_timer_checkEh>
 8001ea2:	2800      	cmp	r0, #0
 8001ea4:	d0f9      	beq.n	8001e9a <_ZN5CDemo24basic_line_follower_taskEv+0x3e>
 8001ea6:	2100      	movs	r1, #0
 8001ea8:	4832      	ldr	r0, [pc, #200]	; (8001f74 <_ZN5CDemo24basic_line_follower_taskEv+0x118>)
 8001eaa:	f7fe fe35 	bl	8000b18 <_ZN4CRGB8rgb_readEh>
 8001eae:	4831      	ldr	r0, [pc, #196]	; (8001f74 <_ZN5CDemo24basic_line_follower_taskEv+0x118>)
 8001eb0:	f7fe ffce 	bl	8000e50 <_ZN4CRGB7rgb_getEv>
 8001eb4:	4601      	mov	r1, r0
 8001eb6:	4668      	mov	r0, sp
 8001eb8:	f7ff fe68 	bl	8001b8c <_ZN13CLinePosition7processEP10sRGBResult>
 8001ebc:	4668      	mov	r0, sp
 8001ebe:	f7ff ff05 	bl	8001ccc <_ZN13CLinePosition7on_lineEv>
 8001ec2:	4604      	mov	r4, r0
 8001ec4:	4668      	mov	r0, sp
 8001ec6:	f7ff ff03 	bl	8001cd0 <_ZN13CLinePosition17get_line_positionEv>
 8001eca:	eddf 7a2b 	vldr	s15, [pc, #172]	; 8001f78 <_ZN5CDemo24basic_line_follower_taskEv+0x11c>
 8001ece:	482b      	ldr	r0, [pc, #172]	; (8001f7c <_ZN5CDemo24basic_line_follower_taskEv+0x120>)
 8001ed0:	492b      	ldr	r1, [pc, #172]	; (8001f80 <_ZN5CDemo24basic_line_follower_taskEv+0x124>)
 8001ed2:	ee20 0a27 	vmul.f32	s0, s0, s15
 8001ed6:	4622      	mov	r2, r4
 8001ed8:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001edc:	ee17 3a90 	vmov	r3, s15
 8001ee0:	f7ff fcb3 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 8001ee4:	4668      	mov	r0, sp
 8001ee6:	f7ff fef1 	bl	8001ccc <_ZN13CLinePosition7on_lineEv>
 8001eea:	4604      	mov	r4, r0
 8001eec:	b1c0      	cbz	r0, 8001f20 <_ZN5CDemo24basic_line_follower_taskEv+0xc4>
 8001eee:	4668      	mov	r0, sp
 8001ef0:	f7ff feee 	bl	8001cd0 <_ZN13CLinePosition17get_line_positionEv>
 8001ef4:	a806      	add	r0, sp, #24
 8001ef6:	ee38 0a40 	vsub.f32	s0, s16, s0
 8001efa:	f7ff ff77 	bl	8001dec <_ZN3PIDIfE7processEf>
 8001efe:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 8001f02:	4820      	ldr	r0, [pc, #128]	; (8001f84 <_ZN5CDemo24basic_line_follower_taskEv+0x128>)
 8001f04:	ee17 4a90 	vmov	r4, s15
 8001f08:	2100      	movs	r1, #0
 8001f0a:	f104 020b 	add.w	r2, r4, #11
 8001f0e:	f7ff f833 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8001f12:	481c      	ldr	r0, [pc, #112]	; (8001f84 <_ZN5CDemo24basic_line_follower_taskEv+0x128>)
 8001f14:	2101      	movs	r1, #1
 8001f16:	f1c4 020b 	rsb	r2, r4, #11
 8001f1a:	f7ff f82d 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8001f1e:	e7bc      	b.n	8001e9a <_ZN5CDemo24basic_line_follower_taskEv+0x3e>
 8001f20:	4621      	mov	r1, r4
 8001f22:	4818      	ldr	r0, [pc, #96]	; (8001f84 <_ZN5CDemo24basic_line_follower_taskEv+0x128>)
 8001f24:	f06f 020a 	mvn.w	r2, #10
 8001f28:	f7ff f826 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8001f2c:	f06f 020a 	mvn.w	r2, #10
 8001f30:	4814      	ldr	r0, [pc, #80]	; (8001f84 <_ZN5CDemo24basic_line_follower_taskEv+0x128>)
 8001f32:	2101      	movs	r1, #1
 8001f34:	f7ff f820 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8001f38:	480c      	ldr	r0, [pc, #48]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001f3a:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001f3e:	f7fe fdb7 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001f42:	4621      	mov	r1, r4
 8001f44:	4622      	mov	r2, r4
 8001f46:	480f      	ldr	r0, [pc, #60]	; (8001f84 <_ZN5CDemo24basic_line_follower_taskEv+0x128>)
 8001f48:	f7ff f816 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8001f4c:	480d      	ldr	r0, [pc, #52]	; (8001f84 <_ZN5CDemo24basic_line_follower_taskEv+0x128>)
 8001f4e:	2101      	movs	r1, #1
 8001f50:	4622      	mov	r2, r4
 8001f52:	f7ff f811 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8001f56:	4805      	ldr	r0, [pc, #20]	; (8001f6c <_ZN5CDemo24basic_line_follower_taskEv+0x110>)
 8001f58:	2164      	movs	r1, #100	; 0x64
 8001f5a:	f7fe fda9 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8001f5e:	e79c      	b.n	8001e9a <_ZN5CDemo24basic_line_follower_taskEv+0x3e>
 8001f60:	41900000 	.word	0x41900000
 8001f64:	c1d00000 	.word	0xc1d00000
 8001f68:	00000000 	.word	0x00000000
 8001f6c:	200007f8 	.word	0x200007f8
 8001f70:	42300000 	.word	0x42300000
 8001f74:	2000003c 	.word	0x2000003c
 8001f78:	447a0000 	.word	0x447a0000
 8001f7c:	20000030 	.word	0x20000030
 8001f80:	08003045 	.word	0x08003045
 8001f84:	20000030 	.word	0x20000030

08001f88 <_ZN5CDemo14ir_sensor_taskEv>:
 8001f88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f8a:	ed2d 8b04 	vpush	{d8-d9}
 8001f8e:	b091      	sub	sp, #68	; 0x44
 8001f90:	a802      	add	r0, sp, #8
 8001f92:	f7ff fdf5 	bl	8001b80 <_ZN13CLinePositionC1Ev>
 8001f96:	4b4e      	ldr	r3, [pc, #312]	; (80020d0 <_ZN5CDemo14ir_sensor_taskEv+0x148>)
 8001f98:	930b      	str	r3, [sp, #44]	; 0x2c
 8001f9a:	4b4e      	ldr	r3, [pc, #312]	; (80020d4 <_ZN5CDemo14ir_sensor_taskEv+0x14c>)
 8001f9c:	eddf 7a4e 	vldr	s15, [pc, #312]	; 80020d8 <_ZN5CDemo14ir_sensor_taskEv+0x150>
 8001fa0:	930c      	str	r3, [sp, #48]	; 0x30
 8001fa2:	4b4e      	ldr	r3, [pc, #312]	; (80020dc <_ZN5CDemo14ir_sensor_taskEv+0x154>)
 8001fa4:	930d      	str	r3, [sp, #52]	; 0x34
 8001fa6:	4b4e      	ldr	r3, [pc, #312]	; (80020e0 <_ZN5CDemo14ir_sensor_taskEv+0x158>)
 8001fa8:	edcd 7a08 	vstr	s15, [sp, #32]
 8001fac:	edcd 7a09 	vstr	s15, [sp, #36]	; 0x24
 8001fb0:	edcd 7a0a 	vstr	s15, [sp, #40]	; 0x28
 8001fb4:	edcd 7a0e 	vstr	s15, [sp, #56]	; 0x38
 8001fb8:	930f      	str	r3, [sp, #60]	; 0x3c
 8001fba:	eeb0 8a67 	vmov.f32	s16, s15
 8001fbe:	4c49      	ldr	r4, [pc, #292]	; (80020e4 <_ZN5CDemo14ir_sensor_taskEv+0x15c>)
 8001fc0:	4849      	ldr	r0, [pc, #292]	; (80020e8 <_ZN5CDemo14ir_sensor_taskEv+0x160>)
 8001fc2:	f7fe f9b7 	bl	8000334 <_ZN9CMLX9062110ir_refreshEv>
 8001fc6:	f9b4 3562 	ldrsh.w	r3, [r4, #1378]	; 0x562
 8001fca:	eddf 6a48 	vldr	s13, [pc, #288]	; 80020ec <_ZN5CDemo14ir_sensor_taskEv+0x164>
 8001fce:	f9b4 255c 	ldrsh.w	r2, [r4, #1372]	; 0x55c
 8001fd2:	ee07 3a90 	vmov	s15, r3
 8001fd6:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001fda:	eebf 7a00 	vmov.f32	s14, #240	; 0xbf800000 -1.0
 8001fde:	ee77 7aa7 	vadd.f32	s15, s15, s15
 8001fe2:	f9b4 3564 	ldrsh.w	r3, [r4, #1380]	; 0x564
 8001fe6:	eeb0 9a47 	vmov.f32	s18, s14
 8001fea:	eea7 9aa6 	vfma.f32	s18, s15, s13
 8001fee:	4626      	mov	r6, r4
 8001ff0:	ee07 3a90 	vmov	s15, r3
 8001ff4:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 8001ff8:	f9b4 355e 	ldrsh.w	r3, [r4, #1374]	; 0x55e
 8001ffc:	ee77 7aa7 	vadd.f32	s15, s15, s15
 8002000:	3378      	adds	r3, #120	; 0x78
 8002002:	eea7 7aa6 	vfma.f32	s14, s15, s13
 8002006:	429a      	cmp	r2, r3
 8002008:	eef0 8a47 	vmov.f32	s17, s14
 800200c:	dd12      	ble.n	8002034 <_ZN5CDemo14ir_sensor_taskEv+0xac>
 800200e:	a808      	add	r0, sp, #32
 8002010:	ee39 0a08 	vadd.f32	s0, s18, s16
 8002014:	f7ff feea 	bl	8001dec <_ZN3PIDIfE7processEf>
 8002018:	eefd 7ac0 	vcvt.s32.f32	s15, s0
 800201c:	4620      	mov	r0, r4
 800201e:	ee17 5a90 	vmov	r5, s15
 8002022:	2100      	movs	r1, #0
 8002024:	ee17 2a90 	vmov	r2, s15
 8002028:	f7fe ffa6 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 800202c:	4620      	mov	r0, r4
 800202e:	2101      	movs	r1, #1
 8002030:	426a      	negs	r2, r5
 8002032:	e007      	b.n	8002044 <_ZN5CDemo14ir_sensor_taskEv+0xbc>
 8002034:	2100      	movs	r1, #0
 8002036:	460a      	mov	r2, r1
 8002038:	4620      	mov	r0, r4
 800203a:	f7fe ff9d 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 800203e:	4620      	mov	r0, r4
 8002040:	2101      	movs	r1, #1
 8002042:	2200      	movs	r2, #0
 8002044:	f7fe ff98 	bl	8000f78 <_ZN6CMotor9set_motorEml>
 8002048:	4829      	ldr	r0, [pc, #164]	; (80020f0 <_ZN5CDemo14ir_sensor_taskEv+0x168>)
 800204a:	492a      	ldr	r1, [pc, #168]	; (80020f4 <_ZN5CDemo14ir_sensor_taskEv+0x16c>)
 800204c:	f7ff fbfd 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 8002050:	f9b4 1560 	ldrsh.w	r1, [r4, #1376]	; 0x560
 8002054:	f9b4 255c 	ldrsh.w	r2, [r4, #1372]	; 0x55c
 8002058:	f9b4 355e 	ldrsh.w	r3, [r4, #1374]	; 0x55e
 800205c:	4824      	ldr	r0, [pc, #144]	; (80020f0 <_ZN5CDemo14ir_sensor_taskEv+0x168>)
 800205e:	9100      	str	r1, [sp, #0]
 8002060:	4925      	ldr	r1, [pc, #148]	; (80020f8 <_ZN5CDemo14ir_sensor_taskEv+0x170>)
 8002062:	f7ff fbf2 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 8002066:	ee19 0a10 	vmov	r0, s18
 800206a:	f000 ff0f 	bl	8002e8c <__aeabi_f2d>
 800206e:	4604      	mov	r4, r0
 8002070:	ee18 0a90 	vmov	r0, s17
 8002074:	460d      	mov	r5, r1
 8002076:	f000 ff09 	bl	8002e8c <__aeabi_f2d>
 800207a:	462b      	mov	r3, r5
 800207c:	e9cd 0100 	strd	r0, r1, [sp]
 8002080:	4622      	mov	r2, r4
 8002082:	481b      	ldr	r0, [pc, #108]	; (80020f0 <_ZN5CDemo14ir_sensor_taskEv+0x168>)
 8002084:	491d      	ldr	r1, [pc, #116]	; (80020fc <_ZN5CDemo14ir_sensor_taskEv+0x174>)
 8002086:	f7ff fbe0 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 800208a:	481d      	ldr	r0, [pc, #116]	; (8002100 <_ZN5CDemo14ir_sensor_taskEv+0x178>)
 800208c:	f7fe f9f0 	bl	8000470 <_ZN12CSSD1306OLED14oled_lcd_clearEv>
 8002090:	2500      	movs	r5, #0
 8002092:	f3c5 075d 	ubfx	r7, r5, #1, #30
 8002096:	2400      	movs	r4, #0
 8002098:	2310      	movs	r3, #16
 800209a:	9300      	str	r3, [sp, #0]
 800209c:	1963      	adds	r3, r4, r5
 800209e:	4433      	add	r3, r6
 80020a0:	01a1      	lsls	r1, r4, #6
 80020a2:	f893 34dc 	ldrb.w	r3, [r3, #1244]	; 0x4dc
 80020a6:	9301      	str	r3, [sp, #4]
 80020a8:	4815      	ldr	r0, [pc, #84]	; (8002100 <_ZN5CDemo14ir_sensor_taskEv+0x178>)
 80020aa:	0909      	lsrs	r1, r1, #4
 80020ac:	463a      	mov	r2, r7
 80020ae:	2308      	movs	r3, #8
 80020b0:	3402      	adds	r4, #2
 80020b2:	f7fe fa05 	bl	80004c0 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh>
 80020b6:	2c20      	cmp	r4, #32
 80020b8:	d1ee      	bne.n	8002098 <_ZN5CDemo14ir_sensor_taskEv+0x110>
 80020ba:	3520      	adds	r5, #32
 80020bc:	2d80      	cmp	r5, #128	; 0x80
 80020be:	d1e8      	bne.n	8002092 <_ZN5CDemo14ir_sensor_taskEv+0x10a>
 80020c0:	480f      	ldr	r0, [pc, #60]	; (8002100 <_ZN5CDemo14ir_sensor_taskEv+0x178>)
 80020c2:	f7fe fa77 	bl	80005b4 <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv>
 80020c6:	480f      	ldr	r0, [pc, #60]	; (8002104 <_ZN5CDemo14ir_sensor_taskEv+0x17c>)
 80020c8:	210a      	movs	r1, #10
 80020ca:	f7fe fcf1 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 80020ce:	e776      	b.n	8001fbe <_ZN5CDemo14ir_sensor_taskEv+0x36>
 80020d0:	44480000 	.word	0x44480000
 80020d4:	c48c0000 	.word	0xc48c0000
 80020d8:	00000000 	.word	0x00000000
 80020dc:	43a00000 	.word	0x43a00000
 80020e0:	42300000 	.word	0x42300000
 80020e4:	20000030 	.word	0x20000030
 80020e8:	20000508 	.word	0x20000508
 80020ec:	3a800000 	.word	0x3a800000
 80020f0:	20000030 	.word	0x20000030
 80020f4:	08003011 	.word	0x08003011
 80020f8:	0800304d 	.word	0x0800304d
 80020fc:	08003067 	.word	0x08003067
 8002100:	20000104 	.word	0x20000104
 8002104:	200007f8 	.word	0x200007f8

08002108 <_ZN5CDemo3runEj>:
 8002108:	3901      	subs	r1, #1
 800210a:	b508      	push	{r3, lr}
 800210c:	2903      	cmp	r1, #3
 800210e:	d810      	bhi.n	8002132 <_ZN5CDemo3runEj+0x2a>
 8002110:	e8df f001 	tbb	[pc, r1]
 8002114:	0d080602 	.word	0x0d080602
 8002118:	f7ff fe04 	bl	8001d24 <_ZN5CDemo10moves_taskEv>
 800211c:	f7ff fdde 	bl	8001cdc <_ZN5CDemo10blink_taskEv>
 8002120:	f7ff fe9c 	bl	8001e5c <_ZN5CDemo24basic_line_follower_taskEv>
 8002124:	4803      	ldr	r0, [pc, #12]	; (8002134 <_ZN5CDemo3runEj+0x2c>)
 8002126:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800212a:	f7ff bdd4 	b.w	8001cd6 <_ZN21CLearningLineFollower3runEv>
 800212e:	f7ff ff2b 	bl	8001f88 <_ZN5CDemo14ir_sensor_taskEv>
 8002132:	bd08      	pop	{r3, pc}
 8002134:	2000084c 	.word	0x2000084c

08002138 <main>:
 8002138:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800213a:	f000 fc17 	bl	800296c <sytem_clock_init>
 800213e:	4833      	ldr	r0, [pc, #204]	; (800220c <main+0xd4>)
 8002140:	f7fe f876 	bl	8000230 <_ZN7CKodama4initEv>
 8002144:	210a      	movs	r1, #10
 8002146:	4831      	ldr	r0, [pc, #196]	; (800220c <main+0xd4>)
 8002148:	f7fe f8af 	bl	80002aa <_ZN7CKodama6set_dtEl>
 800214c:	482f      	ldr	r0, [pc, #188]	; (800220c <main+0xd4>)
 800214e:	f7fe f891 	bl	8000274 <_ZN7CKodama5sleepEv>
 8002152:	482f      	ldr	r0, [pc, #188]	; (8002210 <main+0xd8>)
 8002154:	f7ff fc5a 	bl	8001a0c <_ZN5CILED4initEv>
 8002158:	482d      	ldr	r0, [pc, #180]	; (8002210 <main+0xd8>)
 800215a:	2105      	movs	r1, #5
 800215c:	f240 52dc 	movw	r2, #1500	; 0x5dc
 8002160:	f7ff fcfc 	bl	8001b5c <_ZN5CILED3setEhj>
 8002164:	2200      	movs	r2, #0
 8002166:	482b      	ldr	r0, [pc, #172]	; (8002214 <main+0xdc>)
 8002168:	492b      	ldr	r1, [pc, #172]	; (8002218 <main+0xe0>)
 800216a:	f7fe fa77 	bl	800065c <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj>
 800216e:	482b      	ldr	r0, [pc, #172]	; (800221c <main+0xe4>)
 8002170:	f640 11c4 	movw	r1, #2500	; 0x9c4
 8002174:	f7fe fc9c 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 8002178:	4826      	ldr	r0, [pc, #152]	; (8002214 <main+0xdc>)
 800217a:	4929      	ldr	r1, [pc, #164]	; (8002220 <main+0xe8>)
 800217c:	2200      	movs	r2, #0
 800217e:	f7fe fa6d 	bl	800065c <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj>
 8002182:	2400      	movs	r4, #0
 8002184:	4821      	ldr	r0, [pc, #132]	; (800220c <main+0xd4>)
 8002186:	f44f 7100 	mov.w	r1, #512	; 0x200
 800218a:	f7ff fa05 	bl	8001598 <_ZN5CGPIO7gpio_inEm>
 800218e:	b190      	cbz	r0, 80021b6 <main+0x7e>
 8002190:	22c8      	movs	r2, #200	; 0xc8
 8002192:	481f      	ldr	r0, [pc, #124]	; (8002210 <main+0xd8>)
 8002194:	2102      	movs	r1, #2
 8002196:	f7ff fce1 	bl	8001b5c <_ZN5CILED3setEhj>
 800219a:	21c8      	movs	r1, #200	; 0xc8
 800219c:	481f      	ldr	r0, [pc, #124]	; (800221c <main+0xe4>)
 800219e:	f7fe fc87 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 80021a2:	481a      	ldr	r0, [pc, #104]	; (800220c <main+0xd4>)
 80021a4:	f7fe f870 	bl	8000288 <_ZN7CKodama6wakeupEv>
 80021a8:	481e      	ldr	r0, [pc, #120]	; (8002224 <main+0xec>)
 80021aa:	f7ff fd95 	bl	8001cd8 <_ZN5CDemo4initEv>
 80021ae:	481d      	ldr	r0, [pc, #116]	; (8002224 <main+0xec>)
 80021b0:	2104      	movs	r1, #4
 80021b2:	f7ff ffa9 	bl	8002108 <_ZN5CDemo3runEj>
 80021b6:	4622      	mov	r2, r4
 80021b8:	4816      	ldr	r0, [pc, #88]	; (8002214 <main+0xdc>)
 80021ba:	4919      	ldr	r1, [pc, #100]	; (8002220 <main+0xe8>)
 80021bc:	f7fe fa4e 	bl	800065c <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj>
 80021c0:	2132      	movs	r1, #50	; 0x32
 80021c2:	4816      	ldr	r0, [pc, #88]	; (800221c <main+0xe4>)
 80021c4:	f7fe fc74 	bl	8000ab0 <_ZN6CTimer8delay_msEm>
 80021c8:	4814      	ldr	r0, [pc, #80]	; (800221c <main+0xe4>)
 80021ca:	f7fe fc63 	bl	8000a94 <_ZN6CTimer8get_timeEv>
 80021ce:	4916      	ldr	r1, [pc, #88]	; (8002228 <main+0xf0>)
 80021d0:	4602      	mov	r2, r0
 80021d2:	4816      	ldr	r0, [pc, #88]	; (800222c <main+0xf4>)
 80021d4:	f7ff fb39 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 80021d8:	4815      	ldr	r0, [pc, #84]	; (8002230 <main+0xf8>)
 80021da:	f7fe fa60 	bl	800069e <_ZN4CIMU8imu_readEv>
 80021de:	4814      	ldr	r0, [pc, #80]	; (8002230 <main+0xf8>)
 80021e0:	f7fe fb7e 	bl	80008e0 <_ZN4CIMU7imu_getEv>
 80021e4:	6806      	ldr	r6, [r0, #0]
 80021e6:	4812      	ldr	r0, [pc, #72]	; (8002230 <main+0xf8>)
 80021e8:	f7fe fb7a 	bl	80008e0 <_ZN4CIMU7imu_getEv>
 80021ec:	1c65      	adds	r5, r4, #1
 80021ee:	6844      	ldr	r4, [r0, #4]
 80021f0:	480f      	ldr	r0, [pc, #60]	; (8002230 <main+0xf8>)
 80021f2:	f7fe fb75 	bl	80008e0 <_ZN4CIMU7imu_getEv>
 80021f6:	6883      	ldr	r3, [r0, #8]
 80021f8:	9300      	str	r3, [sp, #0]
 80021fa:	4804      	ldr	r0, [pc, #16]	; (800220c <main+0xd4>)
 80021fc:	490d      	ldr	r1, [pc, #52]	; (8002234 <main+0xfc>)
 80021fe:	4623      	mov	r3, r4
 8002200:	4632      	mov	r2, r6
 8002202:	f7ff fb22 	bl	800184a <_ZN9CTerminal6printfEPKcz>
 8002206:	462c      	mov	r4, r5
 8002208:	e7bc      	b.n	8002184 <main+0x4c>
 800220a:	bf00      	nop
 800220c:	20000030 	.word	0x20000030
 8002210:	20000841 	.word	0x20000841
 8002214:	20000104 	.word	0x20000104
 8002218:	08003496 	.word	0x08003496
 800221c:	200007f8 	.word	0x200007f8
 8002220:	0800307c 	.word	0x0800307c
 8002224:	20000c30 	.word	0x20000c30
 8002228:	0800347c 	.word	0x0800347c
 800222c:	20000030 	.word	0x20000030
 8002230:	200000c0 	.word	0x200000c0
 8002234:	0800348c 	.word	0x0800348c

08002238 <RCC_GetClocksFreq>:
 8002238:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800223c:	4f9b      	ldr	r7, [pc, #620]	; (80024ac <RCC_GetClocksFreq+0x274>)
 800223e:	687b      	ldr	r3, [r7, #4]
 8002240:	f003 030c 	and.w	r3, r3, #12
 8002244:	2b04      	cmp	r3, #4
 8002246:	d005      	beq.n	8002254 <RCC_GetClocksFreq+0x1c>
 8002248:	2b08      	cmp	r3, #8
 800224a:	d006      	beq.n	800225a <RCC_GetClocksFreq+0x22>
 800224c:	4a98      	ldr	r2, [pc, #608]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 800224e:	6002      	str	r2, [r0, #0]
 8002250:	b9b3      	cbnz	r3, 8002280 <RCC_GetClocksFreq+0x48>
 8002252:	e016      	b.n	8002282 <RCC_GetClocksFreq+0x4a>
 8002254:	4b96      	ldr	r3, [pc, #600]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 8002256:	6003      	str	r3, [r0, #0]
 8002258:	e012      	b.n	8002280 <RCC_GetClocksFreq+0x48>
 800225a:	687b      	ldr	r3, [r7, #4]
 800225c:	6879      	ldr	r1, [r7, #4]
 800225e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8002262:	1c9a      	adds	r2, r3, #2
 8002264:	03cb      	lsls	r3, r1, #15
 8002266:	bf49      	itett	mi
 8002268:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800226a:	4b92      	ldrpl	r3, [pc, #584]	; (80024b4 <RCC_GetClocksFreq+0x27c>)
 800226c:	4990      	ldrmi	r1, [pc, #576]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 800226e:	f003 030f 	andmi.w	r3, r3, #15
 8002272:	bf44      	itt	mi
 8002274:	3301      	addmi	r3, #1
 8002276:	fbb1 f3f3 	udivmi	r3, r1, r3
 800227a:	4353      	muls	r3, r2
 800227c:	6003      	str	r3, [r0, #0]
 800227e:	e000      	b.n	8002282 <RCC_GetClocksFreq+0x4a>
 8002280:	2300      	movs	r3, #0
 8002282:	687a      	ldr	r2, [r7, #4]
 8002284:	4e8c      	ldr	r6, [pc, #560]	; (80024b8 <RCC_GetClocksFreq+0x280>)
 8002286:	f8df c234 	ldr.w	ip, [pc, #564]	; 80024bc <RCC_GetClocksFreq+0x284>
 800228a:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800228e:	5cb4      	ldrb	r4, [r6, r2]
 8002290:	6802      	ldr	r2, [r0, #0]
 8002292:	b2e4      	uxtb	r4, r4
 8002294:	fa22 f104 	lsr.w	r1, r2, r4
 8002298:	6041      	str	r1, [r0, #4]
 800229a:	687d      	ldr	r5, [r7, #4]
 800229c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80022a0:	5d75      	ldrb	r5, [r6, r5]
 80022a2:	fa21 fe05 	lsr.w	lr, r1, r5
 80022a6:	f8c0 e008 	str.w	lr, [r0, #8]
 80022aa:	687d      	ldr	r5, [r7, #4]
 80022ac:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80022b0:	5d75      	ldrb	r5, [r6, r5]
 80022b2:	b2ed      	uxtb	r5, r5
 80022b4:	40e9      	lsrs	r1, r5
 80022b6:	60c1      	str	r1, [r0, #12]
 80022b8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80022ba:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80022be:	f008 060f 	and.w	r6, r8, #15
 80022c2:	f018 0f10 	tst.w	r8, #16
 80022c6:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80022ca:	46e0      	mov	r8, ip
 80022cc:	b2b6      	uxth	r6, r6
 80022ce:	d004      	beq.n	80022da <RCC_GetClocksFreq+0xa2>
 80022d0:	b11e      	cbz	r6, 80022da <RCC_GetClocksFreq+0xa2>
 80022d2:	fbb3 f6f6 	udiv	r6, r3, r6
 80022d6:	6106      	str	r6, [r0, #16]
 80022d8:	e000      	b.n	80022dc <RCC_GetClocksFreq+0xa4>
 80022da:	6102      	str	r2, [r0, #16]
 80022dc:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80022de:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 80022e2:	f00c 060f 	and.w	r6, ip, #15
 80022e6:	f01c 0f10 	tst.w	ip, #16
 80022ea:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 80022ee:	b2b6      	uxth	r6, r6
 80022f0:	d004      	beq.n	80022fc <RCC_GetClocksFreq+0xc4>
 80022f2:	b11e      	cbz	r6, 80022fc <RCC_GetClocksFreq+0xc4>
 80022f4:	fbb3 f6f6 	udiv	r6, r3, r6
 80022f8:	6146      	str	r6, [r0, #20]
 80022fa:	e000      	b.n	80022fe <RCC_GetClocksFreq+0xc6>
 80022fc:	6142      	str	r2, [r0, #20]
 80022fe:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002300:	06f6      	lsls	r6, r6, #27
 8002302:	bf5a      	itte	pl
 8002304:	4e6a      	ldrpl	r6, [pc, #424]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 8002306:	6186      	strpl	r6, [r0, #24]
 8002308:	6182      	strmi	r2, [r0, #24]
 800230a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800230c:	06b6      	lsls	r6, r6, #26
 800230e:	bf5a      	itte	pl
 8002310:	4e67      	ldrpl	r6, [pc, #412]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 8002312:	61c6      	strpl	r6, [r0, #28]
 8002314:	61c2      	strmi	r2, [r0, #28]
 8002316:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002318:	0676      	lsls	r6, r6, #25
 800231a:	bf5a      	itte	pl
 800231c:	4e64      	ldrpl	r6, [pc, #400]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 800231e:	6206      	strpl	r6, [r0, #32]
 8002320:	6202      	strmi	r2, [r0, #32]
 8002322:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002324:	05f6      	lsls	r6, r6, #23
 8002326:	d506      	bpl.n	8002336 <RCC_GetClocksFreq+0xfe>
 8002328:	429a      	cmp	r2, r3
 800232a:	d104      	bne.n	8002336 <RCC_GetClocksFreq+0xfe>
 800232c:	42a5      	cmp	r5, r4
 800232e:	d102      	bne.n	8002336 <RCC_GetClocksFreq+0xfe>
 8002330:	0056      	lsls	r6, r2, #1
 8002332:	6246      	str	r6, [r0, #36]	; 0x24
 8002334:	e000      	b.n	8002338 <RCC_GetClocksFreq+0x100>
 8002336:	6241      	str	r1, [r0, #36]	; 0x24
 8002338:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800233a:	04f6      	lsls	r6, r6, #19
 800233c:	d506      	bpl.n	800234c <RCC_GetClocksFreq+0x114>
 800233e:	429a      	cmp	r2, r3
 8002340:	d104      	bne.n	800234c <RCC_GetClocksFreq+0x114>
 8002342:	42a5      	cmp	r5, r4
 8002344:	d102      	bne.n	800234c <RCC_GetClocksFreq+0x114>
 8002346:	0056      	lsls	r6, r2, #1
 8002348:	6286      	str	r6, [r0, #40]	; 0x28
 800234a:	e000      	b.n	800234e <RCC_GetClocksFreq+0x116>
 800234c:	6281      	str	r1, [r0, #40]	; 0x28
 800234e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002350:	05b6      	lsls	r6, r6, #22
 8002352:	d506      	bpl.n	8002362 <RCC_GetClocksFreq+0x12a>
 8002354:	429a      	cmp	r2, r3
 8002356:	d104      	bne.n	8002362 <RCC_GetClocksFreq+0x12a>
 8002358:	42a5      	cmp	r5, r4
 800235a:	d102      	bne.n	8002362 <RCC_GetClocksFreq+0x12a>
 800235c:	0056      	lsls	r6, r2, #1
 800235e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8002360:	e000      	b.n	8002364 <RCC_GetClocksFreq+0x12c>
 8002362:	62c1      	str	r1, [r0, #44]	; 0x2c
 8002364:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002366:	0576      	lsls	r6, r6, #21
 8002368:	d506      	bpl.n	8002378 <RCC_GetClocksFreq+0x140>
 800236a:	429a      	cmp	r2, r3
 800236c:	d104      	bne.n	8002378 <RCC_GetClocksFreq+0x140>
 800236e:	42a5      	cmp	r5, r4
 8002370:	d102      	bne.n	8002378 <RCC_GetClocksFreq+0x140>
 8002372:	0056      	lsls	r6, r2, #1
 8002374:	64c6      	str	r6, [r0, #76]	; 0x4c
 8002376:	e000      	b.n	800237a <RCC_GetClocksFreq+0x142>
 8002378:	64c1      	str	r1, [r0, #76]	; 0x4c
 800237a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800237c:	0536      	lsls	r6, r6, #20
 800237e:	d506      	bpl.n	800238e <RCC_GetClocksFreq+0x156>
 8002380:	429a      	cmp	r2, r3
 8002382:	d104      	bne.n	800238e <RCC_GetClocksFreq+0x156>
 8002384:	42a5      	cmp	r5, r4
 8002386:	d102      	bne.n	800238e <RCC_GetClocksFreq+0x156>
 8002388:	0056      	lsls	r6, r2, #1
 800238a:	6506      	str	r6, [r0, #80]	; 0x50
 800238c:	e000      	b.n	8002390 <RCC_GetClocksFreq+0x158>
 800238e:	6501      	str	r1, [r0, #80]	; 0x50
 8002390:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8002392:	04b6      	lsls	r6, r6, #18
 8002394:	d506      	bpl.n	80023a4 <RCC_GetClocksFreq+0x16c>
 8002396:	429a      	cmp	r2, r3
 8002398:	d104      	bne.n	80023a4 <RCC_GetClocksFreq+0x16c>
 800239a:	42a5      	cmp	r5, r4
 800239c:	d102      	bne.n	80023a4 <RCC_GetClocksFreq+0x16c>
 800239e:	0056      	lsls	r6, r2, #1
 80023a0:	6546      	str	r6, [r0, #84]	; 0x54
 80023a2:	e000      	b.n	80023a6 <RCC_GetClocksFreq+0x16e>
 80023a4:	6501      	str	r1, [r0, #80]	; 0x50
 80023a6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80023a8:	0436      	lsls	r6, r6, #16
 80023aa:	d506      	bpl.n	80023ba <RCC_GetClocksFreq+0x182>
 80023ac:	429a      	cmp	r2, r3
 80023ae:	d104      	bne.n	80023ba <RCC_GetClocksFreq+0x182>
 80023b0:	42a5      	cmp	r5, r4
 80023b2:	d102      	bne.n	80023ba <RCC_GetClocksFreq+0x182>
 80023b4:	0053      	lsls	r3, r2, #1
 80023b6:	6583      	str	r3, [r0, #88]	; 0x58
 80023b8:	e000      	b.n	80023bc <RCC_GetClocksFreq+0x184>
 80023ba:	6581      	str	r1, [r0, #88]	; 0x58
 80023bc:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 80023be:	4b3b      	ldr	r3, [pc, #236]	; (80024ac <RCC_GetClocksFreq+0x274>)
 80023c0:	07a4      	lsls	r4, r4, #30
 80023c2:	d101      	bne.n	80023c8 <RCC_GetClocksFreq+0x190>
 80023c4:	6381      	str	r1, [r0, #56]	; 0x38
 80023c6:	e015      	b.n	80023f4 <RCC_GetClocksFreq+0x1bc>
 80023c8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023ca:	f001 0103 	and.w	r1, r1, #3
 80023ce:	2901      	cmp	r1, #1
 80023d0:	d101      	bne.n	80023d6 <RCC_GetClocksFreq+0x19e>
 80023d2:	6382      	str	r2, [r0, #56]	; 0x38
 80023d4:	e00e      	b.n	80023f4 <RCC_GetClocksFreq+0x1bc>
 80023d6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80023d8:	f001 0103 	and.w	r1, r1, #3
 80023dc:	2902      	cmp	r1, #2
 80023de:	d102      	bne.n	80023e6 <RCC_GetClocksFreq+0x1ae>
 80023e0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80023e4:	e005      	b.n	80023f2 <RCC_GetClocksFreq+0x1ba>
 80023e6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80023e8:	f003 0303 	and.w	r3, r3, #3
 80023ec:	2b03      	cmp	r3, #3
 80023ee:	d101      	bne.n	80023f4 <RCC_GetClocksFreq+0x1bc>
 80023f0:	4b2f      	ldr	r3, [pc, #188]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 80023f2:	6383      	str	r3, [r0, #56]	; 0x38
 80023f4:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80023f6:	4b2d      	ldr	r3, [pc, #180]	; (80024ac <RCC_GetClocksFreq+0x274>)
 80023f8:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80023fc:	d102      	bne.n	8002404 <RCC_GetClocksFreq+0x1cc>
 80023fe:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8002402:	e018      	b.n	8002436 <RCC_GetClocksFreq+0x1fe>
 8002404:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002406:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800240a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800240e:	d101      	bne.n	8002414 <RCC_GetClocksFreq+0x1dc>
 8002410:	63c2      	str	r2, [r0, #60]	; 0x3c
 8002412:	e010      	b.n	8002436 <RCC_GetClocksFreq+0x1fe>
 8002414:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002416:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800241a:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 800241e:	d102      	bne.n	8002426 <RCC_GetClocksFreq+0x1ee>
 8002420:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002424:	e006      	b.n	8002434 <RCC_GetClocksFreq+0x1fc>
 8002426:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002428:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 800242c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8002430:	d101      	bne.n	8002436 <RCC_GetClocksFreq+0x1fe>
 8002432:	4b1f      	ldr	r3, [pc, #124]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 8002434:	63c3      	str	r3, [r0, #60]	; 0x3c
 8002436:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8002438:	4b1c      	ldr	r3, [pc, #112]	; (80024ac <RCC_GetClocksFreq+0x274>)
 800243a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 800243e:	d102      	bne.n	8002446 <RCC_GetClocksFreq+0x20e>
 8002440:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8002444:	e018      	b.n	8002478 <RCC_GetClocksFreq+0x240>
 8002446:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002448:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800244c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8002450:	d101      	bne.n	8002456 <RCC_GetClocksFreq+0x21e>
 8002452:	6402      	str	r2, [r0, #64]	; 0x40
 8002454:	e010      	b.n	8002478 <RCC_GetClocksFreq+0x240>
 8002456:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002458:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800245c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8002460:	d102      	bne.n	8002468 <RCC_GetClocksFreq+0x230>
 8002462:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002466:	e006      	b.n	8002476 <RCC_GetClocksFreq+0x23e>
 8002468:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800246a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800246e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8002472:	d101      	bne.n	8002478 <RCC_GetClocksFreq+0x240>
 8002474:	4b0e      	ldr	r3, [pc, #56]	; (80024b0 <RCC_GetClocksFreq+0x278>)
 8002476:	6403      	str	r3, [r0, #64]	; 0x40
 8002478:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800247a:	4b0c      	ldr	r3, [pc, #48]	; (80024ac <RCC_GetClocksFreq+0x274>)
 800247c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8002480:	d102      	bne.n	8002488 <RCC_GetClocksFreq+0x250>
 8002482:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8002486:	e023      	b.n	80024d0 <RCC_GetClocksFreq+0x298>
 8002488:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800248a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800248e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8002492:	d101      	bne.n	8002498 <RCC_GetClocksFreq+0x260>
 8002494:	6442      	str	r2, [r0, #68]	; 0x44
 8002496:	e01b      	b.n	80024d0 <RCC_GetClocksFreq+0x298>
 8002498:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800249a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800249e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80024a2:	d10d      	bne.n	80024c0 <RCC_GetClocksFreq+0x288>
 80024a4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80024a8:	e011      	b.n	80024ce <RCC_GetClocksFreq+0x296>
 80024aa:	bf00      	nop
 80024ac:	40021000 	.word	0x40021000
 80024b0:	007a1200 	.word	0x007a1200
 80024b4:	003d0900 	.word	0x003d0900
 80024b8:	20000020 	.word	0x20000020
 80024bc:	20000000 	.word	0x20000000
 80024c0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80024c2:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 80024c6:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80024ca:	d101      	bne.n	80024d0 <RCC_GetClocksFreq+0x298>
 80024cc:	4b13      	ldr	r3, [pc, #76]	; (800251c <RCC_GetClocksFreq+0x2e4>)
 80024ce:	6443      	str	r3, [r0, #68]	; 0x44
 80024d0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80024d2:	4b13      	ldr	r3, [pc, #76]	; (8002520 <RCC_GetClocksFreq+0x2e8>)
 80024d4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80024d8:	d103      	bne.n	80024e2 <RCC_GetClocksFreq+0x2aa>
 80024da:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80024de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80024e2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80024e4:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80024e8:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80024ec:	d102      	bne.n	80024f4 <RCC_GetClocksFreq+0x2bc>
 80024ee:	6482      	str	r2, [r0, #72]	; 0x48
 80024f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80024f4:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80024f6:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80024fa:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80024fe:	d102      	bne.n	8002506 <RCC_GetClocksFreq+0x2ce>
 8002500:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8002504:	e006      	b.n	8002514 <RCC_GetClocksFreq+0x2dc>
 8002506:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8002508:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 800250c:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8002510:	d101      	bne.n	8002516 <RCC_GetClocksFreq+0x2de>
 8002512:	4b02      	ldr	r3, [pc, #8]	; (800251c <RCC_GetClocksFreq+0x2e4>)
 8002514:	6483      	str	r3, [r0, #72]	; 0x48
 8002516:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800251a:	bf00      	nop
 800251c:	007a1200 	.word	0x007a1200
 8002520:	40021000 	.word	0x40021000

08002524 <RCC_AHBPeriphClockCmd>:
 8002524:	bf00      	nop
 8002526:	bf00      	nop
 8002528:	4b04      	ldr	r3, [pc, #16]	; (800253c <RCC_AHBPeriphClockCmd+0x18>)
 800252a:	695a      	ldr	r2, [r3, #20]
 800252c:	b109      	cbz	r1, 8002532 <RCC_AHBPeriphClockCmd+0xe>
 800252e:	4310      	orrs	r0, r2
 8002530:	e001      	b.n	8002536 <RCC_AHBPeriphClockCmd+0x12>
 8002532:	ea22 0000 	bic.w	r0, r2, r0
 8002536:	6158      	str	r0, [r3, #20]
 8002538:	4770      	bx	lr
 800253a:	bf00      	nop
 800253c:	40021000 	.word	0x40021000

08002540 <RCC_APB2PeriphClockCmd>:
 8002540:	bf00      	nop
 8002542:	bf00      	nop
 8002544:	4b04      	ldr	r3, [pc, #16]	; (8002558 <RCC_APB2PeriphClockCmd+0x18>)
 8002546:	699a      	ldr	r2, [r3, #24]
 8002548:	b109      	cbz	r1, 800254e <RCC_APB2PeriphClockCmd+0xe>
 800254a:	4310      	orrs	r0, r2
 800254c:	e001      	b.n	8002552 <RCC_APB2PeriphClockCmd+0x12>
 800254e:	ea22 0000 	bic.w	r0, r2, r0
 8002552:	6198      	str	r0, [r3, #24]
 8002554:	4770      	bx	lr
 8002556:	bf00      	nop
 8002558:	40021000 	.word	0x40021000

0800255c <RCC_APB1PeriphClockCmd>:
 800255c:	bf00      	nop
 800255e:	bf00      	nop
 8002560:	4b04      	ldr	r3, [pc, #16]	; (8002574 <RCC_APB1PeriphClockCmd+0x18>)
 8002562:	69da      	ldr	r2, [r3, #28]
 8002564:	b109      	cbz	r1, 800256a <RCC_APB1PeriphClockCmd+0xe>
 8002566:	4310      	orrs	r0, r2
 8002568:	e001      	b.n	800256e <RCC_APB1PeriphClockCmd+0x12>
 800256a:	ea22 0000 	bic.w	r0, r2, r0
 800256e:	61d8      	str	r0, [r3, #28]
 8002570:	4770      	bx	lr
 8002572:	bf00      	nop
 8002574:	40021000 	.word	0x40021000

08002578 <TIM_TimeBaseInit>:
 8002578:	bf00      	nop
 800257a:	bf00      	nop
 800257c:	bf00      	nop
 800257e:	4a24      	ldr	r2, [pc, #144]	; (8002610 <TIM_TimeBaseInit+0x98>)
 8002580:	8803      	ldrh	r3, [r0, #0]
 8002582:	4290      	cmp	r0, r2
 8002584:	b29b      	uxth	r3, r3
 8002586:	d012      	beq.n	80025ae <TIM_TimeBaseInit+0x36>
 8002588:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800258c:	4290      	cmp	r0, r2
 800258e:	d00e      	beq.n	80025ae <TIM_TimeBaseInit+0x36>
 8002590:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8002594:	d00b      	beq.n	80025ae <TIM_TimeBaseInit+0x36>
 8002596:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 800259a:	4290      	cmp	r0, r2
 800259c:	d007      	beq.n	80025ae <TIM_TimeBaseInit+0x36>
 800259e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80025a2:	4290      	cmp	r0, r2
 80025a4:	d003      	beq.n	80025ae <TIM_TimeBaseInit+0x36>
 80025a6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80025aa:	4290      	cmp	r0, r2
 80025ac:	d103      	bne.n	80025b6 <TIM_TimeBaseInit+0x3e>
 80025ae:	884a      	ldrh	r2, [r1, #2]
 80025b0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80025b4:	4313      	orrs	r3, r2
 80025b6:	4a17      	ldr	r2, [pc, #92]	; (8002614 <TIM_TimeBaseInit+0x9c>)
 80025b8:	4290      	cmp	r0, r2
 80025ba:	d008      	beq.n	80025ce <TIM_TimeBaseInit+0x56>
 80025bc:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80025c0:	4290      	cmp	r0, r2
 80025c2:	bf1f      	itttt	ne
 80025c4:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 80025c8:	890a      	ldrhne	r2, [r1, #8]
 80025ca:	b29b      	uxthne	r3, r3
 80025cc:	4313      	orrne	r3, r2
 80025ce:	8003      	strh	r3, [r0, #0]
 80025d0:	684b      	ldr	r3, [r1, #4]
 80025d2:	62c3      	str	r3, [r0, #44]	; 0x2c
 80025d4:	880b      	ldrh	r3, [r1, #0]
 80025d6:	8503      	strh	r3, [r0, #40]	; 0x28
 80025d8:	4b0d      	ldr	r3, [pc, #52]	; (8002610 <TIM_TimeBaseInit+0x98>)
 80025da:	4298      	cmp	r0, r3
 80025dc:	d013      	beq.n	8002606 <TIM_TimeBaseInit+0x8e>
 80025de:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80025e2:	4298      	cmp	r0, r3
 80025e4:	d00f      	beq.n	8002606 <TIM_TimeBaseInit+0x8e>
 80025e6:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80025ea:	4298      	cmp	r0, r3
 80025ec:	d00b      	beq.n	8002606 <TIM_TimeBaseInit+0x8e>
 80025ee:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80025f2:	4298      	cmp	r0, r3
 80025f4:	d007      	beq.n	8002606 <TIM_TimeBaseInit+0x8e>
 80025f6:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80025fa:	4298      	cmp	r0, r3
 80025fc:	d003      	beq.n	8002606 <TIM_TimeBaseInit+0x8e>
 80025fe:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8002602:	4298      	cmp	r0, r3
 8002604:	d101      	bne.n	800260a <TIM_TimeBaseInit+0x92>
 8002606:	894b      	ldrh	r3, [r1, #10]
 8002608:	8603      	strh	r3, [r0, #48]	; 0x30
 800260a:	2301      	movs	r3, #1
 800260c:	6143      	str	r3, [r0, #20]
 800260e:	4770      	bx	lr
 8002610:	40012c00 	.word	0x40012c00
 8002614:	40001000 	.word	0x40001000

08002618 <TIM_Cmd>:
 8002618:	bf00      	nop
 800261a:	bf00      	nop
 800261c:	8803      	ldrh	r3, [r0, #0]
 800261e:	b119      	cbz	r1, 8002628 <TIM_Cmd+0x10>
 8002620:	b29b      	uxth	r3, r3
 8002622:	f043 0301 	orr.w	r3, r3, #1
 8002626:	e003      	b.n	8002630 <TIM_Cmd+0x18>
 8002628:	f023 0301 	bic.w	r3, r3, #1
 800262c:	041b      	lsls	r3, r3, #16
 800262e:	0c1b      	lsrs	r3, r3, #16
 8002630:	8003      	strh	r3, [r0, #0]
 8002632:	4770      	bx	lr

08002634 <TIM_OC2Init>:
 8002634:	b570      	push	{r4, r5, r6, lr}
 8002636:	bf00      	nop
 8002638:	bf00      	nop
 800263a:	bf00      	nop
 800263c:	bf00      	nop
 800263e:	6a03      	ldr	r3, [r0, #32]
 8002640:	680d      	ldr	r5, [r1, #0]
 8002642:	898e      	ldrh	r6, [r1, #12]
 8002644:	f023 0310 	bic.w	r3, r3, #16
 8002648:	6203      	str	r3, [r0, #32]
 800264a:	6a03      	ldr	r3, [r0, #32]
 800264c:	6844      	ldr	r4, [r0, #4]
 800264e:	6982      	ldr	r2, [r0, #24]
 8002650:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8002654:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8002658:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 800265c:	f023 0220 	bic.w	r2, r3, #32
 8002660:	888b      	ldrh	r3, [r1, #4]
 8002662:	4333      	orrs	r3, r6
 8002664:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8002668:	4a10      	ldr	r2, [pc, #64]	; (80026ac <TIM_OC2Init+0x78>)
 800266a:	4290      	cmp	r0, r2
 800266c:	d003      	beq.n	8002676 <TIM_OC2Init+0x42>
 800266e:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8002672:	4290      	cmp	r0, r2
 8002674:	d114      	bne.n	80026a0 <TIM_OC2Init+0x6c>
 8002676:	bf00      	nop
 8002678:	bf00      	nop
 800267a:	bf00      	nop
 800267c:	bf00      	nop
 800267e:	89ca      	ldrh	r2, [r1, #14]
 8002680:	8a0e      	ldrh	r6, [r1, #16]
 8002682:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8002686:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 800268a:	88ca      	ldrh	r2, [r1, #6]
 800268c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8002690:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8002694:	8a4a      	ldrh	r2, [r1, #18]
 8002696:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 800269a:	4332      	orrs	r2, r6
 800269c:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 80026a0:	688a      	ldr	r2, [r1, #8]
 80026a2:	6044      	str	r4, [r0, #4]
 80026a4:	6185      	str	r5, [r0, #24]
 80026a6:	6382      	str	r2, [r0, #56]	; 0x38
 80026a8:	6203      	str	r3, [r0, #32]
 80026aa:	bd70      	pop	{r4, r5, r6, pc}
 80026ac:	40012c00 	.word	0x40012c00

080026b0 <TIM_SetCompare2>:
 80026b0:	bf00      	nop
 80026b2:	6381      	str	r1, [r0, #56]	; 0x38
 80026b4:	4770      	bx	lr

080026b6 <TIM_CtrlPWMOutputs>:
 80026b6:	bf00      	nop
 80026b8:	bf00      	nop
 80026ba:	6c43      	ldr	r3, [r0, #68]	; 0x44
 80026bc:	b111      	cbz	r1, 80026c4 <TIM_CtrlPWMOutputs+0xe>
 80026be:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 80026c2:	e001      	b.n	80026c8 <TIM_CtrlPWMOutputs+0x12>
 80026c4:	f3c3 030e 	ubfx	r3, r3, #0, #15
 80026c8:	6443      	str	r3, [r0, #68]	; 0x44
 80026ca:	4770      	bx	lr

080026cc <TIM_ITConfig>:
 80026cc:	bf00      	nop
 80026ce:	bf00      	nop
 80026d0:	bf00      	nop
 80026d2:	68c3      	ldr	r3, [r0, #12]
 80026d4:	b10a      	cbz	r2, 80026da <TIM_ITConfig+0xe>
 80026d6:	4319      	orrs	r1, r3
 80026d8:	e002      	b.n	80026e0 <TIM_ITConfig+0x14>
 80026da:	43c9      	mvns	r1, r1
 80026dc:	b289      	uxth	r1, r1
 80026de:	4019      	ands	r1, r3
 80026e0:	60c1      	str	r1, [r0, #12]
 80026e2:	4770      	bx	lr

080026e4 <TIM_GetITStatus>:
 80026e4:	bf00      	nop
 80026e6:	bf00      	nop
 80026e8:	6903      	ldr	r3, [r0, #16]
 80026ea:	68c2      	ldr	r2, [r0, #12]
 80026ec:	ea11 0003 	ands.w	r0, r1, r3
 80026f0:	d003      	beq.n	80026fa <TIM_GetITStatus+0x16>
 80026f2:	4211      	tst	r1, r2
 80026f4:	bf14      	ite	ne
 80026f6:	2001      	movne	r0, #1
 80026f8:	2000      	moveq	r0, #0
 80026fa:	4770      	bx	lr

080026fc <TIM_ClearITPendingBit>:
 80026fc:	bf00      	nop
 80026fe:	43c9      	mvns	r1, r1
 8002700:	b289      	uxth	r1, r1
 8002702:	6101      	str	r1, [r0, #16]
 8002704:	4770      	bx	lr
	...

08002708 <USART_Init>:
 8002708:	b530      	push	{r4, r5, lr}
 800270a:	4604      	mov	r4, r0
 800270c:	b099      	sub	sp, #100	; 0x64
 800270e:	460d      	mov	r5, r1
 8002710:	bf00      	nop
 8002712:	bf00      	nop
 8002714:	bf00      	nop
 8002716:	bf00      	nop
 8002718:	bf00      	nop
 800271a:	bf00      	nop
 800271c:	bf00      	nop
 800271e:	6803      	ldr	r3, [r0, #0]
 8002720:	f023 0301 	bic.w	r3, r3, #1
 8002724:	6003      	str	r3, [r0, #0]
 8002726:	6843      	ldr	r3, [r0, #4]
 8002728:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 800272c:	688b      	ldr	r3, [r1, #8]
 800272e:	68c9      	ldr	r1, [r1, #12]
 8002730:	4313      	orrs	r3, r2
 8002732:	6043      	str	r3, [r0, #4]
 8002734:	686a      	ldr	r2, [r5, #4]
 8002736:	6803      	ldr	r3, [r0, #0]
 8002738:	4311      	orrs	r1, r2
 800273a:	692a      	ldr	r2, [r5, #16]
 800273c:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8002740:	430a      	orrs	r2, r1
 8002742:	f023 030c 	bic.w	r3, r3, #12
 8002746:	4313      	orrs	r3, r2
 8002748:	6003      	str	r3, [r0, #0]
 800274a:	6883      	ldr	r3, [r0, #8]
 800274c:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8002750:	696b      	ldr	r3, [r5, #20]
 8002752:	4313      	orrs	r3, r2
 8002754:	6083      	str	r3, [r0, #8]
 8002756:	a801      	add	r0, sp, #4
 8002758:	f7ff fd6e 	bl	8002238 <RCC_GetClocksFreq>
 800275c:	4b17      	ldr	r3, [pc, #92]	; (80027bc <USART_Init+0xb4>)
 800275e:	429c      	cmp	r4, r3
 8002760:	d101      	bne.n	8002766 <USART_Init+0x5e>
 8002762:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002764:	e00e      	b.n	8002784 <USART_Init+0x7c>
 8002766:	4b16      	ldr	r3, [pc, #88]	; (80027c0 <USART_Init+0xb8>)
 8002768:	429c      	cmp	r4, r3
 800276a:	d101      	bne.n	8002770 <USART_Init+0x68>
 800276c:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800276e:	e009      	b.n	8002784 <USART_Init+0x7c>
 8002770:	4b14      	ldr	r3, [pc, #80]	; (80027c4 <USART_Init+0xbc>)
 8002772:	429c      	cmp	r4, r3
 8002774:	d101      	bne.n	800277a <USART_Init+0x72>
 8002776:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002778:	e004      	b.n	8002784 <USART_Init+0x7c>
 800277a:	4b13      	ldr	r3, [pc, #76]	; (80027c8 <USART_Init+0xc0>)
 800277c:	429c      	cmp	r4, r3
 800277e:	bf0c      	ite	eq
 8002780:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8002782:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8002784:	6822      	ldr	r2, [r4, #0]
 8002786:	6829      	ldr	r1, [r5, #0]
 8002788:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 800278c:	bf18      	it	ne
 800278e:	005b      	lslne	r3, r3, #1
 8002790:	fbb3 f2f1 	udiv	r2, r3, r1
 8002794:	fb01 3312 	mls	r3, r1, r2, r3
 8002798:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 800279c:	6823      	ldr	r3, [r4, #0]
 800279e:	bf28      	it	cs
 80027a0:	3201      	addcs	r2, #1
 80027a2:	041b      	lsls	r3, r3, #16
 80027a4:	bf41      	itttt	mi
 80027a6:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80027aa:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80027ae:	4013      	andmi	r3, r2
 80027b0:	ea41 0203 	orrmi.w	r2, r1, r3
 80027b4:	b292      	uxth	r2, r2
 80027b6:	81a2      	strh	r2, [r4, #12]
 80027b8:	b019      	add	sp, #100	; 0x64
 80027ba:	bd30      	pop	{r4, r5, pc}
 80027bc:	40013800 	.word	0x40013800
 80027c0:	40004400 	.word	0x40004400
 80027c4:	40004800 	.word	0x40004800
 80027c8:	40004c00 	.word	0x40004c00

080027cc <USART_Cmd>:
 80027cc:	bf00      	nop
 80027ce:	bf00      	nop
 80027d0:	6803      	ldr	r3, [r0, #0]
 80027d2:	b111      	cbz	r1, 80027da <USART_Cmd+0xe>
 80027d4:	f043 0301 	orr.w	r3, r3, #1
 80027d8:	e001      	b.n	80027de <USART_Cmd+0x12>
 80027da:	f023 0301 	bic.w	r3, r3, #1
 80027de:	6003      	str	r3, [r0, #0]
 80027e0:	4770      	bx	lr

080027e2 <USART_ReceiveData>:
 80027e2:	bf00      	nop
 80027e4:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80027e6:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80027ea:	4770      	bx	lr

080027ec <USART_ITConfig>:
 80027ec:	b510      	push	{r4, lr}
 80027ee:	bf00      	nop
 80027f0:	bf00      	nop
 80027f2:	bf00      	nop
 80027f4:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80027f8:	2301      	movs	r3, #1
 80027fa:	b2c9      	uxtb	r1, r1
 80027fc:	2c02      	cmp	r4, #2
 80027fe:	fa03 f301 	lsl.w	r3, r3, r1
 8002802:	d101      	bne.n	8002808 <USART_ITConfig+0x1c>
 8002804:	3004      	adds	r0, #4
 8002806:	e002      	b.n	800280e <USART_ITConfig+0x22>
 8002808:	2c03      	cmp	r4, #3
 800280a:	bf08      	it	eq
 800280c:	3008      	addeq	r0, #8
 800280e:	b112      	cbz	r2, 8002816 <USART_ITConfig+0x2a>
 8002810:	6802      	ldr	r2, [r0, #0]
 8002812:	4313      	orrs	r3, r2
 8002814:	e002      	b.n	800281c <USART_ITConfig+0x30>
 8002816:	6802      	ldr	r2, [r0, #0]
 8002818:	ea22 0303 	bic.w	r3, r2, r3
 800281c:	6003      	str	r3, [r0, #0]
 800281e:	bd10      	pop	{r4, pc}

08002820 <USART_GetITStatus>:
 8002820:	b510      	push	{r4, lr}
 8002822:	bf00      	nop
 8002824:	bf00      	nop
 8002826:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800282a:	b2cc      	uxtb	r4, r1
 800282c:	2301      	movs	r3, #1
 800282e:	2a01      	cmp	r2, #1
 8002830:	fa03 f304 	lsl.w	r3, r3, r4
 8002834:	d101      	bne.n	800283a <USART_GetITStatus+0x1a>
 8002836:	6802      	ldr	r2, [r0, #0]
 8002838:	e003      	b.n	8002842 <USART_GetITStatus+0x22>
 800283a:	2a02      	cmp	r2, #2
 800283c:	bf0c      	ite	eq
 800283e:	6842      	ldreq	r2, [r0, #4]
 8002840:	6882      	ldrne	r2, [r0, #8]
 8002842:	4013      	ands	r3, r2
 8002844:	69c2      	ldr	r2, [r0, #28]
 8002846:	b13b      	cbz	r3, 8002858 <USART_GetITStatus+0x38>
 8002848:	0c09      	lsrs	r1, r1, #16
 800284a:	2301      	movs	r3, #1
 800284c:	408b      	lsls	r3, r1
 800284e:	4213      	tst	r3, r2
 8002850:	bf14      	ite	ne
 8002852:	2001      	movne	r0, #1
 8002854:	2000      	moveq	r0, #0
 8002856:	bd10      	pop	{r4, pc}
 8002858:	4618      	mov	r0, r3
 800285a:	bd10      	pop	{r4, pc}

0800285c <USART_ClearITPendingBit>:
 800285c:	bf00      	nop
 800285e:	bf00      	nop
 8002860:	2301      	movs	r3, #1
 8002862:	0c09      	lsrs	r1, r1, #16
 8002864:	408b      	lsls	r3, r1
 8002866:	6203      	str	r3, [r0, #32]
 8002868:	4770      	bx	lr
	...

0800286c <SystemInit>:
 800286c:	4a39      	ldr	r2, [pc, #228]	; (8002954 <SystemInit+0xe8>)
 800286e:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002872:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002876:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800287a:	4b37      	ldr	r3, [pc, #220]	; (8002958 <SystemInit+0xec>)
 800287c:	681a      	ldr	r2, [r3, #0]
 800287e:	f042 0201 	orr.w	r2, r2, #1
 8002882:	601a      	str	r2, [r3, #0]
 8002884:	6859      	ldr	r1, [r3, #4]
 8002886:	4a35      	ldr	r2, [pc, #212]	; (800295c <SystemInit+0xf0>)
 8002888:	400a      	ands	r2, r1
 800288a:	605a      	str	r2, [r3, #4]
 800288c:	681a      	ldr	r2, [r3, #0]
 800288e:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002892:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8002896:	601a      	str	r2, [r3, #0]
 8002898:	681a      	ldr	r2, [r3, #0]
 800289a:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800289e:	601a      	str	r2, [r3, #0]
 80028a0:	685a      	ldr	r2, [r3, #4]
 80028a2:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80028a6:	605a      	str	r2, [r3, #4]
 80028a8:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80028aa:	f022 020f 	bic.w	r2, r2, #15
 80028ae:	62da      	str	r2, [r3, #44]	; 0x2c
 80028b0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80028b2:	4a2b      	ldr	r2, [pc, #172]	; (8002960 <SystemInit+0xf4>)
 80028b4:	b082      	sub	sp, #8
 80028b6:	400a      	ands	r2, r1
 80028b8:	631a      	str	r2, [r3, #48]	; 0x30
 80028ba:	2200      	movs	r2, #0
 80028bc:	609a      	str	r2, [r3, #8]
 80028be:	9200      	str	r2, [sp, #0]
 80028c0:	9201      	str	r2, [sp, #4]
 80028c2:	681a      	ldr	r2, [r3, #0]
 80028c4:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80028c8:	601a      	str	r2, [r3, #0]
 80028ca:	681a      	ldr	r2, [r3, #0]
 80028cc:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80028d0:	9201      	str	r2, [sp, #4]
 80028d2:	9a00      	ldr	r2, [sp, #0]
 80028d4:	3201      	adds	r2, #1
 80028d6:	9200      	str	r2, [sp, #0]
 80028d8:	9a01      	ldr	r2, [sp, #4]
 80028da:	b91a      	cbnz	r2, 80028e4 <SystemInit+0x78>
 80028dc:	9a00      	ldr	r2, [sp, #0]
 80028de:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80028e2:	d1f2      	bne.n	80028ca <SystemInit+0x5e>
 80028e4:	681a      	ldr	r2, [r3, #0]
 80028e6:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 80028ea:	bf18      	it	ne
 80028ec:	2201      	movne	r2, #1
 80028ee:	9201      	str	r2, [sp, #4]
 80028f0:	9a01      	ldr	r2, [sp, #4]
 80028f2:	2a01      	cmp	r2, #1
 80028f4:	d005      	beq.n	8002902 <SystemInit+0x96>
 80028f6:	4b17      	ldr	r3, [pc, #92]	; (8002954 <SystemInit+0xe8>)
 80028f8:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80028fc:	609a      	str	r2, [r3, #8]
 80028fe:	b002      	add	sp, #8
 8002900:	4770      	bx	lr
 8002902:	4a18      	ldr	r2, [pc, #96]	; (8002964 <SystemInit+0xf8>)
 8002904:	2112      	movs	r1, #18
 8002906:	6011      	str	r1, [r2, #0]
 8002908:	685a      	ldr	r2, [r3, #4]
 800290a:	605a      	str	r2, [r3, #4]
 800290c:	685a      	ldr	r2, [r3, #4]
 800290e:	605a      	str	r2, [r3, #4]
 8002910:	685a      	ldr	r2, [r3, #4]
 8002912:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8002916:	605a      	str	r2, [r3, #4]
 8002918:	685a      	ldr	r2, [r3, #4]
 800291a:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 800291e:	605a      	str	r2, [r3, #4]
 8002920:	685a      	ldr	r2, [r3, #4]
 8002922:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8002926:	605a      	str	r2, [r3, #4]
 8002928:	681a      	ldr	r2, [r3, #0]
 800292a:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 800292e:	601a      	str	r2, [r3, #0]
 8002930:	6819      	ldr	r1, [r3, #0]
 8002932:	4a09      	ldr	r2, [pc, #36]	; (8002958 <SystemInit+0xec>)
 8002934:	0189      	lsls	r1, r1, #6
 8002936:	d5fb      	bpl.n	8002930 <SystemInit+0xc4>
 8002938:	6851      	ldr	r1, [r2, #4]
 800293a:	f021 0103 	bic.w	r1, r1, #3
 800293e:	6051      	str	r1, [r2, #4]
 8002940:	6851      	ldr	r1, [r2, #4]
 8002942:	f041 0102 	orr.w	r1, r1, #2
 8002946:	6051      	str	r1, [r2, #4]
 8002948:	685a      	ldr	r2, [r3, #4]
 800294a:	f002 020c 	and.w	r2, r2, #12
 800294e:	2a08      	cmp	r2, #8
 8002950:	d1fa      	bne.n	8002948 <SystemInit+0xdc>
 8002952:	e7d0      	b.n	80028f6 <SystemInit+0x8a>
 8002954:	e000ed00 	.word	0xe000ed00
 8002958:	40021000 	.word	0x40021000
 800295c:	f87fc00c 	.word	0xf87fc00c
 8002960:	ff00fccc 	.word	0xff00fccc
 8002964:	40022000 	.word	0x40022000

08002968 <core_yield>:
 8002968:	bf00      	nop
 800296a:	4770      	bx	lr

0800296c <sytem_clock_init>:
 800296c:	f7ff bf7e 	b.w	800286c <SystemInit>

08002970 <NVIC_Init>:
 8002970:	b510      	push	{r4, lr}
 8002972:	bf00      	nop
 8002974:	bf00      	nop
 8002976:	bf00      	nop
 8002978:	78c2      	ldrb	r2, [r0, #3]
 800297a:	7803      	ldrb	r3, [r0, #0]
 800297c:	b312      	cbz	r2, 80029c4 <NVIC_Init+0x54>
 800297e:	4a17      	ldr	r2, [pc, #92]	; (80029dc <NVIC_Init+0x6c>)
 8002980:	68d1      	ldr	r1, [r2, #12]
 8002982:	7842      	ldrb	r2, [r0, #1]
 8002984:	43c9      	mvns	r1, r1
 8002986:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800298a:	f1c1 0404 	rsb	r4, r1, #4
 800298e:	b2e4      	uxtb	r4, r4
 8002990:	40a2      	lsls	r2, r4
 8002992:	b2d4      	uxtb	r4, r2
 8002994:	220f      	movs	r2, #15
 8002996:	410a      	asrs	r2, r1
 8002998:	7881      	ldrb	r1, [r0, #2]
 800299a:	400a      	ands	r2, r1
 800299c:	4322      	orrs	r2, r4
 800299e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80029a2:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80029a6:	0112      	lsls	r2, r2, #4
 80029a8:	b2d2      	uxtb	r2, r2
 80029aa:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80029ae:	7803      	ldrb	r3, [r0, #0]
 80029b0:	2201      	movs	r2, #1
 80029b2:	0959      	lsrs	r1, r3, #5
 80029b4:	f003 031f 	and.w	r3, r3, #31
 80029b8:	fa02 f303 	lsl.w	r3, r2, r3
 80029bc:	4a08      	ldr	r2, [pc, #32]	; (80029e0 <NVIC_Init+0x70>)
 80029be:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80029c2:	bd10      	pop	{r4, pc}
 80029c4:	095a      	lsrs	r2, r3, #5
 80029c6:	2101      	movs	r1, #1
 80029c8:	f003 031f 	and.w	r3, r3, #31
 80029cc:	4099      	lsls	r1, r3
 80029ce:	f102 0320 	add.w	r3, r2, #32
 80029d2:	4a03      	ldr	r2, [pc, #12]	; (80029e0 <NVIC_Init+0x70>)
 80029d4:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80029d8:	bd10      	pop	{r4, pc}
 80029da:	bf00      	nop
 80029dc:	e000ed00 	.word	0xe000ed00
 80029e0:	e000e100 	.word	0xe000e100

080029e4 <EXTI_ClearITPendingBit>:
 80029e4:	f020 011f 	bic.w	r1, r0, #31
 80029e8:	2301      	movs	r3, #1
 80029ea:	f000 001f 	and.w	r0, r0, #31
 80029ee:	4a02      	ldr	r2, [pc, #8]	; (80029f8 <EXTI_ClearITPendingBit+0x14>)
 80029f0:	4083      	lsls	r3, r0
 80029f2:	508b      	str	r3, [r1, r2]
 80029f4:	4770      	bx	lr
 80029f6:	bf00      	nop
 80029f8:	40010414 	.word	0x40010414

080029fc <GPIO_Init>:
 80029fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80029fe:	bf00      	nop
 8002a00:	bf00      	nop
 8002a02:	bf00      	nop
 8002a04:	bf00      	nop
 8002a06:	2300      	movs	r3, #0
 8002a08:	680e      	ldr	r6, [r1, #0]
 8002a0a:	461c      	mov	r4, r3
 8002a0c:	2501      	movs	r5, #1
 8002a0e:	40a5      	lsls	r5, r4
 8002a10:	ea05 0e06 	and.w	lr, r5, r6
 8002a14:	45ae      	cmp	lr, r5
 8002a16:	d12d      	bne.n	8002a74 <GPIO_Init+0x78>
 8002a18:	790f      	ldrb	r7, [r1, #4]
 8002a1a:	1e7a      	subs	r2, r7, #1
 8002a1c:	2a01      	cmp	r2, #1
 8002a1e:	d817      	bhi.n	8002a50 <GPIO_Init+0x54>
 8002a20:	bf00      	nop
 8002a22:	2203      	movs	r2, #3
 8002a24:	6885      	ldr	r5, [r0, #8]
 8002a26:	409a      	lsls	r2, r3
 8002a28:	ea25 0202 	bic.w	r2, r5, r2
 8002a2c:	6082      	str	r2, [r0, #8]
 8002a2e:	794d      	ldrb	r5, [r1, #5]
 8002a30:	6882      	ldr	r2, [r0, #8]
 8002a32:	409d      	lsls	r5, r3
 8002a34:	4315      	orrs	r5, r2
 8002a36:	6085      	str	r5, [r0, #8]
 8002a38:	bf00      	nop
 8002a3a:	8882      	ldrh	r2, [r0, #4]
 8002a3c:	b292      	uxth	r2, r2
 8002a3e:	ea22 020e 	bic.w	r2, r2, lr
 8002a42:	8082      	strh	r2, [r0, #4]
 8002a44:	798a      	ldrb	r2, [r1, #6]
 8002a46:	8885      	ldrh	r5, [r0, #4]
 8002a48:	40a2      	lsls	r2, r4
 8002a4a:	432a      	orrs	r2, r5
 8002a4c:	b292      	uxth	r2, r2
 8002a4e:	8082      	strh	r2, [r0, #4]
 8002a50:	2203      	movs	r2, #3
 8002a52:	6805      	ldr	r5, [r0, #0]
 8002a54:	409a      	lsls	r2, r3
 8002a56:	43d2      	mvns	r2, r2
 8002a58:	4015      	ands	r5, r2
 8002a5a:	6005      	str	r5, [r0, #0]
 8002a5c:	6805      	ldr	r5, [r0, #0]
 8002a5e:	409f      	lsls	r7, r3
 8002a60:	432f      	orrs	r7, r5
 8002a62:	6007      	str	r7, [r0, #0]
 8002a64:	68c7      	ldr	r7, [r0, #12]
 8002a66:	4017      	ands	r7, r2
 8002a68:	79ca      	ldrb	r2, [r1, #7]
 8002a6a:	fa02 f503 	lsl.w	r5, r2, r3
 8002a6e:	ea47 0205 	orr.w	r2, r7, r5
 8002a72:	60c2      	str	r2, [r0, #12]
 8002a74:	3401      	adds	r4, #1
 8002a76:	2c10      	cmp	r4, #16
 8002a78:	f103 0302 	add.w	r3, r3, #2
 8002a7c:	d1c6      	bne.n	8002a0c <GPIO_Init+0x10>
 8002a7e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002a80 <GPIO_SetBits>:
 8002a80:	bf00      	nop
 8002a82:	bf00      	nop
 8002a84:	6181      	str	r1, [r0, #24]
 8002a86:	4770      	bx	lr

08002a88 <GPIO_PinAFConfig>:
 8002a88:	b510      	push	{r4, lr}
 8002a8a:	bf00      	nop
 8002a8c:	bf00      	nop
 8002a8e:	bf00      	nop
 8002a90:	f001 0307 	and.w	r3, r1, #7
 8002a94:	08c9      	lsrs	r1, r1, #3
 8002a96:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002a9a:	009b      	lsls	r3, r3, #2
 8002a9c:	6a04      	ldr	r4, [r0, #32]
 8002a9e:	210f      	movs	r1, #15
 8002aa0:	4099      	lsls	r1, r3
 8002aa2:	ea24 0101 	bic.w	r1, r4, r1
 8002aa6:	6201      	str	r1, [r0, #32]
 8002aa8:	6a01      	ldr	r1, [r0, #32]
 8002aaa:	409a      	lsls	r2, r3
 8002aac:	430a      	orrs	r2, r1
 8002aae:	6202      	str	r2, [r0, #32]
 8002ab0:	bd10      	pop	{r4, pc}

08002ab2 <Default_Handler>:
 8002ab2:	4668      	mov	r0, sp
 8002ab4:	f020 0107 	bic.w	r1, r0, #7
 8002ab8:	468d      	mov	sp, r1
 8002aba:	b501      	push	{r0, lr}
 8002abc:	bf00      	nop
 8002abe:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002ac2:	4685      	mov	sp, r0
 8002ac4:	4770      	bx	lr

08002ac6 <HardFault_Handler>:
 8002ac6:	bf00      	nop
 8002ac8:	e7fd      	b.n	8002ac6 <HardFault_Handler>
	...

08002acc <_reset_init>:
 8002acc:	490e      	ldr	r1, [pc, #56]	; (8002b08 <_reset_init+0x3c>)
 8002ace:	4b0f      	ldr	r3, [pc, #60]	; (8002b0c <_reset_init+0x40>)
 8002ad0:	1a5b      	subs	r3, r3, r1
 8002ad2:	109b      	asrs	r3, r3, #2
 8002ad4:	2200      	movs	r2, #0
 8002ad6:	429a      	cmp	r2, r3
 8002ad8:	d006      	beq.n	8002ae8 <_reset_init+0x1c>
 8002ada:	480d      	ldr	r0, [pc, #52]	; (8002b10 <_reset_init+0x44>)
 8002adc:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002ae0:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002ae4:	3201      	adds	r2, #1
 8002ae6:	e7f6      	b.n	8002ad6 <_reset_init+0xa>
 8002ae8:	4a0a      	ldr	r2, [pc, #40]	; (8002b14 <_reset_init+0x48>)
 8002aea:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002aee:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002af2:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8002af6:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8002afa:	6853      	ldr	r3, [r2, #4]
 8002afc:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002b00:	6053      	str	r3, [r2, #4]
 8002b02:	f7ff bb19 	b.w	8002138 <main>
 8002b06:	bf00      	nop
 8002b08:	20000000 	.word	0x20000000
 8002b0c:	20000030 	.word	0x20000030
 8002b10:	0800389c 	.word	0x0800389c
 8002b14:	e000ed00 	.word	0xe000ed00

08002b18 <scheduler>:
 8002b18:	b570      	push	{r4, r5, r6, lr}
 8002b1a:	2200      	movs	r2, #0
 8002b1c:	4611      	mov	r1, r2
 8002b1e:	4b15      	ldr	r3, [pc, #84]	; (8002b74 <scheduler+0x5c>)
 8002b20:	200c      	movs	r0, #12
 8002b22:	fb00 f401 	mul.w	r4, r0, r1
 8002b26:	191e      	adds	r6, r3, r4
 8002b28:	6875      	ldr	r5, [r6, #4]
 8002b2a:	f015 0f02 	tst.w	r5, #2
 8002b2e:	461d      	mov	r5, r3
 8002b30:	d10a      	bne.n	8002b48 <scheduler+0x30>
 8002b32:	6876      	ldr	r6, [r6, #4]
 8002b34:	07f6      	lsls	r6, r6, #31
 8002b36:	d507      	bpl.n	8002b48 <scheduler+0x30>
 8002b38:	4350      	muls	r0, r2
 8002b3a:	5b1c      	ldrh	r4, [r3, r4]
 8002b3c:	5a18      	ldrh	r0, [r3, r0]
 8002b3e:	b2a4      	uxth	r4, r4
 8002b40:	b280      	uxth	r0, r0
 8002b42:	4284      	cmp	r4, r0
 8002b44:	bf38      	it	cc
 8002b46:	460a      	movcc	r2, r1
 8002b48:	200c      	movs	r0, #12
 8002b4a:	4348      	muls	r0, r1
 8002b4c:	5a1c      	ldrh	r4, [r3, r0]
 8002b4e:	b2a4      	uxth	r4, r4
 8002b50:	b11c      	cbz	r4, 8002b5a <scheduler+0x42>
 8002b52:	5a1c      	ldrh	r4, [r3, r0]
 8002b54:	3c01      	subs	r4, #1
 8002b56:	b2a4      	uxth	r4, r4
 8002b58:	521c      	strh	r4, [r3, r0]
 8002b5a:	3101      	adds	r1, #1
 8002b5c:	2906      	cmp	r1, #6
 8002b5e:	d1de      	bne.n	8002b1e <scheduler+0x6>
 8002b60:	230c      	movs	r3, #12
 8002b62:	4353      	muls	r3, r2
 8002b64:	18e9      	adds	r1, r5, r3
 8002b66:	8849      	ldrh	r1, [r1, #2]
 8002b68:	b289      	uxth	r1, r1
 8002b6a:	52e9      	strh	r1, [r5, r3]
 8002b6c:	4b02      	ldr	r3, [pc, #8]	; (8002b78 <scheduler+0x60>)
 8002b6e:	601a      	str	r2, [r3, #0]
 8002b70:	bd70      	pop	{r4, r5, r6, pc}
 8002b72:	bf00      	nop
 8002b74:	20000cf0 	.word	0x20000cf0
 8002b78:	20000d38 	.word	0x20000d38

08002b7c <SysTick_Handler>:
 8002b7c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002b80:	f3ef 8308 	mrs	r3, MSP
 8002b84:	4c0d      	ldr	r4, [pc, #52]	; (8002bbc <SysTick_Handler+0x40>)
 8002b86:	4d0e      	ldr	r5, [pc, #56]	; (8002bc0 <SysTick_Handler+0x44>)
 8002b88:	6822      	ldr	r2, [r4, #0]
 8002b8a:	3201      	adds	r2, #1
 8002b8c:	bf1d      	ittte	ne
 8002b8e:	6822      	ldrne	r2, [r4, #0]
 8002b90:	210c      	movne	r1, #12
 8002b92:	fb01 5202 	mlane	r2, r1, r2, r5
 8002b96:	2300      	moveq	r3, #0
 8002b98:	bf14      	ite	ne
 8002b9a:	6093      	strne	r3, [r2, #8]
 8002b9c:	6023      	streq	r3, [r4, #0]
 8002b9e:	f7ff ffbb 	bl	8002b18 <scheduler>
 8002ba2:	6822      	ldr	r2, [r4, #0]
 8002ba4:	230c      	movs	r3, #12
 8002ba6:	fb03 5302 	mla	r3, r3, r2, r5
 8002baa:	689a      	ldr	r2, [r3, #8]
 8002bac:	f06f 0306 	mvn.w	r3, #6
 8002bb0:	469e      	mov	lr, r3
 8002bb2:	f382 8808 	msr	MSP, r2
 8002bb6:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002bba:	4770      	bx	lr
 8002bbc:	20000d38 	.word	0x20000d38
 8002bc0:	20000cf0 	.word	0x20000cf0

08002bc4 <__aeabi_drsub>:
 8002bc4:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8002bc8:	e002      	b.n	8002bd0 <__adddf3>
 8002bca:	bf00      	nop

08002bcc <__aeabi_dsub>:
 8002bcc:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

08002bd0 <__adddf3>:
 8002bd0:	b530      	push	{r4, r5, lr}
 8002bd2:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8002bd6:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8002bda:	ea94 0f05 	teq	r4, r5
 8002bde:	bf08      	it	eq
 8002be0:	ea90 0f02 	teqeq	r0, r2
 8002be4:	bf1f      	itttt	ne
 8002be6:	ea54 0c00 	orrsne.w	ip, r4, r0
 8002bea:	ea55 0c02 	orrsne.w	ip, r5, r2
 8002bee:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 8002bf2:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8002bf6:	f000 80e2 	beq.w	8002dbe <__adddf3+0x1ee>
 8002bfa:	ea4f 5454 	mov.w	r4, r4, lsr #21
 8002bfe:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 8002c02:	bfb8      	it	lt
 8002c04:	426d      	neglt	r5, r5
 8002c06:	dd0c      	ble.n	8002c22 <__adddf3+0x52>
 8002c08:	442c      	add	r4, r5
 8002c0a:	ea80 0202 	eor.w	r2, r0, r2
 8002c0e:	ea81 0303 	eor.w	r3, r1, r3
 8002c12:	ea82 0000 	eor.w	r0, r2, r0
 8002c16:	ea83 0101 	eor.w	r1, r3, r1
 8002c1a:	ea80 0202 	eor.w	r2, r0, r2
 8002c1e:	ea81 0303 	eor.w	r3, r1, r3
 8002c22:	2d36      	cmp	r5, #54	; 0x36
 8002c24:	bf88      	it	hi
 8002c26:	bd30      	pophi	{r4, r5, pc}
 8002c28:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8002c2c:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8002c30:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8002c34:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8002c38:	d002      	beq.n	8002c40 <__adddf3+0x70>
 8002c3a:	4240      	negs	r0, r0
 8002c3c:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8002c40:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8002c44:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8002c48:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8002c4c:	d002      	beq.n	8002c54 <__adddf3+0x84>
 8002c4e:	4252      	negs	r2, r2
 8002c50:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8002c54:	ea94 0f05 	teq	r4, r5
 8002c58:	f000 80a7 	beq.w	8002daa <__adddf3+0x1da>
 8002c5c:	f1a4 0401 	sub.w	r4, r4, #1
 8002c60:	f1d5 0e20 	rsbs	lr, r5, #32
 8002c64:	db0d      	blt.n	8002c82 <__adddf3+0xb2>
 8002c66:	fa02 fc0e 	lsl.w	ip, r2, lr
 8002c6a:	fa22 f205 	lsr.w	r2, r2, r5
 8002c6e:	1880      	adds	r0, r0, r2
 8002c70:	f141 0100 	adc.w	r1, r1, #0
 8002c74:	fa03 f20e 	lsl.w	r2, r3, lr
 8002c78:	1880      	adds	r0, r0, r2
 8002c7a:	fa43 f305 	asr.w	r3, r3, r5
 8002c7e:	4159      	adcs	r1, r3
 8002c80:	e00e      	b.n	8002ca0 <__adddf3+0xd0>
 8002c82:	f1a5 0520 	sub.w	r5, r5, #32
 8002c86:	f10e 0e20 	add.w	lr, lr, #32
 8002c8a:	2a01      	cmp	r2, #1
 8002c8c:	fa03 fc0e 	lsl.w	ip, r3, lr
 8002c90:	bf28      	it	cs
 8002c92:	f04c 0c02 	orrcs.w	ip, ip, #2
 8002c96:	fa43 f305 	asr.w	r3, r3, r5
 8002c9a:	18c0      	adds	r0, r0, r3
 8002c9c:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 8002ca0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002ca4:	d507      	bpl.n	8002cb6 <__adddf3+0xe6>
 8002ca6:	f04f 0e00 	mov.w	lr, #0
 8002caa:	f1dc 0c00 	rsbs	ip, ip, #0
 8002cae:	eb7e 0000 	sbcs.w	r0, lr, r0
 8002cb2:	eb6e 0101 	sbc.w	r1, lr, r1
 8002cb6:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8002cba:	d31b      	bcc.n	8002cf4 <__adddf3+0x124>
 8002cbc:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8002cc0:	d30c      	bcc.n	8002cdc <__adddf3+0x10c>
 8002cc2:	0849      	lsrs	r1, r1, #1
 8002cc4:	ea5f 0030 	movs.w	r0, r0, rrx
 8002cc8:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8002ccc:	f104 0401 	add.w	r4, r4, #1
 8002cd0:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8002cd4:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8002cd8:	f080 809a 	bcs.w	8002e10 <__adddf3+0x240>
 8002cdc:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 8002ce0:	bf08      	it	eq
 8002ce2:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8002ce6:	f150 0000 	adcs.w	r0, r0, #0
 8002cea:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8002cee:	ea41 0105 	orr.w	r1, r1, r5
 8002cf2:	bd30      	pop	{r4, r5, pc}
 8002cf4:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 8002cf8:	4140      	adcs	r0, r0
 8002cfa:	eb41 0101 	adc.w	r1, r1, r1
 8002cfe:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8002d02:	f1a4 0401 	sub.w	r4, r4, #1
 8002d06:	d1e9      	bne.n	8002cdc <__adddf3+0x10c>
 8002d08:	f091 0f00 	teq	r1, #0
 8002d0c:	bf04      	itt	eq
 8002d0e:	4601      	moveq	r1, r0
 8002d10:	2000      	moveq	r0, #0
 8002d12:	fab1 f381 	clz	r3, r1
 8002d16:	bf08      	it	eq
 8002d18:	3320      	addeq	r3, #32
 8002d1a:	f1a3 030b 	sub.w	r3, r3, #11
 8002d1e:	f1b3 0220 	subs.w	r2, r3, #32
 8002d22:	da0c      	bge.n	8002d3e <__adddf3+0x16e>
 8002d24:	320c      	adds	r2, #12
 8002d26:	dd08      	ble.n	8002d3a <__adddf3+0x16a>
 8002d28:	f102 0c14 	add.w	ip, r2, #20
 8002d2c:	f1c2 020c 	rsb	r2, r2, #12
 8002d30:	fa01 f00c 	lsl.w	r0, r1, ip
 8002d34:	fa21 f102 	lsr.w	r1, r1, r2
 8002d38:	e00c      	b.n	8002d54 <__adddf3+0x184>
 8002d3a:	f102 0214 	add.w	r2, r2, #20
 8002d3e:	bfd8      	it	le
 8002d40:	f1c2 0c20 	rsble	ip, r2, #32
 8002d44:	fa01 f102 	lsl.w	r1, r1, r2
 8002d48:	fa20 fc0c 	lsr.w	ip, r0, ip
 8002d4c:	bfdc      	itt	le
 8002d4e:	ea41 010c 	orrle.w	r1, r1, ip
 8002d52:	4090      	lslle	r0, r2
 8002d54:	1ae4      	subs	r4, r4, r3
 8002d56:	bfa2      	ittt	ge
 8002d58:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8002d5c:	4329      	orrge	r1, r5
 8002d5e:	bd30      	popge	{r4, r5, pc}
 8002d60:	ea6f 0404 	mvn.w	r4, r4
 8002d64:	3c1f      	subs	r4, #31
 8002d66:	da1c      	bge.n	8002da2 <__adddf3+0x1d2>
 8002d68:	340c      	adds	r4, #12
 8002d6a:	dc0e      	bgt.n	8002d8a <__adddf3+0x1ba>
 8002d6c:	f104 0414 	add.w	r4, r4, #20
 8002d70:	f1c4 0220 	rsb	r2, r4, #32
 8002d74:	fa20 f004 	lsr.w	r0, r0, r4
 8002d78:	fa01 f302 	lsl.w	r3, r1, r2
 8002d7c:	ea40 0003 	orr.w	r0, r0, r3
 8002d80:	fa21 f304 	lsr.w	r3, r1, r4
 8002d84:	ea45 0103 	orr.w	r1, r5, r3
 8002d88:	bd30      	pop	{r4, r5, pc}
 8002d8a:	f1c4 040c 	rsb	r4, r4, #12
 8002d8e:	f1c4 0220 	rsb	r2, r4, #32
 8002d92:	fa20 f002 	lsr.w	r0, r0, r2
 8002d96:	fa01 f304 	lsl.w	r3, r1, r4
 8002d9a:	ea40 0003 	orr.w	r0, r0, r3
 8002d9e:	4629      	mov	r1, r5
 8002da0:	bd30      	pop	{r4, r5, pc}
 8002da2:	fa21 f004 	lsr.w	r0, r1, r4
 8002da6:	4629      	mov	r1, r5
 8002da8:	bd30      	pop	{r4, r5, pc}
 8002daa:	f094 0f00 	teq	r4, #0
 8002dae:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8002db2:	bf06      	itte	eq
 8002db4:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8002db8:	3401      	addeq	r4, #1
 8002dba:	3d01      	subne	r5, #1
 8002dbc:	e74e      	b.n	8002c5c <__adddf3+0x8c>
 8002dbe:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8002dc2:	bf18      	it	ne
 8002dc4:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8002dc8:	d029      	beq.n	8002e1e <__adddf3+0x24e>
 8002dca:	ea94 0f05 	teq	r4, r5
 8002dce:	bf08      	it	eq
 8002dd0:	ea90 0f02 	teqeq	r0, r2
 8002dd4:	d005      	beq.n	8002de2 <__adddf3+0x212>
 8002dd6:	ea54 0c00 	orrs.w	ip, r4, r0
 8002dda:	bf04      	itt	eq
 8002ddc:	4619      	moveq	r1, r3
 8002dde:	4610      	moveq	r0, r2
 8002de0:	bd30      	pop	{r4, r5, pc}
 8002de2:	ea91 0f03 	teq	r1, r3
 8002de6:	bf1e      	ittt	ne
 8002de8:	2100      	movne	r1, #0
 8002dea:	2000      	movne	r0, #0
 8002dec:	bd30      	popne	{r4, r5, pc}
 8002dee:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8002df2:	d105      	bne.n	8002e00 <__adddf3+0x230>
 8002df4:	0040      	lsls	r0, r0, #1
 8002df6:	4149      	adcs	r1, r1
 8002df8:	bf28      	it	cs
 8002dfa:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8002dfe:	bd30      	pop	{r4, r5, pc}
 8002e00:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8002e04:	bf3c      	itt	cc
 8002e06:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8002e0a:	bd30      	popcc	{r4, r5, pc}
 8002e0c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002e10:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8002e14:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002e18:	f04f 0000 	mov.w	r0, #0
 8002e1c:	bd30      	pop	{r4, r5, pc}
 8002e1e:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8002e22:	bf1a      	itte	ne
 8002e24:	4619      	movne	r1, r3
 8002e26:	4610      	movne	r0, r2
 8002e28:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8002e2c:	bf1c      	itt	ne
 8002e2e:	460b      	movne	r3, r1
 8002e30:	4602      	movne	r2, r0
 8002e32:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8002e36:	bf06      	itte	eq
 8002e38:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8002e3c:	ea91 0f03 	teqeq	r1, r3
 8002e40:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8002e44:	bd30      	pop	{r4, r5, pc}
 8002e46:	bf00      	nop

08002e48 <__aeabi_ui2d>:
 8002e48:	f090 0f00 	teq	r0, #0
 8002e4c:	bf04      	itt	eq
 8002e4e:	2100      	moveq	r1, #0
 8002e50:	4770      	bxeq	lr
 8002e52:	b530      	push	{r4, r5, lr}
 8002e54:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8002e58:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8002e5c:	f04f 0500 	mov.w	r5, #0
 8002e60:	f04f 0100 	mov.w	r1, #0
 8002e64:	e750      	b.n	8002d08 <__adddf3+0x138>
 8002e66:	bf00      	nop

08002e68 <__aeabi_i2d>:
 8002e68:	f090 0f00 	teq	r0, #0
 8002e6c:	bf04      	itt	eq
 8002e6e:	2100      	moveq	r1, #0
 8002e70:	4770      	bxeq	lr
 8002e72:	b530      	push	{r4, r5, lr}
 8002e74:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8002e78:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8002e7c:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8002e80:	bf48      	it	mi
 8002e82:	4240      	negmi	r0, r0
 8002e84:	f04f 0100 	mov.w	r1, #0
 8002e88:	e73e      	b.n	8002d08 <__adddf3+0x138>
 8002e8a:	bf00      	nop

08002e8c <__aeabi_f2d>:
 8002e8c:	0042      	lsls	r2, r0, #1
 8002e8e:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8002e92:	ea4f 0131 	mov.w	r1, r1, rrx
 8002e96:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8002e9a:	bf1f      	itttt	ne
 8002e9c:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8002ea0:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8002ea4:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8002ea8:	4770      	bxne	lr
 8002eaa:	f092 0f00 	teq	r2, #0
 8002eae:	bf14      	ite	ne
 8002eb0:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8002eb4:	4770      	bxeq	lr
 8002eb6:	b530      	push	{r4, r5, lr}
 8002eb8:	f44f 7460 	mov.w	r4, #896	; 0x380
 8002ebc:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8002ec0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8002ec4:	e720      	b.n	8002d08 <__adddf3+0x138>
 8002ec6:	bf00      	nop

08002ec8 <__aeabi_ul2d>:
 8002ec8:	ea50 0201 	orrs.w	r2, r0, r1
 8002ecc:	bf08      	it	eq
 8002ece:	4770      	bxeq	lr
 8002ed0:	b530      	push	{r4, r5, lr}
 8002ed2:	f04f 0500 	mov.w	r5, #0
 8002ed6:	e00a      	b.n	8002eee <__aeabi_l2d+0x16>

08002ed8 <__aeabi_l2d>:
 8002ed8:	ea50 0201 	orrs.w	r2, r0, r1
 8002edc:	bf08      	it	eq
 8002ede:	4770      	bxeq	lr
 8002ee0:	b530      	push	{r4, r5, lr}
 8002ee2:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8002ee6:	d502      	bpl.n	8002eee <__aeabi_l2d+0x16>
 8002ee8:	4240      	negs	r0, r0
 8002eea:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8002eee:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8002ef2:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8002ef6:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8002efa:	f43f aedc 	beq.w	8002cb6 <__adddf3+0xe6>
 8002efe:	f04f 0203 	mov.w	r2, #3
 8002f02:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8002f06:	bf18      	it	ne
 8002f08:	3203      	addne	r2, #3
 8002f0a:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8002f0e:	bf18      	it	ne
 8002f10:	3203      	addne	r2, #3
 8002f12:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8002f16:	f1c2 0320 	rsb	r3, r2, #32
 8002f1a:	fa00 fc03 	lsl.w	ip, r0, r3
 8002f1e:	fa20 f002 	lsr.w	r0, r0, r2
 8002f22:	fa01 fe03 	lsl.w	lr, r1, r3
 8002f26:	ea40 000e 	orr.w	r0, r0, lr
 8002f2a:	fa21 f102 	lsr.w	r1, r1, r2
 8002f2e:	4414      	add	r4, r2
 8002f30:	e6c1      	b.n	8002cb6 <__adddf3+0xe6>
 8002f32:	bf00      	nop

08002f34 <__aeabi_d2f>:
 8002f34:	ea4f 0241 	mov.w	r2, r1, lsl #1
 8002f38:	f1b2 43e0 	subs.w	r3, r2, #1879048192	; 0x70000000
 8002f3c:	bf24      	itt	cs
 8002f3e:	f5b3 1c00 	subscs.w	ip, r3, #2097152	; 0x200000
 8002f42:	f1dc 5cfe 	rsbscs	ip, ip, #532676608	; 0x1fc00000
 8002f46:	d90d      	bls.n	8002f64 <__aeabi_d2f+0x30>
 8002f48:	f001 4c00 	and.w	ip, r1, #2147483648	; 0x80000000
 8002f4c:	ea4f 02c0 	mov.w	r2, r0, lsl #3
 8002f50:	ea4c 7050 	orr.w	r0, ip, r0, lsr #29
 8002f54:	f1b2 4f00 	cmp.w	r2, #2147483648	; 0x80000000
 8002f58:	eb40 0083 	adc.w	r0, r0, r3, lsl #2
 8002f5c:	bf08      	it	eq
 8002f5e:	f020 0001 	biceq.w	r0, r0, #1
 8002f62:	4770      	bx	lr
 8002f64:	f011 4f80 	tst.w	r1, #1073741824	; 0x40000000
 8002f68:	d121      	bne.n	8002fae <__aeabi_d2f+0x7a>
 8002f6a:	f113 7238 	adds.w	r2, r3, #48234496	; 0x2e00000
 8002f6e:	bfbc      	itt	lt
 8002f70:	f001 4000 	andlt.w	r0, r1, #2147483648	; 0x80000000
 8002f74:	4770      	bxlt	lr
 8002f76:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8002f7a:	ea4f 5252 	mov.w	r2, r2, lsr #21
 8002f7e:	f1c2 0218 	rsb	r2, r2, #24
 8002f82:	f1c2 0c20 	rsb	ip, r2, #32
 8002f86:	fa10 f30c 	lsls.w	r3, r0, ip
 8002f8a:	fa20 f002 	lsr.w	r0, r0, r2
 8002f8e:	bf18      	it	ne
 8002f90:	f040 0001 	orrne.w	r0, r0, #1
 8002f94:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8002f98:	ea4f 23d3 	mov.w	r3, r3, lsr #11
 8002f9c:	fa03 fc0c 	lsl.w	ip, r3, ip
 8002fa0:	ea40 000c 	orr.w	r0, r0, ip
 8002fa4:	fa23 f302 	lsr.w	r3, r3, r2
 8002fa8:	ea4f 0343 	mov.w	r3, r3, lsl #1
 8002fac:	e7cc      	b.n	8002f48 <__aeabi_d2f+0x14>
 8002fae:	ea7f 5362 	mvns.w	r3, r2, asr #21
 8002fb2:	d107      	bne.n	8002fc4 <__aeabi_d2f+0x90>
 8002fb4:	ea50 3301 	orrs.w	r3, r0, r1, lsl #12
 8002fb8:	bf1e      	ittt	ne
 8002fba:	f04f 40fe 	movne.w	r0, #2130706432	; 0x7f000000
 8002fbe:	f440 0040 	orrne.w	r0, r0, #12582912	; 0xc00000
 8002fc2:	4770      	bxne	lr
 8002fc4:	f001 4000 	and.w	r0, r1, #2147483648	; 0x80000000
 8002fc8:	f040 40fe 	orr.w	r0, r0, #2130706432	; 0x7f000000
 8002fcc:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8002fd0:	4770      	bx	lr
 8002fd2:	bf00      	nop

08002fd4 <_init>:
 8002fd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002fd6:	bf00      	nop
 8002fd8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002fda:	bc08      	pop	{r3}
 8002fdc:	469e      	mov	lr, r3
 8002fde:	4770      	bx	lr

08002fe0 <_fini>:
 8002fe0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8002fe2:	bf00      	nop
 8002fe4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002fe6:	bc08      	pop	{r3}
 8002fe8:	469e      	mov	lr, r3
 8002fea:	4770      	bx	lr
 8002fec:	61646f6b 	.word	0x61646f6b
 8002ff0:	6920616d 	.word	0x6920616d
 8002ff4:	2074696e 	.word	0x2074696e
 8002ff8:	25206925 	.word	0x25206925
 8002ffc:	203a2069 	.word	0x203a2069
 8003000:	4f5b2000 	.word	0x4f5b2000
 8003004:	000a5d4b 	.word	0x000a5d4b
 8003008:	41465b20 	.word	0x41465b20
 800300c:	44454c49 	.word	0x44454c49
 8003010:	000a0a5d 	.word	0x000a0a5d

08003014 <_ZL21ssd1306_init_sequence>:
 8003014:	b00020ae 401000c8 a6a13f81 d3a43fa8     . .....@.?...?..
 8003024:	d9f0d500 db12da22 af148d20 74737973     ...."... ...syst
 8003034:	74206d65 20656d69 5b207525 0a5d736d     em time %u [ms].
 8003044:	20692500 0a206925 78616d00 20692520     .%i %i ..max %i 
 8003054:	206e696d 61206925 61726576 25206567     min %i average %
 8003064:	70000a69 7469736f 206e6f69 6625205b     i..position [ %f
 8003074:	20662520 000a205d                        %f ] ..

0800307c <_ZL10aeris_logo>:
 800307c:	ffffffff ffffffff ffffffff ffffffff     ................
 800308c:	ffffffff ffffffff ffffffff ffffffff     ................
 800309c:	ffffffff ffffffff ffffffff ffffffff     ................
 80030ac:	ffffffff ffffffff ffffffff ffffffff     ................
 80030bc:	ffffffff ffffffff ffffffff ffffffff     ................
 80030cc:	ffffffff ffffffff ffffffff ffffffff     ................
 80030dc:	ffffffff ffffffff ffffffff ffffffff     ................
 80030ec:	ffffffff ffffffff ffffffff ffffffff     ................
 80030fc:	ffffffff ffffffff ffffffff ffffffff     ................
 800310c:	ffffffff ffffffff ffffffff ffffffff     ................
 800311c:	ffffffff ffffffff ffffffff ffffffff     ................
 800312c:	ffffffff ffffffff ffffffff ffffffff     ................
 800313c:	ffffffff ffffffff ffffffff ffffffff     ................
 800314c:	ffffffff ffffffff ffffffff ffffffff     ................
 800315c:	ffffffff ffffffff ffffffff ffffffff     ................
 800316c:	ffffffff ffffffff ffffffff ffffffff     ................
 800317c:	fc0fffff 3f00007f fc1ffe00 ffffc00f     .......?........
 800318c:	fc0fffff 1f00007f f81ff000 ffff0007     ................
 800319c:	f807ffff 1f00007f f81fe000 ffff0001     ................
 80031ac:	f807ffff 1f00007f f81fc000 ffff0001     ................
 80031bc:	f807ffff 1f00007f f81f8000 ffff8000     ................
 80031cc:	f003ffff 1f00007f f81f8000 ffff8780     ................
 80031dc:	f003ffff 1fffe07f f81f01f8 ffffffc0     ................
 80031ec:	f003ffff 1fffe07f 781f03f8 ffffffe0     ...........x....
 80031fc:	e041ffff 1fffe07f 781f03f8 ffffffe0     ..A........x....
 800320c:	e0c1ffff 1fffe07f 781f03f8 ffffffc0     ...........x....
 800321c:	c0c1ffff 1fffe07f f81f03f8 ffffff80     ................
 800322c:	c0c0ffff 1fffe07f f81f03f8 ffffff00     ................
 800323c:	c1e0ffff 1f80007f f81f01f8 fffff800     ................
 800324c:	81e0ffff 1f80007f f81f80f8 ffffe001     ................
 800325c:	81e07fff 1f80007f f81f8000 ffffc003     ................
 800326c:	83f07fff 1f80007f f81fc000 ffff8007     ................
 800327c:	03f07fff 1f80007f f81fe000 ffff001f     ................
 800328c:	03f03fff 1fffe07f f81ff000 fffe007f     .?..............
 800329c:	00003fff 1fffe07f f81ff000 fffe01ff     .?..............
 80032ac:	00003fff 1fffe07e f81ff018 fffe03ff     .?..~...........
 80032bc:	00001fff 1fffe07e f81fe038 fffe07ff     ....~...8.......
 80032cc:	00001fff 1fffe07e f81fe078 fffe0fff     ....~...x.......
 80032dc:	00001fff 1fffe07e f81fc078 fffe07ff     ....~...x.......
 80032ec:	00000fff 1fffe07c f81f80f8 fffe07fd     ....|...........
 80032fc:	0ffc0fff 1f00007c f81f80f8 fffe03f0     ....|...........
 800330c:	0ffc0fff 1e00007c f81f01f8 fffe0000     ....|...........
 800331c:	1ffe07ff 1e000078 f81f01f8 ffff0000     ....x...........
 800332c:	1ffe07ff 1e000078 781f03f8 ffff0000     ....x......x....
 800333c:	1ffe07ff 1e000078 781e03f8 ffff8000     ....x......x....
 800334c:	3fff07ff 1e000070 f81e07f8 ffffe001     ...?p...........
 800335c:	ffffffff ffffffff ffffffff fffffc1f     ................
 800336c:	ffffffff ffffffff ffffffff ffffffff     ................
 800337c:	ffffffff ffffffff ffffffff ffffffff     ................
 800338c:	ffffffff ffffffff ffffffff ffffffff     ................
 800339c:	ffffffff ffffffff ffffffff ffffffff     ................
 80033ac:	ffffffff ffffffff ffffffff ffffffff     ................
 80033bc:	ffffffff ffffffff ffffffff ffffffff     ................
 80033cc:	ffffffff ffffffff ffffffff ffffffff     ................
 80033dc:	ffffffff ffffffff ffffffff ffffffff     ................
 80033ec:	ffffffff ffffffff ffffffff ffffffff     ................
 80033fc:	ffffffff ffffffff ffffffff ffffffff     ................
 800340c:	ffffffff ffffffff ffffffff ffffffff     ................
 800341c:	ffffffff ffffffff ffffffff ffffffff     ................
 800342c:	ffffffff ffffffff ffffffff ffffffff     ................
 800343c:	ffffffff ffffffff ffffffff ffffffff     ................
 800344c:	ffffffff ffffffff ffffffff ffffffff     ................
 800345c:	ffffffff ffffffff ffffffff ffffffff     ................
 800346c:	ffffffff ffffffff ffffffff ffffffff     ................
 800347c:	74737973 69206d65 20656c64 000a7525     system idle %u..
 800348c:	25206925 69252069 ffff000a                       %i %i %i..

08003496 <_ZL10image_logo>:
 8003496:	ffffffff ffffffff ffffffff ffffffff     ................
 80034a6:	ffffffff ffffffff ffffffff ffffffff     ................
 80034b6:	dfffffff ffffffff ffffffff ffffffff     ................
 80034c6:	cfffffff ffffffff ffffffff ffffffff     ................
 80034d6:	cfffffff ffffffff ffffffff ffffffff     ................
 80034e6:	81ffffff ffffffef ffffffff ffffffff     ................
 80034f6:	01ffffff ffffffe4 ffffffff ffffffff     ................
 8003506:	0003ffff ffffffe0 ffffffff ffffffff     ................
 8003516:	00007fff ffffffc0 ffffffff ffffffff     ................
 8003526:	0ff03fff fffffec0 ffffffff ffffffff     .?..............
 8003536:	7ffe1fff ffffff00 ffffffff ffffffff     ................
 8003546:	7fff8fff ffffff01 ffffffff ffffffff     ................
 8003556:	7fffe3ff fffffc03 ffffffff ffffffff     ................
 8003566:	fffff1ff fffffc07 ffffffff ffffffff     ................
 8003576:	7ffff8ff fffffe2f ffffffff ffffffff     ..../...........
 8003586:	7ffffcff fffffc2f ffffffff ffffffff     ..../...........
 8003596:	dffffc7f fffffc6f ffffffff ffffffff     ....o...........
 80035a6:	8ffffe3f fffffc5f ffffffff ffffffff     ?..._...........
 80035b6:	8fdfff3f ffffd87b ffffffff ffffffff     ?...{...........
 80035c6:	8f1fff1f fffffaef ffffffff ffffffff     ................
 80035d6:	c71fff1f fffffaef ffffffff ffffffff     ................
 80035e6:	e73e3f9f fffff6ff ffffffff ffffffff     .?>.............
 80035f6:	833e3fcf ffffeeff ffffffff ffffffff     .?>.............
 8003606:	003c7fcf ffffff7f ffffffff ffffffff     ..<.............
 8003616:	000e7fcf ffffff7e ffffffff fffbefff     ....~...........
 8003626:	f803ffc7 ffffffbf ffffffff fffbefff     ................
 8003636:	fc87ffe7 f7ffcfff 0ff1fff8 ff8b0e1f     ................
 8003646:	e0ceffe7 77bfdfff 67e6df77 ff33ccfe     .......ww..g..3.
 8003656:	c07c7fe7 b7bfdfff f7ff5f6f fe7be9fd     ..|.....o_....{.
 8003666:	c63c1fe7 b7bfdfff f3ff5f6f fefbe81d     ..<.....o_......
 8003676:	c73c1fe7 b7bfdfff fbff5f6f fefbe9ed     ..<.....o_......
 8003686:	c03e7fe7 b3bfdfff fbff5f6f fefbebf5     ..>.....o_......
 8003696:	ce3e7fe7 b07fdfff f3ff4f6f fefbebf5     ..>.....oO......
 80036a6:	c73e7fe7 34ffdfff f3ff6e67 fefbdde6     ..>....4gn......
 80036b6:	c03cffe7 77ffdfff 03ff70f0 fefb3e0e     ..<....w.p...>..
 80036c6:	c43cffe7 f7ffdfff fbffffff ffffffff     ..<.............
 80036d6:	c73cffe7 f7ffcfff fbffffff ffffffff     ..<.............
 80036e6:	c03c7fe7 fbffcfff fbffffff ffffffff     ..<.............
 80036f6:	c03e7fe7 fcffcfff fbffffff ffffffff     ..>.............
 8003706:	c7200fcf ffffefff ffffffff ffffffff     .. .............
 8003716:	e70007cf ffffe7ff ffffffff ffffffff     ................
 8003726:	000f8fdf ffffe7cc ffffffff ffffffff     ................
 8003736:	003fff9f fffff780 ffffffff ffffffff     ..?.............
 8003746:	00ffffbf fffff3c0 ffffffff ffffffff     ................
 8003756:	03ffff3f fffff9e0 ffffffff ffffffff     ?...............
 8003766:	0fffff3f fffff9fe ffffffff ffffffff     ?...............
 8003776:	fffffe7f fffffcff ffffffff ffffffff     ................
 8003786:	fffffc7f fffffeff ffffffff ffffffff     ................
 8003796:	fffffcff fffffe7f ffffffff ffffffff     ................
 80037a6:	fffff9ff ffffff3f ffffffff ffffffff     ....?...........
 80037b6:	fffff3ff ffffff1f ffffffff ffffffff     ................
 80037c6:	ffffe3ff ffffffc7 ffffffff ffffffff     ................
 80037d6:	ffff87ff ffffffe3 ffffffff ffffffff     ................
 80037e6:	fffe1fff fffffff1 ffffffff ffffffff     ................
 80037f6:	3ff43fff fffffff8 ffffffff ffffffff     .?.?............
 8003806:	0180ffff fffffffe ffffffff ffffffff     ................
 8003816:	c007ffff ffffffff ffffffff ffffffff     ................
 8003826:	ffffffff ffffffff ffffffff ffffffff     ................
 8003836:	ffffffff ffffffff ffffffff ffffffff     ................
 8003846:	ffffffff ffffffff ffffffff ffffffff     ................
 8003856:	ffffffff ffffffff ffffffff ffffffff     ................
 8003866:	ffffffff ffffffff ffffffff ffffffff     ................
 8003876:	ffffffff ffffffff ffffffff ffffffff     ................
 8003886:	ffffffff ffffffff ffffffff ffffffff     ................
	...

08003898 <__EH_FRAME_BEGIN__>:
 8003898:	00000000                                ....
