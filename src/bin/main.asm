
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f001 f80e 	bl	80011ac <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f907 	bl	80013b0 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	4620      	mov	r0, r4
 80001b0:	f000 f83c 	bl	800022c <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fba5 	bl	8000910 <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f504 70b4 	add.w	r0, r4, #360	; 0x168
 80001d6:	f000 fb0d 	bl	80007f4 <_ZN6CMotor10motor_initEv>
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
 80001fe:	f001 f9d1 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8000202:	4628      	mov	r0, r5
 8000204:	b91e      	cbnz	r6, 800020e <_ZN7CKodama4initEv+0x26>
 8000206:	4907      	ldr	r1, [pc, #28]	; (8000224 <_ZN7CKodama4initEv+0x3c>)
 8000208:	f001 f9cc 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 800020c:	e005      	b.n	800021a <_ZN7CKodama4initEv+0x32>
 800020e:	4906      	ldr	r1, [pc, #24]	; (8000228 <_ZN7CKodama4initEv+0x40>)
 8000210:	3401      	adds	r4, #1
 8000212:	f001 f9c7 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8000216:	2c08      	cmp	r4, #8
 8000218:	d1e9      	bne.n	80001ee <_ZN7CKodama4initEv+0x6>
 800021a:	4630      	mov	r0, r6
 800021c:	bd70      	pop	{r4, r5, r6, pc}
 800021e:	bf00      	nop
 8000220:	08002608 	.word	0x08002608
 8000224:	0800261d 	.word	0x0800261d
 8000228:	08002624 	.word	0x08002624

0800022c <_ZN6CTimer10timer_initEv>:
 800022c:	b530      	push	{r4, r5, lr}
 800022e:	2300      	movs	r3, #0
 8000230:	b085      	sub	sp, #20
 8000232:	491e      	ldr	r1, [pc, #120]	; (80002ac <_ZN6CTimer10timer_initEv+0x80>)
 8000234:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000238:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800023c:	491c      	ldr	r1, [pc, #112]	; (80002b0 <_ZN6CTimer10timer_initEv+0x84>)
 800023e:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000242:	4a1c      	ldr	r2, [pc, #112]	; (80002b4 <_ZN6CTimer10timer_initEv+0x88>)
 8000244:	2400      	movs	r4, #0
 8000246:	54d4      	strb	r4, [r2, r3]
 8000248:	3301      	adds	r3, #1
 800024a:	2b08      	cmp	r3, #8
 800024c:	d1f1      	bne.n	8000232 <_ZN6CTimer10timer_initEv+0x6>
 800024e:	4b1a      	ldr	r3, [pc, #104]	; (80002b8 <_ZN6CTimer10timer_initEv+0x8c>)
 8000250:	4d1a      	ldr	r5, [pc, #104]	; (80002bc <_ZN6CTimer10timer_initEv+0x90>)
 8000252:	601c      	str	r4, [r3, #0]
 8000254:	2002      	movs	r0, #2
 8000256:	2101      	movs	r1, #1
 8000258:	f001 fd10 	bl	8001c7c <RCC_APB1PeriphClockCmd>
 800025c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000260:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000264:	4628      	mov	r0, r5
 8000266:	2331      	movs	r3, #49	; 0x31
 8000268:	a901      	add	r1, sp, #4
 800026a:	9302      	str	r3, [sp, #8]
 800026c:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000270:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000274:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000278:	f001 fd0e 	bl	8001c98 <TIM_TimeBaseInit>
 800027c:	4628      	mov	r0, r5
 800027e:	2101      	movs	r1, #1
 8000280:	f001 fd5a 	bl	8001d38 <TIM_Cmd>
 8000284:	68eb      	ldr	r3, [r5, #12]
 8000286:	f043 0301 	orr.w	r3, r3, #1
 800028a:	60eb      	str	r3, [r5, #12]
 800028c:	231d      	movs	r3, #29
 800028e:	f88d 3000 	strb.w	r3, [sp]
 8000292:	4668      	mov	r0, sp
 8000294:	2301      	movs	r3, #1
 8000296:	f88d 4001 	strb.w	r4, [sp, #1]
 800029a:	f88d 3002 	strb.w	r3, [sp, #2]
 800029e:	f88d 3003 	strb.w	r3, [sp, #3]
 80002a2:	f001 ff33 	bl	800210c <NVIC_Init>
 80002a6:	4620      	mov	r0, r4
 80002a8:	b005      	add	sp, #20
 80002aa:	bd30      	pop	{r4, r5, pc}
 80002ac:	20000034 	.word	0x20000034
 80002b0:	20000060 	.word	0x20000060
 80002b4:	20000054 	.word	0x20000054
 80002b8:	2000005c 	.word	0x2000005c
 80002bc:	40000400 	.word	0x40000400

080002c0 <TIM3_IRQHandler>:
 80002c0:	2300      	movs	r3, #0
 80002c2:	4a15      	ldr	r2, [pc, #84]	; (8000318 <TIM3_IRQHandler+0x58>)
 80002c4:	5cd1      	ldrb	r1, [r2, r3]
 80002c6:	b111      	cbz	r1, 80002ce <TIM3_IRQHandler+0xe>
 80002c8:	5cd1      	ldrb	r1, [r2, r3]
 80002ca:	29ff      	cmp	r1, #255	; 0xff
 80002cc:	d11e      	bne.n	800030c <TIM3_IRQHandler+0x4c>
 80002ce:	4913      	ldr	r1, [pc, #76]	; (800031c <TIM3_IRQHandler+0x5c>)
 80002d0:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 80002d4:	b128      	cbz	r0, 80002e2 <TIM3_IRQHandler+0x22>
 80002d6:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80002da:	3a01      	subs	r2, #1
 80002dc:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80002e0:	e009      	b.n	80002f6 <TIM3_IRQHandler+0x36>
 80002e2:	480f      	ldr	r0, [pc, #60]	; (8000320 <TIM3_IRQHandler+0x60>)
 80002e4:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80002e8:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80002ec:	5cd2      	ldrb	r2, [r2, r3]
 80002ee:	b912      	cbnz	r2, 80002f6 <TIM3_IRQHandler+0x36>
 80002f0:	4a09      	ldr	r2, [pc, #36]	; (8000318 <TIM3_IRQHandler+0x58>)
 80002f2:	2101      	movs	r1, #1
 80002f4:	54d1      	strb	r1, [r2, r3]
 80002f6:	3301      	adds	r3, #1
 80002f8:	2b08      	cmp	r3, #8
 80002fa:	d1e2      	bne.n	80002c2 <TIM3_IRQHandler+0x2>
 80002fc:	4a09      	ldr	r2, [pc, #36]	; (8000324 <TIM3_IRQHandler+0x64>)
 80002fe:	480a      	ldr	r0, [pc, #40]	; (8000328 <TIM3_IRQHandler+0x68>)
 8000300:	6813      	ldr	r3, [r2, #0]
 8000302:	2101      	movs	r1, #1
 8000304:	3301      	adds	r3, #1
 8000306:	6013      	str	r3, [r2, #0]
 8000308:	f001 bdb3 	b.w	8001e72 <TIM_ClearITPendingBit>
 800030c:	5cd1      	ldrb	r1, [r2, r3]
 800030e:	3101      	adds	r1, #1
 8000310:	b2c9      	uxtb	r1, r1
 8000312:	54d1      	strb	r1, [r2, r3]
 8000314:	e7db      	b.n	80002ce <TIM3_IRQHandler+0xe>
 8000316:	bf00      	nop
 8000318:	20000054 	.word	0x20000054
 800031c:	20000034 	.word	0x20000034
 8000320:	20000060 	.word	0x20000060
 8000324:	2000005c 	.word	0x2000005c
 8000328:	40000400 	.word	0x40000400

0800032c <_ZN6CTimer8get_timeEv>:
 800032c:	b082      	sub	sp, #8
 800032e:	b672      	cpsid	i
 8000330:	4b04      	ldr	r3, [pc, #16]	; (8000344 <_ZN6CTimer8get_timeEv+0x18>)
 8000332:	681b      	ldr	r3, [r3, #0]
 8000334:	9301      	str	r3, [sp, #4]
 8000336:	b662      	cpsie	i
 8000338:	230a      	movs	r3, #10
 800033a:	9801      	ldr	r0, [sp, #4]
 800033c:	fbb0 f0f3 	udiv	r0, r0, r3
 8000340:	b002      	add	sp, #8
 8000342:	4770      	bx	lr
 8000344:	2000005c 	.word	0x2000005c

08000348 <_ZN6CTimer8delay_msEm>:
 8000348:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800034a:	460c      	mov	r4, r1
 800034c:	4605      	mov	r5, r0
 800034e:	f7ff ffed 	bl	800032c <_ZN6CTimer8get_timeEv>
 8000352:	4420      	add	r0, r4
 8000354:	9001      	str	r0, [sp, #4]
 8000356:	4628      	mov	r0, r5
 8000358:	9c01      	ldr	r4, [sp, #4]
 800035a:	f7ff ffe7 	bl	800032c <_ZN6CTimer8get_timeEv>
 800035e:	4284      	cmp	r4, r0
 8000360:	d902      	bls.n	8000368 <_ZN6CTimer8delay_msEm+0x20>
 8000362:	f001 fecf 	bl	8002104 <core_yield>
 8000366:	e7f6      	b.n	8000356 <_ZN6CTimer8delay_msEm+0xe>
 8000368:	b003      	add	sp, #12
 800036a:	bd30      	pop	{r4, r5, pc}

0800036c <_ZN6CTimer22event_timer_set_periodEhm>:
 800036c:	b672      	cpsid	i
 800036e:	230a      	movs	r3, #10
 8000370:	435a      	muls	r2, r3
 8000372:	4b05      	ldr	r3, [pc, #20]	; (8000388 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000374:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000378:	4b04      	ldr	r3, [pc, #16]	; (800038c <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 800037a:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 800037e:	4b04      	ldr	r3, [pc, #16]	; (8000390 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000380:	2200      	movs	r2, #0
 8000382:	545a      	strb	r2, [r3, r1]
 8000384:	b662      	cpsie	i
 8000386:	4770      	bx	lr
 8000388:	20000034 	.word	0x20000034
 800038c:	20000060 	.word	0x20000060
 8000390:	20000054 	.word	0x20000054

08000394 <_ZN6CTimer17event_timer_checkEh>:
 8000394:	4b05      	ldr	r3, [pc, #20]	; (80003ac <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000396:	5c5a      	ldrb	r2, [r3, r1]
 8000398:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 800039c:	b12a      	cbz	r2, 80003aa <_ZN6CTimer17event_timer_checkEh+0x16>
 800039e:	b672      	cpsid	i
 80003a0:	5c58      	ldrb	r0, [r3, r1]
 80003a2:	2200      	movs	r2, #0
 80003a4:	b2c0      	uxtb	r0, r0
 80003a6:	545a      	strb	r2, [r3, r1]
 80003a8:	b662      	cpsie	i
 80003aa:	4770      	bx	lr
 80003ac:	20000054 	.word	0x20000054

080003b0 <_ZN4CRGB8rgb_readEh>:
 80003b0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80003b4:	4604      	mov	r4, r0
 80003b6:	4689      	mov	r9, r1
 80003b8:	f000 fb2c 	bl	8000a14 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80003bc:	4620      	mov	r0, r4
 80003be:	2172      	movs	r1, #114	; 0x72
 80003c0:	f000 fb52 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80003c4:	21b4      	movs	r1, #180	; 0xb4
 80003c6:	4620      	mov	r0, r4
 80003c8:	f000 fb4e 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80003cc:	4620      	mov	r0, r4
 80003ce:	f000 fb21 	bl	8000a14 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80003d2:	1d26      	adds	r6, r4, #4
 80003d4:	4620      	mov	r0, r4
 80003d6:	2173      	movs	r1, #115	; 0x73
 80003d8:	f000 fb46 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80003dc:	1ce5      	adds	r5, r4, #3
 80003de:	4632      	mov	r2, r6
 80003e0:	4620      	mov	r0, r4
 80003e2:	2101      	movs	r1, #1
 80003e4:	f104 0a42 	add.w	sl, r4, #66	; 0x42
 80003e8:	f000 fb80 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80003ec:	f104 0754 	add.w	r7, r4, #84	; 0x54
 80003f0:	4653      	mov	r3, sl
 80003f2:	462a      	mov	r2, r5
 80003f4:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80003f8:	f823 1f02 	strh.w	r1, [r3, #2]!
 80003fc:	42bb      	cmp	r3, r7
 80003fe:	d1f9      	bne.n	80003f4 <_ZN4CRGB8rgb_readEh+0x44>
 8000400:	2101      	movs	r1, #1
 8000402:	4620      	mov	r0, r4
 8000404:	4632      	mov	r2, r6
 8000406:	f000 fb71 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800040a:	4629      	mov	r1, r5
 800040c:	4653      	mov	r3, sl
 800040e:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000412:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000416:	42bb      	cmp	r3, r7
 8000418:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 800041c:	801a      	strh	r2, [r3, #0]
 800041e:	d1f6      	bne.n	800040e <_ZN4CRGB8rgb_readEh+0x5e>
 8000420:	4632      	mov	r2, r6
 8000422:	4620      	mov	r0, r4
 8000424:	2101      	movs	r1, #1
 8000426:	f104 080c 	add.w	r8, r4, #12
 800042a:	f000 fb5f 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800042e:	f104 0b1e 	add.w	fp, r4, #30
 8000432:	4643      	mov	r3, r8
 8000434:	462a      	mov	r2, r5
 8000436:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800043a:	f823 1f02 	strh.w	r1, [r3, #2]!
 800043e:	455b      	cmp	r3, fp
 8000440:	d1f9      	bne.n	8000436 <_ZN4CRGB8rgb_readEh+0x86>
 8000442:	4632      	mov	r2, r6
 8000444:	4620      	mov	r0, r4
 8000446:	2101      	movs	r1, #1
 8000448:	f000 fb50 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800044c:	462a      	mov	r2, r5
 800044e:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 8000452:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000456:	45d8      	cmp	r8, fp
 8000458:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800045c:	f8a8 3000 	strh.w	r3, [r8]
 8000460:	d1f5      	bne.n	800044e <_ZN4CRGB8rgb_readEh+0x9e>
 8000462:	4632      	mov	r2, r6
 8000464:	4620      	mov	r0, r4
 8000466:	2101      	movs	r1, #1
 8000468:	f000 fb40 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800046c:	f104 0830 	add.w	r8, r4, #48	; 0x30
 8000470:	465b      	mov	r3, fp
 8000472:	462a      	mov	r2, r5
 8000474:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000478:	f823 1f02 	strh.w	r1, [r3, #2]!
 800047c:	4543      	cmp	r3, r8
 800047e:	d1f9      	bne.n	8000474 <_ZN4CRGB8rgb_readEh+0xc4>
 8000480:	4632      	mov	r2, r6
 8000482:	4620      	mov	r0, r4
 8000484:	2101      	movs	r1, #1
 8000486:	f000 fb31 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800048a:	462a      	mov	r2, r5
 800048c:	f83b 3f02 	ldrh.w	r3, [fp, #2]!
 8000490:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000494:	45c3      	cmp	fp, r8
 8000496:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800049a:	f8ab 3000 	strh.w	r3, [fp]
 800049e:	d1f5      	bne.n	800048c <_ZN4CRGB8rgb_readEh+0xdc>
 80004a0:	4632      	mov	r2, r6
 80004a2:	4620      	mov	r0, r4
 80004a4:	2101      	movs	r1, #1
 80004a6:	f000 fb21 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80004aa:	4643      	mov	r3, r8
 80004ac:	462a      	mov	r2, r5
 80004ae:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80004b2:	f823 1f02 	strh.w	r1, [r3, #2]!
 80004b6:	4553      	cmp	r3, sl
 80004b8:	d1f9      	bne.n	80004ae <_ZN4CRGB8rgb_readEh+0xfe>
 80004ba:	4632      	mov	r2, r6
 80004bc:	4620      	mov	r0, r4
 80004be:	2101      	movs	r1, #1
 80004c0:	f000 fb14 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80004c4:	462a      	mov	r2, r5
 80004c6:	f838 3f02 	ldrh.w	r3, [r8, #2]!
 80004ca:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80004ce:	45d0      	cmp	r8, sl
 80004d0:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80004d4:	f8a8 3000 	strh.w	r3, [r8]
 80004d8:	d1f5      	bne.n	80004c6 <_ZN4CRGB8rgb_readEh+0x116>
 80004da:	4632      	mov	r2, r6
 80004dc:	4620      	mov	r0, r4
 80004de:	2101      	movs	r1, #1
 80004e0:	f000 fb04 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80004e4:	f104 0866 	add.w	r8, r4, #102	; 0x66
 80004e8:	463b      	mov	r3, r7
 80004ea:	462a      	mov	r2, r5
 80004ec:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80004f0:	f823 1f02 	strh.w	r1, [r3, #2]!
 80004f4:	4543      	cmp	r3, r8
 80004f6:	d1f9      	bne.n	80004ec <_ZN4CRGB8rgb_readEh+0x13c>
 80004f8:	4620      	mov	r0, r4
 80004fa:	2100      	movs	r1, #0
 80004fc:	4632      	mov	r2, r6
 80004fe:	f000 faf5 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000502:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000506:	f815 2f01 	ldrb.w	r2, [r5, #1]!
 800050a:	4547      	cmp	r7, r8
 800050c:	ea43 2302 	orr.w	r3, r3, r2, lsl #8
 8000510:	803b      	strh	r3, [r7, #0]
 8000512:	d1f6      	bne.n	8000502 <_ZN4CRGB8rgb_readEh+0x152>
 8000514:	4620      	mov	r0, r4
 8000516:	f000 fa92 	bl	8000a3e <_ZN8CRGB_I2C11rgb_i2cStopEv>
 800051a:	f1b9 0f00 	cmp.w	r9, #0
 800051e:	d027      	beq.n	8000570 <_ZN4CRGB8rgb_readEh+0x1c0>
 8000520:	2300      	movs	r3, #0
 8000522:	89e1      	ldrh	r1, [r4, #14]
 8000524:	f8b4 209e 	ldrh.w	r2, [r4, #158]	; 0x9e
 8000528:	440a      	add	r2, r1
 800052a:	f8a4 209e 	strh.w	r2, [r4, #158]	; 0x9e
 800052e:	8c21      	ldrh	r1, [r4, #32]
 8000530:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 8000534:	440a      	add	r2, r1
 8000536:	f8a4 20b0 	strh.w	r2, [r4, #176]	; 0xb0
 800053a:	8e61      	ldrh	r1, [r4, #50]	; 0x32
 800053c:	f8b4 20c2 	ldrh.w	r2, [r4, #194]	; 0xc2
 8000540:	440a      	add	r2, r1
 8000542:	f8a4 20c2 	strh.w	r2, [r4, #194]	; 0xc2
 8000546:	f8b4 1056 	ldrh.w	r1, [r4, #86]	; 0x56
 800054a:	f8b4 20e6 	ldrh.w	r2, [r4, #230]	; 0xe6
 800054e:	440a      	add	r2, r1
 8000550:	f8a4 20e6 	strh.w	r2, [r4, #230]	; 0xe6
 8000554:	f8b4 1044 	ldrh.w	r1, [r4, #68]	; 0x44
 8000558:	f8b4 20d4 	ldrh.w	r2, [r4, #212]	; 0xd4
 800055c:	3301      	adds	r3, #1
 800055e:	440a      	add	r2, r1
 8000560:	2b09      	cmp	r3, #9
 8000562:	f8a4 20d4 	strh.w	r2, [r4, #212]	; 0xd4
 8000566:	f104 0402 	add.w	r4, r4, #2
 800056a:	d1da      	bne.n	8000522 <_ZN4CRGB8rgb_readEh+0x172>
 800056c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000570:	4649      	mov	r1, r9
 8000572:	b672      	cpsid	i
 8000574:	89e3      	ldrh	r3, [r4, #14]
 8000576:	f8b4 009e 	ldrh.w	r0, [r4, #158]	; 0x9e
 800057a:	f8b4 20b0 	ldrh.w	r2, [r4, #176]	; 0xb0
 800057e:	f8b4 50c2 	ldrh.w	r5, [r4, #194]	; 0xc2
 8000582:	f8b4 60e6 	ldrh.w	r6, [r4, #230]	; 0xe6
 8000586:	1a18      	subs	r0, r3, r0
 8000588:	8c23      	ldrh	r3, [r4, #32]
 800058a:	1a9a      	subs	r2, r3, r2
 800058c:	8e63      	ldrh	r3, [r4, #50]	; 0x32
 800058e:	1b5b      	subs	r3, r3, r5
 8000590:	f8b4 5056 	ldrh.w	r5, [r4, #86]	; 0x56
 8000594:	1bad      	subs	r5, r5, r6
 8000596:	f8a4 5056 	strh.w	r5, [r4, #86]	; 0x56
 800059a:	f8b4 60d4 	ldrh.w	r6, [r4, #212]	; 0xd4
 800059e:	f8b4 5044 	ldrh.w	r5, [r4, #68]	; 0x44
 80005a2:	b280      	uxth	r0, r0
 80005a4:	b292      	uxth	r2, r2
 80005a6:	b29b      	uxth	r3, r3
 80005a8:	1bad      	subs	r5, r5, r6
 80005aa:	81e0      	strh	r0, [r4, #14]
 80005ac:	8422      	strh	r2, [r4, #32]
 80005ae:	8663      	strh	r3, [r4, #50]	; 0x32
 80005b0:	f8a4 5044 	strh.w	r5, [r4, #68]	; 0x44
 80005b4:	b662      	cpsie	i
 80005b6:	b200      	sxth	r0, r0
 80005b8:	b212      	sxth	r2, r2
 80005ba:	1885      	adds	r5, r0, r2
 80005bc:	b21b      	sxth	r3, r3
 80005be:	18ed      	adds	r5, r5, r3
 80005c0:	d011      	beq.n	80005e6 <_ZN4CRGB8rgb_readEh+0x236>
 80005c2:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 80005c6:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 80005ca:	fb90 f0f5 	sdiv	r0, r0, r5
 80005ce:	fb92 f2f5 	sdiv	r2, r2, r5
 80005d2:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 80005d6:	f8a4 0068 	strh.w	r0, [r4, #104]	; 0x68
 80005da:	fb93 f3f5 	sdiv	r3, r3, r5
 80005de:	f8a4 207a 	strh.w	r2, [r4, #122]	; 0x7a
 80005e2:	f8a4 308c 	strh.w	r3, [r4, #140]	; 0x8c
 80005e6:	3101      	adds	r1, #1
 80005e8:	2909      	cmp	r1, #9
 80005ea:	f104 0402 	add.w	r4, r4, #2
 80005ee:	d1c0      	bne.n	8000572 <_ZN4CRGB8rgb_readEh+0x1c2>
 80005f0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

080005f4 <_ZN4CRGB8rgb_initEv>:
 80005f4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80005f6:	4604      	mov	r4, r0
 80005f8:	b085      	sub	sp, #20
 80005fa:	f000 fb0d 	bl	8000c18 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80005fe:	4626      	mov	r6, r4
 8000600:	4623      	mov	r3, r4
 8000602:	2509      	movs	r5, #9
 8000604:	2200      	movs	r2, #0
 8000606:	3d01      	subs	r5, #1
 8000608:	81da      	strh	r2, [r3, #14]
 800060a:	841a      	strh	r2, [r3, #32]
 800060c:	865a      	strh	r2, [r3, #50]	; 0x32
 800060e:	f8a3 2056 	strh.w	r2, [r3, #86]	; 0x56
 8000612:	f8a3 2044 	strh.w	r2, [r3, #68]	; 0x44
 8000616:	f8a3 209e 	strh.w	r2, [r3, #158]	; 0x9e
 800061a:	f8a3 20b0 	strh.w	r2, [r3, #176]	; 0xb0
 800061e:	f8a3 20c2 	strh.w	r2, [r3, #194]	; 0xc2
 8000622:	f8a3 20e6 	strh.w	r2, [r3, #230]	; 0xe6
 8000626:	f8a3 20d4 	strh.w	r2, [r3, #212]	; 0xd4
 800062a:	f8a3 2068 	strh.w	r2, [r3, #104]	; 0x68
 800062e:	f8a3 207a 	strh.w	r2, [r3, #122]	; 0x7a
 8000632:	f8a3 208c 	strh.w	r2, [r3, #140]	; 0x8c
 8000636:	f103 0302 	add.w	r3, r3, #2
 800063a:	d1e3      	bne.n	8000604 <_ZN4CRGB8rgb_initEv+0x10>
 800063c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000640:	2208      	movs	r2, #8
 8000642:	851a      	strh	r2, [r3, #40]	; 0x28
 8000644:	4620      	mov	r0, r4
 8000646:	f000 fae7 	bl	8000c18 <_ZN8CRGB_I2C12rgb_i2c_initEv>
 800064a:	4620      	mov	r0, r4
 800064c:	2172      	movs	r1, #114	; 0x72
 800064e:	2281      	movs	r2, #129	; 0x81
 8000650:	23ff      	movs	r3, #255	; 0xff
 8000652:	f000 fa32 	bl	8000aba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000656:	4620      	mov	r0, r4
 8000658:	2172      	movs	r1, #114	; 0x72
 800065a:	2283      	movs	r2, #131	; 0x83
 800065c:	23ff      	movs	r3, #255	; 0xff
 800065e:	f000 fa2c 	bl	8000aba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000662:	4620      	mov	r0, r4
 8000664:	2172      	movs	r1, #114	; 0x72
 8000666:	228d      	movs	r2, #141	; 0x8d
 8000668:	462b      	mov	r3, r5
 800066a:	f000 fa26 	bl	8000aba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800066e:	2172      	movs	r1, #114	; 0x72
 8000670:	2280      	movs	r2, #128	; 0x80
 8000672:	2303      	movs	r3, #3
 8000674:	4620      	mov	r0, r4
 8000676:	f000 fa20 	bl	8000aba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800067a:	4620      	mov	r0, r4
 800067c:	f000 fb18 	bl	8000cb0 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>
 8000680:	228f      	movs	r2, #143	; 0x8f
 8000682:	2323      	movs	r3, #35	; 0x23
 8000684:	2172      	movs	r1, #114	; 0x72
 8000686:	4620      	mov	r0, r4
 8000688:	f000 fa17 	bl	8000aba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800068c:	4620      	mov	r0, r4
 800068e:	f000 fb12 	bl	8000cb6 <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>
 8000692:	af01      	add	r7, sp, #4
 8000694:	4620      	mov	r0, r4
 8000696:	4629      	mov	r1, r5
 8000698:	f7ff fe8a 	bl	80003b0 <_ZN4CRGB8rgb_readEh>
 800069c:	463b      	mov	r3, r7
 800069e:	4620      	mov	r0, r4
 80006a0:	2172      	movs	r1, #114	; 0x72
 80006a2:	2292      	movs	r2, #146	; 0x92
 80006a4:	f000 fa96 	bl	8000bd4 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 80006a8:	462b      	mov	r3, r5
 80006aa:	5cfa      	ldrb	r2, [r7, r3]
 80006ac:	2a69      	cmp	r2, #105	; 0x69
 80006ae:	bf1c      	itt	ne
 80006b0:	2201      	movne	r2, #1
 80006b2:	409a      	lslne	r2, r3
 80006b4:	f103 0301 	add.w	r3, r3, #1
 80006b8:	bf18      	it	ne
 80006ba:	4315      	orrne	r5, r2
 80006bc:	2b09      	cmp	r3, #9
 80006be:	d1f4      	bne.n	80006aa <_ZN4CRGB8rgb_initEv+0xb6>
 80006c0:	2704      	movs	r7, #4
 80006c2:	4620      	mov	r0, r4
 80006c4:	2101      	movs	r1, #1
 80006c6:	f7ff fe73 	bl	80003b0 <_ZN4CRGB8rgb_readEh>
 80006ca:	3f01      	subs	r7, #1
 80006cc:	d1f9      	bne.n	80006c2 <_ZN4CRGB8rgb_initEv+0xce>
 80006ce:	2109      	movs	r1, #9
 80006d0:	f9b6 309e 	ldrsh.w	r3, [r6, #158]	; 0x9e
 80006d4:	089b      	lsrs	r3, r3, #2
 80006d6:	f8a6 309e 	strh.w	r3, [r6, #158]	; 0x9e
 80006da:	f9b6 30b0 	ldrsh.w	r3, [r6, #176]	; 0xb0
 80006de:	089b      	lsrs	r3, r3, #2
 80006e0:	f8a6 30b0 	strh.w	r3, [r6, #176]	; 0xb0
 80006e4:	f9b6 30c2 	ldrsh.w	r3, [r6, #194]	; 0xc2
 80006e8:	089b      	lsrs	r3, r3, #2
 80006ea:	f8a6 30c2 	strh.w	r3, [r6, #194]	; 0xc2
 80006ee:	f9b6 30e6 	ldrsh.w	r3, [r6, #230]	; 0xe6
 80006f2:	089b      	lsrs	r3, r3, #2
 80006f4:	f8a6 30e6 	strh.w	r3, [r6, #230]	; 0xe6
 80006f8:	f9b6 30d4 	ldrsh.w	r3, [r6, #212]	; 0xd4
 80006fc:	3901      	subs	r1, #1
 80006fe:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000702:	f8a6 30d4 	strh.w	r3, [r6, #212]	; 0xd4
 8000706:	f106 0602 	add.w	r6, r6, #2
 800070a:	d1e1      	bne.n	80006d0 <_ZN4CRGB8rgb_initEv+0xdc>
 800070c:	4620      	mov	r0, r4
 800070e:	f7ff fe4f 	bl	80003b0 <_ZN4CRGB8rgb_readEh>
 8000712:	b115      	cbz	r5, 800071a <_ZN4CRGB8rgb_initEv+0x126>
 8000714:	4802      	ldr	r0, [pc, #8]	; (8000720 <_ZN4CRGB8rgb_initEv+0x12c>)
 8000716:	1b40      	subs	r0, r0, r5
 8000718:	e000      	b.n	800071c <_ZN4CRGB8rgb_initEv+0x128>
 800071a:	4628      	mov	r0, r5
 800071c:	b005      	add	sp, #20
 800071e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000720:	fffffc18 	.word	0xfffffc18

08000724 <_ZN4CRGB14get_rgb_resultEv>:
 8000724:	300e      	adds	r0, #14
 8000726:	4770      	bx	lr

08000728 <_ZN6CMotor7pwm_setEmm>:
 8000728:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800072c:	b086      	sub	sp, #24
 800072e:	2370      	movs	r3, #112	; 0x70
 8000730:	9301      	str	r3, [sp, #4]
 8000732:	f8df 8070 	ldr.w	r8, [pc, #112]	; 80007a4 <_ZN6CMotor7pwm_setEmm+0x7c>
 8000736:	4c1a      	ldr	r4, [pc, #104]	; (80007a0 <_ZN6CMotor7pwm_setEmm+0x78>)
 8000738:	f8d8 0000 	ldr.w	r0, [r8]
 800073c:	2301      	movs	r3, #1
 800073e:	f8ad 3008 	strh.w	r3, [sp, #8]
 8000742:	2304      	movs	r3, #4
 8000744:	f8ad 300a 	strh.w	r3, [sp, #10]
 8000748:	f242 7710 	movw	r7, #10000	; 0x2710
 800074c:	2302      	movs	r3, #2
 800074e:	fbb0 f0f7 	udiv	r0, r0, r7
 8000752:	3802      	subs	r0, #2
 8000754:	4616      	mov	r6, r2
 8000756:	f8ad 3010 	strh.w	r3, [sp, #16]
 800075a:	f44f 7280 	mov.w	r2, #256	; 0x100
 800075e:	2300      	movs	r3, #0
 8000760:	2564      	movs	r5, #100	; 0x64
 8000762:	4341      	muls	r1, r0
 8000764:	fbb1 f0f5 	udiv	r0, r1, r5
 8000768:	a901      	add	r1, sp, #4
 800076a:	9003      	str	r0, [sp, #12]
 800076c:	4620      	mov	r0, r4
 800076e:	f8ad 3012 	strh.w	r3, [sp, #18]
 8000772:	f8ad 2014 	strh.w	r2, [sp, #20]
 8000776:	f8ad 3016 	strh.w	r3, [sp, #22]
 800077a:	f001 faeb 	bl	8001d54 <TIM_OC1Init>
 800077e:	f8d8 3000 	ldr.w	r3, [r8]
 8000782:	fbb3 f3f7 	udiv	r3, r3, r7
 8000786:	4620      	mov	r0, r4
 8000788:	3b02      	subs	r3, #2
 800078a:	a901      	add	r1, sp, #4
 800078c:	fb03 f206 	mul.w	r2, r3, r6
 8000790:	fbb2 f2f5 	udiv	r2, r2, r5
 8000794:	9203      	str	r2, [sp, #12]
 8000796:	f001 fb23 	bl	8001de0 <TIM_OC2Init>
 800079a:	b006      	add	sp, #24
 800079c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80007a0:	40012c00 	.word	0x40012c00
 80007a4:	20000030 	.word	0x20000030

080007a8 <_ZN6CMotor13motor_refreshEv>:
 80007a8:	6802      	ldr	r2, [r0, #0]
 80007aa:	6841      	ldr	r1, [r0, #4]
 80007ac:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007b0:	b510      	push	{r4, lr}
 80007b2:	2a00      	cmp	r2, #0
 80007b4:	f44f 4400 	mov.w	r4, #32768	; 0x8000
 80007b8:	bfce      	itee	gt
 80007ba:	851c      	strhgt	r4, [r3, #40]	; 0x28
 80007bc:	619c      	strle	r4, [r3, #24]
 80007be:	4252      	negle	r2, r2
 80007c0:	4b08      	ldr	r3, [pc, #32]	; (80007e4 <_ZN6CMotor13motor_refreshEv+0x3c>)
 80007c2:	2900      	cmp	r1, #0
 80007c4:	f04f 0420 	mov.w	r4, #32
 80007c8:	bfd6      	itet	le
 80007ca:	4249      	negle	r1, r1
 80007cc:	851c      	strhgt	r4, [r3, #40]	; 0x28
 80007ce:	619c      	strle	r4, [r3, #24]
 80007d0:	2964      	cmp	r1, #100	; 0x64
 80007d2:	bfa8      	it	ge
 80007d4:	2164      	movge	r1, #100	; 0x64
 80007d6:	2a64      	cmp	r2, #100	; 0x64
 80007d8:	bfa8      	it	ge
 80007da:	2264      	movge	r2, #100	; 0x64
 80007dc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80007e0:	f7ff bfa2 	b.w	8000728 <_ZN6CMotor7pwm_setEmm>
 80007e4:	48000400 	.word	0x48000400

080007e8 <_ZN6CMotor9set_motorEml>:
 80007e8:	2901      	cmp	r1, #1
 80007ea:	bf98      	it	ls
 80007ec:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 80007f0:	f7ff bfda 	b.w	80007a8 <_ZN6CMotor13motor_refreshEv>

080007f4 <_ZN6CMotor10motor_initEv>:
 80007f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80007f8:	4e42      	ldr	r6, [pc, #264]	; (8000904 <_ZN6CMotor10motor_initEv+0x110>)
 80007fa:	b087      	sub	sp, #28
 80007fc:	2400      	movs	r4, #0
 80007fe:	2501      	movs	r5, #1
 8000800:	4680      	mov	r8, r0
 8000802:	2703      	movs	r7, #3
 8000804:	f04f 0910 	mov.w	r9, #16
 8000808:	4630      	mov	r0, r6
 800080a:	a901      	add	r1, sp, #4
 800080c:	f8cd 9004 	str.w	r9, [sp, #4]
 8000810:	f88d 5008 	strb.w	r5, [sp, #8]
 8000814:	f88d 400a 	strb.w	r4, [sp, #10]
 8000818:	f88d 7009 	strb.w	r7, [sp, #9]
 800081c:	f88d 400b 	strb.w	r4, [sp, #11]
 8000820:	f001 fd40 	bl	80022a4 <GPIO_Init>
 8000824:	f8a6 9028 	strh.w	r9, [r6, #40]	; 0x28
 8000828:	2320      	movs	r3, #32
 800082a:	4630      	mov	r0, r6
 800082c:	a901      	add	r1, sp, #4
 800082e:	9301      	str	r3, [sp, #4]
 8000830:	f88d 5008 	strb.w	r5, [sp, #8]
 8000834:	f88d 400a 	strb.w	r4, [sp, #10]
 8000838:	f88d 7009 	strb.w	r7, [sp, #9]
 800083c:	f88d 400b 	strb.w	r4, [sp, #11]
 8000840:	f001 fd30 	bl	80022a4 <GPIO_Init>
 8000844:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000848:	a901      	add	r1, sp, #4
 800084a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800084e:	9301      	str	r3, [sp, #4]
 8000850:	f88d 5008 	strb.w	r5, [sp, #8]
 8000854:	f88d 400a 	strb.w	r4, [sp, #10]
 8000858:	f88d 7009 	strb.w	r7, [sp, #9]
 800085c:	f88d 400b 	strb.w	r4, [sp, #11]
 8000860:	f001 fd20 	bl	80022a4 <GPIO_Init>
 8000864:	4629      	mov	r1, r5
 8000866:	f44f 6000 	mov.w	r0, #2048	; 0x800
 800086a:	f001 f9f9 	bl	8001c60 <RCC_APB2PeriphClockCmd>
 800086e:	4629      	mov	r1, r5
 8000870:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000874:	f001 f9e6 	bl	8001c44 <RCC_AHBPeriphClockCmd>
 8000878:	f44f 43c0 	mov.w	r3, #24576	; 0x6000
 800087c:	9301      	str	r3, [sp, #4]
 800087e:	4630      	mov	r0, r6
 8000880:	2302      	movs	r3, #2
 8000882:	a901      	add	r1, sp, #4
 8000884:	f88d 3008 	strb.w	r3, [sp, #8]
 8000888:	f88d 7009 	strb.w	r7, [sp, #9]
 800088c:	f001 fd0a 	bl	80022a4 <GPIO_Init>
 8000890:	4630      	mov	r0, r6
 8000892:	210d      	movs	r1, #13
 8000894:	2206      	movs	r2, #6
 8000896:	f001 fd4b 	bl	8002330 <GPIO_PinAFConfig>
 800089a:	4630      	mov	r0, r6
 800089c:	210e      	movs	r1, #14
 800089e:	2206      	movs	r2, #6
 80008a0:	f001 fd46 	bl	8002330 <GPIO_PinAFConfig>
 80008a4:	4e18      	ldr	r6, [pc, #96]	; (8000908 <_ZN6CMotor10motor_initEv+0x114>)
 80008a6:	4b19      	ldr	r3, [pc, #100]	; (800090c <_ZN6CMotor10motor_initEv+0x118>)
 80008a8:	f8ad 400c 	strh.w	r4, [sp, #12]
 80008ac:	f242 7210 	movw	r2, #10000	; 0x2710
 80008b0:	4630      	mov	r0, r6
 80008b2:	a903      	add	r1, sp, #12
 80008b4:	681b      	ldr	r3, [r3, #0]
 80008b6:	fbb3 f3f2 	udiv	r3, r3, r2
 80008ba:	3b01      	subs	r3, #1
 80008bc:	9304      	str	r3, [sp, #16]
 80008be:	f8ad 400e 	strh.w	r4, [sp, #14]
 80008c2:	f8ad 4014 	strh.w	r4, [sp, #20]
 80008c6:	f8ad 4016 	strh.w	r4, [sp, #22]
 80008ca:	f001 f9e5 	bl	8001c98 <TIM_TimeBaseInit>
 80008ce:	4622      	mov	r2, r4
 80008d0:	4640      	mov	r0, r8
 80008d2:	4621      	mov	r1, r4
 80008d4:	f7ff ff28 	bl	8000728 <_ZN6CMotor7pwm_setEmm>
 80008d8:	4630      	mov	r0, r6
 80008da:	4629      	mov	r1, r5
 80008dc:	f001 fa2c 	bl	8001d38 <TIM_Cmd>
 80008e0:	4630      	mov	r0, r6
 80008e2:	4629      	mov	r1, r5
 80008e4:	f001 faba 	bl	8001e5c <TIM_CtrlPWMOutputs>
 80008e8:	4640      	mov	r0, r8
 80008ea:	4621      	mov	r1, r4
 80008ec:	4622      	mov	r2, r4
 80008ee:	f7ff ff7b 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 80008f2:	4640      	mov	r0, r8
 80008f4:	4629      	mov	r1, r5
 80008f6:	4622      	mov	r2, r4
 80008f8:	f7ff ff76 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 80008fc:	4620      	mov	r0, r4
 80008fe:	b007      	add	sp, #28
 8000900:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8000904:	48000400 	.word	0x48000400
 8000908:	40012c00 	.word	0x40012c00
 800090c:	20000030 	.word	0x20000030

08000910 <_ZN8CSensors12sensors_initEv>:
 8000910:	b510      	push	{r4, lr}
 8000912:	4604      	mov	r4, r0
 8000914:	4808      	ldr	r0, [pc, #32]	; (8000938 <_ZN8CSensors12sensors_initEv+0x28>)
 8000916:	f000 fa11 	bl	8000d3c <_ZN4CI2C4initEv>
 800091a:	4620      	mov	r0, r4
 800091c:	f7ff fe6a 	bl	80005f4 <_ZN4CRGB8rgb_initEv>
 8000920:	b110      	cbz	r0, 8000928 <_ZN8CSensors12sensors_initEv+0x18>
 8000922:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 8000926:	bd10      	pop	{r4, pc}
 8000928:	f504 7098 	add.w	r0, r4, #304	; 0x130
 800092c:	f000 fbac 	bl	8001088 <_ZN4CIMU8imu_initEv>
 8000930:	b108      	cbz	r0, 8000936 <_ZN8CSensors12sensors_initEv+0x26>
 8000932:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000936:	bd10      	pop	{r4, pc}
 8000938:	20000080 	.word	0x20000080

0800093c <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 800093c:	bf00      	nop
 800093e:	bf00      	nop
 8000940:	bf00      	nop
 8000942:	bf00      	nop
 8000944:	4770      	bx	lr
	...

08000948 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000948:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 800094a:	7803      	ldrb	r3, [r0, #0]
 800094c:	9300      	str	r3, [sp, #0]
 800094e:	2401      	movs	r4, #1
 8000950:	4605      	mov	r5, r0
 8000952:	2703      	movs	r7, #3
 8000954:	2600      	movs	r6, #0
 8000956:	4669      	mov	r1, sp
 8000958:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800095c:	f88d 6007 	strb.w	r6, [sp, #7]
 8000960:	f88d 4004 	strb.w	r4, [sp, #4]
 8000964:	f88d 7005 	strb.w	r7, [sp, #5]
 8000968:	f88d 4006 	strb.w	r4, [sp, #6]
 800096c:	f001 fc9a 	bl	80022a4 <GPIO_Init>
 8000970:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000974:	782a      	ldrb	r2, [r5, #0]
 8000976:	851a      	strh	r2, [r3, #40]	; 0x28
 8000978:	f88d 6007 	strb.w	r6, [sp, #7]
 800097c:	4e08      	ldr	r6, [pc, #32]	; (80009a0 <_ZN8CRGB_I2C12RGBSetLowSDAEv+0x58>)
 800097e:	9400      	str	r4, [sp, #0]
 8000980:	4630      	mov	r0, r6
 8000982:	4669      	mov	r1, sp
 8000984:	f88d 4004 	strb.w	r4, [sp, #4]
 8000988:	f88d 7005 	strb.w	r7, [sp, #5]
 800098c:	f88d 4006 	strb.w	r4, [sp, #6]
 8000990:	f001 fc88 	bl	80022a4 <GPIO_Init>
 8000994:	8534      	strh	r4, [r6, #40]	; 0x28
 8000996:	4628      	mov	r0, r5
 8000998:	f7ff ffd0 	bl	800093c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 800099c:	b003      	add	sp, #12
 800099e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80009a0:	48000400 	.word	0x48000400

080009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 80009a4:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80009a6:	7803      	ldrb	r3, [r0, #0]
 80009a8:	9300      	str	r3, [sp, #0]
 80009aa:	2400      	movs	r4, #0
 80009ac:	4605      	mov	r5, r0
 80009ae:	2703      	movs	r7, #3
 80009b0:	4669      	mov	r1, sp
 80009b2:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80009b6:	f88d 4004 	strb.w	r4, [sp, #4]
 80009ba:	f88d 4007 	strb.w	r4, [sp, #7]
 80009be:	f88d 7005 	strb.w	r7, [sp, #5]
 80009c2:	f001 fc6f 	bl	80022a4 <GPIO_Init>
 80009c6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80009ca:	782a      	ldrb	r2, [r5, #0]
 80009cc:	619a      	str	r2, [r3, #24]
 80009ce:	f88d 4004 	strb.w	r4, [sp, #4]
 80009d2:	f88d 4007 	strb.w	r4, [sp, #7]
 80009d6:	4c07      	ldr	r4, [pc, #28]	; (80009f4 <_ZN8CRGB_I2C13RGBSetHighSDAEv+0x50>)
 80009d8:	f88d 7005 	strb.w	r7, [sp, #5]
 80009dc:	2601      	movs	r6, #1
 80009de:	4620      	mov	r0, r4
 80009e0:	4669      	mov	r1, sp
 80009e2:	9600      	str	r6, [sp, #0]
 80009e4:	f001 fc5e 	bl	80022a4 <GPIO_Init>
 80009e8:	61a6      	str	r6, [r4, #24]
 80009ea:	4628      	mov	r0, r5
 80009ec:	f7ff ffa6 	bl	800093c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80009f0:	b003      	add	sp, #12
 80009f2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80009f4:	48000400 	.word	0x48000400

080009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 80009f8:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80009fc:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000a00:	851a      	strh	r2, [r3, #40]	; 0x28
 8000a02:	f7ff bf9b 	b.w	800093c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000a06:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a0a:	f44f 7280 	mov.w	r2, #256	; 0x100
 8000a0e:	619a      	str	r2, [r3, #24]
 8000a10:	f7ff bf94 	b.w	800093c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000a14 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000a14:	b510      	push	{r4, lr}
 8000a16:	4604      	mov	r4, r0
 8000a18:	f7ff fff5 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a1c:	4620      	mov	r0, r4
 8000a1e:	f7ff ffc1 	bl	80009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000a22:	4620      	mov	r0, r4
 8000a24:	f7ff ffef 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a28:	4620      	mov	r0, r4
 8000a2a:	f7ff ff8d 	bl	8000948 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000a2e:	4620      	mov	r0, r4
 8000a30:	f7ff ffe2 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a34:	4620      	mov	r0, r4
 8000a36:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a3a:	f7ff bfb3 	b.w	80009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000a3e <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000a3e:	b510      	push	{r4, lr}
 8000a40:	4604      	mov	r4, r0
 8000a42:	f7ff ffd9 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a46:	4620      	mov	r0, r4
 8000a48:	f7ff ff7e 	bl	8000948 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000a4c:	4620      	mov	r0, r4
 8000a4e:	f7ff ffda 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a52:	4620      	mov	r0, r4
 8000a54:	f7ff ff78 	bl	8000948 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000a58:	4620      	mov	r0, r4
 8000a5a:	f7ff ffd4 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a5e:	4620      	mov	r0, r4
 8000a60:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000a64:	f7ff bf9e 	b.w	80009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000a68:	b570      	push	{r4, r5, r6, lr}
 8000a6a:	4604      	mov	r4, r0
 8000a6c:	460e      	mov	r6, r1
 8000a6e:	2508      	movs	r5, #8
 8000a70:	4620      	mov	r0, r4
 8000a72:	f7ff ffc1 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a76:	0633      	lsls	r3, r6, #24
 8000a78:	4620      	mov	r0, r4
 8000a7a:	d502      	bpl.n	8000a82 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000a7c:	f7ff ff92 	bl	80009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000a80:	e001      	b.n	8000a86 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000a82:	f7ff ff61 	bl	8000948 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000a86:	4620      	mov	r0, r4
 8000a88:	3d01      	subs	r5, #1
 8000a8a:	f7ff ffbc 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a8e:	0076      	lsls	r6, r6, #1
 8000a90:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000a94:	b2f6      	uxtb	r6, r6
 8000a96:	d1eb      	bne.n	8000a70 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000a98:	4620      	mov	r0, r4
 8000a9a:	f7ff ffad 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a9e:	4620      	mov	r0, r4
 8000aa0:	f7ff ff80 	bl	80009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000aa4:	4620      	mov	r0, r4
 8000aa6:	f7ff ffae 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000aaa:	4620      	mov	r0, r4
 8000aac:	f7ff ffa4 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000ab0:	4620      	mov	r0, r4
 8000ab2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000ab6:	f7ff bf41 	b.w	800093c <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000aba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000aba:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000abc:	4604      	mov	r4, r0
 8000abe:	460f      	mov	r7, r1
 8000ac0:	4616      	mov	r6, r2
 8000ac2:	461d      	mov	r5, r3
 8000ac4:	f7ff ffa6 	bl	8000a14 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000ac8:	4620      	mov	r0, r4
 8000aca:	4639      	mov	r1, r7
 8000acc:	f7ff ffcc 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000ad0:	4620      	mov	r0, r4
 8000ad2:	4631      	mov	r1, r6
 8000ad4:	f7ff ffc8 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000ad8:	4620      	mov	r0, r4
 8000ada:	4629      	mov	r1, r5
 8000adc:	f7ff ffc4 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000ae0:	4620      	mov	r0, r4
 8000ae2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000ae6:	f7ff bfaa 	b.w	8000a3e <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000aec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000af0:	1e57      	subs	r7, r2, #1
 8000af2:	4605      	mov	r5, r0
 8000af4:	4689      	mov	r9, r1
 8000af6:	4614      	mov	r4, r2
 8000af8:	f102 0808 	add.w	r8, r2, #8
 8000afc:	463b      	mov	r3, r7
 8000afe:	2200      	movs	r2, #0
 8000b00:	f803 2f01 	strb.w	r2, [r3, #1]!
 8000b04:	4543      	cmp	r3, r8
 8000b06:	d1fa      	bne.n	8000afe <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x12>
 8000b08:	4628      	mov	r0, r5
 8000b0a:	f7ff ff75 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b0e:	4628      	mov	r0, r5
 8000b10:	f7ff ff48 	bl	80009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b14:	2608      	movs	r6, #8
 8000b16:	463b      	mov	r3, r7
 8000b18:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000b1c:	0052      	lsls	r2, r2, #1
 8000b1e:	4543      	cmp	r3, r8
 8000b20:	701a      	strb	r2, [r3, #0]
 8000b22:	d1f9      	bne.n	8000b18 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2c>
 8000b24:	4628      	mov	r0, r5
 8000b26:	f7ff ff6e 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b2a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000b2e:	8a1b      	ldrh	r3, [r3, #16]
 8000b30:	b29b      	uxth	r3, r3
 8000b32:	07d9      	lsls	r1, r3, #31
 8000b34:	bf42      	ittt	mi
 8000b36:	7822      	ldrbmi	r2, [r4, #0]
 8000b38:	f042 0201 	orrmi.w	r2, r2, #1
 8000b3c:	7022      	strbmi	r2, [r4, #0]
 8000b3e:	079a      	lsls	r2, r3, #30
 8000b40:	bf42      	ittt	mi
 8000b42:	7862      	ldrbmi	r2, [r4, #1]
 8000b44:	f042 0201 	orrmi.w	r2, r2, #1
 8000b48:	7062      	strbmi	r2, [r4, #1]
 8000b4a:	0758      	lsls	r0, r3, #29
 8000b4c:	bf42      	ittt	mi
 8000b4e:	78a2      	ldrbmi	r2, [r4, #2]
 8000b50:	f042 0201 	orrmi.w	r2, r2, #1
 8000b54:	70a2      	strbmi	r2, [r4, #2]
 8000b56:	0719      	lsls	r1, r3, #28
 8000b58:	bf42      	ittt	mi
 8000b5a:	78e2      	ldrbmi	r2, [r4, #3]
 8000b5c:	f042 0201 	orrmi.w	r2, r2, #1
 8000b60:	70e2      	strbmi	r2, [r4, #3]
 8000b62:	06da      	lsls	r2, r3, #27
 8000b64:	bf42      	ittt	mi
 8000b66:	7922      	ldrbmi	r2, [r4, #4]
 8000b68:	f042 0201 	orrmi.w	r2, r2, #1
 8000b6c:	7122      	strbmi	r2, [r4, #4]
 8000b6e:	0698      	lsls	r0, r3, #26
 8000b70:	bf42      	ittt	mi
 8000b72:	7962      	ldrbmi	r2, [r4, #5]
 8000b74:	f042 0201 	orrmi.w	r2, r2, #1
 8000b78:	7162      	strbmi	r2, [r4, #5]
 8000b7a:	0659      	lsls	r1, r3, #25
 8000b7c:	bf42      	ittt	mi
 8000b7e:	79a2      	ldrbmi	r2, [r4, #6]
 8000b80:	f042 0201 	orrmi.w	r2, r2, #1
 8000b84:	71a2      	strbmi	r2, [r4, #6]
 8000b86:	061a      	lsls	r2, r3, #24
 8000b88:	bf42      	ittt	mi
 8000b8a:	79e3      	ldrbmi	r3, [r4, #7]
 8000b8c:	f043 0301 	orrmi.w	r3, r3, #1
 8000b90:	71e3      	strbmi	r3, [r4, #7]
 8000b92:	4b0f      	ldr	r3, [pc, #60]	; (8000bd0 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xe4>)
 8000b94:	8a1b      	ldrh	r3, [r3, #16]
 8000b96:	07db      	lsls	r3, r3, #31
 8000b98:	bf42      	ittt	mi
 8000b9a:	7a23      	ldrbmi	r3, [r4, #8]
 8000b9c:	f043 0301 	orrmi.w	r3, r3, #1
 8000ba0:	7223      	strbmi	r3, [r4, #8]
 8000ba2:	4628      	mov	r0, r5
 8000ba4:	f7ff ff28 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000ba8:	3e01      	subs	r6, #1
 8000baa:	d1b4      	bne.n	8000b16 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x2a>
 8000bac:	f1b9 0f00 	cmp.w	r9, #0
 8000bb0:	d002      	beq.n	8000bb8 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0xcc>
 8000bb2:	4628      	mov	r0, r5
 8000bb4:	f7ff fec8 	bl	8000948 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000bb8:	4628      	mov	r0, r5
 8000bba:	f7ff ff24 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000bbe:	4628      	mov	r0, r5
 8000bc0:	f7ff ff1a 	bl	80009f8 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000bc4:	4628      	mov	r0, r5
 8000bc6:	e8bd 43f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8000bca:	f7ff beb7 	b.w	800093c <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000bce:	bf00      	nop
 8000bd0:	48000400 	.word	0x48000400

08000bd4 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000bd4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000bd6:	4604      	mov	r4, r0
 8000bd8:	460d      	mov	r5, r1
 8000bda:	4617      	mov	r7, r2
 8000bdc:	461e      	mov	r6, r3
 8000bde:	f7ff ff19 	bl	8000a14 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000be2:	4620      	mov	r0, r4
 8000be4:	4629      	mov	r1, r5
 8000be6:	f7ff ff3f 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000bea:	4639      	mov	r1, r7
 8000bec:	4620      	mov	r0, r4
 8000bee:	f7ff ff3b 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000bf2:	4620      	mov	r0, r4
 8000bf4:	f7ff ff0e 	bl	8000a14 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000bf8:	4620      	mov	r0, r4
 8000bfa:	f045 0101 	orr.w	r1, r5, #1
 8000bfe:	f7ff ff33 	bl	8000a68 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c02:	4620      	mov	r0, r4
 8000c04:	4632      	mov	r2, r6
 8000c06:	2100      	movs	r1, #0
 8000c08:	f7ff ff70 	bl	8000aec <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c0c:	4620      	mov	r0, r4
 8000c0e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000c12:	f7ff bf14 	b.w	8000a3e <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000c18 <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000c18:	e92d 41f3 	stmdb	sp!, {r0, r1, r4, r5, r6, r7, r8, lr}
 8000c1c:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8000c20:	2400      	movs	r4, #0
 8000c22:	4605      	mov	r5, r0
 8000c24:	2601      	movs	r6, #1
 8000c26:	2703      	movs	r7, #3
 8000c28:	6003      	str	r3, [r0, #0]
 8000c2a:	4669      	mov	r1, sp
 8000c2c:	f44f 7380 	mov.w	r3, #256	; 0x100
 8000c30:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c34:	9300      	str	r3, [sp, #0]
 8000c36:	f88d 4006 	strb.w	r4, [sp, #6]
 8000c3a:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c3e:	f04f 08ff 	mov.w	r8, #255	; 0xff
 8000c42:	f88d 6004 	strb.w	r6, [sp, #4]
 8000c46:	f88d 7005 	strb.w	r7, [sp, #5]
 8000c4a:	f001 fb2b 	bl	80022a4 <GPIO_Init>
 8000c4e:	4669      	mov	r1, sp
 8000c50:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c54:	f88d 4004 	strb.w	r4, [sp, #4]
 8000c58:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c5c:	f8cd 8000 	str.w	r8, [sp]
 8000c60:	f88d 7005 	strb.w	r7, [sp, #5]
 8000c64:	f001 fb1e 	bl	80022a4 <GPIO_Init>
 8000c68:	4641      	mov	r1, r8
 8000c6a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000c6e:	f001 fb5b 	bl	8002328 <GPIO_SetBits>
 8000c72:	f88d 4004 	strb.w	r4, [sp, #4]
 8000c76:	f88d 4007 	strb.w	r4, [sp, #7]
 8000c7a:	4c0c      	ldr	r4, [pc, #48]	; (8000cac <_ZN8CRGB_I2C12rgb_i2c_initEv+0x94>)
 8000c7c:	9600      	str	r6, [sp, #0]
 8000c7e:	4620      	mov	r0, r4
 8000c80:	4669      	mov	r1, sp
 8000c82:	f88d 7005 	strb.w	r7, [sp, #5]
 8000c86:	f001 fb0d 	bl	80022a4 <GPIO_Init>
 8000c8a:	4631      	mov	r1, r6
 8000c8c:	4620      	mov	r0, r4
 8000c8e:	f001 fb4b 	bl	8002328 <GPIO_SetBits>
 8000c92:	4628      	mov	r0, r5
 8000c94:	f7ff feb7 	bl	8000a06 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c98:	4628      	mov	r0, r5
 8000c9a:	f7ff fe55 	bl	8000948 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c9e:	4628      	mov	r0, r5
 8000ca0:	f7ff fe80 	bl	80009a4 <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ca4:	b002      	add	sp, #8
 8000ca6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000caa:	bf00      	nop
 8000cac:	48000400 	.word	0x48000400

08000cb0 <_ZN8CRGB_I2C29rgb_i2c_enable_only_proximityEv>:
 8000cb0:	2300      	movs	r3, #0
 8000cb2:	6003      	str	r3, [r0, #0]
 8000cb4:	4770      	bx	lr

08000cb6 <_ZN8CRGB_I2C18rgb_i2c_enable_allEv>:
 8000cb6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8000cba:	6003      	str	r3, [r0, #0]
 8000cbc:	4770      	bx	lr

08000cbe <_ZN4CI2C5delayEv>:
 8000cbe:	bf00      	nop
 8000cc0:	bf00      	nop
 8000cc2:	bf00      	nop
 8000cc4:	bf00      	nop
 8000cc6:	4770      	bx	lr

08000cc8 <_ZN4CI2C9SetLowSDAEv>:
 8000cc8:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000cca:	4c0c      	ldr	r4, [pc, #48]	; (8000cfc <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000ccc:	2301      	movs	r3, #1
 8000cce:	2203      	movs	r2, #3
 8000cd0:	4606      	mov	r6, r0
 8000cd2:	2580      	movs	r5, #128	; 0x80
 8000cd4:	f88d 3004 	strb.w	r3, [sp, #4]
 8000cd8:	f88d 3006 	strb.w	r3, [sp, #6]
 8000cdc:	4620      	mov	r0, r4
 8000cde:	2300      	movs	r3, #0
 8000ce0:	4669      	mov	r1, sp
 8000ce2:	f88d 2005 	strb.w	r2, [sp, #5]
 8000ce6:	f88d 3007 	strb.w	r3, [sp, #7]
 8000cea:	9500      	str	r5, [sp, #0]
 8000cec:	f001 fada 	bl	80022a4 <GPIO_Init>
 8000cf0:	8525      	strh	r5, [r4, #40]	; 0x28
 8000cf2:	4630      	mov	r0, r6
 8000cf4:	f7ff ffe3 	bl	8000cbe <_ZN4CI2C5delayEv>
 8000cf8:	b002      	add	sp, #8
 8000cfa:	bd70      	pop	{r4, r5, r6, pc}
 8000cfc:	48000400 	.word	0x48000400

08000d00 <_ZN4CI2C10SetHighSDAEv>:
 8000d00:	4b05      	ldr	r3, [pc, #20]	; (8000d18 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000d02:	681a      	ldr	r2, [r3, #0]
 8000d04:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000d08:	601a      	str	r2, [r3, #0]
 8000d0a:	681a      	ldr	r2, [r3, #0]
 8000d0c:	601a      	str	r2, [r3, #0]
 8000d0e:	2280      	movs	r2, #128	; 0x80
 8000d10:	619a      	str	r2, [r3, #24]
 8000d12:	f7ff bfd4 	b.w	8000cbe <_ZN4CI2C5delayEv>
 8000d16:	bf00      	nop
 8000d18:	48000400 	.word	0x48000400

08000d1c <_ZN4CI2C9SetLowSCLEv>:
 8000d1c:	4b02      	ldr	r3, [pc, #8]	; (8000d28 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000d1e:	2240      	movs	r2, #64	; 0x40
 8000d20:	851a      	strh	r2, [r3, #40]	; 0x28
 8000d22:	f7ff bfcc 	b.w	8000cbe <_ZN4CI2C5delayEv>
 8000d26:	bf00      	nop
 8000d28:	48000400 	.word	0x48000400

08000d2c <_ZN4CI2C10SetHighSCLEv>:
 8000d2c:	4b02      	ldr	r3, [pc, #8]	; (8000d38 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000d2e:	2240      	movs	r2, #64	; 0x40
 8000d30:	619a      	str	r2, [r3, #24]
 8000d32:	f7ff bfc4 	b.w	8000cbe <_ZN4CI2C5delayEv>
 8000d36:	bf00      	nop
 8000d38:	48000400 	.word	0x48000400

08000d3c <_ZN4CI2C4initEv>:
 8000d3c:	b513      	push	{r0, r1, r4, lr}
 8000d3e:	4604      	mov	r4, r0
 8000d40:	2101      	movs	r1, #1
 8000d42:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000d46:	f000 ff7d 	bl	8001c44 <RCC_AHBPeriphClockCmd>
 8000d4a:	23c0      	movs	r3, #192	; 0xc0
 8000d4c:	9300      	str	r3, [sp, #0]
 8000d4e:	2301      	movs	r3, #1
 8000d50:	2203      	movs	r2, #3
 8000d52:	4669      	mov	r1, sp
 8000d54:	f88d 3004 	strb.w	r3, [sp, #4]
 8000d58:	f88d 3006 	strb.w	r3, [sp, #6]
 8000d5c:	4809      	ldr	r0, [pc, #36]	; (8000d84 <_ZN4CI2C4initEv+0x48>)
 8000d5e:	f88d 2005 	strb.w	r2, [sp, #5]
 8000d62:	2300      	movs	r3, #0
 8000d64:	f88d 3007 	strb.w	r3, [sp, #7]
 8000d68:	f001 fa9c 	bl	80022a4 <GPIO_Init>
 8000d6c:	4620      	mov	r0, r4
 8000d6e:	f7ff ffdd 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000d72:	4620      	mov	r0, r4
 8000d74:	f7ff ffa8 	bl	8000cc8 <_ZN4CI2C9SetLowSDAEv>
 8000d78:	4620      	mov	r0, r4
 8000d7a:	f7ff ffc1 	bl	8000d00 <_ZN4CI2C10SetHighSDAEv>
 8000d7e:	b002      	add	sp, #8
 8000d80:	bd10      	pop	{r4, pc}
 8000d82:	bf00      	nop
 8000d84:	48000400 	.word	0x48000400

08000d88 <_ZN4CI2C5StartEv>:
 8000d88:	b510      	push	{r4, lr}
 8000d8a:	4604      	mov	r4, r0
 8000d8c:	f7ff ffce 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000d90:	4620      	mov	r0, r4
 8000d92:	f7ff ffb5 	bl	8000d00 <_ZN4CI2C10SetHighSDAEv>
 8000d96:	4620      	mov	r0, r4
 8000d98:	f7ff ffc8 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000d9c:	4620      	mov	r0, r4
 8000d9e:	f7ff ff93 	bl	8000cc8 <_ZN4CI2C9SetLowSDAEv>
 8000da2:	4620      	mov	r0, r4
 8000da4:	f7ff ffba 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000da8:	4620      	mov	r0, r4
 8000daa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000dae:	f7ff bfa7 	b.w	8000d00 <_ZN4CI2C10SetHighSDAEv>

08000db2 <_ZN4CI2C4StopEv>:
 8000db2:	b510      	push	{r4, lr}
 8000db4:	4604      	mov	r4, r0
 8000db6:	f7ff ffb1 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000dba:	4620      	mov	r0, r4
 8000dbc:	f7ff ff84 	bl	8000cc8 <_ZN4CI2C9SetLowSDAEv>
 8000dc0:	4620      	mov	r0, r4
 8000dc2:	f7ff ffb3 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000dc6:	4620      	mov	r0, r4
 8000dc8:	f7ff ff7e 	bl	8000cc8 <_ZN4CI2C9SetLowSDAEv>
 8000dcc:	4620      	mov	r0, r4
 8000dce:	f7ff ffad 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000dd2:	4620      	mov	r0, r4
 8000dd4:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000dd8:	f7ff bf92 	b.w	8000d00 <_ZN4CI2C10SetHighSDAEv>

08000ddc <_ZN4CI2C5WriteEh>:
 8000ddc:	b570      	push	{r4, r5, r6, lr}
 8000dde:	4604      	mov	r4, r0
 8000de0:	460e      	mov	r6, r1
 8000de2:	2508      	movs	r5, #8
 8000de4:	4620      	mov	r0, r4
 8000de6:	f7ff ff99 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000dea:	0633      	lsls	r3, r6, #24
 8000dec:	4620      	mov	r0, r4
 8000dee:	d502      	bpl.n	8000df6 <_ZN4CI2C5WriteEh+0x1a>
 8000df0:	f7ff ff86 	bl	8000d00 <_ZN4CI2C10SetHighSDAEv>
 8000df4:	e001      	b.n	8000dfa <_ZN4CI2C5WriteEh+0x1e>
 8000df6:	f7ff ff67 	bl	8000cc8 <_ZN4CI2C9SetLowSDAEv>
 8000dfa:	4620      	mov	r0, r4
 8000dfc:	3d01      	subs	r5, #1
 8000dfe:	f7ff ff95 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000e02:	0076      	lsls	r6, r6, #1
 8000e04:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000e08:	b2f6      	uxtb	r6, r6
 8000e0a:	d1eb      	bne.n	8000de4 <_ZN4CI2C5WriteEh+0x8>
 8000e0c:	4620      	mov	r0, r4
 8000e0e:	f7ff ff85 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000e12:	4620      	mov	r0, r4
 8000e14:	f7ff ff74 	bl	8000d00 <_ZN4CI2C10SetHighSDAEv>
 8000e18:	4620      	mov	r0, r4
 8000e1a:	f7ff ff87 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000e1e:	4b07      	ldr	r3, [pc, #28]	; (8000e3c <_ZN4CI2C5WriteEh+0x60>)
 8000e20:	8a1d      	ldrh	r5, [r3, #16]
 8000e22:	4620      	mov	r0, r4
 8000e24:	f7ff ff7a 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000e28:	b2ad      	uxth	r5, r5
 8000e2a:	4620      	mov	r0, r4
 8000e2c:	f7ff ff47 	bl	8000cbe <_ZN4CI2C5delayEv>
 8000e30:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8000e34:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000e38:	bd70      	pop	{r4, r5, r6, pc}
 8000e3a:	bf00      	nop
 8000e3c:	48000400 	.word	0x48000400

08000e40 <_ZN4CI2C9write_regEhhh>:
 8000e40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e42:	4604      	mov	r4, r0
 8000e44:	460f      	mov	r7, r1
 8000e46:	4616      	mov	r6, r2
 8000e48:	461d      	mov	r5, r3
 8000e4a:	f7ff ff9d 	bl	8000d88 <_ZN4CI2C5StartEv>
 8000e4e:	4639      	mov	r1, r7
 8000e50:	4620      	mov	r0, r4
 8000e52:	f7ff ffc3 	bl	8000ddc <_ZN4CI2C5WriteEh>
 8000e56:	4631      	mov	r1, r6
 8000e58:	4620      	mov	r0, r4
 8000e5a:	f7ff ffbf 	bl	8000ddc <_ZN4CI2C5WriteEh>
 8000e5e:	4620      	mov	r0, r4
 8000e60:	4629      	mov	r1, r5
 8000e62:	f7ff ffbb 	bl	8000ddc <_ZN4CI2C5WriteEh>
 8000e66:	4620      	mov	r0, r4
 8000e68:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000e6c:	f7ff bfa1 	b.w	8000db2 <_ZN4CI2C4StopEv>

08000e70 <_ZN4CI2C4ReadEh>:
 8000e70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e72:	4604      	mov	r4, r0
 8000e74:	460f      	mov	r7, r1
 8000e76:	f7ff ff51 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000e7a:	2608      	movs	r6, #8
 8000e7c:	2500      	movs	r5, #0
 8000e7e:	4620      	mov	r0, r4
 8000e80:	f7ff ff54 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000e84:	4b13      	ldr	r3, [pc, #76]	; (8000ed4 <_ZN4CI2C4ReadEh+0x64>)
 8000e86:	8a1b      	ldrh	r3, [r3, #16]
 8000e88:	006d      	lsls	r5, r5, #1
 8000e8a:	061b      	lsls	r3, r3, #24
 8000e8c:	b2ed      	uxtb	r5, r5
 8000e8e:	4620      	mov	r0, r4
 8000e90:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000e94:	bf48      	it	mi
 8000e96:	f045 0501 	orrmi.w	r5, r5, #1
 8000e9a:	f7ff ff3f 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000e9e:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000ea2:	d1ec      	bne.n	8000e7e <_ZN4CI2C4ReadEh+0xe>
 8000ea4:	4620      	mov	r0, r4
 8000ea6:	b147      	cbz	r7, 8000eba <_ZN4CI2C4ReadEh+0x4a>
 8000ea8:	f7ff ff0e 	bl	8000cc8 <_ZN4CI2C9SetLowSDAEv>
 8000eac:	4620      	mov	r0, r4
 8000eae:	f7ff ff3d 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000eb2:	4620      	mov	r0, r4
 8000eb4:	f7ff ff32 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000eb8:	e00a      	b.n	8000ed0 <_ZN4CI2C4ReadEh+0x60>
 8000eba:	f7ff ff21 	bl	8000d00 <_ZN4CI2C10SetHighSDAEv>
 8000ebe:	4620      	mov	r0, r4
 8000ec0:	f7ff ff34 	bl	8000d2c <_ZN4CI2C10SetHighSCLEv>
 8000ec4:	4620      	mov	r0, r4
 8000ec6:	f7ff ff29 	bl	8000d1c <_ZN4CI2C9SetLowSCLEv>
 8000eca:	4620      	mov	r0, r4
 8000ecc:	f7ff fefc 	bl	8000cc8 <_ZN4CI2C9SetLowSDAEv>
 8000ed0:	4628      	mov	r0, r5
 8000ed2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000ed4:	48000400 	.word	0x48000400

08000ed8 <_ZN4CI2C8read_regEhh>:
 8000ed8:	b570      	push	{r4, r5, r6, lr}
 8000eda:	4604      	mov	r4, r0
 8000edc:	460d      	mov	r5, r1
 8000ede:	4616      	mov	r6, r2
 8000ee0:	f7ff ff52 	bl	8000d88 <_ZN4CI2C5StartEv>
 8000ee4:	4629      	mov	r1, r5
 8000ee6:	4620      	mov	r0, r4
 8000ee8:	f7ff ff78 	bl	8000ddc <_ZN4CI2C5WriteEh>
 8000eec:	4631      	mov	r1, r6
 8000eee:	4620      	mov	r0, r4
 8000ef0:	f7ff ff74 	bl	8000ddc <_ZN4CI2C5WriteEh>
 8000ef4:	4620      	mov	r0, r4
 8000ef6:	f7ff ff47 	bl	8000d88 <_ZN4CI2C5StartEv>
 8000efa:	f045 0101 	orr.w	r1, r5, #1
 8000efe:	4620      	mov	r0, r4
 8000f00:	f7ff ff6c 	bl	8000ddc <_ZN4CI2C5WriteEh>
 8000f04:	2100      	movs	r1, #0
 8000f06:	4620      	mov	r0, r4
 8000f08:	f7ff ffb2 	bl	8000e70 <_ZN4CI2C4ReadEh>
 8000f0c:	4605      	mov	r5, r0
 8000f0e:	4620      	mov	r0, r4
 8000f10:	f7ff ff4f 	bl	8000db2 <_ZN4CI2C4StopEv>
 8000f14:	4628      	mov	r0, r5
 8000f16:	bd70      	pop	{r4, r5, r6, pc}

08000f18 <_ZN4CIMU8imu_readEv>:
 8000f18:	b570      	push	{r4, r5, r6, lr}
 8000f1a:	4d5a      	ldr	r5, [pc, #360]	; (8001084 <_ZN4CIMU8imu_readEv+0x16c>)
 8000f1c:	4604      	mov	r4, r0
 8000f1e:	21d4      	movs	r1, #212	; 0xd4
 8000f20:	2228      	movs	r2, #40	; 0x28
 8000f22:	4628      	mov	r0, r5
 8000f24:	f7ff ffd8 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f28:	21d4      	movs	r1, #212	; 0xd4
 8000f2a:	4606      	mov	r6, r0
 8000f2c:	2229      	movs	r2, #41	; 0x29
 8000f2e:	4628      	mov	r0, r5
 8000f30:	f7ff ffd2 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f34:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000f38:	8320      	strh	r0, [r4, #24]
 8000f3a:	21d4      	movs	r1, #212	; 0xd4
 8000f3c:	222a      	movs	r2, #42	; 0x2a
 8000f3e:	4628      	mov	r0, r5
 8000f40:	f7ff ffca 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f44:	21d4      	movs	r1, #212	; 0xd4
 8000f46:	4606      	mov	r6, r0
 8000f48:	222b      	movs	r2, #43	; 0x2b
 8000f4a:	4628      	mov	r0, r5
 8000f4c:	f7ff ffc4 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f50:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000f54:	8360      	strh	r0, [r4, #26]
 8000f56:	21d4      	movs	r1, #212	; 0xd4
 8000f58:	222c      	movs	r2, #44	; 0x2c
 8000f5a:	4628      	mov	r0, r5
 8000f5c:	f7ff ffbc 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f60:	21d4      	movs	r1, #212	; 0xd4
 8000f62:	4606      	mov	r6, r0
 8000f64:	222d      	movs	r2, #45	; 0x2d
 8000f66:	4628      	mov	r0, r5
 8000f68:	f7ff ffb6 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f6c:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000f70:	83a0      	strh	r0, [r4, #28]
 8000f72:	213c      	movs	r1, #60	; 0x3c
 8000f74:	2208      	movs	r2, #8
 8000f76:	4628      	mov	r0, r5
 8000f78:	f7ff ffae 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f7c:	213c      	movs	r1, #60	; 0x3c
 8000f7e:	4606      	mov	r6, r0
 8000f80:	2209      	movs	r2, #9
 8000f82:	4628      	mov	r0, r5
 8000f84:	f7ff ffa8 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f88:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000f8c:	8260      	strh	r0, [r4, #18]
 8000f8e:	213c      	movs	r1, #60	; 0x3c
 8000f90:	220a      	movs	r2, #10
 8000f92:	4628      	mov	r0, r5
 8000f94:	f7ff ffa0 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000f98:	213c      	movs	r1, #60	; 0x3c
 8000f9a:	4606      	mov	r6, r0
 8000f9c:	220b      	movs	r2, #11
 8000f9e:	4628      	mov	r0, r5
 8000fa0:	f7ff ff9a 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000fa4:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fa8:	82a0      	strh	r0, [r4, #20]
 8000faa:	213c      	movs	r1, #60	; 0x3c
 8000fac:	220c      	movs	r2, #12
 8000fae:	4628      	mov	r0, r5
 8000fb0:	f7ff ff92 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000fb4:	213c      	movs	r1, #60	; 0x3c
 8000fb6:	4606      	mov	r6, r0
 8000fb8:	220d      	movs	r2, #13
 8000fba:	4628      	mov	r0, r5
 8000fbc:	f7ff ff8c 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000fc0:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fc4:	82e0      	strh	r0, [r4, #22]
 8000fc6:	213c      	movs	r1, #60	; 0x3c
 8000fc8:	2228      	movs	r2, #40	; 0x28
 8000fca:	4628      	mov	r0, r5
 8000fcc:	f7ff ff84 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000fd0:	213c      	movs	r1, #60	; 0x3c
 8000fd2:	4606      	mov	r6, r0
 8000fd4:	2229      	movs	r2, #41	; 0x29
 8000fd6:	4628      	mov	r0, r5
 8000fd8:	f7ff ff7e 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000fdc:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fe0:	81a0      	strh	r0, [r4, #12]
 8000fe2:	213c      	movs	r1, #60	; 0x3c
 8000fe4:	222a      	movs	r2, #42	; 0x2a
 8000fe6:	4628      	mov	r0, r5
 8000fe8:	f7ff ff76 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000fec:	213c      	movs	r1, #60	; 0x3c
 8000fee:	4606      	mov	r6, r0
 8000ff0:	222b      	movs	r2, #43	; 0x2b
 8000ff2:	4628      	mov	r0, r5
 8000ff4:	f7ff ff70 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8000ff8:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000ffc:	81e0      	strh	r0, [r4, #14]
 8000ffe:	213c      	movs	r1, #60	; 0x3c
 8001000:	222c      	movs	r2, #44	; 0x2c
 8001002:	4628      	mov	r0, r5
 8001004:	f7ff ff68 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8001008:	213c      	movs	r1, #60	; 0x3c
 800100a:	4606      	mov	r6, r0
 800100c:	222d      	movs	r2, #45	; 0x2d
 800100e:	4628      	mov	r0, r5
 8001010:	f7ff ff62 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8001014:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001018:	8220      	strh	r0, [r4, #16]
 800101a:	213c      	movs	r1, #60	; 0x3c
 800101c:	2205      	movs	r2, #5
 800101e:	4628      	mov	r0, r5
 8001020:	f7ff ff5a 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8001024:	213c      	movs	r1, #60	; 0x3c
 8001026:	4606      	mov	r6, r0
 8001028:	2206      	movs	r2, #6
 800102a:	4628      	mov	r0, r5
 800102c:	f7ff ff54 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 8001030:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 8001034:	6822      	ldr	r2, [r4, #0]
 8001036:	1a9a      	subs	r2, r3, r2
 8001038:	6a23      	ldr	r3, [r4, #32]
 800103a:	21c8      	movs	r1, #200	; 0xc8
 800103c:	fb92 f2f1 	sdiv	r2, r2, r1
 8001040:	441a      	add	r2, r3
 8001042:	6222      	str	r2, [r4, #32]
 8001044:	6863      	ldr	r3, [r4, #4]
 8001046:	f9b4 201a 	ldrsh.w	r2, [r4, #26]
 800104a:	1ad2      	subs	r2, r2, r3
 800104c:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800104e:	fb92 f2f1 	sdiv	r2, r2, r1
 8001052:	441a      	add	r2, r3
 8001054:	6262      	str	r2, [r4, #36]	; 0x24
 8001056:	68a3      	ldr	r3, [r4, #8]
 8001058:	f9b4 201c 	ldrsh.w	r2, [r4, #28]
 800105c:	1ad3      	subs	r3, r2, r3
 800105e:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 8001060:	fb93 f3f1 	sdiv	r3, r3, r1
 8001064:	4413      	add	r3, r2
 8001066:	62a3      	str	r3, [r4, #40]	; 0x28
 8001068:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800106c:	62e3      	str	r3, [r4, #44]	; 0x2c
 800106e:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8001072:	6323      	str	r3, [r4, #48]	; 0x30
 8001074:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001078:	f9b4 3010 	ldrsh.w	r3, [r4, #16]
 800107c:	83e0      	strh	r0, [r4, #30]
 800107e:	6363      	str	r3, [r4, #52]	; 0x34
 8001080:	bd70      	pop	{r4, r5, r6, pc}
 8001082:	bf00      	nop
 8001084:	20000080 	.word	0x20000080

08001088 <_ZN4CIMU8imu_initEv>:
 8001088:	2300      	movs	r3, #0
 800108a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800108e:	4604      	mov	r4, r0
 8001090:	6003      	str	r3, [r0, #0]
 8001092:	6043      	str	r3, [r0, #4]
 8001094:	6083      	str	r3, [r0, #8]
 8001096:	f242 7511 	movw	r5, #10001	; 0x2711
 800109a:	3d01      	subs	r5, #1
 800109c:	d001      	beq.n	80010a2 <_ZN4CIMU8imu_initEv+0x1a>
 800109e:	bf00      	nop
 80010a0:	e7fb      	b.n	800109a <_ZN4CIMU8imu_initEv+0x12>
 80010a2:	483f      	ldr	r0, [pc, #252]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 80010a4:	21d4      	movs	r1, #212	; 0xd4
 80010a6:	220f      	movs	r2, #15
 80010a8:	f7ff ff16 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 80010ac:	28d4      	cmp	r0, #212	; 0xd4
 80010ae:	4606      	mov	r6, r0
 80010b0:	d16e      	bne.n	8001190 <_ZN4CIMU8imu_initEv+0x108>
 80010b2:	483b      	ldr	r0, [pc, #236]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 80010b4:	213c      	movs	r1, #60	; 0x3c
 80010b6:	220f      	movs	r2, #15
 80010b8:	f7ff ff0e 	bl	8000ed8 <_ZN4CI2C8read_regEhh>
 80010bc:	2849      	cmp	r0, #73	; 0x49
 80010be:	d16b      	bne.n	8001198 <_ZN4CIMU8imu_initEv+0x110>
 80010c0:	4631      	mov	r1, r6
 80010c2:	4837      	ldr	r0, [pc, #220]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 80010c4:	2220      	movs	r2, #32
 80010c6:	23ff      	movs	r3, #255	; 0xff
 80010c8:	f7ff feba 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 80010cc:	4631      	mov	r1, r6
 80010ce:	4834      	ldr	r0, [pc, #208]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 80010d0:	4e34      	ldr	r6, [pc, #208]	; (80011a4 <_ZN4CIMU8imu_initEv+0x11c>)
 80010d2:	2223      	movs	r2, #35	; 0x23
 80010d4:	2310      	movs	r3, #16
 80010d6:	f7ff feb3 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 80010da:	4831      	ldr	r0, [pc, #196]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 80010dc:	213c      	movs	r1, #60	; 0x3c
 80010de:	221f      	movs	r2, #31
 80010e0:	462b      	mov	r3, r5
 80010e2:	f7ff fead 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 80010e6:	482e      	ldr	r0, [pc, #184]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 80010e8:	213c      	movs	r1, #60	; 0x3c
 80010ea:	2220      	movs	r2, #32
 80010ec:	2367      	movs	r3, #103	; 0x67
 80010ee:	f7ff fea7 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 80010f2:	482b      	ldr	r0, [pc, #172]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 80010f4:	213c      	movs	r1, #60	; 0x3c
 80010f6:	2221      	movs	r2, #33	; 0x21
 80010f8:	462b      	mov	r3, r5
 80010fa:	f7ff fea1 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 80010fe:	4828      	ldr	r0, [pc, #160]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 8001100:	213c      	movs	r1, #60	; 0x3c
 8001102:	2224      	movs	r2, #36	; 0x24
 8001104:	23f4      	movs	r3, #244	; 0xf4
 8001106:	f7ff fe9b 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 800110a:	4825      	ldr	r0, [pc, #148]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 800110c:	213c      	movs	r1, #60	; 0x3c
 800110e:	2225      	movs	r2, #37	; 0x25
 8001110:	462b      	mov	r3, r5
 8001112:	f7ff fe95 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 8001116:	4822      	ldr	r0, [pc, #136]	; (80011a0 <_ZN4CIMU8imu_initEv+0x118>)
 8001118:	213c      	movs	r1, #60	; 0x3c
 800111a:	2226      	movs	r2, #38	; 0x26
 800111c:	2380      	movs	r3, #128	; 0x80
 800111e:	f7ff fe8f 	bl	8000e40 <_ZN4CI2C9write_regEhhh>
 8001122:	3e01      	subs	r6, #1
 8001124:	d001      	beq.n	800112a <_ZN4CIMU8imu_initEv+0xa2>
 8001126:	bf00      	nop
 8001128:	e7fb      	b.n	8001122 <_ZN4CIMU8imu_initEv+0x9a>
 800112a:	4620      	mov	r0, r4
 800112c:	f7ff fef4 	bl	8000f18 <_ZN4CIMU8imu_readEv>
 8001130:	2564      	movs	r5, #100	; 0x64
 8001132:	4637      	mov	r7, r6
 8001134:	46b0      	mov	r8, r6
 8001136:	2365      	movs	r3, #101	; 0x65
 8001138:	3b01      	subs	r3, #1
 800113a:	d001      	beq.n	8001140 <_ZN4CIMU8imu_initEv+0xb8>
 800113c:	bf00      	nop
 800113e:	e7fb      	b.n	8001138 <_ZN4CIMU8imu_initEv+0xb0>
 8001140:	4620      	mov	r0, r4
 8001142:	f7ff fee9 	bl	8000f18 <_ZN4CIMU8imu_readEv>
 8001146:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 800114a:	4498      	add	r8, r3
 800114c:	f9b4 301a 	ldrsh.w	r3, [r4, #26]
 8001150:	441f      	add	r7, r3
 8001152:	f9b4 301c 	ldrsh.w	r3, [r4, #28]
 8001156:	3d01      	subs	r5, #1
 8001158:	441e      	add	r6, r3
 800115a:	d1ec      	bne.n	8001136 <_ZN4CIMU8imu_initEv+0xae>
 800115c:	2264      	movs	r2, #100	; 0x64
 800115e:	81a5      	strh	r5, [r4, #12]
 8001160:	fb98 f3f2 	sdiv	r3, r8, r2
 8001164:	fb97 f7f2 	sdiv	r7, r7, r2
 8001168:	fb96 f6f2 	sdiv	r6, r6, r2
 800116c:	6023      	str	r3, [r4, #0]
 800116e:	6067      	str	r7, [r4, #4]
 8001170:	60a6      	str	r6, [r4, #8]
 8001172:	81e5      	strh	r5, [r4, #14]
 8001174:	8225      	strh	r5, [r4, #16]
 8001176:	8265      	strh	r5, [r4, #18]
 8001178:	82a5      	strh	r5, [r4, #20]
 800117a:	82e5      	strh	r5, [r4, #22]
 800117c:	8325      	strh	r5, [r4, #24]
 800117e:	8365      	strh	r5, [r4, #26]
 8001180:	83a5      	strh	r5, [r4, #28]
 8001182:	83e5      	strh	r5, [r4, #30]
 8001184:	6225      	str	r5, [r4, #32]
 8001186:	6265      	str	r5, [r4, #36]	; 0x24
 8001188:	62a5      	str	r5, [r4, #40]	; 0x28
 800118a:	4628      	mov	r0, r5
 800118c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001190:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001194:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001198:	f06f 0001 	mvn.w	r0, #1
 800119c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80011a0:	20000080 	.word	0x20000080
 80011a4:	000186a1 	.word	0x000186a1

080011a8 <_ZN4CIMU14get_imu_resultEv>:
 80011a8:	3020      	adds	r0, #32
 80011aa:	4770      	bx	lr

080011ac <_ZN5CGPIO9gpio_initEv>:
 80011ac:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80011b0:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80011b4:	b087      	sub	sp, #28
 80011b6:	2101      	movs	r1, #1
 80011b8:	f000 fd44 	bl	8001c44 <RCC_AHBPeriphClockCmd>
 80011bc:	4e41      	ldr	r6, [pc, #260]	; (80012c4 <_ZN5CGPIO9gpio_initEv+0x118>)
 80011be:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80011c2:	2101      	movs	r1, #1
 80011c4:	f000 fd3e 	bl	8001c44 <RCC_AHBPeriphClockCmd>
 80011c8:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 80011cc:	2101      	movs	r1, #1
 80011ce:	2400      	movs	r4, #0
 80011d0:	f000 fd38 	bl	8001c44 <RCC_AHBPeriphClockCmd>
 80011d4:	2501      	movs	r5, #1
 80011d6:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80011da:	2703      	movs	r7, #3
 80011dc:	4630      	mov	r0, r6
 80011de:	a902      	add	r1, sp, #8
 80011e0:	9302      	str	r3, [sp, #8]
 80011e2:	f88d 700d 	strb.w	r7, [sp, #13]
 80011e6:	f88d 500c 	strb.w	r5, [sp, #12]
 80011ea:	f88d 400e 	strb.w	r4, [sp, #14]
 80011ee:	f88d 400f 	strb.w	r4, [sp, #15]
 80011f2:	f001 f857 	bl	80022a4 <GPIO_Init>
 80011f6:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80011fa:	4630      	mov	r0, r6
 80011fc:	a902      	add	r1, sp, #8
 80011fe:	9302      	str	r3, [sp, #8]
 8001200:	f88d 700d 	strb.w	r7, [sp, #13]
 8001204:	f88d 400c 	strb.w	r4, [sp, #12]
 8001208:	f88d 400f 	strb.w	r4, [sp, #15]
 800120c:	f001 f84a 	bl	80022a4 <GPIO_Init>
 8001210:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 8001214:	a902      	add	r1, sp, #8
 8001216:	482c      	ldr	r0, [pc, #176]	; (80012c8 <_ZN5CGPIO9gpio_initEv+0x11c>)
 8001218:	9302      	str	r3, [sp, #8]
 800121a:	f88d 400c 	strb.w	r4, [sp, #12]
 800121e:	f88d 500f 	strb.w	r5, [sp, #15]
 8001222:	f001 f83f 	bl	80022a4 <GPIO_Init>
 8001226:	4628      	mov	r0, r5
 8001228:	4629      	mov	r1, r5
 800122a:	f000 fd19 	bl	8001c60 <RCC_APB2PeriphClockCmd>
 800122e:	f04f 0910 	mov.w	r9, #16
 8001232:	2106      	movs	r1, #6
 8001234:	2002      	movs	r0, #2
 8001236:	f001 f8c3 	bl	80023c0 <SYSCFG_EXTILineConfig>
 800123a:	f04f 0806 	mov.w	r8, #6
 800123e:	eb0d 0009 	add.w	r0, sp, r9
 8001242:	260f      	movs	r6, #15
 8001244:	f8cd 8010 	str.w	r8, [sp, #16]
 8001248:	f88d 4014 	strb.w	r4, [sp, #20]
 800124c:	f88d 9015 	strb.w	r9, [sp, #21]
 8001250:	f88d 5016 	strb.w	r5, [sp, #22]
 8001254:	f000 ff94 	bl	8002180 <EXTI_Init>
 8001258:	2317      	movs	r3, #23
 800125a:	a801      	add	r0, sp, #4
 800125c:	f88d 3004 	strb.w	r3, [sp, #4]
 8001260:	f88d 6005 	strb.w	r6, [sp, #5]
 8001264:	f88d 6006 	strb.w	r6, [sp, #6]
 8001268:	f88d 5007 	strb.w	r5, [sp, #7]
 800126c:	f000 ff4e 	bl	800210c <NVIC_Init>
 8001270:	210c      	movs	r1, #12
 8001272:	2002      	movs	r0, #2
 8001274:	f001 f8a4 	bl	80023c0 <SYSCFG_EXTILineConfig>
 8001278:	270c      	movs	r7, #12
 800127a:	eb0d 0009 	add.w	r0, sp, r9
 800127e:	9704      	str	r7, [sp, #16]
 8001280:	f88d 4014 	strb.w	r4, [sp, #20]
 8001284:	f88d 9015 	strb.w	r9, [sp, #21]
 8001288:	f88d 5016 	strb.w	r5, [sp, #22]
 800128c:	f000 ff78 	bl	8002180 <EXTI_Init>
 8001290:	2328      	movs	r3, #40	; 0x28
 8001292:	a801      	add	r0, sp, #4
 8001294:	f88d 3004 	strb.w	r3, [sp, #4]
 8001298:	f88d 6005 	strb.w	r6, [sp, #5]
 800129c:	f88d 6006 	strb.w	r6, [sp, #6]
 80012a0:	f88d 5007 	strb.w	r5, [sp, #7]
 80012a4:	f000 ff32 	bl	800210c <NVIC_Init>
 80012a8:	4640      	mov	r0, r8
 80012aa:	f000 ffef 	bl	800228c <EXTI_ClearITPendingBit>
 80012ae:	4638      	mov	r0, r7
 80012b0:	f000 ffec 	bl	800228c <EXTI_ClearITPendingBit>
 80012b4:	4b05      	ldr	r3, [pc, #20]	; (80012cc <_ZN5CGPIO9gpio_initEv+0x120>)
 80012b6:	601c      	str	r4, [r3, #0]
 80012b8:	4b05      	ldr	r3, [pc, #20]	; (80012d0 <_ZN5CGPIO9gpio_initEv+0x124>)
 80012ba:	4620      	mov	r0, r4
 80012bc:	601c      	str	r4, [r3, #0]
 80012be:	b007      	add	sp, #28
 80012c0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80012c4:	48000400 	.word	0x48000400
 80012c8:	48000800 	.word	0x48000800
 80012cc:	20000084 	.word	0x20000084
 80012d0:	20000088 	.word	0x20000088

080012d4 <_ZN5CGPIO7gpio_onEm>:
 80012d4:	4b01      	ldr	r3, [pc, #4]	; (80012dc <_ZN5CGPIO7gpio_onEm+0x8>)
 80012d6:	6199      	str	r1, [r3, #24]
 80012d8:	4770      	bx	lr
 80012da:	bf00      	nop
 80012dc:	48000400 	.word	0x48000400

080012e0 <_ZN5CGPIO8gpio_offEm>:
 80012e0:	4b01      	ldr	r3, [pc, #4]	; (80012e8 <_ZN5CGPIO8gpio_offEm+0x8>)
 80012e2:	b289      	uxth	r1, r1
 80012e4:	8519      	strh	r1, [r3, #40]	; 0x28
 80012e6:	4770      	bx	lr
 80012e8:	48000400 	.word	0x48000400

080012ec <_ZN5CGPIO7gpio_inEm>:
 80012ec:	4b02      	ldr	r3, [pc, #8]	; (80012f8 <_ZN5CGPIO7gpio_inEm+0xc>)
 80012ee:	8a18      	ldrh	r0, [r3, #16]
 80012f0:	b280      	uxth	r0, r0
 80012f2:	ea21 0000 	bic.w	r0, r1, r0
 80012f6:	4770      	bx	lr
 80012f8:	48000400 	.word	0x48000400

080012fc <_ZN5CGPIO16get_left_encoderEv>:
 80012fc:	b082      	sub	sp, #8
 80012fe:	b672      	cpsid	i
 8001300:	4b06      	ldr	r3, [pc, #24]	; (800131c <_ZN5CGPIO16get_left_encoderEv+0x20>)
 8001302:	681b      	ldr	r3, [r3, #0]
 8001304:	9301      	str	r3, [sp, #4]
 8001306:	b662      	cpsie	i
 8001308:	9801      	ldr	r0, [sp, #4]
 800130a:	f240 23ee 	movw	r3, #750	; 0x2ee
 800130e:	4343      	muls	r3, r0
 8001310:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001314:	fbb3 f0f0 	udiv	r0, r3, r0
 8001318:	b002      	add	sp, #8
 800131a:	4770      	bx	lr
 800131c:	20000084 	.word	0x20000084

08001320 <_ZN5CGPIO17get_right_encoderEv>:
 8001320:	b082      	sub	sp, #8
 8001322:	b672      	cpsid	i
 8001324:	4b06      	ldr	r3, [pc, #24]	; (8001340 <_ZN5CGPIO17get_right_encoderEv+0x20>)
 8001326:	681b      	ldr	r3, [r3, #0]
 8001328:	9301      	str	r3, [sp, #4]
 800132a:	b662      	cpsie	i
 800132c:	9801      	ldr	r0, [sp, #4]
 800132e:	f240 23ee 	movw	r3, #750	; 0x2ee
 8001332:	4343      	muls	r3, r0
 8001334:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001338:	fbb3 f0f0 	udiv	r0, r3, r0
 800133c:	b002      	add	sp, #8
 800133e:	4770      	bx	lr
 8001340:	20000088 	.word	0x20000088

08001344 <EXTI9_5_IRQHandler>:
 8001344:	4a03      	ldr	r2, [pc, #12]	; (8001354 <EXTI9_5_IRQHandler+0x10>)
 8001346:	6813      	ldr	r3, [r2, #0]
 8001348:	2006      	movs	r0, #6
 800134a:	3301      	adds	r3, #1
 800134c:	6013      	str	r3, [r2, #0]
 800134e:	f000 bf9d 	b.w	800228c <EXTI_ClearITPendingBit>
 8001352:	bf00      	nop
 8001354:	20000084 	.word	0x20000084

08001358 <EXTI15_10_IRQHandler>:
 8001358:	4a03      	ldr	r2, [pc, #12]	; (8001368 <EXTI15_10_IRQHandler+0x10>)
 800135a:	6813      	ldr	r3, [r2, #0]
 800135c:	200c      	movs	r0, #12
 800135e:	3301      	adds	r3, #1
 8001360:	6013      	str	r3, [r2, #0]
 8001362:	f000 bf93 	b.w	800228c <EXTI_ClearITPendingBit>
 8001366:	bf00      	nop
 8001368:	20000088 	.word	0x20000088

0800136c <_ZN6CError10error_funcEi>:
 800136c:	230a      	movs	r3, #10
 800136e:	490c      	ldr	r1, [pc, #48]	; (80013a0 <_ZN6CError10error_funcEi+0x34>)
 8001370:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001374:	618a      	str	r2, [r1, #24]
 8001376:	4a0b      	ldr	r2, [pc, #44]	; (80013a4 <_ZN6CError10error_funcEi+0x38>)
 8001378:	3a01      	subs	r2, #1
 800137a:	d001      	beq.n	8001380 <_ZN6CError10error_funcEi+0x14>
 800137c:	bf00      	nop
 800137e:	e7fb      	b.n	8001378 <_ZN6CError10error_funcEi+0xc>
 8001380:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001384:	850a      	strh	r2, [r1, #40]	; 0x28
 8001386:	4a08      	ldr	r2, [pc, #32]	; (80013a8 <_ZN6CError10error_funcEi+0x3c>)
 8001388:	3a01      	subs	r2, #1
 800138a:	d001      	beq.n	8001390 <_ZN6CError10error_funcEi+0x24>
 800138c:	bf00      	nop
 800138e:	e7fb      	b.n	8001388 <_ZN6CError10error_funcEi+0x1c>
 8001390:	3b01      	subs	r3, #1
 8001392:	d1ec      	bne.n	800136e <_ZN6CError10error_funcEi+0x2>
 8001394:	4b05      	ldr	r3, [pc, #20]	; (80013ac <_ZN6CError10error_funcEi+0x40>)
 8001396:	3b01      	subs	r3, #1
 8001398:	d0e8      	beq.n	800136c <_ZN6CError10error_funcEi>
 800139a:	bf00      	nop
 800139c:	e7fb      	b.n	8001396 <_ZN6CError10error_funcEi+0x2a>
 800139e:	bf00      	nop
 80013a0:	48000400 	.word	0x48000400
 80013a4:	000186a1 	.word	0x000186a1
 80013a8:	000f4241 	.word	0x000f4241
 80013ac:	002dc6c1 	.word	0x002dc6c1

080013b0 <_ZN9CTerminal13terminal_initEv>:
 80013b0:	b530      	push	{r4, r5, lr}
 80013b2:	4a2f      	ldr	r2, [pc, #188]	; (8001470 <_ZN9CTerminal13terminal_initEv+0xc0>)
 80013b4:	2300      	movs	r3, #0
 80013b6:	6013      	str	r3, [r2, #0]
 80013b8:	4a2e      	ldr	r2, [pc, #184]	; (8001474 <_ZN9CTerminal13terminal_initEv+0xc4>)
 80013ba:	b08b      	sub	sp, #44	; 0x2c
 80013bc:	6013      	str	r3, [r2, #0]
 80013be:	4a2e      	ldr	r2, [pc, #184]	; (8001478 <_ZN9CTerminal13terminal_initEv+0xc8>)
 80013c0:	2400      	movs	r4, #0
 80013c2:	54d4      	strb	r4, [r2, r3]
 80013c4:	3301      	adds	r3, #1
 80013c6:	2b10      	cmp	r3, #16
 80013c8:	d1f9      	bne.n	80013be <_ZN9CTerminal13terminal_initEv+0xe>
 80013ca:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80013ce:	2101      	movs	r1, #1
 80013d0:	f000 fc38 	bl	8001c44 <RCC_AHBPeriphClockCmd>
 80013d4:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80013d8:	2101      	movs	r1, #1
 80013da:	f000 fc41 	bl	8001c60 <RCC_APB2PeriphClockCmd>
 80013de:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80013e2:	9302      	str	r3, [sp, #8]
 80013e4:	2302      	movs	r3, #2
 80013e6:	f88d 300c 	strb.w	r3, [sp, #12]
 80013ea:	a902      	add	r1, sp, #8
 80013ec:	2303      	movs	r3, #3
 80013ee:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80013f2:	f88d 300d 	strb.w	r3, [sp, #13]
 80013f6:	f88d 400e 	strb.w	r4, [sp, #14]
 80013fa:	f88d 400f 	strb.w	r4, [sp, #15]
 80013fe:	f000 ff51 	bl	80022a4 <GPIO_Init>
 8001402:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001406:	2109      	movs	r1, #9
 8001408:	2207      	movs	r2, #7
 800140a:	f000 ff91 	bl	8002330 <GPIO_PinAFConfig>
 800140e:	2207      	movs	r2, #7
 8001410:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001414:	210a      	movs	r1, #10
 8001416:	f000 ff8b 	bl	8002330 <GPIO_PinAFConfig>
 800141a:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 800141e:	9304      	str	r3, [sp, #16]
 8001420:	a904      	add	r1, sp, #16
 8001422:	230c      	movs	r3, #12
 8001424:	4815      	ldr	r0, [pc, #84]	; (800147c <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001426:	9308      	str	r3, [sp, #32]
 8001428:	9405      	str	r4, [sp, #20]
 800142a:	9406      	str	r4, [sp, #24]
 800142c:	9407      	str	r4, [sp, #28]
 800142e:	9409      	str	r4, [sp, #36]	; 0x24
 8001430:	f000 fd24 	bl	8001e7c <USART_Init>
 8001434:	4811      	ldr	r0, [pc, #68]	; (800147c <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001436:	2101      	movs	r1, #1
 8001438:	f000 fd82 	bl	8001f40 <USART_Cmd>
 800143c:	2201      	movs	r2, #1
 800143e:	4910      	ldr	r1, [pc, #64]	; (8001480 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8001440:	480e      	ldr	r0, [pc, #56]	; (800147c <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001442:	f000 fd8d 	bl	8001f60 <USART_ITConfig>
 8001446:	2501      	movs	r5, #1
 8001448:	2325      	movs	r3, #37	; 0x25
 800144a:	a801      	add	r0, sp, #4
 800144c:	f88d 3004 	strb.w	r3, [sp, #4]
 8001450:	f88d 4005 	strb.w	r4, [sp, #5]
 8001454:	f88d 4006 	strb.w	r4, [sp, #6]
 8001458:	f88d 5007 	strb.w	r5, [sp, #7]
 800145c:	f000 fe56 	bl	800210c <NVIC_Init>
 8001460:	4806      	ldr	r0, [pc, #24]	; (800147c <_ZN9CTerminal13terminal_initEv+0xcc>)
 8001462:	4629      	mov	r1, r5
 8001464:	f000 fd6c 	bl	8001f40 <USART_Cmd>
 8001468:	4620      	mov	r0, r4
 800146a:	b00b      	add	sp, #44	; 0x2c
 800146c:	bd30      	pop	{r4, r5, pc}
 800146e:	bf00      	nop
 8001470:	2000008c 	.word	0x2000008c
 8001474:	200000a0 	.word	0x200000a0
 8001478:	20000090 	.word	0x20000090
 800147c:	40013800 	.word	0x40013800
 8001480:	00050105 	.word	0x00050105

08001484 <USART1_IRQHandler>:
 8001484:	b508      	push	{r3, lr}
 8001486:	480d      	ldr	r0, [pc, #52]	; (80014bc <USART1_IRQHandler+0x38>)
 8001488:	490d      	ldr	r1, [pc, #52]	; (80014c0 <USART1_IRQHandler+0x3c>)
 800148a:	f000 fd83 	bl	8001f94 <USART_GetITStatus>
 800148e:	b178      	cbz	r0, 80014b0 <USART1_IRQHandler+0x2c>
 8001490:	480a      	ldr	r0, [pc, #40]	; (80014bc <USART1_IRQHandler+0x38>)
 8001492:	f000 fd60 	bl	8001f56 <USART_ReceiveData>
 8001496:	4b0b      	ldr	r3, [pc, #44]	; (80014c4 <USART1_IRQHandler+0x40>)
 8001498:	490b      	ldr	r1, [pc, #44]	; (80014c8 <USART1_IRQHandler+0x44>)
 800149a:	681a      	ldr	r2, [r3, #0]
 800149c:	b2c0      	uxtb	r0, r0
 800149e:	5488      	strb	r0, [r1, r2]
 80014a0:	681a      	ldr	r2, [r3, #0]
 80014a2:	3201      	adds	r2, #1
 80014a4:	601a      	str	r2, [r3, #0]
 80014a6:	681a      	ldr	r2, [r3, #0]
 80014a8:	2a0f      	cmp	r2, #15
 80014aa:	bf84      	itt	hi
 80014ac:	2200      	movhi	r2, #0
 80014ae:	601a      	strhi	r2, [r3, #0]
 80014b0:	4802      	ldr	r0, [pc, #8]	; (80014bc <USART1_IRQHandler+0x38>)
 80014b2:	4903      	ldr	r1, [pc, #12]	; (80014c0 <USART1_IRQHandler+0x3c>)
 80014b4:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80014b8:	f000 bd8a 	b.w	8001fd0 <USART_ClearITPendingBit>
 80014bc:	40013800 	.word	0x40013800
 80014c0:	00050105 	.word	0x00050105
 80014c4:	2000008c 	.word	0x2000008c
 80014c8:	20000090 	.word	0x20000090

080014cc <_ZN9CTerminal7putcharEc>:
 80014cc:	4b04      	ldr	r3, [pc, #16]	; (80014e0 <_ZN9CTerminal7putcharEc+0x14>)
 80014ce:	69da      	ldr	r2, [r3, #28]
 80014d0:	0612      	lsls	r2, r2, #24
 80014d2:	d401      	bmi.n	80014d8 <_ZN9CTerminal7putcharEc+0xc>
 80014d4:	bf00      	nop
 80014d6:	e7f9      	b.n	80014cc <_ZN9CTerminal7putcharEc>
 80014d8:	b289      	uxth	r1, r1
 80014da:	8519      	strh	r1, [r3, #40]	; 0x28
 80014dc:	4770      	bx	lr
 80014de:	bf00      	nop
 80014e0:	40013800 	.word	0x40013800

080014e4 <_ZN9CTerminal4putsEPc>:
 80014e4:	b538      	push	{r3, r4, r5, lr}
 80014e6:	4605      	mov	r5, r0
 80014e8:	1e4c      	subs	r4, r1, #1
 80014ea:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 80014ee:	b119      	cbz	r1, 80014f8 <_ZN9CTerminal4putsEPc+0x14>
 80014f0:	4628      	mov	r0, r5
 80014f2:	f7ff ffeb 	bl	80014cc <_ZN9CTerminal7putcharEc>
 80014f6:	e7f8      	b.n	80014ea <_ZN9CTerminal4putsEPc+0x6>
 80014f8:	2001      	movs	r0, #1
 80014fa:	bd38      	pop	{r3, r4, r5, pc}

080014fc <_ZN9CTerminal4putiEl>:
 80014fc:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 80014fe:	1e0b      	subs	r3, r1, #0
 8001500:	f04f 0200 	mov.w	r2, #0
 8001504:	bfba      	itte	lt
 8001506:	425b      	neglt	r3, r3
 8001508:	2501      	movlt	r5, #1
 800150a:	4615      	movge	r5, r2
 800150c:	f88d 200f 	strb.w	r2, [sp, #15]
 8001510:	210a      	movs	r1, #10
 8001512:	220a      	movs	r2, #10
 8001514:	ac01      	add	r4, sp, #4
 8001516:	fb93 f6f2 	sdiv	r6, r3, r2
 800151a:	fb02 3316 	mls	r3, r2, r6, r3
 800151e:	3330      	adds	r3, #48	; 0x30
 8001520:	550b      	strb	r3, [r1, r4]
 8001522:	1e4a      	subs	r2, r1, #1
 8001524:	4633      	mov	r3, r6
 8001526:	b10e      	cbz	r6, 800152c <_ZN9CTerminal4putiEl+0x30>
 8001528:	4611      	mov	r1, r2
 800152a:	e7f2      	b.n	8001512 <_ZN9CTerminal4putiEl+0x16>
 800152c:	b12d      	cbz	r5, 800153a <_ZN9CTerminal4putiEl+0x3e>
 800152e:	ab04      	add	r3, sp, #16
 8001530:	4413      	add	r3, r2
 8001532:	212d      	movs	r1, #45	; 0x2d
 8001534:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8001538:	4611      	mov	r1, r2
 800153a:	4421      	add	r1, r4
 800153c:	f7ff ffd2 	bl	80014e4 <_ZN9CTerminal4putsEPc>
 8001540:	b004      	add	sp, #16
 8001542:	bd70      	pop	{r4, r5, r6, pc}

08001544 <_ZN9CTerminal5putuiEm>:
 8001544:	b530      	push	{r4, r5, lr}
 8001546:	b085      	sub	sp, #20
 8001548:	2300      	movs	r3, #0
 800154a:	f88d 300f 	strb.w	r3, [sp, #15]
 800154e:	220a      	movs	r2, #10
 8001550:	230a      	movs	r3, #10
 8001552:	ac01      	add	r4, sp, #4
 8001554:	fbb1 f5f3 	udiv	r5, r1, r3
 8001558:	fb03 1315 	mls	r3, r3, r5, r1
 800155c:	3330      	adds	r3, #48	; 0x30
 800155e:	5513      	strb	r3, [r2, r4]
 8001560:	4629      	mov	r1, r5
 8001562:	1e53      	subs	r3, r2, #1
 8001564:	b10d      	cbz	r5, 800156a <_ZN9CTerminal5putuiEm+0x26>
 8001566:	461a      	mov	r2, r3
 8001568:	e7f2      	b.n	8001550 <_ZN9CTerminal5putuiEm+0xc>
 800156a:	18a1      	adds	r1, r4, r2
 800156c:	f7ff ffba 	bl	80014e4 <_ZN9CTerminal4putsEPc>
 8001570:	b005      	add	sp, #20
 8001572:	bd30      	pop	{r4, r5, pc}

08001574 <_ZN9CTerminal4putxEm>:
 8001574:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001576:	2300      	movs	r3, #0
 8001578:	f88d 300f 	strb.w	r3, [sp, #15]
 800157c:	220a      	movs	r2, #10
 800157e:	f001 030f 	and.w	r3, r1, #15
 8001582:	2b09      	cmp	r3, #9
 8001584:	ac01      	add	r4, sp, #4
 8001586:	bfd4      	ite	le
 8001588:	3330      	addle	r3, #48	; 0x30
 800158a:	3357      	addgt	r3, #87	; 0x57
 800158c:	0909      	lsrs	r1, r1, #4
 800158e:	54a3      	strb	r3, [r4, r2]
 8001590:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8001594:	d001      	beq.n	800159a <_ZN9CTerminal4putxEm+0x26>
 8001596:	461a      	mov	r2, r3
 8001598:	e7f1      	b.n	800157e <_ZN9CTerminal4putxEm+0xa>
 800159a:	18a1      	adds	r1, r4, r2
 800159c:	f7ff ffa2 	bl	80014e4 <_ZN9CTerminal4putsEPc>
 80015a0:	b004      	add	sp, #16
 80015a2:	bd10      	pop	{r4, pc}

080015a4 <_ZN9CTerminal6printfEPKcz>:
 80015a4:	b40e      	push	{r1, r2, r3}
 80015a6:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 80015a8:	ab07      	add	r3, sp, #28
 80015aa:	4604      	mov	r4, r0
 80015ac:	f853 6b04 	ldr.w	r6, [r3], #4
 80015b0:	9301      	str	r3, [sp, #4]
 80015b2:	2500      	movs	r5, #0
 80015b4:	5d71      	ldrb	r1, [r6, r5]
 80015b6:	2900      	cmp	r1, #0
 80015b8:	d040      	beq.n	800163c <_ZN9CTerminal6printfEPKcz+0x98>
 80015ba:	2925      	cmp	r1, #37	; 0x25
 80015bc:	d004      	beq.n	80015c8 <_ZN9CTerminal6printfEPKcz+0x24>
 80015be:	4620      	mov	r0, r4
 80015c0:	f7ff ff84 	bl	80014cc <_ZN9CTerminal7putcharEc>
 80015c4:	3501      	adds	r5, #1
 80015c6:	e7f5      	b.n	80015b4 <_ZN9CTerminal6printfEPKcz+0x10>
 80015c8:	1973      	adds	r3, r6, r5
 80015ca:	7859      	ldrb	r1, [r3, #1]
 80015cc:	2969      	cmp	r1, #105	; 0x69
 80015ce:	d018      	beq.n	8001602 <_ZN9CTerminal6printfEPKcz+0x5e>
 80015d0:	d809      	bhi.n	80015e6 <_ZN9CTerminal6printfEPKcz+0x42>
 80015d2:	2925      	cmp	r1, #37	; 0x25
 80015d4:	d02d      	beq.n	8001632 <_ZN9CTerminal6printfEPKcz+0x8e>
 80015d6:	2963      	cmp	r1, #99	; 0x63
 80015d8:	d12e      	bne.n	8001638 <_ZN9CTerminal6printfEPKcz+0x94>
 80015da:	9b01      	ldr	r3, [sp, #4]
 80015dc:	1d1a      	adds	r2, r3, #4
 80015de:	9201      	str	r2, [sp, #4]
 80015e0:	4620      	mov	r0, r4
 80015e2:	7819      	ldrb	r1, [r3, #0]
 80015e4:	e026      	b.n	8001634 <_ZN9CTerminal6printfEPKcz+0x90>
 80015e6:	2975      	cmp	r1, #117	; 0x75
 80015e8:	d013      	beq.n	8001612 <_ZN9CTerminal6printfEPKcz+0x6e>
 80015ea:	2978      	cmp	r1, #120	; 0x78
 80015ec:	d019      	beq.n	8001622 <_ZN9CTerminal6printfEPKcz+0x7e>
 80015ee:	2973      	cmp	r1, #115	; 0x73
 80015f0:	d122      	bne.n	8001638 <_ZN9CTerminal6printfEPKcz+0x94>
 80015f2:	9b01      	ldr	r3, [sp, #4]
 80015f4:	4620      	mov	r0, r4
 80015f6:	1d1a      	adds	r2, r3, #4
 80015f8:	6819      	ldr	r1, [r3, #0]
 80015fa:	9201      	str	r2, [sp, #4]
 80015fc:	f7ff ff72 	bl	80014e4 <_ZN9CTerminal4putsEPc>
 8001600:	e01a      	b.n	8001638 <_ZN9CTerminal6printfEPKcz+0x94>
 8001602:	9b01      	ldr	r3, [sp, #4]
 8001604:	4620      	mov	r0, r4
 8001606:	1d1a      	adds	r2, r3, #4
 8001608:	6819      	ldr	r1, [r3, #0]
 800160a:	9201      	str	r2, [sp, #4]
 800160c:	f7ff ff76 	bl	80014fc <_ZN9CTerminal4putiEl>
 8001610:	e012      	b.n	8001638 <_ZN9CTerminal6printfEPKcz+0x94>
 8001612:	9b01      	ldr	r3, [sp, #4]
 8001614:	4620      	mov	r0, r4
 8001616:	1d1a      	adds	r2, r3, #4
 8001618:	6819      	ldr	r1, [r3, #0]
 800161a:	9201      	str	r2, [sp, #4]
 800161c:	f7ff ff92 	bl	8001544 <_ZN9CTerminal5putuiEm>
 8001620:	e00a      	b.n	8001638 <_ZN9CTerminal6printfEPKcz+0x94>
 8001622:	9b01      	ldr	r3, [sp, #4]
 8001624:	4620      	mov	r0, r4
 8001626:	1d1a      	adds	r2, r3, #4
 8001628:	6819      	ldr	r1, [r3, #0]
 800162a:	9201      	str	r2, [sp, #4]
 800162c:	f7ff ffa2 	bl	8001574 <_ZN9CTerminal4putxEm>
 8001630:	e002      	b.n	8001638 <_ZN9CTerminal6printfEPKcz+0x94>
 8001632:	4620      	mov	r0, r4
 8001634:	f7ff ff4a 	bl	80014cc <_ZN9CTerminal7putcharEc>
 8001638:	3502      	adds	r5, #2
 800163a:	e7bb      	b.n	80015b4 <_ZN9CTerminal6printfEPKcz+0x10>
 800163c:	b003      	add	sp, #12
 800163e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8001642:	b003      	add	sp, #12
 8001644:	4770      	bx	lr
	...

08001648 <_Z13sensor_threadv>:
 8001648:	b510      	push	{r4, lr}
 800164a:	480d      	ldr	r0, [pc, #52]	; (8001680 <_Z13sensor_threadv+0x38>)
 800164c:	2100      	movs	r1, #0
 800164e:	2214      	movs	r2, #20
 8001650:	f7fe fe8c 	bl	800036c <_ZN6CTimer22event_timer_set_periodEhm>
 8001654:	480a      	ldr	r0, [pc, #40]	; (8001680 <_Z13sensor_threadv+0x38>)
 8001656:	2100      	movs	r1, #0
 8001658:	f7fe fe9c 	bl	8000394 <_ZN6CTimer17event_timer_checkEh>
 800165c:	4604      	mov	r4, r0
 800165e:	2800      	cmp	r0, #0
 8001660:	d0f8      	beq.n	8001654 <_Z13sensor_threadv+0xc>
 8001662:	4808      	ldr	r0, [pc, #32]	; (8001684 <_Z13sensor_threadv+0x3c>)
 8001664:	f7ff fc58 	bl	8000f18 <_ZN4CIMU8imu_readEv>
 8001668:	4805      	ldr	r0, [pc, #20]	; (8001680 <_Z13sensor_threadv+0x38>)
 800166a:	2100      	movs	r1, #0
 800166c:	f7fe fea0 	bl	80003b0 <_ZN4CRGB8rgb_readEh>
 8001670:	2c13      	cmp	r4, #19
 8001672:	d9ef      	bls.n	8001654 <_Z13sensor_threadv+0xc>
 8001674:	4802      	ldr	r0, [pc, #8]	; (8001680 <_Z13sensor_threadv+0x38>)
 8001676:	4904      	ldr	r1, [pc, #16]	; (8001688 <_Z13sensor_threadv+0x40>)
 8001678:	4622      	mov	r2, r4
 800167a:	f7ff ff93 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 800167e:	e7e9      	b.n	8001654 <_Z13sensor_threadv+0xc>
 8001680:	200000a4 	.word	0x200000a4
 8001684:	200001d4 	.word	0x200001d4
 8001688:	08002630 	.word	0x08002630

0800168c <_Z12print_threadv>:
 800168c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800168e:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 8001692:	487f      	ldr	r0, [pc, #508]	; (8001890 <_Z12print_threadv+0x204>)
 8001694:	2101      	movs	r1, #1
 8001696:	f7fe fe69 	bl	800036c <_ZN6CTimer22event_timer_set_periodEhm>
 800169a:	2264      	movs	r2, #100	; 0x64
 800169c:	487d      	ldr	r0, [pc, #500]	; (8001894 <_Z12print_threadv+0x208>)
 800169e:	2100      	movs	r1, #0
 80016a0:	f7ff f8a2 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 80016a4:	487a      	ldr	r0, [pc, #488]	; (8001890 <_Z12print_threadv+0x204>)
 80016a6:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80016aa:	f7fe fe4d 	bl	8000348 <_ZN6CTimer8delay_msEm>
 80016ae:	f06f 0263 	mvn.w	r2, #99	; 0x63
 80016b2:	4878      	ldr	r0, [pc, #480]	; (8001894 <_Z12print_threadv+0x208>)
 80016b4:	2100      	movs	r1, #0
 80016b6:	f7ff f897 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 80016ba:	4875      	ldr	r0, [pc, #468]	; (8001890 <_Z12print_threadv+0x204>)
 80016bc:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80016c0:	f7fe fe42 	bl	8000348 <_ZN6CTimer8delay_msEm>
 80016c4:	2100      	movs	r1, #0
 80016c6:	460a      	mov	r2, r1
 80016c8:	4872      	ldr	r0, [pc, #456]	; (8001894 <_Z12print_threadv+0x208>)
 80016ca:	f7ff f88d 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 80016ce:	4870      	ldr	r0, [pc, #448]	; (8001890 <_Z12print_threadv+0x204>)
 80016d0:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80016d4:	f7fe fe38 	bl	8000348 <_ZN6CTimer8delay_msEm>
 80016d8:	2264      	movs	r2, #100	; 0x64
 80016da:	486e      	ldr	r0, [pc, #440]	; (8001894 <_Z12print_threadv+0x208>)
 80016dc:	2101      	movs	r1, #1
 80016de:	f7ff f883 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 80016e2:	486b      	ldr	r0, [pc, #428]	; (8001890 <_Z12print_threadv+0x204>)
 80016e4:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80016e8:	f7fe fe2e 	bl	8000348 <_ZN6CTimer8delay_msEm>
 80016ec:	f06f 0263 	mvn.w	r2, #99	; 0x63
 80016f0:	4868      	ldr	r0, [pc, #416]	; (8001894 <_Z12print_threadv+0x208>)
 80016f2:	2101      	movs	r1, #1
 80016f4:	f7ff f878 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 80016f8:	4865      	ldr	r0, [pc, #404]	; (8001890 <_Z12print_threadv+0x204>)
 80016fa:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80016fe:	f7fe fe23 	bl	8000348 <_ZN6CTimer8delay_msEm>
 8001702:	2200      	movs	r2, #0
 8001704:	4863      	ldr	r0, [pc, #396]	; (8001894 <_Z12print_threadv+0x208>)
 8001706:	2101      	movs	r1, #1
 8001708:	f7ff f86e 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 800170c:	4860      	ldr	r0, [pc, #384]	; (8001890 <_Z12print_threadv+0x204>)
 800170e:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001712:	f7fe fe19 	bl	8000348 <_ZN6CTimer8delay_msEm>
 8001716:	485f      	ldr	r0, [pc, #380]	; (8001894 <_Z12print_threadv+0x208>)
 8001718:	2101      	movs	r1, #1
 800171a:	2264      	movs	r2, #100	; 0x64
 800171c:	f7ff f864 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 8001720:	2264      	movs	r2, #100	; 0x64
 8001722:	485c      	ldr	r0, [pc, #368]	; (8001894 <_Z12print_threadv+0x208>)
 8001724:	2100      	movs	r1, #0
 8001726:	f7ff f85f 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 800172a:	4859      	ldr	r0, [pc, #356]	; (8001890 <_Z12print_threadv+0x204>)
 800172c:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001730:	f7fe fe0a 	bl	8000348 <_ZN6CTimer8delay_msEm>
 8001734:	4857      	ldr	r0, [pc, #348]	; (8001894 <_Z12print_threadv+0x208>)
 8001736:	2101      	movs	r1, #1
 8001738:	2200      	movs	r2, #0
 800173a:	f7ff f855 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 800173e:	2100      	movs	r1, #0
 8001740:	4854      	ldr	r0, [pc, #336]	; (8001894 <_Z12print_threadv+0x208>)
 8001742:	460a      	mov	r2, r1
 8001744:	f7ff f850 	bl	80007e8 <_ZN6CMotor9set_motorEml>
 8001748:	4851      	ldr	r0, [pc, #324]	; (8001890 <_Z12print_threadv+0x204>)
 800174a:	2101      	movs	r1, #1
 800174c:	f7fe fe22 	bl	8000394 <_ZN6CTimer17event_timer_checkEh>
 8001750:	2800      	cmp	r0, #0
 8001752:	d0f9      	beq.n	8001748 <_Z12print_threadv+0xbc>
 8001754:	484e      	ldr	r0, [pc, #312]	; (8001890 <_Z12print_threadv+0x204>)
 8001756:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 800175a:	f7ff fdbb 	bl	80012d4 <_ZN5CGPIO7gpio_onEm>
 800175e:	494e      	ldr	r1, [pc, #312]	; (8001898 <_Z12print_threadv+0x20c>)
 8001760:	484b      	ldr	r0, [pc, #300]	; (8001890 <_Z12print_threadv+0x204>)
 8001762:	f7ff ff1f 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001766:	484a      	ldr	r0, [pc, #296]	; (8001890 <_Z12print_threadv+0x204>)
 8001768:	f7fe fde0 	bl	800032c <_ZN6CTimer8get_timeEv>
 800176c:	494b      	ldr	r1, [pc, #300]	; (800189c <_Z12print_threadv+0x210>)
 800176e:	4602      	mov	r2, r0
 8001770:	4847      	ldr	r0, [pc, #284]	; (8001890 <_Z12print_threadv+0x204>)
 8001772:	f7ff ff17 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001776:	4846      	ldr	r0, [pc, #280]	; (8001890 <_Z12print_threadv+0x204>)
 8001778:	f7ff fdc0 	bl	80012fc <_ZN5CGPIO16get_left_encoderEv>
 800177c:	4604      	mov	r4, r0
 800177e:	4844      	ldr	r0, [pc, #272]	; (8001890 <_Z12print_threadv+0x204>)
 8001780:	f7ff fdce 	bl	8001320 <_ZN5CGPIO17get_right_encoderEv>
 8001784:	4622      	mov	r2, r4
 8001786:	4603      	mov	r3, r0
 8001788:	4945      	ldr	r1, [pc, #276]	; (80018a0 <_Z12print_threadv+0x214>)
 800178a:	4841      	ldr	r0, [pc, #260]	; (8001890 <_Z12print_threadv+0x204>)
 800178c:	f7ff ff0a 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001790:	4844      	ldr	r0, [pc, #272]	; (80018a4 <_Z12print_threadv+0x218>)
 8001792:	f7ff fd09 	bl	80011a8 <_ZN4CIMU14get_imu_resultEv>
 8001796:	6805      	ldr	r5, [r0, #0]
 8001798:	4842      	ldr	r0, [pc, #264]	; (80018a4 <_Z12print_threadv+0x218>)
 800179a:	f7ff fd05 	bl	80011a8 <_ZN4CIMU14get_imu_resultEv>
 800179e:	6844      	ldr	r4, [r0, #4]
 80017a0:	4840      	ldr	r0, [pc, #256]	; (80018a4 <_Z12print_threadv+0x218>)
 80017a2:	f7ff fd01 	bl	80011a8 <_ZN4CIMU14get_imu_resultEv>
 80017a6:	6883      	ldr	r3, [r0, #8]
 80017a8:	9300      	str	r3, [sp, #0]
 80017aa:	462a      	mov	r2, r5
 80017ac:	4623      	mov	r3, r4
 80017ae:	4838      	ldr	r0, [pc, #224]	; (8001890 <_Z12print_threadv+0x204>)
 80017b0:	493d      	ldr	r1, [pc, #244]	; (80018a8 <_Z12print_threadv+0x21c>)
 80017b2:	f7ff fef7 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 80017b6:	4938      	ldr	r1, [pc, #224]	; (8001898 <_Z12print_threadv+0x20c>)
 80017b8:	4835      	ldr	r0, [pc, #212]	; (8001890 <_Z12print_threadv+0x204>)
 80017ba:	f7ff fef3 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 80017be:	4834      	ldr	r0, [pc, #208]	; (8001890 <_Z12print_threadv+0x204>)
 80017c0:	f7fe ffb0 	bl	8000724 <_ZN4CRGB14get_rgb_resultEv>
 80017c4:	4934      	ldr	r1, [pc, #208]	; (8001898 <_Z12print_threadv+0x20c>)
 80017c6:	4604      	mov	r4, r0
 80017c8:	4831      	ldr	r0, [pc, #196]	; (8001890 <_Z12print_threadv+0x204>)
 80017ca:	f7ff feeb 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 80017ce:	1ea5      	subs	r5, r4, #2
 80017d0:	f104 0610 	add.w	r6, r4, #16
 80017d4:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 80017d8:	482d      	ldr	r0, [pc, #180]	; (8001890 <_Z12print_threadv+0x204>)
 80017da:	4934      	ldr	r1, [pc, #208]	; (80018ac <_Z12print_threadv+0x220>)
 80017dc:	f7ff fee2 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 80017e0:	42b5      	cmp	r5, r6
 80017e2:	d1f7      	bne.n	80017d4 <_Z12print_threadv+0x148>
 80017e4:	482a      	ldr	r0, [pc, #168]	; (8001890 <_Z12print_threadv+0x204>)
 80017e6:	492c      	ldr	r1, [pc, #176]	; (8001898 <_Z12print_threadv+0x20c>)
 80017e8:	f7ff fedc 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 80017ec:	f104 0522 	add.w	r5, r4, #34	; 0x22
 80017f0:	f936 2f02 	ldrsh.w	r2, [r6, #2]!
 80017f4:	4826      	ldr	r0, [pc, #152]	; (8001890 <_Z12print_threadv+0x204>)
 80017f6:	492d      	ldr	r1, [pc, #180]	; (80018ac <_Z12print_threadv+0x220>)
 80017f8:	f7ff fed4 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 80017fc:	42ae      	cmp	r6, r5
 80017fe:	d1f7      	bne.n	80017f0 <_Z12print_threadv+0x164>
 8001800:	4823      	ldr	r0, [pc, #140]	; (8001890 <_Z12print_threadv+0x204>)
 8001802:	4925      	ldr	r1, [pc, #148]	; (8001898 <_Z12print_threadv+0x20c>)
 8001804:	f7ff fece 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001808:	f104 0634 	add.w	r6, r4, #52	; 0x34
 800180c:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 8001810:	481f      	ldr	r0, [pc, #124]	; (8001890 <_Z12print_threadv+0x204>)
 8001812:	4926      	ldr	r1, [pc, #152]	; (80018ac <_Z12print_threadv+0x220>)
 8001814:	f7ff fec6 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001818:	42b5      	cmp	r5, r6
 800181a:	d1f7      	bne.n	800180c <_Z12print_threadv+0x180>
 800181c:	481c      	ldr	r0, [pc, #112]	; (8001890 <_Z12print_threadv+0x204>)
 800181e:	491e      	ldr	r1, [pc, #120]	; (8001898 <_Z12print_threadv+0x20c>)
 8001820:	f7ff fec0 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001824:	481a      	ldr	r0, [pc, #104]	; (8001890 <_Z12print_threadv+0x204>)
 8001826:	491c      	ldr	r1, [pc, #112]	; (8001898 <_Z12print_threadv+0x20c>)
 8001828:	f7ff febc 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 800182c:	4818      	ldr	r0, [pc, #96]	; (8001890 <_Z12print_threadv+0x204>)
 800182e:	491a      	ldr	r1, [pc, #104]	; (8001898 <_Z12print_threadv+0x20c>)
 8001830:	f7ff feb8 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001834:	f104 0558 	add.w	r5, r4, #88	; 0x58
 8001838:	f104 066a 	add.w	r6, r4, #106	; 0x6a
 800183c:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 8001840:	4813      	ldr	r0, [pc, #76]	; (8001890 <_Z12print_threadv+0x204>)
 8001842:	491a      	ldr	r1, [pc, #104]	; (80018ac <_Z12print_threadv+0x220>)
 8001844:	f7ff feae 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001848:	42b5      	cmp	r5, r6
 800184a:	d1f7      	bne.n	800183c <_Z12print_threadv+0x1b0>
 800184c:	4810      	ldr	r0, [pc, #64]	; (8001890 <_Z12print_threadv+0x204>)
 800184e:	4912      	ldr	r1, [pc, #72]	; (8001898 <_Z12print_threadv+0x20c>)
 8001850:	f7ff fea8 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001854:	f104 057c 	add.w	r5, r4, #124	; 0x7c
 8001858:	f936 2f02 	ldrsh.w	r2, [r6, #2]!
 800185c:	480c      	ldr	r0, [pc, #48]	; (8001890 <_Z12print_threadv+0x204>)
 800185e:	4913      	ldr	r1, [pc, #76]	; (80018ac <_Z12print_threadv+0x220>)
 8001860:	f7ff fea0 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001864:	42ae      	cmp	r6, r5
 8001866:	d1f7      	bne.n	8001858 <_Z12print_threadv+0x1cc>
 8001868:	4809      	ldr	r0, [pc, #36]	; (8001890 <_Z12print_threadv+0x204>)
 800186a:	490b      	ldr	r1, [pc, #44]	; (8001898 <_Z12print_threadv+0x20c>)
 800186c:	f7ff fe9a 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001870:	348e      	adds	r4, #142	; 0x8e
 8001872:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 8001876:	4806      	ldr	r0, [pc, #24]	; (8001890 <_Z12print_threadv+0x204>)
 8001878:	490c      	ldr	r1, [pc, #48]	; (80018ac <_Z12print_threadv+0x220>)
 800187a:	f7ff fe93 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 800187e:	42a5      	cmp	r5, r4
 8001880:	d1f7      	bne.n	8001872 <_Z12print_threadv+0x1e6>
 8001882:	4803      	ldr	r0, [pc, #12]	; (8001890 <_Z12print_threadv+0x204>)
 8001884:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001888:	f7ff fd2a 	bl	80012e0 <_ZN5CGPIO8gpio_offEm>
 800188c:	e75c      	b.n	8001748 <_Z12print_threadv+0xbc>
 800188e:	bf00      	nop
 8001890:	200000a4 	.word	0x200000a4
 8001894:	2000020c 	.word	0x2000020c
 8001898:	0800262e 	.word	0x0800262e
 800189c:	08002646 	.word	0x08002646
 80018a0:	08002656 	.word	0x08002656
 80018a4:	200001d4 	.word	0x200001d4
 80018a8:	08002666 	.word	0x08002666
 80018ac:	08002677 	.word	0x08002677

080018b0 <usr_main>:
 80018b0:	b508      	push	{r3, lr}
 80018b2:	f000 fc29 	bl	8002108 <sytem_clock_init>
 80018b6:	f000 fe87 	bl	80025c8 <lib_os_init>
 80018ba:	481e      	ldr	r0, [pc, #120]	; (8001934 <usr_main+0x84>)
 80018bc:	f7fe fc94 	bl	80001e8 <_ZN7CKodama4initEv>
 80018c0:	b118      	cbz	r0, 80018ca <usr_main+0x1a>
 80018c2:	481c      	ldr	r0, [pc, #112]	; (8001934 <usr_main+0x84>)
 80018c4:	2100      	movs	r1, #0
 80018c6:	f7ff fd51 	bl	800136c <_ZN6CError10error_funcEi>
 80018ca:	481a      	ldr	r0, [pc, #104]	; (8001934 <usr_main+0x84>)
 80018cc:	f44f 5180 	mov.w	r1, #4096	; 0x1000
 80018d0:	f7ff fd0c 	bl	80012ec <_ZN5CGPIO7gpio_inEm>
 80018d4:	b188      	cbz	r0, 80018fa <usr_main+0x4a>
 80018d6:	4918      	ldr	r1, [pc, #96]	; (8001938 <usr_main+0x88>)
 80018d8:	4818      	ldr	r0, [pc, #96]	; (800193c <usr_main+0x8c>)
 80018da:	f44f 7200 	mov.w	r2, #512	; 0x200
 80018de:	2306      	movs	r3, #6
 80018e0:	f000 fdf6 	bl	80024d0 <create_thread>
 80018e4:	2306      	movs	r3, #6
 80018e6:	4816      	ldr	r0, [pc, #88]	; (8001940 <usr_main+0x90>)
 80018e8:	4916      	ldr	r1, [pc, #88]	; (8001944 <usr_main+0x94>)
 80018ea:	f44f 7200 	mov.w	r2, #512	; 0x200
 80018ee:	f000 fdef 	bl	80024d0 <create_thread>
 80018f2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80018f6:	f000 bde5 	b.w	80024c4 <kernel_start>
 80018fa:	480e      	ldr	r0, [pc, #56]	; (8001934 <usr_main+0x84>)
 80018fc:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001900:	f7ff fce8 	bl	80012d4 <_ZN5CGPIO7gpio_onEm>
 8001904:	480b      	ldr	r0, [pc, #44]	; (8001934 <usr_main+0x84>)
 8001906:	210a      	movs	r1, #10
 8001908:	f7fe fd1e 	bl	8000348 <_ZN6CTimer8delay_msEm>
 800190c:	4809      	ldr	r0, [pc, #36]	; (8001934 <usr_main+0x84>)
 800190e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8001912:	f7ff fce5 	bl	80012e0 <_ZN5CGPIO8gpio_offEm>
 8001916:	f44f 7196 	mov.w	r1, #300	; 0x12c
 800191a:	4806      	ldr	r0, [pc, #24]	; (8001934 <usr_main+0x84>)
 800191c:	f7fe fd14 	bl	8000348 <_ZN6CTimer8delay_msEm>
 8001920:	4804      	ldr	r0, [pc, #16]	; (8001934 <usr_main+0x84>)
 8001922:	f7fe fd03 	bl	800032c <_ZN6CTimer8get_timeEv>
 8001926:	4908      	ldr	r1, [pc, #32]	; (8001948 <usr_main+0x98>)
 8001928:	4602      	mov	r2, r0
 800192a:	4802      	ldr	r0, [pc, #8]	; (8001934 <usr_main+0x84>)
 800192c:	f7ff fe3a 	bl	80015a4 <_ZN9CTerminal6printfEPKcz>
 8001930:	e7cb      	b.n	80018ca <usr_main+0x1a>
 8001932:	bf00      	nop
 8001934:	200000a4 	.word	0x200000a4
 8001938:	2000041c 	.word	0x2000041c
 800193c:	08001649 	.word	0x08001649
 8001940:	0800168d 	.word	0x0800168d
 8001944:	2000021c 	.word	0x2000021c
 8001948:	0800267b 	.word	0x0800267b

0800194c <main>:
 800194c:	b508      	push	{r3, lr}
 800194e:	f7ff ffaf 	bl	80018b0 <usr_main>
 8001952:	2000      	movs	r0, #0
 8001954:	bd08      	pop	{r3, pc}
	...

08001958 <RCC_GetClocksFreq>:
 8001958:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800195c:	4f9b      	ldr	r7, [pc, #620]	; (8001bcc <RCC_GetClocksFreq+0x274>)
 800195e:	687b      	ldr	r3, [r7, #4]
 8001960:	f003 030c 	and.w	r3, r3, #12
 8001964:	2b04      	cmp	r3, #4
 8001966:	d005      	beq.n	8001974 <RCC_GetClocksFreq+0x1c>
 8001968:	2b08      	cmp	r3, #8
 800196a:	d006      	beq.n	800197a <RCC_GetClocksFreq+0x22>
 800196c:	4a98      	ldr	r2, [pc, #608]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 800196e:	6002      	str	r2, [r0, #0]
 8001970:	b9b3      	cbnz	r3, 80019a0 <RCC_GetClocksFreq+0x48>
 8001972:	e016      	b.n	80019a2 <RCC_GetClocksFreq+0x4a>
 8001974:	4b96      	ldr	r3, [pc, #600]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 8001976:	6003      	str	r3, [r0, #0]
 8001978:	e012      	b.n	80019a0 <RCC_GetClocksFreq+0x48>
 800197a:	687b      	ldr	r3, [r7, #4]
 800197c:	6879      	ldr	r1, [r7, #4]
 800197e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001982:	1c9a      	adds	r2, r3, #2
 8001984:	03cb      	lsls	r3, r1, #15
 8001986:	bf49      	itett	mi
 8001988:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800198a:	4b92      	ldrpl	r3, [pc, #584]	; (8001bd4 <RCC_GetClocksFreq+0x27c>)
 800198c:	4990      	ldrmi	r1, [pc, #576]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 800198e:	f003 030f 	andmi.w	r3, r3, #15
 8001992:	bf44      	itt	mi
 8001994:	3301      	addmi	r3, #1
 8001996:	fbb1 f3f3 	udivmi	r3, r1, r3
 800199a:	4353      	muls	r3, r2
 800199c:	6003      	str	r3, [r0, #0]
 800199e:	e000      	b.n	80019a2 <RCC_GetClocksFreq+0x4a>
 80019a0:	2300      	movs	r3, #0
 80019a2:	687a      	ldr	r2, [r7, #4]
 80019a4:	4e8c      	ldr	r6, [pc, #560]	; (8001bd8 <RCC_GetClocksFreq+0x280>)
 80019a6:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001bdc <RCC_GetClocksFreq+0x284>
 80019aa:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80019ae:	5cb4      	ldrb	r4, [r6, r2]
 80019b0:	6802      	ldr	r2, [r0, #0]
 80019b2:	b2e4      	uxtb	r4, r4
 80019b4:	fa22 f104 	lsr.w	r1, r2, r4
 80019b8:	6041      	str	r1, [r0, #4]
 80019ba:	687d      	ldr	r5, [r7, #4]
 80019bc:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80019c0:	5d75      	ldrb	r5, [r6, r5]
 80019c2:	fa21 fe05 	lsr.w	lr, r1, r5
 80019c6:	f8c0 e008 	str.w	lr, [r0, #8]
 80019ca:	687d      	ldr	r5, [r7, #4]
 80019cc:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80019d0:	5d75      	ldrb	r5, [r6, r5]
 80019d2:	b2ed      	uxtb	r5, r5
 80019d4:	40e9      	lsrs	r1, r5
 80019d6:	60c1      	str	r1, [r0, #12]
 80019d8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80019da:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80019de:	f008 060f 	and.w	r6, r8, #15
 80019e2:	f018 0f10 	tst.w	r8, #16
 80019e6:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80019ea:	46e0      	mov	r8, ip
 80019ec:	b2b6      	uxth	r6, r6
 80019ee:	d004      	beq.n	80019fa <RCC_GetClocksFreq+0xa2>
 80019f0:	b11e      	cbz	r6, 80019fa <RCC_GetClocksFreq+0xa2>
 80019f2:	fbb3 f6f6 	udiv	r6, r3, r6
 80019f6:	6106      	str	r6, [r0, #16]
 80019f8:	e000      	b.n	80019fc <RCC_GetClocksFreq+0xa4>
 80019fa:	6102      	str	r2, [r0, #16]
 80019fc:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80019fe:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001a02:	f00c 060f 	and.w	r6, ip, #15
 8001a06:	f01c 0f10 	tst.w	ip, #16
 8001a0a:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001a0e:	b2b6      	uxth	r6, r6
 8001a10:	d004      	beq.n	8001a1c <RCC_GetClocksFreq+0xc4>
 8001a12:	b11e      	cbz	r6, 8001a1c <RCC_GetClocksFreq+0xc4>
 8001a14:	fbb3 f6f6 	udiv	r6, r3, r6
 8001a18:	6146      	str	r6, [r0, #20]
 8001a1a:	e000      	b.n	8001a1e <RCC_GetClocksFreq+0xc6>
 8001a1c:	6142      	str	r2, [r0, #20]
 8001a1e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a20:	06f6      	lsls	r6, r6, #27
 8001a22:	bf5a      	itte	pl
 8001a24:	4e6a      	ldrpl	r6, [pc, #424]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 8001a26:	6186      	strpl	r6, [r0, #24]
 8001a28:	6182      	strmi	r2, [r0, #24]
 8001a2a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a2c:	06b6      	lsls	r6, r6, #26
 8001a2e:	bf5a      	itte	pl
 8001a30:	4e67      	ldrpl	r6, [pc, #412]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 8001a32:	61c6      	strpl	r6, [r0, #28]
 8001a34:	61c2      	strmi	r2, [r0, #28]
 8001a36:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a38:	0676      	lsls	r6, r6, #25
 8001a3a:	bf5a      	itte	pl
 8001a3c:	4e64      	ldrpl	r6, [pc, #400]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 8001a3e:	6206      	strpl	r6, [r0, #32]
 8001a40:	6202      	strmi	r2, [r0, #32]
 8001a42:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a44:	05f6      	lsls	r6, r6, #23
 8001a46:	d506      	bpl.n	8001a56 <RCC_GetClocksFreq+0xfe>
 8001a48:	429a      	cmp	r2, r3
 8001a4a:	d104      	bne.n	8001a56 <RCC_GetClocksFreq+0xfe>
 8001a4c:	42a5      	cmp	r5, r4
 8001a4e:	d102      	bne.n	8001a56 <RCC_GetClocksFreq+0xfe>
 8001a50:	0056      	lsls	r6, r2, #1
 8001a52:	6246      	str	r6, [r0, #36]	; 0x24
 8001a54:	e000      	b.n	8001a58 <RCC_GetClocksFreq+0x100>
 8001a56:	6241      	str	r1, [r0, #36]	; 0x24
 8001a58:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a5a:	04f6      	lsls	r6, r6, #19
 8001a5c:	d506      	bpl.n	8001a6c <RCC_GetClocksFreq+0x114>
 8001a5e:	429a      	cmp	r2, r3
 8001a60:	d104      	bne.n	8001a6c <RCC_GetClocksFreq+0x114>
 8001a62:	42a5      	cmp	r5, r4
 8001a64:	d102      	bne.n	8001a6c <RCC_GetClocksFreq+0x114>
 8001a66:	0056      	lsls	r6, r2, #1
 8001a68:	6286      	str	r6, [r0, #40]	; 0x28
 8001a6a:	e000      	b.n	8001a6e <RCC_GetClocksFreq+0x116>
 8001a6c:	6281      	str	r1, [r0, #40]	; 0x28
 8001a6e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a70:	05b6      	lsls	r6, r6, #22
 8001a72:	d506      	bpl.n	8001a82 <RCC_GetClocksFreq+0x12a>
 8001a74:	429a      	cmp	r2, r3
 8001a76:	d104      	bne.n	8001a82 <RCC_GetClocksFreq+0x12a>
 8001a78:	42a5      	cmp	r5, r4
 8001a7a:	d102      	bne.n	8001a82 <RCC_GetClocksFreq+0x12a>
 8001a7c:	0056      	lsls	r6, r2, #1
 8001a7e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001a80:	e000      	b.n	8001a84 <RCC_GetClocksFreq+0x12c>
 8001a82:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001a84:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a86:	0576      	lsls	r6, r6, #21
 8001a88:	d506      	bpl.n	8001a98 <RCC_GetClocksFreq+0x140>
 8001a8a:	429a      	cmp	r2, r3
 8001a8c:	d104      	bne.n	8001a98 <RCC_GetClocksFreq+0x140>
 8001a8e:	42a5      	cmp	r5, r4
 8001a90:	d102      	bne.n	8001a98 <RCC_GetClocksFreq+0x140>
 8001a92:	0056      	lsls	r6, r2, #1
 8001a94:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001a96:	e000      	b.n	8001a9a <RCC_GetClocksFreq+0x142>
 8001a98:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001a9a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001a9c:	0536      	lsls	r6, r6, #20
 8001a9e:	d506      	bpl.n	8001aae <RCC_GetClocksFreq+0x156>
 8001aa0:	429a      	cmp	r2, r3
 8001aa2:	d104      	bne.n	8001aae <RCC_GetClocksFreq+0x156>
 8001aa4:	42a5      	cmp	r5, r4
 8001aa6:	d102      	bne.n	8001aae <RCC_GetClocksFreq+0x156>
 8001aa8:	0056      	lsls	r6, r2, #1
 8001aaa:	6506      	str	r6, [r0, #80]	; 0x50
 8001aac:	e000      	b.n	8001ab0 <RCC_GetClocksFreq+0x158>
 8001aae:	6501      	str	r1, [r0, #80]	; 0x50
 8001ab0:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ab2:	04b6      	lsls	r6, r6, #18
 8001ab4:	d506      	bpl.n	8001ac4 <RCC_GetClocksFreq+0x16c>
 8001ab6:	429a      	cmp	r2, r3
 8001ab8:	d104      	bne.n	8001ac4 <RCC_GetClocksFreq+0x16c>
 8001aba:	42a5      	cmp	r5, r4
 8001abc:	d102      	bne.n	8001ac4 <RCC_GetClocksFreq+0x16c>
 8001abe:	0056      	lsls	r6, r2, #1
 8001ac0:	6546      	str	r6, [r0, #84]	; 0x54
 8001ac2:	e000      	b.n	8001ac6 <RCC_GetClocksFreq+0x16e>
 8001ac4:	6501      	str	r1, [r0, #80]	; 0x50
 8001ac6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001ac8:	0436      	lsls	r6, r6, #16
 8001aca:	d506      	bpl.n	8001ada <RCC_GetClocksFreq+0x182>
 8001acc:	429a      	cmp	r2, r3
 8001ace:	d104      	bne.n	8001ada <RCC_GetClocksFreq+0x182>
 8001ad0:	42a5      	cmp	r5, r4
 8001ad2:	d102      	bne.n	8001ada <RCC_GetClocksFreq+0x182>
 8001ad4:	0053      	lsls	r3, r2, #1
 8001ad6:	6583      	str	r3, [r0, #88]	; 0x58
 8001ad8:	e000      	b.n	8001adc <RCC_GetClocksFreq+0x184>
 8001ada:	6581      	str	r1, [r0, #88]	; 0x58
 8001adc:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 8001ade:	4b3b      	ldr	r3, [pc, #236]	; (8001bcc <RCC_GetClocksFreq+0x274>)
 8001ae0:	07a4      	lsls	r4, r4, #30
 8001ae2:	d101      	bne.n	8001ae8 <RCC_GetClocksFreq+0x190>
 8001ae4:	6381      	str	r1, [r0, #56]	; 0x38
 8001ae6:	e015      	b.n	8001b14 <RCC_GetClocksFreq+0x1bc>
 8001ae8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001aea:	f001 0103 	and.w	r1, r1, #3
 8001aee:	2901      	cmp	r1, #1
 8001af0:	d101      	bne.n	8001af6 <RCC_GetClocksFreq+0x19e>
 8001af2:	6382      	str	r2, [r0, #56]	; 0x38
 8001af4:	e00e      	b.n	8001b14 <RCC_GetClocksFreq+0x1bc>
 8001af6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001af8:	f001 0103 	and.w	r1, r1, #3
 8001afc:	2902      	cmp	r1, #2
 8001afe:	d102      	bne.n	8001b06 <RCC_GetClocksFreq+0x1ae>
 8001b00:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b04:	e005      	b.n	8001b12 <RCC_GetClocksFreq+0x1ba>
 8001b06:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b08:	f003 0303 	and.w	r3, r3, #3
 8001b0c:	2b03      	cmp	r3, #3
 8001b0e:	d101      	bne.n	8001b14 <RCC_GetClocksFreq+0x1bc>
 8001b10:	4b2f      	ldr	r3, [pc, #188]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 8001b12:	6383      	str	r3, [r0, #56]	; 0x38
 8001b14:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b16:	4b2d      	ldr	r3, [pc, #180]	; (8001bcc <RCC_GetClocksFreq+0x274>)
 8001b18:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001b1c:	d102      	bne.n	8001b24 <RCC_GetClocksFreq+0x1cc>
 8001b1e:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001b22:	e018      	b.n	8001b56 <RCC_GetClocksFreq+0x1fe>
 8001b24:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b26:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b2a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001b2e:	d101      	bne.n	8001b34 <RCC_GetClocksFreq+0x1dc>
 8001b30:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001b32:	e010      	b.n	8001b56 <RCC_GetClocksFreq+0x1fe>
 8001b34:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b36:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 8001b3a:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001b3e:	d102      	bne.n	8001b46 <RCC_GetClocksFreq+0x1ee>
 8001b40:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b44:	e006      	b.n	8001b54 <RCC_GetClocksFreq+0x1fc>
 8001b46:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b48:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001b4c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001b50:	d101      	bne.n	8001b56 <RCC_GetClocksFreq+0x1fe>
 8001b52:	4b1f      	ldr	r3, [pc, #124]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 8001b54:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001b56:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b58:	4b1c      	ldr	r3, [pc, #112]	; (8001bcc <RCC_GetClocksFreq+0x274>)
 8001b5a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001b5e:	d102      	bne.n	8001b66 <RCC_GetClocksFreq+0x20e>
 8001b60:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001b64:	e018      	b.n	8001b98 <RCC_GetClocksFreq+0x240>
 8001b66:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b68:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b6c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001b70:	d101      	bne.n	8001b76 <RCC_GetClocksFreq+0x21e>
 8001b72:	6402      	str	r2, [r0, #64]	; 0x40
 8001b74:	e010      	b.n	8001b98 <RCC_GetClocksFreq+0x240>
 8001b76:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001b78:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001b7c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001b80:	d102      	bne.n	8001b88 <RCC_GetClocksFreq+0x230>
 8001b82:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001b86:	e006      	b.n	8001b96 <RCC_GetClocksFreq+0x23e>
 8001b88:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001b8a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 8001b8e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001b92:	d101      	bne.n	8001b98 <RCC_GetClocksFreq+0x240>
 8001b94:	4b0e      	ldr	r3, [pc, #56]	; (8001bd0 <RCC_GetClocksFreq+0x278>)
 8001b96:	6403      	str	r3, [r0, #64]	; 0x40
 8001b98:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001b9a:	4b0c      	ldr	r3, [pc, #48]	; (8001bcc <RCC_GetClocksFreq+0x274>)
 8001b9c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001ba0:	d102      	bne.n	8001ba8 <RCC_GetClocksFreq+0x250>
 8001ba2:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001ba6:	e023      	b.n	8001bf0 <RCC_GetClocksFreq+0x298>
 8001ba8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001baa:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001bae:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001bb2:	d101      	bne.n	8001bb8 <RCC_GetClocksFreq+0x260>
 8001bb4:	6442      	str	r2, [r0, #68]	; 0x44
 8001bb6:	e01b      	b.n	8001bf0 <RCC_GetClocksFreq+0x298>
 8001bb8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001bba:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 8001bbe:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001bc2:	d10d      	bne.n	8001be0 <RCC_GetClocksFreq+0x288>
 8001bc4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001bc8:	e011      	b.n	8001bee <RCC_GetClocksFreq+0x296>
 8001bca:	bf00      	nop
 8001bcc:	40021000 	.word	0x40021000
 8001bd0:	007a1200 	.word	0x007a1200
 8001bd4:	003d0900 	.word	0x003d0900
 8001bd8:	20000020 	.word	0x20000020
 8001bdc:	20000000 	.word	0x20000000
 8001be0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001be2:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001be6:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001bea:	d101      	bne.n	8001bf0 <RCC_GetClocksFreq+0x298>
 8001bec:	4b13      	ldr	r3, [pc, #76]	; (8001c3c <RCC_GetClocksFreq+0x2e4>)
 8001bee:	6443      	str	r3, [r0, #68]	; 0x44
 8001bf0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001bf2:	4b13      	ldr	r3, [pc, #76]	; (8001c40 <RCC_GetClocksFreq+0x2e8>)
 8001bf4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001bf8:	d103      	bne.n	8001c02 <RCC_GetClocksFreq+0x2aa>
 8001bfa:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001bfe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c02:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c04:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001c08:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001c0c:	d102      	bne.n	8001c14 <RCC_GetClocksFreq+0x2bc>
 8001c0e:	6482      	str	r2, [r0, #72]	; 0x48
 8001c10:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c14:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001c16:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 8001c1a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001c1e:	d102      	bne.n	8001c26 <RCC_GetClocksFreq+0x2ce>
 8001c20:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001c24:	e006      	b.n	8001c34 <RCC_GetClocksFreq+0x2dc>
 8001c26:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001c28:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001c2c:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001c30:	d101      	bne.n	8001c36 <RCC_GetClocksFreq+0x2de>
 8001c32:	4b02      	ldr	r3, [pc, #8]	; (8001c3c <RCC_GetClocksFreq+0x2e4>)
 8001c34:	6483      	str	r3, [r0, #72]	; 0x48
 8001c36:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001c3a:	bf00      	nop
 8001c3c:	007a1200 	.word	0x007a1200
 8001c40:	40021000 	.word	0x40021000

08001c44 <RCC_AHBPeriphClockCmd>:
 8001c44:	bf00      	nop
 8001c46:	bf00      	nop
 8001c48:	4b04      	ldr	r3, [pc, #16]	; (8001c5c <RCC_AHBPeriphClockCmd+0x18>)
 8001c4a:	695a      	ldr	r2, [r3, #20]
 8001c4c:	b109      	cbz	r1, 8001c52 <RCC_AHBPeriphClockCmd+0xe>
 8001c4e:	4310      	orrs	r0, r2
 8001c50:	e001      	b.n	8001c56 <RCC_AHBPeriphClockCmd+0x12>
 8001c52:	ea22 0000 	bic.w	r0, r2, r0
 8001c56:	6158      	str	r0, [r3, #20]
 8001c58:	4770      	bx	lr
 8001c5a:	bf00      	nop
 8001c5c:	40021000 	.word	0x40021000

08001c60 <RCC_APB2PeriphClockCmd>:
 8001c60:	bf00      	nop
 8001c62:	bf00      	nop
 8001c64:	4b04      	ldr	r3, [pc, #16]	; (8001c78 <RCC_APB2PeriphClockCmd+0x18>)
 8001c66:	699a      	ldr	r2, [r3, #24]
 8001c68:	b109      	cbz	r1, 8001c6e <RCC_APB2PeriphClockCmd+0xe>
 8001c6a:	4310      	orrs	r0, r2
 8001c6c:	e001      	b.n	8001c72 <RCC_APB2PeriphClockCmd+0x12>
 8001c6e:	ea22 0000 	bic.w	r0, r2, r0
 8001c72:	6198      	str	r0, [r3, #24]
 8001c74:	4770      	bx	lr
 8001c76:	bf00      	nop
 8001c78:	40021000 	.word	0x40021000

08001c7c <RCC_APB1PeriphClockCmd>:
 8001c7c:	bf00      	nop
 8001c7e:	bf00      	nop
 8001c80:	4b04      	ldr	r3, [pc, #16]	; (8001c94 <RCC_APB1PeriphClockCmd+0x18>)
 8001c82:	69da      	ldr	r2, [r3, #28]
 8001c84:	b109      	cbz	r1, 8001c8a <RCC_APB1PeriphClockCmd+0xe>
 8001c86:	4310      	orrs	r0, r2
 8001c88:	e001      	b.n	8001c8e <RCC_APB1PeriphClockCmd+0x12>
 8001c8a:	ea22 0000 	bic.w	r0, r2, r0
 8001c8e:	61d8      	str	r0, [r3, #28]
 8001c90:	4770      	bx	lr
 8001c92:	bf00      	nop
 8001c94:	40021000 	.word	0x40021000

08001c98 <TIM_TimeBaseInit>:
 8001c98:	bf00      	nop
 8001c9a:	bf00      	nop
 8001c9c:	bf00      	nop
 8001c9e:	4a24      	ldr	r2, [pc, #144]	; (8001d30 <TIM_TimeBaseInit+0x98>)
 8001ca0:	8803      	ldrh	r3, [r0, #0]
 8001ca2:	4290      	cmp	r0, r2
 8001ca4:	b29b      	uxth	r3, r3
 8001ca6:	d012      	beq.n	8001cce <TIM_TimeBaseInit+0x36>
 8001ca8:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001cac:	4290      	cmp	r0, r2
 8001cae:	d00e      	beq.n	8001cce <TIM_TimeBaseInit+0x36>
 8001cb0:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001cb4:	d00b      	beq.n	8001cce <TIM_TimeBaseInit+0x36>
 8001cb6:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001cba:	4290      	cmp	r0, r2
 8001cbc:	d007      	beq.n	8001cce <TIM_TimeBaseInit+0x36>
 8001cbe:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001cc2:	4290      	cmp	r0, r2
 8001cc4:	d003      	beq.n	8001cce <TIM_TimeBaseInit+0x36>
 8001cc6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001cca:	4290      	cmp	r0, r2
 8001ccc:	d103      	bne.n	8001cd6 <TIM_TimeBaseInit+0x3e>
 8001cce:	884a      	ldrh	r2, [r1, #2]
 8001cd0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001cd4:	4313      	orrs	r3, r2
 8001cd6:	4a17      	ldr	r2, [pc, #92]	; (8001d34 <TIM_TimeBaseInit+0x9c>)
 8001cd8:	4290      	cmp	r0, r2
 8001cda:	d008      	beq.n	8001cee <TIM_TimeBaseInit+0x56>
 8001cdc:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001ce0:	4290      	cmp	r0, r2
 8001ce2:	bf1f      	itttt	ne
 8001ce4:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001ce8:	890a      	ldrhne	r2, [r1, #8]
 8001cea:	b29b      	uxthne	r3, r3
 8001cec:	4313      	orrne	r3, r2
 8001cee:	8003      	strh	r3, [r0, #0]
 8001cf0:	684b      	ldr	r3, [r1, #4]
 8001cf2:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001cf4:	880b      	ldrh	r3, [r1, #0]
 8001cf6:	8503      	strh	r3, [r0, #40]	; 0x28
 8001cf8:	4b0d      	ldr	r3, [pc, #52]	; (8001d30 <TIM_TimeBaseInit+0x98>)
 8001cfa:	4298      	cmp	r0, r3
 8001cfc:	d013      	beq.n	8001d26 <TIM_TimeBaseInit+0x8e>
 8001cfe:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d02:	4298      	cmp	r0, r3
 8001d04:	d00f      	beq.n	8001d26 <TIM_TimeBaseInit+0x8e>
 8001d06:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001d0a:	4298      	cmp	r0, r3
 8001d0c:	d00b      	beq.n	8001d26 <TIM_TimeBaseInit+0x8e>
 8001d0e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001d12:	4298      	cmp	r0, r3
 8001d14:	d007      	beq.n	8001d26 <TIM_TimeBaseInit+0x8e>
 8001d16:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001d1a:	4298      	cmp	r0, r3
 8001d1c:	d003      	beq.n	8001d26 <TIM_TimeBaseInit+0x8e>
 8001d1e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001d22:	4298      	cmp	r0, r3
 8001d24:	d101      	bne.n	8001d2a <TIM_TimeBaseInit+0x92>
 8001d26:	894b      	ldrh	r3, [r1, #10]
 8001d28:	8603      	strh	r3, [r0, #48]	; 0x30
 8001d2a:	2301      	movs	r3, #1
 8001d2c:	6143      	str	r3, [r0, #20]
 8001d2e:	4770      	bx	lr
 8001d30:	40012c00 	.word	0x40012c00
 8001d34:	40001000 	.word	0x40001000

08001d38 <TIM_Cmd>:
 8001d38:	bf00      	nop
 8001d3a:	bf00      	nop
 8001d3c:	8803      	ldrh	r3, [r0, #0]
 8001d3e:	b119      	cbz	r1, 8001d48 <TIM_Cmd+0x10>
 8001d40:	b29b      	uxth	r3, r3
 8001d42:	f043 0301 	orr.w	r3, r3, #1
 8001d46:	e003      	b.n	8001d50 <TIM_Cmd+0x18>
 8001d48:	f023 0301 	bic.w	r3, r3, #1
 8001d4c:	041b      	lsls	r3, r3, #16
 8001d4e:	0c1b      	lsrs	r3, r3, #16
 8001d50:	8003      	strh	r3, [r0, #0]
 8001d52:	4770      	bx	lr

08001d54 <TIM_OC1Init>:
 8001d54:	b570      	push	{r4, r5, r6, lr}
 8001d56:	bf00      	nop
 8001d58:	bf00      	nop
 8001d5a:	bf00      	nop
 8001d5c:	bf00      	nop
 8001d5e:	6a03      	ldr	r3, [r0, #32]
 8001d60:	680d      	ldr	r5, [r1, #0]
 8001d62:	f023 0301 	bic.w	r3, r3, #1
 8001d66:	6203      	str	r3, [r0, #32]
 8001d68:	6a03      	ldr	r3, [r0, #32]
 8001d6a:	6844      	ldr	r4, [r0, #4]
 8001d6c:	6982      	ldr	r2, [r0, #24]
 8001d6e:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001d72:	f022 0273 	bic.w	r2, r2, #115	; 0x73
 8001d76:	4315      	orrs	r5, r2
 8001d78:	898a      	ldrh	r2, [r1, #12]
 8001d7a:	f023 0302 	bic.w	r3, r3, #2
 8001d7e:	4313      	orrs	r3, r2
 8001d80:	888a      	ldrh	r2, [r1, #4]
 8001d82:	4313      	orrs	r3, r2
 8001d84:	4a15      	ldr	r2, [pc, #84]	; (8001ddc <TIM_OC1Init+0x88>)
 8001d86:	4290      	cmp	r0, r2
 8001d88:	d00f      	beq.n	8001daa <TIM_OC1Init+0x56>
 8001d8a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001d8e:	4290      	cmp	r0, r2
 8001d90:	d00b      	beq.n	8001daa <TIM_OC1Init+0x56>
 8001d92:	f502 6240 	add.w	r2, r2, #3072	; 0xc00
 8001d96:	4290      	cmp	r0, r2
 8001d98:	d007      	beq.n	8001daa <TIM_OC1Init+0x56>
 8001d9a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001d9e:	4290      	cmp	r0, r2
 8001da0:	d003      	beq.n	8001daa <TIM_OC1Init+0x56>
 8001da2:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001da6:	4290      	cmp	r0, r2
 8001da8:	d111      	bne.n	8001dce <TIM_OC1Init+0x7a>
 8001daa:	bf00      	nop
 8001dac:	bf00      	nop
 8001dae:	bf00      	nop
 8001db0:	bf00      	nop
 8001db2:	89ca      	ldrh	r2, [r1, #14]
 8001db4:	88ce      	ldrh	r6, [r1, #6]
 8001db6:	f023 0308 	bic.w	r3, r3, #8
 8001dba:	4313      	orrs	r3, r2
 8001dbc:	8a0a      	ldrh	r2, [r1, #16]
 8001dbe:	f424 7440 	bic.w	r4, r4, #768	; 0x300
 8001dc2:	4314      	orrs	r4, r2
 8001dc4:	8a4a      	ldrh	r2, [r1, #18]
 8001dc6:	f023 0304 	bic.w	r3, r3, #4
 8001dca:	4333      	orrs	r3, r6
 8001dcc:	4314      	orrs	r4, r2
 8001dce:	688a      	ldr	r2, [r1, #8]
 8001dd0:	6044      	str	r4, [r0, #4]
 8001dd2:	6185      	str	r5, [r0, #24]
 8001dd4:	6342      	str	r2, [r0, #52]	; 0x34
 8001dd6:	6203      	str	r3, [r0, #32]
 8001dd8:	bd70      	pop	{r4, r5, r6, pc}
 8001dda:	bf00      	nop
 8001ddc:	40012c00 	.word	0x40012c00

08001de0 <TIM_OC2Init>:
 8001de0:	b570      	push	{r4, r5, r6, lr}
 8001de2:	bf00      	nop
 8001de4:	bf00      	nop
 8001de6:	bf00      	nop
 8001de8:	bf00      	nop
 8001dea:	6a03      	ldr	r3, [r0, #32]
 8001dec:	680d      	ldr	r5, [r1, #0]
 8001dee:	898e      	ldrh	r6, [r1, #12]
 8001df0:	f023 0310 	bic.w	r3, r3, #16
 8001df4:	6203      	str	r3, [r0, #32]
 8001df6:	6a03      	ldr	r3, [r0, #32]
 8001df8:	6844      	ldr	r4, [r0, #4]
 8001dfa:	6982      	ldr	r2, [r0, #24]
 8001dfc:	f022 7280 	bic.w	r2, r2, #16777216	; 0x1000000
 8001e00:	f422 42e6 	bic.w	r2, r2, #29440	; 0x7300
 8001e04:	ea42 2505 	orr.w	r5, r2, r5, lsl #8
 8001e08:	f023 0220 	bic.w	r2, r3, #32
 8001e0c:	888b      	ldrh	r3, [r1, #4]
 8001e0e:	4333      	orrs	r3, r6
 8001e10:	ea42 1303 	orr.w	r3, r2, r3, lsl #4
 8001e14:	4a10      	ldr	r2, [pc, #64]	; (8001e58 <TIM_OC2Init+0x78>)
 8001e16:	4290      	cmp	r0, r2
 8001e18:	d003      	beq.n	8001e22 <TIM_OC2Init+0x42>
 8001e1a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001e1e:	4290      	cmp	r0, r2
 8001e20:	d114      	bne.n	8001e4c <TIM_OC2Init+0x6c>
 8001e22:	bf00      	nop
 8001e24:	bf00      	nop
 8001e26:	bf00      	nop
 8001e28:	bf00      	nop
 8001e2a:	89ca      	ldrh	r2, [r1, #14]
 8001e2c:	8a0e      	ldrh	r6, [r1, #16]
 8001e2e:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8001e32:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001e36:	88ca      	ldrh	r2, [r1, #6]
 8001e38:	f023 0340 	bic.w	r3, r3, #64	; 0x40
 8001e3c:	ea43 1302 	orr.w	r3, r3, r2, lsl #4
 8001e40:	8a4a      	ldrh	r2, [r1, #18]
 8001e42:	f424 6440 	bic.w	r4, r4, #3072	; 0xc00
 8001e46:	4332      	orrs	r2, r6
 8001e48:	ea44 0482 	orr.w	r4, r4, r2, lsl #2
 8001e4c:	688a      	ldr	r2, [r1, #8]
 8001e4e:	6044      	str	r4, [r0, #4]
 8001e50:	6185      	str	r5, [r0, #24]
 8001e52:	6382      	str	r2, [r0, #56]	; 0x38
 8001e54:	6203      	str	r3, [r0, #32]
 8001e56:	bd70      	pop	{r4, r5, r6, pc}
 8001e58:	40012c00 	.word	0x40012c00

08001e5c <TIM_CtrlPWMOutputs>:
 8001e5c:	bf00      	nop
 8001e5e:	bf00      	nop
 8001e60:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001e62:	b111      	cbz	r1, 8001e6a <TIM_CtrlPWMOutputs+0xe>
 8001e64:	f443 4300 	orr.w	r3, r3, #32768	; 0x8000
 8001e68:	e001      	b.n	8001e6e <TIM_CtrlPWMOutputs+0x12>
 8001e6a:	f3c3 030e 	ubfx	r3, r3, #0, #15
 8001e6e:	6443      	str	r3, [r0, #68]	; 0x44
 8001e70:	4770      	bx	lr

08001e72 <TIM_ClearITPendingBit>:
 8001e72:	bf00      	nop
 8001e74:	43c9      	mvns	r1, r1
 8001e76:	b289      	uxth	r1, r1
 8001e78:	6101      	str	r1, [r0, #16]
 8001e7a:	4770      	bx	lr

08001e7c <USART_Init>:
 8001e7c:	b530      	push	{r4, r5, lr}
 8001e7e:	4604      	mov	r4, r0
 8001e80:	b099      	sub	sp, #100	; 0x64
 8001e82:	460d      	mov	r5, r1
 8001e84:	bf00      	nop
 8001e86:	bf00      	nop
 8001e88:	bf00      	nop
 8001e8a:	bf00      	nop
 8001e8c:	bf00      	nop
 8001e8e:	bf00      	nop
 8001e90:	bf00      	nop
 8001e92:	6803      	ldr	r3, [r0, #0]
 8001e94:	f023 0301 	bic.w	r3, r3, #1
 8001e98:	6003      	str	r3, [r0, #0]
 8001e9a:	6843      	ldr	r3, [r0, #4]
 8001e9c:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001ea0:	688b      	ldr	r3, [r1, #8]
 8001ea2:	68c9      	ldr	r1, [r1, #12]
 8001ea4:	4313      	orrs	r3, r2
 8001ea6:	6043      	str	r3, [r0, #4]
 8001ea8:	686a      	ldr	r2, [r5, #4]
 8001eaa:	6803      	ldr	r3, [r0, #0]
 8001eac:	4311      	orrs	r1, r2
 8001eae:	692a      	ldr	r2, [r5, #16]
 8001eb0:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001eb4:	430a      	orrs	r2, r1
 8001eb6:	f023 030c 	bic.w	r3, r3, #12
 8001eba:	4313      	orrs	r3, r2
 8001ebc:	6003      	str	r3, [r0, #0]
 8001ebe:	6883      	ldr	r3, [r0, #8]
 8001ec0:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001ec4:	696b      	ldr	r3, [r5, #20]
 8001ec6:	4313      	orrs	r3, r2
 8001ec8:	6083      	str	r3, [r0, #8]
 8001eca:	a801      	add	r0, sp, #4
 8001ecc:	f7ff fd44 	bl	8001958 <RCC_GetClocksFreq>
 8001ed0:	4b17      	ldr	r3, [pc, #92]	; (8001f30 <USART_Init+0xb4>)
 8001ed2:	429c      	cmp	r4, r3
 8001ed4:	d101      	bne.n	8001eda <USART_Init+0x5e>
 8001ed6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001ed8:	e00e      	b.n	8001ef8 <USART_Init+0x7c>
 8001eda:	4b16      	ldr	r3, [pc, #88]	; (8001f34 <USART_Init+0xb8>)
 8001edc:	429c      	cmp	r4, r3
 8001ede:	d101      	bne.n	8001ee4 <USART_Init+0x68>
 8001ee0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001ee2:	e009      	b.n	8001ef8 <USART_Init+0x7c>
 8001ee4:	4b14      	ldr	r3, [pc, #80]	; (8001f38 <USART_Init+0xbc>)
 8001ee6:	429c      	cmp	r4, r3
 8001ee8:	d101      	bne.n	8001eee <USART_Init+0x72>
 8001eea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001eec:	e004      	b.n	8001ef8 <USART_Init+0x7c>
 8001eee:	4b13      	ldr	r3, [pc, #76]	; (8001f3c <USART_Init+0xc0>)
 8001ef0:	429c      	cmp	r4, r3
 8001ef2:	bf0c      	ite	eq
 8001ef4:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001ef6:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001ef8:	6822      	ldr	r2, [r4, #0]
 8001efa:	6829      	ldr	r1, [r5, #0]
 8001efc:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001f00:	bf18      	it	ne
 8001f02:	005b      	lslne	r3, r3, #1
 8001f04:	fbb3 f2f1 	udiv	r2, r3, r1
 8001f08:	fb01 3312 	mls	r3, r1, r2, r3
 8001f0c:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001f10:	6823      	ldr	r3, [r4, #0]
 8001f12:	bf28      	it	cs
 8001f14:	3201      	addcs	r2, #1
 8001f16:	041b      	lsls	r3, r3, #16
 8001f18:	bf41      	itttt	mi
 8001f1a:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001f1e:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001f22:	4013      	andmi	r3, r2
 8001f24:	ea41 0203 	orrmi.w	r2, r1, r3
 8001f28:	b292      	uxth	r2, r2
 8001f2a:	81a2      	strh	r2, [r4, #12]
 8001f2c:	b019      	add	sp, #100	; 0x64
 8001f2e:	bd30      	pop	{r4, r5, pc}
 8001f30:	40013800 	.word	0x40013800
 8001f34:	40004400 	.word	0x40004400
 8001f38:	40004800 	.word	0x40004800
 8001f3c:	40004c00 	.word	0x40004c00

08001f40 <USART_Cmd>:
 8001f40:	bf00      	nop
 8001f42:	bf00      	nop
 8001f44:	6803      	ldr	r3, [r0, #0]
 8001f46:	b111      	cbz	r1, 8001f4e <USART_Cmd+0xe>
 8001f48:	f043 0301 	orr.w	r3, r3, #1
 8001f4c:	e001      	b.n	8001f52 <USART_Cmd+0x12>
 8001f4e:	f023 0301 	bic.w	r3, r3, #1
 8001f52:	6003      	str	r3, [r0, #0]
 8001f54:	4770      	bx	lr

08001f56 <USART_ReceiveData>:
 8001f56:	bf00      	nop
 8001f58:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001f5a:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001f5e:	4770      	bx	lr

08001f60 <USART_ITConfig>:
 8001f60:	b510      	push	{r4, lr}
 8001f62:	bf00      	nop
 8001f64:	bf00      	nop
 8001f66:	bf00      	nop
 8001f68:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001f6c:	2301      	movs	r3, #1
 8001f6e:	b2c9      	uxtb	r1, r1
 8001f70:	2c02      	cmp	r4, #2
 8001f72:	fa03 f301 	lsl.w	r3, r3, r1
 8001f76:	d101      	bne.n	8001f7c <USART_ITConfig+0x1c>
 8001f78:	3004      	adds	r0, #4
 8001f7a:	e002      	b.n	8001f82 <USART_ITConfig+0x22>
 8001f7c:	2c03      	cmp	r4, #3
 8001f7e:	bf08      	it	eq
 8001f80:	3008      	addeq	r0, #8
 8001f82:	b112      	cbz	r2, 8001f8a <USART_ITConfig+0x2a>
 8001f84:	6802      	ldr	r2, [r0, #0]
 8001f86:	4313      	orrs	r3, r2
 8001f88:	e002      	b.n	8001f90 <USART_ITConfig+0x30>
 8001f8a:	6802      	ldr	r2, [r0, #0]
 8001f8c:	ea22 0303 	bic.w	r3, r2, r3
 8001f90:	6003      	str	r3, [r0, #0]
 8001f92:	bd10      	pop	{r4, pc}

08001f94 <USART_GetITStatus>:
 8001f94:	b510      	push	{r4, lr}
 8001f96:	bf00      	nop
 8001f98:	bf00      	nop
 8001f9a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001f9e:	b2cc      	uxtb	r4, r1
 8001fa0:	2301      	movs	r3, #1
 8001fa2:	2a01      	cmp	r2, #1
 8001fa4:	fa03 f304 	lsl.w	r3, r3, r4
 8001fa8:	d101      	bne.n	8001fae <USART_GetITStatus+0x1a>
 8001faa:	6802      	ldr	r2, [r0, #0]
 8001fac:	e003      	b.n	8001fb6 <USART_GetITStatus+0x22>
 8001fae:	2a02      	cmp	r2, #2
 8001fb0:	bf0c      	ite	eq
 8001fb2:	6842      	ldreq	r2, [r0, #4]
 8001fb4:	6882      	ldrne	r2, [r0, #8]
 8001fb6:	4013      	ands	r3, r2
 8001fb8:	69c2      	ldr	r2, [r0, #28]
 8001fba:	b13b      	cbz	r3, 8001fcc <USART_GetITStatus+0x38>
 8001fbc:	0c09      	lsrs	r1, r1, #16
 8001fbe:	2301      	movs	r3, #1
 8001fc0:	408b      	lsls	r3, r1
 8001fc2:	4213      	tst	r3, r2
 8001fc4:	bf14      	ite	ne
 8001fc6:	2001      	movne	r0, #1
 8001fc8:	2000      	moveq	r0, #0
 8001fca:	bd10      	pop	{r4, pc}
 8001fcc:	4618      	mov	r0, r3
 8001fce:	bd10      	pop	{r4, pc}

08001fd0 <USART_ClearITPendingBit>:
 8001fd0:	bf00      	nop
 8001fd2:	bf00      	nop
 8001fd4:	2301      	movs	r3, #1
 8001fd6:	0c09      	lsrs	r1, r1, #16
 8001fd8:	408b      	lsls	r3, r1
 8001fda:	6203      	str	r3, [r0, #32]
 8001fdc:	4770      	bx	lr
	...

08001fe0 <SystemInit>:
 8001fe0:	4a39      	ldr	r2, [pc, #228]	; (80020c8 <SystemInit+0xe8>)
 8001fe2:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001fe6:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001fea:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001fee:	4b37      	ldr	r3, [pc, #220]	; (80020cc <SystemInit+0xec>)
 8001ff0:	681a      	ldr	r2, [r3, #0]
 8001ff2:	f042 0201 	orr.w	r2, r2, #1
 8001ff6:	601a      	str	r2, [r3, #0]
 8001ff8:	6859      	ldr	r1, [r3, #4]
 8001ffa:	4a35      	ldr	r2, [pc, #212]	; (80020d0 <SystemInit+0xf0>)
 8001ffc:	400a      	ands	r2, r1
 8001ffe:	605a      	str	r2, [r3, #4]
 8002000:	681a      	ldr	r2, [r3, #0]
 8002002:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8002006:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800200a:	601a      	str	r2, [r3, #0]
 800200c:	681a      	ldr	r2, [r3, #0]
 800200e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002012:	601a      	str	r2, [r3, #0]
 8002014:	685a      	ldr	r2, [r3, #4]
 8002016:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800201a:	605a      	str	r2, [r3, #4]
 800201c:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 800201e:	f022 020f 	bic.w	r2, r2, #15
 8002022:	62da      	str	r2, [r3, #44]	; 0x2c
 8002024:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8002026:	4a2b      	ldr	r2, [pc, #172]	; (80020d4 <SystemInit+0xf4>)
 8002028:	b082      	sub	sp, #8
 800202a:	400a      	ands	r2, r1
 800202c:	631a      	str	r2, [r3, #48]	; 0x30
 800202e:	2200      	movs	r2, #0
 8002030:	609a      	str	r2, [r3, #8]
 8002032:	9200      	str	r2, [sp, #0]
 8002034:	9201      	str	r2, [sp, #4]
 8002036:	681a      	ldr	r2, [r3, #0]
 8002038:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 800203c:	601a      	str	r2, [r3, #0]
 800203e:	681a      	ldr	r2, [r3, #0]
 8002040:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8002044:	9201      	str	r2, [sp, #4]
 8002046:	9a00      	ldr	r2, [sp, #0]
 8002048:	3201      	adds	r2, #1
 800204a:	9200      	str	r2, [sp, #0]
 800204c:	9a01      	ldr	r2, [sp, #4]
 800204e:	b91a      	cbnz	r2, 8002058 <SystemInit+0x78>
 8002050:	9a00      	ldr	r2, [sp, #0]
 8002052:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8002056:	d1f2      	bne.n	800203e <SystemInit+0x5e>
 8002058:	681a      	ldr	r2, [r3, #0]
 800205a:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 800205e:	bf18      	it	ne
 8002060:	2201      	movne	r2, #1
 8002062:	9201      	str	r2, [sp, #4]
 8002064:	9a01      	ldr	r2, [sp, #4]
 8002066:	2a01      	cmp	r2, #1
 8002068:	d005      	beq.n	8002076 <SystemInit+0x96>
 800206a:	4b17      	ldr	r3, [pc, #92]	; (80020c8 <SystemInit+0xe8>)
 800206c:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8002070:	609a      	str	r2, [r3, #8]
 8002072:	b002      	add	sp, #8
 8002074:	4770      	bx	lr
 8002076:	4a18      	ldr	r2, [pc, #96]	; (80020d8 <SystemInit+0xf8>)
 8002078:	2112      	movs	r1, #18
 800207a:	6011      	str	r1, [r2, #0]
 800207c:	685a      	ldr	r2, [r3, #4]
 800207e:	605a      	str	r2, [r3, #4]
 8002080:	685a      	ldr	r2, [r3, #4]
 8002082:	605a      	str	r2, [r3, #4]
 8002084:	685a      	ldr	r2, [r3, #4]
 8002086:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800208a:	605a      	str	r2, [r3, #4]
 800208c:	685a      	ldr	r2, [r3, #4]
 800208e:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8002092:	605a      	str	r2, [r3, #4]
 8002094:	685a      	ldr	r2, [r3, #4]
 8002096:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800209a:	605a      	str	r2, [r3, #4]
 800209c:	681a      	ldr	r2, [r3, #0]
 800209e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80020a2:	601a      	str	r2, [r3, #0]
 80020a4:	6819      	ldr	r1, [r3, #0]
 80020a6:	4a09      	ldr	r2, [pc, #36]	; (80020cc <SystemInit+0xec>)
 80020a8:	0189      	lsls	r1, r1, #6
 80020aa:	d5fb      	bpl.n	80020a4 <SystemInit+0xc4>
 80020ac:	6851      	ldr	r1, [r2, #4]
 80020ae:	f021 0103 	bic.w	r1, r1, #3
 80020b2:	6051      	str	r1, [r2, #4]
 80020b4:	6851      	ldr	r1, [r2, #4]
 80020b6:	f041 0102 	orr.w	r1, r1, #2
 80020ba:	6051      	str	r1, [r2, #4]
 80020bc:	685a      	ldr	r2, [r3, #4]
 80020be:	f002 020c 	and.w	r2, r2, #12
 80020c2:	2a08      	cmp	r2, #8
 80020c4:	d1fa      	bne.n	80020bc <SystemInit+0xdc>
 80020c6:	e7d0      	b.n	800206a <SystemInit+0x8a>
 80020c8:	e000ed00 	.word	0xe000ed00
 80020cc:	40021000 	.word	0x40021000
 80020d0:	f87fc00c 	.word	0xf87fc00c
 80020d4:	ff00fccc 	.word	0xff00fccc
 80020d8:	40022000 	.word	0x40022000

080020dc <sys_tick_init>:
 80020dc:	4b06      	ldr	r3, [pc, #24]	; (80020f8 <sys_tick_init+0x1c>)
 80020de:	f643 2298 	movw	r2, #15000	; 0x3a98
 80020e2:	605a      	str	r2, [r3, #4]
 80020e4:	4a05      	ldr	r2, [pc, #20]	; (80020fc <sys_tick_init+0x20>)
 80020e6:	21f0      	movs	r1, #240	; 0xf0
 80020e8:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 80020ec:	2200      	movs	r2, #0
 80020ee:	609a      	str	r2, [r3, #8]
 80020f0:	2207      	movs	r2, #7
 80020f2:	601a      	str	r2, [r3, #0]
 80020f4:	4770      	bx	lr
 80020f6:	bf00      	nop
 80020f8:	e000e010 	.word	0xe000e010
 80020fc:	e000ed00 	.word	0xe000ed00

08002100 <sleep>:
 8002100:	bf30      	wfi
 8002102:	4770      	bx	lr

08002104 <core_yield>:
 8002104:	bf00      	nop
 8002106:	4770      	bx	lr

08002108 <sytem_clock_init>:
 8002108:	f7ff bf6a 	b.w	8001fe0 <SystemInit>

0800210c <NVIC_Init>:
 800210c:	b510      	push	{r4, lr}
 800210e:	bf00      	nop
 8002110:	bf00      	nop
 8002112:	bf00      	nop
 8002114:	78c2      	ldrb	r2, [r0, #3]
 8002116:	7803      	ldrb	r3, [r0, #0]
 8002118:	b312      	cbz	r2, 8002160 <NVIC_Init+0x54>
 800211a:	4a17      	ldr	r2, [pc, #92]	; (8002178 <NVIC_Init+0x6c>)
 800211c:	68d1      	ldr	r1, [r2, #12]
 800211e:	7842      	ldrb	r2, [r0, #1]
 8002120:	43c9      	mvns	r1, r1
 8002122:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8002126:	f1c1 0404 	rsb	r4, r1, #4
 800212a:	b2e4      	uxtb	r4, r4
 800212c:	40a2      	lsls	r2, r4
 800212e:	b2d4      	uxtb	r4, r2
 8002130:	220f      	movs	r2, #15
 8002132:	410a      	asrs	r2, r1
 8002134:	7881      	ldrb	r1, [r0, #2]
 8002136:	400a      	ands	r2, r1
 8002138:	4322      	orrs	r2, r4
 800213a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800213e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8002142:	0112      	lsls	r2, r2, #4
 8002144:	b2d2      	uxtb	r2, r2
 8002146:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800214a:	7803      	ldrb	r3, [r0, #0]
 800214c:	2201      	movs	r2, #1
 800214e:	0959      	lsrs	r1, r3, #5
 8002150:	f003 031f 	and.w	r3, r3, #31
 8002154:	fa02 f303 	lsl.w	r3, r2, r3
 8002158:	4a08      	ldr	r2, [pc, #32]	; (800217c <NVIC_Init+0x70>)
 800215a:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 800215e:	bd10      	pop	{r4, pc}
 8002160:	095a      	lsrs	r2, r3, #5
 8002162:	2101      	movs	r1, #1
 8002164:	f003 031f 	and.w	r3, r3, #31
 8002168:	4099      	lsls	r1, r3
 800216a:	f102 0320 	add.w	r3, r2, #32
 800216e:	4a03      	ldr	r2, [pc, #12]	; (800217c <NVIC_Init+0x70>)
 8002170:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8002174:	bd10      	pop	{r4, pc}
 8002176:	bf00      	nop
 8002178:	e000ed00 	.word	0xe000ed00
 800217c:	e000e100 	.word	0xe000e100

08002180 <EXTI_Init>:
 8002180:	b570      	push	{r4, r5, r6, lr}
 8002182:	bf00      	nop
 8002184:	bf00      	nop
 8002186:	bf00      	nop
 8002188:	bf00      	nop
 800218a:	7982      	ldrb	r2, [r0, #6]
 800218c:	6803      	ldr	r3, [r0, #0]
 800218e:	7904      	ldrb	r4, [r0, #4]
 8002190:	2a00      	cmp	r2, #0
 8002192:	d064      	beq.n	800225e <EXTI_Init+0xde>
 8002194:	f023 011f 	bic.w	r1, r3, #31
 8002198:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 800219c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80021a0:	f003 021f 	and.w	r2, r3, #31
 80021a4:	680d      	ldr	r5, [r1, #0]
 80021a6:	2301      	movs	r3, #1
 80021a8:	fa03 f202 	lsl.w	r2, r3, r2
 80021ac:	ea25 0202 	bic.w	r2, r5, r2
 80021b0:	600a      	str	r2, [r1, #0]
 80021b2:	6802      	ldr	r2, [r0, #0]
 80021b4:	4d32      	ldr	r5, [pc, #200]	; (8002280 <EXTI_Init+0x100>)
 80021b6:	f022 061f 	bic.w	r6, r2, #31
 80021ba:	f002 021f 	and.w	r2, r2, #31
 80021be:	5971      	ldr	r1, [r6, r5]
 80021c0:	fa03 f202 	lsl.w	r2, r3, r2
 80021c4:	ea21 0202 	bic.w	r2, r1, r2
 80021c8:	5172      	str	r2, [r6, r5]
 80021ca:	6801      	ldr	r1, [r0, #0]
 80021cc:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80021d0:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80021d4:	f021 041f 	bic.w	r4, r1, #31
 80021d8:	f001 011f 	and.w	r1, r1, #31
 80021dc:	5915      	ldr	r5, [r2, r4]
 80021de:	fa03 f101 	lsl.w	r1, r3, r1
 80021e2:	4329      	orrs	r1, r5
 80021e4:	5111      	str	r1, [r2, r4]
 80021e6:	6802      	ldr	r2, [r0, #0]
 80021e8:	4d26      	ldr	r5, [pc, #152]	; (8002284 <EXTI_Init+0x104>)
 80021ea:	f022 041f 	bic.w	r4, r2, #31
 80021ee:	f002 021f 	and.w	r2, r2, #31
 80021f2:	5961      	ldr	r1, [r4, r5]
 80021f4:	fa03 f202 	lsl.w	r2, r3, r2
 80021f8:	ea21 0202 	bic.w	r2, r1, r2
 80021fc:	5162      	str	r2, [r4, r5]
 80021fe:	6802      	ldr	r2, [r0, #0]
 8002200:	4c21      	ldr	r4, [pc, #132]	; (8002288 <EXTI_Init+0x108>)
 8002202:	f022 061f 	bic.w	r6, r2, #31
 8002206:	f002 021f 	and.w	r2, r2, #31
 800220a:	5931      	ldr	r1, [r6, r4]
 800220c:	fa03 f202 	lsl.w	r2, r3, r2
 8002210:	ea21 0202 	bic.w	r2, r1, r2
 8002214:	7941      	ldrb	r1, [r0, #5]
 8002216:	5132      	str	r2, [r6, r4]
 8002218:	2910      	cmp	r1, #16
 800221a:	6802      	ldr	r2, [r0, #0]
 800221c:	d112      	bne.n	8002244 <EXTI_Init+0xc4>
 800221e:	f022 011f 	bic.w	r1, r2, #31
 8002222:	f002 021f 	and.w	r2, r2, #31
 8002226:	594e      	ldr	r6, [r1, r5]
 8002228:	fa03 f202 	lsl.w	r2, r3, r2
 800222c:	4332      	orrs	r2, r6
 800222e:	514a      	str	r2, [r1, r5]
 8002230:	6802      	ldr	r2, [r0, #0]
 8002232:	f022 011f 	bic.w	r1, r2, #31
 8002236:	f002 021f 	and.w	r2, r2, #31
 800223a:	5908      	ldr	r0, [r1, r4]
 800223c:	4093      	lsls	r3, r2
 800223e:	4303      	orrs	r3, r0
 8002240:	510b      	str	r3, [r1, r4]
 8002242:	bd70      	pop	{r4, r5, r6, pc}
 8002244:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8002248:	f022 001f 	bic.w	r0, r2, #31
 800224c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8002250:	f002 021f 	and.w	r2, r2, #31
 8002254:	580c      	ldr	r4, [r1, r0]
 8002256:	4093      	lsls	r3, r2
 8002258:	4323      	orrs	r3, r4
 800225a:	500b      	str	r3, [r1, r0]
 800225c:	bd70      	pop	{r4, r5, r6, pc}
 800225e:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8002262:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8002266:	f023 041f 	bic.w	r4, r3, #31
 800226a:	2001      	movs	r0, #1
 800226c:	5911      	ldr	r1, [r2, r4]
 800226e:	f003 031f 	and.w	r3, r3, #31
 8002272:	fa00 f303 	lsl.w	r3, r0, r3
 8002276:	ea21 0303 	bic.w	r3, r1, r3
 800227a:	5113      	str	r3, [r2, r4]
 800227c:	bd70      	pop	{r4, r5, r6, pc}
 800227e:	bf00      	nop
 8002280:	40010404 	.word	0x40010404
 8002284:	40010408 	.word	0x40010408
 8002288:	4001040c 	.word	0x4001040c

0800228c <EXTI_ClearITPendingBit>:
 800228c:	f020 011f 	bic.w	r1, r0, #31
 8002290:	2301      	movs	r3, #1
 8002292:	f000 001f 	and.w	r0, r0, #31
 8002296:	4a02      	ldr	r2, [pc, #8]	; (80022a0 <EXTI_ClearITPendingBit+0x14>)
 8002298:	4083      	lsls	r3, r0
 800229a:	508b      	str	r3, [r1, r2]
 800229c:	4770      	bx	lr
 800229e:	bf00      	nop
 80022a0:	40010414 	.word	0x40010414

080022a4 <GPIO_Init>:
 80022a4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022a6:	bf00      	nop
 80022a8:	bf00      	nop
 80022aa:	bf00      	nop
 80022ac:	bf00      	nop
 80022ae:	2300      	movs	r3, #0
 80022b0:	680e      	ldr	r6, [r1, #0]
 80022b2:	461c      	mov	r4, r3
 80022b4:	2501      	movs	r5, #1
 80022b6:	40a5      	lsls	r5, r4
 80022b8:	ea05 0e06 	and.w	lr, r5, r6
 80022bc:	45ae      	cmp	lr, r5
 80022be:	d12d      	bne.n	800231c <GPIO_Init+0x78>
 80022c0:	790f      	ldrb	r7, [r1, #4]
 80022c2:	1e7a      	subs	r2, r7, #1
 80022c4:	2a01      	cmp	r2, #1
 80022c6:	d817      	bhi.n	80022f8 <GPIO_Init+0x54>
 80022c8:	bf00      	nop
 80022ca:	2203      	movs	r2, #3
 80022cc:	6885      	ldr	r5, [r0, #8]
 80022ce:	409a      	lsls	r2, r3
 80022d0:	ea25 0202 	bic.w	r2, r5, r2
 80022d4:	6082      	str	r2, [r0, #8]
 80022d6:	794d      	ldrb	r5, [r1, #5]
 80022d8:	6882      	ldr	r2, [r0, #8]
 80022da:	409d      	lsls	r5, r3
 80022dc:	4315      	orrs	r5, r2
 80022de:	6085      	str	r5, [r0, #8]
 80022e0:	bf00      	nop
 80022e2:	8882      	ldrh	r2, [r0, #4]
 80022e4:	b292      	uxth	r2, r2
 80022e6:	ea22 020e 	bic.w	r2, r2, lr
 80022ea:	8082      	strh	r2, [r0, #4]
 80022ec:	798a      	ldrb	r2, [r1, #6]
 80022ee:	8885      	ldrh	r5, [r0, #4]
 80022f0:	40a2      	lsls	r2, r4
 80022f2:	432a      	orrs	r2, r5
 80022f4:	b292      	uxth	r2, r2
 80022f6:	8082      	strh	r2, [r0, #4]
 80022f8:	2203      	movs	r2, #3
 80022fa:	6805      	ldr	r5, [r0, #0]
 80022fc:	409a      	lsls	r2, r3
 80022fe:	43d2      	mvns	r2, r2
 8002300:	4015      	ands	r5, r2
 8002302:	6005      	str	r5, [r0, #0]
 8002304:	6805      	ldr	r5, [r0, #0]
 8002306:	409f      	lsls	r7, r3
 8002308:	432f      	orrs	r7, r5
 800230a:	6007      	str	r7, [r0, #0]
 800230c:	68c7      	ldr	r7, [r0, #12]
 800230e:	4017      	ands	r7, r2
 8002310:	79ca      	ldrb	r2, [r1, #7]
 8002312:	fa02 f503 	lsl.w	r5, r2, r3
 8002316:	ea47 0205 	orr.w	r2, r7, r5
 800231a:	60c2      	str	r2, [r0, #12]
 800231c:	3401      	adds	r4, #1
 800231e:	2c10      	cmp	r4, #16
 8002320:	f103 0302 	add.w	r3, r3, #2
 8002324:	d1c6      	bne.n	80022b4 <GPIO_Init+0x10>
 8002326:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002328 <GPIO_SetBits>:
 8002328:	bf00      	nop
 800232a:	bf00      	nop
 800232c:	6181      	str	r1, [r0, #24]
 800232e:	4770      	bx	lr

08002330 <GPIO_PinAFConfig>:
 8002330:	b510      	push	{r4, lr}
 8002332:	bf00      	nop
 8002334:	bf00      	nop
 8002336:	bf00      	nop
 8002338:	f001 0307 	and.w	r3, r1, #7
 800233c:	08c9      	lsrs	r1, r1, #3
 800233e:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8002342:	009b      	lsls	r3, r3, #2
 8002344:	6a04      	ldr	r4, [r0, #32]
 8002346:	210f      	movs	r1, #15
 8002348:	4099      	lsls	r1, r3
 800234a:	ea24 0101 	bic.w	r1, r4, r1
 800234e:	6201      	str	r1, [r0, #32]
 8002350:	6a01      	ldr	r1, [r0, #32]
 8002352:	409a      	lsls	r2, r3
 8002354:	430a      	orrs	r2, r1
 8002356:	6202      	str	r2, [r0, #32]
 8002358:	bd10      	pop	{r4, pc}

0800235a <Default_Handler>:
 800235a:	4668      	mov	r0, sp
 800235c:	f020 0107 	bic.w	r1, r0, #7
 8002360:	468d      	mov	sp, r1
 8002362:	b501      	push	{r0, lr}
 8002364:	bf00      	nop
 8002366:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 800236a:	4685      	mov	sp, r0
 800236c:	4770      	bx	lr

0800236e <HardFault_Handler>:
 800236e:	bf00      	nop
 8002370:	e7fd      	b.n	800236e <HardFault_Handler>
	...

08002374 <_reset_init>:
 8002374:	490e      	ldr	r1, [pc, #56]	; (80023b0 <_reset_init+0x3c>)
 8002376:	4b0f      	ldr	r3, [pc, #60]	; (80023b4 <_reset_init+0x40>)
 8002378:	1a5b      	subs	r3, r3, r1
 800237a:	109b      	asrs	r3, r3, #2
 800237c:	2200      	movs	r2, #0
 800237e:	429a      	cmp	r2, r3
 8002380:	d006      	beq.n	8002390 <_reset_init+0x1c>
 8002382:	480d      	ldr	r0, [pc, #52]	; (80023b8 <_reset_init+0x44>)
 8002384:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8002388:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 800238c:	3201      	adds	r2, #1
 800238e:	e7f6      	b.n	800237e <_reset_init+0xa>
 8002390:	4a0a      	ldr	r2, [pc, #40]	; (80023bc <_reset_init+0x48>)
 8002392:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8002396:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800239a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800239e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 80023a2:	6853      	ldr	r3, [r2, #4]
 80023a4:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 80023a8:	6053      	str	r3, [r2, #4]
 80023aa:	f7ff bacf 	b.w	800194c <main>
 80023ae:	bf00      	nop
 80023b0:	20000000 	.word	0x20000000
 80023b4:	20000034 	.word	0x20000034
 80023b8:	08002688 	.word	0x08002688
 80023bc:	e000ed00 	.word	0xe000ed00

080023c0 <SYSCFG_EXTILineConfig>:
 80023c0:	b510      	push	{r4, lr}
 80023c2:	bf00      	nop
 80023c4:	bf00      	nop
 80023c6:	f001 0303 	and.w	r3, r1, #3
 80023ca:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 80023ce:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80023d2:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 80023d6:	009b      	lsls	r3, r3, #2
 80023d8:	688c      	ldr	r4, [r1, #8]
 80023da:	220f      	movs	r2, #15
 80023dc:	409a      	lsls	r2, r3
 80023de:	ea24 0202 	bic.w	r2, r4, r2
 80023e2:	608a      	str	r2, [r1, #8]
 80023e4:	688a      	ldr	r2, [r1, #8]
 80023e6:	4098      	lsls	r0, r3
 80023e8:	4310      	orrs	r0, r2
 80023ea:	6088      	str	r0, [r1, #8]
 80023ec:	bd10      	pop	{r4, pc}
	...

080023f0 <thread_ending>:
 80023f0:	b672      	cpsid	i
 80023f2:	4b05      	ldr	r3, [pc, #20]	; (8002408 <thread_ending+0x18>)
 80023f4:	681a      	ldr	r2, [r3, #0]
 80023f6:	4b05      	ldr	r3, [pc, #20]	; (800240c <thread_ending+0x1c>)
 80023f8:	210c      	movs	r1, #12
 80023fa:	fb01 3302 	mla	r3, r1, r2, r3
 80023fe:	2200      	movs	r2, #0
 8002400:	605a      	str	r2, [r3, #4]
 8002402:	b662      	cpsie	i
 8002404:	bf00      	nop
 8002406:	e7fd      	b.n	8002404 <thread_ending+0x14>
 8002408:	20000664 	.word	0x20000664
 800240c:	2000061c 	.word	0x2000061c

08002410 <null_thread>:
 8002410:	b508      	push	{r3, lr}
 8002412:	f7ff fe75 	bl	8002100 <sleep>
 8002416:	e7fc      	b.n	8002412 <null_thread+0x2>

08002418 <scheduler>:
 8002418:	b570      	push	{r4, r5, r6, lr}
 800241a:	2200      	movs	r2, #0
 800241c:	4611      	mov	r1, r2
 800241e:	4b15      	ldr	r3, [pc, #84]	; (8002474 <scheduler+0x5c>)
 8002420:	200c      	movs	r0, #12
 8002422:	fb00 f401 	mul.w	r4, r0, r1
 8002426:	191e      	adds	r6, r3, r4
 8002428:	6875      	ldr	r5, [r6, #4]
 800242a:	f015 0f02 	tst.w	r5, #2
 800242e:	461d      	mov	r5, r3
 8002430:	d10a      	bne.n	8002448 <scheduler+0x30>
 8002432:	6876      	ldr	r6, [r6, #4]
 8002434:	07f6      	lsls	r6, r6, #31
 8002436:	d507      	bpl.n	8002448 <scheduler+0x30>
 8002438:	4350      	muls	r0, r2
 800243a:	5b1c      	ldrh	r4, [r3, r4]
 800243c:	5a18      	ldrh	r0, [r3, r0]
 800243e:	b2a4      	uxth	r4, r4
 8002440:	b280      	uxth	r0, r0
 8002442:	4284      	cmp	r4, r0
 8002444:	bf38      	it	cc
 8002446:	460a      	movcc	r2, r1
 8002448:	200c      	movs	r0, #12
 800244a:	4348      	muls	r0, r1
 800244c:	5a1c      	ldrh	r4, [r3, r0]
 800244e:	b2a4      	uxth	r4, r4
 8002450:	b11c      	cbz	r4, 800245a <scheduler+0x42>
 8002452:	5a1c      	ldrh	r4, [r3, r0]
 8002454:	3c01      	subs	r4, #1
 8002456:	b2a4      	uxth	r4, r4
 8002458:	521c      	strh	r4, [r3, r0]
 800245a:	3101      	adds	r1, #1
 800245c:	2906      	cmp	r1, #6
 800245e:	d1de      	bne.n	800241e <scheduler+0x6>
 8002460:	230c      	movs	r3, #12
 8002462:	4353      	muls	r3, r2
 8002464:	18e9      	adds	r1, r5, r3
 8002466:	8849      	ldrh	r1, [r1, #2]
 8002468:	b289      	uxth	r1, r1
 800246a:	52e9      	strh	r1, [r5, r3]
 800246c:	4b02      	ldr	r3, [pc, #8]	; (8002478 <scheduler+0x60>)
 800246e:	601a      	str	r2, [r3, #0]
 8002470:	bd70      	pop	{r4, r5, r6, pc}
 8002472:	bf00      	nop
 8002474:	2000061c 	.word	0x2000061c
 8002478:	20000664 	.word	0x20000664

0800247c <SysTick_Handler>:
 800247c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8002480:	f3ef 8308 	mrs	r3, MSP
 8002484:	4c0d      	ldr	r4, [pc, #52]	; (80024bc <SysTick_Handler+0x40>)
 8002486:	4d0e      	ldr	r5, [pc, #56]	; (80024c0 <SysTick_Handler+0x44>)
 8002488:	6822      	ldr	r2, [r4, #0]
 800248a:	3201      	adds	r2, #1
 800248c:	bf1d      	ittte	ne
 800248e:	6822      	ldrne	r2, [r4, #0]
 8002490:	210c      	movne	r1, #12
 8002492:	fb01 5202 	mlane	r2, r1, r2, r5
 8002496:	2300      	moveq	r3, #0
 8002498:	bf14      	ite	ne
 800249a:	6093      	strne	r3, [r2, #8]
 800249c:	6023      	streq	r3, [r4, #0]
 800249e:	f7ff ffbb 	bl	8002418 <scheduler>
 80024a2:	6822      	ldr	r2, [r4, #0]
 80024a4:	230c      	movs	r3, #12
 80024a6:	fb03 5302 	mla	r3, r3, r2, r5
 80024aa:	689a      	ldr	r2, [r3, #8]
 80024ac:	f06f 0306 	mvn.w	r3, #6
 80024b0:	469e      	mov	lr, r3
 80024b2:	f382 8808 	msr	MSP, r2
 80024b6:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 80024ba:	4770      	bx	lr
 80024bc:	20000664 	.word	0x20000664
 80024c0:	2000061c 	.word	0x2000061c

080024c4 <kernel_start>:
 80024c4:	b508      	push	{r3, lr}
 80024c6:	f7ff fe09 	bl	80020dc <sys_tick_init>
 80024ca:	bf00      	nop
 80024cc:	e7fd      	b.n	80024ca <kernel_start+0x6>
	...

080024d0 <create_thread>:
 80024d0:	f022 0203 	bic.w	r2, r2, #3
 80024d4:	3a40      	subs	r2, #64	; 0x40
 80024d6:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80024da:	eb01 0e02 	add.w	lr, r1, r2
 80024de:	f102 0634 	add.w	r6, r2, #52	; 0x34
 80024e2:	f102 0738 	add.w	r7, r2, #56	; 0x38
 80024e6:	323c      	adds	r2, #60	; 0x3c
 80024e8:	440e      	add	r6, r1
 80024ea:	440f      	add	r7, r1
 80024ec:	4411      	add	r1, r2
 80024ee:	2200      	movs	r2, #0
 80024f0:	b672      	cpsid	i
 80024f2:	f8df c054 	ldr.w	ip, [pc, #84]	; 8002548 <create_thread+0x78>
 80024f6:	250c      	movs	r5, #12
 80024f8:	4355      	muls	r5, r2
 80024fa:	eb0c 0405 	add.w	r4, ip, r5
 80024fe:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8002502:	f018 0f01 	tst.w	r8, #1
 8002506:	d114      	bne.n	8002532 <create_thread+0x62>
 8002508:	f8df 8040 	ldr.w	r8, [pc, #64]	; 800254c <create_thread+0x7c>
 800250c:	f8c4 e008 	str.w	lr, [r4, #8]
 8002510:	2b05      	cmp	r3, #5
 8002512:	f8c6 8000 	str.w	r8, [r6]
 8002516:	bf98      	it	ls
 8002518:	2306      	movls	r3, #6
 800251a:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 800251e:	6038      	str	r0, [r7, #0]
 8002520:	f8c1 8000 	str.w	r8, [r1]
 8002524:	8063      	strh	r3, [r4, #2]
 8002526:	f82c 3005 	strh.w	r3, [ip, r5]
 800252a:	2501      	movs	r5, #1
 800252c:	6065      	str	r5, [r4, #4]
 800252e:	4614      	mov	r4, r2
 8002530:	e000      	b.n	8002534 <create_thread+0x64>
 8002532:	2406      	movs	r4, #6
 8002534:	b662      	cpsie	i
 8002536:	3201      	adds	r2, #1
 8002538:	2a06      	cmp	r2, #6
 800253a:	d001      	beq.n	8002540 <create_thread+0x70>
 800253c:	2c06      	cmp	r4, #6
 800253e:	d0d7      	beq.n	80024f0 <create_thread+0x20>
 8002540:	4620      	mov	r0, r4
 8002542:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8002546:	bf00      	nop
 8002548:	2000061c 	.word	0x2000061c
 800254c:	080023f1 	.word	0x080023f1

08002550 <kernel_init>:
 8002550:	b510      	push	{r4, lr}
 8002552:	2300      	movs	r3, #0
 8002554:	490b      	ldr	r1, [pc, #44]	; (8002584 <kernel_init+0x34>)
 8002556:	220c      	movs	r2, #12
 8002558:	435a      	muls	r2, r3
 800255a:	188c      	adds	r4, r1, r2
 800255c:	2000      	movs	r0, #0
 800255e:	6060      	str	r0, [r4, #4]
 8002560:	3301      	adds	r3, #1
 8002562:	2006      	movs	r0, #6
 8002564:	4283      	cmp	r3, r0
 8002566:	8060      	strh	r0, [r4, #2]
 8002568:	5288      	strh	r0, [r1, r2]
 800256a:	d1f3      	bne.n	8002554 <kernel_init+0x4>
 800256c:	4b06      	ldr	r3, [pc, #24]	; (8002588 <kernel_init+0x38>)
 800256e:	4807      	ldr	r0, [pc, #28]	; (800258c <kernel_init+0x3c>)
 8002570:	4907      	ldr	r1, [pc, #28]	; (8002590 <kernel_init+0x40>)
 8002572:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002576:	601a      	str	r2, [r3, #0]
 8002578:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800257c:	2280      	movs	r2, #128	; 0x80
 800257e:	23ff      	movs	r3, #255	; 0xff
 8002580:	f7ff bfa6 	b.w	80024d0 <create_thread>
 8002584:	2000061c 	.word	0x2000061c
 8002588:	20000664 	.word	0x20000664
 800258c:	08002411 	.word	0x08002411
 8002590:	20000668 	.word	0x20000668

08002594 <messages_init>:
 8002594:	4a0a      	ldr	r2, [pc, #40]	; (80025c0 <messages_init+0x2c>)
 8002596:	2300      	movs	r3, #0
 8002598:	b510      	push	{r4, lr}
 800259a:	6013      	str	r3, [r2, #0]
 800259c:	6053      	str	r3, [r2, #4]
 800259e:	6093      	str	r3, [r2, #8]
 80025a0:	60d3      	str	r3, [r2, #12]
 80025a2:	6113      	str	r3, [r2, #16]
 80025a4:	6153      	str	r3, [r2, #20]
 80025a6:	4c07      	ldr	r4, [pc, #28]	; (80025c4 <messages_init+0x30>)
 80025a8:	0118      	lsls	r0, r3, #4
 80025aa:	1821      	adds	r1, r4, r0
 80025ac:	3301      	adds	r3, #1
 80025ae:	2200      	movs	r2, #0
 80025b0:	2b04      	cmp	r3, #4
 80025b2:	604a      	str	r2, [r1, #4]
 80025b4:	5022      	str	r2, [r4, r0]
 80025b6:	60ca      	str	r2, [r1, #12]
 80025b8:	608a      	str	r2, [r1, #8]
 80025ba:	d1f4      	bne.n	80025a6 <messages_init+0x12>
 80025bc:	bd10      	pop	{r4, pc}
 80025be:	bf00      	nop
 80025c0:	200006e8 	.word	0x200006e8
 80025c4:	20000700 	.word	0x20000700

080025c8 <lib_os_init>:
 80025c8:	b508      	push	{r3, lr}
 80025ca:	f7ff ffc1 	bl	8002550 <kernel_init>
 80025ce:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80025d2:	f7ff bfdf 	b.w	8002594 <messages_init>

080025d6 <_text>:
	...

080025d8 <_init>:
 80025d8:	e1a0c00d 	mov	ip, sp
 80025dc:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80025e0:	e24cb004 	sub	fp, ip, #4
 80025e4:	e24bd028 	sub	sp, fp, #40	; 0x28
 80025e8:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80025ec:	e12fff1e 	bx	lr

080025f0 <_fini>:
 80025f0:	e1a0c00d 	mov	ip, sp
 80025f4:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 80025f8:	e24cb004 	sub	fp, ip, #4
 80025fc:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002600:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002604:	e12fff1e 	bx	lr
 8002608:	61646f6b 	.word	0x61646f6b
 800260c:	6920616d 	.word	0x6920616d
 8002610:	2074696e 	.word	0x2074696e
 8002614:	25206925 	.word	0x25206925
 8002618:	203a2069 	.word	0x203a2069
 800261c:	4f5b2000 	.word	0x4f5b2000
 8002620:	000a5d4b 	.word	0x000a5d4b
 8002624:	41465b20 	.word	0x41465b20
 8002628:	44454c49 	.word	0x44454c49
 800262c:	000a0a5d 	.word	0x000a0a5d
 8002630:	736e6573 	.word	0x736e6573
 8002634:	5220726f 	.word	0x5220726f
 8002638:	61772054 	.word	0x61772054
 800263c:	6e696e72 	.word	0x6e696e72
 8002640:	75252067 	.word	0x75252067
 8002644:	7973000a 	.word	0x7973000a
 8002648:	6d657473 	.word	0x6d657473
 800264c:	6d697420 	.word	0x6d697420
 8002650:	75252065 	.word	0x75252065
 8002654:	6e65000a 	.word	0x6e65000a
 8002658:	65646f63 	.word	0x65646f63
 800265c:	25207372 	.word	0x25207372
 8002660:	69252069 	.word	0x69252069
 8002664:	6e61000a 	.word	0x6e61000a
 8002668:	73656c67 	.word	0x73656c67
 800266c:	20692520 	.word	0x20692520
 8002670:	25206925 	.word	0x25206925
 8002674:	25000a69 	.word	0x25000a69
 8002678:	69002069 	.word	0x69002069
 800267c:	20656c64 	.word	0x20656c64
 8002680:	000a7525 	.word	0x000a7525

08002684 <__EH_FRAME_BEGIN__>:
 8002684:	00000000                                ....
