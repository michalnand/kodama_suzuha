
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN6CTimer10timer_initEv>:
 8000188:	b530      	push	{r4, r5, lr}
 800018a:	2300      	movs	r3, #0
 800018c:	b085      	sub	sp, #20
 800018e:	491e      	ldr	r1, [pc, #120]	; (8000208 <_ZN6CTimer10timer_initEv+0x80>)
 8000190:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000194:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000198:	491c      	ldr	r1, [pc, #112]	; (800020c <_ZN6CTimer10timer_initEv+0x84>)
 800019a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800019e:	4a1c      	ldr	r2, [pc, #112]	; (8000210 <_ZN6CTimer10timer_initEv+0x88>)
 80001a0:	2400      	movs	r4, #0
 80001a2:	54d4      	strb	r4, [r2, r3]
 80001a4:	3301      	adds	r3, #1
 80001a6:	2b08      	cmp	r3, #8
 80001a8:	d1f1      	bne.n	800018e <_ZN6CTimer10timer_initEv+0x6>
 80001aa:	4b1a      	ldr	r3, [pc, #104]	; (8000214 <_ZN6CTimer10timer_initEv+0x8c>)
 80001ac:	4d1a      	ldr	r5, [pc, #104]	; (8000218 <_ZN6CTimer10timer_initEv+0x90>)
 80001ae:	601c      	str	r4, [r3, #0]
 80001b0:	2002      	movs	r0, #2
 80001b2:	2101      	movs	r1, #1
 80001b4:	f001 f8b8 	bl	8001328 <RCC_APB1PeriphClockCmd>
 80001b8:	f44f 738c 	mov.w	r3, #280	; 0x118
 80001bc:	f8ad 3004 	strh.w	r3, [sp, #4]
 80001c0:	4628      	mov	r0, r5
 80001c2:	2331      	movs	r3, #49	; 0x31
 80001c4:	a901      	add	r1, sp, #4
 80001c6:	9302      	str	r3, [sp, #8]
 80001c8:	f8ad 4006 	strh.w	r4, [sp, #6]
 80001cc:	f8ad 400c 	strh.w	r4, [sp, #12]
 80001d0:	f8ad 400e 	strh.w	r4, [sp, #14]
 80001d4:	f001 f8b6 	bl	8001344 <TIM_TimeBaseInit>
 80001d8:	4628      	mov	r0, r5
 80001da:	2101      	movs	r1, #1
 80001dc:	f001 f902 	bl	80013e4 <TIM_Cmd>
 80001e0:	68eb      	ldr	r3, [r5, #12]
 80001e2:	f043 0301 	orr.w	r3, r3, #1
 80001e6:	60eb      	str	r3, [r5, #12]
 80001e8:	231d      	movs	r3, #29
 80001ea:	f88d 3000 	strb.w	r3, [sp]
 80001ee:	4668      	mov	r0, sp
 80001f0:	2301      	movs	r3, #1
 80001f2:	f88d 4001 	strb.w	r4, [sp, #1]
 80001f6:	f88d 3002 	strb.w	r3, [sp, #2]
 80001fa:	f88d 3003 	strb.w	r3, [sp, #3]
 80001fe:	f001 fa4d 	bl	800169c <NVIC_Init>
 8000202:	4620      	mov	r0, r4
 8000204:	b005      	add	sp, #20
 8000206:	bd30      	pop	{r4, r5, pc}
 8000208:	20000030 	.word	0x20000030
 800020c:	2000005c 	.word	0x2000005c
 8000210:	20000050 	.word	0x20000050
 8000214:	20000058 	.word	0x20000058
 8000218:	40000400 	.word	0x40000400

0800021c <TIM3_IRQHandler>:
 800021c:	2300      	movs	r3, #0
 800021e:	4a15      	ldr	r2, [pc, #84]	; (8000274 <TIM3_IRQHandler+0x58>)
 8000220:	5cd1      	ldrb	r1, [r2, r3]
 8000222:	b111      	cbz	r1, 800022a <TIM3_IRQHandler+0xe>
 8000224:	5cd1      	ldrb	r1, [r2, r3]
 8000226:	29ff      	cmp	r1, #255	; 0xff
 8000228:	d11e      	bne.n	8000268 <TIM3_IRQHandler+0x4c>
 800022a:	4913      	ldr	r1, [pc, #76]	; (8000278 <TIM3_IRQHandler+0x5c>)
 800022c:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000230:	b128      	cbz	r0, 800023e <TIM3_IRQHandler+0x22>
 8000232:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 8000236:	3a01      	subs	r2, #1
 8000238:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800023c:	e009      	b.n	8000252 <TIM3_IRQHandler+0x36>
 800023e:	480f      	ldr	r0, [pc, #60]	; (800027c <TIM3_IRQHandler+0x60>)
 8000240:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 8000244:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 8000248:	5cd2      	ldrb	r2, [r2, r3]
 800024a:	b912      	cbnz	r2, 8000252 <TIM3_IRQHandler+0x36>
 800024c:	4a09      	ldr	r2, [pc, #36]	; (8000274 <TIM3_IRQHandler+0x58>)
 800024e:	2101      	movs	r1, #1
 8000250:	54d1      	strb	r1, [r2, r3]
 8000252:	3301      	adds	r3, #1
 8000254:	2b08      	cmp	r3, #8
 8000256:	d1e2      	bne.n	800021e <TIM3_IRQHandler+0x2>
 8000258:	4a09      	ldr	r2, [pc, #36]	; (8000280 <TIM3_IRQHandler+0x64>)
 800025a:	480a      	ldr	r0, [pc, #40]	; (8000284 <TIM3_IRQHandler+0x68>)
 800025c:	6813      	ldr	r3, [r2, #0]
 800025e:	2101      	movs	r1, #1
 8000260:	3301      	adds	r3, #1
 8000262:	6013      	str	r3, [r2, #0]
 8000264:	f001 b8cc 	b.w	8001400 <TIM_ClearITPendingBit>
 8000268:	5cd1      	ldrb	r1, [r2, r3]
 800026a:	3101      	adds	r1, #1
 800026c:	b2c9      	uxtb	r1, r1
 800026e:	54d1      	strb	r1, [r2, r3]
 8000270:	e7db      	b.n	800022a <TIM3_IRQHandler+0xe>
 8000272:	bf00      	nop
 8000274:	20000050 	.word	0x20000050
 8000278:	20000030 	.word	0x20000030
 800027c:	2000005c 	.word	0x2000005c
 8000280:	20000058 	.word	0x20000058
 8000284:	40000400 	.word	0x40000400

08000288 <_ZN6CTimer8get_timeEv>:
 8000288:	b082      	sub	sp, #8
 800028a:	b672      	cpsid	i
 800028c:	4b04      	ldr	r3, [pc, #16]	; (80002a0 <_ZN6CTimer8get_timeEv+0x18>)
 800028e:	681b      	ldr	r3, [r3, #0]
 8000290:	9301      	str	r3, [sp, #4]
 8000292:	b662      	cpsie	i
 8000294:	230a      	movs	r3, #10
 8000296:	9801      	ldr	r0, [sp, #4]
 8000298:	fbb0 f0f3 	udiv	r0, r0, r3
 800029c:	b002      	add	sp, #8
 800029e:	4770      	bx	lr
 80002a0:	20000058 	.word	0x20000058

080002a4 <_ZN6CTimer8delay_msEm>:
 80002a4:	b537      	push	{r0, r1, r2, r4, r5, lr}
 80002a6:	460c      	mov	r4, r1
 80002a8:	4605      	mov	r5, r0
 80002aa:	f7ff ffed 	bl	8000288 <_ZN6CTimer8get_timeEv>
 80002ae:	4420      	add	r0, r4
 80002b0:	9001      	str	r0, [sp, #4]
 80002b2:	4628      	mov	r0, r5
 80002b4:	9c01      	ldr	r4, [sp, #4]
 80002b6:	f7ff ffe7 	bl	8000288 <_ZN6CTimer8get_timeEv>
 80002ba:	4284      	cmp	r4, r0
 80002bc:	d902      	bls.n	80002c4 <_ZN6CTimer8delay_msEm+0x20>
 80002be:	f001 f9e9 	bl	8001694 <core_yield>
 80002c2:	e7f6      	b.n	80002b2 <_ZN6CTimer8delay_msEm+0xe>
 80002c4:	b003      	add	sp, #12
 80002c6:	bd30      	pop	{r4, r5, pc}

080002c8 <_ZN6CTimer22event_timer_set_periodEhm>:
 80002c8:	b672      	cpsid	i
 80002ca:	230a      	movs	r3, #10
 80002cc:	435a      	muls	r2, r3
 80002ce:	4b05      	ldr	r3, [pc, #20]	; (80002e4 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 80002d0:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80002d4:	4b04      	ldr	r3, [pc, #16]	; (80002e8 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 80002d6:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 80002da:	4b04      	ldr	r3, [pc, #16]	; (80002ec <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 80002dc:	2200      	movs	r2, #0
 80002de:	545a      	strb	r2, [r3, r1]
 80002e0:	b662      	cpsie	i
 80002e2:	4770      	bx	lr
 80002e4:	20000030 	.word	0x20000030
 80002e8:	2000005c 	.word	0x2000005c
 80002ec:	20000050 	.word	0x20000050

080002f0 <_ZN6CTimer14event_timer_ccEh>:
 80002f0:	4b05      	ldr	r3, [pc, #20]	; (8000308 <_ZN6CTimer14event_timer_ccEh+0x18>)
 80002f2:	5c5a      	ldrb	r2, [r3, r1]
 80002f4:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 80002f8:	b12a      	cbz	r2, 8000306 <_ZN6CTimer14event_timer_ccEh+0x16>
 80002fa:	b672      	cpsid	i
 80002fc:	5c58      	ldrb	r0, [r3, r1]
 80002fe:	2200      	movs	r2, #0
 8000300:	b2c0      	uxtb	r0, r0
 8000302:	545a      	strb	r2, [r3, r1]
 8000304:	b662      	cpsie	i
 8000306:	4770      	bx	lr
 8000308:	20000050 	.word	0x20000050

0800030c <_ZN7CKodama4initEv>:
 800030c:	b510      	push	{r4, lr}
 800030e:	4604      	mov	r4, r0
 8000310:	f000 fa92 	bl	8000838 <_ZN5CGPIO9gpio_initEv>
 8000314:	2800      	cmp	r0, #0
 8000316:	db12      	blt.n	800033e <_ZN7CKodama4initEv+0x32>
 8000318:	4620      	mov	r0, r4
 800031a:	f000 fb95 	bl	8000a48 <_ZN9CTerminal13terminal_initEv>
 800031e:	2800      	cmp	r0, #0
 8000320:	db10      	blt.n	8000344 <_ZN7CKodama4initEv+0x38>
 8000322:	4620      	mov	r0, r4
 8000324:	f7ff ff30 	bl	8000188 <_ZN6CTimer10timer_initEv>
 8000328:	2800      	cmp	r0, #0
 800032a:	db0e      	blt.n	800034a <_ZN7CKodama4initEv+0x3e>
 800032c:	4620      	mov	r0, r4
 800032e:	f000 f9f1 	bl	8000714 <_ZN4CIMU8imu_initEv>
 8000332:	2800      	cmp	r0, #0
 8000334:	bfb4      	ite	lt
 8000336:	f06f 0003 	mvnlt.w	r0, #3
 800033a:	2000      	movge	r0, #0
 800033c:	bd10      	pop	{r4, pc}
 800033e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000342:	bd10      	pop	{r4, pc}
 8000344:	f06f 0001 	mvn.w	r0, #1
 8000348:	bd10      	pop	{r4, pc}
 800034a:	f06f 0002 	mvn.w	r0, #2
 800034e:	bd10      	pop	{r4, pc}

08000350 <_ZN4CI2C9i2c_delayEv>:
 8000350:	bf00      	nop
 8000352:	bf00      	nop
 8000354:	bf00      	nop
 8000356:	bf00      	nop
 8000358:	4770      	bx	lr
	...

0800035c <_ZN4CI2C9SetLowSDAEv>:
 800035c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800035e:	4c0c      	ldr	r4, [pc, #48]	; (8000390 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000360:	2301      	movs	r3, #1
 8000362:	2203      	movs	r2, #3
 8000364:	4606      	mov	r6, r0
 8000366:	2580      	movs	r5, #128	; 0x80
 8000368:	f88d 3004 	strb.w	r3, [sp, #4]
 800036c:	f88d 3006 	strb.w	r3, [sp, #6]
 8000370:	4620      	mov	r0, r4
 8000372:	2300      	movs	r3, #0
 8000374:	4669      	mov	r1, sp
 8000376:	f88d 2005 	strb.w	r2, [sp, #5]
 800037a:	f88d 3007 	strb.w	r3, [sp, #7]
 800037e:	9500      	str	r5, [sp, #0]
 8000380:	f001 fa58 	bl	8001834 <GPIO_Init>
 8000384:	8525      	strh	r5, [r4, #40]	; 0x28
 8000386:	4630      	mov	r0, r6
 8000388:	f7ff ffe2 	bl	8000350 <_ZN4CI2C9i2c_delayEv>
 800038c:	b002      	add	sp, #8
 800038e:	bd70      	pop	{r4, r5, r6, pc}
 8000390:	48000400 	.word	0x48000400

08000394 <_ZN4CI2C10SetHighSDAEv>:
 8000394:	4b05      	ldr	r3, [pc, #20]	; (80003ac <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000396:	681a      	ldr	r2, [r3, #0]
 8000398:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 800039c:	601a      	str	r2, [r3, #0]
 800039e:	681a      	ldr	r2, [r3, #0]
 80003a0:	601a      	str	r2, [r3, #0]
 80003a2:	2280      	movs	r2, #128	; 0x80
 80003a4:	619a      	str	r2, [r3, #24]
 80003a6:	f7ff bfd3 	b.w	8000350 <_ZN4CI2C9i2c_delayEv>
 80003aa:	bf00      	nop
 80003ac:	48000400 	.word	0x48000400

080003b0 <_ZN4CI2C9SetLowSCLEv>:
 80003b0:	4b02      	ldr	r3, [pc, #8]	; (80003bc <_ZN4CI2C9SetLowSCLEv+0xc>)
 80003b2:	2240      	movs	r2, #64	; 0x40
 80003b4:	851a      	strh	r2, [r3, #40]	; 0x28
 80003b6:	f7ff bfcb 	b.w	8000350 <_ZN4CI2C9i2c_delayEv>
 80003ba:	bf00      	nop
 80003bc:	48000400 	.word	0x48000400

080003c0 <_ZN4CI2C10SetHighSCLEv>:
 80003c0:	4b02      	ldr	r3, [pc, #8]	; (80003cc <_ZN4CI2C10SetHighSCLEv+0xc>)
 80003c2:	2240      	movs	r2, #64	; 0x40
 80003c4:	619a      	str	r2, [r3, #24]
 80003c6:	f7ff bfc3 	b.w	8000350 <_ZN4CI2C9i2c_delayEv>
 80003ca:	bf00      	nop
 80003cc:	48000400 	.word	0x48000400

080003d0 <_ZN4CI2C8i2c_initEv>:
 80003d0:	b513      	push	{r0, r1, r4, lr}
 80003d2:	4604      	mov	r4, r0
 80003d4:	2101      	movs	r1, #1
 80003d6:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80003da:	f000 ff89 	bl	80012f0 <RCC_AHBPeriphClockCmd>
 80003de:	23c0      	movs	r3, #192	; 0xc0
 80003e0:	9300      	str	r3, [sp, #0]
 80003e2:	2301      	movs	r3, #1
 80003e4:	2203      	movs	r2, #3
 80003e6:	4669      	mov	r1, sp
 80003e8:	f88d 3004 	strb.w	r3, [sp, #4]
 80003ec:	f88d 3006 	strb.w	r3, [sp, #6]
 80003f0:	4809      	ldr	r0, [pc, #36]	; (8000418 <_ZN4CI2C8i2c_initEv+0x48>)
 80003f2:	f88d 2005 	strb.w	r2, [sp, #5]
 80003f6:	2300      	movs	r3, #0
 80003f8:	f88d 3007 	strb.w	r3, [sp, #7]
 80003fc:	f001 fa1a 	bl	8001834 <GPIO_Init>
 8000400:	4620      	mov	r0, r4
 8000402:	f7ff ffdd 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000406:	4620      	mov	r0, r4
 8000408:	f7ff ffa8 	bl	800035c <_ZN4CI2C9SetLowSDAEv>
 800040c:	4620      	mov	r0, r4
 800040e:	f7ff ffc1 	bl	8000394 <_ZN4CI2C10SetHighSDAEv>
 8000412:	b002      	add	sp, #8
 8000414:	bd10      	pop	{r4, pc}
 8000416:	bf00      	nop
 8000418:	48000400 	.word	0x48000400

0800041c <_ZN4CI2C8i2cStartEv>:
 800041c:	b510      	push	{r4, lr}
 800041e:	4604      	mov	r4, r0
 8000420:	f7ff ffce 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000424:	4620      	mov	r0, r4
 8000426:	f7ff ffb5 	bl	8000394 <_ZN4CI2C10SetHighSDAEv>
 800042a:	4620      	mov	r0, r4
 800042c:	f7ff ffc8 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000430:	4620      	mov	r0, r4
 8000432:	f7ff ff93 	bl	800035c <_ZN4CI2C9SetLowSDAEv>
 8000436:	4620      	mov	r0, r4
 8000438:	f7ff ffba 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 800043c:	4620      	mov	r0, r4
 800043e:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000442:	f7ff bfa7 	b.w	8000394 <_ZN4CI2C10SetHighSDAEv>

08000446 <_ZN4CI2C7i2cStopEv>:
 8000446:	b510      	push	{r4, lr}
 8000448:	4604      	mov	r4, r0
 800044a:	f7ff ffb1 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 800044e:	4620      	mov	r0, r4
 8000450:	f7ff ff84 	bl	800035c <_ZN4CI2C9SetLowSDAEv>
 8000454:	4620      	mov	r0, r4
 8000456:	f7ff ffb3 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 800045a:	4620      	mov	r0, r4
 800045c:	f7ff ff7e 	bl	800035c <_ZN4CI2C9SetLowSDAEv>
 8000460:	4620      	mov	r0, r4
 8000462:	f7ff ffad 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000466:	4620      	mov	r0, r4
 8000468:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800046c:	f7ff bf92 	b.w	8000394 <_ZN4CI2C10SetHighSDAEv>

08000470 <_ZN4CI2C8i2cWriteEh>:
 8000470:	b570      	push	{r4, r5, r6, lr}
 8000472:	4604      	mov	r4, r0
 8000474:	460e      	mov	r6, r1
 8000476:	2508      	movs	r5, #8
 8000478:	4620      	mov	r0, r4
 800047a:	f7ff ff99 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 800047e:	0633      	lsls	r3, r6, #24
 8000480:	4620      	mov	r0, r4
 8000482:	d502      	bpl.n	800048a <_ZN4CI2C8i2cWriteEh+0x1a>
 8000484:	f7ff ff86 	bl	8000394 <_ZN4CI2C10SetHighSDAEv>
 8000488:	e001      	b.n	800048e <_ZN4CI2C8i2cWriteEh+0x1e>
 800048a:	f7ff ff67 	bl	800035c <_ZN4CI2C9SetLowSDAEv>
 800048e:	4620      	mov	r0, r4
 8000490:	3d01      	subs	r5, #1
 8000492:	f7ff ff95 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000496:	0076      	lsls	r6, r6, #1
 8000498:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 800049c:	b2f6      	uxtb	r6, r6
 800049e:	d1eb      	bne.n	8000478 <_ZN4CI2C8i2cWriteEh+0x8>
 80004a0:	4620      	mov	r0, r4
 80004a2:	f7ff ff85 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 80004a6:	4620      	mov	r0, r4
 80004a8:	f7ff ff74 	bl	8000394 <_ZN4CI2C10SetHighSDAEv>
 80004ac:	4620      	mov	r0, r4
 80004ae:	f7ff ff87 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 80004b2:	4b07      	ldr	r3, [pc, #28]	; (80004d0 <_ZN4CI2C8i2cWriteEh+0x60>)
 80004b4:	8a1d      	ldrh	r5, [r3, #16]
 80004b6:	4620      	mov	r0, r4
 80004b8:	f7ff ff7a 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 80004bc:	b2ad      	uxth	r5, r5
 80004be:	4620      	mov	r0, r4
 80004c0:	f7ff ff46 	bl	8000350 <_ZN4CI2C9i2c_delayEv>
 80004c4:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 80004c8:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80004cc:	bd70      	pop	{r4, r5, r6, pc}
 80004ce:	bf00      	nop
 80004d0:	48000400 	.word	0x48000400

080004d4 <_ZN4CI2C13i2c_write_regEhhh>:
 80004d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80004d6:	4604      	mov	r4, r0
 80004d8:	460f      	mov	r7, r1
 80004da:	4616      	mov	r6, r2
 80004dc:	461d      	mov	r5, r3
 80004de:	f7ff ff9d 	bl	800041c <_ZN4CI2C8i2cStartEv>
 80004e2:	4639      	mov	r1, r7
 80004e4:	4620      	mov	r0, r4
 80004e6:	f7ff ffc3 	bl	8000470 <_ZN4CI2C8i2cWriteEh>
 80004ea:	4631      	mov	r1, r6
 80004ec:	4620      	mov	r0, r4
 80004ee:	f7ff ffbf 	bl	8000470 <_ZN4CI2C8i2cWriteEh>
 80004f2:	4620      	mov	r0, r4
 80004f4:	4629      	mov	r1, r5
 80004f6:	f7ff ffbb 	bl	8000470 <_ZN4CI2C8i2cWriteEh>
 80004fa:	4620      	mov	r0, r4
 80004fc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000500:	f7ff bfa1 	b.w	8000446 <_ZN4CI2C7i2cStopEv>

08000504 <_ZN4CI2C7i2cReadEh>:
 8000504:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000506:	4604      	mov	r4, r0
 8000508:	460f      	mov	r7, r1
 800050a:	f7ff ff51 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 800050e:	2608      	movs	r6, #8
 8000510:	2500      	movs	r5, #0
 8000512:	4620      	mov	r0, r4
 8000514:	f7ff ff54 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000518:	4b13      	ldr	r3, [pc, #76]	; (8000568 <_ZN4CI2C7i2cReadEh+0x64>)
 800051a:	8a1b      	ldrh	r3, [r3, #16]
 800051c:	006d      	lsls	r5, r5, #1
 800051e:	061b      	lsls	r3, r3, #24
 8000520:	b2ed      	uxtb	r5, r5
 8000522:	4620      	mov	r0, r4
 8000524:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000528:	bf48      	it	mi
 800052a:	f045 0501 	orrmi.w	r5, r5, #1
 800052e:	f7ff ff3f 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 8000532:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000536:	d1ec      	bne.n	8000512 <_ZN4CI2C7i2cReadEh+0xe>
 8000538:	4620      	mov	r0, r4
 800053a:	b147      	cbz	r7, 800054e <_ZN4CI2C7i2cReadEh+0x4a>
 800053c:	f7ff ff0e 	bl	800035c <_ZN4CI2C9SetLowSDAEv>
 8000540:	4620      	mov	r0, r4
 8000542:	f7ff ff3d 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000546:	4620      	mov	r0, r4
 8000548:	f7ff ff32 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 800054c:	e00a      	b.n	8000564 <_ZN4CI2C7i2cReadEh+0x60>
 800054e:	f7ff ff21 	bl	8000394 <_ZN4CI2C10SetHighSDAEv>
 8000552:	4620      	mov	r0, r4
 8000554:	f7ff ff34 	bl	80003c0 <_ZN4CI2C10SetHighSCLEv>
 8000558:	4620      	mov	r0, r4
 800055a:	f7ff ff29 	bl	80003b0 <_ZN4CI2C9SetLowSCLEv>
 800055e:	4620      	mov	r0, r4
 8000560:	f7ff fefc 	bl	800035c <_ZN4CI2C9SetLowSDAEv>
 8000564:	4628      	mov	r0, r5
 8000566:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000568:	48000400 	.word	0x48000400

0800056c <_ZN4CI2C12i2c_read_regEhh>:
 800056c:	b570      	push	{r4, r5, r6, lr}
 800056e:	4604      	mov	r4, r0
 8000570:	460d      	mov	r5, r1
 8000572:	4616      	mov	r6, r2
 8000574:	f7ff ff52 	bl	800041c <_ZN4CI2C8i2cStartEv>
 8000578:	4629      	mov	r1, r5
 800057a:	4620      	mov	r0, r4
 800057c:	f7ff ff78 	bl	8000470 <_ZN4CI2C8i2cWriteEh>
 8000580:	4631      	mov	r1, r6
 8000582:	4620      	mov	r0, r4
 8000584:	f7ff ff74 	bl	8000470 <_ZN4CI2C8i2cWriteEh>
 8000588:	4620      	mov	r0, r4
 800058a:	f7ff ff47 	bl	800041c <_ZN4CI2C8i2cStartEv>
 800058e:	f045 0101 	orr.w	r1, r5, #1
 8000592:	4620      	mov	r0, r4
 8000594:	f7ff ff6c 	bl	8000470 <_ZN4CI2C8i2cWriteEh>
 8000598:	2100      	movs	r1, #0
 800059a:	4620      	mov	r0, r4
 800059c:	f7ff ffb2 	bl	8000504 <_ZN4CI2C7i2cReadEh>
 80005a0:	4605      	mov	r5, r0
 80005a2:	4620      	mov	r0, r4
 80005a4:	f7ff ff4f 	bl	8000446 <_ZN4CI2C7i2cStopEv>
 80005a8:	4628      	mov	r0, r5
 80005aa:	bd70      	pop	{r4, r5, r6, pc}

080005ac <_ZN4CIMU8imu_readEv>:
 80005ac:	b538      	push	{r3, r4, r5, lr}
 80005ae:	21d4      	movs	r1, #212	; 0xd4
 80005b0:	2228      	movs	r2, #40	; 0x28
 80005b2:	4604      	mov	r4, r0
 80005b4:	f7ff ffda 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80005b8:	21d4      	movs	r1, #212	; 0xd4
 80005ba:	4605      	mov	r5, r0
 80005bc:	2229      	movs	r2, #41	; 0x29
 80005be:	4620      	mov	r0, r4
 80005c0:	f7ff ffd4 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80005c4:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005c8:	8320      	strh	r0, [r4, #24]
 80005ca:	21d4      	movs	r1, #212	; 0xd4
 80005cc:	222a      	movs	r2, #42	; 0x2a
 80005ce:	4620      	mov	r0, r4
 80005d0:	f7ff ffcc 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80005d4:	21d4      	movs	r1, #212	; 0xd4
 80005d6:	4605      	mov	r5, r0
 80005d8:	222b      	movs	r2, #43	; 0x2b
 80005da:	4620      	mov	r0, r4
 80005dc:	f7ff ffc6 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80005e0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005e4:	8360      	strh	r0, [r4, #26]
 80005e6:	21d4      	movs	r1, #212	; 0xd4
 80005e8:	222c      	movs	r2, #44	; 0x2c
 80005ea:	4620      	mov	r0, r4
 80005ec:	f7ff ffbe 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80005f0:	21d4      	movs	r1, #212	; 0xd4
 80005f2:	4605      	mov	r5, r0
 80005f4:	222d      	movs	r2, #45	; 0x2d
 80005f6:	4620      	mov	r0, r4
 80005f8:	f7ff ffb8 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80005fc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000600:	83a0      	strh	r0, [r4, #28]
 8000602:	213c      	movs	r1, #60	; 0x3c
 8000604:	2208      	movs	r2, #8
 8000606:	4620      	mov	r0, r4
 8000608:	f7ff ffb0 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 800060c:	213c      	movs	r1, #60	; 0x3c
 800060e:	4605      	mov	r5, r0
 8000610:	2209      	movs	r2, #9
 8000612:	4620      	mov	r0, r4
 8000614:	f7ff ffaa 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000618:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800061c:	8260      	strh	r0, [r4, #18]
 800061e:	213c      	movs	r1, #60	; 0x3c
 8000620:	220a      	movs	r2, #10
 8000622:	4620      	mov	r0, r4
 8000624:	f7ff ffa2 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000628:	213c      	movs	r1, #60	; 0x3c
 800062a:	4605      	mov	r5, r0
 800062c:	220b      	movs	r2, #11
 800062e:	4620      	mov	r0, r4
 8000630:	f7ff ff9c 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000634:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000638:	82a0      	strh	r0, [r4, #20]
 800063a:	213c      	movs	r1, #60	; 0x3c
 800063c:	220c      	movs	r2, #12
 800063e:	4620      	mov	r0, r4
 8000640:	f7ff ff94 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000644:	213c      	movs	r1, #60	; 0x3c
 8000646:	4605      	mov	r5, r0
 8000648:	220d      	movs	r2, #13
 800064a:	4620      	mov	r0, r4
 800064c:	f7ff ff8e 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000650:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000654:	82e0      	strh	r0, [r4, #22]
 8000656:	213c      	movs	r1, #60	; 0x3c
 8000658:	2228      	movs	r2, #40	; 0x28
 800065a:	4620      	mov	r0, r4
 800065c:	f7ff ff86 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000660:	213c      	movs	r1, #60	; 0x3c
 8000662:	4605      	mov	r5, r0
 8000664:	2229      	movs	r2, #41	; 0x29
 8000666:	4620      	mov	r0, r4
 8000668:	f7ff ff80 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 800066c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000670:	81a0      	strh	r0, [r4, #12]
 8000672:	213c      	movs	r1, #60	; 0x3c
 8000674:	222a      	movs	r2, #42	; 0x2a
 8000676:	4620      	mov	r0, r4
 8000678:	f7ff ff78 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 800067c:	213c      	movs	r1, #60	; 0x3c
 800067e:	4605      	mov	r5, r0
 8000680:	222b      	movs	r2, #43	; 0x2b
 8000682:	4620      	mov	r0, r4
 8000684:	f7ff ff72 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000688:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800068c:	81e0      	strh	r0, [r4, #14]
 800068e:	213c      	movs	r1, #60	; 0x3c
 8000690:	222c      	movs	r2, #44	; 0x2c
 8000692:	4620      	mov	r0, r4
 8000694:	f7ff ff6a 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 8000698:	213c      	movs	r1, #60	; 0x3c
 800069a:	4605      	mov	r5, r0
 800069c:	222d      	movs	r2, #45	; 0x2d
 800069e:	4620      	mov	r0, r4
 80006a0:	f7ff ff64 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80006a4:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006a8:	8220      	strh	r0, [r4, #16]
 80006aa:	213c      	movs	r1, #60	; 0x3c
 80006ac:	2205      	movs	r2, #5
 80006ae:	4620      	mov	r0, r4
 80006b0:	f7ff ff5c 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80006b4:	213c      	movs	r1, #60	; 0x3c
 80006b6:	4605      	mov	r5, r0
 80006b8:	2206      	movs	r2, #6
 80006ba:	4620      	mov	r0, r4
 80006bc:	f7ff ff56 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 80006c0:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 80006c4:	6822      	ldr	r2, [r4, #0]
 80006c6:	1a9a      	subs	r2, r3, r2
 80006c8:	6a23      	ldr	r3, [r4, #32]
 80006ca:	21c8      	movs	r1, #200	; 0xc8
 80006cc:	fb92 f2f1 	sdiv	r2, r2, r1
 80006d0:	441a      	add	r2, r3
 80006d2:	6222      	str	r2, [r4, #32]
 80006d4:	6863      	ldr	r3, [r4, #4]
 80006d6:	f9b4 201a 	ldrsh.w	r2, [r4, #26]
 80006da:	1ad2      	subs	r2, r2, r3
 80006dc:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80006de:	fb92 f2f1 	sdiv	r2, r2, r1
 80006e2:	441a      	add	r2, r3
 80006e4:	6262      	str	r2, [r4, #36]	; 0x24
 80006e6:	68a3      	ldr	r3, [r4, #8]
 80006e8:	f9b4 201c 	ldrsh.w	r2, [r4, #28]
 80006ec:	1ad3      	subs	r3, r2, r3
 80006ee:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 80006f0:	fb93 f3f1 	sdiv	r3, r3, r1
 80006f4:	4413      	add	r3, r2
 80006f6:	62a3      	str	r3, [r4, #40]	; 0x28
 80006f8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80006fc:	62e3      	str	r3, [r4, #44]	; 0x2c
 80006fe:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8000702:	6323      	str	r3, [r4, #48]	; 0x30
 8000704:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000708:	f9b4 3010 	ldrsh.w	r3, [r4, #16]
 800070c:	83e0      	strh	r0, [r4, #30]
 800070e:	6363      	str	r3, [r4, #52]	; 0x34
 8000710:	bd38      	pop	{r3, r4, r5, pc}
	...

08000714 <_ZN4CIMU8imu_initEv>:
 8000714:	2300      	movs	r3, #0
 8000716:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800071a:	6003      	str	r3, [r0, #0]
 800071c:	6043      	str	r3, [r0, #4]
 800071e:	6083      	str	r3, [r0, #8]
 8000720:	4604      	mov	r4, r0
 8000722:	f7ff fe55 	bl	80003d0 <_ZN4CI2C8i2c_initEv>
 8000726:	f242 7511 	movw	r5, #10001	; 0x2711
 800072a:	3d01      	subs	r5, #1
 800072c:	d001      	beq.n	8000732 <_ZN4CIMU8imu_initEv+0x1e>
 800072e:	bf00      	nop
 8000730:	e7fb      	b.n	800072a <_ZN4CIMU8imu_initEv+0x16>
 8000732:	4620      	mov	r0, r4
 8000734:	21d4      	movs	r1, #212	; 0xd4
 8000736:	220f      	movs	r2, #15
 8000738:	f7ff ff18 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 800073c:	28d4      	cmp	r0, #212	; 0xd4
 800073e:	4606      	mov	r6, r0
 8000740:	d16e      	bne.n	8000820 <_ZN4CIMU8imu_initEv+0x10c>
 8000742:	4620      	mov	r0, r4
 8000744:	213c      	movs	r1, #60	; 0x3c
 8000746:	220f      	movs	r2, #15
 8000748:	f7ff ff10 	bl	800056c <_ZN4CI2C12i2c_read_regEhh>
 800074c:	2849      	cmp	r0, #73	; 0x49
 800074e:	d16b      	bne.n	8000828 <_ZN4CIMU8imu_initEv+0x114>
 8000750:	4631      	mov	r1, r6
 8000752:	4620      	mov	r0, r4
 8000754:	2220      	movs	r2, #32
 8000756:	23ff      	movs	r3, #255	; 0xff
 8000758:	f7ff febc 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 800075c:	4631      	mov	r1, r6
 800075e:	4620      	mov	r0, r4
 8000760:	2223      	movs	r2, #35	; 0x23
 8000762:	2310      	movs	r3, #16
 8000764:	f7ff feb6 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 8000768:	4620      	mov	r0, r4
 800076a:	213c      	movs	r1, #60	; 0x3c
 800076c:	221f      	movs	r2, #31
 800076e:	462b      	mov	r3, r5
 8000770:	f7ff feb0 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 8000774:	4620      	mov	r0, r4
 8000776:	213c      	movs	r1, #60	; 0x3c
 8000778:	2220      	movs	r2, #32
 800077a:	2367      	movs	r3, #103	; 0x67
 800077c:	f7ff feaa 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 8000780:	4620      	mov	r0, r4
 8000782:	213c      	movs	r1, #60	; 0x3c
 8000784:	2221      	movs	r2, #33	; 0x21
 8000786:	462b      	mov	r3, r5
 8000788:	f7ff fea4 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 800078c:	4620      	mov	r0, r4
 800078e:	213c      	movs	r1, #60	; 0x3c
 8000790:	2224      	movs	r2, #36	; 0x24
 8000792:	23f4      	movs	r3, #244	; 0xf4
 8000794:	f7ff fe9e 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 8000798:	4620      	mov	r0, r4
 800079a:	213c      	movs	r1, #60	; 0x3c
 800079c:	2225      	movs	r2, #37	; 0x25
 800079e:	462b      	mov	r3, r5
 80007a0:	f7ff fe98 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 80007a4:	4620      	mov	r0, r4
 80007a6:	213c      	movs	r1, #60	; 0x3c
 80007a8:	2226      	movs	r2, #38	; 0x26
 80007aa:	2380      	movs	r3, #128	; 0x80
 80007ac:	f7ff fe92 	bl	80004d4 <_ZN4CI2C13i2c_write_regEhhh>
 80007b0:	4e1f      	ldr	r6, [pc, #124]	; (8000830 <_ZN4CIMU8imu_initEv+0x11c>)
 80007b2:	3e01      	subs	r6, #1
 80007b4:	d001      	beq.n	80007ba <_ZN4CIMU8imu_initEv+0xa6>
 80007b6:	bf00      	nop
 80007b8:	e7fb      	b.n	80007b2 <_ZN4CIMU8imu_initEv+0x9e>
 80007ba:	4620      	mov	r0, r4
 80007bc:	f7ff fef6 	bl	80005ac <_ZN4CIMU8imu_readEv>
 80007c0:	2564      	movs	r5, #100	; 0x64
 80007c2:	4637      	mov	r7, r6
 80007c4:	46b0      	mov	r8, r6
 80007c6:	2365      	movs	r3, #101	; 0x65
 80007c8:	3b01      	subs	r3, #1
 80007ca:	d001      	beq.n	80007d0 <_ZN4CIMU8imu_initEv+0xbc>
 80007cc:	bf00      	nop
 80007ce:	e7fb      	b.n	80007c8 <_ZN4CIMU8imu_initEv+0xb4>
 80007d0:	4620      	mov	r0, r4
 80007d2:	f7ff feeb 	bl	80005ac <_ZN4CIMU8imu_readEv>
 80007d6:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 80007da:	4498      	add	r8, r3
 80007dc:	f9b4 301a 	ldrsh.w	r3, [r4, #26]
 80007e0:	441f      	add	r7, r3
 80007e2:	f9b4 301c 	ldrsh.w	r3, [r4, #28]
 80007e6:	3d01      	subs	r5, #1
 80007e8:	441e      	add	r6, r3
 80007ea:	d1ec      	bne.n	80007c6 <_ZN4CIMU8imu_initEv+0xb2>
 80007ec:	2264      	movs	r2, #100	; 0x64
 80007ee:	81a5      	strh	r5, [r4, #12]
 80007f0:	fb98 f3f2 	sdiv	r3, r8, r2
 80007f4:	fb97 f7f2 	sdiv	r7, r7, r2
 80007f8:	fb96 f6f2 	sdiv	r6, r6, r2
 80007fc:	6023      	str	r3, [r4, #0]
 80007fe:	6067      	str	r7, [r4, #4]
 8000800:	60a6      	str	r6, [r4, #8]
 8000802:	81e5      	strh	r5, [r4, #14]
 8000804:	8225      	strh	r5, [r4, #16]
 8000806:	8265      	strh	r5, [r4, #18]
 8000808:	82a5      	strh	r5, [r4, #20]
 800080a:	82e5      	strh	r5, [r4, #22]
 800080c:	8325      	strh	r5, [r4, #24]
 800080e:	8365      	strh	r5, [r4, #26]
 8000810:	83a5      	strh	r5, [r4, #28]
 8000812:	83e5      	strh	r5, [r4, #30]
 8000814:	6225      	str	r5, [r4, #32]
 8000816:	6265      	str	r5, [r4, #36]	; 0x24
 8000818:	62a5      	str	r5, [r4, #40]	; 0x28
 800081a:	4628      	mov	r0, r5
 800081c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000820:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000824:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000828:	f06f 0001 	mvn.w	r0, #1
 800082c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000830:	000186a1 	.word	0x000186a1

08000834 <_ZN4CIMU7imu_getEv>:
 8000834:	3020      	adds	r0, #32
 8000836:	4770      	bx	lr

08000838 <_ZN5CGPIO9gpio_initEv>:
 8000838:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800083c:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000840:	b087      	sub	sp, #28
 8000842:	2101      	movs	r1, #1
 8000844:	f000 fd54 	bl	80012f0 <RCC_AHBPeriphClockCmd>
 8000848:	4e41      	ldr	r6, [pc, #260]	; (8000950 <_ZN5CGPIO9gpio_initEv+0x118>)
 800084a:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800084e:	2101      	movs	r1, #1
 8000850:	f000 fd4e 	bl	80012f0 <RCC_AHBPeriphClockCmd>
 8000854:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000858:	2101      	movs	r1, #1
 800085a:	2400      	movs	r4, #0
 800085c:	f000 fd48 	bl	80012f0 <RCC_AHBPeriphClockCmd>
 8000860:	2501      	movs	r5, #1
 8000862:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000866:	2703      	movs	r7, #3
 8000868:	4630      	mov	r0, r6
 800086a:	a902      	add	r1, sp, #8
 800086c:	9302      	str	r3, [sp, #8]
 800086e:	f88d 700d 	strb.w	r7, [sp, #13]
 8000872:	f88d 500c 	strb.w	r5, [sp, #12]
 8000876:	f88d 400e 	strb.w	r4, [sp, #14]
 800087a:	f88d 400f 	strb.w	r4, [sp, #15]
 800087e:	f000 ffd9 	bl	8001834 <GPIO_Init>
 8000882:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000886:	4630      	mov	r0, r6
 8000888:	a902      	add	r1, sp, #8
 800088a:	9302      	str	r3, [sp, #8]
 800088c:	f88d 700d 	strb.w	r7, [sp, #13]
 8000890:	f88d 400c 	strb.w	r4, [sp, #12]
 8000894:	f88d 400f 	strb.w	r4, [sp, #15]
 8000898:	f000 ffcc 	bl	8001834 <GPIO_Init>
 800089c:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 80008a0:	a902      	add	r1, sp, #8
 80008a2:	482c      	ldr	r0, [pc, #176]	; (8000954 <_ZN5CGPIO9gpio_initEv+0x11c>)
 80008a4:	9302      	str	r3, [sp, #8]
 80008a6:	f88d 400c 	strb.w	r4, [sp, #12]
 80008aa:	f88d 500f 	strb.w	r5, [sp, #15]
 80008ae:	f000 ffc1 	bl	8001834 <GPIO_Init>
 80008b2:	4628      	mov	r0, r5
 80008b4:	4629      	mov	r1, r5
 80008b6:	f000 fd29 	bl	800130c <RCC_APB2PeriphClockCmd>
 80008ba:	f04f 0910 	mov.w	r9, #16
 80008be:	2106      	movs	r1, #6
 80008c0:	2002      	movs	r0, #2
 80008c2:	f001 f841 	bl	8001948 <SYSCFG_EXTILineConfig>
 80008c6:	f04f 0806 	mov.w	r8, #6
 80008ca:	eb0d 0009 	add.w	r0, sp, r9
 80008ce:	260f      	movs	r6, #15
 80008d0:	f8cd 8010 	str.w	r8, [sp, #16]
 80008d4:	f88d 4014 	strb.w	r4, [sp, #20]
 80008d8:	f88d 9015 	strb.w	r9, [sp, #21]
 80008dc:	f88d 5016 	strb.w	r5, [sp, #22]
 80008e0:	f000 ff16 	bl	8001710 <EXTI_Init>
 80008e4:	2317      	movs	r3, #23
 80008e6:	a801      	add	r0, sp, #4
 80008e8:	f88d 3004 	strb.w	r3, [sp, #4]
 80008ec:	f88d 6005 	strb.w	r6, [sp, #5]
 80008f0:	f88d 6006 	strb.w	r6, [sp, #6]
 80008f4:	f88d 5007 	strb.w	r5, [sp, #7]
 80008f8:	f000 fed0 	bl	800169c <NVIC_Init>
 80008fc:	210c      	movs	r1, #12
 80008fe:	2002      	movs	r0, #2
 8000900:	f001 f822 	bl	8001948 <SYSCFG_EXTILineConfig>
 8000904:	270c      	movs	r7, #12
 8000906:	eb0d 0009 	add.w	r0, sp, r9
 800090a:	9704      	str	r7, [sp, #16]
 800090c:	f88d 4014 	strb.w	r4, [sp, #20]
 8000910:	f88d 9015 	strb.w	r9, [sp, #21]
 8000914:	f88d 5016 	strb.w	r5, [sp, #22]
 8000918:	f000 fefa 	bl	8001710 <EXTI_Init>
 800091c:	2328      	movs	r3, #40	; 0x28
 800091e:	a801      	add	r0, sp, #4
 8000920:	f88d 3004 	strb.w	r3, [sp, #4]
 8000924:	f88d 6005 	strb.w	r6, [sp, #5]
 8000928:	f88d 6006 	strb.w	r6, [sp, #6]
 800092c:	f88d 5007 	strb.w	r5, [sp, #7]
 8000930:	f000 feb4 	bl	800169c <NVIC_Init>
 8000934:	4640      	mov	r0, r8
 8000936:	f000 ff71 	bl	800181c <EXTI_ClearITPendingBit>
 800093a:	4638      	mov	r0, r7
 800093c:	f000 ff6e 	bl	800181c <EXTI_ClearITPendingBit>
 8000940:	4b05      	ldr	r3, [pc, #20]	; (8000958 <_ZN5CGPIO9gpio_initEv+0x120>)
 8000942:	601c      	str	r4, [r3, #0]
 8000944:	4b05      	ldr	r3, [pc, #20]	; (800095c <_ZN5CGPIO9gpio_initEv+0x124>)
 8000946:	4620      	mov	r0, r4
 8000948:	601c      	str	r4, [r3, #0]
 800094a:	b007      	add	sp, #28
 800094c:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8000950:	48000400 	.word	0x48000400
 8000954:	48000800 	.word	0x48000800
 8000958:	2000007c 	.word	0x2000007c
 800095c:	20000080 	.word	0x20000080

08000960 <_ZN5CGPIO7gpio_onEm>:
 8000960:	4b01      	ldr	r3, [pc, #4]	; (8000968 <_ZN5CGPIO7gpio_onEm+0x8>)
 8000962:	6199      	str	r1, [r3, #24]
 8000964:	4770      	bx	lr
 8000966:	bf00      	nop
 8000968:	48000400 	.word	0x48000400

0800096c <_ZN5CGPIO8gpio_offEm>:
 800096c:	4b01      	ldr	r3, [pc, #4]	; (8000974 <_ZN5CGPIO8gpio_offEm+0x8>)
 800096e:	b289      	uxth	r1, r1
 8000970:	8519      	strh	r1, [r3, #40]	; 0x28
 8000972:	4770      	bx	lr
 8000974:	48000400 	.word	0x48000400

08000978 <_ZN5CGPIO16get_left_encoderEv>:
 8000978:	b082      	sub	sp, #8
 800097a:	b672      	cpsid	i
 800097c:	4b06      	ldr	r3, [pc, #24]	; (8000998 <_ZN5CGPIO16get_left_encoderEv+0x20>)
 800097e:	681b      	ldr	r3, [r3, #0]
 8000980:	9301      	str	r3, [sp, #4]
 8000982:	b662      	cpsie	i
 8000984:	9801      	ldr	r0, [sp, #4]
 8000986:	f240 23ee 	movw	r3, #750	; 0x2ee
 800098a:	4343      	muls	r3, r0
 800098c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8000990:	fbb3 f0f0 	udiv	r0, r3, r0
 8000994:	b002      	add	sp, #8
 8000996:	4770      	bx	lr
 8000998:	2000007c 	.word	0x2000007c

0800099c <_ZN5CGPIO17get_right_encoderEv>:
 800099c:	b082      	sub	sp, #8
 800099e:	b672      	cpsid	i
 80009a0:	4b06      	ldr	r3, [pc, #24]	; (80009bc <_ZN5CGPIO17get_right_encoderEv+0x20>)
 80009a2:	681b      	ldr	r3, [r3, #0]
 80009a4:	9301      	str	r3, [sp, #4]
 80009a6:	b662      	cpsie	i
 80009a8:	9801      	ldr	r0, [sp, #4]
 80009aa:	f240 23ee 	movw	r3, #750	; 0x2ee
 80009ae:	4343      	muls	r3, r0
 80009b0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80009b4:	fbb3 f0f0 	udiv	r0, r3, r0
 80009b8:	b002      	add	sp, #8
 80009ba:	4770      	bx	lr
 80009bc:	20000080 	.word	0x20000080

080009c0 <EXTI9_5_IRQHandler>:
 80009c0:	4a03      	ldr	r2, [pc, #12]	; (80009d0 <EXTI9_5_IRQHandler+0x10>)
 80009c2:	6813      	ldr	r3, [r2, #0]
 80009c4:	2006      	movs	r0, #6
 80009c6:	3301      	adds	r3, #1
 80009c8:	6013      	str	r3, [r2, #0]
 80009ca:	f000 bf27 	b.w	800181c <EXTI_ClearITPendingBit>
 80009ce:	bf00      	nop
 80009d0:	2000007c 	.word	0x2000007c

080009d4 <EXTI15_10_IRQHandler>:
 80009d4:	4a03      	ldr	r2, [pc, #12]	; (80009e4 <EXTI15_10_IRQHandler+0x10>)
 80009d6:	6813      	ldr	r3, [r2, #0]
 80009d8:	200c      	movs	r0, #12
 80009da:	3301      	adds	r3, #1
 80009dc:	6013      	str	r3, [r2, #0]
 80009de:	f000 bf1d 	b.w	800181c <EXTI_ClearITPendingBit>
 80009e2:	bf00      	nop
 80009e4:	20000080 	.word	0x20000080

080009e8 <USART1_IRQHandler>:
 80009e8:	b508      	push	{r3, lr}
 80009ea:	480d      	ldr	r0, [pc, #52]	; (8000a20 <USART1_IRQHandler+0x38>)
 80009ec:	490d      	ldr	r1, [pc, #52]	; (8000a24 <USART1_IRQHandler+0x3c>)
 80009ee:	f000 fd99 	bl	8001524 <USART_GetITStatus>
 80009f2:	b178      	cbz	r0, 8000a14 <USART1_IRQHandler+0x2c>
 80009f4:	480a      	ldr	r0, [pc, #40]	; (8000a20 <USART1_IRQHandler+0x38>)
 80009f6:	f000 fd76 	bl	80014e6 <USART_ReceiveData>
 80009fa:	4b0b      	ldr	r3, [pc, #44]	; (8000a28 <USART1_IRQHandler+0x40>)
 80009fc:	490b      	ldr	r1, [pc, #44]	; (8000a2c <USART1_IRQHandler+0x44>)
 80009fe:	681a      	ldr	r2, [r3, #0]
 8000a00:	b2c0      	uxtb	r0, r0
 8000a02:	5488      	strb	r0, [r1, r2]
 8000a04:	681a      	ldr	r2, [r3, #0]
 8000a06:	3201      	adds	r2, #1
 8000a08:	601a      	str	r2, [r3, #0]
 8000a0a:	681a      	ldr	r2, [r3, #0]
 8000a0c:	2a0f      	cmp	r2, #15
 8000a0e:	bf84      	itt	hi
 8000a10:	2200      	movhi	r2, #0
 8000a12:	601a      	strhi	r2, [r3, #0]
 8000a14:	4802      	ldr	r0, [pc, #8]	; (8000a20 <USART1_IRQHandler+0x38>)
 8000a16:	4903      	ldr	r1, [pc, #12]	; (8000a24 <USART1_IRQHandler+0x3c>)
 8000a18:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000a1c:	f000 bda0 	b.w	8001560 <USART_ClearITPendingBit>
 8000a20:	40013800 	.word	0x40013800
 8000a24:	00050105 	.word	0x00050105
 8000a28:	20000084 	.word	0x20000084
 8000a2c:	20000088 	.word	0x20000088

08000a30 <_ZN9CTerminal7putcharEc>:
 8000a30:	4b04      	ldr	r3, [pc, #16]	; (8000a44 <_ZN9CTerminal7putcharEc+0x14>)
 8000a32:	69da      	ldr	r2, [r3, #28]
 8000a34:	0612      	lsls	r2, r2, #24
 8000a36:	d401      	bmi.n	8000a3c <_ZN9CTerminal7putcharEc+0xc>
 8000a38:	bf00      	nop
 8000a3a:	e7f9      	b.n	8000a30 <_ZN9CTerminal7putcharEc>
 8000a3c:	b289      	uxth	r1, r1
 8000a3e:	8519      	strh	r1, [r3, #40]	; 0x28
 8000a40:	4770      	bx	lr
 8000a42:	bf00      	nop
 8000a44:	40013800 	.word	0x40013800

08000a48 <_ZN9CTerminal13terminal_initEv>:
 8000a48:	b570      	push	{r4, r5, r6, lr}
 8000a4a:	4a31      	ldr	r2, [pc, #196]	; (8000b10 <_ZN9CTerminal13terminal_initEv+0xc8>)
 8000a4c:	2300      	movs	r3, #0
 8000a4e:	6013      	str	r3, [r2, #0]
 8000a50:	4a30      	ldr	r2, [pc, #192]	; (8000b14 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000a52:	b08a      	sub	sp, #40	; 0x28
 8000a54:	4606      	mov	r6, r0
 8000a56:	6013      	str	r3, [r2, #0]
 8000a58:	4a2f      	ldr	r2, [pc, #188]	; (8000b18 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8000a5a:	2400      	movs	r4, #0
 8000a5c:	54d4      	strb	r4, [r2, r3]
 8000a5e:	3301      	adds	r3, #1
 8000a60:	2b10      	cmp	r3, #16
 8000a62:	d1f9      	bne.n	8000a58 <_ZN9CTerminal13terminal_initEv+0x10>
 8000a64:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000a68:	2101      	movs	r1, #1
 8000a6a:	f000 fc41 	bl	80012f0 <RCC_AHBPeriphClockCmd>
 8000a6e:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000a72:	2101      	movs	r1, #1
 8000a74:	f000 fc4a 	bl	800130c <RCC_APB2PeriphClockCmd>
 8000a78:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8000a7c:	9302      	str	r3, [sp, #8]
 8000a7e:	2302      	movs	r3, #2
 8000a80:	f88d 300c 	strb.w	r3, [sp, #12]
 8000a84:	a902      	add	r1, sp, #8
 8000a86:	2303      	movs	r3, #3
 8000a88:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a8c:	f88d 300d 	strb.w	r3, [sp, #13]
 8000a90:	f88d 400e 	strb.w	r4, [sp, #14]
 8000a94:	f88d 400f 	strb.w	r4, [sp, #15]
 8000a98:	f000 fecc 	bl	8001834 <GPIO_Init>
 8000a9c:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000aa0:	2109      	movs	r1, #9
 8000aa2:	2207      	movs	r2, #7
 8000aa4:	f000 ff08 	bl	80018b8 <GPIO_PinAFConfig>
 8000aa8:	2207      	movs	r2, #7
 8000aaa:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000aae:	210a      	movs	r1, #10
 8000ab0:	f000 ff02 	bl	80018b8 <GPIO_PinAFConfig>
 8000ab4:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000ab8:	9304      	str	r3, [sp, #16]
 8000aba:	a904      	add	r1, sp, #16
 8000abc:	230c      	movs	r3, #12
 8000abe:	4817      	ldr	r0, [pc, #92]	; (8000b1c <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000ac0:	9308      	str	r3, [sp, #32]
 8000ac2:	9405      	str	r4, [sp, #20]
 8000ac4:	9406      	str	r4, [sp, #24]
 8000ac6:	9407      	str	r4, [sp, #28]
 8000ac8:	9409      	str	r4, [sp, #36]	; 0x24
 8000aca:	f000 fc9f 	bl	800140c <USART_Init>
 8000ace:	4813      	ldr	r0, [pc, #76]	; (8000b1c <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000ad0:	2101      	movs	r1, #1
 8000ad2:	f000 fcfd 	bl	80014d0 <USART_Cmd>
 8000ad6:	2201      	movs	r2, #1
 8000ad8:	4911      	ldr	r1, [pc, #68]	; (8000b20 <_ZN9CTerminal13terminal_initEv+0xd8>)
 8000ada:	4810      	ldr	r0, [pc, #64]	; (8000b1c <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000adc:	f000 fd08 	bl	80014f0 <USART_ITConfig>
 8000ae0:	2501      	movs	r5, #1
 8000ae2:	2325      	movs	r3, #37	; 0x25
 8000ae4:	a801      	add	r0, sp, #4
 8000ae6:	f88d 3004 	strb.w	r3, [sp, #4]
 8000aea:	f88d 4005 	strb.w	r4, [sp, #5]
 8000aee:	f88d 4006 	strb.w	r4, [sp, #6]
 8000af2:	f88d 5007 	strb.w	r5, [sp, #7]
 8000af6:	f000 fdd1 	bl	800169c <NVIC_Init>
 8000afa:	4629      	mov	r1, r5
 8000afc:	4807      	ldr	r0, [pc, #28]	; (8000b1c <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000afe:	f000 fce7 	bl	80014d0 <USART_Cmd>
 8000b02:	4630      	mov	r0, r6
 8000b04:	210a      	movs	r1, #10
 8000b06:	f7ff ff93 	bl	8000a30 <_ZN9CTerminal7putcharEc>
 8000b0a:	4620      	mov	r0, r4
 8000b0c:	b00a      	add	sp, #40	; 0x28
 8000b0e:	bd70      	pop	{r4, r5, r6, pc}
 8000b10:	20000084 	.word	0x20000084
 8000b14:	20000098 	.word	0x20000098
 8000b18:	20000088 	.word	0x20000088
 8000b1c:	40013800 	.word	0x40013800
 8000b20:	00050105 	.word	0x00050105

08000b24 <_ZN9CTerminal4putsEPc>:
 8000b24:	b538      	push	{r3, r4, r5, lr}
 8000b26:	4605      	mov	r5, r0
 8000b28:	1e4c      	subs	r4, r1, #1
 8000b2a:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000b2e:	b119      	cbz	r1, 8000b38 <_ZN9CTerminal4putsEPc+0x14>
 8000b30:	4628      	mov	r0, r5
 8000b32:	f7ff ff7d 	bl	8000a30 <_ZN9CTerminal7putcharEc>
 8000b36:	e7f8      	b.n	8000b2a <_ZN9CTerminal4putsEPc+0x6>
 8000b38:	2001      	movs	r0, #1
 8000b3a:	bd38      	pop	{r3, r4, r5, pc}

08000b3c <_ZN9CTerminal4putiEl>:
 8000b3c:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8000b3e:	1e0b      	subs	r3, r1, #0
 8000b40:	f04f 0200 	mov.w	r2, #0
 8000b44:	bfba      	itte	lt
 8000b46:	425b      	neglt	r3, r3
 8000b48:	2501      	movlt	r5, #1
 8000b4a:	4615      	movge	r5, r2
 8000b4c:	f88d 200f 	strb.w	r2, [sp, #15]
 8000b50:	210a      	movs	r1, #10
 8000b52:	220a      	movs	r2, #10
 8000b54:	ac01      	add	r4, sp, #4
 8000b56:	fb93 f6f2 	sdiv	r6, r3, r2
 8000b5a:	fb02 3316 	mls	r3, r2, r6, r3
 8000b5e:	3330      	adds	r3, #48	; 0x30
 8000b60:	550b      	strb	r3, [r1, r4]
 8000b62:	1e4a      	subs	r2, r1, #1
 8000b64:	4633      	mov	r3, r6
 8000b66:	b10e      	cbz	r6, 8000b6c <_ZN9CTerminal4putiEl+0x30>
 8000b68:	4611      	mov	r1, r2
 8000b6a:	e7f2      	b.n	8000b52 <_ZN9CTerminal4putiEl+0x16>
 8000b6c:	b12d      	cbz	r5, 8000b7a <_ZN9CTerminal4putiEl+0x3e>
 8000b6e:	ab04      	add	r3, sp, #16
 8000b70:	4413      	add	r3, r2
 8000b72:	212d      	movs	r1, #45	; 0x2d
 8000b74:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8000b78:	4611      	mov	r1, r2
 8000b7a:	4421      	add	r1, r4
 8000b7c:	f7ff ffd2 	bl	8000b24 <_ZN9CTerminal4putsEPc>
 8000b80:	b004      	add	sp, #16
 8000b82:	bd70      	pop	{r4, r5, r6, pc}

08000b84 <_ZN9CTerminal5putuiEm>:
 8000b84:	b530      	push	{r4, r5, lr}
 8000b86:	b085      	sub	sp, #20
 8000b88:	2300      	movs	r3, #0
 8000b8a:	f88d 300f 	strb.w	r3, [sp, #15]
 8000b8e:	220a      	movs	r2, #10
 8000b90:	230a      	movs	r3, #10
 8000b92:	ac01      	add	r4, sp, #4
 8000b94:	fbb1 f5f3 	udiv	r5, r1, r3
 8000b98:	fb03 1315 	mls	r3, r3, r5, r1
 8000b9c:	3330      	adds	r3, #48	; 0x30
 8000b9e:	5513      	strb	r3, [r2, r4]
 8000ba0:	4629      	mov	r1, r5
 8000ba2:	1e53      	subs	r3, r2, #1
 8000ba4:	b10d      	cbz	r5, 8000baa <_ZN9CTerminal5putuiEm+0x26>
 8000ba6:	461a      	mov	r2, r3
 8000ba8:	e7f2      	b.n	8000b90 <_ZN9CTerminal5putuiEm+0xc>
 8000baa:	18a1      	adds	r1, r4, r2
 8000bac:	f7ff ffba 	bl	8000b24 <_ZN9CTerminal4putsEPc>
 8000bb0:	b005      	add	sp, #20
 8000bb2:	bd30      	pop	{r4, r5, pc}

08000bb4 <_ZN9CTerminal4putxEm>:
 8000bb4:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000bb6:	2300      	movs	r3, #0
 8000bb8:	f88d 300f 	strb.w	r3, [sp, #15]
 8000bbc:	220a      	movs	r2, #10
 8000bbe:	f001 030f 	and.w	r3, r1, #15
 8000bc2:	2b09      	cmp	r3, #9
 8000bc4:	ac01      	add	r4, sp, #4
 8000bc6:	bfd4      	ite	le
 8000bc8:	3330      	addle	r3, #48	; 0x30
 8000bca:	3357      	addgt	r3, #87	; 0x57
 8000bcc:	0909      	lsrs	r1, r1, #4
 8000bce:	54a3      	strb	r3, [r4, r2]
 8000bd0:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8000bd4:	d001      	beq.n	8000bda <_ZN9CTerminal4putxEm+0x26>
 8000bd6:	461a      	mov	r2, r3
 8000bd8:	e7f1      	b.n	8000bbe <_ZN9CTerminal4putxEm+0xa>
 8000bda:	18a1      	adds	r1, r4, r2
 8000bdc:	f7ff ffa2 	bl	8000b24 <_ZN9CTerminal4putsEPc>
 8000be0:	b004      	add	sp, #16
 8000be2:	bd10      	pop	{r4, pc}

08000be4 <_ZN9CTerminal6printfEPKcz>:
 8000be4:	b40e      	push	{r1, r2, r3}
 8000be6:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8000be8:	ab07      	add	r3, sp, #28
 8000bea:	4604      	mov	r4, r0
 8000bec:	f853 6b04 	ldr.w	r6, [r3], #4
 8000bf0:	9301      	str	r3, [sp, #4]
 8000bf2:	2500      	movs	r5, #0
 8000bf4:	5d71      	ldrb	r1, [r6, r5]
 8000bf6:	2900      	cmp	r1, #0
 8000bf8:	d040      	beq.n	8000c7c <_ZN9CTerminal6printfEPKcz+0x98>
 8000bfa:	2925      	cmp	r1, #37	; 0x25
 8000bfc:	d004      	beq.n	8000c08 <_ZN9CTerminal6printfEPKcz+0x24>
 8000bfe:	4620      	mov	r0, r4
 8000c00:	f7ff ff16 	bl	8000a30 <_ZN9CTerminal7putcharEc>
 8000c04:	3501      	adds	r5, #1
 8000c06:	e7f5      	b.n	8000bf4 <_ZN9CTerminal6printfEPKcz+0x10>
 8000c08:	1973      	adds	r3, r6, r5
 8000c0a:	7859      	ldrb	r1, [r3, #1]
 8000c0c:	2969      	cmp	r1, #105	; 0x69
 8000c0e:	d018      	beq.n	8000c42 <_ZN9CTerminal6printfEPKcz+0x5e>
 8000c10:	d809      	bhi.n	8000c26 <_ZN9CTerminal6printfEPKcz+0x42>
 8000c12:	2925      	cmp	r1, #37	; 0x25
 8000c14:	d02d      	beq.n	8000c72 <_ZN9CTerminal6printfEPKcz+0x8e>
 8000c16:	2963      	cmp	r1, #99	; 0x63
 8000c18:	d12e      	bne.n	8000c78 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c1a:	9b01      	ldr	r3, [sp, #4]
 8000c1c:	1d1a      	adds	r2, r3, #4
 8000c1e:	9201      	str	r2, [sp, #4]
 8000c20:	4620      	mov	r0, r4
 8000c22:	7819      	ldrb	r1, [r3, #0]
 8000c24:	e026      	b.n	8000c74 <_ZN9CTerminal6printfEPKcz+0x90>
 8000c26:	2975      	cmp	r1, #117	; 0x75
 8000c28:	d013      	beq.n	8000c52 <_ZN9CTerminal6printfEPKcz+0x6e>
 8000c2a:	2978      	cmp	r1, #120	; 0x78
 8000c2c:	d019      	beq.n	8000c62 <_ZN9CTerminal6printfEPKcz+0x7e>
 8000c2e:	2973      	cmp	r1, #115	; 0x73
 8000c30:	d122      	bne.n	8000c78 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c32:	9b01      	ldr	r3, [sp, #4]
 8000c34:	4620      	mov	r0, r4
 8000c36:	1d1a      	adds	r2, r3, #4
 8000c38:	6819      	ldr	r1, [r3, #0]
 8000c3a:	9201      	str	r2, [sp, #4]
 8000c3c:	f7ff ff72 	bl	8000b24 <_ZN9CTerminal4putsEPc>
 8000c40:	e01a      	b.n	8000c78 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c42:	9b01      	ldr	r3, [sp, #4]
 8000c44:	4620      	mov	r0, r4
 8000c46:	1d1a      	adds	r2, r3, #4
 8000c48:	6819      	ldr	r1, [r3, #0]
 8000c4a:	9201      	str	r2, [sp, #4]
 8000c4c:	f7ff ff76 	bl	8000b3c <_ZN9CTerminal4putiEl>
 8000c50:	e012      	b.n	8000c78 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c52:	9b01      	ldr	r3, [sp, #4]
 8000c54:	4620      	mov	r0, r4
 8000c56:	1d1a      	adds	r2, r3, #4
 8000c58:	6819      	ldr	r1, [r3, #0]
 8000c5a:	9201      	str	r2, [sp, #4]
 8000c5c:	f7ff ff92 	bl	8000b84 <_ZN9CTerminal5putuiEm>
 8000c60:	e00a      	b.n	8000c78 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c62:	9b01      	ldr	r3, [sp, #4]
 8000c64:	4620      	mov	r0, r4
 8000c66:	1d1a      	adds	r2, r3, #4
 8000c68:	6819      	ldr	r1, [r3, #0]
 8000c6a:	9201      	str	r2, [sp, #4]
 8000c6c:	f7ff ffa2 	bl	8000bb4 <_ZN9CTerminal4putxEm>
 8000c70:	e002      	b.n	8000c78 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c72:	4620      	mov	r0, r4
 8000c74:	f7ff fedc 	bl	8000a30 <_ZN9CTerminal7putcharEc>
 8000c78:	3502      	adds	r5, #2
 8000c7a:	e7bb      	b.n	8000bf4 <_ZN9CTerminal6printfEPKcz+0x10>
 8000c7c:	b003      	add	sp, #12
 8000c7e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c82:	b003      	add	sp, #12
 8000c84:	4770      	bx	lr
	...

08000c88 <_Z13sensor_threadv>:
 8000c88:	b510      	push	{r4, lr}
 8000c8a:	480b      	ldr	r0, [pc, #44]	; (8000cb8 <_Z13sensor_threadv+0x30>)
 8000c8c:	2100      	movs	r1, #0
 8000c8e:	220a      	movs	r2, #10
 8000c90:	f7ff fb1a 	bl	80002c8 <_ZN6CTimer22event_timer_set_periodEhm>
 8000c94:	4808      	ldr	r0, [pc, #32]	; (8000cb8 <_Z13sensor_threadv+0x30>)
 8000c96:	2100      	movs	r1, #0
 8000c98:	f7ff fb2a 	bl	80002f0 <_ZN6CTimer14event_timer_ccEh>
 8000c9c:	4604      	mov	r4, r0
 8000c9e:	2800      	cmp	r0, #0
 8000ca0:	d0f8      	beq.n	8000c94 <_Z13sensor_threadv+0xc>
 8000ca2:	4805      	ldr	r0, [pc, #20]	; (8000cb8 <_Z13sensor_threadv+0x30>)
 8000ca4:	f7ff fc82 	bl	80005ac <_ZN4CIMU8imu_readEv>
 8000ca8:	2c09      	cmp	r4, #9
 8000caa:	d9f3      	bls.n	8000c94 <_Z13sensor_threadv+0xc>
 8000cac:	4802      	ldr	r0, [pc, #8]	; (8000cb8 <_Z13sensor_threadv+0x30>)
 8000cae:	4903      	ldr	r1, [pc, #12]	; (8000cbc <_Z13sensor_threadv+0x34>)
 8000cb0:	4622      	mov	r2, r4
 8000cb2:	f7ff ff97 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000cb6:	e7ed      	b.n	8000c94 <_Z13sensor_threadv+0xc>
 8000cb8:	2000029c 	.word	0x2000029c
 8000cbc:	080019a8 	.word	0x080019a8

08000cc0 <_Z9ai_threadv>:
 8000cc0:	b508      	push	{r3, lr}
 8000cc2:	4802      	ldr	r0, [pc, #8]	; (8000ccc <_Z9ai_threadv+0xc>)
 8000cc4:	210a      	movs	r1, #10
 8000cc6:	f7ff faed 	bl	80002a4 <_ZN6CTimer8delay_msEm>
 8000cca:	e7fa      	b.n	8000cc2 <_Z9ai_threadv+0x2>
 8000ccc:	2000029c 	.word	0x2000029c

08000cd0 <_Z12print_threadv>:
 8000cd0:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000cd2:	f44f 7296 	mov.w	r2, #300	; 0x12c
 8000cd6:	4824      	ldr	r0, [pc, #144]	; (8000d68 <_Z12print_threadv+0x98>)
 8000cd8:	2101      	movs	r1, #1
 8000cda:	f7ff faf5 	bl	80002c8 <_ZN6CTimer22event_timer_set_periodEhm>
 8000cde:	4822      	ldr	r0, [pc, #136]	; (8000d68 <_Z12print_threadv+0x98>)
 8000ce0:	2101      	movs	r1, #1
 8000ce2:	f7ff fb05 	bl	80002f0 <_ZN6CTimer14event_timer_ccEh>
 8000ce6:	4604      	mov	r4, r0
 8000ce8:	2800      	cmp	r0, #0
 8000cea:	d0f8      	beq.n	8000cde <_Z12print_threadv+0xe>
 8000cec:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8000cf0:	481d      	ldr	r0, [pc, #116]	; (8000d68 <_Z12print_threadv+0x98>)
 8000cf2:	f7ff fe35 	bl	8000960 <_ZN5CGPIO7gpio_onEm>
 8000cf6:	481c      	ldr	r0, [pc, #112]	; (8000d68 <_Z12print_threadv+0x98>)
 8000cf8:	f7ff fac6 	bl	8000288 <_ZN6CTimer8get_timeEv>
 8000cfc:	491b      	ldr	r1, [pc, #108]	; (8000d6c <_Z12print_threadv+0x9c>)
 8000cfe:	4602      	mov	r2, r0
 8000d00:	4819      	ldr	r0, [pc, #100]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d02:	f7ff ff6f 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000d06:	4818      	ldr	r0, [pc, #96]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d08:	f7ff fe36 	bl	8000978 <_ZN5CGPIO16get_left_encoderEv>
 8000d0c:	4605      	mov	r5, r0
 8000d0e:	4816      	ldr	r0, [pc, #88]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d10:	f7ff fe44 	bl	800099c <_ZN5CGPIO17get_right_encoderEv>
 8000d14:	462a      	mov	r2, r5
 8000d16:	4603      	mov	r3, r0
 8000d18:	4915      	ldr	r1, [pc, #84]	; (8000d70 <_Z12print_threadv+0xa0>)
 8000d1a:	4813      	ldr	r0, [pc, #76]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d1c:	f7ff ff62 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000d20:	4811      	ldr	r0, [pc, #68]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d22:	f7ff fd87 	bl	8000834 <_ZN4CIMU7imu_getEv>
 8000d26:	6806      	ldr	r6, [r0, #0]
 8000d28:	480f      	ldr	r0, [pc, #60]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d2a:	f7ff fd83 	bl	8000834 <_ZN4CIMU7imu_getEv>
 8000d2e:	6845      	ldr	r5, [r0, #4]
 8000d30:	480d      	ldr	r0, [pc, #52]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d32:	f7ff fd7f 	bl	8000834 <_ZN4CIMU7imu_getEv>
 8000d36:	6883      	ldr	r3, [r0, #8]
 8000d38:	9300      	str	r3, [sp, #0]
 8000d3a:	4632      	mov	r2, r6
 8000d3c:	462b      	mov	r3, r5
 8000d3e:	480a      	ldr	r0, [pc, #40]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d40:	490c      	ldr	r1, [pc, #48]	; (8000d74 <_Z12print_threadv+0xa4>)
 8000d42:	f7ff ff4f 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000d46:	4808      	ldr	r0, [pc, #32]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d48:	490b      	ldr	r1, [pc, #44]	; (8000d78 <_Z12print_threadv+0xa8>)
 8000d4a:	f7ff ff4b 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000d4e:	4806      	ldr	r0, [pc, #24]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d50:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8000d54:	f7ff fe0a 	bl	800096c <_ZN5CGPIO8gpio_offEm>
 8000d58:	2c01      	cmp	r4, #1
 8000d5a:	d9c0      	bls.n	8000cde <_Z12print_threadv+0xe>
 8000d5c:	4802      	ldr	r0, [pc, #8]	; (8000d68 <_Z12print_threadv+0x98>)
 8000d5e:	4907      	ldr	r1, [pc, #28]	; (8000d7c <_Z12print_threadv+0xac>)
 8000d60:	4622      	mov	r2, r4
 8000d62:	f7ff ff3f 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000d66:	e7ba      	b.n	8000cde <_Z12print_threadv+0xe>
 8000d68:	2000029c 	.word	0x2000029c
 8000d6c:	080019be 	.word	0x080019be
 8000d70:	080019ce 	.word	0x080019ce
 8000d74:	080019de 	.word	0x080019de
 8000d78:	08001a29 	.word	0x08001a29
 8000d7c:	080019ef 	.word	0x080019ef

08000d80 <usr_main>:
 8000d80:	b538      	push	{r3, r4, r5, lr}
 8000d82:	f000 fc89 	bl	8001698 <sytem_clock_init>
 8000d86:	f000 f931 	bl	8000fec <lib_os_init>
 8000d8a:	2400      	movs	r4, #0
 8000d8c:	4817      	ldr	r0, [pc, #92]	; (8000dec <usr_main+0x6c>)
 8000d8e:	f7ff fabd 	bl	800030c <_ZN7CKodama4initEv>
 8000d92:	4605      	mov	r5, r0
 8000d94:	4916      	ldr	r1, [pc, #88]	; (8000df0 <usr_main+0x70>)
 8000d96:	4815      	ldr	r0, [pc, #84]	; (8000dec <usr_main+0x6c>)
 8000d98:	4622      	mov	r2, r4
 8000d9a:	462b      	mov	r3, r5
 8000d9c:	f7ff ff22 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000da0:	4812      	ldr	r0, [pc, #72]	; (8000dec <usr_main+0x6c>)
 8000da2:	b91d      	cbnz	r5, 8000dac <usr_main+0x2c>
 8000da4:	4913      	ldr	r1, [pc, #76]	; (8000df4 <usr_main+0x74>)
 8000da6:	f7ff ff1d 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000daa:	e005      	b.n	8000db8 <usr_main+0x38>
 8000dac:	4912      	ldr	r1, [pc, #72]	; (8000df8 <usr_main+0x78>)
 8000dae:	3401      	adds	r4, #1
 8000db0:	f7ff ff18 	bl	8000be4 <_ZN9CTerminal6printfEPKcz>
 8000db4:	2c08      	cmp	r4, #8
 8000db6:	d1e9      	bne.n	8000d8c <usr_main+0xc>
 8000db8:	4910      	ldr	r1, [pc, #64]	; (8000dfc <usr_main+0x7c>)
 8000dba:	4811      	ldr	r0, [pc, #68]	; (8000e00 <usr_main+0x80>)
 8000dbc:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000dc0:	2306      	movs	r3, #6
 8000dc2:	f000 f897 	bl	8000ef4 <create_thread>
 8000dc6:	490f      	ldr	r1, [pc, #60]	; (8000e04 <usr_main+0x84>)
 8000dc8:	480f      	ldr	r0, [pc, #60]	; (8000e08 <usr_main+0x88>)
 8000dca:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000dce:	2306      	movs	r3, #6
 8000dd0:	f000 f890 	bl	8000ef4 <create_thread>
 8000dd4:	2306      	movs	r3, #6
 8000dd6:	480d      	ldr	r0, [pc, #52]	; (8000e0c <usr_main+0x8c>)
 8000dd8:	490d      	ldr	r1, [pc, #52]	; (8000e10 <usr_main+0x90>)
 8000dda:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000dde:	f000 f889 	bl	8000ef4 <create_thread>
 8000de2:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000de6:	f000 b87f 	b.w	8000ee8 <kernel_start>
 8000dea:	bf00      	nop
 8000dec:	2000029c 	.word	0x2000029c
 8000df0:	08001a04 	.word	0x08001a04
 8000df4:	08001a19 	.word	0x08001a19
 8000df8:	08001a20 	.word	0x08001a20
 8000dfc:	200004d4 	.word	0x200004d4
 8000e00:	08000c89 	.word	0x08000c89
 8000e04:	2000009c 	.word	0x2000009c
 8000e08:	08000cc1 	.word	0x08000cc1
 8000e0c:	08000cd1 	.word	0x08000cd1
 8000e10:	200002d4 	.word	0x200002d4

08000e14 <thread_ending>:
 8000e14:	b672      	cpsid	i
 8000e16:	4b05      	ldr	r3, [pc, #20]	; (8000e2c <thread_ending+0x18>)
 8000e18:	681a      	ldr	r2, [r3, #0]
 8000e1a:	4b05      	ldr	r3, [pc, #20]	; (8000e30 <thread_ending+0x1c>)
 8000e1c:	210c      	movs	r1, #12
 8000e1e:	fb01 3302 	mla	r3, r1, r2, r3
 8000e22:	2200      	movs	r2, #0
 8000e24:	605a      	str	r2, [r3, #4]
 8000e26:	b662      	cpsie	i
 8000e28:	bf00      	nop
 8000e2a:	e7fd      	b.n	8000e28 <thread_ending+0x14>
 8000e2c:	2000071c 	.word	0x2000071c
 8000e30:	200006d4 	.word	0x200006d4

08000e34 <null_thread>:
 8000e34:	b508      	push	{r3, lr}
 8000e36:	f000 fc2b 	bl	8001690 <sleep>
 8000e3a:	e7fc      	b.n	8000e36 <null_thread+0x2>

08000e3c <scheduler>:
 8000e3c:	b570      	push	{r4, r5, r6, lr}
 8000e3e:	2200      	movs	r2, #0
 8000e40:	4611      	mov	r1, r2
 8000e42:	4b15      	ldr	r3, [pc, #84]	; (8000e98 <scheduler+0x5c>)
 8000e44:	200c      	movs	r0, #12
 8000e46:	fb00 f401 	mul.w	r4, r0, r1
 8000e4a:	191e      	adds	r6, r3, r4
 8000e4c:	6875      	ldr	r5, [r6, #4]
 8000e4e:	f015 0f02 	tst.w	r5, #2
 8000e52:	461d      	mov	r5, r3
 8000e54:	d10a      	bne.n	8000e6c <scheduler+0x30>
 8000e56:	6876      	ldr	r6, [r6, #4]
 8000e58:	07f6      	lsls	r6, r6, #31
 8000e5a:	d507      	bpl.n	8000e6c <scheduler+0x30>
 8000e5c:	4350      	muls	r0, r2
 8000e5e:	5b1c      	ldrh	r4, [r3, r4]
 8000e60:	5a18      	ldrh	r0, [r3, r0]
 8000e62:	b2a4      	uxth	r4, r4
 8000e64:	b280      	uxth	r0, r0
 8000e66:	4284      	cmp	r4, r0
 8000e68:	bf38      	it	cc
 8000e6a:	460a      	movcc	r2, r1
 8000e6c:	200c      	movs	r0, #12
 8000e6e:	4348      	muls	r0, r1
 8000e70:	5a1c      	ldrh	r4, [r3, r0]
 8000e72:	b2a4      	uxth	r4, r4
 8000e74:	b11c      	cbz	r4, 8000e7e <scheduler+0x42>
 8000e76:	5a1c      	ldrh	r4, [r3, r0]
 8000e78:	3c01      	subs	r4, #1
 8000e7a:	b2a4      	uxth	r4, r4
 8000e7c:	521c      	strh	r4, [r3, r0]
 8000e7e:	3101      	adds	r1, #1
 8000e80:	2906      	cmp	r1, #6
 8000e82:	d1de      	bne.n	8000e42 <scheduler+0x6>
 8000e84:	230c      	movs	r3, #12
 8000e86:	4353      	muls	r3, r2
 8000e88:	18e9      	adds	r1, r5, r3
 8000e8a:	8849      	ldrh	r1, [r1, #2]
 8000e8c:	b289      	uxth	r1, r1
 8000e8e:	52e9      	strh	r1, [r5, r3]
 8000e90:	4b02      	ldr	r3, [pc, #8]	; (8000e9c <scheduler+0x60>)
 8000e92:	601a      	str	r2, [r3, #0]
 8000e94:	bd70      	pop	{r4, r5, r6, pc}
 8000e96:	bf00      	nop
 8000e98:	200006d4 	.word	0x200006d4
 8000e9c:	2000071c 	.word	0x2000071c

08000ea0 <SysTick_Handler>:
 8000ea0:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000ea4:	f3ef 8308 	mrs	r3, MSP
 8000ea8:	4c0d      	ldr	r4, [pc, #52]	; (8000ee0 <SysTick_Handler+0x40>)
 8000eaa:	4d0e      	ldr	r5, [pc, #56]	; (8000ee4 <SysTick_Handler+0x44>)
 8000eac:	6822      	ldr	r2, [r4, #0]
 8000eae:	3201      	adds	r2, #1
 8000eb0:	bf1d      	ittte	ne
 8000eb2:	6822      	ldrne	r2, [r4, #0]
 8000eb4:	210c      	movne	r1, #12
 8000eb6:	fb01 5202 	mlane	r2, r1, r2, r5
 8000eba:	2300      	moveq	r3, #0
 8000ebc:	bf14      	ite	ne
 8000ebe:	6093      	strne	r3, [r2, #8]
 8000ec0:	6023      	streq	r3, [r4, #0]
 8000ec2:	f7ff ffbb 	bl	8000e3c <scheduler>
 8000ec6:	6822      	ldr	r2, [r4, #0]
 8000ec8:	230c      	movs	r3, #12
 8000eca:	fb03 5302 	mla	r3, r3, r2, r5
 8000ece:	689a      	ldr	r2, [r3, #8]
 8000ed0:	f06f 0306 	mvn.w	r3, #6
 8000ed4:	469e      	mov	lr, r3
 8000ed6:	f382 8808 	msr	MSP, r2
 8000eda:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000ede:	4770      	bx	lr
 8000ee0:	2000071c 	.word	0x2000071c
 8000ee4:	200006d4 	.word	0x200006d4

08000ee8 <kernel_start>:
 8000ee8:	b508      	push	{r3, lr}
 8000eea:	f000 fbbf 	bl	800166c <sys_tick_init>
 8000eee:	bf00      	nop
 8000ef0:	e7fd      	b.n	8000eee <kernel_start+0x6>
	...

08000ef4 <create_thread>:
 8000ef4:	f022 0203 	bic.w	r2, r2, #3
 8000ef8:	3a40      	subs	r2, #64	; 0x40
 8000efa:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000efe:	eb01 0e02 	add.w	lr, r1, r2
 8000f02:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8000f06:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8000f0a:	323c      	adds	r2, #60	; 0x3c
 8000f0c:	440e      	add	r6, r1
 8000f0e:	440f      	add	r7, r1
 8000f10:	4411      	add	r1, r2
 8000f12:	2200      	movs	r2, #0
 8000f14:	b672      	cpsid	i
 8000f16:	f8df c054 	ldr.w	ip, [pc, #84]	; 8000f6c <create_thread+0x78>
 8000f1a:	250c      	movs	r5, #12
 8000f1c:	4355      	muls	r5, r2
 8000f1e:	eb0c 0405 	add.w	r4, ip, r5
 8000f22:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8000f26:	f018 0f01 	tst.w	r8, #1
 8000f2a:	d114      	bne.n	8000f56 <create_thread+0x62>
 8000f2c:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8000f70 <create_thread+0x7c>
 8000f30:	f8c4 e008 	str.w	lr, [r4, #8]
 8000f34:	2b05      	cmp	r3, #5
 8000f36:	f8c6 8000 	str.w	r8, [r6]
 8000f3a:	bf98      	it	ls
 8000f3c:	2306      	movls	r3, #6
 8000f3e:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8000f42:	6038      	str	r0, [r7, #0]
 8000f44:	f8c1 8000 	str.w	r8, [r1]
 8000f48:	8063      	strh	r3, [r4, #2]
 8000f4a:	f82c 3005 	strh.w	r3, [ip, r5]
 8000f4e:	2501      	movs	r5, #1
 8000f50:	6065      	str	r5, [r4, #4]
 8000f52:	4614      	mov	r4, r2
 8000f54:	e000      	b.n	8000f58 <create_thread+0x64>
 8000f56:	2406      	movs	r4, #6
 8000f58:	b662      	cpsie	i
 8000f5a:	3201      	adds	r2, #1
 8000f5c:	2a06      	cmp	r2, #6
 8000f5e:	d001      	beq.n	8000f64 <create_thread+0x70>
 8000f60:	2c06      	cmp	r4, #6
 8000f62:	d0d7      	beq.n	8000f14 <create_thread+0x20>
 8000f64:	4620      	mov	r0, r4
 8000f66:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000f6a:	bf00      	nop
 8000f6c:	200006d4 	.word	0x200006d4
 8000f70:	08000e15 	.word	0x08000e15

08000f74 <kernel_init>:
 8000f74:	b510      	push	{r4, lr}
 8000f76:	2300      	movs	r3, #0
 8000f78:	490b      	ldr	r1, [pc, #44]	; (8000fa8 <kernel_init+0x34>)
 8000f7a:	220c      	movs	r2, #12
 8000f7c:	435a      	muls	r2, r3
 8000f7e:	188c      	adds	r4, r1, r2
 8000f80:	2000      	movs	r0, #0
 8000f82:	6060      	str	r0, [r4, #4]
 8000f84:	3301      	adds	r3, #1
 8000f86:	2006      	movs	r0, #6
 8000f88:	4283      	cmp	r3, r0
 8000f8a:	8060      	strh	r0, [r4, #2]
 8000f8c:	5288      	strh	r0, [r1, r2]
 8000f8e:	d1f3      	bne.n	8000f78 <kernel_init+0x4>
 8000f90:	4b06      	ldr	r3, [pc, #24]	; (8000fac <kernel_init+0x38>)
 8000f92:	4807      	ldr	r0, [pc, #28]	; (8000fb0 <kernel_init+0x3c>)
 8000f94:	4907      	ldr	r1, [pc, #28]	; (8000fb4 <kernel_init+0x40>)
 8000f96:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000f9a:	601a      	str	r2, [r3, #0]
 8000f9c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000fa0:	2280      	movs	r2, #128	; 0x80
 8000fa2:	23ff      	movs	r3, #255	; 0xff
 8000fa4:	f7ff bfa6 	b.w	8000ef4 <create_thread>
 8000fa8:	200006d4 	.word	0x200006d4
 8000fac:	2000071c 	.word	0x2000071c
 8000fb0:	08000e35 	.word	0x08000e35
 8000fb4:	20000720 	.word	0x20000720

08000fb8 <messages_init>:
 8000fb8:	4a0a      	ldr	r2, [pc, #40]	; (8000fe4 <messages_init+0x2c>)
 8000fba:	2300      	movs	r3, #0
 8000fbc:	b510      	push	{r4, lr}
 8000fbe:	6013      	str	r3, [r2, #0]
 8000fc0:	6053      	str	r3, [r2, #4]
 8000fc2:	6093      	str	r3, [r2, #8]
 8000fc4:	60d3      	str	r3, [r2, #12]
 8000fc6:	6113      	str	r3, [r2, #16]
 8000fc8:	6153      	str	r3, [r2, #20]
 8000fca:	4c07      	ldr	r4, [pc, #28]	; (8000fe8 <messages_init+0x30>)
 8000fcc:	0118      	lsls	r0, r3, #4
 8000fce:	1821      	adds	r1, r4, r0
 8000fd0:	3301      	adds	r3, #1
 8000fd2:	2200      	movs	r2, #0
 8000fd4:	2b04      	cmp	r3, #4
 8000fd6:	604a      	str	r2, [r1, #4]
 8000fd8:	5022      	str	r2, [r4, r0]
 8000fda:	60ca      	str	r2, [r1, #12]
 8000fdc:	608a      	str	r2, [r1, #8]
 8000fde:	d1f4      	bne.n	8000fca <messages_init+0x12>
 8000fe0:	bd10      	pop	{r4, pc}
 8000fe2:	bf00      	nop
 8000fe4:	200007a0 	.word	0x200007a0
 8000fe8:	200007b8 	.word	0x200007b8

08000fec <lib_os_init>:
 8000fec:	b508      	push	{r3, lr}
 8000fee:	f7ff ffc1 	bl	8000f74 <kernel_init>
 8000ff2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000ff6:	f7ff bfdf 	b.w	8000fb8 <messages_init>

08000ffa <main>:
 8000ffa:	b508      	push	{r3, lr}
 8000ffc:	f7ff fec0 	bl	8000d80 <usr_main>
 8001000:	2000      	movs	r0, #0
 8001002:	bd08      	pop	{r3, pc}

08001004 <RCC_GetClocksFreq>:
 8001004:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001008:	4f9b      	ldr	r7, [pc, #620]	; (8001278 <RCC_GetClocksFreq+0x274>)
 800100a:	687b      	ldr	r3, [r7, #4]
 800100c:	f003 030c 	and.w	r3, r3, #12
 8001010:	2b04      	cmp	r3, #4
 8001012:	d005      	beq.n	8001020 <RCC_GetClocksFreq+0x1c>
 8001014:	2b08      	cmp	r3, #8
 8001016:	d006      	beq.n	8001026 <RCC_GetClocksFreq+0x22>
 8001018:	4a98      	ldr	r2, [pc, #608]	; (800127c <RCC_GetClocksFreq+0x278>)
 800101a:	6002      	str	r2, [r0, #0]
 800101c:	b9b3      	cbnz	r3, 800104c <RCC_GetClocksFreq+0x48>
 800101e:	e016      	b.n	800104e <RCC_GetClocksFreq+0x4a>
 8001020:	4b96      	ldr	r3, [pc, #600]	; (800127c <RCC_GetClocksFreq+0x278>)
 8001022:	6003      	str	r3, [r0, #0]
 8001024:	e012      	b.n	800104c <RCC_GetClocksFreq+0x48>
 8001026:	687b      	ldr	r3, [r7, #4]
 8001028:	6879      	ldr	r1, [r7, #4]
 800102a:	f3c3 4383 	ubfx	r3, r3, #18, #4
 800102e:	1c9a      	adds	r2, r3, #2
 8001030:	03cb      	lsls	r3, r1, #15
 8001032:	bf49      	itett	mi
 8001034:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8001036:	4b92      	ldrpl	r3, [pc, #584]	; (8001280 <RCC_GetClocksFreq+0x27c>)
 8001038:	4990      	ldrmi	r1, [pc, #576]	; (800127c <RCC_GetClocksFreq+0x278>)
 800103a:	f003 030f 	andmi.w	r3, r3, #15
 800103e:	bf44      	itt	mi
 8001040:	3301      	addmi	r3, #1
 8001042:	fbb1 f3f3 	udivmi	r3, r1, r3
 8001046:	4353      	muls	r3, r2
 8001048:	6003      	str	r3, [r0, #0]
 800104a:	e000      	b.n	800104e <RCC_GetClocksFreq+0x4a>
 800104c:	2300      	movs	r3, #0
 800104e:	687a      	ldr	r2, [r7, #4]
 8001050:	4e8c      	ldr	r6, [pc, #560]	; (8001284 <RCC_GetClocksFreq+0x280>)
 8001052:	f8df c234 	ldr.w	ip, [pc, #564]	; 8001288 <RCC_GetClocksFreq+0x284>
 8001056:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800105a:	5cb4      	ldrb	r4, [r6, r2]
 800105c:	6802      	ldr	r2, [r0, #0]
 800105e:	b2e4      	uxtb	r4, r4
 8001060:	fa22 f104 	lsr.w	r1, r2, r4
 8001064:	6041      	str	r1, [r0, #4]
 8001066:	687d      	ldr	r5, [r7, #4]
 8001068:	f3c5 2502 	ubfx	r5, r5, #8, #3
 800106c:	5d75      	ldrb	r5, [r6, r5]
 800106e:	fa21 fe05 	lsr.w	lr, r1, r5
 8001072:	f8c0 e008 	str.w	lr, [r0, #8]
 8001076:	687d      	ldr	r5, [r7, #4]
 8001078:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 800107c:	5d75      	ldrb	r5, [r6, r5]
 800107e:	b2ed      	uxtb	r5, r5
 8001080:	40e9      	lsrs	r1, r5
 8001082:	60c1      	str	r1, [r0, #12]
 8001084:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001086:	f3c6 1804 	ubfx	r8, r6, #4, #5
 800108a:	f008 060f 	and.w	r6, r8, #15
 800108e:	f018 0f10 	tst.w	r8, #16
 8001092:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 8001096:	46e0      	mov	r8, ip
 8001098:	b2b6      	uxth	r6, r6
 800109a:	d004      	beq.n	80010a6 <RCC_GetClocksFreq+0xa2>
 800109c:	b11e      	cbz	r6, 80010a6 <RCC_GetClocksFreq+0xa2>
 800109e:	fbb3 f6f6 	udiv	r6, r3, r6
 80010a2:	6106      	str	r6, [r0, #16]
 80010a4:	e000      	b.n	80010a8 <RCC_GetClocksFreq+0xa4>
 80010a6:	6102      	str	r2, [r0, #16]
 80010a8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80010aa:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 80010ae:	f00c 060f 	and.w	r6, ip, #15
 80010b2:	f01c 0f10 	tst.w	ip, #16
 80010b6:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 80010ba:	b2b6      	uxth	r6, r6
 80010bc:	d004      	beq.n	80010c8 <RCC_GetClocksFreq+0xc4>
 80010be:	b11e      	cbz	r6, 80010c8 <RCC_GetClocksFreq+0xc4>
 80010c0:	fbb3 f6f6 	udiv	r6, r3, r6
 80010c4:	6146      	str	r6, [r0, #20]
 80010c6:	e000      	b.n	80010ca <RCC_GetClocksFreq+0xc6>
 80010c8:	6142      	str	r2, [r0, #20]
 80010ca:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010cc:	06f6      	lsls	r6, r6, #27
 80010ce:	bf5a      	itte	pl
 80010d0:	4e6a      	ldrpl	r6, [pc, #424]	; (800127c <RCC_GetClocksFreq+0x278>)
 80010d2:	6186      	strpl	r6, [r0, #24]
 80010d4:	6182      	strmi	r2, [r0, #24]
 80010d6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010d8:	06b6      	lsls	r6, r6, #26
 80010da:	bf5a      	itte	pl
 80010dc:	4e67      	ldrpl	r6, [pc, #412]	; (800127c <RCC_GetClocksFreq+0x278>)
 80010de:	61c6      	strpl	r6, [r0, #28]
 80010e0:	61c2      	strmi	r2, [r0, #28]
 80010e2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010e4:	0676      	lsls	r6, r6, #25
 80010e6:	bf5a      	itte	pl
 80010e8:	4e64      	ldrpl	r6, [pc, #400]	; (800127c <RCC_GetClocksFreq+0x278>)
 80010ea:	6206      	strpl	r6, [r0, #32]
 80010ec:	6202      	strmi	r2, [r0, #32]
 80010ee:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010f0:	05f6      	lsls	r6, r6, #23
 80010f2:	d506      	bpl.n	8001102 <RCC_GetClocksFreq+0xfe>
 80010f4:	429a      	cmp	r2, r3
 80010f6:	d104      	bne.n	8001102 <RCC_GetClocksFreq+0xfe>
 80010f8:	42a5      	cmp	r5, r4
 80010fa:	d102      	bne.n	8001102 <RCC_GetClocksFreq+0xfe>
 80010fc:	0056      	lsls	r6, r2, #1
 80010fe:	6246      	str	r6, [r0, #36]	; 0x24
 8001100:	e000      	b.n	8001104 <RCC_GetClocksFreq+0x100>
 8001102:	6241      	str	r1, [r0, #36]	; 0x24
 8001104:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001106:	04f6      	lsls	r6, r6, #19
 8001108:	d506      	bpl.n	8001118 <RCC_GetClocksFreq+0x114>
 800110a:	429a      	cmp	r2, r3
 800110c:	d104      	bne.n	8001118 <RCC_GetClocksFreq+0x114>
 800110e:	42a5      	cmp	r5, r4
 8001110:	d102      	bne.n	8001118 <RCC_GetClocksFreq+0x114>
 8001112:	0056      	lsls	r6, r2, #1
 8001114:	6286      	str	r6, [r0, #40]	; 0x28
 8001116:	e000      	b.n	800111a <RCC_GetClocksFreq+0x116>
 8001118:	6281      	str	r1, [r0, #40]	; 0x28
 800111a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800111c:	05b6      	lsls	r6, r6, #22
 800111e:	d506      	bpl.n	800112e <RCC_GetClocksFreq+0x12a>
 8001120:	429a      	cmp	r2, r3
 8001122:	d104      	bne.n	800112e <RCC_GetClocksFreq+0x12a>
 8001124:	42a5      	cmp	r5, r4
 8001126:	d102      	bne.n	800112e <RCC_GetClocksFreq+0x12a>
 8001128:	0056      	lsls	r6, r2, #1
 800112a:	62c6      	str	r6, [r0, #44]	; 0x2c
 800112c:	e000      	b.n	8001130 <RCC_GetClocksFreq+0x12c>
 800112e:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001130:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001132:	0576      	lsls	r6, r6, #21
 8001134:	d506      	bpl.n	8001144 <RCC_GetClocksFreq+0x140>
 8001136:	429a      	cmp	r2, r3
 8001138:	d104      	bne.n	8001144 <RCC_GetClocksFreq+0x140>
 800113a:	42a5      	cmp	r5, r4
 800113c:	d102      	bne.n	8001144 <RCC_GetClocksFreq+0x140>
 800113e:	0056      	lsls	r6, r2, #1
 8001140:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001142:	e000      	b.n	8001146 <RCC_GetClocksFreq+0x142>
 8001144:	64c1      	str	r1, [r0, #76]	; 0x4c
 8001146:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001148:	0536      	lsls	r6, r6, #20
 800114a:	d506      	bpl.n	800115a <RCC_GetClocksFreq+0x156>
 800114c:	429a      	cmp	r2, r3
 800114e:	d104      	bne.n	800115a <RCC_GetClocksFreq+0x156>
 8001150:	42a5      	cmp	r5, r4
 8001152:	d102      	bne.n	800115a <RCC_GetClocksFreq+0x156>
 8001154:	0056      	lsls	r6, r2, #1
 8001156:	6506      	str	r6, [r0, #80]	; 0x50
 8001158:	e000      	b.n	800115c <RCC_GetClocksFreq+0x158>
 800115a:	6501      	str	r1, [r0, #80]	; 0x50
 800115c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800115e:	04b6      	lsls	r6, r6, #18
 8001160:	d506      	bpl.n	8001170 <RCC_GetClocksFreq+0x16c>
 8001162:	429a      	cmp	r2, r3
 8001164:	d104      	bne.n	8001170 <RCC_GetClocksFreq+0x16c>
 8001166:	42a5      	cmp	r5, r4
 8001168:	d102      	bne.n	8001170 <RCC_GetClocksFreq+0x16c>
 800116a:	0056      	lsls	r6, r2, #1
 800116c:	6546      	str	r6, [r0, #84]	; 0x54
 800116e:	e000      	b.n	8001172 <RCC_GetClocksFreq+0x16e>
 8001170:	6501      	str	r1, [r0, #80]	; 0x50
 8001172:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001174:	0436      	lsls	r6, r6, #16
 8001176:	d506      	bpl.n	8001186 <RCC_GetClocksFreq+0x182>
 8001178:	429a      	cmp	r2, r3
 800117a:	d104      	bne.n	8001186 <RCC_GetClocksFreq+0x182>
 800117c:	42a5      	cmp	r5, r4
 800117e:	d102      	bne.n	8001186 <RCC_GetClocksFreq+0x182>
 8001180:	0053      	lsls	r3, r2, #1
 8001182:	6583      	str	r3, [r0, #88]	; 0x58
 8001184:	e000      	b.n	8001188 <RCC_GetClocksFreq+0x184>
 8001186:	6581      	str	r1, [r0, #88]	; 0x58
 8001188:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 800118a:	4b3b      	ldr	r3, [pc, #236]	; (8001278 <RCC_GetClocksFreq+0x274>)
 800118c:	07a4      	lsls	r4, r4, #30
 800118e:	d101      	bne.n	8001194 <RCC_GetClocksFreq+0x190>
 8001190:	6381      	str	r1, [r0, #56]	; 0x38
 8001192:	e015      	b.n	80011c0 <RCC_GetClocksFreq+0x1bc>
 8001194:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001196:	f001 0103 	and.w	r1, r1, #3
 800119a:	2901      	cmp	r1, #1
 800119c:	d101      	bne.n	80011a2 <RCC_GetClocksFreq+0x19e>
 800119e:	6382      	str	r2, [r0, #56]	; 0x38
 80011a0:	e00e      	b.n	80011c0 <RCC_GetClocksFreq+0x1bc>
 80011a2:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80011a4:	f001 0103 	and.w	r1, r1, #3
 80011a8:	2902      	cmp	r1, #2
 80011aa:	d102      	bne.n	80011b2 <RCC_GetClocksFreq+0x1ae>
 80011ac:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80011b0:	e005      	b.n	80011be <RCC_GetClocksFreq+0x1ba>
 80011b2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80011b4:	f003 0303 	and.w	r3, r3, #3
 80011b8:	2b03      	cmp	r3, #3
 80011ba:	d101      	bne.n	80011c0 <RCC_GetClocksFreq+0x1bc>
 80011bc:	4b2f      	ldr	r3, [pc, #188]	; (800127c <RCC_GetClocksFreq+0x278>)
 80011be:	6383      	str	r3, [r0, #56]	; 0x38
 80011c0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80011c2:	4b2d      	ldr	r3, [pc, #180]	; (8001278 <RCC_GetClocksFreq+0x274>)
 80011c4:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 80011c8:	d102      	bne.n	80011d0 <RCC_GetClocksFreq+0x1cc>
 80011ca:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 80011ce:	e018      	b.n	8001202 <RCC_GetClocksFreq+0x1fe>
 80011d0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80011d2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80011d6:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 80011da:	d101      	bne.n	80011e0 <RCC_GetClocksFreq+0x1dc>
 80011dc:	63c2      	str	r2, [r0, #60]	; 0x3c
 80011de:	e010      	b.n	8001202 <RCC_GetClocksFreq+0x1fe>
 80011e0:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80011e2:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80011e6:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80011ea:	d102      	bne.n	80011f2 <RCC_GetClocksFreq+0x1ee>
 80011ec:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80011f0:	e006      	b.n	8001200 <RCC_GetClocksFreq+0x1fc>
 80011f2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80011f4:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 80011f8:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 80011fc:	d101      	bne.n	8001202 <RCC_GetClocksFreq+0x1fe>
 80011fe:	4b1f      	ldr	r3, [pc, #124]	; (800127c <RCC_GetClocksFreq+0x278>)
 8001200:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001202:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001204:	4b1c      	ldr	r3, [pc, #112]	; (8001278 <RCC_GetClocksFreq+0x274>)
 8001206:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 800120a:	d102      	bne.n	8001212 <RCC_GetClocksFreq+0x20e>
 800120c:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001210:	e018      	b.n	8001244 <RCC_GetClocksFreq+0x240>
 8001212:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001214:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001218:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 800121c:	d101      	bne.n	8001222 <RCC_GetClocksFreq+0x21e>
 800121e:	6402      	str	r2, [r0, #64]	; 0x40
 8001220:	e010      	b.n	8001244 <RCC_GetClocksFreq+0x240>
 8001222:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001224:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001228:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 800122c:	d102      	bne.n	8001234 <RCC_GetClocksFreq+0x230>
 800122e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001232:	e006      	b.n	8001242 <RCC_GetClocksFreq+0x23e>
 8001234:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001236:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800123a:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 800123e:	d101      	bne.n	8001244 <RCC_GetClocksFreq+0x240>
 8001240:	4b0e      	ldr	r3, [pc, #56]	; (800127c <RCC_GetClocksFreq+0x278>)
 8001242:	6403      	str	r3, [r0, #64]	; 0x40
 8001244:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001246:	4b0c      	ldr	r3, [pc, #48]	; (8001278 <RCC_GetClocksFreq+0x274>)
 8001248:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 800124c:	d102      	bne.n	8001254 <RCC_GetClocksFreq+0x250>
 800124e:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001252:	e023      	b.n	800129c <RCC_GetClocksFreq+0x298>
 8001254:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001256:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800125a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800125e:	d101      	bne.n	8001264 <RCC_GetClocksFreq+0x260>
 8001260:	6442      	str	r2, [r0, #68]	; 0x44
 8001262:	e01b      	b.n	800129c <RCC_GetClocksFreq+0x298>
 8001264:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001266:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800126a:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800126e:	d10d      	bne.n	800128c <RCC_GetClocksFreq+0x288>
 8001270:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001274:	e011      	b.n	800129a <RCC_GetClocksFreq+0x296>
 8001276:	bf00      	nop
 8001278:	40021000 	.word	0x40021000
 800127c:	007a1200 	.word	0x007a1200
 8001280:	003d0900 	.word	0x003d0900
 8001284:	20000020 	.word	0x20000020
 8001288:	20000000 	.word	0x20000000
 800128c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800128e:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001292:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 8001296:	d101      	bne.n	800129c <RCC_GetClocksFreq+0x298>
 8001298:	4b13      	ldr	r3, [pc, #76]	; (80012e8 <RCC_GetClocksFreq+0x2e4>)
 800129a:	6443      	str	r3, [r0, #68]	; 0x44
 800129c:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800129e:	4b13      	ldr	r3, [pc, #76]	; (80012ec <RCC_GetClocksFreq+0x2e8>)
 80012a0:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80012a4:	d103      	bne.n	80012ae <RCC_GetClocksFreq+0x2aa>
 80012a6:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80012aa:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80012ae:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80012b0:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 80012b4:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 80012b8:	d102      	bne.n	80012c0 <RCC_GetClocksFreq+0x2bc>
 80012ba:	6482      	str	r2, [r0, #72]	; 0x48
 80012bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80012c0:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80012c2:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 80012c6:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 80012ca:	d102      	bne.n	80012d2 <RCC_GetClocksFreq+0x2ce>
 80012cc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80012d0:	e006      	b.n	80012e0 <RCC_GetClocksFreq+0x2dc>
 80012d2:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80012d4:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 80012d8:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80012dc:	d101      	bne.n	80012e2 <RCC_GetClocksFreq+0x2de>
 80012de:	4b02      	ldr	r3, [pc, #8]	; (80012e8 <RCC_GetClocksFreq+0x2e4>)
 80012e0:	6483      	str	r3, [r0, #72]	; 0x48
 80012e2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80012e6:	bf00      	nop
 80012e8:	007a1200 	.word	0x007a1200
 80012ec:	40021000 	.word	0x40021000

080012f0 <RCC_AHBPeriphClockCmd>:
 80012f0:	bf00      	nop
 80012f2:	bf00      	nop
 80012f4:	4b04      	ldr	r3, [pc, #16]	; (8001308 <RCC_AHBPeriphClockCmd+0x18>)
 80012f6:	695a      	ldr	r2, [r3, #20]
 80012f8:	b109      	cbz	r1, 80012fe <RCC_AHBPeriphClockCmd+0xe>
 80012fa:	4310      	orrs	r0, r2
 80012fc:	e001      	b.n	8001302 <RCC_AHBPeriphClockCmd+0x12>
 80012fe:	ea22 0000 	bic.w	r0, r2, r0
 8001302:	6158      	str	r0, [r3, #20]
 8001304:	4770      	bx	lr
 8001306:	bf00      	nop
 8001308:	40021000 	.word	0x40021000

0800130c <RCC_APB2PeriphClockCmd>:
 800130c:	bf00      	nop
 800130e:	bf00      	nop
 8001310:	4b04      	ldr	r3, [pc, #16]	; (8001324 <RCC_APB2PeriphClockCmd+0x18>)
 8001312:	699a      	ldr	r2, [r3, #24]
 8001314:	b109      	cbz	r1, 800131a <RCC_APB2PeriphClockCmd+0xe>
 8001316:	4310      	orrs	r0, r2
 8001318:	e001      	b.n	800131e <RCC_APB2PeriphClockCmd+0x12>
 800131a:	ea22 0000 	bic.w	r0, r2, r0
 800131e:	6198      	str	r0, [r3, #24]
 8001320:	4770      	bx	lr
 8001322:	bf00      	nop
 8001324:	40021000 	.word	0x40021000

08001328 <RCC_APB1PeriphClockCmd>:
 8001328:	bf00      	nop
 800132a:	bf00      	nop
 800132c:	4b04      	ldr	r3, [pc, #16]	; (8001340 <RCC_APB1PeriphClockCmd+0x18>)
 800132e:	69da      	ldr	r2, [r3, #28]
 8001330:	b109      	cbz	r1, 8001336 <RCC_APB1PeriphClockCmd+0xe>
 8001332:	4310      	orrs	r0, r2
 8001334:	e001      	b.n	800133a <RCC_APB1PeriphClockCmd+0x12>
 8001336:	ea22 0000 	bic.w	r0, r2, r0
 800133a:	61d8      	str	r0, [r3, #28]
 800133c:	4770      	bx	lr
 800133e:	bf00      	nop
 8001340:	40021000 	.word	0x40021000

08001344 <TIM_TimeBaseInit>:
 8001344:	bf00      	nop
 8001346:	bf00      	nop
 8001348:	bf00      	nop
 800134a:	4a24      	ldr	r2, [pc, #144]	; (80013dc <TIM_TimeBaseInit+0x98>)
 800134c:	8803      	ldrh	r3, [r0, #0]
 800134e:	4290      	cmp	r0, r2
 8001350:	b29b      	uxth	r3, r3
 8001352:	d012      	beq.n	800137a <TIM_TimeBaseInit+0x36>
 8001354:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 8001358:	4290      	cmp	r0, r2
 800135a:	d00e      	beq.n	800137a <TIM_TimeBaseInit+0x36>
 800135c:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001360:	d00b      	beq.n	800137a <TIM_TimeBaseInit+0x36>
 8001362:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 8001366:	4290      	cmp	r0, r2
 8001368:	d007      	beq.n	800137a <TIM_TimeBaseInit+0x36>
 800136a:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800136e:	4290      	cmp	r0, r2
 8001370:	d003      	beq.n	800137a <TIM_TimeBaseInit+0x36>
 8001372:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 8001376:	4290      	cmp	r0, r2
 8001378:	d103      	bne.n	8001382 <TIM_TimeBaseInit+0x3e>
 800137a:	884a      	ldrh	r2, [r1, #2]
 800137c:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001380:	4313      	orrs	r3, r2
 8001382:	4a17      	ldr	r2, [pc, #92]	; (80013e0 <TIM_TimeBaseInit+0x9c>)
 8001384:	4290      	cmp	r0, r2
 8001386:	d008      	beq.n	800139a <TIM_TimeBaseInit+0x56>
 8001388:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 800138c:	4290      	cmp	r0, r2
 800138e:	bf1f      	itttt	ne
 8001390:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001394:	890a      	ldrhne	r2, [r1, #8]
 8001396:	b29b      	uxthne	r3, r3
 8001398:	4313      	orrne	r3, r2
 800139a:	8003      	strh	r3, [r0, #0]
 800139c:	684b      	ldr	r3, [r1, #4]
 800139e:	62c3      	str	r3, [r0, #44]	; 0x2c
 80013a0:	880b      	ldrh	r3, [r1, #0]
 80013a2:	8503      	strh	r3, [r0, #40]	; 0x28
 80013a4:	4b0d      	ldr	r3, [pc, #52]	; (80013dc <TIM_TimeBaseInit+0x98>)
 80013a6:	4298      	cmp	r0, r3
 80013a8:	d013      	beq.n	80013d2 <TIM_TimeBaseInit+0x8e>
 80013aa:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80013ae:	4298      	cmp	r0, r3
 80013b0:	d00f      	beq.n	80013d2 <TIM_TimeBaseInit+0x8e>
 80013b2:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 80013b6:	4298      	cmp	r0, r3
 80013b8:	d00b      	beq.n	80013d2 <TIM_TimeBaseInit+0x8e>
 80013ba:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80013be:	4298      	cmp	r0, r3
 80013c0:	d007      	beq.n	80013d2 <TIM_TimeBaseInit+0x8e>
 80013c2:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 80013c6:	4298      	cmp	r0, r3
 80013c8:	d003      	beq.n	80013d2 <TIM_TimeBaseInit+0x8e>
 80013ca:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 80013ce:	4298      	cmp	r0, r3
 80013d0:	d101      	bne.n	80013d6 <TIM_TimeBaseInit+0x92>
 80013d2:	894b      	ldrh	r3, [r1, #10]
 80013d4:	8603      	strh	r3, [r0, #48]	; 0x30
 80013d6:	2301      	movs	r3, #1
 80013d8:	6143      	str	r3, [r0, #20]
 80013da:	4770      	bx	lr
 80013dc:	40012c00 	.word	0x40012c00
 80013e0:	40001000 	.word	0x40001000

080013e4 <TIM_Cmd>:
 80013e4:	bf00      	nop
 80013e6:	bf00      	nop
 80013e8:	8803      	ldrh	r3, [r0, #0]
 80013ea:	b119      	cbz	r1, 80013f4 <TIM_Cmd+0x10>
 80013ec:	b29b      	uxth	r3, r3
 80013ee:	f043 0301 	orr.w	r3, r3, #1
 80013f2:	e003      	b.n	80013fc <TIM_Cmd+0x18>
 80013f4:	f023 0301 	bic.w	r3, r3, #1
 80013f8:	041b      	lsls	r3, r3, #16
 80013fa:	0c1b      	lsrs	r3, r3, #16
 80013fc:	8003      	strh	r3, [r0, #0]
 80013fe:	4770      	bx	lr

08001400 <TIM_ClearITPendingBit>:
 8001400:	bf00      	nop
 8001402:	43c9      	mvns	r1, r1
 8001404:	b289      	uxth	r1, r1
 8001406:	6101      	str	r1, [r0, #16]
 8001408:	4770      	bx	lr
	...

0800140c <USART_Init>:
 800140c:	b530      	push	{r4, r5, lr}
 800140e:	4604      	mov	r4, r0
 8001410:	b099      	sub	sp, #100	; 0x64
 8001412:	460d      	mov	r5, r1
 8001414:	bf00      	nop
 8001416:	bf00      	nop
 8001418:	bf00      	nop
 800141a:	bf00      	nop
 800141c:	bf00      	nop
 800141e:	bf00      	nop
 8001420:	bf00      	nop
 8001422:	6803      	ldr	r3, [r0, #0]
 8001424:	f023 0301 	bic.w	r3, r3, #1
 8001428:	6003      	str	r3, [r0, #0]
 800142a:	6843      	ldr	r3, [r0, #4]
 800142c:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001430:	688b      	ldr	r3, [r1, #8]
 8001432:	68c9      	ldr	r1, [r1, #12]
 8001434:	4313      	orrs	r3, r2
 8001436:	6043      	str	r3, [r0, #4]
 8001438:	686a      	ldr	r2, [r5, #4]
 800143a:	6803      	ldr	r3, [r0, #0]
 800143c:	4311      	orrs	r1, r2
 800143e:	692a      	ldr	r2, [r5, #16]
 8001440:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001444:	430a      	orrs	r2, r1
 8001446:	f023 030c 	bic.w	r3, r3, #12
 800144a:	4313      	orrs	r3, r2
 800144c:	6003      	str	r3, [r0, #0]
 800144e:	6883      	ldr	r3, [r0, #8]
 8001450:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001454:	696b      	ldr	r3, [r5, #20]
 8001456:	4313      	orrs	r3, r2
 8001458:	6083      	str	r3, [r0, #8]
 800145a:	a801      	add	r0, sp, #4
 800145c:	f7ff fdd2 	bl	8001004 <RCC_GetClocksFreq>
 8001460:	4b17      	ldr	r3, [pc, #92]	; (80014c0 <USART_Init+0xb4>)
 8001462:	429c      	cmp	r4, r3
 8001464:	d101      	bne.n	800146a <USART_Init+0x5e>
 8001466:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001468:	e00e      	b.n	8001488 <USART_Init+0x7c>
 800146a:	4b16      	ldr	r3, [pc, #88]	; (80014c4 <USART_Init+0xb8>)
 800146c:	429c      	cmp	r4, r3
 800146e:	d101      	bne.n	8001474 <USART_Init+0x68>
 8001470:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001472:	e009      	b.n	8001488 <USART_Init+0x7c>
 8001474:	4b14      	ldr	r3, [pc, #80]	; (80014c8 <USART_Init+0xbc>)
 8001476:	429c      	cmp	r4, r3
 8001478:	d101      	bne.n	800147e <USART_Init+0x72>
 800147a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800147c:	e004      	b.n	8001488 <USART_Init+0x7c>
 800147e:	4b13      	ldr	r3, [pc, #76]	; (80014cc <USART_Init+0xc0>)
 8001480:	429c      	cmp	r4, r3
 8001482:	bf0c      	ite	eq
 8001484:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001486:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001488:	6822      	ldr	r2, [r4, #0]
 800148a:	6829      	ldr	r1, [r5, #0]
 800148c:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001490:	bf18      	it	ne
 8001492:	005b      	lslne	r3, r3, #1
 8001494:	fbb3 f2f1 	udiv	r2, r3, r1
 8001498:	fb01 3312 	mls	r3, r1, r2, r3
 800149c:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 80014a0:	6823      	ldr	r3, [r4, #0]
 80014a2:	bf28      	it	cs
 80014a4:	3201      	addcs	r2, #1
 80014a6:	041b      	lsls	r3, r3, #16
 80014a8:	bf41      	itttt	mi
 80014aa:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 80014ae:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 80014b2:	4013      	andmi	r3, r2
 80014b4:	ea41 0203 	orrmi.w	r2, r1, r3
 80014b8:	b292      	uxth	r2, r2
 80014ba:	81a2      	strh	r2, [r4, #12]
 80014bc:	b019      	add	sp, #100	; 0x64
 80014be:	bd30      	pop	{r4, r5, pc}
 80014c0:	40013800 	.word	0x40013800
 80014c4:	40004400 	.word	0x40004400
 80014c8:	40004800 	.word	0x40004800
 80014cc:	40004c00 	.word	0x40004c00

080014d0 <USART_Cmd>:
 80014d0:	bf00      	nop
 80014d2:	bf00      	nop
 80014d4:	6803      	ldr	r3, [r0, #0]
 80014d6:	b111      	cbz	r1, 80014de <USART_Cmd+0xe>
 80014d8:	f043 0301 	orr.w	r3, r3, #1
 80014dc:	e001      	b.n	80014e2 <USART_Cmd+0x12>
 80014de:	f023 0301 	bic.w	r3, r3, #1
 80014e2:	6003      	str	r3, [r0, #0]
 80014e4:	4770      	bx	lr

080014e6 <USART_ReceiveData>:
 80014e6:	bf00      	nop
 80014e8:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80014ea:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80014ee:	4770      	bx	lr

080014f0 <USART_ITConfig>:
 80014f0:	b510      	push	{r4, lr}
 80014f2:	bf00      	nop
 80014f4:	bf00      	nop
 80014f6:	bf00      	nop
 80014f8:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80014fc:	2301      	movs	r3, #1
 80014fe:	b2c9      	uxtb	r1, r1
 8001500:	2c02      	cmp	r4, #2
 8001502:	fa03 f301 	lsl.w	r3, r3, r1
 8001506:	d101      	bne.n	800150c <USART_ITConfig+0x1c>
 8001508:	3004      	adds	r0, #4
 800150a:	e002      	b.n	8001512 <USART_ITConfig+0x22>
 800150c:	2c03      	cmp	r4, #3
 800150e:	bf08      	it	eq
 8001510:	3008      	addeq	r0, #8
 8001512:	b112      	cbz	r2, 800151a <USART_ITConfig+0x2a>
 8001514:	6802      	ldr	r2, [r0, #0]
 8001516:	4313      	orrs	r3, r2
 8001518:	e002      	b.n	8001520 <USART_ITConfig+0x30>
 800151a:	6802      	ldr	r2, [r0, #0]
 800151c:	ea22 0303 	bic.w	r3, r2, r3
 8001520:	6003      	str	r3, [r0, #0]
 8001522:	bd10      	pop	{r4, pc}

08001524 <USART_GetITStatus>:
 8001524:	b510      	push	{r4, lr}
 8001526:	bf00      	nop
 8001528:	bf00      	nop
 800152a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800152e:	b2cc      	uxtb	r4, r1
 8001530:	2301      	movs	r3, #1
 8001532:	2a01      	cmp	r2, #1
 8001534:	fa03 f304 	lsl.w	r3, r3, r4
 8001538:	d101      	bne.n	800153e <USART_GetITStatus+0x1a>
 800153a:	6802      	ldr	r2, [r0, #0]
 800153c:	e003      	b.n	8001546 <USART_GetITStatus+0x22>
 800153e:	2a02      	cmp	r2, #2
 8001540:	bf0c      	ite	eq
 8001542:	6842      	ldreq	r2, [r0, #4]
 8001544:	6882      	ldrne	r2, [r0, #8]
 8001546:	4013      	ands	r3, r2
 8001548:	69c2      	ldr	r2, [r0, #28]
 800154a:	b13b      	cbz	r3, 800155c <USART_GetITStatus+0x38>
 800154c:	0c09      	lsrs	r1, r1, #16
 800154e:	2301      	movs	r3, #1
 8001550:	408b      	lsls	r3, r1
 8001552:	4213      	tst	r3, r2
 8001554:	bf14      	ite	ne
 8001556:	2001      	movne	r0, #1
 8001558:	2000      	moveq	r0, #0
 800155a:	bd10      	pop	{r4, pc}
 800155c:	4618      	mov	r0, r3
 800155e:	bd10      	pop	{r4, pc}

08001560 <USART_ClearITPendingBit>:
 8001560:	bf00      	nop
 8001562:	bf00      	nop
 8001564:	2301      	movs	r3, #1
 8001566:	0c09      	lsrs	r1, r1, #16
 8001568:	408b      	lsls	r3, r1
 800156a:	6203      	str	r3, [r0, #32]
 800156c:	4770      	bx	lr
	...

08001570 <SystemInit>:
 8001570:	4a39      	ldr	r2, [pc, #228]	; (8001658 <SystemInit+0xe8>)
 8001572:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001576:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800157a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 800157e:	4b37      	ldr	r3, [pc, #220]	; (800165c <SystemInit+0xec>)
 8001580:	681a      	ldr	r2, [r3, #0]
 8001582:	f042 0201 	orr.w	r2, r2, #1
 8001586:	601a      	str	r2, [r3, #0]
 8001588:	6859      	ldr	r1, [r3, #4]
 800158a:	4a35      	ldr	r2, [pc, #212]	; (8001660 <SystemInit+0xf0>)
 800158c:	400a      	ands	r2, r1
 800158e:	605a      	str	r2, [r3, #4]
 8001590:	681a      	ldr	r2, [r3, #0]
 8001592:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001596:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800159a:	601a      	str	r2, [r3, #0]
 800159c:	681a      	ldr	r2, [r3, #0]
 800159e:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80015a2:	601a      	str	r2, [r3, #0]
 80015a4:	685a      	ldr	r2, [r3, #4]
 80015a6:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 80015aa:	605a      	str	r2, [r3, #4]
 80015ac:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80015ae:	f022 020f 	bic.w	r2, r2, #15
 80015b2:	62da      	str	r2, [r3, #44]	; 0x2c
 80015b4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80015b6:	4a2b      	ldr	r2, [pc, #172]	; (8001664 <SystemInit+0xf4>)
 80015b8:	b082      	sub	sp, #8
 80015ba:	400a      	ands	r2, r1
 80015bc:	631a      	str	r2, [r3, #48]	; 0x30
 80015be:	2200      	movs	r2, #0
 80015c0:	609a      	str	r2, [r3, #8]
 80015c2:	9200      	str	r2, [sp, #0]
 80015c4:	9201      	str	r2, [sp, #4]
 80015c6:	681a      	ldr	r2, [r3, #0]
 80015c8:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 80015cc:	601a      	str	r2, [r3, #0]
 80015ce:	681a      	ldr	r2, [r3, #0]
 80015d0:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 80015d4:	9201      	str	r2, [sp, #4]
 80015d6:	9a00      	ldr	r2, [sp, #0]
 80015d8:	3201      	adds	r2, #1
 80015da:	9200      	str	r2, [sp, #0]
 80015dc:	9a01      	ldr	r2, [sp, #4]
 80015de:	b91a      	cbnz	r2, 80015e8 <SystemInit+0x78>
 80015e0:	9a00      	ldr	r2, [sp, #0]
 80015e2:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80015e6:	d1f2      	bne.n	80015ce <SystemInit+0x5e>
 80015e8:	681a      	ldr	r2, [r3, #0]
 80015ea:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 80015ee:	bf18      	it	ne
 80015f0:	2201      	movne	r2, #1
 80015f2:	9201      	str	r2, [sp, #4]
 80015f4:	9a01      	ldr	r2, [sp, #4]
 80015f6:	2a01      	cmp	r2, #1
 80015f8:	d005      	beq.n	8001606 <SystemInit+0x96>
 80015fa:	4b17      	ldr	r3, [pc, #92]	; (8001658 <SystemInit+0xe8>)
 80015fc:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001600:	609a      	str	r2, [r3, #8]
 8001602:	b002      	add	sp, #8
 8001604:	4770      	bx	lr
 8001606:	4a18      	ldr	r2, [pc, #96]	; (8001668 <SystemInit+0xf8>)
 8001608:	2112      	movs	r1, #18
 800160a:	6011      	str	r1, [r2, #0]
 800160c:	685a      	ldr	r2, [r3, #4]
 800160e:	605a      	str	r2, [r3, #4]
 8001610:	685a      	ldr	r2, [r3, #4]
 8001612:	605a      	str	r2, [r3, #4]
 8001614:	685a      	ldr	r2, [r3, #4]
 8001616:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 800161a:	605a      	str	r2, [r3, #4]
 800161c:	685a      	ldr	r2, [r3, #4]
 800161e:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001622:	605a      	str	r2, [r3, #4]
 8001624:	685a      	ldr	r2, [r3, #4]
 8001626:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 800162a:	605a      	str	r2, [r3, #4]
 800162c:	681a      	ldr	r2, [r3, #0]
 800162e:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001632:	601a      	str	r2, [r3, #0]
 8001634:	6819      	ldr	r1, [r3, #0]
 8001636:	4a09      	ldr	r2, [pc, #36]	; (800165c <SystemInit+0xec>)
 8001638:	0189      	lsls	r1, r1, #6
 800163a:	d5fb      	bpl.n	8001634 <SystemInit+0xc4>
 800163c:	6851      	ldr	r1, [r2, #4]
 800163e:	f021 0103 	bic.w	r1, r1, #3
 8001642:	6051      	str	r1, [r2, #4]
 8001644:	6851      	ldr	r1, [r2, #4]
 8001646:	f041 0102 	orr.w	r1, r1, #2
 800164a:	6051      	str	r1, [r2, #4]
 800164c:	685a      	ldr	r2, [r3, #4]
 800164e:	f002 020c 	and.w	r2, r2, #12
 8001652:	2a08      	cmp	r2, #8
 8001654:	d1fa      	bne.n	800164c <SystemInit+0xdc>
 8001656:	e7d0      	b.n	80015fa <SystemInit+0x8a>
 8001658:	e000ed00 	.word	0xe000ed00
 800165c:	40021000 	.word	0x40021000
 8001660:	f87fc00c 	.word	0xf87fc00c
 8001664:	ff00fccc 	.word	0xff00fccc
 8001668:	40022000 	.word	0x40022000

0800166c <sys_tick_init>:
 800166c:	4b06      	ldr	r3, [pc, #24]	; (8001688 <sys_tick_init+0x1c>)
 800166e:	f643 2298 	movw	r2, #15000	; 0x3a98
 8001672:	605a      	str	r2, [r3, #4]
 8001674:	4a05      	ldr	r2, [pc, #20]	; (800168c <sys_tick_init+0x20>)
 8001676:	21f0      	movs	r1, #240	; 0xf0
 8001678:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 800167c:	2200      	movs	r2, #0
 800167e:	609a      	str	r2, [r3, #8]
 8001680:	2207      	movs	r2, #7
 8001682:	601a      	str	r2, [r3, #0]
 8001684:	4770      	bx	lr
 8001686:	bf00      	nop
 8001688:	e000e010 	.word	0xe000e010
 800168c:	e000ed00 	.word	0xe000ed00

08001690 <sleep>:
 8001690:	bf30      	wfi
 8001692:	4770      	bx	lr

08001694 <core_yield>:
 8001694:	bf00      	nop
 8001696:	4770      	bx	lr

08001698 <sytem_clock_init>:
 8001698:	f7ff bf6a 	b.w	8001570 <SystemInit>

0800169c <NVIC_Init>:
 800169c:	b510      	push	{r4, lr}
 800169e:	bf00      	nop
 80016a0:	bf00      	nop
 80016a2:	bf00      	nop
 80016a4:	78c2      	ldrb	r2, [r0, #3]
 80016a6:	7803      	ldrb	r3, [r0, #0]
 80016a8:	b312      	cbz	r2, 80016f0 <NVIC_Init+0x54>
 80016aa:	4a17      	ldr	r2, [pc, #92]	; (8001708 <NVIC_Init+0x6c>)
 80016ac:	68d1      	ldr	r1, [r2, #12]
 80016ae:	7842      	ldrb	r2, [r0, #1]
 80016b0:	43c9      	mvns	r1, r1
 80016b2:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80016b6:	f1c1 0404 	rsb	r4, r1, #4
 80016ba:	b2e4      	uxtb	r4, r4
 80016bc:	40a2      	lsls	r2, r4
 80016be:	b2d4      	uxtb	r4, r2
 80016c0:	220f      	movs	r2, #15
 80016c2:	410a      	asrs	r2, r1
 80016c4:	7881      	ldrb	r1, [r0, #2]
 80016c6:	400a      	ands	r2, r1
 80016c8:	4322      	orrs	r2, r4
 80016ca:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 80016ce:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 80016d2:	0112      	lsls	r2, r2, #4
 80016d4:	b2d2      	uxtb	r2, r2
 80016d6:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 80016da:	7803      	ldrb	r3, [r0, #0]
 80016dc:	2201      	movs	r2, #1
 80016de:	0959      	lsrs	r1, r3, #5
 80016e0:	f003 031f 	and.w	r3, r3, #31
 80016e4:	fa02 f303 	lsl.w	r3, r2, r3
 80016e8:	4a08      	ldr	r2, [pc, #32]	; (800170c <NVIC_Init+0x70>)
 80016ea:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80016ee:	bd10      	pop	{r4, pc}
 80016f0:	095a      	lsrs	r2, r3, #5
 80016f2:	2101      	movs	r1, #1
 80016f4:	f003 031f 	and.w	r3, r3, #31
 80016f8:	4099      	lsls	r1, r3
 80016fa:	f102 0320 	add.w	r3, r2, #32
 80016fe:	4a03      	ldr	r2, [pc, #12]	; (800170c <NVIC_Init+0x70>)
 8001700:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001704:	bd10      	pop	{r4, pc}
 8001706:	bf00      	nop
 8001708:	e000ed00 	.word	0xe000ed00
 800170c:	e000e100 	.word	0xe000e100

08001710 <EXTI_Init>:
 8001710:	b570      	push	{r4, r5, r6, lr}
 8001712:	bf00      	nop
 8001714:	bf00      	nop
 8001716:	bf00      	nop
 8001718:	bf00      	nop
 800171a:	7982      	ldrb	r2, [r0, #6]
 800171c:	6803      	ldr	r3, [r0, #0]
 800171e:	7904      	ldrb	r4, [r0, #4]
 8001720:	2a00      	cmp	r2, #0
 8001722:	d064      	beq.n	80017ee <EXTI_Init+0xde>
 8001724:	f023 011f 	bic.w	r1, r3, #31
 8001728:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 800172c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 8001730:	f003 021f 	and.w	r2, r3, #31
 8001734:	680d      	ldr	r5, [r1, #0]
 8001736:	2301      	movs	r3, #1
 8001738:	fa03 f202 	lsl.w	r2, r3, r2
 800173c:	ea25 0202 	bic.w	r2, r5, r2
 8001740:	600a      	str	r2, [r1, #0]
 8001742:	6802      	ldr	r2, [r0, #0]
 8001744:	4d32      	ldr	r5, [pc, #200]	; (8001810 <EXTI_Init+0x100>)
 8001746:	f022 061f 	bic.w	r6, r2, #31
 800174a:	f002 021f 	and.w	r2, r2, #31
 800174e:	5971      	ldr	r1, [r6, r5]
 8001750:	fa03 f202 	lsl.w	r2, r3, r2
 8001754:	ea21 0202 	bic.w	r2, r1, r2
 8001758:	5172      	str	r2, [r6, r5]
 800175a:	6801      	ldr	r1, [r0, #0]
 800175c:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8001760:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8001764:	f021 041f 	bic.w	r4, r1, #31
 8001768:	f001 011f 	and.w	r1, r1, #31
 800176c:	5915      	ldr	r5, [r2, r4]
 800176e:	fa03 f101 	lsl.w	r1, r3, r1
 8001772:	4329      	orrs	r1, r5
 8001774:	5111      	str	r1, [r2, r4]
 8001776:	6802      	ldr	r2, [r0, #0]
 8001778:	4d26      	ldr	r5, [pc, #152]	; (8001814 <EXTI_Init+0x104>)
 800177a:	f022 041f 	bic.w	r4, r2, #31
 800177e:	f002 021f 	and.w	r2, r2, #31
 8001782:	5961      	ldr	r1, [r4, r5]
 8001784:	fa03 f202 	lsl.w	r2, r3, r2
 8001788:	ea21 0202 	bic.w	r2, r1, r2
 800178c:	5162      	str	r2, [r4, r5]
 800178e:	6802      	ldr	r2, [r0, #0]
 8001790:	4c21      	ldr	r4, [pc, #132]	; (8001818 <EXTI_Init+0x108>)
 8001792:	f022 061f 	bic.w	r6, r2, #31
 8001796:	f002 021f 	and.w	r2, r2, #31
 800179a:	5931      	ldr	r1, [r6, r4]
 800179c:	fa03 f202 	lsl.w	r2, r3, r2
 80017a0:	ea21 0202 	bic.w	r2, r1, r2
 80017a4:	7941      	ldrb	r1, [r0, #5]
 80017a6:	5132      	str	r2, [r6, r4]
 80017a8:	2910      	cmp	r1, #16
 80017aa:	6802      	ldr	r2, [r0, #0]
 80017ac:	d112      	bne.n	80017d4 <EXTI_Init+0xc4>
 80017ae:	f022 011f 	bic.w	r1, r2, #31
 80017b2:	f002 021f 	and.w	r2, r2, #31
 80017b6:	594e      	ldr	r6, [r1, r5]
 80017b8:	fa03 f202 	lsl.w	r2, r3, r2
 80017bc:	4332      	orrs	r2, r6
 80017be:	514a      	str	r2, [r1, r5]
 80017c0:	6802      	ldr	r2, [r0, #0]
 80017c2:	f022 011f 	bic.w	r1, r2, #31
 80017c6:	f002 021f 	and.w	r2, r2, #31
 80017ca:	5908      	ldr	r0, [r1, r4]
 80017cc:	4093      	lsls	r3, r2
 80017ce:	4303      	orrs	r3, r0
 80017d0:	510b      	str	r3, [r1, r4]
 80017d2:	bd70      	pop	{r4, r5, r6, pc}
 80017d4:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80017d8:	f022 001f 	bic.w	r0, r2, #31
 80017dc:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80017e0:	f002 021f 	and.w	r2, r2, #31
 80017e4:	580c      	ldr	r4, [r1, r0]
 80017e6:	4093      	lsls	r3, r2
 80017e8:	4323      	orrs	r3, r4
 80017ea:	500b      	str	r3, [r1, r0]
 80017ec:	bd70      	pop	{r4, r5, r6, pc}
 80017ee:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80017f2:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80017f6:	f023 041f 	bic.w	r4, r3, #31
 80017fa:	2001      	movs	r0, #1
 80017fc:	5911      	ldr	r1, [r2, r4]
 80017fe:	f003 031f 	and.w	r3, r3, #31
 8001802:	fa00 f303 	lsl.w	r3, r0, r3
 8001806:	ea21 0303 	bic.w	r3, r1, r3
 800180a:	5113      	str	r3, [r2, r4]
 800180c:	bd70      	pop	{r4, r5, r6, pc}
 800180e:	bf00      	nop
 8001810:	40010404 	.word	0x40010404
 8001814:	40010408 	.word	0x40010408
 8001818:	4001040c 	.word	0x4001040c

0800181c <EXTI_ClearITPendingBit>:
 800181c:	f020 011f 	bic.w	r1, r0, #31
 8001820:	2301      	movs	r3, #1
 8001822:	f000 001f 	and.w	r0, r0, #31
 8001826:	4a02      	ldr	r2, [pc, #8]	; (8001830 <EXTI_ClearITPendingBit+0x14>)
 8001828:	4083      	lsls	r3, r0
 800182a:	508b      	str	r3, [r1, r2]
 800182c:	4770      	bx	lr
 800182e:	bf00      	nop
 8001830:	40010414 	.word	0x40010414

08001834 <GPIO_Init>:
 8001834:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001836:	bf00      	nop
 8001838:	bf00      	nop
 800183a:	bf00      	nop
 800183c:	bf00      	nop
 800183e:	2300      	movs	r3, #0
 8001840:	680e      	ldr	r6, [r1, #0]
 8001842:	461c      	mov	r4, r3
 8001844:	2501      	movs	r5, #1
 8001846:	40a5      	lsls	r5, r4
 8001848:	ea05 0e06 	and.w	lr, r5, r6
 800184c:	45ae      	cmp	lr, r5
 800184e:	d12d      	bne.n	80018ac <GPIO_Init+0x78>
 8001850:	790f      	ldrb	r7, [r1, #4]
 8001852:	1e7a      	subs	r2, r7, #1
 8001854:	2a01      	cmp	r2, #1
 8001856:	d817      	bhi.n	8001888 <GPIO_Init+0x54>
 8001858:	bf00      	nop
 800185a:	2203      	movs	r2, #3
 800185c:	6885      	ldr	r5, [r0, #8]
 800185e:	409a      	lsls	r2, r3
 8001860:	ea25 0202 	bic.w	r2, r5, r2
 8001864:	6082      	str	r2, [r0, #8]
 8001866:	794d      	ldrb	r5, [r1, #5]
 8001868:	6882      	ldr	r2, [r0, #8]
 800186a:	409d      	lsls	r5, r3
 800186c:	4315      	orrs	r5, r2
 800186e:	6085      	str	r5, [r0, #8]
 8001870:	bf00      	nop
 8001872:	8882      	ldrh	r2, [r0, #4]
 8001874:	b292      	uxth	r2, r2
 8001876:	ea22 020e 	bic.w	r2, r2, lr
 800187a:	8082      	strh	r2, [r0, #4]
 800187c:	798a      	ldrb	r2, [r1, #6]
 800187e:	8885      	ldrh	r5, [r0, #4]
 8001880:	40a2      	lsls	r2, r4
 8001882:	432a      	orrs	r2, r5
 8001884:	b292      	uxth	r2, r2
 8001886:	8082      	strh	r2, [r0, #4]
 8001888:	2203      	movs	r2, #3
 800188a:	6805      	ldr	r5, [r0, #0]
 800188c:	409a      	lsls	r2, r3
 800188e:	43d2      	mvns	r2, r2
 8001890:	4015      	ands	r5, r2
 8001892:	6005      	str	r5, [r0, #0]
 8001894:	6805      	ldr	r5, [r0, #0]
 8001896:	409f      	lsls	r7, r3
 8001898:	432f      	orrs	r7, r5
 800189a:	6007      	str	r7, [r0, #0]
 800189c:	68c7      	ldr	r7, [r0, #12]
 800189e:	4017      	ands	r7, r2
 80018a0:	79ca      	ldrb	r2, [r1, #7]
 80018a2:	fa02 f503 	lsl.w	r5, r2, r3
 80018a6:	ea47 0205 	orr.w	r2, r7, r5
 80018aa:	60c2      	str	r2, [r0, #12]
 80018ac:	3401      	adds	r4, #1
 80018ae:	2c10      	cmp	r4, #16
 80018b0:	f103 0302 	add.w	r3, r3, #2
 80018b4:	d1c6      	bne.n	8001844 <GPIO_Init+0x10>
 80018b6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080018b8 <GPIO_PinAFConfig>:
 80018b8:	b510      	push	{r4, lr}
 80018ba:	bf00      	nop
 80018bc:	bf00      	nop
 80018be:	bf00      	nop
 80018c0:	f001 0307 	and.w	r3, r1, #7
 80018c4:	08c9      	lsrs	r1, r1, #3
 80018c6:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80018ca:	009b      	lsls	r3, r3, #2
 80018cc:	6a04      	ldr	r4, [r0, #32]
 80018ce:	210f      	movs	r1, #15
 80018d0:	4099      	lsls	r1, r3
 80018d2:	ea24 0101 	bic.w	r1, r4, r1
 80018d6:	6201      	str	r1, [r0, #32]
 80018d8:	6a01      	ldr	r1, [r0, #32]
 80018da:	409a      	lsls	r2, r3
 80018dc:	430a      	orrs	r2, r1
 80018de:	6202      	str	r2, [r0, #32]
 80018e0:	bd10      	pop	{r4, pc}

080018e2 <Default_Handler>:
 80018e2:	4668      	mov	r0, sp
 80018e4:	f020 0107 	bic.w	r1, r0, #7
 80018e8:	468d      	mov	sp, r1
 80018ea:	b501      	push	{r0, lr}
 80018ec:	bf00      	nop
 80018ee:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80018f2:	4685      	mov	sp, r0
 80018f4:	4770      	bx	lr

080018f6 <HardFault_Handler>:
 80018f6:	bf00      	nop
 80018f8:	e7fd      	b.n	80018f6 <HardFault_Handler>
	...

080018fc <_reset_init>:
 80018fc:	490e      	ldr	r1, [pc, #56]	; (8001938 <_reset_init+0x3c>)
 80018fe:	4b0f      	ldr	r3, [pc, #60]	; (800193c <_reset_init+0x40>)
 8001900:	1a5b      	subs	r3, r3, r1
 8001902:	109b      	asrs	r3, r3, #2
 8001904:	2200      	movs	r2, #0
 8001906:	429a      	cmp	r2, r3
 8001908:	d006      	beq.n	8001918 <_reset_init+0x1c>
 800190a:	480d      	ldr	r0, [pc, #52]	; (8001940 <_reset_init+0x44>)
 800190c:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8001910:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8001914:	3201      	adds	r2, #1
 8001916:	e7f6      	b.n	8001906 <_reset_init+0xa>
 8001918:	4a0a      	ldr	r2, [pc, #40]	; (8001944 <_reset_init+0x48>)
 800191a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800191e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001922:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001926:	f502 720c 	add.w	r2, r2, #560	; 0x230
 800192a:	6853      	ldr	r3, [r2, #4]
 800192c:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8001930:	6053      	str	r3, [r2, #4]
 8001932:	f7ff bb62 	b.w	8000ffa <main>
 8001936:	bf00      	nop
 8001938:	20000000 	.word	0x20000000
 800193c:	20000030 	.word	0x20000030
 8001940:	08001a30 	.word	0x08001a30
 8001944:	e000ed00 	.word	0xe000ed00

08001948 <SYSCFG_EXTILineConfig>:
 8001948:	b510      	push	{r4, lr}
 800194a:	bf00      	nop
 800194c:	bf00      	nop
 800194e:	f001 0303 	and.w	r3, r1, #3
 8001952:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 8001956:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 800195a:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 800195e:	009b      	lsls	r3, r3, #2
 8001960:	688c      	ldr	r4, [r1, #8]
 8001962:	220f      	movs	r2, #15
 8001964:	409a      	lsls	r2, r3
 8001966:	ea24 0202 	bic.w	r2, r4, r2
 800196a:	608a      	str	r2, [r1, #8]
 800196c:	688a      	ldr	r2, [r1, #8]
 800196e:	4098      	lsls	r0, r3
 8001970:	4310      	orrs	r0, r2
 8001972:	6088      	str	r0, [r1, #8]
 8001974:	bd10      	pop	{r4, pc}

08001976 <_text>:
	...

08001978 <_init>:
 8001978:	e1a0c00d 	mov	ip, sp
 800197c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8001980:	e24cb004 	sub	fp, ip, #4
 8001984:	e24bd028 	sub	sp, fp, #40	; 0x28
 8001988:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800198c:	e12fff1e 	bx	lr

08001990 <_fini>:
 8001990:	e1a0c00d 	mov	ip, sp
 8001994:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8001998:	e24cb004 	sub	fp, ip, #4
 800199c:	e24bd028 	sub	sp, fp, #40	; 0x28
 80019a0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 80019a4:	e12fff1e 	bx	lr
 80019a8:	736e6573 	.word	0x736e6573
 80019ac:	5220726f 	.word	0x5220726f
 80019b0:	61772054 	.word	0x61772054
 80019b4:	6e696e72 	.word	0x6e696e72
 80019b8:	75252067 	.word	0x75252067
 80019bc:	7973000a 	.word	0x7973000a
 80019c0:	6d657473 	.word	0x6d657473
 80019c4:	6d697420 	.word	0x6d697420
 80019c8:	75252065 	.word	0x75252065
 80019cc:	6e65000a 	.word	0x6e65000a
 80019d0:	65646f63 	.word	0x65646f63
 80019d4:	25207372 	.word	0x25207372
 80019d8:	69252069 	.word	0x69252069
 80019dc:	6e61000a 	.word	0x6e61000a
 80019e0:	73656c67 	.word	0x73656c67
 80019e4:	20692520 	.word	0x20692520
 80019e8:	25206925 	.word	0x25206925
 80019ec:	70000a69 	.word	0x70000a69
 80019f0:	746e6972 	.word	0x746e6972
 80019f4:	20545220 	.word	0x20545220
 80019f8:	6e726177 	.word	0x6e726177
 80019fc:	20676e69 	.word	0x20676e69
 8001a00:	000a7525 	.word	0x000a7525
 8001a04:	61646f6b 	.word	0x61646f6b
 8001a08:	6920616d 	.word	0x6920616d
 8001a0c:	2074696e 	.word	0x2074696e
 8001a10:	25206925 	.word	0x25206925
 8001a14:	203a2069 	.word	0x203a2069
 8001a18:	4f5b2000 	.word	0x4f5b2000
 8001a1c:	000a5d4b 	.word	0x000a5d4b
 8001a20:	41465b20 	.word	0x41465b20
 8001a24:	44454c49 	.word	0x44454c49
 8001a28:	00000a5d 	.word	0x00000a5d

08001a2c <__EH_FRAME_BEGIN__>:
 8001a2c:	00000000                                ....
