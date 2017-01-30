
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2c 00 	jmp	0x58	; 0x58 <__ctors_end>
   4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
   8:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
   c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  14:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  1c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  38:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  3c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  40:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  44:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  48:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  4c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  50:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>

00000054 <__ctors_start>:
  54:	df 00       	.word	0x00df	; ????
  56:	ea 00       	.word	0x00ea	; ????

00000058 <__ctors_end>:
  58:	11 24       	eor	r1, r1
  5a:	1f be       	out	0x3f, r1	; 63
  5c:	cf e5       	ldi	r28, 0x5F	; 95
  5e:	d8 e0       	ldi	r29, 0x08	; 8
  60:	de bf       	out	0x3e, r29	; 62
  62:	cd bf       	out	0x3d, r28	; 61

00000064 <__do_clear_bss>:
  64:	20 e0       	ldi	r18, 0x00	; 0
  66:	a0 e6       	ldi	r26, 0x60	; 96
  68:	b0 e0       	ldi	r27, 0x00	; 0
  6a:	01 c0       	rjmp	.+2      	; 0x6e <.do_clear_bss_start>

0000006c <.do_clear_bss_loop>:
  6c:	1d 92       	st	X+, r1

0000006e <.do_clear_bss_start>:
  6e:	a4 36       	cpi	r26, 0x64	; 100
  70:	b2 07       	cpc	r27, r18
  72:	e1 f7       	brne	.-8      	; 0x6c <.do_clear_bss_loop>

00000074 <__do_global_ctors>:
  74:	10 e0       	ldi	r17, 0x00	; 0
  76:	cc e2       	ldi	r28, 0x2C	; 44
  78:	d0 e0       	ldi	r29, 0x00	; 0
  7a:	04 c0       	rjmp	.+8      	; 0x84 <__do_global_ctors+0x10>
  7c:	21 97       	sbiw	r28, 0x01	; 1
  7e:	fe 01       	movw	r30, r28
  80:	0e 94 ec 00 	call	0x1d8	; 0x1d8 <__tablejump2__>
  84:	ca 32       	cpi	r28, 0x2A	; 42
  86:	d1 07       	cpc	r29, r17
  88:	c9 f7       	brne	.-14     	; 0x7c <__do_global_ctors+0x8>
  8a:	0e 94 96 00 	call	0x12c	; 0x12c <main>
  8e:	0c 94 f2 00 	jmp	0x1e4	; 0x1e4 <_exit>

00000092 <__bad_interrupt>:
  92:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000096 <_ZN4CPIDIiE7processEi>:
  96:	fc 01       	movw	r30, r24
  98:	42 81       	ldd	r20, Z+2	; 0x02
  9a:	53 81       	ldd	r21, Z+3	; 0x03
  9c:	55 83       	std	Z+5, r21	; 0x05
  9e:	44 83       	std	Z+4, r20	; 0x04
  a0:	20 81       	ld	r18, Z
  a2:	31 81       	ldd	r19, Z+1	; 0x01
  a4:	33 83       	std	Z+3, r19	; 0x03
  a6:	22 83       	std	Z+2, r18	; 0x02
  a8:	71 83       	std	Z+1, r23	; 0x01
  aa:	60 83       	st	Z, r22
  ac:	86 81       	ldd	r24, Z+6	; 0x06
  ae:	97 81       	ldd	r25, Z+7	; 0x07
  b0:	68 9f       	mul	r22, r24
  b2:	d0 01       	movw	r26, r0
  b4:	69 9f       	mul	r22, r25
  b6:	b0 0d       	add	r27, r0
  b8:	78 9f       	mul	r23, r24
  ba:	b0 0d       	add	r27, r0
  bc:	11 24       	eor	r1, r1
  be:	60 85       	ldd	r22, Z+8	; 0x08
  c0:	71 85       	ldd	r23, Z+9	; 0x09
  c2:	26 9f       	mul	r18, r22
  c4:	c0 01       	movw	r24, r0
  c6:	27 9f       	mul	r18, r23
  c8:	90 0d       	add	r25, r0
  ca:	36 9f       	mul	r19, r22
  cc:	90 0d       	add	r25, r0
  ce:	11 24       	eor	r1, r1
  d0:	8a 0f       	add	r24, r26
  d2:	9b 1f       	adc	r25, r27
  d4:	62 85       	ldd	r22, Z+10	; 0x0a
  d6:	73 85       	ldd	r23, Z+11	; 0x0b
  d8:	46 9f       	mul	r20, r22
  da:	90 01       	movw	r18, r0
  dc:	47 9f       	mul	r20, r23
  de:	30 0d       	add	r19, r0
  e0:	56 9f       	mul	r21, r22
  e2:	30 0d       	add	r19, r0
  e4:	11 24       	eor	r1, r1
  e6:	82 0f       	add	r24, r18
  e8:	93 1f       	adc	r25, r19
  ea:	97 fd       	sbrc	r25, 7
  ec:	4f 96       	adiw	r24, 0x1f	; 31
  ee:	25 e0       	ldi	r18, 0x05	; 5
  f0:	95 95       	asr	r25
  f2:	87 95       	ror	r24
  f4:	2a 95       	dec	r18
  f6:	e1 f7       	brne	.-8      	; 0xf0 <_ZN4CPIDIiE7processEi+0x5a>
  f8:	24 85       	ldd	r18, Z+12	; 0x0c
  fa:	35 85       	ldd	r19, Z+13	; 0x0d
  fc:	82 0f       	add	r24, r18
  fe:	93 1f       	adc	r25, r19
 100:	95 87       	std	Z+13, r25	; 0x0d
 102:	84 87       	std	Z+12, r24	; 0x0c
 104:	26 85       	ldd	r18, Z+14	; 0x0e
 106:	37 85       	ldd	r19, Z+15	; 0x0f
 108:	28 17       	cp	r18, r24
 10a:	39 07       	cpc	r19, r25
 10c:	14 f4       	brge	.+4      	; 0x112 <_ZN4CPIDIiE7processEi+0x7c>
 10e:	35 87       	std	Z+13, r19	; 0x0d
 110:	24 87       	std	Z+12, r18	; 0x0c
 112:	31 95       	neg	r19
 114:	21 95       	neg	r18
 116:	31 09       	sbc	r19, r1
 118:	84 85       	ldd	r24, Z+12	; 0x0c
 11a:	95 85       	ldd	r25, Z+13	; 0x0d
 11c:	82 17       	cp	r24, r18
 11e:	93 07       	cpc	r25, r19
 120:	14 f4       	brge	.+4      	; 0x126 <_ZN4CPIDIiE7processEi+0x90>
 122:	35 87       	std	Z+13, r19	; 0x0d
 124:	24 87       	std	Z+12, r18	; 0x0c
 126:	84 85       	ldd	r24, Z+12	; 0x0c
 128:	95 85       	ldd	r25, Z+13	; 0x0d
 12a:	08 95       	ret

0000012c <main>:
 12c:	cf 93       	push	r28
 12e:	df 93       	push	r29
 130:	cd b7       	in	r28, 0x3d	; 61
 132:	de b7       	in	r29, 0x3e	; 62
 134:	a0 97       	sbiw	r28, 0x20	; 32
 136:	0f b6       	in	r0, 0x3f	; 63
 138:	f8 94       	cli
 13a:	de bf       	out	0x3e, r29	; 62
 13c:	0f be       	out	0x3f, r0	; 63
 13e:	cd bf       	out	0x3d, r28	; 61
 140:	1a 8a       	std	Y+18, r1	; 0x12
 142:	19 8a       	std	Y+17, r1	; 0x11
 144:	1c 8a       	std	Y+20, r1	; 0x14
 146:	1b 8a       	std	Y+19, r1	; 0x13
 148:	1e 8a       	std	Y+22, r1	; 0x16
 14a:	1d 8a       	std	Y+21, r1	; 0x15
 14c:	88 e0       	ldi	r24, 0x08	; 8
 14e:	90 e0       	ldi	r25, 0x00	; 0
 150:	98 8f       	std	Y+24, r25	; 0x18
 152:	8f 8b       	std	Y+23, r24	; 0x17
 154:	89 ef       	ldi	r24, 0xF9	; 249
 156:	9f ef       	ldi	r25, 0xFF	; 255
 158:	9a 8f       	std	Y+26, r25	; 0x1a
 15a:	89 8f       	std	Y+25, r24	; 0x19
 15c:	84 e0       	ldi	r24, 0x04	; 4
 15e:	90 e0       	ldi	r25, 0x00	; 0
 160:	9c 8f       	std	Y+28, r25	; 0x1c
 162:	8b 8f       	std	Y+27, r24	; 0x1b
 164:	1e 8e       	std	Y+30, r1	; 0x1e
 166:	1d 8e       	std	Y+29, r1	; 0x1d
 168:	80 e8       	ldi	r24, 0x80	; 128
 16a:	90 e0       	ldi	r25, 0x00	; 0
 16c:	98 a3       	std	Y+32, r25	; 0x20
 16e:	8f 8f       	std	Y+31, r24	; 0x1f
 170:	1a 82       	std	Y+2, r1	; 0x02
 172:	19 82       	std	Y+1, r1	; 0x01
 174:	1c 82       	std	Y+4, r1	; 0x04
 176:	1b 82       	std	Y+3, r1	; 0x03
 178:	1e 82       	std	Y+6, r1	; 0x06
 17a:	1d 82       	std	Y+5, r1	; 0x05
 17c:	26 e0       	ldi	r18, 0x06	; 6
 17e:	30 e0       	ldi	r19, 0x00	; 0
 180:	38 87       	std	Y+8, r19	; 0x08
 182:	2f 83       	std	Y+7, r18	; 0x07
 184:	2c ef       	ldi	r18, 0xFC	; 252
 186:	3f ef       	ldi	r19, 0xFF	; 255
 188:	3a 87       	std	Y+10, r19	; 0x0a
 18a:	29 87       	std	Y+9, r18	; 0x09
 18c:	23 e0       	ldi	r18, 0x03	; 3
 18e:	30 e0       	ldi	r19, 0x00	; 0
 190:	3c 87       	std	Y+12, r19	; 0x0c
 192:	2b 87       	std	Y+11, r18	; 0x0b
 194:	1e 86       	std	Y+14, r1	; 0x0e
 196:	1d 86       	std	Y+13, r1	; 0x0d
 198:	98 8b       	std	Y+16, r25	; 0x10
 19a:	8f 87       	std	Y+15, r24	; 0x0f
 19c:	00 e0       	ldi	r16, 0x00	; 0
 19e:	10 e0       	ldi	r17, 0x00	; 0
 1a0:	0d 5f       	subi	r16, 0xFD	; 253
 1a2:	1f 4f       	sbci	r17, 0xFF	; 255
 1a4:	b8 01       	movw	r22, r16
 1a6:	ce 01       	movw	r24, r28
 1a8:	41 96       	adiw	r24, 0x11	; 17
 1aa:	0e 94 4b 00 	call	0x96	; 0x96 <_ZN4CPIDIiE7processEi>
 1ae:	88 bb       	out	0x18, r24	; 24
 1b0:	b8 01       	movw	r22, r16
 1b2:	ce 01       	movw	r24, r28
 1b4:	01 96       	adiw	r24, 0x01	; 1
 1b6:	0e 94 4b 00 	call	0x96	; 0x96 <_ZN4CPIDIiE7processEi>
 1ba:	85 bb       	out	0x15, r24	; 21
 1bc:	f1 cf       	rjmp	.-30     	; 0x1a0 <main+0x74>

000001be <_GLOBAL__sub_I_math>:
 1be:	e0 e6       	ldi	r30, 0x60	; 96
 1c0:	f0 e0       	ldi	r31, 0x00	; 0
 1c2:	81 e0       	ldi	r24, 0x01	; 1
 1c4:	90 e0       	ldi	r25, 0x00	; 0
 1c6:	91 83       	std	Z+1, r25	; 0x01
 1c8:	80 83       	st	Z, r24
 1ca:	82 e0       	ldi	r24, 0x02	; 2
 1cc:	90 e0       	ldi	r25, 0x00	; 0
 1ce:	93 83       	std	Z+3, r25	; 0x03
 1d0:	82 83       	std	Z+2, r24	; 0x02
 1d2:	08 95       	ret

000001d4 <_GLOBAL__sub_I_i2c>:
 1d4:	88 b3       	in	r24, 0x18	; 24
 1d6:	08 95       	ret

000001d8 <__tablejump2__>:
 1d8:	ee 0f       	add	r30, r30
 1da:	ff 1f       	adc	r31, r31
 1dc:	05 90       	lpm	r0, Z+
 1de:	f4 91       	lpm	r31, Z
 1e0:	e0 2d       	mov	r30, r0
 1e2:	09 94       	ijmp

000001e4 <_exit>:
 1e4:	f8 94       	cli

000001e6 <__stop_program>:
 1e6:	ff cf       	rjmp	.-2      	; 0x1e6 <__stop_program>
