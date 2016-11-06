
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f844 	bl	8001218 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f919 	bl	80013d4 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	4620      	mov	r0, r4
 80001b0:	f000 f89c 	bl	80002ec <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fc03 	bl	80009cc <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f504 70b8 	add.w	r0, r4, #368	; 0x170
 80001d6:	f000 fb6b 	bl	80008b0 <_ZN6CMotor10motor_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	bfbc      	itt	lt
 80001de:	f5a0 4043 	sublt.w	r0, r0, #49920	; 0xc300
 80001e2:	3850      	sublt	r0, #80	; 0x50
 80001e4:	bd10      	pop	{r4, pc}
	...

080001e8 <_ZN7CKodama4initEv>:
 80001e8:	b570      	push	{r4, r5, r6, lr}
 80001ea:	4605      	mov	r5, r0
 80001ec:	2400      	movs	r4, #0
 80001ee:	4628      	mov	r0, r5
 80001f0:	f7ff ffca 	bl	8000188 <_ZN7CKodama5init_Ev>
 80001f4:	4606      	mov	r6, r0
 80001f6:	490a      	ldr	r1, [pc, #40]	; (8000220 <_ZN7CKodama4initEv+0x38>)
 80001f8:	4628      	mov	r0, r5
 80001fa:	4622      	mov	r2, r4
 80001fc:	4633      	mov	r3, r6
 80001fe:	f001 f9e3 	bl	80015c8 <_ZN9CTerminal6printfEPKcz>
 8000202:	4628      	mov	r0, r5
 8000204:	b91e      	cbnz	r6, 800020e <_ZN7CKodama4initEv+0x26>
 8000206:	4907      	ldr	r1, [pc, #28]	; (8000224 <_ZN7CKodama4initEv+0x3c>)
 8000208:	f001 f9de 	bl	80015c8 <_ZN9CTerminal6printfEPKcz>
 800020c:	e005      	b.n	800021a <_ZN7CKodama4initEv+0x32>
 800020e:	4906      	ldr	r1, [pc, #24]	; (8000228 <_ZN7CKodama4initEv+0x40>)
 8000210:	3401      	adds	r4, #1
 8000212:	f001 f9d9 	bl	80015c8 <_ZN9CTerminal6printfEPKcz>
 8000216:	2c08      	cmp	r4, #8
 8000218:	d1e9      	bne.n	80001ee <_ZN7CKodama4initEv+0x6>
 800021a:	4630      	mov	r0, r6
 800021c:	bd70      	pop	{r4, r5, r6, pc}
 800021e:	bf00      	nop
 8000220:	080023d8 	.word	0x080023d8
 8000224:	080023ed 	.word	0x080023ed
 8000228:	080023f4 	.word	0x080023f4

0800022c <_ZN7CKodama6set_dtEl>:
 800022c:	f8c0 1178 	str.w	r1, [r0, #376]	; 0x178
 8000230:	f8c0 116c 	str.w	r1, [r0, #364]	; 0x16c
 8000234:	4770      	bx	lr

08000236 <_ZN7CKodama12rotate_robotEllPFlvE>:
 8000236:	e92d 4ff7 	stmdb	sp!, {r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800023a:	4605      	mov	r5, r0
 800023c:	4689      	mov	r9, r1
 800023e:	f505 7898 	add.w	r8, r5, #304	; 0x130
 8000242:	2100      	movs	r1, #0
 8000244:	4693      	mov	fp, r2
 8000246:	f8d0 2178 	ldr.w	r2, [r0, #376]	; 0x178
 800024a:	469a      	mov	sl, r3
 800024c:	f000 f8ee 	bl	800042c <_ZN6CTimer22event_timer_set_periodEhm>
 8000250:	4640      	mov	r0, r8
 8000252:	f000 febb 	bl	8000fcc <_ZN4CIMU8imu_readEv>
 8000256:	4640      	mov	r0, r8
 8000258:	f000 ffdc 	bl	8001214 <_ZN4CIMU14get_imu_resultEv>
 800025c:	6883      	ldr	r3, [r0, #8]
 800025e:	2600      	movs	r6, #0
 8000260:	4499      	add	r9, r3
 8000262:	4628      	mov	r0, r5
 8000264:	2100      	movs	r1, #0
 8000266:	f000 f8f5 	bl	8000454 <_ZN6CTimer17event_timer_checkEh>
 800026a:	2800      	cmp	r0, #0
 800026c:	d0f9      	beq.n	8000262 <_ZN7CKodama12rotate_robotEllPFlvE+0x2c>
 800026e:	f505 77b8 	add.w	r7, r5, #368	; 0x170
 8000272:	f1ba 0f00 	cmp.w	sl, #0
 8000276:	d111      	bne.n	800029c <_ZN7CKodama12rotate_robotEllPFlvE+0x66>
 8000278:	4640      	mov	r0, r8
 800027a:	f000 fea7 	bl	8000fcc <_ZN4CIMU8imu_readEv>
 800027e:	4640      	mov	r0, r8
 8000280:	f000 ffc8 	bl	8001214 <_ZN4CIMU14get_imu_resultEv>
 8000284:	6884      	ldr	r4, [r0, #8]
 8000286:	ebc4 0409 	rsb	r4, r4, r9
 800028a:	2c00      	cmp	r4, #0
 800028c:	bfcc      	ite	gt
 800028e:	2301      	movgt	r3, #1
 8000290:	f04f 33ff 	movle.w	r3, #4294967295	; 0xffffffff
 8000294:	455e      	cmp	r6, fp
 8000296:	da15      	bge.n	80002c4 <_ZN7CKodama12rotate_robotEllPFlvE+0x8e>
 8000298:	3601      	adds	r6, #1
 800029a:	e013      	b.n	80002c4 <_ZN7CKodama12rotate_robotEllPFlvE+0x8e>
 800029c:	47d0      	blx	sl
 800029e:	2800      	cmp	r0, #0
 80002a0:	d0ea      	beq.n	8000278 <_ZN7CKodama12rotate_robotEllPFlvE+0x42>
 80002a2:	2100      	movs	r1, #0
 80002a4:	4638      	mov	r0, r7
 80002a6:	460a      	mov	r2, r1
 80002a8:	f000 fafc 	bl	80008a4 <_ZN6CMotor9set_motorEml>
 80002ac:	4638      	mov	r0, r7
 80002ae:	2101      	movs	r1, #1
 80002b0:	2200      	movs	r2, #0
 80002b2:	f000 faf7 	bl	80008a4 <_ZN6CMotor9set_motorEml>
 80002b6:	4628      	mov	r0, r5
 80002b8:	2114      	movs	r1, #20
 80002ba:	b003      	add	sp, #12
 80002bc:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80002c0:	f000 b8a2 	b.w	8000408 <_ZN6CTimer8delay_msEm>
 80002c4:	fb03 f206 	mul.w	r2, r3, r6
 80002c8:	4638      	mov	r0, r7
 80002ca:	2100      	movs	r1, #0
 80002cc:	9301      	str	r3, [sp, #4]
 80002ce:	f000 fae9 	bl	80008a4 <_ZN6CMotor9set_motorEml>
 80002d2:	9b01      	ldr	r3, [sp, #4]
 80002d4:	4272      	negs	r2, r6
 80002d6:	4638      	mov	r0, r7
 80002d8:	2101      	movs	r1, #1
 80002da:	435a      	muls	r2, r3
 80002dc:	f000 fae2 	bl	80008a4 <_ZN6CMotor9set_motorEml>
 80002e0:	2c00      	cmp	r4, #0
 80002e2:	bfb8      	it	lt
 80002e4:	4264      	neglt	r4, r4
 80002e6:	2c31      	cmp	r4, #49	; 0x31
 80002e8:	dcbb      	bgt.n	8000262 <_ZN7CKodama12rotate_robotEllPFlvE+0x2c>
 80002ea:	e7da      	b.n	80002a2 <_ZN7CKodama12rotate_robotEllPFlvE+0x6c>

080002ec <_ZN6CTimer10timer_initEv>:
 80002ec:	b530      	push	{r4, r5, lr}
 80002ee:	2300      	movs	r3, #0
 80002f0:	b085      	sub	sp, #20
 80002f2:	491e      	ldr	r1, [pc, #120]	; (800036c <_ZN6CTimer10timer_initEv+0x80>)
 80002f4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80002f8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80002fc:	491c      	ldr	r1, [pc, #112]	; (8000370 <_ZN6CTimer10timer_initEv+0x84>)
 80002fe:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000302:	4a1c      	ldr	r2, [pc, #112]	; (8000374 <_ZN6CTimer10timer_initEv+0x88>)
 8000304:	2400      	movs	r4, #0
 8000306:	54d4      	strb	r4, [r2, r3]
 8000308:	3301      	adds	r3, #1
 800030a:	2b08      	cmp	r3, #8
 800030c:	d1f1      	bne.n	80002f2 <_ZN6CTimer10timer_initEv+0x6>
 800030e:	4b1a      	ldr	r3, [pc, #104]	; (8000378 <_ZN6CTimer10timer_initEv+0x8c>)
 8000310:	4d1a      	ldr	r5, [pc, #104]	; (800037c <_ZN6CTimer10timer_initEv+0x90>)
 8000312:	601c      	str	r4, [r3, #0]
 8000314:	2002      	movs	r0, #2
 8000316:	2101      	movs	r1, #1
 8000318:	f001 fbb0 	bl	8001a7c <RCC_APB1PeriphClockCmd>
 800031c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000320:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000324:	4628      	mov	r0, r5
 8000326:	2331      	movs	r3, #49	; 0x31
 8000328:	a901      	add	r1, sp, #4
 800032a:	9302      	str	r3, [sp, #8]
 800032c:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000330:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000334:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000338:	f001 fbae 	bl	8001a98 <TIM_TimeBaseInit>
 800033c:	4628      	mov	r0, r5
 800033e:	2101      	movs	r1, #1
 8000340:	f001 fbfa 	bl	8001b38 <TIM_Cmd>
 8000344:	68eb      	ldr	r3, [r5, #12]
 8000346:	f043 0301 	orr.w	r3, r3, #1
 800034a:	60eb      	str	r3, [r5, #12]
 800034c:	231d      	movs	r3, #29
 800034e:	f88d 3000 	strb.w	r3, [sp]
 8000352:	4668      	mov	r0, sp
 8000354:	2301      	movs	r3, #1
 8000356:	f88d 4001 	strb.w	r4, [sp, #1]
 800035a:	f88d 3002 	strb.w	r3, [sp, #2]
 800035e:	f88d 3003 	strb.w	r3, [sp, #3]
 8000362:	f001 fdc1 	bl	8001ee8 <NVIC_Init>
 8000366:	4620      	mov	r0, r4
 8000368:	b005      	add	sp, #20
 800036a:	bd30      	pop	{r4, r5, pc}
 800036c:	20000034 	.word	0x20000034
 8000370:	20000060 	.word	0x20000060
 8000374:	20000054 	.word	0x20000054
 8000378:	2000005c 	.word	0x2000005c
 800037c:	40000400 	.word	0x40000400

08000380 <TIM3_IRQHandler>:
 8000380:	2300      	movs	r3, #0
 8000382:	4a15      	ldr	r2, [pc, #84]	; (80003d8 <TIM3_IRQHandler+0x58>)
 8000384:	5cd1      	ldrb	r1, [r2, r3]
 8000386:	b111      	cbz	r1, 800038e <TIM3_IRQHandler+0xe>
 8000388:	5cd1      	ldrb	r1, [r2, r3]
 800038a:	29ff      	cmp	r1, #255	; 0xff
 800038c:	d11e      	bne.n	80003cc <TIM3_IRQHandler+0x4c>
 800038e:	4913      	ldr	r1, [pc, #76]	; (80003dc <TIM3_IRQHandler+0x5c>)
 8000390:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000394:	b128      	cbz	r0, 80003a2 <TIM3_IRQHandler+0x22>
 8000396:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 800039a:	3a01      	subs	r2, #1
 800039c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80003a0:	e009      	b.n	80003b6 <TIM3_IRQHandler+0x36>
 80003a2:	480f      	ldr	r0, [pc, #60]	; (80003e0 <TIM3_IRQHandler+0x60>)
 80003a4:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80003a8:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80003ac:	5cd2      	ldrb	r2, [r2, r3]
 80003ae:	b912      	cbnz	r2, 80003b6 <TIM3_IRQHandler+0x36>
 80003b0:	4a09      	ldr	r2, [pc, #36]	; (80003d8 <TIM3_IRQHandler+0x58>)
 80003b2:	2101      	movs	r1, #1
 80003b4:	54d1      	strb	r1, [r2, r3]
 80003b6:	3301      	adds	r3, #1
 80003b8:	2b08      	cmp	r3, #8
 80003ba:	d1e2      	bne.n	8000382 <TIM3_IRQHandler+0x2>
 80003bc:	4a09      	ldr	r2, [pc, #36]	; (80003e4 <TIM3_IRQHandler+0x64>)
 80003be:	480a      	ldr	r0, [pc, #40]	; (80003e8 <TIM3_IRQHandler+0x68>)
 80003c0:	6813      	ldr	r3, [r2, #0]
 80003c2:	2101      	movs	r1, #1
 80003c4:	3301      	adds	r3, #1
 80003c6:	6013      	str	r3, [r2, #0]
 80003c8:	f001 bc53 	b.w	8001c72 <TIM_ClearITPendingBit>
 80003cc:	5cd1      	ldrb	r1, [r2, r3]
 80003ce:	3101      	adds	r1, #1
 80003d0:	b2c9      	uxtb	r1, r1
 80003d2:	54d1      	strb	r1, [r2, r3]
 80003d4:	e7db      	b.n	800038e <TIM3_IRQHandler+0xe>
 80003d6:	bf00      	nop
 80003d8:	20000054 	.word	0x20000054
 80003dc:	20000034 	.word	0x20000034
 80003e0:	20000060 	.word	0x20000060
 80003e4:	2000005c 	.word	0x2000005c
 80003e8:	40000400 	.word	0x40000400

080003ec <_ZN6CTimer8get_timeEv>:
 80003ec:	b082      	sub	sp, #8
 80003ee:	b672      	cpsid	i
 80003f0:	4b04      	ldr	r3, [pc, #16]	; (8000404 <_ZN6CTimer8get_timeEv+0x18>)
 80003f2:	681b      	ldr	r3, [r3, #0]
 80003f4:	9301      	str	r3, [sp, #4]
 80003f6:	b662      	cpsie	i
 80003f8:	230a      	movs	r3, #10
 80003fa:	9801      	ldr	r0, [sp, #4]
 80003fc:	fbb0 f0f3 	udiv	r0, r0, r3
 8000400:	b002      	add	sp, #8
 8000402:	4770      	bx	lr
 8000404:	2000005c 	.word	0x2000005c

08000408 <_ZN6CTimer8delay_msEm>:
 8000408:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800040a:	460c      	mov	r4, r1
 800040c:	4605      	mov	r5, r0
 800040e:	f7ff ffed 	bl	80003ec <_ZN6CTimer8get_timeEv>
 8000412:	4420      	add	r0, r4
 8000414:	9001      	str	r0, [sp, #4]
 8000416:	4628      	mov	r0, r5
 8000418:	9c01      	ldr	r4, [sp, #4]
 800041a:	f7ff ffe7 	bl	80003ec <_ZN6CTimer8get_timeEv>
 800041e:	4284      	cmp	r4, r0
 8000420:	d902      	bls.n	8000428 <_ZN6CTimer8delay_msEm+0x20>
 8000422:	f001 fd5d 	bl	8001ee0 <core_yield>
 8000426:	e7f6      	b.n	8000416 <_ZN6CTimer8delay_msEm+0xe>
 8000428:	b003      	add	sp, #12
 800042a:	bd30      	pop	{r4, r5, pc}

0800042c <_ZN6CTimer22event_timer_set_periodEhm>:
 800042c:	b672      	cpsid	i
 800042e:	230a      	movs	r3, #10
 8000430:	435a      	muls	r2, r3
 8000432:	4b05      	ldr	r3, [pc, #20]	; (8000448 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000434:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000438:	4b04      	ldr	r3, [pc, #16]	; (800044c <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 800043a:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 800043e:	4b04      	ldr	r3, [pc, #16]	; (8000450 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000440:	2200      	movs	r2, #0
 8000442:	545a      	strb	r2, [r3, r1]
 8000444:	b662      	cpsie	i
 8000446:	4770      	bx	lr
 8000448:	20000034 	.word	0x20000034
 800044c:	20000060 	.word	0x20000060
 8000450:	20000054 	.word	0x20000054

08000454 <_ZN6CTimer17event_timer_checkEh>:
 8000454:	4b05      	ldr	r3, [pc, #20]	; (800046c <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000456:	5c5a      	ldrb	r2, [r3, r1]
 8000458:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 800045c:	b12a      	cbz	r2, 800046a <_ZN6CTimer17event_timer_checkEh+0x16>
 800045e:	b672      	cpsid	i
 8000460:	5c58      	ldrb	r0, [r3, r1]
 8000462:	2200      	movs	r2, #0
 8000464:	b2c0      	uxtb	r0, r0
 8000466:	545a      	strb	r2, [r3, r1]
 8000468:	b662      	cpsie	i
 800046a:	4770      	bx	lr
 800046c:	20000054 	.word	0x20000054

08000470 <_ZN4CRGB8rgb_readEh>:
 8000470:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000474:	4604      	mov	r4, r0
 8000476:	4689      	mov	r9, r1
 8000478:	f000 fb2a 	bl	8000ad0 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800047c:	4620      	mov	r0, r4
 800047e:	2172      	movs	r1, #114	; 0x72
 8000480:	f000 fb50 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000484:	21b4      	movs	r1, #180	; 0xb4
 8000486:	4620      	mov	r0, r4
 8000488:	f000 fb4c 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800048c:	4620      	mov	r0, r4
 800048e:	f000 fb1f 	bl	8000ad0 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000492:	1d26      	adds	r6, r4, #4
 8000494:	4620      	mov	r0, r4
 8000496:	2173      	movs	r1, #115	; 0x73
 8000498:	f000 fb44 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800049c:	1ce5      	adds	r5, r4, #3
 800049e:	4632      	mov	r2, r6
 80004a0:	4620      	mov	r0, r4
 80004a2:	2101      	movs	r1, #1
 80004a4:	f104 0a42 	add.w	sl, r4, #66	; 0x42
 80004a8:	f000 fb7e 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80004ac:	f104 0754 	add.w	r7, r4, #84	; 0x54
 80004b0:	4653      	mov	r3, sl
 80004b2:	462a      	mov	r2, r5
 80004b4:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80004b8:	f823 1f02 	strh.w	r1, [r3, #2]!
 80004bc:	42bb      	cmp	r3, r7
 80004be:	d1f9      	bne.n	80004b4 <_ZN4CRGB8rgb_readEh+0x44>
 80004c0:	2101      	movs	r1, #1
 80004c2:	4620      	mov	r0, r4
 80004c4:	4632      	mov	r2, r6
 80004c6:	f000 fb6f 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80004ca:	4629      	mov	r1, r5
 80004cc:	4653      	mov	r3, sl
 80004ce:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80004d2:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80004d6:	42bb      	cmp	r3, r7
 80004d8:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 80004dc:	801a      	strh	r2, [r3, #0]
 80004de:	d1f6      	bne.n	80004ce <_ZN4CRGB8rgb_readEh+0x5e>
 80004e0:	4632      	mov	r2, r6
 80004e2:	4620      	mov	r0, r4
 80004e4:	2101      	movs	r1, #1
 80004e6:	f104 080c 	add.w	r8, r4, #12
 80004ea:	f000 fb5d 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80004ee:	f104 0b1e 	add.w	fp, r4, #30
 80004f2:	4643      	mov	r3, r8
 80004f4:	462a      	mov	r2, r5
 80004f6:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80004fa:	f823 1f02 	strh.w	r1, [r3, #2]!
 80004fe:	455b      	cmp	r3, fp
 8000500:	d1f9      	bne.n	80004f6 <_ZN4CRGB8rgb_readEh+0x86>
 8000502:	4632      	mov	r2, r6
 8000504:	4620      	mov	r0, r4
 8000506:	2101      	movs	r1, #1
 8000508:	f000 fb4e 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800050c:	462a      	mov	r2, r5
 800050e:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 8000512:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000516:	45d8      	cmp	r8, fp
 8000518:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800051c:	f8a8 3000 	strh.w	r3, [r8]
 8000520:	d1f5      	bne.n	800050e <_ZN4CRGB8rgb_readEh+0x9e>
 8000522:	4632      	mov	r2, r6
 8000524:	4620      	mov	r0, r4
 8000526:	2101      	movs	r1, #1
 8000528:	f000 fb3e 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800052c:	f104 0830 	add.w	r8, r4, #48	; 0x30
 8000530:	465b      	mov	r3, fp
 8000532:	462a      	mov	r2, r5
 8000534:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000538:	f823 1f02 	strh.w	r1, [r3, #2]!
 800053c:	4543      	cmp	r3, r8
 800053e:	d1f9      	bne.n	8000534 <_ZN4CRGB8rgb_readEh+0xc4>
 8000540:	4632      	mov	r2, r6
 8000542:	4620      	mov	r0, r4
 8000544:	2101      	movs	r1, #1
 8000546:	f000 fb2f 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800054a:	462a      	mov	r2, r5
 800054c:	f83b 3f02 	ldrh.w	r3, [fp, #2]!
 8000550:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000554:	45c3      	cmp	fp, r8
 8000556:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800055a:	f8ab 3000 	strh.w	r3, [fp]
 800055e:	d1f5      	bne.n	800054c <_ZN4CRGB8rgb_readEh+0xdc>
 8000560:	4632      	mov	r2, r6
 8000562:	4620      	mov	r0, r4
 8000564:	2101      	movs	r1, #1
 8000566:	f000 fb1f 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800056a:	4643      	mov	r3, r8
 800056c:	462a      	mov	r2, r5
 800056e:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000572:	f823 1f02 	strh.w	r1, [r3, #2]!
 8000576:	4553      	cmp	r3, sl
 8000578:	d1f9      	bne.n	800056e <_ZN4CRGB8rgb_readEh+0xfe>
 800057a:	4632      	mov	r2, r6
 800057c:	4620      	mov	r0, r4
 800057e:	2101      	movs	r1, #1
 8000580:	f000 fb12 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000584:	462a      	mov	r2, r5
 8000586:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 800058a:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800058e:	45d0      	cmp	r8, sl
 8000590:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000594:	f8a8 3000 	strh.w	r3, [r8]
 8000598:	d1f5      	bne.n	8000586 <_ZN4CRGB8rgb_readEh+0x116>
 800059a:	4632      	mov	r2, r6
 800059c:	4620      	mov	r0, r4
 800059e:	2101      	movs	r1, #1
 80005a0:	f000 fb02 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005a4:	f104 0866 	add.w	r8, r4, #102	; 0x66
 80005a8:	463b      	mov	r3, r7
 80005aa:	462a      	mov	r2, r5
 80005ac:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80005b0:	f823 1f02 	strh.w	r1, [r3, #2]!
 80005b4:	4543      	cmp	r3, r8
 80005b6:	d1f9      	bne.n	80005ac <_ZN4CRGB8rgb_readEh+0x13c>
 80005b8:	4620      	mov	r0, r4
 80005ba:	2100      	movs	r1, #0
 80005bc:	4632      	mov	r2, r6
 80005be:	f000 faf3 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005c2:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 80005c6:	f815 2f01 	ldrb.w	r2, [r5, #1]!
 80005ca:	4547      	cmp	r7, r8
 80005cc:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
 80005d0:	803b      	strh	r3, [r7, #0]
 80005d2:	d1f6      	bne.n	80005c2 <_ZN4CRGB8rgb_readEh+0x152>
 80005d4:	4620      	mov	r0, r4
 80005d6:	f000 fa90 	bl	8000afa <_ZN8CRGB_I2C11rgb_i2cStopEv>
 80005da:	f1b9 0f00 	cmp.w	r9, #0
 80005de:	d027      	beq.n	8000630 <_ZN4CRGB8rgb_readEh+0x1c0>
 80005e0:	2300      	movs	r3, #0
 80005e2:	89e1      	ldrh	r1, [r4, #14]
 80005e4:	f8b4 209e 	ldrh.w	r2, [r4, #158]	; 0x9e
 80005e8:	440a      	add	r2, r1
 80005ea:	f8a4 209e 	strh.w	r2, [r4, #158]	; 0x9e
 80005ee:	8c21      	ldrh	r1, [r4, #32]
 80005f0:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 80005f4:	440a      	add	r2, r1
 80005f6:	f8a4 20b0 	strh.w	r2, [r4, #176]	; 0xb0
 80005fa:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 80005fc:	f8b4 20c2 	ldrh.w	r2, [r4, #194]	; 0xc2
 8000600:	440a      	add	r2, r1
 8000602:	f8a4 20c2 	strh.w	r2, [r4, #194]	; 0xc2
 8000606:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
 800060a:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 800060e:	440a      	add	r2, r1
 8000610:	f8a4 20e6 	strh.w	r2, [r4, #230]	; 0xe6
 8000614:	f8b4 1044 	ldrh.w	r1, [r4, #68]	; 0x44
 8000618:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 800061c:	3301      	adds	r3, #1
 800061e:	440a      	add	r2, r1
 8000620:	2b09      	cmp	r3, #9
 8000622:	f8a4 20d4 	strh.w	r2, [r4, #212]	; 0xd4
 8000626:	f104 0402 	add.w	r4, r4, #2
 800062a:	d1da      	bne.n	80005e2 <_ZN4CRGB8rgb_readEh+0x172>
 800062c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000630:	4649      	mov	r1, r9
 8000632:	b672      	cpsid	i
 8000634:	89e3      	ldrh	r3, [r4, #14]
 8000636:	f8b4 009e 	ldrh.w	r0, [r4, #158]	; 0x9e
 800063a:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 800063e:	f8b4 50c2 	ldrh.w	r5, [r4, #194]	; 0xc2
 8000642:	f8b4 60e6 	ldrh.w	r6, [r4, #230]	; 0xe6
 8000646:	1a18      	subs	r0, r3, r0
 8000648:	8c23      	ldrh	r3, [r4, #32]
 800064a:	1a9a      	subs	r2, r3, r2
 800064c:	8e63      	ldrh	r3, [r4, #50]	; 0x32
 800064e:	1b5b      	subs	r3, r3, r5
 8000650:	f8b4 5056 	ldrh.w	r5, [r4, #86]	; 0x56
 8000654:	1bad      	subs	r5, r5, r6
 8000656:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
 800065a:	f8b4 60d4 	ldrh.w	r6, [r4, #212]	; 0xd4
 800065e:	f8b4 5044 	ldrh.w	r5, [r4, #68]	; 0x44
 8000662:	b280      	uxth	r0, r0
 8000664:	b292      	uxth	r2, r2
 8000666:	b29b      	uxth	r3, r3
 8000668:	1bad      	subs	r5, r5, r6
 800066a:	81e0      	strh	r0, [r4, #14]
 800066c:	8422      	strh	r2, [r4, #32]
 800066e:	8663      	strh	r3, [r4, #50]	; 0x32
 8000670:	f8a4 5044 	strh.w	r5, [r4, #68]	; 0x44
 8000674:	b662      	cpsie	i
 8000676:	b200      	sxth	r0, r0
 8000678:	b212      	sxth	r2, r2
 800067a:	1885      	adds	r5, r0, r2
 800067c:	b21b      	sxth	r3, r3
 800067e:	18ed      	adds	r5, r5, r3
 8000680:	d011      	beq.n	80006a6 <_ZN4CRGB8rgb_readEh+0x236>
 8000682:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000686:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 800068a:	fb90 f0f5 	sdiv	r0, r0, r5
 800068e:	fb92 f2f5 	sdiv	r2, r2, r5
 8000692:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8000696:	f8a4 0068 	strh.w	r0, [r4, #104]	; 0x68
 800069a:	fb93 f3f5 	sdiv	r3, r3, r5
 800069e:	f8a4 207a 	strh.w	r2, [r4, #122]	; 0x7a
 80006a2:	f8a4 308c 	strh.w	r3, [r4, #140]	; 0x8c
 80006a6:	3101      	adds	r1, #1
 80006a8:	2909      	cmp	r1, #9
 80006aa:	f104 0402 	add.w	r4, r4, #2
 80006ae:	d1c0      	bne.n	8000632 <_ZN4CRGB8rgb_readEh+0x1c2>
 80006b0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

080006b4 <_ZN4CRGB8rgb_initEv>:
 80006b4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80006b6:	4604      	mov	r4, r0
 80006b8:	b085      	sub	sp, #20
 80006ba:	f000 fb0b 	bl	8000cd4 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80006be:	4626      	mov	r6, r4
 80006c0:	4623      	mov	r3, r4
 80006c2:	2509      	movs	r5, #9
 80006c4:	2200      	movs	r2, #0
 80006c6:	3d01      	subs	r5, #1
 80006c8:	81da      	strh	r2, [r3, #14]
 80006ca:	841a      	strh	r2, [r3, #32]
 80006cc:	865a      	strh	r2, [r3, #50]	; 0x32
 80006ce:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56
 80006d2:	f8a3 2044 	strh.w	r2, [r3, #68]	; 0x44
 80006d6:	f8a3 209e 	strh.w	r2, [r3, #158]	; 0x9e
 80006da:	f8a3 20b0 	strh.w	r2, [r3, #176]	; 0xb0
 80006de:	f8a3 20c2 	strh.w	r2, [r3, #194]	; 0xc2
 80006e2:	f8a3 20e6 	strh.w	r2, [r3, #230]	; 0xe6
 80006e6:	f8a3 20d4 	strh.w	r2, [r3, #212]	; 0xd4
 80006ea:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
 80006ee:	f8a3 207a 	strh.w	r2, [r3, #122]	; 0x7a
 80006f2:	f8a3 208c 	strh.w	r2, [r3, #140]	; 0x8c
 80006f6:	f103 0302 	add.w	r3, r3, #2
 80006fa:	d1e3      	bne.n	80006c4 <_ZN4CRGB8rgb_initEv+0x10>
 80006fc:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000700:	2208      	movs	r2, #8
 8000702:	851a      	strh	r2, [r3, #40]	; 0x28
 8000704:	4620      	mov	r0, r4
 8000706:	f000 fae5 	bl	8000cd4 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 800070a:	4620      	mov	r0, r4
 800070c:	2172      	movs	r1, #114	; 0x72
 800070e:	2281      	movs	r2, #129	; 0x81
 8000710:	23ff      	movs	r3, #255	; 0xff
 8000712:	f000 fa30 	bl	8000b76 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000716:	4620      	mov	r0, r4
 8000718:	2172      	movs	r1, #114	; 0x72
 800071a:	2283      	movs	r2, #131	; 0x83
 800071c:	23ff      	movs	r3, #255	; 0xff
 800071e:	f000 fa2a 	bl	8000b76 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000722:	4620      	mov	r0, r4
 8000724:	2172      	movs	r1, #114	; 0x72
 8000726:	228d      	movs	r2, #141	; 0x8d
 8000728:	462b      	mov	r3, r5
 800072a:	f000 fa24 	bl	8000b76 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800072e:	2172      	movs	r1, #114	; 0x72
 8000730:	2280      	movs	r2, #128	; 0x80
 8000732:	2303      	movs	r3, #3
 8000734:	4620      	mov	r0, r4
 8000736:	f000 fa1e 	bl	8000b76 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800073a:	4620      	mov	r0, r4
 800073c:	f000 fb16 	bl	8000d6c <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>
 8000740:	228f      	movs	r2, #143	; 0x8f
 8000742:	2323      	movs	r3, #35	; 0x23
 8000744:	2172      	movs	r1, #114	; 0x72
 8000746:	4620      	mov	r0, r4
 8000748:	f000 fa15 	bl	8000b76 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800074c:	4620      	mov	r0, r4
 800074e:	f000 fb10 	bl	8000d72 <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>
 8000752:	af01      	add	r7, sp, #4
 8000754:	4620      	mov	r0, r4
 8000756:	4629      	mov	r1, r5
 8000758:	f7ff fe8a 	bl	8000470 <_ZN4CRGB8rgb_readEh>
 800075c:	463b      	mov	r3, r7
 800075e:	4620      	mov	r0, r4
 8000760:	2172      	movs	r1, #114	; 0x72
 8000762:	2292      	movs	r2, #146	; 0x92
 8000764:	f000 fa94 	bl	8000c90 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000768:	462b      	mov	r3, r5
 800076a:	5cfa      	ldrb	r2, [r7, r3]
 800076c:	2a69      	cmp	r2, #105	; 0x69
 800076e:	bf1c      	itt	ne
 8000770:	2201      	movne	r2, #1
 8000772:	409a      	lslne	r2, r3
 8000774:	f103 0301 	add.w	r3, r3, #1
 8000778:	bf18      	it	ne
 800077a:	4315      	orrne	r5, r2
 800077c:	2b09      	cmp	r3, #9
 800077e:	d1f4      	bne.n	800076a <_ZN4CRGB8rgb_initEv+0xb6>
 8000780:	2704      	movs	r7, #4
 8000782:	4620      	mov	r0, r4
 8000784:	2101      	movs	r1, #1
 8000786:	f7ff fe73 	bl	8000470 <_ZN4CRGB8rgb_readEh>
 800078a:	3f01      	subs	r7, #1
 800078c:	d1f9      	bne.n	8000782 <_ZN4CRGB8rgb_initEv+0xce>
 800078e:	2109      	movs	r1, #9
 8000790:	f9b6 309e 	ldrsh.w	r3, [r6, #158]	; 0x9e
 8000794:	089b      	lsrs	r3, r3, #2
 8000796:	f8a6 309e 	strh.w	r3, [r6, #158]	; 0x9e
 800079a:	f9b6 30b0 	ldrsh.w	r3, [r6, #176]	; 0xb0
 800079e:	089b      	lsrs	r3, r3, #2
 80007a0:	f8a6 30b0 	strh.w	r3, [r6, #176]	; 0xb0
 80007a4:	f9b6 30c2 	ldrsh.w	r3, [r6, #194]	; 0xc2
 80007a8:	089b      	lsrs	r3, r3, #2
 80007aa:	f8a6 30c2 	strh.w	r3, [r6, #194]	; 0xc2
 80007ae:	f9b6 30e6 	ldrsh.w	r3, [r6, #230]	; 0xe6
 80007b2:	089b      	lsrs	r3, r3, #2
 80007b4:	f8a6 30e6 	strh.w	r3, [r6, #230]	; 0xe6
 80007b8:	f9b6 30d4 	ldrsh.w	r3, [r6, #212]	; 0xd4
 80007bc:	3901      	subs	r1, #1
 80007be:	ea4f 0393 	mov.w	r3, r3, lsr #2
 80007c2:	f8a6 30d4 	strh.w	r3, [r6, #212]	; 0xd4
 80007c6:	f106 0602 	add.w	r6, r6, #2
 80007ca:	d1e1      	bne.n	8000790 <_ZN4CRGB8rgb_initEv+0xdc>
 80007cc:	4620      	mov	r0, r4
 80007ce:	f7ff fe4f 	bl	8000470 <_ZN4CRGB8rgb_readEh>
 80007d2:	b115      	cbz	r5, 80007da <_ZN4CRGB8rgb_initEv+0x126>
 80007d4:	4802      	ldr	r0, [pc, #8]	; (80007e0 <_ZN4CRGB8rgb_initEv+0x12c>)
 80007d6:	1b40      	subs	r0, r0, r5
 80007d8:	e000      	b.n	80007dc <_ZN4CRGB8rgb_initEv+0x128>
 80007da:	4628      	mov	r0, r5
 80007dc:	b005      	add	sp, #20
 80007de:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80007e0:	fffffc18 	.word	0xfffffc18

080007e4 <_ZN6CMotor7pwm_setEmm>:
 80007e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80007e8:	b086      	sub	sp, #24
 80007ea:	2370      	movs	r3, #112	; 0x70
 80007ec:	9301      	str	r3, [sp, #4]
 80007ee:	f8df 8070 	ldr.w	r8, [pc, #112]	; 8000860 <_ZN6CMotor7pwm_setEmm+0x7c>
 80007f2:	4c1a      	ldr	r4, [pc, #104]	; (800085c <_ZN6CMotor7pwm_setEmm+0x78>)
 80007f4:	f8d8 0000 	ldr.w	r0, [r8]
 80007f8:	2301      	movs	r3, #1
 80007fa:	f8ad 3008 	strh.w	r3, [sp, #8]
 80007fe:	2304      	movs	r3, #4
 8000800:	f8ad 300a 	strh.w	r3, [sp, #10]
 8000804:	f242 7710 	movw	r7, #10000	; 0x2710
 8000808:	2302      	movs	r3, #2
 800080a:	fbb0 f0f7 	udiv	r0, r0, r7
 800080e:	3802      	subs	r0, #2
 8000810:	4616      	mov	r6, r2
 8000812:	f8ad 3010 	strh.w	r3, [sp, #16]
 8000816:	f44f 7280 	mov.w	r2, #256	; 0x100
 800081a:	2300      	movs	r3, #0
 800081c:	2564      	movs	r5, #100	; 0x64
 800081e:	4341      	muls	r1, r0
 8000820:	fbb1 f0f5 	udiv	r0, r1, r5
 8000824:	a901      	add	r1, sp, #4
 8000826:	9003      	str	r0, [sp, #12]
 8000828:	4620      	mov	r0, r4
 800082a:	f8ad 3012 	strh.w	r3, [sp, #18]
 800082e:	f8ad 2014 	strh.w	r2, [sp, #20]
 8000832:	f8ad 3016 	strh.w	r3, [sp, #22]
 8000836:	f001 f98d 	bl	8001b54 <TIM_OC1Init>
 800083a:	f8d8 3000 	ldr.w	r3, [r8]
 800083e:	fbb3 f3f7 	udiv	r3, r3, r7
 8000842:	4620      	mov	r0, r4
 8000844:	3b02      	subs	r3, #2
 8000846:	a901      	add	r1, sp, #4
 8000848:	fb03 f206 	mul.w	r2, r3, r6
 800084c:	fbb2 f2f5 	udiv	r2, r2, r5
 8000850:	9203      	str	r2, [sp, #12]
 8000852:	f001 f9c5 	bl	8001be0 <TIM_OC2Init>
 8000856:	b006      	add	sp, #24
 8000858:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800085c:	40012c00 	.word	0x40012c00
 8000860:	20000030 	.word	0x20000030

08000864 <_ZN6CMotor13motor_refreshEv>:
 8000864:	6802      	ldr	r2, [r0, #0]
 8000866:	6841      	ldr	r1, [r0, #4]
 8000868:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800086c:	b510      	push	{r4, lr}
 800086e:	2a00      	cmp	r2, #0
 8000870:	f44f 4400 	mov.w	r4, #32768	; 0x8000
 8000874:	bfce      	itee	gt
 8000876:	851c      	strhgt	r4, [r3, #40]	; 0x28
 8000878:	619c      	strle	r4, [r3, #24]
 800087a:	4252      	negle	r2, r2
 800087c:	4b08      	ldr	r3, [pc, #32]	; (80008a0 <_ZN6CMotor13motor_refreshEv+0x3c>)
 800087e:	2900      	cmp	r1, #0
 8000880:	f04f 0420 	mov.w	r4, #32
 8000884:	bfd6      	itet	le
 8000886:	4249      	negle	r1, r1
 8000888:	851c      	strhgt	r4, [r3, #40]	; 0x28
 800088a:	619c      	strle	r4, [r3, #24]
 800088c:	2964      	cmp	r1, #100	; 0x64
 800088e:	bfa8      	it	ge
 8000890:	2164      	movge	r1, #100	; 0x64
 8000892:	2a64      	cmp	r2, #100	; 0x64
 8000894:	bfa8      	it	ge
 8000896:	2264      	movge	r2, #100	; 0x64
 8000898:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800089c:	f7ff bfa2 	b.w	80007e4 <_ZN6CMotor7pwm_setEmm>
 80008a0:	48000400 	.word	0x48000400

080008a4 <_ZN6CMotor9set_motorEml>:
 80008a4:	2901      	cmp	r1, #1
 80008a6:	bf98      	it	ls
 80008a8:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 80008ac:	f7ff bfda 	b.w	8000864 <_ZN6CMotor13motor_refreshEv>

080008b0 <_ZN6CMotor10motor_initEv>:
 80008b0:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80008b4:	4e42      	ldr	r6, [pc, #264]	; (80009c0 <_ZN6CMotor10motor_initEv+0x110>)
 80008b6:	b087      	sub	sp, #28
 80008b8:	2400      	movs	r4, #0
 80008ba:	2501      	movs	r5, #1
 80008bc:	4680      	mov	r8, r0
 80008be:	2703      	movs	r7, #3
 80008c0:	f04f 0910 	mov.w	r9, #16
 80008c4:	4630      	mov	r0, r6
 80008c6:	a901      	add	r1, sp, #4
 80008c8:	f8cd 9004 	str.w	r9, [sp, #4]
 80008cc:	f88d 5008 	strb.w	r5, [sp, #8]
 80008d0:	f88d 400a 	strb.w	r4, [sp, #10]
 80008d4:	f88d 7009 	strb.w	r7, [sp, #9]
 80008d8:	f88d 400b 	strb.w	r4, [sp, #11]
 80008dc:	f001 fbd0 	bl	8002080 <GPIO_Init>
 80008e0:	f8a6 9028 	strh.w	r9, [r6, #40]	; 0x28
 80008e4:	2320      	movs	r3, #32
 80008e6:	4630      	mov	r0, r6
 80008e8:	a901      	add	r1, sp, #4
 80008ea:	9301      	str	r3, [sp, #4]
 80008ec:	f88d 5008 	strb.w	r5, [sp, #8]
 80008f0:	f88d 400a 	strb.w	r4, [sp, #10]
 80008f4:	f88d 7009 	strb.w	r7, [sp, #9]
 80008f8:	f88d 400b 	strb.w	r4, [sp, #11]
 80008fc:	f001 fbc0 	bl	8002080 <GPIO_Init>
 8000900:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000904:	a901      	add	r1, sp, #4
 8000906:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800090a:	9301      	str	r3, [sp, #4]
 800090c:	f88d 5008 	strb.w	r5, [sp, #8]
 8000910:	f88d 400a 	strb.w	r4, [sp, #10]
 8000914:	f88d 7009 	strb.w	r7, [sp, #9]
 8000918:	f88d 400b 	strb.w	r4, [sp, #11]
 800091c:	f001 fbb0 	bl	8002080 <GPIO_Init>
 8000920:	4629      	mov	r1, r5
 8000922:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8000926:	f001 f89b 	bl	8001a60 <RCC_APB2PeriphClockCmd>
 800092a:	4629      	mov	r1, r5
 800092c:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000930:	f001 f888 	bl	8001a44 <RCC_AHBPeriphClockCmd>
 8000934:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 8000938:	9301      	str	r3, [sp, #4]
 800093a:	4630      	mov	r0, r6
 800093c:	2302      	movs	r3, #2
 800093e:	a901      	add	r1, sp, #4
 8000940:	f88d 3008 	strb.w	r3, [sp, #8]
 8000944:	f88d 7009 	strb.w	r7, [sp, #9]
 8000948:	f001 fb9a 	bl	8002080 <GPIO_Init>
 800094c:	4630      	mov	r0, r6
 800094e:	210d      	movs	r1, #13
 8000950:	2206      	movs	r2, #6
 8000952:	f001 fbdb 	bl	800210c <GPIO_PinAFConfig>
 8000956:	4630      	mov	r0, r6
 8000958:	210e      	movs	r1, #14
 800095a:	2206      	movs	r2, #6
 800095c:	f001 fbd6 	bl	800210c <GPIO_PinAFConfig>
 8000960:	4e18      	ldr	r6, [pc, #96]	; (80009c4 <_ZN6CMotor10motor_initEv+0x114>)
 8000962:	4b19      	ldr	r3, [pc, #100]	; (80009c8 <_ZN6CMotor10motor_initEv+0x118>)
 8000964:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000968:	f242 7210 	movw	r2, #10000	; 0x2710
 800096c:	4630      	mov	r0, r6
 800096e:	a903      	add	r1, sp, #12
 8000970:	681b      	ldr	r3, [r3, #0]
 8000972:	fbb3 f3f2 	udiv	r3, r3, r2
 8000976:	3b01      	subs	r3, #1
 8000978:	9304      	str	r3, [sp, #16]
 800097a:	f8ad 400e 	strh.w	r4, [sp, #14]
 800097e:	f8ad 4014 	strh.w	r4, [sp, #20]
 8000982:	f8ad 4016 	strh.w	r4, [sp, #22]
 8000986:	f001 f887 	bl	8001a98 <TIM_TimeBaseInit>
 800098a:	4622      	mov	r2, r4
 800098c:	4640      	mov	r0, r8
 800098e:	4621      	mov	r1, r4
 8000990:	f7ff ff28 	bl	80007e4 <_ZN6CMotor7pwm_setEmm>
 8000994:	4630      	mov	r0, r6
 8000996:	4629      	mov	r1, r5
 8000998:	f001 f8ce 	bl	8001b38 <TIM_Cmd>
 800099c:	4630      	mov	r0, r6
 800099e:	4629      	mov	r1, r5
 80009a0:	f001 f95c 	bl	8001c5c <TIM_CtrlPWMOutputs>
 80009a4:	4640      	mov	r0, r8
 80009a6:	4621      	mov	r1, r4
 80009a8:	4622      	mov	r2, r4
 80009aa:	f7ff ff7b 	bl	80008a4 <_ZN6CMotor9set_motorEml>
 80009ae:	4640      	mov	r0, r8
 80009b0:	4629      	mov	r1, r5
 80009b2:	4622      	mov	r2, r4
 80009b4:	f7ff ff76 	bl	80008a4 <_ZN6CMotor9set_motorEml>
 80009b8:	4620      	mov	r0, r4
 80009ba:	b007      	add	sp, #28
 80009bc:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80009c0:	48000400 	.word	0x48000400
 80009c4:	40012c00 	.word	0x40012c00
 80009c8:	20000030 	.word	0x20000030

080009cc <_ZN8CSensors12sensors_initEv>:
 80009cc:	b510      	push	{r4, lr}
 80009ce:	4604      	mov	r4, r0
 80009d0:	4808      	ldr	r0, [pc, #32]	; (80009f4 <_ZN8CSensors12sensors_initEv+0x28>)
 80009d2:	f000 fa13 	bl	8000dfc <_ZN4CI2C4initEv>
 80009d6:	4620      	mov	r0, r4
 80009d8:	f7ff fe6c 	bl	80006b4 <_ZN4CRGB8rgb_initEv>
 80009dc:	b110      	cbz	r0, 80009e4 <_ZN8CSensors12sensors_initEv+0x18>
 80009de:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 80009e2:	bd10      	pop	{r4, pc}
 80009e4:	f504 7098 	add.w	r0, r4, #304	; 0x130
 80009e8:	f000 fb98 	bl	800111c <_ZN4CIMU8imu_initEv>
 80009ec:	b108      	cbz	r0, 80009f2 <_ZN8CSensors12sensors_initEv+0x26>
 80009ee:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 80009f2:	bd10      	pop	{r4, pc}
 80009f4:	20000080 	.word	0x20000080

080009f8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 80009f8:	bf00      	nop
 80009fa:	bf00      	nop
 80009fc:	bf00      	nop
 80009fe:	bf00      	nop
 8000a00:	4770      	bx	lr
	...

08000a04 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000a04:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000a06:	7803      	ldrb	r3, [r0, #0]
 8000a08:	9300      	str	r3, [sp, #0]
 8000a0a:	2401      	movs	r4, #1
 8000a0c:	4605      	mov	r5, r0
 8000a0e:	2703      	movs	r7, #3
 8000a10:	2600      	movs	r6, #0
 8000a12:	4669      	mov	r1, sp
 8000a14:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a18:	f88d 6007 	strb.w	r6, [sp, #7]
 8000a1c:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a20:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a24:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a28:	f001 fb2a 	bl	8002080 <GPIO_Init>
 8000a2c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a30:	782a      	ldrb	r2, [r5, #0]
 8000a32:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a34:	f88d 6007 	strb.w	r6, [sp, #7]
 8000a38:	4e08      	ldr	r6, [pc, #32]	; (8000a5c <_ZN8CRGB_I2C12RGBSetLowSDAEv+0x58>)
 8000a3a:	9400      	str	r4, [sp, #0]
 8000a3c:	4630      	mov	r0, r6
 8000a3e:	4669      	mov	r1, sp
 8000a40:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a44:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a48:	f88d 4006 	strb.w	r4, [sp, #6]
 8000a4c:	f001 fb18 	bl	8002080 <GPIO_Init>
 8000a50:	8534      	strh	r4, [r6, #40]	; 0x28
 8000a52:	4628      	mov	r0, r5
 8000a54:	f7ff ffd0 	bl	80009f8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000a58:	b003      	add	sp, #12
 8000a5a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a5c:	48000400 	.word	0x48000400

08000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000a60:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000a62:	7803      	ldrb	r3, [r0, #0]
 8000a64:	9300      	str	r3, [sp, #0]
 8000a66:	2400      	movs	r4, #0
 8000a68:	4605      	mov	r5, r0
 8000a6a:	2703      	movs	r7, #3
 8000a6c:	4669      	mov	r1, sp
 8000a6e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a72:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a76:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a7a:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a7e:	f001 faff 	bl	8002080 <GPIO_Init>
 8000a82:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a86:	782a      	ldrb	r2, [r5, #0]
 8000a88:	619a      	str	r2, [r3, #24]
 8000a8a:	f88d 4004 	strb.w	r4, [sp, #4]
 8000a8e:	f88d 4007 	strb.w	r4, [sp, #7]
 8000a92:	4c07      	ldr	r4, [pc, #28]	; (8000ab0 <_ZN8CRGB_I2C13RGBSetHighSDAEv+0x50>)
 8000a94:	f88d 7005 	strb.w	r7, [sp, #5]
 8000a98:	2601      	movs	r6, #1
 8000a9a:	4620      	mov	r0, r4
 8000a9c:	4669      	mov	r1, sp
 8000a9e:	9600      	str	r6, [sp, #0]
 8000aa0:	f001 faee 	bl	8002080 <GPIO_Init>
 8000aa4:	61a6      	str	r6, [r4, #24]
 8000aa6:	4628      	mov	r0, r5
 8000aa8:	f7ff ffa6 	bl	80009f8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000aac:	b003      	add	sp, #12
 8000aae:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ab0:	48000400 	.word	0x48000400

08000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000ab4:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ab8:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000abc:	851a      	strh	r2, [r3, #40]	; 0x28
 8000abe:	f7ff bf9b 	b.w	80009f8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000ac2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000ac6:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000aca:	619a      	str	r2, [r3, #24]
 8000acc:	f7ff bf94 	b.w	80009f8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000ad0 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000ad0:	b510      	push	{r4, lr}
 8000ad2:	4604      	mov	r4, r0
 8000ad4:	f7ff fff5 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000ad8:	4620      	mov	r0, r4
 8000ada:	f7ff ffc1 	bl	8000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ade:	4620      	mov	r0, r4
 8000ae0:	f7ff ffef 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000ae4:	4620      	mov	r0, r4
 8000ae6:	f7ff ff8d 	bl	8000a04 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000aea:	4620      	mov	r0, r4
 8000aec:	f7ff ffe2 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000af0:	4620      	mov	r0, r4
 8000af2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000af6:	f7ff bfb3 	b.w	8000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000afa <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000afa:	b510      	push	{r4, lr}
 8000afc:	4604      	mov	r4, r0
 8000afe:	f7ff ffd9 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b02:	4620      	mov	r0, r4
 8000b04:	f7ff ff7e 	bl	8000a04 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b08:	4620      	mov	r0, r4
 8000b0a:	f7ff ffda 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b0e:	4620      	mov	r0, r4
 8000b10:	f7ff ff78 	bl	8000a04 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b14:	4620      	mov	r0, r4
 8000b16:	f7ff ffd4 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b1a:	4620      	mov	r0, r4
 8000b1c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000b20:	f7ff bf9e 	b.w	8000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000b24:	b570      	push	{r4, r5, r6, lr}
 8000b26:	4604      	mov	r4, r0
 8000b28:	460e      	mov	r6, r1
 8000b2a:	2508      	movs	r5, #8
 8000b2c:	4620      	mov	r0, r4
 8000b2e:	f7ff ffc1 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b32:	0633      	lsls	r3, r6, #24
 8000b34:	4620      	mov	r0, r4
 8000b36:	d502      	bpl.n	8000b3e <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000b38:	f7ff ff92 	bl	8000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b3c:	e001      	b.n	8000b42 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000b3e:	f7ff ff61 	bl	8000a04 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b42:	4620      	mov	r0, r4
 8000b44:	3d01      	subs	r5, #1
 8000b46:	f7ff ffbc 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b4a:	0076      	lsls	r6, r6, #1
 8000b4c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000b50:	b2f6      	uxtb	r6, r6
 8000b52:	d1eb      	bne.n	8000b2c <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000b54:	4620      	mov	r0, r4
 8000b56:	f7ff ffad 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b5a:	4620      	mov	r0, r4
 8000b5c:	f7ff ff80 	bl	8000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b60:	4620      	mov	r0, r4
 8000b62:	f7ff ffae 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b66:	4620      	mov	r0, r4
 8000b68:	f7ff ffa4 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b6c:	4620      	mov	r0, r4
 8000b6e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b72:	f7ff bf41 	b.w	80009f8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000b76 <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000b76:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b78:	4604      	mov	r4, r0
 8000b7a:	460f      	mov	r7, r1
 8000b7c:	4616      	mov	r6, r2
 8000b7e:	461d      	mov	r5, r3
 8000b80:	f7ff ffa6 	bl	8000ad0 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000b84:	4620      	mov	r0, r4
 8000b86:	4639      	mov	r1, r7
 8000b88:	f7ff ffcc 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b8c:	4620      	mov	r0, r4
 8000b8e:	4631      	mov	r1, r6
 8000b90:	f7ff ffc8 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b94:	4620      	mov	r0, r4
 8000b96:	4629      	mov	r1, r5
 8000b98:	f7ff ffc4 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b9c:	4620      	mov	r0, r4
 8000b9e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000ba2:	f7ff bfaa 	b.w	8000afa <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000ba8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000bac:	1e57      	subs	r7, r2, #1
 8000bae:	4605      	mov	r5, r0
 8000bb0:	4689      	mov	r9, r1
 8000bb2:	4614      	mov	r4, r2
 8000bb4:	f102 0808 	add.w	r8, r2, #8
 8000bb8:	463b      	mov	r3, r7
 8000bba:	2200      	movs	r2, #0
 8000bbc:	f803 2f01 	strb.w	r2, [r3, #1]!
 8000bc0:	4543      	cmp	r3, r8
 8000bc2:	d1fa      	bne.n	8000bba <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x12>
 8000bc4:	4628      	mov	r0, r5
 8000bc6:	f7ff ff75 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000bca:	4628      	mov	r0, r5
 8000bcc:	f7ff ff48 	bl	8000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000bd0:	2608      	movs	r6, #8
 8000bd2:	463b      	mov	r3, r7
 8000bd4:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000bd8:	0052      	lsls	r2, r2, #1
 8000bda:	4543      	cmp	r3, r8
 8000bdc:	701a      	strb	r2, [r3, #0]
 8000bde:	d1f9      	bne.n	8000bd4 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2c>
 8000be0:	4628      	mov	r0, r5
 8000be2:	f7ff ff6e 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000be6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000bea:	8a1b      	ldrh	r3, [r3, #16]
 8000bec:	b29b      	uxth	r3, r3
 8000bee:	07d9      	lsls	r1, r3, #31
 8000bf0:	bf42      	ittt	mi
 8000bf2:	7822      	ldrbmi	r2, [r4, #0]
 8000bf4:	f042 0201 	orrmi.w	r2, r2, #1
 8000bf8:	7022      	strbmi	r2, [r4, #0]
 8000bfa:	079a      	lsls	r2, r3, #30
 8000bfc:	bf42      	ittt	mi
 8000bfe:	7862      	ldrbmi	r2, [r4, #1]
 8000c00:	f042 0201 	orrmi.w	r2, r2, #1
 8000c04:	7062      	strbmi	r2, [r4, #1]
 8000c06:	0758      	lsls	r0, r3, #29
 8000c08:	bf42      	ittt	mi
 8000c0a:	78a2      	ldrbmi	r2, [r4, #2]
 8000c0c:	f042 0201 	orrmi.w	r2, r2, #1
 8000c10:	70a2      	strbmi	r2, [r4, #2]
 8000c12:	0719      	lsls	r1, r3, #28
 8000c14:	bf42      	ittt	mi
 8000c16:	78e2      	ldrbmi	r2, [r4, #3]
 8000c18:	f042 0201 	orrmi.w	r2, r2, #1
 8000c1c:	70e2      	strbmi	r2, [r4, #3]
 8000c1e:	06da      	lsls	r2, r3, #27
 8000c20:	bf42      	ittt	mi
 8000c22:	7922      	ldrbmi	r2, [r4, #4]
 8000c24:	f042 0201 	orrmi.w	r2, r2, #1
 8000c28:	7122      	strbmi	r2, [r4, #4]
 8000c2a:	0698      	lsls	r0, r3, #26
 8000c2c:	bf42      	ittt	mi
 8000c2e:	7962      	ldrbmi	r2, [r4, #5]
 8000c30:	f042 0201 	orrmi.w	r2, r2, #1
 8000c34:	7162      	strbmi	r2, [r4, #5]
 8000c36:	0659      	lsls	r1, r3, #25
 8000c38:	bf42      	ittt	mi
 8000c3a:	79a2      	ldrbmi	r2, [r4, #6]
 8000c3c:	f042 0201 	orrmi.w	r2, r2, #1
 8000c40:	71a2      	strbmi	r2, [r4, #6]
 8000c42:	061a      	lsls	r2, r3, #24
 8000c44:	bf42      	ittt	mi
 8000c46:	79e3      	ldrbmi	r3, [r4, #7]
 8000c48:	f043 0301 	orrmi.w	r3, r3, #1
 8000c4c:	71e3      	strbmi	r3, [r4, #7]
 8000c4e:	4b0f      	ldr	r3, [pc, #60]	; (8000c8c <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xe4>)
 8000c50:	8a1b      	ldrh	r3, [r3, #16]
 8000c52:	07db      	lsls	r3, r3, #31
 8000c54:	bf42      	ittt	mi
 8000c56:	7a23      	ldrbmi	r3, [r4, #8]
 8000c58:	f043 0301 	orrmi.w	r3, r3, #1
 8000c5c:	7223      	strbmi	r3, [r4, #8]
 8000c5e:	4628      	mov	r0, r5
 8000c60:	f7ff ff28 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c64:	3e01      	subs	r6, #1
 8000c66:	d1b4      	bne.n	8000bd2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2a>
 8000c68:	f1b9 0f00 	cmp.w	r9, #0
 8000c6c:	d002      	beq.n	8000c74 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xcc>
 8000c6e:	4628      	mov	r0, r5
 8000c70:	f7ff fec8 	bl	8000a04 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c74:	4628      	mov	r0, r5
 8000c76:	f7ff ff24 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c7a:	4628      	mov	r0, r5
 8000c7c:	f7ff ff1a 	bl	8000ab4 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c80:	4628      	mov	r0, r5
 8000c82:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000c86:	f7ff beb7 	b.w	80009f8 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000c8a:	bf00      	nop
 8000c8c:	48000400 	.word	0x48000400

08000c90 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000c90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000c92:	4604      	mov	r4, r0
 8000c94:	460d      	mov	r5, r1
 8000c96:	4617      	mov	r7, r2
 8000c98:	461e      	mov	r6, r3
 8000c9a:	f7ff ff19 	bl	8000ad0 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000c9e:	4620      	mov	r0, r4
 8000ca0:	4629      	mov	r1, r5
 8000ca2:	f7ff ff3f 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000ca6:	4639      	mov	r1, r7
 8000ca8:	4620      	mov	r0, r4
 8000caa:	f7ff ff3b 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000cae:	4620      	mov	r0, r4
 8000cb0:	f7ff ff0e 	bl	8000ad0 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000cb4:	4620      	mov	r0, r4
 8000cb6:	f045 0101 	orr.w	r1, r5, #1
 8000cba:	f7ff ff33 	bl	8000b24 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000cbe:	4620      	mov	r0, r4
 8000cc0:	4632      	mov	r2, r6
 8000cc2:	2100      	movs	r1, #0
 8000cc4:	f7ff ff70 	bl	8000ba8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000cc8:	4620      	mov	r0, r4
 8000cca:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000cce:	f7ff bf14 	b.w	8000afa <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000cd4 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000cd4:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8000cd8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8000cdc:	2400      	movs	r4, #0
 8000cde:	4605      	mov	r5, r0
 8000ce0:	2601      	movs	r6, #1
 8000ce2:	2703      	movs	r7, #3
 8000ce4:	6003      	str	r3, [r0, #0]
 8000ce6:	4669      	mov	r1, sp
 8000ce8:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000cec:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cf0:	9300      	str	r3, [sp, #0]
 8000cf2:	f88d 4006 	strb.w	r4, [sp, #6]
 8000cf6:	f88d 4007 	strb.w	r4, [sp, #7]
 8000cfa:	f04f 08ff 	mov.w	r8, #255	; 0xff
 8000cfe:	f88d 6004 	strb.w	r6, [sp, #4]
 8000d02:	f88d 7005 	strb.w	r7, [sp, #5]
 8000d06:	f001 f9bb 	bl	8002080 <GPIO_Init>
 8000d0a:	4669      	mov	r1, sp
 8000d0c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000d10:	f88d 4004 	strb.w	r4, [sp, #4]
 8000d14:	f88d 4007 	strb.w	r4, [sp, #7]
 8000d18:	f8cd 8000 	str.w	r8, [sp]
 8000d1c:	f88d 7005 	strb.w	r7, [sp, #5]
 8000d20:	f001 f9ae 	bl	8002080 <GPIO_Init>
 8000d24:	4641      	mov	r1, r8
 8000d26:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000d2a:	f001 f9eb 	bl	8002104 <GPIO_SetBits>
 8000d2e:	f88d 4004 	strb.w	r4, [sp, #4]
 8000d32:	f88d 4007 	strb.w	r4, [sp, #7]
 8000d36:	4c0c      	ldr	r4, [pc, #48]	; (8000d68 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x94>)
 8000d38:	9600      	str	r6, [sp, #0]
 8000d3a:	4620      	mov	r0, r4
 8000d3c:	4669      	mov	r1, sp
 8000d3e:	f88d 7005 	strb.w	r7, [sp, #5]
 8000d42:	f001 f99d 	bl	8002080 <GPIO_Init>
 8000d46:	4631      	mov	r1, r6
 8000d48:	4620      	mov	r0, r4
 8000d4a:	f001 f9db 	bl	8002104 <GPIO_SetBits>
 8000d4e:	4628      	mov	r0, r5
 8000d50:	f7ff feb7 	bl	8000ac2 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000d54:	4628      	mov	r0, r5
 8000d56:	f7ff fe55 	bl	8000a04 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000d5a:	4628      	mov	r0, r5
 8000d5c:	f7ff fe80 	bl	8000a60 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000d60:	b002      	add	sp, #8
 8000d62:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000d66:	bf00      	nop
 8000d68:	48000400 	.word	0x48000400

08000d6c <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>:
 8000d6c:	2300      	movs	r3, #0
 8000d6e:	6003      	str	r3, [r0, #0]
 8000d70:	4770      	bx	lr

08000d72 <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>:
 8000d72:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8000d76:	6003      	str	r3, [r0, #0]
 8000d78:	4770      	bx	lr

08000d7a <_ZN4CI2C5delayEv>:
 8000d7a:	230b      	movs	r3, #11
 8000d7c:	3b01      	subs	r3, #1
 8000d7e:	d001      	beq.n	8000d84 <_ZN4CI2C5delayEv+0xa>
 8000d80:	bf00      	nop
 8000d82:	e7fb      	b.n	8000d7c <_ZN4CI2C5delayEv+0x2>
 8000d84:	4770      	bx	lr
	...

08000d88 <_ZN4CI2C9SetLowSDAEv>:
 8000d88:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000d8a:	4c0c      	ldr	r4, [pc, #48]	; (8000dbc <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000d8c:	2301      	movs	r3, #1
 8000d8e:	2203      	movs	r2, #3
 8000d90:	4606      	mov	r6, r0
 8000d92:	2580      	movs	r5, #128	; 0x80
 8000d94:	f88d 3004 	strb.w	r3, [sp, #4]
 8000d98:	f88d 3006 	strb.w	r3, [sp, #6]
 8000d9c:	4620      	mov	r0, r4
 8000d9e:	2300      	movs	r3, #0
 8000da0:	4669      	mov	r1, sp
 8000da2:	f88d 2005 	strb.w	r2, [sp, #5]
 8000da6:	f88d 3007 	strb.w	r3, [sp, #7]
 8000daa:	9500      	str	r5, [sp, #0]
 8000dac:	f001 f968 	bl	8002080 <GPIO_Init>
 8000db0:	8525      	strh	r5, [r4, #40]	; 0x28
 8000db2:	4630      	mov	r0, r6
 8000db4:	f7ff ffe1 	bl	8000d7a <_ZN4CI2C5delayEv>
 8000db8:	b002      	add	sp, #8
 8000dba:	bd70      	pop	{r4, r5, r6, pc}
 8000dbc:	48000400 	.word	0x48000400

08000dc0 <_ZN4CI2C10SetHighSDAEv>:
 8000dc0:	4b05      	ldr	r3, [pc, #20]	; (8000dd8 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000dc2:	681a      	ldr	r2, [r3, #0]
 8000dc4:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000dc8:	601a      	str	r2, [r3, #0]
 8000dca:	681a      	ldr	r2, [r3, #0]
 8000dcc:	601a      	str	r2, [r3, #0]
 8000dce:	2280      	movs	r2, #128	; 0x80
 8000dd0:	619a      	str	r2, [r3, #24]
 8000dd2:	f7ff bfd2 	b.w	8000d7a <_ZN4CI2C5delayEv>
 8000dd6:	bf00      	nop
 8000dd8:	48000400 	.word	0x48000400

08000ddc <_ZN4CI2C9SetLowSCLEv>:
 8000ddc:	4b02      	ldr	r3, [pc, #8]	; (8000de8 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000dde:	2240      	movs	r2, #64	; 0x40
 8000de0:	851a      	strh	r2, [r3, #40]	; 0x28
 8000de2:	f7ff bfca 	b.w	8000d7a <_ZN4CI2C5delayEv>
 8000de6:	bf00      	nop
 8000de8:	48000400 	.word	0x48000400

08000dec <_ZN4CI2C10SetHighSCLEv>:
 8000dec:	4b02      	ldr	r3, [pc, #8]	; (8000df8 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000dee:	2240      	movs	r2, #64	; 0x40
 8000df0:	619a      	str	r2, [r3, #24]
 8000df2:	f7ff bfc2 	b.w	8000d7a <_ZN4CI2C5delayEv>
 8000df6:	bf00      	nop
 8000df8:	48000400 	.word	0x48000400

08000dfc <_ZN4CI2C4initEv>:
 8000dfc:	b513      	push	{r0, r1, r4, lr}
 8000dfe:	4604      	mov	r4, r0
 8000e00:	2101      	movs	r1, #1
 8000e02:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000e06:	f000 fe1d 	bl	8001a44 <RCC_AHBPeriphClockCmd>
 8000e0a:	23c0      	movs	r3, #192	; 0xc0
 8000e0c:	9300      	str	r3, [sp, #0]
 8000e0e:	2301      	movs	r3, #1
 8000e10:	2203      	movs	r2, #3
 8000e12:	4669      	mov	r1, sp
 8000e14:	f88d 3004 	strb.w	r3, [sp, #4]
 8000e18:	f88d 3006 	strb.w	r3, [sp, #6]
 8000e1c:	4809      	ldr	r0, [pc, #36]	; (8000e44 <_ZN4CI2C4initEv+0x48>)
 8000e1e:	f88d 2005 	strb.w	r2, [sp, #5]
 8000e22:	2300      	movs	r3, #0
 8000e24:	f88d 3007 	strb.w	r3, [sp, #7]
 8000e28:	f001 f92a 	bl	8002080 <GPIO_Init>
 8000e2c:	4620      	mov	r0, r4
 8000e2e:	f7ff ffdd 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000e32:	4620      	mov	r0, r4
 8000e34:	f7ff ffa8 	bl	8000d88 <_ZN4CI2C9SetLowSDAEv>
 8000e38:	4620      	mov	r0, r4
 8000e3a:	f7ff ffc1 	bl	8000dc0 <_ZN4CI2C10SetHighSDAEv>
 8000e3e:	b002      	add	sp, #8
 8000e40:	bd10      	pop	{r4, pc}
 8000e42:	bf00      	nop
 8000e44:	48000400 	.word	0x48000400

08000e48 <_ZN4CI2C5StartEv>:
 8000e48:	b510      	push	{r4, lr}
 8000e4a:	4604      	mov	r4, r0
 8000e4c:	f7ff ffce 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000e50:	4620      	mov	r0, r4
 8000e52:	f7ff ffb5 	bl	8000dc0 <_ZN4CI2C10SetHighSDAEv>
 8000e56:	4620      	mov	r0, r4
 8000e58:	f7ff ffc8 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000e5c:	4620      	mov	r0, r4
 8000e5e:	f7ff ff93 	bl	8000d88 <_ZN4CI2C9SetLowSDAEv>
 8000e62:	4620      	mov	r0, r4
 8000e64:	f7ff ffba 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000e68:	4620      	mov	r0, r4
 8000e6a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e6e:	f7ff bfa7 	b.w	8000dc0 <_ZN4CI2C10SetHighSDAEv>

08000e72 <_ZN4CI2C4StopEv>:
 8000e72:	b510      	push	{r4, lr}
 8000e74:	4604      	mov	r4, r0
 8000e76:	f7ff ffb1 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000e7a:	4620      	mov	r0, r4
 8000e7c:	f7ff ff84 	bl	8000d88 <_ZN4CI2C9SetLowSDAEv>
 8000e80:	4620      	mov	r0, r4
 8000e82:	f7ff ffb3 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000e86:	4620      	mov	r0, r4
 8000e88:	f7ff ff7e 	bl	8000d88 <_ZN4CI2C9SetLowSDAEv>
 8000e8c:	4620      	mov	r0, r4
 8000e8e:	f7ff ffad 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000e92:	4620      	mov	r0, r4
 8000e94:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000e98:	f7ff bf92 	b.w	8000dc0 <_ZN4CI2C10SetHighSDAEv>

08000e9c <_ZN4CI2C5WriteEh>:
 8000e9c:	b570      	push	{r4, r5, r6, lr}
 8000e9e:	4604      	mov	r4, r0
 8000ea0:	460e      	mov	r6, r1
 8000ea2:	2508      	movs	r5, #8
 8000ea4:	4620      	mov	r0, r4
 8000ea6:	f7ff ff99 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000eaa:	0633      	lsls	r3, r6, #24
 8000eac:	4620      	mov	r0, r4
 8000eae:	d502      	bpl.n	8000eb6 <_ZN4CI2C5WriteEh+0x1a>
 8000eb0:	f7ff ff86 	bl	8000dc0 <_ZN4CI2C10SetHighSDAEv>
 8000eb4:	e001      	b.n	8000eba <_ZN4CI2C5WriteEh+0x1e>
 8000eb6:	f7ff ff67 	bl	8000d88 <_ZN4CI2C9SetLowSDAEv>
 8000eba:	4620      	mov	r0, r4
 8000ebc:	3d01      	subs	r5, #1
 8000ebe:	f7ff ff95 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000ec2:	0076      	lsls	r6, r6, #1
 8000ec4:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000ec8:	b2f6      	uxtb	r6, r6
 8000eca:	d1eb      	bne.n	8000ea4 <_ZN4CI2C5WriteEh+0x8>
 8000ecc:	4620      	mov	r0, r4
 8000ece:	f7ff ff85 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000ed2:	4620      	mov	r0, r4
 8000ed4:	f7ff ff74 	bl	8000dc0 <_ZN4CI2C10SetHighSDAEv>
 8000ed8:	4620      	mov	r0, r4
 8000eda:	f7ff ff87 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000ede:	4b07      	ldr	r3, [pc, #28]	; (8000efc <_ZN4CI2C5WriteEh+0x60>)
 8000ee0:	8a1d      	ldrh	r5, [r3, #16]
 8000ee2:	4620      	mov	r0, r4
 8000ee4:	f7ff ff7a 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000ee8:	b2ad      	uxth	r5, r5
 8000eea:	4620      	mov	r0, r4
 8000eec:	f7ff ff45 	bl	8000d7a <_ZN4CI2C5delayEv>
 8000ef0:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8000ef4:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000ef8:	bd70      	pop	{r4, r5, r6, pc}
 8000efa:	bf00      	nop
 8000efc:	48000400 	.word	0x48000400

08000f00 <_ZN4CI2C9write_regEhhh>:
 8000f00:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000f02:	4604      	mov	r4, r0
 8000f04:	460f      	mov	r7, r1
 8000f06:	4616      	mov	r6, r2
 8000f08:	461d      	mov	r5, r3
 8000f0a:	f7ff ff9d 	bl	8000e48 <_ZN4CI2C5StartEv>
 8000f0e:	4639      	mov	r1, r7
 8000f10:	4620      	mov	r0, r4
 8000f12:	f7ff ffc3 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000f16:	4631      	mov	r1, r6
 8000f18:	4620      	mov	r0, r4
 8000f1a:	f7ff ffbf 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000f1e:	4620      	mov	r0, r4
 8000f20:	4629      	mov	r1, r5
 8000f22:	f7ff ffbb 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000f26:	4620      	mov	r0, r4
 8000f28:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000f2c:	f7ff bfa1 	b.w	8000e72 <_ZN4CI2C4StopEv>

08000f30 <_ZN4CI2C4ReadEh>:
 8000f30:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000f32:	4605      	mov	r5, r0
 8000f34:	460f      	mov	r7, r1
 8000f36:	f7ff ff51 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000f3a:	2608      	movs	r6, #8
 8000f3c:	2400      	movs	r4, #0
 8000f3e:	4628      	mov	r0, r5
 8000f40:	f7ff ff54 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000f44:	4b10      	ldr	r3, [pc, #64]	; (8000f88 <_ZN4CI2C4ReadEh+0x58>)
 8000f46:	8a1b      	ldrh	r3, [r3, #16]
 8000f48:	0064      	lsls	r4, r4, #1
 8000f4a:	061b      	lsls	r3, r3, #24
 8000f4c:	b2e4      	uxtb	r4, r4
 8000f4e:	4628      	mov	r0, r5
 8000f50:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000f54:	bf48      	it	mi
 8000f56:	f044 0401 	orrmi.w	r4, r4, #1
 8000f5a:	f7ff ff3f 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000f5e:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000f62:	d1ec      	bne.n	8000f3e <_ZN4CI2C4ReadEh+0xe>
 8000f64:	4628      	mov	r0, r5
 8000f66:	b117      	cbz	r7, 8000f6e <_ZN4CI2C4ReadEh+0x3e>
 8000f68:	f7ff ff0e 	bl	8000d88 <_ZN4CI2C9SetLowSDAEv>
 8000f6c:	e001      	b.n	8000f72 <_ZN4CI2C4ReadEh+0x42>
 8000f6e:	f7ff ff27 	bl	8000dc0 <_ZN4CI2C10SetHighSDAEv>
 8000f72:	4628      	mov	r0, r5
 8000f74:	f7ff ff3a 	bl	8000dec <_ZN4CI2C10SetHighSCLEv>
 8000f78:	4628      	mov	r0, r5
 8000f7a:	f7ff ff2f 	bl	8000ddc <_ZN4CI2C9SetLowSCLEv>
 8000f7e:	4628      	mov	r0, r5
 8000f80:	f7ff ff1e 	bl	8000dc0 <_ZN4CI2C10SetHighSDAEv>
 8000f84:	4620      	mov	r0, r4
 8000f86:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000f88:	48000400 	.word	0x48000400

08000f8c <_ZN4CI2C8read_regEhh>:
 8000f8c:	b570      	push	{r4, r5, r6, lr}
 8000f8e:	4604      	mov	r4, r0
 8000f90:	460d      	mov	r5, r1
 8000f92:	4616      	mov	r6, r2
 8000f94:	f7ff ff58 	bl	8000e48 <_ZN4CI2C5StartEv>
 8000f98:	4629      	mov	r1, r5
 8000f9a:	4620      	mov	r0, r4
 8000f9c:	f7ff ff7e 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000fa0:	4631      	mov	r1, r6
 8000fa2:	4620      	mov	r0, r4
 8000fa4:	f7ff ff7a 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000fa8:	4620      	mov	r0, r4
 8000faa:	f7ff ff4d 	bl	8000e48 <_ZN4CI2C5StartEv>
 8000fae:	f045 0101 	orr.w	r1, r5, #1
 8000fb2:	4620      	mov	r0, r4
 8000fb4:	f7ff ff72 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000fb8:	2100      	movs	r1, #0
 8000fba:	4620      	mov	r0, r4
 8000fbc:	f7ff ffb8 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8000fc0:	4605      	mov	r5, r0
 8000fc2:	4620      	mov	r0, r4
 8000fc4:	f7ff ff55 	bl	8000e72 <_ZN4CI2C4StopEv>
 8000fc8:	4628      	mov	r0, r5
 8000fca:	bd70      	pop	{r4, r5, r6, pc}

08000fcc <_ZN4CIMU8imu_readEv>:
 8000fcc:	b570      	push	{r4, r5, r6, lr}
 8000fce:	4c52      	ldr	r4, [pc, #328]	; (8001118 <_ZN4CIMU8imu_readEv+0x14c>)
 8000fd0:	4605      	mov	r5, r0
 8000fd2:	4620      	mov	r0, r4
 8000fd4:	f7ff ff38 	bl	8000e48 <_ZN4CI2C5StartEv>
 8000fd8:	4620      	mov	r0, r4
 8000fda:	21d4      	movs	r1, #212	; 0xd4
 8000fdc:	f7ff ff5e 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000fe0:	21a8      	movs	r1, #168	; 0xa8
 8000fe2:	4620      	mov	r0, r4
 8000fe4:	f7ff ff5a 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000fe8:	4620      	mov	r0, r4
 8000fea:	f7ff ff2d 	bl	8000e48 <_ZN4CI2C5StartEv>
 8000fee:	4620      	mov	r0, r4
 8000ff0:	21d5      	movs	r1, #213	; 0xd5
 8000ff2:	f7ff ff53 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8000ff6:	4620      	mov	r0, r4
 8000ff8:	2101      	movs	r1, #1
 8000ffa:	f7ff ff99 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8000ffe:	2101      	movs	r1, #1
 8001000:	b286      	uxth	r6, r0
 8001002:	4620      	mov	r0, r4
 8001004:	f7ff ff94 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8001008:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800100c:	b200      	sxth	r0, r0
 800100e:	6268      	str	r0, [r5, #36]	; 0x24
 8001010:	2101      	movs	r1, #1
 8001012:	4620      	mov	r0, r4
 8001014:	f7ff ff8c 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8001018:	2101      	movs	r1, #1
 800101a:	b286      	uxth	r6, r0
 800101c:	4620      	mov	r0, r4
 800101e:	f7ff ff87 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8001022:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001026:	b200      	sxth	r0, r0
 8001028:	62a8      	str	r0, [r5, #40]	; 0x28
 800102a:	2101      	movs	r1, #1
 800102c:	4620      	mov	r0, r4
 800102e:	f7ff ff7f 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8001032:	2100      	movs	r1, #0
 8001034:	b286      	uxth	r6, r0
 8001036:	4620      	mov	r0, r4
 8001038:	f7ff ff7a 	bl	8000f30 <_ZN4CI2C4ReadEh>
 800103c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001040:	b200      	sxth	r0, r0
 8001042:	62e8      	str	r0, [r5, #44]	; 0x2c
 8001044:	4620      	mov	r0, r4
 8001046:	f7ff ff14 	bl	8000e72 <_ZN4CI2C4StopEv>
 800104a:	4620      	mov	r0, r4
 800104c:	f7ff fefc 	bl	8000e48 <_ZN4CI2C5StartEv>
 8001050:	4620      	mov	r0, r4
 8001052:	213c      	movs	r1, #60	; 0x3c
 8001054:	f7ff ff22 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8001058:	21a8      	movs	r1, #168	; 0xa8
 800105a:	4620      	mov	r0, r4
 800105c:	f7ff ff1e 	bl	8000e9c <_ZN4CI2C5WriteEh>
 8001060:	4620      	mov	r0, r4
 8001062:	f7ff fef1 	bl	8000e48 <_ZN4CI2C5StartEv>
 8001066:	4620      	mov	r0, r4
 8001068:	213d      	movs	r1, #61	; 0x3d
 800106a:	f7ff ff17 	bl	8000e9c <_ZN4CI2C5WriteEh>
 800106e:	4620      	mov	r0, r4
 8001070:	2101      	movs	r1, #1
 8001072:	f7ff ff5d 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8001076:	2101      	movs	r1, #1
 8001078:	b286      	uxth	r6, r0
 800107a:	4620      	mov	r0, r4
 800107c:	f7ff ff58 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8001080:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001084:	b200      	sxth	r0, r0
 8001086:	6328      	str	r0, [r5, #48]	; 0x30
 8001088:	2101      	movs	r1, #1
 800108a:	4620      	mov	r0, r4
 800108c:	f7ff ff50 	bl	8000f30 <_ZN4CI2C4ReadEh>
 8001090:	2101      	movs	r1, #1
 8001092:	b286      	uxth	r6, r0
 8001094:	4620      	mov	r0, r4
 8001096:	f7ff ff4b 	bl	8000f30 <_ZN4CI2C4ReadEh>
 800109a:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 800109e:	b200      	sxth	r0, r0
 80010a0:	6368      	str	r0, [r5, #52]	; 0x34
 80010a2:	2101      	movs	r1, #1
 80010a4:	4620      	mov	r0, r4
 80010a6:	f7ff ff43 	bl	8000f30 <_ZN4CI2C4ReadEh>
 80010aa:	2100      	movs	r1, #0
 80010ac:	b286      	uxth	r6, r0
 80010ae:	4620      	mov	r0, r4
 80010b0:	f7ff ff3e 	bl	8000f30 <_ZN4CI2C4ReadEh>
 80010b4:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 80010b8:	b200      	sxth	r0, r0
 80010ba:	63a8      	str	r0, [r5, #56]	; 0x38
 80010bc:	4620      	mov	r0, r4
 80010be:	f7ff fed8 	bl	8000e72 <_ZN4CI2C4StopEv>
 80010c2:	6aaa      	ldr	r2, [r5, #40]	; 0x28
 80010c4:	686b      	ldr	r3, [r5, #4]
 80010c6:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 80010c8:	1a9b      	subs	r3, r3, r2
 80010ca:	68ea      	ldr	r2, [r5, #12]
 80010cc:	26c8      	movs	r6, #200	; 0xc8
 80010ce:	fb93 f3f6 	sdiv	r3, r3, r6
 80010d2:	441a      	add	r2, r3
 80010d4:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 80010d6:	60ea      	str	r2, [r5, #12]
 80010d8:	2164      	movs	r1, #100	; 0x64
 80010da:	4359      	muls	r1, r3
 80010dc:	f640 14e2 	movw	r4, #2530	; 0x9e2
 80010e0:	434a      	muls	r2, r1
 80010e2:	682b      	ldr	r3, [r5, #0]
 80010e4:	fb92 f2f4 	sdiv	r2, r2, r4
 80010e8:	61aa      	str	r2, [r5, #24]
 80010ea:	6a6a      	ldr	r2, [r5, #36]	; 0x24
 80010ec:	1a9b      	subs	r3, r3, r2
 80010ee:	692a      	ldr	r2, [r5, #16]
 80010f0:	fb93 f3f6 	sdiv	r3, r3, r6
 80010f4:	441a      	add	r2, r3
 80010f6:	612a      	str	r2, [r5, #16]
 80010f8:	434a      	muls	r2, r1
 80010fa:	fb92 f2f4 	sdiv	r2, r2, r4
 80010fe:	61ea      	str	r2, [r5, #28]
 8001100:	68aa      	ldr	r2, [r5, #8]
 8001102:	1a12      	subs	r2, r2, r0
 8001104:	fb92 f0f6 	sdiv	r0, r2, r6
 8001108:	696a      	ldr	r2, [r5, #20]
 800110a:	1883      	adds	r3, r0, r2
 800110c:	616b      	str	r3, [r5, #20]
 800110e:	434b      	muls	r3, r1
 8001110:	fb93 f3f4 	sdiv	r3, r3, r4
 8001114:	622b      	str	r3, [r5, #32]
 8001116:	bd70      	pop	{r4, r5, r6, pc}
 8001118:	20000080 	.word	0x20000080

0800111c <_ZN4CIMU8imu_initEv>:
 800111c:	230a      	movs	r3, #10
 800111e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001122:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001124:	2300      	movs	r3, #0
 8001126:	4604      	mov	r4, r0
 8001128:	6003      	str	r3, [r0, #0]
 800112a:	6043      	str	r3, [r0, #4]
 800112c:	6083      	str	r3, [r0, #8]
 800112e:	60c3      	str	r3, [r0, #12]
 8001130:	6103      	str	r3, [r0, #16]
 8001132:	6143      	str	r3, [r0, #20]
 8001134:	f242 7511 	movw	r5, #10001	; 0x2711
 8001138:	3d01      	subs	r5, #1
 800113a:	d001      	beq.n	8001140 <_ZN4CIMU8imu_initEv+0x24>
 800113c:	bf00      	nop
 800113e:	e7fb      	b.n	8001138 <_ZN4CIMU8imu_initEv+0x1c>
 8001140:	4832      	ldr	r0, [pc, #200]	; (800120c <_ZN4CIMU8imu_initEv+0xf0>)
 8001142:	21d4      	movs	r1, #212	; 0xd4
 8001144:	220f      	movs	r2, #15
 8001146:	f7ff ff21 	bl	8000f8c <_ZN4CI2C8read_regEhh>
 800114a:	28d4      	cmp	r0, #212	; 0xd4
 800114c:	4606      	mov	r6, r0
 800114e:	d155      	bne.n	80011fc <_ZN4CIMU8imu_initEv+0xe0>
 8001150:	482e      	ldr	r0, [pc, #184]	; (800120c <_ZN4CIMU8imu_initEv+0xf0>)
 8001152:	213c      	movs	r1, #60	; 0x3c
 8001154:	220f      	movs	r2, #15
 8001156:	f7ff ff19 	bl	8000f8c <_ZN4CI2C8read_regEhh>
 800115a:	2849      	cmp	r0, #73	; 0x49
 800115c:	d152      	bne.n	8001204 <_ZN4CIMU8imu_initEv+0xe8>
 800115e:	4631      	mov	r1, r6
 8001160:	482a      	ldr	r0, [pc, #168]	; (800120c <_ZN4CIMU8imu_initEv+0xf0>)
 8001162:	2220      	movs	r2, #32
 8001164:	23ff      	movs	r3, #255	; 0xff
 8001166:	f7ff fecb 	bl	8000f00 <_ZN4CI2C9write_regEhhh>
 800116a:	4631      	mov	r1, r6
 800116c:	4827      	ldr	r0, [pc, #156]	; (800120c <_ZN4CIMU8imu_initEv+0xf0>)
 800116e:	4e28      	ldr	r6, [pc, #160]	; (8001210 <_ZN4CIMU8imu_initEv+0xf4>)
 8001170:	2223      	movs	r2, #35	; 0x23
 8001172:	2310      	movs	r3, #16
 8001174:	f7ff fec4 	bl	8000f00 <_ZN4CI2C9write_regEhhh>
 8001178:	4824      	ldr	r0, [pc, #144]	; (800120c <_ZN4CIMU8imu_initEv+0xf0>)
 800117a:	213c      	movs	r1, #60	; 0x3c
 800117c:	221f      	movs	r2, #31
 800117e:	462b      	mov	r3, r5
 8001180:	f7ff febe 	bl	8000f00 <_ZN4CI2C9write_regEhhh>
 8001184:	4821      	ldr	r0, [pc, #132]	; (800120c <_ZN4CIMU8imu_initEv+0xf0>)
 8001186:	213c      	movs	r1, #60	; 0x3c
 8001188:	2220      	movs	r2, #32
 800118a:	2367      	movs	r3, #103	; 0x67
 800118c:	f7ff feb8 	bl	8000f00 <_ZN4CI2C9write_regEhhh>
 8001190:	481e      	ldr	r0, [pc, #120]	; (800120c <_ZN4CIMU8imu_initEv+0xf0>)
 8001192:	213c      	movs	r1, #60	; 0x3c
 8001194:	2221      	movs	r2, #33	; 0x21
 8001196:	462b      	mov	r3, r5
 8001198:	f7ff feb2 	bl	8000f00 <_ZN4CI2C9write_regEhhh>
 800119c:	3e01      	subs	r6, #1
 800119e:	d001      	beq.n	80011a4 <_ZN4CIMU8imu_initEv+0x88>
 80011a0:	bf00      	nop
 80011a2:	e7fb      	b.n	800119c <_ZN4CIMU8imu_initEv+0x80>
 80011a4:	4620      	mov	r0, r4
 80011a6:	f7ff ff11 	bl	8000fcc <_ZN4CIMU8imu_readEv>
 80011aa:	2564      	movs	r5, #100	; 0x64
 80011ac:	4637      	mov	r7, r6
 80011ae:	46b0      	mov	r8, r6
 80011b0:	2365      	movs	r3, #101	; 0x65
 80011b2:	3b01      	subs	r3, #1
 80011b4:	d001      	beq.n	80011ba <_ZN4CIMU8imu_initEv+0x9e>
 80011b6:	bf00      	nop
 80011b8:	e7fb      	b.n	80011b2 <_ZN4CIMU8imu_initEv+0x96>
 80011ba:	4620      	mov	r0, r4
 80011bc:	f7ff ff06 	bl	8000fcc <_ZN4CIMU8imu_readEv>
 80011c0:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80011c2:	4498      	add	r8, r3
 80011c4:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 80011c6:	441f      	add	r7, r3
 80011c8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80011ca:	3d01      	subs	r5, #1
 80011cc:	441e      	add	r6, r3
 80011ce:	d1ef      	bne.n	80011b0 <_ZN4CIMU8imu_initEv+0x94>
 80011d0:	2264      	movs	r2, #100	; 0x64
 80011d2:	6325      	str	r5, [r4, #48]	; 0x30
 80011d4:	fb98 f3f2 	sdiv	r3, r8, r2
 80011d8:	fb97 f7f2 	sdiv	r7, r7, r2
 80011dc:	fb96 f6f2 	sdiv	r6, r6, r2
 80011e0:	6023      	str	r3, [r4, #0]
 80011e2:	6067      	str	r7, [r4, #4]
 80011e4:	60a6      	str	r6, [r4, #8]
 80011e6:	6365      	str	r5, [r4, #52]	; 0x34
 80011e8:	63a5      	str	r5, [r4, #56]	; 0x38
 80011ea:	6265      	str	r5, [r4, #36]	; 0x24
 80011ec:	62a5      	str	r5, [r4, #40]	; 0x28
 80011ee:	62e5      	str	r5, [r4, #44]	; 0x2c
 80011f0:	61a5      	str	r5, [r4, #24]
 80011f2:	61e5      	str	r5, [r4, #28]
 80011f4:	6225      	str	r5, [r4, #32]
 80011f6:	4628      	mov	r0, r5
 80011f8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011fc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001200:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001204:	f06f 0001 	mvn.w	r0, #1
 8001208:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800120c:	20000080 	.word	0x20000080
 8001210:	000186a1 	.word	0x000186a1

08001214 <_ZN4CIMU14get_imu_resultEv>:
 8001214:	3018      	adds	r0, #24
 8001216:	4770      	bx	lr

08001218 <_ZN5CGPIO9gpio_initEv>:
 8001218:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800121c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001220:	b087      	sub	sp, #28
 8001222:	2101      	movs	r1, #1
 8001224:	f000 fc0e 	bl	8001a44 <RCC_AHBPeriphClockCmd>
 8001228:	4e41      	ldr	r6, [pc, #260]	; (8001330 <_ZN5CGPIO9gpio_initEv+0x118>)
 800122a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800122e:	2101      	movs	r1, #1
 8001230:	f000 fc08 	bl	8001a44 <RCC_AHBPeriphClockCmd>
 8001234:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001238:	2101      	movs	r1, #1
 800123a:	2400      	movs	r4, #0
 800123c:	f000 fc02 	bl	8001a44 <RCC_AHBPeriphClockCmd>
 8001240:	2501      	movs	r5, #1
 8001242:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001246:	2703      	movs	r7, #3
 8001248:	4630      	mov	r0, r6
 800124a:	a902      	add	r1, sp, #8
 800124c:	9302      	str	r3, [sp, #8]
 800124e:	f88d 700d 	strb.w	r7, [sp, #13]
 8001252:	f88d 500c 	strb.w	r5, [sp, #12]
 8001256:	f88d 400e 	strb.w	r4, [sp, #14]
 800125a:	f88d 400f 	strb.w	r4, [sp, #15]
 800125e:	f000 ff0f 	bl	8002080 <GPIO_Init>
 8001262:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8001266:	4630      	mov	r0, r6
 8001268:	a902      	add	r1, sp, #8
 800126a:	9302      	str	r3, [sp, #8]
 800126c:	f88d 700d 	strb.w	r7, [sp, #13]
 8001270:	f88d 400c 	strb.w	r4, [sp, #12]
 8001274:	f88d 400f 	strb.w	r4, [sp, #15]
 8001278:	f000 ff02 	bl	8002080 <GPIO_Init>
 800127c:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8001280:	a902      	add	r1, sp, #8
 8001282:	482c      	ldr	r0, [pc, #176]	; (8001334 <_ZN5CGPIO9gpio_initEv+0x11c>)
 8001284:	9302      	str	r3, [sp, #8]
 8001286:	f88d 400c 	strb.w	r4, [sp, #12]
 800128a:	f88d 500f 	strb.w	r5, [sp, #15]
 800128e:	f000 fef7 	bl	8002080 <GPIO_Init>
 8001292:	4628      	mov	r0, r5
 8001294:	4629      	mov	r1, r5
 8001296:	f000 fbe3 	bl	8001a60 <RCC_APB2PeriphClockCmd>
 800129a:	f04f 0910 	mov.w	r9, #16
 800129e:	2106      	movs	r1, #6
 80012a0:	2002      	movs	r0, #2
 80012a2:	f000 ff7b 	bl	800219c <SYSCFG_EXTILineConfig>
 80012a6:	f04f 0806 	mov.w	r8, #6
 80012aa:	eb0d 0009 	add.w	r0, sp, r9
 80012ae:	260f      	movs	r6, #15
 80012b0:	f8cd 8010 	str.w	r8, [sp, #16]
 80012b4:	f88d 4014 	strb.w	r4, [sp, #20]
 80012b8:	f88d 9015 	strb.w	r9, [sp, #21]
 80012bc:	f88d 5016 	strb.w	r5, [sp, #22]
 80012c0:	f000 fe4c 	bl	8001f5c <EXTI_Init>
 80012c4:	2317      	movs	r3, #23
 80012c6:	a801      	add	r0, sp, #4
 80012c8:	f88d 3004 	strb.w	r3, [sp, #4]
 80012cc:	f88d 6005 	strb.w	r6, [sp, #5]
 80012d0:	f88d 6006 	strb.w	r6, [sp, #6]
 80012d4:	f88d 5007 	strb.w	r5, [sp, #7]
 80012d8:	f000 fe06 	bl	8001ee8 <NVIC_Init>
 80012dc:	210c      	movs	r1, #12
 80012de:	2002      	movs	r0, #2
 80012e0:	f000 ff5c 	bl	800219c <SYSCFG_EXTILineConfig>
 80012e4:	270c      	movs	r7, #12
 80012e6:	eb0d 0009 	add.w	r0, sp, r9
 80012ea:	9704      	str	r7, [sp, #16]
 80012ec:	f88d 4014 	strb.w	r4, [sp, #20]
 80012f0:	f88d 9015 	strb.w	r9, [sp, #21]
 80012f4:	f88d 5016 	strb.w	r5, [sp, #22]
 80012f8:	f000 fe30 	bl	8001f5c <EXTI_Init>
 80012fc:	2328      	movs	r3, #40	; 0x28
 80012fe:	a801      	add	r0, sp, #4
 8001300:	f88d 3004 	strb.w	r3, [sp, #4]
 8001304:	f88d 6005 	strb.w	r6, [sp, #5]
 8001308:	f88d 6006 	strb.w	r6, [sp, #6]
 800130c:	f88d 5007 	strb.w	r5, [sp, #7]
 8001310:	f000 fdea 	bl	8001ee8 <NVIC_Init>
 8001314:	4640      	mov	r0, r8
 8001316:	f000 fea7 	bl	8002068 <EXTI_ClearITPendingBit>
 800131a:	4638      	mov	r0, r7
 800131c:	f000 fea4 	bl	8002068 <EXTI_ClearITPendingBit>
 8001320:	4b05      	ldr	r3, [pc, #20]	; (8001338 <_ZN5CGPIO9gpio_initEv+0x120>)
 8001322:	601c      	str	r4, [r3, #0]
 8001324:	4b05      	ldr	r3, [pc, #20]	; (800133c <_ZN5CGPIO9gpio_initEv+0x124>)
 8001326:	4620      	mov	r0, r4
 8001328:	601c      	str	r4, [r3, #0]
 800132a:	b007      	add	sp, #28
 800132c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8001330:	48000400 	.word	0x48000400
 8001334:	48000800 	.word	0x48000800
 8001338:	20000084 	.word	0x20000084
 800133c:	20000088 	.word	0x20000088

08001340 <_ZN5CGPIO7gpio_onEm>:
 8001340:	4b01      	ldr	r3, [pc, #4]	; (8001348 <_ZN5CGPIO7gpio_onEm+0x8>)
 8001342:	6199      	str	r1, [r3, #24]
 8001344:	4770      	bx	lr
 8001346:	bf00      	nop
 8001348:	48000400 	.word	0x48000400

0800134c <_ZN5CGPIO8gpio_offEm>:
 800134c:	4b01      	ldr	r3, [pc, #4]	; (8001354 <_ZN5CGPIO8gpio_offEm+0x8>)
 800134e:	b289      	uxth	r1, r1
 8001350:	8519      	strh	r1, [r3, #40]	; 0x28
 8001352:	4770      	bx	lr
 8001354:	48000400 	.word	0x48000400

08001358 <_ZN5CGPIO7gpio_inEm>:
 8001358:	4b02      	ldr	r3, [pc, #8]	; (8001364 <_ZN5CGPIO7gpio_inEm+0xc>)
 800135a:	8a18      	ldrh	r0, [r3, #16]
 800135c:	b280      	uxth	r0, r0
 800135e:	ea21 0000 	bic.w	r0, r1, r0
 8001362:	4770      	bx	lr
 8001364:	48000400 	.word	0x48000400

08001368 <EXTI9_5_IRQHandler>:
 8001368:	4a03      	ldr	r2, [pc, #12]	; (8001378 <EXTI9_5_IRQHandler+0x10>)
 800136a:	6813      	ldr	r3, [r2, #0]
 800136c:	2006      	movs	r0, #6
 800136e:	3301      	adds	r3, #1
 8001370:	6013      	str	r3, [r2, #0]
 8001372:	f000 be79 	b.w	8002068 <EXTI_ClearITPendingBit>
 8001376:	bf00      	nop
 8001378:	20000084 	.word	0x20000084

0800137c <EXTI15_10_IRQHandler>:
 800137c:	4a03      	ldr	r2, [pc, #12]	; (800138c <EXTI15_10_IRQHandler+0x10>)
 800137e:	6813      	ldr	r3, [r2, #0]
 8001380:	200c      	movs	r0, #12
 8001382:	3301      	adds	r3, #1
 8001384:	6013      	str	r3, [r2, #0]
 8001386:	f000 be6f 	b.w	8002068 <EXTI_ClearITPendingBit>
 800138a:	bf00      	nop
 800138c:	20000088 	.word	0x20000088

08001390 <_ZN6CError10error_funcEi>:
 8001390:	230a      	movs	r3, #10
 8001392:	490c      	ldr	r1, [pc, #48]	; (80013c4 <_ZN6CError10error_funcEi+0x34>)
 8001394:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001398:	618a      	str	r2, [r1, #24]
 800139a:	4a0b      	ldr	r2, [pc, #44]	; (80013c8 <_ZN6CError10error_funcEi+0x38>)
 800139c:	3a01      	subs	r2, #1
 800139e:	d001      	beq.n	80013a4 <_ZN6CError10error_funcEi+0x14>
 80013a0:	bf00      	nop
 80013a2:	e7fb      	b.n	800139c <_ZN6CError10error_funcEi+0xc>
 80013a4:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80013a8:	850a      	strh	r2, [r1, #40]	; 0x28
 80013aa:	4a08      	ldr	r2, [pc, #32]	; (80013cc <_ZN6CError10error_funcEi+0x3c>)
 80013ac:	3a01      	subs	r2, #1
 80013ae:	d001      	beq.n	80013b4 <_ZN6CError10error_funcEi+0x24>
 80013b0:	bf00      	nop
 80013b2:	e7fb      	b.n	80013ac <_ZN6CError10error_funcEi+0x1c>
 80013b4:	3b01      	subs	r3, #1
 80013b6:	d1ec      	bne.n	8001392 <_ZN6CError10error_funcEi+0x2>
 80013b8:	4b05      	ldr	r3, [pc, #20]	; (80013d0 <_ZN6CError10error_funcEi+0x40>)
 80013ba:	3b01      	subs	r3, #1
 80013bc:	d0e8      	beq.n	8001390 <_ZN6CError10error_funcEi>
 80013be:	bf00      	nop
 80013c0:	e7fb      	b.n	80013ba <_ZN6CError10error_funcEi+0x2a>
 80013c2:	bf00      	nop
 80013c4:	48000400 	.word	0x48000400
 80013c8:	000186a1 	.word	0x000186a1
 80013cc:	000f4241 	.word	0x000f4241
 80013d0:	002dc6c1 	.word	0x002dc6c1

080013d4 <_ZN9CTerminal13terminal_initEv>:
 80013d4:	b530      	push	{r4, r5, lr}
 80013d6:	4a2f      	ldr	r2, [pc, #188]	; (8001494 <_ZN9CTerminal13terminal_initEv+0xc0>)
 80013d8:	2300      	movs	r3, #0
 80013da:	6013      	str	r3, [r2, #0]
 80013dc:	4a2e      	ldr	r2, [pc, #184]	; (8001498 <_ZN9CTerminal13terminal_initEv+0xc4>)
 80013de:	b08b      	sub	sp, #44	; 0x2c
 80013e0:	6013      	str	r3, [r2, #0]
 80013e2:	4a2e      	ldr	r2, [pc, #184]	; (800149c <_ZN9CTerminal13terminal_initEv+0xc8>)
 80013e4:	2400      	movs	r4, #0
 80013e6:	54d4      	strb	r4, [r2, r3]
 80013e8:	3301      	adds	r3, #1
 80013ea:	2b10      	cmp	r3, #16
 80013ec:	d1f9      	bne.n	80013e2 <_ZN9CTerminal13terminal_initEv+0xe>
 80013ee:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80013f2:	2101      	movs	r1, #1
 80013f4:	f000 fb26 	bl	8001a44 <RCC_AHBPeriphClockCmd>
 80013f8:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80013fc:	2101      	movs	r1, #1
 80013fe:	f000 fb2f 	bl	8001a60 <RCC_APB2PeriphClockCmd>
 8001402:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8001406:	9302      	str	r3, [sp, #8]
 8001408:	2302      	movs	r3, #2
 800140a:	f88d 300c 	strb.w	r3, [sp, #12]
 800140e:	a902      	add	r1, sp, #8
 8001410:	2303      	movs	r3, #3
 8001412:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001416:	f88d 300d 	strb.w	r3, [sp, #13]
 800141a:	f88d 400e 	strb.w	r4, [sp, #14]
 800141e:	f88d 400f 	strb.w	r4, [sp, #15]
 8001422:	f000 fe2d 	bl	8002080 <GPIO_Init>
 8001426:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800142a:	2109      	movs	r1, #9
 800142c:	2207      	movs	r2, #7
 800142e:	f000 fe6d 	bl	800210c <GPIO_PinAFConfig>
 8001432:	2207      	movs	r2, #7
 8001434:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001438:	210a      	movs	r1, #10
 800143a:	f000 fe67 	bl	800210c <GPIO_PinAFConfig>
 800143e:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001442:	9304      	str	r3, [sp, #16]
 8001444:	a904      	add	r1, sp, #16
 8001446:	230c      	movs	r3, #12
 8001448:	4815      	ldr	r0, [pc, #84]	; (80014a0 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800144a:	9308      	str	r3, [sp, #32]
 800144c:	9405      	str	r4, [sp, #20]
 800144e:	9406      	str	r4, [sp, #24]
 8001450:	9407      	str	r4, [sp, #28]
 8001452:	9409      	str	r4, [sp, #36]	; 0x24
 8001454:	f000 fc12 	bl	8001c7c <USART_Init>
 8001458:	4811      	ldr	r0, [pc, #68]	; (80014a0 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800145a:	2101      	movs	r1, #1
 800145c:	f000 fc70 	bl	8001d40 <USART_Cmd>
 8001460:	2201      	movs	r2, #1
 8001462:	4910      	ldr	r1, [pc, #64]	; (80014a4 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8001464:	480e      	ldr	r0, [pc, #56]	; (80014a0 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001466:	f000 fc7b 	bl	8001d60 <USART_ITConfig>
 800146a:	2501      	movs	r5, #1
 800146c:	2325      	movs	r3, #37	; 0x25
 800146e:	a801      	add	r0, sp, #4
 8001470:	f88d 3004 	strb.w	r3, [sp, #4]
 8001474:	f88d 4005 	strb.w	r4, [sp, #5]
 8001478:	f88d 4006 	strb.w	r4, [sp, #6]
 800147c:	f88d 5007 	strb.w	r5, [sp, #7]
 8001480:	f000 fd32 	bl	8001ee8 <NVIC_Init>
 8001484:	4806      	ldr	r0, [pc, #24]	; (80014a0 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001486:	4629      	mov	r1, r5
 8001488:	f000 fc5a 	bl	8001d40 <USART_Cmd>
 800148c:	4620      	mov	r0, r4
 800148e:	b00b      	add	sp, #44	; 0x2c
 8001490:	bd30      	pop	{r4, r5, pc}
 8001492:	bf00      	nop
 8001494:	2000008c 	.word	0x2000008c
 8001498:	200000a0 	.word	0x200000a0
 800149c:	20000090 	.word	0x20000090
 80014a0:	40013800 	.word	0x40013800
 80014a4:	00050105 	.word	0x00050105

080014a8 <USART1_IRQHandler>:
 80014a8:	b508      	push	{r3, lr}
 80014aa:	480d      	ldr	r0, [pc, #52]	; (80014e0 <USART1_IRQHandler+0x38>)
 80014ac:	490d      	ldr	r1, [pc, #52]	; (80014e4 <USART1_IRQHandler+0x3c>)
 80014ae:	f000 fc71 	bl	8001d94 <USART_GetITStatus>
 80014b2:	b178      	cbz	r0, 80014d4 <USART1_IRQHandler+0x2c>
 80014b4:	480a      	ldr	r0, [pc, #40]	; (80014e0 <USART1_IRQHandler+0x38>)
 80014b6:	f000 fc4e 	bl	8001d56 <USART_ReceiveData>
 80014ba:	4b0b      	ldr	r3, [pc, #44]	; (80014e8 <USART1_IRQHandler+0x40>)
 80014bc:	490b      	ldr	r1, [pc, #44]	; (80014ec <USART1_IRQHandler+0x44>)
 80014be:	681a      	ldr	r2, [r3, #0]
 80014c0:	b2c0      	uxtb	r0, r0
 80014c2:	5488      	strb	r0, [r1, r2]
 80014c4:	681a      	ldr	r2, [r3, #0]
 80014c6:	3201      	adds	r2, #1
 80014c8:	601a      	str	r2, [r3, #0]
 80014ca:	681a      	ldr	r2, [r3, #0]
 80014cc:	2a0f      	cmp	r2, #15
 80014ce:	bf84      	itt	hi
 80014d0:	2200      	movhi	r2, #0
 80014d2:	601a      	strhi	r2, [r3, #0]
 80014d4:	4802      	ldr	r0, [pc, #8]	; (80014e0 <USART1_IRQHandler+0x38>)
 80014d6:	4903      	ldr	r1, [pc, #12]	; (80014e4 <USART1_IRQHandler+0x3c>)
 80014d8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80014dc:	f000 bc78 	b.w	8001dd0 <USART_ClearITPendingBit>
 80014e0:	40013800 	.word	0x40013800
 80014e4:	00050105 	.word	0x00050105
 80014e8:	2000008c 	.word	0x2000008c
 80014ec:	20000090 	.word	0x20000090

080014f0 <_ZN9CTerminal7putcharEc>:
 80014f0:	4b04      	ldr	r3, [pc, #16]	; (8001504 <_ZN9CTerminal7putcharEc+0x14>)
 80014f2:	69da      	ldr	r2, [r3, #28]
 80014f4:	0612      	lsls	r2, r2, #24
 80014f6:	d401      	bmi.n	80014fc <_ZN9CTerminal7putcharEc+0xc>
 80014f8:	bf00      	nop
 80014fa:	e7f9      	b.n	80014f0 <_ZN9CTerminal7putcharEc>
 80014fc:	b289      	uxth	r1, r1
 80014fe:	8519      	strh	r1, [r3, #40]	; 0x28
 8001500:	4770      	bx	lr
 8001502:	bf00      	nop
 8001504:	40013800 	.word	0x40013800

08001508 <_ZN9CTerminal4putsEPc>:
 8001508:	b538      	push	{r3, r4, r5, lr}
 800150a:	4605      	mov	r5, r0
 800150c:	1e4c      	subs	r4, r1, #1
 800150e:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001512:	b119      	cbz	r1, 800151c <_ZN9CTerminal4putsEPc+0x14>
 8001514:	4628      	mov	r0, r5
 8001516:	f7ff ffeb 	bl	80014f0 <_ZN9CTerminal7putcharEc>
 800151a:	e7f8      	b.n	800150e <_ZN9CTerminal4putsEPc+0x6>
 800151c:	2001      	movs	r0, #1
 800151e:	bd38      	pop	{r3, r4, r5, pc}

08001520 <_ZN9CTerminal4putiEl>:
 8001520:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001522:	1e0b      	subs	r3, r1, #0
 8001524:	f04f 0200 	mov.w	r2, #0
 8001528:	bfba      	itte	lt
 800152a:	425b      	neglt	r3, r3
 800152c:	2501      	movlt	r5, #1
 800152e:	4615      	movge	r5, r2
 8001530:	f88d 200f 	strb.w	r2, [sp, #15]
 8001534:	210a      	movs	r1, #10
 8001536:	220a      	movs	r2, #10
 8001538:	ac01      	add	r4, sp, #4
 800153a:	fb93 f6f2 	sdiv	r6, r3, r2
 800153e:	fb02 3316 	mls	r3, r2, r6, r3
 8001542:	3330      	adds	r3, #48	; 0x30
 8001544:	550b      	strb	r3, [r1, r4]
 8001546:	1e4a      	subs	r2, r1, #1
 8001548:	4633      	mov	r3, r6
 800154a:	b10e      	cbz	r6, 8001550 <_ZN9CTerminal4putiEl+0x30>
 800154c:	4611      	mov	r1, r2
 800154e:	e7f2      	b.n	8001536 <_ZN9CTerminal4putiEl+0x16>
 8001550:	b12d      	cbz	r5, 800155e <_ZN9CTerminal4putiEl+0x3e>
 8001552:	ab04      	add	r3, sp, #16
 8001554:	4413      	add	r3, r2
 8001556:	212d      	movs	r1, #45	; 0x2d
 8001558:	f803 1c0c 	strb.w	r1, [r3, #-12]
 800155c:	4611      	mov	r1, r2
 800155e:	4421      	add	r1, r4
 8001560:	f7ff ffd2 	bl	8001508 <_ZN9CTerminal4putsEPc>
 8001564:	b004      	add	sp, #16
 8001566:	bd70      	pop	{r4, r5, r6, pc}

08001568 <_ZN9CTerminal5putuiEm>:
 8001568:	b530      	push	{r4, r5, lr}
 800156a:	b085      	sub	sp, #20
 800156c:	2300      	movs	r3, #0
 800156e:	f88d 300f 	strb.w	r3, [sp, #15]
 8001572:	220a      	movs	r2, #10
 8001574:	230a      	movs	r3, #10
 8001576:	ac01      	add	r4, sp, #4
 8001578:	fbb1 f5f3 	udiv	r5, r1, r3
 800157c:	fb03 1315 	mls	r3, r3, r5, r1
 8001580:	3330      	adds	r3, #48	; 0x30
 8001582:	5513      	strb	r3, [r2, r4]
 8001584:	4629      	mov	r1, r5
 8001586:	1e53      	subs	r3, r2, #1
 8001588:	b10d      	cbz	r5, 800158e <_ZN9CTerminal5putuiEm+0x26>
 800158a:	461a      	mov	r2, r3
 800158c:	e7f2      	b.n	8001574 <_ZN9CTerminal5putuiEm+0xc>
 800158e:	18a1      	adds	r1, r4, r2
 8001590:	f7ff ffba 	bl	8001508 <_ZN9CTerminal4putsEPc>
 8001594:	b005      	add	sp, #20
 8001596:	bd30      	pop	{r4, r5, pc}

08001598 <_ZN9CTerminal4putxEm>:
 8001598:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800159a:	2300      	movs	r3, #0
 800159c:	f88d 300f 	strb.w	r3, [sp, #15]
 80015a0:	220a      	movs	r2, #10
 80015a2:	f001 030f 	and.w	r3, r1, #15
 80015a6:	2b09      	cmp	r3, #9
 80015a8:	ac01      	add	r4, sp, #4
 80015aa:	bfd4      	ite	le
 80015ac:	3330      	addle	r3, #48	; 0x30
 80015ae:	3357      	addgt	r3, #87	; 0x57
 80015b0:	0909      	lsrs	r1, r1, #4
 80015b2:	54a3      	strb	r3, [r4, r2]
 80015b4:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80015b8:	d001      	beq.n	80015be <_ZN9CTerminal4putxEm+0x26>
 80015ba:	461a      	mov	r2, r3
 80015bc:	e7f1      	b.n	80015a2 <_ZN9CTerminal4putxEm+0xa>
 80015be:	18a1      	adds	r1, r4, r2
 80015c0:	f7ff ffa2 	bl	8001508 <_ZN9CTerminal4putsEPc>
 80015c4:	b004      	add	sp, #16
 80015c6:	bd10      	pop	{r4, pc}

080015c8 <_ZN9CTerminal6printfEPKcz>:
 80015c8:	b40e      	push	{r1, r2, r3}
 80015ca:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 80015cc:	ab07      	add	r3, sp, #28
 80015ce:	4604      	mov	r4, r0
 80015d0:	f853 6b04 	ldr.w	r6, [r3], #4
 80015d4:	9301      	str	r3, [sp, #4]
 80015d6:	2500      	movs	r5, #0
 80015d8:	5d71      	ldrb	r1, [r6, r5]
 80015da:	2900      	cmp	r1, #0
 80015dc:	d040      	beq.n	8001660 <_ZN9CTerminal6printfEPKcz+0x98>
 80015de:	2925      	cmp	r1, #37	; 0x25
 80015e0:	d004      	beq.n	80015ec <_ZN9CTerminal6printfEPKcz+0x24>
 80015e2:	4620      	mov	r0, r4
 80015e4:	f7ff ff84 	bl	80014f0 <_ZN9CTerminal7putcharEc>
 80015e8:	3501      	adds	r5, #1
 80015ea:	e7f5      	b.n	80015d8 <_ZN9CTerminal6printfEPKcz+0x10>
 80015ec:	1973      	adds	r3, r6, r5
 80015ee:	7859      	ldrb	r1, [r3, #1]
 80015f0:	2969      	cmp	r1, #105	; 0x69
 80015f2:	d018      	beq.n	8001626 <_ZN9CTerminal6printfEPKcz+0x5e>
 80015f4:	d809      	bhi.n	800160a <_ZN9CTerminal6printfEPKcz+0x42>
 80015f6:	2925      	cmp	r1, #37	; 0x25
 80015f8:	d02d      	beq.n	8001656 <_ZN9CTerminal6printfEPKcz+0x8e>
 80015fa:	2963      	cmp	r1, #99	; 0x63
 80015fc:	d12e      	bne.n	800165c <_ZN9CTerminal6printfEPKcz+0x94>
 80015fe:	9b01      	ldr	r3, [sp, #4]
 8001600:	1d1a      	adds	r2, r3, #4
 8001602:	9201      	str	r2, [sp, #4]
 8001604:	4620      	mov	r0, r4
 8001606:	7819      	ldrb	r1, [r3, #0]
 8001608:	e026      	b.n	8001658 <_ZN9CTerminal6printfEPKcz+0x90>
 800160a:	2975      	cmp	r1, #117	; 0x75
 800160c:	d013      	beq.n	8001636 <_ZN9CTerminal6printfEPKcz+0x6e>
 800160e:	2978      	cmp	r1, #120	; 0x78
 8001610:	d019      	beq.n	8001646 <_ZN9CTerminal6printfEPKcz+0x7e>
 8001612:	2973      	cmp	r1, #115	; 0x73
 8001614:	d122      	bne.n	800165c <_ZN9CTerminal6printfEPKcz+0x94>
 8001616:	9b01      	ldr	r3, [sp, #4]
 8001618:	4620      	mov	r0, r4
 800161a:	1d1a      	adds	r2, r3, #4
 800161c:	6819      	ldr	r1, [r3, #0]
 800161e:	9201      	str	r2, [sp, #4]
 8001620:	f7ff ff72 	bl	8001508 <_ZN9CTerminal4putsEPc>
 8001624:	e01a      	b.n	800165c <_ZN9CTerminal6printfEPKcz+0x94>
 8001626:	9b01      	ldr	r3, [sp, #4]
 8001628:	4620      	mov	r0, r4
 800162a:	1d1a      	adds	r2, r3, #4
 800162c:	6819      	ldr	r1, [r3, #0]
 800162e:	9201      	str	r2, [sp, #4]
 8001630:	f7ff ff76 	bl	8001520 <_ZN9CTerminal4putiEl>
 8001634:	e012      	b.n	800165c <_ZN9CTerminal6printfEPKcz+0x94>
 8001636:	9b01      	ldr	r3, [sp, #4]
 8001638:	4620      	mov	r0, r4
 800163a:	1d1a      	adds	r2, r3, #4
 800163c:	6819      	ldr	r1, [r3, #0]
 800163e:	9201      	str	r2, [sp, #4]
 8001640:	f7ff ff92 	bl	8001568 <_ZN9CTerminal5putuiEm>
 8001644:	e00a      	b.n	800165c <_ZN9CTerminal6printfEPKcz+0x94>
 8001646:	9b01      	ldr	r3, [sp, #4]
 8001648:	4620      	mov	r0, r4
 800164a:	1d1a      	adds	r2, r3, #4
 800164c:	6819      	ldr	r1, [r3, #0]
 800164e:	9201      	str	r2, [sp, #4]
 8001650:	f7ff ffa2 	bl	8001598 <_ZN9CTerminal4putxEm>
 8001654:	e002      	b.n	800165c <_ZN9CTerminal6printfEPKcz+0x94>
 8001656:	4620      	mov	r0, r4
 8001658:	f7ff ff4a 	bl	80014f0 <_ZN9CTerminal7putcharEc>
 800165c:	3502      	adds	r5, #2
 800165e:	e7bb      	b.n	80015d8 <_ZN9CTerminal6printfEPKcz+0x10>
 8001660:	b003      	add	sp, #12
 8001662:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001666:	b003      	add	sp, #12
 8001668:	4770      	bx	lr
	...

0800166c <_Z9robot_runv>:
 800166c:	b508      	push	{r3, lr}
 800166e:	4817      	ldr	r0, [pc, #92]	; (80016cc <_Z9robot_runv+0x60>)
 8001670:	f44f 61e1 	mov.w	r1, #1800	; 0x708
 8001674:	2232      	movs	r2, #50	; 0x32
 8001676:	2300      	movs	r3, #0
 8001678:	f7fe fddd 	bl	8000236 <_ZN7CKodama12rotate_robotEllPFlvE>
 800167c:	4813      	ldr	r0, [pc, #76]	; (80016cc <_Z9robot_runv+0x60>)
 800167e:	4914      	ldr	r1, [pc, #80]	; (80016d0 <_Z9robot_runv+0x64>)
 8001680:	2232      	movs	r2, #50	; 0x32
 8001682:	2300      	movs	r3, #0
 8001684:	f7fe fdd7 	bl	8000236 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001688:	4810      	ldr	r0, [pc, #64]	; (80016cc <_Z9robot_runv+0x60>)
 800168a:	4912      	ldr	r1, [pc, #72]	; (80016d4 <_Z9robot_runv+0x68>)
 800168c:	2264      	movs	r2, #100	; 0x64
 800168e:	2300      	movs	r3, #0
 8001690:	f7fe fdd1 	bl	8000236 <_ZN7CKodama12rotate_robotEllPFlvE>
 8001694:	480d      	ldr	r0, [pc, #52]	; (80016cc <_Z9robot_runv+0x60>)
 8001696:	f44f 71e1 	mov.w	r1, #450	; 0x1c2
 800169a:	2264      	movs	r2, #100	; 0x64
 800169c:	2300      	movs	r3, #0
 800169e:	f7fe fdca 	bl	8000236 <_ZN7CKodama12rotate_robotEllPFlvE>
 80016a2:	480a      	ldr	r0, [pc, #40]	; (80016cc <_Z9robot_runv+0x60>)
 80016a4:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80016a8:	f7ff fe4a 	bl	8001340 <_ZN5CGPIO7gpio_onEm>
 80016ac:	4807      	ldr	r0, [pc, #28]	; (80016cc <_Z9robot_runv+0x60>)
 80016ae:	210a      	movs	r1, #10
 80016b0:	f7fe feaa 	bl	8000408 <_ZN6CTimer8delay_msEm>
 80016b4:	4805      	ldr	r0, [pc, #20]	; (80016cc <_Z9robot_runv+0x60>)
 80016b6:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 80016ba:	f7ff fe47 	bl	800134c <_ZN5CGPIO8gpio_offEm>
 80016be:	4803      	ldr	r0, [pc, #12]	; (80016cc <_Z9robot_runv+0x60>)
 80016c0:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80016c4:	f7fe fea0 	bl	8000408 <_ZN6CTimer8delay_msEm>
 80016c8:	e7eb      	b.n	80016a2 <_Z9robot_runv+0x36>
 80016ca:	bf00      	nop
 80016cc:	200000a4 	.word	0x200000a4
 80016d0:	fffff8f8 	.word	0xfffff8f8
 80016d4:	fffffe3e 	.word	0xfffffe3e

080016d8 <usr_main>:
 80016d8:	b508      	push	{r3, lr}
 80016da:	f000 fc03 	bl	8001ee4 <sytem_clock_init>
 80016de:	f000 fe5b 	bl	8002398 <lib_os_init>
 80016e2:	4818      	ldr	r0, [pc, #96]	; (8001744 <usr_main+0x6c>)
 80016e4:	f7fe fd80 	bl	80001e8 <_ZN7CKodama4initEv>
 80016e8:	b118      	cbz	r0, 80016f2 <usr_main+0x1a>
 80016ea:	4816      	ldr	r0, [pc, #88]	; (8001744 <usr_main+0x6c>)
 80016ec:	2100      	movs	r1, #0
 80016ee:	f7ff fe4f 	bl	8001390 <_ZN6CError10error_funcEi>
 80016f2:	4814      	ldr	r0, [pc, #80]	; (8001744 <usr_main+0x6c>)
 80016f4:	210a      	movs	r1, #10
 80016f6:	f7fe fd99 	bl	800022c <_ZN7CKodama6set_dtEl>
 80016fa:	4812      	ldr	r0, [pc, #72]	; (8001744 <usr_main+0x6c>)
 80016fc:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 8001700:	f7ff fe2a 	bl	8001358 <_ZN5CGPIO7gpio_inEm>
 8001704:	b108      	cbz	r0, 800170a <usr_main+0x32>
 8001706:	f7ff ffb1 	bl	800166c <_Z9robot_runv>
 800170a:	480e      	ldr	r0, [pc, #56]	; (8001744 <usr_main+0x6c>)
 800170c:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001710:	f7ff fe16 	bl	8001340 <_ZN5CGPIO7gpio_onEm>
 8001714:	480b      	ldr	r0, [pc, #44]	; (8001744 <usr_main+0x6c>)
 8001716:	210a      	movs	r1, #10
 8001718:	f7fe fe76 	bl	8000408 <_ZN6CTimer8delay_msEm>
 800171c:	4809      	ldr	r0, [pc, #36]	; (8001744 <usr_main+0x6c>)
 800171e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001722:	f7ff fe13 	bl	800134c <_ZN5CGPIO8gpio_offEm>
 8001726:	f44f 7196 	mov.w	r1, #300	; 0x12c
 800172a:	4806      	ldr	r0, [pc, #24]	; (8001744 <usr_main+0x6c>)
 800172c:	f7fe fe6c 	bl	8000408 <_ZN6CTimer8delay_msEm>
 8001730:	4804      	ldr	r0, [pc, #16]	; (8001744 <usr_main+0x6c>)
 8001732:	f7fe fe5b 	bl	80003ec <_ZN6CTimer8get_timeEv>
 8001736:	4904      	ldr	r1, [pc, #16]	; (8001748 <usr_main+0x70>)
 8001738:	4602      	mov	r2, r0
 800173a:	4802      	ldr	r0, [pc, #8]	; (8001744 <usr_main+0x6c>)
 800173c:	f7ff ff44 	bl	80015c8 <_ZN9CTerminal6printfEPKcz>
 8001740:	e7db      	b.n	80016fa <usr_main+0x22>
 8001742:	bf00      	nop
 8001744:	200000a4 	.word	0x200000a4
 8001748:	08002453 	.word	0x08002453

0800174c <main>:
 800174c:	b508      	push	{r3, lr}
 800174e:	f7ff ffc3 	bl	80016d8 <usr_main>
 8001752:	2000      	movs	r0, #0
 8001754:	bd08      	pop	{r3, pc}
	...

08001758 <RCC_GetClocksFreq>:
 8001758:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800175c:	4f9b      	ldr	r7, [pc, #620]	; (80019cc <RCC_GetClocksFreq+0x274>)
 800175e:	687b      	ldr	r3, [r7, #4]
 8001760:	f003 030c 	and.w	r3, r3, #12
 8001764:	2b04      	cmp	r3, #4
 8001766:	d005      	beq.n	8001774 <RCC_GetClocksFreq+0x1c>
 8001768:	2b08      	cmp	r3, #8
 800176a:	d006      	beq.n	800177a <RCC_GetClocksFreq+0x22>
 800176c:	4a98      	ldr	r2, [pc, #608]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 800176e:	6002      	str	r2, [r0, #0]
 8001770:	b9b3      	cbnz	r3, 80017a0 <RCC_GetClocksFreq+0x48>
 8001772:	e016      	b.n	80017a2 <RCC_GetClocksFreq+0x4a>
 8001774:	4b96      	ldr	r3, [pc, #600]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 8001776:	6003      	str	r3, [r0, #0]
 8001778:	e012      	b.n	80017a0 <RCC_GetClocksFreq+0x48>
 800177a:	687b      	ldr	r3, [r7, #4]
 800177c:	6879      	ldr	r1, [r7, #4]
 800177e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001782:	1c9a      	adds	r2, r3, #2
 8001784:	03cb      	lsls	r3, r1, #15
 8001786:	bf49      	itett	mi
 8001788:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800178a:	4b92      	ldrpl	r3, [pc, #584]	; (80019d4 <RCC_GetClocksFreq+0x27c>)
 800178c:	4990      	ldrmi	r1, [pc, #576]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 800178e:	f003 030f 	andmi.w	r3, r3, #15
 8001792:	bf44      	itt	mi
 8001794:	3301      	addmi	r3, #1
 8001796:	fbb1 f3f3 	udivmi	r3, r1, r3
 800179a:	4353      	muls	r3, r2
 800179c:	6003      	str	r3, [r0, #0]
 800179e:	e000      	b.n	80017a2 <RCC_GetClocksFreq+0x4a>
 80017a0:	2300      	movs	r3, #0
 80017a2:	687a      	ldr	r2, [r7, #4]
 80017a4:	4e8c      	ldr	r6, [pc, #560]	; (80019d8 <RCC_GetClocksFreq+0x280>)
 80017a6:	f8df c234 	ldr.w	ip, [pc, #564]	; 80019dc <RCC_GetClocksFreq+0x284>
 80017aa:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80017ae:	5cb4      	ldrb	r4, [r6, r2]
 80017b0:	6802      	ldr	r2, [r0, #0]
 80017b2:	b2e4      	uxtb	r4, r4
 80017b4:	fa22 f104 	lsr.w	r1, r2, r4
 80017b8:	6041      	str	r1, [r0, #4]
 80017ba:	687d      	ldr	r5, [r7, #4]
 80017bc:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80017c0:	5d75      	ldrb	r5, [r6, r5]
 80017c2:	fa21 fe05 	lsr.w	lr, r1, r5
 80017c6:	f8c0 e008 	str.w	lr, [r0, #8]
 80017ca:	687d      	ldr	r5, [r7, #4]
 80017cc:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80017d0:	5d75      	ldrb	r5, [r6, r5]
 80017d2:	b2ed      	uxtb	r5, r5
 80017d4:	40e9      	lsrs	r1, r5
 80017d6:	60c1      	str	r1, [r0, #12]
 80017d8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80017da:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80017de:	f008 060f 	and.w	r6, r8, #15
 80017e2:	f018 0f10 	tst.w	r8, #16
 80017e6:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80017ea:	46e0      	mov	r8, ip
 80017ec:	b2b6      	uxth	r6, r6
 80017ee:	d004      	beq.n	80017fa <RCC_GetClocksFreq+0xa2>
 80017f0:	b11e      	cbz	r6, 80017fa <RCC_GetClocksFreq+0xa2>
 80017f2:	fbb3 f6f6 	udiv	r6, r3, r6
 80017f6:	6106      	str	r6, [r0, #16]
 80017f8:	e000      	b.n	80017fc <RCC_GetClocksFreq+0xa4>
 80017fa:	6102      	str	r2, [r0, #16]
 80017fc:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80017fe:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001802:	f00c 060f 	and.w	r6, ip, #15
 8001806:	f01c 0f10 	tst.w	ip, #16
 800180a:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 800180e:	b2b6      	uxth	r6, r6
 8001810:	d004      	beq.n	800181c <RCC_GetClocksFreq+0xc4>
 8001812:	b11e      	cbz	r6, 800181c <RCC_GetClocksFreq+0xc4>
 8001814:	fbb3 f6f6 	udiv	r6, r3, r6
 8001818:	6146      	str	r6, [r0, #20]
 800181a:	e000      	b.n	800181e <RCC_GetClocksFreq+0xc6>
 800181c:	6142      	str	r2, [r0, #20]
 800181e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001820:	06f6      	lsls	r6, r6, #27
 8001822:	bf5a      	itte	pl
 8001824:	4e6a      	ldrpl	r6, [pc, #424]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 8001826:	6186      	strpl	r6, [r0, #24]
 8001828:	6182      	strmi	r2, [r0, #24]
 800182a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800182c:	06b6      	lsls	r6, r6, #26
 800182e:	bf5a      	itte	pl
 8001830:	4e67      	ldrpl	r6, [pc, #412]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 8001832:	61c6      	strpl	r6, [r0, #28]
 8001834:	61c2      	strmi	r2, [r0, #28]
 8001836:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001838:	0676      	lsls	r6, r6, #25
 800183a:	bf5a      	itte	pl
 800183c:	4e64      	ldrpl	r6, [pc, #400]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 800183e:	6206      	strpl	r6, [r0, #32]
 8001840:	6202      	strmi	r2, [r0, #32]
 8001842:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001844:	05f6      	lsls	r6, r6, #23
 8001846:	d506      	bpl.n	8001856 <RCC_GetClocksFreq+0xfe>
 8001848:	429a      	cmp	r2, r3
 800184a:	d104      	bne.n	8001856 <RCC_GetClocksFreq+0xfe>
 800184c:	42a5      	cmp	r5, r4
 800184e:	d102      	bne.n	8001856 <RCC_GetClocksFreq+0xfe>
 8001850:	0056      	lsls	r6, r2, #1
 8001852:	6246      	str	r6, [r0, #36]	; 0x24
 8001854:	e000      	b.n	8001858 <RCC_GetClocksFreq+0x100>
 8001856:	6241      	str	r1, [r0, #36]	; 0x24
 8001858:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800185a:	04f6      	lsls	r6, r6, #19
 800185c:	d506      	bpl.n	800186c <RCC_GetClocksFreq+0x114>
 800185e:	429a      	cmp	r2, r3
 8001860:	d104      	bne.n	800186c <RCC_GetClocksFreq+0x114>
 8001862:	42a5      	cmp	r5, r4
 8001864:	d102      	bne.n	800186c <RCC_GetClocksFreq+0x114>
 8001866:	0056      	lsls	r6, r2, #1
 8001868:	6286      	str	r6, [r0, #40]	; 0x28
 800186a:	e000      	b.n	800186e <RCC_GetClocksFreq+0x116>
 800186c:	6281      	str	r1, [r0, #40]	; 0x28
 800186e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001870:	05b6      	lsls	r6, r6, #22
 8001872:	d506      	bpl.n	8001882 <RCC_GetClocksFreq+0x12a>
 8001874:	429a      	cmp	r2, r3
 8001876:	d104      	bne.n	8001882 <RCC_GetClocksFreq+0x12a>
 8001878:	42a5      	cmp	r5, r4
 800187a:	d102      	bne.n	8001882 <RCC_GetClocksFreq+0x12a>
 800187c:	0056      	lsls	r6, r2, #1
 800187e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001880:	e000      	b.n	8001884 <RCC_GetClocksFreq+0x12c>
 8001882:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001884:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001886:	0576      	lsls	r6, r6, #21
 8001888:	d506      	bpl.n	8001898 <RCC_GetClocksFreq+0x140>
 800188a:	429a      	cmp	r2, r3
 800188c:	d104      	bne.n	8001898 <RCC_GetClocksFreq+0x140>
 800188e:	42a5      	cmp	r5, r4
 8001890:	d102      	bne.n	8001898 <RCC_GetClocksFreq+0x140>
 8001892:	0056      	lsls	r6, r2, #1
 8001894:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001896:	e000      	b.n	800189a <RCC_GetClocksFreq+0x142>
 8001898:	64c1      	str	r1, [r0, #76]	; 0x4c
 800189a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800189c:	0536      	lsls	r6, r6, #20
 800189e:	d506      	bpl.n	80018ae <RCC_GetClocksFreq+0x156>
 80018a0:	429a      	cmp	r2, r3
 80018a2:	d104      	bne.n	80018ae <RCC_GetClocksFreq+0x156>
 80018a4:	42a5      	cmp	r5, r4
 80018a6:	d102      	bne.n	80018ae <RCC_GetClocksFreq+0x156>
 80018a8:	0056      	lsls	r6, r2, #1
 80018aa:	6506      	str	r6, [r0, #80]	; 0x50
 80018ac:	e000      	b.n	80018b0 <RCC_GetClocksFreq+0x158>
 80018ae:	6501      	str	r1, [r0, #80]	; 0x50
 80018b0:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80018b2:	04b6      	lsls	r6, r6, #18
 80018b4:	d506      	bpl.n	80018c4 <RCC_GetClocksFreq+0x16c>
 80018b6:	429a      	cmp	r2, r3
 80018b8:	d104      	bne.n	80018c4 <RCC_GetClocksFreq+0x16c>
 80018ba:	42a5      	cmp	r5, r4
 80018bc:	d102      	bne.n	80018c4 <RCC_GetClocksFreq+0x16c>
 80018be:	0056      	lsls	r6, r2, #1
 80018c0:	6546      	str	r6, [r0, #84]	; 0x54
 80018c2:	e000      	b.n	80018c6 <RCC_GetClocksFreq+0x16e>
 80018c4:	6501      	str	r1, [r0, #80]	; 0x50
 80018c6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80018c8:	0436      	lsls	r6, r6, #16
 80018ca:	d506      	bpl.n	80018da <RCC_GetClocksFreq+0x182>
 80018cc:	429a      	cmp	r2, r3
 80018ce:	d104      	bne.n	80018da <RCC_GetClocksFreq+0x182>
 80018d0:	42a5      	cmp	r5, r4
 80018d2:	d102      	bne.n	80018da <RCC_GetClocksFreq+0x182>
 80018d4:	0053      	lsls	r3, r2, #1
 80018d6:	6583      	str	r3, [r0, #88]	; 0x58
 80018d8:	e000      	b.n	80018dc <RCC_GetClocksFreq+0x184>
 80018da:	6581      	str	r1, [r0, #88]	; 0x58
 80018dc:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 80018de:	4b3b      	ldr	r3, [pc, #236]	; (80019cc <RCC_GetClocksFreq+0x274>)
 80018e0:	07a4      	lsls	r4, r4, #30
 80018e2:	d101      	bne.n	80018e8 <RCC_GetClocksFreq+0x190>
 80018e4:	6381      	str	r1, [r0, #56]	; 0x38
 80018e6:	e015      	b.n	8001914 <RCC_GetClocksFreq+0x1bc>
 80018e8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018ea:	f001 0103 	and.w	r1, r1, #3
 80018ee:	2901      	cmp	r1, #1
 80018f0:	d101      	bne.n	80018f6 <RCC_GetClocksFreq+0x19e>
 80018f2:	6382      	str	r2, [r0, #56]	; 0x38
 80018f4:	e00e      	b.n	8001914 <RCC_GetClocksFreq+0x1bc>
 80018f6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018f8:	f001 0103 	and.w	r1, r1, #3
 80018fc:	2902      	cmp	r1, #2
 80018fe:	d102      	bne.n	8001906 <RCC_GetClocksFreq+0x1ae>
 8001900:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001904:	e005      	b.n	8001912 <RCC_GetClocksFreq+0x1ba>
 8001906:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001908:	f003 0303 	and.w	r3, r3, #3
 800190c:	2b03      	cmp	r3, #3
 800190e:	d101      	bne.n	8001914 <RCC_GetClocksFreq+0x1bc>
 8001910:	4b2f      	ldr	r3, [pc, #188]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 8001912:	6383      	str	r3, [r0, #56]	; 0x38
 8001914:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001916:	4b2d      	ldr	r3, [pc, #180]	; (80019cc <RCC_GetClocksFreq+0x274>)
 8001918:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 800191c:	d102      	bne.n	8001924 <RCC_GetClocksFreq+0x1cc>
 800191e:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001922:	e018      	b.n	8001956 <RCC_GetClocksFreq+0x1fe>
 8001924:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001926:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800192a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800192e:	d101      	bne.n	8001934 <RCC_GetClocksFreq+0x1dc>
 8001930:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001932:	e010      	b.n	8001956 <RCC_GetClocksFreq+0x1fe>
 8001934:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001936:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800193a:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 800193e:	d102      	bne.n	8001946 <RCC_GetClocksFreq+0x1ee>
 8001940:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001944:	e006      	b.n	8001954 <RCC_GetClocksFreq+0x1fc>
 8001946:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001948:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 800194c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001950:	d101      	bne.n	8001956 <RCC_GetClocksFreq+0x1fe>
 8001952:	4b1f      	ldr	r3, [pc, #124]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 8001954:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001956:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001958:	4b1c      	ldr	r3, [pc, #112]	; (80019cc <RCC_GetClocksFreq+0x274>)
 800195a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 800195e:	d102      	bne.n	8001966 <RCC_GetClocksFreq+0x20e>
 8001960:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001964:	e018      	b.n	8001998 <RCC_GetClocksFreq+0x240>
 8001966:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001968:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800196c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001970:	d101      	bne.n	8001976 <RCC_GetClocksFreq+0x21e>
 8001972:	6402      	str	r2, [r0, #64]	; 0x40
 8001974:	e010      	b.n	8001998 <RCC_GetClocksFreq+0x240>
 8001976:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001978:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800197c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001980:	d102      	bne.n	8001988 <RCC_GetClocksFreq+0x230>
 8001982:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001986:	e006      	b.n	8001996 <RCC_GetClocksFreq+0x23e>
 8001988:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800198a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800198e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001992:	d101      	bne.n	8001998 <RCC_GetClocksFreq+0x240>
 8001994:	4b0e      	ldr	r3, [pc, #56]	; (80019d0 <RCC_GetClocksFreq+0x278>)
 8001996:	6403      	str	r3, [r0, #64]	; 0x40
 8001998:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800199a:	4b0c      	ldr	r3, [pc, #48]	; (80019cc <RCC_GetClocksFreq+0x274>)
 800199c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 80019a0:	d102      	bne.n	80019a8 <RCC_GetClocksFreq+0x250>
 80019a2:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 80019a6:	e023      	b.n	80019f0 <RCC_GetClocksFreq+0x298>
 80019a8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80019aa:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80019ae:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80019b2:	d101      	bne.n	80019b8 <RCC_GetClocksFreq+0x260>
 80019b4:	6442      	str	r2, [r0, #68]	; 0x44
 80019b6:	e01b      	b.n	80019f0 <RCC_GetClocksFreq+0x298>
 80019b8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80019ba:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80019be:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80019c2:	d10d      	bne.n	80019e0 <RCC_GetClocksFreq+0x288>
 80019c4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80019c8:	e011      	b.n	80019ee <RCC_GetClocksFreq+0x296>
 80019ca:	bf00      	nop
 80019cc:	40021000 	.word	0x40021000
 80019d0:	007a1200 	.word	0x007a1200
 80019d4:	003d0900 	.word	0x003d0900
 80019d8:	20000020 	.word	0x20000020
 80019dc:	20000000 	.word	0x20000000
 80019e0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80019e2:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 80019e6:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80019ea:	d101      	bne.n	80019f0 <RCC_GetClocksFreq+0x298>
 80019ec:	4b13      	ldr	r3, [pc, #76]	; (8001a3c <RCC_GetClocksFreq+0x2e4>)
 80019ee:	6443      	str	r3, [r0, #68]	; 0x44
 80019f0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80019f2:	4b13      	ldr	r3, [pc, #76]	; (8001a40 <RCC_GetClocksFreq+0x2e8>)
 80019f4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80019f8:	d103      	bne.n	8001a02 <RCC_GetClocksFreq+0x2aa>
 80019fa:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80019fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001a02:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001a04:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001a08:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001a0c:	d102      	bne.n	8001a14 <RCC_GetClocksFreq+0x2bc>
 8001a0e:	6482      	str	r2, [r0, #72]	; 0x48
 8001a10:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001a14:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001a16:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001a1a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001a1e:	d102      	bne.n	8001a26 <RCC_GetClocksFreq+0x2ce>
 8001a20:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001a24:	e006      	b.n	8001a34 <RCC_GetClocksFreq+0x2dc>
 8001a26:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001a28:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001a2c:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001a30:	d101      	bne.n	8001a36 <RCC_GetClocksFreq+0x2de>
 8001a32:	4b02      	ldr	r3, [pc, #8]	; (8001a3c <RCC_GetClocksFreq+0x2e4>)
 8001a34:	6483      	str	r3, [r0, #72]	; 0x48
 8001a36:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001a3a:	bf00      	nop
 8001a3c:	007a1200 	.word	0x007a1200
 8001a40:	40021000 	.word	0x40021000

08001a44 <RCC_AHBPeriphClockCmd>:
 8001a44:	bf00      	nop
 8001a46:	bf00      	nop
 8001a48:	4b04      	ldr	r3, [pc, #16]	; (8001a5c <RCC_AHBPeriphClockCmd+0x18>)
 8001a4a:	695a      	ldr	r2, [r3, #20]
 8001a4c:	b109      	cbz	r1, 8001a52 <RCC_AHBPeriphClockCmd+0xe>
 8001a4e:	4310      	orrs	r0, r2
 8001a50:	e001      	b.n	8001a56 <RCC_AHBPeriphClockCmd+0x12>
 8001a52:	ea22 0000 	bic.w	r0, r2, r0
 8001a56:	6158      	str	r0, [r3, #20]
 8001a58:	4770      	bx	lr
 8001a5a:	bf00      	nop
 8001a5c:	40021000 	.word	0x40021000

08001a60 <RCC_APB2PeriphClockCmd>:
 8001a60:	bf00      	nop
 8001a62:	bf00      	nop
 8001a64:	4b04      	ldr	r3, [pc, #16]	; (8001a78 <RCC_APB2PeriphClockCmd+0x18>)
 8001a66:	699a      	ldr	r2, [r3, #24]
 8001a68:	b109      	cbz	r1, 8001a6e <RCC_APB2PeriphClockCmd+0xe>
 8001a6a:	4310      	orrs	r0, r2
 8001a6c:	e001      	b.n	8001a72 <RCC_APB2PeriphClockCmd+0x12>
 8001a6e:	ea22 0000 	bic.w	r0, r2, r0
 8001a72:	6198      	str	r0, [r3, #24]
 8001a74:	4770      	bx	lr
 8001a76:	bf00      	nop
 8001a78:	40021000 	.word	0x40021000

08001a7c <RCC_APB1PeriphClockCmd>:
 8001a7c:	bf00      	nop
 8001a7e:	bf00      	nop
 8001a80:	4b04      	ldr	r3, [pc, #16]	; (8001a94 <RCC_APB1PeriphClockCmd+0x18>)
 8001a82:	69da      	ldr	r2, [r3, #28]
 8001a84:	b109      	cbz	r1, 8001a8a <RCC_APB1PeriphClockCmd+0xe>
 8001a86:	4310      	orrs	r0, r2
 8001a88:	e001      	b.n	8001a8e <RCC_APB1PeriphClockCmd+0x12>
 8001a8a:	ea22 0000 	bic.w	r0, r2, r0
 8001a8e:	61d8      	str	r0, [r3, #28]
 8001a90:	4770      	bx	lr
 8001a92:	bf00      	nop
 8001a94:	40021000 	.word	0x40021000

08001a98 <TIM_TimeBaseInit>:
 8001a98:	bf00      	nop
 8001a9a:	bf00      	nop
 8001a9c:	bf00      	nop
 8001a9e:	4a24      	ldr	r2, [pc, #144]	; (8001b30 <TIM_TimeBaseInit+0x98>)
 8001aa0:	8803      	ldrh	r3, [r0, #0]
 8001aa2:	4290      	cmp	r0, r2
 8001aa4:	b29b      	uxth	r3, r3
 8001aa6:	d012      	beq.n	8001ace <TIM_TimeBaseInit+0x36>
 8001aa8:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001aac:	4290      	cmp	r0, r2
 8001aae:	d00e      	beq.n	8001ace <TIM_TimeBaseInit+0x36>
 8001ab0:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001ab4:	d00b      	beq.n	8001ace <TIM_TimeBaseInit+0x36>
 8001ab6:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001aba:	4290      	cmp	r0, r2
 8001abc:	d007      	beq.n	8001ace <TIM_TimeBaseInit+0x36>
 8001abe:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ac2:	4290      	cmp	r0, r2
 8001ac4:	d003      	beq.n	8001ace <TIM_TimeBaseInit+0x36>
 8001ac6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001aca:	4290      	cmp	r0, r2
 8001acc:	d103      	bne.n	8001ad6 <TIM_TimeBaseInit+0x3e>
 8001ace:	884a      	ldrh	r2, [r1, #2]
 8001ad0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001ad4:	4313      	orrs	r3, r2
 8001ad6:	4a17      	ldr	r2, [pc, #92]	; (8001b34 <TIM_TimeBaseInit+0x9c>)
 8001ad8:	4290      	cmp	r0, r2
 8001ada:	d008      	beq.n	8001aee <TIM_TimeBaseInit+0x56>
 8001adc:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ae0:	4290      	cmp	r0, r2
 8001ae2:	bf1f      	itttt	ne
 8001ae4:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001ae8:	890a      	ldrhne	r2, [r1, #8]
 8001aea:	b29b      	uxthne	r3, r3
 8001aec:	4313      	orrne	r3, r2
 8001aee:	8003      	strh	r3, [r0, #0]
 8001af0:	684b      	ldr	r3, [r1, #4]
 8001af2:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001af4:	880b      	ldrh	r3, [r1, #0]
 8001af6:	8503      	strh	r3, [r0, #40]	; 0x28
 8001af8:	4b0d      	ldr	r3, [pc, #52]	; (8001b30 <TIM_TimeBaseInit+0x98>)
 8001afa:	4298      	cmp	r0, r3
 8001afc:	d013      	beq.n	8001b26 <TIM_TimeBaseInit+0x8e>
 8001afe:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001b02:	4298      	cmp	r0, r3
 8001b04:	d00f      	beq.n	8001b26 <TIM_TimeBaseInit+0x8e>
 8001b06:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001b0a:	4298      	cmp	r0, r3
 8001b0c:	d00b      	beq.n	8001b26 <TIM_TimeBaseInit+0x8e>
 8001b0e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001b12:	4298      	cmp	r0, r3
 8001b14:	d007      	beq.n	8001b26 <TIM_TimeBaseInit+0x8e>
 8001b16:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001b1a:	4298      	cmp	r0, r3
 8001b1c:	d003      	beq.n	8001b26 <TIM_TimeBaseInit+0x8e>
 8001b1e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001b22:	4298      	cmp	r0, r3
 8001b24:	d101      	bne.n	8001b2a <TIM_TimeBaseInit+0x92>
 8001b26:	894b      	ldrh	r3, [r1, #10]
 8001b28:	8603      	strh	r3, [r0, #48]	; 0x30
 8001b2a:	2301      	movs	r3, #1
 8001b2c:	6143      	str	r3, [r0, #20]
 8001b2e:	4770      	bx	lr
 8001b30:	40012c00 	.word	0x40012c00
 8001b34:	40001000 	.word	0x40001000

08001b38 <TIM_Cmd>:
 8001b38:	bf00      	nop
 8001b3a:	bf00      	nop
 8001b3c:	8803      	ldrh	r3, [r0, #0]
 8001b3e:	b119      	cbz	r1, 8001b48 <TIM_Cmd+0x10>
 8001b40:	b29b      	uxth	r3, r3
 8001b42:	f043 0301 	orr.w	r3, r3, #1
 8001b46:	e003      	b.n	8001b50 <TIM_Cmd+0x18>
 8001b48:	f023 0301 	bic.w	r3, r3, #1
 8001b4c:	041b      	lsls	r3, r3, #16
 8001b4e:	0c1b      	lsrs	r3, r3, #16
 8001b50:	8003      	strh	r3, [r0, #0]
 8001b52:	4770      	bx	lr

08001b54 <TIM_OC1Init>:
 8001b54:	b570      	push	{r4, r5, r6, lr}
 8001b56:	bf00      	nop
 8001b58:	bf00      	nop
 8001b5a:	bf00      	nop
 8001b5c:	bf00      	nop
 8001b5e:	6a03      	ldr	r3, [r0, #32]
 8001b60:	680d      	ldr	r5, [r1, #0]
 8001b62:	f023 0301 	bic.w	r3, r3, #1
 8001b66:	6203      	str	r3, [r0, #32]
 8001b68:	6a03      	ldr	r3, [r0, #32]
 8001b6a:	6844      	ldr	r4, [r0, #4]
 8001b6c:	6982      	ldr	r2, [r0, #24]
 8001b6e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001b72:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001b76:	4315      	orrs	r5, r2
 8001b78:	898a      	ldrh	r2, [r1, #12]
 8001b7a:	f023 0302 	bic.w	r3, r3, #2
 8001b7e:	4313      	orrs	r3, r2
 8001b80:	888a      	ldrh	r2, [r1, #4]
 8001b82:	4313      	orrs	r3, r2
 8001b84:	4a15      	ldr	r2, [pc, #84]	; (8001bdc <TIM_OC1Init+0x88>)
 8001b86:	4290      	cmp	r0, r2
 8001b88:	d00f      	beq.n	8001baa <TIM_OC1Init+0x56>
 8001b8a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001b8e:	4290      	cmp	r0, r2
 8001b90:	d00b      	beq.n	8001baa <TIM_OC1Init+0x56>
 8001b92:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001b96:	4290      	cmp	r0, r2
 8001b98:	d007      	beq.n	8001baa <TIM_OC1Init+0x56>
 8001b9a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001b9e:	4290      	cmp	r0, r2
 8001ba0:	d003      	beq.n	8001baa <TIM_OC1Init+0x56>
 8001ba2:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ba6:	4290      	cmp	r0, r2
 8001ba8:	d111      	bne.n	8001bce <TIM_OC1Init+0x7a>
 8001baa:	bf00      	nop
 8001bac:	bf00      	nop
 8001bae:	bf00      	nop
 8001bb0:	bf00      	nop
 8001bb2:	89ca      	ldrh	r2, [r1, #14]
 8001bb4:	88ce      	ldrh	r6, [r1, #6]
 8001bb6:	f023 0308 	bic.w	r3, r3, #8
 8001bba:	4313      	orrs	r3, r2
 8001bbc:	8a0a      	ldrh	r2, [r1, #16]
 8001bbe:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001bc2:	4314      	orrs	r4, r2
 8001bc4:	8a4a      	ldrh	r2, [r1, #18]
 8001bc6:	f023 0304 	bic.w	r3, r3, #4
 8001bca:	4333      	orrs	r3, r6
 8001bcc:	4314      	orrs	r4, r2
 8001bce:	688a      	ldr	r2, [r1, #8]
 8001bd0:	6044      	str	r4, [r0, #4]
 8001bd2:	6185      	str	r5, [r0, #24]
 8001bd4:	6342      	str	r2, [r0, #52]	; 0x34
 8001bd6:	6203      	str	r3, [r0, #32]
 8001bd8:	bd70      	pop	{r4, r5, r6, pc}
 8001bda:	bf00      	nop
 8001bdc:	40012c00 	.word	0x40012c00

08001be0 <TIM_OC2Init>:
 8001be0:	b570      	push	{r4, r5, r6, lr}
 8001be2:	bf00      	nop
 8001be4:	bf00      	nop
 8001be6:	bf00      	nop
 8001be8:	bf00      	nop
 8001bea:	6a03      	ldr	r3, [r0, #32]
 8001bec:	680d      	ldr	r5, [r1, #0]
 8001bee:	898e      	ldrh	r6, [r1, #12]
 8001bf0:	f023 0310 	bic.w	r3, r3, #16
 8001bf4:	6203      	str	r3, [r0, #32]
 8001bf6:	6a03      	ldr	r3, [r0, #32]
 8001bf8:	6844      	ldr	r4, [r0, #4]
 8001bfa:	6982      	ldr	r2, [r0, #24]
 8001bfc:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001c00:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001c04:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001c08:	f023 0220 	bic.w	r2, r3, #32
 8001c0c:	888b      	ldrh	r3, [r1, #4]
 8001c0e:	4333      	orrs	r3, r6
 8001c10:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001c14:	4a10      	ldr	r2, [pc, #64]	; (8001c58 <TIM_OC2Init+0x78>)
 8001c16:	4290      	cmp	r0, r2
 8001c18:	d003      	beq.n	8001c22 <TIM_OC2Init+0x42>
 8001c1a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001c1e:	4290      	cmp	r0, r2
 8001c20:	d114      	bne.n	8001c4c <TIM_OC2Init+0x6c>
 8001c22:	bf00      	nop
 8001c24:	bf00      	nop
 8001c26:	bf00      	nop
 8001c28:	bf00      	nop
 8001c2a:	89ca      	ldrh	r2, [r1, #14]
 8001c2c:	8a0e      	ldrh	r6, [r1, #16]
 8001c2e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001c32:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001c36:	88ca      	ldrh	r2, [r1, #6]
 8001c38:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001c3c:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001c40:	8a4a      	ldrh	r2, [r1, #18]
 8001c42:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001c46:	4332      	orrs	r2, r6
 8001c48:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001c4c:	688a      	ldr	r2, [r1, #8]
 8001c4e:	6044      	str	r4, [r0, #4]
 8001c50:	6185      	str	r5, [r0, #24]
 8001c52:	6382      	str	r2, [r0, #56]	; 0x38
 8001c54:	6203      	str	r3, [r0, #32]
 8001c56:	bd70      	pop	{r4, r5, r6, pc}
 8001c58:	40012c00 	.word	0x40012c00

08001c5c <TIM_CtrlPWMOutputs>:
 8001c5c:	bf00      	nop
 8001c5e:	bf00      	nop
 8001c60:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c62:	b111      	cbz	r1, 8001c6a <TIM_CtrlPWMOutputs+0xe>
 8001c64:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001c68:	e001      	b.n	8001c6e <TIM_CtrlPWMOutputs+0x12>
 8001c6a:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001c6e:	6443      	str	r3, [r0, #68]	; 0x44
 8001c70:	4770      	bx	lr

08001c72 <TIM_ClearITPendingBit>:
 8001c72:	bf00      	nop
 8001c74:	43c9      	mvns	r1, r1
 8001c76:	b289      	uxth	r1, r1
 8001c78:	6101      	str	r1, [r0, #16]
 8001c7a:	4770      	bx	lr

08001c7c <USART_Init>:
 8001c7c:	b530      	push	{r4, r5, lr}
 8001c7e:	4604      	mov	r4, r0
 8001c80:	b099      	sub	sp, #100	; 0x64
 8001c82:	460d      	mov	r5, r1
 8001c84:	bf00      	nop
 8001c86:	bf00      	nop
 8001c88:	bf00      	nop
 8001c8a:	bf00      	nop
 8001c8c:	bf00      	nop
 8001c8e:	bf00      	nop
 8001c90:	bf00      	nop
 8001c92:	6803      	ldr	r3, [r0, #0]
 8001c94:	f023 0301 	bic.w	r3, r3, #1
 8001c98:	6003      	str	r3, [r0, #0]
 8001c9a:	6843      	ldr	r3, [r0, #4]
 8001c9c:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001ca0:	688b      	ldr	r3, [r1, #8]
 8001ca2:	68c9      	ldr	r1, [r1, #12]
 8001ca4:	4313      	orrs	r3, r2
 8001ca6:	6043      	str	r3, [r0, #4]
 8001ca8:	686a      	ldr	r2, [r5, #4]
 8001caa:	6803      	ldr	r3, [r0, #0]
 8001cac:	4311      	orrs	r1, r2
 8001cae:	692a      	ldr	r2, [r5, #16]
 8001cb0:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001cb4:	430a      	orrs	r2, r1
 8001cb6:	f023 030c 	bic.w	r3, r3, #12
 8001cba:	4313      	orrs	r3, r2
 8001cbc:	6003      	str	r3, [r0, #0]
 8001cbe:	6883      	ldr	r3, [r0, #8]
 8001cc0:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001cc4:	696b      	ldr	r3, [r5, #20]
 8001cc6:	4313      	orrs	r3, r2
 8001cc8:	6083      	str	r3, [r0, #8]
 8001cca:	a801      	add	r0, sp, #4
 8001ccc:	f7ff fd44 	bl	8001758 <RCC_GetClocksFreq>
 8001cd0:	4b17      	ldr	r3, [pc, #92]	; (8001d30 <USART_Init+0xb4>)
 8001cd2:	429c      	cmp	r4, r3
 8001cd4:	d101      	bne.n	8001cda <USART_Init+0x5e>
 8001cd6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001cd8:	e00e      	b.n	8001cf8 <USART_Init+0x7c>
 8001cda:	4b16      	ldr	r3, [pc, #88]	; (8001d34 <USART_Init+0xb8>)
 8001cdc:	429c      	cmp	r4, r3
 8001cde:	d101      	bne.n	8001ce4 <USART_Init+0x68>
 8001ce0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001ce2:	e009      	b.n	8001cf8 <USART_Init+0x7c>
 8001ce4:	4b14      	ldr	r3, [pc, #80]	; (8001d38 <USART_Init+0xbc>)
 8001ce6:	429c      	cmp	r4, r3
 8001ce8:	d101      	bne.n	8001cee <USART_Init+0x72>
 8001cea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001cec:	e004      	b.n	8001cf8 <USART_Init+0x7c>
 8001cee:	4b13      	ldr	r3, [pc, #76]	; (8001d3c <USART_Init+0xc0>)
 8001cf0:	429c      	cmp	r4, r3
 8001cf2:	bf0c      	ite	eq
 8001cf4:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001cf6:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001cf8:	6822      	ldr	r2, [r4, #0]
 8001cfa:	6829      	ldr	r1, [r5, #0]
 8001cfc:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001d00:	bf18      	it	ne
 8001d02:	005b      	lslne	r3, r3, #1
 8001d04:	fbb3 f2f1 	udiv	r2, r3, r1
 8001d08:	fb01 3312 	mls	r3, r1, r2, r3
 8001d0c:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001d10:	6823      	ldr	r3, [r4, #0]
 8001d12:	bf28      	it	cs
 8001d14:	3201      	addcs	r2, #1
 8001d16:	041b      	lsls	r3, r3, #16
 8001d18:	bf41      	itttt	mi
 8001d1a:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001d1e:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001d22:	4013      	andmi	r3, r2
 8001d24:	ea41 0203 	orrmi.w	r2, r1, r3
 8001d28:	b292      	uxth	r2, r2
 8001d2a:	81a2      	strh	r2, [r4, #12]
 8001d2c:	b019      	add	sp, #100	; 0x64
 8001d2e:	bd30      	pop	{r4, r5, pc}
 8001d30:	40013800 	.word	0x40013800
 8001d34:	40004400 	.word	0x40004400
 8001d38:	40004800 	.word	0x40004800
 8001d3c:	40004c00 	.word	0x40004c00

08001d40 <USART_Cmd>:
 8001d40:	bf00      	nop
 8001d42:	bf00      	nop
 8001d44:	6803      	ldr	r3, [r0, #0]
 8001d46:	b111      	cbz	r1, 8001d4e <USART_Cmd+0xe>
 8001d48:	f043 0301 	orr.w	r3, r3, #1
 8001d4c:	e001      	b.n	8001d52 <USART_Cmd+0x12>
 8001d4e:	f023 0301 	bic.w	r3, r3, #1
 8001d52:	6003      	str	r3, [r0, #0]
 8001d54:	4770      	bx	lr

08001d56 <USART_ReceiveData>:
 8001d56:	bf00      	nop
 8001d58:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001d5a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001d5e:	4770      	bx	lr

08001d60 <USART_ITConfig>:
 8001d60:	b510      	push	{r4, lr}
 8001d62:	bf00      	nop
 8001d64:	bf00      	nop
 8001d66:	bf00      	nop
 8001d68:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001d6c:	2301      	movs	r3, #1
 8001d6e:	b2c9      	uxtb	r1, r1
 8001d70:	2c02      	cmp	r4, #2
 8001d72:	fa03 f301 	lsl.w	r3, r3, r1
 8001d76:	d101      	bne.n	8001d7c <USART_ITConfig+0x1c>
 8001d78:	3004      	adds	r0, #4
 8001d7a:	e002      	b.n	8001d82 <USART_ITConfig+0x22>
 8001d7c:	2c03      	cmp	r4, #3
 8001d7e:	bf08      	it	eq
 8001d80:	3008      	addeq	r0, #8
 8001d82:	b112      	cbz	r2, 8001d8a <USART_ITConfig+0x2a>
 8001d84:	6802      	ldr	r2, [r0, #0]
 8001d86:	4313      	orrs	r3, r2
 8001d88:	e002      	b.n	8001d90 <USART_ITConfig+0x30>
 8001d8a:	6802      	ldr	r2, [r0, #0]
 8001d8c:	ea22 0303 	bic.w	r3, r2, r3
 8001d90:	6003      	str	r3, [r0, #0]
 8001d92:	bd10      	pop	{r4, pc}

08001d94 <USART_GetITStatus>:
 8001d94:	b510      	push	{r4, lr}
 8001d96:	bf00      	nop
 8001d98:	bf00      	nop
 8001d9a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001d9e:	b2cc      	uxtb	r4, r1
 8001da0:	2301      	movs	r3, #1
 8001da2:	2a01      	cmp	r2, #1
 8001da4:	fa03 f304 	lsl.w	r3, r3, r4
 8001da8:	d101      	bne.n	8001dae <USART_GetITStatus+0x1a>
 8001daa:	6802      	ldr	r2, [r0, #0]
 8001dac:	e003      	b.n	8001db6 <USART_GetITStatus+0x22>
 8001dae:	2a02      	cmp	r2, #2
 8001db0:	bf0c      	ite	eq
 8001db2:	6842      	ldreq	r2, [r0, #4]
 8001db4:	6882      	ldrne	r2, [r0, #8]
 8001db6:	4013      	ands	r3, r2
 8001db8:	69c2      	ldr	r2, [r0, #28]
 8001dba:	b13b      	cbz	r3, 8001dcc <USART_GetITStatus+0x38>
 8001dbc:	0c09      	lsrs	r1, r1, #16
 8001dbe:	2301      	movs	r3, #1
 8001dc0:	408b      	lsls	r3, r1
 8001dc2:	4213      	tst	r3, r2
 8001dc4:	bf14      	ite	ne
 8001dc6:	2001      	movne	r0, #1
 8001dc8:	2000      	moveq	r0, #0
 8001dca:	bd10      	pop	{r4, pc}
 8001dcc:	4618      	mov	r0, r3
 8001dce:	bd10      	pop	{r4, pc}

08001dd0 <USART_ClearITPendingBit>:
 8001dd0:	bf00      	nop
 8001dd2:	bf00      	nop
 8001dd4:	2301      	movs	r3, #1
 8001dd6:	0c09      	lsrs	r1, r1, #16
 8001dd8:	408b      	lsls	r3, r1
 8001dda:	6203      	str	r3, [r0, #32]
 8001ddc:	4770      	bx	lr
	...

08001de0 <SystemInit>:
 8001de0:	4a39      	ldr	r2, [pc, #228]	; (8001ec8 <SystemInit+0xe8>)
 8001de2:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001de6:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001dea:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001dee:	4b37      	ldr	r3, [pc, #220]	; (8001ecc <SystemInit+0xec>)
 8001df0:	681a      	ldr	r2, [r3, #0]
 8001df2:	f042 0201 	orr.w	r2, r2, #1
 8001df6:	601a      	str	r2, [r3, #0]
 8001df8:	6859      	ldr	r1, [r3, #4]
 8001dfa:	4a35      	ldr	r2, [pc, #212]	; (8001ed0 <SystemInit+0xf0>)
 8001dfc:	400a      	ands	r2, r1
 8001dfe:	605a      	str	r2, [r3, #4]
 8001e00:	681a      	ldr	r2, [r3, #0]
 8001e02:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001e06:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001e0a:	601a      	str	r2, [r3, #0]
 8001e0c:	681a      	ldr	r2, [r3, #0]
 8001e0e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001e12:	601a      	str	r2, [r3, #0]
 8001e14:	685a      	ldr	r2, [r3, #4]
 8001e16:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001e1a:	605a      	str	r2, [r3, #4]
 8001e1c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001e1e:	f022 020f 	bic.w	r2, r2, #15
 8001e22:	62da      	str	r2, [r3, #44]	; 0x2c
 8001e24:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001e26:	4a2b      	ldr	r2, [pc, #172]	; (8001ed4 <SystemInit+0xf4>)
 8001e28:	b082      	sub	sp, #8
 8001e2a:	400a      	ands	r2, r1
 8001e2c:	631a      	str	r2, [r3, #48]	; 0x30
 8001e2e:	2200      	movs	r2, #0
 8001e30:	609a      	str	r2, [r3, #8]
 8001e32:	9200      	str	r2, [sp, #0]
 8001e34:	9201      	str	r2, [sp, #4]
 8001e36:	681a      	ldr	r2, [r3, #0]
 8001e38:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001e3c:	601a      	str	r2, [r3, #0]
 8001e3e:	681a      	ldr	r2, [r3, #0]
 8001e40:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001e44:	9201      	str	r2, [sp, #4]
 8001e46:	9a00      	ldr	r2, [sp, #0]
 8001e48:	3201      	adds	r2, #1
 8001e4a:	9200      	str	r2, [sp, #0]
 8001e4c:	9a01      	ldr	r2, [sp, #4]
 8001e4e:	b91a      	cbnz	r2, 8001e58 <SystemInit+0x78>
 8001e50:	9a00      	ldr	r2, [sp, #0]
 8001e52:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001e56:	d1f2      	bne.n	8001e3e <SystemInit+0x5e>
 8001e58:	681a      	ldr	r2, [r3, #0]
 8001e5a:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8001e5e:	bf18      	it	ne
 8001e60:	2201      	movne	r2, #1
 8001e62:	9201      	str	r2, [sp, #4]
 8001e64:	9a01      	ldr	r2, [sp, #4]
 8001e66:	2a01      	cmp	r2, #1
 8001e68:	d005      	beq.n	8001e76 <SystemInit+0x96>
 8001e6a:	4b17      	ldr	r3, [pc, #92]	; (8001ec8 <SystemInit+0xe8>)
 8001e6c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001e70:	609a      	str	r2, [r3, #8]
 8001e72:	b002      	add	sp, #8
 8001e74:	4770      	bx	lr
 8001e76:	4a18      	ldr	r2, [pc, #96]	; (8001ed8 <SystemInit+0xf8>)
 8001e78:	2112      	movs	r1, #18
 8001e7a:	6011      	str	r1, [r2, #0]
 8001e7c:	685a      	ldr	r2, [r3, #4]
 8001e7e:	605a      	str	r2, [r3, #4]
 8001e80:	685a      	ldr	r2, [r3, #4]
 8001e82:	605a      	str	r2, [r3, #4]
 8001e84:	685a      	ldr	r2, [r3, #4]
 8001e86:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001e8a:	605a      	str	r2, [r3, #4]
 8001e8c:	685a      	ldr	r2, [r3, #4]
 8001e8e:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001e92:	605a      	str	r2, [r3, #4]
 8001e94:	685a      	ldr	r2, [r3, #4]
 8001e96:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001e9a:	605a      	str	r2, [r3, #4]
 8001e9c:	681a      	ldr	r2, [r3, #0]
 8001e9e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001ea2:	601a      	str	r2, [r3, #0]
 8001ea4:	6819      	ldr	r1, [r3, #0]
 8001ea6:	4a09      	ldr	r2, [pc, #36]	; (8001ecc <SystemInit+0xec>)
 8001ea8:	0189      	lsls	r1, r1, #6
 8001eaa:	d5fb      	bpl.n	8001ea4 <SystemInit+0xc4>
 8001eac:	6851      	ldr	r1, [r2, #4]
 8001eae:	f021 0103 	bic.w	r1, r1, #3
 8001eb2:	6051      	str	r1, [r2, #4]
 8001eb4:	6851      	ldr	r1, [r2, #4]
 8001eb6:	f041 0102 	orr.w	r1, r1, #2
 8001eba:	6051      	str	r1, [r2, #4]
 8001ebc:	685a      	ldr	r2, [r3, #4]
 8001ebe:	f002 020c 	and.w	r2, r2, #12
 8001ec2:	2a08      	cmp	r2, #8
 8001ec4:	d1fa      	bne.n	8001ebc <SystemInit+0xdc>
 8001ec6:	e7d0      	b.n	8001e6a <SystemInit+0x8a>
 8001ec8:	e000ed00 	.word	0xe000ed00
 8001ecc:	40021000 	.word	0x40021000
 8001ed0:	f87fc00c 	.word	0xf87fc00c
 8001ed4:	ff00fccc 	.word	0xff00fccc
 8001ed8:	40022000 	.word	0x40022000

08001edc <sleep>:
 8001edc:	bf30      	wfi
 8001ede:	4770      	bx	lr

08001ee0 <core_yield>:
 8001ee0:	bf00      	nop
 8001ee2:	4770      	bx	lr

08001ee4 <sytem_clock_init>:
 8001ee4:	f7ff bf7c 	b.w	8001de0 <SystemInit>

08001ee8 <NVIC_Init>:
 8001ee8:	b510      	push	{r4, lr}
 8001eea:	bf00      	nop
 8001eec:	bf00      	nop
 8001eee:	bf00      	nop
 8001ef0:	78c2      	ldrb	r2, [r0, #3]
 8001ef2:	7803      	ldrb	r3, [r0, #0]
 8001ef4:	b312      	cbz	r2, 8001f3c <NVIC_Init+0x54>
 8001ef6:	4a17      	ldr	r2, [pc, #92]	; (8001f54 <NVIC_Init+0x6c>)
 8001ef8:	68d1      	ldr	r1, [r2, #12]
 8001efa:	7842      	ldrb	r2, [r0, #1]
 8001efc:	43c9      	mvns	r1, r1
 8001efe:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001f02:	f1c1 0404 	rsb	r4, r1, #4
 8001f06:	b2e4      	uxtb	r4, r4
 8001f08:	40a2      	lsls	r2, r4
 8001f0a:	b2d4      	uxtb	r4, r2
 8001f0c:	220f      	movs	r2, #15
 8001f0e:	410a      	asrs	r2, r1
 8001f10:	7881      	ldrb	r1, [r0, #2]
 8001f12:	400a      	ands	r2, r1
 8001f14:	4322      	orrs	r2, r4
 8001f16:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8001f1a:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8001f1e:	0112      	lsls	r2, r2, #4
 8001f20:	b2d2      	uxtb	r2, r2
 8001f22:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8001f26:	7803      	ldrb	r3, [r0, #0]
 8001f28:	2201      	movs	r2, #1
 8001f2a:	0959      	lsrs	r1, r3, #5
 8001f2c:	f003 031f 	and.w	r3, r3, #31
 8001f30:	fa02 f303 	lsl.w	r3, r2, r3
 8001f34:	4a08      	ldr	r2, [pc, #32]	; (8001f58 <NVIC_Init+0x70>)
 8001f36:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8001f3a:	bd10      	pop	{r4, pc}
 8001f3c:	095a      	lsrs	r2, r3, #5
 8001f3e:	2101      	movs	r1, #1
 8001f40:	f003 031f 	and.w	r3, r3, #31
 8001f44:	4099      	lsls	r1, r3
 8001f46:	f102 0320 	add.w	r3, r2, #32
 8001f4a:	4a03      	ldr	r2, [pc, #12]	; (8001f58 <NVIC_Init+0x70>)
 8001f4c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001f50:	bd10      	pop	{r4, pc}
 8001f52:	bf00      	nop
 8001f54:	e000ed00 	.word	0xe000ed00
 8001f58:	e000e100 	.word	0xe000e100

08001f5c <EXTI_Init>:
 8001f5c:	b570      	push	{r4, r5, r6, lr}
 8001f5e:	bf00      	nop
 8001f60:	bf00      	nop
 8001f62:	bf00      	nop
 8001f64:	bf00      	nop
 8001f66:	7982      	ldrb	r2, [r0, #6]
 8001f68:	6803      	ldr	r3, [r0, #0]
 8001f6a:	7904      	ldrb	r4, [r0, #4]
 8001f6c:	2a00      	cmp	r2, #0
 8001f6e:	d064      	beq.n	800203a <EXTI_Init+0xde>
 8001f70:	f023 011f 	bic.w	r1, r3, #31
 8001f74:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8001f78:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8001f7c:	f003 021f 	and.w	r2, r3, #31
 8001f80:	680d      	ldr	r5, [r1, #0]
 8001f82:	2301      	movs	r3, #1
 8001f84:	fa03 f202 	lsl.w	r2, r3, r2
 8001f88:	ea25 0202 	bic.w	r2, r5, r2
 8001f8c:	600a      	str	r2, [r1, #0]
 8001f8e:	6802      	ldr	r2, [r0, #0]
 8001f90:	4d32      	ldr	r5, [pc, #200]	; (800205c <EXTI_Init+0x100>)
 8001f92:	f022 061f 	bic.w	r6, r2, #31
 8001f96:	f002 021f 	and.w	r2, r2, #31
 8001f9a:	5971      	ldr	r1, [r6, r5]
 8001f9c:	fa03 f202 	lsl.w	r2, r3, r2
 8001fa0:	ea21 0202 	bic.w	r2, r1, r2
 8001fa4:	5172      	str	r2, [r6, r5]
 8001fa6:	6801      	ldr	r1, [r0, #0]
 8001fa8:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8001fac:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8001fb0:	f021 041f 	bic.w	r4, r1, #31
 8001fb4:	f001 011f 	and.w	r1, r1, #31
 8001fb8:	5915      	ldr	r5, [r2, r4]
 8001fba:	fa03 f101 	lsl.w	r1, r3, r1
 8001fbe:	4329      	orrs	r1, r5
 8001fc0:	5111      	str	r1, [r2, r4]
 8001fc2:	6802      	ldr	r2, [r0, #0]
 8001fc4:	4d26      	ldr	r5, [pc, #152]	; (8002060 <EXTI_Init+0x104>)
 8001fc6:	f022 041f 	bic.w	r4, r2, #31
 8001fca:	f002 021f 	and.w	r2, r2, #31
 8001fce:	5961      	ldr	r1, [r4, r5]
 8001fd0:	fa03 f202 	lsl.w	r2, r3, r2
 8001fd4:	ea21 0202 	bic.w	r2, r1, r2
 8001fd8:	5162      	str	r2, [r4, r5]
 8001fda:	6802      	ldr	r2, [r0, #0]
 8001fdc:	4c21      	ldr	r4, [pc, #132]	; (8002064 <EXTI_Init+0x108>)
 8001fde:	f022 061f 	bic.w	r6, r2, #31
 8001fe2:	f002 021f 	and.w	r2, r2, #31
 8001fe6:	5931      	ldr	r1, [r6, r4]
 8001fe8:	fa03 f202 	lsl.w	r2, r3, r2
 8001fec:	ea21 0202 	bic.w	r2, r1, r2
 8001ff0:	7941      	ldrb	r1, [r0, #5]
 8001ff2:	5132      	str	r2, [r6, r4]
 8001ff4:	2910      	cmp	r1, #16
 8001ff6:	6802      	ldr	r2, [r0, #0]
 8001ff8:	d112      	bne.n	8002020 <EXTI_Init+0xc4>
 8001ffa:	f022 011f 	bic.w	r1, r2, #31
 8001ffe:	f002 021f 	and.w	r2, r2, #31
 8002002:	594e      	ldr	r6, [r1, r5]
 8002004:	fa03 f202 	lsl.w	r2, r3, r2
 8002008:	4332      	orrs	r2, r6
 800200a:	514a      	str	r2, [r1, r5]
 800200c:	6802      	ldr	r2, [r0, #0]
 800200e:	f022 011f 	bic.w	r1, r2, #31
 8002012:	f002 021f 	and.w	r2, r2, #31
 8002016:	5908      	ldr	r0, [r1, r4]
 8002018:	4093      	lsls	r3, r2
 800201a:	4303      	orrs	r3, r0
 800201c:	510b      	str	r3, [r1, r4]
 800201e:	bd70      	pop	{r4, r5, r6, pc}
 8002020:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002024:	f022 001f 	bic.w	r0, r2, #31
 8002028:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 800202c:	f002 021f 	and.w	r2, r2, #31
 8002030:	580c      	ldr	r4, [r1, r0]
 8002032:	4093      	lsls	r3, r2
 8002034:	4323      	orrs	r3, r4
 8002036:	500b      	str	r3, [r1, r0]
 8002038:	bd70      	pop	{r4, r5, r6, pc}
 800203a:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 800203e:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002042:	f023 041f 	bic.w	r4, r3, #31
 8002046:	2001      	movs	r0, #1
 8002048:	5911      	ldr	r1, [r2, r4]
 800204a:	f003 031f 	and.w	r3, r3, #31
 800204e:	fa00 f303 	lsl.w	r3, r0, r3
 8002052:	ea21 0303 	bic.w	r3, r1, r3
 8002056:	5113      	str	r3, [r2, r4]
 8002058:	bd70      	pop	{r4, r5, r6, pc}
 800205a:	bf00      	nop
 800205c:	40010404 	.word	0x40010404
 8002060:	40010408 	.word	0x40010408
 8002064:	4001040c 	.word	0x4001040c

08002068 <EXTI_ClearITPendingBit>:
 8002068:	f020 011f 	bic.w	r1, r0, #31
 800206c:	2301      	movs	r3, #1
 800206e:	f000 001f 	and.w	r0, r0, #31
 8002072:	4a02      	ldr	r2, [pc, #8]	; (800207c <EXTI_ClearITPendingBit+0x14>)
 8002074:	4083      	lsls	r3, r0
 8002076:	508b      	str	r3, [r1, r2]
 8002078:	4770      	bx	lr
 800207a:	bf00      	nop
 800207c:	40010414 	.word	0x40010414

08002080 <GPIO_Init>:
 8002080:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002082:	bf00      	nop
 8002084:	bf00      	nop
 8002086:	bf00      	nop
 8002088:	bf00      	nop
 800208a:	2300      	movs	r3, #0
 800208c:	680e      	ldr	r6, [r1, #0]
 800208e:	461c      	mov	r4, r3
 8002090:	2501      	movs	r5, #1
 8002092:	40a5      	lsls	r5, r4
 8002094:	ea05 0e06 	and.w	lr, r5, r6
 8002098:	45ae      	cmp	lr, r5
 800209a:	d12d      	bne.n	80020f8 <GPIO_Init+0x78>
 800209c:	790f      	ldrb	r7, [r1, #4]
 800209e:	1e7a      	subs	r2, r7, #1
 80020a0:	2a01      	cmp	r2, #1
 80020a2:	d817      	bhi.n	80020d4 <GPIO_Init+0x54>
 80020a4:	bf00      	nop
 80020a6:	2203      	movs	r2, #3
 80020a8:	6885      	ldr	r5, [r0, #8]
 80020aa:	409a      	lsls	r2, r3
 80020ac:	ea25 0202 	bic.w	r2, r5, r2
 80020b0:	6082      	str	r2, [r0, #8]
 80020b2:	794d      	ldrb	r5, [r1, #5]
 80020b4:	6882      	ldr	r2, [r0, #8]
 80020b6:	409d      	lsls	r5, r3
 80020b8:	4315      	orrs	r5, r2
 80020ba:	6085      	str	r5, [r0, #8]
 80020bc:	bf00      	nop
 80020be:	8882      	ldrh	r2, [r0, #4]
 80020c0:	b292      	uxth	r2, r2
 80020c2:	ea22 020e 	bic.w	r2, r2, lr
 80020c6:	8082      	strh	r2, [r0, #4]
 80020c8:	798a      	ldrb	r2, [r1, #6]
 80020ca:	8885      	ldrh	r5, [r0, #4]
 80020cc:	40a2      	lsls	r2, r4
 80020ce:	432a      	orrs	r2, r5
 80020d0:	b292      	uxth	r2, r2
 80020d2:	8082      	strh	r2, [r0, #4]
 80020d4:	2203      	movs	r2, #3
 80020d6:	6805      	ldr	r5, [r0, #0]
 80020d8:	409a      	lsls	r2, r3
 80020da:	43d2      	mvns	r2, r2
 80020dc:	4015      	ands	r5, r2
 80020de:	6005      	str	r5, [r0, #0]
 80020e0:	6805      	ldr	r5, [r0, #0]
 80020e2:	409f      	lsls	r7, r3
 80020e4:	432f      	orrs	r7, r5
 80020e6:	6007      	str	r7, [r0, #0]
 80020e8:	68c7      	ldr	r7, [r0, #12]
 80020ea:	4017      	ands	r7, r2
 80020ec:	79ca      	ldrb	r2, [r1, #7]
 80020ee:	fa02 f503 	lsl.w	r5, r2, r3
 80020f2:	ea47 0205 	orr.w	r2, r7, r5
 80020f6:	60c2      	str	r2, [r0, #12]
 80020f8:	3401      	adds	r4, #1
 80020fa:	2c10      	cmp	r4, #16
 80020fc:	f103 0302 	add.w	r3, r3, #2
 8002100:	d1c6      	bne.n	8002090 <GPIO_Init+0x10>
 8002102:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002104 <GPIO_SetBits>:
 8002104:	bf00      	nop
 8002106:	bf00      	nop
 8002108:	6181      	str	r1, [r0, #24]
 800210a:	4770      	bx	lr

0800210c <GPIO_PinAFConfig>:
 800210c:	b510      	push	{r4, lr}
 800210e:	bf00      	nop
 8002110:	bf00      	nop
 8002112:	bf00      	nop
 8002114:	f001 0307 	and.w	r3, r1, #7
 8002118:	08c9      	lsrs	r1, r1, #3
 800211a:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 800211e:	009b      	lsls	r3, r3, #2
 8002120:	6a04      	ldr	r4, [r0, #32]
 8002122:	210f      	movs	r1, #15
 8002124:	4099      	lsls	r1, r3
 8002126:	ea24 0101 	bic.w	r1, r4, r1
 800212a:	6201      	str	r1, [r0, #32]
 800212c:	6a01      	ldr	r1, [r0, #32]
 800212e:	409a      	lsls	r2, r3
 8002130:	430a      	orrs	r2, r1
 8002132:	6202      	str	r2, [r0, #32]
 8002134:	bd10      	pop	{r4, pc}

08002136 <Default_Handler>:
 8002136:	4668      	mov	r0, sp
 8002138:	f020 0107 	bic.w	r1, r0, #7
 800213c:	468d      	mov	sp, r1
 800213e:	b501      	push	{r0, lr}
 8002140:	bf00      	nop
 8002142:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8002146:	4685      	mov	sp, r0
 8002148:	4770      	bx	lr

0800214a <HardFault_Handler>:
 800214a:	bf00      	nop
 800214c:	e7fd      	b.n	800214a <HardFault_Handler>
	...

08002150 <_reset_init>:
 8002150:	490e      	ldr	r1, [pc, #56]	; (800218c <_reset_init+0x3c>)
 8002152:	4b0f      	ldr	r3, [pc, #60]	; (8002190 <_reset_init+0x40>)
 8002154:	1a5b      	subs	r3, r3, r1
 8002156:	109b      	asrs	r3, r3, #2
 8002158:	2200      	movs	r2, #0
 800215a:	429a      	cmp	r2, r3
 800215c:	d006      	beq.n	800216c <_reset_init+0x1c>
 800215e:	480d      	ldr	r0, [pc, #52]	; (8002194 <_reset_init+0x44>)
 8002160:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002164:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8002168:	3201      	adds	r2, #1
 800216a:	e7f6      	b.n	800215a <_reset_init+0xa>
 800216c:	4a0a      	ldr	r2, [pc, #40]	; (8002198 <_reset_init+0x48>)
 800216e:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002172:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8002176:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800217a:	f502 720c 	add.w	r2, r2, #560	; 0x230
 800217e:	6853      	ldr	r3, [r2, #4]
 8002180:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8002184:	6053      	str	r3, [r2, #4]
 8002186:	f7ff bae1 	b.w	800174c <main>
 800218a:	bf00      	nop
 800218c:	20000000 	.word	0x20000000
 8002190:	20000034 	.word	0x20000034
 8002194:	08002460 	.word	0x08002460
 8002198:	e000ed00 	.word	0xe000ed00

0800219c <SYSCFG_EXTILineConfig>:
 800219c:	b510      	push	{r4, lr}
 800219e:	bf00      	nop
 80021a0:	bf00      	nop
 80021a2:	f001 0303 	and.w	r3, r1, #3
 80021a6:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 80021aa:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80021ae:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 80021b2:	009b      	lsls	r3, r3, #2
 80021b4:	688c      	ldr	r4, [r1, #8]
 80021b6:	220f      	movs	r2, #15
 80021b8:	409a      	lsls	r2, r3
 80021ba:	ea24 0202 	bic.w	r2, r4, r2
 80021be:	608a      	str	r2, [r1, #8]
 80021c0:	688a      	ldr	r2, [r1, #8]
 80021c2:	4098      	lsls	r0, r3
 80021c4:	4310      	orrs	r0, r2
 80021c6:	6088      	str	r0, [r1, #8]
 80021c8:	bd10      	pop	{r4, pc}
	...

080021cc <thread_ending>:
 80021cc:	b672      	cpsid	i
 80021ce:	4b05      	ldr	r3, [pc, #20]	; (80021e4 <thread_ending+0x18>)
 80021d0:	681a      	ldr	r2, [r3, #0]
 80021d2:	4b05      	ldr	r3, [pc, #20]	; (80021e8 <thread_ending+0x1c>)
 80021d4:	210c      	movs	r1, #12
 80021d6:	fb01 3302 	mla	r3, r1, r2, r3
 80021da:	2200      	movs	r2, #0
 80021dc:	605a      	str	r2, [r3, #4]
 80021de:	b662      	cpsie	i
 80021e0:	bf00      	nop
 80021e2:	e7fd      	b.n	80021e0 <thread_ending+0x14>
 80021e4:	20000270 	.word	0x20000270
 80021e8:	20000228 	.word	0x20000228

080021ec <null_thread>:
 80021ec:	b508      	push	{r3, lr}
 80021ee:	f7ff fe75 	bl	8001edc <sleep>
 80021f2:	e7fc      	b.n	80021ee <null_thread+0x2>

080021f4 <scheduler>:
 80021f4:	b570      	push	{r4, r5, r6, lr}
 80021f6:	2200      	movs	r2, #0
 80021f8:	4611      	mov	r1, r2
 80021fa:	4b15      	ldr	r3, [pc, #84]	; (8002250 <scheduler+0x5c>)
 80021fc:	200c      	movs	r0, #12
 80021fe:	fb00 f401 	mul.w	r4, r0, r1
 8002202:	191e      	adds	r6, r3, r4
 8002204:	6875      	ldr	r5, [r6, #4]
 8002206:	f015 0f02 	tst.w	r5, #2
 800220a:	461d      	mov	r5, r3
 800220c:	d10a      	bne.n	8002224 <scheduler+0x30>
 800220e:	6876      	ldr	r6, [r6, #4]
 8002210:	07f6      	lsls	r6, r6, #31
 8002212:	d507      	bpl.n	8002224 <scheduler+0x30>
 8002214:	4350      	muls	r0, r2
 8002216:	5b1c      	ldrh	r4, [r3, r4]
 8002218:	5a18      	ldrh	r0, [r3, r0]
 800221a:	b2a4      	uxth	r4, r4
 800221c:	b280      	uxth	r0, r0
 800221e:	4284      	cmp	r4, r0
 8002220:	bf38      	it	cc
 8002222:	460a      	movcc	r2, r1
 8002224:	200c      	movs	r0, #12
 8002226:	4348      	muls	r0, r1
 8002228:	5a1c      	ldrh	r4, [r3, r0]
 800222a:	b2a4      	uxth	r4, r4
 800222c:	b11c      	cbz	r4, 8002236 <scheduler+0x42>
 800222e:	5a1c      	ldrh	r4, [r3, r0]
 8002230:	3c01      	subs	r4, #1
 8002232:	b2a4      	uxth	r4, r4
 8002234:	521c      	strh	r4, [r3, r0]
 8002236:	3101      	adds	r1, #1
 8002238:	2906      	cmp	r1, #6
 800223a:	d1de      	bne.n	80021fa <scheduler+0x6>
 800223c:	230c      	movs	r3, #12
 800223e:	4353      	muls	r3, r2
 8002240:	18e9      	adds	r1, r5, r3
 8002242:	8849      	ldrh	r1, [r1, #2]
 8002244:	b289      	uxth	r1, r1
 8002246:	52e9      	strh	r1, [r5, r3]
 8002248:	4b02      	ldr	r3, [pc, #8]	; (8002254 <scheduler+0x60>)
 800224a:	601a      	str	r2, [r3, #0]
 800224c:	bd70      	pop	{r4, r5, r6, pc}
 800224e:	bf00      	nop
 8002250:	20000228 	.word	0x20000228
 8002254:	20000270 	.word	0x20000270

08002258 <SysTick_Handler>:
 8002258:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 800225c:	f3ef 8308 	mrs	r3, MSP
 8002260:	4c0d      	ldr	r4, [pc, #52]	; (8002298 <SysTick_Handler+0x40>)
 8002262:	4d0e      	ldr	r5, [pc, #56]	; (800229c <SysTick_Handler+0x44>)
 8002264:	6822      	ldr	r2, [r4, #0]
 8002266:	3201      	adds	r2, #1
 8002268:	bf1d      	ittte	ne
 800226a:	6822      	ldrne	r2, [r4, #0]
 800226c:	210c      	movne	r1, #12
 800226e:	fb01 5202 	mlane	r2, r1, r2, r5
 8002272:	2300      	moveq	r3, #0
 8002274:	bf14      	ite	ne
 8002276:	6093      	strne	r3, [r2, #8]
 8002278:	6023      	streq	r3, [r4, #0]
 800227a:	f7ff ffbb 	bl	80021f4 <scheduler>
 800227e:	6822      	ldr	r2, [r4, #0]
 8002280:	230c      	movs	r3, #12
 8002282:	fb03 5302 	mla	r3, r3, r2, r5
 8002286:	689a      	ldr	r2, [r3, #8]
 8002288:	f06f 0306 	mvn.w	r3, #6
 800228c:	469e      	mov	lr, r3
 800228e:	f382 8808 	msr	MSP, r2
 8002292:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002296:	4770      	bx	lr
 8002298:	20000270 	.word	0x20000270
 800229c:	20000228 	.word	0x20000228

080022a0 <create_thread>:
 80022a0:	f022 0203 	bic.w	r2, r2, #3
 80022a4:	3a40      	subs	r2, #64	; 0x40
 80022a6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80022aa:	eb01 0e02 	add.w	lr, r1, r2
 80022ae:	f102 0634 	add.w	r6, r2, #52	; 0x34
 80022b2:	f102 0738 	add.w	r7, r2, #56	; 0x38
 80022b6:	323c      	adds	r2, #60	; 0x3c
 80022b8:	440e      	add	r6, r1
 80022ba:	440f      	add	r7, r1
 80022bc:	4411      	add	r1, r2
 80022be:	2200      	movs	r2, #0
 80022c0:	b672      	cpsid	i
 80022c2:	f8df c054 	ldr.w	ip, [pc, #84]	; 8002318 <create_thread+0x78>
 80022c6:	250c      	movs	r5, #12
 80022c8:	4355      	muls	r5, r2
 80022ca:	eb0c 0405 	add.w	r4, ip, r5
 80022ce:	f8d4 8004 	ldr.w	r8, [r4, #4]
 80022d2:	f018 0f01 	tst.w	r8, #1
 80022d6:	d114      	bne.n	8002302 <create_thread+0x62>
 80022d8:	f8df 8040 	ldr.w	r8, [pc, #64]	; 800231c <create_thread+0x7c>
 80022dc:	f8c4 e008 	str.w	lr, [r4, #8]
 80022e0:	2b05      	cmp	r3, #5
 80022e2:	f8c6 8000 	str.w	r8, [r6]
 80022e6:	bf98      	it	ls
 80022e8:	2306      	movls	r3, #6
 80022ea:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 80022ee:	6038      	str	r0, [r7, #0]
 80022f0:	f8c1 8000 	str.w	r8, [r1]
 80022f4:	8063      	strh	r3, [r4, #2]
 80022f6:	f82c 3005 	strh.w	r3, [ip, r5]
 80022fa:	2501      	movs	r5, #1
 80022fc:	6065      	str	r5, [r4, #4]
 80022fe:	4614      	mov	r4, r2
 8002300:	e000      	b.n	8002304 <create_thread+0x64>
 8002302:	2406      	movs	r4, #6
 8002304:	b662      	cpsie	i
 8002306:	3201      	adds	r2, #1
 8002308:	2a06      	cmp	r2, #6
 800230a:	d001      	beq.n	8002310 <create_thread+0x70>
 800230c:	2c06      	cmp	r4, #6
 800230e:	d0d7      	beq.n	80022c0 <create_thread+0x20>
 8002310:	4620      	mov	r0, r4
 8002312:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002316:	bf00      	nop
 8002318:	20000228 	.word	0x20000228
 800231c:	080021cd 	.word	0x080021cd

08002320 <kernel_init>:
 8002320:	b510      	push	{r4, lr}
 8002322:	2300      	movs	r3, #0
 8002324:	490b      	ldr	r1, [pc, #44]	; (8002354 <kernel_init+0x34>)
 8002326:	220c      	movs	r2, #12
 8002328:	435a      	muls	r2, r3
 800232a:	188c      	adds	r4, r1, r2
 800232c:	2000      	movs	r0, #0
 800232e:	6060      	str	r0, [r4, #4]
 8002330:	3301      	adds	r3, #1
 8002332:	2006      	movs	r0, #6
 8002334:	4283      	cmp	r3, r0
 8002336:	8060      	strh	r0, [r4, #2]
 8002338:	5288      	strh	r0, [r1, r2]
 800233a:	d1f3      	bne.n	8002324 <kernel_init+0x4>
 800233c:	4b06      	ldr	r3, [pc, #24]	; (8002358 <kernel_init+0x38>)
 800233e:	4807      	ldr	r0, [pc, #28]	; (800235c <kernel_init+0x3c>)
 8002340:	4907      	ldr	r1, [pc, #28]	; (8002360 <kernel_init+0x40>)
 8002342:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002346:	601a      	str	r2, [r3, #0]
 8002348:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800234c:	2280      	movs	r2, #128	; 0x80
 800234e:	23ff      	movs	r3, #255	; 0xff
 8002350:	f7ff bfa6 	b.w	80022a0 <create_thread>
 8002354:	20000228 	.word	0x20000228
 8002358:	20000270 	.word	0x20000270
 800235c:	080021ed 	.word	0x080021ed
 8002360:	20000274 	.word	0x20000274

08002364 <messages_init>:
 8002364:	4a0a      	ldr	r2, [pc, #40]	; (8002390 <messages_init+0x2c>)
 8002366:	2300      	movs	r3, #0
 8002368:	b510      	push	{r4, lr}
 800236a:	6013      	str	r3, [r2, #0]
 800236c:	6053      	str	r3, [r2, #4]
 800236e:	6093      	str	r3, [r2, #8]
 8002370:	60d3      	str	r3, [r2, #12]
 8002372:	6113      	str	r3, [r2, #16]
 8002374:	6153      	str	r3, [r2, #20]
 8002376:	4c07      	ldr	r4, [pc, #28]	; (8002394 <messages_init+0x30>)
 8002378:	0118      	lsls	r0, r3, #4
 800237a:	1821      	adds	r1, r4, r0
 800237c:	3301      	adds	r3, #1
 800237e:	2200      	movs	r2, #0
 8002380:	2b04      	cmp	r3, #4
 8002382:	604a      	str	r2, [r1, #4]
 8002384:	5022      	str	r2, [r4, r0]
 8002386:	60ca      	str	r2, [r1, #12]
 8002388:	608a      	str	r2, [r1, #8]
 800238a:	d1f4      	bne.n	8002376 <messages_init+0x12>
 800238c:	bd10      	pop	{r4, pc}
 800238e:	bf00      	nop
 8002390:	200002f4 	.word	0x200002f4
 8002394:	2000030c 	.word	0x2000030c

08002398 <lib_os_init>:
 8002398:	b508      	push	{r3, lr}
 800239a:	f7ff ffc1 	bl	8002320 <kernel_init>
 800239e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80023a2:	f7ff bfdf 	b.w	8002364 <messages_init>

080023a6 <_text>:
	...

080023a8 <_init>:
 80023a8:	e1a0c00d 	mov	ip, sp
 80023ac:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80023b0:	e24cb004 	sub	fp, ip, #4
 80023b4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80023b8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80023bc:	e12fff1e 	bx	lr

080023c0 <_fini>:
 80023c0:	e1a0c00d 	mov	ip, sp
 80023c4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80023c8:	e24cb004 	sub	fp, ip, #4
 80023cc:	e24bd028 	sub	sp, fp, #40	; 0x28
 80023d0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80023d4:	e12fff1e 	bx	lr
 80023d8:	61646f6b 	.word	0x61646f6b
 80023dc:	6920616d 	.word	0x6920616d
 80023e0:	2074696e 	.word	0x2074696e
 80023e4:	25206925 	.word	0x25206925
 80023e8:	203a2069 	.word	0x203a2069
 80023ec:	4f5b2000 	.word	0x4f5b2000
 80023f0:	000a5d4b 	.word	0x000a5d4b
 80023f4:	41465b20 	.word	0x41465b20
 80023f8:	44454c49 	.word	0x44454c49
 80023fc:	000a0a5d 	.word	0x000a0a5d
 8002400:	74737973 	.word	0x74737973
 8002404:	74206d65 	.word	0x74206d65
 8002408:	20656d69 	.word	0x20656d69
 800240c:	000a7525 	.word	0x000a7525
 8002410:	6f636e65 	.word	0x6f636e65
 8002414:	73726564 	.word	0x73726564
 8002418:	20692520 	.word	0x20692520
 800241c:	000a6925 	.word	0x000a6925
 8002420:	6c676e61 	.word	0x6c676e61
 8002424:	25207365 	.word	0x25207365
 8002428:	69252069 	.word	0x69252069
 800242c:	0a692520 	.word	0x0a692520
 8002430:	63636100 	.word	0x63636100
 8002434:	69252020 	.word	0x69252020
 8002438:	20692520 	.word	0x20692520
 800243c:	000a6925 	.word	0x000a6925
 8002440:	6f727967 	.word	0x6f727967
 8002444:	20692520 	.word	0x20692520
 8002448:	25206925 	.word	0x25206925
 800244c:	25000a69 	.word	0x25000a69
 8002450:	69002069 	.word	0x69002069
 8002454:	20656c64 	.word	0x20656c64
 8002458:	000a7525 	.word	0x000a7525

0800245c <__EH_FRAME_BEGIN__>:
 800245c:	00000000                                ....
