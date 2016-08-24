
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama4initEv>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f000 fec2 	bl	8000f14 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama4initEv+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f000 ff7f 	bl	80010a0 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama4initEv+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	4620      	mov	r0, r4
 80001b0:	f000 f83a 	bl	8000228 <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama4initEv+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fe1f 	bl	8000e04 <_ZN4CIMU8imu_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama4initEv+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 0038 	add.w	r0, r4, #56	; 0x38
 80001d6:	f000 fa9b 	bl	8000710 <_ZN8CSensors12sensors_initEv>
 80001da:	2800      	cmp	r0, #0
 80001dc:	da03      	bge.n	80001e6 <_ZN7CKodama4initEv+0x5e>
 80001de:	f5a0 4043 	sub.w	r0, r0, #49920	; 0xc300
 80001e2:	3850      	subs	r0, #80	; 0x50
 80001e4:	bd10      	pop	{r4, pc}
 80001e6:	f104 00bc 	add.w	r0, r4, #188	; 0xbc
 80001ea:	f000 f96a 	bl	80004c2 <_ZN6CMotor10motor_initEv>
 80001ee:	2800      	cmp	r0, #0
 80001f0:	bfba      	itte	lt
 80001f2:	f5a0 406a 	sublt.w	r0, r0, #59904	; 0xea00
 80001f6:	3860      	sublt	r0, #96	; 0x60
 80001f8:	2000      	movge	r0, #0
 80001fa:	bd10      	pop	{r4, pc}

080001fc <_ZN7CKodama5sleepEv>:
 80001fc:	b510      	push	{r4, lr}
 80001fe:	4604      	mov	r4, r0
 8000200:	3038      	adds	r0, #56	; 0x38
 8000202:	f000 f966 	bl	80004d2 <_ZN8CSensors13sensors_sleepEv>
 8000206:	f104 00bc 	add.w	r0, r4, #188	; 0xbc
 800020a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800020e:	f000 b8cd 	b.w	80003ac <_ZN6CMotor11motor_sleepEv>

08000212 <_ZN7CKodama6wakeupEv>:
 8000212:	b510      	push	{r4, lr}
 8000214:	4604      	mov	r4, r0
 8000216:	3038      	adds	r0, #56	; 0x38
 8000218:	f000 fa7a 	bl	8000710 <_ZN8CSensors12sensors_initEv>
 800021c:	f104 00bc 	add.w	r0, r4, #188	; 0xbc
 8000220:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000224:	f000 b94d 	b.w	80004c2 <_ZN6CMotor10motor_initEv>

08000228 <_ZN6CTimer10timer_initEv>:
 8000228:	b530      	push	{r4, r5, lr}
 800022a:	2300      	movs	r3, #0
 800022c:	b085      	sub	sp, #20
 800022e:	491e      	ldr	r1, [pc, #120]	; (80002a8 <_ZN6CTimer10timer_initEv+0x80>)
 8000230:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8000234:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000238:	491c      	ldr	r1, [pc, #112]	; (80002ac <_ZN6CTimer10timer_initEv+0x84>)
 800023a:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 800023e:	4a1c      	ldr	r2, [pc, #112]	; (80002b0 <_ZN6CTimer10timer_initEv+0x88>)
 8000240:	2400      	movs	r4, #0
 8000242:	54d4      	strb	r4, [r2, r3]
 8000244:	3301      	adds	r3, #1
 8000246:	2b08      	cmp	r3, #8
 8000248:	d1f1      	bne.n	800022e <_ZN6CTimer10timer_initEv+0x6>
 800024a:	4b1a      	ldr	r3, [pc, #104]	; (80002b4 <_ZN6CTimer10timer_initEv+0x8c>)
 800024c:	4d1a      	ldr	r5, [pc, #104]	; (80002b8 <_ZN6CTimer10timer_initEv+0x90>)
 800024e:	601c      	str	r4, [r3, #0]
 8000250:	2002      	movs	r0, #2
 8000252:	2101      	movs	r1, #1
 8000254:	f001 fb92 	bl	800197c <RCC_APB1PeriphClockCmd>
 8000258:	f44f 738c 	mov.w	r3, #280	; 0x118
 800025c:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000260:	4628      	mov	r0, r5
 8000262:	2331      	movs	r3, #49	; 0x31
 8000264:	a901      	add	r1, sp, #4
 8000266:	9302      	str	r3, [sp, #8]
 8000268:	f8ad 4006 	strh.w	r4, [sp, #6]
 800026c:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000270:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000274:	f001 fb90 	bl	8001998 <TIM_TimeBaseInit>
 8000278:	4628      	mov	r0, r5
 800027a:	2101      	movs	r1, #1
 800027c:	f001 fbdc 	bl	8001a38 <TIM_Cmd>
 8000280:	68eb      	ldr	r3, [r5, #12]
 8000282:	f043 0301 	orr.w	r3, r3, #1
 8000286:	60eb      	str	r3, [r5, #12]
 8000288:	231d      	movs	r3, #29
 800028a:	f88d 3000 	strb.w	r3, [sp]
 800028e:	4668      	mov	r0, sp
 8000290:	2301      	movs	r3, #1
 8000292:	f88d 4001 	strb.w	r4, [sp, #1]
 8000296:	f88d 3002 	strb.w	r3, [sp, #2]
 800029a:	f88d 3003 	strb.w	r3, [sp, #3]
 800029e:	f001 fd27 	bl	8001cf0 <NVIC_Init>
 80002a2:	4620      	mov	r0, r4
 80002a4:	b005      	add	sp, #20
 80002a6:	bd30      	pop	{r4, r5, pc}
 80002a8:	20000030 	.word	0x20000030
 80002ac:	2000005c 	.word	0x2000005c
 80002b0:	20000050 	.word	0x20000050
 80002b4:	20000058 	.word	0x20000058
 80002b8:	40000400 	.word	0x40000400

080002bc <TIM3_IRQHandler>:
 80002bc:	2300      	movs	r3, #0
 80002be:	4a15      	ldr	r2, [pc, #84]	; (8000314 <TIM3_IRQHandler+0x58>)
 80002c0:	5cd1      	ldrb	r1, [r2, r3]
 80002c2:	b111      	cbz	r1, 80002ca <TIM3_IRQHandler+0xe>
 80002c4:	5cd1      	ldrb	r1, [r2, r3]
 80002c6:	29ff      	cmp	r1, #255	; 0xff
 80002c8:	d11e      	bne.n	8000308 <TIM3_IRQHandler+0x4c>
 80002ca:	4913      	ldr	r1, [pc, #76]	; (8000318 <TIM3_IRQHandler+0x5c>)
 80002cc:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 80002d0:	b128      	cbz	r0, 80002de <TIM3_IRQHandler+0x22>
 80002d2:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 80002d6:	3a01      	subs	r2, #1
 80002d8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80002dc:	e009      	b.n	80002f2 <TIM3_IRQHandler+0x36>
 80002de:	480f      	ldr	r0, [pc, #60]	; (800031c <TIM3_IRQHandler+0x60>)
 80002e0:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80002e4:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80002e8:	5cd2      	ldrb	r2, [r2, r3]
 80002ea:	b912      	cbnz	r2, 80002f2 <TIM3_IRQHandler+0x36>
 80002ec:	4a09      	ldr	r2, [pc, #36]	; (8000314 <TIM3_IRQHandler+0x58>)
 80002ee:	2101      	movs	r1, #1
 80002f0:	54d1      	strb	r1, [r2, r3]
 80002f2:	3301      	adds	r3, #1
 80002f4:	2b08      	cmp	r3, #8
 80002f6:	d1e2      	bne.n	80002be <TIM3_IRQHandler+0x2>
 80002f8:	4a09      	ldr	r2, [pc, #36]	; (8000320 <TIM3_IRQHandler+0x64>)
 80002fa:	480a      	ldr	r0, [pc, #40]	; (8000324 <TIM3_IRQHandler+0x68>)
 80002fc:	6813      	ldr	r3, [r2, #0]
 80002fe:	2101      	movs	r1, #1
 8000300:	3301      	adds	r3, #1
 8000302:	6013      	str	r3, [r2, #0]
 8000304:	f001 bba6 	b.w	8001a54 <TIM_ClearITPendingBit>
 8000308:	5cd1      	ldrb	r1, [r2, r3]
 800030a:	3101      	adds	r1, #1
 800030c:	b2c9      	uxtb	r1, r1
 800030e:	54d1      	strb	r1, [r2, r3]
 8000310:	e7db      	b.n	80002ca <TIM3_IRQHandler+0xe>
 8000312:	bf00      	nop
 8000314:	20000050 	.word	0x20000050
 8000318:	20000030 	.word	0x20000030
 800031c:	2000005c 	.word	0x2000005c
 8000320:	20000058 	.word	0x20000058
 8000324:	40000400 	.word	0x40000400

08000328 <_ZN6CTimer8get_timeEv>:
 8000328:	b082      	sub	sp, #8
 800032a:	b672      	cpsid	i
 800032c:	4b04      	ldr	r3, [pc, #16]	; (8000340 <_ZN6CTimer8get_timeEv+0x18>)
 800032e:	681b      	ldr	r3, [r3, #0]
 8000330:	9301      	str	r3, [sp, #4]
 8000332:	b662      	cpsie	i
 8000334:	230a      	movs	r3, #10
 8000336:	9801      	ldr	r0, [sp, #4]
 8000338:	fbb0 f0f3 	udiv	r0, r0, r3
 800033c:	b002      	add	sp, #8
 800033e:	4770      	bx	lr
 8000340:	20000058 	.word	0x20000058

08000344 <_ZN6CTimer8delay_msEm>:
 8000344:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000346:	460c      	mov	r4, r1
 8000348:	4605      	mov	r5, r0
 800034a:	f7ff ffed 	bl	8000328 <_ZN6CTimer8get_timeEv>
 800034e:	4420      	add	r0, r4
 8000350:	9001      	str	r0, [sp, #4]
 8000352:	4628      	mov	r0, r5
 8000354:	9c01      	ldr	r4, [sp, #4]
 8000356:	f7ff ffe7 	bl	8000328 <_ZN6CTimer8get_timeEv>
 800035a:	4284      	cmp	r4, r0
 800035c:	d902      	bls.n	8000364 <_ZN6CTimer8delay_msEm+0x20>
 800035e:	f001 fcc3 	bl	8001ce8 <core_yield>
 8000362:	e7f6      	b.n	8000352 <_ZN6CTimer8delay_msEm+0xe>
 8000364:	b003      	add	sp, #12
 8000366:	bd30      	pop	{r4, r5, pc}

08000368 <_ZN6CTimer22event_timer_set_periodEhm>:
 8000368:	b672      	cpsid	i
 800036a:	230a      	movs	r3, #10
 800036c:	435a      	muls	r2, r3
 800036e:	4b05      	ldr	r3, [pc, #20]	; (8000384 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000370:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000374:	4b04      	ldr	r3, [pc, #16]	; (8000388 <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 8000376:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 800037a:	4b04      	ldr	r3, [pc, #16]	; (800038c <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 800037c:	2200      	movs	r2, #0
 800037e:	545a      	strb	r2, [r3, r1]
 8000380:	b662      	cpsie	i
 8000382:	4770      	bx	lr
 8000384:	20000030 	.word	0x20000030
 8000388:	2000005c 	.word	0x2000005c
 800038c:	20000050 	.word	0x20000050

08000390 <_ZN6CTimer14event_timer_ccEh>:
 8000390:	4b05      	ldr	r3, [pc, #20]	; (80003a8 <_ZN6CTimer14event_timer_ccEh+0x18>)
 8000392:	5c5a      	ldrb	r2, [r3, r1]
 8000394:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 8000398:	b12a      	cbz	r2, 80003a6 <_ZN6CTimer14event_timer_ccEh+0x16>
 800039a:	b672      	cpsid	i
 800039c:	5c58      	ldrb	r0, [r3, r1]
 800039e:	2200      	movs	r2, #0
 80003a0:	b2c0      	uxtb	r0, r0
 80003a2:	545a      	strb	r2, [r3, r1]
 80003a4:	b662      	cpsie	i
 80003a6:	4770      	bx	lr
 80003a8:	20000050 	.word	0x20000050

080003ac <_ZN6CMotor11motor_sleepEv>:
 80003ac:	b508      	push	{r3, lr}
 80003ae:	20c0      	movs	r0, #192	; 0xc0
 80003b0:	2100      	movs	r1, #0
 80003b2:	2218      	movs	r2, #24
 80003b4:	f000 fc2c 	bl	8000c10 <_Z13i2c_write_reghhh>
 80003b8:	20c2      	movs	r0, #194	; 0xc2
 80003ba:	2100      	movs	r1, #0
 80003bc:	2218      	movs	r2, #24
 80003be:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 80003c2:	f000 bc25 	b.w	8000c10 <_Z13i2c_write_reghhh>

080003c6 <_ZN6CMotor9motor_setEml>:
 80003c6:	2901      	cmp	r1, #1
 80003c8:	bf98      	it	ls
 80003ca:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 80003ce:	4770      	bx	lr

080003d0 <_ZN6CMotor13motor_refreshEv>:
 80003d0:	b538      	push	{r3, r4, r5, lr}
 80003d2:	e890 0030 	ldmia.w	r0, {r4, r5}
 80003d6:	2c2c      	cmp	r4, #44	; 0x2c
 80003d8:	dc6c      	bgt.n	80004b4 <_ZN6CMotor13motor_refreshEv+0xe4>
 80003da:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 80003de:	db11      	blt.n	8000404 <_ZN6CMotor13motor_refreshEv+0x34>
 80003e0:	2d2c      	cmp	r5, #44	; 0x2c
 80003e2:	dc58      	bgt.n	8000496 <_ZN6CMotor13motor_refreshEv+0xc6>
 80003e4:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 80003e8:	db31      	blt.n	800044e <_ZN6CMotor13motor_refreshEv+0x7e>
 80003ea:	b1dc      	cbz	r4, 8000424 <_ZN6CMotor13motor_refreshEv+0x54>
 80003ec:	e001      	b.n	80003f2 <_ZN6CMotor13motor_refreshEv+0x22>
 80003ee:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 80003f2:	2c00      	cmp	r4, #0
 80003f4:	dd0d      	ble.n	8000412 <_ZN6CMotor13motor_refreshEv+0x42>
 80003f6:	2c06      	cmp	r4, #6
 80003f8:	bfb8      	it	lt
 80003fa:	2406      	movlt	r4, #6
 80003fc:	00a4      	lsls	r4, r4, #2
 80003fe:	f044 0402 	orr.w	r4, r4, #2
 8000402:	e00d      	b.n	8000420 <_ZN6CMotor13motor_refreshEv+0x50>
 8000404:	2d2c      	cmp	r5, #44	; 0x2c
 8000406:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 800040a:	dc58      	bgt.n	80004be <_ZN6CMotor13motor_refreshEv+0xee>
 800040c:	42a5      	cmp	r5, r4
 800040e:	bfb8      	it	lt
 8000410:	4625      	movlt	r5, r4
 8000412:	4264      	negs	r4, r4
 8000414:	2c06      	cmp	r4, #6
 8000416:	bfb8      	it	lt
 8000418:	2406      	movlt	r4, #6
 800041a:	00a4      	lsls	r4, r4, #2
 800041c:	f044 0401 	orr.w	r4, r4, #1
 8000420:	b2e4      	uxtb	r4, r4
 8000422:	e000      	b.n	8000426 <_ZN6CMotor13motor_refreshEv+0x56>
 8000424:	241b      	movs	r4, #27
 8000426:	2100      	movs	r1, #0
 8000428:	460a      	mov	r2, r1
 800042a:	20c0      	movs	r0, #192	; 0xc0
 800042c:	f000 fbf0 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000430:	20c0      	movs	r0, #192	; 0xc0
 8000432:	2100      	movs	r1, #0
 8000434:	4622      	mov	r2, r4
 8000436:	f000 fbeb 	bl	8000c10 <_Z13i2c_write_reghhh>
 800043a:	2d00      	cmp	r5, #0
 800043c:	d01e      	beq.n	800047c <_ZN6CMotor13motor_refreshEv+0xac>
 800043e:	dd14      	ble.n	800046a <_ZN6CMotor13motor_refreshEv+0x9a>
 8000440:	2d06      	cmp	r5, #6
 8000442:	bfb8      	it	lt
 8000444:	2506      	movlt	r5, #6
 8000446:	00ad      	lsls	r5, r5, #2
 8000448:	f045 0501 	orr.w	r5, r5, #1
 800044c:	e014      	b.n	8000478 <_ZN6CMotor13motor_refreshEv+0xa8>
 800044e:	2c00      	cmp	r4, #0
 8000450:	d1cd      	bne.n	80003ee <_ZN6CMotor13motor_refreshEv+0x1e>
 8000452:	20c0      	movs	r0, #192	; 0xc0
 8000454:	4621      	mov	r1, r4
 8000456:	4622      	mov	r2, r4
 8000458:	f000 fbda 	bl	8000c10 <_Z13i2c_write_reghhh>
 800045c:	20c0      	movs	r0, #192	; 0xc0
 800045e:	4621      	mov	r1, r4
 8000460:	221b      	movs	r2, #27
 8000462:	f000 fbd5 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000466:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 800046a:	426d      	negs	r5, r5
 800046c:	2d06      	cmp	r5, #6
 800046e:	bfb8      	it	lt
 8000470:	2506      	movlt	r5, #6
 8000472:	00ad      	lsls	r5, r5, #2
 8000474:	f045 0502 	orr.w	r5, r5, #2
 8000478:	b2ed      	uxtb	r5, r5
 800047a:	e000      	b.n	800047e <_ZN6CMotor13motor_refreshEv+0xae>
 800047c:	251b      	movs	r5, #27
 800047e:	2100      	movs	r1, #0
 8000480:	460a      	mov	r2, r1
 8000482:	20c2      	movs	r0, #194	; 0xc2
 8000484:	f000 fbc4 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000488:	462a      	mov	r2, r5
 800048a:	20c2      	movs	r0, #194	; 0xc2
 800048c:	2100      	movs	r1, #0
 800048e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000492:	f000 bbbd 	b.w	8000c10 <_Z13i2c_write_reghhh>
 8000496:	b95c      	cbnz	r4, 80004b0 <_ZN6CMotor13motor_refreshEv+0xe0>
 8000498:	20c0      	movs	r0, #192	; 0xc0
 800049a:	4621      	mov	r1, r4
 800049c:	4622      	mov	r2, r4
 800049e:	f000 fbb7 	bl	8000c10 <_Z13i2c_write_reghhh>
 80004a2:	20c0      	movs	r0, #192	; 0xc0
 80004a4:	4621      	mov	r1, r4
 80004a6:	221b      	movs	r2, #27
 80004a8:	f000 fbb2 	bl	8000c10 <_Z13i2c_write_reghhh>
 80004ac:	252c      	movs	r5, #44	; 0x2c
 80004ae:	e7ca      	b.n	8000446 <_ZN6CMotor13motor_refreshEv+0x76>
 80004b0:	252c      	movs	r5, #44	; 0x2c
 80004b2:	e79e      	b.n	80003f2 <_ZN6CMotor13motor_refreshEv+0x22>
 80004b4:	242c      	movs	r4, #44	; 0x2c
 80004b6:	42a5      	cmp	r5, r4
 80004b8:	dd94      	ble.n	80003e4 <_ZN6CMotor13motor_refreshEv+0x14>
 80004ba:	4625      	mov	r5, r4
 80004bc:	e79e      	b.n	80003fc <_ZN6CMotor13motor_refreshEv+0x2c>
 80004be:	252c      	movs	r5, #44	; 0x2c
 80004c0:	e7a7      	b.n	8000412 <_ZN6CMotor13motor_refreshEv+0x42>

080004c2 <_ZN6CMotor10motor_initEv>:
 80004c2:	b510      	push	{r4, lr}
 80004c4:	2400      	movs	r4, #0
 80004c6:	6004      	str	r4, [r0, #0]
 80004c8:	6044      	str	r4, [r0, #4]
 80004ca:	f7ff ff81 	bl	80003d0 <_ZN6CMotor13motor_refreshEv>
 80004ce:	4620      	mov	r0, r4
 80004d0:	bd10      	pop	{r4, pc}

080004d2 <_ZN8CSensors13sensors_sleepEv>:
 80004d2:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80004d6:	2208      	movs	r2, #8
 80004d8:	619a      	str	r2, [r3, #24]
 80004da:	2172      	movs	r1, #114	; 0x72
 80004dc:	2280      	movs	r2, #128	; 0x80
 80004de:	2300      	movs	r3, #0
 80004e0:	f000 ba6b 	b.w	80009ba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>

080004e4 <_ZN8CSensors8rgb_readEh>:
 80004e4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80004e8:	4604      	mov	r4, r0
 80004ea:	4688      	mov	r8, r1
 80004ec:	f000 fa12 	bl	8000914 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80004f0:	4620      	mov	r0, r4
 80004f2:	2172      	movs	r1, #114	; 0x72
 80004f4:	f000 fa38 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80004f8:	21b4      	movs	r1, #180	; 0xb4
 80004fa:	4620      	mov	r0, r4
 80004fc:	f000 fa34 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000500:	4620      	mov	r0, r4
 8000502:	f000 fa07 	bl	8000914 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000506:	4620      	mov	r0, r4
 8000508:	2173      	movs	r1, #115	; 0x73
 800050a:	f000 fa2d 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800050e:	4620      	mov	r0, r4
 8000510:	2101      	movs	r1, #1
 8000512:	4622      	mov	r2, r4
 8000514:	f000 fa69 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000518:	7823      	ldrb	r3, [r4, #0]
 800051a:	83a3      	strh	r3, [r4, #28]
 800051c:	7863      	ldrb	r3, [r4, #1]
 800051e:	83e3      	strh	r3, [r4, #30]
 8000520:	78a3      	ldrb	r3, [r4, #2]
 8000522:	8423      	strh	r3, [r4, #32]
 8000524:	78e3      	ldrb	r3, [r4, #3]
 8000526:	8463      	strh	r3, [r4, #34]	; 0x22
 8000528:	2101      	movs	r1, #1
 800052a:	4620      	mov	r0, r4
 800052c:	4622      	mov	r2, r4
 800052e:	f104 091a 	add.w	r9, r4, #26
 8000532:	1e65      	subs	r5, r4, #1
 8000534:	f000 fa59 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000538:	1ca6      	adds	r6, r4, #2
 800053a:	f104 0722 	add.w	r7, r4, #34	; 0x22
 800053e:	4629      	mov	r1, r5
 8000540:	464b      	mov	r3, r9
 8000542:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000546:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 800054a:	42bb      	cmp	r3, r7
 800054c:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 8000550:	801a      	strh	r2, [r3, #0]
 8000552:	d1f6      	bne.n	8000542 <_ZN8CSensors8rgb_readEh+0x5e>
 8000554:	4620      	mov	r0, r4
 8000556:	2101      	movs	r1, #1
 8000558:	4622      	mov	r2, r4
 800055a:	f000 fa46 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800055e:	7823      	ldrb	r3, [r4, #0]
 8000560:	80a3      	strh	r3, [r4, #4]
 8000562:	7863      	ldrb	r3, [r4, #1]
 8000564:	80e3      	strh	r3, [r4, #6]
 8000566:	78a3      	ldrb	r3, [r4, #2]
 8000568:	8123      	strh	r3, [r4, #8]
 800056a:	78e3      	ldrb	r3, [r4, #3]
 800056c:	8163      	strh	r3, [r4, #10]
 800056e:	2101      	movs	r1, #1
 8000570:	4620      	mov	r0, r4
 8000572:	4622      	mov	r2, r4
 8000574:	f000 fa39 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000578:	f104 0a0a 	add.w	sl, r4, #10
 800057c:	4633      	mov	r3, r6
 800057e:	4629      	mov	r1, r5
 8000580:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000584:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000588:	4553      	cmp	r3, sl
 800058a:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 800058e:	801a      	strh	r2, [r3, #0]
 8000590:	d1f6      	bne.n	8000580 <_ZN8CSensors8rgb_readEh+0x9c>
 8000592:	4620      	mov	r0, r4
 8000594:	2101      	movs	r1, #1
 8000596:	4622      	mov	r2, r4
 8000598:	f000 fa27 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800059c:	7823      	ldrb	r3, [r4, #0]
 800059e:	81a3      	strh	r3, [r4, #12]
 80005a0:	7863      	ldrb	r3, [r4, #1]
 80005a2:	81e3      	strh	r3, [r4, #14]
 80005a4:	78a3      	ldrb	r3, [r4, #2]
 80005a6:	8223      	strh	r3, [r4, #16]
 80005a8:	78e3      	ldrb	r3, [r4, #3]
 80005aa:	8263      	strh	r3, [r4, #18]
 80005ac:	4622      	mov	r2, r4
 80005ae:	4620      	mov	r0, r4
 80005b0:	2101      	movs	r1, #1
 80005b2:	f000 fa1a 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005b6:	f104 0612 	add.w	r6, r4, #18
 80005ba:	462a      	mov	r2, r5
 80005bc:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 80005c0:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80005c4:	45b2      	cmp	sl, r6
 80005c6:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80005ca:	f8aa 3000 	strh.w	r3, [sl]
 80005ce:	d1f5      	bne.n	80005bc <_ZN8CSensors8rgb_readEh+0xd8>
 80005d0:	4620      	mov	r0, r4
 80005d2:	2101      	movs	r1, #1
 80005d4:	4622      	mov	r2, r4
 80005d6:	f000 fa08 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005da:	7823      	ldrb	r3, [r4, #0]
 80005dc:	82a3      	strh	r3, [r4, #20]
 80005de:	7863      	ldrb	r3, [r4, #1]
 80005e0:	82e3      	strh	r3, [r4, #22]
 80005e2:	78a3      	ldrb	r3, [r4, #2]
 80005e4:	8323      	strh	r3, [r4, #24]
 80005e6:	78e3      	ldrb	r3, [r4, #3]
 80005e8:	8363      	strh	r3, [r4, #26]
 80005ea:	4622      	mov	r2, r4
 80005ec:	4620      	mov	r0, r4
 80005ee:	2101      	movs	r1, #1
 80005f0:	f000 f9fb 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005f4:	462a      	mov	r2, r5
 80005f6:	f836 3f02 	ldrh.w	r3, [r6, #2]!
 80005fa:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 80005fe:	454e      	cmp	r6, r9
 8000600:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000604:	8033      	strh	r3, [r6, #0]
 8000606:	d1f6      	bne.n	80005f6 <_ZN8CSensors8rgb_readEh+0x112>
 8000608:	4620      	mov	r0, r4
 800060a:	2101      	movs	r1, #1
 800060c:	4622      	mov	r2, r4
 800060e:	f000 f9ec 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000612:	7823      	ldrb	r3, [r4, #0]
 8000614:	84a3      	strh	r3, [r4, #36]	; 0x24
 8000616:	7863      	ldrb	r3, [r4, #1]
 8000618:	84e3      	strh	r3, [r4, #38]	; 0x26
 800061a:	78a3      	ldrb	r3, [r4, #2]
 800061c:	8523      	strh	r3, [r4, #40]	; 0x28
 800061e:	78e3      	ldrb	r3, [r4, #3]
 8000620:	8563      	strh	r3, [r4, #42]	; 0x2a
 8000622:	4622      	mov	r2, r4
 8000624:	4620      	mov	r0, r4
 8000626:	2100      	movs	r1, #0
 8000628:	f000 f9df 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 800062c:	f104 022a 	add.w	r2, r4, #42	; 0x2a
 8000630:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 8000634:	f815 1f01 	ldrb.w	r1, [r5, #1]!
 8000638:	4297      	cmp	r7, r2
 800063a:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 800063e:	803b      	strh	r3, [r7, #0]
 8000640:	d1f6      	bne.n	8000630 <_ZN8CSensors8rgb_readEh+0x14c>
 8000642:	4620      	mov	r0, r4
 8000644:	f000 f97b 	bl	800093e <_ZN8CRGB_I2C11rgb_i2cStopEv>
 8000648:	f1b8 0f00 	cmp.w	r8, #0
 800064c:	d025      	beq.n	800069a <_ZN8CSensors8rgb_readEh+0x1b6>
 800064e:	2300      	movs	r3, #0
 8000650:	88a1      	ldrh	r1, [r4, #4]
 8000652:	f8b4 2044 	ldrh.w	r2, [r4, #68]	; 0x44
 8000656:	440a      	add	r2, r1
 8000658:	f8a4 2044 	strh.w	r2, [r4, #68]	; 0x44
 800065c:	89a1      	ldrh	r1, [r4, #12]
 800065e:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 8000662:	440a      	add	r2, r1
 8000664:	f8a4 204c 	strh.w	r2, [r4, #76]	; 0x4c
 8000668:	8aa1      	ldrh	r1, [r4, #20]
 800066a:	f8b4 2054 	ldrh.w	r2, [r4, #84]	; 0x54
 800066e:	440a      	add	r2, r1
 8000670:	f8a4 2054 	strh.w	r2, [r4, #84]	; 0x54
 8000674:	8ca1      	ldrh	r1, [r4, #36]	; 0x24
 8000676:	f8b4 2064 	ldrh.w	r2, [r4, #100]	; 0x64
 800067a:	440a      	add	r2, r1
 800067c:	f8a4 2064 	strh.w	r2, [r4, #100]	; 0x64
 8000680:	8ba1      	ldrh	r1, [r4, #28]
 8000682:	f8b4 205c 	ldrh.w	r2, [r4, #92]	; 0x5c
 8000686:	3301      	adds	r3, #1
 8000688:	440a      	add	r2, r1
 800068a:	2b04      	cmp	r3, #4
 800068c:	f8a4 205c 	strh.w	r2, [r4, #92]	; 0x5c
 8000690:	f104 0402 	add.w	r4, r4, #2
 8000694:	d1dc      	bne.n	8000650 <_ZN8CSensors8rgb_readEh+0x16c>
 8000696:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800069a:	4641      	mov	r1, r8
 800069c:	b672      	cpsid	i
 800069e:	88a3      	ldrh	r3, [r4, #4]
 80006a0:	f8b4 0044 	ldrh.w	r0, [r4, #68]	; 0x44
 80006a4:	f8b4 204c 	ldrh.w	r2, [r4, #76]	; 0x4c
 80006a8:	f8b4 5054 	ldrh.w	r5, [r4, #84]	; 0x54
 80006ac:	f8b4 6064 	ldrh.w	r6, [r4, #100]	; 0x64
 80006b0:	1a18      	subs	r0, r3, r0
 80006b2:	89a3      	ldrh	r3, [r4, #12]
 80006b4:	1a9a      	subs	r2, r3, r2
 80006b6:	8aa3      	ldrh	r3, [r4, #20]
 80006b8:	1b5b      	subs	r3, r3, r5
 80006ba:	8ca5      	ldrh	r5, [r4, #36]	; 0x24
 80006bc:	1bad      	subs	r5, r5, r6
 80006be:	84a5      	strh	r5, [r4, #36]	; 0x24
 80006c0:	f8b4 605c 	ldrh.w	r6, [r4, #92]	; 0x5c
 80006c4:	8ba5      	ldrh	r5, [r4, #28]
 80006c6:	b280      	uxth	r0, r0
 80006c8:	b292      	uxth	r2, r2
 80006ca:	b29b      	uxth	r3, r3
 80006cc:	1bad      	subs	r5, r5, r6
 80006ce:	80a0      	strh	r0, [r4, #4]
 80006d0:	81a2      	strh	r2, [r4, #12]
 80006d2:	82a3      	strh	r3, [r4, #20]
 80006d4:	83a5      	strh	r5, [r4, #28]
 80006d6:	b662      	cpsie	i
 80006d8:	b200      	sxth	r0, r0
 80006da:	b212      	sxth	r2, r2
 80006dc:	1885      	adds	r5, r0, r2
 80006de:	b21b      	sxth	r3, r3
 80006e0:	18ed      	adds	r5, r5, r3
 80006e2:	d00e      	beq.n	8000702 <_ZN8CSensors8rgb_readEh+0x21e>
 80006e4:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 80006e8:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 80006ec:	fb90 f0f5 	sdiv	r0, r0, r5
 80006f0:	fb92 f2f5 	sdiv	r2, r2, r5
 80006f4:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 80006f8:	85a0      	strh	r0, [r4, #44]	; 0x2c
 80006fa:	fb93 f3f5 	sdiv	r3, r3, r5
 80006fe:	86a2      	strh	r2, [r4, #52]	; 0x34
 8000700:	87a3      	strh	r3, [r4, #60]	; 0x3c
 8000702:	3101      	adds	r1, #1
 8000704:	2904      	cmp	r1, #4
 8000706:	f104 0402 	add.w	r4, r4, #2
 800070a:	d1c7      	bne.n	800069c <_ZN8CSensors8rgb_readEh+0x1b8>
 800070c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}

08000710 <_ZN8CSensors12sensors_initEv>:
 8000710:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000712:	4603      	mov	r3, r0
 8000714:	4605      	mov	r5, r0
 8000716:	4606      	mov	r6, r0
 8000718:	2200      	movs	r2, #0
 800071a:	3201      	adds	r2, #1
 800071c:	2400      	movs	r4, #0
 800071e:	2a04      	cmp	r2, #4
 8000720:	809c      	strh	r4, [r3, #4]
 8000722:	819c      	strh	r4, [r3, #12]
 8000724:	829c      	strh	r4, [r3, #20]
 8000726:	849c      	strh	r4, [r3, #36]	; 0x24
 8000728:	839c      	strh	r4, [r3, #28]
 800072a:	f8a3 4044 	strh.w	r4, [r3, #68]	; 0x44
 800072e:	f8a3 404c 	strh.w	r4, [r3, #76]	; 0x4c
 8000732:	f8a3 4054 	strh.w	r4, [r3, #84]	; 0x54
 8000736:	f8a3 4064 	strh.w	r4, [r3, #100]	; 0x64
 800073a:	f8a3 405c 	strh.w	r4, [r3, #92]	; 0x5c
 800073e:	859c      	strh	r4, [r3, #44]	; 0x2c
 8000740:	869c      	strh	r4, [r3, #52]	; 0x34
 8000742:	879c      	strh	r4, [r3, #60]	; 0x3c
 8000744:	f103 0302 	add.w	r3, r3, #2
 8000748:	d1e7      	bne.n	800071a <_ZN8CSensors12sensors_initEv+0xa>
 800074a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800074e:	2208      	movs	r2, #8
 8000750:	851a      	strh	r2, [r3, #40]	; 0x28
 8000752:	4628      	mov	r0, r5
 8000754:	f000 f8aa 	bl	80008ac <_ZN8CRGB_I2C12rgb_i2c_initEv>
 8000758:	4628      	mov	r0, r5
 800075a:	2172      	movs	r1, #114	; 0x72
 800075c:	2281      	movs	r2, #129	; 0x81
 800075e:	23ff      	movs	r3, #255	; 0xff
 8000760:	f000 f92b 	bl	80009ba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000764:	4628      	mov	r0, r5
 8000766:	2172      	movs	r1, #114	; 0x72
 8000768:	2283      	movs	r2, #131	; 0x83
 800076a:	23ff      	movs	r3, #255	; 0xff
 800076c:	f000 f925 	bl	80009ba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000770:	4628      	mov	r0, r5
 8000772:	2172      	movs	r1, #114	; 0x72
 8000774:	228d      	movs	r2, #141	; 0x8d
 8000776:	4623      	mov	r3, r4
 8000778:	f000 f91f 	bl	80009ba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800077c:	4628      	mov	r0, r5
 800077e:	2172      	movs	r1, #114	; 0x72
 8000780:	2280      	movs	r2, #128	; 0x80
 8000782:	2303      	movs	r3, #3
 8000784:	f000 f919 	bl	80009ba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000788:	228f      	movs	r2, #143	; 0x8f
 800078a:	2323      	movs	r3, #35	; 0x23
 800078c:	4628      	mov	r0, r5
 800078e:	2172      	movs	r1, #114	; 0x72
 8000790:	f000 f913 	bl	80009ba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000794:	af01      	add	r7, sp, #4
 8000796:	4628      	mov	r0, r5
 8000798:	4621      	mov	r1, r4
 800079a:	f7ff fea3 	bl	80004e4 <_ZN8CSensors8rgb_readEh>
 800079e:	463b      	mov	r3, r7
 80007a0:	4628      	mov	r0, r5
 80007a2:	2172      	movs	r1, #114	; 0x72
 80007a4:	2292      	movs	r2, #146	; 0x92
 80007a6:	f000 f96d 	bl	8000a84 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 80007aa:	4623      	mov	r3, r4
 80007ac:	5cfa      	ldrb	r2, [r7, r3]
 80007ae:	2a69      	cmp	r2, #105	; 0x69
 80007b0:	bf1c      	itt	ne
 80007b2:	2201      	movne	r2, #1
 80007b4:	409a      	lslne	r2, r3
 80007b6:	f103 0301 	add.w	r3, r3, #1
 80007ba:	bf18      	it	ne
 80007bc:	4314      	orrne	r4, r2
 80007be:	2b04      	cmp	r3, #4
 80007c0:	d1f4      	bne.n	80007ac <_ZN8CSensors12sensors_initEv+0x9c>
 80007c2:	461f      	mov	r7, r3
 80007c4:	4628      	mov	r0, r5
 80007c6:	2101      	movs	r1, #1
 80007c8:	f7ff fe8c 	bl	80004e4 <_ZN8CSensors8rgb_readEh>
 80007cc:	3f01      	subs	r7, #1
 80007ce:	d1f9      	bne.n	80007c4 <_ZN8CSensors12sensors_initEv+0xb4>
 80007d0:	2104      	movs	r1, #4
 80007d2:	f9b6 3044 	ldrsh.w	r3, [r6, #68]	; 0x44
 80007d6:	089b      	lsrs	r3, r3, #2
 80007d8:	f8a6 3044 	strh.w	r3, [r6, #68]	; 0x44
 80007dc:	f9b6 304c 	ldrsh.w	r3, [r6, #76]	; 0x4c
 80007e0:	089b      	lsrs	r3, r3, #2
 80007e2:	f8a6 304c 	strh.w	r3, [r6, #76]	; 0x4c
 80007e6:	f9b6 3054 	ldrsh.w	r3, [r6, #84]	; 0x54
 80007ea:	089b      	lsrs	r3, r3, #2
 80007ec:	f8a6 3054 	strh.w	r3, [r6, #84]	; 0x54
 80007f0:	f9b6 3064 	ldrsh.w	r3, [r6, #100]	; 0x64
 80007f4:	089b      	lsrs	r3, r3, #2
 80007f6:	f8a6 3064 	strh.w	r3, [r6, #100]	; 0x64
 80007fa:	f9b6 305c 	ldrsh.w	r3, [r6, #92]	; 0x5c
 80007fe:	3901      	subs	r1, #1
 8000800:	ea4f 0393 	mov.w	r3, r3, lsr #2
 8000804:	f8a6 305c 	strh.w	r3, [r6, #92]	; 0x5c
 8000808:	f106 0602 	add.w	r6, r6, #2
 800080c:	d1e1      	bne.n	80007d2 <_ZN8CSensors12sensors_initEv+0xc2>
 800080e:	4628      	mov	r0, r5
 8000810:	f7ff fe68 	bl	80004e4 <_ZN8CSensors8rgb_readEh>
 8000814:	4260      	negs	r0, r4
 8000816:	b003      	add	sp, #12
 8000818:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800081a <_ZN8CSensors14get_rgb_resultEv>:
 800081a:	3004      	adds	r0, #4
 800081c:	4770      	bx	lr

0800081e <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 800081e:	bf00      	nop
 8000820:	4770      	bx	lr

08000822 <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000822:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000824:	2301      	movs	r3, #1
 8000826:	2203      	movs	r2, #3
 8000828:	4605      	mov	r5, r0
 800082a:	24f0      	movs	r4, #240	; 0xf0
 800082c:	f88d 3004 	strb.w	r3, [sp, #4]
 8000830:	f88d 3006 	strb.w	r3, [sp, #6]
 8000834:	4669      	mov	r1, sp
 8000836:	2300      	movs	r3, #0
 8000838:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800083c:	f88d 2005 	strb.w	r2, [sp, #5]
 8000840:	f88d 3007 	strb.w	r3, [sp, #7]
 8000844:	9400      	str	r4, [sp, #0]
 8000846:	f001 fa8d 	bl	8001d64 <GPIO_Init>
 800084a:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 800084e:	4628      	mov	r0, r5
 8000850:	851c      	strh	r4, [r3, #40]	; 0x28
 8000852:	f7ff ffe4 	bl	800081e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000856:	b003      	add	sp, #12
 8000858:	bd30      	pop	{r4, r5, pc}

0800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 800085a:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800085c:	2300      	movs	r3, #0
 800085e:	2203      	movs	r2, #3
 8000860:	4605      	mov	r5, r0
 8000862:	24f0      	movs	r4, #240	; 0xf0
 8000864:	4669      	mov	r1, sp
 8000866:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800086a:	f88d 3004 	strb.w	r3, [sp, #4]
 800086e:	f88d 2005 	strb.w	r2, [sp, #5]
 8000872:	f88d 3007 	strb.w	r3, [sp, #7]
 8000876:	9400      	str	r4, [sp, #0]
 8000878:	f001 fa74 	bl	8001d64 <GPIO_Init>
 800087c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000880:	4628      	mov	r0, r5
 8000882:	619c      	str	r4, [r3, #24]
 8000884:	f7ff ffcb 	bl	800081e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000888:	b003      	add	sp, #12
 800088a:	bd30      	pop	{r4, r5, pc}

0800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 800088c:	4b02      	ldr	r3, [pc, #8]	; (8000898 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 800088e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000892:	851a      	strh	r2, [r3, #40]	; 0x28
 8000894:	f7ff bfc3 	b.w	800081e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000898:	48000800 	.word	0x48000800

0800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 800089c:	4b02      	ldr	r3, [pc, #8]	; (80008a8 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 800089e:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 80008a2:	619a      	str	r2, [r3, #24]
 80008a4:	f7ff bfbb 	b.w	800081e <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 80008a8:	48000800 	.word	0x48000800

080008ac <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 80008ac:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80008ae:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 80008b2:	4605      	mov	r5, r0
 80008b4:	2400      	movs	r4, #0
 80008b6:	9300      	str	r3, [sp, #0]
 80008b8:	2703      	movs	r7, #3
 80008ba:	2301      	movs	r3, #1
 80008bc:	4669      	mov	r1, sp
 80008be:	4814      	ldr	r0, [pc, #80]	; (8000910 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x64>)
 80008c0:	f88d 3004 	strb.w	r3, [sp, #4]
 80008c4:	26f0      	movs	r6, #240	; 0xf0
 80008c6:	f88d 7005 	strb.w	r7, [sp, #5]
 80008ca:	f88d 4006 	strb.w	r4, [sp, #6]
 80008ce:	f88d 4007 	strb.w	r4, [sp, #7]
 80008d2:	f001 fa47 	bl	8001d64 <GPIO_Init>
 80008d6:	4669      	mov	r1, sp
 80008d8:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80008dc:	9600      	str	r6, [sp, #0]
 80008de:	f88d 4004 	strb.w	r4, [sp, #4]
 80008e2:	f88d 7005 	strb.w	r7, [sp, #5]
 80008e6:	f88d 4007 	strb.w	r4, [sp, #7]
 80008ea:	f001 fa3b 	bl	8001d64 <GPIO_Init>
 80008ee:	4631      	mov	r1, r6
 80008f0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80008f4:	f001 fa78 	bl	8001de8 <GPIO_SetBits>
 80008f8:	4628      	mov	r0, r5
 80008fa:	f7ff ffcf 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80008fe:	4628      	mov	r0, r5
 8000900:	f7ff ff8f 	bl	8000822 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000904:	4628      	mov	r0, r5
 8000906:	f7ff ffa8 	bl	800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 800090a:	b003      	add	sp, #12
 800090c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800090e:	bf00      	nop
 8000910:	48000800 	.word	0x48000800

08000914 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000914:	b510      	push	{r4, lr}
 8000916:	4604      	mov	r4, r0
 8000918:	f7ff ffc0 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800091c:	4620      	mov	r0, r4
 800091e:	f7ff ff9c 	bl	800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000922:	4620      	mov	r0, r4
 8000924:	f7ff ffba 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000928:	4620      	mov	r0, r4
 800092a:	f7ff ff7a 	bl	8000822 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800092e:	4620      	mov	r0, r4
 8000930:	f7ff ffac 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000934:	4620      	mov	r0, r4
 8000936:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800093a:	f7ff bf8e 	b.w	800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>

0800093e <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 800093e:	b510      	push	{r4, lr}
 8000940:	4604      	mov	r4, r0
 8000942:	f7ff ffa3 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000946:	4620      	mov	r0, r4
 8000948:	f7ff ff6b 	bl	8000822 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 800094c:	4620      	mov	r0, r4
 800094e:	f7ff ffa5 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000952:	4620      	mov	r0, r4
 8000954:	f7ff ff65 	bl	8000822 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000958:	4620      	mov	r0, r4
 800095a:	f7ff ff9f 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800095e:	4620      	mov	r0, r4
 8000960:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000964:	f7ff bf79 	b.w	800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000968:	b570      	push	{r4, r5, r6, lr}
 800096a:	4604      	mov	r4, r0
 800096c:	460e      	mov	r6, r1
 800096e:	2508      	movs	r5, #8
 8000970:	4620      	mov	r0, r4
 8000972:	f7ff ff8b 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000976:	0633      	lsls	r3, r6, #24
 8000978:	4620      	mov	r0, r4
 800097a:	d502      	bpl.n	8000982 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 800097c:	f7ff ff6d 	bl	800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000980:	e001      	b.n	8000986 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000982:	f7ff ff4e 	bl	8000822 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000986:	4620      	mov	r0, r4
 8000988:	3d01      	subs	r5, #1
 800098a:	f7ff ff87 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 800098e:	0076      	lsls	r6, r6, #1
 8000990:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000994:	b2f6      	uxtb	r6, r6
 8000996:	d1eb      	bne.n	8000970 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000998:	4620      	mov	r0, r4
 800099a:	f7ff ff77 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 800099e:	4620      	mov	r0, r4
 80009a0:	f7ff ff5b 	bl	800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 80009a4:	4620      	mov	r0, r4
 80009a6:	f7ff ff79 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 80009aa:	4620      	mov	r0, r4
 80009ac:	f7ff ff6e 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 80009b0:	4620      	mov	r0, r4
 80009b2:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80009b6:	f7ff bf32 	b.w	800081e <_ZN8CRGB_I2C13rgb_i2c_delayEv>

080009ba <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 80009ba:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80009bc:	4604      	mov	r4, r0
 80009be:	460f      	mov	r7, r1
 80009c0:	4616      	mov	r6, r2
 80009c2:	461d      	mov	r5, r3
 80009c4:	f7ff ffa6 	bl	8000914 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 80009c8:	4620      	mov	r0, r4
 80009ca:	4639      	mov	r1, r7
 80009cc:	f7ff ffcc 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80009d0:	4620      	mov	r0, r4
 80009d2:	4631      	mov	r1, r6
 80009d4:	f7ff ffc8 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80009d8:	4620      	mov	r0, r4
 80009da:	4629      	mov	r1, r5
 80009dc:	f7ff ffc4 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 80009e0:	4620      	mov	r0, r4
 80009e2:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80009e6:	f7ff bfaa 	b.w	800093e <_ZN8CRGB_I2C11rgb_i2cStopEv>

080009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 80009ea:	2300      	movs	r3, #0
 80009ec:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80009f0:	4605      	mov	r5, r0
 80009f2:	7013      	strb	r3, [r2, #0]
 80009f4:	7053      	strb	r3, [r2, #1]
 80009f6:	7093      	strb	r3, [r2, #2]
 80009f8:	70d3      	strb	r3, [r2, #3]
 80009fa:	460e      	mov	r6, r1
 80009fc:	4614      	mov	r4, r2
 80009fe:	1cd7      	adds	r7, r2, #3
 8000a00:	f7ff ff44 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a04:	4628      	mov	r0, r5
 8000a06:	f7ff ff28 	bl	800085a <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000a0a:	f04f 0808 	mov.w	r8, #8
 8000a0e:	1e63      	subs	r3, r4, #1
 8000a10:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000a14:	0052      	lsls	r2, r2, #1
 8000a16:	42bb      	cmp	r3, r7
 8000a18:	701a      	strb	r2, [r3, #0]
 8000a1a:	d1f9      	bne.n	8000a10 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000a1c:	4628      	mov	r0, r5
 8000a1e:	f7ff ff3d 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a22:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000a26:	8a1b      	ldrh	r3, [r3, #16]
 8000a28:	b29b      	uxth	r3, r3
 8000a2a:	06d8      	lsls	r0, r3, #27
 8000a2c:	bf42      	ittt	mi
 8000a2e:	7822      	ldrbmi	r2, [r4, #0]
 8000a30:	f042 0201 	orrmi.w	r2, r2, #1
 8000a34:	7022      	strbmi	r2, [r4, #0]
 8000a36:	0699      	lsls	r1, r3, #26
 8000a38:	bf42      	ittt	mi
 8000a3a:	7862      	ldrbmi	r2, [r4, #1]
 8000a3c:	f042 0201 	orrmi.w	r2, r2, #1
 8000a40:	7062      	strbmi	r2, [r4, #1]
 8000a42:	065a      	lsls	r2, r3, #25
 8000a44:	bf42      	ittt	mi
 8000a46:	78a2      	ldrbmi	r2, [r4, #2]
 8000a48:	f042 0201 	orrmi.w	r2, r2, #1
 8000a4c:	70a2      	strbmi	r2, [r4, #2]
 8000a4e:	061b      	lsls	r3, r3, #24
 8000a50:	bf42      	ittt	mi
 8000a52:	78e3      	ldrbmi	r3, [r4, #3]
 8000a54:	f043 0301 	orrmi.w	r3, r3, #1
 8000a58:	70e3      	strbmi	r3, [r4, #3]
 8000a5a:	4628      	mov	r0, r5
 8000a5c:	f7ff ff16 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a60:	f1b8 0801 	subs.w	r8, r8, #1
 8000a64:	d1d3      	bne.n	8000a0e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000a66:	b116      	cbz	r6, 8000a6e <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000a68:	4628      	mov	r0, r5
 8000a6a:	f7ff feda 	bl	8000822 <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000a6e:	4628      	mov	r0, r5
 8000a70:	f7ff ff14 	bl	800089c <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000a74:	4628      	mov	r0, r5
 8000a76:	f7ff ff09 	bl	800088c <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000a7a:	4628      	mov	r0, r5
 8000a7c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000a80:	f7ff becd 	b.w	800081e <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000a84 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000a84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000a86:	4604      	mov	r4, r0
 8000a88:	460d      	mov	r5, r1
 8000a8a:	4617      	mov	r7, r2
 8000a8c:	461e      	mov	r6, r3
 8000a8e:	f7ff ff41 	bl	8000914 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000a92:	4620      	mov	r0, r4
 8000a94:	4629      	mov	r1, r5
 8000a96:	f7ff ff67 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000a9a:	4639      	mov	r1, r7
 8000a9c:	4620      	mov	r0, r4
 8000a9e:	f7ff ff63 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000aa2:	4620      	mov	r0, r4
 8000aa4:	f7ff ff36 	bl	8000914 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000aa8:	4620      	mov	r0, r4
 8000aaa:	f045 0101 	orr.w	r1, r5, #1
 8000aae:	f7ff ff5b 	bl	8000968 <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000ab2:	4620      	mov	r0, r4
 8000ab4:	4632      	mov	r2, r6
 8000ab6:	2100      	movs	r1, #0
 8000ab8:	f7ff ff97 	bl	80009ea <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000abc:	4620      	mov	r0, r4
 8000abe:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000ac2:	f7ff bf3c 	b.w	800093e <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000ac6 <_Z9i2c_delayv>:
 8000ac6:	bf00      	nop
 8000ac8:	bf00      	nop
 8000aca:	bf00      	nop
 8000acc:	bf00      	nop
 8000ace:	4770      	bx	lr

08000ad0 <_Z9SetLowSDAv>:
 8000ad0:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000ad2:	4c0b      	ldr	r4, [pc, #44]	; (8000b00 <_Z9SetLowSDAv+0x30>)
 8000ad4:	2301      	movs	r3, #1
 8000ad6:	2203      	movs	r2, #3
 8000ad8:	2580      	movs	r5, #128	; 0x80
 8000ada:	f88d 3004 	strb.w	r3, [sp, #4]
 8000ade:	f88d 3006 	strb.w	r3, [sp, #6]
 8000ae2:	4620      	mov	r0, r4
 8000ae4:	2300      	movs	r3, #0
 8000ae6:	4669      	mov	r1, sp
 8000ae8:	f88d 2005 	strb.w	r2, [sp, #5]
 8000aec:	f88d 3007 	strb.w	r3, [sp, #7]
 8000af0:	9500      	str	r5, [sp, #0]
 8000af2:	f001 f937 	bl	8001d64 <GPIO_Init>
 8000af6:	8525      	strh	r5, [r4, #40]	; 0x28
 8000af8:	f7ff ffe5 	bl	8000ac6 <_Z9i2c_delayv>
 8000afc:	b003      	add	sp, #12
 8000afe:	bd30      	pop	{r4, r5, pc}
 8000b00:	48000400 	.word	0x48000400

08000b04 <_Z10SetHighSDAv>:
 8000b04:	4b05      	ldr	r3, [pc, #20]	; (8000b1c <_Z10SetHighSDAv+0x18>)
 8000b06:	681a      	ldr	r2, [r3, #0]
 8000b08:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000b0c:	601a      	str	r2, [r3, #0]
 8000b0e:	681a      	ldr	r2, [r3, #0]
 8000b10:	601a      	str	r2, [r3, #0]
 8000b12:	2280      	movs	r2, #128	; 0x80
 8000b14:	619a      	str	r2, [r3, #24]
 8000b16:	f7ff bfd6 	b.w	8000ac6 <_Z9i2c_delayv>
 8000b1a:	bf00      	nop
 8000b1c:	48000400 	.word	0x48000400

08000b20 <_Z9SetLowSCLv>:
 8000b20:	4b02      	ldr	r3, [pc, #8]	; (8000b2c <_Z9SetLowSCLv+0xc>)
 8000b22:	2240      	movs	r2, #64	; 0x40
 8000b24:	851a      	strh	r2, [r3, #40]	; 0x28
 8000b26:	f7ff bfce 	b.w	8000ac6 <_Z9i2c_delayv>
 8000b2a:	bf00      	nop
 8000b2c:	48000400 	.word	0x48000400

08000b30 <_Z10SetHighSCLv>:
 8000b30:	4b02      	ldr	r3, [pc, #8]	; (8000b3c <_Z10SetHighSCLv+0xc>)
 8000b32:	2240      	movs	r2, #64	; 0x40
 8000b34:	619a      	str	r2, [r3, #24]
 8000b36:	f7ff bfc6 	b.w	8000ac6 <_Z9i2c_delayv>
 8000b3a:	bf00      	nop
 8000b3c:	48000400 	.word	0x48000400

08000b40 <_Z8i2c_initv>:
 8000b40:	b507      	push	{r0, r1, r2, lr}
 8000b42:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000b46:	2101      	movs	r1, #1
 8000b48:	f000 fefc 	bl	8001944 <RCC_AHBPeriphClockCmd>
 8000b4c:	23c0      	movs	r3, #192	; 0xc0
 8000b4e:	9300      	str	r3, [sp, #0]
 8000b50:	2301      	movs	r3, #1
 8000b52:	2203      	movs	r2, #3
 8000b54:	480a      	ldr	r0, [pc, #40]	; (8000b80 <_Z8i2c_initv+0x40>)
 8000b56:	f88d 3004 	strb.w	r3, [sp, #4]
 8000b5a:	4669      	mov	r1, sp
 8000b5c:	f88d 3006 	strb.w	r3, [sp, #6]
 8000b60:	2300      	movs	r3, #0
 8000b62:	f88d 2005 	strb.w	r2, [sp, #5]
 8000b66:	f88d 3007 	strb.w	r3, [sp, #7]
 8000b6a:	f001 f8fb 	bl	8001d64 <GPIO_Init>
 8000b6e:	f7ff ffdf 	bl	8000b30 <_Z10SetHighSCLv>
 8000b72:	f7ff ffad 	bl	8000ad0 <_Z9SetLowSDAv>
 8000b76:	f7ff ffc5 	bl	8000b04 <_Z10SetHighSDAv>
 8000b7a:	b003      	add	sp, #12
 8000b7c:	f85d fb04 	ldr.w	pc, [sp], #4
 8000b80:	48000400 	.word	0x48000400

08000b84 <_Z8i2cStartv>:
 8000b84:	b508      	push	{r3, lr}
 8000b86:	f7ff ffd3 	bl	8000b30 <_Z10SetHighSCLv>
 8000b8a:	f7ff ffbb 	bl	8000b04 <_Z10SetHighSDAv>
 8000b8e:	f7ff ffcf 	bl	8000b30 <_Z10SetHighSCLv>
 8000b92:	f7ff ff9d 	bl	8000ad0 <_Z9SetLowSDAv>
 8000b96:	f7ff ffc3 	bl	8000b20 <_Z9SetLowSCLv>
 8000b9a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000b9e:	f7ff bfb1 	b.w	8000b04 <_Z10SetHighSDAv>

08000ba2 <_Z7i2cStopv>:
 8000ba2:	b508      	push	{r3, lr}
 8000ba4:	f7ff ffbc 	bl	8000b20 <_Z9SetLowSCLv>
 8000ba8:	f7ff ff92 	bl	8000ad0 <_Z9SetLowSDAv>
 8000bac:	f7ff ffc0 	bl	8000b30 <_Z10SetHighSCLv>
 8000bb0:	f7ff ff8e 	bl	8000ad0 <_Z9SetLowSDAv>
 8000bb4:	f7ff ffbc 	bl	8000b30 <_Z10SetHighSCLv>
 8000bb8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000bbc:	f7ff bfa2 	b.w	8000b04 <_Z10SetHighSDAv>

08000bc0 <_Z8i2cWriteh>:
 8000bc0:	b538      	push	{r3, r4, r5, lr}
 8000bc2:	4605      	mov	r5, r0
 8000bc4:	2408      	movs	r4, #8
 8000bc6:	f7ff ffab 	bl	8000b20 <_Z9SetLowSCLv>
 8000bca:	062b      	lsls	r3, r5, #24
 8000bcc:	d502      	bpl.n	8000bd4 <_Z8i2cWriteh+0x14>
 8000bce:	f7ff ff99 	bl	8000b04 <_Z10SetHighSDAv>
 8000bd2:	e001      	b.n	8000bd8 <_Z8i2cWriteh+0x18>
 8000bd4:	f7ff ff7c 	bl	8000ad0 <_Z9SetLowSDAv>
 8000bd8:	3c01      	subs	r4, #1
 8000bda:	f7ff ffa9 	bl	8000b30 <_Z10SetHighSCLv>
 8000bde:	006d      	lsls	r5, r5, #1
 8000be0:	f014 04ff 	ands.w	r4, r4, #255	; 0xff
 8000be4:	b2ed      	uxtb	r5, r5
 8000be6:	d1ee      	bne.n	8000bc6 <_Z8i2cWriteh+0x6>
 8000be8:	f7ff ff9a 	bl	8000b20 <_Z9SetLowSCLv>
 8000bec:	f7ff ff8a 	bl	8000b04 <_Z10SetHighSDAv>
 8000bf0:	f7ff ff9e 	bl	8000b30 <_Z10SetHighSCLv>
 8000bf4:	4b05      	ldr	r3, [pc, #20]	; (8000c0c <_Z8i2cWriteh+0x4c>)
 8000bf6:	8a1c      	ldrh	r4, [r3, #16]
 8000bf8:	b2a4      	uxth	r4, r4
 8000bfa:	f7ff ff91 	bl	8000b20 <_Z9SetLowSCLv>
 8000bfe:	f7ff ff62 	bl	8000ac6 <_Z9i2c_delayv>
 8000c02:	f084 0080 	eor.w	r0, r4, #128	; 0x80
 8000c06:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000c0a:	bd38      	pop	{r3, r4, r5, pc}
 8000c0c:	48000400 	.word	0x48000400

08000c10 <_Z13i2c_write_reghhh>:
 8000c10:	b570      	push	{r4, r5, r6, lr}
 8000c12:	4606      	mov	r6, r0
 8000c14:	460d      	mov	r5, r1
 8000c16:	4614      	mov	r4, r2
 8000c18:	f7ff ffb4 	bl	8000b84 <_Z8i2cStartv>
 8000c1c:	4630      	mov	r0, r6
 8000c1e:	f7ff ffcf 	bl	8000bc0 <_Z8i2cWriteh>
 8000c22:	4628      	mov	r0, r5
 8000c24:	f7ff ffcc 	bl	8000bc0 <_Z8i2cWriteh>
 8000c28:	4620      	mov	r0, r4
 8000c2a:	f7ff ffc9 	bl	8000bc0 <_Z8i2cWriteh>
 8000c2e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c32:	f7ff bfb6 	b.w	8000ba2 <_Z7i2cStopv>
	...

08000c38 <_Z7i2cReadh>:
 8000c38:	b570      	push	{r4, r5, r6, lr}
 8000c3a:	4606      	mov	r6, r0
 8000c3c:	f7ff ff70 	bl	8000b20 <_Z9SetLowSCLv>
 8000c40:	2508      	movs	r5, #8
 8000c42:	2400      	movs	r4, #0
 8000c44:	f7ff ff74 	bl	8000b30 <_Z10SetHighSCLv>
 8000c48:	4b10      	ldr	r3, [pc, #64]	; (8000c8c <_Z7i2cReadh+0x54>)
 8000c4a:	8a1b      	ldrh	r3, [r3, #16]
 8000c4c:	0064      	lsls	r4, r4, #1
 8000c4e:	061b      	lsls	r3, r3, #24
 8000c50:	b2e4      	uxtb	r4, r4
 8000c52:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8000c56:	bf48      	it	mi
 8000c58:	f044 0401 	orrmi.w	r4, r4, #1
 8000c5c:	f7ff ff60 	bl	8000b20 <_Z9SetLowSCLv>
 8000c60:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000c64:	d1ee      	bne.n	8000c44 <_Z7i2cReadh+0xc>
 8000c66:	b136      	cbz	r6, 8000c76 <_Z7i2cReadh+0x3e>
 8000c68:	f7ff ff32 	bl	8000ad0 <_Z9SetLowSDAv>
 8000c6c:	f7ff ff60 	bl	8000b30 <_Z10SetHighSCLv>
 8000c70:	f7ff ff56 	bl	8000b20 <_Z9SetLowSCLv>
 8000c74:	e007      	b.n	8000c86 <_Z7i2cReadh+0x4e>
 8000c76:	f7ff ff45 	bl	8000b04 <_Z10SetHighSDAv>
 8000c7a:	f7ff ff59 	bl	8000b30 <_Z10SetHighSCLv>
 8000c7e:	f7ff ff4f 	bl	8000b20 <_Z9SetLowSCLv>
 8000c82:	f7ff ff25 	bl	8000ad0 <_Z9SetLowSDAv>
 8000c86:	4620      	mov	r0, r4
 8000c88:	bd70      	pop	{r4, r5, r6, pc}
 8000c8a:	bf00      	nop
 8000c8c:	48000400 	.word	0x48000400

08000c90 <_Z12i2c_read_reghh>:
 8000c90:	b538      	push	{r3, r4, r5, lr}
 8000c92:	4604      	mov	r4, r0
 8000c94:	460d      	mov	r5, r1
 8000c96:	f7ff ff75 	bl	8000b84 <_Z8i2cStartv>
 8000c9a:	4620      	mov	r0, r4
 8000c9c:	f7ff ff90 	bl	8000bc0 <_Z8i2cWriteh>
 8000ca0:	4628      	mov	r0, r5
 8000ca2:	f7ff ff8d 	bl	8000bc0 <_Z8i2cWriteh>
 8000ca6:	f7ff ff6d 	bl	8000b84 <_Z8i2cStartv>
 8000caa:	f044 0001 	orr.w	r0, r4, #1
 8000cae:	f7ff ff87 	bl	8000bc0 <_Z8i2cWriteh>
 8000cb2:	2000      	movs	r0, #0
 8000cb4:	f7ff ffc0 	bl	8000c38 <_Z7i2cReadh>
 8000cb8:	4604      	mov	r4, r0
 8000cba:	f7ff ff72 	bl	8000ba2 <_Z7i2cStopv>
 8000cbe:	4620      	mov	r0, r4
 8000cc0:	bd38      	pop	{r3, r4, r5, pc}

08000cc2 <_ZN4CIMU8imu_readEv>:
 8000cc2:	b538      	push	{r3, r4, r5, lr}
 8000cc4:	2128      	movs	r1, #40	; 0x28
 8000cc6:	4604      	mov	r4, r0
 8000cc8:	20d4      	movs	r0, #212	; 0xd4
 8000cca:	f7ff ffe1 	bl	8000c90 <_Z12i2c_read_reghh>
 8000cce:	2129      	movs	r1, #41	; 0x29
 8000cd0:	4605      	mov	r5, r0
 8000cd2:	20d4      	movs	r0, #212	; 0xd4
 8000cd4:	f7ff ffdc 	bl	8000c90 <_Z12i2c_read_reghh>
 8000cd8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000cdc:	8320      	strh	r0, [r4, #24]
 8000cde:	212a      	movs	r1, #42	; 0x2a
 8000ce0:	20d4      	movs	r0, #212	; 0xd4
 8000ce2:	f7ff ffd5 	bl	8000c90 <_Z12i2c_read_reghh>
 8000ce6:	212b      	movs	r1, #43	; 0x2b
 8000ce8:	4605      	mov	r5, r0
 8000cea:	20d4      	movs	r0, #212	; 0xd4
 8000cec:	f7ff ffd0 	bl	8000c90 <_Z12i2c_read_reghh>
 8000cf0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000cf4:	8360      	strh	r0, [r4, #26]
 8000cf6:	212c      	movs	r1, #44	; 0x2c
 8000cf8:	20d4      	movs	r0, #212	; 0xd4
 8000cfa:	f7ff ffc9 	bl	8000c90 <_Z12i2c_read_reghh>
 8000cfe:	212d      	movs	r1, #45	; 0x2d
 8000d00:	4605      	mov	r5, r0
 8000d02:	20d4      	movs	r0, #212	; 0xd4
 8000d04:	f7ff ffc4 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d08:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000d0c:	83a0      	strh	r0, [r4, #28]
 8000d0e:	2108      	movs	r1, #8
 8000d10:	203c      	movs	r0, #60	; 0x3c
 8000d12:	f7ff ffbd 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d16:	2109      	movs	r1, #9
 8000d18:	4605      	mov	r5, r0
 8000d1a:	203c      	movs	r0, #60	; 0x3c
 8000d1c:	f7ff ffb8 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d20:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000d24:	8260      	strh	r0, [r4, #18]
 8000d26:	210a      	movs	r1, #10
 8000d28:	203c      	movs	r0, #60	; 0x3c
 8000d2a:	f7ff ffb1 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d2e:	210b      	movs	r1, #11
 8000d30:	4605      	mov	r5, r0
 8000d32:	203c      	movs	r0, #60	; 0x3c
 8000d34:	f7ff ffac 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d38:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000d3c:	82a0      	strh	r0, [r4, #20]
 8000d3e:	210c      	movs	r1, #12
 8000d40:	203c      	movs	r0, #60	; 0x3c
 8000d42:	f7ff ffa5 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d46:	210d      	movs	r1, #13
 8000d48:	4605      	mov	r5, r0
 8000d4a:	203c      	movs	r0, #60	; 0x3c
 8000d4c:	f7ff ffa0 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d50:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000d54:	82e0      	strh	r0, [r4, #22]
 8000d56:	2128      	movs	r1, #40	; 0x28
 8000d58:	203c      	movs	r0, #60	; 0x3c
 8000d5a:	f7ff ff99 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d5e:	2129      	movs	r1, #41	; 0x29
 8000d60:	4605      	mov	r5, r0
 8000d62:	203c      	movs	r0, #60	; 0x3c
 8000d64:	f7ff ff94 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d68:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000d6c:	81a0      	strh	r0, [r4, #12]
 8000d6e:	212a      	movs	r1, #42	; 0x2a
 8000d70:	203c      	movs	r0, #60	; 0x3c
 8000d72:	f7ff ff8d 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d76:	212b      	movs	r1, #43	; 0x2b
 8000d78:	4605      	mov	r5, r0
 8000d7a:	203c      	movs	r0, #60	; 0x3c
 8000d7c:	f7ff ff88 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d80:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000d84:	81e0      	strh	r0, [r4, #14]
 8000d86:	212c      	movs	r1, #44	; 0x2c
 8000d88:	203c      	movs	r0, #60	; 0x3c
 8000d8a:	f7ff ff81 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d8e:	212d      	movs	r1, #45	; 0x2d
 8000d90:	4605      	mov	r5, r0
 8000d92:	203c      	movs	r0, #60	; 0x3c
 8000d94:	f7ff ff7c 	bl	8000c90 <_Z12i2c_read_reghh>
 8000d98:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000d9c:	8220      	strh	r0, [r4, #16]
 8000d9e:	2105      	movs	r1, #5
 8000da0:	203c      	movs	r0, #60	; 0x3c
 8000da2:	f7ff ff75 	bl	8000c90 <_Z12i2c_read_reghh>
 8000da6:	2106      	movs	r1, #6
 8000da8:	4605      	mov	r5, r0
 8000daa:	203c      	movs	r0, #60	; 0x3c
 8000dac:	f7ff ff70 	bl	8000c90 <_Z12i2c_read_reghh>
 8000db0:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 8000db4:	6822      	ldr	r2, [r4, #0]
 8000db6:	1a9a      	subs	r2, r3, r2
 8000db8:	6a23      	ldr	r3, [r4, #32]
 8000dba:	21c8      	movs	r1, #200	; 0xc8
 8000dbc:	fb92 f2f1 	sdiv	r2, r2, r1
 8000dc0:	441a      	add	r2, r3
 8000dc2:	6222      	str	r2, [r4, #32]
 8000dc4:	6863      	ldr	r3, [r4, #4]
 8000dc6:	f9b4 201a 	ldrsh.w	r2, [r4, #26]
 8000dca:	1ad2      	subs	r2, r2, r3
 8000dcc:	6a63      	ldr	r3, [r4, #36]	; 0x24
 8000dce:	fb92 f2f1 	sdiv	r2, r2, r1
 8000dd2:	441a      	add	r2, r3
 8000dd4:	6262      	str	r2, [r4, #36]	; 0x24
 8000dd6:	68a3      	ldr	r3, [r4, #8]
 8000dd8:	f9b4 201c 	ldrsh.w	r2, [r4, #28]
 8000ddc:	1ad3      	subs	r3, r2, r3
 8000dde:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 8000de0:	fb93 f3f1 	sdiv	r3, r3, r1
 8000de4:	4413      	add	r3, r2
 8000de6:	62a3      	str	r3, [r4, #40]	; 0x28
 8000de8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8000dec:	62e3      	str	r3, [r4, #44]	; 0x2c
 8000dee:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8000df2:	6323      	str	r3, [r4, #48]	; 0x30
 8000df4:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000df8:	f9b4 3010 	ldrsh.w	r3, [r4, #16]
 8000dfc:	83e0      	strh	r0, [r4, #30]
 8000dfe:	6363      	str	r3, [r4, #52]	; 0x34
 8000e00:	bd38      	pop	{r3, r4, r5, pc}
	...

08000e04 <_ZN4CIMU8imu_initEv>:
 8000e04:	2300      	movs	r3, #0
 8000e06:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000e0a:	6003      	str	r3, [r0, #0]
 8000e0c:	6043      	str	r3, [r0, #4]
 8000e0e:	6083      	str	r3, [r0, #8]
 8000e10:	4604      	mov	r4, r0
 8000e12:	f7ff fe95 	bl	8000b40 <_Z8i2c_initv>
 8000e16:	f242 7511 	movw	r5, #10001	; 0x2711
 8000e1a:	3d01      	subs	r5, #1
 8000e1c:	d001      	beq.n	8000e22 <_ZN4CIMU8imu_initEv+0x1e>
 8000e1e:	bf00      	nop
 8000e20:	e7fb      	b.n	8000e1a <_ZN4CIMU8imu_initEv+0x16>
 8000e22:	20d4      	movs	r0, #212	; 0xd4
 8000e24:	210f      	movs	r1, #15
 8000e26:	f7ff ff33 	bl	8000c90 <_Z12i2c_read_reghh>
 8000e2a:	28d4      	cmp	r0, #212	; 0xd4
 8000e2c:	4606      	mov	r6, r0
 8000e2e:	d165      	bne.n	8000efc <_ZN4CIMU8imu_initEv+0xf8>
 8000e30:	203c      	movs	r0, #60	; 0x3c
 8000e32:	210f      	movs	r1, #15
 8000e34:	f7ff ff2c 	bl	8000c90 <_Z12i2c_read_reghh>
 8000e38:	2849      	cmp	r0, #73	; 0x49
 8000e3a:	d163      	bne.n	8000f04 <_ZN4CIMU8imu_initEv+0x100>
 8000e3c:	4630      	mov	r0, r6
 8000e3e:	2120      	movs	r1, #32
 8000e40:	22ff      	movs	r2, #255	; 0xff
 8000e42:	f7ff fee5 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e46:	4630      	mov	r0, r6
 8000e48:	2123      	movs	r1, #35	; 0x23
 8000e4a:	2210      	movs	r2, #16
 8000e4c:	f7ff fee0 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e50:	203c      	movs	r0, #60	; 0x3c
 8000e52:	211f      	movs	r1, #31
 8000e54:	462a      	mov	r2, r5
 8000e56:	f7ff fedb 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e5a:	203c      	movs	r0, #60	; 0x3c
 8000e5c:	2120      	movs	r1, #32
 8000e5e:	2267      	movs	r2, #103	; 0x67
 8000e60:	f7ff fed6 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e64:	203c      	movs	r0, #60	; 0x3c
 8000e66:	2121      	movs	r1, #33	; 0x21
 8000e68:	462a      	mov	r2, r5
 8000e6a:	f7ff fed1 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e6e:	203c      	movs	r0, #60	; 0x3c
 8000e70:	2124      	movs	r1, #36	; 0x24
 8000e72:	22f4      	movs	r2, #244	; 0xf4
 8000e74:	f7ff fecc 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e78:	203c      	movs	r0, #60	; 0x3c
 8000e7a:	2125      	movs	r1, #37	; 0x25
 8000e7c:	462a      	mov	r2, r5
 8000e7e:	f7ff fec7 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e82:	203c      	movs	r0, #60	; 0x3c
 8000e84:	2126      	movs	r1, #38	; 0x26
 8000e86:	2280      	movs	r2, #128	; 0x80
 8000e88:	f7ff fec2 	bl	8000c10 <_Z13i2c_write_reghhh>
 8000e8c:	4e1f      	ldr	r6, [pc, #124]	; (8000f0c <_ZN4CIMU8imu_initEv+0x108>)
 8000e8e:	3e01      	subs	r6, #1
 8000e90:	d001      	beq.n	8000e96 <_ZN4CIMU8imu_initEv+0x92>
 8000e92:	bf00      	nop
 8000e94:	e7fb      	b.n	8000e8e <_ZN4CIMU8imu_initEv+0x8a>
 8000e96:	4620      	mov	r0, r4
 8000e98:	f7ff ff13 	bl	8000cc2 <_ZN4CIMU8imu_readEv>
 8000e9c:	2564      	movs	r5, #100	; 0x64
 8000e9e:	4637      	mov	r7, r6
 8000ea0:	46b0      	mov	r8, r6
 8000ea2:	2365      	movs	r3, #101	; 0x65
 8000ea4:	3b01      	subs	r3, #1
 8000ea6:	d001      	beq.n	8000eac <_ZN4CIMU8imu_initEv+0xa8>
 8000ea8:	bf00      	nop
 8000eaa:	e7fb      	b.n	8000ea4 <_ZN4CIMU8imu_initEv+0xa0>
 8000eac:	4620      	mov	r0, r4
 8000eae:	f7ff ff08 	bl	8000cc2 <_ZN4CIMU8imu_readEv>
 8000eb2:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 8000eb6:	4498      	add	r8, r3
 8000eb8:	f9b4 301a 	ldrsh.w	r3, [r4, #26]
 8000ebc:	441f      	add	r7, r3
 8000ebe:	f9b4 301c 	ldrsh.w	r3, [r4, #28]
 8000ec2:	3d01      	subs	r5, #1
 8000ec4:	441e      	add	r6, r3
 8000ec6:	d1ec      	bne.n	8000ea2 <_ZN4CIMU8imu_initEv+0x9e>
 8000ec8:	2264      	movs	r2, #100	; 0x64
 8000eca:	81a5      	strh	r5, [r4, #12]
 8000ecc:	fb98 f3f2 	sdiv	r3, r8, r2
 8000ed0:	fb97 f7f2 	sdiv	r7, r7, r2
 8000ed4:	fb96 f6f2 	sdiv	r6, r6, r2
 8000ed8:	6023      	str	r3, [r4, #0]
 8000eda:	6067      	str	r7, [r4, #4]
 8000edc:	60a6      	str	r6, [r4, #8]
 8000ede:	81e5      	strh	r5, [r4, #14]
 8000ee0:	8225      	strh	r5, [r4, #16]
 8000ee2:	8265      	strh	r5, [r4, #18]
 8000ee4:	82a5      	strh	r5, [r4, #20]
 8000ee6:	82e5      	strh	r5, [r4, #22]
 8000ee8:	8325      	strh	r5, [r4, #24]
 8000eea:	8365      	strh	r5, [r4, #26]
 8000eec:	83a5      	strh	r5, [r4, #28]
 8000eee:	83e5      	strh	r5, [r4, #30]
 8000ef0:	6225      	str	r5, [r4, #32]
 8000ef2:	6265      	str	r5, [r4, #36]	; 0x24
 8000ef4:	62a5      	str	r5, [r4, #40]	; 0x28
 8000ef6:	4628      	mov	r0, r5
 8000ef8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000efc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000f00:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000f04:	f06f 0001 	mvn.w	r0, #1
 8000f08:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000f0c:	000186a1 	.word	0x000186a1

08000f10 <_ZN4CIMU7imu_getEv>:
 8000f10:	3020      	adds	r0, #32
 8000f12:	4770      	bx	lr

08000f14 <_ZN5CGPIO9gpio_initEv>:
 8000f14:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000f16:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000f1a:	2101      	movs	r1, #1
 8000f1c:	f000 fd12 	bl	8001944 <RCC_AHBPeriphClockCmd>
 8000f20:	4e1d      	ldr	r6, [pc, #116]	; (8000f98 <_ZN5CGPIO9gpio_initEv+0x84>)
 8000f22:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000f26:	2101      	movs	r1, #1
 8000f28:	f000 fd0c 	bl	8001944 <RCC_AHBPeriphClockCmd>
 8000f2c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000f30:	2101      	movs	r1, #1
 8000f32:	f000 fd07 	bl	8001944 <RCC_AHBPeriphClockCmd>
 8000f36:	2400      	movs	r4, #0
 8000f38:	2503      	movs	r5, #3
 8000f3a:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000f3e:	2701      	movs	r7, #1
 8000f40:	4630      	mov	r0, r6
 8000f42:	4669      	mov	r1, sp
 8000f44:	9300      	str	r3, [sp, #0]
 8000f46:	f88d 7004 	strb.w	r7, [sp, #4]
 8000f4a:	f88d 4006 	strb.w	r4, [sp, #6]
 8000f4e:	f88d 5005 	strb.w	r5, [sp, #5]
 8000f52:	f88d 4007 	strb.w	r4, [sp, #7]
 8000f56:	f000 ff05 	bl	8001d64 <GPIO_Init>
 8000f5a:	2308      	movs	r3, #8
 8000f5c:	4669      	mov	r1, sp
 8000f5e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000f62:	9300      	str	r3, [sp, #0]
 8000f64:	f88d 7004 	strb.w	r7, [sp, #4]
 8000f68:	f88d 4006 	strb.w	r4, [sp, #6]
 8000f6c:	f88d 5005 	strb.w	r5, [sp, #5]
 8000f70:	f88d 4007 	strb.w	r4, [sp, #7]
 8000f74:	f000 fef6 	bl	8001d64 <GPIO_Init>
 8000f78:	f44f 7300 	mov.w	r3, #512	; 0x200
 8000f7c:	4630      	mov	r0, r6
 8000f7e:	4669      	mov	r1, sp
 8000f80:	9300      	str	r3, [sp, #0]
 8000f82:	f88d 4004 	strb.w	r4, [sp, #4]
 8000f86:	f88d 5005 	strb.w	r5, [sp, #5]
 8000f8a:	f88d 4007 	strb.w	r4, [sp, #7]
 8000f8e:	f000 fee9 	bl	8001d64 <GPIO_Init>
 8000f92:	4620      	mov	r0, r4
 8000f94:	b003      	add	sp, #12
 8000f96:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000f98:	48000400 	.word	0x48000400

08000f9c <_ZN5CGPIO7gpio_onEm>:
 8000f9c:	2901      	cmp	r1, #1
 8000f9e:	d104      	bne.n	8000faa <_ZN5CGPIO7gpio_onEm+0xe>
 8000fa0:	4b05      	ldr	r3, [pc, #20]	; (8000fb8 <_ZN5CGPIO7gpio_onEm+0x1c>)
 8000fa2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8000fa6:	619a      	str	r2, [r3, #24]
 8000fa8:	4770      	bx	lr
 8000faa:	2902      	cmp	r1, #2
 8000fac:	bf02      	ittt	eq
 8000fae:	f04f 4390 	moveq.w	r3, #1207959552	; 0x48000000
 8000fb2:	2208      	moveq	r2, #8
 8000fb4:	851a      	strheq	r2, [r3, #40]	; 0x28
 8000fb6:	4770      	bx	lr
 8000fb8:	48000400 	.word	0x48000400

08000fbc <_ZN5CGPIO8gpio_offEm>:
 8000fbc:	2901      	cmp	r1, #1
 8000fbe:	d104      	bne.n	8000fca <_ZN5CGPIO8gpio_offEm+0xe>
 8000fc0:	4b05      	ldr	r3, [pc, #20]	; (8000fd8 <_ZN5CGPIO8gpio_offEm+0x1c>)
 8000fc2:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8000fc6:	851a      	strh	r2, [r3, #40]	; 0x28
 8000fc8:	4770      	bx	lr
 8000fca:	2902      	cmp	r1, #2
 8000fcc:	bf02      	ittt	eq
 8000fce:	f04f 4390 	moveq.w	r3, #1207959552	; 0x48000000
 8000fd2:	2208      	moveq	r2, #8
 8000fd4:	619a      	streq	r2, [r3, #24]
 8000fd6:	4770      	bx	lr
 8000fd8:	48000400 	.word	0x48000400

08000fdc <_ZN5CGPIO7gpio_inEm>:
 8000fdc:	2903      	cmp	r1, #3
 8000fde:	bf01      	itttt	eq
 8000fe0:	4b03      	ldreq	r3, [pc, #12]	; (8000ff0 <_ZN5CGPIO7gpio_inEm+0x14>)
 8000fe2:	8a18      	ldrheq	r0, [r3, #16]
 8000fe4:	43c0      	mvneq	r0, r0
 8000fe6:	f400 7000 	andeq.w	r0, r0, #512	; 0x200
 8000fea:	bf18      	it	ne
 8000fec:	2000      	movne	r0, #0
 8000fee:	4770      	bx	lr
 8000ff0:	48000400 	.word	0x48000400

08000ff4 <_ZN5CGPIO16get_left_encoderEv>:
 8000ff4:	2000      	movs	r0, #0
 8000ff6:	4770      	bx	lr

08000ff8 <_ZN5CGPIO17get_right_encoderEv>:
 8000ff8:	2000      	movs	r0, #0
 8000ffa:	4770      	bx	lr

08000ffc <_ZN6CError5errorEi>:
 8000ffc:	230a      	movs	r3, #10
 8000ffe:	490c      	ldr	r1, [pc, #48]	; (8001030 <_ZN6CError5errorEi+0x34>)
 8001000:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001004:	618a      	str	r2, [r1, #24]
 8001006:	4a0b      	ldr	r2, [pc, #44]	; (8001034 <_ZN6CError5errorEi+0x38>)
 8001008:	3a01      	subs	r2, #1
 800100a:	d001      	beq.n	8001010 <_ZN6CError5errorEi+0x14>
 800100c:	bf00      	nop
 800100e:	e7fb      	b.n	8001008 <_ZN6CError5errorEi+0xc>
 8001010:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 8001014:	850a      	strh	r2, [r1, #40]	; 0x28
 8001016:	4a08      	ldr	r2, [pc, #32]	; (8001038 <_ZN6CError5errorEi+0x3c>)
 8001018:	3a01      	subs	r2, #1
 800101a:	d001      	beq.n	8001020 <_ZN6CError5errorEi+0x24>
 800101c:	bf00      	nop
 800101e:	e7fb      	b.n	8001018 <_ZN6CError5errorEi+0x1c>
 8001020:	3b01      	subs	r3, #1
 8001022:	d1ec      	bne.n	8000ffe <_ZN6CError5errorEi+0x2>
 8001024:	4b05      	ldr	r3, [pc, #20]	; (800103c <_ZN6CError5errorEi+0x40>)
 8001026:	3b01      	subs	r3, #1
 8001028:	d0e8      	beq.n	8000ffc <_ZN6CError5errorEi>
 800102a:	bf00      	nop
 800102c:	e7fb      	b.n	8001026 <_ZN6CError5errorEi+0x2a>
 800102e:	bf00      	nop
 8001030:	48000400 	.word	0x48000400
 8001034:	000186a1 	.word	0x000186a1
 8001038:	000f4241 	.word	0x000f4241
 800103c:	002dc6c1 	.word	0x002dc6c1

08001040 <USART1_IRQHandler>:
 8001040:	b508      	push	{r3, lr}
 8001042:	480d      	ldr	r0, [pc, #52]	; (8001078 <USART1_IRQHandler+0x38>)
 8001044:	490d      	ldr	r1, [pc, #52]	; (800107c <USART1_IRQHandler+0x3c>)
 8001046:	f000 fd97 	bl	8001b78 <USART_GetITStatus>
 800104a:	b178      	cbz	r0, 800106c <USART1_IRQHandler+0x2c>
 800104c:	480a      	ldr	r0, [pc, #40]	; (8001078 <USART1_IRQHandler+0x38>)
 800104e:	f000 fd74 	bl	8001b3a <USART_ReceiveData>
 8001052:	4b0b      	ldr	r3, [pc, #44]	; (8001080 <USART1_IRQHandler+0x40>)
 8001054:	490b      	ldr	r1, [pc, #44]	; (8001084 <USART1_IRQHandler+0x44>)
 8001056:	681a      	ldr	r2, [r3, #0]
 8001058:	b2c0      	uxtb	r0, r0
 800105a:	5488      	strb	r0, [r1, r2]
 800105c:	681a      	ldr	r2, [r3, #0]
 800105e:	3201      	adds	r2, #1
 8001060:	601a      	str	r2, [r3, #0]
 8001062:	681a      	ldr	r2, [r3, #0]
 8001064:	2a0f      	cmp	r2, #15
 8001066:	bf84      	itt	hi
 8001068:	2200      	movhi	r2, #0
 800106a:	601a      	strhi	r2, [r3, #0]
 800106c:	4802      	ldr	r0, [pc, #8]	; (8001078 <USART1_IRQHandler+0x38>)
 800106e:	4903      	ldr	r1, [pc, #12]	; (800107c <USART1_IRQHandler+0x3c>)
 8001070:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001074:	f000 bd9e 	b.w	8001bb4 <USART_ClearITPendingBit>
 8001078:	40013800 	.word	0x40013800
 800107c:	00050105 	.word	0x00050105
 8001080:	2000007c 	.word	0x2000007c
 8001084:	20000080 	.word	0x20000080

08001088 <_ZN9CTerminal7putcharEc>:
 8001088:	4b04      	ldr	r3, [pc, #16]	; (800109c <_ZN9CTerminal7putcharEc+0x14>)
 800108a:	69da      	ldr	r2, [r3, #28]
 800108c:	0612      	lsls	r2, r2, #24
 800108e:	d401      	bmi.n	8001094 <_ZN9CTerminal7putcharEc+0xc>
 8001090:	bf00      	nop
 8001092:	e7f9      	b.n	8001088 <_ZN9CTerminal7putcharEc>
 8001094:	b289      	uxth	r1, r1
 8001096:	8519      	strh	r1, [r3, #40]	; 0x28
 8001098:	4770      	bx	lr
 800109a:	bf00      	nop
 800109c:	40013800 	.word	0x40013800

080010a0 <_ZN9CTerminal13terminal_initEv>:
 80010a0:	b570      	push	{r4, r5, r6, lr}
 80010a2:	4a31      	ldr	r2, [pc, #196]	; (8001168 <_ZN9CTerminal13terminal_initEv+0xc8>)
 80010a4:	2300      	movs	r3, #0
 80010a6:	6013      	str	r3, [r2, #0]
 80010a8:	4a30      	ldr	r2, [pc, #192]	; (800116c <_ZN9CTerminal13terminal_initEv+0xcc>)
 80010aa:	b08a      	sub	sp, #40	; 0x28
 80010ac:	4606      	mov	r6, r0
 80010ae:	6013      	str	r3, [r2, #0]
 80010b0:	4a2f      	ldr	r2, [pc, #188]	; (8001170 <_ZN9CTerminal13terminal_initEv+0xd0>)
 80010b2:	2400      	movs	r4, #0
 80010b4:	54d4      	strb	r4, [r2, r3]
 80010b6:	3301      	adds	r3, #1
 80010b8:	2b10      	cmp	r3, #16
 80010ba:	d1f9      	bne.n	80010b0 <_ZN9CTerminal13terminal_initEv+0x10>
 80010bc:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 80010c0:	2101      	movs	r1, #1
 80010c2:	f000 fc3f 	bl	8001944 <RCC_AHBPeriphClockCmd>
 80010c6:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 80010ca:	2101      	movs	r1, #1
 80010cc:	f000 fc48 	bl	8001960 <RCC_APB2PeriphClockCmd>
 80010d0:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 80010d4:	9302      	str	r3, [sp, #8]
 80010d6:	2302      	movs	r3, #2
 80010d8:	f88d 300c 	strb.w	r3, [sp, #12]
 80010dc:	a902      	add	r1, sp, #8
 80010de:	2303      	movs	r3, #3
 80010e0:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80010e4:	f88d 300d 	strb.w	r3, [sp, #13]
 80010e8:	f88d 400e 	strb.w	r4, [sp, #14]
 80010ec:	f88d 400f 	strb.w	r4, [sp, #15]
 80010f0:	f000 fe38 	bl	8001d64 <GPIO_Init>
 80010f4:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80010f8:	2109      	movs	r1, #9
 80010fa:	2207      	movs	r2, #7
 80010fc:	f000 fe78 	bl	8001df0 <GPIO_PinAFConfig>
 8001100:	2207      	movs	r2, #7
 8001102:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8001106:	210a      	movs	r1, #10
 8001108:	f000 fe72 	bl	8001df0 <GPIO_PinAFConfig>
 800110c:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001110:	9304      	str	r3, [sp, #16]
 8001112:	a904      	add	r1, sp, #16
 8001114:	230c      	movs	r3, #12
 8001116:	4817      	ldr	r0, [pc, #92]	; (8001174 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8001118:	9308      	str	r3, [sp, #32]
 800111a:	9405      	str	r4, [sp, #20]
 800111c:	9406      	str	r4, [sp, #24]
 800111e:	9407      	str	r4, [sp, #28]
 8001120:	9409      	str	r4, [sp, #36]	; 0x24
 8001122:	f000 fc9d 	bl	8001a60 <USART_Init>
 8001126:	4813      	ldr	r0, [pc, #76]	; (8001174 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8001128:	2101      	movs	r1, #1
 800112a:	f000 fcfb 	bl	8001b24 <USART_Cmd>
 800112e:	2201      	movs	r2, #1
 8001130:	4911      	ldr	r1, [pc, #68]	; (8001178 <_ZN9CTerminal13terminal_initEv+0xd8>)
 8001132:	4810      	ldr	r0, [pc, #64]	; (8001174 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8001134:	f000 fd06 	bl	8001b44 <USART_ITConfig>
 8001138:	2501      	movs	r5, #1
 800113a:	2325      	movs	r3, #37	; 0x25
 800113c:	a801      	add	r0, sp, #4
 800113e:	f88d 3004 	strb.w	r3, [sp, #4]
 8001142:	f88d 4005 	strb.w	r4, [sp, #5]
 8001146:	f88d 4006 	strb.w	r4, [sp, #6]
 800114a:	f88d 5007 	strb.w	r5, [sp, #7]
 800114e:	f000 fdcf 	bl	8001cf0 <NVIC_Init>
 8001152:	4629      	mov	r1, r5
 8001154:	4807      	ldr	r0, [pc, #28]	; (8001174 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8001156:	f000 fce5 	bl	8001b24 <USART_Cmd>
 800115a:	4630      	mov	r0, r6
 800115c:	210a      	movs	r1, #10
 800115e:	f7ff ff93 	bl	8001088 <_ZN9CTerminal7putcharEc>
 8001162:	4620      	mov	r0, r4
 8001164:	b00a      	add	sp, #40	; 0x28
 8001166:	bd70      	pop	{r4, r5, r6, pc}
 8001168:	2000007c 	.word	0x2000007c
 800116c:	20000090 	.word	0x20000090
 8001170:	20000080 	.word	0x20000080
 8001174:	40013800 	.word	0x40013800
 8001178:	00050105 	.word	0x00050105

0800117c <_ZN9CTerminal4putsEPc>:
 800117c:	b538      	push	{r3, r4, r5, lr}
 800117e:	4605      	mov	r5, r0
 8001180:	1e4c      	subs	r4, r1, #1
 8001182:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001186:	b119      	cbz	r1, 8001190 <_ZN9CTerminal4putsEPc+0x14>
 8001188:	4628      	mov	r0, r5
 800118a:	f7ff ff7d 	bl	8001088 <_ZN9CTerminal7putcharEc>
 800118e:	e7f8      	b.n	8001182 <_ZN9CTerminal4putsEPc+0x6>
 8001190:	2001      	movs	r0, #1
 8001192:	bd38      	pop	{r3, r4, r5, pc}

08001194 <_ZN9CTerminal4putiEl>:
 8001194:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001196:	1e0b      	subs	r3, r1, #0
 8001198:	f04f 0200 	mov.w	r2, #0
 800119c:	bfba      	itte	lt
 800119e:	425b      	neglt	r3, r3
 80011a0:	2501      	movlt	r5, #1
 80011a2:	4615      	movge	r5, r2
 80011a4:	f88d 200f 	strb.w	r2, [sp, #15]
 80011a8:	210a      	movs	r1, #10
 80011aa:	220a      	movs	r2, #10
 80011ac:	ac01      	add	r4, sp, #4
 80011ae:	fb93 f6f2 	sdiv	r6, r3, r2
 80011b2:	fb02 3316 	mls	r3, r2, r6, r3
 80011b6:	3330      	adds	r3, #48	; 0x30
 80011b8:	550b      	strb	r3, [r1, r4]
 80011ba:	1e4a      	subs	r2, r1, #1
 80011bc:	4633      	mov	r3, r6
 80011be:	b10e      	cbz	r6, 80011c4 <_ZN9CTerminal4putiEl+0x30>
 80011c0:	4611      	mov	r1, r2
 80011c2:	e7f2      	b.n	80011aa <_ZN9CTerminal4putiEl+0x16>
 80011c4:	b12d      	cbz	r5, 80011d2 <_ZN9CTerminal4putiEl+0x3e>
 80011c6:	ab04      	add	r3, sp, #16
 80011c8:	4413      	add	r3, r2
 80011ca:	212d      	movs	r1, #45	; 0x2d
 80011cc:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80011d0:	4611      	mov	r1, r2
 80011d2:	4421      	add	r1, r4
 80011d4:	f7ff ffd2 	bl	800117c <_ZN9CTerminal4putsEPc>
 80011d8:	b004      	add	sp, #16
 80011da:	bd70      	pop	{r4, r5, r6, pc}

080011dc <_ZN9CTerminal5putuiEm>:
 80011dc:	b530      	push	{r4, r5, lr}
 80011de:	b085      	sub	sp, #20
 80011e0:	2300      	movs	r3, #0
 80011e2:	f88d 300f 	strb.w	r3, [sp, #15]
 80011e6:	220a      	movs	r2, #10
 80011e8:	230a      	movs	r3, #10
 80011ea:	ac01      	add	r4, sp, #4
 80011ec:	fbb1 f5f3 	udiv	r5, r1, r3
 80011f0:	fb03 1315 	mls	r3, r3, r5, r1
 80011f4:	3330      	adds	r3, #48	; 0x30
 80011f6:	5513      	strb	r3, [r2, r4]
 80011f8:	4629      	mov	r1, r5
 80011fa:	1e53      	subs	r3, r2, #1
 80011fc:	b10d      	cbz	r5, 8001202 <_ZN9CTerminal5putuiEm+0x26>
 80011fe:	461a      	mov	r2, r3
 8001200:	e7f2      	b.n	80011e8 <_ZN9CTerminal5putuiEm+0xc>
 8001202:	18a1      	adds	r1, r4, r2
 8001204:	f7ff ffba 	bl	800117c <_ZN9CTerminal4putsEPc>
 8001208:	b005      	add	sp, #20
 800120a:	bd30      	pop	{r4, r5, pc}

0800120c <_ZN9CTerminal4putxEm>:
 800120c:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 800120e:	2300      	movs	r3, #0
 8001210:	f88d 300f 	strb.w	r3, [sp, #15]
 8001214:	220a      	movs	r2, #10
 8001216:	f001 030f 	and.w	r3, r1, #15
 800121a:	2b09      	cmp	r3, #9
 800121c:	ac01      	add	r4, sp, #4
 800121e:	bfd4      	ite	le
 8001220:	3330      	addle	r3, #48	; 0x30
 8001222:	3357      	addgt	r3, #87	; 0x57
 8001224:	0909      	lsrs	r1, r1, #4
 8001226:	54a3      	strb	r3, [r4, r2]
 8001228:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 800122c:	d001      	beq.n	8001232 <_ZN9CTerminal4putxEm+0x26>
 800122e:	461a      	mov	r2, r3
 8001230:	e7f1      	b.n	8001216 <_ZN9CTerminal4putxEm+0xa>
 8001232:	18a1      	adds	r1, r4, r2
 8001234:	f7ff ffa2 	bl	800117c <_ZN9CTerminal4putsEPc>
 8001238:	b004      	add	sp, #16
 800123a:	bd10      	pop	{r4, pc}

0800123c <_ZN9CTerminal6printfEPKcz>:
 800123c:	b40e      	push	{r1, r2, r3}
 800123e:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001240:	ab07      	add	r3, sp, #28
 8001242:	4604      	mov	r4, r0
 8001244:	f853 6b04 	ldr.w	r6, [r3], #4
 8001248:	9301      	str	r3, [sp, #4]
 800124a:	2500      	movs	r5, #0
 800124c:	5d71      	ldrb	r1, [r6, r5]
 800124e:	2900      	cmp	r1, #0
 8001250:	d040      	beq.n	80012d4 <_ZN9CTerminal6printfEPKcz+0x98>
 8001252:	2925      	cmp	r1, #37	; 0x25
 8001254:	d004      	beq.n	8001260 <_ZN9CTerminal6printfEPKcz+0x24>
 8001256:	4620      	mov	r0, r4
 8001258:	f7ff ff16 	bl	8001088 <_ZN9CTerminal7putcharEc>
 800125c:	3501      	adds	r5, #1
 800125e:	e7f5      	b.n	800124c <_ZN9CTerminal6printfEPKcz+0x10>
 8001260:	1973      	adds	r3, r6, r5
 8001262:	7859      	ldrb	r1, [r3, #1]
 8001264:	2969      	cmp	r1, #105	; 0x69
 8001266:	d018      	beq.n	800129a <_ZN9CTerminal6printfEPKcz+0x5e>
 8001268:	d809      	bhi.n	800127e <_ZN9CTerminal6printfEPKcz+0x42>
 800126a:	2925      	cmp	r1, #37	; 0x25
 800126c:	d02d      	beq.n	80012ca <_ZN9CTerminal6printfEPKcz+0x8e>
 800126e:	2963      	cmp	r1, #99	; 0x63
 8001270:	d12e      	bne.n	80012d0 <_ZN9CTerminal6printfEPKcz+0x94>
 8001272:	9b01      	ldr	r3, [sp, #4]
 8001274:	1d1a      	adds	r2, r3, #4
 8001276:	9201      	str	r2, [sp, #4]
 8001278:	4620      	mov	r0, r4
 800127a:	7819      	ldrb	r1, [r3, #0]
 800127c:	e026      	b.n	80012cc <_ZN9CTerminal6printfEPKcz+0x90>
 800127e:	2975      	cmp	r1, #117	; 0x75
 8001280:	d013      	beq.n	80012aa <_ZN9CTerminal6printfEPKcz+0x6e>
 8001282:	2978      	cmp	r1, #120	; 0x78
 8001284:	d019      	beq.n	80012ba <_ZN9CTerminal6printfEPKcz+0x7e>
 8001286:	2973      	cmp	r1, #115	; 0x73
 8001288:	d122      	bne.n	80012d0 <_ZN9CTerminal6printfEPKcz+0x94>
 800128a:	9b01      	ldr	r3, [sp, #4]
 800128c:	4620      	mov	r0, r4
 800128e:	1d1a      	adds	r2, r3, #4
 8001290:	6819      	ldr	r1, [r3, #0]
 8001292:	9201      	str	r2, [sp, #4]
 8001294:	f7ff ff72 	bl	800117c <_ZN9CTerminal4putsEPc>
 8001298:	e01a      	b.n	80012d0 <_ZN9CTerminal6printfEPKcz+0x94>
 800129a:	9b01      	ldr	r3, [sp, #4]
 800129c:	4620      	mov	r0, r4
 800129e:	1d1a      	adds	r2, r3, #4
 80012a0:	6819      	ldr	r1, [r3, #0]
 80012a2:	9201      	str	r2, [sp, #4]
 80012a4:	f7ff ff76 	bl	8001194 <_ZN9CTerminal4putiEl>
 80012a8:	e012      	b.n	80012d0 <_ZN9CTerminal6printfEPKcz+0x94>
 80012aa:	9b01      	ldr	r3, [sp, #4]
 80012ac:	4620      	mov	r0, r4
 80012ae:	1d1a      	adds	r2, r3, #4
 80012b0:	6819      	ldr	r1, [r3, #0]
 80012b2:	9201      	str	r2, [sp, #4]
 80012b4:	f7ff ff92 	bl	80011dc <_ZN9CTerminal5putuiEm>
 80012b8:	e00a      	b.n	80012d0 <_ZN9CTerminal6printfEPKcz+0x94>
 80012ba:	9b01      	ldr	r3, [sp, #4]
 80012bc:	4620      	mov	r0, r4
 80012be:	1d1a      	adds	r2, r3, #4
 80012c0:	6819      	ldr	r1, [r3, #0]
 80012c2:	9201      	str	r2, [sp, #4]
 80012c4:	f7ff ffa2 	bl	800120c <_ZN9CTerminal4putxEm>
 80012c8:	e002      	b.n	80012d0 <_ZN9CTerminal6printfEPKcz+0x94>
 80012ca:	4620      	mov	r0, r4
 80012cc:	f7ff fedc 	bl	8001088 <_ZN9CTerminal7putcharEc>
 80012d0:	3502      	adds	r5, #2
 80012d2:	e7bb      	b.n	800124c <_ZN9CTerminal6printfEPKcz+0x10>
 80012d4:	b003      	add	sp, #12
 80012d6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80012da:	b003      	add	sp, #12
 80012dc:	4770      	bx	lr
	...

080012e0 <_Z13sensor_threadv>:
 80012e0:	b510      	push	{r4, lr}
 80012e2:	480f      	ldr	r0, [pc, #60]	; (8001320 <_Z13sensor_threadv+0x40>)
 80012e4:	2100      	movs	r1, #0
 80012e6:	220a      	movs	r2, #10
 80012e8:	f7ff f83e 	bl	8000368 <_ZN6CTimer22event_timer_set_periodEhm>
 80012ec:	480c      	ldr	r0, [pc, #48]	; (8001320 <_Z13sensor_threadv+0x40>)
 80012ee:	2100      	movs	r1, #0
 80012f0:	f7ff f84e 	bl	8000390 <_ZN6CTimer14event_timer_ccEh>
 80012f4:	4604      	mov	r4, r0
 80012f6:	2800      	cmp	r0, #0
 80012f8:	d0f8      	beq.n	80012ec <_Z13sensor_threadv+0xc>
 80012fa:	4809      	ldr	r0, [pc, #36]	; (8001320 <_Z13sensor_threadv+0x40>)
 80012fc:	f7ff fce1 	bl	8000cc2 <_ZN4CIMU8imu_readEv>
 8001300:	4808      	ldr	r0, [pc, #32]	; (8001324 <_Z13sensor_threadv+0x44>)
 8001302:	2100      	movs	r1, #0
 8001304:	f7ff f8ee 	bl	80004e4 <_ZN8CSensors8rgb_readEh>
 8001308:	4807      	ldr	r0, [pc, #28]	; (8001328 <_Z13sensor_threadv+0x48>)
 800130a:	f7ff f861 	bl	80003d0 <_ZN6CMotor13motor_refreshEv>
 800130e:	2c09      	cmp	r4, #9
 8001310:	d9ec      	bls.n	80012ec <_Z13sensor_threadv+0xc>
 8001312:	4803      	ldr	r0, [pc, #12]	; (8001320 <_Z13sensor_threadv+0x40>)
 8001314:	4905      	ldr	r1, [pc, #20]	; (800132c <_Z13sensor_threadv+0x4c>)
 8001316:	4622      	mov	r2, r4
 8001318:	f7ff ff90 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 800131c:	e7e6      	b.n	80012ec <_Z13sensor_threadv+0xc>
 800131e:	bf00      	nop
 8001320:	20000294 	.word	0x20000294
 8001324:	200002cc 	.word	0x200002cc
 8001328:	20000350 	.word	0x20000350
 800132c:	08002098 	.word	0x08002098

08001330 <_Z9ai_threadv>:
 8001330:	b508      	push	{r3, lr}
 8001332:	4836      	ldr	r0, [pc, #216]	; (800140c <_Z9ai_threadv+0xdc>)
 8001334:	2100      	movs	r1, #0
 8001336:	222c      	movs	r2, #44	; 0x2c
 8001338:	f7ff f845 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 800133c:	2200      	movs	r2, #0
 800133e:	4833      	ldr	r0, [pc, #204]	; (800140c <_Z9ai_threadv+0xdc>)
 8001340:	2101      	movs	r1, #1
 8001342:	f7ff f840 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 8001346:	4832      	ldr	r0, [pc, #200]	; (8001410 <_Z9ai_threadv+0xe0>)
 8001348:	f44f 7148 	mov.w	r1, #800	; 0x320
 800134c:	f7fe fffa 	bl	8000344 <_ZN6CTimer8delay_msEm>
 8001350:	482e      	ldr	r0, [pc, #184]	; (800140c <_Z9ai_threadv+0xdc>)
 8001352:	2100      	movs	r1, #0
 8001354:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 8001358:	f7ff f835 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 800135c:	2200      	movs	r2, #0
 800135e:	482b      	ldr	r0, [pc, #172]	; (800140c <_Z9ai_threadv+0xdc>)
 8001360:	2101      	movs	r1, #1
 8001362:	f7ff f830 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 8001366:	482a      	ldr	r0, [pc, #168]	; (8001410 <_Z9ai_threadv+0xe0>)
 8001368:	f44f 7148 	mov.w	r1, #800	; 0x320
 800136c:	f7fe ffea 	bl	8000344 <_ZN6CTimer8delay_msEm>
 8001370:	2100      	movs	r1, #0
 8001372:	460a      	mov	r2, r1
 8001374:	4825      	ldr	r0, [pc, #148]	; (800140c <_Z9ai_threadv+0xdc>)
 8001376:	f7ff f826 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 800137a:	222c      	movs	r2, #44	; 0x2c
 800137c:	4823      	ldr	r0, [pc, #140]	; (800140c <_Z9ai_threadv+0xdc>)
 800137e:	2101      	movs	r1, #1
 8001380:	f7ff f821 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 8001384:	4822      	ldr	r0, [pc, #136]	; (8001410 <_Z9ai_threadv+0xe0>)
 8001386:	f44f 7148 	mov.w	r1, #800	; 0x320
 800138a:	f7fe ffdb 	bl	8000344 <_ZN6CTimer8delay_msEm>
 800138e:	2100      	movs	r1, #0
 8001390:	460a      	mov	r2, r1
 8001392:	481e      	ldr	r0, [pc, #120]	; (800140c <_Z9ai_threadv+0xdc>)
 8001394:	f7ff f817 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 8001398:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 800139c:	481b      	ldr	r0, [pc, #108]	; (800140c <_Z9ai_threadv+0xdc>)
 800139e:	2101      	movs	r1, #1
 80013a0:	f7ff f811 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 80013a4:	481a      	ldr	r0, [pc, #104]	; (8001410 <_Z9ai_threadv+0xe0>)
 80013a6:	f44f 7148 	mov.w	r1, #800	; 0x320
 80013aa:	f7fe ffcb 	bl	8000344 <_ZN6CTimer8delay_msEm>
 80013ae:	4817      	ldr	r0, [pc, #92]	; (800140c <_Z9ai_threadv+0xdc>)
 80013b0:	2100      	movs	r1, #0
 80013b2:	222c      	movs	r2, #44	; 0x2c
 80013b4:	f7ff f807 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 80013b8:	222c      	movs	r2, #44	; 0x2c
 80013ba:	4814      	ldr	r0, [pc, #80]	; (800140c <_Z9ai_threadv+0xdc>)
 80013bc:	2101      	movs	r1, #1
 80013be:	f7ff f802 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 80013c2:	4813      	ldr	r0, [pc, #76]	; (8001410 <_Z9ai_threadv+0xe0>)
 80013c4:	f44f 7148 	mov.w	r1, #800	; 0x320
 80013c8:	f7fe ffbc 	bl	8000344 <_ZN6CTimer8delay_msEm>
 80013cc:	480f      	ldr	r0, [pc, #60]	; (800140c <_Z9ai_threadv+0xdc>)
 80013ce:	2100      	movs	r1, #0
 80013d0:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 80013d4:	f7fe fff7 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 80013d8:	f06f 022b 	mvn.w	r2, #43	; 0x2b
 80013dc:	480b      	ldr	r0, [pc, #44]	; (800140c <_Z9ai_threadv+0xdc>)
 80013de:	2101      	movs	r1, #1
 80013e0:	f7fe fff1 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 80013e4:	480a      	ldr	r0, [pc, #40]	; (8001410 <_Z9ai_threadv+0xe0>)
 80013e6:	f44f 7148 	mov.w	r1, #800	; 0x320
 80013ea:	f7fe ffab 	bl	8000344 <_ZN6CTimer8delay_msEm>
 80013ee:	2100      	movs	r1, #0
 80013f0:	460a      	mov	r2, r1
 80013f2:	4806      	ldr	r0, [pc, #24]	; (800140c <_Z9ai_threadv+0xdc>)
 80013f4:	f7fe ffe7 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 80013f8:	4804      	ldr	r0, [pc, #16]	; (800140c <_Z9ai_threadv+0xdc>)
 80013fa:	2101      	movs	r1, #1
 80013fc:	2200      	movs	r2, #0
 80013fe:	f7fe ffe2 	bl	80003c6 <_ZN6CMotor9motor_setEml>
 8001402:	4803      	ldr	r0, [pc, #12]	; (8001410 <_Z9ai_threadv+0xe0>)
 8001404:	210a      	movs	r1, #10
 8001406:	f7fe ff9d 	bl	8000344 <_ZN6CTimer8delay_msEm>
 800140a:	e7fa      	b.n	8001402 <_Z9ai_threadv+0xd2>
 800140c:	20000350 	.word	0x20000350
 8001410:	20000294 	.word	0x20000294

08001414 <_Z12print_threadv>:
 8001414:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8001416:	f44f 72fa 	mov.w	r2, #500	; 0x1f4
 800141a:	4850      	ldr	r0, [pc, #320]	; (800155c <_Z12print_threadv+0x148>)
 800141c:	2101      	movs	r1, #1
 800141e:	f7fe ffa3 	bl	8000368 <_ZN6CTimer22event_timer_set_periodEhm>
 8001422:	484e      	ldr	r0, [pc, #312]	; (800155c <_Z12print_threadv+0x148>)
 8001424:	2101      	movs	r1, #1
 8001426:	f7fe ffb3 	bl	8000390 <_ZN6CTimer14event_timer_ccEh>
 800142a:	2800      	cmp	r0, #0
 800142c:	d0f9      	beq.n	8001422 <_Z12print_threadv+0xe>
 800142e:	2101      	movs	r1, #1
 8001430:	484a      	ldr	r0, [pc, #296]	; (800155c <_Z12print_threadv+0x148>)
 8001432:	f7ff fdb3 	bl	8000f9c <_ZN5CGPIO7gpio_onEm>
 8001436:	4849      	ldr	r0, [pc, #292]	; (800155c <_Z12print_threadv+0x148>)
 8001438:	f7fe ff76 	bl	8000328 <_ZN6CTimer8get_timeEv>
 800143c:	4948      	ldr	r1, [pc, #288]	; (8001560 <_Z12print_threadv+0x14c>)
 800143e:	4602      	mov	r2, r0
 8001440:	4846      	ldr	r0, [pc, #280]	; (800155c <_Z12print_threadv+0x148>)
 8001442:	f7ff fefb 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001446:	4845      	ldr	r0, [pc, #276]	; (800155c <_Z12print_threadv+0x148>)
 8001448:	f7ff fdd4 	bl	8000ff4 <_ZN5CGPIO16get_left_encoderEv>
 800144c:	4604      	mov	r4, r0
 800144e:	4843      	ldr	r0, [pc, #268]	; (800155c <_Z12print_threadv+0x148>)
 8001450:	f7ff fdd2 	bl	8000ff8 <_ZN5CGPIO17get_right_encoderEv>
 8001454:	4622      	mov	r2, r4
 8001456:	4603      	mov	r3, r0
 8001458:	4942      	ldr	r1, [pc, #264]	; (8001564 <_Z12print_threadv+0x150>)
 800145a:	4840      	ldr	r0, [pc, #256]	; (800155c <_Z12print_threadv+0x148>)
 800145c:	f7ff feee 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001460:	483e      	ldr	r0, [pc, #248]	; (800155c <_Z12print_threadv+0x148>)
 8001462:	f7ff fd55 	bl	8000f10 <_ZN4CIMU7imu_getEv>
 8001466:	6805      	ldr	r5, [r0, #0]
 8001468:	483c      	ldr	r0, [pc, #240]	; (800155c <_Z12print_threadv+0x148>)
 800146a:	f7ff fd51 	bl	8000f10 <_ZN4CIMU7imu_getEv>
 800146e:	6844      	ldr	r4, [r0, #4]
 8001470:	483a      	ldr	r0, [pc, #232]	; (800155c <_Z12print_threadv+0x148>)
 8001472:	f7ff fd4d 	bl	8000f10 <_ZN4CIMU7imu_getEv>
 8001476:	6883      	ldr	r3, [r0, #8]
 8001478:	9300      	str	r3, [sp, #0]
 800147a:	462a      	mov	r2, r5
 800147c:	4623      	mov	r3, r4
 800147e:	4837      	ldr	r0, [pc, #220]	; (800155c <_Z12print_threadv+0x148>)
 8001480:	4939      	ldr	r1, [pc, #228]	; (8001568 <_Z12print_threadv+0x154>)
 8001482:	f7ff fedb 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001486:	4939      	ldr	r1, [pc, #228]	; (800156c <_Z12print_threadv+0x158>)
 8001488:	4834      	ldr	r0, [pc, #208]	; (800155c <_Z12print_threadv+0x148>)
 800148a:	f7ff fed7 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 800148e:	4838      	ldr	r0, [pc, #224]	; (8001570 <_Z12print_threadv+0x15c>)
 8001490:	f7ff f9c3 	bl	800081a <_ZN8CSensors14get_rgb_resultEv>
 8001494:	4935      	ldr	r1, [pc, #212]	; (800156c <_Z12print_threadv+0x158>)
 8001496:	4604      	mov	r4, r0
 8001498:	4830      	ldr	r0, [pc, #192]	; (800155c <_Z12print_threadv+0x148>)
 800149a:	f7ff fecf 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 800149e:	1ea5      	subs	r5, r4, #2
 80014a0:	1da6      	adds	r6, r4, #6
 80014a2:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 80014a6:	482d      	ldr	r0, [pc, #180]	; (800155c <_Z12print_threadv+0x148>)
 80014a8:	4932      	ldr	r1, [pc, #200]	; (8001574 <_Z12print_threadv+0x160>)
 80014aa:	f7ff fec7 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80014ae:	42b5      	cmp	r5, r6
 80014b0:	d1f7      	bne.n	80014a2 <_Z12print_threadv+0x8e>
 80014b2:	482a      	ldr	r0, [pc, #168]	; (800155c <_Z12print_threadv+0x148>)
 80014b4:	492d      	ldr	r1, [pc, #180]	; (800156c <_Z12print_threadv+0x158>)
 80014b6:	f7ff fec1 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80014ba:	f104 050e 	add.w	r5, r4, #14
 80014be:	f936 2f02 	ldrsh.w	r2, [r6, #2]!
 80014c2:	4826      	ldr	r0, [pc, #152]	; (800155c <_Z12print_threadv+0x148>)
 80014c4:	492b      	ldr	r1, [pc, #172]	; (8001574 <_Z12print_threadv+0x160>)
 80014c6:	f7ff feb9 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80014ca:	42ae      	cmp	r6, r5
 80014cc:	d1f7      	bne.n	80014be <_Z12print_threadv+0xaa>
 80014ce:	4823      	ldr	r0, [pc, #140]	; (800155c <_Z12print_threadv+0x148>)
 80014d0:	4926      	ldr	r1, [pc, #152]	; (800156c <_Z12print_threadv+0x158>)
 80014d2:	f7ff feb3 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80014d6:	f104 0616 	add.w	r6, r4, #22
 80014da:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 80014de:	481f      	ldr	r0, [pc, #124]	; (800155c <_Z12print_threadv+0x148>)
 80014e0:	4924      	ldr	r1, [pc, #144]	; (8001574 <_Z12print_threadv+0x160>)
 80014e2:	f7ff feab 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80014e6:	42b5      	cmp	r5, r6
 80014e8:	d1f7      	bne.n	80014da <_Z12print_threadv+0xc6>
 80014ea:	481c      	ldr	r0, [pc, #112]	; (800155c <_Z12print_threadv+0x148>)
 80014ec:	491f      	ldr	r1, [pc, #124]	; (800156c <_Z12print_threadv+0x158>)
 80014ee:	f7ff fea5 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80014f2:	481a      	ldr	r0, [pc, #104]	; (800155c <_Z12print_threadv+0x148>)
 80014f4:	491d      	ldr	r1, [pc, #116]	; (800156c <_Z12print_threadv+0x158>)
 80014f6:	f7ff fea1 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80014fa:	4818      	ldr	r0, [pc, #96]	; (800155c <_Z12print_threadv+0x148>)
 80014fc:	491b      	ldr	r1, [pc, #108]	; (800156c <_Z12print_threadv+0x158>)
 80014fe:	f7ff fe9d 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001502:	f104 0526 	add.w	r5, r4, #38	; 0x26
 8001506:	f104 062e 	add.w	r6, r4, #46	; 0x2e
 800150a:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 800150e:	4813      	ldr	r0, [pc, #76]	; (800155c <_Z12print_threadv+0x148>)
 8001510:	4918      	ldr	r1, [pc, #96]	; (8001574 <_Z12print_threadv+0x160>)
 8001512:	f7ff fe93 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001516:	42b5      	cmp	r5, r6
 8001518:	d1f7      	bne.n	800150a <_Z12print_threadv+0xf6>
 800151a:	4810      	ldr	r0, [pc, #64]	; (800155c <_Z12print_threadv+0x148>)
 800151c:	4913      	ldr	r1, [pc, #76]	; (800156c <_Z12print_threadv+0x158>)
 800151e:	f7ff fe8d 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001522:	f104 0536 	add.w	r5, r4, #54	; 0x36
 8001526:	f936 2f02 	ldrsh.w	r2, [r6, #2]!
 800152a:	480c      	ldr	r0, [pc, #48]	; (800155c <_Z12print_threadv+0x148>)
 800152c:	4911      	ldr	r1, [pc, #68]	; (8001574 <_Z12print_threadv+0x160>)
 800152e:	f7ff fe85 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001532:	42ae      	cmp	r6, r5
 8001534:	d1f7      	bne.n	8001526 <_Z12print_threadv+0x112>
 8001536:	4809      	ldr	r0, [pc, #36]	; (800155c <_Z12print_threadv+0x148>)
 8001538:	490c      	ldr	r1, [pc, #48]	; (800156c <_Z12print_threadv+0x158>)
 800153a:	f7ff fe7f 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 800153e:	343e      	adds	r4, #62	; 0x3e
 8001540:	f935 2f02 	ldrsh.w	r2, [r5, #2]!
 8001544:	4805      	ldr	r0, [pc, #20]	; (800155c <_Z12print_threadv+0x148>)
 8001546:	490b      	ldr	r1, [pc, #44]	; (8001574 <_Z12print_threadv+0x160>)
 8001548:	f7ff fe78 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 800154c:	42a5      	cmp	r5, r4
 800154e:	d1f7      	bne.n	8001540 <_Z12print_threadv+0x12c>
 8001550:	4802      	ldr	r0, [pc, #8]	; (800155c <_Z12print_threadv+0x148>)
 8001552:	2101      	movs	r1, #1
 8001554:	f7ff fd32 	bl	8000fbc <_ZN5CGPIO8gpio_offEm>
 8001558:	e763      	b.n	8001422 <_Z12print_threadv+0xe>
 800155a:	bf00      	nop
 800155c:	20000294 	.word	0x20000294
 8001560:	080020ae 	.word	0x080020ae
 8001564:	080020be 	.word	0x080020be
 8001568:	080020ce 	.word	0x080020ce
 800156c:	08002108 	.word	0x08002108
 8001570:	200002cc 	.word	0x200002cc
 8001574:	080020df 	.word	0x080020df

08001578 <usr_main>:
 8001578:	b538      	push	{r3, r4, r5, lr}
 800157a:	f000 fbb7 	bl	8001cec <sytem_clock_init>
 800157e:	f000 fd6b 	bl	8002058 <lib_os_init>
 8001582:	2400      	movs	r4, #0
 8001584:	4827      	ldr	r0, [pc, #156]	; (8001624 <usr_main+0xac>)
 8001586:	f7fe fdff 	bl	8000188 <_ZN7CKodama4initEv>
 800158a:	4605      	mov	r5, r0
 800158c:	4926      	ldr	r1, [pc, #152]	; (8001628 <usr_main+0xb0>)
 800158e:	4825      	ldr	r0, [pc, #148]	; (8001624 <usr_main+0xac>)
 8001590:	4622      	mov	r2, r4
 8001592:	462b      	mov	r3, r5
 8001594:	f7ff fe52 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 8001598:	4822      	ldr	r0, [pc, #136]	; (8001624 <usr_main+0xac>)
 800159a:	b91d      	cbnz	r5, 80015a4 <usr_main+0x2c>
 800159c:	4923      	ldr	r1, [pc, #140]	; (800162c <usr_main+0xb4>)
 800159e:	f7ff fe4d 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80015a2:	e009      	b.n	80015b8 <usr_main+0x40>
 80015a4:	4922      	ldr	r1, [pc, #136]	; (8001630 <usr_main+0xb8>)
 80015a6:	3401      	adds	r4, #1
 80015a8:	f7ff fe48 	bl	800123c <_ZN9CTerminal6printfEPKcz>
 80015ac:	2c08      	cmp	r4, #8
 80015ae:	d1e9      	bne.n	8001584 <usr_main+0xc>
 80015b0:	481c      	ldr	r0, [pc, #112]	; (8001624 <usr_main+0xac>)
 80015b2:	2100      	movs	r1, #0
 80015b4:	f7ff fd22 	bl	8000ffc <_ZN6CError5errorEi>
 80015b8:	481a      	ldr	r0, [pc, #104]	; (8001624 <usr_main+0xac>)
 80015ba:	f7fe fe1f 	bl	80001fc <_ZN7CKodama5sleepEv>
 80015be:	4819      	ldr	r0, [pc, #100]	; (8001624 <usr_main+0xac>)
 80015c0:	2103      	movs	r1, #3
 80015c2:	f7ff fd0b 	bl	8000fdc <_ZN5CGPIO7gpio_inEm>
 80015c6:	b1d8      	cbz	r0, 8001600 <usr_main+0x88>
 80015c8:	4816      	ldr	r0, [pc, #88]	; (8001624 <usr_main+0xac>)
 80015ca:	f7fe fe22 	bl	8000212 <_ZN7CKodama6wakeupEv>
 80015ce:	4919      	ldr	r1, [pc, #100]	; (8001634 <usr_main+0xbc>)
 80015d0:	4819      	ldr	r0, [pc, #100]	; (8001638 <usr_main+0xc0>)
 80015d2:	f44f 7200 	mov.w	r2, #512	; 0x200
 80015d6:	2306      	movs	r3, #6
 80015d8:	f000 fcc2 	bl	8001f60 <create_thread>
 80015dc:	4917      	ldr	r1, [pc, #92]	; (800163c <usr_main+0xc4>)
 80015de:	4818      	ldr	r0, [pc, #96]	; (8001640 <usr_main+0xc8>)
 80015e0:	f44f 7200 	mov.w	r2, #512	; 0x200
 80015e4:	2306      	movs	r3, #6
 80015e6:	f000 fcbb 	bl	8001f60 <create_thread>
 80015ea:	2306      	movs	r3, #6
 80015ec:	4815      	ldr	r0, [pc, #84]	; (8001644 <usr_main+0xcc>)
 80015ee:	4916      	ldr	r1, [pc, #88]	; (8001648 <usr_main+0xd0>)
 80015f0:	f44f 7200 	mov.w	r2, #512	; 0x200
 80015f4:	f000 fcb4 	bl	8001f60 <create_thread>
 80015f8:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80015fc:	f000 bcaa 	b.w	8001f54 <kernel_start>
 8001600:	4808      	ldr	r0, [pc, #32]	; (8001624 <usr_main+0xac>)
 8001602:	2101      	movs	r1, #1
 8001604:	f7ff fcca 	bl	8000f9c <_ZN5CGPIO7gpio_onEm>
 8001608:	4806      	ldr	r0, [pc, #24]	; (8001624 <usr_main+0xac>)
 800160a:	210a      	movs	r1, #10
 800160c:	f7fe fe9a 	bl	8000344 <_ZN6CTimer8delay_msEm>
 8001610:	4804      	ldr	r0, [pc, #16]	; (8001624 <usr_main+0xac>)
 8001612:	2101      	movs	r1, #1
 8001614:	f7ff fcd2 	bl	8000fbc <_ZN5CGPIO8gpio_offEm>
 8001618:	4802      	ldr	r0, [pc, #8]	; (8001624 <usr_main+0xac>)
 800161a:	f44f 7196 	mov.w	r1, #300	; 0x12c
 800161e:	f7fe fe91 	bl	8000344 <_ZN6CTimer8delay_msEm>
 8001622:	e7cc      	b.n	80015be <usr_main+0x46>
 8001624:	20000294 	.word	0x20000294
 8001628:	080020e3 	.word	0x080020e3
 800162c:	080020f8 	.word	0x080020f8
 8001630:	080020ff 	.word	0x080020ff
 8001634:	20000560 	.word	0x20000560
 8001638:	080012e1 	.word	0x080012e1
 800163c:	20000094 	.word	0x20000094
 8001640:	08001331 	.word	0x08001331
 8001644:	08001415 	.word	0x08001415
 8001648:	20000360 	.word	0x20000360

0800164c <main>:
 800164c:	b508      	push	{r3, lr}
 800164e:	f7ff ff93 	bl	8001578 <usr_main>
 8001652:	2000      	movs	r0, #0
 8001654:	bd08      	pop	{r3, pc}
	...

08001658 <RCC_GetClocksFreq>:
 8001658:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800165c:	4f9b      	ldr	r7, [pc, #620]	; (80018cc <RCC_GetClocksFreq+0x274>)
 800165e:	687b      	ldr	r3, [r7, #4]
 8001660:	f003 030c 	and.w	r3, r3, #12
 8001664:	2b04      	cmp	r3, #4
 8001666:	d005      	beq.n	8001674 <RCC_GetClocksFreq+0x1c>
 8001668:	2b08      	cmp	r3, #8
 800166a:	d006      	beq.n	800167a <RCC_GetClocksFreq+0x22>
 800166c:	4a98      	ldr	r2, [pc, #608]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 800166e:	6002      	str	r2, [r0, #0]
 8001670:	b9b3      	cbnz	r3, 80016a0 <RCC_GetClocksFreq+0x48>
 8001672:	e016      	b.n	80016a2 <RCC_GetClocksFreq+0x4a>
 8001674:	4b96      	ldr	r3, [pc, #600]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 8001676:	6003      	str	r3, [r0, #0]
 8001678:	e012      	b.n	80016a0 <RCC_GetClocksFreq+0x48>
 800167a:	687b      	ldr	r3, [r7, #4]
 800167c:	6879      	ldr	r1, [r7, #4]
 800167e:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001682:	1c9a      	adds	r2, r3, #2
 8001684:	03cb      	lsls	r3, r1, #15
 8001686:	bf49      	itett	mi
 8001688:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800168a:	4b92      	ldrpl	r3, [pc, #584]	; (80018d4 <RCC_GetClocksFreq+0x27c>)
 800168c:	4990      	ldrmi	r1, [pc, #576]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 800168e:	f003 030f 	andmi.w	r3, r3, #15
 8001692:	bf44      	itt	mi
 8001694:	3301      	addmi	r3, #1
 8001696:	fbb1 f3f3 	udivmi	r3, r1, r3
 800169a:	4353      	muls	r3, r2
 800169c:	6003      	str	r3, [r0, #0]
 800169e:	e000      	b.n	80016a2 <RCC_GetClocksFreq+0x4a>
 80016a0:	2300      	movs	r3, #0
 80016a2:	687a      	ldr	r2, [r7, #4]
 80016a4:	4e8c      	ldr	r6, [pc, #560]	; (80018d8 <RCC_GetClocksFreq+0x280>)
 80016a6:	f8df c234 	ldr.w	ip, [pc, #564]	; 80018dc <RCC_GetClocksFreq+0x284>
 80016aa:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80016ae:	5cb4      	ldrb	r4, [r6, r2]
 80016b0:	6802      	ldr	r2, [r0, #0]
 80016b2:	b2e4      	uxtb	r4, r4
 80016b4:	fa22 f104 	lsr.w	r1, r2, r4
 80016b8:	6041      	str	r1, [r0, #4]
 80016ba:	687d      	ldr	r5, [r7, #4]
 80016bc:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80016c0:	5d75      	ldrb	r5, [r6, r5]
 80016c2:	fa21 fe05 	lsr.w	lr, r1, r5
 80016c6:	f8c0 e008 	str.w	lr, [r0, #8]
 80016ca:	687d      	ldr	r5, [r7, #4]
 80016cc:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80016d0:	5d75      	ldrb	r5, [r6, r5]
 80016d2:	b2ed      	uxtb	r5, r5
 80016d4:	40e9      	lsrs	r1, r5
 80016d6:	60c1      	str	r1, [r0, #12]
 80016d8:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80016da:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80016de:	f008 060f 	and.w	r6, r8, #15
 80016e2:	f018 0f10 	tst.w	r8, #16
 80016e6:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80016ea:	46e0      	mov	r8, ip
 80016ec:	b2b6      	uxth	r6, r6
 80016ee:	d004      	beq.n	80016fa <RCC_GetClocksFreq+0xa2>
 80016f0:	b11e      	cbz	r6, 80016fa <RCC_GetClocksFreq+0xa2>
 80016f2:	fbb3 f6f6 	udiv	r6, r3, r6
 80016f6:	6106      	str	r6, [r0, #16]
 80016f8:	e000      	b.n	80016fc <RCC_GetClocksFreq+0xa4>
 80016fa:	6102      	str	r2, [r0, #16]
 80016fc:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80016fe:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001702:	f00c 060f 	and.w	r6, ip, #15
 8001706:	f01c 0f10 	tst.w	ip, #16
 800170a:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 800170e:	b2b6      	uxth	r6, r6
 8001710:	d004      	beq.n	800171c <RCC_GetClocksFreq+0xc4>
 8001712:	b11e      	cbz	r6, 800171c <RCC_GetClocksFreq+0xc4>
 8001714:	fbb3 f6f6 	udiv	r6, r3, r6
 8001718:	6146      	str	r6, [r0, #20]
 800171a:	e000      	b.n	800171e <RCC_GetClocksFreq+0xc6>
 800171c:	6142      	str	r2, [r0, #20]
 800171e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001720:	06f6      	lsls	r6, r6, #27
 8001722:	bf5a      	itte	pl
 8001724:	4e6a      	ldrpl	r6, [pc, #424]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 8001726:	6186      	strpl	r6, [r0, #24]
 8001728:	6182      	strmi	r2, [r0, #24]
 800172a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800172c:	06b6      	lsls	r6, r6, #26
 800172e:	bf5a      	itte	pl
 8001730:	4e67      	ldrpl	r6, [pc, #412]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 8001732:	61c6      	strpl	r6, [r0, #28]
 8001734:	61c2      	strmi	r2, [r0, #28]
 8001736:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001738:	0676      	lsls	r6, r6, #25
 800173a:	bf5a      	itte	pl
 800173c:	4e64      	ldrpl	r6, [pc, #400]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 800173e:	6206      	strpl	r6, [r0, #32]
 8001740:	6202      	strmi	r2, [r0, #32]
 8001742:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001744:	05f6      	lsls	r6, r6, #23
 8001746:	d506      	bpl.n	8001756 <RCC_GetClocksFreq+0xfe>
 8001748:	429a      	cmp	r2, r3
 800174a:	d104      	bne.n	8001756 <RCC_GetClocksFreq+0xfe>
 800174c:	42a5      	cmp	r5, r4
 800174e:	d102      	bne.n	8001756 <RCC_GetClocksFreq+0xfe>
 8001750:	0056      	lsls	r6, r2, #1
 8001752:	6246      	str	r6, [r0, #36]	; 0x24
 8001754:	e000      	b.n	8001758 <RCC_GetClocksFreq+0x100>
 8001756:	6241      	str	r1, [r0, #36]	; 0x24
 8001758:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800175a:	04f6      	lsls	r6, r6, #19
 800175c:	d506      	bpl.n	800176c <RCC_GetClocksFreq+0x114>
 800175e:	429a      	cmp	r2, r3
 8001760:	d104      	bne.n	800176c <RCC_GetClocksFreq+0x114>
 8001762:	42a5      	cmp	r5, r4
 8001764:	d102      	bne.n	800176c <RCC_GetClocksFreq+0x114>
 8001766:	0056      	lsls	r6, r2, #1
 8001768:	6286      	str	r6, [r0, #40]	; 0x28
 800176a:	e000      	b.n	800176e <RCC_GetClocksFreq+0x116>
 800176c:	6281      	str	r1, [r0, #40]	; 0x28
 800176e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001770:	05b6      	lsls	r6, r6, #22
 8001772:	d506      	bpl.n	8001782 <RCC_GetClocksFreq+0x12a>
 8001774:	429a      	cmp	r2, r3
 8001776:	d104      	bne.n	8001782 <RCC_GetClocksFreq+0x12a>
 8001778:	42a5      	cmp	r5, r4
 800177a:	d102      	bne.n	8001782 <RCC_GetClocksFreq+0x12a>
 800177c:	0056      	lsls	r6, r2, #1
 800177e:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001780:	e000      	b.n	8001784 <RCC_GetClocksFreq+0x12c>
 8001782:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001784:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001786:	0576      	lsls	r6, r6, #21
 8001788:	d506      	bpl.n	8001798 <RCC_GetClocksFreq+0x140>
 800178a:	429a      	cmp	r2, r3
 800178c:	d104      	bne.n	8001798 <RCC_GetClocksFreq+0x140>
 800178e:	42a5      	cmp	r5, r4
 8001790:	d102      	bne.n	8001798 <RCC_GetClocksFreq+0x140>
 8001792:	0056      	lsls	r6, r2, #1
 8001794:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001796:	e000      	b.n	800179a <RCC_GetClocksFreq+0x142>
 8001798:	64c1      	str	r1, [r0, #76]	; 0x4c
 800179a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800179c:	0536      	lsls	r6, r6, #20
 800179e:	d506      	bpl.n	80017ae <RCC_GetClocksFreq+0x156>
 80017a0:	429a      	cmp	r2, r3
 80017a2:	d104      	bne.n	80017ae <RCC_GetClocksFreq+0x156>
 80017a4:	42a5      	cmp	r5, r4
 80017a6:	d102      	bne.n	80017ae <RCC_GetClocksFreq+0x156>
 80017a8:	0056      	lsls	r6, r2, #1
 80017aa:	6506      	str	r6, [r0, #80]	; 0x50
 80017ac:	e000      	b.n	80017b0 <RCC_GetClocksFreq+0x158>
 80017ae:	6501      	str	r1, [r0, #80]	; 0x50
 80017b0:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017b2:	04b6      	lsls	r6, r6, #18
 80017b4:	d506      	bpl.n	80017c4 <RCC_GetClocksFreq+0x16c>
 80017b6:	429a      	cmp	r2, r3
 80017b8:	d104      	bne.n	80017c4 <RCC_GetClocksFreq+0x16c>
 80017ba:	42a5      	cmp	r5, r4
 80017bc:	d102      	bne.n	80017c4 <RCC_GetClocksFreq+0x16c>
 80017be:	0056      	lsls	r6, r2, #1
 80017c0:	6546      	str	r6, [r0, #84]	; 0x54
 80017c2:	e000      	b.n	80017c6 <RCC_GetClocksFreq+0x16e>
 80017c4:	6501      	str	r1, [r0, #80]	; 0x50
 80017c6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017c8:	0436      	lsls	r6, r6, #16
 80017ca:	d506      	bpl.n	80017da <RCC_GetClocksFreq+0x182>
 80017cc:	429a      	cmp	r2, r3
 80017ce:	d104      	bne.n	80017da <RCC_GetClocksFreq+0x182>
 80017d0:	42a5      	cmp	r5, r4
 80017d2:	d102      	bne.n	80017da <RCC_GetClocksFreq+0x182>
 80017d4:	0053      	lsls	r3, r2, #1
 80017d6:	6583      	str	r3, [r0, #88]	; 0x58
 80017d8:	e000      	b.n	80017dc <RCC_GetClocksFreq+0x184>
 80017da:	6581      	str	r1, [r0, #88]	; 0x58
 80017dc:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 80017de:	4b3b      	ldr	r3, [pc, #236]	; (80018cc <RCC_GetClocksFreq+0x274>)
 80017e0:	07a4      	lsls	r4, r4, #30
 80017e2:	d101      	bne.n	80017e8 <RCC_GetClocksFreq+0x190>
 80017e4:	6381      	str	r1, [r0, #56]	; 0x38
 80017e6:	e015      	b.n	8001814 <RCC_GetClocksFreq+0x1bc>
 80017e8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80017ea:	f001 0103 	and.w	r1, r1, #3
 80017ee:	2901      	cmp	r1, #1
 80017f0:	d101      	bne.n	80017f6 <RCC_GetClocksFreq+0x19e>
 80017f2:	6382      	str	r2, [r0, #56]	; 0x38
 80017f4:	e00e      	b.n	8001814 <RCC_GetClocksFreq+0x1bc>
 80017f6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80017f8:	f001 0103 	and.w	r1, r1, #3
 80017fc:	2902      	cmp	r1, #2
 80017fe:	d102      	bne.n	8001806 <RCC_GetClocksFreq+0x1ae>
 8001800:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001804:	e005      	b.n	8001812 <RCC_GetClocksFreq+0x1ba>
 8001806:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001808:	f003 0303 	and.w	r3, r3, #3
 800180c:	2b03      	cmp	r3, #3
 800180e:	d101      	bne.n	8001814 <RCC_GetClocksFreq+0x1bc>
 8001810:	4b2f      	ldr	r3, [pc, #188]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 8001812:	6383      	str	r3, [r0, #56]	; 0x38
 8001814:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001816:	4b2d      	ldr	r3, [pc, #180]	; (80018cc <RCC_GetClocksFreq+0x274>)
 8001818:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 800181c:	d102      	bne.n	8001824 <RCC_GetClocksFreq+0x1cc>
 800181e:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001822:	e018      	b.n	8001856 <RCC_GetClocksFreq+0x1fe>
 8001824:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001826:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800182a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800182e:	d101      	bne.n	8001834 <RCC_GetClocksFreq+0x1dc>
 8001830:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001832:	e010      	b.n	8001856 <RCC_GetClocksFreq+0x1fe>
 8001834:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001836:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800183a:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 800183e:	d102      	bne.n	8001846 <RCC_GetClocksFreq+0x1ee>
 8001840:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001844:	e006      	b.n	8001854 <RCC_GetClocksFreq+0x1fc>
 8001846:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001848:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 800184c:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001850:	d101      	bne.n	8001856 <RCC_GetClocksFreq+0x1fe>
 8001852:	4b1f      	ldr	r3, [pc, #124]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 8001854:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001856:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001858:	4b1c      	ldr	r3, [pc, #112]	; (80018cc <RCC_GetClocksFreq+0x274>)
 800185a:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 800185e:	d102      	bne.n	8001866 <RCC_GetClocksFreq+0x20e>
 8001860:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001864:	e018      	b.n	8001898 <RCC_GetClocksFreq+0x240>
 8001866:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001868:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800186c:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001870:	d101      	bne.n	8001876 <RCC_GetClocksFreq+0x21e>
 8001872:	6402      	str	r2, [r0, #64]	; 0x40
 8001874:	e010      	b.n	8001898 <RCC_GetClocksFreq+0x240>
 8001876:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001878:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 800187c:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001880:	d102      	bne.n	8001888 <RCC_GetClocksFreq+0x230>
 8001882:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001886:	e006      	b.n	8001896 <RCC_GetClocksFreq+0x23e>
 8001888:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800188a:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 800188e:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001892:	d101      	bne.n	8001898 <RCC_GetClocksFreq+0x240>
 8001894:	4b0e      	ldr	r3, [pc, #56]	; (80018d0 <RCC_GetClocksFreq+0x278>)
 8001896:	6403      	str	r3, [r0, #64]	; 0x40
 8001898:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800189a:	4b0c      	ldr	r3, [pc, #48]	; (80018cc <RCC_GetClocksFreq+0x274>)
 800189c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 80018a0:	d102      	bne.n	80018a8 <RCC_GetClocksFreq+0x250>
 80018a2:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 80018a6:	e023      	b.n	80018f0 <RCC_GetClocksFreq+0x298>
 80018a8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018aa:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80018ae:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80018b2:	d101      	bne.n	80018b8 <RCC_GetClocksFreq+0x260>
 80018b4:	6442      	str	r2, [r0, #68]	; 0x44
 80018b6:	e01b      	b.n	80018f0 <RCC_GetClocksFreq+0x298>
 80018b8:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018ba:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80018be:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80018c2:	d10d      	bne.n	80018e0 <RCC_GetClocksFreq+0x288>
 80018c4:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80018c8:	e011      	b.n	80018ee <RCC_GetClocksFreq+0x296>
 80018ca:	bf00      	nop
 80018cc:	40021000 	.word	0x40021000
 80018d0:	007a1200 	.word	0x007a1200
 80018d4:	003d0900 	.word	0x003d0900
 80018d8:	20000020 	.word	0x20000020
 80018dc:	20000000 	.word	0x20000000
 80018e0:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80018e2:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 80018e6:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80018ea:	d101      	bne.n	80018f0 <RCC_GetClocksFreq+0x298>
 80018ec:	4b13      	ldr	r3, [pc, #76]	; (800193c <RCC_GetClocksFreq+0x2e4>)
 80018ee:	6443      	str	r3, [r0, #68]	; 0x44
 80018f0:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80018f2:	4b13      	ldr	r3, [pc, #76]	; (8001940 <RCC_GetClocksFreq+0x2e8>)
 80018f4:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 80018f8:	d103      	bne.n	8001902 <RCC_GetClocksFreq+0x2aa>
 80018fa:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 80018fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001902:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001904:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001908:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 800190c:	d102      	bne.n	8001914 <RCC_GetClocksFreq+0x2bc>
 800190e:	6482      	str	r2, [r0, #72]	; 0x48
 8001910:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001914:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001916:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 800191a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 800191e:	d102      	bne.n	8001926 <RCC_GetClocksFreq+0x2ce>
 8001920:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001924:	e006      	b.n	8001934 <RCC_GetClocksFreq+0x2dc>
 8001926:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001928:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 800192c:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001930:	d101      	bne.n	8001936 <RCC_GetClocksFreq+0x2de>
 8001932:	4b02      	ldr	r3, [pc, #8]	; (800193c <RCC_GetClocksFreq+0x2e4>)
 8001934:	6483      	str	r3, [r0, #72]	; 0x48
 8001936:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800193a:	bf00      	nop
 800193c:	007a1200 	.word	0x007a1200
 8001940:	40021000 	.word	0x40021000

08001944 <RCC_AHBPeriphClockCmd>:
 8001944:	bf00      	nop
 8001946:	bf00      	nop
 8001948:	4b04      	ldr	r3, [pc, #16]	; (800195c <RCC_AHBPeriphClockCmd+0x18>)
 800194a:	695a      	ldr	r2, [r3, #20]
 800194c:	b109      	cbz	r1, 8001952 <RCC_AHBPeriphClockCmd+0xe>
 800194e:	4310      	orrs	r0, r2
 8001950:	e001      	b.n	8001956 <RCC_AHBPeriphClockCmd+0x12>
 8001952:	ea22 0000 	bic.w	r0, r2, r0
 8001956:	6158      	str	r0, [r3, #20]
 8001958:	4770      	bx	lr
 800195a:	bf00      	nop
 800195c:	40021000 	.word	0x40021000

08001960 <RCC_APB2PeriphClockCmd>:
 8001960:	bf00      	nop
 8001962:	bf00      	nop
 8001964:	4b04      	ldr	r3, [pc, #16]	; (8001978 <RCC_APB2PeriphClockCmd+0x18>)
 8001966:	699a      	ldr	r2, [r3, #24]
 8001968:	b109      	cbz	r1, 800196e <RCC_APB2PeriphClockCmd+0xe>
 800196a:	4310      	orrs	r0, r2
 800196c:	e001      	b.n	8001972 <RCC_APB2PeriphClockCmd+0x12>
 800196e:	ea22 0000 	bic.w	r0, r2, r0
 8001972:	6198      	str	r0, [r3, #24]
 8001974:	4770      	bx	lr
 8001976:	bf00      	nop
 8001978:	40021000 	.word	0x40021000

0800197c <RCC_APB1PeriphClockCmd>:
 800197c:	bf00      	nop
 800197e:	bf00      	nop
 8001980:	4b04      	ldr	r3, [pc, #16]	; (8001994 <RCC_APB1PeriphClockCmd+0x18>)
 8001982:	69da      	ldr	r2, [r3, #28]
 8001984:	b109      	cbz	r1, 800198a <RCC_APB1PeriphClockCmd+0xe>
 8001986:	4310      	orrs	r0, r2
 8001988:	e001      	b.n	800198e <RCC_APB1PeriphClockCmd+0x12>
 800198a:	ea22 0000 	bic.w	r0, r2, r0
 800198e:	61d8      	str	r0, [r3, #28]
 8001990:	4770      	bx	lr
 8001992:	bf00      	nop
 8001994:	40021000 	.word	0x40021000

08001998 <TIM_TimeBaseInit>:
 8001998:	bf00      	nop
 800199a:	bf00      	nop
 800199c:	bf00      	nop
 800199e:	4a24      	ldr	r2, [pc, #144]	; (8001a30 <TIM_TimeBaseInit+0x98>)
 80019a0:	8803      	ldrh	r3, [r0, #0]
 80019a2:	4290      	cmp	r0, r2
 80019a4:	b29b      	uxth	r3, r3
 80019a6:	d012      	beq.n	80019ce <TIM_TimeBaseInit+0x36>
 80019a8:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80019ac:	4290      	cmp	r0, r2
 80019ae:	d00e      	beq.n	80019ce <TIM_TimeBaseInit+0x36>
 80019b0:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80019b4:	d00b      	beq.n	80019ce <TIM_TimeBaseInit+0x36>
 80019b6:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80019ba:	4290      	cmp	r0, r2
 80019bc:	d007      	beq.n	80019ce <TIM_TimeBaseInit+0x36>
 80019be:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80019c2:	4290      	cmp	r0, r2
 80019c4:	d003      	beq.n	80019ce <TIM_TimeBaseInit+0x36>
 80019c6:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80019ca:	4290      	cmp	r0, r2
 80019cc:	d103      	bne.n	80019d6 <TIM_TimeBaseInit+0x3e>
 80019ce:	884a      	ldrh	r2, [r1, #2]
 80019d0:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80019d4:	4313      	orrs	r3, r2
 80019d6:	4a17      	ldr	r2, [pc, #92]	; (8001a34 <TIM_TimeBaseInit+0x9c>)
 80019d8:	4290      	cmp	r0, r2
 80019da:	d008      	beq.n	80019ee <TIM_TimeBaseInit+0x56>
 80019dc:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80019e0:	4290      	cmp	r0, r2
 80019e2:	bf1f      	itttt	ne
 80019e4:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 80019e8:	890a      	ldrhne	r2, [r1, #8]
 80019ea:	b29b      	uxthne	r3, r3
 80019ec:	4313      	orrne	r3, r2
 80019ee:	8003      	strh	r3, [r0, #0]
 80019f0:	684b      	ldr	r3, [r1, #4]
 80019f2:	62c3      	str	r3, [r0, #44]	; 0x2c
 80019f4:	880b      	ldrh	r3, [r1, #0]
 80019f6:	8503      	strh	r3, [r0, #40]	; 0x28
 80019f8:	4b0d      	ldr	r3, [pc, #52]	; (8001a30 <TIM_TimeBaseInit+0x98>)
 80019fa:	4298      	cmp	r0, r3
 80019fc:	d013      	beq.n	8001a26 <TIM_TimeBaseInit+0x8e>
 80019fe:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a02:	4298      	cmp	r0, r3
 8001a04:	d00f      	beq.n	8001a26 <TIM_TimeBaseInit+0x8e>
 8001a06:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001a0a:	4298      	cmp	r0, r3
 8001a0c:	d00b      	beq.n	8001a26 <TIM_TimeBaseInit+0x8e>
 8001a0e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a12:	4298      	cmp	r0, r3
 8001a14:	d007      	beq.n	8001a26 <TIM_TimeBaseInit+0x8e>
 8001a16:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a1a:	4298      	cmp	r0, r3
 8001a1c:	d003      	beq.n	8001a26 <TIM_TimeBaseInit+0x8e>
 8001a1e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a22:	4298      	cmp	r0, r3
 8001a24:	d101      	bne.n	8001a2a <TIM_TimeBaseInit+0x92>
 8001a26:	894b      	ldrh	r3, [r1, #10]
 8001a28:	8603      	strh	r3, [r0, #48]	; 0x30
 8001a2a:	2301      	movs	r3, #1
 8001a2c:	6143      	str	r3, [r0, #20]
 8001a2e:	4770      	bx	lr
 8001a30:	40012c00 	.word	0x40012c00
 8001a34:	40001000 	.word	0x40001000

08001a38 <TIM_Cmd>:
 8001a38:	bf00      	nop
 8001a3a:	bf00      	nop
 8001a3c:	8803      	ldrh	r3, [r0, #0]
 8001a3e:	b119      	cbz	r1, 8001a48 <TIM_Cmd+0x10>
 8001a40:	b29b      	uxth	r3, r3
 8001a42:	f043 0301 	orr.w	r3, r3, #1
 8001a46:	e003      	b.n	8001a50 <TIM_Cmd+0x18>
 8001a48:	f023 0301 	bic.w	r3, r3, #1
 8001a4c:	041b      	lsls	r3, r3, #16
 8001a4e:	0c1b      	lsrs	r3, r3, #16
 8001a50:	8003      	strh	r3, [r0, #0]
 8001a52:	4770      	bx	lr

08001a54 <TIM_ClearITPendingBit>:
 8001a54:	bf00      	nop
 8001a56:	43c9      	mvns	r1, r1
 8001a58:	b289      	uxth	r1, r1
 8001a5a:	6101      	str	r1, [r0, #16]
 8001a5c:	4770      	bx	lr
	...

08001a60 <USART_Init>:
 8001a60:	b530      	push	{r4, r5, lr}
 8001a62:	4604      	mov	r4, r0
 8001a64:	b099      	sub	sp, #100	; 0x64
 8001a66:	460d      	mov	r5, r1
 8001a68:	bf00      	nop
 8001a6a:	bf00      	nop
 8001a6c:	bf00      	nop
 8001a6e:	bf00      	nop
 8001a70:	bf00      	nop
 8001a72:	bf00      	nop
 8001a74:	bf00      	nop
 8001a76:	6803      	ldr	r3, [r0, #0]
 8001a78:	f023 0301 	bic.w	r3, r3, #1
 8001a7c:	6003      	str	r3, [r0, #0]
 8001a7e:	6843      	ldr	r3, [r0, #4]
 8001a80:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001a84:	688b      	ldr	r3, [r1, #8]
 8001a86:	68c9      	ldr	r1, [r1, #12]
 8001a88:	4313      	orrs	r3, r2
 8001a8a:	6043      	str	r3, [r0, #4]
 8001a8c:	686a      	ldr	r2, [r5, #4]
 8001a8e:	6803      	ldr	r3, [r0, #0]
 8001a90:	4311      	orrs	r1, r2
 8001a92:	692a      	ldr	r2, [r5, #16]
 8001a94:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001a98:	430a      	orrs	r2, r1
 8001a9a:	f023 030c 	bic.w	r3, r3, #12
 8001a9e:	4313      	orrs	r3, r2
 8001aa0:	6003      	str	r3, [r0, #0]
 8001aa2:	6883      	ldr	r3, [r0, #8]
 8001aa4:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001aa8:	696b      	ldr	r3, [r5, #20]
 8001aaa:	4313      	orrs	r3, r2
 8001aac:	6083      	str	r3, [r0, #8]
 8001aae:	a801      	add	r0, sp, #4
 8001ab0:	f7ff fdd2 	bl	8001658 <RCC_GetClocksFreq>
 8001ab4:	4b17      	ldr	r3, [pc, #92]	; (8001b14 <USART_Init+0xb4>)
 8001ab6:	429c      	cmp	r4, r3
 8001ab8:	d101      	bne.n	8001abe <USART_Init+0x5e>
 8001aba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001abc:	e00e      	b.n	8001adc <USART_Init+0x7c>
 8001abe:	4b16      	ldr	r3, [pc, #88]	; (8001b18 <USART_Init+0xb8>)
 8001ac0:	429c      	cmp	r4, r3
 8001ac2:	d101      	bne.n	8001ac8 <USART_Init+0x68>
 8001ac4:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001ac6:	e009      	b.n	8001adc <USART_Init+0x7c>
 8001ac8:	4b14      	ldr	r3, [pc, #80]	; (8001b1c <USART_Init+0xbc>)
 8001aca:	429c      	cmp	r4, r3
 8001acc:	d101      	bne.n	8001ad2 <USART_Init+0x72>
 8001ace:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001ad0:	e004      	b.n	8001adc <USART_Init+0x7c>
 8001ad2:	4b13      	ldr	r3, [pc, #76]	; (8001b20 <USART_Init+0xc0>)
 8001ad4:	429c      	cmp	r4, r3
 8001ad6:	bf0c      	ite	eq
 8001ad8:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001ada:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001adc:	6822      	ldr	r2, [r4, #0]
 8001ade:	6829      	ldr	r1, [r5, #0]
 8001ae0:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001ae4:	bf18      	it	ne
 8001ae6:	005b      	lslne	r3, r3, #1
 8001ae8:	fbb3 f2f1 	udiv	r2, r3, r1
 8001aec:	fb01 3312 	mls	r3, r1, r2, r3
 8001af0:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001af4:	6823      	ldr	r3, [r4, #0]
 8001af6:	bf28      	it	cs
 8001af8:	3201      	addcs	r2, #1
 8001afa:	041b      	lsls	r3, r3, #16
 8001afc:	bf41      	itttt	mi
 8001afe:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001b02:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001b06:	4013      	andmi	r3, r2
 8001b08:	ea41 0203 	orrmi.w	r2, r1, r3
 8001b0c:	b292      	uxth	r2, r2
 8001b0e:	81a2      	strh	r2, [r4, #12]
 8001b10:	b019      	add	sp, #100	; 0x64
 8001b12:	bd30      	pop	{r4, r5, pc}
 8001b14:	40013800 	.word	0x40013800
 8001b18:	40004400 	.word	0x40004400
 8001b1c:	40004800 	.word	0x40004800
 8001b20:	40004c00 	.word	0x40004c00

08001b24 <USART_Cmd>:
 8001b24:	bf00      	nop
 8001b26:	bf00      	nop
 8001b28:	6803      	ldr	r3, [r0, #0]
 8001b2a:	b111      	cbz	r1, 8001b32 <USART_Cmd+0xe>
 8001b2c:	f043 0301 	orr.w	r3, r3, #1
 8001b30:	e001      	b.n	8001b36 <USART_Cmd+0x12>
 8001b32:	f023 0301 	bic.w	r3, r3, #1
 8001b36:	6003      	str	r3, [r0, #0]
 8001b38:	4770      	bx	lr

08001b3a <USART_ReceiveData>:
 8001b3a:	bf00      	nop
 8001b3c:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001b3e:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001b42:	4770      	bx	lr

08001b44 <USART_ITConfig>:
 8001b44:	b510      	push	{r4, lr}
 8001b46:	bf00      	nop
 8001b48:	bf00      	nop
 8001b4a:	bf00      	nop
 8001b4c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001b50:	2301      	movs	r3, #1
 8001b52:	b2c9      	uxtb	r1, r1
 8001b54:	2c02      	cmp	r4, #2
 8001b56:	fa03 f301 	lsl.w	r3, r3, r1
 8001b5a:	d101      	bne.n	8001b60 <USART_ITConfig+0x1c>
 8001b5c:	3004      	adds	r0, #4
 8001b5e:	e002      	b.n	8001b66 <USART_ITConfig+0x22>
 8001b60:	2c03      	cmp	r4, #3
 8001b62:	bf08      	it	eq
 8001b64:	3008      	addeq	r0, #8
 8001b66:	b112      	cbz	r2, 8001b6e <USART_ITConfig+0x2a>
 8001b68:	6802      	ldr	r2, [r0, #0]
 8001b6a:	4313      	orrs	r3, r2
 8001b6c:	e002      	b.n	8001b74 <USART_ITConfig+0x30>
 8001b6e:	6802      	ldr	r2, [r0, #0]
 8001b70:	ea22 0303 	bic.w	r3, r2, r3
 8001b74:	6003      	str	r3, [r0, #0]
 8001b76:	bd10      	pop	{r4, pc}

08001b78 <USART_GetITStatus>:
 8001b78:	b510      	push	{r4, lr}
 8001b7a:	bf00      	nop
 8001b7c:	bf00      	nop
 8001b7e:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001b82:	b2cc      	uxtb	r4, r1
 8001b84:	2301      	movs	r3, #1
 8001b86:	2a01      	cmp	r2, #1
 8001b88:	fa03 f304 	lsl.w	r3, r3, r4
 8001b8c:	d101      	bne.n	8001b92 <USART_GetITStatus+0x1a>
 8001b8e:	6802      	ldr	r2, [r0, #0]
 8001b90:	e003      	b.n	8001b9a <USART_GetITStatus+0x22>
 8001b92:	2a02      	cmp	r2, #2
 8001b94:	bf0c      	ite	eq
 8001b96:	6842      	ldreq	r2, [r0, #4]
 8001b98:	6882      	ldrne	r2, [r0, #8]
 8001b9a:	4013      	ands	r3, r2
 8001b9c:	69c2      	ldr	r2, [r0, #28]
 8001b9e:	b13b      	cbz	r3, 8001bb0 <USART_GetITStatus+0x38>
 8001ba0:	0c09      	lsrs	r1, r1, #16
 8001ba2:	2301      	movs	r3, #1
 8001ba4:	408b      	lsls	r3, r1
 8001ba6:	4213      	tst	r3, r2
 8001ba8:	bf14      	ite	ne
 8001baa:	2001      	movne	r0, #1
 8001bac:	2000      	moveq	r0, #0
 8001bae:	bd10      	pop	{r4, pc}
 8001bb0:	4618      	mov	r0, r3
 8001bb2:	bd10      	pop	{r4, pc}

08001bb4 <USART_ClearITPendingBit>:
 8001bb4:	bf00      	nop
 8001bb6:	bf00      	nop
 8001bb8:	2301      	movs	r3, #1
 8001bba:	0c09      	lsrs	r1, r1, #16
 8001bbc:	408b      	lsls	r3, r1
 8001bbe:	6203      	str	r3, [r0, #32]
 8001bc0:	4770      	bx	lr
	...

08001bc4 <SystemInit>:
 8001bc4:	4a39      	ldr	r2, [pc, #228]	; (8001cac <SystemInit+0xe8>)
 8001bc6:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001bca:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001bce:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001bd2:	4b37      	ldr	r3, [pc, #220]	; (8001cb0 <SystemInit+0xec>)
 8001bd4:	681a      	ldr	r2, [r3, #0]
 8001bd6:	f042 0201 	orr.w	r2, r2, #1
 8001bda:	601a      	str	r2, [r3, #0]
 8001bdc:	6859      	ldr	r1, [r3, #4]
 8001bde:	4a35      	ldr	r2, [pc, #212]	; (8001cb4 <SystemInit+0xf0>)
 8001be0:	400a      	ands	r2, r1
 8001be2:	605a      	str	r2, [r3, #4]
 8001be4:	681a      	ldr	r2, [r3, #0]
 8001be6:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001bea:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001bee:	601a      	str	r2, [r3, #0]
 8001bf0:	681a      	ldr	r2, [r3, #0]
 8001bf2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001bf6:	601a      	str	r2, [r3, #0]
 8001bf8:	685a      	ldr	r2, [r3, #4]
 8001bfa:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001bfe:	605a      	str	r2, [r3, #4]
 8001c00:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001c02:	f022 020f 	bic.w	r2, r2, #15
 8001c06:	62da      	str	r2, [r3, #44]	; 0x2c
 8001c08:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c0a:	4a2b      	ldr	r2, [pc, #172]	; (8001cb8 <SystemInit+0xf4>)
 8001c0c:	b082      	sub	sp, #8
 8001c0e:	400a      	ands	r2, r1
 8001c10:	631a      	str	r2, [r3, #48]	; 0x30
 8001c12:	2200      	movs	r2, #0
 8001c14:	609a      	str	r2, [r3, #8]
 8001c16:	9200      	str	r2, [sp, #0]
 8001c18:	9201      	str	r2, [sp, #4]
 8001c1a:	681a      	ldr	r2, [r3, #0]
 8001c1c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001c20:	601a      	str	r2, [r3, #0]
 8001c22:	681a      	ldr	r2, [r3, #0]
 8001c24:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001c28:	9201      	str	r2, [sp, #4]
 8001c2a:	9a00      	ldr	r2, [sp, #0]
 8001c2c:	3201      	adds	r2, #1
 8001c2e:	9200      	str	r2, [sp, #0]
 8001c30:	9a01      	ldr	r2, [sp, #4]
 8001c32:	b91a      	cbnz	r2, 8001c3c <SystemInit+0x78>
 8001c34:	9a00      	ldr	r2, [sp, #0]
 8001c36:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001c3a:	d1f2      	bne.n	8001c22 <SystemInit+0x5e>
 8001c3c:	681a      	ldr	r2, [r3, #0]
 8001c3e:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8001c42:	bf18      	it	ne
 8001c44:	2201      	movne	r2, #1
 8001c46:	9201      	str	r2, [sp, #4]
 8001c48:	9a01      	ldr	r2, [sp, #4]
 8001c4a:	2a01      	cmp	r2, #1
 8001c4c:	d005      	beq.n	8001c5a <SystemInit+0x96>
 8001c4e:	4b17      	ldr	r3, [pc, #92]	; (8001cac <SystemInit+0xe8>)
 8001c50:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001c54:	609a      	str	r2, [r3, #8]
 8001c56:	b002      	add	sp, #8
 8001c58:	4770      	bx	lr
 8001c5a:	4a18      	ldr	r2, [pc, #96]	; (8001cbc <SystemInit+0xf8>)
 8001c5c:	2112      	movs	r1, #18
 8001c5e:	6011      	str	r1, [r2, #0]
 8001c60:	685a      	ldr	r2, [r3, #4]
 8001c62:	605a      	str	r2, [r3, #4]
 8001c64:	685a      	ldr	r2, [r3, #4]
 8001c66:	605a      	str	r2, [r3, #4]
 8001c68:	685a      	ldr	r2, [r3, #4]
 8001c6a:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001c6e:	605a      	str	r2, [r3, #4]
 8001c70:	685a      	ldr	r2, [r3, #4]
 8001c72:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001c76:	605a      	str	r2, [r3, #4]
 8001c78:	685a      	ldr	r2, [r3, #4]
 8001c7a:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001c7e:	605a      	str	r2, [r3, #4]
 8001c80:	681a      	ldr	r2, [r3, #0]
 8001c82:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001c86:	601a      	str	r2, [r3, #0]
 8001c88:	6819      	ldr	r1, [r3, #0]
 8001c8a:	4a09      	ldr	r2, [pc, #36]	; (8001cb0 <SystemInit+0xec>)
 8001c8c:	0189      	lsls	r1, r1, #6
 8001c8e:	d5fb      	bpl.n	8001c88 <SystemInit+0xc4>
 8001c90:	6851      	ldr	r1, [r2, #4]
 8001c92:	f021 0103 	bic.w	r1, r1, #3
 8001c96:	6051      	str	r1, [r2, #4]
 8001c98:	6851      	ldr	r1, [r2, #4]
 8001c9a:	f041 0102 	orr.w	r1, r1, #2
 8001c9e:	6051      	str	r1, [r2, #4]
 8001ca0:	685a      	ldr	r2, [r3, #4]
 8001ca2:	f002 020c 	and.w	r2, r2, #12
 8001ca6:	2a08      	cmp	r2, #8
 8001ca8:	d1fa      	bne.n	8001ca0 <SystemInit+0xdc>
 8001caa:	e7d0      	b.n	8001c4e <SystemInit+0x8a>
 8001cac:	e000ed00 	.word	0xe000ed00
 8001cb0:	40021000 	.word	0x40021000
 8001cb4:	f87fc00c 	.word	0xf87fc00c
 8001cb8:	ff00fccc 	.word	0xff00fccc
 8001cbc:	40022000 	.word	0x40022000

08001cc0 <sys_tick_init>:
 8001cc0:	4b06      	ldr	r3, [pc, #24]	; (8001cdc <sys_tick_init+0x1c>)
 8001cc2:	f643 2298 	movw	r2, #15000	; 0x3a98
 8001cc6:	605a      	str	r2, [r3, #4]
 8001cc8:	4a05      	ldr	r2, [pc, #20]	; (8001ce0 <sys_tick_init+0x20>)
 8001cca:	21f0      	movs	r1, #240	; 0xf0
 8001ccc:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001cd0:	2200      	movs	r2, #0
 8001cd2:	609a      	str	r2, [r3, #8]
 8001cd4:	2207      	movs	r2, #7
 8001cd6:	601a      	str	r2, [r3, #0]
 8001cd8:	4770      	bx	lr
 8001cda:	bf00      	nop
 8001cdc:	e000e010 	.word	0xe000e010
 8001ce0:	e000ed00 	.word	0xe000ed00

08001ce4 <sleep>:
 8001ce4:	bf30      	wfi
 8001ce6:	4770      	bx	lr

08001ce8 <core_yield>:
 8001ce8:	bf00      	nop
 8001cea:	4770      	bx	lr

08001cec <sytem_clock_init>:
 8001cec:	f7ff bf6a 	b.w	8001bc4 <SystemInit>

08001cf0 <NVIC_Init>:
 8001cf0:	b510      	push	{r4, lr}
 8001cf2:	bf00      	nop
 8001cf4:	bf00      	nop
 8001cf6:	bf00      	nop
 8001cf8:	78c2      	ldrb	r2, [r0, #3]
 8001cfa:	7803      	ldrb	r3, [r0, #0]
 8001cfc:	b312      	cbz	r2, 8001d44 <NVIC_Init+0x54>
 8001cfe:	4a17      	ldr	r2, [pc, #92]	; (8001d5c <NVIC_Init+0x6c>)
 8001d00:	68d1      	ldr	r1, [r2, #12]
 8001d02:	7842      	ldrb	r2, [r0, #1]
 8001d04:	43c9      	mvns	r1, r1
 8001d06:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001d0a:	f1c1 0404 	rsb	r4, r1, #4
 8001d0e:	b2e4      	uxtb	r4, r4
 8001d10:	40a2      	lsls	r2, r4
 8001d12:	b2d4      	uxtb	r4, r2
 8001d14:	220f      	movs	r2, #15
 8001d16:	410a      	asrs	r2, r1
 8001d18:	7881      	ldrb	r1, [r0, #2]
 8001d1a:	400a      	ands	r2, r1
 8001d1c:	4322      	orrs	r2, r4
 8001d1e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8001d22:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8001d26:	0112      	lsls	r2, r2, #4
 8001d28:	b2d2      	uxtb	r2, r2
 8001d2a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8001d2e:	7803      	ldrb	r3, [r0, #0]
 8001d30:	2201      	movs	r2, #1
 8001d32:	0959      	lsrs	r1, r3, #5
 8001d34:	f003 031f 	and.w	r3, r3, #31
 8001d38:	fa02 f303 	lsl.w	r3, r2, r3
 8001d3c:	4a08      	ldr	r2, [pc, #32]	; (8001d60 <NVIC_Init+0x70>)
 8001d3e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8001d42:	bd10      	pop	{r4, pc}
 8001d44:	095a      	lsrs	r2, r3, #5
 8001d46:	2101      	movs	r1, #1
 8001d48:	f003 031f 	and.w	r3, r3, #31
 8001d4c:	4099      	lsls	r1, r3
 8001d4e:	f102 0320 	add.w	r3, r2, #32
 8001d52:	4a03      	ldr	r2, [pc, #12]	; (8001d60 <NVIC_Init+0x70>)
 8001d54:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001d58:	bd10      	pop	{r4, pc}
 8001d5a:	bf00      	nop
 8001d5c:	e000ed00 	.word	0xe000ed00
 8001d60:	e000e100 	.word	0xe000e100

08001d64 <GPIO_Init>:
 8001d64:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d66:	bf00      	nop
 8001d68:	bf00      	nop
 8001d6a:	bf00      	nop
 8001d6c:	bf00      	nop
 8001d6e:	2300      	movs	r3, #0
 8001d70:	680e      	ldr	r6, [r1, #0]
 8001d72:	461c      	mov	r4, r3
 8001d74:	2501      	movs	r5, #1
 8001d76:	40a5      	lsls	r5, r4
 8001d78:	ea05 0e06 	and.w	lr, r5, r6
 8001d7c:	45ae      	cmp	lr, r5
 8001d7e:	d12d      	bne.n	8001ddc <GPIO_Init+0x78>
 8001d80:	790f      	ldrb	r7, [r1, #4]
 8001d82:	1e7a      	subs	r2, r7, #1
 8001d84:	2a01      	cmp	r2, #1
 8001d86:	d817      	bhi.n	8001db8 <GPIO_Init+0x54>
 8001d88:	bf00      	nop
 8001d8a:	2203      	movs	r2, #3
 8001d8c:	6885      	ldr	r5, [r0, #8]
 8001d8e:	409a      	lsls	r2, r3
 8001d90:	ea25 0202 	bic.w	r2, r5, r2
 8001d94:	6082      	str	r2, [r0, #8]
 8001d96:	794d      	ldrb	r5, [r1, #5]
 8001d98:	6882      	ldr	r2, [r0, #8]
 8001d9a:	409d      	lsls	r5, r3
 8001d9c:	4315      	orrs	r5, r2
 8001d9e:	6085      	str	r5, [r0, #8]
 8001da0:	bf00      	nop
 8001da2:	8882      	ldrh	r2, [r0, #4]
 8001da4:	b292      	uxth	r2, r2
 8001da6:	ea22 020e 	bic.w	r2, r2, lr
 8001daa:	8082      	strh	r2, [r0, #4]
 8001dac:	798a      	ldrb	r2, [r1, #6]
 8001dae:	8885      	ldrh	r5, [r0, #4]
 8001db0:	40a2      	lsls	r2, r4
 8001db2:	432a      	orrs	r2, r5
 8001db4:	b292      	uxth	r2, r2
 8001db6:	8082      	strh	r2, [r0, #4]
 8001db8:	2203      	movs	r2, #3
 8001dba:	6805      	ldr	r5, [r0, #0]
 8001dbc:	409a      	lsls	r2, r3
 8001dbe:	43d2      	mvns	r2, r2
 8001dc0:	4015      	ands	r5, r2
 8001dc2:	6005      	str	r5, [r0, #0]
 8001dc4:	6805      	ldr	r5, [r0, #0]
 8001dc6:	409f      	lsls	r7, r3
 8001dc8:	432f      	orrs	r7, r5
 8001dca:	6007      	str	r7, [r0, #0]
 8001dcc:	68c7      	ldr	r7, [r0, #12]
 8001dce:	4017      	ands	r7, r2
 8001dd0:	79ca      	ldrb	r2, [r1, #7]
 8001dd2:	fa02 f503 	lsl.w	r5, r2, r3
 8001dd6:	ea47 0205 	orr.w	r2, r7, r5
 8001dda:	60c2      	str	r2, [r0, #12]
 8001ddc:	3401      	adds	r4, #1
 8001dde:	2c10      	cmp	r4, #16
 8001de0:	f103 0302 	add.w	r3, r3, #2
 8001de4:	d1c6      	bne.n	8001d74 <GPIO_Init+0x10>
 8001de6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001de8 <GPIO_SetBits>:
 8001de8:	bf00      	nop
 8001dea:	bf00      	nop
 8001dec:	6181      	str	r1, [r0, #24]
 8001dee:	4770      	bx	lr

08001df0 <GPIO_PinAFConfig>:
 8001df0:	b510      	push	{r4, lr}
 8001df2:	bf00      	nop
 8001df4:	bf00      	nop
 8001df6:	bf00      	nop
 8001df8:	f001 0307 	and.w	r3, r1, #7
 8001dfc:	08c9      	lsrs	r1, r1, #3
 8001dfe:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8001e02:	009b      	lsls	r3, r3, #2
 8001e04:	6a04      	ldr	r4, [r0, #32]
 8001e06:	210f      	movs	r1, #15
 8001e08:	4099      	lsls	r1, r3
 8001e0a:	ea24 0101 	bic.w	r1, r4, r1
 8001e0e:	6201      	str	r1, [r0, #32]
 8001e10:	6a01      	ldr	r1, [r0, #32]
 8001e12:	409a      	lsls	r2, r3
 8001e14:	430a      	orrs	r2, r1
 8001e16:	6202      	str	r2, [r0, #32]
 8001e18:	bd10      	pop	{r4, pc}

08001e1a <Default_Handler>:
 8001e1a:	4668      	mov	r0, sp
 8001e1c:	f020 0107 	bic.w	r1, r0, #7
 8001e20:	468d      	mov	sp, r1
 8001e22:	b501      	push	{r0, lr}
 8001e24:	bf00      	nop
 8001e26:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8001e2a:	4685      	mov	sp, r0
 8001e2c:	4770      	bx	lr

08001e2e <HardFault_Handler>:
 8001e2e:	bf00      	nop
 8001e30:	e7fd      	b.n	8001e2e <HardFault_Handler>
	...

08001e34 <_reset_init>:
 8001e34:	490e      	ldr	r1, [pc, #56]	; (8001e70 <_reset_init+0x3c>)
 8001e36:	4b0f      	ldr	r3, [pc, #60]	; (8001e74 <_reset_init+0x40>)
 8001e38:	1a5b      	subs	r3, r3, r1
 8001e3a:	109b      	asrs	r3, r3, #2
 8001e3c:	2200      	movs	r2, #0
 8001e3e:	429a      	cmp	r2, r3
 8001e40:	d006      	beq.n	8001e50 <_reset_init+0x1c>
 8001e42:	480d      	ldr	r0, [pc, #52]	; (8001e78 <_reset_init+0x44>)
 8001e44:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8001e48:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8001e4c:	3201      	adds	r2, #1
 8001e4e:	e7f6      	b.n	8001e3e <_reset_init+0xa>
 8001e50:	4a0a      	ldr	r2, [pc, #40]	; (8001e7c <_reset_init+0x48>)
 8001e52:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001e56:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001e5a:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001e5e:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8001e62:	6853      	ldr	r3, [r2, #4]
 8001e64:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8001e68:	6053      	str	r3, [r2, #4]
 8001e6a:	f7ff bbef 	b.w	800164c <main>
 8001e6e:	bf00      	nop
 8001e70:	20000000 	.word	0x20000000
 8001e74:	20000030 	.word	0x20000030
 8001e78:	08002110 	.word	0x08002110
 8001e7c:	e000ed00 	.word	0xe000ed00

08001e80 <thread_ending>:
 8001e80:	b672      	cpsid	i
 8001e82:	4b05      	ldr	r3, [pc, #20]	; (8001e98 <thread_ending+0x18>)
 8001e84:	681a      	ldr	r2, [r3, #0]
 8001e86:	4b05      	ldr	r3, [pc, #20]	; (8001e9c <thread_ending+0x1c>)
 8001e88:	210c      	movs	r1, #12
 8001e8a:	fb01 3302 	mla	r3, r1, r2, r3
 8001e8e:	2200      	movs	r2, #0
 8001e90:	605a      	str	r2, [r3, #4]
 8001e92:	b662      	cpsie	i
 8001e94:	bf00      	nop
 8001e96:	e7fd      	b.n	8001e94 <thread_ending+0x14>
 8001e98:	200007a8 	.word	0x200007a8
 8001e9c:	20000760 	.word	0x20000760

08001ea0 <null_thread>:
 8001ea0:	b508      	push	{r3, lr}
 8001ea2:	f7ff ff1f 	bl	8001ce4 <sleep>
 8001ea6:	e7fc      	b.n	8001ea2 <null_thread+0x2>

08001ea8 <scheduler>:
 8001ea8:	b570      	push	{r4, r5, r6, lr}
 8001eaa:	2200      	movs	r2, #0
 8001eac:	4611      	mov	r1, r2
 8001eae:	4b15      	ldr	r3, [pc, #84]	; (8001f04 <scheduler+0x5c>)
 8001eb0:	200c      	movs	r0, #12
 8001eb2:	fb00 f401 	mul.w	r4, r0, r1
 8001eb6:	191e      	adds	r6, r3, r4
 8001eb8:	6875      	ldr	r5, [r6, #4]
 8001eba:	f015 0f02 	tst.w	r5, #2
 8001ebe:	461d      	mov	r5, r3
 8001ec0:	d10a      	bne.n	8001ed8 <scheduler+0x30>
 8001ec2:	6876      	ldr	r6, [r6, #4]
 8001ec4:	07f6      	lsls	r6, r6, #31
 8001ec6:	d507      	bpl.n	8001ed8 <scheduler+0x30>
 8001ec8:	4350      	muls	r0, r2
 8001eca:	5b1c      	ldrh	r4, [r3, r4]
 8001ecc:	5a18      	ldrh	r0, [r3, r0]
 8001ece:	b2a4      	uxth	r4, r4
 8001ed0:	b280      	uxth	r0, r0
 8001ed2:	4284      	cmp	r4, r0
 8001ed4:	bf38      	it	cc
 8001ed6:	460a      	movcc	r2, r1
 8001ed8:	200c      	movs	r0, #12
 8001eda:	4348      	muls	r0, r1
 8001edc:	5a1c      	ldrh	r4, [r3, r0]
 8001ede:	b2a4      	uxth	r4, r4
 8001ee0:	b11c      	cbz	r4, 8001eea <scheduler+0x42>
 8001ee2:	5a1c      	ldrh	r4, [r3, r0]
 8001ee4:	3c01      	subs	r4, #1
 8001ee6:	b2a4      	uxth	r4, r4
 8001ee8:	521c      	strh	r4, [r3, r0]
 8001eea:	3101      	adds	r1, #1
 8001eec:	2906      	cmp	r1, #6
 8001eee:	d1de      	bne.n	8001eae <scheduler+0x6>
 8001ef0:	230c      	movs	r3, #12
 8001ef2:	4353      	muls	r3, r2
 8001ef4:	18e9      	adds	r1, r5, r3
 8001ef6:	8849      	ldrh	r1, [r1, #2]
 8001ef8:	b289      	uxth	r1, r1
 8001efa:	52e9      	strh	r1, [r5, r3]
 8001efc:	4b02      	ldr	r3, [pc, #8]	; (8001f08 <scheduler+0x60>)
 8001efe:	601a      	str	r2, [r3, #0]
 8001f00:	bd70      	pop	{r4, r5, r6, pc}
 8001f02:	bf00      	nop
 8001f04:	20000760 	.word	0x20000760
 8001f08:	200007a8 	.word	0x200007a8

08001f0c <SysTick_Handler>:
 8001f0c:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001f10:	f3ef 8308 	mrs	r3, MSP
 8001f14:	4c0d      	ldr	r4, [pc, #52]	; (8001f4c <SysTick_Handler+0x40>)
 8001f16:	4d0e      	ldr	r5, [pc, #56]	; (8001f50 <SysTick_Handler+0x44>)
 8001f18:	6822      	ldr	r2, [r4, #0]
 8001f1a:	3201      	adds	r2, #1
 8001f1c:	bf1d      	ittte	ne
 8001f1e:	6822      	ldrne	r2, [r4, #0]
 8001f20:	210c      	movne	r1, #12
 8001f22:	fb01 5202 	mlane	r2, r1, r2, r5
 8001f26:	2300      	moveq	r3, #0
 8001f28:	bf14      	ite	ne
 8001f2a:	6093      	strne	r3, [r2, #8]
 8001f2c:	6023      	streq	r3, [r4, #0]
 8001f2e:	f7ff ffbb 	bl	8001ea8 <scheduler>
 8001f32:	6822      	ldr	r2, [r4, #0]
 8001f34:	230c      	movs	r3, #12
 8001f36:	fb03 5302 	mla	r3, r3, r2, r5
 8001f3a:	689a      	ldr	r2, [r3, #8]
 8001f3c:	f06f 0306 	mvn.w	r3, #6
 8001f40:	469e      	mov	lr, r3
 8001f42:	f382 8808 	msr	MSP, r2
 8001f46:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001f4a:	4770      	bx	lr
 8001f4c:	200007a8 	.word	0x200007a8
 8001f50:	20000760 	.word	0x20000760

08001f54 <kernel_start>:
 8001f54:	b508      	push	{r3, lr}
 8001f56:	f7ff feb3 	bl	8001cc0 <sys_tick_init>
 8001f5a:	bf00      	nop
 8001f5c:	e7fd      	b.n	8001f5a <kernel_start+0x6>
	...

08001f60 <create_thread>:
 8001f60:	f022 0203 	bic.w	r2, r2, #3
 8001f64:	3a40      	subs	r2, #64	; 0x40
 8001f66:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001f6a:	eb01 0e02 	add.w	lr, r1, r2
 8001f6e:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8001f72:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8001f76:	323c      	adds	r2, #60	; 0x3c
 8001f78:	440e      	add	r6, r1
 8001f7a:	440f      	add	r7, r1
 8001f7c:	4411      	add	r1, r2
 8001f7e:	2200      	movs	r2, #0
 8001f80:	b672      	cpsid	i
 8001f82:	f8df c054 	ldr.w	ip, [pc, #84]	; 8001fd8 <create_thread+0x78>
 8001f86:	250c      	movs	r5, #12
 8001f88:	4355      	muls	r5, r2
 8001f8a:	eb0c 0405 	add.w	r4, ip, r5
 8001f8e:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8001f92:	f018 0f01 	tst.w	r8, #1
 8001f96:	d114      	bne.n	8001fc2 <create_thread+0x62>
 8001f98:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8001fdc <create_thread+0x7c>
 8001f9c:	f8c4 e008 	str.w	lr, [r4, #8]
 8001fa0:	2b05      	cmp	r3, #5
 8001fa2:	f8c6 8000 	str.w	r8, [r6]
 8001fa6:	bf98      	it	ls
 8001fa8:	2306      	movls	r3, #6
 8001faa:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8001fae:	6038      	str	r0, [r7, #0]
 8001fb0:	f8c1 8000 	str.w	r8, [r1]
 8001fb4:	8063      	strh	r3, [r4, #2]
 8001fb6:	f82c 3005 	strh.w	r3, [ip, r5]
 8001fba:	2501      	movs	r5, #1
 8001fbc:	6065      	str	r5, [r4, #4]
 8001fbe:	4614      	mov	r4, r2
 8001fc0:	e000      	b.n	8001fc4 <create_thread+0x64>
 8001fc2:	2406      	movs	r4, #6
 8001fc4:	b662      	cpsie	i
 8001fc6:	3201      	adds	r2, #1
 8001fc8:	2a06      	cmp	r2, #6
 8001fca:	d001      	beq.n	8001fd0 <create_thread+0x70>
 8001fcc:	2c06      	cmp	r4, #6
 8001fce:	d0d7      	beq.n	8001f80 <create_thread+0x20>
 8001fd0:	4620      	mov	r0, r4
 8001fd2:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001fd6:	bf00      	nop
 8001fd8:	20000760 	.word	0x20000760
 8001fdc:	08001e81 	.word	0x08001e81

08001fe0 <kernel_init>:
 8001fe0:	b510      	push	{r4, lr}
 8001fe2:	2300      	movs	r3, #0
 8001fe4:	490b      	ldr	r1, [pc, #44]	; (8002014 <kernel_init+0x34>)
 8001fe6:	220c      	movs	r2, #12
 8001fe8:	435a      	muls	r2, r3
 8001fea:	188c      	adds	r4, r1, r2
 8001fec:	2000      	movs	r0, #0
 8001fee:	6060      	str	r0, [r4, #4]
 8001ff0:	3301      	adds	r3, #1
 8001ff2:	2006      	movs	r0, #6
 8001ff4:	4283      	cmp	r3, r0
 8001ff6:	8060      	strh	r0, [r4, #2]
 8001ff8:	5288      	strh	r0, [r1, r2]
 8001ffa:	d1f3      	bne.n	8001fe4 <kernel_init+0x4>
 8001ffc:	4b06      	ldr	r3, [pc, #24]	; (8002018 <kernel_init+0x38>)
 8001ffe:	4807      	ldr	r0, [pc, #28]	; (800201c <kernel_init+0x3c>)
 8002000:	4907      	ldr	r1, [pc, #28]	; (8002020 <kernel_init+0x40>)
 8002002:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002006:	601a      	str	r2, [r3, #0]
 8002008:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800200c:	2280      	movs	r2, #128	; 0x80
 800200e:	23ff      	movs	r3, #255	; 0xff
 8002010:	f7ff bfa6 	b.w	8001f60 <create_thread>
 8002014:	20000760 	.word	0x20000760
 8002018:	200007a8 	.word	0x200007a8
 800201c:	08001ea1 	.word	0x08001ea1
 8002020:	200007ac 	.word	0x200007ac

08002024 <messages_init>:
 8002024:	4a0a      	ldr	r2, [pc, #40]	; (8002050 <messages_init+0x2c>)
 8002026:	2300      	movs	r3, #0
 8002028:	b510      	push	{r4, lr}
 800202a:	6013      	str	r3, [r2, #0]
 800202c:	6053      	str	r3, [r2, #4]
 800202e:	6093      	str	r3, [r2, #8]
 8002030:	60d3      	str	r3, [r2, #12]
 8002032:	6113      	str	r3, [r2, #16]
 8002034:	6153      	str	r3, [r2, #20]
 8002036:	4c07      	ldr	r4, [pc, #28]	; (8002054 <messages_init+0x30>)
 8002038:	0118      	lsls	r0, r3, #4
 800203a:	1821      	adds	r1, r4, r0
 800203c:	3301      	adds	r3, #1
 800203e:	2200      	movs	r2, #0
 8002040:	2b04      	cmp	r3, #4
 8002042:	604a      	str	r2, [r1, #4]
 8002044:	5022      	str	r2, [r4, r0]
 8002046:	60ca      	str	r2, [r1, #12]
 8002048:	608a      	str	r2, [r1, #8]
 800204a:	d1f4      	bne.n	8002036 <messages_init+0x12>
 800204c:	bd10      	pop	{r4, pc}
 800204e:	bf00      	nop
 8002050:	2000082c 	.word	0x2000082c
 8002054:	20000844 	.word	0x20000844

08002058 <lib_os_init>:
 8002058:	b508      	push	{r3, lr}
 800205a:	f7ff ffc1 	bl	8001fe0 <kernel_init>
 800205e:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8002062:	f7ff bfdf 	b.w	8002024 <messages_init>

08002066 <_text>:
	...

08002068 <_init>:
 8002068:	e1a0c00d 	mov	ip, sp
 800206c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002070:	e24cb004 	sub	fp, ip, #4
 8002074:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002078:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800207c:	e12fff1e 	bx	lr

08002080 <_fini>:
 8002080:	e1a0c00d 	mov	ip, sp
 8002084:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002088:	e24cb004 	sub	fp, ip, #4
 800208c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002090:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002094:	e12fff1e 	bx	lr
 8002098:	736e6573 	.word	0x736e6573
 800209c:	5220726f 	.word	0x5220726f
 80020a0:	61772054 	.word	0x61772054
 80020a4:	6e696e72 	.word	0x6e696e72
 80020a8:	75252067 	.word	0x75252067
 80020ac:	7973000a 	.word	0x7973000a
 80020b0:	6d657473 	.word	0x6d657473
 80020b4:	6d697420 	.word	0x6d697420
 80020b8:	75252065 	.word	0x75252065
 80020bc:	6e65000a 	.word	0x6e65000a
 80020c0:	65646f63 	.word	0x65646f63
 80020c4:	25207372 	.word	0x25207372
 80020c8:	69252069 	.word	0x69252069
 80020cc:	6e61000a 	.word	0x6e61000a
 80020d0:	73656c67 	.word	0x73656c67
 80020d4:	20692520 	.word	0x20692520
 80020d8:	25206925 	.word	0x25206925
 80020dc:	25000a69 	.word	0x25000a69
 80020e0:	6b002069 	.word	0x6b002069
 80020e4:	6d61646f 	.word	0x6d61646f
 80020e8:	6e692061 	.word	0x6e692061
 80020ec:	25207469 	.word	0x25207469
 80020f0:	69252069 	.word	0x69252069
 80020f4:	00203a20 	.word	0x00203a20
 80020f8:	4b4f5b20 	.word	0x4b4f5b20
 80020fc:	20000a5d 	.word	0x20000a5d
 8002100:	4941465b 	.word	0x4941465b
 8002104:	5d44454c 	.word	0x5d44454c
 8002108:	0000000a 	.word	0x0000000a

0800210c <__EH_FRAME_BEGIN__>:
 800210c:	00000000                                ....
