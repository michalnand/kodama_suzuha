
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
  38:	0c 94 05 04 	jmp	0x80a	; 0x80a <__vector_14>
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
  68:	ce 00       	.word	0x00ce	; ????
  6a:	d7 00       	.word	0x00d7	; ????
  6c:	60 02       	muls	r22, r16
  6e:	6f 04       	cpc	r6, r15
  70:	73 04       	cpc	r7, r3

00000072 <__ctors_end>:
  72:	d3 00       	.word	0x00d3	; ????
  74:	64 02       	muls	r22, r20

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
  88:	e6 e6       	ldi	r30, 0x66	; 102
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
  b4:	0e 94 a2 04 	call	0x944	; 0x944 <__tablejump__>
  b8:	c8 36       	cpi	r28, 0x68	; 104
  ba:	d1 07       	cpc	r29, r17
  bc:	c9 f7       	brne	.-14     	; 0xb0 <__do_global_ctors+0x8>
  be:	0e 94 65 00 	call	0xca	; 0xca <main>
  c2:	0c 94 a6 04 	jmp	0x94c	; 0x94c <__do_global_dtors>

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
  d8:	0e 94 06 03 	call	0x60c	; 0x60c <_ZN9CAPDS99504readEv>
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
 128:	0e 94 e2 01 	call	0x3c4	; 0x3c4 <_ZN9CTerminal6printfEPKcz>
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
 166:	20 e0       	ldi	r18, 0x00	; 0
 168:	4c e2       	ldi	r20, 0x2C	; 44
 16a:	51 e0       	ldi	r21, 0x01	; 1
 16c:	6f e9       	ldi	r22, 0x9F	; 159
 16e:	70 e0       	ldi	r23, 0x00	; 0
 170:	87 e6       	ldi	r24, 0x67	; 103
 172:	91 e0       	ldi	r25, 0x01	; 1
 174:	0e 94 b1 03 	call	0x762	; 0x762 <_ZN6CTimer8add_taskEPFvvEjb>
 178:	21 e0       	ldi	r18, 0x01	; 1
 17a:	44 ef       	ldi	r20, 0xF4	; 244
 17c:	51 e0       	ldi	r21, 0x01	; 1
 17e:	6a e6       	ldi	r22, 0x6A	; 106
 180:	70 e0       	ldi	r23, 0x00	; 0
 182:	87 e6       	ldi	r24, 0x67	; 103
 184:	91 e0       	ldi	r25, 0x01	; 1
 186:	0e 94 b1 03 	call	0x762	; 0x762 <_ZN6CTimer8add_taskEPFvvEjb>
 18a:	84 e1       	ldi	r24, 0x14	; 20
 18c:	91 e0       	ldi	r25, 0x01	; 1
 18e:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN9CAPDS99504initEv>
 192:	87 e6       	ldi	r24, 0x67	; 103
 194:	91 e0       	ldi	r25, 0x01	; 1
 196:	0e 94 e8 03 	call	0x7d0	; 0x7d0 <_ZN6CTimer4mainEv>
 19a:	fb cf       	rjmp	.-10     	; 0x192 <_Z8usr_mainv+0x2c>

0000019c <_GLOBAL__sub_I_led>:
 19c:	25 9a       	sbi	0x04, 5	; 4
 19e:	84 e1       	ldi	r24, 0x14	; 20
 1a0:	91 e0       	ldi	r25, 0x01	; 1
 1a2:	0c 94 c0 02 	jmp	0x580	; 0x580 <_ZN9CAPDS9950C1Ev>

000001a6 <_GLOBAL__sub_D_led>:
 1a6:	84 e1       	ldi	r24, 0x14	; 20
 1a8:	91 e0       	ldi	r25, 0x01	; 1
 1aa:	0c 94 cc 02 	jmp	0x598	; 0x598 <_ZN9CAPDS9950D1Ev>

000001ae <_GLOBAL__sub_I_math>:
 1ae:	81 e0       	ldi	r24, 0x01	; 1
 1b0:	90 e0       	ldi	r25, 0x00	; 0
 1b2:	90 93 1f 01 	sts	0x011F, r25
 1b6:	80 93 1e 01 	sts	0x011E, r24
 1ba:	82 e0       	ldi	r24, 0x02	; 2
 1bc:	90 e0       	ldi	r25, 0x00	; 0
 1be:	90 93 21 01 	sts	0x0121, r25
 1c2:	80 93 20 01 	sts	0x0120, r24
 1c6:	08 95       	ret

000001c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
 1d0:	00 00       	nop
 1d2:	08 95       	ret

000001d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>:
 1d4:	1f 93       	push	r17
 1d6:	cf 93       	push	r28
 1d8:	df 93       	push	r29
 1da:	16 2f       	mov	r17, r22
 1dc:	3c 98       	cbi	0x07, 4	; 7
 1de:	3d 9a       	sbi	0x07, 5	; 7
 1e0:	0e 94 e4 00 	call	0x1c8	; 0x1c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 1e4:	d8 e0       	ldi	r29, 0x08	; 8
 1e6:	c0 e0       	ldi	r28, 0x00	; 0
 1e8:	cc 0f       	add	r28, r28
 1ea:	3d 98       	cbi	0x07, 5	; 7
 1ec:	0e 94 e4 00 	call	0x1c8	; 0x1c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 1f0:	34 99       	sbic	0x06, 4	; 6
 1f2:	c1 60       	ori	r28, 0x01	; 1
 1f4:	3d 9a       	sbi	0x07, 5	; 7
 1f6:	0e 94 e4 00 	call	0x1c8	; 0x1c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 1fa:	d1 50       	subi	r29, 0x01	; 1
 1fc:	a9 f7       	brne	.-22     	; 0x1e8 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x14>
 1fe:	11 23       	and	r17, r17
 200:	11 f0       	breq	.+4      	; 0x206 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x32>
 202:	3c 9a       	sbi	0x07, 4	; 7
 204:	01 c0       	rjmp	.+2      	; 0x208 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x34>
 206:	3c 98       	cbi	0x07, 4	; 7
 208:	0e 94 e4 00 	call	0x1c8	; 0x1c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 20c:	3d 98       	cbi	0x07, 5	; 7
 20e:	0e 94 e4 00 	call	0x1c8	; 0x1c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 212:	3d 9a       	sbi	0x07, 5	; 7
 214:	0e 94 e4 00 	call	0x1c8	; 0x1c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 218:	3c 98       	cbi	0x07, 4	; 7
 21a:	0e 94 e4 00 	call	0x1c8	; 0x1c8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 21e:	8c 2f       	mov	r24, r28
 220:	df 91       	pop	r29
 222:	cf 91       	pop	r28
 224:	1f 91       	pop	r17
 226:	08 95       	ret

00000228 <_ZN9CTerminal4putsEPc>:
 228:	0f 93       	push	r16
 22a:	1f 93       	push	r17
 22c:	cf 93       	push	r28
 22e:	df 93       	push	r29
 230:	8c 01       	movw	r16, r24
 232:	eb 01       	movw	r28, r22
 234:	69 91       	ld	r22, Y+
 236:	66 23       	and	r22, r22
 238:	21 f0       	breq	.+8      	; 0x242 <_ZN9CTerminal4putsEPc+0x1a>
 23a:	c8 01       	movw	r24, r16
 23c:	0e 94 7c 03 	call	0x6f8	; 0x6f8 <_ZN6CUSART7putcharEc>
 240:	f9 cf       	rjmp	.-14     	; 0x234 <_ZN9CTerminal4putsEPc+0xc>
 242:	df 91       	pop	r29
 244:	cf 91       	pop	r28
 246:	1f 91       	pop	r17
 248:	0f 91       	pop	r16
 24a:	08 95       	ret

0000024c <_ZN9CTerminal4putiEi>:
 24c:	df 92       	push	r13
 24e:	ef 92       	push	r14
 250:	ff 92       	push	r15
 252:	0f 93       	push	r16
 254:	1f 93       	push	r17
 256:	cf 93       	push	r28
 258:	df 93       	push	r29
 25a:	cd b7       	in	r28, 0x3d	; 61
 25c:	de b7       	in	r29, 0x3e	; 62
 25e:	2c 97       	sbiw	r28, 0x0c	; 12
 260:	0f b6       	in	r0, 0x3f	; 63
 262:	f8 94       	cli
 264:	de bf       	out	0x3e, r29	; 62
 266:	0f be       	out	0x3f, r0	; 63
 268:	cd bf       	out	0x3d, r28	; 61
 26a:	fc 01       	movw	r30, r24
 26c:	9b 01       	movw	r18, r22
 26e:	77 ff       	sbrs	r23, 7
 270:	06 c0       	rjmp	.+12     	; 0x27e <_ZN9CTerminal4putiEi+0x32>
 272:	31 95       	neg	r19
 274:	21 95       	neg	r18
 276:	31 09       	sbc	r19, r1
 278:	dd 24       	eor	r13, r13
 27a:	d3 94       	inc	r13
 27c:	01 c0       	rjmp	.+2      	; 0x280 <_ZN9CTerminal4putiEi+0x34>
 27e:	d1 2c       	mov	r13, r1
 280:	1c 86       	std	Y+12, r1	; 0x0c
 282:	4a e0       	ldi	r20, 0x0A	; 10
 284:	0a e0       	ldi	r16, 0x0A	; 10
 286:	10 e0       	ldi	r17, 0x00	; 0
 288:	ee 24       	eor	r14, r14
 28a:	e3 94       	inc	r14
 28c:	f1 2c       	mov	r15, r1
 28e:	ec 0e       	add	r14, r28
 290:	fd 1e       	adc	r15, r29
 292:	e4 0e       	add	r14, r20
 294:	f1 1c       	adc	r15, r1
 296:	c9 01       	movw	r24, r18
 298:	b8 01       	movw	r22, r16
 29a:	0e 94 8c 04 	call	0x918	; 0x918 <__divmodhi4>
 29e:	80 5d       	subi	r24, 0xD0	; 208
 2a0:	d7 01       	movw	r26, r14
 2a2:	8c 93       	st	X, r24
 2a4:	9b 01       	movw	r18, r22
 2a6:	8f ef       	ldi	r24, 0xFF	; 255
 2a8:	84 0f       	add	r24, r20
 2aa:	61 15       	cp	r22, r1
 2ac:	71 05       	cpc	r23, r1
 2ae:	11 f0       	breq	.+4      	; 0x2b4 <_ZN9CTerminal4putiEi+0x68>
 2b0:	48 2f       	mov	r20, r24
 2b2:	ea cf       	rjmp	.-44     	; 0x288 <_ZN9CTerminal4putiEi+0x3c>
 2b4:	dd 20       	and	r13, r13
 2b6:	49 f0       	breq	.+18     	; 0x2ca <_ZN9CTerminal4putiEi+0x7e>
 2b8:	a1 e0       	ldi	r26, 0x01	; 1
 2ba:	b0 e0       	ldi	r27, 0x00	; 0
 2bc:	ac 0f       	add	r26, r28
 2be:	bd 1f       	adc	r27, r29
 2c0:	a8 0f       	add	r26, r24
 2c2:	b1 1d       	adc	r27, r1
 2c4:	9d e2       	ldi	r25, 0x2D	; 45
 2c6:	9c 93       	st	X, r25
 2c8:	48 2f       	mov	r20, r24
 2ca:	61 e0       	ldi	r22, 0x01	; 1
 2cc:	70 e0       	ldi	r23, 0x00	; 0
 2ce:	6c 0f       	add	r22, r28
 2d0:	7d 1f       	adc	r23, r29
 2d2:	64 0f       	add	r22, r20
 2d4:	71 1d       	adc	r23, r1
 2d6:	cf 01       	movw	r24, r30
 2d8:	0e 94 14 01 	call	0x228	; 0x228 <_ZN9CTerminal4putsEPc>
 2dc:	2c 96       	adiw	r28, 0x0c	; 12
 2de:	0f b6       	in	r0, 0x3f	; 63
 2e0:	f8 94       	cli
 2e2:	de bf       	out	0x3e, r29	; 62
 2e4:	0f be       	out	0x3f, r0	; 63
 2e6:	cd bf       	out	0x3d, r28	; 61
 2e8:	df 91       	pop	r29
 2ea:	cf 91       	pop	r28
 2ec:	1f 91       	pop	r17
 2ee:	0f 91       	pop	r16
 2f0:	ff 90       	pop	r15
 2f2:	ef 90       	pop	r14
 2f4:	df 90       	pop	r13
 2f6:	08 95       	ret

000002f8 <_ZN9CTerminal5putuiEj>:
 2f8:	0f 93       	push	r16
 2fa:	1f 93       	push	r17
 2fc:	cf 93       	push	r28
 2fe:	df 93       	push	r29
 300:	cd b7       	in	r28, 0x3d	; 61
 302:	de b7       	in	r29, 0x3e	; 62
 304:	2c 97       	sbiw	r28, 0x0c	; 12
 306:	0f b6       	in	r0, 0x3f	; 63
 308:	f8 94       	cli
 30a:	de bf       	out	0x3e, r29	; 62
 30c:	0f be       	out	0x3f, r0	; 63
 30e:	cd bf       	out	0x3d, r28	; 61
 310:	8c 01       	movw	r16, r24
 312:	cb 01       	movw	r24, r22
 314:	1c 86       	std	Y+12, r1	; 0x0c
 316:	4a e0       	ldi	r20, 0x0A	; 10
 318:	2a e0       	ldi	r18, 0x0A	; 10
 31a:	30 e0       	ldi	r19, 0x00	; 0
 31c:	e1 e0       	ldi	r30, 0x01	; 1
 31e:	f0 e0       	ldi	r31, 0x00	; 0
 320:	ec 0f       	add	r30, r28
 322:	fd 1f       	adc	r31, r29
 324:	e4 0f       	add	r30, r20
 326:	f1 1d       	adc	r31, r1
 328:	b9 01       	movw	r22, r18
 32a:	0e 94 78 04 	call	0x8f0	; 0x8f0 <__udivmodhi4>
 32e:	80 5d       	subi	r24, 0xD0	; 208
 330:	80 83       	st	Z, r24
 332:	cb 01       	movw	r24, r22
 334:	41 50       	subi	r20, 0x01	; 1
 336:	00 97       	sbiw	r24, 0x00	; 0
 338:	89 f7       	brne	.-30     	; 0x31c <_ZN9CTerminal5putuiEj+0x24>
 33a:	bf 01       	movw	r22, r30
 33c:	c8 01       	movw	r24, r16
 33e:	0e 94 14 01 	call	0x228	; 0x228 <_ZN9CTerminal4putsEPc>
 342:	2c 96       	adiw	r28, 0x0c	; 12
 344:	0f b6       	in	r0, 0x3f	; 63
 346:	f8 94       	cli
 348:	de bf       	out	0x3e, r29	; 62
 34a:	0f be       	out	0x3f, r0	; 63
 34c:	cd bf       	out	0x3d, r28	; 61
 34e:	df 91       	pop	r29
 350:	cf 91       	pop	r28
 352:	1f 91       	pop	r17
 354:	0f 91       	pop	r16
 356:	08 95       	ret

00000358 <_ZN9CTerminal4putxEj>:
 358:	cf 93       	push	r28
 35a:	df 93       	push	r29
 35c:	cd b7       	in	r28, 0x3d	; 61
 35e:	de b7       	in	r29, 0x3e	; 62
 360:	2c 97       	sbiw	r28, 0x0c	; 12
 362:	0f b6       	in	r0, 0x3f	; 63
 364:	f8 94       	cli
 366:	de bf       	out	0x3e, r29	; 62
 368:	0f be       	out	0x3f, r0	; 63
 36a:	cd bf       	out	0x3d, r28	; 61
 36c:	1c 86       	std	Y+12, r1	; 0x0c
 36e:	4a e0       	ldi	r20, 0x0A	; 10
 370:	56 2f       	mov	r21, r22
 372:	5f 70       	andi	r21, 0x0F	; 15
 374:	24 2f       	mov	r18, r20
 376:	30 e0       	ldi	r19, 0x00	; 0
 378:	e1 e0       	ldi	r30, 0x01	; 1
 37a:	f0 e0       	ldi	r31, 0x00	; 0
 37c:	ec 0f       	add	r30, r28
 37e:	fd 1f       	adc	r31, r29
 380:	e2 0f       	add	r30, r18
 382:	f3 1f       	adc	r31, r19
 384:	5a 30       	cpi	r21, 0x0A	; 10
 386:	14 f4       	brge	.+4      	; 0x38c <_ZN9CTerminal4putxEj+0x34>
 388:	50 5d       	subi	r21, 0xD0	; 208
 38a:	01 c0       	rjmp	.+2      	; 0x38e <_ZN9CTerminal4putxEj+0x36>
 38c:	59 5a       	subi	r21, 0xA9	; 169
 38e:	50 83       	st	Z, r21
 390:	54 e0       	ldi	r21, 0x04	; 4
 392:	76 95       	lsr	r23
 394:	67 95       	ror	r22
 396:	5a 95       	dec	r21
 398:	e1 f7       	brne	.-8      	; 0x392 <_ZN9CTerminal4putxEj+0x3a>
 39a:	41 50       	subi	r20, 0x01	; 1
 39c:	61 15       	cp	r22, r1
 39e:	71 05       	cpc	r23, r1
 3a0:	39 f7       	brne	.-50     	; 0x370 <_ZN9CTerminal4putxEj+0x18>
 3a2:	61 e0       	ldi	r22, 0x01	; 1
 3a4:	70 e0       	ldi	r23, 0x00	; 0
 3a6:	6c 0f       	add	r22, r28
 3a8:	7d 1f       	adc	r23, r29
 3aa:	62 0f       	add	r22, r18
 3ac:	73 1f       	adc	r23, r19
 3ae:	0e 94 14 01 	call	0x228	; 0x228 <_ZN9CTerminal4putsEPc>
 3b2:	2c 96       	adiw	r28, 0x0c	; 12
 3b4:	0f b6       	in	r0, 0x3f	; 63
 3b6:	f8 94       	cli
 3b8:	de bf       	out	0x3e, r29	; 62
 3ba:	0f be       	out	0x3f, r0	; 63
 3bc:	cd bf       	out	0x3d, r28	; 61
 3be:	df 91       	pop	r29
 3c0:	cf 91       	pop	r28
 3c2:	08 95       	ret

000003c4 <_ZN9CTerminal6printfEPKcz>:
 3c4:	af 92       	push	r10
 3c6:	bf 92       	push	r11
 3c8:	cf 92       	push	r12
 3ca:	df 92       	push	r13
 3cc:	ef 92       	push	r14
 3ce:	ff 92       	push	r15
 3d0:	0f 93       	push	r16
 3d2:	1f 93       	push	r17
 3d4:	cf 93       	push	r28
 3d6:	df 93       	push	r29
 3d8:	cd b7       	in	r28, 0x3d	; 61
 3da:	de b7       	in	r29, 0x3e	; 62
 3dc:	ed 84       	ldd	r14, Y+13	; 0x0d
 3de:	fe 84       	ldd	r15, Y+14	; 0x0e
 3e0:	8e 01       	movw	r16, r28
 3e2:	0f 5e       	subi	r16, 0xEF	; 239
 3e4:	1f 4f       	sbci	r17, 0xFF	; 255
 3e6:	c1 2c       	mov	r12, r1
 3e8:	d1 2c       	mov	r13, r1
 3ea:	ef 85       	ldd	r30, Y+15	; 0x0f
 3ec:	f8 89       	ldd	r31, Y+16	; 0x10
 3ee:	ec 0d       	add	r30, r12
 3f0:	fd 1d       	adc	r31, r13
 3f2:	60 81       	ld	r22, Z
 3f4:	66 23       	and	r22, r22
 3f6:	09 f4       	brne	.+2      	; 0x3fa <_ZN9CTerminal6printfEPKcz+0x36>
 3f8:	58 c0       	rjmp	.+176    	; 0x4aa <_ZN9CTerminal6printfEPKcz+0xe6>
 3fa:	65 32       	cpi	r22, 0x25	; 37
 3fc:	39 f0       	breq	.+14     	; 0x40c <_ZN9CTerminal6printfEPKcz+0x48>
 3fe:	c7 01       	movw	r24, r14
 400:	0e 94 7c 03 	call	0x6f8	; 0x6f8 <_ZN6CUSART7putcharEc>
 404:	8f ef       	ldi	r24, 0xFF	; 255
 406:	c8 1a       	sub	r12, r24
 408:	d8 0a       	sbc	r13, r24
 40a:	ef cf       	rjmp	.-34     	; 0x3ea <_ZN9CTerminal6printfEPKcz+0x26>
 40c:	81 81       	ldd	r24, Z+1	; 0x01
 40e:	89 36       	cpi	r24, 0x69	; 105
 410:	11 f1       	breq	.+68     	; 0x456 <_ZN9CTerminal6printfEPKcz+0x92>
 412:	84 f4       	brge	.+32     	; 0x434 <_ZN9CTerminal6printfEPKcz+0x70>
 414:	85 32       	cpi	r24, 0x25	; 37
 416:	09 f4       	brne	.+2      	; 0x41a <_ZN9CTerminal6printfEPKcz+0x56>
 418:	40 c0       	rjmp	.+128    	; 0x49a <_ZN9CTerminal6printfEPKcz+0xd6>
 41a:	83 36       	cpi	r24, 0x63	; 99
 41c:	09 f0       	breq	.+2      	; 0x420 <_ZN9CTerminal6printfEPKcz+0x5c>
 41e:	41 c0       	rjmp	.+130    	; 0x4a2 <_ZN9CTerminal6printfEPKcz+0xde>
 420:	58 01       	movw	r10, r16
 422:	f2 e0       	ldi	r31, 0x02	; 2
 424:	af 0e       	add	r10, r31
 426:	b1 1c       	adc	r11, r1
 428:	f8 01       	movw	r30, r16
 42a:	60 81       	ld	r22, Z
 42c:	c7 01       	movw	r24, r14
 42e:	0e 94 7c 03 	call	0x6f8	; 0x6f8 <_ZN6CUSART7putcharEc>
 432:	26 c0       	rjmp	.+76     	; 0x480 <_ZN9CTerminal6printfEPKcz+0xbc>
 434:	85 37       	cpi	r24, 0x75	; 117
 436:	d1 f0       	breq	.+52     	; 0x46c <_ZN9CTerminal6printfEPKcz+0xa8>
 438:	88 37       	cpi	r24, 0x78	; 120
 43a:	21 f1       	breq	.+72     	; 0x484 <_ZN9CTerminal6printfEPKcz+0xc0>
 43c:	83 37       	cpi	r24, 0x73	; 115
 43e:	89 f5       	brne	.+98     	; 0x4a2 <_ZN9CTerminal6printfEPKcz+0xde>
 440:	58 01       	movw	r10, r16
 442:	f2 e0       	ldi	r31, 0x02	; 2
 444:	af 0e       	add	r10, r31
 446:	b1 1c       	adc	r11, r1
 448:	f8 01       	movw	r30, r16
 44a:	60 81       	ld	r22, Z
 44c:	71 81       	ldd	r23, Z+1	; 0x01
 44e:	c7 01       	movw	r24, r14
 450:	0e 94 14 01 	call	0x228	; 0x228 <_ZN9CTerminal4putsEPc>
 454:	15 c0       	rjmp	.+42     	; 0x480 <_ZN9CTerminal6printfEPKcz+0xbc>
 456:	58 01       	movw	r10, r16
 458:	92 e0       	ldi	r25, 0x02	; 2
 45a:	a9 0e       	add	r10, r25
 45c:	b1 1c       	adc	r11, r1
 45e:	f8 01       	movw	r30, r16
 460:	60 81       	ld	r22, Z
 462:	71 81       	ldd	r23, Z+1	; 0x01
 464:	c7 01       	movw	r24, r14
 466:	0e 94 26 01 	call	0x24c	; 0x24c <_ZN9CTerminal4putiEi>
 46a:	0a c0       	rjmp	.+20     	; 0x480 <_ZN9CTerminal6printfEPKcz+0xbc>
 46c:	58 01       	movw	r10, r16
 46e:	f2 e0       	ldi	r31, 0x02	; 2
 470:	af 0e       	add	r10, r31
 472:	b1 1c       	adc	r11, r1
 474:	f8 01       	movw	r30, r16
 476:	60 81       	ld	r22, Z
 478:	71 81       	ldd	r23, Z+1	; 0x01
 47a:	c7 01       	movw	r24, r14
 47c:	0e 94 7c 01 	call	0x2f8	; 0x2f8 <_ZN9CTerminal5putuiEj>
 480:	85 01       	movw	r16, r10
 482:	0f c0       	rjmp	.+30     	; 0x4a2 <_ZN9CTerminal6printfEPKcz+0xde>
 484:	58 01       	movw	r10, r16
 486:	f2 e0       	ldi	r31, 0x02	; 2
 488:	af 0e       	add	r10, r31
 48a:	b1 1c       	adc	r11, r1
 48c:	f8 01       	movw	r30, r16
 48e:	60 81       	ld	r22, Z
 490:	71 81       	ldd	r23, Z+1	; 0x01
 492:	c7 01       	movw	r24, r14
 494:	0e 94 ac 01 	call	0x358	; 0x358 <_ZN9CTerminal4putxEj>
 498:	f3 cf       	rjmp	.-26     	; 0x480 <_ZN9CTerminal6printfEPKcz+0xbc>
 49a:	65 e2       	ldi	r22, 0x25	; 37
 49c:	c7 01       	movw	r24, r14
 49e:	0e 94 7c 03 	call	0x6f8	; 0x6f8 <_ZN6CUSART7putcharEc>
 4a2:	f2 e0       	ldi	r31, 0x02	; 2
 4a4:	cf 0e       	add	r12, r31
 4a6:	d1 1c       	adc	r13, r1
 4a8:	a0 cf       	rjmp	.-192    	; 0x3ea <_ZN9CTerminal6printfEPKcz+0x26>
 4aa:	df 91       	pop	r29
 4ac:	cf 91       	pop	r28
 4ae:	1f 91       	pop	r17
 4b0:	0f 91       	pop	r16
 4b2:	ff 90       	pop	r15
 4b4:	ef 90       	pop	r14
 4b6:	df 90       	pop	r13
 4b8:	cf 90       	pop	r12
 4ba:	bf 90       	pop	r11
 4bc:	af 90       	pop	r10
 4be:	08 95       	ret

000004c0 <_GLOBAL__sub_I_terminal>:
 4c0:	82 e2       	ldi	r24, 0x22	; 34
 4c2:	91 e0       	ldi	r25, 0x01	; 1
 4c4:	0c 94 6b 03 	jmp	0x6d6	; 0x6d6 <_ZN6CUSARTC1Ev>

000004c8 <_GLOBAL__sub_D_terminal>:
 4c8:	82 e2       	ldi	r24, 0x22	; 34
 4ca:	91 e0       	ldi	r25, 0x01	; 1
 4cc:	0c 94 7b 03 	jmp	0x6f6	; 0x6f6 <_ZN6CUSARTD1Ev>

000004d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
 4d8:	00 00       	nop
 4da:	08 95       	ret

000004dc <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>:
 4dc:	3d 9a       	sbi	0x07, 5	; 7
 4de:	3c 9a       	sbi	0x07, 4	; 7
 4e0:	3d 98       	cbi	0x07, 5	; 7
 4e2:	3c 9a       	sbi	0x07, 4	; 7
 4e4:	3d 98       	cbi	0x07, 5	; 7
 4e6:	3c 98       	cbi	0x07, 4	; 7
 4e8:	0c 94 68 02 	jmp	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

000004ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>:
 4ec:	3d 98       	cbi	0x07, 5	; 7
 4ee:	3c 98       	cbi	0x07, 4	; 7
 4f0:	3d 98       	cbi	0x07, 5	; 7
 4f2:	3c 9a       	sbi	0x07, 4	; 7
 4f4:	3d 9a       	sbi	0x07, 5	; 7
 4f6:	3c 98       	cbi	0x07, 4	; 7
 4f8:	0c 94 68 02 	jmp	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

000004fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>:
 4fc:	cf 93       	push	r28
 4fe:	df 93       	push	r29
 500:	d8 2f       	mov	r29, r24
 502:	c8 e0       	ldi	r28, 0x08	; 8
 504:	3d 9a       	sbi	0x07, 5	; 7
 506:	0e 94 68 02 	call	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 50a:	d7 ff       	sbrs	r29, 7
 50c:	02 c0       	rjmp	.+4      	; 0x512 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x16>
 50e:	3c 98       	cbi	0x07, 4	; 7
 510:	01 c0       	rjmp	.+2      	; 0x514 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x18>
 512:	3c 9a       	sbi	0x07, 4	; 7
 514:	0e 94 68 02 	call	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 518:	3d 98       	cbi	0x07, 5	; 7
 51a:	0e 94 68 02 	call	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 51e:	dd 0f       	add	r29, r29
 520:	c1 50       	subi	r28, 0x01	; 1
 522:	81 f7       	brne	.-32     	; 0x504 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x8>
 524:	3d 9a       	sbi	0x07, 5	; 7
 526:	0e 94 68 02 	call	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 52a:	3c 98       	cbi	0x07, 4	; 7
 52c:	0e 94 68 02 	call	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 530:	3d 98       	cbi	0x07, 5	; 7
 532:	0e 94 68 02 	call	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 536:	c6 b1       	in	r28, 0x06	; 6
 538:	3d 9a       	sbi	0x07, 5	; 7
 53a:	0e 94 68 02 	call	0x4d0	; 0x4d0 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
 53e:	c2 95       	swap	r28
 540:	c1 70       	andi	r28, 0x01	; 1
 542:	81 e0       	ldi	r24, 0x01	; 1
 544:	8c 27       	eor	r24, r28
 546:	df 91       	pop	r29
 548:	cf 91       	pop	r28
 54a:	08 95       	ret

0000054c <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>:
 54c:	1f 93       	push	r17
 54e:	cf 93       	push	r28
 550:	df 93       	push	r29
 552:	1f 92       	push	r1
 554:	cd b7       	in	r28, 0x3d	; 61
 556:	de b7       	in	r29, 0x3e	; 62
 558:	18 2f       	mov	r17, r24
 55a:	69 83       	std	Y+1, r22	; 0x01
 55c:	0e 94 76 02 	call	0x4ec	; 0x4ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 560:	82 e7       	ldi	r24, 0x72	; 114
 562:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 566:	81 2f       	mov	r24, r17
 568:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 56c:	69 81       	ldd	r22, Y+1	; 0x01
 56e:	86 2f       	mov	r24, r22
 570:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 574:	0f 90       	pop	r0
 576:	df 91       	pop	r29
 578:	cf 91       	pop	r28
 57a:	1f 91       	pop	r17
 57c:	0c 94 6e 02 	jmp	0x4dc	; 0x4dc <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>

00000580 <_ZN9CAPDS9950C1Ev>:
 580:	fc 01       	movw	r30, r24
 582:	11 82       	std	Z+1, r1	; 0x01
 584:	10 82       	st	Z, r1
 586:	13 82       	std	Z+3, r1	; 0x03
 588:	12 82       	std	Z+2, r1	; 0x02
 58a:	15 82       	std	Z+5, r1	; 0x05
 58c:	14 82       	std	Z+4, r1	; 0x04
 58e:	17 82       	std	Z+7, r1	; 0x07
 590:	16 82       	std	Z+6, r1	; 0x06
 592:	11 86       	std	Z+9, r1	; 0x09
 594:	10 86       	std	Z+8, r1	; 0x08
 596:	08 95       	ret

00000598 <_ZN9CAPDS9950D1Ev>:
 598:	08 95       	ret

0000059a <_ZN9CAPDS99504initEv>:
 59a:	cf 93       	push	r28
 59c:	df 93       	push	r29
 59e:	1f 92       	push	r1
 5a0:	cd b7       	in	r28, 0x3d	; 61
 5a2:	de b7       	in	r29, 0x3e	; 62
 5a4:	6f ef       	ldi	r22, 0xFF	; 255
 5a6:	81 e8       	ldi	r24, 0x81	; 129
 5a8:	0e 94 a6 02 	call	0x54c	; 0x54c <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5ac:	6f ef       	ldi	r22, 0xFF	; 255
 5ae:	83 e8       	ldi	r24, 0x83	; 131
 5b0:	0e 94 a6 02 	call	0x54c	; 0x54c <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5b4:	60 e0       	ldi	r22, 0x00	; 0
 5b6:	8d e8       	ldi	r24, 0x8D	; 141
 5b8:	0e 94 a6 02 	call	0x54c	; 0x54c <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5bc:	63 e0       	ldi	r22, 0x03	; 3
 5be:	80 e8       	ldi	r24, 0x80	; 128
 5c0:	0e 94 a6 02 	call	0x54c	; 0x54c <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5c4:	63 e2       	ldi	r22, 0x23	; 35
 5c6:	8f e8       	ldi	r24, 0x8F	; 143
 5c8:	0e 94 a6 02 	call	0x54c	; 0x54c <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
 5cc:	0e 94 76 02 	call	0x4ec	; 0x4ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 5d0:	82 e7       	ldi	r24, 0x72	; 114
 5d2:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 5d6:	82 e9       	ldi	r24, 0x92	; 146
 5d8:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 5dc:	0e 94 76 02 	call	0x4ec	; 0x4ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 5e0:	83 e7       	ldi	r24, 0x73	; 115
 5e2:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 5e6:	60 e0       	ldi	r22, 0x00	; 0
 5e8:	88 e6       	ldi	r24, 0x68	; 104
 5ea:	91 e0       	ldi	r25, 0x01	; 1
 5ec:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 5f0:	89 83       	std	Y+1, r24	; 0x01
 5f2:	0e 94 6e 02 	call	0x4dc	; 0x4dc <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
 5f6:	91 e0       	ldi	r25, 0x01	; 1
 5f8:	89 81       	ldd	r24, Y+1	; 0x01
 5fa:	89 36       	cpi	r24, 0x69	; 105
 5fc:	09 f4       	brne	.+2      	; 0x600 <_ZN9CAPDS99504initEv+0x66>
 5fe:	90 e0       	ldi	r25, 0x00	; 0
 600:	89 2f       	mov	r24, r25
 602:	81 95       	neg	r24
 604:	0f 90       	pop	r0
 606:	df 91       	pop	r29
 608:	cf 91       	pop	r28
 60a:	08 95       	ret

0000060c <_ZN9CAPDS99504readEv>:
 60c:	0f 93       	push	r16
 60e:	1f 93       	push	r17
 610:	cf 93       	push	r28
 612:	df 93       	push	r29
 614:	ec 01       	movw	r28, r24
 616:	0e 94 76 02 	call	0x4ec	; 0x4ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 61a:	82 e7       	ldi	r24, 0x72	; 114
 61c:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 620:	84 eb       	ldi	r24, 0xB4	; 180
 622:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 626:	0e 94 6e 02 	call	0x4dc	; 0x4dc <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
 62a:	0e 94 76 02 	call	0x4ec	; 0x4ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
 62e:	83 e7       	ldi	r24, 0x73	; 115
 630:	0e 94 7e 02 	call	0x4fc	; 0x4fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
 634:	61 e0       	ldi	r22, 0x01	; 1
 636:	88 e6       	ldi	r24, 0x68	; 104
 638:	91 e0       	ldi	r25, 0x01	; 1
 63a:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 63e:	08 2f       	mov	r16, r24
 640:	10 e0       	ldi	r17, 0x00	; 0
 642:	61 e0       	ldi	r22, 0x01	; 1
 644:	88 e6       	ldi	r24, 0x68	; 104
 646:	91 e0       	ldi	r25, 0x01	; 1
 648:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 64c:	18 2b       	or	r17, r24
 64e:	1f 83       	std	Y+7, r17	; 0x07
 650:	0e 83       	std	Y+6, r16	; 0x06
 652:	61 e0       	ldi	r22, 0x01	; 1
 654:	88 e6       	ldi	r24, 0x68	; 104
 656:	91 e0       	ldi	r25, 0x01	; 1
 658:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 65c:	08 2f       	mov	r16, r24
 65e:	10 e0       	ldi	r17, 0x00	; 0
 660:	61 e0       	ldi	r22, 0x01	; 1
 662:	88 e6       	ldi	r24, 0x68	; 104
 664:	91 e0       	ldi	r25, 0x01	; 1
 666:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 66a:	18 2b       	or	r17, r24
 66c:	19 83       	std	Y+1, r17	; 0x01
 66e:	08 83       	st	Y, r16
 670:	61 e0       	ldi	r22, 0x01	; 1
 672:	88 e6       	ldi	r24, 0x68	; 104
 674:	91 e0       	ldi	r25, 0x01	; 1
 676:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 67a:	08 2f       	mov	r16, r24
 67c:	10 e0       	ldi	r17, 0x00	; 0
 67e:	61 e0       	ldi	r22, 0x01	; 1
 680:	88 e6       	ldi	r24, 0x68	; 104
 682:	91 e0       	ldi	r25, 0x01	; 1
 684:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 688:	18 2b       	or	r17, r24
 68a:	1b 83       	std	Y+3, r17	; 0x03
 68c:	0a 83       	std	Y+2, r16	; 0x02
 68e:	61 e0       	ldi	r22, 0x01	; 1
 690:	88 e6       	ldi	r24, 0x68	; 104
 692:	91 e0       	ldi	r25, 0x01	; 1
 694:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 698:	08 2f       	mov	r16, r24
 69a:	10 e0       	ldi	r17, 0x00	; 0
 69c:	61 e0       	ldi	r22, 0x01	; 1
 69e:	88 e6       	ldi	r24, 0x68	; 104
 6a0:	91 e0       	ldi	r25, 0x01	; 1
 6a2:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 6a6:	18 2b       	or	r17, r24
 6a8:	1d 83       	std	Y+5, r17	; 0x05
 6aa:	0c 83       	std	Y+4, r16	; 0x04
 6ac:	61 e0       	ldi	r22, 0x01	; 1
 6ae:	88 e6       	ldi	r24, 0x68	; 104
 6b0:	91 e0       	ldi	r25, 0x01	; 1
 6b2:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 6b6:	08 2f       	mov	r16, r24
 6b8:	10 e0       	ldi	r17, 0x00	; 0
 6ba:	60 e0       	ldi	r22, 0x00	; 0
 6bc:	88 e6       	ldi	r24, 0x68	; 104
 6be:	91 e0       	ldi	r25, 0x01	; 1
 6c0:	0e 94 ea 00 	call	0x1d4	; 0x1d4 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
 6c4:	18 2b       	or	r17, r24
 6c6:	19 87       	std	Y+9, r17	; 0x09
 6c8:	08 87       	std	Y+8, r16	; 0x08
 6ca:	df 91       	pop	r29
 6cc:	cf 91       	pop	r28
 6ce:	1f 91       	pop	r17
 6d0:	0f 91       	pop	r16
 6d2:	0c 94 6e 02 	jmp	0x4dc	; 0x4dc <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>

000006d6 <_ZN6CUSARTC1Ev>:
 6d6:	10 92 c5 00 	sts	0x00C5, r1
 6da:	87 e6       	ldi	r24, 0x67	; 103
 6dc:	80 93 c4 00 	sts	0x00C4, r24
 6e0:	e2 ec       	ldi	r30, 0xC2	; 194
 6e2:	f0 e0       	ldi	r31, 0x00	; 0
 6e4:	80 81       	ld	r24, Z
 6e6:	86 60       	ori	r24, 0x06	; 6
 6e8:	80 83       	st	Z, r24
 6ea:	e1 ec       	ldi	r30, 0xC1	; 193
 6ec:	f0 e0       	ldi	r31, 0x00	; 0
 6ee:	80 81       	ld	r24, Z
 6f0:	88 61       	ori	r24, 0x18	; 24
 6f2:	80 83       	st	Z, r24
 6f4:	08 95       	ret

000006f6 <_ZN6CUSARTD1Ev>:
 6f6:	08 95       	ret

000006f8 <_ZN6CUSART7putcharEc>:
 6f8:	60 93 c6 00 	sts	0x00C6, r22
 6fc:	80 91 c0 00 	lds	r24, 0x00C0
 700:	85 fd       	sbrc	r24, 5
 702:	02 c0       	rjmp	.+4      	; 0x708 <_ZN6CUSART7putcharEc+0x10>
 704:	00 00       	nop
 706:	fa cf       	rjmp	.-12     	; 0x6fc <_ZN6CUSART7putcharEc+0x4>
 708:	08 95       	ret

0000070a <_ZN6CTimerC1Ev>:
 70a:	80 e0       	ldi	r24, 0x00	; 0
 70c:	90 e0       	ldi	r25, 0x00	; 0
 70e:	fc 01       	movw	r30, r24
 710:	23 e0       	ldi	r18, 0x03	; 3
 712:	ee 0f       	add	r30, r30
 714:	ff 1f       	adc	r31, r31
 716:	2a 95       	dec	r18
 718:	e1 f7       	brne	.-8      	; 0x712 <_ZN6CTimerC1Ev+0x8>
 71a:	ed 5d       	subi	r30, 0xDD	; 221
 71c:	fe 4f       	sbci	r31, 0xFE	; 254
 71e:	11 82       	std	Z+1, r1	; 0x01
 720:	10 82       	st	Z, r1
 722:	13 82       	std	Z+3, r1	; 0x03
 724:	12 82       	std	Z+2, r1	; 0x02
 726:	15 82       	std	Z+5, r1	; 0x05
 728:	14 82       	std	Z+4, r1	; 0x04
 72a:	16 82       	std	Z+6, r1	; 0x06
 72c:	17 82       	std	Z+7, r1	; 0x07
 72e:	01 96       	adiw	r24, 0x01	; 1
 730:	88 30       	cpi	r24, 0x08	; 8
 732:	91 05       	cpc	r25, r1
 734:	61 f7       	brne	.-40     	; 0x70e <_ZN6CTimerC1Ev+0x4>
 736:	10 92 63 01 	sts	0x0163, r1
 73a:	10 92 64 01 	sts	0x0164, r1
 73e:	10 92 65 01 	sts	0x0165, r1
 742:	10 92 66 01 	sts	0x0166, r1
 746:	84 b5       	in	r24, 0x24	; 36
 748:	82 60       	ori	r24, 0x02	; 2
 74a:	84 bd       	out	0x24, r24	; 36
 74c:	89 ef       	ldi	r24, 0xF9	; 249
 74e:	87 bd       	out	0x27, r24	; 39
 750:	83 e0       	ldi	r24, 0x03	; 3
 752:	85 bd       	out	0x25, r24	; 37
 754:	80 91 6e 00 	lds	r24, 0x006E
 758:	82 60       	ori	r24, 0x02	; 2
 75a:	80 93 6e 00 	sts	0x006E, r24
 75e:	78 94       	sei
 760:	08 95       	ret

00000762 <_ZN6CTimer8add_taskEPFvvEjb>:
 762:	80 e0       	ldi	r24, 0x00	; 0
 764:	90 e0       	ldi	r25, 0x00	; 0
 766:	ef ef       	ldi	r30, 0xFF	; 255
 768:	dc 01       	movw	r26, r24
 76a:	33 e0       	ldi	r19, 0x03	; 3
 76c:	aa 0f       	add	r26, r26
 76e:	bb 1f       	adc	r27, r27
 770:	3a 95       	dec	r19
 772:	e1 f7       	brne	.-8      	; 0x76c <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 774:	ad 5d       	subi	r26, 0xDD	; 221
 776:	be 4f       	sbci	r27, 0xFE	; 254
 778:	0d 90       	ld	r0, X+
 77a:	bc 91       	ld	r27, X
 77c:	a0 2d       	mov	r26, r0
 77e:	ab 2b       	or	r26, r27
 780:	09 f4       	brne	.+2      	; 0x784 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 782:	e8 2f       	mov	r30, r24
 784:	01 96       	adiw	r24, 0x01	; 1
 786:	88 30       	cpi	r24, 0x08	; 8
 788:	91 05       	cpc	r25, r1
 78a:	71 f7       	brne	.-36     	; 0x768 <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 78c:	ef 3f       	cpi	r30, 0xFF	; 255
 78e:	71 f0       	breq	.+28     	; 0x7ac <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 790:	88 e0       	ldi	r24, 0x08	; 8
 792:	e8 02       	muls	r30, r24
 794:	f0 01       	movw	r30, r0
 796:	11 24       	eor	r1, r1
 798:	ed 5d       	subi	r30, 0xDD	; 221
 79a:	fe 4f       	sbci	r31, 0xFE	; 254
 79c:	71 83       	std	Z+1, r23	; 0x01
 79e:	60 83       	st	Z, r22
 7a0:	53 83       	std	Z+3, r21	; 0x03
 7a2:	42 83       	std	Z+2, r20	; 0x02
 7a4:	55 83       	std	Z+5, r21	; 0x05
 7a6:	44 83       	std	Z+4, r20	; 0x04
 7a8:	16 82       	std	Z+6, r1	; 0x06
 7aa:	27 83       	std	Z+7, r18	; 0x07
 7ac:	08 95       	ret

000007ae <_ZN6CTimer14test_and_clearEh>:
 7ae:	f8 94       	cli
 7b0:	88 e0       	ldi	r24, 0x08	; 8
 7b2:	68 9f       	mul	r22, r24
 7b4:	f0 01       	movw	r30, r0
 7b6:	11 24       	eor	r1, r1
 7b8:	ed 5d       	subi	r30, 0xDD	; 221
 7ba:	fe 4f       	sbci	r31, 0xFE	; 254
 7bc:	86 81       	ldd	r24, Z+6	; 0x06
 7be:	88 23       	and	r24, r24
 7c0:	19 f0       	breq	.+6      	; 0x7c8 <_ZN6CTimer14test_and_clearEh+0x1a>
 7c2:	86 81       	ldd	r24, Z+6	; 0x06
 7c4:	16 82       	std	Z+6, r1	; 0x06
 7c6:	01 c0       	rjmp	.+2      	; 0x7ca <_ZN6CTimer14test_and_clearEh+0x1c>
 7c8:	80 e0       	ldi	r24, 0x00	; 0
 7ca:	78 94       	sei
 7cc:	90 e0       	ldi	r25, 0x00	; 0
 7ce:	08 95       	ret

000007d0 <_ZN6CTimer4mainEv>:
 7d0:	8c 01       	movw	r16, r24
 7d2:	f1 2c       	mov	r15, r1
 7d4:	88 e0       	ldi	r24, 0x08	; 8
 7d6:	f8 9e       	mul	r15, r24
 7d8:	e0 01       	movw	r28, r0
 7da:	11 24       	eor	r1, r1
 7dc:	cd 5d       	subi	r28, 0xDD	; 221
 7de:	de 4f       	sbci	r29, 0xFE	; 254
 7e0:	8f 81       	ldd	r24, Y+7	; 0x07
 7e2:	88 23       	and	r24, r24
 7e4:	69 f0       	breq	.+26     	; 0x800 <_ZN6CTimer4mainEv+0x30>
 7e6:	6f 2d       	mov	r22, r15
 7e8:	c8 01       	movw	r24, r16
 7ea:	0e 94 d7 03 	call	0x7ae	; 0x7ae <_ZN6CTimer14test_and_clearEh>
 7ee:	89 2b       	or	r24, r25
 7f0:	39 f0       	breq	.+14     	; 0x800 <_ZN6CTimer4mainEv+0x30>
 7f2:	88 81       	ld	r24, Y
 7f4:	99 81       	ldd	r25, Y+1	; 0x01
 7f6:	89 2b       	or	r24, r25
 7f8:	19 f0       	breq	.+6      	; 0x800 <_ZN6CTimer4mainEv+0x30>
 7fa:	e8 81       	ld	r30, Y
 7fc:	f9 81       	ldd	r31, Y+1	; 0x01
 7fe:	09 95       	icall
 800:	f3 94       	inc	r15
 802:	87 e0       	ldi	r24, 0x07	; 7
 804:	8f 15       	cp	r24, r15
 806:	28 f3       	brcs	.-54     	; 0x7d2 <_ZN6CTimer4mainEv+0x2>
 808:	e5 cf       	rjmp	.-54     	; 0x7d4 <_ZN6CTimer4mainEv+0x4>

0000080a <__vector_14>:
 80a:	1f 92       	push	r1
 80c:	0f 92       	push	r0
 80e:	0f b6       	in	r0, 0x3f	; 63
 810:	0f 92       	push	r0
 812:	11 24       	eor	r1, r1
 814:	2f 93       	push	r18
 816:	3f 93       	push	r19
 818:	4f 93       	push	r20
 81a:	5f 93       	push	r21
 81c:	6f 93       	push	r22
 81e:	7f 93       	push	r23
 820:	8f 93       	push	r24
 822:	9f 93       	push	r25
 824:	af 93       	push	r26
 826:	bf 93       	push	r27
 828:	cf 93       	push	r28
 82a:	df 93       	push	r29
 82c:	ef 93       	push	r30
 82e:	ff 93       	push	r31
 830:	c0 e0       	ldi	r28, 0x00	; 0
 832:	d0 e0       	ldi	r29, 0x00	; 0
 834:	ce 01       	movw	r24, r28
 836:	43 e0       	ldi	r20, 0x03	; 3
 838:	88 0f       	add	r24, r24
 83a:	99 1f       	adc	r25, r25
 83c:	4a 95       	dec	r20
 83e:	e1 f7       	brne	.-8      	; 0x838 <__vector_14+0x2e>
 840:	fc 01       	movw	r30, r24
 842:	ed 5d       	subi	r30, 0xDD	; 221
 844:	fe 4f       	sbci	r31, 0xFE	; 254
 846:	24 81       	ldd	r18, Z+4	; 0x04
 848:	35 81       	ldd	r19, Z+5	; 0x05
 84a:	23 2b       	or	r18, r19
 84c:	31 f0       	breq	.+12     	; 0x85a <__vector_14+0x50>
 84e:	84 81       	ldd	r24, Z+4	; 0x04
 850:	95 81       	ldd	r25, Z+5	; 0x05
 852:	01 97       	sbiw	r24, 0x01	; 1
 854:	95 83       	std	Z+5, r25	; 0x05
 856:	84 83       	std	Z+4, r24	; 0x04
 858:	18 c0       	rjmp	.+48     	; 0x88a <__vector_14+0x80>
 85a:	22 81       	ldd	r18, Z+2	; 0x02
 85c:	33 81       	ldd	r19, Z+3	; 0x03
 85e:	35 83       	std	Z+5, r19	; 0x05
 860:	24 83       	std	Z+4, r18	; 0x04
 862:	26 81       	ldd	r18, Z+6	; 0x06
 864:	2f 3f       	cpi	r18, 0xFF	; 255
 866:	19 f0       	breq	.+6      	; 0x86e <__vector_14+0x64>
 868:	26 81       	ldd	r18, Z+6	; 0x06
 86a:	2f 5f       	subi	r18, 0xFF	; 255
 86c:	26 83       	std	Z+6, r18	; 0x06
 86e:	fc 01       	movw	r30, r24
 870:	ed 5d       	subi	r30, 0xDD	; 221
 872:	fe 4f       	sbci	r31, 0xFE	; 254
 874:	87 81       	ldd	r24, Z+7	; 0x07
 876:	81 11       	cpse	r24, r1
 878:	08 c0       	rjmp	.+16     	; 0x88a <__vector_14+0x80>
 87a:	80 81       	ld	r24, Z
 87c:	91 81       	ldd	r25, Z+1	; 0x01
 87e:	89 2b       	or	r24, r25
 880:	21 f0       	breq	.+8      	; 0x88a <__vector_14+0x80>
 882:	01 90       	ld	r0, Z+
 884:	f0 81       	ld	r31, Z
 886:	e0 2d       	mov	r30, r0
 888:	09 95       	icall
 88a:	21 96       	adiw	r28, 0x01	; 1
 88c:	c8 30       	cpi	r28, 0x08	; 8
 88e:	d1 05       	cpc	r29, r1
 890:	89 f6       	brne	.-94     	; 0x834 <__vector_14+0x2a>
 892:	80 91 63 01 	lds	r24, 0x0163
 896:	90 91 64 01 	lds	r25, 0x0164
 89a:	a0 91 65 01 	lds	r26, 0x0165
 89e:	b0 91 66 01 	lds	r27, 0x0166
 8a2:	01 96       	adiw	r24, 0x01	; 1
 8a4:	a1 1d       	adc	r26, r1
 8a6:	b1 1d       	adc	r27, r1
 8a8:	80 93 63 01 	sts	0x0163, r24
 8ac:	90 93 64 01 	sts	0x0164, r25
 8b0:	a0 93 65 01 	sts	0x0165, r26
 8b4:	b0 93 66 01 	sts	0x0166, r27
 8b8:	ff 91       	pop	r31
 8ba:	ef 91       	pop	r30
 8bc:	df 91       	pop	r29
 8be:	cf 91       	pop	r28
 8c0:	bf 91       	pop	r27
 8c2:	af 91       	pop	r26
 8c4:	9f 91       	pop	r25
 8c6:	8f 91       	pop	r24
 8c8:	7f 91       	pop	r23
 8ca:	6f 91       	pop	r22
 8cc:	5f 91       	pop	r21
 8ce:	4f 91       	pop	r20
 8d0:	3f 91       	pop	r19
 8d2:	2f 91       	pop	r18
 8d4:	0f 90       	pop	r0
 8d6:	0f be       	out	0x3f, r0	; 63
 8d8:	0f 90       	pop	r0
 8da:	1f 90       	pop	r1
 8dc:	18 95       	reti

000008de <_GLOBAL__sub_I_timer>:
 8de:	87 e6       	ldi	r24, 0x67	; 103
 8e0:	91 e0       	ldi	r25, 0x01	; 1
 8e2:	0c 94 85 03 	jmp	0x70a	; 0x70a <_ZN6CTimerC1Ev>

000008e6 <_GLOBAL__sub_I_i2c>:
 8e6:	3c 98       	cbi	0x07, 4	; 7
 8e8:	3d 98       	cbi	0x07, 5	; 7
 8ea:	44 98       	cbi	0x08, 4	; 8
 8ec:	45 98       	cbi	0x08, 5	; 8
 8ee:	08 95       	ret

000008f0 <__udivmodhi4>:
 8f0:	aa 1b       	sub	r26, r26
 8f2:	bb 1b       	sub	r27, r27
 8f4:	51 e1       	ldi	r21, 0x11	; 17
 8f6:	07 c0       	rjmp	.+14     	; 0x906 <__udivmodhi4_ep>

000008f8 <__udivmodhi4_loop>:
 8f8:	aa 1f       	adc	r26, r26
 8fa:	bb 1f       	adc	r27, r27
 8fc:	a6 17       	cp	r26, r22
 8fe:	b7 07       	cpc	r27, r23
 900:	10 f0       	brcs	.+4      	; 0x906 <__udivmodhi4_ep>
 902:	a6 1b       	sub	r26, r22
 904:	b7 0b       	sbc	r27, r23

00000906 <__udivmodhi4_ep>:
 906:	88 1f       	adc	r24, r24
 908:	99 1f       	adc	r25, r25
 90a:	5a 95       	dec	r21
 90c:	a9 f7       	brne	.-22     	; 0x8f8 <__udivmodhi4_loop>
 90e:	80 95       	com	r24
 910:	90 95       	com	r25
 912:	bc 01       	movw	r22, r24
 914:	cd 01       	movw	r24, r26
 916:	08 95       	ret

00000918 <__divmodhi4>:
 918:	97 fb       	bst	r25, 7
 91a:	07 2e       	mov	r0, r23
 91c:	16 f4       	brtc	.+4      	; 0x922 <__divmodhi4+0xa>
 91e:	00 94       	com	r0
 920:	07 d0       	rcall	.+14     	; 0x930 <__divmodhi4_neg1>
 922:	77 fd       	sbrc	r23, 7
 924:	09 d0       	rcall	.+18     	; 0x938 <__divmodhi4_neg2>
 926:	0e 94 78 04 	call	0x8f0	; 0x8f0 <__udivmodhi4>
 92a:	07 fc       	sbrc	r0, 7
 92c:	05 d0       	rcall	.+10     	; 0x938 <__divmodhi4_neg2>
 92e:	3e f4       	brtc	.+14     	; 0x93e <__divmodhi4_exit>

00000930 <__divmodhi4_neg1>:
 930:	90 95       	com	r25
 932:	81 95       	neg	r24
 934:	9f 4f       	sbci	r25, 0xFF	; 255
 936:	08 95       	ret

00000938 <__divmodhi4_neg2>:
 938:	70 95       	com	r23
 93a:	61 95       	neg	r22
 93c:	7f 4f       	sbci	r23, 0xFF	; 255

0000093e <__divmodhi4_exit>:
 93e:	08 95       	ret

00000940 <__tablejump2__>:
 940:	ee 0f       	add	r30, r30
 942:	ff 1f       	adc	r31, r31

00000944 <__tablejump__>:
 944:	05 90       	lpm	r0, Z+
 946:	f4 91       	lpm	r31, Z
 948:	e0 2d       	mov	r30, r0
 94a:	09 94       	ijmp

0000094c <__do_global_dtors>:
 94c:	10 e0       	ldi	r17, 0x00	; 0
 94e:	c2 e7       	ldi	r28, 0x72	; 114
 950:	d0 e0       	ldi	r29, 0x00	; 0
 952:	04 c0       	rjmp	.+8      	; 0x95c <__do_global_dtors+0x10>
 954:	fe 01       	movw	r30, r28
 956:	0e 94 a2 04 	call	0x944	; 0x944 <__tablejump__>
 95a:	22 96       	adiw	r28, 0x02	; 2
 95c:	c6 37       	cpi	r28, 0x76	; 118
 95e:	d1 07       	cpc	r29, r17
 960:	c9 f7       	brne	.-14     	; 0x954 <__do_global_dtors+0x8>
 962:	f8 94       	cli

00000964 <__stop_program>:
 964:	ff cf       	rjmp	.-2      	; 0x964 <__stop_program>
