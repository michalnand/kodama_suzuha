
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2e 00 	jmp	0x5c	; 0x5c <__dtors_end>
   4:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
   8:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
   c:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  10:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  14:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  18:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  1c:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  20:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  24:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  28:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  2c:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  30:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  34:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  38:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  3c:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  40:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  44:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  48:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  4c:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>
  50:	0c 94 4b 00 	jmp	0x96	; 0x96 <__bad_interrupt>

00000054 <__ctors_start>:
  54:	4e 00       	.word	0x004e	; ????
  56:	76 00       	.word	0x0076	; ????
  58:	81 00       	.word	0x0081	; ????

0000005a <__ctors_end>:
  5a:	6e 00       	.word	0x006e	; ????

0000005c <__dtors_end>:
  5c:	11 24       	eor	r1, r1
  5e:	1f be       	out	0x3f, r1	; 63
  60:	cf e5       	ldi	r28, 0x5F	; 95
  62:	d8 e0       	ldi	r29, 0x08	; 8
  64:	de bf       	out	0x3e, r29	; 62
  66:	cd bf       	out	0x3d, r28	; 61

00000068 <__do_clear_bss>:
  68:	2e e4       	ldi	r18, 0x4E	; 78
  6a:	a0 e6       	ldi	r26, 0x60	; 96
  6c:	b0 e0       	ldi	r27, 0x00	; 0
  6e:	01 c0       	rjmp	.+2      	; 0x72 <.do_clear_bss_start>

00000070 <.do_clear_bss_loop>:
  70:	1d 92       	st	X+, r1

00000072 <.do_clear_bss_start>:
  72:	a4 38       	cpi	r26, 0x84	; 132
  74:	b2 07       	cpc	r27, r18
  76:	e1 f7       	brne	.-8      	; 0x70 <.do_clear_bss_loop>

00000078 <__do_global_ctors>:
  78:	10 e0       	ldi	r17, 0x00	; 0
  7a:	cd e2       	ldi	r28, 0x2D	; 45
  7c:	d0 e0       	ldi	r29, 0x00	; 0
  7e:	04 c0       	rjmp	.+8      	; 0x88 <__do_global_ctors+0x10>
  80:	21 97       	sbiw	r28, 0x01	; 1
  82:	fe 01       	movw	r30, r28
  84:	0e 94 83 00 	call	0x106	; 0x106 <__tablejump2__>
  88:	ca 32       	cpi	r28, 0x2A	; 42
  8a:	d1 07       	cpc	r29, r17
  8c:	c9 f7       	brne	.-14     	; 0x80 <__do_global_ctors+0x8>
  8e:	0e 94 4d 00 	call	0x9a	; 0x9a <main>
  92:	0c 94 89 00 	jmp	0x112	; 0x112 <__do_global_dtors>

00000096 <__bad_interrupt>:
  96:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

0000009a <main>:
  9a:	ff cf       	rjmp	.-2      	; 0x9a <main>

0000009c <_GLOBAL__sub_I_matA>:
  9c:	80 e6       	ldi	r24, 0x60	; 96
  9e:	90 e0       	ldi	r25, 0x00	; 0
  a0:	fc 01       	movw	r30, r24
  a2:	44 96       	adiw	r24, 0x14	; 20
  a4:	11 92       	st	Z+, r1
  a6:	11 92       	st	Z+, r1
  a8:	e8 17       	cp	r30, r24
  aa:	f9 07       	cpc	r31, r25
  ac:	d9 f7       	brne	.-10     	; 0xa4 <_GLOBAL__sub_I_matA+0x8>
  ae:	e0 58       	subi	r30, 0x80	; 128
  b0:	fe 44       	sbci	r31, 0x4E	; 78
  b2:	b1 f7       	brne	.-20     	; 0xa0 <_GLOBAL__sub_I_matA+0x4>
  b4:	20 e6       	ldi	r18, 0x60	; 96
  b6:	30 e0       	ldi	r19, 0x00	; 0
  b8:	80 e0       	ldi	r24, 0x00	; 0
  ba:	90 e0       	ldi	r25, 0x00	; 0
  bc:	f9 01       	movw	r30, r18
  be:	e8 0f       	add	r30, r24
  c0:	f9 1f       	adc	r31, r25
  c2:	11 82       	std	Z+1, r1	; 0x01
  c4:	10 82       	st	Z, r1
  c6:	02 96       	adiw	r24, 0x02	; 2
  c8:	84 31       	cpi	r24, 0x14	; 20
  ca:	91 05       	cpc	r25, r1
  cc:	b9 f7       	brne	.-18     	; 0xbc <_GLOBAL__sub_I_matA+0x20>
  ce:	2c 5e       	subi	r18, 0xEC	; 236
  d0:	3f 4f       	sbci	r19, 0xFF	; 255
  d2:	8e e4       	ldi	r24, 0x4E	; 78
  d4:	20 38       	cpi	r18, 0x80	; 128
  d6:	38 07       	cpc	r19, r24
  d8:	79 f7       	brne	.-34     	; 0xb8 <_GLOBAL__sub_I_matA+0x1c>
  da:	08 95       	ret

000000dc <_GLOBAL__sub_D_matA>:
  dc:	80 e8       	ldi	r24, 0x80	; 128
  de:	9e e4       	ldi	r25, 0x4E	; 78
  e0:	44 97       	sbiw	r24, 0x14	; 20
  e2:	20 e0       	ldi	r18, 0x00	; 0
  e4:	80 36       	cpi	r24, 0x60	; 96
  e6:	92 07       	cpc	r25, r18
  e8:	d9 f7       	brne	.-10     	; 0xe0 <_GLOBAL__sub_D_matA+0x4>
  ea:	08 95       	ret

000000ec <_GLOBAL__sub_I_math>:
  ec:	e0 e8       	ldi	r30, 0x80	; 128
  ee:	fe e4       	ldi	r31, 0x4E	; 78
  f0:	81 e0       	ldi	r24, 0x01	; 1
  f2:	90 e0       	ldi	r25, 0x00	; 0
  f4:	91 83       	std	Z+1, r25	; 0x01
  f6:	80 83       	st	Z, r24
  f8:	82 e0       	ldi	r24, 0x02	; 2
  fa:	90 e0       	ldi	r25, 0x00	; 0
  fc:	93 83       	std	Z+3, r25	; 0x03
  fe:	82 83       	std	Z+2, r24	; 0x02
 100:	08 95       	ret

00000102 <_GLOBAL__sub_I_i2c>:
 102:	88 b3       	in	r24, 0x18	; 24
 104:	08 95       	ret

00000106 <__tablejump2__>:
 106:	ee 0f       	add	r30, r30
 108:	ff 1f       	adc	r31, r31
 10a:	05 90       	lpm	r0, Z+
 10c:	f4 91       	lpm	r31, Z
 10e:	e0 2d       	mov	r30, r0
 110:	09 94       	ijmp

00000112 <__do_global_dtors>:
 112:	10 e0       	ldi	r17, 0x00	; 0
 114:	cd e2       	ldi	r28, 0x2D	; 45
 116:	d0 e0       	ldi	r29, 0x00	; 0
 118:	04 c0       	rjmp	.+8      	; 0x122 <__do_global_dtors+0x10>
 11a:	fe 01       	movw	r30, r28
 11c:	0e 94 83 00 	call	0x106	; 0x106 <__tablejump2__>
 120:	21 96       	adiw	r28, 0x01	; 1
 122:	ce 32       	cpi	r28, 0x2E	; 46
 124:	d1 07       	cpc	r29, r17
 126:	c9 f7       	brne	.-14     	; 0x11a <__do_global_dtors+0x8>
 128:	f8 94       	cli

0000012a <__stop_program>:
 12a:	ff cf       	rjmp	.-2      	; 0x12a <__stop_program>
