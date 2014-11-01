
BROM.bin:     filformat binary


Disassembly of section .data:

00000000 <.data>:
       0:	ea000008 	b	0x28
       4:	ea000006 	b	0x24
       8:	ea000005 	b	0x24
       c:	ea000004 	b	0x24
      10:	ea000003 	b	0x24
      14:	ea000002 	b	0x24
      18:	ea000011 	b	0x64
      1c:	ea000000 	b	0x24
      20:	ea000013 	b	0x74
      24:	eafffffe 	b	0x24
      28:	e3a00000 	mov	r0, #0
      2c:	e3a01000 	mov	r1, #0
      30:	e3a02000 	mov	r2, #0
      34:	e3a03000 	mov	r3, #0
      38:	e3a04000 	mov	r4, #0
      3c:	e3a05000 	mov	r5, #0
      40:	e3a06000 	mov	r6, #0
      44:	e3a07000 	mov	r7, #0
      48:	e3a08000 	mov	r8, #0
      4c:	e3a09000 	mov	r9, #0
      50:	e3a0a000 	mov	sl, #0
      54:	e3a0b000 	mov	fp, #0
      58:	e3a0c000 	mov	ip, #0
      5c:	e3a0d000 	mov	sp, #0
      60:	e59ff0b4 	ldr	pc, [pc, #180]	; 0x11c
      64:	e24ee004 	sub	lr, lr, #4
      68:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
      6c:	eb0008f7 	bl	0x2450
      70:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
      74:	e3a020d2 	mov	r2, #210	; 0xd2
      78:	e121f002 	msr	CPSR_c, r2
      7c:	e59fd09c 	ldr	sp, [pc, #156]	; 0x120
      80:	e10f0000 	mrs	r0, CPSR
      84:	e3c0001f 	bic	r0, r0, #31
      88:	e38000d3 	orr	r0, r0, #211	; 0xd3
      8c:	e121f000 	msr	CPSR_c, r0
      90:	e59fd08c 	ldr	sp, [pc, #140]	; 0x124
      94:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
      98:	e3c00002 	bic	r0, r0, #2
      9c:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
      a0:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
      a4:	e3c00001 	bic	r0, r0, #1
      a8:	e3c00b02 	bic	r0, r0, #2048	; 0x800
      ac:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
      b0:	e3c00004 	bic	r0, r0, #4
      b4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
      b8:	e3a01406 	mov	r1, #100663296	; 0x6000000
      bc:	e3a02000 	mov	r2, #0
      c0:	e5913050 	ldr	r3, [r1, #80]	; 0x50
      c4:	e3c33001 	bic	r3, r3, #1
      c8:	e1834002 	orr	r4, r3, r2
      cc:	e5814050 	str	r4, [r1, #80]	; 0x50
      d0:	e3a02000 	mov	r2, #0
      d4:	e5913054 	ldr	r3, [r1, #84]	; 0x54
      d8:	e3c33007 	bic	r3, r3, #7
      dc:	e1834002 	orr	r4, r3, r2
      e0:	e5814054 	str	r4, [r1, #84]	; 0x54
      e4:	e3a02000 	mov	r2, #0
      e8:	e591305c 	ldr	r3, [r1, #92]	; 0x5c
      ec:	e3c33003 	bic	r3, r3, #3
      f0:	e3c33403 	bic	r3, r3, #50331648	; 0x3000000
      f4:	e1834002 	orr	r4, r3, r2
      f8:	e581405c 	str	r4, [r1, #92]	; 0x5c
      fc:	e3a02001 	mov	r2, #1
     100:	e5913064 	ldr	r3, [r1, #100]	; 0x64
     104:	e3c33003 	bic	r3, r3, #3
     108:	e3c33403 	bic	r3, r3, #50331648	; 0x3000000
     10c:	e1834002 	orr	r4, r3, r2
     110:	e5814064 	str	r4, [r1, #100]	; 0x64
     114:	e59f100c 	ldr	r1, [pc, #12]	; 0x128
     118:	eb000976 	bl	0x26f8
     11c:	00003000 	andeq	r3, r0, r0
     120:	00012000 	andeq	r2, r1, r0
     124:	00017000 	andeq	r7, r1, r0
     128:	06000400 	streq	r0, [r0], -r0, lsl #8
     12c:	e12fff1e 	bx	lr
     130:	e59f0680 	ldr	r0, [pc, #1664]	; 0x7b8
     134:	e5900000 	ldr	r0, [r0]
     138:	e5900004 	ldr	r0, [r0, #4]
     13c:	e3500000 	cmp	r0, #0
     140:	0a000005 	beq	0x15c
     144:	e3a00000 	mov	r0, #0
     148:	e59f1668 	ldr	r1, [pc, #1640]	; 0x7b8
     14c:	e5911000 	ldr	r1, [r1]
     150:	e5810004 	str	r0, [r1, #4]
     154:	e3a00001 	mov	r0, #1
     158:	e12fff1e 	bx	lr
     15c:	e3a00000 	mov	r0, #0
     160:	eafffffc 	b	0x158
     164:	e12fff1e 	bx	lr
     168:	e92d4070 	push	{r4, r5, r6, lr}
     16c:	e1a04000 	mov	r4, r0
     170:	e3a05000 	mov	r5, #0
     174:	ea00000d 	b	0x1b0
     178:	e2855001 	add	r5, r5, #1
     17c:	ebffffeb 	bl	0x130
     180:	e3500000 	cmp	r0, #0
     184:	0a000003 	beq	0x198
     188:	e3a000ff 	mov	r0, #255	; 0xff
     18c:	e5c40014 	strb	r0, [r4, #20]
     190:	e3e00000 	mvn	r0, #0
     194:	e8bd8070 	pop	{r4, r5, r6, pc}
     198:	e59f061c 	ldr	r0, [pc, #1564]	; 0x7bc
     19c:	e711f015 	sdiv	r1, r5, r0
     1a0:	e0605190 	mls	r0, r0, r1, r5
     1a4:	e3500000 	cmp	r0, #0
     1a8:	1a000000 	bne	0x1b0
     1ac:	eb000a1f 	bl	0x2a30
     1b0:	e5d40014 	ldrb	r0, [r4, #20]
     1b4:	e3500001 	cmp	r0, #1
     1b8:	0affffee 	beq	0x178
     1bc:	e3a00000 	mov	r0, #0
     1c0:	eafffff3 	b	0x194
     1c4:	e92d4010 	push	{r4, lr}
     1c8:	e1a04000 	mov	r4, r0
     1cc:	e3a02022 	mov	r2, #34	; 0x22
     1d0:	e3a01000 	mov	r1, #0
     1d4:	e1a00004 	mov	r0, r4
     1d8:	eb000263 	bl	0xb6c
     1dc:	e3a00000 	mov	r0, #0
     1e0:	e5c40020 	strb	r0, [r4, #32]
     1e4:	e5c40021 	strb	r0, [r4, #33]	; 0x21
     1e8:	e8bd8010 	pop	{r4, pc}
     1ec:	e92d4010 	push	{r4, lr}
     1f0:	e5801000 	str	r1, [r0]
     1f4:	e5802004 	str	r2, [r0, #4]
     1f8:	e3a04000 	mov	r4, #0
     1fc:	e580400c 	str	r4, [r0, #12]
     200:	e5804008 	str	r4, [r0, #8]
     204:	e3a04001 	mov	r4, #1
     208:	e5c04014 	strb	r4, [r0, #20]
     20c:	e3a04000 	mov	r4, #0
     210:	e5804010 	str	r4, [r0, #16]
     214:	e8bd8010 	pop	{r4, pc}
     218:	e92d4070 	push	{r4, r5, r6, lr}
     21c:	e24dd040 	sub	sp, sp, #64	; 0x40
     220:	e1a06000 	mov	r6, r0
     224:	e1a04001 	mov	r4, r1
     228:	e3a05000 	mov	r5, #0
     22c:	e28650a0 	add	r5, r6, #160	; 0xa0
     230:	e1a00005 	mov	r0, r5
     234:	ebffffcb 	bl	0x168
     238:	e3500000 	cmp	r0, #0
     23c:	aa000002 	bge	0x24c
     240:	e3e00000 	mvn	r0, #0
     244:	e28dd040 	add	sp, sp, #64	; 0x40
     248:	e8bd8070 	pop	{r4, r5, r6, pc}
     24c:	e3a02040 	mov	r2, #64	; 0x40
     250:	e3a01000 	mov	r1, #0
     254:	e1a0000d 	mov	r0, sp
     258:	eb000243 	bl	0xb6c
     25c:	e3a03001 	mov	r3, #1
     260:	e3a02040 	mov	r2, #64	; 0x40
     264:	e1a0100d 	mov	r1, sp
     268:	e1a00005 	mov	r0, r5
     26c:	ebffffde 	bl	0x1ec
     270:	e3a00001 	mov	r0, #1
     274:	e5c40020 	strb	r0, [r4, #32]
     278:	e3a02001 	mov	r2, #1
     27c:	e1a01005 	mov	r1, r5
     280:	e1a00006 	mov	r0, r6
     284:	eb0002a2 	bl	0xd14
     288:	e1a00005 	mov	r0, r5
     28c:	ebffffb5 	bl	0x168
     290:	e3500000 	cmp	r0, #0
     294:	aa000001 	bge	0x2a0
     298:	e3e00000 	mvn	r0, #0
     29c:	eaffffe8 	b	0x244
     2a0:	e3a02022 	mov	r2, #34	; 0x22
     2a4:	e1a00004 	mov	r0, r4
     2a8:	e5951000 	ldr	r1, [r5]
     2ac:	eb000237 	bl	0xb90
     2b0:	e3a00000 	mov	r0, #0
     2b4:	eaffffe2 	b	0x244
     2b8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     2bc:	e1a04000 	mov	r4, r0
     2c0:	e1a05001 	mov	r5, r1
     2c4:	e1a07002 	mov	r7, r2
     2c8:	e1a06003 	mov	r6, r3
     2cc:	e3a08000 	mov	r8, #0
     2d0:	e3540000 	cmp	r4, #0
     2d4:	1a000001 	bne	0x2e0
     2d8:	e28580a0 	add	r8, r5, #160	; 0xa0
     2dc:	ea000000 	b	0x2e4
     2e0:	e2858088 	add	r8, r5, #136	; 0x88
     2e4:	e1a00008 	mov	r0, r8
     2e8:	ebffff9e 	bl	0x168
     2ec:	e3500000 	cmp	r0, #0
     2f0:	aa000001 	bge	0x2fc
     2f4:	e3e00000 	mvn	r0, #0
     2f8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     2fc:	e3a00002 	mov	r0, #2
     300:	e5c70020 	strb	r0, [r7, #32]
     304:	e3540000 	cmp	r4, #0
     308:	1a000001 	bne	0x314
     30c:	e3a00001 	mov	r0, #1
     310:	ea000000 	b	0x318
     314:	e3a00002 	mov	r0, #2
     318:	e1a03000 	mov	r3, r0
     31c:	e1a00008 	mov	r0, r8
     320:	e5961000 	ldr	r1, [r6]
     324:	e5962008 	ldr	r2, [r6, #8]
     328:	ebffffaf 	bl	0x1ec
     32c:	e3540000 	cmp	r4, #0
     330:	1a000001 	bne	0x33c
     334:	e3a00001 	mov	r0, #1
     338:	ea000000 	b	0x340
     33c:	e3a00000 	mov	r0, #0
     340:	e1a02000 	mov	r2, r0
     344:	e1a01008 	mov	r1, r8
     348:	e1a00005 	mov	r0, r5
     34c:	eb000270 	bl	0xd14
     350:	e1a00008 	mov	r0, r8
     354:	ebffff83 	bl	0x168
     358:	e3500000 	cmp	r0, #0
     35c:	aa000001 	bge	0x368
     360:	e3e00000 	mvn	r0, #0
     364:	eaffffe3 	b	0x2f8
     368:	e3a00000 	mov	r0, #0
     36c:	eaffffe1 	b	0x2f8
     370:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     374:	e1a05000 	mov	r5, r0
     378:	e1a04001 	mov	r4, r1
     37c:	e1a06002 	mov	r6, r2
     380:	e5d47010 	ldrb	r7, [r4, #16]
     384:	e3a08000 	mov	r8, #0
     388:	e3570011 	cmp	r7, #17
     38c:	0a000002 	beq	0x39c
     390:	e3570012 	cmp	r7, #18
     394:	1a000010 	bne	0x3dc
     398:	ea000007 	b	0x3bc
     39c:	e320f000 	nop	{0}
     3a0:	e1a03006 	mov	r3, r6
     3a4:	e1a02004 	mov	r2, r4
     3a8:	e1a01005 	mov	r1, r5
     3ac:	e3a00001 	mov	r0, #1
     3b0:	ebffffc0 	bl	0x2b8
     3b4:	e1a08000 	mov	r8, r0
     3b8:	ea000009 	b	0x3e4
     3bc:	e320f000 	nop	{0}
     3c0:	e1a03006 	mov	r3, r6
     3c4:	e1a02004 	mov	r2, r4
     3c8:	e1a01005 	mov	r1, r5
     3cc:	e3a00000 	mov	r0, #0
     3d0:	ebffffb8 	bl	0x2b8
     3d4:	e1a08000 	mov	r8, r0
     3d8:	ea000001 	b	0x3e4
     3dc:	e320f000 	nop	{0}
     3e0:	e320f000 	nop	{0}
     3e4:	e320f000 	nop	{0}
     3e8:	e1a00008 	mov	r0, r8
     3ec:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     3f0:	e92d41ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
     3f4:	e1a05000 	mov	r5, r0
     3f8:	e1a04001 	mov	r4, r1
     3fc:	e1a07002 	mov	r7, r2
     400:	e3a06000 	mov	r6, #0
     404:	e2856088 	add	r6, r5, #136	; 0x88
     408:	e3a00003 	mov	r0, #3
     40c:	e5c40020 	strb	r0, [r4, #32]
     410:	e59f03a8 	ldr	r0, [pc, #936]	; 0x7c0
     414:	e58d0000 	str	r0, [sp]
     418:	e5940004 	ldr	r0, [r4, #4]
     41c:	e58d0004 	str	r0, [sp, #4]
     420:	e3a00000 	mov	r0, #0
     424:	e58d0008 	str	r0, [sp, #8]
     428:	e5cd000c 	strb	r0, [sp, #12]
     42c:	e3a03002 	mov	r3, #2
     430:	e3a0200d 	mov	r2, #13
     434:	e1a0100d 	mov	r1, sp
     438:	e1a00006 	mov	r0, r6
     43c:	ebffff6a 	bl	0x1ec
     440:	e3a02000 	mov	r2, #0
     444:	e1a01006 	mov	r1, r6
     448:	e1a00005 	mov	r0, r5
     44c:	eb000230 	bl	0xd14
     450:	e1a00006 	mov	r0, r6
     454:	ebffff43 	bl	0x168
     458:	e3500000 	cmp	r0, #0
     45c:	aa000002 	bge	0x46c
     460:	e3e00000 	mvn	r0, #0
     464:	e28dd010 	add	sp, sp, #16
     468:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     46c:	e3a00000 	mov	r0, #0
     470:	eafffffb 	b	0x464
     474:	e92d4070 	push	{r4, r5, r6, lr}
     478:	e24dd028 	sub	sp, sp, #40	; 0x28
     47c:	e1a06000 	mov	r6, r0
     480:	e1a04001 	mov	r4, r1
     484:	e3a05000 	mov	r5, #0
     488:	e28d0004 	add	r0, sp, #4
     48c:	ebffff4c 	bl	0x1c4
     490:	e28d1004 	add	r1, sp, #4
     494:	e1a00006 	mov	r0, r6
     498:	ebffff5e 	bl	0x218
     49c:	e1a05000 	mov	r5, r0
     4a0:	e3550000 	cmp	r5, #0
     4a4:	aa000004 	bge	0x4bc
     4a8:	e3a00001 	mov	r0, #1
     4ac:	e5c4000c 	strb	r0, [r4, #12]
     4b0:	e3e00000 	mvn	r0, #0
     4b4:	e28dd028 	add	sp, sp, #40	; 0x28
     4b8:	e8bd8070 	pop	{r4, r5, r6, pc}
     4bc:	e1a02004 	mov	r2, r4
     4c0:	e28d1004 	add	r1, sp, #4
     4c4:	e1a00006 	mov	r0, r6
     4c8:	ebffffa8 	bl	0x370
     4cc:	e1a05000 	mov	r5, r0
     4d0:	e3550000 	cmp	r5, #0
     4d4:	aa000003 	bge	0x4e8
     4d8:	e3a00001 	mov	r0, #1
     4dc:	e5c4000c 	strb	r0, [r4, #12]
     4e0:	e3e00000 	mvn	r0, #0
     4e4:	eafffff2 	b	0x4b4
     4e8:	e1a02004 	mov	r2, r4
     4ec:	e28d1004 	add	r1, sp, #4
     4f0:	e1a00006 	mov	r0, r6
     4f4:	ebffffbd 	bl	0x3f0
     4f8:	e1a05000 	mov	r5, r0
     4fc:	e3550000 	cmp	r5, #0
     500:	aa000003 	bge	0x514
     504:	e3a00001 	mov	r0, #1
     508:	e5c4000c 	strb	r0, [r4, #12]
     50c:	e3e00000 	mvn	r0, #0
     510:	eaffffe7 	b	0x4b4
     514:	e3a00000 	mov	r0, #0
     518:	e5c4000c 	strb	r0, [r4, #12]
     51c:	e320f000 	nop	{0}
     520:	eaffffe3 	b	0x4b4
     524:	e92d4070 	push	{r4, r5, r6, lr}
     528:	e1a04000 	mov	r4, r0
     52c:	e1a05001 	mov	r5, r1
     530:	e1a01005 	mov	r1, r5
     534:	e1a00004 	mov	r0, r4
     538:	ebffffcd 	bl	0x474
     53c:	e8bd8070 	pop	{r4, r5, r6, pc}
     540:	e92d4070 	push	{r4, r5, r6, lr}
     544:	e1a04000 	mov	r4, r0
     548:	e1a05001 	mov	r5, r1
     54c:	e3a02010 	mov	r2, #16
     550:	e3a01000 	mov	r1, #0
     554:	e59f0268 	ldr	r0, [pc, #616]	; 0x7c4
     558:	eb000183 	bl	0xb6c
     55c:	e59f0260 	ldr	r0, [pc, #608]	; 0x7c4
     560:	e5804000 	str	r4, [r0]
     564:	e3a00000 	mov	r0, #0
     568:	e59f1254 	ldr	r1, [pc, #596]	; 0x7c4
     56c:	e5810004 	str	r0, [r1, #4]
     570:	e2810000 	add	r0, r1, #0
     574:	e5805008 	str	r5, [r0, #8]
     578:	e3a00002 	mov	r0, #2
     57c:	e5c1000c 	strb	r0, [r1, #12]
     580:	e2810000 	add	r0, r1, #0
     584:	e8bd8070 	pop	{r4, r5, r6, pc}
     588:	e92d4030 	push	{r4, r5, lr}
     58c:	e24dd024 	sub	sp, sp, #36	; 0x24
     590:	e1a04000 	mov	r4, r0
     594:	e3a05000 	mov	r5, #0
     598:	e3a02020 	mov	r2, #32
     59c:	e3a01000 	mov	r1, #0
     5a0:	e28d0004 	add	r0, sp, #4
     5a4:	eb000170 	bl	0xb6c
     5a8:	e3a02008 	mov	r2, #8
     5ac:	e28f1f85 	add	r1, pc, #532	; 0x7c8
     5b0:	e28d0004 	add	r0, sp, #4
     5b4:	eb000175 	bl	0xb90
     5b8:	e59f0214 	ldr	r0, [pc, #532]	; 0x7d4
     5bc:	e58d000c 	str	r0, [sp, #12]
     5c0:	e3a00001 	mov	r0, #1
     5c4:	e58d0010 	str	r0, [sp, #16]
     5c8:	e1cd01b4 	strh	r0, [sp, #20]
     5cc:	e3a00044 	mov	r0, #68	; 0x44
     5d0:	e5cd0016 	strb	r0, [sp, #22]
     5d4:	e3a00008 	mov	r0, #8
     5d8:	e5cd0017 	strb	r0, [sp, #23]
     5dc:	e59f01f4 	ldr	r0, [pc, #500]	; 0x7d8
     5e0:	e58d0018 	str	r0, [sp, #24]
     5e4:	e3a01020 	mov	r1, #32
     5e8:	e28d0004 	add	r0, sp, #4
     5ec:	ebffffd3 	bl	0x540
     5f0:	e1a05000 	mov	r5, r0
     5f4:	e1a01005 	mov	r1, r5
     5f8:	e1a00004 	mov	r0, r4
     5fc:	ebffff9c 	bl	0x474
     600:	e28dd024 	add	sp, sp, #36	; 0x24
     604:	e8bd8030 	pop	{r4, r5, pc}
     608:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
     60c:	e1a04000 	mov	r4, r0
     610:	e3a05000 	mov	r5, #0
     614:	e3a02010 	mov	r2, #16
     618:	e3a01000 	mov	r1, #0
     61c:	e1a0000d 	mov	r0, sp
     620:	eb000151 	bl	0xb6c
     624:	e3a00001 	mov	r0, #1
     628:	e1cd00b0 	strh	r0, [sp]
     62c:	e3a00000 	mov	r0, #0
     630:	e1cd00b2 	strh	r0, [sp, #2]
     634:	e3a01010 	mov	r1, #16
     638:	e1a0000d 	mov	r0, sp
     63c:	ebffffbf 	bl	0x540
     640:	e1a05000 	mov	r5, r0
     644:	e1a01005 	mov	r1, r5
     648:	e1a00004 	mov	r0, r4
     64c:	ebffff88 	bl	0x474
     650:	e28dd010 	add	sp, sp, #16
     654:	e8bd8070 	pop	{r4, r5, r6, pc}
     658:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
     65c:	e1a04000 	mov	r4, r0
     660:	e3a05000 	mov	r5, #0
     664:	e3a02010 	mov	r2, #16
     668:	e3a01000 	mov	r1, #0
     66c:	e1a0000d 	mov	r0, sp
     670:	eb00013d 	bl	0xb6c
     674:	e30001f4 	movw	r0, #500	; 0x1f4
     678:	e1cd00b2 	strh	r0, [sp, #2]
     67c:	e3a00002 	mov	r0, #2
     680:	e1cd00b0 	strh	r0, [sp]
     684:	e3a01010 	mov	r1, #16
     688:	e1a0000d 	mov	r0, sp
     68c:	ebffffab 	bl	0x540
     690:	e1a05000 	mov	r5, r0
     694:	e1a01005 	mov	r1, r5
     698:	e1a00004 	mov	r0, r4
     69c:	ebffff74 	bl	0x474
     6a0:	e28dd010 	add	sp, sp, #16
     6a4:	e8bd8070 	pop	{r4, r5, r6, pc}
     6a8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
     6ac:	e1a06000 	mov	r6, r0
     6b0:	e1a05001 	mov	r5, r1
     6b4:	e3a04000 	mov	r4, #0
     6b8:	e3a07000 	mov	r7, #0
     6bc:	e3a09000 	mov	r9, #0
     6c0:	e3a08000 	mov	r8, #0
     6c4:	e3550000 	cmp	r5, #0
     6c8:	1a000001 	bne	0x6d4
     6cc:	e3a00001 	mov	r0, #1
     6d0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     6d4:	e1a04005 	mov	r4, r5
     6d8:	e5940008 	ldr	r0, [r4, #8]
     6dc:	e3500000 	cmp	r0, #0
     6e0:	1a000001 	bne	0x6ec
     6e4:	e3a00001 	mov	r0, #1
     6e8:	eafffff8 	b	0x6d0
     6ec:	e5940008 	ldr	r0, [r4, #8]
     6f0:	e310003f 	tst	r0, #63	; 0x3f
     6f4:	1a000001 	bne	0x700
     6f8:	e5949008 	ldr	r9, [r4, #8]
     6fc:	ea000001 	b	0x708
     700:	e5940008 	ldr	r0, [r4, #8]
     704:	e2809040 	add	r9, r0, #64	; 0x40
     708:	e5940004 	ldr	r0, [r4, #4]
     70c:	e1a01009 	mov	r1, r9
     710:	ebffff8a 	bl	0x540
     714:	e1a07000 	mov	r7, r0
     718:	e1a01007 	mov	r1, r7
     71c:	e1a00006 	mov	r0, r6
     720:	ebffff53 	bl	0x474
     724:	e1a08000 	mov	r8, r0
     728:	e3580000 	cmp	r8, #0
     72c:	aa000001 	bge	0x738
     730:	e3a00001 	mov	r0, #1
     734:	eaffffe5 	b	0x6d0
     738:	e3a00000 	mov	r0, #0
     73c:	eaffffe3 	b	0x6d0
     740:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     744:	e1a06000 	mov	r6, r0
     748:	e1a04001 	mov	r4, r1
     74c:	e3a05000 	mov	r5, #0
     750:	e3a08000 	mov	r8, #0
     754:	e3a07000 	mov	r7, #0
     758:	e3540000 	cmp	r4, #0
     75c:	1a000001 	bne	0x768
     760:	e3a00001 	mov	r0, #1
     764:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     768:	e1a05004 	mov	r5, r4
     76c:	e5950008 	ldr	r0, [r5, #8]
     770:	e3500000 	cmp	r0, #0
     774:	1a000001 	bne	0x780
     778:	e3a00001 	mov	r0, #1
     77c:	eafffff8 	b	0x764
     780:	e5951008 	ldr	r1, [r5, #8]
     784:	e5950004 	ldr	r0, [r5, #4]
     788:	ebffff6c 	bl	0x540
     78c:	e1a08000 	mov	r8, r0
     790:	e1a01008 	mov	r1, r8
     794:	e1a00006 	mov	r0, r6
     798:	ebffff35 	bl	0x474
     79c:	e1a07000 	mov	r7, r0
     7a0:	e3570000 	cmp	r7, #0
     7a4:	aa000001 	bge	0x7b0
     7a8:	e3a00001 	mov	r0, #1
     7ac:	eaffffec 	b	0x764
     7b0:	e3a00000 	mov	r0, #0
     7b4:	eaffffea 	b	0x764

     7b8:	00017d00
     7bc:	000493e0
     7c0:	"AWUS"
     7c4:	00017d04
     7c8:	"AWUSBFEX"
     7cc:	
     7d0:	00000000
     7d4:	00163900
     7d8:	00017e00

     7dc:	e1a03000 	mov	r3, r0
     7e0:	e3a02000 	mov	r2, #0
     7e4:	e3510000 	cmp	r1, #0
     7e8:	1a000001 	bne	0x7f4
     7ec:	e3e00000 	mvn	r0, #0
     7f0:	e12fff1e 	bx	lr
     7f4:	e1a02001 	mov	r2, r1
     7f8:	e5920004 	ldr	r0, [r2, #4]
     7fc:	eafffffb 	b	0x7f0
     800:	e92d41fc 	push	{r2, r3, r4, r5, r6, r7, r8, lr}
     804:	e1a06000 	mov	r6, r0
     808:	e1a04001 	mov	r4, r1
     80c:	e1a05002 	mov	r5, r2
     810:	e3a07000 	mov	r7, #0
     814:	e3a02008 	mov	r2, #8
     818:	e3a01000 	mov	r1, #0
     81c:	e1a0000d 	mov	r0, sp
     820:	eb0000d1 	bl	0xb6c
     824:	e30f0fff 	movw	r0, #65535	; 0xffff
     828:	e1cd00b0 	strh	r0, [sp]
     82c:	e1cd40b2 	strh	r4, [sp, #2]
     830:	e5cd5004 	strb	r5, [sp, #4]
     834:	e3a01008 	mov	r1, #8
     838:	e1a0000d 	mov	r0, sp
     83c:	ebffff3f 	bl	0x540
     840:	e1a07000 	mov	r7, r0
     844:	e1a01007 	mov	r1, r7
     848:	e1a00006 	mov	r0, r6
     84c:	ebffff08 	bl	0x474
     850:	e8bd81fc 	pop	{r2, r3, r4, r5, r6, r7, r8, pc}
     854:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
     858:	e1a06000 	mov	r6, r0
     85c:	e1a04001 	mov	r4, r1
     860:	e1a05002 	mov	r5, r2
     864:	e1a09003 	mov	r9, r3
     868:	e3a07000 	mov	r7, #0
     86c:	e3a08000 	mov	r8, #0
     870:	e1a02005 	mov	r2, r5
     874:	e3a01000 	mov	r1, #0
     878:	e1a00004 	mov	r0, r4
     87c:	eb0000ba 	bl	0xb6c
     880:	e1a01005 	mov	r1, r5
     884:	e1a00004 	mov	r0, r4
     888:	ebffff2c 	bl	0x540
     88c:	e1a07000 	mov	r7, r0
     890:	e1a01007 	mov	r1, r7
     894:	e1a00006 	mov	r0, r6
     898:	ebffff21 	bl	0x524
     89c:	e1a08000 	mov	r8, r0
     8a0:	e1a00008 	mov	r0, r8
     8a4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
     8a8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     8ac:	e24dd044 	sub	sp, sp, #68	; 0x44
     8b0:	e1a09000 	mov	r9, r0
     8b4:	e3a06000 	mov	r6, #0
     8b8:	e3a0a000 	mov	sl, #0
     8bc:	e3a0b000 	mov	fp, #0
     8c0:	e3a05001 	mov	r5, #1
     8c4:	e3a04000 	mov	r4, #0
     8c8:	e3a03010 	mov	r3, #16
     8cc:	e3a02040 	mov	r2, #64	; 0x40
     8d0:	e28d1004 	add	r1, sp, #4
     8d4:	e1a00009 	mov	r0, r9
     8d8:	ebffffdd 	bl	0x854
     8dc:	e1a04000 	mov	r4, r0
     8e0:	e3540000 	cmp	r4, #0
     8e4:	aa000002 	bge	0x8f4
     8e8:	e3e00000 	mvn	r0, #0
     8ec:	e28dd044 	add	sp, sp, #68	; 0x44
     8f0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
     8f4:	e28d6004 	add	r6, sp, #4
     8f8:	e1d6a0b0 	ldrh	sl, [r6]
     8fc:	e1d6b0b2 	ldrh	fp, [r6, #2]
     900:	e35a0010 	cmp	sl, #16
     904:	0a000031 	beq	0x9d0
     908:	ca000008 	bgt	0x930
     90c:	e35a0001 	cmp	sl, #1
     910:	0a00000e 	beq	0x950
     914:	e35a0002 	cmp	sl, #2
     918:	0a000016 	beq	0x978
     91c:	e35a0003 	cmp	sl, #3
     920:	0a000016 	beq	0x980
     924:	e35a0004 	cmp	sl, #4
     928:	1a000053 	bne	0xa7c
     92c:	ea00001d 	b	0x9a8
     930:	e3e00c01 	mvn	r0, #256	; 0x100
     934:	e090000a 	adds	r0, r0, sl
     938:	0a000026 	beq	0x9d8
     93c:	e3500001 	cmp	r0, #1
     940:	0a000038 	beq	0xa28
     944:	e3500002 	cmp	r0, #2
     948:	1a00004b 	bne	0xa7c
     94c:	ea00002b 	b	0xa00
     950:	e320f000 	nop	{0}
     954:	e1a00009 	mov	r0, r9
     958:	ebffff0a 	bl	0x588
     95c:	e1a04000 	mov	r4, r0
     960:	e3540000 	cmp	r4, #0
     964:	aa000001 	bge	0x970
     968:	e3e00000 	mvn	r0, #0
     96c:	eaffffde 	b	0x8ec
     970:	e3a05000 	mov	r5, #0
     974:	ea000043 	b	0xa88
     978:	e320f000 	nop	{0}
     97c:	ea000041 	b	0xa88
     980:	e320f000 	nop	{0}
     984:	e1a00009 	mov	r0, r9
     988:	ebffff32 	bl	0x658
     98c:	e1a04000 	mov	r4, r0
     990:	e3540000 	cmp	r4, #0
     994:	aa000001 	bge	0x9a0
     998:	e3e00000 	mvn	r0, #0
     99c:	eaffffd2 	b	0x8ec
     9a0:	e3a05000 	mov	r5, #0
     9a4:	ea000037 	b	0xa88
     9a8:	e320f000 	nop	{0}
     9ac:	e1a00009 	mov	r0, r9
     9b0:	ebffff14 	bl	0x608
     9b4:	e1a04000 	mov	r4, r0
     9b8:	e3540000 	cmp	r4, #0
     9bc:	aa000001 	bge	0x9c8
     9c0:	e3e00000 	mvn	r0, #0
     9c4:	eaffffc8 	b	0x8ec
     9c8:	e3a05000 	mov	r5, #0
     9cc:	ea00002d 	b	0xa88
     9d0:	e320f000 	nop	{0}
     9d4:	ea00002b 	b	0xa88
     9d8:	e320f000 	nop	{0}
     9dc:	e28d1004 	add	r1, sp, #4
     9e0:	e1a00009 	mov	r0, r9
     9e4:	ebffff2f 	bl	0x6a8
     9e8:	e1a05000 	mov	r5, r0
     9ec:	e3550001 	cmp	r5, #1
     9f0:	1a000001 	bne	0x9fc
     9f4:	e3e00000 	mvn	r0, #0
     9f8:	eaffffbb 	b	0x8ec
     9fc:	ea000021 	b	0xa88
     a00:	e320f000 	nop	{0}
     a04:	e28d1004 	add	r1, sp, #4
     a08:	e1a00009 	mov	r0, r9
     a0c:	ebffff4b 	bl	0x740
     a10:	e1a05000 	mov	r5, r0
     a14:	e3550001 	cmp	r5, #1
     a18:	1a000001 	bne	0xa24
     a1c:	e3e00000 	mvn	r0, #0
     a20:	eaffffb1 	b	0x8ec
     a24:	ea000017 	b	0xa88
     a28:	e320f000 	nop	{0}
     a2c:	e3a07000 	mov	r7, #0
     a30:	e28d1004 	add	r1, sp, #4
     a34:	e1a00009 	mov	r0, r9
     a38:	ebffff67 	bl	0x7dc
     a3c:	e1a07000 	mov	r7, r0
     a40:	e3a05000 	mov	r5, #0
     a44:	e1a02005 	mov	r2, r5
     a48:	e1a0100b 	mov	r1, fp
     a4c:	e1a00009 	mov	r0, r9
     a50:	ebffff6a 	bl	0x800
     a54:	e1a04000 	mov	r4, r0
     a58:	e3540000 	cmp	r4, #0
     a5c:	aa000001 	bge	0xa68
     a60:	e3e00000 	mvn	r0, #0
     a64:	eaffffa0 	b	0x8ec
     a68:	e1a00009 	mov	r0, r9
     a6c:	eb0004b0 	bl	0x1d34
     a70:	e1a08007 	mov	r8, r7
     a74:	e12fff38 	blx	r8
     a78:	eaffff9b 	b	0x8ec
     a7c:	e320f000 	nop	{0}
     a80:	e3a05001 	mov	r5, #1
     a84:	e320f000 	nop	{0}
     a88:	e320f000 	nop	{0}
     a8c:	e1a02005 	mov	r2, r5
     a90:	e1a0100b 	mov	r1, fp
     a94:	e1a00009 	mov	r0, r9
     a98:	ebffff58 	bl	0x800
     a9c:	e1a04000 	mov	r4, r0
     aa0:	e3540000 	cmp	r4, #0
     aa4:	aa000001 	bge	0xab0
     aa8:	e3e00000 	mvn	r0, #0
     aac:	eaffff8e 	b	0x8ec
     ab0:	e3a00000 	mov	r0, #0
     ab4:	eaffff8c 	b	0x8ec
     ab8:	e1a06000 	mov	r6, r0
     abc:	e3a04000 	mov	r4, #0
     ac0:	e3a05000 	mov	r5, #0
     ac4:	e51f0314 	ldr	r0, [pc, #-788]	; 0x7b8
     ac8:	e5900000 	ldr	r0, [r0]
     acc:	e5900004 	ldr	r0, [r0, #4]
     ad0:	e3a00000 	mov	r0, #0
     ad4:	e51f1324 	ldr	r1, [pc, #-804]	; 0x7b8
     ad8:	e5911000 	ldr	r1, [r1]
     adc:	e5810004 	str	r0, [r1, #4]
     ae0:	ea000017 	b	0xb44
     ae4:	e320f000 	nop	{0}
     ae8:	e51f0338 	ldr	r0, [pc, #-824]	; 0x7b8
     aec:	e5900000 	ldr	r0, [r0]
     af0:	e5900000 	ldr	r0, [r0]
     af4:	e3500000 	cmp	r0, #0
     af8:	0afffffa 	beq	0xae8
     afc:	e3a00000 	mov	r0, #0
     b00:	e51f1350 	ldr	r1, [pc, #-848]	; 0x7b8
     b04:	e5911000 	ldr	r1, [r1]
     b08:	e5810000 	str	r0, [r1]
     b0c:	e51f135c 	ldr	r1, [pc, #-860]	; 0x7b8
     b10:	e5911000 	ldr	r1, [r1]
     b14:	e5810004 	str	r0, [r1, #4]
     b18:	ea000007 	b	0xb3c
     b1c:	ebfffd82 	bl	0x12c
     b20:	e1a00006 	mov	r0, r6
     b24:	ebffff5f 	bl	0x8a8
     b28:	e1a05000 	mov	r5, r0
     b2c:	e3550000 	cmp	r5, #0
     b30:	aa000000 	bge	0xb38
     b34:	ea000001 	b	0xb40
     b38:	e2844001 	add	r4, r4, #1
     b3c:	eafffff6 	b	0xb1c
     b40:	e320f000 	nop	{0}
     b44:	eaffffe6 	b	0xae4
     b48:	e3a01000 	mov	r1, #0
     b4c:	e5c01014 	strb	r1, [r0, #20]
     b50:	e12fff1e 	bx	lr
     b54:	e3a01000 	mov	r1, #0
     b58:	e5c01014 	strb	r1, [r0, #20]
     b5c:	e12fff1e 	bx	lr
     b60:	e3a01000 	mov	r1, #0
     b64:	e5c01014 	strb	r1, [r0, #20]
     b68:	e12fff1e 	bx	lr
     b6c:	e92d4070 	push	{r4, r5, r6, lr}
     b70:	e1a06000 	mov	r6, r0
     b74:	e1a04001 	mov	r4, r1
     b78:	e1a05002 	mov	r5, r2
     b7c:	e1a02004 	mov	r2, r4
     b80:	e1a01005 	mov	r1, r5
     b84:	e1a00006 	mov	r0, r6
     b88:	fa0007c9 	blx	0x2ab4
     b8c:	e8bd8070 	pop	{r4, r5, r6, pc}
     b90:	e92d4030 	push	{r4, r5, lr}
     b94:	e1a03000 	mov	r3, r0
     b98:	e1a0c001 	mov	ip, r1
     b9c:	ea000001 	b	0xba8
     ba0:	e4dc4001 	ldrb	r4, [ip], #1
     ba4:	e4c34001 	strb	r4, [r3], #1
     ba8:	e1b04002 	movs	r4, r2
     bac:	e2422001 	sub	r2, r2, #1
     bb0:	1afffffa 	bne	0xba0
     bb4:	e8bd8030 	pop	{r4, r5, pc}
     bb8:	e12fff1e 	bx	lr
     bbc:	e12fff1e 	bx	lr
     bc0:	e1a02000 	mov	r2, r0
     bc4:	e10f1000 	mrs	r1, CPSR
     bc8:	e3811080 	orr	r1, r1, #128	; 0x80
     bcc:	e121f001 	msr	CPSR_c, r1
     bd0:	e12fff1e 	bx	lr
     bd4:	e1a02000 	mov	r2, r0
     bd8:	e10f1000 	mrs	r1, CPSR
     bdc:	e3c11080 	bic	r1, r1, #128	; 0x80
     be0:	e121f001 	msr	CPSR_c, r1
     be4:	e12fff1e 	bx	lr
     be8:	e92d4070 	push	{r4, r5, r6, lr}
     bec:	e1a04000 	mov	r4, r0
     bf0:	e3a0c000 	mov	ip, #0
     bf4:	e5930008 	ldr	r0, [r3, #8]
     bf8:	e30c6808 	movw	r6, #51208	; 0xc808
     bfc:	e0866201 	add	r6, r6, r1, lsl #4
     c00:	e5945000 	ldr	r5, [r4]
     c04:	e7850006 	str	r0, [r5, r6]
     c08:	e5930004 	ldr	r0, [r3, #4]
     c0c:	e30c6804 	movw	r6, #51204	; 0xc804
     c10:	e0866201 	add	r6, r6, r1, lsl #4
     c14:	e5945000 	ldr	r5, [r4]
     c18:	e7850006 	str	r0, [r5, r6]
     c1c:	e5930000 	ldr	r0, [r3]
     c20:	e30c6800 	movw	r6, #51200	; 0xc800
     c24:	e0866201 	add	r6, r6, r1, lsl #4
     c28:	e5945000 	ldr	r5, [r4]
     c2c:	e7850006 	str	r0, [r5, r6]
     c30:	e320f000 	nop	{0}
     c34:	e30c580c 	movw	r5, #51212	; 0xc80c
     c38:	e0855201 	add	r5, r5, r1, lsl #4
     c3c:	e5940000 	ldr	r0, [r4]
     c40:	e7900005 	ldr	r0, [r0, r5]
     c44:	e3100b01 	tst	r0, #1024	; 0x400
     c48:	1afffff9 	bne	0xc34
     c4c:	e3820b01 	orr	r0, r2, #1024	; 0x400
     c50:	e30c680c 	movw	r6, #51212	; 0xc80c
     c54:	e0866201 	add	r6, r6, r1, lsl #4
     c58:	e5945000 	ldr	r5, [r4]
     c5c:	e7850006 	str	r0, [r5, r6]
     c60:	e320f000 	nop	{0}
     c64:	e30c580c 	movw	r5, #51212	; 0xc80c
     c68:	e0855201 	add	r5, r5, r1, lsl #4
     c6c:	e5940000 	ldr	r0, [r4]
     c70:	e790c005 	ldr	ip, [r0, r5]
     c74:	e31c0b01 	tst	ip, #1024	; 0x400
     c78:	1a000001 	bne	0xc84
     c7c:	e3a00000 	mov	r0, #0
     c80:	e8bd8070 	pop	{r4, r5, r6, pc}
     c84:	eafffff6 	b	0xc64
     c88:	e92d43fe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, lr}
     c8c:	e1a05000 	mov	r5, r0
     c90:	e1a06001 	mov	r6, r1
     c94:	e1a09002 	mov	r9, r2
     c98:	e1a07003 	mov	r7, r3
     c9c:	e3a04000 	mov	r4, #0
     ca0:	e3a08000 	mov	r8, #0
     ca4:	e595400c 	ldr	r4, [r5, #12]
     ca8:	e5960000 	ldr	r0, [r6]
     cac:	e5840000 	str	r0, [r4]
     cb0:	e3a00000 	mov	r0, #0
     cb4:	e5840004 	str	r0, [r4, #4]
     cb8:	e5960004 	ldr	r0, [r6, #4]
     cbc:	e3c004ff 	bic	r0, r0, #-16777216	; 0xff000000
     cc0:	e5840008 	str	r0, [r4, #8]
     cc4:	e3000803 	movw	r0, #2051	; 0x803
     cc8:	e584000c 	str	r0, [r4, #12]
     ccc:	e594000c 	ldr	r0, [r4, #12]
     cd0:	e1800207 	orr	r0, r0, r7, lsl #4
     cd4:	e584000c 	str	r0, [r4, #12]
     cd8:	e5950030 	ldr	r0, [r5, #48]	; 0x30
     cdc:	e3a0200c 	mov	r2, #12
     ce0:	e3a01000 	mov	r1, #0
     ce4:	e1a0000d 	mov	r0, sp
     ce8:	ebffff9f 	bl	0xb6c
     cec:	e58d4004 	str	r4, [sp, #4]
     cf0:	e3a08006 	mov	r8, #6
     cf4:	e3888c01 	orr	r8, r8, #256	; 0x100
     cf8:	e1a0300d 	mov	r3, sp
     cfc:	e1a02008 	mov	r2, r8
     d00:	e1a01009 	mov	r1, r9
     d04:	e5950008 	ldr	r0, [r5, #8]
     d08:	ebffffb6 	bl	0xbe8
     d0c:	e3a00000 	mov	r0, #0
     d10:	e8bd83fe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
     d14:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     d18:	e1a05000 	mov	r5, r0
     d1c:	e1a06001 	mov	r6, r1
     d20:	e1a04002 	mov	r4, r2
     d24:	e3a07000 	mov	r7, #0
     d28:	e3540000 	cmp	r4, #0
     d2c:	0a000001 	beq	0xd38
     d30:	e3a00002 	mov	r0, #2
     d34:	ea000000 	b	0xd3c
     d38:	e3a00003 	mov	r0, #3
     d3c:	e1a07000 	mov	r7, r0
     d40:	e3a03001 	mov	r3, #1
     d44:	e1a02007 	mov	r2, r7
     d48:	e1a01006 	mov	r1, r6
     d4c:	e1a00005 	mov	r0, r5
     d50:	ebffffcc 	bl	0xc88
     d54:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
     d58:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
     d5c:	e1a05000 	mov	r5, r0
     d60:	e595400c 	ldr	r4, [r5, #12]
     d64:	e3a06000 	mov	r6, #0
     d68:	e2850024 	add	r0, r5, #36	; 0x24
     d6c:	e5840000 	str	r0, [r4]
     d70:	e3a00000 	mov	r0, #0
     d74:	e5840004 	str	r0, [r4, #4]
     d78:	e3a00008 	mov	r0, #8
     d7c:	e5840008 	str	r0, [r4, #8]
     d80:	e3000823 	movw	r0, #2083	; 0x823
     d84:	e584000c 	str	r0, [r4, #12]
     d88:	e3a0200c 	mov	r2, #12
     d8c:	e3a01000 	mov	r1, #0
     d90:	e1a0000d 	mov	r0, sp
     d94:	ebffff74 	bl	0xb6c
     d98:	e58d4004 	str	r4, [sp, #4]
     d9c:	e3a06006 	mov	r6, #6
     da0:	e3866c01 	orr	r6, r6, #256	; 0x100
     da4:	e1a0300d 	mov	r3, sp
     da8:	e1a02006 	mov	r2, r6
     dac:	e3a01000 	mov	r1, #0
     db0:	e5950008 	ldr	r0, [r5, #8]
     db4:	ebffff8b 	bl	0xbe8
     db8:	e3a00000 	mov	r0, #0
     dbc:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
     dc0:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
     dc4:	e1a04000 	mov	r4, r0
     dc8:	e594500c 	ldr	r5, [r4, #12]
     dcc:	e3a06000 	mov	r6, #0
     dd0:	e3a07000 	mov	r7, #0
     dd4:	e5940030 	ldr	r0, [r4, #48]	; 0x30
     dd8:	e3500003 	cmp	r0, #3
     ddc:	0a000004 	beq	0xdf4
     de0:	e5940030 	ldr	r0, [r4, #48]	; 0x30
     de4:	e3500004 	cmp	r0, #4
     de8:	0a000001 	beq	0xdf4
     dec:	e3e00000 	mvn	r0, #0
     df0:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
     df4:	e3a00000 	mov	r0, #0
     df8:	e5850000 	str	r0, [r5]
     dfc:	e5850004 	str	r0, [r5, #4]
     e00:	e5850008 	str	r0, [r5, #8]
     e04:	e3000803 	movw	r0, #2051	; 0x803
     e08:	e585000c 	str	r0, [r5, #12]
     e0c:	e595000c 	ldr	r0, [r5, #12]
     e10:	e5941030 	ldr	r1, [r4, #48]	; 0x30
     e14:	e1800201 	orr	r0, r0, r1, lsl #4
     e18:	e585000c 	str	r0, [r5, #12]
     e1c:	e3a0200c 	mov	r2, #12
     e20:	e3a01000 	mov	r1, #0
     e24:	e1a0000d 	mov	r0, sp
     e28:	ebffff4f 	bl	0xb6c
     e2c:	e58d5004 	str	r5, [sp, #4]
     e30:	e3a06006 	mov	r6, #6
     e34:	e3866c01 	orr	r6, r6, #256	; 0x100
     e38:	e5940030 	ldr	r0, [r4, #48]	; 0x30
     e3c:	e3500003 	cmp	r0, #3
     e40:	1a000001 	bne	0xe4c
     e44:	e3a07001 	mov	r7, #1
     e48:	ea000003 	b	0xe5c
     e4c:	e5940030 	ldr	r0, [r4, #48]	; 0x30
     e50:	e3500004 	cmp	r0, #4
     e54:	1a000000 	bne	0xe5c
     e58:	e3a07000 	mov	r7, #0
     e5c:	e1a0300d 	mov	r3, sp
     e60:	e1a02006 	mov	r2, r6
     e64:	e1a01007 	mov	r1, r7
     e68:	e5940008 	ldr	r0, [r4, #8]
     e6c:	ebffff5d 	bl	0xbe8
     e70:	e3a00000 	mov	r0, #0
     e74:	eaffffdd 	b	0xdf0
     e78:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
     e7c:	e1a05000 	mov	r5, r0
     e80:	e595400c 	ldr	r4, [r5, #12]
     e84:	e3a06000 	mov	r6, #0
     e88:	e3a07000 	mov	r7, #0
     e8c:	e3a00000 	mov	r0, #0
     e90:	e5840000 	str	r0, [r4]
     e94:	e5840004 	str	r0, [r4, #4]
     e98:	e5840008 	str	r0, [r4, #8]
     e9c:	e3000803 	movw	r0, #2051	; 0x803
     ea0:	e584000c 	str	r0, [r4, #12]
     ea4:	e594000c 	ldr	r0, [r4, #12]
     ea8:	e3800040 	orr	r0, r0, #64	; 0x40
     eac:	e584000c 	str	r0, [r4, #12]
     eb0:	e3a0200c 	mov	r2, #12
     eb4:	e3a01000 	mov	r1, #0
     eb8:	e1a0000d 	mov	r0, sp
     ebc:	ebffff2a 	bl	0xb6c
     ec0:	e58d4004 	str	r4, [sp, #4]
     ec4:	e3a06006 	mov	r6, #6
     ec8:	e3866c01 	orr	r6, r6, #256	; 0x100
     ecc:	e3a07001 	mov	r7, #1
     ed0:	e1a0300d 	mov	r3, sp
     ed4:	e1a02006 	mov	r2, r6
     ed8:	e1a01007 	mov	r1, r7
     edc:	e5950008 	ldr	r0, [r5, #8]
     ee0:	ebffff40 	bl	0xbe8
     ee4:	e3a00000 	mov	r0, #0
     ee8:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
     eec:	e1a01000 	mov	r1, r0
     ef0:	e3a00002 	mov	r0, #2
     ef4:	ea000000 	b	0xefc
     ef8:	e2800001 	add	r0, r0, #1
     efc:	e3500020 	cmp	r0, #32
     f00:	9afffffc 	bls	0xef8
     f04:	e12fff1e 	bx	lr
     f08:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
     f0c:	e1a05000 	mov	r5, r0
     f10:	e1a06001 	mov	r6, r1
     f14:	e3a0200c 	mov	r2, #12
     f18:	e3a01000 	mov	r1, #0
     f1c:	e1a0000d 	mov	r0, sp
     f20:	ebffff11 	bl	0xb6c
     f24:	e3a04008 	mov	r4, #8
     f28:	e3844c01 	orr	r4, r4, #256	; 0x100
     f2c:	e3844b02 	orr	r4, r4, #2048	; 0x800
     f30:	e1a0300d 	mov	r3, sp
     f34:	e1a02004 	mov	r2, r4
     f38:	e1a01006 	mov	r1, r6
     f3c:	e1a00005 	mov	r0, r5
     f40:	ebffff28 	bl	0xbe8
     f44:	e1a07000 	mov	r7, r0
     f48:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}
     f4c:	e92d4010 	push	{r4, lr}
     f50:	e1a04000 	mov	r4, r0
     f54:	e3a01002 	mov	r1, #2
     f58:	e1a00004 	mov	r0, r4
     f5c:	ebffffe9 	bl	0xf08
     f60:	e3a01003 	mov	r1, #3
     f64:	e1a00004 	mov	r0, r4
     f68:	ebffffe6 	bl	0xf08
     f6c:	e8bd8010 	pop	{r4, pc}
     f70:	e1a02001 	mov	r2, r1
     f74:	e3a01000 	mov	r1, #0
     f78:	e5903000 	ldr	r3, [r0]
     f7c:	e2833cc7 	add	r3, r3, #50944	; 0xc700
     f80:	e5931000 	ldr	r1, [r3]
     f84:	e3c11ffe 	bic	r1, r1, #1016	; 0x3f8
     f88:	e1811182 	orr	r1, r1, r2, lsl #3
     f8c:	e5903000 	ldr	r3, [r0]
     f90:	e2833cc7 	add	r3, r3, #50944	; 0xc700
     f94:	e5831000 	str	r1, [r3]
     f98:	e12fff1e 	bx	lr
     f9c:	e92d43fe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, lr}
     fa0:	e1a04000 	mov	r4, r0
     fa4:	e3a09000 	mov	r9, #0
     fa8:	e3a00001 	mov	r0, #1
     fac:	e59f1f30 	ldr	r1, [pc, #3888]	; 0x1ee4
     fb0:	e5911000 	ldr	r1, [r1]
     fb4:	e5810000 	str	r0, [r1]
     fb8:	e3a01001 	mov	r1, #1
     fbc:	e3a00002 	mov	r0, #2
     fc0:	ebfffefc 	bl	0xbb8
     fc4:	e1a08000 	mov	r8, r0
     fc8:	e3a01000 	mov	r1, #0
     fcc:	e3a00003 	mov	r0, #3
     fd0:	ebfffef8 	bl	0xbb8
     fd4:	e1a07000 	mov	r7, r0
     fd8:	e3a00003 	mov	r0, #3
     fdc:	e30c2720 	movw	r2, #50976	; 0xc720
     fe0:	e5941000 	ldr	r1, [r4]
     fe4:	e7810002 	str	r0, [r1, r2]
     fe8:	e3a0200c 	mov	r2, #12
     fec:	e3a01000 	mov	r1, #0
     ff0:	e1a0000d 	mov	r0, sp
     ff4:	ebfffedc 	bl	0xb6c
     ff8:	e3a05008 	mov	r5, #8
     ffc:	e3855c01 	orr	r5, r5, #256	; 0x100
    1000:	e1a0300d 	mov	r3, sp
    1004:	e1a02005 	mov	r2, r5
    1008:	e3a01001 	mov	r1, #1
    100c:	e1a00004 	mov	r0, r4
    1010:	ebfffef4 	bl	0xbe8
    1014:	e1a09000 	mov	r9, r0
    1018:	e3a0200c 	mov	r2, #12
    101c:	e3a01000 	mov	r1, #0
    1020:	e1a0000d 	mov	r0, sp
    1024:	ebfffed0 	bl	0xb6c
    1028:	e59f0eb8 	ldr	r0, [pc, #3768]	; 0x1ee8
    102c:	e58d0004 	str	r0, [sp, #4]
    1030:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    1034:	e3500000 	cmp	r0, #0
    1038:	1a000002 	bne	0x1048
    103c:	e3000200 	movw	r0, #512	; 0x200
    1040:	e58d0008 	str	r0, [sp, #8]
    1044:	ea000004 	b	0x105c
    1048:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    104c:	e3500001 	cmp	r0, #1
    1050:	1a000001 	bne	0x105c
    1054:	e3000200 	movw	r0, #512	; 0x200
    1058:	e58d0008 	str	r0, [sp, #8]
    105c:	e3a05001 	mov	r5, #1
    1060:	e3855c01 	orr	r5, r5, #256	; 0x100
    1064:	e1a0300d 	mov	r3, sp
    1068:	e1a02005 	mov	r2, r5
    106c:	e3a01001 	mov	r1, #1
    1070:	e1a00004 	mov	r0, r4
    1074:	ebfffedb 	bl	0xbe8
    1078:	e1a09000 	mov	r9, r0
    107c:	e3a0200c 	mov	r2, #12
    1080:	e3a01000 	mov	r1, #0
    1084:	e1a0000d 	mov	r0, sp
    1088:	ebfffeb7 	bl	0xb6c
    108c:	e3a05009 	mov	r5, #9
    1090:	e3855c01 	orr	r5, r5, #256	; 0x100
    1094:	e3855802 	orr	r5, r5, #131072	; 0x20000
    1098:	e1a0300d 	mov	r3, sp
    109c:	e1a02005 	mov	r2, r5
    10a0:	e3a01000 	mov	r1, #0
    10a4:	e1a00004 	mov	r0, r4
    10a8:	ebfffece 	bl	0xbe8
    10ac:	e1a09000 	mov	r9, r0
    10b0:	e3a0200c 	mov	r2, #12
    10b4:	e3a01000 	mov	r1, #0
    10b8:	e1a0000d 	mov	r0, sp
    10bc:	ebfffeaa 	bl	0xb6c
    10c0:	e59f0e24 	ldr	r0, [pc, #3620]	; 0x1eec
    10c4:	e58d0004 	str	r0, [sp, #4]
    10c8:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    10cc:	e3500000 	cmp	r0, #0
    10d0:	1a000002 	bne	0x10e0
    10d4:	e3010004 	movw	r0, #4100	; 0x1004
    10d8:	e58d0008 	str	r0, [sp, #8]
    10dc:	ea000004 	b	0x10f4
    10e0:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    10e4:	e3500001 	cmp	r0, #1
    10e8:	1a000001 	bne	0x10f4
    10ec:	e3000204 	movw	r0, #516	; 0x204
    10f0:	e58d0008 	str	r0, [sp, #8]
    10f4:	e3a05001 	mov	r5, #1
    10f8:	e3855c01 	orr	r5, r5, #256	; 0x100
    10fc:	e1a0300d 	mov	r3, sp
    1100:	e1a02005 	mov	r2, r5
    1104:	e1a01008 	mov	r1, r8
    1108:	e1a00004 	mov	r0, r4
    110c:	ebfffeb5 	bl	0xbe8
    1110:	e1a09000 	mov	r9, r0
    1114:	e3a0200c 	mov	r2, #12
    1118:	e3a01000 	mov	r1, #0
    111c:	e1a0000d 	mov	r0, sp
    1120:	ebfffe91 	bl	0xb6c
    1124:	e59f0dc4 	ldr	r0, [pc, #3524]	; 0x1ef0
    1128:	e58d0004 	str	r0, [sp, #4]
    112c:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    1130:	e3500000 	cmp	r0, #0
    1134:	1a000002 	bne	0x1144
    1138:	e59f0db4 	ldr	r0, [pc, #3508]	; 0x1ef4
    113c:	e58d0008 	str	r0, [sp, #8]
    1140:	ea000004 	b	0x1158
    1144:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    1148:	e3500001 	cmp	r0, #1
    114c:	1a000001 	bne	0x1158
    1150:	e59f0da0 	ldr	r0, [pc, #3488]	; 0x1ef8
    1154:	e58d0008 	str	r0, [sp, #8]
    1158:	e3a05001 	mov	r5, #1
    115c:	e3855c01 	orr	r5, r5, #256	; 0x100
    1160:	e1a0300d 	mov	r3, sp
    1164:	e1a02005 	mov	r2, r5
    1168:	e1a01007 	mov	r1, r7
    116c:	e1a00004 	mov	r0, r4
    1170:	ebfffe9c 	bl	0xbe8
    1174:	e1a09000 	mov	r9, r0
    1178:	e3a0200c 	mov	r2, #12
    117c:	e3a01000 	mov	r1, #0
    1180:	e1a0000d 	mov	r0, sp
    1184:	ebfffe78 	bl	0xb6c
    1188:	e3a00001 	mov	r0, #1
    118c:	e58d0008 	str	r0, [sp, #8]
    1190:	e3a05002 	mov	r5, #2
    1194:	e3855c01 	orr	r5, r5, #256	; 0x100
    1198:	e1a0300d 	mov	r3, sp
    119c:	e1a02005 	mov	r2, r5
    11a0:	e1a01008 	mov	r1, r8
    11a4:	e1a00004 	mov	r0, r4
    11a8:	ebfffe8e 	bl	0xbe8
    11ac:	e1a09000 	mov	r9, r0
    11b0:	e3a0200c 	mov	r2, #12
    11b4:	e3a01000 	mov	r1, #0
    11b8:	e1a0000d 	mov	r0, sp
    11bc:	ebfffe6a 	bl	0xb6c
    11c0:	e3a00001 	mov	r0, #1
    11c4:	e58d0008 	str	r0, [sp, #8]
    11c8:	e3a05002 	mov	r5, #2
    11cc:	e3855c01 	orr	r5, r5, #256	; 0x100
    11d0:	e1a0300d 	mov	r3, sp
    11d4:	e1a02005 	mov	r2, r5
    11d8:	e1a01007 	mov	r1, r7
    11dc:	e1a00004 	mov	r0, r4
    11e0:	ebfffe80 	bl	0xbe8
    11e4:	e1a09000 	mov	r9, r0
    11e8:	e30c1720 	movw	r1, #50976	; 0xc720
    11ec:	e5940000 	ldr	r0, [r4]
    11f0:	e7906001 	ldr	r6, [r0, r1]
    11f4:	e3a00001 	mov	r0, #1
    11f8:	e1866810 	orr	r6, r6, r0, lsl r8
    11fc:	e1866710 	orr	r6, r6, r0, lsl r7
    1200:	e5940000 	ldr	r0, [r4]
    1204:	e7806001 	str	r6, [r0, r1]
    1208:	e1a00009 	mov	r0, r9
    120c:	e8bd83fe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, pc}
    1210:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    1214:	e1a06000 	mov	r6, r0
    1218:	e1a04001 	mov	r4, r1
    121c:	e1a0a002 	mov	sl, r2
    1220:	e1a09003 	mov	r9, r3
    1224:	e1a05004 	mov	r5, r4
    1228:	e3590000 	cmp	r9, #0
    122c:	0a000001 	beq	0x1238
    1230:	e3e00000 	mvn	r0, #0
    1234:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    1238:	e5968058 	ldr	r8, [r6, #88]	; 0x58
    123c:	e3a07000 	mov	r7, #0
    1240:	e3a02009 	mov	r2, #9
    1244:	e1a00004 	mov	r0, r4
    1248:	e5961048 	ldr	r1, [r6, #72]	; 0x48
    124c:	ebfffe4f 	bl	0xb90
    1250:	e2844009 	add	r4, r4, #9
    1254:	e3a02009 	mov	r2, #9
    1258:	e1a00004 	mov	r0, r4
    125c:	e596104c 	ldr	r1, [r6, #76]	; 0x4c
    1260:	ebfffe4a 	bl	0xb90
    1264:	e2844009 	add	r4, r4, #9
    1268:	e3a02007 	mov	r2, #7
    126c:	e1a00004 	mov	r0, r4
    1270:	e5981000 	ldr	r1, [r8]
    1274:	ebfffe45 	bl	0xb90
    1278:	e2844007 	add	r4, r4, #7
    127c:	e3a02007 	mov	r2, #7
    1280:	e1a00004 	mov	r0, r4
    1284:	e5981004 	ldr	r1, [r8, #4]
    1288:	ebfffe40 	bl	0xb90
    128c:	e2844007 	add	r4, r4, #7
    1290:	e3a07020 	mov	r7, #32
    1294:	e3a00009 	mov	r0, #9
    1298:	e5c50000 	strb	r0, [r5]
    129c:	e3a00002 	mov	r0, #2
    12a0:	e5c50001 	strb	r0, [r5, #1]
    12a4:	e1c570b2 	strh	r7, [r5, #2]
    12a8:	e5d50007 	ldrb	r0, [r5, #7]
    12ac:	e3800080 	orr	r0, r0, #128	; 0x80
    12b0:	e5c50007 	strb	r0, [r5, #7]
    12b4:	e1a00007 	mov	r0, r7
    12b8:	eaffffdd 	b	0x1234
    12bc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    12c0:	e1a08000 	mov	r8, r0
    12c4:	e1a05001 	mov	r5, r1
    12c8:	e3a04000 	mov	r4, #0
    12cc:	e1d560b2 	ldrh	r6, [r5, #2]
    12d0:	e3a07000 	mov	r7, #0
    12d4:	e2884070 	add	r4, r8, #112	; 0x70
    12d8:	e5d50001 	ldrb	r0, [r5, #1]
    12dc:	e3500006 	cmp	r0, #6
    12e0:	1a00003d 	bne	0x13dc
    12e4:	e5d50000 	ldrb	r0, [r5]
    12e8:	e3500080 	cmp	r0, #128	; 0x80
    12ec:	0a000000 	beq	0x12f4
    12f0:	ea00003b 	b	0x13e4
    12f4:	e1a00446 	asr	r0, r6, #8
    12f8:	e3500001 	cmp	r0, #1
    12fc:	0a000004 	beq	0x1314
    1300:	e3500002 	cmp	r0, #2
    1304:	0a000011 	beq	0x1350
    1308:	e3500003 	cmp	r0, #3
    130c:	1a000030 	bne	0x13d4
    1310:	ea00001f 	b	0x1394
    1314:	e320f000 	nop	{0}
    1318:	e1d500b6 	ldrh	r0, [r5, #6]
    131c:	e3500012 	cmp	r0, #18
    1320:	9a000001 	bls	0x132c
    1324:	e3a07012 	mov	r7, #18
    1328:	ea000000 	b	0x1330
    132c:	e1d570b6 	ldrh	r7, [r5, #6]
    1330:	e5981044 	ldr	r1, [r8, #68]	; 0x44
    1334:	e1a02007 	mov	r2, r7
    1338:	e5940000 	ldr	r0, [r4]
    133c:	ebfffe13 	bl	0xb90
    1340:	e5847004 	str	r7, [r4, #4]
    1344:	e3a00000 	mov	r0, #0
    1348:	e584000c 	str	r0, [r4, #12]
    134c:	ea000020 	b	0x13d4
    1350:	e320f000 	nop	{0}
    1354:	e20630ff 	and	r3, r6, #255	; 0xff
    1358:	e1a02446 	asr	r2, r6, #8
    135c:	e1a00008 	mov	r0, r8
    1360:	e5941000 	ldr	r1, [r4]
    1364:	ebffffa9 	bl	0x1210
    1368:	e1a07000 	mov	r7, r0
    136c:	e1d500b6 	ldrh	r0, [r5, #6]
    1370:	e1500007 	cmp	r0, r7
    1374:	ba000001 	blt	0x1380
    1378:	e5847004 	str	r7, [r4, #4]
    137c:	ea000001 	b	0x1388
    1380:	e1d500b6 	ldrh	r0, [r5, #6]
    1384:	e5840004 	str	r0, [r4, #4]
    1388:	e3a00000 	mov	r0, #0
    138c:	e584000c 	str	r0, [r4, #12]
    1390:	ea00000f 	b	0x13d4
    1394:	e320f000 	nop	{0}
    1398:	e20610ff 	and	r1, r6, #255	; 0xff
    139c:	e3510000 	cmp	r1, #0
    13a0:	1a000009 	bne	0x13cc
    13a4:	e5940000 	ldr	r0, [r4]
    13a8:	e3a02004 	mov	r2, #4
    13ac:	e5c02000 	strb	r2, [r0]
    13b0:	e3a02003 	mov	r2, #3
    13b4:	e5c02001 	strb	r2, [r0, #1]
    13b8:	e3a02009 	mov	r2, #9
    13bc:	e5c02002 	strb	r2, [r0, #2]
    13c0:	e3a02004 	mov	r2, #4
    13c4:	e5c02003 	strb	r2, [r0, #3]
    13c8:	ea000001 	b	0x13d4
    13cc:	e320f000 	nop	{0}
    13d0:	e320f000 	nop	{0}
    13d4:	e320f000 	nop	{0}
    13d8:	ea000001 	b	0x13e4
    13dc:	e320f000 	nop	{0}
    13e0:	e320f000 	nop	{0}
    13e4:	e320f000 	nop	{0}
    13e8:	e3a03005 	mov	r3, #5
    13ec:	e3a02001 	mov	r2, #1
    13f0:	e1a01004 	mov	r1, r4
    13f4:	e1a00008 	mov	r0, r8
    13f8:	ebfffe22 	bl	0xc88
    13fc:	e3a00000 	mov	r0, #0
    1400:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    1404:	e92d4070 	push	{r4, r5, r6, lr}
    1408:	e1a04000 	mov	r4, r0
    140c:	e3a05000 	mov	r5, #0
    1410:	e2845024 	add	r5, r4, #36	; 0x24
    1414:	e5d50001 	ldrb	r0, [r5, #1]
    1418:	e3500005 	cmp	r0, #5
    141c:	0a00000e 	beq	0x145c
    1420:	e3500006 	cmp	r0, #6
    1424:	0a000013 	beq	0x1478
    1428:	e3500009 	cmp	r0, #9
    142c:	0a000002 	beq	0x143c
    1430:	e350000b 	cmp	r0, #11
    1434:	1a000018 	bne	0x149c
    1438:	ea000005 	b	0x1454
    143c:	e320f000 	nop	{0}
    1440:	e5940008 	ldr	r0, [r4, #8]
    1444:	ebfffed4 	bl	0xf9c
    1448:	e3a00001 	mov	r0, #1
    144c:	e5840040 	str	r0, [r4, #64]	; 0x40
    1450:	ea000013 	b	0x14a4
    1454:	e320f000 	nop	{0}
    1458:	ea000011 	b	0x14a4
    145c:	e320f000 	nop	{0}
    1460:	e1d510b2 	ldrh	r1, [r5, #2]
    1464:	e5940008 	ldr	r0, [r4, #8]
    1468:	ebfffec0 	bl	0xf70
    146c:	e3a00001 	mov	r0, #1
    1470:	e5840040 	str	r0, [r4, #64]	; 0x40
    1474:	ea00000a 	b	0x14a4
    1478:	e320f000 	nop	{0}
    147c:	e3a00005 	mov	r0, #5
    1480:	e5840030 	str	r0, [r4, #48]	; 0x30
    1484:	e1a01005 	mov	r1, r5
    1488:	e1a00004 	mov	r0, r4
    148c:	ebffff8a 	bl	0x12bc
    1490:	e3a00002 	mov	r0, #2
    1494:	e584002c 	str	r0, [r4, #44]	; 0x2c
    1498:	ea000001 	b	0x14a4
    149c:	e320f000 	nop	{0}
    14a0:	e320f000 	nop	{0}
    14a4:	e320f000 	nop	{0}
    14a8:	e3a02008 	mov	r2, #8
    14ac:	e3a01000 	mov	r1, #0
    14b0:	e2840024 	add	r0, r4, #36	; 0x24
    14b4:	ebfffdac 	bl	0xb6c
    14b8:	e3a00000 	mov	r0, #0
    14bc:	e8bd8070 	pop	{r4, r5, r6, pc}
    14c0:	e92d4070 	push	{r4, r5, r6, lr}
    14c4:	e1a04000 	mov	r4, r0
    14c8:	e1a05001 	mov	r5, r1
    14cc:	e594002c 	ldr	r0, [r4, #44]	; 0x2c
    14d0:	e3500001 	cmp	r0, #1
    14d4:	0a000006 	beq	0x14f4
    14d8:	e3500002 	cmp	r0, #2
    14dc:	0a000008 	beq	0x1504
    14e0:	e3500004 	cmp	r0, #4
    14e4:	0a00000a 	beq	0x1514
    14e8:	e3500005 	cmp	r0, #5
    14ec:	1a000010 	bne	0x1534
    14f0:	ea000009 	b	0x151c
    14f4:	e320f000 	nop	{0}
    14f8:	e1a00004 	mov	r0, r4
    14fc:	ebffffc0 	bl	0x1404
    1500:	ea00000d 	b	0x153c
    1504:	e320f000 	nop	{0}
    1508:	e3a00003 	mov	r0, #3
    150c:	e584002c 	str	r0, [r4, #44]	; 0x2c
    1510:	ea000009 	b	0x153c
    1514:	e320f000 	nop	{0}
    1518:	ea000007 	b	0x153c
    151c:	e320f000 	nop	{0}
    1520:	e1a00004 	mov	r0, r4
    1524:	ebfffe0b 	bl	0xd58
    1528:	e3a00001 	mov	r0, #1
    152c:	e584002c 	str	r0, [r4, #44]	; 0x2c
    1530:	ea000001 	b	0x153c
    1534:	e320f000 	nop	{0}
    1538:	e320f000 	nop	{0}
    153c:	e320f000 	nop	{0}
    1540:	e3a00000 	mov	r0, #0
    1544:	e8bd8070 	pop	{r4, r5, r6, pc}
    1548:	e92d4070 	push	{r4, r5, r6, lr}
    154c:	e1a04000 	mov	r4, r0
    1550:	e1a05001 	mov	r5, r1
    1554:	e7e30355 	ubfx	r0, r5, #6, #4
    1558:	e3500008 	cmp	r0, #8
    155c:	308ff100 	addcc	pc, pc, r0, lsl #2
    1560:	ea00002a 	b	0x1610
    1564:	ea000029 	b	0x1610
    1568:	ea000005 	b	0x1584
    156c:	ea000009 	b	0x1598
    1570:	ea00000a 	b	0x15a0
    1574:	ea00001f 	b	0x15f8
    1578:	ea000024 	b	0x1610
    157c:	ea00001f 	b	0x1600
    1580:	ea000020 	b	0x1608
    1584:	e320f000 	nop	{0}
    1588:	e1a01005 	mov	r1, r5
    158c:	e1a00004 	mov	r0, r4
    1590:	ebffffca 	bl	0x14c0
    1594:	ea00001f 	b	0x1618
    1598:	e320f000 	nop	{0}
    159c:	ea00001d 	b	0x1618
    15a0:	e320f000 	nop	{0}
    15a4:	e594002c 	ldr	r0, [r4, #44]	; 0x2c
    15a8:	e3500003 	cmp	r0, #3
    15ac:	1a000005 	bne	0x15c8
    15b0:	e3a00004 	mov	r0, #4
    15b4:	e5840030 	str	r0, [r4, #48]	; 0x30
    15b8:	e1a00004 	mov	r0, r4
    15bc:	ebfffdff 	bl	0xdc0
    15c0:	e3a00005 	mov	r0, #5
    15c4:	e584002c 	str	r0, [r4, #44]	; 0x2c
    15c8:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    15cc:	e3500000 	cmp	r0, #0
    15d0:	0a000007 	beq	0x15f4
    15d4:	e3a00000 	mov	r0, #0
    15d8:	e5840040 	str	r0, [r4, #64]	; 0x40
    15dc:	e3a00003 	mov	r0, #3
    15e0:	e5840030 	str	r0, [r4, #48]	; 0x30
    15e4:	e1a00004 	mov	r0, r4
    15e8:	ebfffdf4 	bl	0xdc0
    15ec:	e3a00005 	mov	r0, #5
    15f0:	e584002c 	str	r0, [r4, #44]	; 0x2c
    15f4:	ea000007 	b	0x1618
    15f8:	e320f000 	nop	{0}
    15fc:	ea000005 	b	0x1618
    1600:	e320f000 	nop	{0}
    1604:	ea000003 	b	0x1618
    1608:	e320f000 	nop	{0}
    160c:	ea000001 	b	0x1618
    1610:	e320f000 	nop	{0}
    1614:	e320f000 	nop	{0}
    1618:	e320f000 	nop	{0}
    161c:	e3a00000 	mov	r0, #0
    1620:	e8bd8070 	pop	{r4, r5, r6, pc}
    1624:	e92d4010 	push	{r4, lr}
    1628:	e7e420d1 	ubfx	r2, r1, #1, #5
    162c:	e3520002 	cmp	r2, #2
    1630:	1a000002 	bne	0x1640
    1634:	e3a03000 	mov	r3, #0
    1638:	e5c030b4 	strb	r3, [r0, #180]	; 0xb4
    163c:	ea000003 	b	0x1650
    1640:	e3520003 	cmp	r2, #3
    1644:	1a000001 	bne	0x1650
    1648:	e3a03000 	mov	r3, #0
    164c:	e5c0309c 	strb	r3, [r0, #156]	; 0x9c
    1650:	e8bd8010 	pop	{r4, pc}
    1654:	e92d4070 	push	{r4, r5, r6, lr}
    1658:	e1a05000 	mov	r5, r0
    165c:	e1a04001 	mov	r4, r1
    1660:	e7e30354 	ubfx	r0, r4, #6, #4
    1664:	e3500008 	cmp	r0, #8
    1668:	308ff100 	addcc	pc, pc, r0, lsl #2
    166c:	ea000016 	b	0x16cc
    1670:	ea000015 	b	0x16cc
    1674:	ea000005 	b	0x1690
    1678:	ea000009 	b	0x16a4
    167c:	ea00000a 	b	0x16ac
    1680:	ea00000b 	b	0x16b4
    1684:	ea000010 	b	0x16cc
    1688:	ea00000b 	b	0x16bc
    168c:	ea00000c 	b	0x16c4
    1690:	e320f000 	nop	{0}
    1694:	e1a01004 	mov	r1, r4
    1698:	e1a00005 	mov	r0, r5
    169c:	ebffffe0 	bl	0x1624
    16a0:	ea00000b 	b	0x16d4
    16a4:	e320f000 	nop	{0}
    16a8:	ea000009 	b	0x16d4
    16ac:	e320f000 	nop	{0}
    16b0:	ea000007 	b	0x16d4
    16b4:	e320f000 	nop	{0}
    16b8:	ea000005 	b	0x16d4
    16bc:	e320f000 	nop	{0}
    16c0:	ea000003 	b	0x16d4
    16c4:	e320f000 	nop	{0}
    16c8:	ea000001 	b	0x16d4
    16cc:	e320f000 	nop	{0}
    16d0:	e320f000 	nop	{0}
    16d4:	e320f000 	nop	{0}
    16d8:	e8bd8070 	pop	{r4, r5, r6, pc}
    16dc:	e92d4070 	push	{r4, r5, r6, lr}
    16e0:	e1a05000 	mov	r5, r0
    16e4:	e1a04001 	mov	r4, r1
    16e8:	e7e400d4 	ubfx	r0, r4, #1, #5
    16ec:	e3500000 	cmp	r0, #0
    16f0:	0a000002 	beq	0x1700
    16f4:	e7e400d4 	ubfx	r0, r4, #1, #5
    16f8:	e3500001 	cmp	r0, #1
    16fc:	1a000003 	bne	0x1710
    1700:	e1a01004 	mov	r1, r4
    1704:	e1a00005 	mov	r0, r5
    1708:	ebffff8e 	bl	0x1548
    170c:	ea000002 	b	0x171c
    1710:	e1a01004 	mov	r1, r4
    1714:	e1a00005 	mov	r0, r5
    1718:	ebffffcd 	bl	0x1654
    171c:	e3a00000 	mov	r0, #0
    1720:	e8bd8070 	pop	{r4, r5, r6, pc}
    1724:	e1a02001 	mov	r2, r1
    1728:	e5903000 	ldr	r3, [r0]
    172c:	e2833903 	add	r3, r3, #49152	; 0xc000
    1730:	e5931200 	ldr	r1, [r3, #512]	; 0x200
    1734:	e3520000 	cmp	r2, #0
    1738:	0a000001 	beq	0x1744
    173c:	e3c11040 	bic	r1, r1, #64	; 0x40
    1740:	ea000000 	b	0x1748
    1744:	e3811040 	orr	r1, r1, #64	; 0x40
    1748:	e5903000 	ldr	r3, [r0]
    174c:	e2833903 	add	r3, r3, #49152	; 0xc000
    1750:	e5831200 	str	r1, [r3, #512]	; 0x200
    1754:	e12fff1e 	bx	lr
    1758:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    175c:	e1a05000 	mov	r5, r0
    1760:	e1a09001 	mov	r9, r1
    1764:	e3a08000 	mov	r8, #0
    1768:	e3a06000 	mov	r6, #0
    176c:	e3a04000 	mov	r4, #0
    1770:	e5954008 	ldr	r4, [r5, #8]
    1774:	e7e38459 	ubfx	r8, r9, #8, #4
    1778:	e358000a 	cmp	r8, #10
    177c:	308ff108 	addcc	pc, pc, r8, lsl #2
    1780:	ea00007f 	b	0x1984
    1784:	ea000008 	b	0x17ac
    1788:	ea00000e 	b	0x17c8
    178c:	ea00002d 	b	0x1848
    1790:	ea000067 	b	0x1934
    1794:	ea00006b 	b	0x1948
    1798:	ea000079 	b	0x1984
    179c:	ea000078 	b	0x1984
    17a0:	ea00006d 	b	0x195c
    17a4:	ea000076 	b	0x1984
    17a8:	ea000070 	b	0x1970
    17ac:	e320f000 	nop	{0}
    17b0:	e5940078 	ldr	r0, [r4, #120]	; 0x78
    17b4:	e3800001 	orr	r0, r0, #1
    17b8:	e5840078 	str	r0, [r4, #120]	; 0x78
    17bc:	e3a00001 	mov	r0, #1
    17c0:	e5850004 	str	r0, [r5, #4]
    17c4:	ea000070 	b	0x198c
    17c8:	e320f000 	nop	{0}
    17cc:	e5940078 	ldr	r0, [r4, #120]	; 0x78
    17d0:	e3800002 	orr	r0, r0, #2
    17d4:	e5840078 	str	r0, [r4, #120]	; 0x78
    17d8:	e3a01001 	mov	r1, #1
    17dc:	e1a00004 	mov	r0, r4
    17e0:	ebffffcf 	bl	0x1724
    17e4:	e30c1704 	movw	r1, #50948	; 0xc704
    17e8:	e5940000 	ldr	r0, [r4]
    17ec:	e7906001 	ldr	r6, [r0, r1]
    17f0:	e3c6601e 	bic	r6, r6, #30
    17f4:	e5940000 	ldr	r0, [r4]
    17f8:	e7806001 	str	r6, [r0, r1]
    17fc:	e1a00004 	mov	r0, r4
    1800:	ebfffdd1 	bl	0xf4c
    1804:	e1a00004 	mov	r0, r4
    1808:	ebfffdb7 	bl	0xeec
    180c:	e5940000 	ldr	r0, [r4]
    1810:	e2800cc7 	add	r0, r0, #50944	; 0xc700
    1814:	e5906000 	ldr	r6, [r0]
    1818:	e3c66ffe 	bic	r6, r6, #1016	; 0x3f8
    181c:	e5940000 	ldr	r0, [r4]
    1820:	e2800cc7 	add	r0, r0, #50944	; 0xc700
    1824:	e5806000 	str	r6, [r0]
    1828:	e1a00005 	mov	r0, r5
    182c:	ebfffd49 	bl	0xd58
    1830:	e3a00001 	mov	r0, #1
    1834:	e585002c 	str	r0, [r5, #44]	; 0x2c
    1838:	e595003c 	ldr	r0, [r5, #60]	; 0x3c
    183c:	e2800001 	add	r0, r0, #1
    1840:	e585003c 	str	r0, [r5, #60]	; 0x3c
    1844:	ea000050 	b	0x198c
    1848:	e320f000 	nop	{0}
    184c:	e30c170c 	movw	r1, #50956	; 0xc70c
    1850:	e5940000 	ldr	r0, [r4]
    1854:	e7906001 	ldr	r6, [r0, r1]
    1858:	e206a007 	and	sl, r6, #7
    185c:	e3a0200c 	mov	r2, #12
    1860:	e3a01000 	mov	r1, #0
    1864:	e1a0000d 	mov	r0, sp
    1868:	ebfffcbf 	bl	0xb6c
    186c:	e3000500 	movw	r0, #1280	; 0x500
    1870:	e58d0004 	str	r0, [sp, #4]
    1874:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    1878:	e3500000 	cmp	r0, #0
    187c:	1a000002 	bne	0x188c
    1880:	e3000200 	movw	r0, #512	; 0x200
    1884:	e58d0008 	str	r0, [sp, #8]
    1888:	ea000004 	b	0x18a0
    188c:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    1890:	e3500001 	cmp	r0, #1
    1894:	1a000001 	bne	0x18a0
    1898:	e3000200 	movw	r0, #512	; 0x200
    189c:	e58d0008 	str	r0, [sp, #8]
    18a0:	e3a07001 	mov	r7, #1
    18a4:	e3877c01 	orr	r7, r7, #256	; 0x100
    18a8:	e1a0300d 	mov	r3, sp
    18ac:	e1a02007 	mov	r2, r7
    18b0:	e3a01000 	mov	r1, #0
    18b4:	e1a00004 	mov	r0, r4
    18b8:	ebfffcca 	bl	0xbe8
    18bc:	e1a0b000 	mov	fp, r0
    18c0:	e3a0200c 	mov	r2, #12
    18c4:	e3a01000 	mov	r1, #0
    18c8:	e1a0000d 	mov	r0, sp
    18cc:	ebfffca6 	bl	0xb6c
    18d0:	e59f0610 	ldr	r0, [pc, #1552]	; 0x1ee8
    18d4:	e58d0004 	str	r0, [sp, #4]
    18d8:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    18dc:	e3500000 	cmp	r0, #0
    18e0:	1a000002 	bne	0x18f0
    18e4:	e3000200 	movw	r0, #512	; 0x200
    18e8:	e58d0008 	str	r0, [sp, #8]
    18ec:	ea000004 	b	0x1904
    18f0:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    18f4:	e3500001 	cmp	r0, #1
    18f8:	1a000001 	bne	0x1904
    18fc:	e3000200 	movw	r0, #512	; 0x200
    1900:	e58d0008 	str	r0, [sp, #8]
    1904:	e3a07001 	mov	r7, #1
    1908:	e3877c01 	orr	r7, r7, #256	; 0x100
    190c:	e1a0300d 	mov	r3, sp
    1910:	e1a02007 	mov	r2, r7
    1914:	e3a01001 	mov	r1, #1
    1918:	e1a00004 	mov	r0, r4
    191c:	ebfffcb1 	bl	0xbe8
    1920:	e1a0b000 	mov	fp, r0
    1924:	e5940078 	ldr	r0, [r4, #120]	; 0x78
    1928:	e3800004 	orr	r0, r0, #4
    192c:	e5840078 	str	r0, [r4, #120]	; 0x78
    1930:	ea000015 	b	0x198c
    1934:	e320f000 	nop	{0}
    1938:	e5940078 	ldr	r0, [r4, #120]	; 0x78
    193c:	e3800008 	orr	r0, r0, #8
    1940:	e5840078 	str	r0, [r4, #120]	; 0x78
    1944:	ea000010 	b	0x198c
    1948:	e320f000 	nop	{0}
    194c:	e5940078 	ldr	r0, [r4, #120]	; 0x78
    1950:	e3800010 	orr	r0, r0, #16
    1954:	e5840078 	str	r0, [r4, #120]	; 0x78
    1958:	ea00000b 	b	0x198c
    195c:	e320f000 	nop	{0}
    1960:	e5940078 	ldr	r0, [r4, #120]	; 0x78
    1964:	e3800080 	orr	r0, r0, #128	; 0x80
    1968:	e5840078 	str	r0, [r4, #120]	; 0x78
    196c:	ea000006 	b	0x198c
    1970:	e320f000 	nop	{0}
    1974:	e5940078 	ldr	r0, [r4, #120]	; 0x78
    1978:	e3800c02 	orr	r0, r0, #512	; 0x200
    197c:	e5840078 	str	r0, [r4, #120]	; 0x78
    1980:	ea000001 	b	0x198c
    1984:	e320f000 	nop	{0}
    1988:	e320f000 	nop	{0}
    198c:	e320f000 	nop	{0}
    1990:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    1994:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    1998:	e1a06000 	mov	r6, r0
    199c:	e3a04000 	mov	r4, #0
    19a0:	e5967008 	ldr	r7, [r6, #8]
    19a4:	e30c140c 	movw	r1, #50188	; 0xc40c
    19a8:	e5970000 	ldr	r0, [r7]
    19ac:	e7908001 	ldr	r8, [r0, r1]
    19b0:	e30f0ffc 	movw	r0, #65532	; 0xfffc
    19b4:	e0088000 	and	r8, r8, r0
    19b8:	e1a09008 	mov	r9, r8
    19bc:	e5960008 	ldr	r0, [r6, #8]
    19c0:	e2804008 	add	r4, r0, #8
    19c4:	ea000024 	b	0x1a5c
    19c8:	e3a05000 	mov	r5, #0
    19cc:	e5940000 	ldr	r0, [r4]
    19d0:	e594100c 	ldr	r1, [r4, #12]
    19d4:	e7905001 	ldr	r5, [r0, r1]
    19d8:	e3150001 	tst	r5, #1
    19dc:	1a000003 	bne	0x19f0
    19e0:	e1a01005 	mov	r1, r5
    19e4:	e1a00006 	mov	r0, r6
    19e8:	ebffff3b 	bl	0x16dc
    19ec:	ea00000c 	b	0x1a24
    19f0:	e7e600d5 	ubfx	r0, r5, #1, #7
    19f4:	e3500000 	cmp	r0, #0
    19f8:	1a000009 	bne	0x1a24
    19fc:	e7e600d5 	ubfx	r0, r5, #1, #7
    1a00:	e3500000 	cmp	r0, #0
    1a04:	1a000003 	bne	0x1a18
    1a08:	e1a01005 	mov	r1, r5
    1a0c:	e1a00006 	mov	r0, r6
    1a10:	ebffff50 	bl	0x1758
    1a14:	ea000001 	b	0x1a20
    1a18:	e320f000 	nop	{0}
    1a1c:	e320f000 	nop	{0}
    1a20:	e320f000 	nop	{0}
    1a24:	e594000c 	ldr	r0, [r4, #12]
    1a28:	e2800004 	add	r0, r0, #4
    1a2c:	e584000c 	str	r0, [r4, #12]
    1a30:	e594000c 	ldr	r0, [r4, #12]
    1a34:	e3500c01 	cmp	r0, #256	; 0x100
    1a38:	3a000001 	bcc	0x1a44
    1a3c:	e3a00000 	mov	r0, #0
    1a40:	e584000c 	str	r0, [r4, #12]
    1a44:	e2499004 	sub	r9, r9, #4
    1a48:	e3a00004 	mov	r0, #4
    1a4c:	e30c240c 	movw	r2, #50188	; 0xc40c
    1a50:	e5971000 	ldr	r1, [r7]
    1a54:	e7810002 	str	r0, [r1, r2]
    1a58:	e320f000 	nop	{0}
    1a5c:	e3590000 	cmp	r9, #0
    1a60:	caffffd8 	bgt	0x19c8
    1a64:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    1a68:	e92d4010 	push	{r4, lr}
    1a6c:	e3002100 	movw	r2, #256	; 0x100
    1a70:	e3a010cc 	mov	r1, #204	; 0xcc
    1a74:	e59f0480 	ldr	r0, [pc, #1152]	; 0x1efc
    1a78:	ebfffc3b 	bl	0xb6c
    1a7c:	e8bd8010 	pop	{r4, pc}
    1a80:	e3a01012 	mov	r1, #18
    1a84:	e5c01000 	strb	r1, [r0]
    1a88:	e3a01001 	mov	r1, #1
    1a8c:	e5c01001 	strb	r1, [r0, #1]
    1a90:	e3001110 	movw	r1, #272	; 0x110
    1a94:	e1c010b2 	strh	r1, [r0, #2]
    1a98:	e3a01000 	mov	r1, #0
    1a9c:	e5c01004 	strb	r1, [r0, #4]
    1aa0:	e5c01005 	strb	r1, [r0, #5]
    1aa4:	e5c01006 	strb	r1, [r0, #6]
    1aa8:	e3a01040 	mov	r1, #64	; 0x40
    1aac:	e5c01007 	strb	r1, [r0, #7]
    1ab0:	e3011f3a 	movw	r1, #7994	; 0x1f3a
    1ab4:	e1c010b8 	strh	r1, [r0, #8]
    1ab8:	e30e1fe8 	movw	r1, #61416	; 0xefe8
    1abc:	e1c010ba 	strh	r1, [r0, #10]
    1ac0:	e30012b3 	movw	r1, #691	; 0x2b3
    1ac4:	e1c010bc 	strh	r1, [r0, #12]
    1ac8:	e3a01000 	mov	r1, #0
    1acc:	e5c0100e 	strb	r1, [r0, #14]
    1ad0:	e5c0100f 	strb	r1, [r0, #15]
    1ad4:	e5c01010 	strb	r1, [r0, #16]
    1ad8:	e3a01001 	mov	r1, #1
    1adc:	e5c01011 	strb	r1, [r0, #17]
    1ae0:	e12fff1e 	bx	lr
    1ae4:	e3a0100a 	mov	r1, #10
    1ae8:	e5c01000 	strb	r1, [r0]
    1aec:	e3a01002 	mov	r1, #2
    1af0:	e5c01001 	strb	r1, [r0, #1]
    1af4:	e3a01020 	mov	r1, #32
    1af8:	e1c010b2 	strh	r1, [r0, #2]
    1afc:	e3a01001 	mov	r1, #1
    1b00:	e5c01004 	strb	r1, [r0, #4]
    1b04:	e5c01005 	strb	r1, [r0, #5]
    1b08:	e3a01000 	mov	r1, #0
    1b0c:	e5c01006 	strb	r1, [r0, #6]
    1b10:	e3a01080 	mov	r1, #128	; 0x80
    1b14:	e5c01007 	strb	r1, [r0, #7]
    1b18:	e3a01096 	mov	r1, #150	; 0x96
    1b1c:	e5c01008 	strb	r1, [r0, #8]
    1b20:	e12fff1e 	bx	lr
    1b24:	e3a01009 	mov	r1, #9
    1b28:	e5c01000 	strb	r1, [r0]
    1b2c:	e3a01004 	mov	r1, #4
    1b30:	e5c01001 	strb	r1, [r0, #1]
    1b34:	e3a01000 	mov	r1, #0
    1b38:	e5c01002 	strb	r1, [r0, #2]
    1b3c:	e5c01003 	strb	r1, [r0, #3]
    1b40:	e3a01002 	mov	r1, #2
    1b44:	e5c01004 	strb	r1, [r0, #4]
    1b48:	e3a010ff 	mov	r1, #255	; 0xff
    1b4c:	e5c01005 	strb	r1, [r0, #5]
    1b50:	e5c01006 	strb	r1, [r0, #6]
    1b54:	e5c01007 	strb	r1, [r0, #7]
    1b58:	e3a01000 	mov	r1, #0
    1b5c:	e5c01008 	strb	r1, [r0, #8]
    1b60:	e12fff1e 	bx	lr
    1b64:	e3a01007 	mov	r1, #7
    1b68:	e5c01000 	strb	r1, [r0]
    1b6c:	e3a01005 	mov	r1, #5
    1b70:	e5c01001 	strb	r1, [r0, #1]
    1b74:	e3a01040 	mov	r1, #64	; 0x40
    1b78:	e1c010b4 	strh	r1, [r0, #4]
    1b7c:	e3a01001 	mov	r1, #1
    1b80:	e5c01002 	strb	r1, [r0, #2]
    1b84:	e3a01002 	mov	r1, #2
    1b88:	e5c01003 	strb	r1, [r0, #3]
    1b8c:	e3a01000 	mov	r1, #0
    1b90:	e5c01006 	strb	r1, [r0, #6]
    1b94:	e12fff1e 	bx	lr
    1b98:	e3a01007 	mov	r1, #7
    1b9c:	e5c01000 	strb	r1, [r0]
    1ba0:	e3a01005 	mov	r1, #5
    1ba4:	e5c01001 	strb	r1, [r0, #1]
    1ba8:	e3a01040 	mov	r1, #64	; 0x40
    1bac:	e1c010b4 	strh	r1, [r0, #4]
    1bb0:	e3a01081 	mov	r1, #129	; 0x81
    1bb4:	e5c01002 	strb	r1, [r0, #2]
    1bb8:	e3a01002 	mov	r1, #2
    1bbc:	e5c01003 	strb	r1, [r0, #3]
    1bc0:	e3a01000 	mov	r1, #0
    1bc4:	e5c01006 	strb	r1, [r0, #6]
    1bc8:	e12fff1e 	bx	lr
    1bcc:	e5802000 	str	r2, [r0]
    1bd0:	e5801004 	str	r1, [r0, #4]
    1bd4:	e12fff1e 	bx	lr
    1bd8:	e12fff1e 	bx	lr
    1bdc:	e12fff1e 	bx	lr
    1be0:	e12fff1e 	bx	lr
    1be4:	e92d4010 	push	{r4, lr}
    1be8:	e5801000 	str	r1, [r0]
    1bec:	e3a04000 	mov	r4, #0
    1bf0:	e5c04004 	strb	r4, [r0, #4]
    1bf4:	e5804008 	str	r4, [r0, #8]
    1bf8:	e5802014 	str	r2, [r0, #20]
    1bfc:	e5804018 	str	r4, [r0, #24]
    1c00:	e580300c 	str	r3, [r0, #12]
    1c04:	e5804010 	str	r4, [r0, #16]
    1c08:	e8bd8010 	pop	{r4, pc}
    1c0c:	e92d4070 	push	{r4, r5, r6, lr}
    1c10:	e1a04000 	mov	r4, r0
    1c14:	e1a05001 	mov	r5, r1
    1c18:	e3a02018 	mov	r2, #24
    1c1c:	e3a01000 	mov	r1, #0
    1c20:	e1a00004 	mov	r0, r4
    1c24:	ebfffbd0 	bl	0xb6c
    1c28:	e5845000 	str	r5, [r4]
    1c2c:	e3a00000 	mov	r0, #0
    1c30:	e5840004 	str	r0, [r4, #4]
    1c34:	e5840008 	str	r0, [r4, #8]
    1c38:	e584000c 	str	r0, [r4, #12]
    1c3c:	e5c40014 	strb	r0, [r4, #20]
    1c40:	e8bd8070 	pop	{r4, r5, r6, pc}
    1c44:	e92d4070 	push	{r4, r5, r6, lr}
    1c48:	e1a04000 	mov	r4, r0
    1c4c:	e1a05001 	mov	r5, r1
    1c50:	e3a02080 	mov	r2, #128	; 0x80
    1c54:	e3a01000 	mov	r1, #0
    1c58:	e1a00004 	mov	r0, r4
    1c5c:	ebfffbc2 	bl	0xb6c
    1c60:	e3a00609 	mov	r0, #9437184	; 0x900000
    1c64:	e5840000 	str	r0, [r4]
    1c68:	e3a00067 	mov	r0, #103	; 0x67
    1c6c:	e5840004 	str	r0, [r4, #4]
    1c70:	e59f0288 	ldr	r0, [pc, #648]	; 0x1f00
    1c74:	e5840018 	str	r0, [r4, #24]
    1c78:	e3a00002 	mov	r0, #2
    1c7c:	e5840044 	str	r0, [r4, #68]	; 0x44
    1c80:	e3a00001 	mov	r0, #1
    1c84:	e5840040 	str	r0, [r4, #64]	; 0x40
    1c88:	e5845074 	str	r5, [r4, #116]	; 0x74
    1c8c:	e3a02024 	mov	r2, #36	; 0x24
    1c90:	e3a01000 	mov	r1, #0
    1c94:	e5940074 	ldr	r0, [r4, #116]	; 0x74
    1c98:	ebfffbb3 	bl	0xb6c
    1c9c:	e3a00000 	mov	r0, #0
    1ca0:	e5840048 	str	r0, [r4, #72]	; 0x48
    1ca4:	e584004c 	str	r0, [r4, #76]	; 0x4c
    1ca8:	e5840050 	str	r0, [r4, #80]	; 0x50
    1cac:	e584005c 	str	r0, [r4, #92]	; 0x5c
    1cb0:	e5840060 	str	r0, [r4, #96]	; 0x60
    1cb4:	e5840064 	str	r0, [r4, #100]	; 0x64
    1cb8:	e5840068 	str	r0, [r4, #104]	; 0x68
    1cbc:	e5840054 	str	r0, [r4, #84]	; 0x54
    1cc0:	e5840058 	str	r0, [r4, #88]	; 0x58
    1cc4:	e584007c 	str	r0, [r4, #124]	; 0x7c
    1cc8:	e5941074 	ldr	r1, [r4, #116]	; 0x74
    1ccc:	e5c10008 	strb	r0, [r1, #8]
    1cd0:	e5941074 	ldr	r1, [r4, #116]	; 0x74
    1cd4:	e581000c 	str	r0, [r1, #12]
    1cd8:	e5941074 	ldr	r1, [r4, #116]	; 0x74
    1cdc:	e581001c 	str	r0, [r1, #28]
    1ce0:	e5941074 	ldr	r1, [r4, #116]	; 0x74
    1ce4:	e5810020 	str	r0, [r1, #32]
    1ce8:	e8bd8070 	pop	{r4, r5, r6, pc}
    1cec:	e92d4010 	push	{r4, lr}
    1cf0:	e1a01000 	mov	r1, r0
    1cf4:	e3a02000 	mov	r2, #0
    1cf8:	e2812008 	add	r2, r1, #8
    1cfc:	e5920000 	ldr	r0, [r2]
    1d00:	e5913000 	ldr	r3, [r1]
    1d04:	e2833b31 	add	r3, r3, #50176	; 0xc400
    1d08:	e5830000 	str	r0, [r3]
    1d0c:	e5920008 	ldr	r0, [r2, #8]
    1d10:	e6ff0070 	uxth	r0, r0
    1d14:	e30c4408 	movw	r4, #50184	; 0xc408
    1d18:	e5913000 	ldr	r3, [r1]
    1d1c:	e7830004 	str	r0, [r3, r4]
    1d20:	e3a00000 	mov	r0, #0
    1d24:	e30c440c 	movw	r4, #50188	; 0xc40c
    1d28:	e5913000 	ldr	r3, [r1]
    1d2c:	e7830004 	str	r0, [r3, r4]
    1d30:	e8bd8010 	pop	{r4, pc}
    1d34:	e1a01000 	mov	r1, r0
    1d38:	e3a00000 	mov	r0, #0
    1d3c:	e12fff1e 	bx	lr
    1d40:	e92d40fe 	push	{r1, r2, r3, r4, r5, r6, r7, lr}
    1d44:	e1a07000 	mov	r7, r0
    1d48:	e3a05000 	mov	r5, #0
    1d4c:	e5974008 	ldr	r4, [r7, #8]
    1d50:	e3a01001 	mov	r1, #1
    1d54:	e1a00004 	mov	r0, r4
    1d58:	ebfffe71 	bl	0x1724
    1d5c:	e5940000 	ldr	r0, [r4]
    1d60:	e2800903 	add	r0, r0, #49152	; 0xc000
    1d64:	e5905110 	ldr	r5, [r0, #272]	; 0x110
    1d68:	e3855002 	orr	r5, r5, #2
    1d6c:	e5940000 	ldr	r0, [r4]
    1d70:	e2800903 	add	r0, r0, #49152	; 0xc000
    1d74:	e5805110 	str	r5, [r0, #272]	; 0x110
    1d78:	e5940000 	ldr	r0, [r4]
    1d7c:	e2800cc7 	add	r0, r0, #50944	; 0xc700
    1d80:	e5905000 	ldr	r5, [r0]
    1d84:	e3c55007 	bic	r5, r5, #7
    1d88:	e5940040 	ldr	r0, [r4, #64]	; 0x40
    1d8c:	e1855000 	orr	r5, r5, r0
    1d90:	e5940000 	ldr	r0, [r4]
    1d94:	e2800cc7 	add	r0, r0, #50944	; 0xc700
    1d98:	e5805000 	str	r5, [r0]
    1d9c:	e3a0200c 	mov	r2, #12
    1da0:	e3a01000 	mov	r1, #0
    1da4:	e1a0000d 	mov	r0, sp
    1da8:	ebfffb6f 	bl	0xb6c
    1dac:	e3a06009 	mov	r6, #9
    1db0:	e3866c01 	orr	r6, r6, #256	; 0x100
    1db4:	e1a0300d 	mov	r3, sp
    1db8:	e1a02006 	mov	r2, r6
    1dbc:	e3a01000 	mov	r1, #0
    1dc0:	e1a00004 	mov	r0, r4
    1dc4:	ebfffb87 	bl	0xbe8
    1dc8:	e3a0200c 	mov	r2, #12
    1dcc:	e3a01000 	mov	r1, #0
    1dd0:	e1a0000d 	mov	r0, sp
    1dd4:	ebfffb64 	bl	0xb6c
    1dd8:	e3000500 	movw	r0, #1280	; 0x500
    1ddc:	e58d0004 	str	r0, [sp, #4]
    1de0:	e3010000 	movw	r0, #4096	; 0x1000
    1de4:	e58d0008 	str	r0, [sp, #8]
    1de8:	e3a06001 	mov	r6, #1
    1dec:	e3866c01 	orr	r6, r6, #256	; 0x100
    1df0:	e1a0300d 	mov	r3, sp
    1df4:	e1a02006 	mov	r2, r6
    1df8:	e3a01000 	mov	r1, #0
    1dfc:	e1a00004 	mov	r0, r4
    1e00:	ebfffb78 	bl	0xbe8
    1e04:	e3a0200c 	mov	r2, #12
    1e08:	e3a01000 	mov	r1, #0
    1e0c:	e1a0000d 	mov	r0, sp
    1e10:	ebfffb55 	bl	0xb6c
    1e14:	e59f00cc 	ldr	r0, [pc, #204]	; 0x1ee8
    1e18:	e58d0004 	str	r0, [sp, #4]
    1e1c:	e3010000 	movw	r0, #4096	; 0x1000
    1e20:	e58d0008 	str	r0, [sp, #8]
    1e24:	e3a06001 	mov	r6, #1
    1e28:	e3866c01 	orr	r6, r6, #256	; 0x100
    1e2c:	e1a0300d 	mov	r3, sp
    1e30:	e1a02006 	mov	r2, r6
    1e34:	e3a01001 	mov	r1, #1
    1e38:	e1a00004 	mov	r0, r4
    1e3c:	ebfffb69 	bl	0xbe8
    1e40:	e3a0200c 	mov	r2, #12
    1e44:	e3a01000 	mov	r1, #0
    1e48:	e1a0000d 	mov	r0, sp
    1e4c:	ebfffb46 	bl	0xb6c
    1e50:	e3a00001 	mov	r0, #1
    1e54:	e58d0008 	str	r0, [sp, #8]
    1e58:	e3a06002 	mov	r6, #2
    1e5c:	e3866c01 	orr	r6, r6, #256	; 0x100
    1e60:	e1a0300d 	mov	r3, sp
    1e64:	e1a02006 	mov	r2, r6
    1e68:	e3a01000 	mov	r1, #0
    1e6c:	e1a00004 	mov	r0, r4
    1e70:	ebfffb5c 	bl	0xbe8
    1e74:	e3a0200c 	mov	r2, #12
    1e78:	e3a01000 	mov	r1, #0
    1e7c:	e1a0000d 	mov	r0, sp
    1e80:	ebfffb39 	bl	0xb6c
    1e84:	e3a00001 	mov	r0, #1
    1e88:	e58d0008 	str	r0, [sp, #8]
    1e8c:	e3a06002 	mov	r6, #2
    1e90:	e3866c01 	orr	r6, r6, #256	; 0x100
    1e94:	e1a0300d 	mov	r3, sp
    1e98:	e1a02006 	mov	r2, r6
    1e9c:	e3a01001 	mov	r1, #1
    1ea0:	e1a00004 	mov	r0, r4
    1ea4:	ebfffb4f 	bl	0xbe8
    1ea8:	e3a00003 	mov	r0, #3
    1eac:	e30c2720 	movw	r2, #50976	; 0xc720
    1eb0:	e5941000 	ldr	r1, [r4]
    1eb4:	e7810002 	str	r0, [r1, r2]
    1eb8:	e3010e1f 	movw	r0, #7711	; 0x1e1f
    1ebc:	e30c2708 	movw	r2, #50952	; 0xc708
    1ec0:	e5941000 	ldr	r1, [r4]
    1ec4:	e7810002 	str	r0, [r1, r2]
    1ec8:	e30c1704 	movw	r1, #50948	; 0xc704
    1ecc:	e5940000 	ldr	r0, [r4]
    1ed0:	e7905001 	ldr	r5, [r0, r1]
    1ed4:	e3855102 	orr	r5, r5, #-2147483648	; 0x80000000
    1ed8:	e5940000 	ldr	r0, [r4]
    1edc:	e7805001 	str	r5, [r0, r1]
    1ee0:	e8bd80fe 	pop	{r1, r2, r3, r4, r5, r6, r7, pc}

    1ee4:	00017d00
    1ee8:	02000500
    1eec:	04000500
    1ef0:	06000500
    1ef4:	00061004
    1ef8:	00060204
    1efc:	00017e00
    1f00:	5533190a

    1f04:	e59f2b78 	ldr	r2, [pc, #2936]	; 0x2a84
    1f08:	e5920000 	ldr	r0, [r2]
    1f0c:	e3800001 	orr	r0, r0, #1
    1f10:	e5820000 	str	r0, [r2]
    1f14:	e3a01000 	mov	r1, #0
    1f18:	ea000000 	b	0x1f20
    1f1c:	e2811001 	add	r1, r1, #1
    1f20:	e3510801 	cmp	r1, #65536	; 0x10000
    1f24:	3afffffc 	bcc	0x1f1c
    1f28:	e3a01000 	mov	r1, #0
    1f2c:	ea000000 	b	0x1f34
    1f30:	e2811001 	add	r1, r1, #1
    1f34:	e3510010 	cmp	r1, #16
    1f38:	3afffffc 	bcc	0x1f30
    1f3c:	e59f2b40 	ldr	r2, [pc, #2880]	; 0x2a84
    1f40:	e5920000 	ldr	r0, [r2]
    1f44:	e3800002 	orr	r0, r0, #2
    1f48:	e5820000 	str	r0, [r2]
    1f4c:	e59f2b34 	ldr	r2, [pc, #2868]	; 0x2a88
    1f50:	e5920200 	ldr	r0, [r2, #512]	; 0x200
    1f54:	e3800010 	orr	r0, r0, #16
    1f58:	e5820200 	str	r0, [r2, #512]	; 0x200
    1f5c:	e3a01000 	mov	r1, #0
    1f60:	ea000000 	b	0x1f68
    1f64:	e2811001 	add	r1, r1, #1
    1f68:	e3510a01 	cmp	r1, #4096	; 0x1000
    1f6c:	3afffffc 	bcc	0x1f64
    1f70:	e3a02891 	mov	r2, #9502720	; 0x910000
    1f74:	e5920020 	ldr	r0, [r2, #32]
    1f78:	e3800006 	orr	r0, r0, #6
    1f7c:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
    1f80:	e3800301 	orr	r0, r0, #67108864	; 0x4000000
    1f84:	e3800302 	orr	r0, r0, #134217728	; 0x8000000
    1f88:	e5820020 	str	r0, [r2, #32]
    1f8c:	e12fff1e 	bx	lr
    1f90:	e59f2aec 	ldr	r2, [pc, #2796]	; 0x2a84
    1f94:	e5920000 	ldr	r0, [r2]
    1f98:	e3c00001 	bic	r0, r0, #1
    1f9c:	e5820000 	str	r0, [r2]
    1fa0:	e2422020 	sub	r2, r2, #32
    1fa4:	e5920000 	ldr	r0, [r2]
    1fa8:	e3800001 	orr	r0, r0, #1
    1fac:	e5820000 	str	r0, [r2]
    1fb0:	e3a01000 	mov	r1, #0
    1fb4:	ea000000 	b	0x1fbc
    1fb8:	e2811001 	add	r1, r1, #1
    1fbc:	e3510010 	cmp	r1, #16
    1fc0:	3afffffc 	bcc	0x1fb8
    1fc4:	e59f2ab8 	ldr	r2, [pc, #2744]	; 0x2a84
    1fc8:	e5920000 	ldr	r0, [r2]
    1fcc:	e3800001 	orr	r0, r0, #1
    1fd0:	e5820000 	str	r0, [r2]
    1fd4:	e3a01000 	mov	r1, #0
    1fd8:	ea000000 	b	0x1fe0
    1fdc:	e2811001 	add	r1, r1, #1
    1fe0:	e3510c01 	cmp	r1, #256	; 0x100
    1fe4:	3afffffc 	bcc	0x1fdc
    1fe8:	e3a02891 	mov	r2, #9502720	; 0x910000
    1fec:	e5920020 	ldr	r0, [r2, #32]
    1ff0:	e3800006 	orr	r0, r0, #6
    1ff4:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
    1ff8:	e3800301 	orr	r0, r0, #67108864	; 0x4000000
    1ffc:	e5820020 	str	r0, [r2, #32]
    2000:	e5922014 	ldr	r2, [r2, #20]
    2004:	e3822040 	orr	r2, r2, #64	; 0x40
    2008:	e3a03891 	mov	r3, #9502720	; 0x910000
    200c:	e5832014 	str	r2, [r3, #20]
    2010:	e3a02891 	mov	r2, #9502720	; 0x910000
    2014:	e5920000 	ldr	r0, [r2]
    2018:	e3800a03 	orr	r0, r0, #12288	; 0x3000
    201c:	e5820000 	str	r0, [r2]
    2020:	e5920010 	ldr	r0, [r2, #16]
    2024:	e3800601 	orr	r0, r0, #1048576	; 0x100000
    2028:	e5820010 	str	r0, [r2, #16]
    202c:	e3a01000 	mov	r1, #0
    2030:	ea000000 	b	0x2038
    2034:	e2811001 	add	r1, r1, #1
    2038:	e3510c01 	cmp	r1, #256	; 0x100
    203c:	3afffffc 	bcc	0x2034
    2040:	e59f2a3c 	ldr	r2, [pc, #2620]	; 0x2a84
    2044:	e5920000 	ldr	r0, [r2]
    2048:	e3c00002 	bic	r0, r0, #2
    204c:	e5820000 	str	r0, [r2]
    2050:	e2422f55 	sub	r2, r2, #340	; 0x154
    2054:	e5920000 	ldr	r0, [r2]
    2058:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    205c:	e5820000 	str	r0, [r2]
    2060:	e3a01000 	mov	r1, #0
    2064:	ea000000 	b	0x206c
    2068:	e2811001 	add	r1, r1, #1
    206c:	e3510010 	cmp	r1, #16
    2070:	3afffffc 	bcc	0x2068
    2074:	e59f2a08 	ldr	r2, [pc, #2568]	; 0x2a84
    2078:	e5920000 	ldr	r0, [r2]
    207c:	e3800002 	orr	r0, r0, #2
    2080:	e5820000 	str	r0, [r2]
    2084:	e12fff1e 	bx	lr
    2088:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
    208c:	ebffffbf 	bl	0x1f90
    2090:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
    2094:	e3a01000 	mov	r1, #0
    2098:	e3011388 	movw	r1, #5000	; 0x1388
    209c:	e320f000 	nop	{0}
    20a0:	e1b00001 	movs	r0, r1
    20a4:	e2411001 	sub	r1, r1, #1
    20a8:	1afffffc 	bne	0x20a0
    20ac:	e12fff1e 	bx	lr
    20b0:	e92d4070 	push	{r4, r5, r6, lr}
    20b4:	e3a04000 	mov	r4, #0
    20b8:	e3a05000 	mov	r5, #0
    20bc:	e3a00406 	mov	r0, #100663296	; 0x6000000
    20c0:	e5904060 	ldr	r4, [r0, #96]	; 0x60
    20c4:	e3c44403 	bic	r4, r4, #50331648	; 0x3000000
    20c8:	e3c44003 	bic	r4, r4, #3
    20cc:	e3844001 	orr	r4, r4, #1
    20d0:	e5804060 	str	r4, [r0, #96]	; 0x60
    20d4:	e5904064 	ldr	r4, [r0, #100]	; 0x64
    20d8:	e3c44403 	bic	r4, r4, #50331648	; 0x3000000
    20dc:	e3c44003 	bic	r4, r4, #3
    20e0:	e3844001 	orr	r4, r4, #1
    20e4:	e5804064 	str	r4, [r0, #100]	; 0x64
    20e8:	e5904000 	ldr	r4, [r0]
    20ec:	e59f0998 	ldr	r0, [pc, #2456]	; 0x2a8c
    20f0:	e0044000 	and	r4, r4, r0
    20f4:	e59f0994 	ldr	r0, [pc, #2452]	; 0x2a90
    20f8:	e1844000 	orr	r4, r4, r0
    20fc:	e3a00406 	mov	r0, #100663296	; 0x6000000
    2100:	e5804000 	str	r4, [r0]
    2104:	e590400c 	ldr	r4, [r0, #12]
    2108:	e59f0984 	ldr	r0, [pc, #2436]	; 0x2a94
    210c:	e0044000 	and	r4, r4, r0
    2110:	e3844102 	orr	r4, r4, #-2147483648	; 0x80000000
    2114:	e3844c22 	orr	r4, r4, #8704	; 0x2200
    2118:	e3a00406 	mov	r0, #100663296	; 0x6000000
    211c:	e580400c 	str	r4, [r0, #12]
    2120:	e30c5350 	movw	r5, #50000	; 0xc350
    2124:	e320f000 	nop	{0}
    2128:	e1b00005 	movs	r0, r5
    212c:	e2455001 	sub	r5, r5, #1
    2130:	1afffffc 	bne	0x2128
    2134:	e3a00406 	mov	r0, #100663296	; 0x6000000
    2138:	e5904054 	ldr	r4, [r0, #84]	; 0x54
    213c:	e3c44007 	bic	r4, r4, #7
    2140:	e320f000 	nop	{0}
    2144:	e5804054 	str	r4, [r0, #84]	; 0x54
    2148:	ebffffd1 	bl	0x2094
    214c:	e3a00406 	mov	r0, #100663296	; 0x6000000
    2150:	e5904050 	ldr	r4, [r0, #80]	; 0x50
    2154:	e3c44001 	bic	r4, r4, #1
    2158:	e3844001 	orr	r4, r4, #1
    215c:	e5804050 	str	r4, [r0, #80]	; 0x50
    2160:	e590405c 	ldr	r4, [r0, #92]	; 0x5c
    2164:	e3c44003 	bic	r4, r4, #3
    2168:	e3844003 	orr	r4, r4, #3
    216c:	e580405c 	str	r4, [r0, #92]	; 0x5c
    2170:	ebffffc7 	bl	0x2094
    2174:	e3a00406 	mov	r0, #100663296	; 0x6000000
    2178:	e590405c 	ldr	r4, [r0, #92]	; 0x5c
    217c:	e3c44403 	bic	r4, r4, #50331648	; 0x3000000
    2180:	e3844401 	orr	r4, r4, #16777216	; 0x1000000
    2184:	e580405c 	str	r4, [r0, #92]	; 0x5c
    2188:	e5904078 	ldr	r4, [r0, #120]	; 0x78
    218c:	e3c44003 	bic	r4, r4, #3
    2190:	e3844003 	orr	r4, r4, #3
    2194:	e5804078 	str	r4, [r0, #120]	; 0x78
    2198:	ebffffbd 	bl	0x2094
    219c:	e3a00406 	mov	r0, #100663296	; 0x6000000
    21a0:	e5904078 	ldr	r4, [r0, #120]	; 0x78
    21a4:	e3c44403 	bic	r4, r4, #50331648	; 0x3000000
    21a8:	e3844401 	orr	r4, r4, #16777216	; 0x1000000
    21ac:	e5804078 	str	r4, [r0, #120]	; 0x78
    21b0:	e8bd8070 	pop	{r4, r5, r6, pc}
    21b4:	e92d4070 	push	{r4, r5, r6, lr}
    21b8:	e3a05001 	mov	r5, #1
    21bc:	e1a05215 	lsl	r5, r5, r2
    21c0:	e245c001 	sub	ip, r5, #1
    21c4:	e5905000 	ldr	r5, [r0]
    21c8:	e1c5411c 	bic	r4, r5, ip, lsl r1
    21cc:	e1844113 	orr	r4, r4, r3, lsl r1
    21d0:	e5804000 	str	r4, [r0]
    21d4:	e8bd8070 	pop	{r4, r5, r6, pc}
    21d8:	e92d4010 	push	{r4, lr}
    21dc:	e1a04000 	mov	r4, r0
    21e0:	e51f0304 	ldr	r0, [pc, #-772]	; 0x1ee4
    21e4:	e5900000 	ldr	r0, [r0]
    21e8:	ebfffde9 	bl	0x1994
    21ec:	e8bd8010 	pop	{r4, pc}
    21f0:	e92d4010 	push	{r4, lr}
    21f4:	e1a022a0 	lsr	r2, r0, #5
    21f8:	e1a04102 	lsl	r4, r2, #2
    21fc:	e2841771 	add	r1, r4, #29622272	; 0x1c40000
    2200:	e2811d4a 	add	r1, r1, #4736	; 0x1280
    2204:	e200301f 	and	r3, r0, #31
    2208:	e3a04001 	mov	r4, #1
    220c:	e1a04314 	lsl	r4, r4, r3
    2210:	e5814000 	str	r4, [r1]
    2214:	e8bd8010 	pop	{r4, pc}
    2218:	e92d4070 	push	{r4, r5, r6, lr}
    221c:	e59f2874 	ldr	r2, [pc, #2164]	; 0x2a98
    2220:	e3a03000 	mov	r3, #0
    2224:	e59f4870 	ldr	r4, [pc, #2160]	; 0x2a9c
    2228:	e5843000 	str	r3, [r4]
    222c:	e1c431c2 	bic	r3, r4, r2, asr #3
    2230:	e5933004 	ldr	r3, [r3, #4]
    2234:	e203301f 	and	r3, r3, #31
    2238:	e2833001 	add	r3, r3, #1
    223c:	e1a01283 	lsl	r1, r3, #5
    2240:	e3510fff 	cmp	r1, #1020	; 0x3fc
    2244:	9a000001 	bls	0x2250
    2248:	e30013fc 	movw	r1, #1020	; 0x3fc
    224c:	ea000002 	b	0x225c
    2250:	e351009c 	cmp	r1, #156	; 0x9c
    2254:	2a000000 	bcs	0x225c
    2258:	e8bd8070 	pop	{r4, r5, r6, pc}
    225c:	e3a00020 	mov	r0, #32
    2260:	ea000006 	b	0x2280
    2264:	e3a03000 	mov	r3, #0
    2268:	e1a04220 	lsr	r4, r0, #4
    226c:	e1a04104 	lsl	r4, r4, #2
    2270:	e2844771 	add	r4, r4, #29622272	; 0x1c40000
    2274:	e2844b07 	add	r4, r4, #7168	; 0x1c00
    2278:	e5843000 	str	r3, [r4]
    227c:	e2800010 	add	r0, r0, #16
    2280:	e350009c 	cmp	r0, #156	; 0x9c
    2284:	3afffff6 	bcc	0x2264
    2288:	e3a00020 	mov	r0, #32
    228c:	ea000007 	b	0x22b0
    2290:	e59f3808 	ldr	r3, [pc, #2056]	; 0x2aa0
    2294:	e2404020 	sub	r4, r0, #32
    2298:	e1a04124 	lsr	r4, r4, #2
    229c:	e59f5800 	ldr	r5, [pc, #2048]	; 0x2aa4
    22a0:	e3a06004 	mov	r6, #4
    22a4:	e0245496 	mla	r4, r6, r4, r5
    22a8:	e5843000 	str	r3, [r4]
    22ac:	e2800004 	add	r0, r0, #4
    22b0:	e350009c 	cmp	r0, #156	; 0x9c
    22b4:	3afffff5 	bcc	0x2290
    22b8:	e3a00020 	mov	r0, #32
    22bc:	ea000006 	b	0x22dc
    22c0:	e2403020 	sub	r3, r0, #32
    22c4:	e1a03123 	lsr	r3, r3, #2
    22c8:	e59f47d8 	ldr	r4, [pc, #2008]	; 0x2aa8
    22cc:	e3a05004 	mov	r5, #4
    22d0:	e0234395 	mla	r3, r5, r3, r4
    22d4:	e5832000 	str	r2, [r3]
    22d8:	e2800004 	add	r0, r0, #4
    22dc:	e350009c 	cmp	r0, #156	; 0x9c
    22e0:	3afffff6 	bcc	0x22c0
    22e4:	e3a00020 	mov	r0, #32
    22e8:	ea000006 	b	0x2308
    22ec:	e3e03000 	mvn	r3, #0
    22f0:	e1a042a0 	lsr	r4, r0, #5
    22f4:	e1a04104 	lsl	r4, r4, #2
    22f8:	e2844507 	add	r4, r4, #29360128	; 0x1c00000
    22fc:	e2844a41 	add	r4, r4, #266240	; 0x41000
    2300:	e5843180 	str	r3, [r4, #384]	; 0x180
    2304:	e2800020 	add	r0, r0, #32
    2308:	e350009c 	cmp	r0, #156	; 0x9c
    230c:	3afffff6 	bcc	0x22ec
    2310:	e3a00020 	mov	r0, #32
    2314:	ea000006 	b	0x2334
    2318:	e3e03000 	mvn	r3, #0
    231c:	e1a042a0 	lsr	r4, r0, #5
    2320:	e1a04104 	lsl	r4, r4, #2
    2324:	e2844507 	add	r4, r4, #29360128	; 0x1c00000
    2328:	e2844a41 	add	r4, r4, #266240	; 0x41000
    232c:	e5843380 	str	r3, [r4, #896]	; 0x380
    2330:	e2800020 	add	r0, r0, #32
    2334:	e350009c 	cmp	r0, #156	; 0x9c
    2338:	3afffff6 	bcc	0x2318
    233c:	e3a03001 	mov	r3, #1
    2340:	e59f4754 	ldr	r4, [pc, #1876]	; 0x2a9c
    2344:	e5843000 	str	r3, [r4]
    2348:	e320f000 	nop	{0}
    234c:	eaffffc1 	b	0x2258
    2350:	e92d4010 	push	{r4, lr}
    2354:	e3a01000 	mov	r1, #0
    2358:	e59f274c 	ldr	r2, [pc, #1868]	; 0x2aac
    235c:	e5821000 	str	r1, [r2]
    2360:	e2411801 	sub	r1, r1, #65536	; 0x10000
    2364:	e0822241 	add	r2, r2, r1, asr #4
    2368:	e5821180 	str	r1, [r2, #384]	; 0x180
    236c:	e30f1fff 	movw	r1, #65535	; 0xffff
    2370:	e5821100 	str	r1, [r2, #256]	; 0x100
    2374:	e3a00000 	mov	r0, #0
    2378:	ea000006 	b	0x2398
    237c:	e59f171c 	ldr	r1, [pc, #1820]	; 0x2aa0
    2380:	e1a02120 	lsr	r2, r0, #2
    2384:	e1a02102 	lsl	r2, r2, #2
    2388:	e2822771 	add	r2, r2, #29622272	; 0x1c40000
    238c:	e2822b05 	add	r2, r2, #5120	; 0x1400
    2390:	e5821000 	str	r1, [r2]
    2394:	e2800004 	add	r0, r0, #4
    2398:	e3500010 	cmp	r0, #16
    239c:	3afffff6 	bcc	0x237c
    23a0:	e3a00010 	mov	r0, #16
    23a4:	ea000007 	b	0x23c8
    23a8:	e59f16f0 	ldr	r1, [pc, #1776]	; 0x2aa0
    23ac:	e2402010 	sub	r2, r0, #16
    23b0:	e1a02122 	lsr	r2, r2, #2
    23b4:	e59f36f4 	ldr	r3, [pc, #1780]	; 0x2ab0
    23b8:	e3a04004 	mov	r4, #4
    23bc:	e0223294 	mla	r2, r4, r2, r3
    23c0:	e5821000 	str	r1, [r2]
    23c4:	e2800004 	add	r0, r0, #4
    23c8:	e3500020 	cmp	r0, #32
    23cc:	3afffff5 	bcc	0x23a8
    23d0:	e3a010f0 	mov	r1, #240	; 0xf0
    23d4:	e59f26d0 	ldr	r2, [pc, #1744]	; 0x2aac
    23d8:	e5821004 	str	r1, [r2, #4]
    23dc:	e3a01001 	mov	r1, #1
    23e0:	e5821000 	str	r1, [r2]
    23e4:	e8bd8010 	pop	{r4, pc}
    23e8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    23ec:	e1a04000 	mov	r4, r0
    23f0:	e1a062a4 	lsr	r6, r4, #5
    23f4:	e1a00106 	lsl	r0, r6, #2
    23f8:	e2805771 	add	r5, r0, #29622272	; 0x1c40000
    23fc:	e2855c11 	add	r5, r5, #4352	; 0x1100
    2400:	e204701f 	and	r7, r4, #31
    2404:	e3a03001 	mov	r3, #1
    2408:	e1a02003 	mov	r2, r3
    240c:	e1a01007 	mov	r1, r7
    2410:	e1a00005 	mov	r0, r5
    2414:	ebffff66 	bl	0x21b4
    2418:	e3a00000 	mov	r0, #0
    241c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    2420:	e3e00000 	mvn	r0, #0
    2424:	e59f1670 	ldr	r1, [pc, #1648]	; 0x2a9c
    2428:	e5810180 	str	r0, [r1, #384]	; 0x180
    242c:	e5810184 	str	r0, [r1, #388]	; 0x184
    2430:	e5810188 	str	r0, [r1, #392]	; 0x188
    2434:	e581018c 	str	r0, [r1, #396]	; 0x18c
    2438:	e5810190 	str	r0, [r1, #400]	; 0x190
    243c:	e12fff1e 	bx	lr
    2440:	e92d4010 	push	{r4, lr}
    2444:	e3a00067 	mov	r0, #103	; 0x67
    2448:	ebffffe6 	bl	0x23e8
    244c:	e8bd8010 	pop	{r4, pc}
    2450:	e92d4010 	push	{r4, lr}
    2454:	e59f0650 	ldr	r0, [pc, #1616]	; 0x2aac
    2458:	e590400c 	ldr	r4, [r0, #12]
    245c:	e1a00004 	mov	r0, r4
    2460:	e7df051f 	bfc	r0, #10, #22
    2464:	e1a04000 	mov	r4, r0
    2468:	e3540067 	cmp	r4, #103	; 0x67
    246c:	1a000001 	bne	0x2478
    2470:	e1a00004 	mov	r0, r4
    2474:	ebffff57 	bl	0x21d8
    2478:	e59f062c 	ldr	r0, [pc, #1580]	; 0x2aac
    247c:	e5804010 	str	r4, [r0, #16]
    2480:	e2800a01 	add	r0, r0, #4096	; 0x1000
    2484:	e5804000 	str	r4, [r0]
    2488:	e1a00004 	mov	r0, r4
    248c:	ebffff57 	bl	0x21f0
    2490:	e8bd8010 	pop	{r4, pc}
    2494:	e92d4010 	push	{r4, lr}
    2498:	ebffffe0 	bl	0x2420
    249c:	ebffff5d 	bl	0x2218
    24a0:	ebffffaa 	bl	0x2350
    24a4:	e8bd8010 	pop	{r4, pc}
    24a8:	e92d4010 	push	{r4, lr}
    24ac:	ebffffe3 	bl	0x2440
    24b0:	e8bd8010 	pop	{r4, pc}
    24b4:	e92d4010 	push	{r4, lr}
    24b8:	e3a02000 	mov	r2, #0
    24bc:	e5903000 	ldr	r3, [r0]
    24c0:	e2833903 	add	r3, r3, #49152	; 0xc000
    24c4:	e5931110 	ldr	r1, [r3, #272]	; 0x110
    24c8:	e3811b02 	orr	r1, r1, #2048	; 0x800
    24cc:	e5903000 	ldr	r3, [r0]
    24d0:	e2833903 	add	r3, r3, #49152	; 0xc000
    24d4:	e5831110 	str	r1, [r3, #272]	; 0x110
    24d8:	e5903000 	ldr	r3, [r0]
    24dc:	e2833903 	add	r3, r3, #49152	; 0xc000
    24e0:	e59312c0 	ldr	r1, [r3, #704]	; 0x2c0
    24e4:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
    24e8:	e5903000 	ldr	r3, [r0]
    24ec:	e2833903 	add	r3, r3, #49152	; 0xc000
    24f0:	e58312c0 	str	r1, [r3, #704]	; 0x2c0
    24f4:	e5903000 	ldr	r3, [r0]
    24f8:	e2833903 	add	r3, r3, #49152	; 0xc000
    24fc:	e5931200 	ldr	r1, [r3, #512]	; 0x200
    2500:	e3811102 	orr	r1, r1, #-2147483648	; 0x80000000
    2504:	e5903000 	ldr	r3, [r0]
    2508:	e2833903 	add	r3, r3, #49152	; 0xc000
    250c:	e5831200 	str	r1, [r3, #512]	; 0x200
    2510:	e30c2350 	movw	r2, #50000	; 0xc350
    2514:	e320f000 	nop	{0}
    2518:	e1b03002 	movs	r3, r2
    251c:	e2422001 	sub	r2, r2, #1
    2520:	1afffffc 	bne	0x2518
    2524:	e5903000 	ldr	r3, [r0]
    2528:	e2833903 	add	r3, r3, #49152	; 0xc000
    252c:	e59312c0 	ldr	r1, [r3, #704]	; 0x2c0
    2530:	e3c11102 	bic	r1, r1, #-2147483648	; 0x80000000
    2534:	e5903000 	ldr	r3, [r0]
    2538:	e2833903 	add	r3, r3, #49152	; 0xc000
    253c:	e58312c0 	str	r1, [r3, #704]	; 0x2c0
    2540:	e5903000 	ldr	r3, [r0]
    2544:	e2833903 	add	r3, r3, #49152	; 0xc000
    2548:	e5931200 	ldr	r1, [r3, #512]	; 0x200
    254c:	e3c11102 	bic	r1, r1, #-2147483648	; 0x80000000
    2550:	e5903000 	ldr	r3, [r0]
    2554:	e2833903 	add	r3, r3, #49152	; 0xc000
    2558:	e5831200 	str	r1, [r3, #512]	; 0x200
    255c:	e5903000 	ldr	r3, [r0]
    2560:	e2833903 	add	r3, r3, #49152	; 0xc000
    2564:	e5931110 	ldr	r1, [r3, #272]	; 0x110
    2568:	e3c11b02 	bic	r1, r1, #2048	; 0x800
    256c:	e5903000 	ldr	r3, [r0]
    2570:	e2833903 	add	r3, r3, #49152	; 0xc000
    2574:	e5831110 	str	r1, [r3, #272]	; 0x110
    2578:	e8bd8010 	pop	{r4, pc}
    257c:	e5901000 	ldr	r1, [r0]
    2580:	e2811903 	add	r1, r1, #49152	; 0xc000
    2584:	e5911140 	ldr	r1, [r1, #320]	; 0x140
    2588:	e580101c 	str	r1, [r0, #28]
    258c:	e5901000 	ldr	r1, [r0]
    2590:	e2811903 	add	r1, r1, #49152	; 0xc000
    2594:	e5911144 	ldr	r1, [r1, #324]	; 0x144
    2598:	e5801020 	str	r1, [r0, #32]
    259c:	e5901000 	ldr	r1, [r0]
    25a0:	e2811903 	add	r1, r1, #49152	; 0xc000
    25a4:	e5911148 	ldr	r1, [r1, #328]	; 0x148
    25a8:	e5801024 	str	r1, [r0, #36]	; 0x24
    25ac:	e5901000 	ldr	r1, [r0]
    25b0:	e2811903 	add	r1, r1, #49152	; 0xc000
    25b4:	e591114c 	ldr	r1, [r1, #332]	; 0x14c
    25b8:	e5801028 	str	r1, [r0, #40]	; 0x28
    25bc:	e5901000 	ldr	r1, [r0]
    25c0:	e2811903 	add	r1, r1, #49152	; 0xc000
    25c4:	e5911150 	ldr	r1, [r1, #336]	; 0x150
    25c8:	e580102c 	str	r1, [r0, #44]	; 0x2c
    25cc:	e5901000 	ldr	r1, [r0]
    25d0:	e2811903 	add	r1, r1, #49152	; 0xc000
    25d4:	e5911154 	ldr	r1, [r1, #340]	; 0x154
    25d8:	e5801030 	str	r1, [r0, #48]	; 0x30
    25dc:	e5901000 	ldr	r1, [r0]
    25e0:	e2811903 	add	r1, r1, #49152	; 0xc000
    25e4:	e5911158 	ldr	r1, [r1, #344]	; 0x158
    25e8:	e5801034 	str	r1, [r0, #52]	; 0x34
    25ec:	e5901000 	ldr	r1, [r0]
    25f0:	e2811903 	add	r1, r1, #49152	; 0xc000
    25f4:	e591115c 	ldr	r1, [r1, #348]	; 0x15c
    25f8:	e5801038 	str	r1, [r0, #56]	; 0x38
    25fc:	e5901000 	ldr	r1, [r0]
    2600:	e2811cc6 	add	r1, r1, #50688	; 0xc600
    2604:	e5911000 	ldr	r1, [r1]
    2608:	e580103c 	str	r1, [r0, #60]	; 0x3c
    260c:	e12fff1e 	bx	lr
    2610:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    2614:	e1a06000 	mov	r6, r0
    2618:	e3a08000 	mov	r8, #0
    261c:	e5964008 	ldr	r4, [r6, #8]
    2620:	e5940000 	ldr	r0, [r4]
    2624:	e2800903 	add	r0, r0, #49152	; 0xc000
    2628:	e5905120 	ldr	r5, [r0, #288]	; 0x120
    262c:	e1a00005 	mov	r0, r5
    2630:	e7cf001f 	bfc	r0, #0, #16
    2634:	e28014ab 	add	r1, r0, #-1426063360	; 0xab000000
    2638:	e2511833 	subs	r1, r1, #3342336	; 0x330000
    263c:	0a000001 	beq	0x2648
    2640:	e3e07000 	mvn	r7, #0
    2644:	ea000028 	b	0x26ec
    2648:	e5845018 	str	r5, [r4, #24]
    264c:	e1a00004 	mov	r0, r4
    2650:	ebffff97 	bl	0x24b4
    2654:	e30c1704 	movw	r1, #50948	; 0xc704
    2658:	e5940000 	ldr	r0, [r4]
    265c:	e7900001 	ldr	r0, [r0, r1]
    2660:	e3800101 	orr	r0, r0, #1073741824	; 0x40000000
    2664:	e30c2704 	movw	r2, #50948	; 0xc704
    2668:	e5941000 	ldr	r1, [r4]
    266c:	e7810002 	str	r0, [r1, r2]
    2670:	e320f000 	nop	{0}
    2674:	e30c1704 	movw	r1, #50948	; 0xc704
    2678:	e5940000 	ldr	r0, [r4]
    267c:	e7905001 	ldr	r5, [r0, r1]
    2680:	e3150101 	tst	r5, #1073741824	; 0x40000000
    2684:	1a000000 	bne	0x268c
    2688:	ea000000 	b	0x2690
    268c:	eafffff8 	b	0x2674
    2690:	e320f000 	nop	{0}
    2694:	e1a00004 	mov	r0, r4
    2698:	ebffffb7 	bl	0x257c
    269c:	e5940000 	ldr	r0, [r4]
    26a0:	e2800903 	add	r0, r0, #49152	; 0xc000
    26a4:	e5905110 	ldr	r5, [r0, #272]	; 0x110
    26a8:	e3c55030 	bic	r5, r5, #48	; 0x30
    26ac:	e3c55008 	bic	r5, r5, #8
    26b0:	e3c55001 	bic	r5, r5, #1
    26b4:	e5940018 	ldr	r0, [r4, #24]
    26b8:	e51f17c0 	ldr	r1, [pc, #-1984]	; 0x1f00
    26bc:	e1500001 	cmp	r0, r1
    26c0:	2a000000 	bcs	0x26c8
    26c4:	e3855801 	orr	r5, r5, #65536	; 0x10000
    26c8:	e5940000 	ldr	r0, [r4]
    26cc:	e2800903 	add	r0, r0, #49152	; 0xc000
    26d0:	e5805110 	str	r5, [r0, #272]	; 0x110
    26d4:	e5940020 	ldr	r0, [r4, #32]
    26d8:	e7e587d0 	ubfx	r8, r0, #15, #6
    26dc:	e1a00004 	mov	r0, r4
    26e0:	ebfffd81 	bl	0x1cec
    26e4:	e3a00000 	mov	r0, #0
    26e8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    26ec:	e320f000 	nop	{0}
    26f0:	e1a00007 	mov	r0, r7
    26f4:	eafffffb 	b	0x26e8
    26f8:	e92d4010 	push	{r4, lr}
    26fc:	e24ddd53 	sub	sp, sp, #5312	; 0x14c0
    2700:	e3a04000 	mov	r4, #0
    2704:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2708:	e2800f7f 	add	r0, r0, #508	; 0x1fc
    270c:	e51f1830 	ldr	r1, [pc, #-2096]	; 0x1ee4
    2710:	e5810000 	str	r0, [r1]
    2714:	e3002200 	movw	r2, #512	; 0x200
    2718:	e3a01000 	mov	r1, #0
    271c:	e28d0d4b 	add	r0, sp, #4800	; 0x12c0
    2720:	ebfff911 	bl	0xb6c
    2724:	e3a02050 	mov	r2, #80	; 0x50
    2728:	e3a01000 	mov	r1, #0
    272c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2730:	e28000ac 	add	r0, r0, #172	; 0xac
    2734:	ebfff90c 	bl	0xb6c
    2738:	e3a02050 	mov	r2, #80	; 0x50
    273c:	e3a01000 	mov	r1, #0
    2740:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2744:	e280005c 	add	r0, r0, #92	; 0x5c
    2748:	ebfff907 	bl	0xb6c
    274c:	e3a020c4 	mov	r2, #196	; 0xc4
    2750:	e3a01000 	mov	r1, #0
    2754:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2758:	e2800f7f 	add	r0, r0, #508	; 0x1fc
    275c:	ebfff902 	bl	0xb6c
    2760:	e3012000 	movw	r2, #4096	; 0x1000
    2764:	e3a01000 	mov	r1, #0
    2768:	e28d005c 	add	r0, sp, #92	; 0x5c
    276c:	ebfff8fe 	bl	0xb6c
    2770:	e3a02044 	mov	r2, #68	; 0x44
    2774:	e3a01000 	mov	r1, #0
    2778:	e28d0018 	add	r0, sp, #24
    277c:	ebfff8fa 	bl	0xb6c
    2780:	e320f000 	nop	{0}
    2784:	ea000007 	b	0x27a8
    2788:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    278c:	e28000bb 	add	r0, r0, #187	; 0xbb
    2790:	e3c0000f 	bic	r0, r0, #15
    2794:	e0800204 	add	r0, r0, r4, lsl #4
    2798:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    279c:	e2811f82 	add	r1, r1, #520	; 0x208
    27a0:	e7810104 	str	r0, [r1, r4, lsl #2]
    27a4:	e2844001 	add	r4, r4, #1
    27a8:	e3540003 	cmp	r4, #3
    27ac:	3afffff5 	bcc	0x2788
    27b0:	e3a04000 	mov	r4, #0
    27b4:	ea000007 	b	0x27d8
    27b8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    27bc:	e280006b 	add	r0, r0, #107	; 0x6b
    27c0:	e3c0000f 	bic	r0, r0, #15
    27c4:	e0800204 	add	r0, r0, r4, lsl #4
    27c8:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    27cc:	e2811f85 	add	r1, r1, #532	; 0x214
    27d0:	e7810104 	str	r0, [r1, r4, lsl #2]
    27d4:	e2844001 	add	r4, r4, #1
    27d8:	e3540003 	cmp	r4, #3
    27dc:	3afffff5 	bcc	0x27b8
    27e0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    27e4:	e2800f5f 	add	r0, r0, #380	; 0x17c
    27e8:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    27ec:	e5810204 	str	r0, [r1, #516]	; 0x204
    27f0:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    27f4:	e5910204 	ldr	r0, [r1, #516]	; 0x204
    27f8:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    27fc:	e2811f56 	add	r1, r1, #344	; 0x158
    2800:	ebfffd0f 	bl	0x1c44
    2804:	ebfffc97 	bl	0x1a68
    2808:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    280c:	e2811f5f 	add	r1, r1, #380	; 0x17c
    2810:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2814:	e5801204 	str	r1, [r0, #516]	; 0x204
    2818:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    281c:	e2811f51 	add	r1, r1, #324	; 0x144
    2820:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2824:	e5801240 	str	r1, [r0, #576]	; 0x240
    2828:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    282c:	e2811f4e 	add	r1, r1, #312	; 0x138
    2830:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2834:	e5801244 	str	r1, [r0, #580]	; 0x244
    2838:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    283c:	e2811f4b 	add	r1, r1, #300	; 0x12c
    2840:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2844:	e5801248 	str	r1, [r0, #584]	; 0x248
    2848:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    284c:	e2811f49 	add	r1, r1, #292	; 0x124
    2850:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2854:	e580124c 	str	r1, [r0, #588]	; 0x24c
    2858:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    285c:	e2811f47 	add	r1, r1, #284	; 0x11c
    2860:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2864:	e5801250 	str	r1, [r0, #592]	; 0x250
    2868:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    286c:	e2811f45 	add	r1, r1, #276	; 0x114
    2870:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2874:	e5801254 	str	r1, [r0, #596]	; 0x254
    2878:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    287c:	e2811f43 	add	r1, r1, #268	; 0x10c
    2880:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2884:	e5801258 	str	r1, [r0, #600]	; 0x258
    2888:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    288c:	e2811f41 	add	r1, r1, #260	; 0x104
    2890:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2894:	e580125c 	str	r1, [r0, #604]	; 0x25c
    2898:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    289c:	e28110fc 	add	r1, r1, #252	; 0xfc
    28a0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    28a4:	e5801260 	str	r1, [r0, #608]	; 0x260
    28a8:	e3a01000 	mov	r1, #0
    28ac:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    28b0:	e5900204 	ldr	r0, [r0, #516]	; 0x204
    28b4:	e580100c 	str	r1, [r0, #12]
    28b8:	e28d0d4f 	add	r0, sp, #5056	; 0x13c0
    28bc:	e3c010ff 	bic	r1, r0, #255	; 0xff
    28c0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    28c4:	e5900204 	ldr	r0, [r0, #516]	; 0x204
    28c8:	e5801008 	str	r1, [r0, #8]
    28cc:	e3001100 	movw	r1, #256	; 0x100
    28d0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    28d4:	e5900204 	ldr	r0, [r0, #516]	; 0x204
    28d8:	e5801010 	str	r1, [r0, #16]
    28dc:	e3a01000 	mov	r1, #0
    28e0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    28e4:	e5900204 	ldr	r0, [r0, #516]	; 0x204
    28e8:	e5801014 	str	r1, [r0, #20]
    28ec:	ebfffee8 	bl	0x2494
    28f0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    28f4:	e2800f51 	add	r0, r0, #324	; 0x144
    28f8:	ebfffc60 	bl	0x1a80
    28fc:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2900:	e2800f4e 	add	r0, r0, #312	; 0x138
    2904:	ebfffc76 	bl	0x1ae4
    2908:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    290c:	e2800f4b 	add	r0, r0, #300	; 0x12c
    2910:	ebfffc83 	bl	0x1b24
    2914:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2918:	e2800f49 	add	r0, r0, #292	; 0x124
    291c:	ebfffc90 	bl	0x1b64
    2920:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2924:	e2800f47 	add	r0, r0, #284	; 0x11c
    2928:	ebfffc9a 	bl	0x1b98
    292c:	e28d2a01 	add	r2, sp, #4096	; 0x1000
    2930:	e2822f49 	add	r2, r2, #292	; 0x124
    2934:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    2938:	e2811f47 	add	r1, r1, #284	; 0x11c
    293c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2940:	e2800f45 	add	r0, r0, #276	; 0x114
    2944:	ebfffca0 	bl	0x1bcc
    2948:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    294c:	e2800f43 	add	r0, r0, #268	; 0x10c
    2950:	ebfffca0 	bl	0x1bd8
    2954:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2958:	e2800f41 	add	r0, r0, #260	; 0x104
    295c:	ebfffc9e 	bl	0x1bdc
    2960:	e28d2a01 	add	r2, sp, #4096	; 0x1000
    2964:	e2822f43 	add	r2, r2, #268	; 0x10c
    2968:	e28d1a01 	add	r1, sp, #4096	; 0x1000
    296c:	e2811f41 	add	r1, r1, #260	; 0x104
    2970:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2974:	e28000fc 	add	r0, r0, #252	; 0xfc
    2978:	ebfffc98 	bl	0x1be0
    297c:	e3a01000 	mov	r1, #0
    2980:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2984:	e5801228 	str	r1, [r0, #552]	; 0x228
    2988:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    298c:	e580122c 	str	r1, [r0, #556]	; 0x22c
    2990:	e28d1018 	add	r1, sp, #24
    2994:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2998:	e2800f9b 	add	r0, r0, #620	; 0x26c
    299c:	ebfffc9a 	bl	0x1c0c
    29a0:	e28d105c 	add	r1, sp, #92	; 0x5c
    29a4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    29a8:	e2800fa1 	add	r0, r0, #644	; 0x284
    29ac:	ebfffc96 	bl	0x1c0c
    29b0:	e28d105c 	add	r1, sp, #92	; 0x5c
    29b4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    29b8:	e2800fa7 	add	r0, r0, #668	; 0x29c
    29bc:	ebfffc92 	bl	0x1c0c
    29c0:	ebfffdba 	bl	0x20b0
    29c4:	ebfffdaf 	bl	0x2088
    29c8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    29cc:	e2800f7f 	add	r0, r0, #508	; 0x1fc
    29d0:	ebffff0e 	bl	0x2610
    29d4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    29d8:	e2800f7f 	add	r0, r0, #508	; 0x1fc
    29dc:	ebfffcd7 	bl	0x1d40
    29e0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    29e4:	e2800f7f 	add	r0, r0, #508	; 0x1fc
    29e8:	ebfff874 	bl	0xbc0
    29ec:	ebfffead 	bl	0x24a8
    29f0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    29f4:	e2800f7f 	add	r0, r0, #508	; 0x1fc
    29f8:	ebfff875 	bl	0xbd4
    29fc:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2a00:	e5900204 	ldr	r0, [r0, #516]	; 0x204
    2a04:	e5900044 	ldr	r0, [r0, #68]	; 0x44
    2a08:	e3500002 	cmp	r0, #2
    2a0c:	0a000002 	beq	0x2a1c
    2a10:	e3e00000 	mvn	r0, #0
    2a14:	e28ddd53 	add	sp, sp, #5312	; 0x14c0
    2a18:	e8bd8010 	pop	{r4, pc}
    2a1c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
    2a20:	e2800f7f 	add	r0, r0, #508	; 0x1fc
    2a24:	ebfff823 	bl	0xab8
    2a28:	e320f000 	nop	{0}
    2a2c:	eafffff8 	b	0x2a14
    2a30:	e92d4010 	push	{r4, lr}
    2a34:	e10f1000 	mrs	r1, CPSR
    2a38:	e3a00067 	mov	r0, #103	; 0x67
    2a3c:	e3a02000 	mov	r2, #0
    2a40:	e1a012a0 	lsr	r1, r0, #5
    2a44:	e200c01f 	and	ip, r0, #31
    2a48:	e1a04101 	lsl	r4, r1, #2
    2a4c:	e2843771 	add	r3, r4, #29622272	; 0x1c40000
    2a50:	e2833c11 	add	r3, r3, #4352	; 0x1100
    2a54:	e59f4050 	ldr	r4, [pc, #80]	; 0x2aac
    2a58:	e594200c 	ldr	r2, [r4, #12]
    2a5c:	e1a04002 	mov	r4, r2
    2a60:	e7df451f 	bfc	r4, #10, #22
    2a64:	e1a02004 	mov	r2, r4
    2a68:	e51f2b8c 	ldr	r2, [pc, #-2956]	; 0x1ee4
    2a6c:	e5922000 	ldr	r2, [r2]
    2a70:	e5920008 	ldr	r0, [r2, #8]
    2a74:	e30c340c 	movw	r3, #50188	; 0xc40c
    2a78:	e5902000 	ldr	r2, [r0]
    2a7c:	e7921003 	ldr	r1, [r2, r3]
    2a80:	e8bd8010 	pop	{r4, pc}

    2a84:	060005a4
    2a88:	0090c000
    2a8c:	7ffe00ff
    2a90:	80012200
    2a94:	7ffa00ff
    2a98:	01010101
    2a9c:	01c41000
    2aa0:	a0a0a0a0
    2aa4:	01c41420
    2aa8:	01c41820
    2aac:	01c42000
    2ab0:	01c41410
    2ab4:	03fff002
    2ab8:	2203ea43
    2abc:	4202ea42
    2ac0:	b802f000
    2ac4:	0200f04f
    2ac8:	f0c02904
    2acc:	f0108012
    2ad0:	f0000c03
    2ad4:	f1cc801b
    2ad8:	f1bc0c04
    2adc:	bf180f02
    2ae0:	2b01f800
    2ae4:	f820bfa8
    2ae8:	eba12b02
    2aec:	f000010c
    2af0:	ea5fb80d
    2af4:	bf247cc1
    2af8:	2b01f800
    2afc:	2b01f800
    2b00:	f800bf48
    2b04:	47702b01
    2b08:	0200f04f
    2b0c:	4613b500
    2b10:	46964694
    2b14:	bf223920
    2b18:	500ce8a0
    2b1c:	500ce8a0
    2b20:	0120f1b1
    2b24:	aff7f4bf
    2b28:	bf280709
    2b2c:	500ce8a0
    2b30:	c00cbf48
    2b34:	eb04f85d
    2b38:	bf280089
    2b3c:	2b04f840
    2b40:	4770bf08
    2b44:	f820bf48
    2b48:	f0112b02
    2b4c:	bf184f80
    2b50:	2b01f800
    2b54:	00004770

    2b58:	e92d4001 	push	{r0, lr}
    2b5c:	ebffffff 	bl	0x2b60
    2b60:	ebffffff 	bl	0x2b64
    2b64:	ebffffff 	bl	0x2b68
    2b68:	ebffffff 	bl	0x2b6c
    2b6c:	ebffffff 	bl	0x2b70
    2b70:	ebffffff 	bl	0x2b74
    2b74:	ebffffff 	bl	0x2b78
    2b78:	ebffffff 	bl	0x2b7c
    2b7c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    2b80:	e3800b02 	orr	r0, r0, #2048	; 0x800
    2b84:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    2b88:	e8bd4001 	pop	{r0, lr}
    2b8c:	e1a0f00e 	mov	pc, lr
    2b90:	e92d4001 	push	{r0, lr}
    2b94:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    2b98:	e3800a01 	orr	r0, r0, #4096	; 0x1000
    2b9c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    2ba0:	e8bd4001 	pop	{r0, lr}
    2ba4:	e1a0f00e 	mov	pc, lr
    2ba8:	e92d4001 	push	{r0, lr}
    2bac:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    2bb0:	e3800004 	orr	r0, r0, #4
    2bb4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    2bb8:	e8bd4001 	pop	{r0, lr}
    2bbc:	e1a0f00e 	mov	pc, lr
    2bc0:	e92d4001 	push	{r0, lr}
    2bc4:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
    2bc8:	e3800002 	orr	r0, r0, #2
    2bcc:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
    2bd0:	e8bd4001 	pop	{r0, lr}
    2bd4:	e1a0f00e 	mov	pc, lr
    2bd8:	e92d4001 	push	{r0, lr}
    2bdc:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    2be0:	e3800001 	orr	r0, r0, #1
    2be4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    2be8:	e8bd4001 	pop	{r0, lr}
    2bec:	e1a0f00e 	mov	pc, lr
    2bf0:	e92d4001 	push	{r0, lr}
    2bf4:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
    2bf8:	e3c00002 	bic	r0, r0, #2
    2bfc:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
    2c00:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    2c04:	e3c00001 	bic	r0, r0, #1
    2c08:	e3c00b02 	bic	r0, r0, #2048	; 0x800
    2c0c:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
    2c10:	e3c00004 	bic	r0, r0, #4
    2c14:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    2c18:	e8bd4001 	pop	{r0, lr}
    2c1c:	e1a0f00e 	mov	pc, lr
    2c20:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2c24:	ee300f30 	mrc	15, 1, r0, cr0, cr0, {1}
    2c28:	e2103407 	ands	r3, r0, #117440512	; 0x7000000
    2c2c:	e1a03ba3 	lsr	r3, r3, #23
    2c30:	0a00001a 	beq	0x2ca0
    2c34:	e3a0a000 	mov	sl, #0
    2c38:	e08a20aa 	add	r2, sl, sl, lsr #1
    2c3c:	e1a01230 	lsr	r1, r0, r2
    2c40:	e2011007 	and	r1, r1, #7
    2c44:	e3510002 	cmp	r1, #2
    2c48:	ba000011 	blt	0x2c94
    2c4c:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
    2c50:	f57ff06f 	isb	sy
    2c54:	ee301f10 	mrc	15, 1, r1, cr0, cr0, {0}
    2c58:	e2012007 	and	r2, r1, #7
    2c5c:	e2822004 	add	r2, r2, #4
    2c60:	e30043ff 	movw	r4, #1023	; 0x3ff
    2c64:	e01441a1 	ands	r4, r4, r1, lsr #3
    2c68:	e16f5f14 	clz	r5, r4
    2c6c:	e3077fff 	movw	r7, #32767	; 0x7fff
    2c70:	e01776a1 	ands	r7, r7, r1, lsr #13
    2c74:	e1a09004 	mov	r9, r4
    2c78:	e18ab519 	orr	fp, sl, r9, lsl r5
    2c7c:	e18bb217 	orr	fp, fp, r7, lsl r2
    2c80:	ee07bf5e 	mcr	15, 0, fp, cr7, cr14, {2}
    2c84:	e2599001 	subs	r9, r9, #1
    2c88:	aafffffa 	bge	0x2c78
    2c8c:	e2577001 	subs	r7, r7, #1
    2c90:	aafffff7 	bge	0x2c74
    2c94:	e28aa002 	add	sl, sl, #2
    2c98:	e153000a 	cmp	r3, sl
    2c9c:	caffffe5 	bgt	0x2c38
    2ca0:	e3a0a000 	mov	sl, #0
    2ca4:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
    2ca8:	f57ff06f 	isb	sy
    2cac:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2cb0:	e1a0f00e 	mov	pc, lr
    2cb4:	e92d0003 	push	{r0, r1}
    2cb8:	e3a00000 	mov	r0, #0
    2cbc:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
    2cc0:	e8bd0003 	pop	{r0, r1}
    2cc4:	e1a0f00e 	mov	pc, lr
    2cc8:	e92d4001 	push	{r0, lr}
    2ccc:	ebfffff8 	bl	0x2cb4
    2cd0:	ebffffd2 	bl	0x2c20
    2cd4:	e8bd4001 	pop	{r0, lr}
    2cd8:	e1a0f00e 	mov	pc, lr
    2cdc:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2ce0:	e3a02040 	mov	r2, #64	; 0x40
    2ce4:	e2423001 	sub	r3, r2, #1
    2ce8:	e1c00003 	bic	r0, r0, r3
    2cec:	ee070f3b 	mcr	15, 0, r0, cr7, cr11, {1}
    2cf0:	f57ff04f 	dsb	sy
    2cf4:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
    2cf8:	e0800002 	add	r0, r0, r2
    2cfc:	e1500001 	cmp	r0, r1
    2d00:	3afffff9 	bcc	0x2cec
    2d04:	e3a00000 	mov	r0, #0
    2d08:	ee070fd5 	mcr	15, 0, r0, cr7, cr5, {6}
    2d0c:	f57ff04f 	dsb	sy
    2d10:	f57ff06f 	isb	sy
    2d14:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2d18:	e1a0f00e 	mov	pc, lr
    2d1c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2d20:	e3a02040 	mov	r2, #64	; 0x40
    2d24:	e2423001 	sub	r3, r2, #1
    2d28:	e1c00003 	bic	r0, r0, r3
    2d2c:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
    2d30:	e0800002 	add	r0, r0, r2
    2d34:	e1500001 	cmp	r0, r1
    2d38:	3afffffb 	bcc	0x2d2c
    2d3c:	f57ff04f 	dsb	sy
    2d40:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2d44:	e1a0f00e 	mov	pc, lr
    2d48:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2d4c:	e3a02040 	mov	r2, #64	; 0x40
    2d50:	e2423001 	sub	r3, r2, #1
    2d54:	e1c00003 	bic	r0, r0, r3
    2d58:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
    2d5c:	e0800002 	add	r0, r0, r2
    2d60:	e1500001 	cmp	r0, r1
    2d64:	3afffffb 	bcc	0x2d58
    2d68:	f57ff04f 	dsb	sy
    2d6c:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2d70:	e1a0f00e 	mov	pc, lr
    2d74:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2d78:	e3a02040 	mov	r2, #64	; 0x40
    2d7c:	e2423001 	sub	r3, r2, #1
    2d80:	e1100003 	tst	r0, r3
    2d84:	e1c00003 	bic	r0, r0, r3
    2d88:	1e070f3e 	mcrne	15, 0, r0, cr7, cr14, {1}
    2d8c:	e1110003 	tst	r1, r3
    2d90:	e1c11003 	bic	r1, r1, r3
    2d94:	1e071f3e 	mcrne	15, 0, r1, cr7, cr14, {1}
    2d98:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
    2d9c:	e0800002 	add	r0, r0, r2
    2da0:	e1500001 	cmp	r0, r1
    2da4:	3afffffb 	bcc	0x2d98
    2da8:	f57ff04f 	dsb	sy
    2dac:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    2db0:	e1a0f00e 	mov	pc, lr
    2db4:	e92d4001 	push	{r0, lr}
    2db8:	e3a00000 	mov	r0, #0
    2dbc:	ee080f15 	mcr	15, 0, r0, cr8, cr5, {0}
    2dc0:	ee080f16 	mcr	15, 0, r0, cr8, cr6, {0}
    2dc4:	e8bd4001 	pop	{r0, lr}
    2dc8:	e1a0f00e 	mov	pc, lr
    2dcc:	e92d4001 	push	{r0, lr}
    2dd0:	e10f0000 	mrs	r0, CPSR
    2dd4:	e3c01080 	bic	r1, r0, #128	; 0x80
    2dd8:	e121f001 	msr	CPSR_c, r1
    2ddc:	e8bd4001 	pop	{r0, lr}
    2de0:	e1a0f00e 	mov	pc, lr
    2de4:	e92d4001 	push	{r0, lr}
    2de8:	e10f0000 	mrs	r0, CPSR
    2dec:	e3801080 	orr	r1, r0, #128	; 0x80
    2df0:	e121f001 	msr	CPSR_c, r1
    2df4:	e8bd4001 	pop	{r0, lr}
    2df8:	e1a0f00e 	mov	pc, lr
    2dfc:	e92d4001 	push	{r0, lr}
    2e00:	e10f0000 	mrs	r0, CPSR
    2e04:	e3c01040 	bic	r1, r0, #64	; 0x40
    2e08:	e121f001 	msr	CPSR_c, r1
    2e0c:	e8bd4001 	pop	{r0, lr}
    2e10:	e1a0f00e 	mov	pc, lr
    2e14:	e92d4001 	push	{r0, lr}
    2e18:	e10f0000 	mrs	r0, CPSR
    2e1c:	e3801040 	orr	r1, r0, #64	; 0x40
    2e20:	e121f001 	msr	CPSR_c, r1
    2e24:	e8bd4001 	pop	{r0, lr}
    2e28:	e1a0f00e 	mov	pc, lr
    2e2c:	e92d4001 	push	{r0, lr}
    2e30:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    2e34:	e3800a02 	orr	r0, r0, #8192	; 0x2000
    2e38:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    2e3c:	e8bd4001 	pop	{r0, lr}
    2e40:	e1a0f00e 	mov	pc, lr
    2e44:	e92d4001 	push	{r0, lr}
    2e48:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    2e4c:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
    2e50:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    2e54:	e8bd4001 	pop	{r0, lr}
    2e58:	e1a0f00e 	mov	pc, lr


    3000:	ea000007 	b	0x3024
    3004:	ea000007 	b	0x3028
    3008:	"eGON.BRM"
    3010:	00000024
    3014:	"1100"
    3018:	"1100"
    301c:	"1633"
    3020:	00000000

    3024:	ea000000 	b	0x302c

    3028:	ea000001 	b	0x3034

    302c:	e3a06000 	mov	r6, #0
    3030:	ea000003 	b	0x3044
    3034:	e3a0605c 	mov	r6, #92	; 0x5c
    3038:	ea000012 	b	0x3088
    303c:	e59f0150 	ldr	r0, [pc, #336]	; 0x3194
    3040:	e590f000 	ldr	pc, [r0]
    3044:	ee100fb0 	mrc	15, 0, r0, cr0, cr0, {5}
    3048:	e2001003 	and	r1, r0, #3
    304c:	e3510000 	cmp	r1, #0
    3050:	1afffff9 	bne	0x303c
    3054:	e2001cff 	and	r1, r0, #65280	; 0xff00
    3058:	e3510000 	cmp	r1, #0
    305c:	1afffff6 	bne	0x303c
    3060:	e3a01a21 	mov	r1, #135168	; 0x21000
    3064:	e59f212c 	ldr	r2, [pc, #300]	; 0x3198
    3068:	e5913000 	ldr	r3, [r1]
    306c:	e1520003 	cmp	r2, r3
    3070:	1a000004 	bne	0x3088
    3074:	e59f1120 	ldr	r1, [pc, #288]	; 0x319c
    3078:	e59f2120 	ldr	r2, [pc, #288]	; 0x31a0
    307c:	e5913000 	ldr	r3, [r1]
    3080:	e1520003 	cmp	r2, r3
    3084:	0affffec 	beq	0x303c
    3088:	e30004e2 	movw	r0, #1250	; 0x4e2
    308c:	e2500001 	subs	r0, r0, #1
    3090:	1afffffd 	bne	0x308c
    3094:	e10f0000 	mrs	r0, CPSR
    3098:	e3c0001f 	bic	r0, r0, #31
    309c:	e3800013 	orr	r0, r0, #19
    30a0:	e38000c0 	orr	r0, r0, #192	; 0xc0
    30a4:	e3c00c02 	bic	r0, r0, #512	; 0x200
    30a8:	e121f000 	msr	CPSR_c, r0
    30ac:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
    30b0:	e3c00005 	bic	r0, r0, #5
    30b4:	e3c00b06 	bic	r0, r0, #6144	; 0x1800
    30b8:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
    30bc:	e59f10e0 	ldr	r1, [pc, #224]	; 0x31a4
    30c0:	e5912000 	ldr	r2, [r1]
    30c4:	e3c22001 	bic	r2, r2, #1
    30c8:	e5812000 	str	r2, [r1]
    30cc:	e3a01406 	mov	r1, #100663296	; 0x6000000
    30d0:	e3a02000 	mov	r2, #0
    30d4:	e5913050 	ldr	r3, [r1, #80]	; 0x50
    30d8:	e3c33001 	bic	r3, r3, #1
    30dc:	e1834002 	orr	r4, r3, r2
    30e0:	e5814050 	str	r4, [r1, #80]	; 0x50
    30e4:	e3a02000 	mov	r2, #0
    30e8:	e5913054 	ldr	r3, [r1, #84]	; 0x54
    30ec:	e3c33007 	bic	r3, r3, #7
    30f0:	e1834002 	orr	r4, r3, r2
    30f4:	e5814054 	str	r4, [r1, #84]	; 0x54
    30f8:	e3a02000 	mov	r2, #0
    30fc:	e591305c 	ldr	r3, [r1, #92]	; 0x5c
    3100:	e3c33003 	bic	r3, r3, #3
    3104:	e3c33403 	bic	r3, r3, #50331648	; 0x3000000
    3108:	e1834002 	orr	r4, r3, r2
    310c:	e581405c 	str	r4, [r1, #92]	; 0x5c
    3110:	e3a02000 	mov	r2, #0
    3114:	e5913060 	ldr	r3, [r1, #96]	; 0x60
    3118:	e3c33003 	bic	r3, r3, #3
    311c:	e3c33403 	bic	r3, r3, #50331648	; 0x3000000
    3120:	e1834002 	orr	r4, r3, r2
    3124:	e5814060 	str	r4, [r1, #96]	; 0x60
    3128:	e59f1078 	ldr	r1, [pc, #120]	; 0x31a8
    312c:	e59121a4 	ldr	r2, [r1, #420]	; 0x1a4
    3130:	e3a03000 	mov	r3, #0
    3134:	e1822003 	orr	r2, r2, r3
    3138:	e58121a4 	str	r2, [r1, #420]	; 0x1a4
    313c:	e5912184 	ldr	r2, [r1, #388]	; 0x184
    3140:	e3a03000 	mov	r3, #0
    3144:	e1822003 	orr	r2, r2, r3
    3148:	e5812184 	str	r2, [r1, #388]	; 0x184
    314c:	e5912190 	ldr	r2, [r1, #400]	; 0x190
    3150:	e3a03020 	mov	r3, #32
    3154:	e1822003 	orr	r2, r2, r3
    3158:	e5812190 	str	r2, [r1, #400]	; 0x190
    315c:	e59fd048 	ldr	sp, [pc, #72]	; 0x31ac
    3160:	e59f3048 	ldr	r3, [pc, #72]	; 0x31b0
    3164:	e5932000 	ldr	r2, [r3]
    3168:	e30f1fff 	movw	r1, #65535	; 0xffff
    316c:	e0010002 	and	r0, r1, r2
    3170:	e30e1fe8 	movw	r1, #61416	; 0xefe8
    3174:	e1500001 	cmp	r0, r1
    3178:	0a000088 	beq	0x33a0
    317c:	e59fd028 	ldr	sp, [pc, #40]	; 0x31ac
    3180:	e356005c 	cmp	r6, #92	; 0x5c
    3184:	0a000016 	beq	0x31e4
    3188:	e3a0006f 	mov	r0, #111	; 0x6f
    318c:	eb000021 	bl	0x3218
    3190:	eafffffe 	b	0x3190

    3194:	08001564
    3198:	fa50392f
    319c:	00021004
    31a0:	790dca3a
    31a4:	06000cb8
    31a8:	06000400
    31ac:	00019ffc
    31b0:	08001560

    31b4:	e3a02000 	mov	r2, #0
    31b8:	e3a01000 	mov	r1, #0
    31bc:	e3a03702 	mov	r3, #524288	; 0x80000
    31c0:	e0831400 	add	r1, r3, r0, lsl #8
    31c4:	e5912000 	ldr	r2, [r1]
    31c8:	e12fff1e 	bx	lr
    31cc:	e92d4070 	push	{r4, r5, r6, lr}
    31d0:	e1a04000 	mov	r4, r0
    31d4:	e1a05001 	mov	r5, r1
    31d8:	e1a00004 	mov	r0, r4
    31dc:	eb0011a5 	bl	0x7878
    31e0:	e8bd8070 	pop	{r4, r5, r6, pc}
    31e4:	e92d4010 	push	{r4, lr}
    31e8:	e3a04000 	mov	r4, #0
    31ec:	e3a00000 	mov	r0, #0
    31f0:	eb00076a 	bl	0x4fa0
    31f4:	e1a04000 	mov	r4, r0
    31f8:	e3540000 	cmp	r4, #0
    31fc:	1a000002 	bne	0x320c
    3200:	e3a010fc 	mov	r1, #252	; 0xfc
    3204:	e3a00801 	mov	r0, #65536	; 0x10000
    3208:	ebffffef 	bl	0x31cc
    320c:	e3a00020 	mov	r0, #32
    3210:	eb001198 	bl	0x7878
    3214:	e8bd8010 	pop	{r4, pc}
    3218:	e92d4070 	push	{r4, r5, r6, lr}
    321c:	e1a05000 	mov	r5, r0
    3220:	e3a06000 	mov	r6, #0
    3224:	e3550000 	cmp	r5, #0
    3228:	0a000004 	beq	0x3240
    322c:	eb00114a 	bl	0x775c
    3230:	e1a04000 	mov	r4, r0
    3234:	e3540000 	cmp	r4, #0
    3238:	0a000000 	beq	0x3240
    323c:	ea000051 	b	0x3388
    3240:	eb001159 	bl	0x77ac
    3244:	e1a06000 	mov	r6, r0
    3248:	e3560000 	cmp	r6, #0
    324c:	0a000021 	beq	0x32d8
    3250:	e3560001 	cmp	r6, #1
    3254:	0a000011 	beq	0x32a0
    3258:	e3560002 	cmp	r6, #2
    325c:	0a000007 	beq	0x3280
    3260:	e3560003 	cmp	r6, #3
    3264:	1a000043 	bne	0x3378
    3268:	eb0006e2 	bl	0x4df8
    326c:	e1a04000 	mov	r4, r0
    3270:	e3540000 	cmp	r4, #0
    3274:	1a000000 	bne	0x327c
    3278:	ea000044 	b	0x3390
    327c:	ea00003f 	b	0x3380
    3280:	e320f000 	nop	{0}
    3284:	e3a00002 	mov	r0, #2
    3288:	eb000744 	bl	0x4fa0
    328c:	e1a04000 	mov	r4, r0
    3290:	e3540000 	cmp	r4, #0
    3294:	1a000000 	bne	0x329c
    3298:	ea00003c 	b	0x3390
    329c:	ea000037 	b	0x3380
    32a0:	e320f000 	nop	{0}
    32a4:	e3a00002 	mov	r0, #2
    32a8:	eb0006ef 	bl	0x4e6c
    32ac:	e1a04000 	mov	r4, r0
    32b0:	e3540000 	cmp	r4, #0
    32b4:	1a000000 	bne	0x32bc
    32b8:	ea000034 	b	0x3390
    32bc:	e3a00002 	mov	r0, #2
    32c0:	eb000736 	bl	0x4fa0
    32c4:	e1a04000 	mov	r4, r0
    32c8:	e3540000 	cmp	r4, #0
    32cc:	1a000000 	bne	0x32d4
    32d0:	ea00002e 	b	0x3390
    32d4:	ea000029 	b	0x3380
    32d8:	e320f000 	nop	{0}
    32dc:	e3a00000 	mov	r0, #0
    32e0:	ebffffb3 	bl	0x31b4
    32e4:	e3a00000 	mov	r0, #0
    32e8:	eb00072c 	bl	0x4fa0
    32ec:	e1a04000 	mov	r4, r0
    32f0:	e3540000 	cmp	r4, #0
    32f4:	1a000000 	bne	0x32fc
    32f8:	ea000024 	b	0x3390
    32fc:	e3a00001 	mov	r0, #1
    3300:	ebffffab 	bl	0x31b4
    3304:	eb0006bb 	bl	0x4df8
    3308:	e1a04000 	mov	r4, r0
    330c:	e3540000 	cmp	r4, #0
    3310:	1a000000 	bne	0x3318
    3314:	ea00001d 	b	0x3390
    3318:	e3a00002 	mov	r0, #2
    331c:	ebffffa4 	bl	0x31b4
    3320:	e3a00002 	mov	r0, #2
    3324:	eb0006d0 	bl	0x4e6c
    3328:	e1a04000 	mov	r4, r0
    332c:	e3540000 	cmp	r4, #0
    3330:	1a000000 	bne	0x3338
    3334:	ea000015 	b	0x3390
    3338:	e3a00002 	mov	r0, #2
    333c:	eb000717 	bl	0x4fa0
    3340:	e1a04000 	mov	r4, r0
    3344:	e3540000 	cmp	r4, #0
    3348:	1a000000 	bne	0x3350
    334c:	ea00000f 	b	0x3390
    3350:	e3a00003 	mov	r0, #3
    3354:	ebffff96 	bl	0x31b4
    3358:	eb001052 	bl	0x74a8
    335c:	e1a04000 	mov	r4, r0
    3360:	e3540000 	cmp	r4, #0
    3364:	1a000000 	bne	0x336c
    3368:	ea000008 	b	0x3390
    336c:	e3a00004 	mov	r0, #4
    3370:	ebffff8f 	bl	0x31b4
    3374:	ea000001 	b	0x3380
    3378:	e320f000 	nop	{0}
    337c:	e320f000 	nop	{0}
    3380:	e320f000 	nop	{0}
    3384:	e320f000 	nop	{0}
    3388:	ebffff95 	bl	0x31e4
    338c:	e320f000 	nop	{0}
    3390:	e3a010fc 	mov	r1, #252	; 0xfc
    3394:	e3a00801 	mov	r0, #65536	; 0x10000
    3398:	ebffff8b 	bl	0x31cc
    339c:	e8bd8070 	pop	{r4, r5, r6, pc}
    33a0:	e92d4070 	push	{r4, r5, r6, lr}
    33a4:	e59f405c 	ldr	r4, [pc, #92]	; 0x3408
    33a8:	e3a06000 	mov	r6, #0
    33ac:	e3a05000 	mov	r5, #0
    33b0:	e5946000 	ldr	r6, [r4]
    33b4:	e5965010 	ldr	r5, [r6, #16]
    33b8:	e28f104c 	add	r1, pc, #76	; 0x340c
    33bc:	e5940000 	ldr	r0, [r4]
    33c0:	eb00106e 	bl	0x7580
    33c4:	e3500000 	cmp	r0, #0
    33c8:	1a00000b 	bne	0x33fc
    33cc:	e1a00005 	mov	r0, r5
    33d0:	e7df051f 	bfc	r0, #10, #22
    33d4:	e3500000 	cmp	r0, #0
    33d8:	1a000007 	bne	0x33fc
    33dc:	e1a01005 	mov	r1, r5
    33e0:	e5940000 	ldr	r0, [r4]
    33e4:	eb001077 	bl	0x75c8
    33e8:	e3500000 	cmp	r0, #0
    33ec:	1a000002 	bne	0x33fc
    33f0:	e3a010fc 	mov	r1, #252	; 0xfc
    33f4:	e5940000 	ldr	r0, [r4]
    33f8:	ebffff73 	bl	0x31cc
    33fc:	e3a00000 	mov	r0, #0
    3400:	ebffff84 	bl	0x3218
    3404:	e8bd8070 	pop	{r4, r5, r6, pc}

    3408:	08001568
    340c:	"eGON.BT0"
    3410:	3054422e
    3414:	00000000

    3418:	e59f0580 	ldr	r0, [pc, #1408]	; 0x39a0
    341c:	e59f1580 	ldr	r1, [pc, #1408]	; 0x39a4
    3420:	e5810000 	str	r0, [r1]
    3424:	e1811bc0 	orr	r1, r1, r0, asr #23
    3428:	e5810000 	str	r0, [r1]
    342c:	e3070222 	movw	r0, #29218	; 0x7222
    3430:	e0211540 	eor	r1, r1, r0, asr #10
    3434:	e5810000 	str	r0, [r1]
    3438:	e59f0568 	ldr	r0, [pc, #1384]	; 0x39a8
    343c:	e28110f8 	add	r1, r1, #248	; 0xf8
    3440:	e5810000 	str	r0, [r1]
    3444:	e1800140 	orr	r0, r0, r0, asr #2
    3448:	e24110ec 	sub	r1, r1, #236	; 0xec
    344c:	e5810000 	str	r0, [r1]
    3450:	e3a00055 	mov	r0, #85	; 0x55
    3454:	e2811004 	add	r1, r1, #4
    3458:	e5810000 	str	r0, [r1]
    345c:	e59f0548 	ldr	r0, [pc, #1352]	; 0x39ac
    3460:	e28110f8 	add	r1, r1, #248	; 0xf8
    3464:	e5810000 	str	r0, [r1]
    3468:	e3050140 	movw	r0, #20800	; 0x5140
    346c:	e24110f4 	sub	r1, r1, #244	; 0xf4
    3470:	e5810000 	str	r0, [r1]
    3474:	e3a00014 	mov	r0, #20
    3478:	e2811004 	add	r1, r1, #4
    347c:	e5810000 	str	r0, [r1]
    3480:	e12fff1e 	bx	lr
    3484:	e92d4070 	push	{r4, r5, r6, lr}
    3488:	ebffffe2 	bl	0x3418
    348c:	e59f051c 	ldr	r0, [pc, #1308]	; 0x39b0
    3490:	e5900000 	ldr	r0, [r0]
    3494:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
    3498:	e59f1510 	ldr	r1, [pc, #1296]	; 0x39b0
    349c:	e5810000 	str	r0, [r1]
    34a0:	e2410020 	sub	r0, r1, #32
    34a4:	e5900000 	ldr	r0, [r0]
    34a8:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
    34ac:	e2411020 	sub	r1, r1, #32
    34b0:	e5810000 	str	r0, [r1]
    34b4:	e2410d06 	sub	r0, r1, #384	; 0x180
    34b8:	e5900000 	ldr	r0, [r0]
    34bc:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    34c0:	e2411d06 	sub	r1, r1, #384	; 0x180
    34c4:	e5810000 	str	r0, [r1]
    34c8:	e59f54e4 	ldr	r5, [pc, #1252]	; 0x39b4
    34cc:	e1a00001 	mov	r0, r1
    34d0:	e5900000 	ldr	r0, [r0]
    34d4:	e1c04005 	bic	r4, r0, r5
    34d8:	e3844001 	orr	r4, r4, #1
    34dc:	e1a00001 	mov	r0, r1
    34e0:	e5804000 	str	r4, [r0]
    34e4:	e5900000 	ldr	r0, [r0]
    34e8:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    34ec:	e5810000 	str	r0, [r1]
    34f0:	e2810004 	add	r0, r1, #4
    34f4:	e5804000 	str	r4, [r0]
    34f8:	e5900000 	ldr	r0, [r0]
    34fc:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    3500:	e2811004 	add	r1, r1, #4
    3504:	e5810000 	str	r0, [r1]
    3508:	e2810f5f 	add	r0, r1, #380	; 0x17c
    350c:	e5900000 	ldr	r0, [r0]
    3510:	e3800a02 	orr	r0, r0, #8192	; 0x2000
    3514:	e2811f5f 	add	r1, r1, #380	; 0x17c
    3518:	e5810000 	str	r0, [r1]
    351c:	e2810020 	add	r0, r1, #32
    3520:	e5900000 	ldr	r0, [r0]
    3524:	e3800a02 	orr	r0, r0, #8192	; 0x2000
    3528:	e2811020 	add	r1, r1, #32
    352c:	e5810000 	str	r0, [r1]
    3530:	e3a00001 	mov	r0, #1
    3534:	e59f147c 	ldr	r1, [pc, #1148]	; 0x39b8
    3538:	e5810000 	str	r0, [r1]
    353c:	e3a00000 	mov	r0, #0
    3540:	ea000005 	b	0x355c
    3544:	e59f146c 	ldr	r1, [pc, #1132]	; 0x39b8
    3548:	e5911000 	ldr	r1, [r1]
    354c:	e3110002 	tst	r1, #2
    3550:	1a000000 	bne	0x3558
    3554:	ea000002 	b	0x3564
    3558:	e2800001 	add	r0, r0, #1
    355c:	e35000f0 	cmp	r0, #240	; 0xf0
    3560:	3afffff7 	bcc	0x3544
    3564:	e320f000 	nop	{0}
    3568:	e3a00000 	mov	r0, #0
    356c:	ea000000 	b	0x3574
    3570:	e2800001 	add	r0, r0, #1
    3574:	e35000f0 	cmp	r0, #240	; 0xf0
    3578:	3afffffc 	bcc	0x3570
    357c:	e8bd8070 	pop	{r4, r5, r6, pc}
    3580:	e59f0434 	ldr	r0, [pc, #1076]	; 0x39bc
    3584:	e59f1418 	ldr	r1, [pc, #1048]	; 0x39a4
    3588:	e5810000 	str	r0, [r1]
    358c:	e1811bc1 	orr	r1, r1, r1, asr #23
    3590:	e5810000 	str	r0, [r1]
    3594:	e3070777 	movw	r0, #30583	; 0x7777
    3598:	e2811004 	add	r1, r1, #4
    359c:	e5810000 	str	r0, [r1]
    35a0:	e1800800 	orr	r0, r0, r0, lsl #16
    35a4:	e28110f8 	add	r1, r1, #248	; 0xf8
    35a8:	e5810000 	str	r0, [r1]
    35ac:	e0000160 	and	r0, r0, r0, ror #2
    35b0:	e24110ec 	sub	r1, r1, #236	; 0xec
    35b4:	e5810000 	str	r0, [r1]
    35b8:	e3a00055 	mov	r0, #85	; 0x55
    35bc:	e2811004 	add	r1, r1, #4
    35c0:	e5810000 	str	r0, [r1]
    35c4:	e59f03e0 	ldr	r0, [pc, #992]	; 0x39ac
    35c8:	e28110f8 	add	r1, r1, #248	; 0xf8
    35cc:	e5810000 	str	r0, [r1]
    35d0:	e3050140 	movw	r0, #20800	; 0x5140
    35d4:	e24110f4 	sub	r1, r1, #244	; 0xf4
    35d8:	e5810000 	str	r0, [r1]
    35dc:	e3a00054 	mov	r0, #84	; 0x54
    35e0:	e2811004 	add	r1, r1, #4
    35e4:	e5810000 	str	r0, [r1]
    35e8:	e12fff1e 	bx	lr
    35ec:	e59f03cc 	ldr	r0, [pc, #972]	; 0x39c0
    35f0:	e59f13c0 	ldr	r1, [pc, #960]	; 0x39b8
    35f4:	e5810034 	str	r0, [r1, #52]	; 0x34
    35f8:	e12fff1e 	bx	lr
    35fc:	e92d4010 	push	{r4, lr}
    3600:	ebfffff9 	bl	0x35ec
    3604:	e59f03ac 	ldr	r0, [pc, #940]	; 0x39b8
    3608:	e5900000 	ldr	r0, [r0]
    360c:	e3c00001 	bic	r0, r0, #1
    3610:	e59f13a0 	ldr	r1, [pc, #928]	; 0x39b8
    3614:	e5810000 	str	r0, [r1]
    3618:	e59f03a4 	ldr	r0, [pc, #932]	; 0x39c4
    361c:	e5900000 	ldr	r0, [r0]
    3620:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    3624:	e59f1398 	ldr	r1, [pc, #920]	; 0x39c4
    3628:	e5810000 	str	r0, [r1]
    362c:	e2810004 	add	r0, r1, #4
    3630:	e5900000 	ldr	r0, [r0]
    3634:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    3638:	e2811004 	add	r1, r1, #4
    363c:	e5810000 	str	r0, [r1]
    3640:	e2810f67 	add	r0, r1, #412	; 0x19c
    3644:	e5900000 	ldr	r0, [r0]
    3648:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
    364c:	e2811f67 	add	r1, r1, #412	; 0x19c
    3650:	e5810000 	str	r0, [r1]
    3654:	e2410020 	sub	r0, r1, #32
    3658:	e5900000 	ldr	r0, [r0]
    365c:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
    3660:	e2411020 	sub	r1, r1, #32
    3664:	e5810000 	str	r0, [r1]
    3668:	ebffffc4 	bl	0x3580
    366c:	e8bd8010 	pop	{r4, pc}
    3670:	e92d4070 	push	{r4, r5, r6, lr}
    3674:	e1a03000 	mov	r3, r0
    3678:	e1a04001 	mov	r4, r1
    367c:	e3540c02 	cmp	r4, #512	; 0x200
    3680:	0a000003 	beq	0x3694
    3684:	e3540b01 	cmp	r4, #1024	; 0x400
    3688:	1a000004 	bne	0x36a0
    368c:	e3a01000 	mov	r1, #0
    3690:	ea000005 	b	0x36ac
    3694:	e320f000 	nop	{0}
    3698:	e3a01001 	mov	r1, #1
    369c:	ea000002 	b	0x36ac
    36a0:	e320f000 	nop	{0}
    36a4:	e3a01000 	mov	r1, #0
    36a8:	e320f000 	nop	{0}
    36ac:	e320f000 	nop	{0}
    36b0:	e3130003 	tst	r3, #3
    36b4:	1a000031 	bne	0x3780
    36b8:	e1a05143 	asr	r5, r3, #2
    36bc:	e2455004 	sub	r5, r5, #4
    36c0:	e355000f 	cmp	r5, #15
    36c4:	308ff105 	addcc	pc, pc, r5, lsl #2
    36c8:	ea00002c 	b	0x3780
    36cc:	ea000028 	b	0x3774
    36d0:	ea00002a 	b	0x3780
    36d4:	ea000023 	b	0x3768
    36d8:	ea00001f 	b	0x375c
    36dc:	ea00001b 	b	0x3750
    36e0:	ea000026 	b	0x3780
    36e4:	ea000016 	b	0x3744
    36e8:	ea000024 	b	0x3780
    36ec:	ea000011 	b	0x3738
    36f0:	ea000022 	b	0x3780
    36f4:	ea00000c 	b	0x372c
    36f8:	ea000008 	b	0x3720
    36fc:	ea000004 	b	0x3714
    3700:	ea00001e 	b	0x3780
    3704:	eaffffff 	b	0x3708
    3708:	e320f000 	nop	{0}
    370c:	e3a00009 	mov	r0, #9
    3710:	ea00001d 	b	0x378c
    3714:	e320f000 	nop	{0}
    3718:	e3a00008 	mov	r0, #8
    371c:	ea00001a 	b	0x378c
    3720:	e320f000 	nop	{0}
    3724:	e3a00007 	mov	r0, #7
    3728:	ea000017 	b	0x378c
    372c:	e320f000 	nop	{0}
    3730:	e3a00006 	mov	r0, #6
    3734:	ea000014 	b	0x378c
    3738:	e320f000 	nop	{0}
    373c:	e3a00005 	mov	r0, #5
    3740:	ea000011 	b	0x378c
    3744:	e320f000 	nop	{0}
    3748:	e3a00004 	mov	r0, #4
    374c:	ea00000e 	b	0x378c
    3750:	e320f000 	nop	{0}
    3754:	e3a00003 	mov	r0, #3
    3758:	ea00000b 	b	0x378c
    375c:	e320f000 	nop	{0}
    3760:	e3a00002 	mov	r0, #2
    3764:	ea000008 	b	0x378c
    3768:	e320f000 	nop	{0}
    376c:	e3a00001 	mov	r0, #1
    3770:	ea000005 	b	0x378c
    3774:	e320f000 	nop	{0}
    3778:	e3a00000 	mov	r0, #0
    377c:	ea000002 	b	0x378c
    3780:	e320f000 	nop	{0}
    3784:	e3a00009 	mov	r0, #9
    3788:	e320f000 	nop	{0}
    378c:	e320f000 	nop	{0}
    3790:	e59f5220 	ldr	r5, [pc, #544]	; 0x39b8
    3794:	e595c034 	ldr	ip, [r5, #52]	; 0x34
    3798:	e30f5220 	movw	r5, #61984	; 0xf220
    379c:	e1ccc005 	bic	ip, ip, r5
    37a0:	e18c5600 	orr	r5, ip, r0, lsl #12
    37a4:	e1855281 	orr	r5, r5, r1, lsl #5
    37a8:	e3855001 	orr	r5, r5, #1
    37ac:	e1855482 	orr	r5, r5, r2, lsl #9
    37b0:	e59f6200 	ldr	r6, [pc, #512]	; 0x39b8
    37b4:	e5865034 	str	r5, [r6, #52]	; 0x34
    37b8:	e8bd8070 	pop	{r4, r5, r6, pc}
    37bc:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    37c0:	e1a04000 	mov	r4, r0
    37c4:	ebffff2e 	bl	0x3484
    37c8:	e594000c 	ldr	r0, [r4, #12]
    37cc:	e3500000 	cmp	r0, #0
    37d0:	0a000000 	beq	0x37d8
    37d4:	eb0001d9 	bl	0x3f40
    37d8:	e5940020 	ldr	r0, [r4, #32]
    37dc:	e5942024 	ldr	r2, [r4, #36]	; 0x24
    37e0:	e5941028 	ldr	r1, [r4, #40]	; 0x28
    37e4:	ebffffa1 	bl	0x3670
    37e8:	e59f01c8 	ldr	r0, [pc, #456]	; 0x39b8
    37ec:	e5900000 	ldr	r0, [r0]
    37f0:	e59f11d0 	ldr	r1, [pc, #464]	; 0x39c8
    37f4:	e0006001 	and	r6, r0, r1
    37f8:	e5940018 	ldr	r0, [r4, #24]
    37fc:	e3500010 	cmp	r0, #16
    3800:	0a000015 	beq	0x385c
    3804:	ca000006 	bgt	0x3824
    3808:	e3500002 	cmp	r0, #2
    380c:	0a000009 	beq	0x3838
    3810:	e3500004 	cmp	r0, #4
    3814:	0a00000a 	beq	0x3844
    3818:	e3500008 	cmp	r0, #8
    381c:	1a000017 	bne	0x3880
    3820:	ea00000a 	b	0x3850
    3824:	e3500020 	cmp	r0, #32
    3828:	0a00000e 	beq	0x3868
    382c:	e3500040 	cmp	r0, #64	; 0x40
    3830:	1a000012 	bne	0x3880
    3834:	ea00000e 	b	0x3874
    3838:	e320f000 	nop	{0}
    383c:	e3a05000 	mov	r5, #0
    3840:	ea000011 	b	0x388c
    3844:	e320f000 	nop	{0}
    3848:	e3a05001 	mov	r5, #1
    384c:	ea00000e 	b	0x388c
    3850:	e320f000 	nop	{0}
    3854:	e3a05002 	mov	r5, #2
    3858:	ea00000b 	b	0x388c
    385c:	e320f000 	nop	{0}
    3860:	e3a05003 	mov	r5, #3
    3864:	ea000008 	b	0x388c
    3868:	e320f000 	nop	{0}
    386c:	e3a05004 	mov	r5, #4
    3870:	ea000005 	b	0x388c
    3874:	e320f000 	nop	{0}
    3878:	e3a05005 	mov	r5, #5
    387c:	ea000002 	b	0x388c
    3880:	e320f000 	nop	{0}
    3884:	e3a05000 	mov	r5, #0
    3888:	e320f000 	nop	{0}
    388c:	e320f000 	nop	{0}
    3890:	e5940008 	ldr	r0, [r4, #8]
    3894:	e2009003 	and	r9, r0, #3
    3898:	e1860909 	orr	r0, r6, r9, lsl #18
    389c:	e1800405 	orr	r0, r0, r5, lsl #8
    38a0:	e3800901 	orr	r0, r0, #16384	; 0x4000
    38a4:	e594102c 	ldr	r1, [r4, #44]	; 0x2c
    38a8:	e2011001 	and	r1, r1, #1
    38ac:	e1800101 	orr	r0, r0, r1, lsl #2
    38b0:	e59f1100 	ldr	r1, [pc, #256]	; 0x39b8
    38b4:	e5810000 	str	r0, [r1]
    38b8:	e1a00001 	mov	r0, r1
    38bc:	e590000c 	ldr	r0, [r0, #12]
    38c0:	e3011f3f 	movw	r1, #7999	; 0x1f3f
    38c4:	e1c06001 	bic	r6, r0, r1
    38c8:	e5940008 	ldr	r0, [r4, #8]
    38cc:	e3500003 	cmp	r0, #3
    38d0:	1a000004 	bne	0x38e8
    38d4:	e5940010 	ldr	r0, [r4, #16]
    38d8:	e200700f 	and	r7, r0, #15
    38dc:	e5940014 	ldr	r0, [r4, #20]
    38e0:	e200803f 	and	r8, r0, #63	; 0x3f
    38e4:	ea000001 	b	0x38f0
    38e8:	e3a07000 	mov	r7, #0
    38ec:	e3a08000 	mov	r8, #0
    38f0:	e1860407 	orr	r0, r6, r7, lsl #8
    38f4:	e1800008 	orr	r0, r0, r8
    38f8:	e59f10b8 	ldr	r1, [pc, #184]	; 0x39b8
    38fc:	e581000c 	str	r0, [r1, #12]
    3900:	e5940018 	ldr	r0, [r4, #24]
    3904:	e1a00480 	lsl	r0, r0, #9
    3908:	e58100f4 	str	r0, [r1, #244]	; 0xf4
    390c:	e1a00001 	mov	r0, r1
    3910:	e5906000 	ldr	r6, [r0]
    3914:	e3866020 	orr	r6, r6, #32
    3918:	e5806000 	str	r6, [r0]
    391c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    3920:	e59f2090 	ldr	r2, [pc, #144]	; 0x39b8
    3924:	e5922000 	ldr	r2, [r2]
    3928:	e7e31452 	ubfx	r1, r2, #8, #4
    392c:	e3510006 	cmp	r1, #6
    3930:	308ff101 	addcc	pc, pc, r1, lsl #2
    3934:	ea000014 	b	0x398c
    3938:	ea000004 	b	0x3950
    393c:	ea000012 	b	0x398c
    3940:	ea000005 	b	0x395c
    3944:	ea000007 	b	0x3968
    3948:	ea000009 	b	0x3974
    394c:	ea00000b 	b	0x3980
    3950:	e320f000 	nop	{0}
    3954:	e3000400 	movw	r0, #1024	; 0x400
    3958:	ea00000e 	b	0x3998
    395c:	e320f000 	nop	{0}
    3960:	e3010000 	movw	r0, #4096	; 0x1000
    3964:	ea00000b 	b	0x3998
    3968:	e320f000 	nop	{0}
    396c:	e3020000 	movw	r0, #8192	; 0x2000
    3970:	ea000008 	b	0x3998
    3974:	e320f000 	nop	{0}
    3978:	e3040000 	movw	r0, #16384	; 0x4000
    397c:	ea000005 	b	0x3998
    3980:	e320f000 	nop	{0}
    3984:	e3080000 	movw	r0, #32768	; 0x8000
    3988:	ea000002 	b	0x3998
    398c:	e320f000 	nop	{0}
    3990:	e3000400 	movw	r0, #1024	; 0x400
    3994:	e320f000 	nop	{0}
    3998:	e320f000 	nop	{0}
    399c:	e12fff1e 	bx	lr

    39a0:	22222222
    39a4:	06000848
    39a8:	44444444
    39ac:	55555555
    39b0:	060005a0
    39b4:	0303000f
    39b8:	01c03000
    39bc:	77777777
    39c0:	4a800008
    39c4:	06000400
    39c8:	ffb330fb

    39cc:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    39d0:	e1a03000 	mov	r3, r0
    39d4:	e1a04001 	mov	r4, r1
    39d8:	e304ef4e 	movw	lr, #20302	; 0x4f4e
    39dc:	e3a05010 	mov	r5, #16
    39e0:	e3088005 	movw	r8, #32773	; 0x8005
    39e4:	e1a0000e 	mov	r0, lr
    39e8:	e245a001 	sub	sl, r5, #1
    39ec:	e3a0b001 	mov	fp, #1
    39f0:	e1a0aa1b 	lsl	sl, fp, sl
    39f4:	e24aa001 	sub	sl, sl, #1
    39f8:	e18b908a 	orr	r9, fp, sl, lsl #1
    39fc:	e245a001 	sub	sl, r5, #1
    3a00:	e1a0ca1b 	lsl	ip, fp, sl
    3a04:	e3a02000 	mov	r2, #0
    3a08:	ea00000f 	b	0x3a4c
    3a0c:	e7d36002 	ldrb	r6, [r3, r2]
    3a10:	e3a01080 	mov	r1, #128	; 0x80
    3a14:	ea000008 	b	0x3a3c
    3a18:	e000700c 	and	r7, r0, ip
    3a1c:	e1a00080 	lsl	r0, r0, #1
    3a20:	e1160001 	tst	r6, r1
    3a24:	0a000000 	beq	0x3a2c
    3a28:	e027700c 	eor	r7, r7, ip
    3a2c:	e3570000 	cmp	r7, #0
    3a30:	0a000000 	beq	0x3a38
    3a34:	e0200008 	eor	r0, r0, r8
    3a38:	e1a010a1 	lsr	r1, r1, #1
    3a3c:	e3510000 	cmp	r1, #0
    3a40:	1afffff4 	bne	0x3a18
    3a44:	e0000009 	and	r0, r0, r9
    3a48:	e2822001 	add	r2, r2, #1
    3a4c:	e1520004 	cmp	r2, r4
    3a50:	3affffed 	bcc	0x3a0c
    3a54:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    3a58:	e1a02000 	mov	r2, r0
    3a5c:	e1a03001 	mov	r3, r1
    3a60:	e3a01000 	mov	r1, #0
    3a64:	e3a0c000 	mov	ip, #0
    3a68:	ea000002 	b	0x3a78
    3a6c:	e3a00001 	mov	r0, #1
    3a70:	e18cc110 	orr	ip, ip, r0, lsl r1
    3a74:	e2811001 	add	r1, r1, #1
    3a78:	e1510003 	cmp	r1, r3
    3a7c:	3afffffa 	bcc	0x3a6c
    3a80:	e002000c 	and	r0, r2, ip
    3a84:	e12fff1e 	bx	lr
    3a88:	e92d4010 	push	{r4, lr}
    3a8c:	e1a02000 	mov	r2, r0
    3a90:	e3a00a22 	mov	r0, #139264	; 0x22000
    3a94:	e3e03000 	mvn	r3, #0
    3a98:	e59f4e7c 	ldr	r4, [pc, #3708]	; 0x491c
    3a9c:	e5843204 	str	r3, [r4, #516]	; 0x204
    3aa0:	e3a03000 	mov	r3, #0
    3aa4:	e5803004 	str	r3, [r0, #4]
    3aa8:	e6ff4071 	uxth	r4, r1
    3aac:	e5903004 	ldr	r3, [r0, #4]
    3ab0:	e1833004 	orr	r3, r3, r4
    3ab4:	e5803004 	str	r3, [r0, #4]
    3ab8:	e3a03000 	mov	r3, #0
    3abc:	e5803008 	str	r3, [r0, #8]
    3ac0:	e5802008 	str	r2, [r0, #8]
    3ac4:	e5803000 	str	r3, [r0]
    3ac8:	e5903000 	ldr	r3, [r0]
    3acc:	e3833008 	orr	r3, r3, #8
    3ad0:	e5803000 	str	r3, [r0]
    3ad4:	e5903000 	ldr	r3, [r0]
    3ad8:	e3833004 	orr	r3, r3, #4
    3adc:	e5803000 	str	r3, [r0]
    3ae0:	e59f3e34 	ldr	r3, [pc, #3636]	; 0x491c
    3ae4:	e5830200 	str	r0, [r3, #512]	; 0x200
    3ae8:	e8bd8010 	pop	{r4, pc}
    3aec:	e1a01000 	mov	r1, r0
    3af0:	e320f000 	nop	{0}
    3af4:	e59f0e20 	ldr	r0, [pc, #3616]	; 0x491c
    3af8:	e5900204 	ldr	r0, [r0, #516]	; 0x204
    3afc:	e3100001 	tst	r0, #1
    3b00:	0a000001 	beq	0x3b0c
    3b04:	e3a00000 	mov	r0, #0
    3b08:	e12fff1e 	bx	lr
    3b0c:	e2410001 	sub	r0, r1, #1
    3b10:	e1b01000 	movs	r1, r0
    3b14:	1afffff6 	bne	0x3af4
    3b18:	e3a00002 	mov	r0, #2
    3b1c:	eafffff9 	b	0x3b08
    3b20:	e3a00a22 	mov	r0, #139264	; 0x22000
    3b24:	e3e01000 	mvn	r1, #0
    3b28:	e59f2dec 	ldr	r2, [pc, #3564]	; 0x491c
    3b2c:	e5821204 	str	r1, [r2, #516]	; 0x204
    3b30:	e3a01000 	mov	r1, #0
    3b34:	e5801004 	str	r1, [r0, #4]
    3b38:	e5801008 	str	r1, [r0, #8]
    3b3c:	e5801000 	str	r1, [r0]
    3b40:	e1c21140 	bic	r1, r2, r0, asr #2
    3b44:	e5810200 	str	r0, [r1, #512]	; 0x200
    3b48:	e3a01000 	mov	r1, #0
    3b4c:	e582101c 	str	r1, [r2, #28]
    3b50:	e12fff1e 	bx	lr
    3b54:	e1a01000 	mov	r1, r0
    3b58:	e320f000 	nop	{0}
    3b5c:	e59f0db8 	ldr	r0, [pc, #3512]	; 0x491c
    3b60:	e5900004 	ldr	r0, [r0, #4]
    3b64:	e3100002 	tst	r0, #2
    3b68:	0a000001 	beq	0x3b74
    3b6c:	e3a00000 	mov	r0, #0
    3b70:	e12fff1e 	bx	lr
    3b74:	e2410001 	sub	r0, r1, #1
    3b78:	e1b01000 	movs	r1, r0
    3b7c:	1afffff6 	bne	0x3b5c
    3b80:	e3a00002 	mov	r0, #2
    3b84:	eafffff9 	b	0x3b70
    3b88:	e1a01000 	mov	r1, r0
    3b8c:	e320f000 	nop	{0}
    3b90:	e59f0d84 	ldr	r0, [pc, #3460]	; 0x491c
    3b94:	e5900004 	ldr	r0, [r0, #4]
    3b98:	e3100008 	tst	r0, #8
    3b9c:	1a000001 	bne	0x3ba8
    3ba0:	e3a00000 	mov	r0, #0
    3ba4:	e12fff1e 	bx	lr
    3ba8:	e2410001 	sub	r0, r1, #1
    3bac:	e1b01000 	movs	r1, r0
    3bb0:	1afffff6 	bne	0x3b90
    3bb4:	e3a00002 	mov	r0, #2
    3bb8:	eafffff9 	b	0x3ba4
    3bbc:	e1a01000 	mov	r1, r0
    3bc0:	e320f000 	nop	{0}
    3bc4:	e59f0d50 	ldr	r0, [pc, #3408]	; 0x491c
    3bc8:	e5900004 	ldr	r0, [r0, #4]
    3bcc:	e3100004 	tst	r0, #4
    3bd0:	0a000001 	beq	0x3bdc
    3bd4:	e3a00000 	mov	r0, #0
    3bd8:	e12fff1e 	bx	lr
    3bdc:	e2410001 	sub	r0, r1, #1
    3be0:	e1b01000 	movs	r1, r0
    3be4:	1afffff6 	bne	0x3bc4
    3be8:	e3a00002 	mov	r0, #2
    3bec:	eafffff9 	b	0x3bd8
    3bf0:	e92d4070 	push	{r4, r5, r6, lr}
    3bf4:	e1a06000 	mov	r6, r0
    3bf8:	e1a04001 	mov	r4, r1
    3bfc:	e1a05002 	mov	r5, r2
    3c00:	e1a00006 	mov	r0, r6
    3c04:	ebffffdf 	bl	0x3b88
    3c08:	e3500002 	cmp	r0, #2
    3c0c:	1a000001 	bne	0x3c18
    3c10:	e3a00002 	mov	r0, #2
    3c14:	e8bd8070 	pop	{r4, r5, r6, pc}
    3c18:	e1a00005 	mov	r0, r5
    3c1c:	ebffffb2 	bl	0x3aec
    3c20:	e3500002 	cmp	r0, #2
    3c24:	1a000001 	bne	0x3c30
    3c28:	e3a00002 	mov	r0, #2
    3c2c:	eafffff8 	b	0x3c14
    3c30:	e1a00005 	mov	r0, r5
    3c34:	ebffffe0 	bl	0x3bbc
    3c38:	e3500002 	cmp	r0, #2
    3c3c:	1a000001 	bne	0x3c48
    3c40:	e3a00002 	mov	r0, #2
    3c44:	eafffff2 	b	0x3c14
    3c48:	e1a00004 	mov	r0, r4
    3c4c:	ebffffc0 	bl	0x3b54
    3c50:	e3500002 	cmp	r0, #2
    3c54:	1a000001 	bne	0x3c60
    3c58:	e3a00002 	mov	r0, #2
    3c5c:	eaffffec 	b	0x3c14
    3c60:	e3a00000 	mov	r0, #0
    3c64:	eaffffea 	b	0x3c14
    3c68:	e92d4030 	push	{r4, r5, lr}
    3c6c:	e1a02000 	mov	r2, r0
    3c70:	e3a03000 	mov	r3, #0
    3c74:	e3a0c000 	mov	ip, #0
    3c78:	e3a00000 	mov	r0, #0
    3c7c:	ea00000a 	b	0x3cac
    3c80:	e3500004 	cmp	r0, #4
    3c84:	2a000003 	bcs	0x3c98
    3c88:	e7d24000 	ldrb	r4, [r2, r0]
    3c8c:	e1a05180 	lsl	r5, r0, #3
    3c90:	e1833514 	orr	r3, r3, r4, lsl r5
    3c94:	ea000003 	b	0x3ca8
    3c98:	e7d24000 	ldrb	r4, [r2, r0]
    3c9c:	e2405004 	sub	r5, r0, #4
    3ca0:	e1a05185 	lsl	r5, r5, #3
    3ca4:	e18cc514 	orr	ip, ip, r4, lsl r5
    3ca8:	e2800001 	add	r0, r0, #1
    3cac:	e1500001 	cmp	r0, r1
    3cb0:	3afffff2 	bcc	0x3c80
    3cb4:	e59f4c60 	ldr	r4, [pc, #3168]	; 0x491c
    3cb8:	e5843014 	str	r3, [r4, #20]
    3cbc:	e584c018 	str	ip, [r4, #24]
    3cc0:	e8bd8030 	pop	{r4, r5, pc}
    3cc4:	e59f1c50 	ldr	r1, [pc, #3152]	; 0x491c
    3cc8:	e5910000 	ldr	r0, [r1]
    3ccc:	e7e11950 	ubfx	r1, r0, #18, #2
    3cd0:	e3510000 	cmp	r1, #0
    3cd4:	0a000002 	beq	0x3ce4
    3cd8:	e3800601 	orr	r0, r0, #1048576	; 0x100000
    3cdc:	e59f1c38 	ldr	r1, [pc, #3128]	; 0x491c
    3ce0:	e5810000 	str	r0, [r1]
    3ce4:	e12fff1e 	bx	lr
    3ce8:	e59f1c2c 	ldr	r1, [pc, #3116]	; 0x491c
    3cec:	e5910000 	ldr	r0, [r1]
    3cf0:	e7e11950 	ubfx	r1, r0, #18, #2
    3cf4:	e3510000 	cmp	r1, #0
    3cf8:	0a000002 	beq	0x3d08
    3cfc:	e3c00601 	bic	r0, r0, #1048576	; 0x100000
    3d00:	e59f1c14 	ldr	r1, [pc, #3092]	; 0x491c
    3d04:	e5810000 	str	r0, [r1]
    3d08:	e12fff1e 	bx	lr
    3d0c:	e92d4070 	push	{r4, r5, r6, lr}
    3d10:	e1a04000 	mov	r4, r0
    3d14:	e3015318 	movw	r5, #4888	; 0x1318
    3d18:	ebffffe9 	bl	0x3cc4
    3d1c:	e3a00000 	mov	r0, #0
    3d20:	e59f1bf4 	ldr	r1, [pc, #3060]	; 0x491c
    3d24:	e5810014 	str	r0, [r1, #20]
    3d28:	e5810018 	str	r0, [r1, #24]
    3d2c:	e3a00006 	mov	r0, #6
    3d30:	e5810020 	str	r0, [r1, #32]
    3d34:	e59f0be4 	ldr	r0, [pc, #3044]	; 0x4920
    3d38:	e5810024 	str	r0, [r1, #36]	; 0x24
    3d3c:	e1a00005 	mov	r0, r5
    3d40:	ebffff90 	bl	0x3b88
    3d44:	e3500002 	cmp	r0, #2
    3d48:	1a000001 	bne	0x3d54
    3d4c:	e3a00002 	mov	r0, #2
    3d50:	e8bd8070 	pop	{r4, r5, r6, pc}
    3d54:	e1a00005 	mov	r0, r5
    3d58:	ebffff7d 	bl	0x3b54
    3d5c:	e3500002 	cmp	r0, #2
    3d60:	1a000001 	bne	0x3d6c
    3d64:	e3a00002 	mov	r0, #2
    3d68:	eafffff8 	b	0x3d50
    3d6c:	e59f0bb0 	ldr	r0, [pc, #2992]	; 0x4924
    3d70:	e5900000 	ldr	r0, [r0]
    3d74:	e5840000 	str	r0, [r4]
    3d78:	ebffffda 	bl	0x3ce8
    3d7c:	e3a00000 	mov	r0, #0
    3d80:	eafffff2 	b	0x3d50
    3d84:	e92d41fc 	push	{r2, r3, r4, r5, r6, r7, r8, lr}
    3d88:	e1a05000 	mov	r5, r0
    3d8c:	e1a04001 	mov	r4, r1
    3d90:	e3a00000 	mov	r0, #0
    3d94:	e58d0000 	str	r0, [sp]
    3d98:	e58d0004 	str	r0, [sp, #4]
    3d9c:	e3017318 	movw	r7, #4888	; 0x1318
    3da0:	e59f0b74 	ldr	r0, [pc, #2932]	; 0x491c
    3da4:	e5906034 	ldr	r6, [r0, #52]	; 0x34
    3da8:	ebfffe0f 	bl	0x35ec
    3dac:	ebffffc4 	bl	0x3cc4
    3db0:	e59f0b64 	ldr	r0, [pc, #2916]	; 0x491c
    3db4:	e5900000 	ldr	r0, [r0]
    3db8:	e3c00901 	bic	r0, r0, #16384	; 0x4000
    3dbc:	e59f1b58 	ldr	r1, [pc, #2904]	; 0x491c
    3dc0:	e5810000 	str	r0, [r1]
    3dc4:	e5d40000 	ldrb	r0, [r4]
    3dc8:	e2811b01 	add	r1, r1, #1024	; 0x400
    3dcc:	e5c10000 	strb	r0, [r1]
    3dd0:	e5d40001 	ldrb	r0, [r4, #1]
    3dd4:	e1811c41 	orr	r1, r1, r1, asr #24
    3dd8:	e5c10000 	strb	r0, [r1]
    3ddc:	e5d40002 	ldrb	r0, [r4, #2]
    3de0:	e2811001 	add	r1, r1, #1
    3de4:	e5c10000 	strb	r0, [r1]
    3de8:	e5d40003 	ldrb	r0, [r4, #3]
    3dec:	e1811bc1 	orr	r1, r1, r1, asr #23
    3df0:	e5c10000 	strb	r0, [r1]
    3df4:	e3a00004 	mov	r0, #4
    3df8:	e59f1b1c 	ldr	r1, [pc, #2844]	; 0x491c
    3dfc:	e5810020 	str	r0, [r1, #32]
    3e00:	e1a00007 	mov	r0, r7
    3e04:	ebffff5f 	bl	0x3b88
    3e08:	e3500002 	cmp	r0, #2
    3e0c:	1a000001 	bne	0x3e18
    3e10:	e3a00002 	mov	r0, #2
    3e14:	e8bd81fc 	pop	{r2, r3, r4, r5, r6, r7, r8, pc}
    3e18:	e5cd5000 	strb	r5, [sp]
    3e1c:	e3a01001 	mov	r1, #1
    3e20:	e1a0000d 	mov	r0, sp
    3e24:	ebffff8f 	bl	0x3c68
    3e28:	e59f0af8 	ldr	r0, [pc, #2808]	; 0x4928
    3e2c:	e59f1ae8 	ldr	r1, [pc, #2792]	; 0x491c
    3e30:	e5810024 	str	r0, [r1, #36]	; 0x24
    3e34:	e1a00007 	mov	r0, r7
    3e38:	ebffff52 	bl	0x3b88
    3e3c:	e3500002 	cmp	r0, #2
    3e40:	1a000001 	bne	0x3e4c
    3e44:	e3a00002 	mov	r0, #2
    3e48:	eafffff1 	b	0x3e14
    3e4c:	e1a00007 	mov	r0, r7
    3e50:	ebffff3f 	bl	0x3b54
    3e54:	e3500002 	cmp	r0, #2
    3e58:	1a000001 	bne	0x3e64
    3e5c:	e3a00002 	mov	r0, #2
    3e60:	eaffffeb 	b	0x3e14
    3e64:	ebffff9f 	bl	0x3ce8
    3e68:	e59f0aac 	ldr	r0, [pc, #2732]	; 0x491c
    3e6c:	e5806034 	str	r6, [r0, #52]	; 0x34
    3e70:	e3a00000 	mov	r0, #0
    3e74:	eaffffe6 	b	0x3e14
    3e78:	e92d41fc 	push	{r2, r3, r4, r5, r6, r7, r8, lr}
    3e7c:	e1a07000 	mov	r7, r0
    3e80:	e1a05001 	mov	r5, r1
    3e84:	e3a00000 	mov	r0, #0
    3e88:	e58d0000 	str	r0, [sp]
    3e8c:	e58d0004 	str	r0, [sp, #4]
    3e90:	e3550c03 	cmp	r5, #768	; 0x300
    3e94:	0a000001 	beq	0x3ea0
    3e98:	e3a00002 	mov	r0, #2
    3e9c:	e8bd81fc 	pop	{r2, r3, r4, r5, r6, r7, r8, pc}
    3ea0:	e3016318 	movw	r6, #4888	; 0x1318
    3ea4:	e30142d6 	movw	r4, #4822	; 0x12d6
    3ea8:	ebffff85 	bl	0x3cc4
    3eac:	e59f0a68 	ldr	r0, [pc, #2664]	; 0x491c
    3eb0:	e5900000 	ldr	r0, [r0]
    3eb4:	e3800901 	orr	r0, r0, #16384	; 0x4000
    3eb8:	e59f1a5c 	ldr	r1, [pc, #2652]	; 0x491c
    3ebc:	e5810000 	str	r0, [r1]
    3ec0:	e1a00001 	mov	r0, r1
    3ec4:	e5805020 	str	r5, [r0, #32]
    3ec8:	e1a01005 	mov	r1, r5
    3ecc:	e1a00007 	mov	r0, r7
    3ed0:	ebfffeec 	bl	0x3a88
    3ed4:	e1a00006 	mov	r0, r6
    3ed8:	ebffff2a 	bl	0x3b88
    3edc:	e3500002 	cmp	r0, #2
    3ee0:	1a000001 	bne	0x3eec
    3ee4:	e3a00002 	mov	r0, #2
    3ee8:	eaffffeb 	b	0x3e9c
    3eec:	e3a00000 	mov	r0, #0
    3ef0:	e5cd0000 	strb	r0, [sp]
    3ef4:	e3a01001 	mov	r1, #1
    3ef8:	e1a0000d 	mov	r0, sp
    3efc:	ebffff59 	bl	0x3c68
    3f00:	e59f0a24 	ldr	r0, [pc, #2596]	; 0x492c
    3f04:	e59f1a10 	ldr	r1, [pc, #2576]	; 0x491c
    3f08:	e5810024 	str	r0, [r1, #36]	; 0x24
    3f0c:	e1a02004 	mov	r2, r4
    3f10:	e1a01004 	mov	r1, r4
    3f14:	e1a00004 	mov	r0, r4
    3f18:	ebffff34 	bl	0x3bf0
    3f1c:	e3500002 	cmp	r0, #2
    3f20:	1a000002 	bne	0x3f30
    3f24:	ebfffefd 	bl	0x3b20
    3f28:	e3a00002 	mov	r0, #2
    3f2c:	eaffffda 	b	0x3e9c
    3f30:	ebfffefa 	bl	0x3b20
    3f34:	ebffff6b 	bl	0x3ce8
    3f38:	e3a00000 	mov	r0, #0
    3f3c:	eaffffd6 	b	0x3e9c
    3f40:	e92d4010 	push	{r4, lr}
    3f44:	e59f09e4 	ldr	r0, [pc, #2532]	; 0x4930
    3f48:	e59f19cc 	ldr	r1, [pc, #2508]	; 0x491c
    3f4c:	e5810024 	str	r0, [r1, #36]	; 0x24
    3f50:	e30102c0 	movw	r0, #4800	; 0x12c0
    3f54:	ebffff0b 	bl	0x3b88
    3f58:	e3500002 	cmp	r0, #2
    3f5c:	1a000001 	bne	0x3f68
    3f60:	e3a00002 	mov	r0, #2
    3f64:	e8bd8010 	pop	{r4, pc}
    3f68:	e3010338 	movw	r0, #4920	; 0x1338
    3f6c:	ebfffef8 	bl	0x3b54
    3f70:	e3500002 	cmp	r0, #2
    3f74:	1a000001 	bne	0x3f80
    3f78:	e3a00002 	mov	r0, #2
    3f7c:	eafffff8 	b	0x3f64
    3f80:	e3a00000 	mov	r0, #0
    3f84:	eafffff6 	b	0x3f64
    3f88:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    3f8c:	e1a04000 	mov	r4, r0
    3f90:	e1a09001 	mov	r9, r1
    3f94:	e1a08002 	mov	r8, r2
    3f98:	e59f097c 	ldr	r0, [pc, #2428]	; 0x491c
    3f9c:	e5900000 	ldr	r0, [r0]
    3fa0:	e3800901 	orr	r0, r0, #16384	; 0x4000
    3fa4:	e59f1970 	ldr	r1, [pc, #2416]	; 0x491c
    3fa8:	e5810000 	str	r0, [r1]
    3fac:	ebfffe5b 	bl	0x3920
    3fb0:	e1a0a000 	mov	sl, r0
    3fb4:	e1a0552a 	lsr	r5, sl, #10
    3fb8:	e3010318 	movw	r0, #4888	; 0x1318
    3fbc:	e58d0000 	str	r0, [sp]
    3fc0:	e3a00016 	mov	r0, #22
    3fc4:	e0000095 	mul	r0, r5, r0
    3fc8:	e2807d4b 	add	r7, r0, #4800	; 0x12c0
    3fcc:	e59f0960 	ldr	r0, [pc, #2400]	; 0x4934
    3fd0:	e59f1944 	ldr	r1, [pc, #2372]	; 0x491c
    3fd4:	e5810028 	str	r0, [r1, #40]	; 0x28
    3fd8:	e1a0100a 	mov	r1, sl
    3fdc:	e1a00009 	mov	r0, r9
    3fe0:	ebfffea8 	bl	0x3a88
    3fe4:	e2450001 	sub	r0, r5, #1
    3fe8:	e3a01001 	mov	r1, #1
    3fec:	e1a00011 	lsl	r0, r1, r0
    3ff0:	e2451001 	sub	r1, r5, #1
    3ff4:	e3a02001 	mov	r2, #1
    3ff8:	e1a01112 	lsl	r1, r2, r1
    3ffc:	e2411001 	sub	r1, r1, #1
    4000:	e180b001 	orr	fp, r0, r1
    4004:	e59f0910 	ldr	r0, [pc, #2320]	; 0x491c
    4008:	e580b01c 	str	fp, [r0, #28]
    400c:	e59d0000 	ldr	r0, [sp]
    4010:	ebfffedc 	bl	0x3b88
    4014:	e3500002 	cmp	r0, #2
    4018:	1a000002 	bne	0x4028
    401c:	ebfffebf 	bl	0x3b20
    4020:	e3a00002 	mov	r0, #2
    4024:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4028:	e1a06004 	mov	r6, r4
    402c:	e1a04006 	mov	r4, r6
    4030:	e1a00806 	lsl	r0, r6, #16
    4034:	e59f18e0 	ldr	r1, [pc, #2272]	; 0x491c
    4038:	e5810014 	str	r0, [r1, #20]
    403c:	e1a04006 	mov	r4, r6
    4040:	e1a00826 	lsr	r0, r6, #16
    4044:	e5810018 	str	r0, [r1, #24]
    4048:	e2880003 	add	r0, r8, #3
    404c:	e59f18e4 	ldr	r1, [pc, #2276]	; 0x4938
    4050:	e1810800 	orr	r0, r1, r0, lsl #16
    4054:	e59f18c0 	ldr	r1, [pc, #2240]	; 0x491c
    4058:	e5810024 	str	r0, [r1, #36]	; 0x24
    405c:	e1a02007 	mov	r2, r7
    4060:	e1a01007 	mov	r1, r7
    4064:	e1a00007 	mov	r0, r7
    4068:	ebfffee0 	bl	0x3bf0
    406c:	e3500002 	cmp	r0, #2
    4070:	1a000002 	bne	0x4080
    4074:	ebfffea9 	bl	0x3b20
    4078:	e3a00002 	mov	r0, #2
    407c:	eaffffe8 	b	0x4024
    4080:	e59f1894 	ldr	r1, [pc, #2196]	; 0x491c
    4084:	e5910038 	ldr	r0, [r1, #56]	; 0x38
    4088:	e1a01005 	mov	r1, r5
    408c:	ebfffe71 	bl	0x3a58
    4090:	e3500000 	cmp	r0, #0
    4094:	0a000002 	beq	0x40a4
    4098:	ebfffea0 	bl	0x3b20
    409c:	e3a00003 	mov	r0, #3
    40a0:	eaffffdf 	b	0x4024
    40a4:	ebfffe9d 	bl	0x3b20
    40a8:	e3a00000 	mov	r0, #0
    40ac:	eaffffdc 	b	0x4024
    40b0:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    40b4:	e1a04000 	mov	r4, r0
    40b8:	e1a09001 	mov	r9, r1
    40bc:	e1a08002 	mov	r8, r2
    40c0:	e59f0854 	ldr	r0, [pc, #2132]	; 0x491c
    40c4:	e5900000 	ldr	r0, [r0]
    40c8:	e3800901 	orr	r0, r0, #16384	; 0x4000
    40cc:	e59f1848 	ldr	r1, [pc, #2120]	; 0x491c
    40d0:	e5810000 	str	r0, [r1]
    40d4:	ebfffe11 	bl	0x3920
    40d8:	e1a0a000 	mov	sl, r0
    40dc:	e1a0552a 	lsr	r5, sl, #10
    40e0:	e3010318 	movw	r0, #4888	; 0x1318
    40e4:	e58d0000 	str	r0, [sp]
    40e8:	e3a00016 	mov	r0, #22
    40ec:	e0000095 	mul	r0, r5, r0
    40f0:	e2807d4b 	add	r7, r0, #4800	; 0x12c0
    40f4:	e59f0838 	ldr	r0, [pc, #2104]	; 0x4934
    40f8:	e59f181c 	ldr	r1, [pc, #2076]	; 0x491c
    40fc:	e5810028 	str	r0, [r1, #40]	; 0x28
    4100:	e1a0100a 	mov	r1, sl
    4104:	e1a00009 	mov	r0, r9
    4108:	ebfffe5e 	bl	0x3a88
    410c:	e2450001 	sub	r0, r5, #1
    4110:	e3a01001 	mov	r1, #1
    4114:	e1a00011 	lsl	r0, r1, r0
    4118:	e2451001 	sub	r1, r5, #1
    411c:	e3a02001 	mov	r2, #1
    4120:	e1a01112 	lsl	r1, r2, r1
    4124:	e2411001 	sub	r1, r1, #1
    4128:	e180b001 	orr	fp, r0, r1
    412c:	e59f07e8 	ldr	r0, [pc, #2024]	; 0x491c
    4130:	e580b01c 	str	fp, [r0, #28]
    4134:	e59d0000 	ldr	r0, [sp]
    4138:	ebfffe92 	bl	0x3b88
    413c:	e3500002 	cmp	r0, #2
    4140:	1a000002 	bne	0x4150
    4144:	ebfffe75 	bl	0x3b20
    4148:	e3a00002 	mov	r0, #2
    414c:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4150:	e59f07e4 	ldr	r0, [pc, #2020]	; 0x493c
    4154:	e59f17c0 	ldr	r1, [pc, #1984]	; 0x491c
    4158:	e5810024 	str	r0, [r1, #36]	; 0x24
    415c:	e59d0000 	ldr	r0, [sp]
    4160:	ebfffe88 	bl	0x3b88
    4164:	e3500002 	cmp	r0, #2
    4168:	1a000002 	bne	0x4178
    416c:	ebfffe6b 	bl	0x3b20
    4170:	e3a00002 	mov	r0, #2
    4174:	eafffff4 	b	0x414c
    4178:	e59d0000 	ldr	r0, [sp]
    417c:	ebfffe74 	bl	0x3b54
    4180:	e3500002 	cmp	r0, #2
    4184:	1a000002 	bne	0x4194
    4188:	ebfffe64 	bl	0x3b20
    418c:	e3a00002 	mov	r0, #2
    4190:	eaffffed 	b	0x414c
    4194:	e1a06004 	mov	r6, r4
    4198:	e1a04006 	mov	r4, r6
    419c:	e1a00806 	lsl	r0, r6, #16
    41a0:	e59f1774 	ldr	r1, [pc, #1908]	; 0x491c
    41a4:	e5810014 	str	r0, [r1, #20]
    41a8:	e1a04006 	mov	r4, r6
    41ac:	e1a00826 	lsr	r0, r6, #16
    41b0:	e5810018 	str	r0, [r1, #24]
    41b4:	e2880003 	add	r0, r8, #3
    41b8:	e59f1778 	ldr	r1, [pc, #1912]	; 0x4938
    41bc:	e1810800 	orr	r0, r1, r0, lsl #16
    41c0:	e59f1754 	ldr	r1, [pc, #1876]	; 0x491c
    41c4:	e5810024 	str	r0, [r1, #36]	; 0x24
    41c8:	e1a02007 	mov	r2, r7
    41cc:	e1a01007 	mov	r1, r7
    41d0:	e1a00007 	mov	r0, r7
    41d4:	ebfffe85 	bl	0x3bf0
    41d8:	e3500002 	cmp	r0, #2
    41dc:	1a000002 	bne	0x41ec
    41e0:	ebfffe4e 	bl	0x3b20
    41e4:	e3a00002 	mov	r0, #2
    41e8:	eaffffd7 	b	0x414c
    41ec:	e59f1728 	ldr	r1, [pc, #1832]	; 0x491c
    41f0:	e5910038 	ldr	r0, [r1, #56]	; 0x38
    41f4:	e1a01005 	mov	r1, r5
    41f8:	ebfffe16 	bl	0x3a58
    41fc:	e3500000 	cmp	r0, #0
    4200:	0a000002 	beq	0x4210
    4204:	ebfffe45 	bl	0x3b20
    4208:	e3a00003 	mov	r0, #3
    420c:	eaffffce 	b	0x414c
    4210:	ebfffe42 	bl	0x3b20
    4214:	e3a00000 	mov	r0, #0
    4218:	eaffffcb 	b	0x414c
    421c:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4220:	e1a04000 	mov	r4, r0
    4224:	e1a09001 	mov	r9, r1
    4228:	e1a08002 	mov	r8, r2
    422c:	e59f06e8 	ldr	r0, [pc, #1768]	; 0x491c
    4230:	e5900000 	ldr	r0, [r0]
    4234:	e3800901 	orr	r0, r0, #16384	; 0x4000
    4238:	e59f16dc 	ldr	r1, [pc, #1756]	; 0x491c
    423c:	e5810000 	str	r0, [r1]
    4240:	ebfffdb6 	bl	0x3920
    4244:	e1a0a000 	mov	sl, r0
    4248:	e1a0552a 	lsr	r5, sl, #10
    424c:	e3010318 	movw	r0, #4888	; 0x1318
    4250:	e58d0000 	str	r0, [sp]
    4254:	e3a00016 	mov	r0, #22
    4258:	e0000095 	mul	r0, r5, r0
    425c:	e2807d4b 	add	r7, r0, #4800	; 0x12c0
    4260:	e59f06cc 	ldr	r0, [pc, #1740]	; 0x4934
    4264:	e59f16b0 	ldr	r1, [pc, #1712]	; 0x491c
    4268:	e5810028 	str	r0, [r1, #40]	; 0x28
    426c:	e1a0100a 	mov	r1, sl
    4270:	e1a00009 	mov	r0, r9
    4274:	ebfffe03 	bl	0x3a88
    4278:	e2450001 	sub	r0, r5, #1
    427c:	e3a01001 	mov	r1, #1
    4280:	e1a00011 	lsl	r0, r1, r0
    4284:	e2451001 	sub	r1, r5, #1
    4288:	e3a02001 	mov	r2, #1
    428c:	e1a01112 	lsl	r1, r2, r1
    4290:	e2411001 	sub	r1, r1, #1
    4294:	e180b001 	orr	fp, r0, r1
    4298:	e59f067c 	ldr	r0, [pc, #1660]	; 0x491c
    429c:	e580b01c 	str	fp, [r0, #28]
    42a0:	e59d0000 	ldr	r0, [sp]
    42a4:	ebfffe37 	bl	0x3b88
    42a8:	e3500002 	cmp	r0, #2
    42ac:	1a000002 	bne	0x42bc
    42b0:	ebfffe1a 	bl	0x3b20
    42b4:	e3a00002 	mov	r0, #2
    42b8:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    42bc:	e59f067c 	ldr	r0, [pc, #1660]	; 0x4940
    42c0:	e59f1654 	ldr	r1, [pc, #1620]	; 0x491c
    42c4:	e5810024 	str	r0, [r1, #36]	; 0x24
    42c8:	e59d0000 	ldr	r0, [sp]
    42cc:	ebfffe2d 	bl	0x3b88
    42d0:	e3500002 	cmp	r0, #2
    42d4:	1a000002 	bne	0x42e4
    42d8:	ebfffe10 	bl	0x3b20
    42dc:	e3a00002 	mov	r0, #2
    42e0:	eafffff4 	b	0x42b8
    42e4:	e59d0000 	ldr	r0, [sp]
    42e8:	ebfffe19 	bl	0x3b54
    42ec:	e3500002 	cmp	r0, #2
    42f0:	1a000002 	bne	0x4300
    42f4:	ebfffe09 	bl	0x3b20
    42f8:	e3a00002 	mov	r0, #2
    42fc:	eaffffed 	b	0x42b8
    4300:	e1a06004 	mov	r6, r4
    4304:	e1a04006 	mov	r4, r6
    4308:	e1a00806 	lsl	r0, r6, #16
    430c:	e59f1608 	ldr	r1, [pc, #1544]	; 0x491c
    4310:	e5810014 	str	r0, [r1, #20]
    4314:	e1a04006 	mov	r4, r6
    4318:	e1a00826 	lsr	r0, r6, #16
    431c:	e5810018 	str	r0, [r1, #24]
    4320:	e2880003 	add	r0, r8, #3
    4324:	e59f160c 	ldr	r1, [pc, #1548]	; 0x4938
    4328:	e1810800 	orr	r0, r1, r0, lsl #16
    432c:	e59f15e8 	ldr	r1, [pc, #1512]	; 0x491c
    4330:	e5810024 	str	r0, [r1, #36]	; 0x24
    4334:	e1a02007 	mov	r2, r7
    4338:	e1a01007 	mov	r1, r7
    433c:	e1a00007 	mov	r0, r7
    4340:	ebfffe2a 	bl	0x3bf0
    4344:	e3500002 	cmp	r0, #2
    4348:	1a000002 	bne	0x4358
    434c:	ebfffdf3 	bl	0x3b20
    4350:	e3a00002 	mov	r0, #2
    4354:	eaffffd7 	b	0x42b8
    4358:	e59f15bc 	ldr	r1, [pc, #1468]	; 0x491c
    435c:	e5910038 	ldr	r0, [r1, #56]	; 0x38
    4360:	e1a01005 	mov	r1, r5
    4364:	ebfffdbb 	bl	0x3a58
    4368:	e3500000 	cmp	r0, #0
    436c:	0a000002 	beq	0x437c
    4370:	ebfffdea 	bl	0x3b20
    4374:	e3a00003 	mov	r0, #3
    4378:	eaffffce 	b	0x42b8
    437c:	ebfffde7 	bl	0x3b20
    4380:	e59f05bc 	ldr	r0, [pc, #1468]	; 0x4944
    4384:	e59f1590 	ldr	r1, [pc, #1424]	; 0x491c
    4388:	e5810024 	str	r0, [r1, #36]	; 0x24
    438c:	e59d0000 	ldr	r0, [sp]
    4390:	ebfffdfc 	bl	0x3b88
    4394:	e3500002 	cmp	r0, #2
    4398:	1a000001 	bne	0x43a4
    439c:	e3a00002 	mov	r0, #2
    43a0:	eaffffc4 	b	0x42b8
    43a4:	e3a00000 	mov	r0, #0
    43a8:	eaffffc2 	b	0x42b8
    43ac:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    43b0:	e1a07000 	mov	r7, r0
    43b4:	e1a08001 	mov	r8, r1
    43b8:	e1a06002 	mov	r6, r2
    43bc:	e1a09003 	mov	r9, r3
    43c0:	ebfffd56 	bl	0x3920
    43c4:	e1a0a000 	mov	sl, r0
    43c8:	e3a04000 	mov	r4, #0
    43cc:	ea000009 	b	0x43f8
    43d0:	e0216a94 	mla	r1, r4, sl, r6
    43d4:	e0870004 	add	r0, r7, r4
    43d8:	e1a02009 	mov	r2, r9
    43dc:	ebfffee9 	bl	0x3f88
    43e0:	e1a05000 	mov	r5, r0
    43e4:	e3550000 	cmp	r5, #0
    43e8:	0a000001 	beq	0x43f4
    43ec:	e1a00005 	mov	r0, r5
    43f0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    43f4:	e2844001 	add	r4, r4, #1
    43f8:	e1540008 	cmp	r4, r8
    43fc:	3afffff3 	bcc	0x43d0
    4400:	e3a00000 	mov	r0, #0
    4404:	eafffff9 	b	0x43f0
    4408:	e92d5ffc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
    440c:	e1a05000 	mov	r5, r0
    4410:	e1a09001 	mov	r9, r1
    4414:	e1a0a002 	mov	sl, r2
    4418:	e1a0b003 	mov	fp, r3
    441c:	e59f04f8 	ldr	r0, [pc, #1272]	; 0x491c
    4420:	e5900034 	ldr	r0, [r0, #52]	; 0x34
    4424:	e58d0000 	str	r0, [sp]
    4428:	ebfffc6f 	bl	0x35ec
    442c:	e28d0004 	add	r0, sp, #4
    4430:	ebfffe35 	bl	0x3d0c
    4434:	e3500002 	cmp	r0, #2
    4438:	1a000001 	bne	0x4444
    443c:	e3a00002 	mov	r0, #2
    4440:	e8bd9ffc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
    4444:	e59d0004 	ldr	r0, [sp, #4]
    4448:	e20000ff 	and	r0, r0, #255	; 0xff
    444c:	e3500045 	cmp	r0, #69	; 0x45
    4450:	0a000005 	beq	0x446c
    4454:	e59d0004 	ldr	r0, [sp, #4]
    4458:	e20000ff 	and	r0, r0, #255	; 0xff
    445c:	e3500098 	cmp	r0, #152	; 0x98
    4460:	0a000001 	beq	0x446c
    4464:	e3a00002 	mov	r0, #2
    4468:	eafffff4 	b	0x4440
    446c:	e3150001 	tst	r5, #1
    4470:	0a000005 	beq	0x448c
    4474:	e59d0004 	ldr	r0, [sp, #4]
    4478:	e20000ff 	and	r0, r0, #255	; 0xff
    447c:	e3500045 	cmp	r0, #69	; 0x45
    4480:	1a000001 	bne	0x448c
    4484:	e3a00002 	mov	r0, #2
    4488:	eaffffec 	b	0x4440
    448c:	e205007f 	and	r0, r5, #127	; 0x7f
    4490:	e3500055 	cmp	r0, #85	; 0x55
    4494:	9a000005 	bls	0x44b0
    4498:	e59d0004 	ldr	r0, [sp, #4]
    449c:	e20000ff 	and	r0, r0, #255	; 0xff
    44a0:	e3500098 	cmp	r0, #152	; 0x98
    44a4:	1a000001 	bne	0x44b0
    44a8:	e3a00002 	mov	r0, #2
    44ac:	eaffffe3 	b	0x4440
    44b0:	e59d0000 	ldr	r0, [sp]
    44b4:	e59f1460 	ldr	r1, [pc, #1120]	; 0x491c
    44b8:	e5810034 	str	r0, [r1, #52]	; 0x34
    44bc:	ebfffd17 	bl	0x3920
    44c0:	e1a08000 	mov	r8, r0
    44c4:	e1a04005 	mov	r4, r5
    44c8:	e3a06000 	mov	r6, #0
    44cc:	ea000017 	b	0x4530
    44d0:	e021a896 	mla	r1, r6, r8, sl
    44d4:	e1a0200b 	mov	r2, fp
    44d8:	e1a00004 	mov	r0, r4
    44dc:	ebfffef3 	bl	0x40b0
    44e0:	e1a07000 	mov	r7, r0
    44e4:	e3570000 	cmp	r7, #0
    44e8:	0a000001 	beq	0x44f4
    44ec:	e1a00007 	mov	r0, r7
    44f0:	eaffffd2 	b	0x4440
    44f4:	e59d0004 	ldr	r0, [sp, #4]
    44f8:	e20000ff 	and	r0, r0, #255	; 0xff
    44fc:	e3500098 	cmp	r0, #152	; 0x98
    4500:	1a000007 	bne	0x4524
    4504:	e204007f 	and	r0, r4, #127	; 0x7f
    4508:	e3500055 	cmp	r0, #85	; 0x55
    450c:	1a000002 	bne	0x451c
    4510:	e3c4407f 	bic	r4, r4, #127	; 0x7f
    4514:	e2844080 	add	r4, r4, #128	; 0x80
    4518:	ea000003 	b	0x452c
    451c:	e2844001 	add	r4, r4, #1
    4520:	ea000001 	b	0x452c
    4524:	e2844001 	add	r4, r4, #1
    4528:	e2844001 	add	r4, r4, #1
    452c:	e2866001 	add	r6, r6, #1
    4530:	e1560009 	cmp	r6, r9
    4534:	3affffe5 	bcc	0x44d0
    4538:	e3a00000 	mov	r0, #0
    453c:	eaffffbf 	b	0x4440
    4540:	e92d4fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4544:	e24dd004 	sub	sp, sp, #4
    4548:	e1a06000 	mov	r6, r0
    454c:	e1a09001 	mov	r9, r1
    4550:	e1a0a002 	mov	sl, r2
    4554:	e20600ff 	and	r0, r6, #255	; 0xff
    4558:	e350003f 	cmp	r0, #63	; 0x3f
    455c:	9a000002 	bls	0x456c
    4560:	e3a00002 	mov	r0, #2
    4564:	e28dd014 	add	sp, sp, #20
    4568:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    456c:	e59f03a8 	ldr	r0, [pc, #936]	; 0x491c
    4570:	e590b034 	ldr	fp, [r0, #52]	; 0x34
    4574:	ebfffc1c 	bl	0x35ec
    4578:	e1a0000d 	mov	r0, sp
    457c:	ebfffde2 	bl	0x3d0c
    4580:	e3500002 	cmp	r0, #2
    4584:	1a000001 	bne	0x4590
    4588:	e3a00002 	mov	r0, #2
    458c:	eafffff4 	b	0x4564
    4590:	e59d0000 	ldr	r0, [sp]
    4594:	e20000ff 	and	r0, r0, #255	; 0xff
    4598:	e35000ec 	cmp	r0, #236	; 0xec
    459c:	0a000001 	beq	0x45a8
    45a0:	e3a00002 	mov	r0, #2
    45a4:	eaffffee 	b	0x4564
    45a8:	e59f036c 	ldr	r0, [pc, #876]	; 0x491c
    45ac:	e580b034 	str	fp, [r0, #52]	; 0x34
    45b0:	ebfffcda 	bl	0x3920
    45b4:	e1a08000 	mov	r8, r0
    45b8:	e1a04006 	mov	r4, r6
    45bc:	e3a05000 	mov	r5, #0
    45c0:	ea000010 	b	0x4608
    45c4:	e021a895 	mla	r1, r5, r8, sl
    45c8:	e1a00004 	mov	r0, r4
    45cc:	e59d2010 	ldr	r2, [sp, #16]
    45d0:	ebffff11 	bl	0x421c
    45d4:	e1a07000 	mov	r7, r0
    45d8:	e3570000 	cmp	r7, #0
    45dc:	0a000001 	beq	0x45e8
    45e0:	e1a00007 	mov	r0, r7
    45e4:	eaffffde 	b	0x4564
    45e8:	e20400ff 	and	r0, r4, #255	; 0xff
    45ec:	e350003f 	cmp	r0, #63	; 0x3f
    45f0:	1a000002 	bne	0x4600
    45f4:	e3c440ff 	bic	r4, r4, #255	; 0xff
    45f8:	e2844c01 	add	r4, r4, #256	; 0x100
    45fc:	ea000000 	b	0x4604
    4600:	e2844001 	add	r4, r4, #1
    4604:	e2855001 	add	r5, r5, #1
    4608:	e1550009 	cmp	r5, r9
    460c:	3affffec 	bcc	0x45c4
    4610:	e3a00000 	mov	r0, #0
    4614:	eaffffd2 	b	0x4564
    4618:	e92d4fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    461c:	e24dd024 	sub	sp, sp, #36	; 0x24
    4620:	e1a08002 	mov	r8, r2
    4624:	e3a00089 	mov	r0, #137	; 0x89
    4628:	e58d000c 	str	r0, [sp, #12]
    462c:	e3a00000 	mov	r0, #0
    4630:	e58d0008 	str	r0, [sp, #8]
    4634:	e59f430c 	ldr	r4, [pc, #780]	; 0x4948
    4638:	e59f02dc 	ldr	r0, [pc, #732]	; 0x491c
    463c:	e5900034 	ldr	r0, [r0, #52]	; 0x34
    4640:	e58d0018 	str	r0, [sp, #24]
    4644:	ebfffbe8 	bl	0x35ec
    4648:	e28d001c 	add	r0, sp, #28
    464c:	ebfffdae 	bl	0x3d0c
    4650:	e3500002 	cmp	r0, #2
    4654:	1a000002 	bne	0x4664
    4658:	e3a00002 	mov	r0, #2
    465c:	e28dd034 	add	sp, sp, #52	; 0x34
    4660:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4664:	e59d001c 	ldr	r0, [sp, #28]
    4668:	e20000ff 	and	r0, r0, #255	; 0xff
    466c:	e350002c 	cmp	r0, #44	; 0x2c
    4670:	0a000001 	beq	0x467c
    4674:	e3a00002 	mov	r0, #2
    4678:	eafffff7 	b	0x465c
    467c:	e5940000 	ldr	r0, [r4]
    4680:	e3500000 	cmp	r0, #0
    4684:	1a000057 	bne	0x47e8
    4688:	e3001300 	movw	r1, #768	; 0x300
    468c:	e1a00008 	mov	r0, r8
    4690:	ebfffdf8 	bl	0x3e78
    4694:	e3500000 	cmp	r0, #0
    4698:	1a000052 	bne	0x47e8
    469c:	e3a00000 	mov	r0, #0
    46a0:	e58d0020 	str	r0, [sp, #32]
    46a4:	e3a07000 	mov	r7, #0
    46a8:	ea000012 	b	0x46f8
    46ac:	e3000100 	movw	r0, #256	; 0x100
    46b0:	e0268790 	mla	r6, r0, r7, r8
    46b4:	e5d600fe 	ldrb	r0, [r6, #254]	; 0xfe
    46b8:	e58d0014 	str	r0, [sp, #20]
    46bc:	e5d600ff 	ldrb	r0, [r6, #255]	; 0xff
    46c0:	e59d1014 	ldr	r1, [sp, #20]
    46c4:	e1810400 	orr	r0, r1, r0, lsl #8
    46c8:	e58d0014 	str	r0, [sp, #20]
    46cc:	e3a010fe 	mov	r1, #254	; 0xfe
    46d0:	e1a00006 	mov	r0, r6
    46d4:	ebfffcbc 	bl	0x39cc
    46d8:	e58d0010 	str	r0, [sp, #16]
    46dc:	e1cd01d0 	ldrd	r0, [sp, #16]
    46e0:	e1500001 	cmp	r0, r1
    46e4:	1a000002 	bne	0x46f4
    46e8:	e3a00001 	mov	r0, #1
    46ec:	e58d0020 	str	r0, [sp, #32]
    46f0:	ea000002 	b	0x4700
    46f4:	e2877001 	add	r7, r7, #1
    46f8:	e3570003 	cmp	r7, #3
    46fc:	3affffea 	bcc	0x46ac
    4700:	e320f000 	nop	{0}
    4704:	e59d0020 	ldr	r0, [sp, #32]
    4708:	e3500000 	cmp	r0, #0
    470c:	0a000035 	beq	0x47e8
    4710:	e5d600b4 	ldrb	r0, [r6, #180]	; 0xb4
    4714:	e5840004 	str	r0, [r4, #4]
    4718:	e5d600b5 	ldrb	r0, [r6, #181]	; 0xb5
    471c:	e5840008 	str	r0, [r4, #8]
    4720:	e5940008 	ldr	r0, [r4, #8]
    4724:	e5d610b6 	ldrb	r1, [r6, #182]	; 0xb6
    4728:	e1800401 	orr	r0, r0, r1, lsl #8
    472c:	e5840008 	str	r0, [r4, #8]
    4730:	e5940008 	ldr	r0, [r4, #8]
    4734:	e5d610b7 	ldrb	r1, [r6, #183]	; 0xb7
    4738:	e1800801 	orr	r0, r0, r1, lsl #16
    473c:	e5840008 	str	r0, [r4, #8]
    4740:	e5940008 	ldr	r0, [r4, #8]
    4744:	e5d610b8 	ldrb	r1, [r6, #184]	; 0xb8
    4748:	e1800c01 	orr	r0, r0, r1, lsl #24
    474c:	e5840008 	str	r0, [r4, #8]
    4750:	e3a0a000 	mov	sl, #0
    4754:	e3a05000 	mov	r5, #0
    4758:	ea000005 	b	0x4774
    475c:	e3a01001 	mov	r1, #1
    4760:	e5940008 	ldr	r0, [r4, #8]
    4764:	e1100511 	tst	r0, r1, lsl r5
    4768:	0a000000 	beq	0x4770
    476c:	e28aa001 	add	sl, sl, #1
    4770:	e2855001 	add	r5, r5, #1
    4774:	e3550020 	cmp	r5, #32
    4778:	3afffff7 	bcc	0x475c
    477c:	e5940004 	ldr	r0, [r4, #4]
    4780:	e150000a 	cmp	r0, sl
    4784:	1a000002 	bne	0x4794
    4788:	e59f01bc 	ldr	r0, [pc, #444]	; 0x494c
    478c:	e5840000 	str	r0, [r4]
    4790:	ea000014 	b	0x47e8
    4794:	e5940008 	ldr	r0, [r4, #8]
    4798:	e3500000 	cmp	r0, #0
    479c:	1a00000c 	bne	0x47d4
    47a0:	e3a05000 	mov	r5, #0
    47a4:	ea000004 	b	0x47bc
    47a8:	e3a01001 	mov	r1, #1
    47ac:	e5940008 	ldr	r0, [r4, #8]
    47b0:	e1800511 	orr	r0, r0, r1, lsl r5
    47b4:	e5840008 	str	r0, [r4, #8]
    47b8:	e2855001 	add	r5, r5, #1
    47bc:	e5940004 	ldr	r0, [r4, #4]
    47c0:	e1500005 	cmp	r0, r5
    47c4:	8afffff7 	bhi	0x47a8
    47c8:	e59f017c 	ldr	r0, [pc, #380]	; 0x494c
    47cc:	e5840000 	str	r0, [r4]
    47d0:	ea000004 	b	0x47e8
    47d4:	e59f0174 	ldr	r0, [pc, #372]	; 0x4950
    47d8:	e5840000 	str	r0, [r4]
    47dc:	e3a00000 	mov	r0, #0
    47e0:	e5840004 	str	r0, [r4, #4]
    47e4:	e5840008 	str	r0, [r4, #8]
    47e8:	e59d0018 	ldr	r0, [sp, #24]
    47ec:	e59f1128 	ldr	r1, [pc, #296]	; 0x491c
    47f0:	e5810034 	str	r0, [r1, #52]	; 0x34
    47f4:	ebfffc49 	bl	0x3920
    47f8:	e1a0b000 	mov	fp, r0
    47fc:	e3a05000 	mov	r5, #0
    4800:	ea000040 	b	0x4908
    4804:	e0218b95 	mla	r1, r5, fp, r8
    4808:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    480c:	e0803005 	add	r3, r0, r5
    4810:	e1a00003 	mov	r0, r3
    4814:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    4818:	ebfffdda 	bl	0x3f88
    481c:	e1a09000 	mov	r9, r0
    4820:	e3590000 	cmp	r9, #0
    4824:	0a000036 	beq	0x4904
    4828:	e5940000 	ldr	r0, [r4]
    482c:	e59f1118 	ldr	r1, [pc, #280]	; 0x494c
    4830:	e1500001 	cmp	r0, r1
    4834:	1a000003 	bne	0x4848
    4838:	e594a004 	ldr	sl, [r4, #4]
    483c:	e5940008 	ldr	r0, [r4, #8]
    4840:	e58d0004 	str	r0, [sp, #4]
    4844:	ea000001 	b	0x4850
    4848:	e1a00009 	mov	r0, r9
    484c:	eaffff82 	b	0x465c
    4850:	e3a07001 	mov	r7, #1
    4854:	ea000019 	b	0x48c0
    4858:	e3a00001 	mov	r0, #1
    485c:	e1a01710 	lsl	r1, r0, r7
    4860:	e59d0004 	ldr	r0, [sp, #4]
    4864:	e1100001 	tst	r0, r1
    4868:	0a000001 	beq	0x4874
    486c:	e5cd7008 	strb	r7, [sp, #8]
    4870:	ea000000 	b	0x4878
    4874:	ea000010 	b	0x48bc
    4878:	e28d1008 	add	r1, sp, #8
    487c:	e59d000c 	ldr	r0, [sp, #12]
    4880:	ebfffd3f 	bl	0x3d84
    4884:	e3500000 	cmp	r0, #0
    4888:	0a000000 	beq	0x4890
    488c:	ea00000f 	b	0x48d0
    4890:	e0218b95 	mla	r1, r5, fp, r8
    4894:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    4898:	e0803005 	add	r3, r0, r5
    489c:	e1a00003 	mov	r0, r3
    48a0:	e59d2030 	ldr	r2, [sp, #48]	; 0x30
    48a4:	ebfffdb7 	bl	0x3f88
    48a8:	e1a09000 	mov	r9, r0
    48ac:	e3590000 	cmp	r9, #0
    48b0:	1a000000 	bne	0x48b8
    48b4:	ea000003 	b	0x48c8
    48b8:	e320f000 	nop	{0}
    48bc:	e2877001 	add	r7, r7, #1
    48c0:	e157000a 	cmp	r7, sl
    48c4:	3affffe3 	bcc	0x4858
    48c8:	e320f000 	nop	{0}
    48cc:	e320f000 	nop	{0}
    48d0:	e3a00000 	mov	r0, #0
    48d4:	e5cd0008 	strb	r0, [sp, #8]
    48d8:	e28d1008 	add	r1, sp, #8
    48dc:	e59d000c 	ldr	r0, [sp, #12]
    48e0:	ebfffd27 	bl	0x3d84
    48e4:	e3500000 	cmp	r0, #0
    48e8:	0a000001 	beq	0x48f4
    48ec:	e3a00002 	mov	r0, #2
    48f0:	eaffff59 	b	0x465c
    48f4:	e3590000 	cmp	r9, #0
    48f8:	0a000001 	beq	0x4904
    48fc:	e1a00009 	mov	r0, r9
    4900:	eaffff55 	b	0x465c
    4904:	e2855001 	add	r5, r5, #1
    4908:	e59d0028 	ldr	r0, [sp, #40]	; 0x28
    490c:	e1550000 	cmp	r5, r0
    4910:	3affffbb 	bcc	0x4804
    4914:	e3a00000 	mov	r0, #0
    4918:	eaffff4f 	b	0x465c
    491c:	01c03000
    4920:	00680090
    4924:	01c03400
    4928:	00f800ef
    492c:	04e800ec
    4930:	00c000ff
    4934:	00e00530
    4938:	87e80000
    493c:	004000a2
    4940:	004000da
    4944:	004000df
    4948:	00022f00
    494c:	4f4b4f4b
    4950:	a5a5a5a5

    4954:	e92d4fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4958:	e24dd01c 	sub	sp, sp, #28
    495c:	e1a09000 	mov	r9, r0
    4960:	ebfffbee 	bl	0x3920
    4964:	e58d0018 	str	r0, [sp, #24]
    4968:	e3a05b89 	mov	r5, #140288	; 0x22400
    496c:	e3a00000 	mov	r0, #0
    4970:	e58d0014 	str	r0, [sp, #20]
    4974:	e3a04000 	mov	r4, #0
    4978:	ea000022 	b	0x4a08
    497c:	e0893004 	add	r3, r9, r4
    4980:	e1a01005 	mov	r1, r5
    4984:	e1a00003 	mov	r0, r3
    4988:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
    498c:	ebfffd7d 	bl	0x3f88
    4990:	e1a06000 	mov	r6, r0
    4994:	e3560000 	cmp	r6, #0
    4998:	0a000000 	beq	0x49a0
    499c:	ea000018 	b	0x4a04
    49a0:	e28f10ec 	add	r1, pc, #236	; 0x4a94
    49a4:	e1a00005 	mov	r0, r5
    49a8:	eb000af4 	bl	0x7580
    49ac:	e3500000 	cmp	r0, #0
    49b0:	0a000000 	beq	0x49b8
    49b4:	ea000012 	b	0x4a04
    49b8:	e1a07005 	mov	r7, r5
    49bc:	e5d7a028 	ldrb	sl, [r7, #40]	; 0x28
    49c0:	e5d7b029 	ldrb	fp, [r7, #41]	; 0x29
    49c4:	e5d7002a 	ldrb	r0, [r7, #42]	; 0x2a
    49c8:	e58d000c 	str	r0, [sp, #12]
    49cc:	e59d000c 	ldr	r0, [sp, #12]
    49d0:	e168008b 	smulbb	r8, fp, r0
    49d4:	e000089a 	mul	r0, sl, r8
    49d8:	e2800040 	add	r0, r0, #64	; 0x40
    49dc:	e58d0010 	str	r0, [sp, #16]
    49e0:	e1a00005 	mov	r0, r5
    49e4:	e59d1010 	ldr	r1, [sp, #16]
    49e8:	eb000af6 	bl	0x75c8
    49ec:	e3500000 	cmp	r0, #0
    49f0:	1a000002 	bne	0x4a00
    49f4:	e3a00001 	mov	r0, #1
    49f8:	e58d0014 	str	r0, [sp, #20]
    49fc:	ea000003 	b	0x4a10
    4a00:	e320f000 	nop	{0}
    4a04:	e2844001 	add	r4, r4, #1
    4a08:	e3540008 	cmp	r4, #8
    4a0c:	3affffda 	bcc	0x497c
    4a10:	e320f000 	nop	{0}
    4a14:	e59d0014 	ldr	r0, [sp, #20]
    4a18:	e3500000 	cmp	r0, #0
    4a1c:	1a000002 	bne	0x4a2c
    4a20:	e1a00006 	mov	r0, r6
    4a24:	e28dd02c 	add	sp, sp, #44	; 0x2c
    4a28:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4a2c:	e3a04000 	mov	r4, #0
    4a30:	ea000012 	b	0x4a80
    4a34:	e2850040 	add	r0, r5, #64	; 0x40
    4a38:	e0200894 	mla	r0, r4, r8, r0
    4a3c:	e58d0008 	str	r0, [sp, #8]
    4a40:	e59d0008 	ldr	r0, [sp, #8]
    4a44:	e5900000 	ldr	r0, [r0]
    4a48:	e58d0004 	str	r0, [sp, #4]
    4a4c:	e59d0018 	ldr	r0, [sp, #24]
    4a50:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    4a54:	e0231094 	mla	r3, r4, r0, r1
    4a58:	e1a01003 	mov	r1, r3
    4a5c:	e59d0004 	ldr	r0, [sp, #4]
    4a60:	e59d2028 	ldr	r2, [sp, #40]	; 0x28
    4a64:	ebfffd47 	bl	0x3f88
    4a68:	e1a06000 	mov	r6, r0
    4a6c:	e3560000 	cmp	r6, #0
    4a70:	0a000001 	beq	0x4a7c
    4a74:	e1a00006 	mov	r0, r6
    4a78:	eaffffe9 	b	0x4a24
    4a7c:	e2844001 	add	r4, r4, #1
    4a80:	e59d0020 	ldr	r0, [sp, #32]
    4a84:	e1540000 	cmp	r4, r0
    4a88:	3affffe9 	bcc	0x4a34
    4a8c:	e3a00000 	mov	r0, #0
    4a90:	eaffffe3 	b	0x4a24

    4a94:	"BT0.NTAB"
    4a9c:	00000000

    4aa0:	e92d4070 	push	{r4, r5, r6, lr}
    4aa4:	e1a06000 	mov	r6, r0
    4aa8:	e1a04001 	mov	r4, r1
    4aac:	e1a05002 	mov	r5, r2
    4ab0:	e3550001 	cmp	r5, #1
    4ab4:	1a000006 	bne	0x4ad4
    4ab8:	e0840084 	add	r0, r4, r4, lsl #1
    4abc:	e59f202c 	ldr	r2, [pc, #44]	; 0x4af0
    4ac0:	e0821200 	add	r1, r2, r0, lsl #4
    4ac4:	e3a02030 	mov	r2, #48	; 0x30
    4ac8:	e1a00006 	mov	r0, r6
    4acc:	eb000b3c 	bl	0x77c4
    4ad0:	ea000005 	b	0x4aec
    4ad4:	e0840084 	add	r0, r4, r4, lsl #1
    4ad8:	e59f2014 	ldr	r2, [pc, #20]	; 0x4af4
    4adc:	e0821200 	add	r1, r2, r0, lsl #4
    4ae0:	e3a02030 	mov	r2, #48	; 0x30
    4ae4:	e1a00006 	mov	r0, r6
    4ae8:	eb000b35 	bl	0x77c4
    4aec:	e8bd8070 	pop	{r4, r5, r6, pc}

    4af0:	00007aec
    4af4:	0000787c

    4af8:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    4afc:	e1a09000 	mov	r9, r0
    4b00:	e1a0b001 	mov	fp, r1
    4b04:	e599a004 	ldr	sl, [r9, #4]
    4b08:	e599001c 	ldr	r0, [r9, #28]
    4b0c:	e58d0000 	str	r0, [sp]
    4b10:	e35a0000 	cmp	sl, #0
    4b14:	1a000001 	bne	0x4b20
    4b18:	e3a00002 	mov	r0, #2
    4b1c:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    4b20:	e3a02801 	mov	r2, #65536	; 0x10000
    4b24:	e3a01001 	mov	r1, #1
    4b28:	e1a0000b 	mov	r0, fp
    4b2c:	e59d3000 	ldr	r3, [sp]
    4b30:	e12fff3a 	blx	sl
    4b34:	e1a07000 	mov	r7, r0
    4b38:	e3570002 	cmp	r7, #2
    4b3c:	1a000001 	bne	0x4b48
    4b40:	e3a00002 	mov	r0, #2
    4b44:	eafffff4 	b	0x4b1c
    4b48:	e3570003 	cmp	r7, #3
    4b4c:	1a000001 	bne	0x4b58
    4b50:	e3a00003 	mov	r0, #3
    4b54:	eafffff0 	b	0x4b1c
    4b58:	e28f1f8a 	add	r1, pc, #552	; 0x4d88
    4b5c:	e3a00801 	mov	r0, #65536	; 0x10000
    4b60:	eb000a86 	bl	0x7580
    4b64:	e3500000 	cmp	r0, #0
    4b68:	0a000001 	beq	0x4b74
    4b6c:	e3e00000 	mvn	r0, #0
    4b70:	eaffffe9 	b	0x4b1c
    4b74:	e3a08801 	mov	r8, #65536	; 0x10000
    4b78:	e5984010 	ldr	r4, [r8, #16]
    4b7c:	e1a00004 	mov	r0, r4
    4b80:	e7df051f 	bfc	r0, #10, #22
    4b84:	e3500000 	cmp	r0, #0
    4b88:	0a000001 	beq	0x4b94
    4b8c:	e3e00000 	mvn	r0, #0
    4b90:	eaffffe1 	b	0x4b1c
    4b94:	ebfffb61 	bl	0x3920
    4b98:	e1a06000 	mov	r6, r0
    4b9c:	e3560b01 	cmp	r6, #1024	; 0x400
    4ba0:	1a000001 	bne	0x4bac
    4ba4:	e1a05524 	lsr	r5, r4, #10
    4ba8:	ea000010 	b	0x4bf0
    4bac:	e3560a01 	cmp	r6, #4096	; 0x1000
    4bb0:	1a000001 	bne	0x4bbc
    4bb4:	e1a05624 	lsr	r5, r4, #12
    4bb8:	ea00000c 	b	0x4bf0
    4bbc:	e3560a02 	cmp	r6, #8192	; 0x2000
    4bc0:	1a000001 	bne	0x4bcc
    4bc4:	e1a056a4 	lsr	r5, r4, #13
    4bc8:	ea000008 	b	0x4bf0
    4bcc:	e3560901 	cmp	r6, #16384	; 0x4000
    4bd0:	1a000001 	bne	0x4bdc
    4bd4:	e1a05724 	lsr	r5, r4, #14
    4bd8:	ea000004 	b	0x4bf0
    4bdc:	e3560902 	cmp	r6, #32768	; 0x8000
    4be0:	1a000001 	bne	0x4bec
    4be4:	e1a057a4 	lsr	r5, r4, #15
    4be8:	ea000000 	b	0x4bf0
    4bec:	e3a05001 	mov	r5, #1
    4bf0:	e3a02801 	mov	r2, #65536	; 0x10000
    4bf4:	e1a01005 	mov	r1, r5
    4bf8:	e1a0000b 	mov	r0, fp
    4bfc:	e59d3000 	ldr	r3, [sp]
    4c00:	e12fff3a 	blx	sl
    4c04:	e1a07000 	mov	r7, r0
    4c08:	e3570002 	cmp	r7, #2
    4c0c:	1a000001 	bne	0x4c18
    4c10:	e3a00002 	mov	r0, #2
    4c14:	eaffffc0 	b	0x4b1c
    4c18:	e3570003 	cmp	r7, #3
    4c1c:	1a000001 	bne	0x4c28
    4c20:	e3a00003 	mov	r0, #3
    4c24:	eaffffbc 	b	0x4b1c
    4c28:	e1a01004 	mov	r1, r4
    4c2c:	e3a00801 	mov	r0, #65536	; 0x10000
    4c30:	eb000a64 	bl	0x75c8
    4c34:	e3500000 	cmp	r0, #0
    4c38:	1a000007 	bne	0x4c5c
    4c3c:	e3a00001 	mov	r0, #1
    4c40:	e5c80028 	strb	r0, [r8, #40]	; 0x28
    4c44:	e5990000 	ldr	r0, [r9]
    4c48:	e5c80029 	strb	r0, [r8, #41]	; 0x29
    4c4c:	e7e7035b 	ubfx	r0, fp, #6, #8
    4c50:	e5c8002a 	strb	r0, [r8, #42]	; 0x2a
    4c54:	e3a00000 	mov	r0, #0
    4c58:	eaffffaf 	b	0x4b1c
    4c5c:	e3e00000 	mvn	r0, #0
    4c60:	eaffffad 	b	0x4b1c
    4c64:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    4c68:	e24dd030 	sub	sp, sp, #48	; 0x30
    4c6c:	e1a08000 	mov	r8, r0
    4c70:	e3580001 	cmp	r8, #1
    4c74:	1a000001 	bne	0x4c80
    4c78:	e3a0700c 	mov	r7, #12
    4c7c:	ea000000 	b	0x4c84
    4c80:	e3a0700c 	mov	r7, #12
    4c84:	e3a04000 	mov	r4, #0
    4c88:	ea00001a 	b	0x4cf8
    4c8c:	e1a02008 	mov	r2, r8
    4c90:	e1a01004 	mov	r1, r4
    4c94:	e1a0000d 	mov	r0, sp
    4c98:	ebffff80 	bl	0x4aa0
    4c9c:	e1a0000d 	mov	r0, sp
    4ca0:	ebfffac5 	bl	0x37bc
    4ca4:	e3a06080 	mov	r6, #128	; 0x80
    4ca8:	ea00000d 	b	0x4ce4
    4cac:	e1a01006 	mov	r1, r6
    4cb0:	e1a0000d 	mov	r0, sp
    4cb4:	ebffff8f 	bl	0x4af8
    4cb8:	e1a05000 	mov	r5, r0
    4cbc:	e3550000 	cmp	r5, #0
    4cc0:	1a000003 	bne	0x4cd4
    4cc4:	ebfffa4c 	bl	0x35fc
    4cc8:	e3a00000 	mov	r0, #0
    4ccc:	e28dd030 	add	sp, sp, #48	; 0x30
    4cd0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    4cd4:	e3550002 	cmp	r5, #2
    4cd8:	1a000000 	bne	0x4ce0
    4cdc:	ea000002 	b	0x4cec
    4ce0:	e2866080 	add	r6, r6, #128	; 0x80
    4ce4:	e3560b01 	cmp	r6, #1024	; 0x400
    4ce8:	3affffef 	bcc	0x4cac
    4cec:	e320f000 	nop	{0}
    4cf0:	ebfffa41 	bl	0x35fc
    4cf4:	e2844001 	add	r4, r4, #1
    4cf8:	e1540007 	cmp	r4, r7
    4cfc:	3affffe2 	bcc	0x4c8c
    4d00:	e3e00000 	mvn	r0, #0
    4d04:	eafffff0 	b	0x4ccc
    4d08:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    4d0c:	e24dd034 	sub	sp, sp, #52	; 0x34
    4d10:	e1a07000 	mov	r7, r0
    4d14:	e3570001 	cmp	r7, #1
    4d18:	1a000001 	bne	0x4d24
    4d1c:	e3a0600c 	mov	r6, #12
    4d20:	ea000000 	b	0x4d28
    4d24:	e3a0600c 	mov	r6, #12
    4d28:	e3a04000 	mov	r4, #0
    4d2c:	ea000011 	b	0x4d78
    4d30:	e1a02007 	mov	r2, r7
    4d34:	e1a01004 	mov	r1, r4
    4d38:	e28d0004 	add	r0, sp, #4
    4d3c:	ebffff57 	bl	0x4aa0
    4d40:	e28d0004 	add	r0, sp, #4
    4d44:	ebfffa9c 	bl	0x37bc
    4d48:	e3a01000 	mov	r1, #0
    4d4c:	e28d0004 	add	r0, sp, #4
    4d50:	ebffff68 	bl	0x4af8
    4d54:	e1a05000 	mov	r5, r0
    4d58:	e3550000 	cmp	r5, #0
    4d5c:	1a000003 	bne	0x4d70
    4d60:	ebfffa25 	bl	0x35fc
    4d64:	e3a00000 	mov	r0, #0
    4d68:	e28dd034 	add	sp, sp, #52	; 0x34
    4d6c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    4d70:	ebfffa21 	bl	0x35fc
    4d74:	e2844001 	add	r4, r4, #1
    4d78:	e1540006 	cmp	r4, r6
    4d7c:	3affffeb 	bcc	0x4d30
    4d80:	e3e00000 	mvn	r0, #0
    4d84:	eafffff7 	b	0x4d68

    4d88:	"eGON.BT0"
    4d90:	00000000

    4d94:	e3a01a22 	mov	r1, #139264	; 0x22000
    4d98:	e3a00000 	mov	r0, #0
    4d9c:	ea000002 	b	0x4dac
    4da0:	e3a02000 	mov	r2, #0
    4da4:	e7812100 	str	r2, [r1, r0, lsl #2]
    4da8:	e2800001 	add	r0, r0, #1
    4dac:	e3500020 	cmp	r0, #32
    4db0:	bafffffa 	blt	0x4da0
    4db4:	e3a01b89 	mov	r1, #140288	; 0x22400
    4db8:	e3a00000 	mov	r0, #0
    4dbc:	ea000002 	b	0x4dcc
    4dc0:	e3a02000 	mov	r2, #0
    4dc4:	e7812100 	str	r2, [r1, r0, lsl #2]
    4dc8:	e2800001 	add	r0, r0, #1
    4dcc:	e3500c02 	cmp	r0, #512	; 0x200
    4dd0:	bafffffa 	blt	0x4dc0
    4dd4:	e59f108c 	ldr	r1, [pc, #140]	; 0x4e68
    4dd8:	e3a00000 	mov	r0, #0
    4ddc:	ea000002 	b	0x4dec
    4de0:	e3a02000 	mov	r2, #0
    4de4:	e7812100 	str	r2, [r1, r0, lsl #2]
    4de8:	e2800001 	add	r0, r0, #1
    4dec:	e3500004 	cmp	r0, #4
    4df0:	bafffffa 	blt	0x4de0
    4df4:	e12fff1e 	bx	lr
    4df8:	e92d4010 	push	{r4, lr}
    4dfc:	ebffffe4 	bl	0x4d94
    4e00:	e3a00000 	mov	r0, #0
    4e04:	ebffffbf 	bl	0x4d08
    4e08:	e3500000 	cmp	r0, #0
    4e0c:	1a000001 	bne	0x4e18
    4e10:	e3a00000 	mov	r0, #0
    4e14:	e8bd8010 	pop	{r4, pc}
    4e18:	e3a00000 	mov	r0, #0
    4e1c:	ebffff90 	bl	0x4c64
    4e20:	e3500000 	cmp	r0, #0
    4e24:	1a000001 	bne	0x4e30
    4e28:	e3a00000 	mov	r0, #0
    4e2c:	eafffff8 	b	0x4e14
    4e30:	e3a00001 	mov	r0, #1
    4e34:	ebffffb3 	bl	0x4d08
    4e38:	e3500000 	cmp	r0, #0
    4e3c:	1a000001 	bne	0x4e48
    4e40:	e3a00000 	mov	r0, #0
    4e44:	eafffff2 	b	0x4e14
    4e48:	e3a00001 	mov	r0, #1
    4e4c:	ebffff84 	bl	0x4c64
    4e50:	e3500000 	cmp	r0, #0
    4e54:	1a000001 	bne	0x4e60
    4e58:	e3a00000 	mov	r0, #0
    4e5c:	eaffffec 	b	0x4e14
    4e60:	e3e00000 	mvn	r0, #0
    4e64:	eaffffea 	b	0x4e14

    4e68:	00022f00

    4e6c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    4e70:	e24dd064 	sub	sp, sp, #100	; 0x64
    4e74:	e1a06000 	mov	r6, r0
    4e78:	e3e07000 	mvn	r7, #0
    4e7c:	e3a0104c 	mov	r1, #76	; 0x4c
    4e80:	e28d0018 	add	r0, sp, #24
    4e84:	fa000a67 	blx	0x7828
    4e88:	e3a01018 	mov	r1, #24
    4e8c:	e1a0000d 	mov	r0, sp
    4e90:	fa000a64 	blx	0x7828
    4e94:	e58dd018 	str	sp, [sp, #24]
    4e98:	e28d1018 	add	r1, sp, #24
    4e9c:	e1a00006 	mov	r0, r6
    4ea0:	eb000854 	bl	0x6ff8
    4ea4:	e3500000 	cmp	r0, #0
    4ea8:	0a000001 	beq	0x4eb4
    4eac:	e320f000 	nop	{0}
    4eb0:	ea000034 	b	0x4f88
    4eb4:	e3a03801 	mov	r3, #65536	; 0x10000
    4eb8:	e3a02001 	mov	r2, #1
    4ebc:	e3a01000 	mov	r1, #0
    4ec0:	e28d0018 	add	r0, sp, #24
    4ec4:	eb0007ca 	bl	0x6df4
    4ec8:	e3500001 	cmp	r0, #1
    4ecc:	0a000001 	beq	0x4ed8
    4ed0:	e3e07000 	mvn	r7, #0
    4ed4:	ea00002b 	b	0x4f88
    4ed8:	e28f1e22 	add	r1, pc, #544	; 0x5100
    4edc:	e3a00801 	mov	r0, #65536	; 0x10000
    4ee0:	eb0009a6 	bl	0x7580
    4ee4:	e3500000 	cmp	r0, #0
    4ee8:	0a000001 	beq	0x4ef4
    4eec:	e3e07000 	mvn	r7, #0
    4ef0:	ea000024 	b	0x4f88
    4ef4:	e3a05801 	mov	r5, #65536	; 0x10000
    4ef8:	e5954010 	ldr	r4, [r5, #16]
    4efc:	e3540902 	cmp	r4, #32768	; 0x8000
    4f00:	8a000003 	bhi	0x4f14
    4f04:	e1a00004 	mov	r0, r4
    4f08:	e7df049f 	bfc	r0, #9, #23
    4f0c:	e3500000 	cmp	r0, #0
    4f10:	0a000001 	beq	0x4f1c
    4f14:	e3e07000 	mvn	r7, #0
    4f18:	ea00001a 	b	0x4f88
    4f1c:	e1a024a4 	lsr	r2, r4, #9
    4f20:	e3a03801 	mov	r3, #65536	; 0x10000
    4f24:	e3a01000 	mov	r1, #0
    4f28:	e28d0018 	add	r0, sp, #24
    4f2c:	eb0007b0 	bl	0x6df4
    4f30:	e15004a4 	cmp	r0, r4, lsr #9
    4f34:	0a000001 	beq	0x4f40
    4f38:	e3e07000 	mvn	r7, #0
    4f3c:	ea000011 	b	0x4f88
    4f40:	e1a01004 	mov	r1, r4
    4f44:	e3a00801 	mov	r0, #65536	; 0x10000
    4f48:	eb00099e 	bl	0x75c8
    4f4c:	e3500000 	cmp	r0, #0
    4f50:	1a00000a 	bne	0x4f80
    4f54:	e3560000 	cmp	r6, #0
    4f58:	1a000002 	bne	0x4f68
    4f5c:	e3a00000 	mov	r0, #0
    4f60:	e5c50028 	strb	r0, [r5, #40]	; 0x28
    4f64:	ea000003 	b	0x4f78
    4f68:	e3560002 	cmp	r6, #2
    4f6c:	1a000001 	bne	0x4f78
    4f70:	e3a00002 	mov	r0, #2
    4f74:	e5c50028 	strb	r0, [r5, #40]	; 0x28
    4f78:	e3a07000 	mov	r7, #0
    4f7c:	ea000000 	b	0x4f84
    4f80:	e3e07000 	mvn	r7, #0
    4f84:	e320f000 	nop	{0}
    4f88:	e28d1018 	add	r1, sp, #24
    4f8c:	e1a00006 	mov	r0, r6
    4f90:	eb000835 	bl	0x706c
    4f94:	e1a00007 	mov	r0, r7
    4f98:	e28dd064 	add	sp, sp, #100	; 0x64
    4f9c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    4fa0:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    4fa4:	e24dd064 	sub	sp, sp, #100	; 0x64
    4fa8:	e1a06000 	mov	r6, r0
    4fac:	e3e07000 	mvn	r7, #0
    4fb0:	e3a0104c 	mov	r1, #76	; 0x4c
    4fb4:	e28d0018 	add	r0, sp, #24
    4fb8:	fa000a1a 	blx	0x7828
    4fbc:	e3a01018 	mov	r1, #24
    4fc0:	e1a0000d 	mov	r0, sp
    4fc4:	fa000a17 	blx	0x7828
    4fc8:	e58dd018 	str	sp, [sp, #24]
    4fcc:	e28d1018 	add	r1, sp, #24
    4fd0:	e1a00006 	mov	r0, r6
    4fd4:	eb0007e9 	bl	0x6f80
    4fd8:	e1a07000 	mov	r7, r0
    4fdc:	e3570000 	cmp	r7, #0
    4fe0:	0a000001 	beq	0x4fec
    4fe4:	e3e07000 	mvn	r7, #0
    4fe8:	ea00003e 	b	0x50e8
    4fec:	e3a03801 	mov	r3, #65536	; 0x10000
    4ff0:	e3a02001 	mov	r2, #1
    4ff4:	e3a01010 	mov	r1, #16
    4ff8:	e28d0018 	add	r0, sp, #24
    4ffc:	eb000742 	bl	0x6d0c
    5000:	e3500001 	cmp	r0, #1
    5004:	0a00000b 	beq	0x5038
    5008:	e59f10fc 	ldr	r1, [pc, #252]	; 0x510c
    500c:	e28d0018 	add	r0, sp, #24
    5010:	eb000593 	bl	0x6664
    5014:	e3a03801 	mov	r3, #65536	; 0x10000
    5018:	e3a02001 	mov	r2, #1
    501c:	e3a01010 	mov	r1, #16
    5020:	e28d0018 	add	r0, sp, #24
    5024:	eb000738 	bl	0x6d0c
    5028:	e3500001 	cmp	r0, #1
    502c:	0a000001 	beq	0x5038
    5030:	e3e07000 	mvn	r7, #0
    5034:	ea00002b 	b	0x50e8
    5038:	e28f10c0 	add	r1, pc, #192	; 0x5100
    503c:	e3a00801 	mov	r0, #65536	; 0x10000
    5040:	eb00094e 	bl	0x7580
    5044:	e3500000 	cmp	r0, #0
    5048:	0a000001 	beq	0x5054
    504c:	e3e07000 	mvn	r7, #0
    5050:	ea000024 	b	0x50e8
    5054:	e3a05801 	mov	r5, #65536	; 0x10000
    5058:	e5954010 	ldr	r4, [r5, #16]
    505c:	e3540902 	cmp	r4, #32768	; 0x8000
    5060:	8a000003 	bhi	0x5074
    5064:	e1a00004 	mov	r0, r4
    5068:	e7df049f 	bfc	r0, #9, #23
    506c:	e3500000 	cmp	r0, #0
    5070:	0a000001 	beq	0x507c
    5074:	e3e07000 	mvn	r7, #0
    5078:	ea00001a 	b	0x50e8
    507c:	e1a024a4 	lsr	r2, r4, #9
    5080:	e3a03801 	mov	r3, #65536	; 0x10000
    5084:	e3a01010 	mov	r1, #16
    5088:	e28d0018 	add	r0, sp, #24
    508c:	eb00071e 	bl	0x6d0c
    5090:	e15004a4 	cmp	r0, r4, lsr #9
    5094:	0a000001 	beq	0x50a0
    5098:	e3e07000 	mvn	r7, #0
    509c:	ea000011 	b	0x50e8
    50a0:	e1a01004 	mov	r1, r4
    50a4:	e3a00801 	mov	r0, #65536	; 0x10000
    50a8:	eb000946 	bl	0x75c8
    50ac:	e3500000 	cmp	r0, #0
    50b0:	1a00000a 	bne	0x50e0
    50b4:	e3560000 	cmp	r6, #0
    50b8:	1a000002 	bne	0x50c8
    50bc:	e3a00000 	mov	r0, #0
    50c0:	e5c50028 	strb	r0, [r5, #40]	; 0x28
    50c4:	ea000003 	b	0x50d8
    50c8:	e3560002 	cmp	r6, #2
    50cc:	1a000001 	bne	0x50d8
    50d0:	e3a00002 	mov	r0, #2
    50d4:	e5c50028 	strb	r0, [r5, #40]	; 0x28
    50d8:	e3a07000 	mov	r7, #0
    50dc:	ea000000 	b	0x50e4
    50e0:	e3e07000 	mvn	r7, #0
    50e4:	e320f000 	nop	{0}
    50e8:	e28d1018 	add	r1, sp, #24
    50ec:	e1a00006 	mov	r0, r6
    50f0:	eb0007dd 	bl	0x706c
    50f4:	e1a00007 	mov	r0, r7
    50f8:	e28dd064 	add	sp, sp, #100	; 0x64
    50fc:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

    5100:	"eGON.BT0"
    5108:	00000000
    510c:	005b8d80

    5110:	e3a00001 	mov	r0, #1
    5114:	e59f1d44 	ldr	r1, [pc, #3396]	; 0x5e60
    5118:	e5810000 	str	r0, [r1]
    511c:	e12fff1e 	bx	lr

    5120:	e92d4030 	push	{r4, r5, lr}
    5124:	e320f000 	nop	{0}
    5128:	e3a00002 	mov	r0, #2
    512c:	e59f1d2c 	ldr	r1, [pc, #3372]	; 0x5e60
    5130:	e5810000 	str	r0, [r1]
    5134:	e1810100 	orr	r0, r1, r0, lsl #2
    5138:	e5902000 	ldr	r2, [r0]
    513c:	e1a03002 	mov	r3, r2
    5140:	e3a02000 	mov	r2, #0
    5144:	e2400004 	sub	r0, r0, #4
    5148:	e5900000 	ldr	r0, [r0]
    514c:	e1822000 	orr	r2, r2, r0
    5150:	e1a00002 	mov	r0, r2
    5154:	e1a01003 	mov	r1, r3
    5158:	e8bd8030 	pop	{r4, r5, pc}
    515c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    5160:	e1a04000 	mov	r4, r0
    5164:	e1a05001 	mov	r5, r1
    5168:	e1a01185 	lsl	r1, r5, #3
    516c:	e1810ea4 	orr	r0, r1, r4, lsr #29
    5170:	e1a01184 	lsl	r1, r4, #3
    5174:	e1a03205 	lsl	r3, r5, #4
    5178:	e1832e24 	orr	r2, r3, r4, lsr #28
    517c:	e1a03204 	lsl	r3, r4, #4
    5180:	e091a003 	adds	sl, r1, r3
    5184:	e0a0b002 	adc	fp, r0, r2
    5188:	ebffffe4 	bl	0x5120
    518c:	e1a08000 	mov	r8, r0
    5190:	e1a09001 	mov	r9, r1
    5194:	e320f000 	nop	{0}
    5198:	ebffffe0 	bl	0x5120
    519c:	e0506008 	subs	r6, r0, r8
    51a0:	e0c17009 	sbc	r7, r1, r9
    51a4:	e056000a 	subs	r0, r6, sl
    51a8:	e0d7000b 	sbcs	r0, r7, fp
    51ac:	3afffff9 	bcc	0x5198
    51b0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    51b4:	e92d4030 	push	{r4, r5, lr}
    51b8:	e1a04000 	mov	r4, r0
    51bc:	e1a05001 	mov	r5, r1
    51c0:	ea000002 	b	0x51d0
    51c4:	e3000320 	movw	r0, #800	; 0x320
    51c8:	e3a01000 	mov	r1, #0
    51cc:	ebffffe2 	bl	0x515c
    51d0:	e1a01004 	mov	r1, r4
    51d4:	e1a00005 	mov	r0, r5
    51d8:	e2544001 	subs	r4, r4, #1
    51dc:	e2c55000 	sbc	r5, r5, #0
    51e0:	e3a03000 	mov	r3, #0
    51e4:	e0211003 	eor	r1, r1, r3
    51e8:	e0200003 	eor	r0, r0, r3
    51ec:	e1900001 	orrs	r0, r0, r1
    51f0:	1afffff3 	bne	0x51c4
    51f4:	e8bd8030 	pop	{r4, r5, pc}
    51f8:	e59f2c64 	ldr	r2, [pc, #3172]	; 0x5e64
    51fc:	e5922000 	ldr	r2, [r2]
    5200:	e3822c01 	orr	r2, r2, #256	; 0x100
    5204:	e59f3c58 	ldr	r3, [pc, #3160]	; 0x5e64
    5208:	e5832000 	str	r2, [r3]
    520c:	e2432020 	sub	r2, r3, #32
    5210:	e5922000 	ldr	r2, [r2]
    5214:	e3822c01 	orr	r2, r2, #256	; 0x100
    5218:	e2433020 	sub	r3, r3, #32
    521c:	e5832000 	str	r2, [r3]
    5220:	e59f2c40 	ldr	r2, [pc, #3136]	; 0x5e68
    5224:	e7922100 	ldr	r2, [r2, r0, lsl #2]
    5228:	e3822701 	orr	r2, r2, #262144	; 0x40000
    522c:	e59f3c34 	ldr	r3, [pc, #3124]	; 0x5e68
    5230:	e7832100 	str	r2, [r3, r0, lsl #2]
    5234:	e1a02003 	mov	r2, r3
    5238:	e7922100 	ldr	r2, [r2, r0, lsl #2]
    523c:	e3822801 	orr	r2, r2, #65536	; 0x10000
    5240:	e7832100 	str	r2, [r3, r0, lsl #2]
    5244:	e3500002 	cmp	r0, #2
    5248:	1a000021 	bne	0x52d4
    524c:	e59f2c18 	ldr	r2, [pc, #3096]	; 0x5e6c
    5250:	e59f3c18 	ldr	r3, [pc, #3096]	; 0x5e70
    5254:	e5832000 	str	r2, [r3]
    5258:	e59f2c14 	ldr	r2, [pc, #3092]	; 0x5e74
    525c:	e1833d42 	orr	r3, r3, r2, asr #26
    5260:	e5832000 	str	r2, [r3]
    5264:	e3072773 	movw	r2, #30579	; 0x7773
    5268:	e2833004 	add	r3, r3, #4
    526c:	e5832000 	str	r2, [r3]
    5270:	e59f2c00 	ldr	r2, [pc, #3072]	; 0x5e78
    5274:	e2833014 	add	r3, r3, #20
    5278:	e5832000 	str	r2, [r3]
    527c:	e3a02001 	mov	r2, #1
    5280:	e0833102 	add	r3, r3, r2, lsl #2
    5284:	e5832000 	str	r2, [r3]
    5288:	e59f2be8 	ldr	r2, [pc, #3048]	; 0x5e78
    528c:	e243300c 	sub	r3, r3, #12
    5290:	e5832000 	str	r2, [r3]
    5294:	e3a02001 	mov	r2, #1
    5298:	e0833102 	add	r3, r3, r2, lsl #2
    529c:	e5832000 	str	r2, [r3]
    52a0:	e3a02102 	mov	r2, #-2147483648	; 0x80000000
    52a4:	e59f3bd0 	ldr	r3, [pc, #3024]	; 0x5e7c
    52a8:	e5832000 	str	r2, [r3]
    52ac:	e59f2bcc 	ldr	r2, [pc, #3020]	; 0x5e80
    52b0:	e5812000 	str	r2, [r1]
    52b4:	e5912000 	ldr	r2, [r1]
    52b8:	e2822c02 	add	r2, r2, #512	; 0x200
    52bc:	e581200c 	str	r2, [r1, #12]
    52c0:	e59f2bbc 	ldr	r2, [pc, #3004]	; 0x5e84
    52c4:	e5812008 	str	r2, [r1, #8]
    52c8:	e1c320c2 	bic	r2, r3, r2, asr #1
    52cc:	e5812014 	str	r2, [r1, #20]
    52d0:	ea000013 	b	0x5324
    52d4:	e59f2bac 	ldr	r2, [pc, #2988]	; 0x5e88
    52d8:	e59f3bac 	ldr	r3, [pc, #2988]	; 0x5e8c
    52dc:	e5832000 	str	r2, [r3]
    52e0:	e3002555 	movw	r2, #1365	; 0x555
    52e4:	e283301c 	add	r3, r3, #28
    52e8:	e5832000 	str	r2, [r3]
    52ec:	e2433008 	sub	r3, r3, #8
    52f0:	e5832000 	str	r2, [r3]
    52f4:	e3a02102 	mov	r2, #-2147483648	; 0x80000000
    52f8:	e59f3b90 	ldr	r3, [pc, #2960]	; 0x5e90
    52fc:	e5832000 	str	r2, [r3]
    5300:	e59f2b8c 	ldr	r2, [pc, #2956]	; 0x5e94
    5304:	e5812000 	str	r2, [r1]
    5308:	e5912000 	ldr	r2, [r1]
    530c:	e2822c02 	add	r2, r2, #512	; 0x200
    5310:	e581200c 	str	r2, [r1, #12]
    5314:	e59f2b68 	ldr	r2, [pc, #2920]	; 0x5e84
    5318:	e5812008 	str	r2, [r1, #8]
    531c:	e1c320c2 	bic	r2, r3, r2, asr #1
    5320:	e5812014 	str	r2, [r1, #20]
    5324:	e3a02a22 	mov	r2, #139264	; 0x22000
    5328:	e5812004 	str	r2, [r1, #4]
    532c:	e12fff1e 	bx	lr
    5330:	e3500002 	cmp	r0, #2
    5334:	1a000017 	bne	0x5398
    5338:	e59f2b58 	ldr	r2, [pc, #2904]	; 0x5e98
    533c:	e59f3b2c 	ldr	r3, [pc, #2860]	; 0x5e70
    5340:	e5832000 	str	r2, [r3]
    5344:	e1833bc3 	orr	r3, r3, r3, asr #23
    5348:	e5832000 	str	r2, [r3]
    534c:	e3072777 	movw	r2, #30583	; 0x7777
    5350:	e2833004 	add	r3, r3, #4
    5354:	e5832000 	str	r2, [r3]
    5358:	e3052140 	movw	r2, #20800	; 0x5140
    535c:	e0833542 	add	r3, r3, r2, asr #10
    5360:	e5832000 	str	r2, [r3]
    5364:	e3a02054 	mov	r2, #84	; 0x54
    5368:	e2833004 	add	r3, r3, #4
    536c:	e5832000 	str	r2, [r3]
    5370:	e59f2b24 	ldr	r2, [pc, #2852]	; 0x5e9c
    5374:	e243300c 	sub	r3, r3, #12
    5378:	e5832000 	str	r2, [r3]
    537c:	e3a02055 	mov	r2, #85	; 0x55
    5380:	e2833004 	add	r3, r3, #4
    5384:	e5832000 	str	r2, [r3]
    5388:	e3a02000 	mov	r2, #0
    538c:	e59f3ae8 	ldr	r3, [pc, #2792]	; 0x5e7c
    5390:	e5832000 	str	r2, [r3]
    5394:	ea00000b 	b	0x53c8
    5398:	e59f2b00 	ldr	r2, [pc, #2816]	; 0x5ea0
    539c:	e59f3ae8 	ldr	r3, [pc, #2792]	; 0x5e8c
    53a0:	e5832000 	str	r2, [r3]
    53a4:	e3a02000 	mov	r2, #0
    53a8:	e283301c 	add	r3, r3, #28
    53ac:	e5832000 	str	r2, [r3]
    53b0:	e3002555 	movw	r2, #1365	; 0x555
    53b4:	e2433008 	sub	r3, r3, #8
    53b8:	e5832000 	str	r2, [r3]
    53bc:	e3a02000 	mov	r2, #0
    53c0:	e59f3ac8 	ldr	r3, [pc, #2760]	; 0x5e90
    53c4:	e5832000 	str	r2, [r3]
    53c8:	e59f2a98 	ldr	r2, [pc, #2712]	; 0x5e68
    53cc:	e7922100 	ldr	r2, [r2, r0, lsl #2]
    53d0:	e3c22805 	bic	r2, r2, #327680	; 0x50000
    53d4:	e59f3a8c 	ldr	r3, [pc, #2700]	; 0x5e68
    53d8:	e7832100 	str	r2, [r3, r0, lsl #2]
    53dc:	e59f2a80 	ldr	r2, [pc, #2688]	; 0x5e64
    53e0:	e5922000 	ldr	r2, [r2]
    53e4:	e3c22c01 	bic	r2, r2, #256	; 0x100
    53e8:	e59f3a74 	ldr	r3, [pc, #2676]	; 0x5e64
    53ec:	e5832000 	str	r2, [r3]
    53f0:	e2432020 	sub	r2, r3, #32
    53f4:	e5922000 	ldr	r2, [r2]
    53f8:	e3c22c01 	bic	r2, r2, #256	; 0x100
    53fc:	e2433020 	sub	r3, r3, #32
    5400:	e5832000 	str	r2, [r3]
    5404:	e12fff1e 	bx	lr
    5408:	e92d4070 	push	{r4, r5, r6, lr}
    540c:	e1a02000 	mov	r2, r0
    5410:	e5924000 	ldr	r4, [r2]
    5414:	e5941000 	ldr	r1, [r4]
    5418:	e3003190 	movw	r3, #400	; 0x190
    541c:	e59f5a80 	ldr	r5, [pc, #2688]	; 0x5ea4
    5420:	e5815018 	str	r5, [r1, #24]
    5424:	e320f000 	nop	{0}
    5428:	e5910018 	ldr	r0, [r1, #24]
    542c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    5430:	0a000002 	beq	0x5440
    5434:	e1b00003 	movs	r0, r3
    5438:	e2433001 	sub	r3, r3, #1
    543c:	1afffff9 	bne	0x5428
    5440:	e3530000 	cmp	r3, #0
    5444:	ca000001 	bgt	0x5450
    5448:	e3e00000 	mvn	r0, #0
    544c:	e8bd8070 	pop	{r4, r5, r6, pc}
    5450:	e3e00000 	mvn	r0, #0
    5454:	e5810038 	str	r0, [r1, #56]	; 0x38
    5458:	e3a00000 	mov	r0, #0
    545c:	eafffffa 	b	0x544c
    5460:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    5464:	e1a09000 	mov	r9, r0
    5468:	e1a08001 	mov	r8, r1
    546c:	e5994000 	ldr	r4, [r9]
    5470:	e5946000 	ldr	r6, [r4]
    5474:	e5965004 	ldr	r5, [r6, #4]
    5478:	e3a07000 	mov	r7, #0
    547c:	e3c55801 	bic	r5, r5, #65536	; 0x10000
    5480:	e5865004 	str	r5, [r6, #4]
    5484:	e1a00009 	mov	r0, r9
    5488:	ebffffde 	bl	0x5408
    548c:	e3500000 	cmp	r0, #0
    5490:	0a000001 	beq	0x549c
    5494:	e3e00000 	mvn	r0, #0
    5498:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
    549c:	e3a00000 	mov	r0, #0
    54a0:	e5941014 	ldr	r1, [r4, #20]
    54a4:	e5810000 	str	r0, [r1]
    54a8:	e3a07000 	mov	r7, #0
    54ac:	ea000000 	b	0x54b4
    54b0:	e2877001 	add	r7, r7, #1
    54b4:	e3570064 	cmp	r7, #100	; 0x64
    54b8:	3afffffc 	bcc	0x54b0
    54bc:	e59f09e4 	ldr	r0, [pc, #2532]	; 0x5ea8
    54c0:	e1580000 	cmp	r8, r0
    54c4:	8a000003 	bhi	0x54d8
    54c8:	e59f09dc 	ldr	r0, [pc, #2524]	; 0x5eac
    54cc:	e5941014 	ldr	r1, [r4, #20]
    54d0:	e5810000 	str	r0, [r1]
    54d4:	ea000009 	b	0x5500
    54d8:	e59f09d0 	ldr	r0, [pc, #2512]	; 0x5eb0
    54dc:	e1580000 	cmp	r8, r0
    54e0:	8a000003 	bhi	0x54f4
    54e4:	e3a00802 	mov	r0, #131072	; 0x20000
    54e8:	e5941014 	ldr	r1, [r4, #20]
    54ec:	e5810000 	str	r0, [r1]
    54f0:	ea000002 	b	0x5500
    54f4:	e3a00801 	mov	r0, #65536	; 0x10000
    54f8:	e5941014 	ldr	r1, [r4, #20]
    54fc:	e5810000 	str	r0, [r1]
    5500:	e3a07000 	mov	r7, #0
    5504:	ea000000 	b	0x550c
    5508:	e2877001 	add	r7, r7, #1
    550c:	e3570064 	cmp	r7, #100	; 0x64
    5510:	3afffffc 	bcc	0x5508
    5514:	e5940014 	ldr	r0, [r4, #20]
    5518:	e5900000 	ldr	r0, [r0]
    551c:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    5520:	e5941014 	ldr	r1, [r4, #20]
    5524:	e5810000 	str	r0, [r1]
    5528:	e3c550ff 	bic	r5, r5, #255	; 0xff
    552c:	e5865004 	str	r5, [r6, #4]
    5530:	e1a00009 	mov	r0, r9
    5534:	ebffffb3 	bl	0x5408
    5538:	e3500000 	cmp	r0, #0
    553c:	0a000001 	beq	0x5548
    5540:	e3e00000 	mvn	r0, #0
    5544:	eaffffd3 	b	0x5498
    5548:	e3855801 	orr	r5, r5, #65536	; 0x10000
    554c:	e5865004 	str	r5, [r6, #4]
    5550:	e1a00009 	mov	r0, r9
    5554:	ebffffab 	bl	0x5408
    5558:	e3500000 	cmp	r0, #0
    555c:	0a000001 	beq	0x5568
    5560:	e3e00000 	mvn	r0, #0
    5564:	eaffffcb 	b	0x5498
    5568:	e3a00000 	mov	r0, #0
    556c:	eaffffc9 	b	0x5498
    5570:	e92d4070 	push	{r4, r5, r6, lr}
    5574:	e1a04000 	mov	r4, r0
    5578:	e5946000 	ldr	r6, [r4]
    557c:	e5965000 	ldr	r5, [r6]
    5580:	e3a00000 	mov	r0, #0
    5584:	e5850078 	str	r0, [r5, #120]	; 0x78
    5588:	e3a0001e 	mov	r0, #30
    558c:	e3a01000 	mov	r1, #0
    5590:	ebfffef1 	bl	0x515c
    5594:	e3a00001 	mov	r0, #1
    5598:	e5850078 	str	r0, [r5, #120]	; 0x78
    559c:	e300012c 	movw	r0, #300	; 0x12c
    55a0:	e3a01000 	mov	r1, #0
    55a4:	ebfffeec 	bl	0x515c
    55a8:	e8bd8070 	pop	{r4, r5, r6, pc}
    55ac:	e92d4070 	push	{r4, r5, r6, lr}
    55b0:	e1a04000 	mov	r4, r0
    55b4:	e5946000 	ldr	r6, [r4]
    55b8:	e5965000 	ldr	r5, [r6]
    55bc:	e594001c 	ldr	r0, [r4, #28]
    55c0:	e3500000 	cmp	r0, #0
    55c4:	0a000007 	beq	0x55e8
    55c8:	e594101c 	ldr	r1, [r4, #28]
    55cc:	e1a00004 	mov	r0, r4
    55d0:	ebffffa2 	bl	0x5460
    55d4:	e3500000 	cmp	r0, #0
    55d8:	0a000002 	beq	0x55e8
    55dc:	e3a00001 	mov	r0, #1
    55e0:	e5860010 	str	r0, [r6, #16]
    55e4:	e8bd8070 	pop	{r4, r5, r6, pc}
    55e8:	e5940018 	ldr	r0, [r4, #24]
    55ec:	e3500004 	cmp	r0, #4
    55f0:	1a000002 	bne	0x5600
    55f4:	e3a00001 	mov	r0, #1
    55f8:	e585000c 	str	r0, [r5, #12]
    55fc:	ea000007 	b	0x5620
    5600:	e5940018 	ldr	r0, [r4, #24]
    5604:	e3500008 	cmp	r0, #8
    5608:	1a000002 	bne	0x5618
    560c:	e3a00002 	mov	r0, #2
    5610:	e585000c 	str	r0, [r5, #12]
    5614:	ea000001 	b	0x5620
    5618:	e3a00000 	mov	r0, #0
    561c:	e585000c 	str	r0, [r5, #12]
    5620:	e320f000 	nop	{0}
    5624:	eaffffee 	b	0x55e4
    5628:	e92d4030 	push	{r4, r5, lr}
    562c:	e1a02000 	mov	r2, r0
    5630:	e5924000 	ldr	r4, [r2]
    5634:	e5941000 	ldr	r1, [r4]
    5638:	e30f3fff 	movw	r3, #65535	; 0xffff
    563c:	e3a00007 	mov	r0, #7
    5640:	e5810000 	str	r0, [r1]
    5644:	e320f000 	nop	{0}
    5648:	e5910000 	ldr	r0, [r1]
    564c:	e3100007 	tst	r0, #7
    5650:	0a000002 	beq	0x5660
    5654:	e1b00003 	movs	r0, r3
    5658:	e2433001 	sub	r3, r3, #1
    565c:	1afffff9 	bne	0x5648
    5660:	e3530000 	cmp	r3, #0
    5664:	ca000001 	bgt	0x5670
    5668:	e3e00000 	mvn	r0, #0
    566c:	e8bd8030 	pop	{r4, r5, pc}
    5670:	e59f083c 	ldr	r0, [pc, #2108]	; 0x5eb4
    5674:	e5810040 	str	r0, [r1, #64]	; 0x40
    5678:	e3a00000 	mov	r0, #0
    567c:	e5810030 	str	r0, [r1, #48]	; 0x30
    5680:	e3e00000 	mvn	r0, #0
    5684:	e5810038 	str	r0, [r1, #56]	; 0x38
    5688:	e30003ff 	movw	r0, #1023	; 0x3ff
    568c:	e5810088 	str	r0, [r1, #136]	; 0x88
    5690:	e3000deb 	movw	r0, #3563	; 0xdeb
    5694:	e5810050 	str	r0, [r1, #80]	; 0x50
    5698:	e3e00000 	mvn	r0, #0
    569c:	e5810008 	str	r0, [r1, #8]
    56a0:	e3a00000 	mov	r0, #0
    56a4:	eafffff0 	b	0x566c
    56a8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    56ac:	e1a06000 	mov	r6, r0
    56b0:	e1a02001 	mov	r2, r1
    56b4:	e5965000 	ldr	r5, [r6]
    56b8:	e5957000 	ldr	r7, [r5]
    56bc:	e592000c 	ldr	r0, [r2, #12]
    56c0:	e592e008 	ldr	lr, [r2, #8]
    56c4:	e00c0e90 	mul	ip, r0, lr
    56c8:	e59f47e8 	ldr	r4, [pc, #2024]	; 0x5eb8
    56cc:	e5920004 	ldr	r0, [r2, #4]
    56d0:	e3100001 	tst	r0, #1
    56d4:	0a000015 	beq	0x5730
    56d8:	e5923000 	ldr	r3, [r2]
    56dc:	e3a01000 	mov	r1, #0
    56e0:	ea00000f 	b	0x5724
    56e4:	e320f000 	nop	{0}
    56e8:	e2440001 	sub	r0, r4, #1
    56ec:	e1b04000 	movs	r4, r0
    56f0:	0a000002 	beq	0x5700
    56f4:	e597003c 	ldr	r0, [r7, #60]	; 0x3c
    56f8:	e3100004 	tst	r0, #4
    56fc:	1afffff9 	bne	0x56e8
    5700:	e3540000 	cmp	r4, #0
    5704:	ca000001 	bgt	0x5710
    5708:	e3e00000 	mvn	r0, #0
    570c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    5710:	e595000c 	ldr	r0, [r5, #12]
    5714:	e5900000 	ldr	r0, [r0]
    5718:	e7830101 	str	r0, [r3, r1, lsl #2]
    571c:	e59f4794 	ldr	r4, [pc, #1940]	; 0x5eb8
    5720:	e2811001 	add	r1, r1, #1
    5724:	e151012c 	cmp	r1, ip, lsr #2
    5728:	3affffed 	bcc	0x56e4
    572c:	ea000014 	b	0x5784
    5730:	e5923000 	ldr	r3, [r2]
    5734:	e3a01000 	mov	r1, #0
    5738:	ea00000f 	b	0x577c
    573c:	e320f000 	nop	{0}
    5740:	e2440001 	sub	r0, r4, #1
    5744:	e1b04000 	movs	r4, r0
    5748:	0a000002 	beq	0x5758
    574c:	e597003c 	ldr	r0, [r7, #60]	; 0x3c
    5750:	e3100008 	tst	r0, #8
    5754:	1afffff9 	bne	0x5740
    5758:	e3540000 	cmp	r4, #0
    575c:	ca000001 	bgt	0x5768
    5760:	e3e00000 	mvn	r0, #0
    5764:	eaffffe8 	b	0x570c
    5768:	e7930101 	ldr	r0, [r3, r1, lsl #2]
    576c:	e595e00c 	ldr	lr, [r5, #12]
    5770:	e58e0000 	str	r0, [lr]
    5774:	e59f473c 	ldr	r4, [pc, #1852]	; 0x5eb8
    5778:	e2811001 	add	r1, r1, #1
    577c:	e151012c 	cmp	r1, ip, lsr #2
    5780:	3affffed 	bcc	0x573c
    5784:	e3a00000 	mov	r0, #0
    5788:	eaffffdf 	b	0x570c
    578c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    5790:	e1a05000 	mov	r5, r0
    5794:	e1a03001 	mov	r3, r1
    5798:	e5956000 	ldr	r6, [r5]
    579c:	e5962000 	ldr	r2, [r6]
    57a0:	e5961004 	ldr	r1, [r6, #4]
    57a4:	e593000c 	ldr	r0, [r3, #12]
    57a8:	e593c008 	ldr	ip, [r3, #8]
    57ac:	e0070c90 	mul	r7, r0, ip
    57b0:	e3a00000 	mov	r0, #0
    57b4:	e5810000 	str	r0, [r1]
    57b8:	e5810004 	str	r0, [r1, #4]
    57bc:	e5810008 	str	r0, [r1, #8]
    57c0:	e581000c 	str	r0, [r1, #12]
    57c4:	e5910000 	ldr	r0, [r1]
    57c8:	e3c00002 	bic	r0, r0, #2
    57cc:	e5810000 	str	r0, [r1]
    57d0:	e5910000 	ldr	r0, [r1]
    57d4:	e3c00004 	bic	r0, r0, #4
    57d8:	e2800004 	add	r0, r0, #4
    57dc:	e5810000 	str	r0, [r1]
    57e0:	e5910000 	ldr	r0, [r1]
    57e4:	e3c00008 	bic	r0, r0, #8
    57e8:	e2800008 	add	r0, r0, #8
    57ec:	e5810000 	str	r0, [r1]
    57f0:	e5910000 	ldr	r0, [r1]
    57f4:	e3c00010 	bic	r0, r0, #16
    57f8:	e2800010 	add	r0, r0, #16
    57fc:	e5810000 	str	r0, [r1]
    5800:	e5910000 	ldr	r0, [r1]
    5804:	e3c00020 	bic	r0, r0, #32
    5808:	e2800020 	add	r0, r0, #32
    580c:	e5810000 	str	r0, [r1]
    5810:	e5910000 	ldr	r0, [r1]
    5814:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    5818:	e2800102 	add	r0, r0, #-2147483648	; 0x80000000
    581c:	e5810000 	str	r0, [r1]
    5820:	e5910004 	ldr	r0, [r1, #4]
    5824:	e7cf0017 	bfi	r0, r7, #0, #16
    5828:	e5810004 	str	r0, [r1, #4]
    582c:	e5910004 	ldr	r0, [r1, #4]
    5830:	e6ff0070 	uxth	r0, r0
    5834:	e5810004 	str	r0, [r1, #4]
    5838:	e5930004 	ldr	r0, [r3, #4]
    583c:	e3100001 	tst	r0, #1
    5840:	0a000001 	beq	0x584c
    5844:	e5930000 	ldr	r0, [r3]
    5848:	ea000000 	b	0x5850
    584c:	e5930000 	ldr	r0, [r3]
    5850:	e5810008 	str	r0, [r1, #8]
    5854:	e3a00000 	mov	r0, #0
    5858:	e581000c 	str	r0, [r1, #12]
    585c:	e5924000 	ldr	r4, [r2]
    5860:	e3840024 	orr	r0, r4, #36	; 0x24
    5864:	e5820000 	str	r0, [r2]
    5868:	e3a00001 	mov	r0, #1
    586c:	e5820080 	str	r0, [r2, #128]	; 0x80
    5870:	e3a00082 	mov	r0, #130	; 0x82
    5874:	e5820080 	str	r0, [r2, #128]	; 0x80
    5878:	e592008c 	ldr	r0, [r2, #140]	; 0x8c
    587c:	e3c04003 	bic	r4, r0, #3
    5880:	e5930004 	ldr	r0, [r3, #4]
    5884:	e3100002 	tst	r0, #2
    5888:	0a000001 	beq	0x5894
    588c:	e3844001 	orr	r4, r4, #1
    5890:	ea000000 	b	0x5898
    5894:	e3844002 	orr	r4, r4, #2
    5898:	e582408c 	str	r4, [r2, #140]	; 0x8c
    589c:	e5821084 	str	r1, [r2, #132]	; 0x84
    58a0:	e59f0614 	ldr	r0, [pc, #1556]	; 0x5ebc
    58a4:	e5820040 	str	r0, [r2, #64]	; 0x40
    58a8:	e3a00000 	mov	r0, #0
    58ac:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    58b0:	e92d4ff7 	push	{r0, r1, r2, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    58b4:	e24dd01c 	sub	sp, sp, #28
    58b8:	e1a0b001 	mov	fp, r1
    58bc:	e59d001c 	ldr	r0, [sp, #28]
    58c0:	e5900000 	ldr	r0, [r0]
    58c4:	e58d0018 	str	r0, [sp, #24]
    58c8:	e59d0018 	ldr	r0, [sp, #24]
    58cc:	e590a000 	ldr	sl, [r0]
    58d0:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    58d4:	e58d0014 	str	r0, [sp, #20]
    58d8:	e3a00000 	mov	r0, #0
    58dc:	e58d0010 	str	r0, [sp, #16]
    58e0:	e58d000c 	str	r0, [sp, #12]
    58e4:	e58d0008 	str	r0, [sp, #8]
    58e8:	e58d0004 	str	r0, [sp, #4]
    58ec:	e59d0018 	ldr	r0, [sp, #24]
    58f0:	e5900010 	ldr	r0, [r0, #16]
    58f4:	e3500000 	cmp	r0, #0
    58f8:	0a000002 	beq	0x5908
    58fc:	e3e00000 	mvn	r0, #0
    5900:	e28dd028 	add	sp, sp, #40	; 0x28
    5904:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    5908:	e59b0000 	ldr	r0, [fp]
    590c:	e3500000 	cmp	r0, #0
    5910:	1a000002 	bne	0x5920
    5914:	e59d0014 	ldr	r0, [sp, #20]
    5918:	e3800902 	orr	r0, r0, #32768	; 0x8000
    591c:	e58d0014 	str	r0, [sp, #20]
    5920:	e59b0004 	ldr	r0, [fp, #4]
    5924:	e3100001 	tst	r0, #1
    5928:	0a000002 	beq	0x5938
    592c:	e59d0014 	ldr	r0, [sp, #20]
    5930:	e3800040 	orr	r0, r0, #64	; 0x40
    5934:	e58d0014 	str	r0, [sp, #20]
    5938:	e59b0004 	ldr	r0, [fp, #4]
    593c:	e3100002 	tst	r0, #2
    5940:	0a000002 	beq	0x5950
    5944:	e59d0014 	ldr	r0, [sp, #20]
    5948:	e3800080 	orr	r0, r0, #128	; 0x80
    594c:	e58d0014 	str	r0, [sp, #20]
    5950:	e59b0004 	ldr	r0, [fp, #4]
    5954:	e3100004 	tst	r0, #4
    5958:	0a000002 	beq	0x5968
    595c:	e59d0014 	ldr	r0, [sp, #20]
    5960:	e3800c01 	orr	r0, r0, #256	; 0x100
    5964:	e58d0014 	str	r0, [sp, #20]
    5968:	e59b001c 	ldr	r0, [fp, #28]
    596c:	e3100001 	tst	r0, #1
    5970:	0a000002 	beq	0x5980
    5974:	e59d0014 	ldr	r0, [sp, #20]
    5978:	e3800405 	orr	r0, r0, #83886080	; 0x5000000
    597c:	e58d0014 	str	r0, [sp, #20]
    5980:	e59b0008 	ldr	r0, [fp, #8]
    5984:	e58a001c 	str	r0, [sl, #28]
    5988:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    598c:	e3500000 	cmp	r0, #0
    5990:	1a000004 	bne	0x59a8
    5994:	e59b0000 	ldr	r0, [fp]
    5998:	e59d1014 	ldr	r1, [sp, #20]
    599c:	e1800001 	orr	r0, r0, r1
    59a0:	e58a0018 	str	r0, [sl, #24]
    59a4:	ea000047 	b	0x5ac8
    59a8:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    59ac:	e5900000 	ldr	r0, [r0]
    59b0:	e3100003 	tst	r0, #3
    59b4:	0a000002 	beq	0x59c4
    59b8:	e3e00003 	mvn	r0, #3
    59bc:	e58d0010 	str	r0, [sp, #16]
    59c0:	ea0000ec 	b	0x5d78
    59c4:	e59d0014 	ldr	r0, [sp, #20]
    59c8:	e3800c22 	orr	r0, r0, #8704	; 0x2200
    59cc:	e58d0014 	str	r0, [sp, #20]
    59d0:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    59d4:	e5900004 	ldr	r0, [r0, #4]
    59d8:	e3100002 	tst	r0, #2
    59dc:	0a000002 	beq	0x59ec
    59e0:	e59d0014 	ldr	r0, [sp, #20]
    59e4:	e3800b01 	orr	r0, r0, #1024	; 0x400
    59e8:	e58d0014 	str	r0, [sp, #20]
    59ec:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    59f0:	e5900008 	ldr	r0, [r0, #8]
    59f4:	e3500001 	cmp	r0, #1
    59f8:	9a000005 	bls	0x5a14
    59fc:	e59b001c 	ldr	r0, [fp, #28]
    5a00:	e3100001 	tst	r0, #1
    5a04:	1a000002 	bne	0x5a14
    5a08:	e59d0014 	ldr	r0, [sp, #20]
    5a0c:	e3800a01 	orr	r0, r0, #4096	; 0x1000
    5a10:	e58d0014 	str	r0, [sp, #20]
    5a14:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    5a18:	e5900008 	ldr	r0, [r0, #8]
    5a1c:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    5a20:	e591100c 	ldr	r1, [r1, #12]
    5a24:	e0000190 	mul	r0, r0, r1
    5a28:	e58d0004 	str	r0, [sp, #4]
    5a2c:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    5a30:	e590000c 	ldr	r0, [r0, #12]
    5a34:	e58a0010 	str	r0, [sl, #16]
    5a38:	e59d0004 	ldr	r0, [sp, #4]
    5a3c:	e58a0014 	str	r0, [sl, #20]
    5a40:	e59d0004 	ldr	r0, [sp, #4]
    5a44:	e3500000 	cmp	r0, #0
    5a48:	0a00000d 	beq	0x5a84
    5a4c:	e3a00001 	mov	r0, #1
    5a50:	e58d0008 	str	r0, [sp, #8]
    5a54:	e59a0000 	ldr	r0, [sl]
    5a58:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
    5a5c:	e58a0000 	str	r0, [sl]
    5a60:	e59d001c 	ldr	r0, [sp, #28]
    5a64:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    5a68:	ebffff47 	bl	0x578c
    5a6c:	e58d0010 	str	r0, [sp, #16]
    5a70:	e59b0000 	ldr	r0, [fp]
    5a74:	e59d1014 	ldr	r1, [sp, #20]
    5a78:	e1800001 	orr	r0, r0, r1
    5a7c:	e58a0018 	str	r0, [sl, #24]
    5a80:	ea00000a 	b	0x5ab0
    5a84:	e59a0000 	ldr	r0, [sl]
    5a88:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    5a8c:	e58a0000 	str	r0, [sl]
    5a90:	e59b0000 	ldr	r0, [fp]
    5a94:	e59d1014 	ldr	r1, [sp, #20]
    5a98:	e1800001 	orr	r0, r0, r1
    5a9c:	e58a0018 	str	r0, [sl, #24]
    5aa0:	e59d001c 	ldr	r0, [sp, #28]
    5aa4:	e59d1024 	ldr	r1, [sp, #36]	; 0x24
    5aa8:	ebfffefe 	bl	0x56a8
    5aac:	e58d0010 	str	r0, [sp, #16]
    5ab0:	e59d0010 	ldr	r0, [sp, #16]
    5ab4:	e3500000 	cmp	r0, #0
    5ab8:	0a000002 	beq	0x5ac8
    5abc:	e3e00002 	mvn	r0, #2
    5ac0:	e58d0010 	str	r0, [sp, #16]
    5ac4:	ea0000ab 	b	0x5d78
    5ac8:	e59b001c 	ldr	r0, [fp, #28]
    5acc:	e3100001 	tst	r0, #1
    5ad0:	0a000050 	beq	0x5c18
    5ad4:	ebfffd91 	bl	0x5120
    5ad8:	e1a08000 	mov	r8, r0
    5adc:	e1a09001 	mov	r9, r1
    5ae0:	e59f43d8 	ldr	r4, [pc, #984]	; 0x5ec0
    5ae4:	e3a05000 	mov	r5, #0
    5ae8:	e320f000 	nop	{0}
    5aec:	ebfffd8b 	bl	0x5120
    5af0:	e0506008 	subs	r6, r0, r8
    5af4:	e0c17009 	sbc	r7, r1, r9
    5af8:	e59a0038 	ldr	r0, [sl, #56]	; 0x38
    5afc:	e30b19c2 	movw	r1, #47554	; 0xb9c2
    5b00:	e1100001 	tst	r0, r1
    5b04:	0a000000 	beq	0x5b0c
    5b08:	ea000002 	b	0x5b18
    5b0c:	e0560004 	subs	r0, r6, r4
    5b10:	e0d70005 	sbcs	r0, r7, r5
    5b14:	3afffff4 	bcc	0x5aec
    5b18:	e320f000 	nop	{0}
    5b1c:	e0560004 	subs	r0, r6, r4
    5b20:	e0d70005 	sbcs	r0, r7, r5
    5b24:	2a000003 	bcs	0x5b38
    5b28:	e59a0038 	ldr	r0, [sl, #56]	; 0x38
    5b2c:	e30b18c2 	movw	r1, #47298	; 0xb8c2
    5b30:	e1100001 	tst	r0, r1
    5b34:	0a000004 	beq	0x5b4c
    5b38:	e3e00004 	mvn	r0, #4
    5b3c:	e58d0010 	str	r0, [sp, #16]
    5b40:	e3a00322 	mov	r0, #-2013265920	; 0x88000000
    5b44:	e58a0018 	str	r0, [sl, #24]
    5b48:	ea00008a 	b	0x5d78
    5b4c:	e3000100 	movw	r0, #256	; 0x100
    5b50:	e58a0038 	str	r0, [sl, #56]	; 0x38
    5b54:	ebfffd71 	bl	0x5120
    5b58:	e1a08000 	mov	r8, r0
    5b5c:	e1a09001 	mov	r9, r1
    5b60:	e59f435c 	ldr	r4, [pc, #860]	; 0x5ec4
    5b64:	e3a05000 	mov	r5, #0
    5b68:	e320f000 	nop	{0}
    5b6c:	ebfffd6b 	bl	0x5120
    5b70:	e0506008 	subs	r6, r0, r8
    5b74:	e0c17009 	sbc	r7, r1, r9
    5b78:	e59a0038 	ldr	r0, [sl, #56]	; 0x38
    5b7c:	e30b1ac2 	movw	r1, #47810	; 0xbac2
    5b80:	e1100001 	tst	r0, r1
    5b84:	0a000000 	beq	0x5b8c
    5b88:	ea000002 	b	0x5b98
    5b8c:	e0560004 	subs	r0, r6, r4
    5b90:	e0d70005 	sbcs	r0, r7, r5
    5b94:	3afffff4 	bcc	0x5b6c
    5b98:	e320f000 	nop	{0}
    5b9c:	e0560004 	subs	r0, r6, r4
    5ba0:	e0d70005 	sbcs	r0, r7, r5
    5ba4:	2a000003 	bcs	0x5bb8
    5ba8:	e59a0038 	ldr	r0, [sl, #56]	; 0x38
    5bac:	e30b18c2 	movw	r1, #47298	; 0xb8c2
    5bb0:	e1100001 	tst	r0, r1
    5bb4:	0a000004 	beq	0x5bcc
    5bb8:	e3e00005 	mvn	r0, #5
    5bbc:	e58d0010 	str	r0, [sp, #16]
    5bc0:	e3a00322 	mov	r0, #-2013265920	; 0x88000000
    5bc4:	e58a0018 	str	r0, [sl, #24]
    5bc8:	ea00006a 	b	0x5d78
    5bcc:	e3000200 	movw	r0, #512	; 0x200
    5bd0:	e58a0038 	str	r0, [sl, #56]	; 0x38
    5bd4:	ebfffd51 	bl	0x5120
    5bd8:	e1a08000 	mov	r8, r0
    5bdc:	e1a09001 	mov	r9, r1
    5be0:	e59f42e0 	ldr	r4, [pc, #736]	; 0x5ec8
    5be4:	e3a05000 	mov	r5, #0
    5be8:	e320f000 	nop	{0}
    5bec:	ebfffd4b 	bl	0x5120
    5bf0:	e0506008 	subs	r6, r0, r8
    5bf4:	e0c17009 	sbc	r7, r1, r9
    5bf8:	e59a0038 	ldr	r0, [sl, #56]	; 0x38
    5bfc:	e310000c 	tst	r0, #12
    5c00:	0a000000 	beq	0x5c08
    5c04:	ea000002 	b	0x5c14
    5c08:	e0560004 	subs	r0, r6, r4
    5c0c:	e0d70005 	sbcs	r0, r7, r5
    5c10:	3afffff5 	bcc	0x5bec
    5c14:	e320f000 	nop	{0}
    5c18:	ebfffd40 	bl	0x5120
    5c1c:	e1a08000 	mov	r8, r0
    5c20:	e1a09001 	mov	r9, r1
    5c24:	e3054dc0 	movw	r4, #24000	; 0x5dc0
    5c28:	e3a05000 	mov	r5, #0
    5c2c:	e320f000 	nop	{0}
    5c30:	ebfffd3a 	bl	0x5120
    5c34:	e0506008 	subs	r6, r0, r8
    5c38:	e0c17009 	sbc	r7, r1, r9
    5c3c:	e59a0038 	ldr	r0, [sl, #56]	; 0x38
    5c40:	e58d000c 	str	r0, [sp, #12]
    5c44:	e30b0bc6 	movw	r0, #48070	; 0xbbc6
    5c48:	e59d100c 	ldr	r1, [sp, #12]
    5c4c:	e1100001 	tst	r0, r1
    5c50:	0a000000 	beq	0x5c58
    5c54:	ea000002 	b	0x5c64
    5c58:	e0560004 	subs	r0, r6, r4
    5c5c:	e0d70005 	sbcs	r0, r7, r5
    5c60:	3afffff2 	bcc	0x5c30
    5c64:	e320f000 	nop	{0}
    5c68:	e0560004 	subs	r0, r6, r4
    5c6c:	e0d70005 	sbcs	r0, r7, r5
    5c70:	2a000003 	bcs	0x5c84
    5c74:	e30b0bc2 	movw	r0, #48066	; 0xbbc2
    5c78:	e59d100c 	ldr	r1, [sp, #12]
    5c7c:	e1100001 	tst	r0, r1
    5c80:	0a000002 	beq	0x5c90
    5c84:	e3e00001 	mvn	r0, #1
    5c88:	e58d0010 	str	r0, [sp, #16]
    5c8c:	ea000039 	b	0x5d78
    5c90:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    5c94:	e3500000 	cmp	r0, #0
    5c98:	0a000027 	beq	0x5d3c
    5c9c:	e3a00000 	mov	r0, #0
    5ca0:	e58d0000 	str	r0, [sp]
    5ca4:	ebfffd1d 	bl	0x5120
    5ca8:	e59f421c 	ldr	r4, [pc, #540]	; 0x5ecc
    5cac:	e3a05000 	mov	r5, #0
    5cb0:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    5cb4:	e5900008 	ldr	r0, [r0, #8]
    5cb8:	e3500001 	cmp	r0, #1
    5cbc:	9a000005 	bls	0x5cd8
    5cc0:	e59b001c 	ldr	r0, [fp, #28]
    5cc4:	e3100001 	tst	r0, #1
    5cc8:	1a000002 	bne	0x5cd8
    5ccc:	e30f0bc2 	movw	r0, #64450	; 0xfbc2
    5cd0:	e58d0000 	str	r0, [sp]
    5cd4:	ea000001 	b	0x5ce0
    5cd8:	e30b0bca 	movw	r0, #48074	; 0xbbca
    5cdc:	e58d0000 	str	r0, [sp]
    5ce0:	e320f000 	nop	{0}
    5ce4:	e59a0038 	ldr	r0, [sl, #56]	; 0x38
    5ce8:	e58d000c 	str	r0, [sp, #12]
    5cec:	e59d0000 	ldr	r0, [sp]
    5cf0:	e59d100c 	ldr	r1, [sp, #12]
    5cf4:	e1100001 	tst	r0, r1
    5cf8:	0a000000 	beq	0x5d00
    5cfc:	ea000002 	b	0x5d0c
    5d00:	e0560004 	subs	r0, r6, r4
    5d04:	e0d70005 	sbcs	r0, r7, r5
    5d08:	3afffff5 	bcc	0x5ce4
    5d0c:	e320f000 	nop	{0}
    5d10:	e0560004 	subs	r0, r6, r4
    5d14:	e0d70005 	sbcs	r0, r7, r5
    5d18:	2a000003 	bcs	0x5d2c
    5d1c:	e30b0bc2 	movw	r0, #48066	; 0xbbc2
    5d20:	e59d100c 	ldr	r1, [sp, #12]
    5d24:	e1100001 	tst	r0, r1
    5d28:	0a000002 	beq	0x5d38
    5d2c:	e3e00002 	mvn	r0, #2
    5d30:	e58d0010 	str	r0, [sp, #16]
    5d34:	ea00000f 	b	0x5d78
    5d38:	e320f000 	nop	{0}
    5d3c:	e59b0004 	ldr	r0, [fp, #4]
    5d40:	e3100002 	tst	r0, #2
    5d44:	0a000008 	beq	0x5d6c
    5d48:	e59a002c 	ldr	r0, [sl, #44]	; 0x2c
    5d4c:	e58b000c 	str	r0, [fp, #12]
    5d50:	e59a0028 	ldr	r0, [sl, #40]	; 0x28
    5d54:	e58b0010 	str	r0, [fp, #16]
    5d58:	e59a0024 	ldr	r0, [sl, #36]	; 0x24
    5d5c:	e58b0014 	str	r0, [fp, #20]
    5d60:	e59a0020 	ldr	r0, [sl, #32]
    5d64:	e58b0018 	str	r0, [fp, #24]
    5d68:	ea000001 	b	0x5d74
    5d6c:	e59a0020 	ldr	r0, [sl, #32]
    5d70:	e58b000c 	str	r0, [fp, #12]
    5d74:	e320f000 	nop	{0}
    5d78:	e59d0024 	ldr	r0, [sp, #36]	; 0x24
    5d7c:	e3500000 	cmp	r0, #0
    5d80:	0a00000c 	beq	0x5db8
    5d84:	e59d0008 	ldr	r0, [sp, #8]
    5d88:	e3500000 	cmp	r0, #0
    5d8c:	0a000009 	beq	0x5db8
    5d90:	e59a0088 	ldr	r0, [sl, #136]	; 0x88
    5d94:	e58d000c 	str	r0, [sp, #12]
    5d98:	e59d000c 	ldr	r0, [sp, #12]
    5d9c:	e58a0088 	str	r0, [sl, #136]	; 0x88
    5da0:	e3a00000 	mov	r0, #0
    5da4:	e58a008c 	str	r0, [sl, #140]	; 0x8c
    5da8:	e58a0080 	str	r0, [sl, #128]	; 0x80
    5dac:	e59a0000 	ldr	r0, [sl]
    5db0:	e3c00020 	bic	r0, r0, #32
    5db4:	e58a0000 	str	r0, [sl]
    5db8:	e59d0010 	ldr	r0, [sp, #16]
    5dbc:	e3500000 	cmp	r0, #0
    5dc0:	0a000003 	beq	0x5dd4
    5dc4:	e3a00007 	mov	r0, #7
    5dc8:	e58a0000 	str	r0, [sl]
    5dcc:	e59d001c 	ldr	r0, [sp, #28]
    5dd0:	ebfffd8c 	bl	0x5408
    5dd4:	e3e00000 	mvn	r0, #0
    5dd8:	e58a0038 	str	r0, [sl, #56]	; 0x38
    5ddc:	e59d0010 	ldr	r0, [sp, #16]
    5de0:	eafffec6 	b	0x5900
    5de4:	e92d4070 	push	{r4, r5, r6, lr}
    5de8:	e1a06000 	mov	r6, r0
    5dec:	e1a04001 	mov	r4, r1
    5df0:	e5945000 	ldr	r5, [r4]
    5df4:	e1a01005 	mov	r1, r5
    5df8:	e1a00006 	mov	r0, r6
    5dfc:	ebfffcfd 	bl	0x51f8
    5e00:	e5950000 	ldr	r0, [r5]
    5e04:	e5900000 	ldr	r0, [r0]
    5e08:	e3800007 	orr	r0, r0, #7
    5e0c:	e5951000 	ldr	r1, [r5]
    5e10:	e5810000 	str	r0, [r1]
    5e14:	e3000911 	movw	r0, #2321	; 0x911
    5e18:	e5840024 	str	r0, [r4, #36]	; 0x24
    5e1c:	e3a008fe 	mov	r0, #16646144	; 0xfe0000
    5e20:	e5840004 	str	r0, [r4, #4]
    5e24:	e59f007c 	ldr	r0, [pc, #124]	; 0x5ea8
    5e28:	e584000c 	str	r0, [r4, #12]
    5e2c:	e59f009c 	ldr	r0, [pc, #156]	; 0x5ed0
    5e30:	e5840010 	str	r0, [r4, #16]
    5e34:	e3a00000 	mov	r0, #0
    5e38:	e8bd8070 	pop	{r4, r5, r6, pc}
    5e3c:	e92d4070 	push	{r4, r5, r6, lr}
    5e40:	e1a05000 	mov	r5, r0
    5e44:	e1a04001 	mov	r4, r1
    5e48:	e5946000 	ldr	r6, [r4]
    5e4c:	e1a01006 	mov	r1, r6
    5e50:	e1a00005 	mov	r0, r5
    5e54:	ebfffd35 	bl	0x5330
    5e58:	e3a00000 	mov	r0, #0
    5e5c:	e8bd8070 	pop	{r4, r5, r6, pc}

    5e60:	08001c00
    5e64:	060005a0
    5e68:	01c13000
    5e6c:	33777777
    5e70:	06000848
    5e74:	33333333
    5e78:	55555000
    5e7c:	06000418
    5e80:	01c11000
    5e84:	016e3600
    5e88:	00222222
    5e8c:	060008b4
    5e90:	06000410
    5e94:	01c0f000
    5e98:	77777777
    5e9c:	55555555
    5ea0:	00777777
    5ea4:	80202000
    5ea8:	00061a80
    5eac:	0002000e
    5eb0:	005b8d80
    5eb4:	00070008
    5eb8:	000fffff
    5ebc:	20070008
    5ec0:	00249f00
    5ec4:	015be680
    5ec8:	000afc80
    5ecc:	00b71b00
    5ed0:	03197500

    5ed4:	e92d4070 	push	{r4, r5, r6, lr}
    5ed8:	e24dd020 	sub	sp, sp, #32
    5edc:	e1a06000 	mov	r6, r0
    5ee0:	e1a04001 	mov	r4, r1
    5ee4:	e3a0000d 	mov	r0, #13
    5ee8:	e58d0000 	str	r0, [sp]
    5eec:	e3a00015 	mov	r0, #21
    5ef0:	e58d0004 	str	r0, [sp, #4]
    5ef4:	e5960034 	ldr	r0, [r6, #52]	; 0x34
    5ef8:	e1a00800 	lsl	r0, r0, #16
    5efc:	e58d0008 	str	r0, [sp, #8]
    5f00:	e3a00000 	mov	r0, #0
    5f04:	e58d001c 	str	r0, [sp, #28]
    5f08:	e320f000 	nop	{0}
    5f0c:	e3a02000 	mov	r2, #0
    5f10:	e1a0100d 	mov	r1, sp
    5f14:	e1a00006 	mov	r0, r6
    5f18:	ebfffe64 	bl	0x58b0
    5f1c:	e1a05000 	mov	r5, r0
    5f20:	e3550000 	cmp	r5, #0
    5f24:	0a000002 	beq	0x5f34
    5f28:	e1a00005 	mov	r0, r5
    5f2c:	e28dd020 	add	sp, sp, #32
    5f30:	e8bd8070 	pop	{r4, r5, r6, pc}
    5f34:	e59d000c 	ldr	r0, [sp, #12]
    5f38:	e3100c01 	tst	r0, #256	; 0x100
    5f3c:	0a000000 	beq	0x5f44
    5f40:	ea00000b 	b	0x5f74
    5f44:	e3a00001 	mov	r0, #1
    5f48:	e3a01000 	mov	r1, #0
    5f4c:	ebfffc98 	bl	0x51b4
    5f50:	e59d000c 	ldr	r0, [sp, #12]
    5f54:	e59f1e3c 	ldr	r1, [pc, #3644]	; 0x6d98
    5f58:	e1100001 	tst	r0, r1
    5f5c:	0a000001 	beq	0x5f68
    5f60:	e3e00011 	mvn	r0, #17
    5f64:	eafffff0 	b	0x5f2c
    5f68:	e1b00004 	movs	r0, r4
    5f6c:	e2444001 	sub	r4, r4, #1
    5f70:	1affffe5 	bne	0x5f0c
    5f74:	e320f000 	nop	{0}
    5f78:	e3540000 	cmp	r4, #0
    5f7c:	1a000001 	bne	0x5f88
    5f80:	e3e00012 	mvn	r0, #18
    5f84:	eaffffe8 	b	0x5f2c
    5f88:	e3a00000 	mov	r0, #0
    5f8c:	eaffffe6 	b	0x5f2c
    5f90:	e92d4030 	push	{r4, r5, lr}
    5f94:	e24dd024 	sub	sp, sp, #36	; 0x24
    5f98:	e1a04000 	mov	r4, r0
    5f9c:	e3a05000 	mov	r5, #0
    5fa0:	e3a00000 	mov	r0, #0
    5fa4:	e58d0004 	str	r0, [sp, #4]
    5fa8:	e58d000c 	str	r0, [sp, #12]
    5fac:	e58d0008 	str	r0, [sp, #8]
    5fb0:	e58d0020 	str	r0, [sp, #32]
    5fb4:	e3a02000 	mov	r2, #0
    5fb8:	e28d1004 	add	r1, sp, #4
    5fbc:	e1a00004 	mov	r0, r4
    5fc0:	ebfffe3a 	bl	0x58b0
    5fc4:	e1a05000 	mov	r5, r0
    5fc8:	e3a00001 	mov	r0, #1
    5fcc:	e3a01000 	mov	r1, #0
    5fd0:	ebfffc77 	bl	0x51b4
    5fd4:	e1a00005 	mov	r0, r5
    5fd8:	e28dd024 	add	sp, sp, #36	; 0x24
    5fdc:	e8bd8030 	pop	{r4, r5, pc}
    5fe0:	e92d4030 	push	{r4, r5, lr}
    5fe4:	e24dd024 	sub	sp, sp, #36	; 0x24
    5fe8:	e1a04000 	mov	r4, r0
    5fec:	e3a05000 	mov	r5, #0
    5ff0:	e3a00000 	mov	r0, #0
    5ff4:	e58d0004 	str	r0, [sp, #4]
    5ff8:	e59f0d9c 	ldr	r0, [pc, #3484]	; 0x6d9c
    5ffc:	e58d000c 	str	r0, [sp, #12]
    6000:	e3a00000 	mov	r0, #0
    6004:	e58d0008 	str	r0, [sp, #8]
    6008:	e58d0020 	str	r0, [sp, #32]
    600c:	e3a02000 	mov	r2, #0
    6010:	e28d1004 	add	r1, sp, #4
    6014:	e1a00004 	mov	r0, r4
    6018:	ebfffe24 	bl	0x58b0
    601c:	e1a05000 	mov	r5, r0
    6020:	e1a00005 	mov	r0, r5
    6024:	e28dd024 	add	sp, sp, #36	; 0x24
    6028:	e8bd8030 	pop	{r4, r5, pc}
    602c:	e92d4030 	push	{r4, r5, lr}
    6030:	e24dd024 	sub	sp, sp, #36	; 0x24
    6034:	e1a04000 	mov	r4, r0
    6038:	e3a05000 	mov	r5, #0
    603c:	e3a00000 	mov	r0, #0
    6040:	e58d0004 	str	r0, [sp, #4]
    6044:	e59f0d54 	ldr	r0, [pc, #3412]	; 0x6da0
    6048:	e58d000c 	str	r0, [sp, #12]
    604c:	e3a00000 	mov	r0, #0
    6050:	e58d0008 	str	r0, [sp, #8]
    6054:	e58d0020 	str	r0, [sp, #32]
    6058:	e3a02000 	mov	r2, #0
    605c:	e28d1004 	add	r1, sp, #4
    6060:	e1a00004 	mov	r0, r4
    6064:	ebfffe11 	bl	0x58b0
    6068:	e1a05000 	mov	r5, r0
    606c:	e3a00001 	mov	r0, #1
    6070:	e3a01000 	mov	r1, #0
    6074:	ebfffc4e 	bl	0x51b4
    6078:	e1a00005 	mov	r0, r5
    607c:	e28dd024 	add	sp, sp, #36	; 0x24
    6080:	e8bd8030 	pop	{r4, r5, pc}
    6084:	e92d4070 	push	{r4, r5, r6, lr}
    6088:	e24dd020 	sub	sp, sp, #32
    608c:	e1a04000 	mov	r4, r0
    6090:	e30063e8 	movw	r6, #1000	; 0x3e8
    6094:	e320f000 	nop	{0}
    6098:	e3a00037 	mov	r0, #55	; 0x37
    609c:	e58d0000 	str	r0, [sp]
    60a0:	e3a00015 	mov	r0, #21
    60a4:	e58d0004 	str	r0, [sp, #4]
    60a8:	e3a00000 	mov	r0, #0
    60ac:	e58d0008 	str	r0, [sp, #8]
    60b0:	e58d001c 	str	r0, [sp, #28]
    60b4:	e3a02000 	mov	r2, #0
    60b8:	e1a0100d 	mov	r1, sp
    60bc:	e1a00004 	mov	r0, r4
    60c0:	ebfffdfa 	bl	0x58b0
    60c4:	e1a05000 	mov	r5, r0
    60c8:	e3550000 	cmp	r5, #0
    60cc:	0a000002 	beq	0x60dc
    60d0:	e1a00005 	mov	r0, r5
    60d4:	e28dd020 	add	sp, sp, #32
    60d8:	e8bd8070 	pop	{r4, r5, r6, pc}
    60dc:	e3a00029 	mov	r0, #41	; 0x29
    60e0:	e58d0000 	str	r0, [sp]
    60e4:	e3a00001 	mov	r0, #1
    60e8:	e58d0004 	str	r0, [sp, #4]
    60ec:	e5940004 	ldr	r0, [r4, #4]
    60f0:	e59f1cac 	ldr	r1, [pc, #3244]	; 0x6da4
    60f4:	e0000001 	and	r0, r0, r1
    60f8:	e58d0008 	str	r0, [sp, #8]
    60fc:	e5940008 	ldr	r0, [r4, #8]
    6100:	e2401802 	sub	r1, r0, #131072	; 0x20000
    6104:	e2511020 	subs	r1, r1, #32
    6108:	1a000002 	bne	0x6118
    610c:	e59d0008 	ldr	r0, [sp, #8]
    6110:	e3800101 	orr	r0, r0, #1073741824	; 0x40000000
    6114:	e58d0008 	str	r0, [sp, #8]
    6118:	e3a02000 	mov	r2, #0
    611c:	e1a0100d 	mov	r1, sp
    6120:	e1a00004 	mov	r0, r4
    6124:	ebfffde1 	bl	0x58b0
    6128:	e1a05000 	mov	r5, r0
    612c:	e3550000 	cmp	r5, #0
    6130:	0a000001 	beq	0x613c
    6134:	e1a00005 	mov	r0, r5
    6138:	eaffffe5 	b	0x60d4
    613c:	e3a00001 	mov	r0, #1
    6140:	e3a01000 	mov	r1, #0
    6144:	ebfffc1a 	bl	0x51b4
    6148:	e59d000c 	ldr	r0, [sp, #12]
    614c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    6150:	1a000002 	bne	0x6160
    6154:	e1b00006 	movs	r0, r6
    6158:	e2466001 	sub	r6, r6, #1
    615c:	1affffcd 	bne	0x6098
    6160:	e3560000 	cmp	r6, #0
    6164:	ca000001 	bgt	0x6170
    6168:	e3e00010 	mvn	r0, #16
    616c:	eaffffd8 	b	0x60d4
    6170:	e5940008 	ldr	r0, [r4, #8]
    6174:	e2401802 	sub	r1, r0, #131072	; 0x20000
    6178:	e2511020 	subs	r1, r1, #32
    617c:	0a000001 	beq	0x6188
    6180:	e59f0c20 	ldr	r0, [pc, #3104]	; 0x6da8
    6184:	e5840008 	str	r0, [r4, #8]
    6188:	e59d000c 	ldr	r0, [sp, #12]
    618c:	e5840028 	str	r0, [r4, #40]	; 0x28
    6190:	e5940028 	ldr	r0, [r4, #40]	; 0x28
    6194:	e7e00f50 	ubfx	r0, r0, #30, #1
    6198:	e5840014 	str	r0, [r4, #20]
    619c:	e3a00000 	mov	r0, #0
    61a0:	e5840034 	str	r0, [r4, #52]	; 0x34
    61a4:	e320f000 	nop	{0}
    61a8:	eaffffc9 	b	0x60d4
    61ac:	e92d4070 	push	{r4, r5, r6, lr}
    61b0:	e24dd020 	sub	sp, sp, #32
    61b4:	e1a04000 	mov	r4, r0
    61b8:	e30063e8 	movw	r6, #1000	; 0x3e8
    61bc:	e1a00004 	mov	r0, r4
    61c0:	ebffff72 	bl	0x5f90
    61c4:	e3a00001 	mov	r0, #1
    61c8:	e58d0000 	str	r0, [sp]
    61cc:	e58d0004 	str	r0, [sp, #4]
    61d0:	e3a00000 	mov	r0, #0
    61d4:	e58d0008 	str	r0, [sp, #8]
    61d8:	e58d001c 	str	r0, [sp, #28]
    61dc:	e3a02000 	mov	r2, #0
    61e0:	e1a0100d 	mov	r1, sp
    61e4:	e1a00004 	mov	r0, r4
    61e8:	ebfffdb0 	bl	0x58b0
    61ec:	e1a05000 	mov	r5, r0
    61f0:	e3550000 	cmp	r5, #0
    61f4:	0a000002 	beq	0x6204
    61f8:	e1a00005 	mov	r0, r5
    61fc:	e28dd020 	add	sp, sp, #32
    6200:	e8bd8070 	pop	{r4, r5, r6, pc}
    6204:	e3a00001 	mov	r0, #1
    6208:	e3a01000 	mov	r1, #0
    620c:	ebfffbe8 	bl	0x51b4
    6210:	e320f000 	nop	{0}
    6214:	e3a00001 	mov	r0, #1
    6218:	e58d0000 	str	r0, [sp]
    621c:	e58d0004 	str	r0, [sp, #4]
    6220:	e5940004 	ldr	r0, [r4, #4]
    6224:	e59d100c 	ldr	r1, [sp, #12]
    6228:	e3c114ff 	bic	r1, r1, #-16777216	; 0xff000000
    622c:	e3c1107f 	bic	r1, r1, #127	; 0x7f
    6230:	e0000001 	and	r0, r0, r1
    6234:	e59d100c 	ldr	r1, [sp, #12]
    6238:	e2011206 	and	r1, r1, #1610612736	; 0x60000000
    623c:	e1800001 	orr	r0, r0, r1
    6240:	e58d0008 	str	r0, [sp, #8]
    6244:	e5940024 	ldr	r0, [r4, #36]	; 0x24
    6248:	e3100b02 	tst	r0, #2048	; 0x800
    624c:	0a000002 	beq	0x625c
    6250:	e59d0008 	ldr	r0, [sp, #8]
    6254:	e3800101 	orr	r0, r0, #1073741824	; 0x40000000
    6258:	e58d0008 	str	r0, [sp, #8]
    625c:	e3a00000 	mov	r0, #0
    6260:	e58d001c 	str	r0, [sp, #28]
    6264:	e3a02000 	mov	r2, #0
    6268:	e1a0100d 	mov	r1, sp
    626c:	e1a00004 	mov	r0, r4
    6270:	ebfffd8e 	bl	0x58b0
    6274:	e1a05000 	mov	r5, r0
    6278:	e3550000 	cmp	r5, #0
    627c:	0a000001 	beq	0x6288
    6280:	e1a00005 	mov	r0, r5
    6284:	eaffffdc 	b	0x61fc
    6288:	e3a00001 	mov	r0, #1
    628c:	e3a01000 	mov	r1, #0
    6290:	ebfffbc7 	bl	0x51b4
    6294:	e59d000c 	ldr	r0, [sp, #12]
    6298:	e3100102 	tst	r0, #-2147483648	; 0x80000000
    629c:	1a000002 	bne	0x62ac
    62a0:	e1b00006 	movs	r0, r6
    62a4:	e2466001 	sub	r6, r6, #1
    62a8:	1affffd9 	bne	0x6214
    62ac:	e3560000 	cmp	r6, #0
    62b0:	ca000001 	bgt	0x62bc
    62b4:	e3e00010 	mvn	r0, #16
    62b8:	eaffffcf 	b	0x61fc
    62bc:	e3a00801 	mov	r0, #65536	; 0x10000
    62c0:	e5840008 	str	r0, [r4, #8]
    62c4:	e59d000c 	ldr	r0, [sp, #12]
    62c8:	e5840028 	str	r0, [r4, #40]	; 0x28
    62cc:	e5940028 	ldr	r0, [r4, #40]	; 0x28
    62d0:	e7e00f50 	ubfx	r0, r0, #30, #1
    62d4:	e5840014 	str	r0, [r4, #20]
    62d8:	e3a00001 	mov	r0, #1
    62dc:	e5840034 	str	r0, [r4, #52]	; 0x34
    62e0:	e3a00000 	mov	r0, #0
    62e4:	eaffffc4 	b	0x61fc
    62e8:	e92d4070 	push	{r4, r5, r6, lr}
    62ec:	e24dd030 	sub	sp, sp, #48	; 0x30
    62f0:	e1a05000 	mov	r5, r0
    62f4:	e1a04001 	mov	r4, r1
    62f8:	e3a00008 	mov	r0, #8
    62fc:	e58d0010 	str	r0, [sp, #16]
    6300:	e3a00015 	mov	r0, #21
    6304:	e58d0014 	str	r0, [sp, #20]
    6308:	e3a00000 	mov	r0, #0
    630c:	e58d0018 	str	r0, [sp, #24]
    6310:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    6314:	e58d4000 	str	r4, [sp]
    6318:	e3a00001 	mov	r0, #1
    631c:	e58d0008 	str	r0, [sp, #8]
    6320:	e3000200 	movw	r0, #512	; 0x200
    6324:	e58d000c 	str	r0, [sp, #12]
    6328:	e3a00001 	mov	r0, #1
    632c:	e58d0004 	str	r0, [sp, #4]
    6330:	e1a0200d 	mov	r2, sp
    6334:	e28d1010 	add	r1, sp, #16
    6338:	e1a00005 	mov	r0, r5
    633c:	ebfffd5b 	bl	0x58b0
    6340:	e1a06000 	mov	r6, r0
    6344:	e1a00006 	mov	r0, r6
    6348:	e28dd030 	add	sp, sp, #48	; 0x30
    634c:	e8bd8070 	pop	{r4, r5, r6, pc}
    6350:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    6354:	e24dd024 	sub	sp, sp, #36	; 0x24
    6358:	e1a06000 	mov	r6, r0
    635c:	e1a09001 	mov	r9, r1
    6360:	e1a04002 	mov	r4, r2
    6364:	e1a05003 	mov	r5, r3
    6368:	e30073e8 	movw	r7, #1000	; 0x3e8
    636c:	e3a00006 	mov	r0, #6
    6370:	e58d0004 	str	r0, [sp, #4]
    6374:	e3a0001d 	mov	r0, #29
    6378:	e58d0008 	str	r0, [sp, #8]
    637c:	e3a00403 	mov	r0, #50331648	; 0x3000000
    6380:	e1800804 	orr	r0, r0, r4, lsl #16
    6384:	e1800405 	orr	r0, r0, r5, lsl #8
    6388:	e58d000c 	str	r0, [sp, #12]
    638c:	e3a00000 	mov	r0, #0
    6390:	e58d0020 	str	r0, [sp, #32]
    6394:	e3a02000 	mov	r2, #0
    6398:	e28d1004 	add	r1, sp, #4
    639c:	e1a00006 	mov	r0, r6
    63a0:	ebfffd42 	bl	0x58b0
    63a4:	e1a08000 	mov	r8, r0
    63a8:	e1a01007 	mov	r1, r7
    63ac:	e1a00006 	mov	r0, r6
    63b0:	ebfffec7 	bl	0x5ed4
    63b4:	e1a00008 	mov	r0, r8
    63b8:	e28dd024 	add	sp, sp, #36	; 0x24
    63bc:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
    63c0:	e1a02000 	mov	r2, r0
    63c4:	e3a00000 	mov	r0, #0
    63c8:	e5820020 	str	r0, [r2, #32]
    63cc:	e5920008 	ldr	r0, [r2, #8]
    63d0:	e59f39d4 	ldr	r3, [pc, #2516]	; 0x6dac
    63d4:	e1500003 	cmp	r0, r3
    63d8:	2a000001 	bcs	0x63e4
    63dc:	e3a00000 	mov	r0, #0
    63e0:	e12fff1e 	bx	lr
    63e4:	e5920020 	ldr	r0, [r2, #32]
    63e8:	e3800c01 	orr	r0, r0, #256	; 0x100
    63ec:	e5820020 	str	r0, [r2, #32]
    63f0:	e5920020 	ldr	r0, [r2, #32]
    63f4:	e3800001 	orr	r0, r0, #1
    63f8:	e5820020 	str	r0, [r2, #32]
    63fc:	e3a00000 	mov	r0, #0
    6400:	eafffff6 	b	0x63e0
    6404:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    6408:	e24dd030 	sub	sp, sp, #48	; 0x30
    640c:	e1a08000 	mov	r8, r0
    6410:	e1a05001 	mov	r5, r1
    6414:	e1a04002 	mov	r4, r2
    6418:	e1a06003 	mov	r6, r3
    641c:	e59d7048 	ldr	r7, [sp, #72]	; 0x48
    6420:	e3a00006 	mov	r0, #6
    6424:	e58d0010 	str	r0, [sp, #16]
    6428:	e3a00015 	mov	r0, #21
    642c:	e58d0014 	str	r0, [sp, #20]
    6430:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
    6434:	e1800f85 	orr	r0, r0, r5, lsl #31
    6438:	e58d0018 	str	r0, [sp, #24]
    643c:	e1a01104 	lsl	r1, r4, #2
    6440:	e3a0200f 	mov	r2, #15
    6444:	e59d0018 	ldr	r0, [sp, #24]
    6448:	e1c00112 	bic	r0, r0, r2, lsl r1
    644c:	e58d0018 	str	r0, [sp, #24]
    6450:	e1a01104 	lsl	r1, r4, #2
    6454:	e59d0018 	ldr	r0, [sp, #24]
    6458:	e1800116 	orr	r0, r0, r6, lsl r1
    645c:	e58d0018 	str	r0, [sp, #24]
    6460:	e3a00000 	mov	r0, #0
    6464:	e58d002c 	str	r0, [sp, #44]	; 0x2c
    6468:	e58d7000 	str	r7, [sp]
    646c:	e3a00040 	mov	r0, #64	; 0x40
    6470:	e58d000c 	str	r0, [sp, #12]
    6474:	e3a00001 	mov	r0, #1
    6478:	e58d0008 	str	r0, [sp, #8]
    647c:	e58d0004 	str	r0, [sp, #4]
    6480:	e1a0200d 	mov	r2, sp
    6484:	e28d1010 	add	r1, sp, #16
    6488:	e1a00008 	mov	r0, r8
    648c:	ebfffd07 	bl	0x58b0
    6490:	e28dd030 	add	sp, sp, #48	; 0x30
    6494:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    6498:	e92d4070 	push	{r4, r5, r6, lr}
    649c:	e24dd038 	sub	sp, sp, #56	; 0x38
    64a0:	e1a04000 	mov	r4, r0
    64a4:	e3a00000 	mov	r0, #0
    64a8:	e5840020 	str	r0, [r4, #32]
    64ac:	e3a00037 	mov	r0, #55	; 0x37
    64b0:	e58d0018 	str	r0, [sp, #24]
    64b4:	e3a00015 	mov	r0, #21
    64b8:	e58d001c 	str	r0, [sp, #28]
    64bc:	e5940034 	ldr	r0, [r4, #52]	; 0x34
    64c0:	e1a00800 	lsl	r0, r0, #16
    64c4:	e58d0020 	str	r0, [sp, #32]
    64c8:	e3a00000 	mov	r0, #0
    64cc:	e58d0034 	str	r0, [sp, #52]	; 0x34
    64d0:	e3a02000 	mov	r2, #0
    64d4:	e28d1018 	add	r1, sp, #24
    64d8:	e1a00004 	mov	r0, r4
    64dc:	ebfffcf3 	bl	0x58b0
    64e0:	e1a05000 	mov	r5, r0
    64e4:	e3550000 	cmp	r5, #0
    64e8:	0a000002 	beq	0x64f8
    64ec:	e1a00005 	mov	r0, r5
    64f0:	e28dd038 	add	sp, sp, #56	; 0x38
    64f4:	e8bd8070 	pop	{r4, r5, r6, pc}
    64f8:	e3a00033 	mov	r0, #51	; 0x33
    64fc:	e58d0018 	str	r0, [sp, #24]
    6500:	e3a00015 	mov	r0, #21
    6504:	e58d001c 	str	r0, [sp, #28]
    6508:	e3a00000 	mov	r0, #0
    650c:	e58d0020 	str	r0, [sp, #32]
    6510:	e58d0034 	str	r0, [sp, #52]	; 0x34
    6514:	e3a06003 	mov	r6, #3
    6518:	e320f000 	nop	{0}
    651c:	e28d0010 	add	r0, sp, #16
    6520:	e58d0000 	str	r0, [sp]
    6524:	e3a00008 	mov	r0, #8
    6528:	e58d000c 	str	r0, [sp, #12]
    652c:	e3a00001 	mov	r0, #1
    6530:	e58d0008 	str	r0, [sp, #8]
    6534:	e58d0004 	str	r0, [sp, #4]
    6538:	e1a0200d 	mov	r2, sp
    653c:	e28d1018 	add	r1, sp, #24
    6540:	e1a00004 	mov	r0, r4
    6544:	ebfffcd9 	bl	0x58b0
    6548:	e1a05000 	mov	r5, r0
    654c:	e3550000 	cmp	r5, #0
    6550:	0a000005 	beq	0x656c
    6554:	e1b00006 	movs	r0, r6
    6558:	e2466001 	sub	r6, r6, #1
    655c:	0a000000 	beq	0x6564
    6560:	eaffffed 	b	0x651c
    6564:	e1a00005 	mov	r0, r5
    6568:	eaffffe0 	b	0x64f0
    656c:	e30f2f00 	movw	r2, #65280	; 0xff00
    6570:	e59d1010 	ldr	r1, [sp, #16]
    6574:	e0021421 	and	r1, r2, r1, lsr #8
    6578:	e59d0010 	ldr	r0, [sp, #16]
    657c:	e1810c20 	orr	r0, r1, r0, lsr #24
    6580:	e3a028ff 	mov	r2, #16711680	; 0xff0000
    6584:	e59d1010 	ldr	r1, [sp, #16]
    6588:	e0021401 	and	r1, r2, r1, lsl #8
    658c:	e1800001 	orr	r0, r0, r1
    6590:	e3a024ff 	mov	r2, #-16777216	; 0xff000000
    6594:	e59d1010 	ldr	r1, [sp, #16]
    6598:	e0021c01 	and	r1, r2, r1, lsl #24
    659c:	e1800001 	orr	r0, r0, r1
    65a0:	e584002c 	str	r0, [r4, #44]	; 0x2c
    65a4:	e30f2f00 	movw	r2, #65280	; 0xff00
    65a8:	e59d1014 	ldr	r1, [sp, #20]
    65ac:	e0021421 	and	r1, r2, r1, lsr #8
    65b0:	e59d0014 	ldr	r0, [sp, #20]
    65b4:	e1810c20 	orr	r0, r1, r0, lsr #24
    65b8:	e3a028ff 	mov	r2, #16711680	; 0xff0000
    65bc:	e59d1014 	ldr	r1, [sp, #20]
    65c0:	e0021401 	and	r1, r2, r1, lsl #8
    65c4:	e1800001 	orr	r0, r0, r1
    65c8:	e3a024ff 	mov	r2, #-16777216	; 0xff000000
    65cc:	e59d1014 	ldr	r1, [sp, #20]
    65d0:	e0021c01 	and	r1, r2, r1, lsl #24
    65d4:	e1800001 	orr	r0, r0, r1
    65d8:	e5840030 	str	r0, [r4, #48]	; 0x30
    65dc:	e594002c 	ldr	r0, [r4, #44]	; 0x2c
    65e0:	e7e30c50 	ubfx	r0, r0, #24, #4
    65e4:	e3500000 	cmp	r0, #0
    65e8:	0a000004 	beq	0x6600
    65ec:	e3500001 	cmp	r0, #1
    65f0:	0a000006 	beq	0x6610
    65f4:	e3500002 	cmp	r0, #2
    65f8:	1a00000c 	bne	0x6630
    65fc:	ea000007 	b	0x6620
    6600:	e320f000 	nop	{0}
    6604:	e59f079c 	ldr	r0, [pc, #1948]	; 0x6da8
    6608:	e5840008 	str	r0, [r4, #8]
    660c:	ea00000b 	b	0x6640
    6610:	e320f000 	nop	{0}
    6614:	e59f0794 	ldr	r0, [pc, #1940]	; 0x6db0
    6618:	e5840008 	str	r0, [r4, #8]
    661c:	ea000007 	b	0x6640
    6620:	e320f000 	nop	{0}
    6624:	e59f0788 	ldr	r0, [pc, #1928]	; 0x6db4
    6628:	e5840008 	str	r0, [r4, #8]
    662c:	ea000003 	b	0x6640
    6630:	e320f000 	nop	{0}
    6634:	e59f076c 	ldr	r0, [pc, #1900]	; 0x6da8
    6638:	e5840008 	str	r0, [r4, #8]
    663c:	e320f000 	nop	{0}
    6640:	e320f000 	nop	{0}
    6644:	e594002c 	ldr	r0, [r4, #44]	; 0x2c
    6648:	e3100701 	tst	r0, #262144	; 0x40000
    664c:	0a000002 	beq	0x665c
    6650:	e5940020 	ldr	r0, [r4, #32]
    6654:	e3800c01 	orr	r0, r0, #256	; 0x100
    6658:	e5840020 	str	r0, [r4, #32]
    665c:	e3a00000 	mov	r0, #0
    6660:	eaffffa2 	b	0x64f0
    6664:	e92d4070 	push	{r4, r5, r6, lr}
    6668:	e1a04000 	mov	r4, r0
    666c:	e1a05001 	mov	r5, r1
    6670:	e5940010 	ldr	r0, [r4, #16]
    6674:	e1500005 	cmp	r0, r5
    6678:	2a000000 	bcs	0x6680
    667c:	e5945010 	ldr	r5, [r4, #16]
    6680:	e594000c 	ldr	r0, [r4, #12]
    6684:	e1500005 	cmp	r0, r5
    6688:	9a000000 	bls	0x6690
    668c:	e594500c 	ldr	r5, [r4, #12]
    6690:	e584501c 	str	r5, [r4, #28]
    6694:	e1a00004 	mov	r0, r4
    6698:	ebfffbc3 	bl	0x55ac
    669c:	e8bd8070 	pop	{r4, r5, r6, pc}
    66a0:	e92d4070 	push	{r4, r5, r6, lr}
    66a4:	e1a04000 	mov	r4, r0
    66a8:	e1a05001 	mov	r5, r1
    66ac:	e5845018 	str	r5, [r4, #24]
    66b0:	e1a00004 	mov	r0, r4
    66b4:	ebfffbbc 	bl	0x55ac
    66b8:	e8bd8070 	pop	{r4, r5, r6, pc}
    66bc:	e92d4070 	push	{r4, r5, r6, lr}
    66c0:	e24dde22 	sub	sp, sp, #544	; 0x220
    66c4:	e1a04000 	mov	r4, r0
    66c8:	e30063e8 	movw	r6, #1000	; 0x3e8
    66cc:	e3a00002 	mov	r0, #2
    66d0:	e58d0200 	str	r0, [sp, #512]	; 0x200
    66d4:	e3a00007 	mov	r0, #7
    66d8:	e58d0204 	str	r0, [sp, #516]	; 0x204
    66dc:	e3a00000 	mov	r0, #0
    66e0:	e58d0208 	str	r0, [sp, #520]	; 0x208
    66e4:	e58d021c 	str	r0, [sp, #540]	; 0x21c
    66e8:	e3a02000 	mov	r2, #0
    66ec:	e28d1c02 	add	r1, sp, #512	; 0x200
    66f0:	e1a00004 	mov	r0, r4
    66f4:	ebfffc6d 	bl	0x58b0
    66f8:	e1a05000 	mov	r5, r0
    66fc:	e3550000 	cmp	r5, #0
    6700:	0a000002 	beq	0x6710
    6704:	e1a00005 	mov	r0, r5
    6708:	e28dde22 	add	sp, sp, #544	; 0x220
    670c:	e8bd8070 	pop	{r4, r5, r6, pc}
    6710:	e3a00003 	mov	r0, #3
    6714:	e58d0200 	str	r0, [sp, #512]	; 0x200
    6718:	e5940034 	ldr	r0, [r4, #52]	; 0x34
    671c:	e1a00800 	lsl	r0, r0, #16
    6720:	e58d0208 	str	r0, [sp, #520]	; 0x208
    6724:	e3a00015 	mov	r0, #21
    6728:	e58d0204 	str	r0, [sp, #516]	; 0x204
    672c:	e3a00000 	mov	r0, #0
    6730:	e58d021c 	str	r0, [sp, #540]	; 0x21c
    6734:	e3a02000 	mov	r2, #0
    6738:	e28d1c02 	add	r1, sp, #512	; 0x200
    673c:	e1a00004 	mov	r0, r4
    6740:	ebfffc5a 	bl	0x58b0
    6744:	e1a05000 	mov	r5, r0
    6748:	e3550000 	cmp	r5, #0
    674c:	0a000001 	beq	0x6758
    6750:	e1a00005 	mov	r0, r5
    6754:	eaffffeb 	b	0x6708
    6758:	e5940008 	ldr	r0, [r4, #8]
    675c:	e3100802 	tst	r0, #131072	; 0x20000
    6760:	0a000003 	beq	0x6774
    6764:	e30f1fff 	movw	r1, #65535	; 0xffff
    6768:	e59d020c 	ldr	r0, [sp, #524]	; 0x20c
    676c:	e0010820 	and	r0, r1, r0, lsr #16
    6770:	e5840034 	str	r0, [r4, #52]	; 0x34
    6774:	e59f163c 	ldr	r1, [pc, #1596]	; 0x6db8
    6778:	e1a00004 	mov	r0, r4
    677c:	ebffffb8 	bl	0x6664
    6780:	e3a00009 	mov	r0, #9
    6784:	e58d0200 	str	r0, [sp, #512]	; 0x200
    6788:	e3a00007 	mov	r0, #7
    678c:	e58d0204 	str	r0, [sp, #516]	; 0x204
    6790:	e5940034 	ldr	r0, [r4, #52]	; 0x34
    6794:	e1a00800 	lsl	r0, r0, #16
    6798:	e58d0208 	str	r0, [sp, #520]	; 0x208
    679c:	e3a00000 	mov	r0, #0
    67a0:	e58d021c 	str	r0, [sp, #540]	; 0x21c
    67a4:	e3a02000 	mov	r2, #0
    67a8:	e28d1c02 	add	r1, sp, #512	; 0x200
    67ac:	e1a00004 	mov	r0, r4
    67b0:	ebfffc3e 	bl	0x58b0
    67b4:	e1a05000 	mov	r5, r0
    67b8:	e3550000 	cmp	r5, #0
    67bc:	0a000001 	beq	0x67c8
    67c0:	e1a00005 	mov	r0, r5
    67c4:	eaffffcf 	b	0x6708
    67c8:	e1a01006 	mov	r1, r6
    67cc:	e1a00004 	mov	r0, r4
    67d0:	ebfffdbf 	bl	0x5ed4
    67d4:	e5940008 	ldr	r0, [r4, #8]
    67d8:	e3500801 	cmp	r0, #65536	; 0x10000
    67dc:	1a000023 	bne	0x6870
    67e0:	e59d120c 	ldr	r1, [sp, #524]	; 0x20c
    67e4:	e7e30d51 	ubfx	r0, r1, #26, #4
    67e8:	e3500005 	cmp	r0, #5
    67ec:	308ff100 	addcc	pc, pc, r0, lsl #2
    67f0:	ea000018 	b	0x6858
    67f4:	ea000003 	b	0x6808
    67f8:	ea000006 	b	0x6818
    67fc:	ea000009 	b	0x6828
    6800:	ea00000c 	b	0x6838
    6804:	ea00000f 	b	0x6848
    6808:	e320f000 	nop	{0}
    680c:	e59f15a8 	ldr	r1, [pc, #1448]	; 0x6dbc
    6810:	e5841008 	str	r1, [r4, #8]
    6814:	ea000013 	b	0x6868
    6818:	e320f000 	nop	{0}
    681c:	e59f159c 	ldr	r1, [pc, #1436]	; 0x6dc0
    6820:	e5841008 	str	r1, [r4, #8]
    6824:	ea00000f 	b	0x6868
    6828:	e320f000 	nop	{0}
    682c:	e59f1590 	ldr	r1, [pc, #1424]	; 0x6dc4
    6830:	e5841008 	str	r1, [r4, #8]
    6834:	ea00000b 	b	0x6868
    6838:	e320f000 	nop	{0}
    683c:	e59f1584 	ldr	r1, [pc, #1412]	; 0x6dc8
    6840:	e5841008 	str	r1, [r4, #8]
    6844:	ea000007 	b	0x6868
    6848:	e320f000 	nop	{0}
    684c:	e59f1558 	ldr	r1, [pc, #1368]	; 0x6dac
    6850:	e5841008 	str	r1, [r4, #8]
    6854:	ea000003 	b	0x6868
    6858:	e320f000 	nop	{0}
    685c:	e59f1558 	ldr	r1, [pc, #1368]	; 0x6dbc
    6860:	e5841008 	str	r1, [r4, #8]
    6864:	e320f000 	nop	{0}
    6868:	e320f000 	nop	{0}
    686c:	e320f000 	nop	{0}
    6870:	e59d0210 	ldr	r0, [sp, #528]	; 0x210
    6874:	e7e30850 	ubfx	r0, r0, #16, #4
    6878:	e3a01001 	mov	r1, #1
    687c:	e1a00011 	lsl	r0, r1, r0
    6880:	e5840044 	str	r0, [r4, #68]	; 0x44
    6884:	e5940044 	ldr	r0, [r4, #68]	; 0x44
    6888:	e3500c02 	cmp	r0, #512	; 0x200
    688c:	9a000001 	bls	0x6898
    6890:	e3000200 	movw	r0, #512	; 0x200
    6894:	e5840044 	str	r0, [r4, #68]	; 0x44
    6898:	e3a00007 	mov	r0, #7
    689c:	e58d0200 	str	r0, [sp, #512]	; 0x200
    68a0:	e3a0001d 	mov	r0, #29
    68a4:	e58d0204 	str	r0, [sp, #516]	; 0x204
    68a8:	e5940034 	ldr	r0, [r4, #52]	; 0x34
    68ac:	e1a00800 	lsl	r0, r0, #16
    68b0:	e58d0208 	str	r0, [sp, #520]	; 0x208
    68b4:	e3a00000 	mov	r0, #0
    68b8:	e58d021c 	str	r0, [sp, #540]	; 0x21c
    68bc:	e3a02000 	mov	r2, #0
    68c0:	e28d1c02 	add	r1, sp, #512	; 0x200
    68c4:	e1a00004 	mov	r0, r4
    68c8:	ebfffbf8 	bl	0x58b0
    68cc:	e1a05000 	mov	r5, r0
    68d0:	e3550000 	cmp	r5, #0
    68d4:	0a000001 	beq	0x68e0
    68d8:	e1a00005 	mov	r0, r5
    68dc:	eaffff89 	b	0x6708
    68e0:	e3a000ff 	mov	r0, #255	; 0xff
    68e4:	e5840038 	str	r0, [r4, #56]	; 0x38
    68e8:	e584003c 	str	r0, [r4, #60]	; 0x3c
    68ec:	e5940008 	ldr	r0, [r4, #8]
    68f0:	e3100802 	tst	r0, #131072	; 0x20000
    68f4:	1a000036 	bne	0x69d4
    68f8:	e5940008 	ldr	r0, [r4, #8]
    68fc:	e59f14a8 	ldr	r1, [pc, #1192]	; 0x6dac
    6900:	e1500001 	cmp	r0, r1
    6904:	3a000032 	bcc	0x69d4
    6908:	e1a0100d 	mov	r1, sp
    690c:	e1a00004 	mov	r0, r4
    6910:	ebfffe74 	bl	0x62e8
    6914:	e1a05000 	mov	r5, r0
    6918:	e5dd00c0 	ldrb	r0, [sp, #192]	; 0xc0
    691c:	e3500007 	cmp	r0, #7
    6920:	308ff100 	addcc	pc, pc, r0, lsl #2
    6924:	ea00001e 	b	0x69a4
    6928:	ea000005 	b	0x6944
    692c:	ea000008 	b	0x6954
    6930:	ea00000b 	b	0x6964
    6934:	ea00000e 	b	0x6974
    6938:	ea000019 	b	0x69a4
    693c:	ea000010 	b	0x6984
    6940:	ea000013 	b	0x6994
    6944:	e320f000 	nop	{0}
    6948:	e59f045c 	ldr	r0, [pc, #1116]	; 0x6dac
    694c:	e5840008 	str	r0, [r4, #8]
    6950:	ea000013 	b	0x69a4
    6954:	e320f000 	nop	{0}
    6958:	e59f046c 	ldr	r0, [pc, #1132]	; 0x6dcc
    695c:	e5840008 	str	r0, [r4, #8]
    6960:	ea00000f 	b	0x69a4
    6964:	e320f000 	nop	{0}
    6968:	e59f0460 	ldr	r0, [pc, #1120]	; 0x6dd0
    696c:	e5840008 	str	r0, [r4, #8]
    6970:	ea00000b 	b	0x69a4
    6974:	e320f000 	nop	{0}
    6978:	e59f0454 	ldr	r0, [pc, #1108]	; 0x6dd4
    697c:	e5840008 	str	r0, [r4, #8]
    6980:	ea000007 	b	0x69a4
    6984:	e320f000 	nop	{0}
    6988:	e59f0448 	ldr	r0, [pc, #1096]	; 0x6dd8
    698c:	e5840008 	str	r0, [r4, #8]
    6990:	ea000003 	b	0x69a4
    6994:	e320f000 	nop	{0}
    6998:	e59f043c 	ldr	r0, [pc, #1084]	; 0x6ddc
    699c:	e5840008 	str	r0, [r4, #8]
    69a0:	e320f000 	nop	{0}
    69a4:	e320f000 	nop	{0}
    69a8:	e5dd00a0 	ldrb	r0, [sp, #160]	; 0xa0
    69ac:	e3100001 	tst	r0, #1
    69b0:	0a000001 	beq	0x69bc
    69b4:	e5dd00b3 	ldrb	r0, [sp, #179]	; 0xb3
    69b8:	e5840038 	str	r0, [r4, #56]	; 0x38
    69bc:	e5940008 	ldr	r0, [r4, #8]
    69c0:	e59f140c 	ldr	r1, [pc, #1036]	; 0x6dd4
    69c4:	e1500001 	cmp	r0, r1
    69c8:	3a000001 	bcc	0x69d4
    69cc:	e5dd00b1 	ldrb	r0, [sp, #177]	; 0xb1
    69d0:	e584003c 	str	r0, [r4, #60]	; 0x3c
    69d4:	e5940008 	ldr	r0, [r4, #8]
    69d8:	e3100802 	tst	r0, #131072	; 0x20000
    69dc:	0a000003 	beq	0x69f0
    69e0:	e1a00004 	mov	r0, r4
    69e4:	ebfffeab 	bl	0x6498
    69e8:	e1a05000 	mov	r5, r0
    69ec:	ea000003 	b	0x6a00
    69f0:	e1a0100d 	mov	r1, sp
    69f4:	e1a00004 	mov	r0, r4
    69f8:	ebfffe70 	bl	0x63c0
    69fc:	e1a05000 	mov	r5, r0
    6a00:	e3550000 	cmp	r5, #0
    6a04:	0a000001 	beq	0x6a10
    6a08:	e1a00005 	mov	r0, r5
    6a0c:	eaffff3d 	b	0x6708
    6a10:	e1c402d0 	ldrd	r0, [r4, #32]
    6a14:	e0000001 	and	r0, r0, r1
    6a18:	e5840020 	str	r0, [r4, #32]
    6a1c:	e5940008 	ldr	r0, [r4, #8]
    6a20:	e3100802 	tst	r0, #131072	; 0x20000
    6a24:	0a000033 	beq	0x6af8
    6a28:	e5940020 	ldr	r0, [r4, #32]
    6a2c:	e3100c01 	tst	r0, #256	; 0x100
    6a30:	0a000025 	beq	0x6acc
    6a34:	e3a00037 	mov	r0, #55	; 0x37
    6a38:	e58d0200 	str	r0, [sp, #512]	; 0x200
    6a3c:	e3a00015 	mov	r0, #21
    6a40:	e58d0204 	str	r0, [sp, #516]	; 0x204
    6a44:	e5940034 	ldr	r0, [r4, #52]	; 0x34
    6a48:	e1a00800 	lsl	r0, r0, #16
    6a4c:	e58d0208 	str	r0, [sp, #520]	; 0x208
    6a50:	e3a00000 	mov	r0, #0
    6a54:	e58d021c 	str	r0, [sp, #540]	; 0x21c
    6a58:	e3a02000 	mov	r2, #0
    6a5c:	e28d1c02 	add	r1, sp, #512	; 0x200
    6a60:	e1a00004 	mov	r0, r4
    6a64:	ebfffb91 	bl	0x58b0
    6a68:	e1a05000 	mov	r5, r0
    6a6c:	e3550000 	cmp	r5, #0
    6a70:	0a000001 	beq	0x6a7c
    6a74:	e1a00005 	mov	r0, r5
    6a78:	eaffff22 	b	0x6708
    6a7c:	e3a00006 	mov	r0, #6
    6a80:	e58d0200 	str	r0, [sp, #512]	; 0x200
    6a84:	e3a00015 	mov	r0, #21
    6a88:	e58d0204 	str	r0, [sp, #516]	; 0x204
    6a8c:	e3a00002 	mov	r0, #2
    6a90:	e58d0208 	str	r0, [sp, #520]	; 0x208
    6a94:	e3a00000 	mov	r0, #0
    6a98:	e58d021c 	str	r0, [sp, #540]	; 0x21c
    6a9c:	e3a02000 	mov	r2, #0
    6aa0:	e28d1c02 	add	r1, sp, #512	; 0x200
    6aa4:	e1a00004 	mov	r0, r4
    6aa8:	ebfffb80 	bl	0x58b0
    6aac:	e1a05000 	mov	r5, r0
    6ab0:	e3550000 	cmp	r5, #0
    6ab4:	0a000001 	beq	0x6ac0
    6ab8:	e1a00005 	mov	r0, r5
    6abc:	eaffff11 	b	0x6708
    6ac0:	e3a01004 	mov	r1, #4
    6ac4:	e1a00004 	mov	r0, r4
    6ac8:	ebfffef4 	bl	0x66a0
    6acc:	e5940020 	ldr	r0, [r4, #32]
    6ad0:	e3100001 	tst	r0, #1
    6ad4:	0a000003 	beq	0x6ae8
    6ad8:	e59f1300 	ldr	r1, [pc, #768]	; 0x6de0
    6adc:	e1a00004 	mov	r0, r4
    6ae0:	ebfffedf 	bl	0x6664
    6ae4:	ea000035 	b	0x6bc0
    6ae8:	e59f12f4 	ldr	r1, [pc, #756]	; 0x6de4
    6aec:	e1a00004 	mov	r0, r4
    6af0:	ebfffedb 	bl	0x6664
    6af4:	ea000031 	b	0x6bc0
    6af8:	e5940020 	ldr	r0, [r4, #32]
    6afc:	e3100c01 	tst	r0, #256	; 0x100
    6b00:	0a00000d 	beq	0x6b3c
    6b04:	e3a03001 	mov	r3, #1
    6b08:	e3a020b7 	mov	r2, #183	; 0xb7
    6b0c:	e1a01003 	mov	r1, r3
    6b10:	e1a00004 	mov	r0, r4
    6b14:	ebfffe0d 	bl	0x6350
    6b18:	e1a05000 	mov	r5, r0
    6b1c:	e3550000 	cmp	r5, #0
    6b20:	0a000001 	beq	0x6b2c
    6b24:	e1a00005 	mov	r0, r5
    6b28:	eafffef6 	b	0x6708
    6b2c:	e3a01004 	mov	r1, #4
    6b30:	e1a00004 	mov	r0, r4
    6b34:	ebfffed9 	bl	0x66a0
    6b38:	ea00000f 	b	0x6b7c
    6b3c:	e5940020 	ldr	r0, [r4, #32]
    6b40:	e3100c02 	tst	r0, #512	; 0x200
    6b44:	0a00000c 	beq	0x6b7c
    6b48:	e3a03002 	mov	r3, #2
    6b4c:	e3a020b7 	mov	r2, #183	; 0xb7
    6b50:	e3a01001 	mov	r1, #1
    6b54:	e1a00004 	mov	r0, r4
    6b58:	ebfffdfc 	bl	0x6350
    6b5c:	e1a05000 	mov	r5, r0
    6b60:	e3550000 	cmp	r5, #0
    6b64:	0a000001 	beq	0x6b70
    6b68:	e1a00005 	mov	r0, r5
    6b6c:	eafffee5 	b	0x6708
    6b70:	e3a01008 	mov	r1, #8
    6b74:	e1a00004 	mov	r0, r4
    6b78:	ebfffec8 	bl	0x66a0
    6b7c:	e5940020 	ldr	r0, [r4, #32]
    6b80:	e3100001 	tst	r0, #1
    6b84:	0a00000a 	beq	0x6bb4
    6b88:	e5940020 	ldr	r0, [r4, #32]
    6b8c:	e3100010 	tst	r0, #16
    6b90:	0a000003 	beq	0x6ba4
    6b94:	e59f124c 	ldr	r1, [pc, #588]	; 0x6de8
    6b98:	e1a00004 	mov	r0, r4
    6b9c:	ebfffeb0 	bl	0x6664
    6ba0:	ea000006 	b	0x6bc0
    6ba4:	e59f1240 	ldr	r1, [pc, #576]	; 0x6dec
    6ba8:	e1a00004 	mov	r0, r4
    6bac:	ebfffeac 	bl	0x6664
    6bb0:	ea000002 	b	0x6bc0
    6bb4:	e59f1234 	ldr	r1, [pc, #564]	; 0x6df0
    6bb8:	e1a00004 	mov	r0, r4
    6bbc:	ebfffea8 	bl	0x6664
    6bc0:	e3a00000 	mov	r0, #0
    6bc4:	eafffecf 	b	0x6708
    6bc8:	e92d4030 	push	{r4, r5, lr}
    6bcc:	e24dd024 	sub	sp, sp, #36	; 0x24
    6bd0:	e1a04000 	mov	r4, r0
    6bd4:	e3a00008 	mov	r0, #8
    6bd8:	e58d0004 	str	r0, [sp, #4]
    6bdc:	e5940004 	ldr	r0, [r4, #4]
    6be0:	e59f11bc 	ldr	r1, [pc, #444]	; 0x6da4
    6be4:	e1100001 	tst	r0, r1
    6be8:	0a000001 	beq	0x6bf4
    6bec:	e3a00001 	mov	r0, #1
    6bf0:	ea000000 	b	0x6bf8
    6bf4:	e3a00000 	mov	r0, #0
    6bf8:	e3a010aa 	mov	r1, #170	; 0xaa
    6bfc:	e1810400 	orr	r0, r1, r0, lsl #8
    6c00:	e58d000c 	str	r0, [sp, #12]
    6c04:	e3a00015 	mov	r0, #21
    6c08:	e58d0008 	str	r0, [sp, #8]
    6c0c:	e3a00000 	mov	r0, #0
    6c10:	e58d0020 	str	r0, [sp, #32]
    6c14:	e3a02000 	mov	r2, #0
    6c18:	e28d1004 	add	r1, sp, #4
    6c1c:	e1a00004 	mov	r0, r4
    6c20:	ebfffb22 	bl	0x58b0
    6c24:	e1a05000 	mov	r5, r0
    6c28:	e3550000 	cmp	r5, #0
    6c2c:	0a000002 	beq	0x6c3c
    6c30:	e1a00005 	mov	r0, r5
    6c34:	e28dd024 	add	sp, sp, #36	; 0x24
    6c38:	e8bd8030 	pop	{r4, r5, pc}
    6c3c:	e59d0010 	ldr	r0, [sp, #16]
    6c40:	e20000ff 	and	r0, r0, #255	; 0xff
    6c44:	e35000aa 	cmp	r0, #170	; 0xaa
    6c48:	0a000001 	beq	0x6c54
    6c4c:	e3e00010 	mvn	r0, #16
    6c50:	eafffff7 	b	0x6c34
    6c54:	e59f0158 	ldr	r0, [pc, #344]	; 0x6db4
    6c58:	e5840008 	str	r0, [r4, #8]
    6c5c:	e3a00000 	mov	r0, #0
    6c60:	eafffff3 	b	0x6c34
    6c64:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    6c68:	e24dd034 	sub	sp, sp, #52	; 0x34
    6c6c:	e1a04000 	mov	r4, r0
    6c70:	e1a07001 	mov	r7, r1
    6c74:	e1a06002 	mov	r6, r2
    6c78:	e1a05003 	mov	r5, r3
    6c7c:	e3550001 	cmp	r5, #1
    6c80:	9a000002 	bls	0x6c90
    6c84:	e3a00012 	mov	r0, #18
    6c88:	e58d0014 	str	r0, [sp, #20]
    6c8c:	ea000001 	b	0x6c98
    6c90:	e3a00011 	mov	r0, #17
    6c94:	e58d0014 	str	r0, [sp, #20]
    6c98:	e5940014 	ldr	r0, [r4, #20]
    6c9c:	e3500000 	cmp	r0, #0
    6ca0:	0a000001 	beq	0x6cac
    6ca4:	e58d601c 	str	r6, [sp, #28]
    6ca8:	ea000002 	b	0x6cb8
    6cac:	e5940044 	ldr	r0, [r4, #68]	; 0x44
    6cb0:	e0000690 	mul	r0, r0, r6
    6cb4:	e58d001c 	str	r0, [sp, #28]
    6cb8:	e3a00015 	mov	r0, #21
    6cbc:	e58d0018 	str	r0, [sp, #24]
    6cc0:	e3a00000 	mov	r0, #0
    6cc4:	e58d0030 	str	r0, [sp, #48]	; 0x30
    6cc8:	e58d7004 	str	r7, [sp, #4]
    6ccc:	e58d500c 	str	r5, [sp, #12]
    6cd0:	e5940044 	ldr	r0, [r4, #68]	; 0x44
    6cd4:	e58d0010 	str	r0, [sp, #16]
    6cd8:	e3a00001 	mov	r0, #1
    6cdc:	e58d0008 	str	r0, [sp, #8]
    6ce0:	e28d2004 	add	r2, sp, #4
    6ce4:	e28d1014 	add	r1, sp, #20
    6ce8:	e1a00004 	mov	r0, r4
    6cec:	ebfffaef 	bl	0x58b0
    6cf0:	e3500000 	cmp	r0, #0
    6cf4:	0a000002 	beq	0x6d04
    6cf8:	e3a00000 	mov	r0, #0
    6cfc:	e28dd034 	add	sp, sp, #52	; 0x34
    6d00:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    6d04:	e1a00005 	mov	r0, r5
    6d08:	eafffffb 	b	0x6cfc
    6d0c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    6d10:	e1a05000 	mov	r5, r0
    6d14:	e1a08001 	mov	r8, r1
    6d18:	e1a06002 	mov	r6, r2
    6d1c:	e1a09003 	mov	r9, r3
    6d20:	e1a07006 	mov	r7, r6
    6d24:	e3560000 	cmp	r6, #0
    6d28:	1a000001 	bne	0x6d34
    6d2c:	e3a00000 	mov	r0, #0
    6d30:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    6d34:	e320f000 	nop	{0}
    6d38:	e5950048 	ldr	r0, [r5, #72]	; 0x48
    6d3c:	e1500007 	cmp	r0, r7
    6d40:	2a000001 	bcs	0x6d4c
    6d44:	e5950048 	ldr	r0, [r5, #72]	; 0x48
    6d48:	ea000000 	b	0x6d50
    6d4c:	e1a00007 	mov	r0, r7
    6d50:	e1a04000 	mov	r4, r0
    6d54:	e1a03004 	mov	r3, r4
    6d58:	e1a02008 	mov	r2, r8
    6d5c:	e1a01009 	mov	r1, r9
    6d60:	e1a00005 	mov	r0, r5
    6d64:	ebffffbe 	bl	0x6c64
    6d68:	e1500004 	cmp	r0, r4
    6d6c:	0a000001 	beq	0x6d78
    6d70:	e3a00000 	mov	r0, #0
    6d74:	eaffffed 	b	0x6d30
    6d78:	e0477004 	sub	r7, r7, r4
    6d7c:	e0888004 	add	r8, r8, r4
    6d80:	e5950044 	ldr	r0, [r5, #68]	; 0x44
    6d84:	e0299094 	mla	r9, r4, r0, r9
    6d88:	e3570000 	cmp	r7, #0
    6d8c:	1affffe9 	bne	0x6d38
    6d90:	e1a00006 	mov	r0, r6
    6d94:	eaffffe5 	b	0x6d30
    6d98:	fdf94080
    6d9c:	f0f0f0f0
    6da0:	f0f0f0fa
    6da4:	00ff8000
    6da8:	00020010
    6dac:	00010040
    6db0:	0002001a
    6db4:	00020020
    6db8:	005b8d80
    6dbc:	00010012
    6dc0:	00010014
    6dc4:	00010022
    6dc8:	00010030
    6dcc:	00010041
    6dd0:	00010042
    6dd4:	00010043
    6dd8:	00010044
    6ddc:	00010045
    6de0:	02faf080
    6de4:	017d7840
    6de8:	03197500
    6dec:	018cba80
    6df0:	01312d00

    6df4:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
    6df8:	e24dd034 	sub	sp, sp, #52	; 0x34
    6dfc:	e1a05000 	mov	r5, r0
    6e00:	e1a09001 	mov	r9, r1
    6e04:	e1a06002 	mov	r6, r2
    6e08:	e1a07003 	mov	r7, r3
    6e0c:	e3a04000 	mov	r4, #0
    6e10:	e3a08001 	mov	r8, #1
    6e14:	e59f0270 	ldr	r0, [pc, #624]	; 0x708c
    6e18:	e585001c 	str	r0, [r5, #28]
    6e1c:	e1a00005 	mov	r0, r5
    6e20:	ebfff9d2 	bl	0x5570
    6e24:	e320f000 	nop	{0}
    6e28:	e1a00005 	mov	r0, r5
    6e2c:	ebfff9de 	bl	0x55ac
    6e30:	e1a00005 	mov	r0, r5
    6e34:	ebfffc69 	bl	0x5fe0
    6e38:	e3a00000 	mov	r0, #0
    6e3c:	e58d0014 	str	r0, [sp, #20]
    6e40:	e58d001c 	str	r0, [sp, #28]
    6e44:	e58d0018 	str	r0, [sp, #24]
    6e48:	e3a00001 	mov	r0, #1
    6e4c:	e58d0030 	str	r0, [sp, #48]	; 0x30
    6e50:	e58d7004 	str	r7, [sp, #4]
    6e54:	e58d600c 	str	r6, [sp, #12]
    6e58:	e3000200 	movw	r0, #512	; 0x200
    6e5c:	e58d0010 	str	r0, [sp, #16]
    6e60:	e3a00001 	mov	r0, #1
    6e64:	e58d0008 	str	r0, [sp, #8]
    6e68:	e28d2004 	add	r2, sp, #4
    6e6c:	e28d1014 	add	r1, sp, #20
    6e70:	e1a00005 	mov	r0, r5
    6e74:	ebfffa8d 	bl	0x58b0
    6e78:	e1a04000 	mov	r4, r0
    6e7c:	e3740005 	cmn	r4, #5
    6e80:	0a000001 	beq	0x6e8c
    6e84:	e3740006 	cmn	r4, #6
    6e88:	1a000002 	bne	0x6e98
    6e8c:	e1a00004 	mov	r0, r4
    6e90:	e28dd034 	add	sp, sp, #52	; 0x34
    6e94:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
    6e98:	e3540000 	cmp	r4, #0
    6e9c:	0a000008 	beq	0x6ec4
    6ea0:	e3580000 	cmp	r8, #0
    6ea4:	0a000006 	beq	0x6ec4
    6ea8:	e3a08000 	mov	r8, #0
    6eac:	e51f00fc 	ldr	r0, [pc, #-252]	; 0x6db8
    6eb0:	e585001c 	str	r0, [r5, #28]
    6eb4:	e3a00001 	mov	r0, #1
    6eb8:	e3a01000 	mov	r1, #0
    6ebc:	ebfff8bc 	bl	0x51b4
    6ec0:	eaffffd8 	b	0x6e28
    6ec4:	e3540000 	cmp	r4, #0
    6ec8:	0a000001 	beq	0x6ed4
    6ecc:	e1a00004 	mov	r0, r4
    6ed0:	eaffffee 	b	0x6e90
    6ed4:	e1a00006 	mov	r0, r6
    6ed8:	eaffffec 	b	0x6e90
    6edc:	e92d4070 	push	{r4, r5, r6, lr}
    6ee0:	e1a05000 	mov	r5, r0
    6ee4:	e3a04000 	mov	r4, #0
    6ee8:	e1a00005 	mov	r0, r5
    6eec:	ebfff9cd 	bl	0x5628
    6ef0:	e1a04000 	mov	r4, r0
    6ef4:	e3540000 	cmp	r4, #0
    6ef8:	0a000001 	beq	0x6f04
    6efc:	e1a00004 	mov	r0, r4
    6f00:	e8bd8070 	pop	{r4, r5, r6, pc}
    6f04:	e59f0184 	ldr	r0, [pc, #388]	; 0x7090
    6f08:	e585001c 	str	r0, [r5, #28]
    6f0c:	e3a00001 	mov	r0, #1
    6f10:	e5850018 	str	r0, [r5, #24]
    6f14:	e1a00005 	mov	r0, r5
    6f18:	ebfff9a3 	bl	0x55ac
    6f1c:	e1a00005 	mov	r0, r5
    6f20:	ebfffc1a 	bl	0x5f90
    6f24:	e1a04000 	mov	r4, r0
    6f28:	e3540000 	cmp	r4, #0
    6f2c:	0a000001 	beq	0x6f38
    6f30:	e1a00004 	mov	r0, r4
    6f34:	eafffff1 	b	0x6f00
    6f38:	e3a00000 	mov	r0, #0
    6f3c:	e5850040 	str	r0, [r5, #64]	; 0x40
    6f40:	e1a00005 	mov	r0, r5
    6f44:	ebffff1f 	bl	0x6bc8
    6f48:	e1a00005 	mov	r0, r5
    6f4c:	ebfffc4c 	bl	0x6084
    6f50:	e1a04000 	mov	r4, r0
    6f54:	e3540000 	cmp	r4, #0
    6f58:	0a000006 	beq	0x6f78
    6f5c:	e1a00005 	mov	r0, r5
    6f60:	ebfffc91 	bl	0x61ac
    6f64:	e1a04000 	mov	r4, r0
    6f68:	e3540000 	cmp	r4, #0
    6f6c:	0a000001 	beq	0x6f78
    6f70:	e3e00010 	mvn	r0, #16
    6f74:	eaffffe1 	b	0x6f00
    6f78:	e1a00004 	mov	r0, r4
    6f7c:	eaffffdf 	b	0x6f00
    6f80:	e92d4070 	push	{r4, r5, r6, lr}
    6f84:	e1a06000 	mov	r6, r0
    6f88:	e1a04001 	mov	r4, r1
    6f8c:	e3e05000 	mvn	r5, #0
    6f90:	e1a01004 	mov	r1, r4
    6f94:	e1a00006 	mov	r0, r6
    6f98:	ebfffb91 	bl	0x5de4
    6f9c:	e1a05000 	mov	r5, r0
    6fa0:	e3550000 	cmp	r5, #0
    6fa4:	0a000001 	beq	0x6fb0
    6fa8:	e3e00000 	mvn	r0, #0
    6fac:	e8bd8070 	pop	{r4, r5, r6, pc}
    6fb0:	e3a00078 	mov	r0, #120	; 0x78
    6fb4:	e5840048 	str	r0, [r4, #72]	; 0x48
    6fb8:	e1a00004 	mov	r0, r4
    6fbc:	ebffffc6 	bl	0x6edc
    6fc0:	e1a05000 	mov	r5, r0
    6fc4:	e3550000 	cmp	r5, #0
    6fc8:	0a000001 	beq	0x6fd4
    6fcc:	e3e00000 	mvn	r0, #0
    6fd0:	eafffff5 	b	0x6fac
    6fd4:	e1a00004 	mov	r0, r4
    6fd8:	ebfffdb7 	bl	0x66bc
    6fdc:	e1a05000 	mov	r5, r0
    6fe0:	e3550000 	cmp	r5, #0
    6fe4:	0a000001 	beq	0x6ff0
    6fe8:	e3e00000 	mvn	r0, #0
    6fec:	eaffffee 	b	0x6fac
    6ff0:	e3a00000 	mov	r0, #0
    6ff4:	eaffffec 	b	0x6fac
    6ff8:	e92d4070 	push	{r4, r5, r6, lr}
    6ffc:	e1a06000 	mov	r6, r0
    7000:	e1a04001 	mov	r4, r1
    7004:	e3e05000 	mvn	r5, #0
    7008:	e1a01004 	mov	r1, r4
    700c:	e1a00006 	mov	r0, r6
    7010:	ebfffb73 	bl	0x5de4
    7014:	e1a05000 	mov	r5, r0
    7018:	e3550000 	cmp	r5, #0
    701c:	0a000001 	beq	0x7028
    7020:	e3e00000 	mvn	r0, #0
    7024:	e8bd8070 	pop	{r4, r5, r6, pc}
    7028:	e3a00078 	mov	r0, #120	; 0x78
    702c:	e5840048 	str	r0, [r4, #72]	; 0x48
    7030:	e1a00004 	mov	r0, r4
    7034:	ebfff97b 	bl	0x5628
    7038:	e1a05000 	mov	r5, r0
    703c:	e3550000 	cmp	r5, #0
    7040:	0a000001 	beq	0x704c
    7044:	e1a00005 	mov	r0, r5
    7048:	eafffff5 	b	0x7024
    704c:	e59f0038 	ldr	r0, [pc, #56]	; 0x708c
    7050:	e584001c 	str	r0, [r4, #28]
    7054:	e3a00004 	mov	r0, #4
    7058:	e5840018 	str	r0, [r4, #24]
    705c:	e1a00004 	mov	r0, r4
    7060:	ebfff951 	bl	0x55ac
    7064:	e3a00000 	mov	r0, #0
    7068:	eaffffed 	b	0x7024
    706c:	e92d4070 	push	{r4, r5, r6, lr}
    7070:	e1a04000 	mov	r4, r0
    7074:	e1a05001 	mov	r5, r1
    7078:	e1a01005 	mov	r1, r5
    707c:	e1a00004 	mov	r0, r4
    7080:	ebfffb6d 	bl	0x5e3c
    7084:	e3a00000 	mov	r0, #0
    7088:	e8bd8070 	pop	{r4, r5, r6, pc}

    708c:	00b71b00
    7090:	00061a80

    7094:	e59f03e0 	ldr	r0, [pc, #992]	; 0x747c
    7098:	e59f13e0 	ldr	r1, [pc, #992]	; 0x7480
    709c:	e5810000 	str	r0, [r1]
    70a0:	e3030777 	movw	r0, #14199	; 0x3777
    70a4:	e2811008 	add	r1, r1, #8
    70a8:	e5810000 	str	r0, [r1]
    70ac:	e3a00054 	mov	r0, #84	; 0x54
    70b0:	e2811018 	add	r1, r1, #24
    70b4:	e5810000 	str	r0, [r1]
    70b8:	e12fff1e 	bx	lr
    70bc:	e59f03c0 	ldr	r0, [pc, #960]	; 0x7484
    70c0:	e59f13b8 	ldr	r1, [pc, #952]	; 0x7480
    70c4:	e5810000 	str	r0, [r1]
    70c8:	e3070777 	movw	r0, #30583	; 0x7777
    70cc:	e2811008 	add	r1, r1, #8
    70d0:	e5810000 	str	r0, [r1]
    70d4:	e3a00054 	mov	r0, #84	; 0x54
    70d8:	e2811018 	add	r1, r1, #24
    70dc:	e5810000 	str	r0, [r1]
    70e0:	e12fff1e 	bx	lr
    70e4:	e92d4010 	push	{r4, lr}
    70e8:	e59f0398 	ldr	r0, [pc, #920]	; 0x7488
    70ec:	e5900000 	ldr	r0, [r0]
    70f0:	e3800601 	orr	r0, r0, #1048576	; 0x100000
    70f4:	e59f138c 	ldr	r1, [pc, #908]	; 0x7488
    70f8:	e5810000 	str	r0, [r1]
    70fc:	e2410020 	sub	r0, r1, #32
    7100:	e5900000 	ldr	r0, [r0]
    7104:	e3800601 	orr	r0, r0, #1048576	; 0x100000
    7108:	e2411020 	sub	r1, r1, #32
    710c:	e5810000 	str	r0, [r1]
    7110:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
    7114:	e2411e15 	sub	r1, r1, #336	; 0x150
    7118:	e5810000 	str	r0, [r1]
    711c:	ebffffdc 	bl	0x7094
    7120:	e59f0364 	ldr	r0, [pc, #868]	; 0x748c
    7124:	e5900000 	ldr	r0, [r0]
    7128:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
    712c:	e59f1358 	ldr	r1, [pc, #856]	; 0x748c
    7130:	e5810000 	str	r0, [r1]
    7134:	e2410020 	sub	r0, r1, #32
    7138:	e5900000 	ldr	r0, [r0]
    713c:	e3800401 	orr	r0, r0, #16777216	; 0x1000000
    7140:	e2411020 	sub	r1, r1, #32
    7144:	e5810000 	str	r0, [r1]
    7148:	e3010001 	movw	r0, #4097	; 0x1001
    714c:	e59f133c 	ldr	r1, [pc, #828]	; 0x7490
    7150:	e5810024 	str	r0, [r1, #36]	; 0x24
    7154:	e59f0338 	ldr	r0, [pc, #824]	; 0x7494
    7158:	e5810004 	str	r0, [r1, #4]
    715c:	e3000184 	movw	r0, #388	; 0x184
    7160:	e5810008 	str	r0, [r1, #8]
    7164:	e59f032c 	ldr	r0, [pc, #812]	; 0x7498
    7168:	e5810018 	str	r0, [r1, #24]
    716c:	e3a00000 	mov	r0, #0
    7170:	e5810010 	str	r0, [r1, #16]
    7174:	e3e00000 	mvn	r0, #0
    7178:	e5810014 	str	r0, [r1, #20]
    717c:	e8bd8010 	pop	{r4, pc}
    7180:	e92d4010 	push	{r4, lr}
    7184:	e3a00000 	mov	r0, #0
    7188:	e59f1300 	ldr	r1, [pc, #768]	; 0x7490
    718c:	e5810004 	str	r0, [r1, #4]
    7190:	ebffffc9 	bl	0x70bc
    7194:	e3a00000 	mov	r0, #0
    7198:	e59f12fc 	ldr	r1, [pc, #764]	; 0x749c
    719c:	e5810000 	str	r0, [r1]
    71a0:	e2810e17 	add	r0, r1, #368	; 0x170
    71a4:	e5900000 	ldr	r0, [r0]
    71a8:	e3c00601 	bic	r0, r0, #1048576	; 0x100000
    71ac:	e2811e17 	add	r1, r1, #368	; 0x170
    71b0:	e5810000 	str	r0, [r1]
    71b4:	e2410020 	sub	r0, r1, #32
    71b8:	e5900000 	ldr	r0, [r0]
    71bc:	e3c00601 	bic	r0, r0, #1048576	; 0x100000
    71c0:	e2411020 	sub	r1, r1, #32
    71c4:	e5810000 	str	r0, [r1]
    71c8:	e8bd8010 	pop	{r4, pc}
    71cc:	e92d4010 	push	{r4, lr}
    71d0:	e1a04000 	mov	r4, r0
    71d4:	e320f000 	nop	{0}
    71d8:	eb000148 	bl	0x7700
    71dc:	e3500000 	cmp	r0, #0
    71e0:	0a000001 	beq	0x71ec
    71e4:	e3a00000 	mov	r0, #0
    71e8:	e8bd8010 	pop	{r4, pc}
    71ec:	e2440001 	sub	r0, r4, #1
    71f0:	e1b04000 	movs	r4, r0
    71f4:	1afffff7 	bne	0x71d8
    71f8:	e3a00002 	mov	r0, #2
    71fc:	eafffff9 	b	0x71e8
    7200:	e1a01000 	mov	r1, r0
    7204:	e320f000 	nop	{0}
    7208:	e59f0280 	ldr	r0, [pc, #640]	; 0x7490
    720c:	e5900014 	ldr	r0, [r0, #20]
    7210:	e3100a01 	tst	r0, #4096	; 0x1000
    7214:	0a000001 	beq	0x7220
    7218:	e3a00000 	mov	r0, #0
    721c:	e12fff1e 	bx	lr
    7220:	e2410001 	sub	r0, r1, #1
    7224:	e1b01000 	movs	r1, r0
    7228:	1afffff6 	bne	0x7208
    722c:	e3a00002 	mov	r0, #2
    7230:	eafffff9 	b	0x721c
    7234:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    7238:	e1a04000 	mov	r4, r0
    723c:	e1a05001 	mov	r5, r1
    7240:	e1a07002 	mov	r7, r2
    7244:	e1a09003 	mov	r9, r3
    7248:	e3a0b00f 	mov	fp, #15
    724c:	e3a00037 	mov	r0, #55	; 0x37
    7250:	e58d0008 	str	r0, [sp, #8]
    7254:	e59f0244 	ldr	r0, [pc, #580]	; 0x74a0
    7258:	e58d0004 	str	r0, [sp, #4]
    725c:	e2408c01 	sub	r8, r0, #256	; 0x100
    7260:	e0840005 	add	r0, r4, r5
    7264:	e280ae96 	add	sl, r0, #2400	; 0x960
    7268:	e2480c02 	sub	r0, r8, #512	; 0x200
    726c:	e5804034 	str	r4, [r0, #52]	; 0x34
    7270:	e0840005 	add	r0, r4, r5
    7274:	e2481c02 	sub	r1, r8, #512	; 0x200
    7278:	e5810030 	str	r0, [r1, #48]	; 0x30
    727c:	e1a00001 	mov	r0, r1
    7280:	e5804038 	str	r4, [r0, #56]	; 0x38
    7284:	e5900018 	ldr	r0, [r0, #24]
    7288:	e3800c01 	orr	r0, r0, #256	; 0x100
    728c:	e5810018 	str	r0, [r1, #24]
    7290:	e1a03009 	mov	r3, r9
    7294:	e58d5000 	str	r5, [sp]
    7298:	e1a0100b 	mov	r1, fp
    729c:	e59d0008 	ldr	r0, [sp, #8]
    72a0:	e59d2004 	ldr	r2, [sp, #4]
    72a4:	eb0000fe 	bl	0x76a4
    72a8:	e3a06000 	mov	r6, #0
    72ac:	ea000002 	b	0x72bc
    72b0:	e7d70006 	ldrb	r0, [r7, r6]
    72b4:	e5c80000 	strb	r0, [r8]
    72b8:	e2866001 	add	r6, r6, #1
    72bc:	e1560004 	cmp	r6, r4
    72c0:	3afffffa 	bcc	0x72b0
    72c4:	e59f01c4 	ldr	r0, [pc, #452]	; 0x7490
    72c8:	e5900008 	ldr	r0, [r0, #8]
    72cc:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
    72d0:	e59f11b8 	ldr	r1, [pc, #440]	; 0x7490
    72d4:	e5810008 	str	r0, [r1, #8]
    72d8:	e1a0000a 	mov	r0, sl
    72dc:	ebffffba 	bl	0x71cc
    72e0:	e3500002 	cmp	r0, #2
    72e4:	1a000002 	bne	0x72f4
    72e8:	eb000109 	bl	0x7714
    72ec:	e3a00002 	mov	r0, #2
    72f0:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    72f4:	e1a0000a 	mov	r0, sl
    72f8:	ebffffc0 	bl	0x7200
    72fc:	e3500002 	cmp	r0, #2
    7300:	1a000002 	bne	0x7310
    7304:	eb000102 	bl	0x7714
    7308:	e3a00002 	mov	r0, #2
    730c:	eafffff7 	b	0x72f0
    7310:	eb0000ff 	bl	0x7714
    7314:	e3010000 	movw	r0, #4096	; 0x1000
    7318:	e59f1170 	ldr	r1, [pc, #368]	; 0x7490
    731c:	e5810014 	str	r0, [r1, #20]
    7320:	e1c10000 	bic	r0, r1, r0
    7324:	e5900014 	ldr	r0, [r0, #20]
    7328:	e3100c0f 	tst	r0, #3840	; 0xf00
    732c:	0a000001 	beq	0x7338
    7330:	e3a00002 	mov	r0, #2
    7334:	eaffffed 	b	0x72f0
    7338:	e3a00000 	mov	r0, #0
    733c:	eaffffeb 	b	0x72f0
    7340:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
    7344:	e1a08000 	mov	r8, r0
    7348:	e1a09001 	mov	r9, r1
    734c:	e1a0a002 	mov	sl, r2
    7350:	e1a0b009 	mov	fp, r9
    7354:	e3a04000 	mov	r4, #0
    7358:	e1a05408 	lsl	r5, r8, #8
    735c:	e1a0740a 	lsl	r7, sl, #8
    7360:	ea000018 	b	0x73c8
    7364:	e3a00003 	mov	r0, #3
    7368:	e5cd0000 	strb	r0, [sp]
    736c:	e1a00825 	lsr	r0, r5, #16
    7370:	e5cd0001 	strb	r0, [sp, #1]
    7374:	e1a00425 	lsr	r0, r5, #8
    7378:	e5cd0002 	strb	r0, [sp, #2]
    737c:	e5cd5003 	strb	r5, [sp, #3]
    7380:	e0470004 	sub	r0, r7, r4
    7384:	e3500b02 	cmp	r0, #2048	; 0x800
    7388:	9a000001 	bls	0x7394
    738c:	e3000800 	movw	r0, #2048	; 0x800
    7390:	ea000000 	b	0x7398
    7394:	e0470004 	sub	r0, r7, r4
    7398:	e1a06000 	mov	r6, r0
    739c:	e08b3004 	add	r3, fp, r4
    73a0:	e1a0200d 	mov	r2, sp
    73a4:	e1a01006 	mov	r1, r6
    73a8:	e3a00004 	mov	r0, #4
    73ac:	ebffffa0 	bl	0x7234
    73b0:	e3500002 	cmp	r0, #2
    73b4:	1a000001 	bne	0x73c0
    73b8:	e3a00002 	mov	r0, #2
    73bc:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
    73c0:	e0855006 	add	r5, r5, r6
    73c4:	e0844006 	add	r4, r4, r6
    73c8:	e1540007 	cmp	r4, r7
    73cc:	3affffe4 	bcc	0x7364
    73d0:	e3a00000 	mov	r0, #0
    73d4:	eafffff8 	b	0x73bc
    73d8:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
    73dc:	e1a05000 	mov	r5, r0
    73e0:	e1a07001 	mov	r7, r1
    73e4:	e1a08002 	mov	r8, r2
    73e8:	e1a0a007 	mov	sl, r7
    73ec:	e3a00000 	mov	r0, #0
    73f0:	e58d0004 	str	r0, [sp, #4]
    73f4:	e3a06000 	mov	r6, #0
    73f8:	e3a09000 	mov	r9, #0
    73fc:	e1a04485 	lsl	r4, r5, #9
    7400:	ea000012 	b	0x7450
    7404:	e3a000e8 	mov	r0, #232	; 0xe8
    7408:	e5cd0000 	strb	r0, [sp]
    740c:	e1a00824 	lsr	r0, r4, #16
    7410:	e5cd0001 	strb	r0, [sp, #1]
    7414:	e1a00424 	lsr	r0, r4, #8
    7418:	e5cd0002 	strb	r0, [sp, #2]
    741c:	e5cd4003 	strb	r4, [sp, #3]
    7420:	e08a3009 	add	r3, sl, r9
    7424:	e1a0200d 	mov	r2, sp
    7428:	e3001100 	movw	r1, #256	; 0x100
    742c:	e3a00008 	mov	r0, #8
    7430:	ebffff7f 	bl	0x7234
    7434:	e3500002 	cmp	r0, #2
    7438:	1a000001 	bne	0x7444
    743c:	e3a00002 	mov	r0, #2
    7440:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
    7444:	e2866001 	add	r6, r6, #1
    7448:	e2899c01 	add	r9, r9, #256	; 0x100
    744c:	e2844c02 	add	r4, r4, #512	; 0x200
    7450:	e1560008 	cmp	r6, r8
    7454:	3affffea 	bcc	0x7404
    7458:	e3a00000 	mov	r0, #0
    745c:	eafffff7 	b	0x7440
    7460:	e92d400c 	push	{r2, r3, lr}
    7464:	e1a01000 	mov	r1, r0
    7468:	e59f2034 	ldr	r2, [pc, #52]	; 0x74a4
    746c:	e8920005 	ldm	r2, {r0, r2}
    7470:	e88d0005 	stm	sp, {r0, r2}
    7474:	e79d0101 	ldr	r0, [sp, r1, lsl #2]
    7478:	e8bd800c 	pop	{r2, r3, pc}

    747c:	77777333
    7480:	06000848
    7484:	77777777
    7488:	060005a0
    748c:	060005a4
    7490:	01c1a000
    7494:	80000083
    7498:	80408040
    749c:	06000430
    74a0:	01c1a300
    74a4:	00007d5c

    74a8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    74ac:	ebffff0c 	bl	0x70e4
    74b0:	e3a07000 	mov	r7, #0
    74b4:	ea000029 	b	0x7560
    74b8:	e1a00007 	mov	r0, r7
    74bc:	ebffffe7 	bl	0x7460
    74c0:	e1a05000 	mov	r5, r0
    74c4:	e3a02001 	mov	r2, #1
    74c8:	e3a01801 	mov	r1, #65536	; 0x10000
    74cc:	e3a00000 	mov	r0, #0
    74d0:	e12fff35 	blx	r5
    74d4:	e3500002 	cmp	r0, #2
    74d8:	1a000000 	bne	0x74e0
    74dc:	ea00001e 	b	0x755c
    74e0:	e28f108c 	add	r1, pc, #140	; 0x7574
    74e4:	e3a00801 	mov	r0, #65536	; 0x10000
    74e8:	eb000024 	bl	0x7580
    74ec:	e3500000 	cmp	r0, #0
    74f0:	0a000000 	beq	0x74f8
    74f4:	ea000018 	b	0x755c
    74f8:	e3a06801 	mov	r6, #65536	; 0x10000
    74fc:	e5964010 	ldr	r4, [r6, #16]
    7500:	e1a00004 	mov	r0, r4
    7504:	e7df049f 	bfc	r0, #9, #23
    7508:	e3500000 	cmp	r0, #0
    750c:	0a000000 	beq	0x7514
    7510:	ea000011 	b	0x755c
    7514:	e1a02424 	lsr	r2, r4, #8
    7518:	e3a01801 	mov	r1, #65536	; 0x10000
    751c:	e3a00000 	mov	r0, #0
    7520:	e12fff35 	blx	r5
    7524:	e3500002 	cmp	r0, #2
    7528:	1a000000 	bne	0x7530
    752c:	ea00000a 	b	0x755c
    7530:	e1a01004 	mov	r1, r4
    7534:	e3a00801 	mov	r0, #65536	; 0x10000
    7538:	eb000022 	bl	0x75c8
    753c:	e3500000 	cmp	r0, #0
    7540:	1a000004 	bne	0x7558
    7544:	e3a00003 	mov	r0, #3
    7548:	e5c60028 	strb	r0, [r6, #40]	; 0x28
    754c:	ebffff0b 	bl	0x7180
    7550:	e3a00000 	mov	r0, #0
    7554:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
    7558:	e320f000 	nop	{0}
    755c:	e2877001 	add	r7, r7, #1
    7560:	e3570002 	cmp	r7, #2
    7564:	3affffd3 	bcc	0x74b8
    7568:	ebffff04 	bl	0x7180
    756c:	e3e00000 	mvn	r0, #0
    7570:	eafffff7 	b	0x7554

    7574:	4e4f4765
    7578:	3054422e
    757c:	00000000

    7580:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    7584:	e1a02000 	mov	r2, r0
    7588:	e1a0c002 	mov	ip, r2
    758c:	e28c4004 	add	r4, ip, #4
    7590:	e3a03000 	mov	r3, #0
    7594:	e3a05008 	mov	r5, #8
    7598:	ea000006 	b	0x75b8
    759c:	e4d40001 	ldrb	r0, [r4], #1
    75a0:	e4d16001 	ldrb	r6, [r1], #1
    75a4:	e1500006 	cmp	r0, r6
    75a8:	0a000001 	beq	0x75b4
    75ac:	e3a00001 	mov	r0, #1
    75b0:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    75b4:	e2833001 	add	r3, r3, #1
    75b8:	e1530005 	cmp	r3, r5
    75bc:	3afffff6 	bcc	0x759c
    75c0:	e3a00000 	mov	r0, #0
    75c4:	eafffff9 	b	0x75b0
    75c8:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    75cc:	e1a03000 	mov	r3, r0
    75d0:	e1a05001 	mov	r5, r1
    75d4:	e1a04003 	mov	r4, r3
    75d8:	e594600c 	ldr	r6, [r4, #12]
    75dc:	e59f00bc 	ldr	r0, [pc, #188]	; 0x76a0
    75e0:	e584000c 	str	r0, [r4, #12]
    75e4:	e1a07125 	lsr	r7, r5, #2
    75e8:	e3a02000 	mov	r2, #0
    75ec:	e1a01003 	mov	r1, r3
    75f0:	e320f000 	nop	{0}
    75f4:	e4910004 	ldr	r0, [r1], #4
    75f8:	e0822000 	add	r2, r2, r0
    75fc:	e4910004 	ldr	r0, [r1], #4
    7600:	e0822000 	add	r2, r2, r0
    7604:	e4910004 	ldr	r0, [r1], #4
    7608:	e0822000 	add	r2, r2, r0
    760c:	e4910004 	ldr	r0, [r1], #4
    7610:	e0822000 	add	r2, r2, r0
    7614:	e2470004 	sub	r0, r7, #4
    7618:	e1a07000 	mov	r7, r0
    761c:	e3500003 	cmp	r0, #3
    7620:	8afffff3 	bhi	0x75f4
    7624:	ea000001 	b	0x7630
    7628:	e4910004 	ldr	r0, [r1], #4
    762c:	e0822000 	add	r2, r2, r0
    7630:	e1b00007 	movs	r0, r7
    7634:	e2477001 	sub	r7, r7, #1
    7638:	1afffffa 	bne	0x7628
    763c:	e584600c 	str	r6, [r4, #12]
    7640:	e1520006 	cmp	r2, r6
    7644:	1a000001 	bne	0x7650
    7648:	e3a00000 	mov	r0, #0
    764c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
    7650:	e3a00001 	mov	r0, #1
    7654:	eafffffc 	b	0x764c
    7658:	e92d4070 	push	{r4, r5, r6, lr}
    765c:	e1a05000 	mov	r5, r0
    7660:	e1a06001 	mov	r6, r1
    7664:	e1a04002 	mov	r4, r2
    7668:	e1a01004 	mov	r1, r4
    766c:	e1a00005 	mov	r0, r5
    7670:	ebffffc2 	bl	0x7580
    7674:	e3500000 	cmp	r0, #0
    7678:	1a000006 	bne	0x7698
    767c:	e1a01006 	mov	r1, r6
    7680:	e1a00005 	mov	r0, r5
    7684:	ebffffcf 	bl	0x75c8
    7688:	e3500000 	cmp	r0, #0
    768c:	1a000001 	bne	0x7698
    7690:	e3a00000 	mov	r0, #0
    7694:	e8bd8070 	pop	{r4, r5, r6, pc}
    7698:	e3a00001 	mov	r0, #1
    769c:	eafffffc 	b	0x7694
    76a0:	5f0a6c39 	svcpl	0x000a6c39
    76a4:	e92d4070 	push	{r4, r5, r6, lr}
    76a8:	e1a04000 	mov	r4, r0
    76ac:	e1a05001 	mov	r5, r1
    76b0:	e59dc010 	ldr	ip, [sp, #16]
    76b4:	e3a01a22 	mov	r1, #139264	; 0x22000
    76b8:	e5814000 	str	r4, [r1]
    76bc:	e5812004 	str	r2, [r1, #4]
    76c0:	e5813008 	str	r3, [r1, #8]
    76c4:	e581c00c 	str	ip, [r1, #12]
    76c8:	e5815010 	str	r5, [r1, #16]
    76cc:	e59f0064 	ldr	r0, [pc, #100]	; 0x7738
    76d0:	e5810014 	str	r0, [r1, #20]
    76d4:	e3a00000 	mov	r0, #0
    76d8:	e281687e 	add	r6, r1, #8257536	; 0x7e0000
    76dc:	e5860100 	str	r0, [r6, #256]	; 0x100
    76e0:	e3a0000f 	mov	r0, #15
    76e4:	e5860010 	str	r0, [r6, #16]
    76e8:	e1c60000 	bic	r0, r6, r0
    76ec:	e5801108 	str	r1, [r0, #264]	; 0x108
    76f0:	e3a00001 	mov	r0, #1
    76f4:	e5860100 	str	r0, [r6, #256]	; 0x100
    76f8:	e3a00000 	mov	r0, #0
    76fc:	e8bd8070 	pop	{r4, r5, r6, pc}
    7700:	e59f0034 	ldr	r0, [pc, #52]	; 0x773c
    7704:	e5900030 	ldr	r0, [r0, #48]	; 0x30
    7708:	e2000001 	and	r0, r0, #1
    770c:	e2200001 	eor	r0, r0, #1
    7710:	e12fff1e 	bx	lr
    7714:	e3a00000 	mov	r0, #0
    7718:	e59f101c 	ldr	r1, [pc, #28]	; 0x773c
    771c:	e5810100 	str	r0, [r1, #256]	; 0x100
    7720:	e59f0010 	ldr	r0, [pc, #16]	; 0x7738
    7724:	e5810108 	str	r0, [r1, #264]	; 0x108
    7728:	e3a0000f 	mov	r0, #15
    772c:	e5810010 	str	r0, [r1, #16]
    7730:	e3a00000 	mov	r0, #0
    7734:	e12fff1e 	bx	lr

    7738:	1ffff800
    773c:	00802000

    7740:	e1a01000 	mov	r1, r0
    7744:	e1a00001 	mov	r0, r1
    7748:	ea000000 	b	0x7750
    774c:	e2400001 	sub	r0, r0, #1
    7750:	e3500000 	cmp	r0, #0
    7754:	cafffffc 	bgt	0x774c
    7758:	e12fff1e 	bx	lr
    775c:	e92d4070 	push	{r4, r5, r6, lr}
    7760:	e3a05000 	mov	r5, #0
    7764:	e3a0603c 	mov	r6, #60	; 0x3c
    7768:	e3a04004 	mov	r4, #4
    776c:	ea000006 	b	0x778c
    7770:	e1a00006 	mov	r0, r6
    7774:	ebfffff1 	bl	0x7740
    7778:	e3a00502 	mov	r0, #8388608	; 0x800000
    777c:	e5900024 	ldr	r0, [r0, #36]	; 0x24
    7780:	e7e00550 	ubfx	r0, r0, #10, #1
    7784:	e0855000 	add	r5, r5, r0
    7788:	e2444001 	sub	r4, r4, #1
    778c:	e3540000 	cmp	r4, #0
    7790:	cafffff6 	bgt	0x7770
    7794:	e3550000 	cmp	r5, #0
    7798:	1a000001 	bne	0x77a4
    779c:	e3e00000 	mvn	r0, #0
    77a0:	e8bd8070 	pop	{r4, r5, r6, pc}
    77a4:	e3a00000 	mov	r0, #0
    77a8:	eafffffc 	b	0x77a0
    77ac:	e3a00000 	mov	r0, #0
    77b0:	e3a01502 	mov	r1, #8388608	; 0x800000
    77b4:	e5911024 	ldr	r1, [r1, #36]	; 0x24
    77b8:	e7e10451 	ubfx	r0, r1, #8, #2
    77bc:	e12fff1e 	bx	lr

    77c0:	00004770

    77c4:	e92d4010 	push	{r4, lr}
    77c8:	e2522020 	subs	r2, r2, #32
    77cc:	3a000005 	bcc	0x77e8
    77d0:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
    77d4:	e2522020 	subs	r2, r2, #32
    77d8:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
    77dc:	e8b15018 	ldm	r1!, {r3, r4, ip, lr}
    77e0:	e8a05018 	stmia	r0!, {r3, r4, ip, lr}
    77e4:	2afffff9 	bcs	0x77d0
    77e8:	e1b0ce02 	lsls	ip, r2, #28
    77ec:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
    77f0:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
    77f4:	48b10018 	ldmmi	r1!, {r3, r4}
    77f8:	48a00018 	stmiami	r0!, {r3, r4}
    77fc:	e8bd4010 	pop	{r4, lr}
    7800:	e1b0cf02 	lsls	ip, r2, #30
    7804:	24913004 	ldrcs	r3, [r1], #4
    7808:	24803004 	strcs	r3, [r0], #4
    780c:	012fff1e 	bxeq	lr
    7810:	e1b02f82 	lsls	r2, r2, #31
    7814:	20d130b2 	ldrhcs	r3, [r1], #2
    7818:	44d12001 	ldrbmi	r2, [r1], #1
    781c:	20c030b2 	strhcs	r3, [r0], #2
    7820:	44c02001 	strbmi	r2, [r0], #1
    7824:	e12fff1e 	bx	lr

    7828:	0200f04f
    782c:	4613b500
    7830:	46964694
    7834:	bf223920
    7838:	500ce8a0
    783c:	500ce8a0
    7840:	0120f1b1
    7844:	aff7f4bf
    7848:	bf280709
    784c:	500ce8a0
    7850:	c00cbf48
    7854:	eb04f85d
    7858:	bf280089
    785c:	2b04f840
    7860:	4770bf08
    7864:	f820bf48
    7868:	f0112b02
    786c:	bf184f80
    7870:	2b01f800
    7874:	00004770

    7878:	e1a0f000 	mov	pc, r0

    787c:	00000000
    7880:	000043ac
    7884:	00000000
    7888:	00000001
	...
    7894:	00000002
    7898:	00000001
    789c:	00000048
    78a0:	00000001
    78a4:	00000400
    78a8:	00000000
    78ac:	00000001
    78b0:	000043ac
	...
    78c4:	00000010
    78c8:	00000001
    78cc:	00000028
    78d0:	00000001
    78d4:	00000400
    78d8:	00000000
    78dc:	00000002
    78e0:	000043ac
	...
    78f4:	00000020
    78f8:	00000001
    78fc:	00000038
    7900:	00000001
    7904:	00000400
    7908:	00000000
    790c:	00000003
    7910:	000043ac
	...
    7924:	00000010
    7928:	00000001
    792c:	00000038
    7930:	00000001
    7934:	00000400
    7938:	00000000
    793c:	00000004
    7940:	000043ac
	...
    7954:	00000010
    7958:	00000001
    795c:	00000018
    7960:	00000001
    7964:	00000400
    7968:	00000000
    796c:	00000005
    7970:	00004954
	...
    7984:	00000002
    7988:	00000001
    798c:	00000048
    7990:	00000001
    7994:	00000400
    7998:	00000000
    799c:	00000006
    79a0:	000043ac
    79a4:	00000003
    79a8:	00000001
    79ac:	00000001
    79b0:	0000003f
    79b4:	00000002
    79b8:	00000001
    79bc:	00000048
    79c0:	00000001
    79c4:	00000400
    79c8:	00000000
    79cc:	00000007 
    79d0:	000043ac 
    79d4:	00000003 
    79d8:	00000000 
    79dc:	00000002 
    79e0:	0000003f 
    79e4:	00000002 
    79e8:	00000001 
    79ec:	00000048 
    79f0:	00000001 
    79f4:	00000400 
    79f8:	00000000 
    79fc:	00000008 
    7a00:	000043ac 
    7a04:	00000003 
    7a08:	00000000 
    7a0c:	00000003 
    7a10:	0000003f 
    7a14:	00000002 
    7a18:	00000001 
    7a1c:	00000048 
    7a20:	00000001 
    7a24:	00000400 
    7a28:	00000000 
    7a2c:	00000009 
    7a30:	00004954 
    7a34:	00000003 
    7a38:	00000001 
    7a3c:	00000001 
    7a40:	0000003f 
    7a44:	00000002 
    7a48:	00000001 
    7a4c:	00000048 
    7a50:	00000001 
    7a54:	00000400 
    7a58:	00000000 
    7a5c:	0000000a 
    7a60:	00004954 
    7a64:	00000003 
    7a68:	00000000 
    7a6c:	00000002 
    7a70:	0000003f 
    7a74:	00000002 
    7a78:	00000001 
    7a7c:	00000048 
    7a80:	00000001 
    7a84:	00000400 
    7a88:	00000000 
    7a8c:	0000000b 
    7a90:	00004954 
    7a94:	00000003 
    7a98:	00000000 
    7a9c:	00000003 
    7aa0:	0000003f 
    7aa4:	00000002 
    7aa8:	00000001 
    7aac:	00000048 
    7ab0:	00000001 
    7ab4:	00000400 
    7ab8:	00000000 
    7abc:	0000000c 
	...
    7aec:	00000040 
    7af0:	00004618 
    7af4:	00000000 
    7af8:	00000001 
	...
    7b04:	00000002 
    7b08:	00000001 
    7b0c:	00000048 
    7b10:	00000001 
    7b14:	00000400 
    7b18:	00000000 
    7b1c:	00000041 
    7b20:	00004408 
    7b24:	00000000 
    7b28:	00000001 
	...
    7b34:	00000008 
    7b38:	00000001 
    7b3c:	00000048 
    7b40:	00000001 
    7b44:	00000400 
    7b48:	00000000 
    7b4c:	00000042 
    7b50:	00004540 
    7b54:	00000000 
    7b58:	00000001 
	...
    7b64:	00000008 
    7b68:	00000001 
    7b6c:	00000048 
    7b70:	00000001 
    7b74:	00000400 
    7b78:	00000000 
    7b7c:	00000043 
    7b80:	00004408 
    7b84:	00000003 
    7b88:	00000001 
    7b8c:	00000001 
    7b90:	0000003f 
    7b94:	00000008 
    7b98:	00000001 
    7b9c:	00000048 
    7ba0:	00000001 
    7ba4:	00000400 
    7ba8:	00000000 
    7bac:	00000044 
    7bb0:	00004408 
    7bb4:	00000003 
    7bb8:	00000000 
    7bbc:	00000002 
    7bc0:	0000003f 
    7bc4:	00000008 
    7bc8:	00000001 
    7bcc:	00000048 
    7bd0:	00000001 
    7bd4:	00000400 
    7bd8:	00000000 
    7bdc:	00000045 
    7be0:	00004408 
    7be4:	00000003 
    7be8:	00000000 
    7bec:	00000003 
    7bf0:	0000003f 
    7bf4:	00000008 
    7bf8:	00000001 
    7bfc:	00000048 
    7c00:	00000001 
    7c04:	00000400 
    7c08:	00000000 
    7c0c:	00000046 
    7c10:	00004540 
    7c14:	00000003 
    7c18:	00000000 
    7c1c:	00000001 
    7c20:	0000003f 
    7c24:	00000008 
    7c28:	00000001 
    7c2c:	00000048 
    7c30:	00000001 
    7c34:	00000400 
    7c38:	00000000 
    7c3c:	00000047 
    7c40:	00004540 
    7c44:	00000003 
    7c48:	00000000 
    7c4c:	00000002 
    7c50:	0000003f 
    7c54:	00000008 
    7c58:	00000001 
    7c5c:	00000048 
    7c60:	00000001 
    7c64:	00000400 
    7c68:	00000000 
    7c6c:	00000048 
    7c70:	00004540 
    7c74:	00000003 
    7c78:	00000000 
    7c7c:	00000003 
    7c80:	0000003f 
    7c84:	00000008 
    7c88:	00000001 
    7c8c:	00000048 
    7c90:	00000001 
    7c94:	00000400 
    7c98:	00000000 
    7c9c:	00000049 
    7ca0:	000043ac 
    7ca4:	00000000 
    7ca8:	00000001 
	...
    7cb4:	00000002 
    7cb8:	00000000 
    7cbc:	00000048 
    7cc0:	00000001 
    7cc4:	00000400 
    7cc8:	00000000 
    7ccc:	0000004a 
    7cd0:	000043ac 
    7cd4:	00000000 
    7cd8:	00000001 
	...
    7ce4:	00000002 
    7ce8:	00000001 
    7cec:	00000048 
    7cf0:	00000001 
    7cf4:	00000400 
    7cf8:	00000001 
    7cfc:	0000004b 
    7d00:	000043ac 
	...
    7d14:	00000002 
    7d18:	00000000 
    7d1c:	00000048 
    7d20:	00000001 
    7d24:	00000400 
    7d28:	00000001 
    7d2c:	0000004c 
	...
    7d5c:	00007340 
    7d60:	000073d8
	...
