
bin/main.elf:     file format elf32-littlearm


Disassembly of section .text:

08000188 <_ZN7CKodama5init_Ev>:
 8000188:	b510      	push	{r4, lr}
 800018a:	4604      	mov	r4, r0
 800018c:	f000 fff2 	bl	8001174 <_ZN5CGPIO9gpio_initEv>
 8000190:	2800      	cmp	r0, #0
 8000192:	da03      	bge.n	800019c <_ZN7CKodama5init_Ev+0x14>
 8000194:	f5a0 501c 	sub.w	r0, r0, #9984	; 0x2700
 8000198:	3810      	subs	r0, #16
 800019a:	bd10      	pop	{r4, pc}
 800019c:	4620      	mov	r0, r4
 800019e:	f001 f8bb 	bl	8001318 <_ZN9CTerminal13terminal_initEv>
 80001a2:	2800      	cmp	r0, #0
 80001a4:	da03      	bge.n	80001ae <_ZN7CKodama5init_Ev+0x26>
 80001a6:	f5a0 409c 	sub.w	r0, r0, #19968	; 0x4e00
 80001aa:	3820      	subs	r0, #32
 80001ac:	bd10      	pop	{r4, pc}
 80001ae:	4620      	mov	r0, r4
 80001b0:	f000 f91c 	bl	80003ec <_ZN6CTimer10timer_initEv>
 80001b4:	2800      	cmp	r0, #0
 80001b6:	da03      	bge.n	80001c0 <_ZN7CKodama5init_Ev+0x38>
 80001b8:	f5a0 40ea 	sub.w	r0, r0, #29952	; 0x7500
 80001bc:	3830      	subs	r0, #48	; 0x30
 80001be:	bd10      	pop	{r4, pc}
 80001c0:	4620      	mov	r0, r4
 80001c2:	f000 fc0f 	bl	80009e4 <_ZN8CSensors12sensors_initEv>
 80001c6:	2800      	cmp	r0, #0
 80001c8:	da03      	bge.n	80001d2 <_ZN7CKodama5init_Ev+0x4a>
 80001ca:	f5a0 401c 	sub.w	r0, r0, #39936	; 0x9c00
 80001ce:	3840      	subs	r0, #64	; 0x40
 80001d0:	bd10      	pop	{r4, pc}
 80001d2:	f104 00c8 	add.w	r0, r4, #200	; 0xc8
 80001d6:	f000 fbf5 	bl	80009c4 <_ZN6CMotor10motor_initEv>
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
 80001fe:	f001 f985 	bl	800150c <_ZN9CTerminal6printfEPKcz>
 8000202:	4628      	mov	r0, r5
 8000204:	b91e      	cbnz	r6, 800020e <_ZN7CKodama4initEv+0x26>
 8000206:	4907      	ldr	r1, [pc, #28]	; (8000224 <_ZN7CKodama4initEv+0x3c>)
 8000208:	f001 f980 	bl	800150c <_ZN9CTerminal6printfEPKcz>
 800020c:	e005      	b.n	800021a <_ZN7CKodama4initEv+0x32>
 800020e:	4906      	ldr	r1, [pc, #24]	; (8000228 <_ZN7CKodama4initEv+0x40>)
 8000210:	3401      	adds	r4, #1
 8000212:	f001 f97b 	bl	800150c <_ZN9CTerminal6printfEPKcz>
 8000216:	2c08      	cmp	r4, #8
 8000218:	d1e9      	bne.n	80001ee <_ZN7CKodama4initEv+0x6>
 800021a:	4630      	mov	r0, r6
 800021c:	bd70      	pop	{r4, r5, r6, pc}
 800021e:	bf00      	nop
 8000220:	08002094 	.word	0x08002094
 8000224:	080020a9 	.word	0x080020a9
 8000228:	080020b0 	.word	0x080020b0

0800022c <_ZN7CKodama6set_dtEl>:
 800022c:	230a      	movs	r3, #10
 800022e:	f8c0 10d0 	str.w	r1, [r0, #208]	; 0xd0
 8000232:	f8c0 30c4 	str.w	r3, [r0, #196]	; 0xc4
 8000236:	4770      	bx	lr

08000238 <_ZN7CKodama10go_forwardEllPFlvE>:
 8000238:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800023c:	ed2d 8b02 	vpush	{d8}
 8000240:	b08b      	sub	sp, #44	; 0x2c
 8000242:	4604      	mov	r4, r0
 8000244:	4699      	mov	r9, r3
 8000246:	4b38      	ldr	r3, [pc, #224]	; (8000328 <_ZN7CKodama10go_forwardEllPFlvE+0xf0>)
 8000248:	9300      	str	r3, [sp, #0]
 800024a:	4688      	mov	r8, r1
 800024c:	4b37      	ldr	r3, [pc, #220]	; (800032c <_ZN7CKodama10go_forwardEllPFlvE+0xf4>)
 800024e:	4938      	ldr	r1, [pc, #224]	; (8000330 <_ZN7CKodama10go_forwardEllPFlvE+0xf8>)
 8000250:	4693      	mov	fp, r2
 8000252:	a802      	add	r0, sp, #8
 8000254:	2200      	movs	r2, #0
 8000256:	f000 f88c 	bl	8000372 <_ZN4CPIDC1Effff>
 800025a:	f104 0788 	add.w	r7, r4, #136	; 0x88
 800025e:	2100      	movs	r1, #0
 8000260:	f8d4 20d0 	ldr.w	r2, [r4, #208]	; 0xd0
 8000264:	4620      	mov	r0, r4
 8000266:	f000 f961 	bl	800052c <_ZN6CTimer22event_timer_set_periodEhm>
 800026a:	4638      	mov	r0, r7
 800026c:	f000 fe5c 	bl	8000f28 <_ZN4CIMU8imu_readEv>
 8000270:	4638      	mov	r0, r7
 8000272:	f000 ff7d 	bl	8001170 <_ZN4CIMU14get_imu_resultEv>
 8000276:	f8d0 a008 	ldr.w	sl, [r0, #8]
 800027a:	4620      	mov	r0, r4
 800027c:	f001 f808 	bl	8001290 <_ZN5CGPIO20get_encoder_distanceEv>
 8000280:	2500      	movs	r5, #0
 8000282:	4480      	add	r8, r0
 8000284:	4620      	mov	r0, r4
 8000286:	2100      	movs	r1, #0
 8000288:	f000 f964 	bl	8000554 <_ZN6CTimer17event_timer_checkEh>
 800028c:	2800      	cmp	r0, #0
 800028e:	d0f9      	beq.n	8000284 <_ZN7CKodama10go_forwardEllPFlvE+0x4c>
 8000290:	f104 06c8 	add.w	r6, r4, #200	; 0xc8
 8000294:	f1b9 0f00 	cmp.w	r9, #0
 8000298:	d12c      	bne.n	80002f4 <_ZN7CKodama10go_forwardEllPFlvE+0xbc>
 800029a:	4620      	mov	r0, r4
 800029c:	f000 fff8 	bl	8001290 <_ZN5CGPIO20get_encoder_distanceEv>
 80002a0:	4580      	cmp	r8, r0
 80002a2:	db2a      	blt.n	80002fa <_ZN7CKodama10go_forwardEllPFlvE+0xc2>
 80002a4:	4638      	mov	r0, r7
 80002a6:	f000 fe3f 	bl	8000f28 <_ZN4CIMU8imu_readEv>
 80002aa:	4638      	mov	r0, r7
 80002ac:	f000 ff60 	bl	8001170 <_ZN4CIMU14get_imu_resultEv>
 80002b0:	6881      	ldr	r1, [r0, #8]
 80002b2:	ebc1 010a 	rsb	r1, r1, sl
 80002b6:	ee07 1a90 	vmov	s15, r1
 80002ba:	eef8 7ae7 	vcvt.f32.s32	s15, s15
 80002be:	a802      	add	r0, sp, #8
 80002c0:	ee17 1a90 	vmov	r1, s15
 80002c4:	f000 f85e 	bl	8000384 <_ZN4CPID7processEf>
 80002c8:	ee07 0a90 	vmov	s15, r0
 80002cc:	eebd 8ae7 	vcvt.s32.f32	s16, s15
 80002d0:	455d      	cmp	r5, fp
 80002d2:	ee18 3a10 	vmov	r3, s16
 80002d6:	bfb8      	it	lt
 80002d8:	3501      	addlt	r5, #1
 80002da:	195a      	adds	r2, r3, r5
 80002dc:	4630      	mov	r0, r6
 80002de:	2100      	movs	r1, #0
 80002e0:	f000 fb6a 	bl	80009b8 <_ZN6CMotor9set_motorEml>
 80002e4:	ee18 3a10 	vmov	r3, s16
 80002e8:	4630      	mov	r0, r6
 80002ea:	2101      	movs	r1, #1
 80002ec:	1aea      	subs	r2, r5, r3
 80002ee:	f000 fb63 	bl	80009b8 <_ZN6CMotor9set_motorEml>
 80002f2:	e7c7      	b.n	8000284 <_ZN7CKodama10go_forwardEllPFlvE+0x4c>
 80002f4:	47c8      	blx	r9
 80002f6:	2800      	cmp	r0, #0
 80002f8:	d0cf      	beq.n	800029a <_ZN7CKodama10go_forwardEllPFlvE+0x62>
 80002fa:	2100      	movs	r1, #0
 80002fc:	4630      	mov	r0, r6
 80002fe:	460a      	mov	r2, r1
 8000300:	f000 fb5a 	bl	80009b8 <_ZN6CMotor9set_motorEml>
 8000304:	2200      	movs	r2, #0
 8000306:	4630      	mov	r0, r6
 8000308:	2101      	movs	r1, #1
 800030a:	f000 fb55 	bl	80009b8 <_ZN6CMotor9set_motorEml>
 800030e:	4620      	mov	r0, r4
 8000310:	2114      	movs	r1, #20
 8000312:	f000 f8f9 	bl	8000508 <_ZN6CTimer8delay_msEm>
 8000316:	a802      	add	r0, sp, #8
 8000318:	f000 f80c 	bl	8000334 <_ZN4CPIDD1Ev>
 800031c:	b00b      	add	sp, #44	; 0x2c
 800031e:	ecbd 8b02 	vpop	{d8}
 8000322:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000326:	bf00      	nop
 8000328:	42300000 	.word	0x42300000
 800032c:	3ecccccd 	.word	0x3ecccccd
 8000330:	3e4ccccd 	.word	0x3e4ccccd

08000334 <_ZN4CPIDD1Ev>:
 8000334:	4770      	bx	lr

08000336 <_ZN4CPID4initEffff>:
 8000336:	ee07 1a90 	vmov	s15, r1
 800033a:	ee06 2a90 	vmov	s13, r2
 800033e:	ee07 3a10 	vmov	s14, r3
 8000342:	ee77 6aa6 	vadd.f32	s13, s15, s13
 8000346:	eef1 7a67 	vneg.f32	s15, s15
 800034a:	ee76 6a87 	vadd.f32	s13, s13, s14
 800034e:	2300      	movs	r3, #0
 8000350:	edc0 6a03 	vstr	s13, [r0, #12]
 8000354:	ee77 6a07 	vadd.f32	s13, s14, s14
 8000358:	6003      	str	r3, [r0, #0]
 800035a:	ee77 7ae6 	vsub.f32	s15, s15, s13
 800035e:	6043      	str	r3, [r0, #4]
 8000360:	6083      	str	r3, [r0, #8]
 8000362:	6183      	str	r3, [r0, #24]
 8000364:	9b00      	ldr	r3, [sp, #0]
 8000366:	edc0 7a04 	vstr	s15, [r0, #16]
 800036a:	ed80 7a05 	vstr	s14, [r0, #20]
 800036e:	61c3      	str	r3, [r0, #28]
 8000370:	4770      	bx	lr

08000372 <_ZN4CPIDC1Effff>:
 8000372:	b537      	push	{r0, r1, r2, r4, r5, lr}
 8000374:	9d06      	ldr	r5, [sp, #24]
 8000376:	9500      	str	r5, [sp, #0]
 8000378:	4604      	mov	r4, r0
 800037a:	f7ff ffdc 	bl	8000336 <_ZN4CPID4initEffff>
 800037e:	4620      	mov	r0, r4
 8000380:	b003      	add	sp, #12
 8000382:	bd30      	pop	{r4, r5, pc}

08000384 <_ZN4CPID7processEf>:
 8000384:	edd0 7a00 	vldr	s15, [r0]
 8000388:	edd0 5a04 	vldr	s11, [r0, #16]
 800038c:	ed90 6a03 	vldr	s12, [r0, #12]
 8000390:	ed90 7a01 	vldr	s14, [r0, #4]
 8000394:	edc0 7a01 	vstr	s15, [r0, #4]
 8000398:	ee06 1a90 	vmov	s13, r1
 800039c:	ee67 7aa5 	vmul.f32	s15, s15, s11
 80003a0:	ee46 7a86 	vmla.f32	s15, s13, s12
 80003a4:	6001      	str	r1, [r0, #0]
 80003a6:	edd0 6a05 	vldr	s13, [r0, #20]
 80003aa:	ed80 7a02 	vstr	s14, [r0, #8]
 80003ae:	ee47 7a26 	vmla.f32	s15, s14, s13
 80003b2:	ed90 7a06 	vldr	s14, [r0, #24]
 80003b6:	ee77 7a87 	vadd.f32	s15, s15, s14
 80003ba:	ed90 7a07 	vldr	s14, [r0, #28]
 80003be:	edc0 7a06 	vstr	s15, [r0, #24]
 80003c2:	eef4 7ac7 	vcmpe.f32	s15, s14
 80003c6:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003ca:	bfc8      	it	gt
 80003cc:	ed80 7a06 	vstrgt	s14, [r0, #24]
 80003d0:	edd0 7a06 	vldr	s15, [r0, #24]
 80003d4:	eeb1 7a47 	vneg.f32	s14, s14
 80003d8:	eef4 7ac7 	vcmpe.f32	s15, s14
 80003dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80003e0:	bf48      	it	mi
 80003e2:	ed80 7a06 	vstrmi	s14, [r0, #24]
 80003e6:	6980      	ldr	r0, [r0, #24]
 80003e8:	4770      	bx	lr
	...

080003ec <_ZN6CTimer10timer_initEv>:
 80003ec:	b530      	push	{r4, r5, lr}
 80003ee:	2300      	movs	r3, #0
 80003f0:	b085      	sub	sp, #20
 80003f2:	491e      	ldr	r1, [pc, #120]	; (800046c <_ZN6CTimer10timer_initEv+0x80>)
 80003f4:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80003f8:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80003fc:	491c      	ldr	r1, [pc, #112]	; (8000470 <_ZN6CTimer10timer_initEv+0x84>)
 80003fe:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 8000402:	4a1c      	ldr	r2, [pc, #112]	; (8000474 <_ZN6CTimer10timer_initEv+0x88>)
 8000404:	2400      	movs	r4, #0
 8000406:	54d4      	strb	r4, [r2, r3]
 8000408:	3301      	adds	r3, #1
 800040a:	2b08      	cmp	r3, #8
 800040c:	d1f1      	bne.n	80003f2 <_ZN6CTimer10timer_initEv+0x6>
 800040e:	4b1a      	ldr	r3, [pc, #104]	; (8000478 <_ZN6CTimer10timer_initEv+0x8c>)
 8000410:	4d1a      	ldr	r5, [pc, #104]	; (800047c <_ZN6CTimer10timer_initEv+0x90>)
 8000412:	601c      	str	r4, [r3, #0]
 8000414:	2002      	movs	r0, #2
 8000416:	2101      	movs	r1, #1
 8000418:	f001 faba 	bl	8001990 <RCC_APB1PeriphClockCmd>
 800041c:	f44f 738c 	mov.w	r3, #280	; 0x118
 8000420:	f8ad 3004 	strh.w	r3, [sp, #4]
 8000424:	4628      	mov	r0, r5
 8000426:	2331      	movs	r3, #49	; 0x31
 8000428:	a901      	add	r1, sp, #4
 800042a:	9302      	str	r3, [sp, #8]
 800042c:	f8ad 4006 	strh.w	r4, [sp, #6]
 8000430:	f8ad 400c 	strh.w	r4, [sp, #12]
 8000434:	f8ad 400e 	strh.w	r4, [sp, #14]
 8000438:	f001 fab8 	bl	80019ac <TIM_TimeBaseInit>
 800043c:	4628      	mov	r0, r5
 800043e:	2101      	movs	r1, #1
 8000440:	f001 fb04 	bl	8001a4c <TIM_Cmd>
 8000444:	68eb      	ldr	r3, [r5, #12]
 8000446:	f043 0301 	orr.w	r3, r3, #1
 800044a:	60eb      	str	r3, [r5, #12]
 800044c:	231d      	movs	r3, #29
 800044e:	f88d 3000 	strb.w	r3, [sp]
 8000452:	4668      	mov	r0, sp
 8000454:	2301      	movs	r3, #1
 8000456:	f88d 4001 	strb.w	r4, [sp, #1]
 800045a:	f88d 3002 	strb.w	r3, [sp, #2]
 800045e:	f88d 3003 	strb.w	r3, [sp, #3]
 8000462:	f001 fc3d 	bl	8001ce0 <NVIC_Init>
 8000466:	4620      	mov	r0, r4
 8000468:	b005      	add	sp, #20
 800046a:	bd30      	pop	{r4, r5, pc}
 800046c:	20000030 	.word	0x20000030
 8000470:	2000005c 	.word	0x2000005c
 8000474:	20000050 	.word	0x20000050
 8000478:	20000058 	.word	0x20000058
 800047c:	40000400 	.word	0x40000400

08000480 <TIM3_IRQHandler>:
 8000480:	2300      	movs	r3, #0
 8000482:	4a15      	ldr	r2, [pc, #84]	; (80004d8 <TIM3_IRQHandler+0x58>)
 8000484:	5cd1      	ldrb	r1, [r2, r3]
 8000486:	b111      	cbz	r1, 800048e <TIM3_IRQHandler+0xe>
 8000488:	5cd1      	ldrb	r1, [r2, r3]
 800048a:	29ff      	cmp	r1, #255	; 0xff
 800048c:	d11e      	bne.n	80004cc <TIM3_IRQHandler+0x4c>
 800048e:	4913      	ldr	r1, [pc, #76]	; (80004dc <TIM3_IRQHandler+0x5c>)
 8000490:	f851 0023 	ldr.w	r0, [r1, r3, lsl #2]
 8000494:	b128      	cbz	r0, 80004a2 <TIM3_IRQHandler+0x22>
 8000496:	f851 2023 	ldr.w	r2, [r1, r3, lsl #2]
 800049a:	3a01      	subs	r2, #1
 800049c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
 80004a0:	e009      	b.n	80004b6 <TIM3_IRQHandler+0x36>
 80004a2:	480f      	ldr	r0, [pc, #60]	; (80004e0 <TIM3_IRQHandler+0x60>)
 80004a4:	f850 0023 	ldr.w	r0, [r0, r3, lsl #2]
 80004a8:	f841 0023 	str.w	r0, [r1, r3, lsl #2]
 80004ac:	5cd2      	ldrb	r2, [r2, r3]
 80004ae:	b912      	cbnz	r2, 80004b6 <TIM3_IRQHandler+0x36>
 80004b0:	4a09      	ldr	r2, [pc, #36]	; (80004d8 <TIM3_IRQHandler+0x58>)
 80004b2:	2101      	movs	r1, #1
 80004b4:	54d1      	strb	r1, [r2, r3]
 80004b6:	3301      	adds	r3, #1
 80004b8:	2b08      	cmp	r3, #8
 80004ba:	d1e2      	bne.n	8000482 <TIM3_IRQHandler+0x2>
 80004bc:	4a09      	ldr	r2, [pc, #36]	; (80004e4 <TIM3_IRQHandler+0x64>)
 80004be:	480a      	ldr	r0, [pc, #40]	; (80004e8 <TIM3_IRQHandler+0x68>)
 80004c0:	6813      	ldr	r3, [r2, #0]
 80004c2:	2101      	movs	r1, #1
 80004c4:	3301      	adds	r3, #1
 80004c6:	6013      	str	r3, [r2, #0]
 80004c8:	f001 bace 	b.w	8001a68 <TIM_ClearITPendingBit>
 80004cc:	5cd1      	ldrb	r1, [r2, r3]
 80004ce:	3101      	adds	r1, #1
 80004d0:	b2c9      	uxtb	r1, r1
 80004d2:	54d1      	strb	r1, [r2, r3]
 80004d4:	e7db      	b.n	800048e <TIM3_IRQHandler+0xe>
 80004d6:	bf00      	nop
 80004d8:	20000050 	.word	0x20000050
 80004dc:	20000030 	.word	0x20000030
 80004e0:	2000005c 	.word	0x2000005c
 80004e4:	20000058 	.word	0x20000058
 80004e8:	40000400 	.word	0x40000400

080004ec <_ZN6CTimer8get_timeEv>:
 80004ec:	b082      	sub	sp, #8
 80004ee:	b672      	cpsid	i
 80004f0:	4b04      	ldr	r3, [pc, #16]	; (8000504 <_ZN6CTimer8get_timeEv+0x18>)
 80004f2:	681b      	ldr	r3, [r3, #0]
 80004f4:	9301      	str	r3, [sp, #4]
 80004f6:	b662      	cpsie	i
 80004f8:	230a      	movs	r3, #10
 80004fa:	9801      	ldr	r0, [sp, #4]
 80004fc:	fbb0 f0f3 	udiv	r0, r0, r3
 8000500:	b002      	add	sp, #8
 8000502:	4770      	bx	lr
 8000504:	20000058 	.word	0x20000058

08000508 <_ZN6CTimer8delay_msEm>:
 8000508:	b537      	push	{r0, r1, r2, r4, r5, lr}
 800050a:	460c      	mov	r4, r1
 800050c:	4605      	mov	r5, r0
 800050e:	f7ff ffed 	bl	80004ec <_ZN6CTimer8get_timeEv>
 8000512:	4420      	add	r0, r4
 8000514:	9001      	str	r0, [sp, #4]
 8000516:	4628      	mov	r0, r5
 8000518:	9c01      	ldr	r4, [sp, #4]
 800051a:	f7ff ffe7 	bl	80004ec <_ZN6CTimer8get_timeEv>
 800051e:	4284      	cmp	r4, r0
 8000520:	d902      	bls.n	8000528 <_ZN6CTimer8delay_msEm+0x20>
 8000522:	f001 fbd9 	bl	8001cd8 <core_yield>
 8000526:	e7f6      	b.n	8000516 <_ZN6CTimer8delay_msEm+0xe>
 8000528:	b003      	add	sp, #12
 800052a:	bd30      	pop	{r4, r5, pc}

0800052c <_ZN6CTimer22event_timer_set_periodEhm>:
 800052c:	b672      	cpsid	i
 800052e:	230a      	movs	r3, #10
 8000530:	435a      	muls	r2, r3
 8000532:	4b05      	ldr	r3, [pc, #20]	; (8000548 <_ZN6CTimer22event_timer_set_periodEhm+0x1c>)
 8000534:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 8000538:	4b04      	ldr	r3, [pc, #16]	; (800054c <_ZN6CTimer22event_timer_set_periodEhm+0x20>)
 800053a:	f843 2021 	str.w	r2, [r3, r1, lsl #2]
 800053e:	4b04      	ldr	r3, [pc, #16]	; (8000550 <_ZN6CTimer22event_timer_set_periodEhm+0x24>)
 8000540:	2200      	movs	r2, #0
 8000542:	545a      	strb	r2, [r3, r1]
 8000544:	b662      	cpsie	i
 8000546:	4770      	bx	lr
 8000548:	20000030 	.word	0x20000030
 800054c:	2000005c 	.word	0x2000005c
 8000550:	20000050 	.word	0x20000050

08000554 <_ZN6CTimer17event_timer_checkEh>:
 8000554:	4b05      	ldr	r3, [pc, #20]	; (800056c <_ZN6CTimer17event_timer_checkEh+0x18>)
 8000556:	5c5a      	ldrb	r2, [r3, r1]
 8000558:	f002 00ff 	and.w	r0, r2, #255	; 0xff
 800055c:	b12a      	cbz	r2, 800056a <_ZN6CTimer17event_timer_checkEh+0x16>
 800055e:	b672      	cpsid	i
 8000560:	5c58      	ldrb	r0, [r3, r1]
 8000562:	2200      	movs	r2, #0
 8000564:	b2c0      	uxtb	r0, r0
 8000566:	545a      	strb	r2, [r3, r1]
 8000568:	b662      	cpsie	i
 800056a:	4770      	bx	lr
 800056c:	20000050 	.word	0x20000050

08000570 <_ZN4CRGB8rgb_readEh>:
 8000570:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8000574:	4604      	mov	r4, r0
 8000576:	4688      	mov	r8, r1
 8000578:	f000 fa9e 	bl	8000ab8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 800057c:	4620      	mov	r0, r4
 800057e:	2172      	movs	r1, #114	; 0x72
 8000580:	f000 fac4 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000584:	21b4      	movs	r1, #180	; 0xb4
 8000586:	4620      	mov	r0, r4
 8000588:	f000 fac0 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800058c:	4620      	mov	r0, r4
 800058e:	f000 fa93 	bl	8000ab8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000592:	1d25      	adds	r5, r4, #4
 8000594:	4620      	mov	r0, r4
 8000596:	2173      	movs	r1, #115	; 0x73
 8000598:	f000 fab8 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 800059c:	4620      	mov	r0, r4
 800059e:	2101      	movs	r1, #1
 80005a0:	462a      	mov	r2, r5
 80005a2:	f000 faf4 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005a6:	7923      	ldrb	r3, [r4, #4]
 80005a8:	8423      	strh	r3, [r4, #32]
 80005aa:	7963      	ldrb	r3, [r4, #5]
 80005ac:	8463      	strh	r3, [r4, #34]	; 0x22
 80005ae:	79a3      	ldrb	r3, [r4, #6]
 80005b0:	84a3      	strh	r3, [r4, #36]	; 0x24
 80005b2:	79e3      	ldrb	r3, [r4, #7]
 80005b4:	84e3      	strh	r3, [r4, #38]	; 0x26
 80005b6:	2101      	movs	r1, #1
 80005b8:	4620      	mov	r0, r4
 80005ba:	462a      	mov	r2, r5
 80005bc:	f104 091e 	add.w	r9, r4, #30
 80005c0:	1ce6      	adds	r6, r4, #3
 80005c2:	f000 fae4 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005c6:	f104 0726 	add.w	r7, r4, #38	; 0x26
 80005ca:	4631      	mov	r1, r6
 80005cc:	464b      	mov	r3, r9
 80005ce:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 80005d2:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 80005d6:	42bb      	cmp	r3, r7
 80005d8:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 80005dc:	801a      	strh	r2, [r3, #0]
 80005de:	d1f6      	bne.n	80005ce <_ZN4CRGB8rgb_readEh+0x5e>
 80005e0:	4620      	mov	r0, r4
 80005e2:	2101      	movs	r1, #1
 80005e4:	462a      	mov	r2, r5
 80005e6:	f000 fad2 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80005ea:	7923      	ldrb	r3, [r4, #4]
 80005ec:	8123      	strh	r3, [r4, #8]
 80005ee:	7963      	ldrb	r3, [r4, #5]
 80005f0:	8163      	strh	r3, [r4, #10]
 80005f2:	79a3      	ldrb	r3, [r4, #6]
 80005f4:	81a3      	strh	r3, [r4, #12]
 80005f6:	79e3      	ldrb	r3, [r4, #7]
 80005f8:	81e3      	strh	r3, [r4, #14]
 80005fa:	2101      	movs	r1, #1
 80005fc:	4620      	mov	r0, r4
 80005fe:	462a      	mov	r2, r5
 8000600:	f000 fac5 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000604:	f104 0b0e 	add.w	fp, r4, #14
 8000608:	1da3      	adds	r3, r4, #6
 800060a:	4631      	mov	r1, r6
 800060c:	f833 2f02 	ldrh.w	r2, [r3, #2]!
 8000610:	f811 0f01 	ldrb.w	r0, [r1, #1]!
 8000614:	455b      	cmp	r3, fp
 8000616:	ea42 2200 	orr.w	r2, r2, r0, lsl #8
 800061a:	801a      	strh	r2, [r3, #0]
 800061c:	d1f6      	bne.n	800060c <_ZN4CRGB8rgb_readEh+0x9c>
 800061e:	4620      	mov	r0, r4
 8000620:	2101      	movs	r1, #1
 8000622:	462a      	mov	r2, r5
 8000624:	f000 fab3 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000628:	7923      	ldrb	r3, [r4, #4]
 800062a:	8223      	strh	r3, [r4, #16]
 800062c:	7963      	ldrb	r3, [r4, #5]
 800062e:	8263      	strh	r3, [r4, #18]
 8000630:	79a3      	ldrb	r3, [r4, #6]
 8000632:	82a3      	strh	r3, [r4, #20]
 8000634:	79e3      	ldrb	r3, [r4, #7]
 8000636:	82e3      	strh	r3, [r4, #22]
 8000638:	462a      	mov	r2, r5
 800063a:	4620      	mov	r0, r4
 800063c:	2101      	movs	r1, #1
 800063e:	f000 faa6 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000642:	f104 0a16 	add.w	sl, r4, #22
 8000646:	4632      	mov	r2, r6
 8000648:	f83b 3f02 	ldrh.w	r3, [fp, #2]!
 800064c:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 8000650:	45d3      	cmp	fp, sl
 8000652:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000656:	f8ab 3000 	strh.w	r3, [fp]
 800065a:	d1f5      	bne.n	8000648 <_ZN4CRGB8rgb_readEh+0xd8>
 800065c:	4620      	mov	r0, r4
 800065e:	2101      	movs	r1, #1
 8000660:	462a      	mov	r2, r5
 8000662:	f000 fa94 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000666:	7923      	ldrb	r3, [r4, #4]
 8000668:	8323      	strh	r3, [r4, #24]
 800066a:	7963      	ldrb	r3, [r4, #5]
 800066c:	8363      	strh	r3, [r4, #26]
 800066e:	79a3      	ldrb	r3, [r4, #6]
 8000670:	83a3      	strh	r3, [r4, #28]
 8000672:	79e3      	ldrb	r3, [r4, #7]
 8000674:	83e3      	strh	r3, [r4, #30]
 8000676:	462a      	mov	r2, r5
 8000678:	4620      	mov	r0, r4
 800067a:	2101      	movs	r1, #1
 800067c:	f000 fa87 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000680:	4632      	mov	r2, r6
 8000682:	f83a 3f02 	ldrh.w	r3, [sl, #2]!
 8000686:	f812 1f01 	ldrb.w	r1, [r2, #1]!
 800068a:	45ca      	cmp	sl, r9
 800068c:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 8000690:	f8aa 3000 	strh.w	r3, [sl]
 8000694:	d1f5      	bne.n	8000682 <_ZN4CRGB8rgb_readEh+0x112>
 8000696:	4620      	mov	r0, r4
 8000698:	2101      	movs	r1, #1
 800069a:	462a      	mov	r2, r5
 800069c:	f000 fa77 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006a0:	7923      	ldrb	r3, [r4, #4]
 80006a2:	8523      	strh	r3, [r4, #40]	; 0x28
 80006a4:	7963      	ldrb	r3, [r4, #5]
 80006a6:	8563      	strh	r3, [r4, #42]	; 0x2a
 80006a8:	79a3      	ldrb	r3, [r4, #6]
 80006aa:	85a3      	strh	r3, [r4, #44]	; 0x2c
 80006ac:	79e3      	ldrb	r3, [r4, #7]
 80006ae:	85e3      	strh	r3, [r4, #46]	; 0x2e
 80006b0:	462a      	mov	r2, r5
 80006b2:	4620      	mov	r0, r4
 80006b4:	2100      	movs	r1, #0
 80006b6:	f000 fa6a 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 80006ba:	f104 022e 	add.w	r2, r4, #46	; 0x2e
 80006be:	f837 3f02 	ldrh.w	r3, [r7, #2]!
 80006c2:	f816 1f01 	ldrb.w	r1, [r6, #1]!
 80006c6:	4297      	cmp	r7, r2
 80006c8:	ea43 2301 	orr.w	r3, r3, r1, lsl #8
 80006cc:	803b      	strh	r3, [r7, #0]
 80006ce:	d1f6      	bne.n	80006be <_ZN4CRGB8rgb_readEh+0x14e>
 80006d0:	4620      	mov	r0, r4
 80006d2:	f000 fa06 	bl	8000ae2 <_ZN8CRGB_I2C11rgb_i2cStopEv>
 80006d6:	f1b8 0f00 	cmp.w	r8, #0
 80006da:	d025      	beq.n	8000728 <_ZN4CRGB8rgb_readEh+0x1b8>
 80006dc:	2300      	movs	r3, #0
 80006de:	8921      	ldrh	r1, [r4, #8]
 80006e0:	f8b4 2048 	ldrh.w	r2, [r4, #72]	; 0x48
 80006e4:	440a      	add	r2, r1
 80006e6:	f8a4 2048 	strh.w	r2, [r4, #72]	; 0x48
 80006ea:	8a21      	ldrh	r1, [r4, #16]
 80006ec:	f8b4 2050 	ldrh.w	r2, [r4, #80]	; 0x50
 80006f0:	440a      	add	r2, r1
 80006f2:	f8a4 2050 	strh.w	r2, [r4, #80]	; 0x50
 80006f6:	8b21      	ldrh	r1, [r4, #24]
 80006f8:	f8b4 2058 	ldrh.w	r2, [r4, #88]	; 0x58
 80006fc:	440a      	add	r2, r1
 80006fe:	f8a4 2058 	strh.w	r2, [r4, #88]	; 0x58
 8000702:	8d21      	ldrh	r1, [r4, #40]	; 0x28
 8000704:	f8b4 2068 	ldrh.w	r2, [r4, #104]	; 0x68
 8000708:	440a      	add	r2, r1
 800070a:	f8a4 2068 	strh.w	r2, [r4, #104]	; 0x68
 800070e:	8c21      	ldrh	r1, [r4, #32]
 8000710:	f8b4 2060 	ldrh.w	r2, [r4, #96]	; 0x60
 8000714:	3301      	adds	r3, #1
 8000716:	440a      	add	r2, r1
 8000718:	2b04      	cmp	r3, #4
 800071a:	f8a4 2060 	strh.w	r2, [r4, #96]	; 0x60
 800071e:	f104 0402 	add.w	r4, r4, #2
 8000722:	d1dc      	bne.n	80006de <_ZN4CRGB8rgb_readEh+0x16e>
 8000724:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8000728:	4641      	mov	r1, r8
 800072a:	b672      	cpsid	i
 800072c:	8923      	ldrh	r3, [r4, #8]
 800072e:	f8b4 0048 	ldrh.w	r0, [r4, #72]	; 0x48
 8000732:	f8b4 2050 	ldrh.w	r2, [r4, #80]	; 0x50
 8000736:	f8b4 5058 	ldrh.w	r5, [r4, #88]	; 0x58
 800073a:	f8b4 6068 	ldrh.w	r6, [r4, #104]	; 0x68
 800073e:	1a18      	subs	r0, r3, r0
 8000740:	8a23      	ldrh	r3, [r4, #16]
 8000742:	1a9a      	subs	r2, r3, r2
 8000744:	8b23      	ldrh	r3, [r4, #24]
 8000746:	1b5b      	subs	r3, r3, r5
 8000748:	8d25      	ldrh	r5, [r4, #40]	; 0x28
 800074a:	1bad      	subs	r5, r5, r6
 800074c:	8525      	strh	r5, [r4, #40]	; 0x28
 800074e:	f8b4 6060 	ldrh.w	r6, [r4, #96]	; 0x60
 8000752:	8c25      	ldrh	r5, [r4, #32]
 8000754:	b280      	uxth	r0, r0
 8000756:	b292      	uxth	r2, r2
 8000758:	b29b      	uxth	r3, r3
 800075a:	1bad      	subs	r5, r5, r6
 800075c:	8120      	strh	r0, [r4, #8]
 800075e:	8222      	strh	r2, [r4, #16]
 8000760:	8323      	strh	r3, [r4, #24]
 8000762:	8425      	strh	r5, [r4, #32]
 8000764:	b662      	cpsie	i
 8000766:	b200      	sxth	r0, r0
 8000768:	b212      	sxth	r2, r2
 800076a:	1885      	adds	r5, r0, r2
 800076c:	b21b      	sxth	r3, r3
 800076e:	18ed      	adds	r5, r5, r3
 8000770:	d00f      	beq.n	8000792 <_ZN4CRGB8rgb_readEh+0x222>
 8000772:	ebc0 2000 	rsb	r0, r0, r0, lsl #8
 8000776:	ebc2 2202 	rsb	r2, r2, r2, lsl #8
 800077a:	fb90 f0f5 	sdiv	r0, r0, r5
 800077e:	fb92 f2f5 	sdiv	r2, r2, r5
 8000782:	ebc3 2303 	rsb	r3, r3, r3, lsl #8
 8000786:	8620      	strh	r0, [r4, #48]	; 0x30
 8000788:	fb93 f3f5 	sdiv	r3, r3, r5
 800078c:	8722      	strh	r2, [r4, #56]	; 0x38
 800078e:	f8a4 3040 	strh.w	r3, [r4, #64]	; 0x40
 8000792:	3101      	adds	r1, #1
 8000794:	2904      	cmp	r1, #4
 8000796:	f104 0402 	add.w	r4, r4, #2
 800079a:	d1c6      	bne.n	800072a <_ZN4CRGB8rgb_readEh+0x1ba>
 800079c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}

080007a0 <_ZN4CRGB8rgb_initEv>:
 80007a0:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 80007a2:	4606      	mov	r6, r0
 80007a4:	4635      	mov	r5, r6
 80007a6:	f000 fa61 	bl	8000c6c <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80007aa:	4633      	mov	r3, r6
 80007ac:	2200      	movs	r2, #0
 80007ae:	3201      	adds	r2, #1
 80007b0:	2400      	movs	r4, #0
 80007b2:	2a04      	cmp	r2, #4
 80007b4:	811c      	strh	r4, [r3, #8]
 80007b6:	821c      	strh	r4, [r3, #16]
 80007b8:	831c      	strh	r4, [r3, #24]
 80007ba:	851c      	strh	r4, [r3, #40]	; 0x28
 80007bc:	841c      	strh	r4, [r3, #32]
 80007be:	f8a3 4048 	strh.w	r4, [r3, #72]	; 0x48
 80007c2:	f8a3 4050 	strh.w	r4, [r3, #80]	; 0x50
 80007c6:	f8a3 4058 	strh.w	r4, [r3, #88]	; 0x58
 80007ca:	f8a3 4068 	strh.w	r4, [r3, #104]	; 0x68
 80007ce:	f8a3 4060 	strh.w	r4, [r3, #96]	; 0x60
 80007d2:	861c      	strh	r4, [r3, #48]	; 0x30
 80007d4:	871c      	strh	r4, [r3, #56]	; 0x38
 80007d6:	f8a3 4040 	strh.w	r4, [r3, #64]	; 0x40
 80007da:	f103 0302 	add.w	r3, r3, #2
 80007de:	d1e6      	bne.n	80007ae <_ZN4CRGB8rgb_initEv+0xe>
 80007e0:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 80007e4:	2208      	movs	r2, #8
 80007e6:	851a      	strh	r2, [r3, #40]	; 0x28
 80007e8:	4630      	mov	r0, r6
 80007ea:	f000 fa3f 	bl	8000c6c <_ZN8CRGB_I2C12rgb_i2c_initEv>
 80007ee:	4630      	mov	r0, r6
 80007f0:	2172      	movs	r1, #114	; 0x72
 80007f2:	2281      	movs	r2, #129	; 0x81
 80007f4:	23ff      	movs	r3, #255	; 0xff
 80007f6:	f000 f9b2 	bl	8000b5e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 80007fa:	4630      	mov	r0, r6
 80007fc:	2172      	movs	r1, #114	; 0x72
 80007fe:	2283      	movs	r2, #131	; 0x83
 8000800:	23ff      	movs	r3, #255	; 0xff
 8000802:	f000 f9ac 	bl	8000b5e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000806:	4630      	mov	r0, r6
 8000808:	2172      	movs	r1, #114	; 0x72
 800080a:	228d      	movs	r2, #141	; 0x8d
 800080c:	4623      	mov	r3, r4
 800080e:	f000 f9a6 	bl	8000b5e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 8000812:	2280      	movs	r2, #128	; 0x80
 8000814:	2303      	movs	r3, #3
 8000816:	4630      	mov	r0, r6
 8000818:	2172      	movs	r1, #114	; 0x72
 800081a:	f000 f9a0 	bl	8000b5e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>
 800081e:	af01      	add	r7, sp, #4
 8000820:	4630      	mov	r0, r6
 8000822:	4621      	mov	r1, r4
 8000824:	f7ff fea4 	bl	8000570 <_ZN4CRGB8rgb_readEh>
 8000828:	463b      	mov	r3, r7
 800082a:	4630      	mov	r0, r6
 800082c:	2172      	movs	r1, #114	; 0x72
 800082e:	2292      	movs	r2, #146	; 0x92
 8000830:	f000 f9fa 	bl	8000c28 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>
 8000834:	4623      	mov	r3, r4
 8000836:	5cfa      	ldrb	r2, [r7, r3]
 8000838:	2a69      	cmp	r2, #105	; 0x69
 800083a:	bf1c      	itt	ne
 800083c:	2201      	movne	r2, #1
 800083e:	409a      	lslne	r2, r3
 8000840:	f103 0301 	add.w	r3, r3, #1
 8000844:	bf18      	it	ne
 8000846:	4314      	orrne	r4, r2
 8000848:	2b04      	cmp	r3, #4
 800084a:	d1f4      	bne.n	8000836 <_ZN4CRGB8rgb_initEv+0x96>
 800084c:	461f      	mov	r7, r3
 800084e:	4630      	mov	r0, r6
 8000850:	2101      	movs	r1, #1
 8000852:	f7ff fe8d 	bl	8000570 <_ZN4CRGB8rgb_readEh>
 8000856:	3f01      	subs	r7, #1
 8000858:	d1f9      	bne.n	800084e <_ZN4CRGB8rgb_initEv+0xae>
 800085a:	2104      	movs	r1, #4
 800085c:	f9b5 3048 	ldrsh.w	r3, [r5, #72]	; 0x48
 8000860:	089b      	lsrs	r3, r3, #2
 8000862:	f8a5 3048 	strh.w	r3, [r5, #72]	; 0x48
 8000866:	f9b5 3050 	ldrsh.w	r3, [r5, #80]	; 0x50
 800086a:	089b      	lsrs	r3, r3, #2
 800086c:	f8a5 3050 	strh.w	r3, [r5, #80]	; 0x50
 8000870:	f9b5 3058 	ldrsh.w	r3, [r5, #88]	; 0x58
 8000874:	089b      	lsrs	r3, r3, #2
 8000876:	f8a5 3058 	strh.w	r3, [r5, #88]	; 0x58
 800087a:	f9b5 3068 	ldrsh.w	r3, [r5, #104]	; 0x68
 800087e:	089b      	lsrs	r3, r3, #2
 8000880:	f8a5 3068 	strh.w	r3, [r5, #104]	; 0x68
 8000884:	f9b5 3060 	ldrsh.w	r3, [r5, #96]	; 0x60
 8000888:	3901      	subs	r1, #1
 800088a:	ea4f 0393 	mov.w	r3, r3, lsr #2
 800088e:	f8a5 3060 	strh.w	r3, [r5, #96]	; 0x60
 8000892:	f105 0502 	add.w	r5, r5, #2
 8000896:	d1e1      	bne.n	800085c <_ZN4CRGB8rgb_initEv+0xbc>
 8000898:	4630      	mov	r0, r6
 800089a:	f7ff fe69 	bl	8000570 <_ZN4CRGB8rgb_readEh>
 800089e:	b114      	cbz	r4, 80008a6 <_ZN4CRGB8rgb_initEv+0x106>
 80008a0:	4802      	ldr	r0, [pc, #8]	; (80008ac <_ZN4CRGB8rgb_initEv+0x10c>)
 80008a2:	1b00      	subs	r0, r0, r4
 80008a4:	e000      	b.n	80008a8 <_ZN4CRGB8rgb_initEv+0x108>
 80008a6:	4620      	mov	r0, r4
 80008a8:	b003      	add	sp, #12
 80008aa:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80008ac:	fffffc18 	.word	0xfffffc18

080008b0 <_ZN6CMotor13motor_refreshEv>:
 80008b0:	b570      	push	{r4, r5, r6, lr}
 80008b2:	e890 0030 	ldmia.w	r0, {r4, r5}
 80008b6:	2c2c      	cmp	r4, #44	; 0x2c
 80008b8:	dc74      	bgt.n	80009a4 <_ZN6CMotor13motor_refreshEv+0xf4>
 80008ba:	f114 0f2c 	cmn.w	r4, #44	; 0x2c
 80008be:	db11      	blt.n	80008e4 <_ZN6CMotor13motor_refreshEv+0x34>
 80008c0:	2d2c      	cmp	r5, #44	; 0x2c
 80008c2:	dc5e      	bgt.n	8000982 <_ZN6CMotor13motor_refreshEv+0xd2>
 80008c4:	f115 0f2c 	cmn.w	r5, #44	; 0x2c
 80008c8:	db33      	blt.n	8000932 <_ZN6CMotor13motor_refreshEv+0x82>
 80008ca:	b1dc      	cbz	r4, 8000904 <_ZN6CMotor13motor_refreshEv+0x54>
 80008cc:	e001      	b.n	80008d2 <_ZN6CMotor13motor_refreshEv+0x22>
 80008ce:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 80008d2:	2c00      	cmp	r4, #0
 80008d4:	dd0d      	ble.n	80008f2 <_ZN6CMotor13motor_refreshEv+0x42>
 80008d6:	2c06      	cmp	r4, #6
 80008d8:	bfb8      	it	lt
 80008da:	2406      	movlt	r4, #6
 80008dc:	00a4      	lsls	r4, r4, #2
 80008de:	f044 0402 	orr.w	r4, r4, #2
 80008e2:	e00d      	b.n	8000900 <_ZN6CMotor13motor_refreshEv+0x50>
 80008e4:	2d2c      	cmp	r5, #44	; 0x2c
 80008e6:	f06f 042b 	mvn.w	r4, #43	; 0x2b
 80008ea:	dc60      	bgt.n	80009ae <_ZN6CMotor13motor_refreshEv+0xfe>
 80008ec:	42a5      	cmp	r5, r4
 80008ee:	bfb8      	it	lt
 80008f0:	4625      	movlt	r5, r4
 80008f2:	4264      	negs	r4, r4
 80008f4:	2c06      	cmp	r4, #6
 80008f6:	bfb8      	it	lt
 80008f8:	2406      	movlt	r4, #6
 80008fa:	00a4      	lsls	r4, r4, #2
 80008fc:	f044 0401 	orr.w	r4, r4, #1
 8000900:	b2e4      	uxtb	r4, r4
 8000902:	e000      	b.n	8000906 <_ZN6CMotor13motor_refreshEv+0x56>
 8000904:	241b      	movs	r4, #27
 8000906:	2200      	movs	r2, #0
 8000908:	4613      	mov	r3, r2
 800090a:	482a      	ldr	r0, [pc, #168]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 800090c:	21c0      	movs	r1, #192	; 0xc0
 800090e:	f000 faa5 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 8000912:	4828      	ldr	r0, [pc, #160]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000914:	21c0      	movs	r1, #192	; 0xc0
 8000916:	2200      	movs	r2, #0
 8000918:	4623      	mov	r3, r4
 800091a:	f000 fa9f 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 800091e:	2d00      	cmp	r5, #0
 8000920:	d020      	beq.n	8000964 <_ZN6CMotor13motor_refreshEv+0xb4>
 8000922:	dd16      	ble.n	8000952 <_ZN6CMotor13motor_refreshEv+0xa2>
 8000924:	2d06      	cmp	r5, #6
 8000926:	bfb8      	it	lt
 8000928:	2506      	movlt	r5, #6
 800092a:	00ad      	lsls	r5, r5, #2
 800092c:	f045 0501 	orr.w	r5, r5, #1
 8000930:	e016      	b.n	8000960 <_ZN6CMotor13motor_refreshEv+0xb0>
 8000932:	2c00      	cmp	r4, #0
 8000934:	d1cb      	bne.n	80008ce <_ZN6CMotor13motor_refreshEv+0x1e>
 8000936:	481f      	ldr	r0, [pc, #124]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000938:	21c0      	movs	r1, #192	; 0xc0
 800093a:	4622      	mov	r2, r4
 800093c:	4623      	mov	r3, r4
 800093e:	f000 fa8d 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 8000942:	481c      	ldr	r0, [pc, #112]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000944:	21c0      	movs	r1, #192	; 0xc0
 8000946:	4622      	mov	r2, r4
 8000948:	231b      	movs	r3, #27
 800094a:	f000 fa87 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 800094e:	f06f 052b 	mvn.w	r5, #43	; 0x2b
 8000952:	426d      	negs	r5, r5
 8000954:	2d06      	cmp	r5, #6
 8000956:	bfb8      	it	lt
 8000958:	2506      	movlt	r5, #6
 800095a:	00ad      	lsls	r5, r5, #2
 800095c:	f045 0502 	orr.w	r5, r5, #2
 8000960:	b2ed      	uxtb	r5, r5
 8000962:	e000      	b.n	8000966 <_ZN6CMotor13motor_refreshEv+0xb6>
 8000964:	251b      	movs	r5, #27
 8000966:	2200      	movs	r2, #0
 8000968:	4613      	mov	r3, r2
 800096a:	4812      	ldr	r0, [pc, #72]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 800096c:	21c2      	movs	r1, #194	; 0xc2
 800096e:	f000 fa75 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 8000972:	462b      	mov	r3, r5
 8000974:	480f      	ldr	r0, [pc, #60]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000976:	21c2      	movs	r1, #194	; 0xc2
 8000978:	2200      	movs	r2, #0
 800097a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 800097e:	f000 ba6d 	b.w	8000e5c <_ZN4CI2C9write_regEhhh>
 8000982:	b96c      	cbnz	r4, 80009a0 <_ZN6CMotor13motor_refreshEv+0xf0>
 8000984:	480b      	ldr	r0, [pc, #44]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000986:	21c0      	movs	r1, #192	; 0xc0
 8000988:	4622      	mov	r2, r4
 800098a:	4623      	mov	r3, r4
 800098c:	f000 fa66 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 8000990:	4808      	ldr	r0, [pc, #32]	; (80009b4 <_ZN6CMotor13motor_refreshEv+0x104>)
 8000992:	21c0      	movs	r1, #192	; 0xc0
 8000994:	4622      	mov	r2, r4
 8000996:	231b      	movs	r3, #27
 8000998:	f000 fa60 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 800099c:	252c      	movs	r5, #44	; 0x2c
 800099e:	e7c4      	b.n	800092a <_ZN6CMotor13motor_refreshEv+0x7a>
 80009a0:	252c      	movs	r5, #44	; 0x2c
 80009a2:	e796      	b.n	80008d2 <_ZN6CMotor13motor_refreshEv+0x22>
 80009a4:	242c      	movs	r4, #44	; 0x2c
 80009a6:	42a5      	cmp	r5, r4
 80009a8:	dd8c      	ble.n	80008c4 <_ZN6CMotor13motor_refreshEv+0x14>
 80009aa:	4625      	mov	r5, r4
 80009ac:	e796      	b.n	80008dc <_ZN6CMotor13motor_refreshEv+0x2c>
 80009ae:	252c      	movs	r5, #44	; 0x2c
 80009b0:	e79f      	b.n	80008f2 <_ZN6CMotor13motor_refreshEv+0x42>
 80009b2:	bf00      	nop
 80009b4:	2000007c 	.word	0x2000007c

080009b8 <_ZN6CMotor9set_motorEml>:
 80009b8:	2901      	cmp	r1, #1
 80009ba:	bf98      	it	ls
 80009bc:	f840 2021 	strls.w	r2, [r0, r1, lsl #2]
 80009c0:	f7ff bf76 	b.w	80008b0 <_ZN6CMotor13motor_refreshEv>

080009c4 <_ZN6CMotor10motor_initEv>:
 80009c4:	b510      	push	{r4, lr}
 80009c6:	2100      	movs	r1, #0
 80009c8:	4604      	mov	r4, r0
 80009ca:	460a      	mov	r2, r1
 80009cc:	f7ff fff4 	bl	80009b8 <_ZN6CMotor9set_motorEml>
 80009d0:	4620      	mov	r0, r4
 80009d2:	2101      	movs	r1, #1
 80009d4:	2200      	movs	r2, #0
 80009d6:	f7ff ffef 	bl	80009b8 <_ZN6CMotor9set_motorEml>
 80009da:	4620      	mov	r0, r4
 80009dc:	f7ff ff68 	bl	80008b0 <_ZN6CMotor13motor_refreshEv>
 80009e0:	2000      	movs	r0, #0
 80009e2:	bd10      	pop	{r4, pc}

080009e4 <_ZN8CSensors12sensors_initEv>:
 80009e4:	b510      	push	{r4, lr}
 80009e6:	4604      	mov	r4, r0
 80009e8:	4808      	ldr	r0, [pc, #32]	; (8000a0c <_ZN8CSensors12sensors_initEv+0x28>)
 80009ea:	f000 f9b5 	bl	8000d58 <_ZN4CI2C4initEv>
 80009ee:	4620      	mov	r0, r4
 80009f0:	f7ff fed6 	bl	80007a0 <_ZN4CRGB8rgb_initEv>
 80009f4:	b110      	cbz	r0, 80009fc <_ZN8CSensors12sensors_initEv+0x18>
 80009f6:	f5a0 707a 	sub.w	r0, r0, #1000	; 0x3e8
 80009fa:	bd10      	pop	{r4, pc}
 80009fc:	f104 0088 	add.w	r0, r4, #136	; 0x88
 8000a00:	f000 fb3a 	bl	8001078 <_ZN4CIMU8imu_initEv>
 8000a04:	b108      	cbz	r0, 8000a0a <_ZN8CSensors12sensors_initEv+0x26>
 8000a06:	f5a0 60fa 	sub.w	r0, r0, #2000	; 0x7d0
 8000a0a:	bd10      	pop	{r4, pc}
 8000a0c:	2000007c 	.word	0x2000007c

08000a10 <_ZN8CRGB_I2C13rgb_i2c_delayEv>:
 8000a10:	bf00      	nop
 8000a12:	bf00      	nop
 8000a14:	bf00      	nop
 8000a16:	bf00      	nop
 8000a18:	4770      	bx	lr

08000a1a <_ZN8CRGB_I2C12RGBSetLowSDAEv>:
 8000a1a:	b513      	push	{r0, r1, r4, lr}
 8000a1c:	6803      	ldr	r3, [r0, #0]
 8000a1e:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000a22:	4604      	mov	r4, r0
 8000a24:	9300      	str	r3, [sp, #0]
 8000a26:	2301      	movs	r3, #1
 8000a28:	f88d 3004 	strb.w	r3, [sp, #4]
 8000a2c:	2203      	movs	r2, #3
 8000a2e:	f88d 3006 	strb.w	r3, [sp, #6]
 8000a32:	4669      	mov	r1, sp
 8000a34:	2300      	movs	r3, #0
 8000a36:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a3a:	f88d 2005 	strb.w	r2, [sp, #5]
 8000a3e:	f88d 3007 	strb.w	r3, [sp, #7]
 8000a42:	f001 f993 	bl	8001d6c <GPIO_Init>
 8000a46:	6823      	ldr	r3, [r4, #0]
 8000a48:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8000a4c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000a50:	8513      	strh	r3, [r2, #40]	; 0x28
 8000a52:	4620      	mov	r0, r4
 8000a54:	f7ff ffdc 	bl	8000a10 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000a58:	b002      	add	sp, #8
 8000a5a:	bd10      	pop	{r4, pc}

08000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>:
 8000a5c:	b513      	push	{r0, r1, r4, lr}
 8000a5e:	6803      	ldr	r3, [r0, #0]
 8000a60:	4604      	mov	r4, r0
 8000a62:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000a66:	9300      	str	r3, [sp, #0]
 8000a68:	2203      	movs	r2, #3
 8000a6a:	2300      	movs	r3, #0
 8000a6c:	4669      	mov	r1, sp
 8000a6e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000a72:	f88d 3004 	strb.w	r3, [sp, #4]
 8000a76:	f88d 2005 	strb.w	r2, [sp, #5]
 8000a7a:	f88d 3007 	strb.w	r3, [sp, #7]
 8000a7e:	f001 f975 	bl	8001d6c <GPIO_Init>
 8000a82:	6823      	ldr	r3, [r4, #0]
 8000a84:	f04f 4290 	mov.w	r2, #1207959552	; 0x48000000
 8000a88:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8000a8c:	6193      	str	r3, [r2, #24]
 8000a8e:	4620      	mov	r0, r4
 8000a90:	f7ff ffbe 	bl	8000a10 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000a94:	b002      	add	sp, #8
 8000a96:	bd10      	pop	{r4, pc}

08000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>:
 8000a98:	4b02      	ldr	r3, [pc, #8]	; (8000aa4 <_ZN8CRGB_I2C12RGBSetLowSCLEv+0xc>)
 8000a9a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000a9e:	851a      	strh	r2, [r3, #40]	; 0x28
 8000aa0:	f7ff bfb6 	b.w	8000a10 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000aa4:	48000800 	.word	0x48000800

08000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>:
 8000aa8:	4b02      	ldr	r3, [pc, #8]	; (8000ab4 <_ZN8CRGB_I2C13RGBSetHighSCLEv+0xc>)
 8000aaa:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 8000aae:	619a      	str	r2, [r3, #24]
 8000ab0:	f7ff bfae 	b.w	8000a10 <_ZN8CRGB_I2C13rgb_i2c_delayEv>
 8000ab4:	48000800 	.word	0x48000800

08000ab8 <_ZN8CRGB_I2C12rgb_i2cStartEv>:
 8000ab8:	b510      	push	{r4, lr}
 8000aba:	4604      	mov	r4, r0
 8000abc:	f7ff fff4 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000ac0:	4620      	mov	r0, r4
 8000ac2:	f7ff ffcb 	bl	8000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000ac6:	4620      	mov	r0, r4
 8000ac8:	f7ff ffee 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000acc:	4620      	mov	r0, r4
 8000ace:	f7ff ffa4 	bl	8000a1a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000ad2:	4620      	mov	r0, r4
 8000ad4:	f7ff ffe0 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000ad8:	4620      	mov	r0, r4
 8000ada:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000ade:	f7ff bfbd 	b.w	8000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000ae2 <_ZN8CRGB_I2C11rgb_i2cStopEv>:
 8000ae2:	b510      	push	{r4, lr}
 8000ae4:	4604      	mov	r4, r0
 8000ae6:	f7ff ffd7 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000aea:	4620      	mov	r0, r4
 8000aec:	f7ff ff95 	bl	8000a1a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000af0:	4620      	mov	r0, r4
 8000af2:	f7ff ffd9 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000af6:	4620      	mov	r0, r4
 8000af8:	f7ff ff8f 	bl	8000a1a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000afc:	4620      	mov	r0, r4
 8000afe:	f7ff ffd3 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b02:	4620      	mov	r0, r4
 8000b04:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000b08:	f7ff bfa8 	b.w	8000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>

08000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>:
 8000b0c:	b570      	push	{r4, r5, r6, lr}
 8000b0e:	4604      	mov	r4, r0
 8000b10:	460e      	mov	r6, r1
 8000b12:	2508      	movs	r5, #8
 8000b14:	4620      	mov	r0, r4
 8000b16:	f7ff ffbf 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b1a:	0633      	lsls	r3, r6, #24
 8000b1c:	4620      	mov	r0, r4
 8000b1e:	d502      	bpl.n	8000b26 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1a>
 8000b20:	f7ff ff9c 	bl	8000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b24:	e001      	b.n	8000b2a <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x1e>
 8000b26:	f7ff ff78 	bl	8000a1a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000b2a:	4620      	mov	r0, r4
 8000b2c:	3d01      	subs	r5, #1
 8000b2e:	f7ff ffbb 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b32:	0076      	lsls	r6, r6, #1
 8000b34:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000b38:	b2f6      	uxtb	r6, r6
 8000b3a:	d1eb      	bne.n	8000b14 <_ZN8CRGB_I2C12rgb_i2cWriteEh+0x8>
 8000b3c:	4620      	mov	r0, r4
 8000b3e:	f7ff ffab 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b42:	4620      	mov	r0, r4
 8000b44:	f7ff ff8a 	bl	8000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000b48:	4620      	mov	r0, r4
 8000b4a:	f7ff ffad 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000b4e:	4620      	mov	r0, r4
 8000b50:	f7ff ffa2 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000b54:	4620      	mov	r0, r4
 8000b56:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 8000b5a:	f7ff bf59 	b.w	8000a10 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000b5e <_ZN8CRGB_I2C17rgb_i2c_write_regEhhh>:
 8000b5e:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b60:	4604      	mov	r4, r0
 8000b62:	460f      	mov	r7, r1
 8000b64:	4616      	mov	r6, r2
 8000b66:	461d      	mov	r5, r3
 8000b68:	f7ff ffa6 	bl	8000ab8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000b6c:	4620      	mov	r0, r4
 8000b6e:	4639      	mov	r1, r7
 8000b70:	f7ff ffcc 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b74:	4620      	mov	r0, r4
 8000b76:	4631      	mov	r1, r6
 8000b78:	f7ff ffc8 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b7c:	4620      	mov	r0, r4
 8000b7e:	4629      	mov	r1, r5
 8000b80:	f7ff ffc4 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000b84:	4620      	mov	r0, r4
 8000b86:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000b8a:	f7ff bfaa 	b.w	8000ae2 <_ZN8CRGB_I2C11rgb_i2cStopEv>

08000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>:
 8000b8e:	2300      	movs	r3, #0
 8000b90:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8000b94:	4605      	mov	r5, r0
 8000b96:	7013      	strb	r3, [r2, #0]
 8000b98:	7053      	strb	r3, [r2, #1]
 8000b9a:	7093      	strb	r3, [r2, #2]
 8000b9c:	70d3      	strb	r3, [r2, #3]
 8000b9e:	460e      	mov	r6, r1
 8000ba0:	4614      	mov	r4, r2
 8000ba2:	1cd7      	adds	r7, r2, #3
 8000ba4:	f7ff ff78 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000ba8:	4628      	mov	r0, r5
 8000baa:	f7ff ff57 	bl	8000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000bae:	f04f 0808 	mov.w	r8, #8
 8000bb2:	1e63      	subs	r3, r4, #1
 8000bb4:	f813 2f01 	ldrb.w	r2, [r3, #1]!
 8000bb8:	0052      	lsls	r2, r2, #1
 8000bba:	42bb      	cmp	r3, r7
 8000bbc:	701a      	strb	r2, [r3, #0]
 8000bbe:	d1f9      	bne.n	8000bb4 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x26>
 8000bc0:	4628      	mov	r0, r5
 8000bc2:	f7ff ff71 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000bc6:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8000bca:	8a1b      	ldrh	r3, [r3, #16]
 8000bcc:	b29b      	uxth	r3, r3
 8000bce:	06d8      	lsls	r0, r3, #27
 8000bd0:	bf42      	ittt	mi
 8000bd2:	7822      	ldrbmi	r2, [r4, #0]
 8000bd4:	f042 0201 	orrmi.w	r2, r2, #1
 8000bd8:	7022      	strbmi	r2, [r4, #0]
 8000bda:	0699      	lsls	r1, r3, #26
 8000bdc:	bf42      	ittt	mi
 8000bde:	7862      	ldrbmi	r2, [r4, #1]
 8000be0:	f042 0201 	orrmi.w	r2, r2, #1
 8000be4:	7062      	strbmi	r2, [r4, #1]
 8000be6:	065a      	lsls	r2, r3, #25
 8000be8:	bf42      	ittt	mi
 8000bea:	78a2      	ldrbmi	r2, [r4, #2]
 8000bec:	f042 0201 	orrmi.w	r2, r2, #1
 8000bf0:	70a2      	strbmi	r2, [r4, #2]
 8000bf2:	061b      	lsls	r3, r3, #24
 8000bf4:	bf42      	ittt	mi
 8000bf6:	78e3      	ldrbmi	r3, [r4, #3]
 8000bf8:	f043 0301 	orrmi.w	r3, r3, #1
 8000bfc:	70e3      	strbmi	r3, [r4, #3]
 8000bfe:	4628      	mov	r0, r5
 8000c00:	f7ff ff4a 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c04:	f1b8 0801 	subs.w	r8, r8, #1
 8000c08:	d1d3      	bne.n	8000bb2 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x24>
 8000c0a:	b116      	cbz	r6, 8000c12 <_ZN8CRGB_I2C11rgb_i2cReadEhPh+0x84>
 8000c0c:	4628      	mov	r0, r5
 8000c0e:	f7ff ff04 	bl	8000a1a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000c12:	4628      	mov	r0, r5
 8000c14:	f7ff ff48 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000c18:	4628      	mov	r0, r5
 8000c1a:	f7ff ff3d 	bl	8000a98 <_ZN8CRGB_I2C12RGBSetLowSCLEv>
 8000c1e:	4628      	mov	r0, r5
 8000c20:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8000c24:	f7ff bef4 	b.w	8000a10 <_ZN8CRGB_I2C13rgb_i2c_delayEv>

08000c28 <_ZN8CRGB_I2C16rgb_i2c_read_regEhhPh>:
 8000c28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000c2a:	4604      	mov	r4, r0
 8000c2c:	460d      	mov	r5, r1
 8000c2e:	4617      	mov	r7, r2
 8000c30:	461e      	mov	r6, r3
 8000c32:	f7ff ff41 	bl	8000ab8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000c36:	4620      	mov	r0, r4
 8000c38:	4629      	mov	r1, r5
 8000c3a:	f7ff ff67 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c3e:	4639      	mov	r1, r7
 8000c40:	4620      	mov	r0, r4
 8000c42:	f7ff ff63 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c46:	4620      	mov	r0, r4
 8000c48:	f7ff ff36 	bl	8000ab8 <_ZN8CRGB_I2C12rgb_i2cStartEv>
 8000c4c:	4620      	mov	r0, r4
 8000c4e:	f045 0101 	orr.w	r1, r5, #1
 8000c52:	f7ff ff5b 	bl	8000b0c <_ZN8CRGB_I2C12rgb_i2cWriteEh>
 8000c56:	4620      	mov	r0, r4
 8000c58:	4632      	mov	r2, r6
 8000c5a:	2100      	movs	r1, #0
 8000c5c:	f7ff ff97 	bl	8000b8e <_ZN8CRGB_I2C11rgb_i2cReadEhPh>
 8000c60:	4620      	mov	r0, r4
 8000c62:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000c66:	f7ff bf3c 	b.w	8000ae2 <_ZN8CRGB_I2C11rgb_i2cStopEv>
	...

08000c6c <_ZN8CRGB_I2C12rgb_i2c_initEv>:
 8000c6c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8000c6e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8000c72:	6003      	str	r3, [r0, #0]
 8000c74:	f44f 5300 	mov.w	r3, #8192	; 0x2000
 8000c78:	4604      	mov	r4, r0
 8000c7a:	2500      	movs	r5, #0
 8000c7c:	9300      	str	r3, [sp, #0]
 8000c7e:	2703      	movs	r7, #3
 8000c80:	2301      	movs	r3, #1
 8000c82:	4669      	mov	r1, sp
 8000c84:	4813      	ldr	r0, [pc, #76]	; (8000cd4 <_ZN8CRGB_I2C12rgb_i2c_initEv+0x68>)
 8000c86:	f88d 3004 	strb.w	r3, [sp, #4]
 8000c8a:	26f0      	movs	r6, #240	; 0xf0
 8000c8c:	f88d 7005 	strb.w	r7, [sp, #5]
 8000c90:	f88d 5006 	strb.w	r5, [sp, #6]
 8000c94:	f88d 5007 	strb.w	r5, [sp, #7]
 8000c98:	f001 f868 	bl	8001d6c <GPIO_Init>
 8000c9c:	4669      	mov	r1, sp
 8000c9e:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000ca2:	9600      	str	r6, [sp, #0]
 8000ca4:	f88d 5004 	strb.w	r5, [sp, #4]
 8000ca8:	f88d 7005 	strb.w	r7, [sp, #5]
 8000cac:	f88d 5007 	strb.w	r5, [sp, #7]
 8000cb0:	f001 f85c 	bl	8001d6c <GPIO_Init>
 8000cb4:	4631      	mov	r1, r6
 8000cb6:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 8000cba:	f001 f899 	bl	8001df0 <GPIO_SetBits>
 8000cbe:	4620      	mov	r0, r4
 8000cc0:	f7ff fef2 	bl	8000aa8 <_ZN8CRGB_I2C13RGBSetHighSCLEv>
 8000cc4:	4620      	mov	r0, r4
 8000cc6:	f7ff fea8 	bl	8000a1a <_ZN8CRGB_I2C12RGBSetLowSDAEv>
 8000cca:	4620      	mov	r0, r4
 8000ccc:	f7ff fec6 	bl	8000a5c <_ZN8CRGB_I2C13RGBSetHighSDAEv>
 8000cd0:	b003      	add	sp, #12
 8000cd2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000cd4:	48000800 	.word	0x48000800

08000cd8 <_ZN4CI2C5delayEv>:
 8000cd8:	230b      	movs	r3, #11
 8000cda:	3b01      	subs	r3, #1
 8000cdc:	d001      	beq.n	8000ce2 <_ZN4CI2C5delayEv+0xa>
 8000cde:	bf00      	nop
 8000ce0:	e7fb      	b.n	8000cda <_ZN4CI2C5delayEv+0x2>
 8000ce2:	4770      	bx	lr

08000ce4 <_ZN4CI2C9SetLowSDAEv>:
 8000ce4:	b573      	push	{r0, r1, r4, r5, r6, lr}
 8000ce6:	4c0c      	ldr	r4, [pc, #48]	; (8000d18 <_ZN4CI2C9SetLowSDAEv+0x34>)
 8000ce8:	2301      	movs	r3, #1
 8000cea:	2203      	movs	r2, #3
 8000cec:	4606      	mov	r6, r0
 8000cee:	2580      	movs	r5, #128	; 0x80
 8000cf0:	f88d 3004 	strb.w	r3, [sp, #4]
 8000cf4:	f88d 3006 	strb.w	r3, [sp, #6]
 8000cf8:	4620      	mov	r0, r4
 8000cfa:	2300      	movs	r3, #0
 8000cfc:	4669      	mov	r1, sp
 8000cfe:	f88d 2005 	strb.w	r2, [sp, #5]
 8000d02:	f88d 3007 	strb.w	r3, [sp, #7]
 8000d06:	9500      	str	r5, [sp, #0]
 8000d08:	f001 f830 	bl	8001d6c <GPIO_Init>
 8000d0c:	8525      	strh	r5, [r4, #40]	; 0x28
 8000d0e:	4630      	mov	r0, r6
 8000d10:	f7ff ffe2 	bl	8000cd8 <_ZN4CI2C5delayEv>
 8000d14:	b002      	add	sp, #8
 8000d16:	bd70      	pop	{r4, r5, r6, pc}
 8000d18:	48000400 	.word	0x48000400

08000d1c <_ZN4CI2C10SetHighSDAEv>:
 8000d1c:	4b05      	ldr	r3, [pc, #20]	; (8000d34 <_ZN4CI2C10SetHighSDAEv+0x18>)
 8000d1e:	681a      	ldr	r2, [r3, #0]
 8000d20:	f422 4240 	bic.w	r2, r2, #49152	; 0xc000
 8000d24:	601a      	str	r2, [r3, #0]
 8000d26:	681a      	ldr	r2, [r3, #0]
 8000d28:	601a      	str	r2, [r3, #0]
 8000d2a:	2280      	movs	r2, #128	; 0x80
 8000d2c:	619a      	str	r2, [r3, #24]
 8000d2e:	f7ff bfd3 	b.w	8000cd8 <_ZN4CI2C5delayEv>
 8000d32:	bf00      	nop
 8000d34:	48000400 	.word	0x48000400

08000d38 <_ZN4CI2C9SetLowSCLEv>:
 8000d38:	4b02      	ldr	r3, [pc, #8]	; (8000d44 <_ZN4CI2C9SetLowSCLEv+0xc>)
 8000d3a:	2240      	movs	r2, #64	; 0x40
 8000d3c:	851a      	strh	r2, [r3, #40]	; 0x28
 8000d3e:	f7ff bfcb 	b.w	8000cd8 <_ZN4CI2C5delayEv>
 8000d42:	bf00      	nop
 8000d44:	48000400 	.word	0x48000400

08000d48 <_ZN4CI2C10SetHighSCLEv>:
 8000d48:	4b02      	ldr	r3, [pc, #8]	; (8000d54 <_ZN4CI2C10SetHighSCLEv+0xc>)
 8000d4a:	2240      	movs	r2, #64	; 0x40
 8000d4c:	619a      	str	r2, [r3, #24]
 8000d4e:	f7ff bfc3 	b.w	8000cd8 <_ZN4CI2C5delayEv>
 8000d52:	bf00      	nop
 8000d54:	48000400 	.word	0x48000400

08000d58 <_ZN4CI2C4initEv>:
 8000d58:	b513      	push	{r0, r1, r4, lr}
 8000d5a:	4604      	mov	r4, r0
 8000d5c:	2101      	movs	r1, #1
 8000d5e:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8000d62:	f000 fdf9 	bl	8001958 <RCC_AHBPeriphClockCmd>
 8000d66:	23c0      	movs	r3, #192	; 0xc0
 8000d68:	9300      	str	r3, [sp, #0]
 8000d6a:	2301      	movs	r3, #1
 8000d6c:	2203      	movs	r2, #3
 8000d6e:	4669      	mov	r1, sp
 8000d70:	f88d 3004 	strb.w	r3, [sp, #4]
 8000d74:	f88d 3006 	strb.w	r3, [sp, #6]
 8000d78:	4809      	ldr	r0, [pc, #36]	; (8000da0 <_ZN4CI2C4initEv+0x48>)
 8000d7a:	f88d 2005 	strb.w	r2, [sp, #5]
 8000d7e:	2300      	movs	r3, #0
 8000d80:	f88d 3007 	strb.w	r3, [sp, #7]
 8000d84:	f000 fff2 	bl	8001d6c <GPIO_Init>
 8000d88:	4620      	mov	r0, r4
 8000d8a:	f7ff ffdd 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000d8e:	4620      	mov	r0, r4
 8000d90:	f7ff ffa8 	bl	8000ce4 <_ZN4CI2C9SetLowSDAEv>
 8000d94:	4620      	mov	r0, r4
 8000d96:	f7ff ffc1 	bl	8000d1c <_ZN4CI2C10SetHighSDAEv>
 8000d9a:	b002      	add	sp, #8
 8000d9c:	bd10      	pop	{r4, pc}
 8000d9e:	bf00      	nop
 8000da0:	48000400 	.word	0x48000400

08000da4 <_ZN4CI2C5StartEv>:
 8000da4:	b510      	push	{r4, lr}
 8000da6:	4604      	mov	r4, r0
 8000da8:	f7ff ffce 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000dac:	4620      	mov	r0, r4
 8000dae:	f7ff ffb5 	bl	8000d1c <_ZN4CI2C10SetHighSDAEv>
 8000db2:	4620      	mov	r0, r4
 8000db4:	f7ff ffc8 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000db8:	4620      	mov	r0, r4
 8000dba:	f7ff ff93 	bl	8000ce4 <_ZN4CI2C9SetLowSDAEv>
 8000dbe:	4620      	mov	r0, r4
 8000dc0:	f7ff ffba 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000dc4:	4620      	mov	r0, r4
 8000dc6:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000dca:	f7ff bfa7 	b.w	8000d1c <_ZN4CI2C10SetHighSDAEv>

08000dce <_ZN4CI2C4StopEv>:
 8000dce:	b510      	push	{r4, lr}
 8000dd0:	4604      	mov	r4, r0
 8000dd2:	f7ff ffb1 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000dd6:	4620      	mov	r0, r4
 8000dd8:	f7ff ff84 	bl	8000ce4 <_ZN4CI2C9SetLowSDAEv>
 8000ddc:	4620      	mov	r0, r4
 8000dde:	f7ff ffb3 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000de2:	4620      	mov	r0, r4
 8000de4:	f7ff ff7e 	bl	8000ce4 <_ZN4CI2C9SetLowSDAEv>
 8000de8:	4620      	mov	r0, r4
 8000dea:	f7ff ffad 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000dee:	4620      	mov	r0, r4
 8000df0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8000df4:	f7ff bf92 	b.w	8000d1c <_ZN4CI2C10SetHighSDAEv>

08000df8 <_ZN4CI2C5WriteEh>:
 8000df8:	b570      	push	{r4, r5, r6, lr}
 8000dfa:	4604      	mov	r4, r0
 8000dfc:	460e      	mov	r6, r1
 8000dfe:	2508      	movs	r5, #8
 8000e00:	4620      	mov	r0, r4
 8000e02:	f7ff ff99 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000e06:	0633      	lsls	r3, r6, #24
 8000e08:	4620      	mov	r0, r4
 8000e0a:	d502      	bpl.n	8000e12 <_ZN4CI2C5WriteEh+0x1a>
 8000e0c:	f7ff ff86 	bl	8000d1c <_ZN4CI2C10SetHighSDAEv>
 8000e10:	e001      	b.n	8000e16 <_ZN4CI2C5WriteEh+0x1e>
 8000e12:	f7ff ff67 	bl	8000ce4 <_ZN4CI2C9SetLowSDAEv>
 8000e16:	4620      	mov	r0, r4
 8000e18:	3d01      	subs	r5, #1
 8000e1a:	f7ff ff95 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000e1e:	0076      	lsls	r6, r6, #1
 8000e20:	f015 05ff 	ands.w	r5, r5, #255	; 0xff
 8000e24:	b2f6      	uxtb	r6, r6
 8000e26:	d1eb      	bne.n	8000e00 <_ZN4CI2C5WriteEh+0x8>
 8000e28:	4620      	mov	r0, r4
 8000e2a:	f7ff ff85 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000e2e:	4620      	mov	r0, r4
 8000e30:	f7ff ff74 	bl	8000d1c <_ZN4CI2C10SetHighSDAEv>
 8000e34:	4620      	mov	r0, r4
 8000e36:	f7ff ff87 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000e3a:	4b07      	ldr	r3, [pc, #28]	; (8000e58 <_ZN4CI2C5WriteEh+0x60>)
 8000e3c:	8a1d      	ldrh	r5, [r3, #16]
 8000e3e:	4620      	mov	r0, r4
 8000e40:	f7ff ff7a 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000e44:	b2ad      	uxth	r5, r5
 8000e46:	4620      	mov	r0, r4
 8000e48:	f7ff ff46 	bl	8000cd8 <_ZN4CI2C5delayEv>
 8000e4c:	f085 0080 	eor.w	r0, r5, #128	; 0x80
 8000e50:	f3c0 10c0 	ubfx	r0, r0, #7, #1
 8000e54:	bd70      	pop	{r4, r5, r6, pc}
 8000e56:	bf00      	nop
 8000e58:	48000400 	.word	0x48000400

08000e5c <_ZN4CI2C9write_regEhhh>:
 8000e5c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e5e:	4604      	mov	r4, r0
 8000e60:	460f      	mov	r7, r1
 8000e62:	4616      	mov	r6, r2
 8000e64:	461d      	mov	r5, r3
 8000e66:	f7ff ff9d 	bl	8000da4 <_ZN4CI2C5StartEv>
 8000e6a:	4639      	mov	r1, r7
 8000e6c:	4620      	mov	r0, r4
 8000e6e:	f7ff ffc3 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000e72:	4631      	mov	r1, r6
 8000e74:	4620      	mov	r0, r4
 8000e76:	f7ff ffbf 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000e7a:	4620      	mov	r0, r4
 8000e7c:	4629      	mov	r1, r5
 8000e7e:	f7ff ffbb 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000e82:	4620      	mov	r0, r4
 8000e84:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8000e88:	f7ff bfa1 	b.w	8000dce <_ZN4CI2C4StopEv>

08000e8c <_ZN4CI2C4ReadEh>:
 8000e8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000e8e:	4605      	mov	r5, r0
 8000e90:	460f      	mov	r7, r1
 8000e92:	f7ff ff51 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000e96:	2608      	movs	r6, #8
 8000e98:	2400      	movs	r4, #0
 8000e9a:	4628      	mov	r0, r5
 8000e9c:	f7ff ff54 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000ea0:	4b10      	ldr	r3, [pc, #64]	; (8000ee4 <_ZN4CI2C4ReadEh+0x58>)
 8000ea2:	8a1b      	ldrh	r3, [r3, #16]
 8000ea4:	0064      	lsls	r4, r4, #1
 8000ea6:	061b      	lsls	r3, r3, #24
 8000ea8:	b2e4      	uxtb	r4, r4
 8000eaa:	4628      	mov	r0, r5
 8000eac:	f106 36ff 	add.w	r6, r6, #4294967295	; 0xffffffff
 8000eb0:	bf48      	it	mi
 8000eb2:	f044 0401 	orrmi.w	r4, r4, #1
 8000eb6:	f7ff ff3f 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000eba:	f016 06ff 	ands.w	r6, r6, #255	; 0xff
 8000ebe:	d1ec      	bne.n	8000e9a <_ZN4CI2C4ReadEh+0xe>
 8000ec0:	4628      	mov	r0, r5
 8000ec2:	b117      	cbz	r7, 8000eca <_ZN4CI2C4ReadEh+0x3e>
 8000ec4:	f7ff ff0e 	bl	8000ce4 <_ZN4CI2C9SetLowSDAEv>
 8000ec8:	e001      	b.n	8000ece <_ZN4CI2C4ReadEh+0x42>
 8000eca:	f7ff ff27 	bl	8000d1c <_ZN4CI2C10SetHighSDAEv>
 8000ece:	4628      	mov	r0, r5
 8000ed0:	f7ff ff3a 	bl	8000d48 <_ZN4CI2C10SetHighSCLEv>
 8000ed4:	4628      	mov	r0, r5
 8000ed6:	f7ff ff2f 	bl	8000d38 <_ZN4CI2C9SetLowSCLEv>
 8000eda:	4628      	mov	r0, r5
 8000edc:	f7ff ff1e 	bl	8000d1c <_ZN4CI2C10SetHighSDAEv>
 8000ee0:	4620      	mov	r0, r4
 8000ee2:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000ee4:	48000400 	.word	0x48000400

08000ee8 <_ZN4CI2C8read_regEhh>:
 8000ee8:	b570      	push	{r4, r5, r6, lr}
 8000eea:	4604      	mov	r4, r0
 8000eec:	460d      	mov	r5, r1
 8000eee:	4616      	mov	r6, r2
 8000ef0:	f7ff ff58 	bl	8000da4 <_ZN4CI2C5StartEv>
 8000ef4:	4629      	mov	r1, r5
 8000ef6:	4620      	mov	r0, r4
 8000ef8:	f7ff ff7e 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000efc:	4631      	mov	r1, r6
 8000efe:	4620      	mov	r0, r4
 8000f00:	f7ff ff7a 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000f04:	4620      	mov	r0, r4
 8000f06:	f7ff ff4d 	bl	8000da4 <_ZN4CI2C5StartEv>
 8000f0a:	f045 0101 	orr.w	r1, r5, #1
 8000f0e:	4620      	mov	r0, r4
 8000f10:	f7ff ff72 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000f14:	2100      	movs	r1, #0
 8000f16:	4620      	mov	r0, r4
 8000f18:	f7ff ffb8 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000f1c:	4605      	mov	r5, r0
 8000f1e:	4620      	mov	r0, r4
 8000f20:	f7ff ff55 	bl	8000dce <_ZN4CI2C4StopEv>
 8000f24:	4628      	mov	r0, r5
 8000f26:	bd70      	pop	{r4, r5, r6, pc}

08000f28 <_ZN4CIMU8imu_readEv>:
 8000f28:	b570      	push	{r4, r5, r6, lr}
 8000f2a:	4c52      	ldr	r4, [pc, #328]	; (8001074 <_ZN4CIMU8imu_readEv+0x14c>)
 8000f2c:	4605      	mov	r5, r0
 8000f2e:	4620      	mov	r0, r4
 8000f30:	f7ff ff38 	bl	8000da4 <_ZN4CI2C5StartEv>
 8000f34:	4620      	mov	r0, r4
 8000f36:	21d4      	movs	r1, #212	; 0xd4
 8000f38:	f7ff ff5e 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000f3c:	21a8      	movs	r1, #168	; 0xa8
 8000f3e:	4620      	mov	r0, r4
 8000f40:	f7ff ff5a 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000f44:	4620      	mov	r0, r4
 8000f46:	f7ff ff2d 	bl	8000da4 <_ZN4CI2C5StartEv>
 8000f4a:	4620      	mov	r0, r4
 8000f4c:	21d5      	movs	r1, #213	; 0xd5
 8000f4e:	f7ff ff53 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000f52:	4620      	mov	r0, r4
 8000f54:	2101      	movs	r1, #1
 8000f56:	f7ff ff99 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000f5a:	2101      	movs	r1, #1
 8000f5c:	b286      	uxth	r6, r0
 8000f5e:	4620      	mov	r0, r4
 8000f60:	f7ff ff94 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000f64:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000f68:	b200      	sxth	r0, r0
 8000f6a:	6268      	str	r0, [r5, #36]	; 0x24
 8000f6c:	2101      	movs	r1, #1
 8000f6e:	4620      	mov	r0, r4
 8000f70:	f7ff ff8c 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000f74:	2101      	movs	r1, #1
 8000f76:	b286      	uxth	r6, r0
 8000f78:	4620      	mov	r0, r4
 8000f7a:	f7ff ff87 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000f7e:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000f82:	b200      	sxth	r0, r0
 8000f84:	62a8      	str	r0, [r5, #40]	; 0x28
 8000f86:	2101      	movs	r1, #1
 8000f88:	4620      	mov	r0, r4
 8000f8a:	f7ff ff7f 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000f8e:	2100      	movs	r1, #0
 8000f90:	b286      	uxth	r6, r0
 8000f92:	4620      	mov	r0, r4
 8000f94:	f7ff ff7a 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000f98:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000f9c:	b200      	sxth	r0, r0
 8000f9e:	62e8      	str	r0, [r5, #44]	; 0x2c
 8000fa0:	4620      	mov	r0, r4
 8000fa2:	f7ff ff14 	bl	8000dce <_ZN4CI2C4StopEv>
 8000fa6:	4620      	mov	r0, r4
 8000fa8:	f7ff fefc 	bl	8000da4 <_ZN4CI2C5StartEv>
 8000fac:	4620      	mov	r0, r4
 8000fae:	213c      	movs	r1, #60	; 0x3c
 8000fb0:	f7ff ff22 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000fb4:	21a8      	movs	r1, #168	; 0xa8
 8000fb6:	4620      	mov	r0, r4
 8000fb8:	f7ff ff1e 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000fbc:	4620      	mov	r0, r4
 8000fbe:	f7ff fef1 	bl	8000da4 <_ZN4CI2C5StartEv>
 8000fc2:	4620      	mov	r0, r4
 8000fc4:	213d      	movs	r1, #61	; 0x3d
 8000fc6:	f7ff ff17 	bl	8000df8 <_ZN4CI2C5WriteEh>
 8000fca:	4620      	mov	r0, r4
 8000fcc:	2101      	movs	r1, #1
 8000fce:	f7ff ff5d 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000fd2:	2101      	movs	r1, #1
 8000fd4:	b286      	uxth	r6, r0
 8000fd6:	4620      	mov	r0, r4
 8000fd8:	f7ff ff58 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000fdc:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000fe0:	b200      	sxth	r0, r0
 8000fe2:	6328      	str	r0, [r5, #48]	; 0x30
 8000fe4:	2101      	movs	r1, #1
 8000fe6:	4620      	mov	r0, r4
 8000fe8:	f7ff ff50 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000fec:	2101      	movs	r1, #1
 8000fee:	b286      	uxth	r6, r0
 8000ff0:	4620      	mov	r0, r4
 8000ff2:	f7ff ff4b 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8000ff6:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8000ffa:	b200      	sxth	r0, r0
 8000ffc:	6368      	str	r0, [r5, #52]	; 0x34
 8000ffe:	2101      	movs	r1, #1
 8001000:	4620      	mov	r0, r4
 8001002:	f7ff ff43 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8001006:	2100      	movs	r1, #0
 8001008:	b286      	uxth	r6, r0
 800100a:	4620      	mov	r0, r4
 800100c:	f7ff ff3e 	bl	8000e8c <_ZN4CI2C4ReadEh>
 8001010:	ea46 2000 	orr.w	r0, r6, r0, lsl #8
 8001014:	b200      	sxth	r0, r0
 8001016:	63a8      	str	r0, [r5, #56]	; 0x38
 8001018:	4620      	mov	r0, r4
 800101a:	f7ff fed8 	bl	8000dce <_ZN4CI2C4StopEv>
 800101e:	6aaa      	ldr	r2, [r5, #40]	; 0x28
 8001020:	686b      	ldr	r3, [r5, #4]
 8001022:	6ae8      	ldr	r0, [r5, #44]	; 0x2c
 8001024:	1a9b      	subs	r3, r3, r2
 8001026:	68ea      	ldr	r2, [r5, #12]
 8001028:	26c8      	movs	r6, #200	; 0xc8
 800102a:	fb93 f3f6 	sdiv	r3, r3, r6
 800102e:	441a      	add	r2, r3
 8001030:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 8001032:	60ea      	str	r2, [r5, #12]
 8001034:	2164      	movs	r1, #100	; 0x64
 8001036:	4359      	muls	r1, r3
 8001038:	f640 14e2 	movw	r4, #2530	; 0x9e2
 800103c:	434a      	muls	r2, r1
 800103e:	682b      	ldr	r3, [r5, #0]
 8001040:	fb92 f2f4 	sdiv	r2, r2, r4
 8001044:	61aa      	str	r2, [r5, #24]
 8001046:	6a6a      	ldr	r2, [r5, #36]	; 0x24
 8001048:	1a9b      	subs	r3, r3, r2
 800104a:	692a      	ldr	r2, [r5, #16]
 800104c:	fb93 f3f6 	sdiv	r3, r3, r6
 8001050:	441a      	add	r2, r3
 8001052:	612a      	str	r2, [r5, #16]
 8001054:	434a      	muls	r2, r1
 8001056:	fb92 f2f4 	sdiv	r2, r2, r4
 800105a:	61ea      	str	r2, [r5, #28]
 800105c:	68aa      	ldr	r2, [r5, #8]
 800105e:	1a12      	subs	r2, r2, r0
 8001060:	fb92 f0f6 	sdiv	r0, r2, r6
 8001064:	696a      	ldr	r2, [r5, #20]
 8001066:	1883      	adds	r3, r0, r2
 8001068:	616b      	str	r3, [r5, #20]
 800106a:	434b      	muls	r3, r1
 800106c:	fb93 f3f4 	sdiv	r3, r3, r4
 8001070:	622b      	str	r3, [r5, #32]
 8001072:	bd70      	pop	{r4, r5, r6, pc}
 8001074:	2000007c 	.word	0x2000007c

08001078 <_ZN4CIMU8imu_initEv>:
 8001078:	230a      	movs	r3, #10
 800107a:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800107e:	63c3      	str	r3, [r0, #60]	; 0x3c
 8001080:	2300      	movs	r3, #0
 8001082:	4604      	mov	r4, r0
 8001084:	6003      	str	r3, [r0, #0]
 8001086:	6043      	str	r3, [r0, #4]
 8001088:	6083      	str	r3, [r0, #8]
 800108a:	60c3      	str	r3, [r0, #12]
 800108c:	6103      	str	r3, [r0, #16]
 800108e:	6143      	str	r3, [r0, #20]
 8001090:	f242 7511 	movw	r5, #10001	; 0x2711
 8001094:	3d01      	subs	r5, #1
 8001096:	d001      	beq.n	800109c <_ZN4CIMU8imu_initEv+0x24>
 8001098:	bf00      	nop
 800109a:	e7fb      	b.n	8001094 <_ZN4CIMU8imu_initEv+0x1c>
 800109c:	4832      	ldr	r0, [pc, #200]	; (8001168 <_ZN4CIMU8imu_initEv+0xf0>)
 800109e:	21d4      	movs	r1, #212	; 0xd4
 80010a0:	220f      	movs	r2, #15
 80010a2:	f7ff ff21 	bl	8000ee8 <_ZN4CI2C8read_regEhh>
 80010a6:	28d4      	cmp	r0, #212	; 0xd4
 80010a8:	4606      	mov	r6, r0
 80010aa:	d155      	bne.n	8001158 <_ZN4CIMU8imu_initEv+0xe0>
 80010ac:	482e      	ldr	r0, [pc, #184]	; (8001168 <_ZN4CIMU8imu_initEv+0xf0>)
 80010ae:	213c      	movs	r1, #60	; 0x3c
 80010b0:	220f      	movs	r2, #15
 80010b2:	f7ff ff19 	bl	8000ee8 <_ZN4CI2C8read_regEhh>
 80010b6:	2849      	cmp	r0, #73	; 0x49
 80010b8:	d152      	bne.n	8001160 <_ZN4CIMU8imu_initEv+0xe8>
 80010ba:	4631      	mov	r1, r6
 80010bc:	482a      	ldr	r0, [pc, #168]	; (8001168 <_ZN4CIMU8imu_initEv+0xf0>)
 80010be:	2220      	movs	r2, #32
 80010c0:	23ff      	movs	r3, #255	; 0xff
 80010c2:	f7ff fecb 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 80010c6:	4631      	mov	r1, r6
 80010c8:	4827      	ldr	r0, [pc, #156]	; (8001168 <_ZN4CIMU8imu_initEv+0xf0>)
 80010ca:	4e28      	ldr	r6, [pc, #160]	; (800116c <_ZN4CIMU8imu_initEv+0xf4>)
 80010cc:	2223      	movs	r2, #35	; 0x23
 80010ce:	2310      	movs	r3, #16
 80010d0:	f7ff fec4 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 80010d4:	4824      	ldr	r0, [pc, #144]	; (8001168 <_ZN4CIMU8imu_initEv+0xf0>)
 80010d6:	213c      	movs	r1, #60	; 0x3c
 80010d8:	221f      	movs	r2, #31
 80010da:	462b      	mov	r3, r5
 80010dc:	f7ff febe 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 80010e0:	4821      	ldr	r0, [pc, #132]	; (8001168 <_ZN4CIMU8imu_initEv+0xf0>)
 80010e2:	213c      	movs	r1, #60	; 0x3c
 80010e4:	2220      	movs	r2, #32
 80010e6:	2367      	movs	r3, #103	; 0x67
 80010e8:	f7ff feb8 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 80010ec:	481e      	ldr	r0, [pc, #120]	; (8001168 <_ZN4CIMU8imu_initEv+0xf0>)
 80010ee:	213c      	movs	r1, #60	; 0x3c
 80010f0:	2221      	movs	r2, #33	; 0x21
 80010f2:	462b      	mov	r3, r5
 80010f4:	f7ff feb2 	bl	8000e5c <_ZN4CI2C9write_regEhhh>
 80010f8:	3e01      	subs	r6, #1
 80010fa:	d001      	beq.n	8001100 <_ZN4CIMU8imu_initEv+0x88>
 80010fc:	bf00      	nop
 80010fe:	e7fb      	b.n	80010f8 <_ZN4CIMU8imu_initEv+0x80>
 8001100:	4620      	mov	r0, r4
 8001102:	f7ff ff11 	bl	8000f28 <_ZN4CIMU8imu_readEv>
 8001106:	2564      	movs	r5, #100	; 0x64
 8001108:	4637      	mov	r7, r6
 800110a:	46b0      	mov	r8, r6
 800110c:	2365      	movs	r3, #101	; 0x65
 800110e:	3b01      	subs	r3, #1
 8001110:	d001      	beq.n	8001116 <_ZN4CIMU8imu_initEv+0x9e>
 8001112:	bf00      	nop
 8001114:	e7fb      	b.n	800110e <_ZN4CIMU8imu_initEv+0x96>
 8001116:	4620      	mov	r0, r4
 8001118:	f7ff ff06 	bl	8000f28 <_ZN4CIMU8imu_readEv>
 800111c:	6a63      	ldr	r3, [r4, #36]	; 0x24
 800111e:	4498      	add	r8, r3
 8001120:	6aa3      	ldr	r3, [r4, #40]	; 0x28
 8001122:	441f      	add	r7, r3
 8001124:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8001126:	3d01      	subs	r5, #1
 8001128:	441e      	add	r6, r3
 800112a:	d1ef      	bne.n	800110c <_ZN4CIMU8imu_initEv+0x94>
 800112c:	2264      	movs	r2, #100	; 0x64
 800112e:	6325      	str	r5, [r4, #48]	; 0x30
 8001130:	fb98 f3f2 	sdiv	r3, r8, r2
 8001134:	fb97 f7f2 	sdiv	r7, r7, r2
 8001138:	fb96 f6f2 	sdiv	r6, r6, r2
 800113c:	6023      	str	r3, [r4, #0]
 800113e:	6067      	str	r7, [r4, #4]
 8001140:	60a6      	str	r6, [r4, #8]
 8001142:	6365      	str	r5, [r4, #52]	; 0x34
 8001144:	63a5      	str	r5, [r4, #56]	; 0x38
 8001146:	6265      	str	r5, [r4, #36]	; 0x24
 8001148:	62a5      	str	r5, [r4, #40]	; 0x28
 800114a:	62e5      	str	r5, [r4, #44]	; 0x2c
 800114c:	61a5      	str	r5, [r4, #24]
 800114e:	61e5      	str	r5, [r4, #28]
 8001150:	6225      	str	r5, [r4, #32]
 8001152:	4628      	mov	r0, r5
 8001154:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001158:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800115c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001160:	f06f 0001 	mvn.w	r0, #1
 8001164:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001168:	2000007c 	.word	0x2000007c
 800116c:	000186a1 	.word	0x000186a1

08001170 <_ZN4CIMU14get_imu_resultEv>:
 8001170:	3018      	adds	r0, #24
 8001172:	4770      	bx	lr

08001174 <_ZN5CGPIO9gpio_initEv>:
 8001174:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
 8001176:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 800117a:	2101      	movs	r1, #1
 800117c:	f000 fbec 	bl	8001958 <RCC_AHBPeriphClockCmd>
 8001180:	4e1e      	ldr	r6, [pc, #120]	; (80011fc <_ZN5CGPIO9gpio_initEv+0x88>)
 8001182:	f44f 2080 	mov.w	r0, #262144	; 0x40000
 8001186:	2101      	movs	r1, #1
 8001188:	f000 fbe6 	bl	8001958 <RCC_AHBPeriphClockCmd>
 800118c:	f44f 2000 	mov.w	r0, #524288	; 0x80000
 8001190:	2101      	movs	r1, #1
 8001192:	f000 fbe1 	bl	8001958 <RCC_AHBPeriphClockCmd>
 8001196:	2400      	movs	r4, #0
 8001198:	2503      	movs	r5, #3
 800119a:	230f      	movs	r3, #15
 800119c:	2701      	movs	r7, #1
 800119e:	4630      	mov	r0, r6
 80011a0:	4669      	mov	r1, sp
 80011a2:	9300      	str	r3, [sp, #0]
 80011a4:	f88d 7004 	strb.w	r7, [sp, #4]
 80011a8:	f88d 4006 	strb.w	r4, [sp, #6]
 80011ac:	f88d 5005 	strb.w	r5, [sp, #5]
 80011b0:	f88d 4007 	strb.w	r4, [sp, #7]
 80011b4:	f000 fdda 	bl	8001d6c <GPIO_Init>
 80011b8:	4669      	mov	r1, sp
 80011ba:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 80011be:	9500      	str	r5, [sp, #0]
 80011c0:	f88d 7004 	strb.w	r7, [sp, #4]
 80011c4:	f88d 4006 	strb.w	r4, [sp, #6]
 80011c8:	f88d 5005 	strb.w	r5, [sp, #5]
 80011cc:	f88d 4007 	strb.w	r4, [sp, #7]
 80011d0:	f000 fdcc 	bl	8001d6c <GPIO_Init>
 80011d4:	2309      	movs	r3, #9
 80011d6:	4630      	mov	r0, r6
 80011d8:	4669      	mov	r1, sp
 80011da:	9300      	str	r3, [sp, #0]
 80011dc:	f88d 4004 	strb.w	r4, [sp, #4]
 80011e0:	f88d 5005 	strb.w	r5, [sp, #5]
 80011e4:	f88d 4007 	strb.w	r4, [sp, #7]
 80011e8:	f000 fdc0 	bl	8001d6c <GPIO_Init>
 80011ec:	4b04      	ldr	r3, [pc, #16]	; (8001200 <_ZN5CGPIO9gpio_initEv+0x8c>)
 80011ee:	601c      	str	r4, [r3, #0]
 80011f0:	4b04      	ldr	r3, [pc, #16]	; (8001204 <_ZN5CGPIO9gpio_initEv+0x90>)
 80011f2:	4620      	mov	r0, r4
 80011f4:	601c      	str	r4, [r3, #0]
 80011f6:	b003      	add	sp, #12
 80011f8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80011fa:	bf00      	nop
 80011fc:	48000400 	.word	0x48000400
 8001200:	20000080 	.word	0x20000080
 8001204:	20000084 	.word	0x20000084

08001208 <_ZN5CGPIO7gpio_onEm>:
 8001208:	2903      	cmp	r1, #3
 800120a:	d003      	beq.n	8001214 <_ZN5CGPIO7gpio_onEm+0xc>
 800120c:	290f      	cmp	r1, #15
 800120e:	d104      	bne.n	800121a <_ZN5CGPIO7gpio_onEm+0x12>
 8001210:	4b02      	ldr	r3, [pc, #8]	; (800121c <_ZN5CGPIO7gpio_onEm+0x14>)
 8001212:	e001      	b.n	8001218 <_ZN5CGPIO7gpio_onEm+0x10>
 8001214:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001218:	6199      	str	r1, [r3, #24]
 800121a:	4770      	bx	lr
 800121c:	48000400 	.word	0x48000400

08001220 <_ZN5CGPIO8gpio_offEm>:
 8001220:	2903      	cmp	r1, #3
 8001222:	d003      	beq.n	800122c <_ZN5CGPIO8gpio_offEm+0xc>
 8001224:	290f      	cmp	r1, #15
 8001226:	d104      	bne.n	8001232 <_ZN5CGPIO8gpio_offEm+0x12>
 8001228:	4b02      	ldr	r3, [pc, #8]	; (8001234 <_ZN5CGPIO8gpio_offEm+0x14>)
 800122a:	e001      	b.n	8001230 <_ZN5CGPIO8gpio_offEm+0x10>
 800122c:	f04f 4390 	mov.w	r3, #1207959552	; 0x48000000
 8001230:	8519      	strh	r1, [r3, #40]	; 0x28
 8001232:	4770      	bx	lr
 8001234:	48000400 	.word	0x48000400

08001238 <_ZN5CGPIO7gpio_inEm>:
 8001238:	4b02      	ldr	r3, [pc, #8]	; (8001244 <_ZN5CGPIO7gpio_inEm+0xc>)
 800123a:	8a18      	ldrh	r0, [r3, #16]
 800123c:	b280      	uxth	r0, r0
 800123e:	ea21 0000 	bic.w	r0, r1, r0
 8001242:	4770      	bx	lr
 8001244:	48000400 	.word	0x48000400

08001248 <_ZN5CGPIO16get_left_encoderEv>:
 8001248:	b082      	sub	sp, #8
 800124a:	b672      	cpsid	i
 800124c:	4b06      	ldr	r3, [pc, #24]	; (8001268 <_ZN5CGPIO16get_left_encoderEv+0x20>)
 800124e:	681b      	ldr	r3, [r3, #0]
 8001250:	9301      	str	r3, [sp, #4]
 8001252:	b662      	cpsie	i
 8001254:	9801      	ldr	r0, [sp, #4]
 8001256:	f240 23ee 	movw	r3, #750	; 0x2ee
 800125a:	4343      	muls	r3, r0
 800125c:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001260:	fbb3 f0f0 	udiv	r0, r3, r0
 8001264:	b002      	add	sp, #8
 8001266:	4770      	bx	lr
 8001268:	20000080 	.word	0x20000080

0800126c <_ZN5CGPIO17get_right_encoderEv>:
 800126c:	b082      	sub	sp, #8
 800126e:	b672      	cpsid	i
 8001270:	4b06      	ldr	r3, [pc, #24]	; (800128c <_ZN5CGPIO17get_right_encoderEv+0x20>)
 8001272:	681b      	ldr	r3, [r3, #0]
 8001274:	9301      	str	r3, [sp, #4]
 8001276:	b662      	cpsie	i
 8001278:	9801      	ldr	r0, [sp, #4]
 800127a:	f240 23ee 	movw	r3, #750	; 0x2ee
 800127e:	4343      	muls	r3, r0
 8001280:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
 8001284:	fbb3 f0f0 	udiv	r0, r3, r0
 8001288:	b002      	add	sp, #8
 800128a:	4770      	bx	lr
 800128c:	20000084 	.word	0x20000084

08001290 <_ZN5CGPIO20get_encoder_distanceEv>:
 8001290:	b538      	push	{r3, r4, r5, lr}
 8001292:	4605      	mov	r5, r0
 8001294:	f7ff ffd8 	bl	8001248 <_ZN5CGPIO16get_left_encoderEv>
 8001298:	4604      	mov	r4, r0
 800129a:	4628      	mov	r0, r5
 800129c:	f7ff ffe6 	bl	800126c <_ZN5CGPIO17get_right_encoderEv>
 80012a0:	2302      	movs	r3, #2
 80012a2:	4420      	add	r0, r4
 80012a4:	fb90 f0f3 	sdiv	r0, r0, r3
 80012a8:	bd38      	pop	{r3, r4, r5, pc}
	...

080012ac <EXTI9_5_IRQHandler>:
 80012ac:	4a03      	ldr	r2, [pc, #12]	; (80012bc <EXTI9_5_IRQHandler+0x10>)
 80012ae:	6813      	ldr	r3, [r2, #0]
 80012b0:	2006      	movs	r0, #6
 80012b2:	3301      	adds	r3, #1
 80012b4:	6013      	str	r3, [r2, #0]
 80012b6:	f000 bd4d 	b.w	8001d54 <EXTI_ClearITPendingBit>
 80012ba:	bf00      	nop
 80012bc:	20000080 	.word	0x20000080

080012c0 <EXTI15_10_IRQHandler>:
 80012c0:	4a03      	ldr	r2, [pc, #12]	; (80012d0 <EXTI15_10_IRQHandler+0x10>)
 80012c2:	6813      	ldr	r3, [r2, #0]
 80012c4:	200c      	movs	r0, #12
 80012c6:	3301      	adds	r3, #1
 80012c8:	6013      	str	r3, [r2, #0]
 80012ca:	f000 bd43 	b.w	8001d54 <EXTI_ClearITPendingBit>
 80012ce:	bf00      	nop
 80012d0:	20000084 	.word	0x20000084

080012d4 <_ZN6CError10error_funcEi>:
 80012d4:	230a      	movs	r3, #10
 80012d6:	490c      	ldr	r1, [pc, #48]	; (8001308 <_ZN6CError10error_funcEi+0x34>)
 80012d8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80012dc:	618a      	str	r2, [r1, #24]
 80012de:	4a0b      	ldr	r2, [pc, #44]	; (800130c <_ZN6CError10error_funcEi+0x38>)
 80012e0:	3a01      	subs	r2, #1
 80012e2:	d001      	beq.n	80012e8 <_ZN6CError10error_funcEi+0x14>
 80012e4:	bf00      	nop
 80012e6:	e7fb      	b.n	80012e0 <_ZN6CError10error_funcEi+0xc>
 80012e8:	f44f 4200 	mov.w	r2, #32768	; 0x8000
 80012ec:	850a      	strh	r2, [r1, #40]	; 0x28
 80012ee:	4a08      	ldr	r2, [pc, #32]	; (8001310 <_ZN6CError10error_funcEi+0x3c>)
 80012f0:	3a01      	subs	r2, #1
 80012f2:	d001      	beq.n	80012f8 <_ZN6CError10error_funcEi+0x24>
 80012f4:	bf00      	nop
 80012f6:	e7fb      	b.n	80012f0 <_ZN6CError10error_funcEi+0x1c>
 80012f8:	3b01      	subs	r3, #1
 80012fa:	d1ec      	bne.n	80012d6 <_ZN6CError10error_funcEi+0x2>
 80012fc:	4b05      	ldr	r3, [pc, #20]	; (8001314 <_ZN6CError10error_funcEi+0x40>)
 80012fe:	3b01      	subs	r3, #1
 8001300:	d0e8      	beq.n	80012d4 <_ZN6CError10error_funcEi>
 8001302:	bf00      	nop
 8001304:	e7fb      	b.n	80012fe <_ZN6CError10error_funcEi+0x2a>
 8001306:	bf00      	nop
 8001308:	48000400 	.word	0x48000400
 800130c:	000186a1 	.word	0x000186a1
 8001310:	000f4241 	.word	0x000f4241
 8001314:	002dc6c1 	.word	0x002dc6c1

08001318 <_ZN9CTerminal13terminal_initEv>:
 8001318:	b530      	push	{r4, r5, lr}
 800131a:	4a2f      	ldr	r2, [pc, #188]	; (80013d8 <_ZN9CTerminal13terminal_initEv+0xc0>)
 800131c:	2300      	movs	r3, #0
 800131e:	6013      	str	r3, [r2, #0]
 8001320:	4a2e      	ldr	r2, [pc, #184]	; (80013dc <_ZN9CTerminal13terminal_initEv+0xc4>)
 8001322:	b08b      	sub	sp, #44	; 0x2c
 8001324:	6013      	str	r3, [r2, #0]
 8001326:	4a2e      	ldr	r2, [pc, #184]	; (80013e0 <_ZN9CTerminal13terminal_initEv+0xc8>)
 8001328:	2400      	movs	r4, #0
 800132a:	54d4      	strb	r4, [r2, r3]
 800132c:	3301      	adds	r3, #1
 800132e:	2b10      	cmp	r3, #16
 8001330:	d1f9      	bne.n	8001326 <_ZN9CTerminal13terminal_initEv+0xe>
 8001332:	f44f 3000 	mov.w	r0, #131072	; 0x20000
 8001336:	2101      	movs	r1, #1
 8001338:	f000 fb0e 	bl	8001958 <RCC_AHBPeriphClockCmd>
 800133c:	f44f 4080 	mov.w	r0, #16384	; 0x4000
 8001340:	2101      	movs	r1, #1
 8001342:	f000 fb17 	bl	8001974 <RCC_APB2PeriphClockCmd>
 8001346:	f44f 63c0 	mov.w	r3, #1536	; 0x600
 800134a:	9302      	str	r3, [sp, #8]
 800134c:	2302      	movs	r3, #2
 800134e:	f88d 300c 	strb.w	r3, [sp, #12]
 8001352:	a902      	add	r1, sp, #8
 8001354:	2303      	movs	r3, #3
 8001356:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800135a:	f88d 300d 	strb.w	r3, [sp, #13]
 800135e:	f88d 400e 	strb.w	r4, [sp, #14]
 8001362:	f88d 400f 	strb.w	r4, [sp, #15]
 8001366:	f000 fd01 	bl	8001d6c <GPIO_Init>
 800136a:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800136e:	2109      	movs	r1, #9
 8001370:	2207      	movs	r2, #7
 8001372:	f000 fd41 	bl	8001df8 <GPIO_PinAFConfig>
 8001376:	2207      	movs	r2, #7
 8001378:	f04f 4090 	mov.w	r0, #1207959552	; 0x48000000
 800137c:	210a      	movs	r1, #10
 800137e:	f000 fd3b 	bl	8001df8 <GPIO_PinAFConfig>
 8001382:	f44f 33e1 	mov.w	r3, #115200	; 0x1c200
 8001386:	9304      	str	r3, [sp, #16]
 8001388:	a904      	add	r1, sp, #16
 800138a:	230c      	movs	r3, #12
 800138c:	4815      	ldr	r0, [pc, #84]	; (80013e4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800138e:	9308      	str	r3, [sp, #32]
 8001390:	9405      	str	r4, [sp, #20]
 8001392:	9406      	str	r4, [sp, #24]
 8001394:	9407      	str	r4, [sp, #28]
 8001396:	9409      	str	r4, [sp, #36]	; 0x24
 8001398:	f000 fb6c 	bl	8001a74 <USART_Init>
 800139c:	4811      	ldr	r0, [pc, #68]	; (80013e4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 800139e:	2101      	movs	r1, #1
 80013a0:	f000 fbca 	bl	8001b38 <USART_Cmd>
 80013a4:	2201      	movs	r2, #1
 80013a6:	4910      	ldr	r1, [pc, #64]	; (80013e8 <_ZN9CTerminal13terminal_initEv+0xd0>)
 80013a8:	480e      	ldr	r0, [pc, #56]	; (80013e4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80013aa:	f000 fbd5 	bl	8001b58 <USART_ITConfig>
 80013ae:	2501      	movs	r5, #1
 80013b0:	2325      	movs	r3, #37	; 0x25
 80013b2:	a801      	add	r0, sp, #4
 80013b4:	f88d 3004 	strb.w	r3, [sp, #4]
 80013b8:	f88d 4005 	strb.w	r4, [sp, #5]
 80013bc:	f88d 4006 	strb.w	r4, [sp, #6]
 80013c0:	f88d 5007 	strb.w	r5, [sp, #7]
 80013c4:	f000 fc8c 	bl	8001ce0 <NVIC_Init>
 80013c8:	4806      	ldr	r0, [pc, #24]	; (80013e4 <_ZN9CTerminal13terminal_initEv+0xcc>)
 80013ca:	4629      	mov	r1, r5
 80013cc:	f000 fbb4 	bl	8001b38 <USART_Cmd>
 80013d0:	4620      	mov	r0, r4
 80013d2:	b00b      	add	sp, #44	; 0x2c
 80013d4:	bd30      	pop	{r4, r5, pc}
 80013d6:	bf00      	nop
 80013d8:	20000088 	.word	0x20000088
 80013dc:	2000009c 	.word	0x2000009c
 80013e0:	2000008c 	.word	0x2000008c
 80013e4:	40013800 	.word	0x40013800
 80013e8:	00050105 	.word	0x00050105

080013ec <USART1_IRQHandler>:
 80013ec:	b508      	push	{r3, lr}
 80013ee:	480d      	ldr	r0, [pc, #52]	; (8001424 <USART1_IRQHandler+0x38>)
 80013f0:	490d      	ldr	r1, [pc, #52]	; (8001428 <USART1_IRQHandler+0x3c>)
 80013f2:	f000 fbcb 	bl	8001b8c <USART_GetITStatus>
 80013f6:	b178      	cbz	r0, 8001418 <USART1_IRQHandler+0x2c>
 80013f8:	480a      	ldr	r0, [pc, #40]	; (8001424 <USART1_IRQHandler+0x38>)
 80013fa:	f000 fba8 	bl	8001b4e <USART_ReceiveData>
 80013fe:	4b0b      	ldr	r3, [pc, #44]	; (800142c <USART1_IRQHandler+0x40>)
 8001400:	490b      	ldr	r1, [pc, #44]	; (8001430 <USART1_IRQHandler+0x44>)
 8001402:	681a      	ldr	r2, [r3, #0]
 8001404:	b2c0      	uxtb	r0, r0
 8001406:	5488      	strb	r0, [r1, r2]
 8001408:	681a      	ldr	r2, [r3, #0]
 800140a:	3201      	adds	r2, #1
 800140c:	601a      	str	r2, [r3, #0]
 800140e:	681a      	ldr	r2, [r3, #0]
 8001410:	2a0f      	cmp	r2, #15
 8001412:	bf84      	itt	hi
 8001414:	2200      	movhi	r2, #0
 8001416:	601a      	strhi	r2, [r3, #0]
 8001418:	4802      	ldr	r0, [pc, #8]	; (8001424 <USART1_IRQHandler+0x38>)
 800141a:	4903      	ldr	r1, [pc, #12]	; (8001428 <USART1_IRQHandler+0x3c>)
 800141c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 8001420:	f000 bbd2 	b.w	8001bc8 <USART_ClearITPendingBit>
 8001424:	40013800 	.word	0x40013800
 8001428:	00050105 	.word	0x00050105
 800142c:	20000088 	.word	0x20000088
 8001430:	2000008c 	.word	0x2000008c

08001434 <_ZN9CTerminal7putcharEc>:
 8001434:	4b04      	ldr	r3, [pc, #16]	; (8001448 <_ZN9CTerminal7putcharEc+0x14>)
 8001436:	69da      	ldr	r2, [r3, #28]
 8001438:	0612      	lsls	r2, r2, #24
 800143a:	d401      	bmi.n	8001440 <_ZN9CTerminal7putcharEc+0xc>
 800143c:	bf00      	nop
 800143e:	e7f9      	b.n	8001434 <_ZN9CTerminal7putcharEc>
 8001440:	b289      	uxth	r1, r1
 8001442:	8519      	strh	r1, [r3, #40]	; 0x28
 8001444:	4770      	bx	lr
 8001446:	bf00      	nop
 8001448:	40013800 	.word	0x40013800

0800144c <_ZN9CTerminal4putsEPc>:
 800144c:	b538      	push	{r3, r4, r5, lr}
 800144e:	4605      	mov	r5, r0
 8001450:	1e4c      	subs	r4, r1, #1
 8001452:	f814 1f01 	ldrb.w	r1, [r4, #1]!
 8001456:	b119      	cbz	r1, 8001460 <_ZN9CTerminal4putsEPc+0x14>
 8001458:	4628      	mov	r0, r5
 800145a:	f7ff ffeb 	bl	8001434 <_ZN9CTerminal7putcharEc>
 800145e:	e7f8      	b.n	8001452 <_ZN9CTerminal4putsEPc+0x6>
 8001460:	2001      	movs	r0, #1
 8001462:	bd38      	pop	{r3, r4, r5, pc}

08001464 <_ZN9CTerminal4putiEl>:
 8001464:	b57f      	push	{r0, r1, r2, r3, r4, r5, r6, lr}
 8001466:	1e0b      	subs	r3, r1, #0
 8001468:	f04f 0200 	mov.w	r2, #0
 800146c:	bfba      	itte	lt
 800146e:	425b      	neglt	r3, r3
 8001470:	2501      	movlt	r5, #1
 8001472:	4615      	movge	r5, r2
 8001474:	f88d 200f 	strb.w	r2, [sp, #15]
 8001478:	210a      	movs	r1, #10
 800147a:	220a      	movs	r2, #10
 800147c:	ac01      	add	r4, sp, #4
 800147e:	fb93 f6f2 	sdiv	r6, r3, r2
 8001482:	fb02 3316 	mls	r3, r2, r6, r3
 8001486:	3330      	adds	r3, #48	; 0x30
 8001488:	550b      	strb	r3, [r1, r4]
 800148a:	1e4a      	subs	r2, r1, #1
 800148c:	4633      	mov	r3, r6
 800148e:	b10e      	cbz	r6, 8001494 <_ZN9CTerminal4putiEl+0x30>
 8001490:	4611      	mov	r1, r2
 8001492:	e7f2      	b.n	800147a <_ZN9CTerminal4putiEl+0x16>
 8001494:	b12d      	cbz	r5, 80014a2 <_ZN9CTerminal4putiEl+0x3e>
 8001496:	ab04      	add	r3, sp, #16
 8001498:	4413      	add	r3, r2
 800149a:	212d      	movs	r1, #45	; 0x2d
 800149c:	f803 1c0c 	strb.w	r1, [r3, #-12]
 80014a0:	4611      	mov	r1, r2
 80014a2:	4421      	add	r1, r4
 80014a4:	f7ff ffd2 	bl	800144c <_ZN9CTerminal4putsEPc>
 80014a8:	b004      	add	sp, #16
 80014aa:	bd70      	pop	{r4, r5, r6, pc}

080014ac <_ZN9CTerminal5putuiEm>:
 80014ac:	b530      	push	{r4, r5, lr}
 80014ae:	b085      	sub	sp, #20
 80014b0:	2300      	movs	r3, #0
 80014b2:	f88d 300f 	strb.w	r3, [sp, #15]
 80014b6:	220a      	movs	r2, #10
 80014b8:	230a      	movs	r3, #10
 80014ba:	ac01      	add	r4, sp, #4
 80014bc:	fbb1 f5f3 	udiv	r5, r1, r3
 80014c0:	fb03 1315 	mls	r3, r3, r5, r1
 80014c4:	3330      	adds	r3, #48	; 0x30
 80014c6:	5513      	strb	r3, [r2, r4]
 80014c8:	4629      	mov	r1, r5
 80014ca:	1e53      	subs	r3, r2, #1
 80014cc:	b10d      	cbz	r5, 80014d2 <_ZN9CTerminal5putuiEm+0x26>
 80014ce:	461a      	mov	r2, r3
 80014d0:	e7f2      	b.n	80014b8 <_ZN9CTerminal5putuiEm+0xc>
 80014d2:	18a1      	adds	r1, r4, r2
 80014d4:	f7ff ffba 	bl	800144c <_ZN9CTerminal4putsEPc>
 80014d8:	b005      	add	sp, #20
 80014da:	bd30      	pop	{r4, r5, pc}

080014dc <_ZN9CTerminal4putxEm>:
 80014dc:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 80014de:	2300      	movs	r3, #0
 80014e0:	f88d 300f 	strb.w	r3, [sp, #15]
 80014e4:	220a      	movs	r2, #10
 80014e6:	f001 030f 	and.w	r3, r1, #15
 80014ea:	2b09      	cmp	r3, #9
 80014ec:	ac01      	add	r4, sp, #4
 80014ee:	bfd4      	ite	le
 80014f0:	3330      	addle	r3, #48	; 0x30
 80014f2:	3357      	addgt	r3, #87	; 0x57
 80014f4:	0909      	lsrs	r1, r1, #4
 80014f6:	54a3      	strb	r3, [r4, r2]
 80014f8:	f102 33ff 	add.w	r3, r2, #4294967295	; 0xffffffff
 80014fc:	d001      	beq.n	8001502 <_ZN9CTerminal4putxEm+0x26>
 80014fe:	461a      	mov	r2, r3
 8001500:	e7f1      	b.n	80014e6 <_ZN9CTerminal4putxEm+0xa>
 8001502:	18a1      	adds	r1, r4, r2
 8001504:	f7ff ffa2 	bl	800144c <_ZN9CTerminal4putsEPc>
 8001508:	b004      	add	sp, #16
 800150a:	bd10      	pop	{r4, pc}

0800150c <_ZN9CTerminal6printfEPKcz>:
 800150c:	b40e      	push	{r1, r2, r3}
 800150e:	b577      	push	{r0, r1, r2, r4, r5, r6, lr}
 8001510:	ab07      	add	r3, sp, #28
 8001512:	4604      	mov	r4, r0
 8001514:	f853 6b04 	ldr.w	r6, [r3], #4
 8001518:	9301      	str	r3, [sp, #4]
 800151a:	2500      	movs	r5, #0
 800151c:	5d71      	ldrb	r1, [r6, r5]
 800151e:	2900      	cmp	r1, #0
 8001520:	d040      	beq.n	80015a4 <_ZN9CTerminal6printfEPKcz+0x98>
 8001522:	2925      	cmp	r1, #37	; 0x25
 8001524:	d004      	beq.n	8001530 <_ZN9CTerminal6printfEPKcz+0x24>
 8001526:	4620      	mov	r0, r4
 8001528:	f7ff ff84 	bl	8001434 <_ZN9CTerminal7putcharEc>
 800152c:	3501      	adds	r5, #1
 800152e:	e7f5      	b.n	800151c <_ZN9CTerminal6printfEPKcz+0x10>
 8001530:	1973      	adds	r3, r6, r5
 8001532:	7859      	ldrb	r1, [r3, #1]
 8001534:	2969      	cmp	r1, #105	; 0x69
 8001536:	d018      	beq.n	800156a <_ZN9CTerminal6printfEPKcz+0x5e>
 8001538:	d809      	bhi.n	800154e <_ZN9CTerminal6printfEPKcz+0x42>
 800153a:	2925      	cmp	r1, #37	; 0x25
 800153c:	d02d      	beq.n	800159a <_ZN9CTerminal6printfEPKcz+0x8e>
 800153e:	2963      	cmp	r1, #99	; 0x63
 8001540:	d12e      	bne.n	80015a0 <_ZN9CTerminal6printfEPKcz+0x94>
 8001542:	9b01      	ldr	r3, [sp, #4]
 8001544:	1d1a      	adds	r2, r3, #4
 8001546:	9201      	str	r2, [sp, #4]
 8001548:	4620      	mov	r0, r4
 800154a:	7819      	ldrb	r1, [r3, #0]
 800154c:	e026      	b.n	800159c <_ZN9CTerminal6printfEPKcz+0x90>
 800154e:	2975      	cmp	r1, #117	; 0x75
 8001550:	d013      	beq.n	800157a <_ZN9CTerminal6printfEPKcz+0x6e>
 8001552:	2978      	cmp	r1, #120	; 0x78
 8001554:	d019      	beq.n	800158a <_ZN9CTerminal6printfEPKcz+0x7e>
 8001556:	2973      	cmp	r1, #115	; 0x73
 8001558:	d122      	bne.n	80015a0 <_ZN9CTerminal6printfEPKcz+0x94>
 800155a:	9b01      	ldr	r3, [sp, #4]
 800155c:	4620      	mov	r0, r4
 800155e:	1d1a      	adds	r2, r3, #4
 8001560:	6819      	ldr	r1, [r3, #0]
 8001562:	9201      	str	r2, [sp, #4]
 8001564:	f7ff ff72 	bl	800144c <_ZN9CTerminal4putsEPc>
 8001568:	e01a      	b.n	80015a0 <_ZN9CTerminal6printfEPKcz+0x94>
 800156a:	9b01      	ldr	r3, [sp, #4]
 800156c:	4620      	mov	r0, r4
 800156e:	1d1a      	adds	r2, r3, #4
 8001570:	6819      	ldr	r1, [r3, #0]
 8001572:	9201      	str	r2, [sp, #4]
 8001574:	f7ff ff76 	bl	8001464 <_ZN9CTerminal4putiEl>
 8001578:	e012      	b.n	80015a0 <_ZN9CTerminal6printfEPKcz+0x94>
 800157a:	9b01      	ldr	r3, [sp, #4]
 800157c:	4620      	mov	r0, r4
 800157e:	1d1a      	adds	r2, r3, #4
 8001580:	6819      	ldr	r1, [r3, #0]
 8001582:	9201      	str	r2, [sp, #4]
 8001584:	f7ff ff92 	bl	80014ac <_ZN9CTerminal5putuiEm>
 8001588:	e00a      	b.n	80015a0 <_ZN9CTerminal6printfEPKcz+0x94>
 800158a:	9b01      	ldr	r3, [sp, #4]
 800158c:	4620      	mov	r0, r4
 800158e:	1d1a      	adds	r2, r3, #4
 8001590:	6819      	ldr	r1, [r3, #0]
 8001592:	9201      	str	r2, [sp, #4]
 8001594:	f7ff ffa2 	bl	80014dc <_ZN9CTerminal4putxEm>
 8001598:	e002      	b.n	80015a0 <_ZN9CTerminal6printfEPKcz+0x94>
 800159a:	4620      	mov	r0, r4
 800159c:	f7ff ff4a 	bl	8001434 <_ZN9CTerminal7putcharEc>
 80015a0:	3502      	adds	r5, #2
 80015a2:	e7bb      	b.n	800151c <_ZN9CTerminal6printfEPKcz+0x10>
 80015a4:	b003      	add	sp, #12
 80015a6:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
 80015aa:	b003      	add	sp, #12
 80015ac:	4770      	bx	lr
	...

080015b0 <_Z9robot_runv>:
 80015b0:	b508      	push	{r3, lr}
 80015b2:	480f      	ldr	r0, [pc, #60]	; (80015f0 <_Z9robot_runv+0x40>)
 80015b4:	2100      	movs	r1, #0
 80015b6:	2205      	movs	r2, #5
 80015b8:	f7fe ffb8 	bl	800052c <_ZN6CTimer22event_timer_set_periodEhm>
 80015bc:	480c      	ldr	r0, [pc, #48]	; (80015f0 <_Z9robot_runv+0x40>)
 80015be:	f44f 51fa 	mov.w	r1, #8000	; 0x1f40
 80015c2:	2216      	movs	r2, #22
 80015c4:	2300      	movs	r3, #0
 80015c6:	f7fe fe37 	bl	8000238 <_ZN7CKodama10go_forwardEllPFlvE>
 80015ca:	4809      	ldr	r0, [pc, #36]	; (80015f0 <_Z9robot_runv+0x40>)
 80015cc:	210f      	movs	r1, #15
 80015ce:	f7ff fe1b 	bl	8001208 <_ZN5CGPIO7gpio_onEm>
 80015d2:	4807      	ldr	r0, [pc, #28]	; (80015f0 <_Z9robot_runv+0x40>)
 80015d4:	210a      	movs	r1, #10
 80015d6:	f7fe ff97 	bl	8000508 <_ZN6CTimer8delay_msEm>
 80015da:	4805      	ldr	r0, [pc, #20]	; (80015f0 <_Z9robot_runv+0x40>)
 80015dc:	210f      	movs	r1, #15
 80015de:	f7ff fe1f 	bl	8001220 <_ZN5CGPIO8gpio_offEm>
 80015e2:	4803      	ldr	r0, [pc, #12]	; (80015f0 <_Z9robot_runv+0x40>)
 80015e4:	f44f 7196 	mov.w	r1, #300	; 0x12c
 80015e8:	f7fe ff8e 	bl	8000508 <_ZN6CTimer8delay_msEm>
 80015ec:	e7ed      	b.n	80015ca <_Z9robot_runv+0x1a>
 80015ee:	bf00      	nop
 80015f0:	200000a0 	.word	0x200000a0

080015f4 <usr_main>:
 80015f4:	b508      	push	{r3, lr}
 80015f6:	f000 fb71 	bl	8001cdc <sytem_clock_init>
 80015fa:	f000 fd2b 	bl	8002054 <lib_os_init>
 80015fe:	4816      	ldr	r0, [pc, #88]	; (8001658 <usr_main+0x64>)
 8001600:	f7fe fdf2 	bl	80001e8 <_ZN7CKodama4initEv>
 8001604:	b118      	cbz	r0, 800160e <usr_main+0x1a>
 8001606:	4814      	ldr	r0, [pc, #80]	; (8001658 <usr_main+0x64>)
 8001608:	2100      	movs	r1, #0
 800160a:	f7ff fe63 	bl	80012d4 <_ZN6CError10error_funcEi>
 800160e:	4812      	ldr	r0, [pc, #72]	; (8001658 <usr_main+0x64>)
 8001610:	210a      	movs	r1, #10
 8001612:	f7fe fe0b 	bl	800022c <_ZN7CKodama6set_dtEl>
 8001616:	4810      	ldr	r0, [pc, #64]	; (8001658 <usr_main+0x64>)
 8001618:	2109      	movs	r1, #9
 800161a:	f7ff fe0d 	bl	8001238 <_ZN5CGPIO7gpio_inEm>
 800161e:	b108      	cbz	r0, 8001624 <usr_main+0x30>
 8001620:	f7ff ffc6 	bl	80015b0 <_Z9robot_runv>
 8001624:	480c      	ldr	r0, [pc, #48]	; (8001658 <usr_main+0x64>)
 8001626:	210f      	movs	r1, #15
 8001628:	f7ff fdee 	bl	8001208 <_ZN5CGPIO7gpio_onEm>
 800162c:	480a      	ldr	r0, [pc, #40]	; (8001658 <usr_main+0x64>)
 800162e:	210a      	movs	r1, #10
 8001630:	f7fe ff6a 	bl	8000508 <_ZN6CTimer8delay_msEm>
 8001634:	4808      	ldr	r0, [pc, #32]	; (8001658 <usr_main+0x64>)
 8001636:	210f      	movs	r1, #15
 8001638:	f7ff fdf2 	bl	8001220 <_ZN5CGPIO8gpio_offEm>
 800163c:	f44f 7196 	mov.w	r1, #300	; 0x12c
 8001640:	4805      	ldr	r0, [pc, #20]	; (8001658 <usr_main+0x64>)
 8001642:	f7fe ff61 	bl	8000508 <_ZN6CTimer8delay_msEm>
 8001646:	4804      	ldr	r0, [pc, #16]	; (8001658 <usr_main+0x64>)
 8001648:	f7fe ff50 	bl	80004ec <_ZN6CTimer8get_timeEv>
 800164c:	4903      	ldr	r1, [pc, #12]	; (800165c <usr_main+0x68>)
 800164e:	4602      	mov	r2, r0
 8001650:	4801      	ldr	r0, [pc, #4]	; (8001658 <usr_main+0x64>)
 8001652:	f7ff ff5b 	bl	800150c <_ZN9CTerminal6printfEPKcz>
 8001656:	e7de      	b.n	8001616 <usr_main+0x22>
 8001658:	200000a0 	.word	0x200000a0
 800165c:	0800210f 	.word	0x0800210f

08001660 <main>:
 8001660:	b508      	push	{r3, lr}
 8001662:	f7ff ffc7 	bl	80015f4 <usr_main>
 8001666:	2000      	movs	r0, #0
 8001668:	bd08      	pop	{r3, pc}
	...

0800166c <RCC_GetClocksFreq>:
 800166c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001670:	4f9b      	ldr	r7, [pc, #620]	; (80018e0 <RCC_GetClocksFreq+0x274>)
 8001672:	687b      	ldr	r3, [r7, #4]
 8001674:	f003 030c 	and.w	r3, r3, #12
 8001678:	2b04      	cmp	r3, #4
 800167a:	d005      	beq.n	8001688 <RCC_GetClocksFreq+0x1c>
 800167c:	2b08      	cmp	r3, #8
 800167e:	d006      	beq.n	800168e <RCC_GetClocksFreq+0x22>
 8001680:	4a98      	ldr	r2, [pc, #608]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 8001682:	6002      	str	r2, [r0, #0]
 8001684:	b9b3      	cbnz	r3, 80016b4 <RCC_GetClocksFreq+0x48>
 8001686:	e016      	b.n	80016b6 <RCC_GetClocksFreq+0x4a>
 8001688:	4b96      	ldr	r3, [pc, #600]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 800168a:	6003      	str	r3, [r0, #0]
 800168c:	e012      	b.n	80016b4 <RCC_GetClocksFreq+0x48>
 800168e:	687b      	ldr	r3, [r7, #4]
 8001690:	6879      	ldr	r1, [r7, #4]
 8001692:	f3c3 4383 	ubfx	r3, r3, #18, #4
 8001696:	1c9a      	adds	r2, r3, #2
 8001698:	03cb      	lsls	r3, r1, #15
 800169a:	bf49      	itett	mi
 800169c:	6afb      	ldrmi	r3, [r7, #44]	; 0x2c
 800169e:	4b92      	ldrpl	r3, [pc, #584]	; (80018e8 <RCC_GetClocksFreq+0x27c>)
 80016a0:	4990      	ldrmi	r1, [pc, #576]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 80016a2:	f003 030f 	andmi.w	r3, r3, #15
 80016a6:	bf44      	itt	mi
 80016a8:	3301      	addmi	r3, #1
 80016aa:	fbb1 f3f3 	udivmi	r3, r1, r3
 80016ae:	4353      	muls	r3, r2
 80016b0:	6003      	str	r3, [r0, #0]
 80016b2:	e000      	b.n	80016b6 <RCC_GetClocksFreq+0x4a>
 80016b4:	2300      	movs	r3, #0
 80016b6:	687a      	ldr	r2, [r7, #4]
 80016b8:	4e8c      	ldr	r6, [pc, #560]	; (80018ec <RCC_GetClocksFreq+0x280>)
 80016ba:	f8df c234 	ldr.w	ip, [pc, #564]	; 80018f0 <RCC_GetClocksFreq+0x284>
 80016be:	f3c2 1203 	ubfx	r2, r2, #4, #4
 80016c2:	5cb4      	ldrb	r4, [r6, r2]
 80016c4:	6802      	ldr	r2, [r0, #0]
 80016c6:	b2e4      	uxtb	r4, r4
 80016c8:	fa22 f104 	lsr.w	r1, r2, r4
 80016cc:	6041      	str	r1, [r0, #4]
 80016ce:	687d      	ldr	r5, [r7, #4]
 80016d0:	f3c5 2502 	ubfx	r5, r5, #8, #3
 80016d4:	5d75      	ldrb	r5, [r6, r5]
 80016d6:	fa21 fe05 	lsr.w	lr, r1, r5
 80016da:	f8c0 e008 	str.w	lr, [r0, #8]
 80016de:	687d      	ldr	r5, [r7, #4]
 80016e0:	f3c5 25c2 	ubfx	r5, r5, #11, #3
 80016e4:	5d75      	ldrb	r5, [r6, r5]
 80016e6:	b2ed      	uxtb	r5, r5
 80016e8:	40e9      	lsrs	r1, r5
 80016ea:	60c1      	str	r1, [r0, #12]
 80016ec:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 80016ee:	f3c6 1804 	ubfx	r8, r6, #4, #5
 80016f2:	f008 060f 	and.w	r6, r8, #15
 80016f6:	f018 0f10 	tst.w	r8, #16
 80016fa:	f83c 6016 	ldrh.w	r6, [ip, r6, lsl #1]
 80016fe:	46e0      	mov	r8, ip
 8001700:	b2b6      	uxth	r6, r6
 8001702:	d004      	beq.n	800170e <RCC_GetClocksFreq+0xa2>
 8001704:	b11e      	cbz	r6, 800170e <RCC_GetClocksFreq+0xa2>
 8001706:	fbb3 f6f6 	udiv	r6, r3, r6
 800170a:	6106      	str	r6, [r0, #16]
 800170c:	e000      	b.n	8001710 <RCC_GetClocksFreq+0xa4>
 800170e:	6102      	str	r2, [r0, #16]
 8001710:	6afe      	ldr	r6, [r7, #44]	; 0x2c
 8001712:	f3c6 2c44 	ubfx	ip, r6, #9, #5
 8001716:	f00c 060f 	and.w	r6, ip, #15
 800171a:	f01c 0f10 	tst.w	ip, #16
 800171e:	f838 6016 	ldrh.w	r6, [r8, r6, lsl #1]
 8001722:	b2b6      	uxth	r6, r6
 8001724:	d004      	beq.n	8001730 <RCC_GetClocksFreq+0xc4>
 8001726:	b11e      	cbz	r6, 8001730 <RCC_GetClocksFreq+0xc4>
 8001728:	fbb3 f6f6 	udiv	r6, r3, r6
 800172c:	6146      	str	r6, [r0, #20]
 800172e:	e000      	b.n	8001732 <RCC_GetClocksFreq+0xc6>
 8001730:	6142      	str	r2, [r0, #20]
 8001732:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001734:	06f6      	lsls	r6, r6, #27
 8001736:	bf5a      	itte	pl
 8001738:	4e6a      	ldrpl	r6, [pc, #424]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 800173a:	6186      	strpl	r6, [r0, #24]
 800173c:	6182      	strmi	r2, [r0, #24]
 800173e:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001740:	06b6      	lsls	r6, r6, #26
 8001742:	bf5a      	itte	pl
 8001744:	4e67      	ldrpl	r6, [pc, #412]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 8001746:	61c6      	strpl	r6, [r0, #28]
 8001748:	61c2      	strmi	r2, [r0, #28]
 800174a:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800174c:	0676      	lsls	r6, r6, #25
 800174e:	bf5a      	itte	pl
 8001750:	4e64      	ldrpl	r6, [pc, #400]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 8001752:	6206      	strpl	r6, [r0, #32]
 8001754:	6202      	strmi	r2, [r0, #32]
 8001756:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001758:	05f6      	lsls	r6, r6, #23
 800175a:	d506      	bpl.n	800176a <RCC_GetClocksFreq+0xfe>
 800175c:	429a      	cmp	r2, r3
 800175e:	d104      	bne.n	800176a <RCC_GetClocksFreq+0xfe>
 8001760:	42a5      	cmp	r5, r4
 8001762:	d102      	bne.n	800176a <RCC_GetClocksFreq+0xfe>
 8001764:	0056      	lsls	r6, r2, #1
 8001766:	6246      	str	r6, [r0, #36]	; 0x24
 8001768:	e000      	b.n	800176c <RCC_GetClocksFreq+0x100>
 800176a:	6241      	str	r1, [r0, #36]	; 0x24
 800176c:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800176e:	04f6      	lsls	r6, r6, #19
 8001770:	d506      	bpl.n	8001780 <RCC_GetClocksFreq+0x114>
 8001772:	429a      	cmp	r2, r3
 8001774:	d104      	bne.n	8001780 <RCC_GetClocksFreq+0x114>
 8001776:	42a5      	cmp	r5, r4
 8001778:	d102      	bne.n	8001780 <RCC_GetClocksFreq+0x114>
 800177a:	0056      	lsls	r6, r2, #1
 800177c:	6286      	str	r6, [r0, #40]	; 0x28
 800177e:	e000      	b.n	8001782 <RCC_GetClocksFreq+0x116>
 8001780:	6281      	str	r1, [r0, #40]	; 0x28
 8001782:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 8001784:	05b6      	lsls	r6, r6, #22
 8001786:	d506      	bpl.n	8001796 <RCC_GetClocksFreq+0x12a>
 8001788:	429a      	cmp	r2, r3
 800178a:	d104      	bne.n	8001796 <RCC_GetClocksFreq+0x12a>
 800178c:	42a5      	cmp	r5, r4
 800178e:	d102      	bne.n	8001796 <RCC_GetClocksFreq+0x12a>
 8001790:	0056      	lsls	r6, r2, #1
 8001792:	62c6      	str	r6, [r0, #44]	; 0x2c
 8001794:	e000      	b.n	8001798 <RCC_GetClocksFreq+0x12c>
 8001796:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001798:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 800179a:	0576      	lsls	r6, r6, #21
 800179c:	d506      	bpl.n	80017ac <RCC_GetClocksFreq+0x140>
 800179e:	429a      	cmp	r2, r3
 80017a0:	d104      	bne.n	80017ac <RCC_GetClocksFreq+0x140>
 80017a2:	42a5      	cmp	r5, r4
 80017a4:	d102      	bne.n	80017ac <RCC_GetClocksFreq+0x140>
 80017a6:	0056      	lsls	r6, r2, #1
 80017a8:	64c6      	str	r6, [r0, #76]	; 0x4c
 80017aa:	e000      	b.n	80017ae <RCC_GetClocksFreq+0x142>
 80017ac:	64c1      	str	r1, [r0, #76]	; 0x4c
 80017ae:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017b0:	0536      	lsls	r6, r6, #20
 80017b2:	d506      	bpl.n	80017c2 <RCC_GetClocksFreq+0x156>
 80017b4:	429a      	cmp	r2, r3
 80017b6:	d104      	bne.n	80017c2 <RCC_GetClocksFreq+0x156>
 80017b8:	42a5      	cmp	r5, r4
 80017ba:	d102      	bne.n	80017c2 <RCC_GetClocksFreq+0x156>
 80017bc:	0056      	lsls	r6, r2, #1
 80017be:	6506      	str	r6, [r0, #80]	; 0x50
 80017c0:	e000      	b.n	80017c4 <RCC_GetClocksFreq+0x158>
 80017c2:	6501      	str	r1, [r0, #80]	; 0x50
 80017c4:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017c6:	04b6      	lsls	r6, r6, #18
 80017c8:	d506      	bpl.n	80017d8 <RCC_GetClocksFreq+0x16c>
 80017ca:	429a      	cmp	r2, r3
 80017cc:	d104      	bne.n	80017d8 <RCC_GetClocksFreq+0x16c>
 80017ce:	42a5      	cmp	r5, r4
 80017d0:	d102      	bne.n	80017d8 <RCC_GetClocksFreq+0x16c>
 80017d2:	0056      	lsls	r6, r2, #1
 80017d4:	6546      	str	r6, [r0, #84]	; 0x54
 80017d6:	e000      	b.n	80017da <RCC_GetClocksFreq+0x16e>
 80017d8:	6501      	str	r1, [r0, #80]	; 0x50
 80017da:	6b3e      	ldr	r6, [r7, #48]	; 0x30
 80017dc:	0436      	lsls	r6, r6, #16
 80017de:	d506      	bpl.n	80017ee <RCC_GetClocksFreq+0x182>
 80017e0:	429a      	cmp	r2, r3
 80017e2:	d104      	bne.n	80017ee <RCC_GetClocksFreq+0x182>
 80017e4:	42a5      	cmp	r5, r4
 80017e6:	d102      	bne.n	80017ee <RCC_GetClocksFreq+0x182>
 80017e8:	0053      	lsls	r3, r2, #1
 80017ea:	6583      	str	r3, [r0, #88]	; 0x58
 80017ec:	e000      	b.n	80017f0 <RCC_GetClocksFreq+0x184>
 80017ee:	6581      	str	r1, [r0, #88]	; 0x58
 80017f0:	6b3c      	ldr	r4, [r7, #48]	; 0x30
 80017f2:	4b3b      	ldr	r3, [pc, #236]	; (80018e0 <RCC_GetClocksFreq+0x274>)
 80017f4:	07a4      	lsls	r4, r4, #30
 80017f6:	d101      	bne.n	80017fc <RCC_GetClocksFreq+0x190>
 80017f8:	6381      	str	r1, [r0, #56]	; 0x38
 80017fa:	e015      	b.n	8001828 <RCC_GetClocksFreq+0x1bc>
 80017fc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80017fe:	f001 0103 	and.w	r1, r1, #3
 8001802:	2901      	cmp	r1, #1
 8001804:	d101      	bne.n	800180a <RCC_GetClocksFreq+0x19e>
 8001806:	6382      	str	r2, [r0, #56]	; 0x38
 8001808:	e00e      	b.n	8001828 <RCC_GetClocksFreq+0x1bc>
 800180a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800180c:	f001 0103 	and.w	r1, r1, #3
 8001810:	2902      	cmp	r1, #2
 8001812:	d102      	bne.n	800181a <RCC_GetClocksFreq+0x1ae>
 8001814:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001818:	e005      	b.n	8001826 <RCC_GetClocksFreq+0x1ba>
 800181a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800181c:	f003 0303 	and.w	r3, r3, #3
 8001820:	2b03      	cmp	r3, #3
 8001822:	d101      	bne.n	8001828 <RCC_GetClocksFreq+0x1bc>
 8001824:	4b2f      	ldr	r3, [pc, #188]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 8001826:	6383      	str	r3, [r0, #56]	; 0x38
 8001828:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800182a:	4b2d      	ldr	r3, [pc, #180]	; (80018e0 <RCC_GetClocksFreq+0x274>)
 800182c:	f411 3f40 	tst.w	r1, #196608	; 0x30000
 8001830:	d102      	bne.n	8001838 <RCC_GetClocksFreq+0x1cc>
 8001832:	f8c0 e03c 	str.w	lr, [r0, #60]	; 0x3c
 8001836:	e018      	b.n	800186a <RCC_GetClocksFreq+0x1fe>
 8001838:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800183a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800183e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001842:	d101      	bne.n	8001848 <RCC_GetClocksFreq+0x1dc>
 8001844:	63c2      	str	r2, [r0, #60]	; 0x3c
 8001846:	e010      	b.n	800186a <RCC_GetClocksFreq+0x1fe>
 8001848:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800184a:	f401 3140 	and.w	r1, r1, #196608	; 0x30000
 800184e:	f5b1 3f00 	cmp.w	r1, #131072	; 0x20000
 8001852:	d102      	bne.n	800185a <RCC_GetClocksFreq+0x1ee>
 8001854:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001858:	e006      	b.n	8001868 <RCC_GetClocksFreq+0x1fc>
 800185a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800185c:	f403 3340 	and.w	r3, r3, #196608	; 0x30000
 8001860:	f5b3 3f40 	cmp.w	r3, #196608	; 0x30000
 8001864:	d101      	bne.n	800186a <RCC_GetClocksFreq+0x1fe>
 8001866:	4b1f      	ldr	r3, [pc, #124]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 8001868:	63c3      	str	r3, [r0, #60]	; 0x3c
 800186a:	6b39      	ldr	r1, [r7, #48]	; 0x30
 800186c:	4b1c      	ldr	r3, [pc, #112]	; (80018e0 <RCC_GetClocksFreq+0x274>)
 800186e:	f411 2f40 	tst.w	r1, #786432	; 0xc0000
 8001872:	d102      	bne.n	800187a <RCC_GetClocksFreq+0x20e>
 8001874:	f8c0 e040 	str.w	lr, [r0, #64]	; 0x40
 8001878:	e018      	b.n	80018ac <RCC_GetClocksFreq+0x240>
 800187a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800187c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001880:	f5b1 2f80 	cmp.w	r1, #262144	; 0x40000
 8001884:	d101      	bne.n	800188a <RCC_GetClocksFreq+0x21e>
 8001886:	6402      	str	r2, [r0, #64]	; 0x40
 8001888:	e010      	b.n	80018ac <RCC_GetClocksFreq+0x240>
 800188a:	6b19      	ldr	r1, [r3, #48]	; 0x30
 800188c:	f401 2140 	and.w	r1, r1, #786432	; 0xc0000
 8001890:	f5b1 2f00 	cmp.w	r1, #524288	; 0x80000
 8001894:	d102      	bne.n	800189c <RCC_GetClocksFreq+0x230>
 8001896:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 800189a:	e006      	b.n	80018aa <RCC_GetClocksFreq+0x23e>
 800189c:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800189e:	f403 2340 	and.w	r3, r3, #786432	; 0xc0000
 80018a2:	f5b3 2f40 	cmp.w	r3, #786432	; 0xc0000
 80018a6:	d101      	bne.n	80018ac <RCC_GetClocksFreq+0x240>
 80018a8:	4b0e      	ldr	r3, [pc, #56]	; (80018e4 <RCC_GetClocksFreq+0x278>)
 80018aa:	6403      	str	r3, [r0, #64]	; 0x40
 80018ac:	6b39      	ldr	r1, [r7, #48]	; 0x30
 80018ae:	4b0c      	ldr	r3, [pc, #48]	; (80018e0 <RCC_GetClocksFreq+0x274>)
 80018b0:	f411 1f40 	tst.w	r1, #3145728	; 0x300000
 80018b4:	d102      	bne.n	80018bc <RCC_GetClocksFreq+0x250>
 80018b6:	f8c0 e044 	str.w	lr, [r0, #68]	; 0x44
 80018ba:	e023      	b.n	8001904 <RCC_GetClocksFreq+0x298>
 80018bc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018be:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80018c2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80018c6:	d101      	bne.n	80018cc <RCC_GetClocksFreq+0x260>
 80018c8:	6442      	str	r2, [r0, #68]	; 0x44
 80018ca:	e01b      	b.n	8001904 <RCC_GetClocksFreq+0x298>
 80018cc:	6b19      	ldr	r1, [r3, #48]	; 0x30
 80018ce:	f401 1140 	and.w	r1, r1, #3145728	; 0x300000
 80018d2:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80018d6:	d10d      	bne.n	80018f4 <RCC_GetClocksFreq+0x288>
 80018d8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 80018dc:	e011      	b.n	8001902 <RCC_GetClocksFreq+0x296>
 80018de:	bf00      	nop
 80018e0:	40021000 	.word	0x40021000
 80018e4:	007a1200 	.word	0x007a1200
 80018e8:	003d0900 	.word	0x003d0900
 80018ec:	20000020 	.word	0x20000020
 80018f0:	20000000 	.word	0x20000000
 80018f4:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 80018f6:	f403 1340 	and.w	r3, r3, #3145728	; 0x300000
 80018fa:	f5b3 1f40 	cmp.w	r3, #3145728	; 0x300000
 80018fe:	d101      	bne.n	8001904 <RCC_GetClocksFreq+0x298>
 8001900:	4b13      	ldr	r3, [pc, #76]	; (8001950 <RCC_GetClocksFreq+0x2e4>)
 8001902:	6443      	str	r3, [r0, #68]	; 0x44
 8001904:	6b39      	ldr	r1, [r7, #48]	; 0x30
 8001906:	4b13      	ldr	r3, [pc, #76]	; (8001954 <RCC_GetClocksFreq+0x2e8>)
 8001908:	f411 0f40 	tst.w	r1, #12582912	; 0xc00000
 800190c:	d103      	bne.n	8001916 <RCC_GetClocksFreq+0x2aa>
 800190e:	f8c0 e048 	str.w	lr, [r0, #72]	; 0x48
 8001912:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001916:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001918:	f401 0140 	and.w	r1, r1, #12582912	; 0xc00000
 800191c:	f5b1 0f80 	cmp.w	r1, #4194304	; 0x400000
 8001920:	d102      	bne.n	8001928 <RCC_GetClocksFreq+0x2bc>
 8001922:	6482      	str	r2, [r0, #72]	; 0x48
 8001924:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001928:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800192a:	f402 0240 	and.w	r2, r2, #12582912	; 0xc00000
 800192e:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001932:	d102      	bne.n	800193a <RCC_GetClocksFreq+0x2ce>
 8001934:	f44f 4300 	mov.w	r3, #32768	; 0x8000
 8001938:	e006      	b.n	8001948 <RCC_GetClocksFreq+0x2dc>
 800193a:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 800193c:	f403 0340 	and.w	r3, r3, #12582912	; 0xc00000
 8001940:	f5b3 0f40 	cmp.w	r3, #12582912	; 0xc00000
 8001944:	d101      	bne.n	800194a <RCC_GetClocksFreq+0x2de>
 8001946:	4b02      	ldr	r3, [pc, #8]	; (8001950 <RCC_GetClocksFreq+0x2e4>)
 8001948:	6483      	str	r3, [r0, #72]	; 0x48
 800194a:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800194e:	bf00      	nop
 8001950:	007a1200 	.word	0x007a1200
 8001954:	40021000 	.word	0x40021000

08001958 <RCC_AHBPeriphClockCmd>:
 8001958:	bf00      	nop
 800195a:	bf00      	nop
 800195c:	4b04      	ldr	r3, [pc, #16]	; (8001970 <RCC_AHBPeriphClockCmd+0x18>)
 800195e:	695a      	ldr	r2, [r3, #20]
 8001960:	b109      	cbz	r1, 8001966 <RCC_AHBPeriphClockCmd+0xe>
 8001962:	4310      	orrs	r0, r2
 8001964:	e001      	b.n	800196a <RCC_AHBPeriphClockCmd+0x12>
 8001966:	ea22 0000 	bic.w	r0, r2, r0
 800196a:	6158      	str	r0, [r3, #20]
 800196c:	4770      	bx	lr
 800196e:	bf00      	nop
 8001970:	40021000 	.word	0x40021000

08001974 <RCC_APB2PeriphClockCmd>:
 8001974:	bf00      	nop
 8001976:	bf00      	nop
 8001978:	4b04      	ldr	r3, [pc, #16]	; (800198c <RCC_APB2PeriphClockCmd+0x18>)
 800197a:	699a      	ldr	r2, [r3, #24]
 800197c:	b109      	cbz	r1, 8001982 <RCC_APB2PeriphClockCmd+0xe>
 800197e:	4310      	orrs	r0, r2
 8001980:	e001      	b.n	8001986 <RCC_APB2PeriphClockCmd+0x12>
 8001982:	ea22 0000 	bic.w	r0, r2, r0
 8001986:	6198      	str	r0, [r3, #24]
 8001988:	4770      	bx	lr
 800198a:	bf00      	nop
 800198c:	40021000 	.word	0x40021000

08001990 <RCC_APB1PeriphClockCmd>:
 8001990:	bf00      	nop
 8001992:	bf00      	nop
 8001994:	4b04      	ldr	r3, [pc, #16]	; (80019a8 <RCC_APB1PeriphClockCmd+0x18>)
 8001996:	69da      	ldr	r2, [r3, #28]
 8001998:	b109      	cbz	r1, 800199e <RCC_APB1PeriphClockCmd+0xe>
 800199a:	4310      	orrs	r0, r2
 800199c:	e001      	b.n	80019a2 <RCC_APB1PeriphClockCmd+0x12>
 800199e:	ea22 0000 	bic.w	r0, r2, r0
 80019a2:	61d8      	str	r0, [r3, #28]
 80019a4:	4770      	bx	lr
 80019a6:	bf00      	nop
 80019a8:	40021000 	.word	0x40021000

080019ac <TIM_TimeBaseInit>:
 80019ac:	bf00      	nop
 80019ae:	bf00      	nop
 80019b0:	bf00      	nop
 80019b2:	4a24      	ldr	r2, [pc, #144]	; (8001a44 <TIM_TimeBaseInit+0x98>)
 80019b4:	8803      	ldrh	r3, [r0, #0]
 80019b6:	4290      	cmp	r0, r2
 80019b8:	b29b      	uxth	r3, r3
 80019ba:	d012      	beq.n	80019e2 <TIM_TimeBaseInit+0x36>
 80019bc:	f502 6200 	add.w	r2, r2, #2048	; 0x800
 80019c0:	4290      	cmp	r0, r2
 80019c2:	d00e      	beq.n	80019e2 <TIM_TimeBaseInit+0x36>
 80019c4:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80019c8:	d00b      	beq.n	80019e2 <TIM_TimeBaseInit+0x36>
 80019ca:	f5a2 3298 	sub.w	r2, r2, #77824	; 0x13000
 80019ce:	4290      	cmp	r0, r2
 80019d0:	d007      	beq.n	80019e2 <TIM_TimeBaseInit+0x36>
 80019d2:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80019d6:	4290      	cmp	r0, r2
 80019d8:	d003      	beq.n	80019e2 <TIM_TimeBaseInit+0x36>
 80019da:	f502 32a4 	add.w	r2, r2, #83968	; 0x14800
 80019de:	4290      	cmp	r0, r2
 80019e0:	d103      	bne.n	80019ea <TIM_TimeBaseInit+0x3e>
 80019e2:	884a      	ldrh	r2, [r1, #2]
 80019e4:	f023 0370 	bic.w	r3, r3, #112	; 0x70
 80019e8:	4313      	orrs	r3, r2
 80019ea:	4a17      	ldr	r2, [pc, #92]	; (8001a48 <TIM_TimeBaseInit+0x9c>)
 80019ec:	4290      	cmp	r0, r2
 80019ee:	d008      	beq.n	8001a02 <TIM_TimeBaseInit+0x56>
 80019f0:	f502 6280 	add.w	r2, r2, #1024	; 0x400
 80019f4:	4290      	cmp	r0, r2
 80019f6:	bf1f      	itttt	ne
 80019f8:	f423 7340 	bicne.w	r3, r3, #768	; 0x300
 80019fc:	890a      	ldrhne	r2, [r1, #8]
 80019fe:	b29b      	uxthne	r3, r3
 8001a00:	4313      	orrne	r3, r2
 8001a02:	8003      	strh	r3, [r0, #0]
 8001a04:	684b      	ldr	r3, [r1, #4]
 8001a06:	62c3      	str	r3, [r0, #44]	; 0x2c
 8001a08:	880b      	ldrh	r3, [r1, #0]
 8001a0a:	8503      	strh	r3, [r0, #40]	; 0x28
 8001a0c:	4b0d      	ldr	r3, [pc, #52]	; (8001a44 <TIM_TimeBaseInit+0x98>)
 8001a0e:	4298      	cmp	r0, r3
 8001a10:	d013      	beq.n	8001a3a <TIM_TimeBaseInit+0x8e>
 8001a12:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a16:	4298      	cmp	r0, r3
 8001a18:	d00f      	beq.n	8001a3a <TIM_TimeBaseInit+0x8e>
 8001a1a:	f503 6340 	add.w	r3, r3, #3072	; 0xc00
 8001a1e:	4298      	cmp	r0, r3
 8001a20:	d00b      	beq.n	8001a3a <TIM_TimeBaseInit+0x8e>
 8001a22:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a26:	4298      	cmp	r0, r3
 8001a28:	d007      	beq.n	8001a3a <TIM_TimeBaseInit+0x8e>
 8001a2a:	f503 6380 	add.w	r3, r3, #1024	; 0x400
 8001a2e:	4298      	cmp	r0, r3
 8001a30:	d003      	beq.n	8001a3a <TIM_TimeBaseInit+0x8e>
 8001a32:	f503 6300 	add.w	r3, r3, #2048	; 0x800
 8001a36:	4298      	cmp	r0, r3
 8001a38:	d101      	bne.n	8001a3e <TIM_TimeBaseInit+0x92>
 8001a3a:	894b      	ldrh	r3, [r1, #10]
 8001a3c:	8603      	strh	r3, [r0, #48]	; 0x30
 8001a3e:	2301      	movs	r3, #1
 8001a40:	6143      	str	r3, [r0, #20]
 8001a42:	4770      	bx	lr
 8001a44:	40012c00 	.word	0x40012c00
 8001a48:	40001000 	.word	0x40001000

08001a4c <TIM_Cmd>:
 8001a4c:	bf00      	nop
 8001a4e:	bf00      	nop
 8001a50:	8803      	ldrh	r3, [r0, #0]
 8001a52:	b119      	cbz	r1, 8001a5c <TIM_Cmd+0x10>
 8001a54:	b29b      	uxth	r3, r3
 8001a56:	f043 0301 	orr.w	r3, r3, #1
 8001a5a:	e003      	b.n	8001a64 <TIM_Cmd+0x18>
 8001a5c:	f023 0301 	bic.w	r3, r3, #1
 8001a60:	041b      	lsls	r3, r3, #16
 8001a62:	0c1b      	lsrs	r3, r3, #16
 8001a64:	8003      	strh	r3, [r0, #0]
 8001a66:	4770      	bx	lr

08001a68 <TIM_ClearITPendingBit>:
 8001a68:	bf00      	nop
 8001a6a:	43c9      	mvns	r1, r1
 8001a6c:	b289      	uxth	r1, r1
 8001a6e:	6101      	str	r1, [r0, #16]
 8001a70:	4770      	bx	lr
	...

08001a74 <USART_Init>:
 8001a74:	b530      	push	{r4, r5, lr}
 8001a76:	4604      	mov	r4, r0
 8001a78:	b099      	sub	sp, #100	; 0x64
 8001a7a:	460d      	mov	r5, r1
 8001a7c:	bf00      	nop
 8001a7e:	bf00      	nop
 8001a80:	bf00      	nop
 8001a82:	bf00      	nop
 8001a84:	bf00      	nop
 8001a86:	bf00      	nop
 8001a88:	bf00      	nop
 8001a8a:	6803      	ldr	r3, [r0, #0]
 8001a8c:	f023 0301 	bic.w	r3, r3, #1
 8001a90:	6003      	str	r3, [r0, #0]
 8001a92:	6843      	ldr	r3, [r0, #4]
 8001a94:	f423 5240 	bic.w	r2, r3, #12288	; 0x3000
 8001a98:	688b      	ldr	r3, [r1, #8]
 8001a9a:	68c9      	ldr	r1, [r1, #12]
 8001a9c:	4313      	orrs	r3, r2
 8001a9e:	6043      	str	r3, [r0, #4]
 8001aa0:	686a      	ldr	r2, [r5, #4]
 8001aa2:	6803      	ldr	r3, [r0, #0]
 8001aa4:	4311      	orrs	r1, r2
 8001aa6:	692a      	ldr	r2, [r5, #16]
 8001aa8:	f423 53b0 	bic.w	r3, r3, #5632	; 0x1600
 8001aac:	430a      	orrs	r2, r1
 8001aae:	f023 030c 	bic.w	r3, r3, #12
 8001ab2:	4313      	orrs	r3, r2
 8001ab4:	6003      	str	r3, [r0, #0]
 8001ab6:	6883      	ldr	r3, [r0, #8]
 8001ab8:	f423 7240 	bic.w	r2, r3, #768	; 0x300
 8001abc:	696b      	ldr	r3, [r5, #20]
 8001abe:	4313      	orrs	r3, r2
 8001ac0:	6083      	str	r3, [r0, #8]
 8001ac2:	a801      	add	r0, sp, #4
 8001ac4:	f7ff fdd2 	bl	800166c <RCC_GetClocksFreq>
 8001ac8:	4b17      	ldr	r3, [pc, #92]	; (8001b28 <USART_Init+0xb4>)
 8001aca:	429c      	cmp	r4, r3
 8001acc:	d101      	bne.n	8001ad2 <USART_Init+0x5e>
 8001ace:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8001ad0:	e00e      	b.n	8001af0 <USART_Init+0x7c>
 8001ad2:	4b16      	ldr	r3, [pc, #88]	; (8001b2c <USART_Init+0xb8>)
 8001ad4:	429c      	cmp	r4, r3
 8001ad6:	d101      	bne.n	8001adc <USART_Init+0x68>
 8001ad8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8001ada:	e009      	b.n	8001af0 <USART_Init+0x7c>
 8001adc:	4b14      	ldr	r3, [pc, #80]	; (8001b30 <USART_Init+0xbc>)
 8001ade:	429c      	cmp	r4, r3
 8001ae0:	d101      	bne.n	8001ae6 <USART_Init+0x72>
 8001ae2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8001ae4:	e004      	b.n	8001af0 <USART_Init+0x7c>
 8001ae6:	4b13      	ldr	r3, [pc, #76]	; (8001b34 <USART_Init+0xc0>)
 8001ae8:	429c      	cmp	r4, r3
 8001aea:	bf0c      	ite	eq
 8001aec:	9b12      	ldreq	r3, [sp, #72]	; 0x48
 8001aee:	9b13      	ldrne	r3, [sp, #76]	; 0x4c
 8001af0:	6822      	ldr	r2, [r4, #0]
 8001af2:	6829      	ldr	r1, [r5, #0]
 8001af4:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001af8:	bf18      	it	ne
 8001afa:	005b      	lslne	r3, r3, #1
 8001afc:	fbb3 f2f1 	udiv	r2, r3, r1
 8001b00:	fb01 3312 	mls	r3, r1, r2, r3
 8001b04:	ebb3 0f51 	cmp.w	r3, r1, lsr #1
 8001b08:	6823      	ldr	r3, [r4, #0]
 8001b0a:	bf28      	it	cs
 8001b0c:	3201      	addcs	r2, #1
 8001b0e:	041b      	lsls	r3, r3, #16
 8001b10:	bf41      	itttt	mi
 8001b12:	f64f 73f0 	movwmi	r3, #65520	; 0xfff0
 8001b16:	f3c2 0142 	ubfxmi	r1, r2, #1, #3
 8001b1a:	4013      	andmi	r3, r2
 8001b1c:	ea41 0203 	orrmi.w	r2, r1, r3
 8001b20:	b292      	uxth	r2, r2
 8001b22:	81a2      	strh	r2, [r4, #12]
 8001b24:	b019      	add	sp, #100	; 0x64
 8001b26:	bd30      	pop	{r4, r5, pc}
 8001b28:	40013800 	.word	0x40013800
 8001b2c:	40004400 	.word	0x40004400
 8001b30:	40004800 	.word	0x40004800
 8001b34:	40004c00 	.word	0x40004c00

08001b38 <USART_Cmd>:
 8001b38:	bf00      	nop
 8001b3a:	bf00      	nop
 8001b3c:	6803      	ldr	r3, [r0, #0]
 8001b3e:	b111      	cbz	r1, 8001b46 <USART_Cmd+0xe>
 8001b40:	f043 0301 	orr.w	r3, r3, #1
 8001b44:	e001      	b.n	8001b4a <USART_Cmd+0x12>
 8001b46:	f023 0301 	bic.w	r3, r3, #1
 8001b4a:	6003      	str	r3, [r0, #0]
 8001b4c:	4770      	bx	lr

08001b4e <USART_ReceiveData>:
 8001b4e:	bf00      	nop
 8001b50:	8c80      	ldrh	r0, [r0, #36]	; 0x24
 8001b52:	f3c0 0008 	ubfx	r0, r0, #0, #9
 8001b56:	4770      	bx	lr

08001b58 <USART_ITConfig>:
 8001b58:	b510      	push	{r4, lr}
 8001b5a:	bf00      	nop
 8001b5c:	bf00      	nop
 8001b5e:	bf00      	nop
 8001b60:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001b64:	2301      	movs	r3, #1
 8001b66:	b2c9      	uxtb	r1, r1
 8001b68:	2c02      	cmp	r4, #2
 8001b6a:	fa03 f301 	lsl.w	r3, r3, r1
 8001b6e:	d101      	bne.n	8001b74 <USART_ITConfig+0x1c>
 8001b70:	3004      	adds	r0, #4
 8001b72:	e002      	b.n	8001b7a <USART_ITConfig+0x22>
 8001b74:	2c03      	cmp	r4, #3
 8001b76:	bf08      	it	eq
 8001b78:	3008      	addeq	r0, #8
 8001b7a:	b112      	cbz	r2, 8001b82 <USART_ITConfig+0x2a>
 8001b7c:	6802      	ldr	r2, [r0, #0]
 8001b7e:	4313      	orrs	r3, r2
 8001b80:	e002      	b.n	8001b88 <USART_ITConfig+0x30>
 8001b82:	6802      	ldr	r2, [r0, #0]
 8001b84:	ea22 0303 	bic.w	r3, r2, r3
 8001b88:	6003      	str	r3, [r0, #0]
 8001b8a:	bd10      	pop	{r4, pc}

08001b8c <USART_GetITStatus>:
 8001b8c:	b510      	push	{r4, lr}
 8001b8e:	bf00      	nop
 8001b90:	bf00      	nop
 8001b92:	f3c1 2207 	ubfx	r2, r1, #8, #8
 8001b96:	b2cc      	uxtb	r4, r1
 8001b98:	2301      	movs	r3, #1
 8001b9a:	2a01      	cmp	r2, #1
 8001b9c:	fa03 f304 	lsl.w	r3, r3, r4
 8001ba0:	d101      	bne.n	8001ba6 <USART_GetITStatus+0x1a>
 8001ba2:	6802      	ldr	r2, [r0, #0]
 8001ba4:	e003      	b.n	8001bae <USART_GetITStatus+0x22>
 8001ba6:	2a02      	cmp	r2, #2
 8001ba8:	bf0c      	ite	eq
 8001baa:	6842      	ldreq	r2, [r0, #4]
 8001bac:	6882      	ldrne	r2, [r0, #8]
 8001bae:	4013      	ands	r3, r2
 8001bb0:	69c2      	ldr	r2, [r0, #28]
 8001bb2:	b13b      	cbz	r3, 8001bc4 <USART_GetITStatus+0x38>
 8001bb4:	0c09      	lsrs	r1, r1, #16
 8001bb6:	2301      	movs	r3, #1
 8001bb8:	408b      	lsls	r3, r1
 8001bba:	4213      	tst	r3, r2
 8001bbc:	bf14      	ite	ne
 8001bbe:	2001      	movne	r0, #1
 8001bc0:	2000      	moveq	r0, #0
 8001bc2:	bd10      	pop	{r4, pc}
 8001bc4:	4618      	mov	r0, r3
 8001bc6:	bd10      	pop	{r4, pc}

08001bc8 <USART_ClearITPendingBit>:
 8001bc8:	bf00      	nop
 8001bca:	bf00      	nop
 8001bcc:	2301      	movs	r3, #1
 8001bce:	0c09      	lsrs	r1, r1, #16
 8001bd0:	408b      	lsls	r3, r1
 8001bd2:	6203      	str	r3, [r0, #32]
 8001bd4:	4770      	bx	lr
	...

08001bd8 <SystemInit>:
 8001bd8:	4a39      	ldr	r2, [pc, #228]	; (8001cc0 <SystemInit+0xe8>)
 8001bda:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001bde:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001be2:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001be6:	4b37      	ldr	r3, [pc, #220]	; (8001cc4 <SystemInit+0xec>)
 8001be8:	681a      	ldr	r2, [r3, #0]
 8001bea:	f042 0201 	orr.w	r2, r2, #1
 8001bee:	601a      	str	r2, [r3, #0]
 8001bf0:	6859      	ldr	r1, [r3, #4]
 8001bf2:	4a35      	ldr	r2, [pc, #212]	; (8001cc8 <SystemInit+0xf0>)
 8001bf4:	400a      	ands	r2, r1
 8001bf6:	605a      	str	r2, [r3, #4]
 8001bf8:	681a      	ldr	r2, [r3, #0]
 8001bfa:	f022 7284 	bic.w	r2, r2, #17301504	; 0x1080000
 8001bfe:	f422 3280 	bic.w	r2, r2, #65536	; 0x10000
 8001c02:	601a      	str	r2, [r3, #0]
 8001c04:	681a      	ldr	r2, [r3, #0]
 8001c06:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8001c0a:	601a      	str	r2, [r3, #0]
 8001c0c:	685a      	ldr	r2, [r3, #4]
 8001c0e:	f422 02fe 	bic.w	r2, r2, #8323072	; 0x7f0000
 8001c12:	605a      	str	r2, [r3, #4]
 8001c14:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001c16:	f022 020f 	bic.w	r2, r2, #15
 8001c1a:	62da      	str	r2, [r3, #44]	; 0x2c
 8001c1c:	6b19      	ldr	r1, [r3, #48]	; 0x30
 8001c1e:	4a2b      	ldr	r2, [pc, #172]	; (8001ccc <SystemInit+0xf4>)
 8001c20:	b082      	sub	sp, #8
 8001c22:	400a      	ands	r2, r1
 8001c24:	631a      	str	r2, [r3, #48]	; 0x30
 8001c26:	2200      	movs	r2, #0
 8001c28:	609a      	str	r2, [r3, #8]
 8001c2a:	9200      	str	r2, [sp, #0]
 8001c2c:	9201      	str	r2, [sp, #4]
 8001c2e:	681a      	ldr	r2, [r3, #0]
 8001c30:	f442 3280 	orr.w	r2, r2, #65536	; 0x10000
 8001c34:	601a      	str	r2, [r3, #0]
 8001c36:	681a      	ldr	r2, [r3, #0]
 8001c38:	f402 3200 	and.w	r2, r2, #131072	; 0x20000
 8001c3c:	9201      	str	r2, [sp, #4]
 8001c3e:	9a00      	ldr	r2, [sp, #0]
 8001c40:	3201      	adds	r2, #1
 8001c42:	9200      	str	r2, [sp, #0]
 8001c44:	9a01      	ldr	r2, [sp, #4]
 8001c46:	b91a      	cbnz	r2, 8001c50 <SystemInit+0x78>
 8001c48:	9a00      	ldr	r2, [sp, #0]
 8001c4a:	f5b2 4fa0 	cmp.w	r2, #20480	; 0x5000
 8001c4e:	d1f2      	bne.n	8001c36 <SystemInit+0x5e>
 8001c50:	681a      	ldr	r2, [r3, #0]
 8001c52:	f412 3200 	ands.w	r2, r2, #131072	; 0x20000
 8001c56:	bf18      	it	ne
 8001c58:	2201      	movne	r2, #1
 8001c5a:	9201      	str	r2, [sp, #4]
 8001c5c:	9a01      	ldr	r2, [sp, #4]
 8001c5e:	2a01      	cmp	r2, #1
 8001c60:	d005      	beq.n	8001c6e <SystemInit+0x96>
 8001c62:	4b17      	ldr	r3, [pc, #92]	; (8001cc0 <SystemInit+0xe8>)
 8001c64:	f04f 6200 	mov.w	r2, #134217728	; 0x8000000
 8001c68:	609a      	str	r2, [r3, #8]
 8001c6a:	b002      	add	sp, #8
 8001c6c:	4770      	bx	lr
 8001c6e:	4a18      	ldr	r2, [pc, #96]	; (8001cd0 <SystemInit+0xf8>)
 8001c70:	2112      	movs	r1, #18
 8001c72:	6011      	str	r1, [r2, #0]
 8001c74:	685a      	ldr	r2, [r3, #4]
 8001c76:	605a      	str	r2, [r3, #4]
 8001c78:	685a      	ldr	r2, [r3, #4]
 8001c7a:	605a      	str	r2, [r3, #4]
 8001c7c:	685a      	ldr	r2, [r3, #4]
 8001c7e:	f442 6280 	orr.w	r2, r2, #1024	; 0x400
 8001c82:	605a      	str	r2, [r3, #4]
 8001c84:	685a      	ldr	r2, [r3, #4]
 8001c86:	f422 127c 	bic.w	r2, r2, #4128768	; 0x3f0000
 8001c8a:	605a      	str	r2, [r3, #4]
 8001c8c:	685a      	ldr	r2, [r3, #4]
 8001c8e:	f442 12e8 	orr.w	r2, r2, #1900544	; 0x1d0000
 8001c92:	605a      	str	r2, [r3, #4]
 8001c94:	681a      	ldr	r2, [r3, #0]
 8001c96:	f042 7280 	orr.w	r2, r2, #16777216	; 0x1000000
 8001c9a:	601a      	str	r2, [r3, #0]
 8001c9c:	6819      	ldr	r1, [r3, #0]
 8001c9e:	4a09      	ldr	r2, [pc, #36]	; (8001cc4 <SystemInit+0xec>)
 8001ca0:	0189      	lsls	r1, r1, #6
 8001ca2:	d5fb      	bpl.n	8001c9c <SystemInit+0xc4>
 8001ca4:	6851      	ldr	r1, [r2, #4]
 8001ca6:	f021 0103 	bic.w	r1, r1, #3
 8001caa:	6051      	str	r1, [r2, #4]
 8001cac:	6851      	ldr	r1, [r2, #4]
 8001cae:	f041 0102 	orr.w	r1, r1, #2
 8001cb2:	6051      	str	r1, [r2, #4]
 8001cb4:	685a      	ldr	r2, [r3, #4]
 8001cb6:	f002 020c 	and.w	r2, r2, #12
 8001cba:	2a08      	cmp	r2, #8
 8001cbc:	d1fa      	bne.n	8001cb4 <SystemInit+0xdc>
 8001cbe:	e7d0      	b.n	8001c62 <SystemInit+0x8a>
 8001cc0:	e000ed00 	.word	0xe000ed00
 8001cc4:	40021000 	.word	0x40021000
 8001cc8:	f87fc00c 	.word	0xf87fc00c
 8001ccc:	ff00fccc 	.word	0xff00fccc
 8001cd0:	40022000 	.word	0x40022000

08001cd4 <sleep>:
 8001cd4:	bf30      	wfi
 8001cd6:	4770      	bx	lr

08001cd8 <core_yield>:
 8001cd8:	bf00      	nop
 8001cda:	4770      	bx	lr

08001cdc <sytem_clock_init>:
 8001cdc:	f7ff bf7c 	b.w	8001bd8 <SystemInit>

08001ce0 <NVIC_Init>:
 8001ce0:	b510      	push	{r4, lr}
 8001ce2:	bf00      	nop
 8001ce4:	bf00      	nop
 8001ce6:	bf00      	nop
 8001ce8:	78c2      	ldrb	r2, [r0, #3]
 8001cea:	7803      	ldrb	r3, [r0, #0]
 8001cec:	b312      	cbz	r2, 8001d34 <NVIC_Init+0x54>
 8001cee:	4a17      	ldr	r2, [pc, #92]	; (8001d4c <NVIC_Init+0x6c>)
 8001cf0:	68d1      	ldr	r1, [r2, #12]
 8001cf2:	7842      	ldrb	r2, [r0, #1]
 8001cf4:	43c9      	mvns	r1, r1
 8001cf6:	f3c1 2102 	ubfx	r1, r1, #8, #3
 8001cfa:	f1c1 0404 	rsb	r4, r1, #4
 8001cfe:	b2e4      	uxtb	r4, r4
 8001d00:	40a2      	lsls	r2, r4
 8001d02:	b2d4      	uxtb	r4, r2
 8001d04:	220f      	movs	r2, #15
 8001d06:	410a      	asrs	r2, r1
 8001d08:	7881      	ldrb	r1, [r0, #2]
 8001d0a:	400a      	ands	r2, r1
 8001d0c:	4322      	orrs	r2, r4
 8001d0e:	f103 4360 	add.w	r3, r3, #3758096384	; 0xe0000000
 8001d12:	f503 4361 	add.w	r3, r3, #57600	; 0xe100
 8001d16:	0112      	lsls	r2, r2, #4
 8001d18:	b2d2      	uxtb	r2, r2
 8001d1a:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
 8001d1e:	7803      	ldrb	r3, [r0, #0]
 8001d20:	2201      	movs	r2, #1
 8001d22:	0959      	lsrs	r1, r3, #5
 8001d24:	f003 031f 	and.w	r3, r3, #31
 8001d28:	fa02 f303 	lsl.w	r3, r2, r3
 8001d2c:	4a08      	ldr	r2, [pc, #32]	; (8001d50 <NVIC_Init+0x70>)
 8001d2e:	f842 3021 	str.w	r3, [r2, r1, lsl #2]
 8001d32:	bd10      	pop	{r4, pc}
 8001d34:	095a      	lsrs	r2, r3, #5
 8001d36:	2101      	movs	r1, #1
 8001d38:	f003 031f 	and.w	r3, r3, #31
 8001d3c:	4099      	lsls	r1, r3
 8001d3e:	f102 0320 	add.w	r3, r2, #32
 8001d42:	4a03      	ldr	r2, [pc, #12]	; (8001d50 <NVIC_Init+0x70>)
 8001d44:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
 8001d48:	bd10      	pop	{r4, pc}
 8001d4a:	bf00      	nop
 8001d4c:	e000ed00 	.word	0xe000ed00
 8001d50:	e000e100 	.word	0xe000e100

08001d54 <EXTI_ClearITPendingBit>:
 8001d54:	f020 011f 	bic.w	r1, r0, #31
 8001d58:	2301      	movs	r3, #1
 8001d5a:	f000 001f 	and.w	r0, r0, #31
 8001d5e:	4a02      	ldr	r2, [pc, #8]	; (8001d68 <EXTI_ClearITPendingBit+0x14>)
 8001d60:	4083      	lsls	r3, r0
 8001d62:	508b      	str	r3, [r1, r2]
 8001d64:	4770      	bx	lr
 8001d66:	bf00      	nop
 8001d68:	40010414 	.word	0x40010414

08001d6c <GPIO_Init>:
 8001d6c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d6e:	bf00      	nop
 8001d70:	bf00      	nop
 8001d72:	bf00      	nop
 8001d74:	bf00      	nop
 8001d76:	2300      	movs	r3, #0
 8001d78:	680e      	ldr	r6, [r1, #0]
 8001d7a:	461c      	mov	r4, r3
 8001d7c:	2501      	movs	r5, #1
 8001d7e:	40a5      	lsls	r5, r4
 8001d80:	ea05 0e06 	and.w	lr, r5, r6
 8001d84:	45ae      	cmp	lr, r5
 8001d86:	d12d      	bne.n	8001de4 <GPIO_Init+0x78>
 8001d88:	790f      	ldrb	r7, [r1, #4]
 8001d8a:	1e7a      	subs	r2, r7, #1
 8001d8c:	2a01      	cmp	r2, #1
 8001d8e:	d817      	bhi.n	8001dc0 <GPIO_Init+0x54>
 8001d90:	bf00      	nop
 8001d92:	2203      	movs	r2, #3
 8001d94:	6885      	ldr	r5, [r0, #8]
 8001d96:	409a      	lsls	r2, r3
 8001d98:	ea25 0202 	bic.w	r2, r5, r2
 8001d9c:	6082      	str	r2, [r0, #8]
 8001d9e:	794d      	ldrb	r5, [r1, #5]
 8001da0:	6882      	ldr	r2, [r0, #8]
 8001da2:	409d      	lsls	r5, r3
 8001da4:	4315      	orrs	r5, r2
 8001da6:	6085      	str	r5, [r0, #8]
 8001da8:	bf00      	nop
 8001daa:	8882      	ldrh	r2, [r0, #4]
 8001dac:	b292      	uxth	r2, r2
 8001dae:	ea22 020e 	bic.w	r2, r2, lr
 8001db2:	8082      	strh	r2, [r0, #4]
 8001db4:	798a      	ldrb	r2, [r1, #6]
 8001db6:	8885      	ldrh	r5, [r0, #4]
 8001db8:	40a2      	lsls	r2, r4
 8001dba:	432a      	orrs	r2, r5
 8001dbc:	b292      	uxth	r2, r2
 8001dbe:	8082      	strh	r2, [r0, #4]
 8001dc0:	2203      	movs	r2, #3
 8001dc2:	6805      	ldr	r5, [r0, #0]
 8001dc4:	409a      	lsls	r2, r3
 8001dc6:	43d2      	mvns	r2, r2
 8001dc8:	4015      	ands	r5, r2
 8001dca:	6005      	str	r5, [r0, #0]
 8001dcc:	6805      	ldr	r5, [r0, #0]
 8001dce:	409f      	lsls	r7, r3
 8001dd0:	432f      	orrs	r7, r5
 8001dd2:	6007      	str	r7, [r0, #0]
 8001dd4:	68c7      	ldr	r7, [r0, #12]
 8001dd6:	4017      	ands	r7, r2
 8001dd8:	79ca      	ldrb	r2, [r1, #7]
 8001dda:	fa02 f503 	lsl.w	r5, r2, r3
 8001dde:	ea47 0205 	orr.w	r2, r7, r5
 8001de2:	60c2      	str	r2, [r0, #12]
 8001de4:	3401      	adds	r4, #1
 8001de6:	2c10      	cmp	r4, #16
 8001de8:	f103 0302 	add.w	r3, r3, #2
 8001dec:	d1c6      	bne.n	8001d7c <GPIO_Init+0x10>
 8001dee:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001df0 <GPIO_SetBits>:
 8001df0:	bf00      	nop
 8001df2:	bf00      	nop
 8001df4:	6181      	str	r1, [r0, #24]
 8001df6:	4770      	bx	lr

08001df8 <GPIO_PinAFConfig>:
 8001df8:	b510      	push	{r4, lr}
 8001dfa:	bf00      	nop
 8001dfc:	bf00      	nop
 8001dfe:	bf00      	nop
 8001e00:	f001 0307 	and.w	r3, r1, #7
 8001e04:	08c9      	lsrs	r1, r1, #3
 8001e06:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 8001e0a:	009b      	lsls	r3, r3, #2
 8001e0c:	6a04      	ldr	r4, [r0, #32]
 8001e0e:	210f      	movs	r1, #15
 8001e10:	4099      	lsls	r1, r3
 8001e12:	ea24 0101 	bic.w	r1, r4, r1
 8001e16:	6201      	str	r1, [r0, #32]
 8001e18:	6a01      	ldr	r1, [r0, #32]
 8001e1a:	409a      	lsls	r2, r3
 8001e1c:	430a      	orrs	r2, r1
 8001e1e:	6202      	str	r2, [r0, #32]
 8001e20:	bd10      	pop	{r4, pc}

08001e22 <Default_Handler>:
 8001e22:	4668      	mov	r0, sp
 8001e24:	f020 0107 	bic.w	r1, r0, #7
 8001e28:	468d      	mov	sp, r1
 8001e2a:	b501      	push	{r0, lr}
 8001e2c:	bf00      	nop
 8001e2e:	e8bd 4001 	ldmia.w	sp!, {r0, lr}
 8001e32:	4685      	mov	sp, r0
 8001e34:	4770      	bx	lr

08001e36 <HardFault_Handler>:
 8001e36:	bf00      	nop
 8001e38:	e7fd      	b.n	8001e36 <HardFault_Handler>
	...

08001e3c <_reset_init>:
 8001e3c:	490e      	ldr	r1, [pc, #56]	; (8001e78 <_reset_init+0x3c>)
 8001e3e:	4b0f      	ldr	r3, [pc, #60]	; (8001e7c <_reset_init+0x40>)
 8001e40:	1a5b      	subs	r3, r3, r1
 8001e42:	109b      	asrs	r3, r3, #2
 8001e44:	2200      	movs	r2, #0
 8001e46:	429a      	cmp	r2, r3
 8001e48:	d006      	beq.n	8001e58 <_reset_init+0x1c>
 8001e4a:	480d      	ldr	r0, [pc, #52]	; (8001e80 <_reset_init+0x44>)
 8001e4c:	f850 0022 	ldr.w	r0, [r0, r2, lsl #2]
 8001e50:	f841 0022 	str.w	r0, [r1, r2, lsl #2]
 8001e54:	3201      	adds	r2, #1
 8001e56:	e7f6      	b.n	8001e46 <_reset_init+0xa>
 8001e58:	4a0a      	ldr	r2, [pc, #40]	; (8001e84 <_reset_init+0x48>)
 8001e5a:	f8d2 3088 	ldr.w	r3, [r2, #136]	; 0x88
 8001e5e:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
 8001e62:	f8c2 3088 	str.w	r3, [r2, #136]	; 0x88
 8001e66:	f502 720c 	add.w	r2, r2, #560	; 0x230
 8001e6a:	6853      	ldr	r3, [r2, #4]
 8001e6c:	f023 4340 	bic.w	r3, r3, #3221225472	; 0xc0000000
 8001e70:	6053      	str	r3, [r2, #4]
 8001e72:	f7ff bbf5 	b.w	8001660 <main>
 8001e76:	bf00      	nop
 8001e78:	20000000 	.word	0x20000000
 8001e7c:	20000030 	.word	0x20000030
 8001e80:	0800211c 	.word	0x0800211c
 8001e84:	e000ed00 	.word	0xe000ed00

08001e88 <thread_ending>:
 8001e88:	b672      	cpsid	i
 8001e8a:	4b05      	ldr	r3, [pc, #20]	; (8001ea0 <thread_ending+0x18>)
 8001e8c:	681a      	ldr	r2, [r3, #0]
 8001e8e:	4b05      	ldr	r3, [pc, #20]	; (8001ea4 <thread_ending+0x1c>)
 8001e90:	210c      	movs	r1, #12
 8001e92:	fb01 3302 	mla	r3, r1, r2, r3
 8001e96:	2200      	movs	r2, #0
 8001e98:	605a      	str	r2, [r3, #4]
 8001e9a:	b662      	cpsie	i
 8001e9c:	bf00      	nop
 8001e9e:	e7fd      	b.n	8001e9c <thread_ending+0x14>
 8001ea0:	200001c4 	.word	0x200001c4
 8001ea4:	2000017c 	.word	0x2000017c

08001ea8 <null_thread>:
 8001ea8:	b508      	push	{r3, lr}
 8001eaa:	f7ff ff13 	bl	8001cd4 <sleep>
 8001eae:	e7fc      	b.n	8001eaa <null_thread+0x2>

08001eb0 <scheduler>:
 8001eb0:	b570      	push	{r4, r5, r6, lr}
 8001eb2:	2200      	movs	r2, #0
 8001eb4:	4611      	mov	r1, r2
 8001eb6:	4b15      	ldr	r3, [pc, #84]	; (8001f0c <scheduler+0x5c>)
 8001eb8:	200c      	movs	r0, #12
 8001eba:	fb00 f401 	mul.w	r4, r0, r1
 8001ebe:	191e      	adds	r6, r3, r4
 8001ec0:	6875      	ldr	r5, [r6, #4]
 8001ec2:	f015 0f02 	tst.w	r5, #2
 8001ec6:	461d      	mov	r5, r3
 8001ec8:	d10a      	bne.n	8001ee0 <scheduler+0x30>
 8001eca:	6876      	ldr	r6, [r6, #4]
 8001ecc:	07f6      	lsls	r6, r6, #31
 8001ece:	d507      	bpl.n	8001ee0 <scheduler+0x30>
 8001ed0:	4350      	muls	r0, r2
 8001ed2:	5b1c      	ldrh	r4, [r3, r4]
 8001ed4:	5a18      	ldrh	r0, [r3, r0]
 8001ed6:	b2a4      	uxth	r4, r4
 8001ed8:	b280      	uxth	r0, r0
 8001eda:	4284      	cmp	r4, r0
 8001edc:	bf38      	it	cc
 8001ede:	460a      	movcc	r2, r1
 8001ee0:	200c      	movs	r0, #12
 8001ee2:	4348      	muls	r0, r1
 8001ee4:	5a1c      	ldrh	r4, [r3, r0]
 8001ee6:	b2a4      	uxth	r4, r4
 8001ee8:	b11c      	cbz	r4, 8001ef2 <scheduler+0x42>
 8001eea:	5a1c      	ldrh	r4, [r3, r0]
 8001eec:	3c01      	subs	r4, #1
 8001eee:	b2a4      	uxth	r4, r4
 8001ef0:	521c      	strh	r4, [r3, r0]
 8001ef2:	3101      	adds	r1, #1
 8001ef4:	2906      	cmp	r1, #6
 8001ef6:	d1de      	bne.n	8001eb6 <scheduler+0x6>
 8001ef8:	230c      	movs	r3, #12
 8001efa:	4353      	muls	r3, r2
 8001efc:	18e9      	adds	r1, r5, r3
 8001efe:	8849      	ldrh	r1, [r1, #2]
 8001f00:	b289      	uxth	r1, r1
 8001f02:	52e9      	strh	r1, [r5, r3]
 8001f04:	4b02      	ldr	r3, [pc, #8]	; (8001f10 <scheduler+0x60>)
 8001f06:	601a      	str	r2, [r3, #0]
 8001f08:	bd70      	pop	{r4, r5, r6, pc}
 8001f0a:	bf00      	nop
 8001f0c:	2000017c 	.word	0x2000017c
 8001f10:	200001c4 	.word	0x200001c4

08001f14 <SysTick_Handler>:
 8001f14:	e92d 0ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001f18:	f3ef 8308 	mrs	r3, MSP
 8001f1c:	4c0d      	ldr	r4, [pc, #52]	; (8001f54 <SysTick_Handler+0x40>)
 8001f1e:	4d0e      	ldr	r5, [pc, #56]	; (8001f58 <SysTick_Handler+0x44>)
 8001f20:	6822      	ldr	r2, [r4, #0]
 8001f22:	3201      	adds	r2, #1
 8001f24:	bf1d      	ittte	ne
 8001f26:	6822      	ldrne	r2, [r4, #0]
 8001f28:	210c      	movne	r1, #12
 8001f2a:	fb01 5202 	mlane	r2, r1, r2, r5
 8001f2e:	2300      	moveq	r3, #0
 8001f30:	bf14      	ite	ne
 8001f32:	6093      	strne	r3, [r2, #8]
 8001f34:	6023      	streq	r3, [r4, #0]
 8001f36:	f7ff ffbb 	bl	8001eb0 <scheduler>
 8001f3a:	6822      	ldr	r2, [r4, #0]
 8001f3c:	230c      	movs	r3, #12
 8001f3e:	fb03 5302 	mla	r3, r3, r2, r5
 8001f42:	689a      	ldr	r2, [r3, #8]
 8001f44:	f06f 0306 	mvn.w	r3, #6
 8001f48:	469e      	mov	lr, r3
 8001f4a:	f382 8808 	msr	MSP, r2
 8001f4e:	e8bd 0ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
 8001f52:	4770      	bx	lr
 8001f54:	200001c4 	.word	0x200001c4
 8001f58:	2000017c 	.word	0x2000017c

08001f5c <create_thread>:
 8001f5c:	f022 0203 	bic.w	r2, r2, #3
 8001f60:	3a40      	subs	r2, #64	; 0x40
 8001f62:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8001f66:	eb01 0e02 	add.w	lr, r1, r2
 8001f6a:	f102 0634 	add.w	r6, r2, #52	; 0x34
 8001f6e:	f102 0738 	add.w	r7, r2, #56	; 0x38
 8001f72:	323c      	adds	r2, #60	; 0x3c
 8001f74:	440e      	add	r6, r1
 8001f76:	440f      	add	r7, r1
 8001f78:	4411      	add	r1, r2
 8001f7a:	2200      	movs	r2, #0
 8001f7c:	b672      	cpsid	i
 8001f7e:	f8df c054 	ldr.w	ip, [pc, #84]	; 8001fd4 <create_thread+0x78>
 8001f82:	250c      	movs	r5, #12
 8001f84:	4355      	muls	r5, r2
 8001f86:	eb0c 0405 	add.w	r4, ip, r5
 8001f8a:	f8d4 8004 	ldr.w	r8, [r4, #4]
 8001f8e:	f018 0f01 	tst.w	r8, #1
 8001f92:	d114      	bne.n	8001fbe <create_thread+0x62>
 8001f94:	f8df 8040 	ldr.w	r8, [pc, #64]	; 8001fd8 <create_thread+0x7c>
 8001f98:	f8c4 e008 	str.w	lr, [r4, #8]
 8001f9c:	2b05      	cmp	r3, #5
 8001f9e:	f8c6 8000 	str.w	r8, [r6]
 8001fa2:	bf98      	it	ls
 8001fa4:	2306      	movls	r3, #6
 8001fa6:	f04f 5804 	mov.w	r8, #553648128	; 0x21000000
 8001faa:	6038      	str	r0, [r7, #0]
 8001fac:	f8c1 8000 	str.w	r8, [r1]
 8001fb0:	8063      	strh	r3, [r4, #2]
 8001fb2:	f82c 3005 	strh.w	r3, [ip, r5]
 8001fb6:	2501      	movs	r5, #1
 8001fb8:	6065      	str	r5, [r4, #4]
 8001fba:	4614      	mov	r4, r2
 8001fbc:	e000      	b.n	8001fc0 <create_thread+0x64>
 8001fbe:	2406      	movs	r4, #6
 8001fc0:	b662      	cpsie	i
 8001fc2:	3201      	adds	r2, #1
 8001fc4:	2a06      	cmp	r2, #6
 8001fc6:	d001      	beq.n	8001fcc <create_thread+0x70>
 8001fc8:	2c06      	cmp	r4, #6
 8001fca:	d0d7      	beq.n	8001f7c <create_thread+0x20>
 8001fcc:	4620      	mov	r0, r4
 8001fce:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8001fd2:	bf00      	nop
 8001fd4:	2000017c 	.word	0x2000017c
 8001fd8:	08001e89 	.word	0x08001e89

08001fdc <kernel_init>:
 8001fdc:	b510      	push	{r4, lr}
 8001fde:	2300      	movs	r3, #0
 8001fe0:	490b      	ldr	r1, [pc, #44]	; (8002010 <kernel_init+0x34>)
 8001fe2:	220c      	movs	r2, #12
 8001fe4:	435a      	muls	r2, r3
 8001fe6:	188c      	adds	r4, r1, r2
 8001fe8:	2000      	movs	r0, #0
 8001fea:	6060      	str	r0, [r4, #4]
 8001fec:	3301      	adds	r3, #1
 8001fee:	2006      	movs	r0, #6
 8001ff0:	4283      	cmp	r3, r0
 8001ff2:	8060      	strh	r0, [r4, #2]
 8001ff4:	5288      	strh	r0, [r1, r2]
 8001ff6:	d1f3      	bne.n	8001fe0 <kernel_init+0x4>
 8001ff8:	4b06      	ldr	r3, [pc, #24]	; (8002014 <kernel_init+0x38>)
 8001ffa:	4807      	ldr	r0, [pc, #28]	; (8002018 <kernel_init+0x3c>)
 8001ffc:	4907      	ldr	r1, [pc, #28]	; (800201c <kernel_init+0x40>)
 8001ffe:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002002:	601a      	str	r2, [r3, #0]
 8002004:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8002008:	2280      	movs	r2, #128	; 0x80
 800200a:	23ff      	movs	r3, #255	; 0xff
 800200c:	f7ff bfa6 	b.w	8001f5c <create_thread>
 8002010:	2000017c 	.word	0x2000017c
 8002014:	200001c4 	.word	0x200001c4
 8002018:	08001ea9 	.word	0x08001ea9
 800201c:	200001c8 	.word	0x200001c8

08002020 <messages_init>:
 8002020:	4a0a      	ldr	r2, [pc, #40]	; (800204c <messages_init+0x2c>)
 8002022:	2300      	movs	r3, #0
 8002024:	b510      	push	{r4, lr}
 8002026:	6013      	str	r3, [r2, #0]
 8002028:	6053      	str	r3, [r2, #4]
 800202a:	6093      	str	r3, [r2, #8]
 800202c:	60d3      	str	r3, [r2, #12]
 800202e:	6113      	str	r3, [r2, #16]
 8002030:	6153      	str	r3, [r2, #20]
 8002032:	4c07      	ldr	r4, [pc, #28]	; (8002050 <messages_init+0x30>)
 8002034:	0118      	lsls	r0, r3, #4
 8002036:	1821      	adds	r1, r4, r0
 8002038:	3301      	adds	r3, #1
 800203a:	2200      	movs	r2, #0
 800203c:	2b04      	cmp	r3, #4
 800203e:	604a      	str	r2, [r1, #4]
 8002040:	5022      	str	r2, [r4, r0]
 8002042:	60ca      	str	r2, [r1, #12]
 8002044:	608a      	str	r2, [r1, #8]
 8002046:	d1f4      	bne.n	8002032 <messages_init+0x12>
 8002048:	bd10      	pop	{r4, pc}
 800204a:	bf00      	nop
 800204c:	20000248 	.word	0x20000248
 8002050:	20000260 	.word	0x20000260

08002054 <lib_os_init>:
 8002054:	b508      	push	{r3, lr}
 8002056:	f7ff ffc1 	bl	8001fdc <kernel_init>
 800205a:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
 800205e:	f7ff bfdf 	b.w	8002020 <messages_init>

08002062 <_text>:
	...

08002064 <_init>:
 8002064:	e1a0c00d 	mov	ip, sp
 8002068:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 800206c:	e24cb004 	sub	fp, ip, #4
 8002070:	e24bd028 	sub	sp, fp, #40	; 0x28
 8002074:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002078:	e12fff1e 	bx	lr

0800207c <_fini>:
 800207c:	e1a0c00d 	mov	ip, sp
 8002080:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
 8002084:	e24cb004 	sub	fp, ip, #4
 8002088:	e24bd028 	sub	sp, fp, #40	; 0x28
 800208c:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
 8002090:	e12fff1e 	bx	lr
 8002094:	61646f6b 	.word	0x61646f6b
 8002098:	6920616d 	.word	0x6920616d
 800209c:	2074696e 	.word	0x2074696e
 80020a0:	25206925 	.word	0x25206925
 80020a4:	203a2069 	.word	0x203a2069
 80020a8:	4f5b2000 	.word	0x4f5b2000
 80020ac:	000a5d4b 	.word	0x000a5d4b
 80020b0:	41465b20 	.word	0x41465b20
 80020b4:	44454c49 	.word	0x44454c49
 80020b8:	000a0a5d 	.word	0x000a0a5d
 80020bc:	74737973 	.word	0x74737973
 80020c0:	74206d65 	.word	0x74206d65
 80020c4:	20656d69 	.word	0x20656d69
 80020c8:	000a7525 	.word	0x000a7525
 80020cc:	6f636e65 	.word	0x6f636e65
 80020d0:	73726564 	.word	0x73726564
 80020d4:	20692520 	.word	0x20692520
 80020d8:	000a6925 	.word	0x000a6925
 80020dc:	6c676e61 	.word	0x6c676e61
 80020e0:	25207365 	.word	0x25207365
 80020e4:	69252069 	.word	0x69252069
 80020e8:	0a692520 	.word	0x0a692520
 80020ec:	63636100 	.word	0x63636100
 80020f0:	69252020 	.word	0x69252020
 80020f4:	20692520 	.word	0x20692520
 80020f8:	000a6925 	.word	0x000a6925
 80020fc:	6f727967 	.word	0x6f727967
 8002100:	20692520 	.word	0x20692520
 8002104:	25206925 	.word	0x25206925
 8002108:	25000a69 	.word	0x25000a69
 800210c:	69002069 	.word	0x69002069
 8002110:	20656c64 	.word	0x20656c64
 8002114:	000a7525 	.word	0x000a7525

08002118 <__EH_FRAME_BEGIN__>:
 8002118:	00000000                                ....
