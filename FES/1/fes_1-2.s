
fes_1-2.fex:     file format binary


Disassembly of section .data:

00000000 <.data>:

e0000:
   0:	e59f0000 	ldr	r0, =0x0000706c ; 0x8
   4:	ea00000b 	b	0x38

;   8:	0000706c

   c:	e59f004c 	ldr	r0, =0x00007210	; 0x60
  10:	e3a01000 	mov	r1, #0
  14:	e3a02000 	mov	r2, #0
  18:	e8a00006 	stmia	r0!, {r1, r2}	; 0x7210 = 0, 0x7214 = 0
  1c:	e8800006 	stm	r0, {r1, r2}	; 0x7218 = 0, 0x721a = 0
  20:	e59f103c 	ldr	r1, ="DRAM"	; 0x64
  24:	e2400008 	sub	r0, r0, #8
  28:	e5801000 	str	r1, [r0]	; 0x7210 = "DRAM"
  2c:	e3a01001 	mov	r1, #1
  30:	e5801004 	str	r1, [r0, #4]	; 0x7214 = 1
  34:	e12fff1e 	bx	lr

  38:	e3500000 	cmp	r0, #0
  3c:	03e00000 	mvneq	r0, #0

e0040:
  40:	e92d4010 	push	{r4, lr}
  44:	08bd8010 	popeq	{r4, pc}
  48:	e3a01000 	mov	r1, #0
  4c:	eb000161 	bl	0x5d8
  50:	e3500000 	cmp	r0, #0
  54:	0bffffec 	bleq	0xc
  58:	e3a00000 	mov	r0, #0
  5c:	e8bd8010 	pop	{r4, pc}

;  60:	00007210

;  64:	4d415244 	"DRAM"

f0068:
  68:	e2522020 	subs	r2, r2, #32
  6c:	e92d4010 	push	{r4, lr}
  70:	3a000005 	bcc	0x8c
  74:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
  78:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
  7c:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
  80:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
  84:	22522020 	subscs	r2, r2, #32
  88:	2afffff9 	bcs	0x74
  8c:	e1b0ce02 	lsls	ip, r2, #28
  90:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
  94:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
  98:	48b10018 	ldmmi	r1!, {r3, r4}
  9c:	48a00018 	stmiami	r0!, {r3, r4}
  a0:	e1b0cf02 	lsls	ip, r2, #30
  a4:	e8bd4010 	pop	{r4, lr}
  a8:	24913004 	ldrcs	r3, [r1], #4
  ac:	24803004 	strcs	r3, [r0], #4
  b0:	01a0f00e 	moveq	pc, lr
  b4:	e1b02f82 	lsls	r2, r2, #31
  b8:	44d12001 	ldrbmi	r2, [r1], #1
  bc:	24d13001 	ldrbcs	r3, [r1], #1
  c0:	24d1c001 	ldrbcs	ip, [r1], #1
  c4:	44c02001 	strbmi	r2, [r0], #1
  c8:	24c03001 	strbcs	r3, [r0], #1
  cc:	24c0c001 	strbcs	ip, [r0], #1
  d0:	e1a0f00e 	mov	pc, lr

  d4:	e92d4010 	push	{r4, lr}
  d8:	e1a0e000 	mov	lr, r0
  dc:	e3a0c004 	mov	ip, #4
  e0:	e3a00000 	mov	r0, #0
  e4:	e3a02000 	mov	r2, #0
  e8:	ea00002a 	b	0x198
  ec:	e3520000 	cmp	r2, #0
  f0:	0a000006 	beq	0x110
  f4:	e3520001 	cmp	r2, #1
  f8:	0a000009 	beq	0x124
  fc:	e3520002 	cmp	r2, #2
 100:	0a00000c 	beq	0x138
 104:	e3520003 	cmp	r2, #3
 108:	1a000014 	bne	0x160
 10c:	ea00000e 	b	0x14c
 110:	e1a00000 	nop			; (mov r0, r0)

 114:	e59f45ec 	ldr	r4, [pc, #1516]	; 0x708
 118:	e5944030 	ldr	r4, [r4, #48]	; 0x30
 11c:	e1a01004 	mov	r1, r4
 120:	ea000011 	b	0x16c
 124:	e1a00000 	nop			; (mov r0, r0)

 128:	e59f45d8 	ldr	r4, [pc, #1496]	; 0x708
 12c:	e5944034 	ldr	r4, [r4, #52]	; 0x34
 130:	e1a01004 	mov	r1, r4
 134:	ea00000c 	b	0x16c
 138:	e1a00000 	nop			; (mov r0, r0)

 13c:	e59f45c4 	ldr	r4, [pc, #1476]	; 0x708
 140:	e5944038 	ldr	r4, [r4, #56]	; 0x38
 144:	e1a01004 	mov	r1, r4
 148:	ea000007 	b	0x16c
 14c:	e1a00000 	nop			; (mov r0, r0)

 150:	e59f45b0 	ldr	r4, [pc, #1456]	; 0x708
 154:	e594403c 	ldr	r4, [r4, #60]	; 0x3c
 158:	e1a01004 	mov	r1, r4
 15c:	ea000002 	b	0x16c

 160:	e1a00000 	nop			; (mov r0, r0)
 164:	e3a01000 	mov	r1, #0
 168:	e1a00000 	nop			; (mov r0, r0)
 16c:	e1a00000 	nop			; (mov r0, r0)
 170:	e3a03000 	mov	r3, #0
 174:	ea000004 	b	0x18c
 178:	e3110001 	tst	r1, #1
 17c:	0a000000 	beq	0x184
 180:	e2800001 	add	r0, r0, #1
 184:	e1a010a1 	lsr	r1, r1, #1
 188:	e2833001 	add	r3, r3, #1
 18c:	e3530020 	cmp	r3, #32
 190:	3afffff8 	bcc	0x178
 194:	e2822001 	add	r2, r2, #1
 198:	e152000c 	cmp	r2, ip
 19c:	3affffd2 	bcc	0xec
 1a0:	e8bd8010 	pop	{r4, pc}
 1a4:	e92d4010 	push	{r4, lr}
 1a8:	e3e02000 	mvn	r2, #0
 1ac:	e3a01000 	mov	r1, #0
 1b0:	ea00000e 	b	0x1f0
 1b4:	e3a0e001 	mov	lr, #1
 1b8:	e59f4548 	ldr	r4, [pc, #1352]	; 0x708
 1bc:	e584e024 	str	lr, [r4, #36]	; 0x24
 1c0:	e1a00000 	nop			; (mov r0, r0)
 1c4:	e59fe53c 	ldr	lr, [pc, #1340]	; 0x708
 1c8:	e59ee024 	ldr	lr, [lr, #36]	; 0x24
 1cc:	e31e0001 	tst	lr, #1
 1d0:	1afffffb 	bne	0x1c4
 1d4:	e59fe52c 	ldr	lr, [pc, #1324]	; 0x708
 1d8:	e59ee030 	ldr	lr, [lr, #48]	; 0x30
 1dc:	e00e2002 	and	r2, lr, r2
 1e0:	e59fe520 	ldr	lr, [pc, #1312]	; 0x708
 1e4:	e59ee038 	ldr	lr, [lr, #56]	; 0x38
 1e8:	e00e2002 	and	r2, lr, r2
 1ec:	e2811001 	add	r1, r1, #1
 1f0:	e3510008 	cmp	r1, #8
 1f4:	3affffee 	bcc	0x1b4
 1f8:	e3a03000 	mov	r3, #0
 1fc:	e3a01000 	mov	r1, #0
 200:	ea000005 	b	0x21c
 204:	e3120001 	tst	r2, #1
 208:	0a000000 	beq	0x210
 20c:	ea000004 	b	0x224
 210:	e2833001 	add	r3, r3, #1
 214:	e1a020a2 	lsr	r2, r2, #1
 218:	e2811001 	add	r1, r1, #1
 21c:	e3510020 	cmp	r1, #32
 220:	3afffff7 	bcc	0x204
 224:	e1a00000 	nop			; (mov r0, r0)
 228:	e2833005 	add	r3, r3, #5
 22c:	e1a0c403 	lsl	ip, r3, #8
 230:	e18cc803 	orr	ip, ip, r3, lsl #16
 234:	e59fe4cc 	ldr	lr, [pc, #1228]	; 0x708
 238:	e58ec024 	str	ip, [lr, #36]	; 0x24
 23c:	e8bd8010 	pop	{r4, pc}
 240:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 244:	e3a01000 	mov	r1, #0
 248:	e3a02000 	mov	r2, #0
 24c:	e3a03000 	mov	r3, #0
 250:	ea000010 	b	0x298
 254:	e3a0c001 	mov	ip, #1
 258:	e59fe4a8 	ldr	lr, [pc, #1192]	; 0x708
 25c:	e58ec024 	str	ip, [lr, #36]	; 0x24
 260:	e1a00000 	nop			; (mov r0, r0)
 264:	e59fc49c 	ldr	ip, [pc, #1180]	; 0x708
 268:	e59cc024 	ldr	ip, [ip, #36]	; 0x24
 26c:	e31c0001 	tst	ip, #1
 270:	1afffffb 	bne	0x264
 274:	e59fc48c 	ldr	ip, [pc, #1164]	; 0x708
 278:	e59c0024 	ldr	r0, [ip, #36]	; 0x24
 27c:	e3a0c03f 	mov	ip, #63	; 0x3f
 280:	e00cc420 	and	ip, ip, r0, lsr #8
 284:	e08c1001 	add	r1, ip, r1
 288:	e3a0c03f 	mov	ip, #63	; 0x3f
 28c:	e00cc820 	and	ip, ip, r0, lsr #16
 290:	e08c2002 	add	r2, ip, r2
 294:	e2833001 	add	r3, r3, #1
 298:	e3530008 	cmp	r3, #8
 29c:	3affffec 	bcc	0x254
 2a0:	e1a011a1 	lsr	r1, r1, #3
 2a4:	e1a021a2 	lsr	r2, r2, #3
 2a8:	e1a00401 	lsl	r0, r1, #8
 2ac:	e1800802 	orr	r0, r0, r2, lsl #16
 2b0:	e59fc450 	ldr	ip, [pc, #1104]	; 0x708
 2b4:	e58c0024 	str	r0, [ip, #36]	; 0x24
 2b8:	e49df004 	pop	{pc}		; (ldr pc, [sp], #4)
 2bc:	e92d4ff1 	push	{r0, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 2c0:	e24dd010 	sub	sp, sp, #16
 2c4:	e59f0440 	ldr	r0, [pc, #1088]	; 0x70c
 2c8:	e590a008 	ldr	sl, [r0, #8]
 2cc:	e3a05000 	mov	r5, #0
 2d0:	ea00001b 	b	0x344
 2d4:	e2857002 	add	r7, r5, #2
 2d8:	e59f0428 	ldr	r0, [pc, #1064]	; 0x708
 2dc:	e590000c 	ldr	r0, [r0, #12]
 2e0:	e1a04000 	mov	r4, r0
 2e4:	e3c44d07 	bic	r4, r4, #448	; 0x1c0
 2e8:	e1844307 	orr	r4, r4, r7, lsl #6
 2ec:	e59f0414 	ldr	r0, [pc, #1044]	; 0x708
 2f0:	e580400c 	str	r4, [r0, #12]
 2f4:	e3a00001 	mov	r0, #1
 2f8:	e59f1408 	ldr	r1, [pc, #1032]	; 0x708
 2fc:	e5810024 	str	r0, [r1, #36]	; 0x24
 300:	e1a00000 	nop			; (mov r0, r0)
 304:	e59f03fc 	ldr	r0, [pc, #1020]	; 0x708
 308:	e5900024 	ldr	r0, [r0, #36]	; 0x24
 30c:	e3100001 	tst	r0, #1
 310:	1afffffb 	bne	0x304
 314:	e3a00000 	mov	r0, #0
 318:	e78d0105 	str	r0, [sp, r5, lsl #2]
 31c:	e59f03e4 	ldr	r0, [pc, #996]	; 0x708
 320:	e5900024 	ldr	r0, [r0, #36]	; 0x24
 324:	e1a04000 	mov	r4, r0
 328:	e3a00003 	mov	r0, #3
 32c:	e1100224 	tst	r0, r4, lsr #4
 330:	1a000002 	bne	0x340
 334:	e3a00010 	mov	r0, #16
 338:	ebffff65 	bl	0xd4
 33c:	e78d0105 	str	r0, [sp, r5, lsl #2]
 340:	e2855001 	add	r5, r5, #1
 344:	e3550004 	cmp	r5, #4
 348:	3affffe1 	bcc	0x2d4
 34c:	e89d0003 	ldm	sp, {r0, r1}
 350:	e1500001 	cmp	r0, r1
 354:	3a000001 	bcc	0x360
 358:	e59d0000 	ldr	r0, [sp]
 35c:	ea000000 	b	0x364
 360:	e59d0004 	ldr	r0, [sp, #4]
 364:	e1a06000 	mov	r6, r0
 368:	e59d0008 	ldr	r0, [sp, #8]
 36c:	e59d100c 	ldr	r1, [sp, #12]
 370:	e1500001 	cmp	r0, r1
 374:	3a000001 	bcc	0x380
 378:	e59d0008 	ldr	r0, [sp, #8]
 37c:	ea000000 	b	0x384
 380:	e59d000c 	ldr	r0, [sp, #12]
 384:	e1a08000 	mov	r8, r0
 388:	e1560008 	cmp	r6, r8
 38c:	3a000001 	bcc	0x398
 390:	e1a00006 	mov	r0, r6
 394:	ea000000 	b	0x39c
 398:	e1a00008 	mov	r0, r8
 39c:	e1a0b000 	mov	fp, r0
 3a0:	e3a05000 	mov	r5, #0
 3a4:	ea000005 	b	0x3c0
 3a8:	e79d0105 	ldr	r0, [sp, r5, lsl #2]
 3ac:	e150000b 	cmp	r0, fp
 3b0:	1a000001 	bne	0x3bc
 3b4:	e2857002 	add	r7, r5, #2
 3b8:	ea000002 	b	0x3c8
 3bc:	e2855001 	add	r5, r5, #1
 3c0:	e3550004 	cmp	r5, #4
 3c4:	3afffff7 	bcc	0x3a8
 3c8:	e1a00000 	nop			; (mov r0, r0)
 3cc:	e3a00507 	mov	r0, #29360128	; 0x1c00000
 3d0:	e5909020 	ldr	r9, [r0, #32]
 3d4:	e3590003 	cmp	r9, #3
 3d8:	1a000002 	bne	0x3e8
 3dc:	e3570005 	cmp	r7, #5
 3e0:	3a000000 	bcc	0x3e8
 3e4:	e3a07004 	mov	r7, #4
 3e8:	e59f0318 	ldr	r0, [pc, #792]	; 0x708
 3ec:	e590000c 	ldr	r0, [r0, #12]
 3f0:	e1a04000 	mov	r4, r0
 3f4:	e3c44d07 	bic	r4, r4, #448	; 0x1c0
 3f8:	e1844307 	orr	r4, r4, r7, lsl #6
 3fc:	e59f0304 	ldr	r0, [pc, #772]	; 0x708
 400:	e580400c 	str	r4, [r0, #12]
 404:	e3a00001 	mov	r0, #1
 408:	e59f12f8 	ldr	r1, [pc, #760]	; 0x708
 40c:	e5810024 	str	r0, [r1, #36]	; 0x24
 410:	e1a00000 	nop			; (mov r0, r0)
 414:	e59f02ec 	ldr	r0, [pc, #748]	; 0x708
 418:	e5900024 	ldr	r0, [r0, #36]	; 0x24
 41c:	e3100001 	tst	r0, #1
 420:	1afffffb 	bne	0x414
 424:	e59f02dc 	ldr	r0, [pc, #732]	; 0x708
 428:	e5900024 	ldr	r0, [r0, #36]	; 0x24
 42c:	e1a04000 	mov	r4, r0
 430:	e3a00003 	mov	r0, #3
 434:	e1100224 	tst	r0, r4, lsr #4
 438:	1a000022 	bne	0x4c8
 43c:	e3590003 	cmp	r9, #3
 440:	1a000012 	bne	0x490
 444:	e3a0003f 	mov	r0, #63	; 0x3f
 448:	e0006424 	and	r6, r0, r4, lsr #8
 44c:	e3560005 	cmp	r6, #5
 450:	3a000001 	bcc	0x45c
 454:	e2466005 	sub	r6, r6, #5
 458:	ea000000 	b	0x460
 45c:	e3a06000 	mov	r6, #0
 460:	e3a0003f 	mov	r0, #63	; 0x3f
 464:	e0008824 	and	r8, r0, r4, lsr #16
 468:	e3580005 	cmp	r8, #5
 46c:	3a000001 	bcc	0x478
 470:	e2488005 	sub	r8, r8, #5
 474:	ea000000 	b	0x47c
 478:	e3a08000 	mov	r8, #0
 47c:	e1a04406 	lsl	r4, r6, #8
 480:	e1844808 	orr	r4, r4, r8, lsl #16
 484:	e59f027c 	ldr	r0, [pc, #636]	; 0x708
 488:	e5804024 	str	r4, [r0, #36]	; 0x24
 48c:	ea00000a 	b	0x4bc
 490:	e3590004 	cmp	r9, #4
 494:	1a000008 	bne	0x4bc
 498:	e3570004 	cmp	r7, #4
 49c:	1a000005 	bne	0x4b8
 4a0:	e59f0268 	ldr	r0, [pc, #616]	; 0x710
 4a4:	e15a0000 	cmp	sl, r0
 4a8:	3a000002 	bcc	0x4b8
 4ac:	e1a0000a 	mov	r0, sl
 4b0:	ebffff3b 	bl	0x1a4
 4b4:	ea000000 	b	0x4bc
 4b8:	ebffff60 	bl	0x240
 4bc:	e3a00000 	mov	r0, #0
 4c0:	e28dd014 	add	sp, sp, #20
 4c4:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
 4c8:	e3e00000 	mvn	r0, #0
 4cc:	eafffffb 	b	0x4c0
 4d0:	e92d4030 	push	{r4, r5, lr}
 4d4:	e1a05000 	mov	r5, r0
 4d8:	e1a00005 	mov	r0, r5
 4dc:	ebffff76 	bl	0x2bc
 4e0:	e1a04000 	mov	r4, r0
 4e4:	e1a00004 	mov	r0, r4
 4e8:	e8bd8030 	pop	{r4, r5, pc}
 4ec:	e92d4070 	push	{r4, r5, r6, lr}
 4f0:	e24dd018 	sub	sp, sp, #24
 4f4:	e59f2218 	ldr	r2, [pc, #536]	; 0x714
 4f8:	e28d000c 	add	r0, sp, #12
 4fc:	e892001a 	ldm	r2, {r1, r3, r4}
 500:	e880001a 	stm	r0, {r1, r3, r4}
 504:	e59f220c 	ldr	r2, [pc, #524]	; 0x718
 508:	e1a0000d 	mov	r0, sp
 50c:	e892001a 	ldm	r2, {r1, r3, r4}
 510:	e880001a 	stm	r0, {r1, r3, r4}
 514:	e3a04000 	mov	r4, #0
 518:	ea000024 	b	0x5b0
 51c:	e59f01e4 	ldr	r0, [pc, #484]	; 0x708
 520:	e5900000 	ldr	r0, [r0]
 524:	e1a05000 	mov	r5, r0
 528:	e3c55c1e 	bic	r5, r5, #7680	; 0x1e00
 52c:	e28d000c 	add	r0, sp, #12
 530:	e7900104 	ldr	r0, [r0, r4, lsl #2]
 534:	e2400001 	sub	r0, r0, #1
 538:	e1855480 	orr	r5, r5, r0, lsl #9
 53c:	e59f01c4 	ldr	r0, [pc, #452]	; 0x708
 540:	e5805000 	str	r5, [r0]
 544:	e3a06001 	mov	r6, #1
 548:	e3a0e000 	mov	lr, #0
 54c:	ea000003 	b	0x560
 550:	e1a0010e 	lsl	r0, lr, #2
 554:	e2800102 	add	r0, r0, #-2147483648	; 0x80000000
 558:	e580e000 	str	lr, [r0]
 55c:	e28ee001 	add	lr, lr, #1
 560:	e35e0b01 	cmp	lr, #1024	; 0x400
 564:	3afffff9 	bcc	0x550
 568:	e3a0e000 	mov	lr, #0
 56c:	ea000007 	b	0x590
 570:	e1a0010e 	lsl	r0, lr, #2
 574:	e2800102 	add	r0, r0, #-2147483648	; 0x80000000
 578:	e5900000 	ldr	r0, [r0]
 57c:	e150000e 	cmp	r0, lr
 580:	0a000001 	beq	0x58c
 584:	e3a06000 	mov	r6, #0
 588:	ea000002 	b	0x598
 58c:	e28ee001 	add	lr, lr, #1
 590:	e35e0b01 	cmp	lr, #1024	; 0x400
 594:	3afffff5 	bcc	0x570
 598:	e1a00000 	nop			; (mov r0, r0)
 59c:	e3560000 	cmp	r6, #0
 5a0:	0a000001 	beq	0x5ac
 5a4:	e79d1104 	ldr	r1, [sp, r4, lsl #2]
 5a8:	ea000002 	b	0x5b8
 5ac:	e2844001 	add	r4, r4, #1
 5b0:	e3540003 	cmp	r4, #3
 5b4:	3affffd8 	bcc	0x51c
 5b8:	e1a00000 	nop			; (mov r0, r0)
 5bc:	e3560000 	cmp	r6, #0
 5c0:	0a000002 	beq	0x5d0
 5c4:	e1a00001 	mov	r0, r1
 5c8:	e28dd018 	add	sp, sp, #24
 5cc:	e8bd8070 	pop	{r4, r5, r6, pc}
 5d0:	e3a00000 	mov	r0, #0
 5d4:	eafffffb 	b	0x5c8


 5d8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
 5dc:	e1a04000 	mov	r4, r0
 5e0:	e1a05001 	mov	r5, r1
 5e4:	e3a02030 	mov	r2, #48	; 0x30
 5e8:	e1a01004 	mov	r1, r4
 5ec:	e59f0118 	ldr	r0, [pc, #280]	; 0x70c
 5f0:	ebfffe9c 	bl	f0068
 5f4:	e3550000 	cmp	r5, #0
 5f8:	1a000040 	bne	0x700
 5fc:	e59f2108 	ldr	r2, [pc, #264]	; 0x70c
 600:	e5921008 	ldr	r1, [r2, #8]
 604:	e3a07000 	mov	r7, #0
 608:	e08121a1 	add	r2, r1, r1, lsr #3
 60c:	e0822221 	add	r2, r2, r1, lsr #4
 610:	e08202a1 	add	r0, r2, r1, lsr #5
 614:	ea000002 	b	0x624
 618:	e59f20fc 	ldr	r2, [pc, #252]	; 0x71c
 61c:	e0400002 	sub	r0, r0, r2
 620:	e2877001 	add	r7, r7, #1
 624:	e59f20f0 	ldr	r2, [pc, #240]	; 0x71c
 628:	e1500002 	cmp	r0, r2
 62c:	2afffff9 	bcs	0x618
 630:	e59f00d0 	ldr	r0, [pc, #208]	; 0x708
 634:	e5906000 	ldr	r6, [r0]
 638:	e1a00000 	nop			; (mov r0, r0)
 63c:	e59f00c4 	ldr	r0, [pc, #196]	; 0x708
 640:	e590000c 	ldr	r0, [r0, #12]
 644:	e3100001 	tst	r0, #1
 648:	1afffffb 	bne	0x63c
 64c:	e59f00cc 	ldr	r0, [pc, #204]	; 0x720
 650:	e59f10b0 	ldr	r1, [pc, #176]	; 0x708
 654:	e5810000 	str	r0, [r1]
 658:	e1c10140 	bic	r0, r1, r0, asr #2
 65c:	e5807010 	str	r7, [r0, #16]
 660:	e59f00bc 	ldr	r0, [pc, #188]	; 0x724
 664:	e5810018 	str	r0, [r1, #24]
 668:	e59f60b8 	ldr	r6, [pc, #184]	; 0x728
 66c:	e1c10000 	bic	r0, r1, r0
 670:	e5806004 	str	r6, [r0, #4]
 674:	e59f60b0 	ldr	r6, [pc, #176]	; 0x72c
 678:	e5806008 	str	r6, [r0, #8]
 67c:	e3a00a02 	mov	r0, #8192	; 0x2000
 680:	e5810014 	str	r0, [r1, #20]
 684:	e1c10000 	bic	r0, r1, r0
 688:	e590000c 	ldr	r0, [r0, #12]
 68c:	e1a06000 	mov	r6, r0
 690:	e3866301 	orr	r6, r6, #67108864	; 0x4000000
 694:	e3866702 	orr	r6, r6, #524288	; 0x80000
 698:	e3866001 	orr	r6, r6, #1
 69c:	e1a00001 	mov	r0, r1
 6a0:	e580600c 	str	r6, [r0, #12]
 6a4:	e1a00000 	nop			; (mov r0, r0)
 6a8:	e59f0058 	ldr	r0, [pc, #88]	; 0x708
 6ac:	e590000c 	ldr	r0, [r0, #12]
 6b0:	e3100001 	tst	r0, #1
 6b4:	1afffffb 	bne	0x6a8
 6b8:	e59f004c 	ldr	r0, [pc, #76]	; 0x70c
 6bc:	ebffff83 	bl	0x4d0
 6c0:	e1a08000 	mov	r8, r0
 6c4:	e3580000 	cmp	r8, #0
 6c8:	1a000006 	bne	0x6e8
 6cc:	ebffff86 	bl	0x4ec
 6d0:	e5840004 	str	r0, [r4, #4]
 6d4:	e5940004 	ldr	r0, [r4, #4]
 6d8:	e3500000 	cmp	r0, #0
 6dc:	1a000001 	bne	0x6e8
 6e0:	e3e00000 	mvn	r0, #0
 6e4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
 6e8:	e59f0018 	ldr	r0, [pc, #24]	; 0x708
 6ec:	e590000c 	ldr	r0, [r0, #12]
 6f0:	e1a06000 	mov	r6, r0
 6f4:	e3866004 	orr	r6, r6, #4
 6f8:	e59f0008 	ldr	r0, [pc, #8]	; 0x708
 6fc:	e580600c 	str	r6, [r0, #12]
 700:	e1a00008 	mov	r0, r8
 704:	eafffff6 	b	0x6e4

 708:	01c01000
 70c:	00007968
 710:	0a5f0780
 714:	00007950
 718:	0000795c
 71c:	0002625a
 720:	0001338a
 724:	0010003f
 728:	a7cec93a
 72c:	00570008

 730:	0000000b
 734:	0000000a
 738:	00000009
 73c:	00000080
 740:	00000040
 744:	00000020
