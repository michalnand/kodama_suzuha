
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
      38:	0c 94 cd 0b 	jmp	0x179a	; 0x179a <__vector_14>
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
      68:	e7 01       	movw	r28, r14
      6a:	0d 02       	muls	r16, r29
      6c:	6e 09       	sbc	r22, r14
      6e:	37 0c       	add	r3, r7
      70:	3b 0c       	add	r3, r11

00000072 <__ctors_end>:
      72:	fd 01       	movw	r30, r26
      74:	72 09       	sbc	r23, r2

00000076 <__dtors_end>:
      76:	11 24       	eor	r1, r1
      78:	1f be       	out	0x3f, r1	; 63
      7a:	cf ef       	ldi	r28, 0xFF	; 255
      7c:	d8 e0       	ldi	r29, 0x08	; 8
      7e:	de bf       	out	0x3e, r29	; 62
      80:	cd bf       	out	0x3d, r28	; 61

00000082 <__do_copy_data>:
      82:	19 e0       	ldi	r17, 0x09	; 9
      84:	a0 e0       	ldi	r26, 0x00	; 0
      86:	b1 e0       	ldi	r27, 0x01	; 1
      88:	ec e4       	ldi	r30, 0x4C	; 76
      8a:	fd e1       	ldi	r31, 0x1D	; 29
      8c:	02 c0       	rjmp	.+4      	; 0x92 <__do_copy_data+0x10>
      8e:	05 90       	lpm	r0, Z+
      90:	0d 92       	st	X+, r0
      92:	ac 31       	cpi	r26, 0x1C	; 28
      94:	b1 07       	cpc	r27, r17
      96:	d9 f7       	brne	.-10     	; 0x8e <__do_copy_data+0xc>

00000098 <__do_clear_bss>:
      98:	2e e0       	ldi	r18, 0x0E	; 14
      9a:	ac e1       	ldi	r26, 0x1C	; 28
      9c:	b9 e0       	ldi	r27, 0x09	; 9
      9e:	01 c0       	rjmp	.+2      	; 0xa2 <.do_clear_bss_start>

000000a0 <.do_clear_bss_loop>:
      a0:	1d 92       	st	X+, r1

000000a2 <.do_clear_bss_start>:
      a2:	a0 34       	cpi	r26, 0x40	; 64
      a4:	b2 07       	cpc	r27, r18
      a6:	e1 f7       	brne	.-8      	; 0xa0 <.do_clear_bss_loop>

000000a8 <__do_global_ctors>:
      a8:	10 e0       	ldi	r17, 0x00	; 0
      aa:	c9 e3       	ldi	r28, 0x39	; 57
      ac:	d0 e0       	ldi	r29, 0x00	; 0
      ae:	04 c0       	rjmp	.+8      	; 0xb8 <__do_global_ctors+0x10>
      b0:	21 97       	sbiw	r28, 0x01	; 1
      b2:	fe 01       	movw	r30, r28
      b4:	0e 94 c7 0c 	call	0x198e	; 0x198e <__tablejump2__>
      b8:	c4 33       	cpi	r28, 0x34	; 52
      ba:	d1 07       	cpc	r29, r17
      bc:	c9 f7       	brne	.-14     	; 0xb0 <__do_global_ctors+0x8>
      be:	0e 94 65 00 	call	0xca	; 0xca <main>
      c2:	0c 94 99 0e 	jmp	0x1d32	; 0x1d32 <__do_global_dtors>

000000c6 <__bad_interrupt>:
      c6:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ca <main>:
      ca:	0e 94 a7 01 	call	0x34e	; 0x34e <_Z8usr_mainv>
      ce:	80 e0       	ldi	r24, 0x00	; 0
      d0:	90 e0       	ldi	r25, 0x00	; 0
      d2:	08 95       	ret

000000d4 <_Z10blink_idlev>:
      d4:	80 91 1c 09 	lds	r24, 0x091C
      d8:	90 91 1d 09 	lds	r25, 0x091D
      dc:	89 2b       	or	r24, r25
      de:	29 f0       	breq	.+10     	; 0xea <_Z10blink_idlev+0x16>
      e0:	10 92 1d 09 	sts	0x091D, r1
      e4:	10 92 1c 09 	sts	0x091C, r1
      e8:	06 c0       	rjmp	.+12     	; 0xf6 <_Z10blink_idlev+0x22>
      ea:	81 e0       	ldi	r24, 0x01	; 1
      ec:	90 e0       	ldi	r25, 0x00	; 0
      ee:	90 93 1d 09 	sts	0x091D, r25
      f2:	80 93 1c 09 	sts	0x091C, r24
      f6:	85 b1       	in	r24, 0x05	; 5
      f8:	85 b9       	out	0x05, r24	; 5
      fa:	08 95       	ret

000000fc <_Z7ir_demov>:
      fc:	cf 93       	push	r28
      fe:	df 93       	push	r29
     100:	cd b7       	in	r28, 0x3d	; 61
     102:	de b7       	in	r29, 0x3e	; 62
     104:	29 97       	sbiw	r28, 0x09	; 9
     106:	0f b6       	in	r0, 0x3f	; 63
     108:	f8 94       	cli
     10a:	de bf       	out	0x3e, r29	; 62
     10c:	0f be       	out	0x3f, r0	; 63
     10e:	cd bf       	out	0x3d, r28	; 61
     110:	21 2c       	mov	r2, r1
     112:	31 2c       	mov	r3, r1
     114:	21 01       	movw	r4, r2
     116:	1c 82       	std	Y+4, r1	; 0x04
     118:	1d 82       	std	Y+5, r1	; 0x05
     11a:	1e 82       	std	Y+6, r1	; 0x06
     11c:	1f 82       	std	Y+7, r1	; 0x07
     11e:	c1 2c       	mov	r12, r1
     120:	d1 2c       	mov	r13, r1
     122:	61 2c       	mov	r6, r1
     124:	71 2c       	mov	r7, r1
     126:	8e e1       	ldi	r24, 0x1E	; 30
     128:	99 e0       	ldi	r25, 0x09	; 9
     12a:	0e 94 c1 02 	call	0x582	; 0x582 <_ZN9CMLX906214readEv>
     12e:	60 91 a4 09 	lds	r22, 0x09A4
     132:	70 91 a5 09 	lds	r23, 0x09A5
     136:	80 91 a0 09 	lds	r24, 0x09A0
     13a:	90 91 a1 09 	lds	r25, 0x09A1
     13e:	88 58       	subi	r24, 0x88	; 136
     140:	9f 4f       	sbci	r25, 0xFF	; 255
     142:	20 91 9e 09 	lds	r18, 0x099E
     146:	30 91 9f 09 	lds	r19, 0x099F
     14a:	82 17       	cp	r24, r18
     14c:	93 07       	cpc	r25, r19
     14e:	0c f0       	brlt	.+2      	; 0x152 <_Z7ir_demov+0x56>
     150:	97 c0       	rjmp	.+302    	; 0x280 <_Z7ir_demov+0x184>
     152:	07 2e       	mov	r0, r23
     154:	00 0c       	add	r0, r0
     156:	88 0b       	sbc	r24, r24
     158:	99 0b       	sbc	r25, r25
     15a:	0e 94 77 0d 	call	0x1aee	; 0x1aee <__floatsisf>
     15e:	9b 01       	movw	r18, r22
     160:	ac 01       	movw	r20, r24
     162:	0e 94 ce 0c 	call	0x199c	; 0x199c <__addsf3>
     166:	20 e0       	ldi	r18, 0x00	; 0
     168:	30 e0       	ldi	r19, 0x00	; 0
     16a:	40 e8       	ldi	r20, 0x80	; 128
     16c:	5a e3       	ldi	r21, 0x3A	; 58
     16e:	0e 94 2c 0e 	call	0x1c58	; 0x1c58 <__mulsf3>
     172:	20 e0       	ldi	r18, 0x00	; 0
     174:	30 e0       	ldi	r19, 0x00	; 0
     176:	40 e8       	ldi	r20, 0x80	; 128
     178:	5f e3       	ldi	r21, 0x3F	; 63
     17a:	0e 94 cd 0c 	call	0x199a	; 0x199a <__subsf3>
     17e:	20 e0       	ldi	r18, 0x00	; 0
     180:	30 e0       	ldi	r19, 0x00	; 0
     182:	a9 01       	movw	r20, r18
     184:	0e 94 ce 0c 	call	0x199c	; 0x199c <__addsf3>
     188:	f6 2e       	mov	r15, r22
     18a:	79 83       	std	Y+1, r23	; 0x01
     18c:	8a 83       	std	Y+2, r24	; 0x02
     18e:	9b 83       	std	Y+3, r25	; 0x03
     190:	20 e0       	ldi	r18, 0x00	; 0
     192:	30 e0       	ldi	r19, 0x00	; 0
     194:	40 e7       	ldi	r20, 0x70	; 112
     196:	54 e4       	ldi	r21, 0x44	; 68
     198:	0e 94 2c 0e 	call	0x1c58	; 0x1c58 <__mulsf3>
     19c:	4b 01       	movw	r8, r22
     19e:	5c 01       	movw	r10, r24
     1a0:	20 e0       	ldi	r18, 0x00	; 0
     1a2:	30 e0       	ldi	r19, 0x00	; 0
     1a4:	40 ea       	ldi	r20, 0xA0	; 160
     1a6:	54 ec       	ldi	r21, 0xC4	; 196
     1a8:	b6 01       	movw	r22, r12
     1aa:	c3 01       	movw	r24, r6
     1ac:	0e 94 2c 0e 	call	0x1c58	; 0x1c58 <__mulsf3>
     1b0:	9b 01       	movw	r18, r22
     1b2:	ac 01       	movw	r20, r24
     1b4:	c5 01       	movw	r24, r10
     1b6:	b4 01       	movw	r22, r8
     1b8:	0e 94 ce 0c 	call	0x199c	; 0x199c <__addsf3>
     1bc:	4b 01       	movw	r8, r22
     1be:	5c 01       	movw	r10, r24
     1c0:	20 e0       	ldi	r18, 0x00	; 0
     1c2:	30 e0       	ldi	r19, 0x00	; 0
     1c4:	40 ea       	ldi	r20, 0xA0	; 160
     1c6:	53 e4       	ldi	r21, 0x43	; 67
     1c8:	6c 81       	ldd	r22, Y+4	; 0x04
     1ca:	7d 81       	ldd	r23, Y+5	; 0x05
     1cc:	8e 81       	ldd	r24, Y+6	; 0x06
     1ce:	9f 81       	ldd	r25, Y+7	; 0x07
     1d0:	0e 94 2c 0e 	call	0x1c58	; 0x1c58 <__mulsf3>
     1d4:	9b 01       	movw	r18, r22
     1d6:	ac 01       	movw	r20, r24
     1d8:	c5 01       	movw	r24, r10
     1da:	b4 01       	movw	r22, r8
     1dc:	0e 94 ce 0c 	call	0x199c	; 0x199c <__addsf3>
     1e0:	20 e0       	ldi	r18, 0x00	; 0
     1e2:	30 e0       	ldi	r19, 0x00	; 0
     1e4:	40 e0       	ldi	r20, 0x00	; 0
     1e6:	5d e3       	ldi	r21, 0x3D	; 61
     1e8:	0e 94 2c 0e 	call	0x1c58	; 0x1c58 <__mulsf3>
     1ec:	9b 01       	movw	r18, r22
     1ee:	ac 01       	movw	r20, r24
     1f0:	c2 01       	movw	r24, r4
     1f2:	b1 01       	movw	r22, r2
     1f4:	0e 94 ce 0c 	call	0x199c	; 0x199c <__addsf3>
     1f8:	1b 01       	movw	r2, r22
     1fa:	2c 01       	movw	r4, r24
     1fc:	20 e0       	ldi	r18, 0x00	; 0
     1fe:	30 e0       	ldi	r19, 0x00	; 0
     200:	40 e3       	ldi	r20, 0x30	; 48
     202:	52 e4       	ldi	r21, 0x42	; 66
     204:	0e 94 27 0e 	call	0x1c4e	; 0x1c4e <__gesf2>
     208:	18 16       	cp	r1, r24
     20a:	8c f0       	brlt	.+34     	; 0x22e <_Z7ir_demov+0x132>
     20c:	20 e0       	ldi	r18, 0x00	; 0
     20e:	30 e0       	ldi	r19, 0x00	; 0
     210:	40 e3       	ldi	r20, 0x30	; 48
     212:	52 ec       	ldi	r21, 0xC2	; 194
     214:	c2 01       	movw	r24, r4
     216:	b1 01       	movw	r22, r2
     218:	0e 94 3a 0d 	call	0x1a74	; 0x1a74 <__cmpsf2>
     21c:	87 ff       	sbrs	r24, 7
     21e:	0d c0       	rjmp	.+26     	; 0x23a <_Z7ir_demov+0x13e>
     220:	21 2c       	mov	r2, r1
     222:	31 2c       	mov	r3, r1
     224:	40 e3       	ldi	r20, 0x30	; 48
     226:	44 2e       	mov	r4, r20
     228:	42 ec       	ldi	r20, 0xC2	; 194
     22a:	54 2e       	mov	r5, r20
     22c:	06 c0       	rjmp	.+12     	; 0x23a <_Z7ir_demov+0x13e>
     22e:	21 2c       	mov	r2, r1
     230:	31 2c       	mov	r3, r1
     232:	30 e3       	ldi	r19, 0x30	; 48
     234:	43 2e       	mov	r4, r19
     236:	32 e4       	ldi	r19, 0x42	; 66
     238:	53 2e       	mov	r5, r19
     23a:	c2 01       	movw	r24, r4
     23c:	b1 01       	movw	r22, r2
     23e:	0e 94 3f 0d 	call	0x1a7e	; 0x1a7e <__fixsfsi>
     242:	4b 01       	movw	r8, r22
     244:	5c 01       	movw	r10, r24
     246:	8b 01       	movw	r16, r22
     248:	9c 01       	movw	r18, r24
     24a:	40 e0       	ldi	r20, 0x00	; 0
     24c:	50 e0       	ldi	r21, 0x00	; 0
     24e:	ba 01       	movw	r22, r20
     250:	88 ea       	ldi	r24, 0xA8	; 168
     252:	9d e0       	ldi	r25, 0x0D	; 13
     254:	0e 94 df 0a 	call	0x15be	; 0x15be <_ZN9CMotorI2C9set_motorEml>
     258:	00 27       	eor	r16, r16
     25a:	11 27       	eor	r17, r17
     25c:	98 01       	movw	r18, r16
     25e:	08 19       	sub	r16, r8
     260:	19 09       	sbc	r17, r9
     262:	2a 09       	sbc	r18, r10
     264:	3b 09       	sbc	r19, r11
     266:	41 e0       	ldi	r20, 0x01	; 1
     268:	50 e0       	ldi	r21, 0x00	; 0
     26a:	60 e0       	ldi	r22, 0x00	; 0
     26c:	70 e0       	ldi	r23, 0x00	; 0
     26e:	88 ea       	ldi	r24, 0xA8	; 168
     270:	9d e0       	ldi	r25, 0x0D	; 13
     272:	0e 94 df 0a 	call	0x15be	; 0x15be <_ZN9CMotorI2C9set_motorEml>
     276:	cc 82       	std	Y+4, r12	; 0x04
     278:	dd 82       	std	Y+5, r13	; 0x05
     27a:	6e 82       	std	Y+6, r6	; 0x06
     27c:	7f 82       	std	Y+7, r7	; 0x07
     27e:	19 c0       	rjmp	.+50     	; 0x2b2 <_Z7ir_demov+0x1b6>
     280:	00 e0       	ldi	r16, 0x00	; 0
     282:	10 e0       	ldi	r17, 0x00	; 0
     284:	98 01       	movw	r18, r16
     286:	40 e0       	ldi	r20, 0x00	; 0
     288:	50 e0       	ldi	r21, 0x00	; 0
     28a:	ba 01       	movw	r22, r20
     28c:	88 ea       	ldi	r24, 0xA8	; 168
     28e:	9d e0       	ldi	r25, 0x0D	; 13
     290:	0e 94 df 0a 	call	0x15be	; 0x15be <_ZN9CMotorI2C9set_motorEml>
     294:	00 e0       	ldi	r16, 0x00	; 0
     296:	10 e0       	ldi	r17, 0x00	; 0
     298:	98 01       	movw	r18, r16
     29a:	41 e0       	ldi	r20, 0x01	; 1
     29c:	50 e0       	ldi	r21, 0x00	; 0
     29e:	60 e0       	ldi	r22, 0x00	; 0
     2a0:	70 e0       	ldi	r23, 0x00	; 0
     2a2:	88 ea       	ldi	r24, 0xA8	; 168
     2a4:	9d e0       	ldi	r25, 0x0D	; 13
     2a6:	0e 94 df 0a 	call	0x15be	; 0x15be <_ZN9CMotorI2C9set_motorEml>
     2aa:	fc 2c       	mov	r15, r12
     2ac:	d9 82       	std	Y+1, r13	; 0x01
     2ae:	6a 82       	std	Y+2, r6	; 0x02
     2b0:	7b 82       	std	Y+3, r7	; 0x03
     2b2:	88 ea       	ldi	r24, 0xA8	; 168
     2b4:	99 e0       	ldi	r25, 0x09	; 9
     2b6:	0e 94 88 04 	call	0x910	; 0x910 <_ZN12CSSD1306OLED14oled_lcd_clearEv>
     2ba:	2e e1       	ldi	r18, 0x1E	; 30
     2bc:	82 2e       	mov	r8, r18
     2be:	29 e0       	ldi	r18, 0x09	; 9
     2c0:	92 2e       	mov	r9, r18
     2c2:	c1 2c       	mov	r12, r1
     2c4:	d1 2c       	mov	r13, r1
     2c6:	36 01       	movw	r6, r12
     2c8:	76 94       	lsr	r7
     2ca:	67 94       	ror	r6
     2cc:	76 94       	lsr	r7
     2ce:	67 94       	ror	r6
     2d0:	a1 2c       	mov	r10, r1
     2d2:	b1 2c       	mov	r11, r1
     2d4:	19 86       	std	Y+9, r1	; 0x09
     2d6:	18 86       	std	Y+8, r1	; 0x08
     2d8:	e8 85       	ldd	r30, Y+8	; 0x08
     2da:	f9 85       	ldd	r31, Y+9	; 0x09
     2dc:	e8 0d       	add	r30, r8
     2de:	f9 1d       	adc	r31, r9
     2e0:	b5 01       	movw	r22, r10
     2e2:	94 e0       	ldi	r25, 0x04	; 4
     2e4:	76 95       	lsr	r23
     2e6:	67 95       	ror	r22
     2e8:	9a 95       	dec	r25
     2ea:	e1 f7       	brne	.-8      	; 0x2e4 <_Z7ir_demov+0x1e8>
     2ec:	e0 80       	ld	r14, Z
     2ee:	00 e1       	ldi	r16, 0x10	; 16
     2f0:	10 e0       	ldi	r17, 0x00	; 0
     2f2:	28 e0       	ldi	r18, 0x08	; 8
     2f4:	30 e0       	ldi	r19, 0x00	; 0
     2f6:	a3 01       	movw	r20, r6
     2f8:	88 ea       	ldi	r24, 0xA8	; 168
     2fa:	99 e0       	ldi	r25, 0x09	; 9
     2fc:	0e 94 d6 04 	call	0x9ac	; 0x9ac <_ZN12CSSD1306OLED15oled_put_squareEjjjjh>
     300:	88 85       	ldd	r24, Y+8	; 0x08
     302:	99 85       	ldd	r25, Y+9	; 0x09
     304:	02 96       	adiw	r24, 0x02	; 2
     306:	99 87       	std	Y+9, r25	; 0x09
     308:	88 87       	std	Y+8, r24	; 0x08
     30a:	90 e8       	ldi	r25, 0x80	; 128
     30c:	a9 0e       	add	r10, r25
     30e:	b1 1c       	adc	r11, r1
     310:	e8 85       	ldd	r30, Y+8	; 0x08
     312:	f9 85       	ldd	r31, Y+9	; 0x09
     314:	b0 97       	sbiw	r30, 0x20	; 32
     316:	01 f7       	brne	.-64     	; 0x2d8 <_Z7ir_demov+0x1dc>
     318:	f0 e4       	ldi	r31, 0x40	; 64
     31a:	cf 0e       	add	r12, r31
     31c:	d1 1c       	adc	r13, r1
     31e:	80 e2       	ldi	r24, 0x20	; 32
     320:	88 0e       	add	r8, r24
     322:	91 1c       	adc	r9, r1
     324:	c1 14       	cp	r12, r1
     326:	91 e0       	ldi	r25, 0x01	; 1
     328:	d9 06       	cpc	r13, r25
     32a:	69 f6       	brne	.-102    	; 0x2c6 <_Z7ir_demov+0x1ca>
     32c:	88 ea       	ldi	r24, 0xA8	; 168
     32e:	99 e0       	ldi	r25, 0x09	; 9
     330:	0e 94 8d 05 	call	0xb1a	; 0xb1a <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv>
     334:	4a e0       	ldi	r20, 0x0A	; 10
     336:	50 e0       	ldi	r21, 0x00	; 0
     338:	60 e0       	ldi	r22, 0x00	; 0
     33a:	70 e0       	ldi	r23, 0x00	; 0
     33c:	8d e3       	ldi	r24, 0x3D	; 61
     33e:	9e e0       	ldi	r25, 0x0E	; 14
     340:	0e 94 99 0b 	call	0x1732	; 0x1732 <_ZN6CTimer8delay_msEm>
     344:	cf 2c       	mov	r12, r15
     346:	d9 80       	ldd	r13, Y+1	; 0x01
     348:	6a 80       	ldd	r6, Y+2	; 0x02
     34a:	7b 80       	ldd	r7, Y+3	; 0x03
     34c:	ec ce       	rjmp	.-552    	; 0x126 <_Z7ir_demov+0x2a>

0000034e <_Z8usr_mainv>:
     34e:	80 eb       	ldi	r24, 0xB0	; 176
     350:	9d e0       	ldi	r25, 0x0D	; 13
     352:	0e 94 44 08 	call	0x1088	; 0x1088 <_ZN4CIMU4initEv>
     356:	88 ea       	ldi	r24, 0xA8	; 168
     358:	9d e0       	ldi	r25, 0x0D	; 13
     35a:	0e 94 f5 0a 	call	0x15ea	; 0x15ea <_ZN9CMotorI2C4initEv>
     35e:	88 ea       	ldi	r24, 0xA8	; 168
     360:	9d e0       	ldi	r25, 0x0D	; 13
     362:	0e 94 cb 09 	call	0x1396	; 0x1396 <_ZN9CMotorI2C5sleepEv>
     366:	88 ea       	ldi	r24, 0xA8	; 168
     368:	99 e0       	ldi	r25, 0x09	; 9
     36a:	0e 94 e4 05 	call	0xbc8	; 0xbc8 <_ZN12CSSD1306OLED13oled_lcd_initEv>
     36e:	8e e1       	ldi	r24, 0x1E	; 30
     370:	99 e0       	ldi	r25, 0x09	; 9
     372:	0e 94 58 02 	call	0x4b0	; 0x4b0 <_ZN9CMLX906214initEv>
     376:	20 e0       	ldi	r18, 0x00	; 0
     378:	4c e2       	ldi	r20, 0x2C	; 44
     37a:	51 e0       	ldi	r21, 0x01	; 1
     37c:	6a e6       	ldi	r22, 0x6A	; 106
     37e:	70 e0       	ldi	r23, 0x00	; 0
     380:	8d e3       	ldi	r24, 0x3D	; 61
     382:	9e e0       	ldi	r25, 0x0E	; 14
     384:	0e 94 54 0b 	call	0x16a8	; 0x16a8 <_ZN6CTimer8add_taskEPFvvEjb>
     388:	40 e0       	ldi	r20, 0x00	; 0
     38a:	50 e0       	ldi	r21, 0x00	; 0
     38c:	60 e0       	ldi	r22, 0x00	; 0
     38e:	75 e0       	ldi	r23, 0x05	; 5
     390:	88 ea       	ldi	r24, 0xA8	; 168
     392:	99 e0       	ldi	r25, 0x09	; 9
     394:	0e 94 1e 06 	call	0xc3c	; 0xc3c <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj>
     398:	88 ea       	ldi	r24, 0xA8	; 168
     39a:	99 e0       	ldi	r25, 0x09	; 9
     39c:	0e 94 55 05 	call	0xaaa	; 0xaaa <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
     3a0:	40 ed       	ldi	r20, 0xD0	; 208
     3a2:	57 e0       	ldi	r21, 0x07	; 7
     3a4:	60 e0       	ldi	r22, 0x00	; 0
     3a6:	70 e0       	ldi	r23, 0x00	; 0
     3a8:	8d e3       	ldi	r24, 0x3D	; 61
     3aa:	9e e0       	ldi	r25, 0x0E	; 14
     3ac:	0e 94 99 0b 	call	0x1732	; 0x1732 <_ZN6CTimer8delay_msEm>
     3b0:	40 e0       	ldi	r20, 0x00	; 0
     3b2:	50 e0       	ldi	r21, 0x00	; 0
     3b4:	60 e0       	ldi	r22, 0x00	; 0
     3b6:	71 e0       	ldi	r23, 0x01	; 1
     3b8:	88 ea       	ldi	r24, 0xA8	; 168
     3ba:	99 e0       	ldi	r25, 0x09	; 9
     3bc:	0e 94 1e 06 	call	0xc3c	; 0xc3c <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj>
     3c0:	88 ea       	ldi	r24, 0xA8	; 168
     3c2:	99 e0       	ldi	r25, 0x09	; 9
     3c4:	0e 94 55 05 	call	0xaaa	; 0xaaa <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
     3c8:	83 b1       	in	r24, 0x03	; 3
     3ca:	0e 94 7e 00 	call	0xfc	; 0xfc <_Z7ir_demov>

000003ce <_GLOBAL__sub_I_led>:
     3ce:	84 b1       	in	r24, 0x04	; 4
     3d0:	84 b9       	out	0x04, r24	; 4
     3d2:	84 b1       	in	r24, 0x04	; 4
     3d4:	84 b9       	out	0x04, r24	; 4
     3d6:	85 b1       	in	r24, 0x05	; 5
     3d8:	85 b9       	out	0x05, r24	; 5
     3da:	80 eb       	ldi	r24, 0xB0	; 176
     3dc:	9d e0       	ldi	r25, 0x0D	; 13
     3de:	0e 94 ae 06 	call	0xd5c	; 0xd5c <_ZN4CIMUC1Ev>
     3e2:	88 ea       	ldi	r24, 0xA8	; 168
     3e4:	9d e0       	ldi	r25, 0x0D	; 13
     3e6:	0e 94 c9 09 	call	0x1392	; 0x1392 <_ZN9CMotorI2CC1Ev>
     3ea:	88 ea       	ldi	r24, 0xA8	; 168
     3ec:	99 e0       	ldi	r25, 0x09	; 9
     3ee:	0e 94 86 04 	call	0x90c	; 0x90c <_ZN12CSSD1306OLEDC1Ev>
     3f2:	8e e1       	ldi	r24, 0x1E	; 30
     3f4:	99 e0       	ldi	r25, 0x09	; 9
     3f6:	0c 94 56 02 	jmp	0x4ac	; 0x4ac <_ZN9CMLX90621C1Ev>

000003fa <_GLOBAL__sub_D_led>:
     3fa:	8e e1       	ldi	r24, 0x1E	; 30
     3fc:	99 e0       	ldi	r25, 0x09	; 9
     3fe:	0e 94 57 02 	call	0x4ae	; 0x4ae <_ZN9CMLX90621D1Ev>
     402:	88 ea       	ldi	r24, 0xA8	; 168
     404:	99 e0       	ldi	r25, 0x09	; 9
     406:	0e 94 87 04 	call	0x90e	; 0x90e <_ZN12CSSD1306OLEDD1Ev>
     40a:	88 ea       	ldi	r24, 0xA8	; 168
     40c:	9d e0       	ldi	r25, 0x0D	; 13
     40e:	0e 94 ca 09 	call	0x1394	; 0x1394 <_ZN9CMotorI2CD1Ev>
     412:	80 eb       	ldi	r24, 0xB0	; 176
     414:	9d e0       	ldi	r25, 0x0D	; 13
     416:	0c 94 af 06 	jmp	0xd5e	; 0xd5e <_ZN4CIMUD1Ev>

0000041a <_GLOBAL__sub_I_math>:
     41a:	e0 ef       	ldi	r30, 0xF0	; 240
     41c:	fd e0       	ldi	r31, 0x0D	; 13
     41e:	81 e0       	ldi	r24, 0x01	; 1
     420:	90 e0       	ldi	r25, 0x00	; 0
     422:	91 83       	std	Z+1, r25	; 0x01
     424:	80 83       	st	Z, r24
     426:	82 e0       	ldi	r24, 0x02	; 2
     428:	90 e0       	ldi	r25, 0x00	; 0
     42a:	93 83       	std	Z+3, r25	; 0x03
     42c:	82 83       	std	Z+2, r24	; 0x02
     42e:	08 95       	ret

00000430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
     438:	00 00       	nop
     43a:	08 95       	ret

0000043c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>:
     43c:	cf 93       	push	r28
     43e:	df 93       	push	r29
     440:	d8 2f       	mov	r29, r24
     442:	c8 e0       	ldi	r28, 0x08	; 8
     444:	3d 9a       	sbi	0x07, 5	; 7
     446:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     44a:	d7 ff       	sbrs	r29, 7
     44c:	02 c0       	rjmp	.+4      	; 0x452 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x16>
     44e:	3c 98       	cbi	0x07, 4	; 7
     450:	01 c0       	rjmp	.+2      	; 0x454 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x18>
     452:	3c 9a       	sbi	0x07, 4	; 7
     454:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     458:	3d 98       	cbi	0x07, 5	; 7
     45a:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     45e:	dd 0f       	add	r29, r29
     460:	c1 50       	subi	r28, 0x01	; 1
     462:	81 f7       	brne	.-32     	; 0x444 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x8>
     464:	3d 9a       	sbi	0x07, 5	; 7
     466:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     46a:	3c 98       	cbi	0x07, 4	; 7
     46c:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     470:	3d 98       	cbi	0x07, 5	; 7
     472:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     476:	c6 b1       	in	r28, 0x06	; 6
     478:	3d 9a       	sbi	0x07, 5	; 7
     47a:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     47e:	c2 95       	swap	r28
     480:	c1 70       	andi	r28, 0x01	; 1
     482:	81 e0       	ldi	r24, 0x01	; 1
     484:	8c 27       	eor	r24, r28
     486:	df 91       	pop	r29
     488:	cf 91       	pop	r28
     48a:	08 95       	ret

0000048c <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>:
     48c:	3d 9a       	sbi	0x07, 5	; 7
     48e:	3c 9a       	sbi	0x07, 4	; 7
     490:	3d 98       	cbi	0x07, 5	; 7
     492:	3c 9a       	sbi	0x07, 4	; 7
     494:	3d 98       	cbi	0x07, 5	; 7
     496:	3c 98       	cbi	0x07, 4	; 7
     498:	0c 94 18 02 	jmp	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

0000049c <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>:
     49c:	3d 98       	cbi	0x07, 5	; 7
     49e:	3c 98       	cbi	0x07, 4	; 7
     4a0:	3d 98       	cbi	0x07, 5	; 7
     4a2:	3c 9a       	sbi	0x07, 4	; 7
     4a4:	3d 9a       	sbi	0x07, 5	; 7
     4a6:	3c 98       	cbi	0x07, 4	; 7
     4a8:	0c 94 18 02 	jmp	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

000004ac <_ZN9CMLX90621C1Ev>:
     4ac:	08 95       	ret

000004ae <_ZN9CMLX90621D1Ev>:
     4ae:	08 95       	ret

000004b0 <_ZN9CMLX906214initEv>:
     4b0:	fc 01       	movw	r30, r24
     4b2:	e0 58       	subi	r30, 0x80	; 128
     4b4:	ff 4f       	sbci	r31, 0xFF	; 255
     4b6:	11 82       	std	Z+1, r1	; 0x01
     4b8:	10 82       	st	Z, r1
     4ba:	dc 01       	movw	r26, r24
     4bc:	ae 57       	subi	r26, 0x7E	; 126
     4be:	bf 4f       	sbci	r27, 0xFF	; 255
     4c0:	11 96       	adiw	r26, 0x01	; 1
     4c2:	1c 92       	st	X, r1
     4c4:	1e 92       	st	-X, r1
     4c6:	12 96       	adiw	r26, 0x02	; 2
     4c8:	11 96       	adiw	r26, 0x01	; 1
     4ca:	1c 92       	st	X, r1
     4cc:	1e 92       	st	-X, r1
     4ce:	12 96       	adiw	r26, 0x02	; 2
     4d0:	11 96       	adiw	r26, 0x01	; 1
     4d2:	1c 92       	st	X, r1
     4d4:	1e 92       	st	-X, r1
     4d6:	12 96       	adiw	r26, 0x02	; 2
     4d8:	1d 92       	st	X+, r1
     4da:	1c 92       	st	X, r1
     4dc:	20 e0       	ldi	r18, 0x00	; 0
     4de:	30 e0       	ldi	r19, 0x00	; 0
     4e0:	dc 01       	movw	r26, r24
     4e2:	a2 0f       	add	r26, r18
     4e4:	b3 1f       	adc	r27, r19
     4e6:	1d 92       	st	X+, r1
     4e8:	1c 92       	st	X, r1
     4ea:	2e 5f       	subi	r18, 0xFE	; 254
     4ec:	3f 4f       	sbci	r19, 0xFF	; 255
     4ee:	20 32       	cpi	r18, 0x20	; 32
     4f0:	31 05       	cpc	r19, r1
     4f2:	b1 f7       	brne	.-20     	; 0x4e0 <_ZN9CMLX906214initEv+0x30>
     4f4:	80 96       	adiw	r24, 0x20	; 32
     4f6:	8e 17       	cp	r24, r30
     4f8:	9f 07       	cpc	r25, r31
     4fa:	81 f7       	brne	.-32     	; 0x4dc <_ZN9CMLX906214initEv+0x2c>
     4fc:	0e 94 4e 02 	call	0x49c	; 0x49c <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     500:	80 ec       	ldi	r24, 0xC0	; 192
     502:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     506:	83 e0       	ldi	r24, 0x03	; 3
     508:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     50c:	84 ee       	ldi	r24, 0xE4	; 228
     50e:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     512:	89 e3       	ldi	r24, 0x39	; 57
     514:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     518:	81 ef       	ldi	r24, 0xF1	; 241
     51a:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     51e:	86 e4       	ldi	r24, 0x46	; 70
     520:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     524:	0e 94 46 02 	call	0x48c	; 0x48c <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
     528:	80 e0       	ldi	r24, 0x00	; 0
     52a:	90 e0       	ldi	r25, 0x00	; 0
     52c:	08 95       	ret

0000052e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>:
     52e:	1f 93       	push	r17
     530:	cf 93       	push	r28
     532:	df 93       	push	r29
     534:	16 2f       	mov	r17, r22
     536:	3c 98       	cbi	0x07, 4	; 7
     538:	3d 9a       	sbi	0x07, 5	; 7
     53a:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     53e:	d8 e0       	ldi	r29, 0x08	; 8
     540:	c0 e0       	ldi	r28, 0x00	; 0
     542:	cc 0f       	add	r28, r28
     544:	3d 98       	cbi	0x07, 5	; 7
     546:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     54a:	34 99       	sbic	0x06, 4	; 6
     54c:	c1 60       	ori	r28, 0x01	; 1
     54e:	3d 9a       	sbi	0x07, 5	; 7
     550:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     554:	d1 50       	subi	r29, 0x01	; 1
     556:	a9 f7       	brne	.-22     	; 0x542 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x14>
     558:	11 23       	and	r17, r17
     55a:	11 f0       	breq	.+4      	; 0x560 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x32>
     55c:	3c 9a       	sbi	0x07, 4	; 7
     55e:	01 c0       	rjmp	.+2      	; 0x562 <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh+0x34>
     560:	3c 98       	cbi	0x07, 4	; 7
     562:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     566:	3d 98       	cbi	0x07, 5	; 7
     568:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     56c:	3d 9a       	sbi	0x07, 5	; 7
     56e:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     572:	3c 98       	cbi	0x07, 4	; 7
     574:	0e 94 18 02 	call	0x430	; 0x430 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     578:	8c 2f       	mov	r24, r28
     57a:	df 91       	pop	r29
     57c:	cf 91       	pop	r28
     57e:	1f 91       	pop	r17
     580:	08 95       	ret

00000582 <_ZN9CMLX906214readEv>:
     582:	2f 92       	push	r2
     584:	3f 92       	push	r3
     586:	4f 92       	push	r4
     588:	5f 92       	push	r5
     58a:	6f 92       	push	r6
     58c:	7f 92       	push	r7
     58e:	8f 92       	push	r8
     590:	9f 92       	push	r9
     592:	af 92       	push	r10
     594:	bf 92       	push	r11
     596:	cf 92       	push	r12
     598:	df 92       	push	r13
     59a:	ef 92       	push	r14
     59c:	ff 92       	push	r15
     59e:	0f 93       	push	r16
     5a0:	1f 93       	push	r17
     5a2:	cf 93       	push	r28
     5a4:	df 93       	push	r29
     5a6:	cd b7       	in	r28, 0x3d	; 61
     5a8:	de b7       	in	r29, 0x3e	; 62
     5aa:	2f 97       	sbiw	r28, 0x0f	; 15
     5ac:	0f b6       	in	r0, 0x3f	; 63
     5ae:	f8 94       	cli
     5b0:	de bf       	out	0x3e, r29	; 62
     5b2:	0f be       	out	0x3f, r0	; 63
     5b4:	cd bf       	out	0x3d, r28	; 61
     5b6:	1c 01       	movw	r2, r24
     5b8:	0e 94 4e 02 	call	0x49c	; 0x49c <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     5bc:	80 ec       	ldi	r24, 0xC0	; 192
     5be:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     5c2:	82 e0       	ldi	r24, 0x02	; 2
     5c4:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     5c8:	80 e0       	ldi	r24, 0x00	; 0
     5ca:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     5ce:	81 e0       	ldi	r24, 0x01	; 1
     5d0:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     5d4:	80 e4       	ldi	r24, 0x40	; 64
     5d6:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     5da:	0e 94 4e 02 	call	0x49c	; 0x49c <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     5de:	81 ec       	ldi	r24, 0xC1	; 193
     5e0:	0e 94 1e 02 	call	0x43c	; 0x43c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     5e4:	41 01       	movw	r8, r2
     5e6:	20 e8       	ldi	r18, 0x80	; 128
     5e8:	82 0e       	add	r8, r18
     5ea:	91 1c       	adc	r9, r1
     5ec:	80 ed       	ldi	r24, 0xD0	; 208
     5ee:	9a e8       	ldi	r25, 0x8A	; 138
     5f0:	d4 01       	movw	r26, r8
     5f2:	8d 93       	st	X+, r24
     5f4:	9c 93       	st	X, r25
     5f6:	f1 01       	movw	r30, r2
     5f8:	ee 57       	subi	r30, 0x7E	; 126
     5fa:	ff 4f       	sbci	r31, 0xFF	; 255
     5fc:	fc 83       	std	Y+4, r31	; 0x04
     5fe:	eb 83       	std	Y+3, r30	; 0x03
     600:	80 e3       	ldi	r24, 0x30	; 48
     602:	95 e7       	ldi	r25, 0x75	; 117
     604:	91 83       	std	Z+1, r25	; 0x01
     606:	80 83       	st	Z, r24
     608:	61 01       	movw	r12, r2
     60a:	f4 e8       	ldi	r31, 0x84	; 132
     60c:	cf 0e       	add	r12, r31
     60e:	d1 1c       	adc	r13, r1
     610:	d6 01       	movw	r26, r12
     612:	1d 92       	st	X+, r1
     614:	1c 92       	st	X, r1
     616:	3a 82       	std	Y+2, r3	; 0x02
     618:	29 82       	std	Y+1, r2	; 0x01
     61a:	51 01       	movw	r10, r2
     61c:	b0 e2       	ldi	r27, 0x20	; 32
     61e:	ab 0e       	add	r10, r27
     620:	b1 1c       	adc	r11, r1
     622:	71 01       	movw	r14, r2
     624:	41 2c       	mov	r4, r1
     626:	51 2c       	mov	r5, r1
     628:	32 01       	movw	r6, r4
     62a:	00 e0       	ldi	r16, 0x00	; 0
     62c:	10 e0       	ldi	r17, 0x00	; 0
     62e:	61 e0       	ldi	r22, 0x01	; 1
     630:	8e e3       	ldi	r24, 0x3E	; 62
     632:	9e e0       	ldi	r25, 0x0E	; 14
     634:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     638:	28 2f       	mov	r18, r24
     63a:	61 e0       	ldi	r22, 0x01	; 1
     63c:	8e e3       	ldi	r24, 0x3E	; 62
     63e:	9e e0       	ldi	r25, 0x0E	; 14
     640:	2f 87       	std	Y+15, r18	; 0x0f
     642:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     646:	2f 85       	ldd	r18, Y+15	; 0x0f
     648:	30 e0       	ldi	r19, 0x00	; 0
     64a:	f9 01       	movw	r30, r18
     64c:	f8 2b       	or	r31, r24
     64e:	cf 01       	movw	r24, r30
     650:	f8 01       	movw	r30, r16
     652:	e0 5a       	subi	r30, 0xA0	; 160
     654:	ff 4f       	sbci	r31, 0xFF	; 255
     656:	ee 0d       	add	r30, r14
     658:	ff 1d       	adc	r31, r15
     65a:	91 83       	std	Z+1, r25	; 0x01
     65c:	80 83       	st	Z, r24
     65e:	d4 01       	movw	r26, r8
     660:	2d 91       	ld	r18, X+
     662:	3c 91       	ld	r19, X
     664:	11 97       	sbiw	r26, 0x01	; 1
     666:	28 17       	cp	r18, r24
     668:	39 07       	cpc	r19, r25
     66a:	14 f4       	brge	.+4      	; 0x670 <_ZN9CMLX906214readEv+0xee>
     66c:	8d 93       	st	X+, r24
     66e:	9c 93       	st	X, r25
     670:	eb 81       	ldd	r30, Y+3	; 0x03
     672:	fc 81       	ldd	r31, Y+4	; 0x04
     674:	20 81       	ld	r18, Z
     676:	31 81       	ldd	r19, Z+1	; 0x01
     678:	82 17       	cp	r24, r18
     67a:	93 07       	cpc	r25, r19
     67c:	14 f4       	brge	.+4      	; 0x682 <_ZN9CMLX906214readEv+0x100>
     67e:	91 83       	std	Z+1, r25	; 0x01
     680:	80 83       	st	Z, r24
     682:	09 2e       	mov	r0, r25
     684:	00 0c       	add	r0, r0
     686:	aa 0b       	sbc	r26, r26
     688:	bb 0b       	sbc	r27, r27
     68a:	48 0e       	add	r4, r24
     68c:	59 1e       	adc	r5, r25
     68e:	6a 1e       	adc	r6, r26
     690:	7b 1e       	adc	r7, r27
     692:	00 52       	subi	r16, 0x20	; 32
     694:	11 09       	sbc	r17, r1
     696:	00 38       	cpi	r16, 0x80	; 128
     698:	ff ef       	ldi	r31, 0xFF	; 255
     69a:	1f 07       	cpc	r17, r31
     69c:	41 f6       	brne	.-112    	; 0x62e <_ZN9CMLX906214readEv+0xac>
     69e:	22 e0       	ldi	r18, 0x02	; 2
     6a0:	e2 0e       	add	r14, r18
     6a2:	f1 1c       	adc	r15, r1
     6a4:	ea 14       	cp	r14, r10
     6a6:	fb 04       	cpc	r15, r11
     6a8:	09 f0       	breq	.+2      	; 0x6ac <_ZN9CMLX906214readEv+0x12a>
     6aa:	bf cf       	rjmp	.-130    	; 0x62a <_ZN9CMLX906214readEv+0xa8>
     6ac:	c3 01       	movw	r24, r6
     6ae:	b2 01       	movw	r22, r4
     6b0:	20 e4       	ldi	r18, 0x40	; 64
     6b2:	30 e0       	ldi	r19, 0x00	; 0
     6b4:	40 e0       	ldi	r20, 0x00	; 0
     6b6:	50 e0       	ldi	r21, 0x00	; 0
     6b8:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     6bc:	d6 01       	movw	r26, r12
     6be:	2d 93       	st	X+, r18
     6c0:	3c 93       	st	X, r19
     6c2:	0e 94 46 02 	call	0x48c	; 0x48c <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
     6c6:	f4 01       	movw	r30, r8
     6c8:	20 81       	ld	r18, Z
     6ca:	31 81       	ldd	r19, Z+1	; 0x01
     6cc:	ab 81       	ldd	r26, Y+3	; 0x03
     6ce:	bc 81       	ldd	r27, Y+4	; 0x04
     6d0:	0d 91       	ld	r16, X+
     6d2:	1c 91       	ld	r17, X
     6d4:	02 17       	cp	r16, r18
     6d6:	13 07       	cpc	r17, r19
     6d8:	0c f0       	brlt	.+2      	; 0x6dc <_ZN9CMLX906214readEv+0x15a>
     6da:	c1 c0       	rjmp	.+386    	; 0x85e <_ZN9CMLX906214readEv+0x2dc>
     6dc:	20 1b       	sub	r18, r16
     6de:	31 0b       	sbc	r19, r17
     6e0:	03 2e       	mov	r0, r19
     6e2:	00 0c       	add	r0, r0
     6e4:	44 0b       	sbc	r20, r20
     6e6:	55 0b       	sbc	r21, r21
     6e8:	68 e1       	ldi	r22, 0x18	; 24
     6ea:	74 ee       	ldi	r23, 0xE4	; 228
     6ec:	83 e0       	ldi	r24, 0x03	; 3
     6ee:	90 e0       	ldi	r25, 0x00	; 0
     6f0:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     6f4:	69 01       	movw	r12, r18
     6f6:	7a 01       	movw	r14, r20
     6f8:	d8 01       	movw	r26, r16
     6fa:	0e 94 9d 0c 	call	0x193a	; 0x193a <__mulshisi3>
     6fe:	2b 01       	movw	r4, r22
     700:	3c 01       	movw	r6, r24
     702:	3c 82       	std	Y+4, r3	; 0x04
     704:	2b 82       	std	Y+3, r2	; 0x03
     706:	00 e0       	ldi	r16, 0x00	; 0
     708:	10 e0       	ldi	r17, 0x00	; 0
     70a:	ab 80       	ldd	r10, Y+3	; 0x03
     70c:	bc 80       	ldd	r11, Y+4	; 0x04
     70e:	a0 0e       	add	r10, r16
     710:	b1 1e       	adc	r11, r17
     712:	f5 01       	movw	r30, r10
     714:	a0 81       	ld	r26, Z
     716:	b1 81       	ldd	r27, Z+1	; 0x01
     718:	a7 01       	movw	r20, r14
     71a:	96 01       	movw	r18, r12
     71c:	0e 94 9d 0c 	call	0x193a	; 0x193a <__mulshisi3>
     720:	64 19       	sub	r22, r4
     722:	75 09       	sbc	r23, r5
     724:	86 09       	sbc	r24, r6
     726:	97 09       	sbc	r25, r7
     728:	28 ee       	ldi	r18, 0xE8	; 232
     72a:	33 e0       	ldi	r19, 0x03	; 3
     72c:	40 e0       	ldi	r20, 0x00	; 0
     72e:	50 e0       	ldi	r21, 0x00	; 0
     730:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     734:	d5 01       	movw	r26, r10
     736:	2d 93       	st	X+, r18
     738:	3c 93       	st	X, r19
     73a:	0e 5f       	subi	r16, 0xFE	; 254
     73c:	1f 4f       	sbci	r17, 0xFF	; 255
     73e:	00 32       	cpi	r16, 0x20	; 32
     740:	11 05       	cpc	r17, r1
     742:	19 f7       	brne	.-58     	; 0x70a <_ZN9CMLX906214readEv+0x188>
     744:	eb 81       	ldd	r30, Y+3	; 0x03
     746:	fc 81       	ldd	r31, Y+4	; 0x04
     748:	b0 96       	adiw	r30, 0x20	; 32
     74a:	fc 83       	std	Y+4, r31	; 0x04
     74c:	eb 83       	std	Y+3, r30	; 0x03
     74e:	e8 15       	cp	r30, r8
     750:	f9 05       	cpc	r31, r9
     752:	c9 f6       	brne	.-78     	; 0x706 <_ZN9CMLX906214readEv+0x184>
     754:	41 2c       	mov	r4, r1
     756:	51 2c       	mov	r5, r1
     758:	32 01       	movw	r6, r4
     75a:	1f 82       	std	Y+7, r1	; 0x07
     75c:	18 86       	std	Y+8, r1	; 0x08
     75e:	19 86       	std	Y+9, r1	; 0x09
     760:	1a 86       	std	Y+10, r1	; 0x0a
     762:	1b 82       	std	Y+3, r1	; 0x03
     764:	1c 82       	std	Y+4, r1	; 0x04
     766:	1d 82       	std	Y+5, r1	; 0x05
     768:	1e 82       	std	Y+6, r1	; 0x06
     76a:	81 2c       	mov	r8, r1
     76c:	91 2c       	mov	r9, r1
     76e:	54 01       	movw	r10, r8
     770:	1b 86       	std	Y+11, r1	; 0x0b
     772:	1c 86       	std	Y+12, r1	; 0x0c
     774:	1d 86       	std	Y+13, r1	; 0x0d
     776:	1e 86       	std	Y+14, r1	; 0x0e
     778:	e0 e0       	ldi	r30, 0x00	; 0
     77a:	f0 e0       	ldi	r31, 0x00	; 0
     77c:	a9 81       	ldd	r26, Y+1	; 0x01
     77e:	ba 81       	ldd	r27, Y+2	; 0x02
     780:	ae 0f       	add	r26, r30
     782:	bf 1f       	adc	r27, r31
     784:	cd 90       	ld	r12, X+
     786:	dc 90       	ld	r13, X
     788:	0d 2c       	mov	r0, r13
     78a:	00 0c       	add	r0, r0
     78c:	ee 08       	sbc	r14, r14
     78e:	ff 08       	sbc	r15, r15
     790:	8c 0c       	add	r8, r12
     792:	9d 1c       	adc	r9, r13
     794:	ae 1c       	adc	r10, r14
     796:	bf 1c       	adc	r11, r15
     798:	2b 85       	ldd	r18, Y+11	; 0x0b
     79a:	3c 85       	ldd	r19, Y+12	; 0x0c
     79c:	4d 85       	ldd	r20, Y+13	; 0x0d
     79e:	5e 85       	ldd	r21, Y+14	; 0x0e
     7a0:	c7 01       	movw	r24, r14
     7a2:	b6 01       	movw	r22, r12
     7a4:	0e 94 40 0c 	call	0x1880	; 0x1880 <__mulsi3>
     7a8:	2b 81       	ldd	r18, Y+3	; 0x03
     7aa:	3c 81       	ldd	r19, Y+4	; 0x04
     7ac:	4d 81       	ldd	r20, Y+5	; 0x05
     7ae:	5e 81       	ldd	r21, Y+6	; 0x06
     7b0:	26 0f       	add	r18, r22
     7b2:	37 1f       	adc	r19, r23
     7b4:	48 1f       	adc	r20, r24
     7b6:	59 1f       	adc	r21, r25
     7b8:	2b 83       	std	Y+3, r18	; 0x03
     7ba:	3c 83       	std	Y+4, r19	; 0x04
     7bc:	4d 83       	std	Y+5, r20	; 0x05
     7be:	5e 83       	std	Y+6, r21	; 0x06
     7c0:	a3 01       	movw	r20, r6
     7c2:	92 01       	movw	r18, r4
     7c4:	c7 01       	movw	r24, r14
     7c6:	b6 01       	movw	r22, r12
     7c8:	0e 94 40 0c 	call	0x1880	; 0x1880 <__mulsi3>
     7cc:	2f 81       	ldd	r18, Y+7	; 0x07
     7ce:	38 85       	ldd	r19, Y+8	; 0x08
     7d0:	49 85       	ldd	r20, Y+9	; 0x09
     7d2:	5a 85       	ldd	r21, Y+10	; 0x0a
     7d4:	26 0f       	add	r18, r22
     7d6:	37 1f       	adc	r19, r23
     7d8:	48 1f       	adc	r20, r24
     7da:	59 1f       	adc	r21, r25
     7dc:	2f 83       	std	Y+7, r18	; 0x07
     7de:	38 87       	std	Y+8, r19	; 0x08
     7e0:	49 87       	std	Y+9, r20	; 0x09
     7e2:	5a 87       	std	Y+10, r21	; 0x0a
     7e4:	32 96       	adiw	r30, 0x02	; 2
     7e6:	8b 85       	ldd	r24, Y+11	; 0x0b
     7e8:	9c 85       	ldd	r25, Y+12	; 0x0c
     7ea:	ad 85       	ldd	r26, Y+13	; 0x0d
     7ec:	be 85       	ldd	r27, Y+14	; 0x0e
     7ee:	80 5c       	subi	r24, 0xC0	; 192
     7f0:	9f 4f       	sbci	r25, 0xFF	; 255
     7f2:	af 4f       	sbci	r26, 0xFF	; 255
     7f4:	bf 4f       	sbci	r27, 0xFF	; 255
     7f6:	8b 87       	std	Y+11, r24	; 0x0b
     7f8:	9c 87       	std	Y+12, r25	; 0x0c
     7fa:	ad 87       	std	Y+13, r26	; 0x0d
     7fc:	be 87       	std	Y+14, r27	; 0x0e
     7fe:	e0 32       	cpi	r30, 0x20	; 32
     800:	f1 05       	cpc	r31, r1
     802:	09 f0       	breq	.+2      	; 0x806 <_ZN9CMLX906214readEv+0x284>
     804:	bb cf       	rjmp	.-138    	; 0x77c <_ZN9CMLX906214readEv+0x1fa>
     806:	a9 81       	ldd	r26, Y+1	; 0x01
     808:	ba 81       	ldd	r27, Y+2	; 0x02
     80a:	90 96       	adiw	r26, 0x20	; 32
     80c:	ba 83       	std	Y+2, r27	; 0x02
     80e:	a9 83       	std	Y+1, r26	; 0x01
     810:	bf ef       	ldi	r27, 0xFF	; 255
     812:	5b 1a       	sub	r5, r27
     814:	6b 0a       	sbc	r6, r27
     816:	7b 0a       	sbc	r7, r27
     818:	41 14       	cp	r4, r1
     81a:	e4 e0       	ldi	r30, 0x04	; 4
     81c:	5e 06       	cpc	r5, r30
     81e:	61 04       	cpc	r6, r1
     820:	71 04       	cpc	r7, r1
     822:	09 f0       	breq	.+2      	; 0x826 <_ZN9CMLX906214readEv+0x2a4>
     824:	a5 cf       	rjmp	.-182    	; 0x770 <_ZN9CMLX906214readEv+0x1ee>
     826:	81 01       	movw	r16, r2
     828:	0a 57       	subi	r16, 0x7A	; 122
     82a:	1f 4f       	sbci	r17, 0xFF	; 255
     82c:	6b 81       	ldd	r22, Y+3	; 0x03
     82e:	7c 81       	ldd	r23, Y+4	; 0x04
     830:	8d 81       	ldd	r24, Y+5	; 0x05
     832:	9e 81       	ldd	r25, Y+6	; 0x06
     834:	a5 01       	movw	r20, r10
     836:	94 01       	movw	r18, r8
     838:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     83c:	d8 01       	movw	r26, r16
     83e:	2d 93       	st	X+, r18
     840:	3c 93       	st	X, r19
     842:	b8 e8       	ldi	r27, 0x88	; 136
     844:	2b 0e       	add	r2, r27
     846:	31 1c       	adc	r3, r1
     848:	6f 81       	ldd	r22, Y+7	; 0x07
     84a:	78 85       	ldd	r23, Y+8	; 0x08
     84c:	89 85       	ldd	r24, Y+9	; 0x09
     84e:	9a 85       	ldd	r25, Y+10	; 0x0a
     850:	a5 01       	movw	r20, r10
     852:	94 01       	movw	r18, r8
     854:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     858:	f1 01       	movw	r30, r2
     85a:	31 83       	std	Z+1, r19	; 0x01
     85c:	20 83       	st	Z, r18
     85e:	2f 96       	adiw	r28, 0x0f	; 15
     860:	0f b6       	in	r0, 0x3f	; 63
     862:	f8 94       	cli
     864:	de bf       	out	0x3e, r29	; 62
     866:	0f be       	out	0x3f, r0	; 63
     868:	cd bf       	out	0x3d, r28	; 61
     86a:	df 91       	pop	r29
     86c:	cf 91       	pop	r28
     86e:	1f 91       	pop	r17
     870:	0f 91       	pop	r16
     872:	ff 90       	pop	r15
     874:	ef 90       	pop	r14
     876:	df 90       	pop	r13
     878:	cf 90       	pop	r12
     87a:	bf 90       	pop	r11
     87c:	af 90       	pop	r10
     87e:	9f 90       	pop	r9
     880:	8f 90       	pop	r8
     882:	7f 90       	pop	r7
     884:	6f 90       	pop	r6
     886:	5f 90       	pop	r5
     888:	4f 90       	pop	r4
     88a:	3f 90       	pop	r3
     88c:	2f 90       	pop	r2
     88e:	08 95       	ret

00000890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>:
	...
     898:	00 00       	nop
     89a:	08 95       	ret

0000089c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>:
     89c:	cf 93       	push	r28
     89e:	df 93       	push	r29
     8a0:	d8 2f       	mov	r29, r24
     8a2:	c8 e0       	ldi	r28, 0x08	; 8
     8a4:	3d 9a       	sbi	0x07, 5	; 7
     8a6:	0e 94 48 04 	call	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>
     8aa:	d7 ff       	sbrs	r29, 7
     8ac:	02 c0       	rjmp	.+4      	; 0x8b2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10+0x16>
     8ae:	3c 98       	cbi	0x07, 4	; 7
     8b0:	01 c0       	rjmp	.+2      	; 0x8b4 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10+0x18>
     8b2:	3c 9a       	sbi	0x07, 4	; 7
     8b4:	0e 94 48 04 	call	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>
     8b8:	3d 98       	cbi	0x07, 5	; 7
     8ba:	0e 94 48 04 	call	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>
     8be:	dd 0f       	add	r29, r29
     8c0:	c1 50       	subi	r28, 0x01	; 1
     8c2:	81 f7       	brne	.-32     	; 0x8a4 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10+0x8>
     8c4:	3d 9a       	sbi	0x07, 5	; 7
     8c6:	0e 94 48 04 	call	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>
     8ca:	3c 98       	cbi	0x07, 4	; 7
     8cc:	0e 94 48 04 	call	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>
     8d0:	3d 98       	cbi	0x07, 5	; 7
     8d2:	0e 94 48 04 	call	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>
     8d6:	c6 b1       	in	r28, 0x06	; 6
     8d8:	3d 9a       	sbi	0x07, 5	; 7
     8da:	0e 94 48 04 	call	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>
     8de:	c2 95       	swap	r28
     8e0:	c1 70       	andi	r28, 0x01	; 1
     8e2:	81 e0       	ldi	r24, 0x01	; 1
     8e4:	8c 27       	eor	r24, r28
     8e6:	df 91       	pop	r29
     8e8:	cf 91       	pop	r28
     8ea:	08 95       	ret

000008ec <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.7>:
     8ec:	3d 9a       	sbi	0x07, 5	; 7
     8ee:	3c 9a       	sbi	0x07, 4	; 7
     8f0:	3d 98       	cbi	0x07, 5	; 7
     8f2:	3c 9a       	sbi	0x07, 4	; 7
     8f4:	3d 98       	cbi	0x07, 5	; 7
     8f6:	3c 98       	cbi	0x07, 4	; 7
     8f8:	0c 94 48 04 	jmp	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>

000008fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.6>:
     8fc:	3d 98       	cbi	0x07, 5	; 7
     8fe:	3c 98       	cbi	0x07, 4	; 7
     900:	3d 98       	cbi	0x07, 5	; 7
     902:	3c 9a       	sbi	0x07, 4	; 7
     904:	3d 9a       	sbi	0x07, 5	; 7
     906:	3c 98       	cbi	0x07, 4	; 7
     908:	0c 94 48 04 	jmp	0x890	; 0x890 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.5>

0000090c <_ZN12CSSD1306OLEDC1Ev>:
     90c:	08 95       	ret

0000090e <_ZN12CSSD1306OLEDD1Ev>:
     90e:	08 95       	ret

00000910 <_ZN12CSSD1306OLED14oled_lcd_clearEv>:
     910:	ac 01       	movw	r20, r24
     912:	5c 5f       	subi	r21, 0xFC	; 252
     914:	20 e0       	ldi	r18, 0x00	; 0
     916:	30 e0       	ldi	r19, 0x00	; 0
     918:	fc 01       	movw	r30, r24
     91a:	e2 0f       	add	r30, r18
     91c:	f3 1f       	adc	r31, r19
     91e:	10 82       	st	Z, r1
     920:	2f 5f       	subi	r18, 0xFF	; 255
     922:	3f 4f       	sbci	r19, 0xFF	; 255
     924:	20 38       	cpi	r18, 0x80	; 128
     926:	31 05       	cpc	r19, r1
     928:	b9 f7       	brne	.-18     	; 0x918 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x8>
     92a:	80 58       	subi	r24, 0x80	; 128
     92c:	9f 4f       	sbci	r25, 0xFF	; 255
     92e:	84 17       	cp	r24, r20
     930:	95 07       	cpc	r25, r21
     932:	81 f7       	brne	.-32     	; 0x914 <_ZN12CSSD1306OLED14oled_lcd_clearEv+0x4>
     934:	08 95       	ret

00000936 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>:
     936:	cf 93       	push	r28
     938:	df 93       	push	r29
     93a:	ec 01       	movw	r28, r24
     93c:	61 38       	cpi	r22, 0x81	; 129
     93e:	71 05       	cpc	r23, r1
     940:	90 f5       	brcc	.+100    	; 0x9a6 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x70>
     942:	41 34       	cpi	r20, 0x41	; 65
     944:	51 05       	cpc	r21, r1
     946:	78 f5       	brcc	.+94     	; 0x9a6 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x70>
     948:	fa 01       	movw	r30, r20
     94a:	83 e0       	ldi	r24, 0x03	; 3
     94c:	f6 95       	lsr	r31
     94e:	e7 95       	ror	r30
     950:	8a 95       	dec	r24
     952:	e1 f7       	brne	.-8      	; 0x94c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x16>
     954:	f6 95       	lsr	r31
     956:	fe 2f       	mov	r31, r30
     958:	ee 27       	eor	r30, r30
     95a:	f7 95       	ror	r31
     95c:	e7 95       	ror	r30
     95e:	df 01       	movw	r26, r30
     960:	a6 0f       	add	r26, r22
     962:	b7 1f       	adc	r27, r23
     964:	ac 0f       	add	r26, r28
     966:	bd 1f       	adc	r27, r29
     968:	3c 91       	ld	r19, X
     96a:	47 70       	andi	r20, 0x07	; 7
     96c:	55 27       	eor	r21, r21
     96e:	22 23       	and	r18, r18
     970:	49 f0       	breq	.+18     	; 0x984 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x4e>
     972:	81 e0       	ldi	r24, 0x01	; 1
     974:	90 e0       	ldi	r25, 0x00	; 0
     976:	01 c0       	rjmp	.+2      	; 0x97a <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x44>
     978:	88 0f       	add	r24, r24
     97a:	4a 95       	dec	r20
     97c:	ea f7       	brpl	.-6      	; 0x978 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x42>
     97e:	93 2f       	mov	r25, r19
     980:	98 2b       	or	r25, r24
     982:	0b c0       	rjmp	.+22     	; 0x99a <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x64>
     984:	a1 e0       	ldi	r26, 0x01	; 1
     986:	b0 e0       	ldi	r27, 0x00	; 0
     988:	cd 01       	movw	r24, r26
     98a:	02 c0       	rjmp	.+4      	; 0x990 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x5a>
     98c:	88 0f       	add	r24, r24
     98e:	99 1f       	adc	r25, r25
     990:	4a 95       	dec	r20
     992:	e2 f7       	brpl	.-8      	; 0x98c <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh+0x56>
     994:	98 2f       	mov	r25, r24
     996:	90 95       	com	r25
     998:	93 23       	and	r25, r19
     99a:	6e 0f       	add	r22, r30
     99c:	7f 1f       	adc	r23, r31
     99e:	fe 01       	movw	r30, r28
     9a0:	e6 0f       	add	r30, r22
     9a2:	f7 1f       	adc	r31, r23
     9a4:	90 83       	st	Z, r25
     9a6:	df 91       	pop	r29
     9a8:	cf 91       	pop	r28
     9aa:	08 95       	ret

000009ac <_ZN12CSSD1306OLED15oled_put_squareEjjjjh>:
     9ac:	6f 92       	push	r6
     9ae:	7f 92       	push	r7
     9b0:	8f 92       	push	r8
     9b2:	9f 92       	push	r9
     9b4:	af 92       	push	r10
     9b6:	bf 92       	push	r11
     9b8:	cf 92       	push	r12
     9ba:	df 92       	push	r13
     9bc:	ef 92       	push	r14
     9be:	ff 92       	push	r15
     9c0:	0f 93       	push	r16
     9c2:	1f 93       	push	r17
     9c4:	cf 93       	push	r28
     9c6:	df 93       	push	r29
     9c8:	5c 01       	movw	r10, r24
     9ca:	3b 01       	movw	r6, r22
     9cc:	4a 01       	movw	r8, r20
     9ce:	69 01       	movw	r12, r18
     9d0:	02 9f       	mul	r16, r18
     9d2:	e0 01       	movw	r28, r0
     9d4:	03 9f       	mul	r16, r19
     9d6:	d0 0d       	add	r29, r0
     9d8:	12 9f       	mul	r17, r18
     9da:	d0 0d       	add	r29, r0
     9dc:	11 24       	eor	r1, r1
     9de:	ec 9e       	mul	r14, r28
     9e0:	c0 01       	movw	r24, r0
     9e2:	ed 9e       	mul	r14, r29
     9e4:	90 0d       	add	r25, r0
     9e6:	11 24       	eor	r1, r1
     9e8:	6f ef       	ldi	r22, 0xFF	; 255
     9ea:	70 e0       	ldi	r23, 0x00	; 0
     9ec:	0e 94 50 0c 	call	0x18a0	; 0x18a0 <__udivmodhi4>
     9f0:	7b 01       	movw	r14, r22
     9f2:	00 e0       	ldi	r16, 0x00	; 0
     9f4:	10 e0       	ldi	r17, 0x00	; 0
     9f6:	0c 17       	cp	r16, r28
     9f8:	1d 07       	cpc	r17, r29
     9fa:	19 f1       	breq	.+70     	; 0xa42 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x96>
     9fc:	e1 14       	cp	r14, r1
     9fe:	f1 04       	cpc	r15, r1
     a00:	e9 f0       	breq	.+58     	; 0xa3c <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x90>
     a02:	80 91 f4 0d 	lds	r24, 0x0DF4
     a06:	90 91 f5 0d 	lds	r25, 0x0DF5
     a0a:	87 5e       	subi	r24, 0xE7	; 231
     a0c:	96 46       	sbci	r25, 0x66	; 102
     a0e:	90 93 f5 0d 	sts	0x0DF5, r25
     a12:	80 93 f4 0d 	sts	0x0DF4, r24
     a16:	be 01       	movw	r22, r28
     a18:	0e 94 50 0c 	call	0x18a0	; 0x18a0 <__udivmodhi4>
     a1c:	b6 01       	movw	r22, r12
     a1e:	0e 94 50 0c 	call	0x18a0	; 0x18a0 <__udivmodhi4>
     a22:	ab 01       	movw	r20, r22
     a24:	48 0d       	add	r20, r8
     a26:	59 1d       	adc	r21, r9
     a28:	bc 01       	movw	r22, r24
     a2a:	66 0d       	add	r22, r6
     a2c:	77 1d       	adc	r23, r7
     a2e:	21 e0       	ldi	r18, 0x01	; 1
     a30:	c5 01       	movw	r24, r10
     a32:	0e 94 9b 04 	call	0x936	; 0x936 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
     a36:	81 e0       	ldi	r24, 0x01	; 1
     a38:	e8 1a       	sub	r14, r24
     a3a:	f1 08       	sbc	r15, r1
     a3c:	0f 5f       	subi	r16, 0xFF	; 255
     a3e:	1f 4f       	sbci	r17, 0xFF	; 255
     a40:	da cf       	rjmp	.-76     	; 0x9f6 <_ZN12CSSD1306OLED15oled_put_squareEjjjjh+0x4a>
     a42:	df 91       	pop	r29
     a44:	cf 91       	pop	r28
     a46:	1f 91       	pop	r17
     a48:	0f 91       	pop	r16
     a4a:	ff 90       	pop	r15
     a4c:	ef 90       	pop	r14
     a4e:	df 90       	pop	r13
     a50:	cf 90       	pop	r12
     a52:	bf 90       	pop	r11
     a54:	af 90       	pop	r10
     a56:	9f 90       	pop	r9
     a58:	8f 90       	pop	r8
     a5a:	7f 90       	pop	r7
     a5c:	6f 90       	pop	r6
     a5e:	08 95       	ret

00000a60 <_ZN12CSSD1306OLED6setposEhh>:
     a60:	1f 93       	push	r17
     a62:	cf 93       	push	r28
     a64:	df 93       	push	r29
     a66:	1f 92       	push	r1
     a68:	cd b7       	in	r28, 0x3d	; 61
     a6a:	de b7       	in	r29, 0x3e	; 62
     a6c:	16 2f       	mov	r17, r22
     a6e:	49 83       	std	Y+1, r20	; 0x01
     a70:	0e 94 7e 04 	call	0x8fc	; 0x8fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.6>
     a74:	88 e7       	ldi	r24, 0x78	; 120
     a76:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     a7a:	80 e0       	ldi	r24, 0x00	; 0
     a7c:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     a80:	49 81       	ldd	r20, Y+1	; 0x01
     a82:	8b e0       	ldi	r24, 0x0B	; 11
     a84:	84 0f       	add	r24, r20
     a86:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     a8a:	81 2f       	mov	r24, r17
     a8c:	82 95       	swap	r24
     a8e:	8f 70       	andi	r24, 0x0F	; 15
     a90:	80 61       	ori	r24, 0x10	; 16
     a92:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     a96:	81 2f       	mov	r24, r17
     a98:	8f 70       	andi	r24, 0x0F	; 15
     a9a:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     a9e:	0f 90       	pop	r0
     aa0:	df 91       	pop	r29
     aa2:	cf 91       	pop	r28
     aa4:	1f 91       	pop	r17
     aa6:	0c 94 76 04 	jmp	0x8ec	; 0x8ec <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.7>

00000aaa <_ZN12CSSD1306OLED16oled_lcd_refreshEv>:
     aaa:	df 92       	push	r13
     aac:	ef 92       	push	r14
     aae:	ff 92       	push	r15
     ab0:	0f 93       	push	r16
     ab2:	1f 93       	push	r17
     ab4:	cf 93       	push	r28
     ab6:	df 93       	push	r29
     ab8:	08 2f       	mov	r16, r24
     aba:	d9 2e       	mov	r13, r25
     abc:	c8 2f       	mov	r28, r24
     abe:	d9 2f       	mov	r29, r25
     ac0:	10 e0       	ldi	r17, 0x00	; 0
     ac2:	41 2f       	mov	r20, r17
     ac4:	60 e0       	ldi	r22, 0x00	; 0
     ac6:	80 2f       	mov	r24, r16
     ac8:	9d 2d       	mov	r25, r13
     aca:	0e 94 30 05 	call	0xa60	; 0xa60 <_ZN12CSSD1306OLED6setposEhh>
     ace:	0e 94 7e 04 	call	0x8fc	; 0x8fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.6>
     ad2:	88 e7       	ldi	r24, 0x78	; 120
     ad4:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     ad8:	80 e4       	ldi	r24, 0x40	; 64
     ada:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     ade:	e1 2c       	mov	r14, r1
     ae0:	f1 2c       	mov	r15, r1
     ae2:	fe 01       	movw	r30, r28
     ae4:	ee 0d       	add	r30, r14
     ae6:	ff 1d       	adc	r31, r15
     ae8:	80 81       	ld	r24, Z
     aea:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     aee:	8f ef       	ldi	r24, 0xFF	; 255
     af0:	e8 1a       	sub	r14, r24
     af2:	f8 0a       	sbc	r15, r24
     af4:	80 e8       	ldi	r24, 0x80	; 128
     af6:	e8 16       	cp	r14, r24
     af8:	f1 04       	cpc	r15, r1
     afa:	99 f7       	brne	.-26     	; 0xae2 <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x38>
     afc:	0e 94 76 04 	call	0x8ec	; 0x8ec <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.7>
     b00:	1f 5f       	subi	r17, 0xFF	; 255
     b02:	c0 58       	subi	r28, 0x80	; 128
     b04:	df 4f       	sbci	r29, 0xFF	; 255
     b06:	18 30       	cpi	r17, 0x08	; 8
     b08:	e1 f6       	brne	.-72     	; 0xac2 <_ZN12CSSD1306OLED16oled_lcd_refreshEv+0x18>
     b0a:	df 91       	pop	r29
     b0c:	cf 91       	pop	r28
     b0e:	1f 91       	pop	r17
     b10:	0f 91       	pop	r16
     b12:	ff 90       	pop	r15
     b14:	ef 90       	pop	r14
     b16:	df 90       	pop	r13
     b18:	08 95       	ret

00000b1a <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv>:
     b1a:	cf 92       	push	r12
     b1c:	df 92       	push	r13
     b1e:	ef 92       	push	r14
     b20:	ff 92       	push	r15
     b22:	0f 93       	push	r16
     b24:	1f 93       	push	r17
     b26:	cf 93       	push	r28
     b28:	df 93       	push	r29
     b2a:	7c 01       	movw	r14, r24
     b2c:	c0 91 f6 0d 	lds	r28, 0x0DF6
     b30:	d0 91 f7 0d 	lds	r29, 0x0DF7
     b34:	4c 2f       	mov	r20, r28
     b36:	60 e0       	ldi	r22, 0x00	; 0
     b38:	0e 94 30 05 	call	0xa60	; 0xa60 <_ZN12CSSD1306OLED6setposEhh>
     b3c:	0e 94 7e 04 	call	0x8fc	; 0x8fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.6>
     b40:	88 e7       	ldi	r24, 0x78	; 120
     b42:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     b46:	80 e4       	ldi	r24, 0x40	; 64
     b48:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     b4c:	6e 01       	movw	r12, r28
     b4e:	d6 94       	lsr	r13
     b50:	dc 2c       	mov	r13, r12
     b52:	cc 24       	eor	r12, r12
     b54:	d7 94       	ror	r13
     b56:	c7 94       	ror	r12
     b58:	00 e0       	ldi	r16, 0x00	; 0
     b5a:	10 e0       	ldi	r17, 0x00	; 0
     b5c:	f8 01       	movw	r30, r16
     b5e:	ec 0d       	add	r30, r12
     b60:	fd 1d       	adc	r31, r13
     b62:	ee 0d       	add	r30, r14
     b64:	ff 1d       	adc	r31, r15
     b66:	80 81       	ld	r24, Z
     b68:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     b6c:	0f 5f       	subi	r16, 0xFF	; 255
     b6e:	1f 4f       	sbci	r17, 0xFF	; 255
     b70:	00 38       	cpi	r16, 0x80	; 128
     b72:	11 05       	cpc	r17, r1
     b74:	99 f7       	brne	.-26     	; 0xb5c <_ZN12CSSD1306OLED21oled_lcd_refresh_partEv+0x42>
     b76:	0e 94 76 04 	call	0x8ec	; 0x8ec <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.7>
     b7a:	21 96       	adiw	r28, 0x01	; 1
     b7c:	c7 70       	andi	r28, 0x07	; 7
     b7e:	dd 27       	eor	r29, r29
     b80:	d0 93 f7 0d 	sts	0x0DF7, r29
     b84:	c0 93 f6 0d 	sts	0x0DF6, r28
     b88:	df 91       	pop	r29
     b8a:	cf 91       	pop	r28
     b8c:	1f 91       	pop	r17
     b8e:	0f 91       	pop	r16
     b90:	ff 90       	pop	r15
     b92:	ef 90       	pop	r14
     b94:	df 90       	pop	r13
     b96:	cf 90       	pop	r12
     b98:	08 95       	ret

00000b9a <_ZN12CSSD1306OLED12send_commandEh>:
     b9a:	cf 93       	push	r28
     b9c:	df 93       	push	r29
     b9e:	1f 92       	push	r1
     ba0:	cd b7       	in	r28, 0x3d	; 61
     ba2:	de b7       	in	r29, 0x3e	; 62
     ba4:	69 83       	std	Y+1, r22	; 0x01
     ba6:	0e 94 7e 04 	call	0x8fc	; 0x8fc <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.6>
     baa:	88 e7       	ldi	r24, 0x78	; 120
     bac:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     bb0:	80 e0       	ldi	r24, 0x00	; 0
     bb2:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     bb6:	69 81       	ldd	r22, Y+1	; 0x01
     bb8:	86 2f       	mov	r24, r22
     bba:	0e 94 4e 04 	call	0x89c	; 0x89c <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.10>
     bbe:	0f 90       	pop	r0
     bc0:	df 91       	pop	r29
     bc2:	cf 91       	pop	r28
     bc4:	0c 94 76 04 	jmp	0x8ec	; 0x8ec <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.7>

00000bc8 <_ZN12CSSD1306OLED13oled_lcd_initEv>:
     bc8:	0f 93       	push	r16
     bca:	1f 93       	push	r17
     bcc:	cf 93       	push	r28
     bce:	df 93       	push	r29
     bd0:	ec 01       	movw	r28, r24
     bd2:	00 e0       	ldi	r16, 0x00	; 0
     bd4:	19 e0       	ldi	r17, 0x09	; 9
     bd6:	f8 01       	movw	r30, r16
     bd8:	61 91       	ld	r22, Z+
     bda:	8f 01       	movw	r16, r30
     bdc:	ce 01       	movw	r24, r28
     bde:	0e 94 cd 05 	call	0xb9a	; 0xb9a <_ZN12CSSD1306OLED12send_commandEh>
     be2:	f9 e0       	ldi	r31, 0x09	; 9
     be4:	0c 31       	cpi	r16, 0x1C	; 28
     be6:	1f 07       	cpc	r17, r31
     be8:	b1 f7       	brne	.-20     	; 0xbd6 <_ZN12CSSD1306OLED13oled_lcd_initEv+0xe>
     bea:	ce 01       	movw	r24, r28
     bec:	0e 94 88 04 	call	0x910	; 0x910 <_ZN12CSSD1306OLED14oled_lcd_clearEv>
     bf0:	ce 01       	movw	r24, r28
     bf2:	0e 94 55 05 	call	0xaaa	; 0xaaa <_ZN12CSSD1306OLED16oled_lcd_refreshEv>
     bf6:	80 e0       	ldi	r24, 0x00	; 0
     bf8:	90 e0       	ldi	r25, 0x00	; 0
     bfa:	df 91       	pop	r29
     bfc:	cf 91       	pop	r28
     bfe:	1f 91       	pop	r17
     c00:	0f 91       	pop	r16
     c02:	08 95       	ret

00000c04 <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj>:
     c04:	ca 01       	movw	r24, r20
     c06:	e3 e0       	ldi	r30, 0x03	; 3
     c08:	96 95       	lsr	r25
     c0a:	87 95       	ror	r24
     c0c:	ea 95       	dec	r30
     c0e:	e1 f7       	brne	.-8      	; 0xc08 <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj+0x4>
     c10:	f4 e0       	ldi	r31, 0x04	; 4
     c12:	22 0f       	add	r18, r18
     c14:	33 1f       	adc	r19, r19
     c16:	fa 95       	dec	r31
     c18:	e1 f7       	brne	.-8      	; 0xc12 <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj+0xe>
     c1a:	28 0f       	add	r18, r24
     c1c:	39 1f       	adc	r19, r25
     c1e:	fb 01       	movw	r30, r22
     c20:	e2 0f       	add	r30, r18
     c22:	f3 1f       	adc	r31, r19
     c24:	80 81       	ld	r24, Z
     c26:	90 e0       	ldi	r25, 0x00	; 0
     c28:	47 70       	andi	r20, 0x07	; 7
     c2a:	55 27       	eor	r21, r21
     c2c:	02 c0       	rjmp	.+4      	; 0xc32 <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj+0x2e>
     c2e:	95 95       	asr	r25
     c30:	87 95       	ror	r24
     c32:	4a 95       	dec	r20
     c34:	e2 f7       	brpl	.-8      	; 0xc2e <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj+0x2a>
     c36:	81 70       	andi	r24, 0x01	; 1
     c38:	99 27       	eor	r25, r25
     c3a:	08 95       	ret

00000c3c <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj>:
     c3c:	af 92       	push	r10
     c3e:	bf 92       	push	r11
     c40:	cf 92       	push	r12
     c42:	df 92       	push	r13
     c44:	ef 92       	push	r14
     c46:	ff 92       	push	r15
     c48:	0f 93       	push	r16
     c4a:	1f 93       	push	r17
     c4c:	cf 93       	push	r28
     c4e:	df 93       	push	r29
     c50:	7c 01       	movw	r14, r24
     c52:	6b 01       	movw	r12, r22
     c54:	5a 01       	movw	r10, r20
     c56:	00 e0       	ldi	r16, 0x00	; 0
     c58:	10 e0       	ldi	r17, 0x00	; 0
     c5a:	c0 e0       	ldi	r28, 0x00	; 0
     c5c:	d0 e0       	ldi	r29, 0x00	; 0
     c5e:	ae 01       	movw	r20, r28
     c60:	4a 0d       	add	r20, r10
     c62:	5b 1d       	adc	r21, r11
     c64:	4f 77       	andi	r20, 0x7F	; 127
     c66:	55 27       	eor	r21, r21
     c68:	98 01       	movw	r18, r16
     c6a:	b6 01       	movw	r22, r12
     c6c:	c7 01       	movw	r24, r14
     c6e:	0e 94 02 06 	call	0xc04	; 0xc04 <_ZN12CSSD1306OLED17bitmap_decompressEPKhjj>
     c72:	28 2f       	mov	r18, r24
     c74:	a8 01       	movw	r20, r16
     c76:	be 01       	movw	r22, r28
     c78:	c7 01       	movw	r24, r14
     c7a:	0e 94 9b 04 	call	0x936	; 0x936 <_ZN12CSSD1306OLED18oled_lcd_put_pixelEjjh>
     c7e:	21 96       	adiw	r28, 0x01	; 1
     c80:	c0 38       	cpi	r28, 0x80	; 128
     c82:	d1 05       	cpc	r29, r1
     c84:	61 f7       	brne	.-40     	; 0xc5e <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj+0x22>
     c86:	0f 5f       	subi	r16, 0xFF	; 255
     c88:	1f 4f       	sbci	r17, 0xFF	; 255
     c8a:	00 34       	cpi	r16, 0x40	; 64
     c8c:	11 05       	cpc	r17, r1
     c8e:	29 f7       	brne	.-54     	; 0xc5a <_ZN12CSSD1306OLED19oled_lcd_put_bitmapEPKhj+0x1e>
     c90:	df 91       	pop	r29
     c92:	cf 91       	pop	r28
     c94:	1f 91       	pop	r17
     c96:	0f 91       	pop	r16
     c98:	ff 90       	pop	r15
     c9a:	ef 90       	pop	r14
     c9c:	df 90       	pop	r13
     c9e:	cf 90       	pop	r12
     ca0:	bf 90       	pop	r11
     ca2:	af 90       	pop	r10
     ca4:	08 95       	ret

00000ca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
     cae:	00 00       	nop
     cb0:	08 95       	ret

00000cb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>:
     cb2:	cf 93       	push	r28
     cb4:	df 93       	push	r29
     cb6:	d8 2f       	mov	r29, r24
     cb8:	c8 e0       	ldi	r28, 0x08	; 8
     cba:	3d 9a       	sbi	0x07, 5	; 7
     cbc:	0e 94 53 06 	call	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     cc0:	d7 ff       	sbrs	r29, 7
     cc2:	02 c0       	rjmp	.+4      	; 0xcc8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x16>
     cc4:	3c 98       	cbi	0x07, 4	; 7
     cc6:	01 c0       	rjmp	.+2      	; 0xcca <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x18>
     cc8:	3c 9a       	sbi	0x07, 4	; 7
     cca:	0e 94 53 06 	call	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     cce:	3d 98       	cbi	0x07, 5	; 7
     cd0:	0e 94 53 06 	call	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     cd4:	dd 0f       	add	r29, r29
     cd6:	c1 50       	subi	r28, 0x01	; 1
     cd8:	81 f7       	brne	.-32     	; 0xcba <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x8>
     cda:	3d 9a       	sbi	0x07, 5	; 7
     cdc:	0e 94 53 06 	call	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     ce0:	3c 98       	cbi	0x07, 4	; 7
     ce2:	0e 94 53 06 	call	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     ce6:	3d 98       	cbi	0x07, 5	; 7
     ce8:	0e 94 53 06 	call	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     cec:	c6 b1       	in	r28, 0x06	; 6
     cee:	3d 9a       	sbi	0x07, 5	; 7
     cf0:	0e 94 53 06 	call	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
     cf4:	c2 95       	swap	r28
     cf6:	c1 70       	andi	r28, 0x01	; 1
     cf8:	81 e0       	ldi	r24, 0x01	; 1
     cfa:	8c 27       	eor	r24, r28
     cfc:	df 91       	pop	r29
     cfe:	cf 91       	pop	r28
     d00:	08 95       	ret

00000d02 <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>:
     d02:	3d 9a       	sbi	0x07, 5	; 7
     d04:	3c 9a       	sbi	0x07, 4	; 7
     d06:	3d 98       	cbi	0x07, 5	; 7
     d08:	3c 9a       	sbi	0x07, 4	; 7
     d0a:	3d 98       	cbi	0x07, 5	; 7
     d0c:	3c 98       	cbi	0x07, 4	; 7
     d0e:	0c 94 53 06 	jmp	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

00000d12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>:
     d12:	3d 98       	cbi	0x07, 5	; 7
     d14:	3c 98       	cbi	0x07, 4	; 7
     d16:	3d 98       	cbi	0x07, 5	; 7
     d18:	3c 9a       	sbi	0x07, 4	; 7
     d1a:	3d 9a       	sbi	0x07, 5	; 7
     d1c:	3c 98       	cbi	0x07, 4	; 7
     d1e:	0c 94 53 06 	jmp	0xca6	; 0xca6 <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

00000d22 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10>:
     d22:	cf 93       	push	r28
     d24:	df 93       	push	r29
     d26:	00 d0       	rcall	.+0      	; 0xd28 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10+0x6>
     d28:	1f 92       	push	r1
     d2a:	cd b7       	in	r28, 0x3d	; 61
     d2c:	de b7       	in	r29, 0x3e	; 62
     d2e:	4b 83       	std	Y+3, r20	; 0x03
     d30:	6a 83       	std	Y+2, r22	; 0x02
     d32:	89 83       	std	Y+1, r24	; 0x01
     d34:	0e 94 89 06 	call	0xd12	; 0xd12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     d38:	89 81       	ldd	r24, Y+1	; 0x01
     d3a:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     d3e:	6a 81       	ldd	r22, Y+2	; 0x02
     d40:	86 2f       	mov	r24, r22
     d42:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     d46:	4b 81       	ldd	r20, Y+3	; 0x03
     d48:	84 2f       	mov	r24, r20
     d4a:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     d4e:	0f 90       	pop	r0
     d50:	0f 90       	pop	r0
     d52:	0f 90       	pop	r0
     d54:	df 91       	pop	r29
     d56:	cf 91       	pop	r28
     d58:	0c 94 81 06 	jmp	0xd02	; 0xd02 <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>

00000d5c <_ZN4CIMUC1Ev>:
     d5c:	08 95       	ret

00000d5e <_ZN4CIMUD1Ev>:
     d5e:	08 95       	ret

00000d60 <_ZN4TI2CILh2ELh4ELh5ELh5EE8read_regEhh>:
     d60:	ff 92       	push	r15
     d62:	0f 93       	push	r16
     d64:	1f 93       	push	r17
     d66:	cf 93       	push	r28
     d68:	df 93       	push	r29
     d6a:	1f 92       	push	r1
     d6c:	cd b7       	in	r28, 0x3d	; 61
     d6e:	de b7       	in	r29, 0x3e	; 62
     d70:	8c 01       	movw	r16, r24
     d72:	f6 2e       	mov	r15, r22
     d74:	49 83       	std	Y+1, r20	; 0x01
     d76:	0e 94 89 06 	call	0xd12	; 0xd12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     d7a:	8f 2d       	mov	r24, r15
     d7c:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     d80:	49 81       	ldd	r20, Y+1	; 0x01
     d82:	84 2f       	mov	r24, r20
     d84:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     d88:	0e 94 89 06 	call	0xd12	; 0xd12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     d8c:	8f 2d       	mov	r24, r15
     d8e:	81 60       	ori	r24, 0x01	; 1
     d90:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     d94:	60 e0       	ldi	r22, 0x00	; 0
     d96:	c8 01       	movw	r24, r16
     d98:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     d9c:	89 83       	std	Y+1, r24	; 0x01
     d9e:	0e 94 81 06 	call	0xd02	; 0xd02 <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
     da2:	89 81       	ldd	r24, Y+1	; 0x01
     da4:	0f 90       	pop	r0
     da6:	df 91       	pop	r29
     da8:	cf 91       	pop	r28
     daa:	1f 91       	pop	r17
     dac:	0f 91       	pop	r16
     dae:	ff 90       	pop	r15
     db0:	08 95       	ret

00000db2 <_ZN4CIMU4readEv>:
     db2:	4f 92       	push	r4
     db4:	5f 92       	push	r5
     db6:	6f 92       	push	r6
     db8:	7f 92       	push	r7
     dba:	8f 92       	push	r8
     dbc:	9f 92       	push	r9
     dbe:	af 92       	push	r10
     dc0:	bf 92       	push	r11
     dc2:	cf 92       	push	r12
     dc4:	df 92       	push	r13
     dc6:	ef 92       	push	r14
     dc8:	ff 92       	push	r15
     dca:	0f 93       	push	r16
     dcc:	1f 93       	push	r17
     dce:	cf 93       	push	r28
     dd0:	df 93       	push	r29
     dd2:	ec 01       	movw	r28, r24
     dd4:	0e 94 89 06 	call	0xd12	; 0xd12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     dd8:	84 ed       	ldi	r24, 0xD4	; 212
     dda:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     dde:	88 ea       	ldi	r24, 0xA8	; 168
     de0:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     de4:	0e 94 89 06 	call	0xd12	; 0xd12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     de8:	85 ed       	ldi	r24, 0xD5	; 213
     dea:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     dee:	61 e0       	ldi	r22, 0x01	; 1
     df0:	8e e3       	ldi	r24, 0x3E	; 62
     df2:	9e e0       	ldi	r25, 0x0E	; 14
     df4:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     df8:	18 2f       	mov	r17, r24
     dfa:	61 e0       	ldi	r22, 0x01	; 1
     dfc:	8e e3       	ldi	r24, 0x3E	; 62
     dfe:	9e e0       	ldi	r25, 0x0E	; 14
     e00:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     e04:	21 2f       	mov	r18, r17
     e06:	30 e0       	ldi	r19, 0x00	; 0
     e08:	a9 01       	movw	r20, r18
     e0a:	58 2b       	or	r21, r24
     e0c:	ca 01       	movw	r24, r20
     e0e:	09 2e       	mov	r0, r25
     e10:	00 0c       	add	r0, r0
     e12:	aa 0b       	sbc	r26, r26
     e14:	bb 0b       	sbc	r27, r27
     e16:	8c a3       	std	Y+36, r24	; 0x24
     e18:	9d a3       	std	Y+37, r25	; 0x25
     e1a:	ae a3       	std	Y+38, r26	; 0x26
     e1c:	bf a3       	std	Y+39, r27	; 0x27
     e1e:	61 e0       	ldi	r22, 0x01	; 1
     e20:	8e e3       	ldi	r24, 0x3E	; 62
     e22:	9e e0       	ldi	r25, 0x0E	; 14
     e24:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     e28:	18 2f       	mov	r17, r24
     e2a:	61 e0       	ldi	r22, 0x01	; 1
     e2c:	8e e3       	ldi	r24, 0x3E	; 62
     e2e:	9e e0       	ldi	r25, 0x0E	; 14
     e30:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     e34:	21 2f       	mov	r18, r17
     e36:	30 e0       	ldi	r19, 0x00	; 0
     e38:	a9 01       	movw	r20, r18
     e3a:	58 2b       	or	r21, r24
     e3c:	ca 01       	movw	r24, r20
     e3e:	09 2e       	mov	r0, r25
     e40:	00 0c       	add	r0, r0
     e42:	aa 0b       	sbc	r26, r26
     e44:	bb 0b       	sbc	r27, r27
     e46:	88 a7       	std	Y+40, r24	; 0x28
     e48:	99 a7       	std	Y+41, r25	; 0x29
     e4a:	aa a7       	std	Y+42, r26	; 0x2a
     e4c:	bb a7       	std	Y+43, r27	; 0x2b
     e4e:	61 e0       	ldi	r22, 0x01	; 1
     e50:	8e e3       	ldi	r24, 0x3E	; 62
     e52:	9e e0       	ldi	r25, 0x0E	; 14
     e54:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     e58:	18 2f       	mov	r17, r24
     e5a:	60 e0       	ldi	r22, 0x00	; 0
     e5c:	8e e3       	ldi	r24, 0x3E	; 62
     e5e:	9e e0       	ldi	r25, 0x0E	; 14
     e60:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     e64:	21 2f       	mov	r18, r17
     e66:	30 e0       	ldi	r19, 0x00	; 0
     e68:	a9 01       	movw	r20, r18
     e6a:	58 2b       	or	r21, r24
     e6c:	ca 01       	movw	r24, r20
     e6e:	09 2e       	mov	r0, r25
     e70:	00 0c       	add	r0, r0
     e72:	aa 0b       	sbc	r26, r26
     e74:	bb 0b       	sbc	r27, r27
     e76:	8c a7       	std	Y+44, r24	; 0x2c
     e78:	9d a7       	std	Y+45, r25	; 0x2d
     e7a:	ae a7       	std	Y+46, r26	; 0x2e
     e7c:	bf a7       	std	Y+47, r27	; 0x2f
     e7e:	0e 94 81 06 	call	0xd02	; 0xd02 <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
     e82:	0e 94 89 06 	call	0xd12	; 0xd12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     e86:	8c e3       	ldi	r24, 0x3C	; 60
     e88:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     e8c:	88 ea       	ldi	r24, 0xA8	; 168
     e8e:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     e92:	0e 94 89 06 	call	0xd12	; 0xd12 <_ZN4TI2CILh2ELh4ELh5ELh5EE5startEv.isra.5>
     e96:	8d e3       	ldi	r24, 0x3D	; 61
     e98:	0e 94 59 06 	call	0xcb2	; 0xcb2 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
     e9c:	61 e0       	ldi	r22, 0x01	; 1
     e9e:	8e e3       	ldi	r24, 0x3E	; 62
     ea0:	9e e0       	ldi	r25, 0x0E	; 14
     ea2:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     ea6:	18 2f       	mov	r17, r24
     ea8:	61 e0       	ldi	r22, 0x01	; 1
     eaa:	8e e3       	ldi	r24, 0x3E	; 62
     eac:	9e e0       	ldi	r25, 0x0E	; 14
     eae:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     eb2:	21 2f       	mov	r18, r17
     eb4:	30 e0       	ldi	r19, 0x00	; 0
     eb6:	a9 01       	movw	r20, r18
     eb8:	58 2b       	or	r21, r24
     eba:	ca 01       	movw	r24, r20
     ebc:	09 2e       	mov	r0, r25
     ebe:	00 0c       	add	r0, r0
     ec0:	aa 0b       	sbc	r26, r26
     ec2:	bb 0b       	sbc	r27, r27
     ec4:	88 ab       	std	Y+48, r24	; 0x30
     ec6:	99 ab       	std	Y+49, r25	; 0x31
     ec8:	aa ab       	std	Y+50, r26	; 0x32
     eca:	bb ab       	std	Y+51, r27	; 0x33
     ecc:	61 e0       	ldi	r22, 0x01	; 1
     ece:	8e e3       	ldi	r24, 0x3E	; 62
     ed0:	9e e0       	ldi	r25, 0x0E	; 14
     ed2:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     ed6:	18 2f       	mov	r17, r24
     ed8:	61 e0       	ldi	r22, 0x01	; 1
     eda:	8e e3       	ldi	r24, 0x3E	; 62
     edc:	9e e0       	ldi	r25, 0x0E	; 14
     ede:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     ee2:	21 2f       	mov	r18, r17
     ee4:	30 e0       	ldi	r19, 0x00	; 0
     ee6:	a9 01       	movw	r20, r18
     ee8:	58 2b       	or	r21, r24
     eea:	ca 01       	movw	r24, r20
     eec:	09 2e       	mov	r0, r25
     eee:	00 0c       	add	r0, r0
     ef0:	aa 0b       	sbc	r26, r26
     ef2:	bb 0b       	sbc	r27, r27
     ef4:	8c ab       	std	Y+52, r24	; 0x34
     ef6:	9d ab       	std	Y+53, r25	; 0x35
     ef8:	ae ab       	std	Y+54, r26	; 0x36
     efa:	bf ab       	std	Y+55, r27	; 0x37
     efc:	61 e0       	ldi	r22, 0x01	; 1
     efe:	8e e3       	ldi	r24, 0x3E	; 62
     f00:	9e e0       	ldi	r25, 0x0E	; 14
     f02:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     f06:	18 2f       	mov	r17, r24
     f08:	60 e0       	ldi	r22, 0x00	; 0
     f0a:	8e e3       	ldi	r24, 0x3E	; 62
     f0c:	9e e0       	ldi	r25, 0x0E	; 14
     f0e:	0e 94 97 02 	call	0x52e	; 0x52e <_ZN4TI2CILh2ELh4ELh5ELh5EE4readEh>
     f12:	21 2f       	mov	r18, r17
     f14:	30 e0       	ldi	r19, 0x00	; 0
     f16:	a9 01       	movw	r20, r18
     f18:	58 2b       	or	r21, r24
     f1a:	ca 01       	movw	r24, r20
     f1c:	09 2e       	mov	r0, r25
     f1e:	00 0c       	add	r0, r0
     f20:	aa 0b       	sbc	r26, r26
     f22:	bb 0b       	sbc	r27, r27
     f24:	88 af       	std	Y+56, r24	; 0x38
     f26:	99 af       	std	Y+57, r25	; 0x39
     f28:	aa af       	std	Y+58, r26	; 0x3a
     f2a:	bb af       	std	Y+59, r27	; 0x3b
     f2c:	0e 94 81 06 	call	0xd02	; 0xd02 <_ZN4TI2CILh2ELh4ELh5ELh5EE4stopEv.isra.6>
     f30:	88 89       	ldd	r24, Y+16	; 0x10
     f32:	99 89       	ldd	r25, Y+17	; 0x11
     f34:	aa 89       	ldd	r26, Y+18	; 0x12
     f36:	bb 89       	ldd	r27, Y+19	; 0x13
     f38:	08 a5       	ldd	r16, Y+40	; 0x28
     f3a:	19 a5       	ldd	r17, Y+41	; 0x29
     f3c:	2a a5       	ldd	r18, Y+42	; 0x2a
     f3e:	3b a5       	ldd	r19, Y+43	; 0x2b
     f40:	bc 01       	movw	r22, r24
     f42:	cd 01       	movw	r24, r26
     f44:	60 1b       	sub	r22, r16
     f46:	71 0b       	sbc	r23, r17
     f48:	82 0b       	sbc	r24, r18
     f4a:	93 0b       	sbc	r25, r19
     f4c:	28 ec       	ldi	r18, 0xC8	; 200
     f4e:	42 2e       	mov	r4, r18
     f50:	51 2c       	mov	r5, r1
     f52:	61 2c       	mov	r6, r1
     f54:	71 2c       	mov	r7, r1
     f56:	a3 01       	movw	r20, r6
     f58:	92 01       	movw	r18, r4
     f5a:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     f5e:	88 81       	ld	r24, Y
     f60:	99 81       	ldd	r25, Y+1	; 0x01
     f62:	aa 81       	ldd	r26, Y+2	; 0x02
     f64:	bb 81       	ldd	r27, Y+3	; 0x03
     f66:	69 01       	movw	r12, r18
     f68:	7a 01       	movw	r14, r20
     f6a:	c8 0e       	add	r12, r24
     f6c:	d9 1e       	adc	r13, r25
     f6e:	ea 1e       	adc	r14, r26
     f70:	fb 1e       	adc	r15, r27
     f72:	c8 82       	st	Y, r12
     f74:	d9 82       	std	Y+1, r13	; 0x01
     f76:	ea 82       	std	Y+2, r14	; 0x02
     f78:	fb 82       	std	Y+3, r15	; 0x03
     f7a:	2c ad       	ldd	r18, Y+60	; 0x3c
     f7c:	3d ad       	ldd	r19, Y+61	; 0x3d
     f7e:	4e ad       	ldd	r20, Y+62	; 0x3e
     f80:	5f ad       	ldd	r21, Y+63	; 0x3f
     f82:	a4 e6       	ldi	r26, 0x64	; 100
     f84:	b0 e0       	ldi	r27, 0x00	; 0
     f86:	0e 94 92 0c 	call	0x1924	; 0x1924 <__muluhisi3>
     f8a:	4b 01       	movw	r8, r22
     f8c:	5c 01       	movw	r10, r24
     f8e:	9b 01       	movw	r18, r22
     f90:	ac 01       	movw	r20, r24
     f92:	c7 01       	movw	r24, r14
     f94:	b6 01       	movw	r22, r12
     f96:	0e 94 40 0c 	call	0x1880	; 0x1880 <__mulsi3>
     f9a:	32 ee       	ldi	r19, 0xE2	; 226
     f9c:	c3 2e       	mov	r12, r19
     f9e:	39 e0       	ldi	r19, 0x09	; 9
     fa0:	d3 2e       	mov	r13, r19
     fa2:	e1 2c       	mov	r14, r1
     fa4:	f1 2c       	mov	r15, r1
     fa6:	a7 01       	movw	r20, r14
     fa8:	96 01       	movw	r18, r12
     faa:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     fae:	28 8f       	std	Y+24, r18	; 0x18
     fb0:	39 8f       	std	Y+25, r19	; 0x19
     fb2:	4a 8f       	std	Y+26, r20	; 0x1a
     fb4:	5b 8f       	std	Y+27, r21	; 0x1b
     fb6:	8c 85       	ldd	r24, Y+12	; 0x0c
     fb8:	9d 85       	ldd	r25, Y+13	; 0x0d
     fba:	ae 85       	ldd	r26, Y+14	; 0x0e
     fbc:	bf 85       	ldd	r27, Y+15	; 0x0f
     fbe:	0c a1       	ldd	r16, Y+36	; 0x24
     fc0:	1d a1       	ldd	r17, Y+37	; 0x25
     fc2:	2e a1       	ldd	r18, Y+38	; 0x26
     fc4:	3f a1       	ldd	r19, Y+39	; 0x27
     fc6:	bc 01       	movw	r22, r24
     fc8:	cd 01       	movw	r24, r26
     fca:	60 1b       	sub	r22, r16
     fcc:	71 0b       	sbc	r23, r17
     fce:	82 0b       	sbc	r24, r18
     fd0:	93 0b       	sbc	r25, r19
     fd2:	a3 01       	movw	r20, r6
     fd4:	92 01       	movw	r18, r4
     fd6:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
     fda:	8c 81       	ldd	r24, Y+4	; 0x04
     fdc:	9d 81       	ldd	r25, Y+5	; 0x05
     fde:	ae 81       	ldd	r26, Y+6	; 0x06
     fe0:	bf 81       	ldd	r27, Y+7	; 0x07
     fe2:	bc 01       	movw	r22, r24
     fe4:	cd 01       	movw	r24, r26
     fe6:	62 0f       	add	r22, r18
     fe8:	73 1f       	adc	r23, r19
     fea:	84 1f       	adc	r24, r20
     fec:	95 1f       	adc	r25, r21
     fee:	6c 83       	std	Y+4, r22	; 0x04
     ff0:	7d 83       	std	Y+5, r23	; 0x05
     ff2:	8e 83       	std	Y+6, r24	; 0x06
     ff4:	9f 83       	std	Y+7, r25	; 0x07
     ff6:	a5 01       	movw	r20, r10
     ff8:	94 01       	movw	r18, r8
     ffa:	0e 94 40 0c 	call	0x1880	; 0x1880 <__mulsi3>
     ffe:	a7 01       	movw	r20, r14
    1000:	96 01       	movw	r18, r12
    1002:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
    1006:	2c 8f       	std	Y+28, r18	; 0x1c
    1008:	3d 8f       	std	Y+29, r19	; 0x1d
    100a:	4e 8f       	std	Y+30, r20	; 0x1e
    100c:	5f 8f       	std	Y+31, r21	; 0x1f
    100e:	8c 89       	ldd	r24, Y+20	; 0x14
    1010:	9d 89       	ldd	r25, Y+21	; 0x15
    1012:	ae 89       	ldd	r26, Y+22	; 0x16
    1014:	bf 89       	ldd	r27, Y+23	; 0x17
    1016:	0c a5       	ldd	r16, Y+44	; 0x2c
    1018:	1d a5       	ldd	r17, Y+45	; 0x2d
    101a:	2e a5       	ldd	r18, Y+46	; 0x2e
    101c:	3f a5       	ldd	r19, Y+47	; 0x2f
    101e:	bc 01       	movw	r22, r24
    1020:	cd 01       	movw	r24, r26
    1022:	60 1b       	sub	r22, r16
    1024:	71 0b       	sbc	r23, r17
    1026:	82 0b       	sbc	r24, r18
    1028:	93 0b       	sbc	r25, r19
    102a:	a3 01       	movw	r20, r6
    102c:	92 01       	movw	r18, r4
    102e:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
    1032:	88 85       	ldd	r24, Y+8	; 0x08
    1034:	99 85       	ldd	r25, Y+9	; 0x09
    1036:	aa 85       	ldd	r26, Y+10	; 0x0a
    1038:	bb 85       	ldd	r27, Y+11	; 0x0b
    103a:	bc 01       	movw	r22, r24
    103c:	cd 01       	movw	r24, r26
    103e:	62 0f       	add	r22, r18
    1040:	73 1f       	adc	r23, r19
    1042:	84 1f       	adc	r24, r20
    1044:	95 1f       	adc	r25, r21
    1046:	68 87       	std	Y+8, r22	; 0x08
    1048:	79 87       	std	Y+9, r23	; 0x09
    104a:	8a 87       	std	Y+10, r24	; 0x0a
    104c:	9b 87       	std	Y+11, r25	; 0x0b
    104e:	a5 01       	movw	r20, r10
    1050:	94 01       	movw	r18, r8
    1052:	0e 94 40 0c 	call	0x1880	; 0x1880 <__mulsi3>
    1056:	a7 01       	movw	r20, r14
    1058:	96 01       	movw	r18, r12
    105a:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
    105e:	28 a3       	std	Y+32, r18	; 0x20
    1060:	39 a3       	std	Y+33, r19	; 0x21
    1062:	4a a3       	std	Y+34, r20	; 0x22
    1064:	5b a3       	std	Y+35, r21	; 0x23
    1066:	df 91       	pop	r29
    1068:	cf 91       	pop	r28
    106a:	1f 91       	pop	r17
    106c:	0f 91       	pop	r16
    106e:	ff 90       	pop	r15
    1070:	ef 90       	pop	r14
    1072:	df 90       	pop	r13
    1074:	cf 90       	pop	r12
    1076:	bf 90       	pop	r11
    1078:	af 90       	pop	r10
    107a:	9f 90       	pop	r9
    107c:	8f 90       	pop	r8
    107e:	7f 90       	pop	r7
    1080:	6f 90       	pop	r6
    1082:	5f 90       	pop	r5
    1084:	4f 90       	pop	r4
    1086:	08 95       	ret

00001088 <_ZN4CIMU4initEv>:
    1088:	4f 92       	push	r4
    108a:	5f 92       	push	r5
    108c:	6f 92       	push	r6
    108e:	7f 92       	push	r7
    1090:	8f 92       	push	r8
    1092:	9f 92       	push	r9
    1094:	af 92       	push	r10
    1096:	bf 92       	push	r11
    1098:	cf 92       	push	r12
    109a:	df 92       	push	r13
    109c:	ef 92       	push	r14
    109e:	ff 92       	push	r15
    10a0:	0f 93       	push	r16
    10a2:	1f 93       	push	r17
    10a4:	cf 93       	push	r28
    10a6:	df 93       	push	r29
    10a8:	00 d0       	rcall	.+0      	; 0x10aa <_ZN4CIMU4initEv+0x22>
    10aa:	00 d0       	rcall	.+0      	; 0x10ac <_ZN4CIMU4initEv+0x24>
    10ac:	cd b7       	in	r28, 0x3d	; 61
    10ae:	de b7       	in	r29, 0x3e	; 62
    10b0:	8c 01       	movw	r16, r24
    10b2:	8a e0       	ldi	r24, 0x0A	; 10
    10b4:	90 e0       	ldi	r25, 0x00	; 0
    10b6:	a0 e0       	ldi	r26, 0x00	; 0
    10b8:	b0 e0       	ldi	r27, 0x00	; 0
    10ba:	f8 01       	movw	r30, r16
    10bc:	84 af       	std	Z+60, r24	; 0x3c
    10be:	95 af       	std	Z+61, r25	; 0x3d
    10c0:	a6 af       	std	Z+62, r26	; 0x3e
    10c2:	b7 af       	std	Z+63, r27	; 0x3f
    10c4:	14 86       	std	Z+12, r1	; 0x0c
    10c6:	15 86       	std	Z+13, r1	; 0x0d
    10c8:	16 86       	std	Z+14, r1	; 0x0e
    10ca:	17 86       	std	Z+15, r1	; 0x0f
    10cc:	10 8a       	std	Z+16, r1	; 0x10
    10ce:	11 8a       	std	Z+17, r1	; 0x11
    10d0:	12 8a       	std	Z+18, r1	; 0x12
    10d2:	13 8a       	std	Z+19, r1	; 0x13
    10d4:	14 8a       	std	Z+20, r1	; 0x14
    10d6:	15 8a       	std	Z+21, r1	; 0x15
    10d8:	16 8a       	std	Z+22, r1	; 0x16
    10da:	17 8a       	std	Z+23, r1	; 0x17
    10dc:	10 82       	st	Z, r1
    10de:	11 82       	std	Z+1, r1	; 0x01
    10e0:	12 82       	std	Z+2, r1	; 0x02
    10e2:	13 82       	std	Z+3, r1	; 0x03
    10e4:	14 82       	std	Z+4, r1	; 0x04
    10e6:	15 82       	std	Z+5, r1	; 0x05
    10e8:	16 82       	std	Z+6, r1	; 0x06
    10ea:	17 82       	std	Z+7, r1	; 0x07
    10ec:	10 86       	std	Z+8, r1	; 0x08
    10ee:	11 86       	std	Z+9, r1	; 0x09
    10f0:	12 86       	std	Z+10, r1	; 0x0a
    10f2:	13 86       	std	Z+11, r1	; 0x0b
    10f4:	81 ea       	ldi	r24, 0xA1	; 161
    10f6:	96 e8       	ldi	r25, 0x86	; 134
    10f8:	a1 e0       	ldi	r26, 0x01	; 1
    10fa:	b0 e0       	ldi	r27, 0x00	; 0
    10fc:	01 97       	sbiw	r24, 0x01	; 1
    10fe:	a1 09       	sbc	r26, r1
    1100:	b1 09       	sbc	r27, r1
    1102:	11 f0       	breq	.+4      	; 0x1108 <_ZN4CIMU4initEv+0x80>
    1104:	00 00       	nop
    1106:	fa cf       	rjmp	.-12     	; 0x10fc <_ZN4CIMU4initEv+0x74>
    1108:	4f e0       	ldi	r20, 0x0F	; 15
    110a:	64 ed       	ldi	r22, 0xD4	; 212
    110c:	8e e3       	ldi	r24, 0x3E	; 62
    110e:	9e e0       	ldi	r25, 0x0E	; 14
    1110:	0e 94 b0 06 	call	0xd60	; 0xd60 <_ZN4TI2CILh2ELh4ELh5ELh5EE8read_regEhh>
    1114:	84 3d       	cpi	r24, 0xD4	; 212
    1116:	09 f0       	breq	.+2      	; 0x111a <_ZN4CIMU4initEv+0x92>
    1118:	c7 c0       	rjmp	.+398    	; 0x12a8 <_ZN4CIMU4initEv+0x220>
    111a:	4f e0       	ldi	r20, 0x0F	; 15
    111c:	6c e3       	ldi	r22, 0x3C	; 60
    111e:	8e e3       	ldi	r24, 0x3E	; 62
    1120:	9e e0       	ldi	r25, 0x0E	; 14
    1122:	0e 94 b0 06 	call	0xd60	; 0xd60 <_ZN4TI2CILh2ELh4ELh5ELh5EE8read_regEhh>
    1126:	89 34       	cpi	r24, 0x49	; 73
    1128:	09 f0       	breq	.+2      	; 0x112c <_ZN4CIMU4initEv+0xa4>
    112a:	c1 c0       	rjmp	.+386    	; 0x12ae <_ZN4CIMU4initEv+0x226>
    112c:	4f ef       	ldi	r20, 0xFF	; 255
    112e:	60 e2       	ldi	r22, 0x20	; 32
    1130:	84 ed       	ldi	r24, 0xD4	; 212
    1132:	0e 94 91 06 	call	0xd22	; 0xd22 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10>
    1136:	40 e1       	ldi	r20, 0x10	; 16
    1138:	63 e2       	ldi	r22, 0x23	; 35
    113a:	84 ed       	ldi	r24, 0xD4	; 212
    113c:	0e 94 91 06 	call	0xd22	; 0xd22 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10>
    1140:	40 e0       	ldi	r20, 0x00	; 0
    1142:	6f e1       	ldi	r22, 0x1F	; 31
    1144:	8c e3       	ldi	r24, 0x3C	; 60
    1146:	0e 94 91 06 	call	0xd22	; 0xd22 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10>
    114a:	47 e6       	ldi	r20, 0x67	; 103
    114c:	60 e2       	ldi	r22, 0x20	; 32
    114e:	8c e3       	ldi	r24, 0x3C	; 60
    1150:	0e 94 91 06 	call	0xd22	; 0xd22 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10>
    1154:	40 e0       	ldi	r20, 0x00	; 0
    1156:	61 e2       	ldi	r22, 0x21	; 33
    1158:	8c e3       	ldi	r24, 0x3C	; 60
    115a:	0e 94 91 06 	call	0xd22	; 0xd22 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10>
    115e:	81 ea       	ldi	r24, 0xA1	; 161
    1160:	96 e8       	ldi	r25, 0x86	; 134
    1162:	a1 e0       	ldi	r26, 0x01	; 1
    1164:	b0 e0       	ldi	r27, 0x00	; 0
    1166:	01 97       	sbiw	r24, 0x01	; 1
    1168:	a1 09       	sbc	r26, r1
    116a:	b1 09       	sbc	r27, r1
    116c:	11 f0       	breq	.+4      	; 0x1172 <_ZN4CIMU4initEv+0xea>
    116e:	00 00       	nop
    1170:	fa cf       	rjmp	.-12     	; 0x1166 <_ZN4CIMU4initEv+0xde>
    1172:	c8 01       	movw	r24, r16
    1174:	0e 94 d9 06 	call	0xdb2	; 0xdb2 <_ZN4CIMU4readEv>
    1178:	e1 2c       	mov	r14, r1
    117a:	f1 2c       	mov	r15, r1
    117c:	81 2c       	mov	r8, r1
    117e:	91 2c       	mov	r9, r1
    1180:	54 01       	movw	r10, r8
    1182:	41 2c       	mov	r4, r1
    1184:	51 2c       	mov	r5, r1
    1186:	32 01       	movw	r6, r4
    1188:	40 e0       	ldi	r20, 0x00	; 0
    118a:	50 e0       	ldi	r21, 0x00	; 0
    118c:	ba 01       	movw	r22, r20
    118e:	80 e0       	ldi	r24, 0x00	; 0
    1190:	90 e0       	ldi	r25, 0x00	; 0
    1192:	01 96       	adiw	r24, 0x01	; 1
    1194:	89 3e       	cpi	r24, 0xE9	; 233
    1196:	f3 e0       	ldi	r31, 0x03	; 3
    1198:	9f 07       	cpc	r25, r31
    119a:	11 f0       	breq	.+4      	; 0x11a0 <_ZN4CIMU4initEv+0x118>
    119c:	00 00       	nop
    119e:	f9 cf       	rjmp	.-14     	; 0x1192 <_ZN4CIMU4initEv+0x10a>
    11a0:	c8 01       	movw	r24, r16
    11a2:	49 83       	std	Y+1, r20	; 0x01
    11a4:	5a 83       	std	Y+2, r21	; 0x02
    11a6:	6b 83       	std	Y+3, r22	; 0x03
    11a8:	7c 83       	std	Y+4, r23	; 0x04
    11aa:	0e 94 d9 06 	call	0xdb2	; 0xdb2 <_ZN4CIMU4readEv>
    11ae:	f8 01       	movw	r30, r16
    11b0:	84 a1       	ldd	r24, Z+36	; 0x24
    11b2:	95 a1       	ldd	r25, Z+37	; 0x25
    11b4:	a6 a1       	ldd	r26, Z+38	; 0x26
    11b6:	b7 a1       	ldd	r27, Z+39	; 0x27
    11b8:	49 81       	ldd	r20, Y+1	; 0x01
    11ba:	5a 81       	ldd	r21, Y+2	; 0x02
    11bc:	6b 81       	ldd	r22, Y+3	; 0x03
    11be:	7c 81       	ldd	r23, Y+4	; 0x04
    11c0:	48 0f       	add	r20, r24
    11c2:	59 1f       	adc	r21, r25
    11c4:	6a 1f       	adc	r22, r26
    11c6:	7b 1f       	adc	r23, r27
    11c8:	80 a5       	ldd	r24, Z+40	; 0x28
    11ca:	91 a5       	ldd	r25, Z+41	; 0x29
    11cc:	a2 a5       	ldd	r26, Z+42	; 0x2a
    11ce:	b3 a5       	ldd	r27, Z+43	; 0x2b
    11d0:	48 0e       	add	r4, r24
    11d2:	59 1e       	adc	r5, r25
    11d4:	6a 1e       	adc	r6, r26
    11d6:	7b 1e       	adc	r7, r27
    11d8:	84 a5       	ldd	r24, Z+44	; 0x2c
    11da:	95 a5       	ldd	r25, Z+45	; 0x2d
    11dc:	a6 a5       	ldd	r26, Z+46	; 0x2e
    11de:	b7 a5       	ldd	r27, Z+47	; 0x2f
    11e0:	88 0e       	add	r8, r24
    11e2:	99 1e       	adc	r9, r25
    11e4:	aa 1e       	adc	r10, r26
    11e6:	bb 1e       	adc	r11, r27
    11e8:	ff ef       	ldi	r31, 0xFF	; 255
    11ea:	ef 1a       	sub	r14, r31
    11ec:	ff 0a       	sbc	r15, r31
    11ee:	24 e6       	ldi	r18, 0x64	; 100
    11f0:	e2 16       	cp	r14, r18
    11f2:	f1 04       	cpc	r15, r1
    11f4:	61 f6       	brne	.-104    	; 0x118e <_ZN4CIMU4initEv+0x106>
    11f6:	84 e6       	ldi	r24, 0x64	; 100
    11f8:	c8 2e       	mov	r12, r24
    11fa:	d1 2c       	mov	r13, r1
    11fc:	e1 2c       	mov	r14, r1
    11fe:	f1 2c       	mov	r15, r1
    1200:	cb 01       	movw	r24, r22
    1202:	ba 01       	movw	r22, r20
    1204:	a7 01       	movw	r20, r14
    1206:	96 01       	movw	r18, r12
    1208:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
    120c:	f8 01       	movw	r30, r16
    120e:	24 87       	std	Z+12, r18	; 0x0c
    1210:	35 87       	std	Z+13, r19	; 0x0d
    1212:	46 87       	std	Z+14, r20	; 0x0e
    1214:	57 87       	std	Z+15, r21	; 0x0f
    1216:	c3 01       	movw	r24, r6
    1218:	b2 01       	movw	r22, r4
    121a:	a7 01       	movw	r20, r14
    121c:	96 01       	movw	r18, r12
    121e:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
    1222:	f8 01       	movw	r30, r16
    1224:	20 8b       	std	Z+16, r18	; 0x10
    1226:	31 8b       	std	Z+17, r19	; 0x11
    1228:	42 8b       	std	Z+18, r20	; 0x12
    122a:	53 8b       	std	Z+19, r21	; 0x13
    122c:	c5 01       	movw	r24, r10
    122e:	b4 01       	movw	r22, r8
    1230:	a7 01       	movw	r20, r14
    1232:	96 01       	movw	r18, r12
    1234:	0e 94 64 0c 	call	0x18c8	; 0x18c8 <__divmodsi4>
    1238:	f8 01       	movw	r30, r16
    123a:	24 8b       	std	Z+20, r18	; 0x14
    123c:	35 8b       	std	Z+21, r19	; 0x15
    123e:	46 8b       	std	Z+22, r20	; 0x16
    1240:	57 8b       	std	Z+23, r21	; 0x17
    1242:	10 82       	st	Z, r1
    1244:	11 82       	std	Z+1, r1	; 0x01
    1246:	12 82       	std	Z+2, r1	; 0x02
    1248:	13 82       	std	Z+3, r1	; 0x03
    124a:	14 82       	std	Z+4, r1	; 0x04
    124c:	15 82       	std	Z+5, r1	; 0x05
    124e:	16 82       	std	Z+6, r1	; 0x06
    1250:	17 82       	std	Z+7, r1	; 0x07
    1252:	10 86       	std	Z+8, r1	; 0x08
    1254:	11 86       	std	Z+9, r1	; 0x09
    1256:	12 86       	std	Z+10, r1	; 0x0a
    1258:	13 86       	std	Z+11, r1	; 0x0b
    125a:	10 aa       	std	Z+48, r1	; 0x30
    125c:	11 aa       	std	Z+49, r1	; 0x31
    125e:	12 aa       	std	Z+50, r1	; 0x32
    1260:	13 aa       	std	Z+51, r1	; 0x33
    1262:	14 aa       	std	Z+52, r1	; 0x34
    1264:	15 aa       	std	Z+53, r1	; 0x35
    1266:	16 aa       	std	Z+54, r1	; 0x36
    1268:	17 aa       	std	Z+55, r1	; 0x37
    126a:	10 ae       	std	Z+56, r1	; 0x38
    126c:	11 ae       	std	Z+57, r1	; 0x39
    126e:	12 ae       	std	Z+58, r1	; 0x3a
    1270:	13 ae       	std	Z+59, r1	; 0x3b
    1272:	14 a2       	std	Z+36, r1	; 0x24
    1274:	15 a2       	std	Z+37, r1	; 0x25
    1276:	16 a2       	std	Z+38, r1	; 0x26
    1278:	17 a2       	std	Z+39, r1	; 0x27
    127a:	10 a6       	std	Z+40, r1	; 0x28
    127c:	11 a6       	std	Z+41, r1	; 0x29
    127e:	12 a6       	std	Z+42, r1	; 0x2a
    1280:	13 a6       	std	Z+43, r1	; 0x2b
    1282:	14 a6       	std	Z+44, r1	; 0x2c
    1284:	15 a6       	std	Z+45, r1	; 0x2d
    1286:	16 a6       	std	Z+46, r1	; 0x2e
    1288:	17 a6       	std	Z+47, r1	; 0x2f
    128a:	10 8e       	std	Z+24, r1	; 0x18
    128c:	11 8e       	std	Z+25, r1	; 0x19
    128e:	12 8e       	std	Z+26, r1	; 0x1a
    1290:	13 8e       	std	Z+27, r1	; 0x1b
    1292:	14 8e       	std	Z+28, r1	; 0x1c
    1294:	15 8e       	std	Z+29, r1	; 0x1d
    1296:	16 8e       	std	Z+30, r1	; 0x1e
    1298:	17 8e       	std	Z+31, r1	; 0x1f
    129a:	10 a2       	std	Z+32, r1	; 0x20
    129c:	11 a2       	std	Z+33, r1	; 0x21
    129e:	12 a2       	std	Z+34, r1	; 0x22
    12a0:	13 a2       	std	Z+35, r1	; 0x23
    12a2:	80 e0       	ldi	r24, 0x00	; 0
    12a4:	90 e0       	ldi	r25, 0x00	; 0
    12a6:	05 c0       	rjmp	.+10     	; 0x12b2 <_ZN4CIMU4initEv+0x22a>
    12a8:	8f ef       	ldi	r24, 0xFF	; 255
    12aa:	9f ef       	ldi	r25, 0xFF	; 255
    12ac:	02 c0       	rjmp	.+4      	; 0x12b2 <_ZN4CIMU4initEv+0x22a>
    12ae:	8e ef       	ldi	r24, 0xFE	; 254
    12b0:	9f ef       	ldi	r25, 0xFF	; 255
    12b2:	0f 90       	pop	r0
    12b4:	0f 90       	pop	r0
    12b6:	0f 90       	pop	r0
    12b8:	0f 90       	pop	r0
    12ba:	df 91       	pop	r29
    12bc:	cf 91       	pop	r28
    12be:	1f 91       	pop	r17
    12c0:	0f 91       	pop	r16
    12c2:	ff 90       	pop	r15
    12c4:	ef 90       	pop	r14
    12c6:	df 90       	pop	r13
    12c8:	cf 90       	pop	r12
    12ca:	bf 90       	pop	r11
    12cc:	af 90       	pop	r10
    12ce:	9f 90       	pop	r9
    12d0:	8f 90       	pop	r8
    12d2:	7f 90       	pop	r7
    12d4:	6f 90       	pop	r6
    12d6:	5f 90       	pop	r5
    12d8:	4f 90       	pop	r4
    12da:	08 95       	ret

000012dc <_GLOBAL__sub_I_terminal>:
    12dc:	88 ef       	ldi	r24, 0xF8	; 248
    12de:	9d e0       	ldi	r25, 0x0D	; 13
    12e0:	0c 94 17 0b 	jmp	0x162e	; 0x162e <_ZN6CUSARTC1Ev>

000012e4 <_GLOBAL__sub_D_terminal>:
    12e4:	88 ef       	ldi	r24, 0xF8	; 248
    12e6:	9d e0       	ldi	r25, 0x0D	; 13
    12e8:	0c 94 27 0b 	jmp	0x164e	; 0x164e <_ZN6CUSARTD1Ev>

000012ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>:
	...
    12f4:	00 00       	nop
    12f6:	08 95       	ret

000012f8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>:
    12f8:	cf 93       	push	r28
    12fa:	df 93       	push	r29
    12fc:	d8 2f       	mov	r29, r24
    12fe:	c8 e0       	ldi	r28, 0x08	; 8
    1300:	3d 9a       	sbi	0x07, 5	; 7
    1302:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    1306:	d7 ff       	sbrs	r29, 7
    1308:	02 c0       	rjmp	.+4      	; 0x130e <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x16>
    130a:	3c 98       	cbi	0x07, 4	; 7
    130c:	01 c0       	rjmp	.+2      	; 0x1310 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x18>
    130e:	3c 9a       	sbi	0x07, 4	; 7
    1310:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    1314:	3d 98       	cbi	0x07, 5	; 7
    1316:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    131a:	dd 0f       	add	r29, r29
    131c:	c1 50       	subi	r28, 0x01	; 1
    131e:	81 f7       	brne	.-32     	; 0x1300 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9+0x8>
    1320:	3d 9a       	sbi	0x07, 5	; 7
    1322:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    1326:	3c 98       	cbi	0x07, 4	; 7
    1328:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    132c:	3d 98       	cbi	0x07, 5	; 7
    132e:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    1332:	c6 b1       	in	r28, 0x06	; 6
    1334:	3d 9a       	sbi	0x07, 5	; 7
    1336:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    133a:	c2 95       	swap	r28
    133c:	c1 70       	andi	r28, 0x01	; 1
    133e:	81 e0       	ldi	r24, 0x01	; 1
    1340:	8c 27       	eor	r24, r28
    1342:	df 91       	pop	r29
    1344:	cf 91       	pop	r28
    1346:	08 95       	ret

00001348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>:
    1348:	cf 93       	push	r28
    134a:	df 93       	push	r29
    134c:	00 d0       	rcall	.+0      	; 0x134e <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11+0x6>
    134e:	cd b7       	in	r28, 0x3d	; 61
    1350:	de b7       	in	r29, 0x3e	; 62
    1352:	3d 98       	cbi	0x07, 5	; 7
    1354:	3c 98       	cbi	0x07, 4	; 7
    1356:	3d 98       	cbi	0x07, 5	; 7
    1358:	3c 9a       	sbi	0x07, 4	; 7
    135a:	3d 9a       	sbi	0x07, 5	; 7
    135c:	3c 98       	cbi	0x07, 4	; 7
    135e:	6a 83       	std	Y+2, r22	; 0x02
    1360:	89 83       	std	Y+1, r24	; 0x01
    1362:	0e 94 76 09 	call	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>
    1366:	89 81       	ldd	r24, Y+1	; 0x01
    1368:	0e 94 7c 09 	call	0x12f8	; 0x12f8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
    136c:	80 e0       	ldi	r24, 0x00	; 0
    136e:	0e 94 7c 09 	call	0x12f8	; 0x12f8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
    1372:	6a 81       	ldd	r22, Y+2	; 0x02
    1374:	86 2f       	mov	r24, r22
    1376:	0e 94 7c 09 	call	0x12f8	; 0x12f8 <_ZN4TI2CILh2ELh4ELh5ELh5EE5writeEh.isra.9>
    137a:	3d 9a       	sbi	0x07, 5	; 7
    137c:	3c 9a       	sbi	0x07, 4	; 7
    137e:	3d 98       	cbi	0x07, 5	; 7
    1380:	3c 9a       	sbi	0x07, 4	; 7
    1382:	3d 98       	cbi	0x07, 5	; 7
    1384:	3c 98       	cbi	0x07, 4	; 7
    1386:	0f 90       	pop	r0
    1388:	0f 90       	pop	r0
    138a:	df 91       	pop	r29
    138c:	cf 91       	pop	r28
    138e:	0c 94 76 09 	jmp	0x12ec	; 0x12ec <_ZN4TI2CILh2ELh4ELh5ELh5EE5delayEv.isra.4>

00001392 <_ZN9CMotorI2CC1Ev>:
    1392:	08 95       	ret

00001394 <_ZN9CMotorI2CD1Ev>:
    1394:	08 95       	ret

00001396 <_ZN9CMotorI2C5sleepEv>:
    1396:	68 e1       	ldi	r22, 0x18	; 24
    1398:	80 ec       	ldi	r24, 0xC0	; 192
    139a:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    139e:	68 e1       	ldi	r22, 0x18	; 24
    13a0:	82 ec       	ldi	r24, 0xC2	; 194
    13a2:	0c 94 a4 09 	jmp	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>

000013a6 <_ZN9CMotorI2C13motor_refreshEv>:
    13a6:	cf 92       	push	r12
    13a8:	df 92       	push	r13
    13aa:	ef 92       	push	r14
    13ac:	ff 92       	push	r15
    13ae:	cf 93       	push	r28
    13b0:	fc 01       	movw	r30, r24
    13b2:	40 81       	ld	r20, Z
    13b4:	51 81       	ldd	r21, Z+1	; 0x01
    13b6:	62 81       	ldd	r22, Z+2	; 0x02
    13b8:	73 81       	ldd	r23, Z+3	; 0x03
    13ba:	c4 80       	ldd	r12, Z+4	; 0x04
    13bc:	d5 80       	ldd	r13, Z+5	; 0x05
    13be:	e6 80       	ldd	r14, Z+6	; 0x06
    13c0:	f7 80       	ldd	r15, Z+7	; 0x07
    13c2:	4d 32       	cpi	r20, 0x2D	; 45
    13c4:	51 05       	cpc	r21, r1
    13c6:	61 05       	cpc	r22, r1
    13c8:	71 05       	cpc	r23, r1
    13ca:	0c f0       	brlt	.+2      	; 0x13ce <_ZN9CMotorI2C13motor_refreshEv+0x28>
    13cc:	de c0       	rjmp	.+444    	; 0x158a <_ZN9CMotorI2C13motor_refreshEv+0x1e4>
    13ce:	44 3d       	cpi	r20, 0xD4	; 212
    13d0:	ff ef       	ldi	r31, 0xFF	; 255
    13d2:	5f 07       	cpc	r21, r31
    13d4:	6f 07       	cpc	r22, r31
    13d6:	7f 07       	cpc	r23, r31
    13d8:	cc f1       	brlt	.+114    	; 0x144c <_ZN9CMotorI2C13motor_refreshEv+0xa6>
    13da:	8d e2       	ldi	r24, 0x2D	; 45
    13dc:	c8 16       	cp	r12, r24
    13de:	d1 04       	cpc	r13, r1
    13e0:	e1 04       	cpc	r14, r1
    13e2:	f1 04       	cpc	r15, r1
    13e4:	0c f0       	brlt	.+2      	; 0x13e8 <_ZN9CMotorI2C13motor_refreshEv+0x42>
    13e6:	be c0       	rjmp	.+380    	; 0x1564 <_ZN9CMotorI2C13motor_refreshEv+0x1be>
    13e8:	e4 ed       	ldi	r30, 0xD4	; 212
    13ea:	ce 16       	cp	r12, r30
    13ec:	ef ef       	ldi	r30, 0xFF	; 255
    13ee:	de 06       	cpc	r13, r30
    13f0:	ee 06       	cpc	r14, r30
    13f2:	fe 06       	cpc	r15, r30
    13f4:	3c f0       	brlt	.+14     	; 0x1404 <_ZN9CMotorI2C13motor_refreshEv+0x5e>
    13f6:	41 15       	cp	r20, r1
    13f8:	51 05       	cpc	r21, r1
    13fa:	61 05       	cpc	r22, r1
    13fc:	71 05       	cpc	r23, r1
    13fe:	09 f4       	brne	.+2      	; 0x1402 <_ZN9CMotorI2C13motor_refreshEv+0x5c>
    1400:	4f c0       	rjmp	.+158    	; 0x14a0 <_ZN9CMotorI2C13motor_refreshEv+0xfa>
    1402:	0c c0       	rjmp	.+24     	; 0x141c <_ZN9CMotorI2C13motor_refreshEv+0x76>
    1404:	41 15       	cp	r20, r1
    1406:	51 05       	cpc	r21, r1
    1408:	61 05       	cpc	r22, r1
    140a:	71 05       	cpc	r23, r1
    140c:	09 f4       	brne	.+2      	; 0x1410 <_ZN9CMotorI2C13motor_refreshEv+0x6a>
    140e:	6f c0       	rjmp	.+222    	; 0x14ee <_ZN9CMotorI2C13motor_refreshEv+0x148>
    1410:	a4 ed       	ldi	r26, 0xD4	; 212
    1412:	ca 2e       	mov	r12, r26
    1414:	dd 24       	eor	r13, r13
    1416:	da 94       	dec	r13
    1418:	ed 2c       	mov	r14, r13
    141a:	fd 2c       	mov	r15, r13
    141c:	14 16       	cp	r1, r20
    141e:	15 06       	cpc	r1, r21
    1420:	16 06       	cpc	r1, r22
    1422:	17 06       	cpc	r1, r23
    1424:	1c f5       	brge	.+70     	; 0x146c <_ZN9CMotorI2C13motor_refreshEv+0xc6>
    1426:	46 30       	cpi	r20, 0x06	; 6
    1428:	51 05       	cpc	r21, r1
    142a:	61 05       	cpc	r22, r1
    142c:	71 05       	cpc	r23, r1
    142e:	24 f4       	brge	.+8      	; 0x1438 <_ZN9CMotorI2C13motor_refreshEv+0x92>
    1430:	46 e0       	ldi	r20, 0x06	; 6
    1432:	50 e0       	ldi	r21, 0x00	; 0
    1434:	60 e0       	ldi	r22, 0x00	; 0
    1436:	70 e0       	ldi	r23, 0x00	; 0
    1438:	f2 e0       	ldi	r31, 0x02	; 2
    143a:	44 0f       	add	r20, r20
    143c:	55 1f       	adc	r21, r21
    143e:	66 1f       	adc	r22, r22
    1440:	77 1f       	adc	r23, r23
    1442:	fa 95       	dec	r31
    1444:	d1 f7       	brne	.-12     	; 0x143a <_ZN9CMotorI2C13motor_refreshEv+0x94>
    1446:	c4 2f       	mov	r28, r20
    1448:	c2 60       	ori	r28, 0x02	; 2
    144a:	2b c0       	rjmp	.+86     	; 0x14a2 <_ZN9CMotorI2C13motor_refreshEv+0xfc>
    144c:	44 ed       	ldi	r20, 0xD4	; 212
    144e:	5f ef       	ldi	r21, 0xFF	; 255
    1450:	6f ef       	ldi	r22, 0xFF	; 255
    1452:	7f ef       	ldi	r23, 0xFF	; 255
    1454:	ed e2       	ldi	r30, 0x2D	; 45
    1456:	ce 16       	cp	r12, r30
    1458:	d1 04       	cpc	r13, r1
    145a:	e1 04       	cpc	r14, r1
    145c:	f1 04       	cpc	r15, r1
    145e:	0c f4       	brge	.+2      	; 0x1462 <_ZN9CMotorI2C13motor_refreshEv+0xbc>
    1460:	a5 c0       	rjmp	.+330    	; 0x15ac <_ZN9CMotorI2C13motor_refreshEv+0x206>
    1462:	8c e2       	ldi	r24, 0x2C	; 44
    1464:	c8 2e       	mov	r12, r24
    1466:	d1 2c       	mov	r13, r1
    1468:	e1 2c       	mov	r14, r1
    146a:	f1 2c       	mov	r15, r1
    146c:	70 95       	com	r23
    146e:	60 95       	com	r22
    1470:	50 95       	com	r21
    1472:	41 95       	neg	r20
    1474:	5f 4f       	sbci	r21, 0xFF	; 255
    1476:	6f 4f       	sbci	r22, 0xFF	; 255
    1478:	7f 4f       	sbci	r23, 0xFF	; 255
    147a:	46 30       	cpi	r20, 0x06	; 6
    147c:	51 05       	cpc	r21, r1
    147e:	61 05       	cpc	r22, r1
    1480:	71 05       	cpc	r23, r1
    1482:	24 f4       	brge	.+8      	; 0x148c <_ZN9CMotorI2C13motor_refreshEv+0xe6>
    1484:	46 e0       	ldi	r20, 0x06	; 6
    1486:	50 e0       	ldi	r21, 0x00	; 0
    1488:	60 e0       	ldi	r22, 0x00	; 0
    148a:	70 e0       	ldi	r23, 0x00	; 0
    148c:	e2 e0       	ldi	r30, 0x02	; 2
    148e:	44 0f       	add	r20, r20
    1490:	55 1f       	adc	r21, r21
    1492:	66 1f       	adc	r22, r22
    1494:	77 1f       	adc	r23, r23
    1496:	ea 95       	dec	r30
    1498:	d1 f7       	brne	.-12     	; 0x148e <_ZN9CMotorI2C13motor_refreshEv+0xe8>
    149a:	c4 2f       	mov	r28, r20
    149c:	c1 60       	ori	r28, 0x01	; 1
    149e:	01 c0       	rjmp	.+2      	; 0x14a2 <_ZN9CMotorI2C13motor_refreshEv+0xfc>
    14a0:	cb e1       	ldi	r28, 0x1B	; 27
    14a2:	60 e0       	ldi	r22, 0x00	; 0
    14a4:	80 ec       	ldi	r24, 0xC0	; 192
    14a6:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    14aa:	6c 2f       	mov	r22, r28
    14ac:	80 ec       	ldi	r24, 0xC0	; 192
    14ae:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    14b2:	c1 14       	cp	r12, r1
    14b4:	d1 04       	cpc	r13, r1
    14b6:	e1 04       	cpc	r14, r1
    14b8:	f1 04       	cpc	r15, r1
    14ba:	09 f4       	brne	.+2      	; 0x14be <_ZN9CMotorI2C13motor_refreshEv+0x118>
    14bc:	45 c0       	rjmp	.+138    	; 0x1548 <_ZN9CMotorI2C13motor_refreshEv+0x1a2>
    14be:	2c f1       	brlt	.+74     	; 0x150a <_ZN9CMotorI2C13motor_refreshEv+0x164>
    14c0:	f6 e0       	ldi	r31, 0x06	; 6
    14c2:	cf 16       	cp	r12, r31
    14c4:	d1 04       	cpc	r13, r1
    14c6:	e1 04       	cpc	r14, r1
    14c8:	f1 04       	cpc	r15, r1
    14ca:	2c f4       	brge	.+10     	; 0x14d6 <_ZN9CMotorI2C13motor_refreshEv+0x130>
    14cc:	76 e0       	ldi	r23, 0x06	; 6
    14ce:	c7 2e       	mov	r12, r23
    14d0:	d1 2c       	mov	r13, r1
    14d2:	e1 2c       	mov	r14, r1
    14d4:	f1 2c       	mov	r15, r1
    14d6:	d7 01       	movw	r26, r14
    14d8:	c6 01       	movw	r24, r12
    14da:	62 e0       	ldi	r22, 0x02	; 2
    14dc:	88 0f       	add	r24, r24
    14de:	99 1f       	adc	r25, r25
    14e0:	aa 1f       	adc	r26, r26
    14e2:	bb 1f       	adc	r27, r27
    14e4:	6a 95       	dec	r22
    14e6:	d1 f7       	brne	.-12     	; 0x14dc <_ZN9CMotorI2C13motor_refreshEv+0x136>
    14e8:	c8 2f       	mov	r28, r24
    14ea:	c1 60       	ori	r28, 0x01	; 1
    14ec:	2e c0       	rjmp	.+92     	; 0x154a <_ZN9CMotorI2C13motor_refreshEv+0x1a4>
    14ee:	60 e0       	ldi	r22, 0x00	; 0
    14f0:	80 ec       	ldi	r24, 0xC0	; 192
    14f2:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    14f6:	6b e1       	ldi	r22, 0x1B	; 27
    14f8:	80 ec       	ldi	r24, 0xC0	; 192
    14fa:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    14fe:	34 ed       	ldi	r19, 0xD4	; 212
    1500:	c3 2e       	mov	r12, r19
    1502:	dd 24       	eor	r13, r13
    1504:	da 94       	dec	r13
    1506:	ed 2c       	mov	r14, r13
    1508:	fd 2c       	mov	r15, r13
    150a:	f0 94       	com	r15
    150c:	e0 94       	com	r14
    150e:	d0 94       	com	r13
    1510:	c0 94       	com	r12
    1512:	c1 1c       	adc	r12, r1
    1514:	d1 1c       	adc	r13, r1
    1516:	e1 1c       	adc	r14, r1
    1518:	f1 1c       	adc	r15, r1
    151a:	86 e0       	ldi	r24, 0x06	; 6
    151c:	c8 16       	cp	r12, r24
    151e:	d1 04       	cpc	r13, r1
    1520:	e1 04       	cpc	r14, r1
    1522:	f1 04       	cpc	r15, r1
    1524:	2c f4       	brge	.+10     	; 0x1530 <_ZN9CMotorI2C13motor_refreshEv+0x18a>
    1526:	56 e0       	ldi	r21, 0x06	; 6
    1528:	c5 2e       	mov	r12, r21
    152a:	d1 2c       	mov	r13, r1
    152c:	e1 2c       	mov	r14, r1
    152e:	f1 2c       	mov	r15, r1
    1530:	d7 01       	movw	r26, r14
    1532:	c6 01       	movw	r24, r12
    1534:	42 e0       	ldi	r20, 0x02	; 2
    1536:	88 0f       	add	r24, r24
    1538:	99 1f       	adc	r25, r25
    153a:	aa 1f       	adc	r26, r26
    153c:	bb 1f       	adc	r27, r27
    153e:	4a 95       	dec	r20
    1540:	d1 f7       	brne	.-12     	; 0x1536 <_ZN9CMotorI2C13motor_refreshEv+0x190>
    1542:	c8 2f       	mov	r28, r24
    1544:	c2 60       	ori	r28, 0x02	; 2
    1546:	01 c0       	rjmp	.+2      	; 0x154a <_ZN9CMotorI2C13motor_refreshEv+0x1a4>
    1548:	cb e1       	ldi	r28, 0x1B	; 27
    154a:	60 e0       	ldi	r22, 0x00	; 0
    154c:	82 ec       	ldi	r24, 0xC2	; 194
    154e:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    1552:	6c 2f       	mov	r22, r28
    1554:	82 ec       	ldi	r24, 0xC2	; 194
    1556:	cf 91       	pop	r28
    1558:	ff 90       	pop	r15
    155a:	ef 90       	pop	r14
    155c:	df 90       	pop	r13
    155e:	cf 90       	pop	r12
    1560:	0c 94 a4 09 	jmp	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    1564:	41 15       	cp	r20, r1
    1566:	51 05       	cpc	r21, r1
    1568:	61 05       	cpc	r22, r1
    156a:	71 05       	cpc	r23, r1
    156c:	c9 f4       	brne	.+50     	; 0x15a0 <_ZN9CMotorI2C13motor_refreshEv+0x1fa>
    156e:	60 e0       	ldi	r22, 0x00	; 0
    1570:	80 ec       	ldi	r24, 0xC0	; 192
    1572:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    1576:	6b e1       	ldi	r22, 0x1B	; 27
    1578:	80 ec       	ldi	r24, 0xC0	; 192
    157a:	0e 94 a4 09 	call	0x1348	; 0x1348 <_ZN4TI2CILh2ELh4ELh5ELh5EE9write_regEhhh.isra.10.constprop.11>
    157e:	2c e2       	ldi	r18, 0x2C	; 44
    1580:	c2 2e       	mov	r12, r18
    1582:	d1 2c       	mov	r13, r1
    1584:	e1 2c       	mov	r14, r1
    1586:	f1 2c       	mov	r15, r1
    1588:	a6 cf       	rjmp	.-180    	; 0x14d6 <_ZN9CMotorI2C13motor_refreshEv+0x130>
    158a:	4c e2       	ldi	r20, 0x2C	; 44
    158c:	50 e0       	ldi	r21, 0x00	; 0
    158e:	60 e0       	ldi	r22, 0x00	; 0
    1590:	70 e0       	ldi	r23, 0x00	; 0
    1592:	8d e2       	ldi	r24, 0x2D	; 45
    1594:	c8 16       	cp	r12, r24
    1596:	d1 04       	cpc	r13, r1
    1598:	e1 04       	cpc	r14, r1
    159a:	f1 04       	cpc	r15, r1
    159c:	0c f4       	brge	.+2      	; 0x15a0 <_ZN9CMotorI2C13motor_refreshEv+0x1fa>
    159e:	24 cf       	rjmp	.-440    	; 0x13e8 <_ZN9CMotorI2C13motor_refreshEv+0x42>
    15a0:	9c e2       	ldi	r25, 0x2C	; 44
    15a2:	c9 2e       	mov	r12, r25
    15a4:	d1 2c       	mov	r13, r1
    15a6:	e1 2c       	mov	r14, r1
    15a8:	f1 2c       	mov	r15, r1
    15aa:	38 cf       	rjmp	.-400    	; 0x141c <_ZN9CMotorI2C13motor_refreshEv+0x76>
    15ac:	f4 ed       	ldi	r31, 0xD4	; 212
    15ae:	cf 16       	cp	r12, r31
    15b0:	ff ef       	ldi	r31, 0xFF	; 255
    15b2:	df 06       	cpc	r13, r31
    15b4:	ef 06       	cpc	r14, r31
    15b6:	ff 06       	cpc	r15, r31
    15b8:	0c f4       	brge	.+2      	; 0x15bc <_ZN9CMotorI2C13motor_refreshEv+0x216>
    15ba:	2a cf       	rjmp	.-428    	; 0x1410 <_ZN9CMotorI2C13motor_refreshEv+0x6a>
    15bc:	1c cf       	rjmp	.-456    	; 0x13f6 <_ZN9CMotorI2C13motor_refreshEv+0x50>

000015be <_ZN9CMotorI2C9set_motorEml>:
    15be:	0f 93       	push	r16
    15c0:	1f 93       	push	r17
    15c2:	42 30       	cpi	r20, 0x02	; 2
    15c4:	51 05       	cpc	r21, r1
    15c6:	61 05       	cpc	r22, r1
    15c8:	71 05       	cpc	r23, r1
    15ca:	58 f4       	brcc	.+22     	; 0x15e2 <_ZN9CMotorI2C9set_motorEml+0x24>
    15cc:	44 0f       	add	r20, r20
    15ce:	55 1f       	adc	r21, r21
    15d0:	44 0f       	add	r20, r20
    15d2:	55 1f       	adc	r21, r21
    15d4:	fc 01       	movw	r30, r24
    15d6:	e4 0f       	add	r30, r20
    15d8:	f5 1f       	adc	r31, r21
    15da:	00 83       	st	Z, r16
    15dc:	11 83       	std	Z+1, r17	; 0x01
    15de:	22 83       	std	Z+2, r18	; 0x02
    15e0:	33 83       	std	Z+3, r19	; 0x03
    15e2:	1f 91       	pop	r17
    15e4:	0f 91       	pop	r16
    15e6:	0c 94 d3 09 	jmp	0x13a6	; 0x13a6 <_ZN9CMotorI2C13motor_refreshEv>

000015ea <_ZN9CMotorI2C4initEv>:
    15ea:	0f 93       	push	r16
    15ec:	1f 93       	push	r17
    15ee:	cf 93       	push	r28
    15f0:	df 93       	push	r29
    15f2:	ec 01       	movw	r28, r24
    15f4:	00 e0       	ldi	r16, 0x00	; 0
    15f6:	10 e0       	ldi	r17, 0x00	; 0
    15f8:	98 01       	movw	r18, r16
    15fa:	40 e0       	ldi	r20, 0x00	; 0
    15fc:	50 e0       	ldi	r21, 0x00	; 0
    15fe:	ba 01       	movw	r22, r20
    1600:	0e 94 df 0a 	call	0x15be	; 0x15be <_ZN9CMotorI2C9set_motorEml>
    1604:	00 e0       	ldi	r16, 0x00	; 0
    1606:	10 e0       	ldi	r17, 0x00	; 0
    1608:	98 01       	movw	r18, r16
    160a:	41 e0       	ldi	r20, 0x01	; 1
    160c:	50 e0       	ldi	r21, 0x00	; 0
    160e:	60 e0       	ldi	r22, 0x00	; 0
    1610:	70 e0       	ldi	r23, 0x00	; 0
    1612:	ce 01       	movw	r24, r28
    1614:	0e 94 df 0a 	call	0x15be	; 0x15be <_ZN9CMotorI2C9set_motorEml>
    1618:	ce 01       	movw	r24, r28
    161a:	0e 94 d3 09 	call	0x13a6	; 0x13a6 <_ZN9CMotorI2C13motor_refreshEv>
    161e:	60 e0       	ldi	r22, 0x00	; 0
    1620:	70 e0       	ldi	r23, 0x00	; 0
    1622:	cb 01       	movw	r24, r22
    1624:	df 91       	pop	r29
    1626:	cf 91       	pop	r28
    1628:	1f 91       	pop	r17
    162a:	0f 91       	pop	r16
    162c:	08 95       	ret

0000162e <_ZN6CUSARTC1Ev>:
    162e:	10 92 c5 00 	sts	0x00C5, r1
    1632:	87 e6       	ldi	r24, 0x67	; 103
    1634:	80 93 c4 00 	sts	0x00C4, r24
    1638:	e2 ec       	ldi	r30, 0xC2	; 194
    163a:	f0 e0       	ldi	r31, 0x00	; 0
    163c:	80 81       	ld	r24, Z
    163e:	86 60       	ori	r24, 0x06	; 6
    1640:	80 83       	st	Z, r24
    1642:	e1 ec       	ldi	r30, 0xC1	; 193
    1644:	f0 e0       	ldi	r31, 0x00	; 0
    1646:	80 81       	ld	r24, Z
    1648:	88 61       	ori	r24, 0x18	; 24
    164a:	80 83       	st	Z, r24
    164c:	08 95       	ret

0000164e <_ZN6CUSARTD1Ev>:
    164e:	08 95       	ret

00001650 <_ZN6CTimerC1Ev>:
    1650:	80 e0       	ldi	r24, 0x00	; 0
    1652:	90 e0       	ldi	r25, 0x00	; 0
    1654:	fc 01       	movw	r30, r24
    1656:	23 e0       	ldi	r18, 0x03	; 3
    1658:	ee 0f       	add	r30, r30
    165a:	ff 1f       	adc	r31, r31
    165c:	2a 95       	dec	r18
    165e:	e1 f7       	brne	.-8      	; 0x1658 <_ZN6CTimerC1Ev+0x8>
    1660:	e7 50       	subi	r30, 0x07	; 7
    1662:	f2 4f       	sbci	r31, 0xF2	; 242
    1664:	11 82       	std	Z+1, r1	; 0x01
    1666:	10 82       	st	Z, r1
    1668:	13 82       	std	Z+3, r1	; 0x03
    166a:	12 82       	std	Z+2, r1	; 0x02
    166c:	15 82       	std	Z+5, r1	; 0x05
    166e:	14 82       	std	Z+4, r1	; 0x04
    1670:	16 82       	std	Z+6, r1	; 0x06
    1672:	17 82       	std	Z+7, r1	; 0x07
    1674:	01 96       	adiw	r24, 0x01	; 1
    1676:	88 30       	cpi	r24, 0x08	; 8
    1678:	91 05       	cpc	r25, r1
    167a:	61 f7       	brne	.-40     	; 0x1654 <_ZN6CTimerC1Ev+0x4>
    167c:	10 92 39 0e 	sts	0x0E39, r1
    1680:	10 92 3a 0e 	sts	0x0E3A, r1
    1684:	10 92 3b 0e 	sts	0x0E3B, r1
    1688:	10 92 3c 0e 	sts	0x0E3C, r1
    168c:	84 b5       	in	r24, 0x24	; 36
    168e:	82 60       	ori	r24, 0x02	; 2
    1690:	84 bd       	out	0x24, r24	; 36
    1692:	89 ef       	ldi	r24, 0xF9	; 249
    1694:	87 bd       	out	0x27, r24	; 39
    1696:	83 e0       	ldi	r24, 0x03	; 3
    1698:	85 bd       	out	0x25, r24	; 37
    169a:	80 91 6e 00 	lds	r24, 0x006E
    169e:	82 60       	ori	r24, 0x02	; 2
    16a0:	80 93 6e 00 	sts	0x006E, r24
    16a4:	78 94       	sei
    16a6:	08 95       	ret

000016a8 <_ZN6CTimer8add_taskEPFvvEjb>:
    16a8:	80 e0       	ldi	r24, 0x00	; 0
    16aa:	90 e0       	ldi	r25, 0x00	; 0
    16ac:	ef ef       	ldi	r30, 0xFF	; 255
    16ae:	dc 01       	movw	r26, r24
    16b0:	33 e0       	ldi	r19, 0x03	; 3
    16b2:	aa 0f       	add	r26, r26
    16b4:	bb 1f       	adc	r27, r27
    16b6:	3a 95       	dec	r19
    16b8:	e1 f7       	brne	.-8      	; 0x16b2 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
    16ba:	a7 50       	subi	r26, 0x07	; 7
    16bc:	b2 4f       	sbci	r27, 0xF2	; 242
    16be:	0d 90       	ld	r0, X+
    16c0:	bc 91       	ld	r27, X
    16c2:	a0 2d       	mov	r26, r0
    16c4:	ab 2b       	or	r26, r27
    16c6:	09 f4       	brne	.+2      	; 0x16ca <_ZN6CTimer8add_taskEPFvvEjb+0x22>
    16c8:	e8 2f       	mov	r30, r24
    16ca:	01 96       	adiw	r24, 0x01	; 1
    16cc:	88 30       	cpi	r24, 0x08	; 8
    16ce:	91 05       	cpc	r25, r1
    16d0:	71 f7       	brne	.-36     	; 0x16ae <_ZN6CTimer8add_taskEPFvvEjb+0x6>
    16d2:	ef 3f       	cpi	r30, 0xFF	; 255
    16d4:	71 f0       	breq	.+28     	; 0x16f2 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
    16d6:	88 e0       	ldi	r24, 0x08	; 8
    16d8:	e8 02       	muls	r30, r24
    16da:	f0 01       	movw	r30, r0
    16dc:	11 24       	eor	r1, r1
    16de:	e7 50       	subi	r30, 0x07	; 7
    16e0:	f2 4f       	sbci	r31, 0xF2	; 242
    16e2:	71 83       	std	Z+1, r23	; 0x01
    16e4:	60 83       	st	Z, r22
    16e6:	53 83       	std	Z+3, r21	; 0x03
    16e8:	42 83       	std	Z+2, r20	; 0x02
    16ea:	55 83       	std	Z+5, r21	; 0x05
    16ec:	44 83       	std	Z+4, r20	; 0x04
    16ee:	16 82       	std	Z+6, r1	; 0x06
    16f0:	27 83       	std	Z+7, r18	; 0x07
    16f2:	08 95       	ret

000016f4 <_ZN6CTimer8get_timeEv>:
    16f4:	cf 93       	push	r28
    16f6:	df 93       	push	r29
    16f8:	00 d0       	rcall	.+0      	; 0x16fa <_ZN6CTimer8get_timeEv+0x6>
    16fa:	00 d0       	rcall	.+0      	; 0x16fc <_ZN6CTimer8get_timeEv+0x8>
    16fc:	cd b7       	in	r28, 0x3d	; 61
    16fe:	de b7       	in	r29, 0x3e	; 62
    1700:	f8 94       	cli
    1702:	80 91 39 0e 	lds	r24, 0x0E39
    1706:	90 91 3a 0e 	lds	r25, 0x0E3A
    170a:	a0 91 3b 0e 	lds	r26, 0x0E3B
    170e:	b0 91 3c 0e 	lds	r27, 0x0E3C
    1712:	89 83       	std	Y+1, r24	; 0x01
    1714:	9a 83       	std	Y+2, r25	; 0x02
    1716:	ab 83       	std	Y+3, r26	; 0x03
    1718:	bc 83       	std	Y+4, r27	; 0x04
    171a:	78 94       	sei
    171c:	69 81       	ldd	r22, Y+1	; 0x01
    171e:	7a 81       	ldd	r23, Y+2	; 0x02
    1720:	8b 81       	ldd	r24, Y+3	; 0x03
    1722:	9c 81       	ldd	r25, Y+4	; 0x04
    1724:	0f 90       	pop	r0
    1726:	0f 90       	pop	r0
    1728:	0f 90       	pop	r0
    172a:	0f 90       	pop	r0
    172c:	df 91       	pop	r29
    172e:	cf 91       	pop	r28
    1730:	08 95       	ret

00001732 <_ZN6CTimer8delay_msEm>:
    1732:	cf 92       	push	r12
    1734:	df 92       	push	r13
    1736:	ef 92       	push	r14
    1738:	ff 92       	push	r15
    173a:	0f 93       	push	r16
    173c:	1f 93       	push	r17
    173e:	cf 93       	push	r28
    1740:	df 93       	push	r29
    1742:	00 d0       	rcall	.+0      	; 0x1744 <_ZN6CTimer8delay_msEm+0x12>
    1744:	00 d0       	rcall	.+0      	; 0x1746 <_ZN6CTimer8delay_msEm+0x14>
    1746:	cd b7       	in	r28, 0x3d	; 61
    1748:	de b7       	in	r29, 0x3e	; 62
    174a:	8c 01       	movw	r16, r24
    174c:	6a 01       	movw	r12, r20
    174e:	7b 01       	movw	r14, r22
    1750:	0e 94 7a 0b 	call	0x16f4	; 0x16f4 <_ZN6CTimer8get_timeEv>
    1754:	c6 0e       	add	r12, r22
    1756:	d7 1e       	adc	r13, r23
    1758:	e8 1e       	adc	r14, r24
    175a:	f9 1e       	adc	r15, r25
    175c:	c9 82       	std	Y+1, r12	; 0x01
    175e:	da 82       	std	Y+2, r13	; 0x02
    1760:	eb 82       	std	Y+3, r14	; 0x03
    1762:	fc 82       	std	Y+4, r15	; 0x04
    1764:	c8 01       	movw	r24, r16
    1766:	0e 94 7a 0b 	call	0x16f4	; 0x16f4 <_ZN6CTimer8get_timeEv>
    176a:	c9 80       	ldd	r12, Y+1	; 0x01
    176c:	da 80       	ldd	r13, Y+2	; 0x02
    176e:	eb 80       	ldd	r14, Y+3	; 0x03
    1770:	fc 80       	ldd	r15, Y+4	; 0x04
    1772:	6c 15       	cp	r22, r12
    1774:	7d 05       	cpc	r23, r13
    1776:	8e 05       	cpc	r24, r14
    1778:	9f 05       	cpc	r25, r15
    177a:	10 f4       	brcc	.+4      	; 0x1780 <_ZN6CTimer8delay_msEm+0x4e>
    177c:	00 00       	nop
    177e:	f2 cf       	rjmp	.-28     	; 0x1764 <_ZN6CTimer8delay_msEm+0x32>
    1780:	0f 90       	pop	r0
    1782:	0f 90       	pop	r0
    1784:	0f 90       	pop	r0
    1786:	0f 90       	pop	r0
    1788:	df 91       	pop	r29
    178a:	cf 91       	pop	r28
    178c:	1f 91       	pop	r17
    178e:	0f 91       	pop	r16
    1790:	ff 90       	pop	r15
    1792:	ef 90       	pop	r14
    1794:	df 90       	pop	r13
    1796:	cf 90       	pop	r12
    1798:	08 95       	ret

0000179a <__vector_14>:
    179a:	1f 92       	push	r1
    179c:	0f 92       	push	r0
    179e:	0f b6       	in	r0, 0x3f	; 63
    17a0:	0f 92       	push	r0
    17a2:	11 24       	eor	r1, r1
    17a4:	2f 93       	push	r18
    17a6:	3f 93       	push	r19
    17a8:	4f 93       	push	r20
    17aa:	5f 93       	push	r21
    17ac:	6f 93       	push	r22
    17ae:	7f 93       	push	r23
    17b0:	8f 93       	push	r24
    17b2:	9f 93       	push	r25
    17b4:	af 93       	push	r26
    17b6:	bf 93       	push	r27
    17b8:	cf 93       	push	r28
    17ba:	df 93       	push	r29
    17bc:	ef 93       	push	r30
    17be:	ff 93       	push	r31
    17c0:	c0 e0       	ldi	r28, 0x00	; 0
    17c2:	d0 e0       	ldi	r29, 0x00	; 0
    17c4:	ce 01       	movw	r24, r28
    17c6:	23 e0       	ldi	r18, 0x03	; 3
    17c8:	88 0f       	add	r24, r24
    17ca:	99 1f       	adc	r25, r25
    17cc:	2a 95       	dec	r18
    17ce:	e1 f7       	brne	.-8      	; 0x17c8 <__vector_14+0x2e>
    17d0:	fc 01       	movw	r30, r24
    17d2:	e7 50       	subi	r30, 0x07	; 7
    17d4:	f2 4f       	sbci	r31, 0xF2	; 242
    17d6:	24 81       	ldd	r18, Z+4	; 0x04
    17d8:	35 81       	ldd	r19, Z+5	; 0x05
    17da:	23 2b       	or	r18, r19
    17dc:	31 f0       	breq	.+12     	; 0x17ea <__vector_14+0x50>
    17de:	84 81       	ldd	r24, Z+4	; 0x04
    17e0:	95 81       	ldd	r25, Z+5	; 0x05
    17e2:	01 97       	sbiw	r24, 0x01	; 1
    17e4:	95 83       	std	Z+5, r25	; 0x05
    17e6:	84 83       	std	Z+4, r24	; 0x04
    17e8:	18 c0       	rjmp	.+48     	; 0x181a <__vector_14+0x80>
    17ea:	22 81       	ldd	r18, Z+2	; 0x02
    17ec:	33 81       	ldd	r19, Z+3	; 0x03
    17ee:	35 83       	std	Z+5, r19	; 0x05
    17f0:	24 83       	std	Z+4, r18	; 0x04
    17f2:	26 81       	ldd	r18, Z+6	; 0x06
    17f4:	2f 3f       	cpi	r18, 0xFF	; 255
    17f6:	19 f0       	breq	.+6      	; 0x17fe <__vector_14+0x64>
    17f8:	26 81       	ldd	r18, Z+6	; 0x06
    17fa:	2f 5f       	subi	r18, 0xFF	; 255
    17fc:	26 83       	std	Z+6, r18	; 0x06
    17fe:	fc 01       	movw	r30, r24
    1800:	e7 50       	subi	r30, 0x07	; 7
    1802:	f2 4f       	sbci	r31, 0xF2	; 242
    1804:	87 81       	ldd	r24, Z+7	; 0x07
    1806:	81 11       	cpse	r24, r1
    1808:	08 c0       	rjmp	.+16     	; 0x181a <__vector_14+0x80>
    180a:	80 81       	ld	r24, Z
    180c:	91 81       	ldd	r25, Z+1	; 0x01
    180e:	89 2b       	or	r24, r25
    1810:	21 f0       	breq	.+8      	; 0x181a <__vector_14+0x80>
    1812:	01 90       	ld	r0, Z+
    1814:	f0 81       	ld	r31, Z
    1816:	e0 2d       	mov	r30, r0
    1818:	09 95       	icall
    181a:	21 96       	adiw	r28, 0x01	; 1
    181c:	c8 30       	cpi	r28, 0x08	; 8
    181e:	d1 05       	cpc	r29, r1
    1820:	89 f6       	brne	.-94     	; 0x17c4 <__vector_14+0x2a>
    1822:	80 91 39 0e 	lds	r24, 0x0E39
    1826:	90 91 3a 0e 	lds	r25, 0x0E3A
    182a:	a0 91 3b 0e 	lds	r26, 0x0E3B
    182e:	b0 91 3c 0e 	lds	r27, 0x0E3C
    1832:	01 96       	adiw	r24, 0x01	; 1
    1834:	a1 1d       	adc	r26, r1
    1836:	b1 1d       	adc	r27, r1
    1838:	80 93 39 0e 	sts	0x0E39, r24
    183c:	90 93 3a 0e 	sts	0x0E3A, r25
    1840:	a0 93 3b 0e 	sts	0x0E3B, r26
    1844:	b0 93 3c 0e 	sts	0x0E3C, r27
    1848:	ff 91       	pop	r31
    184a:	ef 91       	pop	r30
    184c:	df 91       	pop	r29
    184e:	cf 91       	pop	r28
    1850:	bf 91       	pop	r27
    1852:	af 91       	pop	r26
    1854:	9f 91       	pop	r25
    1856:	8f 91       	pop	r24
    1858:	7f 91       	pop	r23
    185a:	6f 91       	pop	r22
    185c:	5f 91       	pop	r21
    185e:	4f 91       	pop	r20
    1860:	3f 91       	pop	r19
    1862:	2f 91       	pop	r18
    1864:	0f 90       	pop	r0
    1866:	0f be       	out	0x3f, r0	; 63
    1868:	0f 90       	pop	r0
    186a:	1f 90       	pop	r1
    186c:	18 95       	reti

0000186e <_GLOBAL__sub_I_timer>:
    186e:	8d e3       	ldi	r24, 0x3D	; 61
    1870:	9e e0       	ldi	r25, 0x0E	; 14
    1872:	0c 94 28 0b 	jmp	0x1650	; 0x1650 <_ZN6CTimerC1Ev>

00001876 <_GLOBAL__sub_I_i2c>:
    1876:	3c 98       	cbi	0x07, 4	; 7
    1878:	3d 98       	cbi	0x07, 5	; 7
    187a:	44 98       	cbi	0x08, 4	; 8
    187c:	45 98       	cbi	0x08, 5	; 8
    187e:	08 95       	ret

00001880 <__mulsi3>:
    1880:	db 01       	movw	r26, r22
    1882:	8f 93       	push	r24
    1884:	9f 93       	push	r25
    1886:	0e 94 92 0c 	call	0x1924	; 0x1924 <__muluhisi3>
    188a:	bf 91       	pop	r27
    188c:	af 91       	pop	r26
    188e:	a2 9f       	mul	r26, r18
    1890:	80 0d       	add	r24, r0
    1892:	91 1d       	adc	r25, r1
    1894:	a3 9f       	mul	r26, r19
    1896:	90 0d       	add	r25, r0
    1898:	b2 9f       	mul	r27, r18
    189a:	90 0d       	add	r25, r0
    189c:	11 24       	eor	r1, r1
    189e:	08 95       	ret

000018a0 <__udivmodhi4>:
    18a0:	aa 1b       	sub	r26, r26
    18a2:	bb 1b       	sub	r27, r27
    18a4:	51 e1       	ldi	r21, 0x11	; 17
    18a6:	07 c0       	rjmp	.+14     	; 0x18b6 <__udivmodhi4_ep>

000018a8 <__udivmodhi4_loop>:
    18a8:	aa 1f       	adc	r26, r26
    18aa:	bb 1f       	adc	r27, r27
    18ac:	a6 17       	cp	r26, r22
    18ae:	b7 07       	cpc	r27, r23
    18b0:	10 f0       	brcs	.+4      	; 0x18b6 <__udivmodhi4_ep>
    18b2:	a6 1b       	sub	r26, r22
    18b4:	b7 0b       	sbc	r27, r23

000018b6 <__udivmodhi4_ep>:
    18b6:	88 1f       	adc	r24, r24
    18b8:	99 1f       	adc	r25, r25
    18ba:	5a 95       	dec	r21
    18bc:	a9 f7       	brne	.-22     	; 0x18a8 <__udivmodhi4_loop>
    18be:	80 95       	com	r24
    18c0:	90 95       	com	r25
    18c2:	bc 01       	movw	r22, r24
    18c4:	cd 01       	movw	r24, r26
    18c6:	08 95       	ret

000018c8 <__divmodsi4>:
    18c8:	05 2e       	mov	r0, r21
    18ca:	97 fb       	bst	r25, 7
    18cc:	1e f4       	brtc	.+6      	; 0x18d4 <__divmodsi4+0xc>
    18ce:	00 94       	com	r0
    18d0:	0e 94 7b 0c 	call	0x18f6	; 0x18f6 <__negsi2>
    18d4:	57 fd       	sbrc	r21, 7
    18d6:	07 d0       	rcall	.+14     	; 0x18e6 <__divmodsi4_neg2>
    18d8:	0e 94 a5 0c 	call	0x194a	; 0x194a <__udivmodsi4>
    18dc:	07 fc       	sbrc	r0, 7
    18de:	03 d0       	rcall	.+6      	; 0x18e6 <__divmodsi4_neg2>
    18e0:	4e f4       	brtc	.+18     	; 0x18f4 <__divmodsi4_exit>
    18e2:	0c 94 7b 0c 	jmp	0x18f6	; 0x18f6 <__negsi2>

000018e6 <__divmodsi4_neg2>:
    18e6:	50 95       	com	r21
    18e8:	40 95       	com	r20
    18ea:	30 95       	com	r19
    18ec:	21 95       	neg	r18
    18ee:	3f 4f       	sbci	r19, 0xFF	; 255
    18f0:	4f 4f       	sbci	r20, 0xFF	; 255
    18f2:	5f 4f       	sbci	r21, 0xFF	; 255

000018f4 <__divmodsi4_exit>:
    18f4:	08 95       	ret

000018f6 <__negsi2>:
    18f6:	90 95       	com	r25
    18f8:	80 95       	com	r24
    18fa:	70 95       	com	r23
    18fc:	61 95       	neg	r22
    18fe:	7f 4f       	sbci	r23, 0xFF	; 255
    1900:	8f 4f       	sbci	r24, 0xFF	; 255
    1902:	9f 4f       	sbci	r25, 0xFF	; 255
    1904:	08 95       	ret

00001906 <__umulhisi3>:
    1906:	a2 9f       	mul	r26, r18
    1908:	b0 01       	movw	r22, r0
    190a:	b3 9f       	mul	r27, r19
    190c:	c0 01       	movw	r24, r0
    190e:	a3 9f       	mul	r26, r19
    1910:	70 0d       	add	r23, r0
    1912:	81 1d       	adc	r24, r1
    1914:	11 24       	eor	r1, r1
    1916:	91 1d       	adc	r25, r1
    1918:	b2 9f       	mul	r27, r18
    191a:	70 0d       	add	r23, r0
    191c:	81 1d       	adc	r24, r1
    191e:	11 24       	eor	r1, r1
    1920:	91 1d       	adc	r25, r1
    1922:	08 95       	ret

00001924 <__muluhisi3>:
    1924:	0e 94 83 0c 	call	0x1906	; 0x1906 <__umulhisi3>
    1928:	a5 9f       	mul	r26, r21
    192a:	90 0d       	add	r25, r0
    192c:	b4 9f       	mul	r27, r20
    192e:	90 0d       	add	r25, r0
    1930:	a4 9f       	mul	r26, r20
    1932:	80 0d       	add	r24, r0
    1934:	91 1d       	adc	r25, r1
    1936:	11 24       	eor	r1, r1
    1938:	08 95       	ret

0000193a <__mulshisi3>:
    193a:	b7 ff       	sbrs	r27, 7
    193c:	0c 94 92 0c 	jmp	0x1924	; 0x1924 <__muluhisi3>

00001940 <__mulohisi3>:
    1940:	0e 94 92 0c 	call	0x1924	; 0x1924 <__muluhisi3>
    1944:	82 1b       	sub	r24, r18
    1946:	93 0b       	sbc	r25, r19
    1948:	08 95       	ret

0000194a <__udivmodsi4>:
    194a:	a1 e2       	ldi	r26, 0x21	; 33
    194c:	1a 2e       	mov	r1, r26
    194e:	aa 1b       	sub	r26, r26
    1950:	bb 1b       	sub	r27, r27
    1952:	fd 01       	movw	r30, r26
    1954:	0d c0       	rjmp	.+26     	; 0x1970 <__udivmodsi4_ep>

00001956 <__udivmodsi4_loop>:
    1956:	aa 1f       	adc	r26, r26
    1958:	bb 1f       	adc	r27, r27
    195a:	ee 1f       	adc	r30, r30
    195c:	ff 1f       	adc	r31, r31
    195e:	a2 17       	cp	r26, r18
    1960:	b3 07       	cpc	r27, r19
    1962:	e4 07       	cpc	r30, r20
    1964:	f5 07       	cpc	r31, r21
    1966:	20 f0       	brcs	.+8      	; 0x1970 <__udivmodsi4_ep>
    1968:	a2 1b       	sub	r26, r18
    196a:	b3 0b       	sbc	r27, r19
    196c:	e4 0b       	sbc	r30, r20
    196e:	f5 0b       	sbc	r31, r21

00001970 <__udivmodsi4_ep>:
    1970:	66 1f       	adc	r22, r22
    1972:	77 1f       	adc	r23, r23
    1974:	88 1f       	adc	r24, r24
    1976:	99 1f       	adc	r25, r25
    1978:	1a 94       	dec	r1
    197a:	69 f7       	brne	.-38     	; 0x1956 <__udivmodsi4_loop>
    197c:	60 95       	com	r22
    197e:	70 95       	com	r23
    1980:	80 95       	com	r24
    1982:	90 95       	com	r25
    1984:	9b 01       	movw	r18, r22
    1986:	ac 01       	movw	r20, r24
    1988:	bd 01       	movw	r22, r26
    198a:	cf 01       	movw	r24, r30
    198c:	08 95       	ret

0000198e <__tablejump2__>:
    198e:	ee 0f       	add	r30, r30
    1990:	ff 1f       	adc	r31, r31
    1992:	05 90       	lpm	r0, Z+
    1994:	f4 91       	lpm	r31, Z
    1996:	e0 2d       	mov	r30, r0
    1998:	09 94       	ijmp

0000199a <__subsf3>:
    199a:	50 58       	subi	r21, 0x80	; 128

0000199c <__addsf3>:
    199c:	bb 27       	eor	r27, r27
    199e:	aa 27       	eor	r26, r26
    19a0:	0e 94 e5 0c 	call	0x19ca	; 0x19ca <__addsf3x>
    19a4:	0c 94 ed 0d 	jmp	0x1bda	; 0x1bda <__fp_round>
    19a8:	0e 94 df 0d 	call	0x1bbe	; 0x1bbe <__fp_pscA>
    19ac:	38 f0       	brcs	.+14     	; 0x19bc <__addsf3+0x20>
    19ae:	0e 94 e6 0d 	call	0x1bcc	; 0x1bcc <__fp_pscB>
    19b2:	20 f0       	brcs	.+8      	; 0x19bc <__addsf3+0x20>
    19b4:	39 f4       	brne	.+14     	; 0x19c4 <__addsf3+0x28>
    19b6:	9f 3f       	cpi	r25, 0xFF	; 255
    19b8:	19 f4       	brne	.+6      	; 0x19c0 <__addsf3+0x24>
    19ba:	26 f4       	brtc	.+8      	; 0x19c4 <__addsf3+0x28>
    19bc:	0c 94 dc 0d 	jmp	0x1bb8	; 0x1bb8 <__fp_nan>
    19c0:	0e f4       	brtc	.+2      	; 0x19c4 <__addsf3+0x28>
    19c2:	e0 95       	com	r30
    19c4:	e7 fb       	bst	r30, 7
    19c6:	0c 94 d6 0d 	jmp	0x1bac	; 0x1bac <__fp_inf>

000019ca <__addsf3x>:
    19ca:	e9 2f       	mov	r30, r25
    19cc:	0e 94 fe 0d 	call	0x1bfc	; 0x1bfc <__fp_split3>
    19d0:	58 f3       	brcs	.-42     	; 0x19a8 <__addsf3+0xc>
    19d2:	ba 17       	cp	r27, r26
    19d4:	62 07       	cpc	r22, r18
    19d6:	73 07       	cpc	r23, r19
    19d8:	84 07       	cpc	r24, r20
    19da:	95 07       	cpc	r25, r21
    19dc:	20 f0       	brcs	.+8      	; 0x19e6 <__addsf3x+0x1c>
    19de:	79 f4       	brne	.+30     	; 0x19fe <__addsf3x+0x34>
    19e0:	a6 f5       	brtc	.+104    	; 0x1a4a <__addsf3x+0x80>
    19e2:	0c 94 20 0e 	jmp	0x1c40	; 0x1c40 <__fp_zero>
    19e6:	0e f4       	brtc	.+2      	; 0x19ea <__addsf3x+0x20>
    19e8:	e0 95       	com	r30
    19ea:	0b 2e       	mov	r0, r27
    19ec:	ba 2f       	mov	r27, r26
    19ee:	a0 2d       	mov	r26, r0
    19f0:	0b 01       	movw	r0, r22
    19f2:	b9 01       	movw	r22, r18
    19f4:	90 01       	movw	r18, r0
    19f6:	0c 01       	movw	r0, r24
    19f8:	ca 01       	movw	r24, r20
    19fa:	a0 01       	movw	r20, r0
    19fc:	11 24       	eor	r1, r1
    19fe:	ff 27       	eor	r31, r31
    1a00:	59 1b       	sub	r21, r25
    1a02:	99 f0       	breq	.+38     	; 0x1a2a <__addsf3x+0x60>
    1a04:	59 3f       	cpi	r21, 0xF9	; 249
    1a06:	50 f4       	brcc	.+20     	; 0x1a1c <__addsf3x+0x52>
    1a08:	50 3e       	cpi	r21, 0xE0	; 224
    1a0a:	68 f1       	brcs	.+90     	; 0x1a66 <__addsf3x+0x9c>
    1a0c:	1a 16       	cp	r1, r26
    1a0e:	f0 40       	sbci	r31, 0x00	; 0
    1a10:	a2 2f       	mov	r26, r18
    1a12:	23 2f       	mov	r18, r19
    1a14:	34 2f       	mov	r19, r20
    1a16:	44 27       	eor	r20, r20
    1a18:	58 5f       	subi	r21, 0xF8	; 248
    1a1a:	f3 cf       	rjmp	.-26     	; 0x1a02 <__addsf3x+0x38>
    1a1c:	46 95       	lsr	r20
    1a1e:	37 95       	ror	r19
    1a20:	27 95       	ror	r18
    1a22:	a7 95       	ror	r26
    1a24:	f0 40       	sbci	r31, 0x00	; 0
    1a26:	53 95       	inc	r21
    1a28:	c9 f7       	brne	.-14     	; 0x1a1c <__addsf3x+0x52>
    1a2a:	7e f4       	brtc	.+30     	; 0x1a4a <__addsf3x+0x80>
    1a2c:	1f 16       	cp	r1, r31
    1a2e:	ba 0b       	sbc	r27, r26
    1a30:	62 0b       	sbc	r22, r18
    1a32:	73 0b       	sbc	r23, r19
    1a34:	84 0b       	sbc	r24, r20
    1a36:	ba f0       	brmi	.+46     	; 0x1a66 <__addsf3x+0x9c>
    1a38:	91 50       	subi	r25, 0x01	; 1
    1a3a:	a1 f0       	breq	.+40     	; 0x1a64 <__addsf3x+0x9a>
    1a3c:	ff 0f       	add	r31, r31
    1a3e:	bb 1f       	adc	r27, r27
    1a40:	66 1f       	adc	r22, r22
    1a42:	77 1f       	adc	r23, r23
    1a44:	88 1f       	adc	r24, r24
    1a46:	c2 f7       	brpl	.-16     	; 0x1a38 <__addsf3x+0x6e>
    1a48:	0e c0       	rjmp	.+28     	; 0x1a66 <__addsf3x+0x9c>
    1a4a:	ba 0f       	add	r27, r26
    1a4c:	62 1f       	adc	r22, r18
    1a4e:	73 1f       	adc	r23, r19
    1a50:	84 1f       	adc	r24, r20
    1a52:	48 f4       	brcc	.+18     	; 0x1a66 <__addsf3x+0x9c>
    1a54:	87 95       	ror	r24
    1a56:	77 95       	ror	r23
    1a58:	67 95       	ror	r22
    1a5a:	b7 95       	ror	r27
    1a5c:	f7 95       	ror	r31
    1a5e:	9e 3f       	cpi	r25, 0xFE	; 254
    1a60:	08 f0       	brcs	.+2      	; 0x1a64 <__addsf3x+0x9a>
    1a62:	b0 cf       	rjmp	.-160    	; 0x19c4 <__addsf3+0x28>
    1a64:	93 95       	inc	r25
    1a66:	88 0f       	add	r24, r24
    1a68:	08 f0       	brcs	.+2      	; 0x1a6c <__addsf3x+0xa2>
    1a6a:	99 27       	eor	r25, r25
    1a6c:	ee 0f       	add	r30, r30
    1a6e:	97 95       	ror	r25
    1a70:	87 95       	ror	r24
    1a72:	08 95       	ret

00001a74 <__cmpsf2>:
    1a74:	0e 94 b2 0d 	call	0x1b64	; 0x1b64 <__fp_cmp>
    1a78:	08 f4       	brcc	.+2      	; 0x1a7c <__cmpsf2+0x8>
    1a7a:	81 e0       	ldi	r24, 0x01	; 1
    1a7c:	08 95       	ret

00001a7e <__fixsfsi>:
    1a7e:	0e 94 46 0d 	call	0x1a8c	; 0x1a8c <__fixunssfsi>
    1a82:	68 94       	set
    1a84:	b1 11       	cpse	r27, r1
    1a86:	0c 94 21 0e 	jmp	0x1c42	; 0x1c42 <__fp_szero>
    1a8a:	08 95       	ret

00001a8c <__fixunssfsi>:
    1a8c:	0e 94 06 0e 	call	0x1c0c	; 0x1c0c <__fp_splitA>
    1a90:	88 f0       	brcs	.+34     	; 0x1ab4 <__fixunssfsi+0x28>
    1a92:	9f 57       	subi	r25, 0x7F	; 127
    1a94:	98 f0       	brcs	.+38     	; 0x1abc <__fixunssfsi+0x30>
    1a96:	b9 2f       	mov	r27, r25
    1a98:	99 27       	eor	r25, r25
    1a9a:	b7 51       	subi	r27, 0x17	; 23
    1a9c:	b0 f0       	brcs	.+44     	; 0x1aca <__fixunssfsi+0x3e>
    1a9e:	e1 f0       	breq	.+56     	; 0x1ad8 <__fixunssfsi+0x4c>
    1aa0:	66 0f       	add	r22, r22
    1aa2:	77 1f       	adc	r23, r23
    1aa4:	88 1f       	adc	r24, r24
    1aa6:	99 1f       	adc	r25, r25
    1aa8:	1a f0       	brmi	.+6      	; 0x1ab0 <__fixunssfsi+0x24>
    1aaa:	ba 95       	dec	r27
    1aac:	c9 f7       	brne	.-14     	; 0x1aa0 <__fixunssfsi+0x14>
    1aae:	14 c0       	rjmp	.+40     	; 0x1ad8 <__fixunssfsi+0x4c>
    1ab0:	b1 30       	cpi	r27, 0x01	; 1
    1ab2:	91 f0       	breq	.+36     	; 0x1ad8 <__fixunssfsi+0x4c>
    1ab4:	0e 94 20 0e 	call	0x1c40	; 0x1c40 <__fp_zero>
    1ab8:	b1 e0       	ldi	r27, 0x01	; 1
    1aba:	08 95       	ret
    1abc:	0c 94 20 0e 	jmp	0x1c40	; 0x1c40 <__fp_zero>
    1ac0:	67 2f       	mov	r22, r23
    1ac2:	78 2f       	mov	r23, r24
    1ac4:	88 27       	eor	r24, r24
    1ac6:	b8 5f       	subi	r27, 0xF8	; 248
    1ac8:	39 f0       	breq	.+14     	; 0x1ad8 <__fixunssfsi+0x4c>
    1aca:	b9 3f       	cpi	r27, 0xF9	; 249
    1acc:	cc f3       	brlt	.-14     	; 0x1ac0 <__fixunssfsi+0x34>
    1ace:	86 95       	lsr	r24
    1ad0:	77 95       	ror	r23
    1ad2:	67 95       	ror	r22
    1ad4:	b3 95       	inc	r27
    1ad6:	d9 f7       	brne	.-10     	; 0x1ace <__fixunssfsi+0x42>
    1ad8:	3e f4       	brtc	.+14     	; 0x1ae8 <__fixunssfsi+0x5c>
    1ada:	90 95       	com	r25
    1adc:	80 95       	com	r24
    1ade:	70 95       	com	r23
    1ae0:	61 95       	neg	r22
    1ae2:	7f 4f       	sbci	r23, 0xFF	; 255
    1ae4:	8f 4f       	sbci	r24, 0xFF	; 255
    1ae6:	9f 4f       	sbci	r25, 0xFF	; 255
    1ae8:	08 95       	ret

00001aea <__floatunsisf>:
    1aea:	e8 94       	clt
    1aec:	09 c0       	rjmp	.+18     	; 0x1b00 <__floatsisf+0x12>

00001aee <__floatsisf>:
    1aee:	97 fb       	bst	r25, 7
    1af0:	3e f4       	brtc	.+14     	; 0x1b00 <__floatsisf+0x12>
    1af2:	90 95       	com	r25
    1af4:	80 95       	com	r24
    1af6:	70 95       	com	r23
    1af8:	61 95       	neg	r22
    1afa:	7f 4f       	sbci	r23, 0xFF	; 255
    1afc:	8f 4f       	sbci	r24, 0xFF	; 255
    1afe:	9f 4f       	sbci	r25, 0xFF	; 255
    1b00:	99 23       	and	r25, r25
    1b02:	a9 f0       	breq	.+42     	; 0x1b2e <__floatsisf+0x40>
    1b04:	f9 2f       	mov	r31, r25
    1b06:	96 e9       	ldi	r25, 0x96	; 150
    1b08:	bb 27       	eor	r27, r27
    1b0a:	93 95       	inc	r25
    1b0c:	f6 95       	lsr	r31
    1b0e:	87 95       	ror	r24
    1b10:	77 95       	ror	r23
    1b12:	67 95       	ror	r22
    1b14:	b7 95       	ror	r27
    1b16:	f1 11       	cpse	r31, r1
    1b18:	f8 cf       	rjmp	.-16     	; 0x1b0a <__floatsisf+0x1c>
    1b1a:	fa f4       	brpl	.+62     	; 0x1b5a <__floatsisf+0x6c>
    1b1c:	bb 0f       	add	r27, r27
    1b1e:	11 f4       	brne	.+4      	; 0x1b24 <__floatsisf+0x36>
    1b20:	60 ff       	sbrs	r22, 0
    1b22:	1b c0       	rjmp	.+54     	; 0x1b5a <__floatsisf+0x6c>
    1b24:	6f 5f       	subi	r22, 0xFF	; 255
    1b26:	7f 4f       	sbci	r23, 0xFF	; 255
    1b28:	8f 4f       	sbci	r24, 0xFF	; 255
    1b2a:	9f 4f       	sbci	r25, 0xFF	; 255
    1b2c:	16 c0       	rjmp	.+44     	; 0x1b5a <__floatsisf+0x6c>
    1b2e:	88 23       	and	r24, r24
    1b30:	11 f0       	breq	.+4      	; 0x1b36 <__floatsisf+0x48>
    1b32:	96 e9       	ldi	r25, 0x96	; 150
    1b34:	11 c0       	rjmp	.+34     	; 0x1b58 <__floatsisf+0x6a>
    1b36:	77 23       	and	r23, r23
    1b38:	21 f0       	breq	.+8      	; 0x1b42 <__floatsisf+0x54>
    1b3a:	9e e8       	ldi	r25, 0x8E	; 142
    1b3c:	87 2f       	mov	r24, r23
    1b3e:	76 2f       	mov	r23, r22
    1b40:	05 c0       	rjmp	.+10     	; 0x1b4c <__floatsisf+0x5e>
    1b42:	66 23       	and	r22, r22
    1b44:	71 f0       	breq	.+28     	; 0x1b62 <__floatsisf+0x74>
    1b46:	96 e8       	ldi	r25, 0x86	; 134
    1b48:	86 2f       	mov	r24, r22
    1b4a:	70 e0       	ldi	r23, 0x00	; 0
    1b4c:	60 e0       	ldi	r22, 0x00	; 0
    1b4e:	2a f0       	brmi	.+10     	; 0x1b5a <__floatsisf+0x6c>
    1b50:	9a 95       	dec	r25
    1b52:	66 0f       	add	r22, r22
    1b54:	77 1f       	adc	r23, r23
    1b56:	88 1f       	adc	r24, r24
    1b58:	da f7       	brpl	.-10     	; 0x1b50 <__floatsisf+0x62>
    1b5a:	88 0f       	add	r24, r24
    1b5c:	96 95       	lsr	r25
    1b5e:	87 95       	ror	r24
    1b60:	97 f9       	bld	r25, 7
    1b62:	08 95       	ret

00001b64 <__fp_cmp>:
    1b64:	99 0f       	add	r25, r25
    1b66:	00 08       	sbc	r0, r0
    1b68:	55 0f       	add	r21, r21
    1b6a:	aa 0b       	sbc	r26, r26
    1b6c:	e0 e8       	ldi	r30, 0x80	; 128
    1b6e:	fe ef       	ldi	r31, 0xFE	; 254
    1b70:	16 16       	cp	r1, r22
    1b72:	17 06       	cpc	r1, r23
    1b74:	e8 07       	cpc	r30, r24
    1b76:	f9 07       	cpc	r31, r25
    1b78:	c0 f0       	brcs	.+48     	; 0x1baa <__fp_cmp+0x46>
    1b7a:	12 16       	cp	r1, r18
    1b7c:	13 06       	cpc	r1, r19
    1b7e:	e4 07       	cpc	r30, r20
    1b80:	f5 07       	cpc	r31, r21
    1b82:	98 f0       	brcs	.+38     	; 0x1baa <__fp_cmp+0x46>
    1b84:	62 1b       	sub	r22, r18
    1b86:	73 0b       	sbc	r23, r19
    1b88:	84 0b       	sbc	r24, r20
    1b8a:	95 0b       	sbc	r25, r21
    1b8c:	39 f4       	brne	.+14     	; 0x1b9c <__fp_cmp+0x38>
    1b8e:	0a 26       	eor	r0, r26
    1b90:	61 f0       	breq	.+24     	; 0x1baa <__fp_cmp+0x46>
    1b92:	23 2b       	or	r18, r19
    1b94:	24 2b       	or	r18, r20
    1b96:	25 2b       	or	r18, r21
    1b98:	21 f4       	brne	.+8      	; 0x1ba2 <__fp_cmp+0x3e>
    1b9a:	08 95       	ret
    1b9c:	0a 26       	eor	r0, r26
    1b9e:	09 f4       	brne	.+2      	; 0x1ba2 <__fp_cmp+0x3e>
    1ba0:	a1 40       	sbci	r26, 0x01	; 1
    1ba2:	a6 95       	lsr	r26
    1ba4:	8f ef       	ldi	r24, 0xFF	; 255
    1ba6:	81 1d       	adc	r24, r1
    1ba8:	81 1d       	adc	r24, r1
    1baa:	08 95       	ret

00001bac <__fp_inf>:
    1bac:	97 f9       	bld	r25, 7
    1bae:	9f 67       	ori	r25, 0x7F	; 127
    1bb0:	80 e8       	ldi	r24, 0x80	; 128
    1bb2:	70 e0       	ldi	r23, 0x00	; 0
    1bb4:	60 e0       	ldi	r22, 0x00	; 0
    1bb6:	08 95       	ret

00001bb8 <__fp_nan>:
    1bb8:	9f ef       	ldi	r25, 0xFF	; 255
    1bba:	80 ec       	ldi	r24, 0xC0	; 192
    1bbc:	08 95       	ret

00001bbe <__fp_pscA>:
    1bbe:	00 24       	eor	r0, r0
    1bc0:	0a 94       	dec	r0
    1bc2:	16 16       	cp	r1, r22
    1bc4:	17 06       	cpc	r1, r23
    1bc6:	18 06       	cpc	r1, r24
    1bc8:	09 06       	cpc	r0, r25
    1bca:	08 95       	ret

00001bcc <__fp_pscB>:
    1bcc:	00 24       	eor	r0, r0
    1bce:	0a 94       	dec	r0
    1bd0:	12 16       	cp	r1, r18
    1bd2:	13 06       	cpc	r1, r19
    1bd4:	14 06       	cpc	r1, r20
    1bd6:	05 06       	cpc	r0, r21
    1bd8:	08 95       	ret

00001bda <__fp_round>:
    1bda:	09 2e       	mov	r0, r25
    1bdc:	03 94       	inc	r0
    1bde:	00 0c       	add	r0, r0
    1be0:	11 f4       	brne	.+4      	; 0x1be6 <__fp_round+0xc>
    1be2:	88 23       	and	r24, r24
    1be4:	52 f0       	brmi	.+20     	; 0x1bfa <__fp_round+0x20>
    1be6:	bb 0f       	add	r27, r27
    1be8:	40 f4       	brcc	.+16     	; 0x1bfa <__fp_round+0x20>
    1bea:	bf 2b       	or	r27, r31
    1bec:	11 f4       	brne	.+4      	; 0x1bf2 <__fp_round+0x18>
    1bee:	60 ff       	sbrs	r22, 0
    1bf0:	04 c0       	rjmp	.+8      	; 0x1bfa <__fp_round+0x20>
    1bf2:	6f 5f       	subi	r22, 0xFF	; 255
    1bf4:	7f 4f       	sbci	r23, 0xFF	; 255
    1bf6:	8f 4f       	sbci	r24, 0xFF	; 255
    1bf8:	9f 4f       	sbci	r25, 0xFF	; 255
    1bfa:	08 95       	ret

00001bfc <__fp_split3>:
    1bfc:	57 fd       	sbrc	r21, 7
    1bfe:	90 58       	subi	r25, 0x80	; 128
    1c00:	44 0f       	add	r20, r20
    1c02:	55 1f       	adc	r21, r21
    1c04:	59 f0       	breq	.+22     	; 0x1c1c <__fp_splitA+0x10>
    1c06:	5f 3f       	cpi	r21, 0xFF	; 255
    1c08:	71 f0       	breq	.+28     	; 0x1c26 <__fp_splitA+0x1a>
    1c0a:	47 95       	ror	r20

00001c0c <__fp_splitA>:
    1c0c:	88 0f       	add	r24, r24
    1c0e:	97 fb       	bst	r25, 7
    1c10:	99 1f       	adc	r25, r25
    1c12:	61 f0       	breq	.+24     	; 0x1c2c <__fp_splitA+0x20>
    1c14:	9f 3f       	cpi	r25, 0xFF	; 255
    1c16:	79 f0       	breq	.+30     	; 0x1c36 <__fp_splitA+0x2a>
    1c18:	87 95       	ror	r24
    1c1a:	08 95       	ret
    1c1c:	12 16       	cp	r1, r18
    1c1e:	13 06       	cpc	r1, r19
    1c20:	14 06       	cpc	r1, r20
    1c22:	55 1f       	adc	r21, r21
    1c24:	f2 cf       	rjmp	.-28     	; 0x1c0a <__fp_split3+0xe>
    1c26:	46 95       	lsr	r20
    1c28:	f1 df       	rcall	.-30     	; 0x1c0c <__fp_splitA>
    1c2a:	08 c0       	rjmp	.+16     	; 0x1c3c <__fp_splitA+0x30>
    1c2c:	16 16       	cp	r1, r22
    1c2e:	17 06       	cpc	r1, r23
    1c30:	18 06       	cpc	r1, r24
    1c32:	99 1f       	adc	r25, r25
    1c34:	f1 cf       	rjmp	.-30     	; 0x1c18 <__fp_splitA+0xc>
    1c36:	86 95       	lsr	r24
    1c38:	71 05       	cpc	r23, r1
    1c3a:	61 05       	cpc	r22, r1
    1c3c:	08 94       	sec
    1c3e:	08 95       	ret

00001c40 <__fp_zero>:
    1c40:	e8 94       	clt

00001c42 <__fp_szero>:
    1c42:	bb 27       	eor	r27, r27
    1c44:	66 27       	eor	r22, r22
    1c46:	77 27       	eor	r23, r23
    1c48:	cb 01       	movw	r24, r22
    1c4a:	97 f9       	bld	r25, 7
    1c4c:	08 95       	ret

00001c4e <__gesf2>:
    1c4e:	0e 94 b2 0d 	call	0x1b64	; 0x1b64 <__fp_cmp>
    1c52:	08 f4       	brcc	.+2      	; 0x1c56 <__gesf2+0x8>
    1c54:	8f ef       	ldi	r24, 0xFF	; 255
    1c56:	08 95       	ret

00001c58 <__mulsf3>:
    1c58:	0e 94 3f 0e 	call	0x1c7e	; 0x1c7e <__mulsf3x>
    1c5c:	0c 94 ed 0d 	jmp	0x1bda	; 0x1bda <__fp_round>
    1c60:	0e 94 df 0d 	call	0x1bbe	; 0x1bbe <__fp_pscA>
    1c64:	38 f0       	brcs	.+14     	; 0x1c74 <__mulsf3+0x1c>
    1c66:	0e 94 e6 0d 	call	0x1bcc	; 0x1bcc <__fp_pscB>
    1c6a:	20 f0       	brcs	.+8      	; 0x1c74 <__mulsf3+0x1c>
    1c6c:	95 23       	and	r25, r21
    1c6e:	11 f0       	breq	.+4      	; 0x1c74 <__mulsf3+0x1c>
    1c70:	0c 94 d6 0d 	jmp	0x1bac	; 0x1bac <__fp_inf>
    1c74:	0c 94 dc 0d 	jmp	0x1bb8	; 0x1bb8 <__fp_nan>
    1c78:	11 24       	eor	r1, r1
    1c7a:	0c 94 21 0e 	jmp	0x1c42	; 0x1c42 <__fp_szero>

00001c7e <__mulsf3x>:
    1c7e:	0e 94 fe 0d 	call	0x1bfc	; 0x1bfc <__fp_split3>
    1c82:	70 f3       	brcs	.-36     	; 0x1c60 <__mulsf3+0x8>

00001c84 <__mulsf3_pse>:
    1c84:	95 9f       	mul	r25, r21
    1c86:	c1 f3       	breq	.-16     	; 0x1c78 <__mulsf3+0x20>
    1c88:	95 0f       	add	r25, r21
    1c8a:	50 e0       	ldi	r21, 0x00	; 0
    1c8c:	55 1f       	adc	r21, r21
    1c8e:	62 9f       	mul	r22, r18
    1c90:	f0 01       	movw	r30, r0
    1c92:	72 9f       	mul	r23, r18
    1c94:	bb 27       	eor	r27, r27
    1c96:	f0 0d       	add	r31, r0
    1c98:	b1 1d       	adc	r27, r1
    1c9a:	63 9f       	mul	r22, r19
    1c9c:	aa 27       	eor	r26, r26
    1c9e:	f0 0d       	add	r31, r0
    1ca0:	b1 1d       	adc	r27, r1
    1ca2:	aa 1f       	adc	r26, r26
    1ca4:	64 9f       	mul	r22, r20
    1ca6:	66 27       	eor	r22, r22
    1ca8:	b0 0d       	add	r27, r0
    1caa:	a1 1d       	adc	r26, r1
    1cac:	66 1f       	adc	r22, r22
    1cae:	82 9f       	mul	r24, r18
    1cb0:	22 27       	eor	r18, r18
    1cb2:	b0 0d       	add	r27, r0
    1cb4:	a1 1d       	adc	r26, r1
    1cb6:	62 1f       	adc	r22, r18
    1cb8:	73 9f       	mul	r23, r19
    1cba:	b0 0d       	add	r27, r0
    1cbc:	a1 1d       	adc	r26, r1
    1cbe:	62 1f       	adc	r22, r18
    1cc0:	83 9f       	mul	r24, r19
    1cc2:	a0 0d       	add	r26, r0
    1cc4:	61 1d       	adc	r22, r1
    1cc6:	22 1f       	adc	r18, r18
    1cc8:	74 9f       	mul	r23, r20
    1cca:	33 27       	eor	r19, r19
    1ccc:	a0 0d       	add	r26, r0
    1cce:	61 1d       	adc	r22, r1
    1cd0:	23 1f       	adc	r18, r19
    1cd2:	84 9f       	mul	r24, r20
    1cd4:	60 0d       	add	r22, r0
    1cd6:	21 1d       	adc	r18, r1
    1cd8:	82 2f       	mov	r24, r18
    1cda:	76 2f       	mov	r23, r22
    1cdc:	6a 2f       	mov	r22, r26
    1cde:	11 24       	eor	r1, r1
    1ce0:	9f 57       	subi	r25, 0x7F	; 127
    1ce2:	50 40       	sbci	r21, 0x00	; 0
    1ce4:	9a f0       	brmi	.+38     	; 0x1d0c <__mulsf3_pse+0x88>
    1ce6:	f1 f0       	breq	.+60     	; 0x1d24 <__mulsf3_pse+0xa0>
    1ce8:	88 23       	and	r24, r24
    1cea:	4a f0       	brmi	.+18     	; 0x1cfe <__mulsf3_pse+0x7a>
    1cec:	ee 0f       	add	r30, r30
    1cee:	ff 1f       	adc	r31, r31
    1cf0:	bb 1f       	adc	r27, r27
    1cf2:	66 1f       	adc	r22, r22
    1cf4:	77 1f       	adc	r23, r23
    1cf6:	88 1f       	adc	r24, r24
    1cf8:	91 50       	subi	r25, 0x01	; 1
    1cfa:	50 40       	sbci	r21, 0x00	; 0
    1cfc:	a9 f7       	brne	.-22     	; 0x1ce8 <__mulsf3_pse+0x64>
    1cfe:	9e 3f       	cpi	r25, 0xFE	; 254
    1d00:	51 05       	cpc	r21, r1
    1d02:	80 f0       	brcs	.+32     	; 0x1d24 <__mulsf3_pse+0xa0>
    1d04:	0c 94 d6 0d 	jmp	0x1bac	; 0x1bac <__fp_inf>
    1d08:	0c 94 21 0e 	jmp	0x1c42	; 0x1c42 <__fp_szero>
    1d0c:	5f 3f       	cpi	r21, 0xFF	; 255
    1d0e:	e4 f3       	brlt	.-8      	; 0x1d08 <__mulsf3_pse+0x84>
    1d10:	98 3e       	cpi	r25, 0xE8	; 232
    1d12:	d4 f3       	brlt	.-12     	; 0x1d08 <__mulsf3_pse+0x84>
    1d14:	86 95       	lsr	r24
    1d16:	77 95       	ror	r23
    1d18:	67 95       	ror	r22
    1d1a:	b7 95       	ror	r27
    1d1c:	f7 95       	ror	r31
    1d1e:	e7 95       	ror	r30
    1d20:	9f 5f       	subi	r25, 0xFF	; 255
    1d22:	c1 f7       	brne	.-16     	; 0x1d14 <__mulsf3_pse+0x90>
    1d24:	fe 2b       	or	r31, r30
    1d26:	88 0f       	add	r24, r24
    1d28:	91 1d       	adc	r25, r1
    1d2a:	96 95       	lsr	r25
    1d2c:	87 95       	ror	r24
    1d2e:	97 f9       	bld	r25, 7
    1d30:	08 95       	ret

00001d32 <__do_global_dtors>:
    1d32:	10 e0       	ldi	r17, 0x00	; 0
    1d34:	c9 e3       	ldi	r28, 0x39	; 57
    1d36:	d0 e0       	ldi	r29, 0x00	; 0
    1d38:	04 c0       	rjmp	.+8      	; 0x1d42 <__do_global_dtors+0x10>
    1d3a:	fe 01       	movw	r30, r28
    1d3c:	0e 94 c7 0c 	call	0x198e	; 0x198e <__tablejump2__>
    1d40:	21 96       	adiw	r28, 0x01	; 1
    1d42:	cb 33       	cpi	r28, 0x3B	; 59
    1d44:	d1 07       	cpc	r29, r17
    1d46:	c9 f7       	brne	.-14     	; 0x1d3a <__do_global_dtors+0x8>
    1d48:	f8 94       	cli

00001d4a <__stop_program>:
    1d4a:	ff cf       	rjmp	.-2      	; 0x1d4a <__stop_program>
