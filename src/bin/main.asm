
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
 80001b4:	f001 f89a 	bl	80012ec <RCC_APB1PeriphClockCmd>
 80001b8:	f44f 738c 	mov.w	r3, #280	; 0x118
 80001bc:	f8ad 3004 	strh.w	r3, [sp, #4]
 80001c0:	4628      	mov	r0, r5
 80001c2:	2331      	movs	r3, #49	; 0x31
 80001c4:	a901      	add	r1, sp, #4
 80001c6:	9302      	str	r3, [sp, #8]
 80001c8:	f8ad 4006 	strh.w	r4, [sp, #6]
 80001cc:	f8ad 400c 	strh.w	r4, [sp, #12]
 80001d0:	f8ad 400e 	strh.w	r4, [sp, #14]
 80001d4:	f001 f898 	bl	8001308 <TIM_TimeBaseInit>
 80001d8:	4628      	mov	r0, r5
 80001da:	2101      	movs	r1, #1
 80001dc:	f001 f8e4 	bl	80013a8 <TIM_Cmd>
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
 80001fe:	f001 fa2d 	bl	800165c <NVIC_Init>
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
 800021e:	4a0e      	ldr	r2, [pc, #56]	; (8000258 <TIM3_IRQHandler+0x3c>)
 8000220:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 8000224:	b129      	cbz	r1, 8000232 <TIM3_IRQHandler+0x16>
 8000226:	f852 1023 	ldr.w	r1, [r2, r3, lsl #2]
 800022a:	3901      	subs	r1, #1
 800022c:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8000230:	e007      	b.n	8000242 <TIM3_IRQHandler+0x26>
 8000232:	490a      	ldr	r1, [pc, #40]	; (800025c <TIM3_IRQHandler+0x40>)
 8000234:	f851 1023 	ldr.w	r1, [r1, r3, lsl #2]
 8000238:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 800023c:	4a08      	ldr	r2, [pc, #32]	; (8000260 <TIM3_IRQHandler+0x44>)
 800023e:	2101      	movs	r1, #1
 8000240:	54d1      	strb	r1, [r2, r3]
 8000242:	3301      	adds	r3, #1
 8000244:	2b08      	cmp	r3, #8
 8000246:	d1ea      	bne.n	800021e <TIM3_IRQHandler+0x2>
 8000248:	4a06      	ldr	r2, [pc, #24]	; (8000264 <TIM3_IRQHandler+0x48>)
 800024a:	4807      	ldr	r0, [pc, #28]	; (8000268 <TIM3_IRQHandler+0x4c>)
 800024c:	6813      	ldr	r3, [r2, #0]
 800024e:	2101      	movs	r1, #1
 8000250:	3301      	adds	r3, #1
 8000252:	6013      	str	r3, [r2, #0]
 8000254:	f001 b8b6 	b.w	80013c4 <TIM_ClearITPendingBit>
 8000258:	20000030 	.word	0x20000030
 800025c:	2000005c 	.word	0x2000005c
 8000260:	20000050 	.word	0x20000050
 8000264:	20000058 	.word	0x20000058
 8000268:	40000400 	.word	0x40000400

0800026c <_ZN6CTimer8get_timeEv>:
 800026c:	b082      	sub	sp, #8
 800026e:	b672      	cpsid	i
 8000270:	4b04      	ldr	r3, [pc, #16]	; (8000284 <_ZN6CTimer8get_timeEv+0x18>)
 8000272:	681b      	ldr	r3, [r3, #0]
 8000274:	9301      	str	r3, [sp, #4]
 8000276:	b662      	cpsie	i
 8000278:	230a      	movs	r3, #10
 800027a:	9801      	ldr	r0, [sp, #4]
 800027c:	fbb0 f0f3 	udiv	r0, r0, r3
 8000280:	b002      	add	sp, #8
 8000282:	4770      	bx	lr
 8000284:	20000058 	.word	0x20000058

08000288 <_ZN6CTimer21even_timer_set_periodEhm>:
 8000288:	b672      	cpsid	i
 800028a:	230a      	movs	r3, #10
 800028c:	435a      	muls	r2, r3
 800028e:	4b05      	ldr	r3, [pc, #20]	; (80002a4 <_ZN6CTimer21even_timer_set_periodEhm+0x1c>)
 8000290:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000294:	4b04      	ldr	r3, [pc, #16]	; (80002a8 <_ZN6CTimer21even_timer_set_periodEhm+0x20>)
 8000296:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 800029a:	4b04      	ldr	r3, [pc, #16]	; (80002ac <_ZN6CTimer21even_timer_set_periodEhm+0x24>)
 800029c:	2200      	movs	r2, #0
 800029e:	545a      	strb	r2, [r3, r1]
 80002a0:	b662      	cpsie	i
 80002a2:	4770      	bx	lr
 80002a4:	20000030 	.word	0x20000030
 80002a8:	2000005c 	.word	0x2000005c
 80002ac:	20000050 	.word	0x20000050

080002b0 <_ZN6CTimer14event_timer_ccEh>:
 80002b0:	4b05      	ldr	r3, [pc, #20]	; (80002c8 <_ZN6CTimer14event_timer_ccEh+0x18>)
 80002b2:	5c5a      	ldrb	r2, [r3, r1]
 80002b4:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 80002b8:	b122      	cbz	r2, 80002c4 <_ZN6CTimer14event_timer_ccEh+0x14>
 80002ba:	b672      	cpsid	i
 80002bc:	2200      	movs	r2, #0
 80002be:	545a      	strb	r2, [r3, r1]
 80002c0:	b662      	cpsie	i
 80002c2:	2001      	movs	r0, #1
 80002c4:	4770      	bx	lr
 80002c6:	bf00      	nop
 80002c8:	20000050 	.word	0x20000050

080002cc <_ZN7CKodama4initEv>:
 80002cc:	b510      	push	{r4, lr}
 80002ce:	4604      	mov	r4, r0
 80002d0:	f000 fab0 	bl	8000834 <_ZN5CGPIO9gpio_initEv>
 80002d4:	2800      	cmp	r0, #0
 80002d6:	db12      	blt.n	80002fe <_ZN7CKodama4initEv+0x32>
 80002d8:	4620      	mov	r0, r4
 80002da:	f000 fbb3 	bl	8000a44 <_ZN9CTerminal13terminal_initEv>
 80002de:	2800      	cmp	r0, #0
 80002e0:	db10      	blt.n	8000304 <_ZN7CKodama4initEv+0x38>
 80002e2:	4620      	mov	r0, r4
 80002e4:	f7ff ff50 	bl	8000188 <_ZN6CTimer10timer_initEv>
 80002e8:	2800      	cmp	r0, #0
 80002ea:	db0e      	blt.n	800030a <_ZN7CKodama4initEv+0x3e>
 80002ec:	4620      	mov	r0, r4
 80002ee:	f000 fa0f 	bl	8000710 <_ZN4CIMU8imu_initEv>
 80002f2:	2800      	cmp	r0, #0
 80002f4:	bfb4      	ite	lt
 80002f6:	f06f 0003 	mvnlt.w	r0, #3
 80002fa:	2000      	movge	r0, #0
 80002fc:	bd10      	pop	{r4, pc}
 80002fe:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000302:	bd10      	pop	{r4, pc}
 8000304:	f06f 0001 	mvn.w	r0, #1
 8000308:	bd10      	pop	{r4, pc}
 800030a:	f06f 0002 	mvn.w	r0, #2
 800030e:	bd10      	pop	{r4, pc}

08000310 <_ZN4CI2C9i2c_delayEv>:
 8000310:	bf00      	nop
 8000312:	bf00      	nop
 8000314:	bf00      	nop
 8000316:	bf00      	nop
 8000318:	4770      	bx	lr
	...

0800031c <_ZN4CI2C9SetLowSDAEv>:
 800031c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800031e:	4d0e      	ldr	r5, [pc, #56]	; (8000358 <_ZN4CI2C9SetLowSDAEv+0x3c>)
 8000320:	2301      	movs	r3, #1
 8000322:	2203      	movs	r2, #3
 8000324:	4606      	mov	r6, r0
 8000326:	2480      	movs	r4, #128	; 0x80
 8000328:	f88d 3004 	strb.w	r3, [sp, #4]
 800032c:	f88d 3006 	strb.w	r3, [sp, #6]
 8000330:	4628      	mov	r0, r5
 8000332:	2300      	movs	r3, #0
 8000334:	4669      	mov	r1, sp
 8000336:	f88d 2005 	strb.w	r2, [sp, #5]
 800033a:	f88d 3007 	strb.w	r3, [sp, #7]
 800033e:	9400      	str	r4, [sp, #0]
 8000340:	f001 fa58 	bl	80017f4 <GPIO_Init>
 8000344:	4628      	mov	r0, r5
 8000346:	4621      	mov	r1, r4
 8000348:	f001 fa9a 	bl	8001880 <GPIO_ResetBits>
 800034c:	4630      	mov	r0, r6
 800034e:	f7ff ffdf 	bl	8000310 <_ZN4CI2C9i2c_delayEv>
 8000352:	b002      	add	sp, #8
 8000354:	bd70      	pop	{r4, r5, r6, pc}
 8000356:	bf00      	nop
 8000358:	48000400 	.word	0x48000400

0800035c <_ZN4CI2C10SetHighSDAEv>:
 800035c:	b573      	push	{r0, r1, r4, r5, r6, lr}
 800035e:	4d0e      	ldr	r5, [pc, #56]	; (8000398 <_ZN4CI2C10SetHighSDAEv+0x3c>)
 8000360:	2203      	movs	r2, #3
 8000362:	2300      	movs	r3, #0
 8000364:	4606      	mov	r6, r0
 8000366:	2480      	movs	r4, #128	; 0x80
 8000368:	f88d 2005 	strb.w	r2, [sp, #5]
 800036c:	4628      	mov	r0, r5
 800036e:	2201      	movs	r2, #1
 8000370:	4669      	mov	r1, sp
 8000372:	f88d 3004 	strb.w	r3, [sp, #4]
 8000376:	f88d 2006 	strb.w	r2, [sp, #6]
 800037a:	f88d 3007 	strb.w	r3, [sp, #7]
 800037e:	9400      	str	r4, [sp, #0]
 8000380:	f001 fa38 	bl	80017f4 <GPIO_Init>
 8000384:	4628      	mov	r0, r5
 8000386:	4621      	mov	r1, r4
 8000388:	f001 fa76 	bl	8001878 <GPIO_SetBits>
 800038c:	4630      	mov	r0, r6
 800038e:	f7ff ffbf 	bl	8000310 <_ZN4CI2C9i2c_delayEv>
 8000392:	b002      	add	sp, #8
 8000394:	bd70      	pop	{r4, r5, r6, pc}
 8000396:	bf00      	nop
 8000398:	48000400 	.word	0x48000400

0800039c <_ZN4CI2C9SetLowSCLEv>:
 800039c:	b510      	push	{r4, lr}
 800039e:	2140      	movs	r1, #64	; 0x40
 80003a0:	4604      	mov	r4, r0
 80003a2:	4804      	ldr	r0, [pc, #16]	; (80003b4 <_ZN4CI2C9SetLowSCLEv+0x18>)
 80003a4:	f001 fa6c 	bl	8001880 <GPIO_ResetBits>
 80003a8:	4620      	mov	r0, r4
 80003aa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80003ae:	f7ff bfaf 	b.w	8000310 <_ZN4CI2C9i2c_delayEv>
 80003b2:	bf00      	nop
 80003b4:	48000400 	.word	0x48000400

080003b8 <_ZN4CI2C10SetHighSCLEv>:
 80003b8:	b510      	push	{r4, lr}
 80003ba:	2140      	movs	r1, #64	; 0x40
 80003bc:	4604      	mov	r4, r0
 80003be:	4804      	ldr	r0, [pc, #16]	; (80003d0 <_ZN4CI2C10SetHighSCLEv+0x18>)
 80003c0:	f001 fa5a 	bl	8001878 <GPIO_SetBits>
 80003c4:	4620      	mov	r0, r4
 80003c6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80003ca:	f7ff bfa1 	b.w	8000310 <_ZN4CI2C9i2c_delayEv>
 80003ce:	bf00      	nop
 80003d0:	48000400 	.word	0x48000400

080003d4 <_ZN4CI2C8i2c_initEv>:
 80003d4:	b513      	push	{r0, r1, r4, lr}
 80003d6:	4604      	mov	r4, r0
 80003d8:	2101      	movs	r1, #1
 80003da:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 80003de:	f000 ff69 	bl	80012b4 <RCC_AHBPeriphClockCmd>
 80003e2:	23c0      	movs	r3, #192	; 0xc0
 80003e4:	9300      	str	r3, [sp, #0]
 80003e6:	2301      	movs	r3, #1
 80003e8:	2203      	movs	r2, #3
 80003ea:	4669      	mov	r1, sp
 80003ec:	f88d 3004 	strb.w	r3, [sp, #4]
 80003f0:	f88d 3006 	strb.w	r3, [sp, #6]
 80003f4:	4809      	ldr	r0, [pc, #36]	; (800041c <_ZN4CI2C8i2c_initEv+0x48>)
 80003f6:	f88d 2005 	strb.w	r2, [sp, #5]
 80003fa:	2300      	movs	r3, #0
 80003fc:	f88d 3007 	strb.w	r3, [sp, #7]
 8000400:	f001 f9f8 	bl	80017f4 <GPIO_Init>
 8000404:	4620      	mov	r0, r4
 8000406:	f7ff ffd7 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 800040a:	4620      	mov	r0, r4
 800040c:	f7ff ff86 	bl	800031c <_ZN4CI2C9SetLowSDAEv>
 8000410:	4620      	mov	r0, r4
 8000412:	f7ff ffa3 	bl	800035c <_ZN4CI2C10SetHighSDAEv>
 8000416:	b002      	add	sp, #8
 8000418:	bd10      	pop	{r4, pc}
 800041a:	bf00      	nop
 800041c:	48000400 	.word	0x48000400

08000420 <_ZN4CI2C8i2cStartEv>:
 8000420:	b510      	push	{r4, lr}
 8000422:	4604      	mov	r4, r0
 8000424:	f7ff ffc8 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 8000428:	4620      	mov	r0, r4
 800042a:	f7ff ff97 	bl	800035c <_ZN4CI2C10SetHighSDAEv>
 800042e:	4620      	mov	r0, r4
 8000430:	f7ff ffc2 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 8000434:	4620      	mov	r0, r4
 8000436:	f7ff ff71 	bl	800031c <_ZN4CI2C9SetLowSDAEv>
 800043a:	4620      	mov	r0, r4
 800043c:	f7ff ffae 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 8000440:	4620      	mov	r0, r4
 8000442:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000446:	f7ff bf89 	b.w	800035c <_ZN4CI2C10SetHighSDAEv>

0800044a <_ZN4CI2C7i2cStopEv>:
 800044a:	b510      	push	{r4, lr}
 800044c:	4604      	mov	r4, r0
 800044e:	f7ff ffa5 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 8000452:	4620      	mov	r0, r4
 8000454:	f7ff ff62 	bl	800031c <_ZN4CI2C9SetLowSDAEv>
 8000458:	4620      	mov	r0, r4
 800045a:	f7ff ffad 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 800045e:	4620      	mov	r0, r4
 8000460:	f7ff ff5c 	bl	800031c <_ZN4CI2C9SetLowSDAEv>
 8000464:	4620      	mov	r0, r4
 8000466:	f7ff ffa7 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 800046a:	4620      	mov	r0, r4
 800046c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000470:	f7ff bf74 	b.w	800035c <_ZN4CI2C10SetHighSDAEv>

08000474 <_ZN4CI2C8i2cWriteEh>:
 8000474:	b570      	push	{r4, r5, r6, lr}
 8000476:	4604      	mov	r4, r0
 8000478:	460e      	mov	r6, r1
 800047a:	2508      	movs	r5, #8
 800047c:	4620      	mov	r0, r4
 800047e:	f7ff ff8d 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 8000482:	0633      	lsls	r3, r6, #24
 8000484:	4620      	mov	r0, r4
 8000486:	d502      	bpl.n	800048e <_ZN4CI2C8i2cWriteEh+0x1a>
 8000488:	f7ff ff68 	bl	800035c <_ZN4CI2C10SetHighSDAEv>
 800048c:	e001      	b.n	8000492 <_ZN4CI2C8i2cWriteEh+0x1e>
 800048e:	f7ff ff45 	bl	800031c <_ZN4CI2C9SetLowSDAEv>
 8000492:	4620      	mov	r0, r4
 8000494:	3d01      	subs	r5, #1
 8000496:	f7ff ff8f 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 800049a:	0076      	lsls	r6, r6, #1
 800049c:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 80004a0:	b2f6      	uxtb	r6, r6
 80004a2:	d1eb      	bne.n	800047c <_ZN4CI2C8i2cWriteEh+0x8>
 80004a4:	4620      	mov	r0, r4
 80004a6:	f7ff ff79 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 80004aa:	4620      	mov	r0, r4
 80004ac:	f7ff ff56 	bl	800035c <_ZN4CI2C10SetHighSDAEv>
 80004b0:	4620      	mov	r0, r4
 80004b2:	f7ff ff81 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 80004b6:	4b07      	ldr	r3, [pc, #28]	; (80004d4 <_ZN4CI2C8i2cWriteEh+0x60>)
 80004b8:	8a1d      	ldrh	r5, [r3, #16]
 80004ba:	4620      	mov	r0, r4
 80004bc:	f7ff ff6e 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 80004c0:	b2ad      	uxth	r5, r5
 80004c2:	4620      	mov	r0, r4
 80004c4:	f7ff ff24 	bl	8000310 <_ZN4CI2C9i2c_delayEv>
 80004c8:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 80004cc:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 80004d0:	bd70      	pop	{r4, r5, r6, pc}
 80004d2:	bf00      	nop
 80004d4:	48000400 	.word	0x48000400

080004d8 <_ZN4CI2C13i2c_write_regEhhh>:
 80004d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80004da:	4604      	mov	r4, r0
 80004dc:	460f      	mov	r7, r1
 80004de:	4616      	mov	r6, r2
 80004e0:	461d      	mov	r5, r3
 80004e2:	f7ff ff9d 	bl	8000420 <_ZN4CI2C8i2cStartEv>
 80004e6:	4639      	mov	r1, r7
 80004e8:	4620      	mov	r0, r4
 80004ea:	f7ff ffc3 	bl	8000474 <_ZN4CI2C8i2cWriteEh>
 80004ee:	4631      	mov	r1, r6
 80004f0:	4620      	mov	r0, r4
 80004f2:	f7ff ffbf 	bl	8000474 <_ZN4CI2C8i2cWriteEh>
 80004f6:	4620      	mov	r0, r4
 80004f8:	4629      	mov	r1, r5
 80004fa:	f7ff ffbb 	bl	8000474 <_ZN4CI2C8i2cWriteEh>
 80004fe:	4620      	mov	r0, r4
 8000500:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000504:	f7ff bfa1 	b.w	800044a <_ZN4CI2C7i2cStopEv>

08000508 <_ZN4CI2C7i2cReadEh>:
 8000508:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800050a:	4605      	mov	r5, r0
 800050c:	460f      	mov	r7, r1
 800050e:	f7ff ff45 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 8000512:	4628      	mov	r0, r5
 8000514:	f7ff ff22 	bl	800035c <_ZN4CI2C10SetHighSDAEv>
 8000518:	2608      	movs	r6, #8
 800051a:	2400      	movs	r4, #0
 800051c:	4628      	mov	r0, r5
 800051e:	f7ff ff4b 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 8000522:	4b10      	ldr	r3, [pc, #64]	; (8000564 <_ZN4CI2C7i2cReadEh+0x5c>)
 8000524:	8a1b      	ldrh	r3, [r3, #16]
 8000526:	0064      	lsls	r4, r4, #1
 8000528:	061b      	lsls	r3, r3, #24
 800052a:	b2e4      	uxtb	r4, r4
 800052c:	bf48      	it	mi
 800052e:	3401      	addmi	r4, #1
 8000530:	4628      	mov	r0, r5
 8000532:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000536:	bf48      	it	mi
 8000538:	b2e4      	uxtbmi	r4, r4
 800053a:	f7ff ff2f 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 800053e:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000542:	d1eb      	bne.n	800051c <_ZN4CI2C7i2cReadEh+0x14>
 8000544:	b117      	cbz	r7, 800054c <_ZN4CI2C7i2cReadEh+0x44>
 8000546:	4628      	mov	r0, r5
 8000548:	f7ff fee8 	bl	800031c <_ZN4CI2C9SetLowSDAEv>
 800054c:	4628      	mov	r0, r5
 800054e:	f7ff ff33 	bl	80003b8 <_ZN4CI2C10SetHighSCLEv>
 8000552:	4628      	mov	r0, r5
 8000554:	f7ff ff22 	bl	800039c <_ZN4CI2C9SetLowSCLEv>
 8000558:	4628      	mov	r0, r5
 800055a:	f7ff fed9 	bl	8000310 <_ZN4CI2C9i2c_delayEv>
 800055e:	4620      	mov	r0, r4
 8000560:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000562:	bf00      	nop
 8000564:	48000400 	.word	0x48000400

08000568 <_ZN4CI2C12i2c_read_regEhh>:
 8000568:	b570      	push	{r4, r5, r6, lr}
 800056a:	4604      	mov	r4, r0
 800056c:	460d      	mov	r5, r1
 800056e:	4616      	mov	r6, r2
 8000570:	f7ff ff56 	bl	8000420 <_ZN4CI2C8i2cStartEv>
 8000574:	4629      	mov	r1, r5
 8000576:	4620      	mov	r0, r4
 8000578:	f7ff ff7c 	bl	8000474 <_ZN4CI2C8i2cWriteEh>
 800057c:	4631      	mov	r1, r6
 800057e:	4620      	mov	r0, r4
 8000580:	f7ff ff78 	bl	8000474 <_ZN4CI2C8i2cWriteEh>
 8000584:	4620      	mov	r0, r4
 8000586:	f7ff ff4b 	bl	8000420 <_ZN4CI2C8i2cStartEv>
 800058a:	f045 0101 	orr.w	r1, r5, #1
 800058e:	4620      	mov	r0, r4
 8000590:	f7ff ff70 	bl	8000474 <_ZN4CI2C8i2cWriteEh>
 8000594:	2100      	movs	r1, #0
 8000596:	4620      	mov	r0, r4
 8000598:	f7ff ffb6 	bl	8000508 <_ZN4CI2C7i2cReadEh>
 800059c:	4605      	mov	r5, r0
 800059e:	4620      	mov	r0, r4
 80005a0:	f7ff ff53 	bl	800044a <_ZN4CI2C7i2cStopEv>
 80005a4:	4628      	mov	r0, r5
 80005a6:	bd70      	pop	{r4, r5, r6, pc}

080005a8 <_ZN4CIMU8imu_readEv>:
 80005a8:	b538      	push	{r3, r4, r5, lr}
 80005aa:	21d4      	movs	r1, #212	; 0xd4
 80005ac:	2228      	movs	r2, #40	; 0x28
 80005ae:	4604      	mov	r4, r0
 80005b0:	f7ff ffda 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80005b4:	21d4      	movs	r1, #212	; 0xd4
 80005b6:	4605      	mov	r5, r0
 80005b8:	2229      	movs	r2, #41	; 0x29
 80005ba:	4620      	mov	r0, r4
 80005bc:	f7ff ffd4 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80005c0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005c4:	8320      	strh	r0, [r4, #24]
 80005c6:	21d4      	movs	r1, #212	; 0xd4
 80005c8:	222a      	movs	r2, #42	; 0x2a
 80005ca:	4620      	mov	r0, r4
 80005cc:	f7ff ffcc 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80005d0:	21d4      	movs	r1, #212	; 0xd4
 80005d2:	4605      	mov	r5, r0
 80005d4:	222b      	movs	r2, #43	; 0x2b
 80005d6:	4620      	mov	r0, r4
 80005d8:	f7ff ffc6 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80005dc:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005e0:	8360      	strh	r0, [r4, #26]
 80005e2:	21d4      	movs	r1, #212	; 0xd4
 80005e4:	222c      	movs	r2, #44	; 0x2c
 80005e6:	4620      	mov	r0, r4
 80005e8:	f7ff ffbe 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80005ec:	21d4      	movs	r1, #212	; 0xd4
 80005ee:	4605      	mov	r5, r0
 80005f0:	222d      	movs	r2, #45	; 0x2d
 80005f2:	4620      	mov	r0, r4
 80005f4:	f7ff ffb8 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80005f8:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80005fc:	83a0      	strh	r0, [r4, #28]
 80005fe:	213c      	movs	r1, #60	; 0x3c
 8000600:	2208      	movs	r2, #8
 8000602:	4620      	mov	r0, r4
 8000604:	f7ff ffb0 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000608:	213c      	movs	r1, #60	; 0x3c
 800060a:	4605      	mov	r5, r0
 800060c:	2209      	movs	r2, #9
 800060e:	4620      	mov	r0, r4
 8000610:	f7ff ffaa 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000614:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000618:	8260      	strh	r0, [r4, #18]
 800061a:	213c      	movs	r1, #60	; 0x3c
 800061c:	220a      	movs	r2, #10
 800061e:	4620      	mov	r0, r4
 8000620:	f7ff ffa2 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000624:	213c      	movs	r1, #60	; 0x3c
 8000626:	4605      	mov	r5, r0
 8000628:	220b      	movs	r2, #11
 800062a:	4620      	mov	r0, r4
 800062c:	f7ff ff9c 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000630:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000634:	82a0      	strh	r0, [r4, #20]
 8000636:	213c      	movs	r1, #60	; 0x3c
 8000638:	220c      	movs	r2, #12
 800063a:	4620      	mov	r0, r4
 800063c:	f7ff ff94 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000640:	213c      	movs	r1, #60	; 0x3c
 8000642:	4605      	mov	r5, r0
 8000644:	220d      	movs	r2, #13
 8000646:	4620      	mov	r0, r4
 8000648:	f7ff ff8e 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 800064c:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000650:	82e0      	strh	r0, [r4, #22]
 8000652:	213c      	movs	r1, #60	; 0x3c
 8000654:	2228      	movs	r2, #40	; 0x28
 8000656:	4620      	mov	r0, r4
 8000658:	f7ff ff86 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 800065c:	213c      	movs	r1, #60	; 0x3c
 800065e:	4605      	mov	r5, r0
 8000660:	2229      	movs	r2, #41	; 0x29
 8000662:	4620      	mov	r0, r4
 8000664:	f7ff ff80 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000668:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 800066c:	81a0      	strh	r0, [r4, #12]
 800066e:	213c      	movs	r1, #60	; 0x3c
 8000670:	222a      	movs	r2, #42	; 0x2a
 8000672:	4620      	mov	r0, r4
 8000674:	f7ff ff78 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000678:	213c      	movs	r1, #60	; 0x3c
 800067a:	4605      	mov	r5, r0
 800067c:	222b      	movs	r2, #43	; 0x2b
 800067e:	4620      	mov	r0, r4
 8000680:	f7ff ff72 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000684:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000688:	81e0      	strh	r0, [r4, #14]
 800068a:	213c      	movs	r1, #60	; 0x3c
 800068c:	222c      	movs	r2, #44	; 0x2c
 800068e:	4620      	mov	r0, r4
 8000690:	f7ff ff6a 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000694:	213c      	movs	r1, #60	; 0x3c
 8000696:	4605      	mov	r5, r0
 8000698:	222d      	movs	r2, #45	; 0x2d
 800069a:	4620      	mov	r0, r4
 800069c:	f7ff ff64 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80006a0:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 80006a4:	8220      	strh	r0, [r4, #16]
 80006a6:	213c      	movs	r1, #60	; 0x3c
 80006a8:	2205      	movs	r2, #5
 80006aa:	4620      	mov	r0, r4
 80006ac:	f7ff ff5c 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80006b0:	213c      	movs	r1, #60	; 0x3c
 80006b2:	4605      	mov	r5, r0
 80006b4:	2206      	movs	r2, #6
 80006b6:	4620      	mov	r0, r4
 80006b8:	f7ff ff56 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 80006bc:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 80006c0:	6822      	ldr	r2, [r4, #0]
 80006c2:	1a9a      	subs	r2, r3, r2
 80006c4:	6a23      	ldr	r3, [r4, #32]
 80006c6:	21c8      	movs	r1, #200	; 0xc8
 80006c8:	fb92 f2f1 	sdiv	r2, r2, r1
 80006cc:	441a      	add	r2, r3
 80006ce:	6222      	str	r2, [r4, #32]
 80006d0:	6863      	ldr	r3, [r4, #4]
 80006d2:	f9b4 201a 	ldrsh.w	r2, [r4, #26]
 80006d6:	1ad2      	subs	r2, r2, r3
 80006d8:	6a63      	ldr	r3, [r4, #36]	; 0x24
 80006da:	fb92 f2f1 	sdiv	r2, r2, r1
 80006de:	441a      	add	r2, r3
 80006e0:	6262      	str	r2, [r4, #36]	; 0x24
 80006e2:	68a3      	ldr	r3, [r4, #8]
 80006e4:	f9b4 201c 	ldrsh.w	r2, [r4, #28]
 80006e8:	1ad3      	subs	r3, r2, r3
 80006ea:	6aa2      	ldr	r2, [r4, #40]	; 0x28
 80006ec:	fb93 f3f1 	sdiv	r3, r3, r1
 80006f0:	4413      	add	r3, r2
 80006f2:	62a3      	str	r3, [r4, #40]	; 0x28
 80006f4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80006f8:	62e3      	str	r3, [r4, #44]	; 0x2c
 80006fa:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80006fe:	6323      	str	r3, [r4, #48]	; 0x30
 8000700:	ea45 2000 	orr.w	r0, r5, r0, lsl #8
 8000704:	f9b4 3010 	ldrsh.w	r3, [r4, #16]
 8000708:	83e0      	strh	r0, [r4, #30]
 800070a:	6363      	str	r3, [r4, #52]	; 0x34
 800070c:	bd38      	pop	{r3, r4, r5, pc}
	...

08000710 <_ZN4CIMU8imu_initEv>:
 8000710:	2300      	movs	r3, #0
 8000712:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000716:	6003      	str	r3, [r0, #0]
 8000718:	6043      	str	r3, [r0, #4]
 800071a:	6083      	str	r3, [r0, #8]
 800071c:	4604      	mov	r4, r0
 800071e:	f7ff fe59 	bl	80003d4 <_ZN4CI2C8i2c_initEv>
 8000722:	f242 7511 	movw	r5, #10001	; 0x2711
 8000726:	3d01      	subs	r5, #1
 8000728:	d001      	beq.n	800072e <_ZN4CIMU8imu_initEv+0x1e>
 800072a:	bf00      	nop
 800072c:	e7fb      	b.n	8000726 <_ZN4CIMU8imu_initEv+0x16>
 800072e:	4620      	mov	r0, r4
 8000730:	21d4      	movs	r1, #212	; 0xd4
 8000732:	220f      	movs	r2, #15
 8000734:	f7ff ff18 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000738:	28d4      	cmp	r0, #212	; 0xd4
 800073a:	4606      	mov	r6, r0
 800073c:	d16e      	bne.n	800081c <_ZN4CIMU8imu_initEv+0x10c>
 800073e:	4620      	mov	r0, r4
 8000740:	213c      	movs	r1, #60	; 0x3c
 8000742:	220f      	movs	r2, #15
 8000744:	f7ff ff10 	bl	8000568 <_ZN4CI2C12i2c_read_regEhh>
 8000748:	2849      	cmp	r0, #73	; 0x49
 800074a:	d16b      	bne.n	8000824 <_ZN4CIMU8imu_initEv+0x114>
 800074c:	4631      	mov	r1, r6
 800074e:	4620      	mov	r0, r4
 8000750:	2220      	movs	r2, #32
 8000752:	23ff      	movs	r3, #255	; 0xff
 8000754:	f7ff fec0 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 8000758:	4631      	mov	r1, r6
 800075a:	4620      	mov	r0, r4
 800075c:	2223      	movs	r2, #35	; 0x23
 800075e:	2310      	movs	r3, #16
 8000760:	f7ff feba 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 8000764:	4620      	mov	r0, r4
 8000766:	213c      	movs	r1, #60	; 0x3c
 8000768:	221f      	movs	r2, #31
 800076a:	462b      	mov	r3, r5
 800076c:	f7ff feb4 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 8000770:	4620      	mov	r0, r4
 8000772:	213c      	movs	r1, #60	; 0x3c
 8000774:	2220      	movs	r2, #32
 8000776:	2367      	movs	r3, #103	; 0x67
 8000778:	f7ff feae 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 800077c:	4620      	mov	r0, r4
 800077e:	213c      	movs	r1, #60	; 0x3c
 8000780:	2221      	movs	r2, #33	; 0x21
 8000782:	462b      	mov	r3, r5
 8000784:	f7ff fea8 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 8000788:	4620      	mov	r0, r4
 800078a:	213c      	movs	r1, #60	; 0x3c
 800078c:	2224      	movs	r2, #36	; 0x24
 800078e:	23f4      	movs	r3, #244	; 0xf4
 8000790:	f7ff fea2 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 8000794:	4620      	mov	r0, r4
 8000796:	213c      	movs	r1, #60	; 0x3c
 8000798:	2225      	movs	r2, #37	; 0x25
 800079a:	462b      	mov	r3, r5
 800079c:	f7ff fe9c 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 80007a0:	4620      	mov	r0, r4
 80007a2:	213c      	movs	r1, #60	; 0x3c
 80007a4:	2226      	movs	r2, #38	; 0x26
 80007a6:	2380      	movs	r3, #128	; 0x80
 80007a8:	f7ff fe96 	bl	80004d8 <_ZN4CI2C13i2c_write_regEhhh>
 80007ac:	4e1f      	ldr	r6, [pc, #124]	; (800082c <_ZN4CIMU8imu_initEv+0x11c>)
 80007ae:	3e01      	subs	r6, #1
 80007b0:	d001      	beq.n	80007b6 <_ZN4CIMU8imu_initEv+0xa6>
 80007b2:	bf00      	nop
 80007b4:	e7fb      	b.n	80007ae <_ZN4CIMU8imu_initEv+0x9e>
 80007b6:	4620      	mov	r0, r4
 80007b8:	f7ff fef6 	bl	80005a8 <_ZN4CIMU8imu_readEv>
 80007bc:	2564      	movs	r5, #100	; 0x64
 80007be:	4637      	mov	r7, r6
 80007c0:	46b0      	mov	r8, r6
 80007c2:	2365      	movs	r3, #101	; 0x65
 80007c4:	3b01      	subs	r3, #1
 80007c6:	d001      	beq.n	80007cc <_ZN4CIMU8imu_initEv+0xbc>
 80007c8:	bf00      	nop
 80007ca:	e7fb      	b.n	80007c4 <_ZN4CIMU8imu_initEv+0xb4>
 80007cc:	4620      	mov	r0, r4
 80007ce:	f7ff feeb 	bl	80005a8 <_ZN4CIMU8imu_readEv>
 80007d2:	f9b4 3018 	ldrsh.w	r3, [r4, #24]
 80007d6:	4498      	add	r8, r3
 80007d8:	f9b4 301a 	ldrsh.w	r3, [r4, #26]
 80007dc:	441f      	add	r7, r3
 80007de:	f9b4 301c 	ldrsh.w	r3, [r4, #28]
 80007e2:	3d01      	subs	r5, #1
 80007e4:	441e      	add	r6, r3
 80007e6:	d1ec      	bne.n	80007c2 <_ZN4CIMU8imu_initEv+0xb2>
 80007e8:	2264      	movs	r2, #100	; 0x64
 80007ea:	81a5      	strh	r5, [r4, #12]
 80007ec:	fb98 f3f2 	sdiv	r3, r8, r2
 80007f0:	fb97 f7f2 	sdiv	r7, r7, r2
 80007f4:	fb96 f6f2 	sdiv	r6, r6, r2
 80007f8:	6023      	str	r3, [r4, #0]
 80007fa:	6067      	str	r7, [r4, #4]
 80007fc:	60a6      	str	r6, [r4, #8]
 80007fe:	81e5      	strh	r5, [r4, #14]
 8000800:	8225      	strh	r5, [r4, #16]
 8000802:	8265      	strh	r5, [r4, #18]
 8000804:	82a5      	strh	r5, [r4, #20]
 8000806:	82e5      	strh	r5, [r4, #22]
 8000808:	8325      	strh	r5, [r4, #24]
 800080a:	8365      	strh	r5, [r4, #26]
 800080c:	83a5      	strh	r5, [r4, #28]
 800080e:	83e5      	strh	r5, [r4, #30]
 8000810:	6225      	str	r5, [r4, #32]
 8000812:	6265      	str	r5, [r4, #36]	; 0x24
 8000814:	62a5      	str	r5, [r4, #40]	; 0x28
 8000816:	4628      	mov	r0, r5
 8000818:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800081c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8000820:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000824:	f06f 0001 	mvn.w	r0, #1
 8000828:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800082c:	000186a1 	.word	0x000186a1

08000830 <_ZN4CIMU7imu_getEv>:
 8000830:	3020      	adds	r0, #32
 8000832:	4770      	bx	lr

08000834 <_ZN5CGPIO9gpio_initEv>:
 8000834:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8000838:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800083c:	b087      	sub	sp, #28
 800083e:	2101      	movs	r1, #1
 8000840:	f000 fd38 	bl	80012b4 <RCC_AHBPeriphClockCmd>
 8000844:	4e41      	ldr	r6, [pc, #260]	; (800094c <_ZN5CGPIO9gpio_initEv+0x118>)
 8000846:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 800084a:	2101      	movs	r1, #1
 800084c:	f000 fd32 	bl	80012b4 <RCC_AHBPeriphClockCmd>
 8000850:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8000854:	2101      	movs	r1, #1
 8000856:	2400      	movs	r4, #0
 8000858:	f000 fd2c 	bl	80012b4 <RCC_AHBPeriphClockCmd>
 800085c:	2501      	movs	r5, #1
 800085e:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8000862:	2703      	movs	r7, #3
 8000864:	4630      	mov	r0, r6
 8000866:	a902      	add	r1, sp, #8
 8000868:	9302      	str	r3, [sp, #8]
 800086a:	f88d 700d 	strb.w	r7, [sp, #13]
 800086e:	f88d 500c 	strb.w	r5, [sp, #12]
 8000872:	f88d 400e 	strb.w	r4, [sp, #14]
 8000876:	f88d 400f 	strb.w	r4, [sp, #15]
 800087a:	f000 ffbb 	bl	80017f4 <GPIO_Init>
 800087e:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8000882:	4630      	mov	r0, r6
 8000884:	a902      	add	r1, sp, #8
 8000886:	9302      	str	r3, [sp, #8]
 8000888:	f88d 700d 	strb.w	r7, [sp, #13]
 800088c:	f88d 400c 	strb.w	r4, [sp, #12]
 8000890:	f88d 400f 	strb.w	r4, [sp, #15]
 8000894:	f000 ffae 	bl	80017f4 <GPIO_Init>
 8000898:	f44f 5382 	mov.w	r3, #4160	; 0x1040
 800089c:	a902      	add	r1, sp, #8
 800089e:	482c      	ldr	r0, [pc, #176]	; (8000950 <_ZN5CGPIO9gpio_initEv+0x11c>)
 80008a0:	9302      	str	r3, [sp, #8]
 80008a2:	f88d 400c 	strb.w	r4, [sp, #12]
 80008a6:	f88d 500f 	strb.w	r5, [sp, #15]
 80008aa:	f000 ffa3 	bl	80017f4 <GPIO_Init>
 80008ae:	4628      	mov	r0, r5
 80008b0:	4629      	mov	r1, r5
 80008b2:	f000 fd0d 	bl	80012d0 <RCC_APB2PeriphClockCmd>
 80008b6:	f04f 0910 	mov.w	r9, #16
 80008ba:	2106      	movs	r1, #6
 80008bc:	2002      	movs	r0, #2
 80008be:	f001 f82b 	bl	8001918 <SYSCFG_EXTILineConfig>
 80008c2:	f04f 0806 	mov.w	r8, #6
 80008c6:	eb0d 0009 	add.w	r0, sp, r9
 80008ca:	260f      	movs	r6, #15
 80008cc:	f8cd 8010 	str.w	r8, [sp, #16]
 80008d0:	f88d 4014 	strb.w	r4, [sp, #20]
 80008d4:	f88d 9015 	strb.w	r9, [sp, #21]
 80008d8:	f88d 5016 	strb.w	r5, [sp, #22]
 80008dc:	f000 fef8 	bl	80016d0 <EXTI_Init>
 80008e0:	2317      	movs	r3, #23
 80008e2:	a801      	add	r0, sp, #4
 80008e4:	f88d 3004 	strb.w	r3, [sp, #4]
 80008e8:	f88d 6005 	strb.w	r6, [sp, #5]
 80008ec:	f88d 6006 	strb.w	r6, [sp, #6]
 80008f0:	f88d 5007 	strb.w	r5, [sp, #7]
 80008f4:	f000 feb2 	bl	800165c <NVIC_Init>
 80008f8:	210c      	movs	r1, #12
 80008fa:	2002      	movs	r0, #2
 80008fc:	f001 f80c 	bl	8001918 <SYSCFG_EXTILineConfig>
 8000900:	270c      	movs	r7, #12
 8000902:	eb0d 0009 	add.w	r0, sp, r9
 8000906:	9704      	str	r7, [sp, #16]
 8000908:	f88d 4014 	strb.w	r4, [sp, #20]
 800090c:	f88d 9015 	strb.w	r9, [sp, #21]
 8000910:	f88d 5016 	strb.w	r5, [sp, #22]
 8000914:	f000 fedc 	bl	80016d0 <EXTI_Init>
 8000918:	2328      	movs	r3, #40	; 0x28
 800091a:	a801      	add	r0, sp, #4
 800091c:	f88d 3004 	strb.w	r3, [sp, #4]
 8000920:	f88d 6005 	strb.w	r6, [sp, #5]
 8000924:	f88d 6006 	strb.w	r6, [sp, #6]
 8000928:	f88d 5007 	strb.w	r5, [sp, #7]
 800092c:	f000 fe96 	bl	800165c <NVIC_Init>
 8000930:	4640      	mov	r0, r8
 8000932:	f000 ff53 	bl	80017dc <EXTI_ClearITPendingBit>
 8000936:	4638      	mov	r0, r7
 8000938:	f000 ff50 	bl	80017dc <EXTI_ClearITPendingBit>
 800093c:	4b05      	ldr	r3, [pc, #20]	; (8000954 <_ZN5CGPIO9gpio_initEv+0x120>)
 800093e:	601c      	str	r4, [r3, #0]
 8000940:	4b05      	ldr	r3, [pc, #20]	; (8000958 <_ZN5CGPIO9gpio_initEv+0x124>)
 8000942:	4620      	mov	r0, r4
 8000944:	601c      	str	r4, [r3, #0]
 8000946:	b007      	add	sp, #28
 8000948:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800094c:	48000400 	.word	0x48000400
 8000950:	48000800 	.word	0x48000800
 8000954:	2000007c 	.word	0x2000007c
 8000958:	20000080 	.word	0x20000080

0800095c <_ZN5CGPIO7gpio_onEm>:
 800095c:	4b01      	ldr	r3, [pc, #4]	; (8000964 <_ZN5CGPIO7gpio_onEm+0x8>)
 800095e:	6199      	str	r1, [r3, #24]
 8000960:	4770      	bx	lr
 8000962:	bf00      	nop
 8000964:	48000400 	.word	0x48000400

08000968 <_ZN5CGPIO8gpio_offEm>:
 8000968:	4b01      	ldr	r3, [pc, #4]	; (8000970 <_ZN5CGPIO8gpio_offEm+0x8>)
 800096a:	b289      	uxth	r1, r1
 800096c:	8519      	strh	r1, [r3, #40]	; 0x28
 800096e:	4770      	bx	lr
 8000970:	48000400 	.word	0x48000400

08000974 <_ZN5CGPIO16get_left_encoderEv>:
 8000974:	b082      	sub	sp, #8
 8000976:	b672      	cpsid	i
 8000978:	4b06      	ldr	r3, [pc, #24]	; (8000994 <_ZN5CGPIO16get_left_encoderEv+0x20>)
 800097a:	681b      	ldr	r3, [r3, #0]
 800097c:	9301      	str	r3, [sp, #4]
 800097e:	b662      	cpsie	i
 8000980:	9801      	ldr	r0, [sp, #4]
 8000982:	f240 23ee 	movw	r3, #750	; 0x2ee
 8000986:	4343      	muls	r3, r0
 8000988:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 800098c:	fbb3 f0f0 	udiv	r0, r3, r0
 8000990:	b002      	add	sp, #8
 8000992:	4770      	bx	lr
 8000994:	2000007c 	.word	0x2000007c

08000998 <_ZN5CGPIO17get_right_encoderEv>:
 8000998:	b082      	sub	sp, #8
 800099a:	b672      	cpsid	i
 800099c:	4b06      	ldr	r3, [pc, #24]	; (80009b8 <_ZN5CGPIO17get_right_encoderEv+0x20>)
 800099e:	681b      	ldr	r3, [r3, #0]
 80009a0:	9301      	str	r3, [sp, #4]
 80009a2:	b662      	cpsie	i
 80009a4:	9801      	ldr	r0, [sp, #4]
 80009a6:	f240 23ee 	movw	r3, #750	; 0x2ee
 80009aa:	4343      	muls	r3, r0
 80009ac:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 80009b0:	fbb3 f0f0 	udiv	r0, r3, r0
 80009b4:	b002      	add	sp, #8
 80009b6:	4770      	bx	lr
 80009b8:	20000080 	.word	0x20000080

080009bc <EXTI9_5_IRQHandler>:
 80009bc:	4a03      	ldr	r2, [pc, #12]	; (80009cc <EXTI9_5_IRQHandler+0x10>)
 80009be:	6813      	ldr	r3, [r2, #0]
 80009c0:	2006      	movs	r0, #6
 80009c2:	3301      	adds	r3, #1
 80009c4:	6013      	str	r3, [r2, #0]
 80009c6:	f000 bf09 	b.w	80017dc <EXTI_ClearITPendingBit>
 80009ca:	bf00      	nop
 80009cc:	2000007c 	.word	0x2000007c

080009d0 <EXTI15_10_IRQHandler>:
 80009d0:	4a03      	ldr	r2, [pc, #12]	; (80009e0 <EXTI15_10_IRQHandler+0x10>)
 80009d2:	6813      	ldr	r3, [r2, #0]
 80009d4:	200c      	movs	r0, #12
 80009d6:	3301      	adds	r3, #1
 80009d8:	6013      	str	r3, [r2, #0]
 80009da:	f000 beff 	b.w	80017dc <EXTI_ClearITPendingBit>
 80009de:	bf00      	nop
 80009e0:	20000080 	.word	0x20000080

080009e4 <USART1_IRQHandler>:
 80009e4:	b508      	push	{r3, lr}
 80009e6:	480d      	ldr	r0, [pc, #52]	; (8000a1c <USART1_IRQHandler+0x38>)
 80009e8:	490d      	ldr	r1, [pc, #52]	; (8000a20 <USART1_IRQHandler+0x3c>)
 80009ea:	f000 fd7d 	bl	80014e8 <USART_GetITStatus>
 80009ee:	b178      	cbz	r0, 8000a10 <USART1_IRQHandler+0x2c>
 80009f0:	480a      	ldr	r0, [pc, #40]	; (8000a1c <USART1_IRQHandler+0x38>)
 80009f2:	f000 fd5a 	bl	80014aa <USART_ReceiveData>
 80009f6:	4b0b      	ldr	r3, [pc, #44]	; (8000a24 <USART1_IRQHandler+0x40>)
 80009f8:	490b      	ldr	r1, [pc, #44]	; (8000a28 <USART1_IRQHandler+0x44>)
 80009fa:	681a      	ldr	r2, [r3, #0]
 80009fc:	b2c0      	uxtb	r0, r0
 80009fe:	5488      	strb	r0, [r1, r2]
 8000a00:	681a      	ldr	r2, [r3, #0]
 8000a02:	3201      	adds	r2, #1
 8000a04:	601a      	str	r2, [r3, #0]
 8000a06:	681a      	ldr	r2, [r3, #0]
 8000a08:	2a0f      	cmp	r2, #15
 8000a0a:	bf84      	itt	hi
 8000a0c:	2200      	movhi	r2, #0
 8000a0e:	601a      	strhi	r2, [r3, #0]
 8000a10:	4802      	ldr	r0, [pc, #8]	; (8000a1c <USART1_IRQHandler+0x38>)
 8000a12:	4903      	ldr	r1, [pc, #12]	; (8000a20 <USART1_IRQHandler+0x3c>)
 8000a14:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000a18:	f000 bd84 	b.w	8001524 <USART_ClearITPendingBit>
 8000a1c:	40013800 	.word	0x40013800
 8000a20:	00050105 	.word	0x00050105
 8000a24:	20000084 	.word	0x20000084
 8000a28:	20000088 	.word	0x20000088

08000a2c <_ZN9CTerminal7putcharEc>:
 8000a2c:	4b04      	ldr	r3, [pc, #16]	; (8000a40 <_ZN9CTerminal7putcharEc+0x14>)
 8000a2e:	69da      	ldr	r2, [r3, #28]
 8000a30:	0612      	lsls	r2, r2, #24
 8000a32:	d401      	bmi.n	8000a38 <_ZN9CTerminal7putcharEc+0xc>
 8000a34:	bf00      	nop
 8000a36:	e7f9      	b.n	8000a2c <_ZN9CTerminal7putcharEc>
 8000a38:	b289      	uxth	r1, r1
 8000a3a:	8519      	strh	r1, [r3, #40]	; 0x28
 8000a3c:	4770      	bx	lr
 8000a3e:	bf00      	nop
 8000a40:	40013800 	.word	0x40013800

08000a44 <_ZN9CTerminal13terminal_initEv>:
 8000a44:	b570      	push	{r4, r5, r6, lr}
 8000a46:	4a31      	ldr	r2, [pc, #196]	; (8000b0c <_ZN9CTerminal13terminal_initEv+0xc8>)
 8000a48:	2300      	movs	r3, #0
 8000a4a:	6013      	str	r3, [r2, #0]
 8000a4c:	4a30      	ldr	r2, [pc, #192]	; (8000b10 <_ZN9CTerminal13terminal_initEv+0xcc>)
 8000a4e:	b08a      	sub	sp, #40	; 0x28
 8000a50:	4606      	mov	r6, r0
 8000a52:	6013      	str	r3, [r2, #0]
 8000a54:	4a2f      	ldr	r2, [pc, #188]	; (8000b14 <_ZN9CTerminal13terminal_initEv+0xd0>)
 8000a56:	2400      	movs	r4, #0
 8000a58:	54d4      	strb	r4, [r2, r3]
 8000a5a:	3301      	adds	r3, #1
 8000a5c:	2b10      	cmp	r3, #16
 8000a5e:	d1f9      	bne.n	8000a54 <_ZN9CTerminal13terminal_initEv+0x10>
 8000a60:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8000a64:	2101      	movs	r1, #1
 8000a66:	f000 fc25 	bl	80012b4 <RCC_AHBPeriphClockCmd>
 8000a6a:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8000a6e:	2101      	movs	r1, #1
 8000a70:	f000 fc2e 	bl	80012d0 <RCC_APB2PeriphClockCmd>
 8000a74:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 8000a78:	9302      	str	r3, [sp, #8]
 8000a7a:	2302      	movs	r3, #2
 8000a7c:	f88d 300c 	strb.w	r3, [sp, #12]
 8000a80:	a902      	add	r1, sp, #8
 8000a82:	2303      	movs	r3, #3
 8000a84:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a88:	f88d 300d 	strb.w	r3, [sp, #13]
 8000a8c:	f88d 400e 	strb.w	r4, [sp, #14]
 8000a90:	f88d 400f 	strb.w	r4, [sp, #15]
 8000a94:	f000 feae 	bl	80017f4 <GPIO_Init>
 8000a98:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a9c:	2109      	movs	r1, #9
 8000a9e:	2207      	movs	r2, #7
 8000aa0:	f000 fef2 	bl	8001888 <GPIO_PinAFConfig>
 8000aa4:	2207      	movs	r2, #7
 8000aa6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000aaa:	210a      	movs	r1, #10
 8000aac:	f000 feec 	bl	8001888 <GPIO_PinAFConfig>
 8000ab0:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8000ab4:	9304      	str	r3, [sp, #16]
 8000ab6:	a904      	add	r1, sp, #16
 8000ab8:	230c      	movs	r3, #12
 8000aba:	4817      	ldr	r0, [pc, #92]	; (8000b18 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000abc:	9308      	str	r3, [sp, #32]
 8000abe:	9405      	str	r4, [sp, #20]
 8000ac0:	9406      	str	r4, [sp, #24]
 8000ac2:	9407      	str	r4, [sp, #28]
 8000ac4:	9409      	str	r4, [sp, #36]	; 0x24
 8000ac6:	f000 fc83 	bl	80013d0 <USART_Init>
 8000aca:	4813      	ldr	r0, [pc, #76]	; (8000b18 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000acc:	2101      	movs	r1, #1
 8000ace:	f000 fce1 	bl	8001494 <USART_Cmd>
 8000ad2:	2201      	movs	r2, #1
 8000ad4:	4911      	ldr	r1, [pc, #68]	; (8000b1c <_ZN9CTerminal13terminal_initEv+0xd8>)
 8000ad6:	4810      	ldr	r0, [pc, #64]	; (8000b18 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000ad8:	f000 fcec 	bl	80014b4 <USART_ITConfig>
 8000adc:	2501      	movs	r5, #1
 8000ade:	2325      	movs	r3, #37	; 0x25
 8000ae0:	a801      	add	r0, sp, #4
 8000ae2:	f88d 3004 	strb.w	r3, [sp, #4]
 8000ae6:	f88d 4005 	strb.w	r4, [sp, #5]
 8000aea:	f88d 4006 	strb.w	r4, [sp, #6]
 8000aee:	f88d 5007 	strb.w	r5, [sp, #7]
 8000af2:	f000 fdb3 	bl	800165c <NVIC_Init>
 8000af6:	4629      	mov	r1, r5
 8000af8:	4807      	ldr	r0, [pc, #28]	; (8000b18 <_ZN9CTerminal13terminal_initEv+0xd4>)
 8000afa:	f000 fccb 	bl	8001494 <USART_Cmd>
 8000afe:	4630      	mov	r0, r6
 8000b00:	210a      	movs	r1, #10
 8000b02:	f7ff ff93 	bl	8000a2c <_ZN9CTerminal7putcharEc>
 8000b06:	4620      	mov	r0, r4
 8000b08:	b00a      	add	sp, #40	; 0x28
 8000b0a:	bd70      	pop	{r4, r5, r6, pc}
 8000b0c:	20000084 	.word	0x20000084
 8000b10:	20000098 	.word	0x20000098
 8000b14:	20000088 	.word	0x20000088
 8000b18:	40013800 	.word	0x40013800
 8000b1c:	00050105 	.word	0x00050105

08000b20 <_ZN9CTerminal4putsEPc>:
 8000b20:	b538      	push	{r3, r4, r5, lr}
 8000b22:	4605      	mov	r5, r0
 8000b24:	1e4c      	subs	r4, r1, #1
 8000b26:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8000b2a:	b119      	cbz	r1, 8000b34 <_ZN9CTerminal4putsEPc+0x14>
 8000b2c:	4628      	mov	r0, r5
 8000b2e:	f7ff ff7d 	bl	8000a2c <_ZN9CTerminal7putcharEc>
 8000b32:	e7f8      	b.n	8000b26 <_ZN9CTerminal4putsEPc+0x6>
 8000b34:	2001      	movs	r0, #1
 8000b36:	bd38      	pop	{r3, r4, r5, pc}

08000b38 <_ZN9CTerminal4putiEl>:
 8000b38:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8000b3a:	1e0b      	subs	r3, r1, #0
 8000b3c:	f04f 0200 	mov.w	r2, #0
 8000b40:	bfba      	itte	lt
 8000b42:	425b      	neglt	r3, r3
 8000b44:	2501      	movlt	r5, #1
 8000b46:	4615      	movge	r5, r2
 8000b48:	f88d 200f 	strb.w	r2, [sp, #15]
 8000b4c:	210a      	movs	r1, #10
 8000b4e:	220a      	movs	r2, #10
 8000b50:	ac01      	add	r4, sp, #4
 8000b52:	fb93 f6f2 	sdiv	r6, r3, r2
 8000b56:	fb02 3316 	mls	r3, r2, r6, r3
 8000b5a:	3330      	adds	r3, #48	; 0x30
 8000b5c:	550b      	strb	r3, [r1, r4]
 8000b5e:	1e4a      	subs	r2, r1, #1
 8000b60:	4633      	mov	r3, r6
 8000b62:	b10e      	cbz	r6, 8000b68 <_ZN9CTerminal4putiEl+0x30>
 8000b64:	4611      	mov	r1, r2
 8000b66:	e7f2      	b.n	8000b4e <_ZN9CTerminal4putiEl+0x16>
 8000b68:	b12d      	cbz	r5, 8000b76 <_ZN9CTerminal4putiEl+0x3e>
 8000b6a:	ab04      	add	r3, sp, #16
 8000b6c:	4413      	add	r3, r2
 8000b6e:	212d      	movs	r1, #45	; 0x2d
 8000b70:	f803 1c0c 	strb.w	r1, [r3, #-12]
 8000b74:	4611      	mov	r1, r2
 8000b76:	4421      	add	r1, r4
 8000b78:	f7ff ffd2 	bl	8000b20 <_ZN9CTerminal4putsEPc>
 8000b7c:	b004      	add	sp, #16
 8000b7e:	bd70      	pop	{r4, r5, r6, pc}

08000b80 <_ZN9CTerminal5putuiEm>:
 8000b80:	b530      	push	{r4, r5, lr}
 8000b82:	b085      	sub	sp, #20
 8000b84:	2300      	movs	r3, #0
 8000b86:	f88d 300f 	strb.w	r3, [sp, #15]
 8000b8a:	220a      	movs	r2, #10
 8000b8c:	230a      	movs	r3, #10
 8000b8e:	ac01      	add	r4, sp, #4
 8000b90:	fbb1 f5f3 	udiv	r5, r1, r3
 8000b94:	fb03 1315 	mls	r3, r3, r5, r1
 8000b98:	3330      	adds	r3, #48	; 0x30
 8000b9a:	5513      	strb	r3, [r2, r4]
 8000b9c:	4629      	mov	r1, r5
 8000b9e:	1e53      	subs	r3, r2, #1
 8000ba0:	b10d      	cbz	r5, 8000ba6 <_ZN9CTerminal5putuiEm+0x26>
 8000ba2:	461a      	mov	r2, r3
 8000ba4:	e7f2      	b.n	8000b8c <_ZN9CTerminal5putuiEm+0xc>
 8000ba6:	18a1      	adds	r1, r4, r2
 8000ba8:	f7ff ffba 	bl	8000b20 <_ZN9CTerminal4putsEPc>
 8000bac:	b005      	add	sp, #20
 8000bae:	bd30      	pop	{r4, r5, pc}

08000bb0 <_ZN9CTerminal4putxEm>:
 8000bb0:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000bb2:	2300      	movs	r3, #0
 8000bb4:	f88d 300f 	strb.w	r3, [sp, #15]
 8000bb8:	220a      	movs	r2, #10
 8000bba:	f001 030f 	and.w	r3, r1, #15
 8000bbe:	2b09      	cmp	r3, #9
 8000bc0:	ac01      	add	r4, sp, #4
 8000bc2:	bfd4      	ite	le
 8000bc4:	3330      	addle	r3, #48	; 0x30
 8000bc6:	3357      	addgt	r3, #87	; 0x57
 8000bc8:	0909      	lsrs	r1, r1, #4
 8000bca:	54a3      	strb	r3, [r4, r2]
 8000bcc:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 8000bd0:	d001      	beq.n	8000bd6 <_ZN9CTerminal4putxEm+0x26>
 8000bd2:	461a      	mov	r2, r3
 8000bd4:	e7f1      	b.n	8000bba <_ZN9CTerminal4putxEm+0xa>
 8000bd6:	18a1      	adds	r1, r4, r2
 8000bd8:	f7ff ffa2 	bl	8000b20 <_ZN9CTerminal4putsEPc>
 8000bdc:	b004      	add	sp, #16
 8000bde:	bd10      	pop	{r4, pc}

08000be0 <_ZN9CTerminal6printfEPKcz>:
 8000be0:	b40e      	push	{r1, r2, r3}
 8000be2:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8000be4:	ab07      	add	r3, sp, #28
 8000be6:	4604      	mov	r4, r0
 8000be8:	f853 6b04 	ldr.w	r6, [r3], #4
 8000bec:	9301      	str	r3, [sp, #4]
 8000bee:	2500      	movs	r5, #0
 8000bf0:	5d71      	ldrb	r1, [r6, r5]
 8000bf2:	2900      	cmp	r1, #0
 8000bf4:	d040      	beq.n	8000c78 <_ZN9CTerminal6printfEPKcz+0x98>
 8000bf6:	2925      	cmp	r1, #37	; 0x25
 8000bf8:	d004      	beq.n	8000c04 <_ZN9CTerminal6printfEPKcz+0x24>
 8000bfa:	4620      	mov	r0, r4
 8000bfc:	f7ff ff16 	bl	8000a2c <_ZN9CTerminal7putcharEc>
 8000c00:	3501      	adds	r5, #1
 8000c02:	e7f5      	b.n	8000bf0 <_ZN9CTerminal6printfEPKcz+0x10>
 8000c04:	1973      	adds	r3, r6, r5
 8000c06:	7859      	ldrb	r1, [r3, #1]
 8000c08:	2969      	cmp	r1, #105	; 0x69
 8000c0a:	d018      	beq.n	8000c3e <_ZN9CTerminal6printfEPKcz+0x5e>
 8000c0c:	d809      	bhi.n	8000c22 <_ZN9CTerminal6printfEPKcz+0x42>
 8000c0e:	2925      	cmp	r1, #37	; 0x25
 8000c10:	d02d      	beq.n	8000c6e <_ZN9CTerminal6printfEPKcz+0x8e>
 8000c12:	2963      	cmp	r1, #99	; 0x63
 8000c14:	d12e      	bne.n	8000c74 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c16:	9b01      	ldr	r3, [sp, #4]
 8000c18:	1d1a      	adds	r2, r3, #4
 8000c1a:	9201      	str	r2, [sp, #4]
 8000c1c:	4620      	mov	r0, r4
 8000c1e:	7819      	ldrb	r1, [r3, #0]
 8000c20:	e026      	b.n	8000c70 <_ZN9CTerminal6printfEPKcz+0x90>
 8000c22:	2975      	cmp	r1, #117	; 0x75
 8000c24:	d013      	beq.n	8000c4e <_ZN9CTerminal6printfEPKcz+0x6e>
 8000c26:	2978      	cmp	r1, #120	; 0x78
 8000c28:	d019      	beq.n	8000c5e <_ZN9CTerminal6printfEPKcz+0x7e>
 8000c2a:	2973      	cmp	r1, #115	; 0x73
 8000c2c:	d122      	bne.n	8000c74 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c2e:	9b01      	ldr	r3, [sp, #4]
 8000c30:	4620      	mov	r0, r4
 8000c32:	1d1a      	adds	r2, r3, #4
 8000c34:	6819      	ldr	r1, [r3, #0]
 8000c36:	9201      	str	r2, [sp, #4]
 8000c38:	f7ff ff72 	bl	8000b20 <_ZN9CTerminal4putsEPc>
 8000c3c:	e01a      	b.n	8000c74 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c3e:	9b01      	ldr	r3, [sp, #4]
 8000c40:	4620      	mov	r0, r4
 8000c42:	1d1a      	adds	r2, r3, #4
 8000c44:	6819      	ldr	r1, [r3, #0]
 8000c46:	9201      	str	r2, [sp, #4]
 8000c48:	f7ff ff76 	bl	8000b38 <_ZN9CTerminal4putiEl>
 8000c4c:	e012      	b.n	8000c74 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c4e:	9b01      	ldr	r3, [sp, #4]
 8000c50:	4620      	mov	r0, r4
 8000c52:	1d1a      	adds	r2, r3, #4
 8000c54:	6819      	ldr	r1, [r3, #0]
 8000c56:	9201      	str	r2, [sp, #4]
 8000c58:	f7ff ff92 	bl	8000b80 <_ZN9CTerminal5putuiEm>
 8000c5c:	e00a      	b.n	8000c74 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c5e:	9b01      	ldr	r3, [sp, #4]
 8000c60:	4620      	mov	r0, r4
 8000c62:	1d1a      	adds	r2, r3, #4
 8000c64:	6819      	ldr	r1, [r3, #0]
 8000c66:	9201      	str	r2, [sp, #4]
 8000c68:	f7ff ffa2 	bl	8000bb0 <_ZN9CTerminal4putxEm>
 8000c6c:	e002      	b.n	8000c74 <_ZN9CTerminal6printfEPKcz+0x94>
 8000c6e:	4620      	mov	r0, r4
 8000c70:	f7ff fedc 	bl	8000a2c <_ZN9CTerminal7putcharEc>
 8000c74:	3502      	adds	r5, #2
 8000c76:	e7bb      	b.n	8000bf0 <_ZN9CTerminal6printfEPKcz+0x10>
 8000c78:	b003      	add	sp, #12
 8000c7a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000c7e:	b003      	add	sp, #12
 8000c80:	4770      	bx	lr
	...

08000c84 <_Z13sensor_threadv>:
 8000c84:	b508      	push	{r3, lr}
 8000c86:	4b0b      	ldr	r3, [pc, #44]	; (8000cb4 <_Z13sensor_threadv+0x30>)
 8000c88:	f503 627a 	add.w	r2, r3, #4000	; 0xfa0
 8000c8c:	490a      	ldr	r1, [pc, #40]	; (8000cb8 <_Z13sensor_threadv+0x34>)
 8000c8e:	f843 1b04 	str.w	r1, [r3], #4
 8000c92:	4293      	cmp	r3, r2
 8000c94:	d1fa      	bne.n	8000c8c <_Z13sensor_threadv+0x8>
 8000c96:	4809      	ldr	r0, [pc, #36]	; (8000cbc <_Z13sensor_threadv+0x38>)
 8000c98:	2100      	movs	r1, #0
 8000c9a:	220a      	movs	r2, #10
 8000c9c:	f7ff faf4 	bl	8000288 <_ZN6CTimer21even_timer_set_periodEhm>
 8000ca0:	4806      	ldr	r0, [pc, #24]	; (8000cbc <_Z13sensor_threadv+0x38>)
 8000ca2:	2100      	movs	r1, #0
 8000ca4:	f7ff fb04 	bl	80002b0 <_ZN6CTimer14event_timer_ccEh>
 8000ca8:	2800      	cmp	r0, #0
 8000caa:	d0f9      	beq.n	8000ca0 <_Z13sensor_threadv+0x1c>
 8000cac:	4803      	ldr	r0, [pc, #12]	; (8000cbc <_Z13sensor_threadv+0x38>)
 8000cae:	f7ff fc7b 	bl	80005a8 <_ZN4CIMU8imu_readEv>
 8000cb2:	e7f5      	b.n	8000ca0 <_Z13sensor_threadv+0x1c>
 8000cb4:	2000009c 	.word	0x2000009c
 8000cb8:	405ccccd 	.word	0x405ccccd
 8000cbc:	2000103c 	.word	0x2000103c

08000cc0 <_Z12print_threadv>:
 8000cc0:	b507      	push	{r0, r1, r2, lr}
 8000cc2:	4821      	ldr	r0, [pc, #132]	; (8000d48 <_Z12print_threadv+0x88>)
 8000cc4:	2101      	movs	r1, #1
 8000cc6:	f44f 7296 	mov.w	r2, #300	; 0x12c
 8000cca:	f7ff fadd 	bl	8000288 <_ZN6CTimer21even_timer_set_periodEhm>
 8000cce:	481e      	ldr	r0, [pc, #120]	; (8000d48 <_Z12print_threadv+0x88>)
 8000cd0:	2101      	movs	r1, #1
 8000cd2:	f7ff faed 	bl	80002b0 <_ZN6CTimer14event_timer_ccEh>
 8000cd6:	2800      	cmp	r0, #0
 8000cd8:	d0f9      	beq.n	8000cce <_Z12print_threadv+0xe>
 8000cda:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8000cde:	481a      	ldr	r0, [pc, #104]	; (8000d48 <_Z12print_threadv+0x88>)
 8000ce0:	f7ff fe3c 	bl	800095c <_ZN5CGPIO7gpio_onEm>
 8000ce4:	4818      	ldr	r0, [pc, #96]	; (8000d48 <_Z12print_threadv+0x88>)
 8000ce6:	f7ff fac1 	bl	800026c <_ZN6CTimer8get_timeEv>
 8000cea:	4918      	ldr	r1, [pc, #96]	; (8000d4c <_Z12print_threadv+0x8c>)
 8000cec:	4602      	mov	r2, r0
 8000cee:	4816      	ldr	r0, [pc, #88]	; (8000d48 <_Z12print_threadv+0x88>)
 8000cf0:	f7ff ff76 	bl	8000be0 <_ZN9CTerminal6printfEPKcz>
 8000cf4:	4814      	ldr	r0, [pc, #80]	; (8000d48 <_Z12print_threadv+0x88>)
 8000cf6:	f7ff fe3d 	bl	8000974 <_ZN5CGPIO16get_left_encoderEv>
 8000cfa:	4604      	mov	r4, r0
 8000cfc:	4812      	ldr	r0, [pc, #72]	; (8000d48 <_Z12print_threadv+0x88>)
 8000cfe:	f7ff fe4b 	bl	8000998 <_ZN5CGPIO17get_right_encoderEv>
 8000d02:	4622      	mov	r2, r4
 8000d04:	4603      	mov	r3, r0
 8000d06:	4912      	ldr	r1, [pc, #72]	; (8000d50 <_Z12print_threadv+0x90>)
 8000d08:	480f      	ldr	r0, [pc, #60]	; (8000d48 <_Z12print_threadv+0x88>)
 8000d0a:	f7ff ff69 	bl	8000be0 <_ZN9CTerminal6printfEPKcz>
 8000d0e:	480e      	ldr	r0, [pc, #56]	; (8000d48 <_Z12print_threadv+0x88>)
 8000d10:	f7ff fd8e 	bl	8000830 <_ZN4CIMU7imu_getEv>
 8000d14:	6805      	ldr	r5, [r0, #0]
 8000d16:	480c      	ldr	r0, [pc, #48]	; (8000d48 <_Z12print_threadv+0x88>)
 8000d18:	f7ff fd8a 	bl	8000830 <_ZN4CIMU7imu_getEv>
 8000d1c:	6844      	ldr	r4, [r0, #4]
 8000d1e:	480a      	ldr	r0, [pc, #40]	; (8000d48 <_Z12print_threadv+0x88>)
 8000d20:	f7ff fd86 	bl	8000830 <_ZN4CIMU7imu_getEv>
 8000d24:	6883      	ldr	r3, [r0, #8]
 8000d26:	9300      	str	r3, [sp, #0]
 8000d28:	462a      	mov	r2, r5
 8000d2a:	4623      	mov	r3, r4
 8000d2c:	4806      	ldr	r0, [pc, #24]	; (8000d48 <_Z12print_threadv+0x88>)
 8000d2e:	4909      	ldr	r1, [pc, #36]	; (8000d54 <_Z12print_threadv+0x94>)
 8000d30:	f7ff ff56 	bl	8000be0 <_ZN9CTerminal6printfEPKcz>
 8000d34:	4804      	ldr	r0, [pc, #16]	; (8000d48 <_Z12print_threadv+0x88>)
 8000d36:	4908      	ldr	r1, [pc, #32]	; (8000d58 <_Z12print_threadv+0x98>)
 8000d38:	f7ff ff52 	bl	8000be0 <_ZN9CTerminal6printfEPKcz>
 8000d3c:	4802      	ldr	r0, [pc, #8]	; (8000d48 <_Z12print_threadv+0x88>)
 8000d3e:	f44f 4100 	mov.w	r1, #32768	; 0x8000
 8000d42:	f7ff fe11 	bl	8000968 <_ZN5CGPIO8gpio_offEm>
 8000d46:	e7c2      	b.n	8000cce <_Z12print_threadv+0xe>
 8000d48:	2000103c 	.word	0x2000103c
 8000d4c:	08001978 	.word	0x08001978
 8000d50:	08001988 	.word	0x08001988
 8000d54:	08001998 	.word	0x08001998
 8000d58:	080019ce 	.word	0x080019ce

08000d5c <usr_main>:
 8000d5c:	b538      	push	{r3, r4, r5, lr}
 8000d5e:	f000 fc7b 	bl	8001658 <sytem_clock_init>
 8000d62:	f000 f925 	bl	8000fb0 <lib_os_init>
 8000d66:	2400      	movs	r4, #0
 8000d68:	4813      	ldr	r0, [pc, #76]	; (8000db8 <usr_main+0x5c>)
 8000d6a:	f7ff faaf 	bl	80002cc <_ZN7CKodama4initEv>
 8000d6e:	4605      	mov	r5, r0
 8000d70:	4912      	ldr	r1, [pc, #72]	; (8000dbc <usr_main+0x60>)
 8000d72:	4811      	ldr	r0, [pc, #68]	; (8000db8 <usr_main+0x5c>)
 8000d74:	4622      	mov	r2, r4
 8000d76:	462b      	mov	r3, r5
 8000d78:	f7ff ff32 	bl	8000be0 <_ZN9CTerminal6printfEPKcz>
 8000d7c:	480e      	ldr	r0, [pc, #56]	; (8000db8 <usr_main+0x5c>)
 8000d7e:	b91d      	cbnz	r5, 8000d88 <usr_main+0x2c>
 8000d80:	490f      	ldr	r1, [pc, #60]	; (8000dc0 <usr_main+0x64>)
 8000d82:	f7ff ff2d 	bl	8000be0 <_ZN9CTerminal6printfEPKcz>
 8000d86:	e005      	b.n	8000d94 <usr_main+0x38>
 8000d88:	490e      	ldr	r1, [pc, #56]	; (8000dc4 <usr_main+0x68>)
 8000d8a:	3401      	adds	r4, #1
 8000d8c:	f7ff ff28 	bl	8000be0 <_ZN9CTerminal6printfEPKcz>
 8000d90:	2c08      	cmp	r4, #8
 8000d92:	d1e9      	bne.n	8000d68 <usr_main+0xc>
 8000d94:	490c      	ldr	r1, [pc, #48]	; (8000dc8 <usr_main+0x6c>)
 8000d96:	480d      	ldr	r0, [pc, #52]	; (8000dcc <usr_main+0x70>)
 8000d98:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000d9c:	2306      	movs	r3, #6
 8000d9e:	f000 f88b 	bl	8000eb8 <create_thread>
 8000da2:	2306      	movs	r3, #6
 8000da4:	480a      	ldr	r0, [pc, #40]	; (8000dd0 <usr_main+0x74>)
 8000da6:	490b      	ldr	r1, [pc, #44]	; (8000dd4 <usr_main+0x78>)
 8000da8:	f44f 7200 	mov.w	r2, #512	; 0x200
 8000dac:	f000 f884 	bl	8000eb8 <create_thread>
 8000db0:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8000db4:	f000 b87a 	b.w	8000eac <kernel_start>
 8000db8:	2000103c 	.word	0x2000103c
 8000dbc:	080019a9 	.word	0x080019a9
 8000dc0:	080019be 	.word	0x080019be
 8000dc4:	080019c5 	.word	0x080019c5
 8000dc8:	20001274 	.word	0x20001274
 8000dcc:	08000c85 	.word	0x08000c85
 8000dd0:	08000cc1 	.word	0x08000cc1
 8000dd4:	20001074 	.word	0x20001074

08000dd8 <thread_ending>:
 8000dd8:	b672      	cpsid	i
 8000dda:	4b05      	ldr	r3, [pc, #20]	; (8000df0 <thread_ending+0x18>)
 8000ddc:	681a      	ldr	r2, [r3, #0]
 8000dde:	4b05      	ldr	r3, [pc, #20]	; (8000df4 <thread_ending+0x1c>)
 8000de0:	210c      	movs	r1, #12
 8000de2:	fb01 3302 	mla	r3, r1, r2, r3
 8000de6:	2200      	movs	r2, #0
 8000de8:	605a      	str	r2, [r3, #4]
 8000dea:	b662      	cpsie	i
 8000dec:	bf00      	nop
 8000dee:	e7fd      	b.n	8000dec <thread_ending+0x14>
 8000df0:	200014bc 	.word	0x200014bc
 8000df4:	20001474 	.word	0x20001474

08000df8 <null_thread>:
 8000df8:	b508      	push	{r3, lr}
 8000dfa:	f000 fc2b 	bl	8001654 <sleep>
 8000dfe:	e7fc      	b.n	8000dfa <null_thread+0x2>

08000e00 <scheduler>:
 8000e00:	b570      	push	{r4, r5, r6, lr}
 8000e02:	2200      	movs	r2, #0
 8000e04:	4611      	mov	r1, r2
 8000e06:	4b15      	ldr	r3, [pc, #84]	; (8000e5c <scheduler+0x5c>)
 8000e08:	200c      	movs	r0, #12
 8000e0a:	fb00 f401 	mul.w	r4, r0, r1
 8000e0e:	191e      	adds	r6, r3, r4
 8000e10:	6875      	ldr	r5, [r6, #4]
 8000e12:	f015 0f02 	tst.w	r5, #2
 8000e16:	461d      	mov	r5, r3
 8000e18:	d10a      	bne.n	8000e30 <scheduler+0x30>
 8000e1a:	6876      	ldr	r6, [r6, #4]
 8000e1c:	07f6      	lsls	r6, r6, #31
 8000e1e:	d507      	bpl.n	8000e30 <scheduler+0x30>
 8000e20:	4350      	muls	r0, r2
 8000e22:	5b1c      	ldrh	r4, [r3, r4]
 8000e24:	5a18      	ldrh	r0, [r3, r0]
 8000e26:	b2a4      	uxth	r4, r4
 8000e28:	b280      	uxth	r0, r0
 8000e2a:	4284      	cmp	r4, r0
 8000e2c:	bf38      	it	cc
 8000e2e:	460a      	movcc	r2, r1
 8000e30:	200c      	movs	r0, #12
 8000e32:	4348      	muls	r0, r1
 8000e34:	5a1c      	ldrh	r4, [r3, r0]
 8000e36:	b2a4      	uxth	r4, r4
 8000e38:	b11c      	cbz	r4, 8000e42 <scheduler+0x42>
 8000e3a:	5a1c      	ldrh	r4, [r3, r0]
 8000e3c:	3c01      	subs	r4, #1
 8000e3e:	b2a4      	uxth	r4, r4
 8000e40:	521c      	strh	r4, [r3, r0]
 8000e42:	3101      	adds	r1, #1
 8000e44:	2906      	cmp	r1, #6
 8000e46:	d1de      	bne.n	8000e06 <scheduler+0x6>
 8000e48:	230c      	movs	r3, #12
 8000e4a:	4353      	muls	r3, r2
 8000e4c:	18e9      	adds	r1, r5, r3
 8000e4e:	8849      	ldrh	r1, [r1, #2]
 8000e50:	b289      	uxth	r1, r1
 8000e52:	52e9      	strh	r1, [r5, r3]
 8000e54:	4b02      	ldr	r3, [pc, #8]	; (8000e60 <scheduler+0x60>)
 8000e56:	601a      	str	r2, [r3, #0]
 8000e58:	bd70      	pop	{r4, r5, r6, pc}
 8000e5a:	bf00      	nop
 8000e5c:	20001474 	.word	0x20001474
 8000e60:	200014bc 	.word	0x200014bc

08000e64 <SysTick_Handler>:
 8000e64:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000e68:	f3ef 8308 	mrs	r3, MSP
 8000e6c:	4c0d      	ldr	r4, [pc, #52]	; (8000ea4 <SysTick_Handler+0x40>)
 8000e6e:	4d0e      	ldr	r5, [pc, #56]	; (8000ea8 <SysTick_Handler+0x44>)
 8000e70:	6822      	ldr	r2, [r4, #0]
 8000e72:	3201      	adds	r2, #1
 8000e74:	bf1d      	ittte	ne
 8000e76:	6822      	ldrne	r2, [r4, #0]
 8000e78:	210c      	movne	r1, #12
 8000e7a:	fb01 5202 	mlane	r2, r1, r2, r5
 8000e7e:	2300      	moveq	r3, #0
 8000e80:	bf14      	ite	ne
 8000e82:	6093      	strne	r3, [r2, #8]
 8000e84:	6023      	streq	r3, [r4, #0]
 8000e86:	f7ff ffbb 	bl	8000e00 <scheduler>
 8000e8a:	6822      	ldr	r2, [r4, #0]
 8000e8c:	230c      	movs	r3, #12
 8000e8e:	fb03 5302 	mla	r3, r3, r2, r5
 8000e92:	689a      	ldr	r2, [r3, #8]
 8000e94:	f06f 0306 	mvn.w	r3, #6
 8000e98:	469e      	mov	lr, r3
 8000e9a:	f382 8808 	msr	MSP, r2
 8000e9e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8000ea2:	4770      	bx	lr
 8000ea4:	200014bc 	.word	0x200014bc
 8000ea8:	20001474 	.word	0x20001474

08000eac <kernel_start>:
 8000eac:	b508      	push	{r3, lr}
 8000eae:	f000 fbbf 	bl	8001630 <sys_tick_init>
 8000eb2:	bf00      	nop
 8000eb4:	e7fd      	b.n	8000eb2 <kernel_start+0x6>
	...

08000eb8 <create_thread>:
 8000eb8:	f022 0203 	bic.w	r2, r2, #3
 8000ebc:	3a40      	subs	r2, #64	; 0x40
 8000ebe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000ec2:	eb01 0e02 	add.w	lr, r1, r2
 8000ec6:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8000eca:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8000ece:	323c      	adds	r2, #60	; 0x3c
 8000ed0:	440e      	add	r6, r1
 8000ed2:	440f      	add	r7, r1
 8000ed4:	4411      	add	r1, r2
 8000ed6:	2200      	movs	r2, #0
 8000ed8:	b672      	cpsid	i
 8000eda:	f8df c054 	ldr.w	ip, [pc, #84]	; 8000f30 <create_thread+0x78>
 8000ede:	250c      	movs	r5, #12
 8000ee0:	4355      	muls	r5, r2
 8000ee2:	eb0c 0405 	add.w	r4, ip, r5
 8000ee6:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8000eea:	f018 0f01 	tst.w	r8, #1
 8000eee:	d114      	bne.n	8000f1a <create_thread+0x62>
 8000ef0:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8000f34 <create_thread+0x7c>
 8000ef4:	f8c4 e008 	str.w	lr, [r4, #8]
 8000ef8:	2b05      	cmp	r3, #5
 8000efa:	f8c6 8000 	str.w	r8, [r6]
 8000efe:	bf98      	it	ls
 8000f00:	2306      	movls	r3, #6
 8000f02:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8000f06:	6038      	str	r0, [r7, #0]
 8000f08:	f8c1 8000 	str.w	r8, [r1]
 8000f0c:	8063      	strh	r3, [r4, #2]
 8000f0e:	f82c 3005 	strh.w	r3, [ip, r5]
 8000f12:	2501      	movs	r5, #1
 8000f14:	6065      	str	r5, [r4, #4]
 8000f16:	4614      	mov	r4, r2
 8000f18:	e000      	b.n	8000f1c <create_thread+0x64>
 8000f1a:	2406      	movs	r4, #6
 8000f1c:	b662      	cpsie	i
 8000f1e:	3201      	adds	r2, #1
 8000f20:	2a06      	cmp	r2, #6
 8000f22:	d001      	beq.n	8000f28 <create_thread+0x70>
 8000f24:	2c06      	cmp	r4, #6
 8000f26:	d0d7      	beq.n	8000ed8 <create_thread+0x20>
 8000f28:	4620      	mov	r0, r4
 8000f2a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8000f2e:	bf00      	nop
 8000f30:	20001474 	.word	0x20001474
 8000f34:	08000dd9 	.word	0x08000dd9

08000f38 <kernel_init>:
 8000f38:	b510      	push	{r4, lr}
 8000f3a:	2300      	movs	r3, #0
 8000f3c:	490b      	ldr	r1, [pc, #44]	; (8000f6c <kernel_init+0x34>)
 8000f3e:	220c      	movs	r2, #12
 8000f40:	435a      	muls	r2, r3
 8000f42:	188c      	adds	r4, r1, r2
 8000f44:	2000      	movs	r0, #0
 8000f46:	6060      	str	r0, [r4, #4]
 8000f48:	3301      	adds	r3, #1
 8000f4a:	2006      	movs	r0, #6
 8000f4c:	4283      	cmp	r3, r0
 8000f4e:	8060      	strh	r0, [r4, #2]
 8000f50:	5288      	strh	r0, [r1, r2]
 8000f52:	d1f3      	bne.n	8000f3c <kernel_init+0x4>
 8000f54:	4b06      	ldr	r3, [pc, #24]	; (8000f70 <kernel_init+0x38>)
 8000f56:	4807      	ldr	r0, [pc, #28]	; (8000f74 <kernel_init+0x3c>)
 8000f58:	4907      	ldr	r1, [pc, #28]	; (8000f78 <kernel_init+0x40>)
 8000f5a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8000f5e:	601a      	str	r2, [r3, #0]
 8000f60:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000f64:	2280      	movs	r2, #128	; 0x80
 8000f66:	23ff      	movs	r3, #255	; 0xff
 8000f68:	f7ff bfa6 	b.w	8000eb8 <create_thread>
 8000f6c:	20001474 	.word	0x20001474
 8000f70:	200014bc 	.word	0x200014bc
 8000f74:	08000df9 	.word	0x08000df9
 8000f78:	200014c0 	.word	0x200014c0

08000f7c <messages_init>:
 8000f7c:	4a0a      	ldr	r2, [pc, #40]	; (8000fa8 <messages_init+0x2c>)
 8000f7e:	2300      	movs	r3, #0
 8000f80:	b510      	push	{r4, lr}
 8000f82:	6013      	str	r3, [r2, #0]
 8000f84:	6053      	str	r3, [r2, #4]
 8000f86:	6093      	str	r3, [r2, #8]
 8000f88:	60d3      	str	r3, [r2, #12]
 8000f8a:	6113      	str	r3, [r2, #16]
 8000f8c:	6153      	str	r3, [r2, #20]
 8000f8e:	4c07      	ldr	r4, [pc, #28]	; (8000fac <messages_init+0x30>)
 8000f90:	0118      	lsls	r0, r3, #4
 8000f92:	1821      	adds	r1, r4, r0
 8000f94:	3301      	adds	r3, #1
 8000f96:	2200      	movs	r2, #0
 8000f98:	2b04      	cmp	r3, #4
 8000f9a:	604a      	str	r2, [r1, #4]
 8000f9c:	5022      	str	r2, [r4, r0]
 8000f9e:	60ca      	str	r2, [r1, #12]
 8000fa0:	608a      	str	r2, [r1, #8]
 8000fa2:	d1f4      	bne.n	8000f8e <messages_init+0x12>
 8000fa4:	bd10      	pop	{r4, pc}
 8000fa6:	bf00      	nop
 8000fa8:	20001540 	.word	0x20001540
 8000fac:	20001558 	.word	0x20001558

08000fb0 <lib_os_init>:
 8000fb0:	b508      	push	{r3, lr}
 8000fb2:	f7ff ffc1 	bl	8000f38 <kernel_init>
 8000fb6:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8000fba:	f7ff bfdf 	b.w	8000f7c <messages_init>

08000fbe <main>:
 8000fbe:	b508      	push	{r3, lr}
 8000fc0:	f7ff fecc 	bl	8000d5c <usr_main>
 8000fc4:	2000      	movs	r0, #0
 8000fc6:	bd08      	pop	{r3, pc}

08000fc8 <RCC_GetClocksFreq>:
 8000fc8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000fcc:	4f9b      	ldr	r7, [pc, #620]	; (800123c <RCC_GetClocksFreq+0x274>)
 8000fce:	687b      	ldr	r3, [r7, #4]
 8000fd0:	f003 030c 	and.w	r3, r3, #12
 8000fd4:	2b04      	cmp	r3, #4
 8000fd6:	d005      	beq.n	8000fe4 <RCC_GetClocksFreq+0x1c>
 8000fd8:	2b08      	cmp	r3, #8
 8000fda:	d006      	beq.n	8000fea <RCC_GetClocksFreq+0x22>
 8000fdc:	4a98      	ldr	r2, [pc, #608]	; (8001240 <RCC_GetClocksFreq+0x278>)
 8000fde:	6002      	str	r2, [r0, #0]
 8000fe0:	b9b3      	cbnz	r3, 8001010 <RCC_GetClocksFreq+0x48>
 8000fe2:	e016      	b.n	8001012 <RCC_GetClocksFreq+0x4a>
 8000fe4:	4b96      	ldr	r3, [pc, #600]	; (8001240 <RCC_GetClocksFreq+0x278>)
 8000fe6:	6003      	str	r3, [r0, #0]
 8000fe8:	e012      	b.n	8001010 <RCC_GetClocksFreq+0x48>
 8000fea:	687b      	ldr	r3, [r7, #4]
 8000fec:	6879      	ldr	r1, [r7, #4]
 8000fee:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8000ff2:	1c9a      	adds	r2, r3, #2
 8000ff4:	03cb      	lsls	r3, r1, #15
 8000ff6:	bf49      	itett	mi
 8000ff8:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 8000ffa:	4b92      	ldrpl	r3, [pc, #584]	; (8001244 <RCC_GetClocksFreq+0x27c>)
 8000ffc:	4990      	ldrmi	r1, [pc, #576]	; (8001240 <RCC_GetClocksFreq+0x278>)
 8000ffe:	f003 030f 	andmi.w	r3, r3, #15
 8001002:	bf44      	itt	mi
 8001004:	3301      	addmi	r3, #1
 8001006:	fbb1 f3f3 	udivmi	r3, r1, r3
 800100a:	4353      	muls	r3, r2
 800100c:	6003      	str	r3, [r0, #0]
 800100e:	e000      	b.n	8001012 <RCC_GetClocksFreq+0x4a>
 8001010:	2300      	movs	r3, #0
 8001012:	687a      	ldr	r2, [r7, #4]
 8001014:	4e8c      	ldr	r6, [pc, #560]	; (8001248 <RCC_GetClocksFreq+0x280>)
 8001016:	f8df c234 	ldr.w	ip, [pc, #564]	; 800124c <RCC_GetClocksFreq+0x284>
 800101a:	f3c2 1203 	ubfx	r2, r2, #4, #4
 800101e:	5cb4      	ldrb	r4, [r6, r2]
 8001020:	6802      	ldr	r2, [r0, #0]
 8001022:	b2e4      	uxtb	r4, r4
 8001024:	fa22 f104 	lsr.w	r1, r2, r4
 8001028:	6041      	str	r1, [r0, #4]
 800102a:	687d      	ldr	r5, [r7, #4]
 800102c:	f3c5 2502 	ubfx	r5, r5, #8, #3
 8001030:	5d75      	ldrb	r5, [r6, r5]
 8001032:	fa21 fe05 	lsr.w	lr, r1, r5
 8001036:	f8c0 e008 	str.w	lr, [r0, #8]
 800103a:	687d      	ldr	r5, [r7, #4]
 800103c:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 8001040:	5d75      	ldrb	r5, [r6, r5]
 8001042:	b2ed      	uxtb	r5, r5
 8001044:	40e9      	lsrs	r1, r5
 8001046:	60c1      	str	r1, [r0, #12]
 8001048:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 800104a:	f3c6 1804 	ubfx	r8, r6, #4, #5
 800104e:	f008 060f 	and.w	r6, r8, #15
 8001052:	f018 0f10 	tst.w	r8, #16
 8001056:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 800105a:	46e0      	mov	r8, ip
 800105c:	b2b6      	uxth	r6, r6
 800105e:	d004      	beq.n	800106a <RCC_GetClocksFreq+0xa2>
 8001060:	b11e      	cbz	r6, 800106a <RCC_GetClocksFreq+0xa2>
 8001062:	fbb3 f6f6 	udiv	r6, r3, r6
 8001066:	6106      	str	r6, [r0, #16]
 8001068:	e000      	b.n	800106c <RCC_GetClocksFreq+0xa4>
 800106a:	6102      	str	r2, [r0, #16]
 800106c:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 800106e:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001072:	f00c 060f 	and.w	r6, ip, #15
 8001076:	f01c 0f10 	tst.w	ip, #16
 800107a:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 800107e:	b2b6      	uxth	r6, r6
 8001080:	d004      	beq.n	800108c <RCC_GetClocksFreq+0xc4>
 8001082:	b11e      	cbz	r6, 800108c <RCC_GetClocksFreq+0xc4>
 8001084:	fbb3 f6f6 	udiv	r6, r3, r6
 8001088:	6146      	str	r6, [r0, #20]
 800108a:	e000      	b.n	800108e <RCC_GetClocksFreq+0xc6>
 800108c:	6142      	str	r2, [r0, #20]
 800108e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001090:	06f6      	lsls	r6, r6, #27
 8001092:	bf5a      	itte	pl
 8001094:	4e6a      	ldrpl	r6, [pc, #424]	; (8001240 <RCC_GetClocksFreq+0x278>)
 8001096:	6186      	strpl	r6, [r0, #24]
 8001098:	6182      	strmi	r2, [r0, #24]
 800109a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800109c:	06b6      	lsls	r6, r6, #26
 800109e:	bf5a      	itte	pl
 80010a0:	4e67      	ldrpl	r6, [pc, #412]	; (8001240 <RCC_GetClocksFreq+0x278>)
 80010a2:	61c6      	strpl	r6, [r0, #28]
 80010a4:	61c2      	strmi	r2, [r0, #28]
 80010a6:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010a8:	0676      	lsls	r6, r6, #25
 80010aa:	bf5a      	itte	pl
 80010ac:	4e64      	ldrpl	r6, [pc, #400]	; (8001240 <RCC_GetClocksFreq+0x278>)
 80010ae:	6206      	strpl	r6, [r0, #32]
 80010b0:	6202      	strmi	r2, [r0, #32]
 80010b2:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010b4:	05f6      	lsls	r6, r6, #23
 80010b6:	d506      	bpl.n	80010c6 <RCC_GetClocksFreq+0xfe>
 80010b8:	429a      	cmp	r2, r3
 80010ba:	d104      	bne.n	80010c6 <RCC_GetClocksFreq+0xfe>
 80010bc:	42a5      	cmp	r5, r4
 80010be:	d102      	bne.n	80010c6 <RCC_GetClocksFreq+0xfe>
 80010c0:	0056      	lsls	r6, r2, #1
 80010c2:	6246      	str	r6, [r0, #36]	; 0x24
 80010c4:	e000      	b.n	80010c8 <RCC_GetClocksFreq+0x100>
 80010c6:	6241      	str	r1, [r0, #36]	; 0x24
 80010c8:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010ca:	04f6      	lsls	r6, r6, #19
 80010cc:	d506      	bpl.n	80010dc <RCC_GetClocksFreq+0x114>
 80010ce:	429a      	cmp	r2, r3
 80010d0:	d104      	bne.n	80010dc <RCC_GetClocksFreq+0x114>
 80010d2:	42a5      	cmp	r5, r4
 80010d4:	d102      	bne.n	80010dc <RCC_GetClocksFreq+0x114>
 80010d6:	0056      	lsls	r6, r2, #1
 80010d8:	6286      	str	r6, [r0, #40]	; 0x28
 80010da:	e000      	b.n	80010de <RCC_GetClocksFreq+0x116>
 80010dc:	6281      	str	r1, [r0, #40]	; 0x28
 80010de:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010e0:	05b6      	lsls	r6, r6, #22
 80010e2:	d506      	bpl.n	80010f2 <RCC_GetClocksFreq+0x12a>
 80010e4:	429a      	cmp	r2, r3
 80010e6:	d104      	bne.n	80010f2 <RCC_GetClocksFreq+0x12a>
 80010e8:	42a5      	cmp	r5, r4
 80010ea:	d102      	bne.n	80010f2 <RCC_GetClocksFreq+0x12a>
 80010ec:	0056      	lsls	r6, r2, #1
 80010ee:	62c6      	str	r6, [r0, #44]	; 0x2c
 80010f0:	e000      	b.n	80010f4 <RCC_GetClocksFreq+0x12c>
 80010f2:	62c1      	str	r1, [r0, #44]	; 0x2c
 80010f4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80010f6:	0576      	lsls	r6, r6, #21
 80010f8:	d506      	bpl.n	8001108 <RCC_GetClocksFreq+0x140>
 80010fa:	429a      	cmp	r2, r3
 80010fc:	d104      	bne.n	8001108 <RCC_GetClocksFreq+0x140>
 80010fe:	42a5      	cmp	r5, r4
 8001100:	d102      	bne.n	8001108 <RCC_GetClocksFreq+0x140>
 8001102:	0056      	lsls	r6, r2, #1
 8001104:	64c6      	str	r6, [r0, #76]	; 0x4c
 8001106:	e000      	b.n	800110a <RCC_GetClocksFreq+0x142>
 8001108:	64c1      	str	r1, [r0, #76]	; 0x4c
 800110a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800110c:	0536      	lsls	r6, r6, #20
 800110e:	d506      	bpl.n	800111e <RCC_GetClocksFreq+0x156>
 8001110:	429a      	cmp	r2, r3
 8001112:	d104      	bne.n	800111e <RCC_GetClocksFreq+0x156>
 8001114:	42a5      	cmp	r5, r4
 8001116:	d102      	bne.n	800111e <RCC_GetClocksFreq+0x156>
 8001118:	0056      	lsls	r6, r2, #1
 800111a:	6506      	str	r6, [r0, #80]	; 0x50
 800111c:	e000      	b.n	8001120 <RCC_GetClocksFreq+0x158>
 800111e:	6501      	str	r1, [r0, #80]	; 0x50
 8001120:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001122:	04b6      	lsls	r6, r6, #18
 8001124:	d506      	bpl.n	8001134 <RCC_GetClocksFreq+0x16c>
 8001126:	429a      	cmp	r2, r3
 8001128:	d104      	bne.n	8001134 <RCC_GetClocksFreq+0x16c>
 800112a:	42a5      	cmp	r5, r4
 800112c:	d102      	bne.n	8001134 <RCC_GetClocksFreq+0x16c>
 800112e:	0056      	lsls	r6, r2, #1
 8001130:	6546      	str	r6, [r0, #84]	; 0x54
 8001132:	e000      	b.n	8001136 <RCC_GetClocksFreq+0x16e>
 8001134:	6501      	str	r1, [r0, #80]	; 0x50
 8001136:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001138:	0436      	lsls	r6, r6, #16
 800113a:	d506      	bpl.n	800114a <RCC_GetClocksFreq+0x182>
 800113c:	429a      	cmp	r2, r3
 800113e:	d104      	bne.n	800114a <RCC_GetClocksFreq+0x182>
 8001140:	42a5      	cmp	r5, r4
 8001142:	d102      	bne.n	800114a <RCC_GetClocksFreq+0x182>
 8001144:	0053      	lsls	r3, r2, #1
 8001146:	6583      	str	r3, [r0, #88]	; 0x58
 8001148:	e000      	b.n	800114c <RCC_GetClocksFreq+0x184>
 800114a:	6581      	str	r1, [r0, #88]	; 0x58
 800114c:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 800114e:	4b3b      	ldr	r3, [pc, #236]	; (800123c <RCC_GetClocksFreq+0x274>)
 8001150:	07a4      	lsls	r4, r4, #30
 8001152:	d101      	bne.n	8001158 <RCC_GetClocksFreq+0x190>
 8001154:	6381      	str	r1, [r0, #56]	; 0x38
 8001156:	e015      	b.n	8001184 <RCC_GetClocksFreq+0x1bc>
 8001158:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800115a:	f001 0103 	and.w	r1, r1, #3
 800115e:	2901      	cmp	r1, #1
 8001160:	d101      	bne.n	8001166 <RCC_GetClocksFreq+0x19e>
 8001162:	6382      	str	r2, [r0, #56]	; 0x38
 8001164:	e00e      	b.n	8001184 <RCC_GetClocksFreq+0x1bc>
 8001166:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001168:	f001 0103 	and.w	r1, r1, #3
 800116c:	2902      	cmp	r1, #2
 800116e:	d102      	bne.n	8001176 <RCC_GetClocksFreq+0x1ae>
 8001170:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001174:	e005      	b.n	8001182 <RCC_GetClocksFreq+0x1ba>
 8001176:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001178:	f003 0303 	and.w	r3, r3, #3
 800117c:	2b03      	cmp	r3, #3
 800117e:	d101      	bne.n	8001184 <RCC_GetClocksFreq+0x1bc>
 8001180:	4b2f      	ldr	r3, [pc, #188]	; (8001240 <RCC_GetClocksFreq+0x278>)
 8001182:	6383      	str	r3, [r0, #56]	; 0x38
 8001184:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001186:	4b2d      	ldr	r3, [pc, #180]	; (800123c <RCC_GetClocksFreq+0x274>)
 8001188:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 800118c:	d102      	bne.n	8001194 <RCC_GetClocksFreq+0x1cc>
 800118e:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001192:	e018      	b.n	80011c6 <RCC_GetClocksFreq+0x1fe>
 8001194:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001196:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800119a:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800119e:	d101      	bne.n	80011a4 <RCC_GetClocksFreq+0x1dc>
 80011a0:	63c2      	str	r2, [r0, #60]	; 0x3c
 80011a2:	e010      	b.n	80011c6 <RCC_GetClocksFreq+0x1fe>
 80011a4:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80011a6:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 80011aa:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 80011ae:	d102      	bne.n	80011b6 <RCC_GetClocksFreq+0x1ee>
 80011b0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80011b4:	e006      	b.n	80011c4 <RCC_GetClocksFreq+0x1fc>
 80011b6:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80011b8:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 80011bc:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 80011c0:	d101      	bne.n	80011c6 <RCC_GetClocksFreq+0x1fe>
 80011c2:	4b1f      	ldr	r3, [pc, #124]	; (8001240 <RCC_GetClocksFreq+0x278>)
 80011c4:	63c3      	str	r3, [r0, #60]	; 0x3c
 80011c6:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80011c8:	4b1c      	ldr	r3, [pc, #112]	; (800123c <RCC_GetClocksFreq+0x274>)
 80011ca:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 80011ce:	d102      	bne.n	80011d6 <RCC_GetClocksFreq+0x20e>
 80011d0:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 80011d4:	e018      	b.n	8001208 <RCC_GetClocksFreq+0x240>
 80011d6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80011d8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80011dc:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 80011e0:	d101      	bne.n	80011e6 <RCC_GetClocksFreq+0x21e>
 80011e2:	6402      	str	r2, [r0, #64]	; 0x40
 80011e4:	e010      	b.n	8001208 <RCC_GetClocksFreq+0x240>
 80011e6:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80011e8:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 80011ec:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 80011f0:	d102      	bne.n	80011f8 <RCC_GetClocksFreq+0x230>
 80011f2:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80011f6:	e006      	b.n	8001206 <RCC_GetClocksFreq+0x23e>
 80011f8:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80011fa:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 80011fe:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 8001202:	d101      	bne.n	8001208 <RCC_GetClocksFreq+0x240>
 8001204:	4b0e      	ldr	r3, [pc, #56]	; (8001240 <RCC_GetClocksFreq+0x278>)
 8001206:	6403      	str	r3, [r0, #64]	; 0x40
 8001208:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800120a:	4b0c      	ldr	r3, [pc, #48]	; (800123c <RCC_GetClocksFreq+0x274>)
 800120c:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 8001210:	d102      	bne.n	8001218 <RCC_GetClocksFreq+0x250>
 8001212:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 8001216:	e023      	b.n	8001260 <RCC_GetClocksFreq+0x298>
 8001218:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800121a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800121e:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8001222:	d101      	bne.n	8001228 <RCC_GetClocksFreq+0x260>
 8001224:	6442      	str	r2, [r0, #68]	; 0x44
 8001226:	e01b      	b.n	8001260 <RCC_GetClocksFreq+0x298>
 8001228:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800122a:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 800122e:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 8001232:	d10d      	bne.n	8001250 <RCC_GetClocksFreq+0x288>
 8001234:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001238:	e011      	b.n	800125e <RCC_GetClocksFreq+0x296>
 800123a:	bf00      	nop
 800123c:	40021000 	.word	0x40021000
 8001240:	007a1200 	.word	0x007a1200
 8001244:	003d0900 	.word	0x003d0900
 8001248:	20000020 	.word	0x20000020
 800124c:	20000000 	.word	0x20000000
 8001250:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001252:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 8001256:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 800125a:	d101      	bne.n	8001260 <RCC_GetClocksFreq+0x298>
 800125c:	4b13      	ldr	r3, [pc, #76]	; (80012ac <RCC_GetClocksFreq+0x2e4>)
 800125e:	6443      	str	r3, [r0, #68]	; 0x44
 8001260:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001262:	4b13      	ldr	r3, [pc, #76]	; (80012b0 <RCC_GetClocksFreq+0x2e8>)
 8001264:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 8001268:	d103      	bne.n	8001272 <RCC_GetClocksFreq+0x2aa>
 800126a:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 800126e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001272:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001274:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 8001278:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 800127c:	d102      	bne.n	8001284 <RCC_GetClocksFreq+0x2bc>
 800127e:	6482      	str	r2, [r0, #72]	; 0x48
 8001280:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001284:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001286:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 800128a:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 800128e:	d102      	bne.n	8001296 <RCC_GetClocksFreq+0x2ce>
 8001290:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001294:	e006      	b.n	80012a4 <RCC_GetClocksFreq+0x2dc>
 8001296:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8001298:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 800129c:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 80012a0:	d101      	bne.n	80012a6 <RCC_GetClocksFreq+0x2de>
 80012a2:	4b02      	ldr	r3, [pc, #8]	; (80012ac <RCC_GetClocksFreq+0x2e4>)
 80012a4:	6483      	str	r3, [r0, #72]	; 0x48
 80012a6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80012aa:	bf00      	nop
 80012ac:	007a1200 	.word	0x007a1200
 80012b0:	40021000 	.word	0x40021000

080012b4 <RCC_AHBPeriphClockCmd>:
 80012b4:	bf00      	nop
 80012b6:	bf00      	nop
 80012b8:	4b04      	ldr	r3, [pc, #16]	; (80012cc <RCC_AHBPeriphClockCmd+0x18>)
 80012ba:	695a      	ldr	r2, [r3, #20]
 80012bc:	b109      	cbz	r1, 80012c2 <RCC_AHBPeriphClockCmd+0xe>
 80012be:	4310      	orrs	r0, r2
 80012c0:	e001      	b.n	80012c6 <RCC_AHBPeriphClockCmd+0x12>
 80012c2:	ea22 0000 	bic.w	r0, r2, r0
 80012c6:	6158      	str	r0, [r3, #20]
 80012c8:	4770      	bx	lr
 80012ca:	bf00      	nop
 80012cc:	40021000 	.word	0x40021000

080012d0 <RCC_APB2PeriphClockCmd>:
 80012d0:	bf00      	nop
 80012d2:	bf00      	nop
 80012d4:	4b04      	ldr	r3, [pc, #16]	; (80012e8 <RCC_APB2PeriphClockCmd+0x18>)
 80012d6:	699a      	ldr	r2, [r3, #24]
 80012d8:	b109      	cbz	r1, 80012de <RCC_APB2PeriphClockCmd+0xe>
 80012da:	4310      	orrs	r0, r2
 80012dc:	e001      	b.n	80012e2 <RCC_APB2PeriphClockCmd+0x12>
 80012de:	ea22 0000 	bic.w	r0, r2, r0
 80012e2:	6198      	str	r0, [r3, #24]
 80012e4:	4770      	bx	lr
 80012e6:	bf00      	nop
 80012e8:	40021000 	.word	0x40021000

080012ec <RCC_APB1PeriphClockCmd>:
 80012ec:	bf00      	nop
 80012ee:	bf00      	nop
 80012f0:	4b04      	ldr	r3, [pc, #16]	; (8001304 <RCC_APB1PeriphClockCmd+0x18>)
 80012f2:	69da      	ldr	r2, [r3, #28]
 80012f4:	b109      	cbz	r1, 80012fa <RCC_APB1PeriphClockCmd+0xe>
 80012f6:	4310      	orrs	r0, r2
 80012f8:	e001      	b.n	80012fe <RCC_APB1PeriphClockCmd+0x12>
 80012fa:	ea22 0000 	bic.w	r0, r2, r0
 80012fe:	61d8      	str	r0, [r3, #28]
 8001300:	4770      	bx	lr
 8001302:	bf00      	nop
 8001304:	40021000 	.word	0x40021000

08001308 <TIM_TimeBaseInit>:
 8001308:	bf00      	nop
 800130a:	bf00      	nop
 800130c:	bf00      	nop
 800130e:	4a24      	ldr	r2, [pc, #144]	; (80013a0 <TIM_TimeBaseInit+0x98>)
 8001310:	8803      	ldrh	r3, [r0, #0]
 8001312:	4290      	cmp	r0, r2
 8001314:	b29b      	uxth	r3, r3
 8001316:	d012      	beq.n	800133e <TIM_TimeBaseInit+0x36>
 8001318:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 800131c:	4290      	cmp	r0, r2
 800131e:	d00e      	beq.n	800133e <TIM_TimeBaseInit+0x36>
 8001320:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001324:	d00b      	beq.n	800133e <TIM_TimeBaseInit+0x36>
 8001326:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 800132a:	4290      	cmp	r0, r2
 800132c:	d007      	beq.n	800133e <TIM_TimeBaseInit+0x36>
 800132e:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001332:	4290      	cmp	r0, r2
 8001334:	d003      	beq.n	800133e <TIM_TimeBaseInit+0x36>
 8001336:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 800133a:	4290      	cmp	r0, r2
 800133c:	d103      	bne.n	8001346 <TIM_TimeBaseInit+0x3e>
 800133e:	884a      	ldrh	r2, [r1, #2]
 8001340:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 8001344:	4313      	orrs	r3, r2
 8001346:	4a17      	ldr	r2, [pc, #92]	; (80013a4 <TIM_TimeBaseInit+0x9c>)
 8001348:	4290      	cmp	r0, r2
 800134a:	d008      	beq.n	800135e <TIM_TimeBaseInit+0x56>
 800134c:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 8001350:	4290      	cmp	r0, r2
 8001352:	bf1f      	itttt	ne
 8001354:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 8001358:	890a      	ldrhne	r2, [r1, #8]
 800135a:	b29b      	uxthne	r3, r3
 800135c:	4313      	orrne	r3, r2
 800135e:	8003      	strh	r3, [r0, #0]
 8001360:	684b      	ldr	r3, [r1, #4]
 8001362:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001364:	880b      	ldrh	r3, [r1, #0]
 8001366:	8503      	strh	r3, [r0, #40]	; 0x28
 8001368:	4b0d      	ldr	r3, [pc, #52]	; (80013a0 <TIM_TimeBaseInit+0x98>)
 800136a:	4298      	cmp	r0, r3
 800136c:	d013      	beq.n	8001396 <TIM_TimeBaseInit+0x8e>
 800136e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001372:	4298      	cmp	r0, r3
 8001374:	d00f      	beq.n	8001396 <TIM_TimeBaseInit+0x8e>
 8001376:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 800137a:	4298      	cmp	r0, r3
 800137c:	d00b      	beq.n	8001396 <TIM_TimeBaseInit+0x8e>
 800137e:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001382:	4298      	cmp	r0, r3
 8001384:	d007      	beq.n	8001396 <TIM_TimeBaseInit+0x8e>
 8001386:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 800138a:	4298      	cmp	r0, r3
 800138c:	d003      	beq.n	8001396 <TIM_TimeBaseInit+0x8e>
 800138e:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001392:	4298      	cmp	r0, r3
 8001394:	d101      	bne.n	800139a <TIM_TimeBaseInit+0x92>
 8001396:	894b      	ldrh	r3, [r1, #10]
 8001398:	8603      	strh	r3, [r0, #48]	; 0x30
 800139a:	2301      	movs	r3, #1
 800139c:	6143      	str	r3, [r0, #20]
 800139e:	4770      	bx	lr
 80013a0:	40012c00 	.word	0x40012c00
 80013a4:	40001000 	.word	0x40001000

080013a8 <TIM_Cmd>:
 80013a8:	bf00      	nop
 80013aa:	bf00      	nop
 80013ac:	8803      	ldrh	r3, [r0, #0]
 80013ae:	b119      	cbz	r1, 80013b8 <TIM_Cmd+0x10>
 80013b0:	b29b      	uxth	r3, r3
 80013b2:	f043 0301 	orr.w	r3, r3, #1
 80013b6:	e003      	b.n	80013c0 <TIM_Cmd+0x18>
 80013b8:	f023 0301 	bic.w	r3, r3, #1
 80013bc:	041b      	lsls	r3, r3, #16
 80013be:	0c1b      	lsrs	r3, r3, #16
 80013c0:	8003      	strh	r3, [r0, #0]
 80013c2:	4770      	bx	lr

080013c4 <TIM_ClearITPendingBit>:
 80013c4:	bf00      	nop
 80013c6:	43c9      	mvns	r1, r1
 80013c8:	b289      	uxth	r1, r1
 80013ca:	6101      	str	r1, [r0, #16]
 80013cc:	4770      	bx	lr
	...

080013d0 <USART_Init>:
 80013d0:	b530      	push	{r4, r5, lr}
 80013d2:	4604      	mov	r4, r0
 80013d4:	b099      	sub	sp, #100	; 0x64
 80013d6:	460d      	mov	r5, r1
 80013d8:	bf00      	nop
 80013da:	bf00      	nop
 80013dc:	bf00      	nop
 80013de:	bf00      	nop
 80013e0:	bf00      	nop
 80013e2:	bf00      	nop
 80013e4:	bf00      	nop
 80013e6:	6803      	ldr	r3, [r0, #0]
 80013e8:	f023 0301 	bic.w	r3, r3, #1
 80013ec:	6003      	str	r3, [r0, #0]
 80013ee:	6843      	ldr	r3, [r0, #4]
 80013f0:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 80013f4:	688b      	ldr	r3, [r1, #8]
 80013f6:	68c9      	ldr	r1, [r1, #12]
 80013f8:	4313      	orrs	r3, r2
 80013fa:	6043      	str	r3, [r0, #4]
 80013fc:	686a      	ldr	r2, [r5, #4]
 80013fe:	6803      	ldr	r3, [r0, #0]
 8001400:	4311      	orrs	r1, r2
 8001402:	692a      	ldr	r2, [r5, #16]
 8001404:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001408:	430a      	orrs	r2, r1
 800140a:	f023 030c 	bic.w	r3, r3, #12
 800140e:	4313      	orrs	r3, r2
 8001410:	6003      	str	r3, [r0, #0]
 8001412:	6883      	ldr	r3, [r0, #8]
 8001414:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001418:	696b      	ldr	r3, [r5, #20]
 800141a:	4313      	orrs	r3, r2
 800141c:	6083      	str	r3, [r0, #8]
 800141e:	a801      	add	r0, sp, #4
 8001420:	f7ff fdd2 	bl	8000fc8 <RCC_GetClocksFreq>
 8001424:	4b17      	ldr	r3, [pc, #92]	; (8001484 <USART_Init+0xb4>)
 8001426:	429c      	cmp	r4, r3
 8001428:	d101      	bne.n	800142e <USART_Init+0x5e>
 800142a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800142c:	e00e      	b.n	800144c <USART_Init+0x7c>
 800142e:	4b16      	ldr	r3, [pc, #88]	; (8001488 <USART_Init+0xb8>)
 8001430:	429c      	cmp	r4, r3
 8001432:	d101      	bne.n	8001438 <USART_Init+0x68>
 8001434:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001436:	e009      	b.n	800144c <USART_Init+0x7c>
 8001438:	4b14      	ldr	r3, [pc, #80]	; (800148c <USART_Init+0xbc>)
 800143a:	429c      	cmp	r4, r3
 800143c:	d101      	bne.n	8001442 <USART_Init+0x72>
 800143e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001440:	e004      	b.n	800144c <USART_Init+0x7c>
 8001442:	4b13      	ldr	r3, [pc, #76]	; (8001490 <USART_Init+0xc0>)
 8001444:	429c      	cmp	r4, r3
 8001446:	bf0c      	ite	eq
 8001448:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 800144a:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 800144c:	6822      	ldr	r2, [r4, #0]
 800144e:	6829      	ldr	r1, [r5, #0]
 8001450:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001454:	bf18      	it	ne
 8001456:	005b      	lslne	r3, r3, #1
 8001458:	fbb3 f2f1 	udiv	r2, r3, r1
 800145c:	fb01 3312 	mls	r3, r1, r2, r3
 8001460:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001464:	6823      	ldr	r3, [r4, #0]
 8001466:	bf28      	it	cs
 8001468:	3201      	addcs	r2, #1
 800146a:	041b      	lsls	r3, r3, #16
 800146c:	bf41      	itttt	mi
 800146e:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001472:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001476:	4013      	andmi	r3, r2
 8001478:	ea41 0203 	orrmi.w	r2, r1, r3
 800147c:	b292      	uxth	r2, r2
 800147e:	81a2      	strh	r2, [r4, #12]
 8001480:	b019      	add	sp, #100	; 0x64
 8001482:	bd30      	pop	{r4, r5, pc}
 8001484:	40013800 	.word	0x40013800
 8001488:	40004400 	.word	0x40004400
 800148c:	40004800 	.word	0x40004800
 8001490:	40004c00 	.word	0x40004c00

08001494 <USART_Cmd>:
 8001494:	bf00      	nop
 8001496:	bf00      	nop
 8001498:	6803      	ldr	r3, [r0, #0]
 800149a:	b111      	cbz	r1, 80014a2 <USART_Cmd+0xe>
 800149c:	f043 0301 	orr.w	r3, r3, #1
 80014a0:	e001      	b.n	80014a6 <USART_Cmd+0x12>
 80014a2:	f023 0301 	bic.w	r3, r3, #1
 80014a6:	6003      	str	r3, [r0, #0]
 80014a8:	4770      	bx	lr

080014aa <USART_ReceiveData>:
 80014aa:	bf00      	nop
 80014ac:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 80014ae:	f3c0 0008 	ubfx	r0, r0, #0, #9
 80014b2:	4770      	bx	lr

080014b4 <USART_ITConfig>:
 80014b4:	b510      	push	{r4, lr}
 80014b6:	bf00      	nop
 80014b8:	bf00      	nop
 80014ba:	bf00      	nop
 80014bc:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80014c0:	2301      	movs	r3, #1
 80014c2:	b2c9      	uxtb	r1, r1
 80014c4:	2c02      	cmp	r4, #2
 80014c6:	fa03 f301 	lsl.w	r3, r3, r1
 80014ca:	d101      	bne.n	80014d0 <USART_ITConfig+0x1c>
 80014cc:	3004      	adds	r0, #4
 80014ce:	e002      	b.n	80014d6 <USART_ITConfig+0x22>
 80014d0:	2c03      	cmp	r4, #3
 80014d2:	bf08      	it	eq
 80014d4:	3008      	addeq	r0, #8
 80014d6:	b112      	cbz	r2, 80014de <USART_ITConfig+0x2a>
 80014d8:	6802      	ldr	r2, [r0, #0]
 80014da:	4313      	orrs	r3, r2
 80014dc:	e002      	b.n	80014e4 <USART_ITConfig+0x30>
 80014de:	6802      	ldr	r2, [r0, #0]
 80014e0:	ea22 0303 	bic.w	r3, r2, r3
 80014e4:	6003      	str	r3, [r0, #0]
 80014e6:	bd10      	pop	{r4, pc}

080014e8 <USART_GetITStatus>:
 80014e8:	b510      	push	{r4, lr}
 80014ea:	bf00      	nop
 80014ec:	bf00      	nop
 80014ee:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80014f2:	b2cc      	uxtb	r4, r1
 80014f4:	2301      	movs	r3, #1
 80014f6:	2a01      	cmp	r2, #1
 80014f8:	fa03 f304 	lsl.w	r3, r3, r4
 80014fc:	d101      	bne.n	8001502 <USART_GetITStatus+0x1a>
 80014fe:	6802      	ldr	r2, [r0, #0]
 8001500:	e003      	b.n	800150a <USART_GetITStatus+0x22>
 8001502:	2a02      	cmp	r2, #2
 8001504:	bf0c      	ite	eq
 8001506:	6842      	ldreq	r2, [r0, #4]
 8001508:	6882      	ldrne	r2, [r0, #8]
 800150a:	4013      	ands	r3, r2
 800150c:	69c2      	ldr	r2, [r0, #28]
 800150e:	b13b      	cbz	r3, 8001520 <USART_GetITStatus+0x38>
 8001510:	0c09      	lsrs	r1, r1, #16
 8001512:	2301      	movs	r3, #1
 8001514:	408b      	lsls	r3, r1
 8001516:	4213      	tst	r3, r2
 8001518:	bf14      	ite	ne
 800151a:	2001      	movne	r0, #1
 800151c:	2000      	moveq	r0, #0
 800151e:	bd10      	pop	{r4, pc}
 8001520:	4618      	mov	r0, r3
 8001522:	bd10      	pop	{r4, pc}

08001524 <USART_ClearITPendingBit>:
 8001524:	bf00      	nop
 8001526:	bf00      	nop
 8001528:	2301      	movs	r3, #1
 800152a:	0c09      	lsrs	r1, r1, #16
 800152c:	408b      	lsls	r3, r1
 800152e:	6203      	str	r3, [r0, #32]
 8001530:	4770      	bx	lr
	...

08001534 <SystemInit>:
 8001534:	4a39      	ldr	r2, [pc, #228]	; (800161c <SystemInit+0xe8>)
 8001536:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 800153a:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 800153e:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001542:	4b37      	ldr	r3, [pc, #220]	; (8001620 <SystemInit+0xec>)
 8001544:	681a      	ldr	r2, [r3, #0]
 8001546:	f042 0201 	orr.w	r2, r2, #1
 800154a:	601a      	str	r2, [r3, #0]
 800154c:	6859      	ldr	r1, [r3, #4]
 800154e:	4a35      	ldr	r2, [pc, #212]	; (8001624 <SystemInit+0xf0>)
 8001550:	400a      	ands	r2, r1
 8001552:	605a      	str	r2, [r3, #4]
 8001554:	681a      	ldr	r2, [r3, #0]
 8001556:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 800155a:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 800155e:	601a      	str	r2, [r3, #0]
 8001560:	681a      	ldr	r2, [r3, #0]
 8001562:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001566:	601a      	str	r2, [r3, #0]
 8001568:	685a      	ldr	r2, [r3, #4]
 800156a:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 800156e:	605a      	str	r2, [r3, #4]
 8001570:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001572:	f022 020f 	bic.w	r2, r2, #15
 8001576:	62da      	str	r2, [r3, #44]	; 0x2c
 8001578:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800157a:	4a2b      	ldr	r2, [pc, #172]	; (8001628 <SystemInit+0xf4>)
 800157c:	b082      	sub	sp, #8
 800157e:	400a      	ands	r2, r1
 8001580:	631a      	str	r2, [r3, #48]	; 0x30
 8001582:	2200      	movs	r2, #0
 8001584:	609a      	str	r2, [r3, #8]
 8001586:	9200      	str	r2, [sp, #0]
 8001588:	9201      	str	r2, [sp, #4]
 800158a:	681a      	ldr	r2, [r3, #0]
 800158c:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001590:	601a      	str	r2, [r3, #0]
 8001592:	681a      	ldr	r2, [r3, #0]
 8001594:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001598:	9201      	str	r2, [sp, #4]
 800159a:	9a00      	ldr	r2, [sp, #0]
 800159c:	3201      	adds	r2, #1
 800159e:	9200      	str	r2, [sp, #0]
 80015a0:	9a01      	ldr	r2, [sp, #4]
 80015a2:	b91a      	cbnz	r2, 80015ac <SystemInit+0x78>
 80015a4:	9a00      	ldr	r2, [sp, #0]
 80015a6:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 80015aa:	d1f2      	bne.n	8001592 <SystemInit+0x5e>
 80015ac:	681a      	ldr	r2, [r3, #0]
 80015ae:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 80015b2:	bf18      	it	ne
 80015b4:	2201      	movne	r2, #1
 80015b6:	9201      	str	r2, [sp, #4]
 80015b8:	9a01      	ldr	r2, [sp, #4]
 80015ba:	2a01      	cmp	r2, #1
 80015bc:	d005      	beq.n	80015ca <SystemInit+0x96>
 80015be:	4b17      	ldr	r3, [pc, #92]	; (800161c <SystemInit+0xe8>)
 80015c0:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 80015c4:	609a      	str	r2, [r3, #8]
 80015c6:	b002      	add	sp, #8
 80015c8:	4770      	bx	lr
 80015ca:	4a18      	ldr	r2, [pc, #96]	; (800162c <SystemInit+0xf8>)
 80015cc:	2112      	movs	r1, #18
 80015ce:	6011      	str	r1, [r2, #0]
 80015d0:	685a      	ldr	r2, [r3, #4]
 80015d2:	605a      	str	r2, [r3, #4]
 80015d4:	685a      	ldr	r2, [r3, #4]
 80015d6:	605a      	str	r2, [r3, #4]
 80015d8:	685a      	ldr	r2, [r3, #4]
 80015da:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 80015de:	605a      	str	r2, [r3, #4]
 80015e0:	685a      	ldr	r2, [r3, #4]
 80015e2:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 80015e6:	605a      	str	r2, [r3, #4]
 80015e8:	685a      	ldr	r2, [r3, #4]
 80015ea:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 80015ee:	605a      	str	r2, [r3, #4]
 80015f0:	681a      	ldr	r2, [r3, #0]
 80015f2:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 80015f6:	601a      	str	r2, [r3, #0]
 80015f8:	6819      	ldr	r1, [r3, #0]
 80015fa:	4a09      	ldr	r2, [pc, #36]	; (8001620 <SystemInit+0xec>)
 80015fc:	0189      	lsls	r1, r1, #6
 80015fe:	d5fb      	bpl.n	80015f8 <SystemInit+0xc4>
 8001600:	6851      	ldr	r1, [r2, #4]
 8001602:	f021 0103 	bic.w	r1, r1, #3
 8001606:	6051      	str	r1, [r2, #4]
 8001608:	6851      	ldr	r1, [r2, #4]
 800160a:	f041 0102 	orr.w	r1, r1, #2
 800160e:	6051      	str	r1, [r2, #4]
 8001610:	685a      	ldr	r2, [r3, #4]
 8001612:	f002 020c 	and.w	r2, r2, #12
 8001616:	2a08      	cmp	r2, #8
 8001618:	d1fa      	bne.n	8001610 <SystemInit+0xdc>
 800161a:	e7d0      	b.n	80015be <SystemInit+0x8a>
 800161c:	e000ed00 	.word	0xe000ed00
 8001620:	40021000 	.word	0x40021000
 8001624:	f87fc00c 	.word	0xf87fc00c
 8001628:	ff00fccc 	.word	0xff00fccc
 800162c:	40022000 	.word	0x40022000

08001630 <sys_tick_init>:
 8001630:	4b06      	ldr	r3, [pc, #24]	; (800164c <sys_tick_init+0x1c>)
 8001632:	f244 6250 	movw	r2, #18000	; 0x4650
 8001636:	605a      	str	r2, [r3, #4]
 8001638:	4a05      	ldr	r2, [pc, #20]	; (8001650 <sys_tick_init+0x20>)
 800163a:	21f0      	movs	r1, #240	; 0xf0
 800163c:	f882 1023 	strb.w	r1, [r2, #35]	; 0x23
 8001640:	2200      	movs	r2, #0
 8001642:	609a      	str	r2, [r3, #8]
 8001644:	2207      	movs	r2, #7
 8001646:	601a      	str	r2, [r3, #0]
 8001648:	4770      	bx	lr
 800164a:	bf00      	nop
 800164c:	e000e010 	.word	0xe000e010
 8001650:	e000ed00 	.word	0xe000ed00

08001654 <sleep>:
 8001654:	bf30      	wfi
 8001656:	4770      	bx	lr

08001658 <sytem_clock_init>:
 8001658:	f7ff bf6c 	b.w	8001534 <SystemInit>

0800165c <NVIC_Init>:
 800165c:	b510      	push	{r4, lr}
 800165e:	bf00      	nop
 8001660:	bf00      	nop
 8001662:	bf00      	nop
 8001664:	78c2      	ldrb	r2, [r0, #3]
 8001666:	7803      	ldrb	r3, [r0, #0]
 8001668:	b312      	cbz	r2, 80016b0 <NVIC_Init+0x54>
 800166a:	4a17      	ldr	r2, [pc, #92]	; (80016c8 <NVIC_Init+0x6c>)
 800166c:	68d1      	ldr	r1, [r2, #12]
 800166e:	7842      	ldrb	r2, [r0, #1]
 8001670:	43c9      	mvns	r1, r1
 8001672:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001676:	f1c1 0404 	rsb	r4, r1, #4
 800167a:	b2e4      	uxtb	r4, r4
 800167c:	40a2      	lsls	r2, r4
 800167e:	b2d4      	uxtb	r4, r2
 8001680:	220f      	movs	r2, #15
 8001682:	410a      	asrs	r2, r1
 8001684:	7881      	ldrb	r1, [r0, #2]
 8001686:	400a      	ands	r2, r1
 8001688:	4322      	orrs	r2, r4
 800168a:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 800168e:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8001692:	0112      	lsls	r2, r2, #4
 8001694:	b2d2      	uxtb	r2, r2
 8001696:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 800169a:	7803      	ldrb	r3, [r0, #0]
 800169c:	2201      	movs	r2, #1
 800169e:	0959      	lsrs	r1, r3, #5
 80016a0:	f003 031f 	and.w	r3, r3, #31
 80016a4:	fa02 f303 	lsl.w	r3, r2, r3
 80016a8:	4a08      	ldr	r2, [pc, #32]	; (80016cc <NVIC_Init+0x70>)
 80016aa:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 80016ae:	bd10      	pop	{r4, pc}
 80016b0:	095a      	lsrs	r2, r3, #5
 80016b2:	2101      	movs	r1, #1
 80016b4:	f003 031f 	and.w	r3, r3, #31
 80016b8:	4099      	lsls	r1, r3
 80016ba:	f102 0320 	add.w	r3, r2, #32
 80016be:	4a03      	ldr	r2, [pc, #12]	; (80016cc <NVIC_Init+0x70>)
 80016c0:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 80016c4:	bd10      	pop	{r4, pc}
 80016c6:	bf00      	nop
 80016c8:	e000ed00 	.word	0xe000ed00
 80016cc:	e000e100 	.word	0xe000e100

080016d0 <EXTI_Init>:
 80016d0:	b570      	push	{r4, r5, r6, lr}
 80016d2:	bf00      	nop
 80016d4:	bf00      	nop
 80016d6:	bf00      	nop
 80016d8:	bf00      	nop
 80016da:	7982      	ldrb	r2, [r0, #6]
 80016dc:	6803      	ldr	r3, [r0, #0]
 80016de:	7904      	ldrb	r4, [r0, #4]
 80016e0:	2a00      	cmp	r2, #0
 80016e2:	d064      	beq.n	80017ae <EXTI_Init+0xde>
 80016e4:	f023 011f 	bic.w	r1, r3, #31
 80016e8:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 80016ec:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80016f0:	f003 021f 	and.w	r2, r3, #31
 80016f4:	680d      	ldr	r5, [r1, #0]
 80016f6:	2301      	movs	r3, #1
 80016f8:	fa03 f202 	lsl.w	r2, r3, r2
 80016fc:	ea25 0202 	bic.w	r2, r5, r2
 8001700:	600a      	str	r2, [r1, #0]
 8001702:	6802      	ldr	r2, [r0, #0]
 8001704:	4d32      	ldr	r5, [pc, #200]	; (80017d0 <EXTI_Init+0x100>)
 8001706:	f022 061f 	bic.w	r6, r2, #31
 800170a:	f002 021f 	and.w	r2, r2, #31
 800170e:	5971      	ldr	r1, [r6, r5]
 8001710:	fa03 f202 	lsl.w	r2, r3, r2
 8001714:	ea21 0202 	bic.w	r2, r1, r2
 8001718:	5172      	str	r2, [r6, r5]
 800171a:	6801      	ldr	r1, [r0, #0]
 800171c:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 8001720:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 8001724:	f021 041f 	bic.w	r4, r1, #31
 8001728:	f001 011f 	and.w	r1, r1, #31
 800172c:	5915      	ldr	r5, [r2, r4]
 800172e:	fa03 f101 	lsl.w	r1, r3, r1
 8001732:	4329      	orrs	r1, r5
 8001734:	5111      	str	r1, [r2, r4]
 8001736:	6802      	ldr	r2, [r0, #0]
 8001738:	4d26      	ldr	r5, [pc, #152]	; (80017d4 <EXTI_Init+0x104>)
 800173a:	f022 041f 	bic.w	r4, r2, #31
 800173e:	f002 021f 	and.w	r2, r2, #31
 8001742:	5961      	ldr	r1, [r4, r5]
 8001744:	fa03 f202 	lsl.w	r2, r3, r2
 8001748:	ea21 0202 	bic.w	r2, r1, r2
 800174c:	5162      	str	r2, [r4, r5]
 800174e:	6802      	ldr	r2, [r0, #0]
 8001750:	4c21      	ldr	r4, [pc, #132]	; (80017d8 <EXTI_Init+0x108>)
 8001752:	f022 061f 	bic.w	r6, r2, #31
 8001756:	f002 021f 	and.w	r2, r2, #31
 800175a:	5931      	ldr	r1, [r6, r4]
 800175c:	fa03 f202 	lsl.w	r2, r3, r2
 8001760:	ea21 0202 	bic.w	r2, r1, r2
 8001764:	7941      	ldrb	r1, [r0, #5]
 8001766:	5132      	str	r2, [r6, r4]
 8001768:	2910      	cmp	r1, #16
 800176a:	6802      	ldr	r2, [r0, #0]
 800176c:	d112      	bne.n	8001794 <EXTI_Init+0xc4>
 800176e:	f022 011f 	bic.w	r1, r2, #31
 8001772:	f002 021f 	and.w	r2, r2, #31
 8001776:	594e      	ldr	r6, [r1, r5]
 8001778:	fa03 f202 	lsl.w	r2, r3, r2
 800177c:	4332      	orrs	r2, r6
 800177e:	514a      	str	r2, [r1, r5]
 8001780:	6802      	ldr	r2, [r0, #0]
 8001782:	f022 011f 	bic.w	r1, r2, #31
 8001786:	f002 021f 	and.w	r2, r2, #31
 800178a:	5908      	ldr	r0, [r1, r4]
 800178c:	4093      	lsls	r3, r2
 800178e:	4303      	orrs	r3, r0
 8001790:	510b      	str	r3, [r1, r4]
 8001792:	bd70      	pop	{r4, r5, r6, pc}
 8001794:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 8001798:	f022 001f 	bic.w	r0, r2, #31
 800179c:	f501 3182 	add.w	r1, r1, #66560	; 0x10400
 80017a0:	f002 021f 	and.w	r2, r2, #31
 80017a4:	580c      	ldr	r4, [r1, r0]
 80017a6:	4093      	lsls	r3, r2
 80017a8:	4323      	orrs	r3, r4
 80017aa:	500b      	str	r3, [r1, r0]
 80017ac:	bd70      	pop	{r4, r5, r6, pc}
 80017ae:	f104 4280 	add.w	r2, r4, #1073741824	; 0x40000000
 80017b2:	f502 3282 	add.w	r2, r2, #66560	; 0x10400
 80017b6:	f023 041f 	bic.w	r4, r3, #31
 80017ba:	2001      	movs	r0, #1
 80017bc:	5911      	ldr	r1, [r2, r4]
 80017be:	f003 031f 	and.w	r3, r3, #31
 80017c2:	fa00 f303 	lsl.w	r3, r0, r3
 80017c6:	ea21 0303 	bic.w	r3, r1, r3
 80017ca:	5113      	str	r3, [r2, r4]
 80017cc:	bd70      	pop	{r4, r5, r6, pc}
 80017ce:	bf00      	nop
 80017d0:	40010404 	.word	0x40010404
 80017d4:	40010408 	.word	0x40010408
 80017d8:	4001040c 	.word	0x4001040c

080017dc <EXTI_ClearITPendingBit>:
 80017dc:	f020 011f 	bic.w	r1, r0, #31
 80017e0:	2301      	movs	r3, #1
 80017e2:	f000 001f 	and.w	r0, r0, #31
 80017e6:	4a02      	ldr	r2, [pc, #8]	; (80017f0 <EXTI_ClearITPendingBit+0x14>)
 80017e8:	4083      	lsls	r3, r0
 80017ea:	508b      	str	r3, [r1, r2]
 80017ec:	4770      	bx	lr
 80017ee:	bf00      	nop
 80017f0:	40010414 	.word	0x40010414

080017f4 <GPIO_Init>:
 80017f4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80017f6:	bf00      	nop
 80017f8:	bf00      	nop
 80017fa:	bf00      	nop
 80017fc:	bf00      	nop
 80017fe:	2300      	movs	r3, #0
 8001800:	680e      	ldr	r6, [r1, #0]
 8001802:	461c      	mov	r4, r3
 8001804:	2501      	movs	r5, #1
 8001806:	40a5      	lsls	r5, r4
 8001808:	ea05 0e06 	and.w	lr, r5, r6
 800180c:	45ae      	cmp	lr, r5
 800180e:	d12d      	bne.n	800186c <GPIO_Init+0x78>
 8001810:	790f      	ldrb	r7, [r1, #4]
 8001812:	1e7a      	subs	r2, r7, #1
 8001814:	2a01      	cmp	r2, #1
 8001816:	d817      	bhi.n	8001848 <GPIO_Init+0x54>
 8001818:	bf00      	nop
 800181a:	2203      	movs	r2, #3
 800181c:	6885      	ldr	r5, [r0, #8]
 800181e:	409a      	lsls	r2, r3
 8001820:	ea25 0202 	bic.w	r2, r5, r2
 8001824:	6082      	str	r2, [r0, #8]
 8001826:	794d      	ldrb	r5, [r1, #5]
 8001828:	6882      	ldr	r2, [r0, #8]
 800182a:	409d      	lsls	r5, r3
 800182c:	4315      	orrs	r5, r2
 800182e:	6085      	str	r5, [r0, #8]
 8001830:	bf00      	nop
 8001832:	8882      	ldrh	r2, [r0, #4]
 8001834:	b292      	uxth	r2, r2
 8001836:	ea22 020e 	bic.w	r2, r2, lr
 800183a:	8082      	strh	r2, [r0, #4]
 800183c:	798a      	ldrb	r2, [r1, #6]
 800183e:	8885      	ldrh	r5, [r0, #4]
 8001840:	40a2      	lsls	r2, r4
 8001842:	432a      	orrs	r2, r5
 8001844:	b292      	uxth	r2, r2
 8001846:	8082      	strh	r2, [r0, #4]
 8001848:	2203      	movs	r2, #3
 800184a:	6805      	ldr	r5, [r0, #0]
 800184c:	409a      	lsls	r2, r3
 800184e:	43d2      	mvns	r2, r2
 8001850:	4015      	ands	r5, r2
 8001852:	6005      	str	r5, [r0, #0]
 8001854:	6805      	ldr	r5, [r0, #0]
 8001856:	409f      	lsls	r7, r3
 8001858:	432f      	orrs	r7, r5
 800185a:	6007      	str	r7, [r0, #0]
 800185c:	68c7      	ldr	r7, [r0, #12]
 800185e:	4017      	ands	r7, r2
 8001860:	79ca      	ldrb	r2, [r1, #7]
 8001862:	fa02 f503 	lsl.w	r5, r2, r3
 8001866:	ea47 0205 	orr.w	r2, r7, r5
 800186a:	60c2      	str	r2, [r0, #12]
 800186c:	3401      	adds	r4, #1
 800186e:	2c10      	cmp	r4, #16
 8001870:	f103 0302 	add.w	r3, r3, #2
 8001874:	d1c6      	bne.n	8001804 <GPIO_Init+0x10>
 8001876:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001878 <GPIO_SetBits>:
 8001878:	bf00      	nop
 800187a:	bf00      	nop
 800187c:	6181      	str	r1, [r0, #24]
 800187e:	4770      	bx	lr

08001880 <GPIO_ResetBits>:
 8001880:	bf00      	nop
 8001882:	bf00      	nop
 8001884:	8501      	strh	r1, [r0, #40]	; 0x28
 8001886:	4770      	bx	lr

08001888 <GPIO_PinAFConfig>:
 8001888:	b510      	push	{r4, lr}
 800188a:	bf00      	nop
 800188c:	bf00      	nop
 800188e:	bf00      	nop
 8001890:	f001 0307 	and.w	r3, r1, #7
 8001894:	08c9      	lsrs	r1, r1, #3
 8001896:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 800189a:	009b      	lsls	r3, r3, #2
 800189c:	6a04      	ldr	r4, [r0, #32]
 800189e:	210f      	movs	r1, #15
 80018a0:	4099      	lsls	r1, r3
 80018a2:	ea24 0101 	bic.w	r1, r4, r1
 80018a6:	6201      	str	r1, [r0, #32]
 80018a8:	6a01      	ldr	r1, [r0, #32]
 80018aa:	409a      	lsls	r2, r3
 80018ac:	430a      	orrs	r2, r1
 80018ae:	6202      	str	r2, [r0, #32]
 80018b0:	bd10      	pop	{r4, pc}

080018b2 <Default_Handler>:
 80018b2:	4668      	mov	r0, sp
 80018b4:	f020 0107 	bic.w	r1, r0, #7
 80018b8:	468d      	mov	sp, r1
 80018ba:	b501      	push	{r0, lr}
 80018bc:	bf00      	nop
 80018be:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 80018c2:	4685      	mov	sp, r0
 80018c4:	4770      	bx	lr

080018c6 <HardFault_Handler>:
 80018c6:	bf00      	nop
 80018c8:	e7fd      	b.n	80018c6 <HardFault_Handler>
	...

080018cc <_reset_init>:
 80018cc:	490e      	ldr	r1, [pc, #56]	; (8001908 <_reset_init+0x3c>)
 80018ce:	4b0f      	ldr	r3, [pc, #60]	; (800190c <_reset_init+0x40>)
 80018d0:	1a5b      	subs	r3, r3, r1
 80018d2:	109b      	asrs	r3, r3, #2
 80018d4:	2200      	movs	r2, #0
 80018d6:	429a      	cmp	r2, r3
 80018d8:	d006      	beq.n	80018e8 <_reset_init+0x1c>
 80018da:	480d      	ldr	r0, [pc, #52]	; (8001910 <_reset_init+0x44>)
 80018dc:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 80018e0:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 80018e4:	3201      	adds	r2, #1
 80018e6:	e7f6      	b.n	80018d6 <_reset_init+0xa>
 80018e8:	4a0a      	ldr	r2, [pc, #40]	; (8001914 <_reset_init+0x48>)
 80018ea:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 80018ee:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 80018f2:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 80018f6:	f502 720c 	add.w	r2, r2, #560	; 0x230
 80018fa:	6853      	ldr	r3, [r2, #4]
 80018fc:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8001900:	6053      	str	r3, [r2, #4]
 8001902:	f7ff bb5c 	b.w	8000fbe <main>
 8001906:	bf00      	nop
 8001908:	20000000 	.word	0x20000000
 800190c:	20000030 	.word	0x20000030
 8001910:	080019d4 	.word	0x080019d4
 8001914:	e000ed00 	.word	0xe000ed00

08001918 <SYSCFG_EXTILineConfig>:
 8001918:	b510      	push	{r4, lr}
 800191a:	bf00      	nop
 800191c:	bf00      	nop
 800191e:	f001 0303 	and.w	r3, r1, #3
 8001922:	f001 01fc 	and.w	r1, r1, #252	; 0xfc
 8001926:	f101 4180 	add.w	r1, r1, #1073741824	; 0x40000000
 800192a:	f501 3180 	add.w	r1, r1, #65536	; 0x10000
 800192e:	009b      	lsls	r3, r3, #2
 8001930:	688c      	ldr	r4, [r1, #8]
 8001932:	220f      	movs	r2, #15
 8001934:	409a      	lsls	r2, r3
 8001936:	ea24 0202 	bic.w	r2, r4, r2
 800193a:	608a      	str	r2, [r1, #8]
 800193c:	688a      	ldr	r2, [r1, #8]
 800193e:	4098      	lsls	r0, r3
 8001940:	4310      	orrs	r0, r2
 8001942:	6088      	str	r0, [r1, #8]
 8001944:	bd10      	pop	{r4, pc}

08001946 <_text>:
	...

08001948 <_init>:
 8001948:	e1a0c00d 	mov	ip, sp
 800194c:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8001950:	e24cb004 	sub	fp, ip, #4
 8001954:	e24bd028 	sub	sp, fp, #40	; 0x28
 8001958:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 800195c:	e12fff1e 	bx	lr

08001960 <_fini>:
 8001960:	e1a0c00d 	mov	ip, sp
 8001964:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8001968:	e24cb004 	sub	fp, ip, #4
 800196c:	e24bd028 	sub	sp, fp, #40	; 0x28
 8001970:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8001974:	e12fff1e 	bx	lr
 8001978:	74737973 	.word	0x74737973
 800197c:	74206d65 	.word	0x74206d65
 8001980:	20656d69 	.word	0x20656d69
 8001984:	000a7525 	.word	0x000a7525
 8001988:	6f636e65 	.word	0x6f636e65
 800198c:	73726564 	.word	0x73726564
 8001990:	20692520 	.word	0x20692520
 8001994:	000a6925 	.word	0x000a6925
 8001998:	6c676e61 	.word	0x6c676e61
 800199c:	25207365 	.word	0x25207365
 80019a0:	69252069 	.word	0x69252069
 80019a4:	0a692520 	.word	0x0a692520
 80019a8:	646f6b00 	.word	0x646f6b00
 80019ac:	20616d61 	.word	0x20616d61
 80019b0:	74696e69 	.word	0x74696e69
 80019b4:	20692520 	.word	0x20692520
 80019b8:	3a206925 	.word	0x3a206925
 80019bc:	5b200020 	.word	0x5b200020
 80019c0:	0a5d4b4f 	.word	0x0a5d4b4f
 80019c4:	465b2000 	.word	0x465b2000
 80019c8:	454c4941 	.word	0x454c4941
 80019cc:	000a5d44 	.word	0x000a5d44

080019d0 <__EH_FRAME_BEGIN__>:
 80019d0:	00000000                                ....
