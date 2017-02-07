
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 3c 00 	jmp	0x78	; 0x78 <__dtors_end>
   4:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
   8:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
   c:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  10:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  14:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  18:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  1c:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  20:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  24:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  28:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  2c:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  30:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  34:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  38:	0c 94 34 05 	jmp	0xa68	; 0xa68 <__vector_14>
  3c:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  40:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  44:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  48:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  4c:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  50:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  54:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  58:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  5c:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  60:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>
  64:	0c 94 64 00 	jmp	0xc8	; 0xc8 <__bad_interrupt>

00000068 <__ctors_start>:
  68:	d8 00       	.word	0x00d8	; ????
  6a:	e1 00       	.word	0x00e1	; ????
  6c:	3f 02       	muls	r19, r31
  6e:	8f 03       	fmulsu	r16, r23
  70:	9e 05       	cpc	r25, r14
  72:	a2 05       	cpc	r26, r2

00000074 <__ctors_end>:
  74:	dd 00       	.word	0x00dd	; ????
  76:	93 03       	fmuls	r17, r19

00000078 <__dtors_end>:
  78:	11 24       	eor	r1, r1
  7a:	1f be       	out	0x3f, r1	; 63
  7c:	cf ef       	ldi	r28, 0xFF	; 255
  7e:	d8 e0       	ldi	r29, 0x08	; 8
  80:	de bf       	out	0x3e, r29	; 62
  82:	cd bf       	out	0x3d, r28	; 61

00000084 <__do_copy_data>:
  84:	11 e0       	ldi	r17, 0x01	; 1
  86:	a0 e0       	ldi	r26, 0x00	; 0
  88:	b1 e0       	ldi	r27, 0x01	; 1
  8a:	e4 ec       	ldi	r30, 0xC4	; 196
  8c:	fb e0       	ldi	r31, 0x0B	; 11
  8e:	02 c0       	rjmp	.+4      	; 0x94 <__do_copy_data+0x10>
  90:	05 90       	lpm	r0, Z+
  92:	0d 92       	st	X+, r0
  94:	a2 31       	cpi	r26, 0x12	; 18
  96:	b1 07       	cpc	r27, r17
  98:	d9 f7       	brne	.-10     	; 0x90 <__do_copy_data+0xc>

0000009a <__do_clear_bss>:
  9a:	21 e0       	ldi	r18, 0x01	; 1
  9c:	a2 e1       	ldi	r26, 0x12	; 18
  9e:	b1 e0       	ldi	r27, 0x01	; 1
  a0:	01 c0       	rjmp	.+2      	; 0xa4 <.do_clear_bss_start>

000000a2 <.do_clear_bss_loop>:
  a2:	1d 92       	st	X+, r1

000000a4 <.do_clear_bss_start>:
  a4:	ae 3c       	cpi	r26, 0xCE	; 206
  a6:	b2 07       	cpc	r27, r18
  a8:	e1 f7       	brne	.-8      	; 0xa2 <.do_clear_bss_loop>

000000aa <__do_global_ctors>:
  aa:	10 e0       	ldi	r17, 0x00	; 0
  ac:	c4 e7       	ldi	r28, 0x74	; 116
  ae:	d0 e0       	ldi	r29, 0x00	; 0
  b0:	04 c0       	rjmp	.+8      	; 0xba <__do_global_ctors+0x10>
  b2:	22 97       	sbiw	r28, 0x02	; 2
  b4:	fe 01       	movw	r30, r28
  b6:	0e 94 d1 05 	call	0xba2	; 0xba2 <__tablejump__>
  ba:	c8 36       	cpi	r28, 0x68	; 104
  bc:	d1 07       	cpc	r29, r17
  be:	c9 f7       	brne	.-14     	; 0xb2 <__do_global_ctors+0x8>
  c0:	0e 94 66 00 	call	0xcc	; 0xcc <main>
  c4:	0c 94 d5 05 	jmp	0xbaa	; 0xbaa <__do_global_dtors>

000000c8 <__bad_interrupt>:
  c8:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000cc <main>:
  cc:	0e 94 b4 00 	call	0x168	; 0x168 <_Z8usr_mainv>
  d0:	80 e0       	ldi	r24, 0x00	; 0
  d2:	90 e0       	ldi	r25, 0x00	; 0
  d4:	08 95       	ret

000000d6 <_Z6sensorv>:
  d6:	84 e1       	ldi	r24, 0x14	; 20
  d8:	91 e0       	ldi	r25, 0x01	; 1
  da:	0c 94 35 04 	jmp	0x86a	; 0x86a <_ZN9CAPDS99504readEv>

000000de <_Z9main_loopv>:
  de:	ec e1       	ldi	r30, 0x1C	; 28
  e0:	f1 e0       	ldi	r31, 0x01	; 1
  e2:	81 81       	ldd	r24, Z+1	; 0x01
  e4:	8f 93       	push	r24
  e6:	80 81       	ld	r24, Z
  e8:	8f 93       	push	r24
  ea:	e8 e1       	ldi	r30, 0x18	; 24
  ec:	f1 e0       	ldi	r31, 0x01	; 1
  ee:	81 81       	ldd	r24, Z+1	; 0x01
  f0:	8f 93       	push	r24
  f2:	80 81       	ld	r24, Z
  f4:	8f 93       	push	r24
  f6:	e6 e1       	ldi	r30, 0x16	; 22
  f8:	f1 e0       	ldi	r31, 0x01	; 1
  fa:	81 81       	ldd	r24, Z+1	; 0x01
  fc:	8f 93       	push	r24
  fe:	80 81       	ld	r24, Z
 100:	8f 93       	push	r24
 102:	e4 e1       	ldi	r30, 0x14	; 20
 104:	f1 e0       	ldi	r31, 0x01	; 1
 106:	81 81       	ldd	r24, Z+1	; 0x01
 108:	8f 93       	push	r24
 10a:	80 81       	ld	r24, Z
 10c:	8f 93       	push	r24
 10e:	ea e1       	ldi	r30, 0x1A	; 26
 110:	f1 e0       	ldi	r31, 0x01	; 1
 112:	81 81       	ldd	r24, Z+1	; 0x01
 114:	8f 93       	push	r24
 116:	80 81       	ld	r24, Z
 118:	8f 93       	push	r24
 11a:	80 e0       	ldi	r24, 0x00	; 0
 11c:	91 e0       	ldi	r25, 0x01	; 1
 11e:	9f 93       	push	r25
 120:	8f 93       	push	r24
 122:	86 e8       	ldi	r24, 0x86	; 134
 124:	91 e0       	ldi	r25, 0x01	; 1
 126:	9f 93       	push	r25
 128:	8f 93       	push	r24
 12a:	0e 94 11 03 	call	0x622	; 0x622 <_ZN9CTerminal6printfEPKcz>
 12e:	8d b7       	in	r24, 0x3d	; 61
 130:	9e b7       	in	r25, 0x3e	; 62
 132:	0e 96       	adiw	r24, 0x0e	; 14
 134:	0f b6       	in	r0, 0x3f	; 63
 136:	f8 94       	cli
 138:	9e bf       	out	0x3e, r25	; 62
 13a:	0f be       	out	0x3f, r0	; 63
 13c:	8d bf       	out	0x3d, r24	; 61
 13e:	08 95       	ret

00000140 <_Z10blink_idlev>:
 140:	80 91 12 01 	lds	r24, 0x0112
 144:	90 91 13 01 	lds	r25, 0x0113
 148:	89 2b       	or	r24, r25
 14a:	31 f0       	breq	.+12     	; 0x158 <_Z10blink_idlev+0x18>
 14c:	10 92 13 01 	sts	0x0113, r1
 150:	10 92 12 01 	sts	0x0112, r1
 154:	2d 9a       	sbi	0x05, 5	; 5
 156:	08 95       	ret
 158:	81 e0       	ldi	r24, 0x01	; 1
 15a:	90 e0       	ldi	r25, 0x00	; 0
 15c:	90 93 13 01 	sts	0x0113, r25
 160:	80 93 12 01 	sts	0x0112, r24
 164:	2d 98       	cbi	0x05, 5	; 5
 166:	08 95       	ret

00000168 <_Z8usr_mainv>:
 168:	84 e1       	ldi	r24, 0x14	; 20
 16a:	91 e0       	ldi	r25, 0x01	; 1
 16c:	0e 94 fc 03 	call	0x7f8	; 0x7f8 <_ZN9CAPDS99504initEv>
 170:	20 e0       	ldi	r18, 0x00	; 0
 172:	48 ec       	ldi	r20, 0xC8	; 200
 174:	50 e0       	ldi	r21, 0x00	; 0
 176:	60 ea       	ldi	r22, 0xA0	; 160
 178:	70 e0       	ldi	r23, 0x00	; 0
 17a:	8b ec       	ldi	r24, 0xCB	; 203
 17c:	91 e0       	ldi	r25, 0x01	; 1
 17e:	0e 94 e0 04 	call	0x9c0	; 0x9c0 <_ZN6CTimer8add_taskEPFvvEjb>
 182:	20 e0       	ldi	r18, 0x00	; 0
 184:	4a e0       	ldi	r20, 0x0A	; 10
 186:	50 e0       	ldi	r21, 0x00	; 0
 188:	6b e6       	ldi	r22, 0x6B	; 107
 18a:	70 e0       	ldi	r23, 0x00	; 0
 18c:	8b ec       	ldi	r24, 0xCB	; 203
 18e:	91 e0       	ldi	r25, 0x01	; 1
 190:	0e 94 e0 04 	call	0x9c0	; 0x9c0 <_ZN6CTimer8add_taskEPFvvEjb>
 194:	21 e0       	ldi	r18, 0x01	; 1
 196:	4c e2       	ldi	r20, 0x2C	; 44
 198:	51 e0       	ldi	r21, 0x01	; 1
 19a:	6f e6       	ldi	r22, 0x6F	; 111
 19c:	70 e0       	ldi	r23, 0x00	; 0
 19e:	8b ec       	ldi	r24, 0xCB	; 203
 1a0:	91 e0       	ldi	r25, 0x01	; 1
 1a2:	0e 94 e0 04 	call	0x9c0	; 0x9c0 <_ZN6CTimer8add_taskEPFvvEjb>
 1a6:	8b ec       	ldi	r24, 0xCB	; 203
 1a8:	91 e0       	ldi	r25, 0x01	; 1
 1aa:	0e 94 17 05 	call	0xa2e	; 0xa2e <_ZN6CTimer4mainEv>
 1ae:	fb cf       	rjmp	.-10     	; 0x1a6 <_Z8usr_mainv+0x3e>

000001b0 <_GLOBAL__sub_I_led>:
 1b0:	25 9a       	sbi	0x04, 5	; 4
 1b2:	84 e1       	ldi	r24, 0x14	; 20
 1b4:	91 e0       	ldi	r25, 0x01	; 1
 1b6:	0c 94 ef 03 	jmp	0x7de	; 0x7de <_ZN9CAPDS9950C1Ev>

000001ba <_GLOBAL__sub_D_led>:
 1ba:	84 e1       	ldi	r24, 0x14	; 20
 1bc:	91 e0       	ldi	r25, 0x01	; 1
 1be:	0c 94 fb 03 	jmp	0x7f6	; 0x7f6 <_ZN9CAPDS9950D1Ev>

000001c2 <_GLOBAL__sub_I_math>:
 1c2:	81 e0       	ldi	r24, 0x01	; 1
 1c4:	90 e0       	ldi	r25, 0x00	; 0
 1c6:	90 93 1f 01 	sts	0x011F, r25
 1ca:	80 93 1e 01 	sts	0x011E, r24
 1ce:	82 e0       	ldi	r24, 0x02	; 2
 1d0:	90 e0       	ldi	r25, 0x00	; 0
 1d2:	90 93 21 01 	sts	0x0121, r25
 1d6:	80 93 20 01 	sts	0x0120, r24
 1da:	08 95       	ret

000001dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
 1e4:	00 00       	nop
 1e6:	08 95       	ret

000001e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>:
 1e8:	1f 93       	push	r17
 1ea:	cf 93       	push	r28
 1ec:	df 93       	push	r29
 1ee:	16 2f       	mov	r17, r22
 1f0:	3c 98       	cbi	0x07, 4	; 7
 1f2:	3d 9a       	sbi	0x07, 5	; 7
 1f4:	0e 94 ee 00 	call	0x1dc	; 0x1dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 1f8:	d8 e0       	ldi	r29, 0x08	; 8
 1fa:	c0 e0       	ldi	r28, 0x00	; 0
 1fc:	cc 0f       	add	r28, r28
 1fe:	3d 98       	cbi	0x07, 5	; 7
 200:	0e 94 ee 00 	call	0x1dc	; 0x1dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 204:	34 99       	sbic	0x06, 4	; 6
 206:	c1 60       	ori	r28, 0x01	; 1
 208:	3d 9a       	sbi	0x07, 5	; 7
 20a:	0e 94 ee 00 	call	0x1dc	; 0x1dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 20e:	d1 50       	subi	r29, 0x01	; 1
 210:	a9 f7       	brne	.-22     	; 0x1fc <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x14>
 212:	11 23       	and	r17, r17
 214:	11 f0       	breq	.+4      	; 0x21a <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x32>
 216:	3c 9a       	sbi	0x07, 4	; 7
 218:	01 c0       	rjmp	.+2      	; 0x21c <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x34>
 21a:	3c 98       	cbi	0x07, 4	; 7
 21c:	0e 94 ee 00 	call	0x1dc	; 0x1dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 220:	3d 98       	cbi	0x07, 5	; 7
 222:	0e 94 ee 00 	call	0x1dc	; 0x1dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 226:	3d 9a       	sbi	0x07, 5	; 7
 228:	0e 94 ee 00 	call	0x1dc	; 0x1dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 22c:	3c 98       	cbi	0x07, 4	; 7
 22e:	0e 94 ee 00 	call	0x1dc	; 0x1dc <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 232:	8c 2f       	mov	r24, r28
 234:	df 91       	pop	r29
 236:	cf 91       	pop	r28
 238:	1f 91       	pop	r17
 23a:	08 95       	ret

0000023c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>:
	...
 244:	00 00       	nop
 246:	08 95       	ret

00000248 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.56>:
 248:	cf 93       	push	r28
 24a:	df 93       	push	r29
 24c:	d8 2f       	mov	r29, r24
 24e:	c8 e0       	ldi	r28, 0x08	; 8
 250:	3d 9a       	sbi	0x07, 5	; 7
 252:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 256:	d7 ff       	sbrs	r29, 7
 258:	02 c0       	rjmp	.+4      	; 0x25e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.56+0x16>
 25a:	3c 98       	cbi	0x07, 4	; 7
 25c:	01 c0       	rjmp	.+2      	; 0x260 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.56+0x18>
 25e:	3c 9a       	sbi	0x07, 4	; 7
 260:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 264:	3d 98       	cbi	0x07, 5	; 7
 266:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 26a:	dd 0f       	add	r29, r29
 26c:	c1 50       	subi	r28, 0x01	; 1
 26e:	81 f7       	brne	.-32     	; 0x250 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.56+0x8>
 270:	3d 9a       	sbi	0x07, 5	; 7
 272:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 276:	3c 98       	cbi	0x07, 4	; 7
 278:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 27c:	3d 98       	cbi	0x07, 5	; 7
 27e:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 282:	c6 b1       	in	r28, 0x06	; 6
 284:	3d 9a       	sbi	0x07, 5	; 7
 286:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 28a:	c2 95       	swap	r28
 28c:	c1 70       	andi	r28, 0x01	; 1
 28e:	81 e0       	ldi	r24, 0x01	; 1
 290:	8c 27       	eor	r24, r28
 292:	df 91       	pop	r29
 294:	cf 91       	pop	r28
 296:	08 95       	ret

00000298 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.57.constprop.71>:
 298:	1f 93       	push	r17
 29a:	cf 93       	push	r28
 29c:	df 93       	push	r29
 29e:	1f 92       	push	r1
 2a0:	cd b7       	in	r28, 0x3d	; 61
 2a2:	de b7       	in	r29, 0x3e	; 62
 2a4:	18 2f       	mov	r17, r24
 2a6:	3d 98       	cbi	0x07, 5	; 7
 2a8:	3c 98       	cbi	0x07, 4	; 7
 2aa:	3d 98       	cbi	0x07, 5	; 7
 2ac:	3c 9a       	sbi	0x07, 4	; 7
 2ae:	3d 9a       	sbi	0x07, 5	; 7
 2b0:	3c 98       	cbi	0x07, 4	; 7
 2b2:	69 83       	std	Y+1, r22	; 0x01
 2b4:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>
 2b8:	82 e7       	ldi	r24, 0x72	; 114
 2ba:	0e 94 24 01 	call	0x248	; 0x248 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.56>
 2be:	81 2f       	mov	r24, r17
 2c0:	0e 94 24 01 	call	0x248	; 0x248 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.56>
 2c4:	69 81       	ldd	r22, Y+1	; 0x01
 2c6:	86 2f       	mov	r24, r22
 2c8:	0e 94 24 01 	call	0x248	; 0x248 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.56>
 2cc:	3d 9a       	sbi	0x07, 5	; 7
 2ce:	3c 9a       	sbi	0x07, 4	; 7
 2d0:	3d 98       	cbi	0x07, 5	; 7
 2d2:	3c 9a       	sbi	0x07, 4	; 7
 2d4:	3d 98       	cbi	0x07, 5	; 7
 2d6:	3c 98       	cbi	0x07, 4	; 7
 2d8:	0f 90       	pop	r0
 2da:	df 91       	pop	r29
 2dc:	cf 91       	pop	r28
 2de:	1f 91       	pop	r17
 2e0:	0c 94 1e 01 	jmp	0x23c	; 0x23c <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.51>

000002e4 <_ZN8CRGB_I2C12set_high_sdaEv>:
 2e4:	50 98       	cbi	0x0a, 0	; 10
 2e6:	51 98       	cbi	0x0a, 1	; 10
 2e8:	52 98       	cbi	0x0a, 2	; 10
 2ea:	53 98       	cbi	0x0a, 3	; 10
 2ec:	54 98       	cbi	0x0a, 4	; 10
 2ee:	55 98       	cbi	0x0a, 5	; 10
 2f0:	56 98       	cbi	0x0a, 6	; 10
 2f2:	57 98       	cbi	0x0a, 7	; 10
 2f4:	8a b1       	in	r24, 0x0a	; 10
 2f6:	8a b9       	out	0x0a, r24	; 10
 2f8:	08 95       	ret

000002fa <_ZN8CRGB_I2C11set_low_sdaEv>:
 2fa:	50 9a       	sbi	0x0a, 0	; 10
 2fc:	51 9a       	sbi	0x0a, 1	; 10
 2fe:	52 9a       	sbi	0x0a, 2	; 10
 300:	53 9a       	sbi	0x0a, 3	; 10
 302:	54 9a       	sbi	0x0a, 4	; 10
 304:	55 9a       	sbi	0x0a, 5	; 10
 306:	56 9a       	sbi	0x0a, 6	; 10
 308:	57 9a       	sbi	0x0a, 7	; 10
 30a:	8a b1       	in	r24, 0x0a	; 10
 30c:	8a b9       	out	0x0a, r24	; 10
 30e:	08 95       	ret

00000310 <_ZN8CRGB_I2C5startEv>:
 310:	cf 93       	push	r28
 312:	df 93       	push	r29
 314:	ec 01       	movw	r28, r24
 316:	20 98       	cbi	0x04, 0	; 4
 318:	0e 94 72 01 	call	0x2e4	; 0x2e4 <_ZN8CRGB_I2C12set_high_sdaEv>
 31c:	20 98       	cbi	0x04, 0	; 4
 31e:	ce 01       	movw	r24, r28
 320:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN8CRGB_I2C11set_low_sdaEv>
 324:	20 9a       	sbi	0x04, 0	; 4
 326:	ce 01       	movw	r24, r28
 328:	df 91       	pop	r29
 32a:	cf 91       	pop	r28
 32c:	0c 94 72 01 	jmp	0x2e4	; 0x2e4 <_ZN8CRGB_I2C12set_high_sdaEv>

00000330 <_ZN8CRGB_I2C4stopEv>:
 330:	cf 93       	push	r28
 332:	df 93       	push	r29
 334:	ec 01       	movw	r28, r24
 336:	20 9a       	sbi	0x04, 0	; 4
 338:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN8CRGB_I2C11set_low_sdaEv>
 33c:	20 98       	cbi	0x04, 0	; 4
 33e:	ce 01       	movw	r24, r28
 340:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN8CRGB_I2C11set_low_sdaEv>
 344:	20 98       	cbi	0x04, 0	; 4
 346:	ce 01       	movw	r24, r28
 348:	df 91       	pop	r29
 34a:	cf 91       	pop	r28
 34c:	0c 94 72 01 	jmp	0x2e4	; 0x2e4 <_ZN8CRGB_I2C12set_high_sdaEv>

00000350 <_ZN8CRGB_I2C8read_sdaEv>:
 350:	29 b1       	in	r18, 0x09	; 9
 352:	21 70       	andi	r18, 0x01	; 1
 354:	82 2f       	mov	r24, r18
 356:	90 e0       	ldi	r25, 0x00	; 0
 358:	49 9b       	sbis	0x09, 1	; 9
 35a:	03 c0       	rjmp	.+6      	; 0x362 <_ZN8CRGB_I2C8read_sdaEv+0x12>
 35c:	22 60       	ori	r18, 0x02	; 2
 35e:	82 2f       	mov	r24, r18
 360:	90 e0       	ldi	r25, 0x00	; 0
 362:	4a 99       	sbic	0x09, 2	; 9
 364:	84 60       	ori	r24, 0x04	; 4
 366:	4b 99       	sbic	0x09, 3	; 9
 368:	88 60       	ori	r24, 0x08	; 8
 36a:	4c 99       	sbic	0x09, 4	; 9
 36c:	80 61       	ori	r24, 0x10	; 16
 36e:	4d 99       	sbic	0x09, 5	; 9
 370:	80 62       	ori	r24, 0x20	; 32
 372:	4e 99       	sbic	0x09, 6	; 9
 374:	80 64       	ori	r24, 0x40	; 64
 376:	4f 99       	sbic	0x09, 7	; 9
 378:	80 68       	ori	r24, 0x80	; 128
 37a:	29 b1       	in	r18, 0x09	; 9
 37c:	08 95       	ret

0000037e <_ZN8CRGB_I2C5delayEv>:
	...
 386:	08 95       	ret

00000388 <_ZN8CRGB_I2C5writeEh>:
 388:	0f 93       	push	r16
 38a:	1f 93       	push	r17
 38c:	cf 93       	push	r28
 38e:	df 93       	push	r29
 390:	ec 01       	movw	r28, r24
 392:	06 2f       	mov	r16, r22
 394:	18 e0       	ldi	r17, 0x08	; 8
 396:	20 9a       	sbi	0x04, 0	; 4
 398:	ce 01       	movw	r24, r28
 39a:	0e 94 bf 01 	call	0x37e	; 0x37e <_ZN8CRGB_I2C5delayEv>
 39e:	ce 01       	movw	r24, r28
 3a0:	07 ff       	sbrs	r16, 7
 3a2:	03 c0       	rjmp	.+6      	; 0x3aa <_ZN8CRGB_I2C5writeEh+0x22>
 3a4:	0e 94 72 01 	call	0x2e4	; 0x2e4 <_ZN8CRGB_I2C12set_high_sdaEv>
 3a8:	02 c0       	rjmp	.+4      	; 0x3ae <_ZN8CRGB_I2C5writeEh+0x26>
 3aa:	0e 94 7d 01 	call	0x2fa	; 0x2fa <_ZN8CRGB_I2C11set_low_sdaEv>
 3ae:	ce 01       	movw	r24, r28
 3b0:	0e 94 bf 01 	call	0x37e	; 0x37e <_ZN8CRGB_I2C5delayEv>
 3b4:	20 98       	cbi	0x04, 0	; 4
 3b6:	ce 01       	movw	r24, r28
 3b8:	0e 94 bf 01 	call	0x37e	; 0x37e <_ZN8CRGB_I2C5delayEv>
 3bc:	00 0f       	add	r16, r16
 3be:	11 50       	subi	r17, 0x01	; 1
 3c0:	51 f7       	brne	.-44     	; 0x396 <_ZN8CRGB_I2C5writeEh+0xe>
 3c2:	20 9a       	sbi	0x04, 0	; 4
 3c4:	ce 01       	movw	r24, r28
 3c6:	0e 94 bf 01 	call	0x37e	; 0x37e <_ZN8CRGB_I2C5delayEv>
 3ca:	ce 01       	movw	r24, r28
 3cc:	0e 94 72 01 	call	0x2e4	; 0x2e4 <_ZN8CRGB_I2C12set_high_sdaEv>
 3d0:	ce 01       	movw	r24, r28
 3d2:	0e 94 bf 01 	call	0x37e	; 0x37e <_ZN8CRGB_I2C5delayEv>
 3d6:	20 98       	cbi	0x04, 0	; 4
 3d8:	ce 01       	movw	r24, r28
 3da:	0e 94 bf 01 	call	0x37e	; 0x37e <_ZN8CRGB_I2C5delayEv>
 3de:	ce 01       	movw	r24, r28
 3e0:	0e 94 a8 01 	call	0x350	; 0x350 <_ZN8CRGB_I2C8read_sdaEv>
 3e4:	20 9a       	sbi	0x04, 0	; 4
 3e6:	ce 01       	movw	r24, r28
 3e8:	df 91       	pop	r29
 3ea:	cf 91       	pop	r28
 3ec:	1f 91       	pop	r17
 3ee:	0f 91       	pop	r16
 3f0:	0c 94 bf 01 	jmp	0x37e	; 0x37e <_ZN8CRGB_I2C5delayEv>

000003f4 <_ZN8CRGB_I2C4initEv>:
 3f4:	cf 93       	push	r28
 3f6:	df 93       	push	r29
 3f8:	ec 01       	movw	r28, r24
 3fa:	28 98       	cbi	0x05, 0	; 5
 3fc:	58 98       	cbi	0x0b, 0	; 11
 3fe:	59 98       	cbi	0x0b, 1	; 11
 400:	5a 98       	cbi	0x0b, 2	; 11
 402:	5b 98       	cbi	0x0b, 3	; 11
 404:	5c 98       	cbi	0x0b, 4	; 11
 406:	5d 98       	cbi	0x0b, 5	; 11
 408:	5e 98       	cbi	0x0b, 6	; 11
 40a:	5f 98       	cbi	0x0b, 7	; 11
 40c:	8b b1       	in	r24, 0x0b	; 11
 40e:	8b b9       	out	0x0b, r24	; 11
 410:	6f ef       	ldi	r22, 0xFF	; 255
 412:	81 e8       	ldi	r24, 0x81	; 129
 414:	0e 94 4c 01 	call	0x298	; 0x298 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.57.constprop.71>
 418:	6f ef       	ldi	r22, 0xFF	; 255
 41a:	83 e8       	ldi	r24, 0x83	; 131
 41c:	0e 94 4c 01 	call	0x298	; 0x298 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.57.constprop.71>
 420:	60 e0       	ldi	r22, 0x00	; 0
 422:	8d e8       	ldi	r24, 0x8D	; 141
 424:	0e 94 4c 01 	call	0x298	; 0x298 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.57.constprop.71>
 428:	63 e0       	ldi	r22, 0x03	; 3
 42a:	80 e8       	ldi	r24, 0x80	; 128
 42c:	0e 94 4c 01 	call	0x298	; 0x298 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.57.constprop.71>
 430:	ce 01       	movw	r24, r28
 432:	0e 94 88 01 	call	0x310	; 0x310 <_ZN8CRGB_I2C5startEv>
 436:	62 e7       	ldi	r22, 0x72	; 114
 438:	ce 01       	movw	r24, r28
 43a:	0e 94 c4 01 	call	0x388	; 0x388 <_ZN8CRGB_I2C5writeEh>
 43e:	62 e9       	ldi	r22, 0x92	; 146
 440:	ce 01       	movw	r24, r28
 442:	0e 94 c4 01 	call	0x388	; 0x388 <_ZN8CRGB_I2C5writeEh>
 446:	ce 01       	movw	r24, r28
 448:	0e 94 88 01 	call	0x310	; 0x310 <_ZN8CRGB_I2C5startEv>
 44c:	63 e7       	ldi	r22, 0x73	; 115
 44e:	ce 01       	movw	r24, r28
 450:	0e 94 c4 01 	call	0x388	; 0x388 <_ZN8CRGB_I2C5writeEh>
 454:	ce 01       	movw	r24, r28
 456:	0e 94 98 01 	call	0x330	; 0x330 <_ZN8CRGB_I2C4stopEv>
 45a:	80 e0       	ldi	r24, 0x00	; 0
 45c:	90 e0       	ldi	r25, 0x00	; 0
 45e:	df 91       	pop	r29
 460:	cf 91       	pop	r28
 462:	08 95       	ret

00000464 <_ZN8CRGB_I2CC1Ev>:
 464:	20 98       	cbi	0x04, 0	; 4
 466:	50 98       	cbi	0x0a, 0	; 10
 468:	51 98       	cbi	0x0a, 1	; 10
 46a:	52 98       	cbi	0x0a, 2	; 10
 46c:	53 98       	cbi	0x0a, 3	; 10
 46e:	54 98       	cbi	0x0a, 4	; 10
 470:	55 98       	cbi	0x0a, 5	; 10
 472:	56 98       	cbi	0x0a, 6	; 10
 474:	57 98       	cbi	0x0a, 7	; 10
 476:	2a b1       	in	r18, 0x0a	; 10
 478:	2a b9       	out	0x0a, r18	; 10
 47a:	0c 94 fa 01 	jmp	0x3f4	; 0x3f4 <_ZN8CRGB_I2C4initEv>

0000047e <_GLOBAL__sub_I_rgb_i2c>:
 47e:	82 e2       	ldi	r24, 0x22	; 34
 480:	91 e0       	ldi	r25, 0x01	; 1
 482:	0c 94 32 02 	jmp	0x464	; 0x464 <_ZN8CRGB_I2CC1Ev>

00000486 <_ZN9CTerminal4putsEPc>:
 486:	0f 93       	push	r16
 488:	1f 93       	push	r17
 48a:	cf 93       	push	r28
 48c:	df 93       	push	r29
 48e:	8c 01       	movw	r16, r24
 490:	eb 01       	movw	r28, r22
 492:	69 91       	ld	r22, Y+
 494:	66 23       	and	r22, r22
 496:	21 f0       	breq	.+8      	; 0x4a0 <_ZN9CTerminal4putsEPc+0x1a>
 498:	c8 01       	movw	r24, r16
 49a:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN6CUSART7putcharEc>
 49e:	f9 cf       	rjmp	.-14     	; 0x492 <_ZN9CTerminal4putsEPc+0xc>
 4a0:	df 91       	pop	r29
 4a2:	cf 91       	pop	r28
 4a4:	1f 91       	pop	r17
 4a6:	0f 91       	pop	r16
 4a8:	08 95       	ret

000004aa <_ZN9CTerminal4putiEi>:
 4aa:	df 92       	push	r13
 4ac:	ef 92       	push	r14
 4ae:	ff 92       	push	r15
 4b0:	0f 93       	push	r16
 4b2:	1f 93       	push	r17
 4b4:	cf 93       	push	r28
 4b6:	df 93       	push	r29
 4b8:	cd b7       	in	r28, 0x3d	; 61
 4ba:	de b7       	in	r29, 0x3e	; 62
 4bc:	2c 97       	sbiw	r28, 0x0c	; 12
 4be:	0f b6       	in	r0, 0x3f	; 63
 4c0:	f8 94       	cli
 4c2:	de bf       	out	0x3e, r29	; 62
 4c4:	0f be       	out	0x3f, r0	; 63
 4c6:	cd bf       	out	0x3d, r28	; 61
 4c8:	fc 01       	movw	r30, r24
 4ca:	9b 01       	movw	r18, r22
 4cc:	77 ff       	sbrs	r23, 7
 4ce:	06 c0       	rjmp	.+12     	; 0x4dc <_ZN9CTerminal4putiEi+0x32>
 4d0:	31 95       	neg	r19
 4d2:	21 95       	neg	r18
 4d4:	31 09       	sbc	r19, r1
 4d6:	dd 24       	eor	r13, r13
 4d8:	d3 94       	inc	r13
 4da:	01 c0       	rjmp	.+2      	; 0x4de <_ZN9CTerminal4putiEi+0x34>
 4dc:	d1 2c       	mov	r13, r1
 4de:	1c 86       	std	Y+12, r1	; 0x0c
 4e0:	4a e0       	ldi	r20, 0x0A	; 10
 4e2:	0a e0       	ldi	r16, 0x0A	; 10
 4e4:	10 e0       	ldi	r17, 0x00	; 0
 4e6:	ee 24       	eor	r14, r14
 4e8:	e3 94       	inc	r14
 4ea:	f1 2c       	mov	r15, r1
 4ec:	ec 0e       	add	r14, r28
 4ee:	fd 1e       	adc	r15, r29
 4f0:	e4 0e       	add	r14, r20
 4f2:	f1 1c       	adc	r15, r1
 4f4:	c9 01       	movw	r24, r18
 4f6:	b8 01       	movw	r22, r16
 4f8:	0e 94 bb 05 	call	0xb76	; 0xb76 <__divmodhi4>
 4fc:	80 5d       	subi	r24, 0xD0	; 208
 4fe:	d7 01       	movw	r26, r14
 500:	8c 93       	st	X, r24
 502:	9b 01       	movw	r18, r22
 504:	8f ef       	ldi	r24, 0xFF	; 255
 506:	84 0f       	add	r24, r20
 508:	61 15       	cp	r22, r1
 50a:	71 05       	cpc	r23, r1
 50c:	11 f0       	breq	.+4      	; 0x512 <_ZN9CTerminal4putiEi+0x68>
 50e:	48 2f       	mov	r20, r24
 510:	ea cf       	rjmp	.-44     	; 0x4e6 <_ZN9CTerminal4putiEi+0x3c>
 512:	dd 20       	and	r13, r13
 514:	49 f0       	breq	.+18     	; 0x528 <_ZN9CTerminal4putiEi+0x7e>
 516:	a1 e0       	ldi	r26, 0x01	; 1
 518:	b0 e0       	ldi	r27, 0x00	; 0
 51a:	ac 0f       	add	r26, r28
 51c:	bd 1f       	adc	r27, r29
 51e:	a8 0f       	add	r26, r24
 520:	b1 1d       	adc	r27, r1
 522:	9d e2       	ldi	r25, 0x2D	; 45
 524:	9c 93       	st	X, r25
 526:	48 2f       	mov	r20, r24
 528:	61 e0       	ldi	r22, 0x01	; 1
 52a:	70 e0       	ldi	r23, 0x00	; 0
 52c:	6c 0f       	add	r22, r28
 52e:	7d 1f       	adc	r23, r29
 530:	64 0f       	add	r22, r20
 532:	71 1d       	adc	r23, r1
 534:	cf 01       	movw	r24, r30
 536:	0e 94 43 02 	call	0x486	; 0x486 <_ZN9CTerminal4putsEPc>
 53a:	2c 96       	adiw	r28, 0x0c	; 12
 53c:	0f b6       	in	r0, 0x3f	; 63
 53e:	f8 94       	cli
 540:	de bf       	out	0x3e, r29	; 62
 542:	0f be       	out	0x3f, r0	; 63
 544:	cd bf       	out	0x3d, r28	; 61
 546:	df 91       	pop	r29
 548:	cf 91       	pop	r28
 54a:	1f 91       	pop	r17
 54c:	0f 91       	pop	r16
 54e:	ff 90       	pop	r15
 550:	ef 90       	pop	r14
 552:	df 90       	pop	r13
 554:	08 95       	ret

00000556 <_ZN9CTerminal5putuiEj>:
 556:	0f 93       	push	r16
 558:	1f 93       	push	r17
 55a:	cf 93       	push	r28
 55c:	df 93       	push	r29
 55e:	cd b7       	in	r28, 0x3d	; 61
 560:	de b7       	in	r29, 0x3e	; 62
 562:	2c 97       	sbiw	r28, 0x0c	; 12
 564:	0f b6       	in	r0, 0x3f	; 63
 566:	f8 94       	cli
 568:	de bf       	out	0x3e, r29	; 62
 56a:	0f be       	out	0x3f, r0	; 63
 56c:	cd bf       	out	0x3d, r28	; 61
 56e:	8c 01       	movw	r16, r24
 570:	cb 01       	movw	r24, r22
 572:	1c 86       	std	Y+12, r1	; 0x0c
 574:	4a e0       	ldi	r20, 0x0A	; 10
 576:	2a e0       	ldi	r18, 0x0A	; 10
 578:	30 e0       	ldi	r19, 0x00	; 0
 57a:	e1 e0       	ldi	r30, 0x01	; 1
 57c:	f0 e0       	ldi	r31, 0x00	; 0
 57e:	ec 0f       	add	r30, r28
 580:	fd 1f       	adc	r31, r29
 582:	e4 0f       	add	r30, r20
 584:	f1 1d       	adc	r31, r1
 586:	b9 01       	movw	r22, r18
 588:	0e 94 a7 05 	call	0xb4e	; 0xb4e <__udivmodhi4>
 58c:	80 5d       	subi	r24, 0xD0	; 208
 58e:	80 83       	st	Z, r24
 590:	cb 01       	movw	r24, r22
 592:	41 50       	subi	r20, 0x01	; 1
 594:	00 97       	sbiw	r24, 0x00	; 0
 596:	89 f7       	brne	.-30     	; 0x57a <_ZN9CTerminal5putuiEj+0x24>
 598:	bf 01       	movw	r22, r30
 59a:	c8 01       	movw	r24, r16
 59c:	0e 94 43 02 	call	0x486	; 0x486 <_ZN9CTerminal4putsEPc>
 5a0:	2c 96       	adiw	r28, 0x0c	; 12
 5a2:	0f b6       	in	r0, 0x3f	; 63
 5a4:	f8 94       	cli
 5a6:	de bf       	out	0x3e, r29	; 62
 5a8:	0f be       	out	0x3f, r0	; 63
 5aa:	cd bf       	out	0x3d, r28	; 61
 5ac:	df 91       	pop	r29
 5ae:	cf 91       	pop	r28
 5b0:	1f 91       	pop	r17
 5b2:	0f 91       	pop	r16
 5b4:	08 95       	ret

000005b6 <_ZN9CTerminal4putxEj>:
 5b6:	cf 93       	push	r28
 5b8:	df 93       	push	r29
 5ba:	cd b7       	in	r28, 0x3d	; 61
 5bc:	de b7       	in	r29, 0x3e	; 62
 5be:	2c 97       	sbiw	r28, 0x0c	; 12
 5c0:	0f b6       	in	r0, 0x3f	; 63
 5c2:	f8 94       	cli
 5c4:	de bf       	out	0x3e, r29	; 62
 5c6:	0f be       	out	0x3f, r0	; 63
 5c8:	cd bf       	out	0x3d, r28	; 61
 5ca:	1c 86       	std	Y+12, r1	; 0x0c
 5cc:	4a e0       	ldi	r20, 0x0A	; 10
 5ce:	56 2f       	mov	r21, r22
 5d0:	5f 70       	andi	r21, 0x0F	; 15
 5d2:	24 2f       	mov	r18, r20
 5d4:	30 e0       	ldi	r19, 0x00	; 0
 5d6:	e1 e0       	ldi	r30, 0x01	; 1
 5d8:	f0 e0       	ldi	r31, 0x00	; 0
 5da:	ec 0f       	add	r30, r28
 5dc:	fd 1f       	adc	r31, r29
 5de:	e2 0f       	add	r30, r18
 5e0:	f3 1f       	adc	r31, r19
 5e2:	5a 30       	cpi	r21, 0x0A	; 10
 5e4:	14 f4       	brge	.+4      	; 0x5ea <_ZN9CTerminal4putxEj+0x34>
 5e6:	50 5d       	subi	r21, 0xD0	; 208
 5e8:	01 c0       	rjmp	.+2      	; 0x5ec <_ZN9CTerminal4putxEj+0x36>
 5ea:	59 5a       	subi	r21, 0xA9	; 169
 5ec:	50 83       	st	Z, r21
 5ee:	54 e0       	ldi	r21, 0x04	; 4
 5f0:	76 95       	lsr	r23
 5f2:	67 95       	ror	r22
 5f4:	5a 95       	dec	r21
 5f6:	e1 f7       	brne	.-8      	; 0x5f0 <_ZN9CTerminal4putxEj+0x3a>
 5f8:	41 50       	subi	r20, 0x01	; 1
 5fa:	61 15       	cp	r22, r1
 5fc:	71 05       	cpc	r23, r1
 5fe:	39 f7       	brne	.-50     	; 0x5ce <_ZN9CTerminal4putxEj+0x18>
 600:	61 e0       	ldi	r22, 0x01	; 1
 602:	70 e0       	ldi	r23, 0x00	; 0
 604:	6c 0f       	add	r22, r28
 606:	7d 1f       	adc	r23, r29
 608:	62 0f       	add	r22, r18
 60a:	73 1f       	adc	r23, r19
 60c:	0e 94 43 02 	call	0x486	; 0x486 <_ZN9CTerminal4putsEPc>
 610:	2c 96       	adiw	r28, 0x0c	; 12
 612:	0f b6       	in	r0, 0x3f	; 63
 614:	f8 94       	cli
 616:	de bf       	out	0x3e, r29	; 62
 618:	0f be       	out	0x3f, r0	; 63
 61a:	cd bf       	out	0x3d, r28	; 61
 61c:	df 91       	pop	r29
 61e:	cf 91       	pop	r28
 620:	08 95       	ret

00000622 <_ZN9CTerminal6printfEPKcz>:
 622:	af 92       	push	r10
 624:	bf 92       	push	r11
 626:	cf 92       	push	r12
 628:	df 92       	push	r13
 62a:	ef 92       	push	r14
 62c:	ff 92       	push	r15
 62e:	0f 93       	push	r16
 630:	1f 93       	push	r17
 632:	cf 93       	push	r28
 634:	df 93       	push	r29
 636:	cd b7       	in	r28, 0x3d	; 61
 638:	de b7       	in	r29, 0x3e	; 62
 63a:	ed 84       	ldd	r14, Y+13	; 0x0d
 63c:	fe 84       	ldd	r15, Y+14	; 0x0e
 63e:	8e 01       	movw	r16, r28
 640:	0f 5e       	subi	r16, 0xEF	; 239
 642:	1f 4f       	sbci	r17, 0xFF	; 255
 644:	c1 2c       	mov	r12, r1
 646:	d1 2c       	mov	r13, r1
 648:	ef 85       	ldd	r30, Y+15	; 0x0f
 64a:	f8 89       	ldd	r31, Y+16	; 0x10
 64c:	ec 0d       	add	r30, r12
 64e:	fd 1d       	adc	r31, r13
 650:	60 81       	ld	r22, Z
 652:	66 23       	and	r22, r22
 654:	09 f4       	brne	.+2      	; 0x658 <_ZN9CTerminal6printfEPKcz+0x36>
 656:	58 c0       	rjmp	.+176    	; 0x708 <_ZN9CTerminal6printfEPKcz+0xe6>
 658:	65 32       	cpi	r22, 0x25	; 37
 65a:	39 f0       	breq	.+14     	; 0x66a <_ZN9CTerminal6printfEPKcz+0x48>
 65c:	c7 01       	movw	r24, r14
 65e:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN6CUSART7putcharEc>
 662:	8f ef       	ldi	r24, 0xFF	; 255
 664:	c8 1a       	sub	r12, r24
 666:	d8 0a       	sbc	r13, r24
 668:	ef cf       	rjmp	.-34     	; 0x648 <_ZN9CTerminal6printfEPKcz+0x26>
 66a:	81 81       	ldd	r24, Z+1	; 0x01
 66c:	89 36       	cpi	r24, 0x69	; 105
 66e:	11 f1       	breq	.+68     	; 0x6b4 <_ZN9CTerminal6printfEPKcz+0x92>
 670:	84 f4       	brge	.+32     	; 0x692 <_ZN9CTerminal6printfEPKcz+0x70>
 672:	85 32       	cpi	r24, 0x25	; 37
 674:	09 f4       	brne	.+2      	; 0x678 <_ZN9CTerminal6printfEPKcz+0x56>
 676:	40 c0       	rjmp	.+128    	; 0x6f8 <_ZN9CTerminal6printfEPKcz+0xd6>
 678:	83 36       	cpi	r24, 0x63	; 99
 67a:	09 f0       	breq	.+2      	; 0x67e <_ZN9CTerminal6printfEPKcz+0x5c>
 67c:	41 c0       	rjmp	.+130    	; 0x700 <_ZN9CTerminal6printfEPKcz+0xde>
 67e:	58 01       	movw	r10, r16
 680:	f2 e0       	ldi	r31, 0x02	; 2
 682:	af 0e       	add	r10, r31
 684:	b1 1c       	adc	r11, r1
 686:	f8 01       	movw	r30, r16
 688:	60 81       	ld	r22, Z
 68a:	c7 01       	movw	r24, r14
 68c:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN6CUSART7putcharEc>
 690:	26 c0       	rjmp	.+76     	; 0x6de <_ZN9CTerminal6printfEPKcz+0xbc>
 692:	85 37       	cpi	r24, 0x75	; 117
 694:	d1 f0       	breq	.+52     	; 0x6ca <_ZN9CTerminal6printfEPKcz+0xa8>
 696:	88 37       	cpi	r24, 0x78	; 120
 698:	21 f1       	breq	.+72     	; 0x6e2 <_ZN9CTerminal6printfEPKcz+0xc0>
 69a:	83 37       	cpi	r24, 0x73	; 115
 69c:	89 f5       	brne	.+98     	; 0x700 <_ZN9CTerminal6printfEPKcz+0xde>
 69e:	58 01       	movw	r10, r16
 6a0:	f2 e0       	ldi	r31, 0x02	; 2
 6a2:	af 0e       	add	r10, r31
 6a4:	b1 1c       	adc	r11, r1
 6a6:	f8 01       	movw	r30, r16
 6a8:	60 81       	ld	r22, Z
 6aa:	71 81       	ldd	r23, Z+1	; 0x01
 6ac:	c7 01       	movw	r24, r14
 6ae:	0e 94 43 02 	call	0x486	; 0x486 <_ZN9CTerminal4putsEPc>
 6b2:	15 c0       	rjmp	.+42     	; 0x6de <_ZN9CTerminal6printfEPKcz+0xbc>
 6b4:	58 01       	movw	r10, r16
 6b6:	92 e0       	ldi	r25, 0x02	; 2
 6b8:	a9 0e       	add	r10, r25
 6ba:	b1 1c       	adc	r11, r1
 6bc:	f8 01       	movw	r30, r16
 6be:	60 81       	ld	r22, Z
 6c0:	71 81       	ldd	r23, Z+1	; 0x01
 6c2:	c7 01       	movw	r24, r14
 6c4:	0e 94 55 02 	call	0x4aa	; 0x4aa <_ZN9CTerminal4putiEi>
 6c8:	0a c0       	rjmp	.+20     	; 0x6de <_ZN9CTerminal6printfEPKcz+0xbc>
 6ca:	58 01       	movw	r10, r16
 6cc:	f2 e0       	ldi	r31, 0x02	; 2
 6ce:	af 0e       	add	r10, r31
 6d0:	b1 1c       	adc	r11, r1
 6d2:	f8 01       	movw	r30, r16
 6d4:	60 81       	ld	r22, Z
 6d6:	71 81       	ldd	r23, Z+1	; 0x01
 6d8:	c7 01       	movw	r24, r14
 6da:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN9CTerminal5putuiEj>
 6de:	85 01       	movw	r16, r10
 6e0:	0f c0       	rjmp	.+30     	; 0x700 <_ZN9CTerminal6printfEPKcz+0xde>
 6e2:	58 01       	movw	r10, r16
 6e4:	f2 e0       	ldi	r31, 0x02	; 2
 6e6:	af 0e       	add	r10, r31
 6e8:	b1 1c       	adc	r11, r1
 6ea:	f8 01       	movw	r30, r16
 6ec:	60 81       	ld	r22, Z
 6ee:	71 81       	ldd	r23, Z+1	; 0x01
 6f0:	c7 01       	movw	r24, r14
 6f2:	0e 94 db 02 	call	0x5b6	; 0x5b6 <_ZN9CTerminal4putxEj>
 6f6:	f3 cf       	rjmp	.-26     	; 0x6de <_ZN9CTerminal6printfEPKcz+0xbc>
 6f8:	65 e2       	ldi	r22, 0x25	; 37
 6fa:	c7 01       	movw	r24, r14
 6fc:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN6CUSART7putcharEc>
 700:	f2 e0       	ldi	r31, 0x02	; 2
 702:	cf 0e       	add	r12, r31
 704:	d1 1c       	adc	r13, r1
 706:	a0 cf       	rjmp	.-192    	; 0x648 <_ZN9CTerminal6printfEPKcz+0x26>
 708:	df 91       	pop	r29
 70a:	cf 91       	pop	r28
 70c:	1f 91       	pop	r17
 70e:	0f 91       	pop	r16
 710:	ff 90       	pop	r15
 712:	ef 90       	pop	r14
 714:	df 90       	pop	r13
 716:	cf 90       	pop	r12
 718:	bf 90       	pop	r11
 71a:	af 90       	pop	r10
 71c:	08 95       	ret

0000071e <_GLOBAL__sub_I_terminal>:
 71e:	86 e8       	ldi	r24, 0x86	; 134
 720:	91 e0       	ldi	r25, 0x01	; 1
 722:	0c 94 9a 04 	jmp	0x934	; 0x934 <_ZN6CUSARTC1Ev>

00000726 <_GLOBAL__sub_D_terminal>:
 726:	86 e8       	ldi	r24, 0x86	; 134
 728:	91 e0       	ldi	r25, 0x01	; 1
 72a:	0c 94 aa 04 	jmp	0x954	; 0x954 <_ZN6CUSARTD1Ev>

0000072e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
 736:	00 00       	nop
 738:	08 95       	ret

0000073a <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>:
 73a:	3d 9a       	sbi	0x07, 5	; 7
 73c:	3c 9a       	sbi	0x07, 4	; 7
 73e:	3d 98       	cbi	0x07, 5	; 7
 740:	3c 9a       	sbi	0x07, 4	; 7
 742:	3d 98       	cbi	0x07, 5	; 7
 744:	3c 98       	cbi	0x07, 4	; 7
 746:	0c 94 97 03 	jmp	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

0000074a <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>:
 74a:	3d 98       	cbi	0x07, 5	; 7
 74c:	3c 98       	cbi	0x07, 4	; 7
 74e:	3d 98       	cbi	0x07, 5	; 7
 750:	3c 9a       	sbi	0x07, 4	; 7
 752:	3d 9a       	sbi	0x07, 5	; 7
 754:	3c 98       	cbi	0x07, 4	; 7
 756:	0c 94 97 03 	jmp	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

0000075a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>:
 75a:	cf 93       	push	r28
 75c:	df 93       	push	r29
 75e:	d8 2f       	mov	r29, r24
 760:	c8 e0       	ldi	r28, 0x08	; 8
 762:	3d 9a       	sbi	0x07, 5	; 7
 764:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 768:	d7 ff       	sbrs	r29, 7
 76a:	02 c0       	rjmp	.+4      	; 0x770 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x16>
 76c:	3c 98       	cbi	0x07, 4	; 7
 76e:	01 c0       	rjmp	.+2      	; 0x772 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x18>
 770:	3c 9a       	sbi	0x07, 4	; 7
 772:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 776:	3d 98       	cbi	0x07, 5	; 7
 778:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 77c:	dd 0f       	add	r29, r29
 77e:	c1 50       	subi	r28, 0x01	; 1
 780:	81 f7       	brne	.-32     	; 0x762 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x8>
 782:	3d 9a       	sbi	0x07, 5	; 7
 784:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 788:	3c 98       	cbi	0x07, 4	; 7
 78a:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 78e:	3d 98       	cbi	0x07, 5	; 7
 790:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 794:	c6 b1       	in	r28, 0x06	; 6
 796:	3d 9a       	sbi	0x07, 5	; 7
 798:	0e 94 97 03 	call	0x72e	; 0x72e <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 79c:	c2 95       	swap	r28
 79e:	c1 70       	andi	r28, 0x01	; 1
 7a0:	81 e0       	ldi	r24, 0x01	; 1
 7a2:	8c 27       	eor	r24, r28
 7a4:	df 91       	pop	r29
 7a6:	cf 91       	pop	r28
 7a8:	08 95       	ret

000007aa <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>:
 7aa:	1f 93       	push	r17
 7ac:	cf 93       	push	r28
 7ae:	df 93       	push	r29
 7b0:	1f 92       	push	r1
 7b2:	cd b7       	in	r28, 0x3d	; 61
 7b4:	de b7       	in	r29, 0x3e	; 62
 7b6:	18 2f       	mov	r17, r24
 7b8:	69 83       	std	Y+1, r22	; 0x01
 7ba:	0e 94 a5 03 	call	0x74a	; 0x74a <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 7be:	82 e7       	ldi	r24, 0x72	; 114
 7c0:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 7c4:	81 2f       	mov	r24, r17
 7c6:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 7ca:	69 81       	ldd	r22, Y+1	; 0x01
 7cc:	86 2f       	mov	r24, r22
 7ce:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 7d2:	0f 90       	pop	r0
 7d4:	df 91       	pop	r29
 7d6:	cf 91       	pop	r28
 7d8:	1f 91       	pop	r17
 7da:	0c 94 9d 03 	jmp	0x73a	; 0x73a <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>

000007de <_ZN9CAPDS9950C1Ev>:
 7de:	fc 01       	movw	r30, r24
 7e0:	11 82       	std	Z+1, r1	; 0x01
 7e2:	10 82       	st	Z, r1
 7e4:	13 82       	std	Z+3, r1	; 0x03
 7e6:	12 82       	std	Z+2, r1	; 0x02
 7e8:	15 82       	std	Z+5, r1	; 0x05
 7ea:	14 82       	std	Z+4, r1	; 0x04
 7ec:	17 82       	std	Z+7, r1	; 0x07
 7ee:	16 82       	std	Z+6, r1	; 0x06
 7f0:	11 86       	std	Z+9, r1	; 0x09
 7f2:	10 86       	std	Z+8, r1	; 0x08
 7f4:	08 95       	ret

000007f6 <_ZN9CAPDS9950D1Ev>:
 7f6:	08 95       	ret

000007f8 <_ZN9CAPDS99504initEv>:
 7f8:	cf 93       	push	r28
 7fa:	df 93       	push	r29
 7fc:	1f 92       	push	r1
 7fe:	cd b7       	in	r28, 0x3d	; 61
 800:	de b7       	in	r29, 0x3e	; 62
 802:	6f ef       	ldi	r22, 0xFF	; 255
 804:	81 e8       	ldi	r24, 0x81	; 129
 806:	0e 94 d5 03 	call	0x7aa	; 0x7aa <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 80a:	6f ef       	ldi	r22, 0xFF	; 255
 80c:	83 e8       	ldi	r24, 0x83	; 131
 80e:	0e 94 d5 03 	call	0x7aa	; 0x7aa <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 812:	60 e0       	ldi	r22, 0x00	; 0
 814:	8d e8       	ldi	r24, 0x8D	; 141
 816:	0e 94 d5 03 	call	0x7aa	; 0x7aa <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 81a:	63 e0       	ldi	r22, 0x03	; 3
 81c:	80 e8       	ldi	r24, 0x80	; 128
 81e:	0e 94 d5 03 	call	0x7aa	; 0x7aa <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 822:	63 e2       	ldi	r22, 0x23	; 35
 824:	8f e8       	ldi	r24, 0x8F	; 143
 826:	0e 94 d5 03 	call	0x7aa	; 0x7aa <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 82a:	0e 94 a5 03 	call	0x74a	; 0x74a <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 82e:	82 e7       	ldi	r24, 0x72	; 114
 830:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 834:	82 e9       	ldi	r24, 0x92	; 146
 836:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 83a:	0e 94 a5 03 	call	0x74a	; 0x74a <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 83e:	83 e7       	ldi	r24, 0x73	; 115
 840:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 844:	60 e0       	ldi	r22, 0x00	; 0
 846:	8c ec       	ldi	r24, 0xCC	; 204
 848:	91 e0       	ldi	r25, 0x01	; 1
 84a:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 84e:	89 83       	std	Y+1, r24	; 0x01
 850:	0e 94 9d 03 	call	0x73a	; 0x73a <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
 854:	91 e0       	ldi	r25, 0x01	; 1
 856:	89 81       	ldd	r24, Y+1	; 0x01
 858:	89 36       	cpi	r24, 0x69	; 105
 85a:	09 f4       	brne	.+2      	; 0x85e <_ZN9CAPDS99504initEv+0x66>
 85c:	90 e0       	ldi	r25, 0x00	; 0
 85e:	89 2f       	mov	r24, r25
 860:	81 95       	neg	r24
 862:	0f 90       	pop	r0
 864:	df 91       	pop	r29
 866:	cf 91       	pop	r28
 868:	08 95       	ret

0000086a <_ZN9CAPDS99504readEv>:
 86a:	0f 93       	push	r16
 86c:	1f 93       	push	r17
 86e:	cf 93       	push	r28
 870:	df 93       	push	r29
 872:	ec 01       	movw	r28, r24
 874:	0e 94 a5 03 	call	0x74a	; 0x74a <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 878:	82 e7       	ldi	r24, 0x72	; 114
 87a:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 87e:	84 eb       	ldi	r24, 0xB4	; 180
 880:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 884:	0e 94 9d 03 	call	0x73a	; 0x73a <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
 888:	0e 94 a5 03 	call	0x74a	; 0x74a <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 88c:	83 e7       	ldi	r24, 0x73	; 115
 88e:	0e 94 ad 03 	call	0x75a	; 0x75a <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 892:	61 e0       	ldi	r22, 0x01	; 1
 894:	8c ec       	ldi	r24, 0xCC	; 204
 896:	91 e0       	ldi	r25, 0x01	; 1
 898:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 89c:	08 2f       	mov	r16, r24
 89e:	10 e0       	ldi	r17, 0x00	; 0
 8a0:	61 e0       	ldi	r22, 0x01	; 1
 8a2:	8c ec       	ldi	r24, 0xCC	; 204
 8a4:	91 e0       	ldi	r25, 0x01	; 1
 8a6:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 8aa:	18 2b       	or	r17, r24
 8ac:	1f 83       	std	Y+7, r17	; 0x07
 8ae:	0e 83       	std	Y+6, r16	; 0x06
 8b0:	61 e0       	ldi	r22, 0x01	; 1
 8b2:	8c ec       	ldi	r24, 0xCC	; 204
 8b4:	91 e0       	ldi	r25, 0x01	; 1
 8b6:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 8ba:	08 2f       	mov	r16, r24
 8bc:	10 e0       	ldi	r17, 0x00	; 0
 8be:	61 e0       	ldi	r22, 0x01	; 1
 8c0:	8c ec       	ldi	r24, 0xCC	; 204
 8c2:	91 e0       	ldi	r25, 0x01	; 1
 8c4:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 8c8:	18 2b       	or	r17, r24
 8ca:	19 83       	std	Y+1, r17	; 0x01
 8cc:	08 83       	st	Y, r16
 8ce:	61 e0       	ldi	r22, 0x01	; 1
 8d0:	8c ec       	ldi	r24, 0xCC	; 204
 8d2:	91 e0       	ldi	r25, 0x01	; 1
 8d4:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 8d8:	08 2f       	mov	r16, r24
 8da:	10 e0       	ldi	r17, 0x00	; 0
 8dc:	61 e0       	ldi	r22, 0x01	; 1
 8de:	8c ec       	ldi	r24, 0xCC	; 204
 8e0:	91 e0       	ldi	r25, 0x01	; 1
 8e2:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 8e6:	18 2b       	or	r17, r24
 8e8:	1b 83       	std	Y+3, r17	; 0x03
 8ea:	0a 83       	std	Y+2, r16	; 0x02
 8ec:	61 e0       	ldi	r22, 0x01	; 1
 8ee:	8c ec       	ldi	r24, 0xCC	; 204
 8f0:	91 e0       	ldi	r25, 0x01	; 1
 8f2:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 8f6:	08 2f       	mov	r16, r24
 8f8:	10 e0       	ldi	r17, 0x00	; 0
 8fa:	61 e0       	ldi	r22, 0x01	; 1
 8fc:	8c ec       	ldi	r24, 0xCC	; 204
 8fe:	91 e0       	ldi	r25, 0x01	; 1
 900:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 904:	18 2b       	or	r17, r24
 906:	1d 83       	std	Y+5, r17	; 0x05
 908:	0c 83       	std	Y+4, r16	; 0x04
 90a:	61 e0       	ldi	r22, 0x01	; 1
 90c:	8c ec       	ldi	r24, 0xCC	; 204
 90e:	91 e0       	ldi	r25, 0x01	; 1
 910:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 914:	08 2f       	mov	r16, r24
 916:	10 e0       	ldi	r17, 0x00	; 0
 918:	60 e0       	ldi	r22, 0x00	; 0
 91a:	8c ec       	ldi	r24, 0xCC	; 204
 91c:	91 e0       	ldi	r25, 0x01	; 1
 91e:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 922:	18 2b       	or	r17, r24
 924:	19 87       	std	Y+9, r17	; 0x09
 926:	08 87       	std	Y+8, r16	; 0x08
 928:	df 91       	pop	r29
 92a:	cf 91       	pop	r28
 92c:	1f 91       	pop	r17
 92e:	0f 91       	pop	r16
 930:	0c 94 9d 03 	jmp	0x73a	; 0x73a <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>

00000934 <_ZN6CUSARTC1Ev>:
 934:	10 92 c5 00 	sts	0x00C5, r1
 938:	87 e6       	ldi	r24, 0x67	; 103
 93a:	80 93 c4 00 	sts	0x00C4, r24
 93e:	e2 ec       	ldi	r30, 0xC2	; 194
 940:	f0 e0       	ldi	r31, 0x00	; 0
 942:	80 81       	ld	r24, Z
 944:	86 60       	ori	r24, 0x06	; 6
 946:	80 83       	st	Z, r24
 948:	e1 ec       	ldi	r30, 0xC1	; 193
 94a:	f0 e0       	ldi	r31, 0x00	; 0
 94c:	80 81       	ld	r24, Z
 94e:	88 61       	ori	r24, 0x18	; 24
 950:	80 83       	st	Z, r24
 952:	08 95       	ret

00000954 <_ZN6CUSARTD1Ev>:
 954:	08 95       	ret

00000956 <_ZN6CUSART7putcharEc>:
 956:	60 93 c6 00 	sts	0x00C6, r22
 95a:	80 91 c0 00 	lds	r24, 0x00C0
 95e:	85 fd       	sbrc	r24, 5
 960:	02 c0       	rjmp	.+4      	; 0x966 <_ZN6CUSART7putcharEc+0x10>
 962:	00 00       	nop
 964:	fa cf       	rjmp	.-12     	; 0x95a <_ZN6CUSART7putcharEc+0x4>
 966:	08 95       	ret

00000968 <_ZN6CTimerC1Ev>:
 968:	80 e0       	ldi	r24, 0x00	; 0
 96a:	90 e0       	ldi	r25, 0x00	; 0
 96c:	fc 01       	movw	r30, r24
 96e:	23 e0       	ldi	r18, 0x03	; 3
 970:	ee 0f       	add	r30, r30
 972:	ff 1f       	adc	r31, r31
 974:	2a 95       	dec	r18
 976:	e1 f7       	brne	.-8      	; 0x970 <_ZN6CTimerC1Ev+0x8>
 978:	e9 57       	subi	r30, 0x79	; 121
 97a:	fe 4f       	sbci	r31, 0xFE	; 254
 97c:	11 82       	std	Z+1, r1	; 0x01
 97e:	10 82       	st	Z, r1
 980:	13 82       	std	Z+3, r1	; 0x03
 982:	12 82       	std	Z+2, r1	; 0x02
 984:	15 82       	std	Z+5, r1	; 0x05
 986:	14 82       	std	Z+4, r1	; 0x04
 988:	16 82       	std	Z+6, r1	; 0x06
 98a:	17 82       	std	Z+7, r1	; 0x07
 98c:	01 96       	adiw	r24, 0x01	; 1
 98e:	88 30       	cpi	r24, 0x08	; 8
 990:	91 05       	cpc	r25, r1
 992:	61 f7       	brne	.-40     	; 0x96c <_ZN6CTimerC1Ev+0x4>
 994:	10 92 c7 01 	sts	0x01C7, r1
 998:	10 92 c8 01 	sts	0x01C8, r1
 99c:	10 92 c9 01 	sts	0x01C9, r1
 9a0:	10 92 ca 01 	sts	0x01CA, r1
 9a4:	84 b5       	in	r24, 0x24	; 36
 9a6:	82 60       	ori	r24, 0x02	; 2
 9a8:	84 bd       	out	0x24, r24	; 36
 9aa:	89 ef       	ldi	r24, 0xF9	; 249
 9ac:	87 bd       	out	0x27, r24	; 39
 9ae:	83 e0       	ldi	r24, 0x03	; 3
 9b0:	85 bd       	out	0x25, r24	; 37
 9b2:	80 91 6e 00 	lds	r24, 0x006E
 9b6:	82 60       	ori	r24, 0x02	; 2
 9b8:	80 93 6e 00 	sts	0x006E, r24
 9bc:	78 94       	sei
 9be:	08 95       	ret

000009c0 <_ZN6CTimer8add_taskEPFvvEjb>:
 9c0:	80 e0       	ldi	r24, 0x00	; 0
 9c2:	90 e0       	ldi	r25, 0x00	; 0
 9c4:	ef ef       	ldi	r30, 0xFF	; 255
 9c6:	dc 01       	movw	r26, r24
 9c8:	33 e0       	ldi	r19, 0x03	; 3
 9ca:	aa 0f       	add	r26, r26
 9cc:	bb 1f       	adc	r27, r27
 9ce:	3a 95       	dec	r19
 9d0:	e1 f7       	brne	.-8      	; 0x9ca <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 9d2:	a9 57       	subi	r26, 0x79	; 121
 9d4:	be 4f       	sbci	r27, 0xFE	; 254
 9d6:	0d 90       	ld	r0, X+
 9d8:	bc 91       	ld	r27, X
 9da:	a0 2d       	mov	r26, r0
 9dc:	ab 2b       	or	r26, r27
 9de:	09 f4       	brne	.+2      	; 0x9e2 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 9e0:	e8 2f       	mov	r30, r24
 9e2:	01 96       	adiw	r24, 0x01	; 1
 9e4:	88 30       	cpi	r24, 0x08	; 8
 9e6:	91 05       	cpc	r25, r1
 9e8:	71 f7       	brne	.-36     	; 0x9c6 <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 9ea:	ef 3f       	cpi	r30, 0xFF	; 255
 9ec:	71 f0       	breq	.+28     	; 0xa0a <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 9ee:	88 e0       	ldi	r24, 0x08	; 8
 9f0:	e8 02       	muls	r30, r24
 9f2:	f0 01       	movw	r30, r0
 9f4:	11 24       	eor	r1, r1
 9f6:	e9 57       	subi	r30, 0x79	; 121
 9f8:	fe 4f       	sbci	r31, 0xFE	; 254
 9fa:	71 83       	std	Z+1, r23	; 0x01
 9fc:	60 83       	st	Z, r22
 9fe:	53 83       	std	Z+3, r21	; 0x03
 a00:	42 83       	std	Z+2, r20	; 0x02
 a02:	55 83       	std	Z+5, r21	; 0x05
 a04:	44 83       	std	Z+4, r20	; 0x04
 a06:	16 82       	std	Z+6, r1	; 0x06
 a08:	27 83       	std	Z+7, r18	; 0x07
 a0a:	08 95       	ret

00000a0c <_ZN6CTimer14test_and_clearEh>:
 a0c:	f8 94       	cli
 a0e:	88 e0       	ldi	r24, 0x08	; 8
 a10:	68 9f       	mul	r22, r24
 a12:	f0 01       	movw	r30, r0
 a14:	11 24       	eor	r1, r1
 a16:	e9 57       	subi	r30, 0x79	; 121
 a18:	fe 4f       	sbci	r31, 0xFE	; 254
 a1a:	86 81       	ldd	r24, Z+6	; 0x06
 a1c:	88 23       	and	r24, r24
 a1e:	19 f0       	breq	.+6      	; 0xa26 <_ZN6CTimer14test_and_clearEh+0x1a>
 a20:	86 81       	ldd	r24, Z+6	; 0x06
 a22:	16 82       	std	Z+6, r1	; 0x06
 a24:	01 c0       	rjmp	.+2      	; 0xa28 <_ZN6CTimer14test_and_clearEh+0x1c>
 a26:	80 e0       	ldi	r24, 0x00	; 0
 a28:	78 94       	sei
 a2a:	90 e0       	ldi	r25, 0x00	; 0
 a2c:	08 95       	ret

00000a2e <_ZN6CTimer4mainEv>:
 a2e:	8c 01       	movw	r16, r24
 a30:	f1 2c       	mov	r15, r1
 a32:	88 e0       	ldi	r24, 0x08	; 8
 a34:	f8 9e       	mul	r15, r24
 a36:	e0 01       	movw	r28, r0
 a38:	11 24       	eor	r1, r1
 a3a:	c9 57       	subi	r28, 0x79	; 121
 a3c:	de 4f       	sbci	r29, 0xFE	; 254
 a3e:	8f 81       	ldd	r24, Y+7	; 0x07
 a40:	88 23       	and	r24, r24
 a42:	69 f0       	breq	.+26     	; 0xa5e <_ZN6CTimer4mainEv+0x30>
 a44:	6f 2d       	mov	r22, r15
 a46:	c8 01       	movw	r24, r16
 a48:	0e 94 06 05 	call	0xa0c	; 0xa0c <_ZN6CTimer14test_and_clearEh>
 a4c:	89 2b       	or	r24, r25
 a4e:	39 f0       	breq	.+14     	; 0xa5e <_ZN6CTimer4mainEv+0x30>
 a50:	88 81       	ld	r24, Y
 a52:	99 81       	ldd	r25, Y+1	; 0x01
 a54:	89 2b       	or	r24, r25
 a56:	19 f0       	breq	.+6      	; 0xa5e <_ZN6CTimer4mainEv+0x30>
 a58:	e8 81       	ld	r30, Y
 a5a:	f9 81       	ldd	r31, Y+1	; 0x01
 a5c:	09 95       	icall
 a5e:	f3 94       	inc	r15
 a60:	87 e0       	ldi	r24, 0x07	; 7
 a62:	8f 15       	cp	r24, r15
 a64:	28 f3       	brcs	.-54     	; 0xa30 <_ZN6CTimer4mainEv+0x2>
 a66:	e5 cf       	rjmp	.-54     	; 0xa32 <_ZN6CTimer4mainEv+0x4>

00000a68 <__vector_14>:
 a68:	1f 92       	push	r1
 a6a:	0f 92       	push	r0
 a6c:	0f b6       	in	r0, 0x3f	; 63
 a6e:	0f 92       	push	r0
 a70:	11 24       	eor	r1, r1
 a72:	2f 93       	push	r18
 a74:	3f 93       	push	r19
 a76:	4f 93       	push	r20
 a78:	5f 93       	push	r21
 a7a:	6f 93       	push	r22
 a7c:	7f 93       	push	r23
 a7e:	8f 93       	push	r24
 a80:	9f 93       	push	r25
 a82:	af 93       	push	r26
 a84:	bf 93       	push	r27
 a86:	cf 93       	push	r28
 a88:	df 93       	push	r29
 a8a:	ef 93       	push	r30
 a8c:	ff 93       	push	r31
 a8e:	c0 e0       	ldi	r28, 0x00	; 0
 a90:	d0 e0       	ldi	r29, 0x00	; 0
 a92:	ce 01       	movw	r24, r28
 a94:	43 e0       	ldi	r20, 0x03	; 3
 a96:	88 0f       	add	r24, r24
 a98:	99 1f       	adc	r25, r25
 a9a:	4a 95       	dec	r20
 a9c:	e1 f7       	brne	.-8      	; 0xa96 <__vector_14+0x2e>
 a9e:	fc 01       	movw	r30, r24
 aa0:	e9 57       	subi	r30, 0x79	; 121
 aa2:	fe 4f       	sbci	r31, 0xFE	; 254
 aa4:	24 81       	ldd	r18, Z+4	; 0x04
 aa6:	35 81       	ldd	r19, Z+5	; 0x05
 aa8:	23 2b       	or	r18, r19
 aaa:	31 f0       	breq	.+12     	; 0xab8 <__vector_14+0x50>
 aac:	84 81       	ldd	r24, Z+4	; 0x04
 aae:	95 81       	ldd	r25, Z+5	; 0x05
 ab0:	01 97       	sbiw	r24, 0x01	; 1
 ab2:	95 83       	std	Z+5, r25	; 0x05
 ab4:	84 83       	std	Z+4, r24	; 0x04
 ab6:	18 c0       	rjmp	.+48     	; 0xae8 <__vector_14+0x80>
 ab8:	22 81       	ldd	r18, Z+2	; 0x02
 aba:	33 81       	ldd	r19, Z+3	; 0x03
 abc:	35 83       	std	Z+5, r19	; 0x05
 abe:	24 83       	std	Z+4, r18	; 0x04
 ac0:	26 81       	ldd	r18, Z+6	; 0x06
 ac2:	2f 3f       	cpi	r18, 0xFF	; 255
 ac4:	19 f0       	breq	.+6      	; 0xacc <__vector_14+0x64>
 ac6:	26 81       	ldd	r18, Z+6	; 0x06
 ac8:	2f 5f       	subi	r18, 0xFF	; 255
 aca:	26 83       	std	Z+6, r18	; 0x06
 acc:	fc 01       	movw	r30, r24
 ace:	e9 57       	subi	r30, 0x79	; 121
 ad0:	fe 4f       	sbci	r31, 0xFE	; 254
 ad2:	87 81       	ldd	r24, Z+7	; 0x07
 ad4:	81 11       	cpse	r24, r1
 ad6:	08 c0       	rjmp	.+16     	; 0xae8 <__vector_14+0x80>
 ad8:	80 81       	ld	r24, Z
 ada:	91 81       	ldd	r25, Z+1	; 0x01
 adc:	89 2b       	or	r24, r25
 ade:	21 f0       	breq	.+8      	; 0xae8 <__vector_14+0x80>
 ae0:	01 90       	ld	r0, Z+
 ae2:	f0 81       	ld	r31, Z
 ae4:	e0 2d       	mov	r30, r0
 ae6:	09 95       	icall
 ae8:	21 96       	adiw	r28, 0x01	; 1
 aea:	c8 30       	cpi	r28, 0x08	; 8
 aec:	d1 05       	cpc	r29, r1
 aee:	89 f6       	brne	.-94     	; 0xa92 <__vector_14+0x2a>
 af0:	80 91 c7 01 	lds	r24, 0x01C7
 af4:	90 91 c8 01 	lds	r25, 0x01C8
 af8:	a0 91 c9 01 	lds	r26, 0x01C9
 afc:	b0 91 ca 01 	lds	r27, 0x01CA
 b00:	01 96       	adiw	r24, 0x01	; 1
 b02:	a1 1d       	adc	r26, r1
 b04:	b1 1d       	adc	r27, r1
 b06:	80 93 c7 01 	sts	0x01C7, r24
 b0a:	90 93 c8 01 	sts	0x01C8, r25
 b0e:	a0 93 c9 01 	sts	0x01C9, r26
 b12:	b0 93 ca 01 	sts	0x01CA, r27
 b16:	ff 91       	pop	r31
 b18:	ef 91       	pop	r30
 b1a:	df 91       	pop	r29
 b1c:	cf 91       	pop	r28
 b1e:	bf 91       	pop	r27
 b20:	af 91       	pop	r26
 b22:	9f 91       	pop	r25
 b24:	8f 91       	pop	r24
 b26:	7f 91       	pop	r23
 b28:	6f 91       	pop	r22
 b2a:	5f 91       	pop	r21
 b2c:	4f 91       	pop	r20
 b2e:	3f 91       	pop	r19
 b30:	2f 91       	pop	r18
 b32:	0f 90       	pop	r0
 b34:	0f be       	out	0x3f, r0	; 63
 b36:	0f 90       	pop	r0
 b38:	1f 90       	pop	r1
 b3a:	18 95       	reti

00000b3c <_GLOBAL__sub_I_timer>:
 b3c:	8b ec       	ldi	r24, 0xCB	; 203
 b3e:	91 e0       	ldi	r25, 0x01	; 1
 b40:	0c 94 b4 04 	jmp	0x968	; 0x968 <_ZN6CTimerC1Ev>

00000b44 <_GLOBAL__sub_I_i2c>:
 b44:	3c 98       	cbi	0x07, 4	; 7
 b46:	3d 98       	cbi	0x07, 5	; 7
 b48:	44 98       	cbi	0x08, 4	; 8
 b4a:	45 98       	cbi	0x08, 5	; 8
 b4c:	08 95       	ret

00000b4e <__udivmodhi4>:
 b4e:	aa 1b       	sub	r26, r26
 b50:	bb 1b       	sub	r27, r27
 b52:	51 e1       	ldi	r21, 0x11	; 17
 b54:	07 c0       	rjmp	.+14     	; 0xb64 <__udivmodhi4_ep>

00000b56 <__udivmodhi4_loop>:
 b56:	aa 1f       	adc	r26, r26
 b58:	bb 1f       	adc	r27, r27
 b5a:	a6 17       	cp	r26, r22
 b5c:	b7 07       	cpc	r27, r23
 b5e:	10 f0       	brcs	.+4      	; 0xb64 <__udivmodhi4_ep>
 b60:	a6 1b       	sub	r26, r22
 b62:	b7 0b       	sbc	r27, r23

00000b64 <__udivmodhi4_ep>:
 b64:	88 1f       	adc	r24, r24
 b66:	99 1f       	adc	r25, r25
 b68:	5a 95       	dec	r21
 b6a:	a9 f7       	brne	.-22     	; 0xb56 <__udivmodhi4_loop>
 b6c:	80 95       	com	r24
 b6e:	90 95       	com	r25
 b70:	bc 01       	movw	r22, r24
 b72:	cd 01       	movw	r24, r26
 b74:	08 95       	ret

00000b76 <__divmodhi4>:
 b76:	97 fb       	bst	r25, 7
 b78:	07 2e       	mov	r0, r23
 b7a:	16 f4       	brtc	.+4      	; 0xb80 <__divmodhi4+0xa>
 b7c:	00 94       	com	r0
 b7e:	07 d0       	rcall	.+14     	; 0xb8e <__divmodhi4_neg1>
 b80:	77 fd       	sbrc	r23, 7
 b82:	09 d0       	rcall	.+18     	; 0xb96 <__divmodhi4_neg2>
 b84:	0e 94 a7 05 	call	0xb4e	; 0xb4e <__udivmodhi4>
 b88:	07 fc       	sbrc	r0, 7
 b8a:	05 d0       	rcall	.+10     	; 0xb96 <__divmodhi4_neg2>
 b8c:	3e f4       	brtc	.+14     	; 0xb9c <__divmodhi4_exit>

00000b8e <__divmodhi4_neg1>:
 b8e:	90 95       	com	r25
 b90:	81 95       	neg	r24
 b92:	9f 4f       	sbci	r25, 0xFF	; 255
 b94:	08 95       	ret

00000b96 <__divmodhi4_neg2>:
 b96:	70 95       	com	r23
 b98:	61 95       	neg	r22
 b9a:	7f 4f       	sbci	r23, 0xFF	; 255

00000b9c <__divmodhi4_exit>:
 b9c:	08 95       	ret

00000b9e <__tablejump2__>:
 b9e:	ee 0f       	add	r30, r30
 ba0:	ff 1f       	adc	r31, r31

00000ba2 <__tablejump__>:
 ba2:	05 90       	lpm	r0, Z+
 ba4:	f4 91       	lpm	r31, Z
 ba6:	e0 2d       	mov	r30, r0
 ba8:	09 94       	ijmp

00000baa <__do_global_dtors>:
 baa:	10 e0       	ldi	r17, 0x00	; 0
 bac:	c4 e7       	ldi	r28, 0x74	; 116
 bae:	d0 e0       	ldi	r29, 0x00	; 0
 bb0:	04 c0       	rjmp	.+8      	; 0xbba <__do_global_dtors+0x10>
 bb2:	fe 01       	movw	r30, r28
 bb4:	0e 94 d1 05 	call	0xba2	; 0xba2 <__tablejump__>
 bb8:	22 96       	adiw	r28, 0x02	; 2
 bba:	c8 37       	cpi	r28, 0x78	; 120
 bbc:	d1 07       	cpc	r29, r17
 bbe:	c9 f7       	brne	.-14     	; 0xbb2 <__do_global_dtors+0x8>
 bc0:	f8 94       	cli

00000bc2 <__stop_program>:
 bc2:	ff cf       	rjmp	.-2      	; 0xbc2 <__stop_program>
