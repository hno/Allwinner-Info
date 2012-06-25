ffff0000:	ea000008 	b	reset		; reset
ffff0004:	ea000006 	b	unimplemented	; _undefined_instruction
ffff0008:	ea000005 	b	unimplemented	; _software_interrupt
ffff000c:	ea000004 	b	unimplemented	; _prefetch_abort
ffff0010:	ea000003 	b	unimplemented	; _data_abort
ffff0014:	ea000002 	b	unimplemented	; _not_used
ffff0018:	ea000003 	b	irq		; _irq
ffff001c:	ea000000 	b	unimplemented	; _fiq
ffff0020:	ea000005 	b	fel		; FEL

unimplemented:
ffff0024:	eafffffe 	b	unimplemented

reset:
ffff0028:	e59ff110 	ldr	pc, =BROM

irq:
ffff002c:	e24ee004 	sub	lr, lr, #4
ffff0030:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff0034:	eb00073c 	bl	interrupt_handler	; 0xffff1d2c
ffff0038:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^

fel:
ffff003c:	e3a020d2 	mov	r2, #210	; 0xd2
ffff0040:	e121f002 	msr	CPSR_c, r2
ffff0044:	e3a0da02 	ldr	sp, =0x2000
ffff0048:	e10f0000 	mrs	r0, CPSR
ffff004c:	e3c0001f 	bic	r0, r0, #31
ffff0050:	e38000d3 	orr	r0, r0, #211	; 0xd3
ffff0054:	e121f000 	msr	CPSR_c, r0
ffff0058:	e3a0da07 	ldr	sp, =0x7000
ffff005c:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
ffff0060:	e3c00002 	bic	r0, r0, #2
ffff0064:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
ffff0068:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff006c:	e3c00001 	bic	r0, r0, #1
ffff0070:	e3c00b02 	bic	r0, r0, #2048	; 0x800
ffff0074:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
ffff0078:	e3c00004 	bic	r0, r0, #4
ffff007c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff0080:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff0084:	e3800a02 	orr	r0, r0, #8192	; 0x2000
ffff0088:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff008c:	e59f10b0 	ldr	r1, =0x01c20000
ffff0090:	e3a02801 	mov	r2, 65536	; 0x10000
ffff0094:	e5913054 	ldr	r3, [r1, #84]	; 0x54
ffff0098:	e3c33803 	bic	r3, r3, #196608	; 0x30000
ffff009c:	e1834002 	orr	r4, r3, r2
ffff00a0:	e5814054 	str	r4, [r1, #84]	; 0x54
ffff00a4:	e3a02010 	mov	r2, #16
ffff00a8:	e5913054 	ldr	r3, [r1, #84]	; 0x54
ffff00ac:	e3c330ff 	bic	r3, r3, #255	; 0xff
ffff00b0:	e3c33c0f 	bic	r3, r3, #3840	; 0xf00
ffff00b4:	e1834002 	orr	r4, r3, r2
ffff00b8:	e5814054 	str	r4, [r1, #84]	; 0x54
ffff00bc:	e3a02c01 	mov	r2, #256	; 0x100
ffff00c0:	e59130cc 	ldr	r3, [r1, #204]	; 0xcc
ffff00c4:	e3c33c01 	bic	r3, r3, #256	; 0x100
ffff00c8:	e1834002 	orr	r4, r3, r2
ffff00cc:	e58140cc 	str	r4, [r1, #204]	; 0xcc
ffff00d0:	e3020710 	movw	r0, #10000	; 0x2710
ffff00d4:	e2500001 	subs	r0, r0, #1
ffff00d8:	1afffffd 	bne	0xffff00d4
ffff00dc:	e3a02001 	mov	r2, #1
ffff00e0:	e5913060 	ldr	r3, [r1, #96]	; 0x60
ffff00e4:	e3c33001 	bic	r3, r3, #1
ffff00e8:	e1834002 	orr	r4, r3, r2
ffff00ec:	e5814060 	str	r4, [r1, #96]	; 0x60
ffff00f0:	e3a02001 	mov	r2, #1
ffff00f4:	e59130cc 	ldr	r3, [r1, #204]	; 0xcc
ffff00f8:	e3c33001 	bic	r3, r3, #1
ffff00fc:	e1834002 	orr	r4, r3, r2
ffff0100:	e58140cc 	str	r4, [r1, #204]	; 0xcc
ffff0104:	e3a00000 	mov	r0, #0
ffff0108:	ee080f15 	mcr	15, 0, r0, cr8, cr5, {0}
ffff010c:	ee080f16 	mcr	15, 0, r0, cr8, cr6, {0}
ffff0110:	e3a00000 	mov	r0, #0
ffff0114:	ee020f50 	mcr	15, 0, r0, cr2, cr0, {2}
ffff0118:	e3a00802 	mov	r0, #131072	; 0x20000
ffff011c:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}
ffff0120:	eb0008ea 	bl	f_24d0
ffff0124:	ee130f10 	mrc	15, 0, r0, cr3, cr0, {0}
ffff0128:	e59f0018 	ldr	r0, =0x55555555
ffff012c:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
ffff0130:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff0134:	e3800001 	orr	r0, r0, #1
ffff0138:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff013c:	eb0007b2 	bl	f_200c

f_014c:
ffff014c:	e92d4070 	push	{r4, r5, r6, lr}
ffff0150:	e1a03000 	mov	r3, r0
ffff0154:	e1a04001 	mov	r4, r1
ffff0158:	ea000001 	b	0xffff0164
ffff015c:	e4d45001 	ldrb	r5, [r4], #1
ffff0160:	e4c35001 	strb	r5, [r3], #1
ffff0164:	e1b05002 	movs	r5, r2
ffff0168:	e2422001 	sub	r2, r2, #1
ffff016c:	1afffffa 	bne	0xffff015c
ffff0170:	e8bd8070 	pop	{r4, r5, r6, pc}

void memset(r0 = dest, r1 = value, r2 = size);
memset:
ffff0174:	e92d4030 	push	{r4, r5, lr}
ffff0178:	e1a03000 	mov	r3, r0
ffff017c:	ea000000 	b	0xffff0184
ffff0180:	e4c31001 	strb	r1, [r3], #1
ffff0184:	e1b04002 	movs	r4, r2
ffff0188:	e2422001 	sub	r2, r2, #1
ffff018c:	1afffffb 	bne	0xffff0180
ffff0190:	e8bd8030 	pop	{r4, r5, pc}

void delay_10000(void);
delay_10000:
ffff0194:	e3a00000 	mov	r0, #0
ffff0198:	e320f000 	nop	{0}
ffff019c:	ea000000 	b	0xffff01a4
ffff01a0:	e2800001 	add	r0, r0, #1
ffff01a4:	e3021710 	movw	r1, #10000	; 0x2710
ffff01a8:	e1500001 	cmp	r0, r1
ffff01ac:	3afffffb 	bcc	0xffff01a0
ffff01b0:	e12fff1e 	bx	lr

void delay(r0 = N);
delay:
ffff01b4:	e92d4070 	push	{r4, r5, r6, lr}
ffff01b8:	e1a05000 	mov	r5, r0
ffff01bc:	e3a04000 	mov	r4, #0
ffff01c0:	e320f000 	nop	{0}
ffff01c4:	ea000001 	b	0xffff01d0
ffff01c8:	ebfffff1 	bl	delay_10000
ffff01cc:	e2844001 	add	r4, r4, #1
ffff01d0:	e1540005 	cmp	r4, r5
ffff01d4:	3afffffb 	bcc	0xffff01c8
ffff01d8:	e8bd8070 	pop	{r4, r5, r6, pc}

f_NOP1:
ffff01dc:	e12fff1e 	bx	lr

f_NOP2:
ffff01e0:	e12fff1e 	bx	lr

f_01e4:
ffff01e4:	e3a01000 	mov	r1, #0
ffff01e8:	ea000000 	b	0xffff01f0
ffff01ec:	e2811001 	add	r1, r1, #1
ffff01f0:	e5d02018 	ldrb	r2, [r0, #24]
ffff01f4:	e3520001 	cmp	r2, #1
ffff01f8:	0afffffb 	beq	0xffff01ec
ffff01fc:	e12fff1e 	bx	lr

f_0200:
ffff0200:	e92d4010 	push	{r4, lr}
ffff0204:	e1a04000 	mov	r4, r0
ffff0208:	e3a02022 	mov	r2, #34	; 0x22
ffff020c:	e3a01000 	mov	r1, #0
ffff0210:	e1a00004 	mov	r0, r4
ffff0214:	ebffffd6 	bl	memset
ffff0218:	e3a00000 	mov	r0, #0
ffff021c:	e5c40020 	strb	r0, [r4, #32]
ffff0220:	e5c40021 	strb	r0, [r4, #33]	; 0x21
ffff0224:	e8bd8010 	pop	{r4, pc}

f_0228:
ffff0228:	e5801000 	str	r1, [r0]
ffff022c:	e5802004 	str	r2, [r0, #4]
ffff0230:	e3a03000 	mov	r3, #0
ffff0234:	e5c03008 	strb	r3, [r0, #8]
ffff0238:	e5803010 	str	r3, [r0, #16]
ffff023c:	e3a03001 	mov	r3, #1
ffff0240:	e5c03018 	strb	r3, [r0, #24]
ffff0244:	e12fff1e 	bx	lr

f_0248:
ffff0248:	e92d4070 	push	{r4, r5, r6, lr}
ffff024c:	e24dd020 	sub	sp, sp, #32
ffff0250:	e1a04000 	mov	r4, r0
ffff0254:	e1a05001 	mov	r5, r1
ffff0258:	e3a06000 	mov	r6, #0
ffff025c:	e5946034 	ldr	r6, [r4, #52]	; 0x34
ffff0260:	e1a00006 	mov	r0, r6
ffff0264:	ebffffde 	bl	f_01e4
ffff0268:	e3a02020 	mov	r2, #32
ffff026c:	e3a01000 	mov	r1, #0
ffff0270:	e1a0000d 	mov	r0, sp
ffff0274:	ebffffbe 	bl	memset
ffff0278:	e1a00004 	mov	r0, r4
ffff027c:	eb0001af 	bl	f_0940
ffff0280:	e3a02020 	mov	r2, #32
ffff0284:	e1a0100d 	mov	r1, sp
ffff0288:	e1a00006 	mov	r0, r6
ffff028c:	ebffffe5 	bl	f_0228
ffff0290:	e3a00001 	mov	r0, #1
ffff0294:	e5c50020 	strb	r0, [r5, #32]
ffff0298:	e3a02000 	mov	r2, #0
ffff029c:	e1a01006 	mov	r1, r6
ffff02a0:	e1a00004 	mov	r0, r4
ffff02a4:	eb0004d2 	bl	f_15f4
ffff02a8:	e1a00006 	mov	r0, r6
ffff02ac:	ebffffcc 	bl	f_01e4
ffff02b0:	e3a02022 	mov	r2, #34	; 0x22
ffff02b4:	e1a00005 	mov	r0, r5
ffff02b8:	e5961000 	ldr	r1, [r6]
ffff02bc:	ebffffa2 	bl	f_014c
ffff02c0:	e28dd020 	add	sp, sp, #32
ffff02c4:	e8bd8070 	pop	{r4, r5, r6, pc}

f_02c8:
ffff02c8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff02cc:	e1a05000 	mov	r5, r0
ffff02d0:	e1a06001 	mov	r6, r1
ffff02d4:	e1a07002 	mov	r7, r2
ffff02d8:	e1a04003 	mov	r4, r3
ffff02dc:	e3a08000 	mov	r8, #0
ffff02e0:	e3550000 	cmp	r5, #0
ffff02e4:	1a000001 	bne	0xffff02f0
ffff02e8:	e5968034 	ldr	r8, [r6, #52]	; 0x34
ffff02ec:	ea000000 	b	0xffff02f4
ffff02f0:	e5968030 	ldr	r8, [r6, #48]	; 0x30
ffff02f4:	e1a00008 	mov	r0, r8
ffff02f8:	ebffffb9 	bl	f_01e4
ffff02fc:	e3a00002 	mov	r0, #2
ffff0300:	e5c70020 	strb	r0, [r7, #32]
ffff0304:	e1a00006 	mov	r0, r6
ffff0308:	eb00018c 	bl	f_0940
ffff030c:	e1a00008 	mov	r0, r8
ffff0310:	e8940006 	ldm	r4, {r1, r2}
ffff0314:	ebffffc3 	bl	f_0228
ffff0318:	e3a02000 	mov	r2, #0
ffff031c:	e1a01008 	mov	r1, r8
ffff0320:	e1a00006 	mov	r0, r6
ffff0324:	eb0004b2 	bl	f_15f4
ffff0328:	e1a00008 	mov	r0, r8
ffff032c:	ebffffac 	bl	f_01e4
ffff0330:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

f_0334:
ffff0334:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff0338:	e1a04000 	mov	r4, r0
ffff033c:	e1a05001 	mov	r5, r1
ffff0340:	e1a06002 	mov	r6, r2
ffff0344:	e5d57010 	ldrb	r7, [r5, #16]
ffff0348:	e3570011 	cmp	r7, #17
ffff034c:	0a000002 	beq	0xffff035c
ffff0350:	e3570012 	cmp	r7, #18
ffff0354:	1a00000e 	bne	0xffff0394
ffff0358:	ea000006 	b	0xffff0378
ffff035c:	e320f000 	nop	{0}
ffff0360:	e1a03006 	mov	r3, r6
ffff0364:	e1a02005 	mov	r2, r5
ffff0368:	e1a01004 	mov	r1, r4
ffff036c:	e3a00001 	mov	r0, #1
ffff0370:	ebffffd4 	bl	f_02c8
ffff0374:	ea000008 	b	0xffff039c
ffff0378:	e320f000 	nop	{0}
ffff037c:	e1a03006 	mov	r3, r6
ffff0380:	e1a02005 	mov	r2, r5
ffff0384:	e1a01004 	mov	r1, r4
ffff0388:	e3a00000 	mov	r0, #0
ffff038c:	ebffffcd 	bl	f_02c8
ffff0390:	ea000001 	b	0xffff039c
ffff0394:	e320f000 	nop	{0}
ffff0398:	e320f000 	nop	{0}
ffff039c:	e320f000 	nop	{0}
ffff03a0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

f_03a4:
ffff03a4:	e92d41ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
ffff03a8:	e1a04000 	mov	r4, r0
ffff03ac:	e1a05001 	mov	r5, r1
ffff03b0:	e1a07002 	mov	r7, r2
ffff03b4:	e3a06000 	mov	r6, #0
ffff03b8:	e5946030 	ldr	r6, [r4, #48]	; 0x30
ffff03bc:	e3a00003 	mov	r0, #3
ffff03c0:	e5c50020 	strb	r0, [r5, #32]
ffff03c4:	e59f02fc 	ldr	r0, =AWUS
ffff03c8:	e58d0000 	str	r0, [sp]
ffff03cc:	e5950004 	ldr	r0, [r5, #4]
ffff03d0:	e58d0004 	str	r0, [sp, #4]
ffff03d4:	e3a00000 	mov	r0, #0
ffff03d8:	e58d0008 	str	r0, [sp, #8]
ffff03dc:	e5cd000c 	strb	r0, [sp, #12]
ffff03e0:	e1a00004 	mov	r0, r4
ffff03e4:	eb000155 	bl	f_0940
ffff03e8:	e3a0200d 	mov	r2, #13
ffff03ec:	e1a0100d 	mov	r1, sp
ffff03f0:	e1a00006 	mov	r0, r6
ffff03f4:	ebffff8b 	bl	f_0228
ffff03f8:	e3a02000 	mov	r2, #0
ffff03fc:	e1a01006 	mov	r1, r6
ffff0400:	e1a00004 	mov	r0, r4
ffff0404:	eb00047a 	bl	f_15f4
ffff0408:	e1a00006 	mov	r0, r6
ffff040c:	ebffff74 	bl	f_01e4
ffff0410:	e8bd81ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, pc}

f_0414:
ffff0414:	e92d4030 	push	{r4, r5, lr}
ffff0418:	e24dd024 	sub	sp, sp, #36	; 0x24
ffff041c:	e1a05000 	mov	r5, r0
ffff0420:	e1a04001 	mov	r4, r1
ffff0424:	e1a0000d 	mov	r0, sp
ffff0428:	ebffff74 	bl	f_0200
ffff042c:	e1a0100d 	mov	r1, sp
ffff0430:	e1a00005 	mov	r0, r5
ffff0434:	ebffff83 	bl	f_0248
ffff0438:	e1a02004 	mov	r2, r4
ffff043c:	e1a0100d 	mov	r1, sp
ffff0440:	e1a00005 	mov	r0, r5
ffff0444:	ebffffba 	bl	f_0334
ffff0448:	e1a02004 	mov	r2, r4
ffff044c:	e1a0100d 	mov	r1, sp
ffff0450:	e1a00005 	mov	r0, r5
ffff0454:	ebffffd2 	bl	f_03a4
ffff0458:	e3a00000 	mov	r0, #0
ffff045c:	e5c40008 	strb	r0, [r4, #8]
ffff0460:	e28dd024 	add	sp, sp, #36	; 0x24
ffff0464:	e8bd8030 	pop	{r4, r5, pc}

f_0468:
ffff0468:	e92d4070 	push	{r4, r5, r6, lr}
ffff046c:	e1a04000 	mov	r4, r0
ffff0470:	e1a05001 	mov	r5, r1
ffff0474:	e1a01005 	mov	r1, r5
ffff0478:	e1a00004 	mov	r0, r4
ffff047c:	ebffffe4 	bl	f_0414
ffff0480:	e8bd8070 	pop	{r4, r5, r6, pc}

# f_0484(u32 a, u32 b)
f_0484:
ffff0484:	e92d4070 	push	{r4, r5, r6, lr}
ffff0488:	e1a04000 	mov	r4, r0
ffff048c:	e1a05001 	mov	r5, r1
				memset(0x7d04, 0, 0x12);
ffff0490:	e3a0200c 	mov	r2, #12
ffff0494:	e3a01000 	mov	r1, #0
ffff0498:	e59f022c 	ldr	r0, =0x00007d04
ffff049c:	ebffff34 	bl	memset

ffff04a0:	e59f0224 	ldr	r0, =0x00007d04
ffff04a4:	e5804000 	str	r4, [r0]	[=0x00007d04]
ffff04a8:	e5805004 	str	r5, [r0, #4]	[=0x00007d08]
ffff04ac:	e3a00002 	mov	r0, #2
ffff04b0:	e59f1214 	ldr	r1, =0x00007d04
ffff04b4:	e5c10008 	strb	r0, [r1, #8]	[=0x00007d0c]
ffff04b8:	e2810000 	add	r0, r1, #0
ffff04bc:	e8bd8070 	pop	{r4, r5, r6, pc}

handle_VERSION:
ffff04c0:	e92d4030 	push	{r4, r5, lr}
ffff04c4:	e24dd024 	sub	sp, sp, #36	; 0x24
ffff04c8:	e1a04000 	mov	r4, r0
ffff04cc:	e3a05000 	mov	r5, #0
ffff04d0:	e3a02020 	mov	r2, #32
ffff04d4:	e3a01000 	mov	r1, #0
ffff04d8:	e28d0004 	add	r0, sp, #4
ffff04dc:	ebffff24 	bl	memset
ffff04e0:	e3a02008 	mov	r2, #8
ffff04e4:	e28f1f79 	ldr	r1, =AWUSBFEX
ffff04e8:	e28d0004 	add	r0, sp, #4
ffff04ec:	ebffff16 	bl	f_014c
ffff04f0:	e59f01e4 	ldr	r0, =0x00162300
ffff04f4:	e58d000c 	str	r0, [sp, #12]
ffff04f8:	e3a00001 	mov	r0, #1
ffff04fc:	e58d0010 	str	r0, [sp, #16]
ffff0500:	e1cd01b4 	strh	r0, [sp, #20]
ffff0504:	e3a00044 	mov	r0, #68	; 0x44
ffff0508:	e5cd0016 	strb	r0, [sp, #22]
ffff050c:	e3a00008 	mov	r0, #8
ffff0510:	e5cd0017 	strb	r0, [sp, #23]
ffff0514:	e3a00c7e 	ldr	r0, =0x7e00
ffff0518:	e58d0018 	str	r0, [sp, #24]
ffff051c:	e3a01020 	mov	r1, #32
ffff0520:	e28d0004 	add	r0, sp, #4
ffff0524:	ebffffd6 	bl	f_0484
ffff0528:	e1a05000 	mov	r5, r0
ffff052c:	e1a01005 	mov	r1, r5
ffff0530:	e1a00004 	mov	r0, r4
ffff0534:	ebffffb6 	bl	f_0414
ffff0538:	e28dd024 	add	sp, sp, #36	; 0x24
ffff053c:	e8bd8030 	pop	{r4, r5, pc}

f_0540:
ffff0540:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
ffff0544:	e1a04000 	mov	r4, r0
ffff0548:	e3a05000 	mov	r5, #0
ffff054c:	e3a02010 	mov	r2, #16
ffff0550:	e3a01000 	mov	r1, #0
ffff0554:	e1a0000d 	mov	r0, sp
ffff0558:	ebffff05 	bl	memset
ffff055c:	e3a00001 	mov	r0, #1
ffff0560:	e1cd00b0 	strh	r0, [sp]
ffff0564:	e3a00000 	mov	r0, #0
ffff0568:	e1cd00b2 	strh	r0, [sp, #2]
ffff056c:	e3a01010 	mov	r1, #16
ffff0570:	e1a0000d 	mov	r0, sp
ffff0574:	ebffffc2 	bl	f_0484
ffff0578:	e1a05000 	mov	r5, r0
ffff057c:	e1a01005 	mov	r1, r5
ffff0580:	e1a00004 	mov	r0, r4
ffff0584:	ebffffa2 	bl	f_0414
ffff0588:	e8bd807f 	pop	{r0, r1, r2, r3, r4, r5, r6, pc}

f_058c:
ffff058c:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
ffff0590:	e1a04000 	mov	r4, r0
ffff0594:	e3a05000 	mov	r5, #0
ffff0598:	e3a02010 	mov	r2, #16
ffff059c:	e3a01000 	mov	r1, #0
ffff05a0:	e1a0000d 	mov	r0, sp
ffff05a4:	ebfffef2 	bl	memset
ffff05a8:	e3a00f7d 	mov	r0, #500	; 0x1f4
ffff05ac:	e1cd00b2 	strh	r0, [sp, #2]
ffff05b0:	e3a00002 	mov	r0, #2
ffff05b4:	e1cd00b0 	strh	r0, [sp]
ffff05b8:	e3a01010 	mov	r1, #16
ffff05bc:	e1a0000d 	mov	r0, sp
ffff05c0:	ebffffaf 	bl	f_0484
ffff05c4:	e1a05000 	mov	r5, r0
ffff05c8:	e1a01005 	mov	r1, r5
ffff05cc:	e1a00004 	mov	r0, r4
ffff05d0:	ebffff8f 	bl	f_0414
ffff05d4:	e8bd807f 	pop	{r0, r1, r2, r3, r4, r5, r6, pc}

f_05d8:
ffff05d8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff05dc:	e1a06000 	mov	r6, r0
ffff05e0:	e1a04001 	mov	r4, r1
ffff05e4:	e3a05000 	mov	r5, #0
ffff05e8:	e3a07000 	mov	r7, #0
ffff05ec:	e3540000 	cmp	r4, #0
ffff05f0:	1a000001 	bne	0xffff05fc
ffff05f4:	e3a00001 	mov	r0, #1
ffff05f8:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff05fc:	e1a05004 	mov	r5, r4
ffff0600:	e1a04005 	mov	r4, r5
ffff0604:	e5950008 	ldr	r0, [r5, #8]
ffff0608:	e3500000 	cmp	r0, #0
ffff060c:	1a000001 	bne	0xffff0618
ffff0610:	e3a00001 	mov	r0, #1
ffff0614:	eafffff7 	b	0xffff05f8
ffff0618:	e5951008 	ldr	r1, [r5, #8]
ffff061c:	e5950004 	ldr	r0, [r5, #4]
ffff0620:	ebffff97 	bl	f_0484
ffff0624:	e1a07000 	mov	r7, r0
ffff0628:	e1a01007 	mov	r1, r7
ffff062c:	e1a00006 	mov	r0, r6
ffff0630:	ebffff77 	bl	f_0414
ffff0634:	e3a00000 	mov	r0, #0
ffff0638:	eaffffee 	b	0xffff05f8

f_063c:
ffff063c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff0640:	e1a06000 	mov	r6, r0
ffff0644:	e1a04001 	mov	r4, r1
ffff0648:	e3a05000 	mov	r5, #0
ffff064c:	e3a07000 	mov	r7, #0
ffff0650:	e3540000 	cmp	r4, #0
ffff0654:	1a000001 	bne	0xffff0660
ffff0658:	e3a00001 	mov	r0, #1
ffff065c:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff0660:	e1a05004 	mov	r5, r4
ffff0664:	e1a04005 	mov	r4, r5
ffff0668:	e5950008 	ldr	r0, [r5, #8]
ffff066c:	e3500000 	cmp	r0, #0
ffff0670:	1a000001 	bne	0xffff067c
ffff0674:	e3a00001 	mov	r0, #1
ffff0678:	eafffff7 	b	0xffff065c
ffff067c:	e5951008 	ldr	r1, [r5, #8]
ffff0680:	e5950004 	ldr	r0, [r5, #4]
ffff0684:	ebffff7e 	bl	f_0484
ffff0688:	e1a07000 	mov	r7, r0
ffff068c:	e1a01007 	mov	r1, r7
ffff0690:	e1a00006 	mov	r0, r6
ffff0694:	ebffff5e 	bl	f_0414
ffff0698:	e3a00000 	mov	r0, #0
ffff069c:	eaffffee 	b	0xffff065c

f_06a0:
ffff06a0:	e1a03000 	mov	r3, r0
ffff06a4:	e3a02000 	mov	r2, #0
ffff06a8:	e3510000 	cmp	r1, #0
ffff06ac:	1a000001 	bne	0xffff06b8
ffff06b0:	e3e00000 	mvn	r0, #0
ffff06b4:	e12fff1e 	bx	lr
ffff06b8:	e1a02001 	mov	r2, r1
ffff06bc:	e1a01002 	mov	r1, r2
ffff06c0:	e5920004 	ldr	r0, [r2, #4]
ffff06c4:	eafffffa 	b	0xffff06b4

AWUS:
ffff06c8:	"AWUS"

AWUSBFEX:
ffff06d0:	"AWUSBFEX",0

f_06e0:
ffff06e0:	e92d41fc 	push	{r2, r3, r4, r5, r6, r7, r8, lr}
ffff06e4:	e1a04000 	mov	r4, r0
ffff06e8:	e1a05001 	mov	r5, r1
ffff06ec:	e1a06002 	mov	r6, r2
ffff06f0:	e3a07000 	mov	r7, #0
ffff06f4:	e3a02008 	mov	r2, #8
ffff06f8:	e3a01000 	mov	r1, #0
ffff06fc:	e1a0000d 	mov	r0, sp
ffff0700:	ebfffe9b 	bl	memset
ffff0704:	e30f0fff 	movw	r0, #65535	; 0xffff
ffff0708:	e1cd00b0 	strh	r0, [sp]
ffff070c:	e1cd50b2 	strh	r5, [sp, #2]
ffff0710:	e5cd6004 	strb	r6, [sp, #4]
ffff0714:	e3a01008 	mov	r1, #8
ffff0718:	e1a0000d 	mov	r0, sp
ffff071c:	ebffff58 	bl	f_0484
ffff0720:	e1a07000 	mov	r7, r0
ffff0724:	e1a01007 	mov	r1, r7
ffff0728:	e1a00004 	mov	r0, r4
ffff072c:	ebffff38 	bl	f_0414
ffff0730:	e8bd81fc 	pop	{r2, r3, r4, r5, r6, r7, r8, pc}

f_0734:
ffff0734:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff0738:	e1a04000 	mov	r4, r0
ffff073c:	e1a05001 	mov	r5, r1
ffff0740:	e1a06002 	mov	r6, r2
ffff0744:	e3a07000 	mov	r7, #0
ffff0748:	e1a02006 	mov	r2, r6
ffff074c:	e3a01000 	mov	r1, #0
ffff0750:	e1a00005 	mov	r0, r5
ffff0754:	ebfffe86 	bl	memset
ffff0758:	e1a01006 	mov	r1, r6
ffff075c:	e1a00005 	mov	r0, r5
ffff0760:	ebffff47 	bl	f_0484
ffff0764:	e1a07000 	mov	r7, r0
ffff0768:	e1a01007 	mov	r1, r7
ffff076c:	e1a00004 	mov	r0, r4
ffff0770:	ebffff3c 	bl	f_0468
ffff0774:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

f_0778:
ffff0778:	e92d47ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff077c:	e1a04000 	mov	r4, r0
ffff0780:	e3a05000 	mov	r5, #0
ffff0784:	e3a06000 	mov	r6, #0
ffff0788:	e3a09000 	mov	r9, #0
ffff078c:	e3a0a001 	mov	sl, #1
ffff0790:	e3a02010 	mov	r2, #16
ffff0794:	e1a0100d 	mov	r1, sp
ffff0798:	e1a00004 	mov	r0, r4
ffff079c:	ebffffe4 	bl	f_0734
ffff07a0:	e1a0500d 	mov	r5, sp
ffff07a4:	e1d560b0 	ldrh	r6, [r5]
ffff07a8:	e1d590b2 	ldrh	r9, [r5, #2]
ffff07ac:	e3560010 	cmp	r6, #16
ffff07b0:	0a000022 	beq	0xffff0840		0x0010
ffff07b4:	ca000008 	bgt	0xffff07dc		>0x0010
ffff07b8:	e3560001 	cmp	r6, #1			
ffff07bc:	0a00000e 	beq	0xffff07fc		0x0001
ffff07c0:	e3560002 	cmp	r6, #2
ffff07c4:	0a000011 	beq	0xffff0810		0x0002
ffff07c8:	e3560003 	cmp	r6, #3
ffff07cc:	0a000011 	beq	0xffff0818		0x0003
ffff07d0:	e3560004 	cmp	r6, #4
ffff07d4:	1a000038 	bne	0xffff08bc		0x0004
ffff07d8:	ea000013 	b	0xffff082c		0x00?? < 0x0010

# >0x0010
ffff07dc:	e3e00c01 	mvn	r0, #256	; 0x100
ffff07e0:	e0900006 	adds	r0, r0, r6
ffff07e4:	0a000017 	beq	0xffff0848	0x0100
ffff07e8:	e3500001 	cmp	r0, #1
ffff07ec:	0a000021 	beq	0xffff0878	0x0101
ffff07f0:	e3500002 	cmp	r0, #2
ffff07f4:	1a000030 	bne	0xffff08bc	0x0102
ffff07f8:	ea000018 	b	0xffff0860	0x????

# 0x0001
ffff07fc:	e320f000 	nop	{0}
ffff0800:	e1a00004 	mov	r0, r4
ffff0804:	ebffff2d 	bl	handle_VERSION
ffff0808:	e3a0a000 	mov	sl, #0
ffff080c:	ea00002d 	b	0xffff08c8

# 0x0002:
ffff0810:	e320f000 	nop	{0}
ffff0814:	ea00002b 	b	0xffff08c8

# 0x0003:
ffff0818:	e320f000 	nop	{0}
ffff081c:	e1a00004 	mov	r0, r4
ffff0820:	ebffff59 	bl	f_058c
ffff0824:	e3a0a000 	mov	sl, #0
ffff0828:	ea000026 	b	0xffff08c8

# 0x00?? < 0x0010
ffff082c:	e320f000 	nop	{0}
ffff0830:	e1a00004 	mov	r0, r4
ffff0834:	ebffff41 	bl	f_0540
ffff0838:	e3a0a000 	mov	sl, #0
ffff083c:	ea000021 	b	0xffff08c8

# 0x0010
ffff0840:	e320f000 	nop	{0}
ffff0844:	ea00001f 	b	0xffff08c8

# 0x0100
ffff0848:	e320f000 	nop	{0}
ffff084c:	e1a0100d 	mov	r1, sp
ffff0850:	e1a00004 	mov	r0, r4
ffff0854:	ebffff5f 	bl	f_05d8
ffff0858:	e1a0a000 	mov	sl, r0
ffff085c:	ea000019 	b	0xffff08c8

# 0x????
ffff0860:	e320f000 	nop	{0}
ffff0864:	e1a0100d 	mov	r1, sp
ffff0868:	e1a00004 	mov	r0, r4
ffff086c:	ebffff72 	bl	f_063c
ffff0870:	e1a0a000 	mov	sl, r0
ffff0874:	ea000013 	b	0xffff08c8

# 0x0101
ffff0878:	e320f000 	nop	{0}
ffff087c:	e3a07000 	mov	r7, #0
ffff0880:	e1a0100d 	mov	r1, sp
ffff0884:	e1a00004 	mov	r0, r4
ffff0888:	ebffff84 	bl	f_06a0
ffff088c:	e1a07000 	mov	r7, r0
ffff0890:	e3a0a000 	mov	sl, #0
ffff0894:	e1a0200a 	mov	r2, sl
ffff0898:	e1a01009 	mov	r1, r9
ffff089c:	e1a00004 	mov	r0, r4
ffff08a0:	ebffff8e 	bl	f_06e0
ffff08a4:	e1a00004 	mov	r0, r4
ffff08a8:	eb000667 	bl	f_224c
ffff08ac:	e1a08007 	mov	r8, r7
ffff08b0:	e1a07008 	mov	r7, r8
ffff08b4:	e12fff38 	blx	r8
ffff08b8:	e8bd87ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}

# 0x0102
ffff08bc:	e320f000 	nop	{0}
ffff08c0:	e3a0a001 	mov	sl, #1
ffff08c4:	e320f000 	nop	{0}

ffff08c8:	e320f000 	nop	{0}
ffff08cc:	e1a0200a 	mov	r2, sl
ffff08d0:	e1a01009 	mov	r1, r9
ffff08d4:	e1a00004 	mov	r0, r4
ffff08d8:	ebffff80 	bl	f_06e0
ffff08dc:	eafffff5 	b	0xffff08b8

f_08e0:
ffff08e0:	e92d4070 	push	{r4, r5, r6, lr}
ffff08e4:	e1a05000 	mov	r5, r0
ffff08e8:	e3a04000 	mov	r4, #0
ffff08ec:	ea000003 	b	0xffff0900
ffff08f0:	ebfffe39 	bl	f_NOP1
ffff08f4:	e1a00005 	mov	r0, r5
ffff08f8:	ebffff9e 	bl	f_0778
ffff08fc:	e2844001 	add	r4, r4, #1
ffff0900:	eafffffa 	b	0xffff08f0

f0904:
ffff0904:	e3a01000 	mov	r1, #0
ffff0908:	e5c01018 	strb	r1, [r0, #24]
ffff090c:	e12fff1e 	bx	lr

f0910:
ffff0910:	e3a01000 	mov	r1, #0
ffff0914:	e5c01018 	strb	r1, [r0, #24]
ffff0918:	e12fff1e 	bx	lr

f091c:
ffff091c:	e3a01000 	mov	r1, #0
ffff0920:	e5c01018 	strb	r1, [r0, #24]
ffff0924:	e12fff1e 	bx	lr

f_0928:
ffff0928:	e3a00000 	mov	r0, #0
ffff092c:	e59f1e20 	ldr	r1, =0x1c20000
ffff0930:	e5910444 	ldr	r0, [r1, #1092]	; 0x444	= 0x1c20444 = INTC 0x44
ffff0934:	e3800040 	orr	r0, r0, #64	; 0x40
ffff0938:	e5810444 	str	r0, [r1, #1092]	; 0x444 = 0x1c20444 = INTC 0x44
ffff093c:	e12fff1e 	bx	lr

f_0940:
ffff0940:	e1a01000 	mov	r1, r0
ffff0944:	e10f0000 	mrs	r0, CPSR
ffff0948:	e3800080 	orr	r0, r0, #128	; 0x80
ffff094c:	e121f000 	msr	CPSR_c, r0
ffff0950:	e12fff1e 	bx	lr

f_0954:
ffff0954:	e1a01000 	mov	r1, r0
ffff0958:	e10f0000 	mrs	r0, CPSR
ffff095c:	e3c00080 	bic	r0, r0, #128	; 0x80
ffff0960:	e121f000 	msr	CPSR_c, r0
ffff0964:	e12fff1e 	bx	lr

/*
void set_epind(id) {
	usb0->epind = id;
}
*/
set_epind:
ffff0968:	e59f1de8 	ldr	r1, =USB0_BASE
ffff096c:	e5c10042 	strb	r0, [r1, #66]	; 0x42	     = USB0_EPIND
ffff0970:	e12fff1e 	bx	lr

/*
int get_epind(id) {
	return usb0->epind;
}
*/
get_epind:
ffff0974:	e59f0ddc 	ldr	r0, =USB0_BASE
ffff0978:	e5d00042 	ldrb	r0, [r0, #66]	; 0x42
ffff097c:	e12fff1e 	bx	lr

f_0980:
ffff0980:	e3a01012 	mov	r1, #18
ffff0984:	e5c01000 	strb	r1, [r0]
ffff0988:	e3a01001 	mov	r1, #1
ffff098c:	e5c01001 	strb	r1, [r0, #1]
ffff0990:	e3a01e11 	mov	r1, #272	; 0x110
ffff0994:	e1c010b2 	strh	r1, [r0, #2]
ffff0998:	e3a01000 	mov	r1, #0
ffff099c:	e5c01004 	strb	r1, [r0, #4]
ffff09a0:	e5c01005 	strb	r1, [r0, #5]
ffff09a4:	e5c01006 	strb	r1, [r0, #6]
ffff09a8:	e3a01040 	mov	r1, #64	; 0x40
ffff09ac:	e5c01007 	strb	r1, [r0, #7]
ffff09b0:	e3011f3a 	movw	r1, #7994	; 0x1f3a
ffff09b4:	e1c010b8 	strh	r1, [r0, #8]
ffff09b8:	e30e1fe8 	movw	r1, #61416	; 0xefe8
ffff09bc:	e1c010ba 	strh	r1, [r0, #10]
ffff09c0:	e30012b3 	movw	r1, #691	; 0x2b3
ffff09c4:	e1c010bc 	strh	r1, [r0, #12]
ffff09c8:	e3a01000 	mov	r1, #0
ffff09cc:	e5c0100e 	strb	r1, [r0, #14]
ffff09d0:	e5c0100f 	strb	r1, [r0, #15]
ffff09d4:	e5c01010 	strb	r1, [r0, #16]
ffff09d8:	e3a01001 	mov	r1, #1
ffff09dc:	e5c01011 	strb	r1, [r0, #17]
ffff09e0:	e12fff1e 	bx	lr

f_09e4:
ffff09e4:	e3a0100a 	mov	r1, #10
ffff09e8:	e5c01000 	strb	r1, [r0]
ffff09ec:	e3a01002 	mov	r1, #2
ffff09f0:	e5c01001 	strb	r1, [r0, #1]
ffff09f4:	e3a01020 	mov	r1, #32
ffff09f8:	e1c010b2 	strh	r1, [r0, #2]
ffff09fc:	e3a01001 	mov	r1, #1
ffff0a00:	e5c01004 	strb	r1, [r0, #4]
ffff0a04:	e5c01005 	strb	r1, [r0, #5]
ffff0a08:	e3a01000 	mov	r1, #0
ffff0a0c:	e5c01006 	strb	r1, [r0, #6]
ffff0a10:	e3a01080 	mov	r1, #128	; 0x80
ffff0a14:	e5c01007 	strb	r1, [r0, #7]
ffff0a18:	e3a01096 	mov	r1, #150	; 0x96
ffff0a1c:	e5c01008 	strb	r1, [r0, #8]
ffff0a20:	e12fff1e 	bx	lr

f_0a24:
ffff0a24:	e3a01009 	mov	r1, #9
ffff0a28:	e5c01000 	strb	r1, [r0]
ffff0a2c:	e3a01004 	mov	r1, #4
ffff0a30:	e5c01001 	strb	r1, [r0, #1]
ffff0a34:	e3a01000 	mov	r1, #0
ffff0a38:	e5c01002 	strb	r1, [r0, #2]
ffff0a3c:	e5c01003 	strb	r1, [r0, #3]
ffff0a40:	e3a01002 	mov	r1, #2
ffff0a44:	e5c01004 	strb	r1, [r0, #4]
ffff0a48:	e3a010ff 	mov	r1, #255	; 0xff
ffff0a4c:	e5c01005 	strb	r1, [r0, #5]
ffff0a50:	e5c01006 	strb	r1, [r0, #6]
ffff0a54:	e5c01007 	strb	r1, [r0, #7]
ffff0a58:	e3a01000 	mov	r1, #0
ffff0a5c:	e5c01008 	strb	r1, [r0, #8]
ffff0a60:	e12fff1e 	bx	lr

f_0a64:
ffff0a64:	e3a01007 	mov	r1, #7
ffff0a68:	e5c01000 	strb	r1, [r0]
ffff0a6c:	e3a01005 	mov	r1, #5
ffff0a70:	e5c01001 	strb	r1, [r0, #1]
ffff0a74:	e3a01040 	mov	r1, #64	; 0x40
ffff0a78:	e1c010b4 	strh	r1, [r0, #4]
ffff0a7c:	e3a01001 	mov	r1, #1
ffff0a80:	e5c01002 	strb	r1, [r0, #2]
ffff0a84:	e3a01002 	mov	r1, #2
ffff0a88:	e5c01003 	strb	r1, [r0, #3]
ffff0a8c:	e3a01000 	mov	r1, #0
ffff0a90:	e5c01006 	strb	r1, [r0, #6]
ffff0a94:	e12fff1e 	bx	lr

f_0a98:
ffff0a98:	e3a01007 	mov	r1, #7
ffff0a9c:	e5c01000 	strb	r1, [r0]
ffff0aa0:	e3a01005 	mov	r1, #5
ffff0aa4:	e5c01001 	strb	r1, [r0, #1]
ffff0aa8:	e3a01040 	mov	r1, #64	; 0x40
ffff0aac:	e1c010b4 	strh	r1, [r0, #4]
ffff0ab0:	e3a01082 	mov	r1, #130	; 0x82
ffff0ab4:	e5c01002 	strb	r1, [r0, #2]
ffff0ab8:	e3a01002 	mov	r1, #2
ffff0abc:	e5c01003 	strb	r1, [r0, #3]
ffff0ac0:	e3a01000 	mov	r1, #0
ffff0ac4:	e5c01006 	strb	r1, [r0, #6]
ffff0ac8:	e12fff1e 	bx	lr

f_0acc:
ffff0acc:	e5802000 	str	r2, [r0]
ffff0ad0:	e5801004 	str	r1, [r0, #4]
ffff0ad4:	e12fff1e 	bx	lr

f_NOP4:
ffff0ad8:	e12fff1e 	bx	lr

f_NOP5:
ffff0adc:	e12fff1e 	bx	lr

f_NOP6:
ffff0ae0:	e12fff1e 	bx	lr

f_0a4e:
ffff0ae4:	e92d4010 	push	{r4, lr}
ffff0ae8:	e3a03000 	mov	r3, #0
ffff0aec:	e5c03005 	strb	r3, [r0, #5]
ffff0af0:	e5c03006 	strb	r3, [r0, #6]
ffff0af4:	e5803000 	str	r3, [r0]
ffff0af8:	e5c03004 	strb	r3, [r0, #4]
ffff0afc:	e3a03040 	mov	r3, #64	; 0x40
ffff0b00:	e5803008 	str	r3, [r0, #8]
ffff0b04:	e3a03000 	mov	r3, #0
ffff0b08:	e580300c 	str	r3, [r0, #12]
ffff0b0c:	e5d13002 	ldrb	r3, [r1, #2]
ffff0b10:	e5c03015 	strb	r3, [r0, #21]
ffff0b14:	e5d13003 	ldrb	r3, [r1, #3]
ffff0b18:	e5c03016 	strb	r3, [r0, #22]
ffff0b1c:	e5801010 	str	r1, [r0, #16]
ffff0b20:	e3a03001 	mov	r3, #1
ffff0b24:	e5c03014 	strb	r3, [r0, #20]
ffff0b28:	e1d130b4 	ldrh	r3, [r1, #4]
ffff0b2c:	e5803018 	str	r3, [r0, #24]
ffff0b30:	e3a03000 	mov	r3, #0
ffff0b34:	e580301c 	str	r3, [r0, #28]
ffff0b38:	e5d23002 	ldrb	r3, [r2, #2]
ffff0b3c:	e5c03025 	strb	r3, [r0, #37]	; 0x25
ffff0b40:	e5d23003 	ldrb	r3, [r2, #3]
ffff0b44:	e5c03026 	strb	r3, [r0, #38]	; 0x26
ffff0b48:	e5802020 	str	r2, [r0, #32]
ffff0b4c:	e3a03002 	mov	r3, #2
ffff0b50:	e5c03024 	strb	r3, [r0, #36]	; 0x24
ffff0b54:	e1d230b4 	ldrh	r3, [r2, #4]
ffff0b58:	e5803028 	str	r3, [r0, #40]	; 0x28
ffff0b5c:	e3a03000 	mov	r3, #0
ffff0b60:	e580302c 	str	r3, [r0, #44]	; 0x2c
ffff0b64:	e5803030 	str	r3, [r0, #48]	; 0x30
ffff0b68:	e5c03034 	strb	r3, [r0, #52]	; 0x34
ffff0b6c:	e5803038 	str	r3, [r0, #56]	; 0x38
ffff0b70:	e5c0303c 	strb	r3, [r0, #60]	; 0x3c
ffff0b74:	e5c0303d 	strb	r3, [r0, #61]	; 0x3d
ffff0b78:	e8bd8010 	pop	{r4, pc}

f_0b7c:
ffff0b7c:	e92d4010 	push	{r4, lr}
ffff0b80:	e5801000 	str	r1, [r0]
ffff0b84:	e3a04000 	mov	r4, #0
ffff0b88:	e5c04004 	strb	r4, [r0, #4]
ffff0b8c:	e5804008 	str	r4, [r0, #8]
ffff0b90:	e5802014 	str	r2, [r0, #20]
ffff0b94:	e5804018 	str	r4, [r0, #24]
ffff0b98:	e580300c 	str	r3, [r0, #12]
ffff0b9c:	e5804010 	str	r4, [r0, #16]
ffff0ba0:	e8bd8010 	pop	{r4, pc}

f_0ba4:
ffff0ba4:	e5801000 	str	r1, [r0]
ffff0ba8:	e3a02000 	mov	r2, #0
ffff0bac:	e5802004 	str	r2, [r0, #4]
ffff0bb0:	e59f2ba4 	ldr	r2, =f0904
ffff0bb4:	e580200c 	str	r2, [r0, #12]
ffff0bb8:	e3a02000 	mov	r2, #0
ffff0bbc:	e5802010 	str	r2, [r0, #16]
ffff0bc0:	e5c02008 	strb	r2, [r0, #8]
ffff0bc4:	e5c02018 	strb	r2, [r0, #24]
ffff0bc8:	e5802014 	str	r2, [r0, #20]
ffff0bcc:	e12fff1e 	bx	lr

f_0bd0:
ffff0bd0:	e5801000 	str	r1, [r0]
ffff0bd4:	e3a02000 	mov	r2, #0
ffff0bd8:	e5802004 	str	r2, [r0, #4]
ffff0bdc:	e59f2b7c 	ldr	r2, =f091c
ffff0be0:	e580200c 	str	r2, [r0, #12]
ffff0be4:	e3a02000 	mov	r2, #0
ffff0be8:	e5802010 	str	r2, [r0, #16]
ffff0bec:	e5c02008 	strb	r2, [r0, #8]
ffff0bf0:	e5c02018 	strb	r2, [r0, #24]
ffff0bf4:	e3a02001 	mov	r2, #1
ffff0bf8:	e5802014 	str	r2, [r0, #20]
ffff0bfc:	e12fff1e 	bx	lr

f_0c00:
ffff0c00:	e5801000 	str	r1, [r0]
ffff0c04:	e3a02000 	mov	r2, #0
ffff0c08:	e5802004 	str	r2, [r0, #4]
ffff0c0c:	e59f2b50 	ldr	r2, =f0910
ffff0c10:	e580200c 	str	r2, [r0, #12]
ffff0c14:	e3a02000 	mov	r2, #0
ffff0c18:	e5802010 	str	r2, [r0, #16]
ffff0c1c:	e5c02008 	strb	r2, [r0, #8]
ffff0c20:	e5c02018 	strb	r2, [r0, #24]
ffff0c24:	e3a02002 	mov	r2, #2
ffff0c28:	e5802014 	str	r2, [r0, #20]
ffff0c2c:	e12fff1e 	bx	lr

f_0c30:
ffff0c30:	e92d4010 	push	{r4, lr}
ffff0c34:	e580100c 	str	r1, [r0, #12]
ffff0c38:	e580201c 	str	r2, [r0, #28]
ffff0c3c:	e580302c 	str	r3, [r0, #44]	; 0x2c
ffff0c40:	e8bd8010 	pop	{r4, pc}

f_0c44:
ffff0c44:	e3a00000 	mov	r0, #0
ffff0c48:	e59f1b08 	ldr	r1, =USB0_BASE
ffff0c4c:	e5d10040 	ldrb	r0, [r1, #64]	; 0x40
ffff0c50:	e3c00020 	bic	r0, r0, #32
ffff0c54:	e5c10040 	strb	r0, [r1, #64]	; 0x40
ffff0c58:	e5d10040 	ldrb	r0, [r1, #64]	; 0x40
ffff0c5c:	e12fff1e 	bx	lr

f_0c60:
ffff0c60:	e3a02000 	mov	r2, #0
ffff0c64:	e3a01000 	mov	r1, #0
ffff0c68:	e59f0ae4 	ldr	r0, =0x1c20000
ffff0c6c:	e5902050 	ldr	r2, [r0, #80]	; 0x50
ffff0c70:	e3822902 	orr	r2, r2, #32768	; 0x8000
ffff0c74:	e5802050 	str	r2, [r0, #80]	; 0x50
ffff0c78:	e5902000 	ldr	r2, [r0]
ffff0c7c:	e59f0ae4 	ldr	r0, =0x7ffce0cc
ffff0c80:	e0022000 	and	r2, r2, r0
ffff0c84:	e3822102 	orr	r2, r2, #-2147483648	; 0x80000000
ffff0c88:	e3822b05 	orr	r2, r2, #5120	; 0x1400
ffff0c8c:	e59f0ac0 	ldr	r0, =0x1c20000
ffff0c90:	e5802000 	str	r2, [r0]
ffff0c94:	e30c1350 	movw	r1, #50000	; 0xc350
ffff0c98:	e320f000 	nop	{0}
ffff0c9c:	e1b00001 	movs	r0, r1
ffff0ca0:	e2411001 	sub	r1, r1, #1
ffff0ca4:	1afffffc 	bne	0xffff0c9c
ffff0ca8:	e59f0aa4 	ldr	r0, =0x1c20000
ffff0cac:	e5902054 	ldr	r2, [r0, #84]	; 0x54
ffff0cb0:	e3000333 	movw	r0, #819	; 0x333
ffff0cb4:	e1c22000 	bic	r2, r2, r0
ffff0cb8:	e3000113 	movw	r0, #275	; 0x113
ffff0cbc:	e1822000 	orr	r2, r2, r0
ffff0cc0:	e59f0a8c 	ldr	r0, =0x1c20000
ffff0cc4:	e5802054 	str	r2, [r0, #84]	; 0x54
ffff0cc8:	e5902054 	ldr	r2, [r0, #84]	; 0x54
ffff0ccc:	e3c22803 	bic	r2, r2, #196608	; 0x30000
ffff0cd0:	e3822802 	orr	r2, r2, #131072	; 0x20000
ffff0cd4:	e5802054 	str	r2, [r0, #84]	; 0x54
ffff0cd8:	e12fff1e 	bx	lr

f_0cdc:
ffff0cdc:	e3a00000 	mov	r0, #0
ffff0ce0:	e59f1a70 	ldr	r1, =USB0_BASE
ffff0ce4:	e5910400 	ldr	r0, [r1, #1024]	; 0x400
ffff0ce8:	e3800903 	orr	r0, r0, #49152	; 0xc000
ffff0cec:	e5810400 	str	r0, [r1, #1024]	; 0x400
ffff0cf0:	e12fff1e 	bx	lr

f_0cf4:
ffff0cf4:	e3a01000 	mov	r1, #0
ffff0cf8:	e3a00000 	mov	r0, #0
ffff0cfc:	e59f2a54 	ldr	r2, =USB0_BASE
ffff0d00:	e5921400 	ldr	r1, [r2, #1024]	; 0x400
ffff0d04:	e3811801 	orr	r1, r1, #65536	; 0x10000
ffff0d08:	e5821400 	str	r1, [r2, #1024]	; 0x400
ffff0d0c:	e3a00e7d 	mov	r0, #2000	; 0x7d0
ffff0d10:	e320f000 	nop	{0}
ffff0d14:	e1b02000 	movs	r2, r0
ffff0d18:	e2400001 	sub	r0, r0, #1
ffff0d1c:	1afffffc 	bne	0xffff0d14
ffff0d20:	e3811b03 	orr	r1, r1, #3072	; 0xc00
ffff0d24:	e59f2a2c 	ldr	r2, =USB0_BASE
ffff0d28:	e5821400 	str	r1, [r2, #1024]	; 0x400
ffff0d2c:	e12fff1e 	bx	lr

f_0d30:
ffff0d30:	e3a01000 	mov	r1, #0
ffff0d34:	e59f0a1c 	ldr	r0, =USB0_BASE
ffff0d38:	e5d02400 	ldrb	r2, [r0, #1024]	; 0x400
ffff0d3c:	e3120303 	tst	r2, #201326592	; 0xc000000
ffff0d40:	1a00000a 	bne	0xffff0d70
ffff0d44:	e59f0a0c 	ldr	r0, =USB0_BASE
ffff0d48:	e5d00041 	ldrb	r0, [r0, #65]	; 0x41
ffff0d4c:	e2000018 	and	r0, r0, #24
ffff0d50:	e3500018 	cmp	r0, #24
ffff0d54:	0a000003 	beq	0xffff0d68
ffff0d58:	e59f09f8 	ldr	r0, =USB0_BASE
ffff0d5c:	e5901400 	ldr	r1, [r0, #1024]	; 0x400
ffff0d60:	e3811a03 	orr	r1, r1, #12288	; 0x3000
ffff0d64:	e5801400 	str	r1, [r0, #1024]	; 0x400
ffff0d68:	e3a00001 	mov	r0, #1
ffff0d6c:	e12fff1e 	bx	lr
ffff0d70:	e3a00000 	mov	r0, #0
ffff0d74:	eafffffc 	b	0xffff0d6c

f_0d78:
ffff0d78:	e3a00000 	mov	r0, #0
ffff0d7c:	e59f19d4 	ldr	r1, =USB0_BASE
ffff0d80:	e5910400 	ldr	r0, [r1, #1024]	; 0x400
ffff0d84:	e3c00801 	bic	r0, r0, #65536	; 0x10000
ffff0d88:	e5810400 	str	r0, [r1, #1024]	; 0x400
ffff0d8c:	e12fff1e 	bx	lr

f_0d90:
ffff0d90:	e59f09c0 	ldr	r0, =USB0_BASE
ffff0d94:	e5d02041 	ldrb	r2, [r0, #65]	; 0x41
ffff0d98:	e2020080 	and	r0, r2, #128	; 0x80
ffff0d9c:	e3500080 	cmp	r0, #128	; 0x80
ffff0da0:	1a000006 	bne	0xffff0dc0
ffff0da4:	e59f09ac 	ldr	r0, =USB0_BASE
ffff0da8:	e5d01041 	ldrb	r1, [r0, #65]	; 0x41
ffff0dac:	e3110001 	tst	r1, #1
ffff0db0:	0a000001 	beq	0xffff0dbc
ffff0db4:	e3a00001 	mov	r0, #1
ffff0db8:	e12fff1e 	bx	lr
ffff0dbc:	e320f000 	nop	{0}
ffff0dc0:	e3a00000 	mov	r0, #0
ffff0dc4:	eafffffb 	b	0xffff0db8

f_0dc8:
ffff0dc8:	e92d4010 	push	{r4, lr}
ffff0dcc:	e3a00000 	mov	r0, #0
ffff0dd0:	e59f197c 	ldr	r1, =0x1c20000
ffff0dd4:	e5810440 	str	r0, [r1, #1088]	; 0x440
ffff0dd8:	e5810444 	str	r0, [r1, #1092]	; 0x444
ffff0ddc:	e5810448 	str	r0, [r1, #1096]	; 0x448
ffff0de0:	ebffffbd 	bl	f_0cdc
ffff0de4:	ebffffc2 	bl	f_0cf4
ffff0de8:	ea000009 	b	0xffff0e14
ffff0dec:	ebffffe7 	bl	f_0d90
ffff0df0:	e1a03000 	mov	r3, r0
ffff0df4:	ebffffcd 	bl	f_0d30
ffff0df8:	e1a04000 	mov	r4, r0
ffff0dfc:	e3530000 	cmp	r3, #0
ffff0e00:	1a000001 	bne	0xffff0e0c
ffff0e04:	e3540000 	cmp	r4, #0
ffff0e08:	0a000000 	beq	0xffff0e10
ffff0e0c:	ea000001 	b	0xffff0e18
ffff0e10:	e320f000 	nop	{0}
ffff0e14:	eafffff4 	b	0xffff0dec
ffff0e18:	e320f000 	nop	{0}
ffff0e1c:	ebffffd5 	bl	f_0d78
ffff0e20:	ebffff8e 	bl	f_0c60
ffff0e24:	e8bd8010 	pop	{r4, pc}

f_0e28:
ffff0e28:	e92d4070 	push	{r4, r5, r6, lr}
ffff0e2c:	e1a04000 	mov	r4, r0
ffff0e30:	e3a05000 	mov	r5, #0
ffff0e34:	e5d40004 	ldrb	r0, [r4, #4]
ffff0e38:	ebfffeca 	bl	set_epind
ffff0e3c:	e5d40005 	ldrb	r0, [r4, #5]
ffff0e40:	e3100080 	tst	r0, #128	; 0x80
ffff0e44:	0a00000d 	beq	0xffff0e80
ffff0e48:	e3a00048 	mov	r0, #72	; 0x48
ffff0e4c:	e59f1904 	ldr	r1, =USB0_BASE
ffff0e50:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff0e54:	e5940008 	ldr	r0, [r4, #8]
ffff0e58:	e7df059f 	bfc	r0, #11, #21
ffff0e5c:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff0e60:	e1a00001 	mov	r0, r1
ffff0e64:	e5d05048 	ldrb	r5, [r0, #72]	; 0x48
ffff0e68:	e5d40004 	ldrb	r0, [r4, #4]
ffff0e6c:	e3a01001 	mov	r1, #1
ffff0e70:	e1850011 	orr	r0, r5, r1, lsl r0
ffff0e74:	e59f18dc 	ldr	r1, =USB0_BASE
ffff0e78:	e5c10048 	strb	r0, [r1, #72]	; 0x48
ffff0e7c:	ea00000c 	b	0xffff0eb4
ffff0e80:	e3a00090 	mov	r0, #144	; 0x90
ffff0e84:	e59f18cc 	ldr	r1, =USB0_BASE
ffff0e88:	e1c108b6 	strh	r0, [r1, #134]	; 0x86
ffff0e8c:	e5940008 	ldr	r0, [r4, #8]
ffff0e90:	e7df059f 	bfc	r0, #11, #21
ffff0e94:	e1c108b4 	strh	r0, [r1, #132]	; 0x84
ffff0e98:	e1a00001 	mov	r0, r1
ffff0e9c:	e5d0504a 	ldrb	r5, [r0, #74]	; 0x4a
ffff0ea0:	e5d40004 	ldrb	r0, [r4, #4]
ffff0ea4:	e3a01001 	mov	r1, #1
ffff0ea8:	e1850011 	orr	r0, r5, r1, lsl r0
ffff0eac:	e59f18a4 	ldr	r1, =USB0_BASE
ffff0eb0:	e5c1004a 	strb	r0, [r1, #74]	; 0x4a
ffff0eb4:	e8bd8070 	pop	{r4, r5, r6, pc}

f_0eb8:
ffff0eb8:	e92d4010 	push	{r4, lr}
ffff0ebc:	e1a04000 	mov	r4, r0
ffff0ec0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff0ec4:	e2810020 	add	r0, r1, #32
ffff0ec8:	ebffffd6 	bl	f_0e28
ffff0ecc:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff0ed0:	e2810010 	add	r0, r1, #16
ffff0ed4:	ebffffd3 	bl	f_0e28
ffff0ed8:	e8bd8010 	pop	{r4, pc}

f_0edc:
ffff0edc:	e92d4070 	push	{r4, r5, r6, lr}
ffff0ee0:	e1a04000 	mov	r4, r0
ffff0ee4:	e3a05000 	mov	r5, #0
ffff0ee8:	e3a00000 	mov	r0, #0
ffff0eec:	e59f1860 	ldr	r1, =0x1c20000
ffff0ef0:	e5810440 	str	r0, [r1, #1088]	; 0x440
ffff0ef4:	e5810444 	str	r0, [r1, #1092]	; 0x444
ffff0ef8:	e5810448 	str	r0, [r1, #1096]	; 0x448
ffff0efc:	ebffff50 	bl	f_0c44
ffff0f00:	e3a00507 	mov	r0, #29360128	; 0x1c00000
ffff0f04:	e5905004 	ldr	r5, [r0, #4]
ffff0f08:	e3855001 	orr	r5, r5, #1
ffff0f0c:	e5805004 	str	r5, [r0, #4]
ffff0f10:	e3a00001 	mov	r0, #1
ffff0f14:	e59f183c 	ldr	r1, =USB0_BASE
ffff0f18:	e5c10042 	strb	r0, [r1, #66]	; 0x42	     ; USB0_EPIND = 1
ffff0f1c:	e3a00007 	mov	r0, #7
ffff0f20:	e5c10094 	strb	r0, [r1, #148]	; 0x94	     ; USB0_RXFIFOSZ = 7
ffff0f24:	e3a00080 	mov	r0, #128	; 0x80 
ffff0f28:	e1c109b6 	strh	r0, [r1, #150]	; 0x96       ; USB0_RXFIFOAD = 0x80
ffff0f2c:	e3a00002 	mov	r0, #2
ffff0f30:	e5c10042 	strb	r0, [r1, #66]	; 0x42       ; USB0_EPIND = 2
ffff0f34:	e3a00007 	mov	r0, #7
ffff0f38:	e5c10090 	strb	r0, [r1, #144]	; 0x90       ; USB0_RXFIFOSZ = 7
ffff0f3c:	e3a00c01 	mov	r0, #256	; 0x100
ffff0f40:	e1c109b2 	strh	r0, [r1, #146]	; 0x92       ; USB0_TXFIFOAD = 0x100
ffff0f44:	e3a00007 	mov	r0, #7
ffff0f48:	e5c10050 	strb	r0, [r1, #80]	; 0x50       ; USB0_INTUSBE = 7
ffff0f4c:	e1c10000 	bic	r0, r1, r0
ffff0f50:	e5d00048 	ldrb	r0, [r0, #72]	; 0x48
ffff0f54:	e3800001 	orr	r0, r0, #1
ffff0f58:	e5c10048 	strb	r0, [r1, #72]	; 0x48
ffff0f5c:	e59f0808 	ldr	r0, =0x7d00
ffff0f60:	e5900000 	ldr	r0, [r0]
ffff0f64:	ebffffd3 	bl	f_0eb8
ffff0f68:	e3a00002 	mov	r0, #2
ffff0f6c:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff0f70:	e5c10034 	strb	r0, [r1, #52]	; 0x34
ffff0f74:	ebffff93 	bl	f_0dc8
ffff0f78:	e59f07d8 	ldr	r0, =USB0_BASE
ffff0f7c:	e5d00040 	ldrb	r0, [r0, #64]	; 0x40	     = USB0_PCTL
ffff0f80:	e3800040 	orr	r0, r0, #64	; 0x40       ; USB0_PCTL |= SOFT_CONNECT
ffff0f84:	e59f17cc 	ldr	r1, =USB0_BASE
ffff0f88:	e5c10040 	strb	r0, [r1, #64]	; 0x40       = USB0_PCTL
ffff0f8c:	e8bd8070 	pop	{r4, r5, r6, pc}

f_0f90:
ffff0f90:	e92d4010 	push	{r4, lr}
ffff0f94:	e1a04000 	mov	r4, r0
ffff0f98:	e59f07b8 	ldr	r0, =USB0_BASE
ffff0f9c:	e5d00043 	ldrb	r0, [r0, #67]	; 0x43	     = USB0_VEND0
ffff0fa0:	e20000fe 	and	r0, r0, #254	; 0xfe
ffff0fa4:	e59f17ac 	ldr	r1, =USB0_BASE
ffff0fa8:	e5c10043 	strb	r0, [r1, #67]	; 0x43	     = USB0_VEND0
ffff0fac:	e1a00004 	mov	r0, r4
ffff0fb0:	ebffffc9 	bl	f_0edc
ffff0fb4:	ebfffe5b 	bl	f_0928
ffff0fb8:	e1a00004 	mov	r0, r4
ffff0fbc:	ebfffe64 	bl	f_0954
ffff0fc0:	ebfffc86 	bl	f_NOP2
ffff0fc4:	e8bd8010 	pop	{r4, pc}

int usb_get_ep_fifo(struct endpoint *ep, int *epid, u32 **epfifo )
{
	int id = ep->id & 0x7f; // .b ep+5
	if (id <= 4) {
		switch(id) {
		case 0:
		case 1:
			*epid = 0;
			*epfifo = USBC_REG_EPFIFO0(USBC0_BASE);
			break;
		case 2:
			*epid = 1;
			*epfifo = USBC_REG_EPFIFO1(USBC0_BASE);
			break;
		case 3:
			*epid = 2;
			*epfifo = USBC_REG_EPFIFO2(USBC0_BASE);
			break;
		case 4:
			*epid = 3;
			*epfifo = USBC_REG_EPFIFO3(USBC0_BASE);
			break;
		case 5: // ??? Can not be reached??
			*epid = 4;
			*epfifo = USBC_REG_EPFIFO4(USBC0_BASE);
			break;
		}
	}
	return 0;	// Always 0? No error indication?
}

f_0fc8:
ffff0fc8:	e1a03000 	mov	r3, r0
ffff0fcc:	e5d30005 	ldrb	r0, [r3, #5]
ffff0fd0:	e200007f 	and	r0, r0, #127	; 0x7f
ffff0fd4:	e3500004 	cmp	r0, #4
ffff0fd8:	da000001 	ble	0xffff0fe4
ffff0fdc:	e3e00000 	mvn	r0, #0
ffff0fe0:	e12fff1e 	bx	lr
ffff0fe4:	e5d30005 	ldrb	r0, [r3, #5]
ffff0fe8:	e200007f 	and	r0, r0, #127	; 0x7f
ffff0fec:	e3500005 	cmp	r0, #5
ffff0ff0:	308ff100 	addcc	pc, pc, r0, lsl #2
ffff0ff4:	ea000004 	b	0xffff100c	// 0
ffff0ff8:	ea000005 	b	0xffff1014 	// 1
ffff0ffc:	ea000009 	b	0xffff1028	// 2
ffff1000:	ea00000e 	b	0xffff1040	// 3
ffff1004:	ea000013 	b	0xffff1058	// 4
ffff1008:	ea000018 	b	0xffff1070	// 5??? (id <= 4 above)
ffff100c:	e320f000 	nop	{0}
ffff1010:	e320f000 	nop	{0}
ffff1014:	e3a00000 	mov	r0, #0
ffff1018:	e5810000 	str	r0, [r1]
ffff101c:	e59f0734 	ldr	r0, =USB0_EPFIFO0
ffff1020:	e5820000 	str	r0, [r2]
ffff1024:	ea000017 	b	0xffff1088
ffff1028:	e320f000 	nop	{0}
ffff102c:	e3a00001 	mov	r0, #1
ffff1030:	e5810000 	str	r0, [r1]
ffff1034:	e59f0734 	ldr	r0, =USB0_EPFIFO1
ffff1038:	e5820000 	str	r0, [r2]
ffff103c:	ea000011 	b	0xffff1088
ffff1040:	e320f000 	nop	{0}
ffff1044:	e3a00002 	mov	r0, #2
ffff1048:	e5810000 	str	r0, [r1]
ffff104c:	e59f0720 	ldr	r0, =USB0_EPFIFO2
ffff1050:	e5820000 	str	r0, [r2]
ffff1054:	ea00000b 	b	0xffff1088
ffff1058:	e320f000 	nop	{0}
ffff105c:	e3a00003 	mov	r0, #3
ffff1060:	e5810000 	str	r0, [r1]
ffff1064:	e59f070c 	ldr	r0, =USB0_EPFIFO3
ffff1068:	e5820000 	str	r0, [r2]
ffff106c:	ea000005 	b	0xffff1088
ffff1074:	e3a00004 	mov	r0, #4
ffff1078:	e5810000 	str	r0, [r1]
ffff107c:	e59f06f8 	ldr	r0, =USB0_EPFIFO4
ffff1080:	e5820000 	str	r0, [r2]
ffff1084:	e320f000 	nop	{0}
ffff1088:	e320f000 	nop	{0}
ffff108c:	e3a00000 	mov	r0, #0
ffff1090:	eaffffd2 	b	0xffff0fe0

f_NOP3:
ffff1094:	e12fff1e 	bx	lr

f_1098:
ffff1098:	e92d4070 	push	{r4, r5, r6, lr}
ffff109c:	e1a06000 	mov	r6, r0
ffff10a0:	e1a04001 	mov	r4, r1
ffff10a4:	e1a05002 	mov	r5, r2
ffff10a8:	e6af0075 	sxtb	r0, r5
ffff10ac:	e5c40018 	strb	r0, [r4, #24]
ffff10b0:	e594100c 	ldr	r1, [r4, #12]
ffff10b4:	e1a00004 	mov	r0, r4
ffff10b8:	e12fff31 	blx	r1
ffff10bc:	e8bd8070 	pop	{r4, r5, r6, pc}

f_10c0:
ffff10c0:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff10c4:	e1a04000 	mov	r4, r0
ffff10c8:	e1a05001 	mov	r5, r1
ffff10cc:	e1a06002 	mov	r6, r2
ffff10d0:	e3a09000 	mov	r9, #0
ffff10d4:	e1a0200d 	mov	r2, sp
ffff10d8:	e28d1004 	add	r1, sp, #4
ffff10dc:	e1a00005 	mov	r0, r5
ffff10e0:	ebffffb8 	bl	f_0fc8
ffff10e4:	e3500000 	cmp	r0, #0
ffff10e8:	0a000001 	beq	0xffff10f4
ffff10ec:	e3e00000 	mvn	r0, #0
ffff10f0:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff10f4:	e5957008 	ldr	r7, [r5, #8]
ffff10f8:	e1a02007 	mov	r2, r7
ffff10fc:	e1a01006 	mov	r1, r6
ffff1100:	e59d0000 	ldr	r0, [sp]
ffff1104:	eb00047e 	bl	f_2304
ffff1108:	e1a07000 	mov	r7, r0
ffff110c:	e5950008 	ldr	r0, [r5, #8]
ffff1110:	e1500007 	cmp	r0, r7
ffff1114:	0a000001 	beq	0xffff1120
ffff1118:	e3a08001 	mov	r8, #1
ffff111c:	ea000009 	b	0xffff1148
ffff1120:	e5960004 	ldr	r0, [r6, #4]
ffff1124:	e5961010 	ldr	r1, [r6, #16]
ffff1128:	e1500001 	cmp	r0, r1
ffff112c:	1a000004 	bne	0xffff1144
ffff1130:	e5d60008 	ldrb	r0, [r6, #8]
ffff1134:	e3500000 	cmp	r0, #0
ffff1138:	1a000001 	bne	0xffff1144
ffff113c:	e3a08002 	mov	r8, #2
ffff1140:	ea000000 	b	0xffff1148
ffff1144:	e3a08000 	mov	r8, #0
ffff1148:	e3580000 	cmp	r8, #0
ffff114c:	0a000027 	beq	0xffff11f0
ffff1150:	e59d0004 	ldr	r0, [sp, #4]
ffff1154:	e3500000 	cmp	r0, #0
ffff1158:	1a000017 	bne	0xffff11bc
ffff115c:	e1a00004 	mov	r0, r4
ffff1160:	eb00044e 	bl	f_22a0
ffff1164:	e3100004 	tst	r0, #4
ffff1168:	1a000019 	bne	0xffff11d4
ffff116c:	e3580001 	cmp	r8, #1
ffff1170:	1a000009 	bne	0xffff119c
ffff1174:	e59d0004 	ldr	r0, [sp, #4]
ffff1178:	e59f15d8 	ldr	r1, =USB0_BASE
ffff117c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1180:	e3a0000a 	mov	r0, #10
ffff1184:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1188:	e3a00000 	mov	r0, #0
ffff118c:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1190:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1194:	e3a09001 	mov	r9, #1
ffff1198:	ea00000d 	b	0xffff11d4
ffff119c:	e3580002 	cmp	r8, #2
ffff11a0:	1a00000b 	bne	0xffff11d4
ffff11a4:	e59d0004 	ldr	r0, [sp, #4]
ffff11a8:	e59f15a8 	ldr	r1, =USB0_BASE
ffff11ac:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff11b0:	e3a00002 	mov	r0, #2
ffff11b4:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff11b8:	ea000005 	b	0xffff11d4
ffff11bc:	e59d0004 	ldr	r0, [sp, #4]
ffff11c0:	e59f1590 	ldr	r1, =USB0_BASE
ffff11c4:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff11c8:	e3020001 	movw	r0, #8193	; 0x2001
ffff11cc:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff11d0:	e3a09001 	mov	r9, #1
ffff11d4:	e3590001 	cmp	r9, #1
ffff11d8:	1a000016 	bne	0xffff1238
ffff11dc:	e3a02000 	mov	r2, #0
ffff11e0:	e1a01006 	mov	r1, r6
ffff11e4:	e1a00005 	mov	r0, r5
ffff11e8:	ebffffaa 	bl	f_1098
ffff11ec:	ea000011 	b	0xffff1238
ffff11f0:	e59d0004 	ldr	r0, [sp, #4]
ffff11f4:	e3500000 	cmp	r0, #0
ffff11f8:	1a000009 	bne	0xffff1224
ffff11fc:	e1a00004 	mov	r0, r4
ffff1200:	eb000426 	bl	f_22a0
ffff1204:	e3100004 	tst	r0, #4
ffff1208:	1a00000a 	bne	0xffff1238
ffff120c:	e59d0004 	ldr	r0, [sp, #4]
ffff1210:	e59f1540 	ldr	r1, =USB0_BASE
ffff1214:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1218:	e3a00002 	mov	r0, #2
ffff121c:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1220:	ea000004 	b	0xffff1238
ffff1224:	e59d0004 	ldr	r0, [sp, #4]
ffff1228:	e59f1528 	ldr	r1, =USB0_BASE
ffff122c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1230:	e3020001 	movw	r0, #8193	; 0x2001
ffff1234:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1238:	e1a00009 	mov	r0, r9
ffff123c:	eaffffab 	b	0xffff10f0

f_1240:
ffff1240:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff1244:	e1a04000 	mov	r4, r0
ffff1248:	e1a05001 	mov	r5, r1
ffff124c:	e1a06002 	mov	r6, r2
ffff1250:	e3a00001 	mov	r0, #1
ffff1254:	e58d0008 	str	r0, [sp, #8]
ffff1258:	e3a0b000 	mov	fp, #0
ffff125c:	e1a0200d 	mov	r2, sp
ffff1260:	e28d1004 	add	r1, sp, #4
ffff1264:	e1a00005 	mov	r0, r5
ffff1268:	ebffff56 	bl	f_0fc8
ffff126c:	e3500000 	cmp	r0, #0
ffff1270:	0a000001 	beq	0xffff127c
ffff1274:	e3e00000 	mvn	r0, #0
ffff1278:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff127c:	e5960000 	ldr	r0, [r6]
ffff1280:	e5961010 	ldr	r1, [r6, #16]
ffff1284:	e0807001 	add	r7, r0, r1
ffff1288:	e5960004 	ldr	r0, [r6, #4]
ffff128c:	e5961010 	ldr	r1, [r6, #16]
ffff1290:	e0409001 	sub	r9, r0, r1
ffff1294:	e3590000 	cmp	r9, #0
ffff1298:	1a000001 	bne	0xffff12a4
ffff129c:	e3e00000 	mvn	r0, #0
ffff12a0:	eafffff4 	b	0xffff1278
ffff12a4:	e59d0004 	ldr	r0, [sp, #4]
ffff12a8:	e59f14a8 	ldr	r1, =USB0_BASE
ffff12ac:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff12b0:	e1a00001 	mov	r0, r1
ffff12b4:	e590b088 	ldr	fp, [r0, #136]	; 0x88
ffff12b8:	e5950008 	ldr	r0, [r5, #8]
ffff12bc:	e150000b 	cmp	r0, fp
ffff12c0:	2a000001 	bcs	0xffff12cc
ffff12c4:	e595a008 	ldr	sl, [r5, #8]
ffff12c8:	ea000000 	b	0xffff12d0
ffff12cc:	e1a0a00b 	mov	sl, fp
ffff12d0:	e1a0300a 	mov	r3, sl
ffff12d4:	e1a02006 	mov	r2, r6
ffff12d8:	e1a01007 	mov	r1, r7
ffff12dc:	e59d0000 	ldr	r0, [sp]
ffff12e0:	eb000423 	bl	f_2374
ffff12e4:	e1a0b000 	mov	fp, r0
ffff12e8:	e5950008 	ldr	r0, [r5, #8]
ffff12ec:	e150000b 	cmp	r0, fp
ffff12f0:	9a000006 	bls	0xffff1310
ffff12f4:	e3a00001 	mov	r0, #1
ffff12f8:	e58d0008 	str	r0, [sp, #8]
ffff12fc:	e15b000a 	cmp	fp, sl
ffff1300:	0a00000b 	beq	0xffff1334
ffff1304:	e3a000ff 	mov	r0, #255	; 0xff
ffff1308:	e5c60018 	strb	r0, [r6, #24]
ffff130c:	ea000008 	b	0xffff1334
ffff1310:	e5960004 	ldr	r0, [r6, #4]
ffff1314:	e5961010 	ldr	r1, [r6, #16]
ffff1318:	e1500001 	cmp	r0, r1
ffff131c:	1a000002 	bne	0xffff132c
ffff1320:	e3a00001 	mov	r0, #1
ffff1324:	e58d0008 	str	r0, [sp, #8]
ffff1328:	ea000001 	b	0xffff1334
ffff132c:	e3a00000 	mov	r0, #0
ffff1330:	e58d0008 	str	r0, [sp, #8]
ffff1334:	e59d0004 	ldr	r0, [sp, #4]
ffff1338:	e59f1418 	ldr	r1, =USB0_BASE
ffff133c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1340:	e1a00001 	mov	r0, r1
ffff1344:	e590b088 	ldr	fp, [r0, #136]	; 0x88
ffff1348:	e59d0008 	ldr	r0, [sp, #8]
ffff134c:	e3500000 	cmp	r0, #0
ffff1350:	0a000018 	beq	0xffff13b8
ffff1354:	e59d0004 	ldr	r0, [sp, #4]
ffff1358:	e3500000 	cmp	r0, #0
ffff135c:	1a000007 	bne	0xffff1380
ffff1360:	e59d0004 	ldr	r0, [sp, #4]
ffff1364:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1368:	e3a00048 	mov	r0, #72	; 0x48
ffff136c:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1370:	e3a00000 	mov	r0, #0
ffff1374:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1378:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff137c:	ea000006 	b	0xffff139c
ffff1380:	e59d0004 	ldr	r0, [sp, #4]
ffff1384:	e59f13cc 	ldr	r1, =USB0_BASE
ffff1388:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff138c:	e1a00001 	mov	r0, r1
ffff1390:	e1d088b6 	ldrh	r8, [r0, #134]	; 0x86
ffff1394:	e3c88001 	bic	r8, r8, #1
ffff1398:	e1c088b6 	strh	r8, [r0, #134]	; 0x86
ffff139c:	e3a02000 	mov	r2, #0
ffff13a0:	e1a01006 	mov	r1, r6
ffff13a4:	e1a00005 	mov	r0, r5
ffff13a8:	ebffff3a 	bl	f_1098
ffff13ac:	e3a00001 	mov	r0, #1
ffff13b0:	e58d0008 	str	r0, [sp, #8]
ffff13b4:	ea00000f 	b	0xffff13f8
ffff13b8:	e59d0004 	ldr	r0, [sp, #4]
ffff13bc:	e3500000 	cmp	r0, #0
ffff13c0:	1a000005 	bne	0xffff13dc
ffff13c4:	e59d0004 	ldr	r0, [sp, #4]
ffff13c8:	e59f1388 	ldr	r1, =USB0_BASE
ffff13cc:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff13d0:	e3a00040 	mov	r0, #64	; 0x40
ffff13d4:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff13d8:	ea000006 	b	0xffff13f8
ffff13dc:	e59d0004 	ldr	r0, [sp, #4]
ffff13e0:	e59f1370 	ldr	r1, =USB0_BASE
ffff13e4:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff13e8:	e1a00001 	mov	r0, r1
ffff13ec:	e1d088b6 	ldrh	r8, [r0, #134]	; 0x86
ffff13f0:	e3c88001 	bic	r8, r8, #1
ffff13f4:	e1c088b6 	strh	r8, [r0, #134]	; 0x86
ffff13f8:	e59d0008 	ldr	r0, [sp, #8]
ffff13fc:	eaffff9d 	b	0xffff1278

f_1400:
ffff1400:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff1404:	e1a04000 	mov	r4, r0
ffff1408:	e1a05001 	mov	r5, r1
ffff140c:	e1a06002 	mov	r6, r2
ffff1410:	e3a07000 	mov	r7, #0
ffff1414:	e3a08000 	mov	r8, #0
ffff1418:	e3a09000 	mov	r9, #0
ffff141c:	e5950014 	ldr	r0, [r5, #20]
ffff1420:	e3d00003 	bics	r0, r0, #3
ffff1424:	0a000001 	beq	0xffff1430
ffff1428:	e3e00000 	mvn	r0, #0
ffff142c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff1430:	e3560000 	cmp	r6, #0
ffff1434:	1a000001 	bne	0xffff1440
ffff1438:	e1a00004 	mov	r0, r4
ffff143c:	ebfffd3f 	bl	f_0940
ffff1440:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1444:	e5951014 	ldr	r1, [r5, #20]
ffff1448:	e0807201 	add	r7, r0, r1, lsl #4
ffff144c:	e3a00000 	mov	r0, #0
ffff1450:	e5850010 	str	r0, [r5, #16]
ffff1454:	e5d70005 	ldrb	r0, [r7, #5]
ffff1458:	e3500000 	cmp	r0, #0
ffff145c:	0a00000c 	beq	0xffff1494
ffff1460:	e5d70005 	ldrb	r0, [r7, #5]
ffff1464:	e200007f 	and	r0, r0, #127	; 0x7f
ffff1468:	e59f12e8 	ldr	r1, =USB0_BASE
ffff146c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1470:	e5d70005 	ldrb	r0, [r7, #5]
ffff1474:	e3100080 	tst	r0, #128	; 0x80
ffff1478:	0a000001 	beq	0xffff1484
ffff147c:	e2810082 	add	r0, r1, #130	; 0x82
ffff1480:	ea000000 	b	0xffff1488
ffff1484:	e59f02f4 	ldr	r0, =USB0_RXCSR
ffff1488:	e1d080b0 	ldrh	r8, [r0]
ffff148c:	e59f02c4 	ldr	r0, =USB0_BASE
ffff1490:	e1d098b8 	ldrh	r9, [r0, #136]	; 0x88
ffff1494:	e5d70005 	ldrb	r0, [r7, #5]
ffff1498:	e3500000 	cmp	r0, #0
ffff149c:	1a00001c 	bne	0xffff1514
ffff14a0:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff14a4:	e5900030 	ldr	r0, [r0, #48]	; 0x30
ffff14a8:	e3500001 	cmp	r0, #1
ffff14ac:	0a000002 	beq	0xffff14bc
ffff14b0:	e3500002 	cmp	r0, #2
ffff14b4:	1a00000e 	bne	0xffff14f4
ffff14b8:	ea000008 	b	0xffff14e0
ffff14bc:	e320f000 	nop	{0}
ffff14c0:	e1a02005 	mov	r2, r5
ffff14c4:	e1a01007 	mov	r1, r7
ffff14c8:	e1a00004 	mov	r0, r4
ffff14cc:	ebfffefb 	bl	f_10c0
ffff14d0:	e3500000 	cmp	r0, #0
ffff14d4:	0a000000 	beq	0xffff14dc
ffff14d8:	e3a05000 	mov	r5, #0
ffff14dc:	ea00000b 	b	0xffff1510
ffff14e0:	e320f000 	nop	{0}
ffff14e4:	e3a00000 	mov	r0, #0
ffff14e8:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff14ec:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff14f0:	ea000006 	b	0xffff1510
ffff14f4:	e320f000 	nop	{0}
ffff14f8:	e3560000 	cmp	r6, #0
ffff14fc:	1a000001 	bne	0xffff1508
ffff1500:	e1a00004 	mov	r0, r4
ffff1504:	ebfffd12 	bl	f_0954
ffff1508:	e3e00000 	mvn	r0, #0
ffff150c:	eaffffc6 	b	0xffff142c
ffff1510:	ea000031 	b	0xffff15dc
ffff1514:	e5d70005 	ldrb	r0, [r7, #5]
ffff1518:	e3100080 	tst	r0, #128	; 0x80
ffff151c:	0a000009 	beq	0xffff1548
ffff1520:	e3180001 	tst	r8, #1
ffff1524:	1a000007 	bne	0xffff1548
ffff1528:	e1a02005 	mov	r2, r5
ffff152c:	e1a01007 	mov	r1, r7
ffff1530:	e1a00004 	mov	r0, r4
ffff1534:	ebfffee1 	bl	f_10c0
ffff1538:	e3500000 	cmp	r0, #0
ffff153c:	0a000001 	beq	0xffff1548
ffff1540:	e3a05000 	mov	r5, #0
ffff1544:	ea000024 	b	0xffff15dc
ffff1548:	e5d70005 	ldrb	r0, [r7, #5]
ffff154c:	e3100080 	tst	r0, #128	; 0x80
ffff1550:	1a000021 	bne	0xffff15dc
ffff1554:	e3180001 	tst	r8, #1
ffff1558:	0a00001f 	beq	0xffff15dc
ffff155c:	e59f01f4 	ldr	r0, =USB0_BASE
ffff1560:	e1d008b8 	ldrh	r0, [r0, #136]	; 0x88
ffff1564:	e1b09000 	movs	r9, r0
ffff1568:	0a00001b 	beq	0xffff15dc
ffff156c:	e320f000 	nop	{0}
ffff1570:	e1a02005 	mov	r2, r5
ffff1574:	e1a01007 	mov	r1, r7
ffff1578:	e1a00004 	mov	r0, r4
ffff157c:	ebffff2f 	bl	f_1240
ffff1580:	e5d70005 	ldrb	r0, [r7, #5]
ffff1584:	e200007f 	and	r0, r0, #127	; 0x7f
ffff1588:	e59f11c8 	ldr	r1, =USB0_BASE
ffff158c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1590:	e5d70005 	ldrb	r0, [r7, #5]
ffff1594:	e3100080 	tst	r0, #128	; 0x80
ffff1598:	0a000001 	beq	0xffff15a4
ffff159c:	e2810082 	add	r0, r1, #130	; 0x82
ffff15a0:	ea000000 	b	0xffff15a8
ffff15a4:	e59f01d4 	ldr	r0, =USB0_RXCSR
ffff15a8:	e1d080b0 	ldrh	r8, [r0]
ffff15ac:	e59f01a4 	ldr	r0, =USB0_BASE
ffff15b0:	e1d098b8 	ldrh	r9, [r0, #136]	; 0x88
ffff15b4:	e5d50018 	ldrb	r0, [r5, #24]
ffff15b8:	e3500000 	cmp	r0, #0
ffff15bc:	1a000000 	bne	0xffff15c4
ffff15c0:	ea000003 	b	0xffff15d4
ffff15c4:	e3180001 	tst	r8, #1
ffff15c8:	0a000001 	beq	0xffff15d4
ffff15cc:	e3590000 	cmp	r9, #0
ffff15d0:	1affffe6 	bne	0xffff1570
ffff15d4:	e320f000 	nop	{0}
ffff15d8:	e3a05000 	mov	r5, #0
ffff15dc:	e3560000 	cmp	r6, #0
ffff15e0:	1a000001 	bne	0xffff15ec
ffff15e4:	e1a00004 	mov	r0, r4
ffff15e8:	ebfffcd9 	bl	f_0954
ffff15ec:	e3a00000 	mov	r0, #0
ffff15f0:	eaffff8d 	b	0xffff142c

f_15f4:
ffff15f4:	e92d4070 	push	{r4, r5, r6, lr}
ffff15f8:	e1a04000 	mov	r4, r0
ffff15fc:	e1a05001 	mov	r5, r1
ffff1600:	e1a06002 	mov	r6, r2
ffff1604:	e1a02006 	mov	r2, r6
ffff1608:	e1a01005 	mov	r1, r5
ffff160c:	e1a00004 	mov	r0, r4
ffff1610:	ebffff7a 	bl	f_1400
ffff1614:	e8bd8070 	pop	{r4, r5, r6, pc}

f_1618:
ffff1618:	e3a01000 	mov	r1, #0
ffff161c:	e5801008 	str	r1, [r0, #8]
ffff1620:	e5801004 	str	r1, [r0, #4]
ffff1624:	e5801000 	str	r1, [r0]
ffff1628:	e12fff1e 	bx	lr

f_162c:
ffff162c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff1630:	e1a04000 	mov	r4, r0
ffff1634:	e3a05000 	mov	r5, #0
ffff1638:	e3a06000 	mov	r6, #0
ffff163c:	e1a08004 	mov	r8, r4
ffff1640:	e3a00000 	mov	r0, #0
ffff1644:	ebfffcc7 	bl	set_epind
ffff1648:	e59f0108 	ldr	r0, =USB0_BASE
ffff164c:	e1d068b8 	ldrh	r6, [r0, #136]	; 0x88
ffff1650:	e3560008 	cmp	r6, #8
ffff1654:	0a000008 	beq	0xffff167c
ffff1658:	e3a07000 	mov	r7, #0
ffff165c:	ea000002 	b	0xffff166c
ffff1660:	e59f00f0 	ldr	r0, =USB0_BASE
ffff1664:	e1d068b8 	ldrh	r6, [r0, #136]	; 0x88
ffff1668:	e2877001 	add	r7, r7, #1
ffff166c:	e3570010 	cmp	r7, #16
ffff1670:	aa000001 	bge	0xffff167c
ffff1674:	e3560008 	cmp	r6, #8
ffff1678:	1afffff8 	bne	0xffff1660
ffff167c:	ea000004 	b	0xffff1694
ffff1680:	e59f00d0 	ldr	r0, =USB0_BASE
ffff1684:	e5d00000 	ldrb	r0, [r0]
ffff1688:	e5c80000 	strb	r0, [r8]
ffff168c:	e2888001 	add	r8, r8, #1
ffff1690:	e2855001 	add	r5, r5, #1
ffff1694:	e1b00006 	movs	r0, r6
ffff1698:	e2466001 	sub	r6, r6, #1
ffff169c:	1afffff7 	bne	0xffff1680
ffff16a0:	e1a00005 	mov	r0, r5
ffff16a4:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

f_16a8:
ffff16a8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff16ac:	e1a04000 	mov	r4, r0
ffff16b0:	e1a05001 	mov	r5, r1
ffff16b4:	e1a0a002 	mov	sl, r2
ffff16b8:	e1a06003 	mov	r6, r3
ffff16bc:	e1a09005 	mov	r9, r5
ffff16c0:	e3560000 	cmp	r6, #0
ffff16c4:	0a000001 	beq	0xffff16d0
ffff16c8:	e3e00000 	mvn	r0, #0
ffff16cc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff16d0:	e5948014 	ldr	r8, [r4, #20]
ffff16d4:	e3a07000 	mov	r7, #0
ffff16d8:	e3a02009 	mov	r2, #9
ffff16dc:	e1a00005 	mov	r0, r5
ffff16e0:	e5941004 	ldr	r1, [r4, #4]
ffff16e4:	ebfffa98 	bl	f_014c
ffff16e8:	e2855009 	add	r5, r5, #9
ffff16ec:	e3a02009 	mov	r2, #9
ffff16f0:	e1a00005 	mov	r0, r5
ffff16f4:	e5941008 	ldr	r1, [r4, #8]
ffff16f8:	ebfffa93 	bl	f_014c
ffff16fc:	e2855009 	add	r5, r5, #9
ffff1700:	e3a02007 	mov	r2, #7
ffff1704:	e1a00005 	mov	r0, r5
ffff1708:	e5981000 	ldr	r1, [r8]
ffff170c:	ebfffa8e 	bl	f_014c
ffff1710:	e2855007 	add	r5, r5, #7
ffff1714:	e3a02007 	mov	r2, #7
ffff1718:	e1a00005 	mov	r0, r5
ffff171c:	e5981004 	ldr	r1, [r8, #4]
ffff1720:	ebfffa89 	bl	f_014c
ffff1724:	e2855007 	add	r5, r5, #7
ffff1728:	e3a07020 	mov	r7, #32
ffff172c:	e3a00009 	mov	r0, #9
ffff1730:	e5c90000 	strb	r0, [r9]
ffff1734:	e3a00002 	mov	r0, #2
ffff1738:	e5c90001 	strb	r0, [r9, #1]
ffff173c:	e1c970b2 	strh	r7, [r9, #2]
ffff1740:	e5d90007 	ldrb	r0, [r9, #7]
ffff1744:	e3800080 	orr	r0, r0, #128	; 0x80
ffff1748:	e5c90007 	strb	r0, [r9, #7]
ffff174c:	e1a00007 	mov	r0, r7
ffff1750:	eaffffdd 	b	0xffff16cc

f_1784:
ffff1784:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff1788:	e1a04000 	mov	r4, r0
ffff178c:	e1a05001 	mov	r5, r1
ffff1790:	e3a06000 	mov	r6, #0
ffff1794:	e3a07000 	mov	r7, #0
ffff1798:	e1d580b2 	ldrh	r8, [r5, #2]
ffff179c:	e3a09000 	mov	r9, #0
ffff17a0:	e5947024 	ldr	r7, [r4, #36]	; 0x24
ffff17a4:	e597600c 	ldr	r6, [r7, #12]
ffff17a8:	e5d50001 	ldrb	r0, [r5, #1]
ffff17ac:	e3500006 	cmp	r0, #6
ffff17b0:	0a000002 	beq	0xffff17c0
ffff17b4:	e35000fe 	cmp	r0, #254	; 0xfe
ffff17b8:	1a000046 	bne	0xffff18d8
ffff17bc:	ea00003e 	b	0xffff18bc
ffff17c0:	e320f000 	nop	{0}
ffff17c4:	e5d50000 	ldrb	r0, [r5]
ffff17c8:	e3500080 	cmp	r0, #128	; 0x80
ffff17cc:	0a000000 	beq	0xffff17d4
ffff17d0:	ea000042 	b	0xffff18e0
ffff17d4:	e1a00448 	asr	r0, r8, #8
ffff17d8:	e3500001 	cmp	r0, #1
ffff17dc:	0a000004 	beq	0xffff17f4
ffff17e0:	e3500002 	cmp	r0, #2
ffff17e4:	0a000011 	beq	0xffff1830
ffff17e8:	e3500003 	cmp	r0, #3
ffff17ec:	1a000030 	bne	0xffff18b4
ffff17f0:	ea00001f 	b	0xffff1874
ffff17f4:	e320f000 	nop	{0}
ffff17f8:	e1d500b6 	ldrh	r0, [r5, #6]
ffff17fc:	e3500012 	cmp	r0, #18
ffff1800:	9a000001 	bls	0xffff180c
ffff1804:	e3a09012 	mov	r9, #18
ffff1808:	ea000000 	b	0xffff1810
ffff180c:	e1d590b6 	ldrh	r9, [r5, #6]
ffff1810:	e5941000 	ldr	r1, [r4]
ffff1814:	e1a02009 	mov	r2, r9
ffff1818:	e5960000 	ldr	r0, [r6]
ffff181c:	ebfffa4a 	bl	f_014c
ffff1820:	e5869004 	str	r9, [r6, #4]
ffff1824:	e3a00000 	mov	r0, #0
ffff1828:	e5c60008 	strb	r0, [r6, #8]
ffff182c:	ea000020 	b	0xffff18b4
ffff1830:	e320f000 	nop	{0}
ffff1834:	e20830ff 	and	r3, r8, #255	; 0xff
ffff1838:	e1a02448 	asr	r2, r8, #8
ffff183c:	e1a00004 	mov	r0, r4
ffff1840:	e5961000 	ldr	r1, [r6]
ffff1844:	ebffff97 	bl	f_16a8
ffff1848:	e1a09000 	mov	r9, r0
ffff184c:	e1d500b6 	ldrh	r0, [r5, #6]
ffff1850:	e1500009 	cmp	r0, r9
ffff1854:	ba000001 	blt	0xffff1860
ffff1858:	e5869004 	str	r9, [r6, #4]
ffff185c:	ea000001 	b	0xffff1868
ffff1860:	e1d500b6 	ldrh	r0, [r5, #6]
ffff1864:	e5860004 	str	r0, [r6, #4]
ffff1868:	e3a00000 	mov	r0, #0
ffff186c:	e5c60008 	strb	r0, [r6, #8]
ffff1870:	ea00000f 	b	0xffff18b4
ffff1874:	e320f000 	nop	{0}
ffff1878:	e20800ff 	and	r0, r8, #255	; 0xff
ffff187c:	e3500000 	cmp	r0, #0
ffff1880:	1a000009 	bne	0xffff18ac
ffff1884:	e5961000 	ldr	r1, [r6]
ffff1888:	e3a02004 	mov	r2, #4
ffff188c:	e5c12000 	strb	r2, [r1]
ffff1890:	e3a02003 	mov	r2, #3
ffff1894:	e5c12001 	strb	r2, [r1, #1]
ffff1898:	e3a02009 	mov	r2, #9
ffff189c:	e5c12002 	strb	r2, [r1, #2]
ffff18a0:	e3a02004 	mov	r2, #4
ffff18a4:	e5c12003 	strb	r2, [r1, #3]
ffff18a8:	ea000001 	b	0xffff18b4
ffff18ac:	e320f000 	nop	{0}
ffff18b0:	e320f000 	nop	{0}
ffff18b4:	e320f000 	nop	{0}
ffff18b8:	ea000008 	b	0xffff18e0
ffff18bc:	e320f000 	nop	{0}
ffff18c0:	e5960000 	ldr	r0, [r6]
ffff18c4:	e3a01001 	mov	r1, #1
ffff18c8:	e5861004 	str	r1, [r6, #4]
ffff18cc:	e3a01000 	mov	r1, #0
ffff18d0:	e5c01000 	strb	r1, [r0]
ffff18d4:	ea000001 	b	0xffff18e0
ffff18d8:	e320f000 	nop	{0}
ffff18dc:	e320f000 	nop	{0}
ffff18e0:	e320f000 	nop	{0}
ffff18e4:	e3a02001 	mov	r2, #1
ffff18e8:	e1a01006 	mov	r1, r6
ffff18ec:	e1a00004 	mov	r0, r4
ffff18f0:	ebffff3f 	bl	f_15f4
ffff18f4:	e3a00000 	mov	r0, #0
ffff18f8:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

f_18fc:
ffff18fc:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff1900:	e1a04000 	mov	r4, r0
ffff1904:	e3a06000 	mov	r6, #0
ffff1908:	e3a07000 	mov	r7, #0
ffff190c:	e5946024 	ldr	r6, [r4, #36]	; 0x24
ffff1910:	e596700c 	ldr	r7, [r6, #12]
ffff1914:	e5d60004 	ldrb	r0, [r6, #4]
ffff1918:	ebfffc12 	bl	set_epind
ffff191c:	e51f01cc 	ldr	r0, =USB0_BASE
ffff1920:	e1d058b2 	ldrh	r5, [r0, #130]	; 0x82
ffff1924:	e3150004 	tst	r5, #4
ffff1928:	0a000005 	beq	0xffff1944
ffff192c:	e3a00000 	mov	r0, #0
ffff1930:	e51f11e0 	ldr	r1, =USB0_BASE
ffff1934:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1938:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff193c:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1940:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff1944:	e3150010 	tst	r5, #16
ffff1948:	0a000007 	beq	0xffff196c
ffff194c:	e51f01fc 	ldr	r0, =USB0_BASE
ffff1950:	e1d008b2 	ldrh	r0, [r0, #130]	; 0x82
ffff1954:	e3c00010 	bic	r0, r0, #16
ffff1958:	e51f1208 	ldr	r1, =USB0_BASE
ffff195c:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1960:	e3a00000 	mov	r0, #0
ffff1964:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1968:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff196c:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1970:	e5900030 	ldr	r0, [r0, #48]	; 0x30
ffff1974:	e3500005 	cmp	r0, #5
ffff1978:	308ff100 	addcc	pc, pc, r0, lsl #2
ffff197c:	ea00009c 	b	0xffff1bf4
ffff1980:	ea000003 	b	0xffff1994
ffff1984:	ea000066 	b	0xffff1b24
ffff1988:	ea00006f 	b	0xffff1b4c
ffff198c:	ea000078 	b	0xffff1b74
ffff1990:	ea000092 	b	0xffff1be0
ffff1994:	e320f000 	nop	{0}
ffff1998:	e3150001 	tst	r5, #1
ffff199c:	0a00005f 	beq	0xffff1b20
ffff19a0:	e1a0000d 	mov	r0, sp
ffff19a4:	ebffff20 	bl	f_162c
ffff19a8:	e1a08000 	mov	r8, r0
ffff19ac:	e3580008 	cmp	r8, #8
ffff19b0:	0a000003 	beq	0xffff19c4
ffff19b4:	e3a00060 	mov	r0, #96	; 0x60
ffff19b8:	e51f1268 	ldr	r1, =USB0_BASE
ffff19bc:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff19c0:	eaffffde 	b	0xffff1940
ffff19c4:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff19c8:	e281003e 	add	r0, r1, #62	; 0x3e
ffff19cc:	e3a02008 	mov	r2, #8
ffff19d0:	e1a0100d 	mov	r1, sp
ffff19d4:	eb0002c2 	bl	f_24e4
ffff19d8:	e3a00001 	mov	r0, #1
ffff19dc:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff19e0:	e5c1003d 	strb	r0, [r1, #61]	; 0x3d
ffff19e4:	e5dd0001 	ldrb	r0, [sp, #1]
ffff19e8:	e3500005 	cmp	r0, #5
ffff19ec:	0a000014 	beq	0xffff1a44
ffff19f0:	e3500009 	cmp	r0, #9
ffff19f4:	0a000002 	beq	0xffff1a04
ffff19f8:	e350000b 	cmp	r0, #11
ffff19fc:	1a000020 	bne	0xffff1a84
ffff1a00:	ea000009 	b	0xffff1a2c
ffff1a04:	e320f000 	nop	{0}
ffff1a08:	e5dd0000 	ldrb	r0, [sp]
ffff1a0c:	e3500000 	cmp	r0, #0
ffff1a10:	1a000004 	bne	0xffff1a28
ffff1a14:	e320f000 	nop	{0}
ffff1a18:	e3a00048 	mov	r0, #72	; 0x48
ffff1a1c:	e51f12cc 	ldr	r1, =USB0_BASE
ffff1a20:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1a24:	eaffffc5 	b	0xffff1940
ffff1a28:	ea00001a 	b	0xffff1a98
ffff1a2c:	e320f000 	nop	{0}
ffff1a30:	e5dd0000 	ldrb	r0, [sp]
ffff1a34:	e3500001 	cmp	r0, #1
ffff1a38:	1a000000 	bne	0xffff1a40
ffff1a3c:	eafffff5 	b	0xffff1a18
ffff1a40:	ea000014 	b	0xffff1a98
ffff1a44:	e320f000 	nop	{0}
ffff1a48:	e5dd0000 	ldrb	r0, [sp]
ffff1a4c:	e3500000 	cmp	r0, #0
ffff1a50:	1a00000a 	bne	0xffff1a80
ffff1a54:	e1dd00b2 	ldrh	r0, [sp, #2]
ffff1a58:	e200907f 	and	r9, r0, #127	; 0x7f
ffff1a5c:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1a60:	e5c0903c 	strb	r9, [r0, #60]	; 0x3c
ffff1a64:	e3a0004a 	mov	r0, #74	; 0x4a
ffff1a68:	e51f1318 	ldr	r1, =USB0_BASE
ffff1a6c:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1a70:	e3a00003 	mov	r0, #3
ffff1a74:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1a78:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1a7c:	eaffffaf 	b	0xffff1940
ffff1a80:	ea000004 	b	0xffff1a98
ffff1a84:	e320f000 	nop	{0}
ffff1a88:	e3a00040 	mov	r0, #64	; 0x40
ffff1a8c:	e51f133c 	ldr	r1, =USB0_BASE
ffff1a90:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1a94:	e320f000 	nop	{0}
ffff1a98:	e320f000 	nop	{0}
ffff1a9c:	e5dd0000 	ldrb	r0, [sp]
ffff1aa0:	e3100080 	tst	r0, #128	; 0x80
ffff1aa4:	0a000003 	beq	0xffff1ab8
ffff1aa8:	e3a00001 	mov	r0, #1
ffff1aac:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1ab0:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1ab4:	ea000002 	b	0xffff1ac4
ffff1ab8:	e3a00002 	mov	r0, #2
ffff1abc:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1ac0:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1ac4:	e1a0100d 	mov	r1, sp
ffff1ac8:	e1a00004 	mov	r0, r4
ffff1acc:	ebffff2c 	bl	f_1784
ffff1ad0:	e1a0a000 	mov	sl, r0
ffff1ad4:	e35a0000 	cmp	sl, #0
ffff1ad8:	aa000008 	bge	0xffff1b00
ffff1adc:	e3a00060 	mov	r0, #96	; 0x60
ffff1ae0:	e51f1390 	ldr	r1, =USB0_BASE
ffff1ae4:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1ae8:	e3a00048 	mov	r0, #72	; 0x48
ffff1aec:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1af0:	e3a00000 	mov	r0, #0
ffff1af4:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1af8:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1afc:	ea000006 	b	0xffff1b1c
ffff1b00:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1b04:	e5d0003d 	ldrb	r0, [r0, #61]	; 0x3d
ffff1b08:	e3500000 	cmp	r0, #0
ffff1b0c:	0a000002 	beq	0xffff1b1c
ffff1b10:	e3a00000 	mov	r0, #0
ffff1b14:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1b18:	e5c1003d 	strb	r0, [r1, #61]	; 0x3d
ffff1b1c:	e320f000 	nop	{0}
ffff1b20:	ea000035 	b	0xffff1bfc
ffff1b24:	e320f000 	nop	{0}
ffff1b28:	e3150002 	tst	r5, #2
ffff1b2c:	1a000005 	bne	0xffff1b48
ffff1b30:	e3570000 	cmp	r7, #0
ffff1b34:	0a000003 	beq	0xffff1b48
ffff1b38:	e1a02007 	mov	r2, r7
ffff1b3c:	e1a01006 	mov	r1, r6
ffff1b40:	e1a00004 	mov	r0, r4
ffff1b44:	ebfffd5d 	bl	f_10c0
ffff1b48:	ea00002b 	b	0xffff1bfc
ffff1b4c:	e320f000 	nop	{0}
ffff1b50:	e3150001 	tst	r5, #1
ffff1b54:	0a000005 	beq	0xffff1b70
ffff1b58:	e3570000 	cmp	r7, #0
ffff1b5c:	0a000003 	beq	0xffff1b70
ffff1b60:	e1a02007 	mov	r2, r7
ffff1b64:	e1a01006 	mov	r1, r6
ffff1b68:	e1a00004 	mov	r0, r4
ffff1b6c:	ebfffdb3 	bl	f_1240
ffff1b70:	ea000021 	b	0xffff1bfc
ffff1b74:	e320f000 	nop	{0}
ffff1b78:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1b7c:	e5d0003f 	ldrb	r0, [r0, #63]	; 0x3f
ffff1b80:	e3500005 	cmp	r0, #5
ffff1b84:	1a00000e 	bne	0xffff1bc4
ffff1b88:	e3a000c0 	mov	r0, #192	; 0xc0
ffff1b8c:	e51f143c 	ldr	r1, =USB0_BASE
ffff1b90:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1b94:	e3a08000 	mov	r8, #0
ffff1b98:	ebfffb75 	bl	get_epind
ffff1b9c:	e1a08000 	mov	r8, r0
ffff1ba0:	e3a00000 	mov	r0, #0
ffff1ba4:	ebfffb6f 	bl	set_epind
ffff1ba8:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1bac:	e5d0003c 	ldrb	r0, [r0, #60]	; 0x3c
ffff1bb0:	e51f1460 	ldr	r1, =USB0_BASE
ffff1bb4:	e5c10098 	strb	r0, [r1, #152]	; 0x98
ffff1bb8:	e1a00008 	mov	r0, r8
ffff1bbc:	ebfffb69 	bl	set_epind
ffff1bc0:	ea000001 	b	0xffff1bcc
ffff1bc4:	e320f000 	nop	{0}
ffff1bc8:	e320f000 	nop	{0}
ffff1bcc:	e320f000 	nop	{0}
ffff1bd0:	e3a00000 	mov	r0, #0
ffff1bd4:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1bd8:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1bdc:	ea000006 	b	0xffff1bfc
ffff1be0:	e320f000 	nop	{0}
ffff1be4:	e3a00000 	mov	r0, #0
ffff1be8:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1bec:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1bf0:	ea000001 	b	0xffff1bfc
ffff1bf4:	e320f000 	nop	{0}
ffff1bf8:	e320f000 	nop	{0}
ffff1bfc:	e320f000 	nop	{0}
ffff1c00:	eaffff4e 	b	0xffff1940

f_1c04:
ffff1c04:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff1c08:	e1a04000 	mov	r4, r0
ffff1c0c:	e1a05001 	mov	r5, r1
ffff1c10:	e3a06000 	mov	r6, #0
ffff1c14:	e3a07000 	mov	r7, #0
ffff1c18:	e3a08000 	mov	r8, #0
ffff1c1c:	e3550000 	cmp	r5, #0
ffff1c20:	1a000000 	bne	0xffff1c28
ffff1c24:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff1c28:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1c2c:	e0807205 	add	r7, r0, r5, lsl #4
ffff1c30:	e597600c 	ldr	r6, [r7, #12]
ffff1c34:	e5d70005 	ldrb	r0, [r7, #5]
ffff1c38:	e2008080 	and	r8, r0, #128	; 0x80
ffff1c3c:	e5d70005 	ldrb	r0, [r7, #5]
ffff1c40:	e200a07f 	and	sl, r0, #127	; 0x7f
ffff1c44:	e5d60018 	ldrb	r0, [r6, #24]
ffff1c48:	e3500001 	cmp	r0, #1
ffff1c4c:	0a000000 	beq	0xffff1c54
ffff1c50:	eafffff3 	b	0xffff1c24
ffff1c54:	e3580000 	cmp	r8, #0
ffff1c58:	0a000013 	beq	0xffff1cac
ffff1c5c:	e5d70004 	ldrb	r0, [r7, #4]
ffff1c60:	ebfffb40 	bl	set_epind
ffff1c64:	e51f0514 	ldr	r0, =USB0_BASE
ffff1c68:	e1d098b2 	ldrh	r9, [r0, #130]	; 0x82
ffff1c6c:	e3190020 	tst	r9, #32
ffff1c70:	0a000004 	beq	0xffff1c88
ffff1c74:	e51f1524 	ldr	r1, =USB0_BASE
ffff1c78:	e1c1a4b2 	strh	sl, [r1, #66]	; 0x42
ffff1c7c:	e3a00000 	mov	r0, #0
ffff1c80:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1c84:	eaffffe6 	b	0xffff1c24
ffff1c88:	e3190001 	tst	r9, #1
ffff1c8c:	1a000025 	bne	0xffff1d28
ffff1c90:	e3560000 	cmp	r6, #0
ffff1c94:	0a000023 	beq	0xffff1d28
ffff1c98:	e1a02006 	mov	r2, r6
ffff1c9c:	e1a01007 	mov	r1, r7
ffff1ca0:	e1a00004 	mov	r0, r4
ffff1ca4:	ebfffd05 	bl	f_10c0
ffff1ca8:	ea00001e 	b	0xffff1d28
ffff1cac:	e51f155c 	ldr	r1, =USB0_BASE
ffff1cb0:	e5c1a042 	strb	sl, [r1, #66]	; 0x42
ffff1cb4:	e1a00001 	mov	r0, r1
ffff1cb8:	e1d098b6 	ldrh	r9, [r0, #134]	; 0x86
ffff1cbc:	e3190040 	tst	r9, #64	; 0x40
ffff1cc0:	0a000003 	beq	0xffff1cd4
ffff1cc4:	e1c1a4b2 	strh	sl, [r1, #66]	; 0x42
ffff1cc8:	e3a00000 	mov	r0, #0
ffff1ccc:	e1c108b6 	strh	r0, [r1, #134]	; 0x86
ffff1cd0:	eaffffd3 	b	0xffff1c24
ffff1cd4:	e320f000 	nop	{0}
ffff1cd8:	e3190001 	tst	r9, #1
ffff1cdc:	0a000011 	beq	0xffff1d28
ffff1ce0:	e3560000 	cmp	r6, #0
ffff1ce4:	0a00000f 	beq	0xffff1d28
ffff1ce8:	e1a02006 	mov	r2, r6
ffff1cec:	e1a01007 	mov	r1, r7
ffff1cf0:	e1a00004 	mov	r0, r4
ffff1cf4:	ebfffd51 	bl	f_1240
ffff1cf8:	e5d60018 	ldrb	r0, [r6, #24]
ffff1cfc:	e3500000 	cmp	r0, #0
ffff1d00:	0a000008 	beq	0xffff1d28
ffff1d04:	e51f15b4 	ldr	r1, =USB0_BASE
ffff1d08:	e5c1a042 	strb	sl, [r1, #66]	; 0x42
ffff1d0c:	e1a00001 	mov	r0, r1
ffff1d10:	e1d098b6 	ldrh	r9, [r0, #134]	; 0x86
ffff1d14:	e3190001 	tst	r9, #1
ffff1d18:	0a000002 	beq	0xffff1d28
ffff1d1c:	e3560000 	cmp	r6, #0
ffff1d20:	0a000000 	beq	0xffff1d28
ffff1d24:	eaffffeb 	b	0xffff1cd8
ffff1d28:	eaffffbd 	b	0xffff1c24

interrupt_handler:
ffff1d2c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff1d30:	e3a04000 	mov	r4, #0
ffff1d34:	e3a05000 	mov	r5, #0
ffff1d38:	e3a06000 	mov	r6, #0
ffff1d3c:	e3a07000 	mov	r7, #0
ffff1d40:	e3a08000 	mov	r8, #0
ffff1d44:	ebfffb0a 	bl	get_epind
ffff1d48:	e1a04000 	mov	r4, r0
ffff1d4c:	e51f05e8 	ldr	r0, =0x7d00
ffff1d50:	e5900000 	ldr	r0, [r0]
ffff1d54:	eb000151 	bl	f_22a0
ffff1d58:	e1a06000 	mov	r6, r0
ffff1d5c:	e51f15f8 	ldr	r1, =0x7d00
ffff1d60:	e5910000 	ldr	r0, [r1]
ffff1d64:	e5901038 	ldr	r1, [r0, #56]	; 0x38
ffff1d68:	e3510000 	cmp	r1, #0
ffff1d6c:	1a000002 	bne	0xffff1d7c
ffff1d70:	e51f1620 	ldr	r1, =USB0_BASE
ffff1d74:	e5d11044 	ldrb	r1, [r1, #68]	; 0x44
ffff1d78:	e5801038 	str	r1, [r0, #56]	; 0x38
ffff1d7c:	e320f000 	nop	{0}
ffff1d80:	e5901038 	ldr	r1, [r0, #56]	; 0x38
ffff1d84:	e1a07001 	mov	r7, r1
ffff1d88:	e51f1624 	ldr	r1, =0x7d00
ffff1d8c:	e5910000 	ldr	r0, [r1]
ffff1d90:	e590103c 	ldr	r1, [r0, #60]	; 0x3c
ffff1d94:	e3510000 	cmp	r1, #0
ffff1d98:	1a000002 	bne	0xffff1da8
ffff1d9c:	e51f164c 	ldr	r1, =USB0_BASE
ffff1da0:	e5d11046 	ldrb	r1, [r1, #70]	; 0x46
ffff1da4:	e580103c 	str	r1, [r0, #60]	; 0x3c
ffff1da8:	e320f000 	nop	{0}
ffff1dac:	e590103c 	ldr	r1, [r0, #60]	; 0x3c
ffff1db0:	e1a08001 	mov	r8, r1
ffff1db4:	e3160004 	tst	r6, #4
ffff1db8:	0a000023 	beq	0xffff1e4c
ffff1dbc:	e3a00002 	mov	r0, #2
ffff1dc0:	e51f165c 	ldr	r1, =0x7d00
ffff1dc4:	e5911000 	ldr	r1, [r1]
ffff1dc8:	e5911024 	ldr	r1, [r1, #36]	; 0x24
ffff1dcc:	e5c10034 	strb	r0, [r1, #52]	; 0x34
ffff1dd0:	e3a00000 	mov	r0, #0
ffff1dd4:	e51f1670 	ldr	r1, =0x7d00
ffff1dd8:	e5911000 	ldr	r1, [r1]
ffff1ddc:	e5911024 	ldr	r1, [r1, #36]	; 0x24
ffff1de0:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1de4:	e3a01004 	mov	r1, #4
ffff1de8:	e51f0684 	ldr	r0, =0x7d00
ffff1dec:	e5900000 	ldr	r0, [r0]
ffff1df0:	eb00013b 	bl	f_22e4
ffff1df4:	e51f16a4 	ldr	r1, =USB0_BASE
ffff1df8:	e5c14042 	strb	r4, [r1, #66]	; 0x42
ffff1dfc:	ebfffca4 	bl	f_NOP3
ffff1e00:	e51f06b0 	ldr	r0, =USB0_BASE
ffff1e04:	e5d00048 	ldrb	r0, [r0, #72]	; 0x48
ffff1e08:	e3800001 	orr	r0, r0, #1
ffff1e0c:	e51f16bc 	ldr	r1, =USB0_BASE
ffff1e10:	e5c10048 	strb	r0, [r1, #72]	; 0x48
ffff1e14:	e51f06b0 	ldr	r0, =0x7d00
ffff1e18:	e5900000 	ldr	r0, [r0]
ffff1e1c:	ebfffc25 	bl	f_0eb8
ffff1e20:	e3a09000 	mov	r9, #0
ffff1e24:	ebfffad2 	bl	get_epind
ffff1e28:	e1a09000 	mov	r9, r0
ffff1e2c:	e3a00000 	mov	r0, #0
ffff1e30:	ebfffacc 	bl	set_epind
ffff1e34:	e3a00000 	mov	r0, #0
ffff1e38:	e51f16e8 	ldr	r1, =USB0_BASE
ffff1e3c:	e5c10098 	strb	r0, [r1, #152]	; 0x98
ffff1e40:	e1a00009 	mov	r0, r9
ffff1e44:	ebfffac7 	bl	set_epind
ffff1e48:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff1e4c:	e3160002 	tst	r6, #2
ffff1e50:	0a000003 	beq	0xffff1e64
ffff1e54:	e3a01002 	mov	r1, #2
ffff1e58:	e51f06f4 	ldr	r0, =0x7d00
ffff1e5c:	e5900000 	ldr	r0, [r0]
ffff1e60:	eb00011f 	bl	f_22e4
ffff1e64:	e3160001 	tst	r6, #1
ffff1e68:	0a000008 	beq	0xffff1e90
ffff1e6c:	e3a01001 	mov	r1, #1
ffff1e70:	e51f070c 	ldr	r0, =0x7d00
ffff1e74:	e5900000 	ldr	r0, [r0]
ffff1e78:	eb000119 	bl	f_22e4
ffff1e7c:	e3a00000 	mov	r0, #0
ffff1e80:	e51f171c 	ldr	r1, =0x7d00
ffff1e84:	e5911000 	ldr	r1, [r1]
ffff1e88:	e5911024 	ldr	r1, [r1, #36]	; 0x24
ffff1e8c:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1e90:	e3170001 	tst	r7, #1
ffff1e94:	0a000006 	beq	0xffff1eb4
ffff1e98:	e3a01001 	mov	r1, #1
ffff1e9c:	e51f0738 	ldr	r0, =0x7d00
ffff1ea0:	e5900000 	ldr	r0, [r0]
ffff1ea4:	eb000106 	bl	f_22c4
ffff1ea8:	e51f0744 	ldr	r0, =0x7d00
ffff1eac:	e5900000 	ldr	r0, [r0]
ffff1eb0:	ebfffe91 	bl	f_18fc
ffff1eb4:	e3a05001 	mov	r5, #1
ffff1eb8:	ea00001b 	b	0xffff1f2c
ffff1ebc:	e3a00001 	mov	r0, #1
ffff1ec0:	e1a09510 	lsl	r9, r0, r5
ffff1ec4:	e1170009 	tst	r7, r9
ffff1ec8:	0a000016 	beq	0xffff1f28
ffff1ecc:	e3a0a000 	mov	sl, #0
ffff1ed0:	e20910ff 	and	r1, r9, #255	; 0xff
ffff1ed4:	e51f0770 	ldr	r0, =0x7d00
ffff1ed8:	e5900000 	ldr	r0, [r0]
ffff1edc:	eb0000f8 	bl	f_22c4
ffff1ee0:	e3a0a001 	mov	sl, #1
ffff1ee4:	ea00000c 	b	0xffff1f1c
ffff1ee8:	e51f0784 	ldr	r0, =0x7d00
ffff1eec:	e5900000 	ldr	r0, [r0]
ffff1ef0:	e5900024 	ldr	r0, [r0, #36]	; 0x24
ffff1ef4:	e080020a 	add	r0, r0, sl, lsl #4
ffff1ef8:	e5d00005 	ldrb	r0, [r0, #5]
ffff1efc:	e2000080 	and	r0, r0, #128	; 0x80
ffff1f00:	e3500080 	cmp	r0, #128	; 0x80
ffff1f04:	1a000003 	bne	0xffff1f18
ffff1f08:	e1a0100a 	mov	r1, sl
ffff1f0c:	e51f07a8 	ldr	r0, =0x7d00
ffff1f10:	e5900000 	ldr	r0, [r0]
ffff1f14:	ebffff3a 	bl	f_1c04
ffff1f18:	e28aa001 	add	sl, sl, #1
ffff1f1c:	e35a0003 	cmp	sl, #3
ffff1f20:	bafffff0 	blt	0xffff1ee8
ffff1f24:	e320f000 	nop	{0}
ffff1f28:	e2855001 	add	r5, r5, #1
ffff1f2c:	e3550005 	cmp	r5, #5
ffff1f30:	daffffe1 	ble	0xffff1ebc
ffff1f34:	e3a05001 	mov	r5, #1
ffff1f38:	ea000020 	b	0xffff1fc0
ffff1f3c:	e3a00001 	mov	r0, #1
ffff1f40:	e1a09510 	lsl	r9, r0, r5
ffff1f44:	e1180009 	tst	r8, r9
ffff1f48:	0a00001b 	beq	0xffff1fbc
ffff1f4c:	e3a00000 	mov	r0, #0
ffff1f50:	e1a0a000 	mov	sl, r0
ffff1f54:	e51f27f0 	ldr	r2, =0x7d00
ffff1f58:	e20910ff 	and	r1, r9, #255	; 0xff
ffff1f5c:	e5920000 	ldr	r0, [r2]
ffff1f60:	e590203c 	ldr	r2, [r0, #60]	; 0x3c
ffff1f64:	e1c22001 	bic	r2, r2, r1
ffff1f68:	e580203c 	str	r2, [r0, #60]	; 0x3c
ffff1f6c:	e51f281c 	ldr	r2, =USB0_BASE
ffff1f70:	e5c21046 	strb	r1, [r2, #70]	; 0x46
ffff1f74:	e320f000 	nop	{0}
ffff1f78:	e3a0a001 	mov	sl, #1
ffff1f7c:	ea00000b 	b	0xffff1fb0
ffff1f80:	e51f081c 	ldr	r0, =0x7d00
ffff1f84:	e5900000 	ldr	r0, [r0]
ffff1f88:	e5900024 	ldr	r0, [r0, #36]	; 0x24
ffff1f8c:	e080020a 	add	r0, r0, sl, lsl #4
ffff1f90:	e5d00005 	ldrb	r0, [r0, #5]
ffff1f94:	e3100080 	tst	r0, #128	; 0x80
ffff1f98:	1a000003 	bne	0xffff1fac
ffff1f9c:	e1a0100a 	mov	r1, sl
ffff1fa0:	e51f083c 	ldr	r0, =0x7d00
ffff1fa4:	e5900000 	ldr	r0, [r0]
ffff1fa8:	ebffff15 	bl	f_1c04
ffff1fac:	e28aa001 	add	sl, sl, #1
ffff1fb0:	e35a0003 	cmp	sl, #3
ffff1fb4:	bafffff1 	blt	0xffff1f80
ffff1fb8:	e320f000 	nop	{0}
ffff1fbc:	e2855001 	add	r5, r5, #1
ffff1fc0:	e3550005 	cmp	r5, #5
ffff1fc4:	daffffdc 	ble	0xffff1f3c
ffff1fc8:	ebfffc31 	bl	f_NOP3
ffff1fcc:	e51f187c 	ldr	r1, =USB0_BASE
ffff1fd0:	e5c14042 	strb	r4, [r1, #66]	; 0x42
ffff1fd4:	e51f1870 	ldr	r1, =0x7d00
ffff1fd8:	e5910000 	ldr	r0, [r1]
ffff1fdc:	e3a01000 	mov	r1, #0
ffff1fe0:	e5801040 	str	r1, [r0, #64]	; 0x40
ffff1fe4:	e5801038 	str	r1, [r0, #56]	; 0x38
ffff1fe8:	e580103c 	str	r1, [r0, #60]	; 0x3c
ffff1fec:	e320f000 	nop	{0}
ffff1ff0:	eaffff94 	b	0xffff1e48

f_1ff4:
ffff1ff4:	e92d4010 	push	{r4, lr}
ffff1ff8:	e3a02c01 	mov	r2, #0x100
ffff1ffc:	e3a010cc 	mov	r1, #0xcc
ffff2000:	e3a00c7e 	ldr	r0, =0x7e00
ffff2004:	ebfff85a 	bl	memset
ffff2008:	e8bd8010 	pop	{r4, pc}

f_200c:
ffff200c:	e92d4010 	push	{r4, lr}
ffff2010:	e24ddd47 	sub	sp, sp, #4544	; 0x11c0
ffff2014:	ebfffff6 	bl	f_1ff4
ffff2018:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff201c:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff2020:	e51f18bc 	ldr	r1, =0x7d00
ffff2024:	e5810000 	str	r0, [r1]
ffff2028:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff202c:	e2800f5a 	add	r0, r0, #360	; 0x168
ffff2030:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2034:	e58c017c 	str	r0, [ip, #380]	; 0x17c
ffff2038:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff203c:	e2800f57 	add	r0, r0, #348	; 0x15c
ffff2040:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2044:	e58c0180 	str	r0, [ip, #384]	; 0x180
ffff2048:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff204c:	e2800e15 	add	r0, r0, #336	; 0x150
ffff2050:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2054:	e58c0184 	str	r0, [ip, #388]	; 0x184
ffff2058:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff205c:	e2800f52 	add	r0, r0, #328	; 0x148
ffff2060:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2064:	e58c0188 	str	r0, [ip, #392]	; 0x188
ffff2068:	e28d0d45 	add	r0, sp, #4416	; 0x1140
ffff206c:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2070:	e58c018c 	str	r0, [ip, #396]	; 0x18c
ffff2074:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2078:	e2800f4e 	add	r0, r0, #312	; 0x138
ffff207c:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2080:	e58c0190 	str	r0, [ip, #400]	; 0x190
ffff2084:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2088:	e2800e13 	add	r0, r0, #304	; 0x130
ffff208c:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2090:	e58c0194 	str	r0, [ip, #404]	; 0x194
ffff2094:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2098:	e2800f4a 	add	r0, r0, #296	; 0x128
ffff209c:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20a0:	e58c0198 	str	r0, [ip, #408]	; 0x198
ffff20a4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20a8:	e2800e12 	add	r0, r0, #288	; 0x120
ffff20ac:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20b0:	e58c019c 	str	r0, [ip, #412]	; 0x19c
ffff20b4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20b8:	e28000d8 	add	r0, r0, #216	; 0xd8
ffff20bc:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20c0:	e58c01a0 	str	r0, [ip, #416]	; 0x1a0
ffff20c4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20c8:	e28000bc 	add	r0, r0, #188	; 0xbc
ffff20cc:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20d0:	e58c01a4 	str	r0, [ip, #420]	; 0x1a4
ffff20d4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20d8:	e28000a0 	add	r0, r0, #160	; 0xa0
ffff20dc:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20e0:	e58c01a8 	str	r0, [ip, #424]	; 0x1a8
ffff20e4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20e8:	e2800084 	add	r0, r0, #132	; 0x84
ffff20ec:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20f0:	e58c01ac 	str	r0, [ip, #428]	; 0x1ac
ffff20f4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20f8:	e2800068 	add	r0, r0, #104	; 0x68
ffff20fc:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2100:	e58c01b0 	str	r0, [ip, #432]	; 0x1b0
ffff2104:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2108:	e2800f6d 	add	r0, r0, #436	; 0x1b4
ffff210c:	ebfffd41 	bl	f_1618
ffff2110:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2114:	e2800f5a 	add	r0, r0, #360	; 0x168
ffff2118:	ebfffa18 	bl	f_0980
ffff211c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2120:	e2800f57 	add	r0, r0, #348	; 0x15c
ffff2124:	ebfffa2e 	bl	f_09e4
ffff2128:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff212c:	e2800e15 	add	r0, r0, #336	; 0x150
ffff2130:	ebfffa3b 	bl	f_0a24
ffff2134:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2138:	e2800f52 	add	r0, r0, #328	; 0x148
ffff213c:	ebfffa48 	bl	f_0a64
ffff2140:	e28d0d45 	add	r0, sp, #4416	; 0x1140
ffff2144:	ebfffa53 	bl	f_0a98
ffff2148:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff214c:	e2822f52 	add	r2, r2, #328	; 0x148
ffff2150:	e28d1d45 	add	r1, sp, #4416	; 0x1140
ffff2154:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2158:	e2800f4e 	add	r0, r0, #312	; 0x138
ffff215c:	ebfffa5a 	bl	f_0acc
ffff2160:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2164:	e2800e13 	add	r0, r0, #304	; 0x130
ffff2168:	ebfffa5a 	bl	f_NOP4
ffff216c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2170:	e2800f4a 	add	r0, r0, #296	; 0x128
ffff2174:	ebfffa58 	bl	f_NOP5
ffff2178:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff217c:	e2822e13 	add	r2, r2, #304	; 0x130
ffff2180:	e28d1a01 	add	r1, sp, #4096	; 0x1000
ffff2184:	e2811f4a 	add	r1, r1, #296	; 0x128
ffff2188:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff218c:	e2800e12 	add	r0, r0, #288	; 0x120
ffff2190:	ebfffa52 	bl	f_NOP6
ffff2194:	e28d2d45 	add	r2, sp, #4416	; 0x1140
ffff2198:	e28d1a01 	add	r1, sp, #4096	; 0x1000
ffff219c:	e2811f52 	add	r1, r1, #328	; 0x148
ffff21a0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21a4:	e28000d8 	add	r0, r0, #216	; 0xd8
ffff21a8:	ebfffa4d 	bl	f_0ae4
ffff21ac:	e28d3a01 	add	r3, sp, #4096	; 0x1000
ffff21b0:	e2833084 	add	r3, r3, #132	; 0x84
ffff21b4:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff21b8:	e2822068 	add	r2, r2, #104	; 0x68
ffff21bc:	e28d1068 	add	r1, sp, #104	; 0x68
ffff21c0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21c4:	e28000bc 	add	r0, r0, #188	; 0xbc
ffff21c8:	ebfffa6b 	bl	f_0b7c
ffff21cc:	e28d1024 	add	r1, sp, #36	; 0x24
ffff21d0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21d4:	e28000a0 	add	r0, r0, #160	; 0xa0
ffff21d8:	ebfffa71 	bl	f_0ba4
ffff21dc:	e28d1068 	add	r1, sp, #104	; 0x68
ffff21e0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21e4:	e2800084 	add	r0, r0, #132	; 0x84
ffff21e8:	ebfffa84 	bl	f_0c00
ffff21ec:	e28d1068 	add	r1, sp, #104	; 0x68
ffff21f0:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21f4:	e2800068 	add	r0, r0, #104	; 0x68
ffff21f8:	ebfffa74 	bl	f_0bd0
ffff21fc:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2200:	e28d3a01 	add	r3, sp, #4096	; 0x1000
ffff2204:	e2833084 	add	r3, r3, #132	; 0x84
ffff2208:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff220c:	e2822068 	add	r2, r2, #104	; 0x68
ffff2210:	e28d1a01 	add	r1, sp, #4096	; 0x1000
ffff2214:	e28110a0 	add	r1, r1, #160	; 0xa0
ffff2218:	e59c01a0 	ldr	r0, [ip, #416]	; 0x1a0
ffff221c:	ebfffa83 	bl	f_0c30
ffff2220:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2224:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff2228:	ebfff9c4 	bl	f_0940
ffff222c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2230:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff2234:	ebfffb55 	bl	f_0f90
ffff2238:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff223c:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff2240:	ebfff9a6 	bl	f_08e0
ffff2244:	e28ddd47 	add	sp, sp, #4544	; 0x11c0
ffff2248:	e8bd8010 	pop	{r4, pc}

f_224c:
ffff224c:	e92d4070 	push	{r4, r5, r6, lr}
ffff2250:	e1a04000 	mov	r4, r0
ffff2254:	e3a05000 	mov	r5, #0
ffff2258:	e3046e20 	movw	r6, #20000	; 0x4e20
ffff225c:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff2260:	e2805020 	add	r5, r0, #32
ffff2264:	e5d50004 	ldrb	r0, [r5, #4]
ffff2268:	ebfff9be 	bl	set_epind
ffff226c:	ea00000a 	b	0xffff229c
ffff2270:	e51f0b20 	ldr	r0, =USB0_BASE
ffff2274:	e1d008b2 	ldrh	r0, [r0, #130]	; 0x82	= USB0_CSR0
ffff2278:	e3100001 	tst	r0, #1			; RX_PKT_READY
ffff227c:	1a000001 	bne	0xffff2288
ffff2280:	e3a00001 	mov	r0, #1
ffff2284:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff2288:	e3560000 	cmp	r6, #0
ffff228c:	1a000001 	bne	0xffff2298
ffff2290:	e3a00002 	mov	r0, #2
ffff2294:	eafffffa 	b	0xffff2284
ffff2298:	e2466001 	sub	r6, r6, #1
ffff229c:	eafffff3 	b	0xffff2270

f_22a0:
ffff22a0:	e1a01000 	mov	r1, r0
ffff22a4:	e5910040 	ldr	r0, [r1, #64]	; 0x40
ffff22a8:	e3500000 	cmp	r0, #0
ffff22ac:	1a000002 	bne	0xffff22bc
ffff22b0:	e51f0b60 	ldr	r0, =USB0_BASE
ffff22b4:	e5d0004c 	ldrb	r0, [r0, #76]	; 0x4c
ffff22b8:	e5810040 	str	r0, [r1, #64]	; 0x40
ffff22bc:	e5910040 	ldr	r0, [r1, #64]	; 0x40
ffff22c0:	e12fff1e 	bx	lr

f_22c4:
ffff22c4:	e1a02000 	mov	r2, r0
ffff22c8:	e5920038 	ldr	r0, [r2, #56]	; 0x38
ffff22cc:	e1c00001 	bic	r0, r0, r1
ffff22d0:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff22d4:	e51f0b84 	ldr	r0, =USB0_BASE
ffff22d8:	e5c01044 	strb	r1, [r0, #68]	; 0x44
ffff22dc:	e3a00000 	mov	r0, #0
ffff22e0:	e12fff1e 	bx	lr

f_22e4:
ffff22e4:	e1a02000 	mov	r2, r0
ffff22e8:	e5920040 	ldr	r0, [r2, #64]	; 0x40
ffff22ec:	e1c00001 	bic	r0, r0, r1
ffff22f0:	e5820040 	str	r0, [r2, #64]	; 0x40
ffff22f4:	e51f0ba4 	ldr	r0, =USB0_BASE
ffff22f8:	e5c0104c 	strb	r1, [r0, #76]	; 0x4c
ffff22fc:	e3a00000 	mov	r0, #0
ffff2300:	e12fff1e 	bx	lr

f_2304:
ffff2304:	e92d4070 	push	{r4, r5, r6, lr}
ffff2308:	e1a03000 	mov	r3, r0
ffff230c:	e3a00000 	mov	r0, #0
ffff2310:	e5915000 	ldr	r5, [r1]
ffff2314:	e5916010 	ldr	r6, [r1, #16]
ffff2318:	e0854006 	add	r4, r5, r6
ffff231c:	e5915004 	ldr	r5, [r1, #4]
ffff2320:	e5916010 	ldr	r6, [r1, #16]
ffff2324:	e0455006 	sub	r5, r5, r6
ffff2328:	e1550002 	cmp	r5, r2
ffff232c:	2a000003 	bcs	0xffff2340
ffff2330:	e5915004 	ldr	r5, [r1, #4]
ffff2334:	e5916010 	ldr	r6, [r1, #16]
ffff2338:	e0455006 	sub	r5, r5, r6
ffff233c:	ea000000 	b	0xffff2344
ffff2340:	e1a05002 	mov	r5, r2
ffff2344:	e1a00005 	mov	r0, r5
ffff2348:	e5915010 	ldr	r5, [r1, #16]
ffff234c:	e0855000 	add	r5, r5, r0
ffff2350:	e5815010 	str	r5, [r1, #16]
ffff2354:	e1a02000 	mov	r2, r0
ffff2358:	ea000001 	b	0xffff2364
ffff235c:	e4d45001 	ldrb	r5, [r4], #1
ffff2360:	e5c35000 	strb	r5, [r3]
ffff2364:	e1b05002 	movs	r5, r2
ffff2368:	e2422001 	sub	r2, r2, #1
ffff236c:	1afffffa 	bne	0xffff235c
ffff2370:	e8bd8070 	pop	{r4, r5, r6, pc}

f_2374:
ffff2374:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff2378:	e1a04000 	mov	r4, r0
ffff237c:	e3a06000 	mov	r6, #0
ffff2380:	e5925004 	ldr	r5, [r2, #4]
ffff2384:	e5927010 	ldr	r7, [r2, #16]
ffff2388:	e0455007 	sub	r5, r5, r7
ffff238c:	e1550003 	cmp	r5, r3
ffff2390:	2a000003 	bcs	0xffff23a4
ffff2394:	e5925004 	ldr	r5, [r2, #4]
ffff2398:	e5927010 	ldr	r7, [r2, #16]
ffff239c:	e0455007 	sub	r5, r5, r7
ffff23a0:	ea000000 	b	0xffff23a8
ffff23a4:	e1a05003 	mov	r5, r3
ffff23a8:	e1a00005 	mov	r0, r5
ffff23ac:	e5925010 	ldr	r5, [r2, #16]
ffff23b0:	e0855000 	add	r5, r5, r0
ffff23b4:	e5825010 	str	r5, [r2, #16]
ffff23b8:	e1a03000 	mov	r3, r0
ffff23bc:	e1a00003 	mov	r0, r3
ffff23c0:	e3530004 	cmp	r3, #4
ffff23c4:	9a00000a 	bls	0xffff23f4
ffff23c8:	ea000005 	b	0xffff23e4
ffff23cc:	e5d45000 	ldrb	r5, [r4]
ffff23d0:	e5c15000 	strb	r5, [r1]
ffff23d4:	e3560008 	cmp	r6, #8
ffff23d8:	2a000000 	bcs	0xffff23e0
ffff23dc:	e2866001 	add	r6, r6, #1
ffff23e0:	e2811001 	add	r1, r1, #1
ffff23e4:	e1b05003 	movs	r5, r3
ffff23e8:	e2433001 	sub	r3, r3, #1
ffff23ec:	1afffff6 	bne	0xffff23cc
ffff23f0:	ea000013 	b	0xffff2444
ffff23f4:	e1a05001 	mov	r5, r1
ffff23f8:	e1a07001 	mov	r7, r1
ffff23fc:	e3530004 	cmp	r3, #4
ffff2400:	1a000002 	bne	0xffff2410
ffff2404:	e594c000 	ldr	ip, [r4]
ffff2408:	e585c000 	str	ip, [r5]
ffff240c:	ea00000b 	b	0xffff2440
ffff2410:	e3530002 	cmp	r3, #2
ffff2414:	1a000002 	bne	0xffff2424
ffff2418:	e1d4c0b0 	ldrh	ip, [r4]
ffff241c:	e1c7c0b0 	strh	ip, [r7]
ffff2420:	ea000006 	b	0xffff2440
ffff2424:	ea000002 	b	0xffff2434
ffff2428:	e5d4c000 	ldrb	ip, [r4]
ffff242c:	e5c1c000 	strb	ip, [r1]
ffff2430:	e2811001 	add	r1, r1, #1
ffff2434:	e1b0c003 	movs	ip, r3
ffff2438:	e2433001 	sub	r3, r3, #1
ffff243c:	1afffff9 	bne	0xffff2428
ffff2440:	e320f000 	nop	{0}
ffff2444:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

f_2448:
ffff2448:	e92d4030 	push	{r4, r5, lr}
ffff244c:	e3a03000 	mov	r3, #0
ffff2450:	e3a01000 	mov	r1, #0
ffff2454:	e3a02000 	mov	r2, #0
ffff2458:	e1a03a20 	lsr	r3, r0, #20
ffff245c:	e3a05802 	mov	r5, #131072	; 0x20000
ffff2460:	e0852103 	add	r2, r5, r3, lsl #2
ffff2464:	e5921000 	ldr	r1, [r2]
ffff2468:	e307400c 	movw	r4, #28684	; 0x700c
ffff246c:	e1c11004 	bic	r1, r1, r4
ffff2470:	e3811a01 	orr	r1, r1, #4096	; 0x1000
ffff2474:	e5821000 	str	r1, [r2]
ffff2478:	e8bd8030 	pop	{r4, r5, pc}

f_247c:
ffff247c:	e3a00000 	mov	r0, #0
ffff2480:	e3a02802 	mov	r2, #131072	; 0x20000
ffff2484:	e3a01000 	mov	r1, #0
ffff2488:	e320f000 	nop	{0}
ffff248c:	ea000006 	b	0xffff24ac
ffff2490:	e3a01000 	mov	r1, #0
ffff2494:	e1811a00 	orr	r1, r1, r0, lsl #20
ffff2498:	e3003de2 	movw	r3, #3554	; 0xde2
ffff249c:	e1811003 	orr	r1, r1, r3
ffff24a0:	e5821000 	str	r1, [r2]
ffff24a4:	e2822004 	add	r2, r2, #4
ffff24a8:	e2800001 	add	r0, r0, #1
ffff24ac:	e3500a01 	cmp	r0, #4096	; 0x1000
ffff24b0:	3afffff6 	bcc	0xffff2490
ffff24b4:	e12fff1e 	bx	lr

f_24b8:
ffff24b8:	e92d4010 	push	{r4, lr}
ffff24bc:	e3a00000 	mov	r0, #0
ffff24c0:	ebffffe0 	bl	f_2448
ffff24c4:	e59f0014 	ldr	r0, =0xfff00000
ffff24c8:	ebffffde 	bl	f_2448
ffff24cc:	e8bd8010 	pop	{r4, pc}

f_24d0:
ffff24d0:	e92d4010 	push	{r4, lr}
ffff24d4:	ebffffe8 	bl	f_247c
ffff24d8:	ebfffff6 	bl	f_24b8
ffff24dc:	e8bd8010 	pop	{r4, pc}

f_24e4:
ffff24e4:	e3520003 	cmp	r2, #3
ffff24e8:	9a000017 	bls	0xffff254c
ffff24ec:	e210c003 	ands	ip, r0, #3
ffff24f0:	0a000008 	beq	0xffff2518
ffff24f4:	e4d13001 	ldrb	r3, [r1], #1
ffff24f8:	e35c0002 	cmp	ip, #2
ffff24fc:	e082200c 	add	r2, r2, ip
ffff2500:	94d1c001 	ldrbls	ip, [r1], #1
ffff2504:	e4c03001 	strb	r3, [r0], #1
ffff2508:	34d13001 	ldrbcc	r3, [r1], #1
ffff250c:	94c0c001 	strbls	ip, [r0], #1
ffff2510:	e2422004 	sub	r2, r2, #4
ffff2514:	34c03001 	strbcc	r3, [r0], #1
ffff2518:	e2113003 	ands	r3, r1, #3
ffff251c:	0a000012 	beq	0xffff256c
ffff2520:	e2522008 	subs	r2, r2, #8
ffff2524:	3a000004 	bcc	0xffff253c
ffff2528:	e4913004 	ldr	r3, [r1], #4
ffff252c:	e491c004 	ldr	ip, [r1], #4
ffff2530:	e4803004 	str	r3, [r0], #4
ffff2534:	e480c004 	str	ip, [r0], #4
ffff2538:	eafffff8 	b	0xffff2520
ffff253c:	e2922004 	adds	r2, r2, #4
ffff2540:	54913004 	ldrpl	r3, [r1], #4
ffff2544:	54803004 	strpl	r3, [r0], #4
ffff2548:	e1a00000 	nop			; (mov r0, r0)
ffff254c:	e1b02f82 	lsls	r2, r2, #31
ffff2550:	24d13001 	ldrbcs	r3, [r1], #1
ffff2554:	24d1c001 	ldrbcs	ip, [r1], #1
ffff2558:	44d12001 	ldrbmi	r2, [r1], #1
ffff255c:	24c03001 	strbcs	r3, [r0], #1
ffff2560:	24c0c001 	strbcs	ip, [r0], #1
ffff2564:	44c02001 	strbmi	r2, [r0], #1
ffff2568:	e12fff1e 	bx	lr

ffff256c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff2570:	e2522020 	subs	r2, r2, #32
ffff2574:	3a00000d 	bcc	0xffff25b0
ffff2578:	e3520e12 	cmp	r2, #288	; 0x120
ffff257c:	3a000007 	bcc	0xffff25a0
ffff2580:	f5d1f100 	pld	[r1, #256]	; 0x100
ffff2584:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff2588:	e2422040 	sub	r2, r2, #64	; 0x40
ffff258c:	e3520e12 	cmp	r2, #288	; 0x120
ffff2590:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff2594:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff2598:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff259c:	2afffff7 	bcs	0xffff2580
ffff25a0:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff25a4:	e2522020 	subs	r2, r2, #32
ffff25a8:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff25ac:	2afffffb 	bcs	0xffff25a0
ffff25b0:	e1b0ce02 	lsls	ip, r2, #28
ffff25b4:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
ffff25b8:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
ffff25bc:	48b10018 	ldmmi	r1!, {r3, r4}
ffff25c0:	48a00018 	stmiami	r0!, {r3, r4}
ffff25c4:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
ffff25c8:	e1b0cf02 	lsls	ip, r2, #30
ffff25cc:	24913004 	ldrcs	r3, [r1], #4
ffff25d0:	24803004 	strcs	r3, [r0], #4
ffff25d4:	012fff1e 	bxeq	lr
ffff25d8:	e1b02f82 	lsls	r2, r2, #31
ffff25dc:	20d130b2 	ldrhcs	r3, [r1], #2
ffff25e0:	44d12001 	ldrbmi	r2, [r1], #1
ffff25e4:	20c030b2 	strhcs	r3, [r0], #2
ffff25e8:	44c02001 	strbmi	r2, [r0], #1
ffff25ec:	e12fff1e 	bx	lr

ffff25f0:	e92d4001 	push	{r0, lr}
ffff25f4:	ebffffff 	bl	f_25f8
f_25f8:
ffff25f8:	ebffffff 	bl	f_25fc
f_25fc:
ffff25fc:	ebffffff 	bl	f_2600
f_2600:
ffff2600:	ebffffff 	bl	f_2604
f_2604:
ffff2604:	ebffffff 	bl	f_2608
f_2608:
ffff2608:	ebffffff 	bl	f_260c
f_260c:
ffff260c:	ebffffff 	bl	f_2610
f_2610:
ffff2610:	ebffffff 	bl	f_2614
f_2614:
ffff2614:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff2618:	e3800b02 	orr	r0, r0, #2048	; 0x800
ffff261c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff2620:	e8bd4001 	pop	{r0, lr}
ffff2624:	e1a0f00e 	mov	pc, lr

ffff2628:	e92d4001 	push	{r0, lr}
ffff262c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff2630:	e3800a01 	orr	r0, r0, #4096	; 0x1000
ffff2634:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff2638:	e8bd4001 	pop	{r0, lr}
ffff263c:	e1a0f00e 	mov	pc, lr

ffff2640:	e92d4001 	push	{r0, lr}
ffff2644:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff2648:	e3800004 	orr	r0, r0, #4
ffff264c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff2650:	e8bd4001 	pop	{r0, lr}
ffff2654:	e1a0f00e 	mov	pc, lr

ffff2658:	e92d4001 	push	{r0, lr}
ffff265c:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
ffff2660:	e3800002 	orr	r0, r0, #2
ffff2664:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
ffff2668:	e8bd4001 	pop	{r0, lr}
ffff266c:	e1a0f00e 	mov	pc, lr

ffff2670:	e92d4001 	push	{r0, lr}
ffff2674:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff2678:	e3800001 	orr	r0, r0, #1
ffff267c:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff2680:	e8bd4001 	pop	{r0, lr}
ffff2684:	e1a0f00e 	mov	pc, lr

ffff2688:	e92d4001 	push	{r0, lr}
ffff268c:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
ffff2690:	e3c00002 	bic	r0, r0, #2
ffff2694:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
ffff2698:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff269c:	e3c00001 	bic	r0, r0, #1
ffff26a0:	e3c00b02 	bic	r0, r0, #2048	; 0x800
ffff26a4:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
ffff26a8:	e3c00004 	bic	r0, r0, #4
ffff26ac:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff26b0:	e8bd4001 	pop	{r0, lr}
ffff26b4:	e1a0f00e 	mov	pc, lr

f_26b8:
ffff26b8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff26bc:	ee300f30 	mrc	15, 1, r0, cr0, cr0, {1}
ffff26c0:	e2103407 	ands	r3, r0, #117440512	; 0x7000000
ffff26c4:	e1a03ba3 	lsr	r3, r3, #23
ffff26c8:	0a00001a 	beq	0xffff2738
ffff26cc:	e3a0a000 	mov	sl, #0
ffff26d0:	e08a20aa 	add	r2, sl, sl, lsr #1
ffff26d4:	e1a01230 	lsr	r1, r0, r2
ffff26d8:	e2011007 	and	r1, r1, #7
ffff26dc:	e3510002 	cmp	r1, #2
ffff26e0:	ba000011 	blt	0xffff272c
ffff26e4:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
ffff26e8:	f57ff06f 	isb	sy
ffff26ec:	ee301f10 	mrc	15, 1, r1, cr0, cr0, {0}
ffff26f0:	e2012007 	and	r2, r1, #7
ffff26f4:	e2822004 	add	r2, r2, #4
ffff26f8:	e30043ff 	movw	r4, #1023	; 0x3ff
ffff26fc:	e01441a1 	ands	r4, r4, r1, lsr #3
ffff2700:	e16f5f14 	clz	r5, r4
ffff2704:	e3077fff 	movw	r7, #32767	; 0x7fff
ffff2708:	e01776a1 	ands	r7, r7, r1, lsr #13
ffff270c:	e1a09004 	mov	r9, r4
ffff2710:	e18ab519 	orr	fp, sl, r9, lsl r5
ffff2714:	e18bb217 	orr	fp, fp, r7, lsl r2
ffff2718:	ee07bf5e 	mcr	15, 0, fp, cr7, cr14, {2}
ffff271c:	e2599001 	subs	r9, r9, #1
ffff2720:	aafffffa 	bge	0xffff2710
ffff2724:	e2577001 	subs	r7, r7, #1
ffff2728:	aafffff7 	bge	0xffff270c
ffff272c:	e28aa002 	add	sl, sl, #2
ffff2730:	e153000a 	cmp	r3, sl
ffff2734:	caffffe5 	bgt	0xffff26d0
ffff2738:	e3a0a000 	mov	sl, #0
ffff273c:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
ffff2740:	f57ff06f 	isb	sy
ffff2744:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff2748:	e1a0f00e 	mov	pc, lr

f_274c:
ffff274c:	e92d0003 	push	{r0, r1}
ffff2750:	e3a00000 	mov	r0, #0
ffff2754:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
ffff2758:	e8bd0003 	pop	{r0, r1}
ffff275c:	e1a0f00e 	mov	pc, lr

ffff2760:	e92d4001 	push	{r0, lr}
ffff2764:	ebfffff8 	bl	f_274c
ffff2768:	ebffffd2 	bl	f_26b8
ffff276c:	e8bd4001 	pop	{r0, lr}
ffff2770:	e1a0f00e 	mov	pc, lr

ffff2774:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff2778:	e3a02040 	mov	r2, #64	; 0x40
ffff277c:	e2423001 	sub	r3, r2, #1
ffff2780:	e1c00003 	bic	r0, r0, r3
ffff2784:	ee070f3b 	mcr	15, 0, r0, cr7, cr11, {1}
ffff2788:	f57ff04f 	dsb	sy
ffff278c:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
ffff2790:	e0800002 	add	r0, r0, r2
ffff2794:	e1500001 	cmp	r0, r1
ffff2798:	3afffff9 	bcc	0xffff2784
ffff279c:	e3a00000 	mov	r0, #0
ffff27a0:	ee070fd5 	mcr	15, 0, r0, cr7, cr5, {6}
ffff27a4:	f57ff04f 	dsb	sy
ffff27a8:	f57ff06f 	isb	sy
ffff27ac:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27b0:	e1a0f00e 	mov	pc, lr

ffff27b4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27b8:	e3a02040 	mov	r2, #64	; 0x40
ffff27bc:	e2423001 	sub	r3, r2, #1
ffff27c0:	e1c00003 	bic	r0, r0, r3
ffff27c4:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
ffff27c8:	e0800002 	add	r0, r0, r2
ffff27cc:	e1500001 	cmp	r0, r1
ffff27d0:	3afffffb 	bcc	0xffff27c4
ffff27d4:	f57ff04f 	dsb	sy
ffff27d8:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27dc:	e1a0f00e 	mov	pc, lr

ffff27e0:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27e4:	e3a02040 	mov	r2, #64	; 0x40
ffff27e8:	e2423001 	sub	r3, r2, #1
ffff27ec:	e1c00003 	bic	r0, r0, r3
ffff27f0:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
ffff27f4:	e0800002 	add	r0, r0, r2
ffff27f8:	e1500001 	cmp	r0, r1
ffff27fc:	3afffffb 	bcc	0xffff27f0
ffff2800:	f57ff04f 	dsb	sy
ffff2804:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff2808:	e1a0f00e 	mov	pc, lr

ffff280c:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff2810:	e3a02040 	mov	r2, #64	; 0x40
ffff2814:	e2423001 	sub	r3, r2, #1
ffff2818:	e1100003 	tst	r0, r3
ffff281c:	e1c00003 	bic	r0, r0, r3
ffff2820:	1e070f3e 	mcrne	15, 0, r0, cr7, cr14, {1}
ffff2824:	e1110003 	tst	r1, r3
ffff2828:	e1c11003 	bic	r1, r1, r3
ffff282c:	1e071f3e 	mcrne	15, 0, r1, cr7, cr14, {1}
ffff2830:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
ffff2834:	e0800002 	add	r0, r0, r2
ffff2838:	e1500001 	cmp	r0, r1
ffff283c:	3afffffb 	bcc	0xffff2830
ffff2840:	f57ff04f 	dsb	sy
ffff2844:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff2848:	e1a0f00e 	mov	pc, lr

ffff284c:	e92d4001 	push	{r0, lr}
ffff2850:	e3a00000 	mov	r0, #0
ffff2854:	ee080f15 	mcr	15, 0, r0, cr8, cr5, {0}
ffff2858:	ee080f16 	mcr	15, 0, r0, cr8, cr6, {0}
ffff285c:	e8bd4001 	pop	{r0, lr}
ffff2860:	e1a0f00e 	mov	pc, lr

ffff2864:	e92d4001 	push	{r0, lr}
ffff2868:	e10f0000 	mrs	r0, CPSR
ffff286c:	e3c01080 	bic	r1, r0, #128	; 0x80
ffff2870:	e121f001 	msr	CPSR_c, r1
ffff2874:	e8bd4001 	pop	{r0, lr}
ffff2878:	e1a0f00e 	mov	pc, lr

ffff287c:	e92d4001 	push	{r0, lr}
ffff2880:	e10f0000 	mrs	r0, CPSR
ffff2884:	e3801080 	orr	r1, r0, #128	; 0x80
ffff2888:	e121f001 	msr	CPSR_c, r1
ffff288c:	e8bd4001 	pop	{r0, lr}
ffff2890:	e1a0f00e 	mov	pc, lr

ffff2894:	e92d4001 	push	{r0, lr}
ffff2898:	e10f0000 	mrs	r0, CPSR
ffff289c:	e3c01040 	bic	r1, r0, #64	; 0x40
ffff28a0:	e121f001 	msr	CPSR_c, r1
ffff28a4:	e8bd4001 	pop	{r0, lr}
ffff28a8:	e1a0f00e 	mov	pc, lr

ffff28ac:	e92d4001 	push	{r0, lr}
ffff28b0:	e10f0000 	mrs	r0, CPSR
ffff28b4:	e3801040 	orr	r1, r0, #64	; 0x40
ffff28b8:	e121f001 	msr	CPSR_c, r1
ffff28bc:	e8bd4001 	pop	{r0, lr}
ffff28c0:	e1a0f00e 	mov	pc, lr

ffff28c4:	e92d4001 	push	{r0, lr}
ffff28c8:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff28cc:	e3800a02 	orr	r0, r0, #8192	; 0x2000
ffff28d0:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff28d4:	e8bd4001 	pop	{r0, lr}
ffff28d8:	e1a0f00e 	mov	pc, lr

ffff28dc:	e92d4001 	push	{r0, lr}
ffff28e0:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff28e4:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
ffff28e8:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff28ec:	e8bd4001 	pop	{r0, lr}
ffff28f0:	e1a0f00e 	mov	pc, lr

##################################################################################################

BROM:
ffff4000:	ea000006 	b	start

ffff4004:	"eGON.BRM ",0
ffff4010:	"110011001623",0

start:
ffff4020:	e30004e2 	movw	r0, #1250	; 0x4e2
ffff4024:	e2500001 	subs	r0, r0, #1
ffff4028:	1afffffd 	bne	0xffff4024
ffff402c:	e10f0000 	mrs	r0, CPSR
ffff4030:	e3c0001f 	bic	r0, r0, #31
ffff4034:	e3800013 	orr	r0, r0, #19
ffff4038:	e3800040 	orr	r0, r0, #64	; 0x40
ffff403c:	e3c00c02 	bic	r0, r0, #512	; 0x200
ffff4040:	e121f000 	msr	CPSR_c, r0
ffff4044:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff4048:	e3c00005 	bic	r0, r0, #5
ffff404c:	e3c00b06 	bic	r0, r0, #6144	; 0x1800
ffff4050:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff4054:	e59f1050 	ldr	r1, =0x01c20c94
ffff4058:	e5912000 	ldr	r2, [r1]
ffff405c:	e3c22001 	bic	r2, r2, #1
ffff4060:	e5812000 	str	r2, [r1]
ffff4064:	e59f1044 	ldr	r1, =0x01c20000
ffff4068:	e5912054 	ldr	r2, [r1, #84]	; 0x54	# 0x01c20054 = CCM 0x54
ffff406c:	e3003333 	movw	r3, #819	; 0x333
ffff4070:	e1c22003 	bic	r2, r2, r3
ffff4074:	e3a03000 	mov	r3, #0
ffff4078:	e1822003 	orr	r2, r2, r3
ffff407c:	e5812054 	str	r2, [r1, #84]	; 0x54	# 0x01c20084
ffff4080:	e5912060 	ldr	r2, [r1, #96]	; 0x60	# 0x01c20096
ffff4084:	e3a03040 	mov	r3, #64	; 0x40
ffff4088:	e1822003 	orr	r2, r2, r3
ffff408c:	e5812060 	str	r2, [r1, #96]	; 0x60  # 0x01c20096
ffff4090:	e5912068 	ldr	r2, [r1, #104]	; 0x68	# 0x01c20104
ffff4094:	e3a03020 	mov	r3, #32
ffff4098:	e1822003 	orr	r2, r2, r3
ffff409c:	e5812068 	str	r2, [r1, #104]	; 0x68	# 0x01c20104
ffff40a0:	e3a0d902 	mov	sp, #32768	; 0x8000
ffff40a4:	eb000002 	bl	boot
ffff40a8:	eafffffe 	b	0xffff40a8

boot:
ffff40b4:	e92d4010 	push	{r4, lr}
ffff40b8:	eb0008b1 	bl	check_uboot
ffff40bc:	e1a04000 	mov	r4, r0
ffff40c0:	e3540000 	cmp	r4, #0
ffff40c4:	0a000000 	beq	0xffff40cc
ffff40c8:	ea000016 	b	0xffff4128
ffff40cc:	e3a00000 	mov	r0, #0
ffff40d0:	eb0003fa 	bl	f_50c0
ffff40d4:	e1a04000 	mov	r4, r0
ffff40d8:	e3540000 	cmp	r4, #0
ffff40dc:	1a000000 	bne	0xffff40e4
ffff40e0:	ea000013 	b	0xffff4134
ffff40e4:	eb0004c9 	bl	f_5410
ffff40e8:	e1a04000 	mov	r4, r0
ffff40ec:	e3540000 	cmp	r4, #0
ffff40f0:	1a000000 	bne	0xffff40f8
ffff40f4:	ea00000e 	b	0xffff4134
ffff40f8:	e3a00002 	mov	r0, #2
ffff40fc:	eb0003ef 	bl	f_50c0
ffff4100:	e1a04000 	mov	r4, r0
ffff4104:	e3540000 	cmp	r4, #0
ffff4108:	1a000000 	bne	0xffff4110
ffff410c:	ea000008 	b	0xffff4134
ffff4110:	eb0006e6 	bl	f_5cb0
ffff4114:	e1a04000 	mov	r4, r0
ffff4118:	e3540000 	cmp	r4, #0
ffff411c:	1a000000 	bne	0xffff4124
ffff4120:	ea000003 	b	0xffff4134
ffff4124:	e320f000 	nop	{0}
ffff4128:	e59f0010 	ldr	r0, =0xffff0020
ffff412c:	eb0008ca 	bl	call_r0
ffff4130:	e320f000 	nop	{0}
ffff4134:	e3a00000 	mov	r0, #0
ffff4138:	eb0008c7 	bl	call_r0
ffff413c:	e8bd8010 	pop	{r4, pc}

f_4144:
ffff4144:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
ffff4148:	e1a04000 	mov	r4, r0
ffff414c:	e1a0000d 	mov	r0, sp
ffff4150:	e3a01000 	mov	r1, #0
ffff4154:	e1a02001 	mov	r2, r1
ffff4158:	e1a03001 	mov	r3, r1
ffff415c:	e1a0c001 	mov	ip, r1
ffff4160:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff4164:	e3a00000 	mov	r0, #0
ffff4168:	e58d0000 	str	r0, [sp]
ffff416c:	e58d0004 	str	r0, [sp, #4]
ffff4170:	e58d0008 	str	r0, [sp, #8]
ffff4174:	e59d000c 	ldr	r0, [sp, #12]
ffff4178:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff417c:	e58d000c 	str	r0, [sp, #12]
ffff4180:	e59d000c 	ldr	r0, [sp, #12]
ffff4184:	e3c00b02 	bic	r0, r0, #2048	; 0x800
ffff4188:	e2800b02 	add	r0, r0, #2048	; 0x800
ffff418c:	e58d000c 	str	r0, [sp, #12]
ffff4190:	e1a02004 	mov	r2, r4
ffff4194:	e1a0000d 	mov	r0, sp
ffff4198:	eb000311 	bl	f_4de4
ffff419c:	e3500000 	cmp	r0, #0
ffff41a0:	0a000002 	beq	0xffff41b0
ffff41a4:	e3e00000 	mvn	r0, #0
ffff41a8:	e28dd010 	add	sp, sp, #16
ffff41ac:	e8bd8010 	pop	{r4, pc}
ffff41b0:	e3a00000 	mov	r0, #0
ffff41b4:	eafffffb 	b	0xffff41a8

f_41b8:
ffff41b8:	e92d4030 	push	{r4, r5, lr}
ffff41bc:	e24dd094 	sub	sp, sp, #148	; 0x94
ffff41c0:	e1a04000 	mov	r4, r0
ffff41c4:	e1a05001 	mov	r5, r1
ffff41c8:	e28d0084 	add	r0, sp, #132	; 0x84
ffff41cc:	e3a01000 	mov	r1, #0
ffff41d0:	e1a02001 	mov	r2, r1
ffff41d4:	e1a03001 	mov	r3, r1
ffff41d8:	e1a0c001 	mov	ip, r1
ffff41dc:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff41e0:	e3a00000 	mov	r0, #0
ffff41e4:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff41e8:	e3a00002 	mov	r0, #2
ffff41ec:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff41f0:	e5940008 	ldr	r0, [r4, #8]
ffff41f4:	e1a00800 	lsl	r0, r0, #16
ffff41f8:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff41fc:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4200:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4204:	e2800007 	add	r0, r0, #7
ffff4208:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff420c:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4210:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff4214:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff4218:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff421c:	e3c00c01 	bic	r0, r0, #256	; 0x100
ffff4220:	e2800c01 	add	r0, r0, #256	; 0x100
ffff4224:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff4228:	e1a02005 	mov	r2, r5
ffff422c:	e28d1004 	add	r1, sp, #4
ffff4230:	e28d0084 	add	r0, sp, #132	; 0x84
ffff4234:	eb0002ea 	bl	f_4de4
ffff4238:	e3500000 	cmp	r0, #0
ffff423c:	0a000002 	beq	0xffff424c
ffff4240:	e3e00000 	mvn	r0, #0
ffff4244:	e28dd094 	add	sp, sp, #148	; 0x94
ffff4248:	e8bd8030 	pop	{r4, r5, pc}
ffff424c:	e3a00000 	mov	r0, #0
ffff4250:	eafffffb 	b	0xffff4244

f_4254:
ffff4254:	e92d4030 	push	{r4, r5, lr}
ffff4258:	e24dd094 	sub	sp, sp, #148	; 0x94
ffff425c:	e1a04000 	mov	r4, r0
ffff4260:	e1a05001 	mov	r5, r1
ffff4264:	e28d0084 	add	r0, sp, #132	; 0x84
ffff4268:	e3a01000 	mov	r1, #0
ffff426c:	e1a02001 	mov	r2, r1
ffff4270:	e1a03001 	mov	r3, r1
ffff4274:	e1a0c001 	mov	ip, r1
ffff4278:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff427c:	e1a00005 	mov	r0, r5
ffff4280:	ebffffaf 	bl	f_4144
ffff4284:	e3500000 	cmp	r0, #0
ffff4288:	0a000002 	beq	0xffff4298
ffff428c:	e3e00000 	mvn	r0, #0
ffff4290:	e28dd094 	add	sp, sp, #148	; 0x94
ffff4294:	e8bd8030 	pop	{r4, r5, pc}
ffff4298:	e3a00000 	mov	r0, #0
ffff429c:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff42a0:	e3a00001 	mov	r0, #1
ffff42a4:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff42a8:	e30001aa 	movw	r0, #426	; 0x1aa
ffff42ac:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff42b0:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff42b4:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff42b8:	e2800008 	add	r0, r0, #8
ffff42bc:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff42c0:	e1a02005 	mov	r2, r5
ffff42c4:	e28d1004 	add	r1, sp, #4
ffff42c8:	e28d0084 	add	r0, sp, #132	; 0x84
ffff42cc:	eb0002c4 	bl	f_4de4
ffff42d0:	e3500000 	cmp	r0, #0
ffff42d4:	1a000008 	bne	0xffff42fc
ffff42d8:	e59d0004 	ldr	r0, [sp, #4]
ffff42dc:	e7df061f 	bfc	r0, #12, #20
ffff42e0:	e30011aa 	movw	r1, #426	; 0x1aa
ffff42e4:	e1500001 	cmp	r0, r1
ffff42e8:	1a000003 	bne	0xffff42fc
ffff42ec:	e3a00001 	mov	r0, #1
ffff42f0:	e5840004 	str	r0, [r4, #4]
ffff42f4:	e3a00000 	mov	r0, #0
ffff42f8:	eaffffe4 	b	0xffff4290
ffff42fc:	e3a00001 	mov	r0, #1
ffff4300:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff4304:	e3a00002 	mov	r0, #2
ffff4308:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff430c:	e3a00000 	mov	r0, #0
ffff4310:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff4314:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4318:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff431c:	e2800037 	add	r0, r0, #55	; 0x37
ffff4320:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff4324:	e1a02005 	mov	r2, r5
ffff4328:	e28d1004 	add	r1, sp, #4
ffff432c:	e28d0084 	add	r0, sp, #132	; 0x84
ffff4330:	eb0002ab 	bl	f_4de4
ffff4334:	e3500000 	cmp	r0, #0
ffff4338:	1a000011 	bne	0xffff4384
ffff433c:	e3a00001 	mov	r0, #1
ffff4340:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff4344:	e59f07b8 	ldr	r0, =0x40ff0000
ffff4348:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff434c:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4350:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4354:	e2800029 	add	r0, r0, #41	; 0x29
ffff4358:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff435c:	e1a02005 	mov	r2, r5
ffff4360:	e28d1004 	add	r1, sp, #4
ffff4364:	e28d0084 	add	r0, sp, #132	; 0x84
ffff4368:	eb00029d 	bl	f_4de4
ffff436c:	e3500000 	cmp	r0, #0
ffff4370:	1a000003 	bne	0xffff4384
ffff4374:	e3a00001 	mov	r0, #1
ffff4378:	e5840004 	str	r0, [r4, #4]
ffff437c:	e3a00000 	mov	r0, #0
ffff4380:	eaffffc2 	b	0xffff4290
ffff4384:	e3a00002 	mov	r0, #2
ffff4388:	e5840004 	str	r0, [r4, #4]
ffff438c:	e3a00000 	mov	r0, #0
ffff4390:	eaffffbe 	b	0xffff4290

f_4394:
ffff4394:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff4398:	e24dd090 	sub	sp, sp, #144	; 0x90
ffff439c:	e1a04000 	mov	r4, r0
ffff43a0:	e1a05001 	mov	r5, r1
ffff43a4:	e3a07000 	mov	r7, #0
ffff43a8:	e3a080c8 	mov	r8, #200	; 0xc8
ffff43ac:	e28d0080 	add	r0, sp, #128	; 0x80
ffff43b0:	e3a01000 	mov	r1, #0
ffff43b4:	e1a02001 	mov	r2, r1
ffff43b8:	e1a03001 	mov	r3, r1
ffff43bc:	e1a0c001 	mov	ip, r1
ffff43c0:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff43c4:	e1a00005 	mov	r0, r5
ffff43c8:	ebffff5d 	bl	f_4144
ffff43cc:	e3500000 	cmp	r0, #0
ffff43d0:	0a000002 	beq	0xffff43e0
ffff43d4:	e3e00000 	mvn	r0, #0
ffff43d8:	e28dd090 	add	sp, sp, #144	; 0x90
ffff43dc:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff43e0:	e28d0080 	add	r0, sp, #128	; 0x80
ffff43e4:	e3a01000 	mov	r1, #0
ffff43e8:	e1a02001 	mov	r2, r1
ffff43ec:	e1a03001 	mov	r3, r1
ffff43f0:	e1a0c001 	mov	ip, r1
ffff43f4:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff43f8:	e3a00000 	mov	r0, #0
ffff43fc:	e58d0080 	str	r0, [sp, #128]	; 0x80
ffff4400:	e3a00001 	mov	r0, #1
ffff4404:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff4408:	e30001aa 	movw	r0, #426	; 0x1aa
ffff440c:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff4410:	e59d008c 	ldr	r0, [sp, #140]	; 0x8c
ffff4414:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4418:	e2800008 	add	r0, r0, #8
ffff441c:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff4420:	e1a02005 	mov	r2, r5
ffff4424:	e1a0100d 	mov	r1, sp
ffff4428:	e28d0080 	add	r0, sp, #128	; 0x80
ffff442c:	eb00026c 	bl	f_4de4
ffff4430:	e3500000 	cmp	r0, #0
ffff4434:	1a000005 	bne	0xffff4450
ffff4438:	e59d0000 	ldr	r0, [sp]
ffff443c:	e7df061f 	bfc	r0, #12, #20
ffff4440:	e30011aa 	movw	r1, #426	; 0x1aa
ffff4444:	e1500001 	cmp	r0, r1
ffff4448:	1a000000 	bne	0xffff4450
ffff444c:	e3a07001 	mov	r7, #1
ffff4450:	ea000043 	b	0xffff4564
ffff4454:	e3580000 	cmp	r8, #0
ffff4458:	ca000001 	bgt	0xffff4464
ffff445c:	e3e00000 	mvn	r0, #0
ffff4460:	eaffffdc 	b	0xffff43d8
ffff4464:	e2488001 	sub	r8, r8, #1
ffff4468:	e28d0080 	add	r0, sp, #128	; 0x80
ffff446c:	e3a01000 	mov	r1, #0
ffff4470:	e1a02001 	mov	r2, r1
ffff4474:	e1a03001 	mov	r3, r1
ffff4478:	e1a0c001 	mov	ip, r1
ffff447c:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff4480:	e3a00001 	mov	r0, #1
ffff4484:	e58d0080 	str	r0, [sp, #128]	; 0x80
ffff4488:	e3a00002 	mov	r0, #2
ffff448c:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff4490:	e3a00000 	mov	r0, #0
ffff4494:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff4498:	e59d008c 	ldr	r0, [sp, #140]	; 0x8c
ffff449c:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff44a0:	e2800037 	add	r0, r0, #55	; 0x37
ffff44a4:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff44a8:	e1a02005 	mov	r2, r5
ffff44ac:	e1a0100d 	mov	r1, sp
ffff44b0:	e28d0080 	add	r0, sp, #128	; 0x80
ffff44b4:	eb00024a 	bl	f_4de4
ffff44b8:	e3500000 	cmp	r0, #0
ffff44bc:	0a000001 	beq	0xffff44c8
ffff44c0:	e3e00000 	mvn	r0, #0
ffff44c4:	eaffffc3 	b	0xffff43d8
ffff44c8:	e3a00001 	mov	r0, #1
ffff44cc:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff44d0:	e3570000 	cmp	r7, #0
ffff44d4:	0a000002 	beq	0xffff44e4
ffff44d8:	e59d0088 	ldr	r0, [sp, #136]	; 0x88
ffff44dc:	e3800101 	orr	r0, r0, #1073741824	; 0x40000000
ffff44e0:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff44e4:	e59d0088 	ldr	r0, [sp, #136]	; 0x88
ffff44e8:	e380073f 	orr	r0, r0, #16515072	; 0xfc0000
ffff44ec:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff44f0:	e59d008c 	ldr	r0, [sp, #140]	; 0x8c
ffff44f4:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff44f8:	e2800029 	add	r0, r0, #41	; 0x29
ffff44fc:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff4500:	e1a02005 	mov	r2, r5
ffff4504:	e1a0100d 	mov	r1, sp
ffff4508:	e28d0080 	add	r0, sp, #128	; 0x80
ffff450c:	eb000234 	bl	f_4de4
ffff4510:	e3500000 	cmp	r0, #0
ffff4514:	0a000001 	beq	0xffff4520
ffff4518:	e3e00000 	mvn	r0, #0
ffff451c:	eaffffad 	b	0xffff43d8
ffff4520:	e59d0000 	ldr	r0, [sp]
ffff4524:	e200073f 	and	r0, r0, #16515072	; 0xfc0000
ffff4528:	e350073f 	cmp	r0, #16515072	; 0xfc0000
ffff452c:	0a000001 	beq	0xffff4538
ffff4530:	e3e00000 	mvn	r0, #0
ffff4534:	eaffffa7 	b	0xffff43d8
ffff4538:	e3a06000 	mov	r6, #0
ffff453c:	e320f000 	nop	{0}
ffff4540:	e1a00006 	mov	r0, r6
ffff4544:	e2866001 	add	r6, r6, #1
ffff4548:	e30014e2 	movw	r1, #1250	; 0x4e2
ffff454c:	e1500001 	cmp	r0, r1
ffff4550:	3afffffa 	bcc	0xffff4540
ffff4554:	e59d0000 	ldr	r0, [sp]
ffff4558:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff455c:	0a000000 	beq	0xffff4564
ffff4560:	ea000000 	b	0xffff4568
ffff4564:	eaffffba 	b	0xffff4454
ffff4568:	e320f000 	nop	{0}
ffff456c:	e3570000 	cmp	r7, #0
ffff4570:	0a000005 	beq	0xffff458c
ffff4574:	e59d0000 	ldr	r0, [sp]
ffff4578:	e3100101 	tst	r0, #1073741824	; 0x40000000
ffff457c:	0a000002 	beq	0xffff458c
ffff4580:	e5940004 	ldr	r0, [r4, #4]
ffff4584:	e3800020 	orr	r0, r0, #32
ffff4588:	e5840004 	str	r0, [r4, #4]
ffff458c:	e3a00000 	mov	r0, #0
ffff4590:	eaffff90 	b	0xffff43d8

f_4594:
ffff4594:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff4598:	e24dd094 	sub	sp, sp, #148	; 0x94
ffff459c:	e1a04000 	mov	r4, r0
ffff45a0:	e1a05001 	mov	r5, r1
ffff45a4:	e3a070c8 	mov	r7, #200	; 0xc8
ffff45a8:	e28d0084 	add	r0, sp, #132	; 0x84
ffff45ac:	e3a01000 	mov	r1, #0
ffff45b0:	e1a02001 	mov	r2, r1
ffff45b4:	e1a03001 	mov	r3, r1
ffff45b8:	e1a0c001 	mov	ip, r1
ffff45bc:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff45c0:	e1a00005 	mov	r0, r5
ffff45c4:	ebfffede 	bl	f_4144
ffff45c8:	e3500000 	cmp	r0, #0
ffff45cc:	0a000002 	beq	0xffff45dc
ffff45d0:	e3e00000 	mvn	r0, #0
ffff45d4:	e28dd094 	add	sp, sp, #148	; 0x94
ffff45d8:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff45dc:	e3a00002 	mov	r0, #2
ffff45e0:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff45e4:	e3a00001 	mov	r0, #1
ffff45e8:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff45ec:	e59f0514 	ldr	r0, =0x40ff8000
ffff45f0:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff45f4:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff45f8:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff45fc:	e2800001 	add	r0, r0, #1
ffff4600:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff4604:	ea00001e 	b	0xffff4684
ffff4608:	e3570000 	cmp	r7, #0
ffff460c:	ca000001 	bgt	0xffff4618
ffff4610:	e3e00000 	mvn	r0, #0
ffff4614:	eaffffee 	b	0xffff45d4
ffff4618:	e2477001 	sub	r7, r7, #1
ffff461c:	e1a02005 	mov	r2, r5
ffff4620:	e28d1004 	add	r1, sp, #4
ffff4624:	e28d0084 	add	r0, sp, #132	; 0x84
ffff4628:	eb0001ed 	bl	f_4de4
ffff462c:	e3500000 	cmp	r0, #0
ffff4630:	0a000001 	beq	0xffff463c
ffff4634:	e3e00000 	mvn	r0, #0
ffff4638:	eaffffe5 	b	0xffff45d4
ffff463c:	e59d0004 	ldr	r0, [sp, #4]
ffff4640:	e59f14c4 	ldr	r1, =0x00ff8000
ffff4644:	e0000001 	and	r0, r0, r1
ffff4648:	e1500001 	cmp	r0, r1
ffff464c:	0a000001 	beq	0xffff4658
ffff4650:	e3e00000 	mvn	r0, #0
ffff4654:	eaffffde 	b	0xffff45d4
ffff4658:	e59d0004 	ldr	r0, [sp, #4]
ffff465c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff4660:	0a000000 	beq	0xffff4668
ffff4664:	ea000007 	b	0xffff4688
ffff4668:	e3a06000 	mov	r6, #0
ffff466c:	e320f000 	nop	{0}
ffff4670:	e1a00006 	mov	r0, r6
ffff4674:	e2866001 	add	r6, r6, #1
ffff4678:	e30014e2 	movw	r1, #1250	; 0x4e2
ffff467c:	e1500001 	cmp	r0, r1
ffff4680:	3afffffa 	bcc	0xffff4670
ffff4684:	eaffffdf 	b	0xffff4608
ffff4688:	e320f000 	nop	{0}
ffff468c:	e59d0004 	ldr	r0, [sp, #4]
ffff4690:	e3100101 	tst	r0, #1073741824	; 0x40000000
ffff4694:	0a000002 	beq	0xffff46a4
ffff4698:	e5940004 	ldr	r0, [r4, #4]
ffff469c:	e3800020 	orr	r0, r0, #32
ffff46a0:	e5840004 	str	r0, [r4, #4]
ffff46a4:	e3a00000 	mov	r0, #0
ffff46a8:	eaffffc9 	b	0xffff45d4

f_46ac:
ffff46ac:	e92d4010 	push	{r4, lr}
ffff46b0:	e24dd090 	sub	sp, sp, #144	; 0x90
ffff46b4:	e1a04000 	mov	r4, r0
ffff46b8:	e28d0080 	add	r0, sp, #128	; 0x80
ffff46bc:	e3a01000 	mov	r1, #0
ffff46c0:	e1a02001 	mov	r2, r1
ffff46c4:	e1a03001 	mov	r3, r1
ffff46c8:	e1a0c001 	mov	ip, r1
ffff46cc:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff46d0:	e3a00000 	mov	r0, #0
ffff46d4:	e58d0080 	str	r0, [sp, #128]	; 0x80
ffff46d8:	e3a00001 	mov	r0, #1
ffff46dc:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff46e0:	e3a00000 	mov	r0, #0
ffff46e4:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff46e8:	e59d008c 	ldr	r0, [sp, #140]	; 0x8c
ffff46ec:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff46f0:	e2800002 	add	r0, r0, #2
ffff46f4:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff46f8:	e59d008c 	ldr	r0, [sp, #140]	; 0x8c
ffff46fc:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff4700:	e2800040 	add	r0, r0, #64	; 0x40
ffff4704:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff4708:	e1a02004 	mov	r2, r4
ffff470c:	e1a0100d 	mov	r1, sp
ffff4710:	e28d0080 	add	r0, sp, #128	; 0x80
ffff4714:	eb0001b2 	bl	f_4de4
ffff4718:	e3500000 	cmp	r0, #0
ffff471c:	0a000002 	beq	0xffff472c
ffff4720:	e3e00000 	mvn	r0, #0
ffff4724:	e28dd090 	add	sp, sp, #144	; 0x90
ffff4728:	e8bd8010 	pop	{r4, pc}
ffff472c:	e3a00000 	mov	r0, #0
ffff4730:	eafffffb 	b	0xffff4724

f_4734:
ffff4734:	e92d4030 	push	{r4, r5, lr}
ffff4738:	e24dd094 	sub	sp, sp, #148	; 0x94
ffff473c:	e1a04000 	mov	r4, r0
ffff4740:	e1a05001 	mov	r5, r1
ffff4744:	e28d0084 	add	r0, sp, #132	; 0x84
ffff4748:	e3a01000 	mov	r1, #0
ffff474c:	e1a02001 	mov	r2, r1
ffff4750:	e1a03001 	mov	r3, r1
ffff4754:	e1a0c001 	mov	ip, r1
ffff4758:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff475c:	e3a00000 	mov	r0, #0
ffff4760:	e58d0084 	str	r0, [sp, #132]	; 0x84
ffff4764:	e3a00001 	mov	r0, #1
ffff4768:	e58d0088 	str	r0, [sp, #136]	; 0x88
ffff476c:	e3a00000 	mov	r0, #0
ffff4770:	e58d008c 	str	r0, [sp, #140]	; 0x8c
ffff4774:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4778:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff477c:	e2800003 	add	r0, r0, #3
ffff4780:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff4784:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4788:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff478c:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff4790:	e59d0090 	ldr	r0, [sp, #144]	; 0x90
ffff4794:	e3c00c01 	bic	r0, r0, #256	; 0x100
ffff4798:	e2800c01 	add	r0, r0, #256	; 0x100
ffff479c:	e58d0090 	str	r0, [sp, #144]	; 0x90
ffff47a0:	e1a02005 	mov	r2, r5
ffff47a4:	e28d1004 	add	r1, sp, #4
ffff47a8:	e28d0084 	add	r0, sp, #132	; 0x84
ffff47ac:	eb00018c 	bl	f_4de4
ffff47b0:	e3500000 	cmp	r0, #0
ffff47b4:	0a000002 	beq	0xffff47c4
ffff47b8:	e3e00000 	mvn	r0, #0
ffff47bc:	e28dd094 	add	sp, sp, #148	; 0x94
ffff47c0:	e8bd8030 	pop	{r4, r5, pc}
ffff47c4:	e30f1fff 	movw	r1, #65535	; 0xffff
ffff47c8:	e59d0004 	ldr	r0, [sp, #4]
ffff47cc:	e0010820 	and	r0, r1, r0, lsr #16
ffff47d0:	e5840008 	str	r0, [r4, #8]
ffff47d4:	e3a00000 	mov	r0, #0
ffff47d8:	eafffff7 	b	0xffff47bc

f_47dc:
ffff47dc:	e92d4030 	push	{r4, r5, lr}
ffff47e0:	e24dd01c 	sub	sp, sp, #28
ffff47e4:	e1a04000 	mov	r4, r0
ffff47e8:	e1a05001 	mov	r5, r1
ffff47ec:	e3a02018 	mov	r2, #24
ffff47f0:	e59f1318 	ldr	r1, =d_6460
ffff47f4:	e28d0004 	add	r0, sp, #4
ffff47f8:	eb0006f6 	bl	f_63d8
ffff47fc:	e3a0003c 	mov	r0, #60	; 0x3c
ffff4800:	e58d0004 	str	r0, [sp, #4]
ffff4804:	e1a01005 	mov	r1, r5
ffff4808:	e28d0004 	add	r0, sp, #4
ffff480c:	eb00013c 	bl	f_4d04
ffff4810:	e3500000 	cmp	r0, #0
ffff4814:	0a000002 	beq	0xffff4824
ffff4818:	e3e00000 	mvn	r0, #0
ffff481c:	e28dd01c 	add	sp, sp, #28
ffff4820:	e8bd8030 	pop	{r4, r5, pc}
ffff4824:	e1a01005 	mov	r1, r5
ffff4828:	e1a00004 	mov	r0, r4
ffff482c:	ebfffe88 	bl	f_4254
ffff4830:	e3500000 	cmp	r0, #0
ffff4834:	0a000001 	beq	0xffff4840
ffff4838:	e3e00000 	mvn	r0, #0
ffff483c:	eafffff6 	b	0xffff481c
ffff4840:	e5940004 	ldr	r0, [r4, #4]
ffff4844:	e3500001 	cmp	r0, #1
ffff4848:	1a000006 	bne	0xffff4868
ffff484c:	e1a01005 	mov	r1, r5
ffff4850:	e1a00004 	mov	r0, r4
ffff4854:	ebfffece 	bl	f_4394
ffff4858:	e3700001 	cmn	r0, #1
ffff485c:	1a000008 	bne	0xffff4884
ffff4860:	e3e00000 	mvn	r0, #0
ffff4864:	eaffffec 	b	0xffff481c
ffff4868:	e1a01005 	mov	r1, r5
ffff486c:	e1a00004 	mov	r0, r4
ffff4870:	ebffff47 	bl	f_4594
ffff4874:	e3700001 	cmn	r0, #1
ffff4878:	1a000001 	bne	0xffff4884
ffff487c:	e3e00000 	mvn	r0, #0
ffff4880:	eaffffe5 	b	0xffff481c
ffff4884:	e1a00005 	mov	r0, r5
ffff4888:	ebffff87 	bl	f_46ac
ffff488c:	e3500000 	cmp	r0, #0
ffff4890:	0a000001 	beq	0xffff489c
ffff4894:	e3e00000 	mvn	r0, #0
ffff4898:	eaffffdf 	b	0xffff481c
ffff489c:	e1a01005 	mov	r1, r5
ffff48a0:	e1a00004 	mov	r0, r4
ffff48a4:	ebffffa2 	bl	f_4734
ffff48a8:	e3500000 	cmp	r0, #0
ffff48ac:	0a000001 	beq	0xffff48b8
ffff48b0:	e3e00000 	mvn	r0, #0
ffff48b4:	eaffffd8 	b	0xffff481c
ffff48b8:	e5940004 	ldr	r0, [r4, #4]
ffff48bc:	e3c00010 	bic	r0, r0, #16
ffff48c0:	e5840004 	str	r0, [r4, #4]
ffff48c4:	e3a00001 	mov	r0, #1
ffff48c8:	e5840000 	str	r0, [r4]
ffff48cc:	e3a00000 	mov	r0, #0
ffff48d0:	eaffffd1 	b	0xffff481c

f_48d4:
ffff48d4:	e92d4030 	push	{r4, r5, lr}
ffff48d8:	e24dd01c 	sub	sp, sp, #28
ffff48dc:	e1a04000 	mov	r4, r0
ffff48e0:	e1a05001 	mov	r5, r1
ffff48e4:	e1a01005 	mov	r1, r5
ffff48e8:	e1a00004 	mov	r0, r4
ffff48ec:	ebfffe31 	bl	f_41b8
ffff48f0:	e3500000 	cmp	r0, #0
ffff48f4:	0a000002 	beq	0xffff4904
ffff48f8:	e3e00000 	mvn	r0, #0
ffff48fc:	e28dd01c 	add	sp, sp, #28
ffff4900:	e8bd8030 	pop	{r4, r5, pc}
ffff4904:	e3a00000 	mov	r0, #0
ffff4908:	e58d0004 	str	r0, [sp, #4]
ffff490c:	e3a00001 	mov	r0, #1
ffff4910:	e58d000c 	str	r0, [sp, #12]
ffff4914:	e3a00000 	mov	r0, #0
ffff4918:	e58d0008 	str	r0, [sp, #8]
ffff491c:	e3a00c02 	mov	r0, #512	; 0x200
ffff4920:	e58d0010 	str	r0, [sp, #16]
ffff4924:	e3e004ff 	mvn	r0, #-16777216	; 0xff000000
ffff4928:	e58d0014 	str	r0, [sp, #20]
ffff492c:	e3a000ff 	mov	r0, #255	; 0xff
ffff4930:	e58d0018 	str	r0, [sp, #24]
ffff4934:	e1a01005 	mov	r1, r5
ffff4938:	e28d0004 	add	r0, sp, #4
ffff493c:	eb0000f0 	bl	f_4d04
ffff4940:	e3500000 	cmp	r0, #0
ffff4944:	0a000001 	beq	0xffff4950
ffff4948:	e3e00000 	mvn	r0, #0
ffff494c:	eaffffea 	b	0xffff48fc
ffff4950:	e3a00000 	mov	r0, #0
ffff4954:	eaffffe8 	b	0xffff48fc

f_4958:
ffff4958:	e92d4070 	push	{r4, r5, r6, lr}
ffff495c:	e1a04000 	mov	r4, r0
ffff4960:	e1a05001 	mov	r5, r1
ffff4964:	e1a06002 	mov	r6, r2
ffff4968:	e1a00004 	mov	r0, r4
ffff496c:	eb000082 	bl	f_4b7c
ffff4970:	e1a00006 	mov	r0, r6
ffff4974:	eb0000a7 	bl	f_4c18
ffff4978:	e3500000 	cmp	r0, #0
ffff497c:	0a000001 	beq	0xffff4988
ffff4980:	e3e00000 	mvn	r0, #0
ffff4984:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4988:	e1a01006 	mov	r1, r6
ffff498c:	e1a00005 	mov	r0, r5
ffff4990:	ebffff91 	bl	f_47dc
ffff4994:	e3500000 	cmp	r0, #0
ffff4998:	1a000006 	bne	0xffff49b8
ffff499c:	e1a01006 	mov	r1, r6
ffff49a0:	e1a00005 	mov	r0, r5
ffff49a4:	ebffffca 	bl	f_48d4
ffff49a8:	e3500000 	cmp	r0, #0
ffff49ac:	0a000003 	beq	0xffff49c0
ffff49b0:	e3e00000 	mvn	r0, #0
ffff49b4:	eafffff2 	b	0xffff4984
ffff49b8:	e3e00000 	mvn	r0, #0
ffff49bc:	eafffff0 	b	0xffff4984
ffff49c0:	e3a00000 	mov	r0, #0
ffff49c4:	eaffffee 	b	0xffff4984

f_49c8:
ffff49c8:	e92d4010 	push	{r4, lr}
ffff49cc:	e1a04000 	mov	r4, r0
ffff49d0:	e1a00004 	mov	r0, r4
ffff49d4:	eb0000ac 	bl	f_4c8c
ffff49d8:	e8bd8010 	pop	{r4, pc}

f_49dc:
ffff49dc:	e92d43f0 	push	{r4, r5, r6, r7, r8, r9, lr}
ffff49e0:	e24dd014 	sub	sp, sp, #20
ffff49e4:	e1a04000 	mov	r4, r0
ffff49e8:	e1a05001 	mov	r5, r1
ffff49ec:	e1a06002 	mov	r6, r2
ffff49f0:	e1a07003 	mov	r7, r3
ffff49f4:	e1cd83d0 	ldrd	r8, [sp, #48]	; 0x30
ffff49f8:	e28d0004 	add	r0, sp, #4
ffff49fc:	e3a01000 	mov	r1, #0
ffff4a00:	e1a02001 	mov	r2, r1
ffff4a04:	e1a03001 	mov	r3, r1
ffff4a08:	e1a0c001 	mov	ip, r1
ffff4a0c:	e880100e 	stm	r0, {r1, r2, r3, ip}
ffff4a10:	e3a00003 	mov	r0, #3
ffff4a14:	e58d0008 	str	r0, [sp, #8]
ffff4a18:	e59d0010 	ldr	r0, [sp, #16]
ffff4a1c:	e3c00c01 	bic	r0, r0, #256	; 0x100
ffff4a20:	e2800c01 	add	r0, r0, #256	; 0x100
ffff4a24:	e58d0010 	str	r0, [sp, #16]
ffff4a28:	e59d0010 	ldr	r0, [sp, #16]
ffff4a2c:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff4a30:	e58d0010 	str	r0, [sp, #16]
ffff4a34:	e59d0010 	ldr	r0, [sp, #16]
ffff4a38:	e3c00c02 	bic	r0, r0, #512	; 0x200
ffff4a3c:	e58d0010 	str	r0, [sp, #16]
ffff4a40:	e59d0010 	ldr	r0, [sp, #16]
ffff4a44:	e3c00b01 	bic	r0, r0, #1024	; 0x400
ffff4a48:	e58d0010 	str	r0, [sp, #16]
ffff4a4c:	e3a00000 	mov	r0, #0
ffff4a50:	e58d0004 	str	r0, [sp, #4]
ffff4a54:	e3550001 	cmp	r5, #1
ffff4a58:	1a000004 	bne	0xffff4a70
ffff4a5c:	e59d0010 	ldr	r0, [sp, #16]
ffff4a60:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4a64:	e2800011 	add	r0, r0, #17
ffff4a68:	e58d0010 	str	r0, [sp, #16]
ffff4a6c:	ea000007 	b	0xffff4a90
ffff4a70:	e59d0010 	ldr	r0, [sp, #16]
ffff4a74:	e3c0003f 	bic	r0, r0, #63	; 0x3f
ffff4a78:	e2800012 	add	r0, r0, #18
ffff4a7c:	e58d0010 	str	r0, [sp, #16]
ffff4a80:	e59d0010 	ldr	r0, [sp, #16]
ffff4a84:	e3c00080 	bic	r0, r0, #128	; 0x80
ffff4a88:	e2800080 	add	r0, r0, #128	; 0x80
ffff4a8c:	e58d0010 	str	r0, [sp, #16]
ffff4a90:	e5970004 	ldr	r0, [r7, #4]
ffff4a94:	e3100020 	tst	r0, #32
ffff4a98:	0a000001 	beq	0xffff4aa4
ffff4a9c:	e58d400c 	str	r4, [sp, #12]
ffff4aa0:	ea000001 	b	0xffff4aac
ffff4aa4:	e1a00484 	lsl	r0, r4, #9
ffff4aa8:	e58d000c 	str	r0, [sp, #12]
ffff4aac:	e1a02485 	lsl	r2, r5, #9
ffff4ab0:	e1a03008 	mov	r3, r8
ffff4ab4:	e1a01006 	mov	r1, r6
ffff4ab8:	e58d9000 	str	r9, [sp]
ffff4abc:	e28d0004 	add	r0, sp, #4
ffff4ac0:	eb00011a 	bl	f_4f30
ffff4ac4:	e3500000 	cmp	r0, #0
ffff4ac8:	0a000002 	beq	0xffff4ad8
ffff4acc:	e3e00000 	mvn	r0, #0
ffff4ad0:	e28dd014 	add	sp, sp, #20
ffff4ad4:	e8bd83f0 	pop	{r4, r5, r6, r7, r8, r9, pc}
ffff4ad8:	e3a00000 	mov	r0, #0
ffff4adc:	eafffffb 	b	0xffff4ad0

f_4ae0:
ffff4ae0:	e1a02000 	mov	r2, r0
ffff4ae4:	e5920000 	ldr	r0, [r2]
ffff4ae8:	e3c00c02 	bic	r0, r0, #512	; 0x200
ffff4aec:	e5820000 	str	r0, [r2]
ffff4af0:	e5920000 	ldr	r0, [r2]
ffff4af4:	e1800481 	orr	r0, r0, r1, lsl #9
ffff4af8:	e5820000 	str	r0, [r2]
ffff4afc:	e3a00000 	mov	r0, #0
ffff4b00:	e12fff1e 	bx	lr

f_4b14:
ffff4b14:	e92d4010 	push	{r4, lr}
ffff4b18:	e1a02000 	mov	r2, r0
ffff4b1c:	e30f3fff 	movw	r3, #65535	; 0xffff
ffff4b20:	e5812018 	str	r2, [r1, #24]
ffff4b24:	ea00000b 	b	0xffff4b58
ffff4b28:	e5910018 	ldr	r0, [r1, #24]
ffff4b2c:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff4b30:	1a000001 	bne	0xffff4b3c
ffff4b34:	e3a00000 	mov	r0, #0
ffff4b38:	e8bd8010 	pop	{r4, pc}
ffff4b3c:	e5910038 	ldr	r0, [r1, #56]	; 0x38
ffff4b40:	e3100a01 	tst	r0, #4096	; 0x1000
ffff4b44:	0a000003 	beq	0xffff4b58
ffff4b48:	e3a00a01 	mov	r0, #4096	; 0x1000
ffff4b4c:	e5810038 	str	r0, [r1, #56]	; 0x38
ffff4b50:	e3e00000 	mvn	r0, #0
ffff4b54:	eafffff7 	b	0xffff4b38
ffff4b58:	e1b00003 	movs	r0, r3
ffff4b5c:	e2433001 	sub	r3, r3, #1
ffff4b60:	1afffff0 	bne	0xffff4b28
ffff4b64:	e3530000 	cmp	r3, #0
ffff4b68:	aa000001 	bge	0xffff4b74
ffff4b6c:	e3e00000 	mvn	r0, #0
ffff4b70:	eafffff0 	b	0xffff4b38
ffff4b74:	e3a00000 	mov	r0, #0
ffff4b78:	eaffffee 	b	0xffff4b38

f_4b7c:
ffff4b7c:	e1a02000 	mov	r2, r0
ffff4b80:	e3520000 	cmp	r2, #0
ffff4b84:	1a00000b 	bne	0xffff4bb8
ffff4b88:	e59f0510 	ldr	r0, =0x01c20000
ffff4b8c:	e5901060 	ldr	r1, [r0, #96]	; 0x60
ffff4b90:	e3811c01 	orr	r1, r1, #256	; 0x100
ffff4b94:	e5801060 	str	r1, [r0, #96]	; 0x60
ffff4b98:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
ffff4b9c:	e59f34fc 	ldr	r3, =0x01c20000
ffff4ba0:	e5830088 	str	r0, [r3, #136]	; 0x88
ffff4ba4:	e59f04f8 	ldr	r0, =0x00222222
ffff4ba8:	e58308b4 	str	r0, [r3, #2228]	; 0x8b4
ffff4bac:	e3000555 	movw	r0, #1365	; 0x555
ffff4bb0:	e58308d0 	str	r0, [r3, #2256]	; 0x8d0
ffff4bb4:	ea000015 	b	0xffff4c10
ffff4bb8:	e3520002 	cmp	r2, #2
ffff4bbc:	1a000013 	bne	0xffff4c10
ffff4bc0:	e59f04d8 	ldr	r0, =0x01c20000
ffff4bc4:	e5901060 	ldr	r1, [r0, #96]	; 0x60
ffff4bc8:	e3811b01 	orr	r1, r1, #1024	; 0x400
ffff4bcc:	e5801060 	str	r1, [r0, #96]	; 0x60
ffff4bd0:	e3a00102 	mov	r0, #-2147483648	; 0x80000000
ffff4bd4:	e59f34c4 	ldr	r3, =0x01c20000
ffff4bd8:	e5830090 	str	r0, [r3, #144]	; 0x90
ffff4bdc:	e3a00433 	mov	r0, #855638016	; 0x33000000
ffff4be0:	e5830848 	str	r0, [r3, #2120]	; 0x848
ffff4be4:	e3030333 	movw	r0, #13107	; 0x3333
ffff4be8:	e583084c 	str	r0, [r3, #2124]	; 0x84c
ffff4bec:	e1c30000 	bic	r0, r3, r0
ffff4bf0:	e5901864 	ldr	r1, [r0, #2148]	; 0x864
ffff4bf4:	e1a00001 	mov	r0, r1
ffff4bf8:	e7d7061f 	bfc	r0, #12, #12
ffff4bfc:	e1a01000 	mov	r1, r0
ffff4c00:	e3811605 	orr	r1, r1, #5242880	; 0x500000
ffff4c04:	e3811a55 	orr	r1, r1, #348160	; 0x55000
ffff4c08:	e1a00003 	mov	r0, r3
ffff4c0c:	e5801864 	str	r1, [r0, #2148]	; 0x864
ffff4c10:	e3a00000 	mov	r0, #0
ffff4c14:	e12fff1e 	bx	lr

f_4c18:
ffff4c18:	e92d4010 	push	{r4, lr}
ffff4c1c:	e1a01000 	mov	r1, r0
ffff4c20:	e30f4fff 	movw	r4, #65535	; 0xffff
ffff4c24:	e3a02007 	mov	r2, #7
ffff4c28:	e5812000 	str	r2, [r1]
ffff4c2c:	ea000005 	b	0xffff4c48
ffff4c30:	e2444001 	sub	r4, r4, #1
ffff4c34:	e3540000 	cmp	r4, #0
ffff4c38:	aa000001 	bge	0xffff4c44
ffff4c3c:	e3e00000 	mvn	r0, #0
ffff4c40:	e8bd8010 	pop	{r4, pc}
ffff4c44:	e5912000 	ldr	r2, [r1]
ffff4c48:	e3120007 	tst	r2, #7
ffff4c4c:	1afffff7 	bne	0xffff4c30
ffff4c50:	e3a03000 	mov	r3, #0
ffff4c54:	ea000000 	b	0xffff4c5c
ffff4c58:	e2833001 	add	r3, r3, #1
ffff4c5c:	e3530032 	cmp	r3, #50	; 0x32
ffff4c60:	3afffffc 	bcc	0xffff4c58
ffff4c64:	e5912038 	ldr	r2, [r1, #56]	; 0x38
ffff4c68:	e30f0fff 	movw	r0, #65535	; 0xffff
ffff4c6c:	e1822000 	orr	r2, r2, r0
ffff4c70:	e5812038 	str	r2, [r1, #56]	; 0x38
ffff4c74:	e3a02c02 	mov	r2, #512	; 0x200
ffff4c78:	e5812000 	str	r2, [r1]
ffff4c7c:	e59f2424 	ldr	r2, =0x00070008
ffff4c80:	e5812040 	str	r2, [r1, #64]	; 0x40
ffff4c84:	e3a00000 	mov	r0, #0
ffff4c88:	eaffffec 	b	0xffff4c40

f_4c8c:
ffff4c8c:	e1a01000 	mov	r1, r0
ffff4c90:	e3510000 	cmp	r1, #0
ffff4c94:	1a00000b 	bne	0xffff4cc8
ffff4c98:	e59f0400 	ldr	r0, =0x01c20000
ffff4c9c:	e5902060 	ldr	r2, [r0, #96]	; 0x60
ffff4ca0:	e3c22c01 	bic	r2, r2, #256	; 0x100
ffff4ca4:	e5802060 	str	r2, [r0, #96]	; 0x60
ffff4ca8:	e3a00000 	mov	r0, #0
ffff4cac:	e59f33ec 	ldr	r3, =0x01c20000
ffff4cb0:	e5830088 	str	r0, [r3, #136]	; 0x88
ffff4cb4:	e59f03f0 	ldr	r0, =0x00404044
ffff4cb8:	e58308b4 	str	r0, [r3, #2228]	; 0x8b4
ffff4cbc:	e3a00000 	mov	r0, #0
ffff4cc0:	e58308d0 	str	r0, [r3, #2256]	; 0x8d0
ffff4cc4:	ea00000c 	b	0xffff4cfc
ffff4cc8:	e3510002 	cmp	r1, #2
ffff4ccc:	1a00000a 	bne	0xffff4cfc
ffff4cd0:	e59f03c8 	ldr	r0, =0x01c20000
ffff4cd4:	e5902060 	ldr	r2, [r0, #96]	; 0x60
ffff4cd8:	e3c22b01 	bic	r2, r2, #1024	; 0x400
ffff4cdc:	e5802060 	str	r2, [r0, #96]	; 0x60
ffff4ce0:	e3a00000 	mov	r0, #0
ffff4ce4:	e59f33b4 	ldr	r3, =0x01c20000
ffff4ce8:	e5830090 	str	r0, [r3, #144]	; 0x90
ffff4cec:	e5830848 	str	r0, [r3, #2120]	; 0x848
ffff4cf0:	e583084c 	str	r0, [r3, #2124]	; 0x84c
ffff4cf4:	e3050140 	movw	r0, #20800	; 0x5140
ffff4cf8:	e5830864 	str	r0, [r3, #2148]	; 0x864
ffff4cfc:	e3a00000 	mov	r0, #0
ffff4d00:	e12fff1e 	bx	lr

f_4d04:
ffff4d04:	e92d4070 	push	{r4, r5, r6, lr}
ffff4d08:	e1a04000 	mov	r4, r0
ffff4d0c:	e1a05001 	mov	r5, r1
ffff4d10:	e5940014 	ldr	r0, [r4, #20]
ffff4d14:	e5941010 	ldr	r1, [r4, #16]
ffff4d18:	e7df0411 	bfi	r0, r1, #8, #24
ffff4d1c:	e1a06000 	mov	r6, r0
ffff4d20:	e5856008 	str	r6, [r5, #8]
ffff4d24:	e594000c 	ldr	r0, [r4, #12]
ffff4d28:	e6ff6070 	uxth	r6, r0
ffff4d2c:	e5856010 	str	r6, [r5, #16]
ffff4d30:	e3a00000 	mov	r0, #0
ffff4d34:	e585000c 	str	r0, [r5, #12]
ffff4d38:	e5950004 	ldr	r0, [r5, #4]
ffff4d3c:	e3c00801 	bic	r0, r0, #65536	; 0x10000
ffff4d40:	e5850004 	str	r0, [r5, #4]
ffff4d44:	e59f6364 	ldr	r6, =0x80202000
ffff4d48:	e1a01005 	mov	r1, r5
ffff4d4c:	e1a00006 	mov	r0, r6
ffff4d50:	ebffff6f 	bl	f_4b14
ffff4d54:	e3500000 	cmp	r0, #0
ffff4d58:	0a000001 	beq	0xffff4d64
ffff4d5c:	e3e00000 	mvn	r0, #0
ffff4d60:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4d64:	e5950004 	ldr	r0, [r5, #4]
ffff4d68:	e3c000ff 	bic	r0, r0, #255	; 0xff
ffff4d6c:	e5850004 	str	r0, [r5, #4]
ffff4d70:	e5950004 	ldr	r0, [r5, #4]
ffff4d74:	e5941000 	ldr	r1, [r4]
ffff4d78:	e1800001 	orr	r0, r0, r1
ffff4d7c:	e5850004 	str	r0, [r5, #4]
ffff4d80:	e59f6328 	ldr	r6, =0x80202000
ffff4d84:	e1a01005 	mov	r1, r5
ffff4d88:	e1a00006 	mov	r0, r6
ffff4d8c:	ebffff60 	bl	f_4b14
ffff4d90:	e3500000 	cmp	r0, #0
ffff4d94:	0a000001 	beq	0xffff4da0
ffff4d98:	e3e00000 	mvn	r0, #0
ffff4d9c:	eaffffef 	b	0xffff4d60
ffff4da0:	e5950004 	ldr	r0, [r5, #4]
ffff4da4:	e5941004 	ldr	r1, [r4, #4]
ffff4da8:	e2011001 	and	r1, r1, #1
ffff4dac:	e3a02801 	mov	r2, #65536	; 0x10000
ffff4db0:	e1821881 	orr	r1, r2, r1, lsl #17
ffff4db4:	e1800001 	orr	r0, r0, r1
ffff4db8:	e5850004 	str	r0, [r5, #4]
ffff4dbc:	e59f62ec 	ldr	r6, =0x80202000
ffff4dc0:	e1a01005 	mov	r1, r5
ffff4dc4:	e1a00006 	mov	r0, r6
ffff4dc8:	ebffff51 	bl	f_4b14
ffff4dcc:	e3500000 	cmp	r0, #0
ffff4dd0:	0a000001 	beq	0xffff4ddc
ffff4dd4:	e3e00000 	mvn	r0, #0
ffff4dd8:	eaffffe0 	b	0xffff4d60
ffff4ddc:	e3a00000 	mov	r0, #0
ffff4de0:	eaffffde 	b	0xffff4d60

f_4de4:
ffff4de4:	e92d4070 	push	{r4, r5, r6, lr}
ffff4de8:	e1a03000 	mov	r3, r0
ffff4dec:	e5930008 	ldr	r0, [r3, #8]
ffff4df0:	e582001c 	str	r0, [r2, #28]
ffff4df4:	e593000c 	ldr	r0, [r3, #12]
ffff4df8:	e200403f 	and	r4, r0, #63	; 0x3f
ffff4dfc:	e593000c 	ldr	r0, [r3, #12]
ffff4e00:	e7e005d0 	ubfx	r0, r0, #11, #1
ffff4e04:	e1844780 	orr	r4, r4, r0, lsl #15
ffff4e08:	e593000c 	ldr	r0, [r3, #12]
ffff4e0c:	e7e003d0 	ubfx	r0, r0, #7, #1
ffff4e10:	e1844600 	orr	r4, r4, r0, lsl #12
ffff4e14:	e5930004 	ldr	r0, [r3, #4]
ffff4e18:	e3500000 	cmp	r0, #0
ffff4e1c:	0a000006 	beq	0xffff4e3c
ffff4e20:	e3844040 	orr	r4, r4, #64	; 0x40
ffff4e24:	e593000c 	ldr	r0, [r3, #12]
ffff4e28:	e7e00350 	ubfx	r0, r0, #6, #1
ffff4e2c:	e1844380 	orr	r4, r4, r0, lsl #7
ffff4e30:	e593000c 	ldr	r0, [r3, #12]
ffff4e34:	e7e00450 	ubfx	r0, r0, #8, #1
ffff4e38:	e1844400 	orr	r4, r4, r0, lsl #8
ffff4e3c:	e5930004 	ldr	r0, [r3, #4]
ffff4e40:	e3500003 	cmp	r0, #3
ffff4e44:	1a000006 	bne	0xffff4e64
ffff4e48:	e3844c22 	orr	r4, r4, #8704	; 0x2200
ffff4e4c:	e593000c 	ldr	r0, [r3, #12]
ffff4e50:	e7e004d0 	ubfx	r0, r0, #9, #1
ffff4e54:	e1844500 	orr	r4, r4, r0, lsl #10
ffff4e58:	e593000c 	ldr	r0, [r3, #12]
ffff4e5c:	e7e00550 	ubfx	r0, r0, #10, #1
ffff4e60:	e1844580 	orr	r4, r4, r0, lsl #11
ffff4e64:	e3844102 	orr	r4, r4, #-2147483648	; 0x80000000
ffff4e68:	e5824018 	str	r4, [r2, #24]
ffff4e6c:	e30f5fff 	movw	r5, #65535	; 0xffff
ffff4e70:	e320f000 	nop	{0}
ffff4e74:	e1b00005 	movs	r0, r5
ffff4e78:	e2455001 	sub	r5, r5, #1
ffff4e7c:	0a000002 	beq	0xffff4e8c
ffff4e80:	e5920038 	ldr	r0, [r2, #56]	; 0x38
ffff4e84:	e3100004 	tst	r0, #4
ffff4e88:	0afffff9 	beq	0xffff4e74
ffff4e8c:	e3a00004 	mov	r0, #4
ffff4e90:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff4e94:	e3550000 	cmp	r5, #0
ffff4e98:	aa000001 	bge	0xffff4ea4
ffff4e9c:	e3e00000 	mvn	r0, #0
ffff4ea0:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff4ea4:	e5924038 	ldr	r4, [r2, #56]	; 0x38
ffff4ea8:	e5930004 	ldr	r0, [r3, #4]
ffff4eac:	e3500000 	cmp	r0, #0
ffff4eb0:	0a00001c 	beq	0xffff4f28
ffff4eb4:	e3000102 	movw	r0, #258	; 0x102
ffff4eb8:	e1100004 	tst	r0, r4
ffff4ebc:	0a000003 	beq	0xffff4ed0
ffff4ec0:	e3000102 	movw	r0, #258	; 0x102
ffff4ec4:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff4ec8:	e3e00000 	mvn	r0, #0
ffff4ecc:	eafffff3 	b	0xffff4ea0
ffff4ed0:	e593000c 	ldr	r0, [r3, #12]
ffff4ed4:	e7e00450 	ubfx	r0, r0, #8, #1
ffff4ed8:	e3500000 	cmp	r0, #0
ffff4edc:	0a000005 	beq	0xffff4ef8
ffff4ee0:	e3140040 	tst	r4, #64	; 0x40
ffff4ee4:	0a000003 	beq	0xffff4ef8
ffff4ee8:	e3a00040 	mov	r0, #64	; 0x40
ffff4eec:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff4ef0:	e3e00000 	mvn	r0, #0
ffff4ef4:	eaffffe9 	b	0xffff4ea0
ffff4ef8:	e5920020 	ldr	r0, [r2, #32]
ffff4efc:	e5810000 	str	r0, [r1]
ffff4f00:	e593000c 	ldr	r0, [r3, #12]
ffff4f04:	e7e00350 	ubfx	r0, r0, #6, #1
ffff4f08:	e3500001 	cmp	r0, #1
ffff4f0c:	1a000005 	bne	0xffff4f28
ffff4f10:	e5920024 	ldr	r0, [r2, #36]	; 0x24
ffff4f14:	e5810004 	str	r0, [r1, #4]
ffff4f18:	e5920028 	ldr	r0, [r2, #40]	; 0x28
ffff4f1c:	e5810008 	str	r0, [r1, #8]
ffff4f20:	e592002c 	ldr	r0, [r2, #44]	; 0x2c
ffff4f24:	e581000c 	str	r0, [r1, #12]
ffff4f28:	e3a00000 	mov	r0, #0
ffff4f2c:	eaffffdb 	b	0xffff4ea0

f_4f30:
ffff4f30:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff4f34:	e24dd084 	sub	sp, sp, #132	; 0x84
ffff4f38:	e1a04000 	mov	r4, r0
ffff4f3c:	e1a05001 	mov	r5, r1
ffff4f40:	e1a06002 	mov	r6, r2
ffff4f44:	e1a07003 	mov	r7, r3
ffff4f48:	e59d80a8 	ldr	r8, [sp, #168]	; 0xa8
ffff4f4c:	e3e00000 	mvn	r0, #0
ffff4f50:	e58d0080 	str	r0, [sp, #128]	; 0x80
ffff4f54:	e5970000 	ldr	r0, [r7]
ffff4f58:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
ffff4f5c:	e5870000 	str	r0, [r7]
ffff4f60:	e5876014 	str	r6, [r7, #20]
ffff4f64:	e1a02007 	mov	r2, r7
ffff4f68:	e1a0100d 	mov	r1, sp
ffff4f6c:	e1a00004 	mov	r0, r4
ffff4f70:	ebffff9b 	bl	f_4de4
ffff4f74:	e3500000 	cmp	r0, #0
ffff4f78:	0a000002 	beq	0xffff4f88
ffff4f7c:	e3a00c02 	mov	r0, #512	; 0x200
ffff4f80:	e5870010 	str	r0, [r7, #16]
ffff4f84:	ea00003e 	b	0xffff5084
ffff4f88:	e3a0a000 	mov	sl, #0
ffff4f8c:	ea000010 	b	0xffff4fd4
ffff4f90:	e59fb11c 	ldr	fp, =0x0007ffff
ffff4f94:	e597903c 	ldr	r9, [r7, #60]	; 0x3c
ffff4f98:	ea000006 	b	0xffff4fb8
ffff4f9c:	e1b0000b 	movs	r0, fp
ffff4fa0:	e24bb001 	sub	fp, fp, #1
ffff4fa4:	1a000002 	bne	0xffff4fb4
ffff4fa8:	e3e00000 	mvn	r0, #0
ffff4fac:	e28dd084 	add	sp, sp, #132	; 0x84
ffff4fb0:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff4fb4:	e597903c 	ldr	r9, [r7, #60]	; 0x3c
ffff4fb8:	e3190004 	tst	r9, #4
ffff4fbc:	1afffff6 	bne	0xffff4f9c
ffff4fc0:	e59f10f0 	ldr	r1, =0x01c0f000
ffff4fc4:	e0810608 	add	r0, r1, r8, lsl #12
ffff4fc8:	e5900100 	ldr	r0, [r0, #256]	; 0x100
ffff4fcc:	e785010a 	str	r0, [r5, sl, lsl #2]
ffff4fd0:	e28aa001 	add	sl, sl, #1
ffff4fd4:	e15a0126 	cmp	sl, r6, lsr #2
ffff4fd8:	3affffec 	bcc	0xffff4f90
ffff4fdc:	e3a00c02 	mov	r0, #512	; 0x200
ffff4fe0:	e5870010 	str	r0, [r7, #16]
ffff4fe4:	e59fb0c8 	ldr	fp, =0x0007ffff
ffff4fe8:	e320f000 	nop	{0}
ffff4fec:	e1b0000b 	movs	r0, fp
ffff4ff0:	e24bb001 	sub	fp, fp, #1
ffff4ff4:	0a000002 	beq	0xffff5004
ffff4ff8:	e5970038 	ldr	r0, [r7, #56]	; 0x38
ffff4ffc:	e3100008 	tst	r0, #8
ffff5000:	0afffff9 	beq	0xffff4fec
ffff5004:	e3a00008 	mov	r0, #8
ffff5008:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff500c:	e35b0000 	cmp	fp, #0
ffff5010:	aa000000 	bge	0xffff5018
ffff5014:	ea00001a 	b	0xffff5084
ffff5018:	e594000c 	ldr	r0, [r4, #12]
ffff501c:	e7e003d0 	ubfx	r0, r0, #7, #1
ffff5020:	e3500000 	cmp	r0, #0
ffff5024:	0a00000c 	beq	0xffff505c
ffff5028:	e59fb08c 	ldr	fp, =0x000fffff
ffff502c:	e320f000 	nop	{0}
ffff5030:	e1b0000b 	movs	r0, fp
ffff5034:	e24bb001 	sub	fp, fp, #1
ffff5038:	0a000002 	beq	0xffff5048
ffff503c:	e5970038 	ldr	r0, [r7, #56]	; 0x38
ffff5040:	e3100901 	tst	r0, #16384	; 0x4000
ffff5044:	0afffff9 	beq	0xffff5030
ffff5048:	e3a00901 	mov	r0, #16384	; 0x4000
ffff504c:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff5050:	e35b0000 	cmp	fp, #0
ffff5054:	aa000000 	bge	0xffff505c
ffff5058:	ea000009 	b	0xffff5084
ffff505c:	e5979038 	ldr	r9, [r7, #56]	; 0x38
ffff5060:	e30a0a80 	movw	r0, #43648	; 0xaa80
ffff5064:	e1100009 	tst	r0, r9
ffff5068:	0a000002 	beq	0xffff5078
ffff506c:	e30a0a80 	movw	r0, #43648	; 0xaa80
ffff5070:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff5074:	ea000002 	b	0xffff5084
ffff5078:	e3a00000 	mov	r0, #0
ffff507c:	e58d0080 	str	r0, [sp, #128]	; 0x80
ffff5080:	e320f000 	nop	{0}
ffff5084:	e5970000 	ldr	r0, [r7]
ffff5088:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff508c:	e5870000 	str	r0, [r7]
ffff5090:	e3e00000 	mvn	r0, #0
ffff5094:	e5870038 	str	r0, [r7, #56]	; 0x38
ffff5098:	e59d0080 	ldr	r0, [sp, #128]	; 0x80
ffff509c:	eaffffc2 	b	0xffff4fac

f_50c0:
ffff50c0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff50c4:	e24dd038 	sub	sp, sp, #56	; 0x38
ffff50c8:	e1a05000 	mov	r5, r0
ffff50cc:	e3a07000 	mov	r7, #0
ffff50d0:	e3e08000 	mvn	r8, #0
ffff50d4:	e59f1150 	ldr	r1, =0x01c0f000
ffff50d8:	e0817605 	add	r7, r1, r5, lsl #12
ffff50dc:	e1a02007 	mov	r2, r7
ffff50e0:	e28d1008 	add	r1, sp, #8
ffff50e4:	e1a00005 	mov	r0, r5
ffff50e8:	ebfffe1a 	bl	f_4958
ffff50ec:	e3700001 	cmn	r0, #1
ffff50f0:	1a000000 	bne	0xffff50f8
ffff50f4:	ea000047 	b	0xffff5218
ffff50f8:	e3a01000 	mov	r1, #0
ffff50fc:	e1a00007 	mov	r0, r7
ffff5100:	ebfffe76 	bl	f_4ae0
ffff5104:	e58d5004 	str	r5, [sp, #4]
ffff5108:	e58d7000 	str	r7, [sp]
ffff510c:	e28d3008 	add	r3, sp, #8
ffff5110:	e3a02000 	mov	r2, #0
ffff5114:	e3a01008 	mov	r1, #8
ffff5118:	e3a00010 	mov	r0, #16
ffff511c:	ebfffe2e 	bl	f_49dc
ffff5120:	e3500000 	cmp	r0, #0
ffff5124:	0a00000c 	beq	0xffff515c
ffff5128:	e3a01001 	mov	r1, #1
ffff512c:	e1a00007 	mov	r0, r7
ffff5130:	ebfffe6a 	bl	f_4ae0
ffff5134:	e58d5004 	str	r5, [sp, #4]
ffff5138:	e58d7000 	str	r7, [sp]
ffff513c:	e28d3008 	add	r3, sp, #8
ffff5140:	e3a02000 	mov	r2, #0
ffff5144:	e3a01008 	mov	r1, #8
ffff5148:	e3a00010 	mov	r0, #16
ffff514c:	ebfffe22 	bl	f_49dc
ffff5150:	e3500000 	cmp	r0, #0
ffff5154:	0a000000 	beq	0xffff515c
ffff5158:	ea00002e 	b	0xffff5218
ffff515c:	e28f10cc 	ldr	r1, =eGON_BT0
ffff5160:	e3a00000 	mov	r0, #0
ffff5164:	eb000435 	bl	f_6240
ffff5168:	e3500000 	cmp	r0, #0
ffff516c:	0a000000 	beq	0xffff5174
ffff5170:	ea000028 	b	0xffff5218
ffff5174:	e3a04000 	mov	r4, #0
ffff5178:	e5946010 	ldr	r6, [r4, #16]
ffff517c:	e3560a06 	cmp	r6, #0x6000
ffff5180:	8a000003 	bhi	0xffff5194
ffff5184:	e1a00006 	mov	r0, r6
ffff5188:	e7df049f 	bfc	r0, #9, #23
ffff518c:	e3500000 	cmp	r0, #0
ffff5190:	0a000000 	beq	0xffff5198
ffff5194:	ea00001f 	b	0xffff5218
ffff5198:	e3a01000 	mov	r1, #0
ffff519c:	e1a00007 	mov	r0, r7
ffff51a0:	ebfffe4e 	bl	f_4ae0
ffff51a4:	e1a014a6 	lsr	r1, r6, #9
ffff51a8:	e58d5004 	str	r5, [sp, #4]
ffff51ac:	e58d7000 	str	r7, [sp]
ffff51b0:	e28d3008 	add	r3, sp, #8
ffff51b4:	e3a02000 	mov	r2, #0
ffff51b8:	e3a00010 	mov	r0, #16
ffff51bc:	ebfffe06 	bl	f_49dc
ffff51c0:	e3500000 	cmp	r0, #0
ffff51c4:	0a00000c 	beq	0xffff51fc
ffff51c8:	e3a01001 	mov	r1, #1
ffff51cc:	e1a00007 	mov	r0, r7
ffff51d0:	ebfffe42 	bl	f_4ae0
ffff51d4:	e1a014a6 	lsr	r1, r6, #9
ffff51d8:	e58d5004 	str	r5, [sp, #4]
ffff51dc:	e58d7000 	str	r7, [sp]
ffff51e0:	e28d3008 	add	r3, sp, #8
ffff51e4:	e3a02000 	mov	r2, #0
ffff51e8:	e3a00010 	mov	r0, #16
ffff51ec:	ebfffdfa 	bl	f_49dc
ffff51f0:	e3500000 	cmp	r0, #0
ffff51f4:	0a000000 	beq	0xffff51fc
ffff51f8:	ea000006 	b	0xffff5218
ffff51fc:	e1a01006 	mov	r1, r6
ffff5200:	e3a00000 	mov	r0, #0
ffff5204:	eb000420 	bl	f_628c
ffff5208:	e3500000 	cmp	r0, #0
ffff520c:	1a000000 	bne	0xffff5214
ffff5210:	e3a08000 	mov	r8, #0
ffff5214:	e320f000 	nop	{0}
ffff5218:	e1a00005 	mov	r0, r5
ffff521c:	ebfffde9 	bl	f_49c8
ffff5220:	e1a00008 	mov	r0, r8
ffff5224:	e28dd038 	add	sp, sp, #56	; 0x38
ffff5228:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}

eGON_BT0:	"eGON.BT0",0

f_523c:
ffff523c:	e92d5ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff5240:	e1a04000 	mov	r4, r0
ffff5244:	e1a05001 	mov	r5, r1
ffff5248:	e5949000 	ldr	r9, [r4]
ffff524c:	e594a018 	ldr	sl, [r4, #24]
ffff5250:	e1a0300a 	mov	r3, sl
ffff5254:	e3a02000 	mov	r2, #0
ffff5258:	e3a01001 	mov	r1, #1
ffff525c:	e1a00005 	mov	r0, r5
ffff5260:	e12fff39 	blx	r9
ffff5264:	e1a06000 	mov	r6, r0
ffff5268:	e3560002 	cmp	r6, #2
ffff526c:	1a000001 	bne	0xffff5278
ffff5270:	e3a00002 	mov	r0, #2
ffff5274:	e8bd9ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}
ffff5278:	e3560003 	cmp	r6, #3
ffff527c:	1a000001 	bne	0xffff5288
ffff5280:	e3a00003 	mov	r0, #3
ffff5284:	eafffffa 	b	0xffff5274
ffff5288:	e28f1f6d 	ldr	r1, =eGON_BT0
ffff528c:	e3a00000 	mov	r0, #0
ffff5290:	eb0003ea 	bl	f_6240
ffff5294:	e3500000 	cmp	r0, #0
ffff5298:	0a000001 	beq	0xffff52a4
ffff529c:	e3e00000 	mvn	r0, #0
ffff52a0:	eafffff3 	b	0xffff5274
ffff52a4:	e3a08000 	mov	r8, #0
ffff52a8:	e598b010 	ldr	fp, [r8, #16]
ffff52ac:	e1a0000b 	mov	r0, fp
ffff52b0:	e7df069f 	bfc	r0, #13, #19
ffff52b4:	e3500000 	cmp	r0, #0
ffff52b8:	0a000001 	beq	0xffff52c4
ffff52bc:	e3e00000 	mvn	r0, #0
ffff52c0:	eaffffeb 	b	0xffff5274
ffff52c4:	e1a0752b 	lsr	r7, fp, #10
ffff52c8:	e1a0300a 	mov	r3, sl
ffff52cc:	e3a02000 	mov	r2, #0
ffff52d0:	e1a01007 	mov	r1, r7
ffff52d4:	e1a00005 	mov	r0, r5
ffff52d8:	e12fff39 	blx	r9
ffff52dc:	e1a06000 	mov	r6, r0
ffff52e0:	e3560002 	cmp	r6, #2
ffff52e4:	1a000001 	bne	0xffff52f0
ffff52e8:	e3a00002 	mov	r0, #2
ffff52ec:	eaffffe0 	b	0xffff5274
ffff52f0:	e3560003 	cmp	r6, #3
ffff52f4:	1a000001 	bne	0xffff5300
ffff52f8:	e3a00003 	mov	r0, #3
ffff52fc:	eaffffdc 	b	0xffff5274
ffff5300:	e1a0100b 	mov	r1, fp
ffff5304:	e3a00000 	mov	r0, #0
ffff5308:	eb0003df 	bl	f_628c
ffff530c:	e3500000 	cmp	r0, #0
ffff5310:	1a000001 	bne	0xffff531c
ffff5314:	e3a00000 	mov	r0, #0
ffff5318:	eaffffd5 	b	0xffff5274
ffff531c:	e3e00000 	mvn	r0, #0
ffff5320:	eaffffd3 	b	0xffff5274

f_5324:
ffff5324:	e92d4070 	push	{r4, r5, r6, lr}
ffff5328:	e24dd028 	sub	sp, sp, #40	; 0x28
ffff532c:	e3a04000 	mov	r4, #0
ffff5330:	ea000019 	b	0xffff539c
ffff5334:	e1a01004 	mov	r1, r4
ffff5338:	e1a0000d 	mov	r0, sp
ffff533c:	eb000043 	bl	f_5450
ffff5340:	e1a0000d 	mov	r0, sp
ffff5344:	eb000205 	bl	f_5b60
ffff5348:	e3a06040 	mov	r6, #64	; 0x40
ffff534c:	ea00000d 	b	0xffff5388
ffff5350:	e1a01006 	mov	r1, r6
ffff5354:	e1a0000d 	mov	r0, sp
ffff5358:	ebffffb7 	bl	f_523c
ffff535c:	e1a05000 	mov	r5, r0
ffff5360:	e3550000 	cmp	r5, #0
ffff5364:	1a000003 	bne	0xffff5378
ffff5368:	eb0001c5 	bl	f_5a84
ffff536c:	e3a00000 	mov	r0, #0
ffff5370:	e28dd028 	add	sp, sp, #40	; 0x28
ffff5374:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff5378:	e3550002 	cmp	r5, #2
ffff537c:	1a000000 	bne	0xffff5384
ffff5380:	ea000002 	b	0xffff5390
ffff5384:	e2866040 	add	r6, r6, #64	; 0x40
ffff5388:	e3560c02 	cmp	r6, #512	; 0x200
ffff538c:	3affffef 	bcc	0xffff5350
ffff5390:	e320f000 	nop	{0}
ffff5394:	eb0001ba 	bl	f_5a84
ffff5398:	e2844001 	add	r4, r4, #1
ffff539c:	e354000a 	cmp	r4, #10
ffff53a0:	3affffe3 	bcc	0xffff5334
ffff53a4:	e3e00000 	mvn	r0, #0
ffff53a8:	eafffff0 	b	0xffff5370

f_53ac:
ffff53ac:	e92d4030 	push	{r4, r5, lr}
ffff53b0:	e24dd02c 	sub	sp, sp, #44	; 0x2c
ffff53b4:	e3a05000 	mov	r5, #0
ffff53b8:	ea000010 	b	0xffff5400
ffff53bc:	e1a01005 	mov	r1, r5
ffff53c0:	e28d0004 	add	r0, sp, #4
ffff53c4:	eb000021 	bl	f_5450
ffff53c8:	e28d0004 	add	r0, sp, #4
ffff53cc:	eb0001e3 	bl	f_5b60
ffff53d0:	e3a01000 	mov	r1, #0
ffff53d4:	e28d0004 	add	r0, sp, #4
ffff53d8:	ebffff97 	bl	f_523c
ffff53dc:	e1a04000 	mov	r4, r0
ffff53e0:	e3540000 	cmp	r4, #0
ffff53e4:	1a000003 	bne	0xffff53f8
ffff53e8:	eb0001a5 	bl	f_5a84
ffff53ec:	e3a00000 	mov	r0, #0
ffff53f0:	e28dd02c 	add	sp, sp, #44	; 0x2c
ffff53f4:	e8bd8030 	pop	{r4, r5, pc}
ffff53f8:	eb0001a1 	bl	f_5a84
ffff53fc:	e2855001 	add	r5, r5, #1
ffff5400:	e355000a 	cmp	r5, #10
ffff5404:	3affffec 	bcc	0xffff53bc
ffff5408:	e3e00000 	mvn	r0, #0
ffff540c:	eafffff7 	b	0xffff53f0

f_5410:
ffff5410:	e92d4010 	push	{r4, lr}
ffff5414:	ebffffe4 	bl	f_53ac
ffff5418:	e3500000 	cmp	r0, #0
ffff541c:	1a000001 	bne	0xffff5428
ffff5420:	e3a00000 	mov	r0, #0
ffff5424:	e8bd8010 	pop	{r4, pc}
ffff5428:	ebffffbd 	bl	f_5324
ffff542c:	e3500000 	cmp	r0, #0
ffff5430:	1a000001 	bne	0xffff543c
ffff5434:	e3a00000 	mov	r0, #0
ffff5438:	eafffff9 	b	0xffff5424
ffff543c:	e3e00000 	mvn	r0, #0
ffff5440:	eafffff7 	b	0xffff5424

f_5450:
ffff5450:	e92d4070 	push	{r4, r5, r6, lr}
ffff5454:	e1a05000 	mov	r5, r0
ffff5458:	e1a04001 	mov	r4, r1
ffff545c:	e0840104 	add	r0, r4, r4, lsl #2	; r1 * 5
ffff5460:	e59f2010 	ldr	r2, =d_6478 
ffff5464:	e0821180 	add	r1, r2, r0, lsl #3	; r1 = r1 * 5 * 8 = r1 * 40
ffff5468:	e3a02028 	mov	r2, #40	; 0x28
ffff546c:	e1a00005 	mov	r0, r5
ffff5470:	eb0003d8 	bl	f_63d8
ffff5474:	e8bd8070 	pop	{r4, r5, r6, pc}

f_547c:
ffff547c:	e92d4010 	push	{r4, lr}
ffff5480:	e1a02000 	mov	r2, r0
ffff5484:	e3a03000 	mov	r3, #0
ffff5488:	e3a04000 	mov	r4, #0
ffff548c:	ea000002 	b	0xffff549c
ffff5490:	e3a00001 	mov	r0, #1
ffff5494:	e1844310 	orr	r4, r4, r0, lsl r3
ffff5498:	e2833001 	add	r3, r3, #1
ffff549c:	e1530001 	cmp	r3, r1
ffff54a0:	3afffffa 	bcc	0xffff5490
ffff54a4:	e0020004 	and	r0, r2, r4
ffff54a8:	e8bd8010 	pop	{r4, pc}

f_54ac:
ffff54ac:	e3a02000 	mov	r2, #0
ffff54b0:	e59f3488 	ldr	r3, =0x01c02000
ffff54b4:	e5832000 	str	r2, [r3]
ffff54b8:	e59f2484 	ldr	r2, =0x01c03030
ffff54bc:	e5832304 	str	r2, [r3, #772]	; 0x304
ffff54c0:	e0032002 	and	r2, r3, r2
ffff54c4:	e5820308 	str	r0, [r2, #776]	; 0x308
ffff54c8:	e3072f0f 	movw	r2, #32527	; 0x7f0f
ffff54cc:	e5832318 	str	r2, [r3, #792]	; 0x318
ffff54d0:	e1c32142 	bic	r2, r3, r2, asr #2
ffff54d4:	e582130c 	str	r1, [r2, #780]	; 0x30c
ffff54d8:	e59f2468 	ldr	r2, =0x84000423
ffff54dc:	e5832300 	str	r2, [r3, #768]	; 0x300
ffff54e0:	e12fff1e 	bx	lr

f_54e4:
ffff54e4:	e1a01000 	mov	r1, r0
ffff54e8:	e320f000 	nop	{0}
ffff54ec:	e59f044c 	ldr	r0, =0x01c02000
ffff54f0:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff54f4:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff54f8:	1a000001 	bne	0xffff5504
ffff54fc:	e3a00000 	mov	r0, #0
ffff5500:	e12fff1e 	bx	lr
ffff5504:	e2410001 	sub	r0, r1, #1
ffff5508:	e1b01000 	movs	r1, r0
ffff550c:	1afffff6 	bne	0xffff54ec
ffff5510:	e3a00002 	mov	r0, #2
ffff5514:	eafffff9 	b	0xffff5500

f_5518:
ffff5518:	e1a01000 	mov	r1, r0
ffff551c:	e320f000 	nop	{0}
ffff5520:	e59f0424 	ldr	r0, =0x01c03000
ffff5524:	e5900004 	ldr	r0, [r0, #4]
ffff5528:	e3100002 	tst	r0, #2
ffff552c:	0a000001 	beq	0xffff5538
ffff5530:	e3a00000 	mov	r0, #0
ffff5534:	e12fff1e 	bx	lr
ffff5538:	e2410001 	sub	r0, r1, #1
ffff553c:	e1b01000 	movs	r1, r0
ffff5540:	1afffff6 	bne	0xffff5520
ffff5544:	e3a00002 	mov	r0, #2
ffff5548:	eafffff9 	b	0xffff5534

f_554c:
ffff554c:	e1a01000 	mov	r1, r0
ffff5550:	e320f000 	nop	{0}
ffff5554:	e59f03f0 	ldr	r0, =0x01c03000
ffff5558:	e5900004 	ldr	r0, [r0, #4]
ffff555c:	e3100008 	tst	r0, #8
ffff5560:	1a000001 	bne	0xffff556c
ffff5564:	e3a00000 	mov	r0, #0
ffff5568:	e12fff1e 	bx	lr
ffff556c:	e2410001 	sub	r0, r1, #1
ffff5570:	e1b01000 	movs	r1, r0
ffff5574:	1afffff6 	bne	0xffff5554
ffff5578:	e3a00002 	mov	r0, #2
ffff557c:	eafffff9 	b	0xffff5568

f_5580:
ffff5580:	e92d4070 	push	{r4, r5, r6, lr}
ffff5584:	e1a04000 	mov	r4, r0
ffff5588:	e1a05001 	mov	r5, r1
ffff558c:	e1a06002 	mov	r6, r2
ffff5590:	e1a00004 	mov	r0, r4
ffff5594:	ebffffec 	bl	f_554c
ffff5598:	e3500002 	cmp	r0, #2
ffff559c:	1a000001 	bne	0xffff55a8
ffff55a0:	e3a00002 	mov	r0, #2
ffff55a4:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff55a8:	e1a00005 	mov	r0, r5
ffff55ac:	ebffffd9 	bl	f_5518
ffff55b0:	e3500002 	cmp	r0, #2
ffff55b4:	1a000001 	bne	0xffff55c0
ffff55b8:	e3a00002 	mov	r0, #2
ffff55bc:	eafffff8 	b	0xffff55a4
ffff55c0:	e1a00006 	mov	r0, r6
ffff55c4:	ebffffc6 	bl	f_54e4
ffff55c8:	e3500002 	cmp	r0, #2
ffff55cc:	1a000001 	bne	0xffff55d8
ffff55d0:	e3a00002 	mov	r0, #2
ffff55d4:	eafffff2 	b	0xffff55a4
ffff55d8:	e3a00000 	mov	r0, #0
ffff55dc:	eafffff0 	b	0xffff55a4

f_55e0:
ffff55e0:	e92d4010 	push	{r4, lr}
ffff55e4:	e59f0364 	ldr	r0, =0x00c000ff
ffff55e8:	e59f135c 	ldr	r1, =0x01c03000
ffff55ec:	e5810024 	str	r0, [r1, #36]	; 0x24
ffff55f0:	e3a00d4b 	mov	r0, #4800	; 0x12c0
ffff55f4:	ebffffd4 	bl	f_554c
ffff55f8:	e3500002 	cmp	r0, #2
ffff55fc:	1a000001 	bne	0xffff5608
ffff5600:	e3a00002 	mov	r0, #2
ffff5604:	e8bd8010 	pop	{r4, pc}
ffff5608:	e3010338 	movw	r0, #4920	; 0x1338
ffff560c:	ebffffc1 	bl	f_5518
ffff5610:	e3500002 	cmp	r0, #2
ffff5614:	1a000001 	bne	0xffff5620
ffff5618:	e3a00002 	mov	r0, #2
ffff561c:	eafffff8 	b	0xffff5604
ffff5620:	e3a00000 	mov	r0, #0
ffff5624:	eafffff6 	b	0xffff5604

f_5628:
ffff5628:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff562c:	e1a04000 	mov	r4, r0
ffff5630:	e1a05001 	mov	r5, r1
ffff5634:	e1a06002 	mov	r6, r2
ffff5638:	e59f030c 	ldr	r0, =0x01c03000
ffff563c:	e5900000 	ldr	r0, [r0]
ffff5640:	e3800901 	orr	r0, r0, #16384	; 0x4000
ffff5644:	e59f1300 	ldr	r1, =0x01c03000
ffff5648:	e5810000 	str	r0, [r1]
ffff564c:	e3a07001 	mov	r7, #1
ffff5650:	e3019318 	movw	r9, #4888	; 0x1318
ffff5654:	e3a00016 	mov	r0, #22
ffff5658:	e1600087 	smulbb	r0, r7, r0
ffff565c:	e280ad4b 	add	sl, r0, #4800	; 0x12c0
ffff5660:	e59f02ec 	ldr	r0, =0x00e00530
ffff5664:	e5810028 	str	r0, [r1, #40]	; 0x28
ffff5668:	e3a01b01 	mov	r1, #1024	; 0x400
ffff566c:	e1a00005 	mov	r0, r5
ffff5670:	ebffff8d 	bl	f_54ac
ffff5674:	e59f02d0 	ldr	r0, =0x01c03000
ffff5678:	e580701c 	str	r7, [r0, #28]
ffff567c:	e1a00009 	mov	r0, r9
ffff5680:	ebffffb1 	bl	f_554c
ffff5684:	e3500002 	cmp	r0, #2
ffff5688:	1a000006 	bne	0xffff56a8
ffff568c:	e59f02ac 	ldr	r0, =0x01c02000
ffff5690:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5694:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5698:	e59f12a0 	ldr	r1, =0x01c02000
ffff569c:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff56a0:	e3a00002 	mov	r0, #2
ffff56a4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff56a8:	e1a08004 	mov	r8, r4
ffff56ac:	e1a04008 	mov	r4, r8
ffff56b0:	e1a00808 	lsl	r0, r8, #16
ffff56b4:	e59f1290 	ldr	r1, =0x01c03000
ffff56b8:	e5810014 	str	r0, [r1, #20]
ffff56bc:	e1a04008 	mov	r4, r8
ffff56c0:	e1a00828 	lsr	r0, r8, #16
ffff56c4:	e5810018 	str	r0, [r1, #24]
ffff56c8:	e2860003 	add	r0, r6, #3
ffff56cc:	e59f1284 	ldr	r1, =0x87e80000
ffff56d0:	e1810800 	orr	r0, r1, r0, lsl #16
ffff56d4:	e59f1270 	ldr	r1, =0x01c03000
ffff56d8:	e5810024 	str	r0, [r1, #36]	; 0x24
ffff56dc:	e1a0200a 	mov	r2, sl
ffff56e0:	e1a0100a 	mov	r1, sl
ffff56e4:	e1a0000a 	mov	r0, sl
ffff56e8:	ebffffa4 	bl	f_5580
ffff56ec:	e3500002 	cmp	r0, #2
ffff56f0:	1a000006 	bne	0xffff5710
ffff56f4:	e59f0244 	ldr	r0, =0x01c02000
ffff56f8:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff56fc:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5700:	e59f1238 	ldr	r1, =0x01c02000
ffff5704:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5708:	e3a00002 	mov	r0, #2
ffff570c:	eaffffe4 	b	0xffff56a4
ffff5710:	e59f1234 	ldr	r1, =0x01c03000
ffff5714:	e5910038 	ldr	r0, [r1, #56]	; 0x38
ffff5718:	e1a01007 	mov	r1, r7
ffff571c:	ebffff56 	bl	f_547c
ffff5720:	e3500000 	cmp	r0, #0
ffff5724:	0a000006 	beq	0xffff5744
ffff5728:	e59f0210 	ldr	r0, =0x01c02000
ffff572c:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5730:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5734:	e59f1204 	ldr	r1, =0x01c02000
ffff5738:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff573c:	e3a00003 	mov	r0, #3
ffff5740:	eaffffd7 	b	0xffff56a4
ffff5744:	e59f01f4 	ldr	r0, =0x01c02000
ffff5748:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff574c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5750:	e59f11e8 	ldr	r1, =0x01c02000
ffff5754:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5758:	e3a00000 	mov	r0, #0
ffff575c:	eaffffd0 	b	0xffff56a4

f_5760:
ffff5760:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff5764:	e1a04000 	mov	r4, r0
ffff5768:	e1a05001 	mov	r5, r1
ffff576c:	e1a06002 	mov	r6, r2
ffff5770:	e59f01d4 	ldr	r0, =0x01c03000
ffff5774:	e5900000 	ldr	r0, [r0]
ffff5778:	e3800901 	orr	r0, r0, #16384	; 0x4000
ffff577c:	e59f11c8 	ldr	r1, =0x01c03000
ffff5780:	e5810000 	str	r0, [r1]
ffff5784:	e3a07002 	mov	r7, #2
ffff5788:	e3019318 	movw	r9, #4888	; 0x1318
ffff578c:	e3a00016 	mov	r0, #22
ffff5790:	e1600087 	smulbb	r0, r7, r0
ffff5794:	e280ad4b 	add	sl, r0, #4800	; 0x12c0
ffff5798:	e59f01b4 	ldr	r0, =0x00e00530
ffff579c:	e5810028 	str	r0, [r1, #40]	; 0x28
ffff57a0:	e3a01b01 	mov	r1, #1024	; 0x400
ffff57a4:	e1a00005 	mov	r0, r5
ffff57a8:	ebffff3f 	bl	f_54ac
ffff57ac:	e59f0198 	ldr	r0, =0x01c03000
ffff57b0:	e580701c 	str	r7, [r0, #28]
ffff57b4:	e1a00009 	mov	r0, r9
ffff57b8:	ebffff63 	bl	f_554c
ffff57bc:	e3500002 	cmp	r0, #2
ffff57c0:	1a000006 	bne	0xffff57e0
ffff57c4:	e59f0174 	ldr	r0, =0x01c02000
ffff57c8:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff57cc:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff57d0:	e59f1168 	ldr	r1, =0x01c02000
ffff57d4:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff57d8:	e3a00002 	mov	r0, #2
ffff57dc:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff57e0:	e1a08004 	mov	r8, r4
ffff57e4:	e1a04008 	mov	r4, r8
ffff57e8:	e1a00808 	lsl	r0, r8, #16
ffff57ec:	e59f1158 	ldr	r1, =0x01c03000
ffff57f0:	e5810014 	str	r0, [r1, #20]
ffff57f4:	e1a04008 	mov	r4, r8
ffff57f8:	e1a00828 	lsr	r0, r8, #16
ffff57fc:	e5810018 	str	r0, [r1, #24]
ffff5800:	e2860003 	add	r0, r6, #3
ffff5804:	e59f114c 	ldr	r1, =0x87e80000
ffff5808:	e1810800 	orr	r0, r1, r0, lsl #16
ffff580c:	e59f1138 	ldr	r1, =0x01c03000
ffff5810:	e5810024 	str	r0, [r1, #36]	; 0x24
ffff5814:	e1a0200a 	mov	r2, sl
ffff5818:	e1a0100a 	mov	r1, sl
ffff581c:	e1a0000a 	mov	r0, sl
ffff5820:	ebffff56 	bl	f_5580
ffff5824:	e3500002 	cmp	r0, #2
ffff5828:	1a000006 	bne	0xffff5848
ffff582c:	e59f010c 	ldr	r0, =0x01c02000
ffff5830:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5834:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5838:	e59f1100 	ldr	r1, =0x01c02000
ffff583c:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5840:	e3a00002 	mov	r0, #2
ffff5844:	eaffffe4 	b	0xffff57dc
ffff5848:	e59f10fc 	ldr	r1, =0x01c03000
ffff584c:	e5910038 	ldr	r0, [r1, #56]	; 0x38
ffff5850:	e1a01007 	mov	r1, r7
ffff5854:	ebffff08 	bl	f_547c
ffff5858:	e3500000 	cmp	r0, #0
ffff585c:	0a000006 	beq	0xffff587c
ffff5860:	e59f00d8 	ldr	r0, =0x01c02000
ffff5864:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5868:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff586c:	e59f10cc 	ldr	r1, =0x01c02000
ffff5870:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5874:	e3a00003 	mov	r0, #3
ffff5878:	eaffffd7 	b	0xffff57dc
ffff587c:	e59f00bc 	ldr	r0, =0x01c02000
ffff5880:	e5900300 	ldr	r0, [r0, #768]	; 0x300
ffff5884:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5888:	e59f10b0 	ldr	r1, =0x01c02000
ffff588c:	e5810300 	str	r0, [r1, #768]	; 0x300
ffff5890:	e3a00000 	mov	r0, #0
ffff5894:	eaffffd0 	b	0xffff57dc

f_5898:
ffff5898:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff589c:	e1a04000 	mov	r4, r0
ffff58a0:	e1a05001 	mov	r5, r1
ffff58a4:	e1a09002 	mov	r9, r2
ffff58a8:	e1a06003 	mov	r6, r3
ffff58ac:	e3a07000 	mov	r7, #0
ffff58b0:	ea000009 	b	0xffff58dc
ffff58b4:	e0891507 	add	r1, r9, r7, lsl #10
ffff58b8:	e0840007 	add	r0, r4, r7
ffff58bc:	e1a02006 	mov	r2, r6
ffff58c0:	ebffff58 	bl	f_5628
ffff58c4:	e1a08000 	mov	r8, r0
ffff58c8:	e3580000 	cmp	r8, #0
ffff58cc:	0a000001 	beq	0xffff58d8
ffff58d0:	e1a00008 	mov	r0, r8
ffff58d4:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff58d8:	e2877001 	add	r7, r7, #1
ffff58dc:	e1570005 	cmp	r7, r5
ffff58e0:	3afffff3 	bcc	0xffff58b4
ffff58e4:	e3a00000 	mov	r0, #0
ffff58e8:	eafffff9 	b	0xffff58d4

f_58ec:
ffff58ec:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff58f0:	e1a04000 	mov	r4, r0
ffff58f4:	e1a05001 	mov	r5, r1
ffff58f8:	e1a09002 	mov	r9, r2
ffff58fc:	e1a06003 	mov	r6, r3
ffff5900:	e3a07000 	mov	r7, #0
ffff5904:	ea000009 	b	0xffff5930
ffff5908:	e0891507 	add	r1, r9, r7, lsl #10
ffff590c:	e0840007 	add	r0, r4, r7
ffff5910:	e1a02006 	mov	r2, r6
ffff5914:	ebffff91 	bl	f_5760
ffff5918:	e1a08000 	mov	r8, r0
ffff591c:	e3580000 	cmp	r8, #0
ffff5920:	0a000001 	beq	0xffff592c
ffff5924:	e1a00008 	mov	r0, r8
ffff5928:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff592c:	e2877001 	add	r7, r7, #1
ffff5930:	e1570005 	cmp	r7, r5
ffff5934:	3afffff3 	bcc	0xffff5908
ffff5938:	e3a00000 	mov	r0, #0
ffff593c:	eafffff9 	b	0xffff5928

f_595c:
ffff595c:	e59f0330 	ldr	r0, =0x22222222
ffff5960:	e59f1330 	ldr	r1, =0x01c20000
ffff5964:	e5810848 	str	r0, [r1, #2120]	; 0x848
ffff5968:	e581084c 	str	r0, [r1, #2124]	; 0x84c
ffff596c:	e1a00240 	asr	r0, r0, #4
ffff5970:	e5810850 	str	r0, [r1, #2128]	; 0x850
ffff5974:	e3a00002 	mov	r0, #2
ffff5978:	e5810854 	str	r0, [r1, #2132]	; 0x854
ffff597c:	e59f0318 	ldr	r0, =0x55555555
ffff5980:	e581085c 	str	r0, [r1, #2140]	; 0x85c
ffff5984:	e1a00740 	asr	r0, r0, #14
ffff5988:	e5810860 	str	r0, [r1, #2144]	; 0x860
ffff598c:	e3050140 	movw	r0, #20800	; 0x5140
ffff5990:	e5810864 	str	r0, [r1, #2148]	; 0x864
ffff5994:	e3040016 	movw	r0, #16406	; 0x4016
ffff5998:	e5810868 	str	r0, [r1, #2152]	; 0x868
ffff599c:	e12fff1e 	bx	lr

f_59a0:
ffff59a0:	e92d4070 	push	{r4, r5, r6, lr}
ffff59a4:	ebffffec 	bl	f_595c
ffff59a8:	e59f02e8 	ldr	r0, =0x01c20000
ffff59ac:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff59b0:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
ffff59b4:	e59f12dc 	ldr	r1, =0x01c20000
ffff59b8:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff59bc:	e1a00001 	mov	r0, r1
ffff59c0:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff59c4:	e3800a02 	orr	r0, r0, #8192	; 0x2000
ffff59c8:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff59cc:	e1a00001 	mov	r0, r1
ffff59d0:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff59d4:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff59d8:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff59dc:	e59f42bc 	ldr	r4, =0x0303000f
ffff59e0:	e1a00001 	mov	r0, r1
ffff59e4:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff59e8:	e1c05004 	bic	r5, r0, r4
ffff59ec:	e3855001 	orr	r5, r5, #1
ffff59f0:	e1a00001 	mov	r0, r1
ffff59f4:	e5805080 	str	r5, [r0, #128]	; 0x80
ffff59f8:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff59fc:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
ffff5a00:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff5a04:	e1a00001 	mov	r0, r1
ffff5a08:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5a0c:	e3800040 	orr	r0, r0, #64	; 0x40
ffff5a10:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5a14:	e3a00003 	mov	r0, #3
ffff5a18:	e2411a1d 	sub	r1, r1, #118784	; 0x1d000
ffff5a1c:	e5810000 	str	r0, [r1]
ffff5a20:	e3a00000 	mov	r0, #0
ffff5a24:	ea000000 	b	0xffff5a2c
ffff5a28:	e2800001 	add	r0, r0, #1
ffff5a2c:	e35000f0 	cmp	r0, #240	; 0xf0
ffff5a30:	3afffffc 	bcc	0xffff5a28
ffff5a34:	e8bd8070 	pop	{r4, r5, r6, pc}

f_5a38:
ffff5a38:	e3a00000 	mov	r0, #0
ffff5a3c:	e59f1254 	ldr	r1, =0x01c20000
ffff5a40:	e5810848 	str	r0, [r1, #2120]	; 0x848
ffff5a44:	e581084c 	str	r0, [r1, #2124]	; 0x84c
ffff5a48:	e5810850 	str	r0, [r1, #2128]	; 0x850
ffff5a4c:	e5810854 	str	r0, [r1, #2132]	; 0x854
ffff5a50:	e59f0244 	ldr	r0, =0x55555555
ffff5a54:	e581085c 	str	r0, [r1, #2140]	; 0x85c
ffff5a58:	e1a00740 	asr	r0, r0, #14
ffff5a5c:	e5810860 	str	r0, [r1, #2144]	; 0x860
ffff5a60:	e3050140 	movw	r0, #20800	; 0x5140
ffff5a64:	e5810864 	str	r0, [r1, #2148]	; 0x864
ffff5a68:	e3040016 	movw	r0, #16406	; 0x4016
ffff5a6c:	e5810868 	str	r0, [r1, #2152]	; 0x868
ffff5a70:	e12fff1e 	bx	lr

f_5a74:
ffff5a74:	e59f0228 	ldr	r0, =0x4a800008
ffff5a78:	e59f1228 	ldr	r1, =0x01c03000
ffff5a7c:	e5810034 	str	r0, [r1, #52]	; 0x34
ffff5a80:	e12fff1e 	bx	lr

f_5a84:
ffff5a84:	e92d4010 	push	{r4, lr}
ffff5a88:	ebfffff9 	bl	f_5a74
ffff5a8c:	e59f0214 	ldr	r0, =0x01c03000
ffff5a90:	e5900000 	ldr	r0, [r0]
ffff5a94:	e3c00001 	bic	r0, r0, #1
ffff5a98:	e59f1208 	ldr	r1, =0x01c03000
ffff5a9c:	e5810000 	str	r0, [r1]
ffff5aa0:	e2810a1d 	add	r0, r1, #118784	; 0x1d000
ffff5aa4:	e5900080 	ldr	r0, [r0, #128]	; 0x80
ffff5aa8:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5aac:	e2811a1d 	add	r1, r1, #118784	; 0x1d000
ffff5ab0:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff5ab4:	e1a00001 	mov	r0, r1
ffff5ab8:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5abc:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
ffff5ac0:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5ac4:	e1a00001 	mov	r0, r1
ffff5ac8:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5acc:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff5ad0:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5ad4:	ebffffd7 	bl	f_5a38
ffff5ad8:	e8bd8010 	pop	{r4, pc}

f_5adc:
ffff5adc:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff5ae0:	e3510c02 	cmp	r1, #512	; 0x200
ffff5ae4:	0a000003 	beq	0xffff5af8
ffff5ae8:	e3510b01 	cmp	r1, #1024	; 0x400
ffff5aec:	1a000004 	bne	0xffff5b04
ffff5af0:	e3a03000 	mov	r3, #0
ffff5af4:	ea000005 	b	0xffff5b10
ffff5af8:	e320f000 	nop	{0}
ffff5afc:	e3a03001 	mov	r3, #1
ffff5b00:	ea000002 	b	0xffff5b10
ffff5b04:	e320f000 	nop	{0}
ffff5b08:	e3a03000 	mov	r3, #0
ffff5b0c:	e320f000 	nop	{0}
ffff5b10:	e320f000 	nop	{0}
ffff5b14:	e3500040 	cmp	r0, #64	; 0x40
ffff5b18:	1a000001 	bne	0xffff5b24
ffff5b1c:	e3a05008 	mov	r5, #8
ffff5b20:	ea000002 	b	0xffff5b30
ffff5b24:	e320f000 	nop	{0}
ffff5b28:	e3a05008 	mov	r5, #8
ffff5b2c:	e320f000 	nop	{0}
ffff5b30:	e320f000 	nop	{0}
ffff5b34:	e59f616c 	ldr	r6, =0x01c03000
ffff5b38:	e5964034 	ldr	r4, [r6, #52]	; 0x34
ffff5b3c:	e30f6220 	movw	r6, #61984	; 0xf220
ffff5b40:	e1c44006 	bic	r4, r4, r6
ffff5b44:	e1846605 	orr	r6, r4, r5, lsl #12
ffff5b48:	e1866283 	orr	r6, r6, r3, lsl #5
ffff5b4c:	e3866001 	orr	r6, r6, #1
ffff5b50:	e1866482 	orr	r6, r6, r2, lsl #9
ffff5b54:	e59f714c 	ldr	r7, =0x01c03000
ffff5b58:	e5876034 	str	r6, [r7, #52]	; 0x34
ffff5b5c:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

f_5b60:
ffff5b60:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff5b64:	e1a04000 	mov	r4, r0
ffff5b68:	ebffff8c 	bl	f_59a0
ffff5b6c:	e5940008 	ldr	r0, [r4, #8]
ffff5b70:	e3500000 	cmp	r0, #0
ffff5b74:	0a000000 	beq	0xffff5b7c
ffff5b78:	ebfffe98 	bl	f_55e0
ffff5b7c:	e594001c 	ldr	r0, [r4, #28]
ffff5b80:	e5942020 	ldr	r2, [r4, #32]
ffff5b84:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff5b88:	ebffffd3 	bl	f_5adc
ffff5b8c:	e59f0114 	ldr	r0, =0x01c03000
ffff5b90:	e5900000 	ldr	r0, [r0]
ffff5b94:	e59f1110 	ldr	r1, =0xfff3b0fb
ffff5b98:	e0005001 	and	r5, r0, r1
ffff5b9c:	e5940014 	ldr	r0, [r4, #20]
ffff5ba0:	e3500008 	cmp	r0, #8
ffff5ba4:	0a000010 	beq	0xffff5bec
ffff5ba8:	ca000004 	bgt	0xffff5bc0
ffff5bac:	e3500002 	cmp	r0, #2
ffff5bb0:	0a000007 	beq	0xffff5bd4
ffff5bb4:	e3500004 	cmp	r0, #4
ffff5bb8:	1a000014 	bne	0xffff5c10
ffff5bbc:	ea000007 	b	0xffff5be0
ffff5bc0:	e3500010 	cmp	r0, #16
ffff5bc4:	0a00000b 	beq	0xffff5bf8
ffff5bc8:	e3500020 	cmp	r0, #32
ffff5bcc:	1a00000f 	bne	0xffff5c10
ffff5bd0:	ea00000b 	b	0xffff5c04
ffff5bd4:	e320f000 	nop	{0}
ffff5bd8:	e3a06000 	mov	r6, #0
ffff5bdc:	ea00000e 	b	0xffff5c1c
ffff5be0:	e320f000 	nop	{0}
ffff5be4:	e3a06001 	mov	r6, #1
ffff5be8:	ea00000b 	b	0xffff5c1c
ffff5bec:	e320f000 	nop	{0}
ffff5bf0:	e3a06002 	mov	r6, #2
ffff5bf4:	ea000008 	b	0xffff5c1c
ffff5bf8:	e320f000 	nop	{0}
ffff5bfc:	e3a06003 	mov	r6, #3
ffff5c00:	ea000005 	b	0xffff5c1c
ffff5c04:	e320f000 	nop	{0}
ffff5c08:	e3a06004 	mov	r6, #4
ffff5c0c:	ea000002 	b	0xffff5c1c
ffff5c10:	e320f000 	nop	{0}
ffff5c14:	e3a06000 	mov	r6, #0
ffff5c18:	e320f000 	nop	{0}
ffff5c1c:	e320f000 	nop	{0}
ffff5c20:	e5940004 	ldr	r0, [r4, #4]
ffff5c24:	e2007003 	and	r7, r0, #3
ffff5c28:	e1850907 	orr	r0, r5, r7, lsl #18
ffff5c2c:	e1800406 	orr	r0, r0, r6, lsl #8
ffff5c30:	e3800901 	orr	r0, r0, #16384	; 0x4000
ffff5c34:	e59f106c 	ldr	r1, =0x01c03000
ffff5c38:	e5810000 	str	r0, [r1]
ffff5c3c:	e1a00001 	mov	r0, r1
ffff5c40:	e590000c 	ldr	r0, [r0, #12]
ffff5c44:	e3001f3f 	movw	r1, #3903	; 0xf3f
ffff5c48:	e1c05001 	bic	r5, r0, r1
ffff5c4c:	e5940004 	ldr	r0, [r4, #4]
ffff5c50:	e3500003 	cmp	r0, #3
ffff5c54:	1a000004 	bne	0xffff5c6c
ffff5c58:	e594000c 	ldr	r0, [r4, #12]
ffff5c5c:	e200800f 	and	r8, r0, #15
ffff5c60:	e5940010 	ldr	r0, [r4, #16]
ffff5c64:	e200903f 	and	r9, r0, #63	; 0x3f
ffff5c68:	ea000001 	b	0xffff5c74
ffff5c6c:	e3a08000 	mov	r8, #0
ffff5c70:	e3a09000 	mov	r9, #0
ffff5c74:	e1850408 	orr	r0, r5, r8, lsl #8
ffff5c78:	e1800009 	orr	r0, r0, r9
ffff5c7c:	e59f1024 	ldr	r1, =0x01c03000
ffff5c80:	e581000c 	str	r0, [r1, #12]
ffff5c84:	e5940014 	ldr	r0, [r4, #20]
ffff5c88:	e1a00480 	lsl	r0, r0, #9
ffff5c8c:	e58100a0 	str	r0, [r1, #160]	; 0xa0
ffff5c90:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

f_5cb0:
ffff5cb0:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff5cb4:	eb00003c 	bl	f_5dac
ffff5cb8:	e3a04000 	mov	r4, #0
ffff5cbc:	ea000027 	b	0xffff5d60
ffff5cc0:	e1a00004 	mov	r0, r4
ffff5cc4:	eb00014f 	bl	f_6208
ffff5cc8:	e1a05000 	mov	r5, r0
ffff5ccc:	e3a02001 	mov	r2, #1
ffff5cd0:	e3a01000 	mov	r1, #0
ffff5cd4:	e1a00001 	mov	r0, r1
ffff5cd8:	e12fff35 	blx	r5
ffff5cdc:	e3500002 	cmp	r0, #2
ffff5ce0:	1a000000 	bne	0xffff5ce8
ffff5ce4:	ea00001c 	b	0xffff5d5c
ffff5ce8:	e28f1084 	ldr	r1, =eGON_BT0
ffff5cec:	e3a00000 	mov	r0, #0
ffff5cf0:	eb000152 	bl	f_6240
ffff5cf4:	e3500000 	cmp	r0, #0
ffff5cf8:	0a000000 	beq	0xffff5d00
ffff5cfc:	ea000016 	b	0xffff5d5c
ffff5d00:	e3a07000 	mov	r7, #0
ffff5d04:	e5976010 	ldr	r6, [r7, #16]
ffff5d08:	e1a00006 	mov	r0, r6
ffff5d0c:	e7df049f 	bfc	r0, #9, #23
ffff5d10:	e3500000 	cmp	r0, #0
ffff5d14:	0a000000 	beq	0xffff5d1c
ffff5d18:	ea00000f 	b	0xffff5d5c
ffff5d1c:	e1a02426 	lsr	r2, r6, #8
ffff5d20:	e3a01000 	mov	r1, #0
ffff5d24:	e1a00001 	mov	r0, r1
ffff5d28:	e12fff35 	blx	r5
ffff5d2c:	e3500002 	cmp	r0, #2
ffff5d30:	1a000000 	bne	0xffff5d38
ffff5d34:	ea000008 	b	0xffff5d5c
ffff5d38:	e1a01006 	mov	r1, r6
ffff5d3c:	e3a00000 	mov	r0, #0
ffff5d40:	eb000151 	bl	f_628c
ffff5d44:	e3500000 	cmp	r0, #0
ffff5d48:	1a000002 	bne	0xffff5d58
ffff5d4c:	eb000035 	bl	f_5e28
ffff5d50:	e3a00000 	mov	r0, #0
ffff5d54:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff5d58:	e320f000 	nop	{0}
ffff5d5c:	e2844001 	add	r4, r4, #1
ffff5d60:	e3540002 	cmp	r4, #2
ffff5d64:	3affffd5 	bcc	0xffff5cc0
ffff5d68:	eb00002e 	bl	f_5e28
ffff5d6c:	e3e00000 	mvn	r0, #0
ffff5d70:	eafffff7 	b	0xffff5d54
ffff5d74:	4e4f4765 	cdpmi	7, 4, cr4, cr15, cr5, {3}
ffff5d78:	3054422e 	subscc	r4, r4, lr, lsr #4
ffff5d7c:	00000000 	andeq	r0, r0, r0

f_5d80:
ffff5d80:	e3001333 	movw	r1, #819	; 0x333
ffff5d84:	e59f2498 	ldr	r2, =0x01c20000
ffff5d88:	e5821848 	str	r1, [r2, #2120]	; 0x848
ffff5d8c:	e3a01203 	mov	r1, #805306368	; 0x30000000
ffff5d90:	e5821850 	str	r1, [r2, #2128]	; 0x850
ffff5d94:	e1c21001 	bic	r1, r2, r1
ffff5d98:	e5910868 	ldr	r0, [r1, #2152]	; 0x868
ffff5d9c:	e3c00903 	bic	r0, r0, #49152	; 0xc000
ffff5da0:	e3800901 	orr	r0, r0, #16384	; 0x4000
ffff5da4:	e5810868 	str	r0, [r1, #2152]	; 0x868
ffff5da8:	e12fff1e 	bx	lr

f_5dac:
ffff5dac:	e92d4010 	push	{r4, lr}
ffff5db0:	e59f046c 	ldr	r0, =0x01c20000
ffff5db4:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5db8:	e3800601 	orr	r0, r0, #1048576	; 0x100000
ffff5dbc:	e59f1460 	ldr	r1, =0x01c20000
ffff5dc0:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5dc4:	e1a00001 	mov	r0, r1
ffff5dc8:	e59000a0 	ldr	r0, [r0, #160]	; 0xa0
ffff5dcc:	e3800102 	orr	r0, r0, #-2147483648	; 0x80000000
ffff5dd0:	e58100a0 	str	r0, [r1, #160]	; 0xa0
ffff5dd4:	ebffffe9 	bl	f_5d80
ffff5dd8:	e59f0444 	ldr	r0, =0x01c20000
ffff5ddc:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5de0:	e3800040 	orr	r0, r0, #64	; 0x40
ffff5de4:	e59f1438 	ldr	r1, =0x01c20000
ffff5de8:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5dec:	e3010002 	movw	r0, #4098	; 0x1002
ffff5df0:	e2411a1b 	sub	r1, r1, #110592	; 0x1b000
ffff5df4:	e581001c 	str	r0, [r1, #28]
ffff5df8:	e3000202 	movw	r0, #514	; 0x202
ffff5dfc:	e5810014 	str	r0, [r1, #20]
ffff5e00:	e59f0420 	ldr	r0, =0x0004831f
ffff5e04:	e5810008 	str	r0, [r1, #8]
ffff5e08:	e8bd8010 	pop	{r4, pc}

f_5e0c:
ffff5e0c:	e3a00000 	mov	r0, #0
ffff5e10:	e59f140c 	ldr	r1, =0x01c20000
ffff5e14:	e5810848 	str	r0, [r1, #2120]	; 0x848
ffff5e18:	e5810850 	str	r0, [r1, #2128]	; 0x850
ffff5e1c:	e3040016 	movw	r0, #16406	; 0x4016
ffff5e20:	e5810868 	str	r0, [r1, #2152]	; 0x868
ffff5e24:	e12fff1e 	bx	lr

f_5e28:
ffff5e28:	e92d4010 	push	{r4, lr}
ffff5e2c:	e3a00000 	mov	r0, #0
ffff5e30:	e59f13f4 	ldr	r1, =0x01c05000
ffff5e34:	e5810014 	str	r0, [r1, #20]
ffff5e38:	e1c10000 	bic	r0, r1, r0
ffff5e3c:	e5900008 	ldr	r0, [r0, #8]
ffff5e40:	e3c00001 	bic	r0, r0, #1
ffff5e44:	e5810008 	str	r0, [r1, #8]
ffff5e48:	ebffffef 	bl	f_5e0c
ffff5e4c:	e59f03d0 	ldr	r0, =0x01c20000
ffff5e50:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5e54:	e3c00040 	bic	r0, r0, #64	; 0x40
ffff5e58:	e59f13c4 	ldr	r1, =0x01c20000
ffff5e5c:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5e60:	e1a00001 	mov	r0, r1
ffff5e64:	e59000a0 	ldr	r0, [r0, #160]	; 0xa0
ffff5e68:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5e6c:	e58100a0 	str	r0, [r1, #160]	; 0xa0
ffff5e70:	e1a00001 	mov	r0, r1
ffff5e74:	e5900060 	ldr	r0, [r0, #96]	; 0x60
ffff5e78:	e3c00601 	bic	r0, r0, #1048576	; 0x100000
ffff5e7c:	e5810060 	str	r0, [r1, #96]	; 0x60
ffff5e80:	e8bd8010 	pop	{r4, pc}

f_5e84:
ffff5e84:	e1a01000 	mov	r1, r0
ffff5e88:	e320f000 	nop	{0}
ffff5e8c:	e59f039c 	ldr	r0, =0x01c02000
ffff5e90:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff5e94:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff5e98:	1a000001 	bne	0xffff5ea4
ffff5e9c:	e3a00000 	mov	r0, #0
ffff5ea0:	e12fff1e 	bx	lr
ffff5ea4:	e2410001 	sub	r0, r1, #1
ffff5ea8:	e1b01000 	movs	r1, r0
ffff5eac:	1afffff6 	bne	0xffff5e8c
ffff5eb0:	e3a00002 	mov	r0, #2
ffff5eb4:	eafffff9 	b	0xffff5ea0

f_5eb8:
ffff5eb8:	e1a01000 	mov	r1, r0
ffff5ebc:	e320f000 	nop	{0}
ffff5ec0:	e59f0368 	ldr	r0, =0x01c02000
ffff5ec4:	e5900140 	ldr	r0, [r0, #320]	; 0x140
ffff5ec8:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff5ecc:	1a000001 	bne	0xffff5ed8
ffff5ed0:	e3a00000 	mov	r0, #0
ffff5ed4:	e12fff1e 	bx	lr
ffff5ed8:	e2410001 	sub	r0, r1, #1
ffff5edc:	e1b01000 	movs	r1, r0
ffff5ee0:	1afffff6 	bne	0xffff5ec0
ffff5ee4:	e3a00002 	mov	r0, #2
ffff5ee8:	eafffff9 	b	0xffff5ed4

f_5eec:
ffff5eec:	e30f1fff 	movw	r1, #65535	; 0xffff
ffff5ef0:	e320f000 	nop	{0}
ffff5ef4:	e1b00001 	movs	r0, r1
ffff5ef8:	e2411001 	sub	r1, r1, #1
ffff5efc:	0a000003 	beq	0xffff5f10
ffff5f00:	e59f0324 	ldr	r0, =0x01c05000
ffff5f04:	e5900010 	ldr	r0, [r0, #16]
ffff5f08:	e3100102 	tst	r0, #-2147483648	; 0x80000000
ffff5f0c:	1afffff8 	bne	0xffff5ef4
ffff5f10:	e3510000 	cmp	r1, #0
ffff5f14:	da000001 	ble	0xffff5f20
ffff5f18:	e3a00000 	mov	r0, #0
ffff5f1c:	e12fff1e 	bx	lr
ffff5f20:	e3a00002 	mov	r0, #2
ffff5f24:	eafffffc 	b	0xffff5f1c

f_5f28:
ffff5f28:	e1a01000 	mov	r1, r0
ffff5f2c:	e320f000 	nop	{0}
ffff5f30:	e59f02f4 	ldr	r0, =0x01c05000
ffff5f34:	e5900010 	ldr	r0, [r0, #16]
ffff5f38:	e3100801 	tst	r0, #65536	; 0x10000
ffff5f3c:	0a000001 	beq	0xffff5f48
ffff5f40:	e3a00000 	mov	r0, #0
ffff5f44:	e12fff1e 	bx	lr
ffff5f48:	e2410001 	sub	r0, r1, #1
ffff5f4c:	e1b01000 	movs	r1, r0
ffff5f50:	1afffff6 	bne	0xffff5f30
ffff5f54:	e3a00002 	mov	r0, #2
ffff5f58:	eafffff9 	b	0xffff5f44

f_5f5c:
ffff5f5c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff5f60:	e1a04000 	mov	r4, r0
ffff5f64:	e1a05001 	mov	r5, r1
ffff5f68:	e1a06002 	mov	r6, r2
ffff5f6c:	e1a07003 	mov	r7, r3
ffff5f70:	e0840005 	add	r0, r4, r5
ffff5f74:	e2808e96 	add	r8, r0, #2400	; 0x960
ffff5f78:	e0840005 	add	r0, r4, r5
ffff5f7c:	e59f12a8 	ldr	r1, =0x01c05000
ffff5f80:	e5810020 	str	r0, [r1, #32]
ffff5f84:	e1a00001 	mov	r0, r1
ffff5f88:	e5804024 	str	r4, [r0, #36]	; 0x24
ffff5f8c:	e2400a03 	sub	r0, r0, #12288	; 0x3000
ffff5f90:	e5806144 	str	r6, [r0, #324]	; 0x144
ffff5f94:	e2810004 	add	r0, r1, #4
ffff5f98:	e2411a03 	sub	r1, r1, #12288	; 0x3000
ffff5f9c:	e5810148 	str	r0, [r1, #328]	; 0x148
ffff5fa0:	e1c101c0 	bic	r0, r1, r0, asr #3
ffff5fa4:	e580414c 	str	r4, [r0, #332]	; 0x14c
ffff5fa8:	e59f0284 	ldr	r0, =0x9c380415
ffff5fac:	e5810140 	str	r0, [r1, #320]	; 0x140
ffff5fb0:	e2810a03 	add	r0, r1, #12288	; 0x3000
ffff5fb4:	e5810124 	str	r0, [r1, #292]	; 0x124
ffff5fb8:	e2400a03 	sub	r0, r0, #12288	; 0x3000
ffff5fbc:	e5807128 	str	r7, [r0, #296]	; 0x128
ffff5fc0:	e580512c 	str	r5, [r0, #300]	; 0x12c
ffff5fc4:	e59f026c 	ldr	r0, =0x9c150438
ffff5fc8:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff5fcc:	e2810a03 	add	r0, r1, #12288	; 0x3000
ffff5fd0:	e5900008 	ldr	r0, [r0, #8]
ffff5fd4:	e3800b01 	orr	r0, r0, #1024	; 0x400
ffff5fd8:	e2811a03 	add	r1, r1, #12288	; 0x3000
ffff5fdc:	e5810008 	str	r0, [r1, #8]
ffff5fe0:	e1a00008 	mov	r0, r8
ffff5fe4:	ebffffb3 	bl	f_5eb8
ffff5fe8:	e3500002 	cmp	r0, #2
ffff5fec:	1a00000a 	bne	0xffff601c
ffff5ff0:	e59f0238 	ldr	r0, =0x01c02000
ffff5ff4:	e5900140 	ldr	r0, [r0, #320]	; 0x140
ffff5ff8:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff5ffc:	e59f122c 	ldr	r1, =0x01c02000
ffff6000:	e5810140 	str	r0, [r1, #320]	; 0x140
ffff6004:	e1a00001 	mov	r0, r1
ffff6008:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff600c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff6010:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff6014:	e3a00002 	mov	r0, #2
ffff6018:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff601c:	e1a00008 	mov	r0, r8
ffff6020:	ebffff97 	bl	f_5e84
ffff6024:	e3500002 	cmp	r0, #2
ffff6028:	1a00000a 	bne	0xffff6058
ffff602c:	e59f01fc 	ldr	r0, =0x01c02000
ffff6030:	e5900140 	ldr	r0, [r0, #320]	; 0x140
ffff6034:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff6038:	e59f11f0 	ldr	r1, =0x01c02000
ffff603c:	e5810140 	str	r0, [r1, #320]	; 0x140
ffff6040:	e1a00001 	mov	r0, r1
ffff6044:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff6048:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff604c:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff6050:	e3a00002 	mov	r0, #2
ffff6054:	eaffffef 	b	0xffff6018
ffff6058:	e1a00008 	mov	r0, r8
ffff605c:	ebffffb1 	bl	f_5f28
ffff6060:	e3500002 	cmp	r0, #2
ffff6064:	1a00000a 	bne	0xffff6094
ffff6068:	e59f01c0 	ldr	r0, =0x01c02000
ffff606c:	e5900140 	ldr	r0, [r0, #320]	; 0x140
ffff6070:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff6074:	e59f11b4 	ldr	r1, =0x01c02000
ffff6078:	e5810140 	str	r0, [r1, #320]	; 0x140
ffff607c:	e1a00001 	mov	r0, r1
ffff6080:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff6084:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff6088:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff608c:	e3a00002 	mov	r0, #2
ffff6090:	eaffffe0 	b	0xffff6018
ffff6094:	e59f0194 	ldr	r0, =0x01c02000
ffff6098:	e5900140 	ldr	r0, [r0, #320]	; 0x140
ffff609c:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff60a0:	e59f1188 	ldr	r1, =0x01c02000
ffff60a4:	e5810140 	str	r0, [r1, #320]	; 0x140
ffff60a8:	e1a00001 	mov	r0, r1
ffff60ac:	e5900120 	ldr	r0, [r0, #288]	; 0x120
ffff60b0:	e3c00102 	bic	r0, r0, #-2147483648	; 0x80000000
ffff60b4:	e5810120 	str	r0, [r1, #288]	; 0x120
ffff60b8:	e2810a03 	add	r0, r1, #12288	; 0x3000
ffff60bc:	e5900010 	ldr	r0, [r0, #16]
ffff60c0:	e3800801 	orr	r0, r0, #65536	; 0x10000
ffff60c4:	e2811a03 	add	r1, r1, #12288	; 0x3000
ffff60c8:	e5810010 	str	r0, [r1, #16]
ffff60cc:	ebffff86 	bl	f_5eec
ffff60d0:	e3500002 	cmp	r0, #2
ffff60d4:	1a000001 	bne	0xffff60e0
ffff60d8:	e3a00002 	mov	r0, #2
ffff60dc:	eaffffcd 	b	0xffff6018
ffff60e0:	e3a00000 	mov	r0, #0
ffff60e4:	eaffffcb 	b	0xffff6018

f_60e8:
ffff60e8:	e92d4ff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff60ec:	e1a04000 	mov	r4, r0
ffff60f0:	e1a05001 	mov	r5, r1
ffff60f4:	e1a06002 	mov	r6, r2
ffff60f8:	e1a0b005 	mov	fp, r5
ffff60fc:	e3a08000 	mov	r8, #0
ffff6100:	e1a07404 	lsl	r7, r4, #8
ffff6104:	e1a0a406 	lsl	sl, r6, #8
ffff6108:	ea000018 	b	0xffff6170
ffff610c:	e3a00003 	mov	r0, #3
ffff6110:	e5cd0000 	strb	r0, [sp]
ffff6114:	e1a00827 	lsr	r0, r7, #16
ffff6118:	e5cd0001 	strb	r0, [sp, #1]
ffff611c:	e1a00427 	lsr	r0, r7, #8
ffff6120:	e5cd0002 	strb	r0, [sp, #2]
ffff6124:	e5cd7003 	strb	r7, [sp, #3]
ffff6128:	e04a0008 	sub	r0, sl, r8
ffff612c:	e3500b02 	cmp	r0, #2048	; 0x800
ffff6130:	9a000001 	bls	0xffff613c
ffff6134:	e3a00b02 	mov	r0, #2048	; 0x800
ffff6138:	ea000000 	b	0xffff6140
ffff613c:	e04a0008 	sub	r0, sl, r8
ffff6140:	e1a09000 	mov	r9, r0
ffff6144:	e08b3008 	add	r3, fp, r8
ffff6148:	e1a0200d 	mov	r2, sp
ffff614c:	e1a01009 	mov	r1, r9
ffff6150:	e3a00004 	mov	r0, #4
ffff6154:	ebffff80 	bl	f_5f5c
ffff6158:	e3500002 	cmp	r0, #2
ffff615c:	1a000001 	bne	0xffff6168
ffff6160:	e3a00002 	mov	r0, #2
ffff6164:	e8bd8ff8 	pop	{r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff6168:	e0877009 	add	r7, r7, r9
ffff616c:	e0888009 	add	r8, r8, r9
ffff6170:	e158000a 	cmp	r8, sl
ffff6174:	3affffe4 	bcc	0xffff610c
ffff6178:	e3a00000 	mov	r0, #0
ffff617c:	eafffff8 	b	0xffff6164

f_6180:
ffff6180:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff6184:	e1a04000 	mov	r4, r0
ffff6188:	e1a05001 	mov	r5, r1
ffff618c:	e1a06002 	mov	r6, r2
ffff6190:	e1a09005 	mov	r9, r5
ffff6194:	e3a00000 	mov	r0, #0
ffff6198:	e58d0004 	str	r0, [sp, #4]
ffff619c:	e3a07000 	mov	r7, #0
ffff61a0:	e3a0a000 	mov	sl, #0
ffff61a4:	e1a08484 	lsl	r8, r4, #9
ffff61a8:	ea000012 	b	0xffff61f8
ffff61ac:	e3a000e8 	mov	r0, #232	; 0xe8
ffff61b0:	e5cd0000 	strb	r0, [sp]
ffff61b4:	e1a00828 	lsr	r0, r8, #16
ffff61b8:	e5cd0001 	strb	r0, [sp, #1]
ffff61bc:	e1a00428 	lsr	r0, r8, #8
ffff61c0:	e5cd0002 	strb	r0, [sp, #2]
ffff61c4:	e5cd8003 	strb	r8, [sp, #3]
ffff61c8:	e089300a 	add	r3, r9, sl
ffff61cc:	e1a0200d 	mov	r2, sp
ffff61d0:	e3a01c01 	mov	r1, #256	; 0x100
ffff61d4:	e3a00008 	mov	r0, #8
ffff61d8:	ebffff5f 	bl	f_5f5c
ffff61dc:	e3500002 	cmp	r0, #2
ffff61e0:	1a000001 	bne	0xffff61ec
ffff61e4:	e3a00002 	mov	r0, #2
ffff61e8:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff61ec:	e2877001 	add	r7, r7, #1
ffff61f0:	e28aac01 	add	sl, sl, #256	; 0x100
ffff61f4:	e2888c02 	add	r8, r8, #512	; 0x200
ffff61f8:	e1570006 	cmp	r7, r6
ffff61fc:	3affffea 	bcc	0xffff61ac
ffff6200:	e3a00000 	mov	r0, #0
ffff6204:	eafffff7 	b	0xffff61e8

f_6208:
ffff6208:	e92d400c 	push	{r2, r3, lr}
ffff620c:	e1a01000 	mov	r1, r0
ffff6210:	e59f2024 	ldr	r2, =d_6608
ffff6214:	e8920005 	ldm	r2, {r0, r2}
ffff6218:	e88d0005 	stm	sp, {r0, r2}
ffff621c:	e79d0101 	ldr	r0, [sp, r1, lsl #2]
ffff6220:	e8bd800c 	pop	{r2, r3, pc}

f_6240:
ffff6240:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff6244:	e1a02000 	mov	r2, r0
ffff6248:	e1a03002 	mov	r3, r2
ffff624c:	e1a02003 	mov	r2, r3
ffff6250:	e2836004 	add	r6, r3, #4
ffff6254:	e3a04000 	mov	r4, #0
ffff6258:	e3a05008 	mov	r5, #8
ffff625c:	ea000006 	b	0xffff627c
ffff6260:	e4d60001 	ldrb	r0, [r6], #1
ffff6264:	e4d17001 	ldrb	r7, [r1], #1
ffff6268:	e1500007 	cmp	r0, r7
ffff626c:	0a000001 	beq	0xffff6278
ffff6270:	e3a00001 	mov	r0, #1
ffff6274:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff6278:	e2844001 	add	r4, r4, #1
ffff627c:	e1540005 	cmp	r4, r5
ffff6280:	3afffff6 	bcc	0xffff6260
ffff6284:	e3a00000 	mov	r0, #0
ffff6288:	eafffff9 	b	0xffff6274

f_628c:
ffff628c:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff6290:	e1a02000 	mov	r2, r0
ffff6294:	e1a06002 	mov	r6, r2
ffff6298:	e1a02006 	mov	r2, r6
ffff629c:	e596500c 	ldr	r5, [r6, #12]
ffff62a0:	e59f00c0 	ldr	r0, =0x5f0a6c39
ffff62a4:	e1a02006 	mov	r2, r6
ffff62a8:	e586000c 	str	r0, [r6, #12]
ffff62ac:	e1a04121 	lsr	r4, r1, #2
ffff62b0:	e3a07000 	mov	r7, #0
ffff62b4:	e1a03002 	mov	r3, r2
ffff62b8:	e320f000 	nop	{0}
ffff62bc:	e4930004 	ldr	r0, [r3], #4
ffff62c0:	e0877000 	add	r7, r7, r0
ffff62c4:	e4930004 	ldr	r0, [r3], #4
ffff62c8:	e0877000 	add	r7, r7, r0
ffff62cc:	e4930004 	ldr	r0, [r3], #4
ffff62d0:	e0877000 	add	r7, r7, r0
ffff62d4:	e4930004 	ldr	r0, [r3], #4
ffff62d8:	e0877000 	add	r7, r7, r0
ffff62dc:	e2440004 	sub	r0, r4, #4
ffff62e0:	e1a04000 	mov	r4, r0
ffff62e4:	e3500003 	cmp	r0, #3
ffff62e8:	8afffff3 	bhi	0xffff62bc
ffff62ec:	ea000001 	b	0xffff62f8
ffff62f0:	e4930004 	ldr	r0, [r3], #4
ffff62f4:	e0877000 	add	r7, r7, r0
ffff62f8:	e1b00004 	movs	r0, r4
ffff62fc:	e2444001 	sub	r4, r4, #1
ffff6300:	1afffffa 	bne	0xffff62f0
ffff6304:	e586500c 	str	r5, [r6, #12]
ffff6308:	e1570005 	cmp	r7, r5
ffff630c:	1a000001 	bne	0xffff6318
ffff6310:	e3a00000 	mov	r0, #0
ffff6314:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff6318:	e3a00001 	mov	r0, #1
ffff631c:	eafffffc 	b	0xffff6314
ffff6320:	e92d4070 	push	{r4, r5, r6, lr}
ffff6324:	e1a04000 	mov	r4, r0
ffff6328:	e1a05001 	mov	r5, r1
ffff632c:	e1a06002 	mov	r6, r2
ffff6330:	e1a01006 	mov	r1, r6
ffff6334:	e1a00004 	mov	r0, r4
ffff6338:	ebffffc0 	bl	f_6240
ffff633c:	e3500000 	cmp	r0, #0
ffff6340:	1a000006 	bne	0xffff6360
ffff6344:	e1a01005 	mov	r1, r5
ffff6348:	e1a00004 	mov	r0, r4
ffff634c:	ebffffce 	bl	f_628c
ffff6350:	e3500000 	cmp	r0, #0
ffff6354:	1a000001 	bne	0xffff6360
ffff6358:	e3a00000 	mov	r0, #0
ffff635c:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff6360:	e3a00001 	mov	r0, #1
ffff6364:	eafffffc 	b	0xffff635c

udelay:
ffff636c:	e1a01000 	mov	r1, r0
ffff6370:	ea000000 	b	0xffff6378
ffff6374:	e2411001 	sub	r1, r1, #1
ffff6378:	e3510000 	cmp	r1, #0
ffff637c:	cafffffc 	bgt	0xffff6374
ffff6380:	e12fff1e 	bx	lr

check_uboot:
ffff6384:	e92d4070 	push	{r4, r5, r6, lr}
ffff6388:	e3a05000 	mov	r5, #0
ffff638c:	e3a0603c 	mov	r6, #60	; 0x3c
ffff6390:	e3a04004 	mov	r4, #4
ffff6394:	ea000006 	b	0xffff63b4
ffff6398:	e1a00006 	mov	r0, r6
ffff639c:	ebfffff2 	bl	udelay
ffff63a0:	e3a00507 	mov	r0, #29360128	; 0x1c00000
ffff63a4:	e5900024 	ldr	r0, [r0, #36]	; 0x24 = 0x1c00024		FEL button?
ffff63a8:	e7e00450 	ubfx	r0, r0, #8, #1
ffff63ac:	e0855000 	add	r5, r5, r0
ffff63b0:	e2444001 	sub	r4, r4, #1
ffff63b4:	e3540000 	cmp	r4, #0
ffff63b8:	cafffff6 	bgt	0xffff6398
ffff63bc:	e3550000 	cmp	r5, #0
ffff63c0:	1a000001 	bne	0xffff63cc
ffff63c4:	e3e00000 	mvn	r0, #0
ffff63c8:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff63cc:	e3a00000 	mov	r0, #0
ffff63d0:	eafffffc 	b	0xffff63c8

ffff63d4:	e12fff1e 	bx	lr

f_63d8:
ffff63d8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff63dc:	e2522020 	subs	r2, r2, #32
ffff63e0:	3a00000d 	bcc	0xffff641c
ffff63e4:	e3520e12 	cmp	r2, #288	; 0x120
ffff63e8:	3a000007 	bcc	0xffff640c
ffff63ec:	f5d1f100 	pld	[r1, #256]	; 0x100
ffff63f0:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff63f4:	e2422040 	sub	r2, r2, #64	; 0x40
ffff63f8:	e3520e12 	cmp	r2, #288	; 0x120
ffff63fc:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6400:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6404:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6408:	2afffff7 	bcs	0xffff63ec
ffff640c:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6410:	e2522020 	subs	r2, r2, #32
ffff6414:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff6418:	2afffffb 	bcs	0xffff640c
ffff641c:	e1b0ce02 	lsls	ip, r2, #28
ffff6420:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
ffff6424:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
ffff6428:	48b10018 	ldmmi	r1!, {r3, r4}
ffff642c:	48a00018 	stmiami	r0!, {r3, r4}
ffff6430:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
ffff6434:	e1b0cf02 	lsls	ip, r2, #30
ffff6438:	24913004 	ldrcs	r3, [r1], #4
ffff643c:	24803004 	strcs	r3, [r0], #4
ffff6440:	012fff1e 	bxeq	lr
ffff6444:	e1b02f82 	lsls	r2, r2, #31
ffff6448:	20d130b2 	ldrhcs	r3, [r1], #2
ffff644c:	44d12001 	ldrbmi	r2, [r1], #1
ffff6450:	20c030b2 	strhcs	r3, [r0], #2
ffff6454:	44c02001 	strbmi	r2, [r0], #1
ffff6458:	e12fff1e 	bx	lr

call_r0:
ffff645c:	e1a0f000 	mov	pc, r0

d_6460:
ffff6460:	.l 0x00000000
ffff6464:	.l 0x00000000
ffff6468:	.l 0x00000001
ffff646c:	.l 0x00000200
ffff6470:	.l 0x00ffffff
ffff6474:	.l 0x000000ff

d_6478:
ffff6478:	.l f_5898
ffff647c:	.l 0x00000000
ffff6480:	.l 0x00000001
ffff6484:	.l 0x00000000
ffff6488:	.l 0x00000000
ffff648c:	.l 0x00000002
ffff6490:	.l 0x00000001
ffff6494:	.l 0x00000040
ffff6498:	.l 0x00000001
ffff649c:	.l 0x00000400
ffff64a0:	.l f_58ec
ffff64a4:	.l 0x00000000
ffff64a8:	.l 0x00000000
ffff64ac:	.l 0x00000000
ffff64b0:	.l 0x00000000
ffff64b4:	.l 0x00000002
ffff64b8:	.l 0x00000001
ffff64bc:	.l 0x00000040
ffff64c0:	.l 0x00000001
ffff64c4:	.l 0x00000200
ffff64c8:	.l f_5898
ffff64cc:	.l 0x00000000
ffff64d0:	.l 0x00000000
ffff64d4:	.l 0x00000000
ffff64d8:	.l 0x00000000
ffff64dc:	.l 0x00000002
ffff64e0:	.l 0x00000000
ffff64e4:	.l 0x00000040
ffff64e8:	.l 0x00000001
ffff64ec:	.l 0x00000400
ffff64f0:	.l f_58ec
ffff64f4:	.l 0x00000000
ffff64f8:	.l 0x00000000
ffff64fc:	.l 0x00000000
ffff6500:	.l 0x00000000
ffff6504:	.l 0x00000002
ffff6508:	.l 0x00000000
ffff650c:	.l 0x00000040
ffff6510:	.l 0x00000001
ffff6514:	.l 0x00000200
ffff6518:	.l f_5898
ffff651c:	.l 0x00000003
ffff6520:	.l 0x00000001
ffff6524:	.l 0x00000001
ffff6528:	.l 0x0000003f
ffff652c:	.l 0x00000002
ffff6530:	.l 0x00000001
ffff6534:	.l 0x00000040
ffff6538:	.l 0x00000001
ffff653c:	.l 0x00000400
ffff6540:	.l f_5898
ffff6544:	.l 0x00000003
ffff6548:	.l 0x00000000
ffff654c:	.l 0x00000002
ffff6550:	.l 0x0000003f
ffff6554:	.l 0x00000002
ffff6558:	.l 0x00000001
ffff655c:	.l 0x00000040
ffff6560:	.l 0x00000001
ffff6564:	.l 0x00000400
ffff6568:	.l f_5898
ffff656c:	.l 0x00000003
ffff6570:	.l 0x00000000
ffff6574:	.l 0x00000003
ffff6578:	.l 0x0000003f
ffff657c:	.l 0x00000002
ffff6580:	.l 0x00000001
ffff6584:	.l 0x00000040
ffff6588:	.l 0x00000001
ffff658c:	.l 0x00000400
ffff6590:	.l f_58ec
ffff6594:	.l 0x00000003
ffff6598:	.l 0x00000000
ffff659c:	.l 0x00000001
ffff65a0:	.l 0x0000003f
ffff65a4:	.l 0x00000002
ffff65a8:	.l 0x00000001
ffff65ac:	.l 0x00000040
ffff65b0:	.l 0x00000001
ffff65b4:	.l 0x00000200
ffff65b8:	.l f_58ec
ffff65bc:	.l 0x00000003
ffff65c0:	.l 0x00000000
ffff65c4:	.l 0x00000002
ffff65c8:	.l 0x0000003f
ffff65cc:	.l 0x00000002
ffff65d0:	.l 0x00000001
ffff65d4:	.l 0x00000040
ffff65d8:	.l 0x00000001
ffff65dc:	.l 0x00000200
ffff65e0:	.l f_58ec
ffff65e4:	.l 0x00000003
ffff65e8:	.l 0x00000000
ffff65ec:	.l 0x00000003
ffff65f0:	.l 0x0000003f
ffff65f4:	.l 0x00000002
ffff65f8:	.l 0x00000001
ffff65fc:	.l 0x00000040
ffff6600:	.l 0x00000001
ffff6604:	.l 0x00000200


d_6608:
ffff6608:	.l f_60e8
ffff660c:	.l f_6180
