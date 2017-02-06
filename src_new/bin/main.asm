
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 3b 00 	jmp	0x76	; 0x76 <__dtors_end>
   4:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
   8:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
   c:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  10:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  14:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  18:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  1c:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  20:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  24:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  28:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  2c:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  30:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  34:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  38:	0c 94 0e 04 	jmp	0x81c	; 0x81c <__vector_14>
  3c:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  40:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  44:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  48:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  4c:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  50:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  54:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  58:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  5c:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  60:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>
  64:	0c 94 63 00 	jmp	0xc6	; 0xc6 <__bad_interrupt>

00000068 <__ctors_start>:
  68:	d7 00       	.word	0x00d7	; ????
  6a:	e0 00       	.word	0x00e0	; ????
  6c:	69 02       	muls	r22, r25
  6e:	78 04       	cpc	r7, r8
  70:	7c 04       	cpc	r7, r12

00000072 <__ctors_end>:
  72:	dc 00       	.word	0x00dc	; ????
  74:	6d 02       	muls	r22, r29

00000076 <__dtors_end>:
  76:	11 24       	eor	r1, r1
  78:	1f be       	out	0x3f, r1	; 63
  7a:	cf ef       	ldi	r28, 0xFF	; 255
  7c:	d8 e0       	ldi	r29, 0x08	; 8
  7e:	de bf       	out	0x3e, r29	; 62
  80:	cd bf       	out	0x3d, r28	; 61

00000082 <__do_copy_data>:
  82:	11 e0       	ldi	r17, 0x01	; 1
  84:	a0 e0       	ldi	r26, 0x00	; 0
  86:	b1 e0       	ldi	r27, 0x01	; 1
  88:	e8 e7       	ldi	r30, 0x78	; 120
  8a:	f9 e0       	ldi	r31, 0x09	; 9
  8c:	02 c0       	rjmp	.+4      	; 0x92 <__do_copy_data+0x10>
  8e:	05 90       	lpm	r0, Z+
  90:	0d 92       	st	X+, r0
  92:	a2 31       	cpi	r26, 0x12	; 18
  94:	b1 07       	cpc	r27, r17
  96:	d9 f7       	brne	.-10     	; 0x8e <__do_copy_data+0xc>

00000098 <__do_clear_bss>:
  98:	21 e0       	ldi	r18, 0x01	; 1
  9a:	a2 e1       	ldi	r26, 0x12	; 18
  9c:	b1 e0       	ldi	r27, 0x01	; 1
  9e:	01 c0       	rjmp	.+2      	; 0xa2 <.do_clear_bss_start>

000000a0 <.do_clear_bss_loop>:
  a0:	1d 92       	st	X+, r1

000000a2 <.do_clear_bss_start>:
  a2:	aa 36       	cpi	r26, 0x6A	; 106
  a4:	b2 07       	cpc	r27, r18
  a6:	e1 f7       	brne	.-8      	; 0xa0 <.do_clear_bss_loop>

000000a8 <__do_global_ctors>:
  a8:	10 e0       	ldi	r17, 0x00	; 0
  aa:	c2 e7       	ldi	r28, 0x72	; 114
  ac:	d0 e0       	ldi	r29, 0x00	; 0
  ae:	04 c0       	rjmp	.+8      	; 0xb8 <__do_global_ctors+0x10>
  b0:	22 97       	sbiw	r28, 0x02	; 2
  b2:	fe 01       	movw	r30, r28
  b4:	0e 94 ab 04 	call	0x956	; 0x956 <__tablejump__>
  b8:	c8 36       	cpi	r28, 0x68	; 104
  ba:	d1 07       	cpc	r29, r17
  bc:	c9 f7       	brne	.-14     	; 0xb0 <__do_global_ctors+0x8>
  be:	0e 94 65 00 	call	0xca	; 0xca <main>
  c2:	0c 94 af 04 	jmp	0x95e	; 0x95e <__do_global_dtors>

000000c6 <__bad_interrupt>:
  c6:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ca <main>:
  ca:	0e 94 b3 00 	call	0x166	; 0x166 <_Z8usr_mainv>
  ce:	80 e0       	ldi	r24, 0x00	; 0
  d0:	90 e0       	ldi	r25, 0x00	; 0
  d2:	08 95       	ret

000000d4 <_Z6sensorv>:
  d4:	84 e1       	ldi	r24, 0x14	; 20
  d6:	91 e0       	ldi	r25, 0x01	; 1
  d8:	0c 94 0f 03 	jmp	0x61e	; 0x61e <_ZN9CAPDS99504readEv>

000000dc <_Z9main_loopv>:
  dc:	ec e1       	ldi	r30, 0x1C	; 28
  de:	f1 e0       	ldi	r31, 0x01	; 1
  e0:	81 81       	ldd	r24, Z+1	; 0x01
  e2:	8f 93       	push	r24
  e4:	80 81       	ld	r24, Z
  e6:	8f 93       	push	r24
  e8:	e8 e1       	ldi	r30, 0x18	; 24
  ea:	f1 e0       	ldi	r31, 0x01	; 1
  ec:	81 81       	ldd	r24, Z+1	; 0x01
  ee:	8f 93       	push	r24
  f0:	80 81       	ld	r24, Z
  f2:	8f 93       	push	r24
  f4:	e6 e1       	ldi	r30, 0x16	; 22
  f6:	f1 e0       	ldi	r31, 0x01	; 1
  f8:	81 81       	ldd	r24, Z+1	; 0x01
  fa:	8f 93       	push	r24
  fc:	80 81       	ld	r24, Z
  fe:	8f 93       	push	r24
 100:	e4 e1       	ldi	r30, 0x14	; 20
 102:	f1 e0       	ldi	r31, 0x01	; 1
 104:	81 81       	ldd	r24, Z+1	; 0x01
 106:	8f 93       	push	r24
 108:	80 81       	ld	r24, Z
 10a:	8f 93       	push	r24
 10c:	ea e1       	ldi	r30, 0x1A	; 26
 10e:	f1 e0       	ldi	r31, 0x01	; 1
 110:	81 81       	ldd	r24, Z+1	; 0x01
 112:	8f 93       	push	r24
 114:	80 81       	ld	r24, Z
 116:	8f 93       	push	r24
 118:	80 e0       	ldi	r24, 0x00	; 0
 11a:	91 e0       	ldi	r25, 0x01	; 1
 11c:	9f 93       	push	r25
 11e:	8f 93       	push	r24
 120:	82 e2       	ldi	r24, 0x22	; 34
 122:	91 e0       	ldi	r25, 0x01	; 1
 124:	9f 93       	push	r25
 126:	8f 93       	push	r24
 128:	0e 94 eb 01 	call	0x3d6	; 0x3d6 <_ZN9CTerminal6printfEPKcz>
 12c:	8d b7       	in	r24, 0x3d	; 61
 12e:	9e b7       	in	r25, 0x3e	; 62
 130:	0e 96       	adiw	r24, 0x0e	; 14
 132:	0f b6       	in	r0, 0x3f	; 63
 134:	f8 94       	cli
 136:	9e bf       	out	0x3e, r25	; 62
 138:	0f be       	out	0x3f, r0	; 63
 13a:	8d bf       	out	0x3d, r24	; 61
 13c:	08 95       	ret

0000013e <_Z10blink_idlev>:
 13e:	80 91 12 01 	lds	r24, 0x0112
 142:	90 91 13 01 	lds	r25, 0x0113
 146:	89 2b       	or	r24, r25
 148:	31 f0       	breq	.+12     	; 0x156 <_Z10blink_idlev+0x18>
 14a:	10 92 13 01 	sts	0x0113, r1
 14e:	10 92 12 01 	sts	0x0112, r1
 152:	2d 9a       	sbi	0x05, 5	; 5
 154:	08 95       	ret
 156:	81 e0       	ldi	r24, 0x01	; 1
 158:	90 e0       	ldi	r25, 0x00	; 0
 15a:	90 93 13 01 	sts	0x0113, r25
 15e:	80 93 12 01 	sts	0x0112, r24
 162:	2d 98       	cbi	0x05, 5	; 5
 164:	08 95       	ret

00000166 <_Z8usr_mainv>:
 166:	84 e1       	ldi	r24, 0x14	; 20
 168:	91 e0       	ldi	r25, 0x01	; 1
 16a:	0e 94 d6 02 	call	0x5ac	; 0x5ac <_ZN9CAPDS99504initEv>
 16e:	20 e0       	ldi	r18, 0x00	; 0
 170:	48 ec       	ldi	r20, 0xC8	; 200
 172:	50 e0       	ldi	r21, 0x00	; 0
 174:	6f e9       	ldi	r22, 0x9F	; 159
 176:	70 e0       	ldi	r23, 0x00	; 0
 178:	87 e6       	ldi	r24, 0x67	; 103
 17a:	91 e0       	ldi	r25, 0x01	; 1
 17c:	0e 94 ba 03 	call	0x774	; 0x774 <_ZN6CTimer8add_taskEPFvvEjb>
 180:	20 e0       	ldi	r18, 0x00	; 0
 182:	4a e0       	ldi	r20, 0x0A	; 10
 184:	50 e0       	ldi	r21, 0x00	; 0
 186:	6a e6       	ldi	r22, 0x6A	; 106
 188:	70 e0       	ldi	r23, 0x00	; 0
 18a:	87 e6       	ldi	r24, 0x67	; 103
 18c:	91 e0       	ldi	r25, 0x01	; 1
 18e:	0e 94 ba 03 	call	0x774	; 0x774 <_ZN6CTimer8add_taskEPFvvEjb>
 192:	21 e0       	ldi	r18, 0x01	; 1
 194:	4c e2       	ldi	r20, 0x2C	; 44
 196:	51 e0       	ldi	r21, 0x01	; 1
 198:	6e e6       	ldi	r22, 0x6E	; 110
 19a:	70 e0       	ldi	r23, 0x00	; 0
 19c:	87 e6       	ldi	r24, 0x67	; 103
 19e:	91 e0       	ldi	r25, 0x01	; 1
 1a0:	0e 94 ba 03 	call	0x774	; 0x774 <_ZN6CTimer8add_taskEPFvvEjb>
 1a4:	87 e6       	ldi	r24, 0x67	; 103
 1a6:	91 e0       	ldi	r25, 0x01	; 1
 1a8:	0e 94 f1 03 	call	0x7e2	; 0x7e2 <_ZN6CTimer4mainEv>
 1ac:	fb cf       	rjmp	.-10     	; 0x1a4 <_Z8usr_mainv+0x3e>

000001ae <_GLOBAL__sub_I_led>:
 1ae:	25 9a       	sbi	0x04, 5	; 4
 1b0:	84 e1       	ldi	r24, 0x14	; 20
 1b2:	91 e0       	ldi	r25, 0x01	; 1
 1b4:	0c 94 c9 02 	jmp	0x592	; 0x592 <_ZN9CAPDS9950C1Ev>

000001b8 <_GLOBAL__sub_D_led>:
 1b8:	84 e1       	ldi	r24, 0x14	; 20
 1ba:	91 e0       	ldi	r25, 0x01	; 1
 1bc:	0c 94 d5 02 	jmp	0x5aa	; 0x5aa <_ZN9CAPDS9950D1Ev>

000001c0 <_GLOBAL__sub_I_math>:
 1c0:	81 e0       	ldi	r24, 0x01	; 1
 1c2:	90 e0       	ldi	r25, 0x00	; 0
 1c4:	90 93 1f 01 	sts	0x011F, r25
 1c8:	80 93 1e 01 	sts	0x011E, r24
 1cc:	82 e0       	ldi	r24, 0x02	; 2
 1ce:	90 e0       	ldi	r25, 0x00	; 0
 1d0:	90 93 21 01 	sts	0x0121, r25
 1d4:	80 93 20 01 	sts	0x0120, r24
 1d8:	08 95       	ret

000001da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
 1e2:	00 00       	nop
 1e4:	08 95       	ret

000001e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>:
 1e6:	1f 93       	push	r17
 1e8:	cf 93       	push	r28
 1ea:	df 93       	push	r29
 1ec:	16 2f       	mov	r17, r22
 1ee:	3c 98       	cbi	0x07, 4	; 7
 1f0:	3d 9a       	sbi	0x07, 5	; 7
 1f2:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 1f6:	d8 e0       	ldi	r29, 0x08	; 8
 1f8:	c0 e0       	ldi	r28, 0x00	; 0
 1fa:	cc 0f       	add	r28, r28
 1fc:	3d 98       	cbi	0x07, 5	; 7
 1fe:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 202:	34 99       	sbic	0x06, 4	; 6
 204:	c1 60       	ori	r28, 0x01	; 1
 206:	3d 9a       	sbi	0x07, 5	; 7
 208:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 20c:	d1 50       	subi	r29, 0x01	; 1
 20e:	a9 f7       	brne	.-22     	; 0x1fa <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x14>
 210:	11 23       	and	r17, r17
 212:	11 f0       	breq	.+4      	; 0x218 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x32>
 214:	3c 9a       	sbi	0x07, 4	; 7
 216:	01 c0       	rjmp	.+2      	; 0x21a <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x34>
 218:	3c 98       	cbi	0x07, 4	; 7
 21a:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 21e:	3d 98       	cbi	0x07, 5	; 7
 220:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 224:	3d 9a       	sbi	0x07, 5	; 7
 226:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 22a:	3c 98       	cbi	0x07, 4	; 7
 22c:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 230:	8c 2f       	mov	r24, r28
 232:	df 91       	pop	r29
 234:	cf 91       	pop	r28
 236:	1f 91       	pop	r17
 238:	08 95       	ret

0000023a <_ZN9CTerminal4putsEPc>:
 23a:	0f 93       	push	r16
 23c:	1f 93       	push	r17
 23e:	cf 93       	push	r28
 240:	df 93       	push	r29
 242:	8c 01       	movw	r16, r24
 244:	eb 01       	movw	r28, r22
 246:	69 91       	ld	r22, Y+
 248:	66 23       	and	r22, r22
 24a:	21 f0       	breq	.+8      	; 0x254 <_ZN9CTerminal4putsEPc+0x1a>
 24c:	c8 01       	movw	r24, r16
 24e:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN6CUSART7putcharEc>
 252:	f9 cf       	rjmp	.-14     	; 0x246 <_ZN9CTerminal4putsEPc+0xc>
 254:	df 91       	pop	r29
 256:	cf 91       	pop	r28
 258:	1f 91       	pop	r17
 25a:	0f 91       	pop	r16
 25c:	08 95       	ret

0000025e <_ZN9CTerminal4putiEi>:
 25e:	df 92       	push	r13
 260:	ef 92       	push	r14
 262:	ff 92       	push	r15
 264:	0f 93       	push	r16
 266:	1f 93       	push	r17
 268:	cf 93       	push	r28
 26a:	df 93       	push	r29
 26c:	cd b7       	in	r28, 0x3d	; 61
 26e:	de b7       	in	r29, 0x3e	; 62
 270:	2c 97       	sbiw	r28, 0x0c	; 12
 272:	0f b6       	in	r0, 0x3f	; 63
 274:	f8 94       	cli
 276:	de bf       	out	0x3e, r29	; 62
 278:	0f be       	out	0x3f, r0	; 63
 27a:	cd bf       	out	0x3d, r28	; 61
 27c:	fc 01       	movw	r30, r24
 27e:	9b 01       	movw	r18, r22
 280:	77 ff       	sbrs	r23, 7
 282:	06 c0       	rjmp	.+12     	; 0x290 <_ZN9CTerminal4putiEi+0x32>
 284:	31 95       	neg	r19
 286:	21 95       	neg	r18
 288:	31 09       	sbc	r19, r1
 28a:	dd 24       	eor	r13, r13
 28c:	d3 94       	inc	r13
 28e:	01 c0       	rjmp	.+2      	; 0x292 <_ZN9CTerminal4putiEi+0x34>
 290:	d1 2c       	mov	r13, r1
 292:	1c 86       	std	Y+12, r1	; 0x0c
 294:	4a e0       	ldi	r20, 0x0A	; 10
 296:	0a e0       	ldi	r16, 0x0A	; 10
 298:	10 e0       	ldi	r17, 0x00	; 0
 29a:	ee 24       	eor	r14, r14
 29c:	e3 94       	inc	r14
 29e:	f1 2c       	mov	r15, r1
 2a0:	ec 0e       	add	r14, r28
 2a2:	fd 1e       	adc	r15, r29
 2a4:	e4 0e       	add	r14, r20
 2a6:	f1 1c       	adc	r15, r1
 2a8:	c9 01       	movw	r24, r18
 2aa:	b8 01       	movw	r22, r16
 2ac:	0e 94 95 04 	call	0x92a	; 0x92a <__divmodhi4>
 2b0:	80 5d       	subi	r24, 0xD0	; 208
 2b2:	d7 01       	movw	r26, r14
 2b4:	8c 93       	st	X, r24
 2b6:	9b 01       	movw	r18, r22
 2b8:	8f ef       	ldi	r24, 0xFF	; 255
 2ba:	84 0f       	add	r24, r20
 2bc:	61 15       	cp	r22, r1
 2be:	71 05       	cpc	r23, r1
 2c0:	11 f0       	breq	.+4      	; 0x2c6 <_ZN9CTerminal4putiEi+0x68>
 2c2:	48 2f       	mov	r20, r24
 2c4:	ea cf       	rjmp	.-44     	; 0x29a <_ZN9CTerminal4putiEi+0x3c>
 2c6:	dd 20       	and	r13, r13
 2c8:	49 f0       	breq	.+18     	; 0x2dc <_ZN9CTerminal4putiEi+0x7e>
 2ca:	a1 e0       	ldi	r26, 0x01	; 1
 2cc:	b0 e0       	ldi	r27, 0x00	; 0
 2ce:	ac 0f       	add	r26, r28
 2d0:	bd 1f       	adc	r27, r29
 2d2:	a8 0f       	add	r26, r24
 2d4:	b1 1d       	adc	r27, r1
 2d6:	9d e2       	ldi	r25, 0x2D	; 45
 2d8:	9c 93       	st	X, r25
 2da:	48 2f       	mov	r20, r24
 2dc:	61 e0       	ldi	r22, 0x01	; 1
 2de:	70 e0       	ldi	r23, 0x00	; 0
 2e0:	6c 0f       	add	r22, r28
 2e2:	7d 1f       	adc	r23, r29
 2e4:	64 0f       	add	r22, r20
 2e6:	71 1d       	adc	r23, r1
 2e8:	cf 01       	movw	r24, r30
 2ea:	0e 94 1d 01 	call	0x23a	; 0x23a <_ZN9CTerminal4putsEPc>
 2ee:	2c 96       	adiw	r28, 0x0c	; 12
 2f0:	0f b6       	in	r0, 0x3f	; 63
 2f2:	f8 94       	cli
 2f4:	de bf       	out	0x3e, r29	; 62
 2f6:	0f be       	out	0x3f, r0	; 63
 2f8:	cd bf       	out	0x3d, r28	; 61
 2fa:	df 91       	pop	r29
 2fc:	cf 91       	pop	r28
 2fe:	1f 91       	pop	r17
 300:	0f 91       	pop	r16
 302:	ff 90       	pop	r15
 304:	ef 90       	pop	r14
 306:	df 90       	pop	r13
 308:	08 95       	ret

0000030a <_ZN9CTerminal5putuiEj>:
 30a:	0f 93       	push	r16
 30c:	1f 93       	push	r17
 30e:	cf 93       	push	r28
 310:	df 93       	push	r29
 312:	cd b7       	in	r28, 0x3d	; 61
 314:	de b7       	in	r29, 0x3e	; 62
 316:	2c 97       	sbiw	r28, 0x0c	; 12
 318:	0f b6       	in	r0, 0x3f	; 63
 31a:	f8 94       	cli
 31c:	de bf       	out	0x3e, r29	; 62
 31e:	0f be       	out	0x3f, r0	; 63
 320:	cd bf       	out	0x3d, r28	; 61
 322:	8c 01       	movw	r16, r24
 324:	cb 01       	movw	r24, r22
 326:	1c 86       	std	Y+12, r1	; 0x0c
 328:	4a e0       	ldi	r20, 0x0A	; 10
 32a:	2a e0       	ldi	r18, 0x0A	; 10
 32c:	30 e0       	ldi	r19, 0x00	; 0
 32e:	e1 e0       	ldi	r30, 0x01	; 1
 330:	f0 e0       	ldi	r31, 0x00	; 0
 332:	ec 0f       	add	r30, r28
 334:	fd 1f       	adc	r31, r29
 336:	e4 0f       	add	r30, r20
 338:	f1 1d       	adc	r31, r1
 33a:	b9 01       	movw	r22, r18
 33c:	0e 94 81 04 	call	0x902	; 0x902 <__udivmodhi4>
 340:	80 5d       	subi	r24, 0xD0	; 208
 342:	80 83       	st	Z, r24
 344:	cb 01       	movw	r24, r22
 346:	41 50       	subi	r20, 0x01	; 1
 348:	00 97       	sbiw	r24, 0x00	; 0
 34a:	89 f7       	brne	.-30     	; 0x32e <_ZN9CTerminal5putuiEj+0x24>
 34c:	bf 01       	movw	r22, r30
 34e:	c8 01       	movw	r24, r16
 350:	0e 94 1d 01 	call	0x23a	; 0x23a <_ZN9CTerminal4putsEPc>
 354:	2c 96       	adiw	r28, 0x0c	; 12
 356:	0f b6       	in	r0, 0x3f	; 63
 358:	f8 94       	cli
 35a:	de bf       	out	0x3e, r29	; 62
 35c:	0f be       	out	0x3f, r0	; 63
 35e:	cd bf       	out	0x3d, r28	; 61
 360:	df 91       	pop	r29
 362:	cf 91       	pop	r28
 364:	1f 91       	pop	r17
 366:	0f 91       	pop	r16
 368:	08 95       	ret

0000036a <_ZN9CTerminal4putxEj>:
 36a:	cf 93       	push	r28
 36c:	df 93       	push	r29
 36e:	cd b7       	in	r28, 0x3d	; 61
 370:	de b7       	in	r29, 0x3e	; 62
 372:	2c 97       	sbiw	r28, 0x0c	; 12
 374:	0f b6       	in	r0, 0x3f	; 63
 376:	f8 94       	cli
 378:	de bf       	out	0x3e, r29	; 62
 37a:	0f be       	out	0x3f, r0	; 63
 37c:	cd bf       	out	0x3d, r28	; 61
 37e:	1c 86       	std	Y+12, r1	; 0x0c
 380:	4a e0       	ldi	r20, 0x0A	; 10
 382:	56 2f       	mov	r21, r22
 384:	5f 70       	andi	r21, 0x0F	; 15
 386:	24 2f       	mov	r18, r20
 388:	30 e0       	ldi	r19, 0x00	; 0
 38a:	e1 e0       	ldi	r30, 0x01	; 1
 38c:	f0 e0       	ldi	r31, 0x00	; 0
 38e:	ec 0f       	add	r30, r28
 390:	fd 1f       	adc	r31, r29
 392:	e2 0f       	add	r30, r18
 394:	f3 1f       	adc	r31, r19
 396:	5a 30       	cpi	r21, 0x0A	; 10
 398:	14 f4       	brge	.+4      	; 0x39e <_ZN9CTerminal4putxEj+0x34>
 39a:	50 5d       	subi	r21, 0xD0	; 208
 39c:	01 c0       	rjmp	.+2      	; 0x3a0 <_ZN9CTerminal4putxEj+0x36>
 39e:	59 5a       	subi	r21, 0xA9	; 169
 3a0:	50 83       	st	Z, r21
 3a2:	54 e0       	ldi	r21, 0x04	; 4
 3a4:	76 95       	lsr	r23
 3a6:	67 95       	ror	r22
 3a8:	5a 95       	dec	r21
 3aa:	e1 f7       	brne	.-8      	; 0x3a4 <_ZN9CTerminal4putxEj+0x3a>
 3ac:	41 50       	subi	r20, 0x01	; 1
 3ae:	61 15       	cp	r22, r1
 3b0:	71 05       	cpc	r23, r1
 3b2:	39 f7       	brne	.-50     	; 0x382 <_ZN9CTerminal4putxEj+0x18>
 3b4:	61 e0       	ldi	r22, 0x01	; 1
 3b6:	70 e0       	ldi	r23, 0x00	; 0
 3b8:	6c 0f       	add	r22, r28
 3ba:	7d 1f       	adc	r23, r29
 3bc:	62 0f       	add	r22, r18
 3be:	73 1f       	adc	r23, r19
 3c0:	0e 94 1d 01 	call	0x23a	; 0x23a <_ZN9CTerminal4putsEPc>
 3c4:	2c 96       	adiw	r28, 0x0c	; 12
 3c6:	0f b6       	in	r0, 0x3f	; 63
 3c8:	f8 94       	cli
 3ca:	de bf       	out	0x3e, r29	; 62
 3cc:	0f be       	out	0x3f, r0	; 63
 3ce:	cd bf       	out	0x3d, r28	; 61
 3d0:	df 91       	pop	r29
 3d2:	cf 91       	pop	r28
 3d4:	08 95       	ret

000003d6 <_ZN9CTerminal6printfEPKcz>:
 3d6:	af 92       	push	r10
 3d8:	bf 92       	push	r11
 3da:	cf 92       	push	r12
 3dc:	df 92       	push	r13
 3de:	ef 92       	push	r14
 3e0:	ff 92       	push	r15
 3e2:	0f 93       	push	r16
 3e4:	1f 93       	push	r17
 3e6:	cf 93       	push	r28
 3e8:	df 93       	push	r29
 3ea:	cd b7       	in	r28, 0x3d	; 61
 3ec:	de b7       	in	r29, 0x3e	; 62
 3ee:	ed 84       	ldd	r14, Y+13	; 0x0d
 3f0:	fe 84       	ldd	r15, Y+14	; 0x0e
 3f2:	8e 01       	movw	r16, r28
 3f4:	0f 5e       	subi	r16, 0xEF	; 239
 3f6:	1f 4f       	sbci	r17, 0xFF	; 255
 3f8:	c1 2c       	mov	r12, r1
 3fa:	d1 2c       	mov	r13, r1
 3fc:	ef 85       	ldd	r30, Y+15	; 0x0f
 3fe:	f8 89       	ldd	r31, Y+16	; 0x10
 400:	ec 0d       	add	r30, r12
 402:	fd 1d       	adc	r31, r13
 404:	60 81       	ld	r22, Z
 406:	66 23       	and	r22, r22
 408:	09 f4       	brne	.+2      	; 0x40c <_ZN9CTerminal6printfEPKcz+0x36>
 40a:	58 c0       	rjmp	.+176    	; 0x4bc <_ZN9CTerminal6printfEPKcz+0xe6>
 40c:	65 32       	cpi	r22, 0x25	; 37
 40e:	39 f0       	breq	.+14     	; 0x41e <_ZN9CTerminal6printfEPKcz+0x48>
 410:	c7 01       	movw	r24, r14
 412:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN6CUSART7putcharEc>
 416:	8f ef       	ldi	r24, 0xFF	; 255
 418:	c8 1a       	sub	r12, r24
 41a:	d8 0a       	sbc	r13, r24
 41c:	ef cf       	rjmp	.-34     	; 0x3fc <_ZN9CTerminal6printfEPKcz+0x26>
 41e:	81 81       	ldd	r24, Z+1	; 0x01
 420:	89 36       	cpi	r24, 0x69	; 105
 422:	11 f1       	breq	.+68     	; 0x468 <_ZN9CTerminal6printfEPKcz+0x92>
 424:	84 f4       	brge	.+32     	; 0x446 <_ZN9CTerminal6printfEPKcz+0x70>
 426:	85 32       	cpi	r24, 0x25	; 37
 428:	09 f4       	brne	.+2      	; 0x42c <_ZN9CTerminal6printfEPKcz+0x56>
 42a:	40 c0       	rjmp	.+128    	; 0x4ac <_ZN9CTerminal6printfEPKcz+0xd6>
 42c:	83 36       	cpi	r24, 0x63	; 99
 42e:	09 f0       	breq	.+2      	; 0x432 <_ZN9CTerminal6printfEPKcz+0x5c>
 430:	41 c0       	rjmp	.+130    	; 0x4b4 <_ZN9CTerminal6printfEPKcz+0xde>
 432:	58 01       	movw	r10, r16
 434:	f2 e0       	ldi	r31, 0x02	; 2
 436:	af 0e       	add	r10, r31
 438:	b1 1c       	adc	r11, r1
 43a:	f8 01       	movw	r30, r16
 43c:	60 81       	ld	r22, Z
 43e:	c7 01       	movw	r24, r14
 440:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN6CUSART7putcharEc>
 444:	26 c0       	rjmp	.+76     	; 0x492 <_ZN9CTerminal6printfEPKcz+0xbc>
 446:	85 37       	cpi	r24, 0x75	; 117
 448:	d1 f0       	breq	.+52     	; 0x47e <_ZN9CTerminal6printfEPKcz+0xa8>
 44a:	88 37       	cpi	r24, 0x78	; 120
 44c:	21 f1       	breq	.+72     	; 0x496 <_ZN9CTerminal6printfEPKcz+0xc0>
 44e:	83 37       	cpi	r24, 0x73	; 115
 450:	89 f5       	brne	.+98     	; 0x4b4 <_ZN9CTerminal6printfEPKcz+0xde>
 452:	58 01       	movw	r10, r16
 454:	f2 e0       	ldi	r31, 0x02	; 2
 456:	af 0e       	add	r10, r31
 458:	b1 1c       	adc	r11, r1
 45a:	f8 01       	movw	r30, r16
 45c:	60 81       	ld	r22, Z
 45e:	71 81       	ldd	r23, Z+1	; 0x01
 460:	c7 01       	movw	r24, r14
 462:	0e 94 1d 01 	call	0x23a	; 0x23a <_ZN9CTerminal4putsEPc>
 466:	15 c0       	rjmp	.+42     	; 0x492 <_ZN9CTerminal6printfEPKcz+0xbc>
 468:	58 01       	movw	r10, r16
 46a:	92 e0       	ldi	r25, 0x02	; 2
 46c:	a9 0e       	add	r10, r25
 46e:	b1 1c       	adc	r11, r1
 470:	f8 01       	movw	r30, r16
 472:	60 81       	ld	r22, Z
 474:	71 81       	ldd	r23, Z+1	; 0x01
 476:	c7 01       	movw	r24, r14
 478:	0e 94 2f 01 	call	0x25e	; 0x25e <_ZN9CTerminal4putiEi>
 47c:	0a c0       	rjmp	.+20     	; 0x492 <_ZN9CTerminal6printfEPKcz+0xbc>
 47e:	58 01       	movw	r10, r16
 480:	f2 e0       	ldi	r31, 0x02	; 2
 482:	af 0e       	add	r10, r31
 484:	b1 1c       	adc	r11, r1
 486:	f8 01       	movw	r30, r16
 488:	60 81       	ld	r22, Z
 48a:	71 81       	ldd	r23, Z+1	; 0x01
 48c:	c7 01       	movw	r24, r14
 48e:	0e 94 85 01 	call	0x30a	; 0x30a <_ZN9CTerminal5putuiEj>
 492:	85 01       	movw	r16, r10
 494:	0f c0       	rjmp	.+30     	; 0x4b4 <_ZN9CTerminal6printfEPKcz+0xde>
 496:	58 01       	movw	r10, r16
 498:	f2 e0       	ldi	r31, 0x02	; 2
 49a:	af 0e       	add	r10, r31
 49c:	b1 1c       	adc	r11, r1
 49e:	f8 01       	movw	r30, r16
 4a0:	60 81       	ld	r22, Z
 4a2:	71 81       	ldd	r23, Z+1	; 0x01
 4a4:	c7 01       	movw	r24, r14
 4a6:	0e 94 b5 01 	call	0x36a	; 0x36a <_ZN9CTerminal4putxEj>
 4aa:	f3 cf       	rjmp	.-26     	; 0x492 <_ZN9CTerminal6printfEPKcz+0xbc>
 4ac:	65 e2       	ldi	r22, 0x25	; 37
 4ae:	c7 01       	movw	r24, r14
 4b0:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN6CUSART7putcharEc>
 4b4:	f2 e0       	ldi	r31, 0x02	; 2
 4b6:	cf 0e       	add	r12, r31
 4b8:	d1 1c       	adc	r13, r1
 4ba:	a0 cf       	rjmp	.-192    	; 0x3fc <_ZN9CTerminal6printfEPKcz+0x26>
 4bc:	df 91       	pop	r29
 4be:	cf 91       	pop	r28
 4c0:	1f 91       	pop	r17
 4c2:	0f 91       	pop	r16
 4c4:	ff 90       	pop	r15
 4c6:	ef 90       	pop	r14
 4c8:	df 90       	pop	r13
 4ca:	cf 90       	pop	r12
 4cc:	bf 90       	pop	r11
 4ce:	af 90       	pop	r10
 4d0:	08 95       	ret

000004d2 <_GLOBAL__sub_I_terminal>:
 4d2:	82 e2       	ldi	r24, 0x22	; 34
 4d4:	91 e0       	ldi	r25, 0x01	; 1
 4d6:	0c 94 74 03 	jmp	0x6e8	; 0x6e8 <_ZN6CUSARTC1Ev>

000004da <_GLOBAL__sub_D_terminal>:
 4da:	82 e2       	ldi	r24, 0x22	; 34
 4dc:	91 e0       	ldi	r25, 0x01	; 1
 4de:	0c 94 84 03 	jmp	0x708	; 0x708 <_ZN6CUSARTD1Ev>

000004e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
 4ea:	00 00       	nop
 4ec:	08 95       	ret

000004ee <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>:
 4ee:	3d 9a       	sbi	0x07, 5	; 7
 4f0:	3c 9a       	sbi	0x07, 4	; 7
 4f2:	3d 98       	cbi	0x07, 5	; 7
 4f4:	3c 9a       	sbi	0x07, 4	; 7
 4f6:	3d 98       	cbi	0x07, 5	; 7
 4f8:	3c 98       	cbi	0x07, 4	; 7
 4fa:	0c 94 71 02 	jmp	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

000004fe <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>:
 4fe:	3d 98       	cbi	0x07, 5	; 7
 500:	3c 98       	cbi	0x07, 4	; 7
 502:	3d 98       	cbi	0x07, 5	; 7
 504:	3c 9a       	sbi	0x07, 4	; 7
 506:	3d 9a       	sbi	0x07, 5	; 7
 508:	3c 98       	cbi	0x07, 4	; 7
 50a:	0c 94 71 02 	jmp	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

0000050e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>:
 50e:	cf 93       	push	r28
 510:	df 93       	push	r29
 512:	d8 2f       	mov	r29, r24
 514:	c8 e0       	ldi	r28, 0x08	; 8
 516:	3d 9a       	sbi	0x07, 5	; 7
 518:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 51c:	d7 ff       	sbrs	r29, 7
 51e:	02 c0       	rjmp	.+4      	; 0x524 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x16>
 520:	3c 98       	cbi	0x07, 4	; 7
 522:	01 c0       	rjmp	.+2      	; 0x526 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x18>
 524:	3c 9a       	sbi	0x07, 4	; 7
 526:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 52a:	3d 98       	cbi	0x07, 5	; 7
 52c:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 530:	dd 0f       	add	r29, r29
 532:	c1 50       	subi	r28, 0x01	; 1
 534:	81 f7       	brne	.-32     	; 0x516 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x8>
 536:	3d 9a       	sbi	0x07, 5	; 7
 538:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 53c:	3c 98       	cbi	0x07, 4	; 7
 53e:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 542:	3d 98       	cbi	0x07, 5	; 7
 544:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 548:	c6 b1       	in	r28, 0x06	; 6
 54a:	3d 9a       	sbi	0x07, 5	; 7
 54c:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 550:	c2 95       	swap	r28
 552:	c1 70       	andi	r28, 0x01	; 1
 554:	81 e0       	ldi	r24, 0x01	; 1
 556:	8c 27       	eor	r24, r28
 558:	df 91       	pop	r29
 55a:	cf 91       	pop	r28
 55c:	08 95       	ret

0000055e <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>:
 55e:	1f 93       	push	r17
 560:	cf 93       	push	r28
 562:	df 93       	push	r29
 564:	1f 92       	push	r1
 566:	cd b7       	in	r28, 0x3d	; 61
 568:	de b7       	in	r29, 0x3e	; 62
 56a:	18 2f       	mov	r17, r24
 56c:	69 83       	std	Y+1, r22	; 0x01
 56e:	0e 94 7f 02 	call	0x4fe	; 0x4fe <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 572:	82 e7       	ldi	r24, 0x72	; 114
 574:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 578:	81 2f       	mov	r24, r17
 57a:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 57e:	69 81       	ldd	r22, Y+1	; 0x01
 580:	86 2f       	mov	r24, r22
 582:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 586:	0f 90       	pop	r0
 588:	df 91       	pop	r29
 58a:	cf 91       	pop	r28
 58c:	1f 91       	pop	r17
 58e:	0c 94 77 02 	jmp	0x4ee	; 0x4ee <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>

00000592 <_ZN9CAPDS9950C1Ev>:
 592:	fc 01       	movw	r30, r24
 594:	11 82       	std	Z+1, r1	; 0x01
 596:	10 82       	st	Z, r1
 598:	13 82       	std	Z+3, r1	; 0x03
 59a:	12 82       	std	Z+2, r1	; 0x02
 59c:	15 82       	std	Z+5, r1	; 0x05
 59e:	14 82       	std	Z+4, r1	; 0x04
 5a0:	17 82       	std	Z+7, r1	; 0x07
 5a2:	16 82       	std	Z+6, r1	; 0x06
 5a4:	11 86       	std	Z+9, r1	; 0x09
 5a6:	10 86       	std	Z+8, r1	; 0x08
 5a8:	08 95       	ret

000005aa <_ZN9CAPDS9950D1Ev>:
 5aa:	08 95       	ret

000005ac <_ZN9CAPDS99504initEv>:
 5ac:	cf 93       	push	r28
 5ae:	df 93       	push	r29
 5b0:	1f 92       	push	r1
 5b2:	cd b7       	in	r28, 0x3d	; 61
 5b4:	de b7       	in	r29, 0x3e	; 62
 5b6:	6f ef       	ldi	r22, 0xFF	; 255
 5b8:	81 e8       	ldi	r24, 0x81	; 129
 5ba:	0e 94 af 02 	call	0x55e	; 0x55e <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5be:	6f ef       	ldi	r22, 0xFF	; 255
 5c0:	83 e8       	ldi	r24, 0x83	; 131
 5c2:	0e 94 af 02 	call	0x55e	; 0x55e <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5c6:	60 e0       	ldi	r22, 0x00	; 0
 5c8:	8d e8       	ldi	r24, 0x8D	; 141
 5ca:	0e 94 af 02 	call	0x55e	; 0x55e <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5ce:	63 e0       	ldi	r22, 0x03	; 3
 5d0:	80 e8       	ldi	r24, 0x80	; 128
 5d2:	0e 94 af 02 	call	0x55e	; 0x55e <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5d6:	63 e2       	ldi	r22, 0x23	; 35
 5d8:	8f e8       	ldi	r24, 0x8F	; 143
 5da:	0e 94 af 02 	call	0x55e	; 0x55e <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5de:	0e 94 7f 02 	call	0x4fe	; 0x4fe <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 5e2:	82 e7       	ldi	r24, 0x72	; 114
 5e4:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 5e8:	82 e9       	ldi	r24, 0x92	; 146
 5ea:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 5ee:	0e 94 7f 02 	call	0x4fe	; 0x4fe <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 5f2:	83 e7       	ldi	r24, 0x73	; 115
 5f4:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 5f8:	60 e0       	ldi	r22, 0x00	; 0
 5fa:	88 e6       	ldi	r24, 0x68	; 104
 5fc:	91 e0       	ldi	r25, 0x01	; 1
 5fe:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 602:	89 83       	std	Y+1, r24	; 0x01
 604:	0e 94 77 02 	call	0x4ee	; 0x4ee <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
 608:	91 e0       	ldi	r25, 0x01	; 1
 60a:	89 81       	ldd	r24, Y+1	; 0x01
 60c:	89 36       	cpi	r24, 0x69	; 105
 60e:	09 f4       	brne	.+2      	; 0x612 <_ZN9CAPDS99504initEv+0x66>
 610:	90 e0       	ldi	r25, 0x00	; 0
 612:	89 2f       	mov	r24, r25
 614:	81 95       	neg	r24
 616:	0f 90       	pop	r0
 618:	df 91       	pop	r29
 61a:	cf 91       	pop	r28
 61c:	08 95       	ret

0000061e <_ZN9CAPDS99504readEv>:
 61e:	0f 93       	push	r16
 620:	1f 93       	push	r17
 622:	cf 93       	push	r28
 624:	df 93       	push	r29
 626:	ec 01       	movw	r28, r24
 628:	0e 94 7f 02 	call	0x4fe	; 0x4fe <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 62c:	82 e7       	ldi	r24, 0x72	; 114
 62e:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 632:	84 eb       	ldi	r24, 0xB4	; 180
 634:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 638:	0e 94 77 02 	call	0x4ee	; 0x4ee <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
 63c:	0e 94 7f 02 	call	0x4fe	; 0x4fe <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 640:	83 e7       	ldi	r24, 0x73	; 115
 642:	0e 94 87 02 	call	0x50e	; 0x50e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 646:	61 e0       	ldi	r22, 0x01	; 1
 648:	88 e6       	ldi	r24, 0x68	; 104
 64a:	91 e0       	ldi	r25, 0x01	; 1
 64c:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 650:	08 2f       	mov	r16, r24
 652:	10 e0       	ldi	r17, 0x00	; 0
 654:	61 e0       	ldi	r22, 0x01	; 1
 656:	88 e6       	ldi	r24, 0x68	; 104
 658:	91 e0       	ldi	r25, 0x01	; 1
 65a:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 65e:	18 2b       	or	r17, r24
 660:	1f 83       	std	Y+7, r17	; 0x07
 662:	0e 83       	std	Y+6, r16	; 0x06
 664:	61 e0       	ldi	r22, 0x01	; 1
 666:	88 e6       	ldi	r24, 0x68	; 104
 668:	91 e0       	ldi	r25, 0x01	; 1
 66a:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 66e:	08 2f       	mov	r16, r24
 670:	10 e0       	ldi	r17, 0x00	; 0
 672:	61 e0       	ldi	r22, 0x01	; 1
 674:	88 e6       	ldi	r24, 0x68	; 104
 676:	91 e0       	ldi	r25, 0x01	; 1
 678:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 67c:	18 2b       	or	r17, r24
 67e:	19 83       	std	Y+1, r17	; 0x01
 680:	08 83       	st	Y, r16
 682:	61 e0       	ldi	r22, 0x01	; 1
 684:	88 e6       	ldi	r24, 0x68	; 104
 686:	91 e0       	ldi	r25, 0x01	; 1
 688:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 68c:	08 2f       	mov	r16, r24
 68e:	10 e0       	ldi	r17, 0x00	; 0
 690:	61 e0       	ldi	r22, 0x01	; 1
 692:	88 e6       	ldi	r24, 0x68	; 104
 694:	91 e0       	ldi	r25, 0x01	; 1
 696:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 69a:	18 2b       	or	r17, r24
 69c:	1b 83       	std	Y+3, r17	; 0x03
 69e:	0a 83       	std	Y+2, r16	; 0x02
 6a0:	61 e0       	ldi	r22, 0x01	; 1
 6a2:	88 e6       	ldi	r24, 0x68	; 104
 6a4:	91 e0       	ldi	r25, 0x01	; 1
 6a6:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 6aa:	08 2f       	mov	r16, r24
 6ac:	10 e0       	ldi	r17, 0x00	; 0
 6ae:	61 e0       	ldi	r22, 0x01	; 1
 6b0:	88 e6       	ldi	r24, 0x68	; 104
 6b2:	91 e0       	ldi	r25, 0x01	; 1
 6b4:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 6b8:	18 2b       	or	r17, r24
 6ba:	1d 83       	std	Y+5, r17	; 0x05
 6bc:	0c 83       	std	Y+4, r16	; 0x04
 6be:	61 e0       	ldi	r22, 0x01	; 1
 6c0:	88 e6       	ldi	r24, 0x68	; 104
 6c2:	91 e0       	ldi	r25, 0x01	; 1
 6c4:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 6c8:	08 2f       	mov	r16, r24
 6ca:	10 e0       	ldi	r17, 0x00	; 0
 6cc:	60 e0       	ldi	r22, 0x00	; 0
 6ce:	88 e6       	ldi	r24, 0x68	; 104
 6d0:	91 e0       	ldi	r25, 0x01	; 1
 6d2:	0e 94 f3 00 	call	0x1e6	; 0x1e6 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 6d6:	18 2b       	or	r17, r24
 6d8:	19 87       	std	Y+9, r17	; 0x09
 6da:	08 87       	std	Y+8, r16	; 0x08
 6dc:	df 91       	pop	r29
 6de:	cf 91       	pop	r28
 6e0:	1f 91       	pop	r17
 6e2:	0f 91       	pop	r16
 6e4:	0c 94 77 02 	jmp	0x4ee	; 0x4ee <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>

000006e8 <_ZN6CUSARTC1Ev>:
 6e8:	10 92 c5 00 	sts	0x00C5, r1
 6ec:	87 e6       	ldi	r24, 0x67	; 103
 6ee:	80 93 c4 00 	sts	0x00C4, r24
 6f2:	e2 ec       	ldi	r30, 0xC2	; 194
 6f4:	f0 e0       	ldi	r31, 0x00	; 0
 6f6:	80 81       	ld	r24, Z
 6f8:	86 60       	ori	r24, 0x06	; 6
 6fa:	80 83       	st	Z, r24
 6fc:	e1 ec       	ldi	r30, 0xC1	; 193
 6fe:	f0 e0       	ldi	r31, 0x00	; 0
 700:	80 81       	ld	r24, Z
 702:	88 61       	ori	r24, 0x18	; 24
 704:	80 83       	st	Z, r24
 706:	08 95       	ret

00000708 <_ZN6CUSARTD1Ev>:
 708:	08 95       	ret

0000070a <_ZN6CUSART7putcharEc>:
 70a:	60 93 c6 00 	sts	0x00C6, r22
 70e:	80 91 c0 00 	lds	r24, 0x00C0
 712:	85 fd       	sbrc	r24, 5
 714:	02 c0       	rjmp	.+4      	; 0x71a <_ZN6CUSART7putcharEc+0x10>
 716:	00 00       	nop
 718:	fa cf       	rjmp	.-12     	; 0x70e <_ZN6CUSART7putcharEc+0x4>
 71a:	08 95       	ret

0000071c <_ZN6CTimerC1Ev>:
 71c:	80 e0       	ldi	r24, 0x00	; 0
 71e:	90 e0       	ldi	r25, 0x00	; 0
 720:	fc 01       	movw	r30, r24
 722:	23 e0       	ldi	r18, 0x03	; 3
 724:	ee 0f       	add	r30, r30
 726:	ff 1f       	adc	r31, r31
 728:	2a 95       	dec	r18
 72a:	e1 f7       	brne	.-8      	; 0x724 <_ZN6CTimerC1Ev+0x8>
 72c:	ed 5d       	subi	r30, 0xDD	; 221
 72e:	fe 4f       	sbci	r31, 0xFE	; 254
 730:	11 82       	std	Z+1, r1	; 0x01
 732:	10 82       	st	Z, r1
 734:	13 82       	std	Z+3, r1	; 0x03
 736:	12 82       	std	Z+2, r1	; 0x02
 738:	15 82       	std	Z+5, r1	; 0x05
 73a:	14 82       	std	Z+4, r1	; 0x04
 73c:	16 82       	std	Z+6, r1	; 0x06
 73e:	17 82       	std	Z+7, r1	; 0x07
 740:	01 96       	adiw	r24, 0x01	; 1
 742:	88 30       	cpi	r24, 0x08	; 8
 744:	91 05       	cpc	r25, r1
 746:	61 f7       	brne	.-40     	; 0x720 <_ZN6CTimerC1Ev+0x4>
 748:	10 92 63 01 	sts	0x0163, r1
 74c:	10 92 64 01 	sts	0x0164, r1
 750:	10 92 65 01 	sts	0x0165, r1
 754:	10 92 66 01 	sts	0x0166, r1
 758:	84 b5       	in	r24, 0x24	; 36
 75a:	82 60       	ori	r24, 0x02	; 2
 75c:	84 bd       	out	0x24, r24	; 36
 75e:	89 ef       	ldi	r24, 0xF9	; 249
 760:	87 bd       	out	0x27, r24	; 39
 762:	83 e0       	ldi	r24, 0x03	; 3
 764:	85 bd       	out	0x25, r24	; 37
 766:	80 91 6e 00 	lds	r24, 0x006E
 76a:	82 60       	ori	r24, 0x02	; 2
 76c:	80 93 6e 00 	sts	0x006E, r24
 770:	78 94       	sei
 772:	08 95       	ret

00000774 <_ZN6CTimer8add_taskEPFvvEjb>:
 774:	80 e0       	ldi	r24, 0x00	; 0
 776:	90 e0       	ldi	r25, 0x00	; 0
 778:	ef ef       	ldi	r30, 0xFF	; 255
 77a:	dc 01       	movw	r26, r24
 77c:	33 e0       	ldi	r19, 0x03	; 3
 77e:	aa 0f       	add	r26, r26
 780:	bb 1f       	adc	r27, r27
 782:	3a 95       	dec	r19
 784:	e1 f7       	brne	.-8      	; 0x77e <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 786:	ad 5d       	subi	r26, 0xDD	; 221
 788:	be 4f       	sbci	r27, 0xFE	; 254
 78a:	0d 90       	ld	r0, X+
 78c:	bc 91       	ld	r27, X
 78e:	a0 2d       	mov	r26, r0
 790:	ab 2b       	or	r26, r27
 792:	09 f4       	brne	.+2      	; 0x796 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 794:	e8 2f       	mov	r30, r24
 796:	01 96       	adiw	r24, 0x01	; 1
 798:	88 30       	cpi	r24, 0x08	; 8
 79a:	91 05       	cpc	r25, r1
 79c:	71 f7       	brne	.-36     	; 0x77a <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 79e:	ef 3f       	cpi	r30, 0xFF	; 255
 7a0:	71 f0       	breq	.+28     	; 0x7be <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 7a2:	88 e0       	ldi	r24, 0x08	; 8
 7a4:	e8 02       	muls	r30, r24
 7a6:	f0 01       	movw	r30, r0
 7a8:	11 24       	eor	r1, r1
 7aa:	ed 5d       	subi	r30, 0xDD	; 221
 7ac:	fe 4f       	sbci	r31, 0xFE	; 254
 7ae:	71 83       	std	Z+1, r23	; 0x01
 7b0:	60 83       	st	Z, r22
 7b2:	53 83       	std	Z+3, r21	; 0x03
 7b4:	42 83       	std	Z+2, r20	; 0x02
 7b6:	55 83       	std	Z+5, r21	; 0x05
 7b8:	44 83       	std	Z+4, r20	; 0x04
 7ba:	16 82       	std	Z+6, r1	; 0x06
 7bc:	27 83       	std	Z+7, r18	; 0x07
 7be:	08 95       	ret

000007c0 <_ZN6CTimer14test_and_clearEh>:
 7c0:	f8 94       	cli
 7c2:	88 e0       	ldi	r24, 0x08	; 8
 7c4:	68 9f       	mul	r22, r24
 7c6:	f0 01       	movw	r30, r0
 7c8:	11 24       	eor	r1, r1
 7ca:	ed 5d       	subi	r30, 0xDD	; 221
 7cc:	fe 4f       	sbci	r31, 0xFE	; 254
 7ce:	86 81       	ldd	r24, Z+6	; 0x06
 7d0:	88 23       	and	r24, r24
 7d2:	19 f0       	breq	.+6      	; 0x7da <_ZN6CTimer14test_and_clearEh+0x1a>
 7d4:	86 81       	ldd	r24, Z+6	; 0x06
 7d6:	16 82       	std	Z+6, r1	; 0x06
 7d8:	01 c0       	rjmp	.+2      	; 0x7dc <_ZN6CTimer14test_and_clearEh+0x1c>
 7da:	80 e0       	ldi	r24, 0x00	; 0
 7dc:	78 94       	sei
 7de:	90 e0       	ldi	r25, 0x00	; 0
 7e0:	08 95       	ret

000007e2 <_ZN6CTimer4mainEv>:
 7e2:	8c 01       	movw	r16, r24
 7e4:	f1 2c       	mov	r15, r1
 7e6:	88 e0       	ldi	r24, 0x08	; 8
 7e8:	f8 9e       	mul	r15, r24
 7ea:	e0 01       	movw	r28, r0
 7ec:	11 24       	eor	r1, r1
 7ee:	cd 5d       	subi	r28, 0xDD	; 221
 7f0:	de 4f       	sbci	r29, 0xFE	; 254
 7f2:	8f 81       	ldd	r24, Y+7	; 0x07
 7f4:	88 23       	and	r24, r24
 7f6:	69 f0       	breq	.+26     	; 0x812 <_ZN6CTimer4mainEv+0x30>
 7f8:	6f 2d       	mov	r22, r15
 7fa:	c8 01       	movw	r24, r16
 7fc:	0e 94 e0 03 	call	0x7c0	; 0x7c0 <_ZN6CTimer14test_and_clearEh>
 800:	89 2b       	or	r24, r25
 802:	39 f0       	breq	.+14     	; 0x812 <_ZN6CTimer4mainEv+0x30>
 804:	88 81       	ld	r24, Y
 806:	99 81       	ldd	r25, Y+1	; 0x01
 808:	89 2b       	or	r24, r25
 80a:	19 f0       	breq	.+6      	; 0x812 <_ZN6CTimer4mainEv+0x30>
 80c:	e8 81       	ld	r30, Y
 80e:	f9 81       	ldd	r31, Y+1	; 0x01
 810:	09 95       	icall
 812:	f3 94       	inc	r15
 814:	87 e0       	ldi	r24, 0x07	; 7
 816:	8f 15       	cp	r24, r15
 818:	28 f3       	brcs	.-54     	; 0x7e4 <_ZN6CTimer4mainEv+0x2>
 81a:	e5 cf       	rjmp	.-54     	; 0x7e6 <_ZN6CTimer4mainEv+0x4>

0000081c <__vector_14>:
 81c:	1f 92       	push	r1
 81e:	0f 92       	push	r0
 820:	0f b6       	in	r0, 0x3f	; 63
 822:	0f 92       	push	r0
 824:	11 24       	eor	r1, r1
 826:	2f 93       	push	r18
 828:	3f 93       	push	r19
 82a:	4f 93       	push	r20
 82c:	5f 93       	push	r21
 82e:	6f 93       	push	r22
 830:	7f 93       	push	r23
 832:	8f 93       	push	r24
 834:	9f 93       	push	r25
 836:	af 93       	push	r26
 838:	bf 93       	push	r27
 83a:	cf 93       	push	r28
 83c:	df 93       	push	r29
 83e:	ef 93       	push	r30
 840:	ff 93       	push	r31
 842:	c0 e0       	ldi	r28, 0x00	; 0
 844:	d0 e0       	ldi	r29, 0x00	; 0
 846:	ce 01       	movw	r24, r28
 848:	43 e0       	ldi	r20, 0x03	; 3
 84a:	88 0f       	add	r24, r24
 84c:	99 1f       	adc	r25, r25
 84e:	4a 95       	dec	r20
 850:	e1 f7       	brne	.-8      	; 0x84a <__vector_14+0x2e>
 852:	fc 01       	movw	r30, r24
 854:	ed 5d       	subi	r30, 0xDD	; 221
 856:	fe 4f       	sbci	r31, 0xFE	; 254
 858:	24 81       	ldd	r18, Z+4	; 0x04
 85a:	35 81       	ldd	r19, Z+5	; 0x05
 85c:	23 2b       	or	r18, r19
 85e:	31 f0       	breq	.+12     	; 0x86c <__vector_14+0x50>
 860:	84 81       	ldd	r24, Z+4	; 0x04
 862:	95 81       	ldd	r25, Z+5	; 0x05
 864:	01 97       	sbiw	r24, 0x01	; 1
 866:	95 83       	std	Z+5, r25	; 0x05
 868:	84 83       	std	Z+4, r24	; 0x04
 86a:	18 c0       	rjmp	.+48     	; 0x89c <__vector_14+0x80>
 86c:	22 81       	ldd	r18, Z+2	; 0x02
 86e:	33 81       	ldd	r19, Z+3	; 0x03
 870:	35 83       	std	Z+5, r19	; 0x05
 872:	24 83       	std	Z+4, r18	; 0x04
 874:	26 81       	ldd	r18, Z+6	; 0x06
 876:	2f 3f       	cpi	r18, 0xFF	; 255
 878:	19 f0       	breq	.+6      	; 0x880 <__vector_14+0x64>
 87a:	26 81       	ldd	r18, Z+6	; 0x06
 87c:	2f 5f       	subi	r18, 0xFF	; 255
 87e:	26 83       	std	Z+6, r18	; 0x06
 880:	fc 01       	movw	r30, r24
 882:	ed 5d       	subi	r30, 0xDD	; 221
 884:	fe 4f       	sbci	r31, 0xFE	; 254
 886:	87 81       	ldd	r24, Z+7	; 0x07
 888:	81 11       	cpse	r24, r1
 88a:	08 c0       	rjmp	.+16     	; 0x89c <__vector_14+0x80>
 88c:	80 81       	ld	r24, Z
 88e:	91 81       	ldd	r25, Z+1	; 0x01
 890:	89 2b       	or	r24, r25
 892:	21 f0       	breq	.+8      	; 0x89c <__vector_14+0x80>
 894:	01 90       	ld	r0, Z+
 896:	f0 81       	ld	r31, Z
 898:	e0 2d       	mov	r30, r0
 89a:	09 95       	icall
 89c:	21 96       	adiw	r28, 0x01	; 1
 89e:	c8 30       	cpi	r28, 0x08	; 8
 8a0:	d1 05       	cpc	r29, r1
 8a2:	89 f6       	brne	.-94     	; 0x846 <__vector_14+0x2a>
 8a4:	80 91 63 01 	lds	r24, 0x0163
 8a8:	90 91 64 01 	lds	r25, 0x0164
 8ac:	a0 91 65 01 	lds	r26, 0x0165
 8b0:	b0 91 66 01 	lds	r27, 0x0166
 8b4:	01 96       	adiw	r24, 0x01	; 1
 8b6:	a1 1d       	adc	r26, r1
 8b8:	b1 1d       	adc	r27, r1
 8ba:	80 93 63 01 	sts	0x0163, r24
 8be:	90 93 64 01 	sts	0x0164, r25
 8c2:	a0 93 65 01 	sts	0x0165, r26
 8c6:	b0 93 66 01 	sts	0x0166, r27
 8ca:	ff 91       	pop	r31
 8cc:	ef 91       	pop	r30
 8ce:	df 91       	pop	r29
 8d0:	cf 91       	pop	r28
 8d2:	bf 91       	pop	r27
 8d4:	af 91       	pop	r26
 8d6:	9f 91       	pop	r25
 8d8:	8f 91       	pop	r24
 8da:	7f 91       	pop	r23
 8dc:	6f 91       	pop	r22
 8de:	5f 91       	pop	r21
 8e0:	4f 91       	pop	r20
 8e2:	3f 91       	pop	r19
 8e4:	2f 91       	pop	r18
 8e6:	0f 90       	pop	r0
 8e8:	0f be       	out	0x3f, r0	; 63
 8ea:	0f 90       	pop	r0
 8ec:	1f 90       	pop	r1
 8ee:	18 95       	reti

000008f0 <_GLOBAL__sub_I_timer>:
 8f0:	87 e6       	ldi	r24, 0x67	; 103
 8f2:	91 e0       	ldi	r25, 0x01	; 1
 8f4:	0c 94 8e 03 	jmp	0x71c	; 0x71c <_ZN6CTimerC1Ev>

000008f8 <_GLOBAL__sub_I_i2c>:
 8f8:	3c 98       	cbi	0x07, 4	; 7
 8fa:	3d 98       	cbi	0x07, 5	; 7
 8fc:	44 98       	cbi	0x08, 4	; 8
 8fe:	45 98       	cbi	0x08, 5	; 8
 900:	08 95       	ret

00000902 <__udivmodhi4>:
 902:	aa 1b       	sub	r26, r26
 904:	bb 1b       	sub	r27, r27
 906:	51 e1       	ldi	r21, 0x11	; 17
 908:	07 c0       	rjmp	.+14     	; 0x918 <__udivmodhi4_ep>

0000090a <__udivmodhi4_loop>:
 90a:	aa 1f       	adc	r26, r26
 90c:	bb 1f       	adc	r27, r27
 90e:	a6 17       	cp	r26, r22
 910:	b7 07       	cpc	r27, r23
 912:	10 f0       	brcs	.+4      	; 0x918 <__udivmodhi4_ep>
 914:	a6 1b       	sub	r26, r22
 916:	b7 0b       	sbc	r27, r23

00000918 <__udivmodhi4_ep>:
 918:	88 1f       	adc	r24, r24
 91a:	99 1f       	adc	r25, r25
 91c:	5a 95       	dec	r21
 91e:	a9 f7       	brne	.-22     	; 0x90a <__udivmodhi4_loop>
 920:	80 95       	com	r24
 922:	90 95       	com	r25
 924:	bc 01       	movw	r22, r24
 926:	cd 01       	movw	r24, r26
 928:	08 95       	ret

0000092a <__divmodhi4>:
 92a:	97 fb       	bst	r25, 7
 92c:	07 2e       	mov	r0, r23
 92e:	16 f4       	brtc	.+4      	; 0x934 <__divmodhi4+0xa>
 930:	00 94       	com	r0
 932:	07 d0       	rcall	.+14     	; 0x942 <__divmodhi4_neg1>
 934:	77 fd       	sbrc	r23, 7
 936:	09 d0       	rcall	.+18     	; 0x94a <__divmodhi4_neg2>
 938:	0e 94 81 04 	call	0x902	; 0x902 <__udivmodhi4>
 93c:	07 fc       	sbrc	r0, 7
 93e:	05 d0       	rcall	.+10     	; 0x94a <__divmodhi4_neg2>
 940:	3e f4       	brtc	.+14     	; 0x950 <__divmodhi4_exit>

00000942 <__divmodhi4_neg1>:
 942:	90 95       	com	r25
 944:	81 95       	neg	r24
 946:	9f 4f       	sbci	r25, 0xFF	; 255
 948:	08 95       	ret

0000094a <__divmodhi4_neg2>:
 94a:	70 95       	com	r23
 94c:	61 95       	neg	r22
 94e:	7f 4f       	sbci	r23, 0xFF	; 255

00000950 <__divmodhi4_exit>:
 950:	08 95       	ret

00000952 <__tablejump2__>:
 952:	ee 0f       	add	r30, r30
 954:	ff 1f       	adc	r31, r31

00000956 <__tablejump__>:
 956:	05 90       	lpm	r0, Z+
 958:	f4 91       	lpm	r31, Z
 95a:	e0 2d       	mov	r30, r0
 95c:	09 94       	ijmp

0000095e <__do_global_dtors>:
 95e:	10 e0       	ldi	r17, 0x00	; 0
 960:	c2 e7       	ldi	r28, 0x72	; 114
 962:	d0 e0       	ldi	r29, 0x00	; 0
 964:	04 c0       	rjmp	.+8      	; 0x96e <__do_global_dtors+0x10>
 966:	fe 01       	movw	r30, r28
 968:	0e 94 ab 04 	call	0x956	; 0x956 <__tablejump__>
 96c:	22 96       	adiw	r28, 0x02	; 2
 96e:	c6 37       	cpi	r28, 0x76	; 118
 970:	d1 07       	cpc	r29, r17
 972:	c9 f7       	brne	.-14     	; 0x966 <__do_global_dtors+0x8>
 974:	f8 94       	cli

00000976 <__stop_program>:
 976:	ff cf       	rjmp	.-2      	; 0x976 <__stop_program>
