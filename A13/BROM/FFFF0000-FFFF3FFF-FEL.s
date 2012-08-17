
FFFF0000-FFFF3FFF-FEL.bin:     filformat binary


Disassembly of section .data:

ffff0000 <.data>:
ffff0000:	ea000008 	b	0xffff0028
ffff0004:	ea000006 	b	0xffff0024
ffff0008:	ea000005 	b	0xffff0024
ffff000c:	ea000004 	b	0xffff0024
ffff0010:	ea000003 	b	0xffff0024
ffff0014:	ea000002 	b	0xffff0024
ffff0018:	ea000003 	b	0xffff002c
ffff001c:	ea000000 	b	0xffff0024
ffff0020:	ea000005 	b	0xffff003c
ffff0024:	eafffffe 	b	0xffff0024
ffff0028:	e59ff110 	ldr	pc, [pc, #272]	; 0xffff0140
ffff002c:	e24ee004 	sub	lr, lr, #4
ffff0030:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff0034:	eb000739 	bl	0xffff1d20
ffff0038:	e8fd9fff 	ldm	sp!, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, pc}^
ffff003c:	e3a020d2 	mov	r2, #210	; 0xd2
ffff0040:	e121f002 	msr	CPSR_c, r2
ffff0044:	e3a0da02 	mov	sp, #8192	; 0x2000
ffff0048:	e10f0000 	mrs	r0, CPSR
ffff004c:	e3c0001f 	bic	r0, r0, #31
ffff0050:	e38000d3 	orr	r0, r0, #211	; 0xd3
ffff0054:	e121f000 	msr	CPSR_c, r0
ffff0058:	e3a0da07 	mov	sp, #28672	; 0x7000
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
ffff008c:	e59f10b0 	ldr	r1, [pc, #176]	; 0xffff0144
ffff0090:	e3a02801 	mov	r2, #65536	; 0x10000
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
ffff0118:	e3a00902 	mov	r0, #32768	; 0x8000
ffff011c:	ee020f10 	mcr	15, 0, r0, cr2, cr0, {0}
ffff0120:	eb0008e7 	bl	0xffff24c4
ffff0124:	ee130f10 	mrc	15, 0, r0, cr3, cr0, {0}
ffff0128:	e59f0018 	ldr	r0, [pc, #24]	; 0xffff0148
ffff012c:	ee030f10 	mcr	15, 0, r0, cr3, cr0, {0}
ffff0130:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff0134:	e3800001 	orr	r0, r0, #1
ffff0138:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff013c:	eb0007af 	bl	0xffff2000

ffff0140:	ffff4000

ffff0144:	01c20000 	biceq	r0, r2, r0
ffff0148:	55555555 	ldrbpl	r5, [r5, #-1365]	; 0x555
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
ffff0174:	e92d4030 	push	{r4, r5, lr}
ffff0178:	e1a03000 	mov	r3, r0
ffff017c:	ea000000 	b	0xffff0184
ffff0180:	e4c31001 	strb	r1, [r3], #1
ffff0184:	e1b04002 	movs	r4, r2
ffff0188:	e2422001 	sub	r2, r2, #1
ffff018c:	1afffffb 	bne	0xffff0180
ffff0190:	e8bd8030 	pop	{r4, r5, pc}
ffff0194:	e3a00000 	mov	r0, #0
ffff0198:	e320f000 	nop	{0}
ffff019c:	ea000000 	b	0xffff01a4
ffff01a0:	e2800001 	add	r0, r0, #1
ffff01a4:	e3021710 	movw	r1, #10000	; 0x2710
ffff01a8:	e1500001 	cmp	r0, r1
ffff01ac:	3afffffb 	bcc	0xffff01a0
ffff01b0:	e12fff1e 	bx	lr
ffff01b4:	e92d4070 	push	{r4, r5, r6, lr}
ffff01b8:	e1a05000 	mov	r5, r0
ffff01bc:	e3a04000 	mov	r4, #0
ffff01c0:	e320f000 	nop	{0}
ffff01c4:	ea000001 	b	0xffff01d0
ffff01c8:	ebfffff1 	bl	0xffff0194
ffff01cc:	e2844001 	add	r4, r4, #1
ffff01d0:	e1540005 	cmp	r4, r5
ffff01d4:	3afffffb 	bcc	0xffff01c8
ffff01d8:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff01dc:	e12fff1e 	bx	lr
ffff01e0:	e12fff1e 	bx	lr
ffff01e4:	e3a01000 	mov	r1, #0
ffff01e8:	ea000000 	b	0xffff01f0
ffff01ec:	e2811001 	add	r1, r1, #1
ffff01f0:	e5d02018 	ldrb	r2, [r0, #24]
ffff01f4:	e3520001 	cmp	r2, #1
ffff01f8:	0afffffb 	beq	0xffff01ec
ffff01fc:	e12fff1e 	bx	lr
ffff0200:	e92d4010 	push	{r4, lr}
ffff0204:	e1a04000 	mov	r4, r0
ffff0208:	e3a02022 	mov	r2, #34	; 0x22
ffff020c:	e3a01000 	mov	r1, #0
ffff0210:	e1a00004 	mov	r0, r4
ffff0214:	ebffffd6 	bl	0xffff0174
ffff0218:	e3a00000 	mov	r0, #0
ffff021c:	e5c40020 	strb	r0, [r4, #32]
ffff0220:	e5c40021 	strb	r0, [r4, #33]	; 0x21
ffff0224:	e8bd8010 	pop	{r4, pc}
ffff0228:	e5801000 	str	r1, [r0]
ffff022c:	e5802004 	str	r2, [r0, #4]
ffff0230:	e3a03000 	mov	r3, #0
ffff0234:	e5c03008 	strb	r3, [r0, #8]
ffff0238:	e5803010 	str	r3, [r0, #16]
ffff023c:	e3a03001 	mov	r3, #1
ffff0240:	e5c03018 	strb	r3, [r0, #24]
ffff0244:	e12fff1e 	bx	lr
ffff0248:	e92d4070 	push	{r4, r5, r6, lr}
ffff024c:	e24dd020 	sub	sp, sp, #32
ffff0250:	e1a04000 	mov	r4, r0
ffff0254:	e1a05001 	mov	r5, r1
ffff0258:	e3a06000 	mov	r6, #0
ffff025c:	e5946034 	ldr	r6, [r4, #52]	; 0x34
ffff0260:	e1a00006 	mov	r0, r6
ffff0264:	ebffffde 	bl	0xffff01e4
ffff0268:	e3a02020 	mov	r2, #32
ffff026c:	e3a01000 	mov	r1, #0
ffff0270:	e1a0000d 	mov	r0, sp
ffff0274:	ebffffbe 	bl	0xffff0174
ffff0278:	e1a00004 	mov	r0, r4
ffff027c:	eb0001af 	bl	0xffff0940
ffff0280:	e3a02020 	mov	r2, #32
ffff0284:	e1a0100d 	mov	r1, sp
ffff0288:	e1a00006 	mov	r0, r6
ffff028c:	ebffffe5 	bl	0xffff0228
ffff0290:	e3a00001 	mov	r0, #1
ffff0294:	e5c50020 	strb	r0, [r5, #32]
ffff0298:	e3a02000 	mov	r2, #0
ffff029c:	e1a01006 	mov	r1, r6
ffff02a0:	e1a00004 	mov	r0, r4
ffff02a4:	eb0004cf 	bl	0xffff15e8
ffff02a8:	e1a00006 	mov	r0, r6
ffff02ac:	ebffffcc 	bl	0xffff01e4
ffff02b0:	e3a02022 	mov	r2, #34	; 0x22
ffff02b4:	e1a00005 	mov	r0, r5
ffff02b8:	e5961000 	ldr	r1, [r6]
ffff02bc:	ebffffa2 	bl	0xffff014c
ffff02c0:	e28dd020 	add	sp, sp, #32
ffff02c4:	e8bd8070 	pop	{r4, r5, r6, pc}
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
ffff02f8:	ebffffb9 	bl	0xffff01e4
ffff02fc:	e3a00002 	mov	r0, #2
ffff0300:	e5c70020 	strb	r0, [r7, #32]
ffff0304:	e1a00006 	mov	r0, r6
ffff0308:	eb00018c 	bl	0xffff0940
ffff030c:	e1a00008 	mov	r0, r8
ffff0310:	e8940006 	ldm	r4, {r1, r2}
ffff0314:	ebffffc3 	bl	0xffff0228
ffff0318:	e3a02000 	mov	r2, #0
ffff031c:	e1a01008 	mov	r1, r8
ffff0320:	e1a00006 	mov	r0, r6
ffff0324:	eb0004af 	bl	0xffff15e8
ffff0328:	e1a00008 	mov	r0, r8
ffff032c:	ebffffac 	bl	0xffff01e4
ffff0330:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
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
ffff0370:	ebffffd4 	bl	0xffff02c8
ffff0374:	ea000008 	b	0xffff039c
ffff0378:	e320f000 	nop	{0}
ffff037c:	e1a03006 	mov	r3, r6
ffff0380:	e1a02005 	mov	r2, r5
ffff0384:	e1a01004 	mov	r1, r4
ffff0388:	e3a00000 	mov	r0, #0
ffff038c:	ebffffcd 	bl	0xffff02c8
ffff0390:	ea000001 	b	0xffff039c
ffff0394:	e320f000 	nop	{0}
ffff0398:	e320f000 	nop	{0}
ffff039c:	e320f000 	nop	{0}
ffff03a0:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff03a4:	e92d41ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, lr}
ffff03a8:	e1a04000 	mov	r4, r0
ffff03ac:	e1a05001 	mov	r5, r1
ffff03b0:	e1a07002 	mov	r7, r2
ffff03b4:	e3a06000 	mov	r6, #0
ffff03b8:	e5946030 	ldr	r6, [r4, #48]	; 0x30
ffff03bc:	e3a00003 	mov	r0, #3
ffff03c0:	e5c50020 	strb	r0, [r5, #32]
ffff03c4:	e59f02fc 	ldr	r0, [pc, #764]	; 0xffff06c8
ffff03c8:	e58d0000 	str	r0, [sp]
ffff03cc:	e5950004 	ldr	r0, [r5, #4]
ffff03d0:	e58d0004 	str	r0, [sp, #4]
ffff03d4:	e3a00000 	mov	r0, #0
ffff03d8:	e58d0008 	str	r0, [sp, #8]
ffff03dc:	e5cd000c 	strb	r0, [sp, #12]
ffff03e0:	e1a00004 	mov	r0, r4
ffff03e4:	eb000155 	bl	0xffff0940
ffff03e8:	e3a0200d 	mov	r2, #13
ffff03ec:	e1a0100d 	mov	r1, sp
ffff03f0:	e1a00006 	mov	r0, r6
ffff03f4:	ebffff8b 	bl	0xffff0228
ffff03f8:	e3a02000 	mov	r2, #0
ffff03fc:	e1a01006 	mov	r1, r6
ffff0400:	e1a00004 	mov	r0, r4
ffff0404:	eb000477 	bl	0xffff15e8
ffff0408:	e1a00006 	mov	r0, r6
ffff040c:	ebffff74 	bl	0xffff01e4
ffff0410:	e8bd81ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, pc}
ffff0414:	e92d4030 	push	{r4, r5, lr}
ffff0418:	e24dd024 	sub	sp, sp, #36	; 0x24
ffff041c:	e1a05000 	mov	r5, r0
ffff0420:	e1a04001 	mov	r4, r1
ffff0424:	e1a0000d 	mov	r0, sp
ffff0428:	ebffff74 	bl	0xffff0200
ffff042c:	e1a0100d 	mov	r1, sp
ffff0430:	e1a00005 	mov	r0, r5
ffff0434:	ebffff83 	bl	0xffff0248
ffff0438:	e1a02004 	mov	r2, r4
ffff043c:	e1a0100d 	mov	r1, sp
ffff0440:	e1a00005 	mov	r0, r5
ffff0444:	ebffffba 	bl	0xffff0334
ffff0448:	e1a02004 	mov	r2, r4
ffff044c:	e1a0100d 	mov	r1, sp
ffff0450:	e1a00005 	mov	r0, r5
ffff0454:	ebffffd2 	bl	0xffff03a4
ffff0458:	e3a00000 	mov	r0, #0
ffff045c:	e5c40008 	strb	r0, [r4, #8]
ffff0460:	e28dd024 	add	sp, sp, #36	; 0x24
ffff0464:	e8bd8030 	pop	{r4, r5, pc}
ffff0468:	e92d4070 	push	{r4, r5, r6, lr}
ffff046c:	e1a04000 	mov	r4, r0
ffff0470:	e1a05001 	mov	r5, r1
ffff0474:	e1a01005 	mov	r1, r5
ffff0478:	e1a00004 	mov	r0, r4
ffff047c:	ebffffe4 	bl	0xffff0414
ffff0480:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff0484:	e92d4070 	push	{r4, r5, r6, lr}
ffff0488:	e1a04000 	mov	r4, r0
ffff048c:	e1a05001 	mov	r5, r1
ffff0490:	e3a0200c 	mov	r2, #12
ffff0494:	e3a01000 	mov	r1, #0
ffff0498:	e59f022c 	ldr	r0, [pc, #556]	; 0xffff06cc
ffff049c:	ebffff34 	bl	0xffff0174
ffff04a0:	e59f0224 	ldr	r0, [pc, #548]	; 0xffff06cc
ffff04a4:	e5804000 	str	r4, [r0]
ffff04a8:	e5805004 	str	r5, [r0, #4]
ffff04ac:	e3a00002 	mov	r0, #2
ffff04b0:	e59f1214 	ldr	r1, [pc, #532]	; 0xffff06cc
ffff04b4:	e5c10008 	strb	r0, [r1, #8]
ffff04b8:	e2810000 	add	r0, r1, #0
ffff04bc:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff04c0:	e92d4030 	push	{r4, r5, lr}
ffff04c4:	e24dd024 	sub	sp, sp, #36	; 0x24
ffff04c8:	e1a04000 	mov	r4, r0
ffff04cc:	e3a05000 	mov	r5, #0
ffff04d0:	e3a02020 	mov	r2, #32
ffff04d4:	e3a01000 	mov	r1, #0
ffff04d8:	e28d0004 	add	r0, sp, #4
ffff04dc:	ebffff24 	bl	0xffff0174
ffff04e0:	e3a02008 	mov	r2, #8
ffff04e4:	e28f1f79 	add	r1, pc, #484	; 0x1e4
ffff04e8:	e28d0004 	add	r0, sp, #4
ffff04ec:	ebffff16 	bl	0xffff014c
ffff04f0:	e59f01e4 	ldr	r0, [pc, #484]	; 0xffff06dc
ffff04f4:	e58d000c 	str	r0, [sp, #12]
ffff04f8:	e3a00001 	mov	r0, #1
ffff04fc:	e58d0010 	str	r0, [sp, #16]
ffff0500:	e1cd01b4 	strh	r0, [sp, #20]
ffff0504:	e3a00044 	mov	r0, #68	; 0x44
ffff0508:	e5cd0016 	strb	r0, [sp, #22]
ffff050c:	e3a00008 	mov	r0, #8
ffff0510:	e5cd0017 	strb	r0, [sp, #23]
ffff0514:	e3a00c7e 	mov	r0, #32256	; 0x7e00
ffff0518:	e58d0018 	str	r0, [sp, #24]
ffff051c:	e3a01020 	mov	r1, #32
ffff0520:	e28d0004 	add	r0, sp, #4
ffff0524:	ebffffd6 	bl	0xffff0484
ffff0528:	e1a05000 	mov	r5, r0
ffff052c:	e1a01005 	mov	r1, r5
ffff0530:	e1a00004 	mov	r0, r4
ffff0534:	ebffffb6 	bl	0xffff0414
ffff0538:	e28dd024 	add	sp, sp, #36	; 0x24
ffff053c:	e8bd8030 	pop	{r4, r5, pc}
ffff0540:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
ffff0544:	e1a04000 	mov	r4, r0
ffff0548:	e3a05000 	mov	r5, #0
ffff054c:	e3a02010 	mov	r2, #16
ffff0550:	e3a01000 	mov	r1, #0
ffff0554:	e1a0000d 	mov	r0, sp
ffff0558:	ebffff05 	bl	0xffff0174
ffff055c:	e3a00001 	mov	r0, #1
ffff0560:	e1cd00b0 	strh	r0, [sp]
ffff0564:	e3a00000 	mov	r0, #0
ffff0568:	e1cd00b2 	strh	r0, [sp, #2]
ffff056c:	e3a01010 	mov	r1, #16
ffff0570:	e1a0000d 	mov	r0, sp
ffff0574:	ebffffc2 	bl	0xffff0484
ffff0578:	e1a05000 	mov	r5, r0
ffff057c:	e1a01005 	mov	r1, r5
ffff0580:	e1a00004 	mov	r0, r4
ffff0584:	ebffffa2 	bl	0xffff0414
ffff0588:	e8bd807f 	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
ffff058c:	e92d407f 	push	{r0, r1, r2, r3, r4, r5, r6, lr}
ffff0590:	e1a04000 	mov	r4, r0
ffff0594:	e3a05000 	mov	r5, #0
ffff0598:	e3a02010 	mov	r2, #16
ffff059c:	e3a01000 	mov	r1, #0
ffff05a0:	e1a0000d 	mov	r0, sp
ffff05a4:	ebfffef2 	bl	0xffff0174
ffff05a8:	e3a00f7d 	mov	r0, #500	; 0x1f4
ffff05ac:	e1cd00b2 	strh	r0, [sp, #2]
ffff05b0:	e3a00002 	mov	r0, #2
ffff05b4:	e1cd00b0 	strh	r0, [sp]
ffff05b8:	e3a01010 	mov	r1, #16
ffff05bc:	e1a0000d 	mov	r0, sp
ffff05c0:	ebffffaf 	bl	0xffff0484
ffff05c4:	e1a05000 	mov	r5, r0
ffff05c8:	e1a01005 	mov	r1, r5
ffff05cc:	e1a00004 	mov	r0, r4
ffff05d0:	ebffff8f 	bl	0xffff0414
ffff05d4:	e8bd807f 	pop	{r0, r1, r2, r3, r4, r5, r6, pc}
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
ffff0620:	ebffff97 	bl	0xffff0484
ffff0624:	e1a07000 	mov	r7, r0
ffff0628:	e1a01007 	mov	r1, r7
ffff062c:	e1a00006 	mov	r0, r6
ffff0630:	ebffff77 	bl	0xffff0414
ffff0634:	e3a00000 	mov	r0, #0
ffff0638:	eaffffee 	b	0xffff05f8
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
ffff0684:	ebffff7e 	bl	0xffff0484
ffff0688:	e1a07000 	mov	r7, r0
ffff068c:	e1a01007 	mov	r1, r7
ffff0690:	e1a00006 	mov	r0, r6
ffff0694:	ebffff5e 	bl	0xffff0414
ffff0698:	e3a00000 	mov	r0, #0
ffff069c:	eaffffee 	b	0xffff065c
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
ffff06c8:	53555741 	cmppl	r5, #17039360	; 0x1040000
ffff06cc:	00007d04 	andeq	r7, r0, r4, lsl #26
ffff06d0:	53555741 	cmppl	r5, #17039360	; 0x1040000
ffff06d4:	58454642 	stmdapl	r5, {r1, r6, r9, sl, lr}^
ffff06d8:	00000000 	andeq	r0, r0, r0
ffff06dc:	00162500 	andseq	r2, r6, r0, lsl #10
ffff06e0:	e92d41fc 	push	{r2, r3, r4, r5, r6, r7, r8, lr}
ffff06e4:	e1a04000 	mov	r4, r0
ffff06e8:	e1a05001 	mov	r5, r1
ffff06ec:	e1a06002 	mov	r6, r2
ffff06f0:	e3a07000 	mov	r7, #0
ffff06f4:	e3a02008 	mov	r2, #8
ffff06f8:	e3a01000 	mov	r1, #0
ffff06fc:	e1a0000d 	mov	r0, sp
ffff0700:	ebfffe9b 	bl	0xffff0174
ffff0704:	e30f0fff 	movw	r0, #65535	; 0xffff
ffff0708:	e1cd00b0 	strh	r0, [sp]
ffff070c:	e1cd50b2 	strh	r5, [sp, #2]
ffff0710:	e5cd6004 	strb	r6, [sp, #4]
ffff0714:	e3a01008 	mov	r1, #8
ffff0718:	e1a0000d 	mov	r0, sp
ffff071c:	ebffff58 	bl	0xffff0484
ffff0720:	e1a07000 	mov	r7, r0
ffff0724:	e1a01007 	mov	r1, r7
ffff0728:	e1a00004 	mov	r0, r4
ffff072c:	ebffff38 	bl	0xffff0414
ffff0730:	e8bd81fc 	pop	{r2, r3, r4, r5, r6, r7, r8, pc}
ffff0734:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff0738:	e1a04000 	mov	r4, r0
ffff073c:	e1a05001 	mov	r5, r1
ffff0740:	e1a06002 	mov	r6, r2
ffff0744:	e3a07000 	mov	r7, #0
ffff0748:	e1a02006 	mov	r2, r6
ffff074c:	e3a01000 	mov	r1, #0
ffff0750:	e1a00005 	mov	r0, r5
ffff0754:	ebfffe86 	bl	0xffff0174
ffff0758:	e1a01006 	mov	r1, r6
ffff075c:	e1a00005 	mov	r0, r5
ffff0760:	ebffff47 	bl	0xffff0484
ffff0764:	e1a07000 	mov	r7, r0
ffff0768:	e1a01007 	mov	r1, r7
ffff076c:	e1a00004 	mov	r0, r4
ffff0770:	ebffff3c 	bl	0xffff0468
ffff0774:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff0778:	e92d47ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff077c:	e1a04000 	mov	r4, r0
ffff0780:	e3a05000 	mov	r5, #0
ffff0784:	e3a06000 	mov	r6, #0
ffff0788:	e3a09000 	mov	r9, #0
ffff078c:	e3a0a001 	mov	sl, #1
ffff0790:	e3a02010 	mov	r2, #16
ffff0794:	e1a0100d 	mov	r1, sp
ffff0798:	e1a00004 	mov	r0, r4
ffff079c:	ebffffe4 	bl	0xffff0734
ffff07a0:	e1a0500d 	mov	r5, sp
ffff07a4:	e1d560b0 	ldrh	r6, [r5]
ffff07a8:	e1d590b2 	ldrh	r9, [r5, #2]
ffff07ac:	e3560010 	cmp	r6, #16
ffff07b0:	0a000022 	beq	0xffff0840
ffff07b4:	ca000008 	bgt	0xffff07dc
ffff07b8:	e3560001 	cmp	r6, #1
ffff07bc:	0a00000e 	beq	0xffff07fc
ffff07c0:	e3560002 	cmp	r6, #2
ffff07c4:	0a000011 	beq	0xffff0810
ffff07c8:	e3560003 	cmp	r6, #3
ffff07cc:	0a000011 	beq	0xffff0818
ffff07d0:	e3560004 	cmp	r6, #4
ffff07d4:	1a000038 	bne	0xffff08bc
ffff07d8:	ea000013 	b	0xffff082c
ffff07dc:	e3e00c01 	mvn	r0, #256	; 0x100
ffff07e0:	e0900006 	adds	r0, r0, r6
ffff07e4:	0a000017 	beq	0xffff0848
ffff07e8:	e3500001 	cmp	r0, #1
ffff07ec:	0a000021 	beq	0xffff0878
ffff07f0:	e3500002 	cmp	r0, #2
ffff07f4:	1a000030 	bne	0xffff08bc
ffff07f8:	ea000018 	b	0xffff0860
ffff07fc:	e320f000 	nop	{0}
ffff0800:	e1a00004 	mov	r0, r4
ffff0804:	ebffff2d 	bl	0xffff04c0
ffff0808:	e3a0a000 	mov	sl, #0
ffff080c:	ea00002d 	b	0xffff08c8
ffff0810:	e320f000 	nop	{0}
ffff0814:	ea00002b 	b	0xffff08c8
ffff0818:	e320f000 	nop	{0}
ffff081c:	e1a00004 	mov	r0, r4
ffff0820:	ebffff59 	bl	0xffff058c
ffff0824:	e3a0a000 	mov	sl, #0
ffff0828:	ea000026 	b	0xffff08c8
ffff082c:	e320f000 	nop	{0}
ffff0830:	e1a00004 	mov	r0, r4
ffff0834:	ebffff41 	bl	0xffff0540
ffff0838:	e3a0a000 	mov	sl, #0
ffff083c:	ea000021 	b	0xffff08c8
ffff0840:	e320f000 	nop	{0}
ffff0844:	ea00001f 	b	0xffff08c8
ffff0848:	e320f000 	nop	{0}
ffff084c:	e1a0100d 	mov	r1, sp
ffff0850:	e1a00004 	mov	r0, r4
ffff0854:	ebffff5f 	bl	0xffff05d8
ffff0858:	e1a0a000 	mov	sl, r0
ffff085c:	ea000019 	b	0xffff08c8
ffff0860:	e320f000 	nop	{0}
ffff0864:	e1a0100d 	mov	r1, sp
ffff0868:	e1a00004 	mov	r0, r4
ffff086c:	ebffff72 	bl	0xffff063c
ffff0870:	e1a0a000 	mov	sl, r0
ffff0874:	ea000013 	b	0xffff08c8
ffff0878:	e320f000 	nop	{0}
ffff087c:	e3a07000 	mov	r7, #0
ffff0880:	e1a0100d 	mov	r1, sp
ffff0884:	e1a00004 	mov	r0, r4
ffff0888:	ebffff84 	bl	0xffff06a0
ffff088c:	e1a07000 	mov	r7, r0
ffff0890:	e3a0a000 	mov	sl, #0
ffff0894:	e1a0200a 	mov	r2, sl
ffff0898:	e1a01009 	mov	r1, r9
ffff089c:	e1a00004 	mov	r0, r4
ffff08a0:	ebffff8e 	bl	0xffff06e0
ffff08a4:	e1a00004 	mov	r0, r4
ffff08a8:	eb000664 	bl	0xffff2240
ffff08ac:	e1a08007 	mov	r8, r7
ffff08b0:	e1a07008 	mov	r7, r8
ffff08b4:	e12fff38 	blx	r8
ffff08b8:	e8bd87ff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff08bc:	e320f000 	nop	{0}
ffff08c0:	e3a0a001 	mov	sl, #1
ffff08c4:	e320f000 	nop	{0}
ffff08c8:	e320f000 	nop	{0}
ffff08cc:	e1a0200a 	mov	r2, sl
ffff08d0:	e1a01009 	mov	r1, r9
ffff08d4:	e1a00004 	mov	r0, r4
ffff08d8:	ebffff80 	bl	0xffff06e0
ffff08dc:	eafffff5 	b	0xffff08b8
ffff08e0:	e92d4070 	push	{r4, r5, r6, lr}
ffff08e4:	e1a05000 	mov	r5, r0
ffff08e8:	e3a04000 	mov	r4, #0
ffff08ec:	ea000003 	b	0xffff0900
ffff08f0:	ebfffe39 	bl	0xffff01dc
ffff08f4:	e1a00005 	mov	r0, r5
ffff08f8:	ebffff9e 	bl	0xffff0778
ffff08fc:	e2844001 	add	r4, r4, #1
ffff0900:	eafffffa 	b	0xffff08f0
ffff0904:	e3a01000 	mov	r1, #0
ffff0908:	e5c01018 	strb	r1, [r0, #24]
ffff090c:	e12fff1e 	bx	lr
ffff0910:	e3a01000 	mov	r1, #0
ffff0914:	e5c01018 	strb	r1, [r0, #24]
ffff0918:	e12fff1e 	bx	lr
ffff091c:	e3a01000 	mov	r1, #0
ffff0920:	e5c01018 	strb	r1, [r0, #24]
ffff0924:	e12fff1e 	bx	lr
ffff0928:	e3a00000 	mov	r0, #0
ffff092c:	e59f1e14 	ldr	r1, [pc, #3604]	; 0xffff1748
ffff0930:	e5910444 	ldr	r0, [r1, #1092]	; 0x444
ffff0934:	e3800040 	orr	r0, r0, #64	; 0x40
ffff0938:	e5810444 	str	r0, [r1, #1092]	; 0x444
ffff093c:	e12fff1e 	bx	lr
ffff0940:	e1a01000 	mov	r1, r0
ffff0944:	e10f0000 	mrs	r0, CPSR
ffff0948:	e3800080 	orr	r0, r0, #128	; 0x80
ffff094c:	e121f000 	msr	CPSR_c, r0
ffff0950:	e12fff1e 	bx	lr
ffff0954:	e1a01000 	mov	r1, r0
ffff0958:	e10f0000 	mrs	r0, CPSR
ffff095c:	e3c00080 	bic	r0, r0, #128	; 0x80
ffff0960:	e121f000 	msr	CPSR_c, r0
ffff0964:	e12fff1e 	bx	lr
ffff0968:	e59f1ddc 	ldr	r1, [pc, #3548]	; 0xffff174c
ffff096c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff0970:	e12fff1e 	bx	lr
ffff0974:	e59f0dd0 	ldr	r0, [pc, #3536]	; 0xffff174c
ffff0978:	e5d00042 	ldrb	r0, [r0, #66]	; 0x42
ffff097c:	e12fff1e 	bx	lr
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
ffff0acc:	e5802000 	str	r2, [r0]
ffff0ad0:	e5801004 	str	r1, [r0, #4]
ffff0ad4:	e12fff1e 	bx	lr
ffff0ad8:	e12fff1e 	bx	lr
ffff0adc:	e12fff1e 	bx	lr
ffff0ae0:	e12fff1e 	bx	lr
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
ffff0ba4:	e5801000 	str	r1, [r0]
ffff0ba8:	e3a02000 	mov	r2, #0
ffff0bac:	e5802004 	str	r2, [r0, #4]
ffff0bb0:	e59f2b98 	ldr	r2, [pc, #2968]	; 0xffff1750
ffff0bb4:	e580200c 	str	r2, [r0, #12]
ffff0bb8:	e3a02000 	mov	r2, #0
ffff0bbc:	e5802010 	str	r2, [r0, #16]
ffff0bc0:	e5c02008 	strb	r2, [r0, #8]
ffff0bc4:	e5c02018 	strb	r2, [r0, #24]
ffff0bc8:	e5802014 	str	r2, [r0, #20]
ffff0bcc:	e12fff1e 	bx	lr
ffff0bd0:	e5801000 	str	r1, [r0]
ffff0bd4:	e3a02000 	mov	r2, #0
ffff0bd8:	e5802004 	str	r2, [r0, #4]
ffff0bdc:	e59f2b70 	ldr	r2, [pc, #2928]	; 0xffff1754
ffff0be0:	e580200c 	str	r2, [r0, #12]
ffff0be4:	e3a02000 	mov	r2, #0
ffff0be8:	e5802010 	str	r2, [r0, #16]
ffff0bec:	e5c02008 	strb	r2, [r0, #8]
ffff0bf0:	e5c02018 	strb	r2, [r0, #24]
ffff0bf4:	e3a02001 	mov	r2, #1
ffff0bf8:	e5802014 	str	r2, [r0, #20]
ffff0bfc:	e12fff1e 	bx	lr
ffff0c00:	e5801000 	str	r1, [r0]
ffff0c04:	e3a02000 	mov	r2, #0
ffff0c08:	e5802004 	str	r2, [r0, #4]
ffff0c0c:	e59f2b44 	ldr	r2, [pc, #2884]	; 0xffff1758
ffff0c10:	e580200c 	str	r2, [r0, #12]
ffff0c14:	e3a02000 	mov	r2, #0
ffff0c18:	e5802010 	str	r2, [r0, #16]
ffff0c1c:	e5c02008 	strb	r2, [r0, #8]
ffff0c20:	e5c02018 	strb	r2, [r0, #24]
ffff0c24:	e3a02002 	mov	r2, #2
ffff0c28:	e5802014 	str	r2, [r0, #20]
ffff0c2c:	e12fff1e 	bx	lr
ffff0c30:	e92d4010 	push	{r4, lr}
ffff0c34:	e580100c 	str	r1, [r0, #12]
ffff0c38:	e580201c 	str	r2, [r0, #28]
ffff0c3c:	e580302c 	str	r3, [r0, #44]	; 0x2c
ffff0c40:	e8bd8010 	pop	{r4, pc}
ffff0c44:	e3a00000 	mov	r0, #0
ffff0c48:	e59f1afc 	ldr	r1, [pc, #2812]	; 0xffff174c
ffff0c4c:	e5d10040 	ldrb	r0, [r1, #64]	; 0x40
ffff0c50:	e3c00020 	bic	r0, r0, #32
ffff0c54:	e5c10040 	strb	r0, [r1, #64]	; 0x40
ffff0c58:	e5d10040 	ldrb	r0, [r1, #64]	; 0x40
ffff0c5c:	e12fff1e 	bx	lr
ffff0c60:	e3a02000 	mov	r2, #0
ffff0c64:	e3a01000 	mov	r1, #0
ffff0c68:	e59f0ad8 	ldr	r0, [pc, #2776]	; 0xffff1748
ffff0c6c:	e5902000 	ldr	r2, [r0]
ffff0c70:	e59f0ae4 	ldr	r0, [pc, #2788]	; 0xffff175c
ffff0c74:	e0022000 	and	r2, r2, r0
ffff0c78:	e3822102 	orr	r2, r2, #-2147483648	; 0x80000000
ffff0c7c:	e3822b05 	orr	r2, r2, #5120	; 0x1400
ffff0c80:	e59f0ac0 	ldr	r0, [pc, #2752]	; 0xffff1748
ffff0c84:	e5802000 	str	r2, [r0]
ffff0c88:	e30c1350 	movw	r1, #50000	; 0xc350
ffff0c8c:	e320f000 	nop	{0}
ffff0c90:	e1b00001 	movs	r0, r1
ffff0c94:	e2411001 	sub	r1, r1, #1
ffff0c98:	1afffffc 	bne	0xffff0c90
ffff0c9c:	e59f0aa4 	ldr	r0, [pc, #2724]	; 0xffff1748
ffff0ca0:	e5902054 	ldr	r2, [r0, #84]	; 0x54
ffff0ca4:	e3000333 	movw	r0, #819	; 0x333
ffff0ca8:	e1c22000 	bic	r2, r2, r0
ffff0cac:	e3000113 	movw	r0, #275	; 0x113
ffff0cb0:	e1822000 	orr	r2, r2, r0
ffff0cb4:	e59f0a8c 	ldr	r0, [pc, #2700]	; 0xffff1748
ffff0cb8:	e5802054 	str	r2, [r0, #84]	; 0x54
ffff0cbc:	e5902054 	ldr	r2, [r0, #84]	; 0x54
ffff0cc0:	e3c22803 	bic	r2, r2, #196608	; 0x30000
ffff0cc4:	e3822802 	orr	r2, r2, #131072	; 0x20000
ffff0cc8:	e5802054 	str	r2, [r0, #84]	; 0x54
ffff0ccc:	e12fff1e 	bx	lr
ffff0cd0:	e3a00000 	mov	r0, #0
ffff0cd4:	e59f1a70 	ldr	r1, [pc, #2672]	; 0xffff174c
ffff0cd8:	e5910400 	ldr	r0, [r1, #1024]	; 0x400
ffff0cdc:	e3800903 	orr	r0, r0, #49152	; 0xc000
ffff0ce0:	e5810400 	str	r0, [r1, #1024]	; 0x400
ffff0ce4:	e12fff1e 	bx	lr
ffff0ce8:	e3a01000 	mov	r1, #0
ffff0cec:	e3a00000 	mov	r0, #0
ffff0cf0:	e59f2a54 	ldr	r2, [pc, #2644]	; 0xffff174c
ffff0cf4:	e5921400 	ldr	r1, [r2, #1024]	; 0x400
ffff0cf8:	e3811801 	orr	r1, r1, #65536	; 0x10000
ffff0cfc:	e5821400 	str	r1, [r2, #1024]	; 0x400
ffff0d00:	e3a00e7d 	mov	r0, #2000	; 0x7d0
ffff0d04:	e320f000 	nop	{0}
ffff0d08:	e1b02000 	movs	r2, r0
ffff0d0c:	e2400001 	sub	r0, r0, #1
ffff0d10:	1afffffc 	bne	0xffff0d08
ffff0d14:	e3811b03 	orr	r1, r1, #3072	; 0xc00
ffff0d18:	e59f2a2c 	ldr	r2, [pc, #2604]	; 0xffff174c
ffff0d1c:	e5821400 	str	r1, [r2, #1024]	; 0x400
ffff0d20:	e12fff1e 	bx	lr
ffff0d24:	e3a01000 	mov	r1, #0
ffff0d28:	e59f0a1c 	ldr	r0, [pc, #2588]	; 0xffff174c
ffff0d2c:	e5d02400 	ldrb	r2, [r0, #1024]	; 0x400
ffff0d30:	e3120303 	tst	r2, #201326592	; 0xc000000
ffff0d34:	1a00000a 	bne	0xffff0d64
ffff0d38:	e59f0a0c 	ldr	r0, [pc, #2572]	; 0xffff174c
ffff0d3c:	e5d00041 	ldrb	r0, [r0, #65]	; 0x41
ffff0d40:	e2000018 	and	r0, r0, #24
ffff0d44:	e3500018 	cmp	r0, #24
ffff0d48:	0a000003 	beq	0xffff0d5c
ffff0d4c:	e59f09f8 	ldr	r0, [pc, #2552]	; 0xffff174c
ffff0d50:	e5901400 	ldr	r1, [r0, #1024]	; 0x400
ffff0d54:	e3811a03 	orr	r1, r1, #12288	; 0x3000
ffff0d58:	e5801400 	str	r1, [r0, #1024]	; 0x400
ffff0d5c:	e3a00001 	mov	r0, #1
ffff0d60:	e12fff1e 	bx	lr
ffff0d64:	e3a00000 	mov	r0, #0
ffff0d68:	eafffffc 	b	0xffff0d60
ffff0d6c:	e3a00000 	mov	r0, #0
ffff0d70:	e59f19d4 	ldr	r1, [pc, #2516]	; 0xffff174c
ffff0d74:	e5910400 	ldr	r0, [r1, #1024]	; 0x400
ffff0d78:	e3c00801 	bic	r0, r0, #65536	; 0x10000
ffff0d7c:	e5810400 	str	r0, [r1, #1024]	; 0x400
ffff0d80:	e12fff1e 	bx	lr
ffff0d84:	e59f09c0 	ldr	r0, [pc, #2496]	; 0xffff174c
ffff0d88:	e5d02041 	ldrb	r2, [r0, #65]	; 0x41
ffff0d8c:	e2020080 	and	r0, r2, #128	; 0x80
ffff0d90:	e3500080 	cmp	r0, #128	; 0x80
ffff0d94:	1a000006 	bne	0xffff0db4
ffff0d98:	e59f09ac 	ldr	r0, [pc, #2476]	; 0xffff174c
ffff0d9c:	e5d01041 	ldrb	r1, [r0, #65]	; 0x41
ffff0da0:	e3110001 	tst	r1, #1
ffff0da4:	0a000001 	beq	0xffff0db0
ffff0da8:	e3a00001 	mov	r0, #1
ffff0dac:	e12fff1e 	bx	lr
ffff0db0:	e320f000 	nop	{0}
ffff0db4:	e3a00000 	mov	r0, #0
ffff0db8:	eafffffb 	b	0xffff0dac
ffff0dbc:	e92d4010 	push	{r4, lr}
ffff0dc0:	e3a00000 	mov	r0, #0
ffff0dc4:	e59f197c 	ldr	r1, [pc, #2428]	; 0xffff1748
ffff0dc8:	e5810440 	str	r0, [r1, #1088]	; 0x440
ffff0dcc:	e5810444 	str	r0, [r1, #1092]	; 0x444
ffff0dd0:	e5810448 	str	r0, [r1, #1096]	; 0x448
ffff0dd4:	ebffffbd 	bl	0xffff0cd0
ffff0dd8:	ebffffc2 	bl	0xffff0ce8
ffff0ddc:	ea000009 	b	0xffff0e08
ffff0de0:	ebffffe7 	bl	0xffff0d84
ffff0de4:	e1a03000 	mov	r3, r0
ffff0de8:	ebffffcd 	bl	0xffff0d24
ffff0dec:	e1a04000 	mov	r4, r0
ffff0df0:	e3530000 	cmp	r3, #0
ffff0df4:	1a000001 	bne	0xffff0e00
ffff0df8:	e3540000 	cmp	r4, #0
ffff0dfc:	0a000000 	beq	0xffff0e04
ffff0e00:	ea000001 	b	0xffff0e0c
ffff0e04:	e320f000 	nop	{0}
ffff0e08:	eafffff4 	b	0xffff0de0
ffff0e0c:	e320f000 	nop	{0}
ffff0e10:	ebffffd5 	bl	0xffff0d6c
ffff0e14:	ebffff91 	bl	0xffff0c60
ffff0e18:	e8bd8010 	pop	{r4, pc}
ffff0e1c:	e92d4070 	push	{r4, r5, r6, lr}
ffff0e20:	e1a04000 	mov	r4, r0
ffff0e24:	e3a05000 	mov	r5, #0
ffff0e28:	e5d40004 	ldrb	r0, [r4, #4]
ffff0e2c:	ebfffecd 	bl	0xffff0968
ffff0e30:	e5d40005 	ldrb	r0, [r4, #5]
ffff0e34:	e3100080 	tst	r0, #128	; 0x80
ffff0e38:	0a00000d 	beq	0xffff0e74
ffff0e3c:	e3a00048 	mov	r0, #72	; 0x48
ffff0e40:	e59f1904 	ldr	r1, [pc, #2308]	; 0xffff174c
ffff0e44:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff0e48:	e5940008 	ldr	r0, [r4, #8]
ffff0e4c:	e7df059f 	bfc	r0, #11, #21
ffff0e50:	e5810080 	str	r0, [r1, #128]	; 0x80
ffff0e54:	e1a00001 	mov	r0, r1
ffff0e58:	e5d05048 	ldrb	r5, [r0, #72]	; 0x48
ffff0e5c:	e5d40004 	ldrb	r0, [r4, #4]
ffff0e60:	e3a01001 	mov	r1, #1
ffff0e64:	e1850011 	orr	r0, r5, r1, lsl r0
ffff0e68:	e59f18dc 	ldr	r1, [pc, #2268]	; 0xffff174c
ffff0e6c:	e5c10048 	strb	r0, [r1, #72]	; 0x48
ffff0e70:	ea00000c 	b	0xffff0ea8
ffff0e74:	e3a00090 	mov	r0, #144	; 0x90
ffff0e78:	e59f18cc 	ldr	r1, [pc, #2252]	; 0xffff174c
ffff0e7c:	e1c108b6 	strh	r0, [r1, #134]	; 0x86
ffff0e80:	e5940008 	ldr	r0, [r4, #8]
ffff0e84:	e7df059f 	bfc	r0, #11, #21
ffff0e88:	e1c108b4 	strh	r0, [r1, #132]	; 0x84
ffff0e8c:	e1a00001 	mov	r0, r1
ffff0e90:	e5d0504a 	ldrb	r5, [r0, #74]	; 0x4a
ffff0e94:	e5d40004 	ldrb	r0, [r4, #4]
ffff0e98:	e3a01001 	mov	r1, #1
ffff0e9c:	e1850011 	orr	r0, r5, r1, lsl r0
ffff0ea0:	e59f18a4 	ldr	r1, [pc, #2212]	; 0xffff174c
ffff0ea4:	e5c1004a 	strb	r0, [r1, #74]	; 0x4a
ffff0ea8:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff0eac:	e92d4010 	push	{r4, lr}
ffff0eb0:	e1a04000 	mov	r4, r0
ffff0eb4:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff0eb8:	e2810020 	add	r0, r1, #32
ffff0ebc:	ebffffd6 	bl	0xffff0e1c
ffff0ec0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff0ec4:	e2810010 	add	r0, r1, #16
ffff0ec8:	ebffffd3 	bl	0xffff0e1c
ffff0ecc:	e8bd8010 	pop	{r4, pc}
ffff0ed0:	e92d4070 	push	{r4, r5, r6, lr}
ffff0ed4:	e1a04000 	mov	r4, r0
ffff0ed8:	e3a05000 	mov	r5, #0
ffff0edc:	e3a00000 	mov	r0, #0
ffff0ee0:	e59f1860 	ldr	r1, [pc, #2144]	; 0xffff1748
ffff0ee4:	e5810440 	str	r0, [r1, #1088]	; 0x440
ffff0ee8:	e5810444 	str	r0, [r1, #1092]	; 0x444
ffff0eec:	e5810448 	str	r0, [r1, #1096]	; 0x448
ffff0ef0:	ebffff53 	bl	0xffff0c44
ffff0ef4:	e3a00507 	mov	r0, #29360128	; 0x1c00000
ffff0ef8:	e5905004 	ldr	r5, [r0, #4]
ffff0efc:	e3855001 	orr	r5, r5, #1
ffff0f00:	e5805004 	str	r5, [r0, #4]
ffff0f04:	e3a00001 	mov	r0, #1
ffff0f08:	e59f183c 	ldr	r1, [pc, #2108]	; 0xffff174c
ffff0f0c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff0f10:	e3a00007 	mov	r0, #7
ffff0f14:	e5c10094 	strb	r0, [r1, #148]	; 0x94
ffff0f18:	e3a00080 	mov	r0, #128	; 0x80
ffff0f1c:	e1c109b6 	strh	r0, [r1, #150]	; 0x96
ffff0f20:	e3a00002 	mov	r0, #2
ffff0f24:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff0f28:	e3a00007 	mov	r0, #7
ffff0f2c:	e5c10090 	strb	r0, [r1, #144]	; 0x90
ffff0f30:	e3a00c01 	mov	r0, #256	; 0x100
ffff0f34:	e1c109b2 	strh	r0, [r1, #146]	; 0x92
ffff0f38:	e3a00007 	mov	r0, #7
ffff0f3c:	e5c10050 	strb	r0, [r1, #80]	; 0x50
ffff0f40:	e1c10000 	bic	r0, r1, r0
ffff0f44:	e5d00048 	ldrb	r0, [r0, #72]	; 0x48
ffff0f48:	e3800001 	orr	r0, r0, #1
ffff0f4c:	e5c10048 	strb	r0, [r1, #72]	; 0x48
ffff0f50:	e59f0808 	ldr	r0, [pc, #2056]	; 0xffff1760
ffff0f54:	e5900000 	ldr	r0, [r0]
ffff0f58:	ebffffd3 	bl	0xffff0eac
ffff0f5c:	e3a00002 	mov	r0, #2
ffff0f60:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff0f64:	e5c10034 	strb	r0, [r1, #52]	; 0x34
ffff0f68:	ebffff93 	bl	0xffff0dbc
ffff0f6c:	e59f07d8 	ldr	r0, [pc, #2008]	; 0xffff174c
ffff0f70:	e5d00040 	ldrb	r0, [r0, #64]	; 0x40
ffff0f74:	e3800040 	orr	r0, r0, #64	; 0x40
ffff0f78:	e59f17cc 	ldr	r1, [pc, #1996]	; 0xffff174c
ffff0f7c:	e5c10040 	strb	r0, [r1, #64]	; 0x40
ffff0f80:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff0f84:	e92d4010 	push	{r4, lr}
ffff0f88:	e1a04000 	mov	r4, r0
ffff0f8c:	e59f07b8 	ldr	r0, [pc, #1976]	; 0xffff174c
ffff0f90:	e5d00043 	ldrb	r0, [r0, #67]	; 0x43
ffff0f94:	e20000fe 	and	r0, r0, #254	; 0xfe
ffff0f98:	e59f17ac 	ldr	r1, [pc, #1964]	; 0xffff174c
ffff0f9c:	e5c10043 	strb	r0, [r1, #67]	; 0x43
ffff0fa0:	e1a00004 	mov	r0, r4
ffff0fa4:	ebffffc9 	bl	0xffff0ed0
ffff0fa8:	ebfffe5e 	bl	0xffff0928
ffff0fac:	e1a00004 	mov	r0, r4
ffff0fb0:	ebfffe67 	bl	0xffff0954
ffff0fb4:	ebfffc89 	bl	0xffff01e0
ffff0fb8:	e8bd8010 	pop	{r4, pc}
ffff0fbc:	e1a03000 	mov	r3, r0
ffff0fc0:	e5d30005 	ldrb	r0, [r3, #5]
ffff0fc4:	e200007f 	and	r0, r0, #127	; 0x7f
ffff0fc8:	e3500004 	cmp	r0, #4
ffff0fcc:	da000001 	ble	0xffff0fd8
ffff0fd0:	e3e00000 	mvn	r0, #0
ffff0fd4:	e12fff1e 	bx	lr
ffff0fd8:	e5d30005 	ldrb	r0, [r3, #5]
ffff0fdc:	e200007f 	and	r0, r0, #127	; 0x7f
ffff0fe0:	e3500005 	cmp	r0, #5
ffff0fe4:	308ff100 	addcc	pc, pc, r0, lsl #2
ffff0fe8:	ea000004 	b	0xffff1000
ffff0fec:	ea000005 	b	0xffff1008
ffff0ff0:	ea000009 	b	0xffff101c
ffff0ff4:	ea00000e 	b	0xffff1034
ffff0ff8:	ea000013 	b	0xffff104c
ffff0ffc:	ea000018 	b	0xffff1064
ffff1000:	e320f000 	nop	{0}
ffff1004:	e320f000 	nop	{0}
ffff1008:	e3a00000 	mov	r0, #0
ffff100c:	e5810000 	str	r0, [r1]
ffff1010:	e59f0734 	ldr	r0, [pc, #1844]	; 0xffff174c
ffff1014:	e5820000 	str	r0, [r2]
ffff1018:	ea000017 	b	0xffff107c
ffff101c:	e320f000 	nop	{0}
ffff1020:	e3a00001 	mov	r0, #1
ffff1024:	e5810000 	str	r0, [r1]
ffff1028:	e59f0734 	ldr	r0, [pc, #1844]	; 0xffff1764
ffff102c:	e5820000 	str	r0, [r2]
ffff1030:	ea000011 	b	0xffff107c
ffff1034:	e320f000 	nop	{0}
ffff1038:	e3a00002 	mov	r0, #2
ffff103c:	e5810000 	str	r0, [r1]
ffff1040:	e59f0720 	ldr	r0, [pc, #1824]	; 0xffff1768
ffff1044:	e5820000 	str	r0, [r2]
ffff1048:	ea00000b 	b	0xffff107c
ffff104c:	e320f000 	nop	{0}
ffff1050:	e3a00003 	mov	r0, #3
ffff1054:	e5810000 	str	r0, [r1]
ffff1058:	e59f070c 	ldr	r0, [pc, #1804]	; 0xffff176c
ffff105c:	e5820000 	str	r0, [r2]
ffff1060:	ea000005 	b	0xffff107c
ffff1064:	e320f000 	nop	{0}
ffff1068:	e3a00004 	mov	r0, #4
ffff106c:	e5810000 	str	r0, [r1]
ffff1070:	e59f06f8 	ldr	r0, [pc, #1784]	; 0xffff1770
ffff1074:	e5820000 	str	r0, [r2]
ffff1078:	e320f000 	nop	{0}
ffff107c:	e320f000 	nop	{0}
ffff1080:	e3a00000 	mov	r0, #0
ffff1084:	eaffffd2 	b	0xffff0fd4
ffff1088:	e12fff1e 	bx	lr
ffff108c:	e92d4070 	push	{r4, r5, r6, lr}
ffff1090:	e1a06000 	mov	r6, r0
ffff1094:	e1a04001 	mov	r4, r1
ffff1098:	e1a05002 	mov	r5, r2
ffff109c:	e6af0075 	sxtb	r0, r5
ffff10a0:	e5c40018 	strb	r0, [r4, #24]
ffff10a4:	e594100c 	ldr	r1, [r4, #12]
ffff10a8:	e1a00004 	mov	r0, r4
ffff10ac:	e12fff31 	blx	r1
ffff10b0:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff10b4:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff10b8:	e1a04000 	mov	r4, r0
ffff10bc:	e1a05001 	mov	r5, r1
ffff10c0:	e1a06002 	mov	r6, r2
ffff10c4:	e3a09000 	mov	r9, #0
ffff10c8:	e1a0200d 	mov	r2, sp
ffff10cc:	e28d1004 	add	r1, sp, #4
ffff10d0:	e1a00005 	mov	r0, r5
ffff10d4:	ebffffb8 	bl	0xffff0fbc
ffff10d8:	e3500000 	cmp	r0, #0
ffff10dc:	0a000001 	beq	0xffff10e8
ffff10e0:	e3e00000 	mvn	r0, #0
ffff10e4:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff10e8:	e5957008 	ldr	r7, [r5, #8]
ffff10ec:	e1a02007 	mov	r2, r7
ffff10f0:	e1a01006 	mov	r1, r6
ffff10f4:	e59d0000 	ldr	r0, [sp]
ffff10f8:	eb00047e 	bl	0xffff22f8
ffff10fc:	e1a07000 	mov	r7, r0
ffff1100:	e5950008 	ldr	r0, [r5, #8]
ffff1104:	e1500007 	cmp	r0, r7
ffff1108:	0a000001 	beq	0xffff1114
ffff110c:	e3a08001 	mov	r8, #1
ffff1110:	ea000009 	b	0xffff113c
ffff1114:	e5960004 	ldr	r0, [r6, #4]
ffff1118:	e5961010 	ldr	r1, [r6, #16]
ffff111c:	e1500001 	cmp	r0, r1
ffff1120:	1a000004 	bne	0xffff1138
ffff1124:	e5d60008 	ldrb	r0, [r6, #8]
ffff1128:	e3500000 	cmp	r0, #0
ffff112c:	1a000001 	bne	0xffff1138
ffff1130:	e3a08002 	mov	r8, #2
ffff1134:	ea000000 	b	0xffff113c
ffff1138:	e3a08000 	mov	r8, #0
ffff113c:	e3580000 	cmp	r8, #0
ffff1140:	0a000027 	beq	0xffff11e4
ffff1144:	e59d0004 	ldr	r0, [sp, #4]
ffff1148:	e3500000 	cmp	r0, #0
ffff114c:	1a000017 	bne	0xffff11b0
ffff1150:	e1a00004 	mov	r0, r4
ffff1154:	eb00044e 	bl	0xffff2294
ffff1158:	e3100004 	tst	r0, #4
ffff115c:	1a000019 	bne	0xffff11c8
ffff1160:	e3580001 	cmp	r8, #1
ffff1164:	1a000009 	bne	0xffff1190
ffff1168:	e59d0004 	ldr	r0, [sp, #4]
ffff116c:	e59f15d8 	ldr	r1, [pc, #1496]	; 0xffff174c
ffff1170:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1174:	e3a0000a 	mov	r0, #10
ffff1178:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff117c:	e3a00000 	mov	r0, #0
ffff1180:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1184:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1188:	e3a09001 	mov	r9, #1
ffff118c:	ea00000d 	b	0xffff11c8
ffff1190:	e3580002 	cmp	r8, #2
ffff1194:	1a00000b 	bne	0xffff11c8
ffff1198:	e59d0004 	ldr	r0, [sp, #4]
ffff119c:	e59f15a8 	ldr	r1, [pc, #1448]	; 0xffff174c
ffff11a0:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff11a4:	e3a00002 	mov	r0, #2
ffff11a8:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff11ac:	ea000005 	b	0xffff11c8
ffff11b0:	e59d0004 	ldr	r0, [sp, #4]
ffff11b4:	e59f1590 	ldr	r1, [pc, #1424]	; 0xffff174c
ffff11b8:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff11bc:	e3020001 	movw	r0, #8193	; 0x2001
ffff11c0:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff11c4:	e3a09001 	mov	r9, #1
ffff11c8:	e3590001 	cmp	r9, #1
ffff11cc:	1a000016 	bne	0xffff122c
ffff11d0:	e3a02000 	mov	r2, #0
ffff11d4:	e1a01006 	mov	r1, r6
ffff11d8:	e1a00005 	mov	r0, r5
ffff11dc:	ebffffaa 	bl	0xffff108c
ffff11e0:	ea000011 	b	0xffff122c
ffff11e4:	e59d0004 	ldr	r0, [sp, #4]
ffff11e8:	e3500000 	cmp	r0, #0
ffff11ec:	1a000009 	bne	0xffff1218
ffff11f0:	e1a00004 	mov	r0, r4
ffff11f4:	eb000426 	bl	0xffff2294
ffff11f8:	e3100004 	tst	r0, #4
ffff11fc:	1a00000a 	bne	0xffff122c
ffff1200:	e59d0004 	ldr	r0, [sp, #4]
ffff1204:	e59f1540 	ldr	r1, [pc, #1344]	; 0xffff174c
ffff1208:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff120c:	e3a00002 	mov	r0, #2
ffff1210:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1214:	ea000004 	b	0xffff122c
ffff1218:	e59d0004 	ldr	r0, [sp, #4]
ffff121c:	e59f1528 	ldr	r1, [pc, #1320]	; 0xffff174c
ffff1220:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1224:	e3020001 	movw	r0, #8193	; 0x2001
ffff1228:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff122c:	e1a00009 	mov	r0, r9
ffff1230:	eaffffab 	b	0xffff10e4
ffff1234:	e92d4ffe 	push	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
ffff1238:	e1a04000 	mov	r4, r0
ffff123c:	e1a05001 	mov	r5, r1
ffff1240:	e1a06002 	mov	r6, r2
ffff1244:	e3a00001 	mov	r0, #1
ffff1248:	e58d0008 	str	r0, [sp, #8]
ffff124c:	e3a0b000 	mov	fp, #0
ffff1250:	e1a0200d 	mov	r2, sp
ffff1254:	e28d1004 	add	r1, sp, #4
ffff1258:	e1a00005 	mov	r0, r5
ffff125c:	ebffff56 	bl	0xffff0fbc
ffff1260:	e3500000 	cmp	r0, #0
ffff1264:	0a000001 	beq	0xffff1270
ffff1268:	e3e00000 	mvn	r0, #0
ffff126c:	e8bd8ffe 	pop	{r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
ffff1270:	e5960000 	ldr	r0, [r6]
ffff1274:	e5961010 	ldr	r1, [r6, #16]
ffff1278:	e0807001 	add	r7, r0, r1
ffff127c:	e5960004 	ldr	r0, [r6, #4]
ffff1280:	e5961010 	ldr	r1, [r6, #16]
ffff1284:	e0409001 	sub	r9, r0, r1
ffff1288:	e3590000 	cmp	r9, #0
ffff128c:	1a000001 	bne	0xffff1298
ffff1290:	e3e00000 	mvn	r0, #0
ffff1294:	eafffff4 	b	0xffff126c
ffff1298:	e59d0004 	ldr	r0, [sp, #4]
ffff129c:	e59f14a8 	ldr	r1, [pc, #1192]	; 0xffff174c
ffff12a0:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff12a4:	e1a00001 	mov	r0, r1
ffff12a8:	e590b088 	ldr	fp, [r0, #136]	; 0x88
ffff12ac:	e5950008 	ldr	r0, [r5, #8]
ffff12b0:	e150000b 	cmp	r0, fp
ffff12b4:	2a000001 	bcs	0xffff12c0
ffff12b8:	e595a008 	ldr	sl, [r5, #8]
ffff12bc:	ea000000 	b	0xffff12c4
ffff12c0:	e1a0a00b 	mov	sl, fp
ffff12c4:	e1a0300a 	mov	r3, sl
ffff12c8:	e1a02006 	mov	r2, r6
ffff12cc:	e1a01007 	mov	r1, r7
ffff12d0:	e59d0000 	ldr	r0, [sp]
ffff12d4:	eb000423 	bl	0xffff2368
ffff12d8:	e1a0b000 	mov	fp, r0
ffff12dc:	e5950008 	ldr	r0, [r5, #8]
ffff12e0:	e150000b 	cmp	r0, fp
ffff12e4:	9a000006 	bls	0xffff1304
ffff12e8:	e3a00001 	mov	r0, #1
ffff12ec:	e58d0008 	str	r0, [sp, #8]
ffff12f0:	e15b000a 	cmp	fp, sl
ffff12f4:	0a00000b 	beq	0xffff1328
ffff12f8:	e3a000ff 	mov	r0, #255	; 0xff
ffff12fc:	e5c60018 	strb	r0, [r6, #24]
ffff1300:	ea000008 	b	0xffff1328
ffff1304:	e5960004 	ldr	r0, [r6, #4]
ffff1308:	e5961010 	ldr	r1, [r6, #16]
ffff130c:	e1500001 	cmp	r0, r1
ffff1310:	1a000002 	bne	0xffff1320
ffff1314:	e3a00001 	mov	r0, #1
ffff1318:	e58d0008 	str	r0, [sp, #8]
ffff131c:	ea000001 	b	0xffff1328
ffff1320:	e3a00000 	mov	r0, #0
ffff1324:	e58d0008 	str	r0, [sp, #8]
ffff1328:	e59d0004 	ldr	r0, [sp, #4]
ffff132c:	e59f1418 	ldr	r1, [pc, #1048]	; 0xffff174c
ffff1330:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1334:	e1a00001 	mov	r0, r1
ffff1338:	e590b088 	ldr	fp, [r0, #136]	; 0x88
ffff133c:	e59d0008 	ldr	r0, [sp, #8]
ffff1340:	e3500000 	cmp	r0, #0
ffff1344:	0a000018 	beq	0xffff13ac
ffff1348:	e59d0004 	ldr	r0, [sp, #4]
ffff134c:	e3500000 	cmp	r0, #0
ffff1350:	1a000007 	bne	0xffff1374
ffff1354:	e59d0004 	ldr	r0, [sp, #4]
ffff1358:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff135c:	e3a00048 	mov	r0, #72	; 0x48
ffff1360:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1364:	e3a00000 	mov	r0, #0
ffff1368:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff136c:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1370:	ea000006 	b	0xffff1390
ffff1374:	e59d0004 	ldr	r0, [sp, #4]
ffff1378:	e59f13cc 	ldr	r1, [pc, #972]	; 0xffff174c
ffff137c:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1380:	e1a00001 	mov	r0, r1
ffff1384:	e1d088b6 	ldrh	r8, [r0, #134]	; 0x86
ffff1388:	e3c88001 	bic	r8, r8, #1
ffff138c:	e1c088b6 	strh	r8, [r0, #134]	; 0x86
ffff1390:	e3a02000 	mov	r2, #0
ffff1394:	e1a01006 	mov	r1, r6
ffff1398:	e1a00005 	mov	r0, r5
ffff139c:	ebffff3a 	bl	0xffff108c
ffff13a0:	e3a00001 	mov	r0, #1
ffff13a4:	e58d0008 	str	r0, [sp, #8]
ffff13a8:	ea00000f 	b	0xffff13ec
ffff13ac:	e59d0004 	ldr	r0, [sp, #4]
ffff13b0:	e3500000 	cmp	r0, #0
ffff13b4:	1a000005 	bne	0xffff13d0
ffff13b8:	e59d0004 	ldr	r0, [sp, #4]
ffff13bc:	e59f1388 	ldr	r1, [pc, #904]	; 0xffff174c
ffff13c0:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff13c4:	e3a00040 	mov	r0, #64	; 0x40
ffff13c8:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff13cc:	ea000006 	b	0xffff13ec
ffff13d0:	e59d0004 	ldr	r0, [sp, #4]
ffff13d4:	e59f1370 	ldr	r1, [pc, #880]	; 0xffff174c
ffff13d8:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff13dc:	e1a00001 	mov	r0, r1
ffff13e0:	e1d088b6 	ldrh	r8, [r0, #134]	; 0x86
ffff13e4:	e3c88001 	bic	r8, r8, #1
ffff13e8:	e1c088b6 	strh	r8, [r0, #134]	; 0x86
ffff13ec:	e59d0008 	ldr	r0, [sp, #8]
ffff13f0:	eaffff9d 	b	0xffff126c
ffff13f4:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff13f8:	e1a04000 	mov	r4, r0
ffff13fc:	e1a05001 	mov	r5, r1
ffff1400:	e1a06002 	mov	r6, r2
ffff1404:	e3a07000 	mov	r7, #0
ffff1408:	e3a08000 	mov	r8, #0
ffff140c:	e3a09000 	mov	r9, #0
ffff1410:	e5950014 	ldr	r0, [r5, #20]
ffff1414:	e3d00003 	bics	r0, r0, #3
ffff1418:	0a000001 	beq	0xffff1424
ffff141c:	e3e00000 	mvn	r0, #0
ffff1420:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff1424:	e3560000 	cmp	r6, #0
ffff1428:	1a000001 	bne	0xffff1434
ffff142c:	e1a00004 	mov	r0, r4
ffff1430:	ebfffd42 	bl	0xffff0940
ffff1434:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1438:	e5951014 	ldr	r1, [r5, #20]
ffff143c:	e0807201 	add	r7, r0, r1, lsl #4
ffff1440:	e3a00000 	mov	r0, #0
ffff1444:	e5850010 	str	r0, [r5, #16]
ffff1448:	e5d70005 	ldrb	r0, [r7, #5]
ffff144c:	e3500000 	cmp	r0, #0
ffff1450:	0a00000c 	beq	0xffff1488
ffff1454:	e5d70005 	ldrb	r0, [r7, #5]
ffff1458:	e200007f 	and	r0, r0, #127	; 0x7f
ffff145c:	e59f12e8 	ldr	r1, [pc, #744]	; 0xffff174c
ffff1460:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1464:	e5d70005 	ldrb	r0, [r7, #5]
ffff1468:	e3100080 	tst	r0, #128	; 0x80
ffff146c:	0a000001 	beq	0xffff1478
ffff1470:	e2810082 	add	r0, r1, #130	; 0x82
ffff1474:	ea000000 	b	0xffff147c
ffff1478:	e59f02f4 	ldr	r0, [pc, #756]	; 0xffff1774
ffff147c:	e1d080b0 	ldrh	r8, [r0]
ffff1480:	e59f02c4 	ldr	r0, [pc, #708]	; 0xffff174c
ffff1484:	e1d098b8 	ldrh	r9, [r0, #136]	; 0x88
ffff1488:	e5d70005 	ldrb	r0, [r7, #5]
ffff148c:	e3500000 	cmp	r0, #0
ffff1490:	1a00001c 	bne	0xffff1508
ffff1494:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1498:	e5900030 	ldr	r0, [r0, #48]	; 0x30
ffff149c:	e3500001 	cmp	r0, #1
ffff14a0:	0a000002 	beq	0xffff14b0
ffff14a4:	e3500002 	cmp	r0, #2
ffff14a8:	1a00000e 	bne	0xffff14e8
ffff14ac:	ea000008 	b	0xffff14d4
ffff14b0:	e320f000 	nop	{0}
ffff14b4:	e1a02005 	mov	r2, r5
ffff14b8:	e1a01007 	mov	r1, r7
ffff14bc:	e1a00004 	mov	r0, r4
ffff14c0:	ebfffefb 	bl	0xffff10b4
ffff14c4:	e3500000 	cmp	r0, #0
ffff14c8:	0a000000 	beq	0xffff14d0
ffff14cc:	e3a05000 	mov	r5, #0
ffff14d0:	ea00000b 	b	0xffff1504
ffff14d4:	e320f000 	nop	{0}
ffff14d8:	e3a00000 	mov	r0, #0
ffff14dc:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff14e0:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff14e4:	ea000006 	b	0xffff1504
ffff14e8:	e320f000 	nop	{0}
ffff14ec:	e3560000 	cmp	r6, #0
ffff14f0:	1a000001 	bne	0xffff14fc
ffff14f4:	e1a00004 	mov	r0, r4
ffff14f8:	ebfffd15 	bl	0xffff0954
ffff14fc:	e3e00000 	mvn	r0, #0
ffff1500:	eaffffc6 	b	0xffff1420
ffff1504:	ea000031 	b	0xffff15d0
ffff1508:	e5d70005 	ldrb	r0, [r7, #5]
ffff150c:	e3100080 	tst	r0, #128	; 0x80
ffff1510:	0a000009 	beq	0xffff153c
ffff1514:	e3180001 	tst	r8, #1
ffff1518:	1a000007 	bne	0xffff153c
ffff151c:	e1a02005 	mov	r2, r5
ffff1520:	e1a01007 	mov	r1, r7
ffff1524:	e1a00004 	mov	r0, r4
ffff1528:	ebfffee1 	bl	0xffff10b4
ffff152c:	e3500000 	cmp	r0, #0
ffff1530:	0a000001 	beq	0xffff153c
ffff1534:	e3a05000 	mov	r5, #0
ffff1538:	ea000024 	b	0xffff15d0
ffff153c:	e5d70005 	ldrb	r0, [r7, #5]
ffff1540:	e3100080 	tst	r0, #128	; 0x80
ffff1544:	1a000021 	bne	0xffff15d0
ffff1548:	e3180001 	tst	r8, #1
ffff154c:	0a00001f 	beq	0xffff15d0
ffff1550:	e59f01f4 	ldr	r0, [pc, #500]	; 0xffff174c
ffff1554:	e1d008b8 	ldrh	r0, [r0, #136]	; 0x88
ffff1558:	e1b09000 	movs	r9, r0
ffff155c:	0a00001b 	beq	0xffff15d0
ffff1560:	e320f000 	nop	{0}
ffff1564:	e1a02005 	mov	r2, r5
ffff1568:	e1a01007 	mov	r1, r7
ffff156c:	e1a00004 	mov	r0, r4
ffff1570:	ebffff2f 	bl	0xffff1234
ffff1574:	e5d70005 	ldrb	r0, [r7, #5]
ffff1578:	e200007f 	and	r0, r0, #127	; 0x7f
ffff157c:	e59f11c8 	ldr	r1, [pc, #456]	; 0xffff174c
ffff1580:	e5c10042 	strb	r0, [r1, #66]	; 0x42
ffff1584:	e5d70005 	ldrb	r0, [r7, #5]
ffff1588:	e3100080 	tst	r0, #128	; 0x80
ffff158c:	0a000001 	beq	0xffff1598
ffff1590:	e2810082 	add	r0, r1, #130	; 0x82
ffff1594:	ea000000 	b	0xffff159c
ffff1598:	e59f01d4 	ldr	r0, [pc, #468]	; 0xffff1774
ffff159c:	e1d080b0 	ldrh	r8, [r0]
ffff15a0:	e59f01a4 	ldr	r0, [pc, #420]	; 0xffff174c
ffff15a4:	e1d098b8 	ldrh	r9, [r0, #136]	; 0x88
ffff15a8:	e5d50018 	ldrb	r0, [r5, #24]
ffff15ac:	e3500000 	cmp	r0, #0
ffff15b0:	1a000000 	bne	0xffff15b8
ffff15b4:	ea000003 	b	0xffff15c8
ffff15b8:	e3180001 	tst	r8, #1
ffff15bc:	0a000001 	beq	0xffff15c8
ffff15c0:	e3590000 	cmp	r9, #0
ffff15c4:	1affffe6 	bne	0xffff1564
ffff15c8:	e320f000 	nop	{0}
ffff15cc:	e3a05000 	mov	r5, #0
ffff15d0:	e3560000 	cmp	r6, #0
ffff15d4:	1a000001 	bne	0xffff15e0
ffff15d8:	e1a00004 	mov	r0, r4
ffff15dc:	ebfffcdc 	bl	0xffff0954
ffff15e0:	e3a00000 	mov	r0, #0
ffff15e4:	eaffff8d 	b	0xffff1420
ffff15e8:	e92d4070 	push	{r4, r5, r6, lr}
ffff15ec:	e1a04000 	mov	r4, r0
ffff15f0:	e1a05001 	mov	r5, r1
ffff15f4:	e1a06002 	mov	r6, r2
ffff15f8:	e1a02006 	mov	r2, r6
ffff15fc:	e1a01005 	mov	r1, r5
ffff1600:	e1a00004 	mov	r0, r4
ffff1604:	ebffff7a 	bl	0xffff13f4
ffff1608:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff160c:	e3a01000 	mov	r1, #0
ffff1610:	e5801008 	str	r1, [r0, #8]
ffff1614:	e5801004 	str	r1, [r0, #4]
ffff1618:	e5801000 	str	r1, [r0]
ffff161c:	e12fff1e 	bx	lr
ffff1620:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff1624:	e1a04000 	mov	r4, r0
ffff1628:	e3a05000 	mov	r5, #0
ffff162c:	e3a06000 	mov	r6, #0
ffff1630:	e1a08004 	mov	r8, r4
ffff1634:	e3a00000 	mov	r0, #0
ffff1638:	ebfffcca 	bl	0xffff0968
ffff163c:	e59f0108 	ldr	r0, [pc, #264]	; 0xffff174c
ffff1640:	e1d068b8 	ldrh	r6, [r0, #136]	; 0x88
ffff1644:	e3560008 	cmp	r6, #8
ffff1648:	0a000008 	beq	0xffff1670
ffff164c:	e3a07000 	mov	r7, #0
ffff1650:	ea000002 	b	0xffff1660
ffff1654:	e59f00f0 	ldr	r0, [pc, #240]	; 0xffff174c
ffff1658:	e1d068b8 	ldrh	r6, [r0, #136]	; 0x88
ffff165c:	e2877001 	add	r7, r7, #1
ffff1660:	e3570010 	cmp	r7, #16
ffff1664:	aa000001 	bge	0xffff1670
ffff1668:	e3560008 	cmp	r6, #8
ffff166c:	1afffff8 	bne	0xffff1654
ffff1670:	ea000004 	b	0xffff1688
ffff1674:	e59f00d0 	ldr	r0, [pc, #208]	; 0xffff174c
ffff1678:	e5d00000 	ldrb	r0, [r0]
ffff167c:	e5c80000 	strb	r0, [r8]
ffff1680:	e2888001 	add	r8, r8, #1
ffff1684:	e2855001 	add	r5, r5, #1
ffff1688:	e1b00006 	movs	r0, r6
ffff168c:	e2466001 	sub	r6, r6, #1
ffff1690:	1afffff7 	bne	0xffff1674
ffff1694:	e1a00005 	mov	r0, r5
ffff1698:	e8bd81f0 	pop	{r4, r5, r6, r7, r8, pc}
ffff169c:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff16a0:	e1a04000 	mov	r4, r0
ffff16a4:	e1a05001 	mov	r5, r1
ffff16a8:	e1a0a002 	mov	sl, r2
ffff16ac:	e1a06003 	mov	r6, r3
ffff16b0:	e1a09005 	mov	r9, r5
ffff16b4:	e3560000 	cmp	r6, #0
ffff16b8:	0a000001 	beq	0xffff16c4
ffff16bc:	e3e00000 	mvn	r0, #0
ffff16c0:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff16c4:	e5948014 	ldr	r8, [r4, #20]
ffff16c8:	e3a07000 	mov	r7, #0
ffff16cc:	e3a02009 	mov	r2, #9
ffff16d0:	e1a00005 	mov	r0, r5
ffff16d4:	e5941004 	ldr	r1, [r4, #4]
ffff16d8:	ebfffa9b 	bl	0xffff014c
ffff16dc:	e2855009 	add	r5, r5, #9
ffff16e0:	e3a02009 	mov	r2, #9
ffff16e4:	e1a00005 	mov	r0, r5
ffff16e8:	e5941008 	ldr	r1, [r4, #8]
ffff16ec:	ebfffa96 	bl	0xffff014c
ffff16f0:	e2855009 	add	r5, r5, #9
ffff16f4:	e3a02007 	mov	r2, #7
ffff16f8:	e1a00005 	mov	r0, r5
ffff16fc:	e5981000 	ldr	r1, [r8]
ffff1700:	ebfffa91 	bl	0xffff014c
ffff1704:	e2855007 	add	r5, r5, #7
ffff1708:	e3a02007 	mov	r2, #7
ffff170c:	e1a00005 	mov	r0, r5
ffff1710:	e5981004 	ldr	r1, [r8, #4]
ffff1714:	ebfffa8c 	bl	0xffff014c
ffff1718:	e2855007 	add	r5, r5, #7
ffff171c:	e3a07020 	mov	r7, #32
ffff1720:	e3a00009 	mov	r0, #9
ffff1724:	e5c90000 	strb	r0, [r9]
ffff1728:	e3a00002 	mov	r0, #2
ffff172c:	e5c90001 	strb	r0, [r9, #1]
ffff1730:	e1c970b2 	strh	r7, [r9, #2]
ffff1734:	e5d90007 	ldrb	r0, [r9, #7]
ffff1738:	e3800080 	orr	r0, r0, #128	; 0x80
ffff173c:	e5c90007 	strb	r0, [r9, #7]
ffff1740:	e1a00007 	mov	r0, r7
ffff1744:	eaffffdd 	b	0xffff16c0
ffff1748:	01c20000 	biceq	r0, r2, r0
ffff174c:	01c13000 	biceq	r3, r1, r0
ffff1750:	ffff0904 			; <UNDEFINED> instruction: 0xffff0904
ffff1754:	ffff091c 			; <UNDEFINED> instruction: 0xffff091c
ffff1758:	ffff0910 			; <UNDEFINED> instruction: 0xffff0910
ffff175c:	7ffce0cc 	svcvc	0x00fce0cc
ffff1760:	00007d00 	andeq	r7, r0, r0, lsl #26
ffff1764:	01c13004 	biceq	r3, r1, r4
ffff1768:	01c13008 	biceq	r3, r1, r8
ffff176c:	01c1300c 	biceq	r3, r1, ip
ffff1770:	01c13010 	biceq	r3, r1, r0, lsl r0
ffff1774:	01c13086 	biceq	r3, r1, r6, lsl #1
ffff1778:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff177c:	e1a04000 	mov	r4, r0
ffff1780:	e1a05001 	mov	r5, r1
ffff1784:	e3a06000 	mov	r6, #0
ffff1788:	e3a07000 	mov	r7, #0
ffff178c:	e1d580b2 	ldrh	r8, [r5, #2]
ffff1790:	e3a09000 	mov	r9, #0
ffff1794:	e5947024 	ldr	r7, [r4, #36]	; 0x24
ffff1798:	e597600c 	ldr	r6, [r7, #12]
ffff179c:	e5d50001 	ldrb	r0, [r5, #1]
ffff17a0:	e3500006 	cmp	r0, #6
ffff17a4:	0a000002 	beq	0xffff17b4
ffff17a8:	e35000fe 	cmp	r0, #254	; 0xfe
ffff17ac:	1a000046 	bne	0xffff18cc
ffff17b0:	ea00003e 	b	0xffff18b0
ffff17b4:	e320f000 	nop	{0}
ffff17b8:	e5d50000 	ldrb	r0, [r5]
ffff17bc:	e3500080 	cmp	r0, #128	; 0x80
ffff17c0:	0a000000 	beq	0xffff17c8
ffff17c4:	ea000042 	b	0xffff18d4
ffff17c8:	e1a00448 	asr	r0, r8, #8
ffff17cc:	e3500001 	cmp	r0, #1
ffff17d0:	0a000004 	beq	0xffff17e8
ffff17d4:	e3500002 	cmp	r0, #2
ffff17d8:	0a000011 	beq	0xffff1824
ffff17dc:	e3500003 	cmp	r0, #3
ffff17e0:	1a000030 	bne	0xffff18a8
ffff17e4:	ea00001f 	b	0xffff1868
ffff17e8:	e320f000 	nop	{0}
ffff17ec:	e1d500b6 	ldrh	r0, [r5, #6]
ffff17f0:	e3500012 	cmp	r0, #18
ffff17f4:	9a000001 	bls	0xffff1800
ffff17f8:	e3a09012 	mov	r9, #18
ffff17fc:	ea000000 	b	0xffff1804
ffff1800:	e1d590b6 	ldrh	r9, [r5, #6]
ffff1804:	e5941000 	ldr	r1, [r4]
ffff1808:	e1a02009 	mov	r2, r9
ffff180c:	e5960000 	ldr	r0, [r6]
ffff1810:	ebfffa4d 	bl	0xffff014c
ffff1814:	e5869004 	str	r9, [r6, #4]
ffff1818:	e3a00000 	mov	r0, #0
ffff181c:	e5c60008 	strb	r0, [r6, #8]
ffff1820:	ea000020 	b	0xffff18a8
ffff1824:	e320f000 	nop	{0}
ffff1828:	e20830ff 	and	r3, r8, #255	; 0xff
ffff182c:	e1a02448 	asr	r2, r8, #8
ffff1830:	e1a00004 	mov	r0, r4
ffff1834:	e5961000 	ldr	r1, [r6]
ffff1838:	ebffff97 	bl	0xffff169c
ffff183c:	e1a09000 	mov	r9, r0
ffff1840:	e1d500b6 	ldrh	r0, [r5, #6]
ffff1844:	e1500009 	cmp	r0, r9
ffff1848:	ba000001 	blt	0xffff1854
ffff184c:	e5869004 	str	r9, [r6, #4]
ffff1850:	ea000001 	b	0xffff185c
ffff1854:	e1d500b6 	ldrh	r0, [r5, #6]
ffff1858:	e5860004 	str	r0, [r6, #4]
ffff185c:	e3a00000 	mov	r0, #0
ffff1860:	e5c60008 	strb	r0, [r6, #8]
ffff1864:	ea00000f 	b	0xffff18a8
ffff1868:	e320f000 	nop	{0}
ffff186c:	e20800ff 	and	r0, r8, #255	; 0xff
ffff1870:	e3500000 	cmp	r0, #0
ffff1874:	1a000009 	bne	0xffff18a0
ffff1878:	e5961000 	ldr	r1, [r6]
ffff187c:	e3a02004 	mov	r2, #4
ffff1880:	e5c12000 	strb	r2, [r1]
ffff1884:	e3a02003 	mov	r2, #3
ffff1888:	e5c12001 	strb	r2, [r1, #1]
ffff188c:	e3a02009 	mov	r2, #9
ffff1890:	e5c12002 	strb	r2, [r1, #2]
ffff1894:	e3a02004 	mov	r2, #4
ffff1898:	e5c12003 	strb	r2, [r1, #3]
ffff189c:	ea000001 	b	0xffff18a8
ffff18a0:	e320f000 	nop	{0}
ffff18a4:	e320f000 	nop	{0}
ffff18a8:	e320f000 	nop	{0}
ffff18ac:	ea000008 	b	0xffff18d4
ffff18b0:	e320f000 	nop	{0}
ffff18b4:	e5960000 	ldr	r0, [r6]
ffff18b8:	e3a01001 	mov	r1, #1
ffff18bc:	e5861004 	str	r1, [r6, #4]
ffff18c0:	e3a01000 	mov	r1, #0
ffff18c4:	e5c01000 	strb	r1, [r0]
ffff18c8:	ea000001 	b	0xffff18d4
ffff18cc:	e320f000 	nop	{0}
ffff18d0:	e320f000 	nop	{0}
ffff18d4:	e320f000 	nop	{0}
ffff18d8:	e3a02001 	mov	r2, #1
ffff18dc:	e1a01006 	mov	r1, r6
ffff18e0:	e1a00004 	mov	r0, r4
ffff18e4:	ebffff3f 	bl	0xffff15e8
ffff18e8:	e3a00000 	mov	r0, #0
ffff18ec:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff18f0:	e92d47fc 	push	{r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
ffff18f4:	e1a04000 	mov	r4, r0
ffff18f8:	e3a06000 	mov	r6, #0
ffff18fc:	e3a07000 	mov	r7, #0
ffff1900:	e5946024 	ldr	r6, [r4, #36]	; 0x24
ffff1904:	e596700c 	ldr	r7, [r6, #12]
ffff1908:	e5d60004 	ldrb	r0, [r6, #4]
ffff190c:	ebfffc15 	bl	0xffff0968
ffff1910:	e51f01cc 	ldr	r0, [pc, #-460]	; 0xffff174c
ffff1914:	e1d058b2 	ldrh	r5, [r0, #130]	; 0x82
ffff1918:	e3150004 	tst	r5, #4
ffff191c:	0a000005 	beq	0xffff1938
ffff1920:	e3a00000 	mov	r0, #0
ffff1924:	e51f11e0 	ldr	r1, [pc, #-480]	; 0xffff174c
ffff1928:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff192c:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1930:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1934:	e8bd87fc 	pop	{r2, r3, r4, r5, r6, r7, r8, r9, sl, pc}
ffff1938:	e3150010 	tst	r5, #16
ffff193c:	0a000007 	beq	0xffff1960
ffff1940:	e51f01fc 	ldr	r0, [pc, #-508]	; 0xffff174c
ffff1944:	e1d008b2 	ldrh	r0, [r0, #130]	; 0x82
ffff1948:	e3c00010 	bic	r0, r0, #16
ffff194c:	e51f1208 	ldr	r1, [pc, #-520]	; 0xffff174c
ffff1950:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1954:	e3a00000 	mov	r0, #0
ffff1958:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff195c:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1960:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1964:	e5900030 	ldr	r0, [r0, #48]	; 0x30
ffff1968:	e3500005 	cmp	r0, #5
ffff196c:	308ff100 	addcc	pc, pc, r0, lsl #2
ffff1970:	ea00009c 	b	0xffff1be8
ffff1974:	ea000003 	b	0xffff1988
ffff1978:	ea000066 	b	0xffff1b18
ffff197c:	ea00006f 	b	0xffff1b40
ffff1980:	ea000078 	b	0xffff1b68
ffff1984:	ea000092 	b	0xffff1bd4
ffff1988:	e320f000 	nop	{0}
ffff198c:	e3150001 	tst	r5, #1
ffff1990:	0a00005f 	beq	0xffff1b14
ffff1994:	e1a0000d 	mov	r0, sp
ffff1998:	ebffff20 	bl	0xffff1620
ffff199c:	e1a08000 	mov	r8, r0
ffff19a0:	e3580008 	cmp	r8, #8
ffff19a4:	0a000003 	beq	0xffff19b8
ffff19a8:	e3a00060 	mov	r0, #96	; 0x60
ffff19ac:	e51f1268 	ldr	r1, [pc, #-616]	; 0xffff174c
ffff19b0:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff19b4:	eaffffde 	b	0xffff1934
ffff19b8:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff19bc:	e281003e 	add	r0, r1, #62	; 0x3e
ffff19c0:	e3a02008 	mov	r2, #8
ffff19c4:	e1a0100d 	mov	r1, sp
ffff19c8:	eb0002c2 	bl	0xffff24d8
ffff19cc:	e3a00001 	mov	r0, #1
ffff19d0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff19d4:	e5c1003d 	strb	r0, [r1, #61]	; 0x3d
ffff19d8:	e5dd0001 	ldrb	r0, [sp, #1]
ffff19dc:	e3500005 	cmp	r0, #5
ffff19e0:	0a000014 	beq	0xffff1a38
ffff19e4:	e3500009 	cmp	r0, #9
ffff19e8:	0a000002 	beq	0xffff19f8
ffff19ec:	e350000b 	cmp	r0, #11
ffff19f0:	1a000020 	bne	0xffff1a78
ffff19f4:	ea000009 	b	0xffff1a20
ffff19f8:	e320f000 	nop	{0}
ffff19fc:	e5dd0000 	ldrb	r0, [sp]
ffff1a00:	e3500000 	cmp	r0, #0
ffff1a04:	1a000004 	bne	0xffff1a1c
ffff1a08:	e320f000 	nop	{0}
ffff1a0c:	e3a00048 	mov	r0, #72	; 0x48
ffff1a10:	e51f12cc 	ldr	r1, [pc, #-716]	; 0xffff174c
ffff1a14:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1a18:	eaffffc5 	b	0xffff1934
ffff1a1c:	ea00001a 	b	0xffff1a8c
ffff1a20:	e320f000 	nop	{0}
ffff1a24:	e5dd0000 	ldrb	r0, [sp]
ffff1a28:	e3500001 	cmp	r0, #1
ffff1a2c:	1a000000 	bne	0xffff1a34
ffff1a30:	eafffff5 	b	0xffff1a0c
ffff1a34:	ea000014 	b	0xffff1a8c
ffff1a38:	e320f000 	nop	{0}
ffff1a3c:	e5dd0000 	ldrb	r0, [sp]
ffff1a40:	e3500000 	cmp	r0, #0
ffff1a44:	1a00000a 	bne	0xffff1a74
ffff1a48:	e1dd00b2 	ldrh	r0, [sp, #2]
ffff1a4c:	e200907f 	and	r9, r0, #127	; 0x7f
ffff1a50:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1a54:	e5c0903c 	strb	r9, [r0, #60]	; 0x3c
ffff1a58:	e3a0004a 	mov	r0, #74	; 0x4a
ffff1a5c:	e51f1318 	ldr	r1, [pc, #-792]	; 0xffff174c
ffff1a60:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1a64:	e3a00003 	mov	r0, #3
ffff1a68:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1a6c:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1a70:	eaffffaf 	b	0xffff1934
ffff1a74:	ea000004 	b	0xffff1a8c
ffff1a78:	e320f000 	nop	{0}
ffff1a7c:	e3a00040 	mov	r0, #64	; 0x40
ffff1a80:	e51f133c 	ldr	r1, [pc, #-828]	; 0xffff174c
ffff1a84:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1a88:	e320f000 	nop	{0}
ffff1a8c:	e320f000 	nop	{0}
ffff1a90:	e5dd0000 	ldrb	r0, [sp]
ffff1a94:	e3100080 	tst	r0, #128	; 0x80
ffff1a98:	0a000003 	beq	0xffff1aac
ffff1a9c:	e3a00001 	mov	r0, #1
ffff1aa0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1aa4:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1aa8:	ea000002 	b	0xffff1ab8
ffff1aac:	e3a00002 	mov	r0, #2
ffff1ab0:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1ab4:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1ab8:	e1a0100d 	mov	r1, sp
ffff1abc:	e1a00004 	mov	r0, r4
ffff1ac0:	ebffff2c 	bl	0xffff1778
ffff1ac4:	e1a0a000 	mov	sl, r0
ffff1ac8:	e35a0000 	cmp	sl, #0
ffff1acc:	aa000008 	bge	0xffff1af4
ffff1ad0:	e3a00060 	mov	r0, #96	; 0x60
ffff1ad4:	e51f1390 	ldr	r1, [pc, #-912]	; 0xffff174c
ffff1ad8:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1adc:	e3a00048 	mov	r0, #72	; 0x48
ffff1ae0:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1ae4:	e3a00000 	mov	r0, #0
ffff1ae8:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1aec:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1af0:	ea000006 	b	0xffff1b10
ffff1af4:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1af8:	e5d0003d 	ldrb	r0, [r0, #61]	; 0x3d
ffff1afc:	e3500000 	cmp	r0, #0
ffff1b00:	0a000002 	beq	0xffff1b10
ffff1b04:	e3a00000 	mov	r0, #0
ffff1b08:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1b0c:	e5c1003d 	strb	r0, [r1, #61]	; 0x3d
ffff1b10:	e320f000 	nop	{0}
ffff1b14:	ea000035 	b	0xffff1bf0
ffff1b18:	e320f000 	nop	{0}
ffff1b1c:	e3150002 	tst	r5, #2
ffff1b20:	1a000005 	bne	0xffff1b3c
ffff1b24:	e3570000 	cmp	r7, #0
ffff1b28:	0a000003 	beq	0xffff1b3c
ffff1b2c:	e1a02007 	mov	r2, r7
ffff1b30:	e1a01006 	mov	r1, r6
ffff1b34:	e1a00004 	mov	r0, r4
ffff1b38:	ebfffd5d 	bl	0xffff10b4
ffff1b3c:	ea00002b 	b	0xffff1bf0
ffff1b40:	e320f000 	nop	{0}
ffff1b44:	e3150001 	tst	r5, #1
ffff1b48:	0a000005 	beq	0xffff1b64
ffff1b4c:	e3570000 	cmp	r7, #0
ffff1b50:	0a000003 	beq	0xffff1b64
ffff1b54:	e1a02007 	mov	r2, r7
ffff1b58:	e1a01006 	mov	r1, r6
ffff1b5c:	e1a00004 	mov	r0, r4
ffff1b60:	ebfffdb3 	bl	0xffff1234
ffff1b64:	ea000021 	b	0xffff1bf0
ffff1b68:	e320f000 	nop	{0}
ffff1b6c:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1b70:	e5d0003f 	ldrb	r0, [r0, #63]	; 0x3f
ffff1b74:	e3500005 	cmp	r0, #5
ffff1b78:	1a00000e 	bne	0xffff1bb8
ffff1b7c:	e3a000c0 	mov	r0, #192	; 0xc0
ffff1b80:	e51f143c 	ldr	r1, [pc, #-1084]	; 0xffff174c
ffff1b84:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1b88:	e3a08000 	mov	r8, #0
ffff1b8c:	ebfffb78 	bl	0xffff0974
ffff1b90:	e1a08000 	mov	r8, r0
ffff1b94:	e3a00000 	mov	r0, #0
ffff1b98:	ebfffb72 	bl	0xffff0968
ffff1b9c:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1ba0:	e5d0003c 	ldrb	r0, [r0, #60]	; 0x3c
ffff1ba4:	e51f1460 	ldr	r1, [pc, #-1120]	; 0xffff174c
ffff1ba8:	e5c10098 	strb	r0, [r1, #152]	; 0x98
ffff1bac:	e1a00008 	mov	r0, r8
ffff1bb0:	ebfffb6c 	bl	0xffff0968
ffff1bb4:	ea000001 	b	0xffff1bc0
ffff1bb8:	e320f000 	nop	{0}
ffff1bbc:	e320f000 	nop	{0}
ffff1bc0:	e320f000 	nop	{0}
ffff1bc4:	e3a00000 	mov	r0, #0
ffff1bc8:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1bcc:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1bd0:	ea000006 	b	0xffff1bf0
ffff1bd4:	e320f000 	nop	{0}
ffff1bd8:	e3a00000 	mov	r0, #0
ffff1bdc:	e5941024 	ldr	r1, [r4, #36]	; 0x24
ffff1be0:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1be4:	ea000001 	b	0xffff1bf0
ffff1be8:	e320f000 	nop	{0}
ffff1bec:	e320f000 	nop	{0}
ffff1bf0:	e320f000 	nop	{0}
ffff1bf4:	eaffff4e 	b	0xffff1934
ffff1bf8:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff1bfc:	e1a04000 	mov	r4, r0
ffff1c00:	e1a05001 	mov	r5, r1
ffff1c04:	e3a06000 	mov	r6, #0
ffff1c08:	e3a07000 	mov	r7, #0
ffff1c0c:	e3a08000 	mov	r8, #0
ffff1c10:	e3550000 	cmp	r5, #0
ffff1c14:	1a000000 	bne	0xffff1c1c
ffff1c18:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff1c1c:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff1c20:	e0807205 	add	r7, r0, r5, lsl #4
ffff1c24:	e597600c 	ldr	r6, [r7, #12]
ffff1c28:	e5d70005 	ldrb	r0, [r7, #5]
ffff1c2c:	e2008080 	and	r8, r0, #128	; 0x80
ffff1c30:	e5d70005 	ldrb	r0, [r7, #5]
ffff1c34:	e200a07f 	and	sl, r0, #127	; 0x7f
ffff1c38:	e5d60018 	ldrb	r0, [r6, #24]
ffff1c3c:	e3500001 	cmp	r0, #1
ffff1c40:	0a000000 	beq	0xffff1c48
ffff1c44:	eafffff3 	b	0xffff1c18
ffff1c48:	e3580000 	cmp	r8, #0
ffff1c4c:	0a000013 	beq	0xffff1ca0
ffff1c50:	e5d70004 	ldrb	r0, [r7, #4]
ffff1c54:	ebfffb43 	bl	0xffff0968
ffff1c58:	e51f0514 	ldr	r0, [pc, #-1300]	; 0xffff174c
ffff1c5c:	e1d098b2 	ldrh	r9, [r0, #130]	; 0x82
ffff1c60:	e3190020 	tst	r9, #32
ffff1c64:	0a000004 	beq	0xffff1c7c
ffff1c68:	e51f1524 	ldr	r1, [pc, #-1316]	; 0xffff174c
ffff1c6c:	e1c1a4b2 	strh	sl, [r1, #66]	; 0x42
ffff1c70:	e3a00000 	mov	r0, #0
ffff1c74:	e1c108b2 	strh	r0, [r1, #130]	; 0x82
ffff1c78:	eaffffe6 	b	0xffff1c18
ffff1c7c:	e3190001 	tst	r9, #1
ffff1c80:	1a000025 	bne	0xffff1d1c
ffff1c84:	e3560000 	cmp	r6, #0
ffff1c88:	0a000023 	beq	0xffff1d1c
ffff1c8c:	e1a02006 	mov	r2, r6
ffff1c90:	e1a01007 	mov	r1, r7
ffff1c94:	e1a00004 	mov	r0, r4
ffff1c98:	ebfffd05 	bl	0xffff10b4
ffff1c9c:	ea00001e 	b	0xffff1d1c
ffff1ca0:	e51f155c 	ldr	r1, [pc, #-1372]	; 0xffff174c
ffff1ca4:	e5c1a042 	strb	sl, [r1, #66]	; 0x42
ffff1ca8:	e1a00001 	mov	r0, r1
ffff1cac:	e1d098b6 	ldrh	r9, [r0, #134]	; 0x86
ffff1cb0:	e3190040 	tst	r9, #64	; 0x40
ffff1cb4:	0a000003 	beq	0xffff1cc8
ffff1cb8:	e1c1a4b2 	strh	sl, [r1, #66]	; 0x42
ffff1cbc:	e3a00000 	mov	r0, #0
ffff1cc0:	e1c108b6 	strh	r0, [r1, #134]	; 0x86
ffff1cc4:	eaffffd3 	b	0xffff1c18
ffff1cc8:	e320f000 	nop	{0}
ffff1ccc:	e3190001 	tst	r9, #1
ffff1cd0:	0a000011 	beq	0xffff1d1c
ffff1cd4:	e3560000 	cmp	r6, #0
ffff1cd8:	0a00000f 	beq	0xffff1d1c
ffff1cdc:	e1a02006 	mov	r2, r6
ffff1ce0:	e1a01007 	mov	r1, r7
ffff1ce4:	e1a00004 	mov	r0, r4
ffff1ce8:	ebfffd51 	bl	0xffff1234
ffff1cec:	e5d60018 	ldrb	r0, [r6, #24]
ffff1cf0:	e3500000 	cmp	r0, #0
ffff1cf4:	0a000008 	beq	0xffff1d1c
ffff1cf8:	e51f15b4 	ldr	r1, [pc, #-1460]	; 0xffff174c
ffff1cfc:	e5c1a042 	strb	sl, [r1, #66]	; 0x42
ffff1d00:	e1a00001 	mov	r0, r1
ffff1d04:	e1d098b6 	ldrh	r9, [r0, #134]	; 0x86
ffff1d08:	e3190001 	tst	r9, #1
ffff1d0c:	0a000002 	beq	0xffff1d1c
ffff1d10:	e3560000 	cmp	r6, #0
ffff1d14:	0a000000 	beq	0xffff1d1c
ffff1d18:	eaffffeb 	b	0xffff1ccc
ffff1d1c:	eaffffbd 	b	0xffff1c18
ffff1d20:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
ffff1d24:	e3a04000 	mov	r4, #0
ffff1d28:	e3a05000 	mov	r5, #0
ffff1d2c:	e3a06000 	mov	r6, #0
ffff1d30:	e3a07000 	mov	r7, #0
ffff1d34:	e3a08000 	mov	r8, #0
ffff1d38:	ebfffb0d 	bl	0xffff0974
ffff1d3c:	e1a04000 	mov	r4, r0
ffff1d40:	e51f05e8 	ldr	r0, [pc, #-1512]	; 0xffff1760
ffff1d44:	e5900000 	ldr	r0, [r0]
ffff1d48:	eb000151 	bl	0xffff2294
ffff1d4c:	e1a06000 	mov	r6, r0
ffff1d50:	e51f15f8 	ldr	r1, [pc, #-1528]	; 0xffff1760
ffff1d54:	e5910000 	ldr	r0, [r1]
ffff1d58:	e5901038 	ldr	r1, [r0, #56]	; 0x38
ffff1d5c:	e3510000 	cmp	r1, #0
ffff1d60:	1a000002 	bne	0xffff1d70
ffff1d64:	e51f1620 	ldr	r1, [pc, #-1568]	; 0xffff174c
ffff1d68:	e5d11044 	ldrb	r1, [r1, #68]	; 0x44
ffff1d6c:	e5801038 	str	r1, [r0, #56]	; 0x38
ffff1d70:	e320f000 	nop	{0}
ffff1d74:	e5901038 	ldr	r1, [r0, #56]	; 0x38
ffff1d78:	e1a07001 	mov	r7, r1
ffff1d7c:	e51f1624 	ldr	r1, [pc, #-1572]	; 0xffff1760
ffff1d80:	e5910000 	ldr	r0, [r1]
ffff1d84:	e590103c 	ldr	r1, [r0, #60]	; 0x3c
ffff1d88:	e3510000 	cmp	r1, #0
ffff1d8c:	1a000002 	bne	0xffff1d9c
ffff1d90:	e51f164c 	ldr	r1, [pc, #-1612]	; 0xffff174c
ffff1d94:	e5d11046 	ldrb	r1, [r1, #70]	; 0x46
ffff1d98:	e580103c 	str	r1, [r0, #60]	; 0x3c
ffff1d9c:	e320f000 	nop	{0}
ffff1da0:	e590103c 	ldr	r1, [r0, #60]	; 0x3c
ffff1da4:	e1a08001 	mov	r8, r1
ffff1da8:	e3160004 	tst	r6, #4
ffff1dac:	0a000023 	beq	0xffff1e40
ffff1db0:	e3a00002 	mov	r0, #2
ffff1db4:	e51f165c 	ldr	r1, [pc, #-1628]	; 0xffff1760
ffff1db8:	e5911000 	ldr	r1, [r1]
ffff1dbc:	e5911024 	ldr	r1, [r1, #36]	; 0x24
ffff1dc0:	e5c10034 	strb	r0, [r1, #52]	; 0x34
ffff1dc4:	e3a00000 	mov	r0, #0
ffff1dc8:	e51f1670 	ldr	r1, [pc, #-1648]	; 0xffff1760
ffff1dcc:	e5911000 	ldr	r1, [r1]
ffff1dd0:	e5911024 	ldr	r1, [r1, #36]	; 0x24
ffff1dd4:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1dd8:	e3a01004 	mov	r1, #4
ffff1ddc:	e51f0684 	ldr	r0, [pc, #-1668]	; 0xffff1760
ffff1de0:	e5900000 	ldr	r0, [r0]
ffff1de4:	eb00013b 	bl	0xffff22d8
ffff1de8:	e51f16a4 	ldr	r1, [pc, #-1700]	; 0xffff174c
ffff1dec:	e5c14042 	strb	r4, [r1, #66]	; 0x42
ffff1df0:	ebfffca4 	bl	0xffff1088
ffff1df4:	e51f06b0 	ldr	r0, [pc, #-1712]	; 0xffff174c
ffff1df8:	e5d00048 	ldrb	r0, [r0, #72]	; 0x48
ffff1dfc:	e3800001 	orr	r0, r0, #1
ffff1e00:	e51f16bc 	ldr	r1, [pc, #-1724]	; 0xffff174c
ffff1e04:	e5c10048 	strb	r0, [r1, #72]	; 0x48
ffff1e08:	e51f06b0 	ldr	r0, [pc, #-1712]	; 0xffff1760
ffff1e0c:	e5900000 	ldr	r0, [r0]
ffff1e10:	ebfffc25 	bl	0xffff0eac
ffff1e14:	e3a09000 	mov	r9, #0
ffff1e18:	ebfffad5 	bl	0xffff0974
ffff1e1c:	e1a09000 	mov	r9, r0
ffff1e20:	e3a00000 	mov	r0, #0
ffff1e24:	ebfffacf 	bl	0xffff0968
ffff1e28:	e3a00000 	mov	r0, #0
ffff1e2c:	e51f16e8 	ldr	r1, [pc, #-1768]	; 0xffff174c
ffff1e30:	e5c10098 	strb	r0, [r1, #152]	; 0x98
ffff1e34:	e1a00009 	mov	r0, r9
ffff1e38:	ebfffaca 	bl	0xffff0968
ffff1e3c:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
ffff1e40:	e3160002 	tst	r6, #2
ffff1e44:	0a000003 	beq	0xffff1e58
ffff1e48:	e3a01002 	mov	r1, #2
ffff1e4c:	e51f06f4 	ldr	r0, [pc, #-1780]	; 0xffff1760
ffff1e50:	e5900000 	ldr	r0, [r0]
ffff1e54:	eb00011f 	bl	0xffff22d8
ffff1e58:	e3160001 	tst	r6, #1
ffff1e5c:	0a000008 	beq	0xffff1e84
ffff1e60:	e3a01001 	mov	r1, #1
ffff1e64:	e51f070c 	ldr	r0, [pc, #-1804]	; 0xffff1760
ffff1e68:	e5900000 	ldr	r0, [r0]
ffff1e6c:	eb000119 	bl	0xffff22d8
ffff1e70:	e3a00000 	mov	r0, #0
ffff1e74:	e51f171c 	ldr	r1, [pc, #-1820]	; 0xffff1760
ffff1e78:	e5911000 	ldr	r1, [r1]
ffff1e7c:	e5911024 	ldr	r1, [r1, #36]	; 0x24
ffff1e80:	e5810030 	str	r0, [r1, #48]	; 0x30
ffff1e84:	e3170001 	tst	r7, #1
ffff1e88:	0a000006 	beq	0xffff1ea8
ffff1e8c:	e3a01001 	mov	r1, #1
ffff1e90:	e51f0738 	ldr	r0, [pc, #-1848]	; 0xffff1760
ffff1e94:	e5900000 	ldr	r0, [r0]
ffff1e98:	eb000106 	bl	0xffff22b8
ffff1e9c:	e51f0744 	ldr	r0, [pc, #-1860]	; 0xffff1760
ffff1ea0:	e5900000 	ldr	r0, [r0]
ffff1ea4:	ebfffe91 	bl	0xffff18f0
ffff1ea8:	e3a05001 	mov	r5, #1
ffff1eac:	ea00001b 	b	0xffff1f20
ffff1eb0:	e3a00001 	mov	r0, #1
ffff1eb4:	e1a09510 	lsl	r9, r0, r5
ffff1eb8:	e1170009 	tst	r7, r9
ffff1ebc:	0a000016 	beq	0xffff1f1c
ffff1ec0:	e3a0a000 	mov	sl, #0
ffff1ec4:	e20910ff 	and	r1, r9, #255	; 0xff
ffff1ec8:	e51f0770 	ldr	r0, [pc, #-1904]	; 0xffff1760
ffff1ecc:	e5900000 	ldr	r0, [r0]
ffff1ed0:	eb0000f8 	bl	0xffff22b8
ffff1ed4:	e3a0a001 	mov	sl, #1
ffff1ed8:	ea00000c 	b	0xffff1f10
ffff1edc:	e51f0784 	ldr	r0, [pc, #-1924]	; 0xffff1760
ffff1ee0:	e5900000 	ldr	r0, [r0]
ffff1ee4:	e5900024 	ldr	r0, [r0, #36]	; 0x24
ffff1ee8:	e080020a 	add	r0, r0, sl, lsl #4
ffff1eec:	e5d00005 	ldrb	r0, [r0, #5]
ffff1ef0:	e2000080 	and	r0, r0, #128	; 0x80
ffff1ef4:	e3500080 	cmp	r0, #128	; 0x80
ffff1ef8:	1a000003 	bne	0xffff1f0c
ffff1efc:	e1a0100a 	mov	r1, sl
ffff1f00:	e51f07a8 	ldr	r0, [pc, #-1960]	; 0xffff1760
ffff1f04:	e5900000 	ldr	r0, [r0]
ffff1f08:	ebffff3a 	bl	0xffff1bf8
ffff1f0c:	e28aa001 	add	sl, sl, #1
ffff1f10:	e35a0003 	cmp	sl, #3
ffff1f14:	bafffff0 	blt	0xffff1edc
ffff1f18:	e320f000 	nop	{0}
ffff1f1c:	e2855001 	add	r5, r5, #1
ffff1f20:	e3550005 	cmp	r5, #5
ffff1f24:	daffffe1 	ble	0xffff1eb0
ffff1f28:	e3a05001 	mov	r5, #1
ffff1f2c:	ea000020 	b	0xffff1fb4
ffff1f30:	e3a00001 	mov	r0, #1
ffff1f34:	e1a09510 	lsl	r9, r0, r5
ffff1f38:	e1180009 	tst	r8, r9
ffff1f3c:	0a00001b 	beq	0xffff1fb0
ffff1f40:	e3a00000 	mov	r0, #0
ffff1f44:	e1a0a000 	mov	sl, r0
ffff1f48:	e51f27f0 	ldr	r2, [pc, #-2032]	; 0xffff1760
ffff1f4c:	e20910ff 	and	r1, r9, #255	; 0xff
ffff1f50:	e5920000 	ldr	r0, [r2]
ffff1f54:	e590203c 	ldr	r2, [r0, #60]	; 0x3c
ffff1f58:	e1c22001 	bic	r2, r2, r1
ffff1f5c:	e580203c 	str	r2, [r0, #60]	; 0x3c
ffff1f60:	e51f281c 	ldr	r2, [pc, #-2076]	; 0xffff174c
ffff1f64:	e5c21046 	strb	r1, [r2, #70]	; 0x46
ffff1f68:	e320f000 	nop	{0}
ffff1f6c:	e3a0a001 	mov	sl, #1
ffff1f70:	ea00000b 	b	0xffff1fa4
ffff1f74:	e51f081c 	ldr	r0, [pc, #-2076]	; 0xffff1760
ffff1f78:	e5900000 	ldr	r0, [r0]
ffff1f7c:	e5900024 	ldr	r0, [r0, #36]	; 0x24
ffff1f80:	e080020a 	add	r0, r0, sl, lsl #4
ffff1f84:	e5d00005 	ldrb	r0, [r0, #5]
ffff1f88:	e3100080 	tst	r0, #128	; 0x80
ffff1f8c:	1a000003 	bne	0xffff1fa0
ffff1f90:	e1a0100a 	mov	r1, sl
ffff1f94:	e51f083c 	ldr	r0, [pc, #-2108]	; 0xffff1760
ffff1f98:	e5900000 	ldr	r0, [r0]
ffff1f9c:	ebffff15 	bl	0xffff1bf8
ffff1fa0:	e28aa001 	add	sl, sl, #1
ffff1fa4:	e35a0003 	cmp	sl, #3
ffff1fa8:	bafffff1 	blt	0xffff1f74
ffff1fac:	e320f000 	nop	{0}
ffff1fb0:	e2855001 	add	r5, r5, #1
ffff1fb4:	e3550005 	cmp	r5, #5
ffff1fb8:	daffffdc 	ble	0xffff1f30
ffff1fbc:	ebfffc31 	bl	0xffff1088
ffff1fc0:	e51f187c 	ldr	r1, [pc, #-2172]	; 0xffff174c
ffff1fc4:	e5c14042 	strb	r4, [r1, #66]	; 0x42
ffff1fc8:	e51f1870 	ldr	r1, [pc, #-2160]	; 0xffff1760
ffff1fcc:	e5910000 	ldr	r0, [r1]
ffff1fd0:	e3a01000 	mov	r1, #0
ffff1fd4:	e5801040 	str	r1, [r0, #64]	; 0x40
ffff1fd8:	e5801038 	str	r1, [r0, #56]	; 0x38
ffff1fdc:	e580103c 	str	r1, [r0, #60]	; 0x3c
ffff1fe0:	e320f000 	nop	{0}
ffff1fe4:	eaffff94 	b	0xffff1e3c
ffff1fe8:	e92d4010 	push	{r4, lr}
ffff1fec:	e3a02c01 	mov	r2, #256	; 0x100
ffff1ff0:	e3a010cc 	mov	r1, #204	; 0xcc
ffff1ff4:	e3a00c7e 	mov	r0, #32256	; 0x7e00
ffff1ff8:	ebfff85d 	bl	0xffff0174
ffff1ffc:	e8bd8010 	pop	{r4, pc}
ffff2000:	e92d4010 	push	{r4, lr}
ffff2004:	e24ddd47 	sub	sp, sp, #4544	; 0x11c0
ffff2008:	ebfffff6 	bl	0xffff1fe8
ffff200c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2010:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff2014:	e51f18bc 	ldr	r1, [pc, #-2236]	; 0xffff1760
ffff2018:	e5810000 	str	r0, [r1]
ffff201c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2020:	e2800f5a 	add	r0, r0, #360	; 0x168
ffff2024:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2028:	e58c017c 	str	r0, [ip, #380]	; 0x17c
ffff202c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2030:	e2800f57 	add	r0, r0, #348	; 0x15c
ffff2034:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2038:	e58c0180 	str	r0, [ip, #384]	; 0x180
ffff203c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2040:	e2800e15 	add	r0, r0, #336	; 0x150
ffff2044:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2048:	e58c0184 	str	r0, [ip, #388]	; 0x184
ffff204c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2050:	e2800f52 	add	r0, r0, #328	; 0x148
ffff2054:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2058:	e58c0188 	str	r0, [ip, #392]	; 0x188
ffff205c:	e28d0d45 	add	r0, sp, #4416	; 0x1140
ffff2060:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2064:	e58c018c 	str	r0, [ip, #396]	; 0x18c
ffff2068:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff206c:	e2800f4e 	add	r0, r0, #312	; 0x138
ffff2070:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2074:	e58c0190 	str	r0, [ip, #400]	; 0x190
ffff2078:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff207c:	e2800e13 	add	r0, r0, #304	; 0x130
ffff2080:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2084:	e58c0194 	str	r0, [ip, #404]	; 0x194
ffff2088:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff208c:	e2800f4a 	add	r0, r0, #296	; 0x128
ffff2090:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff2094:	e58c0198 	str	r0, [ip, #408]	; 0x198
ffff2098:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff209c:	e2800e12 	add	r0, r0, #288	; 0x120
ffff20a0:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20a4:	e58c019c 	str	r0, [ip, #412]	; 0x19c
ffff20a8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20ac:	e28000d8 	add	r0, r0, #216	; 0xd8
ffff20b0:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20b4:	e58c01a0 	str	r0, [ip, #416]	; 0x1a0
ffff20b8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20bc:	e28000bc 	add	r0, r0, #188	; 0xbc
ffff20c0:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20c4:	e58c01a4 	str	r0, [ip, #420]	; 0x1a4
ffff20c8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20cc:	e28000a0 	add	r0, r0, #160	; 0xa0
ffff20d0:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20d4:	e58c01a8 	str	r0, [ip, #424]	; 0x1a8
ffff20d8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20dc:	e2800084 	add	r0, r0, #132	; 0x84
ffff20e0:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20e4:	e58c01ac 	str	r0, [ip, #428]	; 0x1ac
ffff20e8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20ec:	e2800068 	add	r0, r0, #104	; 0x68
ffff20f0:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff20f4:	e58c01b0 	str	r0, [ip, #432]	; 0x1b0
ffff20f8:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff20fc:	e2800f6d 	add	r0, r0, #436	; 0x1b4
ffff2100:	ebfffd41 	bl	0xffff160c
ffff2104:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2108:	e2800f5a 	add	r0, r0, #360	; 0x168
ffff210c:	ebfffa1b 	bl	0xffff0980
ffff2110:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2114:	e2800f57 	add	r0, r0, #348	; 0x15c
ffff2118:	ebfffa31 	bl	0xffff09e4
ffff211c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2120:	e2800e15 	add	r0, r0, #336	; 0x150
ffff2124:	ebfffa3e 	bl	0xffff0a24
ffff2128:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff212c:	e2800f52 	add	r0, r0, #328	; 0x148
ffff2130:	ebfffa4b 	bl	0xffff0a64
ffff2134:	e28d0d45 	add	r0, sp, #4416	; 0x1140
ffff2138:	ebfffa56 	bl	0xffff0a98
ffff213c:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff2140:	e2822f52 	add	r2, r2, #328	; 0x148
ffff2144:	e28d1d45 	add	r1, sp, #4416	; 0x1140
ffff2148:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff214c:	e2800f4e 	add	r0, r0, #312	; 0x138
ffff2150:	ebfffa5d 	bl	0xffff0acc
ffff2154:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2158:	e2800e13 	add	r0, r0, #304	; 0x130
ffff215c:	ebfffa5d 	bl	0xffff0ad8
ffff2160:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2164:	e2800f4a 	add	r0, r0, #296	; 0x128
ffff2168:	ebfffa5b 	bl	0xffff0adc
ffff216c:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff2170:	e2822e13 	add	r2, r2, #304	; 0x130
ffff2174:	e28d1a01 	add	r1, sp, #4096	; 0x1000
ffff2178:	e2811f4a 	add	r1, r1, #296	; 0x128
ffff217c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2180:	e2800e12 	add	r0, r0, #288	; 0x120
ffff2184:	ebfffa55 	bl	0xffff0ae0
ffff2188:	e28d2d45 	add	r2, sp, #4416	; 0x1140
ffff218c:	e28d1a01 	add	r1, sp, #4096	; 0x1000
ffff2190:	e2811f52 	add	r1, r1, #328	; 0x148
ffff2194:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2198:	e28000d8 	add	r0, r0, #216	; 0xd8
ffff219c:	ebfffa50 	bl	0xffff0ae4
ffff21a0:	e28d3a01 	add	r3, sp, #4096	; 0x1000
ffff21a4:	e2833084 	add	r3, r3, #132	; 0x84
ffff21a8:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff21ac:	e2822068 	add	r2, r2, #104	; 0x68
ffff21b0:	e28d1068 	add	r1, sp, #104	; 0x68
ffff21b4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21b8:	e28000bc 	add	r0, r0, #188	; 0xbc
ffff21bc:	ebfffa6e 	bl	0xffff0b7c
ffff21c0:	e28d1024 	add	r1, sp, #36	; 0x24
ffff21c4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21c8:	e28000a0 	add	r0, r0, #160	; 0xa0
ffff21cc:	ebfffa74 	bl	0xffff0ba4
ffff21d0:	e28d1068 	add	r1, sp, #104	; 0x68
ffff21d4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21d8:	e2800084 	add	r0, r0, #132	; 0x84
ffff21dc:	ebfffa87 	bl	0xffff0c00
ffff21e0:	e28d1068 	add	r1, sp, #104	; 0x68
ffff21e4:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff21e8:	e2800068 	add	r0, r0, #104	; 0x68
ffff21ec:	ebfffa77 	bl	0xffff0bd0
ffff21f0:	e28dca01 	add	ip, sp, #4096	; 0x1000
ffff21f4:	e28d3a01 	add	r3, sp, #4096	; 0x1000
ffff21f8:	e2833084 	add	r3, r3, #132	; 0x84
ffff21fc:	e28d2a01 	add	r2, sp, #4096	; 0x1000
ffff2200:	e2822068 	add	r2, r2, #104	; 0x68
ffff2204:	e28d1a01 	add	r1, sp, #4096	; 0x1000
ffff2208:	e28110a0 	add	r1, r1, #160	; 0xa0
ffff220c:	e59c01a0 	ldr	r0, [ip, #416]	; 0x1a0
ffff2210:	ebfffa86 	bl	0xffff0c30
ffff2214:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2218:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff221c:	ebfff9c7 	bl	0xffff0940
ffff2220:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2224:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff2228:	ebfffb55 	bl	0xffff0f84
ffff222c:	e28d0a01 	add	r0, sp, #4096	; 0x1000
ffff2230:	e2800f5f 	add	r0, r0, #380	; 0x17c
ffff2234:	ebfff9a9 	bl	0xffff08e0
ffff2238:	e28ddd47 	add	sp, sp, #4544	; 0x11c0
ffff223c:	e8bd8010 	pop	{r4, pc}
ffff2240:	e92d4070 	push	{r4, r5, r6, lr}
ffff2244:	e1a04000 	mov	r4, r0
ffff2248:	e3a05000 	mov	r5, #0
ffff224c:	e3046e20 	movw	r6, #20000	; 0x4e20
ffff2250:	e5940024 	ldr	r0, [r4, #36]	; 0x24
ffff2254:	e2805020 	add	r5, r0, #32
ffff2258:	e5d50004 	ldrb	r0, [r5, #4]
ffff225c:	ebfff9c1 	bl	0xffff0968
ffff2260:	ea00000a 	b	0xffff2290
ffff2264:	e51f0b20 	ldr	r0, [pc, #-2848]	; 0xffff174c
ffff2268:	e1d008b2 	ldrh	r0, [r0, #130]	; 0x82
ffff226c:	e3100001 	tst	r0, #1
ffff2270:	1a000001 	bne	0xffff227c
ffff2274:	e3a00001 	mov	r0, #1
ffff2278:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff227c:	e3560000 	cmp	r6, #0
ffff2280:	1a000001 	bne	0xffff228c
ffff2284:	e3a00002 	mov	r0, #2
ffff2288:	eafffffa 	b	0xffff2278
ffff228c:	e2466001 	sub	r6, r6, #1
ffff2290:	eafffff3 	b	0xffff2264
ffff2294:	e1a01000 	mov	r1, r0
ffff2298:	e5910040 	ldr	r0, [r1, #64]	; 0x40
ffff229c:	e3500000 	cmp	r0, #0
ffff22a0:	1a000002 	bne	0xffff22b0
ffff22a4:	e51f0b60 	ldr	r0, [pc, #-2912]	; 0xffff174c
ffff22a8:	e5d0004c 	ldrb	r0, [r0, #76]	; 0x4c
ffff22ac:	e5810040 	str	r0, [r1, #64]	; 0x40
ffff22b0:	e5910040 	ldr	r0, [r1, #64]	; 0x40
ffff22b4:	e12fff1e 	bx	lr
ffff22b8:	e1a02000 	mov	r2, r0
ffff22bc:	e5920038 	ldr	r0, [r2, #56]	; 0x38
ffff22c0:	e1c00001 	bic	r0, r0, r1
ffff22c4:	e5820038 	str	r0, [r2, #56]	; 0x38
ffff22c8:	e51f0b84 	ldr	r0, [pc, #-2948]	; 0xffff174c
ffff22cc:	e5c01044 	strb	r1, [r0, #68]	; 0x44
ffff22d0:	e3a00000 	mov	r0, #0
ffff22d4:	e12fff1e 	bx	lr
ffff22d8:	e1a02000 	mov	r2, r0
ffff22dc:	e5920040 	ldr	r0, [r2, #64]	; 0x40
ffff22e0:	e1c00001 	bic	r0, r0, r1
ffff22e4:	e5820040 	str	r0, [r2, #64]	; 0x40
ffff22e8:	e51f0ba4 	ldr	r0, [pc, #-2980]	; 0xffff174c
ffff22ec:	e5c0104c 	strb	r1, [r0, #76]	; 0x4c
ffff22f0:	e3a00000 	mov	r0, #0
ffff22f4:	e12fff1e 	bx	lr
ffff22f8:	e92d4070 	push	{r4, r5, r6, lr}
ffff22fc:	e1a03000 	mov	r3, r0
ffff2300:	e3a00000 	mov	r0, #0
ffff2304:	e5915000 	ldr	r5, [r1]
ffff2308:	e5916010 	ldr	r6, [r1, #16]
ffff230c:	e0854006 	add	r4, r5, r6
ffff2310:	e5915004 	ldr	r5, [r1, #4]
ffff2314:	e5916010 	ldr	r6, [r1, #16]
ffff2318:	e0455006 	sub	r5, r5, r6
ffff231c:	e1550002 	cmp	r5, r2
ffff2320:	2a000003 	bcs	0xffff2334
ffff2324:	e5915004 	ldr	r5, [r1, #4]
ffff2328:	e5916010 	ldr	r6, [r1, #16]
ffff232c:	e0455006 	sub	r5, r5, r6
ffff2330:	ea000000 	b	0xffff2338
ffff2334:	e1a05002 	mov	r5, r2
ffff2338:	e1a00005 	mov	r0, r5
ffff233c:	e5915010 	ldr	r5, [r1, #16]
ffff2340:	e0855000 	add	r5, r5, r0
ffff2344:	e5815010 	str	r5, [r1, #16]
ffff2348:	e1a02000 	mov	r2, r0
ffff234c:	ea000001 	b	0xffff2358
ffff2350:	e4d45001 	ldrb	r5, [r4], #1
ffff2354:	e5c35000 	strb	r5, [r3]
ffff2358:	e1b05002 	movs	r5, r2
ffff235c:	e2422001 	sub	r2, r2, #1
ffff2360:	1afffffa 	bne	0xffff2350
ffff2364:	e8bd8070 	pop	{r4, r5, r6, pc}
ffff2368:	e92d40f0 	push	{r4, r5, r6, r7, lr}
ffff236c:	e1a04000 	mov	r4, r0
ffff2370:	e3a06000 	mov	r6, #0
ffff2374:	e5925004 	ldr	r5, [r2, #4]
ffff2378:	e5927010 	ldr	r7, [r2, #16]
ffff237c:	e0455007 	sub	r5, r5, r7
ffff2380:	e1550003 	cmp	r5, r3
ffff2384:	2a000003 	bcs	0xffff2398
ffff2388:	e5925004 	ldr	r5, [r2, #4]
ffff238c:	e5927010 	ldr	r7, [r2, #16]
ffff2390:	e0455007 	sub	r5, r5, r7
ffff2394:	ea000000 	b	0xffff239c
ffff2398:	e1a05003 	mov	r5, r3
ffff239c:	e1a00005 	mov	r0, r5
ffff23a0:	e5925010 	ldr	r5, [r2, #16]
ffff23a4:	e0855000 	add	r5, r5, r0
ffff23a8:	e5825010 	str	r5, [r2, #16]
ffff23ac:	e1a03000 	mov	r3, r0
ffff23b0:	e1a00003 	mov	r0, r3
ffff23b4:	e3530004 	cmp	r3, #4
ffff23b8:	9a00000a 	bls	0xffff23e8
ffff23bc:	ea000005 	b	0xffff23d8
ffff23c0:	e5d45000 	ldrb	r5, [r4]
ffff23c4:	e5c15000 	strb	r5, [r1]
ffff23c8:	e3560008 	cmp	r6, #8
ffff23cc:	2a000000 	bcs	0xffff23d4
ffff23d0:	e2866001 	add	r6, r6, #1
ffff23d4:	e2811001 	add	r1, r1, #1
ffff23d8:	e1b05003 	movs	r5, r3
ffff23dc:	e2433001 	sub	r3, r3, #1
ffff23e0:	1afffff6 	bne	0xffff23c0
ffff23e4:	ea000013 	b	0xffff2438
ffff23e8:	e1a05001 	mov	r5, r1
ffff23ec:	e1a07001 	mov	r7, r1
ffff23f0:	e3530004 	cmp	r3, #4
ffff23f4:	1a000002 	bne	0xffff2404
ffff23f8:	e594c000 	ldr	ip, [r4]
ffff23fc:	e585c000 	str	ip, [r5]
ffff2400:	ea00000b 	b	0xffff2434
ffff2404:	e3530002 	cmp	r3, #2
ffff2408:	1a000002 	bne	0xffff2418
ffff240c:	e1d4c0b0 	ldrh	ip, [r4]
ffff2410:	e1c7c0b0 	strh	ip, [r7]
ffff2414:	ea000006 	b	0xffff2434
ffff2418:	ea000002 	b	0xffff2428
ffff241c:	e5d4c000 	ldrb	ip, [r4]
ffff2420:	e5c1c000 	strb	ip, [r1]
ffff2424:	e2811001 	add	r1, r1, #1
ffff2428:	e1b0c003 	movs	ip, r3
ffff242c:	e2433001 	sub	r3, r3, #1
ffff2430:	1afffff9 	bne	0xffff241c
ffff2434:	e320f000 	nop	{0}
ffff2438:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}
ffff243c:	e92d4030 	push	{r4, r5, lr}
ffff2440:	e3a03000 	mov	r3, #0
ffff2444:	e3a01000 	mov	r1, #0
ffff2448:	e3a02000 	mov	r2, #0
ffff244c:	e1a03a20 	lsr	r3, r0, #20
ffff2450:	e3a05902 	mov	r5, #32768	; 0x8000
ffff2454:	e0852103 	add	r2, r5, r3, lsl #2
ffff2458:	e5921000 	ldr	r1, [r2]
ffff245c:	e307400c 	movw	r4, #28684	; 0x700c
ffff2460:	e1c11004 	bic	r1, r1, r4
ffff2464:	e3811a01 	orr	r1, r1, #4096	; 0x1000
ffff2468:	e5821000 	str	r1, [r2]
ffff246c:	e8bd8030 	pop	{r4, r5, pc}
ffff2470:	e3a00000 	mov	r0, #0
ffff2474:	e3a02902 	mov	r2, #32768	; 0x8000
ffff2478:	e3a01000 	mov	r1, #0
ffff247c:	e320f000 	nop	{0}
ffff2480:	ea000006 	b	0xffff24a0
ffff2484:	e3a01000 	mov	r1, #0
ffff2488:	e1811a00 	orr	r1, r1, r0, lsl #20
ffff248c:	e3003de2 	movw	r3, #3554	; 0xde2
ffff2490:	e1811003 	orr	r1, r1, r3
ffff2494:	e5821000 	str	r1, [r2]
ffff2498:	e2822004 	add	r2, r2, #4
ffff249c:	e2800001 	add	r0, r0, #1
ffff24a0:	e3500a01 	cmp	r0, #4096	; 0x1000
ffff24a4:	3afffff6 	bcc	0xffff2484
ffff24a8:	e12fff1e 	bx	lr
ffff24ac:	e92d4010 	push	{r4, lr}
ffff24b0:	e3a00000 	mov	r0, #0
ffff24b4:	ebffffe0 	bl	0xffff243c
ffff24b8:	e59f0014 	ldr	r0, [pc, #20]	; 0xffff24d4
ffff24bc:	ebffffde 	bl	0xffff243c
ffff24c0:	e8bd8010 	pop	{r4, pc}
ffff24c4:	e92d4010 	push	{r4, lr}
ffff24c8:	ebffffe8 	bl	0xffff2470
ffff24cc:	ebfffff6 	bl	0xffff24ac
ffff24d0:	e8bd8010 	pop	{r4, pc}
ffff24d4:	fff00000 			; <UNDEFINED> instruction: 0xfff00000	; IMB
ffff24d8:	e3520003 	cmp	r2, #3
ffff24dc:	9a000017 	bls	0xffff2540
ffff24e0:	e210c003 	ands	ip, r0, #3
ffff24e4:	0a000008 	beq	0xffff250c
ffff24e8:	e4d13001 	ldrb	r3, [r1], #1
ffff24ec:	e35c0002 	cmp	ip, #2
ffff24f0:	e082200c 	add	r2, r2, ip
ffff24f4:	94d1c001 	ldrbls	ip, [r1], #1
ffff24f8:	e4c03001 	strb	r3, [r0], #1
ffff24fc:	34d13001 	ldrbcc	r3, [r1], #1
ffff2500:	94c0c001 	strbls	ip, [r0], #1
ffff2504:	e2422004 	sub	r2, r2, #4
ffff2508:	34c03001 	strbcc	r3, [r0], #1
ffff250c:	e2113003 	ands	r3, r1, #3
ffff2510:	0a000012 	beq	0xffff2560
ffff2514:	e2522008 	subs	r2, r2, #8
ffff2518:	3a000004 	bcc	0xffff2530
ffff251c:	e4913004 	ldr	r3, [r1], #4
ffff2520:	e491c004 	ldr	ip, [r1], #4
ffff2524:	e4803004 	str	r3, [r0], #4
ffff2528:	e480c004 	str	ip, [r0], #4
ffff252c:	eafffff8 	b	0xffff2514
ffff2530:	e2922004 	adds	r2, r2, #4
ffff2534:	54913004 	ldrpl	r3, [r1], #4
ffff2538:	54803004 	strpl	r3, [r0], #4
ffff253c:	e1a00000 	nop			; (mov r0, r0)
ffff2540:	e1b02f82 	lsls	r2, r2, #31
ffff2544:	24d13001 	ldrbcs	r3, [r1], #1
ffff2548:	24d1c001 	ldrbcs	ip, [r1], #1
ffff254c:	44d12001 	ldrbmi	r2, [r1], #1
ffff2550:	24c03001 	strbcs	r3, [r0], #1
ffff2554:	24c0c001 	strbcs	ip, [r0], #1
ffff2558:	44c02001 	strbmi	r2, [r0], #1
ffff255c:	e12fff1e 	bx	lr
ffff2560:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
ffff2564:	e2522020 	subs	r2, r2, #32
ffff2568:	3a00000d 	bcc	0xffff25a4
ffff256c:	e3520e12 	cmp	r2, #288	; 0x120
ffff2570:	3a000007 	bcc	0xffff2594
ffff2574:	f5d1f100 	pld	[r1, #256]	; 0x100
ffff2578:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff257c:	e2422040 	sub	r2, r2, #64	; 0x40
ffff2580:	e3520e12 	cmp	r2, #288	; 0x120
ffff2584:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff2588:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff258c:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff2590:	2afffff7 	bcs	0xffff2574
ffff2594:	e8b151f8 	ldm	r1!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff2598:	e2522020 	subs	r2, r2, #32
ffff259c:	e8a051f8 	stmia	r0!, {r3, r4, r5, r6, r7, r8, ip, lr}
ffff25a0:	2afffffb 	bcs	0xffff2594
ffff25a4:	e1b0ce02 	lsls	ip, r2, #28
ffff25a8:	28b15018 	ldmcs	r1!, {r3, r4, ip, lr}
ffff25ac:	28a05018 	stmiacs	r0!, {r3, r4, ip, lr}
ffff25b0:	48b10018 	ldmmi	r1!, {r3, r4}
ffff25b4:	48a00018 	stmiami	r0!, {r3, r4}
ffff25b8:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
ffff25bc:	e1b0cf02 	lsls	ip, r2, #30
ffff25c0:	24913004 	ldrcs	r3, [r1], #4
ffff25c4:	24803004 	strcs	r3, [r0], #4
ffff25c8:	012fff1e 	bxeq	lr
ffff25cc:	e1b02f82 	lsls	r2, r2, #31
ffff25d0:	20d130b2 	ldrhcs	r3, [r1], #2
ffff25d4:	44d12001 	ldrbmi	r2, [r1], #1
ffff25d8:	20c030b2 	strhcs	r3, [r0], #2
ffff25dc:	44c02001 	strbmi	r2, [r0], #1
ffff25e0:	e12fff1e 	bx	lr
ffff25e4:	e92d4001 	push	{r0, lr}
ffff25e8:	ebffffff 	bl	0xffff25ec
ffff25ec:	ebffffff 	bl	0xffff25f0
ffff25f0:	ebffffff 	bl	0xffff25f4
ffff25f4:	ebffffff 	bl	0xffff25f8
ffff25f8:	ebffffff 	bl	0xffff25fc
ffff25fc:	ebffffff 	bl	0xffff2600
ffff2600:	ebffffff 	bl	0xffff2604
ffff2604:	ebffffff 	bl	0xffff2608
ffff2608:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff260c:	e3800b02 	orr	r0, r0, #2048	; 0x800
ffff2610:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff2614:	e8bd4001 	pop	{r0, lr}
ffff2618:	e1a0f00e 	mov	pc, lr
ffff261c:	e92d4001 	push	{r0, lr}
ffff2620:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff2624:	e3800a01 	orr	r0, r0, #4096	; 0x1000
ffff2628:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff262c:	e8bd4001 	pop	{r0, lr}
ffff2630:	e1a0f00e 	mov	pc, lr
ffff2634:	e92d4001 	push	{r0, lr}
ffff2638:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff263c:	e3800004 	orr	r0, r0, #4
ffff2640:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff2644:	e8bd4001 	pop	{r0, lr}
ffff2648:	e1a0f00e 	mov	pc, lr
ffff264c:	e92d4001 	push	{r0, lr}
ffff2650:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
ffff2654:	e3800002 	orr	r0, r0, #2
ffff2658:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
ffff265c:	e8bd4001 	pop	{r0, lr}
ffff2660:	e1a0f00e 	mov	pc, lr
ffff2664:	e92d4001 	push	{r0, lr}
ffff2668:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff266c:	e3800001 	orr	r0, r0, #1
ffff2670:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff2674:	e8bd4001 	pop	{r0, lr}
ffff2678:	e1a0f00e 	mov	pc, lr
ffff267c:	e92d4001 	push	{r0, lr}
ffff2680:	ee110f30 	mrc	15, 0, r0, cr1, cr0, {1}
ffff2684:	e3c00002 	bic	r0, r0, #2
ffff2688:	ee010f30 	mcr	15, 0, r0, cr1, cr0, {1}
ffff268c:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff2690:	e3c00001 	bic	r0, r0, #1
ffff2694:	e3c00b02 	bic	r0, r0, #2048	; 0x800
ffff2698:	e3c00a01 	bic	r0, r0, #4096	; 0x1000
ffff269c:	e3c00004 	bic	r0, r0, #4
ffff26a0:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff26a4:	e8bd4001 	pop	{r0, lr}
ffff26a8:	e1a0f00e 	mov	pc, lr
ffff26ac:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff26b0:	ee300f30 	mrc	15, 1, r0, cr0, cr0, {1}
ffff26b4:	e2103407 	ands	r3, r0, #117440512	; 0x7000000
ffff26b8:	e1a03ba3 	lsr	r3, r3, #23
ffff26bc:	0a00001a 	beq	0xffff272c
ffff26c0:	e3a0a000 	mov	sl, #0
ffff26c4:	e08a20aa 	add	r2, sl, sl, lsr #1
ffff26c8:	e1a01230 	lsr	r1, r0, r2
ffff26cc:	e2011007 	and	r1, r1, #7
ffff26d0:	e3510002 	cmp	r1, #2
ffff26d4:	ba000011 	blt	0xffff2720
ffff26d8:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
ffff26dc:	f57ff06f 	isb	sy
ffff26e0:	ee301f10 	mrc	15, 1, r1, cr0, cr0, {0}
ffff26e4:	e2012007 	and	r2, r1, #7
ffff26e8:	e2822004 	add	r2, r2, #4
ffff26ec:	e30043ff 	movw	r4, #1023	; 0x3ff
ffff26f0:	e01441a1 	ands	r4, r4, r1, lsr #3
ffff26f4:	e16f5f14 	clz	r5, r4
ffff26f8:	e3077fff 	movw	r7, #32767	; 0x7fff
ffff26fc:	e01776a1 	ands	r7, r7, r1, lsr #13
ffff2700:	e1a09004 	mov	r9, r4
ffff2704:	e18ab519 	orr	fp, sl, r9, lsl r5
ffff2708:	e18bb217 	orr	fp, fp, r7, lsl r2
ffff270c:	ee07bf5e 	mcr	15, 0, fp, cr7, cr14, {2}
ffff2710:	e2599001 	subs	r9, r9, #1
ffff2714:	aafffffa 	bge	0xffff2704
ffff2718:	e2577001 	subs	r7, r7, #1
ffff271c:	aafffff7 	bge	0xffff2700
ffff2720:	e28aa002 	add	sl, sl, #2
ffff2724:	e153000a 	cmp	r3, sl
ffff2728:	caffffe5 	bgt	0xffff26c4
ffff272c:	e3a0a000 	mov	sl, #0
ffff2730:	ee40af10 	mcr	15, 2, sl, cr0, cr0, {0}
ffff2734:	f57ff06f 	isb	sy
ffff2738:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff273c:	e1a0f00e 	mov	pc, lr
ffff2740:	e92d0003 	push	{r0, r1}
ffff2744:	e3a00000 	mov	r0, #0
ffff2748:	ee070f15 	mcr	15, 0, r0, cr7, cr5, {0}
ffff274c:	e8bd0003 	pop	{r0, r1}
ffff2750:	e1a0f00e 	mov	pc, lr
ffff2754:	e92d4001 	push	{r0, lr}
ffff2758:	ebfffff8 	bl	0xffff2740
ffff275c:	ebffffd2 	bl	0xffff26ac
ffff2760:	e8bd4001 	pop	{r0, lr}
ffff2764:	e1a0f00e 	mov	pc, lr
ffff2768:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff276c:	e3a02040 	mov	r2, #64	; 0x40
ffff2770:	e2423001 	sub	r3, r2, #1
ffff2774:	e1c00003 	bic	r0, r0, r3
ffff2778:	ee070f3b 	mcr	15, 0, r0, cr7, cr11, {1}
ffff277c:	f57ff04f 	dsb	sy
ffff2780:	ee070f35 	mcr	15, 0, r0, cr7, cr5, {1}
ffff2784:	e0800002 	add	r0, r0, r2
ffff2788:	e1500001 	cmp	r0, r1
ffff278c:	3afffff9 	bcc	0xffff2778
ffff2790:	e3a00000 	mov	r0, #0
ffff2794:	ee070fd5 	mcr	15, 0, r0, cr7, cr5, {6}
ffff2798:	f57ff04f 	dsb	sy
ffff279c:	f57ff06f 	isb	sy
ffff27a0:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27a4:	e1a0f00e 	mov	pc, lr
ffff27a8:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27ac:	e3a02040 	mov	r2, #64	; 0x40
ffff27b0:	e2423001 	sub	r3, r2, #1
ffff27b4:	e1c00003 	bic	r0, r0, r3
ffff27b8:	ee070f3e 	mcr	15, 0, r0, cr7, cr14, {1}
ffff27bc:	e0800002 	add	r0, r0, r2
ffff27c0:	e1500001 	cmp	r0, r1
ffff27c4:	3afffffb 	bcc	0xffff27b8
ffff27c8:	f57ff04f 	dsb	sy
ffff27cc:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27d0:	e1a0f00e 	mov	pc, lr
ffff27d4:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27d8:	e3a02040 	mov	r2, #64	; 0x40
ffff27dc:	e2423001 	sub	r3, r2, #1
ffff27e0:	e1c00003 	bic	r0, r0, r3
ffff27e4:	ee070f3a 	mcr	15, 0, r0, cr7, cr10, {1}
ffff27e8:	e0800002 	add	r0, r0, r2
ffff27ec:	e1500001 	cmp	r0, r1
ffff27f0:	3afffffb 	bcc	0xffff27e4
ffff27f4:	f57ff04f 	dsb	sy
ffff27f8:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff27fc:	e1a0f00e 	mov	pc, lr
ffff2800:	e92d5fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff2804:	e3a02040 	mov	r2, #64	; 0x40
ffff2808:	e2423001 	sub	r3, r2, #1
ffff280c:	e1100003 	tst	r0, r3
ffff2810:	e1c00003 	bic	r0, r0, r3
ffff2814:	1e070f3e 	mcrne	15, 0, r0, cr7, cr14, {1}
ffff2818:	e1110003 	tst	r1, r3
ffff281c:	e1c11003 	bic	r1, r1, r3
ffff2820:	1e071f3e 	mcrne	15, 0, r1, cr7, cr14, {1}
ffff2824:	ee070f36 	mcr	15, 0, r0, cr7, cr6, {1}
ffff2828:	e0800002 	add	r0, r0, r2
ffff282c:	e1500001 	cmp	r0, r1
ffff2830:	3afffffb 	bcc	0xffff2824
ffff2834:	f57ff04f 	dsb	sy
ffff2838:	e8bd5fff 	pop	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr}
ffff283c:	e1a0f00e 	mov	pc, lr
ffff2840:	e92d4001 	push	{r0, lr}
ffff2844:	e3a00000 	mov	r0, #0
ffff2848:	ee080f15 	mcr	15, 0, r0, cr8, cr5, {0}
ffff284c:	ee080f16 	mcr	15, 0, r0, cr8, cr6, {0}
ffff2850:	e8bd4001 	pop	{r0, lr}
ffff2854:	e1a0f00e 	mov	pc, lr
ffff2858:	e92d4001 	push	{r0, lr}
ffff285c:	e10f0000 	mrs	r0, CPSR
ffff2860:	e3c01080 	bic	r1, r0, #128	; 0x80
ffff2864:	e121f001 	msr	CPSR_c, r1
ffff2868:	e8bd4001 	pop	{r0, lr}
ffff286c:	e1a0f00e 	mov	pc, lr
ffff2870:	e92d4001 	push	{r0, lr}
ffff2874:	e10f0000 	mrs	r0, CPSR
ffff2878:	e3801080 	orr	r1, r0, #128	; 0x80
ffff287c:	e121f001 	msr	CPSR_c, r1
ffff2880:	e8bd4001 	pop	{r0, lr}
ffff2884:	e1a0f00e 	mov	pc, lr
ffff2888:	e92d4001 	push	{r0, lr}
ffff288c:	e10f0000 	mrs	r0, CPSR
ffff2890:	e3c01040 	bic	r1, r0, #64	; 0x40
ffff2894:	e121f001 	msr	CPSR_c, r1
ffff2898:	e8bd4001 	pop	{r0, lr}
ffff289c:	e1a0f00e 	mov	pc, lr
ffff28a0:	e92d4001 	push	{r0, lr}
ffff28a4:	e10f0000 	mrs	r0, CPSR
ffff28a8:	e3801040 	orr	r1, r0, #64	; 0x40
ffff28ac:	e121f001 	msr	CPSR_c, r1
ffff28b0:	e8bd4001 	pop	{r0, lr}
ffff28b4:	e1a0f00e 	mov	pc, lr
ffff28b8:	e92d4001 	push	{r0, lr}
ffff28bc:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff28c0:	e3800a02 	orr	r0, r0, #8192	; 0x2000
ffff28c4:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff28c8:	e8bd4001 	pop	{r0, lr}
ffff28cc:	e1a0f00e 	mov	pc, lr
ffff28d0:	e92d4001 	push	{r0, lr}
ffff28d4:	ee110f10 	mrc	15, 0, r0, cr1, cr0, {0}
ffff28d8:	e3c00a02 	bic	r0, r0, #8192	; 0x2000
ffff28dc:	ee010f10 	mcr	15, 0, r0, cr1, cr0, {0}
ffff28e0:	e8bd4001 	pop	{r0, lr}
ffff28e4:	e1a0f00e 	mov	pc, lr
	...
